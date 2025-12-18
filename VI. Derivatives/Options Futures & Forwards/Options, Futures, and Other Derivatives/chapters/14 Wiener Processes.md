---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: 14.1 THE MARKOV PROPERTY
linter-yaml-title-alias: 14.1 THE MARKOV PROPERTY
---

# 14.1 THE MARKOV PROPERTY

A Markov process is a particular type of stochastic process where only the current value of a variable is relevant for predicting the future. The past history of the variable and the way that the present has emerged from the past are irrelevant.

Stock prices are usually assumed to follow a Markov process. Suppose that the price of a stock is 100 now. If the stock price follows a Markov process, our predictions for the future should be unaffected by the price one week ago, one month ago, or one year ago. The only relevant piece of information is that the price is now 100.^{1} Predictions for the future are uncertain and must be expressed in terms of probability distributions. The Markov property implies that the probability distribution of the price at any particular future time is not dependent on the particular path followed by the price in the past.

The Markov property of stock prices is consistent with the weak form of market efficiency. This states that the present price of a stock impounds all the information contained in a record of past prices. If the weak form of market efficiency were not true, technical analysts could make above-average returns by interpreting charts of the past history of stock prices. There is very little evidence that they are in fact able to do this.

It is competition in the marketplace that tends to ensure that weak-form market efficiency and the Markov property hold. There are many investors watching the stock market closely. This leads to a situation where a stock price, at any given time, reflects the information in past prices. Suppose that it was discovered that a particular pattern in a stock price always gave a  $65\%$  chance of subsequent steep price rises. Investors would attempt to buy a stock as soon as the pattern was observed, and demand for the stock would immediately rise. This would lead to an immediate rise in its price and the observed effect would be eliminated, as would any profitable trading opportunities.

# 14.2 CONTINUOUS-TIME STOCHASTIC PROCESSES

Consider a variable that follows a Markov stochastic process. Suppose that its current value is 10 and that the change in its value during a year is  $\phi(0,1)$ , where  $\phi(m,\nu)$  denotes a probability distribution that is normally distributed with mean  $m$  and variance  $\nu$ . What is the probability distribution of the change in the value of the variable during 2 years?

The change in 2 years is the sum of two normal distributions, each of which has a mean of zero and variance of 1.0. Because the variable is Markov, the two probability distributions are independent. When we add two independent normal distributions, the result is a normal distribution where the mean is the sum of the means and the variance is the sum of the variances. The mean of the change during 2 years in the variable we are considering is, therefore, zero and the variance of this change is 2.0. Hence, the change in the variable over 2 years has the distribution  $\phi(0, 2)$ . The standard deviation of the change is  $\sqrt{2}$ .

Consider next the change in the variable during 6 months. The variance of the change in the value of the variable during 1 year equals the variance of the change during the first 6 months plus the variance of the change during the second 6 months. We assume these are the same. It follows that the variance of the change during a 6-month period must be 0.5. Equivalently, the standard deviation of the change is  $\sqrt{0.5}$ . The probability distribution for the change in the value of the variable during 6 months is  $\phi(0, 0.5)$ .

A similar argument shows that the probability distribution for the change in the value of the variable during 3 months is  $\phi(0, 0.25)$ . More generally, the change during any time period of length  $T$  is  $\phi(0, T)$ . In particular, the change during a very short time period of length  $\Delta t$  is  $\phi(0, \Delta t)$ .

Note that, when Markov processes are considered, the variances of the changes in successive time periods are additive. The standard deviations of the changes in successive time periods are not additive. The variance of the change in the variable in our example is 1.0 per year, so that the variance of the change in 2 years is 2.0 and the variance of the change in 3 years is 3.0. The standard deviations of the changes in 2 and 3 years are  $\sqrt{2}$  and  $\sqrt{3}$ , respectively. Uncertainty is often measured by standard deviation. These results therefore explain why uncertainty is sometimes referred to as being proportional to the square root of time.

# Wiener Process

The process followed by the variable we have been considering is known as a Wiener process. It is a particular type of Markov stochastic process with a mean change of zero and a variance rate of 1.0 per year. It has been used in physics to describe the motion of a particle that is subject to a large number of small molecular shocks and is sometimes referred to as Brownian motion.

Expressed formally, a variable  $z$  follows a Wiener process if it has the following two properties:

Property 1. The change  $\Delta z$  during a small period of time  $\Delta t$  is

$$
\Delta z = \epsilon \sqrt {\Delta t} \tag {14.1}
$$ where  $\epsilon$  has a standard normal distribution  $\phi(0,1)$ .


Property 2. The values of  $\Delta z$  for any two different short intervals of time,  $\Delta t$ , are independent.

It follows from the first property that  $\Delta z$  itself has a normal distribution with

$$

\text {m e a n} \Delta z = 0

$$

$$

\text {s t a n d a r d} \Delta z = \sqrt {\Delta t}

$$

$$

\text {v a r i a n c e} \Delta z = \Delta t

$$

The second property implies that  $z$  follows a Markov process.

Consider the change in the value of  $z$  during a relatively long period of time,  $T$ . This can be denoted by  $z(T) - z(0)$ . It can be regarded as the sum of the changes in  $z$  in  $N$  small time intervals of length  $\Delta t$ , where

$$

N = \frac {T}{\Delta t}

$$

Thus,

$$ z (T) - z (0) = \sum_ {i = 1} ^ {N} \epsilon_ {i} \sqrt {\Delta t} \tag {14.2}
$$ where the  $\epsilon_{i}(i = 1,2,\ldots ,N)$  are distributed  $\phi (0,1)$ . We know from the second property of Wiener processes that the  $\epsilon_{i}$  are independent of each other. It follows


from equation (14.2) that  $z(T) - z(0)$  is normally distributed, with

$$

\text {m e a n} [ z (T) - z (0) ] = 0

$$

$$

\text {v a r i a n c e} [ z (T) - z (0) ] = N \Delta t = T

$$

$$

\text {s t a n d a r d} [ z (T) - z (0) ] = \sqrt {T}

$$

This is consistent with the discussion earlier in this section.

# Example 14.1

Suppose that the value,  $z$ , of a variable that follows a Wiener process is initially 25 and that time is measured in years. At the end of 1 year, the value of the variable is normally distributed with a mean of 25 and a standard deviation of 1.0. At the end of 5 years, it is normally distributed with a mean of 25 and a standard deviation of  $\sqrt{5}$ , or 2.236. Our uncertainty about the value of the variable at a certain time in the future, as measured by its standard deviation, increases as the square root of how far we are looking ahead.

In ordinary calculus, it is usual to proceed from small changes to the limit as the small changes become closer to zero. Thus,  $dx = a dt$  is the notation used to indicate that  $\Delta x = a \Delta t$  in the limit as  $\Delta t \to 0$ . We use similar notational conventions in stochastic calculus. So, when we refer to  $dz$  as a Wiener process, we mean that it has the properties for  $\Delta z$  given above in the limit as  $\Delta t \to 0$ .

Figure 14.1 illustrates what happens to the path followed by  $z$  as the limit  $\Delta t \to 0$  is approached. Note that the path is quite "jagged." This is because the standard deviation of the movement in  $z$  in time  $\Delta t$  equals  $\sqrt{\Delta t}$  and, when  $\Delta t$  is small,  $\sqrt{\Delta t}$  is much bigger than  $\Delta t$ . Two intriguing properties of Wiener processes, related to this  $\sqrt{\Delta t}$  property, are as follows:

1. The expected length of the path followed by  $z$  in any time interval is infinite.
2. The expected number of times  $z$  equals any particular value in any time interval is infinite.

# Generalized Wiener Process

The mean change per unit time for a stochastic process is known as the drift rate and the variance per unit time is known as the variance rate. The basic Wiener process,  $dz$ , that has been developed so far has a drift rate of zero and a variance rate of 1.0. The drift rate of zero means that the expected value of  $z$  at any future time is equal to its current value. The variance rate of 1.0 means that the variance of the change in  $z$  in a time interval of length  $T$  equals  $T$ . A generalized Wiener process for a variable  $x$  can be defined in terms of  $dz$  as

$$ d x = a d t + b d z \tag {14.3}
$$ where  $a$  and  $b$  are constants.


To understand equation (14.3), it is useful to consider the two components on the right-hand side separately. The  $a$  term implies that  $x$  has an expected drift rate of  $a$  per unit of time. Without the  $b$  term, the equation is  $dx = a$  dt, which implies that

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/fbf0e396553eceea9e96413c080c354b5802a0a319893d1fa348364fb1988f0f.jpg)
Figure 14.1 How a Wiener process is obtained when  $\Delta t\to 0$  in equation (14.1).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/fb46bd4b855b25ff76bfa54118936bd4c123fb853c3a51d9e413ce7c8c057d2e.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/56321c58586f5f5a96d7a16ba5d8958be92a471868b3c6006642f851ab26721b.jpg)

$dx / dt = a$ . Integrating with respect to time, we get

$$ x = x _ {0} + a t
$$ where  $x_0$  is the value of  $x$  at time 0. In a period of time of length  $T$ , the variable  $x$  increases by an amount  $aT$ . The  $b \, dz$  term on the right-hand side of equation (14.3) can be regarded as adding noise or variability to the path followed by  $x$ . The amount of this noise or variability is  $b$  times a Wiener process. A Wiener process has a variance rate per unit time of 1.0. It follows that  $b$  times a Wiener process has a variance rate per unit time of  $b^2$ . In a small time interval  $\Delta t$ , the change  $\Delta x$  in the value of  $x$  is given by equations (14.1) and (14.3) as


$$

\Delta x = a \Delta t + b \epsilon \sqrt {\Delta t}

$$ where, as before,  $\epsilon$  has a standard normal distribution  $\phi(0,1)$ . Thus  $\Delta x$  has a normal distribution with

mean of  $\Delta x = a\Delta t$ standard deviation of  $\Delta x = b\sqrt{\Delta t}$

variance of  $\Delta x = b^{2}\Delta t$

Similar arguments to those given for a Wiener process show that the change in the value of  $x$  in any time interval  $T$  is normally distributed with mean of change in  $x = aT$

standard deviation of change in  $x = b\sqrt{T}$ variance of change in  $x = b^{2}T$

To summarize, the generalized Wiener process given in equation (14.3) has an expected drift rate (i.e., average drift per unit of time) of  $a$  and a variance rate (i.e., variance per unit of time) of  $b^2$ . It is illustrated in Figure 14.2.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/fbb93b0ec1e92c885a7ebd79c61b4ddc2d5ae7c533153a8db36b644fd7c6d735.jpg)

Figure 14.2 Generalized Wiener process with  $a = 0.3$  and  $b = 1.5$ .

# Example 14.2

Consider the situation where the cash position of a company, measured in thousands of dollars, follows a generalized Wiener process with a drift of 20 per year and a variance rate of 900 per year. Initially, the cash position is 50. At the end of 1 year the cash position will have a normal distribution with a mean of 70 and a standard deviation of  $\sqrt{900}$ , or 30. At the end of 6 months it will have a normal distribution with a mean of 60 and a standard deviation of  $30\sqrt{0.5} = 21.21$ . Our uncertainty about the cash position at some time in the future, as measured by its standard deviation, increases as the square root of how far ahead we are looking. (Note that the cash position can become negative. We can interpret this as a situation where the company is borrowing funds.)

# Ito Process

A further type of stochastic process, known as an Itô process, can be defined. This is a generalized Wiener process in which the parameters  $a$  and  $b$  are functions of the value of the underlying variable  $x$  and time  $t$ . An Itô process can therefore be written as

$$ d x = a (x, t) d t + b (x, t) d z \tag {14.4}
$$

Both the expected drift rate and variance rate of an Ito process are liable to change over time. They are functions of the current value of  $x$  and the current time,  $t$ . In a small time interval between  $t$  and  $t + \Delta t$ , the variable changes from  $x$  to  $x + \Delta x$ , where

$$
\Delta x = a (x, t) \Delta t + b (x, t) \epsilon \sqrt {\Delta t}
$$

This equation involves a small approximation. It assumes that the drift and variance rate of  $x$  remain constant, equal to their values at time  $t$ , in the time interval between  $t$  and  $t + \Delta t$ .

Note that the process in equation (14.4) is Markov because the change in  $x$  at time  $t$  depends only on the value of  $x$  at time  $t$ , not on its history. A non-Markov process could be defined by letting  $a$  and  $b$  in equation (14.4) depend on values of  $x$  prior to time  $t$ .

# 14.3 THE PROCESS FOR A STOCK PRICE

In this section we discuss the stochastic process usually assumed for the price of a non-dividend-paying stock.

It is tempting to suggest that a stock price follows a generalized Wiener process; that is, that it has a constant expected drift rate and a constant variance rate. However, this model fails to capture a key aspect of stock prices. This is that the expected percentage return required by investors from a stock is independent of the stock's price. If investors require a  $14\%$  per annum expected return when the stock price is  \$10, then, ceteris paribus, they will also require a 14\%$  per annum expected return when it is 50.

Clearly, the assumption of constant expected drift rate is inappropriate and needs to be replaced by the assumption that the expected return (i.e., expected drift divided by the stock price) is constant. If  $S$  is the stock price at time  $t$ , then the expected drift rate in  $S$  should be assumed to be  $\mu S$  for some constant parameter  $\mu$ . This means that in a short interval of time,  $\Delta t$ , the expected increase in  $S$  is  $\mu S \Delta t$ . The parameter  $\mu$  is the expected rate of return on the stock.

If the coefficient of  $dz$  is zero, so that there is no uncertainty, then this model implies that

$$
\Delta S = \mu S \Delta t
$$ in the limit, as  $\Delta t\to 0$  , so that:


$$ d S = \mu S d t
$$ or


$$

\frac {d S}{S} = \mu d t

$$

Integrating between time 0 and time  $T$ , we get

$$

S _ {T} = S _ {0} e ^ {\mu T} \tag {14.5}

$$ where  $S_0$  and  $S_T$  are the stock price at time 0 and time  $T$ . Equation (14.5) shows that, when there is no uncertainty, the stock price grows at a continuously compounded rate of  $\mu$  per unit of time.

In practice, of course, there is uncertainty. A reasonable assumption is that the variability of the return in a short period of time,  $\Delta t$ , is the same regardless of the stock price. In other words, an investor is just as uncertain about the return when the stock price is  \$50 as when it is\$ 10. This suggests that the standard deviation of the change in a short period of time  $\Delta t$  should be proportional to the stock price and leads to the model

$$ d S = \mu S d t + \sigma S d z
$$ or


$$

\frac {d S}{S} = \mu d t + \sigma d z \tag {14.6}

$$

Equation (14.6) is the most widely used model of stock price behavior. The variable  $\mu$  is the stock's expected rate of return. The variable  $\sigma$  is the volatility of the stock price. The variable  $\sigma^2$  is referred to as its variance rate. The model in equation (14.6) represents the stock price process in the real world. In a risk-neutral world,  $\mu$  equals the risk-free rate  $r$ .

# Discrete-Time Model

The model of stock price behavior we have developed is known as geometric Brownian motion. The discrete-time version of the model is

$$

\frac {\Delta S}{S} = \mu \Delta t + \sigma \epsilon \sqrt {\Delta t} \tag {14.7}

$$ or


$$

\Delta S = \mu S \Delta t + \sigma S \epsilon \sqrt {\Delta t} \tag {14.8}

$$

The variable  $\Delta S$  is the change in the stock price  $S$  in a small time interval  $\Delta t$ , and as before  $\epsilon$  has a standard normal distribution (i.e., a normal distribution with a mean of zero and standard deviation of 1.0). The parameter  $\mu$  is the expected rate of return per unit of time from the stock. The parameter  $\sigma$  is the stock price volatility. In this chapter we will assume these parameters are constant.

The left-hand side of equation (14.7) is the discrete approximation to the return provided by the stock in a short period of time,  $\Delta t$ . The term  $\mu \Delta t$  is the expected value of this return, and the term  $\sigma \epsilon \sqrt{\Delta t}$  is the stochastic component of the return. The variance of the stochastic component (and, therefore, of the whole return) is  $\sigma^2\Delta t$ . This is consistent with the definition of the volatility  $\sigma$  given in Section 13.7; that is,  $\sigma$  is such that  $\sigma \sqrt{\Delta t}$  is the standard deviation of the return in a short time period  $\Delta t$ .


Equation (14.7) shows that  $\Delta S / S$  is approximately normally distributed with mean  $\mu \Delta t$  and standard deviation  $\sigma \sqrt{\Delta t}$ . In other words,

$$

\frac {\Delta S}{S} \sim \phi (\mu \Delta t, \sigma^ {2} \Delta t) \tag {14.9}

$$

# Example 14.3

Consider a stock that pays no dividends, has a volatility of  $30\%$  per annum, and provides an expected return of  $15\%$  per annum with continuous compounding. In this case,  $\mu = 0.15$  and  $\sigma = 0.30$ . The process for the stock price is

$$

\frac {d S}{S} = 0. 1 5 d t + 0. 3 0 d z

$$

If  $S$  is the stock price at a particular time and  $\Delta S$  is the increase in the stock price in the next small interval of time, the discrete approximation to the process is

$$

\frac {\Delta S}{S} = 0. 1 5 \Delta t + 0. 3 0 \epsilon \sqrt {\Delta t}

$$ where  $\epsilon$  has a standard normal distribution. Consider a time interval of 1 week, or 0.0192 year, so that  $\Delta t = 0.0192$ . Then the approximation gives

$$
\frac {\Delta S}{S} = 0. 1 5 \times 0. 0 1 9 2 + 0. 3 0 \times \sqrt {0 . 0 1 9 2} \epsilon
$$ or


$$

\Delta S = 0. 0 0 2 8 8 S + 0. 0 4 1 6 S \epsilon

$$

# Monte Carlo Simulation

A Monte Carlo simulation of a stochastic process is a procedure for sampling random outcomes for the process. We will use it as a way of developing some understanding of the nature of the stock price process in equation (14.6).

Consider the situation in Example 14.3 where the expected return from a stock is  $15\%$  per annum and the volatility is  $30\%$  per annum. The stock price change over 1 week was shown to be approximately

$$

\Delta S = 0. 0 0 2 8 8 S + 0. 0 4 1 6 S \epsilon \tag {14.10}

$$

A path for the stock price over 10 weeks can be simulated by sampling repeatedly for  $\epsilon$  from  $\phi(0,1)$  and substituting into equation (14.10). The expression  $= \text{RAND}()$  in Excel produces a random sample between 0 and 1. The inverse cumulative normal distribution is NORMSINV. The instruction to produce a random sample from a standard normal distribution in Excel is therefore  $= \text{NORMSINV}(\text{RAND})$ . Table 14.1 shows one path for a stock price that was sampled in this way. The initial stock price is assumed to be \$100. For the first period,  $\epsilon$  is sampled as 0.52. From equation (14.10), the change during the first time period is

$$

\Delta S = 0. 0 0 2 8 8 \times 1 0 0 + 0. 0 4 1 6 \times 1 0 0 \times 0. 5 2 = 2. 4 5

$$

Therefore, at the beginning of the second time period, the stock price is 102.45. The

Table 14.1 Simulation of stock price when  $\mu = 0.15$  and  $\sigma = 0.30$  during 1-week periods.

<table><tr><td>Stock price at start of period</td><td>Random sample
for €</td><td>Change in stock price during period</td></tr><tr><td>100.00</td><td>0.52</td><td>2.45</td></tr><tr><td>102.45</td><td>1.44</td><td>6.43</td></tr><tr><td>108.88</td><td>-0.86</td><td>-3.58</td></tr><tr><td>105.30</td><td>1.46</td><td>6.70</td></tr><tr><td>112.00</td><td>-0.69</td><td>-2.89</td></tr><tr><td>109.11</td><td>-0.74</td><td>-3.04</td></tr><tr><td>106.06</td><td>0.21</td><td>1.23</td></tr><tr><td>107.30</td><td>-1.10</td><td>-4.60</td></tr><tr><td>102.69</td><td>0.73</td><td>3.41</td></tr><tr><td>106.11</td><td>1.16</td><td>5.43</td></tr><tr><td>111.54</td><td>2.56</td><td>12.20</td></tr></table>

value of  $\epsilon$  sampled for the next period is 1.44. From equation (14.10), the change during the second time period is

$$

\Delta S = 0. 0 0 2 8 8 \times 1 0 2. 4 5 + 0. 0 4 1 6 \times 1 0 2. 4 5 \times 1. 4 4 = 6. 4 3

$$

So, at the beginning of the next period, the stock price is 108.88, and so on.4 Note that, because the process we are simulating is Markov, the samples for ε should be independent of each other.

Table 14.1 assumes that stock prices are measured to the nearest cent. It is important to realize that the table shows only one possible pattern of stock price movements. Different random samples would lead to different price movements. Any small time interval  $\Delta t$  can be used in the simulation. In the limit as  $\Delta t\to 0$ , a perfect description of the stochastic process is obtained. The final stock price of 111.54 in Table 14.1 can be regarded as a random sample from the distribution of stock prices at the end of 10 weeks. By repeatedly simulating movements in the stock price, a complete probability distribution of the stock price at the end of this time is obtained. Monte Carlo simulation is discussed in more detail in Chapter 21.

# 14.4 THE PARAMETERS

The process for a stock price developed in this chapter involves two parameters,  $\mu$  and  $\sigma$ . The parameter  $\mu$  is the expected return (annualized) earned by an investor in a short period of time. Most investors require higher expected returns to induce them to take higher risks. It follows that the value of  $\mu$  should depend on the risk of the return from the stock. It should also depend on the level of interest rates in the economy. The higher the level of interest rates, the higher the expected return required on any given stock.

Fortunately, we do not have to concern ourselves with the determinants of  $\mu$  in any detail because the value of a derivative dependent on a stock is, in general, independent of  $\mu$ . The parameter  $\sigma$ , the stock price volatility, is, by contrast, critically important to the determination of the value of many derivatives. We will discuss procedures for estimating  $\sigma$  in Chapter 15. Typical values of  $\sigma$  for a stock are in the range 0.15 to 0.60 (i.e.,  $15\%$  to  $60\%$ ).

The standard deviation of the proportional change in the stock price in a small interval of time  $\Delta t$  is  $\sigma \sqrt{\Delta t}$ . As a rough approximation, the standard deviation of the proportional change in the stock price over a relatively long period of time  $T$  is  $\sigma \sqrt{T}$ . This means that, as an approximation, volatility can be interpreted as the standard deviation of the change in the stock price in 1 year. In Chapter 15, we will show that the volatility of a stock price is exactly equal to the standard deviation of the continuously compounded return provided by the stock in 1 year.

# 14.5 CORRELATED PROCESSES

So far we have considered how the stochastic process for a single variable can be represented. We now extend the analysis to the situation where there are two or more variables following correlated stochastic processes. Suppose that the processes followed by two variables  $x_{1}$  and  $x_{2}$  are

$$ d x _ {1} = a _ {1} d t + b _ {1} d z _ {1} \quad \text {a n d} \quad d x _ {2} = a _ {2} d t + b _ {2} d z _ {2}
$$ where  $dz_{1}$  and  $dz_{2}$  are Wiener processes.


As has been explained, the discrete-time approximations for these processes are

$$

\Delta x _ {1} = a _ {1} \Delta t + b _ {1} \epsilon_ {1} \sqrt {\Delta t} \quad \text {a n d} \quad \Delta x _ {2} = a _ {2} \Delta t + b _ {2} \epsilon_ {2} \sqrt {\Delta t}

$$ where  $\epsilon_{1}$  and  $\epsilon_{2}$  are samples from a standard normal distribution  $\phi (0,1)$ .

The variables  $x_{1}$  and  $x_{2}$  can be simulated in the way described in Section 14.3. If they are uncorrelated with each other, the random samples  $\epsilon_{1}$  and  $\epsilon_{2}$  that are used to obtain movements in a particular period of time  $\Delta t$  should be independent of each other.

If  $x_{1}$  and  $x_{2}$  have a nonzero correlation  $\rho$ , then the  $\epsilon_{1}$  and  $\epsilon_{2}$  that are used to obtain movements in a particular period of time should be sampled from a bivariate normal distribution. Each variable in the bivariate normal distribution has a standard normal distribution and the correlation between the variables is  $\rho$ . In this situation, we would refer to the Wiener processes  $dz_{1}$  and  $dz_{2}$  as having a correlation  $\rho$ .

Obtaining samples for uncorrelated standard normal variables in cells in Excel involves putting the instruction "=NORMINV(RAND())" in each of the cells. To sample standard normal variables  $\epsilon_{1}$  and  $\epsilon_{2}$  with correlation  $\rho$ , we can set

$$
\epsilon_ {1} = u \quad \text {a n d} \quad \epsilon_ {2} = \rho u + \sqrt {1 - \rho^ {2}} v
$$ where  $u$  and  $\nu$  are sampled as uncorrelated variables with standard normal distributions.


Note that, in the processes we have assumed for  $x_{1}$  and  $x_{2}$ , the parameters  $a_{1}, a_{2}, b_{1}$  and  $b_{2}$  can be functions of  $x_{1}, x_{2}$ , and  $t$ . In particular,  $a_{1}$  and  $b_{1}$  can be functions of  $x_{2}$  as well as  $x_{1}$  and  $t$ ; and  $a_{2}$  and  $b_{2}$  can be functions of  $x_{1}$  as well as  $x_{2}$  and  $t$ .

The results here can be generalized. When there are three different variables following correlated stochastic processes, we have to sample three different  $\epsilon$ 's. These have a trivariate normal distribution. When there are  $n$  correlated variables, we have  $n$  different  $\epsilon$ 's and these must be sampled from an appropriate multivariate normal distribution. The way this is done is explained in Chapter 21.

# 14.6 ITO'S LEMMA

The price of a stock option is a function of the underlying stock's price and time. More generally, we can say that the price of any derivative is a function of the stochastic variables underlying the derivative and time. A serious student of derivatives must, therefore, acquire some understanding of the behavior of functions of stochastic variables. An important result in this area was discovered by the mathematician K. Itô in 1951, $^{6}$  and is known as Itô's lemma.

Suppose that the value of a variable  $x$  follows the Itô process

$$ d x = a (x, t) d t + b (x, t) d z \tag {14.11}
$$ where  $dz$  is a Wiener process and  $a$  and  $b$  are functions of  $x$  and  $t$ . The variable  $x$  has a drift rate of  $a$  and a variance rate of  $b^2$ . Itô's lemma shows that a function  $G$  of  $x$  and  $t$  follows the process


$$ d G = \left(\frac {\partial G}{\partial x} a + \frac {\partial G}{\partial t} + \frac {1}{2} \frac {\partial^ {2} G}{\partial x ^ {2}} b ^ {2}\right) d t + \frac {\partial G}{\partial x} b d z \tag {14.12}
$$ where the  $dz$  is the same Wiener process as in equation (14.11). Thus,  $G$  also follows an Itô process, with a drift rate of


$$

\frac {\partial G}{\partial x} a + \frac {\partial G}{\partial t} + \frac {1}{2} \frac {\partial^ {2} G}{\partial x ^ {2}} b ^ {2}

$$ and a variance rate of


$$

\left(\frac {\partial G}{\partial x}\right) ^ {2} b ^ {2}

$$

A completely rigorous proof of Ito's lemma is beyond the scope of this book. In the appendix to this chapter, we show that the lemma can be viewed as an extension of well-known results in differential calculus.

Earlier, we argued that

$$ d S = \mu S d t + \sigma S d z \tag {14.13}
$$ with  $\mu$  and  $\sigma$  constant, is a reasonable model of stock price movements. From Itô's lemma, it follows that the process followed by a function  $G$  of  $S$  and  $t$  is


$$ d G = \left(\frac {\partial G}{\partial S} \mu S + \frac {\partial G}{\partial t} + \frac {1}{2} \frac {\partial^ {2} G}{\partial S ^ {2}} \sigma^ {2} S ^ {2}\right) d t + \frac {\partial G}{\partial S} \sigma S d z \tag {14.14}
$$

Note that both  $S$  and  $G$  are affected by the same underlying source of uncertainty,  $dz$ . This proves to be very important in the derivation of the Black-Scholes-Merton results.

# Application to Forward Contracts

To illustrate Ito's lemma, consider a forward contract on a non-dividend-paying stock. Assume that the risk-free rate of interest is constant and equal to  $r$  for all maturities. From equation (5.1),

$$
F _ {0} = S _ {0} e ^ {r T}
$$ where  $F_{0}$  is the forward price at time zero,  $S_{0}$  is the spot price at time zero, and  $T$  is the time to maturity of the forward contract.


We are interested in what happens to the forward price as time passes. We define  $F$  as the forward price at a general time  $t$ , and  $S$  as the stock price at time  $t$ , with  $t < T$ . The relationship between  $F$  and  $S$  is given by

$$

F = S e ^ {r (T - t)} \tag {14.15}

$$

Assuming that the process for  $S$  is given by equation (14.13), we can use Ito's lemma to determine the process for  $F$ . From equation (14.15),

$$

\frac {\partial F}{\partial S} = e ^ {r (T - t)}, \quad \frac {\partial^ {2} F}{\partial S ^ {2}} = 0, \quad \frac {\partial F}{\partial t} = - r S e ^ {r (T - t)}

$$

From equation (14.14), the process for  $F$  is given by

$$ d F = \left[ e ^ {r (T - t)} \mu S - r S e ^ {r (T - t)} \right] d t + e ^ {r (T - t)} \sigma S d z
$$

Substituting  $F$  for  $S e^{r(T - t)}$  gives

$$ d F = (\mu - r) F d t + \sigma F d z \tag {14.16}
$$

Like  $S$ , the forward price  $F$  follows geometric Brownian motion. It has the same volatility as  $S$  and an expected growth rate of  $\mu - r$  rather than  $\mu$ .

# 14.7 THE LOGNORMAL PROPERTY

We now use Ito's lemma to derive the process followed by  $\ln S$  when  $S$  follows the process in equation (14.13). We define

$$
G = \ln S
$$

Since

$$
\frac {\partial G}{\partial S} = \frac {1}{S}, \quad \frac {\partial^ {2} G}{\partial S ^ {2}} = - \frac {1}{S ^ {2}}, \quad \frac {\partial G}{\partial t} = 0
$$ it follows from equation (14.14) that the process followed by  $G$  is


$$ d G = \left(\mu - \frac {\sigma^ {2}}{2}\right) d t + \sigma d z \tag {14.17}
$$

Since  $\mu$  and  $\sigma$  are constant, this equation indicates that  $G = \ln S$  follows a generalized Wiener process. It has constant drift rate  $\mu -\sigma^2 /2$  and constant variance rate  $\sigma^2$ . The change in  $\ln S$  between time 0 and some future time  $T$  is therefore normally distributed, with mean  $(\mu - \sigma^2 / 2)T$  and variance  $\sigma^2 T$ . This means that

$$
\ln S _ {T} - \ln S _ {0} \sim \phi \left[ \left(\mu - \frac {\sigma^ {2}}{2}\right) T, \sigma^ {2} T \right] \tag {14.18}
$$ or


$$

\ln S _ {T} \sim \phi \left[ \ln S _ {0} + \left(\mu - \frac {\sigma^ {2}}{2}\right) T, \sigma^ {2} T \right] \tag {14.19}

$$ where  $S_{T}$  is the stock price at time  $T$ ,  $S_{0}$  is the stock price at time 0, and as before  $\phi(m, \nu)$  denotes a normal distribution with mean  $m$  and variance  $\nu$ .

Equation (14.19) shows that  $\ln S_T$  is normally distributed. A variable has a lognormal distribution if the natural logarithm of the variable is normally distributed. The model of stock price behavior we have developed in this chapter therefore implies that a stock's price at time  $T$ , given its price today, is lognormally distributed. The standard deviation of the logarithm of the stock price is  $\sigma \sqrt{T}$ . It is proportional to the square root of how far ahead we are looking.

# 14.8 FRACTIONAL BROWNIAN MOTION

Fractional Brownian motion (also known as fractal Brownian motion) provides a generalization of Brownian motion and the models involving Wiener processes that we have discussed so far in this chapter. It is used in rough volatility models for valuing derivatives, which are discussed later in the book.

First, let us quickly review the properties of Wiener processes. Suppose  $dz$  is a Wiener process,  $\sigma$  is a constant, and

$$
X = \sigma d z
$$ with  $X(0) = 0$ . Then, for  $t > s > 0$ ,


$$

E [ X (t) - X (s) ] = 0 \quad \text {a n d} \quad E [ (X (t) - X (s)) ^ {2} ] = \sigma^ {2} (t - s)

$$

In particular,  $E[(X(t))^2] = \sigma^2 t$  and  $E[(X(s))^2] = \sigma^2 s$ . The variance of the change in  $X$  between times  $s$  and  $t$  is

$$

E \left[ (X (t) - X (s)) ^ {2} \right] - \left(E [ X (t) - X (s) ]\right) ^ {2} = \sigma^ {2} (t - s)

$$

The variance per unit time is therefore constant and equal to  $\sigma^2$ . Because a Wiener process is Markov,  $X(t) - X(s)$  is uncorrelated with  $X(s)$ . Hence,

$$

\begin{array}{l} E [ X (s) X (t) ] = E [ X (s) (X (s) + X (t) - X (s)) ] \\ = E \left[ (X (s)) ^ {2} \right] + E [ X (s) (X (t) - X (s)) ] \\ = E \left[ (X (s)) ^ {2} \right] = \sigma^ {2} s \\ \end{array}

$$

In fractional Brownian motion we assume

$$

E \left[ \left(X (t) - X (s)\right) ^ {2} \right] = \sigma^ {2} (t - s) ^ {2 H}

$$ where  $H$  is referred to as the Hurst exponent. Continuing with the assumption that

$X(0) = 0$ ,  $E[(X(t)^2] = \sigma^2 t^{2H}$ , and  $E[(X(s)^2] = \sigma^2 s^{2H}$ . When  $H = 0.5$ , fractional Brownian motion becomes regular Brownian motion.

Since

$$
E \left[ (X (t) - X (s)) ^ {2} \right] = E \left[ (X (t)) ^ {2} \right] + E \left[ (X (s)) ^ {2} \right] - 2 E [ X (t) X (s) ]
$$ it follows that


$$

\begin{array}{l} E [ X (t) X (s) ] = 0. 5 \left\{E \left[ (X (t)) ^ {2} \right] + E \left[ (X (s)) ^ {2} \right] - E \left[ (X (t) - X (s)) ^ {2} \right] \right\} \\ = 0. 5 \sigma^ {2} \left[ t ^ {2 H} + s ^ {2 H} - (t - s) ^ {2 H} \right] \\ \end{array}

$$

When  $H = 0.5$ , this reduces to our earlier result for Wiener processes:  $E[X(s)X(t)] = \sigma^2 s$ . The correlation between  $X(t)$  and  $X(s)$  is

$$

\frac {0 . 5 \left[ t ^ {2 H} + s ^ {2 H} - (t - s) ^ {2 H} \right]}{s ^ {H} t ^ {H}} \tag {14.20}

$$

Fractional Brownian motion is non-Markov. If  $t > s > u$ , then

$$

\begin{array}{l} E \left[ \left(X (t) - X (s)\right) \left(X (s) - X (u)\right) \right] = E [ X (t) X (s) ] - E \left[ \left(X (s)\right) ^ {2} \right] \\ - E [ X (t) X (u) ] + E [ X (s) X (u) ] = 0. 5 \sigma^ {2} \left[ (t - u) ^ {2 H} - (t - s) ^ {2 H} - (s - u) ^ {2 H} \right] \\ \end{array}

$$

This is zero (as we expect) when  $H = 0.5$ . When  $H > 0.5$ , it is positive (so that the correlation between changes in  $X$  in successive periods of time is positive). When  $H < 0.5$ , it is negative (so that the correlation between changes in  $X$  in successive periods of time is negative).

Simulating fractional Brownian motion involves dividing the time period being considered into a number of small time steps of length  $\Delta t$ . A sample from a standard normal distribution,  $\epsilon$ , determines the change over one time step using equation (14.8). In regular Brownian motion the  $\epsilon$ 's used for different time steps are uncorrelated. In fractional Brownian motion we must build in the correlations so that equation (14.20) is satisfied. The  $\epsilon$  for the first step is chosen randomly; the  $\epsilon$  for the second step must be chosen so that  $X(2\Delta t)$  has the right correlation with  $X(\Delta t)$ ; the  $\epsilon$  for the third time step must be chosen so that  $X(3\Delta t)$  has the right correlation with both  $x(2\Delta t)$  and the  $X(\Delta t)$ ; and so on. The Cholesky decomposition procedure explained in Chapter 21, can be used to accomplish this.

Figure 14.3 shows the simulation of fractional Brownian motion over one year for values of  $H$  equal to 0.9, 0.5, and 0.1 when the time step is 0.01 years. As  $H$  decreases, the process becomes more noisy. This would become even more marked if we decreased the length of the time step further.

# SUMMARY

Stochastic processes describe the probabilistic evolution of the value of a variable through time. A Markov process is one where only the present value of the variable is relevant for predicting the future. The past history of the variable and the way in which the present has emerged from the past is irrelevant.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/be8ceab0d51ed25752af3bf06cf3e62d06eec8079bc6696ad123310672a53946.jpg)
Figure 14.3 Simulation of fractional Brownian motion for different values of the Hurst exponent.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/832bf30d979bf7f8b653debe9fde7959f647a33da90cef1218fc9b8d2fbc5108.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/b27e1c43c36717378c6e1b760962500fefbcfa5a255127778e23177f084363a9.jpg)

A Wiener process  $dz$  is a Markov process describing the evolution of a normally distributed variable. The drift of the process is zero and the variance rate is 1.0 per unit time. This means that, if the value of the variable is  $x_0$  at time 0, then at time  $T$  it is normally distributed with mean  $x_0$  and standard deviation  $\sqrt{T}$ .

A generalized Wiener process describes the evolution of a normally distributed variable with a drift of  $a$  per unit time and a variance rate of  $b^2$  per unit time, where  $a$  and  $b$  are constants. This means that if, as before, the value of the variable is  $x_0$  at time 0, it is normally distributed with a mean of  $x_0 + aT$  and a standard deviation of  $b\sqrt{T}$  at time  $T$ .

An Ito process is a process where the drift and variance rate of  $x$  can be a function of both  $x$  itself and time. The change in  $x$  in a very short period of time is, to a good approximation, normally distributed, but its change over longer periods of time is liable to be nonnormal.

One way of gaining an intuitive understanding of a stochastic process for a variable is to use Monte Carlo simulation. This involves dividing a time interval into many small time steps and randomly sampling possible paths for the variable. The future probability distribution for the variable can then be calculated. Monte Carlo simulation is discussed further in Chapter 21.

Ito's lemma is a way of calculating the stochastic process followed by a function of a variable from the stochastic process followed by the variable itself. As we shall see in Chapter 15, Ito's lemma plays a very important part in the pricing of derivatives. A key point is that the Wiener process  $dz$  underlying the stochastic process for the variable is exactly the same as the Wiener process underlying the stochastic process for the function of the variable. Both are subject to the same underlying source of uncertainty.

The stochastic process usually assumed for a stock price is geometric Brownian motion. Under this process the return to the holder of the stock in a small period of time is normally distributed and the returns in two nonoverlapping periods are independent. The value of the stock price at a future time has a lognormal distribution. The Black-Scholes-Merton model, which we cover in the next chapter, is based on the geometric Brownian motion assumption.

# FURTHER READING

# On Efficient Markets and the Markov Property of Stock Prices

Brealey, R. A. An Introduction to Risk and Return from Common Stock, 2nd edn. Cambridge, MA: MIT Press, 1986.
Cootner, P. H. (ed.) The Random Character of Stock Market Prices. Cambridge, MA: MIT Press, 1964.

# On Stochastic Processes

Cox, D. R., and H. D. Miller. The Theory of Stochastic Processes. London: Chapman & Hall, 1977.
Feller, W. Introduction to Probability Theory and Its Applications. New York: Wiley, 1968.
Karlin, S., and H. M. Taylor. A First Course in Stochastic Processes, 2nd edn. New York: Academic Press, 1975.
Mandelbrot, B. "Fractional Brownian Motions, Fractional Noises, and Applications," SIAM Review, 10, 4 (1968): 422-437.
Shreve, S. E. Stochastic Calculus for Finance II: Continuous-Time Models. New York: Springer, 2008.

# Short Concept Questions

14.1. What is a Markov model?
14.2. What are the properties of a Wiener process?
14.3. What is the difference between a generalized Wiener process and a Wiener process?
14.4. How can a Wiener process be simulated?
14.5. What are the properties of geometric Brownian motion?
14.6. What problem does Ito's lemma solve?
14.7. If a stock price follows geometric Brownian motion, what is the process followed by the logarithm of the stock price?
14.8. Suppose that  $X_{1}$  is the change in the value of a variable during one time period and  $X_{2}$  is the change in its value during the next time period. What is the correlation between  $X_{1}$  and  $X_{2}$  when the variable follows fractional Brownian motion with (a)  $H > 0.5$ , (b)  $H = 0.5$ , and (c)  $H < 0.5$ , where  $H$  is the Hurst exponent?
14.9. What would it mean to assert that the temperature at a certain place follows a Markov process? Do you think that temperatures do, in fact, follow a Markov process?
14.10. Explain the role of the Hurst exponent in fractional Brownian motion.

# Practice Questions

14.11. Can a trading rule based on the past history of a stock's price ever produce returns that are consistently above average? Discuss.
14.12. A company's cash position, measured in millions of dollars, follows a generalized Wiener process with a drift rate of 0.5 per quarter and a variance rate of 4.0 per quarter. How high does the company's initial cash position have to be for the company to have a less than  $5\%$  chance of a negative cash position by the end of 1 year?
14.13. Variables  $X_{1}$  and  $X_{2}$  follow generalized Wiener processes, with drift rates  $\mu_{1}$  and  $\mu_{2}$  and variances  $\sigma_{1}^{2}$  and  $\sigma_{2}^{2}$ . What process does  $X_{1} + X_{2}$  follow if:

(a) The changes in  $X_{1}$  and  $X_{2}$  in any short interval of time are uncorrelated?
(b) There is a correlation  $\rho$  between the changes in  $X_{1}$  and  $X_{2}$  in any short time interval?

14.14. Consider a variable  $S$  that follows the process

$$ d S = \mu d t + \sigma d z
$$

For the first three years,  $\mu = 2$  and  $\sigma = 3$ ; for the next three years,  $\mu = 3$  and  $\sigma = 4$ . If the initial value of the variable is 5, what is the probability distribution of the value of the variable at the end of year 6?

14.15. Suppose that  $G$  is a function of a stock price  $S$  and time. Suppose that  $\sigma_{S}$  and  $\sigma_{G}$  are the volatilities of  $S$  and  $G$ . Show that, when the expected return of  $S$  increases by  $\lambda \sigma_{S}$ , the growth rate of  $G$  increases by  $\lambda \sigma_{G}$ , where  $\lambda$  is a constant.
14.16. Stock A and stock B both follow geometric Brownian motion. Changes in any short interval of time are uncorrelated with each other. Does the value of a portfolio consisting of one of stock A and one of stock B follow geometric Brownian motion? Explain your answer.

14.17. The process for the stock price in equation (14.8) is

$$
\Delta S = \mu S \Delta t + \sigma S \epsilon \sqrt {\Delta t}
$$ where  $\mu$  and  $\sigma$  are constant. Explain carefully the difference between this model and each of the following:


$$

\begin{array}{l} \Delta S = \mu \Delta t + \sigma \epsilon \sqrt {\Delta t} \\ \Delta S = \mu S \Delta t + \sigma \epsilon \sqrt {\Delta t} \\ \Delta S = \mu \Delta t + \sigma S \epsilon \sqrt {\Delta t} \\ \end{array}

$$

Why is the model in equation (14.8) a more appropriate model of stock price behavior than any of these three alternatives?

14.18. It has been suggested that the short-term interest rate  $r$  follows the stochastic process

$$ d r = a (b - r) d t + r c d z
$$ where  $a, b, c$  are positive constants and  $dz$  is a Wiener process. Describe the nature of this process.


14.19. Suppose that a stock price  $S$  follows geometric Brownian motion with expected return  $\mu$  and volatility  $\sigma$ :

$$ d S = \mu S d t + \sigma S d z
$$

What is the process followed by the variable  $S^n$ ? Show that  $S^n$  also follows geometric Brownian motion.

14.20. Suppose that x is the yield to maturity with continuous compounding on a zero-coupon bond that pays off 1 at time T. Assume that x follows the process

$$ d x = a \left(x _ {0} - x\right) d t + s x d z
$$ where  $a, x_0$ , and  $s$  are positive constants and  $dz$  is a Wiener process. What is the process followed by the bond price?


14.21. A stock whose price is 30 has an expected return of 9 \% and a volatility of 20 \%. In Excel, simulate the stock price path over 5 years using monthly time steps and random samples from a normal distribution. Chart the simulated stock price path. By hitting F9, observe how the path changes as the random samples change.

14.22. Suppose that a stock price has an expected return of  $16\%$  per annum and a volatility of  $30\%$  per annum. When the stock price at the end of a certain day is 50, calculate the following:

(a) The expected stock price at the end of the next day
(b) The standard deviation of the stock price at the end of the next day
(c) The  $95\%$  confidence limits for the stock price at the end of the next day.

14.23. Suppose that  $x$  is the yield on a perpetual government bond that pays interest at the rate of \$1 per annum. Assume that  $x$  is expressed with continuous compounding, that interest is paid continuously on the bond, and that  $x$  follows the process

$$ d x = a \left(x _ {0} - x\right) d t + s x d z
$$ where  $a$ ,  $x_0$ , and  $s$  are positive constants, and  $dz$  is a Wiener process. What is the process followed by the bond price? What is the expected instantaneous return (including interest and capital gains) to the holder of the bond?


14.24. Stock A, whose price is 30, has an expected return of 11\% and a volatility of 25\%.
Stock B, whose price is 40, has an expected return of 15\% and a volatility of 30\%. The processes driving the returns are correlated with correlation parameter  $\rho$ . In Excel, simulate the two stock price paths over 3 months using daily time steps and random samples from normal distributions. Chart the results and by hitting F9 observe how the paths change as the random samples change. Consider values for  $\rho$  equal to 0.25, 0.75, and 0.95.


14.25. Consider whether markets are efficient in each of the following two cases: (a) a stock price follows fractional Brownian motion and (b) a stock price volatility follows fractional Brownian motion.

# APPENDIX

# A NONRIGOROUS DERIVATION OF ITO'S LEMMA

In this appendix, we show how Ito's lemma can be regarded as a natural extension of other, simpler results. Consider a continuous and differentiable function  $G$  of a variable  $x$ . If  $\Delta x$  is a small change in  $x$  and  $\Delta G$  is the resulting small change in  $G$ , a well-known result from ordinary calculus is

$$

\Delta G \approx \frac {d G}{d x} \Delta x \tag {14A.1}

$$

In other words,  $\Delta G$  is approximately equal to the rate of change of  $G$  with respect to  $x$  multiplied by  $\Delta x$ . The error involves terms of order  $\Delta x^2$ . If more precision is required, a Taylor series expansion of  $\Delta G$  can be used:

$$

\Delta G = \frac {d G}{d x} \Delta x + \frac {1}{2} \frac {d ^ {2} G}{d x ^ {2}} \Delta x ^ {2} + \frac {1}{6} \frac {d ^ {3} G}{d x ^ {3}} \Delta x ^ {3} + \dots

$$

For a continuous and differentiable function  $G$  of two variables  $x$  and  $y$ , the result analogous to equation (14A.1) is

$$

\Delta G \approx \frac {\partial G}{\partial x} \Delta x + \frac {\partial G}{\partial y} \Delta y \tag {14A.2}

$$ and the Taylor series expansion of  $\Delta G$  is

$$
\Delta G = \frac {\partial G}{\partial x} \Delta x + \frac {\partial G}{\partial y} \Delta y + \frac {1}{2} \frac {\partial^ {2} G}{\partial x ^ {2}} \Delta x ^ {2} + \frac {\partial^ {2} G}{\partial x \partial y} \Delta x \Delta y + \frac {1}{2} \frac {\partial^ {2} G}{\partial y ^ {2}} \Delta y ^ {2} + \dots \tag {14A.3}
$$

In the limit, as  $\Delta x$  and  $\Delta y$  tend to zero, equation (14A.3) becomes

$$ d G = \frac {\partial G}{\partial x} d x + \frac {\partial G}{\partial y} d y \tag {14A.4}
$$

We now extend equation (14A.4) to cover functions of variables following Itô processes. Suppose that a variable  $x$  follows the Itô process

$$ d x = a (x, t) d t + b (x, t) d z \tag {14A.5}
$$ and that  $G$  is some function of  $x$  and of time  $t$ . By analogy with equation (14A.3), we can write


$$

\Delta G = \frac {\partial G}{\partial x} \Delta x + \frac {\partial G}{\partial t} \Delta t + \frac {1}{2} \frac {\partial^ {2} G}{\partial x ^ {2}} \Delta x ^ {2} + \frac {\partial^ {2} G}{\partial x \partial t} \Delta x \Delta t + \frac {1}{2} \frac {\partial^ {2} G}{\partial t ^ {2}} \Delta t ^ {2} + \dots \tag {14A.6}

$$

Equation (14A.5) can be discretized to

$$

\Delta x = a (x, t) \Delta t + b (x, t) \epsilon \sqrt {\Delta t}

$$ or, if arguments are dropped,


$$

\Delta x = a \Delta t + b \epsilon \sqrt {\Delta t} \tag {14A.7}

$$

This equation reveals an important difference between the situation in equation (14A.6) and the situation in equation (14A.3). When limiting arguments were used to move from equation (14A.3) to equation (14A.4), terms in  $\Delta x^2$  were ignored because they were second-order terms. From equation (14A.7), we have

$$

\Delta x ^ {2} = b ^ {2} \epsilon^ {2} \Delta t + \text {t e r m s o f h i g h e r o r d e r i n} \Delta t \tag {14A.8}

$$

This shows that the term involving  $\Delta x^2$  in equation (14A.6) has a component that is of order  $\Delta t$  and cannot be ignored.

The variance of a standard normal distribution is 1.0. This means that

$$

E (\epsilon^ {2}) - [ E (\epsilon) ] ^ {2} = 1

$$ where  $E$  denotes expected value. Since  $E(\epsilon) = 0$ , it follows that  $E(\epsilon^2) = 1$ . The expected value of  $\epsilon^2\Delta t$ , therefore, is  $\Delta t$ . The variance of  $\epsilon^2\Delta t$  is, from the properties of the standard normal distribution,  $2\Delta t^2$ . We know that the variance of the change in a stochastic variable in time  $\Delta t$  is proportional to  $\Delta t$ , not  $\Delta t^2$ . The variance of  $\epsilon^2\Delta t$  is therefore too small for it to have a stochastic component. As a result, we can treat  $\epsilon^2\Delta t$  as nonstochastic and equal to its expected value,  $\Delta t$ , as  $\Delta t$  tends to zero. It follows from equation (14A.8) that  $\Delta x^2$  becomes nonstochastic and equal to  $b^2 dt$  as  $\Delta t$  tends to zero. Taking limits as  $\Delta x$  and  $\Delta t$  tend to zero in equation (14A.6), and using this last result, we obtain

$$ d G = \frac {\partial G}{\partial x} d x + \frac {\partial G}{\partial t} d t + \frac {1}{2} \frac {\partial^ {2} G}{\partial x ^ {2}} b ^ {2} d t \tag {14A.9}
$$

This is Ito's lemma. If we substitute for  $dx$  from equation (14A.5), equation (14A.9) becomes

$$ d G = \left(\frac {\partial G}{\partial x} a + \frac {\partial G}{\partial t} + \frac {1}{2} \frac {\partial^ {2} G}{\partial x ^ {2}} b ^ {2}\right) d t + \frac {\partial G}{\partial x} b d z.
$$

Technical Note 29 at www-2.rotman.utoronto.ca/~hull/TechnicalNotes provides proofs of extensions to Ito's lemma. When  $G$  is a function of variables  $x_{1}, x_{2}, \ldots, x_{n}$  and

$$ d x _ {i} = a _ {i} d t + b _ {i} d z _ {i}
$$ we have


$$ d G = \left(\sum_ {i = 1} ^ {n} \frac {\partial G}{\partial x _ {1}} a _ {i} + \frac {\partial G}{\partial t} + \frac {1}{2} \sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} \frac {\partial^ {2} G}{\partial x _ {i} \partial x _ {j}} b _ {i} b _ {j} \rho_ {i j}\right) d t + \sum_ {i = 1} ^ {n} \frac {\partial G}{\partial x _ {i}} b _ {i} d z _ {i} \tag {14A.10}
$$

Also, when  $G$  is a function of a variable  $x$  with several sources of uncertainty so that

$$ d x = a d t + \sum_ {i = 1} ^ {m} b _ {i} d z _ {i}
$$ we have


$$ d G = \left(\frac {\partial G}{\partial x} a + \frac {\partial G}{\partial t} + \frac {1}{2} \frac {\partial^ {2} G}{\partial x ^ {2}} \sum_ {i = 1} ^ {m} \sum_ {j = 1} ^ {m} b _ {i} b _ {j} \rho_ {i j}\right) d t + \frac {\partial G}{\partial x} \sum_ {i = 1} ^ {m} b _ {i} d z _ {i} \tag {14A.11}
$$

In these equations,  $\rho_{ij}$  is the correlation between  $dz_{i}$  and  $dz_{j}$  (see Section 14.5).

# The Black-Scholes-Merton Model

In the early 1970s, Fischer Black, Myron Scholes, and Robert Merton achieved a major breakthrough in the pricing of European stock options. This was the development of what has become known as the Black-Scholes-Merton (or Black-Scholes) model. The model has had a huge influence on the way that traders price and hedge derivatives. In 1997, the importance of the model was recognized when Robert Merton and Myron Scholes were awarded the Nobel prize for economics. Sadly, Fischer Black died in 1995; otherwise he too would undoubtedly have been one of the recipients of this prize.

How did Black, Scholes, and Merton make their breakthrough? Previous researchers had made similar assumptions and had correctly calculated the expected payoff from a European option. However, as explained in Section 13.2, it is difficult to know the correct discount rate to use for this payoff. Black and Scholes used the capital asset pricing model (see the appendix to Chapter 3) to determine a relationship between the market's required return on the option and the required return on the stock. This was not easy because the relationship depends on both the stock price and time. Merton's approach was different from that of Black and Scholes. It involved setting up a riskless portfolio consisting of the option and the underlying stock and arguing that the return on the portfolio over a short period of time must be the risk-free return. This is similar to what we did in Section 13.1—but more complicated because the portfolio changes continuously through time. Merton's approach was more general than that of Black and Scholes because it did not rely on the assumptions of the capital asset pricing model.

This chapter covers Merton's approach to deriving the Black-Scholes-Merton model. It explains how volatility can be either estimated from historical data or implied from option prices using the model. It shows how the risk-neutral valuation argument introduced in Chapter 13 can be used. It also shows how the Black-Scholes-Merton model can be extended to deal with European call and put options on dividend-paying stocks and presents some results on the pricing of American call options on dividend-paying stocks.

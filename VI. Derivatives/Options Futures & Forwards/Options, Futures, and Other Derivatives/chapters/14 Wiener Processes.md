---
title: "The Markov Property"
parent_directory: "Options, Futures, and Other Derivatives"
formatted: "2025-12-20 07:30:00 PM"
formatter_model: "claude-sonnet-4"
cli-tool: "opencode"
primary_tags:
  - markov property
  - wiener processes
  - stochastic calculus
  - geometric brownian motion
secondary_tags:
  - ito process
  - lognormal distribution
  - monte carlo simulation
  - fractional brownian motion
cssclasses: academia
---

## 14.1 The Markov Property

## 14.2 Continuous-Time Stochastic Processes

Consider a variable that follows a Markov stochastic process. Suppose that its current value is 10 and that the change in its value during a year is  $\phi(0,1)$ , where  $\phi(m,\nu)$  denotes a probability distribution that is normally distributed with mean  $m$  and variance  $\nu$ . What is the probability distribution of the change in the value of the variable during 2 years?

The change in 2 years is the sum of two normal distributions, each of which has a mean of zero and variance of 1.0. Because the variable is Markov, the two probability distributions are independent. When we add two independent normal distributions, the result is a normal distribution where the mean is the sum of the means and the variance is the sum of the variances. The mean of the change during 2 years in the variable we are considering is, therefore, zero and the variance of this change is 2.0. Hence, the change in the variable over 2 years has the distribution  $\phi(0, 2)$ . The standard deviation of the change is  $\sqrt{2}$ .

Consider next the change in the variable during 6 months. The variance of the change in the value of the variable during 1 year equals the variance of the change during the first 6 months plus the variance of the change during the second 6 months. We assume these are the same. It follows that the variance of the change during a 6-month period must be 0.5. Equivalently, the standard deviation of the change is  $\sqrt{0.5}$ . The probability distribution for the change in the value of the variable during 6 months is  $\phi(0, 0.5)$ .

A similar argument shows that the probability distribution for the change in the value of the variable during 3 months is  $\phi(0, 0.25)$ . More generally, the change during any time period of length  $T$  is  $\phi(0, T)$ . In particular, the change during a very short time period of length  $\Delta t$  is  $\phi(0, \Delta t)$ .

Note that, when Markov processes are considered, the variances of the changes in successive time periods are additive. The standard deviations of the changes in successive time periods are not additive. The variance of the change in the variable in our example is 1.0 per year, so that the variance of the change in 2 years is 2.0 and the variance of the change in 3 years is 3.0. The standard deviations of the changes in 2 and 3 years are  $\sqrt{2}$  and  $\sqrt{3}$ , respectively. Uncertainty is often measured by standard deviation. These results therefore explain why uncertainty is sometimes referred to as being proportional to the square root of time.

## Wiener Process

## Generalized Wiener Process

## Ito Process

## 14.3 The Process for a Stock Price

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

## Discrete-Time Model

## Monte Carlo Simulation

## 14.4 The Parameters

## 14.5 Correlated Processes

## 14.6 Ito's Lemma

## Application to Forward Contracts

## 14.7 The Lognormal Property

## 14.8 Fractional Brownian Motion

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

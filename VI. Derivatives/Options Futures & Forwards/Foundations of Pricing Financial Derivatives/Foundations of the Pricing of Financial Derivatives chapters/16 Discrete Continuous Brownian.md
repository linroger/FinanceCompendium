---
title: "Chapter 16: Connecting Discrete and Continuous Brownian Motions"
parent_directory: Foundations of the Pricing of Financial Derivatives chapters
formatted: 2025-12-21 02:22:25 PM
formatter_model: claude-sonnet-4
cli-tool: opencode
primary_tags:
   - brownian motion
   - wiener process
   - stochastic processes
   - radon-nikodym derivative
secondary_tags:
   - discrete continuous connection
   - binomial models
   - stochastic integrals
   - kolmogorov equations
   - probability measures
   - martingales
   - volatility modeling
   - time series analysis
cssclasses: academia
---

# Connecting Discrete and Continuous Brownian Motions

We have now almost fully developed the binomial and Black-Scholes-Merton models. In this chapter, however, we will circle back and tie their stochastic processes together. Some of this material is repetitive, but it will be helpful in cleaning up some of the loose ends.

To model an asset price, we must start with a framework that reflects the noise produced by random information generated in such a manner that its expectation and volatility are the same through time. As we have described, the model is typically called a Brownian motion, named for the Scottish scientist, Robert Brown, who supposedly observed it about 1827 in pollen suspended in water. Much of the scientific work for this model was done by Einstein and Norbert Wiener, the latter for whom a form of Brownian motion, the Wiener process, was named. This process is also called a random walk, though technically a random walk is slightly different.<sup>1</sup>

# 16.1 BROWNIAN MOTION IN A DISCRETE WORLD

An extremely simple form of Brownian motion is a binomial process in which a random variable  $W$ , starting off at a value of  $W_0 = 0$ , can take on a value of  $W_1^+ = +1$  or  $W_1^- = -1$  in the next time period or sometimes termed time step. We denote the change from the point in time 0 to the point in time 1 as  $\Delta W_0$ . Thus, the change notation refers to the initial point in time (0 here) and not the final point in time (1 here). Figure 16.1 illustrates this process.

Although some versions of this type of model permit unequal probabilities, many desirable properties are associated with the case where the probabilities of the up and down moves are  $\frac{1}{2}$ . If, however, one is attempting to model a process with a given expectation and volatility, then there are formulas that specify the probabilities, which will not generally be  $\frac{1}{2}$ . In the limiting case, that is, when the number of time steps over which a fixed period of time is large, however, it is well known that the formulas converge to  $\frac{1}{2}$ .

Now let us examine some of the properties of the model. First consider the increment,  $\Delta W_0$ . The expected value and variance of the increment are

$$
\begin{array}{l} E \left(\Delta W_0\right) = \left(\frac{1}{2}\right) (+ 1) + \left(\frac{1}{2}\right) (- 1) = 0 \\ \operatorname {v a r} \left(\Delta W _ {0}\right) = \left(\frac {1}{2}\right) (+ 1 - 0) ^ {2} + \left(\frac {1}{2}\right) (- 1 - 0) ^ {2} = 1. \tag {16.1} \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/0e1691bb4dee9679bee3139db99bebf91f60f22c6e0746f81e2deedaa1f162e0.jpg)  
FIGURE 16.1 One-Period Binomial Wiener Process

Thus, because  $\mathrm{W}_1 = \mathrm{W}_0 + \Delta \mathrm{W}_0$ , its expectation is

$$
\begin{array}{l} E \left(\mathrm {W} _ {1}\right) = E \left(\mathrm {W} _ {0} + \Delta \mathrm {W} _ {0}\right) = E \left(\mathrm {W} _ {0}\right) + E \left(\Delta \mathrm {W} _ {0}\right) \\ = 0 + 0 = 0. \tag {16.2} \\ \end{array}
$$

The variance of  $W_{1}$  is, by definition,

$$
 \operatorname{var} \left(W_1\right) = E \left(W_1^{2}\right) - \left[ E \left(W_1\right) \right]^{2}. \tag{16.3}
$$

Focusing first on the expected value of the square of  $W_{1}$ ,

$$
 E \left(W_1^{2}\right) = \left(\frac{1}{2}\right) (+ 1)^{2} + \left(\frac{1}{2}\right) (- 1)^{2} = 1. \tag{16.4}
$$

Because  $E\big(W_1\big) = 0$ , we have

$$
 \operatorname{var} \left(W_1\right) = 1 - 0^{2} = 1. \tag{16.5}
$$

Another way to obtain this result is to recall that we want  $\operatorname{var}\left(W_1\right)$ , which is  $\operatorname{var}\left(W_0 + \Delta W_0\right)$ . The variance of a sum is the sum of the variances and twice all pairwise covariances, but  $W_0$  is a constant so its variance is zero and, therefore, there is no covariance with  $\Delta W_0$ . Thus,  $\operatorname{var}\left(W_1\right) = \operatorname{var}\left(\Delta W_0\right)$ , which we already found as 1.

In this form, however, the model is too simple and has limited use. We can extend it somewhat by adding time periods. Note, however, that if we just let the process move from  $+1$  to  $+2$  or 0 or from  $-1$  to 0 or  $-2$ , the variance would obviously increase. With a large number of time periods, we might find ourselves with an unreasonable variance. One way to scale the variance is to establish that we are trying to model a random process over a fixed period of time. We might say, for example, that we wish to model movements over a period  $t = 1$ , which might be one year, and we could capture these movements with a model of  $n = 2$  periods. We are, therefore, establishing that the time step is  $\Delta t = 1/2$ . We might be inclined, therefore, to adjust the model so that  $\Delta W = \pm 1\Delta t$ , but this adjustment will cause a problem. Intuitively, we might expect that we can better capture reality if we shrink the time interval such that  $t$  is fixed but  $n$  is large. In that case,  $\Delta t \to 0$ . What does this leave us with? No motion at all, as it is easy to see that the variance will approach zero.

Alternatively, let us try the model

$$
\Delta W = \pm \sqrt {\Delta t}. \tag {16.6}
$$

Now let us observe what we have in Figure 16.2.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/b4a92294a0bc359bb95877187f01b7161f1f9ef9662845f433c30aa6a5423158.jpg)  
FIGURE 16.2 Two-Period Binomial Wiener Process

Now let us find the expectation and variance of  $\Delta W_0$  and  $\Delta W_1$ . For the first increment,

$$
\begin{array}{l} E \left(\Delta W _ {0}\right) = \left(\frac {1}{2}\right) \left(+ 1 \sqrt {1 / 2}\right) + \left(\frac {1}{2}\right) (- 1 \sqrt {1 / 2}) = 0 \\ \operatorname {var} \left(\Delta W _ {0}\right) = \left(\frac {1}{2}\right) \left(+ 1 \sqrt {1 / 2} - 0\right) ^ {2} + \left(\frac {1}{2}\right) \left(- 1 \sqrt {1 / 2} - 0\right) ^ {2} = 1 / 2. \tag {16.7} \\ \end{array}
$$

For  $W_{1}$ , note again that the variance is the sum of the variance of  $W_{0}$  and  $\Delta W_{1}$ .  $W_{0}$  is known so it has no variance nor a covariance with  $\Delta W_{1}$ , and we can ignore any covariance between  $W_{0}$  and  $\Delta W_{1}$ . Therefore,

$$
\begin{array}{l} E \left(W_1\right) = E \left(W_0\right) + E \left(\Delta W_0\right) = 0 + 0 = 0 \\ \operatorname{var} \left(W_1\right) = \operatorname{var} \left(W_0\right) + \operatorname{var} \left(\Delta W_0\right) = 0 + 1 / 2 = 1 / 2. \tag{16.8} \\ \end{array}
$$

Now we need the expectation and variance of  $W_{2}$ :

$$
\begin{array}{l} E \left(\mathrm {W} _ {2}\right) = \mathrm {W} _ {0} + E \left(\Delta \mathrm {W} _ {0}\right) + E \left(\Delta \mathrm {W} _ {1}\right) = 0 + 0 + 0 = 0 \\ \operatorname {v a r} \left(W _ {2}\right) = \operatorname {v a r} \left(W _ {0}\right) + \operatorname {v a r} \left(\Delta W _ {0}\right) + \operatorname {v a r} \left(\Delta W _ {1}\right) = 0 + 1 / 2 + 1 / 2 = 1. \tag {16.9} \\ \end{array}
$$

Thus, we observe again a zero mean but a variance that is growing linearly in time. Recall  $\Delta t = 1/2$ , so after two time steps, we have a variance of one as well as  $t = 1$ .

Now let us consider the general case of a process  $W_{t}$ , where  $t$  can be any future point in time:

$$
\begin{array}{l} E \left(\Delta W _ {t}\right) = \left(\frac {1}{2}\right) (+ 1 \sqrt {\Delta t}) + \left(\frac {1}{2}\right) (- 1 \sqrt {\Delta t}) = 0 \\ \operatorname {v a r} \left(\Delta \mathrm {W} _ {t}\right) = \left(\frac {1}{2}\right) (+ 1 \sqrt {\Delta t} - 0) ^ {2} + \left(\frac {1}{2}\right) (- 1 \sqrt {\Delta t} - 0) ^ {2} = \Delta t. \tag {16.10} \\ \end{array}
$$

Now consider the expectation and variance of  $W_{t}$ . First let us set the following relationship,

$$
W _ {t} = W _ {0} + \sum_ {i = 0} ^ {n - 1} \Delta W _ {i}. \tag {16.11}
$$

Then we can find the expected value and variance as

$$
\begin{array}{l} E \left(W _ {t}\right) = W _ {0} + E \left(\sum_ {i = 1} ^ {n - 1} \Delta W _ {i}\right) = 0 + 0 + \dots 0 = 0 \\ \operatorname {v a r} \left(W _ {t}\right) = \operatorname {v a r} \left(W _ {0}\right) + \operatorname {v a r} \left(\sum_ {i = 1} ^ {n - 1} \Delta W _ {i}\right) \\ = 0 + \Delta t + \Delta t + \dots \Delta t = t. \tag {16.12} \\ \end{array}
$$

The latter result comes from the fact that summing from 0 to  $n - 1$  is  $n$  items. So  $n$  times  $\Delta t$  is  $t$  because  $\Delta t = t / n$ .

# 16.2 MOVING FROM A DISCRETE TO A CONTINUOUS WORLD

It is possible to demonstrate quite formally that if we hold  $t$  fixed and increase  $n$ , in the limit, the random component,  $\pm 1$ , will converge to a standard normal random variable, which of course has expected value of 0 and variance of 1. In that case, our model is as follows:

$$
\begin{array}{l} d W _ {t} = \varepsilon_ {t} \sqrt {d t} \\ \mathrm {W} _ {t} = \int_ {0} ^ {t} d \mathrm {W} _ {s}. \tag {16.13} \\ \end{array}
$$

If we substitute the first equation into the second, the integral looks somewhat strange due to the square root term. This integral is no longer a standard Riemann integral but is instead a stochastic integral. We treated these integrals in Chapter 11, and as it turns out, with constant variance, a stochastic integral of this form is more or less the same as a Riemann integral. Therefore, we can say quite comfortably that with  $W_0 = 0$ ,

$$
\mathrm {W} _ {t} = \int_ {0} ^ {t} d \mathrm {W} _ {s} = \mathrm {W} _ {t} - \mathrm {W} _ {0} = \mathrm {W} _ {t}. \tag {16.14}
$$

This result would appear to hold by definition, but a formal proof requires the tools of stochastic integration, which requires defining the integral, not in terms of a limit of an absolute difference but rather the expectation of a mean squared difference. Of course, we covered this in Chapter 11.

The variable  $W_{t}$  is a Brownian motion. Recall the requirements for a Brownian motion are as follows:

The process commences at zero  $(W_0 = 0)$  and is continuous.  
The random variable is normally distributed with an expectation of zero and variance of  $t$  over time  $t$ .  
The increments,  $W_{t + dt} - W_t = \Delta W_t$ , are independent and normally distributed.

As noted, this process is also sometimes called a Wiener process, hence the  $W$  notation. Some experts make slight distinctions between Brownian motion and Wiener processes. Some even refer to  $W_{t}$  as the Brownian motion and  $dW_{t}$  as the Wiener process. Technically, our discrete time model is not a Brownian motion; it is often just referred to as a random walk.

We covered these points in Chapter 10 but let us review them here. Remember that  $\varepsilon_t \sim N(0,1)$ , so

$$
E \left(d \mathrm {W} _ {t}\right) = E \left(\varepsilon_ {t} \sqrt {d t}\right) = \sqrt {d t} E \left(\varepsilon_ {t}\right) = 0
$$

$$
\operatorname {v a r} \left(d W _ {t}\right) = \operatorname {v a r} \left(\varepsilon_ {t} \sqrt {d t}\right) = d t \operatorname {v a r} \left(\varepsilon_ {t}\right) = d t
$$

$$
E \left(W _ {t}\right) = E \left(\int_ {0} ^ {t} d W _ {j}\right) = \int_ {0} ^ {t} E \left(d W _ {j}\right) = 0
$$

$$
\operatorname {v a r} \left(\mathrm {W} _ {t}\right) = \operatorname {v a r} \left(\int_ {0} ^ {t} d \mathrm {W} _ {j}\right) = \int_ {0} ^ {t} \operatorname {v a r} \left(d \mathrm {W} _ {j}\right) = \int_ {0} ^ {t} d j = t. \tag {16.15}
$$

For the last line, note that because the increments are independent, all covariances between  $dW_{i}$  and  $dW_{k}$  are zero,  $j \neq k$ .

Now suppose we are interested in the covariance between overlapping Brownian motions,  $W_{s}$  and  $W_{t}$ , where  $t > s$ . Recall due to time series independence, we have

$$
\begin{array}{l} \operatorname {c o v} \left(W _ {s}, W _ {t}\right) = \operatorname {c o v} \left(W _ {0} + \int_ {0} ^ {s} d W _ {j}, W _ {0} + \int_ {0} ^ {t} d W _ {j}\right) \\ = \operatorname {c o v} \left(W _ {0}, W _ {0}\right) + \operatorname {c o v} \left(W _ {0}, \int_ {0} ^ {t} d W _ {j}\right) + \operatorname {c o v} \left(\int_ {0} ^ {s} d W _ {j}, W _ {0}\right) + \operatorname {C o v} \left(\int_ {0} ^ {s} d W _ {j}, \int_ {0} ^ {t} d W _ {j}\right) \\ = 0 + 0 + 0 + \operatorname {c o v} \left(\int_ {0} ^ {s} d W _ {j}, \int_ {0} ^ {t} d W _ {j}\right) = \operatorname {c o v} \left(\int_ {0} ^ {s} d W _ {j}, \int_ {0} ^ {s} d W _ {j} + \int_ {s} ^ {t} d W _ {j}\right) \\ = \operatorname {c o v} \left(\int_ {0} ^ {s} d W _ {j}, \int_ {0} ^ {s} d W _ {j}\right) + \operatorname {c o v} \left(\int_ {0} ^ {s} d W _ {j} \int_ {s} ^ {t} d W _ {j}\right) = \operatorname {c o v} \left(\int_ {0} ^ {s} d W _ {j}, \int_ {0} ^ {s} d W _ {j}\right) + 0 \\ = s. \tag {16.16} \\ \end{array}
$$

Because the correlation is defined as the covariance divided by the product of the standard deviations, the correlation between  $W_{s}$  and  $W_{t}$  would be

$$
\rho \left(W _ {s}, W _ {t}\right) = \frac {s}{\sqrt {s} \sqrt {t}} = \sqrt {s / t}. \tag {16.17}
$$

This seemingly minor result turns out to play a major role in compound option pricing models where it is necessary to determine a correlation for the underlying asset price on two dates, with the asset price driven by the value of  $W$  on the two dates. We shall cover compound options in Chapter 18.

Now let us look at the probability density for  $W_{t}$ . We know that in general, a normally distributed random variable  $x$  with mean  $\mu$  and variance  $\sigma^2$  has a density of

$$
f (x) = \frac {1}{\sqrt {2 \pi \sigma^ {2}}} e ^ {- \frac {1}{2} \left(\frac {x - \mu}{\sigma}\right) ^ {2}}. \tag {16.18}
$$

What we know about  $W_{t}$  is that it is normally distributed with  $\mu = 0$  and  $\sigma^2 = t$ . Thus, its density is

$$
f \left(\mathrm {W} _ {t}\right) = \frac {1}{\sqrt {2 \pi t}} e ^ {- \frac {1}{2} \left(\frac {\mathrm {W} _ {t} ^ {2}}{t}\right)}. \tag {16.19}
$$

We also know that  $dW_{t}$  is normally distributed with  $\mu = 0$  and  $\sigma^2 = dt$ . Thus, its density is

$$
f \left(d W _ {t}\right) = \frac {1}{\sqrt {2 \pi d t}} e ^ {- \frac {1}{2} \left(\frac {d W _ {t}}{\sqrt {d t}}\right) ^ {2}}. \tag {16.20}
$$

Because we know that  $dW_{t} = \varepsilon_{t}\sqrt{dt}$ , we can substitute into Equation (16.20) and obtain

$$
f \left(d W _ {t}\right) = \frac {1}{\sqrt {2 \pi d t}} e ^ {- \frac {1}{2} \varepsilon_ {t} ^ {2}}. \tag {16.21}
$$

Now consider two distinct Brownian motions,  $W_{x}$  and  $W_{y}$ . Let us examine a new process that is a product of these two processes, specifically,  $dW_{x}dW_{y}$ . We know that the two increments are defined as

$$
d \mathrm {W} _ {x} = \varepsilon_ {x} \sqrt {d t}
$$

$$
d W _ {y} = \varepsilon_ {y} \sqrt {d t}. \tag {16.22}
$$

Now let us find the variance of their product. By definition  $\operatorname{var}\left(dW_x dW_y\right) = E\left[(dW_x dW_y)^2\right] - \left[E\left(dW_x dW_y\right)\right]^2$ . Then  $E\left(dW_x dW_y\right) = E\left(\varepsilon_x \sqrt{dt} \varepsilon_y \sqrt{dt}\right) = dtE\left(\varepsilon_x \varepsilon_y\right)$ . Now use the definition of covariance,  $\operatorname{cov}\left(\varepsilon_x, \varepsilon_x\right) = E\left(\varepsilon_x \varepsilon_x\right) - E\left(\varepsilon_x\right)E\left(\varepsilon_y\right)$ , which here reduces to  $E\left(\varepsilon_x \varepsilon_x\right)$  because the expectation of each  $\varepsilon$  is zero. Now consider the correlation between the processes  $\varepsilon_x$  and  $\varepsilon_y$ , which shall be denoted as  $\rho_{xy}$ . Because correlation is the covariance divided by the product of the standard deviations, then  $\operatorname{cov}(\varepsilon_x, \varepsilon_x) = \rho_{xy}$  because the two standard deviations are each 1.0. So,  $E\left(\varepsilon_x \varepsilon_x\right) = \rho_{xy}$ . So  $E\left(dW_x dW_y\right) = \rho_{xy} dt$ . But we want the square of this value. Obviously, this square is zero because we have  $\rho_{xy}^2 dt^2$  and  $dt^2$  goes to zero in the limit. It follows that the second term in the variance definition,  $\left[E\left(dW_x dW_y\right)\right]^2$ , goes to zero because it is  $(\rho_{xy} dt)^2$ . Thus,

$$
\operatorname {v a r} \left(d W _ {x} d W _ {y}\right) = 0. \tag {16.23}
$$

If the variance is zero, then

$$
E \left(d W _ {x} d W _ {y}\right) = d W _ {x} d W _ {y} = \rho_ {x y} d t. \tag {16.24}
$$

So we see that the product of two Brownian motions is non-stochastic.

Mathematicians often refer to the derivative with respect to time, in this case  $dW_{t} / dt$ , as the velocity. For Brownian motion, however, the velocity does not exist, as shown here:

$$
\frac {d W _ {t}}{d t} = \lim  _ {\Delta t \rightarrow 0} \frac {\Delta W _ {t}}{\Delta t} = \lim  _ {\Delta t \rightarrow 0} \frac {\varepsilon_ {t} \sqrt {\Delta t}}{\Delta t} = \lim  _ {\Delta t \rightarrow 0} \frac {\varepsilon_ {t}}{\sqrt {\Delta t}} \rightarrow \pm \infty . \tag {16.25}
$$

The intuition is that Brownian motion is characterized by infinitesimally small zig-zags. We cannot take limits while permitting the time increment to shrink. For a derivative to exist, we must be able to take a limit, meaning that the line drawn tangent to the point where we are taking the derivative must converge to a stable value, and this simply does not occur here. This result is, however, not a problem. We shall never need the derivative  $dW_{t} / dt$ .

Perhaps the most important characteristic of the process  $W_{t}$  is the property that its squared increment is no longer stochastic. We covered this point previously but let us review it here. Consider the squared variable  $dW_{t}^{2}$ . Let us take its expectation,

$$
E \left(d W _ {t} ^ {2}\right) = E \left[ \left(\varepsilon_ {t} \sqrt {d t}\right) ^ {2} \right] = d t E \left(\varepsilon_ {t} ^ {2}\right) = d t, \tag {16.26}
$$

which results from the fact that  $\operatorname{var}(\varepsilon_t) = E(\varepsilon_t^2) - [E(\varepsilon_t)]^2 = 1$ . But  $E(\varepsilon_t)$  is zero, so  $E(\varepsilon_t^2) = \operatorname{var}(\varepsilon_t) = 1$ .

Now let us take the variance of  $dW_{t}^{2}$

$$
\begin{array}{l} \operatorname {v a r} \left(d W _ {t} ^ {2}\right) = E \left[ \left(d W _ {t} ^ {2}\right) ^ {2} \right] - \left[ E \left(d W _ {t} ^ {2}\right) \right] ^ {2} \\ = E \left[ (\varepsilon_ {t} ^ {2} d t) ^ {2} \right] - \left[ E \left(\varepsilon_ {t} ^ {2} d t\right) \right] ^ {2} \\ = d t ^ {2} E \left(\varepsilon_ {t} ^ {4}\right) - d t ^ {2} \\ = 0. \tag {16.27} \\ \end{array}
$$

A key element of this result is remembering that in the limit  $dt^k \to 0$  for all  $k > 1$ .

We shall eventually be interested in generalizing our Brownian motion so that it has a nonzero mean and a variance other than  $t$ . Technically, this would no longer be a Brownian motion, but it is often still referred to in this manner. Suppose we wish to create a stochastic process,  $x_{t}$ , in which the increment,  $dx_{t}$ , has mean  $\mu$  and variance  $\sigma$ . Then we simply do the following: Let the process be defined as

$$
d x _ {t} = \mu d t + \sigma d W _ {t}. \tag {16.28}
$$

The properties of this process are

$$
E \left(d x _ {t}\right) = \mu d t \text {and} \operatorname {var} \left(d x _ {t}\right) = \sigma^ {2} d t. \tag {16.29}
$$

The latter result arises because the variance of  $\sigma dW_{t}$  is the constant  $\sigma^2$  times the variance of  $dW_{t}$ , which is  $dt$ . The process,  $x_{t}$ , defined by the stochastic integral

$$
x _ {t} = x _ {0} + \int_ {0} ^ {t} d x _ {j}, \tag {16.30}
$$

would have the properties

$$
E \left(x _ {t}\right) = x _ {0} + E \left(\int_ {0} ^ {t} d x _ {j}\right) = x _ {0} + \int_ {0} ^ {t} E \left(d x _ {j}\right) = x _ {0} + \int_ {0} ^ {t} \mu d j = x _ {0} + \mu t
$$

$$
\operatorname{var} \left(x _ {t}\right) = \operatorname{var} \left(\int_ {0} ^ {t} d x _ {j}\right) = \int_ {0} ^ {t} \operatorname{var} \left(d x _ {t}\right) = \operatorname{var} \left(\int_ {0} ^ {t} \sigma^ {2} d j\right) = \sigma^ {2} t. \tag {16.31}
$$

Note that there are no covariance terms for  $dx_{t}$  in the variance expression in the last line because the  $dx_{t}$  values are independent.

These results give  $x_{t}$  more general characteristics and enable us to use it to model more realistic phenomena, such as stock prices, exchange rates, and so on.

# 16.3 CHANGING THE PROBABILITY MEASURE WITH THE RADON-NIKODYM DERIVATIVE IN DISCRETE TIME

We examined the Radon-Nikodym derivative for a continuous time process in Chapter 15. In the current chapter, we started with a discrete time Brownian motion model. We then extended it to the continuous time case. Before leaving, we need to return to the discrete time case and examine how to change the probability measure. This procedure is extremely important but is much more difficult in the continuous time case. This material draws heavily on the excellent treatment in Baxter and Rennie (1996).

So let us again go back to the simple world with two outcomes. We can generalize it a little bit without any problems by having our variable  $W_0$  move to  $W_1^+$  or  $W_1^-$  with probabilities  $\phi$  and  $1 - \phi$ , respectively. Now let us suppose that we are interested in changing the probabilities to  $q$  and  $1 - q$ . Without further study, one may wonder why we would want to do this or even whether we could do this without creating a problem. Probabilities are, after all, usually given by external phenomena, and we cannot often change them.<sup>9</sup> But assigned probabilities can actually sometimes be changed. We have already seen that we can create artificial probabilities that lead to correct prices of derivatives but do not require knowledge of the true probabilities, the expected returns of assets, or the utility preferences of investors. This procedure in continuous time, however, is quite complex, as we previously showed. We now illustrate it in the discrete time setting.

So what we have is illustrated in Figure 16.3.

What we want is illustrated in Figure 16.4.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/da211abfcb2a4ada2fc5cd824e962ea8f87dc7bdfc9003fbbe1c0d813eed68ec.jpg)  
FIGURE 16.3 One-Period Wiener Process with Actual Probability  $\phi$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/9a8dd96c4581e549a3fd5cba348d2c94a06c870cca07f265d9ef489d411a4eb1.jpg)  
FIGURE 16.4 One-Period Wiener Process with Artificial Probability  $q$

Let us define the ratios of probabilities,  $q / \phi$  and  $(1 - q) / (1 - \phi)$ , as  $\gamma^s$  where  $s$  indicates the + or - state. That is,

$$
\gamma^ {+} = q / \phi
$$

$$
\gamma^ {-} = (1 - q) / (1 - \phi). \tag {16.32}
$$

The probabilities  $q$  and  $\phi$  represent different probability measures. The probabilities  $\phi$  and  $1 - \phi$  are said to be measure  $P$  and  $q$  and  $1 - q$  are measure  $Q$ .<sup>10</sup> We can take the expected value of  $W_{1}$  under either measure  $P$  or measure  $Q$ . Under measure  $Q$ , we have, by definition,

$$
E ^ {Q} \left(W _ {1}\right) = q W _ {1} ^ {+} + (1 - q) W _ {1} ^ {-}. \tag {16.33}
$$

This statement can be rewritten as follows:

$$
E ^ {\mathcal {Q}} \left(W _ {1}\right) = \phi (q / \phi) W _ {1} ^ {+} + (1 - \phi) \left[ (1 - q) / (1 - \phi) \right] W _ {1} ^ {-}. \tag {16.34}
$$

We can write this expectation compactly as

$$
E ^ {Q} \left(W _ {1}\right) = E ^ {P} \left(\gamma^ {s} W _ {1}\right). \tag {16.35}
$$

In other words, we can take the expectation under the  $Q$  measure by taking the expectation under the  $P$  measure, provided we adjust the random process by a new specific stochastic process involving a ratio of probabilities. So  $\gamma^s$ , which is a ratio of probabilities in state  $s$ , is a stochastic process itself. We can easily see this in Equation (16.32). It takes on a value of  $q / \phi$  or  $(1 - q) / (1 - \phi)$  in the two states respectively.

Let us extend this result one more period. Figure 16.5 illustrates the process we now have.

Now we must index our ratio of probabilities by time, that is,  $\gamma_t^s$ . First note that the process starts at  $\gamma_0 = 1.0$ . The stochastic process of  $\gamma_t^s$  can be derived as follows. First consider

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/bc1bf7ec1ef6baeb2a428f9f81a12612a9dc119f1a75e0cdef1868f7e42522f9.jpg)  
FIGURE 16.5 Two-Period Wiener Process with Probability  $q$

$\gamma_{t}^{+}$ , which as we know is  $q / \phi$ . The value  $q / \phi$  can be expressed as a weighted average of the next two values of the process as shown here:

$$
\begin{array}{l} \gamma_ {1} ^ {+} = (\phi) \gamma_ {2} ^ {+ +} + (1 - \phi) \gamma_ {2} ^ {+ -} \\ = (\phi) \left(\frac {q ^ {2}}{\phi^ {2}}\right) + (1 - \phi) \left(\frac {q (1 - q)}{\phi (1 - \phi)}\right) \\ = q ^ {2} / \phi + q (1 - q) / \phi \\ = \left(q ^ {2} + q - q ^ {2}\right) / \phi = q / \phi . \tag {16.36} \\ \end{array}
$$

Thus, in the time  $1 +$  state, we weight the ratio of the probabilities of the next two values of the process,  $q^{2} / \phi^{2}$  and  $q(1 - q) / \phi (1 - \phi)$  by  $\phi$  and  $1 - \phi$ , respectively. Similarly in the time 1state, we have for  $\gamma_{1}^{-}$

$$
\begin{array}{l} \gamma_ {1} ^ {-} = (\phi) \gamma_ {2} ^ {+ -} + (1 - \phi) \gamma_ {2} ^ {- -} \\ = (\phi) \left[ \frac {(1 - q) q}{(1 - \phi) \phi} \right] + (1 - \phi) \frac {(1 - q) ^ {2}}{(1 - \phi) ^ {2}} \\ = (1 - q) q / (1 - \phi) + (1 - q) ^ {2} / (1 - \phi) \\ = (1 - q) / (1 - \phi). \tag {16.37} \\ \end{array}
$$

And we see that  $\gamma_{1}^{-}$  is a probability-weighted average of the next two values of the process. This exercise shows how  $\gamma_{t}$  is a stochastic process. Ordinarily, one would not think that a probability is a stochastic process itself, but in this case, the ratio of probabilities is stochastic. At the time  $1+$  state, there are two upcoming outcomes:  $\gamma$  will equal either  $q^{2} / \phi^{2}$  with probability  $\phi$  or  $q(1 - q) / \phi (1 - \phi)$  with probability  $(1 - \phi)$ . A similar statement applies in the time  $1-$  state. So we see that  $\gamma_{1}^{s}$  is a stochastic process itself with values as shown in Figure 16.6.

And as we saw, each value is the expectation of what it will be in the next period. So, in general

$$
\gamma_ {t} = E ^ {P} \left(\gamma_ {t + 1} ^ {s}\right). \tag {16.38}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/8e81fcb6f4f66c04475736b1a5533f9bc8714c5e0c68222fcafdaef771db0fea.jpg)  
FIGURE 16.6 Stochastic Process of  $\gamma$

This process  $\gamma_{t+1}^s$  is the discrete time analog to the Radon-Nikodym derivative and represents a relationship between two equivalent probability measures. Equivalent probability measures are two probability measures that meet certain requirements, the main one being that any event that is possible under one measure must be possible under the other and vice versa. In other words, the impossible cannot be created from the possible and the impossible cannot be destroyed from the possible. In continuous time, this concept is much more difficult, except that it is more easily seen for what it is: a derivative of one probability distribution with respect to another. In discrete time, it is merely a ratio of probabilities, but calculus derivatives are technically not defined in discrete time. We covered the continuous case in Chapter 15.

# 16.4 THE KOLMOGOROV EQUATIONS

We now take a look at a set of equations that appears in the analysis of movements of a stochastic process. These equations are called the Kolmogorov equations. They are slight variations of the partial differential equation that is well known in derivative pricing theory in which the option price change is related to its derivatives and changes in time and the underlying. But instead of relating prices to their derivatives, the Kolmogorov equations relate probabilities to their derivatives. There are two such equations: the forward equation and backward equation.

Consider the following setup in a two-state discrete time world. In other words, the random process can move up or down in a given time and then up or down again and again. Suppose the random variable of interest starts off in state  $j$  at time 0. We are interested in the probability that the process is in state  $k$  at time  $n$ . In the two-state discrete world, the only way the process could get to state  $k$  at time  $n$  is to be at state  $k + 1$  at time  $n - 1$  and move down with probability  $1 - \phi$  or to be in state  $k - 1$  at time  $n - 1$  and move up with probability  $\phi$ . If the probability of moving from state  $j$  at time 0 to state  $k + 1$  at time  $n - 1$  is  $\phi_{j,k + 1,n - 1}$  and the probability of moving from state  $j$  at time 0 to state  $k - 1$  at time  $n - 1$  is  $\phi_{j,k + 1,n - 1}$ , then the probability of being in state  $k$  at time  $n$  is

$$
\phi_ {j, k, n} = (1 - \phi) \phi_ {j; k + 1; n - 1} + \phi \phi_ {j; k - 1; n - 1}. \tag {16.39}
$$

Note that the parameter  $\phi$  with no subscript is the probability of a move upward, and its complement,  $1 - \phi$ , is the probability of a move downward. We are interested in moving from one state to another, not moving up or down. The variable  $\phi$  with a subscript represents a compound probability, reflecting movements over time and states.

Consider a process  $x_{t}$  that changes by the value  $\varphi x$  over the interval  $\Delta t$ . Let us express the probability in Equation (16.39) more generally as  $\phi_{x;t;x_0}$ , which is the probability of

being in state  $x$  at time  $t$ , given that we were in state  $x_0$  at time 0. We would write this probability as

$$
\phi_ {x; t; x _ {0}} = \phi \phi_ {x - \Delta x; t - \Delta t; x _ {0}} + (1 - \phi) \phi_ {x + \Delta x; t - \Delta t; x _ {0}}. \tag {16.40}
$$

If we expand  $\phi_{x - \Delta x;t - \Delta t;x_0}$  and  $\phi_{x + \Delta x;t - \Delta t;x_0}$  in a second-order Taylor series, we obtain

$$
\phi_ {x + \Delta x; t - \Delta t; x _ {0}} = \phi_ {x; t; x _ {0}} - \frac {\partial \phi}{\partial t} \Delta t + \frac {\partial \phi}{\partial x} \Delta x + \left(\frac {1}{2}\right) \frac {\partial^ {2} \phi}{\partial x ^ {2}} \Delta x ^ {2}
$$

$$
\phi_ {x - \Delta x; t - \Delta t; x _ {0}} = \phi_ {x; t; x _ {0}} - \frac {\partial \phi}{\partial t} \Delta t - \frac {\partial \phi}{\partial x} \Delta x + \left(\frac {1}{2}\right) \frac {\partial^ {2} \phi}{\partial x ^ {2}} \Delta x ^ {2}, \tag {16.41}
$$

where we have suppressed some of the arguments on the joint probabilities for notational simplicity. We shall bring them back later. We now use (16.41) and (16.40) to obtain

$$
\begin{array}{l} \phi_ {x; t; x _ {0}} = \phi \left[ \phi_ {x; t; x _ {0}} - \frac {\partial \phi}{\partial t} \Delta t - \frac {\partial \phi}{\partial x} \Delta x + \left(\frac {1}{2}\right) \frac {\partial^ {2} \phi}{\partial x ^ {2}} \Delta x ^ {2} \right] \\ + (1 - \phi) \left[ \phi_ {x; t; x _ {0}} - \frac {\partial \phi}{\partial t} \Delta t + \frac {\partial \phi}{\partial x} \Delta x + \left(\frac {1}{2}\right) \frac {\partial^ {2} \phi}{\partial x ^ {2}} \Delta x ^ {2} \right]. \tag {16.42} \\ \end{array}
$$

Rearranging, we have

$$
\begin{array}{l} \phi_ {x; t; x _ {0}} = \phi \left[ \phi_ {x; t; x _ {0}} - \frac {\partial \phi}{\partial t} \Delta t + \left(\frac {1}{2}\right) \frac {\partial^ {2} \phi}{\partial x ^ {2}} \Delta x ^ {2} \right] - \phi \frac {\partial \phi}{\partial x} \Delta x \\ + \phi_ {x; t; x _ {0}} - \frac {\partial \phi}{\partial t} \Delta t + \left(\frac {1}{2}\right) \frac {\partial^ {2} \phi}{\partial x ^ {2}} \Delta x ^ {2} + \frac {\partial \phi}{\partial x} \Delta x \\ - \phi \left[ \phi_ {x; t; x _ {0}} - \frac {\partial \phi}{\partial t} \Delta t + \left(\frac {1}{2}\right) \frac {\partial^ {2} \phi}{\partial x ^ {2}} \Delta x ^ {2} \right] - \phi \frac {\partial \phi}{\partial x} \Delta x \\ 0 = - \frac {\partial \phi}{\partial t} \Delta t + \frac {\partial \phi}{\partial x} \Delta x + \left(\frac {1}{2}\right) \frac {\partial^ {2} \phi}{\partial x ^ {2}} \Delta x ^ {2} - 2 \phi \frac {\partial \phi}{\partial x} \Delta x \\ \end{array}
$$

$$
\frac {\partial \phi}{\partial t} \Delta t = \frac {\partial \phi}{\partial x} \Delta x (1 - 2 \phi) + \left(\frac {1}{2}\right) \frac {\partial^ {2} \phi}{\partial x ^ {2}} \Delta x ^ {2}. \tag {16.43}
$$

It turns out that an appropriate set of values for  $\phi$  and  $\Delta x$  is<sup>12</sup>

$$
\Delta x = \sigma \sqrt {\Delta t}
$$

$$
\phi = \frac {1}{2} \left(1 + \frac {\mu \sqrt {\Delta t}}{\sigma}\right)
$$

$$
1 - \phi = \frac {1}{2} \left(1 - \frac {\mu \sqrt {\Delta t}}{\sigma}\right). \tag {16.44}
$$

Substituting from (16.44) into (16.43), we obtain

$$
\begin{array}{l} \frac {\partial \phi}{\partial t} \Delta t = \frac {\partial \phi}{\partial x} \sigma \sqrt {\Delta t} \left(1 - 1 - \frac {\mu \sqrt {\Delta t}}{\sigma}\right) + \left(\frac {1}{2}\right) \frac {\partial^ {2} \phi}{\partial x ^ {2}} \Delta x ^ {2} \\ = - \frac {\partial \phi}{\partial x} \mu \Delta t + \left(\frac {1}{2}\right) \frac {\partial^ {2} \phi}{\partial x ^ {2}} \sigma^ {2} \Delta t \\ \end{array}
$$

$$
\frac {\partial \phi}{\partial t} = - \frac {\partial \phi}{\partial x} \mu + \left(\frac {1}{2}\right) \frac {\partial^ {2} \phi}{\partial x ^ {2}} \sigma^ {2}. \tag {16.45}
$$

Reinserting the omitted notation, the result is the forward equation,

$$
 \frac{\partial \phi_{x;t;x_0}}{\partial t} = - \frac{\partial \phi_{x;t;x_0}}{\partial x} \mu + \frac{1}{2} \frac{\partial^{2} \phi(x;t;x_0)}{\partial x^{2}} \sigma^{2}. \tag{16.46}
$$

Equation (16.46) is a continuous time representation of a partial differential equation for the probability density of being in a future state at a particular time and is called the forward equation, also known as the Fokker-Planck equation. It relates the probability at a forward time to the prior paths that take it to that point. The forward equation is a partial differential equation with a solution of the probability density,

$$
 \phi_{x;t;x_0} = \frac{1}{\sigma \sqrt{2\pi t}} e^{- \frac{1}{2} \frac{(x - x_0 - \mu t)^{2}}{\sigma^{2} t}}. \tag{16.47}
$$

Equation (16.47) is also recognized as the density for a variable  $x$  with mean  $x_0 + \Delta t$  and variance  $\Delta^2 t$ . The special case of  $\phi = 0$  is the one-dimensional equation for heat transfer in which  $\phi_{x;t;x_0}$  is the temperature.

Now let us look briefly at the backward equation. In this case, we want to know the probability that we started at a particular point, given that we ended up at a particular point. As an example, and to distinguish the backward problem from the forward problem, note Figure 16.7.

Notice how we have labeled the states. For example, the lowest state at time 4 is referred to as state 4,1. The next highest state is labeled 4,2, and so on, with the highest state in time 4 being state 4,5. A similar pattern follows for times 3, 2, and 1. Of course, there is only one state at time 0.

Now suppose we are in state 1,2. Find this state in the Figure 16.7. Suppose we are interested in knowing the probability of being in state 4,4. Note that to get from 1,2 to 4,4, we can go up two periods and down one or down one period and up two. We can also go up one period, then down one period, and then up one period. Thus, there is more than one path that can take us to 4,4 from 1,2. We do not need to consider the path from state 1,1 to 2,2 to 3,3 to 4,4, because it did not start off in state 1,2. The probability of getting to state 4,4 from state 1,2 is the forward probability. Alternatively, we might be in state 4,4 and want to know what is the probability that we came from state 1,2. The paths are the same as in the forward probability, but the perspective is different. We can think of the forward probability as  $\operatorname{Pr}(k = 4,4|j = 1,2)$  and the backward probability as  $\operatorname{Pr}(j = 1,2|k = 4,4)$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/e94e12597b811418d8ea17147bfd5267b2aea4c41ab7514a512d5115f776b1d3.jpg)  
FIGURE 16.7 Four-Period Binomial Wiener Process

For illustration of the forward probability, let state  $j$  be state 1,2; state  $k$  be state 4,4; then  $n = 3$ . Recall the forward probability stated in Equation (16.39):

$$
\phi_ {j; k; n} = (1 - \phi) \phi_ {j, k + 1; n - 1} + \phi \phi_ {j, k - 1; n - 1}.
$$

In this example, to go from state 1,2 to state 4,4, the up state one state before state 4,4 is state 3,4 and the down state one state before state 4,4 is state 3,3; thus, state  $k + 1$  is equivalent to state 3,4 and state  $k - 1$  is equivalent to state 3,3. We can write the forward looking probability as

$$
\operatorname * {P r} (k = 4, 4 | j = 1, 2) = \phi_ {(1, 2); (4, 4); 3} = (1 - \phi) \phi_ {(1, 2); (3, 4); 2} + \phi \phi_ {(1, 2); (3, 3); 2}.
$$

Now, we can take this further by finding expressions for  $\phi_{(1,2);(3,4);2}$  and  $\phi_{(1,2);(3,3);2}$ . The probability  $\phi_{(1,2);(3,4);2}$  represents the path of moving from state 1,2 to state 3,4 in two steps. This is accomplished in the same way as in the binomial world in exactly one way, two up movements or  $\phi^2$ . The probability  $\phi_{(1,2);(3,3);2}$  represents the paths of moving from state 1,2 to state 3,3, which is accomplished in two different ways, both having exactly

one up and one down movement or  $2\phi(1 - \phi)$ . Thus, we can write the probability further as

$$
\begin{array}{l} \Pr (k = 4, 4 \mid j = 1, 2) = \phi_ {(1, 2); (4, 4); 3} \\ = (1 - \phi) \phi_ {(1, 2); (3, 4); 2} + \phi \phi_ {(1, 2); (3, 3); 2} \\ = (1 - \phi) \phi^ {2} + \phi 2 \phi (1 - \phi) \\ = 3 \phi^ {2} (1 - \phi). \\ \end{array}
$$

Now, more generally for the backward probability, let  $\phi_{j;k;n}$  be the probability of going from state  $j$  at time 0 to state  $k$  in  $n$  steps. Let  $\phi_{j-1;k;m}$  be the probability of going from state  $j-1$  to  $k$  in  $m$  steps and  $\phi_{j+1;k;m}$  be the probability of going from state  $j+1$  to state  $k$  in  $m$  steps. Given that the probability is  $\phi$  that we went up to state  $j+1$  at time  $n-m$  and  $1-\phi$  that we went down to state  $j-1$  at time  $n-m$ , then the probability of going from state  $j$  to state  $k$  in  $m+1$  steps is

$$
\phi_ {j; k; m + 1} = \phi \phi_ {j + 1; k; m} + (1 - \phi) \phi_ {j - 1; k; m}. \tag {16.48}
$$

For illustration of the backward probability, let state  $k$  be state 4,4; state  $j$  be state 1,2; then  $n = 3$ ,  $m = 2$ , and  $n - m = 1$ . In this example, to go from state 4,4 to state 1,2, the upstate one state before reaching state 1,2 from state 4,4 is state 2,3 and the down state one state before state 1,2 is state 2,2; thus, state  $j + 1$  is equivalent to state 2,3 and state  $j - 1$  is equivalent to state 2,2. We can write the backward looking probability as

$$
\begin{array}{l} \phi_ {j; k; m + 1} = \phi \phi_ {j + 1; k; m} + (1 - \phi) \phi_ {j - 1; k; m} \\ \Pr (j = 1, 2 \mid k = 4, 4) = \phi_{(1,2);(4,4);3} = \phi \phi_{(2,3);(4,4);2} + (1 - \phi) \phi_{(2,2);(4,4);2}. \\ \end{array}
$$

Because we are asking what the probability is that we came from state 1,2, then we should note that it is impossible to have ever moved through some states. In Figure 16.8, the nodes where it would be impossible to have traveled from to get to the current state 4,4 are denoted in bold.

Now, suppose for a minute that state 4,4 has a lattice of its own where the lattice arrives to state 4,4 as the final point. Figure 16.9 illustrates this particular backward lattice.

This backward lattice consists of states that do not actually exist. The impossible states are expressed as bold. The possible states correspond to the nonbold states shown in Figure 16.8. If we treat this backward lattice as a usual lattice found in the binomial world, then we can use the usual binomial probability of each state, with a probability (down movement)  $= 1 - \phi$  and probability (up movement)  $= \phi$ .

For the columns 0, 1, and 2, we can see that there exists states in each column that are not real. If we are coming from a state in one of these columns, then we must consider that we came from only a possible state in the column (not a fake state created during the creation of the backward lattice). Conditional probabilities are used to update the probabilities for a given column. Column 1, for example, has only two possible states—1,1

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/75544b3dbcaa559718be119ca6048dc149f5f4150fd506b28734145ae63ace2e.jpg)  
FIGURE 16.8 Forward Lattice with Impossible Nodes Demarcated in Bold

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/75643d60e86d8ba8f24fad792517cf151d619a200c1ecfe571161b1eedb1aeb2.jpg)  
FIGURE 16.9 Backward Lattice Illustrated with Impossible Nodes Demarcated in Bold

and 1,2; thus, if we are looking for the probability that we came from a state in column 1 given that we are currently in state 4,4, we must update the probability to be conditional that we have to be in either state 1,1 or 1,2 only. Thus,

$$
\Pr (j = 1, 2 \cup j = 1, 1 | k = 4, 4 \cap j = 1, x) = \phi_ {(1, 1); (4, 4); 3} + \phi_ {(1, 2); (4, 4); 4} = 1.
$$

Following a similar procedure as we did for the forward equation, we obtain the continuous time backward equation

$$
 \frac{\partial \phi(x,t;x_0)}{\partial t} = \mu \frac{\partial \phi(x,t;x_0)}{\partial x_0} + \frac{1}{2} \frac{\partial^{2} \phi(x,t;x_0)}{\partial x_0^{2}} \sigma^{2}, \tag{16.49}
$$

where we note that the difference from the forward equation is that here we are viewing the problem from the current position  $x_0$ . In the forward equation, we are viewing the problem from the future position,  $x$ . The solution to the backward equation, (16.49), is the same as the solution to the forward equation, (16.46), namely, the density (16.47).

The Kolmogorov equations for continuous time express the probability densities of looking from one state to another, either looking forward in time or looking back. The general idea behind such equations is to specify the likelihoods of various paths that a random variable can take in the future or has taken in the past. As is often the case, the lesson can oftentimes be more easily seen in discrete time. As such, we introduce a discrete time example.

Figure 16.10 shows a three-period binomial tree for an asset priced at 100 that can go up by  $26\%$  or down by  $20\%$  each period. The probability of an up move is 0.54, so the probability of a down move is 0.46. There are three values in each cell: the asset price, a cell identifier, and the probability of moving to that cell from the initial cell, 0,0.

For the discrete time analog of the forward equations, we present Table 16.1, which indicates the probability of being in a future state, given that one is in a current state. The

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/b9df2fa96cf5ddbb2acae5a2d787ffcdce399ab82e3b531e47527c22d5280011.jpg)  
FIGURE 16.10 Binomial Tree for Illustrating Forward and Backward Probabilities

TABLE 16.1 Forward Probabilities in a Binomial World  

<table><tr><td colspan="11">Panel A. Points in Time 0–3</td></tr><tr><td rowspan="2">Current State</td><td colspan="10">Future States</td></tr><tr><td>0,0</td><td>1,1</td><td>1,2</td><td>2,1</td><td>2,2</td><td>2,3</td><td>3,1</td><td>3,2</td><td>3,3</td><td>3,4</td></tr><tr><td>0,0</td><td>NA</td><td>0.4600</td><td>0.5400</td><td>0.2116</td><td>0.4968</td><td>0.2916</td><td>0.0973</td><td>0.3428</td><td>0.4024</td><td>0.1575</td></tr><tr><td>1,1</td><td>NA</td><td>NA</td><td>NA</td><td>0.4600</td><td>0.5400</td><td>NA</td><td>0.2116</td><td>0.4968</td><td>0.2916</td><td>NA</td></tr><tr><td>1,2</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>0.4600</td><td>0.5400</td><td>0.0000</td><td>0.2116</td><td>0.4968</td><td>0.2916</td></tr><tr><td>2,1</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>0.4600</td><td>0.5400</td><td>0.0000</td><td>0.0000</td></tr><tr><td>2,2</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>0.0000</td><td>0.4600</td><td>0.5400</td><td>0.0000</td></tr><tr><td>2,3</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>0.0000</td><td>0.0000</td><td>0.4600</td><td>0.5400</td></tr><tr><td>3,1</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td></tr><tr><td>3,2</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td></tr><tr><td>3,3</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td></tr><tr><td>3,4</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td></tr></table>

Panel B. Point in Time 4  

<table><tr><td rowspan="2">Current State</td><td colspan="5">Future States</td></tr><tr><td>4,1</td><td>4,2</td><td>4,3</td><td>4,4</td><td>4,5</td></tr><tr><td>0,0</td><td>0.0448</td><td>0.2102</td><td>0.3702</td><td>0.2897</td><td>0.0850</td></tr><tr><td>1,1</td><td>0.0973</td><td>0.3428</td><td>0.4024</td><td>0.1575</td><td>0.0000</td></tr><tr><td>1,2</td><td>0.0000</td><td>0.0973</td><td>0.3428</td><td>0.4024</td><td>0.1575</td></tr><tr><td>2,1</td><td>0.2116</td><td>0.4968</td><td>0.2916</td><td>0.0000</td><td>0.0000</td></tr><tr><td>2,2</td><td>0.0000</td><td>0.2116</td><td>0.4968</td><td>0.2916</td><td>0.0000</td></tr><tr><td>2,3</td><td>0.0000</td><td>0.00000</td><td>0.2116</td><td>0.4968</td><td>0.2916</td></tr><tr><td>3,1</td><td>0.4600</td><td>0.5400</td><td>0.0000</td><td>0.0000</td><td>0.0000</td></tr><tr><td>3,2</td><td>0.0000</td><td>0.4600</td><td>0.5400</td><td>0.0000</td><td>0.0000</td></tr><tr><td>3,3</td><td>0.0000</td><td>0.0000</td><td>0.4600</td><td>0.5400</td><td>0.0000</td></tr><tr><td>3,4</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.4600</td><td>0.5400</td></tr><tr><td>4,1</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td></tr><tr><td>4,2</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td></tr><tr><td>4,3</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td></tr><tr><td>4,4</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td></tr><tr><td>4,5</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td></tr></table>

rows, as described in the first column, are the current states in which one could be. The columns are the future states. A given cell value is the probability of being in the future state, given that one is in the current state. There are a number of values indicated as NA, which are cases in which the current cell is either after or in the same time step as the future state. That is, from state 2,2, you cannot get to any prior states, nor can you get to state 2,1 or 2,3. For all future states, there is a probability given when feasible. From state 2,2, you cannot get to state 3,1, so it is infeasible but that probability is shown as 0.0000. From state 2,2, you can get to state 3,3 by going up, probability 0.54, or to state 3,2 by going down, probability 0.46. Of course, you cannot get to state 3,4 from 2,2, so that probability is 0.0000.

TABLE 16.2 Backward Probabilities in a Binomial World  

<table><tr><td rowspan="2">Current State</td><td colspan="10">State You Came From</td></tr><tr><td>0,0</td><td>1,1</td><td>1,2</td><td>2,1</td><td>2,2</td><td>2,3</td><td>3,1</td><td>3,2</td><td>3,3</td><td>3,4</td></tr><tr><td>0,0</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td></tr><tr><td>1,1</td><td>1.0000</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td></tr><tr><td>1,2</td><td>1.0000</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td></tr><tr><td>2,1</td><td>1.0000</td><td>1.0000</td><td>0.00</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td></tr><tr><td>2,2</td><td>1.0000</td><td>0.5400</td><td>0.4600</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td></tr><tr><td>2,3</td><td>1.0000</td><td>0.0000</td><td>1.000</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td></tr><tr><td>3,1</td><td>1.0000</td><td>1.0000</td><td>0.0000</td><td>1.0000</td><td>0.0</td><td>0.0</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td></tr><tr><td>3,2</td><td>1.0000</td><td>0.7013</td><td>0.2987</td><td>0.5400</td><td>0.4600</td><td>0.0</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td></tr><tr><td>3,3</td><td>1.0000</td><td>0.3699</td><td>0.6301</td><td>0.0000</td><td>0.5400</td><td>0.4600</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td></tr><tr><td>3,4</td><td>1.0000</td><td>0.0000</td><td>1.0000</td><td>0.0000</td><td>0.0000</td><td>1.0000</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td></tr><tr><td>4,1</td><td>1.0000</td><td>1.0000</td><td>0.0000</td><td>1.0000</td><td>0.0000</td><td>0.0000</td><td>1.0</td><td>0.00</td><td>0.00</td><td>0.00</td></tr><tr><td>4,2</td><td>1.0000</td><td>0.7788</td><td>0.2212</td><td>0.7013</td><td>0.2987</td><td>0.0000</td><td>0.54</td><td>0.46</td><td>0.00</td><td>0.00</td></tr><tr><td>4,3</td><td>1.0000</td><td>0.5400</td><td>0.4600</td><td>0.2916</td><td>0.4968</td><td>0.2116</td><td>0.0</td><td>0.54</td><td>0.46</td><td>0.00</td></tr><tr><td>4,4</td><td>1.0000</td><td>0.28125</td><td>0.71875</td><td>0.0000</td><td>0.3699</td><td>0.6301</td><td>0.0</td><td>0.00</td><td>0.54</td><td>0.46</td></tr><tr><td>4,5</td><td>1.0000</td><td>0.0000</td><td>1.0000</td><td>0.0000</td><td>0.0000</td><td>1.0000</td><td>0.0</td><td>0.00</td><td>0.00</td><td>1.00</td></tr></table>

Referring back to our first forward probability example, we can see that this table matches what we had previously said with

$$
\Pr (k = 4, 4 \mid j = 1, 2) = \phi_{(1,2);(4,4);3} = 3 \phi^{2} (1 - \phi) = 3 (0.54^{2}) (1 - 0.54) = 0.4024.
$$

The backward probabilities are slightly more difficult to understand. A backward probability asks the question of, given you are in a particular state, what is the probability you got here from a specific past state. Table 16.2 shows the backward probabilities for all possible current states. The values of NA indicate states from which you could not have come, such as the same state or a contemporaneous state. Inasmuch as there is no time travel, you also could not have come from a future state. You can, however, have come from a prior state. For example, in state 2,2, there is a 0.46 chance you came from state 1,2, having gone down, and a 0.54 chance you came from state 1,1, having gone up. Notice that the probability is 1.0000 that you were in state 0,0.

Understanding these types of measures is important for path-dependent options. The forward measures are clearly more important in finance, because we nearly always look ahead rather than back, but understanding how something came about is helpful in modeling. Estimates of the future nearly always start with what has happened in the past. The historic paths taken by asset prices can be helpful in developing and validating models. Thus, they are an important element in the study of stochastic processes.

# 16.5 RECAP AND PREVIEW

In this chapter, we showed how the change of probability measure in the discrete time stochastic process that we use is related to the change of probability measure in the continuous time stochastic process we use. We also show the Kolmogorov equations, which define how movements at one point in time are related to movement at a future or prior point in time.

This chapter completes Part III. In Part IV, we return to a more direct application of the Black-Scholes-Merton model. Specifically, we examine types of options other than the standard European option, and we derive the relevant pricing models under the Black-Scholes-Merton assumptions.

# QUESTIONS AND PROBLEMS

1 Assume we wish to model movements over the next calendar month,  $t = 1/12$ , with a two-period model,  $n = 2$  periods. Propose a Wiener process with an expected value of 0 and standard deviation of  $\sqrt{t} = \sqrt{1/12}$ .  
2 Assume we wish to model movements over some generic time period,  $t$ , with an  $n$ -period model. Propose a Wiener process with an expected value of 0 and standard deviation of  $\sqrt{t}$ .  
3 Suppose we have two points in time,  $s$  and  $u$ . Unfortunately, we do not know which point in time is larger than the other point in time. Derive the covariance and correlation between two overlapping Brownian motions,  $W_s$  and  $W_u$ .  
4 Assume that the actual probability of an up move is  $\phi = 60\%$  and the artificial probability of an up move is  $q = 50\%$  for each time step. Build a two-period binomial model of the Radon-Nikodym derivative and show that this process is a martingale under the actual probability measure but not the artificial probability measure.  
5 Assuming arithmetic Brownian motion with arithmetic drift with constant coefficients, derive the expected value and standard deviation.

# NOTES

1. A random walk is a stochastic process consisting of a series of independent and identically distributed random variables. A Brownian motion is a random walk, but all random walks are not Brownian motions. Technically, Brownian motions are required to be continuous. We relax this requirement in these introductory sections as we eventually make the limiting argument.  
2. Now there would be three outcomes at time step 2:  $+2$  with probability  $\frac{1}{4}$ , 0 with probability  $\frac{1}{2}$ , and  $-2$  with probability  $\frac{1}{4}$ . The expected value is still zero, but the variance is now  $(1/4)(2 - 0)^2 + (1/2)(0 - 0)^2 + (1/4)(-2 - 0)^2 = 2$ .  
3. To obtain the variance we would end up squaring  $\Delta t$ , which would take it to zero when  $\Delta t$  is small.  
4. We could also find the variance of  $W_{2}$  the traditional way, by probability weighting the three squares of the outcomes less the expected value squared.  
5. Recall we follow standard notation where the subscript is simple  $t$  even though it is not observed until  $t + \Delta t$  because we eventually focus on the limiting result.  
6. The formal proof of this result is a variation of the DeMoivre-LaPlace limit theorem, which proves that a binomial distribution converges to a normal distribution in the limit.
7. The covariance is actually the product of the correlation and the two standard deviations of the  $\varepsilon s$ , which are both 1.0.  
8. The term velocity refers to the speed of something. Hence, a derivative such as  $\frac{dW_t}{dt}$  would refer to the rate at which  $W_t$  changes with time, which, of course, is the speed.  
9. Consider, however, that blackjack dealers frequently change decks to alter the probabilities.  
10. It would be convenient if the probabilities under measure  $P$  were  $p$  and  $1 - p$ , or the value of a put.  
11. At time 0, there is only one state, so we do not need to index it by state.  
12. It can be proven by using the moment-generating function that in the limit these values produce the desired periodic mean,  $\mu$ , and volatility,  $\sigma$ .  
13. That this density solves the differential equation can be verified by taking the partial derivatives with respect to  $t$  and  $x$  and substituting back into the differential equation.


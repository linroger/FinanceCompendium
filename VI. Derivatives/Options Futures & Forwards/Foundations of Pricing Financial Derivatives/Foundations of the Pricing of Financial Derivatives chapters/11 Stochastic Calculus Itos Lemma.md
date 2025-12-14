---
aliases:
  - Stochastic Calculus and Ito's Lemma
tags:
key_concepts:
parent_directory: Foundations of the Pricing of Financial Derivatives chapters
cssclasses: academia
title: "Chapter 11: Stochastic Calculus and Ito's Lemma"
linter-yaml-title-alias: "Chapter 11: Stochastic Calculus and Ito's Lemma"
---

# Stochastic Calculus and Ito's Lemma

Stochastic calculus is an important field of mathematics that works with stochastic processes. Much like ordinary calculus, stochastic calculus is based on several fundamental results. One of the most important stochastic calculus results used in options is Itô's lemma. Though this result was discovered about 1950, it did not get firmly established in the finance literature until 1973 when Black, Scholes, and Merton discovered that it could be used to model the price of a stock and ultimately to facilitate pricing an option. Some excellent references with applications in finance are Baxter and Rennie (1996), Neftci (2000), and Malliaris and Brock (1982). Good sources for more advanced treatments are Karatzas and Shreve (1991) and Karlin and Taylor (1981).

# 11.1 A RESULT FROM BASIC CALCULUS

Although there is a great deal of formal mathematical rigor to Ito's lemma, the essential elements are relatively simple. Let us begin, however, with a reminder of a few basic results from ordinary calculus. Recall that any differential in ordinary calculus,  $dt < 1$ , has a limit of zero if raised to a power greater than 1.0. In other words,  $dt^k \rightarrow 0$  if  $k > 1$ . Consider a generic mathematical function such as  $F(x,t)$  in which the first and second derivatives exist with respect to  $x$  and  $t$ . Using a Taylor series expansion, the change in value of the function can be expressed as

$$
d F = \frac {\partial F}{\partial x} d x + \frac {\partial F}{\partial t} d t + \frac {1}{2} \frac {\partial^ {2} F}{\partial x ^ {2}} d x ^ {2} + \frac {1}{2} \frac {\partial^ {2} F}{\partial t ^ {2}} d t ^ {2} + \frac {\partial^ {2} F}{\partial x \partial t} d x d t + \dots . \tag {11.1}
$$

Because  $dx^2 \to 0$ ,  $dt^2 \to 0$  and  $dxdt \to 0$ , we write Equation (11.1) as

$$
d F = \frac {\partial F}{\partial x} d x + \frac {\partial F}{\partial t} d t. \tag {11.2}
$$

This statement means that the change in  $F$  is a function of the first-order changes in  $x$  and  $t$ . The change in  $x$  is multiplied by the partial derivative of  $F$  with respect to  $x$  and the change in  $t$  is multiplied by the partial derivative of  $F$  with respect to  $t$ . All of this is a formal way of stating that as  $x$  and  $t$  change, they induce a change in  $F$ . The changes in  $x$  and  $t$  are so small, however, that squared changes in  $x$  and  $t$  are zero in the limit, and their product is also zero in the limit.

# 11.2 INTRODUCING STOCHASTIC CALCULUS AND ITO'S LEMMA

In ordinary calculus, the variables are non-stochastic, which simply means that when we talk about a particular value of  $x$ , that value is known for certain. When  $x$  is stochastic, we leave the world of ordinary calculus and enter the world of stochastic calculus. There we cannot talk about a particular value of  $x$ . Instead, we must talk about a set of possible values of  $x$  that are generated according to a probability distribution. In stochastic calculus, results are proven by demonstrating what happens when squared values of a variable are multiplied by probabilities. A result is said to hold in "mean square limit." A more formal statement of this concept is presented later in this chapter.

# 11.2.1 Generalized Itô Process

Let us now propose that  $x$  is stochastic and follows an Itô process, such as  $dW_{t}$ , or a more generalized process such as

$$
d x = \mu (x, t) d t + \sigma (x, t) d W _ {t}. \tag {11.3}
$$

Recall that  $dW_{t} = \varepsilon_{t}\sqrt{dt}$ . With the expressions  $\mu (x,t)$  and  $\sigma (x,t)$ , we are allowing the expectation and variance of  $x$  to be functions of the level of  $x$  and time  $t$ . Note that  $\mu$  and  $\sigma$  depend on, at most, the stochastic variable  $x$  and time  $t$ .

Now suppose that we go back to the unspecified function  $F(x, t)$  and examine the Taylor series expansion when  $x$  is stochastic. Again, we emphasize that the function  $F$  depends on at most variables  $x$  and  $t$ . Although  $dt^2$  is still zero because time is not stochastic,  $dx^2$  is not zero. Recalling that  $dW_t^2 = dt$ , we square the generalized Itô process defined in Equation (11.3) and thus we have

$$
\begin{array}{l} d x ^ {2} = \left[ \mu (x, t) d t + \sigma (x, t) d W _ {t} \right] ^ {2} \\ = \mu (x, t) ^ {2} d t ^ {2} + \sigma (x, t) ^ {2} d W _ {t} ^ {2} + 2 \mu (x, t) \sigma (x, t) d t d W _ {t}. \tag {11.4} \\ \end{array}
$$

Note that  $dW_{t}dt$  is zero because

$$
d t d W _ {t} = d t \varepsilon_ {t} \sqrt {d t} = \varepsilon_ {t} d t ^ {3 / 2}. \tag {11.5}
$$

And this expression goes to zero because of the power of  $dt$  higher than one. Hence,

$$
d x ^ {2} = \sigma^ {2} (x, t) d W _ {t} ^ {2}. \tag {11.6}
$$

For Taylor series expansion purposes, we also examine  $dxdt$  or

$$
d x d t = \left[ \mu (x, t) d t + \sigma (x, t) d W _ {t} \right] d t = \mu (x, t) d t ^ {2} + \sigma (x, t) d W _ {t} d t = 0, \tag {11.7}
$$

because, as just noted,  $dW_{t}dt$  goes to zero in the limit.

So, now our Taylor series expansion when  $x$  is stochastic is

$$
d F = \frac {\partial F}{\partial x} d x + \frac {\partial F}{\partial t} d t + \frac {1}{2} \frac {\partial^ {2} F}{\partial x ^ {2}} d x ^ {2}. \tag {11.8}
$$

Note that we do not have to consider higher-order terms, as  $dx^3$  would go to zero, because  $dx^2$  is  $dt$ . With this setup, we are now ready to express Itô's lemma.

# 11.2.2 Itô Lemma

Assuming  $x$  follows a generalized Itô process expressed as

$$
d x = \mu (x, t) d t + \sigma (x, t) d W _ {t},
$$

where  $F = F(x,t)$ , subject to certain technical constraints,

$$
d F = \frac {\partial F}{\partial x} [ \mu (x, t) d t + \sigma (x, t) d W ] + \frac {\partial F}{\partial t} d t + \frac {1}{2} \frac {\partial^ {2} F}{\partial x ^ {2}} \sigma (x, t) ^ {2} d t. \tag {11.9}
$$

This result is known as Ito's lemma, being named for the Japanese mathematician Kiyoshi Ito, whom we mentioned in Chapter 10 and who discovered this result. The equation describes the stochastic process of a function  $F(x,t)$  that is driven by time  $t$  and a stochastic process for  $x$  of the form we previously referred to as a Wiener process.

Note that by substituting for  $dx$  (Equation (11.3)) and  $dx^2$  (Equation (11.6)), we can express the stochastic process for  $F$  more commonly in finance as

$$
d F = \left[ \frac {\partial F}{\partial t} + \frac {\partial F}{\partial x} \mu (x, t) + \frac {1}{2} \frac {\partial^ {2} F}{\partial x ^ {2}} \sigma (x, t) ^ {2} \right] d t + \frac {\partial F}{\partial x} \sigma (x, t) d W _ {t}. \qquad (1 1. 1 0)
$$

In this manner, we see that the term within the square brackets is the expected change in  $F$  per unit of time and the variance is given as  $(\partial F / \partial x)^{2}\sigma (x,t)^{2}$  per unit of time.3 That is,

$$
\begin{array}{l} E (d F) = E \left\{\left[ \frac {\partial F}{\partial t} + \frac {\partial F}{\partial x} \mu (x, t) + \frac {1}{2} \frac {\partial^ {2} F}{\partial x ^ {2}} \sigma (x, t) ^ {2} \right] d t + \frac {\partial F}{\partial x} \sigma_ {x, t} d W \right\} \\ = E \left[ \frac {\partial F}{\partial t} + \frac {\partial F}{\partial x} \mu (x, t) + \frac {1}{2} \frac {\partial^ {2} F}{\partial x ^ {2}} \sigma (x, t) ^ {2} \right] d t \mathrm {a n d} \tag {11.11} \\ \end{array}
$$

$$
\begin{array}{l} \mathrm {v a r} (d F) = \mathrm {v a r} \left\{\left[ \frac {\partial F}{\partial t} + \frac {\partial F}{\partial x} \mu (x, t) + \frac {1}{2} \frac {\partial^ {2} F}{\partial x ^ {2}} \sigma (x, t) ^ {2} \right] d t + \frac {\partial F}{\partial x} \sigma (x, t) d \mathrm {W} _ {t} \right\} \\ = \left(\frac {\partial F}{\partial x}\right) ^ {2} \sigma (x, t) ^ {2} d t. \tag {11.12} \\ \end{array}
$$

Note that the covariance terms in the variance formula are all zero and that all the uncertainty in  $F$  comes from the uncertainty in  $\mathbb{W}_t$ .

Itô's lemma is widely used in pricing derivatives. The price of a derivative is said to be "derived" from the price of the underlying asset and time. Thus,  $F(x,t)$  is a convenient specification of a derivative price, because its value is derived from  $x$  and  $t$ , with  $x$  known to be stochastic and  $t$  representing time. Suppose  $F$  is the price of an option or other derivative

contract on an asset whose value is  $x$ . If we let that asset price evolve according to the Ito process, then we can characterize the change in the option price by Ito's lemma, as stated in the previous equation.

For example, consider an instrument that is presently valued as the future value of the spot price, where the rate applied,  $k$ , is known. The constant  $k$  denotes the carrying cost that generally includes financing charges and any other costs or benefits from holding the asset. That is,

$$
F _ {t} = S _ {t} e ^ {k \tau},
$$

where the time to expiration of this instrument is expressed as  $\tau = T - t$ .<sup>4</sup> If we assume that the underlying instrument follows geometric Brownian motion or  $dS_{t} = \alpha S_{t}dt + \sigma S_{t}dW_{t}$ , then based on Ito's Lemma as represented by Equation (11.10), we have

$$
d F _ {t} = \left(\frac {\partial F}{\partial t} + \frac {\partial F}{\partial S} \alpha S _ {t} + \frac {1}{2} \frac {\partial^ {2} F}{\partial S ^ {2}} \sigma^ {2} S _ {t} ^ {2}\right) d t + \frac {\partial F}{\partial S} \sigma S _ {t} d \mathrm {W} _ {t}.
$$

With  $F_{t} = S_{t}e^{k(T - t)}$ , the three required derivatives are as follows:

$$
\begin{array}{l} \frac {\partial F}{\partial t} = - k S _ {t} e ^ {k \tau}, \\ \frac {\partial F}{\partial S} = e ^ {k \tau}, \text {a n d} \\ \frac {\partial^ {2} F}{\partial S ^ {2}} = 0. \\ \end{array}
$$

Substituting these results, we have

$$
\begin{array}{l} d F _ {t} = \left[ - k S _ {t} e ^ {k \tau} + e ^ {k \tau} \alpha S _ {t} + \frac {1}{2} (0) \sigma^ {2} S _ {t} ^ {2} \right] d t + e ^ {k \tau} \sigma S _ {t} d W _ {t} \\ = (\alpha - k) F _ {t} d t + \sigma F _ {t} d W _ {t}. \\ \end{array}
$$

Therefore, if the underlying instrument price can be modeled with geometric Brownian motion, then this instrument is also geometric Brownian motion with an adjusted drift term and identical relative volatility.

Interestingly, if we modeled the underlying instrument as arithmetic Brownian motion with geometric drift or  $dS_{t} = \alpha S_{t}dt + \sigma dW_{t}$ , then we have

$$
\begin{array}{l} d F _ {t} = \left[ - k S _ {t} e ^ {k \tau} + e ^ {k \tau} \alpha S _ {t} + \frac {1}{2} (0) \sigma^ {2} \right] d t + e ^ {k \tau} \sigma d W _ {t} \\ = (\alpha - k) F _ {t} d t + e ^ {k \tau} \sigma d W _ {t}. \\ \end{array}
$$

Note that the volatility term here is an absolute measure, such as currency units, rather than a relative measure such as percentage. In this case, the instrument price is also arithmetic Brownian motion with an adjusted drift term. The absolute volatility is growing when  $k > 0$ . We will return to explore arithmetic Brownian motion in more detail in Chapters 12 and 13.

# 11.3 ITO'S INTEGRAL

In addition, Ito's lemma can be expressed in integral form. Let us restate the problem. We are given a random variable  $x_{t}$  that follows the stochastic process:

$$
d x _ {t} = \mu (x, t) d t + \sigma (x, t) d W _ {t}, \tag {11.13}
$$

where we have subscripted  $t$  on  $x$  to reinforce the point that  $x$  can take on different values at different times  $t$ , depending on the evolution of  $W_{t}$  through time. Applying Ito's lemma to the function,  $F(x,t)$ , we obtain

$$
d F \left(x _ {t}, t\right) = \frac {\partial F}{\partial t} d t + \frac {\partial F}{\partial x _ {t}} d x _ {t} + \frac {1}{2} \frac {\partial^ {2} F}{\partial x _ {t} ^ {2}} d x _ {t} ^ {2}. \tag {11.14}
$$

Now suppose we integrate over the period from time 0 to time  $t$ , an operation called stochastic integration, which is not the same as standard or non-stochastic integration. The latter is done by dividing the area under a curve into rectangles. The area under the curve is approximately the sum of the areas of each of the rectangles. As the number of rectangles goes to infinity, the sum of the areas of the rectangles approaches the area under the curve. Alternatively, standard integration can be viewed as adding up all of the infinitesimally small values  $dX / dt$  across values of  $t$ . Consequently, the derivative must be defined for all values of  $t$ . This type of standard integration is called a Riemann integration.

In a stochastic function, however, a derivative such as  $dx_{t} / dt$  is not defined. To put it somewhat roughly, the zig-zaggedness of  $x_{t}$  renders it impossible for the slope of a tangent line at any point to have a finite limit, which is a requirement for a derivative to exist. It is possible, however, to integrate a stochastic function by defining integration somewhat differently. Instead of being the limit of the area under each rectangle under the curve, a stochastic integral is defined as the mean square limit, meaning somewhat loosely that the integral is the expected value of the sum of the squared product of the volatility times the change in the stochastic variable. Such a limit will exist for the processes we typically encounter in finance. In this sense, a stochastic integral is much more like a volatility measure. More formally, the stochastic integral known as the Ito integral can be expressed as

$$
\int_ {0} ^ {t} \sigma (x _ {j}, t) d x _ {j}, \tag {11.15}
$$

and in limit form is the following,

$$
\lim  _ {n \rightarrow \infty} E \left[ \sum_ {k = 1} ^ {n} \sigma (x _ {k - 1}, k) (x _ {k} - x _ {k - 1}) \right]. \tag {11.16}
$$

The mean squared difference is then zero,

$$
\lim  _ {n \rightarrow \infty} E \left[ \sum_ {k = 1} ^ {n} \sigma (x _ {k - 1}, k) (x _ {k} - x _ {k - 1}) - \int_ {0} ^ {t} \sigma (x _ {j}, j) d x _ {j} \right] ^ {2} = 0. \tag {11.17}
$$

Remember that in the ordinary integral, the analogous expression is that the limit of the area of the rectangles equals the integral. For a stochastic integral, we must define this notion a little differently, in terms of expectations of squared differences.

Conveniently, some of the properties of ordinary integration are consistent with stochastic integration. For example, by definition,

$$
\int_ {0} ^ {t} d x _ {j} = x _ {t} - x _ {0}. \tag {11.18}
$$

In other words, whether  $x$  is stochastic or not, the sum of the changes in  $x$  from  $x_0$  to  $x_t$  is, by definition,  $x_t - x_0$ . In the special case where the volatility is constant, that is,  $\sigma_{x,t} = \sigma$  for all  $t$ , we can pull the constant out and obtain

$$
\int_ {0} ^ {t} \sigma d x _ {j} = \sigma \left(x _ {t} - x _ {0}\right). \tag {11.19}
$$

# 11.4 THE INTEGRAL FORM OF ITô'S LEMMA

Now let us develop Ito's lemma in integral form. Using stochastic integration applied to Equation (11.14), we have

$$
\int_ {0} ^ {t} d F = \int_ {0} ^ {t} \frac {\partial F}{\partial j} d j + \int_ {0} ^ {t} \frac {\partial F}{\partial x _ {j}} d x _ {j} + \int_ {0} ^ {t} \frac {1}{2} \frac {\partial^ {2} F}{\partial x _ {j} ^ {2}} d x _ {j} ^ {2}. \tag {11.20}
$$

This equation looks like it is going to be a problem because of the term  $dx_{j}^{2}$ . In standard integration, we would see the term  $dx_{j}$  but not  $dx_{j}^{2}$ . So how do we handle this? We have previously noted that  $dx_{t}^{2} = \sigma (x,t)^{2}dt$ . Using that result and combining terms gives

$$
F _ {t} - F _ {0} = \int_ {0} ^ {t} \left[ \frac {\partial F}{\partial j} + \frac {1}{2} \frac {\partial^ {2} F}{\partial x _ {j} ^ {2}} \sigma^ {2} (x _ {j}, j) \right] d j + \int_ {0} ^ {t} \frac {\partial F}{\partial x _ {j}} d x _ {j}, \tag {11.21}
$$

which is Ito's lemma in integral formula and is sometimes called Ito's stochastic integral. Remember that either the differential or integral version of Ito's lemma automatically implies that the other exists, so either can be used, and in some cases, one is preferred over the other.

In Appendix 11A, we review several generalized stochastic integration results. Many of these results are useful when solving various financial problems with stochastic calculus. We turn now to additional applications of Ito's lemma.

# 11.5 SOME ADDITIONAL CASES OF ITU'S LEMMA

Let us look at two more cases of Ito's lemma. First, we look at the case where our random process is a function of not one but two random processes,  $x$  and  $y$ . An example of this situation might be a currency option, whereby the performance is determined by the exchange rate and an interest rate. Alternatively, there are options that pay off based on the greater or poorer performing of two assets that are stochastic.

So let  $x$  and  $y$  follow stochastic differential equations driven by Ito processes. For now, we do not have to specify those processes precisely. Consider a function  $F$  determined by  $x, y,$  and  $t$ . Applying Ito's lemma to F, we obtain

$$
d F = \frac {\partial F}{\partial x} d x + \frac {\partial F}{\partial y} d y + \frac {\partial F}{\partial t} d t + \frac {1}{2} \frac {\partial^ {2} F}{\partial x ^ {2}} d x ^ {2} + \frac {1}{2} \frac {\partial^ {2} F}{\partial y ^ {2}} d y ^ {2} + \frac {\partial^ {2} F}{\partial x \partial y} d x d y. \tag {11.22}
$$

Depending on the specifications of  $dx$  and  $dy$ , we may be able to simplify this expression further. Note that there is no interaction term with  $dx$  and  $dt$  or with  $dy$  and  $dt$  as these will go to zero by the product of  $dx$  and  $dW$  and the product of  $dy$  and  $dW$ . To take this equation further, we have to specify the processes describing  $x$  and  $y$ .

So now consider two processes,  $dx$  and  $dy$ , both with different but constant parameters and the same Brownian motion,

$$
d x = \mu_ {x} d t + \sigma_ {x} d W _ {t}
$$

$$
d y = \mu_ {y} d t + \sigma_ {y} d W _ {t}. \tag {11.23}
$$

Now consider another process,  $z$ , defined as the product of  $x$  and  $y$ . Products can occur in finance where the price of an asset is multiplied by an exchange rate or the quantity is multiplied by price:

$$
z = x y. \tag {11.24}
$$

We need to identify the stochastic process for  $dz$ . Applying Ito's lemma we obtain:

$$
d z = \frac {\partial z}{\partial x} d x + \frac {\partial z}{\partial y} d y + \frac {1}{2} \frac {\partial^ {2} z}{\partial x ^ {2}} d x ^ {2} + \frac {1}{2} \frac {\partial^ {2} z}{\partial y ^ {2}} d y ^ {2} + \frac {\partial^ {2} z}{\partial x \partial y} d x d y. \tag {11.25}
$$

Because  $z$  is a very simple function of  $x$  and  $y$ , the partial derivatives in the above expression are easily obtained from Equation (11.24),

$$
\frac {\partial z}{\partial x} = y, \quad \frac {\partial z}{\partial y} = x, \quad \frac {\partial^ {2} z}{\partial x ^ {2}} = 0,
$$

$$
\frac {\partial^ {2} z}{\partial y ^ {2}} = 0, \quad \frac {\partial^ {2} z}{\partial x \partial y} = \frac {\partial}{\partial x} \left(\frac {\partial z}{\partial y}\right) = \frac {\partial}{\partial y} \left(\frac {\partial z}{\partial x}\right) = 1. \tag {11.26}
$$

Thus, simplifying equation (11.25) to

$$
d z = y d x + x d y + d x d y.
$$

Now let us examine  $dxdy$ . First, we show that the variance of  $dxdy = 0$ . Using the fact that  $dt^k \to 0$  for  $k > 1$ , we have that

$$
\begin{array}{l} \operatorname {v a r} (d x d y) = \operatorname {v a r} \left[ \left(\mu_ {x} d t + \sigma_ {x} d W _ {t}\right) \left(\mu_ {y} d t + \sigma_ {y} d W _ {t}\right) \right] \\ = \mathrm {v a r} \big (\mu_ {x} d t \mu_ {y} d t + \mu_ {x} d t \sigma_ {y} d W _ {t} + \mu_ {y} d t \sigma_ {x} d W _ {t} + \sigma_ {x} d W _ {t} \sigma_ {y} d W _ {t} \big) \\ = 0. \tag {11.27} \\ \end{array}
$$

Working term by term, the first term has  $dt^2 \to 0$ . The next two terms involving  $dtdW_t \to 0$ , because  $dW_t$  has the square root of  $dt$  in it and that means that  $dt$  is raised to the power  $3/2$ . Finally, recall that earlier we had  $\operatorname{var}\left(dW_t^2\right) = \operatorname{var}\left(\varepsilon_t^2 dt\right) = dt^2 \operatorname{var}\left(\varepsilon_t^2\right) = 0$ . Now, if  $\operatorname{var}(dxdy) = 0$ , then  $dxdy = E(dxdy)$ , which means that  $dxdy$  is almost surely constant. Using the facts that  $dW_t^2 = \varepsilon_t^2 dt$ ,  $dt^{k} \to 0$  for  $k > 1$ , and  $E\left(\varepsilon_t^2\right) = 1$ , we show that  $dxdy = \sigma_x \sigma_y dt$  as follows:

$$
\begin{array}{l} E (d x d y) = E \Big [ \big (\mu_ {x} d t + \sigma_ {x} d W _ {t} \big) \big (\mu_ {y} d t + \sigma_ {y} d W _ {t} \big) \Big ] \\ = E \left(\mu_ {x} d t \mu_ {y} d t + \mu_ {x} d t \sigma_ {y} d W _ {t} + \mu_ {y} d t \sigma_ {x} d W _ {t} + \sigma_ {x} d W _ {t} \sigma_ {y} d W _ {t}\right) \\ = E \left(\sigma_ {x} d W _ {t} \sigma_ {y} d W _ {t}\right) = \sigma_ {x} \sigma_ {y} E \left(d W _ {t} ^ {2}\right) = \sigma_ {x} \sigma_ {y} d t = d x d y. \tag {11.28} \\ \end{array}
$$

Substituting this result into Equation (11.25), we obtain

$$
d z = y d x + x d y + \sigma_ {x} \sigma_ {y} d t. \tag {11.29}
$$

Now let us assume the two processes,  $dx$  and  $dy$ , are driven by different Wiener processes,  $dW_{t}$  and  $dQ_{t}$ :

$$
d W _ {t} = \varepsilon_ {\mathrm {W}, t} \sqrt {d t}
$$

$$
d Q _ {t} = \varepsilon_ {Q, t} \sqrt {d t}. \tag {11.30}
$$

Note the additional subscript for clarity. These processes could be independent, or they could be correlated. Let us start with the general case of a nonzero correlation, so let  $\rho_{\mathbb{W},Q}$  be the correlation between the  $d\mathrm{W}_t$  and  $d\mathcal{Q}_t$ .

Now let us specify the processes for  $x$  and  $y$ , as driven by  $dW_{t}$  and  $dQ_{t}$ .

$$
d x = \mu_ {x} d t + \sigma_ {x} d W _ {t}
$$

$$
d y = \mu_ {y} d t + \sigma_ {y} d Q _ {t}. \tag {11.31}
$$

Recall that we are interested in  $z$ , the product of  $x$  and  $y$ . We found the total differential of  $z$  as Equation (11.25) and we obtained the partial derivatives in Equation (11.26). Therefore,  $dz$  is given as

$$
\begin{array}{l} d z = x d y + y d z + d x d y = x d y + y d x + \left(\mu_ {x} d t + \sigma_ {x} d W _ {t}\right) \left(\mu_ {y} d t + \sigma_ {y} d Q _ {t}\right) \\ = x d y + y d x + \mu_ {x} \mu_ {y} d t ^ {2} + \mu_ {y} \sigma_ {x} d W _ {t} d t + \mu_ {x} \sigma_ {y} d t d Q + \sigma_ {x} \sigma_ {y} d W _ {t} d Q _ {t} \\ = x d y + y d x + \sigma_ {x} \sigma_ {y} d W _ {t} d Q _ {t}. \tag {11.32} \\ \end{array}
$$

Notice in deriving this equation that the terms  $dt^2$ ,  $dW_t dt$ , and  $dQ_t dt$  go to zero because they all involve powers of  $dt$  greater than 1. Now let us examine the  $dW_t dQ_t$  term. We start by taking the variance of  $dW_t dQ_t$ . We have

$$
\operatorname {v a r} \left(d W _ {t} d Q _ {t}\right) = \varepsilon_ {\mathrm {W}, t} \sqrt {d t} \varepsilon_ {Q, t} \sqrt {d t} = \operatorname {v a r} \left(d t \varepsilon_ {\mathrm {W}, t} \varepsilon_ {Q, t}\right) = d t ^ {2} \operatorname {v a r} \left(\varepsilon_ {\mathrm {W}, t} \varepsilon_ {Q, t}\right) = 0. \tag {11.33}
$$

The zero variance means that  $dW_{t}dQ_{t} = E\big(dW_{t}dQ_{t}\big)$ , and so we evaluate  $E\big(dW_{t}dQ_{t}\big)$ . We can obtain this result by making use of the definition of covariance and correlation. Note the first line here is the correlation times the product of the standard deviations of the two processes  $(dt)$  and the second line is the definition of correlation. Thus,

$$
\begin{array}{l} \operatorname {c o v} (d \mathrm {W}, d Q) = d t \rho (d \mathrm {W}, d Q) \\ = E \left(d W _ {t} d Q _ {t}\right) - E \left(d W _ {t}\right) E \left(d Q _ {t}\right) \\ = E \left(d W _ {t} d Q _ {t}\right). \tag {11.34} \\ \end{array}
$$

Hence,

$$
E \left(d W _ {t} d Q _ {t}\right) = d W _ {t} d Q _ {t} = \rho (d W, d Q) d t. \tag {11.35}
$$

Thus,

$$
d z = y d x + x d y + \sigma_ {x} \sigma_ {y} \rho (d W, d Q) d t. \tag {11.36}
$$

We can do one more thing to make this result a bit cleaner. Note that the correlation is expressed in terms of  $dW$  and  $dQ$  but the other terms are expressed in terms of  $x$  and  $y$ . We know that  $\rho_{dW dQ} = \mathrm{cov}(dW, dQ) / \sigma_{dW} \sigma_{dQ}$ . We also know from Equation (11.30) that the standard deviations of  $dW_t$  and  $dQ_t$  are each the square root of  $dt$ . Thus,  $\sigma_{dW} \sigma_{dQ} = dt$ , and,  $\rho(dW, dQ) dt = \mathrm{cov}(dW, dQ)$ . We also know that  $\rho(dx, dy) = \mathrm{cov}(dx, dy) / \sigma_{dx} \sigma_{dy}$ . Using Equation (11.31),  $\mathrm{cov}(dx, dy) = \sigma_{dx} \sigma_{dy} \mathrm{cov}(dW, dQ) = \rho(dW, dQ) dt$ . Then  $\mathrm{cov}(dW, dQ) = \rho(dW, dQ) dt / \sigma_{dW} \sigma_{dQ}$ . Substituting into Equation (11.36),

$$
d z = y d x + x d y + \rho (x, y) d t. \tag {11.37}
$$

Of course, if these are independent Brownian motions, the correlation term disappears.

# 11.6 RECAP AND PREVIEW

In this chapter, we presented the concept of Itô's lemma, which is a specification roughly analogous to a Taylor series, but which applies to stochastic processes. Itô's lemma enables us to explain how the change in one variable is related to the changes in other variables. We also showed how Itô's lemma can be expressed in terms of a stochastic integral, and we showed how a stochastic integral differs from the standard integrals with which we are familiar from standard math. The information from this chapter will be needed to derive the Black-Scholes-Merton model.

In Chapter 12, we shall look at some other properties of the normal and lognormal diffusion process that will be necessary in order to complete the foundations of the

Black-Scholes-Merton model. After that point, we shall finally be able to dive into the derivation of the model.

# APPENDIX 11A

# Technical Stochastic Integral Results

# 11A.1 Selected Stochastic Integral Results

Before proceeding, it is important to recall from the definition of a Wiener process, we know

$$
d W _ {t} = \varepsilon_ {t} \sqrt {d t}. \tag {11.38}
$$

Recall the definition of an Itô integral found in Equation (11.16) can be represented here as

$$
\int_ {0} ^ {t} d W _ {t} = \sum_ {k = 1} ^ {n} \left(W _ {k} - W _ {k - 1}\right): n \rightarrow \infty (h \rightarrow 0), \tag {11.39}
$$

where  $(0, t)$  is partitioned into intervals of equal length  $h$ , where  $t = nb$ .

Wiener Integration Theorem

If

$$
f _ {t} = \int_ {0} ^ {t} d W _ {j} \tag {11.40}
$$

then

$$
f _ {t} = \int_ {0} ^ {t} d W _ {j} \stackrel {d} {=} \tilde {\varepsilon} \sqrt {d t} (\text {e q u a l i n d i s t r i b u t i o n}), \tag {11.41}
$$

where  $\tilde{\varepsilon}$  denotes a standard normal random variable and  $\stackrel{d}{=}$  denotes equal in distribution.

Proof: Within this proof, we demonstrate that  $f_{t}$  is equal in distribution to a standard normal random variable times the square root of time. We know  $dW$  is distributed normal and the sum of independent normals is normal. Thus, we focus on the first two moments of the distribution. Recall

$$
f _ {t} = \int_ {0} ^ {t} d W _ {j} \equiv \lim _ {n \to \infty} \sum_ {i = 1} ^ {n} \left(W _ {i} - W _ {i - 1}\right),
$$

where  $n = bt$  and  $h$  is equally spaced time steps. Taking the expected value,

$$
E \big (f _ {t} \big) = E \left(\lim _ {n \to \infty} \sum_ {i = 1} ^ {n} \big (\mathrm {W} _ {i} - \mathrm {W} _ {i - 1} \big)\right) = \lim _ {n \to \infty} \sum_ {i = 1} ^ {n} E \big [ \big (\mathrm {W} _ {i} - \mathrm {W} _ {i - 1} \big) \big ] = 0.
$$

Thus, the first moment is zero. We now turn to the second moment. The expected value of the square,

$$
\begin{array}{l} E (f _ {t} ^ {2}) = E \left(\int_ {\tau = 0} ^ {\tau = t} d W _ {\tau} \int_ {\tau = 0} ^ {\tau = t} d W _ {\tau}\right) \\ = E \left[\left(\lim  _ {n \rightarrow \infty} \sum_ {i = 1} ^ {n} \left(W _ {i} - W _ {i - 1}\right)\right)\left(\lim  _ {n \rightarrow \infty} \sum_ {j = 1} ^ {n} \left(W _ {j} - W _ {j - 1}\right)\right)\right] \\ = \lim  _ {n \rightarrow \infty} \sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} E \left[\left(W _ {i} - W _ {i - 1}\right)\right]\left(W _ {j} - W _ {j - 1}\right). \\ \end{array}
$$

Note that the covariance is zero when  $i \neq j$ ,

$$
\begin{array}{l} E\Big(f_{t}^{2}\Big) = \lim_{n\to \infty}\left\{ \begin{array}{l}\sum_{i = 1}^{n}E\Big[\big(W_{i} - W_{i - 1}\big)^{2}\Big]\\ +\sum_{i = 1}^{n}\sum_{\substack{j = 1\\ j\neq 1}}^{n}E\big[\big(W_{i} - W_{i - 1}\big)\big(W_{j} - W_{j - 1}\big)\big] \end{array} \right\} \\ = \lim _ {n \to \infty} \left\{\sum_ {i = 1} ^ {n} E \Big [ \big (W _ {i} - W _ {i - 1} \big) ^ {2} \Big ] \right\} \\ = \lim _ {n \to \infty} \left\{\sum_ {i = 1} ^ {n} E \big [ (t _ {i} - t _ {i - 1}) \big ] \right\} = \int_ {0} ^ {t} d j = t. \\ \end{array}
$$

Therefore,

$$
f _ {t} = \int_ {0} ^ {t} d W _ {j} \stackrel {{d}} {{=}} \tilde {\varepsilon} \sqrt {\int_ {0} ^ {t} d j} = \tilde {\varepsilon} \sqrt {t},
$$

where  $\tilde{\varepsilon}$  denotes a standard normal random variable and  $\stackrel{d}{=}$  denotes equal in distribution.

We will apply this observation several times in the next few subsections. Throughout this material, we assume any required derivative of generic functions exists and is finite. Often, a financial application will require time-varying parameters. For example, an investor may believe that volatility will generally increase for a particular stock over the next year. The results presented next allow for time-varying parameters but not state-varying parameters. That is, the parameters are independent of the asset price.

# 11A.1.1 Time Functions of a Normally Distributed Process Lemma

If  $g(t)$  is a function solely of calendar time and we have a function defined as

$$
f _ {t} \equiv \int_ {0} ^ {t} g (j) d W _ {j}, \tag {11.42}
$$

then

$$
f _ {t} = \sqrt {\frac {\int_ {0} ^ {t} g ^ {2} (j) d j}{t}} \int_ {0} ^ {t} d W _ {j} = \tilde {\varepsilon} \sqrt {\int_ {0} ^ {t} g ^ {2} (j) d j}. \tag {11.43}
$$

Proof: From the definition of stochastic integration, we have

$$
f _ {t} = \int_ {0} ^ {t} g (j) d W _ {j} \equiv \lim  _ {n \rightarrow \infty} \sum_ {i = 1} ^ {n} g \left(t _ {i - 1}\right)\left(W _ {i} - W _ {i - 1}\right), \tag {11.44}
$$

where  $n = bt$  and  $h$  represents spaced time steps. Taking the expected value, we have

$$
E \left(f _ {t}\right) = E \left(\lim  _ {n \rightarrow \infty} \sum_ {i = 1} ^ {n} g \left(t _ {i - 1}\right)\left(W _ {i} - W _ {i - 1}\right)\right) = \lim  _ {n \rightarrow \infty} \sum_ {i = 1} ^ {n} g \left(t _ {i - 1}\right) E \left[\left(W _ {i} - W _ {i - 1}\right)\right] = 0. \tag {11.45}
$$

The expected value of the square,

$$
\begin{array}{l} E \left(f _ {t} ^ {2}\right) = E \left(\int_ {0} ^ {t} g (j) d W _ {j} \int_ {0} ^ {t} g (j) d W _ {j}\right) \\ = E \left[ \left(\lim _ {n \to \infty} \sum_ {i = 1} ^ {n} g (t _ {i - 1}) (\mathrm {W} _ {i} - \mathrm {W} _ {i - 1})\right) \left(\lim _ {n \to \infty} \sum_ {j = 1} ^ {n} g (t _ {i - 1}) (\mathrm {W} _ {j} - \mathrm {W} _ {j - 1})\right) \right] \\ = \lim  _ {n \rightarrow \infty} \sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} E \left[ g \left(t _ {i - 1}\right)\left(W _ {i} - W _ {i - 1}\right) g \left(t _ {j - 1}\right)\left(W _ {j} - W _ {j - 1}\right)\right]. \tag {11.46} \\ \end{array}
$$

Note that the covariance is zero when  $i \neq j$ ,

$$
\begin{array}{l} E(f_{t}^{2}) = \lim_{n\to \infty}\left[ \begin{array}{l}\sum_{i = 1}^{n}E\Big[g^{2}\big(t_{i - 1}\big)\big(W_{i} - W_{i - 1}\big)^{2}\Big]\\ +\sum_{i = 1}^{n}\sum_{\substack{j = 1\\ j\neq 1}}^{n}E\big[g\big(t_{i - 1}\big)\big(W_{i} - W_{i - 1}\big)g\big(t_{j - 1}\big)\big(W_{j} - W_{j - 1}\big)\big] \end{array} \right] \\ = \lim _ {n \to \infty} \left[ \sum_ {i = 1} ^ {n} E \Big [ g ^ {2} (t _ {i - 1}) (W _ {i} - W _ {i - 1}) ^ {2} \Big ] \right] \\ = \lim  _ {n \rightarrow \infty} \left[ \sum_ {i = 1} ^ {n} g ^ {2} \left(t _ {i - 1}\right)\left(t _ {i} - t _ {i - 1}\right)\right] = \int_ {0} ^ {t} g ^ {2} (j) d j. \tag {11.47} \\ \end{array}
$$

Therefore,

$$
f _ {t} = \int_ {0} ^ {t} g (j) d W _ {j} = \sqrt {\frac {\int_ {0} ^ {t} g ^ {2} (j) d j}{t}} \int_ {0} ^ {t} d W _ {j} = \tilde {\varepsilon} \sqrt {\int_ {0} ^ {t} g ^ {2} (j) d j}. \tag {11.48}
$$

Based on this result, we note the mean and variance of this function are simply

$$
E \left(f _ {t}\right) = E (\tilde {\varepsilon}) \sigma \sqrt {\int_ {0} ^ {t} g ^ {2} (j) d j} = 0 \text {a n d} \tag {11.49}
$$

$$
\operatorname {v a r} \left(f _ {t}\right) = E \left(\tilde {\varepsilon} ^ {2}\right) \int_ {0} ^ {t} g ^ {2} (j) d j = \int_ {0} ^ {t} g ^ {2} (j) d j. \tag {11.50}
$$

We illustrate one application of this lemma. Suppose we wish to model the underlying instrument based on arithmetic Brownian motion with geometric drift. Specifically, suppose the underlying instrument is modeled as

$$
d S _ {t} = \alpha_ {t} S _ {t} d t + \sigma_ {t} d W _ {t}. \tag {11.51}
$$

In this case, we may have time varying geometric drift as well as time varying absolute volatility. Recall in a prior example where  $F_{t} = S_{t}e^{k\tau}$ , we found

$$
d F _ {t} = (\alpha - k) F _ {t} d t + e ^ {k \tau} \sigma d W _ {t}. \tag {11.52}
$$

Based on the previous lemma, let us focus solely on the noise term. Thus,  $g(j) = \sigma e^{k(T - j)}$ . The stochastic integral,

$$
f _ {T} = \int_ {0} ^ {T} g (j) d \mathrm {W} _ {j} = \int_ {0} ^ {T} \sigma e ^ {k (T - j)} d \mathrm {W} _ {j},
$$

can be represented as

$$
f _ {T} = \sigma \sqrt {\frac {\int_ {0} ^ {T} e ^ {2 k (T - j)} d j}{T}} \int_ {0} ^ {T} d \mathrm {W} _ {j} = \tilde {\varepsilon} \sigma \sqrt {\int_ {0} ^ {T} e ^ {2 k (T - j)} d j}.
$$

The solution to the standard integral is

$$
\begin{array}{l} \int_ {0} ^ {T} e ^ {2 k (T - j)} d j = e ^ {2 k (T)} \int_ {0} ^ {T} e ^ {- 2 k (j)} d j = e ^ {2 k (T)} \left[ \frac {e ^ {- 2 k (j)}}{- 2 k} \Big | _ {j = 0} ^ {j = T} \right] \\ = e ^ {2 k (T)} \left(\frac {e ^ {- 2 k (T)} - 1}{- 2 k}\right) = \frac {e ^ {2 k (T)} - 1}{2 k}. \\ \end{array}
$$

Thus, in this case, absolute volatility has an adjustment factor addressing the assumed underlying growth rate. Based on this result, we note the mean and variance of this function are

$$
\begin{array}{l} E\big(f_{T}\big) = E(\tilde{\varepsilon})\sigma \sqrt{\intop_{\substack{0\\ T}}^{T}e^{2k(T - j)}d j} = 0\text{and} \\ \operatorname {v a r} \left(f _ {T}\right) = E (\bar {\varepsilon} ^ {2}) \sigma^ {2} \int_ {0} e ^ {2 k (T - j)} d j = \sigma^ {2} \left(\frac {e ^ {2 k (T)} - 1}{2 k}\right). \\ \end{array}
$$

# 11A.1.2 Time Functions of a Lognormally Distributed Process Lemma

Again, if  $g(t)$  is a function solely of calendar time and we have a function defined as

$$
b _ {t} \equiv e ^ {\int_ {0} ^ {t} g (j) d W _ {j}}, \tag {11.53}
$$

then

$$
b _ {t} = e ^ {f _ {t}} = e ^ {\sqrt {\frac {\int_ {0} ^ {t} g ^ {2} (j) d j}{t}} \int_ {0} ^ {t} d W _ {j}}} = e ^ {\tilde {\varepsilon} \sqrt {\int_ {0} ^ {t} g ^ {2} (j) d j}}. \tag {11.54}
$$

Proof: Based directly on the previous lemma.

In this case, the mean and variance are based on properties of the lognormal distribution. Thus,

$$
E \big (h _ {t} \big) = e ^ {\frac {\int_ {0} ^ {t} g ^ {2} (j) d j}{2}} \text {a n d}
$$

$$
\operatorname {v a r} \left(h _ {t}\right) = E \left(h _ {t} ^ {2}\right) - E \left(h _ {t}\right) ^ {2} = \mathrm {e} ^ {\int_ {0} ^ {t} g ^ {2} (j) d j} - e ^ {\int_ {0} ^ {t} g ^ {2} (j) d j} = e ^ {\int_ {0} ^ {t} g ^ {2} (j) d j} \left(e ^ {\int_ {0} ^ {t} g ^ {2} (j) d j} - 1\right).
$$

# 11A.2 A General Linear Theorem

Mikosch (1998) provides an elegant introduction to stochastic calculus with a finance focus. On page 150 and following, he provides an extremely useful as well as powerful result. We review this result expressed here as a theorem. We follow the theorem with several useful finance applications that also rely on the stochastic integration results of the previous section.

# 11A.2.1 Mikosch's General Linear Theorem

Consider a generic linear stochastic integral of the form

$$
x _ {t} = x _ {0} + \int_ {0} ^ {t} \left[ \mu_ {1} (j) x _ {j} + \mu_ {2} (j) \right] d j + \int_ {0} ^ {t} \left[ \sigma_ {1} (j) x _ {j} + \sigma_ {2} (j) \right] d W _ {j} \tag {11.55}
$$

or expressed in stochastic differential form as

$$
d x _ {t} = \left[ \mu_ {1} (t) x _ {t} + \mu_ {2} (t) \right] d t + \left[ \sigma_ {1} (t) x _ {t} + \sigma_ {2} (t) \right] d W _ {t}, \tag {11.56}
$$

where  $\mu_1, \mu_2, \sigma_1, \sigma_2$  are deterministic continuous coefficient functions,  $t \in [0, T]$  (bounded). Let

$$
y _ {t} \equiv \mathrm {e} ^ {\int_ {0} ^ {t} \left[ \mu_ {1} (j) - \frac {\sigma_ {1} ^ {2} (j)}{2} \right] d j + \int_ {0} ^ {t} \sigma_ {1} (j) d W _ {j}}, \tag {11.57}
$$

then

$$
x _ {t} = y _ {t} \left(x _ {0} + \int_ {0} ^ {t} \frac {\left[ \mu_ {2} (j) - \sigma_ {1} (j) \sigma_ {2} (j) \right]}{y _ {j}} d j + \int_ {0} ^ {t} \frac {\sigma_ {2} (j)}{y _ {j}} d W _ {j}\right). \tag {11.58}
$$

Proof: See Mikosch (1998).

In most finance cases, either  $\sigma_{1}(j) = 0$  or  $\sigma_{2}(j) = 0$ , but not both. When  $\sigma_{1}(j) > 0$  and  $\sigma_{2}(j) = 0$ , the process is termed linear multiplicative noise. Recall that the binomial process was modeled through a multiplicative process  $(S_{0}u^{j}d^{n - j})$ . When  $\sigma_{1}(j) = 0$  and  $\sigma_{2}(j) > 0$ , the process is termed linear additive noise. In this case, the binomial process would be modeled through an additive process  $[S_0 + ju + (n - j)d]$ .

Although we would be interested in the  $E(x_{t})$  and  $\mathrm{var}(x_t)$ , the solution for these parameters is a bit tedious for Mikosch's general linear theorem. Thus, we introduce two lemmas that are more straightforward. With the combination of the previous stochastic integration results as well as this theorem, we illustrate several important finance applications.

# 11A.2.2 Linear Additive Noise Lemma

Consider an underlying instrument that is linear with an additive noise term implying a terminal normal distribution. That is, the generic stochastic integral representation is

$$
S _ {t} = S _ {0} + \int_ {0} ^ {t} \left[ \mu_ {1} (j) S _ {j} + \mu_ {2} (j) \right] d j + \int_ {0} ^ {t} \sigma_ {2} (j) d W _ {j}, \tag {11.59}
$$

or the generic stochastic differential representation is

$$
d S _ {t} = \left[ \mu_ {1} (t) S _ {t} + \mu_ {2} (t) \right] d t + \sigma_ {2} (t) d W _ {t}. \tag {11.60}
$$

From the general linear theorem, we have

$$
y _ {t} \equiv e ^ {\int_ {0} ^ {t} \mu_ {1} (j) d j} \tag {11.61}
$$

and

$$
S _ {t} = y _ {t} \left[ S _ {0} + \int_ {0} ^ {t} \frac {\mu_ {2} (j)}{y _ {j}} d j + \int_ {0} ^ {t} \frac {\sigma_ {2} (j)}{y _ {j}} d W _ {j} \right]. \tag {11.62}
$$

The mean and variance can be expressed as

$$
E \left(S _ {t}\right) = S _ {0} e ^ {\int_ {0} ^ {t} \mu_ {1} (j) d j} + \int_ {0} ^ {t} \mu_ {2} (j) \exp \left\{\int_ {j} ^ {t} \mu_ {1} (k) d k \right\} d j \text {a n d} \tag {11.63}
$$

$$
\operatorname {v a r} \left(S _ {t}\right) = \int_ {0} ^ {t} \sigma_ {2} ^ {2} (j) \exp \left\{2 \int_ {j} ^ {t} \mu_ {1} (k) d k \right\} d j. \tag {11.64}
$$

For example, consider arithmetic Brownian motion with additive drift. Thus,  $\mu_1(j) = 0$ ,  $\mu_2(j) = \mu_2$ ,  $\sigma_1(j) = 0$ , and  $\sigma_2(j) = \sigma_2$ . Thus,  $dS_{t} = \mu_{2}dt + \sigma_{2}dW_{t}$ . Based on the linear additive noise lemma, we have

$$
y _ {t} = e ^ {\int_ {0} ^ {t} \mu_ {1} (j) d j} = e ^ {0} = 1 \tag {11.65}
$$

and

$$
S _ {t} = y _ {t} \left[ S _ {0} + \int_ {0} ^ {t} \frac {\mu_ {2} (j)}{y _ {j}} d j + \int_ {0} ^ {t} \frac {\sigma_ {2} (j)}{y _ {j}} d W _ {j} \right] = S _ {0} + \mu_ {2} t + \sigma_ {2} \int_ {0} ^ {t} d W _ {j}. \tag {11.66}
$$

Thus, the expected value and variance for underlying instruments that follow arithmetic Brownian motion with additive drift is

$$
E \left(S _ {t}\right) = S _ {0} + \mu_ {2} t + \sigma_ {2} E \left(\int_ {0} ^ {t} d W _ {j}\right) = S _ {0} + \mu_ {2} t \text {a n d} \tag {11.67}
$$

$$
\operatorname {v a r} \left(S _ {t}\right) = \sigma_ {2} ^ {2} t. \tag {11.68}
$$

Now consider arithmetic Brownian motion with geometric drift. Thus,  $\mu_1(j) = \mu_1$ ,  $\mu_2(j) = 0$ ,  $\sigma_1(j) = 0$ , and  $\sigma_2(j) = \sigma_2$ . Thus,  $dS_{t} = \mu_{1}S_{t}dt + \sigma_{2}dW_{t}$ . Based on the linear additive noise lemma, we have

$$
y _ {t} \equiv e ^ {\int_ {0} ^ {t} \mu_ {1} d j} = e ^ {\mu_ {1} t} \tag {11.69}
$$

and

$$
S _ {t} = y _ {t} \left(S _ {0} + \int_ {0} ^ {t} \frac {\sigma_ {2}}{y _ {j}} d W _ {j}\right) = e ^ {\mu_ {1} t} \left(S _ {0} + \sigma_ {2} \int_ {0} ^ {t} e ^ {- \mu_ {1} j} d W _ {j}\right) = S _ {0} e ^ {\mu_ {1} t} + \sigma_ {2} \int_ {0} ^ {t} e ^ {\mu_ {1} (t - j)} d W _ {j}. \tag {11.70}
$$

From the time functions of a normally distributed process lemma, we have the expected value and variance for underlying instruments that follow arithmetic Brownian motion with geometric drift is

$$
E \left(S _ {t}\right) = S _ {0} e ^ {\mu_ {1} t} + \sigma_ {2} E \left[ \int_ {0} ^ {t} e ^ {\mu_ {1} (t - j)} d W _ {j} \right] = S _ {0} e ^ {\mu_ {1} t} \text {a n d} \tag {11.71}
$$

$$
\operatorname {v a r} \left(S _ {t}\right) = \sigma_ {2} ^ {2} \int_ {0} ^ {t} e ^ {2 \mu_ {1} (t - j)} d j = \sigma_ {2} ^ {2} \frac {e ^ {2 \mu_ {1} t} - 1}{2 \mu_ {1}}. \tag {11.72}
$$

We turn now to the multiplicative case.

# 11A.2.3 Linear Multiplicative Noise Lemma

Consider an underlying instrument that is linear with a multiplicative noise term implying the terminal distribution is lognormal. That is, the generic stochastic integral representation is

$$
S _ {t} = S _ {0} + \int_ {0} ^ {t} \left[ \mu_ {1} (j) S _ {j} + \mu_ {2} (j) \right] d j + \int_ {0} ^ {t} \sigma_ {1} (j) S _ {j} d W _ {j}, \tag {11.73}
$$

or the generic stochastic differential representation is

$$
d S _ {t} = \left[ \mu_ {1} (t) S _ {t} + \mu_ {2} (t) \right] d t + \sigma_ {1} (t) S _ {t} d W _ {t}. \tag {11.74}
$$

Then

$$
y _ {t} = e ^ {\int_ {0} ^ {t} \left[ \mu_ {1} (j) - \frac {\sigma_ {1} ^ {2} (j)}{2} \right] d j + \int_ {0} ^ {t} \sigma_ {1} (j) d W _ {j}} \tag {11.75}
$$

and

$$
S _ {t} = y _ {t} \left[ S _ {0} + \int_ {0} ^ {t} \frac {\mu_ {2} (j)}{y _ {j}} d j \right]. \tag {11.76}
$$

The mean and variance are bit more involved for the multiplicative case. Let

$$
A (a, b) \equiv e ^ {\int_ {a} ^ {b} \left[ \mu_ {1} (j) - \frac {\sigma_ {1} ^ {2} (j)}{2} \right] d j}. \tag {11.77}
$$

Therefore, we have

$$
E \left(S _ {t}\right) = S _ {0} A (0, t) e ^ {\frac {\int_ {0} ^ {t} \sigma_ {1} ^ {2} (k) d k}{2}} + \int_ {0} ^ {t} \mu_ {2} (j) A (j, t) e ^ {\frac {\int_ {j} ^ {t} \sigma_ {1} ^ {2} (k) d k}{2}} d j \text {a n d} \tag {11.78}
$$

$$
\begin{array}{l} E (S _ {t} ^ {2}) = S _ {0} ^ {2} A ^ {2} (0, t) e ^ {2 \int_ {0} ^ {t} \sigma_ {1} ^ {2} (k) d k} + 2 S _ {0} A (0, t) \int_ {0} ^ {t} \mu_ {2} (j) A (j, t) e ^ {2 \int_ {j} ^ {t} \sigma_ {1} ^ {2} (k) d k + \frac {\int_ {0} ^ {j} \sigma_ {1} ^ {2} (k) d k}{2}} d j \\ + \int_ {0} ^ {t} \int_ {0} ^ {j} \mu_ {2} (j) A (j, t) \mu_ {2} (k) A (k, t) e ^ {2 \int_ {j} ^ {t} \sigma_ {1} ^ {2} (m) d m + \frac {\int_ {k} ^ {j} \sigma_ {1} ^ {2} (m) d m}{2}} d k d j \\ + \int_ {0} ^ {t} \int_ {j} ^ {t} \mu_ {2} (j) A (j, t) \mu_ {2} (k) A (k, t) e ^ {2 \int_ {k} ^ {t} \sigma_ {1} ^ {2} (m) d m + \frac {\int_ {j} ^ {k} \sigma_ {1} ^ {2} (m) d m}{2}} d k d j. \tag {11.79} \\ \end{array}
$$

Thus, the variance is simply based on the definition of variance or

$$
\operatorname {v a r} \left(S _ {t}\right) \equiv E \left(S _ {t} ^ {2}\right) - \left[ E \left(S _ {t}\right) \right] ^ {2}, \tag {11.80}
$$

where these two moments are based on Equations (11.78) and (11.79).

Now consider arithmetic Brownian motion with geometric drift. Thus,  $\mu_1(j) = \mu_1$ ,  $\mu_2(j) = 0$ ,  $\sigma_1(j) = \sigma_1$ , and  $\sigma_2(j) = 0$ . Thus,  $dS_{t} = \mu_{1}S_{t}dt + \sigma_{1}S_{t}dW_{t}$ . Based on the linear additive noise lemma, we have

$$
y _ {t} \equiv e ^ {\int_ {0} ^ {t} \left(\mu_ {1} - \frac {\sigma_ {1} ^ {2}}{2}\right) d j + \int_ {0} ^ {t} \sigma_ {1} d W _ {j}} = e ^ {\left(\mu_ {1} - \frac {\sigma_ {1} ^ {2}}{2}\right) t + \sigma_ {1} \int_ {0} ^ {t} d W _ {j}} \tag {11.81}
$$

and

$$
S _ {t} = y _ {t} \left(S _ {0}\right) = S _ {0} e ^ {\left(\mu_ {1} - \frac {\sigma_ {1} ^ {2}}{2}\right) t + \sigma_ {1} \int_ {0} ^ {t} d W _ {j}}. \tag {11.82}
$$

From the time functions of a lognormally distributed process lemma, we have

$$
S _ {t} = S _ {0} e ^ {\left(\mu_ {1} - \frac {\sigma_ {1} ^ {2}}{2}\right) t + \sigma_ {1} \sqrt {t} \hat {\epsilon}}. \tag {11.83}
$$

Thus, the expected value and variance for underlying instruments that follow geometric Brownian motion with geometric drift, based on properties of a lognormal distribution, is

$$
E \left(S _ {t}\right) = S _ {0} E \left[ e ^ {\left(\mu_ {1} - \frac {\sigma_ {1} ^ {2}}{2}\right) t + \sigma_ {1} \sqrt {t} \hat {\varepsilon}} \right] = S _ {0} e ^ {\left(\mu_ {1} - \frac {\sigma_ {1} ^ {2}}{2}\right) t} E \left(e ^ {\sigma_ {1} \sqrt {t} \hat {\varepsilon}}\right) = S _ {0} e ^ {\left(\mu_ {1} - \frac {\sigma_ {1} ^ {2}}{2}\right) t} \left(e ^ {\frac {\sigma_ {1} ^ {2} t}{2}}\right) = S _ {0} e ^ {\mu_ {1} t}, \tag {11.84}
$$

$$
\begin{array}{l} E (S _ {t} ^ {2}) = S _ {0} ^ {2} E \left[ e ^ {2 \left(\mu_ {1} - \frac {\sigma_ {1} ^ {2}}{2}\right) t + 2 \sigma_ {1} \sqrt {t} \hat {\varepsilon}} \right] = S _ {0} ^ {2} e ^ {2 \left(\mu_ {1} - \frac {\sigma_ {1} ^ {2}}{2}\right) t} E \left(e ^ {2 \sigma_ {1} \sqrt {t} \hat {\varepsilon}}\right) \\ = S _ {0} ^ {2} e ^ {2 \left(\mu_ {1} - \frac {\sigma_ {1} ^ {2}}{2}\right) t} \left(e ^ {\frac {4 \sigma_ {1} ^ {2} t}{2}}\right) = S _ {0} ^ {2} e ^ {\left(2 \mu_ {1} + \sigma_ {1} ^ {2}\right) t}, \tag {11.85} \\ \end{array}
$$

and

$$
\operatorname {v a r} \left(S _ {t}\right) = E \left(S _ {t} ^ {2}\right) - E \left(S _ {t}\right) ^ {2} = S _ {0} ^ {2} e ^ {\left(2 \mu_ {1} + \sigma_ {1} ^ {2}\right) t} - \left(S _ {0} e ^ {\mu_ {1} t}\right) ^ {2} = S _ {0} ^ {2} e ^ {2 \mu_ {1} t} \left(e ^ {\sigma_ {1} ^ {2} t} - 1\right). \tag {11.86}
$$

# QUESTIONS AND PROBLEMS

1 One model for the S&P 500 index futures price is represented as

$$
F _ {t} = S _ {t} e ^ {(r - \delta) \tau},
$$

where  $S_{t}$  denotes the S&P 500 index value,  $r$  denotes the risk free rate,  $\delta$  denotes the dividend yield, and  $\tau$  denotes the time to maturity, expressed in years. If  $S_{t}$  is assumed to follow geometric Brownian motion,  $dS_{t} = \alpha S_{t}dt + \sigma S_{t}dW_{t}$ , where  $\alpha$  denotes the expected return on the index and  $\sigma$  denotes the standard deviation (both annualized, continuously compounded). What is the expected return and standard deviation of the continuously compounded percentage change in the future price?

2 One model for the S&P 500 index futures price is represented as

$$
F _ {t} = S _ {t} e ^ {(r - \delta) \tau},
$$

where  $S_{t}$  denotes the S&P 500 index value,  $r$  denotes the risk-free rate,  $\delta$  denotes the dividend yield, and  $\tau$  denotes the time to expiration, expressed in years. Now if  $S_{t}$  is assumed to follow arithmetic Brownian motion with geometric drift,  $dS_{t} = \alpha S_{t}dt + \sigma dW_{t}$ , where  $\alpha$  denotes the expected return on the index (annualized, continuously compounded) and  $\sigma$  denotes the absolute standard deviation (annualized unit changes). What is the expected change and standard deviation of the change in the future price?

3 Prove the time functions of a normally distributed process lemma stated as: If  $g(t)$  is a function solely of calendar time and we have a function defined as

$$
f _ {t} \equiv \int_ {0} ^ {t} g (j) d W _ {j},
$$

then

$$
f _ {t} = \sqrt {\frac {\int_ {0} ^ {t} g ^ {2} (j) d j}{t}} \int_ {0} ^ {t} d \mathrm {W} _ {j} = \tilde {\varepsilon} \sqrt {\int_ {0} ^ {t} g ^ {2} (j) d j}.
$$

4 Suppose a stochastic integral can be expressed as

$$
f _ {t} \equiv \int_ {0} ^ {t} e ^ {c (j) j} d W _ {j}.
$$

Derive the mean and variance of  $f_{t}$ .

Suppose the US dollar (USD) to Narnian lokum (NNL) is  $S_{t} = 1.25$  USD for each NNL. Based on an analysis of the two countries, the exchange rate is assumed to follow geometric Brownian motion. Specifically,  $dS_{t} = \alpha S_{t}dt + \sigma S_{t}dW_{t}$ , where  $\alpha = 5.0\%$  and  $\sigma = 35\%$ . Compare the expected change in the exchange rate and standard deviation of the expected change from the US perspective as well as the Narnian perspective assuming a five-year horizon. (Note: If the spot exchange rate is  $S_{t} = \\(1.25 / N$ , then the reciprocal exchange rate is  $R_{t} = N0.8 / \$  [= N(1 / 1.25) / \$]\).

# NOTES

1. The term mean square limit can be thought of somewhat like the concept of variance, which is the mean squared deviation around the expected value. It is approximately correct to say that a result in stochastic calculus holds when the variance converges to a finite value.  
2. The variable  $F$  can depend on other parameters, but they must be constant across  $x$  and  $t$ .  
3. Remember that the expected value of  $dW_{t}$  is zero. Hence, the expected value of  $dF$  comes from the first term on the right-hand side; the term in parentheses is the expected value, which is a constant. Multiplying by  $dt$  scales it by the length of the time interval. The variance in the stochastic process comes from the second term on the right-hand side. The variance is the square of whatever term is multiplied by  $dW_{t}$  times the variance of  $dW_{t}$ , which is  $dt$ .  
4. This instrument closely resembles a forward contract under the carry arbitrage model covered in Chapter 22, but the details of that instrument are not relevant for this application of Ito's lemma. Also, note that  $\tau$  is in years and  $T - t$  is typically just an index, that is, a type of counter that can be used to identify points in time; there is no harm done in letting  $T - t$  represent days/365 to make it completely consistent with the definition of  $\tau$ .  
5. In arithmetic Brownian motion with arithmetic drift, the asset follows the stochastic process,  $dS_{t} = \alpha dt + \sigma dW_{t}$ , meaning that the price change and not the return is modeled as a function of its drift and volatility. In such a case, the asset value can go below zero.  
6. There is no term related to  $dt$  because  $z$  is not directly determined by  $t$ .  
7. Generic refers to  $\mu_1, \mu_2, \sigma_1$ , and  $\sigma_2$  being a function of, at most, calendar time. Many different functional forms are possible.


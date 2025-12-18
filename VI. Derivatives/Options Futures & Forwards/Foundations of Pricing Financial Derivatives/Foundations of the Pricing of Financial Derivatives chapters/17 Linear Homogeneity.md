---
aliases:
  - Linear Homogeneity in Option Pricing
tags:
key_concepts:
parent_directory: Foundations of the Pricing of Financial Derivatives chapters
cssclasses: academia
title: "Chapter 17: Applying Linear Homogeneity to Option Pricing"
linter-yaml-title-alias: "Chapter 17: Applying Linear Homogeneity to Option Pricing"
---

# Extensions and Generalizations of Derivative Pricing

# Applying Linear Homogeneity to Option Pricing

In this chapter, we shall illustrate how the mathematical principle of linear homogeneity and its associated Euler rule can be used in pricing options. Our objective is to illustrate the pricing of exchange options and forward start options. We shall, however, illustrate how the Black-Scholes-Merton model can be priced using this procedure. We then show how the exchange option model is a more general model than Black-Scholes-Merton, which is but a special case of an exchange option. The analysis provided here relies on the concepts of homogeneous functions, linear homogeneity, and Euler's rule. But first let us introduce exchange options.

# 17.1 INTRODUCTION TO EXCHANGE OPTIONS

We will use the concept of linear homogeneity to price exchange options but we first have to define an exchange option. The exchange option, first covered by Margrabe (1978), has proven to be an extremely powerful generalization of the Black-Scholes-Merton model. In addition, the intuitive insights in the derivation of the exchange option model are very useful in other applications in option pricing.

Consider a European call option in which at expiration the holder can exchange one unit of asset 2 and receive one unit of asset 1. Let  $c_{t}(S_{1}, S_{2})$  denote the price of this call option. Its payoff at expiration is

$$
c _ {T} \left(S _ {1}, S _ {2}\right) = \max  \left(0, S _ {1 T} - S _ {2 T}\right). \tag {17.1}
$$

With this option, asset 2 plays the role of the exercise price, but the difference from the standard case is that the value of asset 2 is stochastic. Thus, an exchange option is an option with a stochastic exercise price. Alternatively, one can view this option as a put in which asset 2 can be exchanged for asset 1. In the context of a put, asset 1 plays the role of the exercise price. Let this option price be denoted as  $p_t(S_2, S_1)$  and the payoff at expiration be

$$
p _ {T} \left(S _ {2}, S _ {1}\right) = \max  \left(0, S _ {1 T} - S _ {2 T}\right). \tag {17.2}
$$

Thus, the current prices of the options are equal,  $p_t(S_2, S_1) = c_t(S_1, S_2)$ .

TABLE 17.1 Put-Call Parity of Exchange Options  

<table><tr><td rowspan="2"></td><td rowspan="2">Instrument</td><td rowspan="2">Current Value</td><td colspan="2">Value at Expiration</td></tr><tr><td>S1T ≤ S2T</td><td>S1T &gt; S2T</td></tr><tr><td rowspan="4">Portfolio A</td><td>Long exch. call to exchange asset 2 for asset 1</td><td>ct(S1,S2)</td><td>0</td><td>S1T - S2T</td></tr><tr><td>Short exch. put to exchange asset 1 for asset 2</td><td>-pt(S1,S2)</td><td>-(S2T - S1T)</td><td>0</td></tr><tr><td>Total</td><td>ct(S1,S2)</td><td>S1T - S2T</td><td>S1T - S2T</td></tr><tr><td></td><td>-pt(S1,S2)</td><td></td><td></td></tr><tr><td rowspan="3">Portfolio B</td><td>Long asset 1</td><td>S1t</td><td>+S1T</td><td>+S1T</td></tr><tr><td>Short asset 2</td><td>-S2t</td><td>-S2T</td><td>-S2T</td></tr><tr><td>Total</td><td>S1t - S2t</td><td>S1T - S2T</td><td>S1T - S2T</td></tr></table>

First let us establish put-call parity between exchange options. In the previous example, we argued that  $p_t(S_2, S_1) = c_t(S_1, S_2)$ . But what about the relationship of  $c_t(S_2, S_1)$  to  $p_t(S_2, S_1)$ ? Keep in mind that in options notation, the first term in parentheses is the underlying, and the second is the strike. Table 17.1 illustrates equivalent portfolios A and B, with the former being long the call and short the put and the latter being long asset 1 and short asset 2. We see that the payoffs of the two portfolios are equivalent.

Because the portfolios have the same payoff, their current values must be equal. Therefore,

$$
c \left(S _ {1}, S _ {2}\right) - p \left(S _ {1}, S _ {2}\right) = S _ {1} - S _ {2}. \tag {17.3}
$$

In short, the difference in the value of a call option to exchange asset 2 for asset 1 and the value of a put option to exchange asset 1 for asset 2 is the difference in the values of asset 2 and asset 1. This difference will be negative when asset 2 is priced higher than asset 1.

With this introduction to exchange options, we turn to explaining homogeneous functions, linear homogeneity, and Euler's rule, all useful concepts related to valuing exchange options.

# 17.2 HOMOGENEOUS FUNCTIONS

A function  $f(x_{1},x_{2},\ldots ,x_{n})$  is said to be homogeneous of degree  $k$  with respect to each variable,  $x_{1},x_{2},\ldots ,x_{n}$  if the following condition holds

$$
f \left(\lambda x _ {1}, \lambda x _ {2}, \dots , \lambda x _ {n}\right) = \lambda^ {k} f \left(x _ {1}, x _ {2}, \dots , x _ {n}\right). \tag {17.4}
$$

An example of such a function is

$$
g (x, y, z) = 2 x ^ {2} + 3 y z - z ^ {2}.
$$

Here we see that it is homogeneous of degree two.

$$
\begin{array}{l} g (\lambda x, \lambda y, \lambda z) = 2 \lambda^ {2} x ^ {2} + 3 \lambda^ {2} \gamma z - \lambda^ {2} z ^ {2} \\ = \lambda^ {2} (2 x ^ {2} + 3 y z - z ^ {2}). \\ \end{array}
$$

What we did is multiply each variable by  $\lambda$ , and the result is the original function multiplied by  $\lambda^2$ . In that case, the function is homogeneous of degree two with respect to  $x, y$ , and  $z$ .

A function can be homogeneous with respect to fewer than the full number of variables in it. For example, from Equation (17.4), a function  $f(x,y,z)$  is said to be homogeneous of degree  $k$  with respect to the variables  $x$  and  $y$  if the following condition holds:

$$
f (\lambda x, \lambda y, z) = \lambda^ {k} f (x, y, z).
$$

In other words, if variables  $x$  and  $y$  are each increased by the factor  $\lambda$ , and it leads to the function increasing by the factor  $\lambda^k$ , then the function is said to be homogeneous of degree  $k$  with respect to  $x$  and  $y$ . Note that we did not increase  $z$  by the factor  $\lambda$ . Homogeneity is always expressed with respect to one or more variables.

The most fundamental case of homogeneity is degree zero. That is, if we multiply one or more variables by  $\lambda^0$ , we naturally obtain the original function times  $\lambda^0 = 1$ . In other words, the function does not change at all. Consider the simple function  $f(x,y,z) = xz / y$ . Then note what happens when we multiply  $x$  and  $y$  by  $\lambda$ :

$$
f (\lambda x, \lambda y, z) = \frac {\lambda x z}{\lambda y} = \frac {x z}{y}.
$$

This function is unaffected by changing  $x$  and  $y$  by the factor  $\lambda^0$  and is, thus, homogeneous of degree zero with respect to  $x$  and  $y$ . Note, however, that if we tried just  $z$ , we would get the result  $x\lambda z / y$ , which is  $\lambda xz / y$ , and the function is homogeneous of degree 1 with respect to  $z$ , but it is not homogeneous of degree 0.

For a case of linear homogeneity, or homogeneity of degree 1, consider the function

$$
f (x, y, z) = z \sqrt {x y}.
$$

It is homogeneous of degree one with respect to  $x$  and  $y$  because

$$
f (\lambda x, \lambda y, z) = z \sqrt {\lambda x \lambda y} = \lambda z \sqrt {x y} = \lambda f (x, y, z).
$$

With respect to  $x, y$ , and  $z$ , however, it is homogeneous of degree two:

$$
f (\lambda x, \lambda y, \lambda z) = \lambda z \sqrt {\lambda x \lambda y} = \lambda^ {2} z \sqrt {x y} = \lambda^ {2} f (x, y, z).
$$

# 17.3 EULER'S RULE

Functions that are homogeneous of degree one are referred to as linearly homogeneous, and this property is called linear homogeneity. The Swiss mathematician Leonhard Euler proved that linearly homogeneous functions have the property that

$$
x \frac {\partial f}{\partial x} + y \frac {\partial f}{\partial y} = f (x, y), \tag {17.5}
$$

which is called Euler's rule.

In economics, this special characteristic is used to describe production functions that have constant returns to scale. That is, if an economic output changes by a factor  $\lambda$  when the inputs change by the factor  $\lambda$ , then we say that the production function has constant returns to scale. This type of production function is relatively simple and convenient to use, and so it appears often in microeconomic models. Typically the inputs are capital  $(K)$  and labor  $(L)$ .

For example, consider the economic production function

$$
\underline {{Q}} = A K ^ {\alpha} L ^ {1 - \alpha}; A > 0; 0 <   \alpha <   1,
$$

where  $A$  is a scalar. Clearly, this economic production function is homogeneous of degree one with respect to capital and labor because

$$
\widehat {Q} = A (\lambda K) ^ {\alpha} (\lambda L) ^ {1 - \alpha} = A \lambda K ^ {\alpha} L ^ {1 - \alpha}.
$$

Further, note that if we define  $f(K,L)\equiv AK^{\alpha}L^{1 - \alpha}$  , then

$$
K \frac {\partial f}{\partial K} + L \frac {\partial f}{\partial L} = K \alpha \frac {A K ^ {\alpha} L ^ {1 - \alpha}}{K} + L (1 - \alpha) \frac {A K ^ {\alpha} L ^ {1 - \alpha}}{L} = A K ^ {\alpha} L ^ {1 - \alpha} = f (K, L).
$$

Thus, we see that this production function is linearly homogeneous and therefore satisfies Euler's rule.

# 17.4 USING LINEAR HOMOGENEITY AND EULER'S RULE TO DERIVE THE BLACK-SCHOLES-MERTON MODEL

In Merton's (1973b) classic article on option pricing theory, he demonstrated that the price of a European call option is linearly homogeneous with respect to the asset price and exercise price. Merton derived this result by defining the problem in terms of the rate of return on the option. In this chapter, we shall take a slightly different but economically equivalent approach.

As we previously covered, the price of an option can be obtained by appealing to the risk-neutral or equivalent martingale approach, which changes the probabilities of the expiration value of the underlying asset such that the current asset price is the expected future asset price discounted at the risk-free rate. As such, the expected expiration value of the option is taken using the adjusted probabilities and discounted at the risk-free rate to obtain the well-known Black-Scholes-Merton formula.

An option is an asset, so by definition the price at time  $t$  of an option is the expected future value of that option discounted at a rate appropriate for the time value of money and the risk. Consequently, without changing the probability distribution, we can obtain the option pricing formula by taking the expected value of the option at expiration using the actual probabilities and discounting at a rate suitable for the option's risk. In other words,

$$
c _ {t} = e ^ {- k \tau} E \left(c _ {T}\right), \tag {17.6}
$$

where  $k$  is the risk-adjusted discount rate appropriate for the option and  $\tau = T - t$  is the time to expiration. Again, this statement holds by definition for any asset, whether an option or not.

Of course, the value of a European call option at expiration  $T$  is

$$
c _ {T} = \max  \left(0, S _ {T} - X\right), \tag {17.7}
$$

where  $S_{T}$  is the underlying asset price at expiration and  $X$  is the exercise price. Now observe that this function is linearly homogeneous with respect to the asset price and exercise price, because

$$
\max  (0, \lambda S _ {T} - \lambda X) = \lambda \max  \left(0, S _ {T} - X\right). \tag {17.8}
$$

Thus, we know that the expiration value of the option is linearly homogeneous, but we are interested in whether the current value of the option is linearly homogeneous. Here we appeal to the aforementioned result that the current value of any asset is the expected future value discounted back to the current time. Determining an expected value is a linear mathematical operation. That is, taking an expectation is a linear operation and discounting merely involves multiplying an expected payoff by a discount factor. Note that a linear operation performed on a linearly homogeneous function preserves its property of linear homogeneity. Discounting an expected payoff, such as by the factor  $e^{-kt}$ , involves simply multiplying it by a constant, so we preserve the linear homogeneity of the function. Thus, the current price of the option is linearly homogeneous with respect to the asset price and the exercise price. Hence, we can employ Euler's rule, and it will be quite useful.

Applying Euler's rule to the Black-Scholes-Merton model call price,  $c_{t}$ , focused on  $S_{t}$  and  $X$ , we have

$$
S _ {t} \frac {\partial c}{\partial S} + X \frac {\partial c}{\partial X} = c \left(S _ {t}, X\right). \tag {17.9}
$$

From Chapter 14, we know

$$
\Delta_ {c} = \frac {\partial c}{\partial S} = N \left(d _ {1}\right) \text {a n d} \tag {17.10}
$$

$$
\frac {\partial c}{\partial X} = - e ^ {- r _ {c} \tau} N \left(d _ {2}\right). \tag {17.11}
$$

By substituting these derivatives, we attain a statement of the Black-Scholes-Merton model that is consistent with linear homogeneity. We introduce the current price of a zero-coupon bond with par value of  $X$  as  $B_{t} \equiv e^{-r_{c}\tau}X$ . Hence,

$$
S _ {t} \frac {\partial c}{\partial S} + B _ {t} \frac {\partial c}{\partial B _ {t}} = c (S _ {t}, X), \tag {17.12}
$$

where

$$
\frac {\partial c}{\partial B _ {t}} = \frac {\partial c}{\partial X} \frac {\partial X}{\partial B _ {t}} = \frac {\partial c / \partial X}{\partial B _ {t} / \partial X} = - \frac {e ^ {- r _ {c} \tau} N \left(d _ {2}\right)}{e ^ {- r _ {c} \tau}} = - N \left(d _ {2}\right). \tag {17.13}
$$

Alternatively, let us simply start by assuming the option price is linearly homogeneous with respect to  $S_{t}$  and  $B_{t}$ , two assets that can be easily traded. Note that we are not starting with any specified stochastic process. Using Euler's rule, we know that the current option price, which is a function of  $S_{t}$  and  $t$ , can be expressed as

$$
c _ {t} = \gamma S _ {t} + \omega B _ {t}, \tag {17.14}
$$

where  $\gamma$  is  $\partial c_t / \partial S_t$  and  $\omega$  is  $\partial c_t / \partial B_t$ . An interpretation of Equation (17.14) is that one call option can be replicated by holding  $\gamma$  units of the asset, each worth  $S_t$ , and  $\omega$  units of a risk-free bond with current value  $B_t = Xe^{-r_c\tau}$ .

The total differential of the option price is

$$
d c _ {t} = \gamma d S _ {t} + \omega d B _ {t}. \tag {17.15}
$$

The differential  $dS_{t}$  can be left in this form. We can, however, obtain the exact differential for the risk-free bond,  $dB_{t}$ . We simply take the derivative with respect to  $t$ ,

$$
\frac {d B _ {t}}{d t} = r _ {c} X e ^ {- r _ {c} \tau} = r _ {c} B _ {t}. (1 7. 1 6)
$$

We then obtain the desired differential as

$$
d B _ {t} = r _ {c} B _ {t} d t. \tag {17.17}
$$

Consequently, the call price differential is

$$
d c _ {t} = \gamma d S _ {t} + \omega r _ {c} B _ {t} d t. \tag {17.18}
$$

At this point, it is helpful to substitute  $c_{t} - \gamma S_{t}$  for  $\omega B_{t}$  from Equation (17.14), leaving us

$$
d c _ {t} = \gamma d S _ {t} + \left(c _ {t} - \gamma S _ {t}\right) r _ {c} d t. \tag {17.19}
$$

Now, we assume only that the call price depends on  $S_{t}$  and  $t$  and that the underlying follows an Ito process expressed as  $dS_{t} = \alpha(S_{t}, t) dt + \sigma(S_{t}, t) dW_{t}$ . Itô's lemma can be used to obtain an equivalent expression for the change in the price of the call,

$$
d c _ {t} = \frac {\partial c _ {t}}{\partial S _ {t}} d S _ {t} + \frac {\partial c _ {t}}{\partial t} d t + \frac {1}{2} \frac {\partial^ {2} c _ {t}}{\partial S _ {t} ^ {2}} \sigma^ {2} (S _ {t}, t) d t, \tag {17.20}
$$

from which we can now set Equation (17.20) equal to Equation (17.19). And by choosing  $\gamma$  to equal  $\partial c_t / \partial S_t$ , we eliminate the risky term  $dS_{t}$ , leaving the following non-stochastic partial differential equation,

$$
c _ {t} r _ {c} = \frac {\partial c _ {t}}{\partial S _ {t}} r _ {c} S _ {t} + \frac {\partial c _ {t}}{\partial t} + \frac {1}{2} \frac {\partial^ {2} c _ {t}}{\partial S _ {t} ^ {2}} \sigma^ {2} (S _ {t}, t), \tag {17.21}
$$

which is a second-order partial differential equation. This partial differential equation solution, subject to the boundary condition  $c_{T} = \max \left(0,S_{T} - X\right)$ , depends on the specification of the volatility term.

Several important insights can be gained from linear homogeneity. First, no assumptions were made regarding risk-free hedging. Second, the only assumption made regarding the underlying asset stochastic process is that it follows an Ito process. Third, the drift term of the Ito process has no influence on the resulting partial differential equation. Fourth, if we assume a generic geometric Brownian motion of the form  $dS_{t} = \alpha (S_{t},t)dt + \sigma S_{t}dW_{t}$ , we obtain the Black-Scholes-Merton model. In Appendix 17A, we explore linear homogeneity applied to the arithmetic Brownian motion model.

# 17.5 EXCHANGE OPTION PRICING

Now let us use the concept of linear homogeneity to price exchange options. We assume each asset follows the lognormal diffusion process,

$$
\begin{array}{l} \frac {d S _ {i}}{S _ {i}} = \alpha_ {i} d t + \sigma_ {i} d W _ {i} \\ i = 1, 2, \tag {17.22} \\ \end{array}
$$

and we specify that the correlation between the two Wiener processes driving the asset prices is  $\rho_{12}$ . Let  $c(S_1, S_2)$  be the value today of the exchange call option, which gives the right to tender asset 2 for asset 1 at expiration,  $T$ . As noted, the payoff of this option is  $c_T(S_1, S_2) = \max(0, S_1 - S_2)$ . It is easy to see that this terminal payoff is linearly homogeneous with respect to the two asset values. Because the value of the option today is a simple discounted expectation of the payoff at expiration, the current value of the option must also be linearly homogeneous.

Using Euler's theorem, we can express the value of the option as

$$
c \left(S _ {1}, S _ {2}\right) - \frac {\partial c \left(S _ {1} , S _ {2}\right)}{\partial S _ {1}} S _ {1} - \frac {\partial c \left(S _ {1} , S _ {2}\right)}{\partial S _ {2}} S _ {2} = 0. \tag {17.23}
$$

Although this statement, viewed from the context of Euler's theorem, is purely mathematical, it also has a natural interpretation in finance. It says that a portfolio consisting of the purchase of one unit of the exchange call option and short positions in  $\partial c / \partial S_1$  units of asset 1 and  $\partial c / \partial S_2$  units of asset 2 would require no initial investment. Therefore, to avoid profitable arbitrage, such a portfolio must generate an instantaneous return of zero.

The differential of Equation (17.23) is

$$
d c \left(S _ {1}, S _ {2}\right) - \frac {\partial c \left(S _ {1} , S _ {2}\right)}{\partial S _ {1}} d S _ {1} - \frac {\partial c \left(S _ {1} , S _ {2}\right)}{\partial S _ {2}} d S _ {2} = 0. \tag {17.24}
$$

Now we apply the multivariate version of Itô's lemma to the value of the call:2

$$
\begin{array}{l} d c (S _ {1}, S _ {2}) = \frac {\partial c (S _ {1} , S _ {2})}{\partial S _ {1}} d S _ {1} + \frac {\partial c (S _ {1} , S _ {2})}{\partial S _ {2}} d S _ {2} + \frac {\partial c (S _ {1} , S _ {2})}{\partial t} d t \\ + \frac {1}{2} \left[ \frac {\partial^ {2} c (S _ {1} , S _ {2})}{\partial S _ {1} ^ {2}} \sigma_ {1} ^ {2} S _ {1} ^ {2} + 2 \frac {\partial^ {2} c (S _ {1} , S _ {2})}{\partial S _ {1} \partial S _ {2}} \sigma_ {1} \sigma_ {2} \rho_ {1 2} S _ {1} S _ {2} + \frac {\partial^ {2} c (S _ {1} , S _ {2})}{\partial S _ {2} ^ {2}} \sigma_ {2} ^ {2} S _ {2} ^ {2} \right] d t. \tag {17.25} \\ \end{array}
$$

Equating Equation (17.25) with (17.24), and after canceling, we obtain

$$
\frac {\partial c \left(S _ {1} , S _ {2}\right)}{\partial t} + \frac {1}{2} \left[ \frac {\partial^ {2} c \left(S _ {1} , S _ {2}\right)}{\partial S _ {1} ^ {2}} \sigma_ {1} ^ {2} S _ {1} ^ {2} + 2 \frac {\partial^ {2} c \left(S _ {1} , S _ {2}\right)}{\partial S _ {1} \partial S _ {2}} \sigma_ {1} \sigma_ {2} \rho_ {1 2} S _ {1} S _ {2} + \frac {\partial^ {2} c \left(S _ {1} , S _ {2}\right)}{\partial S _ {2} ^ {2}} \sigma_ {2} ^ {2} S _ {2} ^ {2} \right] = 0. \tag {17.26}
$$

The solution is the exchange option price,

$$
c \left(S _ {1}, S _ {2}\right) = S _ {1} N \left(d _ {1}\right) - S _ {2} N \left(d _ {2}\right),
$$

where

$$
\begin{array}{l} d _ {1} = \frac {\ln \left(S _ {1} / S _ {2}\right) + (\sigma^ {2} / 2) \tau}{\sigma \sqrt {\tau}} \\ d _ {2} = d _ {1} - \sigma \sqrt {\tau} \\ \sigma = \sqrt {\sigma_ {1} ^ {2} + \sigma_ {2} ^ {2} - 2 \rho_ {1 2} \sigma_ {1} \sigma_ {2}}. \tag {17.27} \\ \end{array}
$$

Note that  $\sigma$  is the volatility of a new variable, defined as the proportional change in the log of the ratio  $S_{1} / S_{2}$ . It is obtained as follows:

$$
\begin{array}{l} \operatorname {v a r} \left[ \ln \left(\frac {S _ {1}}{S _ {2}}\right) \right] = \operatorname {v a r} \left(\ln S _ {1} - \ln S _ {2}\right) \\ = \operatorname {v a r} \left(\ln S _ {1}\right) + \operatorname {v a r} \left(\ln S _ {2}\right) - 2 \operatorname {c o v} \left(\ln S _ {1}, \ln S _ {2}\right) \\ = \sigma_ {1} ^ {2} + \sigma_ {2} ^ {2} - 2 \rho_ {1 2} \sigma_ {1} \sigma_ {2}. \tag {17.28} \\ \end{array}
$$

We can check the solution by taking the partial derivatives of Equation (17.27) and inserting them into Equation (17.26).

Because we know that  $c$  is linearly homogeneous with respect to the prices of assets 1 and 2, we can say that  $ac(S_1, S_2) = c(aS_1, aS_2)$ , where  $a$  is a constant. Define  $a$  as  $1 / S_2$ , which gives us  $(1 / S_2)c(S_1, S_2) = c(S, 1)$  or  $c(S_1, S_2) = S_2c(S, 1)$  where  $S = S_1 / S_2$ . In effect we have created a new artificial asset, the ratio of the value of asset 1 to the value of asset 2. Because it is not possible to deliver such an asset, this instrument can perhaps be more easily expressed as a cash-settled call option that enables one to exchange one unit of currency and receive the value  $S = S_1 / S_2$  in cash. Thus, the exchange call is an ordinary European call on  $S$  with an exercise price of 1. We can, therefore, differentiate

the exchange option price by differentiating its equivalent value,  $S_{2}c(S,1)$ . We will also need second partial derivatives with respect to  $S_{1}, S_{2}$ , the cross partial of  $S_{1}$  and  $S_{2}$ , and the first derivative with respect to  $t$ .

Thus, the model can be expressed as

$$
\begin{array}{l} c \big (S _ {1}, S _ {2} \big) = S _ {2} c (S, 1) \\ = S _ {2} \left[ S N \left(d _ {1}\right) - N \left(d _ {2}\right) \right], \\ \end{array}
$$

where

$$
S = S _ {1} / S _ {2}. \tag {17.29}
$$

Equation (17.29) is an ordinary Black-Scholes-Merton option on the artificial asset  $S$  with exercise price of 1. The  $d_{1}$  and  $d_{2}$  variables in this variation are the same as shown in Equation (17.27).

By converting  $S_{1}$  and  $S_{2}$  to  $S$  and the strike to 1, we have normalized these assets. In asset management and asset allocation in particular, we are often interested in the relative performance of asset 1 in terms of asset 2. In other words, we want to know which asset class outperforms the other and by how much. In practice, the actual prices of asset 1 and 2 are often significantly different and hence some form of normalization is necessary. Investors decide the dollar amount to invest in each asset class independent of the quoted price of each asset. We see here clearly that an exchange option can capture in option value in terms of the relative behavior of the two assets.

Now, for completeness, we need to verify the solution to the PDE in the traditional manner. That is, we must show that Equation (17.27) solves Equation (17.26). Our approach is to transform the PDE into one that is isomorphic to the Black-Scholes-Merton and infer the solution via the Black-Scholes-Merton model.

Let us initially examine the first derivatives with respect to  $S_{1}$  and  $S_{2}$ , commonly referred to as the option delta. We will make use of the artificial asset  $S$  to simplify the math, thereby enabling us to use many of the results we already know from the Black-Scholes-Merton model. We shall need certain partial derivatives. The first partial derivatives with respect to the underlying prices are

$$
\begin{array}{l} \frac {\partial c (S _ {1} , S _ {2})}{\partial S _ {1}} = \frac {\partial [ S _ {2} c (S , 1) ]}{\partial S _ {1}} \\ = S _ {2} \frac {\partial c (S , 1)}{\partial S _ {1}} = S _ {2} \frac {\partial c (S , 1)}{\partial S} \frac {\partial S}{\partial S _ {1}} \\ = \frac {\partial c (S , 1)}{\partial S} \\ \end{array}
$$

$$
\begin{array}{l} \frac {\partial \left[ S _ {2} c (S , 1) \right]}{\partial S _ {2}} = S _ {2} \frac {\partial c (S , 1)}{\partial S} \frac {\partial S}{\partial S _ {2}} + c (S, 1) \\ = S _ {2} \frac {\partial c (S , 1)}{\partial S} \left(- \frac {S}{S _ {2}}\right) + c (S, 1) \\ = c (S, 1) - S \frac {\partial c (S , 1)}{\partial S}. \tag {17.30} \\ \end{array}
$$

The second partial derivatives with respect to the asset prices are

$$
\frac {\partial^ {2} c (S _ {1} , S _ {2})}{\partial S _ {1} ^ {2}} = \frac {\partial}{\partial S _ {1}} \left[ \frac {\partial c (S _ {1} , S _ {2})}{\partial S _ {1}} \right] = \frac {\partial}{\partial S _ {1}} \left[ \frac {\partial c (S , 1)}{\partial S} \right] = \frac {\partial}{\partial S} \left[ \frac {\partial c (S , 1)}{\partial S} \frac {\partial S}{\partial S _ {1}} \right] = \frac {\partial^ {2} c (S , 1)}{\partial S ^ {2}} \left(\frac {1}{S _ {2}}\right)
$$

$$
\begin{array}{l} \frac {\partial^ {2} c (S _ {1} , S _ {2})}{\partial S _ {2} ^ {2}} = \frac {\partial}{\partial S _ {2}} \left[ \frac {\partial c (S _ {1} , S _ {2})}{\partial S _ {2}} \right] = \frac {\partial}{\partial S _ {2}} \left[ c (S, 1) - S \frac {\partial c (S , 1)}{\partial S} \right] = \frac {\partial c (S , 1)}{\partial S _ {2}} - S \frac {\partial}{\partial S _ {2}} \left[ \frac {\partial c (S , 1)}{\partial S} \right] \\ = \frac {\partial c (S , 1)}{\partial S _ {2}} - \frac {\partial c (S , 1)}{\partial S} \frac {\partial S}{\partial S _ {2}} - S \frac {\partial}{\partial S _ {2}} \left[ \frac {\partial c (S , 1)}{\partial S} \right] - S \frac {\partial}{\partial S _ {2}} \left[ \frac {\partial c (S , 1)}{\partial S} \right] \\ = \frac {\partial c (S , 1)}{\partial S} \frac {\partial S}{\partial S _ {2}} - \frac {\partial c (S , 1)}{\partial S} \frac {\partial S}{\partial S _ {2}} - S \frac {\partial^ {2} c (S , 1)}{\partial S ^ {2}} \frac {\partial S}{\partial S _ {2}} \\ = - S \frac {\partial^ {2} c (S , 1)}{\partial S ^ {2}} \left(- \frac {S}{S _ {2}}\right) = \frac {\partial^ {2} c (S , 1)}{\partial S ^ {2}} \left(\frac {S ^ {2}}{S _ {2}}\right) \\ \end{array}
$$

$$
\begin{array}{l} \frac {\partial^ {2} c (S _ {1} , S _ {2})}{\partial S _ {1} \partial S _ {2}} = \frac {\partial}{\partial S _ {2}} \left[ \frac {\partial c (S _ {1} , S _ {2})}{\partial S _ {1}} \right] \\ = \frac {\partial}{\partial S _ {2}} \left[ \frac {\partial c (S , 1)}{\partial S} \right] = \frac {\partial^ {2} c (S , 1)}{\partial S ^ {2}} \frac {\partial S}{\partial S _ {2}} \\ = \frac {\partial^ {2} c (S , 1)}{\partial S ^ {2}} \left(- \frac {S}{S _ {2}}\right). \tag {17.31} \\ \end{array}
$$

We also need the first partial derivative with respect to time:

$$
\frac {\partial c \left(S _ {1} , S _ {2}\right)}{\partial t} = \frac {\partial S _ {2} c (S , 1)}{\partial t} = S _ {2} \frac {\partial c (S , 1)}{\partial t}. \tag {17.32}
$$

Expressing Equation (17.26) based on the derivatives above in terms of  $S$  and  $\sigma$ , we find

$$
\begin{array}{l} S _ {2} \frac {\partial c (S , 1)}{\partial t} + \frac {1}{2} \frac {\partial^ {2} c (S , 1)}{\partial S ^ {2}} \left(\frac {1}{S _ {2}}\right) \sigma_ {1} ^ {2} \big (S S _ {2} \big) ^ {2} + \frac {\partial^ {2} c (S , 1)}{\partial S ^ {2}} \left(- \frac {S}{S _ {2}}\right) \sigma_ {1} \sigma_ {2} \rho_ {1 2} \big (S S _ {2} \big) S _ {2} \\ + \frac {1}{2} \frac {\partial^ {2} c (S , 1)}{\partial S ^ {2}} \left(\frac {S ^ {2}}{S _ {2}}\right) \sigma_ {2} ^ {2} S _ {2} ^ {2} = 0 \\ \end{array}
$$

$$
\begin{array}{l} S _ {2} \left[ \frac {\partial c (S , 1)}{\partial t} + \frac {1}{2} \frac {\partial^ {2} c (S , 1)}{\partial S ^ {2}} \sigma_ {1} ^ {2} S ^ {2} - \frac {\partial^ {2} c (S , 1)}{\partial S ^ {2}} \sigma_ {1} \sigma_ {2} \rho_ {1 2} S ^ {2} + \frac {1}{2} \frac {\partial^ {2} c (S , 1)}{\partial S ^ {2}} \left(\frac {S ^ {2}}{S _ {2}}\right) \sigma_ {2} ^ {2} S ^ {2} \right] = 0 \\ \frac {\partial c (S , 1)}{\partial t} + \frac {1}{2} \frac {\partial^ {2} c (S , 1)}{\partial S ^ {2}} \sigma^ {2} S ^ {2} = 0. \tag {17.33} \\ \end{array}
$$

And this is the PDE that was presented as Equation (17.26).

We can also see that the first two lines in the equation show that this partial differential equation is the same as the Black-Scholes-Merton partial differential equation when the interest rate,  $r_c$ , is set to zero, the underlying asset price is  $S$ , and the volatility is  $\sigma$ . Recall the Black-Scholes-Merton PDE as given in Equation (13.11):

$$
r _ {c} S \frac {\partial c}{\partial S} + \frac {\partial c}{\partial t} + \frac {1}{2} \frac {\partial^ {2} c}{\partial S ^ {2}} \sigma^ {2} S ^ {2} = r _ {c} c.
$$

Substituting  $r_c = 0$ , then we have Equation (17.33).

Consequently, we can say that the exchange option is equivalent to  $S_{2}$  units of an ordinary European call when the underlying asset is  $S$ , the strike is one, the interest rate is zero, and the volatility is  $\sigma^2 = \sigma_1^2 + \sigma_2^2 - 2\rho_{12}\sigma_1\sigma_2$ . The last two lines above verify that this PDE is the same as the one we previously obtained. Thus, we note that Equation (17.27) solves Equation (17.26).

This result is useful in better understanding not only the exchange option but also the ordinary European option. The latter can be viewed as an exchange option where the asset exchanged is cash. The exchange option implies a zero interest rate because it can be replicated by holding asset 1 and shorting asset 2. The shorting of asset 2 would not have an expected return of  $r_c$  as it would if it were risk free. Rather the holder of asset 2 would demand its expected return,  $\alpha_2$ , as compensation. Consequently, the short seller of asset 2, who is trying to replicate the exchange option, would not have an expected return of  $-r_c$  but rather of  $-\alpha_2$ . In any ordinary European call, the second term in the pricing equation is the present value of the exercise price. In the exchange option, the second term is also the present value of the exercise price. The current price of asset 2 is its present value.

Interestingly, in the same issue of The Journal of Finance directly preceding the Margrabe article, there is an article by Fischer (1978), in which he modeled bonds indexed to inflation. He showed that to price such a bond one needs the formula for an option where the exercise price is stochastic. Such an option is equivalent to an exchange option, and naturally Fisher derives the same formula as Margrabe.

The traditional exchange option Greeks are provided in Appendix 17C. We now turn to explore spread options.

# 17.6 SPREAD OPTIONS

We now consider spread options where there is a nonzero exercise price. In this case, suppose we have a European spread call option in which at expiration the holder can exchange  $\alpha_{2}$  units of asset 2 and receive  $\alpha_{1}$  units of asset 1 but also must pay a prespecified exercise price,  $X$ . We assume  $\alpha_{1}$  and  $\alpha_{2}$  are both positive. A European spread put option in which at expiration the holder can exchange  $\alpha_{1}$  units of asset 1 and receive  $\alpha_{2}$  units of asset 2 but again has to pay a prespecified exercise price,  $X$ . Note that  $X$  can be positive or negative. The payoffs at expiration are

$$
c _ {T} = \max  \left(0, \alpha_ {1} S _ {1 T} - \alpha_ {2} S _ {2 T} - X\right) \text {a n d} \tag {17.34}
$$

$$
p _ {T} = \max  \left(0, X - \alpha_ {1} S _ {1 T} + \alpha_ {2} S _ {2 T}\right). \tag {17.35}
$$

With spread options, neither asset plays the role of the exercise price. Thus, a spread option is a more complex exchange option with a known exercise price.

Pearson (1995), Carmona and Durrleman (2003, 2006), Li, Deng, and Zhou (2008), and others have offered approximations when solving for the spread option price when each asset follows geometric Brownian motion. Brooks and Cline (2015) provide a closed-form solution that also incorporates dividends. Based on the results in the previous section as well as the more complex terminal boundary condition, the spread option model based on geometric Brownian motion can be expressed as

$$
\begin{array}{l} c _ {t} = \alpha_ {1} S _ {1 t} e ^ {- \delta_ {1} \tau} \int_ {- \infty} ^ {\infty} N [ d _ {1, 1} (j) ] n (j) d j - \alpha_ {2} S _ {2 t} e ^ {- \delta_ {2} \tau} \\ \int_ {- \infty} ^ {\infty} N [ d _ {1, 2} (j) ] n (j) d j - X e ^ {- r _ {c} \tau} \int_ {- \infty} ^ {\infty} N [ d _ {2} (j) ] n (j) d j, \tag {17.36} \\ \end{array}
$$

$$
p _ {t} = c _ {t} - \alpha_ {1} S _ {1 t} e ^ {- \delta_ {1} \tau} + \alpha_ {2} S _ {2 t} e ^ {- \delta_ {2} \tau} + X e ^ {- r _ {c} \tau}, (1 7. 3 7)
$$

where

$$
\begin{array}{l} n (j) = \frac {e ^ {- \frac {j ^ {2}}{2}}}{\sqrt {2 \pi}}, (17.38) \\ N [ d _ {i} (j) ] = \int_ {- \infty} ^ {d _ {i} (j)} \frac {e ^ {\frac {- k ^ {2}}{2}}}{\sqrt {2 \pi}} d k, (17.39) \\ d _ {1, 1} (j) \equiv \frac {\ln \left[ \frac {\alpha_ {1} S _ {1 t} e ^ {\left(r _ {c} - \delta_ {1} + \frac {\sigma_ {1} ^ {2}}{2}\right) \tau + \rho \sigma_ {1} \sqrt {\tau j}}}{X + \alpha_ {2} S _ {2 t} e ^ {\left(r _ {c} - \delta_ {1} - \frac {\sigma_ {2} ^ {2}}{2} + \rho \sigma_ {1} \sigma_ {2}\right) \tau + \sigma_ {2} \sqrt {\tau j}}} \right]}{\sigma_ {1} \sqrt {\tau \left(1 - \rho^ {2}\right)}}, (17.40) \\ d _ {1, 2} (j) \equiv \frac {\ln \left[ \frac {\alpha_ {1} S _ {1 t} e ^ {\left(r _ {c} - \delta_ {1} - \frac {\sigma_ {1} ^ {2}}{2} + \rho \sigma_ {1} \sigma_ {2}\right) \tau + \rho \sigma_ {1} \sqrt {\tau} j}}{X + \alpha_ {2} S _ {2 t} e ^ {\left(r _ {c} - \delta_ {2} + \frac {\sigma_ {2} ^ {2}}{2}\right) \tau + \sigma_ {2} \sqrt {\tau} j}} \right]}{\sigma_ {1} \sqrt {\tau \left(1 - \rho^ {2}\right)}} \text {, a n d} (17.41) \\ d _ {2} (j) = \frac {\ln \left[ \frac {\alpha_ {1} S _ {1 t} e ^ {\left(r _ {c} - \delta_ {1} - \frac {\sigma_ {1} ^ {2}}{2}\right) \tau + \rho \sigma_ {1} \sqrt {\tau} j}}{X + \alpha_ {2} S _ {2 t} e ^ {\left(r _ {c} - \delta_ {2} - \frac {\sigma_ {2} ^ {2}}{2}\right) \tau + \sigma_ {2} \sqrt {\tau} j}} \right]}{\sigma_ {1} \sqrt {\tau \left(1 - \rho^ {2}\right)}}. (17.42) \\ \end{array}
$$

This solution is not an approximation like Pearson (1995), Carmona and Durrleman (2003, 2006), Li, Deng, and Zhou (2008) and others; rather, it is an exact result. It is still technically a double integral as the standard  $N(d)$  function is itself an integral. In practice, however, it is a single integral because of the existence of very accurate numerical approximations available to compute the standard  $N(d)$  function. Fast solutions to single integral problems are widely available, particularly with fast and efficient computer languages such as R or C++.

The solution in the case of arithmetic Brownian motion with geometric drift is much more straightforward. Note that the spread is normally distributed and is denoted as

$$
S P _ {T} = \alpha_ {1} S _ {1 T} - \alpha_ {2} S _ {2 T}. \tag {17.43}
$$

Under risk-neutral valuation, we have

$$
E \left(S P _ {T}\right) = \alpha_ {1} S _ {1 t} e ^ {\left(r _ {c} - \delta_ {1}\right) \tau} - \alpha_ {2} S _ {2 t} e ^ {\left(r _ {c} - \delta_ {2}\right) \tau} = S P _ {t} e ^ {r _ {c} \tau}, \tag {17.44}
$$

where one measure of the current spread at  $t$  is

$$
S P _ {t} \equiv \alpha_ {1} S _ {1 t} e ^ {- \delta_ {1} \tau} - \alpha_ {2} S _ {2 t} e ^ {- \delta_ {2} \tau}. (1 7. 4 5)
$$

Let  $\sigma_{SP}$  denote the standard deviation of changes in the spread. Thus, based on the Brownian motion (ABM) model, the spread option prices are

$$
c _ {t} = \left(S P _ {t} - X e ^ {- r \tau}\right) N \left(d _ {n}\right) + \sigma_ {S P} \sqrt {\frac {e ^ {r _ {c} \tau} - 1}{2 r _ {c}}} n \left(d _ {n}\right), \tag {17.46}
$$

$$
p _ {t} = c _ {t} - \alpha_ {1} S _ {1 t} e ^ {- \delta_ {1} \tau} + \alpha_ {2} S _ {2 t} e ^ {- \delta_ {2} \tau} + X e ^ {- r \tau}, (1 7. 4 7)
$$

where

$$
n \left(d _ {n}\right) = \frac {e ^ {\frac {- d _ {n} ^ {2}}{2}}}{\sqrt {2 \pi}}, \tag {17.48}
$$

$$
N \left(d _ {n}\right) = \int_ {- \infty} ^ {d _ {n}} n (x) d x, \text {a n d} \tag {17.49}
$$

$$
d _ {n} = \frac {S P _ {t} e ^ {r _ {c} \tau} - X}{\sigma_ {S P} \sqrt {\frac {e ^ {r _ {c} \tau} - 1}{2 r _ {c}}}}. \tag {17.50}
$$

# 17.7 FORWARD START OPTIONS

Another useful application of Euler's rule is that of a forward start option, which is an option that is purchased today but does not begin until a later date. When the premium is paid today, the purchaser specifies that they wish to acquire an option at a designated later date that has a particular degree of moneyness.

Figure 17.1 illustrates the timeline. Let time  $t$  be the day the forward start option is initiated and time  $T_{1}$  be the date on which the underlying option is received and  $T_{2}$  be

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/0ff83ad3a49fe3d7619e75f0aef7d5be33dfc8945b108307eabfa1f4d67ed466.jpg)  
FIGURE 17.1 Forward Start Option Timeline

the date when the underlying option expires. That is, at time  $T_{1}$  ( $t < T_{1} < T_{2}$ ) when the asset price is  $S_{1}$  the option will be granted with an exercise price of  $\alpha S_{1}$ . For example, an at-the-money option has  $\alpha = 1$ . An option with exercise price  $5\%$  higher than the asset price has  $\alpha = 1.05$ . Because we do not know today what the asset price will be at  $T_{1}$ , we cannot prespecify the exercise price. This would appear to make it difficult to price the option, but in fact it is easy to price the option because we can use the principle of linear homogeneity. The original reference on this is Rubinstein (1991a).

First let us define  $c(S_{t}, \alpha, T_{1}, T_{2})$  as the value of a forward start option at time  $t$  in which the exercise price is determined at time  $T_{1}$  and equals  $\alpha$  times the value of the underlying at time  $T_{1}$ , and the option expires at time  $T_{2}$ . Although the option is created and paid for at time  $t$ , at time  $T_{1}$ , the option formally comes into existence, that is, its exercise price is now declared. At this point, it has the property of a standard European option, which has a time to expiration of  $\tau_{12}$ . Consequently, we know that it is linearly homogeneous with respect to the asset price and exercise price. Writing its value as  $c(S_{1}, \alpha S_{1}, \tau_{12})$  where subscript 1 denotes  $t = 1$ , we can state that this option's value is equal to

$$
c \left(S _ {1}, \alpha S _ {1}, \tau_ {1 2}\right) = S _ {1} c (1, \alpha , \tau_ {1 2}). \tag {17.51}
$$

The value  $c(1, \alpha, \tau_{12})$  is known at all times. It is simply the value of an option where the underlying is the value of one unit of the currency, the exercise price is  $\alpha$ , and the time to expiration is  $\tau_{12}$ . One could easily plug these values into the Black-Scholes-Merton model and obtain the value. Even at time  $t$ , we know this value. Equation (17.51), however, says that the forward start option value at time  $T_1$  is the product of  $S_1$  and this option. At time  $t$ , we do not know what  $S_1$  will be, but we can still price the option at time  $t$ .

To do so, we need to find a combination of instruments that replicates the option, or, in other words, produces a value at  $T_{1}$  equal to that of the option. It should be obvious that holding  $c(1,\alpha ,\tau_{12})$  units of the asset will produce a value of  $c(1,\alpha ,\tau_{12})S_{1}$  at time  $T_{1}$ . Consequently, the value of the forward start option today is

$$
c \left(S _ {t}, \alpha , \tau_ {1}, \tau_ {2}\right) = S _ {t} c \left(1, \alpha , \tau_ {1 2}\right). \tag {17.52}
$$

In other words, holding  $c(1, \alpha, \tau_{12})$  units of the asset valued at  $S_1$  will reproduce the option value at time  $t$ . Do not, however, confuse this statement with any suggestion of full replication. Buying  $c(1, \alpha, \tau_{12})$  units of the asset at time valued at  $S_t$  will not replicate the final payoff of the option. The replication strategy is dynamic. We hold a static amount,  $c(1, \alpha, \tau_{12})$ , of the underlying until time  $T_1$ . At that point, we have an option with a fixed exercise price of  $S_1 \alpha$  on an underlying whose value is fluctuating. This option is now an ordinary European call and is replicated using the appropriate number of units of the asset as given by the dynamic delta.

If instead today we specified a fixed exercise price of  $X$ , then at  $T_{1}$  we are awarded an option with an exercise price of  $X$  and a time to expiration of  $\tau_{12}$ . Such an option is trivially equal to purchasing an option today with a time to expiration of  $\tau_{2}$  and an exercise price of  $X$ . If the premium is paid today and the option is received later, it is equivalent to just receiving the option today.

It is important, however, to contrast these types of options with forward contracts on options. A forward contract on an option is an agreement to purchase an option at a later date. The option will have an exercise price of  $X$  and a time to expiration of  $\tau_{12}$  when granted. Being a forward contract, no money is paid today but a price that will be paid at  $T_{1}$  is agreed on by the two parties. It is also a simple process to determine this option's price. If today we purchase the option with time to expiration  $\tau_{2}$  and exercise price  $X$ , that is, the option described in the previous paragraph, but borrow the premium, then at time  $T_{1}$ , we shall have replicated the payoff of the forward contract on the option.

In other words, let  $c(S_t, X, \tau_2)$  be the price of a call option today struck at  $X$  with time to expiration  $\tau_2$ . Let  $F\big[c(S_tX\tau_2), T_1\big]$  be the forward price agreed on today to purchase the option with current price  $c(S_t, X, \tau_2)$  at time  $T_1$ . The payoff at time  $T_1$  will be

$$
c \left(S _ {1}, X, \tau_ {1 2}\right) - F \left[ c \left(S _ {t} X \tau_ {1 2}\right), T _ {1} \right]. \tag {17.53}
$$

This payoff can be replicated today by purchasing the call option at  $c(S_t, X, \tau_2)$  and borrowing  $F\big[c(S_tX\tau_2), T_1\big]e^{-r_c\tau_1}$ . At time  $T_1$ , we are holding the option worth  $c(S_t, X, \tau_{12})$  and owe  $F\big[c(S_tX\tau_2), T_1\big]$ , which combine to replicate the payoff of the forward contract. Because the transaction is a forward contract, it requires no outlay today. Consequently, the value of the position today,  $c(S_t, X, \tau_2) - F\big[c(S_tX\tau_2), T_1\big]e^{-r_c\tau_1}$ , must equal zero, meaning that

$$
F \left[ c \left(S _ {t} X \tau_ {2}\right), T _ {1} \right] = c \left(S _ {1}, X, \tau_ {2}\right) e ^ {r _ {c} \tau_ {1}}. \tag {17.54}
$$

Here we see the general rule that the price of a forward contract is the price of the underlying compounded to the expiration of the forward contract. This result will be derived formally in Chapter 22, when we address the pricing of forwards and futures.

If the option is written such that the exercise price is specified as  $\alpha S_{1}$ , then instead of holding the call worth  $c(S_{t},X,\tau_{2})$  today, we hold  $c(1,\alpha ,\tau_{12})$  units of the asset, as determined previously in our derivation of the price of a forward start option. This instrument combines elements of a forward contract on an option and a forward start option.

# 17.8 RECAP AND PREVIEW

In this chapter, we examined the concept of linear homogeneity and showed how it can be used in option pricing. Linear homogeneity, which occurs in certain types of functions, expresses a relationship between their differentials. Conveniently, the payoff of an option is linearly homogeneous with respect to the asset price and exercise price. As such, we can use this principle to derive the Black-Scholes-Merton model. In this chapter, we show how it can be used to also derive the value of an exchange option, as well as a forward start option.

In Chapter 18, we introduce the concept of a compound option, which is an option on an option. It will go a long way toward helping us to price American options.

# APPENDIX 17A

# Linear Homogeneity and the Arithmetic Brownian Motion Model

Following the approach given in this chapter and applying Euler's rule to the ABM model call price,  $c_{t}$ , focused on  $S_{t}$ ,  $X$ , and  $\sigma$  we have

$$
S _ {t} \frac {\partial c}{\partial S} + X \frac {\partial c}{\partial X} + \sigma \frac {\partial c}{\partial \sigma} = c (S _ {t}, X). \tag {17.55}
$$

Assuming no dividends or other asset cash flows, we know

$$
\Delta_ {c} = \frac {\partial c}{\partial S} = N \left(d _ {n}\right) \text {a n d} \tag {17.56}
$$

$$
\frac {\partial c}{\partial X} = - e ^ {- r _ {c} \tau} N \left(d _ {n}\right). \tag {17.57}
$$

$$
\frac {\partial c}{\partial \sigma} = \frac {e ^ {- r _ {c} \tau} \sigma_ {n} n \left(d _ {n}\right)}{\sigma}. \tag {17.58}
$$

By substituting these derivatives, we confirm that the ABM model has the property of linear homogeneity.

$$
\begin{array}{l} S _ {t} \frac {\partial c}{\partial S} + X \frac {\partial c}{\partial X} + \sigma \frac {\partial c}{\partial \sigma} \\ = S _ {t} N \left(d _ {n}\right) + X \left[ - e ^ {- r _ {c} \tau} N \left(d _ {n}\right) \right] + \sigma \frac {e ^ {- r _ {c} \tau} \sigma_ {n} n \left(d _ {n}\right)}{\sigma} = c \left(S _ {t}, X\right). \tag {17.59} \\ \end{array}
$$

Recall

$$
c _ {t} = \left(S _ {t} - X e ^ {- r _ {c} \tau}\right) N \left(d _ {n}\right) + e ^ {- r _ {c} \tau} \sigma_ {n} n \left(d _ {n}\right), \text {w h e r e} \tag {17.60}
$$

$$
d _ {n} = \frac {S _ {t} - X e ^ {- r _ {c} \tau}}{\sigma_ {n}} \text {a n d} \tag {17.61}
$$

$$
\sigma_ {n} = \sigma \sqrt {\frac {e ^ {- 2 r _ {c} \tau} - 1}{2 r _ {c}}}. \tag {17.62}
$$

We introduce the current price of one zero-coupon bond with par value of  $X$  as  $B_{1t} \equiv e^{-r_c\tau}X$  and a second zero-coupon bond with par value of  $X$  as  $B_{2t} \equiv e^{-r_c\tau}\sigma$ . Further, recall that a linear operation performed on a linearly homogeneous function preserves its property of linear homogeneity, hence,

$$
S _ {t} \frac {\partial c}{\partial S} + B _ {1 t} \frac {\partial c}{\partial B _ {1 t}} + B _ {2 t} \frac {\partial c}{\partial B _ {2 t}} = c (S _ {t}, X), \tag {17.63}
$$

where

$$
\frac {\partial c}{\partial B _ {1 t}} = \frac {\partial c}{\partial X} \frac {\partial X}{\partial B _ {1 t}} = \frac {\partial c / \partial X}{\partial B _ {1 t} / \partial X} = - \frac {e ^ {- r _ {c} \tau} N \left(d _ {n}\right)}{e ^ {- r _ {c} \tau}} = - N \left(d _ {n}\right). \tag {17.64}
$$

$$
\frac {\partial c}{\partial B _ {2 t}} = \frac {\partial c}{\partial \sigma} \frac {\partial \sigma}{\partial B _ {2 t}} = \frac {\partial c / \partial \sigma}{\partial B _ {2 t} / \partial \sigma} = \frac {\frac {e ^ {- r _ {c} \tau} \sigma_ {n} n \left(d _ {n}\right)}{\sigma}}{e ^ {- r _ {c} \tau}} = \frac {\sigma_ {n} n \left(d _ {n}\right)}{\sigma}. \tag {17.65}
$$

Alternatively, let us simply start by assuming the option price is linearly homogeneous with respect to  $S_{t}$ ,  $B_{1t}$ , and  $B_{2t}$ . Note that we are not starting with any specified stochastic process. Using Euler's rule, we know that the current option price, which is a function of  $S_{t}$  and  $t$ , can be expressed as

$$
c _ {t} = \gamma S _ {t} + \omega B _ {1 t} + v B _ {2 t}, \tag {17.66}
$$

where  $\gamma$  is  $\partial c_t / \partial S_t$ ,  $\omega$  is  $\partial c_t / \partial B_{1t}$ , and  $v$  is  $\partial c_t / \partial B_{2t}$ . An interpretation of Equation (17.14) is that one call option can be replicated by holding  $\gamma$  units of the asset, each worth  $S_t$ , and  $(\omega + v)$  units of a risk-free bond with current value  $(X + \sigma)e^{-r_c\tau}$ .

The total differential of the option price is

$$
d c _ {t} = \gamma d S _ {t} + \omega d B _ {1 t} + v d B _ {2 t}. \tag {17.67}
$$

The differential  $dS_{t}$  can be left in this form. Recall we obtained the differential for the risk-free bonds in Equation (17.17). Thus, we note

$$
d B _ {1 t} = r _ {c} B _ {1 t} d t. \tag {17.68}
$$

$$
d B _ {2 t} = r _ {c} B _ {2 t} d t. \tag {17.69}
$$

Consequently, the call price differential is

$$
d c _ {t} = \gamma d S _ {t} + \omega r _ {c} B _ {1 t} d t + v r _ {c} B _ {2 t} d t. \tag {17.70}
$$

At this point, it is helpful to substitute  $c_{t} - \gamma S_{t}$  for  $\omega B_{1t} + \upsilon B_{2t}$  from Equation (17.14), leaving us

$$
d c _ {t} = \gamma d S _ {t} + \left(c _ {t} - \gamma S _ {t}\right) r _ {c} d t. \tag {17.71}
$$

Now, we assume only that the call price depends on  $S_{t}$  and  $t$  and that the underlying follows an Ito process expressed formally as  $dS_{t} = \alpha (S_{t},t)dt + \sigma (S_{t},t)dW_{t}$ . Allowing volatility to be nonconstant, Ito's lemma can be used to obtain an equivalent expression for the change in the price of the call,

$$
d c _ {t} = \frac {\partial c _ {t}}{\partial S _ {t}} d S _ {t} + \frac {\partial c _ {t}}{\partial t} d t + \frac {1}{2} \frac {\partial^ {2} c _ {t}}{\partial S _ {t} ^ {2}} \sigma^ {2} (S _ {t}, t) d t, \tag {17.72}
$$

which we can now set Equation (17.20) equal to Equation (17.19). And by choosing  $\gamma$  to equal  $\partial c_t / \partial S_t$ , we eliminate the risky term  $dS_{t}$ , leaving the following non-stochastic partial differential equation,

$$
c _ {t} r _ {c} = \frac {\partial c _ {t}}{\partial S _ {t}} r _ {c} S _ {t} + \frac {\partial c _ {t}}{\partial t} + \frac {1}{2} \frac {\partial^ {2} c _ {t}}{\partial S _ {t} ^ {2}} \sigma^ {2} (S _ {t}, t), \tag {17.73}
$$

which is a second order partial differential equation. This partial differential equation solution, subject to the boundary condition  $c_{T} = \max \left(0,S_{T} - X\right)$ , depends on the specification of the volatility term. The PDE in Equation (17.73) is not the Black-Scholes-Merton PDE unless we assume volatility is constant.

If we assume a generic arithmetic Brownian motion of the form  $dS_{t} = \alpha (S_{t},t)dt + \sigma dW_{t}$ , we obtain the ABM model which is the solution to

$$
c _ {t} r _ {c} = \frac {\partial c _ {t}}{\partial S _ {t}} r _ {c} S _ {t} + \frac {\partial c _ {t}}{\partial t} + \frac {1}{2} \frac {\partial^ {2} c _ {t}}{\partial S _ {t} ^ {2}} \sigma^ {2}, \tag {17.74}
$$

subject to the value at expiration of

$$
c _ {T} = \max  \left(0, S _ {T} - X\right). \tag {17.75}
$$

# APPENDIX 17B

# Multivariate Itô's Lemma

Consider  $n$  Itô processes at time  $t$ , expressed as

$$
d X _ {t} = \mu (X, t) d t + \Sigma (X, t) d W _ {t}, \tag {17.76}
$$

where

$$
d X _ {t} \equiv \left[ \begin{array}{c} d x _ {1} \\ d x _ {2} \\ \vdots \\ d x _ {n} \end{array} \right], \tag {17.77}
$$

$$
\mu (X, t) \equiv \left[ \begin{array}{c} \mu_ {1} (X, t) \\ \mu_ {2} (X, t) \\ \vdots \\ \mu_ {n} (X, t) \end{array} \right], \tag {17.78}
$$

$$
\Sigma (X, t) \equiv \left[ \begin{array}{c c c c} \sigma_ {1, 1} (X, t) & \sigma_ {1, 2} (X, t) & \dots & \sigma_ {1, m} (X, t) \\ \sigma_ {2, 1} (X, t) & \sigma_ {2, 2} (X, t) & \dots & \sigma_ {2, m} (X, t) \\ \vdots & \vdots & \ddots & \vdots \\ \sigma_ {n, 1} (X, t) & \sigma_ {n, 2} (X, t) & \dots & \sigma_ {n, m} (X, t) \end{array} \right], a n d \tag {17.79}
$$

$$
d W _ {t} \equiv \left[ \begin{array}{c} d W _ {1, t} \\ d W _ {2, t} \\ \vdots \\ d W _ {n, t} \end{array} \right]. \tag {17.80}
$$

Note that each Itô process can depend on up to  $m$  Wiener processes or

$$
d x _ {k, t} = \mu_ {k} (X, t) d t + \sum_ {j = 1} ^ {m} \sigma_ {k, j} (X, t) d W _ {j, t}. \tag {17.81}
$$

Suppose

$$
y _ {t} = f (X, t). \tag {17.82}
$$

Then

$$
\begin{array}{l} d y _ {t} = \left\{\frac {\partial f (X , t)}{\partial t} + \sum_ {k = 1} ^ {n} \frac {\partial f (X , t)}{\partial x _ {k}} \mu_ {k} (X, t) \right. \\ \left. + \frac {1}{2} \sum_ {i = 1} ^ {n} \sum_ {k = 1} ^ {n} \frac {\partial^ {2} f (X , t)}{\partial x _ {i} \partial x _ {k}} \sum_ {j = 1} ^ {m} \sum_ {l = 1} ^ {m} \sigma_ {i j} (X, t) \sigma_ {k l} (X, t) \rho_ {j l} (X, t) \right\} d t \\ + \sum_ {k = 1} ^ {n} \frac {\partial f (X , t)}{\partial x _ {k}} \sum_ {j = 1} ^ {m} \sigma_ {k, j} (X, t) d W _ {j, t}. \tag {17.83} \\ \end{array}
$$

# APPENDIX 17C

# Greeks of the Exchange Option Model

We obtain the first and second derivatives in symbolic form. The deltas with respect to the two asset prices were obtained previously but not carried out in detail. They are

$$
\begin{array}{l} \frac {\partial c (S _ {1} , S _ {2})}{\partial S _ {1}} = \frac {\partial S _ {2} c (S , 1)}{\partial S _ {1}} = S _ {2} \frac {\partial c (S , 1)}{\partial S _ {1}} = S _ {2} \frac {\partial c (S , 1)}{\partial S} \frac {\partial S}{\partial S _ {1}} = S _ {2} N (d _ {1}) \frac {1}{S _ {2}} = N (d _ {1}) \\ \frac {\partial c (S _ {1} , S _ {2})}{\partial S _ {2}} = \frac {\partial S _ {2} c (S , 1)}{\partial S _ {2}} = S _ {2} \frac {\partial c (S , 1)}{\partial S} \frac {\partial S}{\partial S _ {2}} + c (S, 1) = S _ {2} \frac {\partial c (S , 1)}{\partial S} \left(- \frac {S}{S _ {2}}\right) + c (S, 1) \\ = c (S, 1) - S \frac {\partial c (S , 1)}{\partial S} = c (S, 1) - S N \big (d _ {1} \big) \\ = S N \left(d _ {1}\right) - N \left(d _ {2}\right) - S N \left(d _ {1}\right) = - N \left(d _ {2}\right). \tag {17.84} \\ \end{array}
$$

Therefore, applying what we know from Black-Scholes-Merton, the gammas are obtained as

$$
\frac {\partial^ {2} c (S _ {1} , S _ {2})}{\partial S _ {1} ^ {2}} = \frac {\partial^ {2} c (S , 1)}{\partial S ^ {2}} \left(\frac {1}{S _ {2}}\right) = \frac {n (d _ {1})}{S \sigma \sqrt {\tau}} \left(\frac {1}{S _ {2}}\right) = \frac {n (d _ {1})}{S _ {1} \sigma \sqrt {\tau}}
$$

$$
\frac {\partial^ {2} c \left(S _ {1} , S _ {2}\right)}{\partial S _ {2} ^ {2}} = \frac {\partial^ {2} c (S , 1)}{\partial S ^ {2}} \left(\frac {S ^ {2}}{S _ {2}}\right) = \frac {n \left(d _ {2}\right)}{S _ {2} \sigma \sqrt {\tau}}. \tag {17.85}
$$

Hence, the theta is

$$
\frac {\partial c \left(S _ {1} , S _ {2}\right)}{\partial t} = - \frac {S _ {1} \sigma e ^ {- d _ {1} ^ {2} / 2}}{2 \sqrt {2 \pi T}}. \tag {17.86}
$$

Recall for us to arrive at theta, we first need the derivative with respect to time to expiration or

$$
\begin{array}{l} \frac {\partial c (S _ {1} , S _ {2})}{\partial \tau} = S _ {2} \frac {\partial c (S , 1)}{\partial \tau} = S _ {2} \left[ S \frac {\partial N (d _ {1})}{\partial d _ {1}} \frac {\partial d _ {1}}{\partial \tau} - \frac {\partial N (d _ {2})}{\partial d _ {2}} \frac {\partial d _ {2}}{\partial \tau} \right] \\ = S _ {2} \left[ S n (d _ {1}) \frac {\partial d _ {1}}{\partial \tau} - n (d _ {2}) \frac {(\partial d _ {1} - \sigma \sqrt {\tau})}{\partial \tau} \right] \\ = S _ {1} n \left(d _ {1}\right) \frac {\partial d _ {1}}{\partial \tau} - n \left(d _ {2}\right) \frac {\partial d _ {1}}{\partial \tau} + n \left(d _ {2}\right) \frac {\sigma}{2 \sqrt {\tau}}. \tag {17.87} \\ \end{array}
$$

We know the first two terms cancel and we obtain

$$
\frac {\partial c}{\partial \tau} = \frac {\sigma}{2 \sqrt {\tau}} n \left(d _ {2}\right). \tag {17.88}
$$

Recall we define theta as the derivative with respect to the point in time, that is,  $\partial c / \partial t$  and we defined the time to expiration as  $\tau = T - t$ . Hence,

$$
\Theta_ {c} = \frac {\partial c}{\partial t} = - \frac {\sigma S}{2 \sqrt {\tau}} n \left(d _ {1}\right). \tag {17.89}
$$

The vegas are

$$
\frac {\partial c (S _ {1} , S _ {2})}{\partial \sigma_ {1}} = S _ {1} n (d _ {1}) \sqrt {\tau} \left(\frac {\sigma_ {1} - \rho \sigma_ {2}}{\sigma}\right)
$$

$$
\frac {\partial c \left(S _ {1} , S _ {2}\right)}{\partial \sigma_ {2}} = S _ {1} n \left(d _ {1}\right) \sqrt {\tau} \left(\frac {\sigma_ {2} - \rho \sigma_ {1}}{\sigma}\right). \tag {17.90}
$$

And the partial derivative with respect to the correlation is

$$
\frac {\partial c \left(S _ {1} , S _ {2}\right)}{\partial \rho} = - S _ {1} n \left(d _ {1}\right) \sqrt {\tau} \left(\frac {\sigma_ {2} \sigma_ {1}}{\sigma}\right). \tag {17.91}
$$

Note that the risk-free rate does not appear in the price equation. Hence, there is no rho.

# QUESTIONS AND PROBLEMS

1 Given the following standard ABM model, demonstrate that it does not have the property of linear homogeneity in  $S_{t}$  and  $X$ , alone.

$$
c _ {t} = \left(S _ {t} - X e ^ {- r _ {c} \tau}\right) N \left(d _ {n}\right) + e ^ {- r _ {c} \tau} \sigma_ {n} n \left(d _ {n}\right), \text {w h e r e}
$$

$$
d _ {n} = \frac {S _ {t} - X e ^ {- r _ {c} \tau}}{\sigma_ {n}} \mathrm {a n d}
$$

$$
\sigma_ {n} = \sigma \sqrt {\frac {e ^ {- 2 r _ {c} \tau} - 1}{2 r}}.
$$

You are given the following partial derivatives:

$$
\frac {\partial c}{\partial S} = N \left(d _ {n}\right) \text {a n d}
$$

$$
\frac {\partial c}{\partial X} = - e ^ {- r _ {c} \tau} N (d _ {n}).
$$

2 Assume a stock has a \$1 price and a corresponding one year call option is at-the-money. Further, assume no dividends and the risk-free rate is zero. For this case, compare the results of the Black-Scholes-Merton model and ABM model.  
3 Demonstrate that American exchange options on non-dividend-paying assets will not be exercised early. Thus, American exchange options will be worth the same as European exchange options.  
4 A hedge fund recently hired a new and highly talented manager. In negotiations, they will receive  $20\%$  of any superior performance above the SPY (an exchange-traded fund that seeks to mimic an investment in the S&P 500 index) over the next year. If they underperform the SPY, then their compensation is zero. Based on this information, identify the valuation model that would provide the fair market value of this compensation scheme. Further, explain the manager's incentive based on this compensation scheme.  
5 For two constants,  $\alpha_{1} > 0$  and  $\alpha_{2} > 0$ , prove the following put-call parity representation:

$$
c \left(\alpha_ {1} S _ {1}, \alpha_ {2} S _ {2}\right) - p \left(\alpha_ {1} S _ {1}, \alpha_ {2} S _ {2}\right) = \alpha_ {1} S _ {1} - \alpha_ {2} S _ {2}.
$$

6 Prove the lower bound of a call spread option is  $c_{t} \geq \max \left(0, \alpha_{1} S_{1t} - \alpha_{2} S_{2t} - X e^{-r_{c}\tau}\right)$ .

# NOTES

1. Alternatively, we could assume each asset follows arithmetic Brownian motion with geometric drift. In this case, the subtraction of two normally distributed variables is also normally distributed, hence, arriving at the pricing model is straightforward.  
2. See Appendix 17B for a formal statement of the multivariate Itô's lemma.  
3. For extensive discussion of spread options, see Brooks and Cline (2015).


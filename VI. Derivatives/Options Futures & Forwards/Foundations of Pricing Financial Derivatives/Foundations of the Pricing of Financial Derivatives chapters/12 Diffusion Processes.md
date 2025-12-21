---
title: "Chapter 12: Properties of the Lognormal and Normal Diffusion Processes for Modeling Assets"
parent_directory: Foundations of the Pricing of Financial Derivatives chapters
formatted: 2025-12-21 02:30:00 PM
formatter_model: obsidian-formatting-agent
cli_tool: claude-code
primary_tags:
  - geometric brownian motion
  - arithmetic brownian motion
  - asset price modeling
  - stochastic differential equations
secondary_tags:
  - lognormal distribution
  - normal distribution
  - ito's lemma
  - wiener process
  - expected asset price
  - volatility modeling
  - gbm vs abm
  - diffusion processes
  - return distributions
  - price change processes
cssclasses: academia
---

# Properties of the Lognormal and Normal Diffusion Processes for Modeling Assets

In this chapter, we will take what we have already learned about stochastic processes and adapt it to the case of an asset. We will show how certain properties of the asset's return behavior are derived. Finally, we will show how to obtain the formula for the future asset price in terms of a base price and information on what happened in the intervening period. In examining the diffusion processes of assets, let us start by noting that there are many excellent treatments of the subject of this chapter and those in this entire unit. For further study, we recommend several that are particularly well written such as Shimko (1992), Neftci (2006), Ross (1999), and Malliaris and Brock (1982). In this chapter, we use the term asset to represent any of a variety of potential exposures, such as stocks, exchange rates, or combinations of assets, one of which we will introduce later in this chapter.

Recall that in Chapter 10, we obtained the stochastic process for the asset price in a heuristic manner. We started with four desirable properties for such a process summarized succinctly here:

1. The asset price may have a nonzero drift.  
2. Changes in the asset price are random.  
3. Over time, the asset price becomes more unpredictable.  
4. Over time, the asset price is nonnegative.

Based on these properties, we proposed geometric Brownian motion (GBM) with geometric drift. The GBM process has all four properties and can be expressed in two ways,

$$
dS_{t} = \alpha S_{t} dt + \sigma S_{t} dW_{t} \text{and}
$$

$$
\frac {d S _ {t}}{S _ {t}} = \alpha d t + \sigma d W _ {t}. \tag {12.1}
$$

One clear undesirable property evident in Equation (12.1) is the assumption that the underlying instrument is greater than zero or  $S_{t} > 0$ . That is, property (4) holds, but there is no chance for the underlying to be zero in the future. For numerous finance applications, this is simply inappropriate. For example, there is always a chance that a particular stock's price goes permanently to zero. Interest rates can and do go to zero as well as negative. Many financial risks involve differences in prices, such as profits, calendar-related

spreads, or product-related spreads. $^{1}$  Thus, we also explore properties of the normal diffusion process for modeling various financial applications because it admits zero and negative values.

Recall the random variable  $dW_{t}$  is the transformed Brownian motion, which we called a Wiener process. Recall that  $dW_{t}$  is normally distributed with  $E(dW_{t}) = 0$ ,  $\mathrm{var}(dW_{t}) = dt$ . Also, we noted that  $dW_{t}^{2}$  is non-stochastic and equal to  $dt$ . Using these results, the expectation and variance of Equation (12.1) are

$$
E\left(\frac{dS_{t}}{S_{t}}\right) = \alpha dt \text{and}
$$

$$
\operatorname{var}\left(\frac{dS_{t}}{S_{t}}\right) = \sigma^{2} dt. \tag{12.2}
$$

Given the fact that  $dS_{t} / S_{t}$  is just a linear transformation of a normally distributed random variable  $dW_{t}$ , then it is also normally distributed. In this chapter, we formally derive this stochastic process and some important results related to it.

Alternatively, we can model some underlying exposure with arithmetic Brownian motion (ABM). There are two forms of ABM, either with geometric drift or arithmetic drift. Recall from Chapter 10, we introduced the $ symbol to emphasize the unit of measure is the same as the asset price and not percentage. Thus, arithmetic Brownian motion with geometric drift (ABMGD) can be expressed as

$$
dS_{t} = \alpha S_{t} dt + \sigma_{\S} dW_{t}, \tag{12.3}
$$

or, depending on context, arithmetic Brownian motion with arithmetic drift (ABMAD) can be expressed as

$$
dS_{t} = \alpha_{\S} dt + \sigma_{\S} dW_{t}. \tag{12.4}
$$

These ABM processes resolve the undesirable property evident in Equation (12.1) because the underlying exposure can be positive, zero, or negative. Also, at times we may wish to have the underlying instrument growing geometrically (e.g., stocks) and at other times arithmetically (e.g., spreads such as refined petroleum and crude oil). Note that in this case relative return may be undefined if  $S_{t} = 0$  or lacking financial interpretation if  $S_{t} < 0$ . For the ABM stochastic process, we are interested in  $dS_{t}$  and not  $dS_{t} / S_{t}$ . Again, volatility, and perhaps mean, is measured in currency units and not percentage.

# 12.1 A STOCHASTIC PROCESS FOR THE ASSET RELATIVE RETURN

The relative return on the asset from a starting point of time 0 to a point of time  $dt$  is<sup>3</sup>

$$
\frac {S _ {d t}}{S _ {0}}. \tag {12.5}
$$

The relative return from time  $dt$  to time  $2dt$  is

$$
\frac {S _ {2 d t}}{S _ {d t}}. \tag {12.6}
$$

This pattern continues so that at a given future time  $T$ , the relative return is

$$
\frac {S _ {T}}{S _ {T - d t}}. \tag {12.7}
$$

Backing up to time 0, the relative return on the asset to time  $T$  is

$$
\frac {S _ {T}}{S _ {0}}. \tag {12.8}
$$

This return can be expressed by linking the successive relative returns,

$$
\frac {S _ {T}}{S _ {0}} = \left(\frac {S _ {d t}}{S _ {0}}\right) \left(\frac {S _ {2 d t}}{S _ {d t}}\right) \dots \left(\frac {S _ {T - d t}}{S _ {T - 2 d t}}\right) \left(\frac {S _ {T}}{S _ {T - d t}}\right). \tag {12.9}
$$

Now let us convert Equation (12.9) into the log or continuously compounded return,

$$
\ln \left(\frac {S _ {T}}{S _ {0}}\right) = \ln \left(\frac {S _ {d t}}{S _ {0}}\right) + \ln \left(\frac {S _ {2 d t}}{S _ {d t}}\right) + \dots + \ln \left(\frac {S _ {T - d t}}{S _ {T - 2 d t}}\right) + \ln \left(\frac {S _ {T}}{S _ {T - d t}}\right). \tag {12.10}
$$

We see that the log return for the period of time 0 to time  $T$  is the sum of the log returns of the subperiods from time 0 to time  $T$ . Now recall that the central limit theorem says that a random variable that is defined as the sum of a series of other random variables from any distribution that is constant approaches a normal distribution. Thus, we know that the return from time 0 to time  $T$  is normally distributed, provided the distribution of the intermediate returns is constant. We can also propose that each subperiod is infinitesimally small such that it, too, is made up of a series of component returns over infinitesimally small subperiods. Hence, it is reasonable to propose that the return over any arbitrary "short" period from  $t$  to  $t + dt$  is normally distributed with  $dt$  period expectation of  $\mu_p$  and variance of  $\sigma_p^2$ , which is formally written as

$$
\ln \left(\frac {S _ {t + d t}}{S _ {t}}\right) \sim N \left(\mu_ {p}, \sigma_ {p} ^ {2}\right). \tag {12.11}
$$

It is important to emphasize that when the price is lognormally distributed, the log of the relative return is normally distributed. Thus, the asset price is lognormally distributed. By definition, the log return is defined in the following manner:

$$
\ln \left(\frac {S _ {t + d t}}{S _ {t}}\right) = \ln S _ {t + d t} - \ln S _ {t} = d \ln S _ {t}. \tag {12.12}
$$

In other words, the log return is the change in the log values of the asset price at the beginning and ending of the holding period. We then propose that the log return follows the GBM stochastic process

$$
d \ln S _ {t} = \mu d t + \sigma d W. \tag {12.13}
$$

where the expectation and variance are, therefore,

$$
E (d \ln S _ {t}) = \mu d t
$$

$$
\operatorname{var}\left(d\ln S_{t}\right) = \sigma^{2} dt. \tag{12.14}
$$

Now, however, we want the return  $dS_{t} / S_{t}$ . Let us use the following transformation:

$$
G _ {t} = \ln S _ {t}, \tag {12.15}
$$

so that

$$
S _ {t} = \mathrm {e} ^ {\mathrm {G}}. \tag {12.16}
$$

We wish to find the stochastic process for  $S_{t}$ , so we can use Ito's lemma. Temporarily dropping the time subscript, we obtain

$$
d S = \frac {\partial S}{\partial G} d G + \frac {1}{2} \frac {\partial^ {2} S}{\partial G ^ {2}} d G ^ {2}. \tag {12.17}
$$

The partial derivatives are easily obtained as

$$
\frac {\partial S}{\partial G} = \mathrm {e} ^ {G} = S
$$

$$
\frac {\partial^ {2} S}{\partial G ^ {2}} = \mathrm {e} ^ {G} = S. \tag {12.18}
$$

Substituting these results, we get

$$
d S = S d G + \frac {1}{2} S d G ^ {2}. \tag {12.19}
$$

Because  $dG = d\ln S$ , the differentials,  $dG$  and  $dG^2$ , are

$$
d G = \mu d t + \sigma d W
$$

$$
d G ^ {2} = \sigma^ {2} d t. \tag {12.20}
$$

Substituting these results, we obtain

$$
d S = S \left(\mu d t + \sigma d W _ {t}\right) + \frac {1}{2} S \sigma^ {2} d t. \tag {12.21}
$$

Dividing both sides by  $S_{t}$  and adding the time subscript, we now have the stochastic process for  $dS_{t} / S_{t}$ ,

$$
\frac {d S _ {t}}{S _ {t}} = \left(\mu + \sigma^ {2} / 2\right) d t + \sigma d W _ {t}. \tag {12.22}
$$

Defining  $\alpha = \mu +\sigma^2 /2$  , we have

$$
\frac {d S _ {t}}{S _ {t}} = \alpha d t + \sigma d W _ {t}. \tag {12.23}
$$

And this is the equation we proposed heuristically in Chapter 10. We have now provided a formal derivation of its existence. The expectation and variance are

$$
E \left(\frac {d S _ {t}}{S _ {t}}\right) = \alpha d t
$$

$$
\operatorname{var}\left(\frac{dS_{t}}{S_{t}}\right) = \sigma^{2} dt. \tag{12.24}
$$

Thus, we now have the stochastic differential equations for the return (Equation (12.23)) and the log return (Equation (12.13)). The return over the longer horizon is  $dS_{T} / S_{0}$ , and the log return over the long horizon is normally distributed, which means that  $dS_{T} / S_{0}$  is lognormally distributed. Both the infinitesimal return,  $dS_{t} / S_{t}$ , and the infinitesimal log return,  $d\ln S_{t}$ , are normally distributed.

For those students who remember their calculus, they might more easily make the link that because  $d \ln S(t) = S'(t) / S'(t)$ , then  $d \ln S(t) = dS(t) / S(t) = \alpha dt + \sigma dW_t$ .

# 12.2 A STOCHASTIC PROCESS FOR THE ASSET PRICE CHANGE

The price change on the asset from a starting point of time 0 to a point of time  $dt$  is simply the dollar change or<sup>5</sup>

$$
d S _ {d t} = S _ {d t} - S _ {0}. \tag {12.25}
$$

The price change from time  $dt$  to time  $2dt$  is

$$
d S _ {2 d t} = S _ {2 d t} - S _ {d t}. \tag {12.26}
$$

This pattern continues so that at a given future time  $T$ , the price change is

$$
d S _ {T} = S _ {T} - S _ {T - d t}. \tag {12.27}
$$

Backing up to time 0, the price change on the asset to time  $T$  is

$$
\Delta S _ {T} = S _ {T} - S _ {0}. \tag {12.28}
$$

Thus a price change can be expressed by linking the successive returns,

$$
S _ {T} - S _ {0} = \left(S _ {d t} - S _ {0}\right) + \left(S _ {2 d t} - S _ {d t}\right) + \dots + \left(S _ {T - d t} - S _ {T}\right) + \left(S _ {T} - S _ {T - d t}\right). \tag {12.29}
$$

Note that due to the potential for nonpositive values, log transformations are not pursued with ABM. With price changes, we assume the change in asset value is normally distributed.

For ABM with arithmetic drift, we have the expected price change and price change variance are<sup>6</sup>

$$
E\left(dS_{t}\right) = \alpha_{\S} dt \text{and} \tag{12.30}
$$

$$
\operatorname{var}\left(dS_{t}\right) = \sigma_{\S}^{2} dt. \tag{12.31}
$$

With ABM with geometric drift, we have the expected price change and price change variance as follows:7

$$
E \left(d S _ {t}\right) = S _ {0} e ^ {\alpha d t} \tag {12.32}
$$

and

$$
\operatorname{var}\left(dS_{t}\right) = \left[ \begin{array}{ll} \sigma_{\S}^{2} \left(\frac{e^{2adt} - 1}{2\alpha}\right) & \text{if } \alpha \neq 0 \\ \sigma_{\S}^{2} dt & \text{if } \alpha = 0. \end{array} \right. \tag{12.33}
$$

# 12.3 SOLVING THE STOCHASTIC DIFFERENTIAL EQUATION

The equations for the relative return and log return are stochastic processes, as well as stochastic differential equations. A differential equation has a potential solution, which is a function such that the derivatives conform to the differential equation. In this context, a solution would be the asset price at some future time  $t$ , expressed in terms of the asset price at a previous time such as time 0.

To solve the stochastic differential equation, (12.23), we want to obtain a future price  $S_{t}$  in terms of a current price, say  $S_{0}$ . We take the equation for the log return, Equation (12.13) using  $dG_{\mathrm{t}}$  as the LHS, and integrate over the interval 0 to  $t$ ,

$$
\int_ {0} ^ {t} d G _ {j} = \int_ {0} ^ {t} \mu d j + \int_ {0} ^ {t} \sigma d W _ {j}. \tag {12.34}
$$

The left-hand side is clearly  $G_{t} - G_{0}$ . The first integral on the right-hand side of Equation (12.34) is a standard Riemann integral and equals

$$
\int_ {0} ^ {t} \mu d j = \mu \int_ {0} ^ {t} d j = \mu t. \tag {12.35}
$$

The second integral on the right-hand side of Equation (12.34) is a stochastic integral and, fortunately, one of the simplest of stochastic integrals. It is obtained as

$$
\int_ {0} ^ {t} \sigma d W _ {j} = \sigma \int_ {0} ^ {t} d W _ {j} = \sigma \left(W _ {t} - W _ {0}\right). \tag {12.36}
$$

In fact, in this case, the stochastic integral is so simple, it is the same as the Riemann integral. The variable  $W_{t}$  is the value of the Brownian motion process at time  $t$ . It is quite common that  $W_{0}$  is set at zero, so let us do it. So now we have  $\sigma W_{t}$  as the solution to Equation (12.36). Then  $G_{t} - G_{0} = \mu t + \sigma W_{t}$  is the solution to Equation (12.34). To get this solution in terms of  $S_{t}$  and  $S_{0}$ , we exponentiate this result,

$$
e ^ {G _ {t} - G _ {0}} = e ^ {\mu t + \sigma W _ {t}}. \tag {12.37}
$$

Because  $S_{t} = e^{G_{t}}$ , and  $S_0 = e^{G_0}$

$$
S _ {t} = S _ {0} e ^ {\mu t + \sigma W _ {t}}. \tag {12.38}
$$

Equation (12.38) is presumably the solution to the stochastic differential equation, (12.23). Now, to be absolutely certain that we have the correct solution, we need to check it by applying Ito's lemma to  $S_{t}$ , inserting the derivatives, and determining if we obtain (12.23). Our stochastic differential equation for  $S_{t}$  obtained from Ito's lemma is

$$
d S _ {t} = \frac {\partial S _ {t}}{\partial W _ {t}} d W _ {t} + \frac {\partial S}{\partial t} d t + \frac {1}{2} \frac {\partial^ {2} S _ {t}}{\partial W _ {t} ^ {2}} d W _ {t} ^ {2}. \tag {12.39}
$$

We then insert the partial derivatives that we obtain by differentiating the solution, Equation (12.38). The partial derivatives are

$$
\frac {\partial S _ {t}}{\partial W _ {t}} = S _ {t} \sigma
$$

$$
\frac {\partial^ {2} S _ {t}}{\partial W _ {t} ^ {2}} = S _ {t} \sigma^ {2}
$$

$$
\frac {\partial S _ {t}}{\partial t} = S _ {t} \mu . \tag {12.40}
$$

Now recall that  $dW_{t}^{2} = dt$ . Substituting these results into Equation (12.39) and rearranging, we obtain:

$$
\frac {d S _ {t}}{S _ {t}} = \alpha d t + \sigma d W _ {t}. \tag {12.41}
$$

This is the original stochastic process, Equation (12.23). Thus, our solution is correct.

# 12.4 SOLUTIONS TO STOCHASTIC DIFFERENTIAL EQUATIONS ARE NOT ALWAYS THE SAME AS SOLUTIONS TO CORRESPONDING ORDINARY DIFFERENTIAL EQUATIONS

Let us see how solving a stochastic differential equation (SDE) is different from solving an ordinary differential equation (ODE). Consider the ordinary differential equation:

$$
d y _ {t} = y _ {t} d W _ {t}, \tag {12.42}
$$

where  $W_{t}$  is non-stochastic. Remember that this means that we are absolutely certain of the value of  $W_{t}$ . This is a fairly simple ODE. Assuming  $y_{t} > 0$ , we start by rewriting the equation as

$$
\frac {1}{y _ {t}} \frac {d y _ {t}}{d W _ {t}} d W _ {t} = d W _ {t}. \tag {12.43}
$$

We now integrate over 0 to  $t$ :

$$
\int_ {0} ^ {t} \frac {1}{y _ {s}} \frac {d y _ {s}}{d W _ {s}} d W _ {s} = \int_ {0} ^ {t} d W _ {s}. \tag {12.44}
$$

With  $W_0 = 0$ , the solution is  $\ln y_t = W_t$  or alternatively,  $y_t = e^{\mathrm{W}_t}$ .<sup>8</sup>

Now we let  $W_{t}$  be stochastic. We start by proposing a general form for the solution. Specifically, we shall say that  $y_{t} = e^{x_{t}}$ . In other words,  $x_{t}$  is some function that solves the equation and in which  $x_{t}$  is a function of  $W_{t}$ . In the special case  $x_{t} = 0$ , we have  $y_{0} = 1$ . In the ODE case,  $x_{t} = W_{t}$ . First, we use Ito's lemma on  $x_{t}$  and obtain

$$
d x _ {t} = \frac {\partial x _ {t}}{\partial y _ {t}} d y _ {t} + \frac {1}{2} \frac {\partial^ {2} x _ {t}}{\partial y _ {t} ^ {2}} d y _ {t} ^ {2}. \tag {12.45}
$$

The partial derivatives are  $\partial x_{t} / \partial y_{t} = 1 / y_{t}$  and  $\partial^2 x_t / \partial y_t^2 = -(1 / y_t^2)$ . We also have  $dy_{t} = y_{t}dW_{t}$  and  $dy_{t}^{2} = y_{t}^{2}dt$ , due to the properties of  $dW_{t}$ . Substituting these results, we obtain

$$
d x _ {t} = d W _ {t} - \frac {1}{2} d t. \tag {12.46}
$$

Now we perform the integration,

$$
\int_ {0} ^ {t} d x _ {s} = \int_ {0} ^ {t} d W _ {s} - \int_ {0} ^ {t} \frac {1}{2} d s
$$

$$
x _ {t} - x _ {0} = \mathrm {W} _ {t} - t / 2. \tag {12.47}
$$

With  $x_{t} = \ln y_{t}$  , then

$$
y _ {t} = e ^ {\mathrm {W} _ {t} - t / 2}. \tag {12.48}
$$

Notice that now we have an additional term  $t / 2$ . Thus, at least in this common situation, and quite often otherwise, the solution to an SDE is not the same as a solution to an ODE.

# 12.5 FINDING THE EXPECTED FUTURE ASSET PRICE

Given the solution,

$$
S _ {t} = S _ {0} e ^ {\mu t + \sigma \mathrm {W} _ {t}}, \tag {12.49}
$$

to the stochastic differential equation, we shall now use it to obtain the expected asset price at  $t$ . Such a concept is commonly seen in real markets, such as when someone asks an analyst, "Where do you think the Dow will be in a year?" Using Equation (12.49), we express the problem as follows:

$$
E \left(S _ {t}\right) = S _ {0} E \left(e ^ {\mu t + \sigma \mathrm {W} _ {t}}\right) = S _ {0} e ^ {\mu t} E \left(e ^ {\sigma \mathrm {W} _ {t}}\right). \tag {12.50}
$$

This expectation is evaluated by recognizing that  $W_{t}$  is normally distributed. We are reminded that the probability density for a normally distributed random variable  $W_{t}$ , which has mean zero and variance  $t$ , is

$$
f \left(\mathrm {W} _ {t}\right) = \frac {1}{\sqrt {2 \pi t}} e ^ {- \mathrm {W} _ {t} ^ {2} / 2 t}. \tag {12.51}
$$

Thus, we can find the expected value of  $S_{t}$  by evaluating the following expression:

$$
E \left(e ^ {\sigma W _ {t}}\right) = \int_ {- \infty} ^ {\infty} e ^ {\sigma W _ {t}} \frac {1}{\sqrt {2 \pi t}} e ^ {- W _ {t} ^ {2} / 2 t} d W _ {t}. \tag {12.52}
$$

We express the right-hand side as

$$
\int_ {- \infty} ^ {\infty} \frac {1}{\sqrt {2 \pi t}} e ^ {\sigma \mathrm {W} _ {t}} e ^ {- \mathrm {W} _ {t} ^ {2} / 2 t} d \mathrm {W} _ {t}. \tag {12.53}
$$

Working on the exponent, we obtain

$$
\begin{array}{l} \sigma W _ {t} - W _ {t} ^ {2} / 2 t = \frac {2 \sigma W _ {t} t - W _ {t} ^ {2}}{2 t} \\ = \frac {2 \sigma W _ {t} t - W _ {t} ^ {2}}{2 t} + \frac {\sigma^ {2} t}{2} - \frac {\sigma^ {2} t}{2} \\ = \frac {2 \sigma W _ {t} t - W _ {t} ^ {2} - \sigma^ {2} t ^ {2}}{2 t} + \frac {\sigma^ {2} t}{2} \\ = - \frac {1}{2} \frac {\left(W _ {t} - \sigma t\right) ^ {2}}{t} + \frac {\sigma^ {2} t}{2}. \tag {12.54} \\ \end{array}
$$

So now we have

$$
e ^ {\sigma^ {2} t / 2} \int_ {- \infty} ^ {\infty} \frac {1}{\sqrt {2 \pi t}} e ^ {- \frac {1}{2} \left(\frac {\mathrm {W} _ {t} - \sigma t}{\sqrt {t}}\right) ^ {2}} d \mathrm {W} _ {t}. \tag {12.55}
$$

The integrand is the probability density function for a normally distributed random variable with mean  $\sigma t$  and variance  $t$  and, by definition, integrates to a value of 1.0. Thus,

$$
E \left(e ^ {\sigma W _ {t}}\right) = e ^ {\sigma^ {2} t / 2}. \tag {12.56}
$$

So our expectation is,

$$
E \left(S _ {t}\right) = S _ {0} e ^ {\mu t + \sigma^ {2} t / 2} = S _ {0} e ^ {(\mu + \sigma^ {2} / 2) t}. \tag {12.57}
$$

Note that this result is also equal to  $E(S_{t}) = S_{0}e^{\alpha t}$  because  $\alpha = \mu +\sigma^{2} / 2$ . This is an intuitively simple result. It says that the expected future asset price is the current asset price compounded at the expected rate of return.

We now explore the choice of modeling financial problems with either GBM or ABM.

# 12.6 GEOMETRIC BROWNIAN MOTION OR ARITHMETIC BROWNIAN MOTION?

The key focus of this book is addressing approaches to valuing financial derivatives. Based on materials covered thus far, there appears to be a key decision to be made in our journey. Do we go with GBM or ABM?

In their exploration of this question, Brooks and Brooks (2017) explore the genesis of the decision to pursue GBM over ABM. Historically, the first approach was ABM introduced by Bachelier (1900). In France, during Bachelier's time, option contracts technically could admit negative strike prices. Further, it was only a few decades prior to Bachelier's work that France introduced the Limited Liability Acts on July 24, 1867. For a host of reasons, French companies were slow in adopting a limited liability charter.[9] Thus, it appears possible that Bachelier addressed options on company stock that had unlimited liability or a potential for negative prices. Although we will never know if these features motivated Bachelier to pursue ABM over GBM, it is an interesting artifact.

Osborne (1959) provided one of the original analyses of continuously compounded stock returns. Based on the observation that for percentage changes less than  $15\%$  there is not a material difference between modeling with the normal or lognormal distributions, he opted for the lognormal distribution based on the lognormal appearance of the cross-sectional distribution of stock prices.[10] Sprenkle (1961) argued in favor of the lognormal distribution due to it having no chance of negative values. Alexander (1961) raised some concerns regarding this choice due to time series financial data exhibiting fat tails.

Samuelson (1965) seems to have created the phrase "geometric Brownian motion." He opted for GBM over ABM primarily due to the nonnegativity of the lognormal distribution and some technical problems with Bachelier's (1900) model.[11] Following Samuelson (1965), Black and Scholes (1973) as well as Merton (1973) chose GBM.

Brooks and Brooks (2017) identify several issues related to the choice between modeling the underlying with either the lognormal or normal distribution. We briefly highlight a few here:

Positive values,  $S_{t} > 0$ . With GBM, there is a zero probability of the asset price being zero in the future. ABM solves this problem. Based on US Census data, approximately  $0.7\%$  of businesses file for some form of bankruptcy each year. Thus, some percentage of these bankruptcy filing companies result in equity prices being permanently zero. Note there is a fundamental difference between legal bankruptcy, such as a court filing, and economic bankruptcy, such as the stock being deemed worthless. Many legal bankruptcies do not result in economic bankruptcy.  

- Portfolios,  $\Pi_{t} = \sum_{i=1}^{n} N_{i} S_{i,t}$ . With GBM, a simple portfolio of assets follows no known statistical distribution. Thus, internal coherence of risk measures is not feasible due to the lack of the additive property of the lognormal distribution. ABM solves this problem.  
Time-series independence. With GBM, changes in the asset returns are assumed to be independent of the asset price itself. ABM suffers from dependence particularly over long periods of time. For example, if a stock price doubles in value, the absolute volatility of price changes does not automatically double with arithmetic Brownian motion.

- Factor models,  $S_{t} = f(x_{1},x_{2},\ldots ,x_{n})$ . An asset can have multiple risk factors. ABM can easily handle multiple factors, whereas with GBM it is a difficult challenge. Mathematically, the two approaches can be expressed as

$$
\begin{array}{l} dS_{t} = \mu(S, t) dt + \sum_{i=1}^{n} \sigma_{\S,i}(t) dW_{i} (\mathrm{ABM}) \text{and} \\ dS_{t} = \mu(S, t) dt + \sum_{i=1}^{n} \sigma_{i}(t) x_{i} dW_{i}. (\mathrm{GBM}) \\ \end{array}
$$

Clearly, the ABM version results in the terminal distributions being normally distributed, whereas the GBM version follows no known tractable distribution.

Evidence. Finance is an empirical science; hence, the model choice depends heavily on financial market behavior. For example, asset prices often behave significantly different in other countries when compared to the US. Thus, access to alternative frameworks is justified.  

- Risk. Risk can be represented based on relative measures (\%) or absolute measures (\( or other currency). Stock splits require ABM to manually adjust absolute volatility, but there is a leverage effect that is implicitly handled by ABM. The leverage effect is the intuitive observation that as a stock price declines it becomes more highly leveraged. Thus, by definition the stock price would be expected to be more volatile in a relative sense. GBM automatically adjusts for stock splits, but the leverage effect is ignored.  
Extreme volatilities. ABM can handle extreme volatilities better than GBM. For example, with simulations, the lognormal distribution is numerically unstable for high volatilities. In practice, option volatilities in excess of  $100\%$  are common for some options. For example, relative volatilities have been found to be above  $1,000\%$  for electricity options. Shocking, indeed!  
- Binomial convergence. GBM can be derived from a multiplicative binomial process. ABM implies an additive binomial process. Both lattices can be modeled to converge to the appropriate terminal distributions.  
- Homogeneity of degree 1. GBM-based models typically are homogeneous of degree 1, whereas ABM-based models are not. $^{12}$  For example, within an ABM framework stock splits will result in option pricing models that do not properly adjust. Scaling absolute volatility, however, can easily solve this problem.  
- Geometric drift. Both ABM and GBM can handle geometric drift.

Ultimately, the choice between ABM-based models or GBM-based models should be based on which model provides the most useful information for improving the financial decision-making process. The better approach for one type of financial process may not be the better approach for another. Thus, there is good reason to study both.

# 12.7 RECAP AND PREVIEW

In this chapter, we took what we have already learned about stochastic processes and adapted it to the case of an asset. We showed how certain properties of the asset's return behavior are derived out of the model. We showed how to obtain the formula for the future

asset price in terms of a base price and information on what happened in the intervening period. We also examined and compared both arithmetic Brownian motion and GBM.

In the following chapter, we shall do what we have been alluding to many times: derive the Black-Scholes-Merton model.

# QUESTIONS AND PROBLEMS

1 Geometric Brownian motion with geometric drift is often represented in one of two ways:

$$
d S _ {t} = \alpha S _ {t} d t + \sigma S _ {t} d W _ {t} a n d
$$

$$
d S _ {t} = (\mu + \sigma^ {2} / 2) S _ {t} d t + \sigma S _ {t} d W _ {t}.
$$

In the finance context, explain the economic relationship between  $\alpha$  and  $\mu$ .

2 Mathematically, there are significant differences between GBM with geometric drift and ABM with geometric drift. In early empirical work on stock prices, Osborne (1959) asserted, "Percentage changes of less than 15 per cent, expressed as fractions from unity, are very nearly natural logarithms of the same ratio" (p. 146). Identify five important issues related to the choice of GBM or ABM.  
3 Volatility is often reported as a standard deviation,  $\sigma$ . If we assume the standard deviation itself follows GBM with geometric drift, what is the stochastic process of the variance as well as its mean and variance?  
4 Assuming  $S_{t}$  follows geometric Brownian motion, explain the relationship between  $E[\ln (S_T / S_0)]$  and  $\ln [E(S_T) / S_0]$ .  
5 Based on a historical analysis of a tech company, the annualized average arithmetic return was  $29.4\%$  and the annualized average geometric return was  $25.95\%$ . The annualized standard deviation of arithmetic returns was  $26.2\%$ . Based on the analysis contained in this chapter, how can you explain the relationship between these two annualized returns?

# NOTES

1. Profits are simply revenues minus expenses. An example of a calendar spread is the difference between the wholesale price of a good purchased in June and the retail price of the same good sold in December. An example of a product spread is the cost of crude oil purchased by a refinery and the subsequent price of refined products sold.  
2. A linear transformation of a normally distributed variable  $x$  to a variable  $y$  by multiplying  $x$  by a constant and adding a constant preserves the normality.  
3. Technically, we may consider using  $\Delta t$  in this explanation rather than  $dt$ . Given the context here of diffusion processes, we simply use  $dt$ .  
4. In a lognormal distribution, the log return is normally distributed.  
5. Here we use  $dS$  to mean changes over short time periods and  $\Delta S$  to mean long time period.  
 6. Recall we use $ symbol to emphasize the different unit of measure with ABM.  
7. The proof of this result is covered in Chapter 11. See Section 11.5.1.
8. The reason we know this is the solution is that the derivative of the natural log function is  $(1 / y_{t})$  times the derivative of  $y_{t}$  with respect to  $W_{t}$ .  
9. See, for example, Antoin E. Murphy, "Corporate Ownership in France: The Importance of History," NBER, Working Paper 10716, 2004, http://www.nber.org/papers/w10716.  
10. A cross-sectional distribution is taken at a point in time but examines different instruments, such as stock prices. Time series distribution is taken across time for selected instruments, again such as stock prices.  
11. Without limited liability, a call option can be higher than the corresponding stock price because the call enjoys limited liability, whereas the underlying stock does not.  
12. Homogeneity is covered in detail in Chapter 17 but mentioned here just to have an exhaustive list of the issues related to GBM and ABM.


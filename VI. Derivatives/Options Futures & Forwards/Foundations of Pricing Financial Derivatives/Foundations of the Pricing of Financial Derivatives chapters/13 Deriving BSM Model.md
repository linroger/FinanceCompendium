---
aliases:
  - Deriving the Black-Scholes-Merton Model
tags:
key_concepts:
parent_directory: Foundations of the Pricing of Financial Derivatives chapters
cssclasses: academia
title: "Chapter 13: Deriving the Black-Scholes-Merton Model"
linter-yaml-title-alias: "Chapter 13: Deriving the Black-Scholes-Merton Model"
---

# Deriving the Black-Scholes-Merton Model

From the basic principles associated with the standard geometric Brownian motion stochastic process used in modeling asset prices and with an understanding of Itô's lemma, we can now derive the Black-Scholes-Merton (Black and Scholes 1973; Merton 1973b) model for pricing European options. Let the asset price follow the standard lognormal diffusion process given by the stochastic differential equation known as geometric Brownian motion,

$$
\frac {d S _ {t}}{S _ {t}} = \alpha d t + \sigma d W _ {t}, \tag {13.1}
$$

where  $dS_{t}$  is the change in the asset price per unit of time  $dt$ ,  $S_{t}$  is the asset price at time  $t$ ,  $\alpha$  is the drift or expected rate of return on the asset,  $\sigma$  is the volatility of the return on the asset, and  $dW_{t}$  is the Wiener process that represents the uncertainty. Equation (13.1) describes the rate of return on the asset. Recall that  $dW_{t} = \varepsilon_{t}\sqrt{dt}$ , where  $\varepsilon_{t}$  is a standard normal random variable (mean 0, variance 1) and that the key properties of  $dW_{t}$  are that  $E\big(dW_t\big) = 0$ ,  $\mathrm{var}\big(dW_t\big) = dt$ , and that  $dW_{t}^{2} = dt$ .

# 13.1 DERIVATION OF THE EUROPEAN CALL OPTION PRICING FORMULA

Consider a European call option with exercise price  $X$ . The option price is assumed to be a function of only two variables: the asset price and time. Thus, we write the option price function in its general form as  $c(S_{t}, t)$  and more loosely as  $c_{t}$ , which denotes the option price at time  $t$  and where the option price is implicitly a function of the asset price at time  $t$ ,  $S_{t}$ . The option's time to expiration is  $\tau = T - t$ . At expiration, the option price is  $c_{T} = \max \left(0, S_{T} - X\right)$ .

Let us construct a hedge portfolio consisting of  $h$  units of the asset and one short call option. The value of this portfolio at time  $t$  is

$$
V _ {t} = b S _ {t} - c _ {t}. \tag {13.2}
$$

The value  $h$  could be subscripted with a  $t$ , as its value is set and known at  $t$ . We hold  $h_t$  units of the asset per one short call. As we move forward, the value of our holdings changes due to changes in the value of the asset and the call and the increment of time. We are still holding  $h_t$  units of the asset and one short call. As noted later, we shall have to reset  $h_t$

according to the new market conditions, such as at time  $t + dt$  to obtain  $h_{t + dt}$ . Thus,  $h_t$  is set at  $t$  and remains constant until we rebalance, which occurs after we determine how our portfolio has performed. Consequently, for the purpose of this derivation, we can treat  $h_t$  as a constant and denote it as  $h$ .

Our objective is to make this portfolio risk free. Because the call price is a function of  $S_{t}$ , which follows the stochastic differential equation in (13.1), and  $t$ , we use Ito's lemma to express the call price change in terms of the changes in  $S_{t}$  and  $t$ ,<sup>2</sup>

$$
d c = \frac {\partial c}{\partial S} d S + \frac {\partial c}{\partial t} d t + \frac {1}{2} \frac {\partial^ {2} c}{\partial S ^ {2}} d S ^ {2}. \tag {13.3}
$$

Given Equation (13.1) and the properties of the Wiener process,  $d\mathrm{W}_t$ , we know that  $dS^2 = S^2\sigma^2 dt$ . Henceforth, we shall make this substitution whenever we use the result from Ito's lemma.

We know that the value of the portfolio, Equation (13.2), is a function of the asset price and the option price. Hence, using the total differential rule, we can express the change in the value of the portfolio as

$$
d V = \frac {\partial V}{\partial S} d S + \frac {\partial V}{\partial c} d c. \tag {13.4}
$$

From Equation (13.2), we can determine the partial derivatives as

$$
\frac {\partial V}{\partial S} = b
$$

$$
\frac {\partial V}{\partial c} = - 1. \tag {13.5}
$$

Thus, the change in the value of the portfolio is

$$
d V = h d S - d c. \tag {13.6}
$$

Substituting from Ito's lemma, Equation (13.3), for  $dc$  in (13.6) gives

$$
d V _ {t} = h d S - \left(\frac {\partial c}{\partial S} d S + \frac {\partial c}{\partial t} d t + \frac {1}{2} \frac {\partial^ {2} c}{\partial S ^ {2}} S ^ {2} \sigma^ {2} d t\right). \tag {13.7}
$$

Equation (13.7) is a stochastic partial differential equation that defines the change in the value of the portfolio in terms of several expressions. Observe that the stochastic terms are the  $dS$  terms but note that they amount to the simple expression  $h dS - (\partial c / \partial S) dS$ . We are free to set  $h$  to whatever we want as long as its value can be determined before the asset price changes. It should be apparent that by setting  $h$  to  $\partial c / \partial S$ , the two  $dS$  terms cancel, leaving the following expression for the change in the value of the portfolio:

$$
d V = - \left(\frac {\partial c}{\partial t} d t + \frac {1}{2} \frac {\partial^ {2} c}{\partial S ^ {2}} S ^ {2} \sigma^ {2} d t\right). \tag {13.8}
$$

Notice in Equation (13.8) that there are no stochastic terms, so this portfolio is perfectly hedged. Thus, to avoid arbitrage the portfolio value,  $V$ , must increase at the risk-free rate. This specification is made by the requirement that

$$
d V = V r _ {c} d t. \tag {13.9}
$$

We now substitute  $hS - c = (\partial c / \partial S)S - c$  for  $V$  in Equation (13.9) to obtain

$$
d V = \left(\frac {\partial c}{\partial S} S - c\right) r _ {c} d t. \tag {13.10}
$$

We now have two expressions for  $dV$ , Equations (13.8) and (13.10). Equating these and canceling the  $dt$  terms gives

$$
r _ {c} S \frac {\partial c}{\partial S} + \frac {\partial c}{\partial t} + \frac {1}{2} \frac {\partial^ {2} c}{\partial S ^ {2}} \sigma^ {2} S ^ {2} = r _ {c} c. \tag {13.11}
$$

Equation (13.11) is a partial differential equation of which the unique solution,  $c$ , is the call option price. The unique solution is determined by the boundary conditions, which refers to the value of  $c$  at the option expiration. In the case of a European call, the condition is that  $c_{T} = \max \left(0, S_{T} - X\right)$ . Equation (13.11), or a variation of it, appears frequently in derivative pricing theory and is often termed the Black-Scholes-Merton partial differential equation.

Equation (13.11), formally a second-order parabolic partial differential equation, is actually a variation of a famous equation in physics that models the transfer of heat. The solution procedure is well known to physicists and one version of it is presented later in this chapter. Black and Scholes (1973) first obtained the solution by taking advantage of previous research on option pricing that produced an idea of what the solution would look like. Bachelier (1900) had derived the solution under arithmetic Brownian motion.4 Several other researchers derived similar solutions under diverse assumptions, but the key complication was that none of this earlier work on option pricing used the risk-free hedge.5 As such, they all require the use of a discount rate that reflected the risk premium that an investor would demand to hold an option. Risk premia are not observable in the market, and they require that the model incorporate assumptions about the risk preferences of investors. These requirements are fairly standard in general equilibrium models, such as the capital asset pricing model and most models of macroeconomic equilibrium. These models typically aggregate the demand and supply of assets and produce an equilibrium price, as well as the optimal holdings of assets by individuals. These models are powerful but demanding ones that impose many restrictions on their users and can be very difficult to empirically estimate and to implement in practice.

Partial equilibrium models, however, derive prices and certain other pieces of information only for sectors within a market or economy. For example, a partial equilibrium option pricing model derives the price of an option as well as the hedge ratio and the option sensitivities to changes in its inputs. It does not, however, tell us how many, if any, options a market participant would hold. Nonetheless, partial equilibrium models are valuable for pricing and trading instruments such as options, keeping in mind, however, that they apply only to this sector of the market.

The early research on option pricing produced partial equilibrium models, but these models imposed certain general equilibrium requirements, meaning that we needed to

know something about investor risk preferences and the rates at which they would discount risky future cash flows. These requirements are quite strong. Hence, these models never gained much acceptance.

The key insight provided by Black, Scholes, and Merton of the risk-free hedge was a giant leap forward in economic and financial theory. Interestingly, there is some indication that a mathematically oriented practitioner, Ed Thorp, working with Sheen Kassouf (1967), developed the model before Black, Scholes, and Merton did. Thorp and Kassouf, however, did the wise thing and kept it to themselves, apparently making a considerable amount of money. Black, Scholes, and Merton did credit Thorp and Kassouf for the idea of risk-free hedging. $^{6}$  For a history of the development of the ideas behind the model, see Szpiro (2011).

Despite their limitations, each of the option pricing formulas that preceded Black-Scholes-Merton resembles the correct solution as found by Black, Scholes, and Merton. Black and Scholes originally derived the equation by using the capital asset pricing model, which provides the equation for the expected return on a risky asset as a function of its risk. Though Black had a PhD in applied mathematics from Harvard, he was not aware that the differential equation was the heat transfer equation. It is rumored that someone else noticed and showed him how to obtain the solution. At approximately the same time, Robert Merton (1973b) wrote a paper developing the model with virtually the full mathematical solution. It is not clear whether Merton or Black and Scholes came up with the result first, but Black and Scholes have without doubt received the most credit, because the model is more often known as the Black-Scholes model.<sup>7</sup> The model should probably be called the Black-Scholes-Merton model, and we shall do so, but Merton has never really received full credit. Black died in 1995, and in 1997, Merton and Scholes received the Nobel Prize in Economics for this work.

The solution to the equation is the Black-Scholes-Merton option pricing model,

$$
c = S N \left(d _ {1}\right) - X e ^ {- r _ {c} \tau} N \left(d _ {2}\right), \tag {13.12}
$$

where

$$
d _ {1} = \frac {\ln (S / X) + \left(r _ {c} + \sigma^ {2} / 2\right) \tau}{\sigma \sqrt {\tau}}
$$

$$
d _ {2} = \frac {\ln (S / X) + \left(r _ {c} - \sigma^ {2} / 2\right) \tau}{\sigma \sqrt {\tau}} = d _ {1} - \sigma \sqrt {\tau}. \tag {13.13}
$$

The value  $N(d_{i}), i = 1,2$ , is the cumulative normal probability,

$$
N \left(d _ {i}\right) = \int_ {- \infty} ^ {d _ {i}} \frac {1}{\sqrt {2 \pi}} e ^ {- x ^ {2} / 2} d x. \tag {13.14}
$$

Note that the expected return on the asset is not a factor in pricing the option. All of the information needed to capture investor risk preferences is embedded in the price of the underlying,  $S$ . If we attempted to incorporate risk preferences by, say, using a discount rate greater than the risk-free rate, we would be double counting, that is, penalizing the option twice for the effect of risk.

Of the five inputs into the model, four are easily observable. We know the price of the asset,  $S$ . The option contract specifies the exercise price,  $X$ , and when the option expires. The time to expiration,  $\tau$ , is simply the number of remaining days divided by 365. The risk-free rate,  $r_c$ , would be the continuously compounded rate on a risk-free security that matures at the option expiration. The only remaining factor is the volatility, and it is indeed an unobservable factor. Investors will have different opinions on the volatility, and this diversity of opinions will generate trading. $^8$

# 13.2 THE EUROPEAN PUT OPTION PRICING FORMULA

The model for pricing a European put is easily derived from put-call parity. We know that

$$
p = c - S + X e ^ {- r _ {c} \tau}. \tag {13.15}
$$

We can then substitute into Equation (13.15) for  $c$  from the Black-Scholes-Merton formula, Equation (13.12) to obtain

$$
p = X e ^ {- r _ {c} \tau} N (- d _ {2}) - S N (- d _ {1}). \tag {13.16}
$$

Alternatively, the put option pricing model can be derived by setting up a risk-free hedge involving the holding of  $h$  units of the asset while being long one put. The derivation would proceed exactly as in the call option pricing model derivation, except that the boundary condition would be  $p_{T} = \max \left(0,X - S_{T}\right)$ , and the hedge ratio  $b$  would be found to be  $\partial p / \partial S$ . From put-call parity, Equation (13.15), we can see that  $\partial p / \partial S = \partial c / \partial S - 1$ .

Interestingly, Rubinstein (1991b) has shown that the Black-Scholes-Merton call and put models can be written compactly as

$$
\nu = \imath S N (\imath d) - \imath X e ^ {- r _ {c} \tau} N \Big [ \imath \Big (d - \sigma \sqrt {\tau} \Big) \Big ]
$$

where

$$
d = \frac {\ln \left(\frac {S}{X}\right) + \left(r _ {c} + \frac {\sigma^ {2}}{2}\right) \tau}{\sigma \sqrt {\tau}}
$$

$$
\iota = \left\{ \begin{array}{l} + 1 \text {f o r c a l l} \\ - 1 \text {f o r p u t ,} \end{array} \right. \tag {13.17}
$$

where  $\nu$  is the value of the option, whether a call or a put.

Once the Black-Scholes-Merton equation is found, one can determine the partial derivatives, which can then be substituted back into the partial differential equation to verify that the solution is correct. In Chapter 14, we examine the comparative statics of the Black-Scholes-Merton option pricing model and use these derivatives to verify the solution.

# 13.3 DERIVING THE BLACK-SCHOLES-MERTON MODEL AS AN EXPECTED VALUE

Another approach to deriving the Black-Scholes-Merton model is to treat the option as if it were valued in a world of risk-neutral investors. The Black-Scholes-Merton price is then found as the present value of the expected call price at expiration. We term this solution methodology as the expectations approach.

In such a world, investors are not concerned about risk, and the risk-free rate is an appropriate discount rate. Thus,

$$
c = e ^ {- r _ {c} \tau} E _ {t} \left(c _ {T}\right). \tag {13.18}
$$

The use of risk neutrality may appear to be unpalatable, but it is entirely appropriate in option pricing, as we discussed in previous chapters. We have already noted that the expected return on the asset is not a factor in the Black-Scholes-Merton model. The risk preferences of investors are reflected in an asset's expected return; thus, the Black-Scholes-Merton model does not require an adjustment for investor risk preferences. We are not assuming that investors are actually risk neutral. On the contrary, virtually all investors are risk averse, but their feelings about risk are reflected in the asset price. Risk is priced in the market for the underlying asset, and the price of risk, what we call the risk premium, shows up in the price of the asset. All other things equal, the price of the asset is lower if there is more risk or if the degree of risk aversion of investors increases, but the risk aversion is embedded in the asset price, and we do not have to take it into account in pricing the option. Of course, these are points we have already made, but they must be recalled and accepted to proceed further.

The process of pricing an option via risk neutrality amounts to taking discounted expectations under an equivalent martingale probability distribution. The price of any asset that trades in a no-arbitrage world can be obtained as the discounted expectation of its future payoff, where the probabilities that determine its expectation are called equivalent martingale probabilities and the discount rate is the risk-free rate. A martingale is a stochastic process in which the expectation of an asset's future value is its current value. As has been shown elsewhere, a world of no-arbitrage is equivalent to a world in which the asset price can be obtained using the probabilities that would exist if investors were risk neutral; discounting then proceeds at the risk-free rate. In option pricing theory, we should be confident that no arbitrage opportunities exist and we can take investors' feelings about risk as given and reflected already in the asset price. No further adjustment for risk is required and indeed any further adjustment would be a double penalty. Let us state more formally that our option price is

$$
c = e ^ {- r _ {c} \tau} E _ {t} ^ {Q} \left(c _ {T}\right), \tag {13.19}
$$

which means that the expectation of the option payoff,  $c_{T}$ , is taken at time  $t$  using equivalent martingale probabilities and discounted to the present at the risk-free rate. Now let us proceed to evaluate this expression.

Recall from our model that  $dW = \varepsilon \sqrt{dt}$ . The time increment over the life of the option is  $\Delta t = \tau$ . Now let us define the stochastic increment  $\Delta W = \varepsilon^{*}\sqrt{\Delta t} = \varepsilon^{*}\sqrt{\tau}$ . The term  $\varepsilon$  is

not the instantaneous increment. It represents the accumulated value of all the instantaneous increments. Recall the original stochastic process,  $dS / S = \alpha dt + \sigma dW$ . Given that  $\varepsilon^{*}$  is normally distributed and is the source of all the uncertainty, we should be able to use normal probability theory to evaluate the expectation. We shall need to express the stochastic process in such a manner that the return on the asset is normally distributed. In geometric Brownian motion, the log return on the asset is normally distributed, so we will need the stochastic process for the log of the asset return.

Define  $dS + S$  as the asset price at an instant,  $dt$ , later. Thus, we can write the stochastic process as  $dS + S = S[1 + \alpha dt + \sigma dW]$ . Working with the term in brackets, note that we can write it in the following way:

$$
1 + \alpha d t + \sigma d W = 1 + \left[ \left(\alpha - \sigma^ {2} / 2\right) d t + \sigma d W + \left(\left(\alpha - \sigma^ {2} / 2\right) d t + \sigma d W\right) ^ {2} / 2 \right]. \tag {13.20}
$$

By multiplying out the terms on the right-hand side, it is easy to verify that the statement is true. Now define  $\mu = \alpha - \sigma^2 / 2$  and the statement can be written as  $1 + \left[\mu dt + \sigma dW + \left(\mu dt + \sigma dW\right)^2 / 2\right]$ , which is equivalent to a second-order Taylor series expansion of the function  $e^{\mu dt + \sigma dW}$ . A second-order expansion is sufficient because all terms higher than second order will involve powers of  $dt$  greater than 1.0.

Now we can write out the stochastic process as  $dS + S = Se^{\mu dt + \sigma dW}$ . Dividing by  $S$  we obtain  $dS / S + 1 = e^{\mu dt + \sigma dW}$ . Taking natural logs, we have the stochastic process of the log return on the asset,

$$
\ln \left(\frac {d S + S}{S}\right) = \mu d t + \sigma d W. \tag {13.21}
$$

This result confirms that the log return is normally distributed with mean  $\mu$  and volatility  $\sigma$ . For our purposes here, we use the following version,

$$
d S + S = S e ^ {\mu d t + \sigma d W}. \tag {13.22}
$$

Noting that the time increment until expiration is  $\tau$ , we can state that the asset price at expiration is  $S_{t + \tau} = S_T$  and the stochastic process for  $W$  is  $\Delta W_{T} = \varepsilon^{*}\sqrt{\tau}$ . Thus,

$$
S _ {T} = S _ {t} e ^ {\mu \tau + \sigma \varepsilon^ {*} \sqrt {\tau}}, \tag {13.23}
$$

with  $\Delta W_{T}$  normally distributed with mean zero and variance  $\tau$ , per the central limit theorem. $^{10}$

Our objective is to evaluate the expectation of  $c_{T}$ . By definition,

$$
E _ {t} ^ {Q} \left(c _ {T}\right) = \int_ {X} ^ {\infty} \left(S _ {T} - X\right) f \left(S _ {T}\right) d S _ {T}, \tag {13.24}
$$

where  $f(S_{T})$  is the density for  $S_{T}$ . Note that we need integrate only over the interval  $(X, \infty)$  because  $c_{T} = 0$  for  $0 \leq S_{T} \leq X$ . Thus,

$$
\begin{array}{l} E _ {t} ^ {Q} (c _ {T}) = \int_ {X} ^ {\infty} S _ {T} f (S _ {T}) d S _ {T} - \int_ {X} ^ {\infty} X f (S _ {T}) d S _ {T} \\ = \int_ {X} ^ {\infty} S _ {T} f (S _ {T}) d S _ {T} - X \Pr^ {\mathcal {Q}} (S _ {T} > X), \tag {13.25} \\ \end{array}
$$

where  $\operatorname{Pr}^{\mathcal{Q}}$  is the probability under the risk neutral or equivalent martingale measure that  $S_T > X$ . The overall expression is the expected value of  $S_T$  given that  $S_T > X$  minus the expected payout of the exercise price, that is, the exercise price times the probability that the option will be exercised. That is, for the entire expression,

$$
E _ {t} ^ {Q} \left(c _ {T}\right) = E _ {t} ^ {Q} \left(S _ {T} \mid S _ {T} > X\right) \Pr^ {Q} \left(S _ {T} > X\right) - X \Pr^ {Q} \left(S _ {T} > X\right). \tag {13.26}
$$

Starting with the simpler case, let us first evaluate the second term on the right-hand side. By definition,

$$
\Pr^ {Q} \left(S _ {T} > X\right) = \Pr^ {Q} \left(S e ^ {\mu \tau + \sigma \varepsilon^ {*} \sqrt {\tau}} > X\right). \tag {13.27}
$$

Note that  $S e^{\mu \tau + \sigma \varepsilon^{*}\sqrt{\tau}} > X$  is equivalent to  $\ln(S / X) + \mu \tau + \sigma \varepsilon^{*}\sqrt{\tau} > 0$ , or

$$
\varepsilon^ {*} > - \frac {\left[ \ln (S / X) + \mu \tau \right]}{\sigma \sqrt {\tau}}. \tag {13.28}
$$

Recall that  $\alpha$  is the expected simple return on the asset and  $\mu$  is the expected logarithmic return on the asset where  $\mu = \alpha - \sigma^2 / 2$ . Under the equivalent martingale/risk neutrality approach, we can let  $\alpha = r_c$  so that  $\mu = r_c - \sigma^2 / 2$  so that

$$
\varepsilon^ {*} > - \frac {\left[ \ln (S / X) + \left(r _ {c} - \sigma^ {2} / 2\right) \tau \right]}{\sigma \sqrt {\tau}}. \tag {13.29}
$$

You should recognize this as  $\varepsilon^{*} > -d_{2}$  or  $\varepsilon^{*} < d_{2}$ . So our second term in (13.25) is

$$
\varepsilon^ {*} > - \frac {\left[ \ln (S / X) + \left(r _ {c} - \sigma^ {2} / 2\right) \tau \right]}{\sigma \sqrt {\tau}} \Rightarrow N \left(d _ {2}\right). \tag {13.30}
$$

Now we look at the first term on the right-hand side of (13.25). It can be written as

$$
\begin{array}{l} \int_ {X} ^ {\infty} S _ {T} f (S _ {T}) d S _ {T} = \int_ {X} ^ {\infty} S e ^ {\mu \tau + \sigma \varepsilon^ {*} \sqrt {\tau}} f (S _ {T}) d S _ {T} \\ = S e ^ {\mu \tau} \int_ {X} ^ {\infty} e ^ {\sigma \varepsilon^ {*} \sqrt {\tau}} f \left(S _ {T}\right) d S _ {T}. \tag {13.31} \\ \end{array}
$$

We showed that  $S_T > X$  implies that  $\varepsilon^* > d_2$  and  $\varepsilon^* > -d_2$  so we can change the variable of integration giving us the equivalent statement,

$$
S e ^ {\mu \tau} \int_ {- d _ {2}} ^ {\infty} e ^ {\sigma \varepsilon^ {*} \sqrt {\tau}} f (\varepsilon^ {*}) d \varepsilon^ {*}. \tag {13.32}
$$

Because  $\varepsilon^{*}$  is normally distributed, we can substitute the density for the normal distribution,

$$
\begin{array}{l} S e ^ {\mu \tau} \int_ {- d _ {2}} ^ {\infty} e ^ {\sigma \varepsilon^ {*} \sqrt {\tau}} \left(e ^ {- \varepsilon^ {* 2} / 2} / \sqrt {2 \pi}\right) d \varepsilon^ {*} \\ = S e ^ {\mu \tau} \int_ {- d _ {2}} ^ {\infty} \left(e ^ {- \varepsilon^ {* 2} / 2 + \sigma \varepsilon^ {*} \sqrt {\tau}} / \sqrt {2 \pi}\right) d \varepsilon^ {*}. \tag {13.33} \\ \end{array}
$$

By completing the square in the exponent, we obtain

$$
S e ^ {\mu \tau} \int_ {- d _ {2}} ^ {\infty} \left(e ^ {- \left(\varepsilon^ {*} - \sigma \sqrt {\tau}\right) ^ {2} / 2 + \sigma^ {2} \tau / 2} / \sqrt {2 \pi}\right) d \varepsilon^ {*}. \tag {13.34}
$$

Now we make a change of variables. Let  $y = \varepsilon^{*} - \sigma \sqrt{\tau}$  so that  $\varepsilon^{*} = \sigma \sqrt{\tau} + y$ . This changes the lower limit of integration. Formerly, we were interested in the value of  $\varepsilon^{*}$  over the range  $(-d_{2},\infty)$ . Because  $d_{2} = d_{1} - \sigma \sqrt{\tau}$ , this means that  $\varepsilon^{*} > -\left(d_{1} - \sigma \sqrt{\tau}\right)$  or  $\varepsilon^{*} > \sigma \sqrt{\tau} - d_{1}$ . Substituting  $y + \sigma \sqrt{\tau}$  for  $\varepsilon^{*}$  means that  $y + \sigma \sqrt{\tau} > \sigma \sqrt{\tau} - d_{1}$ ; thus,  $y < d_{1}$ . Now our expression can be written as

$$
S e ^ {\mu \tau + \sigma^ {2} \tau / 2} \int_ {- \infty} ^ {d _ {1}} \left(e ^ {- y ^ {2} / 2} / \sqrt {2 \pi}\right) d y. \tag {13.35}
$$

The integral is simply the value  $N(d_1)$ . Because  $\mu + \sigma^2 / 2 = r_c$ , our first term can be written as  $S e^{r_c \tau} N(d_1)$ . Thus,

$$
E _ {T} ^ {\mathrm {Q}} \left(c _ {T}\right) = S e ^ {r c \tau} N \left(d _ {1}\right) - X N \left(d _ {2}\right). \tag {13.36}
$$

And the value of the call today is the present value of  $E_T^Q [c_T]$  obtained using the factor  $e^{-r_c\tau}$ . Thus, we obtain the model,

$$
c = S N \left(d _ {1}\right) - X e ^ {- r _ {c} \tau} N \left(d _ {2}\right), \tag {13.37}
$$

which is the Black-Scholes-Merton formula.

This derivation makes it somewhat easier to see the proper interpretation of the normal probabilities,  $N(d_{1})$  and  $N(d_{2})$ .  $N(d_{2})$  is the probability that the call will be exercised

provided one assumes that the asset expected return is the risk-free rate. Of course, any risky asset will command a risk premium so the actual drift is  $\alpha$ , which is higher than  $r$  by the risk premium. Consequently, the actual probability of exercise is higher than  $N(d_2)$ .  $N(d_1)$ , however, does not lend itself to a simple probability interpretation.  $SN(d_1)$  is interpreted as the expected asset price at expiration conditional on the asset price exceeding the exercise price, times the probability that the asset price exceeds the exercise price, discounted at the risk-free rate.

# 13.4 DERIVING THE BLACK-SCHOLES-MERTON MODEL AS THE SOLUTION OF A PARTIAL DIFFERENTIAL EQUATION

The mathematical details that lead from the partial differential equation (PDE), Equation (13.11), to the Black-Scholes-Merton formula, Equation (13.12), are seldom seen in print. One exception is Kutner (1988). This section is adapted from that article. There are a few other sources of derivations, which are listed in the references, that take a slightly different approach. We refer to this general solution methodology as the PDE approach.

Solving a differential equation frequently involves guessing at the form of the solution. Some clues as to the correct form were provided in the research on options that preceded Black, Scholes, and Merton. Assuming we do not yet know the solution, let us propose that it can be written as  $c_{t} = e^{-r_{c}\tau}y$  where  $y = f(u,q)$ . You can see here that  $y$  seems to play the role of the payoff, which is a function of two variables. The variables  $u$  and  $q$  are proposed to be of the form, $^{11}$

$$
u = \left(2 / \sigma^ {2}\right) \left(r _ {c} - \sigma^ {2} / 2\right) \left[ \ln (S / X) - \left(r _ {c} - \sigma^ {2} / 2\right) (- \tau) \right]
$$

$$
q = - \left(2 / \sigma^ {2}\right) \left(r _ {c} - \sigma^ {2} / 2\right) ^ {2} (- \tau). \tag {13.38}
$$

The partials of  $c_{t} = e^{-r_{c}\tau}y(u,q)$  are found as

$$
\frac {\partial c}{\partial S} = e ^ {- r _ {c} \tau} y _ {u} (2 / \sigma^ {2}) (r _ {c} - \sigma^ {2} / 2) / S
$$

$$
\frac {\partial c}{\partial t} = e ^ {- r _ {c} \tau} \left[ - y _ {u} \left(2 / \sigma^ {2}\right) \left(r _ {c} - \sigma^ {2} / 2\right) ^ {2} - y _ {q} \left(2 / \sigma^ {2}\right) \left(r _ {c} - \sigma^ {2} / 2\right) ^ {2} + r _ {c} y \right]
$$

$$
\frac {\partial^ {2} c}{\partial S ^ {2}} = e ^ {- r _ {c} \tau} \left[ y _ {u} (2 / \sigma^ {2}) (r _ {c} - \sigma^ {2} / 2) (1 / S ^ {2}) - y _ {q} (2 / \sigma^ {2}) ^ {2} (r _ {c} - \sigma^ {2} / 2) ^ {2} (1 / S ^ {2}) y _ {u u} \right], \tag {13.39}
$$

where  $y_{u}, y_{q}$ , and  $y_{uu}$  are shorthand notation for  $\partial y / \partial u$ ,  $\partial y / \partial t$  and  $\partial^2 y / \partial u^2$ . Note that  $\partial t = -\partial \tau$ . Substituting into the Black-Scholes-Merton PDE gives

$$
\begin{array}{l} r S e ^ {- r \tau} y _ {u} \left(2 / \sigma^ {2}\right) \left(r _ {c} - \sigma^ {2} / 2\right) / S _ {t} - r _ {c} c _ {t} \\ + e ^ {- r \tau} \left[ y _ {u} (2 / \sigma^ {2}) (r _ {c} - \sigma^ {2} / 2) ^ {2} - y _ {q} (2 / \sigma^ {2}) (r _ {c} - \sigma^ {2} / 2) ^ {2} + r _ {c} y \right] \\ + \frac {1}{2} e ^ {- r \tau} \left[ y _ {u} (2 / \sigma^ {2}) (r _ {c} - \sigma^ {2} / 2) (1 / S ^ {2}) + (2 / \sigma^ {2}) ^ {2} (r _ {c} - \sigma^ {2} / 2) ^ {2} (1 / S ^ {2}) y _ {u u} \right] = 0, \tag {13.40} \\ \end{array}
$$

which simplifies to

$$
y _ {q} = - y _ {u u}. \tag {13.41}
$$

This is the heat exchange equation of thermodynamics. The solution is well known, and Black and Scholes cite a contemporary math book. If  $V$  is a function of  $x$  and  $t$  and  $V_{t} = KV_{xx}$  for  $-\infty < x < \infty$ ,  $t > 0$  and  $V = f(x)$  when  $t = 0$  for  $-\infty < x < \infty$ , the solution is of the form

$$
V = \frac {1}{\sqrt {\pi}} \int_ {- \infty} ^ {\infty} f (x + 2 \eta \sqrt {k t}) e ^ {- \eta^ {2}} d \eta . \tag {13.42}
$$

In our problem,  $V$  is the option price,  $x$  is  $u$ ,  $t$  is  $q$ ,  $k = 1$ , and  $f(x)$  is the boundary condition. The variable  $q$  can equal zero only at expiration ( $\tau = 0$ ). We need to find the function  $f(x)$  consistent with the option's expiration value:

$$
\begin{array}{l} y (u, 0) = c \left(S _ {T}, 0\right) = S _ {T} - X \quad i f S _ {T} \geq X \\ = 0 \quad i f S _ {T} <   X. \tag {13.43} \\ \end{array}
$$

Let

$$
\begin{array}{l} y (u, 0) = X \left(e ^ {u \left(\sigma^ {2} / 2\right) / \left(r - \sigma^ {2} / 2\right)} - 1\right) \quad i f u \geq 0 \\ = 0 \quad i f u <   0. \tag {13.44} \\ \end{array}
$$

At  $\tau = 0$ ,  $u$  will equal  $\left(2 / \sigma^2\right)\left(r_c - \sigma^2 /2\right)\ln \left(S_T / X\right)$ . So at  $\tau = 0$

$$
\begin{array}{l} y (u, 0 | \tau = 0) = X \Big (e ^ {\ln (S _ {T} / X)} - 1 \Big) = S _ {T} - X i f u \geq 0 \\ = 0 \quad i f u <   0. \tag {13.45} \\ \end{array}
$$

Thus,  $y(u,0) \mid \tau = 0$  is consistent with  $c(S_T,0)$ . A function  $f(x)$  that meets this condition is

$$
\begin{array}{l} f (u) = X \left(e ^ {u \left(\sigma^ {2} / 2\right) / \left(r - \sigma^ {2} / 2\right)} - 1\right) \quad i f u \geq 0 \\ = 0 \quad i f u <   0. \tag {13.46} \\ \end{array}
$$

The solution is, thus,

$$
y = \frac {1}{\sqrt {\pi}} \int_ {- u / 2 \sqrt {q}} ^ {\infty} X \left[ e ^ {\left(u + 2 \eta \sqrt {q}\right) \left(\sigma^ {2} / 2\right) / \left(r _ {c} - \sigma^ {2} / 2\right)} - 1 \right] e ^ {- \eta^ {2}} d \eta . \tag {13.47}
$$

The lower limit was changed from  $-\infty$  to  $-u / 2\sqrt{q}$ , because we require the integrand to be nonnegative to get a positive value of  $y$ . Thus, the first exponential function must be greater than or equal to one. So the exponent must be restricted to  $\left(u + 2\eta \sqrt{q}\right) \geq 0$ , meaning that

$\eta \geq -u / 2\sqrt{q}$ . Now let  $\eta = a\sqrt{2} / 2$ . We will have  $-\eta^2 = -a^2 / 2$ ,  $d\eta = da / \sqrt{2}$ , and the lower limit of integration will change to  $-u / \sqrt{2q}$ . Then the equation will become

$$
y = \int_ {- u / 2 \sqrt {q}} ^ {\infty} \frac {1}{\sqrt {\pi}} X \left[ e ^ {\left(u + a \sqrt {2 q}\right) \left(\sigma^ {2} / 2\right) / \left(r _ {c} - \sigma^ {2} / 2\right)} - 1 \right] e ^ {- a ^ {2} / 2} d a. \tag {13.48}
$$

Now note that  $-u / \sqrt{2q} = (1 / \sigma)\left[\ln (S / X) - \left(r_c - \sigma^2 / 2\right)(-\tau)\right] / \sqrt{\tau} = -d_2$ . Next, we transform the equation back into the equation for  $c_t$  by multiplying by  $e^{-r_c\tau}$ , and then we separate the integrals:

$$
\begin{array}{l} c = \int_ {- d _ {2}} ^ {\infty} \frac {1}{\sqrt {2 \pi}} X e ^ {- r \tau} \left[ e ^ {(u + 2 a \sqrt {q}) (\sigma^ {2} / 2) / (r _ {c} - \sigma^ {2} / 2)} - 1 \right] e ^ {- a ^ {2} / 2} d a \\ = \int_ {- d _ {2}} ^ {\infty} \frac {1}{\sqrt {2 \pi}} X e ^ {- r \tau} e ^ {\left[ \left(u + 2 a \sqrt {q}\right) \left(\sigma^ {2} / 2\right) / \left(r _ {c} - \sigma^ {2} / 2\right) \right] - a ^ {2} / 2} d a - X e ^ {- r \tau} \int_ {- d _ {2}} ^ {\infty} \frac {1}{\sqrt {2 \pi}} e ^ {- a ^ {2} / 2} d a. \tag {13.49} \\ \end{array}
$$

The first term can be simplified by using the definitions of  $u$  and  $q$ . After rearranging those definitions, we have

$$
u \left(2 / \sigma^ {2}\right) \left(r _ {c} - \sigma^ {2} / 2\right) = \left[ \ln (S / X) - \left(r _ {c} - \sigma^ {2} / 2\right) (- \tau) \right]
$$

$$
a \sqrt {2 q} \left(1 / \sigma^ {2}\right) \left(r _ {c} - \sigma^ {2} / 2\right) = - a \sigma \sqrt {\tau}. \tag {13.50}
$$

Thus, the first term in our solution is

$$
\begin{array}{l} X e ^ {- r _ {c} \tau} e ^ {\ln (S / X)} \int_ {- d _ {2}} ^ {\infty} \frac {1}{\sqrt {2 \pi}} e ^ {r \tau} e ^ {- \left[ a ^ {2} / 2 - a \sigma \sqrt {\tau} + \sigma^ {2} \tau \right]} d a \\ = S \int_ {- d _ {2}} ^ {\infty} \frac {1}{\sqrt {2 \pi}} e ^ {- (1 / 2) \left[ a ^ {2} - 2 a \sigma \sqrt {\tau} + \sigma^ {2} \tau \right]} d a. \tag {13.51} \\ \end{array}
$$

The integrand is  $e^{-(1/2)(a - \sigma \sqrt{\tau})^2}$ . Now define  $b = a - \sigma \sqrt{\tau}$  so  $db = da$  and the lower limit of integration becomes  $-d_2 - \sigma \sqrt{\tau}$ . Let  $d_1 = d_2 + \sigma \sqrt{\tau}$  so we have

$$
S \int_ {- d _ {1}} ^ {\infty} \frac {1}{\sqrt {2 \pi}} e ^ {- b ^ {2} / 2} d b, \tag {13.52}
$$

which is simply  $S\big[1 - N(-d_1)\big] = SN\big(d_1\big)$ .

The second term in the solution is simply  $-Xe^{-r_c\tau}\big[1 - N(-d_2)\big] = -Xe^{-r_c\tau}N(d_2)$ . Thus,

$$
c = S N \left(d _ {1}\right) - X e ^ {- r _ {c} \tau} N \left(d _ {2}\right), \tag {13.53}
$$

which is the Black-Scholes-Merton formula.

An alternative route to the solution uses the LaPlace transform on the partial differential equation. This converts it to an ordinary differential equation, for which standard solution techniques can be applied.

Wilmott, Howison, and DeWynne (1995) have an excellent illustration of the steps in converting the Black-Scholes-Merton PDE into the heat transfer equation of physics and then solving that equation to obtain the option pricing formula.

Thus, we have two approaches to arriving at the Black-Scholes-Merton model, the expectations approach and the PDE approach. The Feynman-Kac theorem provides a convenient methodology for moving between these two approaches. Although we have solution methodologies for both the expectations approach as well as the PDE approach with the Black-Scholes-Merton model, there are other more complicated models where one approach may be less complicated than the other. Once, say the PDE is derived based on arbitrage arguments, we can easily transform the problem to taking an expectation via the Feynman-Kac theorem.

The generic univariate Feynman-Kac theorem is briefly introduced here. Recall the Ito process parameters can depend on at most the underlying variable and time, represented here as  $x$  and  $t$ . Thus, the PDE parameters have the same constraint. The PDE parameters also depend on at most  $x$  and  $t$ . The three parameters associated with the PDE are expressed as  $\mu(x,t)$ ,  $\hat{\mu}(x,t)$ , and  $\hat{\sigma}(x,t)$ . Formally, the Feynman-Kac theorem can be expressed as follows:

Assume a univariate Itô process expressed generically as

$$
d x = \mu (x, t) d t + \sigma (x, t) d z. \tag {13.54}
$$

Subject to certain technical conditions, we have the following statement:

$$
\mu (x, t) f = \frac {\partial f}{\partial t} + \widehat {\mu} (x, t) \frac {\partial f}{\partial x} + \frac {1}{2} \widehat {\sigma} ^ {2} (x, t) \frac {\partial^ {2} f}{\partial x ^ {2}}, \tag {13.55}
$$

subject to

$$
f (x, T) = f \left(x _ {T}\right), \tag {13.56}
$$

if and only if

$$
f (x, t) = E _ {\hat {\mu}, \hat {\sigma} ^ {2}} \left[ f \left(x _ {T}\right) e ^ {- \int_ {t} ^ {T} \mu \left(x _ {y}, y\right) d y} \right]. \tag {13.57}
$$

Thus, the Feynman-Kac theorem provides a straightforward linkage between the expectations approach (Equation (13.57)) and the PDE approach (Equation (13.55) with boundary condition Equation (13.56)) to various option valuation problems, including

the Black-Scholes-Merton model. The discounting  $\left(e^{-\intop_{t}^{T}\mu (x_{y},y)dy}\right)$  in Equation (13.57)

is based on the parameter on the left-hand side of Equation (13.55),  $\mu(x,t)$ . In the Black-Scholes-Merton model, it is simply  $r_c$ . The expectation is taken based on the remaining two parameters from the PDF. In the Black-Scholes-Merton model, for example,  $\hat{\mu}(x,t) = \mu S$  and  $\hat{\sigma}(x,t) = \sigma S$ .

We now illustrate the application of the Feynman-Kac theorem within our context here. Based on assuming geometric Brownian motion for the underlying asset, we have the following result. The Black-Scholes-Merton PDE of

$$
r _ {c} S \frac {\partial c}{\partial S} + \frac {\partial c}{\partial t} + \frac {1}{2} \frac {\partial^ {2} c}{\partial S ^ {2}} \sigma^ {2} S ^ {2} = r _ {c} c,
$$

subject to

$$
c (S, T) = \max \left(0, S _ {T} - X\right),
$$

if and only if

$$
c (S, t) = e ^ {- r _ {c} (T - t)} E _ {r _ {c}, \sigma} \left[ \max \left(0, S _ {T} - X\right) \right].
$$

Due to the lognormal distribution assumption, we know

$$
S _ {T} = S _ {t} e ^ {\left(r _ {c} - \frac {\sigma^ {2}}{2}\right) (T - t) + \sigma \sqrt {T - t} \varepsilon}, \tag {13.58}
$$

where  $\varepsilon$  is distributed normal with mean 0 and standard deviation 1.

Based on the previous two sections, we know that both approaches result in the Black-Scholes-Merton model.

# 13.5 DECOMPOSING THE BLACK-SCHOLES-MERTON MODEL INTO BINARY OPTIONS

Recall in Chapter 7, we introduced binary options, asset-or-nothing options and cash-or-nothing options. We can obtain the value of an asset-or-nothing call by using the method of expectations, as covered in Section 13.4. Recall that we derived the Black-Scholes-Merton model and found that it has two components,  $SN(d_1)$  and  $Xe^{-r_c\tau}N(d_2)$ . The first represents the expected value of the underlying asset at expiration conditional on the value of the underlying asset exceeding the exercise price times the probability that the value of the underlying asset exceeds the exercise price, discounted to the present at the risk-free rate. The second equals the discounted value of a payoff of  $X$  at expiration provided that the price of the underlying asset exceeds the exercise price  $X$ . The payoff of the first component is precisely that of an asset-or-nothing call, and the payoff of the second is precisely the payoff of a cash-or-nothing call. Therefore, as explained in Chapter 7, a standard European option can be viewed as a long position in an asset-or-nothing call and a short position in a cash-or-nothing call both struck at  $X$  and the latter paying  $X$ . Similarly, a standard European put can be decomposed into a long position in a cash-or-nothing put and a short position in an asset-or-nothing put.

# 13.6 BLACK-SCHOLES-MERTON OPTION PRICING WHEN THERE ARE DIVIDENDS

Recall in Chapter 2 that we examined the boundary conditions for option pricing with and without dividends. In almost every situation, we subtracted the present value of the dividends,  $D_{t}$ , from the asset price. We also discussed how this consideration comes into play in the binomial model, as covered in Chapter 7. Whenever we subtract the present value of the dividends over the life of the option, we are assuming that the dividends over the life of the option are known. Hence, when we are interested in pricing an option in a continuous time world, the stochastic process followed by the asset price, Equation (13.1), can apply only to the value of the asset price minus the present value of the dividends. Without going through the derivation again, we will just say that the Black-Scholes-Merton formula for calls and puts requires a small adjustment, which is that the asset price,  $S_{t}$ , must represent the asset price minus the present value of the dividends.

There is one other common adjustment for dividends, which is to assume that dividends are paid continuously and that the aggregate annual rate is expressed as  $\delta$ , which is interpreted as the continuously compounded annual dividend yield. This adjustment is, more or less, an approximation, because no stock pays dividends continuously, but index options in which the underlying index contains mostly dividend-paying stocks could be reasonably approximated with this method. This is because some stocks in the index pay dividends on one day and some on other days. On a given day if a single stock pays dividends, then the index is paying a dividend. Though there does tend to be some dividend clustering in months and days of the week, there is still a modest degree of dispersion of dividends, and the method is widely used for index options. In that case, the Black-Scholes-Merton model and all of the dividend-adjusted boundary conditions that we covered in Chapter 2 will have  $S_{t}e^{-\delta \tau}$  used instead of  $S_{t}$ .

Finally, we should add that some options are on physical assets that incur storage costs, which are sometimes called holding or carrying costs. For example, oil is very expensive to store. Thus, while oil is being held, there is not only the loss of revenue from interest tied up in the oil, which is captured by the risk-free rate, but there is also an additional cost that represents out-of-pocket expense of storing the oil. In this case, there should be a further adjustment downward of the asset price by the present value of these costs.

We now turn to exploring selected limiting results for the Black-Scholes-Merton model.

# 13.7 SELECTED BLACK-SCHOLES-MERTON MODEL LIMITING RESULTS

In this section, we explore the Black-Scholes-Merton model for calls when the asset price tends to zero or positive infinity, time tends to zero, volatility tends to zero or to positive infinity, and the exercise price tends to zero. We assume the dividend yield is zero.

From the Black-Scholes-Merton model, we note that  $d_{1}$  can be written as

$$
d _ {1} = \frac {\ln (S)}{\sigma \sqrt {\tau}} - \frac {\ln (X) - \left(r _ {c} + \sigma^ {2} / 2\right) \tau}{\sigma \sqrt {\tau}}. \tag {13.59}
$$

Only the first term on the right-hand side is affected by changes in  $S$ . Thus, as  $S$  tends to  $+\infty$ , then that implies  $(\Rightarrow) \ln(S)$  tends to  $+\infty$  (denoted  $\ln(S) \rightarrow +\infty$ ), which implies  $d_1, d_2 \rightarrow +\infty$ . Based on the properties of  $N(d)$ , we have the following result,

$$
S \rightarrow + \infty \Rightarrow \ln (S) \rightarrow + \infty \Rightarrow d _ {1}, d _ {2} \rightarrow + \infty \Rightarrow N \left(d _ {1}\right), N \left(d _ {2}\right)\rightarrow 1. 0 \Rightarrow c = S - X e ^ {- r _ {c} \tau}. \tag {13.60}
$$

Thus, as the underlying asset price increases, then the option value tends to infinity.

As  $S$  tends to zero,  $\ln(S)$  tends to  $-\infty$ , then  $d_1, d_2 \to -\infty$ . Based on properties of the  $N(d)$ , we have the following result,

$$
S \rightarrow 0 \Rightarrow \ln (S) \rightarrow - \infty \Rightarrow d _ {1}, d _ {2} \rightarrow - \infty \Rightarrow N \left(d _ {1}\right), N \left(d _ {2}\right)\rightarrow 0. 0 \Rightarrow c = 0. \tag {13.61}
$$

In this case, as the underlying asset price decreases, then the option value tends toward zero.

We now turn to the case where time to expiration tends to positive infinity. We note that  $d_{1}$  can be written as

$$
d _ {1} = \frac {\ln (S / X)}{\sigma \sqrt {\tau}} + \frac {\left(r _ {c} + \sigma^ {2} / 2\right) \sqrt {\tau}}{\sigma}. \tag {13.62}
$$

The first term on the right-hand side tends toward zero as  $\tau$  tends to  $+\infty$  and the second term on the right-hand side tends toward  $+\infty$  as  $\tau$  tends to  $+\infty$ . Thus, assuming positive interest rates,  $N(d_1) \to 1.0$ . Note that the second term of the Black-Scholes-Merton model goes to zero due to the present value factor  $(e^{-r_c\tau})$ . That is, the present value of the exercise price is zero. Thus,

$$
\tau \rightarrow + \infty \Rightarrow d _ {1} \rightarrow + \infty , X e ^ {- r _ {c} \tau} N (d _ {2}) \rightarrow 0 \Rightarrow N (d _ {1}) \rightarrow 1. 0 \Rightarrow c = S. \qquad (1 3. 6 3)
$$

We now turn to the case where time to maturity tends to zero. In other words, we are approaching very closely to maturity. Recall, for the model to be coherent, then it must converge to  $\max(0, S_T - X)$  at expiration. We must address three cases: (1)  $S_T > X$ , (2)  $S_T < X$ , and (3)  $S_T = X$ . When  $S_T > X$ , we note that  $d_1$  can be written as

$$
d _ {1} = \frac {\ln (S / X)}{\sigma \sqrt {\tau}} + \frac {\left(r _ {c} + \sigma^ {2} / 2\right) \sqrt {\tau}}{\sigma}. \tag {13.64}
$$

We sketch the results as time to expiration approaches zero for these three cases:

1. In-the-money  $(S_T > X)$ :

$$
\tau \rightarrow 0 \&\ln (S / X) > 0 \Rightarrow d _ {1}, d _ {2} \rightarrow + \infty \Rightarrow N \left(d _ {1}\right), N \left(d _ {2}\right) \rightarrow 1. 0 \Rightarrow c = S _ {T} - X. \tag {13.65}
$$

2. Out-of-the-money  $(S_T < X)$ :

$$
\tau \rightarrow 0 \&\ln (S / X) <   0 \Rightarrow d _ {1}, d _ {2} \rightarrow - \infty \Rightarrow N \big (d _ {1} \big), N \big (d _ {2} \big) \rightarrow 0. 0 \Rightarrow c = 0. \qquad (1 3. 6 6)
$$

3. At-the-money  $(S_T = X)$ :

$$
\tau \rightarrow 0 \&\ln (S / X) = 0 \Rightarrow d _ {1}, d _ {2} \rightarrow 0 \Rightarrow N \left(d _ {1}\right), N \left(d _ {2}\right) \rightarrow 0. 5 \Rightarrow c = 0. \tag {13.67}
$$

Thus, as time to expiration approaches zero, we have the call price converging to  $\max(0, S_T - X)$ .

We now turn to the case where volatility tends to positive infinity. In this case, we note that  $d_{1}$  and  $d_{2}$  can be written as

$$
d _ {1} = \frac {\ln \left(S e ^ {r _ {c} \tau} / X\right)}{\sigma \sqrt {\tau}} + \frac {\sigma \sqrt {\tau}}{2} \text {a n d} \tag {13.68}
$$

$$
d _ {2} = \frac {\ln \left(S e ^ {r _ {c} \tau} / X\right)}{\sigma \sqrt {\tau}} - \frac {\sigma \sqrt {\tau}}{2}. \tag {13.69}
$$

Thus, as volatility tends to positive infinity, then the first term on the right-hand side tends to zero and we have the following results:

$$
\sigma \rightarrow + \infty , d _ {1} \rightarrow + \infty , d _ {2} \rightarrow - \infty \Rightarrow N (d _ {1}) \rightarrow 1. 0, N (d _ {2}) \rightarrow 0. 0 \Rightarrow c = S. \tag {13.70}
$$

We now turn to the case where volatility tends to zero. In this case, we note that  $d_{1}$  can be written as

$$
d _ {1} = \frac {\ln \left(S e ^ {r _ {c} \tau} / X\right)}{\sigma \sqrt {\tau}} + \frac {\sigma \sqrt {\tau}}{2}. \tag {13.71}
$$

For volatility, we must address three cases, (1)  $Se^{r_c\tau} > X$ , (2)  $Se^{r_c\tau} < X$ , and (3)  $Se^{r_c\tau} = X$ . We sketch the results as volatility tends to zero for these three cases. Note that the expected terminal asset value under the risk neutral probability measure has the asset growing at the risk-free rate or  $Se^{r_c\tau}$ .

1. Expected terminal value in-the-money  $(Se^{r_c\tau} > X)$ :

$$
\sigma \rightarrow 0 \&\ln \left(S e ^ {r _ {c} \tau} / X\right) > 0 \Rightarrow d _ {1}, d _ {2} \rightarrow + \infty \Rightarrow N \left(d _ {1}\right), N \left(d _ {2}\right) \rightarrow 1. 0 \Rightarrow c = S - X e ^ {- r _ {c} \tau}. \tag {13.72}
$$

2. Expected terminal value out-of-the-money  $(Se^{r_c\tau} < X)$ :

$$
\sigma \rightarrow 0 \&\ln \left(S e ^ {r _ {c} \tau} / X\right) <   0 \Rightarrow d _ {1}, d _ {2} \rightarrow - \infty \Rightarrow N \left(d _ {1}\right), N \left(d _ {2}\right) \rightarrow 0. 0 \Rightarrow c = 0. \tag {13.73}
$$

3. Expected terminal value at-the-money  $(Se^{r_c\tau} = X)$

$$
\begin{array}{l} \sigma \rightarrow 0 \&\ln \left(S e ^ {r _ {c} \tau} / X\right) = 0 \Rightarrow d _ {1}, d _ {2} \rightarrow 0 \Rightarrow N (d _ {1}), N (d _ {2}) \rightarrow 0. 5 \\ \Rightarrow c = S (0. 5) - X e ^ {- r _ {c} \tau} (0. 5) = 0. 5 e ^ {- r _ {c} \tau} \left(S e ^ {r _ {c} \tau} - X\right) = 0. \tag {13.74} \\ \end{array}
$$

Again, as volatility tends to zero, we have the call price converges to the lower boundary.

We now turn to the case where the exercise price tends to zero. In this case, we note that  $d_{1}$  can be written as

$$
d _ {1} = - \frac {\ln (X)}{\sigma \sqrt {\tau}} + \frac {\ln (S) + \left(r _ {c} + \frac {\sigma^ {2}}{2}\right) \tau}{\sigma \sqrt {\tau}}. \tag {13.75}
$$

For the exercise price, we simply note

$$
X \rightarrow 0 \Rightarrow \ln (X) \rightarrow - \infty \Rightarrow d _ {1}, d _ {2} \rightarrow + \infty \Rightarrow N \left(d _ {1}\right), N \left(d _ {2}\right)\rightarrow 1. 0 \Rightarrow c = S. \tag {13.76}
$$

Thus, as the exercise price approaches zero, then the call price approaches the dividend yield adjusted asset price.

Note that using a similar approach, we can find the limits for puts. Alternatively, we can apply the limiting results with put-call parity and arrive at the same put limits. For completeness, we conclude this chapter by manually computing Black-Scholes-Merton option pricing model values.

# 13.8 COMPUTING THE BLACK-SCHOLES-MERTON OPTION PRICING MODEL VALUES

We provide a few illustrations of the manual option value computation. The key to manually calculating option values is the standard normal cumulative distribution table given in Chapter 5 (Table 5.1). We will refer back to Table 5.1 during these illustrations.

The dividend-adjusted Black-Scholes-Merton option pricing model for calls and puts can be expressed as

$$
c = S e ^ {- \delta \tau} N \left(d _ {1}\right) - X e ^ {- r _ {c} \tau} N \left(d _ {2}\right), \tag {13.77}
$$

$$
p = X e ^ {- r _ {c} \tau} N (- d _ {2}) - S e ^ {- \delta \tau} N (- d _ {1}), \tag {13.78}
$$

where

$$
d _ {1} = \frac {\ln (S / X) + \left(r _ {c} - \delta + \sigma^ {2} / 2\right) \tau}{\sigma \sqrt {\tau}}
$$

$$
d _ {2} = d _ {1} - \sigma \sqrt {\tau}. \tag {13.79}
$$

We start with a non-dividend example with an at-the-money call option where the stock price is 50, the volatility is  $40\%$ , the interest rate is  $2\%$ , and the time to maturity

is 0.25. The first step in the calculations requires the computation of  $d_{1}$  and  $d_{2}$ . Recall at-the-money implies  $S = X$ , thus we have

$$
\begin{array}{l} d _ {1} = \frac {\ln (S / X) + \left(r _ {c} - \delta + \sigma^ {2} / 2\right) \tau}{\sigma \sqrt {\tau}} \\ = \frac {\ln (5 0 / 5 0) + \left(0 . 0 2 - 0 . 0 + 0 . 4 ^ {2} / 2\right) 0 . 2 5}{0 . 4 \sqrt {0 . 2 5}} = \frac {0 . 0 2 5}{0 . 2} = 0. 1 2 5 \\ \end{array}
$$

$$
d _ {2} = d _ {1} - \sigma \sqrt {\tau} = 0. 1 2 5 - 0. 4 \sqrt {0 . 2 5} = - 0. 0 7 5.
$$

The second step is to look up the values of  $N(d_{1})$  and  $N(d_{2})$  from Table 5.1. Recall the values are given such that the first column provides the value of the first decimal and the first row provides the values of the second and third decimals incrementing by 0.005. Thus, the value for  $N(d_{1})$  is found by locating the row starting with 0.1. From that row locate the column with a heading of 0.025. At the intersection of this row and column is the value 0.549738 and therefore  $N(d_{1}) = 0.549738$ . The value for  $N(d_{2})$  is found by locating the row starting with -0.0. From that row locate the column with a heading of 0.075. At the intersection of this row and column is the value 0.470107 and therefore  $N(d_{2}) = 0.470107$ .

The final step is to substitute these values into the call equation or

$$
\begin{array}{l} c = S e ^ {- \delta \tau} N (d _ {1}) - X e ^ {- r _ {c} \tau} N (d _ {2}) \\ = 5 0 e ^ {- 0 (0. 2 5)} 0. 5 4 9 7 3 8 - 5 0 e ^ {- 0. 0 2 (0. 2 5)} 0. 4 7 0 1 0 7 \\ = 2 7. 4 8 6 9 - 2 3. 3 8 8 1 = 4. 0 9 8 8. \\ \end{array}
$$

There are several ways to compute the put value. We first note the put-call parity approach. From the symmetry of the standard normal cumulative distribution function, we know that  $N(-d) = 1 - N(d)$ . Thus, the put equation can be rearranged to one expression of put-call parity or

$$
\begin{array}{l} p = X e ^ {- r _ {c} \tau} (1 - N (d _ {2})) - S e ^ {- \delta \tau} (1 - N (d _ {1})) \\ = X e ^ {- r _ {c} \tau} - S e ^ {- \delta \tau} + \left[ S e ^ {- \delta \tau} N (d _ {1}) - X e ^ {- r _ {c} \tau} N (d _ {2}) \right] \\ = X e ^ {- r _ {c} \tau} - S e ^ {- \delta \tau} + c. \\ \end{array}
$$

With call value calculated, we can quickly compute the put value as

$$
\begin{array}{l} p = X e ^ {- r _ {c} \tau} - S e ^ {- \delta \tau} + c \\ = 5 0 e ^ {- 0. 0 2 (0. 2 5)} - 5 0 e ^ {- 0 (0. 2 5)} + 4. 0 9 8 8 \\ = 4 9. 7 5 0 6 - 5 0 + 4. 0 9 8 8 = 3. 8 4 9 4. \\ \end{array}
$$

Alternatively, we can work through the same three steps for computing the call option. The first step in manual calculations for a put requires the computation of  $-d_{1}$  and  $-d_{2}$ . Thus, given we have already computed the values of  $-d_{1}$  and  $-d_{2}$ , we simply have

$$
\begin{array}{l} - d _ {1} = - \frac {\ln (S / X) + \left(r _ {c} - \delta + \sigma^ {2} / 2\right) \tau}{\sigma \sqrt {\tau}} = - 0. 1 2 5 \\ - d _ {2} = 0. 0 7 5. \\ \end{array}
$$

The second step is to look up the values of  $N(-d_1)$  and  $N(-d_2)$  from Table 5.1. The value for  $N(-d_1)$  is found by locating the row starting with -0.1. From that row locate the column with heading of 0.025. At the intersection of this row and column is the value 0.450262 and therefore  $N(-d_1) = 0.450262$ . The value for  $N(d_2)$  is found by locating the row starting with 0.0. From that row locate the column with heading of 0.075. At the intersection of this row and column is the value 0.529893 and therefore  $N(d_2) = 0.529893$ .

The final step is to substitute these values into the put equation or

$$
\begin{array}{l} p = X e ^ {- r _ {c} \tau} N \big (- d _ {2} \big) - S e ^ {- \delta \tau} N \big (- d _ {1} \big) \\ = 5 0 e ^ {- 0. 0 2 (0. 2 5)} 0. 5 2 9 8 9 3 - 5 0 e ^ {- 0 (0. 2 5)} 0. 4 5 0 2 6 2 \\ = 2 6. 3 6 2 5 - 2 2. 5 1 3 1 = 3. 8 4 9 4. \\ \end{array}
$$

Thus, both put values are identical. The key to successfully using Table 5.1 is knowing where to round. The purpose of such a dense table is to avoid significant rounding error with manual calculations. With Table 5.1, we round up or down on the quarters, that is, 0.XX25 and 0.XX75. For example, if  $d_{1} = 0.3224$ , then we round down to  $d_{1} = 0.320$  and use  $N(d_{1}) = 0.625516$ . Alternatively, if  $d_{1} = 0.3226$ , then we round up to  $d_{1} = 0.325$  and use  $N(d_{1}) = 0.627409$ . For most applications, Table 5.1 is granular enough to provide option values without too much estimation error.

Now let us consider the influence of a  $2\%$  dividend yield  $(\delta = 0.02)$  on our calculations given in the previous example. This will enable us to see firsthand the influence of dividends on call and put values. As before, the first step in manual calculations requires the computation of  $d_{1}$  and  $d_{2}$  or

$$
\begin{array}{l} d _ {1} = \frac {\ln (S / X) + \left(r _ {c} - \delta + \sigma^ {2} / 2\right) \tau}{\sigma \sqrt {\tau}} \\ = \frac {\ln (5 0 / 5 0) + \left(0 . 0 2 - 0 . 0 2 + 0 . 4 ^ {2} / 2\right) 0 . 2 5}{0 . 4 \sqrt {0 . 2 5}} = 0. 1 \\ \end{array}
$$

$$
d _ {2} = d _ {1} - \sigma \sqrt {\tau} = 0. 1 - 0. 4 \sqrt {0 . 2 5} = - 0. 1.
$$

The value for  $N(d_{1})$  is found by locating the row starting with 0.1 and selecting the first value or  $N(d_{1}) = 0.539828$ . Similarly, we find the value for  $N(d_{2}) = 0.460172$ . The final step is to substitute these values into the call equation or

$$
\begin{array}{l} c = S e ^ {- \delta \tau} N \big (d _ {1} \big) - X e ^ {- r _ {c} \tau} N \big (d _ {2} \big) \\ = 5 0 e ^ {- 0. 0 2 (0. 2 5)} 0. 5 3 9 8 2 8 - 5 0 e ^ {- 0. 0 2 (0. 2 5)} 0. 4 6 0 1 7 2 \\ = 2 6. 8 5 6 8 - 2 2. 8 9 3 8 = 3. 9 6 3 0. \\ \end{array}
$$

Applying put-call parity, we have

$$
\begin{array}{l} p = X e ^ {- r _ {c} \tau} - S e ^ {- \delta \tau} + c \\ = 5 0 e ^ {- 0. 0 2 (0. 2 5)} - 5 0 e ^ {- 0. 0 2 (0. 2 5)} + 3. 9 6 3 0 = 3. 9 6 3 0. \\ \end{array}
$$

Thus, both call and put values are identical because the underlying growth rate under the equivalent martingale measure is zero. Clearly, we see that the call value declined and the put value increased when the dividend yield was changed from  $0\%$  to  $2\%$ .

# 13.9 RECAP AND PREVIEW

In this chapter, we showed how the Black-Scholes-Merton model is derived. We illustrated the construction of the dynamic hedge that eliminates the effect of movements in the underlying asset. With the risk eliminated, the hedge portfolio should earn the risk-free rate. There is one and only one call option value that ensures this will be true. If it is not true, there is an opportunity for a dynamic arbitrage, which we assume cannot exist under these conditions. We also derive the put version of the model.

In addition, we showed how the model can be derived as the discounted expected payoff of the option under the risk-neutral measure. Further, we established the link between the expectations approach and the PDE approach for deriving the Black-Scholes-Merton model. We also showed how the Black-Scholes-Merton model can be decomposed into two models: price asset-or-nothing options and cash-or-nothing options. Hence, a standard European option is—in effect—a combination of a long position in an asset-or-nothing option and short  $X$  cash-or-nothing options. The latter are also referred to as binary options or digital options.

We conclude this chapter by exploring some of the Black-Scholes-Merton model limits as well as illustrating a few calculations of option prices.

In Chapter 14, we show how the derivatives of the model are obtained, and we provide the Greeks, which as you should recall from the binomial model, are the sensitivities to the factors that go into the model.

# APPENDIX 13.A

# Deriving the Arithmetic Brownian Motion Option Pricing Model

In this appendix, we derive the call and put prices based on arithmetic Brownian motion (ABM) incorporating a dividend yield. We assume ABMGD or

$$
d S _ {t} = \alpha S _ {t} d t + \sigma_ {\S} d W _ {t}. \tag {13.80}
$$

As given in this chapter, we construct a hedge portfolio consisting of  $h$  units of the asset and one short call option. The value of this portfolio at time  $t$  is

$$
V _ {t} = b S _ {t} - c _ {t}. \tag {13.81}
$$

Given that we seek to make this portfolio risk free, we use Itô's lemma to express the call price change in terms of the changes in  $S_{t}$  and  $t$ ,

$$
d c = \frac {\partial c}{\partial S} d S + \frac {\partial c}{\partial t} d t + \frac {1}{2} \frac {\partial^ {2} c}{\partial S ^ {2}} d S ^ {2}. \tag {13.82}
$$

Given the properties of the Wiener process,  $dW_{t}$ , we know that  $dS^{2} = \sigma_{\mathbb{S}}^{2}dt$  for ABM. We know that the value of the portfolio is a function of the asset price, the dividend yield, and the option price. Hence, using the total differential rule, we can express the change in the value of the portfolio as

$$
d V = \frac {\partial V}{\partial S} (d S + \delta S d t) + \frac {\partial V}{\partial c} d c, \tag {13.83}
$$

where  $\frac{\partial V}{\partial S} = b$  and  $\frac{\partial V}{\partial c} = -1$ . Note that the dividend yield results in a positive cash flow to the portfolio over time. Thus, the change in the value of the portfolio is

$$
d V = h (d S + \delta S d t) - d c. \tag {13.84}
$$

Substituting from Ito's lemma for  $dc$  gives

$$
d V _ {t} = b \left(d S + \delta S d t\right) - \left(\frac {\partial c}{\partial S} d S + \frac {\partial c}{\partial t} d t + \frac {1}{2} \frac {\partial^ {2} c}{\partial S ^ {2}} \sigma_ {\$} ^ {2} d t\right), \tag {13.85}
$$

which is a stochastic partial differential equation that defines the change in the value of the portfolio in terms of several expressions. Observe that the stochastic terms are the  $dS$  terms but note that they amount to the simple expression  $hdS - (\partial c / \partial S)dS$ . As with GBM, we are free to set  $h$  to whatever we want as long as its value can be determined before the asset price changes. It should be apparent that by setting  $h$  to  $\partial c / \partial S$ , the two  $dS$  terms cancel, leaving the following expression for the change in the value of the portfolio:

$$
d V = \frac {\partial c}{\partial t} \delta S d t - \left(\frac {\partial c}{\partial t} d t + \frac {1}{2} \frac {\partial^ {2} c}{\partial S ^ {2}} \sigma_ {\S} ^ {2} d t\right). \tag {13.86}
$$

Notice in this case again that there are no stochastic terms, so this portfolio is perfectly hedged. Thus, to avoid arbitrage the portfolio value,  $V$ , must increase at the risk-free rate. This specification is made by the requirement that

$$
d V = \operatorname {V r} _ {c} d t. \tag {13.87}
$$

We now substitute  $bS - c = (\partial c / \partial S)S - c$  for  $V$  to obtain

$$
d V = \left(\frac {\partial c}{\partial S} S - c\right) r _ {c} d t. \tag {13.88}
$$

We then have two expressions for  $dV$ . Equating these two expressions and canceling the  $dt$  terms gives

$$
\left(r _ {c} - \delta\right) S \frac {\partial c}{\partial S} + \frac {\partial c}{\partial t} + \frac {1}{2} \frac {\partial^ {2} c}{\partial S ^ {2}} \sigma_ {\S} ^ {2} = r _ {c} c. \tag {13.89}
$$

This equation is a partial differential equation of which the solution,  $c$ , is the call option price. As before, the solution is subject to the boundary conditions, which refers to the value of  $c$  at the option expiration. In the case of a European call, the condition is that  $c_{T} = \max \left(0, S_{T} - X\right)$ .

The ABM model is known to be represented as<sup>13</sup>

$$
c = e ^ {- r _ {c} \tau} \left[ \left(S e ^ {(r _ {c} - \delta) \tau} - X\right) N (d _ {n}) + \sigma_ {\S} \sqrt {\frac {e ^ {2 (r _ {c} - \delta) \tau} - 1}{2 (r _ {c} - \delta)}} n (d _ {n}) \right], \tag {13.90}
$$

where  $N(d_{n})$  is the area under the standard cumulative normal distribution up to  $d_{n}$  and  $n(d_{n})$  is the value for the standard normal probability density function where

$$
d _ {n} = \frac {S e ^ {\left(r _ {c} - \delta\right) \tau} - X}{\sigma_ {\S} \sqrt {\frac {e ^ {2 \left(r _ {c} - \delta\right) \tau} - 1}{2 \left(r _ {c} - \delta\right)}}}. \tag {13.91}
$$

Note that the put formula follows directly from put-call parity or

$$
\begin{array}{l} p = X e ^ {- r _ {c} \tau} - S e ^ {- \delta \tau} + c \\ = X e ^ {- r _ {c} \tau} - S e ^ {- \delta \tau} + e ^ {- r _ {c} \tau} \left[ \left(S e ^ {(r _ {c} - \delta) \tau} - X\right) N (d _ {n}) + \sigma_ {\S} \sqrt {\frac {e ^ {2 (r _ {c} - \delta) \tau} - 1}{2 (r _ {c} - \delta)}} n (d _ {n}) \right] \\ = e ^ {- r _ {c} \tau} \left[ \left(X - S e ^ {(r _ {c} - \delta) \tau}\right) N (- d _ {n}) + \sigma_ {\S} \sqrt {\frac {e ^ {2 (r _ {c} - \delta) \tau} - 1}{2 (r _ {c} - \delta)}} n (d _ {n}) \right]. \tag {13.92} \\ \end{array}
$$

We now proceed with illustrating the manual calculations of call and put values based on arithmetic Brownian motion. We again start with a non-dividend-paying example with an at-the-money call option where the stock price is 50, the volatility is 19.967, the interest rate is  $2\%$ , and the time to maturity is 0.25. The first step in manual calculations requires the computation of  $d_{n}$ . Recall that at-the-money implies  $S = X$ , thus we have

$$
d _ {n} = \frac {S e ^ {(r _ {c} - \delta) \tau} - X}{\sigma_ {\S} \sqrt {\frac {e ^ {2 (r _ {c} - \delta) \tau} - 1}{2 (r _ {c} - \delta)}}} = \frac {5 0 e ^ {(0 . 0 2 - 0) 0 . 2 5} - 5 0}{1 9 . 9 6 7 \sqrt {\frac {e ^ {2 (0 . 0 2 - 0) 0 . 2 5} - 1}{2 (0 . 0 2 - 0)}}} = 0. 0 2 5.
$$

The second step is to look up the values of  $N(d_{n})$  from Table 5.1. As before, the value for  $N(d_{n})$  is found by locating the row starting with 0.0. From that row locate the column with heading of 0.025. Thus,  $N\big(d_n\big) = 0.509973$ . The final step is to substitute these values into the call equation or

$$
\begin{array}{l} c = e ^ {- r _ {c} \tau} \left[ \left(S e ^ {(r _ {c} - \delta) \tau} - X\right) N (d _ {n}) + \sigma_ {\S} \sqrt {\frac {e ^ {2 (r _ {c} - \delta) \tau} - 1}{2 (r _ {c} - \delta)}} n (d _ {n}) \right] \\ = e ^ {- 0. 0 2 (0. 2 5)} \left[ \left(5 0 e ^ {(0. 0 2 - 0) 0. 2 5} - 5 0\right) 0. 0 2 5 + 1 9. 9 6 7 \sqrt {\frac {e ^ {2 (0 . 0 2 - 0) \tau} - 1}{2 (0 . 0 2 - 0)}} \frac {e ^ {- 0 . 0 2 5 ^ {2} / 2}}{\sqrt {2 \pi}} \right] = 4. 0 9 8 8. \\ \end{array}
$$

Put-call parity is the most efficient way to compute the put value when the call value is known. Thus,

$$
p = X e ^ {- r _ {c} \tau} - S e ^ {- \delta \tau} + c = 5 0 e ^ {- 0. 0 2 (0. 2 5)} - 5 0 e ^ {- 0 (0. 2 5)} + 4. 0 9 8 8 = \$ 3. 8 4 9 5.
$$

But for a slight rounding error, these option values are identical to those found in the chapter. The only input difference was a price change volatility of 19.967 rather than a relative volatility of  $40\%$ . Notice that  $40\%$  of 50 stock is 20. Thus, relative volatility of  $40\%$  or a \$50 stock implies a one standard deviation move would be \$20. This \$20 is closely aligned with our assumed \$19.967. Though not precise, we see that with a slight reduction to 19.967 we have the same option values. This slight difference is driven by the different distributional assumptions made where the Black-Scholes-Merton model is based on the lognormal distribution of terminal asset prices, whereas the arithmetic Brownian motion model is based on the normal distribution of terminal asset prices.

As in the chapter, let us consider the influence of a  $2\%$  dividend yield  $(\delta = 0.02)$  on our calculations given in the previous example. In this case,  $d_{n}$  or<sup>14</sup>

$$
d _ {n} = \frac {S e ^ {(r _ {c} - \delta) \tau} - X}{\sigma_ {\S} \sqrt {\frac {e ^ {2 (r _ {c} - \delta) \tau} - 1}{2 (r _ {c} - \delta)}}} = \frac {5 0 e ^ {(0 . 0 2 - 0 . 0 2) 0 . 2 5} - 5 0}{1 9 . 9 6 7 \sqrt {\frac {e ^ {2 (0 . 0 2 - 0 . 0 2) 0 . 2 5} - 1}{2 (0 . 0 2 - 0 . 0 2)}}} = 0. 0.
$$

The value for  $N(d_{n})$  is 0.5 and thus we have

$$
\begin{array}{l} c = e ^ {- r _ {c} \tau} \left[ \left(S e ^ {(r _ {c} - \delta) \tau} - X\right) N (d _ {n}) + \sigma_ {\S} \sqrt {\frac {e ^ {2 (r _ {c} - \delta) \tau} - 1}{2 (r _ {c} - \delta)}} n (d _ {n}) \right] \\ = e ^ {- 0. 0 2 (0. 2 5)} \left[ \left(5 0 e ^ {(0. 0 2 - 0. 0 2) 0. 2 5} - 5 0\right) 0. 0 2 5 + 1 9. 9 6 7 \sqrt {\frac {e ^ {2 (0 . 0 2 - 0 . 0 2) \tau} - 1}{2 (0 . 0 2 - 0 . 0 2)}} \frac {e ^ {- 0 . 0 ^ {2} / 2}}{\sqrt {2 \pi}} \right] \\ = 3. 9 6 3 0. \\ \end{array}
$$

Applying put-call parity, we have

$$
\begin{array}{l} p = X e ^ {- r _ {c} \tau} - S e ^ {- \delta \tau} + c \\ = 5 0 e ^ {- 0. 0 2 (0. 2 5)} - 5 0 e ^ {- 0. 0 2 (0. 2 5)} + 3. 9 6 3 0 = 3. 9 6 3 0. \\ \end{array}
$$

Again, both call and put values are identical because the underlying growth rate under the equivalent martingale measure is zero. Also, we see that the call value declined and the put value increased when the dividend yield was changed from  $0\%$  to  $2\%$ . Therefore, the Black-Scholes-Merton model and arithmetic Brownian motion model have similar properties.

# QUESTIONS AND PROBLEMS

1 Assuming a stock price is modeled with arithmetic Brownian motion with geometric drift,  $dS_{t} = \alpha S_{t}dt + \sigma_{\mathbb{S}}dW_{t}$ , derive the partial differential equation based on the hedging approach for call options given in this chapter.  
2 Assuming a stock price is modeled with geometric Brownian motion with geometric drift,  $dS_{t} = \alpha S_{t}dt + \sigma S_{t}dW_{t}$ , derive the partial differential equation based on the hedging approach for put options given in this chapter. Do not rely on put-call parity.  
3 Prove Equation (13.20) is true:

$$
1 + \alpha d t + \sigma d W = 1 + \Big [ \big (\alpha - \sigma^ {2} / 2 \big) d t + \sigma d W + \big ((\alpha - \sigma^ {2} / 2) d t + \sigma d W \big) ^ {2} / 2 \Big ].
$$

4 Suppose a particular asset price follows geometric Brownian motion or  $dS_{t} = \mu S_{t}dt + \sigma S_{t}dW_{t}$ . Prove the probability that  $S_{t}$  is greater than  $X$ ,  $\operatorname*{Pr}\left(S_t > X\right)$ , is  $N(d_2)$  as defined in the Black-Scholes-Merton model except that the risk-free interest rate,  $r_c$ , is replaced with the investor's expected rate of return,  $\mu$ .  
Suppose we have a stock trading at 100 per share. If the stock price follows  $dS_{t} = \mu S_{t}dt + \sigma S_{t}dW_{t}$ , compute the probability of the stock exceeding its current value with a particular risk-averse investor's view with  $\mu = 8.0\%$  and  $\sigma = 31.6\%$ . Compare your answer to the case of a risk-neutral investor's view with the risk-free interest rate of  $r_{c} = 5.0\%$  and  $\sigma = 40\%$ . Explain your results.  
Suppose we have a stock trading at 100 per share. Further suppose that the stock's volatility is  $30\%$  and the risk-free rate is  $5\%$ . Using Table 5.1, compute the Black-Scholes-Merton option value of an at-the-money call and put option with one year to expiration. (Assume the dividend yield is zero.)  
Suppose we have a stock trading at 100 per share, the stock's volatility is  $30\%$ , and the risk-free rate is  $5\%$ . In this case, assume the dividend yield is  $5\%$ . Using Table 5.1, compute the Black-Scholes-Merton option value of at-the-money call and put options with one year time to expiration.  
8 Given the arithmetic Brownian motion with geometric drift model,  $dS = \mu S dt + \sigma dW$ , derive the corresponding partial differential equation. Further, given the partial derivatives below, verify that the call model given here is valid:

$$
\begin{array}{l} c = \left(S - X e ^ {- r \tau}\right) N (d _ {n}) + \sigma_ {\S} \sqrt {\frac {1 - e ^ {- 2 r \tau}}{2 r}} n (d _ {n}), d _ {n} = \frac {S e ^ {r \tau} - X}{\sigma_ {\S} \sqrt {\frac {e ^ {2 r \tau} - 1}{2 r}}} = \frac {S _ {0} - X e ^ {- r \tau}}{\sigma_ {\S} \sqrt {\frac {1 - e ^ {- 2 r \tau}}{2 r}}}, \\ n \big (d _ {n} \big) = \frac {e ^ {- d _ {n} ^ {2} / 2}}{\sqrt {2 \pi}}, N \big (d _ {n} \big) = \int_ {- \infty} ^ {d _ {n}} \frac {e ^ {- x ^ {2} / 2}}{\sqrt {2 \pi}} d x, \frac {\partial c}{\partial S} = N \big (d _ {n} \big), \frac {\partial^ {2} c}{\partial S ^ {2}} = \frac {n \big (d _ {n} \big)}{\sigma_ {\S} \sqrt {\frac {1 - e ^ {- 2 r \tau}}{2 r}}}, \mathrm {a n d} \\ \frac {\partial c}{\partial t} = - r X e ^ {- r \tau} N (d _ {n}) - \frac {\sigma e ^ {- 2 r \tau}}{2 \sqrt {\frac {1 - e ^ {- 2 r \tau}}{2 r}}} n (d _ {n}). \\ \end{array}
$$

# NOTES

1. Naturally the option price is also a function of the exercise price,  $X$ , the continuously compounded risk-free rate,  $r_c$ , and the volatility,  $\sigma$ , but these values are static and, thus, they are parameters rather than variables. They can, of course, vary from option to option, but they are not allowed to vary internally, that is, within the dynamics of the evolution of the underlying asset and the price of the specific option over the life of the option.  
2. To reduce notational clutter, where feasible, we eliminate the  $t$  subscripts on  $c_{t}$ ,  $V_{t}$  and  $S_{t}$ .  
3. Differential equations are also sometimes associated with initial conditions, such as when the value of the variable at the start is known. In the case of an option, the initial condition is that the price is nonnegative and bounded from above by the asset price.  
4. Bachelier assumes arithmetic Brownian motion with arithmetic drift where the asset follows the stochastic process,  $dS = \alpha_{\S} dt + \sigma_{\S} dW$ . The asset value can go below zero.  
5. See for example, Sprenkle (1961), Boness (1964), and Samuelson and Merton (1965).  
6. Rubinstein (1976) has shown that the Black-Scholes-Merton model can be derived an alternative way, which requires no assumptions about the ability to continuously adjust a hedge.  
7. Full details of this interesting side story are not clear, but it seems to be the case that Merton developed the mathematical insights, but in deference to Black and Scholes, he withheld the publication of his paper until the Black and Scholes paper appeared in print. Interestingly, Black and Scholes were working on two papers at the time, with the second paper being an empirical test of the model using over-the-counter option price data. That paper was presented at the annual meeting of the American Finance Association in 1971 and appeared in print in The Journal of Finance in 1972 (Black and Scholes 1972). Meanwhile, the original Black and Scholes paper, which derived the model, was rejected by the University of Chicago's renowned Journal of Political Economy (JPE). Black and Scholes then submitted the paper to Harvard's Review of Economics and Statistics, which also rejected it. Then the University of Chicago's Merton Miller suggested that the Journal of Political Economy reconsider the paper, because Miller believed it was a major breakthrough. The JPE then agreed to publish the paper and it appeared in print in 1973, about the same time as the Merton paper but after the model's empirical tests had already appeared in the Journal of Finance. Other interesting stories about the development and use of the model are in Black (1989a, 1989b) and Mehrling (2005), and an excellent treatment of its impact on Wall Street is Bernstein (1996).  
8. We illustrate the derivation of the arithmetic Brownian motion alternative in Appendix 13A. Although the ultimate formula is different, the approach to finding it is very similar.  
9. For notational simplicity, we have dropped the time subscript on  $W_{t}$  and  $\varepsilon_{t}$ .  
10. See Chapter 10, Section 10.3, if you need a review of the properties of the Wiener process.  
11. The terms  $u$  and  $q$  certainly look remarkably like terms in the Black-Scholes-Merton model, leading one to wonder how the equation would be solved if one did not already know the solution. As noted, earlier models had provided some guidance here. Moreover, solving partial differential equations often proceeds based on guesses of general forms of solutions.  
12. A cash-or-nothing call can be structured to pay a different amount than  $X$ . In that case,  $X$  would be replaced by the amount to be paid, but  $d_{2}$  would be calculated using  $X$  or whatever is the strike.  
13. Note if the dividend yield equals the interest rate, then the square root term equals the square root of time to maturity. This solution is proven in Chapter 14.  
14. Recall when the interest rate equals the dividend yield then the denominator is simply the volatility times the square root of time to maturity.

# The Greeks in the Black-Scholes-Merton Model

Recall the Greeks refer to the partial derivatives of a pricing model with respect to various input parameters. In this chapter, we derive and explain the Greeks related to the Black-Scholes-Merton model. We focus first on the call option results and then turn to put options, relying on put-call parity for a smooth transition. After incorporating dividends, we will examine selected sensitivities of the Greeks as well as some extensions.

In Chapter 13, we derived the Black-Scholes-Merton model, as given here:

$$
c = S N \left(d _ {1}\right) - X e ^ {- r _ {c} \tau} N \left(d _ {2}\right)
$$

$$
d _ {1} = \frac {\ln (S / X) + \left(r _ {c} + \sigma^ {2} / 2\right) \tau}{\sigma \sqrt {\tau}}
$$

$$
d _ {2} = d _ {1} - \sigma \sqrt {\tau}
$$

$$
N \left(d _ {i}\right) = \int_ {- \infty} ^ {d _ {i}} \frac {1}{\sqrt {2 \pi}} e ^ {- x ^ {2} / 2} d x, i = 1, 2. \tag {14.1}
$$

We noted that this formula is the solution to the following partial differential equation,

$$
r _ {c} S \frac {\partial c}{\partial S} + \frac {\partial c}{\partial t} + \frac {1}{2} \frac {\partial^ {2} c}{\partial S ^ {2}} \sigma^ {2} S ^ {2} = r _ {c} c. \tag {14.2}
$$

The only way to be absolutely certain that the solution of a differential equation is correct is to take the derivatives of the solution and insert them into the differential equation. If the solution is correct, the differential equation will turn into the solution equation. So, let us do that here. As is indicated in Equation (14.2), we shall need to take the first and second derivatives with respect to the asset price, which are called the delta and gamma, respectively, and the first derivative with respect to time, which is called the theta. We approximated these sensitivity measures in the binomial model. Now, we shall more formally derive them in the continuous time world.

Before starting, however, there are some interim results that will prove useful in this process. Recall that  $N(d)$  is the value of the cumulative density function, also called the distribution function, of a standard normal random variable,  $d$ . Thus, the integrand is

simply the probability density function denoted  $n(d)$ . We first take the partial derivatives of  $N(d_{1})$  and  $N(d_{2})$  with respect to  $d_{1}$  and  $d_{2}$ , respectively,

$$
\frac {\partial N \left(d _ {1}\right)}{\partial d _ {1}} = \frac {1}{\sqrt {2 \pi}} e ^ {- d _ {1} ^ {2} / 2} = n \left(d _ {1}\right) \tag {14.3}
$$

and

$$
\frac {\partial N \left(d _ {2}\right)}{\partial d _ {2}} = \frac {1}{\sqrt {2 \pi}} e ^ {- d _ {2} ^ {2} / 2} = \frac {1}{\sqrt {2 \pi}} e ^ {- \left(d _ {1} - \sigma \sqrt {\tau}\right) ^ {2} / 2} = n \left(d _ {2}\right). \tag {14.4}
$$

Further, we can establish the relationship between  $n(d_1)$  and  $n(d_2)$ . Focusing first on  $\left(d_1 - \sigma \sqrt{\tau}\right)^2$ , we note

$$
\begin{array}{l} \left(d _ {1} - \sigma \sqrt {\tau}\right) ^ {2} = d _ {1} ^ {2} - 2 \sigma \sqrt {\tau} d _ {1} + \sigma^ {2} \tau \\ = d _ {1} ^ {2} - 2 \sigma \sqrt {\tau} \left[ \frac {\ln (S / X) + \left(r _ {c} + \sigma^ {2} / 2\right) \tau}{\sigma \sqrt {\tau}} \right] + \sigma^ {2} \tau \\ = d _ {1} ^ {2} - 2 \ln \left(S / X e ^ {- r _ {c} \tau}\right). \\ \end{array}
$$

Substituting this result into Equation (14.4), we have either

$$
n \left(d _ {1}\right) = \frac {X e ^ {- r \tau} n \left(d _ {2}\right)}{S} \text {o r} \tag {14.5}
$$

$$
n \left(d _ {2}\right) = \frac {\operatorname {S n} \left(d _ {1}\right)}{\operatorname {X e} ^ {- r \tau}}. \tag {14.6}
$$

With these results, we note

$$
\frac {S}{X e ^ {- r \tau}} = \frac {n \left(d _ {2}\right)}{n \left(d _ {1}\right)} = \frac {\frac {e ^ {- d _ {2} ^ {2} / 2}}{\sqrt {2 \pi}}}{\frac {e ^ {- d _ {1} ^ {2} / 2}}{\sqrt {2 \pi}}} = e ^ {\left(d _ {1} ^ {2} - d _ {2} ^ {2}\right) / 2}. \tag {14.7}
$$

Focusing on the exponent,

$$
\begin{array}{l} \frac {d _ {1} ^ {2} - d _ {2} ^ {2}}{2} = \frac {1}{2} \left[ d _ {1} ^ {2} - \left(d _ {1} - \sigma \sqrt {\tau}\right) ^ {2} \right] = \frac {1}{2} \left(d _ {1} ^ {2} - d _ {1} ^ {2} + 2 d _ {1} \sigma \sqrt {\tau} - \sigma^ {2} \tau\right) = d _ {1} \sigma \sqrt {\tau} - \frac {\sigma^ {2} \tau}{2} \\ = \left[ \frac {\ln \left(\frac {S}{X}\right) + \left(r + \frac {\sigma^ {2}}{2}\right) \tau}{\sigma \sqrt {T}} \right] \sigma \sqrt {\tau} - \frac {\sigma^ {2} \tau}{2} = \ln \left(\frac {S}{X}\right) + r \tau . \tag {14.8} \\ \end{array}
$$

Therefore,

$$
e ^ {\left(d _ {1} ^ {2} - d _ {2} ^ {2}\right) / 2} = e ^ {\ln \left(\frac {S}{X}\right) + r \tau} = \frac {S}{X e ^ {- r \tau}}. \tag {14.9}
$$

We shall also need the derivatives of  $d_{1}$  and  $d_{2}$  with respect to  $S$ ,

$$
\frac {\partial d _ {1}}{\partial S} = \frac {\partial}{\partial S} \left(\frac {\left[ \ln (S / X) + \left(r _ {c} + \left(\sigma^ {2} / 2\right)\right) \tau \right.}{\sigma \sqrt {\tau}}\right) = \frac {1}{S \sigma \sqrt {\tau}}
$$

$$
\frac {\partial d _ {2}}{\partial S} = \frac {\partial (d _ {1} - \sigma \sqrt {\tau})}{\partial S} = \frac {\partial d _ {1}}{\partial S} = \frac {1}{S \sigma \sqrt {\tau}}. \tag {14.10}
$$

We also need the derivatives of  $d_{1}$  and  $d_{2}$  with respect to time to expiration,  $\tau$ . Recall the quotient rule from Chapter 3:

$$
y = \frac {b}{\nu} \text {w h e r e} b = f (x), \nu = g (x), \text {a n d} \nu \neq 0,
$$

$$
\frac {d y}{d x} = \frac {\nu \frac {d b}{d x} - b \frac {d \nu}{d x}}{\nu^ {2}} (\text {t h e q u o t i e n t r u l e}). \tag {14.11}
$$

Note for  $d_{1}$ ,  $b = \ln (S / X) + (r_c + \sigma^2 / 2)\tau$  and  $\nu = \sigma \sqrt{\tau}$ . Thus,  $\partial b / \partial \tau = (r_c + \sigma^2 / 2)$  and  $\partial \nu / \partial \tau = \sigma / (2\sqrt{\tau})$ . Further, we assume  $\sigma > 0$ . Thus, applying the quotient rule, we have

$$
\begin{array}{l} \frac {\partial d _ {1}}{\partial \tau} = \frac {\nu \frac {\partial b}{\partial x} - b \frac {\partial \nu}{\partial x}}{\nu^ {2}} = \frac {\sigma \sqrt {\tau} (r _ {c} + \frac {\sigma^ {2}}{2}) - [ \ln (S / X) + (r _ {c} + \sigma^ {2} / 2) \tau ] [ \sigma / (2 \sqrt {\tau}) ]}{\sigma^ {2} \tau} \mathrm {a n d} \\ = \frac {\left(r _ {c} + \frac {\sigma^ {2}}{2}\right) - \left[ \ln (S / X) + \left(r _ {c} + \sigma^ {2} / 2\right) \tau \right] [ 1 / (2 \tau) ]}{\sigma \sqrt {\tau}} = \frac {\left(r _ {c} + \frac {\sigma^ {2}}{2}\right)}{\sigma \sqrt {\tau}} - \frac {d _ {1}}{2 \tau}. \tag {14.12} \\ \end{array}
$$

$$
\begin{array}{l} \frac {\partial d _ {2}}{\partial \tau} = \frac {\partial d _ {1}}{\partial \tau} - \sigma \frac {\partial \sqrt {\tau}}{\partial \tau} = \frac {\left(r _ {c} + \frac {\sigma^ {2}}{2}\right)}{\sigma \sqrt {\tau}} - \frac {d _ {1}}{2 \tau} - \frac {\sigma}{2 \sqrt {\tau}} \\ = \frac {\left(r _ {c} + \frac {\sigma^ {2}}{2}\right)}{\sigma \sqrt {\tau}} - \frac {d _ {1} - \sigma \sqrt {\tau}}{2 \tau} = \frac {\left(r _ {c} + \frac {\sigma^ {2}}{2}\right)}{\sigma \sqrt {\tau}} - \frac {d _ {2}}{2 \tau}. \tag {14.13} \\ \end{array}
$$

From the formula for  $d_{1}$ , we will also use the following:

$$
S = X e ^ {d _ {1} \sigma \sqrt {\tau} - \left(r + \sigma^ {2} / 2\right) \tau} \text {a n d} \tag {14.14}
$$

$$
X = S e ^ {- d _ {1} \sigma \sqrt {\tau} + (r + \sigma^ {2} / 2) \tau}. \tag {14.15}
$$

# 14.1 DELTA: THE FIRST DERIVATIVE WITH RESPECT TO THE UNDERLYING PRICE

This measure is called the delta. We take the derivative of the call price with respect to the underlying price,

$$
\begin{array}{l} \frac {\partial c}{\partial S} = S \frac {\partial N (d _ {1})}{\partial S} + N (d _ {1}) - X e ^ {- r _ {c} \tau} \frac {\partial N (d _ {2})}{\partial S} \\ = S \frac {\partial N (d _ {1})}{\partial d _ {1}} \frac {\partial d _ {1}}{\partial S} + N (d _ {1}) - X e ^ {- r _ {c} \tau} \frac {\partial N (d _ {2})}{\partial d _ {2}} \frac {\partial d _ {2}}{\partial S}. \tag {14.16} \\ \end{array}
$$

Substituting from Equations (14.3), (14.4), and (14.10), we obtain

$$
\frac {\partial c}{\partial S} = N \left(d _ {1}\right) + S n \left(d _ {1}\right) \frac {1}{S \sigma \sqrt {\tau}} - X e ^ {- r _ {c} \tau} n \left(d _ {2}\right) \frac {1}{S \sigma \sqrt {\tau}}. \tag {14.17}
$$

Finally, based on Equation (14.6) we note that the last two terms cancel, thus the call option delta is

$$
\Delta_ {c} = \frac {\partial c}{\partial S} = N \left(d _ {1}\right). \tag {14.18}
$$

The delta expresses the instantaneous change in the option price for a change in the underlying price. Because  $N(d_{1})$  is a probability, its value is between 0 and 1. In the derivation of the Black-Scholes-Merton model, delta is also the hedge ratio, representing the number of units of the asset required to offset one unit of the option when the underlying price changes in continuous time.

# 14.2 GAMMA: THE SECOND DERIVATIVE WITH RESPECT TO THE UNDERLYING PRICE

The second derivative with respect to the underlying price is the gamma and is obtained as follows:

$$
\begin{array}{l} \Gamma_ {c} = \frac {\partial \left(\frac {\partial c}{\partial S}\right)}{\partial S} = \frac {\partial^ {2} c}{\partial S ^ {2}} = \frac {\partial N (d _ {1})}{\partial S} \\ = \frac {\partial N \left(d _ {1}\right)}{\partial d _ {1}} \frac {\partial d _ {1}}{\partial S} = \frac {n \left(d _ {1}\right)}{S \sigma \sqrt {\tau}}. \tag {14.19} \\ \end{array}
$$

This value is called the gamma. We can indeed think of it as the second derivative with respect to the asset price or we can think of it as the first derivative of the delta. Thus, it represents the instantaneous rate of change of the delta as the underlying price changes.

# 14.3 THETA: THE FIRST DERIVATIVE WITH RESPECT TO TIME

Now we need the derivative with respect to time to expiration.

$$
\begin{array}{l} \frac {\partial c}{\partial \tau} = S \frac {\partial N (d _ {1})}{\partial d _ {1}} \frac {\partial d _ {1}}{\partial \tau} - X e ^ {- r _ {c} \tau} \frac {\partial N (d _ {2})}{\partial d _ {2}} \frac {\partial d _ {2}}{\partial \tau} + r _ {c} N (d _ {2}) X e ^ {- r _ {c} \tau} \\ = S n \left(d _ {1}\right) \frac {\partial d _ {1}}{\partial \tau} - X e ^ {- r _ {c} \tau} n \left(d _ {2}\right) \frac {\left(\partial d _ {1} - \sigma \sqrt {\tau}\right)}{\partial \tau} + r _ {c} N \left(d _ {2}\right) X e ^ {- r _ {c} \tau} \\ = S n \left(d _ {1}\right) \frac {\partial d _ {1}}{\partial \tau} - X e ^ {- r _ {c} \tau} n \left(d _ {2}\right) \frac {\partial d _ {1}}{\partial \tau} + X e ^ {- r _ {c} \tau} n \left(d _ {2}\right) \frac {\sigma}{2 \sqrt {\tau}} + r _ {c} N \left(d _ {2}\right) X e ^ {- r _ {c} \tau}. \tag {14.20} \\ \end{array}
$$

Based on Equation (14.6), we know the first two terms cancel and we obtain

$$
\frac {\partial c}{\partial \tau} = \frac {\sigma X e ^ {- r _ {c} \tau}}{2 \sqrt {\tau}} n (d _ {2}) + r _ {c} X e ^ {- r _ {c} \tau} N (d _ {2}). \tag {14.21}
$$

Based again on Equation (14.6), we can express this result as

$$
\frac {\partial c}{\partial \tau} = \frac {\sigma S}{2 \sqrt {\tau}} n \left(d _ {1}\right) + r _ {c} X e ^ {- r _ {c} \tau} N \left(d _ {2}\right). \tag {14.22}
$$

Thus, the derivative with respect to time to expiration is clearly positive, which is intuitively consistent. A call option with a longer time to expiration is worth more. Generally speaking, however, we define theta as the derivative with respect to the point in time, that is,  $\partial c / \partial t$ . Recall that we defined the time to expiration as  $\tau = T - t$ . What we shall need in order to check the solution to the partial differential equation is  $\partial c / \partial t$ , but it is easy to see that  $\partial c / \partial t = -\partial c / \partial \tau$ . Hence,

$$
\Theta_ {c} = \frac {\partial c}{\partial t} = - \frac {\sigma S}{2 \sqrt {\tau}} n \left(d _ {1}\right) - r _ {c} X e ^ {- r _ {c} \tau} N \left(d _ {2}\right). \tag {14.23}
$$

This formula is one way to express theta. Alternatively, one could compute the partial with respect to time to expiration.

# 14.4 VERIFYING THE SOLUTION OF THE PARTIAL DIFFERENTIAL EQUATION

Now that we have the three necessary partial derivatives—Equations (14.18), (14.19), and (14.23)—we can substitute them into Equation (14.2):

$$
r _ {c} S N \left(d _ {1}\right) - \frac {\sigma S n \left(d _ {1}\right)}{2 \sqrt {\tau}} - r _ {c} X e ^ {- r _ {c} \tau} N \left(d _ {2}\right) + \frac {1}{2} n \left(d _ {1}\right) \frac {1}{S \sigma \sqrt {\tau}} \sigma^ {2} S ^ {2} = r _ {c} c
$$

$$
r _ {c} c = r _ {c} S N \left(d _ {1}\right) - r _ {c} X e ^ {- r _ {c} \tau} N \left(d _ {2}\right) - \frac {\sigma S}{2 \sqrt {\tau}} n \left(d _ {1}\right) + \frac {\sigma S}{2 \sqrt {\tau}} n \left(d _ {1}\right)
$$

$$
c = S N \left(d _ {1}\right) - X e ^ {- r _ {c} \tau} N \left(d _ {2}\right). \tag {14.24}
$$

And the end result is the Black-Scholes-Merton formula.

Recall for arithmetic Brownian motion with geometric drift, the PDE can be expressed as

$$
r _ {c} S \frac {\partial c}{\partial S} + \frac {\partial c}{\partial t} + \frac {1}{2} \frac {\partial^ {2} c}{\partial S ^ {2}} \sigma^ {2} = r _ {c} c. \tag {14.25}
$$

Further, recall that the resultant call value is

$$
c _ {t} = \left(S _ {t} - X e ^ {- r _ {c} (T - t)}\right) N \left(d _ {n}\right) + \sigma \sqrt {\frac {1 - e ^ {- 2 r _ {c} (T - t)}}{2 r _ {c}}} n \left(d _ {n}\right), \tag {14.26}
$$

where

$$
d _ {n} = \frac {S _ {0} - X e ^ {- r _ {c} (T - t)}}{\sigma \sqrt {\frac {1 - e ^ {- 2 r _ {c} (T - t)}}{2 r _ {c}}}}. \tag {14.27}
$$

It can be shown, based on the ABM model, that

$$
\frac {\partial c}{\partial S} = N \left(d _ {n}\right) (\text {d e l t a}) \tag {14.28}
$$

$$
\frac {\partial^ {2} c}{\partial S ^ {2}} = \frac {n \left(d _ {n}\right)}{\sigma \sqrt {\frac {1 - e ^ {- 2 r _ {c} (T - t)}}{2 r _ {c}}}} (\text {g a m m a}) \tag {14.29}
$$

$$
\frac {\partial C}{\partial t} = - r _ {c} X e ^ {- r _ {c} (T - t)} N \left(d _ {n}\right) - \frac {\sigma e ^ {- 2 r _ {c} (T - t)}}{2 \sqrt {\frac {1 - e ^ {- 2 r _ {c} (T - t)}}{2 r _ {c}}}} n \left(d _ {n}\right) (\text {t h e t a}). \tag {14.30}
$$

Substituting delta, gamma, and theta into the ABM PDE will result in Equation (14.26), and we have

$$
\begin{array}{l} r _ {c} c _ {t} = - r _ {c} X e ^ {- r (T - t)} N \big (d _ {n} \big) - \frac {\sigma e ^ {- 2 r _ {c} (T - t)}}{2 \sqrt {\frac {1 - e ^ {- 2 r _ {c} (T - t)}}{2 r _ {c}}}} n \big (d _ {n} \big) + r _ {c} \left[ N \big (d _ {n} \big) \right] S + \frac {1}{2} \sigma^ {2} \left[ \frac {n \big (d _ {n} \big)}{\sigma \sqrt {\frac {1 - e ^ {- 2 r _ {c} (T - t)}}{2 r _ {c}}}} \right] \\ = r _ {c} S N (d _ {n}) - r _ {c} X e ^ {- r (T - t)} N \big (d _ {n} \big) - \frac {\sigma e ^ {- 2 r _ {c} (T - t)} n \big (d _ {n} \big)}{2 \sqrt {\frac {1 - e ^ {- 2 r _ {c} (T - t)}}{2 r}}} + \frac {\sigma n (d _ {n})}{2 \sqrt {\frac {1 - e ^ {- 2 r _ {c} (T - t)}}{2 r _ {c}}}} \\ = r _ {c} (S - X e ^ {- r _ {c} (T - t)}) N \big (d _ {n} \big) + \frac {\sigma n (d _ {n})}{\sqrt {\frac {1 - e ^ {- 2 r _ {c} (T - t)}}{2 r _ {c}}}} \frac {(1 - e ^ {- 2 r _ {c} (T - t)})}{2} \\ = r _ {c} \left(S - X e ^ {- r _ {c} (T - t)}\right) N \left(d _ {n}\right) + r _ {c} \sigma \sqrt {\frac {1 - e ^ {- 2 r _ {c} (T - t)}}{2 r _ {c}}} n \left(d _ {n}\right). \tag {14.31} \\ \end{array}
$$

Therefore, we have verified that both the Black-Scholes-Merton and ABM models satisfy their respective partial differential equations. To further validate these models, one must confirm that boundary conditions and nonnegativity constraints are satisfied. See Chapter 13, Section 7, for the limiting argument for the Black-Scholes-Merton model.

# 14.5 SELECTED OTHER PARTIAL DERIVATIVES OF THE BLACK-SCHOLES-MERTON MODEL

In addition, we may be interested in how the option value varies with the volatility and risk-free rate. Note that the Black-Scholes-Merton model assumes that the volatility and the risk-free rate are constant. Thus, there is an element of incoherence to these calculations. Remember, however, that this is a financial model and as such will only ever be an approximation to the behavior of the underlying asset. We also know from empirical observation that both the volatility and risk-free rate often vary significantly over time. Thus, we wish to take their derivatives. As previously noted, the volatility and risk-free rate are assumed to not vary, but their partial derivatives show the sensitivity of the option price to different values of the volatility and interest rate. This is not the same as allowing them to vary within the model, but it is better than making no such adjustment. Models in which these input values vary do exist, but they are far more complex and face the difficult challenge of finding a way to hedge away their risk so that the final solution meets the risk-neutrality condition.

# 14.5.1 Vega: The Partial Derivative with Respect to the Volatility

If we differentiate the call price with respect to the volatility,  $\sigma$ , we get

$$
\frac {\partial c}{\partial \sigma} = S \frac {\partial N (d _ {1})}{\partial d _ {1}} \frac {\partial d _ {1}}{\partial \sigma} - X e ^ {- r _ {c} \tau} \frac {\partial N (d _ {2})}{\partial d _ {2}} \frac {\partial d _ {2}}{\partial \sigma}. \tag {14.32}
$$

Note that  $\partial d_2 / \partial \sigma = \partial d_1 / \partial \sigma -\sqrt{\tau}$  and substituting from Equations (14.3) and (14.4), we have

$$
\frac {\partial c}{\partial \sigma} = S n (d _ {1}) \frac {\partial d _ {1}}{\partial \sigma} - X e ^ {- r _ {c} \tau} n (d _ {2}) \left(\frac {\partial d _ {1}}{\partial \sigma} - \sqrt {\tau}\right). \tag {14.33}
$$

Substituting from Equation (14.6) for  $n(d_2)$  and cancelling terms, we obtain

$$
\nu_ {c} = \frac {\partial c}{\partial \sigma} = S \sqrt {\tau} n \left(d _ {1}\right). \tag {14.34}
$$

This value is clearly positive and is known as the vega. $^{1}$  Interestingly, the traditional interpretation of vega in the BSM model is that it helps one on the upside and does not hurt on the downside, but Chance (1994) shows that the effect is technically from the downside only and is strongly affected by the static and somewhat questionable assumption that the underlying is unaffected by the volatility change.

# 14.5.2 Rho: The Partial Derivative with Respect to the Risk-Free Rate

If we differentiate the call price with respect to the risk-free rate, we obtain

$$
\frac {\partial c}{\partial r} = S \frac {\partial N (d _ {1})}{\partial d _ {1}} \frac {\partial d _ {1}}{\partial r} - \left[ X e ^ {- r _ {c} \tau} \frac {\partial N (d _ {2})}{\partial d _ {2}} \frac {\partial d _ {2}}{\partial r} - \tau N (d _ {2}) X e ^ {- r _ {c} \tau} \right]. \tag {14.35}
$$

Making various substitutions as in the previous examples, we simplify this equation to

$$
\rho_ {c} = \frac {\partial c}{\partial r} = X e ^ {- r _ {c} \tau} \tau N \left(d _ {2}\right). \tag {14.36}
$$

This expression, called rho, is clearly positive.2

# 14.6 PARTIAL DERIVATIVES OF THE BLACK-SCHOLES-MERTON EUROPEAN PUT OPTION PRICING MODEL

The Black-Scholes-Merton European put option pricing model is repeated here as

$$
p = X e ^ {- r _ {c} \tau} N (- d _ {2}) - S N (- d _ {1}). \tag {14.37}
$$

Recall that put-call parity expresses the relationship between the put and call prices. To be consistent with the continuous time framework of Black-Scholes-Merton, we restate put-call parity using continuous discounting:

$$
p = c - S + X e ^ {- r _ {c} \tau}. \tag {14.38}
$$

We can obtain the derivatives of the put model by differentiating Equation (14.38) as follows:

$$
\frac {\partial p}{\partial S} = \frac {\partial c}{\partial S} - 1
$$

$$
\frac {\partial^ {2} p}{\partial S ^ {2}} = \frac {\partial^ {2} c}{\partial S ^ {2}}
$$

$$
\frac {\partial p}{\partial \tau} = \frac {\partial c}{\partial \tau} - r _ {c} X e ^ {- r _ {c} \tau}
$$

$$
\frac {\partial p}{\partial \sigma} = \frac {\partial c}{\partial \sigma}
$$

$$
\frac {\partial p}{\partial r _ {c}} = \frac {\partial c}{\partial r _ {c}} - \tau X e ^ {- r _ {c} \tau}. \tag {14.39}
$$

Substituting the partial derivatives of the call and simplifying, we obtain the put delta as

$$
\Delta_ {p} = \frac {\partial p}{\partial S} = N \left(d _ {1}\right) - 1 = - N \left(- d _ {1}\right). \tag {14.40}
$$

Thus, the put delta is clearly negative, as it should be. The gamma is

$$
\Gamma_ {p} = \frac {\partial^ {2} p}{\partial S ^ {2}} = \frac {1}{S \sigma \sqrt {\tau}} n \left(d _ {1}\right) = \Gamma_ {c}. \tag {14.41}
$$

The put gamma, which is the same as the call gamma, is clearly positive. The theta is obtained as

$$
\frac {\partial p}{\partial \tau} = \frac {S \sigma}{2 \sqrt {\tau}} n (d _ {1}) - r _ {c} X e ^ {- r _ {c} \tau} N (- d _ {2})
$$

$$
\Theta_ {p} = \frac {\partial p}{\partial t} = - \frac {S \sigma}{2 \sqrt {\tau}} n \left(d _ {1}\right) + r _ {c} X e ^ {- r _ {c} \tau} N (- d _ {2}). \tag {14.42}
$$

The put theta cannot be definitively signed. Indeed, it is well known that a European put can have a negative or positive theta. That is, the European put can have a lower or higher value with longer expiration. The negative relationship of put value to time to expiration occurs when the put is deep in-the-money. The upper limit of the put value, which exists by the fact that the put cannot achieve a higher value than the exercise price, can make a long-term put less valuable than a short-term put, the latter being closer to the time of expiration and the payoff from exercise. Because exercise of a put pays the exercise price, waiting a long time for that payoff penalizes the put holder. This unsigned theta on a European put is precisely the reason why if the put were American, there is a possibility that it would be optimal to exercise it early.

The vega is

$$
v _ {p} = \frac {\partial p}{\partial \sigma} = S \sqrt {\tau} n \left(d _ {1}\right). \tag {14.43}
$$

The put vega is the same as the call vega and is clearly positive. Finally, the rho is

$$
\rho_ {p} = \frac {\partial p}{\partial r} = - \tau X e ^ {- r _ {c} \tau} N (- d _ {2}). \tag {14.44}
$$

The put rho is negative, because a higher interest rate reflects the loss of greater interest from waiting to exercise the option.

# 14.7 INCORPORATING DIVIDENDS

In the case of continuous dividends, recall the Black-Scholes-Merton model is adjusted where  $S' = e^{-\delta \tau}S$  and can be expressed as

$$
c = S ^ {\prime} N \left(d _ {1}\right) - X e ^ {- r _ {c} \tau} N \left(d _ {2}\right)
$$

$$
p = X e ^ {- r _ {c} \tau} N (- d _ {2}) - S ^ {\prime} N (- d _ {1})
$$

$$
d _ {1} = \frac {\ln (S ^ {\prime} / X) + (r _ {c} + \sigma^ {2} / 2) \tau}{\sigma \sqrt {\tau}}
$$

$$
d _ {2} = d _ {1} - \sigma \sqrt {\tau}. \tag {14.45}
$$

TABLE 14.1 Dividend-Adjusted Greeks  

<table><tr><td>Greek</td><td>Calls</td><td>Puts</td></tr><tr><td>Delta</td><td>e-δτN(d1)</td><td>-e-δτN(-d1)</td></tr><tr><td>Gamma</td><td>e-δτn(d1)/Sσ√τ</td><td>Same as call</td></tr><tr><td rowspan="2">Theta</td><td>-σS&#x27;n(d1)/2√τ-rXe-rτN(d2)</td><td>-σS&#x27;n(d1)/2√τ+rXe-rτN(-d2)</td></tr><tr><td>+δS&#x27;N(d1)</td><td>-δS&#x27;N(-d1)</td></tr><tr><td>Vega</td><td>S&#x27;√τn(d1)</td><td>Same as call</td></tr><tr><td>Rho</td><td>τXe-rτN(d2)</td><td>-τXe-rτN(-d2)</td></tr></table>

For example, the dividend-adjusted deltas are simply

$$
\Delta_ {c} = \frac {\partial c}{\partial S} = \frac {\partial c}{\partial S ^ {\prime}} \frac {\partial S ^ {\prime}}{\partial S} = N (d _ {1}) e ^ {- \delta \tau} a n d \tag {14.46}
$$

$$
\Delta_ {p} = \frac {\partial p}{\partial S} = \frac {\partial p}{\partial S ^ {\prime}} \frac {\partial S ^ {\prime}}{\partial S} = - N (- d _ {1}) e ^ {- \delta \tau}. (1 4. 4 7)
$$

Table 14.1 presents the five dividend-adjusted Greeks for calls and puts.

The values of these Greeks are sensitive to changes in other parameters. We explore some of these sensitivities in Section 14.8.

# 14.8 GREEK SENSITIVITIES

We now consider the sensitivities of option values and Greeks to changes in the underlying. For this illustration we start with options that have the following parameters,  $X = 100$ ,  $r_c = 5.0\%$ ,  $\sigma = 30\%$ ,  $T - t = 1.0$  year, and  $\delta = 0.0\%$ . Figure 14.1 illustrates option values and Greeks over the stock price range from 0 to 200.

Several observations can be made from Figure 14.1. First, the call delta moves toward zero as the asset price falls and the call delta moves to one as the asset price rises (with the dividend yield assumed zero). Second, both gamma and vega directly reflect the lognormal distribution assumption with its positive skewness. Third, the difference between call and put deltas, thetas, and rhos are constants and relatively close to one based on the put-call parity relationship.

We now consider the sensitivities of option values and Greeks to changes in volatility. For this illustration, we again start with options that are at-the-money with  $S = X = 100$ ,  $r_c = 5.0\%$ ,  $T - t = 1.0$  year, and  $\delta = 0.0\%$ . Figure 14.2 illustrates option values and Greeks over the volatility range from  $0.0\%$  to  $60\%$ .

Several observations can be made from Figure 14.2. First, based on the value graph, we observe that the difference between the call and the put is simply  $S - Xe^{-r_c\tau}$ . Second,

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/00adf51458dfc58e45b392a2c11e2b2d76069fbd4eacead40f17cfec128745a4.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/4a849af75bdd3a7baf7eae1f3e87f81919d3d1d6016809cecd7b83a537b2f050.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/eafc7efb5ac5c4e33d80adad0230ff4d4c6e55cb85394b181150d6d9a7de2c9a.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/b94eea0e86d6a7ceeea66c1587dd40882eac07b0518f53de0668c0791e89d526.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/87ce7316c59e72447ac02ca4d01a66daff443ee0c7abdd01fb02280f5454d183.jpg)  
FIGURE 14.1 Sensitivity of Option Values and Greeks to Changes in Stock Price

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/a82aa91858e52b974190daff292aa7775f060f142b3df223a4f7d25084a6a551.jpg)

both gamma and vega are very sensitive as volatility approaches zero. Third, the difference between call and put thetas and rhos are constant across volatilities.

We now consider the sensitivities of option values and Greeks to changes in time to expiration. For this illustration, we again start with options that are at-the-money with  $S = X = 100$ ,  $r_c = 5.0\%$ ,  $\sigma = 30\%$ , and  $\delta = 0.0\%$ . Figure 14.3 illustrates option values and Greeks over the time to expiration range from zero to two years.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/36ec056a22227c9565076f39b61a06bea3c909bdc6f177de5b31c32327efa37c.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/a5439c4c78fcf41d775519dd011749f60e73d38520eed2871a0ef7867407bc12.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/ee1b55c545125d1a4da0aa410e0ddfe6a5acf1e90622baf726be6589511505e7.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/ec3eb9f557d65b2fce163a88ea5e4d626147df0eeab7417a2f649a1bfdae910a.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/05653390b8290c267c4f89764580221dbeefa16df2a69c8886bf325094dddf1c.jpg)  
FIGURE 14.2 Sensitivity of Option Values and Greeks to Changes in Volatility

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/12362aa0a51b8c816357b36ad414b189d11ecd388ce9ed5ce8b09adb25a44a6a.jpg)

Several observations can be made from Figure 14.3. First, based on the value graph, we observe that the at-the-money call is worth more than the at-the-money put, where the value difference reflects the magnitude of  $S - Xe^{-r_c\tau}$ . Second, both gamma and vega are very sensitive as time to expiration approaches zero. Third, the difference between call and put thetas shrinks as the time to expiration shortens. Finally, the rhos have opposite signs and increase in absolute value as time to expiration increases.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/8332b229760f5301632754fd4a62e23e7dbaf8e8c8759f72d84d38aadbf339b6.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/8c9b9f01b0f3829da11f99943ad61e8c0cd405384002f0399c1a0049c8819b35.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/04759bff96a0fe434ecd36f8300c2de881e8fdc13b494985f4676ee0c70c7abd.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/303164b841343be53866d824e05dcf90a875c45b50f66b9a30c6e9023d6b64d6.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/8e656a9214d699a28936aa97f32d0c40aa92b4d32f8103108e1b1389a8a71901.jpg)  
FIGURE 14.3 Sensitivity of Option Values and Greeks to Changes in Time to Expiration

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/f55f6717027d54f647d453f54ecb5d1907fed4b1313ebbf570d5e950a4e100ec.jpg)

# 14.9 ELASTICITIES

The Greeks presented here are simply partial derivatives. Thus, a call delta answers the question of how much a call price will increase for a small dollar change in the underlying asset. There is no adjustment for the absolute price level. In response to this problem, some have argued that various elasticities would be more informative.

For example, rather than report the call delta, it may be more informative to report the percentage change in the call price with respect to the percentage change in the underlying asset. Thus, the elasticity of the call price to the asset price, known as omega, is

$$
\Omega_ {c} = \frac {\partial c / c}{\partial S / S} = \frac {\partial c}{\partial S} \frac {S}{c} = \Delta_ {c} \frac {S}{c}. \tag {14.48}
$$

Note that elasticity is simply the first derivative, or delta, adjusted by what we call a leverage factor,  $S / c$ .

Similar calculations could be performed on all the reported Greeks. For example, the elasticity of a call price with respect to volatility is

$$
\frac {\partial c / c}{\partial \sigma / \sigma} = \frac {\partial c}{\partial \sigma} \frac {\sigma}{c} = \Theta_ {c} \frac {\sigma}{c}. \tag {14.49}
$$

We see that the reported elasticities could be significantly different from reported Greeks. Clearly, with the Greek formulas, we can easily compute the corresponding elasticities.

One well-known weakness of the Greeks and related elasticities is the lack of information regarding the different likelihoods of various parameter changes. For example, beyond the asset price, option prices are generally very sensitive to changes in volatilities. The Greeks do not address the likelihood of volatility increasing from  $30\%$  to  $33\%$  or a  $10\%$  increase. Moreover, as partial derivatives, the Greeks are technically accurate only for infinitesimal changes. One way to address this issue is through simulation, a topic we take up in Chapter 23.

# 14.10 EXTENDED GREEKS OF THE BLACK-SCHOLES-MERTON OPTION PRICING MODEL

There are many more Greeks, corresponding to the many different partial and cross-partial derivatives. For example, one can differentiate the vega with respect to time, so as to determine how vega changes as the option approaches expiration. There are numerous possible combinations. Table 14.2 provides selected Greek names where known or otherwise brief syntax is given.

# 14.11 RECAP AND PREVIEW

In this chapter, we derived the calculus derivatives of the Black-Scholes-Merton model to obtain the Greeks, which are the sensitivities of the option value to the factors that go into the models. We further illustrate selected sensitivities of Greeks to changes in the asset price, volatility, and time to expiration. Finally, we introduce elasticities as well as selected extended Greeks.

In Chapter 15, we examine a mathematical result known as Girsanov's theorem and show how it establishes our ability to derive the model under the risk-neutral or martingale measure.

TABLE 14.2 Extended Greek Names or Definitions  

<table><tr><td>Parameter</td><td>S</td><td>t</td><td>σ</td><td>r</td><td>X</td><td>δ</td></tr><tr><td colspan="7">First-Order Derivatives</td></tr><tr><td rowspan="2">Value (O)</td><td>∂O∂S</td><td>∂O∂t</td><td>∂O∂σ</td><td>∂O∂r</td><td>∂O∂X</td><td>∂O∂δ</td></tr><tr><td>Delta (Δ)</td><td>Theta (θ)</td><td>Vega (ν)</td><td>Rho (ρ)</td><td></td><td></td></tr><tr><td rowspan="2">Elasticity</td><td>O%S%</td><td>O%t%</td><td>O%σ%</td><td>O%r%</td><td>O%X%</td><td>O%δ%</td></tr><tr><td>Omega (Ω)</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="7">Selected Second-Order Derivatives</td></tr><tr><td rowspan="2">Delta (Δ)</td><td>∂Δ∂S</td><td>∂Δ∂t</td><td>∂Δ∂σ</td><td>∂Δ∂r</td><td>∂Δ∂X</td><td>∂Δ∂</td></tr><tr><td>Gamma (Γ)</td><td>Charm</td><td>Vanna</td><td></td><td></td><td></td></tr><tr><td rowspan="2">Theta (θ)</td><td></td><td>∂θ∂t</td><td>∂θ∂σ</td><td>∂θ∂r</td><td>∂θ∂X</td><td>∂θ∂δ</td></tr><tr><td></td><td></td><td>Veta</td><td></td><td></td><td></td></tr><tr><td rowspan="2">Vega (ν)</td><td></td><td></td><td>∂ν∂σ</td><td>∂ν∂r</td><td>∂ν∂X</td><td>∂ν∂δ</td></tr><tr><td></td><td></td><td>Vomma</td><td>Ver</td><td></td><td></td></tr><tr><td>Rho (ρ)</td><td></td><td></td><td></td><td>∂ρ∂r</td><td>∂ρ∂X</td><td>∂ρ∂δ</td></tr><tr><td>∂O∂X</td><td></td><td></td><td></td><td></td><td>(∂O∂X)∂X</td><td>(∂O∂X)∂δ</td></tr><tr><td>∂O∂δ</td><td></td><td></td><td></td><td></td><td></td><td>(∂O∂δ)∂δ</td></tr><tr><td colspan="7">Selected Third-Order Derivatives</td></tr><tr><td rowspan="2">Gamma (Γ)</td><td>∂Γ∂S</td><td>∂Γ∂t</td><td>∂Γ∂σ</td><td>∂Γ∂r</td><td>∂Γ∂X</td><td>∂Γ∂δ</td></tr><tr><td>Speed</td><td>Color</td><td>Zomma</td><td></td><td></td><td></td></tr><tr><td>∂θ∂t</td><td></td><td>(∂θ∂t) ∂t</td><td>(∂θ∂t)∂σ</td><td>(∂θ∂t)∂r</td><td>(∂θ∂t)∂X</td><td>(∂θ∂t)∂δ</td></tr><tr><td rowspan="2">Vomma</td><td></td><td></td><td>∂Vomma∂σ</td><td>∂Vomma∂r</td><td>∂Vomma∂X</td><td>∂Vomma∂δ</td></tr><tr><td></td><td></td><td>Ultima</td><td></td><td></td><td></td></tr><tr><td>∂ρ∂r</td><td></td><td></td><td></td><td>(∂ρ∂r)∂r</td><td>(∂ρ∂r)∂X</td><td>(∂ρ∂r)∂δ</td></tr><tr><td>···</td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table>

# QUESTIONS AND PROBLEMS

1 Derive the call and put theta for a stock that pays a continuous dividend yield,  $\delta$  
2 Prove the following relationships for stocks with a dividend yield,  $\delta$ :

$$
n \left(d _ {1}\right) = \frac {X e ^ {- r T} n \left(d _ {2}\right)}{S e ^ {- \delta T}} \text {o r}
$$

$$
n \big (d _ {2} \big) = \frac {S e ^ {- \delta T} n \big (d _ {1} \big)}{X e ^ {- r T}}.
$$

3 Derive the partial derivative of the call price with respect to the dividend yield,  $\delta$

4 One of the most important cross-partial derivatives is vanna, the partial derivative of delta with respect to the volatility, because delta is key to risk management and volatility is not constant in practice. Derive the vanna for both calls and puts on a dividend paying stock with yield,  $\delta$ .

$$
V a n n a _ {c} = \frac {\partial \Delta_ {c}}{\partial \sigma} = \frac {\partial}{\partial \sigma} e ^ {- \delta \tau} N (d _ {1})
$$

5 Derive  $\partial c / \partial X$  for a stock paying a dividend yield,  $\delta$ .

# NOTES

1. Vega is not a Greek word and the symbol typically used is the Greek nu because it looks similar to  $\nu$  for volatility. Thus, it has come to be used as one of the option Greeks.  
2. It is also possible to differentiate with respect to the exercise price. One would obtain  $\frac{\partial c}{\partial X} = -e^{-r_c\tau}N(d_2)$ , which is negative. Because the exercise price does not change, however, this value has no name and is rarely needed. One case in which it has been used is in extracting the risk-neutral density implied by the option price. It is fairly easy to see how this is done. Note that the cumulative density is in the formula for the partial with respect to  $X$ . This implies that the density itself can be extracted. By using a sample of the prices of options that vary only by slightly different exercise prices, one can infer the density that implies the option price.


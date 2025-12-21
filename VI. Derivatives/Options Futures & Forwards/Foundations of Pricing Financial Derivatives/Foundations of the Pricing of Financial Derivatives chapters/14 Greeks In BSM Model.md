---
aliases:
  - The Greeks in the Black-Scholes-Merton Model
parent_directory: Foundations of the Pricing of Financial Derivatives chapters
cssclasses: academia
title: "Chapter 14: The Greeks in the Black-Scholes-Merton Model"
formatted: 2025-12-21 03:00:00 AM
formatter_model: kimi-k2-turbo
cli-tool: claude-code
primary_tags:
  - black-scholes-merton model
  - option greeks
  - derivative pricing
secondary_tags:
  - delta hedging
  - gamma risk
  - theta decay
  - vega exposure
  - rho sensitivity
  - option sensitivities
  - risk management
  - volatility derivatives
  - interest rate derivatives
---

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

We noted that this formula is the solution to the following partial differential equation:

$$
r _ {c} S \frac {\partial c}{\partial S} + \frac {\partial c}{\partial t} + \frac {1}{2} \frac {\partial^ {2} c}{\partial S ^ {2}} \sigma^ {2} S ^ {2} = r _ {c} c. \tag {14.2}
$$

The only way to be absolutely certain that the solution of a differential equation is correct is to take the derivatives of the solution and insert them into the differential equation. If the solution is correct, the differential equation will turn into the solution equation. So, let us do that here. As is indicated in Equation (14.2), we shall need to take the first and second derivatives with respect to the asset price, which are called the delta and gamma, respectively, and the first derivative with respect to time, which is called the theta. We approximated these sensitivity measures in the binomial model. Now, we shall more formally derive them in the continuous time world.

Before starting, however, there are some interim results that will prove useful in this process. Recall that  $N(d)$  is the value of the cumulative density function, also called the distribution function, of a standard normal random variable,  $d$ . Thus, the integrand is simply the probability density function denoted  $n(d)$ . We first take the partial derivatives of  $N(d_{1})$  and  $N(d_{2})$  with respect to  $d_{1}$  and  $d_{2}$ , respectively,

$$
\frac {\partial N \left(d _ {1}\right)}{\partial d _ {1}} = \frac {1}{\sqrt {2 \pi}} e ^ {- d _ {1} ^ {2} / 2} = n \left(d _ {1}\right) \tag {14.3}
$$

$$
\frac {\partial N \left(d _ {2}\right)}{\partial d _ {2}} = \frac {1}{\sqrt {2 \pi}} e ^ {- d _ {2} ^ {2} / 2} = n \left(d _ {2}\right). \tag {14.4}
$$

and

$$
\frac {\partial N \left(d _ {2}\right)}{\partial d _ {2}} = \frac {1}{\sqrt {2 \pi}} e ^ {- d _ {2} ^ {2} / 2} = \frac {1}{\sqrt {2 \pi}} e ^ {- \left(d _ {1} - \sigma \sqrt {\tau}\right) ^ {2} / 2} = n \left(d _ {2}\right). \tag {14.4}
$$

Further, we can establish the relationship between  $n(d_1)$  and  $n(d_2)$ . Focusing first on  $\left(d_1 - \sigma \sqrt{\tau}\right)^2$ , we note:

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

Thus, the derivative with respect to time to expiration is clearly positive, which is intuitively consistent. A call option with a longer time to expiration is worth more. Generally speaking, however, we define theta as the derivative with respect to the point in time, that is, $\partial c / \partial t$. Recall that we defined the time to expiration as $\tau = T - t$. What we shall need in order to check the solution to the partial differential equation is $\partial c / \partial t$, but it is easy to see that $\partial c / \partial t = -\partial c / \partial \tau$. Hence,

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

This value is clearly positive and is known as the vega. $^{1}$ Interestingly, the traditional interpretation of vega in the BSM model is that it helps one on the upside and does not hurt on the downside, but Chance (1994) shows that the effect is technically from the downside only and is strongly affected by the static and somewhat questionable assumption that the underlying is unaffected by the volatility change.

# 14.5.2 Rho: The Partial Derivative with Respect to the Risk-Free Rate

If we differentiate the call price with respect to the risk-free rate, we obtain

$$
\frac {\partial c}{\partial r} = S \frac {\partial N (d _ {1})}{\partial d _ {1}} \frac {\partial d _ {1}}{\partial r} - \left[ X e ^ {- r _ {c} \tau} \frac {\partial N (d _ {2})}{\partial d _ {2}} \frac {\partial d _ {2}}{\partial r} - \tau N (d _ {2}) X e ^ {- r _ {c} \tau} \right]. \tag {14.35}
$$

Making various substitutions as in the previous examples, we simplify this equation to

$$
\rho_ {c} = \frac {\partial c}{\partial r} = X e ^ {- r _ {c} \tau} \tau N \left(d _ {2}\right). \tag {14.36}
$$

This expression, called rho, is clearly positive.$^{2}$

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
\Delta_ {c} = \frac {\partial c}{\partial S} = \frac {\partial c}{\partial S ^ {\prime}} \frac {\partial S ^ {\prime}}{\partial S} = N (d _ {1}) e ^ {- \delta \tau} \tag {14.46}
$$

$$
\Delta_ {p} = \frac {\partial p}{\partial S} = \frac {\partial p}{\partial S ^ {\prime}} \frac {\partial S ^ {\prime}}{\partial S} = - N (- d _ {1}) e ^ {- \delta \tau}. \tag {14.47}
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
Vanna _ {c} = \frac {\partial \Delta_ {c}}{\partial \sigma} = \frac {\partial}{\partial \sigma} e ^ {- \delta \tau} N (d _ {1})
$$

5 Derive  $\partial c / \partial X$  for a stock paying a dividend yield,  $\delta$ .

# NOTES

1. Vega is not a Greek word and the symbol typically used is the Greek nu because it looks similar to  $\nu$  for volatility. Thus, it has come to be used as one of the option Greeks.  
2. It is also possible to differentiate with respect to the exercise price. One would obtain  $\frac{\partial c}{\partial X} = -e^{-r_c\tau}N(d_2)$ , which is negative. Because the exercise price does not change, however, this value has no name and is rarely needed. One case in which it has been used is in extracting the risk-neutral density implied by the option price. It is fairly easy to see how this is done. Note that the cumulative density is in the formula for the partial with respect to  $X$ . This implies that the density itself can be extracted. By using a sample of the prices of options that vary only by slightly different exercise prices, one can infer the density that implies the option price.


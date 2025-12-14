---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Option Prices and Expected Returns
linter-yaml-title-alias: Option Prices and Expected Returns
---

# Option Prices and Expected Returns

In the study of finance in general, we devote considerable time to deriving and using pricing models. Probably the two best known pricing models are the capital asset pricing model and the Black-Scholes-Merton option pricing model.<sup>1</sup> The former, commonly referred to as the CAPM, provides the required rate of return on the asset. If the asset is correctly priced, which the model assumes must happen in equilibrium, the return expected by investors, known as the expected rate of return, equals the required rate of return. But asset pricing models are not usually expressed in terms of the price of the asset, whereas option pricing models are almost always expressed in terms of the price of the option. In this chapter, we shall connect the expected return and price for both the asset and the option. In addition, we shall tie together the expected returns and volatilities of the option to that of the asset. Much of this work draws from Rubinstein (1984).

# 30.1 THE BASIC FRAMEWORK

The CAPM is as follows:

$$
E \left(R _ {s}\right) = r + \left[ E \left(R _ {m}\right) - r \right] \beta_ {s}, \tag {30.1}
$$

where

$$
\begin{array}{l} E \left(R _ {s}\right) = \text {e x p e c t e d a n d r e q u i r e d r e t u r o n} s \\ r = \text {r i s k} - \text {f r e e r a t e} \\ \end{array}
$$

$$
\begin{array}{l} E \left(R _ {m}\right) = \text {e x p e c t e d a n d r e q u i r e d r e t u r n o n t h e m a r k e t p o r t f i l o o f a l l r i s k y a s s e t s} \\ \beta_ {s} = \text {b e t a o f a s s e t} s, \text {o b t a i n e d a s} \\ \frac {\operatorname {c o v} \left(R _ {s} , R _ {m}\right)}{\operatorname {v a r} \left(R _ {m}\right)} \\ a n d \\ \end{array}
$$

$$
\begin{array}{l} \operatorname {c o v} \left(\mathrm {R} _ {s}, R _ {m}\right) = \text {c o v a r i a n c e} s \\ \sigma_ {m} ^ {2} = \text {v a r i a n c e} m. \\ \end{array}
$$

Note that here we use the terms expected return and required return interchangeably. As noted, the expected return is the return the investor expects, given the market price. The required return is the return that is justified given the risk. The latter assumes the market is in equilibrium, along with a number of other assumptions. Although the CAPM technically gives the required return, this rate is usually referred to as the expected return, as noted by the use of the expectations operator.

The CAPM is not typically expressed in the form of the price of an asset, though that can be done using a model specifying how the asset price is obtained from its future cash flow. For example, define the one-period return on an asset  $S$  as

$$
R _ {s} = \frac {S ^ {\prime}}{S} - 1, \tag {30.2}
$$

where  $S$  is the asset price one period later. The expected return would be

$$
E \left(R _ {s}\right) = \frac {E \left(S ^ {\prime}\right)}{S} - 1. \tag {30.3}
$$

Note that Equations (30.1) and (30.3) both provide the expected return, the left-hand side, in terms of an expression on the right-hand side. Using the definition of beta as stated and equating these two specifications for the expected return, we have

$$
\frac {E \left(R _ {s}\right)}{S} - 1 = r + \left[ E \left(R _ {m}\right) - r \right] \frac {\operatorname {c o v} \left(R _ {s} , R _ {m}\right)}{\sigma_ {m} ^ {2}}. \tag {30.4}
$$

Given the rules for covariance, we can also say that

$$
\begin{array}{l} \operatorname {c o v} \left(R _ {s}, R _ {m}\right) = \operatorname {c o v} \left(\frac {S ^ {\prime}}{S} - 1, R _ {m}\right). \\ = \frac {1}{S} \operatorname {c o v} \left(S ^ {\prime}, R _ {m}\right). \\ \end{array}
$$

We can substitute this result into (30.4) and solve for  $S$  to obtain

$$
S = \frac {E (S ^ {\prime}) - \lambda \operatorname {c o v} (S ^ {\prime} , R _ {m})}{1 + r},
$$

where

$$
\lambda = \frac {E \left(R _ {m}\right) - r}{\sigma_ {m} {} ^ {2}}. \tag {30.5}
$$

This equation is the CAPM written in the form of a price. In the numerator, we have the expected value of the asset at the next date,  $E(S')$  minus the risk premium,  $\lambda \operatorname{cov}(S', R_m)$ . The term  $\lambda$  is the market risk premium and reflects the average level of risk in the market. The numerator is a risk-adjusted future value of the asset, which is then discounted by the risk-free rate to obtain the price. Financial economists typically refer to this form of the model as a certainty equivalent, a concept that we have previously encountered. $^3$

Option pricing models, in contrast to asset pricing models, are nearly always written in the form of a price. In the case of Black-Scholes-Merton, which we derived in Chapter 13, the price is, of course,

$$
c = S N \left(d _ {1}\right) - X e ^ {- r _ {c} \tau} N \left(d _ {2}\right), \tag {30.6}
$$

where

$$
d _ {1} = \frac {\ln (S / X) + \left(r _ {c} + \sigma^ {2} / 2\right) \tau}{\sigma \sqrt {\tau}},
$$

and

$$
d _ {2} = \frac {\ln (S / X) + \left(r _ {c} - \sigma^ {2} / 2\right) \tau}{\sigma \sqrt {\tau}} = d _ {1} - \sigma \sqrt {\tau}.
$$

As you should recall, the Black-Scholes-Merton model is obtained in continuous time by forming a risk-free hedge consisting of the underlying asset and the option. The option price formula is derived as the solution given the constraint that the riskless portfolio must earn the risk-free rate to prevent arbitrage.

It is rare that the option pricing model is expressed in the form of the expected return of the option. We provide the linkage between the notion of an equilibrium expected return and an arbitrage-free price of a call option. The same result can be obtained if the option is a put with nothing but minor notational changes.

# 30.2 EXPECTED RETURNS ON OPTIONS

Consider a hedge portfolio consisting of  $h$  shares of the asset and one short call option. The portfolio value is  $hS - c$ . One period later the portfolio will be worth

$$
b (S + \Delta S) - (c + \Delta c), \tag {30.7}
$$

where the symbol  $\Delta$  means the change in  $S$  or  $c$ . If this portfolio is hedged, its value should grow at the risk-free rate. Hence, the following condition must hold:

$$
\left(h S - c\right) (1 + r) = h (S + \Delta S) - (c + \Delta c). \tag {30.8}
$$

Gathering option terms on the left-hand side and asset terms on the right-hand side and dividing by  $c$ , we obtain the following result:

$$
\frac {\Delta c}{c} = r + \left(\frac {\Delta S}{S} - r\right) h \left(\frac {S}{c}\right). \tag {30.9}
$$

This expression says that the option return is the sum of the risk-free rate and an ex-post risk premium,  $\Delta S / S - r$ , times a risk factor  $h(S / c)$ . Recall that the Black-Scholes-Merton model tells us that

$$
b = \frac {\partial c}{\partial S}, \tag {30.10}
$$

which should be recognized as the option's delta. Expressing the delta in discrete time, we have

$$
b = \frac {\Delta c}{\Delta S}. \tag {30.11}
$$

Then the risk factor is

$$
\frac {\Delta c}{\Delta S} \frac {S}{c} = \frac {\Delta c / c}{\Delta S / c}. \tag {30.12}
$$

Economists will recognize any term reflecting the percentage movement in one variable divided by the percentage movement in another as the concept of elasticity. Thus, we see that the return on the option is related to the return on the asset by the risk-free rate, a risk premium, and a term reflecting the option's elasticity.

Elasticity in this context measures the sensitivity of the option to the asset and, hence, is a reflection of the leverage of the option. Elasticity is closely related to the concept of the delta of the option,  $\partial c / \partial S$ , which is also the hedge ratio, but delta is an absolute measure, capturing the movement of the option price relative to the movement in the asset price. Elasticity is a relative measure and, as such, is more appropriate when dealing with rates of return.

The elasticity of a standard European call is at least equal to 1. This means that the absolute value of the option return will exceed the absolute value of the asset return. The elasticity of an option is often denoted with the Greek letter omega  $\Omega$ . Thus, our equation for the return on the option is

$$
\frac {\Delta c}{c} = r + \left(\frac {\Delta S}{S} - r\right) \Omega . \tag {30.13}
$$

Now with this result, we can examine the expected return on the option. Taking the expectation of this equation, we obtain

$$
E \left(\frac {\Delta c}{c}\right) = r + \left[ E \left(\frac {\Delta S}{S}\right) - r \right] \Omega . (3 0. 1 4)
$$

The left-hand side,  $E(\Delta c / c)$ , is the expected return on the call, which we denote as  $E\big(R_c\big)$ . Within the right-hand side, the term  $E(\Delta S / S)$  is the expected return on the asset, which we denote as  $E\big(R_S\big)$ . Now we have a simple equation for the expected return on the call:

$$
E \left(R _ {c}\right) = r + \left(E \left(R _ {s}\right) - r\right) \Omega . \tag {30.15}
$$

We see that the expected return on the call equals the risk-free rate plus the risk premium on the underlying asset times the elasticity of the option. This functional form is very appealing and intuitive. The option's expected return at a minimum is the risk-free rate and is increased by a risk premium, which is the product of the risk premium on the asset and the risk of the option relative to the asset. We can also write this as

$$
E \left(R _ {c}\right) = r + \left[ E \left(R _ {s}\right) - r \right] \frac {\partial c}{\partial S} \left(\frac {S}{c}\right). \tag {30.16}
$$

Now let us try to determine the volatility of the option.

# 30.3 VOLATILITIES OF OPTIONS

Of course, one naturally thinks of volatility as important for an option, but the volatility we refer to in that context is the volatility of the asset. Now we are interested in the volatility of the option. Using the expression created previously for the return on the option as a function of the return on the asset, we take the variance of the option return:

$$
\begin{array}{l} \operatorname {v a r} \left(\frac {\Delta c}{c}\right) = \operatorname {v a r} \left\{r + \left[ \left(\frac {\Delta S}{S}\right) - r \right] \Omega \right\} \\ = \operatorname {v a r} \left\{\left(\frac {\Delta S}{S}\right) \Omega \right\} \\ = \Omega^ {2} \operatorname {v a r} \left(\frac {\Delta S}{S}\right). \tag {30.17} \\ \end{array}
$$

Expressing this result in terms of the standard deviation results in

$$
\sigma_ {c} = \Omega \sigma_ {S}. \tag {30.18}
$$

And we can also express it as

$$
\sigma_ {c} = h \left(\frac {S}{c}\right) \sigma_ {S}. \tag {30.19}
$$

We see that the volatility of the option is the volatility of the asset times the elasticity. Thus, the risk of the option is the risk of the asset times the risk of the option relative to the asset. This result should seem intuitive.

These results concerning expected returns and volatilities of options apply regardless of how expected returns are determined on the underlying asset. In the special case that the CAPM explains expected returns on assets, we can obtain some further insights.

# 30.4 OPTIONS AND THE CAPITAL ASSET PRICING MODEL

Recall that the CAPM is a model for the pricing of all risky assets. An option is a risky asset. Therefore, if the CAPM holds for all risky assets, the expected return on the option must also be governed by the CAPM. Hence, the following equation applies:

$$
E \left(R _ {c}\right) = r + \left[ E \left(R _ {m}\right) - r \right] \beta_ {c}, \tag {30.20}
$$

where  $\beta_{c}$  is the beta of the call and is recognized as its risk with respect to the market portfolio. Substituting our CAPM equation for the expected return on the asset into the CAPM for the expected return on the option gives

$$
\begin{array}{l} E \left(R _ {c}\right) = r + \left[ E \left(R _ {s}\right) - r \right] \Omega \\ = r + \left(\left\{r + \left[ E \left(R _ {m}\right) - r \right] \beta_ {s} \right\} - r\right) \Omega \\ = r + \left[ E \left(R _ {m}\right) - r \right] \beta_ {s} \Omega . \tag {30.21} \\ \end{array}
$$

Hence, the option beta is given as

$$
\beta_ {c} = \beta_ {s} \Omega , \tag {30.22}
$$

indicating that the beta of the option is the beta of the asset times the elasticity. Once again, we see the role that elasticity plays. As we noted, elasticity is a relative measure, that is, the percentage change in the option return divided by the percentage change in the asset return. Because beta is a relative measure, naturally elasticity plays an important part in the relationship of the beta of the option to the beta of the asset.

# 30.5 OPTIONS AND THE SHARPE RATIO

A widely used measure of investment performance is the Sharpe ratio. For a portfolio with return  $R_{p}$  and volatility  $\sigma_{p}$ , the Sharpe ratio is

$$
\operatorname {S h a r p e} _ {p} = \frac {R _ {p} - r}{\sigma_ {p}}. \tag {30.23}
$$

The Sharpe ratio measures the return in excess of the risk-free rate, which is the numerator, relative to the total risk, which is the denominator. Using our measures of return and volatility for an option, Equations (30.9) and (30.19), the Sharpe ratio for a call option is

$$
\begin{array}{l} \mathrm {S h a r p e} _ {c} = \frac {R _ {c} - r}{\sigma_ {c}} \\ = \frac {r + \left(\frac {\Delta S}{S} - r\right) b \left(\frac {S}{c}\right) - r}{b \left(\frac {S}{c}\right) \sigma_ {s}} \\ = \frac {\left(\frac {\Delta S}{S} - r\right)}{\sigma_ {s}}. \tag {30.24} \\ \end{array}
$$

In other words, the Sharpe ratio for an option is simply the Sharpe ratio for the asset. This result is likely to surprise some, but an explanation is simple. The Sharpe ratio measures whether an investment provided a risk premium in excess of the appropriate risk premium for its level of risk. If the option is correctly priced relative to its underlying asset, it cannot provide a risk premium beyond that already provided by the asset. The option merely leverages the risk premium of the asset. And the leverage used by the option, although an advantage in augmenting the return, is an offsetting disadvantage in augmenting the risk. That is, the Sharpe ratio is a proportional measure of performance. If the numerator and denominator change by the same proportion, the Sharpe ratio cannot change.

Of course, if the option is mispriced, then the arbitrage linkage between option and asset that enabled us to obtain the above results is broken. An option would then provide a form of excess return, and the Sharpe ratio of the option would exceed that of the asset.[5]

# 30.6 THE STOCHASTIC PROCESS FOLLOWED BY THE OPTION

When deriving the option pricing model, we assume that the asset follows a stochastic process of the form

$$
d S = \alpha_ {s} S d t + S \sigma_ {s} d W, \tag {30.25}
$$

where  $dW$  is a standard Brownian motion. To obtain the option pricing model, we require the stochastic process for the asset. We do not, however, specifically require a full analysis of the option's stochastic properties to obtain its price. $^6$  Studies of the performance of option strategies and of option pricing models, however, invariably make use of probability models and statistical rules. Hence, it may be important for some purposes to know what the stochastic process of the option would look like. In general, we would expect it to be of the form

$$
d c = \alpha_ {c} (S, t) d t + \sigma_ {c} (S, t) d W, \tag {30.26}
$$

where we note that the option's expected return and volatility are functions of  $S$  and  $t$ .

Recall that in deriving the option pricing formula, we use Ito's lemma, which expresses the change in the option price as a function of firstand second-order changes in the asset price and time,

$$
d c = \frac {\partial c}{\partial S} d S + \frac {\partial c}{\partial t} d t + \frac {1}{2} \frac {\partial^ {2} c}{\partial S ^ {2}} d S ^ {2}. \tag {30.27}
$$

Substituting the stochastic process of the asset for  $dS$  and noting that  $dS^2$  is the well-known result  $S^2\sigma_S^2 dt$ , we obtain

$$
d c = \left(\frac {\partial c}{\partial S} S \alpha_ {s} + \frac {1}{2} \frac {\partial^ {2} c}{\partial S ^ {2}} S ^ {2} \sigma_ {s} ^ {2} + \frac {\partial c}{\partial t}\right) d t + \left(\frac {\partial c}{\partial S} S \sigma_ {s}\right) d W. \tag {30.28}
$$

Dividing by  $c$ , we now have a statement for the return on the call,

$$
\frac {d c}{c} = \left(\frac {\frac {\partial c}{\partial S} S \alpha_ {s} + \frac {1}{2} \frac {\partial^ {2} c}{\partial S ^ {2}} S ^ {2} \sigma_ {s} ^ {2} + \frac {\partial c}{\partial t}}{c}\right) d t + \left(\frac {\partial c}{\partial S} \frac {S}{c} \sigma_ {s}\right) d W. \tag {30.29}
$$

We can write this more compactly as

$$
\frac {d c}{c} = \alpha_ {c} d t + \sigma_ {c} d W, \tag {30.30}
$$

where

$$
\alpha_ {c} = \left(\frac {1}{c}\right) \left(\frac {\partial c}{\partial S} S \alpha_ {s} + \frac {1}{2} \frac {\partial^ {2} c}{\partial S ^ {2}} S ^ {2} \sigma_ {s} ^ {2} + \frac {\partial c}{\partial t}\right) \text {a n d} \tag {30.31}
$$

$$
\sigma_ {c} = \frac {\partial c}{\partial S} \frac {S}{c} \sigma_ {s}. \tag {30.32}
$$

Now, suppose we wish to obtain the expected return,  $\mu_c$ , and volatility,  $\sigma_c$ , of the option. We must first recognize the dimension of the parameters of the model. In the option

pricing model, the return on the option,  $dc / c$ , is a measure over an infinitesimal time interval. We can take the expected return, but it will be multiplied by  $dt$  and will reflect the expectation over this very short time interval. The CAPM deals with returns over a finite interval.<sup>7</sup>

Taking expectations of Equation (30.29), we obtain

$$
\begin{array}{l} E \bigg (\frac {d c}{c} \bigg) = E \bigg [ \left(\frac {\frac {\partial c}{\partial S} S \alpha_ {s} + \frac {1}{2} \frac {\partial^ {2} c}{\partial S ^ {2}} S ^ {2} \sigma_ {s} ^ {2} + \frac {\partial c}{\partial t}}{c}\right) d t + \left(\frac {\partial c}{\partial S} \frac {S}{c} \sigma_ {s}\right) d W \bigg ] \\ = E \left[ \left(\frac {\frac {\partial c}{\partial S} S \alpha_ {s} + \frac {1}{2} \frac {\partial^ {2} c}{\partial S ^ {2}} S ^ {2} \sigma_ {s} ^ {2} + \frac {\partial c}{\partial t}}{c}\right) d t \right] \\ = \left(\frac {\frac {\partial c}{\partial S} S \alpha_ {s} + \frac {1}{2} \frac {\partial^ {2} c}{\partial S ^ {2}} S ^ {2} \sigma_ {s} ^ {2} + \frac {\partial c}{\partial t}}{c}\right) d t \\ = \alpha_ {c} d t. \tag {30.33} \\ \end{array}
$$

Although this formula for the expected return does not look like the expected return for the option, it can be shown to be the same, provided we assume that Black-Scholes-Merton holds. All we are required to do is substitute the partial derivatives  $\partial c / \partial S$ ,  $\partial^2 c / \partial S^2$ , and  $\partial c / \partial t$  from the Black-Scholes-Merton model. We repeat these formulas from Chapter 14:

$$
\frac {\partial c}{\partial S} = N \left(d _ {1}\right). \tag {30.34}
$$

$$
\frac {\partial^ {2} c}{\partial S ^ {2}} = \frac {e ^ {- d _ {1} ^ {2} / 2}}{S \sigma_ {S} \sqrt {2 \pi \tau}}. \tag {30.35}
$$

$$
\frac {\partial c}{\partial t} = - \frac {S \sigma_ {S} e ^ {- d _ {1} ^ {2} / 2}}{2 \sqrt {2 \pi \tau}} - r _ {c} X e ^ {- r _ {c} \tau} N (d _ {2}). \tag {30.36}
$$

Substituting, we then obtain the expected return on the option,

$$
\alpha_ {c} = N \left(d _ {1}\right) \alpha_ {s} \left(\frac {S}{c}\right) - r _ {c} \left(\frac {X e ^ {- r _ {c} \tau}}{c}\right) N \left(d _ {2}\right). \tag {30.37}
$$

From the Black-Scholes-Merton formula, we use the substitution,  $SN\big(d_1\big) - c = Xe^{-r_c\tau}N\big(d_2\big)$ ,

$$
\alpha_ {c} = r _ {c} + \left(\alpha_ {s} - r _ {c}\right) N \left(d _ {1}\right) \left(\frac {S}{c}\right). \tag {30.38}
$$

Because  $N(d_{1})$  is  $\partial c / \partial S$  and  $\mu_{S} = E(R_{S})$ , this is the same formula for the option's expected return we obtained previously, Equation (30.16).

Taking the volatility of the return on the option, we obtain

$$
\begin{array}{l} \sigma_ {c} ^ {2} d t = \operatorname {v a r} \left(\frac {d c}{c}\right) = \left(\frac {\partial c}{\partial S} \frac {S}{c} \sigma_ {s}\right) ^ {2} d t \\ \sigma_ {c} = \left(\frac {\partial c}{\partial S}\right) \left(\frac {S}{c}\right) \sigma_ {s}. \tag {30.39} \\ \end{array}
$$

In this case, we have the same formula we previously obtained for the option's volatility, Equation (30.19).

Finally, we should also recognize that the risk-free rate in the finite interval CAPM and the infinitesimal interval option pricing model need to be expressed on an equivalent basis. In this book, we use  $r_c$  for continuously compounded returns and  $r$  for discrete returns. The CAPM typically uses discrete interest, and the option pricing model uses continuous interest. We would need to be sure that interest is measured in the same manner in both models to make the results equivalent.

# 30.7 RECAP AND PREVIEW

We learned in this chapter that option pricing is consistent with capital asset pricing. That is, the price obtained from the Black-Scholes-Merton model is consistent with the expected return from the CAPM. But even if the CAPM does not hold, the expected return on the option can be related to the expected return on the asset through the risk-free rate, the risk premium on the asset, and the risk of the option relative to the asset. Unless the option is incorrectly priced relative to the asset, the performance of the option as measured by its Sharpe ratio is no different from the performance of the asset. In short, option pricing is completely consistent with asset pricing.

In Chapter 31, we look at the concept of implied volatility, which is the volatility of the underlying that is implied by the price of an option. Implied volatility plays an extremely important role, not only in helping us to understand option pricing but also in helping us to see what opinions investors have about the level of risk.

# QUESTIONS AND PROBLEMS

1 Explain why the following expression is known as the certainty equivalent version of the CAPM:

$$
S = \frac {E (S ^ {\prime}) - \lambda \mathrm {c o v} (S ^ {\prime} , R _ {m})}{1 + r},
$$

where

$$
\lambda = \frac {E (R _ {m}) - r}{\sigma_ {m} ^ {2}}.
$$

2 "The elasticity of a standard European call,  $(\partial c / \partial S)(S / c)$ , is at least equal to 1." Evaluate and explain whether this statement is true or false.

3 Prove that within the Black-Scholes-Merton framework, the expected return on the call can be expressed as

$$
E \left(R _ {c}\right) = r + \left(E \left(R _ {s}\right) - r\right) \Omega_ {c},
$$

where  $\Omega_c \equiv \frac{\partial c / c}{\partial S / S}$ .

4 Prove the expected return on the put can be expressed as

$$
E (R _ {p}) = r + [ E (R _ {s}) - r ] \Omega_ {p},
$$

$$
\text {w h e r e} \Omega_ {p} \equiv \frac {\partial p / p}{\partial S / S}.
$$

5 "The Sharpe ratio of the stock will equal the Sharpe ratio of a call option on the stock." Evaluate and explain whether this statement is true or false.

[Contributed by Brecklyn Groce] Suppose an investment manager calculates the Sharpe ratio of an investment in a stock index as 0.35. The Sharpe ratio of a call option on the index is 0.44. In this chapter it is asserted that the Sharpe ratio of an asset and its derivative should be the same. Why are they different in this case?

# NOTES

1. Other well-known models are the arbitrage pricing model and the cost of carry forward/futures pricing model, which is known as interest rate parity in the foreign currency world. The CAPM is briefly mentioned in Chapters 1 and 6.  
2. We are assuming no dividends, interest, cash flows, or holding costs. These would not cause any problems, but our approach would vary depending on whether the dividends are known or random.  
3. To restate what we have previously learned, the notion of a certainty equivalent is that of a value that one would accept for certain in lieu of facing a risky situation. The expected value minus the risk premium that appears in the numerator is a risk-adjusted future value, which can then be discounted at the risk-free rate.  
4. It is easy to use the Black-Scholes-Merton model to see that the elasticity is not less than 1. Elasticity is defined as  $(\partial c / \partial S)(S / c)$ . You should recognize this as  $N(d_1)S / c$  from the Black-Scholes-Merton model. Replacing  $c$  with the Black-Scholes-Merton formula reveals that elasticity is no less than 1 if  $Xe^{-r_c\tau}N(d_2)$  is always true.  
5. Using the Sharpe ratios for options is problematic, however, because option return distributions are highly nonnormal, and the Sharpe ratio characterizes performance exclusively with the expected return and volatility, ignoring higher-order moments associated with non-normal distributions. For an empirical analysis of some of the problems of evaluating the performance of covered call writing strategies, see Brooks, Chance, and Hemler (2019).  
6. In other words, the Black-Scholes-Merton model is obtained without any reference to the option's expected return or volatility, nor does it directly provide the option's expected return and volatility.  
7. Alternatively, we could use the continuous time version of the CAPM and adjust that equation so that it would contain a  $dt$  term and reflect expected returns over the interval  $dt$ .  
8. In taking expectations of this equation, recall that the expectation of  $dW$  is zero.  
9. Remember that the variance of a constant (in this case,  $(\partial c / \partial S)(S / c))$ , is the constant squared times the variance of the random variable. The variance of  $dW$  is  $dt$ .


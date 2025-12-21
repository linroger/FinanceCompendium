---
title: Chapter 20: American Put Option Pricing
parent_directory: Foundations of the Pricing of Financial Derivatives chapters
formatted: 2025-12-21 03:30:00 AM
formatter_model: claude-sonnet-4
cli_tool: opencode
primary_tags:
  - american put pricing
  - compound options
  - geske-johnson model
secondary_tags:
  - early exercise
  - option valuation
  - partial differential equations
  - risk-neutral pricing
  - bivariate normal
  - trivariate normal
  - binomial model
cssclasses: academia
---

# American Put Option Pricing

In this chapter, we take a look at American put options. It is well known that irrespective of any dividends or cash payouts on the underlying, it could be optimal to exercise an American put option early. Dividends, in fact, reduce the likelihood of early exercise, but they do not eliminate it.

## 20.1 The Nature of the Problem of Pricing an American Put

Based on geometric Brownian motion, the price of an American put follows the partial differential equation,

$$
\frac {\partial P _ {t}}{\partial t} = r _ {c} P _ {t} - r _ {c} S _ {t} \frac {\partial P _ {t}}{\partial S _ {t}} - \frac {1}{2} \frac {\partial^ {2} P _ {t}}{\partial S _ {t} ^ {2}} \sigma^ {2} S _ {t} ^ {2}. \tag {20.1}
$$

For a European put, in which we would use a lowercase  $p$ , the PDE would still apply with the following boundary condition:

$$
p _ {T} = \max  (0, X - S _ {T}), \tag {20.2}
$$

where  $S_{T}$  is the asset price at expiration. For an American put we require the additional condition,

$$
P _ {t} \geq \max  \left(0, X - S _ {t}\right). \tag {20.3}
$$

This condition simply means that at any time  $t$  prior to expiration, the American put value must be worth at least its exercise value because it can be exercised immediately. Because  $t$  and  $S_{t}$  change, this is a free boundary problem and had for many years been thought to be unsolvable. Geske and Johnson (1984), however, obtained a solution as an  $n$ -fold compound option, using Geske's (1979b) compound option formula and the equivalent martingale/risk neutrality assumption. We shall demonstrate this result here.

Consider the layout in continuous time: From  $t$  to  $t + dt$  is time unit  $dt$ . From  $t$  to time  $t + 2dt$  is time unit  $2dt$ , and so on. At any instant the put can be exercised. If it is not exercised at that instant, we move forward and consider whether it is optimal to exercise the put at the next instant. The exercise decision will be determined by many factors and will take into account that optimality may come from waiting until later to exercise it.

## 20.2 The American Put as a Series of Compound Options

To solve the problem, we need to know the correlation between successive cumulative Wiener processes at different times, say  $t_1$  and  $t_2$ , where  $t_1 < t_2$ . For example, starting from time 0, we have

$$
W_{t_{1}} = \int_{0}^{t_{1}} d W_{j}
$$

$$
W_{t_{2}} = \int_{0}^{t_{2}} d W_{j} = \int_{0}^{t_{1}} d W_{j} + \int_{t_{1}}^{t_{2}} d W_{j}. \tag{20.4}
$$

Ultimately, we shall need the correlation between  $W_{t_1}$  and  $W_{t_2}$ , which, based on Chapter 10, can be expressed as follows:

$$
\rho_{12} = \frac{\operatorname{cov}(w_{1}, w_{2})}{\sqrt{\operatorname{var}(w_{1})} \sqrt{\operatorname{var}(w_{2})}} = \frac{\tau_{1}}{\sqrt{\tau_{1}} \sqrt{\tau_{2}}} = \sqrt{\frac{\tau_{1}}{\tau_{2}}}, \tag{20.5}
$$

where  $\tau_{1}$  is the time elapsed over one increment and  $\tau_{2}$  is the time elapsed over two increments. This correlation is important, because it is a component of a multivariate normal probability calculation, which captures the likelihood of multiple events occurring, such as exercising at one point in time, having not exercised earlier. Now we can proceed to explain how to value the option.

At any instant we exercise the option if two conditions are met:

(C1) It has not already been exercised and  
(C2) if the payoff from exercising is greater than the value of the put if it is not exercised.

The critical asset price that triggers early exercise is defined as  $S_{t}^{*}$  in the equation

$$
X - S_{t}^{*} = P_{t}. \tag{20.6}
$$

This condition means that at  $t$ , there is an asset price,  $S_{t}^{*}$ , that produces a put price,  $P_{t}$ . When that put price is equal to the exercise value, any asset price below  $S_{t}^{*}$  will trigger early exercise. The time point  $t$  is clearly any time point up to the expiration,  $T$ .

At the first instant, there is no probability of prior exercise. So we integrate the exercise payoff, which is the exercise price minus the asset price, over all possible asset prices less than the critical asset price. Then we discount this value back one instant. This produces two terms, one of which is the discounted exercise price multiplied by the probability that the asset price will be below the critical asset price. At the next instant we must also discount the expected payoff, but we must consider the joint probability of exercise at that instant conditional on not having exercised at the previous instant. We follow this procedure for the remaining instants over the life of the option.

Ultimately the price of the option then becomes a discounted weighted average of all of the possible payoffs. It can be written as follows:

$$
\begin{array}{l} e^{-r_{c} dt} (X - S_{dt}^{*}) \operatorname{Prob}(S_{dt} \leq S_{dt}^{*}) \\ + e^{-r_{c} 2 dt} (X - S_{2 dt}^{*}) \operatorname{Prob}(S_{2 dt} \leq S_{2 dt}^{*} \text{and} S_{dt} > S_{dt}^{*}) \\ + e^{-r_{c} 3 dt} (X - S_{3 dt}^{*}) \operatorname{Prob}(S_{3 dt} \leq S_{3 dt}^{*}, \quad S_{2 dt} > S_{2 dt}^{*} \text{and} S_{dt} > S_{dt}^{*}) \\ + \dots \\ \end{array}
$$

continuing until  $T$  (20.7)

The overall solution can be written more compactly as

$$
P = X w _ {2} - S w _ {1},
$$

where

$$
\begin{array}{l} w_{1} = N_{1} [- d_{1} (S_{t}^{*}, dt)] + N_{2} [d_{1} (S_{dt}^{*} dt), - d_{1} (S_{2 dt}^{*} 2 dt); - \rho_{12}] \\ + N_{3} [d_{1} (S_{dt}^{*} dt), d_{1} (S_{2 dt}^{*} 2 dt), - d_{1} (S_{3 dt}^{*} 3 dt); \rho_{12}, - \rho_{13}, - \rho_{23}] \\ + \dots \\ \end{array}
$$

$$
\begin{array}{l} w_{2} = e^{-r_{c} dt} N_{1} [- d_{2} (S_{dt}^{*}, dt)] + e^{-r_{c} 2 dt} N_{2} [d_{2} (S_{dt}^{*} dt), - d_{2} (S_{2 dt}^{*} 2 dt); - \rho_{12}] \\ + e^{-r_{c} 3 dt} N_{3} [d_{2} (S_{dt}^{*} dt), d_{2} (S_{2 dt}^{*} 2 dt), - d_{2} (S_{3 dt}^{*} 3 dt); \rho_{12}, - \rho_{13}, - \rho_{23}] \\ + \dots \\ \end{array}
$$

and

$$
d_{1} (q, \tau) = \frac{\ln (S / q) + [r_{c} + (\sigma^{2} / 2)] \tau}{\sigma \sqrt{\tau}}
$$

$$
d_{2} (q, \tau) = d_{1} (q, \tau) - \sigma \sqrt{\tau}
$$

for any  $q$  and  $\tau$ . The correlation coefficients follow the pattern,

$$
\rho_ {1 2} = \sqrt {\frac {d t}{2 d t}} = \sqrt {\frac {1}{2}} = \frac {1}{\sqrt {2}}
$$

$$
\rho_ {1 3} = \sqrt {\frac {d t}{3 d t}} = \sqrt {\frac {1}{3}} = \frac {1}{\sqrt {3}}
$$

$$
\rho_ {2 3} = \sqrt {\frac {2 d t}{3 d t}} = \sqrt {\frac {2}{3}} = \sqrt {\frac {2}{3}}.
$$

Geske and Johnson provide the partial derivatives with respect to each of the terms in the formula. Blomeyer and Johnson (1988) provide an extension that takes into account dividend payments, and they also conduct empirical tests of the model.

Because exercise is possible at any time instant, this formula consists of an infinite number of terms, which would seem to make the formula analytically intractable. Geske and Johnson emphasize that the formula is an exact solution, even if it does contain an infinite number of terms. They provide an analytical approximation based on a method called the Richardson extrapolation, which basically assumes that the put can be exercised only at three points spread over its life. This approach greatly reduces the complexity of the problem. They obtain the price of a put that can be exercised only at expiration, which is the standard Black-Scholes-Merton model price, and the price of another put that can be exercised only halfway to expiration or at expiration, which requires a bivariate normal probability computation, as well as the price of another put that can be exercised only one-third of the way through its life or two-thirds of the way through its life or at expiration, which requires a trivariate normal probability computation. The American put value is then approximated as a weighted average of the prices of these three puts. They argue that an approximation of an exact formula is better than an approximation where the solution is not known, which, other than using numerical methods, is all one can do to price an American put. Bunch and Johnson (1992) provide an improvement on this technique.

Research on American put pricing has gone well beyond the Geske-Johnson model, but it is safe to say that there is no closed-form solution with a finite number of terms and never can be. The early exercise decision itself is an infinite number of decisions. Hence, it would never be possible to reduce the complexity of the problem without making some simplifying assumptions that ultimately result in the formula being an approximation. Fortunately, advances in computing power have made the binomial model the best method of pricing American puts. Nonetheless, it is important to understand that American options are compound options. They are options in which choices are permitted that allow the option to terminate early by claiming the exercise value or to remain alive with the possibility of exercise at a later date. The Geske-Johnson model makes that clear.

## 20.3 Recap and Preview

In this chapter, we showed how the American put can be viewed as a combination of an infinite number of compound options. As such, the solution has an infinite number of terms, but it does provide insights into the pricing of American puts, and it does lead to approximation formulas.

In Chapter 21, we look at min-max options, which are options with more than one underlying. The payoff will depend on either the better or worse performing of the underlyings.

## Questions and Problems

1 Derive the partial differential equation for an American put option based on geometric Brownian motion when we assume that dividends are paid in the form of a continuously compounded dividend yield.

2 The American put option model presented here is based on  $S_{t}^{*}$ . Explain this variable.  
3 Based on the Geske-Johnson model, one of the bivariate terms is

$N_{2}\left[d_{1}\left(S_{dt}^{*}dt\right), - d_{1}\left(S_{2dt}^{*}2dt\right); - \rho_{12}\right]$ . Explain why the correlation coefficient is negative.

4 Based on the Geske-Johnson model, one of the trivariate terms is  
$N_{3}\left[d_{1}\left(S_{dt}^{*}dt\right), d_{1}\left(S_{2dt}^{*}2dt\right), - d_{1}\left(S_{3dt}^{*}3dt\right); \rho_{12}, - \rho_{13}, - \rho_{23}\right].$  Explain the pattern of  $d_{1}$  terms as well as the pattern of correlation coefficient terms.  
5 [Contributed by Dennel McKenzie] Explain why dividends on a stock reduce the likelihood that a put option on the stock will be exercised early.  
6 (Contributed by Dennel McKenzie) Provide a verbal (non-quantitative) interpretation of the following representation:

$$
\operatorname{cov} \left(\int_{0}^{t_{1}} d W_{t}, \int_{0}^{t_{2}} d W_{t}\right).
$$

## Notes

1. See Chapter 10, Section 10.6, Selected Time Series Properties.  
2. The derivation of this correlation is not provided in the Geske-Johnson paper. It is added here for clarification.


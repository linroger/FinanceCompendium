---
title: Convexity Adjustments to Eurodollar Futures
tags:
  - convexity_adjustment
  - eurodollar_futures
  - hull_white_model
  - ho_lee_model
  - interest_rate_derivatives
parent_directory: Technical Notes from Options, Futures, and Other Derivatives
key_concepts:
  - Convexity adjustments between futures and forward rates
  - Ho-Lee and Hull-White interest rate models
  - Eurodollar futures pricing
cssclasses: academia
---

# Convexity Adjustments to Eurodollar Futures

In the Ho-Lee model the risk-neutral process for the short rate in the traditional risk-neutral world is

$$
d r = \theta (t) d t + \sigma d z
$$

where $r$ is the instantaneous short rate, $\theta$ is a function of time, $a$ and $\sigma$ are constants, and $dz$ is a Wiener process. Define $P(t,T)$ as the price of a bond paying \$1 at time $T$ as seen at time $t$. As explained in the text, the bond price has the form $P(t,T) = A(t,T)e^{-r(T - t)}$. From Ito's lemma the process for the bond price in a traditional risk-neutral world is

$$
d P (t, T) = r (t) P (t, T) d t - (T - t) \sigma P (t, T) d z
$$

Define $f(t, T_1, T_2)$ as the forward rate (continuously compounded) at time $t$ for the period between $T_1$ and $T_2$.

$$
f (t, T _ {1}, T _ {2}) = \frac {\ln [ P (t , T _ {1}) ] - \ln [ P (t , T _ {2}) ]}{T _ {2} - T _ {1}}
$$

From Ito's lemma the process followed by $f(t, T_1, T_2)$ is

$$
d f (t, T _ {1}, T _ {2}) = \frac {\sigma^ {2} (T _ {2} - t) ^ {2} - \sigma^ {2} (T _ {1} - t) ^ {2}}{2 (T _ {2} - T _ {1})} d t + \sigma d z
$$

The expected change in the forward rate between time zero and time $T_{1}$ is determined by integrating the coefficient of $dt$ between 0 and $T_{1}$. It is $\sigma^2 T_1T_2 / 2$.

The forward rate equals the spot rate at time $T_{1}$. The expected value of the forward rate at time $T_{1}$ is therefore the expected value of the spot rate at time $T_{1}$. It follows that the forward rate at time zero equals the expected spot rate minus $\sigma^2 T_1T_2 / 2$.

Because we are in the traditional risk-neutral world the expected value of the spot rate is the same as the futures rate. The futures rate is therefore greater than the forward rate by $\sigma^2 T_1T_2 / 2$ when both are expressed with continuous compounding. (There is a small approximation here in that we know that the futures rate with quarterly compounding equals the expected future spot rate with quarterly compounding. We assume that the same is true when both both rates are converted continuous compounding.)

When converting the futures rate to the forward rate we should therefore subtract $\sigma^2 T_1T_2 / 2$ from the futures rate. This is known as a convexity adjustment. As explained in the text, there are actually two parts to the convexity adjustment:

1. The difference between a futures contract that is settled daily and a similar contract that is settled entirely at time $T_{1}$
2. The difference between the contract that is settled at time $T_{1}$ and a similar contract that is settled at time $T_{2}$

To prove a corresponding result for the Hull-White model

$$
d r = \left[ \theta (t) - a r \right] d t + \sigma d z
$$

we proceed similarly. The process for the bond price is

$$
d P (t, T) = r (t) P (t, T) d t - B (t, T) \sigma P (t, T) d z
$$

where

$$
B (t, T) = \frac {1 - e ^ {- a (T - t)}}{a}
$$

The result after crunching through similar but more involved math is that the convexity adjustment is

$$
\frac {B (T _ {1} , T _ {2})}{T _ {2} - T _ {1}} [ B (T _ {1}, T _ {2}) (1 - e ^ {- 2 a T _ {1}}) + 2 a B (0, T _ {1}) ^ {2} ] \frac {\sigma^ {2}}{4 a}
$$

This reduces to the earlier result when we take the limit as $a$ tends to zero.
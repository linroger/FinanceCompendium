---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Technical Note No. 31* Options, Futures, and Other Derivatives John Hull
linter-yaml-title-alias: Technical Note No. 31* Options, Futures, and Other Derivatives John Hull
---

# Technical Note No. 31* Options, Futures, and Other Derivatives John Hull

# Properties of Ho-Lee and Hull-White Interest Rate Models

This note presents some of the math underlying the Ho-Lee and Hull-White one-factor models of the term structure. It follows the approach in Hull and White (1993).<sup>1</sup>

In a one-factor term structure, model the process for a zero-coupon bond price in the traditional risk-neutral world must have a return equal to the short rate  $r$ . Suppose that  $v(t,T)$  is the volatility. Then:

$$
d P (t, T) = r P (t, T) d t + v (t, T) P (t, T) d z \tag {1}
$$

In this note, we will assume that  $v$  is a function only of  $t$  and  $T$ . Because the bond's price volatility declines to zero at maturity  $v(t,t) = 0$ .

From Ito's lemma, for any times  $T_{1}$  and  $T_{2}$  with  $T_{2} > T_{1}$

$$
d \ln P (t, T _ {1}) = \left[ r - \frac {v (t , T _ {1}) ^ {2}}{2} \right] d t + v (t, T _ {1}) d z (t) \tag {2}
$$

$$
d \ln P (t, T _ {2}) = \left[ r - \frac {v (t , T _ {2}) ^ {2}}{2} \right] d t + v (t, T _ {2}) d z (t) \tag {3}
$$

Define  $f(t, T_1, T_2)$  as the forward rate for the period between time  $T_1$  and  $T_2$  as seen at time  $t$

$$
f (t, T _ {1}, T _ {2}) = - \frac {\ln P (t , T _ {2}) - \ln P (t , T _ {1})}{T _ {2} - T _ {1}}
$$

From equations (2) and (3)

$$
d f (t, T _ {1}, T _ {2}) = \left[ \frac {v (t , T _ {2}) ^ {2} - v (t , T _ {1}) ^ {2}}{2 (T _ {2} - T _ {1})} \right] d t - \left[ \frac {v (t , T _ {2}) - v (t , T _ {1})}{T _ {2} - T _ {1}} \right] d z (t)
$$

Define  $R(t, T)$  as the zero rate for the period between  $t$  and  $T$ .

$$
R (t, T) = f (0, t, T) + \int_ {0} ^ {T} d f (\tau , t, T)
$$

so that

$$
R (t, T) = f (0, t, T) + \int_ {0} ^ {t} \left[ \frac {v (\tau , T) ^ {2} - v (\tau , t) ^ {2}}{2 (T - t)} \right] d \tau - \int_ {0} ^ {t} \left[ \frac {v (\tau , T) - v (\tau , t)}{T - t} \right] d z (\tau) \qquad (4)
$$

As  $T$  approaches  $t$ ,  $R(t, T)$  becomes  $r(t)$  and  $f(0, t, T)$  becomes the instantaneous forward rate,  $F(0, t)$  so that

$$
r (t) = F (0, t) + \int_ {0} ^ {t} \frac {\partial}{\partial t} \frac {v (\tau , t) ^ {2}}{2} d \tau - \int_ {0} ^ {t} \frac {\partial}{\partial t} v (\tau , t) d z (\tau)
$$

or

$$
r (t) = F (0, t) + \int_ {0} ^ {t} v (\tau , t) v _ {t} (\tau , t) d \tau - \int_ {0} ^ {t} v _ {t} (\tau , t) d z (\tau) \tag {5}
$$

where subscripts denote partial derivatives. To calculate the process for  $r$  we differentiate with respect to  $t$ . Because  $v(t,t) = 0$ , this gives

$$
d r = \left\{F _ {t} (0, t) + \int_ {0} ^ {t} [ v (\tau , t) v _ {t t} (\tau , t) + v _ {t} (\tau , t) ^ {2} ] d \tau - \int_ {0} ^ {t} v _ {t t} (\tau , t) d z (\tau) \right\} d t - v _ {t} (\tau , t) | _ {\tau = t} d z (t) \tag {6}
$$

Case 1: Ho-Lee;  $v(t, T) = \sigma(T - t)$

In the case, equation (5) gives

$$
r (t) = F (0, t) + \sigma^ {2} t ^ {2} / 2 - \int_ {0} ^ {t} \sigma d z (\tau) \tag {7}
$$

and equation (6) gives

$$
d r (t) = [ F _ {t} (0, t) + \sigma^ {2} t ] d t + \sigma d z
$$

This is the Ho-Lee model

$$
d r = \theta (t) d t + \sigma d z
$$

We have proved the equation for  $\theta (t)$

$$
\theta (t) = F _ {t} (0, t) + \sigma^ {2} t
$$

Also from equation (4)

$$
R (t, T) = f (0, t, T) + \sigma^ {2} t T / 2 - \int_ {0} ^ {t} \sigma d z (\tau) \tag {8}
$$

From equations (7) and (8)

$$
R (t, T) = f (0, t, T) + \sigma^ {2} t T / 2 + r (t) - F (0, t) - \sigma^ {2} t ^ {2} / 2 = f (0, t, T) - F (0, t) + \sigma^ {2} t (T - t) / 2 + r (t)
$$

Because

$$
\ln P (t, T) = - R (t, T) (T - t)
$$

It follows that

$$
\ln P (t, T) = - f (0, t, T) (T - t) + F (0, t) (T - t) - \sigma^ {2} t (T - t) ^ {2} / 2 - r (t) (T - t)
$$

The forward bond price  $P(0,T) / P(0,t)$  equals  $e^{-f(0,t,T)(T - t)}$  so that this becomes

$$
\ln P (t, T) = \ln \frac {P (0 , T)}{P (0 , t)} + F (0, t) (T - t) - \sigma^ {2} t (T - t) ^ {2} / 2 - r (t) (T - t)
$$

This proves:

$$
P (t, T) = A (t, T) e ^ {- r (t) (T - t)}
$$

where

$$
\ln A (t, T) = \ln \frac {P (0 , T)}{P (0 , t)} + F (0, t) (T - t) - \frac {1}{2} \sigma^ {2} t (T - t) ^ {2}
$$

Case 2: Hull-White;  $v(t,T) = \sigma (1 - e^{-a(T - t)}) / a$

In this case, equation (5) gives

$$
r (t) = F (0, t) + \frac {\sigma^ {2}}{a ^ {2}} (1 - e ^ {- a t}) - \frac {\sigma^ {2}}{2 a ^ {2}} (1 - e ^ {- 2 a t}) - \int_ {0} ^ {t} \sigma e ^ {- a (t - \tau)} d z (\tau) \qquad (9)
$$

Equation (6) gives

$$
d r (t) = \left\{F _ {t} (0, t) + \frac {\sigma^ {2}}{a} (e ^ {- a t} - e ^ {- 2 a t}) + \int_ {0} ^ {t} \sigma a e ^ {- a (t - \tau)} d z (\tau) \right\} d t - \sigma d z (t) \qquad (1 0)
$$

Substituting for

$$
\int_ {0} ^ {t} \sigma e ^ {- a (t - \tau)} d z (\tau)
$$

from equation (9) into equation (10) we obtain

$$
d r (t) = \left\{F _ {t} (0, t) + \frac {\sigma^ {2}}{a} (e ^ {- a t} - e ^ {- 2 a t}) - a r (t) + a F (0, t) + \frac {\sigma^ {2}}{a} (1 - e ^ {- a t}) - \frac {\sigma^ {2}}{2 a} (1 - e ^ {- 2 a t}) \right\} d t - \sigma d z (t)
$$

or

$$
d r (t) = \left\{F _ {t} (0, t) + a F (0, t) - a r (t) + \frac {\sigma^ {2}}{2 a} (1 - e ^ {- 2 a t}) \right\} d t - \sigma d z (t)
$$

This is the Hull-White model

$$
d r (t) = (\theta (t) - a r) d t + \sigma d z
$$

with

$$
\theta (t) = F _ {t} (0, t) + a F (0, t) + \frac {\sigma^ {2}}{2 a} (1 - e ^ {- 2 a t})
$$

From equation (4)

$$
R (t, T) = f (0, t, T) + \frac {\sigma^ {2} [ e ^ {- 2 a (T - t)} - e ^ {- 2 a T} - 1 + e ^ {- 2 a t} - 4 e ^ {- a (T - t)} + 4 e ^ {- a T} + 4 - 4 e ^ {- a t} ]}{4 a ^ {3} (T - t)}
$$

$$
+ \frac {\sigma \left(e ^ {- a T} - e ^ {- a t}\right)}{a (T - t)} \int_ {0} ^ {t} e ^ {a \tau} d z (\tau) \tag {11}
$$

From equation (9)

$$
\sigma \int_ {0} ^ {t} e ^ {a \tau} d z (\tau) = - r (t) e ^ {a t} + F (0, t) e ^ {a t} + \frac {\sigma^ {2}}{a ^ {2}} (e ^ {a t} - 1) - \frac {\sigma^ {2}}{2 a ^ {2}} (e ^ {a t} - e ^ {- a t})
$$

so that

$$
\begin{array}{l} R (t, T) = f (0, t, T) + \frac {\sigma^ {2} [ e ^ {- 2 a (T - t)} - e ^ {- 2 a T} - 1 + e ^ {- 2 a t} - 4 e ^ {- a (T - t)} + 4 e ^ {- a T} + 4 - 4 e ^ {- a t} ]}{4 a ^ {3} (T - t)} \\ + \frac {(e ^ {- a T} - e ^ {- a t})}{a (T - t)} \left[ - r (t) e ^ {a t} + F (0, t) e ^ {a t} + \frac {\sigma^ {2}}{a ^ {2}} (e ^ {a t} - 1) - \frac {\sigma^ {2}}{2 a ^ {2}} (e ^ {a t} - e ^ {- a t}) \right] \\ \end{array}
$$

Now

$$
\ln P (t, T) = - R (t, T) (T - t)
$$

and the forward bond price  $P(0,T) / P(0,t)$  equals  $e^{-f(0,t,T)(T - t)}$ . After some tedious algebra we get

$$
\ln P (t, T) = \ln \frac {P (0 , T)}{P (0 , t)} + F (0, t) B (t, T) - \frac {1}{4 a ^ {3}} \sigma^ {2} (e ^ {- a T} - e ^ {- a t}) ^ {2} (e ^ {2 a t} - 1) - r (t) B (t, T)
$$

where

$$
B (t, T) = \frac {1 - e ^ {- a (T - t)})}{a}
$$

showing that

$$
P (t, T) = A (t, T) e ^ {- B (t, T) r}
$$

where

$$
\ln A (t, T) = \ln \frac {P (0 , T)}{P (0 , t)} + F (0, t) B (t, T) - \frac {1}{4 a ^ {3}} \sigma^ {2} (e ^ {- a T} - e ^ {- a t}) ^ {2} (e ^ {2 a t} - 1)
$$

# Bond Options

Consider a European option with strike price  $K$  and maturity  $T$  on a zero-coupon bond where the maturity of the bond is  $s$ . The forward price of the bond underlying the option as seen at time  $t$ ,  $F_{B}(t,T,s)$ , is

$$
F _ {B} (t, T, s) = \frac {P (t , s)}{P (t , T)}
$$

Using the results in equations (2) and (3) we get

$$
d \ln F _ {B} (t, T, s) = \frac {v (t , T) ^ {2} - v (t , s) ^ {2}}{2} d t + [ v (t, s) - v (t, T) ] d z
$$

This shows that the  $P(T,s) = f_B(T,T,s)$  is lognormal when  $v(t,T)$  is function only of  $t$  and  $T$ . The variance  $\ln P(T,s)$  is then

$$
\sigma_ {P} ^ {2} = \int_ {0} ^ {T} [ v (t, s) - v (t, T) ] ^ {2} d t
$$

In the case of Ho-Lee  $v(t,T) = \sigma (T - t)$  and  $\sigma_P^2 = \sigma^2 (s - T)^2 T$ . In Hull-White  $v(t,T) = \sigma B(t,T)$  so that

$$
\sigma_ {P} ^ {2} = \sigma^ {2} \int_ {0} ^ {T} [ B (t, s) - B (t, T) ] ^ {2} d t = \frac {\sigma^ {2}}{2 a ^ {3}} [ 1 - e ^ {- a (s - T)} ] ^ {2} (1 - e ^ {- 2 a T})
$$

In both cases bond options can be valued using Black's model. The average variance rate of the forward bond price is  $\sigma_P^2 /T$ . This leads to the results for bond options in the text.
---
aliases:
  - The Process for the Short Rate in an HJM Term Structure Model
tags:
key_concepts:
parent_directory: Technical Notes from Options, Futures, and Other Derivatives
cssclasses: academia
title: Technical Note No. 17 - The Process for the Short Rate in an HJM Term Structure Model
linter-yaml-title-alias: Technical Note No. 17 - The Process for the Short Rate in an HJM Term Structure Model
---

# Technical Note No. 17* Options, Futures, and Other Derivatives John Hull

# The Process for the Short Rate in an HJM Term Structure Model

This note considers the relationship between the HJM model and the models of the short rate. Consider a one-factor continuous time model for forward rates. Because

$$
F (t, t) = F (0, t) + \int_ {0} ^ {t} d F (\tau , t)
$$

and  $r(t) = F(t,t)$ , it follows from the HJM analysis in the text that

$$
r (t) = F (0, t) + \int_ {0} ^ {t} v (\tau , t, \Omega_ {\tau}) v _ {t} (\tau , t, \Omega_ {\tau}) d \tau + \int_ {0} ^ {t} v _ {t} (\tau , t, \Omega_ {\tau}) d z (\tau)
$$

Differentiating with respect to  $t$  and using  $v(t,t,\Omega_t) = 0$  we obtain

$$
\begin{array}{l} d r (t) = F _ {t} (0, t) d t + \left\{\int_ {0} ^ {t} [ v (\tau , t, \Omega_ {\tau}) v _ {t t} (\tau , t, \Omega_ {\tau}) + v _ {t} (\tau , t, \Omega_ {\tau}) ^ {2} ] d \tau \right\} d t \\ + \left\{\int_ {0} ^ {t} v _ {t t} (\tau , t, \Omega_ {\tau}) d z (\tau) \right\} d t + \left[ v _ {t} (\tau , t, \Omega_ {\tau}) | _ {\tau = t} \right] d z (t) \\ \end{array}
$$

It is interesting to examine the terms on the right-hand side of this equation. The first and fourth terms are straightforward. The first term shows that one component of the drift in  $r$  is the slope of the initial forward rate curve. The fourth term shows that the instantaneous standard deviation of  $r$  is  $v_{t}(\tau, t, \Omega_{\tau})|_{\tau = t}$ . The second and third terms are more complicated, particularly when  $v$  is stochastic. The second term depends on the history of  $v$  because it involves  $v(\tau, t, \Omega_{\tau})$  when  $\tau < t$ . The third term depends on the history of both  $v$  and  $dz$ .

The second and third terms terms are liable to cause the process for  $r$  to be non-Markov. The drift of  $r$  between time  $t$  and  $t + \Delta t$  is liable to depend not only on the value of  $r$  at time  $t$ , but also on the history of  $r$  prior to time  $t$ . This means that, when we attempt to construct a tree for  $r$ , it is nonrecombining. An up movement followed by a down movement does not lead to the same node as a down movement followed by an up movement.
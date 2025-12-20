---
aliases:
  - The Process for the Short Rate in an HJM Term Structure Model
tags:
  - hjm_model
  - short_rate
  - term_structure
  - forward_rates
  - stochastic_processes
key_concepts:
  - HJM term structure model
  - Short rate process derivation
  - Non-Markov processes
  - Forward rate dynamics
parent_directory: Technical Notes from Options, Futures, and Other Derivatives
cssclasses: academia
title: Technical Note No. 17 - The Process for the Short Rate in an HJM Term Structure Model
linter-yaml-title-alias: Technical Note No. 17 - The Process for the Short Rate in an HJM Term Structure Model
---

# The Process for the Short Rate in an HJM Term Structure Model

**Technical Note No. 17** | *Options, Futures, and Other Derivatives* | John Hull

This note considers the relationship between the HJM model and the models of the short rate. Consider a one-factor continuous time model for forward rates. Because

$$
F(t, t) = F(0, t) + \int_{0}^{t} dF(\tau, t)
$$

and $r(t) = F(t,t)$, it follows from the HJM analysis in the text that

$$
r(t) = F(0, t) + \int_{0}^{t} v(\tau, t, \Omega_{\tau}) v_{t}(\tau, t, \Omega_{\tau}) d\tau + \int_{0}^{t} v_{t}(\tau, t, \Omega_{\tau}) dz(\tau)
$$

Differentiating with respect to $t$ and using $v(t,t,\Omega_t) = 0$ we obtain

$$
\begin{array}{l} dr(t) = F_{t}(0, t) dt + \left\{\int_{0}^{t} [v(\tau, t, \Omega_{\tau}) v_{tt}(\tau, t, \Omega_{\tau}) + v_{t}(\tau, t, \Omega_{\tau})^{2}] d\tau \right\} dt \\ + \left\{\int_{0}^{t} v_{tt}(\tau, t, \Omega_{\tau}) dz(\tau) \right\} dt + \left[ v_{t}(\tau, t, \Omega_{\tau}) |_{\tau = t} \right] dz(t) \\ \end{array}
$$

It is interesting to examine the terms on the right-hand side of this equation. The first and fourth terms are straightforward. The first term shows that one component of the drift in $r$ is the slope of the initial forward rate curve. The fourth term shows that the instantaneous standard deviation of $r$ is $v_{t}(\tau, t, \Omega_{\tau})|_{\tau = t}$. The second and third terms are more complicated, particularly when $v$ is stochastic. The second term depends on the history of $v$ because it involves $v(\tau, t, \Omega_{\tau})$ when $\tau < t$. The third term depends on the history of both $v$ and $dz$.

The second and third terms are liable to cause the process for $r$ to be non-Markov. The drift of $r$ between time $t$ and $t + \Delta t$ is liable to depend not only on the value of $r$ at time $t$, but also on the history of $r$ prior to time $t$. This means that, when we attempt to construct a tree for $r$, it is nonrecombining. An up movement followed by a down movement does not lead to the same node as a down movement followed by an up movement.
---
title: Technical Note 07 - Derivative Pricing on Futures
aliases: ["Hull Technical Note 7", "Futures Derivative Pricing"]
tags: [derivatives, futures, options, pricing, stochastic_processes, itos_lemma, black_scholes]
key_concepts: ["Futures price derivative", "Ito's lemma", "Riskless portfolio"]
parent_directory: VI. Derivatives
parent_folder: Options Futures & Forwards
cssclasses: academia
---

# Technical Note 07 - Derivative Pricing on Futures

## Differential Equation for Price of a Derivative on a Futures Price

Suppose that the futures price $F$ follows the process

$$
dF = \mu F dt + \sigma F dz \tag{1}
$$

where $dz$ is a Wiener process and $\sigma$ is constant. Because $f$ is a function of $F$ and $t$, it follows from Ito's lemma that

$$
df = \left(\frac{\partial f}{\partial F}\mu F + \frac{\partial f}{\partial t} + \frac{1}{2}\frac{\partial^{2} f}{\partial F^{2}}\sigma^{2}F^{2}\right)dt + \frac{\partial f}{\partial F}\sigma F dz \tag{2}
$$

Consider a portfolio consisting of

$$
\begin{aligned}
-1: \quad &\text{derivative} \\
+\frac{\partial f}{\partial F}: \quad &\text{futures contracts}
\end{aligned}
$$

Define $\Pi$ as the value of the portfolio and let $\Delta\Pi$, $\Delta f$, and $\Delta F$ be the change in $\Pi$, $f$, and $F$ in time $\Delta t$, respectively. Because it costs nothing to enter into a futures contract,

$$
\Pi = -f \tag{3}
$$

In a time period $\Delta t$, the holder of the portfolio earns capital gains equal to $-\Delta f$ from the derivative and income of

$$
\frac{\partial f}{\partial F} \Delta F
$$

from the futures contract. Define $\Delta W$ as the total change in wealth of the portfolio holder in time $\Delta t$. It follows that

$$
\Delta W = \frac{\partial f}{\partial F} \Delta F - \Delta f
$$

The discrete versions of equations (1) and (2) are

$$
\Delta F = \mu F \Delta t + \sigma F \Delta z
$$

and

$$
\Delta f = \left(\frac{\partial f}{\partial F}\mu F + \frac{\partial f}{\partial t} + \frac{1}{2}\frac{\partial^{2} f}{\partial F^{2}}\sigma^{2}F^{2}\right)\Delta t + \frac{\partial f}{\partial F}\sigma F \Delta z
$$

where $\Delta z = \epsilon \sqrt{\Delta t}$ and $\epsilon$ is a random sample from a standardized normal distribution. It follows that

$$
\Delta W = \left(-\frac{\partial f}{\partial t} - \frac{1}{2}\frac{\partial^{2} f}{\partial F^{2}}\sigma^{2}F^{2}\right)\Delta t \tag{4}
$$

This is riskless. Hence it must also be true that

$$
\Delta W = r\Pi\Delta t \tag{5}
$$

If we substitute for $\Pi$ from equation (3), equations (4) and (5) give

$$
\left(-\frac{\partial f}{\partial t} - \frac{1}{2}\frac{\partial^{2} f}{\partial F^{2}}\sigma^{2}F^{2}\right)\Delta t = -rf\Delta t
$$

Hence

$$
\frac{\partial f}{\partial t} + \frac{1}{2}\frac{\partial^{2} f}{\partial F^{2}}\sigma^{2}F^{2} = rf
$$

This is the equation in the text.
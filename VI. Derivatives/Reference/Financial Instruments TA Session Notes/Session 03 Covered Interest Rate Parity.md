---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Covered Interest Rate Parity
linter-yaml-title-alias: Covered Interest Rate Parity
---

# Covered Interest Rate Parity

# 1. Model Parameters

There are four model parameters that collectively determine the forward rate for a currency security.

1. Home/Foreign exchange rate:  $M$
2. Interest rate in home country:  $r_{\mathbb{S}}$
3. Interest rate in foreign country:  $r_{\epsilon}$
4. Maturity:  $T$

The interest rates  $(r_{\mathbb{S}}, r_{\mathbb{E}})$  are continuously compounded. The exchange rate  $M$  denotes the number of units of the Home currency required to purchase one unit of the Foreign currency. For example, if  $M = 1.2$ , then 1.2 units of the Home currency (e.g., USD) are required to purchase one unit of the Foreign currency (e.g., EUR).

# 2. Forward Rate Under No-Arbitrage

Determining the forward rate of a currency security requires appealing to a no-arbitrage argument. Consider an investor in the home country, endowed with capital  $N$  (measured in the home currency) to invest. This investor can pursue one of two strategies.

First, the investor can invest the home capital at the home interest rate until maturity. Let  $\Pi_{\mathbb{S}}(r_{\mathbb{S}},T,N)$  denote the payoff function from this investment strategy.

$$
\Pi_ {\S} (r _ {\S}, T, N) = \exp (r _ {\S} \cdot T) \cdot N
$$

Second, the investor can convert the home capital into foreign capital, invest the foreign capital at the foreign interest rate, and convert the proceeds on the foreign capital back into the home currency at the forward rate  $F$ .

$$
\Pi_ {\epsilon} (F; r _ {\epsilon}, T, N, M) = \exp (r _ {\epsilon} \cdot T) \cdot \frac {N}{M} \cdot F
$$

Note that both payoff functions,  $\Pi_{\mathbb{S}}(\cdot)$  and  $\Pi_{\epsilon}(\cdot)$ , are measured in the home currency (e.g., USD). The forward rate  $F$  adjusts so as to equate the payoffs from the two investment strategies.

$$
\Pi_ {\S} (r _ {\S}, T, N) = \Pi_ {\epsilon} (\pmb {F}; r _ {\epsilon}, T, M, N)
$$

This equation is a "no-arbitrage" condition. Solving the no-arbitrage condition for the endogenous variable  $F$  yields the covered interest-rate parity formula for the forward rate.

$$
F = \exp [ (r _ {\$} - r _ {\epsilon}) \cdot T ] \cdot M
$$

Note that the forward rate  $F$  inherits the units of the exchange rate  $M$ . Since the units of the exchange rate  $M$  is Home/Foreign (e.g., USD/EUR), it follows that the units of the forward rate  $F$  is also Home/Foreign.

# 3. Interpretation

The forward rate  $F$  is the exchange rate at which Home and Foreign currencies are exchanged upon maturity at time  $T$  from inception. The forward rate  $F$  is agreed upon at inception (i.e., at time 0).

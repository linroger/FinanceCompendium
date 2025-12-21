---
title: Covered Interest Rate Parity
parent_directory: Financial Instruments TA Session Notes
formatted: 2025-12-20 11:03:25 PM
formatter_model: claude-3-5-sonnet
cli-tool: opencode
primary_tags:
  - covered interest rate parity
  - forward exchange rate
secondary_tags:
  - no arbitrage condition
  - currency investment strategies
  - continuously compounded rates
cssclasses: academia
---

# Covered Interest Rate Parity

## 1. Model Parameters

There are four model parameters that collectively determine the forward rate for a currency security.

1. Home/Foreign exchange rate:  $M$
2. Interest rate in home country:  $r_{\$}$
3. Interest rate in foreign country:  $r_{\epsilon}$
4. Maturity:  $T$

The interest rates  $(r_{\$}, r_{\€})$  are continuously compounded. The exchange rate  $M$  denotes the number of units of the Home currency required to purchase one unit of the Foreign currency. For example, if  $M = 1.2$ , then 1.2 units of the Home currency (e.g., USD) are required to purchase one unit of the Foreign currency (e.g., EUR).

## 2. Forward Rate Under No-Arbitrage

Determining the forward rate of a currency security requires appealing to a no-arbitrage argument. Consider an investor in the home country, endowed with capital  $N$  (measured in the home currency) to invest. This investor can pursue one of two strategies.

First, the investor can invest the home capital at the home interest rate until maturity. Let  $\Pi_{\$}(r_{\$},T,N)$  denote the payoff function from this investment strategy.

$$
\Pi_{\$} (r_{\$}, T, N) = \exp(r_{\$} \cdot T) \cdot N
$$

Second, the investor can convert the home capital into foreign capital, invest the foreign capital at the foreign interest rate, and convert the proceeds on the foreign capital back into the home currency at the forward rate  $F$ .

$$
\Pi_{\epsilon} (F; r_{\epsilon}, T, N, M) = \exp(r_{\epsilon} \cdot T) \cdot \frac{N}{M} \cdot F
$$

Note that both payoff functions,  $\Pi_{\$}(\cdot)$  and  $\Pi_{\epsilon}(\cdot)$ , are measured in the home currency (e.g., USD). The forward rate  $F$  adjusts so as to equate the payoffs from the two investment strategies.

$$
\Pi_{\$} (r_{\$}, T, N) = \Pi_{\epsilon} (F; r_{\epsilon}, T, M, N)
$$

This equation is a "no-arbitrage" condition. Solving the no-arbitrage condition for the endogenous variable  $F$  yields the covered interest-rate parity formula for the forward rate.

$$
F = \exp[(r_{\$} - r_{\epsilon}) \cdot T]\cdot M
$$

Note that the forward rate  $F$  inherits the units of the exchange rate  $M$ . Since the units of the exchange rate  $M$  is Home/Foreign (e.g., USD/EUR), it follows that the units of the forward rate  $F$  is also Home/Foreign.

## 3. Interpretation

The forward rate  $F$  is the exchange rate at which Home and Foreign currencies are exchanged upon maturity at time  $T$  from inception. The forward rate  $F$  is agreed upon at inception (i.e., at time 0).

```d2
home_invest: "Invest in home currency at r_$" {
  shape: rectangle
}
payoff_home: "Payoff: exp(r_$ * T) * N" {
  shape: rectangle
}
foreign_invest: "Convert to foreign currency, invest at r_€, convert back at forward rate F" {
  shape: rectangle
}
payoff_foreign: "Payoff: exp(r_€ * T) * (N/M) * F" {
  shape: rectangle
}
equal: "No-arbitrage condition: payoffs must be equal" {
  shape: diamond
}
forward_formula: "Covered Interest Rate Parity\nF = exp((r_$ - r_€) * T) * M" {
  shape: rectangle
}

home_invest -> payoff_home
foreign_invest -> payoff_foreign
payoff_home -> equal
payoff_foreign -> equal
equal -> forward_formula
```

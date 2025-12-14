---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Arbitrage Opportunity Accounting Forward Contracts for Exchange Rate Securities
linter-yaml-title-alias: Arbitrage Opportunity Accounting Forward Contracts for Exchange Rate Securities
---

# Arbitrage Opportunity Accounting Forward Contracts for Exchange Rate Securities

Step 1: Compare the quoted forward rate  $F_{q}$  (data) with the synthetic no-arbitrage forward rate  $F_{0,T}$  (theory) to determine whether an arbitrage opportunity exists.

1. Formula for synthetic no-arbitrage forward rate.

$$
F _ {0, T} = M _ {0} \cdot \exp [ ([ r _ {\$} - r _ {\epsilon} ]) \cdot T ]
$$

2. Suppose quoted forward rate  $F_{q}$  is less than synthetic no-arbitrage forward rate  $F_{0,T}$ .

$$
F _ {q} <   F _ {0, T}
$$

Step 2: Determine the short position and the long position for the forward contracts that leverage the arbitrage opportunity.

1. Leveraging an arbitrage opportunity requires adhering to the principle of buying at a low price and selling at a high price.
2. Given the price relationship  $F_{q} < F_{0,T}$ , arbitrage requires "buying" at the low quoted forward rate  $F_{q}$  and "selling" at the high synthetic forward rate  $F_{0,T}$ .
3. Long position: At inception  $t = 0$ , enter a forward contract committing to buy 1 EUR at maturity  $t = T$  at quoted forward rate  $F_{q}$ .
4. Short position: At inception  $t = 0$ , enter a forward contract committing to sell 1 EUR at maturity  $t = T$  at synthetic forward rate  $F_{0,T}$ .<sup>1</sup>

Step 3: Determine profit and loss from fulfilling short position obligation and long position obligation at maturity  $t = T$ .

5. Long position obligation: Pay  $F_{q}$  USD to buy 1 EUR at maturity  $t = T$ .

$$
L o s s _ {T} (\mathbb {S}) = F _ {q}
$$

6. Short position obligation: Sell 1 EUR at maturity  $t = T$ . To obtain 1 EUR at maturity  $t = T$ , borrow the present value equivalent, namely  $\exp(-r_{\epsilon} \cdot T)$  EUR, at inception  $t = 0$ .

$$
G a i n _ {0} (\epsilon) = \exp (- r _ {\epsilon} \cdot T)
$$

Step 4: Determine the counteracting investment strategy at inception  $t = 0$  that ensures profit or loss at inception  $t = 0$  is equal to zero.

1. To offset borrowing  $\exp (-r_{\epsilon} \cdot T)$  EUR at inception  $t = 0$ , invest  $\exp (-r_{\epsilon} \cdot T) \cdot M_0$  USD at the USD interest rate  $r_{\mathbb{S}}$ .

$$
L o s s _ {0} (\mathbb {S}) = \exp (- r _ {\epsilon} \cdot T) \cdot M _ {0}
$$

2. The investment strategy above ensures profit or loss is zero at inception  $t = T$ .

$$
\begin{array}{l} P r o f i t _ {0} (\mathbb {S}) = G a i n _ {0} (\mathbb {E}) \cdot M _ {0} - L o s s _ {0} (\mathbb {S}) \\ = \exp (- r _ {\epsilon} \cdot T) \cdot M _ {0} - \exp (- r _ {\epsilon} \cdot T) \cdot M _ {0} \\ = 0 \\ \end{array}
$$

Step 5: Given the investment strategy at inception  $t = 0$ , determine the profit or loss at maturity  $t = T$ .

1. USD investment at  $t = 0$  generates proceeds at maturity  $t = T$ .

$$
\begin{array}{l} G a i n _ {T} (\$) = \underbrace {\left[ \exp \left(- r _ {\epsilon} \cdot T\right) \cdot M _ {0} \right]} _ {\text {U S D I n v e s t m e n t}} \cdot \underbrace {\exp \left(r _ {\$} \cdot T\right)} _ {\text {R e t u r n}} \\ = \exp ([ r _ {\$} - r _ {\epsilon} ] \cdot T) \cdot M _ {0} \\ \end{array}
$$

2. Use the 1 EUR obtained at maturity  $t = T$  from the long position on the forward contract to repay the borrowed EUR at inception  $t = 0$ .

$$
\exp (- r _ {\epsilon} \cdot T) \cdot \exp (r _ {\epsilon} \cdot T) - 1 = 0
$$

3. Evaluate profit or loss at maturity  $t = T$ .

$$
\begin{array}{l} P r o f i t _ {T} (\mathbb {S}) = G a i n _ {T} (\mathbb {S}) - L o s s _ {T} (\mathbb {S}) \\ = \exp ([ r _ {\$} - r _ {\epsilon} ] \cdot T) \cdot M _ {0} - F _ {q} \\ = F _ {0, T} - F _ {q} \\ > 0 \\ \end{array}
$$

---
title: "Arbitrage Opportunity Accounting Forward Contracts for Exchange Rate Securities"
parent_directory: "Financial Instruments TA Session Notes"
formatted: "2025-12-20 06:07:00 PM"
formatter_model: "claude-sonnet-4-5-20250929"
cli_tool: "opencode"
primary_tags:
   - forward contracts arbitrage
   - currency forward pricing
   - interest rate parity
secondary_tags:
   - exchange rate forwards
   - no arbitrage pricing
   - synthetic forward rate
   - covered interest arbitrage
   - forward contract valuation
cssclasses: academia
---

# Arbitrage Opportunity Accounting Forward Contracts for Exchange Rate Securities

Step 1: Compare the quoted forward rate  $F_{q}$  (data) with the synthetic no-arbitrage forward rate  $F_{0,T}$  (theory) to determine whether an arbitrage opportunity exists.

1. Formula for synthetic no-arbitrage forward rate.

$$
F_{0,T} = M_{0} \cdot \exp[(r_{\$} - r_{\epsilon}) \cdot T]
$$

2. Suppose quoted forward rate  $F_{q}$  is less than synthetic no-arbitrage forward rate  $F_{0,T}$ .

$$
F_{q} < F_{0,T}
$$

Step 2: Determine the short position and the long position for the forward contracts that leverage the arbitrage opportunity.

1. Leveraging an arbitrage opportunity requires adhering to the principle of buying at a low price and selling at a high price.
2. Given the price relationship  $F_{q} < F_{0,T}$ , arbitrage requires "buying" at the low quoted forward rate  $F_{q}$  and "selling" at the high synthetic forward rate  $F_{0,T}$ .
3. Long position: At inception  $t = 0$ , enter a forward contract committing to buy 1 EUR at maturity  $t = T$  at quoted forward rate  $F_{q}$ .
4. Short position: At inception  $t = 0$ , enter a forward contract committing to sell 1 EUR at maturity  $t = T$  at synthetic forward rate  $F_{0,T}$ .<sup>1</sup>

Step 3: Determine profit and loss from fulfilling short position obligation and long position obligation at maturity  $t = T$ .

5. Long position obligation: Pay  $F_{q}$  USD to buy 1 EUR at maturity  $t = T$ .

$$
\text{Loss}_{T}(\$) = F_{q}
$$

6. Short position obligation: Sell 1 EUR at maturity  $t = T$ . To obtain 1 EUR at maturity  $t = T$ , borrow the present value equivalent, namely  $\exp(-r_{\epsilon} \cdot T)$  EUR, at inception  $t = 0$ .

$$
\text{Gain}_{0}(\epsilon) = \exp(-r_{\epsilon} \cdot T)
$$

Step 4: Determine the counteracting investment strategy at inception  $t = 0$  that ensures profit or loss at inception  $t = 0$  is equal to zero.

1. To offset borrowing  $\exp (-r_{\epsilon} \cdot T)$  EUR at inception  $t = 0$ , invest  $\exp (-r_{\epsilon} \cdot T) \cdot M_0$  USD at the USD interest rate  $r_{\mathbb{S}}$ .

$$
\text{Loss}_{0}(\$) = \exp(-r_{\epsilon} \cdot T) \cdot M_{0}
$$

2. The investment strategy above ensures profit or loss is zero at inception  $t = T$ .

$$
\begin{array}{l} \text{Profit}_{0}(\$) = \text{Gain}_{0}(\epsilon) \cdot M_{0} - \text{Loss}_{0}(\$) \\ = \exp(-r_{\epsilon} \cdot T) \cdot M_{0} - \exp(-r_{\epsilon} \cdot T) \cdot M_{0} \\ = 0 \\ \end{array}
$$

Step 5: Given the investment strategy at inception  $t = 0$ , determine the profit or loss at maturity  $t = T$ .

1. USD investment at  $t = 0$  generates proceeds at maturity  $t = T$ .

$$
\begin{array}{l} \text{Gain}_{T}(\$) = \underbrace{[\exp(-r_{\epsilon} \cdot T) \cdot M_{0}]}_{\text{USD Investment}} \cdot \underbrace{\exp(r_{\$} \cdot T)}_{\text{Return}} \\ = \exp([r_{\$} - r_{\epsilon}] \cdot T) \cdot M_{0} \\ \end{array}
$$

2. Use the 1 EUR obtained at maturity  $t = T$  from the long position on the forward contract to repay the borrowed EUR at inception  $t = 0$ .

$$
\exp (- r _ {\epsilon} \cdot T) \cdot \exp (r _ {\epsilon} \cdot T) - 1 = 0
$$

3. Evaluate profit or loss at maturity  $t = T$ .

$$
\begin{array}{l} \text{Profit}_{T}(\$) = \text{Gain}_{T}(\$) - \text{Loss}_{T}(\$) \\ = \exp([r_{\$} - r_{\epsilon}] \cdot T) \cdot M_{0} - F_{q} \\ = F_{0,T} - F_{q} \\ > 0 \\ \end{array}
$$

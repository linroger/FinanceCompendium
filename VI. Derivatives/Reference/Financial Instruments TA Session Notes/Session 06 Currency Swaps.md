---
title: Currency Swaps
parent_directory: Financial Instruments TA Session Notes
formatted: 2025-12-20 06:09:45 PM
formatter_model: claude-sonnet-4
cli_tool: opencode
primary_tags:
  - currency swaps
  - exchange rate risk
  - government bond issuance
secondary_tags:
  - spot exchange rate
  - foreign currency hedging
  - swap contract valuation
  - principal exchange
  - coupon payments
cssclasses: academia
---

# Currency Swaps

## 1. Determining Currency Swap Rates

### 1.1 Preamble

1. Governments often issue bonds in foreign currencies (e.g., the Greek government issues Greek bonds denominated in USD rather than in EUR, the home currency).
2. In issuing bonds in a foreign currency, a government exposes itself to exchange rate risk. If the foreign currency appreciates relative to the home currency, then more units of the home currency are required to pay the interest and principal in the foreign currency.
3. Currency swaps serve as a hedge against such exchange rate risk.

### 1.2 Currency Swap

1. Consider two countries: Home $H$ and Foreign $F$.
2. At inception $t = 0$, Home issues government bonds with value $X$ in currency $F$.
3. The bond pays a coupon (interest) semi-annually at the annual interest rate  $c$ .
4. To hedge against exchange rate risk, Home enters in a swap contract.
5. Let $M_0$ denote the exchange rate for $F/H$ currencies at inception $t = 0$.
6. At inception  $t = 0$ , the swap contract requires:

a. Home pays $N^{F} = X$ in $F$ currency.

b. Home receives $N^H = X \cdot \frac{1}{M_0}$ in $H$ currency.

7. At maturity  $t = T$ , the swap contract requires:

a. Home receives $N^{F} = X$ in $F$ currency.

b. Home pays $N^H = X \cdot \frac{1}{M_0}$ in $H$ currency.

### 1.3 Value of Bonds

1. Time $t = 0$ value of the bond denominated in $F$ currency.

$$
B_{0}^{F} = \underbrace{\sum_{t}^{T} \frac{c}{2} \cdot N^{F} \cdot Z^{F}(0,t)}_{\text{Interest PV}} + \underbrace{N^{F} \cdot Z^{F}(0,T)}_{\text{Principal PV}}
$$

2. Time $t = 0$ value of the bond denominated in $H$ currency.

$$
B_{0}^{H}(K) = \underbrace{\sum_{t}^{T} \frac{K}{2} \cdot N^{H} \cdot Z^{H}(0,t)}_{\text{Interest PV}} + \underbrace{N^{H} \cdot Z^{H}(0,T)}_{\text{Principal PV}}
$$

- $K$ denotes the "swap rate," i.e. the annualized coupon rate for semi-annual payments of coupons in the $H$ currency.
The bond value $B_0^H(K)$ is a function of the swap rate $K$

### 1.4 Swap Rate under Spot Exchange of Principal

1. Time $t = 0$ value of the swap in $F$ currency is equal to the value of the long position in the bond denominated in the $F$ currency minus the value of the short position in the bond denominated in the $H$ currency, converted into the $F$ currency using the time $t = 0$ exchange rate $M_0$.

$$
V_{0}^{\mathrm{Swap},F}(K) = B_{0}^{F} - M_{0} \cdot B_{0}^{H}(K)
$$

2. Swap rate $K$ adjusts so as to set value of the swap at inception $t = 0$ to zero.

$$
V_{0}^{\mathrm{Swap},F}(K^{*}) = 0
$$

3. Formula for swap rate  $K^{*}$ .

$$
K^{*} = 2 \cdot \left[ \frac{\frac{C}{2} \cdot \sum_{t}^{T} Z^{F}(0,t) + Z^{F}(0,T) - Z^{H}(0,T)}{\sum_{t}^{T} Z^{H}(0,t)} \right]
$$

### 1.5 Swap Rate under Alternative Exchange of Principal

1. Time $t = 0$ value of the swap in $F$ currency has an additional component $V_0^{\mathrm{FX},F}(\overline{M}_0)$ to account for the fact that the exchange of principal occurs at an alternative exchange rate $\overline{M}_0$ for $F/H$ currencies, in place of the spot exchange rate $M_0$.

$$
V_{0}^{\mathrm{Swap},F}(K) = B_{0}^{F} - M_{0} \cdot B_{0}^{H}(K) + V_{0}^{\mathrm{FX},F}(\overline{M}_{0})
$$

2. Value of exchange of principal.

$$
V_{0}^{\mathrm{FX},F}(\bar{M}_{0}) = \left(\frac{M_{0}}{\bar{M}_{0}} - 1\right) \cdot N^{F}
$$

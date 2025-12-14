---
parent_directory:
title: Useful Formulas for 35100
tags:
aliases:
parent_folder: Lecture Notes
subfolder:
key_concepts:
cssclasses: academia
linter-yaml-title-alias: Useful Formulas for 35100
---

# Useful Formulas for 35100

- Forward contract, currency:

$$
F _ {0, T} = M _ {0} \times e ^ {(r _ {\S} - r _ {e}) T}
$$

- Value of a forward contract to sell the underlying at  $F_{0,T}$ :

$$
f _ {t, T} = e ^ {- r _ {\S} \times (T - t)} \times \left(F _ {0, T} - F _ {t, T}\right)
$$

- Example of other forward contracts:
- Stock with a fixed dividend yield  $q$ :  $F_{0,T} = S_0 \times e^{(r - q)T}$  
- Stock: known dividend:  $F_{0,T} = \left(S_0 - D \times e^{-rT_1}\right) \times e^{rT}$  
- Commodity: Storage cost  $U$ .  $F_{0,T} = (S_0 + PV(U)) \times e^{rT}$  
- Commodity:  $\%$  storage cost  $u$ .  $F_{0,T} = S_0 \times e^{(r + u)T}$  
- Commodity: % storage cost  $u$ , convenient yield  $y$ $F_{0,T} = S_0 \times e^{(r + u - y)T}$
- Swap rate for one euro paid and  $K$  dollars received for every six months for the next in each of the next  $T$  years:

$$
\mathrm {C u r r e n c y S w a p R a t e} = K = M _ {0} \frac {e ^ {- r _ {e} \times 0 . 5} + e ^ {- r _ {e} \times 1} + \ldots + e ^ {- r _ {e} \times T}}{e ^ {- r _ {\S} \times 0 . 5} + e ^ {- r _ {\S} \times 1} + \ldots + e ^ {- r _ {\S} \times T}}
$$

- Value of swap after initiation:

$$
{V _ {t} ^ {s w a p}} = {K \times \left(\sum_ {i = 1} ^ {n} e ^ {- r _ {\S} (T _ {i} - t)}\right) - M _ {t} \times \left(\sum_ {i = 1} ^ {n} e ^ {- r _ {e} (T _ {i} - t)}\right)}
$$

- Plain vanilla swap (exchange of principal and coupons):

$$
K = M _ {0} \times \frac {B ^ {e} (0 , T)}{B ^ {\S} (0 , T)}
$$

- Put-Call Parity (no dividends, European Options):

$$
\mathrm {P u t} = \mathrm {C a l l} + e ^ {- r \times T} \times K - S _ {0}
$$

- Binomial Trees (e.g. with one-period):
- Let  $V_{1,u}$  be the value of the derivative when the stock goes up and  $V_{1,d}$  be the value of the option when the stock goes down  
- Delta:  $\Delta = \frac{V_{1,u} - V_{1,d}}{S_{1,u} - S_{1,d}}$  
- $B_{0} = e^{-rT}\times (V_{1,u} - \Delta \times S_{1,u})$  
- Value of option at time 0:  $V_{0} = \Delta \times S_{0} + B_{0}$  
- Risk-neutral pricing:  $q^{*} = \frac{S_{0} \times e^{r \times T} - S_{1,d}}{S_{1,u} - S_{1,d}}$  
- $V_{0} = e^{-rT}(q^{*}V_{1,u} + (1 - q^{*})V_{1,d})$
- Black-Scholes formula with known dividend yield  $q$ .

$$
c = S e ^ {- q T} N \left(d _ {1}\right) - K e ^ {- r T} N \left(d _ {2}\right); \quad p = K e ^ {- r T} N \left(- d _ {2}\right) - S e ^ {- q T} N \left(- d _ {1}\right)
$$

$$
{d _ {1}} = {\frac {\ln (S / K) + (r - q + \sigma^ {2} / 2) T}{\sigma \sqrt {T}};} {d _ {2} = d _ {1} - \sigma \sqrt {T}}
$$

- Options Sensitivities from Black-Scholes: "The Greeks"
- Delta:

$$
\Delta = \frac {d \mathrm {O p t i o n P r i c e}}{d S} = \left\{ \begin{array}{l l} N (d _ {1}) & \mathrm {f o r C a l l s} \\ - N (- d _ {1}) & \mathrm {f o r P u t s} \end{array} \right.
$$

- Gamma:

$$
\Gamma = \frac {d \Delta}{d S} = \frac {e ^ {- q T} N ^ {\prime} (d _ {1})}{S \sigma \sqrt {T}} \quad \mathrm {w i t h} N ^ {\prime} (x) = \frac {e ^ {\frac {- x ^ {2}}{2}}}{\sqrt {2 \pi}}
$$

-Theta:

$$
\Theta = \frac {d \text {O p t i o n P r i c e}}{d t} = \text {L o n g u g l y f o r m u l a}
$$

Rho:

$$
\mathrm {R h o} = \frac {d \mathrm {O p t i o n P r i c e}}{d r} = \left\{ \begin{array}{l l} K T e ^ {- r T} N (d _ {2}) > 0 & \mathrm {f o r C a l l s} \\ - K T e ^ {- r T} N (- d _ {2}) <   0 & \mathrm {f o r P u t s} \end{array} \right.
$$

- Vega:

$$
\mathrm {V e g a} = \frac {d \mathrm {O p t i o n P r i c e}}{d \sigma} = S \sqrt {T} N ^ {\prime} (d _ {1}) > 0
$$
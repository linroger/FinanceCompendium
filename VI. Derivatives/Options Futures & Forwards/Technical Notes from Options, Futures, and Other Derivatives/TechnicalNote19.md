---
aliases:
  - Valuation of an Equity Swap
tags:
key_concepts:
parent_directory: Technical Notes from Options, Futures, and Other Derivatives
cssclasses: academia
title: Technical Note No. 19 - Valuation of an Equity Swap
linter-yaml-title-alias: Technical Note No. 19 - Valuation of an Equity Swap
---

# Technical Note No. 19* Options, Futures, and Other Derivatives John Hull

# Valuation of an Equity Swap

As explained in the text an equity swap is always worth zero immediately after a payment date. To value an equity swap between two payment dates, we define

$R_0$ : Floating rate applicable to the next payment date (determined at the last payment date)

$L$ : Principal

$\tau_0$ : Time between last payment date and next payment date

$\tau$ : Time between now and next payment date

$E_0$ : Value of the equity index at the last reset date

$E$ : Current value of the equity index

$R$ : LIBOR rate for the period between now and the next payment date. If we borrow

$$
\frac {E}{E _ {0}} L
$$

at rate  $R$  for time  $\tau$  and invest it in the index, we create an exchange of

$$
\frac {E _ {1}}{E _ {0}} L \quad \text {f o r} \quad \frac {E}{E _ {0}} L (1 + R \tau) \tag {1}
$$

at the next payment date where  $E_{1}$  is the equity index on that payment date. Since this exchange can be created costlessly it is worth zero. The exchange that will actually take place at the next payment date is

$$
\left[ \frac {E _ {1}}{E _ {0}} - 1 \right] L \qquad \mathrm {f o r} \qquad R _ {0} L \tau_ {0}
$$

Adding the principal  $L$  to both sides we see the actual exchange is equivalent to

$$
\frac {E _ {1}}{E _ {0}} L \quad \text {f o r} \quad L \left(1 + R _ {0} \tau_ {0}\right) \tag {2}
$$

Comparing equation (1) with equation (2) see that value of the swap to the party receiving floating is the present value of

$$
L (1 + R _ {0} \tau_ {0}) - L \frac {E}{E _ {0}} (1 + R \tau)
$$

This is

$$
L \frac {1 + R _ {0} \tau_ {0}}{1 + R \tau} - L \frac {E}{E _ {0}}
$$

Similarly, the value of the swap to the party receiving the equity return is

$$
L \frac {E}{E _ {0}} - L \frac {1 + R _ {0} \tau_ {0}}{1 + R \tau}
$$
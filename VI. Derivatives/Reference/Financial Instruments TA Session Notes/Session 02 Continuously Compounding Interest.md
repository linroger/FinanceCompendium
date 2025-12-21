---
title: Continuously Compounding Interest
parent_directory: Financial Instruments TA Session Notes
formatted: 2025-12-20 11:03:25 AM
formatter_model: claude-sonnet-4-5-20250929
cli_tool: opencode
primary_tags:
  - continuously compounding interest
  - discrete compounding frequency
  - interest rate conversion
secondary_tags:
  - libor annual rates
  - gross rate of return
  - maturity horizon
  - compounding frequency
cssclasses: academia
---

# Continuously Compounding Interest

The LIBOR annual interest rate  $r_d$  compounds at a discrete frequency. For example, interest may compound on an annual basis, a semi-annual basis, a monthly basis, and so on.

Let  $n$  denote the discrete frequency with which interest compounds in a year. For example, if interest compounds on an annual basis, then  $n = 1$ . If interest compounds on a semi-annual basis, then  $n = 2$ . If interest compounds on a monthly basis, then  $n = 12$ .

For a given maturity  $T$  and discrete compounding frequency  $n$ , the gross rate of return is

$$
\left(1 + \frac{r_{d}}{n}\right)^{n \cdot T}
$$

By contrast, under continuously compounding interest, the gross rate of return is

$$
\exp(r_{c} \cdot T)
$$

The appropriate continuously compounding interest rate  $r_c$  that aligns with the discrete compounding interest rate  $r_d$  is that which equates the two gross rates of return.

$$
\exp(r_{c} \cdot T) = \left(1 + \frac{r_{d}}{n}\right)^{n \cdot T}
$$

Solving the equation above for the endogenous variable  $r_c$  yields the formula for the continuously compounding interest rate as a function of the discrete compounding interest rate.

$$
r_{c} = n \cdot \ln\left[1 + \frac{r_{d}}{n}\right]
$$

Note that the maturity horizon  $T$  does not affect the conversion between a discrete compounding interest rate and a continuously compounding interest rate.

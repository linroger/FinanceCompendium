---
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: decompounded options eko
---

# decompounded options eko

```python
import numpy as np
import pandas as pd
from scipy.integrate import quad
from scipy import interpolate
from scipy.stats import norm
```

## Constants & Libraries

```python
def compute_forward_swap_rate(
    expiry: float,
    tenor: float,
    df_discount_factors: pd.DataFrame,
    floating_leg_period: float = 1,
    fixed_leg_period: float = 1,
) -> float:
    swap_end_time = expiry + tenor
    floating_leg_term = np.arange(
        expiry + floating_leg_period,
        swap_end_time + floating_leg_period,
        floating_leg_period,
    )
    fixed_leg_terms = np.arange(
        expiry + fixed_leg_period,
        swap_end_time + fixed_leg_period,
        fixed_leg_period,
    )
    floating_leg_pv = np.sum(
        floating_leg_period
        * df_discount_factors.loc[floating_leg_term, "Forward LIBOR"]
        * df_discount_factors.loc[floating_leg_term, "Discount Factor OIS"]
    )
    fixed_leg_pv = np.sum(
        fixed_leg_period
        * df_discount_factors.loc[fixed_leg_terms, "Discount Factor OIS"]
    )
    return floating_leg_pv / fixed_leg_pv
```

```python
class AbstractBlack76Model:
    """
    A base class used to model Black-Scholes option model
    ...
    Parameters
    ----------
    F : float
        The forward price of the underlying asset
    K : float
        The strike price of the options
    discount_factor : float
        The "numeraire" discount factor of the model (i.e. PVBP, compounded discount factor)
    sigma : float
        Volatility
    T : float
        Maturity period (years)
    """

    def __init__(
        self,
        F: float,
        K: float,
        discount_factor: float,
        sigma: float,
        T: float,
    ):
        self.F = F
        self.K = K
        self.sigma = sigma
        self.T = T

        self.d1 = self._calculate_d1()
        self.d2 = self._calculate_d2()
        self.discount_factor = discount_factor

    def _calculate_d1(self) -> float:
        return (np.log(self.F / self.K) + self.sigma**2 / 2 * self.T) / (
            self.sigma * np.sqrt(self.T)
        )

    def _calculate_d2(self) -> float:
        return self.d1 - self.sigma * np.sqrt(self.T)


class VanillaBlack76Model(AbstractBlack76Model):
    def calculate_call_price(self) -> float:
        return self.discount_factor * (
            self.F * norm.cdf(self.d1) - self.K * norm.cdf(self.d2)
        )

    def calculate_put_price(self) -> float:
        return self.discount_factor * (
            -self.F * norm.cdf(-self.d1) + self.K * norm.cdf(-self.d2)
        )


class VanillaOption:
    def black_model(
        self, F: float, K: float, discount_factor: float, sigma: float, T: float
    ) -> VanillaBlack76Model:
        return VanillaBlack76Model(F, K, discount_factor, sigma, T)


def SABR_model(F, K, T, alpha, beta, rho, nu):
    X = K
    # if K is at-the-money-forward
    if abs(F - K) < 1e-12:
        numer1 = (((1 - beta) ** 2) / 24) * alpha * alpha / (F ** (2 - 2 * beta))
        numer2 = 0.25 * rho * beta * nu * alpha / (F ** (1 - beta))
        numer3 = ((2 - 3 * rho * rho) / 24) * nu * nu
        VolAtm = alpha * (1 + (numer1 + numer2 + numer3) * T) / (F ** (1 - beta))
        sabrsigma = VolAtm
    else:
        z = (nu / alpha) * ((F * X) ** (0.5 * (1 - beta))) * np.log(F / X)
        zhi = np.log((((1 - 2 * rho * z + z * z) ** 0.5) + z - rho) / (1 - rho))
        numer1 = (((1 - beta) ** 2) / 24) * ((alpha * alpha) / ((F * X) ** (1 - beta)))
        numer2 = 0.25 * rho * beta * nu * alpha / ((F * X) ** ((1 - beta) / 2))
        numer3 = ((2 - 3 * rho * rho) / 24) * nu * nu
        numer = alpha * (1 + (numer1 + numer2 + numer3) * T) * z
        denom1 = ((1 - beta) ** 2 / 24) * (np.log(F / X)) ** 2
        denom2 = (((1 - beta) ** 4) / 1920) * ((np.log(F / X)) ** 4)
        denom = ((F * X) ** ((1 - beta) / 2)) * (1 + denom1 + denom2) * zhi
        sabrsigma = numer / denom
    return sabrsigma
```

```python
def IRR_0(K: float, m: float, N: float) -> float:
    return 1 / K * (1 - 1 / (1 + K / m) ** (m * N))


def IRR_1(K: float, m: float, N: float) -> float:
    return -1 / K * IRR_0(K, m, N) + 1 / (K * m) * N * m / (1 + K / m) ** (N * m + 1)


def IRR_2(K: float, m: float, N: float) -> float:
    return -2 / K * IRR_1(K, m, N) - 1 / (K * m * m) * (N * m) * (N * m + 1) / (
        1 + K / m
    ) ** (N * m + 2)
```

```python
vanilla_option = VanillaOption()


def irr_settled_option_price(
    discount_factor: float,
    F: float,
    K: float,
    sigma: float,
    T: float,
    m: float,
    N: float,
    swaption_type: str,
) -> float:
    irr_0 = IRR_0(F, m, N)
    discount_factor_numeraire = 1  # 1 / irr_0
    black_model = vanilla_option.black_model(F, K, discount_factor_numeraire, sigma, T)
    if swaption_type == "receiver":
        price = black_model.calculate_put_price()
    else:
        price = black_model.calculate_call_price()
    return discount_factor * irr_0 * price
```

## Data Import

```python
df_discount_factors = pd.read_csv(
    "../bootstrap_swap_curve/output/part_1_bootstrapped_discount_factors.csv",
    index_col=0,
)
```

```python
df_swap_rates = pd.read_csv(
    "../swaption_calibration/output/part_2_swap_rates.csv", index_col=0
)
```

```python
df_sabr_params = pd.read_csv(
    "../swaption_calibration/output/part_2_sabr_params.csv", index_col=0
)
df_sabr_alpha = df_sabr_params.pivot(index="expiry", columns="tenor", values="alpha")
df_sabr_beta = df_sabr_params.pivot(index="expiry", columns="tenor", values="beta")
df_sabr_rho = df_sabr_params.pivot(index="expiry", columns="tenor", values="rho")
df_sabr_nu = df_sabr_params.pivot(index="expiry", columns="tenor", values="nu")
```

## Pre-computation

```python
sabr_alpha_interp = interpolate.interp2d(
    df_sabr_alpha.index, df_sabr_alpha.columns, df_sabr_alpha.values.T, kind="linear"
)
sabr_beta_interp = interpolate.interp2d(
    df_sabr_beta.index, df_sabr_beta.columns, df_sabr_beta.values.T, kind="linear"
)
sabr_rho_interp = interpolate.interp2d(
    df_sabr_rho.index, df_sabr_rho.columns, df_sabr_rho.values.T, kind="linear"
)
sabr_nu_interp = interpolate.interp2d(
    df_sabr_nu.index, df_sabr_nu.columns, df_sabr_nu.values.T, kind="linear"
)
```

## 1. PV of Decompounded Option Payoff

$CMS\ 10y^{1/p} - 0.04^{1/q}$ at time T = 5y, where p = 4 and q = 2

```python
def g_0(K: float) -> float:
    p = 4
    q = 2
    return K ** (1 / p) - 0.04 ** (1 / q)


def g_1(K: float) -> float:
    p = 4
    q = 2
    return (1 / p) * K ** (1 / p - 1)


def g_2(K: float) -> float:
    p = 4
    q = 2
    return (1 / p) * (1 / p - 1) * K ** (1 / p - 2)


def h_0(K: float, m: float, N: float):
    return g_0(K) / IRR_0(K, m, N)


def h_1(K: float, m: float, N: float) -> float:
    return (IRR_0(K, m, N) * g_1(K) - g_0(K) * IRR_1(K, m, N)) / IRR_0(K, m, N) ** 2


def h_2(K: float, m: float, N: float) -> float:
    return (
        IRR_0(K, m, N) * g_2(K)
        - IRR_2(K, m, N) * g_0(K)
        - 2.0 * IRR_1(K, m, N) * g_1(K)
    ) / IRR_0(K, m, N) ** 2 + 2.0 * IRR_1(K, m, N) ** 2 * g_0(K) / IRR_0(K, m, N) ** 3
```

```python
def compute_options_payoff_1(
    expiry: float,
    tenor: float,
    payment_period: float,
    discount_factor: float,
    df_discount_factors: pd.DataFrame,
) -> float:
    F = compute_forward_swap_rate(
        expiry, tenor, df_discount_factors, payment_period, payment_period
    )
    alpha = sabr_alpha_interp(expiry, tenor)[0]
    beta = sabr_beta_interp(expiry, tenor)[0]
    rho = sabr_rho_interp(expiry, tenor)[0]
    nu = sabr_nu_interp(expiry, tenor)[0]

    first_term = discount_factor * g_0(F)
    second_term = 0
    third_term = quad(
        lambda x: h_2(x, 1 / payment_period, tenor)
        * irr_settled_option_price(
            discount_factor,
            F,
            x,
            SABR_model(F, x, expiry, alpha, beta, rho, nu),
            expiry,
            1 / payment_period,
            tenor,
            "receiver",
        ),
        1e-6,
        F,
    )[0]

    fourth_term = quad(
        lambda x: h_2(x, 1 / payment_period, tenor)
        * irr_settled_option_price(
            discount_factor,
            F,
            x,
            SABR_model(F, x, expiry, alpha, beta, rho, nu),
            expiry,
            1 / payment_period,
            tenor,
            "payer",
        ),
        F,
        float("inf"),
    )[0]
    return first_term + second_term + third_term + fourth_term
```

```python
T = 5
swap_rate_period = 10
payment_period = 0.5
discount_factor = df_discount_factors.loc[T, "Discount Factor OIS"]

compute_options_payoff_1(
    T, swap_rate_period, payment_period, discount_factor, df_discount_factors
)
```

    0.23559283462506492

## 2. PV of payoff

$(CMS\ 10y^{1/p} - 0.04^{1/q})^+$ at time T = 5y, where p = 4 and q = 2

```python
def compute_options_payoff_2(
    L: float,
    expiry: float,
    tenor: float,
    payment_period: float,
    discount_factor: float,
    df_discount_factors: pd.DataFrame,
) -> float:
    F = compute_forward_swap_rate(
        expiry, tenor, df_discount_factors, payment_period, payment_period
    )
    alpha = sabr_alpha_interp(expiry, tenor)[0]
    beta = sabr_beta_interp(expiry, tenor)[0]
    rho = sabr_rho_interp(expiry, tenor)[0]
    nu = sabr_nu_interp(expiry, tenor)[0]

    first_term = irr_settled_option_price(
        discount_factor,
        F,
        L,
        SABR_model(F, L, expiry, alpha, beta, rho, nu),
        expiry,
        1 / payment_period,
        tenor,
        "payer",
    ) * h_1(L, 1 / payment_period, tenor)

    second_term = quad(
        lambda x: h_2(x, 1 / payment_period, tenor)
        * irr_settled_option_price(
            discount_factor,
            F,
            x,
            SABR_model(F, x, expiry, alpha, beta, rho, nu),
            expiry,
            1 / payment_period,
            tenor,
            "payer",
        ),
        F,
        float("inf"),
    )[0]
    return first_term + second_term
```

```python
T = 5
swap_rate_period = 10
payment_period = 0.5
discount_factor = df_discount_factors.loc[T, "Discount Factor OIS"]
L = 0.2**4

compute_options_payoff_2(
    L, T, swap_rate_period, payment_period, discount_factor, df_discount_factors
)
```

    1.0509369659896817


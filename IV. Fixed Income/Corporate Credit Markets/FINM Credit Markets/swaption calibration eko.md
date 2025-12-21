---
title: "Swaption Calibration Eko"
parent_directory: "IV. Fixed Income/Corporate Credit Markets/FINM Credit Markets"
formatted: "2025-12-21 06:37:45 AM"
formatter_model: "grok-code-fast-1"
cli-tool: "opencode"
primary_tags:
  - swaption calibration
  - sabr model
  - displaced diffusion model
  - black76 model
secondary_tags:
  - volatility modeling
  - option pricing
  - interest rate derivatives
  - numerical calibration
  - swap rates
  - implied volatility
cssclasses: academia
---

# swaption calibration eko

```python
import matplotlib.pyplot as plt
import numpy as np
import numpy.typing as npt
import pandas as pd
from scipy.interpolate import RegularGridInterpolator
from scipy.optimize import brentq, least_squares
from scipy.stats import norm

plt.style.use("classic")
```

## Constants & Libraries

```python
TENOR_MAPPING = {"M": 1 / 12, "Y": 1, "m": 1 / 12, "y": 1}


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


class AbstractDisplacedDiffusionModel:
    """
    Displaced diffusion is extension of Black76 with an additional parameter beta
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
    beta : float
        Displaced diffusion model parameter (0,1], but lecture notes say [0,1]
        https://ink.library.smu.edu.sg/cgi/viewcontent.cgi?article=6976&context=lkcsb_research
    """

    def __init__(
        self,
        F: float,
        K: float,
        discount_factor: float,
        sigma: float,
        T: float,
        beta: float,
    ):
        self.F = F
        self.K = K
        self.sigma = sigma
        self.T = T
        self.beta = beta

        self.adjusted_F = self.F / self.beta
        self.adjusted_K = self.K + ((1 - self.beta) / self.beta) * self.F
        self.adjusted_sigma = self.sigma * self.beta
        self.discount_factor = discount_factor

        self.d1 = self._calculate_d1()
        self.d2 = self._calculate_d2()

    def _calculate_d1(self) -> float:
        return (
            np.log(self.adjusted_F / self.adjusted_K)
            + 0.5 * self.adjusted_sigma**2 * self.T
        ) / (self.adjusted_sigma * np.sqrt(self.T))

    def _calculate_d2(self) -> float:
        return self.d1 - self.adjusted_sigma * np.sqrt(self.T)


class VanillaDisplacedDiffusionModel(AbstractDisplacedDiffusionModel):
    def calculate_call_price(self) -> float:
        return self.discount_factor * (
            self.adjusted_F * norm.cdf(self.d1) - self.adjusted_K * norm.cdf(self.d2)
        )

    def calculate_put_price(self) -> float:
        return self.discount_factor * (
            self.adjusted_K * norm.cdf(-self.d2) - self.adjusted_F * norm.cdf(-self.d1)
        )


class VanillaOption:
    def black_model(
        self, F: float, K: float, discount_factor: float, sigma: float, T: float
    ) -> VanillaBlack76Model:
        return VanillaBlack76Model(F, K, discount_factor, sigma, T)

    def displaced_diffusion_model(
        self,
        F: float,
        K: float,
        discount_factor: float,
        sigma: float,
        T: float,
        beta: float,
    ) -> AbstractDisplacedDiffusionModel:
        return VanillaDisplacedDiffusionModel(F, K, discount_factor, sigma, T, beta)


def compute_pvbp(delta_tenor: npt.ArrayLike, discount_factor: npt.ArrayLike) -> float:
    return np.sum(delta_tenor * discount_factor)


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

## Data Input

```python
fixed_leg_period = 0.5
floating_leg_period = 0.5
```

## Data Import

```python
df_swaption = pd.read_excel("../data/IR data.xlsx", sheet_name="Swaption", header=2)
```

```python
df_swap_rates = pd.read_csv(
    "../bootstrap_swap_curve/output/part_1_swap_rates.csv", index_col=0
)
```

```python
df_discount_factors = pd.read_csv(
    "../bootstrap_swap_curve/output/part_1_bootstrapped_discount_factors.csv",
    index_col=0,
)
```

## Data Formatting

```python
def format_swaption_data(df_swaption: pd.DataFrame) -> pd.DataFrame:
    df_swaption_formatted = df_swaption.copy()
    df_swaption_formatted["Expiry"] = (
        df_swaption_formatted["Expiry"]
        .str.extract(r"(\d+)([myMY])")
        .apply(lambda x: int(x[0]) * TENOR_MAPPING[x[1]], axis=1)
    )
    df_swaption_formatted["Tenor"] = (
        df_swaption_formatted["Tenor"]
        .str.extract(r"(\d+)([myMY])")
        .apply(lambda x: int(x[0]) * TENOR_MAPPING[x[1]], axis=1)
    )
    df_swaption_formatted = df_swaption_formatted.set_index(["Expiry", "Tenor"])
    return df_swaption_formatted.copy()
```

```python
df_swaption = format_swaption_data(df_swaption)
```

## Pre-computation

```python
vanilla_option = VanillaOption()


def implied_volatility(
    F: float,
    K: float,
    discount_factor: float,
    price: float,
    T: float,
    options_type: str,
) -> float:
    try:
        b76_model = lambda x: vanilla_option.black_model(F, K, discount_factor, x, T)
        if options_type.lower() == "payer":
            implied_vol = brentq(
                lambda x: price - b76_model(x).calculate_call_price(), 1e-12, 10.0
            )
        elif options_type.lower() == "receiver":
            implied_vol = brentq(
                lambda x: price - b76_model(x).calculate_put_price(), 1e-12, 10.0
            )
        else:
            raise NameError("Payoff type not recognized")
    except Exception:
        implied_vol = 0

    return implied_vol
```

```python
def compute_pvbp_with_df_ois(
    expiry: float, tenor: float, fixed_leg_period: float, df_ois: pd.DataFrame
):
    fixed_leg_terms = np.arange(
        expiry + fixed_leg_period, expiry + tenor + fixed_leg_period, fixed_leg_period
    )
    delta_tenors = np.empty(len(fixed_leg_terms))
    delta_tenors.fill(fixed_leg_period)
    discount_factors = df_ois.loc[fixed_leg_terms, "Discount Factor OIS"].values
    return compute_pvbp(delta_tenors, discount_factors)


# Compute PVBP for each forward swap rates
df_swap_rates["PVBP"] = df_swap_rates.apply(
    lambda x: compute_pvbp_with_df_ois(
        x["Expiry"], x["Tenor"], fixed_leg_period, df_discount_factors
    ),
    axis=1,
)
```

```python
def convert_vol_bps_to_float(value):
    try:
        if "bps" in value:
            return float(value.replace("bps", ""))
        else:
            # If 'ATM' is encountered, you may handle it as per your requirement.
            return 0
    except ValueError:
        # Handle the case where the conversion to float is not possible
        return float("nan")


vol_rates_change = np.array(
    [convert_vol_bps_to_float(x) * 0.01 / 100 for x in df_swaption.columns]
)
```

## Displaced-Diffusion Model

```python
def calculate_displaced_diffusion_price(
    F: float,
    strike: float,
    discount_factor: float,
    sigma: float,
    T: float,
    beta,
    options_type: str,
):
    if options_type == "payer":
        price = vanilla_option.displaced_diffusion_model(
            F, strike, discount_factor, sigma, T, beta
        ).calculate_call_price()
    else:
        price = vanilla_option.displaced_diffusion_model(
            F, strike, discount_factor, sigma, T, beta
        ).calculate_put_price()
    return price


def calculate_displaced_diffusion_implied_vol(
    F: float,
    strike: float,
    discount_factor: float,
    sigma: float,
    T: float,
    beta,
    options_type: str,
) -> float:
    price = calculate_displaced_diffusion_price(
        F, strike, discount_factor, sigma, T, beta, options_type
    )
    implied_vol = implied_volatility(F, strike, discount_factor, price, T, options_type)
    return implied_vol
```

```python
def calculate_DD_vol_err(x, strikes, vols, F, discount_factor, sigma, T, options_type):
    err = 0.0
    for i, vol in enumerate(vols):
        implied_vol = calculate_displaced_diffusion_implied_vol(
            F, strikes[i], discount_factor, sigma, T, x[0], options_type[i]
        )

        err += (vol - implied_vol) ** 2
    return err
```

```python
ddm_parameters = {}
swaption_calibrated_ddm_vols = {}
for index, row in df_swap_rates.iterrows():
    expiry, tenor, swap_rate, pvbp = (
        row["Expiry"],
        row["Tenor"],
        row["Swap Rate"],
        row["PVBP"],
    )

    strikes = swap_rate + vol_rates_change
    vols = df_swaption.loc[(expiry, tenor)].values / 100
    options_types = np.array(
        ["receiver" if x < swap_rate else "payer" for x in strikes]
    )

    F = swap_rate
    discount_factor = pvbp
    T = expiry
    sigma = df_swaption.loc[(expiry, tenor)]["ATM"] / 100

    initial_guess = [0.96]  # beta
    res = least_squares(
        lambda x: calculate_DD_vol_err(
            x,
            strikes,
            vols,
            F,
            discount_factor,
            sigma,
            T,
            options_types,
        ),
        initial_guess,
        bounds=(0, 1),
    )

    beta = res.x[0]
    calibrated_vols = []
    for index, strike in enumerate(strikes):
        calibrated_vols.append(
            calculate_displaced_diffusion_implied_vol(
                F, strike, discount_factor, sigma, T, beta, options_types[index]
            )
        )

    key = "{}Yx{}Y".format(expiry, tenor)
    ddm_parameters[key] = {
        "expiry": expiry,
        "tenor": tenor,
        "sigma": sigma,
        "beta": beta,
    }
    swaption_calibrated_ddm_vols[key] = calibrated_vols
```

```python
df_ddm_parameters = pd.DataFrame(ddm_parameters.values(), index=ddm_parameters.keys())
df_ddm_parameters.index.name = "Swaption"
df_ddm_sigma = df_ddm_parameters.pivot(index="expiry", columns="tenor", values="sigma")
df_ddm_beta = df_ddm_parameters.pivot(index="expiry", columns="tenor", values="beta")
```

```python
print("DDM Sigma Parameters:")
df_ddm_sigma
```

    DDM Sigma Parameters:

<div>
<style scoped>
	.dataframe tbody tr th:only-of-type {
		vertical-align: middle;
	}

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
	<tr style="text-align: right;">
	  <th>tenor</th>
	  <th>1.0</th>
	  <th>2.0</th>
	  <th>3.0</th>
	  <th>5.0</th>
	  <th>10.0</th>
	</tr>
	<tr>
	  <th>expiry</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>1.0</th>
	  <td>0.2250</td>
	  <td>0.2872</td>
	  <td>0.2978</td>
	  <td>0.2607</td>
	  <td>0.2447</td>
	</tr>
	<tr>
	  <th>5.0</th>
	  <td>0.2726</td>
	  <td>0.2983</td>
	  <td>0.2998</td>
	  <td>0.2660</td>
	  <td>0.2451</td>
	</tr>
	<tr>
	  <th>10.0</th>
	  <td>0.2854</td>
	  <td>0.2928</td>
	  <td>0.2940</td>
	  <td>0.2674</td>
	  <td>0.2437</td>
	</tr>
  </tbody>
</table>
</div>

```python
print("DDM Beta Parameters:")
df_ddm_beta
```

    DDM Beta Parameters:

<div>
<style scoped>
	.dataframe tbody tr th:only-of-type {
		vertical-align: middle;
	}

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
	<tr style="text-align: right;">
	  <th>tenor</th>
	  <th>1.0</th>
	  <th>2.0</th>
	  <th>3.0</th>
	  <th>5.0</th>
	  <th>10.0</th>
	</tr>
	<tr>
	  <th>expiry</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>1.0</th>
	  <td>2.972551e-08</td>
	  <td>7.343053e-12</td>
	  <td>1.335780e-09</td>
	  <td>7.036454e-08</td>
	  <td>6.306188e-07</td>
	</tr>
	<tr>
	  <th>5.0</th>
	  <td>6.951658e-10</td>
	  <td>5.157503e-07</td>
	  <td>5.019084e-07</td>
	  <td>5.108234e-07</td>
	  <td>5.412154e-02</td>
	</tr>
	<tr>
	  <th>10.0</th>
	  <td>2.432210e-09</td>
	  <td>3.411440e-06</td>
	  <td>5.232234e-08</td>
	  <td>7.919070e-06</td>
	  <td>1.972148e-04</td>
	</tr>
  </tbody>
</table>
</div>

## SABR Model

```python
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


def calculate_SABR_vol_err(x, strikes, vols, F, T, beta):
    err = 0.0
    for i, vol in enumerate(vols):
        err += (vol - SABR_model(F, strikes[i], T, x[0], beta, x[1], x[2])) ** 2
    return err
```

```python
beta = 0.9
sabr_parameters = {}
swaption_calibrated_sabr_vols = {}

for index, row in df_swap_rates.iterrows():
    expiry, tenor, swap_rate = (
        row["Expiry"],
        row["Tenor"],
        row["Swap Rate"],
    )

    strikes = swap_rate + vol_rates_change
    vols = df_swaption.loc[(expiry, tenor)].values / 100

    F = swap_rate
    T = expiry

    initial_guess = [0.18, -0.45, 0.5]  # alpha, rho, nu
    res = least_squares(
        lambda x: calculate_SABR_vol_err(
            x,
            strikes,
            vols,
            F,
            T,
            beta,
        ),
        initial_guess,
        max_nfev=6000,
    )

    alpha, rho, nu = res.x
    calibrated_vols = []
    for index, strike in enumerate(strikes):
        calibrated_vols.append(SABR_model(F, strike, T, alpha, beta, rho, nu))

    key = "{}Yx{}Y".format(expiry, tenor)
    sabr_parameters[key] = {
        "expiry": expiry,
        "tenor": tenor,
        "alpha": alpha,
        "beta": beta,
        "rho": rho,
        "nu": nu,
    }

    swaption_calibrated_sabr_vols[key] = calibrated_vols
```

```python
df_sabr_parameters = pd.DataFrame(
    sabr_parameters.values(), index=sabr_parameters.keys()
)
df_sabr_parameters.index.name = "Swaption"
df_sabr_alpha = df_sabr_parameters.pivot(
    index="expiry", columns="tenor", values="alpha"
)
df_sabr_beta = df_sabr_parameters.pivot(index="expiry", columns="tenor", values="beta")
df_sabr_rho = df_sabr_parameters.pivot(index="expiry", columns="tenor", values="rho")
df_sabr_nu = df_sabr_parameters.pivot(index="expiry", columns="tenor", values="nu")
```

```python
print("SABR Alpha Parameters:")
df_sabr_alpha
```

    SABR Alpha Parameters:

<div>
<style scoped>
	.dataframe tbody tr th:only-of-type {
		vertical-align: middle;
	}

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
	<tr style="text-align: right;">
	  <th>tenor</th>
	  <th>1.0</th>
	  <th>2.0</th>
	  <th>3.0</th>
	  <th>5.0</th>
	  <th>10.0</th>
	</tr>
	<tr>
	  <th>expiry</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>1.0</th>
	  <td>0.139074</td>
	  <td>0.184650</td>
	  <td>0.196852</td>
	  <td>0.178042</td>
	  <td>0.171143</td>
	</tr>
	<tr>
	  <th>5.0</th>
	  <td>0.166618</td>
	  <td>0.199534</td>
	  <td>0.210305</td>
	  <td>0.190972</td>
	  <td>0.177051</td>
	</tr>
	<tr>
	  <th>10.0</th>
	  <td>0.178247</td>
	  <td>0.196184</td>
	  <td>0.207769</td>
	  <td>0.199167</td>
	  <td>0.176347</td>
	</tr>
  </tbody>
</table>
</div>

```python
print("SABR Beta Parameters:")
df_sabr_beta
```

    SABR Beta Parameters:

<div>
<style scoped>
	.dataframe tbody tr th:only-of-type {
		vertical-align: middle;
	}

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
	<tr style="text-align: right;">
	  <th>tenor</th>
	  <th>1.0</th>
	  <th>2.0</th>
	  <th>3.0</th>
	  <th>5.0</th>
	  <th>10.0</th>
	</tr>
	<tr>
	  <th>expiry</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>1.0</th>
	  <td>0.9</td>
	  <td>0.9</td>
	  <td>0.9</td>
	  <td>0.9</td>
	  <td>0.9</td>
	</tr>
	<tr>
	  <th>5.0</th>
	  <td>0.9</td>
	  <td>0.9</td>
	  <td>0.9</td>
	  <td>0.9</td>
	  <td>0.9</td>
	</tr>
	<tr>
	  <th>10.0</th>
	  <td>0.9</td>
	  <td>0.9</td>
	  <td>0.9</td>
	  <td>0.9</td>
	  <td>0.9</td>
	</tr>
  </tbody>
</table>
</div>

```python
print("SABR Rho Parameters:")
df_sabr_rho
```

    SABR Rho Parameters:

<div>
<style scoped>
	.dataframe tbody tr th:only-of-type {
		vertical-align: middle;
	}

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
	<tr style="text-align: right;">
	  <th>tenor</th>
	  <th>1.0</th>
	  <th>2.0</th>
	  <th>3.0</th>
	  <th>5.0</th>
	  <th>10.0</th>
	</tr>
	<tr>
	  <th>expiry</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>1.0</th>
	  <td>-0.633223</td>
	  <td>-0.525114</td>
	  <td>-0.482848</td>
	  <td>-0.414420</td>
	  <td>-0.265908</td>
	</tr>
	<tr>
	  <th>5.0</th>
	  <td>-0.585668</td>
	  <td>-0.547028</td>
	  <td>-0.549583</td>
	  <td>-0.511010</td>
	  <td>-0.438524</td>
	</tr>
	<tr>
	  <th>10.0</th>
	  <td>-0.548309</td>
	  <td>-0.547143</td>
	  <td>-0.552303</td>
	  <td>-0.556152</td>
	  <td>-0.486600</td>
	</tr>
  </tbody>
</table>
</div>

```python
print("SABR Nu Parameters:")
df_sabr_nu
```

    SABR Nu Parameters:

<div>
<style scoped>
	.dataframe tbody tr th:only-of-type {
		vertical-align: middle;
	}

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
	<tr style="text-align: right;">
	  <th>tenor</th>
	  <th>1.0</th>
	  <th>2.0</th>
	  <th>3.0</th>
	  <th>5.0</th>
	  <th>10.0</th>
	</tr>
	<tr>
	  <th>expiry</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>1.0</th>
	  <td>2.049416</td>
	  <td>1.677383</td>
	  <td>1.438120</td>
	  <td>1.064975</td>
	  <td>0.777278</td>
	</tr>
	<tr>
	  <th>5.0</th>
	  <td>1.340427</td>
	  <td>1.062004</td>
	  <td>0.936601</td>
	  <td>0.672014</td>
	  <td>0.497465</td>
	</tr>
	<tr>
	  <th>10.0</th>
	  <td>1.010141</td>
	  <td>0.928204</td>
	  <td>0.870391</td>
	  <td>0.719435</td>
	  <td>0.582470</td>
	</tr>
  </tbody>
</table>
</div>

### Combined Plots

```python
fig, axs = plt.subplots(3, 5, figsize=(20, 10), tight_layout=True)

for index, ax in enumerate(axs.flatten()):
    row = df_swap_rates.loc[index]
    expiry, tenor, swap_rate = (
        row["Expiry"],
        row["Tenor"],
        row["Swap Rate"],
    )
    strikes = swap_rate + vol_rates_change

    dic_key = "{}Yx{}Y".format(expiry, tenor)
    calibrated_sabr_vols = swaption_calibrated_sabr_vols[dic_key]
    calibrated_dd_vols = swaption_calibrated_ddm_vols[dic_key]
    actual_vols = df_swaption.loc[(expiry, tenor)].values / 100

    title = "{}yx{}y Swaption".format(int(expiry), int(tenor))
    ax.set_title(title)
    ax.plot(strikes, actual_vols, "gs", label="Market")
    ax.plot(strikes, calibrated_sabr_vols, "k", label="SABR")
    ax.plot(strikes, calibrated_dd_vols, "--", label="DD")

    ax.set_xlim(min(strikes) - 0.01, max(strikes) + 0.01)
    ax.grid()
    ax.set_xlabel("Strike")
    ax.set_ylabel("Implied Volatility")
    ax.legend()
fig.savefig("./output/part_2_swaption_calibration.png")
```

![png](output_32_0.png)

## Swaptions Pricing

```python
strikes = [0.01, 0.02, 0.03, 0.04, 0.05, 0.06, 0.07, 0.08]
swaptions_to_price = [
    {"expiry": 2, "tenor": 10, "type": "payer"},
    {"expiry": 8, "tenor": 10, "type": "receiver"},
]
```

```python
# DDM
ddm_beta_interp = RegularGridInterpolator(
    (df_ddm_beta.index, df_ddm_beta.columns), df_ddm_beta.values, method="linear"
)
ddm_sigma_interp = RegularGridInterpolator(
    (df_ddm_sigma.index, df_ddm_sigma.columns), df_ddm_sigma.values, method="linear"
)

# SABR
sabr_alpha_interp = RegularGridInterpolator(
    (df_sabr_alpha.index, df_sabr_alpha.columns), df_sabr_alpha.values, method="linear"
)
sabr_beta_interp = RegularGridInterpolator(
    (df_sabr_beta.index, df_sabr_beta.columns), df_sabr_beta.values, method="linear"
)
sabr_rho_interp = RegularGridInterpolator(
    (df_sabr_rho.index, df_sabr_rho.columns), df_sabr_rho.values, method="linear"
)
sabr_nu_interp = RegularGridInterpolator(
    (df_sabr_nu.index, df_sabr_nu.columns), df_sabr_nu.values, method="linear"
)
```

```python
pricing_results = []
for swaption in swaptions_to_price:
    expiry, tenor, swaption_type = (
        swaption["expiry"],
        swaption["tenor"],
        swaption["type"],
    )
    pvbp = compute_pvbp_with_df_ois(
        expiry, tenor, fixed_leg_period, df_discount_factors
    )
    F = compute_forward_swap_rate(
        expiry, tenor, df_discount_factors, floating_leg_period, fixed_leg_period
    )

    point_to_interp = (expiry, tenor)
    ddm_params = {
        "sigma": ddm_sigma_interp(point_to_interp),
        "beta": ddm_beta_interp(point_to_interp),
    }
    sabr_params = {
        "alpha": sabr_alpha_interp(point_to_interp),
        "beta": sabr_beta_interp(point_to_interp),
        "rho": sabr_rho_interp(point_to_interp),
        "nu": sabr_nu_interp(point_to_interp),
    }

    for strike in strikes:
        dd_price = calculate_displaced_diffusion_price(
            F,
            strike,
            pvbp,
            ddm_params["sigma"],
            expiry,
            ddm_params["beta"],
            swaption_type,
        )

        sabr_sigma = SABR_model(
            F,
            strike,
            expiry,
            sabr_params["alpha"],
            sabr_params["beta"],
            sabr_params["rho"],
            sabr_params["nu"],
        )
        black_sabr_model = vanilla_option.black_model(
            F, strike, pvbp, sabr_sigma, expiry
        )
        sabr_price = (
            black_sabr_model.calculate_call_price()
            if swaption_type == "payer"
            else black_sabr_model.calculate_put_price()
        )

        pricing_results.append(
            {
                "Swaption Type": swaption_type,
                "Expiry": expiry,
                "Tenor": tenor,
                "Strike": strike,
                "DD Price": dd_price,
                "SABR Price": sabr_price,
            }
        )
```

```python
df_swaption_pricing_results = pd.DataFrame(pricing_results)
df_swaption_pricing_results
```

<div>
<style scoped>
	.dataframe tbody tr th:only-of-type {
		vertical-align: middle;
	}

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
	<tr style="text-align: right;">
	  <th></th>
	  <th>Swaption Type</th>
	  <th>Expiry</th>
	  <th>Tenor</th>
	  <th>Strike</th>
	  <th>DD Price</th>
	  <th>SABR Price</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>payer</td>
	  <td>2</td>
	  <td>10</td>
	  <td>0.01</td>
	  <td>0.288143</td>
	  <td>0.289608</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>payer</td>
	  <td>2</td>
	  <td>10</td>
	  <td>0.02</td>
	  <td>0.194938</td>
	  <td>0.198315</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>payer</td>
	  <td>2</td>
	  <td>10</td>
	  <td>0.03</td>
	  <td>0.112328</td>
	  <td>0.115198</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>payer</td>
	  <td>2</td>
	  <td>10</td>
	  <td>0.04</td>
	  <td>0.051345</td>
	  <td>0.052158</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>payer</td>
	  <td>2</td>
	  <td>10</td>
	  <td>0.05</td>
	  <td>0.017364</td>
	  <td>0.021354</td>
	</tr>
	<tr>
	  <th>5</th>
	  <td>payer</td>
	  <td>2</td>
	  <td>10</td>
	  <td>0.06</td>
	  <td>0.004104</td>
	  <td>0.010715</td>
	</tr>
	<tr>
	  <th>6</th>
	  <td>payer</td>
	  <td>2</td>
	  <td>10</td>
	  <td>0.07</td>
	  <td>0.000651</td>
	  <td>0.006598</td>
	</tr>
	<tr>
	  <th>7</th>
	  <td>payer</td>
	  <td>2</td>
	  <td>10</td>
	  <td>0.08</td>
	  <td>0.000067</td>
	  <td>0.004621</td>
	</tr>
	<tr>
	  <th>8</th>
	  <td>receiver</td>
	  <td>8</td>
	  <td>10</td>
	  <td>0.01</td>
	  <td>0.019023</td>
	  <td>0.019324</td>
	</tr>
	<tr>
	  <th>9</th>
	  <td>receiver</td>
	  <td>8</td>
	  <td>10</td>
	  <td>0.02</td>
	  <td>0.033942</td>
	  <td>0.038353</td>
	</tr>
	<tr>
	  <th>10</th>
	  <td>receiver</td>
	  <td>8</td>
	  <td>10</td>
	  <td>0.03</td>
	  <td>0.056679</td>
	  <td>0.060800</td>
	</tr>
	<tr>
	  <th>11</th>
	  <td>receiver</td>
	  <td>8</td>
	  <td>10</td>
	  <td>0.04</td>
	  <td>0.088996</td>
	  <td>0.089672</td>
	</tr>
	<tr>
	  <th>12</th>
	  <td>receiver</td>
	  <td>8</td>
	  <td>10</td>
	  <td>0.05</td>
	  <td>0.132048</td>
	  <td>0.129700</td>
	</tr>
	<tr>
	  <th>13</th>
	  <td>receiver</td>
	  <td>8</td>
	  <td>10</td>
	  <td>0.06</td>
	  <td>0.186116</td>
	  <td>0.185866</td>
	</tr>
	<tr>
	  <th>14</th>
	  <td>receiver</td>
	  <td>8</td>
	  <td>10</td>
	  <td>0.07</td>
	  <td>0.250549</td>
	  <td>0.257629</td>
	</tr>
	<tr>
	  <th>15</th>
	  <td>receiver</td>
	  <td>8</td>
	  <td>10</td>
	  <td>0.08</td>
	  <td>0.323933</td>
	  <td>0.339225</td>
	</tr>
  </tbody>
</table>
</div>

## Data Output

```python
df_sabr_parameters.reset_index().to_csv("./output/part_2_sabr_params.csv")
df_swap_rates.to_csv("./output/part_2_swap_rates.csv")
```

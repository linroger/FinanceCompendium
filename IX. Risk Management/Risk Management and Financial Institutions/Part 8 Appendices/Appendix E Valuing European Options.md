---
title: "Appendix E: Valuing European Options"
parent_directory: "Part 8 Appendices"
formatted: "2025-12-21 10:15:00 AM"
formatter_model: "kimi-k2-turbo"
cli-tool: "claude-code"
primary_tags:
  - black-scholes model
  - european option pricing
  - option greeks
secondary_tags:
  - risk neutral valuation
  - normal distribution
  - implied volatility
  - delta hedging
  - option sensitivity
  - volatility smile
cssclasses: academia
---

# Appendix E: Valuing European Options

The Black-Scholes-Merton formulas for valuing European call and put options on an investment asset that provides no income are

$$
c = S_{0} N(d_{1}) - K e^{-r T} N(d_{2})
$$ and


$$
p = K e^{-r T} N(-d_{2}) - S_{0} N(-d_{1})
$$ where


$$
d_{1} = \frac{\ln(S_{0}/K) + (r + \sigma^{2}/2)T}{\sigma\sqrt{T}}
$$

$$
d_{2} = \frac{\ln(S_{0}/K) + (r - \sigma^{2}/2)T}{\sigma\sqrt{T}} = d_{1} - \sigma\sqrt{T}
$$

The function $N(x)$ is the cumulative probability distribution function for a standardized normal distribution (see tables at the end of the book or Excel's NORMSDIST function). The variables $c$ and $p$ are the European call and European put price, $S_0$ is today's asset price, $K$ is the strike price, $r$ is the continuously compounded risk-free rate, $\sigma$ is the stock price volatility, and $T$ is the time to maturity of the option.

## Table E.1: Greek Letters for Options on an Asset That Provides a Yield at Rate $q$

<table><tr><td>Greek Letter</td><td>Call Option</td><td>Put Option</td></tr><tr><td>Delta</td><td>e-qT N(d1)</td><td>e-qT [N(d1) - 1]</td></tr><tr><td>Gamma</td><td>N&#x27;(d1)e-qT/S0σ√T</td><td>N&#x27;(d1)e-qT/S0σ√T</td></tr><tr><td></td><td>-S0N&#x27;(d1)σe-qT/(2√T)</td><td>-S0N&#x27;(d1)σe-qT/(2√T)</td></tr><tr><td>Theta (per yr)</td><td>+qS0N(d1)e-qT</td><td>-qS0N(-d1)e-qT</td></tr><tr><td></td><td>-rKe-rT N(d2)</td><td>+rKe-rT N(-d2)</td></tr><tr><td>Vega (per \%)</td><td>S0√T N&#x27;(d1)e-qT/100</td><td>S0√T N&#x27;(d1)e-qT/100</td></tr><tr><td>Rho (per \%)</td><td>KTe-rT N(d2)/100</td><td>-KTe-rT N(-d2)/100</td></tr></table>

When the underlying asset provides a cash income, the present value of the income during the life of the option should be subtracted from $S_0$. When the underlying asset provides a yield at rate $q$, the formulas become:

$$
c = S_{0} e^{-q T} N(d_{1}) - K e^{-r T} N(d_{2})
$$ and


$$
p = K e^{-r T} N(-d_{2}) - S_{0} e^{-q T} N(-d_{1})
$$ where


$$
d_{1} = \frac{\ln(S_{0}/K) + (r - q + \sigma^{2}/2)T}{\sigma\sqrt{T}}
$$

$$
d_{2} = \frac{\ln(S_{0}/K) + (r - q - \sigma^{2}/2)T}{\sigma\sqrt{T}} = d_{1} - \sigma\sqrt{T}
$$

Options on a foreign currency can be valued by setting  $q$  equal to the foreign risk-free rate. Options on a futures or forward price can be valued using these formulas by setting  $S_0$  equal to the current forward or futures price,  $q = r$ , and  $\sigma$  equal to the volatility of the forward or futures price.

Table E.1 gives formulas for the Greek letters for European options on an asset that provides income at rate  $q$ . (See Chapter 15 for definitions of and discussion about Greek letters.)  $N'(x)$  is the standard normal density function:

$$
N'(x) = \frac{1}{\sqrt{2\pi}} e^{-x^{2}/2}
$$

The implied volatility is the volatility,  $\sigma$ , which when substituted into a Black-Scholes-Merton pricing formula gives the market price. (See Section 8.2.) When Greek letters are calculated, the usual practice is to set  $\sigma$  equal to the implied volatility.

**Example E.1**

Consider a six-month European call option on a stock index. The current value of the index is 1,200, the strike price is 1,250, the risk-free rate is  $5\%$ , the dividend yield on the index is  $2\%$ , and the index volatility is  $20\%$ . In this case,  $S_0 = 1,200$ ,  $K = 1,250$ ,  $r = 0.05$ ,  $q = 0.02$ ,  $\sigma = 0.2$ , and  $T = 0.5$ . The value of the option is 53.44, the delta of the option is 0.45, the gamma is 0.0023, the theta is -0.22, the vega is 3.33, and rho is 2.44. Note that the formula in Table E.1 gives theta per year. The theta quoted here is per calendar day.

## European Option Payoff Diagrams

```d2
direction: right

payoff_diagrams: European Option Payoffs {
  shape: rectangle
  style.fill: "#f0f8ff"
  style.stroke: "#1e90ff"

  call_payoff: Call Option Payoff {
    shape: rectangle
    style.fill: "#e8f5e9"
    style.stroke: "#4caf50"

    payoff_equation: max(S - K, 0) {
      style.font-size: 14
    }
  }

  put_payoff: Put Option Payoff {
    shape: rectangle
    style.fill: "#ffebee"
    style.stroke: "#f44336"

    payoff_equation: max(K - S, 0) {
      style.font-size: 14
    }
  }

  call_payoff -> put_payoff: Symmetric relationship
}
```

## Black-Scholes Model Components

```d2
direction: down

bs_model: Black-Scholes Framework {
  shape: rectangle
  style.fill: "#fff8e1"
  style.stroke: "#ff9800"

  inputs: Model Inputs {
    shape: rectangle
    style.fill: "#f3e5f5"

    stock_price: S₀ (Current stock price)
    strike_price: K (Strike price)
    risk_free_rate: r (Risk-free rate)
    volatility: σ (Volatility)
    time_to_maturity: T (Time to expiration)
  }

  calculations: Key Calculations {
    shape: rectangle
    style.fill: "#e8f5e9"

    d1_calc: d₁ calculation
    d2_calc: d₂ calculation
    nd1: N(d₁)
    nd2: N(d₂)
  }

  outputs: Option Values {
    shape: rectangle
    style.fill: "#e3f2fd"

    call_price: Call Price (c)
    put_price: Put Price (p)
  }

  inputs -> calculations -> outputs
}
```

## Option Greeks Relationships

```d2
direction: right

greeks: Option Greeks Sensitivity {
  shape: circle
  style.fill: "#fff3e0"
  style.stroke: "#ff6f00"

  delta: Delta (Δ) {
    shape: rectangle
    style.fill: "#e8f5e9"
    style.stroke: "#4caf50"

    description: Rate of change of option price with respect to underlying asset price
  }

  gamma: Gamma (Γ) {
    shape: rectangle
    style.fill: "#fff9c4"
    style.stroke: "#fdd835"

    description: Rate of change of delta with respect to underlying asset price
  }

  theta: Theta (Θ) {
    shape: rectangle
    style.fill: "#ffebee"
    style.stroke: "#f44336"

    description: Rate of change of option price with respect to time
  }

  vega: Vega (V) {
    shape: rectangle
    style.fill: "#f3e5f5"
    style.stroke: "#9c27b0"

    description: Rate of change of option price with respect to volatility
  }

  rho: Rho (ρ) {
    shape: rectangle
    style.fill: "#e3f2fd"
    style.stroke: "#2196f3"

    description: Rate of change of option price with respect to interest rate
  }

  delta -> gamma: Second derivative
  gamma -> theta: Time decay
  gamma -> vega: Volatility sensitivity
  gamma -> rho: Interest rate sensitivity
}
```

The calculations in this appendix can be done with the RMFI software, available on the author's website, by selecting Option Type: Black-Scholes European. Option valuation is described more fully in Hull (2022).

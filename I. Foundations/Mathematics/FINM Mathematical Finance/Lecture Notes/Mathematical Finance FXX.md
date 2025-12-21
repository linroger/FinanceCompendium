---
title: "Foreign Exchange & Stochastic Calculus"
parent_directory: I. Foundations/Mathematics/FINM Mathematical Finance/Lecture Notes
formatted: 2025-12-21 11:30:00 AM
formatter_model: kimi-k2-turbo
cli-tool: claude-code
primary_tags:
- foreign exchange models
- stochastic calculus
- ito formula
- numeraire change
- exponential martingales
secondary_tags:
- exchange rate fluctuations
- currency options pricing
- risk neutral measures
- cameron martin girsanov
- likelihood ratio identity
- linear stochastic equations
cssclasses: academia
---

# Foreign Exchange & Stochastic Calculus

## Steve Lalley

http://www.stat.uchicago.edu/1alley/Courses/390/

## Tonight's Topics

- Foreign Exchange & Exchange Rate Fluctuations
- Linear Stochastic Differential Equations
- Cameron-Martin-Girsanov Formula

## Foreign Exchange

### Stochastic Models for Exchange Rates
### Interest Rates and Exchange Rates
### Options on Currency Exchange

# Basic Principles

- Share price processes of tradeable assets are martingales under any risk-neutral probability measure.  
- Risk-neutrality of a probability measure depends on the numeraire.  
Currencies are not tradeable assets!  
Money market shares are!

Let $Y_t$ denote the exchange rate at time $t$ between US Dollars $\$$ and UK Pounds Sterling $\mathcal{L}$, i.e., the number of pounds that one dollar will buy. A simple model:

$$
dY_t = \mu Y_t dt + \sigma Y_t dW_t
$$

where $W_t$ is a standard Wiener process under the risk neutral measure for $\mathcal{L}$ investors, and $\mu$ and $\sigma$ are constants.

In a more realistic model, the drift and/or diffusion coefficients might be time-varying but deterministic:

$$
dY_{t} = \mu_{t} Y_{t} dt + \sigma_{t} Y_{t} dW_{t}
$$

An Itô process is a stochastic process that satisfies a stochastic differential equation of the form

$$
dZ_t = A_t dt + B_t dW_t
$$

Here $W_t$ is a standard Wiener process (Brownian motion), and $A_t, B_t$ are adapted processes, that is, processes such that for any time $t$, the current values $A_t, B_t$ are independent of the future increments of the Wiener process.

```d2
direction: right

Wiener Process: Wiener Process {
  shape: oval
  style.fill: "#e3f2fd"
}

Drift Term: Drift Term A_t {
  shape: rectangle
  style.fill: "#f3e5f5"
}

Diffusion Term: Diffusion Term B_t {
  shape: rectangle
  style.fill: "#e8f5e9"
}

Ito Process: Itô Process Z_t {
  shape: circle
  style.fill: "#fff3e0"
  style.stroke: "#ff9800"
  style.stroke-width: 3
}

Wiener Process -> Diffusion Term: Multiplies
Drift Term -> Ito Process: dt term
Diffusion Term -> Ito Process: dW_t term

Ito Process -> Ito Process: Stochastic differential\ndZ_t = A_t dt + B_t dW_t
```

The local quadratic variation of the Itô process  $Z_{t}$  is defined by

$$
d [ Z, Z ]_{t} = B_{t}^{2} dt
$$

# Itô's Formula

If $Z_t$ is an Itô process, and if $f(x)$ is a smooth function, then $f(Z_t)$ is also an Itô process whose Itô SDE is

$$
df(Z_t) = f'(Z_t) dZ_t + \frac{1}{2} f''(Z_t) d[Z, Z]_t
$$

Itô's formula has a number of important generalizations. Here is one which is sometimes useful in solving SDEs with time-dependent coefficients: If  $u(x, t)$  is a smooth function of two variables, then

$$
d u (Z_{t}, t) = u_{t} dt + u_{x} dZ_{t} + \frac{1}{2} u_{xx} d [ Z, Z ]_{t}
$$

# Solving the SDE

The idea is to guess a solution by applying the Itô formula to the right process. Assume that under the probability measure $P$ the exchange rate $Y_t$ satisfies

$$
dY_t = \mu Y_t dt + \sigma Y_t dW_t
$$

Try Itô with $f(x) = \log x$:

$$
d\log(Y_t) = \mu dt + \sigma dW_t - (\sigma^2 / 2) dt
$$

Since  $\mu$  and  $\sigma$  are constants, this is easily integratedto give the general solution to the SDE:

$$
Y_{t} = Y_{0} \exp \left\{\left(\mu - \sigma^{2} / 2\right) t + \sigma W_{t} \right\}
$$

## Time-Dependent SDEs

A similar strategy works for equations with time-dependent coefficients, for example:

$$
dY_t = \mu_t Y_t dt + \sigma Y_t dW_t
$$

Itô:

$$
d\log(Y_t) = \mu_t dt + \sigma dW_t - (\sigma^2 / 2) dt
$$

and so

$$
\left| Y_{t} = Y_{0} \exp \{(\bar {\mu}_{t} - \sigma^{2} / 2) t + \sigma W_{t} \right\}
$$

where

$$
\bar {\mu}_{t} = \frac{1}{t} \int_{0}^{t} \mu_{s} d s
$$

Assume that for each of the two currencies US Dollar and UK Pound Sterling there is a riskless Money Market. Let $A_t$ and $B_t$ be the "share prices" of US Money Market and UK Money Market, respectively, and for simplicity assume that the time-zero share prices are both 1.

Assume that the riskless rates of return $r_A, r_B$ in the two currencies are constant, but not necessarily equal. Then

$$
A_t = \exp\{r_A t\} \quad \text{dollars}
$$

$$
B_t = \exp\{r_B t\} \quad \text{pounds}
$$

## Exchange and Interest Rates

The asset US Money Market is riskless to a Dollar investor, but not to a Pound Sterling investor. Evaluated in Pounds Sterling, the share price of the US Money Market asset is

$$
A_t Y_t = Y_0 \exp\{r_A t + \mu t - \sigma^2 t / 2 + \sigma W_t\}
$$

where $W_t$ is a standard Wiener Process under the risk neutral probability measure $Q_B$ for Pound investors.

```d2
US Money Market: US Money Market {
  shape: rectangle
  style.fill: "#e3f2fd"
}

UK Money Market: UK Money Market {
  shape: rectangle
  style.fill: "#f3e5f5"
}

Exchange Rate: Exchange Rate Y_t {
  shape: oval
  style.fill: "#e8f5e9"
}

US Investor: US Investor {
  shape: person
  style.fill: "#fff3e0"
}

UK Investor: UK Investor {
  shape: person
  style.fill: "#ffebee"
}

US Money Market -> US Investor: Riskless asset
UK Money Market -> UK Investor: Riskless asset

Exchange Rate -> US Money Market: Multiplies price
Exchange Rate -> UK Money Market: Affects valuation

US Investor -> Exchange Rate: Trades via
UK Investor -> Exchange Rate: Trades via

US Money Market -- UK Money Market: Cross-market arbitrage {
  style.stroke-dash: 5
}
```

Theorem:  $\mu = r_{B} - r_{A}$ .

Since US Money Market is a tradeable asset, its share price $Y_0$ at time $t = 0$ must be the expected value of its discounted share price $A_t Y_t$ (in $\mathcal{L}$) at time $t$, where the discount rate is $r_B$, and the expectation is taken under $Q_B$.

Thus

$$
Y_0 = E_{Q_B} e^{-r_B t} A_t Y_t
$$

$$
\begin{aligned}
Y_0 &= E_{Q_B} e^{-r_B t} A_t Y_t \\
&= E_{Q_B} e^{-r_B t} Y_0 \exp\{r_A t + \mu t - \sigma^2 t/2 + \sigma W_t\} \\
&= Y_0 \exp\{(r_A - r_B + \mu - \sigma^2/2)t\} E_{Q_B} \exp\{\sigma W_t\} \\
&= Y_0 \exp\{(r_A - r_B + \mu)t\}
\end{aligned}
$$

## Currency Options

Consider a call option that gives the owner the right to buy $1 for $\mathcal{L}$ $K$ at time $T$. What is the arbitrage price at time 0?

**Solution:** The option is identical to a call on $e^{-r_A T}$ shares of the US Money Market. To a $\mathcal{L}$ investor, the US Money Market is a risky asset with price process $e^{-r_A t} Y_t$. Thus, the call option may be priced using the Black-Scholes Formula.

Exercise: Do it! While you're at it, show how to hedge the option.

**Theorem:** Let $Q_A$ be the risk-neutral probability measure for the US Dollar investor, and $Q_B$ the risk-neutral measure for the UK Pound Sterling investor. Unless $\sigma = 0$ (that is, unless the exchange rate is purely deterministic), it must be the case that

$$
Q_A \neq Q_B
$$

This is a special case of a more general phenomenon:

## Numeraire Change

Suppose that a market has tradeable assets $A, B$ with share price processes $S_t^A$ and $S_t^B$ (evaluated in a common numeraire $C$). Let $Q^A$ and $Q^B$ be risk-neutral measures for numeraires $A, B$, respectively.

```d2
Numeraire A: Numeraire A {
  shape: hexagon
  style.fill: "#e3f2fd"
}

Numeraire B: Numeraire B {
  shape: hexagon
  style.fill: "#f3e5f5"
}

Common Numeraire: Common Numeraire C {
  shape: circle
  style.fill: "#e8f5e9"
  style.stroke: "#4caf50"
  style.stroke-width: 3
}

Risk Neutral QA: Risk-Neutral Measure Q^A {
  shape: rectangle
  style.fill: "#fff3e0"
}

Risk Neutral QB: Risk-Neutral Measure Q^B {
  shape: rectangle
  style.fill: "#ffebee"
}

Asset SA: Asset S^A {
  shape: oval
}

Asset SB: Asset S^B {
  shape: oval
}

Numeraire A -> Risk Neutral QA: Defines
Numeraire B -> Risk Neutral QB: Defines

Common Numeraire -> Asset SA: Evaluates
Common Numeraire -> Asset SB: Evaluates

Risk Neutral QA -> Asset SA: Prices under
Risk Neutral QB -> Asset SB: Prices under

Risk Neutral QA -- Risk Neutral QB: Related by Radon-Nikodym {
  style.stroke-dash: 3
  style.stroke: "#ff9800"
}
```

**Theorem:** $Q^A = Q^B$ if and only if $S_t^A / S_t^B$ is a constant random variable. Furthermore, in general, for any finite time $T$,

$$
\left(\frac{d Q^B}{d Q^A}\right)_{\mathcal{F}_T} = \left(\frac{S_T^B}{S_T^A}\right) \left(\frac{S_0^A}{S_0^B}\right)
$$

In the foreign exchange context, the riskless assets for the two numeraires are US Money Market and UK Money Market, with share prices (in $)

$$
A_{t} = \exp \{r_{A} t \}
$$

$$
B_{t} = \exp \{r_{B} t \} / Y_{t}
$$

In the foreign exchange context, the riskless assets for the two numeraires are US Money Market and UK Money Market, with share prices (in $)

$$
\begin{array}{l} A_{t} = \exp \{r_{A} t \} \\ B_{t} = \exp \{r_{B} t \} / Y_{t} \\ \end{array}
$$

Therefore, the likelihood ratio between the risk-neutral measures for  $\mathcal{L}$  and  $\$ 6$ investors is

$$
\left(\frac{d Q^{B}}{d Q^{A}}\right)_{\mathcal {F}_{T}} = \left(\frac{Y_{T}}{Y_{0}}\right)^{-1} \exp \{(r_{B} - r_{A}) T \}
$$

In the foreign exchange context, the riskless assets for the two numeraires are US Money Market and UK Money Market, with share prices (in $)

$$
\begin{array}{l} A_{t} = \exp \{r_{A} t \} \\ B_{t} = \exp \{r_{B} t \} / Y_{t} \\ \end{array}
$$

Therefore, the likelihood ratio between the risk-neutral measures for  $\mathcal{L}$  and  $\$ 6$ investors is

$$
\left(\frac{d Q^{B}}{d Q^{A}}\right)_{\mathcal {F}_{T}} = \left(\frac{Y_{T}}{Y_{0}}\right)^{-1} \exp \{(r_{B} - r_{A}) T \}
$$

## Likelihood Ratio Identity

Let $V_t^i$ be the time-$t$ share price of any contingent claim in numeraire $i = A, B, C$. These share prices satisfy:

$$
V_t^A = V_t^C / S_t^A
$$

$$
V_t^B = V_t^C / S_t^B
$$

The time-zero share price is the discounted expected value of the time-$t$ share price for each of the numeraires $A, B$. The discount factors are 1, so

$$
V_0^A = V_0^C / S_0^A = E^A V_t^C / S_t^A
$$

$$
V_0^B = V_0^C / S_0^B = E^B V_t^C / S_t^B
$$

It follows that for every contingent claim $V$ with share price $V_t^C$ (in numeraire $C$),

$$
S_0^A E^A (V_t^C / S_t^A) = S_0^B E^B (V_t^C / S_t^B)
$$
V_{t}^{A} = V_{t}^{C} / S_{t}^{A}
$$

$$
V_{t}^{B} = V_{t}^{C} / S_{t}^{B}
$$

# Likelihood Ratio Identity

Let  $V_{t}^{i}$  be the time-  $t$  share price of any contingent claim in numeraire  $i = A, B, C$ . These share prices satisfy:

$$
V_{t}^{A} = V_{t}^{C} / S_{t}^{A}
$$

$$
V_{t}^{B} = V_{t}^{C} / S_{t}^{B}
$$

The time-zero share price is the discounted expected value of the time-  $t$  share price for each of the numeraires  $A, B$ . The discount factors are 1, so

# Likelihood Ratio Identity

Let  $V_{t}^{i}$  be the time-  $t$  share price of any contingent claim in numeraire  $i = A, B, C$ . These share prices satisfy:

$$
V_{t}^{A} = V_{t}^{C} / S_{t}^{A}
$$

$$
V_{t}^{B} = V_{t}^{C} / S_{t}^{B}
$$

The time-zero share price is the discounted expected value of the time-  $t$  share price for each of the numeraires  $A, B$ . The discount factors are 1, so

$$
V_{0}^{A} = V_{0}^{C} / S_{0}^{A} = E^{A} V_{t}^{C} / S_{t}^{A}
$$

$$
V_{0}^{B} = V_{0}^{C} / S_{0}^{B} = E^{B} V_{t}^{C} / S_{t}^{B}
$$

# Likelihood Ratio Identity

It follows that for every contingent claim  $V$  with share price  $V_{t}^{C}$  (in numeraire  $C$ ),

$$
S_{0}^{A} E^{A} (V_{t}^{C} / S_{t}^{A}) = S_{0}^{B} E^{B} (V_{t}^{C} / S_{t}^{B})
$$

# Likelihood Ratio Identity

It follows that for every contingent claim  $V$  with share price  $V_{t}^{C}$  (in numeraire  $C$ ),

$$
S_{0}^{A} E^{A} (V_{t}^{C} / S_{t}^{A}) = S_{0}^{B} E^{B} (V_{t}^{C} / S_{t}^{B})
$$

Apply this to the contingent claim with payoff  $V_{T}^{C} S_{T}^{B}$  at time  $T$  to obtain the following identity, valid for all nonnegative random variables  $V_{T}^{C}$  measurable  $\mathcal{F}_{T}$ :

$$
E^{B} V_{T}^{C} = E^{A} V_{T}^{C} \left(\frac{S_{T}^{B} S_{0}^{A}}{S_{T}^{A} S_{0}^{B}}\right)
$$

# Likelihood Ratio Identity

It follows that for every contingent claim  $V$  with share price  $V_{t}^{C}$  (in numeraire  $C$ ),

$$
S_{0}^{A} E^{A} (V_{t}^{C} / S_{t}^{A}) = S_{0}^{B} E^{B} (V_{t}^{C} / S_{t}^{B})
$$

Apply this to the contingent claim with payoff  $V_{T}^{C} S_{T}^{B}$  at time  $T$  to obtain the following identity, valid for all nonnegative random variables  $V_{T}^{C}$  measurable  $\mathcal{F}_{T}$ :

$$
E^{B} V_{T}^{C} = E^{A} V_{T}^{C} \left(\frac{S_{T}^{B} S_{0}^{A}}{S_{T}^{A} S_{0}^{B}}\right)
$$

This is the defining property of a likelihood ratio.

## Exponential Martingales

Let $W_t$ be a standard Wiener process, with Brownian filtration $\mathcal{F}_t$, and let $\theta_t$ be a bounded, adapted process. Define

$$
Z_t = \exp\left\{\int_0^t \theta_s dW_s - \int_0^t \theta_s^2 ds / 2\right\}
$$

**Fact:** $Z_t$ is a positive martingale. Proof: Itô!

# Exponential Martingales

Let  $W_{t}$  be a standard Wiener process, with Brownian filtration  $\mathcal{F}_t$ , and let  $\theta_t$  be a bounded, adapted process. Define

$$
Z_{t} = \exp \left\{\int_{0}^{t} \theta_{s} d W_{s} - \int_{0}^{t} \theta_{s}^{2} d s / 2 \right\}
$$

Fact:  $Z_{t}$  is a positive martingale. Proof: Itô!

$$
\begin{array}{l} dZ_{t} = Z_{t} \theta_{t} dW_{t} - Z_{t} \theta_{t}^{2} dt / 2 + Z_{t} \theta_{t}^{2} dt / 2 \\ = Z_{t} \theta_{t} dW_{t} \quad \Longrightarrow \\ \end{array}
$$

$$
Z_{t} = Z_{0} + \int_{0}^{t} Z_{s} \theta_{s} d W_{s}
$$

# Girsanov's Theorem

Because  $Z_{t}$  is a positive martingale under  $P$  with initial value  $Z_{0} = 1$ , for every fixedtime  $T$  the random variable  $Z_{T}$  is a likelihood ratio: that is,

$$
Q (F) := E_{P} (I_{F} Z_{T})
$$

defines a new probability measure on the  $\sigma$ -algebra  $\mathcal{F}_T$  of events  $F$  that are observable by time  $T$ .

# Girsanov's Theorem

Because  $Z_{t}$  is a positive martingale under  $P$  with initial value  $Z_{0} = 1$ , for every fixedtime  $T$  the random variable  $Z_{T}$  is a likelihood ratio: that is,

$$
Q (F) := E_{P} (I_{F} Z_{T})
$$

defines a new probability measure on the  $\sigma$ -algebra  $\mathcal{F}_T$  of events  $F$  that are observable by time  $T$ .

Theorem: Under the measure  $Q$ , the process  $\{W_t - \int_0^t \theta_s ds\}_{0 \leq t \leq T}$  is a standard Wiener process.

Consider again the  $\$ 1$ and  $\mathcal {L}$  currencies. Assume that each has a riskless Money Market, andthat the rates of return  $r_{A}, r_{B}$  are constant. Assume that the exchange rate  $Y_{t}$  obeys

$$
dY_{t} = (r_{B} - r_{A}) Y_{t} dt + \sigma Y_{t} dW_{t}
$$

where  $W_{t}$  is a standard Wiener process under the risk-neutral probability  $Q^{B}$  for  $\mathcal{L}$  investors. Thus,

$$
Y_{t} = Y_{0} \exp \{(r_{B} - r_{A} - \sigma^{2} / 2) t + \sigma W_{t} \}.
$$

# Exchange Rates

Since

$$
\begin{array}{l} \left(\frac{d Q^{A}}{d Q^{B}}\right)_{\mathcal {F}_{T}} = \left(\frac{Y_{T}}{Y_{0}}\right) \exp \{- (r_{B} - r_{A}) T \} \\ = \exp \{\sigma W_{T} - \sigma^{2} T / 2 \} \\ \end{array}
$$

Since

$$
\begin{array}{l} \left(\frac{d Q^{A}}{d Q^{B}}\right)_{\mathcal {F}_{T}} = \left(\frac{Y_{T}}{Y_{0}}\right) \exp \{- (r_{B} - r_{A}) T \} \\ = \exp \{\sigma W_{T} - \sigma^{2} T / 2 \} \\ \end{array}
$$

Girsanov implies that under  $Q^{A}$  the process  $W_{t}$  is a Wiener process with drift  $\sigma$ . Thus, to the  $\$ 1$ investor, it appears that the exchange rate obeys

$$
dY_{t} = (r_{B} - r_{A} - \sigma^{2}) Y_{t} dt + \sigma Y_{t} d \tilde {W}_{t}
$$

where  $\tilde{W}_t$  is a standard Wiener process under  $Q^A$ .

# Proof of Girsanov 1

The statement that  $X$  is a standard Wiener process is an assertion that the increments of  $X$  are independent Gaussian random variables with the correct variances. Let's show that under  $Q$ , the distribution of  $W_{T} - \Theta_{T}$  is gaussian with var  $T$  (where  $\Theta_{T} = \int_{0}^{T} \theta_{s} ds$ ).

# Proof of Girsanov 1

The statement that  $X$  is a standard Wiener process is an assertion that the increments of  $X$  are independent Gaussian random variables with the correct variances. Let's show that under  $Q$ , the distribution of  $W_{T} - \Theta_{T}$  is gaussian with var  $T$  (where  $\Theta_T = \int_0^T\theta_sds$ ). For this, it suffices to show that for any real  $\lambda$ ,

$$
E_{Q} \exp \{\lambda (W_{T} - \Theta_{T}) \} = \exp \{\lambda^{2} T / 2 \}
$$

# Proof of Girsanov 1

The statement that  $X$  is a standard Wiener process is an assertion that the increments of  $X$  are independent Gaussian random variables with the correct variances. Let's show that under  $Q$ , the distribution of  $W_{T} - \Theta_{T}$  is gaussian with var  $T$  (where  $\Theta_{T} = \int_{0}^{T} \theta_{s} ds$ ). For this, it suffices to show that for any real  $\lambda$ ,

$$
E_{Q} \exp \{\lambda (W_{T} - \Theta_{T}) \} = \exp \{\lambda^{2} T / 2 \}
$$

To evaluate the expectation, change measure:

$$
E_{Q} \exp \{\lambda (W_{T} - \Theta_{T}) \} = E_{P} \exp \{\lambda (W_{T} - \Theta_{T}) \} Z_{T}
$$

# Proof of Girsanov 2

Objective: Show that  $E_{P}H_{T} = 1$ , where

$$
H_{t} = \exp \{\lambda (W_{t} - \Theta_{t}) - \lambda^{2} t / 2 \} Z_{t}
$$

# Proof of Girsanov 2

Objective: Show that  $E_{P}H_{T} = 1$ , where

$$
\begin{array}{l} H_{t} = \exp \{\lambda (W_{t} - \Theta_{t}) - \lambda^{2} t / 2 \} Z_{t} \\ = \exp \{\int_{0}^{t} (\theta_{s} + \lambda) d W_{s} + \int_{0}^{t} (\lambda \theta_{s} - \theta_{s}^{2} / 2 - \lambda^{2} / 2) d s \} \\ \end{array}
$$

# Proof of Girsanov 2

Objective: Show that  $E_{P}H_{T} = 1$ , where

$$
\begin{array}{l} H_{t} = \exp \{\lambda (W_{t} - \Theta_{t}) - \lambda^{2} t / 2 \} Z_{t} \\ = \exp \{\int_{0}^{t} (\theta_{s} + \lambda) d W_{s} + \int_{0}^{t} (\lambda \theta_{s} - \theta_{s}^{2} / 2 - \lambda^{2} / 2) d s \} \\ = \exp \{\int_{0}^{t} (\theta_{s} + \lambda) d W_{s} - \int_{0}^{t} (\theta_{s} + \lambda)^{2} d s / 2 \} \\ \end{array}
$$

# Proof of Girsanov 2

Objective: Show that  $E_{P}H_{T} = 1$ , where

$$
\begin{array}{l} H_{t} = \exp \{\lambda (W_{t} - \Theta_{t}) - \lambda^{2} t / 2 \} Z_{t} \\ = \exp \{\int_{0}^{t} (\theta_{s} + \lambda) d W_{s} + \int_{0}^{t} (\lambda \theta_{s} - \theta_{s}^{2} / 2 - \lambda^{2} / 2) d s \} \\ = \exp \{\int_{0}^{t} (\theta_{s} + \lambda) d W_{s} - \int_{0}^{t} (\theta_{s} + \lambda)^{2} d s / 2 \} \\ \end{array}
$$

Thus,  $H_{t}$  is an exponential martingale under  $P$ , and so its expectation is constant over time.

# Proof of Girsanov 2

Objective: Show that  $E_{P}H_{T} = 1$ , where

$$
\begin{array}{l} H_{t} = \exp \{\lambda (W_{t} - \Theta_{t}) - \lambda^{2} t / 2 \} Z_{t} \\ = \exp \{\int_{0}^{t} (\theta_{s} + \lambda) d W_{s} + \int_{0}^{t} (\lambda \theta_{s} - \theta_{s}^{2} / 2 - \lambda^{2} / 2) d s \} \\ = \exp \{\int_{0}^{t} (\theta_{s} + \lambda) d W_{s} - \int_{0}^{t} (\theta_{s} + \lambda)^{2} d s / 2 \} \\ \end{array}
$$

Thus,  $H_{t}$  is an exponential martingale under  $P$ , and so its expectation is constant over time. A similar calculation establishes the independence of the increments.

# Scratch

# Scratch

# Scratch

# Scratch

# Scratch

# Scratch
---
aliases: [Black's Formulas]
tags:
key_concepts:
parent_directory: FINM Fixed Income Derivatives/Lecture Notes
cssclasses: academia
title: "W.1. Black's Formulas"
---

# Week 1 - Black's Formulas

## FINM 37500: Fixed Income Derivatives

### Mark Hendricks

#### Winter 2024

### Notation

$$\newcommand{\Ern}{E^*}$$

$$\newcommand{\Efwd}{\tilde{E}}$$

$$\newcommand{\hedge}{\beta}$$

$$\newcommand{\dt}{\Delta t}$$

$\newcommand{\dvd}{D}$

$\newcommand{\pvdvd}{D^*}$

$\newcommand{\pvstrike}{K^*}$

$\newcommand{\strike}{K}$

$\newcommand{\nargcond}{d_{1}}$

$\newcommand{\nargexer}{d_{2}}$

$\newcommand{\EcondS}{\hat{S}_{\text{conditional}}}$

$\newcommand{\probexer}{\hat{\mathcal{P}}_{\text{exercise}}}$

# Black Scholes Revisited

## Formula

We introduced the **Black Scholes** formula in B.5.

$\begin{align}

c_t\; =&\; S_t\mathcal{N}(\nargcond) - \pvstrike_t \mathcal{N}\left(\nargexer\right) \\

p_t\; =&\; \pvstrike_t\mathcal{N}\left(-\nargexer\right) - S_t \mathcal{N}(-\nargcond)

\end{align}$

where $\nargcond$ and $\nargexer$ are

$\begin{align}

\nargcond = \frac{\ln\left(\frac{S_t}{\strike}\right) + \left[r + \frac{\sigma^2}{2}\right]T}{\sigma\sqrt{T}} \hspace{1cm} 

\nargexer = \nargcond -\sigma\sqrt{T}

\end{align}$

and 

$$K^* = Z K \; = e^{-rT} K$$

## Context

This formula may seem like a black box. 

Your focus should not be on deriving this formula. However, understanding its assumptions and logic are important for questions of…

1. What are the assumptions of the model?
2. To which securities can it be applied?
3. How does it relate to binomial trees?
4. How does it relate to simulation methods?
5. What does it reveal more generally?

Thus we review the logic and key points of the model.

### Stochastic Calculus

We assume a familiarity with stochastic processes but not a deep familiarity with them.

# The Black Scholes Model

## Brownian Motion

**Brownian Motion** is a key building block of the stochastic processes important in finance.

Denote it as $dW_t$.

It is analogous to the "white noise" (often dentoed $\epsilon$) in discrete-time process. Specifically, $dW_t$ has…

* an expected value (mean) of zero
* a variance proprtional to $dt$
* is independent between time periods

$$dW_t \sim \mathcal{N}(0,dt)$$

Note that our focus will mostly be on the **differential** of this process, $dW_t$, rather than the level, $W_t$. Nonetheless, we can easily describe discrete changes in $W_t$ as

$$W_{T}-W_t \sim \mathcal{N}(0,T-t)$$

$$W_{t_2}-W_{t_1} \text{ is independent of }W_{t_1}-W_{t_0}$$

### Drift and Volatility

Generalize this Brownian motion to include a **drift** and **volatility**.

$$dX_t = \mu dt + \sigma dW_t$$

This is anologus to a discrete-time stochastic process that scales the white noise, $\epsilon$, to a certain volatility level and adds a mean:

$$X_{t+1} - X_t = \mu + \sigma \epsilon_{t+1}$$

which allows the increment to be normally distributed with mean $\mu$ and standard deviation $\sigma$.

## Stochastic Process for a Stock

The stock price, $S_t$, is typically modeled as a **Geometric Brownian Motion (GBM)**.

* One could view this as a Brownian Motion for the logarithm of a variable.
* It describes the percent change of a variable rather than its differences.

$$dS_t = \mu S_t dt + \sigma S_t dW_t$$

often written as

$$\frac{dS_t}{S_t} = \mu dt + \sigma dW_t$$

### Assumptions

This model assumes that a stock has…

* constant mean return of $\mu$.
* constant standard deviation (annualized) of $\sigma$.
* normally distributed returns.

### Implications

The constant mean and volatility would fit with the classic ideas:

* the best guess of a stock return in any given time is $\mu$, 
* static risk-management where the best (and only) useful input is $\sigma$.

The first of these ideas is encapsulated in

* certain definitions of "market efficiency"
* the classic popular book "A Random Walk Down Wall Street"

### Suitability

Do these assumptions make sense?

* We will find that options pricing formulas are agnostic about the mean, so this is not particularly important for our baseline models.
* The volatility assumption is a problem. To a large extent, more complex options pricing models are focused on this issue.

## Portfolio and Cash

### Cash

We model a cash investment as a money-market (or bank) account that pays constant interest rate $r$.

$$dB_t = rB_t dt$$

Notice that it has a drift term but no diffusion term, $dW_t$. It is risklessly growing at a rate of $r$.

### Option

Let $f(S,t)$ denote the price (value) of an arbitrary option which depends on $S_t$. 

## Ito's Lemma

Perhaps the most important theorem of stochastic calculus, (for our purposes,) is **Ito's Lemma**. We will not explore it deeply. The key is below.

* The differential of an arbitrary function $f(S_t)$ is a simple function of the drift and volatility of the underlying, $S_t$.
$$df = \mu_fdt + \sigma_f dW_t$$

where

$$\mu_f = \frac{\partial f(S,t)}{\partial t} + \frac{\partial f(S,t)}{\partial S}\mu + \frac{1}{2}\sigma^2\frac{\partial^2 f(S,t)}{\partial S^2}$$

$$\sigma_f = \frac{\partial f(S,t)}{\partial S}\sigma$$

### Taylor Approximation?

Is Ito's Lemma just the Taylor Approximation in new packaging?

Does a discrete-time process have an analogous result?

Consider a discrete-time process for returns:

$$\frac{S_{t+1}-S_t}{S_t} \equiv r_{t+1} = \mu + \sigma \epsilon_{t+1}$$

What is the stochastic evolution of log returns, $\ln(1+r_{t+1})$?

#### Note on logs

Recall that this log return could also be written as the difference of log prices, or log ratio of prices.

$$\ln(1+r_{t+1}) \equiv \ln S_{t+1} - \ln S_t = \ln \frac{S_{t+1}}{S_t}$$

### Exercise

We know that the value of a forward contract is

$$F_t = S_te^{r(T-t)}$$

Use Ito's Lemma to write the stochastic process for $F$, assuming a Geometric Brownian Motion for $S_t$.

## Replication

Define a portfolio, $\Pi_t$, holding shares of the stock and shares of a risk-free money-market (bank) account, $B_t$.

$$\Pi_t = f(S,t) - \beta_t S_t + \alpha_t B_t$$

What amounts should we choose for $\beta$ and $\alpha$?

### Similar to Replication at Tree Node

In any given instant, the logic is the same as for the binomial tree replication:

1. Choose the stock holding to match the slope of the option.
2. Choose the bank holding to match the level of the portfolio value.

$\begin{align}

\beta_t =& \frac{\partial f}{\partial S}\\[5pt]

\alpha_t =& \frac{f_t - \beta_t S_t}{B_t}

\end{align}$

It can be shown that $\Pi_t$…

* is a self-financing strategy. (It does not require additional capital to hold those weights.)
* replicates the option

so long as the **derivative price** $f$ satisfies the following **partial differential equation**,

$$
rf = \frac{\partial f}{\partial t} + rS\frac{\partial f}{\partial S} + \frac{1}{2}\sigma^2 S^2\frac{\partial^2 f}{\partial S^2}
$$

### Exercise

Does the value of a forward satisfy the fundamental equation?

Recall that the value of a **forward contract** at any time $t$ is

$$f = S - Ke^{-r(T-t)}$$

where $K$ denotes the forward rate that was set at the initialization of the contract.

## The Fundamental Equation

The fundamental pde does not fully determine the solution. 

### Boundary Condition

In order to solve this (any!) pde, we need to have the boundary condition.

For a derivative, this is simply the contracted payoff. We know that at expiration, ($t=T$), the function $f(S_T)$ is given in the contract.

Example: a call option has $f(S_T) = \max(S_T-K,0)$.

This boundary, condition, along with the partial differential equation above, uniquely determines the Black Scholes formula above.

### Other Options

For 

* an underlying following a GBM process, 
* this partial differential equation (pde) 
* along with a boundary condition…
gives the following necessary and sufficient condition for a derivative security price.

$$f \text{ satisfies the pde } \Longleftrightarrow f \text{is a no-arbitrage derivative price.}$$

## Written as Greeks

The fundamental equation can be considered in terms of "the Greeks"

$$rf = \Theta + rS\Delta + \frac{1}{2}\sigma^2 S^2\Gamma $$

What is your interpretation of this?

### Theta-Gamma

This equation gives a direct relationship between theta and gamma.

Suppose that $r=0$

$$\Theta = -\frac{1}{2}\sigma^2S^2\Gamma$$

That is, other than interest-rate effects, theta exactly offsets the dollar benefit of gamma.

Alternatively, consider a delta-hedged portfolio, $\Delta=0$,

$$rf - \Theta =  \frac{1}{2}\sigma^2S^2\Gamma$$

which says that the gamma effect is just enough to compensate for the opportunity cost of the (risk-free) interest rate and theta decay.

#### Application: Gamma Collection

# Risk-Neutral Expectation

Recall that with binomial trees, we could consider the pricing formula to come from

* replication of the option
* risk-neutral pricing of the option.

We have the same here.

## Expected Value

Suppose that we want to solve for the expected value of $df$. This is the expected profit or loss over an instantaneous period of time.

By Ito's Lemma, we know that the drift of $f$ is

$$E[df] = \frac{\partial f}{\partial t} + \mu S\frac{\partial f}{\partial S} + \frac{1}{2}\sigma^2 S^2\frac{\partial^2 f}{\partial S^2}$$

This doesn't seem like much progress, as we don't know the form of $f$. And given risk aversion and its associated premia, we have no a priori sense of the expected return on $f$.

## The Risk Neutral Measure

By Girsanov's Theorem, there exists a probability measure that is

* equivalent to the true probability measure.
* already encodes all risk premium (discount) adjustments.

Under this probability measure, $\mathcal{P}^*$, 

* we can take the expectation of $df$. 
* every asset's mean return (drift of the differential) is $r$.

$$\Ern[df] = \frac{\partial f}{\partial t} + rS\frac{\partial f}{\partial S} + \frac{1}{2}\sigma^2 S^2\frac{\partial^2 f}{\partial S^2}$$

This expected value must equal the amount earned on the risk-free rate multiplied by this capital, $rf$. Equating these, we have the fundamental pde.

$$rf = \frac{\partial f}{\partial t} + rS\frac{\partial f}{\partial S} + \frac{1}{2}\sigma^2 S^2\frac{\partial^2 f}{\partial S^2}$$

## Risk Neutral Pricing

We can use this risk-neutral expectation not just for the increments, but for the level.

* Do this directly.
* or integrate the increments above.

$$f(S,t)e^{r(T-t)} = \Ern[f(S,T)]$$

$$f(S,t) = e^{-r(T-t)}\Ern[f(S,T)]$$

Under the risk-neutral measure, $f$ is still a Brownian motion--just with a different drift. 

* It has a normal distribution
* Its expectation will involve a normal distribution function.

### BS Formula as an expectation

In the introduction to Black-Scholes, we noted it could be rewritten as a 

$\begin{align}

c_t =& \;  e^{-r\tau}\; \probexer\left[\EcondS - \strike\right]

\end{align}$

where

$\begin{align}

\probexer \equiv & \; \mathcal{N}(\nargexer) \hspace{.5in} 

\EcondS \equiv \; S_t e^{r\tau}\frac{\mathcal{N}(\nargcond)}{\mathcal{N}(\nargexer)}

\end{align}$

These are **risk-neutral** expectations.

* Note that $\mu$ never appears! 
* How would it be possible to say the likelihood of $S$ being above $K$ if we don't know its growth rate, $\mu$?
* Because these are the risk-neutral probabilities and expectation.

# The Martingale Equation

Recall the value of the money-market (bank) account is

$$B(t,T) = e^{r(T-t)}$$

Rewrite the valuation formula as

$$\frac{f(S,t)}{B(t)} = \Ern\left[\frac{f(S,T)}{B(T)}\right]$$

This seems like a mess, but it contains an important framework:

* The price of a security is a martingale under the appropriate risk measure.

## Martingale

A process, $X$, is a martingale under probability measure, $\mathcal{P}$ if the expectation of any future value is simply today's value.

$$X_t = E_t[X_{T}]$$

for any $T>t$, where $E_t$ denotes the expectation conditional on info up to $t$, under the $\mathcal{P}$ probability measure.

### Exercise

Which of these are a martingale? Which measure?

* Stock price
* Stock return
* Forward price
* Option price
* Interest rate

# Black's Model (76)

## Beyond Black Scholes

As you have seen, Black-Scholes is the **baseline model**

* not just for pedagogy
* hedging
* pricing

However, we quickly see we need a more general version.

### Underlying is not a traded security

We use **security** broadly. 

* Should include any cashflow associated with the investment.

Explain

* What is a derivative whose underlying is not a security?
* What is the problem with this in the BS model?

## Black's Formula w/ Constant Interest Rates

The model assumes 

* a lognormal distribution of future (forward) prices
* constant interest rates

It can be derived from the martingale equation

$$\frac{f(F,t)}{B(t)} = \Ern\left[\frac{f(F,T)}{B(T)}\right]$$

$\begin{align}

c_t\; =&\; e^{-r(T-t)}\left[F_t\mathcal{N}(\nargcond) - \strike \mathcal{N}\left(\nargexer\right)\right]\\

p_t\; =&\; e^{-r(T-t)}\left[\strike\mathcal{N}(-\nargexer) - F_t \mathcal{N}\left(-\nargcond\right)\right]

\end{align}$

where $\nargcond$ and $\nargexer$ are

$\begin{align}

\nargcond = \frac{\ln\left(\frac{F_t}{\strike}\right) + \frac{\sigma^2}{2}T}{\sigma\sqrt{T}} \hspace{1cm} 

\nargexer = \nargcond -\sigma\sqrt{T}

\end{align}$

### What is the difference?

This seems exactly like Black Scholes but replacing $S_t$ with $e^{-r(T-t)}F_t$!

What is the difference?

## Use of Black's Model

### European Spot Options

We know that at expiration, $F_t=S_t$.

* Thus, a European option on either will have the same price, given that they will (surely!) have the same final payoff.

What is the advantage then to evaluating the option on the future (forward?)

* No need to model dividends!
* They are already priced into the forward / future.
* Thus, the forward/future price still obeys our model above.

### Currency options

What is the problem with an option on currency? 

* Why might its total return not correspond to a GBM of its price?

### Consumption investments

We learned that many commodities have storage costs, convenience yields, and other forms of carry.

* How would this impact the Black-Scholes series.

### Exercise

Consider a put on a futures contract on crude oil.

* $F_0 = 100$
* $K = 100$
* $r = 0.025$
* $\sigma = .25$
* $T = .25$

What is the present value of the put?

### American Futures Options

Will traders use futures (and Black's model) to price American spot options?

That is to say, for american style,

* will a call on a future equal the value of a call on the spot?

Consider the case of

* contango
* backwardation
* the future expiring later than the option.

# The General Model

Black's model above is still not enough.

* It assumes constant interest rates.
* Clearly this would be an absurd assumption for interest-rate derivatives!

## The Complication

Allowing for a time-varying interest rate may not seem like a big deal. However, consider the risk-neutral valuation formula from above

$$f(r,t) = e^{-r(T-t)}\Ern[f(r,T)]$$

But now the interest rate for discounting is stochastic, so the present-value discounting is more complicated:

$$f(r,t) = \Ern\left[e^{-\int_t^Tr(\tau)d\tau}f(r,T)\right]$$

The fact that the stochastic variable, $r$, appears in both terms of the product greatly complicates finding the expectation. 

* Even if we model r as normally or lognormally distributed, this will be a mess.

## Forward Measures

The solution is to switch probability measures.

* We relied on the risk-neutral measure to eliminate risk premia.
* Other probability measures will change the drift in other ways.

By using the so-called **change of numeraire** and Girsanov's Theorem, we can rebase by any traded asset to get a new probability measure.

It will induce a martingale of the ratio.

### We choose the zero-coupon bond as the numeraire

Thus, we rebase by $Z(t,T)$.

## The Martingale

Under the **forward measure**, any derivative of a forward is a martingale:

$$\frac{f(F,t)}{Z(t,T)} = \Efwd\left[\frac{f(F,T)}{Z(T,T)}\right]$$

where $F$ denotes the forward of an arbitrary asset.

That is, we have the price as 

$$f(F,t) = Z(t,T)\Efwd\left[f(F,T)\right]$$

Thus, we can discount just with today's discount factor rather than the stochastic interest rate.

## The Formula

$\begin{align}

c_t\; =&\; Z(t,T)\left[F_t\mathcal{N}(\nargcond) - \strike \mathcal{N}\left(\nargexer\right)\right]\\

p_t\; =&\; Z(t,T)\left[\strike\mathcal{N}(-\nargexer) - F_t \mathcal{N}\left(-\nargcond\right)\right]

\end{align}$

where $\nargcond$ and $\nargexer$ are

$\begin{align}

\nargcond = \frac{\ln\left(\frac{F_t}{\strike}\right) + \frac{\sigma^2}{2}T}{\sigma\sqrt{T}} \hspace{1cm} 

\nargexer = \nargcond -\sigma\sqrt{T}

\end{align}$

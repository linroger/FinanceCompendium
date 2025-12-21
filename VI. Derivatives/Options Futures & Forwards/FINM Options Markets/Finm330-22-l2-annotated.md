---
title: "Financial Mathematics 33000 - Lecture 2"
parent_directory: Derivatives Market Complete Full/FINM Options Markets
formatted: 2025-12-21 02:35:00 PM
formatter_model: grok-code-fast-1
cli_tool: opencode
primary_tags:
  - binomial option pricing
  - arbitrage free pricing
  - fundamental theorem
  - option replication
  - risk neutral probability
  - arrow debreu assets
  - second fundamental theorem
secondary_tags:
  - risk neutral valuation
  - one period models
  - discrete state pricing
  - static portfolios
  - no arbitrage principle
  - replicating portfolio
  - state price deflators
  - market completeness
  - martingale measure uniqueness
  - physical vs risk neutral
cssclasses: academia
---

# Financial Mathematics 33000

## Lecture 2

Roger Lee

2022 October 5

One period, two states

The Fundamental Theorem

One-period, more discrete states

Fundamental Theorem, again

## Binomial Model Specification

```d2
direction: right

time_0: Time 0 {
  stock: S₀
  bank: B₀ = 1
  portfolio: (α, β)
}

time_T: Time T {
  up_state: ω_u {
    stock_up: S_T = s_u
    bank_up: B_T = e^{rT}
    option_up: C_T = c_u
  }

  down_state: ω_d {
    stock_down: S_T = s_d
    bank_down: B_T = e^{rT}
    option_down: C_T = c_d
  }
}

time_0 -> time_T.up_state: p_u
time_0 -> time_T.down_state: p_d

note: Static portfolio replicates option payoff
```

- Times 0 and $T$. No intermediate trading; all portfolios are static.
- Up and down state $\{\omega_u,\omega_d\}$ at time $T$, each with probability $>0$
- Bank account: Each unit has time-$t$ value $B_{t} = e^{rt}$ for $t = 0, T$.
- Stock $S$: Let $S_{T}$ take values $S_{T}(\omega_{u}) = s_{u}$ and $S_{T}(\omega_{d}) = s_{d}$ in the up and down state respectively, where $s_u > s_d$
- "Option" contract $C$, paying $C_T(\omega_u) = c_u$ and $C_T(\omega_d) = c_d$.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a46a5a-73bc-4725-8589-33d9eec2a160/e87f16bdf362420cf4312b71a423ae7f663372c67ff98d8530b0181ae09cd721.jpg)

### Exercises: Find an Arbitrage

Suppose that  $S_0 e^{rT} \leq s_d$ . Find an arbitrage.  
Suppose that  $S_0e^{rT}\geq s_u$  . Find an arbitrage.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a46a5a-73bc-4725-8589-33d9eec2a160/f6cda9f1c0da3d51e414e41b8a036c1b3092f3c7e6527319397460bb6612616a.jpg)

$$
\begin{array}{r l} & {(+1 \text{ unit of } S,} \\ & {-S_{0} \text{ units of } B)} \end{array}
$$

### Exercises: Find an Arbitrage

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a46a5a-73bc-4725-8589-33d9eec2a160/f2aa5f3f19a4c1763a661f1a68627bb2761ae002a72834724ef38e911aeef6ea.jpg)

$\triangleright$  Brexit: In June 2016, voters in the UK voted to remain in or leave the European Union. In May 2016, bookmakers posted 4:1 odds against leaving. Thus an asset  $S$  that pays  $s_u = 1$  GBP if "leave", and  $s_d = 0$  GBP if "remain", costs  $S_0 = 0.2$  GBP in May. Bookmakers also accepted bets in EUR with the same odds - despite the fact that GBP was expected to weaken if "leave". GBP/EUR is 1.3 in May, and assume it goes to 1.1 if "leave". Model this as a second asset  $S^*$  that pays 1/1.1 GBP if "leave", and 0 if "remain", and costs  $S_0^* = 0.2 / 1.3$  GBP in May. Find an arbitrage.

http://theconversation.com/how-to-beat-the-bookies-with-a-brexit-bet-60009

## Option Pricing via Replication

Given $S_0, s_u, s_d, c_u, c_d, r$, find arbitrage-free time-0 option price $C_0$.

Solution: Construct portfolio $(\alpha, \beta)$ of (bank acct, stock) that replicates the option. Want $\mathsf{P}(\text{time}-T$ portfolio value $= C_T) = 1$.

$$
\alpha e ^ {r T} + \beta s _ {u} = c _ {u}
$$

$$
\alpha e ^ {r T} + \beta s _ {d} = c _ {d}
$$

Solve for  $\alpha$  and  $\beta$ :

$$
\beta = \frac {c _ {u} - c _ {d}}{s _ {u} - s _ {d}} \qquad \mathrm {a n d} \qquad \alpha = e ^ {- r T} (c _ {d} - \beta s _ {d})
$$

By no-arb, time-0 option value  $=$  time-0 portfolio value. Conclude:

$$
C _ {0} = \alpha + \beta S _ {0}.
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a46a5a-73bc-4725-8589-33d9eec2a160/d246a8e941a66516335b8f07a236de6b93fe173d17ebcb1a31dd8abbe309823d.jpg)

## Value of Replicating Portfolio

Rewrite, collecting  $c_{u}$  and  $c_{d}$  terms:

$$
C _ {0} = \alpha + \beta S _ {0} = e ^ {- r T} (c _ {d} - \beta s _ {d} + \beta S _ {0} e ^ {r T}) = e ^ {- r T} \Big [ c _ {d} + \frac {c _ {u} - c _ {d}}{s _ {u} - s _ {d}} (S _ {0} e ^ {r T} - s _ {d}) \Big ]
$$

Therefore  $C_0 = e^{-rT}(p_u c_u + p_d c_d)$

where

$$
p_{u} := \frac{S_{0} e^{r T} - s_{d}}{s_{u} - s_{d}}, \qquad p_{d} := \frac{s_{u} - S_{0} e^{r T}}{s_{u} - s_{d}} = 1 - p_{u}
$$

Two special cases of $(c_u, c_d)$ are $(1,0)$ and $(0,1)$:

Let an "up-contract" pay $U_{T}(\omega_{u}) = 1$ and $U_{T}(\omega_{d}) = 0$.

Then time-0 up-contract value $= e^{-rT}p_{u}$.

Let a "down-contract" pay $D_{T}(\omega_{u}) = 0$ and $D_{T}(\omega_{d}) = 1$.

Then time-0 down-contract value  $= e^{-rT}p_d$ .

## Understanding the Pricing Formula as a Decomposition

Result $C_0 = e^{-rT}(p_u c_u + p_d c_d)$ can be understood as a decomposition.

Example: A contract that pays 5 in the up state and 3 in the down state decomposes into 5 up-contracts plus 3 down-contracts.

$$
C_T = 5 U_T + 3 D_T
$$

$$
C_0 = 5 U_0 + 3 D_0 = e^{-rT}(5 p_u + 3 p_d).
$$

More generally, payment $C_T$ of $(c_u, c_d)$ in (up, down) states decomposes as

$$
C_T = c_u U_T + c_d D_T
$$

which has time-0 value

$$
C_0 = c_u U_0 + c_d D_0 = c_u \times e^{-rT} p_u + c_d \times e^{-rT} p_d
$$

## Interpreting the Pricing Formula as an Expectation

Result $C_0 = e^{-rT}(p_u c_u + p_d c_d)$ can be understood also as expectation:

$$
C_0 = e^{-rT} \mathbb{E} C_T
$$

or equivalently: $C_0 / B_0 = \mathbb{E}(C_T / B_T)$ where $B_0 = 1$ and $B_T = e^{rT}$

What is the meaning of $\mathbb{E}$?

- $\mathbb{E}$ is expectation wrt the measure $\mathbb{P}$ that assigns probability $p_u$ to up-move, and probability $p_d$ to down-move.
- Note that $p_d, p_u$ are $>0$ and $<1$, or else arbitrage exists. So $\mathbb{P}$ is indeed a probability measure.
- But $\mathbb{P}$ does not represent actual physical probabilities.

## Two Probability Measures

- $\mathsf{P}$ is called the actual or physical probability measure.

It has no direct relevance here:

Given the specification of this model, we do not care about the value of $\mathsf{P}(\mathrm{up})$ for the purpose of pricing.

- $\mathbb{P}$ is called a risk-neutral measure or martingale measure. Some authors denote as "$\mathbb{Q}$". Important in derivatives pricing.
- Irrelevance of physical probabilities?!

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a46a5a-73bc-4725-8589-33d9eec2a160/c83d5e5f085b587d9c1ddf022950c1652d71ba5f95117cd006b75fd443b0e283.jpg)

One period, two states

The Fundamental Theorem

One-period, more discrete states

Fundamental Theorem, again

## The [First] Fundamental Theorem of Asset Pricing

There exists a probability measure $\mathbb{P}$ equivalent to $\mathsf{P}$, such that the discounted prices of all tradeable assets are martingales wrt $\mathbb{P}$.

No arbitrage $\iff$ existence of such a martingale measure.

### Definitions

- $\mathbb{P}$ equivalent to $\mathsf{P}$ means: for any event $A$, $\mathbb{P}(A) = 0$ iff $\mathsf{P}(A) = 0$.
- In this one-period model, $M_t$ is a martingale means: $M_0 = \mathbb{E}M_T$ (Today's level equals today's expectation of tomorrow's level).
- Discounted price means price $X$ divided by bank account price: $X / B$. Thus, to say that the discounted price $X / B$ is a martingale here means that $X_0 / B_0 = \mathbb{E}(X_T / B_T)$; equivalently $X_0 = e^{-rT}\mathbb{E}X_T$.

### Proof of Fundamental Theorem

Let's prove it in the case of the one-period binomial model, with an arbitrary number of assets, including a stock and a bank account. (True much more generally, but need technical assumptions)

**Proof that No arbitrage $\Rightarrow$ existence of martingale measure $\mathbb{P}$:**

We proved this in L2.6-L2.9. The measure $\mathbb{P}$ is, explicitly:

$$
\mathbb{P}(\text{up}) = p_u \text{ and } \mathbb{P}(\text{down}) = 1 - p_u, \text{ with } p_u \text{ specified} \tag{L2.7}.
$$

We need to check that $\mathbb{P}$ is a probability measure $(0 \leq p_u \leq 1)$, and indeed an equivalent probability measure $(0 < p_u < 1)$,

which follows from no-arbitrage. With respect to that $\mathbb{P}$:

$$
X_0 / B_0 = \mathbb{E}(X_T / B_T)
$$

for all assets $X$, by L2.9.

**Proof that Existence of martingale measure $\mathbb{P} \Rightarrow$ No type-1 arbitrage:**

Consider any static portfolio $\Theta$ of assets $\mathbf{X}$. Each asset price $X_0^n = e^{-rT}\mathbb{E}X_T^n$. Multiply by quantity $\theta^n$, then sum across assets:

$$
\boldsymbol{\Theta} \cdot \mathbf{X}_0 = e^{-rT} \mathbb{E}(\boldsymbol{\Theta} \cdot \mathbf{X}_T).
$$

So discounted portfolio value is also martingale: $V_0 = e^{-rT}\mathbb{E}V_T$. If $V_0 \neq 0$, then not arbitrage; we're done. So take $V_0 = 0 \Rightarrow \mathbb{E}V_T = 0$.

If $\mathbb{P}(V_T < 0) \neq 0$ then not arbitrage; done. So take $\mathbb{P}(V_T < 0) = 0$.

Then $\mathbb{P}(V_T > 0) = 0$, because a nonnegative, zero-expectation, random variable must vanish with probability 1.

(Reason: if $\mathbb{P}(V_T > 0) > 0$, then $\mathbb{P}(V_T > \varepsilon) > 0$ for some $\varepsilon > 0$, hence $\mathbb{E}V_T \geq \varepsilon \mathbb{P}(V_T > \varepsilon) > 0$.)

Conclusion: $\Theta$ is not a (type-1) arbitrage. $\square$

### Option Pricing via the Fundamental Theorem

An alternative to pricing via replication is to use the Fundamental Theorem:

Basic asset prices $\Rightarrow$ risk-neutral probabilities $\Rightarrow$ option price

**(1) Apply Fundamental Theorem to $S$ to infer risk-neutral probabilities:**

$$
S_0 = e^{-rT} \mathbb{E} S_T = e^{-rT} [p_u s_u + (1 - p_u) s_d].
$$

Solve to obtain:

$$
p_u = \frac{S_0 e^{rT} - s_d}{s_u - s_d}.
$$

**(2) Now use $p_u$ to price the option:**

$$
C_0 = e^{-rT} \mathbb{E} C_T = e^{-rT} [p_u c_u + (1 - p_u) c_d]
$$

**Two techniques for derivatives pricing:**

- Build replicating portfolio, or
- Find $\mathbb{E}$ (discounted payoff).

### Fundamental Theorem of Asset Pricing

Rigorous justifications in general settings were achieved in 1981, by Michael Harrison, Stanley Pliska, and David Kreps.

```d2
direction: down

physical_measure: Physical Measure (P) {
  style.fill: "#e3f2fd"
  description: "Real-world probabilities\nActual market dynamics"
}

risk_neutral_measure: Risk-Neutral Measure (P) {
  style.fill: "#f3e5f5"
  description: "Pricing probabilities\nArbitrage-free valuation"
}

fundamental_theorem: Fundamental Theorem {
  style.fill: "#e8f5e9"
  description: "No arbitrage ⇔\nEquivalent martingale measure exists"
}

physical_measure -> fundamental_theorem: Equivalent measures
risk_neutral_measure -> fundamental_theorem: Martingale property

fundamental_theorem -> pricing: Enables derivative pricing {
  description: "Discounted asset prices are martingales\nunder risk-neutral measure"
}
```

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a46a5a-73bc-4725-8589-33d9eec2a160/18fb2768ad8cc0fca21407d384eb1153ce0fa296d569720c977a220b208a1854.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a46a5a-73bc-4725-8589-33d9eec2a160/903ea61fa8cdb4fce48135e7746ebdd6ccb1fa94c51a8f13107ed5c09ad22437.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a46a5a-73bc-4725-8589-33d9eec2a160/5d3708cdb70479510ccdef9948aae69df71d1cadf2a68485cd4c4d0f9c448a6a.jpg)

## Replication in Two-State Model

Recall: we replicated the option using $\beta \coloneqq (c_u - c_d) / (s_u - s_d)$ shares.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a46a5a-73bc-4725-8589-33d9eec2a160/5d76171f28aa4e8055f5cccc49588513f632667ee162c409e4e1ed55b174cbb9.jpg)

Match the slope by choosing the appropriate number of shares.

Match the level using the appropriate number of bank acct units.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a46a5a-73bc-4725-8589-33d9eec2a160/66f0274c1257413ae7afff4ae084e71241825915b67dca7c0e6fcdb2294a70d1.jpg)

Another view: For each asset, write its payoff as a vector of up-state and down-state payoffs. Replication possible because

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a46a5a-73bc-4725-8589-33d9eec2a160/f4f94eb36b88489010c86a8eb53599de38c79726a10bb80215ce0c23728bf8b4.jpg)

$$
\left( \begin{array}{c} c_u \\ c_d \end{array} \right)
\in \operatorname{span} \left\{ \left( \begin{array}{c} e^{rT} \\ e^{rT} \end{array} \right), \left( \begin{array}{c} s_u \\ s_d \end{array} \right) \right\}
$$

## A Three-State Model

- Times 0 and $T$. No intermediate trading; all portfolios are static.
- Up, middle, down state at time $T$, each with positive probability.
- Bank account: Each unit has time-$t$ value $B_t = e^{rt}$, for $t = 0, T$.
- Stock $S$: Let $S_T$ take values $s_u > s_m > s_d$ in up, mid, down states respectively.
- Option $C$: Let $C_T$ take values $c_u, c_m, c_d$ in up, mid, down states.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a46a5a-73bc-4725-8589-33d9eec2a160/644e2bb3fca2a352c40c21c497cfdc00e4108ef4bc1c8d534453b30722d8e8fa.jpg)

### Replication in Three-State Model

Example: Let $r = 0$, let $S_0 = 100$, $s_u = 130$, $s_m = 100$, $s_d = 80$.

Consider a 90-call: $c_u = 40, c_m = 10, c_d = 0$. Can we replicate it?

Answer:

- Can replicate option on the upside by holding 1 share of $S$.
- Can replicate option on the downside by holding 0.5 shares of $S$.
- But can't simultaneously replicate both risks.

```d2
direction: right

time_0: Time 0 {
  style.fill: "#e3f2fd"
  stock: S₀ = 100
  bank: B₀ = 1
  option: 90-Call
}

time_T: Time T {
  style.fill: "#fff3e0"

  up_state: Up State {
    stock: S = 130
    option_payoff: C = 40
  }

  mid_state: Mid State {
    stock: S = 100
    option_payoff: C = 10
  }

  down_state: Down State {
    stock: S = 80
    option_payoff: C = 0
  }
}

time_0 -> time_T

replication_issue: Replication Issue {
  style.fill: "#ffebee"
  description: "Can replicate upside (1 share)\nor downside (0.5 shares)\nbut not both simultaneously"
}

replication_issue -> time_T
```

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a46a5a-73bc-4725-8589-33d9eec2a160/992ea148939ba1c6dfc67767ebd3aef14a12a42d3c13810ba5aad92ee24d907f.jpg)

### Replication and Spanning

Another view: Write payoffs as vectors

- Bank account payoff $\left( \begin{array}{l}\text{up-payoff}\\ \text{mid-payoff}\\ \text{down-payoff} \end{array} \right) = \left( \begin{array}{l}1\\ 1\\ 1 \end{array} \right)$
- Stock payoff $\left( \begin{array}{l}130\\ 100\\ 80 \end{array} \right)$
- The 90-call payoff is

$$
\left( \begin{array}{l} 40 \\ 10 \\ 0 \end{array} \right) \notin \operatorname{span} \left\{ \left( \begin{array}{l} 1 \\ 1 \\ 1 \end{array} \right), \left( \begin{array}{l} 130 \\ 100 \\ 80 \end{array} \right) \right\}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a46a5a-73bc-4725-8589-33d9eec2a160/8c8ebd2ac23390a2b0bc267a76b07c09bddc38afcc56fc8c42bc3463d7350fb3.jpg)

### Complete Markets

Market is said to be complete if every random variable $Y_T$ can be replicated, meaning there exists $\Theta$ such that $\mathsf{P}(\Theta \cdot \mathbf{X}_T = Y_T) = 1$, where $\Theta := (\theta^1, \ldots, \theta^N)$ and $\mathbf{X}_T(\omega) := (X_T^1(\omega), \ldots, X_T^N(\omega))$.

Examples:

- The market of {bank account, stock} in the two-state model is complete. We were able to solve for $\Theta = (\alpha, \beta)$.
- The market of {bank account, stock} in the three-state model is incomplete, because the 90-call payoff could not be replicated.

### The Martingale Measures in This Example

Probability measures on this space can be specified by probabilities $(p_u, p_m, p_d)$. They form a martingale measure iff they are an equivalent probability measure such that $A / B$ is martingale for each asset $A$. The first condition is that $p_u, p_m, p_d$ are positive (>0), and

$$
p_u + p_m + p_d = 1.
$$

The second condition is that $\mathbb{E}(S_T / B_T) = S_0 / B_0$. Equivalently,

$$
130 p_u + 100 p_m + 80 p_d = 100.
$$

This system has infinitely many solutions. Two examples:

$$
(p_u, p_m, p_d) = (0.20, 0.50, 0.30) \quad \text{and} \quad (p_u, p_m, p_d) = (0.30, 0.25, 0.45)
$$

Martingale measure exists but is not unique.

### The [First] Fundamental Theorem

The first fundamental theorem still holds in the multiple-state setting with an arbitrary number of assets, regardless of completeness.

No arbitrage $\Longleftrightarrow$ ∃ equivalent martingale measure $\mathbb{P}$

- Proof of "$\Leftarrow$" is like in binomial model
- Proof of "$\Rightarrow$" is harder

Let's just give some intuition...

## Why Can't We Price by Taking the Payoff's Expectation Using Actual Probabilities?

Because people are not risk-neutral.

- Your $10000 car has an actual 1% chance of being unrecoverably stolen this year. You may be willing to pay a lot more than $100 to insure against this. Not because you are irrational, but because you are risk-averse.
- Consider a physically 50/50 coin flip worth $1 million or nothing. You might rationally refuse to pay more than $400K for this coin flip. Because each dollar in the bad state may be more precious than a dollar in the good state.

### What is the Risk-Neutral Probability of an Event?

It's the price of a one-unit payout contingent on the event.

Consider an event $G$. Consider an asset which pays:

1 bank account unit if $G$ occurs, otherwise 0.

Let $p_G$ denote the time-0 price of this "$G$" asset, in units of $B$.

What can we say about $p_G$?

Answer: The following are consequences of no-arbitrage.

- If $\mathsf{P}(G) = 0$ then $p_G = 0$.
- If $\mathsf{P}(G) > 0$ then $p_G > 0$.
- If $\mathsf{P}(G) = 1$ then $p_G = 1$.

Likewise for an asset contingent on some event $H$.

# What is the risk-neutral probability of an event

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a46a5a-73bc-4725-8589-33d9eec2a160/a005f92b7d093190bba95c158d5dd313ed0addd05fc1d21fee5779541592c856.jpg)

Consider disjoint events $G$ and $H$. Consider an asset which pays:

1 bank account unit if $G \cup H$ occurs, 0 otherwise.

Let $p_{G \cup H}$ denote the time-0 price of this asset, in units of $B$.

Then $p_{G \cup H} = ?$

Answer: Replicate this $G \cup H$ asset by holding 1 unit of the $G$ asset and 1 unit of the $H$ asset.

By law of one price, $p_{G \cup H} = p_G + p_H$.

These prices $p$ satisfy the definition of a probability measure.

So define the risk-neutral probability of an event to be the price of an asset which pays: 1 bank account unit if the event occurs, else 0.

### Why Can We Price by Taking $\mathbb{P}$-Expectations?

Suppose we have $J$ possible outcomes $\{\omega_1, \ldots, \omega_J\}$. Suppose an asset pays $Y$ units of $B$ at time $T$, where $Y$ is a random variable.

Thus the payment is $Y(\omega_j)$ bank account units, if $j$th outcome occurs.

What's the time-0 price of the asset which pays $Y$?

Answer: Replicate it by holding, for $j = 1,\dots,J$

$Y(\omega_j)$ units of a basic asset which pays: 1 if $\omega_j$ occurs, 0 otherwise. Replicating portfolio's time-0 value, in units of the bank account, is

$$
\sum_{j=1}^J \text{Quantity} \times \text{Price} = \sum_{j=1}^J Y(\omega_j) p_{\omega_j}
$$

This is the expectation of $Y$ with respect to risk-neutral probabilities!

# Why can we price by taking  $\mathbb{P}$ -expectations

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a46a5a-73bc-4725-8589-33d9eec2a160/6bab4f5dceb40ef45abe8f5235612902a2875de17e550f4bc563e81b7cf8e0c3.jpg)

Let $X_t$ be the time-$t$ value in dollars of an asset which pays $X_T$ dollars at time $T$.

Then $X_t / B_t$ is its time-$t$ value, and $X_T / B_T$ is the payout, expressed in units of the bank account.

So, according to the previous page,

$$
\frac{X_0}{B_0} = \mathbb{E} \frac{X_T}{B_T}
$$

where $\mathbb{E}$ denotes risk-neutral expectation.

(What's missing from this proof? Need to show it works even if the "basic" assets don't exist.)

### Summary: Why Can We Price by Taking $\mathbb{P}$-Expectations?

Because the following actions result in identical calculations:

**Pricing:**
Take a payoff, decompose into a portfolio of $0/1$ "Arrow-Debreu" assets, and sum the quantity times price of each asset.

**Taking a $\mathbb{P}$-expectation:**
Take a random variable, decompose into its possible realizations, and sum the level times $\mathbb{P}$-probability of each realization.

(All "prices" are relative to a designated asset, e.g., the bank account.)

To summarize: risk-neutral pricing works because risk-neutral probabilities are prices (L2.28). So taking a risk-neutral expectation does the same calculation as pricing by replication (L2.29).

### How Are Actual and Risk-Neutral Probabilities Related?

- Risk-neutral probabilities $\mathbb{P}$ depend on actual probabilities $\mathsf{P}$ combined with the market's risk preferences.
- The measures $\mathbb{P}$ and $\mathsf{P}$ are "equivalent" meaning that they agree on all events that have probability 0 (or probability 1).
- In the discrete setting with outcomes $\{\omega_1,\dots,\omega_n\}$ each of nonzero probability, the relationship between the risk-neutral measure $\mathbb{P}$ and the actual measure $\mathsf{P}$ can be expressed by the "likelihood ratio" or "Radon-Nikodym derivative"

$$
\frac{\mathbb{P}(\omega)}{\mathsf{P}(\omega)}
$$

It's typically bigger in "bad" states $\omega$, smaller in "good" states $\omega$.

### The Second Fundamental Theorem of Asset Pricing

An arbitrage-free market is complete iff there exists a unique martingale measure (MM).

**Complete $\Rightarrow$ uniqueness:** Assume one-period, $J$-states $\{\omega_1,\ldots,\omega_J\}$ with $>0$ probabilities, $N$ assets including a bank account with value $e^{rt}$.

For each $j = 1,\ldots,J$, define the Arrow-Debreu payoff

$$
A_T^j(\omega) = \left\{ \begin{array}{ll} 1 & \text{for } \omega = \omega_j \\ 0 & \text{for } \omega \neq \omega_j \end{array} \right.
$$

By completeness, $A_T^j$ has a replicating portfolio $\Theta^j$ hence a unique arbitrage-free time-0 price $\Theta^j \cdot \mathbf{X}_0$. So for any martingale measure $\mathbb{P}^*$, we have $e^{-rT}\mathbb{E}^* A_T^j = \Theta^j \cdot \mathbf{X}_0$, where $\mathbb{E}^*$ means expectation wrt $\mathbb{P}^*$. So $\mathbb{P}^*(\{\omega_j\}) = \Theta^j \cdot \mathbf{X}_0 e^{rT}$ is unique MM probability of $\{\omega_j\}$.

#### The Second Fundamental Theorem of Asset Pricing: Proof

**Uniqueness $\Rightarrow$ complete:** By no-arbitrage, there exists a MM $\mathbb{P}$. Suppose market is incomplete. Let's construct a MM $\mathbb{P}^*$ different from $\mathbb{P}$. Look for $\varepsilon = (\varepsilon_1,\dots,\varepsilon_J)$ such that an equivalent MM is formed by

$$
\mathbb{P}^*(\{\omega_j\}) := \mathbb{P}(\{\omega_j\}) + \varepsilon_j \quad j = 1, \dots, J.
$$

Want $\varepsilon$ such that $\mathbb{E}^*$ still prices all assets correctly. Equivalently, want

$$
e^{-rT} \sum_j \varepsilon_j X_T^n(\omega_j) = 0 \quad n = 1, \ldots, N.
$$

Equivalently, want $\varepsilon$ orthogonal to each $\mathbf{x}^n \in \mathbb{R}^J$ that represents $X^n$. By incompleteness, span $\{\mathbf{x}^1,\dots,\mathbf{x}^N\} \neq \mathbb{R}^J$, so by Gram-Schmidt, there exists a unit vector $\mathbf{v}$ orthogonal to $\mathbf{x}^1,\ldots,\mathbf{x}^N$.

So $\mathbb{P}^*$ is another equivalent MM, where $\varepsilon := \frac{\min_j |\mathbb{P}(\{\omega_j\})|}{2} \mathbf{v}$.
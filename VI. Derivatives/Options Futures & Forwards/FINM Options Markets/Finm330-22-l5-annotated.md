---
parent_directory:
title: Financial Mathematics 33000
tags:
aliases:
parent_folder: Options
subfolder:
key_concepts:
cssclasses: academia
linter-yaml-title-alias: Financial Mathematics 33000
---

# Financial Mathematics 33000

# Lecture 5

Roger Lee

2022 October 26

Arbitrage in continuous time

Black-Scholes model

B-S formula via replication

Delta, Gamma, Theta

# Arbitrage

Let prices be  $\mathcal{F}_t$ -adapted Itô processes  $(X_t^1, \ldots, X_t^N) =: \mathbf{X}_t$ .  
A portfolio/trading strategy is an  $\mathcal{F}_t$ -adapted vector process  $\Theta_t \coloneqq (\theta_t^1, \dots, \theta_t^N)$  of quantities held in each asset  $1, \dots, N$ .  
$\triangleright$  Say that the trading strategy is self-financing if its value  $V_{t} \coloneqq \Theta_{t} \cdot \mathbf{X}_{t}$  satisfies (with probability 1) for all  $t$

$$
\mathrm {d} V _ {t} = \boldsymbol {\Theta} _ {t} \cdot \mathrm {d} \mathbf {X} _ {t}, \quad \text {e q u i v a l e n t l y} V _ {t} = V _ {0} + \int_ {0} ^ {t} \boldsymbol {\Theta} _ {u} \cdot \mathrm {d} \mathbf {X} _ {u}
$$

$\triangleright$  Arbitrage is a [admissible] self-financing trading strategy  $\Theta_{t}$  with

$$
V _ {0} = 0 \quad \text {a n d b o t h :} \quad \mathsf {P} (V _ {T} \geq 0) = 1
$$

$$
\mathsf {P} (V _ {T} > 0) > 0
$$

or

$$
V _ {0} <   0 \quad \text {a n d} \quad P (V _ {T} \geq 0) = 1.
$$

# Replication and hedging

$\triangleright$  Definition: a trading strategy  $\Theta$  replicates a time- $T$  payoff  $Y_{T}$  if it is self-financing, and its value  $V_{T} = Y_{T}$  (with probability 1).  
$\triangleright$  Law of one price: At any time  $t < T$ , the no-arbitrage price of an asset paying  $Y_{T}$  must be the value of the replicating portfolio.  
To hedge a payoff usually means: to [try to] replicate the negative of the payoff (or the portion of the payoff attributable to some particular source of risk). For example, to hedge a position that is short one option usually means to [try to] replicate a position that is long the option. I say "try to" because "hedge" can mean an approximation to replication - such as superreplication, or broadly speaking, any strategy to reduce some notion of risk.

Arbitrage in continuous time

Black-Scholes model

B-S formula via replication

Delta, Gamma, Theta

# Motivation for GBM to model a stock price

BM is a natural starting point for model-building

$\triangleright$  BM is the  $\Delta t \to 0$  limit, in distribution, of a random walk (with zero-mean IID steps, scaled to have variance  $\Delta t$ ).

But some problems with  $W_{t}$  or  $\alpha t + \beta W_{t}$  as a model for a stock price:

$\triangleright$  BM can go negative, and so can scaled BM with drift.  
If  $\mathrm{d}S_{t} = \alpha \mathrm{d}t + \beta \mathrm{d}W_{t}$  then each  $S_{t + \Delta t} - S_t$  is independent of  $\mathcal{F}_t$ . A 10+ dollar move is equally likely, whether  $S_{t}$  is at 20 or 100.

For a GBM  $S$ , the drift and diffusion are proportional to  $S$ .

$S$  stays positive.  
Each log return  $\log \frac{S_{t + \Delta t}}{S_t}$  (or return  $\frac{S_{t + \Delta t}}{S_t} - 1$ ) is indep of  $\mathcal{F}_t$ . A  $10+$  percent move is equally likely, whether  $S_t$  is at 20 or 100.

# Black-Scholes model

In continuous time, consider two basic assets:

- Money-market or bank account: each unit has price  $B_{t} = e^{rt}$ . Equivalently, it has dynamics

$$
\mathrm {d} B _ {t} = r B _ {t} \mathrm {d} t \qquad B _ {0} = 1
$$

Non-dividend-paying stock: share price  $S$  has GBM dynamics

$$
\mathrm {d} S _ {t} = \mu S _ {t} \mathrm {d} t + \sigma S _ {t} \mathrm {d} W _ {t} \quad S _ {0} > 0
$$

where volatility  $\sigma > 0$  and  $W$  is BM, under physical probabilities.

Think of volatility  $\sigma$  as  $\sqrt{\text{Variance of log-returns, per unit time}}$ . Find: time- $t$  price  $C_t$  of call which pays  $C_T = (S_T - K)^+$  at time  $T$ , where  $K > 0$ .

Arbitrage in continuous time

Black-Scholes model

B-S formula via replication

Delta, Gamma, Theta

# Replication

$\triangleright$  Lecture 6 will use the martingale/risk-neutral pricing approach: By Fundamental Thm, take risk-neutral  $\mathbb{E}$  of discounted payoff.  
$\triangleright$  Lecture 5 will price options using replication, two ways: First: an intuitive derivation, by replicating  $B$  using  $C$  and  $S$  Then: a careful proof, by replicating  $C$  using  $S$  and  $B$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/6eda8c14-d534-4929-a1a5-8b5830e30f14/e1c23fd641593889b154c7aee8b7a4dfd20d1c11a8ad56d8d94e5f8139673cec.jpg)  
Fischer Black, Myron Scholes, Robert Merton

# Plan of intuitive derivation: Replicate  $B$  using  $C$  and  $S$

$\triangleright$  Construct risk-free  $(= \mathrm{zero~dW~term})$  portfolio of  $(C,S)$  
If self-financing, then the portfolio value's drift must be proportional, at rate  $r$ , or else there is arbitrage of portfolio vs  $B$ .  
On the other hand, if  $C_t = C(S_t, t)$  for some smooth function  $C$ , then Itô says that the portfolio value's drift can be expressed in terms of  $C$ 's partial derivatives.  
Therefore  $C(S,t)$  satisfies a PDE.  
$\triangleright$  Solve this PDE to obtain formula for  $C$ .

# Construct a risk-free portfolio

$\triangleright$  Use (1 option,  $-a_{t}$  share), choosing  $a_{t}$  to cancel the option risk. Portfolio value is

$$
V _ {t} = C _ {t} - a _ {t} S _ {t}.
$$

So some authors claim that

$$
\mathrm {d} V _ {t} = \mathrm {d} C _ {t} - a _ {t} \mathrm {d} S _ {t}.
$$

But the product rule says that

$$
\mathrm {d} \left(a _ {t} S _ {t}\right) = a _ {t} \mathrm {d} S _ {t} + S _ {t} \mathrm {d} a _ {t} + \left(\mathrm {d} a _ {t}\right) (\mathrm {d} S _ {t}),
$$

so it's not true that  $\mathrm{d}(a_t S_t) = a_t \mathrm{d}S_t$ . Ignoring this point …

# Construct a risk-free portfolio

Assume  $C_t = C(S_t, t)$  where  $C$  is some smooth function. By Itô,

$$
\mathrm {d} V _ {t} = \frac {\partial C}{\partial t} \mathrm {d} t + \frac {\partial C}{\partial S} \mathrm {d} S _ {t} + \frac {1}{2} \frac {\partial^ {2} C}{\partial S ^ {2}} (\mathrm {d} S _ {t}) ^ {2} - a _ {t} \mathrm {d} S _ {t}
$$

where  $C$  and its partials are evaluated at  $(S_t, t)$ .

Now make these cancel by choosing  $a_{t}\coloneqq \frac{\partial C}{\partial S} (S_{t},t)$  . Then

$$
\mathrm {d} V _ {t} = \frac {\partial C}{\partial t} \mathrm {d} t + \frac {1}{2} \frac {\partial^ {2} C}{\partial S ^ {2}} (\mathrm {d} S _ {t}) ^ {2} = \left(\frac {\partial C}{\partial t} + \frac {1}{2} \frac {\partial^ {2} C}{\partial S ^ {2}} \sigma^ {2} S _ {t} ^ {2}\right) \mathrm {d} t
$$

On the other hand,  $V_{t}$  is the value of a risk-free portfolio, so

$$
\mathrm {d} V _ {t} = r V _ {t} \mathrm {d} t = r \left(C _ {t} - S _ {t} \frac {\partial C}{\partial S}\right) \mathrm {d} t
$$

Comparing right-hand sides,

$$
\frac {\partial C}{\partial t} + r S _ {t} \frac {\partial C}{\partial S} + \frac {1}{2} \frac {\partial^ {2} C}{\partial S ^ {2}} \sigma^ {2} S _ {t} ^ {2} = r C
$$

# The Black-Scholes PDE and formula

So want  $C$  to solve a PDE for  $(S,t)\in [0,\infty)\times (0,T)$

$$
\frac {\partial C}{\partial t} + r S \frac {\partial C}{\partial S} + \frac {1}{2} \sigma^ {2} S ^ {2} \frac {\partial^ {2} C}{\partial S ^ {2}} = r C
$$

with terminal condition  $C(S, T) = (S - K)^{+}$  given by the payoff.

$\triangleright$  Solution: the Black-Scholes formula. For  $t <   T$

$$
C ^ {B S} (S, t) := e ^ {- r (T - t)} \left(F N \left(d _ {1}\right) - K N \left(d _ {2}\right)\right)
$$

where  $N$  is the standard normal CDF, and  $F\coloneqq Se^{r(T - t)}$  and

$$
\boxed {d _ {1, 2} := d _ {+, -} := \frac {\log (F / K)}{\sigma \sqrt {T - t}} \pm \frac {\sigma \sqrt {T - t}}{2}}
$$

and  $C^{BS}(S,T)\coloneqq (S - K)^{+} = \lim_{t\to T}C^{BS}(S,t)$

Can directly check:  $C^{BS}$  solves PDE. (How to find  $C^{BS}$ ? Later.)

# How not to do stochastic calculus

What about the claim that  $\mathrm{d}(C_t - a_tS_t) = \mathrm{d}C_t - a_t\mathrm{d}S_t?$

Bogus justifications:

The share holdings  $a_{t}$  are "instantaneously constant."

Nonsense. In fact  $a_{t}$  is changing (and, moreover, changing so fast that we needed to introduce Ito calculus).

$\triangleright$  Portfolio of (1 option,  $-a_{t}$  shares) is "self-financing"

It's not. In fact there's no way to vary this portfolio's share

holdings without outside funding. (The option position does not

provide any funding, because it is fixed at 1 unit).

The intuitive derivation is helpful (and can be improved), but is not a proof. Let's actually give a proof now.

# Black-Scholes formula: Careful proof

Plan: replicate 1 option using a portfolio of  $(S,B)$  
Let  $C^{BS}(S,t)$  be the B-S formula.

We are not assuming that  $C^{BS}(S_t, t)$  is the option price; that will be the conclusion.

Let's hold

$$
a _ {t} := \frac {\partial C ^ {B S}}{\partial S} (S _ {t}, t) \mathrm {s h a r e s}, b _ {t} := \frac {C ^ {B S} (S _ {t} , t) - a _ {t} S _ {t}}{B _ {t}} \mathrm {b a n k a c c t u n i t s}
$$

Portfolio value is then

$$
V _ {t} = a _ {t} S _ {t} + b _ {t} B _ {t} = a _ {t} S _ {t} + \left(C ^ {B S} \left(S _ {t}, t\right) - a _ {t} S _ {t}\right) = C ^ {B S} \left(S _ {t}, t\right)
$$

# Black-Scholes formula: Careful proof

In particular, the final portfolio value is  $C^{BS}(S_T,T) = (S_T - K)^+$  
And the portfolio self-finances, because

$$
\begin{array}{l} \mathrm {d} V _ {t} = \mathrm {d} C ^ {B S} \left(S _ {t}, t\right) = \left(\frac {\partial C ^ {B S}}{\partial t} + \frac {1}{2} \frac {\partial^ {2} C ^ {B S}}{\partial S ^ {2}} \sigma^ {2} S _ {t} ^ {2}\right) \mathrm {d} t + \frac {\partial C ^ {B S}}{\partial S} \mathrm {d} S _ {t} \\ = r \left(C ^ {B S} - S _ {t} \frac {\partial C ^ {B S}}{\partial S}\right) d t + \frac {\partial C ^ {B S}}{\partial S} d S _ {t} \\ = a _ {t} \mathrm {d} S _ {t} + r b _ {t} B _ {t} \mathrm {d} t = a _ {t} \mathrm {d} S _ {t} + b _ {t} \mathrm {d} B _ {t} \\ \end{array}
$$

because  $C^{BS}$  solves the PDE.

$$
\approx (a, b) \cdot d (s, B)
$$

So the portfolio replicates the option.  $=  -$  a

Conclusion: at any time  $t < T$ , the unique no-arb price of the option equals the portfolio value, which is  $C^{BS}(S_t,t)$ .

# Call price vs  $S$

Let  $K = 100$ ,  $T - t = 1$ ,  $\sigma = 0.2$ ,  $r = 0.05$ .

Call price  $C^{BS}(S_t)$  and intrinsic value  $:= (S_t - K)^+$

plotted against  $S_{t}$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/6eda8c14-d534-4929-a1a5-8b5830e30f14/d82be15be1b5c5e2bbb1a55279b6c167e4f745d1af466acf1393bfa325463339.jpg)

# Call price vs  $S$

Let  $K = 100$ ,  $T - t = 1$ ,  $\sigma = 0.2$ ,  $r = 0.05$ .

Call price  ${C}^{BS}\left( {S}_{t}\right)$  and intrinsic value  $\mathrel{\text{:=}} {\left( {S}_{t} - K\right) }^{ + }$  and lower bound  ${\left( S, - {k}_{0} + G\left( t\right) \right) }^{ + }$  , plotted against  ${S}_{t}$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/6eda8c14-d534-4929-a1a5-8b5830e30f14/5c59219339264706566fb8dafb2fe0785c6685bbc7e4ec24e7ff57cda7556662.jpg)

# Replication and linearity

Recall: in one-period binomial model, we replicated by holding  $(c_{u} - c_{d}) / (s_{u} - s_{d})$  shares, matching the slope of the payoff function.

$$
\frac {C u}{C l} \rightarrow s l o p e = \frac {C u - C d}{S _ {u} - S _ {d}}
$$

In one-period three-state model, we could not replicate with a static portfolio of  $\{\mathrm{bond},\mathrm{stock}\}$ , unless the option payoff is linear in  $S$ .

$$
\rightarrow d i f f e r e n t s h o p e s!
$$

To achieve replication, we could introduce additional hedging assets, or we could go to a multi-period model.

# Replication and linearity in continuous time

With extra nodes, the option value becomes "locally" linear in  $S$ .

At time  $t$ , match the slope, wrt  $S_{t + \Delta t}$ , of the possible values of  $C_{t + \Delta t}$ .

Slope changes in time, but that's ok; just rebalance the portfolio.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/6eda8c14-d534-4929-a1a5-8b5830e30f14/8aed62893ecac9d933ab84f88e6a7c1b1bb283fc9b2f9020ff25954f2b6d3257.jpg)

Continuous time:

At time  $t$  match the slope, wrt  $S_{t + \mathrm{d}t}$ , of the possible values of  $C_{t + \mathrm{d}t}$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/6eda8c14-d534-4929-a1a5-8b5830e30f14/3ec3e1a5d022bc5b2377adca4be3d0fca0fdc63fbedb3fbde53286827d3bf25d.jpg)

Arbitrage in continuous time

Black-Scholes model

B-S formula via replication

Delta, Gamma, Theta

# Sensitivities or "Greeks": Delta, Gamma, Theta

# Definition:

Suppose an asset or portfolio has time-  $t$  value  $C_t = C(S_t, t)$ .

Its delta, at time  $t$ , is  $\frac{\partial C}{\partial S}(S_t, t)$ .  
Its gamma, at time  $t$ , is  $\frac{\partial^2 C}{\partial S^2}(S_t, t)$ .  
Its theta, at time-  $t$  , is  $\frac{\partial C}{\partial t} (S_t,t)$  
These definitions do not assume that  $C$  is a call price, and do not assume the Black-Scholes model.

In the remaining L5 slides, to get specific formulas, we do assume Black Scholes (L5.7).

# Delta

For a call, in the B-S model, at time  $t$

$$
\text {D e l t a} := \frac {\partial C ^ {B S}}{\partial S} = N (d _ {1}) + S _ {t} N ^ {\prime} (d _ {1}) \frac {\partial d _ {1}}{\partial S} - K e ^ {- r (T - t)} N ^ {\prime} (d _ {2}) \frac {\partial d _ {2}}{\partial S} = \boxed {N (d _ {1})}
$$

recalling that  $N'(x) = \frac{1}{\sqrt{2\pi}} e^{-x^2 / 2}$ . Interpretations of delta:

slope of option price  $C^{BS}$ , plotted as a function of  $S$  
$\triangleright$  how much the option price moves, per unit move in  $S$  
number of shares of  $S$  needed to replicate one option

This allows us to view the B-S call price

$$
C ^ {B S} (S, t) = S N (d _ {1}) - K e ^ {- r (T - t)} N (d _ {2})
$$

as the value of the replicating portfolio, which consists of the value in the shares, and the value in the bank account.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/6eda8c14-d534-4929-a1a5-8b5830e30f14/2bd9a564998eb462442e336552ca84e895926c1144cd7a8b0ac5d44df469a83c.jpg)

# Gamma

For a call, in the B-S model, at time  $t$

$$
\text {G a m m a} := \frac {\partial^ {2} C ^ {B S}}{\partial S ^ {2}} = \frac {\partial}{\partial S} N (d _ {1}) = N ^ {\prime} (d _ {1}) \frac {\partial d _ {1}}{\partial S} = \boxed {\frac {N ^ {\prime} (d _ {1})}{S _ {t} \sigma \sqrt {T - t}}}
$$

Interpretations:

convexity of  $C^{BS}$  wrt  $S$  
$\triangleright$  how much the Delta moves, per unit move in  $S$  
$\triangleright$  how much rebalancing of the replicating portfolio is needed, per unit move in  $S$

Delta and gamma are also defined for portfolios. For  $N$  assets having time- $t$  deltas  $\pmb{\Delta}_t \in \mathbb{R}^N$  and gammas  $\Gamma_t \in \mathbb{R}^N$ , the portfolio  $\mathbf{A}_t \in \mathbb{R}^N$  has time- $t$  delta  $\mathbf{A}_t \cdot \pmb{\Delta}_t$  and gamma  $\mathbf{A}_t \cdot \Gamma_t$ .

# Call price

Call price  $C^{BS}(S_t)$  and lower bound, plotted against  $S_t$ , for  $T - t = 1$ , and  $T - t = 0.25$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/6eda8c14-d534-4929-a1a5-8b5830e30f14/7c8282f9fd4d8355ccf820e1c6cf1eb88770368569b9f1478af6f0014dfce401.jpg)

# Call delta

Call delta  $= N(d_{1})$ , plotted against  $S_{t}$ , for  $T - t = 1$ ,  $T - t = 0.25$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/6eda8c14-d534-4929-a1a5-8b5830e30f14/92cdc04be380243d0589a5009d04d55790ee4cc50dd35e0393608c8c19b2c75c.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/6eda8c14-d534-4929-a1a5-8b5830e30f14/4c88959d4968e4d98f1d103c3387da4c4a47a7fb598e9afec216a84c7d5d45c0.jpg)

Delta of a call is strictly between 0 and 1.

# Call gamma

Call gamma plotted against  $S_{t}$ , for  $T - t = 1$ , and  $T - t = 0.25$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/6eda8c14-d534-4929-a1a5-8b5830e30f14/e7cfd712e646fff79dbbcf9517591c266ad079fbad4b75935079b1480ec2dcb3.jpg)

Gamma of a call is positive.

# Discrete rebalancing

At time  $t$ , go long 1 call, short  $\partial C / \partial S$  shares. Allocate the proceeds into the bank. Don't immediately rebalance. Let  $r = 0$  and  $S_{t} = 100$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/6eda8c14-d534-4929-a1a5-8b5830e30f14/84b4ff2e733555e6a8b49770e444453e201ad0888f712b4111b6fdae5d9caf3a.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/6eda8c14-d534-4929-a1a5-8b5830e30f14/65ad4e4bcd86b359d7336bedfdfdb9af15a674f9d14146954b5b637b5cca5138.jpg)

Black curve (call value) minus blue line (shares + bank) = profit due to move in  $S$ . Always net positive profit?

# Discrete rebalancing

wait until

[t + \Delta {st}]

At time  $t$ , go long 1 call, short  $\partial C / \partial S$  shares. Allocate the proceeds into the bank. Don't immediately rebalance. Let  $r = 0$  and  $S_{t} = 100$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/6eda8c14-d534-4929-a1a5-8b5830e30f14/8d20a01d3fec49ffb0723e62648d0fc97b2365adc598d3a373b78f7af7316242.jpg)

${S}_{t + {\Delta t}}$

Black curve (call value) minus blue line (shares + bank) = profit due to move in  $S$ . Always net positive profit? No, because of timed

# Call theta

For a call, in the B-S model, at time  $t$

$$
\mathrm {T h e t a} = \frac {\partial C ^ {B S}}{\partial t} = \frac {- S _ {t} N ^ {\prime} (d _ {1}) \sigma}{2 \sqrt {T - t}} - r K e ^ {- r (T - t)} N (d _ {2})
$$

Call's theta, plotted against  $S_{t}$ , for  $T - t = 1$  and  $T - t = 0.25$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/6eda8c14-d534-4929-a1a5-8b5830e30f14/5b032d63dd4fe67b34219bcc2b730eeb3c571f22a9687a897f0ec1e3e42725b6.jpg)

# Greeks related to each other

BS PDE links theta, gamma, delta, and option price

$$
\boxed {\Theta + r S \Delta + \frac {1}{2} \Gamma \sigma^ {2} S ^ {2} = r C}
$$

("Option" can have general time- $T$  payoff, not necessarily call/put.) In particular, if  $r = 0$  then

$$
\Theta = - \frac {1}{2} \Gamma \sigma^ {2} S ^ {2}
$$

# Discrete rebalancing and gamma

A discretely delta-hedged position that is long gamma

(meaning gamma  $>0$ . For example: long call, short shares):

has net profit if  $|\Delta S|$  is large enough to overcome time decay  
has net loss if  $|\Delta S|$  is too small, relative to time decay

A discretely delta-hedged position that is short gamma

(meaning gamma  $< 0$ . For example: short call, long shares):

has net loss if  $|\Delta S|$  is too large, relative to time decay  
has net profit if  $|\Delta S|$  is small enough, relative to time decay

So such positions are sensitive to "realized volatility".

# Dynamics of hedge

$$
\begin{array}{r l} {\mathrm {G a m m a o f s t o d k i s}} & {\frac {\partial^ {2}}{\partial S ^ {2}} S = 0} \\ {\mathrm {D e l t a o f s t o d k i s}} & {\frac {\partial S}{\partial S} = 1} \end{array}
$$

You have an option position, and want to trade shares to maintain delta-neutrality (delta=0).

$$
g a m m a > 0 \quad g a m m a <   0
$$

For which kind of options position - long gamma or short gamma - do you buy  $S$  on dips, and sell  $S$  on rallies?

$$
\mathrm {L o n g g o m m a :} \Gamma > 0
$$

When  $S$  与  $\Delta$  个定义域不同,则存在某一区间值  $S$  ,使  $S$  为凹

When  ${S\Delta }\bot$  the  ${\Delta V}$  . To maintain  $S$  -neutrality,  ${buy}\;{stock}$

# Implied Volatility

Given a time- $t$  price  $C$  for a given call option  $(K, T)$  on an underlying  $S_{t}$  assuming interest rate  $r$ , the implied volatility is the  $\sigma$  such that

$$
C = C ^ {B S} \left(S _ {t}, t, K, T, r, \sigma\right)
$$

where  $C^{BS}$  is the Black-Scholes formula.

This exists and is unique (if  $C$  is within arbitrage bounds).  
The bigger the dollar price  $C$ , the bigger the implied vol  $\sigma_{I}$  
Gives us another way quoting an option price. Instead of saying the option is trading at $x.xx, can say it's trading at yy% vol.  
We will say much more about implied volatility next quarter

# Realized Volatility

Realized variance of  $S$ , sampled at interval  $\Delta t$ , from time 0 to time  $T$  can be defined, using log-returns by letting  $t_n = n\Delta t$  and  $T = t_N$  and

$$
R V a r = \frac {1}{T} \sum_ {n = 0} ^ {N - 1} \left(\log \frac {S _ {t _ {n + 1}}}{S _ {t _ {n}}}\right) ^ {2}
$$

Alternatively could use simple returns, letting  $\Delta S = S_{t_{n + 1}} - S_{t_n}$  and

$$
R V a r = \frac {1}{T} \sum_ {n = 0} ^ {N - 1} \left(\frac {\Delta S}{S _ {t _ {n}}}\right) ^ {2}
$$

Realizedvolatilityof  $S$  is

$$
R V o l = \sqrt {R V a r}
$$

If  $S$  follows GBM with instantaneous volatility  $\sigma$ , then  $RVol \to \sigma$  as  $\Delta t \to 0$ .

# PnL from Gamma Scalping

Let  $r = 0$ . You buy a call, paying  $C^{BS}(\sigma_I)$ , where  $\sigma_I$  is implied vol.

Delta-hedge it at intervals  $\Delta t$ . In what cases would you profit/lose?

By Taylor,  $C\left( {S + {\Delta S}}\right)  \approx  C\left( S\right)  + \left( {\Delta S}\right) {C}^{\prime }\left( S\right)  + \frac{1}{2}{\left( \Delta S\right) }^{2}{C}^{\prime \prime }\left( S\right) , + \left( {8t}\right) \frac{a}{2}t$

So your profit from  $t$  to  $t + \Delta t$  is approximately

$$
\begin{array}{l} \frac {1}{2} \Gamma \times (\Delta S) ^ {2} + \Theta \times \Delta t = \frac {1}{2} \Gamma S ^ {2} \left(\frac {\Delta S}{S}\right) ^ {2} - \frac {1}{2} \Gamma \sigma_ {I} ^ {2} S ^ {2} \Delta t \\ = \frac {1}{2} \Gamma S ^ {2} \left(\left(\frac {\Delta S}{S}\right) ^ {2} - \sigma_ {I} ^ {2} \Delta t\right) \\ \end{array}
$$

Total profit from time 0 to  $T$  is

$$
\sum_ {n = 0} ^ {N - 1} \frac {1}{2} \Gamma_ {t _ {n}} S _ {t _ {n}} ^ {2} \left(\left(\frac {\Delta S}{S _ {t _ {n}}}\right) ^ {2} - \sigma_ {I} ^ {2} \Delta t\right)
$$

Ignoring the  $\Gamma S^2$ , this would imply that you profit if  $RVol > \sigma_I$ .

# Conclusion

Working under Black-Scholes dynamics,

- Today we priced options using replication, and we examined the behavior of the replicating portfolio.  
$\triangleright$  Next time we will price options using martingale methods: Apply Fundamental Thm, and take expectation of discounted payoff.
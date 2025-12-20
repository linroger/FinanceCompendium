---
parent_directory: I. Foundations/Mathematics/FINM Mathematical Finance/Lecture Notes
title: 'Lectures 3 & 4: Martingales'
tags: null
aliases:
- Martingales
parent_folder: Lecture Notes
subfolder: null
key_concepts: null
cssclasses: academia
linter-yaml-title-alias: 'Lectures 3 & 4: Martingales'
primary_tags:
- modern probability
- martingales introduction
- stopping formula
- traded assets
secondary_tags:
- discounted price processes
- martingale theory
- stock price martingale
- considerable utility
- price processes
- market termination
- expected value
- all martingales
- arbitrage-free market
tags_extracted: '2025-12-18T17:57:55.335887'
tags_method: max_quality_v1
---

# LECTURES 3 AND 4: MARTINGALES

# 1. INTRODUCTION

In an arbitrage-free market, the share price of any traded asset at time  $t = 0$  is the expected value, under an equilibrium measure, of its discounted price at market termination  $t = T$ . We shall see that the discounted share price at any time  $t \leq T$  may also be computed by an expectation; however, this expectation is a conditional expectation, given the information about the market scenario that is revealed up to time  $t$ . Thus, the discounted share price process, as a (random) function of time, has the property that its value at any time  $t$  is the conditional expectation of the value at a future time given information available at  $t$ . A stochastic process with this property is called a martingale.

The theory of martingales (initiated by JOSEPH DOOB, following earlier work of PAUL LÉvy) is one of the central themes of modern probability. In discrete-time finance, the importance of martingales stems largely from the Optional Stopping Formula, which (a) places fundamental constraints on (discounted) share price processes, and (b) provides a computational tool of considerable utility.

# 2. FILTERATIONS OF PROBABILITY SPACES

Filtrations. In a multiperiod market, information about the market scenario is revealed in stages. Some events may be completely determined by the end of the first trading period, others by the end of the second, and others not until the termination of all trading. This suggests the following classification of events: for each  $t \leq T$ ,

(1)  $\mathcal{F}_t = \{\text{alleventsdeterminedinthefirst } t \text{ tradingperiods}\}.$

The finite sequence  $(\mathcal{F}_t)_{0\leq t\leq T}$  is a filtration of the space  $\Omega$  of market scenarios. In general, a filtration of a set  $\Omega$  (not necessarily finite) is defined to be a collection  $\mathcal{F}_t$ , indexed by a time parameter  $t$  (time may be either discrete or continuous), such that

(a) each  $\mathcal{F}_t$  is a  $\sigma$ -algebra of subsets (events) of  $\Omega$ ; and  
(b) if  $s <   t$  then  $\mathcal{F}_s\subseteq \mathcal{F}_t$

Adapted Processes. The share prices of assets in a multiperiod market depend on market scenarios, but evolve in such a way that their values at any time  $t$ , being observable at time  $t$ , do not depend on the unobservable post- $t$  futures of the scenarios. Thus, the price process  $S_{t}$  of a traded asset is adapted to the natural filtration  $(\mathcal{F}_t)_{0\leq t\leq T}$  defined by (1). In general, a sequence  $X_{t}$  of random variables is said to be adapted to a filtration  $(\mathcal{F}_t)_{0\leq t\leq T}$  if, for each  $t$ , the random variable  $X_{t}$  is  $\mathcal{F}_t$ -measurable, that is, if all events of the form  $\{\omega : X_t(\omega) \in B\}$ , where  $B$  is a Borel subset of the real numbers  $\mathbb{R}$ , are members of the  $\sigma$ -algebra  $\mathcal{F}_t$ .

Example: The Two-Period Binary Market. Recall that there are four market scenarios:  $\Omega = \{++, + -, - +, - - \}$ . For each scenario, the first (respectively, second) entry indicates

whether the share price of the asset STOCK increased or decreased in the first (respectively, second) trading period. There are  $2^4 = 16$  events (subsets of  $\Omega$ ) in all. The only events that are determined before the first trading period are the trivial events  $\emptyset, \Omega$ . There are two other events determined by time  $t = 1$ : these are

$$
F_{+} = \{+ +, + - \} \quad \text{and}
$$

$$
F_{-} = \{- +, - - \}.
$$

Consequently, the natural filtration (the filtration defined by equation (1)) is

$$
\mathcal{F}_{0} = \{\emptyset, \Omega\}.
$$

$$
\mathcal{F}_{1} = \{\emptyset, \Omega, F_{+}, F_{-}\},
$$

$$
\mathcal{F}_{2} = \{\text{allsubsetsof } \Omega\}.
$$

Example: The  $T$ -Period Binary Market. The set  $\Omega_T$  of market scenarios consists of the  $2^T$  sequences of length  $T$  with entries  $+, -$ . The partial scenarios are the sequences  $\xi = (\xi_1\xi_2\dots \xi_t)$  of lengths  $t\leq T$ . For each partial scenario  $\xi = (\xi_{1}\xi_{2}\dots \xi_{t})$ , define the event  $F(\xi)$  to be the set of all (full) scenarios  $\omega \in \Omega_T$  whose first  $t$  entries are  $\xi_1\xi_2\dots \xi_t$ , that is,

$$
F(\xi) = \left\{\omega \in \Omega : \omega_{j} = \xi_{j} \forall j = 1, 2, \dots, t \right\}. \tag{2}
$$

If one visualizes  $\Omega$  as a binary tree of depth  $T$ , then the partial scenarios  $\xi = (\xi_1\xi_2\ldots \xi_t)$  correspond to the nonterminal nodes; for each such  $\xi$ , the event  $F(\xi)$  consists of all terminal nodes  $\omega$  lying below the nonterminal node  $\xi$  (that is, terminal nodes  $\omega$  such that the unique downward path in the tree from the root to  $\omega$  passes through  $\xi$ ). The  $\sigma$ -algebras  $\mathcal{F}_t$  in the natural filtration are given by

$$
\mathcal{F}_{t} = \left\{\text{allfiniteunionsofevents } F(\xi), \text{ where } \xi = \xi_{1}\xi_{2}\dots\xi_{t} \in \Omega_{t} \right\}. \tag{3}
$$

Equivalently,  $\mathcal{F}_t$  consists of the events whose indicator functions depend on  $\omega$  only through its first  $t$  coordinates. Observe that the  $\mathcal{F}_t$ -measurable random variables are the random variables that depend on the market scenario only through its first  $t$  coordinates. Thus, a sequence  $(X_{t})_{0\leq t\leq T}$  is adapted to the filtration  $(\mathcal{F}_t)_{0\leq t\leq T}$  if, for each  $t$  and each market scenario  $\omega = \omega_{1}\omega_{2}\dots \omega_{T}$ , the value of  $X_{t}(\omega)$  depends only on the partial scenario  $\omega_{1}\omega_{2}\dots \omega_{t}$ .

Exercise: Show that, for the  $T$ -period binary market with the natural filtration, there is a one-to-one correspondence between adapted processes and functions on the nodes of the binary tree that represents the market.

# 3. SELF-FINANCING PORTFOLIOS

Dynamic Portfolios. Consider a  $T$ -period market  $\mathcal{M}$  with traded assets  $A^1, A^2, \ldots, A^K$ . Denote by  $S_t^A(\omega)$  the share price of asset  $A$  at time  $t$  under market scenario  $\omega$ . Generally, a trader will hold not just a single asset, but a portfolio consisting of shares (possibly short) of each of the traded assets  $A^j$ ; moreover, the trader may adjust his/her portfolio as time progresses, in a manner that is scenario-dependent. Such a timeand scenario-dependent

portfolio is called a dynamic, or dynamically rebalanced, portfolio. If  $\theta_t^A (\omega)$  denotes the number of shares of asset  $A$  held in a dynamically rebalanced portfolio during the tth trading period (that is, during the period following completion of trading at time  $t$  until the beginning of trading at time  $t + 1$ ) under scenario  $\omega$ , then the sequence  $(\theta_t^A)_{0\leq t\leq T}$  must be adapted to the natural filtration. A dynamic portfolio will be called bounded if each of the random variables  $\theta_t^A$  is bounded. Note that in markets with only finitely many scenarios, all dynamic portfolios are bounded.

Self-Financing Portfolios. The total value of the portfolio  $\theta$  after rebalancing at time  $t$ , in scenario  $\omega$ , is

$$
V_{t}^{\theta} = V_{t}^{\theta}(\omega) = \sum_{A} \theta_{t}^{A}(\omega) S_{t}^{A}(\omega), \tag{4}
$$

where the sum is over all assets  $A = A^1, A^2, \ldots, A^K$ . Of course, it need not be the case that  $V_t^\theta = V_{t+1}^\theta$ , as the share prices of the underlying assets  $A^j$  will generally change between times  $t$  and  $t+1$ . However, unless the trader invests (or withdraws) additional resources in his/her portfolio at time  $t+1$ , the total value of the portfolio just before rebalancing at time  $t+1$  must be the same as its value just after, that is,

$$
\sum_{A} \theta_{t}^{A}(\omega) S_{t+1}^{A}(\omega) = \sum_{A} \theta_{t+1}^{A}(\omega) S_{t+1}^{A}(\omega);
$$

equivalently,

$$
V_{t+1}^{\theta}(\omega) - V_{t}^{\theta}(\omega) = \sum_{A} \theta_{t}^{A} \left(S_{t+1}^{A}(\omega) - S_{t}^{A}(\omega)\right). \tag{6}
$$

A dynamically rebalanced portfolio satisfying (6) is called self-financing, because it requires no investments or withdrawals except at the initial time  $t$ .

Exercise: Show that, in a  $T$ -period market with only finitely many market scenarios, every self-financing portfolio is a linear combination of pure trading strategies (as defined in Lecture 2), and every linear combination of pure trading strategies is a self-financing portfolio.

# 4. MARTINGALES

Let  $(\Omega, \mathcal{F}, P)$  be a probability space and  $(\mathcal{F}_t)_{0 \leq t \leq T}$  or  $(\mathcal{F}_t)_{0 \leq t < \infty}$  a filtration by sub- $\sigma$ -algebras of  $\mathcal{F}$ . An adapted sequence  $X_t$  of integrable random variables is defined to be a

martingale if  $E(X_{t + 1}|\mathcal{F}_t) = X_t\forall t$  

- submartingale if  $E(X_{t + 1}|\mathcal{F}_t) \geq X_t \forall t$ .  
- supermartingale if  $E(X_{t + 1}|\mathcal{F}_t) \leq X_t \forall t$ .

Conservation of Expectation. Readers with backgrounds in physics will, no doubt, have some appreciation for the importance of conservation laws. In a certain sense, martingales are the stochastic analog of conservation laws: expectation is "conserved". To understand this, observe that, by the Tower Property of conditional expectation (see the appendix to

this lecture for a brief resume of the properties of conditional expectation) and the fact that the  $\sigma$ -algebras in a filtration are nested,

$$
s < t \quad \Longrightarrow \quad E \left(X_{t} \mid \mathcal{F}_{s}\right) = X_{s} \text{ a.s.} \tag{7}
$$

for any martingale  $(X_{t})_{t\geq 0}$  relative to a filtration  $(\mathcal{F}_t)_{0\leq t < \infty}$ . This is true, in particular, for  $s = 0$ . Consequently, by another application of the Tower Property,

$$
E X_{t} = E X_{0} \quad \forall t \geq 0. \tag{8}
$$

# Simple Examples

(1) Let  $X$  be any integrable random variable. Then the sequence  $X_{t}$  defined by  $X_{t} = E(X|\mathcal{F}_{t})$  is a martingale, by the Tower Property of conditional expectation. For finite filtrations  $(\mathcal{F}_t)_{0\leq t\leq T}$  of finite probability spaces, these are the only martingales (EXERCISE: Prove this.)  
(2) Let  $Y_{1}, Y_{2}, \ldots$  be a sequence of independent, identically distributed random variables such that  $EY_{t} = 0$ , and let  $(\mathcal{F}_t)_{0 \leq t < \infty}$  be the natural filtration. Then the sequence  $X_{t} = \sum_{j=1}^{t} Y_{j}$  is a martingale. This follows easily from the Independence Law for conditional expectation.  
(3) Once again let  $Y_{1}, Y_{2}, \ldots$  be a sequence of independent, identically distributed random variables such that  $EY_{t} = 0$  and  $EY_{t}^{2} = \sigma^{2} < \infty$ , and let  $(\mathcal{F}_t)_{0\leq t < \infty}$  be the natural filtration. Then the sequence

$$
\left(\sum_{j=1}^{t} Y_{j}\right)^{2} - \sigma^{2} t \tag{9}
$$

is a martingale. This is also easy to check. For an interesting use of the martingale (9), see section 8 below.

(4) Let  $X_1, X_2, \ldots$  be a sequence of independent, identically distributed Bernoulli- $p$  random variables, and let  $S_n = \sum_{j=1}^{n} X_j$ . Note that  $S_n$  has the binomial- $(n,p)$  distribution. Define

$$
Z_{n} = \left(\frac{q}{p}\right)^{2 S_{n} - n}.
$$

Then  $Z_{1}, Z_{2}, \ldots$  is a martingale relative to the usual filtration. Once again, this is easy to check. The martingale  $\{Z_{n}\}_{n\geq 0}$  is quite useful in certain random walk problems — see, for instance, homework problem 2 below.

(5) Let  $\{X_{n}\}_{n\geq 0}$  be a martingale relative to the filtration  $\{\mathcal{F}_n\}_{n\geq 0}$ , and let  $\varphi :\mathbb{R}\to \mathbb{R}$  be a convex function such that  $E\varphi (X_n) < \infty$  for each  $n\geq 0$ . Then the sequence  $\{Z_{n}\}_{n\geq 0}$  defined by

$$
Z_{n} = \varphi(X_{n})
$$

is a submartingale relative to the filtration  $\{\mathcal{F}_n\}_{n\geq 0}$ . This is a consequence of the Jensen inequality and the martingale property of  $\{X_{n}\}_{n\geq 0}$ :

$$
\begin{array}{l} E \left(Z_{n+1} \mid \mathcal{F}_{n}\right) = E \left(\varphi \left(X_{n+1}\right) \mid \mathcal{F}_{n}\right) \\ \geq \varphi(E (X_{n+1} \mid \mathcal{F}_{n})) \\ = \varphi(X_{n}) = Z_{n} \\ \end{array}
$$

Useful special cases: (a)  $\varphi(x) = x^2$ , and (b)  $\varphi(x) = \exp\{\theta x\}$ .

# 5. DISCOUNTED PRICE PROCESSES AS MARTINGALES

The principal (but not the only) reason that the notion of a martingale is of importance in the theory of finance is that discounted price processes in arbitrage-free markets are martingales. Let  $\mathcal{M}$  be a  $T$ -period market,  $\Omega$  the (not necessarily finite) set of market scenarios, and  $(\mathcal{F}_t)_{0\leq t\leq T}$  the natural filtration. Assume that  $\mathcal{M}$  has a riskless asset with riskless rate of return  $r$  per trading period.4

Risk-Neutral Probability Measures. A probability measure  $P$  on the  $\sigma$ -algebra  $\mathcal{F}_T$  is said to be risk-neutral, or an equilibrium measure, if for every bounded self-financing portfolio  $\theta$  the value  $V_0^\theta$  at time  $t = 0$  is the expectation, under  $P$ , of the discounted value  $V_T^\theta = V_T^\theta(\omega)$  at time  $t = T$ , that is,

$$
V_{0}^{\theta} = e^{-r T} E_{P} V_{T}^{\theta}. \tag{10}
$$

Theorem 1. If the market  $\mathcal{M}$  admits no arbitrages, and has a riskless asset with rate of return  $r = 0$ , then, under any equilibrium probability measure, the price process  $\{S_t\}_{0 \leq t \leq T}$  of any traded asset is a martingale relative to the natural filtration.

Corollary 1. If the market  $\mathcal{M}$  admits no arbitrages, and has a riskless asset with rate of return  $r > 0$ , then, under any equilibrium probability measure, the discounted price process of any traded asset  $\{e^{-rt}S_t\}_{0\leq t\leq T}$  is a martingale relative to the natural filtration.

Proof. It is left as an exercise to verify that the corollary follows from the theorem. To prove the theorem, we must show that for every time  $t = 0,1,2,\ldots ,T - 1$

$$
E \left(S_{t+1} \mid \mathcal{F}_{t}\right) = S_{t}. \tag{11}
$$

By definition of conditional expectation, this is equivalent to showing that for any event  $A \in \mathcal{F}_t$ ,

$$
E \left(S_{t+1} \mathbf{1}_{A}\right) = E \left(S_{t} \mathbf{1}_{A}\right), \tag{12}
$$

where  $S_{t}$  is the share price at time  $t$  of a traded asset (call it STOCK). For this, we shall exploit the fact that the value of any self-financing portfolio  $\theta$  at time  $t = 0$  is the expected value, under any equilibrium distribution, of the value at the expiration date  $t = T$  (this is, in essence, the definition of an equilibrium distribution). Consider the following self-financing portfolio  $\theta$ :

Strategy  $\theta$ : At times  $\tau = 0,1,2,\ldots t$ , hold no position, either short or long, in any asset. At time  $\tau = t$ , if the event  $A$  has occurred, sell  $S_{t}$  shares of the riskless asset BOND short,

and use the proceeds to buy one share of STOCK. Hold this position for one trading period, until time  $t + 1$ ; then, no matter what happens in this period, sell the share of STOCK, put the proceeds  $S_{t + 1}$  into BOND, and hold the resulting position  $(-S_{t} + S_{t + 1})$  BOND until termination of the market at  $t = T$ . In all partial scenarios where event  $A$  has not occurred at time  $t$ , hold no position, either short or long, in any asset, at any time  $\tau = t,\dots,T$ .

The strategy  $\theta$  is self-financing, so its value at  $t = 0$  is 0. Consequently, under any equilibrium probability, the expected value of the portfolio at  $t = T$  must be 0. But the value at termination of the portfolio is  $(-S_{t} + S_{t + 1})\mathbf{1}_{A}$ . Therefore,

$$
0 = E \left(S_{t} - S_{t+1}\right) \mathbf{1}_{A} \quad \Longrightarrow \quad E S_{t} \mathbf{1}_{A} = E S_{t+1} \mathbf{1}_{A}.
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/7d93709e-5283-4d4f-b5c7-9692f34b6b47/8a0dc9b471ea202b7a1ded7fe2c3931438055031caa365ddeddfffa714b509d2.jpg)

# 6. MARTINGALE TRANSFORMS

The price process of a self-financing, dynamically rebalanced portfolio in a discrete-time multiperiod market with a risk-neutral probability measure  $P$  is a special kind of process, called a martingale transform. In general, a dynamically rebalanced portfolio holds, during any trading period, a certain number of shares (possibly zero) of each traded asset  $A$  in the market. The number  $\theta_t^A$  of shares of asset  $A$  held between times  $t$  and  $t + 1$  must be a function only of the market information available up to time  $t$ ; that is,  $\theta_t^A$  must be  $\mathcal{F}_t -$  measurable, where  $(\mathcal{F}_t)_{0\leq t\leq T}$  is the natural filtration for the market. If the portfolio is self-financing, then the fluctuation in the value of the portfolio between the end of trading at time  $t$  until the beginning of tradiong at  $t + 1$  is

$$
V_{t+1}^{\theta} - V_{t}^{\theta} = \sum_{A} \theta_{t} \left(S_{t+1}^{A} - S_{t}^{A}\right), \tag{13}
$$

where the sum is over all traded assets  $A$  and, for each such asset,  $S_{t}^{A}$  is the share price at time  $t$ . Notice that each term is the product of  $\theta_{t}$ , which is  $\mathcal{F}_t$ -measurable, and  $S_{t + 1}^{A} - S_{t}^{A}$ , the increment in the value of  $A$  between times  $t$  and  $t + 1$ . Such sequences are called martingale transforms; they are the discrete-time analogs of Itô integrals, of which we will hear more later. To define martingale transforms in general, we must introduce the notion of a predictable sequence.

Predictable Sequences. Let  $\{\mathcal{F}_t\}_{t\in \mathbb{Z}_+}$  be a discrete-time filtration, and let  $\{Y_t\}_{t\in \mathbb{N}}$  be a sequence of random variables adapted to  $\mathcal{F}_t$ . The sequence  $Y_{t}$  is said to be predictable (relative to the filtration  $\mathcal{F}_t$ ) if, for every  $t\geq 1$ , the random variable  $Y_{t}$  is  $\mathcal{F}_{t - 1}$ -measurable. If  $\mathcal{F}_t$  is the natural filtration for a discrete-time, multiperiod market, then the sequence  $Y_{t}$  is predictable if the value at the end of each trading period is a function only of the market information available up to the beginning of the trading period. For instance, if  $Y_{t + 1}$  is the number of shares of an asset  $A$  held between times  $t$  and  $t + 1$ , then the sequence  $Y_{t}$  must be predictable. (NOTE: It is more conventional to index the number of shares held during the period from  $t$  until  $t + 1$  by  $t$ .)

Martingale Transforms. Let  $\{X_{t}\}_{t\in \mathbb{Z}_{+}}$  be a martingale (relative to the filtration  $\mathcal{F}_t$ ), and let  $\{Y_{t}\}_{t\in \mathbb{Z}_{+}}$  be a predictable sequence. The martingale transform  $\{(Y\cdot X)_t\}_{t\in \mathbb{Z}_+}$  is the sequence of random variables defined as follows:

$$
\begin{array}{l} (Y \cdot X)_{t} = X_{0} + \sum_{j = 0}^{t - 1} Y_{j} (\Delta X)_{j + 1} \quad \text{wh er e} \tag {14} \\ \left(\Delta X\right)_{t + 1} = X_{t + 1} - X_{t}. \\ \end{array}
$$

The same equations may be used to define submartingale transforms and supermartingale transforms. If the sequence  $\{X_t\}$  is a sub-(respectively, super-)martingale, then the sequence  $(Y \cdot X)_t$  defined by equations (14) is called a sub- (respectively, super-)martingale transform.

NOTE: There are different conventions regarding the initial term of the sequence.

Proposition 1. Assume that  $\{X_{t}\}_{t\in \mathbb{Z}_{+}}$  is an adapted sequence and  $\{Y_{t}\}_{t\in \mathbb{Z}_{+}}$  a predictable sequence of bounded random variables, both relative to a filtration  $(\mathcal{F}_t)_{0\leq t < \infty}$ . If  $\{X_{t}\}_{t\in \mathbb{Z}_{+}}$  is a martingale, then the martingale transform  $\{(Y\cdot X)_t\}_{t\in \mathbb{Z}_+}$  is a martingale relative to  $(\mathcal{F}_t)_{0\leq t < \infty}$ . If  $\{X_{t}\}_{t\in \mathbb{Z}_{+}}$  is a sub-(respectively, super-)martingale, and if in addition the random variables  $Y_{t}$  are nonnegative, then the transform sequence  $\{(Y\cdot X)_t\}_{t\in \mathbb{Z}}$  is a sub-(respectively, super-)martingale.

Proof. Homework.

Proposition 1 leads immediately to the following important extension of Theorem 1.

Theorem 2. Assume that  $\mathcal{M}$  is a multiperiod market containing a riskless asset with rate of return  $r = 0$ , and assume that there is a risk-neutral probability measure  $P$  for  $\mathcal{M}$ . Then for every self-financing portfolio  $\theta$ , the value process  $(V_t^\theta)_{0 \leq t \leq T}$  is a martingale under  $P$ .

Proof. By Theorem 1, the share price process  $S_{t}^{A}$  of each traded asset  $A$  is a martingale. If  $\theta$  is a self-financing portfolio, then, for each asset  $A$ , the number  $\theta_{t-1}^{A}$  of shares of  $A$  held during the period from time  $t-1$  until  $t$  is  $\mathcal{F}_{t-1}$ -measurable, and so the sequence  $(\theta_{t-1}^{A})_{0 \leq t \leq T}$  is predictable. Hence, for each asset  $A$ , the process

$$
V_{t}^{\theta , A} = \sum_{j = 1}^{t} \theta_{j - 1}^{A} (S_{j}^{A} - S_{j - 1}^{A}),
$$

which gives the cumulative change in the value of the portfolio due to fluctuations in the share price of  $A$ , is a martingale transform. Therefore, by Proposition 1, it is a martingale. By the definition of a self-financing portfolio,  $V_{t}^{\theta}$  is the initial value  $V_{0}^{\theta}$  plus the sum of the values  $V_{t}^{\theta ,A}$  over all assets  $A$ . Since the sum of martingales is a martingale, it follows that the value process  $(V_{t}^{\theta})_{0\leq t\leq T}$  is a martingale.

# 7. OPTIONAL STOPPING

The cornerstone of martingale theory is Doob's *Optional Stopping Theorem*. This states, roughly, that "stopping" a martingale at a random time  $\tau$  does not alter the expected "payoff", provided the decision about when to stop is based solely on information available

up to  $\tau$ . Such random times are called stopping times. The formal definition is as follows: An integer-valued random variable  $\tau = \tau(\omega)$  is a stopping time relative to a filtration  $(\mathcal{F}_t)_{0 \leq t \leq T}$  or  $(\mathcal{F}_t)_{0 \leq t < \infty}$  if, for every  $n = 0, 1, 2, \ldots$ , the event that  $\tau = n$  is an element of  $\mathcal{F}_n$ :

$$
\{\omega : \tau (\omega) = n \} \in \mathcal {F}_{n}. \tag {16}
$$

Exercise: (1) Check that this is equivalent to requiring that  $\{\omega : \tau(\omega) \leq n\} \in \mathcal{F}_n$  for all  $n$ . (2) Show that if  $\tau$  is a stopping time, then so is  $\tau \wedge n$ , for any (nonrandom) integer  $n$ . (3) Show that if  $\tau$  and  $\nu$  are stopping times, then so are  $\tau \wedge \nu$  and  $\tau \vee \nu$ . (The notation  $\wedge$  denotes minimum, and  $\vee$  denotes maximum.)

Theorem 3. (Optional Stopping Theorem) Let  $\{X_{n}\}_{n\in \mathbb{Z}_{+}}$  be a martingale, submartingale, or supermartingale relative to a filtration  $\{\mathcal{F}_n\}_{n\in \mathbb{Z}_+}$ , and let  $\tau$  be a stopping time. Then for any  $n\in \mathbb{N}$ ,

(17)  $EX_{\tau \wedge n} = EX_0$  (martingales)  
(18)  $EX_{\tau \wedge n} \geq EX_0 \quad (submartingales)$  
(19)  $EX_{\tau \wedge n} \leq EX_0$  (supermartingales)

Proof. See below for the proof of (17), and see the homework section for the proofs of (18)-(19).  $\square$

The direct implication for asset prices is that one cannot get a better expected discounted return on an asset by holding it until a stopping time than one can get by simply holding it until a nonrandom termination date  $t = T$ . This should not be surprising, because if it were possible to get a better expected return, then one could create an arbitrage (exercise: explain how). But this is not why the Optional Sampling Theorem is really important. The homework problems below give some indication of how more subtle applications of the theorem lead to nontrivial results in asset pricing and random walk theory.

The easiest proof of the Optional Stopping Theorem is based on the fact that martingale transforms are martingales (Proposition 1 above).

Proposition 2. Let  $\tau$  be a stopping time relative to the filtration  $\mathcal{F}_t$ . If  $\{X_t\}_{t \geq 0}$  is a martingale, then the sequence of random variables  $\{X_{\tau \wedge t}\}_{t \geq 0}$  is a martingale transform, and therefore a martingale. Similarly, if  $\{X_t\}_{t \geq 0}$  is a sub-(respectively, super-)martingale, then so is  $\{X_{\tau \wedge t}\}_{t \geq 0}$ .

Proof. Homework problem. (Identify the appropriate predictable sequence  $Y_{n}$ , prove that it is predictable, and prove that  $X_{\tau \wedge n} = (Y \cdot X)_{n}$ .)

The Optional Stopping Theorem now follows from Conservation of Expectation (8).

# 8. EXAMPLE: THE GAMBLER'S RUIN PROBLEM

The Game. Two gamblers, FATS and SLIM, play the following game: FATS repeatedly tosses a fair coin. After each toss that comes up H, SLIM pays FATS one dollar. After each toss that comes up T, FATS pays SLIM one dollar. The game continues until either one or the other gambler runs out of money. If FATS starts with $A and SLIM starts with $B,

(A) What is the probability that, when the game ends, FATS has all the cash?  
(B) What is the expected duration of the game?

We may recast this as an optional stopping problem. Let  $X_{1}, X_{2}, \ldots$  be the sequence of play-by-play increments in FATS' fortune: thus,  $X_{i} = \pm 1$  according to whether the  $i$ th toss is  $H$  or  $T$ . The total change in FATS' fortune after  $n$  plays is

$$
S_{n} = \sum_{i = 1}^{n} X_{i}.
$$

The game continues until time  $\tau$ , where

$$
\tau = \min  \{n: S_{n} = + A \text{or} - B \}.
$$

It is not difficult to see that  $\tau$  is a stopping time relative to the natural filtration  $\mathcal{F}_n = \sigma(X_1, X_2, \ldots, X_n)$ . Moreover, the sequence  $S_n$  is a martingale relative to the natural filtration, by example (2) in section 4 above. Consequently, by the Optional Stopping Theorem, for each  $n < \infty$ ,

$$
\begin{array}{l} 0 = E S_{0} = E S_{\tau \wedge n} = A P \{\tau \leq n \text{an d} S_{\tau} = A \} \\ - B P \{\tau \leq n \text{an d} S_{\tau} = - B \} \\ + E S_{n} \mathbf {1}_{\{\tau > n \}}. \\ \end{array}
$$

As  $n \to \infty$ , the probability of the event  $\tau > n$  converges to zero. (Explanation: If at any time there are  $A + B$  consecutive Heads, or  $A + B$  consecutive Tails then the game must end, because one or the other player will be ruined. If  $n$  is extremely large, the chance that there has not been a run of  $A + B$  consecutive Heads in the first  $n$  tosses is very small.) Since  $S_{n}$  must be between  $A$  and  $-B$  on the event  $\tau > n$ , it follows that the last expectation above converges to zero as  $n \to \infty$ . Thus, letting  $n \to \infty$  yields the following simplified equation:

$$
0 = A P \{S_{\tau} = A \} - B P \{S_{\tau} = - B \}.
$$

Since  $S_{\tau}$  must be either  $A$  or  $-B$ , the two probabilities in this equation must sum to 1. Hence, we have two equations in two unknowns, which we may solve to obtain the solution to Problem (A):

$$
\boxed {P \{S_{\tau} = A \} = \frac{B}{A + B}.} \tag {23}
$$

To solve Problem (B), we shall again appeal to the Optional Stopping Theorem, but this time using the martingale  $S_{n}^{2} - n$  (see example (3) of section 4 above). The Optional Stopping

Theorem implies that, for each  $n = 1,2,\ldots$

$$
E \left(S_{\tau \wedge n}^{2} - \tau \wedge n\right) = 0 \quad \Longrightarrow
$$

$$
\begin{array}{l} E \tau \wedge n = E S_{\tau \wedge n}^{2} \tag {24} \\ = E S_{\tau}^{2} \mathbf {1}_{\{\tau \leq n \}} + E S_{n}^{2} \mathbf {1}_{\{\tau > n \}}. \\ \end{array}
$$

Now  $\tau \wedge n \to \tau$  and  $S_{\tau}^{2}\mathbf{1}_{\{\tau \leq n\}} \to S_{\tau^{2}}$  as  $n \to \infty$ , and in both cases the convergence is monotone. Consequently, by the Monotone Convergence Theorem,

$$
\begin{array}{l} \lim_{n \to \infty} E \tau \wedge n = E \tau \qquad \text{an d} \\ \lim_{n \to \infty} E S_{\tau}^{2} \mathbf {1}_{\{\tau \leq n \}} = E S_{\tau}^{2} \\ = A^{2} \left(\frac{B}{A + B}\right) + B^{2} \left(\frac{A}{A + B}\right) \\ = A B \\ \end{array}
$$

the last by the result obtained in solving problem (A) above. Since  $S_{n}^{2}$  is bounded on the event  $\tau > n$ , and since the probability of this event converges to zero as  $n \to \infty$ , the last expectation in (24) above converges to zero as  $n \to \infty$ . Therefore, as  $n \to \infty$  the equation (24) simplifies to

$$
\boxed {E \tau = A B} \tag {25}
$$

# 9. THE MARTINGALE REPRESENTATION THEOREM AND HEDGING

In a market with a risk-neutral probability measure, where the riskless rate of return is  $r = 0$ , the value process of every bounded, self-financing portfolio is a martingale. Thus, it seems a natural question to ask is this: How does one characterize the set of all martingales? To answer this in general is too ambitious a goal; however, in the important special case of the homogeneous, binary,  $T$ -period market  $\mathcal{M}$ , we may give a complete answer.

Recall that the market  $\mathcal{M}$  has scenario space  $\Omega = \{+, -\}^T$ , the set of all sequences of pluses and minuses of length  $T$ . There is a riskless asset BOND with rate of return  $r$ , and a risky asset STOCK whose price process evolves according to the rule

$$
S_{t + 1} \left(\omega_{1} \omega_{2} \dots \omega_{t} +\right) = S_{t} \left(\omega_{1} \omega_{2} \dots \omega_{t}\right) u; \tag {26}
$$

$$
S_{t + 1} \left(\omega_{1} \omega_{2} \dots \omega_{t} -\right) = S_{t} \left(\omega_{1} \omega_{2} \dots \omega_{t}\right) d.
$$

If the riskless rate of return is  $r = 0$  (as is the case if share prices in the market are denumerated in shares of BOND), then the risk-neutral probability measure  $P$  is the probability measure on  $\Omega$  under which the coordinate random variables  $\xi_{t}$ , defined by

$$
\xi_{t} \left(\omega_{1} \omega_{2} \dots \omega_{T}\right) = \omega_{t} \cdot 1 \quad \text{fo r} t = 1, 2, \dots , T, \tag {27}
$$

are independent and identically distributed, with distribution

$$
P \left\{\xi_{t} = + 1 \right\} = p \quad \text{an d} \tag {28}
$$

$$
P \left\{\xi_{t} = - 1 \right\} = q := 1 - p \quad \text{wh er e}
$$

$$
p = (1 - d) / (u - d).
$$

The natural filtration  $(\mathcal{F}_t)_{0\leq t\leq T}$  of the scenario space  $\Omega$  has  $\mathcal{F}_t = \sigma (\xi_1,\xi_2,\ldots ,\xi_t)$ , that is,  $\mathcal{F}_t$  contains all events whose indicator functions are functions of the coordinate random variables,  $\xi_1,\xi_2,\dots ,\xi_t$ .

Theorem 4. (Martingale Representation Theorem) If  $(Y_{t})_{0\leq t\leq T}$  is a martingale relative to the natural filtration  $(\mathcal{F}_t)_{0\leq t\leq T}$ , then  $(Y_{t} - Y_{0})_{0\leq t\leq T}$  is a martingale transform of the STOCK price martingale  $(S_{t})_{0\leq t\leq T}$ ; that is, there exists a predictable sequence  $(\beta_{t})_{1\leq t\leq T}$  such that for each  $t = 1,2,\ldots ,T$

$$
Y_{t} = Y_{0} + \sum_{j = 1}^{t} \beta_{j} \left(S_{j} - S_{j - 1}\right). \tag {29}
$$

Why is this of interest in finance? Recall that the share price process of any traded asset must be a martingale under the risk-neutral measure  $P$ . In particular, if derivative securities (for example, call options) are included in the market, their share price processes must be martingales, and therefore, by the Martingale Representation Theorem, must be of the form (29). The importance of equation (29) is that it provides a self-financing portfolio in the assets STOCK and BOND whose value process is  $Y_{t}$ . Thus, for every derivative security there is a self-financing replicating portfolio in STOCK and BOND. The portfolio is defined using the predictable sequence  $\beta_{t}$  in the martingale transform (29): in the time period from  $t$  until  $t + 1$ , the portfolio holds  $Y_{0}$  shares of BOND and  $\theta_{t} = \beta_{t + 1}$  shares of STOCK. Observe that the process  $(\theta_{t})_{0\leq t\leq T - 1}$  is adapted to the natural filtration (as it must be) because the sequence  $\beta_{t}$  is predictable.

Proof of the Martingale Representation Theorem. Fix a scenario  $\omega = \omega_{1}\omega_{2}\dots \omega_{T}\in \Omega$ , and let  $G_{t}(\omega)$  be the set of all (full) scenarios whose first  $t$  entries are  $\omega_{1}\omega_{2}\dots \omega_{t}$ . Since the sequence  $(Y_{t})_{0\leq t\leq T}$  is a martingale, it must be the case that, for every  $t < T$  and every  $\omega \in \Omega$ ,

$$
E Y_{t + 1} \mathbf {1}_{G_{t} (\omega)} = E Y_{t} \mathbf {1}_{G_{t} (\omega)}. \tag {30}
$$

Moreover, since the sequence  $(Y_{t})_{0\leq t\leq T}$  is adapted to the natural filtration, the value  $Y_{t + 1}(\omega) - Y_{t}(\omega)$  depends on the scenario  $\omega = \omega_{1}\omega_{2}\dots \omega_{T}$  only through its first  $t + 1$  entries. Thus, equation (30) implies that, for each  $t$  and each  $\omega$ ,

$$
p Y_{t + 1} \left(\omega_{1} \omega_{2} \dots \omega_{t} +\right) + q Y_{t + 1} \left(\omega_{1} \omega_{2} \dots \omega_{t} -\right) = Y_{t} \left(\omega_{1} \omega_{2} \dots \omega_{t}\right). \tag {31}
$$

This equation also holds with  $Y_{t + 1}$  and  $Y_{t}$  replaced by  $S_{t + 1}$  and  $S_{t}$ , respectively, because  $(S_{t})_{0\leq t\leq T}$  is also a martingale. Solving both equations for  $-q / p$  leads to the relation

$$
\frac{Y_{t + 1} (\omega_{1} \omega_{2} \ldots \omega_{t} +) - Y_{t} (\omega_{1} \omega_{2} \ldots \omega_{t})}{Y_{t + 1} (\omega_{1} \omega_{2} \ldots \omega_{t} -) - Y_{t} (\omega_{1} \omega_{2} \ldots \omega_{t})} = - \frac{q}{p} = \frac{S_{t + 1} (\omega_{1} \omega_{2} \ldots \omega_{t} +) - S_{t} (\omega_{1} \omega_{2} \ldots \omega_{t})}{S_{t + 1} (\omega_{1} \omega_{2} \ldots \omega_{t} -) - S_{t} (\omega_{1} \omega_{2} \ldots \omega_{t})},
$$

which in turn implies that

$$
\begin{array}{l} \frac{Y_{t + 1} \left(\omega_{1} \omega_{2} \dots \omega_{t} +\right) - Y_{t} \left(\omega_{1} \omega_{2} \dots \omega_{t}\right)}{S_{t + 1} \left(\omega_{1} \omega_{2} \dots \omega_{t} +\right) - S_{t} \left(\omega_{1} \omega_{2} \dots \omega_{t}\right)} \tag {33} \\ = \frac{Y_{t + 1} \left(\omega_{1} \omega_{2} \dots \omega_{t} -\right) - Y_{t} \left(\omega_{1} \omega_{2} \dots \omega_{t}\right)}{S_{t + 1} \left(\omega_{1} \omega_{2} \dots \omega_{t} -\right) - S_{t} \left(\omega_{1} \omega_{2} \dots \omega_{t}\right)} \\ := \beta_{t} \left(\omega_{1} \omega_{2} \dots \omega_{t}\right). \\ \end{array}
$$

Notice that the common value of the fractions on the two sides of (33) depends only on  $\omega_{1}\omega_{2}\ldots \omega_{t}$ , so the definition of  $\beta_{t}$  is valid. The relation (29) is now evident.

# 10. APPENDIX: CONDITIONAL EXPECTATION

Let  $(\Omega, \mathcal{F}, P)$  be a probability space and let  $\mathcal{G}$  be a  $\sigma$ -algebra such that  $\mathcal{G} \subset \mathcal{F}$ .

Theorem 5. Let  $X$  be any random variable such that  $E|X| < \infty$ . Then there is a unique  $\mathcal{G}$ -measurable random variable  $E(X|\mathcal{G})$  such that, for every bounded  $\mathcal{G}$ -measurable random variable  $Y$ ,

$$
E (X Y) = E \left(E (X | \mathcal {G}) Y\right). \tag {34}
$$

The random variable  $E(X|\mathcal{G})$  is called the conditional expectation of  $X$  given  $\mathcal{G}$ . Theorem 5 is one of the major results of measure theory (it is roughly equivalent to the Radon-Nikodym theorem for finite measures), and you may find its proof in most X-rated probability texts.

It is often easy to guess the conditional expectation of a random variable  $X$  given a  $\sigma$ -algebra  $\mathcal{G}$ . Verification of the guess using the definition (34) may be tedious, as it requires considering all  $\mathcal{G}$ -measurable random variables  $Y$ . Fortunately, this is not always necessary: in fact, to prove that  $Z = E(X|\mathcal{G})$ , it is enough to verify that  $Z$  is  $\mathcal{G}$ -measurable, and that

$$
E \left(X \mathbf {1}_{A}\right) = E \left(Z \mathbf {1}_{A}\right) \quad \forall A \in \mathcal {G} \tag {35}
$$

(here  $\mathbf{1}_A$  is the indicator function of the event  $A$ ). This follows by a standard approximation argument of measure theory: (1) If (35) holds for all indicator random variables  $\mathbf{1}_A$ , then  $E(XY) = E(ZY)$  for all simple functions (linear combinations of indicator functions), by the linearity of expectation. (2) If  $E(XY) = E(ZY)$  holds for all simple functions  $Y$ , then it holds for all monotone limits  $Y$  of simple functions, by the Monotone Convergence Theorem. (3) All bounded  $\mathcal{G}$ -measurable random variables are monotone limits of  $\mathcal{G}$ -measurable simple functions. For further details, consult your local measure-theorist.

Example: The binary tree. Consider, once again, the  $T$ -period binary market, and let  $\{\mathcal{F}_t\}$  be the natural filtration. Let  $P$  be any probability measure on  $\mathcal{F}_T$  assigning positive probability to every scenario:

$$
\pi (\omega) := P (\{\omega \}) > 0 \quad \forall \omega \in \Omega .
$$

For each  $t \leq T$  and each scenario  $\omega = \omega_1\omega_2\ldots \omega_T$ , let  $\xi_t = \omega_1\omega_2\ldots \omega_t$  denote the partial scenario coinciding with  $\omega$  up to time  $t$ , and define

$$
\pi (\omega \mid \mathcal {F}_{t}) := \frac{\pi (\omega)}{\sum_{\omega^{\prime} \in F \left(\xi_{t}\right)} \pi \left(\omega^{\prime}\right)}. \tag {36}
$$

The sum in the denominator is over all full scenarios  $\omega'$  coinciding with  $\omega$  up to time  $t$ . Thus, the ratio is the conditional probability (as commonly defined in elementary discrete probability) of the scenario  $\omega$ , given that  $\omega$  is not ruled out by what happens in the first  $t$  periods. For any random variable  $X$  defined on  $\Omega$ , the conditional expectation  $E(X|\mathcal{F}_t)$  is obtained by averaging against the conditional probability distribution  $\pi(\omega|\mathcal{F}_t)$ , that is,

$$
E (X | \mathcal {F}_{t}) (\omega) = \sum_{\omega^{\prime} \in F (\xi_{t})} X (\omega) \pi (\omega \mid \mathcal {F}_{t}). \tag {37}
$$

Exercise: Verify that this is true; that is verify that the function of  $\omega$  defined by the right side of this equation is the unique  $\mathcal{F}_t$ -measurable random variable such that equation (34) holds for every random variable  $Y$ .

Properties of Conditional Expectation. One of the advantages of defining conditional expectation via equation (34) is that it makes the following elementary properties transparent.

(1) Linearity:  $E(aX + bY|\mathcal{G}) = aE(X|\mathcal{G}) + bE(Y|\mathcal{G})$  for all  $a, b \in \mathbb{R}$ .  
(2) Positivity: If  $X \geq 0$  then  $E(X|\mathcal{G}) \geq 0$ .  
(3) Stability: If  $X$  is  $\mathcal{G}$ -measurable, then  $E(XY|\mathcal{G}) = XE(Y|\mathcal{G})$ .  
(4) Independence Law: If  $X$  is independent of  $\mathcal{G}$  then  $E(X|\mathcal{G}) = EX$  is constant.  
(5) Tower Property: If  $\mathcal{H} \subset \mathcal{G}$  then  $E(X|\mathcal{H}) = E(E(X|\mathcal{G})|\mathcal{H})$ .  
(6) Projection Law:  $E(E(X|\mathcal{G})) = EX$ .  
(7) Jensen Inequalities: If  $\varphi : \mathbb{R} \to \mathbb{R}$  is convex and  $E|X| < \infty$  then

$$
E (\varphi (X)) \geq \varphi (E X) \text{an d}
$$

$$
E (\varphi (X) | \mathcal {G}) \geq \varphi (E (X | \mathcal {G})).
$$

With the exception of the Jensen inequality (7) and the Independence Law (4), all of these properties may be proved easily, using only Theorem 5. You should try to check as many as you can. The Independence Law is not difficult to establish for filtrations of finite probability spaces, but proof in general requires some facts from measure theory.

# 11. PROBLEMS

1. Bonds. A (zero-coupon) bond with maturity M is a contract that pays the owner \$1 at the maturity date M. Consider a T-period market in which bonds of all maturities M = 1, 2, …, T are traded; denote by B_t,M = B_t,M(ω) the price (in dollars) at time t of one maturity-M bond.

(a) What is the riskless asset in this market?  
(b) A coupon-bearing bond is a contract that pays the owner an amount  $C_t$  dollars at time  $t$ , for  $t = 1, 2, \ldots, T$ . Find a formula for the price at time  $t = 0$  of such a contract.

(c) Let  $\pi$  be an equilibrium distribution for the market, and let  $E_{\pi}$  denote the expectation operator for the distribution  $\pi$ . For each  $t = 0,1,2,\ldots,T$ , define  $Z_{t} = \prod_{j=0}^{t-1} B_{j,j+1}$ . Prove that the sequence  $Z_{t}$  is a martingale relative to the usual filtration.

2. Gambler's Ruin, Revisited. The game is exactly the same as described in section 8 except that the coin is unfair: the probability that it comes up  $H$  is  $p > 1/2$ , and the probability that it comes up  $T$  is  $q = 1 - p < 1/2$ . The problem is, once again, to determine the probability that FATS exhausts his initial fortune before SLIM exhausts his.

(a) Define  $X_{i}$  and  $S_{n}$  as in section 8. Show that

$$
Z_{n} := \left(\frac{q}{p}\right)^{S_{n}}
$$

is a martingale relative to the usual filtration.

(b) Use the Optional Stopping Theorem for the martingale  $Z_{n}$  to determine the probability that FATS runs out of money before he bankrupts SLIM.

3. Prove Proposition 1 in the notes.
4. Prove Proposition 2 in the notes.
5. A Barrier Option: This contract pays the owner 1 share of STOCK at the first time t = 1,2,… that the share price of STOCK exceeds $A, or at t = T if the share price of STOCK does not exceed $A at any t = 1,2,…T. Evaluate the market price of this contract at t = 0 in two different ways:

(a) by an arbitrage argument: and

(b) using the Optional Sampling Theorem of martingale theory.

6. American Call Option: The American call with strike K is a contract that gives the owner the right to purchase one share of STOCK for $K at any time t = 1,2,…,T. (The European call may only be exercised at t = T.) The owner's decision about when to exercise the option must be based only on information available to him/her at the exercise time — in mathematical terms, the time τ at which the option is exercised must be a stopping time relative to the natural filtration.

Assume that there is a riskless asset BOND whose rate of return is  $r > 0$ . Use the Jensen inequality for conditional expectation to prove that early exercise of the American call is suboptimal. Thus, the American call and the European call have the same market value.

7. American Put Option: The American put with strike K is a contract that gives the owner the right to sell one share of STOCK for $K at any time t = 1,2,…,T. Assume that there is a riskless asset BOND whose rate of return is r > 0. Give an example to show that, in certain markets and in certain circumstances, it may be better to exercise the put option early.

HINT: Consider a homogeneous 2-period binary market. Show that for some values of  $u, d, r$  and  $K$ , you get a higher expected payoff by exercising the put at  $t = 1$  when the partial scenario is - than waiting until  $t = 2$ . Note that if  $r = 0$ , then there is no advantage to early exercise.

8. Doob Decomposition Theorem: Let  $\{X_{n}\}_{n\geq 0}$  be a submartingale relative to the filtration  $\{\mathcal{F}_n\}_{n\geq 0}$ . Prove that there is an increasing, predictable sequence  $\{Y_{n}\}_{n\geq 1}$  and a martingale  $\{Z_{n}\}_{n\geq 0}$  such that

$$
X_{n} = Z_{n} + Y_{n},
$$

NOTE: The sequence  $\{Y_{n}\}$  is called the compensator for the submartingale  $\{X_{n}\}$ . The terminology should help you to guess how to define the random variables  $Z_{n}$  and  $Y_{n}$ . Once you guess what the decomposition is, it should be easy to check, using the basic properties of conditional expectation, that the sequences  $Z_{n}$  and  $Y_{n}$  have the desired properties.
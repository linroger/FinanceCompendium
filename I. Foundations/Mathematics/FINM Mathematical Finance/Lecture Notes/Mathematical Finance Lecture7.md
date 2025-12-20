---
parent_directory: I. Foundations/Mathematics/FINM Mathematical Finance/Lecture Notes
title: 'Lecture 7: Black-Scholes Theory'
tags: null
aliases:
- Black-Scholes Theory
parent_folder: Lecture Notes
subfolder: null
key_concepts: null
cssclasses: academia
linter-yaml-title-alias: 'Lecture 7: Black-Scholes Theory'
primary_tags:
- scholes theory introduction
- call option
- share prices
secondary_tags:
- famous black-scholes formula
- black-scholes(-merton) model
- subsequent lectures
- riskless asset cash bond
- stock and cash bond
- itô formula
tags_extracted: '2025-12-18T17:58:10.479926'
tags_method: max_quality_v1
---

# LECTURE 7: BLACK-SCHOLES THEORY

# 1. INTRODUCTION: THE BLACK-SCHOLES MODEL

In 1973 Fisher Black and Myron Scholes ushered in the modern era of derivative securities with a seminal paper on the pricing and hedging of (European) call and put options. In this paper the famous Black-Scholes formula made its debut, and the Itô calculus was unleashed upon the world of finance. In this lecture we shall explain the Black-Scholes argument in its original setting, the pricing and hedging of European contingent claims. In subsequent lectures, we will see how to use the Black-Scholes model in conjunction with the Itô calculus to price and hedge all manner of exotic derivative securities.

In its simplest form, the Black-Scholes(-Merton) model involves only two underlying assets, a riskless asset CASH BOND and a risky asset STOCK. The asset CASH BOND appreciates at the short rate, or riskless rate of return  $r_t$ , which (at least for now) is assumed to be nonrandom, although possibly time-varying. Thus, the price  $B_t$  of the CASH BOND at time  $t$  is assumed to satisfy the differential equation

$$
\frac{dB_{t}}{dt} = r_{t}B_{t}, \tag{1}
$$

whose unique solution for the value  $B_0 = 1$  is (as the reader will now check)

$$
B_{t} = \exp \left(\int_{0}^{t} r_{s} ds\right). \tag{2}
$$

The share price  $S_{t}$  of the risky asset STOCK at time  $t$  is assumed to follow a stochastic differential equation (SDE) of the form

$$
dS_{t} = \mu_{t}S_{t}dt + \sigma S_{t}dW_{t}, \tag{3}
$$

where  $\{W_t\}_{t \geq 0}$  is a standard Brownian motion,  $\mu_t$  is a nonrandom (but not necessarily constant) function of  $t$ , and  $\sigma > 0$  is a constant called the volatility of the STOCK.

Proposition 1. If the drift coefficient function  $\mu_t$  is bounded, then the SDE (3) has a unique solution with initial condition  $S_0$ , and it is given by

$$
S_{t} = S_{0} \exp \left(\sigma W_{t} - \sigma^{2} (t / 2) + \int_{0}^{t} \mu_{s} ds\right) \tag{4}
$$

Moreover, under the risk-neutral measure, it must be the case that

$$
r_{t} = \mu_{t}. \tag{5}
$$

Proof. As in many arguments to follow, the magical incantation is "Itô's formula". Consider first the formula (4) for the share price of STOCK; to see that this defines a solution to the SDE (3), apply Itô's formula to the function

$$
u (x, t) = \exp \left(\sigma x - \sigma^{2} (t / 2) + \int_{0}^{t} \mu_{s} ds\right).
$$

To see that the solution is unique, check your favorite reference on the theory of SDEs. Finally, to see that the drift coefficient  $\mu_t$  must coincide with the riskless rate of return  $r_t$  in the risk-neutral world, recall that under the risk-neutral measure the discounted share price of STOCK must be a martingale. The appropriate discount factor is  $B_t$ , so the discounted share price of STOCK is

$$
S_{t}^{*} = S_{t} / B_{t} = S_{0} \exp \left(\sigma W_{t} - (\sigma^{2} t / 2) + \int_{0}^{t} (\mu_{s} - r_{s}) ds\right).
$$

Applying Itô's formula once more, one finds that

$$
dS_{t}^{*} = \sigma S_{t}^{*} dW_{t} + S_{t}^{*} (\mu_{t} - r_{t}) dt.
$$

In order that  $S_{t}^{*}$  be a martingale, it is necessary that the  $dt$  term be 0; this implies that  $\mu_t = r_t$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f0b1233b-7083-4490-a87a-730a246dff83/ba1fd74d6d25fce287cac81e165dc9af035849274b8e97480a2e43625dd9c24f.jpg)

Corollary 1. Under the risk-neutral measure, the log of the discounted stock price at time  $t$  is normally distributed with mean  $\log S_0 - \sigma^2 t / 2$  and variance  $\sigma^2 T$ .

# 2. THE BLACK-SCHOLES FORMULA FOR THE PRICE OF A EUROPEAN CALL OPTION

Recall that a European CALL on the asset STOCK with strike  $K$  and expiration date  $T$  is a contract that allows the owner to purchase one share of STOCK at price  $K$  at time  $T$ . Thus, the value of the CALL at time  $T$  is  $(S_T - K)_+$ . According to the Fundamental Theorem of Arbitrage Pricing, the price of the asset CALL at time  $t = 0$  must be the discounted expectation, under the risk-neutral measure, of the value at time  $t = T$ , which, by Proposition 1, is

$$
C \left(S_{0}, 0\right) = C \left(S_{0}, 0; K, T\right) = E \left(S_{T}^{*} - K / B_{T}\right)_{+} \tag{6)
$$

where  $S_T^*$  has the distribution specified in Corollary 1. A routine calculation, using integration by parts, shows that  $C(x,T;K)$  may be rewritten as

$$
C (x, 0; K, T) = x \Phi (z) - \frac{K}{B_{T}} \Phi (z - \sigma \sqrt{T}), \tag{7}
$$

where

$$
z = \frac{\log (x B_{t} / K) + \sigma^{2} t / 2}{\sigma \sqrt{T}}
$$

and  $\Phi$  is the cumulative normal distribution function.

And that's all there is to the Black-Scholes formula! There are other derivations, some with pedagogical merit, others just long and painful, most based somehow on the Itô formula. For the cultural enlightenment of the reader, we shall present another argument, based on PDE theory, in the next section. Before we leave this derivation, though, we should observe that it works essentially unchanged for all European-style derivative securities. Let  $F: \mathbb{R} \to \mathbb{R}$  be a function of polynomial

growth, and consider the derivative security whose value at  $t = T$  is  $F(S_{T})$ . Then the value at time  $t = 0$  of this derivative security is

$$
V_{0} = E B_{T}^{-1} F \left(B_{T} S_{T}^{*}\right), \tag{8}
$$

where  $S_T^*$  has the lognormal distribution specified in Corollary 1 above.

# 3. THE BLACK-SCHOLES PDE

Next, another derivation of the Black-Scholes formula. This one proceeds by finding a PDE for the price function  $C(x,T) = C(x,T;K)$  and then verifying that the function defined by (7) solves the PDE. It has the disadvantage that the issues of uniqueness and smoothness of solutions to the PDE must be tackled separately (and we won't do this here). For the sake of simplicity, we shall only consider the case where the short rate is constant, that is,  $r_t \equiv r$ .

Let  $C(S_{t}, t)$  be the price of the CALL at time  $t$  when the share price of STOCK is  $S_{t}$ . By the Fundamental Theorem of Arbitrage Pricing, the discounted CALL price must be a martingale under the risk-neutral measure. Now the Itô formula implies that the CALL price must satisfy the SDE

$$
\begin{array}{l} B_{t} d (B_{t}^{-1} C (S_{t}, t)) \\ = C_{x} \left(S_{t}, t\right) dS_{t} + \frac{1}{2} C_{xx} \left(S_{t}, t\right) \sigma^{2} S_{t}^{2} dt + C_{t} \left(S_{t}, t\right) dt - r_{t} C \left(S_{t}, t\right) dt \\ = C_{x} \left(S_{t}, t\right) \sigma S_{t} dW_{t} + \left\{C_{x} \left(S_{t}, t\right) r_{t} S_{t} + \frac{\sigma^{2} S_{t}^{2}}{2} C_{xx} \left(S_{t}, t\right) + C_{t} \left(S_{t}, t\right) - r_{t} C \left(S_{t}, t\right) \right\} dt. \tag{9} \\ \end{array}
$$

Here  $C_x, C_{xx}, C_t$ , etc. represent partial derivatives of the call price function  $C(x,t)$  with respect to the indicated variables. Multiplying by the discount factor  $B_t^{-1}$ , one sees that the discounted CALL price can be a martingale only if the  $dt$  term on the right side vanishes. Thus, the call price function  $C(x,t)$  must satisfy the Black-Scholes PDE:

$$
- r_{t} C (x, t) + C_{t} (x, t) + r_{t} x C_{x} (x, t) + \frac{\sigma^{2} x^{2}}{2} C_{xx} (x, t) = 0 \tag{10}
$$

with the terminal condition

$$
C (x, T) = (x - K)_{+}. \tag{11}
$$

It may now be verified by differentiation that the function defined by the Black-Scholes formula (7) solves the Black-Scholes PDE (10), and converges to the terminal value as  $t \to T-$ . This isn't an especially enlightening way to spend one's time. What might make a nice EXERCISE, though, is to check that (7) solves the Black-Scholes PDE (10) by using a computer package that does symbolic differentiation.

Observe that nowhere in this argument did we use the specific form of the terminal payoff, except in determining the terminal condition (11). Thus, the argument applies, unchanged, to the price function  $C(x,t)$  for any derivative security whose terminal payoff is a function of the terminal STOCK price  $S_{T}$ ; and so the Black-Scholes PDE (10) must hold for the price function of any such derivative security.

# 4. HEDGING IN CONTINUOUS TIME

Can one hedge a call option in the traded assets CASH BOND and STOCK? If so, how does one do it? The answer comes by examination of the SDE (9) satisfied by the call price function  $C(S_{t},t)$ . To obtain this SDE, we once again invoke the Ito formula to get

$$
\begin{array}{l} d C \left(S_{t}, t\right) = C_{x} \left(S_{t}, t\right) dS_{t} + \left(C_{t} \left(S_{t}, t\right) + \frac{\sigma^{2} S_{t}^{2}}{2} C_{xx} \left(S_{t}, t\right)\right) dt \tag{12} \\ = C_{x} \left(S_{t}, t\right) dS_{t} + \left(- r_{t} S_{t} C_{x} \left(S_{t}, t\right) + r_{t} C \left(S_{t}, t\right)\right) dt \\ = C_{x} \left(S_{t}, t\right) dS_{t} + \left(- \frac{S_{t} C_{x} \left(S_{t}, t\right)}{B_{t}} + \frac{C \left(S_{t}, t\right)}{B_{t}}\right) dB_{t} \\ \end{array}
$$

Observe that the second equality follows from the first because the call price function  $C(x, t)$  must satisfy the Black-Scholes PDE (10); and the third equality follows from the second because the CASH BOND price  $B_{t}$  satisfies the ODE (1).

Equation (12) shows that the instantaneous fluctuation in the price of the CALL at any time  $t$  is a linear combination of the instantaneous fluctuations in the share prices of STOCK and CASH BOND. The coefficients in this linear combination are expressions involving the function  $C(x,t)$  and its first partial derivative  $C_x(x,t)$ ; since the call price function  $C(x,t)$  is explicitly given by the Black-Scholes formula (7), these coefficients may be computed to any desired degree of accuracy, at any time  $t$ . Thus, the formula (12) tells us how to replicate a European CALL by holding a time-dependent portfolio in CASH BOND and STOCK:

Hedging Strategy: At time  $t \leq T$ , hold

$$
\begin{array}{l l} C_{x} \left(S_{t}, t\right) & \text{sharesofSTOCKand} \\ \left(- S_{t} C_{x} \left(S_{t}, t\right) + C \left(S_{t}, t\right)\right) / B_{t} & \text{sharesofCASHBOND}. \end{array} \tag{13}
$$

There is only one problem<sup>6</sup>: how do we know that, if we start with  $C(S_0, 0)$  dollars at time  $t = 0$  and invest it according to the Hedging Strategy, we will have enough assets at time  $t > 0$  to buy the number of shares of STOCK and CASH BOND required? This is, after all, what we would like a hedging strategy to do: if someone pays us  $C(S_0, 0)$  dollars<sup>7</sup> at time  $t = 0$  for a CALL option, we would like to arrange things so that there is absolutely no risk to us of having to pump in any of our own money later to cover the CALL at expiration  $T$ .

Definition 1. A portfolio in the assets CASH BOND and STOCK consists of a pair of adapted processes  $\{\alpha_t\}_{0\leq t\leq T}$  and  $\{\beta_t\}_{0\leq t\leq T}$ , representing the number of shares of CASH BOND and STOCK that are owned (or shorted) at times  $0\leq t\leq T$ . The portfolio is said to be self-financing if, with probability 1, for every  $t\in [0,T]$ ,

$$
\alpha_{t} B_{t} + \beta_{t} S_{t} = \alpha_{0} B_{0} + \beta_{0} S_{0} + \int_{0}^{t} \alpha_{s} dB_{s} + \int_{0}^{t} \beta_{s} dS_{s} \tag{14}
$$

A portfolio  $\{(\alpha_{t},\beta_{t})\}_{0\leq t\leq T}$  replicates a derivative security whose value at  $t = T$  is  $V_{T}$  if, with probability 1,

$$
V_{T} = \alpha_{T} B_{T} + \beta_{T} S_{T}. \tag(15)
$$

The equation (14) states that the value  $\alpha_{t}B_{t} + \beta_{t}S_{t}$  of the portfolio at any time  $t$  should be the initial value  $\alpha_{0}B_{0} + \beta_{0}S_{0}$  plus the accumulated changes in value due to fluctuations  $dB_{s}$  and  $dS_{s}$  in the values of the assets held at times up to  $t$ . A self-financing portfolio that replicates a derivative security is called a hedge or a hedging strategy.

Proposition 2. The portfolio defined by equations (13) is a hedge for the CALL.

Proof. The strategy (13) specifies the portfolio

$$
\begin{array}{l} \beta_{t} = C_{x} \left(S_{t}, t\right) \quad \text{and} (16) \\ \alpha_{t} = \left(- S_{t} C_{x} \left(S_{t}, t\right) + C \left(S_{t}, t\right)\right) / B_{t} (17) \\ \end{array}
$$

The value of this portfolio at any time  $t \leq T$  is

$$
\alpha_{t} B_{t} + \beta_{t} S_{t} = \left(- S_{t} C_{x} \left(S_{t}, t\right) + C \left(S_{t}, t\right)\right) + C_{x} (x, t) S_{t} = C \left(S_{t}, t\right). \tag{18}
$$

In particular, setting  $t = T$ , one sees that the portfolio replicates the CALL. To see that the portfolio is self-financing, integrate the stochastic differential equation (12) for the value of the call to obtain

$$
C \left(S_{t}, t\right) = C \left(S_{0}, 0\right) + \int_{0}^{t} \alpha_{s} dB_{s} + \int_{0}^{t} \beta_{s} dS_{s}. \tag{19)
$$

Substituting  $C(S_{t}, t) = \alpha_{t}B_{t} + \beta_{t}S_{t}$  and  $C(S_{0}, 0) = \alpha_{0}B_{0} + \beta_{0}S_{0}$ , by (18), yields (14).

# 5. THE ARBITRAGE ARGUMENT

It is possible to avoid the use of the Fundamental Theorem and risk-neutral measures in the derivation of the Black-Scholes formula altogether by resorting to an arbitrage argument. Although this argument is somewhat circuitous, it is instructive.

Assume that the price process of the CASH BOND obeys (1), and that the share price process of STOCK obeys the SDE (3). Since we have not assumed that the underlying probability is risk-neutral, it is no longer necessary that  $\mu_t = r_t$ .

Consider the problem of pricing a derivative security whose payoff at expiration  $t = T$  is  $F(S_{T})$ , for some (measurable) function  $F$  of polynomial growth. Let  $V_{0}$  be the  $t = 0$  price of this derivative security.

Theorem 1. Let  $C(x,t)$ , for  $0 \leq t \leq T$  and  $x \in \mathbb{R}_+$ , be the unique solution of the Black-Scholes PDE (10) that satisfies the terminal condition  $C(x,T) = F(x)$ . In the absence of arbitrage,

$$
V_{0} = C \left(S_{0}, 0\right). \tag{20)
$$

Note: The Black-Scholes PDE does not involve the drift coefficient  $\mu_t$  that appears in the SDE 3), and so the function  $C(x,t)$  does not depend in any way on the function  $\mu_t$ . The volatility parameter  $\sigma$  and the short rate  $r_t$  do influence  $C(x,t)$ , but unlike  $\mu_t$  these parameters are "observable" (in particular, the volatility  $\sigma$  is determined by the quadratic variation of the STOCK price process). Thus, two different investors could have two different drift functions in their models for the STOCK price process, but, according to the theorem, would price the derivative security the same way.

Proof. (Sketch.) Define a portfolio  $(\alpha_{t},\beta_{t})_{0\leq t\leq T}$  by equations (16)-(17). By the same argument as in the proof of Proposition 2, the portfolio  $(\alpha_{t},\beta_{t})$  replicates the derivative security, since the terminal condition assures that  $C(x,T) = F(x)$ . Moreover, the Ito formula applies, as earlier, to give the SDE (12)—here we use the assumption that the function  $C(x,t)$  satisfies the Black-Scholes PDE. Now (12) may be integrated as in the proof of Proposition 2 to give (19), which implies, again by the same argument as in the proof of Proposition 2, to show that the portfolio  $(\alpha_{t},\beta_{t})$  is self-financing. Thus, the portfolio  $(\alpha_{t},\beta_{t})$  hedges the derivative security.

Now the arbitrage. Suppose that  $V_{0} < C(S_{0},0)$ ; in this case, one would at time  $t = 0$

- buy 1 derivative security;  
- short the portfolio  $(\alpha_0, \beta_0)$ ; and  
- invest the proceeds  $C(S_0, 0) - V_0$  in CASH BOND.

In the trading period  $0 < t < T$  one would dynamically update the short position  $-(\alpha_0, \beta_0)$  to  $-(\alpha_t, \beta_t)$ , so that at the expiration time  $t = T$  the short position would cancel the payoff from the 1 derivative security bought at  $t = 0$ . Note that no further infusion of assets would be needed for this dynamic updating, because the portfolio  $(\alpha_0, \beta_0)$  is self-financing. At the expiration time  $t = T$ , the net proceeds would be

$$
(C (S_{0}, 0) - V_{0}) B_{T} > 0,
$$

with probability one. Since the position at time  $t = 0$  was flat, this is an arbitrage. Consequently,  $V_{0}$  cannot be less than  $C(S_{0},0)$ . The same argument, "reversed", shows that  $V_{0}$  cannot be more than  $C(S_{0},0)$ .

# 6. EXERCISES

In problems 1-2, assume that there are tradable assets CASH BOND and STOCK whose price processes obey the differential equations

$$
dB_{t} = r_{t} B_{t} dt \quad \text{and} \tag(21)
$$

$$
d S_{t} = S_{t} \left(r_{t} d t + \sigma d W_{t}\right), \tag {22}
$$

where  $W_{t}$  is a standard Wiener process (Brownian motion) and  $r_t$  is the "short rate". Assume that the "short rate"  $r_t$  is a continuous, non-random function of  $t$ .

Problem 1: Consider a contingent claim that pays  $S_T^n$  at time  $T$ , where  $n$  is a positive integer.

(A) Show that the value of this contingent claim at time  $t \leq T$  is

$$
h (t, T) S_{t}^{n}
$$

for some function  $h$  of  $(t, T)$ . HINT: Use the fact that the process  $S_{t}$  is given by (4). You should not need the Itô formula if you start from (4).

(B) Derive an ordinary differential equation for  $h(t,T)$  in the variable  $t$ , and solve it. HINT: Your ordinary differential equation should be first-order, and it should involve only the short rate  $r_t$ .

Problem 2: Let  $C(S_{t}, t; K, T)$  be the price at time  $t$  of a European call option on the tradable asset  $(S_{t})$  with strike price  $K$  and exercise time  $T$ .

(A) Show that the price function  $C$  satisfies the following symmetry properties: for any positive constant  $a$ ,

$$
C (S, t; K, T) = C (S, 0; K, T - t) \tag {23}
$$

$$
C (a S, t; a K, T) = a C (S, t; K, T) \quad \forall a > 0. \tag {24}
$$

(B) Use the result of part (A) to derive an identity relating the partial derivatives  $C_S$  and  $C_K$ .

(C) Find a PDE in the variables  $K, T$  for the function  $C(x,0;K,T)$ . (The equation should involve first and second partial derivatives.)
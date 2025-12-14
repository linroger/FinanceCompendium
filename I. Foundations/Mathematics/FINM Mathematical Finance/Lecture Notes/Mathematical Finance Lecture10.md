---
parent_directory: I. Foundations/Mathematics/FINM Mathematical Finance/Lecture Notes
title: "Lecture 10: Change of Measure and the Girsanov Theorem"
tags:
aliases:
  - Change of Measure and the Girsanov Theorem
parent_folder: Lecture Notes
subfolder:
key_concepts:
cssclasses: academia
linter-yaml-title-alias: "Lecture 10: Change of Measure and the Girsanov Theorem"
---

# LECTURE 10: CHANGE OF MEASURE AND THE GIRSANOV THEOREM

# 1. INTRODUCTION

The Cameron-Martin theorem, which has figured prominently in the developments of the last several lectures, is the most important special case of the far more general Girsanov theorem, which is our next topic of discussion. Like the Cameron-Martin theorem, the Girsanov theorem relates the Wiener measure  $P$  to different probability measures  $Q$  on the space of continuous paths by giving an explicit formula for the likelihood ratios between them. But whereas the Cameron-Martin theorem deals only with very special probability measures, namely those under which paths are distributed as Brownian motion with (constant) drift, the Girsanov theorem applies to nearly all probability measures  $Q$  such that  $P$  and  $Q$  are mutually absolutely continuous.

# 2. EXPONENTIAL MARTINGALES

Let  $\{W_t\}_{0 \leq t < \infty}$  be a standard Brownian motion under the probability measure  $P$ , and let  $(\mathcal{F}_t)_{0 \leq t < \infty}$  be the associated Brownian filtration. Recall that under  $P$ , for any scalar  $\theta \in \mathbb{R}$ , the process  $Z_\theta(t) = \exp \left\{\theta W_t - \theta^2 t / 2\right\}$  is a martingale with respect to  $(\mathcal{F}_t)_{0 \leq t < \infty}$ . These martingales provide the likelihood ratios used to build the probability measures  $\bar{P}_\theta$  described in the Cameron-Martin theorem.

The martingales  $Z_{\theta}(t)$  are instances of a much larger class of exponential martingales defined as follows. Let  $\{\theta_s\}$  be an adapted, locally-  $\mathcal{H}^2$  process (recall that this means that, for every  $t \geq 0$ , the truncated process  $\{\theta_s \mathbf{1}_{\{s \leq t\}}\}$  is in the class  $\mathcal{H}^2$ ). Thus, the Ito integrals  $\int_0^t \theta_s dW_s$  are all well-defined. Define

$$
Z (t) = \exp \left\{\int_ {0} ^ {t} \theta_ {s} d W _ {s} - \frac {1}{2} \int_ {0} ^ {t} \theta_ {s} ^ {2} d s \right\}
$$

Theorem 1. (Novikov) If for each  $t \geq 0$ ,

$$
E \exp \left\{\int_ {0} ^ {t} \theta_ {s} ^ {2} d s / 2 \right\} <   \infty \tag {2}
$$

then for each  $t\geq 0$

$$
E Z (t) = 1. \tag {3}
$$

If this is the case then the process  $\{Z(t)\}_{t\geq 0}$  is a positive martingale.

We shall only prove this in the special case where the process  $\theta_{s}$  is deterministic (nonrandom) and continuous in  $t$ .

First Proof. Because the function  $\theta_t$  is nonrandom, the random variable  $\int_0^t \theta_s \, dW_s$  is normally distributed with mean 0 and variance  $\int_0^t \theta_s^2 \, ds$ . Similarly, for any  $s < t$ , the random variable

$\int_s^t\theta_u dW_u$  is normally distributed and independent of the  $\sigma$ -algebra  $\mathcal{F}_s$ . Consequently, for any  $s < t$ ,

$$
\begin{array}{l} E \left(\exp \left\{\int_ {0} ^ {t} \theta_ {u} d W _ {u} \right\} \mid \mathcal {F} _ {s}\right) = \exp \left\{\int_ {0} ^ {s} \theta_ {u} d W _ {u} \right\} E \left(\exp \left\{\int_ {s} ^ {t} \theta_ {u} d W _ {u} \right\} \mid \mathcal {F} _ {s}\right) \\ = \exp \left\{\int_ {0} ^ {s} \theta_ {u} d W _ {u} \right\} E \exp \left\{\int_ {s} ^ {t} \theta_ {u} d W _ {u} \right\} \\ = \exp \left\{\int_ {0} ^ {s} \theta_ {u} d W _ {u} \right\} \exp \left\{\int_ {s} ^ {t} \theta_ {u} ^ {2} d u / 2 \right\}. \\ \end{array}
$$

(Here we have used the elementary property of the normal distribution that, if  $X \sim \mathrm{Normal}(0, \sigma^2)$ , then  $Ee^{X} = e^{\sigma^2 / 2}$ .) It follows from this that the process  $Z(t)$  is a martingale relative to the filtration  $(\mathcal{F}_t)_{0 \leq t < \infty}$ , and that the equation (3) is valid for all  $t < \infty$ .

Second Proof. We shall apply the Itô formula. Set

$$
f (x, t) = \exp \left\{x - \frac {1}{2} \int_ {0} ^ {t} \theta_ {s} ^ {2} d s \right\} \qquad \mathrm {a n d} \qquad Y _ {t} = \int_ {0} ^ {t} \theta_ {s} d W _ {s};
$$

then

$$
Z (t) = f \left(Y _ {t}, t\right).
$$

The process  $Y_{t}$  is an Ito process, as it is defined by a stochastic integral, and so the Ito formula applies:

$$
\begin{array}{l} d Z (t) = f _ {t} \left(Y _ {t}, t\right) d t + (1 / 2) f _ {x x} \left(Y _ {t}, t\right) d \langle Y, Y \rangle_ {t} + f _ {x} \left(Y _ {t}, t\right) d Y _ {t} \\ = - (1 / 2) \theta_ {t} ^ {2} Z (t) d t + (1 / 2) Z (t) d \langle Y, Y \rangle_ {t} + Z (t) d Y _ {t} \\ = - (1 / 2) \theta_ {t} ^ {2} Z (t) d t + (1 / 2) Z (t) \theta_ {t} ^ {2} d t + Z (t) \theta_ {t} d W _ {t} \\ = Z (t) \theta_ {t} d W _ {t}. \\ \end{array}
$$

This implies that

$$
Z (t) = \int_ {0} ^ {t} Z (s) \theta_ {s} d W _ {s}. \tag {4}
$$

It follows that  $Z(t)$  is an  $L^2$  martingale, provided that for each  $T < \infty$  the process  $Z(t)\mathbf{1}\{t\leq T\}$  is in the class  $\mathcal{H}^2$ . This is easily checked (EXERCISE!) when the integrand  $\theta_{s}$  is nonrandom and continuous, using (for instance) the fact that  $Y_{t}$  has a normal distribution.

# 3. THE GIRSANOV THEOREM

Let  $\{\theta_t\}$  be an adapted process satisfying the hypotheses of Novikov's Proposition, and let  $Z(t)$  be defined by (1). By relation (3), for each  $T > 0$  the random variable  $Z(T)$  is a likelihood ratio: that is, the formula

$$
Q (F) = E _ {P} (Z (T) \mathbf {1} _ {F}) \tag {5}
$$

defines a new probability measure on  $(\Omega, \mathcal{F})$ . Girsanov's theorem describes the distribution of the stochastic process  $\{W(t)\}_{t \geq 0}$  under this new probability measure. Define

$$
\tilde {W} (t) = W (t) - \int_ {0} ^ {t} \theta_ {s} d s \tag {6}
$$

Theorem 2. (Girsanov) Under the probability measure  $Q$ , the stochastic process  $\left\{\tilde{W}(t)\right\}_{0 \leq t \leq T}$  is a standard Wiener process.

This encompasses as a special case the Cameron-Martin Theorem proved earlier. Its uses in mathematical finance theory go far beyond the (relatively) simple calculations of the sort we did in pricing barrier options earlier. To provide a succinct example, we shall next revisit the problem of option pricing in foreign exchange, but under a more general model for exchange rates. In the next lecture, we shall give a more substantial application to the pricing of derivative securities in multi-factor models, including the derivatives known as quantos.

The proof of Girsanov's theorem is given in the appendix.

# 4. FOREIGN EXCHANGE REVISITED

In the previous lecture, we considered perhaps the simplest model of foreign exchange, in which the exchange rate between currencies (for definiteness, the U. S. dollar and the British pound sterling) follows a geometric Brownian motion with constant drift, and the riskless assets in each of the two currencies have constant (but not necessarily equal) rates of return. These assumptions are not always realistic, especially in problems involving contracts with maturities longer than a few months. Here, we shall investigate a more general model, in which the rates of return on the riskless assets and the volatility of the exchange rate process are time-varying, but nonrandom. Thus, it is assumed that the exchange rate  $Y_{t}$  (defined to be the number of British pounds that one dollar will buy at time  $t$ ) obeys a stochastic differential equation of the form

$$
d Y _ {t} = \mu_ {t} Y _ {t} d t + \sigma_ {t} Y _ {t} d W _ {t}, \tag {7}
$$

where both the drift  $\mu_t$  and the volatility  $\sigma_t$  are continuous but nonrandom functions of  $t$ . Furthermore, the riskless assets US MONEYMARKET and UK MONEY MARKET for dollar and pound-sterling investors, reported in units of dollars and British pounds, respectively, have share prices  $A_t$  and  $B_t$  that satisfy the ordinary differential equations

$$
d A _ {t} = r _ {A} (t) A _ {t} d t \quad \text {a n d} \tag {8}
$$

$$
d B _ {t} = r _ {B} (t) B _ {t} d t.
$$

The solutions to these differential equations are

$$
A _ {t} = A _ {0} \exp \left\{\int_ {0} ^ {t} r _ {A} (s) d s \right\} \quad \text {a n d} \tag {9}
$$

$$
B _ {t} = B _ {0} \exp \left\{\int_ {0} ^ {t} r _ {B} (s) d s \right\}.
$$

By Ito's formula, the solution<sup>2</sup> to the stochastic differential equation (7) is

$$
Y _ {t} = Y _ {0} \exp \left\{\int_ {0} ^ {t} \left(\mu_ {s} - \sigma_ {s} ^ {2} / 2\right) d s + \int_ {0} ^ {t} \sigma_ {s} d W _ {s} \right\}. \tag {10}
$$

Proposition 1. Let  $Q_B$  be a risk-neutral probability measure for the pound-sterling investor. If the dollar/pound sterling exchange rate obeys a stochastic differential equation of the form (7), and

if the riskless rates of return for dollar investors and pound-sterling investors are  $r_A(t)$  and  $r_B(t)$ , respectively, then under  $Q_B$  it must be the case that

$$
\mu_ {t} = r _ {B} (t) - r _ {A} (t), \tag {11}
$$

and so the exchange rate  $Y_{t}$  is given by

$$
\frac {Y _ {t}}{Y _ {0}} = \exp \left\{\int_ {0} ^ {t} \left(r _ {B} (s) - r _ {A} (s) - \sigma_ {s} ^ {2} / 2\right) d s + \int_ {0} ^ {t} \sigma_ {s} d W _ {s} \right\}, \tag {12}
$$

where under the measure  $Q_B$  the process  $W_t$  is a standard Brownian motion.

Proof. The proof is essentially the same as in the case of constant coefficients (Lecture 9). The asset US MONEYMARKET is tradeable, so its discounted value in pounds sterling must be a martingale under the risk-neutral measure  $Q_{B}$ . The discounted value at time  $t$  is  $A_{t}Y_{t} / B_{t}$ , which, by equations (9) and (10) is

$$
A _ {t} Y _ {t} / B _ {t} = Y _ {0} \exp \left\{\int_ {0} ^ {t} (\mu_ {s} + r _ {A} (s) - r _ {B} (s) - \sigma_ {s} ^ {2} / 2) d s + \int_ {0} ^ {t} \sigma_ {s} d W _ {s} \right\}.
$$

It is easily checked that this is a martingale only if equation (11) holds.

Proposition 2. Let  $Q_A$  be a risk-neutral probability measure for dollar investors. Then the measures  $Q_A$  and  $Q_B$  are mutually absolutely continuous, and the likelihood ratio on the  $\sigma$ -algebra  $\mathcal{F}_T$  of events observable by time  $T$  is

$$
\left(\frac {d Q _ {A}}{d Q _ {B}}\right) _ {\mathcal {F} _ {T}} = \exp \left\{\int_ {0} ^ {T} \sigma_ {t} d W _ {t} - \frac {1}{2} \int_ {0} ^ {T} \sigma_ {t} ^ {2} d t \right\}. \tag {13}
$$

Proof. The proof is virtually the same as in the case of constant coefficients, and is therefore omitted.  $\square$

The likelihood ratio (13) is an instance of the Girsanov likelihood ratio, and so the Girsanov theorem applies. In particular, it follows that, under the risk-neutral measure  $Q_{A}$  for dollar investors, the process  $W_{t}$  that drives the exchange rate, which under  $Q_{B}$  is a standard Wiener process, is a Wiener process with instantaneous drift  $\sigma_{t} dt$ . Equivalently, the process

$$
\tilde {W} _ {t} := W _ {t} + \int_ {0} ^ {t} \sigma_ {s} d s \tag {14}
$$

is, under  $Q_{A}$ , a standard Brownian motion.

# 5. ABSOLUTE CONTINUITY AND EVENTS OF PROBABILITY ZERO

Lemma 1. Let  $P$  and  $Q$  be mutually absolutely continuous probability measures on a measure space  $(\Omega, \mathcal{F})$ , that is, there is a positive random variable  $Y(= dQ / dP)$  such that for every event  $F \in \mathcal{F}$ ,

$$
Q (F) = E _ {P} \left(Y \mathbf {1} _ {F}\right) \quad a n d \tag {15}
$$

$$
P (F) = E _ {Q} \left(Y ^ {- 1} \mathbf {1} _ {F}\right). \tag {16}
$$

Then for any event  $F\in \mathcal{F}$

$$
P (F) = 0 \quad \Longleftrightarrow \quad Q (F) = 0. \tag {17}
$$

Proof. It is a standard theorem of measure theory that if  $X$  is a random variable that is  $P$ -almost surely zero (that is,  $P\{X = 0\} = 1$ ) then  $X$  is  $P$ -integrable and  $E|X| = EX = 0$ . If  $F \in \mathcal{F}$  is an event such that  $P(F) = 0$ , then the random variable  $Y\mathbf{1}_F$  is  $P$ -almost surely zero, because it assumes the value 0 everywhere on the complement of  $F$ , which is an event of  $P$ -probability one. Consequently, this random variable has  $E_P$ -expectation zero, which by (15) implies that  $Q(F) = 0$ . The converse follows by reversing the roles of  $P$  and  $Q$ .

It is somewhat remarkable that the converse is also true: If  $P$  and  $Q$  are probability measures on a common measure space  $(\Omega, \mathcal{F})$  such that the set of events with  $P$ -probability zero coincides with the set of events with  $Q$ -probability zero, then  $P$  and  $Q$  are mutually absolutely continuous. This is (essentially) the fundamentally important Radon-Nikodym theorem of measure theory.

Lemma 1 is of interest here because it has important ramifications in finance, some of which we now discuss. Suppose that  $\{P_{\theta}\}_{\theta \in \mathbb{R}}$  is a one-parameter family of probability measures on a common probability space such that, under  $P_{\theta}$ , the process  $W_{t}$  is a Brownian motion with drift  $\theta$ . Then by the Strong Law of Large Numbers,

$$
P _ {\theta} \left(G _ {\theta}\right) = 1, \quad \text {w h e r e} G _ {\theta} := \left\{\lim  _ {t \rightarrow \infty} \frac {W _ {t}}{t} = \theta \right\}. \tag {18}
$$

The event  $G_{\theta}$  is an element of the  $\sigma$ -algebra  $\mathcal{F}_{\infty}$  of events observable at time  $\infty$ . For any  $\theta \neq 0$ , the events  $G_{\theta}$  and  $G_{0}$  are mutually exclusive; hence, the measures  $P_{0}$  and  $P_{\theta}$  are not mutually absolutely continuous on  $\mathcal{F}_{\infty}$ , because by (18),  $P_{0}(G_{\theta}) = 0$  and  $P_{\theta}(G_{\theta}) = 1$ . However,  $P_{\theta}$  and  $P_{0}$  are mutually absolutely continuous on  $\mathcal{F}_{t}$ , for any  $t < \infty$  - this is the content of the Cameron-Martin theorem.

Next, recall the quadratic variation law for Brownian paths:

$$
P _ {0} \left(H _ {t}\right) = 1 \quad \text {w h e r e} H _ {t} := \left\{\lim  _ {n \rightarrow \infty} Q V \left(W; \mathcal {D} _ {n} [ 0, t ]\right) = t \right\}. \tag {19}
$$

Here  $QV(X, \Pi)$  denotes the quadratic variation of the process  $X(s)$  relative to the partition  $\Pi$ , and  $\mathcal{D}_n[0, t]$  is the  $n$ th dyadic partition of the interval  $[0, t]$ ; thus,

$$
Q V (W; \mathcal {D} _ {n} [ 0, t ]) = \sum_ {k = 1} ^ {2 ^ {n} t} \{W (k / 2 ^ {n}) - W ((k - 1) / 2 ^ {n}) \} ^ {2}.
$$

Statement (19) is equivalent to the statement that the event  $H_{t}^{c}$  has  $P_{0}$ -probability zero. Since this event is an element of the  $\sigma$ -algebra  $\mathcal{F}_{t}$ , it follows from Lemma 1 that for any probability measure  $Q$  such that  $P_{0}$  and  $Q$  are mutually absolutely continuous on  $\mathcal{F}_{t}$ , the quadratic variation law holds:

$$
Q \left(H _ {t}\right) = 1. \tag {20}
$$

In particular (by the Cameron-Martin and Girsanov theorems), Brownian motion with drift satisfies the same quadratic variation law as does standard (driftless) Brownian motion.

Finally, consider the Itô process

$$
X _ {t} := \int_ {0} ^ {t} \sigma_ {s} d W _ {s}, \tag {21}
$$

where  $\sigma_{t}$  is an adapted, locally  $\mathcal{H}^2$  integrand. Here  $W_{t}$  is a standard Brownian motion under  $P_0$ . By the extended quadratic variation law (Lecture 6), for each  $t < \infty$ ,

$$
P _ {0} \left\{\lim  _ {n \rightarrow \infty} Q V (X; \mathcal {D} _ {n} [ 0, t ]) = \int_ {0} ^ {t} \sigma_ {s} ^ {2} d s \right\} = 1 \tag {22}
$$

By Lemma 1, the same is true for any probability measure  $Q$  such that  $P_0$  and  $Q$  are mutually absolutely continuous on  $\mathcal{F}_t$ . Thus, by the Girsanov theorem, a change of drift in  $W_t$  (or equivalently in  $X_t$ ) has no effect on quadratic variation. This could, of course, have been proved directly, without recourse to Girsanov or Lemma 1, but the argument given here is completely painless.

These observations explain, at least in part, why dollar investors and pound-sterling investors may have different "opinions" about the drift term in the exchange rate process (or, more generally, about the drift term in the stochastic differential equation for any tradeable asset) but must agree on the volatility process. The volatility process is always (at least in principle) observable, by the quadratic variation laws, but drift processes are not.

# 6. EXERCISES

1. Time-varying short rates and volatility. Let  $S_{t}$  be the share price at time  $t$  of a risky asset STOCK. Suppose that  $S_{t}$  obeys a stochastic differential equation of the form

$$
d S _ {t} = \mu_ {t} S _ {t} d t + \sigma_ {t} S _ {t} d W _ {t} \tag {23}
$$

where  $\mu_t$  and  $\sigma_t$  are continuous but nonrandom functions of time  $t$ . Suppose also that the market has a riskless asset MONEYMARKET whose share price  $B_t$  obeys the ordinary differential equation

$$
d B _ {t} = r _ {t} B _ {t} d t, \tag {24}
$$

where the "short rate"  $r_t$  is again a continuous but nonrandom function of  $t$ .

(A) Solve the differential equations (23) and (24).  
(B) Prove that, under any risk-neutral measure,  $\mu_t = r_t$ .  
(C) Find a formula for the arbitrage price of a European CALL option on STOCK with strike price  $K$  and expiration  $T$ . HINT: Your answer should be of the same form as the Black-Scholes formula. The quantities

$$
\int_ {0} ^ {T} r _ {t} d t \quad \text {a n d} \quad \int_ {0} ^ {T} \sigma_ {t} ^ {2} d t
$$

should figure prominently in the answer.

# 7. APPENDIX: PROOF OF THE GIRSANOV THEOREM

Given the Novikov theorem (Theorem 1), the Girsanov theorem is nothing more than a routine calculation. To show that the process  $\tilde{W}_t$ , under  $Q$ , is a standard Wiener process, it suffices to show that it has independent, normally distributed increments with the correct variances. For this, it suffices to show that the joint moment generating function (under  $Q$ ) of the increments

$$
\tilde {W} (t _ {1}), \tilde {W} (t _ {2}) - \tilde {W} (t _ {1}), \dots , \tilde {W} (t _ {n}) - \tilde {W} (t _ {n - 1})
$$

where  $0 < t_1 < t_2 < \dots < t_n$ , is the same as that of  $n$  independent, normally distributed random variables with expectations 0 and variances  $t_1, t_2 - t_1, \ldots$ , that is,

$$
E _ {Q} \exp \left\{\sum_ {k = 1} ^ {n} \alpha_ {k} \left(\tilde {W} \left(t _ {k}\right) - \tilde {W} \left(t _ {k - 1}\right)\right) \right\} = \prod_ {k = 1} ^ {n} \exp \left\{\alpha_ {k} ^ {2} \left(t _ {k} - t _ {k - 1}\right) \right\}. \tag {25}
$$

We shall do only the case  $n = 1$ , leaving the rest to the industrious reader as an exercise. To evaluate the expectation  $E_{Q}$  on the left side of (25), we rewrite as an expectation under  $P$ , using

the basic likelihood ratio identity relating the two expectation operators:

$$
\begin{array}{l} E _ {Q} \exp \left\{\alpha \tilde {W} (t) \right\} = E _ {Q} \exp \left\{\alpha W (t) - \alpha \int_ {0} ^ {t} \theta_ {s} d s \right\} \\ = E _ {P} \exp \left\{\alpha W (t) - \alpha \int_ {0} ^ {t} \theta_ {s} d s \right\} \exp \left\{\int_ {0} ^ {t} \theta_ {s} d W _ {s} - \int_ {0} ^ {t} \theta_ {s} ^ {2} d s / 2 \right\} \\ = E _ {P} \exp \left\{\int (\alpha + \theta_ {s}) d W _ {s} - \int_ {0} ^ {t} (2 \alpha \theta_ {s} + \theta_ {s} ^ {2}) d s / 2 \right\} \\ = e ^ {\alpha^ {2} t / 2} E _ {P} \exp \left\{\int (\alpha + \theta_ {s}) d W _ {s} - \int_ {0} ^ {t} (\alpha + \theta_ {s}) ^ {2} d s / 2 \right\} \\ = e ^ {\alpha^ {2} t}, \\ \end{array}
$$

as desired. Notice that in the last step we used the fact that the exponential integrates to one, a consequence of Novikov's theorem, and that in the second to last step we merely completed a square. Thus, in the final analysis, the argument turns on the same trick as was used to prove the Cameron-Martin theorem.
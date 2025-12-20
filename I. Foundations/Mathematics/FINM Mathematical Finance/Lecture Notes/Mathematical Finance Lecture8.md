---
parent_directory: I. Foundations/Mathematics/FINM Mathematical Finance/Lecture Notes
title: 'Lecture 8: The Cameron-Martin Formula and Barrier Options'
tags: null
aliases:
- The Cameron-Martin Formula and Barrier Options
parent_folder: Lecture Notes
subfolder: null
key_concepts: null
cssclasses: academia
linter-yaml-title-alias: 'Lecture 8: The Cameron-Martin Formula and Barrier Options'
primary_tags:
- exponential martingale
- geometric brownian motion
- subsequent lecture
secondary_tags:
- several exotic options
- cameron martin formula
- cameron martin introduction
- certain threshold value
- driving brownian motion
- brownian motion
tags_extracted: '2025-12-18T17:58:15.284513'
tags_method: max_quality_v1
---

# LECTURE 8: THE CAMERON-MARTIN FORMULA AND BARRIER OPTIONS

# 1. INTRODUCTION

Thus far in our study of continuous-time markets, we have considered only very simple derivative securities, the European contingent claims (contingent claims whose payoffs are functions only of the terminal share price of the underlying asset). In this lecture, we shall study several exotic options – the knockins/knockouts and barrier options – whose payoffs depend on the entire history of the share price up to termination. These options are "activated" (or, in some cases, "deactivated") when the share price of the underlying asset reaches a certain threshold value. If, as in the simple Black-Scholes model, the share price process behaves as a geometric Brownian motion under the risk-neutral measure, then the time at which the option is activated is the first-passage time of the driving Brownian motion to a linear boundary. Thus, it should be no surprise that the exponential martingales of Lecture 5 play a central role in the pricing and hedging of barrier and knockin/knockout options. The use of these martingales is greatly facilitated by the Cameron-Martin theorem, a precursor to the Girsanov theorem, which will be discussed in a subsequent lecture.

# 2. THE CAMERON-MARTIN THEOREM

2.1. Exponential Martingales. Let  $\{W_t = W(t)\}_{t \geq 0}$  be a standard Brownian motion, defined on a probability space  $(\Omega, \mathcal{F}, P)$ , and  $\{\mathcal{F}_t\}_{t \geq 0}$  the associated Brownian filtration. For any real number  $\theta$ , define a stochastic process  $\{Z_\theta(t)\}_{t \geq 0}$  as follows:

$$
Z _ {\theta} (t) = \exp \left\{\theta W (t) - \theta^ {2} t / 2 \right\}. \tag {1}
$$

Proposition 1. For each  $\theta \in \mathbb{R}$  the process  $\{Z_{\theta}(t)\}_{t\geq 0}$  is a positive martingale relative to the Brownian filtration.

Proof. The proof was sketched in Lecture 5. Here is a reprise:

What must be shown is that for any  $s, t \geq 0$ ,  $E(Z_{\theta}(t + s) \mid \mathcal{F}_s) = Z_{\theta}(s)$ . For this, we shall use an elementary fact about the normal distribution: If  $X$  is normally distributed with mean zero and variance  $\sigma^2$ , then for any  $\theta \in \mathbb{R}$ ,

$$
E \exp \{\theta X \} = \exp \{\theta^ {2} / 2 \}. \tag {2}
$$

(The alert reader will immediately recognize that this calculation may be done by "completing the square".) Now to establish the martingale property of the process  $Z_{\theta}(t)$ , proceed as follows, using elementary properties of conditional expectation and the fact that the random variable  $W(t + s) -$

$W(s)$  is independent of the  $\sigma$ -algebra  $\mathcal{F}_s$ :

$$
\begin{array}{l} E \left(Z _ {\theta} (t + s) \mid \mathcal {F} _ {s}\right) = E \left(\exp \left\{\theta W (t + s) - \theta^ {2} (t + s) / 2 \right\} \mid \mathcal {F} _ {s}\right) \\ = E \left(\exp \left\{\theta W (s) - \theta^ {2} s / 2 \right\} \exp \left\{\theta \left(W (t + s) - W (s)\right) - \theta^ {2} t / 2 \right\} \mid \mathcal {F} _ {s}\right) \\ = \exp \left\{\theta W (s) - \theta^ {2} s / 2 \right\} E \left(\exp \left\{\theta (W (t + s) - W (s)) - \theta^ {2} t / 2 \right\} \mid \mathcal {F} _ {s}\right) \\ = Z _ {\theta} (s) E \left(\exp \left\{\theta \left(W (t + s) - W (s)\right) - \theta^ {2} t / 2 \right\} \mid \mathcal {F} _ {s}\right) \\ = Z _ {\theta} (s) E \exp \left\{\theta \left(W (t + s) - W (s)\right) - \theta^ {2} t / 2 \right\} \\ = Z _ {\theta} (s). \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/d5388596-b214-4866-adb0-2d0b9a833620/110bb35612823bc82c6e5c5524fb83080edc96760a4d8df0b4ab6fcec79340ce.jpg)

2.2. Likelihood Ratios. Let  $(\Omega, \mathcal{F}, P)$  be any probability space on which is defined a positive random variable  $Z$  with expectation  $EZ = 1$ . The random variable  $Z$  may be used to define a new probability measure  $Q$  on  $(\Omega, \mathcal{F})$  as follows: For any event  $F \in \mathcal{F}$ , set

(3)  $Q(F) = E_P(Z\mathbf{1}_F)$

To prove that  $Q$  is actually a probability measure, we must show that (i)  $Q(F) > 0$  for any event  $F$ ; (ii)  $Q(\Omega) = 1$ ; and (iii)  $Q$  is countably additive. The first of these properties follows from the hypothesis that  $Z > 0$ , in view of equation (3), and the second follows by the simple calculation  $Q(\Omega) = E_{P}(Z \cdot 1) = E_{P}Z = 1$ . To see that  $Q$  is countably additive, observe that if  $F_{1}, F_{2}, \ldots$  is a sequence of pairwise disjoint events whose union is  $\cup F_{n} = F$ , then  $\mathbf{1}_{F} = \sum_{n} \mathbf{1}_{F_{n}}$ , and so, by the monotone convergence theorem,

$$
Q (F) = E _ {P} (Z \mathbf {1} _ {F}) = E _ {P} (Z \sum_ {n = 1} ^ {\infty} \mathbf {1} _ {F _ {n}}) = \sum_ {n = 1} ^ {\infty} E _ {P} (Z \mathbf {1} _ {F _ {n}})) = \sum_ {n = 1} ^ {\infty} Q (F _ {n}).
$$

Proposition 2. The expectation operators  $E_P$  and  $E_Q$  are related as follows: for any nonnegative random variable  $Y$ ,

(4)  $E_{Q}Y = E_{P}(YZ)$  and

(5)  $E_{P}Y = E_{Q}(Y / Z).$

Proof. (Sketch) The first identity (4) is true for indicator random variables  $Y = \mathbf{1}_F$  by definition of the probability measure  $Q$ . Consequently, it is also true for all simple random variables  $Y$  (linear combinations of indicators), by linearity of expectation operators. Finally it is true for all nonnegative random variables  $Y$  by approximation: any nonnegative r.v.  $Y$  is the monotone limit of simple r.v.s, and so the monotone convergence theorem guarantees that the identity (4) persists.

To see that the identity (5) is valid for all nonnegative random variables  $Y$ , note that it is true for any random variable  $Y$  of the form  $Y = Y'Z$ , where  $Y'$  is a nonnegative random variable, by the first identity (4). But every nonnegative random variable  $Y$  is of this form, since  $Z > 0!$

When two probability measures  $P$  and  $Q$  satisfy relations (4) and (5) for some positive random variable  $Z$ , the measures are said to be mutually absolutely continuous (abbreviated a.c.), and the random variable  $Z$  is called the likelihood ratio (or Radon-Nikodym derivative) of the probability measure  $Q$  with respect to the probability measure  $P$ . The notation

(6)  $\frac{dQ}{dP} := Z$

is often used, because if one interprets the expectations in the identities (4) and (5) as integrals then these identities are revealed as nothing more than change-of-variable formulas:

$$
E _ {Q} Y = \int Y d Q = \int Y \left(\frac {d Q}{d P}\right) d P = E _ {P} (Z Y).
$$

Caution: The likelihood ratio of a probability measure  $Q$  relative to another probability measure  $P$  depends on the  $\sigma$ -algebra  $\mathcal{F}$  on which the probability measures are defined. In particular, the likelihood ratio must be measurable with respect to this  $\sigma$ -algebra. In certain situations there may be more than one  $\sigma$ -algebra of interest. The following proposition spells out the relation between likelihood ratios on different  $\sigma$ -algebras:

Proposition 3. Let  $P, Q$  be mutually a.c. probability measures on  $(\Omega, \mathcal{F})$ , with likelihood ratio  $Z = (dQ / dP)_{\mathcal{F}}$ . Suppose that  $\mathcal{G}$  is a  $\sigma$ -algebra of events contained in  $\mathcal{F}$ . Then the likelihood ratio of  $Q$  relative to  $P$  on the  $\sigma$ -algebra  $\mathcal{G}$  is

$$
\left(\frac {d Q}{d P}\right) _ {\mathcal {G}} = E _ {P} (Z \mid \mathcal {G}). \tag {7}
$$

Proof. It must be shown that, for every event  $G \in \mathcal{G}$ ,

$$
Q (G) = E _ {P} \left(\mathbf {1} _ {G} E _ {P} (Z \mid \mathcal {G})\right). \tag {8}
$$

By hypothesis,  $\mathcal{G} \subset \mathcal{F}$ ; consequently,  $G \in \mathcal{F}$ , and so  $Y = \mathbf{1}_G$  is  $\mathcal{F}$ -measurable (and, of course, also  $\mathcal{G}$ -measurable). Furthermore, also by hypothesis,  $Z$  is the likelihood ratio of  $Q$  relative to  $P$  on the  $\sigma$ -algebra  $\mathcal{F}$ . Therefore, by equation (4), with  $Y = \mathbf{1}_G$ ,

$$
Q (G) = E _ {Q} \mathbf {1} _ {G} = E _ {P} (Z \mathbf {1} _ {G}).
$$

The last expectation may be evaluated using the Tower Rule for conditional expectation: since  $\mathbf{1}_G$  is  $\mathcal{G}$ -measurable, it factors out of the conditional expectation on  $\mathcal{G}$ , yielding

$$
\begin{array}{l} Q (G) = E _ {P} \left(Z \mathbf {1} _ {G}\right) \\ = E _ {P} \left(E _ {P} \left(Z \mathbf {1} _ {G} \mid \mathcal {G}\right)\right) \\ = E _ {P} \left(\mathbf {1} _ {G} E _ {P} (Z, | \mathcal {G})\right), \\ \end{array}
$$

as desired.

Proposition 3 shows that, if  $\{\mathcal{F}_t\}$  is a filtration of a probability space  $\Omega$ , and if  $P, Q$  are mutually absolutely continuous probability measures on  $\mathcal{F}_T$  for some  $T \leq \infty$ , then  $P, Q$  are mutually absolutely continuous on every  $\mathcal{F}_t$  such that  $t \leq T$ , and that the Radon-Nikodym derivatives

$$
\left(\frac {d Q}{d P}\right) _ {\mathcal {F} _ {t}}
$$

constitute a martingale (relative to  $P$ ) for  $0 \leq t \leq T$ .

2.3. Digression: Likelihood Ratios and Simulation by Importance Sampling. The identities (4) and (5) may be interpreted as formal laws relating the calculation of expectations under the two probability measures  $P$  and  $Q$ . As such, they serve as a computational aid: to compute an expectation  $E_{P}Y$ , one may look for a convenient auxiliary probability measure  $Q$  and then compute the expectation  $E_{Q}(YZ)$  under  $Q$ . Later, we shall give some examples to show how this technique may be used in options pricing.

One may also use the identity (4) as a tool for approximate computations or simulations. The idea is as follows. In the naive approach to simulation, if one has access to a stream of i.i.d.

random variables  $Y_{1}, Y_{2}, \ldots$ , each with the same distribution as does the random variable  $Y$  under the probability measure  $P$ , one could approximate the expectation  $E_{P}Y$  by the sample averages

$$
\bar {Y} _ {n} = n ^ {- 1} \sum_ {j = 1} ^ {n} Y _ {j}.
$$

By the Law of Large Numbers, these sample averages must converge to  $E_P Y$  as  $n \to \infty$ ; however, the convergence might be slow. Now suppose instead that one has access to a stream of i.i.d. pairs of random variables  $(Y_1, Z_1), (Y_2, Z_2), \ldots$ , each with the same joint distribution as the pair  $(Y, Z)$  under the measure  $Q$ . Then one could approximate the expectation  $E_P Y$  by the sample averages

$$
n ^ {- 1} \sum_ {j = 1} ^ {n} Y _ {j} Z _ {j}.
$$

Once again, the Law of Large Numbers implies that these averages converge to the desired quantity  $E_{P}Y = E_{Q}(YZ)$ . If  $Q$  is suitably chosen, the convergence may sometimes be considerably faster than for the naive simulation estimates. This technique of simulation is called importance sampling, because it reweights  $Y$ -values so as to make some more "important" than others.

2.4. The Cameron-Martin Theorem. Once again, let  $\{W_t = W(t)\}_{t \geq 0}$  be a standard Brownian motion, defined on a probability space  $(\Omega, \mathcal{F}, P)$ , and let  $\{\mathcal{F}_t\}_{t \geq 0}$  the associated Brownian filtration. For each real number  $\theta$  and each  $T > 0$ , the random variable  $Z_{\theta}(T)$  defined by equation (1) is a positive random variable with expectation one. Hence, it is a likelihood ratio. Denote by  $P_{\theta}$  and  $E_{\theta}$  the probability measure and expectation operator determined by the likelihood ratio  $Z_{\theta}(T)$  on the probability space  $(\Omega, \mathcal{F}_T)$ : that is, for every event  $F \in \mathcal{F}_T$  and every  $\mathcal{F}_T$ -measurable, nonnegative random variable  $Y$ ,

(9)  $P_{\theta}(F) = E_0(Z_{\theta}(T)\mathbf{1}_F),$ $E_{\theta}Y = E_0(Z_{\theta}(T)Y),$  and

(10)  $P_0(F) = E_\theta(Z_\theta(T)^{-1}\mathbf{1}_F),$ $E_0Y = E_\theta(Z_\theta(T)^{-1}Y)$ .

The important theorem of CAMERON & MARTIN describes the distribution of the random process  $\{W_t\}_{t \geq 0}$  under the tilted measure  $P_{\theta}$ :

Theorem 1. (Cameron-Martin) Under the probability measure  $P_{\theta}$ , the process  $\{W(t)\}_{0 \leq t \leq T}$  has the same law (joint distribution) as a Brownian motion with drift  $\theta$ . Equivalently, the stochastic process  $\{W(t)\}_{0 \leq t \leq T}$  has the same law under  $P_{\theta}$  as the process  $\{W(t) + \theta t\}_{0 \leq t \leq T}$  has under the probability measure  $P = P_{0}$ .

Proof. To make this at least plausible, let's consider the distribution of the single random variable  $W_{T} = U$  under the probability measure  $P_{\theta}$ . To simplify the calculation, assume that  $T = 1$ . For

any real number  $y$

$$
\begin{array}{l} P _ {\theta} \{U \leq y \} = E Z _ {\theta} (1) \mathbf {1} \{U \leq y \} \\ = E \exp \left\{\theta U - \theta^ {2} / 2 \right\} \mathbf {1} \{U \leq y \} \\ = \int_ {- \infty} ^ {y} \exp \left\{\theta u - \theta^ {2} / 2 \right\} \exp \left\{- u ^ {2} / 2 \right\} d u / \sqrt {2 \pi} \\ = \int_ {- \infty} ^ {y} \exp \left\{- (u - \theta) ^ {2} / 2 \right\} d u / \sqrt {2 \pi} \\ = \int_ {- \infty} ^ {y + \theta} \exp \left\{- v ^ {2} / 2 \right\} d v / \sqrt {2 \pi} \\ = P _ {0} \{U - \theta \leq y \} \\ \end{array}
$$

Thus, under the probability measure  $P_{\theta}$ , the random variable  $U = W_{1}$  has the same distribution as does the random variable  $W_{1} + \theta$  under the probability measure  $P_{0}$ .

To prove the theorem, we must show that, for any  $0 = t_0 < t_1 < \dots < t_n = T$ , the joint distribution of the random variables  $W(t_0), W(t_1), \ldots, W(t_n)$  under  $P_{\theta}$  is the same as the joint distribution of  $W(t_0) + \theta t_0, W(t_1) + \theta t_1, \ldots, W(t_n) + \theta t_n$  under  $P_0$ . Equivalently, we must show that the joint distribution of the increments  $(\Delta W)_1, (\Delta W)_2, \ldots, (\Delta W)_n$  under  $P_{\theta}$  is the same as that of  $(\Delta W + \theta \Delta t)_1, (\Delta W + \theta \Delta t)_2, \ldots, (\Delta W + \theta \Delta t)_n$  under  $P_0$ . Here  $(\Delta W)_k = W(t_k) - W(t_{k-1})$  and  $(\Delta t)_k = t_k - t_{k-1}$ . Consider the joint moment generating function:

$$
\begin{array}{l} E _ {\theta} \exp \{\sum_ {k = 1} ^ {n} \lambda_ {k} (\Delta W) _ {k} \} = E _ {0} Z _ {\theta} (T) \exp \{\sum_ {k = 1} ^ {n} \lambda_ {k} (\Delta W) _ {k} \} \\ = E _ {0} \exp \left\{\theta W \left(t _ {n}\right) - \theta^ {2} t _ {n} / 2 \right\} \exp \left\{\sum_ {k = 1} ^ {n} \lambda_ {k} (\Delta W) _ {k} \right\} \\ = E _ {0} \exp \left\{\sum_ {k = 1} ^ {n} \left(\lambda_ {k} + \theta\right) (\Delta W) _ {k} \right\} \exp \left\{- \theta^ {2} t _ {n} / 2 \right\} \\ = \exp \left\{- \theta^ {2} t _ {n} / 2 \right\} \prod_ {k = 1} ^ {n} E _ {0} \exp \left\{\left(\lambda_ {k} + \theta\right) (\Delta W) _ {k} \right\} \\ = \exp \left\{- \theta^ {2} t _ {n} / 2 \right\} \prod_ {k = 1} ^ {n} \exp \left\{\left(\lambda_ {k} + \theta\right) ^ {2} (\Delta t) _ {k} / 2 \right\} \\ = \prod_ {k = 1} ^ {n} \exp \left\{\lambda_ {k} ^ {2} (\Delta t) _ {k} / 2 + \theta \lambda_ {k} (\Delta t) _ {k} \right\} \\ = E _ {0} \exp \left\{\sum_ {k = 1} ^ {n} \lambda_ {k} (\Delta W + \theta \Delta t) _ {k} \right\}. \\ \end{array}
$$

This proves the result, because if the joint moment generating functions of two distributions are the same, then their joint distributions are the same.

2.5. Cameron-Martin Theorem: Some Ramifications. The Cameron-Martin theorem relates Brownian motion with drift to standard Brownian motion, that is, Brownian motion with no

drift. Thus, implicitly, it also relates Brownian motions with different drifts. In particular, the expectation operators  $E_{\theta}$  and  $E_{\alpha}$  are related as follows:

# Corollary 1.

$$
\left(\frac {d P _ {\theta}}{d P _ {\alpha}}\right) _ {\mathcal {F} _ {T}} = \frac {Z _ {\theta} (T)}{Z _ {\alpha} (T)} = \exp \left\{(\theta - \alpha) W _ {T} - (\theta^ {2} - \alpha^ {2}) T / 2 \right\}. \tag {11}
$$

Proof. This identity simply means that for any event  $F \in \mathcal{F}_T$  and any nonnegative  $\mathcal{F}_T$ -measurable random variable  $Y$ ,

$$
P _ {\theta} (F) = E _ {\alpha} \left(\frac {Z _ {\theta} (T)}{Z _ {\alpha} (T)}\right) \mathbf {1} _ {F} \quad \text {a n d} \quad E _ {\theta} Y = E _ {\alpha} \left(\frac {Z _ {\theta} (T)}{Z _ {\alpha} (T)}\right) Y. \tag {12}
$$

These equations are obtained from the identities (9) and (10) by routine substitutions.

The Cameron-Martin formula (11) gives an explicit formula for the likelihood ratio  $dP_{\theta} / dP_{\alpha}$  on the  $\sigma$ -algebra  $\mathcal{F}_T$ . It is not difficult to deduce a similar formula for the  $\sigma$ -algebra  $\mathcal{F}_{\tau}$  of a bounded stopping time. Recall that if  $\tau$  is a stopping time, then the  $\sigma$ -algebra  $\mathcal{F}_{\tau}$  consists of all events that are "observable" by time  $\tau$ .<sup>1</sup>

Corollary 2. If  $\tau$  is a bounded stopping time, then

$$
\left(\frac {d P _ {\theta}}{d P _ {\alpha}}\right) _ {\mathcal {F} _ {\tau}} = \frac {Z _ {\theta} (\tau)}{Z _ {\alpha} (\tau)} = \exp \left\{(\theta - \alpha) W _ {\tau} - \left(\theta^ {2} - \alpha^ {2}\right) \tau / 2 \right\}. \tag {13}
$$

Proof. It suffices to consider the case where  $\alpha = 0$ , as the general case may then be deduced by the same calculations as in the proof of Corollary 1. To prove the identity (13), it suffices to show that for any nonnegative  $\mathcal{F}_{\tau}$ -measurable random variable  $Y$ ,

$$
E _ {\theta} Y = E _ {0} \left(Z _ {\theta} (\tau) Y\right). \tag {14}
$$

Since  $\tau$  is bounded, there is some nonrandom  $T < \infty$  such that  $\tau \leq T$ . For any such  $T$ , if  $Y$  is  $\mathcal{F}_{\tau}$ -measurable, then it is also  $\mathcal{F}_T$ -measurable (because  $\mathcal{F}_{\tau} \subset \mathcal{F}_T$ ). Consequently, by Corollary 1 (in particular, by equation (12)),

$$
E _ {\theta} Y = E _ {0} (Z _ {\theta} (T) Y).
$$

To deduce (14), we exploit the fact that the process  $Z_{\theta}(t)$  is a martingale, together with elementary properties of conditional expectation:

$$
\begin{array}{l} E _ {\theta} Y = E _ {0} \left(Z _ {\theta} (T) Y\right) \\ = E _ {0} E _ {0} \left(Z _ {\theta} (T) Y \mid \mathcal {F} _ {\tau}\right) \\ = E _ {0} \left(Y E _ {0} \left(Z _ {\theta} (T) \mid \mathcal {F} _ {\tau}\right)\right) \\ = E _ {0} \left(Y Z _ {\theta} (\tau)\right). \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/d5388596-b214-4866-adb0-2d0b9a833620/eeca3b4cecc1913ec8b44a2f82c079cc1689bf9210533ec78171620ef6cb1ce8.jpg)

# 3. EXAMPLE: A BROWNIAN FIRST-PASSAGE PROBLEM

As a first application of the Cameron-Martin theorem, we shall calculate the probability that a standard Brownian motion  $W_{t}$  ever reaches a straight line with nonzero slope. Although this problem may easily be solved using only the Optional Stopping Formula, in conjunction with an exponential martingale, the use of the Cameron-Martin theorem is instructive, as it will serve as a model for the solution of more complicated problems later.

Let  $W_{t}$  be a standard Brownian motion under the probability measure  $P = P_{0}$ , and let  $\nu$  be the time of first passage to the straight line with slope  $b > 0$  and intercept  $a > 0$ , that is,

$$
\nu := \min  \{t \geq 0: W _ {t} = a + b t \} \tag {15}
$$

$$
:= \infty \quad \text {i f t h e r e i s n o s u c h} t.
$$

The problem is to evaluate  $P_0\{\nu < \infty\}$ . Observe that the problem may be recast as a first-passage problem for a Brownian motion with drift  $-b$ , because  $\nu$  is the first time that  $W_t - bt = a$ , and  $\{W_t - bt\}_{t \geq 0}$  is a Brownian motion with drift  $-b$ . In particular, the probability we wish to evaluate is

$$
P _ {0} \left\{\nu <   \infty \right\} = P _ {- b} \left\{\tau (a) <   \infty \right\} = \lim  _ {n \rightarrow \infty} P _ {- b} \left\{\tau (a) <   n \right\}, \tag {16}
$$

where  $\tau (a)\coloneqq \min \{t\geq 0:W_t = a\}$

To calculate the probability (16), we use Corollary 2 above, with  $Q = P_{-b}$  and  $Q^{*} = P_{b}$ . The likelihood ratio (Radon-Nikodym derivative) of  $P_{b}$  relative to  $P_{-b}$  on the  $\sigma$ -algebra  $\mathcal{F}_{\tau(a)\wedge n}$  is

$$
\left(\frac {d P _ {- b}}{d P _ {b}}\right) _ {\mathcal {F} _ {\tau (a) \wedge n}} = \exp \{- 2 b W _ {\tau (a) \wedge n} \},
$$

which takes the value  $\exp\{-2ba$  on the event  $\tau(a) < n$ . Consequently, by the Cameron-Martin formula (13),

$$
\begin{array}{l} P _ {- b} \left\{\tau (a) <   n \right\} = E _ {b} \exp \{- 2 b a \} \mathbf {1} \left\{\tau (a) <   n \right\} \tag {17} \\ = \exp \{- 2 b a \} P _ {b} \{\tau (a) <   n \} \\ \longrightarrow \exp \{- 2 b a \}, \\ \end{array}
$$

as  $n\to \infty$ , because under the measure  $P_{b}$ , the process  $W_{t}$  is a Brownian motion with positive drift  $+b$  and so must eventually reach the level  $a$ , by the Law of Large Numbers. Thus,

$$
\boxed {P _ {0} \{\nu <   \infty \} = \exp \{- 2 b a \}.} \tag {18}
$$

# 4. BARRIER OPTIONS

To further illustrate the usefulness of the Cameron-Martin theorem, we shall evaluate the arbitrage prices for a simple class of barrier options. A similar method works for the pricing of various knockout and knockin options (see the Exercises below for an example). The BARRIER option that we shall consider here is a contingent claim whose payoff at expiration  $T$  is

$$
\eta = \mathbf {1} \bigl \{\max _ {0 \leq t \leq T} S _ {T} \geq A \bigr \},
$$

where  $A$  is the activation parameter. Thus, the option pays off \$1 if and only if the share price of STOCK rises to at least  $A$  sometime during the time interval  $[0, T]$ . We shall assume that the price

processes of the assets STOCK and CASH BOND are (under the risk-neutral measure  $P = P_{0}$ )

$$
S _ {t} = S _ {0} \exp \left\{\left(r - \sigma^ {2} / 2\right) t + \sigma W _ {t} \right\} \tag {19}
$$

$$
B _ {t} = B _ {0} \exp \{r t \} \tag {20}
$$

with  $\sigma = 1$  (for simplicity) and  $r > 0$ . We may then write the arbitrage price at  $t = 0$  of the BARRIER as the discounted expected value of its value  $\eta$  at expiration:

$$
\begin{array}{l} V _ {0} = e ^ {- r T} P _ {0} \left\{\max  _ {0 \leq t \leq T} S _ {t} \geq A \right\} \tag {21} \\ = e ^ {- r T} P _ {0} \{\max  _ {0 \leq t \leq T} (W _ {t} + r t - t / 2) \geq \alpha \} \\ \end{array}
$$

where  $\alpha = \log A$ . Our objective is to evaluate the probability in equation (21). The difficulty is that the event involves the entire path of the Brownian motion up to time  $T$ , and in a somewhat complicated way. Notice, though, that if the event were changed by replacing  $W(t) + rt - t / 2$  with  $W(t)$ , then the probability in (21) could be calculated exactly, by the reflection principle. This calculation was carried out in Lecture 5.

Our strategy for dealing with the probability in equation (21) will be to use the Cameron-Martin formula to "tilt" the sloped line back to a horizontal line, then use the reflection principle to evaluate the resulting expectation. This two-stage use of Cameron-Martin and reflection works also in various other option-pricing problems involving barriers, although the details of the calculations will generally be different. The first order of business is to settle on a suitable drift parameter  $\theta$ ; the "right" choice here is

$$
\theta = - r + 1 / 2,
$$

because for this  $\theta$ , the process  $W(t)$  is, under  $P_{\theta}$ , a Brownian motion with drift  $-r + 1/2$ . Thus, if we set

$$
\tilde {W} (t) = W _ {t} + r t - t / 2,
$$

then under  $P_{\theta}$ , the process  $\tilde{W}(t)$  will be (up to time  $T$ ) a standard (driftless) Brownian motion. Thus,

$$
\begin{array}{l} P _ {0} \{\min  _ {0 \leq t \leq T} (W _ {t} + r t - t / 2) \geq \alpha \} = E _ {\theta} \exp \{- \theta W (T) + \theta^ {2} T / 2 \} \mathbf {1} \{\min  _ {0 \leq t \leq T} (W _ {t} + r t - t / 2) \geq \alpha \} \\ = E _ {\theta} \exp \left\{- \theta \tilde {W} (T) + \theta^ {2} T / 2 - \theta r T + \theta T / 2 \right\} \mathbf {1} \left\{\min  _ {0 \leq t \leq T} \tilde {W} (t) \geq \alpha \right\} \\ = e ^ {(\theta^ {2} - 2 \theta r + \theta) T / 2} E _ {\theta} e ^ {- \theta \tilde {W} (T)} \mathbf {1} \{\underset {0 \leq t \leq T} {\min } \tilde {W} (t) \geq \alpha \} \\ = e ^ {(\theta^ {2} - 2 \theta r + \theta) T / 2} E _ {0} e ^ {- \theta W (T)} \mathbf {1} \{\underset {0 \leq t \leq T} {\min } W (t) \geq \alpha \}. \\ \end{array}
$$

The final expectation in this chain of equalities involves only a standard Brownian motion, and the event on which the integration takes place involves only the first passage to a horizontal line. We learned how to handle such events in our discussion of the Reflection Principle in Lecture 5. The basic idea is that, conditional on the event that the path visits the level  $\alpha$  at some time prior to  $T$ , the distribution of the endpoint  $W_{T}$  is symmetrically distributed about  $\alpha$ . Consequently,

$$
E _ {0} e ^ {- \theta W (T)} \mathbf {1} \left\{\min  _ {0 \leq t \leq T} W (t) \geq \alpha \right\} = e ^ {- \theta \alpha} \int_ {0} ^ {\infty} \left(e ^ {\theta x} + e ^ {- \theta x}\right) e ^ {- (x + \alpha) ^ {2} / 2 T} d x / \sqrt {2 \pi T}. \tag {22}
$$

This integral may be evaluated explicitly in terms of the standard normal cdf  $\Phi(\cdot)$ , by "completing the square".

# 5. EXERCISES

1. Complete the derivation of the arbitrage price of the BARRIER option in Section 4 above:

(a) Use the reflection principle and the Strong Markov property to justify the identity (22).  
(b) Evaluate the integral in equation (22).

2. A Perpetual Option. Assume that the share prices of STOCK and BOND are given by equations (19) and (20), respectively. Consider an option with no date of expiration that pays the owner  $\exp\{-\beta \tau\}$  (dollars) at the first time  $\tau$  that the share price of STOCK reaches  $\alpha$  (if ever). Here  $\beta$  and  $\alpha$  are positive real numbers, and  $S_0 < \alpha$ . Calculate the arbitrage price at time 0 of this option.  
3. Knockin Options. Assume that the prices of CASH BOND and STOCK are governed by the differential equations

(23)  $dB_{t} = rB_{t}dt$

(24)  $dS_{t} = rS_{t}dt + \sigma S_{t}dW_{t}$

for constants  $r, \sigma > 0$ . Consider a knockin put option with strike  $K$  and knockin value  $H > K$ . The payoff from this option at termination  $t = T$  is

$$
\begin{array}{l} (K - S_{T})_{+}\qquad \text{if}\max_{0\leq t\leq T}S_{t}\geq H \\ 0\qquad \text{if}\max_{0\leq t\leq T}S_{t} <   H \\ \end{array}
$$

Find the arbitrage price at  $t = 0$ . HINT: Write the price as a discounted expectation, using indicator variables to get rid of the subscript + on  $(K - S_T)$ . Break this expectation into two expectations, and then evaluate each by using the Cameron-Martin theorem and the reflection principle.
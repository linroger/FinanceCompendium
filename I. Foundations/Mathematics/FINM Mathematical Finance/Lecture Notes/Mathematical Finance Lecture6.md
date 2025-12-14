---
parent_directory: I. Foundations/Mathematics/FINM Mathematical Finance/Lecture Notes
title: "Lecture 6: The Itô Calculus"
tags:
aliases:
  - The Itô Calculus
parent_folder: Lecture Notes
subfolder:
key_concepts:
cssclasses: academia
linter-yaml-title-alias: "Lecture 6: The Itô Calculus"
---

# LECTURE 6: THE ITÔ CALCULUS

# 1. INTRODUCTION: GEOMETRIC BROWNIAN MOTION

According to Lévy's representation theorem, quoted at the beginning of the last lecture, every continuous-time martingale with continuous paths and finite quadratic variation is a time-changed Brownian motion. Thus, we expect discounted price processes in arbitrage-free, continuous-time markets to be time-changed Brownian motions. However, Brownian motion (with no time change) is not an appropriate model for the behavior of stock price processes. Why not? Among other reasons is this: If  $\{W^{x}(t)\}_{t\geq 0}$  is a Brownian motion started at  $x > 0$ , then eventually the path  $W(t)$  will drift below 0. But the share prices of stocks traded on major exchanges do not drop below 0.

So what is a more appropriate model for stock price behavior? Consider the issue of expected return on investment. If an investor has $100 to invest, he/she should, at the very least, expect the same return on the $100 investment when the share price is $10 as when the share price is $5. (If the expected return were higher for $5 shares than for $10 shares, the shareholders would split the $10 shares into twice as many $5 shares, thus increasing their expected return by a mere accounting trick!) Similarly, the uncertainty about the return on a $100 investment should be the same for $5 shares as for $10 shares. Thus, fluctuations in share price should be twice as great when the share price is twice as high, three times as great when the share price is three times as high, etc. This argument suggests that a better model for stock price behavior over time might be

$$
\frac {d S _ {t}}{S _ {t}} = \mu d t + \sigma d W _ {t}, \tag {1}
$$

where  $\mu$  represents the instantaneous rate of return on a riskless asset,  $\sigma$  represents the volatility of the stock, and  $dW_{t}$  represents something like the infinitesimal change in a Brownian motion over the next instant of time. This is the stock price model used by BLACK and SCHOLES in their work on the pricing of call and put options — the stochastic processes  $S_{t}$  governed by equation (1) are called geometric Brownian motions. Unfortunately, equation (1) cannot be interpreted as an ordinary differential equation, because Brownian paths  $W_{t}$  are not differentiable. It was precisely for the purpose of dealing with differential equations incorporating stochastic differentials that Ito developed what is now called the Ito calculus.

# 2. THE ITO INTEGRAL

In ordinary calculus, the (Riemann) integral is defined by a limiting procedure. One first defines the integral of a step function, in such a way that the integral represents the "area beneath the graph". Then one extends the definition to a larger class of functions (the Riemann-integrable functions) by approximation: the integral of a function  $f$  is defined to be the limit of the integrals of step functions which converge (in a certain sense) to  $f$ .

Thus, it is natural that the Ito integral is also defined by an approximation procedure. In the Ito theory, step functions are replaced by simple processes, which are nothing more than random step functions. The integral is then extended to larger classes of processes by approximation. For

our purposes, the details of the approximation procedure are uninteresting, and we shall (for the most part) omit them. However, it is important to understand how the integral is defined for the simple processes, because nearly all of the basic properties of the Ito integral are established by first considering simple processes, then extending to more general integrands "by approximation".

2.1. Integration of simple processes. Let  $\{W_t\}_{t \geq 0}$  be a standard Brownian motion, and let  $\{\mathcal{F}_t\}_{t \geq 0}$  be its filtration. Recall that a stochastic process  $\{\theta_t\}_{t \geq 0}$  is said to be adapted to the filtration  $\{\mathcal{F}_t\}_{t \geq 0}$  if, for every  $s \geq 0$ , the random variable  $\theta_s$  is measurable relative to the  $\sigma$ -algebra  $\mathcal{F}_s$ . (This means, roughly, that for each  $s \geq 0$  the value of the random variable  $\theta_s$ , although random, is completely determined by the Brownian path  $\{W_t\}_{0 \leq t \leq s}$  up to time  $s$ .) An adapted process  $\{\theta_t\}_{t \geq 0}$  is said to be simple if it is a random step function: This means that, for some finite sequence of times  $0 < t_1 < t_2 < \dots < t_m < \infty$  and random variables  $\xi_0, \xi_1, \ldots, \xi_{m-1}$  such that  $\xi_j$  is measurable relative to  $\mathcal{F}_{t_j}$ ,

$$
\theta (s) = \sum_ {j = 0} ^ {m - 1} \xi_ {j} \mathbf {1} _ {\left(t _ {j}, t _ {j + 1} \right]} (s). \tag {2}
$$

Definition 1. For a simple process  $\{\theta_t\}_{t\geq 0}$  satisfying equation (2), define the Ito integral  $\int \theta_s dW_s$  as follows:

$$
\int \theta_ {s} d W _ {s} = \sum_ {j = 0} ^ {m - 1} \xi_ {j} \left(W \left(t _ {j + 1}\right) - W \left(t _ {j}\right)\right) \tag {3}
$$

Why is this a reasonable definition? The random step function  $\theta(s)$  takes the (random) value  $\xi_j$  between times  $t_{j-1}$  and  $t_j$ . Thus, for all times  $s \in (t_{j-1}, t_j]$ , the random infinitesimal increments  $\theta_s dW_s$  should be  $\xi_j$  times as large as those of the Brownian motion; when one adds up these infinitesimal increments, one gets  $\xi_j$  times the total increment of the Brownian motion over this time period.

Notice that the random "fluctuation rates"  $\xi_{j}$  in the sum (3) are independent of the Brownian increments  $W(t_{j + 1}) - W(t_{j})$  that they multiply. This is a consequence of the independent increments property of Brownian motion:  $\xi_{j}$ , being measurable relative to  $\mathcal{F}_{t_j}$ , is a function of the Brownian path up to time  $t_j$ , which is independent of all future increments. This independence property is behind the following calculation, which is of fundamental importance.

Proposition 1. The mean and variance of the stochastic integral  $\int \theta_s dW_s$  are

$$
E \left(\int \theta_ {s} d W _ {s}\right) = 0 \tag {4}
$$

$$
E \left(\int \theta_ {s} d W _ {s}\right) ^ {2} = \int E \theta_ {s} ^ {2} d s \tag {5}
$$

Proof. Exercise!

Two other properties of the Ito integral should be noted. First, it is linear in the integrand, that is, if  $\{\theta_s\}$  and  $\{\eta_s\}$  are two simple processes and  $a,b\in \mathbb{R}$  are scalars, then

$$
\int \left(a \theta_ {s} + b \eta_ {s}\right) d W _ {s} = a \int \theta_ {s} d W _ {s} + b \int \eta_ {s} d W _ {s}. \tag {6}
$$

Second, if  $\theta(s)$  is a simple function satisfying equation (2), then  $\int \theta_s dW_s$ , as defined by (3) is measurable relative to the  $\sigma$ -algebra  $\mathcal{F}_{t_m}$ .

2.2. Integration of  $\mathcal{H}^2$  Processes. One extends the definition of the Itô integral to other integrands by approximation: one approximates the integrand  $\theta_s$  by a simple process, then uses the Itô integral of the simple process, defined above, as an approximation to the Itô integral of  $\{\theta_s\}$ . The most important class of integrands are the  $\mathcal{H}^2$  processes. An adapted process  $\{\theta_s\}$  is a member of the class  $\mathcal{H}^p$  (where  $1 \leq p < \infty$ ) if

$$
\int E \left| \theta_ {s} \right| ^ {p} d s <   \infty . \tag {7}
$$

Proposition 2. Every adapted process of class  $\mathcal{H}^p$  may be approximated arbitrarily closely in  $\mathcal{H}^p$  distance by simple processes. For an  $\mathcal{H}^2$  process  $\{\theta_s\}$ , this means that there is a sequence of simple processes  $\{\theta_s^{(n)}\}$  such that

$$
\lim _ {n \to \infty} \int E (\theta_ {s} - \theta_ {s} ^ {(n)}) ^ {2} d s = 0. \tag {8}
$$

Proof. See KARATZAS & SHREVE, section 3.2, for the rather long and arduous proof.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/727aeace-d296-4f75-8b46-1026febe9463/38dbb1ddac8d8d33765ec4b88f2cb65ea05f18dd6722ae035cb53064cba2272e.jpg)

Definition 2. Let  $\{\theta_s\}$  be a member of the class  $\mathcal{H}_2$ , and let  $\{\theta_s^{(n)}\}$  be any sequence of simple processes such that (8) holds. Define

$$
\int \theta_ {s} d W _ {s} = \lim  _ {n \rightarrow \infty} \int \theta_ {s} ^ {(n)} d W _ {s} \tag {9}
$$

Proposition 3. The limit in (9) exists (in the  $L^2$  sense) and is independent of the sequence of approximating simple processes.

The proof is outlined below. The proposition guarantees that the Itô integral is well-defined; moreover, it asserts that any approximating sequence of simple processes may be used. In those (rare) instances where one calculates an Itô integral directly, using the definition above (see section 3 for an example), one usually uses the most obvious approximation.

Proof of Proposition 3. The proof is based on proposition 1 above, and standard elementary facts about the space  $L^2$  of random variables with finite second moments. The argument (in brief) for the existence of the limit is as follows: Suppose that  $\{\theta_s^{(n)}\}$  is a sequence of simple processes such that (8) holds. Then for any  $\varepsilon > 0$ , there exists an integer  $n_{\varepsilon}$  sufficiently large that, for all  $n \geq n_{\varepsilon}$ ,

$$
\int E | \theta_ {s} ^ {(n)} - \theta_ {s} | ^ {2} d s <   \varepsilon .
$$

Hence, by the triangle inequality for the  $L^2$ -metric, if  $n,m\geq n_{\varepsilon}$  then

$$
\left(\int E \left| \theta_ {s} ^ {(n)} - \theta_ {s} ^ {(m)} \right| ^ {2} d s\right) ^ {1 / 2} \leq \left(\int E \left| \theta_ {s} ^ {(n)} - \theta_ {s} \right| ^ {2} d s\right) ^ {1 / 2} + \left(\int E \left| \theta_ {s} ^ {(m)} - \theta_ {s} \right| ^ {2} d s\right) ^ {1 / 2} <   2 \sqrt {\varepsilon}.
$$

But Proposition 1, together with the linearity of the integral for simple processes, implies that

$$
E | \int \theta_ {s} ^ {(n)} d W _ {s} - \int \theta_ {s} ^ {(m)} d W _ {s} | ^ {2} = \int E | \theta_ {s} ^ {(n)} - \theta_ {s} ^ {(m)} | ^ {2} d s <   4 \varepsilon .
$$

This shows that the sequence  $\int \theta_s^{(n)}dW_s$  of stochastic integrals is a Cauchy sequence of random variables (in  $L^2$ ). Since Cauchy sequences in  $L^2$  have limits, it follows that

$$
\lim _ {n \to \infty} \int \theta_ {s} ^ {(n)} d W _ {s}
$$

exists. A similar argument shows that the limit is the same for all approximating sequences of simple processes.

Proposition 4. For any process  $\{\theta_s\}$  of class  $\mathcal{H}_2$ , the mean and variance of the stochastic integral  $\int \theta_s dW_s$  are given by equations (4)-(5) of Proposition 1. Moreover, the stochastic integral is linear, in the sense of equation (6) above.

Proof. One deduces this from the corresponding facts about integrals of simple processes by an approximation argument. Details are omitted (but are not hard).  $\square$

2.3. Limits of Integration. The implicit limits of integration in the stochastic integral  $\int \theta_s dW_s$  are 0 and  $\infty$ . It is useful to define stochastic integrals with other limits of integration. This is done as follows:

$$
\int_ {a} ^ {b} \theta_ {s} d W _ {s} := \int \theta_ {s} ^ {(a, b ]} d W _ {s} \tag {10}
$$

where  $\{\theta_s^{(a,b]}\}$  is the adapted  $\mathcal{H}^2$  function defined by

$$
\begin{array}{l} \theta_ {s} ^ {(a, b ]} = \theta_ {s} \quad \text {i f} a <   s \leq b \\ = 0 \qquad \text {o t h e r w i s e}. \\ \end{array}
$$

Proposition 5. Let  $\{\theta_s\}$  be an adapted process of class  $\mathcal{H}^2$ , and set  $I_t = \int_0^t \theta_s \, dW_s$ . Then the stochastic process  $\{I_t\}_{t \geq 0}$  is a martingale with continuous paths<sup>3</sup>, and

$$
I _ {t} = E \left(\int \theta_ {s} d W _ {s} \mid \mathcal {F} _ {t}\right). \tag {11}
$$

Proof. If  $\{\theta_t\}$  is a simple process, then the martingale property may be proved directly from the definition (3), using basic properties of conditional expectation and the independent increments property of Brownian motion. (Exercise: Do this!) One then deduces the general case by a routine limiting argument. Continuity of paths (for an appropriate version) is harder to prove - we omit this.

2.4. Further Extensions of the Itô Integral. It is occasionally necessary to integrate adapted processes that do not belong to the class  $\mathcal{H}^2$ . This may be accomplished by various other means of approximation. One important class of integrands is the set of adapted processes  $\{\theta(s)\}_{s \geq 0}$  satisfying

$$
P \left\{\int_ {0} ^ {\infty} \theta (s) ^ {2} d s <   \infty \right\} = 1; \tag {12}
$$

we shall refer to this class as  $\mathcal{H}_{\mathrm{LOC}}^2$ , for "locally"  $\mathcal{H}^2$ . The classes  $\mathcal{H}_{\mathrm{LOC}}^p$ , for  $p \geq 1$ , are defined similarly. Among the naturally occurring adapted processes  $\{\theta(s)\}_{s \geq 0}$  in the class  $\mathcal{H}_{\mathrm{LOC}}^2$  that are not (at least not necessarily) in the class  $\mathcal{H}^2$  are those of the form

$$
\theta (t) = u \left(W _ {t}, t\right),
$$

where  $u(x,t)$  is any function of  $x\in \mathbb{R}$  and  $t\geq 0$  that is jointly continuous in its two arguments  $t,x$ . Such processes occur regularly in stochastic calculus and its applications.

The Ito integral is extended from  $\mathcal{H}^2$  integrands to  $\mathcal{H}_{\mathrm{LOC}}^2$  integrands by a technique called (fittingly enough) localization. This technique consists of successive truncations at suitable stopping times: Let  $\{\theta(s)\}_{s \geq 0}$  be an element of the class  $\mathcal{H}_{\mathrm{LOC}}^2$ , and for each integer  $n \geq 1$  define a stopping time  $T_n \leq \infty$  by

$$
T _ {n} = \min \{t \geq 0: \int_ {0} ^ {t} \theta (s) ^ {2} d s = n \},
$$

with the convention that  $T_{n} = \infty$  if there is no such  $t$ , and define an adapted process  $\theta^{(n)}(t)$

$$
\theta^ {(n)} (t) = \theta (t) \quad \text {f o r} t \leq T _ {n} \text {a n d}
$$

$$
\theta^ {(n)} (t) = 0 \quad \text {f o r} t > T _ {n}
$$

Observe that the hypothesis (12) implies that, with probability one,  $T_{n} \to \infty$ . Consequently, the sequence of processes  $\theta^{(n)}(s)$  converge to  $\theta(s)$  in the following sense: for each  $t < \infty$ , with probability one,  $\theta^{(n)}(t) = \theta(t)$  for all sufficiently large  $n$ . Notice also that each process  $\theta^{(n)}(s)$  is a member of the class  $\mathcal{H}^2$ , because

$$
E \int_ {0} ^ {\infty} \theta^ {(n)} (s) ^ {2} d s = E \int_ {0} ^ {T _ {n}} \theta (s) ^ {2} d s \leq E n = n <   \infty .
$$

Thus, the Ito integrals  $\int \theta^{(n)}(s)dW_s$  are well-defined. It may be shown that, with probability one, these Ito integrals converge as  $n\to \infty$  to a finite (random) limit. Thus, we may define

$$
\int \theta (s) d W _ {s} = \lim  _ {n \rightarrow \infty} \int \theta^ {(n)} (s) d W _ {s}. \tag {13}
$$

Caution must be exercised in using the Ito integral defined by equation (13) for integrands in the class  $\mathcal{H}_{\mathrm{LOC}}^2$ . Although the Ito integrals  $\int \theta^{(n)}(s)dW_s$  converge with probability one, they need not converge in mean square  $(L^2)$ , nor need the limit random variable  $\int \theta(s)dW_s$  have finite expectation. Thus, the relation (11) need not be valid for integrands of the class  $\mathcal{H}_{\mathrm{LOC}}^2$ ; furthermore, the process

$$
I _ {t} := \int \theta (s) \mathbf {1} _ {[ 0, t ]} (s) d W _ {s}
$$

may fail to be a martingale. In general, the best that can be said is that, for each  $n \geq 1$ , the process

$$
I _ {t} ^ {(n)} := \int \theta (s) {\bf 1} _ {[ 0, t \wedge T _ {n} ]} (s) d W _ {s}
$$

is a martingale.

# 3. AN EXAMPLE:  $\int_0^1 W dW$

There are tools for calculating stochastic integrals that usually make it unnecessary to use Definition 2 directly. The most useful of these, the Itô formula, will be discussed in the following sections. It is instructive, however, to do one explicit calculation using only the definition 2. This calculation will show (i) that the Fundamental Theorem of Calculus does not hold for Itô integrals; and (ii) the central importance of the Quadratic Variation formula in the Itô calculus.

Consider the process

(14)  $\theta_{s} = W_{s}\mathbf{1}\{s\leq 1\} .$

This process is obviously adapted to the natural filtration. It is also in the class  $\mathcal{H}^2$ , because

$$
\int_ {0} ^ {\infty} E \theta_ {s} ^ {2} d s = \int_ {0} ^ {1} E W _ {s} ^ {2} d s = \int_ {0} ^ {1} s d s = \frac {1}{2} <   \infty .
$$

The obvious way to approximate  $\theta_{s}$  is by using the simple function  $\theta_s^{(n)}$  whose jumps are at the dyadic rationals  $1 / 2^n, 2 / 2^n, 3 / 2^n, \ldots$ , and whose value in the interval  $[k / 2^n, (k + 1) / 2^n)$  is  $\theta(k / 2^n)$ : that is,

$$
\theta_ {s} ^ {(n)} = \sum_ {k = 0} ^ {2 ^ {n}} \theta (k / 2 ^ {n}) \mathbf {1} _ {[ k / 2 ^ {n}, (k + 1) / 2 ^ {n})} (s).
$$

Lemma 1.  $\lim_{n\to \infty}\int_0^\infty E(\theta_s - \theta_s^{(n)})^2 ds = 0.$

Proof. Since the simple process  $\theta_s^{(n)}$  takes the value  $\theta (k / 2^n)$  for all  $s$  between  $k / 2^n$  and  $(k + 1) / 2^n$ , we have

$$
\begin{array}{l} \int_ {0} ^ {\infty} E \left(\theta_ {s} - \theta_ {s} ^ {(n)}\right) ^ {2} d s = \sum_ {k = 0} ^ {2 ^ {n} - 1} \int_ {k / 2 ^ {n}} ^ {(k + 1) / 2 ^ {n}} E \left(\theta_ {s} - \theta_ {s} ^ {(n)}\right) ^ {2} d s \\ = \sum_ {k = 0} ^ {2 ^ {n} - 1} \int_ {k / 2 ^ {n}} ^ {(k + 1) / 2 ^ {n}} E \left(W _ {s} - W _ {k / 2 ^ {n}}\right) ^ {2} d s \\ = \sum_ {k = 0} ^ {2 ^ {n} - 1} \int_ {k / 2 ^ {n}} ^ {(k + 1) / 2 ^ {n}} (s - (k / 2 ^ {n})) d s \\ \leq \sum_ {k = 0} ^ {2 ^ {n} - 1} 2 ^ {- 2 n} = 2 ^ {n} / 2 ^ {2 n} \longrightarrow 0 \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/727aeace-d296-4f75-8b46-1026febe9463/d1adfa36ef1dd5b6350c0a5d38a4c1edf12e409ebbdae483ab9faf4a2eea4811.jpg)

Definition 2 now implies that the stochastic integral  $\int \theta_s dW_s$  is the limit of the stochastic integrals  $\int \theta_s^{(n)} dW_s$ . Since  $\theta_s^{(n)}$  is a simple process, its stochastic integral is defined to be

$$
\int \theta_ {s} ^ {(n)} d W _ {s} = \sum_ {k = 0} ^ {2 ^ {n} - 1} W _ {k / 2 ^ {n}} (W _ {(k + 1) / 2 ^ {n}} - W _ {k / 2 ^ {n}}).
$$

To evaluate this sum, we use the technique of "summation by parts" (the discrete analogue of integration by parts). Here, the technique takes the form of observing that the sum can be modified

slightly to give a sum that "telescopes":

$$
\begin{array}{l} W _ {1} ^ {2} = \sum_ {k = 0} ^ {2 ^ {n} - 1} \left(W _ {(k + 1) / 2 ^ {n}} ^ {2} - W _ {k / 2 ^ {n}} ^ {2}\right) \\ = \sum_ {k = 0} ^ {2 ^ {n} - 1} \left(W _ {(k + 1) / 2 ^ {n}} - W _ {k / 2 ^ {n}}\right) \left(W _ {(k + 1) / 2 ^ {n}} + W _ {k / 2 ^ {n}}\right) \\ = \sum_ {k = 0} ^ {2 ^ {n} - 1} \left(W _ {(k + 1) / 2 ^ {n}} - W _ {k / 2 ^ {n}}\right) \left(W _ {k / 2 ^ {n}} + W _ {k / 2 ^ {n}}\right) \\ + \sum_ {k = 0} ^ {2 ^ {n} - 1} \left(W _ {(k + 1) / 2 ^ {n}} - W _ {k / 2 ^ {n}}\right) \left(W _ {(k + 1) / 2 ^ {n}} - W _ {k / 2 ^ {n}}\right) \\ = 2 \sum_ {k = 0} ^ {2 ^ {n} - 1} W _ {k / 2 ^ {n}} \left(W _ {(k + 1) / 2 ^ {n}} - W _ {k / 2 ^ {n}}\right) \\ + \sum_ {k = 0} ^ {2 ^ {n} - 1} \left(W _ {(k + 1) / 2 ^ {n}} - W _ {k / 2 ^ {n}}\right) ^ {2} \\ \end{array}
$$

The first sum on the right side is  $2\int \theta_s^{(n)}dW_s$ , and so converges to  $2\int_0^1 W_sdW_s$  as  $n\to \infty$ . The second sum is the same sum that occurs in the Quadratic Variation Formula (Lecture 5), and so converges, as  $n\to \infty$ , to 1. Therefore,

$$
\boxed {\int_ {0} ^ {1} W _ {s} d W _ {s} = \frac {1}{2} \left(W _ {1} ^ {2} - 1\right).} \tag {15}
$$

Note that if the Ito integral obeyed the Fundamental Theorem of Calculus, then the value of the integral would be

$$
\int_ {0} ^ {t} W _ {s} d W _ {s} = \int_ {0} ^ {t} W (s) W ^ {\prime} (s) d s = \frac {W _ {s} ^ {2}}{2} \Bigg | _ {0} ^ {t} = \frac {W _ {t} ^ {2}}{2}
$$

Thus, formula (15) shows that the Itô calculus is fundamentally different than ordinary calculus.

# 4. ITO'S FORMULA

The cornerstone of stochastic calculus is the Itô formula. Like the Fundamental Theorem of Calculus, the Itô formula takes many different forms, and holds at several levels of generality. The simplest version is as follows:

Theorem 1. Let  $u(x,t)$  be a function of  $x \in \mathbb{R}$  and  $t \geq 0$  that is twice continuously differentiable in  $x$  and once continuously differentiable in  $t$ , and let  $W_{t}$  be a Wiener process (Brownian motion). Denote by  $u_{t}, u_{x}$ , and  $u_{x}u$  the first and second partial derivatives of  $u$  with respect to the variables  $t$  and  $x$ . Then

$$
u (W _ {t}, t) - u (0, 0) = \int_ {0} ^ {t} u _ {x} \left(W _ {s}, s\right) d W _ {s} + \int_ {0} ^ {t} u _ {t} \left(W _ {s}, s\right) d s + \frac {1}{2} \int_ {0} ^ {t} u _ {x x} \left(W _ {s}, s\right) d s. \tag {16}
$$

A sketch of the proof will be given in section 8, and a more general form of the theorem will be discussed in section 5. In a later lecture, we shall see that there is also a multivariable version of the theorem.

Example 1: Let

$$
u (x, t) = x ^ {2} - t; \quad \text {t h e n} \tag {17}
$$

$$
u _ {t} (x, t) = - 1;
$$

$$
u _ {x} (x, t) = 2 x; \qquad \text {a n d}
$$

$$
u _ {x x} (x, t) = 2.
$$

Consequently, by the Itô formula (note that  $u_{t} + (1 / 2)u_{xx} = 0$ ),

$$
W _ {t} ^ {2} - t = 2 \int_ {0} ^ {t} W _ {s} d W _ {s}, \tag {18}
$$

as was shown directly in the previous section.

Example 2: Let  $\alpha, \beta \in \mathbb{R}$  be fixed nonrandom scalars. Let

$$
u (x, t) = \exp \left\{\alpha x + \beta t \right\}; \quad \text {t h e n} \tag {19}
$$

$$
u _ {t} (x, t) = \beta u (x, t),
$$

$$
u _ {x} (x, t) = \alpha u (x, t), \quad \text {a n d}
$$

$$
u _ {x x} (x, t) = \alpha^ {2} u (x, t).
$$

Thus, the Itô formula implies

$$
u \left(W _ {t}, t\right) = 1 + \alpha \int_ {0} ^ {t} u \left(W _ {t}, t\right) d W _ {t} + \left(\beta + \frac {1}{2} \alpha^ {2}\right) \int_ {0} ^ {t} u \left(W _ {t}, t\right) d t. \tag {20}
$$

Set  $S_{t} = u(W_{t}, t)$ ; then equation (20), in differential form, becomes

$$
\frac {d S _ {t}}{S _ {t}} = \alpha d W _ {t} + \left(\beta + \frac {1}{2} \alpha^ {2}\right) d t. \tag {21}
$$

In particular, if  $\alpha = \sigma$  and  $\beta = \mu -\sigma^2 /2$  then  $S_{t}$  is a solution of the stochastic differential equation (1). Also, if  $\alpha = \theta$  and  $\beta = -\theta^{2} / 2$  for some scalar  $\theta \in \mathbb{R}$  then equation (21) simplifies to

$$
\frac {d S _ {t}}{S _ {t}} = \alpha d W _ {t}, \qquad \mathrm {e q u i v a l e n t l y},
$$

$$
\exp \left\{\theta W _ {t} - \theta^ {2} t / 2 \right\} = 1 + \theta \int_ {0} ^ {t} \exp \left\{\theta W _ {s} - \theta^ {2} s / 2 \right\} d W _ {s}.
$$

By Proposition 5, it follows that the process  $\exp \{\theta W_t - \theta^2 t / 2\}$  is a martingale relative to the standard filtration.

# 5. ITO'S FORMULA: THE GENERAL CASE

Definition 3. An Itô process is a stochastic process of the form

$$
Z _ {t} = Z _ {0} + \int_ {0} ^ {t} A _ {s} d s + \int_ {0} ^ {t} B _ {s} d W _ {s} \tag {22}
$$

where for each  $t < \infty$  the process  $\{A_s\mathbf{1}_{(0,t]}(s)\}$  is in the class  $\mathcal{H}_{\mathrm{LOC}}^1$  and the process  $\{B_s\mathbf{1}_{(0,t]}(s)\}$  is in the class  $\mathcal{H}_{\mathrm{LOC}}^2$ .

The Ito processes are the processes that solve stochastic differential equations. In particular, if the Ito process  $\{Z_t\}$  satisfies the integral equation (22), then it solves the stochastic differential equation (SDE)

$$
d Z _ {t} = A _ {t} d t + B _ {t} d W _ {t}. \tag {23}
$$

Now that we have defined the Itô integral against  $dW$ , we can easily extend the definition to allow integration against  $dZ$  for any Itô process  $Z$ , using (23): for an adapted process  $\{\theta_s\}$ , define

$$
\int_ {0} ^ {t} \theta_ {s} d Z _ {s} = \int_ {0} ^ {t} \theta_ {s} A _ {s} d s + \int_ {0} ^ {t} \theta_ {s} B _ {s} d W _ {s}. \tag {24}
$$

If for each  $t < \infty$  the process  $\{\theta_sA_s\mathbf{1}_{[0,t](s)}\}$  is in the class  $\mathcal{H}_{\mathrm{LOC}}^1$  and  $\{\theta_sB_s\mathbf{1}_{[0,t](s)}\}$  is in the class  $\mathcal{H}_{\mathrm{LOC}}^2$  then both of the integrals on the right side of this equation are well-defined.

Theorem 2. (Itô's Formula) Let  $\{Z_t\}$  be an Itô process satisfying the SDE (23), and let  $u(x,t)$  be twice continuously differentiable in  $x$  and once continuously differentiable in  $t$ , and define  $U_t = u(Z_t,t)$ . Then  $\{U_t\}$  is an Itô process that satisfies the SDE

$$
\begin{array}{l} d U _ {t} = u _ {x} \left(Z _ {t}, t\right) d Z _ {t} + u _ {t} \left(Z _ {t}, t\right) d t + \frac {1}{2} u _ {x x} \left(Z _ {t}, t\right) B _ {t} ^ {2} d t \tag {25} \\ = u _ {x} (Z _ {t}, t) B _ {t} d W _ {t} + \left(u _ {x} (Z _ {t}, t) A _ {t} + \frac {1}{2} u _ {x x} (Z _ {t}, t) B _ {t} ^ {2} + u _ {t} (Z _ {t}, t)\right) d t \\ \end{array}
$$

Proof. See section 8 below for a sketch.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/727aeace-d296-4f75-8b46-1026febe9463/c7bd6857377be16c59961ddfc5502d7484bca4b26460ffe964883a04b9ce58ff.jpg)

# 6. WHEN IS AN ITO PROCESS A MARTINGALE?

Proposition 6. Let  $\{Z_t\}$  be an Itô process satisfying the Itô integral equation (22), where  $Z_0$  has finite first moment,  $\{A_t\}$  is of class  $\mathcal{H}^1$ , and  $\{B_t\}$  is of class  $\mathcal{H}^2$ . Then  $\{Z_t\}$  is a martingale (relative to the Brownian filtration) if and only if  $A_t = 0$  almost surely, for almost every  $t \geq 0$ .

Proof. Suppose first that  $A_{t} = 0$  almost surely, for all  $t \geq 0$ . Then  $Z_{t} - Z_{0} = \int_{0}^{t} B_{s} dW_{s}$ , and so by Proposition 5, the process  $\{Z_{t} - Z_{0}\}_{t \geq 0}$  is a martingale. It follows that the process  $\{Z_{t}\}_{t \geq 0}$  is a martingale, by the linearity of conditional expectation.

The converse is a bit trickier. Suppose that the process  $\{Z_t\}_{t \geq 0}$  is a martingale. Since the process  $\int_0^t B_s \, dW_s$  is also a martingale, by Proposition 5, and since the difference between two martingales is a martingale (why?), it follows that

$$
\int_ {0} ^ {t} A _ {s} d s
$$

is a martingale. This means that, for any  $t,u\geq 0$

$$
\begin{array}{l} \int_ {0} ^ {t} A _ {s} d s = E \left(\int_ {0} ^ {t + u} A _ {s} d s \mid \mathcal {F} _ {t}\right) \quad \Longrightarrow \\ \int_ {0} ^ {t} A _ {s} d s = E \left(\int_ {0} ^ {t} A _ {s} d s + \int_ {t} ^ {t + u} A _ {s} d s \mid \mathcal {F} _ {t}\right) \quad \Longrightarrow \\ \int_ {0} ^ {t} A _ {s} d s = \int_ {0} ^ {t} A _ {s} d s + E \left(\int_ {t} ^ {t + u} A _ {s} d s \mid \mathcal {F} _ {t}\right) \quad \Longrightarrow \\ 0 = E \left(\int_ {t} ^ {t + u} A _ {s} d s \mid \mathcal {F} _ {t}\right) \quad \Longrightarrow \\ 0 = \int_ {t} ^ {t + u} E \left(A _ {s} \mid \mathcal {F} _ {t}\right) d s \quad \Longrightarrow \\ 0 = \frac {1}{u} \int_ {t} ^ {t + u} E (A _ {s} \mid \mathcal {F} _ {t}) d s \\ \end{array}
$$

Somehow we must conclude from this that  $A_{s} = 0$  almost surely for every  $s$ . There are several ways to do this. The shortest is to use the Lebesgue differentiation theorem (see, for example, ROYDEN, ch. 5), which, in essence, states that the Fundamental Theorem of Calculus remains valid, suitably interpreted, for integrands of class  $L^1$ . Since the last displayed equation holds for every  $t$  and every  $u > 0$ , it holds also in the limit as  $u \to 0+$ . The Lebesgue differentiation theorem<sup>4</sup> tells us what the limit must be: that

$$
\lim _ {u \to 0 +} \frac {1}{u} \int_ {t} ^ {t + u} E (A _ {s} | \mathcal {F} _ {t}) d s = E (A _ {t} | \mathcal {F} _ {t}) = A _ {t}
$$

almost surely, for almost every  $t$ . It follows that  $A_{t} = 0$  almost surely, for almost every  $t \geq 0$ .

# 7. EXERCISES

1. Evaluate  $\int_0^1 W_s^3 dW_s$ .  
2. Use the Itô formula to show that, for any integer  $k \geq 2$ ,

$$
E W (t) ^ {k} = \frac {1}{2} k (k - 1) \int_ {0} ^ {t} E W (s) ^ {k - 2} d s,
$$

and use this to evaluate the first 23 moments of the normal distribution.

3. Use the Ito formula to show that, for any nonrandom, continuously differentiable function  $f(t)$ ,

$$
\int_ {0} ^ {t} f (s) d W _ {s} = f (t) W (t) - \int_ {0} ^ {t} f ^ {\prime} (s) W _ {s} d s.
$$

4. Heat Martingales. Suppose that  $u(x,t)$  is a bounded solution to the (reverse) heat equation  $u_{xx} / 2 + u_t = 0$  for  $x \in \mathbb{R}$  and  $0 \leq t \leq T$ . Define

$$
Z _ {t} = u \left(W _ {t}, t\right) \quad \text {f o r} 0 \leq t \leq T.
$$

Show that  $\{Z_t\}_{0 \leq t \leq T}$  is a martingale relative to the (truncated) Brownian filtration  $\{\mathcal{F}_t\}_{0 \leq t \leq T}$ . Conclude that

$$
u (x, t) = E u \left(W _ {T - t} + x, T\right).
$$

5. Stock Price Processes. Let  $\{S_t\}_{t \geq 0}$  be the price process of a STOCK in a market with a riskless asset BOND whose price at time  $t$  is  $B_t = e^{rt}$ . Suppose that  $\{S_t\}$  obeys the SDE (1) for some parameters  $\mu$  and  $\sigma > 0$ . Show that  $\mu = r$ .

# 8. APPENDIX: DERIVATION OF THE ITO FORMULA

For simplicity, let  $t = 1$ , and assume that the partial derivatives  $u_{t}$  and  $u_{xx}$  are uniformly bounded and uniformly continuous. (The theorem is true without these hypotheses, but the proof then requires further approximation arguments, which I deem not very enlightening). For each  $n \geq 1$ , let  $\mathcal{D}_n = \mathcal{D}_n[0,1]$  be the  $n$ th dyadic partition of the unit interval, that is, the partition into intervals  $[t_j, t_{j+1}]$ , where  $t_j = j / 2^n$ .

Lemma 2. For any uniformly continuous, nonnegative, uniformly bounded function  $g(x,t)$ ,

$$
\lim  _ {n \rightarrow \infty} \sum_ {j = 0} ^ {2 ^ {n} - 1} g \left(W \left(t _ {j}\right), t _ {j}\right)\left(\left(W \left(t _ {j + 1}\right) - W \left(t _ {j}\right)\right) ^ {2} = \int_ {0} ^ {1} g \left(W _ {t}, t\right) d t \quad a n d \right. \tag {26}
$$

$$
\lim  _ {n \rightarrow \infty} \sum_ {j = 0} ^ {2 ^ {n} - 1} o \left(\left(\left(W \left(t _ {j + 1}\right) - W \left(t _ {j}\right)\right) ^ {2}\right) = 0 \right. \tag {27}
$$

NOTE: The notation  $o(y)$  indicates that the term is of smaller order of magnitude than  $y$  as  $n \to \infty$ , that is, that  $o(y) / y \to 0$  as  $n \to \infty$ . The proof of this lemma is deferred to the end of the section.

ANOTHER NOTE: Relation (26) is a generalization of the Quadratic Variation Formula proved in Lecture 5. It is the mathematical basis for the heuristic equation

$$
\left(d W _ {t}\right) ^ {2} = d t
$$

often encountered in formal calculations.

Proof of the Itô Formula (Sketch).

Expressing  $u(W_1, 1) - u(0, 0)$  as a telescoping sum yields

$$
\begin{array}{l} u (W _ {1}, 1) - u (0, 0) = \sum_ {j = 1} ^ {2 ^ {n}} \left(u (W (t _ {j}), t _ {j}) - u (W (t _ {j - 1}), t _ {j - 1})\right) \\ = \sum_ {j = 1} ^ {2 ^ {n}} \left(u \left(W (t _ {j}), t _ {j}\right) - u \left(W (t _ {j}), t _ {j - 1}\right)\right) \\ + \sum_ {j = 1} ^ {2 ^ {n}} (u (W (t _ {j}), t _ {j - 1}) - u (W (t _ {j - 1}), t _ {j - 1})) \\ := S _ {1} ^ {(n)} + S _ {2} ^ {(n)}. \\ \end{array}
$$

The terms of the first sum  $S_1^{(n)}$  may be approximated by using Taylor's series for the function  $u(x,t)$ , applied in the variable  $t$ :

$$
\begin{array}{l} u (W (t _ {j}), t _ {j}) - u (W (t _ {j}), t _ {j - 1}) = u _ {t} (W (t _ {j}), t _ {j}) (t _ {j} - t _ {j - 1}) + o (t _ {j} - t _ {j - 1}) \\ = u _ {t} (W (t _ {j}), t _ {j}) 2 ^ {- n} + o (2 ^ {- n}). \\ \end{array}
$$

The error term  $o(2^{-n})$  is uniformly small, in view of our assumption that the first partial derivative  $u_{t}(x,t)$  is uniformly bounded; consequently, if these  $2^{n}$  errors are summed over all  $j$ , the resulting

error is  $o(1)$ . Summing the approximating terms on  $j$  gives a Riemann sum for the ordinary Riemann integral  $\int_0^1 u_s(W_s,s)ds$ :

$$
S _ {1} ^ {(n)} = 2 ^ {- n} \sum_ {j = 1} ^ {2 ^ {n}} u _ {t} (W (t _ {j}), t _ {j}) + o (1) \longrightarrow \int_ {0} ^ {1} u _ {s} (W _ {s}, s) d s.
$$

The terms of the second sum  $S_2^{(n)}$  may also be approximated by using the Taylor's series for the function  $u(x,t)$ , this time in the variable  $x$ , and this time using two terms of the series to keep the errors small:

$$
\begin{array}{l} u \left(W \left(t _ {j}\right), t _ {j - 1}\right) - u \left(W \left(t _ {j - 1}\right), t _ {j - 1}\right) \\ = u _ {x} \left(W \left(t _ {j - 1}\right), t _ {j - 1}\right) \left(W \left(t _ {j}\right) - W \left(t _ {j - 1}\right)\right) \\ + (1 / 2) u _ {x x} \left(W \left(t _ {j - 1}\right), t _ {j - 1}\right) \left(W \left(t _ {j}\right) - W \left(t _ {j - 1}\right)\right) ^ {2} \\ + o \left(\left(W \left(t _ {j}\right) - W \left(t _ {j - 1}\right)\right) ^ {2}\right). \\ \end{array}
$$

By Lemma 2 and the definition of the Itô integral, as  $n \to \infty$ ,

$$
\begin{array}{l} \sum_ {j = 1} ^ {2 ^ {n}} u _ {x} (W (t _ {j - 1}), t _ {j - 1}) (W (t _ {j}) - W (t _ {j - 1})) \longrightarrow \int_ {0} ^ {1} u _ {x} (W (s), s) d W _ {s}, \\ \sum_ {j = 1} ^ {2 ^ {n}} u _ {x x} \left(W \left(t _ {j - 1}\right), t _ {j - 1}\right) \left(W \left(t _ {j}\right) - W \left(t _ {j - 1}\right)\right) ^ {2} \longrightarrow \int_ {0} ^ {1} u _ {x x} \left(W _ {s}, s\right) d s, \text {a n d} \\ \sum_ {j = 1} ^ {2 ^ {n}} o \big ((W (t _ {j}) - W (t _ {j - 1})) ^ {2} \big) \longrightarrow 0. \\ \end{array}
$$

It follows that

$$
\begin{array}{l} u (W _ {1}, 1) - u (0, 0) = \lim  _ {n \rightarrow \infty} \left(S _ {1} ^ {(n)} + S _ {2} ^ {(n)}\right) \\ = \int_ {0} ^ {1} u _ {s} (W _ {s}, s) d s + \int_ {0} ^ {1} u _ {x} (W (s), s) d W _ {s} \\ + \frac {1}{2} \int_ {0} ^ {1} u _ {x x} (W _ {s}, s) d s. \\ \end{array}
$$

Proof of Lemma 2 (Sketch) If the function  $g(x,t)$  were constant, then this would follow immediately from the Quadratic Variation Formula proved in Lecture 5. For functions  $g$  that are merely continuous (and uniformly bounded), the result also follows from the Quadratic Variation Formula, but a more delicate argument is needed. In brief, the idea is this: Although  $g(W_{t},t)$  is not constant, it is nearly constant over short stretches of time, by continuity. In particular, for any  $\varepsilon >0$  there exists  $\delta >0$  such that, with probability at least  $1 - \varepsilon$ ,

$$
| s - t | <   \delta \quad \Longrightarrow \quad | g (W _ {t}, t) - g (W _ {s}, s) | <   \varepsilon .
$$

Without loss of generality, we may take  $\delta = 1 / 2^m$  for some integer  $m$ . Now, over each time interval of length  $2^{-m}$ , we approximate  $g(W_t,t)$  by its value at the beginning of the time interval: For

$$
n > m,
$$

$$
\begin{array}{l} \sum_ {j = 0} ^ {2 ^ {n} - 1} g \left(W \left(t _ {j}\right), t _ {j}\right) \left(\left(W \left(t _ {j + 1}\right) - W \left(t _ {j}\right)\right) ^ {2} \right. \tag {28} \\ = \sum_ {i = 0} ^ {2 ^ {m} - 1} g (W (i / 2 ^ {m})) \left(\sum_ {j = 0} ^ {2 ^ {n - m} - 1} ((W ((i / 2 ^ {m}) + (j / 2 ^ {n})) - W ((i / 2 ^ {m}) + (j / 2 ^ {n}) - (1 / 2 ^ {n}))) ^ {2}\right) + \text {e r r o r}, \\ \end{array}
$$

where

$$
\operatorname {e r r o r} \leq \varepsilon \sum_ {j = 0} ^ {2 ^ {n} - 1} \left(\left(W \left(t _ {j + 1}\right) - W \left(t _ {j}\right)\right) ^ {2} \approx \varepsilon . \right.
$$

Note that the last approximation is valid as  $n \to \infty$ , by the Quadratic Variation Formula. But observe also that each of the inner sums in (28) is also of the type considered in the Quadratic Variation Formula, and so, as  $n \to \infty$ , each of these inner sums converges to  $1 / 2^m$ . Thus, for each fixed  $m$ ,

$$
\limsup_{n\to \infty}\left|\sum_{j = 0}^{2^{n} - 1}g(W(t_{j}),t_{j})((W(t_{j + 1}) - W(t_{j}))^{2} - 2^{-m}\sum_{i = 0}^{2^{m} - 1}g(W(i / 2^{m}))\right|\leq \varepsilon .
$$

Now

$$
\lim  _ {m \rightarrow \infty} 2 ^ {- m} \sum_ {i = 0} ^ {2 ^ {m} - 1} g (W (i / 2 ^ {m})) = \int_ {0} ^ {1} g (W _ {t}, t) d t
$$

Thus,

$$
\limsup_{n\to \infty}\left|\sum_{j = 0}^{2^{n} - 1}g(W(t_{j}),t_{j})((W(t_{j + 1}) - W(t_{j}))^{2} - \int_{0}^{1}g(W_{t},t)  dt\right|\leq \varepsilon .
$$

Since  $\varepsilon > 0$  may be chosen arbitrarily small, the result (26) follows. The second result (27) may be proved by similar arguments.
---
parent_directory: I. Foundations/Mathematics/FINM Mathematical Finance/Lecture Notes
title: 'Lecture 5: Brownian Motion'
tags: null
aliases:
- Brownian Motion
parent_folder: Lecture Notes
subfolder: null
key_concepts: null
cssclasses: academia
linter-yaml-title-alias: 'Lecture 5: Brownian Motion'
primary_tags:
- passage time
- time-changed brownian motion
- traded assets
- ito calculus
secondary_tags:
- pricing and hedging derivative securities
- continuous-time martingales
- quadratic variation
- same strategy
- borel cantelli lemma
- brownian paths
- brownian scaling
- ; consequently, the probability
- ', the distribution'
tags_extracted: '2025-12-18T17:58:00.593734'
tags_method: max_quality_v1
---

# LECTURE 5: BROWNIAN MOTION

# 1. PROLOGUE

We have seen in previous lectures that, for discrete multiperiod markets which admit no arbitrages, there exist equilibrium distributions. Under an equilibrium distribution, the discounted price process of any traded or tradeable asset is a martingale under the natural filtration. In fact, this is true in even greater generality — the hypothesis that the market be discrete (that is, that there be only finitely many market scenarios) is unnecessary. The proof of this more general statement (which we shall not give) follows essentially the same strategy as in the discrete case, and uses little more than the technical properties of conditional expectation given in Lecture 3.

In real markets, trading takes place in continuous time. Problems of pricing and hedging derivative securities in continuous-time markets require continuous-time (and therefore necessarily non-discrete) models of markets and securities prices. This is where Brownian motion and the Ito calculus enter the picture. This lecture and the next will be devoted to introducing the mathematical theory of these objects.

One might wish to have some purely economic explanation for the occurrence of Brownian motion and Ito processes in the theory of asset pricing before investing the substantial effort necessary to master the basics of their mathematical theory. Briefly, the explanation is this. In equilibrium, the discounted price process of any tradeable asset, observed at discrete times, is a martingale; therefore, in continuous time, it is also a martingale (see below for a discussion of continuous-time martingales). Moreover, the prices of traded assets seem to vary continuously with time<sup>1</sup> and seem to have finite quadratic variation (see below). Brownian motion now rears its head for the following basic reason, a fundamental theorem of PAUL LÉVY:

Theorem 1. Every continuous-time martingale with continuous paths and finite quadratic variation is a time-changed Brownian motion.

The proof is beyond the scope of this course. (You may find it in KARATZAS & SHREVE, Brownian Motion and Stochastic Calculus, ch. 2.) We quote it here merely to justify the introduction of Brownian motion.

# 2. BROWNIAN MOTION: DEFINITION

Definition 1. A standard Brownian (or a standard Wiener process) is a stochastic process  $\{W_t\}_{t \geq 0+}$  (that is, a family of random variables  $W_t$ , indexed by nonnegative real numbers  $t$ , defined on a common probability space  $(\Omega, \mathcal{F}, P)$ ) with the following properties:

(1)  $W_{0} = 0$  
(2) With probability 1, the function  $t \to W_t$  is continuous in  $t$ .  
(3) The process  $\{W_t\}_{t \geq 0}$  has stationary, independent increments.  
(4) The increment  $W_{t+s} - W_s$  has the NORMAL(0,t) distribution.

The term independent increments means that for every choice of nonnegative real numbers

$$
0 \leq s_1 < t_1 \leq s_2 < t_2 \leq \dots \leq s_n < t_n < \infty,
$$

the increment random variables

$$
W_{t_1} - W_{s_1}, W_{t_2} - W_{s_2}, \dots, W_{t_n} - W_{s_n}
$$

are jointly independent; the term stationary increments means that for any  $0 < s, t < \infty$  the distribution of the increment  $W_{t+s} - W_s$  has the same distribution as  $W_t - W_0 = W_t$ .

It should not be obvious that properties (1)-(4) in the definition of a standard Brownian motion are mutually consistent, so it is not a priori clear that a standard Brownian motion exists. (The main issue is to show that properties (3)-(4) do not preclude the possibility of continuous paths.) That it does exist was first proved by N. WIENER in about 1920. But notice that properties (3) and (4) are compatible. This follows from the following elementary property of the normal distributions: If  $X, Y$  are independent, normally distributed random variables with means  $\mu_{X}, \mu_{Y}$  and variances  $\sigma_{X}^{2}, \sigma_{Y}^{2}$ , then the random variable  $X + Y$  is normally distributed with mean  $\mu_{X} + \mu_{Y}$  and variance  $\sigma_{X}^{2} + \sigma_{Y}^{2}$ .

# 3. BROWNIAN MOTION AS A LIMIT OF RANDOM WALKS

One of the many reasons that Brownian motion is important in probability theory is that it is, in a certain sense, a limit of rescaled simple random walks. Let  $\xi_1, \xi_2, \ldots$  be a sequence of independent, identically distributed random variables with mean 0 and variance 1. For each  $n \geq 1$  define a continuous-time stochastic process  $\{W_n(t)\}_{t \geq 0}$  by

$$
W_n(t) = \frac{1}{\sqrt{n}} \sum_{1 \leq j \leq \lfloor nt \rfloor} \xi_j \tag{1}
$$

This is a random step function with jumps of size  $\xi_k / \sqrt{n}$  at times  $k / n$ , where  $k \in \mathbb{Z}_+$ . Since the random variables  $\xi_j$  are independent, the increments of  $W_n(t)$  are independent. Moreover, for large  $n$  the distribution of  $W_n(t + s) - W_n(s)$  is close to the NORMAL  $(0, t)$  distribution, by the Central Limit theorem. Thus, it requires only a small leap of faith to believe that, as  $n \to \infty$ , the distribution of the random function  $W_n(t)$  approaches (in a certain sense)<sup>2</sup> that of a standard Brownian motion.

Why is this important? First, it explains, at least in part, why the Wiener process arises so commonly in nature. Many stochastic processes behave, at least for long stretches of time, like random walks with small but frequent jumps. The argument above suggests that such processes will look, at least approximately, and on the appropriate time scale, like Brownian motion.

Second, it suggests that many important "statistics" of the random walk will have limiting distributions, and that the limiting distributions will be the distributions of the corresponding statistics of Brownian motion. The simplest instance of this principle is the central limit theorem: the distribution of  $W_{n}(1)$  is, for large  $n$  close to that of  $W(1)$  (the gaussian distribution with mean 0 and variance 1). Other important instances do not follow so easily from the central limit theorem. For example, the distribution of

$$
M_n(t) := \max_{0 \leq s \leq t} W_n(t) = \max_{0 \leq k \leq nt} \frac{1}{\sqrt{n}} \sum_{1 \leq j \leq k} \xi_j \tag{2}
$$

converges, as  $n\to \infty$  , to that of

$$
M(t) := \max_{0 \leq s \leq t} W(t). \tag{3}
$$

Similarly, for any  $a > 0$  the distribution of

$$
\tau_n(a) := \min \{t \geq 0: W_n(t) \geq a \} \tag{4}
$$

approaches, as  $n\to \infty$  , that of

$$
\tau(a) := \min \{t \geq 0: W(t) = a \}. \tag{5}
$$

The distributions of  $M(t)$  and  $\tau(a)$  will be calculated below.

# 4. TRANSITION PROBABILITIES

The mathematical study of Brownian motion arose out of the recognition by Einstein that the random motion of molecules was responsible for the macroscopic phenomenon of diffusion. Thus, it should be no surprise that there are deep connections between the theory of Brownian motion and parabolic partial differential equations such as the heat and diffusion equations. At the root of the connection is the Gauss kernel, which is the transition probability function for Brownian motion:

$$
P(W_{t+s} \in dy | W_s = x) := p_t(x, y) dy = \frac{1}{\sqrt{2\pi t}} \exp\{-(y-x)^2/2t\} dy. \tag{6}
$$

This equation follows directly from properties (3)-(4) in the definition of a standard Brownian motion, and the definition of the normal distribution. The function  $p_t(y|x) = p_t(x,y)$  is called the Gauss kernel, or sometimes the heat kernel. (In the parlance of the PDE folks, it is the fundamental solution of the heat equation). Here is why:

Theorem 2. Let  $f: \mathbb{R} \to \mathbb{R}$  be a continuous function of (say) polynomial growth at infinity. Then the unique (continuous) solution  $u_t(x)$  to the initial value problem

$$
\frac{\partial u}{\partial t} = \frac{1}{2} \frac{\partial^2 u}{\partial x^2} \tag{7}
$$

$$
u_0(x) = f(x) \tag{8}
$$

is given by

$$
u_t(x) = E f\left(W_t^x\right) = \int_{y=-\infty}^{\infty} p_t(x, y) f(y) dy. \tag{9}
$$

Here  $W_{t}^{x}$  is a Brownian motion started at  $x$ .

The equation (7) is called the heat equation. That the PDE (7) has only one solution that satisfies the initial condition (8) follows from the maximum principle: see a PDE text if you are interested. The more important thing is that the solution is given by the expectation formula (9). To see that the right side of (9) actually does solve (7), take the partial derivatives in the PDE (7) under the integral in (9). You then see that the issue boils down to showing that

$$
\frac{\partial p_t(x, y)}{\partial t} = \frac{1}{2} \frac{\partial^2 p_t(x, y)}{\partial x^2}. \tag{10}
$$

Exercise: Verify this.

# 5. SYMMETRIES AND SCALING LAWS

Proposition 1. Let  $\{W(t)\}_{t\geq 0}$  be a standard Brownian motion. Then each of the following processes is also a standard Brownian motion:

$$
\{-W(t)\}_{t \geq 0} \tag{11}
$$

$$
\{W(t+s) - W(s)\}_{t \geq 0} \tag{12}
$$

$$
\left\{aW\left(t/a^2\right)\right\}_{t \geq 0} \tag{13}
$$

$$
\{tW(1/t)\}_{t \geq 0}. \tag{14}
$$

Exercise: Prove this.

These properties have important ramifications. The most basic of these involve the maximum and minimum random variables  $M(t)$  and  $M^{-}(t)$  defined by

$$
M(t) := \max \{W(s): 0 \leq s \leq t\} \quad \text{and} \tag{15}
$$

$$
M^-(t) := \min \{W(s): 0 \leq s \leq t\} \tag{16}
$$

These are well-defined, because the Wiener process has continuous paths, and continuous functions always attain their maximal and minimal values on compact intervals. Now observe that if the path  $W(s)$  is replaced by its reflection  $-W(s)$  then the maximum and the minimum are interchanged and negated. But since  $-W(s)$  is again a Wiener process, it follows that  $M(t)$  and  $-M^{-}(t)$  have the same distribution:

$$
M(t) \stackrel{\mathcal{D}}{=} -M^-(t). \tag{17}
$$

Property (13) is called the Brownian scaling property. It is perhaps the most useful elementary tool in the study of the Wiener process. As a first example, consider its implications for the distributions of the maximum random variables  $M(t)$ . Fix  $a > 0$ , and define

$$
W^*(t) = aW\left(t/a^2\right) \quad \text{and}
$$

$$
\begin{array}{l} M^*(t) = \max_{0\leq s\leq t}W^*(s) \\ = \max_{0 \leq s \leq t} aW\left(s/a^2\right) \\ = aM\left(t/a^2\right). \\ \end{array}
$$

By the Brownian scaling property,  $W^{*}(s)$  is a standard Brownian motion, and so the random variable  $M^{*}(t)$  has the same distribution as  $M(t)$ . Therefore,

$$
M(t) \stackrel{\mathcal{D}}{=} aM\left(t/a^2\right). \tag{18}
$$

On first sight, this relation appears rather harmless. However, as we shall see in section 8, it implies that the sample paths  $W(s)$  of the Wiener process are, with probability one, nondifferentiable at  $s = 0$ .

Exercise: Use Brownian scaling to deduce a scaling law for the first-passage time random variables  $\tau(a)$  defined as follows:

$$
\tau(a) = \min \{t: W(t) = a\} \tag{19}
$$

or  $\tau(a) = \infty$  on the event that the process  $W(t)$  never attains the value  $a$ .

# 6. THE BROWNIAN FILTRATION AND THE MARKOV PROPERTY

Property (12) is a rudimentary form of the Markov property of Brownian motion. The Markov property asserts something more: not only is the process  $\{W(t + s) - W(s)\}_{t\geq 0}$  a standard Brownian motion, but it is independent of the path  $\{W(r)\}_{0\leq r\leq s}$  up to time  $s$ . This may be stated more precisely using the language of  $\sigma$ -algebras. Define

$$
\mathcal{F}_t := \sigma\left(\{W(r)\}_{0 \leq r \leq s}\right) \quad \text{and} \quad \mathcal{F}_{\infty} := \sigma\left(\{W(r)\}_{0 \leq r < \infty}\right); \tag{20}
$$

for each  $t$ ,  $\mathcal{F}_t$  is the  $\sigma$ -algebra consisting of all events that are "observable" by time  $t$ . Formally,  $\mathcal{F}_t$  is defined to be the smallest  $\sigma$ -algebra containing all events of the form  $\{W(r) \leq a\}$ , where  $a \in \mathbb{R}$  and  $r \leq s$ . The collection  $\{\mathcal{F}_t\}_{t \geq 0}$  is called the Brownian filtration, or the standard filtration. Observe that it is, in fact, a filtration: that is, for any pair  $s < t$  it is the case that  $\mathcal{F}_s \subset \mathcal{F}_t$ .

Example: For each  $t \geq 0$  the random variable  $M(t)$  is measurable relative to  $\mathcal{F}_t$ . This means that, for every  $a \in \mathbb{R}$ , the event  $\{M(t) > a\}$  is an element of  $\mathcal{F}_t$ . To see this, observe that by path-continuity,

$$
\{M (t) > a \} = \bigcup_{s \in \mathbb {Q}: 0 \leq s \leq t} \{W (s) > a \}. \tag {21}
$$

Here  $\mathbb{Q}$  denotes the set of rational numbers. Because  $\mathbb{Q}$  is a countable set, the union in (21) is a countable union. Since each of the events  $\{W(s) > a\}$  in the union is an element of the  $\sigma$ -algebra  $\mathcal{F}_t$ , the event  $\{M(t) > a\}$  must also be an element of  $\mathcal{F}_t$ .

Proposition 2. (Markov Property) Let  $\{W(t)\}_{t\geq 0}$  be a standard Brownian motion,  $\{\mathcal{F}_t\}_{t\geq 0}$  the standard filtration, and for  $s > 0, t\geq 0$  define  $W^{*}(t) = W(t + s) - W(s)$  and let  $\{\mathcal{F}_t^*\}_{t\geq 0}$  be its filtration. Then for each  $t > 0$  the  $\sigma$ -algebras  $\mathcal{F}(s)$  and  $\mathcal{F}^* (t)$  are independent.

Corollary 1. The random variables  $M(s)$  and  $M^{*}(t) = \max_{0\leq r\leq t}W^{*}(r)$  are independent.

Proof of the Markov Property. The Markov Property is nothing more than a sophisticated restatement of the independent increments property of Brownian motion. One first uses independent increments to show that certain types of events in the two  $\sigma$ -algebras are independent: in particular,

$$
A = \cap_{j = 1}^{n} \left\{W \left(s_{j}\right) - W \left(s_{j - 1}\right) \leq x_{j} \right\} \in \mathcal {F}_{s} \quad \text{an d}
$$

$$
B = \cap_{j = 1}^{m} \left\{W \left(t_{j} + s\right) - W \left(t_{j - 1} + s\right) \leq y_{j} \right\} \in \mathcal {F}_{t}^{*}
$$

are independent. Events of type  $A$  generate the  $\sigma$ -algebra  $\mathcal{F}_s$ , and events of type  $B$  generate the  $\sigma$ -algebra  $\mathcal{F}_t^*$  (by definition!). A standard approximation procedure in measure theory (based on the so-called " $\pi - \lambda$ " theorem — see BILLINGSLEY, Probability and Measure) now allows one to conclude that the  $\sigma$ -algebras  $\mathcal{F}(s)$  and  $\mathcal{F}^*(t)$  are independent.

The Markov property has an important generalization called the Strong Markov Property, which is the most important tool in the study of the Wiener process. This generalization involves the notion of a stopping time for the Brownian filtration. A stopping time is defined to be a nonnegative random variable  $\tau$  such that for each (nonrandom)  $t \geq 0$  the event  $\{\tau \leq t\}$  is an element of the  $\sigma$ -algebra  $\mathcal{F}_t$ .

Example:  $\tau(a) := \min \{t : W(t) = a\}$  is a stopping time. To see this, observe that, because the paths of the Wiener process are continuous, the event  $\{\tau(a) \leq t\}$  is identical to the event  $\{M(t) \geq a\}$ . We have already shown that this event is an element of  $\mathcal{F}_t$ .

Associated with any stopping time  $\tau$  is a  $\sigma$ -algebra  $\mathcal{F}_{\tau}$ , defined to be the collection of all events  $B$  such that  $B \cap \{\tau \leq t\} \in \mathcal{F}_t$ . Informally,  $\mathcal{F}_{\tau}$  consists of all events that are "observable" by time  $\tau$ .

Example: Let  $\tau = \tau_{a}$  as above, and let  $B$  be the event that the Brownian path  $W(t)$  hits  $b$  before it hits  $a$ . Then  $B \in \mathcal{F}_{\tau}$ .

Theorem 3. (Strong Markov Property) Let  $\{W(t)\}_{t\geq 0}$  be a standard Brownian motion with filtration  $\{\mathcal{F}_t\}$ , and let  $\tau$  be a stopping time relative to this filtration, with associated stopping  $\sigma$ -algebra  $\mathcal{F}_{\tau}$ . For  $t\geq 0$ , define

$$
\left. \quad W^{*} (t) = W (t + \tau) - W (\tau), \right.
$$

and let  $\{\mathcal{F}_t^*\}_{t\geq 0}$  be the filtration of the process  $\{W^{*}(t)\}_{t\geq 0}$ . Then

(a)  $\{W^{*}(t)\}_{t > 0}$  is a standard Brownian motion; and  
(b) For each  $t > 0$ , the  $\sigma$ -algebra  $\mathcal{F}_t^*$  is independent of  $\mathcal{F}_{\tau}$ .

Details of the proof are omitted (see, for example, KARATZAS & SHREVE, pp. 79ff). Instead, let's discuss briefly the meaning of the statement. In essence, the theorem says that the post- $\tau$  process  $W^{*}(t)$  is itself a standard Brownian motion, and that it is independent of everything that happened up to time  $\tau$ . Thus, in effect, the Brownian motion "begins anew" at time  $\tau$ , paying no further attention to what it did before  $\tau$ . Note that simple random walk (the discrete-time process in which, at each time  $n$  one tosses a fair coin to decide whether to move up or down one unit) has an analogous property. If, for instance, one waits until first arriving at some integer  $k$  and then continues tossing the coin, the coin tosses after the first arrival at  $k$  are independent of the tosses prior to the first arrival. This is not difficult to show:

Exercise: Formulate and prove a Strong Markov Property for simple random walk.

The hypothesis that  $\tau$  be a stopping time is essential for the truth of the Strong Markov Property. Mistaken application of the Strong Markov Property may lead to intricate and sometimes subtle contradictions. Here is an example: Let  $T$  be the first time that the Wiener path reaches its maximum value up to time 1, that is,

$$
T = \min  \{t: W (t) = M (1) \}.
$$

Observe that  $T$  is well-defined, by path-continuity, which assures that the set of times  $t \leq 1$  such that  $W(t) = M(1)$  is closed and nonempty. Since  $M(1)$  is the maximum value attained by the Wiener path up to time 1, the post- $T$  path  $W^{*}(s) = W(T + s) - W(T)$  cannot enter the positive half-line  $(0,\infty)$  for  $s \leq 1 - T$ . Later we will show that  $T < 1$  almost surely; thus, almost surely,  $W^{*}(s)$  does not immediately enter  $(0,\infty)$ . Now if the Strong Markov Property were true for the random time  $T$ , then it would follow that, almost surely,  $W(s)$  does not immediately enter  $(0,\infty)$ . Since  $-W(s)$  is also a Wiener process, we may infer that, almost surely,  $W(s)$  does not immediately enter  $(-\infty,0)$ , and so  $W(s) = 0$  for all  $s$  in a (random) time interval of positive duration beginning at 0. But this is impossible, because with probability one,

$$
W (s) \neq 0 \quad \text{fo ra ll ra ti on al ti me s} s > 0.
$$

# 7. THE REFLECTION PROPERTY AND FIRST-PASSAGE TIMES

Proposition 3.

$$
P \{M (t) \geq a \} = P \left\{\tau_{a} <   t \right\} = 2 P \{W (t) > a \} = 2 - 2 \Phi (a / \sqrt{t}). \tag {25}
$$

Proof. The argument is based on a symmetry principle that may be traced back to the French mathematician D. ANDRE, and is often referred to as the reflection principle. The essential point of the argument is this: if  $\tau(a) < t$ , then  $W(t)$  is just as likely to be above the level  $a$  as to below the level  $a$ . Justification of this claim requires the use of the Strong Markov Property. First, observe that  $\tau(a) \wedge t$  is a stopping time. Thus, by the strong Markov property, the post- $\tau_a \wedge t$  process is a standard Brownian motion independent of the path up to time  $\tau_a \wedge t$  (and, therefore, independent of  $\tau_a \wedge t$ ). It follows that, for any  $s < t$ , the conditional distribution of  $W(t) - W(s)$  given that  $\tau_a = s$  is Gaussian with mean 0 and variance  $t - s > 0$ , and so, by the symmetry of the Gaussian distribution,

$$
P (W (t) - W (\tau_{a}) > 0 \mid \tau_{a} = s) = P (W (t) - W (\tau_{a}) <   0 \mid \tau_{a} = s) = 1 / 2.
$$

Integration over  $0 < s < t$  against the distribution of  $\tau(a)$  gives

$$
P \{W (t) - W (\tau_{a}) > 0 \mathrm{an d} \tau_{a} <   t \} = \frac{1}{2} P \{\tau_{a} <   t \}.
$$

But the event  $\{W(t) - W(\tau_a) > 0\} \cap \{\tau_a < t\}$  coincides with the event  $\{W(t) > a\}$ , because (i) if  $\tau_a < t$  then, since  $W(\tau_{a}) = a$ , the inequality  $W(t) - W(\tau_{a}) > 0$  implies  $W(t) > a$ ; and (ii) if  $W(t) > a$  then the Intermediate Value Theorem of calculus and the path-continuity of  $W(s)$  implies that  $\tau_{a} < t$ . This proves that

$$
P \left\{\tau_{a} <   t \right\} = 2 P \left\{W (t) > a \right\} = 2 \left(1 - \Phi \left(a / \sqrt{t}\right)\right).
$$

Because the expression on the right side of this equation is a continuous function of  $t$ , it follows that  $P\{\tau(a) < t\} = P\{\tau(a) \leq t\}$ . Finally, since the events  $\{\tau(a) \leq t\}$  and  $\{M(t) \geq a\}$  are the same, we have  $P\{\tau(a) \leq t\} = P\{M(t) \geq a\}$ .

Corollary 2. The first-passage time random variable  $\tau(a)$  is almost surely finite, and has the one-sided stable probability density function of index  $1/2$ :

$$
f (t) = \frac{a e^{- a^{2} / 2 t}}{\sqrt{2 \pi t^{3}}}. \tag {29}
$$

There is a more sophisticated form of the reflection principle that is useful in certain calculations. Set  $\tau = \tau(a)$ , where  $\tau(a)$  is the first passage time to the value  $a$ . The random variable  $\tau$  is a stopping time, and we have now shown that it is finite with probability one. By the Strong Markov Property, the post- $\tau$  process

$$
W^{*} (t) := W (\tau + t) - W (\tau) \tag {30}
$$

is a Wiener process, and is independent of the stopping field  $\mathcal{F}_{\tau}$ . Consequently,  $\{-W^{*}(t)\}_{t\geq 0}$  is also a Wiener process, and is also independent of the stopping field  $\mathcal{F}_{\tau}$ . Thus, if we were to run the original Wiener process  $W(s)$  until the time  $\tau$  of first passage to the value  $a$  and then attach not  $W^{*}$  but instead its reflection  $-W^{*}$ , we would again obtain a Wiener process. This new process is formally defined as follows:

$$
\begin{array}{l} \tilde {W} (s) = W (s) \quad \text{fo r} s \leq \tau , \tag {31} \\ = 2 a - W (s) \quad \text{fo r} s \geq \tau . \\ \end{array}
$$

Proposition 4. (Reflection Principle) If  $\{W(t)\}_{t\geq 0}$  is a Wiener process, then so is  $\{\tilde{W} (t)\}_{t\geq 0}$ .

Proof. An exercise for the interested reader.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/d15cfcc2-fa87-440e-80a3-70c3b25f59cd/a5ca1725dbb01319356d8c70b87faa436714582ecfb3a068f3f1f72621b54607.jpg)

The analogous property for the simple random walk is worth noting. Simple random walk is performed by repeatedly tossing a fair coin, moving one step to the right on every H, and one step to the left on every T. The simple random walk with reflection in the level  $a$ , for an integer value  $a$ , is gotten by changing the law of motion at the time of first passage to  $a$ : after this time, one moves one step to the left on every H, and one step to the right on every T. It is fairly obvious (and easy to prove) that this modification does not change the "statistics" of the random walk.

The Reflection Principle for Brownian motion, as formalized in Proposition 4, allows one to calculate the joint distribution of  $M(t)$  and  $W(t)$ :

# Corollary 3.

$$
P \{M (t) \geq a \text{an d} W (t) \leq a - b \} = P \{W (t) \geq a + b \quad \forall a, b > 0. \tag {32}
$$

Proof. Because the paths  $W(s)$  and  $\tilde{W}(s)$  coincide up to time  $\tau$ , the event that  $M(t) \geq a$  coincides with the event  $\tilde{M}(t) \geq a$ , where  $\tilde{M}(t)$  is defined to be the maximum of the path  $\tilde{W}(s)$  for  $0 \leq s \leq t$ . Thus, by (31),

$$
\{M (t) \geq a \mathrm{an d} W (t) \leq a - b \} = \{\tilde {M} (t) \geq a \mathrm{an d} \tilde {W} (t) \geq a + b \} = \{\tilde {W} (t) \geq a + b \}.
$$

The Reflection Principle implies that the events  $\{\tilde{W}(t) \geq a + b\}$  and  $\{W(t) \geq a + b\}$  have the same probability, and so the corollary follows.

# Corollary 4.

$$
P \{M (t) \in d a \text{an d} W (t) \in a - d b \} = \frac{2 (a + b) \exp \left\{- (a + b)^{2} / 2 t \right\}}{(2 \pi)^{1 / 2} t} d a d b \tag {34}
$$

# 8. BEHAVIOR OF BROWNIAN PATHS

In the latter half of the nineteenth century, mathematicians began to encounter (and invent) some rather strange objects. Weierstrass produced a continuous function that is nowhere differentiable (more on this later). Cantor constructed a subset  $C$  (the "Cantor set") of the unit interval with zero area (Lebesgue measure) that is nevertheless in one-to-one correspondence with the unit interval, and has the further disconcerting property that between any two points of  $C$  lies an interval of positive length totally contained in the complement of  $C$ . Not all mathematicians were pleased by these new objects. Hermite, for one, remarked that he was "revolted" by this plethora of nondifferentiable functions and bizarre sets.

With Brownian motion, the strange becomes commonplace. With probability one, the sample paths are nowhere differentiable, and the zero set  $\mathcal{Z} := \{t \leq 1 : W(t) = 0\}$  is a homeomorphic image of the Cantor set. Complete proofs of these facts are beyond the scope of these notes. However, some closely related facts may be established using only the formula (25) and elementary arguments.

# 8.1. Zero Set of a Brownian Path. The zero set is

$$
\mathcal {Z} = \{t \geq 0: W (t) = 0 \}. \tag {35}
$$

Because the path  $W(t)$  is continuous in  $t$ , the set  $\mathcal{Z}$  is closed. Furthermore, with probability one the Lebesgue measure of  $\mathcal{Z}$  is 0, because Fubini's theorem implies that the expected Lebesgue measure

of  $\mathcal{Z}$  is 0:

$$
\begin{array}{l} E | \mathcal {Z} | = E \int_{0}^{\infty} \mathbf {1}_{\{0 \}} (W_{t}) d t \\ = \int_{0}^{\infty} E \mathbf {1}_{\{0 \}} (W_{t}) d t \\ = \int_{0}^{\infty} P \left\{W_{t} = 0 \right\} d t \\ = 0, \\ \end{array}
$$

where  $|\mathcal{Z}|$  denotes the Lebesgue measure of  $\mathcal{Z}$ . Observe that for any fixed (nonrandom)  $t > 0$ , the probability that  $t \in \mathcal{Z}$  is 0, because  $P\{W(t) = 0\} = 0$ . Hence, because  $\mathbb{Q}_{+}$  (the set of positive rationals) is countable,

$$
P \left\{\mathbb {Q}_{+} \cap \mathcal {Z} \neq \emptyset \right\} = 0. \tag {36}
$$

Proposition 5. With probability one, the Brownian path  $W(t)$  has infinitely many zeros in every time interval  $(0,\varepsilon)$ , where  $\varepsilon >0$ .

Proof. First we show that for every  $\varepsilon > 0$  there is, with probability one, at least one zero in the time interval  $(0, \varepsilon)$ . Recall (equation (11)) that the distribution of  $M^{-}(t)$ , the minimum up to time  $t$ , is the same as that of  $-M(t)$ . By formula (25), the probability that  $M(\varepsilon) > 0$  is one; consequently, the probability that  $M^{-}(\varepsilon) < 0$  is also one. Thus, with probability one,  $W(t)$  assumes both negative and positive values in the time interval  $(0, \varepsilon)$ . Since the path  $W(t)$  is continuous, it follows, by the Intermediate Value theorem, that it must assume the value 0 at some time between the times it takes on its minimum and maximum values in  $(0, \varepsilon]$ .

We now show that, almost surely,  $W(t)$  has infinitely many zeros in the time interval  $(0, \varepsilon)$ . By the preceding paragraph, for each  $k \in \mathbb{N}$  the probability that there is at least one zero in  $(0, 1 / k)$  is one, and so with probability one there is at least one zero in every  $(0, 1 / k)$ . This implies that, with probability one, there is an infinite sequence  $t_n$  of zeros converging to zero: Take any zero  $t_1 \in (0, 1)$ ; choose  $k$  so large that  $1 / k < t_1$ ; take any zero  $t_2 \in (0, 1 / k)$ ; and so on.

Proposition 6. With probability one, the zero set  $\mathcal{Z}$  of a Brownian path is a perfect set, that is,  $\mathcal{Z}$  is closed, and for every  $t \in \mathcal{Z}$  there is a sequence of distinct elements  $t_n \in \mathcal{Z}$  such that  $\lim_{n \to \infty} t_n = t$ .

Proof. That  $\mathcal{Z}$  is closed follows from path-continuity, as noted earlier. Fix a rational number  $q > 0$  (nonrandom), and define  $\nu = \nu_q$  to be the first time  $t \geq q$  such that  $W(t) = 0$ . Because  $W(q) \neq 0$  almost surely, the random variable  $\nu_q$  is well-defined and is almost surely strictly greater than  $q$ . By the Strong Markov Property, the post- $\nu_q$  process  $W(\nu_q + t) - W(\nu_q)$  is, conditional on the stopping field  $\mathcal{F}_\nu$ , a Wiener process, and consequently, by Proposition 5, it has infinitely many zeros in every time interval  $(0, \varepsilon)$ , with probability one. Since  $W(\nu_q) = 0$ , and since the set of rationals is countable, it follows that, almost surely, the Wiener path  $W(t)$  has infinitely many zeros in every interval  $(\nu_q, \nu_q + \varepsilon)$ , where  $q \in \mathbb{Q}$  and  $\varepsilon > 0$ .

Now let  $t$  be any zero of the path. Then either there is an increasing sequence  $t_n$  of zeros such that  $t_n \to t$ , or there is a real number  $\varepsilon > 0$  such that the interval  $(t - \varepsilon, t)$  is free of zeros. In the latter case, there is a rational number  $q \in (t - \varepsilon, t)$ , and  $t = \nu_q$ . In this case, by the preceding paragraph, there must be a decreasing sequence  $t_n$  of zeros such that  $t_n \to t$ .

It may be shown that every compact perfect set of Lebesgue measure zero is homeomorphic to the Cantor set. (This is not especially difficult - consult your local mathematician for assistance.) Thus, with probability one, the set of zeros of the Brownian path  $W(t)$  in the unit interval is a homeomorphic image of the Cantor set.

# 8.2. Nondifferentiability of Paths.

Proposition 7. For each  $t \geq 0$ , the Brownian path is almost surely not differentiable at  $t$ .

Note: It follows that, with probability one, the Brownian path is not differentiable at any rational time  $t \geq 0$ . Dvoretsky, ERDOS, and KAKUTANI proved an even stronger statement: with probability one, the Brownian path is nowhere differentiable. This, like Proposition 7, is ultimately a consequence of Brownian scaling.

Proof. By the Markov property, it suffices to prove that the Brownian path is almost surely not differentiable at  $t = 0$ . Suppose that it were: then the difference quotients  $W(t) / t$  would be bounded for  $t$  in some neighborhood of 0, that is, for some  $A < \infty$  and  $\varepsilon > 0$  it would be the case that

$$
W (t) <   A t \quad \text{fo ra ll} 0 \leq t <   \varepsilon .
$$

Fix an integer  $A > 0$ . By formula (25),

$$
P \{M (t) <   A t \} = 2 - 2 \Phi (A t / \sqrt{t}) = 2 - 2 \Phi (A \sqrt{t}) \longrightarrow 0
$$

as  $t \to 0$ . Consequently, for each fixed  $A > 0$ , the probability that  $W(t) < At$  for all  $t \leq \varepsilon$  is zero. Since the union of countably many events of probability zero has probability zero, it follows that for any  $\varepsilon > 0$  the event that  $W(t) / t$  remains bounded for  $0 \leq t < \varepsilon$  has probability zero.

# 9. WALD IDENTITIES FOR BROWNIAN MOTION

Proposition 8. Let  $\{W(t)\}_{t\geq 0}$  be a standard Wiener process, and let  $\tau$  be a bounded stopping time. Then

$$
E W (\tau) = 0; \tag {37}
$$

$$
E W (\tau)^{2} = E \tau ; \tag {38}
$$

$$
E \exp \left\{\theta W (\tau) - \theta^{2} \tau / 2 \right\} = 1 \quad \forall \theta \in \mathbb {R}; a n d \tag {39}
$$

$$
E \exp \{i \theta W (\tau) + \theta^{2} \tau / 2 \} = 1 \quad \forall \theta \in \mathbb {R}. \tag {40}
$$

Observe that for nonrandom times  $\tau = t$ , these identities follow from elementary properties of the normal distribution. Notice also that if  $\tau$  is an unbounded stopping time, then the identities may fail to be true: for example, if  $\tau = \tau(1)$  is the first passage time to the value 1, then  $W(\tau) = 1$ , and so  $EW(\tau) \neq 0$ . Finally, it is crucial that  $\tau$  should be a stopping time: if, for instance,  $\tau = \min \{t \leq 1 : W(t) = M(1)\}$ , then  $EW(\tau) = EM(1) > 0$ .

Proof. By hypothesis,  $\tau$  is a bounded stopping time, so there is a nonrandom  $N < \infty$  such that  $\tau < N$  almost surely. By the Strong Markov Property, the post- $\tau$  process  $W(\tau + t) - W(\tau)$  is a standard Wiener process that is independent of the stopping field  $\mathcal{F}_{\tau}$ , and, in particular, independent of the random vector  $(\tau, W(\tau))$ . Hence, the conditional distribution of  $W(N) - W(\tau)$  given that  $\tau = s$  is the normal distribution with mean 0 and variance  $N - s$ . It follows that

$$
E (\exp \{\theta (W (N) - W (\tau)) - \theta^{2} (N - \tau) \} \mid W (\tau), \tau) = 1
$$

Therefore,

$$
\begin{array}{l} E e^{\theta W (\tau) - \theta^{2} \tau / 2} = E \exp \left\{\theta W (\tau) - \theta^{2} \tau / 2 \right\} \cdot 1 \\ = E \exp \left\{\theta W (\tau) - \theta^{2} \tau / 2 \right\} E \left(\exp \left\{\theta (W (N) - W (\tau)) - \theta^{2} (N - \tau) \right\} \mid W (\tau), \tau) \right. \\ = E E \left(\exp \left\{\theta W (\tau) - \theta^{2} \tau / 2 \right\} \exp \left\{\theta (W (N) - W (\tau)) - \theta^{2} (N - \tau) \right\} \mid W (\tau), \tau\right) \\ = E E \left(\exp \left\{\theta W (N) - \theta^{2} N / 2 \right\} \mid W (\tau), \tau\right) \\ = E \exp \left\{\theta W (N) - \theta^{2} N / 2 \right\} \\ = 1. \\ \end{array}
$$

The other three identities can be established in a similar fashion.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/d15cfcc2-fa87-440e-80a3-70c3b25f59cd/a1e3657ef94bc913da8405052114f64cd41f03b3adfb82ddb0b3548266e25add.jpg)

Example 1: Fix constants  $a, b > 0$ , and define  $T = T_{-a,b}$  to be the first time  $t$  such that  $W(t) = -a$  or  $+b$ . The random variable  $T$  is a finite, but unbounded, stopping time, and so the Wald identities may not be applied directly. However, for each integer  $n \geq 1$ , the random variable  $T \wedge n$  is a bounded stopping time. Consequently,

$$
E W (T \wedge n) = 0 \qquad \text{an d} \qquad E W (T \wedge n)^{2} = E T \wedge n.
$$

Now until time  $T$ , the Wiener path remains between the values  $-a$  and  $+b$ , so the random variables  $|W(T \wedge n)|$  are uniformly bounded by  $a + b$ . Furthermore, by path-continuity,  $W(T \wedge n) \to W(T)$  as  $n \to \infty$ . Therefore, by the dominated convergence theorem,

$$
E W (T) = - a P \{W (T) = - a \} + b P \{W (T) = b \} = 0.
$$

Since  $P\{W(T) = -a\} + P\{W(T) = b\} = 1$ , it follows that

$$
\boxed {P \{W (T) = b \} = \frac{a}{a + b}.} \tag {44}
$$

The dominated convergence theorem also guarantees that  $EW(T \wedge n)^2 \to EW(T)^2$ , and the monotone convergence theorem that  $ET \wedge n \uparrow ET$ . Thus,

$$
E W (T)^{2} = E T.
$$

Using (44), one may now easily obtain

$$
\boxed {E T = a b.} \tag {46}
$$

Example 2: Let  $\tau = \tau(a)$  be the first passage time to the value  $a > 0$  by the Wiener path  $W(t)$ . As we have seen,  $\tau$  is a stopping time and  $\tau < \infty$  with probability one, but  $\tau$  is not bounded. Nevertheless, for any  $n < \infty$ , the truncation  $\tau \wedge n$  is a bounded stopping time, and so by the third Wald identity, for any  $\theta > 0$ ,

$$
E \exp \left\{\theta W (\tau \wedge n) - \theta^{2} (\tau \wedge n) \right\} = 1. \tag {47}
$$

Because the path  $W(t)$  does not assume a value larger than  $a$  until after time  $\tau$ , the random variables  $W(\tau \wedge n)$  are uniformly bounded by  $a$ , and so the random variables in equation (47) are dominated by the constant  $\exp\{\theta a\}$ . Since  $\tau < \infty$  with probability one,  $\tau \wedge n \rightarrow \tau$  as  $n \rightarrow \infty$ , and by path-continuity, the random variables  $W(\tau \wedge n)$  converge to  $a$  as  $n \rightarrow \infty$ . Therefore, by the dominated convergence theorem,

$$
E \exp \{\theta a - \theta^{2} (\tau) \} = 1.
$$

Thus, setting  $\lambda = \theta^2 / 2$ , we have

$$
\boxed {E \exp \{- \lambda \tau_{a} \} = \exp \{- \sqrt{2 \lambda} a \}.} \tag {49}
$$

The only density with this Laplace transform<sup>4</sup> is the one-sided stable density given in equation (29). Thus, the Optional Sampling Formula gives us a second proof of (25).

# 10. QUADRATIC VARIATION OF BROWNIAN PATHS

Fix  $t > 0$ , and let  $\Pi = \{t_0, t_1, t_2, \ldots, t_n\}$  be a partition of the interval  $[0, t]$ , that is, an increasing sequence  $0 = t_0 < t_1 < t_2 < \dots < t_n = t$ . For each natural number  $n$ , define the  $n$ th dyadic partition  $\mathcal{D}_n[0, t]$  to be the partition consisting of the dyadic rationals  $k/2^n$  of depth  $n$  (here  $k$  is an integer) that are between 0 and  $t$  (with  $t$  added if it is not a dyadic rational of depth  $n$ ). Let  $X(s)$  be any process indexed by  $s$ . For any partition  $\Pi$ , define the quadratic variation of  $X$  relative to  $\Pi$  by

$$
Q V (X; \Pi) = \sum_{j = 1}^{n} \left(X \left(t_{j}\right) - X \left(t_{j - 1}\right)\right)^{2}. \tag {50}
$$

Proposition 9. Let  $\{W(t)\}_{t\geq 0}$  be a standard Brownian motion. For each  $t > 0$ , with probability one,

$$
\lim_{n \rightarrow \infty} Q V (W; \mathcal {D}_{n} [ 0, t ]) = t. \tag {51}
$$

The primary significance of this result is that it is the key to the Itô formula pf stochastic calculus, about which we shall have much to say later in the course. It also implies that the Brownian path cannot be of bounded variation in any interval, and so in particular is not differentiable in any interval. (Even more is known: the Brownian path is nowhere differentiable.)

Partial Proof. We will first prove the weaker statement that the convergence in (51) holds in probability. To simplify things, assume that  $t = 1$ . Then for each  $n \geq 1$ , the random variables

$$
\xi_{n, k} := 2^{n} \left(W (k / 2^{n}) - W ((k - 1) / 2^{n})\right)^{2}, \quad k = 1, 2, \dots , 2^{n}
$$

are independent, identically distributed  $\chi^2$  with one degree of freedom (that is, they are distributed as the square of a standard normal random variable). Observe that  $E\xi_{n,k} = 1$ . Now

$$
Q V (W; \mathcal {D}_{n} [ 0, 1 ]) = 2^{- n} \sum_{k = 1}^{2^{n}} \xi_{n, k}.
$$

The right side of this equation is the average of  $2^{n}$  independent, identically distributed random variables, and so the Weak Law of Large Numbers implies convergence in probability to the mean of the  $\chi^2$  distribution with one degree of freedom, which equals 1.

The stronger statement that the convergence holds with probability one can easily be deduced from the Chebyshev inequality and the Borel-Cantelli lemma. The Chebyshev inequality implies that

$$
P \{| Q V (W; \mathcal {D}_{n} [ 0, 1 ]) - 1 | \geq \varepsilon \} = P \{| \sum_{k = 1}^{2^{n}} (\xi_{n, k} - 1) | \geq 2^{n} \varepsilon \} \leq \frac{E \xi_{1 , 1}^{2}}{4^{n} \varepsilon^{2}}.
$$

Since  $\sum_{n=1}^{\infty} 1/4^n < \infty$ , the Borel-Cantelli lemma implies that, with probability one, the event  $|QV(W; \mathcal{D}_n[0,1]) - 1| \geq \varepsilon$  occurs for at most finitely many  $n$ . Since  $\varepsilon > 0$  can be chosen arbitrarily small, it follows that  $\lim_{n \to \infty} QV(W; \mathcal{D}_n[0,1]) = 1$  almost surely.

# Stochastic Integrals

SERGIO M. FOCARDI, PhD

Partner, The Intertek Group

FRANK J. FABOZZI, PhD, CFA, CPA

Professor of Finance, EDHEC Business School

Abstract: Calculus is an important tool because it provides two key ideas for financial modeling: (1) the concept of instantaneous rate of change, and (2) a framework and rules for linking together quantities and their instantaneous rates of change. Calculus made the concept of infinitely small quantities precise with the notion of limit. If the rate of change can get arbitrarily close to a definite number by making the time interval sufficiently small, that number is the instantaneous rate of change. The instantaneous rate of change is the limit of the rate of change when the length of the interval gets infinitely small. This limit is referred to as the derivative of a function, or simply derivative. Starting from this definition and with the help of a number of rules for computing a derivative, it was shown that the instantaneous rate of change of a number of functions can be explicitly computed as a closed formula. The process of computing a derivative, referred to as differentiation, solves the problem of finding the steepness of the tangent to a curve; the process of integration solves the problem of finding the area below a given curve. A key result of calculus is the discovery that integration and derivation are inverse operations: Integrating the derivative of a function yields the function itself. Standard calculus deals with deterministic functions. As such, there are limits as to the application of integration of determinist functions to financial modeling such as pricing contingent claims. The major application of integration to financial modeling involves stochastic integrals. An understanding of stochastic integrals is needed to understand an important tool in contingent claims valuation: stochastic differential equations.

In elementary calculus, integration is an operation performed on single, deterministic functions; the end product is another single, deterministic function. Integration defines a process of cumulation: The integral of a function represents the area below the function. However, the usefulness of deterministic functions in financial modeling is limited. Given the amount of uncertainty, few laws in finan cial theory can be expressed through them. It is necessary to adopt an ensemble view, where the path of economic variables must be considered a realization of a stochastic process, not a deterministic path. We must therefore move from deterministic integration to stochastic integration. In doing so we have to define how to cumulate random shocks in a continuous-time environment. These concepts require rigorous


definition. In this entry, we define the concept and the properties of stochastic integration. Based on the concept of stochastic integration, an important tool used in financial modeling, stochastic differential equations can be understood.

Two observations are in order. First, although ordinary integrals and derivatives operate on functions and yield either individual numbers or other functions, stochastic integration operates on stochastic processes and yields either random variables or other stochastic processes. Therefore, while a definite integral is a number and an indefinite integral is a function, a stochastic integral is a random variable or a stochastic process. A differential equation—when equipped with suitable initial or boundary conditions—admits as a solution a single function while a stochastic differential equation admits as a solution a stochastic process.

Second, moving from a deterministic to a stochastic environment does not necessarily require leaving the realm of standard calculus. In fact, all the stochastic laws of financial theory could be expressed as laws that govern the distribution of transition probabilities. An example of this mathematical strategy is the application of the forward Komogorov differential equation or the Fokker-Planck differential equation to term structure modeling, which are deterministic partial differential equations that govern the probability distributions of prices. Nevertheless it is often convenient to represent uncertainty directly through stochastic integration and stochastic differential equations. This approach is not limited to financial theory: It is also used in the domain of the physical sciences. In financial theory, stochastic differential equations have the advantage of being intuitive: Thinking in terms of a deterministic path plus an uncertain term is easier than thinking in terms of abstract probability distributions. There are other reasons why stochastic calculus is the methodology of choice in economics and finance but easy intuition plays a key role.
$$ which is the general solution of the differential equation:


$$
\frac{d y}{y} = f (t) d t
$$

The solution of this differential equation tells us how the bank account cumulates over time.

However, if the rate is not deterministic but is subject to volatility—that is, at any instant the rate is  $f(t)$  plus a random disturbance—then the bank account evolves as a stochastic process. That is to say, the bank account might follow any of an infinite number of different paths: Each path cumulates the rate  $f(t)$  plus the random disturbance. In a sense that will be made precise in this entry and with an understanding of stochastic differential equations, we must solve the following equation:

$$
\frac{d y}{y} = f (t) d t \text{pl us ra nd om di st ru ba nc e}
$$

Here is where stochastic integration comes into play: It defines how the stochastic rate process is transformed into the stochastic account process. This is the direct stochastic integration approach.

It is possible to take a different approach. At any instant  $t$ , the instantaneous interest rate and the cumulated bank account have two probability distributions. We could use a partial differential equation to describe how the probability distribution of the cumulated bank account is linked to the interest rate probability distribution.

Similar reasoning applies to stock and derivative price processes. In continuous-time finance, these processes are defined as stochastic processes that are the solution of a stochastic differential equation. Hence, the importance of stochastic integrals in continuous-time finance theory should be clear.

Following some remarks on the informal intuition behind stochastic integrals, we proceed to define Brownian motions and outlines the formal mathematical process through which stochastic integrals are defined. A number of properties of stochastic integrals are then established. After introducing stochastic integrals informally, we go on to define more rigorously the mathematical process for defining stochastic integrals.

# THE INTUITION BEHIND STOCHASTIC INTEGRALS

Let's first contrast ordinary integration with stochastic integration. A definite integral

$$
A = \int_{a}^{b} f (x) d x
$$ is a number  $A$  associated to each function  $f(x)$  while an indefinite integral


$$ y (x) = \int_{a}^{x} f (s) d s
$$ is a function  $y$  associated to another function  $f$ . The integral represents the cumulation of the infinite terms  $f(s)ds$  over the integration interval.


A stochastic integral, which we will denote by

$$
W = \int_{a}^{b} X_{t} d B_{t}
$$ or


$$
W = \int_{a}^{b} X_{t} \circ d B_{t}
$$ is a random variable  $W$  associated to a stochastic process if the time interval is fixed or, if the time interval is variable, is another stochastic process  $W_{t}$ . The stochastic integral represents the cumulation of the stochastic products  $X_{t}dB_{t}$ . The rationale for this approach is that we need


to represent how random shocks feed back into the evolution of a process. We can cumulate separately the deterministic increments and the random shocks only for linear processes. In nonlinear cases, as in the simple example of the bank account, random shocks feed back into the process. For this reason we define stochastic integrals as the cumulation of the product of a process  $X$  by the random increments of a Brownian motion.

Consider a stochastic process  $X_{t}$  over an interval  $[S,T]$ . Recall that a stochastic process is a real variable  $X(\omega)_t$  that depends on both time and the state of the economy  $\omega$ . For any given  $\omega$ ,  $X(\cdot)_t$  is a path of the process from the origin  $S$  to time  $T$ . A stochastic process can be identified with the set of its paths equipped with an appropriate probability measure. A stochastic integral is an integral associated to each path; it is a random variable that associates a real number, obtained as a limit of a sum, to each path. If we fix the origin and let the interval vary, then the stochastic integral is another stochastic process.

It would seem reasonable, prima facie, to define the stochastic integral of a process  $X(\omega)_t$  as the definite integral in the sense of Riemann-Stieltjes associated to each path  $X(\cdot)_t$  of the process. If the process  $X(\omega)_t$  has continuous paths  $X(\cdot, \omega)$ , the integrals

$$
W (\omega) = \int_{S}^{T} X (s, \omega) d s
$$ exist for each path. However, as discussed in the previous section, this is not the quantity we want to represent. In fact, we want to represent the cumulation of the stochastic products  $X_{t}dB_{t}$ . Defining the integral


$$
W = \int_{a}^{b} X_{t} d B_{t}
$$ pathwise in the sense of Riemann-Stieltjes would be meaningless because the paths of a Brownian motion are not of finite variation. If we define


stochastic integrals simply as the limit of  $X_{t}dB_{t}$  sums, the stochastic integral would be infinite (and therefore useless) for most processes.

However, Brownian motions have bounded quadratic variation. Using this property, we can define stochastic integrals pathwise through an approximation procedure. The approximation procedure to arrive at such a definition is far more complicated than the definition of the Riemann-Stieltjes integrals. Two similar but not equivalent definitions of stochastic integral have been proposed, the first by the Japanese mathematician Kiyoshi Ito (1951), the second by the Russian physicist Ruslan Stratonovich in the 1960s. The definition of stochastic integral in the sense of Ito integral or of Stratonovich stochastic replaces the increments  $\Delta x_{i}$  with the increments  $\Delta B_{i}$  of a fundamental stochastic process called Brownian motion. The increments  $\Delta B_{i}$  represent the "noise" of the process.

The definition proceeds in the following three steps:

- Step 1. The first step consists in defining a fundamental stochastic process—the Brownian motion. In intuitive terms, a Brownian motion  $B_{t}(\omega)$  is a continuous limit (in a sense that will be made precise in the following sections) of a simple random walk. A simple random walk is a discrete-time stochastic process defined as follows. A point can move one step to the right or to the left. Movement takes place only at discrete instants of time, say at time  $1,2,3,\ldots$ . At each discrete instant, the point moves to the right or to the left with probability  $\frac{1}{2}$ .

The random walk represents the cumulation of completely uncertain random shocks. At each point in time, the movement of the point is completely independent from its past movements. Hence, the Brownian motion represents the cumulation of random shocks in the limit of continuous time and of continuous states. It can be demonstrated that a.s. each path of the Brownian motion is not of bounded total variation but it has bounded quadratic variation.


Recall that the total variation of a function  $f(x)$  is the limit of the sums

$$
\sum \left| f \left(x_{i}\right) - f \left(x_{i - 1}\right) \right|
$$ while the quadratic variation is defined as the limit of the sums


$$
\sum \left| f \left(x_{i}\right) - f \left(x_{i - 1}\right) \right|^{2}
$$

Quadratic variation can be interpreted as the absolute volatility of a process. Thanks to this property, the  $\Delta B_{i}$  of the Brownian motion provides the basic increments of the stochastic integral, replacing the  $\Delta x_{i}$  of the Riemann-Stieltjes integral.

- Step 2. The second step consists in defining the stochastic integral for a class of simple functions called elementary functions. Consider the time interval  $[S, T]$  and any partition of the interval  $[S, T]$  in  $N$  subintervals:  $S \equiv t_0 < t_1 < \ldots < t_i < \ldots < t_N \equiv T$ . An elementary function  $\phi$  is a function defined on the time  $t$  and the outcome  $\omega$  such that it assumes a constant value on the  $i$ -th subinterval. Call  $I[\mathfrak{t}_{i+1}, t_i)$  the indicator function of the interval  $[\mathfrak{t}_{i+1}, t_i)$ . The indicator function of a given set is a function that assumes value 1 on the points of the set and 0 elsewhere. We can then write an elementary function  $\phi$  as follows:

$$
\phi (t, \omega) = \sum_{i} \varepsilon_{i} (\omega) I [ t_{i + 1}, t_{i})
$$

In other words, the constants  $\varepsilon_{i}(\omega)$  are random variables and the function  $\phi (t,\omega)$  is a stochastic process made up of paths that are constant on each  $i$ -th interval.

We can now define the stochastic integral, in the sense of Ito, of elementary functions  $\phi (t,\omega)$  as follows:

$$
\begin{array}{l} W = \int_{S}^{T} \phi (t, \omega) d B_{t} (\omega) \\ = \sum_{i} \varepsilon_{i} (\omega) \left[ B_{i + 1} (\omega) - B_{i} (\omega) \right] \\ \end{array}
$$ where  $B$  is a Brownian motion.


It is clear from this definition that  $W$  is a random variable  $\omega \rightarrow W(\omega)$ . Note that the Ito integral thus defined for elementary functions cumulates the products of the elementary functions  $\phi(t, \omega)$  and of the increments of the Brownian motion  $B_t(\omega)$ .

It can be demonstrated that the following property, called Ito isometry, holds for Ito stochastic integrals defined for bounded elementary functions as above:

$$
E \left[ \left(\int_{S}^{T} \phi (t, \omega) d B_{t} (\omega)\right)^{2} \right] = E \left[ \int_{S}^{T} \phi (t, \omega)^{2} d t \right]
$$

The Ito isometry will play a fundamental role in Step 3.

- Step 3. The third step consists in using the Ito isometry to show that each function  $g$  which is square-integrable (plus other conditions that will be made precise in the next section) can be approximated by a sequence of elementary functions  $\phi_n(t, \omega)$  in the sense that

$$
E \left[ \int_{S}^{T} [ g - \phi_{n} (t, \omega) ]^{2} d t \right]\rightarrow 0
$$

If  $g$  is bounded and has a continuous time-path, the functions  $\phi_n(t,\omega)$  can be defined as follows:

$$
\phi_{n} (t, \omega) = \sum_{i} g (t_{i}, \omega) I [ t_{i + 1}, t_{i})
$$ where  $I$  is the indicator function. We can now use the Ito isometry to define the stochastic integral of a generic function  $f(t,\omega)$  as follows:


$$
\int_{S}^{T} f (t, \omega) d B_{t} (\omega) = \lim_{n \rightarrow \infty} \int_{S}^{T} \phi_{n} (t, \omega) d B_{t} (\omega)
$$

The Ito isometry ensures that the Cauchy condition is satisfied and that the above sequence thus converges.

In outlining the above definition, we omitted an important point that will be dealt with in the next section: The definition of the stochastic integral in the sense of Ito requires that the el emetary functions be without anticipation-- that is, they depend only on the past history of the Brownian motion. In fact, in the case of continuous paths, we wrote the approximating functions as follows:


$$
\phi_{n} (t, \omega) = \sum_{i} g (t_{i}, \omega) [ B_{i + 1} (\omega) - B_{i} (\omega) ]
$$ taking the function  $g$  in the left extreme of each subinterval.


However, the definition of stochastic integrals in the sense of Stratonovich admits anticipation. In fact, the stochastic integral in the sense of Stratonovich, written as follows

$$
\int_{S}^{T} f (t, \omega) \circ d B_{t} (\omega)
$$ uses the following approximation under the assumption of continuous paths:


$$
\phi_{n} (t, \omega) = \sum_{i} g (t_{i}^{*}, \omega) [ B_{i + 1} (\omega) - B_{i} (\omega) ]
$$ where


$$ t_{i}^{*} = \frac{t_{i + 1} - t_{i}}{2}
$$ is the midpoint of the  $i$ -th subinterval.


Whose definition—Ito's or Stratonovich's—is preferable? Note that neither can be said to be correct or incorrect. The choice of the one over the other is a question of which one best represents the phenomena under study. The lack of anticipation is one reason why the Ito integral is generally preferred in finance theory.

We have just outlined the definition of stochastic integrals leaving aside mathematical details and rigor. The following two sections will make the above process mathematically rigorous and will discuss the question of anticipation of information. While these sections are a bit technical and might be skipped by those not interested in the mathematical details of stochastic calculus, they explain a number of concepts that are key to the modern development of finance theory.

# BROWNIAN MOTION DEFINED

The previous section introduced Brownian motion informally as the limit of a simple random walk when the step size goes to zero. This section defines Brownian motion formally. The term "Brownian motion" is due to the Scottish botanist Robert Brown who in 1828 observed that pollen grains suspended in a liquid move irregularly. This irregular motion was later explained by the random collision of the molecules of the liquid with the pollen grains. It is therefore natural to represent Brownian motion as a continuous-time stochastic process that is the limit of a discrete random walk.

Let's now formally define Brownian motion and demonstrate its existence. Let's first go back to the probabilistic representation of the economy. The economy can be represented as a probability space  $(\Omega, \mathfrak{I}, P)$ , where  $\Omega$  is the set of all possible economic states,  $\mathfrak{I}$  is the event  $\sigma$ -algebra, and  $P$  is a probability measure. The economic states  $\omega \in \Omega$  are not instantaneous states but represent full histories of the economy for the time horizon considered, which can be a finite or infinite interval of time. In other words, the economic states are the possible realization outcomes of the economy.

In this probabilistic representation of the economy, time-variable economic quantities—such as interest rates, security prices or cash flows as well as aggregate quantities such as economic output—are represented as stochastic processes  $X_{t}(\omega)$ . In particular, the price and dividend of each stock are represented as two stochastic processes  $S_{t}(\omega)$  and  $d_{t}(\omega)$ .

Stochastic processes are time-dependent random variables defined over the set  $\Omega$ . It is critical to define stochastic processes so that there is no anticipation of information, that is, at time  $t$  no process depends on variables that will be realized later. Anticipation of information is possible only within a deterministic framework. However the space  $\Omega$  in itself does not contain any coherent specification of time. If we asso ciate random variables  $X_{t}(\omega)$  to a time index without any additional restriction, we might incur the problem of anticipation of information. Consider, for instance, an arbitrary family of time-indexed random variables  $X_{t}(\omega)$  and suppose that, for some instant  $t$ , the relationship  $X_{t}(\omega) = X_{t + 1}(\omega)$  holds. In this case there is clearly anticipation of information as the value of the variable  $X_{t + 1}(\omega)$  at time  $t + 1$  is known at an earlier time  $t$ . All relationships that lead to anticipation of information must be treated as deterministic.


The formal way to specify in full generality the evolution of time and the propagation of information without anticipation is through the concept of filtration. The concept of filtration is based on identifying all events that are known at any given instant. It is the propagation of information assuming that it is possible to associate to each moment  $t$  a  $\sigma$ -algebra of events  $\mathfrak{I}_t \subset \mathfrak{I}$  formed by all events that are known prior to or at time  $t$ . It is assumed that events are never "forgotten," that is, that  $\mathfrak{I}_t \subset \mathfrak{I}_s$ , if  $t < s$ . An increasing sequence of  $\sigma$ -algebras, each associated to the time at which all its events are known, represents the propagation of information. This sequence (called a filtration) is typically indicated as  $\mathfrak{I}_t$ .

The economy is therefore represented as a probability space  $(\Omega, \Im, P)$  equipped with a filtration  $\{\mathfrak{I}_t\}$ . The key point is that every process  $X_t(\omega)$  that represents economic or financial quantities must be adapted to the filtration  $\{\mathfrak{I}_t\}$ , that is, the random variable  $X_t(\omega)$  must be measurable with respect to the  $\sigma$ -algebras  $\mathfrak{I}_t$ . In simple terms, this means that each event of the type  $X_t(\omega) \leq x$  belongs to  $\mathfrak{I}_t$  while each event of the type  $X_s(\omega) \leq y$  for  $t \leq s$  belongs to  $\mathfrak{I}_s$ . For instance, consider a process  $P_t(\omega)$ , which might represent the price of a stock. Any coherent representation of the economy must ensure that events such as  $\{\omega: P_s(\omega) \leq c\}$  are not known at any time  $t < s$ . The filtration  $\{\mathfrak{I}_t\}$  prescribes all events admissible at time  $t$ .

Why do we have to use the complex concept of filtration? Why can't we simply identify information at time  $t$  with the values of all the variables known at time  $t$  as opposed to identifying a set of events? The principal reason is that in a continuous-time continuous-state environment any individual value has probability zero; we cannot condition on single values as the standard definition of conditional probability would become meaningless. In fact, in the standard definition of conditional probability, the probability of the conditioning event appears in the denominator and cannot be zero.


It is possible, however, to reverse this reasoning and construct a filtration starting from a process. Suppose that a process  $X_{t}(\omega)$  does not admit any anticipation of information, for instance because the  $X_{t}(\omega)$  are all mutually independent. We can therefore construct a filtration  $\mathfrak{I}_t$  as the strictly increasing sequence of  $\sigma$ -algebras generated by the process  $X_{t}(\omega)$ . Any other process must be adapted to  $\mathfrak{I}_t$ .

Let's now go back to the definition of the Brownian motion. Suppose that a probability space  $(\Omega, \Im, P)$  equipped with a filtration  $\mathfrak{I}_t$  is given. A one-dimensional standard Brownian motion is a stochastic process  $B_t(\omega)$  with the following properties:

-  $\mathrm{B}_t(\omega)$  is defined over the probability space  $(\Omega, \mathfrak{X}, P)$ .
-  $B_{t}(\omega)$  is continuous for  $0 \leq t < \infty$ .
$B_0(\omega) = 0$
-  $\mathrm{B}_t(\omega)$  is adapted to the filtration  $\mathfrak{J}_t$ .
- The increments  $B_{t}(\omega) - B_{s}(\omega)$  are independent and normally distributed with variance  $(t - s)$  and zero mean.

The above conditions state that the standard Brownian motion is a stochastic process that starts at zero, has continuous paths and normally distributed increments whose variance grows linearly with time. Note that in the last condition the increments are independent of the  $\sigma$ -algebra  $\mathfrak{S}_S$  and not of the previous values of the process. As noted above, this is because any single realization of the process has probability zero and it is therefore impossible to use the standard concept of conditional proba bility: Conditioning must be with respect to a  $\sigma$ -algebra  $\mathfrak{I}_S$ . Once this concept has been firmly established, one might speak loosely of independence of the present values of a process from its previous values. It should be clear, however, that what is meant is independence with respect to a  $\sigma$ -algebra  $\mathfrak{I}_S$ .


Note also that the filtration  $\mathfrak{S}_t$  is an integral part of the above definition of the Brownian motion. This does not mean that, given any probability space and any filtration, a standard Brownian motion with these characteristics exists. For instance, the filtration generated by a discrete-time continuous-state random walk is insufficient to support a Brownian motion. The definition states only that we call a one-dimensional standard Brownian motion a mathematical object (if it exists) made up of a probability space, a filtration, and a time dependent random variable with the properties specified in the definition.

However, it can be demonstrated that Brownian motions exist by constructing them. Several construction methodologies have been proposed, including methodologies based on the Kolmogorov extension theorem or on constructing the Brownian motion as the limit of a sequence of discrete random walks. To prove the existence of the standard Brownian motion, we will use the Kolmogorov extension theorem.

The Kolmogorov theorem can be summarized as follows. Consider the following family of probability measures

$$
\begin{array}{l} \mu_{t_{1}, \dots , t_{m}} (H_{1} \times \dots \times H_{m}) \\ = P \left[ \left(X_{t_{1}} \in H_{1}, \dots , X_{t_{m}} \in H_{m}\right), H_{i} \in \mathcal {B}^{n} \right] \\ \end{array}
$$ for all  $t_1,\ldots ,t_k\in [0,\infty),k\in N$  and where the  $Hs$  are  $n$  -dimensional Borel sets. Suppose that the following two consistency conditions are satisfied


$$
\begin{array}{l} \mu_{t_{\sigma (1)}, \dots , t_{\sigma (m)}} \left(H_{1} \times \dots \times H_{m}\right) \\ = \mu_{t_{1}, \dots , t_{m}} \left(H_{\sigma^{- 1} (1)} \times \dots \times H_{\sigma^{- 1} (m)}\right) \\ \end{array}
$$ for all permutations  $\sigma$  on  $\{1,2,\dots,k\}$ , and


$$
\begin{array}{l} \mu_{t_{1}, \dots , t_{k}} (H_{1} \times \dots \times H_{k}) \\ = \mu_{t_{1}, \dots , t_{k}, t_{k + 1}, \dots , t_{m}} \left(H_{1} \times \dots \times H_{k} \times R^{n} \times \dots \times R^{n}\right) \\ \end{array}
$$ for all  $m$ . The Kolmogorov extension theorem states that, if the above conditions are satisfied, then there is (1) a probability space  $(\Omega, \mathfrak{I}, P)$  and (2) a stochastic process that admits the probability measures


$$
\begin{array}{l} \mu_{t_{1}, \dots , t_{m}} (H_{1} \times \dots \times H_{m}) \\ = P \left[ \left(X_{t_{1}} \in H_{1}, \dots , X_{t m} \in H_{m}\right), H_{i} \in \mathcal {B}^{n} \right] \\ \end{array}
$$ as finite dimensional distributions.


The construction is lengthy and technical and we omit it here, but it should be clear how, with an appropriate selection of finite-dimensional distributions, the Kolmogorov extension theorem can be used to prove the existence of Brownian motions. The finite-dimensional distributions of a one-dimensional Brownian motion are distributions of the type

$$
\begin{array}{l} \mu_{t_{1}, \dots , t_{k}} (H_{1} \times \dots \times H_{k}) \\ = \int p (t, x, x_{1}) p \left(t_{2} - t_{1}, x_{1}, x_{2}\right) \dots \\ p \left(t_{k} - t_{k - 1}, x_{k - 1}, x_{k}\right) d x_{1} \dots d x_{k} H_{1} \times \dots \times H_{k} \\ \end{array}
$$ where


$$ p (t, x, y) = (2 \pi t)^{- \frac{1}{2}} \exp \left(- \frac{| x - y |^{2}}{2 t}\right)
$$ and with the convention that the integrals are taken with respect to the Lebesgue measure. The distribution  $p(t,x,x_1)$  in the integral is the initial distribution. If the process starts at zero,  $p(t,x,x_1)$  is a Dirac delta, that is, it is a distribution of mass 1 concentrated in one point.


It can be verified that these distributions satisfy the above consistency conditions; the Kolmogorov extension theorem therefore ensures that a stochastic process with the above finite dimensional distributions exists. It can be demonstrated that this process has normally distributed independent increments with variance that grows linearly with time. It is therefore a one-dimensional Brownian motion. These definitions can be easily extended to an  $n$ -dimensional Brownian motion.


In the initial definition of a Brownian motion, we assumed that a filtration  $\mathfrak{I}_t$  was given and that the Brownian motion was adapted to the filtration. In the present construction, however, we reverse this process. Given that the process we construct has normally distributed, stationary, independent increments, we can define the filtration  $\mathfrak{I}_t$  as the filtration  $\mathfrak{I}_t^B$  generated by  $B_{t}(\omega)$ . The independence of the increments of the Brownian motion guarantee the absence of anticipation of information. Note that if we were given a filtration  $\mathfrak{I}_t$  larger than the filtration  $\mathfrak{I}_t^B$ ,  $B_{t}(\omega)$  would still be a Brownian motion with respect to  $\mathfrak{I}_t$ .

In stochastic differential equations, there are two types of solutions of stochastic differential equations—strong and weak—depending on whether the filtration is given or generated by the Brownian motion. The implications of these differences for economics and finance will be discussed in the same section.

The above construction does not specify uniquely the Brownian motion. In fact, there are infinite stochastic processes that start from the same point and have the same finite dimensional distributions but have totally different paths. However, it can be demonstrated that only one Brownian motion has continuous paths a.s. (a.s. means almost surely; that is, for all paths except a set of measure zero). This process is called the canonical Brownian motion. Its paths can be identified with the space of continuous functions.

The Brownian motion can also be constructed as the continuous limit of a discrete random walk. Consider a simple random walk  $W_{i}$  where  $i$  are discrete time points. The random walk is the motion of a point that moves  $\Delta x$  to the right or to the left with equal probability  $1/2$  at each time increment  $\Delta x$ . The total displacement  $X_{i}$  at time  $i$  is the sum of  $i$  independent increments each distributed as a Bernoulli variable. Therefore the random variable  $X$  has a binomial distribution with mean zero and variance:


$$
\frac{\Delta^{2} x}{\Delta t}
$$

Suppose that both the time increment and the space increment approach zero:  $\Delta t\rightarrow 0$  and  $\Delta x\to 0$ . Note that this is a very informal statement. In fact what we mean is that we can construct a sequence of random walk processes  $W_{i}^{n}$ , each characterized by a time step and by a time displacement. It can be demonstrated that if

$$
\frac{\Delta^{2} x}{\Delta t} \rightarrow \sigma
$$

(i.e., the square of the spaced interval and the time interval are of the same order) then the sequence of random walks approaches a Brownian motion. Though this is intuitive as the binomial distributions approach normal distributions, it should be clear that it is far from being mathematically obvious.

Figure 1 illustrates 100 realizations of a Brownian motion approximated as a random walk. The exhibit clearly illustrates that the standard deviation grows with the square root of the time as the variance grows linearly with time. In fact, as illustrated, most paths remain confined within a parabolic region.


# PROPERTIES OF BROWNIAN MOTION

The paths of a Brownian motion are rich structures with a number of surprising properties. It can be demonstrated that the paths of a canonical Brownian motion, though continuous, are nowhere differentiable. It can also be demonstrated that they are fractals of fractal dimension  $3/2$ . The fractal dimension is a concept that measures quantitatively how a geometric object occupies space. A straight line has fractal dimension one, a plane has fractal dimension two, and so on. Fractal objects might also have intermediate dimensions. This is the case, for example, of the path of a Brownian motion, which is so jagged that, in a sense, it occupies more space than a straight line.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/79bb38cc7c5b0076d6f41dad4f4547a9288c7d13433b0a6b8a0f352841f8a846.jpg)
Figure 1 Illustration of 100 Paths of a Brownian Motion Generated as an Arithmetic Random Walk

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/2a97bd78074150691b9b7010219094a3601821d328c8c998295c1af3a7fe003f.jpg)
Figure 2 Illustration of the Fractal Properties of the Paths of a Brownian Motion Note: Five paths of a Brownian motion are generated as random walks with different time steps and then magnified.

The fractal nature of Brownian motion paths implies that each path is a self-similar object. This property can be illustrated graphically. If we generate random walks with different time steps, we obtain jagged paths. If we allow paths to be graphically magnified, all paths look alike regardless of the time step with which they have been generated. In Figure 2, sample paths are generated with different time steps and then portions of the paths are magnified. Note that they all look perfectly similar.

This property was first observed by Mandelbrot (1963) in sequences of cotton prices in the 1960s. In general, if one looks at asset or commodity price time series, it is difficult to recognize their time scale. For instance, weekly or monthly time series look alike. (Recent empirical and theoretical research work has made this claim more precise.)

Let's consider a one-dimensional standard Brownian motion. If we wait a sufficiently long period of time, every path except a set of paths of measure zero will return to the ori gin. The path between two consecutive passages through zero is called an excursion of the Brownian motion. The distribution of the maximum height attained by an excursion and of the time between two passages through zero or through any level have interesting properties. The distribution of the time between two passages through zero has infinite mean. This is at the origin of the so-called St. Petersburg paradox described by the Swiss mathematician Bernoulli. The paradox consists of the following. Suppose a player bets increasing sums on a game that can be considered a realization of a random walk. As the return to zero of a random walk is a sure event, the player is certain to win—but while the probability of winning is one, the average time before winning is infinite. To stay the game, the capital required is also infinite. Difficult to imagine a banker ready to put up the money to back the player.


The distribution of the time to the first passage through zero of a Brownian motion is not Gaussian. In fact, the probability of a very long waiting time before the first return to zero is much higher than in a normal distribution. It is a fat-tailed distribution in the sense that it has more weight in the tail regions than a normal distribution. The distribution of the time to the first passage through zero of a Brownian motion is an example of how fat-tailed distributions can be generated from Gaussian variables.


# STOCHASTIC INTEGRALS DEFINED

Let's now go back to the definition of stochastic integrals, starting with one-dimensional stochastic integrals. Suppose that a probability space  $(\Omega, \mathfrak{I}, P)$  equipped with a filtration  $\mathfrak{I}_t$  is given. Suppose also that a Brownian motion  $B_t(\omega)$  adapted to the filtration  $\mathfrak{I}_t$  is given. We will define Ito integrals following the three-step procedure outlined earlier in this entry. We have just completed the first step defining Brownian motion. The second step consists in defining the Ito integral for elementary functions.

Let's first define the set  $\Phi(S, T)$  of functions  $\Phi(S, T) \equiv \{f(t, \omega): [0, \infty) \times \Omega \to R\}$  with the following properties:

Each  $f$  is jointly  $\mathcal{B}\times \mathfrak{I}$  measurable.
Each  $f(t,\omega)$  is adapted to  $\mathfrak{I}_t$
-  $E\left\lbrack  {\mathop{\int }\limits_{S}^{T}{f}^{2}\left( {t,\omega }\right) {dt}}\right\rbrack   < \infty$  (this condition can be weakened).


This is the set of paths for which we define the Ito integral.

Consider the time interval  $[S,T]$  and, for each integer  $n$ , partition the interval  $[S,T]$  in subintervals:  $t_0 < t_1 < \ldots < t_n < \ldots < t_N \equiv T$  in this way:

$$ t_{k} = t_{k}^{n} = \left\{ \begin{array}{l l} k 2^{- n} \text{if } S \leq k 2^{- n} \leq T \\ S & \text{if } k 2^{- n} <   S \\ T & \text{if } k 2^{n} > T \end{array} \right.
$$

This rule provides a family of partitions of the interval  $[S,T]$  which can be arbitrarily refined.

Consider the elementary functions  $\phi (t,\omega)\in \Phi$  which we write as

$$
\phi (t, \omega) = \sum_{i} \varepsilon_{i} (\omega) I [ t_{i + 1} - t_{i})
$$

As  $\phi (t,\omega)\in \Phi ,\varepsilon_i(\omega)$  are  $\mathfrak{S}_{t_i}$  measurable random variables.

We can now define the stochastic integral, in the sense of Ito, of elementary functions  $\phi (t,\omega)$  as

$$
W = \int_{S}^{T} \phi (t, \omega) d B_{t} (\omega) = \sum_{i \geq 0} \varepsilon_{i} (\omega) [ B_{i + 1} (\omega) - B_{i} (\omega) ]
$$ where  $B$  is a Brownian motion. Note that the  $\varepsilon_{i}(\omega)$  and the increments  $B_{j}(\omega) - B_{i}(\omega)$  are independent for  $j > i$ . The key aspect of this definition that was not included in the informal outline is the condition that the  $\varepsilon_{i}(\omega)$  are  $\Im_{t_i}$  measurable.


For bounded elementary functions  $\phi (t,\omega)\in \Phi$  the Ito isometry holds

$$
E \left[ \left(\int_{S}^{T} \phi (t, \omega) d B_{t} (\omega)\right)^{2} \right] = E \left[ \int_{S}^{T} \phi (t, \omega)^{2} d t \right]
$$

The demonstration of the Ito isometry rests on the fact that

$$
E [ \varepsilon_{i} \varepsilon_{j} (B_{t_{i + 1}} - B_{t_{i}}) (B_{t_{j + 1}} - B_{t_{j}}) ] = \left\{ \begin{array}{l l} 0 & \text{if } i \neq j \\ E (\varepsilon_{i}^{2}) & \text{if } i = j \end{array} \right.
$$

This completes the definition of the stochastic integral for elementary functions.

We have now completed the introduction of Brownian motions and defined the Ito integral for elementary functions. Let's next introduce the approximation procedure that allows us to define the stochastic integral for any  $\phi(t, \omega)$ . We will develop the approximation procedure in the following three additional steps that we will state without demonstration:

- Step 1. Any function  $g(t, \omega) \in \Phi$  that is bounded and such that all its time paths  $\phi(\cdot, \omega)$  are continuous functions of time can be approximated by


$$
\phi_{n} (t, \omega) = \sum_{i} g (t_{i}, \omega) I \left[ t_{i + 1} - t_{i}\right)
$$ in the sense that:


$$
E \int_{S}^{T} [ (g - \phi_{n})^{2} d t ] \rightarrow 0, \quad n \rightarrow \infty , \forall \omega
$$ where the intervals are those of the partition defined above. Note that  $\phi_n(t, \omega) \in \Phi$  given that  $g(t, \omega) \in \Phi$ .


- Step 2. We release the condition of time-path continuity of the  $\phi_n(t,\omega)$ . It can be demonstrated that any function  $h(t,\omega) \in \Phi$  which is bounded but not necessarily continuous can be approximated by functions  $g_n(t,\omega) \in \Phi$ , which are bounded and continuous in the sense that

$$
E \left[ \int_{S}^{T} (h - g_{n})^{2} d t \right]\rightarrow 0
$$

- Step 3. It can be demonstrated that any function  $f(t, \omega) \in \Phi$ , not necessarily bounded or continuous, can be approximated by a sequence of bounded functions  $h_n(t, \omega) \in \Phi$  in the sense that

$$
E \left[ \int_{S}^{T} (f - h_{n})^{2} d t \right]\rightarrow 0
$$

We now have all the building blocks to complete the definition of Ito stochastic integrals. In fact, by virtue of the above three-step approximation procedure, given any function  $f(t,\omega) \in \Phi$ , we can choose a sequence of elementary functions  $\phi_n(t,\omega) \in \Phi$  such that the following property holds:

$$
E \left[ \int_{S}^{T} (f - \phi_{n})^{2} d t \right]\rightarrow 0
$$

Hence we can define the Ito stochastic integral as follows:

$$
I [ f ] (w) = \int_{S}^{T} f (t, \omega) d B_{t} (\omega) = \lim_{n \rightarrow \infty} \left[ \int_{S}^{T} \phi_{n} (t, \omega) d t \right]
$$

The limit exists as

$$
\int_{S}^{T} \phi_{n} (t, \omega) d B_{t} (\omega)
$$ forms a Cauchy sequence by the Ito isometry, which holds for every bounded elementary function.


Let's now summarize the definition of the Ito stochastic integral: Given any function  $f(t,\omega)\in \Phi$ , we define the Ito stochastic integral by

$$
I [ f ] (w) = \int_{S}^{T} f (t, \omega) d B_{t} (\omega) = \lim_{n \rightarrow \infty} \left[ \int_{S}^{T} \phi_{n} (t, \omega) d t \right]
$$ where the functions  $\phi_n(t,\omega)\in \Phi$  are a sequence of elementary functions such that


$$
E \left[ \int_{S}^{T} (f - \phi_{n})^{2} d t \right]\rightarrow 0
$$

The multistep procedure outlined above ensures that the sequence  $\phi_n(t,\omega)\in \Phi$  exists. In addition, it can be demonstrated that the Ito isometry holds in general for every  $f(t,\omega)\in \Phi$

$$
E \left[ \left(\int_{S}^{T} f (t, \omega) d B_{t} (\omega)\right)^{2} \right] = E \left[ \int_{S}^{T} f (t, \omega)^{2} d t \right]
$$

# SOME PROPERTIES OF ITO STOCHASTIC INTEGRALS

Suppose that  $f, g \in \Phi(S, T)$  and let  $0 < S < U < T$ . It can be demonstrated that the following properties of Ito stochastic integrals hold:


$$
\int_{S}^{T} f d B_{t} = \int_{S}^{U} f d B_{t} + \int_{U}^{T} f d B_{t} \text{fo ra .a .} \omega
$$

$$
E \left[ \int_{S}^{T} f d B_{t} \right] = 0
$$

$$
\int_{S}^{T} (c f + d g) d B_{t} = c \int_{S}^{T} f d B_{t} + d \int_{S}^{T} g d B_{t},
$$ for a.a.  $\omega ,c,d$  constants


If we let the time interval vary, say  $(0,t)$  then the stochastic integral becomes a stochastic process:

$$
I_{t} (\omega) = \int_{0}^{t} f d B_{t}
$$

It can be demonstrated that a continuous version of this process exists. The following three properties can be demonstrated from the definition of integral:

$$
\int_{0}^{t} d B_{s} = B_{t}
$$

$$
\int_{0}^{t} s d B_{s} = t B_{t} - \int_{0}^{t} B_{s} d s
$$

$$
\int_{0}^{t} B_{s} d B_{s} = \frac{1}{2} B_{t}^{2} - \frac{1}{2} t
$$

The last two properties show that, after performing stochastic integration, deterministic terms might appear.

# KEY POINTS

- Stochastic integration provides a coherent way to represent that instantaneous uncer tainty (or volatility) cumulates over time. It is thus fundamental to the representation of financial processes such as interest rates, security prices, or cash flows as well as aggregate quantities such as economic output.


- Stochastic integration operates on stochastic processes and produces random variables or other stochastic processes.
- Stochastic integration is a process defined on each path as the limit of a sum. However, these sums are different from the sums of the Riemann-Lebesgue integrals because the paths of stochastic processes are generally not of bounded variation.
- Stochastic integrals in the sense of Ito are defined through a process of approximation.
- Step 1 consists in defining Brownian motion, which is the continuous limit of a random walk.
- Step 2 consists in defining stochastic integrals for elementary functions as the sums of the products of the elementary functions multiplied by the increments of the Brownian motion.
- Step 3 extends this definition to any function through approximating sequences.

# NOTES

1. The publications of Stratonovich can be found in Romanovski (2007).
2. A history of stochastic integrations and financial mathematics is provided by Jarrow and Protter (2004). For a more detailed discussion of stochastic integration, see Protter (1990).
3. The set of conditions defining a Brownian motion can be more parsimonious. If a process has stationary, independent increments and continuous paths a.s. it must have normally distributed increments. A process with stationary independent increments and with paths that are continuous to the right and limited to the left (the cadlag functions) is called a Levy process.

# REFERENCES

Ito, K. (1951). On stochastic differential equations. Memoirs, American Mathematical Society 4: 1-51.
Jarrow, R., and Protter, P. (2004). A short history of stochastic integration and mathematical finance: The early years, 1880-1970. IMS Lecture Notes Monograph 45: 1-17.

Mandelbrot, B. (1963). The variation of certain speculative prices. Journal of Business 36: 394-419.
Protter, P. (1990). Stochastic Integration and Differential Equations. New York: Springer.
Romanovski, Y. M. (2007). Professor R. L. Stratonovich: Reminiscences of Relatives, Colleagues and Friends. Moscow-Izhevsk: Publishing House of Computer Research Institute.

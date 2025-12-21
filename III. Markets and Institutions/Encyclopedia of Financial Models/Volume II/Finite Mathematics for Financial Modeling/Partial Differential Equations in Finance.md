
---
title: "Partial Differential Equations in Finance"
parent_directory: "Finite Mathematics for Financial Modeling"
formatted: "2025-12-21 11:03:25 PM"
formatter_model: "claude-haiku-4-5-20251001"
cli_tool: "claude-code"
primary_tags:
  - partial differential equations
  - option pricing
  - numerical methods
  - financial modeling
secondary_tags:
  - black scholes model
  - american options
  - finite difference methods
  - finite element methods
  - calibration
  - volatility models
  - stochastic processes
  - monte carlo methods
  - risk neutral pricing
  - greeks
  - basket options
  - barrier options
cssclasses: academia
---

# Partial Differential Equations in Finance

YVES ACHDOU, PhD

Professor, Lab. Jacques-Louis Lions, University Paris-Diderot, Paris, France

OLIVIER BOKANOWSKI, PhD

Associate Professor, Lab. Jacques-Louis Lions, University Paris-Diderot, Paris, France

TONY LELIEVRE, PhD

Professor, CERMICS, Ecole des Ponts ParisTech, Marne-la-Vallee, France

Abstract: Partial differential equations are useful in finance in various contexts, in particular for the pricing of European and American options, for stochastic portfolio optimization, and for calibration. They can be used for simple options as well as for more exotic ones, such as Asian or lookback options. They are particularly useful for nonlinear models. They allow for the numerical computations of several spot prices at the same time. Numerical aspects, discretization methods, algorithms, and analysis of the numerical schemes have been under constant development during the last three decades. Finite difference methods are the simplest and most basic approaches. Finite element methods allow the use of nonuniform meshes and refinement procedures can then be applied and improve accuracy near a region of interest. Deterministic approaches based on partial differential equation formulations can also be used for calibration of various volatility models (such as local, stochastic, or Levy-driven volatility models) and by making use of Dupire's formula. Current research directions include the development of discretization methods for high-dimensional problems.

Numerical methods based on partial differential equations (PDEs) in finance are not very popular. Indeed, the models are usually derived from probabilistic arguments and Monte Carlo methods are therefore much more natural. Stochastic methods are also often simpler to implement than the algorithms used for solving the related PDEs. However, when it is possible to efficiently discretize the PDE (which is not always the case, the typical counterexample being high-dimensional problems), deterministic methods are usually more efficient than stochastic ones. Moreover, the solution to the partial differential equation gives more information. In the context of option pricing, one obtains, for example, the price of the option for all values of the maturity and for all spot prices, while the probabilistic formulation

typically gives the value of the option for a fixed maturity and a fixed spot price. In particular, this is useful for computing derivatives of the option's price with respect to some parameters of the model (the so-called "Greeks").

The PDEs obtained in finance have several characteristics. First, they are posed on a bounded domain in time  $(0,T)$ , with typically a singular final condition at the maturity  $t = T$ , and very often in an unbounded domain in the spot variable, which requires to impose suitable "boundary conditions" at infinity to get well-posed problems and to use appropriate numerical approximations (truncation to a bounded domain and artificial boundary conditions). These PDEs are usually of parabolic type, but often with degenerate diffusions. Because of operational constraints, the numerical methods used for the discretization of the PDE must be sufficiently fast and accurate to be useful in practice. These peculiarities of PDEs in finance explain the need for up-to-date and sometimes involved numerical methods.

In this entry we focus on numerical issues and try to review the main numerical methods used for solving PDEs in finance. This presentation heavily relies on Achdou and Pironneau (2005), as well as Lamberton and Lapeyre (1997), Karatzas and Shreve (1991), and Wilmott, Dewynne, and Howison (1993).

# PARTIAL DIFFERENTIAL EQUATIONS FOR OPTION PRICING

In this section, we present the main arguments to derive a PDE for the price of various European and American options.

# A Primer: The Black and Scholes Model for European Options

The aim of this section is to recall the basic tools needed to derive a PDE in the context of option pricing, without providing all the detailed assumptions required on the data to perform this derivation. Karatzas and Shreve (1991) and Lamberton and Lapeyre (1997), for example, provide more details on the mathematical aspects. We adopt the standard Black and Scholes model (Black and Scholes, 1973; Merton, 1973) with a risky asset whose price at time  $t$  is  $S_{t}$  and a risk-free asset whose price at time  $t$  is  $S_{t}^{0}$ , such that:


$$ d S_{t} = S_{t} (\mu d t + \sigma d B_{t}), d S_{t}^{0} = r S_{t}^{0} d t
$$

The process  $B_{t}$  is a standard Brownian motion defined on a probability space  $(\Omega, \mathcal{F}, \mathcal{F}_{t}, \mathbb{Q})$  and  $\mu$  (the mean rate of return),  $r$  (the interest rate), and  $\sigma > 0$  (the volatility) are three constants. However, the following can be generalized to the case where  $\mu, r,$  and  $\sigma > 0$  are functions of  $t$  and  $S$  (under suitable smoothness assumptions).

We introduce the stochastic process  $W_{t} = B_{t} + \frac{\mu - r}{\sigma} t$  Under the so-called risk-neutral probability  $\mathbb{P}$  defined by its Radon-Nikodym derivative with respect to  $\mathbb{Q}$  by

$$
\left. \frac{d \mathbb {P}}{d \mathbb {Q}} \right|_{\mathcal {F}_{t}} = \exp \left(\int_{0}^{t} \frac{r - \mu}{\sigma} d B_{s} - \frac{1}{2} \int_{0}^{t} \left(\frac{r - \mu}{\sigma}\right)^{2} d s\right)
$$

$W_{t}$  is a Brownian motion and  $S_{t} / S_{t}^{0}$  is a martingale. This is one of the fundamental properties of the stochastic process needed in the following. The process  $S_{t}$  satisfies the following stochastic differential equation (SDE) under  $\mathbb{P}$ :

$$ d S_{t} = S_{t} \left(r d t + \sigma d W_{t}\right) \tag {1}
$$

Let us now consider a portfolio with  $H_{t}$  risky assets and  $H_{t}^{0}$  no-risk assets. Its value at time  $t$  is:

$$
P_{t} = H_{t} S_{t} + H_{t}^{0} S_{t}^{0} \tag {2}
$$

We suppose that this portfolio is self-financing (any manipulation on this portfolio, i.e., any change of the values of  $H_{t}$  or  $H_{t}^{0}$ , is done without any inflows or outflows of money), which translates into

$$ d P_{t} = H_{t} d S_{t} + H_{t}^{0} d S_{t}^{0} \tag {3}
$$

The value of a self-financing portfolio changes if and only if the price of the risky asset changes.

Using (3), it is possible to show that  $P_{t} / S_{t}^{0}$  is also a martingale.

We consider the following problem: For a given function  $\phi$  (the payoff function) and a given time  $T > 0$  (the maturity), is it possible to build a self-financing portfolio such that  $P_{T} = \phi(S_{T})$ ? Classical examples of function  $\phi$  are  $\phi(S) = (S - K)_{+}$  (vanilla call) or  $\phi(S) = (S - K)_{-}$  (vanilla put), where, for any real  $x$ ,  $x_{+} = \max(x, 0)$  and  $x_{-} = \max(-x, 0)$ . The answer is positive (this is typically based on a martingale representation theorem, the fact that  $P_{t} / S_{t}^{0}$  is a martingale, and the fact that the payoff  $\phi(S_{T})$  is  $\mathcal{F}_{T}$ -measurable), and it is then possible to show that such a portfolio has the following value at time  $t$ :

$$
P_{t} = \mathbb {E} \left(\exp \left(- \int_{t}^{T} r d s\right) \phi \left(S_{T}\right) \mid \mathcal {F}_{t}\right) \tag {4}
$$ where here and in the following,  $\mathbb{E}$  denotes an expectation with respect to the risk-neutral probability  $\mathbb{P}$ . By the so-called arbitrage-free principle,  $P_{t}$  is actually the "fair price" at time  $t$  of the option, which enables its owner to get the payoff  $\phi (S_T)$  at time  $T$ . In the particular context of vanilla options, the solution is analytically known, at least if  $r$  and  $\sigma$  are constant: This is the celebrated Black and Scholes formula. However, in the case when  $r$  and  $\sigma$  are functions of  $t$  and  $S$ , (4) cannot be estimated without a numerical method. We are interested in deterministic numerical methods, based on a PDE related to (4).

The second fundamental property of the stochastic process  $S_{t}$  required to obtain a PDE formulation of this problem is a Markov property. Roughly speaking, it states that the expectation of any function of  $(S_{t})_{0\leq t\leq T}$  conditionally to  $\mathcal{F}_t$  is actually a function of the price  $S_{t}$  of the risky asset at time  $t$ . In our context, this property shows that  $P_{t}$  writes

$$
P_{t} = p (t, S_{t}) \tag {5}
$$ where  $p$  is a function of  $t\in [0,T]$  and  $S\in [0,\infty)$ , called the pricing function of the option. Notice that even if (5) only involves the value of  $p$  at


point $(t, S_t)$, the pricing function $p$ is a deterministic function defined for all values of $t \geq 0$ and $S \geq 0$. By the Markov property of $S_t$, we also have the following representation formula for $p$:

$$ p (t, x) = \mathbb {E} \left(\exp \left(- \int_{t}^{T} r d s\right) \phi \left(S_{T}^{t, x}\right)\right) \tag {6}
$$ where  $(S_{\theta}^{t,x})_{t\leq \theta \leq T}$  denotes the process solution to (1) starting from  $x$  at time  $t$


$$
\left\{ \begin{array}{l} d S_{\theta}^{t, x} = S_{\theta}^{t, x} \left(r d \theta + \sigma d W_{\theta}\right), \quad \theta \geq t, \\ S_{t}^{t, x} = x \end{array} \right. \tag {7}
$$

By using Ito's calculus and the fact that  $P_{t} / S_{t}^{0}$  is a martingale, we then obtain that  $p$  should satisfy the following backward-in-time PDE:

$$
\left\{ \begin{array}{l} \frac{\partial p}{\partial t} + r S \frac{\partial p}{\partial S} + \frac{\sigma^{2} S^{2}}{2} \frac{\partial^{2} p}{\partial S^{2}} - r p = 0, \\ p (T, S) = \phi (S) \end{array} \right. \tag {8}
$$

Conversely, it is possible (using again a martingale representation theorem) to show that if  $p$  satisfies (8), then  $p(t, S_t)$  is the value of a self-financing portfolio with value  $\phi(S_T)$  at time  $T$ . Moreover, one can check that  $\frac{\partial p}{\partial S}(t, S_t) = H_t$ , which shows that obtaining an accurate approximation of  $\frac{\partial p}{\partial S}$  is important in order to estimate the quantity of risky asset  $H_t$  needed at time  $t$  to build the portfolio with value  $P_t$  (this is the hedging strategy). Collectively, equations (4)-(5) and (8) provide an example of so-called Feynman-Kac formulas, which are used in many other contexts (quantum chemistry or transport equations, for example) either to give a probabilistic interpretation to a PDE, or to recast the computation of an expectation into a PDE problem.

For problem (8) to be well posed (i.e., for one and only one solution to exist), one needs to supply the system with "boundary conditions" when  $S = 0$  or  $S \to \infty$ . More precisely, one needs to make precise in which functional space the function  $p$  is looked for. This will be explained in the next section.

From the PDE (8) and the so-called maximum principle, it is possible to derive many qualitative properties and a priori bounds on the price  $p$  (like the call-put parity, for example; see Achdou and Pironneau, 2005). Roughly speaking, the maximum principle states that if the data (initial condition, boundary conditions, right-hand side) for the PDE (8) are positive, then the solution is positive. This property is definitely necessary to hold for a price. It is also an important property to check on the numerical schemes (which is then called a discrete maximum principle as discussed below).

It is also possible to obtain the PDE without introducing the risk-neutral probability (see Wilmott, Dewynne, and Howison, 1993) by considering a portfolio containing some options and some risky assets and by using an arbitrage-free argument.

It is important to recall that the Black and Scholes model for the evolution of the risky asset (1) badly compares with experimental data. We discuss later in this entry some possible refinements that have been introduced in order to better fit the observations (see the discussion on calibration below). However, this model remains very important in practice because it is used as a prototypical description of the evolution of the asset. Moreover, for a given observed price of a derivative, there exists a constant volatility  $\sigma$  (called the implied volatility; see the section on calibration below) for which the Black-Scholes price is the observed price. The implied volatility is a major quantity used in practice to compare derivatives.

# Other Options

The argument presented for the Black-Scholes model is prototypical. In particular, the derivation of a PDE satisfied by the pricing function of an option always relies on the two fundamental properties stressed above: the martingale and the Markov properties of a suitable stochastic process. In this section, we present PDEs for the prices of various options without providing all the details of the derivation.

# Basket Options

In many cases, the payoff of the option depends on the values of more than one asset, which typically do not evolve independently. Let us, for example, consider the case of two assets, which evolve following the following SDE under the neutral risk probability

$$
\left\{ \begin{array}{l} d S_{t}^{1} = S_{t}^{1} \left(r   d t + \sigma_{1} d W_{t}^{1}\right) \\ d S_{t}^{2} = S_{t}^{2} \left(r   d t + \sigma_{2} d W_{t}^{2}\right) \end{array} \right.
$$ where  $W_{t}^{1}$  and  $W_{t}^{2}$  are possibly correlated standard Brownian motions. We call  $\rho$  the correlation of  $W_{t}^{1}$  and  $W_{t}^{2}:d\langle W_{1},W_{2}\rangle_{t} = \rho dt$ . We suppose that the maturity is  $T > 0$  and the payoff is  $\phi (S_T^1,S_T^2)$ , where  $\phi$  is a given function. It is then possible to show that the price of the option at time  $t$  is  $p(t,S_t^1,S_t^2)$  where  $p$  satisfies


$$
\left\{ \begin{array}{l} \frac{\partial p}{\partial t} + r S_{1} \frac{\partial p}{\partial S_{1}} + r S_{2} \frac{\partial p}{\partial S_{2}} + \frac{\sigma_{1}^{2} S_{1}^{2}}{2} \frac{\partial^{2} p}{\partial S_{1}^{2}} \\ \quad + \frac{\sigma_{2}^{2} S_{2}^{2}}{2} \frac{\partial^{2} p}{\partial S_{2}^{2}} + \rho \sigma_{1} \sigma_{2} S_{1} S_{2} \frac{\partial^{2} p}{\partial S_{1} \partial S_{2}} - r p = 0, \\ p (T, S_{1}, S_{2}) = \phi (S_{1}, S_{2}) \end{array} \right. \tag {9}
$$

Here again,  $r$ ,  $\sigma_{1}$ , and  $\sigma_{2}$  may be functions of  $t$  and  $(S_{1}, S_{2})$ . It is possible to solve such PDEs by standard numerical methods up to dimension 3 or 4. As discussed later, to derive appropriate discretization for higher dimensions is not an easy task and is still the subject of current research.

# Barrier Options

Again, let us consider an option on a single asset. For some options, the payoff becomes 0 if there exists a time  $t \in [0, T]$  such that  $S_{t}$  goes below  $a$  or above  $b$ , where  $a$  and  $b$  are two given values,  $0 < a < b$  (the case  $a = 0$  or  $b = \infty$  can be treated similarly). Mathematically, the payoff is  $1_{\forall t \in [0, T], S_{t} \in [a, b]} \phi(S_{T})$  where, for any event  $A \subset \Omega$ ,  $1_{A}$  denotes the characteristic function of  $A$ , and  $S_{t}$  satisfies (1). In this case, the relevant stochastic process for deriving the PDE is  $S_{t \wedge \tau}$ , where  $\tau = \inf \{t \in [0, T], S_{t} \geq b \text{ or } S_{t} \leq a\}$  is a stopping time, and, for any real  $x$  and  $y$ ,

$x\wedge y = \inf (x,y)$  .It can be checked that  $S_{t\wedge \tau}$  is a Markov process, and that  $S_{t\wedge \tau} / S_{t\wedge \tau}^{0}$  is a martingale. It is then possible to show that the price of the option at time  $t$  is  $p(t\wedge \tau ,S_{t\wedge \tau})$  where  $p$  is defined for  $t\in [0,T]$  and  $S\in [a,b]$  and satisfies:

$$
\left\{ \begin{array}{l} \frac{\partial p}{\partial t} + r S \frac{\partial p}{\partial S} + \frac{\sigma^{2} S^{2}}{2} \frac{\partial^{2} p}{\partial S^{2}} - r p = 0, \\ p (T, S) = \phi (S), \\ p (t, a) = p (t, b) = 0 \end{array} \right. \tag {10}
$$

Here again,  $r$  and  $\sigma$  may be functions of  $t$  and  $S$ . Moreover, the generalization to basket options is straightforward, as explained above. In this case, it is possible to consider more general barriers, namely a payoff of the form  $1_{\forall t \in [0,T], (S_t^1, S_t^2, \dots, S_t^d) \in \mathcal{D}} \phi(S_T)$ , where  $d$  denotes the number of underlying assets and  $\mathcal{D}$  is any simple connected domain of  $\mathbb{R}^d$ . The appropriate discretization for general domains  $\mathcal{D}$  is the finite element method that will be discussed later on.

# Options on the Maximum

For some options (the so-called lookback options), the payoff involves the maximum of the risky asset. For example, it writes  $\phi(S_T, M_T)$  where  $M_t = \max_{0 \leq r \leq t} S_r$  and  $S_t$  satisfies (1). One can check that  $(S_t, M_t)$  is a Markov process. It is then possible to show that the price of the option at time  $t$  is  $p(t, S_t, M_t)$  where  $p$  is defined for  $t \in [0, T]$  and  $(S, M) \in \{(S, M) \in \mathbb{R}^2, 0 \leq S \leq M\}$  and satisfies:

$$
\left\{ \begin{array}{l} \frac{\partial p}{\partial t} + \frac{\sigma^{2}}{2} S^{2} \frac{\partial^{2} p}{\partial S^{2}} + r S \frac{\partial p}{\partial S} - r p = 0, \\ p (T, S, M) = \phi (S, M), \\ \frac{\partial p}{\partial M} (t, S, S) = 0 \end{array} \right. \tag {11}
$$

If the payoff is of the form  $\phi (S,M) = M\tilde{\phi} (S / M)$  it is possible to reduce the problem to a two-dimensional one (including the time variable). Indeed, one can check by straightforward computations that  $p(t,S,M) = Mw(t,S / M)$  where  $w$  is a function of  $t\in [0,T]$  and  $\xi \in [0,1]$ , which satisfies:


$$
\left\{ \begin{array}{l} \frac{\partial w}{\partial t} + \frac{\sigma^{2}}{2} \xi^{2} \frac{\partial^{2} w}{\partial \xi^{2}} + r \xi \frac{\partial w}{\partial \xi} - r w = 0, \\ w (T, \xi) = \tilde {\phi} (\xi), \\ \frac{\partial w}{\partial \xi} (t, 1) = w (t, 1) \end{array} \right. \tag {12}
$$

Notice that this reduction is not generally possible for  $(t, S, M)$ -dependent interest rate and volatility (except for very peculiar dependencies).

# Options on the Average

Some options (the so-called Asian options) involve the average of the risky asset. More precisely, the payoff writes  $\phi(S_T, A_T)$  where  $A_t = \frac{1}{t} \int_0^t S_r dr$  and  $S_t$  satisfies (1). One can check that  $(S_t, A_t)$  is a Markov process. Using this property, it is possible to show that the price of the option at time  $t$  is  $p(t, S_t, A_t)$  where  $p$  is defined for  $t \in [0, T]$  and  $(S, A) \in [0, \infty)^2$ , and  $p$  satisfies:

$$
\left\{ \begin{array}{l} \frac{\partial p}{\partial t} + \frac{\sigma^{2} S^{2}}{2} \frac{\partial^{2} p}{\partial S^{2}} + r S \frac{\partial p}{\partial S} \\ \quad + \frac{1}{t} (S - A) \frac{\partial p}{\partial A} - r V = 0, \\ p (T, S, A) = \phi (S, A) \end{array} \right. \tag {13}
$$

In some cases (see Rogers and Shi, 1995), it is possible to reduce this problem to a one-dimensional PDE. More precisely, for fixed strike call  $(\phi(S, A) = (A - K)_+)$  or fixed strike put  $(\phi(S, A) = (K - A)_+)$ , we have  $p(t, S, A) = Sf(t, \frac{K - tA / T}{S})$  where  $f$  satisfies

$$
\left\{ \begin{array}{l} \frac{\partial f}{\partial t} + \frac{\sigma^{2} \xi^{2}}{2} \frac{\partial^{2} f}{\partial \xi^{2}} - \left(\frac{1}{T} + r \xi\right) \frac{\partial f}{\partial \xi} = 0, \\ f (T, \xi) = \tilde {\phi} (\xi) \end{array} \right. \tag {14}
$$ and  $\tilde{\phi} (\xi) = \xi_{-}$  (resp.  $\tilde{\phi} (\xi) = \xi_{+})$  . This reduction of (13) to (14) is also possible for floating strike call  $(\phi (S,A) = (S - A)_{+})$  (resp. for floating strike put  $(\phi (S,A) = (A - S)_{+}))$  by setting  $p(t,S,A) = Sf(t, - \frac{tA}{TS})$  and  $\tilde{\phi} (\xi) = (1 + \xi)_+$  (resp.  $\tilde{\phi} (\xi) = (1 + \xi)_{-})$  . However, this reduction


is generally not possible for general payoff function or  $(t, S, A)$ -dependent interest rate and volatility (except for very peculiar dependencies).

# Bermudean Options

As a transition between European and American options, we would like to mention that it is very easy to price Bermudean options with the PDE approach. For such options, the contract can be exercised only at certain days between the present time and the maturity. Mathematically, for an option on a single asset (the spot price is called  $S$ ) and if  $\phi$  denotes the payoff, the pricing function satisfies  $p(t_i^+, S) = \max(p(t_i^-, S), \phi(S))$ , at each exercising time  $t_i$ , and (8) between the exercising times; see Duffie (1992, p. 211).

# The Case of American Options

We have so far presented so-called European options, that is, some options that enable their owners to get  $\phi(S_T)$  at a fixed time  $T$ . On the other hand, American options can be exercised at any time up to the maturity. Hence the price of an American option of payoff  $\phi$  and maturity  $T$  will be the maximum of all possible expectations such as (6) for stopping times  $\tau$  between  $t$  and  $T$ , that is, for  $t \in [0, T]$  and  $x \geq 0$ ,

$$ p (t, x) = \sup_{\tau \in \mathcal {T}_{[ t, T ]}} \mathbb {E} \left(e^{- \int_{t}^{\tau} r d S} \phi \left(S_{\tau}^{t, x}\right)\right) \tag {15}
$$ where  $\mathcal{T}_{[t,T]}$  denotes the set of stopping times  $\tau$  of the filtration  $\mathcal{F}_t$ , with values in  $[t,T]$ .


# The PDE for American Options

We now present the main arguments to derive a PDE on  $p$  defined by (15) (or more precisely a system of partial differential inequalities).

Notice first that taking  $\tau = t$  in (15) yields the inequality

$$ p (t, x) \geq \phi (x) \tag {16}
$$

Moreover, we clearly have from (15)  $p(T,x) = \phi (x)$

Let  $t$  and  $\delta t$  be such that  $0\leq t\leq t + \delta t\leq T$  From (15) we have:

$$
\begin{array}{l} e^{- \int_{0}^{t + \delta t} r d s} p (t + \delta t, S_{t + \delta t}^{t, x}) \\ = \sup_{\tau \in \mathcal {T}_{[ t + \delta t, T ]}} \mathbb {E} \left(e^{- \int_{0}^{\tau} r d s} \phi \left(S_{\tau}^{t + \delta t, S_{t + \delta t}^{t, x}}\right)\right), \\ \leq \sup_{\tau \in \mathcal {T}_{[ t, T ]}^{t}} \mathbb {E} \left(e^{- \int_{0}^{\tau} r d s} \phi \left(S_{\tau}^{t, x}\right)\right), \\ \leq e^{- \int_{0}^{t} r d s} p (t, x) \\ \end{array}
$$ where we have used the fact that:  $S_{\tau}^{t + \delta t, S_{t + \delta t}^{t,x}} = S_{\tau}^{t,x}$ . By Ito's calculus (taking the limit  $\delta t \rightarrow 0$ ), we thus obtain


$$
- \frac{\partial p}{\partial t} + \mathcal {A} p \geq 0 \tag {17}
$$ where we have introduced the linear PDE operator


$$
\mathcal {A} p = - r S \frac{\partial p}{\partial S} - \frac{\sigma^{2} S^{2}}{2} \frac{\partial^{2} p}{\partial S^{2}} + r p \tag {18}
$$

Combined with (16), we then obtain

$$
\min  \left(- \frac{\partial p}{\partial t} + \mathcal {A} p, p - \phi\right) \geq 0 \tag {19}
$$

Our aim is now to show that the inequality in (19) is actually an equality. This is done in several steps, and requires us to identify an optimal stopping time  $\tau^{*}$  for which the supremum in (15) is obtained. For a fixed  $(t,x)$ , let us introduce the stopping time  $\tau^{*} \in T_{[t,T]}$  defined by

$$
\tau^{*} = \inf  \left\{\theta \geq t, p \left(\theta , S_{\theta}^{t, x}\right) = \phi \left(S_{\theta}^{t, x}\right) \right\}, a. s. \tag {20}
$$

(notice that  $\tau^{*}\leq T$  since  $p(T,x) = \phi (x)$ ). It can be shown (see Appendix) that

$$
\begin{array}{l} p (t, x) = \mathbb {E} \left(e^{- f_{t}^{\tau^{*}} r} d s \phi \left(S_{\tau^{*}}^{t, x}\right)\right) \\ = \mathbb {E} \left(e^{- \int_{t}^{\tau^{*}} r d s} p \left(\tau^{*}, S_{\tau^{*}}^{t, x}\right)\right) \tag {21} \\ \end{array}
$$

Using a decreasing property (65) proved in the Appendix, one then obtains that for any  $\delta t > 0$ ,

$$
\begin{array}{l} p (t, x) = \mathbb {E} \left(e^{- \int_{t}^{\tau_{\delta t}^{*}} r d s} p \left(\tau_{\delta t}^{*}, S_{\tau_{\delta t}^{*}}^{t, x}\right)\right), \\ \text{where} \tau_{\delta t}^{*} = (t + \delta t) \wedge \tau^{*} \tag {22} \\ \end{array}
$$

This can be seen as a dynamic programming principle (or Bellman's principle). For a European option we would have more simply

$$ p (t, x) = \mathbb {E} \left(e^{- \int_{t}^{t + \delta t} r d s} p \left(t + \delta t, S_{t + \delta t}^{t, x}\right)\right)
$$

Now if we suppose that  $p(t,x) > \phi (x)$ , then for any  $\delta t > 0$  we have  $\mathbb{P}(\tau_{\delta t}^{*} > t) = 1$ . Considering Ito's formula in (22), and by (17), we obtain  $(-\frac{\partial p}{\partial t} +\mathcal{A}p)(\theta ,S_{\theta}^{t,x}) = 0$  for  $t\leq \theta \leq \tau_{\delta t}^{*}$ , thus leading to  $(-\frac{\partial p}{\partial t} +\mathcal{A}p)(t,x) = 0$ . This shows that the inequality in (19) is actually an equality.

Hence the PDE for the American option is

$$
\left\{ \begin{array}{l} \min  \left(- \frac{\partial p}{\partial t} + \mathcal {A} p, p - \phi\right) = 0, \\ t \in [ 0, T ], x \geq 0, \\ p (T, x) = \phi (x), \quad x \geq 0 \end{array} \right. \tag {23}
$$ where  $\mathcal{A}$  is defined by (18). The major difference between the PDE (23) for American options and the PDE (8) for European options is that (23) is a nonlinear equation. This makes the theory of existence and uniqueness as well as the numerical approximation more difficult than for European options.

In the presentation above, we have used Ito's formula, which requires that  $p$  is  $C^1$  in time and  $C^2$  in the spot variable. This is not true in general. It is however possible, following the same lines, to prove that  $p$  is a weak solution to (23) in the viscosity sense. For a historical derivation of this PDE, see Bensoussan and Lions (1978) or El Karoui (1981) where a variational formulation of (23) is derived (see (52) below). We also refer to Oksendal and Rekvam (1998) for an infinite horizon-related problem, Crandall, Ishii, and Lions (1992) for general results, Pham (1998) for an approach of optimal stopping including jump diffusion processes, and to Barles (1994) for the case of a discontinuous payoff  $\phi$ .

# PRICING EUROPEAN OPTIONS WITH PDEs

The aim of this section is to present two classes of methods for solving partial differential equa tions with some applications to the PDEs derived previously. We first introduce the finite difference method, which is based on approximation of the differential operators by Taylor expansions, and then the finite element methods, which belong to the wider class of Galerkin methods and are based on a variational formulation of the PDE. We try to stress the most important aspects of the numerical methods and refer, for example, to Achdou and Pironneau (2005 and 2009) for a more comprehensive presentation.


# The Finite Difference Method for European Options

We first present the simplest approach to discretize a PDE: the finite difference method.

# Basic Schemes

Let us introduce the finite difference method on the simple PDE (8). Let us first concentrate on the discretization of (8) with respect to the variable  $S$ . The principle is to divide the interval  $[0, S_{\max}]$  into  $I$  intervals of length  $\delta S = S_{\max} / I$  (where  $S_{\max}$  has to be chosen large enough, see below), and to approximate the derivatives by finite differences. A possible semidiscretization of (8) is: for  $i \in \{0, 1, \dots, I\}$ ,

$$
\left\{ \begin{array}{l} \frac{\partial P_{i}}{\partial t} + r S_{i} \frac{P_{i + 1} - P_{i - 1}}{2 \delta S} \\ + \frac{\sigma^{2} S_{i}^{2}}{2} \frac{P_{i + 1} - 2 P_{i} + P_{i - 1}}{\delta S^{2}} - r P_{i} = 0, \\ P_{i} (T) = \phi \left(S_{i}\right) \end{array} \right. \tag {24}
$$ where  $S_{i} = i\delta S$  denotes the  $i$ -th discretization point, and  $P_{i}(t)$  is intended to be an approximation of  $p(t,S_i)$ . Now, (24) is a system of coupled ordinary differential equations (ODEs). The generalization to the case of a time and spot dependent  $r$  or  $\sigma$  is straightforward.


Notice that for  $S = 0$ ,  $P_0$  can be solved independently (since  $S_0 = 0$ ):  $P_0(t) = \phi(0)\exp(-\int_t^T r \, ds)$ . In order to obtain a solution of the whole system of ODEs, one needs to define an appropriate boundary condition at

$S = S_{\mathrm{max}}$ . Indeed, (24) taken at  $i = I$  involves  $P_{I + 1}$  which is a priori not defined. There are basically two methods to deal with this issue. The first one consists of using some a priori knowledge on the values of  $p(t,S)$  when  $S$  is large and making some approximations of  $p(t,S_{\mathrm{max}})$ . In this case, the value of  $P_{I}$  is given as a data (this is a so-called Dirichlet boundary condition), and the unknowns are  $(P_i)_{0\leq i\leq I - 1}$ . For example, in the case of a put  $(\phi (S) = (S - K)_{-})$  (resp. a call  $(\phi (S) = (S - K)_{+}))$ , it is known that  $\lim_{S\to \infty}p(t,S) = 0$  (resp., in the limit  $S\rightarrow \infty$ ,  $p(t,S)\sim S - K\exp (-\int_t^T rds))$ , so that one can set  $P_{I}(t) = 0$  (resp.  $P_{I}(t) = S_{\mathrm{max}} - K\exp (-\int_t^T rds))$ ). The error introduced by these artificial boundary conditions can be estimated. Another method is based on some knowledge on the asymptotic behavior of the derivatives of  $p$ . For example, in the case of the put, one can use the so-called homogeneous Neumann boundary condition, which writes  $\partial p / \partial S(t,S_{\mathrm{max}}) = 0$  at the continuous level and  $\frac{P_{I + 1}(t) - P_I(t)}{\delta S} = 0$  at the discrete level. In this case, the unknowns are  $(P_i)_{0\leq i\leq I}$ . For both methods,  $S_{\mathrm{max}}$  should be chosen sufficiently large. In practice, the quality of the method may be assessed by measuring how sensitive the result is to the value of  $S_{\mathrm{max}}$ .

Let us now consider the time discretization. Here again, the idea is to divide the time interval  $[0,T]$  into  $N$  intervals of length  $\delta t = T / N$  and to replace the time derivative by a finite difference. Three numerical methods are classically used:

$$
\begin{array}{l} \left\{ \begin{array}{l} \frac{P_{i}^{n + 1} - P_{i}^{n}}{\delta t} + r S_{i} \frac{P_{i + 1}^{n + 1} - P_{i - 1}^{n + 1}}{2 \delta S} \\ + \frac{\sigma^{2} S_{i}^{2}}{2} \frac{P_{i + 1}^{n + 1} - 2 P_{i}^{n + 1} + P_{i - 1}^{n + 1}}{\delta S^{2}} - r P_{i}^{n + 1} = 0, \\ P_{i}^{N} = \phi \left(S_{i}\right) \end{array} \right. (25) \\ \left\{ \begin{array}{l} \frac{P_{i}^{n + 1} - P_{i}^{n}}{\delta t} + r S_{i} \frac{P_{i + 1}^{n} - P_{i - 1}^{n}}{2 \delta S} \\ + \frac{\sigma^{2} S_{i}^{2}}{2} \frac{P_{i + 1}^{n} - 2 P_{i}^{n} + P_{i - 1}^{n}}{\delta S^{2}} - r P_{i}^{n} = 0, \\ P_{i}^{N} = \phi \left(S_{i}\right) \end{array} \right. (26) \\ \end{array}
$$ or


$$
\left\{ \begin{array}{l} \frac{P_{i}^{n + 1} - P_{i}^{n}}{\delta t} + \frac{1}{2} \left(r S_{i} \frac{P_{i + 1}^{n + 1} - P_{i - 1}^{n + 1}}{2 \delta S} \right. \\ \left. + \frac{\sigma^{2} S_{i}^{2}}{2} \frac{P_{i + 1}^{n + 1} - 2 P_{i}^{n + 1} + P_{i - 1}^{n + 1}}{\delta S^{2}} - r P_{i}^{n + 1} \right. \\ \left. + r S_{i} \frac{P_{i + 1}^{n} - P_{i - 1}^{n}}{2 \delta S} + \frac{\sigma^{2} S_{i}^{2}}{2} \frac{P_{i + 1}^{n} - 2 P_{i}^{n} + P_{i - 1}^{n}}{\delta S^{2}} \right. \\ \left. - r P_{i}^{n}\right) = 0, \\ P_{i}^{N} = \phi (S_{i}) \end{array} \right. \tag {27}
$$ where  $P_{i}^{n}$  is intended to be an approximation of  $p(t_{n},S_{i})$ , with  $t_n = n\delta t$ . Notice that using the discretization scheme (25) (the so-called explicit Euler scheme), the values of  $(P_i^n)_{0\leq i\leq I}$  are explicitly obtained from the values of  $(P_{i}^{n + 1})_{0\leq i\leq I}$ . On the contrary, in the two other schemes (26) (implicit Euler scheme) or (27) (Crank-Nicolson scheme), the values of  $(P_i^n)_{0\leq i\leq I}$  are obtained from the values of  $(P_i^{n + 1})_{0\leq i\leq I}$  through the resolution of a linear system, which is more demanding from the computational viewpoint. Various numerical methods can be used for solving this linear system; here, we cannot describe them in detail. Let us simply mention that basically, there exist two classes of methods: the direct methods, which are based on Gaussian elimination, and the iterative methods, which consist of computing the solution as the limit of a sequence of approximations and which only require matrix-vector multiplications. The method of choice depends on the characteristics of the problem.


# Notions of Stability and Consistency

In order to analyze the convergence of the three discretization schemes (25), (26), and (27), and to understand the differences between these schemes, we need to introduce two important notions. The first notion is the consistency. A numerical method is said to be consistent if, when the exact solution is plugged into the numerical scheme, the error tends to zero when the discretization parameters tend to zero. In our context, it consists of replacing  $P_{i}^{n}$  in (25),

(26), or (27) by  $p(t_{n}, S_{i})$ , where  $p$  satisfies (8), and to check that the remaining terms tend to zero when  $\delta t$  and  $\delta S$  tend to zero. By using Taylor expansions, one can check that for (25) and (26) (resp. for (27)), the remaining terms are bounded from above by  $C(\delta t + \delta S^2)$  (resp. by  $C(\delta t^2 + \delta S^2)$ ), where  $C$  denotes a constant, which depends on some norms of the derivatives of  $p$ . Therefore (25) and (26) (resp. (27)) are consistent discretization schemes of order 2 in the spot variable, and of order 1 (resp. 2) in time. The second important notion is the stability. A numerical method is said to be stable if the norm of the solution to the numerical scheme is bounded from above by a constant (independent of the discretization parameters) multiplied by the norm of the data (initial condition, boundary conditions, right-hand side). This property is clearly satisfied if the numerical method is convergent, that is, if the numerical approximation converges to the solution of the PDE when the discretization parameters tend to zero. A general result states that, conversely, a consistent and stable discretization scheme is indeed convergent. The estimate of convergence is given by the estimate of consistency error. For example, if  $p$  is smooth enough, the error for the EI scheme is bounded from above by  $C(\delta t + \delta S^2)$ . Notice that the constant  $C$  in these estimates depends on the solution  $p$ . Higher order schemes will lead to better error estimates as soon as the solution of the continuous problem is smooth enough: The higher the order, the more regular  $p$  must be in order to take full advantage of the scheme. For example, for some parameters, it may happen that the results obtained with the CN scheme around  $t = T$  are not better than those obtained with an order one scheme (IE or EE) since the solution is not sufficiently regular in time around  $t = T$ .

To give a precise meaning to all these results would require us to specify the norms used to measure the errors and to prove the stability. Let us simply mention that two norms are used in practice: The stability in  $L^{\infty}$ -norm (the supremum of the absolute values of the components) is related to a discrete maximum prin ciple (see below); and the stability in  $L^2$ -norm (the Euclidean norm of the vector) is related to an energy estimate on the variational formulation. We refer, for example, to Achdou and Pironneau (2005) for more details.


The discrete maximum principle is the counterpart at the discrete level of the maximum principle at the continuous level mentioned above. It states that if the data for the numerical schemes are positive, then the solution is positive. Such schemes are by construction stable in  $L^{\infty}$ -norm. There exist deterministic numerical methods based on a probabilistic representation of the stock evolution on a binomial or a trinomial tree. Such methods can be interpreted as explicit finite difference methods to solve the PDE (8) and naturally satisfy a discrete maximum principle.

# Convergence Analysis

Let us now discuss the properties of the three discretization schemes. We already mentioned that they are all consistent. On the other hand, it can be shown that the explicit scheme (25) is stable under an additional assumption (a so-called CFL condition; see Courant, Friedrichs, and Lewy, 1967) of the form  $\delta t \leq C\delta S^2$ , where  $C$  denotes a positive constant. The other two schemes (26) and (27) are unconditionally stable (in  $L^2$ -norm). In conclusion, with the explicit scheme, the values of  $(P_i^n)_{0 \leq i \leq I}$  can be very rapidly obtained from the values of  $(P_i^{n+1})_{0 \leq i \leq I}$ , but the time step must be sufficiently small with respect to the spot step to guarantee stability and hence convergence. On the other hand, the implicit schemes (26) and (27) require the resolution of a linear system at each time-step, but converge without any restriction on the time-step. This situation is very general for the parabolic PDEs obtained in finance. In terms of computational costs, the balance is generally in favor of the implicit schemes, since the CFL condition appears to be very stringent in practice. Concerning the stability in  $L^\infty$ -norm, let us just mention that the implicit schemes above do not satisfy the discrete maximum

Table 1 Error on the Value of a Call in Function of the Number of Intervals  $I$  in the Variable  $S$ , for the Implicit Euler (IE) Scheme

<table><tr><td>N = 1000</td><td>I = 150</td><td>I = 300</td><td>I = 600</td><td>I = 1200</td></tr><tr><td>IE</td><td>0.165</td><td>0.0356</td><td>0.00103</td><td>0.000452</td></tr></table> principle and are not  $L^{\infty}$ -stable as such. These properties are, however, satisfied after a small modification of the discretization of the advection term  $rS\frac{\partial p}{\partial S}$  (this is a so-called upwinding technique), which amounts to adding a diffusion term of order  $\delta S$ , which implies that this modified scheme becomes only of order 1 in the spot variable. Thus, the price to pay to get  $L^{\infty}$ -stability is a loss of one order of convergence.


In Tables 1 and 2, we illustrate this analysis by computing the error on the price of a call with  $r = 0.1$ ,  $\sigma = 0.01$ ,  $K = 100$ ,  $T = 1$ ,  $S_0 = 100$ , and  $S_{\mathrm{max}} = 300$  for the three discretization schemes (25), (26), and (27), and various values of the numerical parameters  $I$  and  $N$ . The reference value  $(P = 9.51625)$  is obtained by the analytic Black and Scholes formula. In particular, one can check that the rates of convergence with respect to  $\delta t$  and  $\delta S$  are indeed those predicted by the analysis.

Before presenting an extension of this discretization method to Asian options, we mention the interest of a classical change of variable for the spot variable. It is indeed well known that by a change of variable  $x = \ln S$ , it is possible to get rid of the dependency in  $S$  of the advection and diffusion terms in (8). It is not better to discretize the PDE after this change of variable, since it corresponds to taking a grid refined near  $S = 0$ , which is useless in this case. As we will see below, what actually matters is to refine the grid around the singularity of  $p$  (i.e., around  $S = K$ ). A finite element approach is better suited in order to implement these refinements.


# Application to Asian Options

We now present a less easy implementation of a finite difference method for pricing Asian options (see Dubois and Lelièvre, 2005). More precisely, we focus on computing numerical solutions to (14) for a fixed strike call:

$$
\tilde {\phi} (\xi) = \xi_{-} \tag {28}
$$

We have seen in the previous section that a simple finite difference scheme leads to very satisfactory results when computing the solution of the classical Black-Scholes equation (8). On the other hand, when one uses a simple finite difference scheme on (14), very bad results are obtained, especially when the volatility  $\sigma$  is small (see Table 1 in Dubois and Lelièvre, 2005). These bad results are due to the fact that when  $\xi$  is close to zero, the advection term  $(\frac{1}{T} + r\xi)$  is much larger than the diffusion term  $\sigma^2\xi^2 / 2$  in (14). This is known to deteriorate the stability of the numerical scheme, particularly with respect to the  $L^\infty$ -norm. In practice, the numerical solution exhibits some oscillations and does not satisfy the discrete maximum principle. Moreover, the finite difference method introduces numerical diffusion, which leads to unsatisfactory results for purely advective equations.

Table 2 Error on the Value of a Call in Function of the Number of Time-Steps  $N$

<table><tr><td>I = 500</td><td>N = 5</td><td>N = 10</td><td>N = 20</td><td>N = 40</td><td>N = 80</td><td>N = 160</td></tr><tr><td>EE</td><td>28.53</td><td>0.386</td><td>0.398</td><td>0.0739</td><td>0.0162</td><td>0.00714</td></tr><tr><td>IE</td><td>0.0892</td><td>0.0449</td><td>0.0225</td><td>0.0113</td><td>0.00554</td><td>0.00226</td></tr><tr><td>CN</td><td>0.0299</td><td>0.00758</td><td>0.00103</td><td>0.00169</td><td>0.00169</td><td>0.00168</td></tr></table>

Note: We observe that the Euler explicit (EE) scheme is unstable for  $N = 5$ . The convergence in time of the Crank-Nicolson (CN) scheme is much faster than for the implicit Euler (IE) scheme. The remaining error when  $N$  is large is due to the discretization with respect to the variable  $S$ .

One way to handle this problem is to use a characteristic method (based on the solution of  $d\xi /dt = -1 / T$ ) in order to get rid of the term  $1 / T$ . This means that the following change of variable is introduced:

$$ g (t, x) = f (t, x - t / T) \tag {29}
$$

One can easily show that  $g$  is solution of:

$$
\left\{ \begin{array}{l} \frac{\partial g}{\partial t} + \frac{\sigma^{2} (x - t / T)^{2}}{2} \frac{\partial^{2} g}{\partial x^{2}} - r (x - t / T) \frac{\partial g}{\partial x} = 0, \\ g (T, x) = \tilde {\phi} (x - 1) = (1 - x)_{+} \end{array} \right. \tag {30}
$$

The PDE (30) satisfied by  $g$  is such that when the advection term  $r(x - t / T)$  is small, the diffusion term  $\frac{\sigma^2(x - t / T)^2}{2}$  is also small. As shown below, a finite difference scheme applied to (30) will indeed lead to satisfactory results.

An important property of the solution to (30) for  $\tilde{\phi} (\xi) = \xi_{-}$  is that (see Rogers and Shi, 1995)  $\forall \xi \leq 0$

$$ f (t, \xi) = \frac{1}{r T} \left(1 - e^{- r (T - t)}\right) - \xi e^{- r (T - t)} \tag {31}
$$ and therefore,  $\forall x\leq t / T$


$$ g (t, x) = \frac{1}{r T} \left(1 - e^{- r (T - t)}\right) - (x - t / T) e^{- r (T - t)} \tag {32}
$$

To prove (31), one can notice that  $f$  given by (31) is the solution to (14) with  $\phi(\xi) = -\xi$ , and that, due to the fact that the diffusion term is null for  $\xi = 0$  and that the advection term is negative, the solution to (14) for  $\phi(\xi) = \xi_{-}$  on  $\xi \leq 0$  is the same as the solution to (14) for  $\phi(\xi) = -\xi$  on  $\xi \leq 0$ .

To discretize (30), a Crank-Nicolson time scheme is used, with a uniform time step  $\delta t = T / N$ . In order to use the fact that  $g$  is analytically known on  $x \leq t / T$  (see (32)), a mesh that properly discretizes the boundary  $x = t / T$  is used. Therefore, the space interval  $(0,1)$  is also discretized with  $N$  space steps of length  $\delta x = 1 / N$  (see Figure 1). The mesh is completed by adding  $J$  intervals on the right-hand side of  $x = 1$ , so that  $x \in (0,x_{max})$  with  $x_{max} = (N + J)\delta x$ . The value  $J = N / 2$  has been found to be sufficient to guarantee the independence of the results on the position of  $x_{\max}$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/76a29b67-ac4d-47f0-86d4-1e10a3a8dda0/cbd40e408949090109d4ed084405d12ef636b0c3f6cecf6527aaaacabeef23b3.jpg)
Figure 1 The Mesh and the Computational Domain for the Finite Difference Scheme Used to Discretize (30)


Notice that at time  $t_n = n\delta t$ , the number of unknowns is  $(N + J - n)$ . This means that the dimension of the linear system to solve depends on the time-step.

As far as boundary conditions are concerned, we use a Dirichlet boundary condition on  $x = t / T$  (using (32)) and an artificial zero Neumann boundary condition on  $x = x_{\max}$ .

Let us now give some numerical results. In Table 3, a few comparisons of the results obtained with the characteristic method and other methods are given. The characteristic method appears to be accurate for both small and large volatilities. For any values of the parameters, at least 5 digits of precision are obtained in less than one second. Notice that the Thompson bounds and the characteristic method are implemented in Premia.2

# The Finite Element Method for European Options

We would like now to introduce the finite element method. This technique is more flexible than the finite difference method. In particular, it allows for local refinements of the spot grid (even in dimensions greater than one), and possibly based on local error estimators that are mentioned below. This is particularly important for American options, because the pricing function is singular near the exercise boundary, and

Table 3 Comparisons of the Prices for an Asian Fixed Call Obtained with Various Finite Difference Methods: Characteristic Method, Zvan et al. (1998), Večér (2001), and Thompson (1999)

<table><tr><td>σ</td><td>K</td><td>Charact. Method</td><td>N:</td><td>Zvan et al.</td><td>Večér</td><td>Thompson (low)</td><td>Thompson (up)</td></tr><tr><td rowspan="3">0.05</td><td>95</td><td>11.09409</td><td>(300)</td><td>11.094</td><td>11.094</td><td>11.094094</td><td>11.094096</td></tr><tr><td>100</td><td>6.7943</td><td>(1000)</td><td>6.793</td><td>6.795</td><td>6.794354</td><td>6.794465</td></tr><tr><td>105</td><td>2.7444</td><td>(3000)</td><td>2.748</td><td>2.744</td><td>2.744406</td><td>2.744581</td></tr><tr><td rowspan="3">0.30</td><td>90</td><td>16.512</td><td>(300)</td><td>16.514</td><td>16.516</td><td>16.512024</td><td>16.523720</td></tr><tr><td>100</td><td>10.209</td><td>(300)</td><td>10.210</td><td>10.215</td><td>10.208724</td><td>10.214085</td></tr><tr><td>110</td><td>5.730</td><td>(1000)</td><td>5.729</td><td>5.736</td><td>5.728161</td><td>5.735488</td></tr></table> this curve is not known a priori. Let us emphasize that the use of a refined mesh around the singularities of the solution (for example, for vanilla option pricing problems, around  $t = T$  and  $S = K$ ) is very important in practice to rapidly obtain accurate results. The finite element method can also be used in a flexible way when the geometry of the computational domain becomes complex, which may be of interest for barrier options in dimensions greater than one. Finally, finite element methods are interesting since they are naturally stable (in  $L^2$ -norm) and optimal error bounds (in  $L^2$ -norm) can be derived.

Note: Values of parameters:  $T = 1$ ,  $r = 0.15$ ,  $S_0 = 100$ ,  $J = N/2$ . For the characteristic method, the number of timesteps  $N \geq 300$  needed to obtain at least 5 digits of precision is given.


In the following, we first present the finite element method on a simple example, namely equation (8). We then show how to treat more complex European options.

# Variational Formulation and Finite Element Space

The conforming finite element method is based on two ingredients: a so-called variational formulation of the PDE on a functional space  $V$  and the choice of an appropriate sequence of finite dimensional spaces  $V_{h}\subset V$ , which tends to  $V$  when  $h$  (which is the typical diameter of the cells of the space mesh) tends to 0. Let us illustrate this on (8).

To derive a variational formulation of (8), the principle is to multiply the equation by a test function of the spot variable and to integrate by parts. For these computations to be well defined, the functions need to be sufficiently smooth. We thus introduce the functional spaces  $H = L^{2}(\mathbb{R}_{+}) = \{q:[0,\infty)\to \mathbb{R},$ $\int_0^\infty q^2 <  \infty \}$  , and  $V = \{q\in L^{2}(\mathbb{R}_{+}),S(\partial q / \partial S)\in$ $L^2 (\mathbb{R}_+)\}$  . Assuming that  $\phi$  is square integrable, a variational formulation of (8) is then (for an  $S$  -dependent volatility  $\sigma$  : Find  $p\in$ $L^2 ((0,T),V)\cap \mathcal{C}^0 ([0,T],H)$  such that for all  $q\in V$


$$
\left\{ \begin{array}{l} \frac{d}{d t} \int_{0}^{\infty} p q - \int_{0}^{\infty} \frac{\sigma^{2} S^{2}}{2} \frac{\partial p}{\partial S} \frac{\partial q}{\partial S} \\ + \int_{0}^{\infty} \left(r - \sigma^{2} - S \sigma \frac{\partial \sigma}{\partial S}\right) S \frac{\partial p}{\partial S} q \\ - r \int_{0}^{\infty} p q = 0, \\ p (T, S) = \phi (S) \end{array} \right. \tag {33}
$$

All the integrals are with respect to  $S \in [0, \infty)$ . This rewrites: Find  $p \in L^2((0, T), V) \cap \mathcal{C}^0([0, T], H)$  such that for all  $q \in V$ ,

$$
\left\{ \begin{array}{l} \frac{d}{d t} \int_{0}^{\infty} p q - a (p, q) = 0, \\ p (T, S) = \phi (S) \end{array} \right. \tag {34}
$$ where  $a$  is the bilinear form


$$
\begin{array}{l} a (p, q) = \int_{0}^{\infty} \frac{\sigma^{2} S^{2}}{2} \frac{\partial p}{\partial S} \frac{\partial q}{\partial S} \\ - \int_{0}^{\infty} \left(r - \sigma^{2} - S \sigma \frac{\partial \sigma}{\partial S}\right) S \frac{\partial p}{\partial S} q \\ + r \int_{0}^{\infty} p q \tag {35} \\ \end{array}
$$

Under suitable assumptions on the data  $(r,\sigma$  and  $\phi)$  , it is possible to prove that this variational problem is well posed (see Achdou and Pironneau, 2005).

The second step is to introduce a sequence of meshes in the spot variable indexed by the maximal step  $h$  and related finite dimensional functional spaces  $V_{h} \subset V$ . In the case of (33), the problem is posed on an infinite domain, and one needs to first localize the PDE in a finite domain  $[0, S_{\max}]$  by using artificial boundary condition at  $S = S_{\max}$ , as already explained for finite difference discretizations. We consider, for example, a zero Neumann boundary condition on  $S = S_{\max}$ :  $\frac{\partial p}{\partial S}(t, S_{\max}) = 0$ . Then, a mesh of  $[0, S_{\max}]$  consists of a finite number of intervals  $(S_{i}, S_{i+1})$  with  $S_{0} = 0$  and  $S_{I} = S_{\max}$ . We set  $h = \max_{0 \leq i \leq I-1} (S_{i+1} - S_{i})$ . The intervals  $(S_{i}, S_{i+1})$  are called elements. We then need to define a functional space  $V_{h}$  associated with the mesh. A classical example is the  $P1$  finite element space, which contains continuous and piecewise affine functions, namely, continuous functions, which are affine on each interval  $(S_{i}, S_{i+1})$ , for  $0 \leq i \leq I-1$ . In this case, a basis of the vector space  $V_{h}$  is given by the so-called hat functions  $q_{i} \in V_{h}$  such that for  $0 \leq i, j \leq I$ ,  $q_{i}(S_{j}) = \delta_{i,j} = \begin{cases} 0 & \text{if } i \neq j \\ 1 & \text{if } i = j \end{cases} (\delta_{i,j} \text{ istheKroneckersymbol}).$  Notice that higher order finite element methods may be easily obtained by taking continuous and element-wise polynomial functions of degree  $k > 1$ .

The discretization in the spot price variable now simply consists in replacing the functional space  $V$  by the finite dimensional space  $V_{h}$  in (33) or (34) (this is the principle of Galerkin methods): Find  $p_h\in \mathcal{C}^0 ([0,T],V_h)$  such that for all  $q_{h}\in V_{h}$ ,

$$
\left\{ \begin{array}{l} \frac{d}{d t} \int_{0}^{S_{\max }} p_{h} q_{h} - a \left(p_{h}, q_{h}\right) = 0, \\ p_{h} (T, S) = \phi_{h} (S) \end{array} \right. \tag {36}
$$ where  $\phi_h$  is an approximation of  $\phi$  in the space  $V_h$ , and where the integrals in the bilinear form


$a$  are here for  $S \in [0, S_{\max}]$  (see (35)). One can take, for example,  $\phi_h$  such that  $\int_0^{S_{\max}} (\phi - \phi_h) q_h = 0$  for all  $q_h \in V_h$  ( $\phi_h$  is then the  $L^2$  projection of  $\phi$  onto  $V_h$ ). Problem (36) is a finite-dimensional problem in space of the form  $M_h dP_h / dt = A_h P_h$ , where  $P_h(t)$  is a vector of dimension  $I$  containing the values of  $p_h$  at the nodes of the mesh  $(p_h(t, x) = \sum_{j=0}^{I} P_{h,j}(t) q_j(x))$  and  $M_h, A_h$  are  $I \times I$  matrices. The matrix  $M_h$  (resp.  $A_h$ ), with  $(i, j)$ -th component  $\int_0^{S_{\max}} q_i q_j$  (resp.  $a(q_j, q_i)$ ) is classically called the mass (resp. stiffness) matrix, because the finite element method was originally popularized by the mechanical engineering community. When using the nodal basis (hat functions), these matrices are very sparse (tridiagonal for one-dimensional problems). Problem (36) is somewhat similar to (24) obtained by the finite difference method; the two problems (24) and (36) are actually equivalent if a mesh with uniform space steps is used, and if  $M_h$  is replaced by a close diagonal matrix (mass-lumping).

A fundamental result (the Cea's lemma) states that the norm of  $(p - p_h)$  (the discretization error) is bounded from above by a constant times the infimum of the norm of  $(p - q_h)$ , over all  $q_h \in V_h$  (the best fit error). Using this result, if  $V_h$  gets closer to  $V$  when  $h$  tends to 0, that is, if the best fit error tends to 0 when  $h$  tends to zero, so does the discretization error. In particular, the finite element discretization is thus naturally stable in this norm. A precise meaning for this statement requires us to define the norm and study the best fit error. Let us simply mention that the norms used in this context are related to the  $L^2$ -norm introduced for finite difference schemes. We refer to Achdou and Pironneau (2005) or Quarteroni and Valli (1997) for the details. In our specific example, it is possible to prove that, if the payoff function is regular enough, then

$$
\| p - p_{h} \|_{L^{\infty} ([ 0, T ], H)} + \| p - p_{h} \|_{L^{2} ([ 0, T ], V)} \leq C h
$$ and that


$$
\| p - p_{h} \|_{L^{2} ([ 0, T ], H)} \leq C h^{2}
$$

For the discretization in time, the situation is exactly the same as for the finite difference method: One can use the explicit Euler scheme, implicit Euler scheme, or Crank-Nicolson scheme, and the rate of convergence is  $O(\delta t)$  for the Euler schemes and  $O(\delta t^2)$  for the Crank-Nicolson scheme.

# Finite Element Methods for Other Options

We have introduced the finite element method in a very simple case. The aim of this section is to explain how it applies for other options.

Let us first consider basket options, or basket options with barriers, in dimension 2 and 3. The derivation of a variational formulation for (9) is very similar to the one-dimensional case. However, the construction of the mesh is much more complicated in dimension 2 and 3, than in dimension 1. It consists of partitioning the domain into non-overlapping cells (elements) whose shapes are simple and fixed (for example, triangles or quadrilaterals in dimension 2, or tetrahedra or hexahedra in dimension 3). The functional spaces  $V_{h}$  can then be constructed as in dimension 1, for example, by considering continuous piecewise affine functions. One interest of the finite element method in this context is that it is possible to mesh any domain  $\mathcal{D}$  for barrier options. In the finite difference method, to mesh nonquadrilateral (or nonhexahedral) domains is complicated.

Let us now consider the case of lookback options whose prices satisfy (11). This is a natural variational formulation of (11) (written here for a constant volatility  $\sigma$ ): Find  $p: \mathcal{D} \to \mathbb{R}$  such that, for all  $q: \mathcal{D} \to \mathbb{R}$ ,

$$
\begin{array}{l} \frac{d}{d t} \int_{\mathcal {D}} p q - \int_{\mathcal {D}} \frac{\sigma^{2} S^{2}}{2} \frac{\partial p}{\partial S} \frac{\partial q}{\partial S} - \int_{\mathcal {D}} \frac{\sigma^{2} S^{2}}{2} \frac{\partial p}{\partial S} \frac{\partial q}{\partial M} \\ + \int_{\mathcal {D}} \frac{\sigma^{2} S^{2}}{2} \frac{\partial p}{\partial M} \frac{\partial q}{\partial S} + \int_{\mathcal {D}} \sigma^{2} S \frac{\partial p}{\partial M} q \\ + \int_{\mathcal {D}} \left(r - \sigma^{2}\right) S \frac{\partial p}{\partial S} q - r \int_{\mathcal {D}} p q = 0, \\ \end{array}
$$

$$ p (T, S, M) = \phi (S, M) \tag {37}
$$ where  $\mathcal{D} = \{(S,M)\in \mathbb{R}^2,0\leq S\leq M\}$  The boundary condition  $\partial p / \partial M(t,S,S) = 0$  is naturally contained in this variational formulation since, by integration by parts over  $\mathcal{D}$  ..


$$
\begin{array}{l} - \int_{\mathcal {D}} \frac{\sigma^{2} S^{2}}{2} \frac{\partial p}{\partial S} \frac{\partial q}{\partial S} - \int_{\mathcal {D}} \frac{\sigma^{2} S^{2}}{2} \frac{\partial p}{\partial S} \frac{\partial q}{\partial M} \\ + \int_{\mathcal {D}} \frac{\sigma^{2} S^{2}}{2} \frac{\partial p}{\partial M} \frac{\partial q}{\partial S} + \int_{\mathcal {D}} \sigma^{2} S \frac{\partial p}{\partial M} q \\ - \int_{\mathcal {D}} \sigma^{2} S \frac{\partial p}{\partial S} q = \int_{\mathcal {D}} \frac{\sigma^{2} S^{2}}{2} \frac{\partial^{2} p}{\partial S^{2}} q \\ + \frac{1}{\sqrt{2}} \int_{\{S = M \}} \frac{\sigma^{2} S^{2}}{2} \frac{\partial p}{\partial M} q \\ \end{array}
$$

The first term corresponds to the diffusion term in (11). The second term is an integral over the boundary  $\{S = M\}$  of  $\mathcal{D}$  and naturally enforces the boundary condition  $\partial p / \partial M(t,S,S) = 0$  . In Figure 2, we represent the price of a fixed strike call obtained using the formulation (11), an implicit Euler scheme, and  $P1$  finite elements. The computations are made with FreeFem++. $^3$

# A Posteriori Error Estimates

A frequently mentioned advantage of the Monte Carlo methods is that they naturally provide a posteriori error bounds through a confidence interval, typically built upon the central limit theorem. It is also possible to obtain such a posteriori error estimates in the framework of the finite element method (this is one additional advantage of this method compared to finite difference methods). Moreover, these a posteriori estimates have two very important features:

- They depend on local error indicators.
- They can be proved to be reliable and efficient, that is, the actual error is bounded above and below by some fixed constants times the a posteriori error, and these estimates can be made local.

Therefore, in the finite element method, the a posteriori error estimates enable us to refine the mesh in space and time adaptively. We will give a numerical illustration for American options and refer to Ern, Villeneuve, and Zanette (2004), Achdou and Pironneau (2005 and 2009), or Achdou, Hecht, and Pommier (2008) for more details.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/76a29b67-ac4d-47f0-86d4-1e10a3a8dda0/fcfe63657e4cc852569e71123321ffee66bb4d810ddca8f29621b0388f471f77.jpg)
Figure 2 Price of a Lookback Option for a Fixed Strike Call:  $\phi(S, M) = (M - K)_+$ . Note: The parameters are:  $\sigma = 0.3$ ,  $r = 0.1$ ,  $K = 100$ ,  $T = 1$ .


# High-Dimensional Problems

In practical problems, options often involve more than three assets. In this case, the PDE is posed in a space of dimension larger than 4, and the finite element or difference methods cannot be used, since the number of unknowns typically grows exponentially with respect to the problem's dimension. This is the so-called curse of dimensionality. Let us mention that such high-dimensional problems also appear in other scientific fields, quantum chemistry, for example, and that it is still a subject of current research to build appropriate discretizations for high-dimensional PDEs. Roughly speaking, the problem is to find an appropriate sequence of functional spaces  $V_{h}$  (whose basis is called a Galerkin basis), such that their dimensions do not grow too rapidly with the dimension of the problem. One approach is the sparse tensor product (see Bungartz and Griebel, 2004; Petersdoff and Schwab, 2004). The main difficulty when using this approach is actually to project the initial condition on  $V_{h}$ . Another approach used in other contexts for solving high-dimensional problems by deterministic methods is the low separation rank method (see Beylkin and Mohlenkamp, 2002) and the related greedy algorithms (see Ammar et al., 2002; Temlyakov, 2008; Le Bris, Lelièvre, and Maday, 2009; and Nouy, 2009). Let us finally mention that another possible approach for building an appropriate Galerkin basis would be the reduced basis method, where some solutions for a given set of parameters are used to approximate the solution for other values of the parameters. Such methods are currently actively investigated (see, for example, Boyaval, Le Bris, Lelièvre, Maday, Nguyen, and Patera, 2010).


# The Uncertain Volatility Model: An Example of a Nonlinear PDE

One major interest of the PDE approach is that it can be applied for nonlinear models. This will be the case for American options, see below, but we would like to give here another example of such a situation. The principle of the uncertain volatility model introduced by Avellaneda, Levy, and Paras (1995) is to give a price for a European option, when the volatility is only supposed to be in an interval  $[\sigma_{\min}, \sigma_{\max}]$ . The principle is the following. For a European option with convex payoff, it is easy to check that the price should be the Black-Scholes price obtained with the maximum volatility  $\sigma_{\mathrm{max}}$ . In this case, the profit and loss for the hedging strategy is indeed zero if the realized volatility is constant equal to  $\sigma_{\mathrm{max}}$ . A similar reasoning holds for concave payoffs: In this case, one should consider the Black-Scholes price with the minimum volatility  $\sigma_{\mathrm{min}}$ . For a general payoff, it is thus natural (and it can be checked that this is indeed an approach that leads to a very good hedging strategy, with small profit and loss, and thus cheap price) to consider the solution  $p$  to the PDE:


$$
\left\{ \begin{array}{l} \frac{\partial p}{\partial t} + r S \frac{\partial p}{\partial S} + \\ \frac{1}{2} \left(\sigma_{\max }^{2} 1_{\frac{\partial^{2} p}{\partial S^{2}} \geq 0} + \sigma_{\min }^{2} 1_{\frac{\partial^{2} p}{\partial S^{2}} <   0}\right) S^{2} \frac{\partial^{2} p}{\partial S^{2}} - r p = 0, \\ p (T, S) = \phi (S) \end{array} \right. \tag {38}
$$

In other words,  $\sigma_{\mathrm{max}}$  (resp.  $\sigma_{\mathrm{min}}$ ) is used where the price is convex (resp. concave), as a function of the spot. This PDE can be solved using extensions of the discretization techniques presented above; see, for instance, section 2.4 in van der Pijl and Oosterlee (2011).

# PRICING AMERICAN OPTIONS WITH PDES

This section is devoted to the discretization of the system (23) for the price of an American option. Notice that no closed formulas such as the Black-Scholes formula are available for American put, or for American call with a dividend rate, so that efficient discretization of this system is needed even for these simple payoffs.

# The Finite Difference Approach for American Options

We first present the extension of the finite difference approach presented above for European options to American options.

# Some Finite Difference Schemes

We consider a regular mesh discretization  $S_{i} = i\delta S$  and a time discretization  $t_n = n\delta t$  with  $\delta t = \frac{T}{N}$ . As in the European case, it is natural to consider the following three iterative numerical schemes for  $P_{i}^{n}$ , an approximation of  $p(t_{n},S_{i})$ . In all cases, the scheme is initialized by  $P_{i}^{N} = \phi (S_{i})$ . Let  $A$  be the matrix such that

$$
\begin{array}{l} (A P^{n + 1})_{i} = - r S_{i} \frac{P_{i + 1}^{n + 1} - P_{i - 1}^{n + 1}}{2 \delta S} \\ - \frac{\sigma^{2} S_{i}^{2}}{2} \frac{P_{i + 1}^{n + 1} - 2 P_{i}^{n + 1} + P_{i - 1}^{n + 1}}{\delta S^{2}} + r P_{i}^{n + 1} \tag {39} \\ \end{array}
$$

The explicit Euler (EE) scheme for (23) is, for  $n = N - 1, N - 2, \ldots, 0$ ,

$$
\min  \left(- \frac{P_{i}^{n + 1} - P_{i}^{n}}{\delta t} + \left(A P^{n + 1}\right)_{i}, P_{i}^{n} - \phi \left(S_{i}\right)\right) = 0 \tag {40}
$$

The scheme computes  $P^n = (P_i^n)_{i=0,\dots,I-1}$  from the knowledge of  $P^{n+1} = (P_i^{n+1})_{i=0,\dots,I-1}$ . Similarly, we can propose an implicit Euler (IE) scheme:

$$
\min  \left(- \frac{P_{i}^{n + 1} - P_{i}^{n}}{\delta t} + \left(A P^{n}\right)_{i}, P_{i}^{n} - \phi \left(S_{i}\right)\right) = 0 \tag {41}
$$ and an (implicit) Crank-Nicolson (CN) scheme


$$
\begin{array}{l} \min  \left(- \frac{P_{i}^{n + 1} - P_{i}^{n}}{\delta t} + \right. \\ \left. \frac{1}{2} \left((A P^{n})_{i} + (A P^{n + 1})_{i}\right), P_{i}^{n} - \phi \left(S_{i}\right)\right) = 0 \tag {42} \\ \end{array}
$$

In the case of the EE scheme, it is easy to see that we have the equivalent formulation

$$
P_{i}^{n} = \max  \left(\left(\left(I_{d} - \delta t A\right) P^{n + 1}\right)_{i}, \phi \left(S_{i}\right)\right) \tag {43}
$$ where  $I_{d}$  denotes the identity matrix.


We now have two new difficulties compared to the European case: First, the well-posedness of the schemes (41) or (42) is not immediate (for European options, we obtained a linear system, but this is no longer true for American options), and second, studying the convergence is more difficult.

One way to circumvent the first difficulty is to introduce a splitting method (see Barles and Souganidis, 1991; Barles, Daher, and Romano, 1995; and Lions and Mercier, 1979). For (23), it writes (a similar modification of (42) could also be considered, yielding a Crank Nicolson-splitting (CN-S) scheme):

$$
\text{compute} P^{n, 1} \text{s .t .} - \frac{P_{i}^{n + 1} - P_{i}^{n , 1}}{\delta t} + \left(A P^{n, 1}\right)_{i} = 0 \tag {44a}
$$ and then compute  $P_{i}^{n} = \max (P_{i}^{n,1},\phi (S_{i}))$  (44b)


Hereafter, (44) will be referred to as the implicit Euler-splitting (IE-S) scheme. The first step (44a) consists of solving a linear system, as in the European case. The second step is a projection on the set  $\{v = (v_i), v_i \geq \phi(S_i), \forall i\}$ , as for the EE scheme (43).

Notice that as for European options, we set the equation on a truncated domain  $(0, S_{\max})$  and use artificial boundary conditions on  $S = S_{\max}$ . We refer to Barles, Daher, and Romano (1995) for error estimates between the truncated problem on  $(0, S_{\max})$  and the exact problem.

# An Abstract Convergence Result

Assuming for the moment that the schemes are well posed, it is possible to study the convergence in the general framework of finite different schemes for Hamilton-Jacobi equations. Possibly under some restrictions on the mesh sizes  $\delta t$  and  $\delta S$ , we can obtain convergence to the viscosity solution of the PDE (23). We refer to Barles (1994) or Barles, Daher, and Romano (1995) for a short introduction, and Crandall, Ishii, and Lions (1992) for a more detailed overview. To give a rough idea of the convergence results for such schemes, we consider a general Hamilton-Jacobi equation of the form

$$
H \left(t, S, p, \frac{\partial p}{\partial t}, \frac{\partial p}{\partial S}, \frac{\partial^{2} p}{\partial S^{2}}\right) = 0 \tag {45}
$$ with a terminal condition on  $p(T,\cdot)$ , where  $H$  is assumed to be Lipschitz continuous and


"backward parabolic" in the sense that

$$
\begin{array}{l} i f \psi_{1} \leq \psi_{2} \text{th en} H (t, S, p, u, v, \psi_{1}) \\ \geq H (t, S, p, u, v, \psi_{2}) \tag {46a} \\ \end{array}
$$

$$
\begin{array}{l} \text{an di f} u_{1} \leq u_{2} \text{th en} H (t, S, p, u_{1}, v, \psi) \\ \geq H (t, S, p, u_{2}, v, \psi) \tag {46b} \\ \end{array}
$$

Equation (23) is indeed of the form of (45) with, for  $(t,S)\in (0,T)\times (0,S_{\max})$ $H(t,S,p,u,v,\psi) = \min (-u - rSv - \frac{1}{2}\sigma^2 S^2\psi +$ $rp,p - \phi (S))$  , which obviously satisfies (46).

First convergence results were given in the fundamental work of Crandall and Lions (1984) for Lipschitz continuous final condition  $\phi$  (and without  $\frac{\partial^2p}{\partial S^2}$  dependence in (45)).

An abstract and general convergence result is given by Barles and Souganidis (1991), and we now give a simplified presentation of this result.

We first assume that  $H$  satisfies a comparison principle, which can be seen as an extension of the maximum principle to some nonlinear equations. The comparison principle is roughly the following (see Crandall, Ishii, and Lions, 1992; Barles, 1994; or Pham, 1998): Assume that  $u$  (resp.  $v$ ) is a subsolution (resp. supersolution) of (45), that is,

$$
\begin{array}{l} H \left(t, x, u, \frac{\partial u}{\partial t}, \frac{\partial u}{\partial x}, \frac{\partial^{2} u}{\partial x^{2}}\right) \leq 0 \\ \left(\operatorname{re sp .} H \left(t, x, v, \frac{\partial v}{\partial t}, \frac{\partial v}{\partial x}, \frac{\partial^{2} v}{\partial x^{2}}\right) \geq 0\right) \\ \end{array}
$$ for  $(t,S)\in (0,T)\times (0,S_{\max})$  , and that  $u\leq v$  on the boundaries  $S = S_{\mathrm{max}}$  and  $t = T$  , then  $u\leq v$  everywhere.


Now, suppose that we can write the scheme in the abstract form:  $\forall i\in \{0,\ldots ,I\}$ $\forall n\in$ $\{0,\dots ,N\}$

$$
\mathcal {S}_{\rho} \left(t_{n}, S_{i}, P_{i}^{n}, [ P ]\right) = 0 \tag {47}
$$ where  $\rho = (\delta t,\delta S)$  , and  $[P]$  stands for a continuous function that takes values  $(P_j^k)_{0\leq k\leq N,0\leq j\leq I}$  on the corresponding grid points  $(t_k,S_j)$  .4 We suppose that (47) admits at least one solution denoted  $P_{\rho}$  . Then, in the limit when  $\rho$  goes to


zero,  $P_{\rho}$  converges to  $p$  solution to (45) if the following conditions are satisfied:

(i) A stability condition, which reads  $\max_{0\leq n\leq N,0\leq i\leq I}|P_i^n |\leq C$  for some constant  $C$  independent of  $N$  and  $I$  (i.e., independent of  $\rho$ ).
(ii) A consistency condition: for any regular function  $\psi$

$$
\begin{array}{l} \lim_{\xi \rightarrow 0, \rho \rightarrow 0, t_{n} \rightarrow t, S_{i} \rightarrow S} \mathcal {S}_{\rho} \left(t_{n}, S_{i}, \psi \left(t_{n}, S_{i}\right) + \xi , \psi + \xi\right) \\ = H \left(t, S, \psi , \frac{\partial \psi}{\partial t}, \frac{\partial \psi}{\partial S}, \frac{\partial^{2} \psi}{\partial S^{2}}\right) (t, S) \\ \end{array}
$$

For a weaker statement see Barles and Souganidis (1991).

(iii) A monotonicity condition, which reads

$$
\varphi \leq \psi \Rightarrow \mathcal {S}_{\rho} ((t, S), P, \varphi) \geq \mathcal {S}_{\rho} ((t, S), P, \psi)
$$

For most standard financial options, a comparison principle holds. The stability and consistency conditions are close to the stability and consistency conditions already introduced in the case of the schemes for European options. Hence the new condition to check is the monotonicity assumption (which is related to the property (46a) satisfied by  $H$ ). It is actually related to a discrete maximum principle.

Error estimates can also be obtained for the finite difference schemes (40)-(41)-(42). For example, for the EE scheme, an error estimate of order  $\delta S^{1 / 2}$  in  $L^{\infty}$ -norm can be proved under a CFL condition and for Lipschitz initial data (see Jackobsen, 2003). In the context of the finite element method (see below) an error estimate of order  $\delta S^2$  can be proved, but in the weaker  $L^2$ -norm.

# Implementation and Convergence of the Finite Difference Schemes

It is easy to see, in view of (43), that the EE scheme is stable and monotone if the components of the matrix  $(I_d - \delta tA)$  are nonnegative. This is exactly what is needed to prove a discrete maximum principle in the European case.

This property holds under a CFL condition of the form  $\delta t\leq C\delta S^2$ $C$  constant, and with an appropriate discretization of the advection term. The CN scheme is also stable and monotone under a CFL-like condition. On the other hand, it can be shown that the IE-S scheme as well as the IE scheme are stable and monotone without any CFL condition.

Now let us explain how to solve the implicit schemes (41) or (42) in practice. Let us consider the IE scheme (41). At each time step, setting  $b = P^{n + 1}$ ,  $B = I_d + \delta tA$  and  $g = (\phi(S_i))_i$ , the problem is equivalent to finding  $x = P^n$  such that

$$
\min  \left(\left(B x - b\right)_{i}, (x - g)_{i}\right) = 0, \quad \forall i \tag {48}
$$

The Howard algorithm (see Howard, 1960; also called the policy iteration algorithm) is the method of choice to solve (48). To present this algorithm, we rewrite (48) in the following form: Find  $x$  such that,

$$
\min_{\alpha \in \{0, 1 \}^{I}} \left(\left(B (\alpha) x - b (\alpha)\right)_{i}\right) = 0, \quad \forall i \tag {49}
$$ where  $B_{i,j}(\alpha) = \left\{ \begin{array}{ll} B_{i,j} & \text{if } \alpha_i = 0 \\ \delta_{i,j} & \text{if } \alpha_i = 1 \end{array} \right.$  (where  $\delta_{i,j}$  is again the Kronecker symbol, i.e., the  $(i,j)$ -th component of  $I_d$ ) and  $b_i(\alpha) = \left\{ \begin{array}{ll} b_i & \text{if } \alpha_i = 0 \\ g_i & \text{if } \alpha_i = 1 \end{array} \right.$ . The  $i$ -th component of  $B(\alpha)x - b(\alpha)$  only depends on the  $i$ -th component of  $\alpha$ , so that the minimum for the  $i$ -th component in (49) is indeed taken with respect to the  $i$ -th component of  $\alpha$ . Thus, for a given  $x$  and  $\alpha$  realizing the minimum in (49), the component  $\alpha_i$  is equal to 0 (resp. to 1) if, at the  $i$ -th node, the minimum in (48) is  $(Bx - b)_i$  (resp.  $(x - g)_i$ ). For an initial value $^5$ $\alpha^0 \in \{0,1\}^I$ , the algorithm is written as follows: Iterate for  $k \geq 0$ ,


(i) Compute  $x^{k}$  such that  $B(\alpha^{k})x^{k} = b(\alpha^{k})$
(ii)  $\alpha_{i}^{k + 1} = \arg \min_{\alpha_{i}\in \{0,1\}}(B(\alpha)x^{k} - b(\alpha))_{i}$

Santos and Rust (2004) and Bokanowski, Maroso, and Zidani (2009) provide some convergence results. Under suitable assumptions on the matrix  $B$  (which are satisfied for the schemes considered above, which satisfy the monotonicity condition), it can be proved that this method converges in at most  $I$  iterations. In practice, only a few iterations are needed for solving (41).


This algorithm can also be seen as:

- A Newton's method on the function  $F$  defined by  $F_{i}(x) = \min ((Bx - b)_{i}, (x - g)_{i})$ . More precisely, it is a semismooth Newton's method applied to the slantly differentiable function  $F$ .
- A primal-dual algorithm to implement the fully implicit Euler scheme (41) as introduced in Hintermüller, Ito, and Kunisch (2002).

Another well-known method for solving (48) is the projected successive over relaxation (PSOR) method, which is a modification of the successive over relaxation (SOR) method to solve iteratively systems of linear equations (see Saad, 2003). In its simplest form, it consists of decomposing  $B = L + U$  where  $L$  is a lower triangular matrix and  $U$  is an upper triangular matrix with zero coefficients on the diagonal. The algorithm consists of choosing an initial guess  $x^0$  and then computing iteratively for  $n \geq 1$ , for  $i = 1, \dots, I$ ,  $x_i^n = \arg \min \left\{ (Lx^n - (b - Ux^{n-1}))_i, (x^n - g)_i \right\}$ . This method converges only if  $B$  is a diagonal dominant matrix, and the convergence is rather slow in practice. However, it leads to a highly efficient method for the finite element method discussed below, when combined with a suitable splitting scheme.

For the specific case of an American put option on a single asset, a fast algorithm was proposed by Brennan and Schwartz (1977) for solving (41) and proved to converge in Jaillet, Lamberton, and Lapeyre (1990) in the finite element setting (see also Bokanowski, Maroso, and Zidani [2009] in the finite difference setting). Also in this case it can be proved that the region of exercise (namely  $\Gamma_t = \{x \in \mathbb{R}_+, p(t, x) > \phi(x)\}$ ) is of the form  $\Gamma_t = [\gamma(t), \infty[$  where  $\gamma$  is continuous under some regularity assumption

Table 4 Error on the Value of an American Put in Function of the Number  $I$  of Intervals in the Variable  $S$  (and for  $N = {1000}$  )

<table><tr><td>(N = 1000)</td><td>I = 100</td><td>I = 200</td><td>I = 400</td><td>I = 800</td><td>I = 1600</td></tr><tr><td>IE-S</td><td>0.00267</td><td>0.0361</td><td>0.00180</td><td>0.00210</td><td>0.00210</td></tr><tr><td>IE</td><td>0.00379</td><td>0.0146</td><td>0.00011</td><td>0.00024</td><td>0.00018</td></tr></table> of the data. Then the Howard algorithm takes a simple form, which is known as the fronttracking algorithm (see, for instance, Achdou and Pironneau, 2005). However, these algorithms are very specific to the one-dimensional case and do not apply for general payoff functions.


# Numerical Results for the American Put Option

In Table 4, we give numerical results obtained with the IE-S and IE schemes for an American put option with  $r = 0.1$ ,  $\sigma = 0.1$ ,  $K = 100$ ,  $T = 1$ ,  $S = 100$ , and  $S_{\mathrm{max}} = 150$ . We have computed all error values by taking the reference value  $P = 1.63380$  (obtained with a Cox-Ross-Rubinstein algorithm with  $N = 10^5$ , CPU-time  $= 1750$  s.; see Cox, Ross, and Rubinstein [1979] and Lamberton and Lapeyre [1997]). In this example, the IE scheme is one digit more accurate than the IE-S scheme. With these numerical parameters, the EE scheme would yield bad results since the CFL condition is not respected. The IE scheme has been implemented using the Howard algorithm. The remaining error when  $I$  is large is due to the time discretization.

In Table 5, we compare the EE, IE-S and IE schemes. Since the error is of order of  $O(\delta t) + O(\delta S^2)$ , we have used parameters  $N$  and  $I$  such that  $\delta t \simeq \delta S^2$  (i.e.,  $N \simeq I^2$ ), and such that the CFL condition is satisfied. We remark that the EE scheme gives satisfactory results in less than a few seconds. The IE is more accurate but more costly than IE-S. Hence in view of the CPU-time it is more advantageous here to use simply the EE or the IE-S scheme. This conclusion holds for a finite difference discretization, but may be

Table 5 Error and CPU-Times for the Value of an American Put as a Function of the Number  $N$  of Time-Steps  $N$  and the Number  $I$  of Intervals in the Variable  $S$

<table><tr><td></td><td>I = 100N = 100</td><td>I = 200N = 400</td><td>I = 400N = 1600</td><td>I = 800N = 6400</td><td>I = 1600N = 25000</td></tr><tr><td>EE</td><td>0.00593</td><td>0.00069</td><td>0.00045</td><td>0.00003</td><td>0.00003</td></tr><tr><td>CPU-time (sec.)</td><td>0.01</td><td>0.10</td><td>0.5</td><td>2.6</td><td>10.7</td></tr><tr><td>IE-S</td><td>0.01177</td><td>0.00616</td><td>0.00098</td><td>0.00029</td><td>0.00007</td></tr><tr><td>CPU-time (sec.)</td><td>0.05</td><td>0.22</td><td>1.23</td><td>7.06</td><td>44.31</td></tr><tr><td>IE</td><td>0.00201</td><td>0.00181</td><td>0.00016</td><td>0.00004</td><td>0.00001</td></tr><tr><td>CPU-time (sec.)</td><td>0.2</td><td>0.9</td><td>7.3</td><td>75.0</td><td>1033.0</td></tr></table> different for a finite element discretization, or for another set of parameters.


# Markov Chains Approximations

There exist related discretization schemes for American options based on Markov chain approximations. Markov chain schemes (see Kushner and Dupuis, 2001) are based on the approximation of the dynamic programming principle between times  $t$  and  $t + \delta t$  and on the use of a spatial interpolation over a mesh  $(S_j)$ . This leads to another class of schemes that are also in finite difference form. Their convergence can be established by showing the convergence to the dynamic programming equation, or by using the Barles-Souganidis theorem (see Barles and Souganidis, 1991). Finite difference schemes enter this framework as well as semi-Lagrangian schemes (Capuzzo-Dolcetta and Falcone, 1989; Falcone and Ferretti, 1994). An inversed CFL condition, typically of the form  $\delta S^2 / \delta t \stackrel{\delta t, \delta S \to 0}{\longrightarrow} 0$  can then be needed. Notice that the Cox-Ross-Rubinstein algorithm (Cox, Ross, and Rubinstein, 1979) can also be seen as a discrete Markov chain approximation scheme using a very particular spatial mesh such that no interpolation appears at the end.

# Portfolio Optimization

The techniques developed above for pricing American options can be used in the context of portfolio optimization. A portfolio op timization problem (or stochastic optimization problem) is typically of the form


$$
\begin{array}{l} p (t, x) = \max_{\alpha \in L^{\infty} ([ t, T ], K)} \mathbb {E} \left(\int_{t}^{T} e^{- \int_{t}^{u} r (s) d s} \right. \\ \left. \times f (u, X_{u}^{t, x, \alpha}, \alpha (u)) d u + e^{- \int_{t}^{T} r (s) d s} \phi (X_{T}^{t, x, \alpha})\right) \tag {50} \\ \end{array}
$$ where  $K$  is compact,  $\alpha$  is a progressively measurable function with values in  $K$ , and with


$$
\left\{ \begin{array}{l} d X_{u}^{t, x, \alpha} = b (u, X_{u}^{t, x, \alpha}, \alpha (u)) d u \\ \hskip 1 4. 2 2 6 3 7 8 p t + \sigma (u, X_{u}^{t, x, \alpha}, \alpha (u)) d W_{u}, \quad u \geq t, \\ X_{t}^{t, x, \alpha} = x \end{array} \right.
$$

The corresponding PDE can be shown to be

$$
\begin{array}{l} \min_{\alpha \in K} \left(- \frac{\partial p}{\partial t} - \frac{1}{2} \sigma^{2} (t, S, \alpha) \frac{\partial^{2} p}{\partial S^{2}} - b (t, S, \alpha) \frac{\partial p}{\partial S} \right. \\ \left. + r p - f (t, S, \alpha)\right) = 0 \\ \end{array}
$$ in the viscosity sense (see Pham, 2006). Finite difference schemes similar to those presented above for American options can be applied. Implicit schemes, if considered, can be solved by the Howard algorithm. This can also be generalized to an optimal stopping time problem, adding in (50) a supremum over stopping times with values in  $[t,T]$  (as in (15)). For such general HJB equations, a discretization by a finite element approach is not always possible because an appropriate variational formulation cannot always be obtained; see Bensoussan and Lions (1978).


# The Finite Element Approach for American Options

As in the European case, the finite element approach requires a variational formulation of the PDE (23). Let us consider the case of the American put option. Let  $V$  be the functional space used for the variational formulation, and

$$
K = \{q \in V, q \geq \phi \}
$$

We first notice that (23) is equivalent to the set of inequalities $^7$  (together with  $p(T, S) = \phi(S)$ )

$$
\left\{ \begin{array}{l} p - \phi \geq 0, \\ - \frac{\partial p}{\partial t} + \mathcal {A} p \geq 0, \\ \left(- \frac{\partial p}{\partial t} + \mathcal {A} p\right) (p - \phi) = 0 \end{array} \right. \tag {51}
$$

We can check that this is equivalent (for sufficiently smooth function  $p$ ) to the following variational formulation for (23): find  $p \in L^2([0, T], K) \cap C^0([0, T], L^2(\mathbb{R}_+))$  such that for all  $t \in [0, T)$ ,

$$
\forall q \in K, - \int \frac{\partial p}{\partial t} (q - p) + a (p, q - p) \geq 0 \tag {52}
$$ where  $a$  is the bilinear form (35) defined above (recall that for compactly supported functions  $p$  and  $q$ ,  $a(p,q) = \int \mathcal{A}p q$ ), with the final condition


$$ p (T, S) = \phi (S)
$$

Indeed, by writing  $q - p = (q - \phi) - (p - \phi)$ , it is clear that (51) implies (52). Conversely, choosing a sufficiently large  $q \in K$  in (52), we obtain that  $-\frac{\partial p}{\partial t} + \mathcal{A}p \geq 0$ . Taking then  $q = \phi$  in (52), we obtain that  $\langle -\frac{\partial p}{\partial t} + \mathcal{A}p, \phi - p \rangle \geq 0$ , but this inequality is actually an equality since  $-\frac{\partial p}{\partial t} + \mathcal{A}p \geq 0$  and  $\phi - p \leq 0$ .

Notice that if we take  $K = V$  in (52), we recover the variational formulation (34) for the European option. Precise existence and uniqueness results for such variational inequalities can be found in Bensoussan and Lions (1978). For results and applications in the finance context, we refer to Achdou and Pironneau (2005 and 2009).


Now, as in the case of the finite element method for European options, we introduce a sequence of finite dimensional functional spaces  $V_{h}\subset V$  , such that the functions in  $V$  are better and better approximated by functions in  $V_{h}$  as  $h$  goes to 0. One can, for example, consider a P1 finite element space on a mesh  $(S_i)_{0\leq i\leq I}$  . Remember that a basis of  $V_{h}$  is given by a set of functions  $(q_{i})_{0\leq i\leq I}$  . The finite element approximation of (52) is obtained by replacing  $V$  by  $V_{h}$  : Find  $p_h\in \mathcal{C}^0 ([0,T],K\cap V_h)$  such that for all  $t\in [0,T)$

$$
\begin{array}{l} \forall q_{h} \in K \cap V_{h}, - \int \frac{\partial p_{h}}{\partial t} (q_{h} - p_{h}) \\ + a \left(p_{h}, q_{h} - p_{h}\right) \geq 0 \tag {53} \\ \end{array}
$$ with the final condition  $p_h(T) = \phi_h$ , where  $\phi_h \in V_h$  is an approximation of  $\phi$ .


For time discretization, one can again use the schemes we have introduced in the case of the discretization of European options. For example, the implicit Euler scheme applied to (53) is naturally defined as follows: Find  $p_h^N, p_h^{N-1}, \ldots, p_h^0$  in  $V_h \cap K$  such that  $p_h^N = \phi_h$  (initialization) and, for  $n = N-1, \ldots, 0$ :

$$
\begin{array}{l} \forall q_{h} \in V_{h} \cap K, - \int \frac{p_{h}^{n + 1} - p_{h}^{n}}{\delta t} \left(q_{h} - p_{h}^{n}\right) \\ + a \left(p_{h}^{n}, q_{h} - p_{h}^{n}\right) \geq 0 \tag {54} \\ \end{array}
$$

One can easily check that

$$ q_{h} \in V_{h} \cap K \Leftrightarrow q_{h} \in V_{h} \text{an d} q_{h} (S_{i}) \geq \phi (S_{i}), \forall i
$$

Denoting  $A_{h}$  and  $M_{h}$  the mass and stiffness matrices as in the case of the finite element method for European options, and reasoning as for the equivalence between (23), (51), and (52), it can be checked that (54) is equivalent to solve in  $\mathbb{R}^I$ : min  $\left(\left(-M_h\frac{P^{n + 1} - P^n}{\delta t} +A_hP^n\right)_i,\left(P^n -g\right)_i\right)$


$$
= 0, \quad \forall i
$$ where  $g_{i} = \phi (S_{i})$  and  $P_{i}^{n} = p_{h}^{n}(S_{i})$ . Equivalently, the problem is to find  $P^n$  such that

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/76a29b67-ac4d-47f0-86d4-1e10a3a8dda0/5c5859c5279ac008a110feb62bdb06b02cfa33640fc6539a64535ae89f23d486.jpg)
Figure 3 The Adapted Mesh and the Contours of  $P$  One Year to Maturity.  $\sigma_{1} = 0.2$ ,  $\sigma_{2} = 0.1$ ,  $\rho = -0.6$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/76a29b67-ac4d-47f0-86d4-1e10a3a8dda0/a54a2cbb5ede8cce09ec5c40fc3d8a4df8d32238f82cf451695fa5d215dfbe65.jpg)

$$
\begin{array}{l} \min  \left(\left(\left(M_{h} + \delta t A_{h}\right) P^{n} - M_{h} P^{n + 1}\right)_{i}, \left(P^{n} - g\right)_{i}\right) \\ = 0, \quad \forall i \\ \end{array}
$$

This is a similar problem as for the IE finite difference scheme (see (48)) where the matrix  $(I_d + \delta tA)$  is now replaced by  $(M_h + \delta tA_h)$ . It can be solved by the Howard algorithm previously presented. For the particular American put problem under some assumptions on the mesh steps  $\delta t$  and  $h$ , it can also be solved by the Brennan and Schwartz algorithm or the front-tracking algorithm mentioned above.

Notice that a Crank-Nicolson scheme can be derived in a similar way. The expected error (in  $L^2$ -norm) is (as in the European case)  $O(h^{2}) + O(\delta t)$  for the IE scheme and  $O(h^{2}) + O(\delta t^{2})$  for the CN scheme.

We conclude this section by a numerical illustration of the mesh refinement procedure (that can be implemented by using a posteriori error estimates) applied to the pricing of an American option on two assets. Such an automatic refinement procedure is particularly useful for American options because the pricing function is not smooth at any given time  $t \in [0, T]$ . Figures 3 and 4 illustrate such a mesh refinement for a typical two-assets American option with payoff  $\phi(S_1, S_2) = (K - \max(S_1, S_2))_+$ . The artificial boundary  $\Gamma_0$  is  $\{\max(S_1, S_2) = \bar{S} = 200\}$ . Homogeneous Dirichlet conditions are imposed on  $\Gamma_0$ . We have chosen two examples. In the first example, the parameters are  $\sigma_1 = 0.2$ ,  $\sigma_2 = 0.1$ ,  $r = 0.05$ ,  $\rho = -0.6$ , and  $K = 100$ . In the second example, the parameters are  $\sigma_1 = \sigma_2 = 0.2$ ,  $r = 0.05$ ,  $\rho = 0$ , and  $K = 50$ . The implicit Euler scheme has been used with a uniform time step of 1/250 year. For the variables  $S_1$  and  $S_2$ , we have used adaptive finite elements. For solving the linear complementarity problems, we have used the Howard algorithm. Mesh adaption in the  $(S_1, S_2)$  variable has been performed every 1/10 year. In Figure 3, we have plotted the adapted mesh (left) and the contours of the pricing function (right) one year to maturity for the first example. Note that the contours exhibit right angles in the exercise region. In Figure 4, we plot the exercise region one year to maturity for the first example (left) and for the second example (right). One sees that the exercise boundary has singularities. It is also visible that the mesh has been adapted near the exercise boundary.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/76a29b67-ac4d-47f0-86d4-1e10a3a8dda0/d2001e6cdd511db2008c1b0cbe532d69ef33c3a6b87d640b09d7f94bb0b9e8a2.jpg)
Figure 4 The Exercise Region One Year to Maturity. Left:  $K = 100$ ,  $\sigma_1 = 0.2$ ,  $\sigma_2 = 0.1$ ,  $\rho = -0.6$ . Right:  $K = 50$ ,  $\sigma_1 = \sigma_2 = 0.2$ ,  $\rho = 0$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/76a29b67-ac4d-47f0-86d4-1e10a3a8dda0/f2f0d9a66edea24f59ed5d0c398a7bdfe1eaf252df16d3fa679c7bc1b025c6c9.jpg)


# CALIBRATION

Let us now discuss the question of the determination of the parameters that appear in the models we introduced, with an emphasis on the calibration of the local volatility.

# Limitation of the Black-Scholes Model: The Need for Calibration

Consider a European-style option on a given stock with a maturity  $T$  and a payoff function  $\phi$ , and assume that this option is on the market. Call  $p$  its present price. Also, assume the risk-free interest rate is the constant  $r$ . One may associate with  $p$  the so-called implied volatility, that is, the volatility  $\sigma_{imp}$  such that the price given by formula (4) at time  $t = 0$  with  $\sigma = \sigma_{imp}$  coincides with  $p$ . If the Black-Scholes model was sharp, then the implied volatility would not depend on the payoff function  $\phi$ . Unfortunately, for vanilla European puts or calls, for example, it is often observed that the implied volatility is far from constant. Rather, it is often a convex function of the strike price. This phenomenon is known as the volatility smile. A possible explanation for the volatility smile is that the deeply out-of-the-money options are less liquid, thus relatively more expensive than the options in the-money.


This shows that the critical parameter in the Black-Scholes model is the volatility  $\sigma$ . Assuming  $\sigma$  constant and using (8) often leads to poor predictions of the options'prices. The volatility smile is the price paid for the too great simplicity of Black-Scholes' assumptions.

Let us now discuss some of the possible enrichments of the Black-Scholes model:

- Local volatility models: The volatility is a function of time and of the spot price, that is,  $\sigma_t = \sigma(t, S_t)$ . With suitable assumptions on the regularity and the behavior at infinity of the function  $\sigma$ , (4) holds, and  $P_t = p(t, S_t)$ , where  $p$  satisfies the final value problem (8), in which  $\sigma$  varies with  $t$  and  $S$ . Calibrating the model consists of tuning the function  $\sigma$  in such a way that the prices computed, for example, with the PDE coincide with the observed prices. This will be discussed in detail below.

- Stochastic volatility models: One assumes that  $\sigma_t = f(y_t)$ , where  $y_t$  is a continuous time stochastic process, correlated or not to the process driving  $S_t$ ; see Fouque, Papanicolaou, and Sircar (2000) for a nice presentation. Several models have been proposed, among which are the following:

1. Hull-White model (see Hull and White, 1987):  $f(y) = \sqrt{y}$  and  $y_{t}$  is a lognormal process.
2. Scott model:  $f(y) = \sqrt{y}$  and  $y_{t}$  is a mean-reverting Ornstein-Uhlenbeck process:

$$ d y_{t} = \alpha \left(m - y_{t}\right) d t + \beta d Z_{t} \tag {55}
$$ where  $\alpha$  and  $\beta$  are positive constants,  $Z_{t}$  is a Brownian motion.


3. Heston model (see Heston, 1993):  $f(y) = \sqrt{y}$  and  $y_{t}$  is a Cox-Ingersoll-Ross process,

$$ d y_{t} = \kappa \left(m - y_{t}\right) d t + \lambda \sqrt{y_{t}} d Z_{t} \tag {56}
$$ where  $\kappa, m,$  and  $\lambda$  are positive constants.


4. Stein-Stein model (see Stein and Stein, 1991):  $f(y) = \sqrt{y}$  and  $y_{t}$  is a mean-reverting Ornstein-Uhlenbeck process.

There are two risk factors, one for the stock price and the other for the volatility. If the two driving processes are not completely correlated, it is not possible to construct a hedged portfolio containing simply one option and shares of the underlying asset. One says that the market is incomplete. Nevertheless, if one fixes the contribution of the second source of randomness  $dZ_{t}$  to the risk premium, that is, the market price of the volatility risk or the risk premium factor as a function of  $t$ ,  $S_{t}$  and  $y_{t}$ , then it is possible to prove that the option's price is of the form  $P_{t} = p(t,S_{t},y_{t})$ , where the pricing function satisfies a PDE in the variables  $(t,S,y)$ . The PDE may be degenerate for the values of  $y$  corresponding to volatility cancellation. Calibrating the model consists of tuning the parameters of the process  $y_{t}$  and the function  $f$  in order to match the observed prices.

- Lévy-driven spot price: One may generalize the Black-Scholes model by assuming that the spot price is driven by a more general stochastic process, for example, a Lévy process (see Cont and Tankov, 2003; Merton, 1976; and Carr, Geman, and Yor, 2002). Lévy processes are processes with stationary and independent increments which are continuous in probability. For a Lévy process  $X_{\tau}$  on a filtered probability space with probability  $\mathbb{P}^*$ , the Lévy-Khintchine formula says that there exists a function  $\chi : \mathbb{R} \to \mathbb{C}$  such that

$$
\begin{array}{l} \mathbb {E}^{*} (e^{i u X_{\tau}}) = e^{- \tau \chi (u)}, \\ \chi (u) = \frac{\sigma^{2} u^{2}}{2} - i \beta u - \int_{| z | <   1} \left(e^{i u z} - 1 - i u z\right) v (d z) \\ - \int_{| z | > 1} (e^{i u z} - 1) v (d z) \\ \end{array}
$$ for  $\sigma \geq 0$ ,  $\beta \in \mathbb{R}$  and a positive measure  $\nu$  on  $\mathbb{R} \setminus \{0\}$  such that  $\int_{\mathbb{R}} \min(1, z^2) \nu(dz) < +\infty$ . The measure  $\nu$  is called the Lévy measure of  $X$ . We focus on the Lévy measure with a density,  $\nu(dz) = k(z) dz$ . It is assumed that the discounted price of the risky asset is a square integrable martingale under  $\mathbb{P}^*$ , and that it is represented as the exponential of a Lévy process:


$$ e^{- r \tau} S_{\tau} = S_{0} e^{X_{\tau}}
$$

The martingale property is that  $\mathbb{E}^* (e^{X_{\tau}}) = 1$  i.e.

$$
\begin{array}{l} \int_{| z | > 1} e^{z} \nu (d z) <   \infty , \quad \text{an d} \\ \beta = - \frac{\sigma^{2}}{2} - \int_{\mathbb {R}} (e^{z} - 1 - z 1_{| z | \leq 1}) k (z) (d z) \\ \end{array}
$$ and the square integrability comes from the condition  $\int_{|z| > 1}e^{2z}k(z)dz < \infty$ .


With such models, the pricing function for a European option is obtained by solving a partial integrodifferential equation (PIDE), with a nonlocal term. Calibrating the model consists of tuning  $\sigma$  and the function  $k$  in such a way that the prices computed with the PIDE, for example, match the observed prices (see Cont and Tankov, 2004).

# Local Volatility and Dupire's Formula

We consider a local volatility model and call  $(t,S)\mapsto C(t,S,\tau ,x)$  the pricing function for a vanilla European call with maturity  $\tau$  and strike  $x$ . It satisfies the final value problem: for  $t\in [0,\tau)$  and  $x\in \mathbb{R}_{+}$ ,

$$
\begin{array}{c} \frac{\partial C}{\partial t} + \frac{\sigma^{2} (t , S) S^{2}}{2} \frac{\partial^{2} C}{\partial S^{2}} + (r - q) S \frac{\partial C}{\partial S} - r C = 0 \\ C (\tau , S) = (S - x)_{+} \end{array} \tag {57}
$$ where we have supposed that the underlying asset yields a distributed dividend,  $qS_{t}dt$ . By reasoning directly on (4) or by using PDE arguments, it can be proved that the function  $(\tau ,x)\mapsto C(t,S,\tau ,x)$  now  $t$  and  $S$  are fixed


satisfies the forward parabolic PDE:

$$
\frac{\partial C}{\partial \tau} - \frac{1}{2} \sigma^{2} (\tau , x) x^{2} \frac{\partial^{2} C}{\partial x^{2}} + (r - q) x \frac{\partial C}{\partial x} + q C = 0 \tag {58}
$$ for  $\tau > t$  and  $x \in \mathbb{R}_+$ . This observation was first made by Dupire (1994), and the proof of (58) by PDE arguments can be found in Achdou and Pironneau (2005) or Pironneau (2007). We also mention that similar partial differential equations can be derived for other options, like binary options, barrier options, options on Lévy-driven assets, or basket options (see Pironneau, 2007).


Using (58) is useful for two reasons. First, consider a family of calls on the same stock with different maturities and strikes  $(\tau_{i},x_{i})$ $I\in I$  where  $I$  is a finite set. Assume that the spot price is known, that is,  $S = S_0$  . In order to numerically compute the prices of the calls, that is,  $C(0,S_0,\tau_i,x_i)$ $i\in I$  , one may solve (58) for  $\max_{i\in I}\tau_i > \tau >0$  and initial data  $C(\tau = 0,x) =$ $(S_0 - x)_+$  with, for example, a finite difference or a finite element method. Only one initial value problem is needed. On the contrary, using (8) would necessitate solving #I initial value problems. We see that (58) may save a lot of work.

Second, (58) may be used for local volatility calibration. Indeed, if all the possible vanilla options were on the market, the local volatility in (57) could be computed:

$$
\sigma^{2} (\tau , x) = 2 \frac{\frac{\partial C}{\partial \tau} (\tau , x) + (r - q) x \frac{\partial C}{\partial x} (\tau , x) + q C (\tau , x)}{x^{2} \frac{\partial^{2} C}{\partial x^{2}} (\tau , x)} \tag {59}
$$

This is known as Dupire's formula for the local volatility. In practice, (59) cannot be used directly because only a finite number of options are on the market.

Assume that the observations are the prices  $(\bar{C}_i)_{i\in I}$  of a family of calls with maturity/strike  $(\tau_i,x_i)_{i\in I}$ . Finding a function  $(\tau ,x)\mapsto \sigma (\tau ,x)$  such that the solution of (58) with  $C(0,x) = (S_0 - x)_+$  takes the value  $\bar{C}_i$  at  $(\tau_i,x_i)$ ,  $i\in I$  is called an inverse problem.

A natural idea is to somehow interpolate the observed prices by a sufficiently smooth function  $\bar{C} :[0,\max_{i\in I}\tau_i]\to \mathbb{R}_+$ , then use (59) with  $C = \bar{C}$ . For example, bicubic splines may be used. This approach has several serious drawbacks:

- It is difficult to design an interpolation process such that  $\frac{\partial^2\bar{C}}{\partial x^2}$  does not take the value 0, and such that the right-hand side of (59) is nonnegative.
- There is an infinity of possible interpolations of  $\bar{C}_i$  at  $(\tau_i, x_i)$ ,  $i \in I$ , and for two possible choices, the volatility obtained by (59) may differ considerably.

We see that financially relevant additional information has to be added to the interpolation process.

# Least-Square Methods

Here, we show how (58) can be used for calibration. The first idea is to use least squares, that is, to minimize a functional  $J: \sigma \mapsto \sum_{i \in I} \omega_i |\bar{C}_i - C(\tau_i, x_i)|^2$  for  $\sigma$  in a suitable function set  $\Sigma$ , where  $\omega_i$  are positive weights, and the pricing function  $C$  is the solution of (58) with  $C(0, x) = (S_0 - x)_+$ . The evaluation of  $J$  requires the solution of an initial value problem. The set  $\Sigma$  where the volatility is to be found must be chosen in order to ensure that from a minimizing sequence one can extract at least a subsequence that converges in  $\Sigma$ , and that its limit is indeed a solution of the least square problem. For example,  $\Sigma$  may be a compact subset of a Hilbert space  $W$  (in principle  $W$  could be a more general Banach space but it is easier to work in Hilbert spaces if gradients are needed) such that the mapping  $J$  is continuous in  $W$ . In practice,  $W$  has a finite dimension and is compactly embedded in the space of bounded and continuous functions  $\sigma$  such that  $x \partial_x \sigma$  is bounded. Thus, the existence of a solution to the minimization problem is most often guaranteed. What is more difficult to guarantee is uniqueness and stability: Is there a unique solution to the least square problem? If yes, is the solution insensitive to small variations of the data? The answer to these questions is no in general, and we say that the problem is ill-posed.


As a possible cure to ill-posedness, one usually modifies the problem by minimizing the functional  $\sigma \mapsto J(\sigma) + J_R(\sigma)$  instead of  $J$ , where  $J_{R}$  is a sufficiently large strongly convex functional defined on  $W$  and containing some financially relevant information. For example, one may choose  $J_{R}(\sigma) = \omega \| \sigma -\bar{\sigma}\|^{2}$ , where  $\omega$  is some positive weight,  $\| .\|$  is a norm in  $W$ , and  $\bar{\sigma}$  is a prior local volatility, which may come from historical knowledge. The difficulty is that  $\omega$  must not be too large not to perturb the inverse problem too much, but not too small to guarantee some stability. The art of the practitioner lies in the choice of  $J_{R}$ .

Once the least square problem is chosen, we are left with proposing a strategy for the construction of minimizing sequences. If  $J$  and  $J_{R}$  are  $C^1$  functional, then gradient methods may be used. The drawbacks and advantages of such methods are well known: On the one hand, they do not guarantee convergence to the global minimum if the functional is not convex, because the iterates can be trapped near a local minimum. On the other hand, they are fast and accurate when the initial guess is close enough to the minimum. For these reasons, gradient methods are often combined with techniques that permit us to localize the global minimum but that are slow, like simulated annealing or evolutionary algorithms.

Anyhow, gradient methods require the evaluation of the functional's gradient. Since  $J_{R}$  explicitly depends on  $\sigma$ , its gradient is easily computed. The gradient of  $J$  is more difficult to evaluate, because the prices  $C(\tau_i, x_i)$  depend on  $\sigma$  in an indirect way: One needs to evaluate the variations of  $C(\tau_i, x_i)$  caused by a small variation of  $\sigma$ ; calling  $\delta \sigma$  the variation of  $\sigma$  and  $\delta C$  the induced variation of  $C$ , one sees by differentiating (58) that  $\delta C(\tau = 0, \cdot) = 0$  and

$$
\begin{array}{l} \partial_{\tau} \delta C - \frac{\sigma^{2} (\tau , x) x^{2}}{2} \partial_{x x}^{2} \delta C + (r - q) x \partial_{x} \delta C + q \delta C \\ = \sigma \delta \sigma x^{2} \partial_{x x}^{2} C \tag {60} \\ \end{array}
$$

To express  $\delta J$  in terms of  $\delta \sigma$ , an adjoint state function  $P$  is introduced as the solution to the adjoint problem: Find the function  $P$  such that  $P(\bar{\tau},\cdot) = 0$  and for  $\tau < \bar{\tau}$

$$
\begin{array}{l} \partial_{\tau} P + \partial_{x x}^{2} \left(\frac{\sigma^{2} x^{2}}{2} P\right) - \partial_{x} (P (r - q) x) - q P \\ = 2 \sum_{i \in I} \omega_{i} \left(C \left(\tau_{i}, x_{i}\right) - \bar {C}_{i}\right) \delta_{\tau_{i}, x_{i}} \tag {61} \\ \end{array}
$$ where  $\bar{\tau}$  is an arbitrary time greater than  $\max_{i\in I}\tau_i$  and in the right-hand side, the  $\delta_{\tau_i,x_i}$  denote Dirac functions in time and strike at  $(\tau_{i},x_{i})$ . The meaning of (61) is the following:


$$
\begin{array}{l} - \int_{Q} \left(\partial_{\tau} v - \frac{\sigma^{2} x^{2}}{2} \partial_{x x}^{2} v + (r - q) x \partial_{x} v + q v\right) P \\ = 2 \sum_{i \in I} \omega_{i} \left(C \left(\tau_{i}, x_{i}\right) - \bar {C}_{i}\right) v \left(\tau_{i}, x_{i}\right) \tag {62} \\ \end{array}
$$ where  $Q = (0,\bar{\tau})\times \mathbb{R}_{+}$  , and  $v$  is any function such that  $v\in L^{2}((0,\bar{\tau}),V)$  with  $\partial_{\tau}v\in L^{2}(Q)$  and  $x^{2}\partial_{xx}^{2}v\in L^{2}(Q)$  . Taking  $v = \delta C$  in (62) and using (60), one finds


$$
\begin{array}{l} 2 \sum_{i \in I} \omega_{i} \left(C \left(\tau_{i}, x_{i}\right) - \bar {C}_{i}\right) \delta C \left(\tau_{i}, x_{i}\right) \\ = 2 \sum_{i \in I} \omega_{i} \left(C \left(\tau_{i}, x_{i}\right) - c_{i}\right) \left\langle \delta_{\tau_{i}, x_{i}}, \delta C \right\rangle \\ = - \int_{Q} \left(\partial_{\tau} \delta C - \frac{\sigma x^{2}}{2} \partial_{x x}^{2} \delta C + (r - q) x \partial_{x} \delta C + q \delta C\right) P \\ = - \int_{Q} \sigma \delta \sigma x^{2} P \partial_{x x}^{2} C \\ \end{array}
$$

We have worked in a formal way, but all the integrations above can be justified. This leads to the estimate

$$
\left| \delta J + \int_{Q} \sigma \delta \sigma x^{2} P \partial_{x x}^{2} C \right| \leq c \| \delta \sigma \|_{L^{\infty} (Q)}^{2}
$$ which implies that  $J$  is differentiable, and that its differential at point  $\sigma$  is given by


$$
D J (\sigma): \eta \mapsto - \int_{Q} \sigma \eta x^{2} P (\sigma) \partial_{x x}^{2} C (\sigma)
$$ where  $P(\sigma)$  satisfies (61), and  $C(\sigma)$  satisfies (58). We see that the gradient of  $J$  can be evaluated. When (58) is discretized with, for example, finite elements, all that has been done can be repeated with a discrete adjoint problem, and the gradient of the functional can be evaluated in the same way. Let us stress that the gradient


$DJ(\sigma)$  is computed exactly, which would not be the case with, for example, a finite difference method.

Local volatility can also be calibrated with American options, but it is not possible to find the analogue of Dupire's equation. Thus, in the context of a least square approach, the evaluation of the cost function requires the solution of  $\# I$  variational inequalities, which is computationally expensive (see Achdou and Pironneau, 2005). In this case, it is also possible to find the necessary optimality conditions involving an adjoint state (see Achdou, 2005).

# Appendix: Proof of (21)

First, from the definition (15) of  $p$  we have, for any stopping time  $\rho \in \mathcal{T}_{[t,T]}$ ,

$$
\begin{array}{l} e^{- \int_{t}^{\rho} r d s} p (\rho , S_{\rho}^{t, x}) \\ = \operatorname{es s} \sup_{\tau \in \mathcal {T}_{[ \rho , T ]}} \mathbb {E} \left(e^{- \int_{t}^{\tau} r d s} \phi \left(S_{\tau}^{t, x}\right) \mid \mathcal {F}_{\rho}\right), a. s. \tag {63} \\ \end{array}
$$ where  $\mathcal{T}_{[\rho ,T]}$  denotes the set of stopping times  $\tau$  such that  $\rho \leq \tau \leq T$ . Then it is possible to show that (see, for instance, Karatzas and Shreve, 2010, Eq. (D.7)), for any stopping time  $\rho \in \mathcal{T}_{[t,T]}$ ,


$$
\begin{array}{l} \mathbb {E} \left(e^{- \int_{t}^{\rho} r d s} p (\rho , S_{\rho}^{t, x})\right) \\ = \sup_{\tau \in \mathcal {T}_{[ \rho , T ]}} \mathbb {E} \left(e^{- \int_{t}^{\tau} r d s} \phi \left(S_{\tau}^{t, x}\right)\right) \tag {64} \\ \end{array}
$$

We obtain from (64) the decreasing property: For all stopping times  $\rho_{1},\rho_{2}\in T_{[t,T]}$ , such that  $\rho_{1}\geq \rho_{2}$

$$
\begin{array}{l} \mathbb {E} \left(e^{- \int_{t}^{\rho_{1}} r d s} p \left(\rho_{1}, S_{\rho_{1}}^{t, x}\right)\right) \\ \leq \mathbb {E} \left(e^{- \int_{t}^{\rho_{2}} r d s} p \left(\rho_{2}, S_{\rho_{2}}^{t, x}\right)\right) \tag {65} \\ \end{array}
$$

We deduce from (63) that, for any  $\tau \in T_{[\tau^{*},T]}$ ,

$$
\begin{array}{l} \mathbb {E} \left(e^{- \int_{t}^{\tau} r d s} \phi \left(S_{\tau}^{t, x}\right) \mid \mathcal {F}_{\tau^{*}}\right) \leq e^{- \int_{t}^{\tau^{*}} r d s} p \left(\tau^{*}, S_{\tau^{*}}^{t, x}\right) \\ = e^{- \int_{t}^{\tau^{*}} r d s} \phi \left(S_{\tau^{*}}^{t, x}\right) \tag {66} \\ \end{array}
$$ where the last identity comes from the definition (20) of  $\tau^{*}$ . Then, for any stopping time


$\tau \in \mathcal{T}_{[t,T]}$ , we have (by decomposing on the events  $\{\tau < \tau^{*}\}$  and  $\{\tau \geq \tau^{*}\}$ ), and using (66) for  $\tau \geq \tau^{*}$ ):

$$
\mathbb {E} \left(e^{- \int_{t}^{\tau} r d s} \phi \left(S_{\tau}^{t, x}\right)\right) \leq \mathbb {E} \left(e^{- \int_{t}^{\tau \wedge \tau^{*}} r d s} \phi \left(S_{\tau \wedge \tau^{*}}^{t, x}\right)\right)
$$

Hence, by taking the supremum over all the stopping times  $\tau \in \mathcal{T}_{[t,T]}$

$$
\begin{array}{l} p (t, x) \leq \sup_{\tau \in T_{[ t, T ]}} \mathbb {E} \left(e^{- \int_{t}^{\tau \wedge \tau^{*}} r d s} \phi \left(S_{\tau \wedge \tau^{*}}^{t, x}\right)\right) \\ = \sup_{\tau \leq \tau^{*}, \tau \in \mathcal {T}_{[ t, T ]}} \mathbb {E} \left(e^{- f_{t}^{\tau} r d s} \phi \left(S_{\tau}^{t, x}\right)\right) \tag {67} \\ \end{array}
$$

By (15), the right-hand side of (67) is bounded from above by  $p(t,x)$ , and thus we obtain the equality

$$ p (t, x) = \sup_{\tau \leq \tau^{*}, \tau \in \mathcal {T}_{[ t, T ]}} \mathbb {E} \left(e^{- \int_{t}^{\tau} r d s} \phi \left(S_{\tau}^{t, x}\right)\right) \tag {68}
$$

In fact the supremum in (68) is reached only for  $\tau = \tau^{*}$  a.s.. Indeed, for  $\tau \in \mathcal{T}_{[t,T]}$ , if  $\tau \leq \tau^{*}$  and  $\mathbb{P}(\tau < \tau^{*}) > 0$ , we have, by the definition of  $\tau^{*}$ ,  $\mathbb{E}(e^{-\int_t^\tau rds}\phi (S_\tau^{t,x})) < \mathbb{E}(e^{-\int_t^\tau rds}p(\tau ,S_\tau^{t,x}))\leq p(t,x)$ . This concludes the proof of (21).

# KEY POINTS

- When a deterministic method is available to price an option, it is generally more efficient than a brute force Monte Carlo algorithm.
- Deterministic techniques are usually more involved to implement than stochastic approaches and typically require specific developments for each targeted pricing problem.
- Deterministic approaches are particularly useful for nonlinear problems (including the pricing of American options and portfolio optimization) and for calibration.
- Future research subjects for such approaches include the development of efficient discretization methods for high-dimensional problems, and the combination of deterministic and stochastic approaches to take advantage of both techniques (using variance-reduction techniques or predictor-corrector methods, for example).

# NOTES

1. Notice that the same equation has been considered by Vecer (2001) using some financial arguments.
2. http://www.rocq.inria.fr/mathfi/Premia/index.html
3. http://www.freefem.org/
4. More precisely, the interpolating operator  $\cdot$  should also satisfy  $[P] \leq [Q]$  everywhere as soon as  $P_j^k \leq Q_j^k$  for all  $k, j$ .
5. A good initial guess is indeed the vector  $\alpha$  obtained at the previous time iteration.
6.  $F$  is slantly differentiable if there exist  $C > 0$  and a matrix  $G(x)$  such that  $\forall x,||G(x)^{-1}||_{\infty} < C$  and  $F(x + h) = F(x) + G(x + h)h + o(h)$  as  $h\to 0$ . Here  $G(x)$  can be defined by  $G(x)_{ij} = B_{ij}$  if  $(Bx - b)_i\leq (x - g)_i$ , and  $G(x)_{ij} = \delta_{ij}$  otherwise.
7. Such a problem is called a linear complementarity problem.

# REFERENCES

Achdou, Y. (2005). An inverse problem for a parabolic variational inequality arising in volatility calibration with American options. SIAM J. Control Optim. 43, 5: 1583-1615.
Achdou, Y., and Pironneau, O. (2005). Computational methods for option pricing. Frontiers in applied mathematics. Society for Industrial & Applied Mathematics 30.
Achdou, Y., Hecht, F., and Pommier, H. (2008). Space-time a posteriori error estimates for variational inequalities. Journal of Scientific Computing 37: 336-366.
Achdou, Y., and Pironneau, O. (2009). Partial differential equations for option pricing. In P. G. Ciarlet, ed., Handbook of Numerical Analysis, Vol. XV, Special Volume: Mathematical Modeling and Numerical Methods in Finance, Guest Eds., Alain Bensoussan and Qiang Zhang. Netherlands: North-Holland, 369-495.

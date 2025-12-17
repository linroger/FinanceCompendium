
# Change of Time Methods

ANATOLIY SWISHCHUK, PhD

Professor of Mathematics and Statistics, University of Calgary

Abstract: Change of time can be used in financial modeling to introduce stochastic volatility or solve many stochastic differential equations. The main idea of the change of time method is to change time from  $t$  to a nonnegative process  $T(t)$  with nondecreasing sample paths (e.g., subordinator). Many Lévy processes may be written as time-changed Brownian motion. Lévy processes can also be used as a time change for other Lévy processes (subordinators). Using change of time, we can get an option pricing formula for an asset following geometric Brownian motion (e.g., Black-Scholes formula) and obtain an explicit option pricing formula for an asset following the mean-reverting process (e.g., continuous-time GARCH process).

In this entry, we provide an overview on change of time methods (CTM), and show how to solve many stochastic differential equations (SDEs) in finance (geometric Brownian motion [GBM], Ornstein-Uhlenbeck [OU], Vasicek, continuous-time GARCH, etc.) using the change of time method. As applications of CTM we present two different models: geometric Brownian motion (GBM) and mean-reverting models. The solutions of these two models are different. But the nice thing is that they can be solved by CTM like many other models mentioned in this entry. And moreover, we can use these solutions to find easy option pricing formulas: One is classic-Black-Scholes and another one is new for a mean-reverting asset. These formulas can be used in practice (for example, in the energy market) because they all are explicit.

This includes:

- CTM in martingale and semimartingale setting
- CTM in SDEs setting
- Subordination as a change of time

We present two applications of CTM:

- Black-Scholes formula
- Explicit option pricing formula for a mean-reverting asset

# CHANGE OF TIME METHOD

The main idea of the change of time method is to change time from  $t$  to a nonnegative process  $T(t)$  with nondecreasing sample paths. One example is subordinator: If  $X(t)$  and  $T(t) > 0$  are some processes, then  $X(T(t))$  is subordinated to

$X(t);T(t)$  is a change of time. Another example is time-changed Brownian motion:  $M(t) = B(T(t))$  where  $B(t)$  is a Brownian motion and  $T(t)$  is a subordinator (e.g., variance-gamma process  $V(t) = B(T(t)$ , where  $T(t)$  is a gamma process).

Bochner (1949) introduced the notion of change of time (time-changed Brownian motion). Clark (1973) introduced Bochner's change of time into financial economics. Feller (1966) introduced subordinated process  $X(T(t))$  with Markov process  $X(t)$  and  $T(t)$  as a process with independent increments  $(T(t)$  was called randomized operational time). Johnson (1979) introduced the time-changed stochastic volatility model (SVM) in continuous time. Johnson and Shanno (1987) studied the pricing of options using the time-changed stochastic volatility (SV) model. Ikeda and Watanabe (1981) introduced and studied change of time for the solution of SDEs. Barndorff-Nielsen, Nicolato, and Shephard (2003) studied the relationship between subordination and SVM using change of time  $(T(t)$ -chronometer). Carr, Geman, Madan, and Yor (2003) used subordinated processes to construct SV for Lévy processes  $(T(t)$ -business time).

The change of time method is closely associated with the embedding problem: To embed a process  $X(t)$  in Brownian motion is to find a Wiener process  $W(t)$  and an increasing family of stopping times  $T(t)$  such that  $W(T(t))$  has the same joint distribution as  $X(t)$ . Skorokhod (1965) first treated the embedding problem, showing that the sum of any sequence of independent random variables (r.v.) with mean zero and finite variation could be embedded in Brownian motion using stopping times. Dambis (1965) and Dubins and Schwartz (1965) independently showed that every continuous martingale could be embedded in Brownian motion. Knight (1971) discovered the multivariate extension of Dambis (1965) and Dubins and Schwartz's (1965) result. Huff (1969) showed that every process of pathwise bounded variation could be embedded in Brownian motion. Monroe (1972) proved that every right continu ous martingale could be embedded in a Brownian motion. Monroe (1978) proved that a process can be embedded in Brownian motion if and only if this process is a local semimartingale. Meyer (1971) and Papangelou (1972) independently discovered Knight's (1971) result for point processes.


Rosinski and Woyczyński (1986) considered time changes for integrals over stable Lévy processes. Kallenberg (1992) considered time change representations for stable integrals.

Levy processes can also be used as a time change for other Lévy processes (subordinators). Madan and Seneta (1990) introduced the variance gamma (VG) process (Brownian motion with drift time changed by a gamma process). Geman, Madan, and Yor (2001) considered time changes for Lévy processes (business time). Carr, Geman, Madan, and Yor (2003) used change of time to introduce stochastic volatility into a Lévy model to achieve leverage effect and a long-term skew. Kallsen and Shiryaev (2001) showed that the Rosinski-Woyczyński-Kallenberg statement cannot be extended to any other Lévy process but symmetric  $\alpha$ -stable. Swishchuk (2004, 2007) applied change of time method for options and swaps pricing for Gaussian models.

# The General Theory of Time Changes

The general theory of change of time for martingale and semimartingale theories is well known. In this entry we give a brief description of the change of time method in the following settings: martingales and stochastic differential equations.

# Martingale and Semimartingale Settings of Change of Time

Let  $(\Omega, \mathcal{F}, P)$  be a given probability space with a right continuous filtration  $(\mathcal{F}_t)_{t \geq 0}$ . Suppose  $M_t$  is a square integrable local continuous martingale such that  $\lim_{t \to +\infty} \langle M \rangle(t) = +\infty$ almost sure (a.s.), where  $\tau_t \coloneqq \inf \{\mu : \langle M \rangle(u) > t\}$  and  $\tilde{\mathcal{F}}_t = \mathcal{F}_{\tau_t}$ . Then the time-changed process  $B(t) \coloneqq M(\tau_t)$  is an  $\tilde{\mathcal{F}}_t$ -Brownian motion. Also,  $M(t) = B(<M > (t))$ . Here,  $\langle \cdot \rangle$  defines predictable quadratic variation.


If  $\phi_t$  is a change of time process (i.e., any continuous  $\mathcal{F}_t$ -adapted process such that  $\phi_0 = 0$ ,  $t \to \phi_t$  is strictly increasing and  $\lim_{t \to +\infty} \phi_t = +\infty$  a.s.) and if  $X_t$  is an  $\mathcal{F}_t$ -adapted semimartingale, then the process  $\tilde{X}_t \coloneqq X_{\tau_t}$  is an  $\tilde{\mathcal{F}}_t$ -adapted semimartingale, where  $\tau_t \coloneqq \inf \{u : \phi_u > t\}$ , and  $\tilde{\mathcal{F}}_t \coloneqq \mathcal{F}_{\tau_t} \tilde{X}_t$  is called the time change of  $X_t$  by  $\phi_t$ .

Geman, Madan, and Yor (2001) consider pure jump Lévy processes (which are semimartingales) of finite variation with an infinite arrival rate of jumps as models for the logarithm of asset prices. These processes also may be written as time-changed Brownian motion. Their paper exhibits the explicit time change for each of a wide class of Lévy processes and shows that the time change is a weighted price move measure of time.

# Stochastic Differential Equations Setting of Change of Time

The change of time method is used to solve the following SDE:

$$ d X _ {t} = \alpha (t, X _ {t}) d B (t)
$$ with  $B(t)$  being a Brownian motion and  $\alpha (t,x)$  being a "good" function of  $t\geq 0$  and  $x\in R$  Having solved the equation we can also solve the general SDE


$$ d X _ {t} = \beta (t, X _ {t}) d t + \gamma (t, X _ {t}) d B (t)
$$ with drift  $\beta (t,X_{t})$  using the method of transformation of drift (the Girsanov transformation).5


# Subordinators as Time Changes

# Subordinators

Feller (1966) introduced a subordinated process  $X_{\tau_t}$  for a Markov process  $X_{t}$  and  $\tau_{t}$  a process with independent increments.  $\tau_{t}$  was called a randomized operational time. Increasing Lévy processes can also be used as a time change for other Lévy processes. $^6$  Lévy processes of this kind are called subordinators. They are very important ingredients for building Lévy-based models in finance. $^7$  If  $S_{t}$  is a subordinator, then its trajectories are almost surely increasing, and  $S_{t}$  can be interpreted as a "time deformation" and used to "time change" other Lévy processes. Roughly, if  $(X_{t})_{t\geq 0}$  is a Lévy process and  $(S_{t})_{t\geq 0}$  is a subordinator independent of  $X_{t}$ , then the process  $(Y_{t})_{t\geq 0}$  defined by  $Y_{t}:= X_{S_{t}}$  is a Lévy process. $^8$  This time scale has the financial interpretation of business time, $^9$  that is, the integrated rate of information arrival.


# Subordinators and Stochastic Volatility

The time change method was used to introduce stochastic volatility into a Lévy model to achieve the leverage effect and a long-term skew. In the Bates (1996) model the leverage effect and long-term skew were achieved using correlated sources of randomness in the price process and the instantaneous volatility. The sources of randomness are thus required to be Brownian motions. In the Barndorff-Nielsen et al. (2001, 2002) model the leverage effect and long-term skew are generated using the same jumps in the price and volatility without a requirement for the sources of randomness to be Brownian motions. Another way to achieve the leverage effect and long-term skew is to make the volatility govern the time scale of the Lévy process driving jumps in the price. Carr et al. (2003) suggested the introduction of stochastic volatility into an exponential-Lévy model via a time change. The generic model here is  $S_{t} = \exp(X_{t}) = \exp(Y_{\nu_{t}})$ , where  $\nu_{t} \coloneqq \int_{0}^{t} \sigma_{s}^{2} ds$ . The volatility process should be positive and mean-reverting (i.e., an Ornstein-Uhlenbeck or Cox-Ingersoll-Ross process). Barndorff-Nielsen et al. (2003) reviewed and placed in context some of their recent work on stochastic volatility models including the relationship between subordination and stochastic volatility.

The main difference between the change of time method and the subordinator method is that in the former case the change of time process  $\phi_t$  depends on the process  $X_{t}$ , but in the latter case, the subordinator  $S_{t}$  and Lévy process  $X_{t}$  are independent.

# APPLICATIONS OF CHANGE OF TIME METHOD

The change of time method may be applied to get Black-Scholes formula for GBM, explicit option pricing formula for a mean-reverting asset, and to price swaps in financial models with stochastic volatility.

# Black-Scholes by Change of Time Method

In the early 1970s, Black et al. (1973) made a major breakthrough by deriving a pricing formula for vanilla option written on a stock. Their model and its extensions assume that the probability distribution of the underlying cash flow at any given future time is lognormal. There are many proofs of their result, including partial differential equation and the martingale approach.[11]

One of the aims of this entry is to give an idea of how to get the Black-Scholes result by the change of time method.

# An Option Pricing Formula for a Mean-Reverting Asset Model Using a Change of Time Method

Some commodity prices, like oil and gas, exhibit mean reversion. This means that they tend over time to return to some long-term mean. This mean-reverting model is a one-factor version of the two-factor model made popular in the context of energy modeling by Pilipovic (1997). Black's model (1976) and Schwartz's model (1997) have become standard tools to price options on commodities. These models have the advantage that they give rise to closed- form solutions for some types of option. $^{12}$  We note that the recent book by Geman (2005) discusses hard and soft commodities (that is, energy, agriculture, and metals) and also presents an analysis of economic and geopolitical issues in commodities markets. Here, we show how to get an explicit option pricing formula for a continuous-time GARCH asset price model using change of time.


One of the aims of this entry is to get an explicit option pricing formula for a mean-reverting asset using change of time method.

# Swaps by Change of Time Method: Heston Model

One of the applications of change of time method is to value variance, volatility, covariance, and correlation swaps for Heston's (1993) model. Change of time method for pricing of different types of swaps for Heston's model and pricing of options has been considered in Swishchuk (2004, 2007, 2008c). Applications of change of time method to Lévy-based stochastic volatility models, interest rates, and energy derivatives have been considered in Swishchuk (2008a, 2008b, 2010a, 2010b).

In this section, we apply the change of time method to get the Black-Scholes formula and to obtain an explicit option pricing formula for a mean-reverting asset.

# Change of Time Method

In this section we give a brief description of the change of time method for the martingales and stochastic differential equations. Throughout this entry we consider  $(\Omega, \mathcal{F}, \mathcal{F}_t, P)$  to be a probability space with a right continuous filtration  $(\mathcal{F}_t)_{t \geq 0}$

# Change of Time Method in Martingale Setting

In this section, we describe the change of time method for a martingale  $M(t)\in \mathcal{M}_2^{c,loc}$  the space of local square integrable continuous martingales.13

If  $M(t)\in \mathcal{M}_2^{c,loc}$ $\lim_{t\to +\infty} < M > (t) = +\infty$  a.s.,  $\tau_t\coloneqq \inf \{u: <   M > (u) > t\}$  and  $\tilde{\mathcal{F}}_t\coloneqq \mathcal{F}_{\tau_t}$  then the following process with changed time

$$
W (t) := M (\tau_ {t})
$$ is an  $\tilde{\mathcal{F}}_t$ -Brownian motion (or standard Wiener process).


Consequently, we can express a local martingale  $M(t)$  using an  $\tilde{\mathcal{F}}_t$ -Brownian motion  $W(t)$  and an  $\tilde{\mathcal{F}}_t$ -stopping time. (since  $\{<M > (t) \leq u\} = \{\tau_u \geq t\} \in \mathcal{F}_{\tau u} = \tilde{F}_u$ )

$$
M (t) = W (<   M > (t))
$$

# Change of Time Method in a Stochastic Differential Equation Setting

We consider the following generalization of the previous results to an SDE of the following form (without a drift)

$$ d X (t) = \alpha (t, X (t)) d W (t)
$$ where  $W(t)$  is a Brownian motion and  $\alpha (t,X)$  is a continuous and measurable by  $t$  and  $X$  function on  $[0, + \infty)\times R$ .


The reason we consider this equation is if we solve the equation, then we can solve a more general equation with a drift  $\beta (t,X)$  using the Girsanov transformation. The following result is used frequently to find a solution of an SDE using change of time method. The following theorem is due to Ikeda and Watanabe (1981).

Let  $\tilde{W}(t)$  be a one-dimensional  $\mathcal{F}_t$ -Wiener process with  $\tilde{W}(0) = 0$ , given on a probability space  $(\Omega, \mathcal{F}, (\mathcal{F}_t)_{t > 0}, P)$  and let  $X(0)$  be an  $\mathcal{F}_0$ -adopted random variable. Define a continuous process  $V = V(t)$  by

$$
V (t) = X (0) + \tilde {W} (t)
$$

Let  $\phi_t$  be the change of time process:

$$
\phi_ {t} = \int_ {0} ^ {t} \alpha^ {- 2} (\phi_ {s}, X (0) + \tilde {W} (s)) d s
$$

If

$$
X (t) := V (\phi_ {t} ^ {- 1}) = X (0) + \tilde {W} (\phi_ {t} ^ {- 1})
$$ and  $\tilde{\mathcal{F}}_t\coloneqq \mathcal{F}_{\phi_t^{-1}}$  , then there exists  $\tilde{\mathcal{F}}_t$  -adopted Wiener process  $W = W(t)$  such that  $(X(t),W(t))$  is a solution of the initial equation on probability space  $(\Omega ,\mathcal{F},\tilde{\mathcal{F}}_t,P)$  .16


We note that the solution of the following SDE

$$ d X (t) = a (X (t)) d W (t)
$$ may be presented in the following form (which follows from the previous theorem)


$$
X (t) = X (0) + \tilde {W} \left(\phi_ {t} ^ {- 1}\right)
$$ where  $a(X)$  is a continuous measurable function,  $\tilde{W} (t)$  is an ne-dimensional  $\mathcal{F}_t$  -Wiener process with  $\tilde{W} (0) = 0$  given on a probability space  $(\Omega ,\mathcal{F},(\mathcal{F}_t)_{t\geq 0},P)$  and  $X(0)$  is an  $\mathcal{F}_0$  -adopted random variable. In this case


$$
\phi_ {t} = \int_ {0} ^ {t} a ^ {- 2} (X (0) + \tilde {W} (s)) d s
$$ and


$$
\phi_ {t} ^ {- 1} = \int_ {0} ^ {t} a ^ {2} (X (0) + \tilde {W} (\phi_ {s} ^ {- 1}) d s
$$

# Examples: Solutions of Some SDEs

1. Solution for Ornstein-Uhlenbeck (OU) Process Using Change of Time.

Let  $S_{t}$  satisfy the following SDE:

$$ d S _ {t} = - \alpha S _ {t} d t + \sigma d W _ {t}
$$

Then  $S_{t}$  may be presented in the following form using the change of time method:

$$
S _ {t} = e ^ {- \alpha t} [ S _ {0} + \tilde {W} (\phi_ {t} ^ {- 1}) ]
$$ where  $\phi_t^{-1}$  satisfies


$$
\phi_ {t} ^ {- 1} = \sigma^ {2} \int_ {0} ^ {t} (e ^ {\alpha s} (S _ {0} + \tilde {W} (\phi_ {s} ^ {- 1}))) ^ {2} d s
$$

2. Solution for Vasicek Process Using Change of Time.

Let  $S_{t}$  satisfy the following SDE:

$$ d S _ {t} = \alpha (b - S _ {t}) d t + \sigma d W _ {t}
$$

Then  $S_{t}$  may be presented in the following form using the change of time method

$$
S _ {t} = e ^ {- \alpha t} [ \mathrm {S} _ {0} - b + \tilde {W} (\phi_ {t} ^ {- 1}) ]
$$ where  $\phi_t^{-1}$  satisfies


$$
\phi_ {t} ^ {- 1} = \sigma^ {2} \int_ {0} ^ {t} (e ^ {\alpha s} (S _ {0} - b + \tilde {W} (\phi_ {s} ^ {- 1})) + b) ^ {2} d s
$$

The above theorem may also be applied to solve the Cox-Ingersoll-Ross (1985) equation, mean-reversion equation for commodity price (Pilipovic, 1997) and geometric Brownian motion equation (Black-Scholes, 1973).

# Black-Scholes Formula by Change of Time Method

Let  $(\Omega, \mathcal{F}, \mathcal{F}_t, P)$  be a probability space with a sample space  $\Omega$ ,  $\sigma$ -algebra of Borel sets  $\mathcal{F}$  and probability  $P$ . The filtration  $\mathcal{F}_t, t \in [0, T]$  is the natural filtration of a standard Brownian motion  $W_t, t \in [0, T]$ , and  $\mathcal{F}_T = \mathcal{F}$ .

# Black-Scholes Formula

The well-known Black-Scholes (1973) formula states if we have  $(B, S)$ -security market consisting of riskless asset  $B(t)$  with interest rate  $r$  as a constant

$$ d B (t) = r B (t) d t, \quad B (0) > 0, \quad r > 0 \tag {1}
$$ and risky asset (stock)  $S(t)$


$$ d S (t) = \mu S (t) d t + \sigma S (t) d W (t), \quad S (0) > 0 \tag {2}
$$ where  $\mu \in R$  is an appreciation rate,  $\sigma > 0$  is a volatility, then the option price formula for European call option with pay-off function  $f(T) = \max(S(T) - K, 0)$  ( $K > 0$  is a strike price) has the following look


$$
C (T) = S (0) \Phi \left(y _ {+}\right) - e ^ {- r T} K \Phi \left(y _ {-}\right) \tag {3}
$$ where


$$ y \pm := \frac {\ln \left(\frac {S (0)}{K}\right) + \left(r \pm \frac {\sigma^ {2}}{2}\right) T}{\sigma \sqrt {T}} \tag {4}
$$ and


$$
\Phi (y) := \frac {1}{\sqrt {2 \pi}} \int_ {- \infty} ^ {y} e ^ {- \frac {x ^ {2}}{2}} d x \tag {5}
$$

# Solution of SDE for Geometric Brownian Motion using Change of Time Method

The solution of equation (2) has the following look:

$$
S (t) = e ^ {\mu t} \left(S (0) + \tilde {W} \left(\phi_ {s} ^ {- 1}\right)\right) \tag {6}
$$ where  $\tilde{W}(t)$  is a one-dimensional Wiener process,


$$
\phi_ {t} ^ {- 1} = \sigma^ {2} \int_ {0} ^ {t} [ S (0) + \tilde {W} (\phi_ {s} ^ {- 1}) ] ^ {2} d s
$$ and


$$
\phi_ {t} = \sigma^ {- 2} \int_ {0} ^ {t} [ S (0) + \tilde {W} (s) ] ^ {- 2} d s
$$

# Black-Scholes Formula by Change of Time Method

In a risk-neutral world the dynamic of stock price  $S(t)$  has the following look:

$$ d S (t) = r S (t) d t + \sigma S (t) d W ^ {*} (t) \tag {7}
$$ where


$$
W ^ {*} (t) := W (t) + \frac {\mu - r}{\sigma} \tag {8}
$$

From (6) we have the solution of equation (7)

$$
S (t) = e ^ {r t} [ S (0) + \tilde {W} ^ {*} \left(\phi_ {t} ^ {- 1}\right) ] \tag {9}
$$ where


$$
\tilde {W} ^ {*} \left(\phi_ {t} ^ {- 1}\right) = S (0) \left(e ^ {\sigma W ^ {*} (t) - \frac {\sigma^ {2} t}{2}} - 1\right) \tag {10}
$$ and  $W^{*}(t)$  is defined in (8).


Let  $E_P^*$  be an expectation under risk-neutral measure (or martingale measure)  $P^*$  (i.e., process  $e^{-rT}S(t)$  is a martingale under the measure  $P^*$ ).

Then the option pricing formula for European call option with payoff function

$$ f (T) = \max  [ S (T) - K, 0 ]
$$ has the following look


$$
\begin{array}{l} C (T) = e ^ {- r T} E _ {P ^ {*}} [ f (T) ] \\ = e ^ {- r T} E _ {P *} [ \max  (S (T) - K, 0) ] \tag {11} \\ \end{array}
$$

Using change of time method we have the following representation for the process  $S(t)$  (see (9))

$$
S (t) = e ^ {r t} [ S (0) + \tilde {W} ^ {*} (\phi_ {t} ^ {- 1}) ]
$$ where  $\tilde{W}^{*}(\phi_{t}^{-1})$  is defined in (10). From (7)-(11), after substitution  $\tilde{W}^{*}(\phi_{t}^{-1})$  into (9) and  $S(T)$  into (11), it follows that


$$
\begin{array}{l} C (T) = e ^ {- r T} E _ {P *} [ \max  (S (T) - K, 0) ] \\ = e ^ {- r T} \frac {1}{\sqrt {2 \pi}} \int_ {- \infty} ^ {+ \infty} \max  [ S (0) e ^ {\sigma u \sqrt {T} + (r - \frac {\sigma^ {2}}{2}) T} \\ - K, 0 ] e ^ {- \frac {u ^ {2}}{2}} d u \tag {12} \\ \end{array}
$$

Let  $y_0$  be a solution of the following equation

$$
S (0) e ^ {\sigma y \sqrt {T} + (r - \sigma^ {2} / 2) T} = K
$$ namely,


$$ y _ {0} = \frac {\ln \left(\frac {K}{S (0)}\right) - (r - \sigma^ {2} / 2) T}{\sigma \sqrt {T}}.
$$

Then (12) may be presented in the following form

$$
\begin{array}{l} C (T) = e ^ {- r T} \frac {1}{\sqrt {2 \pi}} \int_ {y 0} ^ {+ \infty} (S (0) e ^ {\sigma u \sqrt {T} + (r - \frac {\sigma^ {2}}{2}) T} - K) \\ \times e ^ {- \frac {u ^ {2}}{2}} d u \tag {13} \\ \end{array}
$$

Finally, straightforward calculation of the integral in the right-hand side of (13) gives us the

Black-Scholes result:20

$$
\begin{array}{l} C (T) = \frac {1}{\sqrt {2 \pi}} \int_ {y _ {0}} ^ {+ \infty} S (0) e ^ {\sigma u \sqrt {T} - \frac {\sigma^ {2} T}{2}} e ^ {- u ^ {2} / 2} d u \\ - K e ^ {- r T} \left[ 1 - \Phi (y _ {0}) \right] \\ = \frac {S (0)}{\sqrt {2 \pi}} \int_ {y _ {0} - \sigma \sqrt {T}} ^ {+ \infty} e ^ {- u ^ {2} / 2} d u - K e ^ {- r T} [ 1 - \Phi (y _ {0}) ] \\ = S (0) \left[ 1 - \Phi \left(y _ {0} - \sigma \sqrt {T}\right) \right] - K e ^ {- r T} \left[ 1 - \Phi \left(y _ {0}\right) \right] \\ = S (0) \Phi \left(y _ {+}\right) - K e ^ {- r T} \Phi \left(y _ {-}\right) \tag {14} \\ \end{array}
$$ where  $y_{\pm}$  and  $\Phi (y)$  are defined in (4) and (5).


# Explicit Option Pricing Formula for Mean-Reverting Asset Model (MRAM) by Change of Time Method

In this section, we consider a risky asset  $S_{t}$  following the mean-reverting stochastic process given by the following stochastic differential equation

$$ d S _ {t} = a \left(L - S _ {t}\right) d t + \sigma S _ {t} d W _ {t} \tag {15}
$$ where  $W_{t}$  is an  $\mathcal{F}_t$ -measurable one-dimensional standard Wiener process,  $\sigma > 0$  is the volatility, constant  $L$  is called the long-term mean of the process, to which it reverts over time, and  $a > 0$  measures the "strength" of mean reversion. We find explicit solution of the equation (15) using the change of time method, give some properties of the mean-reverting asset  $S_{t}$ , and present an explicit option pricing formula for the European call option for this mean-reverting asset model of commodity price.


# Explicit Solution of SDE for MRAM

Equation

$$ d S _ {t} = a (L - S _ {t}) d t + \sigma S _ {t} d W _ {t}
$$ in (15) has the following solution


$$
S _ {t} = e ^ {- a t} [ S _ {0} - L + \tilde {W} (\phi_ {t} ^ {- 1}) ] + L
$$ where  $\tilde{W} (\phi_t^{-1})$  is a one-dimensional Wiener process and


$$
\phi_ {t} ^ {- 1} = \sigma^ {2} \int_ {0} ^ {t} (S _ {0} - L + \tilde {W} (\phi_ {t} ^ {- 1}) + e ^ {a s} L) ^ {2} d s
$$ which follows from the substitution


$$
V _ {t} := e ^ {a t} (S _ {t} - L)
$$ and theorem above.


# Explicit Option Pricing Formula for European Call Option under Risk-Neutral Measure

In this section, we are going to obtain an explicit option pricing formula for a European call option under risk-neutral measure  $P^{*}$  using the change of time method.

# Mean-Reverting Risk-Neutral Asset Model

Consider the model given by (15)

$$ d S _ {t} = a (L - S _ {t}) d t + \sigma S _ {t} d W _ {t}
$$

We want to find a probability  $P^{*}$  equivalent to  $P$ , under which the process  $e^{-rt}S_{t}$  is a martingale, where  $r > 0$  is a constant interest rate.

In a risk-neutral world the model in (15) takes the following look:

$$ d S _ {t} = a ^ {*} \left(L ^ {*} - S _ {t}\right) d t + \sigma S _ {t} d W _ {t} ^ {*} \tag {16}
$$ where


$$ a ^ {*} := a + \lambda \sigma , \quad L ^ {*} := \frac {a L}{a + \lambda \sigma} \tag {17}
$$

$$
W _ {t} ^ {*} = W _ {t} + \lambda \int_ {0} ^ {t} S (u) d u \tag {18}
$$ and  $\lambda \in R$  is a market price of risk, which follows from the Girsanov theorem.[21]


Now, we are going to apply our method of changing of time to the model (16) to obtain the explicit option pricing formula.

# Explicit Solution for Mean-Reverting Risk-Neutral Asset Model

Applying the above results to our model (16) we obtain the explicit solution (19) for our risk-neutral model (16). The explicit solution for the risk-neutral model given by (16) has the following look

$$
S _ {t} = e ^ {- a ^ {*} t} \left[ S _ {0} - L ^ {*} + \tilde {W} ^ {*} \left(\left(\phi_ {t} ^ {*}\right) ^ {- 1}\right) \right] + L \tag {19}
$$ where  $\tilde{W}^{*}(t)$  is an  $\mathcal{F}_t$ -measurable standard one-dimensional Wiener process in (18) under measure  $P^{*}$ ,  $(\phi_t^*)^{-1}$  is an inverse function to  $\phi_t^*$ :


$$
\phi_ {t} ^ {*} = \sigma^ {- 2} \int_ {0} ^ {t} \left(S _ {0} - L ^ {*} + \tilde {W} ^ {*} (s) + e ^ {a ^ {*} \phi_ {s} ^ {*}} L ^ {*}\right) ^ {- 2} d s \tag {20}
$$

We note that

$$
\left(\phi^ {*}\right) _ {t} ^ {- 1} = \sigma^ {2} \int_ {0} ^ {t} \left(S _ {0} - L ^ {*} + \tilde {W} ^ {*} \left(\left(\phi_ {t} ^ {*}\right) ^ {- 1}\right) + e ^ {a ^ {*} s} L ^ {*}\right) ^ {2} d s
$$ where  $a^*$  and  $L^{*}$  are defined in (17).


# Explicit Option Pricing Formula for European Call Option under Risk-Neutral Measure

The payoff function  $f_{T}$  for the European call option equals

$$ f _ {T} = \left(S _ {T} - K\right) + := \max  \left(S _ {T} - K, 0\right)
$$ where  $S_{T}$  is an asset price,  $T$  is an expiration time (maturity), and  $K$  is a strike price.


In this way (see (19)),

$$
\begin{array}{l} f _ {T} = [ e ^ {- a T} (S _ {0} - L + \bar {W} ^ {*} (\phi_ {T} ^ {- 1})) + L - K ] ^ {+} \\ = [ S (0) e ^ {- a ^ {*} T} e ^ {\sigma W ^ {*} (T) - \frac {\sigma^ {2} T}{2}} \\ + a ^ {*} L ^ {*} e ^ {- a ^ {*} T} e ^ {\sigma W ^ {*} (T) - \frac {\sigma^ {2} T}{2}} \int_ {0} ^ {T} e ^ {a ^ {*} s} e ^ {- \sigma W ^ {*} (s) \frac {\sigma^ {2} s}{2}} \\ \times d s - K ] ^ {+} \tag {21} \\ \end{array}
$$

The explicit option pricing formula for the European call option under a risk-neutral measure for mean-reverting asset  $S(t)$  in (21) has the following look:

$$
\begin{array}{l} C _ {T} ^ {*} = e ^ {- (r + a ^ {*}) T} S (0) \Phi (y _ {+}) - e ^ {- r T} K \Phi (y _ {-}) \\ + L ^ {*} e ^ {- (r + a ^ {*}) T} \left[ \left(e ^ {a ^ {*} T} - 1\right) - \int_ {0} ^ {y 0} z F _ {T} ^ {*} (d z) \right] \tag {22} \\ \end{array}
$$ where  $y_0$  is the solution of the following equation


$$
\begin{array}{l} y _ {0} = \frac {\ln \left(\frac {K}{S (0)}\right) + \left(\frac {\sigma^ {2}}{2} + a ^ {*}\right) T}{\sigma \sqrt {T}} \\ - \frac {\ln \left(1 + \frac {a ^ {*} L ^ {*}}{S (0)} \int_ {0} ^ {T} e ^ {a ^ {*} s} e ^ {- \sigma y _ {0} \sqrt {s} + \frac {\sigma^ {2} s}{2}} d s\right)}{\sigma \sqrt {T}} \tag {23} \\ \end{array}
$$

$$ y ^ {+} := \sigma \sqrt {T} - y _ {0} \quad \text {a n d} \quad y _ {-} := - y _ {0},
$$

$$ a ^ {*} := a + \lambda \sigma , \quad L ^ {*} := \frac {a L}{a + \lambda \sigma} \tag {24}
$$

$\lambda$  is the market price of risk and  $F_{T}^{*}(dz)$  is the distribution with characteristic function

$$
\phi_ {\lambda} ^ {*} (T) = e ^ {i \lambda (e ^ {a ^ {*} T} - 1)}, \quad i := \sqrt {- 1}, \quad \lambda \in C
$$

This result can be obtained from the following expression

$$
\begin{array}{l} C _ {T} := e ^ {- r T} E _ {P *} f _ {T} \\ = e ^ {- r T} E _ {P ^ {*}} \left[ e ^ {- a ^ {*} T} \left(S _ {0} - L + \tilde {W} ^ {*} \left(\phi_ {T} ^ {- 1}\right)\right) + L ^ {*} - K \right] ^ {+} \\ = \frac {1}{\sqrt {2 \pi}} e ^ {- r T} \int_ {- \infty} ^ {+ \infty} \max  [ S (0) e ^ {- a ^ {*} T} e ^ {\sigma y \sqrt {T} - \frac {\sigma^ {2} T}{2}} \\ + a L e ^ {- a ^ {*} T} e ^ {\sigma y \sqrt {T} - \frac {\sigma^ {2} T}{2}} \int_ {0} ^ {T} e ^ {a ^ {*} s} e ^ {- \sigma y \sqrt {s} + \frac {\sigma^ {2} s}{2}} d s \\ - K, 0 ] e ^ {- \frac {y ^ {2}}{2}} d y \\ \end{array}
$$ and above-mentioned results.


# Connection with Black-Scholes Result:  $L^{*} = 0$  and  $a^{*} = -r$  and Black-Scholes formula follows!

If  $L^{*} = 0$  and  $a^* = -r$  then we obtain from (22)

$$
C _ {T} = S (0) \Phi \left(y _ {+}\right) - e ^ {- r T} K \Phi \left(y _ {-}\right) \tag {25}
$$ where


$$ y _ {+} := \sigma \sqrt {T} - y _ {0} \quad \text {a n d} \quad y _ {-} := - y _ {0} \tag {26}
$$ and  $y_{0}$  is the solution of the following equation (see (23))


$$
S (0) e ^ {- r T} e ^ {\sigma y _ {0} \sqrt {T} - \frac {\sigma^ {2} T}{2}} = K
$$ or


$$ y _ {0} = \frac {\operatorname {I n} \left(\frac {K}{S (0)}\right) + \left(\frac {\sigma^ {2}}{2} - r\right) T}{\sigma \sqrt {T}} \tag {27}
$$ and


$$
\Phi (x) = \frac {1}{\sqrt {2 \pi}} \int_ {- \infty} ^ {x} e ^ {- \frac {y ^ {2}}{2}} d y
$$

But (25)-(27) is exactly the well-known Black-Scholes result!

In this way, we can see that the option pricing formula in (22) for the mean-reverting asset  $S(t)$  consists of a Black-Scholes part and an additional part due to mean reversion.

The results of this section may be also used to model and price variance and volatility swaps in energy and commodity markets for assets with stochastic volatility that are described by a continuous-time mean-reverting GARCH model; see Swishchuk (2010a).


# KEY POINTS

- The main idea of the change of time method is to change time from  $t$  to a nonnegative process  $T(t)$  with nondecreasing sample paths (e.g., subordinator).
- Many Lévy processes may be written as time-changed Brownian motion.
- Lévy processes can also be used as a time change for other Lévy processes (subordinators).
- Change of time can be used to introduce stochastic volatility or solve many stochastic differential equations.
- Using change of time, we can get an option pricing formula for an asset following geometric Brownian motion such as the Black-Scholes formula.
- Using change of time, we can get an explicit option pricing formula for an asset following the mean-reverting process, such as continuous-time GARCH process.

# NOTES

1. Swishchuk (2007) and Swishchuk (2008c).
2. Madan et al. (1990).
3. Barndorff-Nielsen and Shiryaev (2010) state the main ideas and results of the stochastic theory of change of time and change of measure.
4. Ikeda and Watanabe (1981).
5. Ikeda and Watanabe (1981), Chapter IV, Section 4, p. 176.
6. Applebaum (2004), Barndorf-Nielsen et al. (2001), Barndorf-Nielsen et al. (2003), Bertoin (1996), Cont et al. (2004), and Schoutens (2003).
7. Cont et al. (2004) and Schoutens (2003).
8. Cont et al. (2004).
9. Geman et al. (2001).
10. Carr et al. (2003).
11. Wilmott et al. (1995) and Elliott et al. (1999).
12. Wilmott (2000).

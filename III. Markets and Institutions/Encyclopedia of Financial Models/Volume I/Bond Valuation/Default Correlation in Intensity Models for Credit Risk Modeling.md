
# Default Correlation in Intensity Models for Credit Risk Modeling

ABEL ELIZALDE, PhD

Credit Derivatives Strategy, J.P. Morgan

Abstract: The two primary types of credit risk models that seek to statistically describe default processes are the reduced-form model and the structural model. The most extended types of reduced-form models are the intensity models. There are three main approaches to incorporate credit risk correlation among firms within the framework of reduced models. The first approach, the conditionally independent defaults models, introduces credit risk dependence among firms through the dependence of the firms' default intensity processes on a common set of state variables. Contagion models extend the conditionally independent defaults approach to account for default clustering (periods in which the firms' credit risk is increased and in which the majority of the defaults take place). Finally, default dependencies can also be accounted for using copula functions. The copula approach takes as given the marginal default probabilities of the different firms and plugs them into a copula function, which provides the model with the default dependence structure.

There are two primary types of models in the literature that attempt to describe default processes for debt obligations and other defaultable financial instruments, usually referred to as structural and reduced-form (or intensity) models.

Structural models use the evolution of firms' structural variables, such as asset and debt values, to determine the time of default. Merton's model (1974) was the first modern model of default and is considered the first structural model. In Merton's model, a firm defaults if, at the time of servicing the debt, its assets are below its outstanding debt. A second approach within the structural framework was introduced by Black and Cox (1976). In this approach defaults occur as soon as a firm's asset value falls below a certain threshold. In con trast to the Merton approach, default can occur at any time.


Reduced-form models do not consider the relation between default and firm value in an explicit manner. Intensity models represent the most extended type of reduced-form models. In contrast to structural models, the time of default in intensity models is not determined via the value of the firm, but it is the first jump of an exogenously given jump process. The parameters governing the default hazard rate are inferred from market data.

Structural default models provide a link between the credit quality of a firm and the firm's economic and financial conditions. Thus, defaults are endogenously generated within the model instead of exogenously given as in the reduced approach. Another difference between the two approaches refers to the treatment of recovery rates: Whereas reduced models exogenously specify recovery rates, in structural models the value of the firm's assets and liabilities at default will determine recovery rates.


This entry focuses on the intensity approach, analyzing various models and reviewing the three main approaches to incorporate credit risk correlation among firms within the framework of reduced-form models.

# PRELIMINARIES

In this section, we fix the information and probabilistic framework we need to develop the theory of reduced-form models. After presenting the basic features of reduced models and the motivation of the default intensity through Poisson processes, we apply these concepts to the specification of single firm default probabilities and to the valuation formulas for defaultable and default-free bonds. Finally, we analyze the different treatments the recovery rate has received in the literature.

# Information Framework

For the purposes of this investigation, we shall always assume that economic uncertainty is modeled with the specification of a filtered probability space  $\Pi = (\Omega, \mathcal{F}, (\mathcal{F}_t), \mathbf{P})$ , where  $\Omega$  is the set of possible states of the economic world, and  $\mathbf{P}$  is a probability measure. The filtration  $(\mathcal{F}_t)$  represents the flow of information over time.  $\mathcal{F} = \sigma \left( \bigcup_{t \geq 0} \mathcal{F}_t \right)$  is a  $\sigma$ -algebra, a family of events at which we can assign probabilities in a consistent way. Before continuing with the exposition, let us make some remarks about the choice of the probability space.

First, we assume, as a starting point, that we can fix a unique physical or real probability measure  $\bar{\mathbf{P}}$ , and we consider the filtered probability space  $\tilde{\Pi} = \left(\Omega, \mathcal{F}, (\mathcal{F}_t), \bar{\mathbf{P}}\right)$ . The choice of the probability space will vary in some respects, according to the particular problems under consideration. In the rest of the entry, as we indicated above, we shall regularly make use of a probability measure  $\mathbf{P}$ , that will be assumed to be equivalent to  $\bar{\mathbf{P}}$ . The choice of  $\mathbf{P}$  then varies according to the context.


The model for the default-free term structure of interest rates is given by a non-negative, bounded and  $(\mathcal{F}_t)$ -adapted default-free short-rate process  $r_t$ . The money market account value process is given by:

$$
\beta_ {t} = \exp \left(\int_ {0} ^ {t} r _ {s} d s\right) \tag {1}
$$

For our purposes we shall use the class of equivalent probability measures  $\mathbf{P}$ , where nondividend-paying (NDP) asset processes discounted by the money market account are  $((\mathcal{F}_t), \mathbf{P})$ -martingales, that is, where  $\mathbf{P}$  is an equivalent probability measure that uses the money market account as numeraire. Such an equivalent measure is called a risk neutral measure, because under this probability measure the investors are indifferent between investing in the money market account or in any other asset. There are different scenarios under which the transition from the physical to the equivalent (or risk neutral) probability measure can usually be accomplished.

We present a mathematical framework that will embody essentially all models used throughout this entry. Nevertheless, more general frameworks can be considered. On our probability space  $\Pi$  we assume that there exists an  $R^J$ -valued Markov process  $X_{t} = (X_{1,t},\dots,X_{J,t})'$  or background process, that represents  $J$  economy-wide variables, either state (observable) or latent (not observable). There also exist  $I$  counting processes,  $N_{i,t}$ ,  $i = 1,\ldots,I$ , initialized at 0, that represent the default processes of the  $I$  firms in the economy such that the default of the  $i$ th firm occurs when  $N_{i,t}$  jumps from 0 to 1.  $(\mathcal{G}_{X,t})$  and  $(\mathcal{G}_{i,t})$ , where  $\mathcal{G}_{X,t} = \sigma(X_s, 0 \leq s \leq t)$  and  $\mathcal{G}_{i,t} = \sigma(N_{i,t}, 0 \leq s \leq t)$ , represent the filtrations generated by  $X_{t}$  and  $N_{i,t}$  respectively. The filtration  $(\mathcal{G}_{X,t})$  represents information about the development of general market variables and all the background information, whereas  $(\mathcal{G}_{i,t})$  only contains information about the default status of firm  $i$ .


The filtration  $(\mathcal{F}_t)$  contains the information generated by both the information contained in the state variables and the default processes:

$$
\left(\mathcal {F} _ {t}\right) = \left(\mathcal {G} _ {X, t}\right) \vee \left(\mathcal {G} _ {1, t}\right) \vee \dots \vee \left(\mathcal {G} _ {I, t}\right) \tag {2}
$$

We also define the filtrations  $(\mathcal{F}_{i,t}), i = 1, \dots, I,$  as

$$
\left(\mathcal {F} _ {i, t}\right) = \left(\mathcal {G} _ {X, t}\right) \vee \left(\mathcal {G} _ {i, t}\right) \tag {3}
$$ which only accumulate the information generated by the state variables and the default status of each firm.


# Poisson and Cox Processes

Poisson processes provide a convenient way of modeling default arrival risk in intensity-based default risk models. In contrast to structural models, the time of default in intensity models is not determined via the value of the firm, but instead is taken to be the first jump of a point process (for example, a Poisson process). The parameters governing the default intensity (associated with the probability measure  $\mathbf{P}$ ) are inferred from market data.

First, we recall the formal definition of Poisson and Cox processes. Consider an increasing sequence of stopping times  $(\tau_h < \tau_{h + 1})$ . We define a counting process associated with that sequence as a stochastic process  $N_{t}$  given by

$$
N _ {t} = \sum_ {h} \mathbf {1} _ {\left\{\tau_ {h} \leq t \right\}} \tag {4}
$$

A (homogeneous) Poisson process with intensity  $\lambda > 0$  is a counting process whose increments are independent and satisfy

$$
\mathbf {P} \left[ N _ {t} - N _ {s} = n \right] = \frac {1}{n !} (t - s) ^ {n} \lambda^ {n} \exp (- (t - s) \lambda) \tag {5}
$$ for  $0 \leq s \leq t$ , that is, the increments  $N_{t} - N_{s}$  are independent and have a Poisson distribution with parameter  $\lambda (t - s)$  for  $s \leq t$ .


So far, we have considered only the case of homogeneous Poisson processes where the default intensity is a constant parameter  $\lambda$ , but we can easily generalize it allowing the default intensity to be time dependent  $\lambda_{t} = \lambda(t)$  in which case we would talk about unhomogeneous Poisson processes.

If we consider stochastic default intensities, the Poisson process would be called a Cox process. For example, we can assume  $\lambda_{t}$  follows a diffusion process of the form

$$ d \lambda_ {t} = \mu (t, \lambda_ {t}) d t + \sigma (t, \lambda_ {t}) d W _ {t} \tag {6}
$$ where  $W_{t}$  is a Brownian motion. We can also assume that the intensity is a function of a set of state variables (economic variables, interest rates, currencies, etc.)  $X_{t}$ , that is,  $\lambda_{t} = \lambda(t,X_{t})$ .


The fundamental idea of the intensity-based framework is to model the default time as the first jump of a Poisson process. Thus, we define the default time to be

$$
\tau = \inf  \left\{t \in R ^ {+} \mid N _ {t} > 0 \right\} \tag {7}
$$

The survival probabilities in this setup are given by

$$
\mathbf {P} [ N _ {t} = 0 ] = \mathbf {P} [ \tau > t ] = E \left[ \exp \left(- \int_ {0} ^ {t} \lambda_ {s} d s\right) \right] \tag {8}
$$

The intensity, or hazard rate, is the conditional default arrival rate, given no default:

$$
\lim  _ {h \rightarrow 0} \frac {\mathbf {P} [ \tau \in (t , t + h ] \mid \tau > t ]}{h} = \frac {f (t)}{1 - F (t)} = \lambda_ {t} \tag {9}
$$ where


$$
F (t) = \mathbf {P} [ \tau \leq t ] \tag {10}
$$ and  $f(t)$  is the density of  $F$ .


The functions  $p(t,T) = \mathbf{P}[\tau \leq T\mid \tau >t]$  and  $s(t,T) = \mathbf{P}[\tau >T\mid \tau >t]$  are the risk neutral default and survival probabilities from time  $t$  to time  $T$  respectively, where  $0\leq t\leq T$  .Note that  $s(t,T) = 1 - p(t,T)$ , and if we fix  $t = 0$ , then  $p(0,T) = F(T)$ .


The hazard or intensity rate  $\lambda_{t}$  is the central element of reduced form models, and represents the instantaneous default probability, that is, the (very) short-term default risk.

# Pricing Building Blocks

This section reviews the pricing of risk-free and defaultable zero-coupon bonds, which together with the default/survival probabilities constitute the building blocks for pricing credit derivatives and defaultable instruments.

We assume a perfect and arbitrage-free capital market, where the money market account value process  $\beta_{t}$  is given by (1). Since our probability measure  $\mathbf{P}$  takes as numeraire the money market account process, the value of any NDP-asset discounted by the money market account follows an  $(\mathcal{F}_t),\mathbf{P})$  -martingale. Using the previous property, the price at time  $t$  of a default-free zero coupon bond with maturity  $T$  and face value of 1 unit is given by

$$
\begin{array}{l} P (t, T) = \beta_ {t} E \left[ \frac {P (T , T)}{\beta_ {T}} \mid \mathcal {F} _ {t} \right] \\ = E \left[ \exp \left(- \int_ {t} ^ {T} r _ {s} d s\right) \mid \mathcal {F} _ {t} \right] \tag {11} \\ \end{array}
$$

From the previous section we know that the survival probability  $s(t,T)$  in the risk-neutral measure can be expressed as

$$
\begin{array}{l} s (t, T) = \mathbf {P} [ \tau > T \mid \tau > t ] \\ = E \left[ \exp \left(- \int_ {t} ^ {T} \lambda_ {s} d s\right) \mid \mathcal {F} _ {t} \right] \tag {12} \\ \end{array}
$$

Consider a defaultable zero coupon bond issued by firm  $i$  with maturity  $T$  and face value of  $M$  units that, in case of default at time  $\tau < T$ , generates a recovery payment of  $R_{\tau}$  units.  $R_{t}$  is an  $(\mathcal{F}_t)$ -adapted stochastic process, with  $R_{t} = 0$  for all  $t > T$ . The price of the defaultable coupon bond at time  $t$ ,  $(0 \leq t \leq T)$ , is given by


$$
\begin{array}{l} Q (t, T) = \beta_ {t} E \left[ \frac {Q (T , T)}{\beta_ {T}} \mid \mathcal {F} _ {t} \right] \\ = \beta_ {t} E \left[ \frac {M \mathbf {1} _ {\{\tau > T \}}}{\beta_ {T}} \mid \mathcal {F} _ {t} \right] + \beta_ {t} E \left[ \frac {R _ {\tau}}{\beta_ {\tau}} \mid \mathcal {F} _ {t} \right] \tag {13} \\ \end{array}
$$ which can be expressed as


$$
\begin{array}{l} Q (t, T) = E \left[ \exp \left(- \int_ {t} ^ {T} \left(r _ {s} + \lambda_ {s}\right) d s\right) M \mid \mathcal {F} _ {t} \right] + \\ E \left[ \int_ {t} ^ {T} R _ {s} \lambda_ {s} \exp \left(- \int_ {t} ^ {s} \left(r _ {u} + \lambda_ {u}\right) d u\right) d s \mid \mathcal {F} _ {t} \right] \tag {14} \\ \end{array}
$$ assuming  $\tau > t$  and all the technical conditions that ensure that the expectations are finite. This expression has to be evaluated considering the treatment of the recovery payment and any other assumptions about the correlations between interest rates, intensities, and recoveries. The first term represents the expected discounted value of the payment of  $M$  units at time  $T$ , taking into account the possibility that the firm may default and the  $M$  units not received, through the inclusion of the hazard or intensity rate (instantaneous probability of default) in the discount rate. The second term represents the expected discounted value of the recovery payment using the risk-free rate plus the intensity rate as discount factor. The first integral in the second term of the previous expression, from  $t$  to  $T$ , makes reference to the fact that default can happen at any time between  $t$  and  $T$ . Thus, for each  $s \in (t, T]$ , we discount the value of the recovery rate  $R_s$  times the instantaneous probability of default at time  $s$  given that no default has occurred before, which is given by the intensity  $\lambda_s$ .


# Recovery Rates

Recovery rates refer to how we model, after a firm defaults, the value that a debt instrument has left. In terms of the recovery rate parametrization, three main specifications have been adopted in the literature. The first one considers that the recovery rate is an exogenous fraction of the face value of the defaultable bond (recovery of face value, RFV).10 Jarrow and Turnbull (1997) consider the recovery rate to be an exogenous fraction of the value of an equivalent default-free bond (recovery of treasury, RT). Finally, Duffie and Singleton (1999a) fix a recovery rate equal to an exogenous fraction of the market value of the bond just before default (recovery of market value, RMV).


The RMV specification has gained a great deal of attention in the literature thanks to, among others, Duffie and Singleton (1999a). Consider a zero-coupon defaultable bond, which pays  $M$  at maturity  $T$  if there is no default prior to maturity and whose payoff in case of default is modeled according to the RMV assumption. They show that this bond can be priced as if it were a default-free zero-coupon bond, by replacing the usual short-term interest rate process  $r_t$  with a default-adjusted short rate process  $\pi_t = r_t + \lambda_t L_t$ .  $L_t$  is the expected loss rate in the market value if default were to occur at time  $t$ , conditional on the information available up to time  $t$ :

$$
R _ {\tau} = \left(1 - L _ {\tau}\right) Q \left(\tau_ {-}, T\right) \tag {15}
$$

$$
Q (\tau_ {-}, T) = \lim  _ {s \rightarrow \tau \atop s \leq \tau} Q (s, T) \tag{16}
$$ where  $\tau$  is the default time,  $Q(\tau_{-},T)$  the market price of the bond just before default, and  $R_{\tau}$  the value of the defaulted bond. Duffie and Singleton (1999a) show that (14) can be expressed as


$$
Q (t, T) = E \left[ \exp \left(- \int_ {t} ^ {T} \pi_ {s} d s\right) M \mid \mathcal {F} _ {t} \right] \tag {17}
$$

This expression shows that discounting at the adjusted rate  $\pi_t$  accounts for both the probability and the timing of default, and for the effect of losses at default. But the main advantage of the previous pricing formula is that, if the mean loss rate  $\lambda_t L_t$  does not depend on the value of the defaultable bond, we can apply well-known term structure processes to model  $\pi_t$  instead of  $r_t$  to price defaultable debt. One of the main drawbacks of this approach is that since  $\lambda_{t}L_{t}$  appears multiplied in  $\pi_t$ , in order to be able to estimate  $\lambda_{t}$  and  $L_{t}$  separately using data of defaultable instruments, it is not enough to know defaultable bond prices alone. We would need to have available a collection of bonds that share some, but not all, default characteristics, or derivative securities whose payoffs depend, in different ways, on  $\lambda_{t}$  and  $L_{t}$ . In case  $\lambda_{t}$  and  $L_{t}$  are not separable, we shall have to model the product  $\lambda_{t}L_{t}$  (which represents the short-term credit spread). This identification problem is the reason why most of the empirical work that tries to estimate the default intensity process from defaultable bond data uses an exogenously given constant, that is,  $L_{t} = L$  for all  $t$ , recovery rate.


The previous valuation formula allows one to introduce dependencies between short-term interest rates, default intensities, and recovery rates (via state variables, for example).

From a pricing point of view, the above pricing formula allows us to include the case in which, as is often seen in practice after a default takes place, a firm reorganizes itself and continues with its activity. If we assume that after each possible default the firm is reorganized and the bondholders lose a fraction  $L_{t}$  of the predefault bond's market value, Giesecke (2002a) shows that letting  $L_{t}$  be a constant, that is,  $L_{t} = L$  for all  $t$ , the price of a default risky zero-coupon bond is, as in the case with no reorganization, given by (17).

Another advantage of this framework is that it allows one to consider liquidity risk by introducing a stochastic process  $l_{t}$  as a liquidity spread in the adjusted discount process  $\pi_t$ ; that is,  $\pi_t = r_t + \lambda_t L_t + l_t$ .

# SINGLE ENTITY

The aim of this section is to develop some tools in the modeling of intensity processes, in order to build the models for default correlation. In case we consider a deterministic specification for default intensities, it is natural to think of time dependent intensities, in which  $\lambda_t = \lambda(t)$ , where  $\lambda(t)$  is usually modeled as either a constant, linear, or quadratic polynomial of the time to maturity.[13]


The treatment of default-free interest rates, the recovery rate, and the intensity process differentiates each intensity model.

It is interesting to note that the difference between the pricing formulas of default-free zero-coupon bonds and survival probabilities in the intensity approach lies in the discount rate:

$$
P (0, t) = E \left[ \exp \left(- \int_ {0} ^ {t} r _ {s} d s\right) \right] \tag {18}
$$

$$ s (0, t) = E \left[ \exp \left(- \int_ {0} ^ {t} \lambda_ {s} d s\right) \right] \tag {19}
$$

This analogy between intensity-based default risk models and interest rate models allows us to apply well-known short-rate term models to the modeling of default intensities.

Schönbucher (2003) enumerates several characteristics that an ideal specification of the interest rate  $r_t$  and the default intensity  $\lambda_t$  should have. First, both  $r_t$  and  $\lambda_t$  should be stochastic. Second, the dynamics of  $r_t$  and  $\lambda_t$  should be rich enough to include correlation between them. Third, it is desirable to have processes for  $r_t$  and  $\lambda_t$  that remain positive at all times. And finally, the easier the pricing of the pricing building blocks, the better.

We start with a general framework, making use of the Markov process  $X_{t} = (X_{1,t},\dots ,X_{J,t})'$ , which represents  $J$  state variables. The most general process for  $X_{t}$  that we shall consider is called a basic affine process, which is an example of an affine jump diffusion given by

$$ d X _ {j, t} = \kappa_ {j} \left(\theta_ {j} - X _ {j, t}\right) d t + \sigma_ {j} \sqrt {X _ {j , t}} d W _ {j, t} + d q _ {j, t} \tag {20}
$$ for  $j = 1,\dots ,J$  where  $W_{j,t}$  is an  $((\mathcal{F}_t),\mathbf{P})$  Brownian motion.  $\kappa_{j}$  and  $\theta_{j}$  represent the mean reversion rate and level of the process, and  $\sigma_{j}$  is a constant affecting the volatility of the process.  $dq_{j,t}$  denotes any jump that occurs at time  $t$  of


a pure-jump process  $q_{j,t}$ , independent of  $W_{j,t}$  whose jump sizes are exponentially distributed with mean  $\mu_{j}$  and whose jump times are independent Poisson random variables with intensity of arrival  $\gamma_{j}$  (jump times and jump sizes are also independent). By modeling the jump size as an exponential random variable, we restrict the jumps to be positive. This process is called a basic affine process with parameters  $(\kappa_{j},\theta_{j},\sigma_{j},\mu_{j},\gamma_{j})$

Making  $r_t$  and  $\lambda_t$  dependent on a set of common stochastic factors  $X_t$ , one can introduce randomness and correlation in the processes of  $r_t$  and  $\lambda_t$ . Moreover, if we use basic affine processes for the common factors  $X_t$ , we can make use of the following results, which will yield closed-form solutions for the building blocks we examined in the previous section:

1. For any discount-rate function  $\varphi :R^J\to R$  and any function  $g:R^J\rightarrow R,$  if  $X_{t}$  is a Markov process (which holds in the case of basic affine process), then

$$
E \left[ \exp \left(- \int_ {s} ^ {t} \varphi \left(X _ {u}\right) d u\right) g \left(X _ {t}\right) \mid \mathcal {F} _ {s} \right] = H \left(X _ {s}\right) \tag {21}
$$ for  $0 \leq s \leq t$  and for some function  $H: R^J \to R$ .


2. Defining an affine function as constant plus linear, if  $\varphi (x)$  and  $g(x)$  are affine functions  $(\varphi (x) = a_{0} + a_{1}x_{1} + \ldots +a_{J}x_{J}$  and  $g(x) = b_{0} + b_{1}x_{1} + \ldots +b_{J}x_{J})$  then, as shown by Duffie, Pan, and Singleton (2000), if  $X_{t}$  is an affine jump-diffusion process, it is verified that  $H(X_{s})$  can be expressed in closed form by

$$
H \left(X _ {s}\right) = \exp (\alpha (s, t) + \theta (s, t) \cdot X _ {s}) \tag {22}
$$ for some coefficients  $\alpha (s,t),\theta_{1}(s,t),\ldots ,$ $\theta_J(s,t)$  which are functions, also in closed form, of the parameters of the model.16


Observing that our pricing building blocks  $P(t,T), s(t,T)$  and  $Q(t,T)$  are special cases of the previous expressions, one realizes the gains in terms of tractability achieved by the use of affine processes in the modelling of the default term structure.17 In order to make use of this tractability the state variables  $X_{t}$  should follow affine processes, and the specification for the risk-adjusted rate  $\pi_t$  should be an affine function of the state variables.


Consider the case in which the  $X_{1,t},\ldots ,X_{J,t}$  follow (20). If we eliminate the jump component from the process of  $X_{j,t}$

$$ d X _ {j, t} = \kappa_ {j} \left(\theta_ {j} - X _ {j, t}\right) d t + \sigma_ {j} \sqrt {X _ {j , t}} d W _ {j, t} \tag {23}
$$ we obtain the CIR process, and eliminating the square root of  $X_{j,t}$


$$ d X _ {j, t} = \kappa_ {j} (\theta_ {j} - X _ {j, t}) d t + \sigma_ {j} d W _ {j, t} \tag {24}
$$ we end up with a Vasicek model.


Various reduced-form models differ from each other in their choices of the state variables and the processes they follow. In the models we consider below, the intensity and interest rate are linear, and therefore affine, functions of  $X_{t}$ , where  $X_{t}$  are basic affine processes.[18]

One can consider expressions for  $r_t$  and  $\lambda_t$  of the general form

$$ r _ {t} = a _ {0, r} (t) + a _ {1, r} (t) X _ {1, t} + \dots + a _ {J, r} (t) X _ {J, t} \tag {25}
$$

$$
\lambda_ {t} = a _ {0, \lambda} (t) + a _ {1, \lambda} (t) X _ {1, t} + \dots + a _ {J, \lambda} (t) X _ {J, t} \tag {26}
$$ for some deterministic (possibly time-dependent) coefficients  $a_{j,r}$  and  $a_{j,\lambda}, j = 1, \ldots, J$ . This type of model allows us to treat  $r_t$  and  $\lambda_t$  as stochastic processes, to introduce correlations between them, and to have analytically tractable expressions for pricing the building blocks. A simple example could be


$$ d r _ {t} = \kappa_ {r} \left(\theta_ {r} - r _ {t}\right) d t + \sigma_ {r} \sqrt {r _ {t}} d W _ {r, t} \tag {27}
$$

$$
\begin{array}{l} d \lambda_ {t} = \kappa_ {\lambda} \left(\theta_ {\lambda} - \lambda_ {t}\right) d t \\ + \sigma_ {\lambda} \sqrt {\lambda_ {t}} d W _ {\lambda , t} + d q _ {\lambda , t} \tag {28} \\ \end{array}
$$

$$ d W _ {r, t} d W _ {\lambda , t} = \rho d t \tag {29}
$$ in which the state variables are  $r_t$  and  $\lambda_t$  themselves, whose Brownian motions are correlated.


Duffie (2005) presents an extensive review of the use of affine processes for credit risk modeling using intensity models, and applies such models to price different credit derivatives (credit default swaps, credit guarantees, spread options, lines of credit, and ratings-based step-up bonds.)

# Default Times Simulation

Letting  $U$  be a uniform  $(0,1)$  random variable independent of  $(\mathcal{G}_{X,t})$ , the time of default is defined by

$$
\tau = \inf  \left\{t > 0 \mid \exp \left(- \int_ {o} ^ {t} \lambda_ {s} d s\right) \leq U \right\} \tag {30}
$$

Equivalently, we can let  $\eta$  be an exponentially distributed random variable with parameter 1 and independent of  $(\mathcal{G}_{X,t})$  and define the default time as

$$
\tau = \inf  \left\{t > 0 \mid \int_ {o} ^ {t} \lambda_ {s} d s \geq \eta \right\} \tag {31}
$$

Once we have specified and calibrated the dynamics of  $\lambda_{t}$ , we can easily simulate default times using a simple procedure based on the two previous definitions. First, we simulate a realization  $u$  of a uniform [0, 1] random variable  $U$  and choose  $\tau$  such that  $\exp \left(-\int_0^\tau \lambda_s ds\right) = u$ . Equally, we can simulate a random variable  $\eta$  exponentially distributed with parameter 1 and fix  $\tau$  such that  $\int_0^\tau \lambda_s ds = \eta$ .

# DEFAULT CORRELATION

This section reviews the different approaches to model the default dependence between firms in the reduced-form approach. With the tools provided in the previous section we can calculate the survival or default probability of a given firm in a given time interval. The next natural question to ask ourselves concerns the default or survival probability of more than one firm. If we are currently at time  $t$  ( $0 \leq t \leq T$ ) and no default has occurred so far, what is the probability that  $n \geq 1$  different firms default before time  $T$ ? or, what is the probability that they all survive until time  $T$ ?


Schönbucher (2003), again, points out some properties that any good approach to model dependent defaults should verify. First, the model must be able to produce default correlations of a realistic magnitude. Second, it has to do it by keeping the number of parameters introduced to describe the dependence structure under control, without growing dramatically with the number of firms. Third, it should be a dynamic model, able to model the number of defaults as well as the timing of defaults. Fourth, since it is clear from the default history that there are periods in which defaults may cluster, the model should be capable of reproducing these periods. And fifth, the easier the calibration and implementation of the model, the better.

We can distinguish three different approaches to model default correlation in the literature of intensity credit risk modeling. The first approach introduces correlation in the firms' default intensities making them dependent on a set of common variables  $X_{t}$  and on a firm specific factor. These models have received the name of conditionally independent defaults (CID) models, because conditioned to the realization of the state variables  $X_{t}$ , the firm's default intensities are independent as are the default times that they generate. Apparently, the main drawback of these models is that they do not generate sufficiently high default correlations. However, Yu (2002a) indicates that this is not a problem of the model per se, but rather an indication of the lack of sophistication in the choice of the state variables.

Two direct extensions of the CID approach try to introduce more default correlation in the models. One is the possibility of joint jumps in the default intensities (Duffie and Singleton 1999b) and the other is the possibility of default-event triggers that cause joint defaults (Duffie and Singleton 1999b, Kijima 2000, and Kijima and Muromachi 2000).

The second approach to model default correlation, contagion models, relies on the works by Davis and Lo (1999) and Jarrow and Yu (2001). It is based on the idea of default contagion in which, when a firm defaults, the default intensities of related firms jump upwards. In these models default dependencies arise from direct links between firms. The default of one firm increases the default probabilities of related firms, which might even trigger the default of some of them.

The last approach to model default correlation makes use of copula functions. A copula is a function that links univariate marginal distributions to the joint multivariate distribution with auxiliary correlating variables. To estimate a joint probability distribution of default times, we can start by estimating the marginal probability distributions of individual defaults, and then transform these marginal estimates into the joint distribution using a copula function. Copula functions take as inputs the individual probabilities and transform them into joint probabilities, such that the dependence structure is completely introduced by the copula.

# Measures of Default Correlation

The complete specification of the default correlation will be given by the joint distribution of default times. Nevertheless, we can specify some other measures of default correlation. Consider two firms  $A$  and  $B$  that have not defaulted before time  $t$  ( $0 \leq t \leq T$ ). We denote the probabilities that firms  $A$  and  $B$  will default in the time interval  $[t, T]$  by  $p_A$  and  $p_B$  respectively. Denote  $p_{AB}$  the probability of both firms defaulting before  $T$ , and  $\tau_A$  and  $\tau_B$  the default times of each firm. The linear correlation coefficient between the default indicator random variables  $\mathbf{1}_A = \mathbf{1}_{\{\tau_A \leq T\}}$  and  $\mathbf{1}_B = \mathbf{1}_{\{\tau_B \leq T\}}$  is given by

$$
\rho \left(\mathbf {1} _ {\{\tau_ {A} \leq T \}}, \mathbf {1} _ {\{\tau_ {B} \leq T \}}\right) = \frac {p _ {A B} - p _ {A} p _ {B}}{\sqrt {p _ {A} (1 - p _ {A}) p _ {B} (1 - p _ {B})}} \tag {32}
$$

In the same way we can define the linear correlation of the random variables  $\mathbf{1}_{\{\tau_A > T\}}$  and  $\mathbf{1}_{\{\tau_B > T\}}$ . Another measure of default dependence between firms is the linear correlation between the random variables  $\tau_A$  and  $\tau_B$ ,  $\rho(\tau_A, \tau_B)$ .

The conclusions extracted from the comparison of linear default correlations should be viewed with caution because they are covariance-based and hence they are only the natural dependence measures for joint elliptical random variables. Default times, default events, and survival events are not elliptical random variables, and hence these measures can lead to severe misinterpretations of the true default correlation structure.

The previous correlation coefficients, when estimated via a risk neutral intensity model, are based on the risk neutral measure. However, when we calculate the correlation coefficients using empirical default events, the correlation coefficients are obtained under the physical measure. Jarrow, Lando, and Yu (2001) and Yu (2002a, b) provide a procedure for computing physical default correlation through the use of risk neutral intensities.

# Conditionally Independent Default Models

From now on, we consider  $i = 1,\dots,I$  different firms and denote by  $\lambda_{i,t}$  and  $\tau_{i}$  their default intensities and default times respectively.

In CID models, firms' default intensities are independent once we fix the realization of the state variables  $X_{t}$ . The default correlation is introduced through the dependence of each firm's intensity on the random vector  $X_{t}$ . A firm-specific factor of stochasticity  $\lambda_{i,t}^{*}$ , independent across firms, completes the specification of each firm's default intensity:

$$
\lambda_ {i, t} = a _ {0, \lambda_ {i}} + a _ {1, \lambda_ {i}} X _ {1, t} + \dots + a _ {J, \lambda_ {i}} X _ {J, t} + \lambda_ {i, t} ^ {*} \tag {33}
$$ where  $a_{j,\lambda_i}$  are some deterministic coefficients, for  $j = 1,\dots ,J$  and  $i = 1,\ldots ,I$ .21


Since default times are continuously distributed, this specification implies that the probability of having two or more simultaneous defaults is zero.

Let us consider an example of a CID model based on Duffee (1999). The default-free interest rate is given by

$$ r _ {t} = a _ {r, 0} + X _ {1, t} + X _ {2, t} \tag {34}
$$ where  $a_{r,0}$  is a constant coefficient, and  $X_{1,t}$  and  $X_{2,t}$  are two latent factors (unobservable, interpreted as the slope and level of the default-free yield curve). After having estimated the latent factors  $X_{1,t}$  and  $X_{2,t}$  from default-free bond data, Duffee (1999) uses them to model the intensity process of each firm  $i$  as


$$
\begin{array}{l} \lambda_ {i, t} = a _ {0, \lambda_ {i}} + a _ {1, \lambda_ {i}} \left(X _ {1, t} - \bar {X} _ {1}\right) + a _ {2, \lambda_ {i}} \left(X _ {2, t} - \bar {X} _ {2}\right) \\ + \lambda_ {i, t} ^ {*} \tag {35} \\ \end{array}
$$

$$ d \lambda_ {i, t} ^ {*} = \kappa_ {i} \left(\theta_ {i} - \lambda_ {i, t} ^ {*}\right) d t + \sigma_ {i} \sqrt {\lambda_ {i , t} ^ {*}} d W _ {i, t} \tag {36}
$$ where  $W_{1,t},\ldots ,W_{I,t}$  are independent Brownian motions,  $a_{0,\lambda_i},a_{1,\lambda_i}$  and  $a_{2,\lambda_i}$  are constant coefficients, and  $\bar{X}_1$  and  $\bar{X}_2$  are the sample means of  $X_{1,t}$  and  $X_{2,t}$ .


The intensity of each firm  $i$  depends on the two common latent factors  $X_{1,t}$  and  $X_{2,t}$ , and on an idiosyncratic factor  $\lambda_{i,t}^{*}$ , independent across firms. The coefficients  $a_{0,\lambda_i}, a_{1,\lambda_i}, a_{2,\lambda_i}, \kappa_i, \theta_i$  and  $\sigma_i$  are different for each firm. In Duffee's model,  $\lambda_{i,t}^{*}$  captures the stochasticity of intensities and the coefficients  $a_{1,\lambda_i}$  and  $a_{2,\lambda_i}, i = 1, \ldots, I$ , capture the correlations between intensities themselves, and between intensities and interest rates.

Duffee (1999), Zhang (2003), Driessen (2005), and Elizalde (2005b) propose, and estimate, different CID models.[22]

The literature on credit risk correlation has criticized the CID approach, arguing that it generates low levels of default correlation when compared with empirical default correlations. However, Yu (2002a) suggests that this apparent low correlation is not a problem of the approach itself but a problem of the choice of state or latent variables, owing to the inability of a limited set of state variables to fully capture the dynamics of changes in default intensities. In order to achieve the level of correlation seen in empirical data, a CID model must include among the state variables the evolution of the stock market, corporate and default-free bond markets, as well as various industry factors.


According to Yu, the problem of low correlation in Duffee's model may arise because of the insufficient specification of the common factor structure, which may not capture all the sources of common variation in the model, leaving them to the idiosyncratic component, which in turn would not be independent across firms. In fact, Duffee finds that idiosyncratic factors are statistically significant and correlated across firms. As long as the firms' credit risk depend on common factors different from the interest rate factors, Duffee's specification is not able to capture all the correlation between firms' default probabilities. Xie, Wu, and Shi (2004) estimate Duffee's model for a sample of U.S. corporate bonds and perform a careful analysis of the model pricing errors. A principal component analysis reveals that the first factor explains more than  $90\%$  of the variation of pricing errors. Regressing bond pricing errors with respect to several macroeconomic variables, they find that returns on the S&P 500 index explain around  $30\%$  of their variations. Therefore, Duffee's model leaves out some important aggregate factors that affect all bonds.

Driessen (2005) proposes a model in which the firms' hazard rates are a linear function of two common factors, two factors derived from the term structure of interest rates, a firm idiosyncratic factor, and a liquidity factor. Yu also examines the model of Driessen (2005), finding that the inclusion of two new common factors elevates the default correlation.

Finally, Elizalde (2005b) shows that any firm's credit risk is, to a very large extent, driven by common risk factors affecting all firms. The study decomposes the credit risk of a sample of corporate bonds (14 U.S. firms, 2001-2003) into different unobservable risk factors. A single common factor accounts for more than  $50\%$  of all (but two) of the firms' credit risk levels, with an average of  $68\%$  across firms. Such factor represents the credit risk levels underlying the U.S. economy and is strongly correlated with main U.S. stock indexes. When three common factors are considered (two of them coming from the term structure of interest rates), the model explains an average of  $72\%$  of the firms' credit risk.[23]


# Default Times Simulation

In the CID approach, to simulate default times we proceed as we did in the single entity case. Once we know the realization of the state variables  $X_{t}$ , we simulate a set of  $I$  independent unit exponential random variables  $\eta_1,\dots ,\eta_I$ , which are also independent of  $(\mathcal{G}_{X,t})$ . The default time of each firm  $i = 1,\ldots ,I$  is defined by

$$
\tau_ {i} = \inf  \left\{t > 0 \mid \int_ {o} ^ {t} \lambda_ {i, s} d s \geq \eta_ {i} \right\} \tag {37}
$$

Thus, once we have simulated  $\eta_{i},\tau_{i}$  will be such that

$$
\int_ {o} ^ {\tau_ {i}} \lambda_ {i, s} d s = \eta_ {i} \tag {38}
$$

Joint Jumps/Joint Defaults Duffie and Singleton (1999b) proposed two ways out of the low correlation problem. One is the possibility of joint jumps in the default intensities, and the other is the possibility of default-event triggers that cause joint defaults.[24]

Duffie and Singleton develop an approach in which firms experience correlated jumps in their default intensities. Assume that the default intensity of each firm follows the following process:

$$ d \lambda_ {i, t} = \kappa_ {i} \left(\theta_ {i} - \lambda_ {i, t}\right) d t + d q _ {i, t} \tag {39}
$$ which consists of a deterministic mean reversion process plus a pure jump process  $q_{i,t}$ , whose intensity of arrival is distributed as a Poisson random variable with parameter  $\gamma_{i}$  and


whose jump size follows an exponential random variable with mean  $\mu$  (equal for all firms  $i = 1,\dots,I$ ).25 Duffie and Singleton introduce correlation to the firm's jump processes, keeping unchanged the characteristics of the individual intensities. They postulate that each firm's jump component consists of two kinds of jumps, joint jumps and idiosyncratic jumps. The joint jump process has a Poisson intensity  $\gamma_{c}$  and an exponentially distributed size with mean  $\mu$ . Individual default intensities experience a joint jump with probability  $p_i$ . That is, a firm suffers a joint jump with Poisson intensity of arrival of  $p_i\gamma_c$ . In order to keep the total jump in each firm's default intensity with intensity of arrival  $\gamma_{i}$  and size  $\mu$ , the idiosyncratic jump (independent across firms) is set to have an exponentially distributed size  $\mu$  and intensity of arrival  $h_i$ , such that  $\gamma_{i} = p_{i}\gamma_{c} + h_{i}$ .

Note that if  $p_i = 0$  the jumps are only idiosyncratic jumps, implying that default intensities and hence default times are independent across firms. If  $p_i = 1$  and  $h_i = 0$  all firms have the same jump intensity, which does not mean that default times are perfectly correlated, since the size of the jump is independent across firms. Only if we additionally assume that  $\mu$  goes to infinity we obtain identical default times.

The second alternative considers the possibility of simultaneous defaults triggered by common credit events, at which several obligors can default with positive probability. Imagine there exist  $m = 1, \dots, M$  common credit events, each one modeled as a Poisson process with intensity  $\lambda_{m,t}^{c}$ . Given the occurrence of a credit event  $m$  at time  $t$ , each firm  $i$  defaults with probability  $p_{i,m,t}$ . If, given the occurrence of a common shock, the firm's default probability is less than one, this common shock is called nonfatal shock, whereas if this probability is one, the common shock is called fatal shock. In addition to the common credit events, each entity can experience default through an idiosyncratic Poisson process with intensity  $\lambda_{i,t}^{*}$ , which is independent across firms. Therefore, the total in density of firm  $i$  is given by


$$
\lambda_ {i, t} = \lambda_ {i, t} ^ {*} + \sum_ {m = 1} ^ {M} p _ {i, m, t} \lambda_ {m, t} ^ {c} \tag {40}
$$

Consider a simplified version of this setting with two firms, constant idiosyncratic intensities  $\lambda_1^*$  and  $\lambda_2^*$ , and one common and fatal event with constant intensity  $\lambda^c$ . In this case firm  $i$ 's survival probability is given by

$$ s _ {i} (t, T) = \exp \left(- \left(\lambda_ {i} ^ {*} + \lambda^ {c}\right) (T - t)\right) \tag {41}
$$

Denoting by  $s(t;T_1,T_2)$  the joint survival probability, given no default until time  $t$ , that firm 1 does not default before time  $T_{1}$  and firm 2 does not default before time  $T_{2}$ , then

$$
\begin{array}{l} s (t; T _ {1}, T _ {2}) = \exp (- \lambda_ {1} ^ {*} (T _ {1} - t) - \lambda_ {2} ^ {*} (T _ {2} - t) \\ - \lambda^ {c} \max  \left\{T _ {1} - t, T _ {2} - t \right\}) = \\ = \exp \left(- \left(\lambda_ {1} ^ {*} + \lambda^ {c}\right) \left(T _ {1} - t\right) \right. \\ - \left(\lambda_ {2} ^ {*} + \lambda^ {c}\right) \left(T _ {2} - t\right) + \lambda^ {c} \\ \left. \min  \left\{T _ {1} - t, T _ {2} - t \right\}\right) \tag {42} \\ \end{array}
$$ which can be expressed as


$$
\begin{array}{l} s \left(t; T _ {1}, T _ {2}\right) = s _ {1} (t, T) s _ {2} (t, T) \\ \left. \min  \left\{\exp \left(\lambda^ {c} \left(T _ {1} - t\right)\right), \exp \left(\lambda^ {c} \left(T _ {2} - t\right)\right) \right\} \right. \tag {43} \\ \end{array}
$$

This expression for the joint survival probability explicitly includes individual survival probabilities and a term that introduces the dependence structure. This is the approach followed by copula functions, which couple marginal probabilities into joint probabilities. In fact, the above example is a special case of copula function, called Marshall-Olkin copula.

The relationship between joint survival and default probabilities is given by

$$
\begin{array}{l} s (t; T _ {1}, T _ {2}) = 1 - p _ {1} (t, T _ {1}) - p _ {2} (t, T _ {2}) \\ + p (t; T _ {1}, T _ {2}) \tag {44} \\ \end{array}
$$ where  $p(t;T_1,T_2)$  represents the joint default probability, given no default until time  $t$ , that firm 1 defaults before time  $T_{1}$  and firm 2


defaults before time  $T_{2}$ . Obviously the case with multiple common shocks is more troublesome in terms of notation and calibration because, for every possible common credit event, an intensity must be specified and calibrated.[26]

Duffie and Singleton (1999b) propose algorithms to simulate default times within these two frameworks. The criticisms that the joint credit event approach has received stem from the fact that it is unrealistic that several firms default at exactly the same time, and also from the fact that after a common credit event that makes some obligors default, the intensity of other related obligors that do not default does not change at all.

Although theoretically appealing, the main drawback of these two last models has to do with their calibration and implementation. To the best of my knowledge there is not a single paper that carries out an empirical calibration and implementation of a model like the ones presented in this section. The same applies to the contagion models presented in the next section.

# Contagion Mechanisms

Contagion models take CID models one step further, introducing into the model two empirical facts: that the default of one firm can trigger the default of other related firms and that default times tend to concentrate in certain periods of time, in which the default probability of all firms is increased. The last model examined in the previous section (joint credit events) differs from contagion mechanisms in that if an obligor does not experience a default, its intensity does not change due to the default of any related obligor. The literature of default contagion includes two approaches: the infectious defaults model of Davis and Lo (1999), and the model proposed by Jarrow and Yu (2001), which we shall refer to as the propensity model. The main issues to be resolved concerning these two models are associated with difficulties in their calibration to market prices.

# The Davis-Lo Infectious Defaults Model

The model developed by Davis and Lo (1999) has two versions, a static version that only considers the number of defaults in a given time period,[27] and a dynamic version in which the timing of default is also incorporated.[28]

In the dynamic version of the model, each firm has an initial hazard rate of  $\lambda_{i,t}$ , for  $i = 1,\dots,I$ , which can be constant, time dependent, or follow a CID model. When a default occurs, the default intensity of all remaining firms is increased by a factor  $a > 1$ , called the enhancement factor, to  $a\lambda_{i,t}$ . This augmented intensity remains for an exponentially distributed period of time, after which the enhancement factor disappears ( $a = 1$ ). During the period of augmented intensity, the default probabilities of all firms increase, reflecting the risk of default contagion.

# The Jarrow-Yu Propensity Model

In order to account for the clustering of default in specific periods, Jarrow and Yu (2001) extend CID models to account for counterparty risk: the risk that the default of a firm may increase the default probability of other firms with which it has commercial or financial relationships. This allows them to introduce extra-default dependence in CID models to account for default clustering. In a first attempt, Jarrow and Yu assume that the default intensity of a firm depends on the status (default/not default) of the rest of the firms (symmetric dependence). However, symmetric dependence introduces a circularity in the model, which they refer to as looping defaults, which makes it extremely difficult and troublesome to construct and derive the joint distribution of default times.

Jarrow and Yu restrict the structure of the model to avoid the problem of looping defaults. They distinguish between primary firms  $(1,\dots ,K)$  and secondary firms  $(K + 1,\ldots ,I)$ . First, they derive the default intensity of primary firms, using a CID model. The primary firm intensities  $\lambda_{1,t},\dots,\lambda_{K,t}$  are  $(\mathcal{G}_{X,t})$  -adapted and do not depend on the default status of any other firm. If a primary firm defaults, this increases the default intensities of secondary firms, but not the other way around (asymmetric dependence). Thus, secondary firms' default intensities are given by


$$
\lambda_ {i, t} = \hat {\lambda} _ {i, t} + \sum_ {j = 1} ^ {K} a _ {i, t} ^ {j} \mathbf {1} _ {\left\{\tau_ {j} \leq t \right\}} \tag {45}
$$ for  $i = K + 1,\dots,I$  and  $j = 1,\dots,K$ , where  $\hat{\lambda}_{i,t}$  and  $a_{i,t}^{j}$  are  $(\mathcal{G}_{X,t})$ -adapted.  $\hat{\lambda}_{i,t}$  represents the part of secondary firm  $i$ 's hazard rate independent of the default status of other firms.


Default intensities of primary firms  $\lambda_{1,t},\ldots ,\lambda_{K,t}$  are  $(\mathcal{G}_{X,t})$  -adapted, whereas default intensities of secondary firms  $\lambda_{K + 1,t},\dots ,\lambda_{I,t}$  are adapted with respect to the filtration  $(\mathcal{G}_{X,t})\lor (\mathcal{G}_{1,t})\lor \dots \lor (\mathcal{G}_{K,t})$

This model introduces a new source of default correlation between secondary firms, and also between primary and secondary firms, but it does not solve the drawbacks of low correlation between primary firms, which CID models apparently imply, because the setting for primary firms is, after all, only a CID model.[29]

Default Times Simulation First we simulate the default times for the primary firms exactly as in the case of CID. Then, we simulate a set of  $I - K$  independent unit exponential random variables  $\eta_{K + 1},\ldots ,\eta_I$  (independent of  $(\mathcal{G}_{X,t})\lor$ $(\mathcal{G}_{1,t})\lor \dots \lor (\mathcal{G}_{K,t}))$  , and define the default time of each secondary firm  $i = K + 1,\ldots ,I$  as

$$
\tau_ {i} = \inf  \left\{t > 0 \mid \int_ {o} ^ {t} \lambda_ {i, s} d s \geq \eta_ {i} \right\} \tag {46}
$$

# Copulas

In CID and contagion models the specification of the individual intensities includes all the default dependence structure between firms. In contrast, the copula approach separates individual default probabilities from the credit risk dependence structure. The copula function takes as inputs the marginal probabilities and introduces the dependence structure to generate joint probabilities.


Copulas were introduced in 1959 and have been extensively applied to model, among others, survival data in areas such as actuarial science.[30]

In the rest of this section we review copula theory and its use in the credit risk literature. To make notation simple, assume we are at time  $t = 0$  and take  $s_i(t)$  and  $p_i(t)$  (or  $F_i(t)$ ) to be the survival and default probabilities, respectively, of firm  $i = 1, \dots, I$  from time 0 to time  $t > 0$ . Then

$$
F _ {i} (t) = \mathbf {P} [ \tau_ {i} \leq t ] = 1 - s _ {i} (t) = 1 - \mathbf {P} [ \tau_ {i} > t ] \tag {47}
$$ where  $\tau_{i}$  denotes the default time of firm  $i$ .


A copula function transforms marginal probabilities into joint probabilities. In case we model default times, the joint default probability is given by

$$
\begin{array}{l} F \left(t _ {1}, \dots , t _ {I}\right) = \mathbf {P} \left[ \tau_ {1} \leq t _ {1}, \dots , \tau_ {I} \leq t _ {I} \right] \\ = \mathbf {C} ^ {d} \left(F _ {1} \left(t _ {1}\right), \dots , F _ {I} \left(t _ {I}\right)\right) \tag {48} \\ \end{array}
$$ and if we model survival times, the joint survival probability takes the form


$$
\begin{array}{l} s \left(t _ {1}, \dots , t _ {I}\right) = \mathbf {P} \left[ \tau_ {1} > t _ {1}, \dots , \tau_ {I} > t _ {I} \right] \\ = \mathbf {C} ^ {s} \left(s _ {1} \left(t _ {1}\right), \dots , s _ {I} \left(t _ {I}\right)\right) \tag {49} \\ \end{array}
$$ where  $\mathbf{C}^d$  and  $\mathbf{C}^s$  are two different copulas.31


The copula function takes as inputs the marginal probabilities without considering how we have derived them. Thus, the intensity approach is not the only framework with which we can use copula functions to model the default dependence structure between firms. Any other approach to model marginal default probabilities, such as the structural approach, can use copula theory to model joint probabilities.

# Description

An intuitive definition of a copula function is as follows:32

Copula Function A function  $\mathbf{C}:[0,1]^I\to [0,1]$  is a copula if there are uniform random variables  $U_{1},\ldots ,U_{I}$  taking values in [0, 1] such that  $\mathbf{C}$  is their joint distribution function.

A copula function  $\mathbf{C}$  has uniform marginal distributions, that is,

$$
\mathbf {C} (1, \dots , 1, u _ {i}, 1, \dots , 1) = u _ {i} \tag {50}
$$ for all  $i = 1,\dots,I$  and  $u_{i}\in [0,1]$


This definition is used, for example, by Schonbucher (2003). The copula function  $C$  is the joint distribution of a set of  $I$  uniform random variables  $U_{1},\ldots ,U_{I}$ . Copula functions allow one to separate the modeling of the marginal distribution functions from the modeling of the dependence structure. The choice of the copula does not constrain the choice of the marginal distributions. Sklar (1959) showed that any multivariate distribution function  $F$  can be written in the form of a copula function. The following theorem is known as Sklar's theorem:

Sklar's Theorem Let  $Y_{1}, \ldots, Y_{I}$  be random variables with marginal distribution functions  $F_{1}, \ldots, F_{I}$  and joint distribution function  $F$ . Then there exists an  $I$ -dimensional copula  $\mathbf{C}$  such that  $F(y_{1}, \ldots, y_{I}) = \mathbf{C}(F_{1}(y_{1}), \ldots, F_{I}(y_{I}))$  for all  $(y_{1}, \ldots, y_{I})$  in  $R^{I}$ . Moreover, if each  $F_{i}$  is continuous, then the copula  $\mathbf{C}$  is unique.

We shall consider the default times of each firm  $\tau_{1},\ldots ,\tau_{I}$  as the marginal random variables whose joint distribution function will be determined by a copula function. If  $Y$  is a random variable with distribution function  $F,$  then the random variable  $U,$  defined as  $U = F(Y),$  is a uniform [0, 1] random variable. Denoting by  $t_i$  the realization of each  $\tau_{i},^{34}$

$$
\begin{array}{l} F \left(t _ {1}, \dots , t _ {I}\right) = \mathbf {P} \left[ \tau_ {1} \leq t _ {1}, \dots , \tau_ {I} \leq t _ {I} \right] \\ = \mathbf {C} \left(F _ {1} \left(t _ {1}\right), \dots , F _ {I} \left(t _ {I}\right)\right) \tag {51} \\ \end{array}
$$

The marginal distribution of the default time  $\tau_{i}$  will be given by

$$
\begin{array}{l} F _ {i} \left(t _ {i}\right) = F (\infty , \dots , \infty , t _ {i}, \infty , \dots , \infty) \\ = \mathbf {P} \left[ \tau_ {1} \leq \infty , \dots , \tau_ {i} \leq t _ {i}, \dots , \tau_ {I} \leq \infty \right] = \\ = \mathbf {C} \left(F _ {1} (\infty), \dots , F _ {i} (t _ {i}), \dots , F _ {I} (\infty)\right) \\ = \mathbf {C} (1, \dots , F _ {i} (t _ {i}), \dots , 1) \tag {52} \\ \end{array}
$$

In the bivariate case, the relationship between the copula  $\mathbf{C}^d$  and the survival copula  $\mathbf{C}^s$ , which satisfies  $s(t_1, t_2) = \mathbf{C}^s(s_1(t_1), s_2(t_2))$ , is given by

$$
\begin{array}{l} \mathbf {C} ^ {s} \left(u _ {1}, u _ {2}\right) = u _ {1} + u _ {2} - 1 \\ + \mathbf {C} ^ {d} \left(1 - u _ {1}, 1 - u _ {2}\right) \tag {53} \\ \end{array}
$$

Nelsen (1999) points out that  $\mathbf{C}^s$  is a copula and that it couples the joint survival function  $s(\cdot ,\dots ,\cdot)$  to its univariate margins  $s_1(\cdot),\ldots ,s_I(\cdot)$  in a manner completely analogous to the way in which a copula connects the joint distribution function  $F(\cdot ,\dots ,\cdot)$  to its margins  $F_{1}(\cdot),\ldots ,F_{I}(\cdot)$ . When modeling credit risk using the copula framework we can specify a copula for either the default times or the survival times.

Measures of the Dependence Structure The dependence between the marginal distributions linked by a copula is characterized entirely by the choice of the copula. If  $\mathbf{C}_1$  and  $\mathbf{C}_2$  are two  $I$ -dimensional copula functions we say that  $\mathbf{C}_1$  is smaller than  $\mathbf{C}_2$ , denoted by  $\mathbf{C}_1 \prec \mathbf{C}_2$ , if  $\mathbf{C}_1(u) \leq \mathbf{C}_2(u)$  for all  $u \in [0, 1]^I$ .

The Fréchet-Hoeffding copulas,  $\mathbf{C}^{-}$  and  $\mathbf{C}^{+}$ , are two reference copulas given by

$$
\mathbf {C} ^ {-} = \max  \left\{u _ {1} + \dots + u _ {I} + 1 - I, 0 \right\} \tag {54}
$$

$$
\mathbf {C} ^ {+} = \min  \left\{u _ {1}, \dots , u _ {I} \right\} \tag {55}
$$ satisfying  $\mathbf{C}^{-}\prec \mathbf{C}\prec \mathbf{C}^{+}$  for any copula C.However, this is a partial ordering in the sense that not every pair of copulas can be compared in this way.


In order to compare any two copulas, we would need an index to measure the dependence structure between two random variables introduced by the choice of the copula function. Linear (Pearson) correlation coefficient  $\rho$  is the most used measure of dependence; however, it harbors several drawbacks, which makes it not very suitable to compare copula functions. For example, linear correlation depends not only on the copula but also on the marginal distributions.


We focus on four dependence measures that depend only on the copula function, not in the marginal distributions: Kendall's tau, Spearman's rho, and upper/ lower tail dependence coefficients.

First, we introduce the concept of concordance:

Concordance Let  $(y_{1},y_{2})$  and  $(\hat{y}_1,\hat{y}_2)$  be two observations from a vector  $(Y_{1},Y_{2})$  of continuous random variables. Then,  $(y_{1},y_{2})$  and  $(\hat{y}_1,\hat{y}_2)$  are said to be concordant if  $(y_{1} - \hat{y}_{1})(y_{2} - \hat{y}_{2}) > 0$  and discordant if  $(y_{1} - \hat{y}_{1})(y_{2} - \hat{y}_{2}) < 0$ .

Kendall's tau and Spearman's rho are two measures of concordance:

Kendall's Tau Let  $(Y_{1}, Y_{2})$  and  $\left(\hat{Y}_{1}, \hat{Y}_{2}\right)$  be IID random vectors of continuous random variables with the same joint distribution function given by the copula  $\mathbf{C}$  (and with marginals  $F_{1}$  and  $F_{2}$ ). Then, Kendall's tau of the vector  $(Y_{1}, Y_{2})$  (and thus of the copula  $\mathbf{C}$ ) is defined as the probability of concordance minus the probability of discordance; that is,

$$
\begin{array}{l} \tau = \mathbf {P} \left[ \left(Y _ {1} - \hat {Y} _ {1}\right) \left(Y _ {2} - \hat {Y} _ {2}\right) > 0 \right] \\ - \mathbf {P} \left[ \left(Y _ {1} - \hat {Y} _ {1}\right) \left(Y _ {2} - \hat {Y} _ {2}\right) <   0 \right] \tag {56} \\ \end{array}
$$

Spearman's Rho Let  $(Y_{1},Y_{2})$ ,  $(\hat{Y}_1,\hat{Y}_2)$  and  $\left(\dot{\hat{Y}}_1,\dot{\hat{Y}}_2\right)$  be IID random vectors of continuous random variables with the same joint distribution function given by the copula  $\mathbf{C}$  (and with marginals  $F_{1}$  and  $F_{2}$ ). Then, Spearman's rho of the vector  $(Y_{1},Y_{2})$  (and thus of the copula  $\mathbf{C}$ ) is defined as

$$
\begin{array}{l} \rho_ {S} = 3 \left(\mathbf {P} \left[ \left(Y _ {1} - \hat {Y} _ {1}\right) \left(Y _ {2} - \hat {\bar {Y}} _ {2}\right) > 0 \right] \right. \\ - \mathbf {P} \left[ \left(Y _ {1} - \hat {Y} _ {1}\right) \left(Y _ {2} - \hat {Y} _ {2}\right) <   0 \right]) \tag {57} \\ \end{array}
$$

Both Kendall's tau and Spearman's rho take values in the interval [0, 1] and can be defined in terms of the copula function by

$$
\begin{array}{l} \tau = 4 \iint_ {[ 0, 1 ] ^ {2}} \mathbf {C} (u, v) d \mathbf {C} (u, v) - 1 (58) \\ \rho_ {S} = 1 2 \iint_ {[ 0, 1 ] ^ {2}} u v d \mathbf {C} (u, v) - 3 = 1 2 \iint_ {[ 0, 1 ] ^ {2}} \\ \mathbf {C} (u, v) d u d v - 3 (59) \\ \end{array}
$$

The Fréchet-Hoeffding copulas take the two extreme values of Kendall's tau and Spearman's rho: If the copula of the vector  $(Y_{1}, Y_{2})$  is  $\mathbf{C}^{-}$  then  $\tau = \rho_{S} = -1$ , and if it has copula  $\mathbf{C}^{+}$  then  $\tau = \rho_{S} = 1$ . The product copula  $\mathbf{C}^{P}$  represents independent random variables, that is, if  $Y_{1}, \ldots, Y_{I}$  are independent random variables, their copula is given by  $\mathbf{C}^{P}$ , such that  $\mathbf{C}^{P}(u_{1}, \ldots, u_{I}) = u_{1} \ldots u_{I}$ . For a vector  $(Y_{1}, Y_{2})$  of independent random variables,  $\tau = \rho_{S} = 0$ . Kendall's tau and Spearman's rho are equal for a given copula  $\mathbf{C}$  and its associated survival copula  $\mathbf{C}^{s}$ .

Kendall's tau and Spearman's rho are measures of global dependence. In contrast, tail dependence coefficients between two random variables  $(Y_{1}, Y_{2})$  are local measures of dependence, as they refer to the level of dependence between extreme values, that is, values at the tails of the distributions  $F_{1}(Y_{1})$  and  $F_{2}(Y_{2})$ .

Tail Dependence Let  $(Y_{1}, Y_{2})$  be a random vector of continuous random variables with copula  $\mathbf{C}$  (and with marginals  $F_{1}$  and  $F_{2}$ ). Then, the coefficient of upper tail dependence of the vector  $(Y_{1}, Y_{2})$  (and thus of the copula  $\mathbf{C}$ ) is defined as

$$
\lambda_ {U} = \lim  _ {u \nearrow 1} \mathbf {P} \left[ Y _ {1} > F _ {1} ^ {- 1} (u) \mid Y _ {2} > F _ {2} ^ {- 1} (u) \right] \tag {60}
$$ where  $F_{i}^{-1}$  represents the inverse function of  $F_{i}$ , provided the limit exists. We say that the random vector (and thus the copula  $\mathbf{C}$ ) has upper tail dependence if  $\lambda_U > 0$ . Similarly, the coefficient of lower tail dependence of the vector  $(Y_1, Y_2)$  (and thus


of the copula  $\mathbf{C}$  ) is defined as

$$
\lambda_ {L} = \lim  _ {u \searrow 0} \mathbf {P} \left[ Y _ {1} <   F _ {1} ^ {- 1} (u) \mid Y _ {2} <   F _ {2} ^ {- 1} (u) \right] \tag {61}
$$

We say that the random vector (and thus the copula  $\mathbf{C}$ ) has lower tail dependence if  $\lambda_L > 0$ .

Upper (lower) tail dependence measures the probability that one component of the vector  $(Y_{1},Y_{2})$  is extremely large (small) given that the other is extremely large (small). As in the case of Kendall's tau and Spearman's rho, tail dependence is a copula property and can be expressed as

$$
\lambda_ {U} = \lim  _ {u, \nearrow 1} \frac {1 + \mathbf {C} (u , u) - 2 u}{1 - u} \tag {62}
$$

$$
\lambda_ {L} = \lim  _ {u \searrow 0} \frac {\mathbf {C} (u , u)}{u} \tag {63}
$$

The upper (lower) coefficient of tail dependence of the copula  $\mathbf{C}$  is the lower (upper) coefficient of tail dependence of its associated survival copula  $\mathbf{C}^s$ .

Consider the random vector  $(\tau_{1},\tau_{2})$  of default times for two firms. The coefficient of upper (lower) tail dependence represents the probability of long-term survival (immediate joint death). The existence of default clustering periods implies that a copula to model joint default (survival) probabilities should have lower (upper) tail dependence to capture those periods.

Examples of Copulas Here, we review some of the most used copulas in default risk modeling. The first two copulas, normal and Student  $t$  copulas, belong to the elliptical family of copulas. We also present the class of Archimedean copulas and the Marshall-Olkin copula.[39]

1. Elliptical Copulas The  $I$ -dimensional normal copula with correlation matrix  $\Sigma$  is given by

$$
\mathbf {C} \left(u _ {1}, \dots , u _ {I}\right) = \Phi_ {\Sigma} ^ {I} \left(\Phi^ {- 1} \left(u _ {1}\right), \dots , \Phi^ {- 1} \left(u _ {I}\right)\right) \tag {64}
$$ where  $\Phi_{\Sigma}^{I}$  represents an  $I$  -dimensional normal distribution function with covariance matrix  $\Sigma$


and  $\Phi^{-1}$  denotes the inverse of the univariate standard normal distribution function.

Normal copulas are radially symmetric  $(\lambda_U = \lambda_L)$ , tail independent  $(\lambda_U = \lambda_L = 0)$ , and their concordance order depends on the linear correlation parameter  $\rho$ :

$$
\mathbf {C} ^ {-} \prec \mathbf {C} _ {\rho = - 1} \prec \mathbf {C} _ {\rho <   0} \prec \mathbf {C} _ {\rho = 0} = \mathbf {C} ^ {P} \prec \mathbf {C} _ {\rho > 0} \prec
$$

$$
\mathbf {C} _ {\rho = 1} = \mathbf {C} ^ {+} \tag {65}
$$

As with any other copula, the normal copula allows the use of any marginal distribution. We can express the linear correlation coefficients for a normal copula  $(\rho)$  in terms of both Kendall's tau  $(\tau)$  and Spearman's rho  $(\rho_{S})$  in the following way:

$$
\rho = 2 \sin \left(\frac {\pi}{6} \rho_ {S}\right) = \sin \left(\frac {\pi}{2} \tau\right) \tag {66}
$$

Another elliptical copula is the  $t$ -copula. Letting  $X$  be an random vector distributed as an  $I$ -dimensional multivariate t-student with  $v$  degrees of freedom, mean vector  $\mu$  (for  $v > 1$ ) and covariance matrix  $\frac{v}{v - 2}\Sigma$  (for  $v > 2$ ), we can express  $X$  as

$$
X = \mu + \frac {\sqrt {v}}{\sqrt {S}} Z \tag {67}
$$ where  $S$  is a random variable distributed as an  $\chi^2$  with  $v$  degrees of freedom and  $Z$  is an  $I$ -dimensional normal random vector, independent of  $S$ , with zero mean and linear correlation matrix  $\Sigma$ . The  $I$ -dimensional  $t$ -copula of  $X$  can be expressed as


$$
\mathbf {C} \left(u _ {1}, \dots , u _ {I}\right) = t _ {v, R} ^ {I} \left(t _ {v} ^ {- 1} \left(u _ {1}\right), \dots , t _ {v} ^ {- 1} \left(u _ {I}\right)\right) \tag {68}
$$ where  $t_{v,R}^{I}$  represents the distribution function of  $\frac{\sqrt{v}}{\sqrt{S}} Y$ , where  $Y$  is an  $I$ -dimensional normal random vector, independent of  $S$ , with zero mean and covariance matrix  $R$ .  $t_v^{-1}$  denotes the inverse of the univariate  $t$ -student distribution function with  $v$  degrees of freedom and  $R_{ij} = \frac{\Sigma_{ij}}{\sqrt{\Sigma_{ii}\Sigma_{jj}}}$ .


The  $t$ -copula is radially symmetric and exhibits tail dependence given by

$$
\lambda_ {U} = \lambda_ {L} = 2 - 2 t _ {v + 1} \left(\frac {(v + 1) (1 - \rho)}{(1 + \rho)}\right) ^ {\frac {1}{2}} \tag {69}
$$ where  $\rho$  is the linear correlation of the bivariate t-distribution.


2. Archimedean Copulas An  $I$ -dimensional Archimedean copula function  $\mathbf{C}$  is represented by

$$
\mathbf {C} \left(u _ {1}, \dots , u _ {I}\right) = \phi^ {- 1} \left(\phi \left(u _ {1}\right) + \dots + \phi \left(u _ {I}\right)\right) \tag {70}
$$ where the function  $\phi :[0,1]\to R^{+}$ , called the generator of the copula, is invertible and satisfies  $\phi^{\prime}(u) < 0$ ,  $\phi''(u) > 0$ ,  $\phi(1) = 0$ ,  $\phi(0) = \infty$ . An Archimedean copula is entirely characterized by its generator function. Relevant Archimedean copulas are the Clayton, Frank, Gumbel, and Product copulas, whose generator functions are given by:


<table><tr><td>Copula</td><td colspan="2">Generator φ(u)</td></tr><tr><td>Clayton</td><td>u-θ-1/θ</td><td>for θ ≥ 0</td></tr><tr><td>Frank</td><td>- ln e-θu-1/e-θ-1</td><td>for θ ∈ R\{0}</td></tr><tr><td>Gumbel</td><td>(- ln u)θ</td><td>for θ ≥ 1</td></tr><tr><td>Product</td><td>- ln u</td><td></td></tr></table>

The Clayton copula has lower tail dependence but not upper tail dependence. The Gumbel copula has upper tail dependence but not lower tail dependence. The Frank copula does not exhibit either upper or lower tail dependence.

Archimedean copulas allow for a great variety of different dependence structures, and the ones presented above are especially interesting because they are one-parameter copulas. In particular, the larger the parameter  $\theta$  (in absolute value), the stronger the dependence structure. The Clayton, Frank, and Gumbel copulas are ordered in  $\theta$  (i.e.,  $\mathbf{C}_{\theta_1} \prec \mathbf{C}_{\theta_2}$  for all  $\theta_1 \leq \theta_2$ ). Unlike the Gumbel copula, which does not allow for negative dependence, Clayton and Frank copulas are able to model continuously the whole range of dependence between the lower Fréchet-Hoeffding copula, the product copula and the upper Fréchet-Hoeffding copula. Copulas with this property are called inclusive or comprehensive copulas. Frank copulas are the only radially symmetric Archimedean copulas  $(\mathbf{C} = \mathbf{C}^s)$


For Archimedean copulas, tail dependence and Kendall's tau coefficients can be expressed in terms of the generator function

$$
\tau = 1 + 4 \int_ {0} ^ {1} \frac {\phi (u)}{\phi^ {\prime} (u)} d u \tag {71}
$$

$$
\lambda_ {U} = 2 - 2 \lim  _ {u \rightarrow 0} \frac {\phi^ {- 1 ^ {'}} (2 u)}{\phi^ {- 1 ^ {'}} (u)} \tag {72}
$$

$$
\lambda_ {L} = 2 \lim  _ {u \rightarrow \infty} \frac {\phi^ {- 1 ^ {'}} (2 u)}{\phi^ {- 1 ^ {'}} (u)} \tag {73}
$$ provided the derivatives and limits exist.


Archimedean copulas are interchangeable, which means that the dependence between any two (or more) random variables does not depend on which random variables we choose. In terms of credit risk analysis, this imposes an important restriction on the dependence structure since the default dependence introduced by an Archimedean copula is the same between any group of firms.

3. Marshall-Olkin Copula This copula was already mentioned when we dealt with joint defaults in intensity models. In its bivariate specification the Marshall-Olkin copula is given by

$$
\begin{array}{l} \mathbf {C} \left(u _ {1}, u _ {2}\right) = \min  \left\{u _ {1} ^ {1 - \alpha_ {1}} u _ {2}, u _ {1} u _ {2} ^ {1 - \alpha_ {2}} \right\} \\ = u _ {1} u _ {2} \min  \left\{u _ {1} ^ {- \alpha_ {1}}, u _ {2} ^ {- \alpha_ {2}} \right\} \tag {74} \\ \end{array}
$$ for  $\alpha_{1},\alpha_{2}\in (0,1)$  40


# Copulas for Default Times

Within the reduced-form approach, we can distinguish two approaches to introduce default dependence using copulas. The first one, which we will refer to as Li's approach, was introduced by Li (1999) and represents one of the first attempts to use copula theory systematically in credit risk modeling. Li's approach takes as inputs the marginal default (survival) probabilities of each firm and derives the joint probabilities using a copula function.41 Although Li (1999) studies the case of a normal copula, any other copula can be used within this framework.


If we are using a copula function as a joint distribution for default (survival) times, the simulated vector  $(u_{1},\dots,u_{I})$  of uniform [0, 1] random variables from the copula will correspond to the default  $F_{1},\ldots ,F_{I}$  (survival  $s_1,\ldots ,s_I)$  marginal distributions. Once we have simulated the vector  $(u_{1},\dots,u_{I})$ , we use it to derive the implied default times  $\tau_{1},\dots,\tau_{I}$  such that  $\tau_{i} = F_{i}^{-1}(u_{i})$ , or  $\tau_{i} = s_{i}^{-1}(u_{i})$  in the survival case, for  $i = 1,\dots,I$ .

The second approach was introduced by Schonbucher and Schubert (2001), and here we shall call it the Schonbucher-Schubert (SS) approach. In the algorithm to draw a default time in the case of a single firm, we simulated a realization  $u_{i}$  of a uniform [0, 1] random variable  $U_{i}$  independent of  $(\mathcal{G}_{X,t})$ , and defined the time of default of firm  $i$  as  $\tau_{i}$  such that

$$
\exp \left(- \int_ {o} ^ {\tau_ {i}} \lambda_ {i} (s) d s\right) = u _ {i} \tag {75}
$$ where  $\lambda_{i}$  is the default intensity process of firm  $i$ . The idea of the SS approach is to link the default thresholds  $U_{1},\ldots ,U_{I}$  with a copula.


Schönbucher and Schubert consider that the processes  $\lambda_{1},\ldots \lambda_{I}$  are  $(\mathcal{F}_{i,t})$  -adapted42 and call them pseudo default intensities. Thus,  $\lambda_{i}$  is the default intensity if investors only consider the information generated by the background filtration  $(\mathcal{G}_{X,t})$  and by the default status of firm  $i$ $(\mathcal{G}_{i,t})$  . However, investors are not restricted to the information represented by  $(\mathcal{F}_{i,t})$  as they also observe the default status of the rest of the firms. Therefore,  $\lambda_{i}$  is not the density of default with respect to all the information investors have available, as represented by  $(\mathcal{F}_t)$  , but rather with respect to a smaller information set.

To calculate the default (or survival) probabilities conditional to all the information that investors have available,  $(\mathcal{F}_t)$ , we cannot define those probabilities in terms of the pseudo default intensities  $\lambda_1,\ldots \lambda_I$ . We have to find the

"real" intensities implied by the investors' information set. The difference between pseudo and real intensities lies in the fact that real intensities, in addition to all the information considered by pseudo intensities, include information about the default status of all firms. The default thresholds' copula function includes this information in the SS approach.

In order to find the "real" default intensities  $h_1, \ldots, h_I$ , which are  $(\mathcal{F}_t)$ -adapted, we need to combine both the pseudo default intensities and the copula function, which links the default thresholds. The pseudo default intensity  $\lambda_i$  includes information about the state variables and the default situation of firm  $i$ , and only coincides with the "real" default intensity  $h_i$  in cases of independent default or when the information of the market is restricted to  $(\mathcal{F}_{i,t})$ .

The simulation of the default times in this approach is exactly the same as in Li's approach. The only difference with the SS approach is that it allows us to recover the dynamics of the "real" default intensities  $h_1, \ldots, h_I$ , which include the default contagion effects implicit in the default threshold copula. In contrast to the models of Jarrow and Yu (2001) and Davis and Lo (1999), the SS approach allows the contagion effects to arise endogenously through the use of the copula.

Schönbucher (2003) calls the SS approach a dynamic approach in the sense that it considers the dynamics of the "real" default intensities  $h_1, \ldots, h_I$ , as opposed to Li's approach, which only considers the dynamics of the pseudo default intensities.

As Schonbucher and Schubert (2001) point out, this setup is very general, and the reader has freedom to choose the specification of the default intensities. We can introduce default correlation by both correlating the default intensities, for example with a CID model, and by using any of the copula approaches we have just presented.

In an extension of the SS approach, Rogge and Schonbucher (2003) propose not to use the normal or  $t$ -copulas but Archimedean copulas, arguing that normal and  $t$ -copulas do not imply a realistic dynamic process for default intensities.


Galiani (2003) provides a detailed analysis of the use of copula functions to price multiname credit derivatives using both a normal and Student  $t$  copula.

# Choosing and Calibrating the Copula

Once we have reviewed how to use copula theory in the context of joint default probabilities, we have to choose a copula and estimate its parameters. In order to choose a copula we should consider aspects such as the dependence structure each copula involves as well as the number of parameters we need to estimate.

Since the normal copula presents neither lower nor upper tail dependence, the use of multivariate normal distributions to model default (or price) behavior has been strongly criticized for not assigning enough probability to the occurrence of extreme events and, among them, the periods of default clustering. The use of the  $t$ -copula is the natural answer to the lack of tail dependence, since, subject to the degrees of freedom and covariance matrix, this copula exhibits tail dependence. The main problem in using a normal or  $t$ -copula is the number of parameters we have to estimate, which grows with the dimensionality of the copula.[44]

Archimedean copulas are especially attractive because there exists a large number of one-parameter Archimedean copulas which allows for a great variety of dependence structures. The disadvantage of Archimedean copulas is that they may impose too much dependence structure in the sense that, as they are interchangeable copulas, the dependence between any group of firms is the same independently of the firms we consider.

In case we decide to use an Archimedean copula, Genest and Rivest (1993) propose a procedure for identifying the Archimedean copula that best fits the data.46 The problem is that they consider only the bivariate case and that, as we shall see later, we need a sample of the marginal random variables (the random variables  $X_{1},\ldots ,X_{I}$  whose marginal distributions we link to the copula function) that is available if we are modeling equity returns, but not if we are modeling default times. More generally, Germanian and Scaillet (2004) discuss the issue of choosing the copula that best fits a given data set, using goodness-of-fit tests.


According to Durrleman, Nikeghbali, and Roncalli (2000):

There does not exist a systematic rigorous method for the choice of the copula: nothing can tell us that the selected family of copula will converge to the real structure dependence underlying the data. This can provide biased results since according to the dependence structure selected the obtained results might be different.

Jouanin et al. (2001) use the term model risk to denote this uncertainty in the choice of the copula.

Assuming we manage to select a copula function, we now face the estimation of its parameters. The main problem of the use of copula theory to model credit risk is the scarcity of default data from which to calibrate the copula.

We cannot rely on multiname credit derivatives, such as  $\mathbf{i}^{th}$ -to-default products, to calibrate the copula because, in most cases, they are not publicly traded and also because of their lack of liquidity.

Imagine that, instead of fitting a copula to default times, we are fitting a copula to daily stock returns for  $I$  different firms. Let  $Y_{1},\ldots ,Y_{I}$  be random variables denoting the daily returns of firms  $i = 1,\dots,I$  with marginal distribution functions  $F_{1},\ldots ,F_{I}$  and joint distribution function  $F$ . Sklar's theorem proves that there exists an  $I$ -dimensional copula  $\mathbf{C}$  such that  $F(y_{1},\ldots ,y_{I}) = \mathbf{C}(F_{1}(y_{1}),\ldots ,F_{I}(y_{I}))$  for all  $(y_{1},\ldots ,y_{I})$  in  $R^I$ . In this case, we have available, for each day, a sample of the random vector  $Y_{1},\ldots ,Y_{I}$  that we can use to estimate the parameters of the copula. We would have to estimate the parameters of the marginal distribution functions  $F_{1},\ldots ,F_{I}$  and then estimate the parameters of the copula. Since, in our application to default times, we already have the marginal distributions, determined by the specification of the marginal default intensities, we are left with the estimation of the copula parameters. Providing we have a large sample of the random variables  $Y_{1},\ldots ,Y_{l}$ , we can estimate the copula parameters in several ways.[47]


If the copula is differentiable we can always use maximum likelihood to estimate the parameters.48 De Matteis (2001) mentions that this parametric method may be convenient when we work with a large data set, but in case there are outliers or if the marginal distributions are heavy tailed, a nonparametric approach may be more suitable.

A nonparametric approach would involve the use of the sample version of a dependence measure, such as Kendall's tau or Spearman's rho (or both),49 to calibrate the copula parameters. However, this nonparametric approach is restricted to the bivariate case, and we would need to have at least the same sample dependence measures as copula parameters.50

The estimation methods exposed above rely on the availability of a large sample of the random variables  $Y_{1}, \ldots, Y_{I}$ . However, this is not the case when we work with default times. We do not have available a large sample of default times for the  $I$  firms. In fact, we do not have a single realization of the default times random vector.

One solution is to assume that the marginal default (survival) probabilities and the marginal distributions of the equity returns share the same copula, that is, share the same dependence structure, and use equity returns to estimate the copula parameters. But this shortcut has its own drawbacks. We need to fit a copula to a set of given marginal distributions for the default (survival) times, which are characterized by a default intensity for each firm. Ideally we should estimate the parameters of the copula function using default times data. However, we rarely have enough default times data available such as to properly estimate the parameters of the copula function. In those cases, we must rely on other data sources to calibrate the copula function. For example, a usual practice is to calibrate the copula using equity data of the different firms. However, the dependence of the firms' default probabilities will probably differ from the dependence in the evolution of their equity prices.


Another way of dealing with the estimation of the copula parameters is, as Jouanin et al. (2001) propose, through the use of "original methods that are based on the practice of the credit market rather than mimicking statistical methods that are never used by practitioners." They suggest a method based on Moody's diversity score.[51] The diversity score or binomial expansion technique consists of transforming a portfolio of (credit dependent) defaultable bonds on an equivalent portfolio of uncorrelated and homogeneous credits assumed to mimic the default behavior of the original portfolio, using the so-called diversity score parameter, which depends on the degree of diversification of the original portfolio. We then match the first two moments of the number of defaults within a fixed time horizon for both the original and the transformed portfolio. Since the original portfolio assumes default dependence, the distribution of the number of defaults will depend on the copula parameters. In the transformed portfolio, that is, independent defaults, the number of defaults follows a binomial distribution with some probability  $p$ . Matching the first two moments of the number of defaults in both portfolios, we would extract an estimation for the probability  $p$  and for the copula parameters.[52] However, Moody's diversity score approach has its own drawbacks. Among others, it is a static model with a fixed time horizon, that is, it does not consider when defaults take place but only the number of defaults within the fixed time horizon. In fact, the Committee on the Global Financial System (Bank for International Settlements) suggests, in its last report,[53] that diversity scores "are a fairly crude measure of the degree of diversification in a portfolio of credits."


Similarly to the choice of the copula function, there does not exist a rigorous method to estimate the parameters of the copula. We can talk about parameter risk which, together with the model risk mentioned earlier, are the principal problems we face if we use the copula approach in the modeling of dependent defaults.

# KEY POINTS

- There are two primary types of models in the literature that attempt to describe default processes: structural and reduced-form models. Intensity models represent the most extended type of reduced-form models. In contrast to structural models, the time of default in intensity models is not determined via the value of the firm, but it is the first jump of an exogenously given jump process. The fundamental idea of the intensity-based framework is to model the default time as the first jump of a Poisson process. The default intensity of the Poisson process, also referred to as the hazard rate, can be deterministic (constant or time dependent) or stochastic.
- We review three different ways of introducing default correlations among firms in the framework of intensity models: the conditionally independent defaults (CID) approach, contagion models, and copula functions.
- CID models generate credit risk dependence among firms through the dependence of the firms' intensity processes on a common set of state variables. Firms' default rates are independent once we fix the realization of the state variables. Different CID models differ in their choices of the state variables and the processes they follow. Extensions of CID models introduce joint jumps in the firms' default processes or common default events.
Contagion models extend the CID approach to account for the empirical observation of de fault clustering (periods in which firms' credit risk increases simultaneously and in which the majority of defaults take place). They are based on the idea that, when a firm defaults, the default intensities of related firms jump (upwards), that is, the default of one firm increases the default probabilities of other firms (to the point of potentially causing the default of some of them). These models include, on the specification of default intensities, the existence of contagion sources among firms, which can be explained by either their commercial/financial relationships or simply by their common exposure to the economy.


- In CID and contagion models the specification of the individual intensities includes all the default dependence structure between firms. In contrast, the copula approach separates individual default probabilities from the credit risk dependence structure.
- A copula is a function that links univariate marginal distributions to the joint multivariate distribution function. The copula approach takes as given the marginal default probabilities of the different firms and plugs them into a copula function, which provides the model with the dependence structure to generate joint default probabilities. This approach separates the modeling and estimation of the individual default probabilities, determined by the default intensity processes, from the modeling and calibration or estimation of the device that introduces the credit risk dependence, the copula.


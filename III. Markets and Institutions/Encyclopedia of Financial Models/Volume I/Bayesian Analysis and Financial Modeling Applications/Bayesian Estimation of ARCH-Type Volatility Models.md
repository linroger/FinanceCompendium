
# Bayesian Estimation of ARCH-Type Volatility Models



Abstract: Empirical evidence abounds that asset returns exhibit characteristics such as volatility clustering, asymmetry, and heavy-tailedness. Volatility clustering describes the tendency of returns to alternate between periods of high volatility and low volatility. In addition, volatility responds asymmetrically to positive and negative return shocks—it tends to be higher when the market falls than when it rises. The nonconstancy of volatility has been suggested as an underlying reason for returns' fat tails. Volatility models attempt to systematically explain these stylized facts about asset returns. The Bayesian methodology offers distinct advantages over the classical framework in estimating volatility models. Parameter restrictions, such as stationarity restriction, are notoriously difficult to handle within the frequentist setting and straightforward to implement in the Bayesian one. The MCMC numerical simulation methods facilitate greatly the estimation of complex volatility models, such as Markov-switching volatility models.

Generalized autoregressive conditional heteroskedastic (GARCH) models are used in financial modeling to provide a measure of volatility that could be employed in portfolio selection, risk management, and derivatives pricing. In this entry, we focus on the Bayesian treatment of

GARCH model estimation. Our discussion of prior distributions' choice and posterior analysis is developed around an example where the data are assumed to follow the Student's  $t$  distribution. We then introduce a Bayesian approach to Markov-switching GARCH models and explain in detail the steps one could use to estimate this important extension of the simple GARCH model.


# BAYESIAN ESTIMATION OF THE GARCH(1,1) MODEL

Volatility is a forward-looking concept. It is the variance of the yet unrealized asset return, conditional on all relevant, available information. Denote by  $r_t$  the asset return at time  $t$  and by  $F_{t-1}$  the set of information available up to time  $t-1$ . The information set includes, for example, past asset returns and past trading volume. The return's dynamics can be described as follows:

$$ r_{t} = \mu_{t | t - 1} + \sigma_{t | t - 1} \epsilon_{t} \tag {1}
$$ where


-  $\mu_{t|t - 1}$  is the return's conditional expectation at time  $t$ ,
-  $\sigma_{t|t - 1}$  is the return's conditional volatility at time  $t$ ,
-  $\epsilon_{t}$  is a white noise process (a sequence of independent and identically distributed random variables with zero mean and variance of one).

The aim of volatility models is to specify the dynamics of  $\sigma_{t|t-1}$ . Autoregressive conditional heteroskedastic (ARCH)-type models describe the conditional volatility at time  $t$  as a deterministic function of (attribute of) past squared returns. That is, volatility at time  $t$  can be uniquely determined at time  $t-1$ . The volatility updating expression of a GARCH(1,1) process is given by

$$
\sigma_{t | t - 1}^{2} = \omega + \alpha u_{t - 1}^{2} + \beta \sigma_{t - 1 | t - 2}^{2} \tag {2}
$$ where  $u_{t} = \sigma_{t|t - 1}\epsilon_{t}$ . The model parameters are restricted to be nonnegative—  $\omega >0, \alpha \geq 0$ , and  $\beta \geq 0$  in order to ensure that the conditional variance is positive for all values of the white noise process,  $\epsilon_t$ . Additionally, the requirement for stationarity imposes the constraint that the sum  $\alpha +\beta$  is smaller than one.


Estimation of the model parameters is usually performed by likelihood maximization. Since the return at time  $t$ ,  $r_t$ , depends on  $\sigma_{t|t-1}$  and through it on the conditional volatilities in all previous periods, the unconditional density of the return is not available in closed form (it is a mixture of densities depending on the dynamics of  $\sigma_{t|t-1}^2$ ). Therefore, the likelihood function of the GARCH(1,1) model is expressed as the product of the conditional densities of  $r_t$  for each period  $t$ ,  $t = 1, 2, \ldots, T$ .

Given  $F_{0}$  the likelihood function  $L\left(\boldsymbol {\theta}\mid r_1,r_2,\ldots ,r_T,F_0\right)$  is written as

$$
\begin{array}{l} L (\boldsymbol {\theta} \mid \boldsymbol {r}, F_{0}) = f (r_{1} \mid \boldsymbol {\theta}, F_{0}) f (r_{2} \mid \boldsymbol {\theta}, F_{1}) \dots \\ f \left(r_{T} \mid \boldsymbol {\theta}, F_{T - 1}\right) \tag {3} \\ \end{array}
$$ where  $r = (r_1, r_2, \ldots, r_T)$ . Due to the form of the likelihood function, posterior estimation is performed, without exception, numerically. This, on the other hand, implies that few, if any, restrictions exist on the choice of prior distributions, when estimation is cast in a Bayesian setting.


In this entry, our focus is on the Student's  $t$  distributional assumption for the return disturbances, in an attempt to reflect the empirically observed heavy-tailedness of returns. This comes at the expense of only a marginal increase in complexity (compared to estimation of a model with normally distributed disturbances). The two numerical simulation methods we employ to simulate the posterior distribution of the vector of model parameters,  $\theta$ , are the Metropolis-Hastings algorithm and the Gibbs sampler.2

Our focus is the model of returns in (1) with a modification. We assume that the return mean is unconditional and equal to zero. That is, we define our parameter vector as  $\pmb{\theta} = (\omega, \alpha, \beta, \nu)$

# Distributional Setup

Next, we outline the general setup we use in our Bayesian estimation of the GARCH(1,1) model. We modify this setup in the second half of the entry, where we discuss regime switching.

# Likelihood Function

Assuming that  $\epsilon_{t}$  is distributed with a Student's  $t$  distribution with  $\nu$  degrees of freedom, we write the likelihood function for the model's parameters as

$$
L (\boldsymbol {\theta} \mid \boldsymbol {r}, F_{0}) \propto \prod_{t = 1}^{T} \left[ \left(\sigma_{t | t - 1}^{2}\right)^{- 1} \left(1 + \frac{1}{\nu} \frac{r_{t}^{2}}{\sigma_{t | t - 1}^{2}}\right)^{- \frac{\nu + 1}{2}} \right] \tag {4}
$$ where  $\sigma_0^2$  is considered as a known constant, for simplicity. Under the Student's  $t$  assumption for  $\epsilon_{t}$ , the conditional volatility at time  $t$  is given by


$$
\frac{\nu}{\nu - 2} \sigma_{t}^{2}
$$ for  $\nu$  greater than 2.


# Prior Distributions

For simplicity, assume that the conditional variance parameters have uninformative diffuse prior distributions over their respective ranges,3

$$
\pi (\omega , \alpha , \beta) \propto 1 I_{\{\theta_{G} \}} \tag {5}
$$ where  $I_{\{\theta_G\}}$  is an indicator function reflecting the constraints on the conditional variance parameters,


$$
I_{\left\{\theta_{G} \right\}} = \left\{ \begin{array}{l l} 1 & \text{if } \omega > 0, \alpha > 0, \text{an d} \beta > 0, \\ 0 & \text{ot he rw is e} \end{array} \right. \tag {6}
$$

The choice of prior distribution for the degrees-of-freedom parameter,  $\nu$ , requires more care. Bauwens and Lubrano (1998) show that if a diffuse prior for  $\nu$  is asserted on the interval  $[0,\infty)$ , the posterior distribution of  $\nu$  is not proper (its right tail does not decay quickly enough, so that the posterior does not integrate to 1). Therefore, the prior for  $\nu$  needs to be proper. Geweke (1993a) advocates the use of an exponential prior distribution with density given by

$$
\pi (\nu) = \lambda \exp (- \nu \lambda) \tag {7}
$$

The mean of the exponential distribution is given by  $1 / \lambda$ . The parameter  $\lambda$  can thus be uniquely determined from the prior intuition about  $\nu$ 's mean. Another prior option for  $\nu$  is a uniform prior over an interval  $[0, M]$ , where

$M$  is some finite number. Empirical research indicates that the degrees-of-freedom parameter calibrated from financial returns data (especially of daily and higher frequency) is usually less than 20, so the upper bound,  $M$ , of  $\nu$ 's range could be fixed at 20, for instance. Bauwens and Lubrano propose a third prior for  $\nu$ —the upper half of a Cauchy distribution centered around zero. In our discussion, we adopt the exponential prior distribution for  $\nu$  in (7).

# Posterior Distributions

Given the distributional assumptions above, the posterior distribution of  $\pmb{\theta}$  is written as

$$
\begin{array}{l} p (\boldsymbol {\theta} \mid \boldsymbol {r}, F_{0}) \propto \prod_{t = 1}^{T} \left[ \left(\sigma_{t \mid t - 1}^{2}\right)^{- 1} \left(1 + \frac{1}{\nu} \frac{r_{t}^{2}}{\sigma_{t \mid t - 1}^{2}}\right)^{- \frac{\nu + 1}{2}} \right] \\ \times \exp (- \nu \lambda) \\ \times I_{\left\{\theta_{G} \right\}} \tag {8} \\ \end{array}
$$

The restrictions on  $\omega, \alpha,$  and  $\beta$  are enforced during the sampling procedure by rejecting the draws that violate them. Stationarity can also be imposed and dealt with in the same way.

As evident from the expression in (8), the joint posterior density does not have a closed form. Posterior numerical simulations are facilitated if one employs a specific representation of the Student's  $t$  distribution—a scale mixture of normal distributions. We explain this representation before we move on to the discussion of sampling algorithms.

# Mixture of Normals Representation of the Student's  $t$  Distribution

Suppose that return  $r_t$  is distributed with the Student's  $t$  distribution with  $\nu$  degrees of freedom, scale parameter  $\sigma$ , and location parameter  $\mu$ . This distributional assumption can be represented as a scale mixture of normal distributions, given by

$$ r_{t} \mid \mu_{t}, \sigma_{t}, \eta_{t} \sim \mathrm{N} \left(\mu_{t}, \frac{\sigma_{t}}{\eta_{t}}\right) \tag {9}
$$ where  $\eta$ , the so-called "mixing variable," has the gamma distribution,


$$
\eta_{t} \mid v \sim \operatorname{Ga mm a} \left(\frac{v}{2}, \frac{v}{2}\right), \quad \text{fo r} \quad t = 1, \dots , T \tag {10}
$$

The benefit of employing this representation is increased tractability of the posterior distribution because the nonlinear expression for the model's likelihood in (4) is linearized. Sampling from the conditional distributions of the remaining parameters is thus greatly facilitated. This comes at the expense of  $T$  additional model parameters,  $\eta = (\eta_{1},\dots ,\eta_{T})^{\prime}$ , whose conditional posterior distribution needs to be simulated as well.5

Under this Student's  $t$  representation, the parameter vector,  $\theta$ , is transformed to

$$
\boldsymbol {\theta} = \left(\omega , \alpha , \beta , v, \eta^{\prime}\right) \tag {11}
$$

The log-likelihood function for  $\pmb{\theta}$  is simply the normal log-likelihood,

$$
\begin{array}{l} \log \left(L (\boldsymbol {\theta} \mid \boldsymbol {r}, F_{0})\right) = \operatorname{co ns t} - \frac{1}{2} \sum_{t = 1}^{T} \\ \times \left[ \log \left(\sigma_{t | t - 1}^{2}\right) - \log (\eta_{t}) + \frac{\eta_{t} r_{t}^{2}}{\sigma_{t | t - 1}^{2}} \right] \tag {12} \\ \end{array}
$$

The posterior distribution of  $\theta$  has an additional term reflecting the mixing variables' distribution. The log-posterior distribution is written as

$$
\begin{array}{l} \log \left(p (\boldsymbol {\theta} \mid \boldsymbol {r}, F_{0})\right) = \operatorname{co ns t} - \frac{1}{2} \sum_{t = 1}^{T} \\ \times \left[ \log \left(\sigma_{t | t - 1}^{2}\right) - \log (\eta_{t}) + \frac{\eta_{t} r_{t}^{2}}{\sigma_{t | t - 1}^{2}} \right] \\ + \frac{T v}{2} \log \left(\frac{v}{2}\right) - T \log \left(\Gamma \left(\frac{v}{2}\right)\right) \\ + \left(\frac{\nu}{2} - 1\right) \sum_{t = 1}^{T} \log (\eta_{t}) \\ - \frac{\nu}{2} \sum_{t = 1}^{T} \left(\eta_{t}\right) - \nu \lambda \tag {13} \\ \end{array}
$$

$$
\text{fo r} \omega > 0, \quad \alpha \geq 0, \quad \text{an d} \quad \beta \geq 0
$$

Next, we discuss some strategies for simulating the posterior in (13).

# Posterior Simulations with the Metropolis-Hastings Algorithm

The Metropolis-Hastings (M-H) algorithm could be implemented in two ways. The first way is by sampling the whole parameter vector,  $\pmb{\theta}$ , from a proposal distribution (usually a multivariate Student's  $t$  distribution) centered on the posterior mode and scaled by the negative inverse Hessian (evaluated at the posterior mode). The second way is by employing a sampling scheme in which the parameter vector is updated component by component. Here, we focus on the latter M-H implementation.

Consider the decomposition of the parameter vector  $\pmb{\theta}$  into three components,  $\pmb{\theta} = (\pmb{\theta}_G, \nu, \pmb{\eta}')$ , where  $\pmb{\theta}_G = (\omega, \alpha, \beta)$ . We would like to employ a scheme of sampling consecutively from the conditional posterior distributions of the components, given, respectively, by  $p(\pmb{\theta}_G | \pmb{\eta}, \nu, \pmb{r}, F_0)$ ,  $p(\nu | \pmb{\theta}_G, \pmb{\eta}, \pmb{r}, F_0)$ , and  $p(\pmb{\eta} | \pmb{\theta}_G, \nu, \pmb{r}, F_0)$ . The scale mixture of normals representation of a Student's  $t$  distribution allows us to recognize the conditional posterior distribution of the last component,  $\pmb{\eta}$ , as a standard distribution. For the first two components,  $\pmb{\theta}_G$  and  $\nu$ , whose posterior distributions are not of standard form, we offer two posterior simulation approaches and mention alternatives that have been suggested in the literature.

# Conditional Posterior Distribution for  $\eta$

The full conditional posterior distribution for the (independently-distributed) mixing parameters,  $\eta_t$ ,  $t = 1,\dots,T$ , can be shown to be a gamma distribution,

$$
\begin{array}{l} p \left(\eta_{t} \mid \boldsymbol {\theta}_{G}, v, r, F_{0}\right) \\ = \operatorname{Ga mm a} \left(\frac{\nu + 1}{2}, \frac{r_{t}^{2}}{2 \sigma_{t | t - 1}^{2}} + \frac{\nu}{2}\right) \tag {14} \\ \end{array}
$$

# Conditional Posterior Distribution for  $\nu$

It can be seen from (13) that the conditional posterior distribution of the degrees-of-freedom parameter,  $\nu$ , does not have a standard form.

The kernel of the posterior distribution is given by the expression,

$$ p (\nu | \boldsymbol {\theta}_{G}, \boldsymbol {\eta}, \boldsymbol {r}, F_{0}) \propto \Gamma \left(\frac{\nu}{2}\right)^{- T} \left(\frac{\nu}{2}\right)^{\frac{T \nu}{2}} \exp (\nu \lambda^{*}) \tag {15}
$$ where


$$
\lambda^{*} = \frac{1}{2} \sum_{t = 1}^{T} \left(\log \left(\eta_{t}\right) - \eta_{t}\right) - \lambda \tag {16}
$$

Geweke (1993b) describes a rejection sampling approach that could be employed to simulate draws from the conditional posterior distribution of  $\nu$  in (15). In this entry, we employ a sampling algorithm called the griddy Gibbs sampler. The appendix provides details on it.

# Proposal Distribution for  $\theta_{G}$

The kernel of  $\theta_{G}$  's log-posterior distribution is given by the expression,

$$
\begin{array}{l} \log \left(p \left(\boldsymbol {\theta}_{G} \mid \boldsymbol {\theta}_{- \boldsymbol {\theta}_{G}}, \boldsymbol {r}, F_{0}\right)\right) \\ = \operatorname{co ns t} - \frac{1}{2} \sum_{t = 1}^{T} \left[ \log \left(\sigma_{t | t - 1}^{2}\right) + \frac{\eta_{t} r_{t}^{2}}{\sigma_{t | t - 1}^{2}} \right] \\ \end{array}
$$ for  $\omega >0$  ，  $\alpha \geq 0$  ， and  $\beta \geq 0$


where  $\sigma_{t|t - 1}^2,t = 1,\dots ,T,$  is a function of  $\pmb{\theta}_{G}$

We specify a Student's  $t$  proposal distribution for  $\theta_{G}$ , centered on the posterior mode of  $\theta_{G}$  and scaled by the negative inverse Hessian of the posterior kernel, evaluated at the posterior mode. Other approaches for posterior simulation, for example, the griddy Gibbs sampler, could be employed as well. (In this case, the components of  $\theta_{G}$  would be sampled separately.)

Having determined the full conditional posterior distribution  $\eta$ , as well as a proposal distribution for  $\theta_G$  and a sampling scheme for  $\nu$ , implementing a hybrid M-H algorithm is straightforward. Its steps are as follows. At iteration  $m$  of the algorithm,

- Draw an observation,  $\pmb{\theta}_{G}^{*}$ , of the vector of conditional variance parameters,  $\pmb{\theta}_{G}$ , from its proposal distribution.

- Check whether the positivity (and stationarity) parameter restrictions on the components of  $\theta_{G}$  are satisfied. If not, draw  $\theta_{G}^{*}$  repeatedly until they are satisfied.
- Compute the acceptance probability

$$
\begin{array}{l} a \left(\boldsymbol {\theta}_{G}^{*}, \boldsymbol {\theta}_{G}^{(t - 1)}\right) \\ = \min  \left\{1, \frac{p \left(\boldsymbol {\theta}_{G}^{*} \mid \boldsymbol {y}\right) / q \left(\boldsymbol {\theta}_{G}^{*} \mid \boldsymbol {\theta}_{G}^{(t - 1)}\right)}{p \left(\boldsymbol {\theta}_{G}^{(t - 1)} \mid \boldsymbol {y}\right) / q \left(\boldsymbol {\theta}_{G}^{(t - 1)} \mid \boldsymbol {\theta}_{G}^{*}\right)} \right\} \tag {17} \\ \end{array}
$$ where  $p(\theta_G|y)$  is  $\theta_{G}$  's posterior distribution and  $q(\theta_G|\cdot)$  is  $\theta_{G}$  's proposal distribution. The previous draw of the parameter vector is given by  $\theta_{G}^{t - 1}$ . Accept or reject the candidate draw  $\theta_{G}^{*}$  with probability  $a\left(\theta_{G}^{*},\theta_{G}^{(t - 1)}\right)$ .


- Draw an observation,  $\pmb{\eta}^{(m)}$ , from the full conditional posterior distribution,  $p(\eta_t \mid \pmb{\theta}_G^{(m)}, \pmb{r}, F_0)$ , in (14)
- Draw an observation,  $\nu^{(m)}$ , from its conditional posterior distribution with kernel in (15) using the griddy Gibbs sampler as explained in the appendix.

At each iteration of the sampling algorithm, the sampling strategy described above produces a large output consisting of the draws from the model parameters and the  $T$  mixing variables,  $\eta$ . However, since the role of the mixing parameters is only auxiliary and their conditional distribution is of no interest, at any iteration of the algorithm above one needs to store only the latest draw of  $\eta$  (as well as the draws of  $\nu$  and  $\theta_{G}$ , of course).

In the simple GARCH model discussed now, it is implicitly assumed that expression (2) describes the volatility process during the whole sample period and (at least) in the short run after the end of the sample. That is, the parameters of the model are unchanged throughout. It is not inconceivable, however, that the volatility dynamics differ in different periods. Then, volatility forecasts produced by a simple (single-regime) model are likely to overestimate volatility during periods of low volatility and underestimate it during periods of high volatility. In the next section, we discuss a class of models extending the simple GARCH(1,1) model, which could potentially provide more accurate volatility forecasting power. Regime-switching models incorporate the possibility that the dynamics of the volatility process evolves through different states of nature, which we call regimes.


# MARKOV-SWITCHING GARCH MODELS

The Markov-switching (MS) models, introduced by Hamilton (1989), provide maximal flexibility in modeling transitions of the volatility dynamics across regimes. They form the class of the so-called endogenous regime-switching models in which transitions between states of nature are governed by parameters estimated within the model; the number of transitions is not specified a priori, unlike the number of states. Each volatility state could be revisited multiple times. In our discussion below, we use the terms "state" and "regime" interchangeably.

Different approaches to introducing regime changes in the GARCH process have been proposed in the empirical finance literature. Hamilton and Susmel (1994) incorporate a regime-dependent parameter,  $g_{S_i}$ , into the standard deviation (scale) of the returns process,

$$ r_{t} = \mu_{t | t - 1} + \sqrt{g s_{t}} \sigma_{t | t - 1} \epsilon_{t}
$$ where  $S_{t}$  denotes period  $t$ 's regime. Another option, pursued by Cai (1994), is to include a regime-dependent parameter as part of the constant in the conditional variance equation,


$$
\sigma_{t | t - 1}^{2} = \left(\omega + g_{S_{t}}\right) + \sum_{p = 1}^{P} \alpha_{p} u_{t - p}^{2}
$$

Both Hamilton and Susmel (1994) and Cai (1994) model the dynamics of the conditional variance with an ARCH process. The reason, as explained further below, is that when GARCH term(s) are present in the process, the regime dependence makes the likelihood function analytically intractable.


The most flexible approach to introducing regime-dependence is to allow all parameters of the conditional variance equation to vary across regimes. That approach is suggested by Henneke, Rachev, Fabozzi, and Nikolov (2011) who model jointly the conditional mean as an ARMA(1,1) process in a Bayesian estimation setting. The implication for the dynamics of the conditional variance is that the manner in which the variance responds to past return shocks and volatility levels changes across regimes. For example, high-volatility regimes could be characterized by "hyper-sensitivity" of asset returns to return shocks and high volatility in one period could have a more lasting effect on future volatilities compared to low-volatility regimes. This would call for a different relationship between the parameters  $\alpha$  and  $\beta$  in different regimes.

In this section, we discuss the estimation method of Henneke, Rachev, Fabozzi, and Nikolov (2011), with some modifications.

# Preliminaries

Suppose that there are three states the conditional volatility can occupy, denoted by  $i,i = 1,2,3$ . We could assign economic interpretation to them by labeling them "a low-volatility state," "a normal-volatility state," and "a high-volatility state." Denote by  $\pi_{ij}$  the probability of a transition from state  $i$  to state  $j$ . The transition probabilities,  $\pi_{ij}$ , could be arranged in the transition probability matrix,  $\Pi$ ,

$$
\Pi = \left( \begin{array}{c c c} \pi_{1 1} & \pi_{1 2} & \pi_{1 3} \\ \pi_{2 1} & \pi_{2 2} & \pi_{2 3} \\ \pi_{3 1} & \pi_{3 2} & \pi_{3 3} \end{array} \right) \tag {18}
$$ such that the probabilities in each row sum up to 1. The Markov property (central to model estimation, as we will see below) that lends its name to the MS models concerns the memory of the process—which volatility regime the system visits in a given period depends only on the


regime in the previous period. Analytically, the Markov property is expressed as

$$
P \left(S_{t} \mid S_{t - 1}, S_{t - 2}, \dots , S_{1}\right) = P \left(S_{t} \mid S_{t - 1}\right) \tag {19}
$$

Each row of  $\Pi$  in (18) represents the three-dimensional conditional probability distribution of  $S_{t}$ , conditional on the regime realization in the previous period,  $S_{t-1}$ . We say that  $\{S_{t}\}_{t=1}^{T}$  is a three-dimensional (discrete-time) Markov chain with transition matrix,  $\Pi$ .

In the regime-switching GARCH(1,1) setting, the expression for the conditional variance dynamics becomes

$$
\sigma_{t \mid t - 1}^{2} = \omega (S_{t}) + \alpha (S_{t}) u_{t - 1}^{2} + \beta (S_{t}) \sigma_{t - 1 \mid t - 2}^{2} \tag {20}
$$

For each period  $t$ ,

$$
(\omega (S_{t}), \alpha (S_{t}), \beta (S_{t})) = \left\{ \begin{array}{l l} (\omega_{1}, \alpha_{1}, \beta_{1}) & \text{if S_{t} = 1}, \\ (\omega_{2}, \alpha_{2}, \beta_{2}) & \text{if S_{t} = 2}, \\ (\omega_{3}, \alpha_{3}, \beta_{3}) & \text{if S_{t} = 3} \end{array} \right.
$$

The presence of the GARCH component in (20) complicates the model estimation substantially. To see this, notice that, via  $\sigma_{t - 1|t - 2}^2$ , the current conditional variance depends on the conditional variances from all preceding periods and, therefore, on the whole unobservable sequence of regimes up to time  $t$ . A great number of regime paths could lead to the particular conditional variance at time  $t$  (the number of possible regime combinations grows exponentially with the number of time periods), rendering classical estimation very complicated. For that reason, the early treatments of MS models include only an ARCH component in the conditional variance equation. The MCMC methodology, however, copes easily with the specification in (20), as we will see below.

We adopt the same return decomposition as in (1)—with the conditional mean set to zero—and note that, given the regime path, (20) represents the same conditional variance dynamics as a simple GARCH(1,1) process. We return to this point again further below when we discuss estimation of that MS GARCH(1,1) model.

Next, we outline the prior assumptions for the MS GARCH(1,1) model.

# Prior Distributional Assumptions

The parameter vector of the MS GARCH(1,1) model, specified by (1), (20), and the Markov chain  $\{S_t\}_{t=1}^T$ , is given by

$$
\boldsymbol {\theta} = \left(\eta^{\prime}, v, \theta_{G, 1}, \theta_{G, 2}, \theta_{G, 3}, \pi_{1}, \pi_{2}, \pi_{3}, S\right) \tag {21}
$$ where, for  $i = 1,2,3,$


$$
\boldsymbol {\theta}_{G, i} = \left(\omega_{i}, \alpha_{i}, \beta_{i}\right) \quad \text{an d} \quad \boldsymbol {\pi}_{i} = \left(\pi_{i 1}, \pi_{i 2}, \pi_{i 3}\right)
$$ and  $S$  is the regime path for all periods,


$$
S = (S_{1}, \dots , S_{T})
$$

Our prior specifications for  $\eta$  and  $\nu$  remain unchanged from our earlier discussion: The scale-mixture-of-normals mixing parameters,  $\eta$ , and the degrees-of-freedom parameter,  $\nu$ , are not affected by the regime specification in the MS GARCH(1,1) model. We assert prior distributions for the vector of conditional variance parameters,  $\theta_{G,i}$ , under each regime,  $i$ , and a prior distribution for each triple of transition probabilities  $\pi_i$ ,  $i = 1,2,3$ .

# Prior Distributions for  $\theta_{G,i}$

To reflect our prior intuition about the effect the three regimes have on the conditional variance parameters, we assert proper normal priors for  $\theta_{G,i}, i = 1,2,3$ .

$$
\boldsymbol {\theta}_{G, i} \sim \mathrm{N} \left(\boldsymbol {\mu}_{i}, \boldsymbol {\Sigma}_{i}\right) I_{\{\boldsymbol {\theta}_{G, i} \}} \tag {22}
$$ where the indicator function,  $I_{\{\theta_{G,i}\}}$  is given in (6). As explained earlier in the entry, the parameter constraints are imposed during the implementation of the sampling algorithm.


# Prior Distribution for  $\pi_{i}$

A convenient prior for the probability parameter in a binomial experiment is the beta distribution. The analogue of the beta distribution in the multivariate case is the so-called Dirichlet distribution. Therefore, we specify a Dirichlet prior distribution for each triple of transition probabilities,  $i = 1,2,3$

$$
\pi_{i} \sim \operatorname{Di ri ch le t} \left(a_{i 1}, a_{i 2}, a_{i 3}\right) \tag {23}
$$

To elicit the prior parameters,  $a_{ij}, i, j = 1,2,3,$  it is sufficient that one express prior intuition about the expected value of each of the transition probabilities in a triple, then solve the system equations for  $a_{ij}$ .

# Estimation of the MS GARCH Model

The evolution of volatility in the MS GARCH model is governed by the realizations of the unobservable (latent) regime variable,  $S_{t}$ ,  $t = 1,\dots ,T$ . Hence, the discrete-time Markov chain,  $\{S_t\}_{t = 1}^T$  is also called a hidden Markov process. Earlier, we briefly discussed that the presence of the hidden Markov process creates a major estimation difficulty in the classical setting. The Bayesian methodology, in contrast, deals with the latent-variable characteristic in an easy and natural way: The latent variable is simulated together with the model parameters. In other words, the parameter space is augmented with  $S_{t}$ ,  $t = 1,\ldots ,T$ , in much the same way as the vector of mixing variables,  $\eta$ , was added to the parameter space in estimating the Student's  $t$  GARCH(1,1) model. The distribution of  $S$  is a multinomial distribution,

$$
\begin{array}{l} p \left(S \mid \pi\right) = \prod_{t = 1}^{T - 1} p \left(S_{t + 1} \mid S_{t}, \pi\right) \\ = \pi_{1 1}^{n_{1 1}} \pi_{1 2}^{n_{1 2}} \dots \pi_{3 2}^{n_{3 2}} \pi_{3 3}^{n_{3 3}} \tag {24} \\ = \pi_{1 1}^{n_{1 1}} \pi_{1 2}^{n_{1 2}} \left(1 - \pi_{1 1} - \pi_{1 2}\right)^{n_{1 3}} \dots \\ \pi_{3 2}^{n_{3 2}} \left(1 - \pi_{3 1} - \pi_{3 2}\right)^{n_{3 3}} \\ \end{array}
$$ where  $n_{ij}$  denotes the number of times the chain transitions from state  $i$  to state  $j$  during the span of period 1 through period T. The first equality in (24) follows from the Markov property of  $\{S_t\}_{t = 1}^T$


Based on our discussion of the Student's  $t$  GARCH(1,1) model and the hidden Markov process, as well as the prior distributional assumptions for  $\pi_{i}$  and  $\theta_{G,i}, i = 1,2,3,$  the joint log-posterior distribution of the MS GARCH(1,1) model's parameter vector  $\pmb{\theta}$  is given by


$$
\begin{array}{l} \log (p (\boldsymbol {\theta} \mid \boldsymbol {r}, F_{0})) = \text{co ns t} \\ - \frac{1}{2} \sum_{t = 1}^{T} \left[ \log \left(\sigma_{t | t - 1}^{2}\right) + \log (\eta_{t}) + \frac{\eta_{t} r_{t}^{2}}{\sigma_{t | t - 1}^{2}} \right] \\ - \frac{1}{2} \sum_{i = 1}^{3} \left(\boldsymbol {\theta}_{G, i} - \boldsymbol {\mu}_{i}\right)^{\prime} \boldsymbol {\Sigma}_{i}^{- 1} \left(\boldsymbol {\theta}_{G, i} - \boldsymbol {\mu}_{i}\right) I_{\{S (t) = i \}} \\ + \frac{T v}{2} \log \left(\frac{v}{2}\right) - T \log \left(\Gamma \left(\frac{v}{2}\right)\right) + \left(\frac{v}{2} - 1\right) \\ \times \sum_{t = 1}^{T} \log (\eta_{t}) - \frac{\nu}{2} \sum_{t = 1}^{T} \eta_{t} - \nu \lambda \\ + \sum_{i = 1}^{3} \sum_{j = 1}^{3} \left(a_{i j} + n_{i j} - 1\right) \log \left(\pi_{i j}\right) \tag {25} \\ \end{array}
$$

$$
\text{fo r} \quad \omega_{i} > 0, \quad \alpha_{i} \geq 0, \quad \text{an d} \quad \beta_{i} \geq 0
$$

Although (25) looks very similar to the joint log-posterior in (13), there is a crucial difference. The model's log-likelihood (given by the right-hand-side term in the first line of (25)) depends on the whole sequence of regimes,  $S$ . Conditional on  $S$ , however, it is the same log-likelihood as in (12). We will exploit this fact in constructing the posterior simulation algorithm as an extension of the algorithm for the Student's  $t$  GARCH(1,1) model estimation.

We now outline the posterior results for  $\pi_i$ ,  $S$ , and  $\theta_{G,i}$ . The posterior results for the degrees-of-freedom parameter,  $\nu$ , and the mixing variables,  $\eta$ , remain unchanged from our earlier discussion.

# Conditional Posterior Distribution of  $\pi_{i}$

The conditional log-posterior distribution of the vector of transition probabilities,  $\pi_{i}, i = 1,2,3,$  is given by

$$
\begin{array}{l} \log \left(p \left(\pi_{i} \mid r, \boldsymbol {\theta}_{- \pi_{i}}\right)\right) = \text{co ns t} \\ + \sum_{j = 1}^{3} \left(a_{i j} + n_{i j} - 1\right) \log \left(\pi_{i j}\right) \\ \text{fo r} \quad i = 1, 2, 3 \tag {26} \\ \end{array}
$$ where  $\pmb{\theta}_{-\pi_i}$  denotes the vector of all parameters except  $\pmb{\pi}_i$ . The expression in (26) is readily


recognized as the logarithm of the kernel of a Dirichlet distribution with parameters  $(a_{i1} + n_{i1},a_{i2} + n_{i2},a_{i3} + n_{i3})$ . The parameters  $a_{ij}$  are specified a priori, while the parameters  $n_{ij}$  can be determined by simply counting the number of times the Markov chain,  $\{S_t\}_{t = 1}^T$ , transitions from  $i$  to  $j$ .

Sampling from the Dirichlet distribution in (26) is accomplished easily in the following way. For each  $i, i = 1, 2, 3$ ,

(1) sample three independent observations,

$$
\begin{array}{l} y_{i 1} \sim \chi_{2 (a_{i 1} + n_{i 1})}^{2}, y_{i 2} \sim \chi_{2 (a_{i 2} + n_{i 2})}^{2}, \\ y_{i 3} \sim \chi_{2 (a_{i 3} + n_{i 3})}^{2} \\ \end{array}
$$

(2) set

$$
\begin{array}{l} \pi_{i 1} = \frac{y_{i 1}}{\sum_{k = 1}^{3} y_{i k}}, \quad \pi_{i 2} = \frac{y_{i 2}}{\sum_{k = 1}^{3} y_{i k}}, \\ \pi_{i 3} = \frac{y_{i 3}}{\sum_{k = 1}^{3} y_{i k}} \\ \end{array}
$$

# Conditional Posterior Distribution of  $S$

In the three-regime switching setup of this entry, the number of regime paths that could have potentially generated  $S_{T}$ , the regime in the final period, is  $3^{T}$ . The level of complexity makes it impossible to obtain a draw of the whole  $1 \times T$  vector,  $S$ , at once. Instead, its components can be drawn one at a time, in a  $T$ -step procedure. In other words, at each step, we sample from the full conditional posterior density of  $S_{t}$  given by

$$ p \left(S_{t} = i \mid r, \theta_{- S}, S_{- t}\right) \tag {27}
$$ where  $\pmb{\theta}_{-S}$  is the parameter vector in (21) excluding  $S$  and  $S_{-t}$  is the regime path excluding the regime at time  $t$ . Applying the rules of conditional probability,  $p(S_t = i \mid r, \pmb{\theta}_{-S_t})$  is written as


$$
\begin{array}{l} p \left(S_{t} = i \mid r, \theta_{- S}, S_{- t}\right) = \frac{p \left(S_{t} = i , S_{- t} , r \mid \theta_{- S}\right)}{p \left(S_{- t} , r \mid \theta_{- S}\right)} \\ = \frac{p (r \mid \boldsymbol {\theta}_{- S} , \boldsymbol {S}_{- t} , S_{t} = i) p (S_{t} = i , \boldsymbol {S}_{- t} \mid \boldsymbol {\theta}_{- S})}{p (\boldsymbol {S}_{- t} , \boldsymbol {r} \mid \boldsymbol {\theta}_{- S})} \tag {28} \\ \end{array}
$$

The first term in the numerator,  $p(r|\theta_{-S},S_{-t},S_t = i)$  is simply the model's likelihood evaluated at a given regime path, in which  $S_{t} = i$  . The second term in the numerator,  $p(S_{t} = i,S_{-t})$  , is given, by the Markov property, by

$$
\begin{array}{l} p \left(S_{t} = i, S_{- t} \mid \boldsymbol {\theta}_{- S}\right) = p \left(S_{t} = i, S_{t - 1} = j, S_{t + 1} \right. \\ = k \mid \boldsymbol {\theta}_{- S}) \\ = \pi_{j, i} \pi_{i, k} \tag {29} \\ \end{array}
$$ while the denominator in (28) is expressed as


$$ p \left(\boldsymbol {S}_{- t}, \boldsymbol {r} \mid \boldsymbol {\theta}_{- S}\right) = \sum_{s = 1}^{3} p \left(S_{t} = s, \boldsymbol {S}_{- t}, \boldsymbol {r} \mid \boldsymbol {\theta}_{- S}\right) \tag {30}
$$

Using (28), (29), and (30), we obtain the conditional posterior distribution of  $S_{t}$  as

$$
\begin{array}{l} p \left(S_{t} = i \mid r, \theta_{- S}, S_{- t}\right) \\ = \frac{p \left(\boldsymbol {r} \mid \boldsymbol {\theta}_{- S} , \boldsymbol {S}_{- t} , S_{t} = i\right) \pi_{j , i} \pi_{i , k}}{\sum_{s = 1}^{3} p \left(\boldsymbol {r} \mid \boldsymbol {\theta}_{- s} , \boldsymbol {S}_{- t} , S_{t} = s\right) \pi_{j , s} \pi_{s , k}} \tag {31} \\ \end{array}
$$ for  $i = 1,2,3$ . An observation,  $S_{t}^{*}$ , from the conditional density in (31) is obtained in the following way:


- Compute the probability in (31) for  $i = 1,2,3$ .
- Split the interval (0, 1) into three intervals of lengths proportional to the probabilities in step (1).
- Draw an observation,  $u$ , from the uniform distribution  $U[0,1]$ .
- Depending on which interval  $u$  falls into, set  $S_{t}^{*} = i$ .

To draw the regime path,  $S^{(m)}$ , at the  $m$ th iteration of the posterior simulation algorithm,

- Draw  $S_1^{(m)}$  from  $p(S_1 \mid r, \theta_{-S_1})$  in (31). Update  $S^{(m)}$  with  $S_1^{(m)}$ .
For  $t = 2,\dots ,T$  draw  $S_{t}^{(m)}$  from  $p\left(S_t\mid r,\theta_{-S_t}\right)$  in (31). Update  $\mathbf{S}^{(m)}$  with  $S_{t}^{(m)}$

# Proposal Distribution for  $\theta_{G,i}$

The posterior distribution of the vector of conditional variance parameters is not available in closed form because of the regime dependence of the conditional variance. Since in the regime-switching setting we adopted informative prior distributions for  $\theta_{G,i}$ ,  $i = 1,2,3$ , the kernel of the conditional log-posterior distribution is a bit different from the one in (17) and is given by


$$
\begin{array}{l} \log \left(p \left(\boldsymbol {\theta}_{G, i} \mid \boldsymbol {\theta}_{- \boldsymbol {\theta}_{G, i}}, \boldsymbol {r}, F_{0}\right)\right) = \text{co ns t} \\ - \frac{1}{2} \sum_{t = 1}^{T} \left[ \log \left(\sigma_{t | t - 1}^{2}\right) + \log \left(\eta_{t}\right) + \frac{\eta_{t} r_{t}^{2}}{\sigma_{t | t - 1}^{2}} \right] \\ - \frac{1}{2} \sum_{i = 1}^{3} \left(\boldsymbol {\theta}_{G, i} - \boldsymbol {\mu}_{i}\right)^{\prime} \boldsymbol {\Sigma}_{i}^{- 1} \left(\boldsymbol {\theta}_{G, i} - \boldsymbol {\mu}_{i}\right) I_{\{S_{t} = i \}}, \tag {32} \\ \end{array}
$$ for  $\omega > 0$ ,  $\alpha \geq 0$ ,  $\beta \geq 0$ , and


$$ i = 1, 2, 3
$$

For a given regime path,  $S$ , the only difference between the earlier posterior kernel and (32) is the term reflecting the informative prior of  $\pmb{\theta}_{G,i}$ . Therefore, specifying a proposal distribution for  $\pmb{\theta}_{G,i}$  is in no way different from the approach in the single-regime Student's  $t$  GARCH(1,1) setting.

# Sampling Algorithm for the Parameters of the MS GARCH (1,1) Model

The sampling algorithm for the MS GARCH(1,1) model parameters consists of the following steps. At iteration  $m$ ,

- Draw  $\pi_i^{(m)}$  from its posterior density in (26), for  $i = 1,2,3$ .
Draw  $S^{(m)}$  from (31).
Draw  $\pmb{\eta}^{(m)}$  from (14).
Draw  $\nu^{(m)}$  from (15).
- Draw  $\theta_{G,i}^{*}, i = 1,2,3,$  from the proposal distribution, as explained earlier.
- Check whether the parameter restrictions on the components of  $\pmb{\theta}_{G,i}$  are satisfied; if not, draw  $\pmb{\theta}_{G,i}^{*}$  repeatedly, until they are satisfied.
- Compute the acceptance probability in (17) and accept of reject  $\pmb{\theta}_{G,i}^{*}$ , for  $i = 1,2,3$ .

The parameter vector,  $\pmb{\theta}$ , is updated as new components are drawn. The steps above are repeated a large number of times until convergence of the algorithm.

# APPENDIX: THE GRIDDY GIBBS SAMPLER

Implementation of the Gibbs sampler requires that parameters' conditional posterior distributions be known. Sometimes, however, the conditional posterior distributions have no closed forms. In these cases, a special form of the Gibbs sampler, called the griddy Gibbs sampler, can be employed whereby the (univariate) conditional posterior densities are evaluated on grids of parameter values. The griddy Gibbs sampler, developed by Ritter and Tanner (1992), is a combination of the ordinary Gibbs sampler and a numerical routine. In this appendix, we illustrate the griddy Gibbs sampler with the posterior distribution of the degrees-of-freedom parameter,  $\nu$ .

Recall the expression for the kernel of  $\nu$ 's conditional log-posterior distribution,

$$
\begin{array}{l} \log \left(p (\nu | \theta_{- \nu}, r, F_{0})\right) = \text{co ns t} \\ + \frac{T v}{2} \log \left(\frac{v}{2}\right) - T \log \left(\Gamma \left(\frac{v}{2}\right)\right) \\ + \left(\frac{\nu}{2} - 1\right) \sum_{t = 1}^{T} \log \left(\eta_{t}\right) - \frac{\nu}{2} \sum_{t = 1}^{T} \eta_{t} - \nu \lambda \tag {33} \\ \end{array}
$$

The griddy Gibbs sampler approach to drawing from the conditional posterior distribution of  $\nu$  is to recognize that at iteration  $m$  we can treat the latest draws of the remaining parameters as the known parameter values. Therefore, we can evaluate numerically the conditional posterior density of  $\nu$  on a grid of its admissible values. The support of  $\nu$  is the positive part of the real line. However, a reasonable range for the values of  $\nu$  in an application to asset returns could be (2, 30).

# Drawing from the Conditional Posterior Distribution of  $\nu$

Denote the equally-spaced grid of values for  $\nu$  by  $(\nu_{1},\nu_{2},\dots,\nu_{J})$ . We outline the steps for drawing from  $\nu$ 's conditional posterior distribution at iteration  $m$  of the sampling algorithm. Denote the most recent draws of the remaining model parameters by  $\pmb{\theta}_{-\nu}^{(m-1)}$ . (Note that this notation is not entirely precise since some of the parameters might have been updated last during the  $m$ th iteration of the sampler but before  $\nu$ .)

- Compute the value of  $\nu$ 's posterior kernel (the exponential of the expression in (33)) at each of the grid nodes and denote the resultant vector by

$$ p (\nu) = \left(p \left(\nu_{1}\right), p \left(\nu_{2}\right), \dots , p \left(\nu_{J}\right)\right) \tag {34}
$$

- Normalize  $p(\nu)$  by dividing each vector component in (34) by the quantity  $\sum_{j=1}^{J} p(\nu_j)(\nu_2 - \nu_1)$ . For convenience of notation, let us redefine  $p(\nu)$  to denote the vector of (normalized) posterior density values at each node of  $\nu$ 's grid.
- Compute the empirical cumulative distribution function (CDF),

$$
F (v) = \left(p \left(v_{1}\right), \sum_{j = 1}^{2} p \left(v_{j}\right), \dots , \sum_{j = 1}^{J} p \left(v_{j}\right)\right) \tag {35}
$$

If the grid is adequate, the first element of  $F(\nu)$  should be nearly 0, while the last element of  $F(\nu)$  nearly 1.

- Draw an observation from the uniform distribution  $(U[0,1])$  and denote it by  $u$ .
- Find the element of  $F(v)$  closest to  $u$  without exceeding it.
- The grid node corresponding to the value of  $F(\nu)$  in the previous step is the draw of  $\nu$  from its posterior distribution.

The method above of obtaining a draw from  $\nu$ 's distribution using its CDF is called the CDF inversion method.

Constructing an adequate grid is the key to efficient sampling from  $\nu$ 's posterior. Since the griddy Gibbs sampling procedure relies on multiple evaluations of the posterior kernel, two desired characteristics of an adequate grid are short length and coverage of the parameter support where the posterior distribution has positive probability mass. A simple example illustrates this point. Suppose that for a given sample of observed data, the likely values of  $\nu$  are in the interval (2, 15). Suppose further that we construct an equally-spaced grid of length 30, with nodes on each integer from 2 to 30. The value of the posterior kernel at the nodes corresponding to  $\nu$  equal to 16 and above would be only marginally different from zero. The posterior kernel evaluations at those nodes should be avoided, if possible.

If no prior intuition exists about what the likely parameter values are, one could employ a variable grid instead of a fixed grid. At each iteration of the sampling algorithm one must analyze the distribution of posterior mass and adjust the grid, so that the majority of the grid nodes are placed in the interval of greatest probability mass. Automating this process could involve some computational effort.

# KEY POINTS

- The unconditional density of the return in GARCH models is not available in closed form. Therefore, the likelihood function of the GARCH parameters is expressed as a product of the return's conditional density in each period.
- In the Bayesian setting, estimation of GARCH models is performed numerically.
- Posterior numerical simulations are facilitated if the scale mixture of normal distributions representation is adopted for the Student's  $t$  distribution.
- Markov-switching GARCH models provide maximal flexibility in modeling transitions of the volatility dynamics across regimes.

- Transitions among regimes are governed by an unobserved state variable.
- In posterior simulations, the whole path of regimes, governed by the state variable, is simulated together with the model parameters.


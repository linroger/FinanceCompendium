---
aliases: null
tags: null
key_concepts: null
parent_directory: null
cssclasses: academia
title: 'IEOR E4703: Monte-Carlo Simulation'
linter-yaml-title-alias: 'IEOR E4703: Monte-Carlo Simulation'
primary_tags:
- exponential distributions
- bayesian theorem
- bayesian modeling additional references
- matteson's statistics and data analysis
- output analysis
secondary_tags:
- bayesian models
- conjugate priors
- metropolis hastings algorithm
- mcmc diagnostics
- gibbs sampler markov chain
- bayes's theorem
- mcmc important
- bayesian versions
- hamiltonian monte-carlo
- data analysis
- empirical bayes
- simulated samples
tags_extracted: '2025-12-18T17:59:07.528519'
tags_method: max_quality_v1
---

# IEOR E4703: Monte-Carlo Simulation

# MCMC and Bayesian Modeling

Additional References: Ruppert and Matteson's Statistics and Data Analysis for FE, Christoper Bishop's PRML, David Barber's BRML, Gelman et al.'s Bayesian Data Analysis, Efron and Hastie's Computer Age Statistical Inference

Bayesian Modeling

Conjugate Priors

Computational Issues in Bayesian Modeling

The Sampling Problem

One Approach: Acceptance-Rejection Algorithm

Another Approach: Markov Chain Monte-Carlo (MCMC)

Markov Chains

Metropolis-Hastings

Examples

MCMC: Gibbs Sampling

Examples

Difficulties With Gibbs Sampling

MCMC Convergence Analysis and Output Analysis

MCMC Output Analysis

MCMC Convergence Diagnostics

Some Applications of Bayesian Modeling & MCMC

Data Augmentation for Binary Response Regression

Asset Allocation with Views

A Novel Application of MCMC: Optimization and Code-Breaking

Topic Modeling and LDA

A Brief Detour on Graphical Models

Appendix

Bayesian Model Checking

Bayesian Model Selection

Hamiltonian Monte-Carlo

Empirical Bayes

# Bayes Theorem

Not surprisingly, Bayes's Theorem is the key result that drives Bayesian modeling and statistics.

Let  $S$  be a sample space and let  $B_{1},\ldots ,B_{K}$  be a partition of  $S$  so that (i)  $\bigcup_{k}B_{k} = S$  and (ii)  $B_{i}\cap B_{j} = \emptyset$  for all  $i\neq j$ .

Bayes's Theorem: Let  $A$  be any event. Then for any  $1 \leq k \leq K$  we have

$$
P (B_{k} \mid A) = \frac{P (A \mid B_{k}) P (B_{k})}{P (A)} = \frac{P (A \mid B_{k}) P (B_{k})}{\sum_{j = 1}^{K} P (A \mid B_{j}) P (B_{j})}.
$$

Of course there is also a continuous version of Bayes's Theorem with sums replaced by integrals.

Bayes's Theorem provides us with a simple rule for updating probabilities when new information appears

- in Bayesian modeling and statistics this new information is the observed data  
- and it allows us to update our prior beliefs about parameters of interest which are themselves assumed to be random variables.

# The Prior and Posterior Distributions

Let  $\pmb{\theta}$  be some unknown parameter vector of interest. We assume  $\pmb{\theta}$  is random with some distribution,  $\pi (\pmb {\theta})$

- this is our prior distribution which captures our prior uncertainty regarding  $\theta$ .

There is also a random vector,  $\mathbf{X}$ , with PDF (or PMF)  $p(\mathbf{x} \mid \boldsymbol{\theta})$

- this is the likelihood.

The joint distribution of  $\pmb{\theta}$  and  $\mathbf{X}$  is then given by  $p(\pmb {\theta},\mathbf{x}) = \pi (\pmb {\theta})p(\mathbf{x}\mid \pmb {\theta})$

- we can integrate to get the marginal distribution of  $\mathbf{X}$

$$
p (\mathbf {x}) = \int_{\boldsymbol {\theta}} \pi (\boldsymbol {\theta}) p (\mathbf {x} \mid \boldsymbol {\theta}) d \boldsymbol {\theta}
$$

We can compute the posterior distribution via Bayes's Theorem:

$$
\pi (\boldsymbol {\theta} \mid \mathbf {x}) = \frac{\pi (\boldsymbol {\theta}) p (\mathbf {x} \mid \boldsymbol {\theta})}{p (\mathbf {x})} = \frac{\pi (\boldsymbol {\theta}) p (\mathbf {x} \mid \boldsymbol {\theta})}{\int_{\boldsymbol {\theta}} \pi (\boldsymbol {\theta}) p (\mathbf {x} \mid \boldsymbol {\theta}) d \boldsymbol {\theta}} \tag {1}
$$

# The Prior and Posterior Distributions

The mode of the posterior is called the maximum a posterior (MAP) estimator while the mean is of course  $\mathsf{E}[\pmb{\theta} \mid \mathbf{X} = \mathbf{x}] = \int \pmb{\theta} \pi(\pmb{\theta} \mid \mathbf{x}) d\pmb{\theta}$ .

The posterior predictive distribution is the distribution of a new as yet unseen data-point,  $\mathbf{X}_{\text{new}}$ :

$$
p (\mathbf {x}_{\text{ne w}}) = \int_{\boldsymbol {\theta}} \pi (\boldsymbol {\theta} \mid \mathbf {x}) p (\mathbf {x}_{\text{ne w}} \mid \boldsymbol {\theta}) d \boldsymbol {\theta}
$$

which is obtained using the posterior distribution of  $\theta$  given the observed data  $\mathbf{X}$ .

Much of Bayesian analysis is concerned with "understanding" the posterior  $\pi (\pmb {\theta}\mid \mathbf{x})$ . Note that

$$
\pi (\boldsymbol {\theta} \mid \mathbf {x}) \propto \pi (\boldsymbol {\theta}) p (\mathbf {x} \mid \boldsymbol {\theta})
$$

which is what we often work with:

1. Sometimes can recognize the form of the posterior by simply inspecting  $\pi (\pmb {\theta})p(\mathbf{x}\mid \pmb {\theta})$  
2. But often cannot recognize the posterior and can't compute the denominator in (1) either - so approximate inference techniques such as MCMC must be used.

# E.G: A Beta Prior and Binomial Likelihood

Let  $\theta \in (0,1)$  represent some unknown probability. We assume a  $\operatorname{Beta}(\alpha, \beta)$  prior so that

$$
\pi (\theta) = \frac{\theta^{\alpha - 1} (1 - \theta)^{\beta - 1}}{B (\alpha , \beta)}, \quad 0 <   \theta <   1.
$$

We also assume that  $X\mid \theta \sim \operatorname{Bin}(n,\theta)$  so that

$$
p (x \mid \theta) = \binom {n} {x} \theta^{x} (1 - \theta)^{n - x}, x = 0, \ldots , n.
$$

The posterior then satisfies

$$
\begin{array}{l} p (\theta \mid x) \propto \pi (\theta) p (x \mid \theta) \\ = \frac{\theta^{\alpha - 1} (1 - \theta)^{\beta - 1}}{B (\alpha , \beta)} \binom {n} {x} \theta^{x} (1 - \theta)^{n - x} \\ \propto \theta^{\alpha + x - 1} (1 - \theta)^{n - x + \beta - 1} \\ \end{array}
$$

which we recognize as the  $\mathrm{Beta}(\alpha +x,\beta +n - x)$  distribution!

Question: How can we interpret the prior distribution in this example?

# E.G: A Beta Prior and Binomial Likelihood

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1f734246-7026-481c-b3ab-2f675f614081/61285eb87433c1e513cd095e4d479675223ccbb1ec2ce33c9251d78bde5a68db.jpg)  
Figure 20.1 from Ruppert's Statistics and Data Analysis for FE: Prior and posterior densities for  $\alpha = \beta = 2$  and  $n = x = 5$ . The dashed vertical lines are at the lower and upper 0.05-quantiles of the posterior, so they mark off a  $90\%$  equal-tailed posterior interval. The dotted vertical line shows the location of the posterior mode at  $\theta = 6/7 = 0.857$ .

Consider the following probabilistic model:

- parameter  $\theta \sim \pi (\cdot ;\alpha_0)$  
data  $\mathbf{X} = (X_{1},\dots ,X_{N})\sim p(\mathbf{x}\mid \boldsymbol {\theta})$

As we saw before posterior distribution satisfies

$$
p (\boldsymbol {\theta} \mid \mathbf {x}) \propto p (\boldsymbol {\theta}, \mathbf {x}) = p (\mathbf {x} \mid \boldsymbol {\theta}) \pi (\boldsymbol {\theta}; \boldsymbol {\alpha}_{0})
$$

Say the prior  $\pi (\pmb {\theta}\mid \alpha)$  is a conjugate prior for the likelihood  $p(\mathbf{x}\mid \pmb {\theta})$  if the posterior satisfies

$$
p (\boldsymbol {\theta} \mid \mathbf {x}) = \pi (\boldsymbol {\theta}; \boldsymbol {\alpha} (\mathbf {x}))
$$

so observations influence the posterior only via a parameter change  $\alpha_0 \to \alpha(\mathbf{x})$  - the form or type of the distribution is unchanged.

e.g. In the previous example we saw the beta distribution is conjugate for the binomial likelihood.

# Conjugate Prior for Mean of a Normal Distribution

Suppose  $\theta \sim \mathcal{N}(\mu_0,\gamma_0^2)$  and  $p(X_{i}\mid \theta) = N(\theta ,\sigma^{2})$  for  $i = 1,\ldots ,N$

so  $\alpha_0 = (\mu_0,\gamma_0^2)$  and  $\sigma^2$  is assumed known.

If  $\mathbf{X} = (X_{1},\ldots ,X_{N})$  we then have

$$
\begin{array}{l} p (\theta \mid \mathbf {x}) \propto p (\mathbf {x} \mid \boldsymbol {\theta}) \pi (\theta ; \alpha_{0}) \\ \propto e^{- \frac{(\theta - \mu_{0})^{2}}{2 \gamma_{0}^{2}}} \prod_{i = 1}^{N} e^{- \frac{(x_{i} - \theta)^{2}}{2 \sigma^{2}}} \\ \propto \exp \left(- \frac{(\theta - \mu_{1})^{2}}{2 \gamma_{1}^{2}}\right) \\ \end{array}
$$

where

$$
\begin{array}{l} \gamma_{1}^{- 2} := \gamma_{0}^{- 2} + N \sigma^{- 2} \\ \text{an d} \mu_{1} := \gamma_{1}^{2} \left(\mu_{0} \gamma_{0}^{- 2} + \sum_{i = 1}^{n} x_{i} \sigma^{- 2}\right). \\ \end{array}
$$

Of course we recognize  $p(\theta \mid \mathbf{x})$  as the  $\mathsf{N}(\mu_1,\gamma_1^2)$  distribution.

# Conjugate Prior for Mean and Variance of a Normal Dist.

Suppose that  $p(X_{i} \mid \theta) = N(\mu, \sigma^{2})$  for  $i = 1, \dots, N$  and let  $\mathbf{X} \coloneqq (X_{1}, \dots, X_{N})$ .

Now assume  $\mu$  and  $\sigma^2$  are unknown so  $\pmb{\theta} = (\mu, \sigma^2)$ .

We assume a joint prior of the form

$$
\begin{array}{l} \pi (\mu , \sigma^{2}) = \pi (\mu \mid \sigma^{2}) \pi (\sigma^{2}) \\ = \mathsf {N} \left(\mu_{0}, \sigma^{2} / \kappa_{0}\right) \times \ln v - \chi^{2} \left(\nu_{0}, \sigma_{0}^{2}\right) \\ \propto \sigma^{- 1} (\sigma^{2})^{- (\nu_{0} / 2 + 1)} \exp \left(- \frac{1}{2 \sigma^{2}} [ \nu_{0} \sigma_{0}^{2} + \kappa_{0} (\mu_{0} - \mu)^{2} ]\right) \\ \end{array}
$$

- the N-Inv- $\chi^2(\mu_0, \sigma_0^2 / \kappa_0, \nu_0, \sigma_0^2)$  density.

Note that  $\mu$  and  $\sigma^2$  are not independent under this joint prior.

Exercise: Show that multiplying this prior by the normal likelihood yields a  $N$ -Inv- $\chi^2$  distribution.

Canonical form of the exponential family distribution is

$$
p (\mathbf {x} \mid \boldsymbol {\theta}) = h (\mathbf {x}) e^{\boldsymbol {\theta}^{\top} \mathbf {u} (\mathbf {x}) - \psi (\boldsymbol {\theta})}
$$

- $\pmb{\theta} \in \mathbb{R}^{m}$  is a parameter vector  
- and  $\mathbf{u}(\mathbf{x}) = (u_1(\mathbf{x}),\dots ,u_m(\mathbf{x}))$  is the vector of sufficient statistics.

The exponential family includes Normal, Gamma, Beta, Poisson, Dirichlet, Wishart and Multinomial distributions as special cases.

The exponential family is essentially the only distribution with a non-trivial conjugate prior.

The conjugate prior takes the form

$$
\pi (\boldsymbol {\theta}; \boldsymbol {\alpha}, \gamma) \propto e^{\boldsymbol {\theta}^{\top} \boldsymbol {\alpha} - \gamma \psi (\boldsymbol {\theta})}
$$

since

$$
\begin{array}{l} p (\boldsymbol {\theta} \mid \mathbf {x}, \boldsymbol {\alpha}, \gamma) \propto e^{\boldsymbol {\theta}^{\top} \mathbf {u} (\mathbf {x}) - \psi (\boldsymbol {\theta})} e^{\boldsymbol {\theta}^{\top} \boldsymbol {\alpha} - \gamma \psi (\boldsymbol {\theta})} = e^{\boldsymbol {\theta}^{\top} (\boldsymbol {\alpha} + \mathbf {u} (\mathbf {x})) - (\gamma + 1) \psi (\boldsymbol {\theta})} \\ = \pi (\boldsymbol {\theta} \mid \boldsymbol {\alpha} + \mathbf {u} (\mathbf {x}), \gamma + 1) \\ \end{array}
$$

# Selecting a Prior

Selecting an appropriate prior is a key component of Bayesian modeling.

With only a finite amount of data, the prior can have a very large influence on the posterior

- important to be aware of this and understand sensitivity of posterior inference to the choice of prior  
- often try to use non-informative priors to limit this influence  
- when possible conjugate priors often chosen for tractability reasons

A common misconception that the only advantage of the Bayesian approach over the frequentist approach is that the choice of prior allows us to express our prior beliefs on quantities of interest

- in fact there are many other more important advantages including modeling flexibility via MCMC, exact inference rather than asymptotic inference, ability to estimate functions of any parameters without "plugging" in MLE estimates, more accurate estimates of parameter uncertainty, etc.  
- of course there are disadvantages as well including subjectivity induced by choice of prior and high computational costs.

# Inference in Bayesian Modeling

Despite differences in Bayesian and frequentist approaches we do have:

Bernstein-von Mises Theorem: Under suitable assumptions and for sufficiently large sample sizes, the posterior distribution of  $\theta$  is approximately normal with mean equal to the true value of  $\theta$  and variance equal to the inverse of the Fisher information matrix.

This theorem implies that Bayesian and MLE estimators have the same large sample properties

- not really surprising since influence of the prior should diminish with increasing sample sizes.

But this is a theoretical result and often don't have "large" sample sizes so quite possible for posterior to be (very) non-normal and even multi-modal.

Most of Bayesian inference is concerned with (which often means simulating from) the posterior

$$
\pi (\boldsymbol {\theta} \mid \mathbf {x}) \propto \pi (\boldsymbol {\theta}) p (\mathbf {x} \mid \boldsymbol {\theta}) \tag {2}
$$

without knowing the constant of proportionality in (2).

This leads to the following sampling problem:

# The Basic Sampling Problem

Suppose we are given a distribution function

$$
p (\mathbf {z}) = \frac{1}{Z_{p}} \tilde {p} (\mathbf {z})
$$

where  $\tilde{p} (\mathbf{z})\geq 0$  is easy to compute but  $Z_{p}$  is (too) hard to compute.

This very important situation arises in several contexts:

1. In Bayesian models where  $\tilde{p}(\boldsymbol{\theta}) \coloneqq p(\mathbf{x} \mid \boldsymbol{\theta})\pi(\boldsymbol{\theta})$  is easy to compute but  $Z_{p} \coloneqq p(\mathbf{x}) = \int_{\boldsymbol{\theta}} \pi(\boldsymbol{\theta}) p(\mathbf{x} \mid \boldsymbol{\theta}) d\boldsymbol{\theta}$  can be very difficult or impossible to compute.  
2. In models from statistical physics, e.g. the Ising model, we only know  $\tilde{p} (\mathbf{z}) = e^{-\mathcal{E}(\mathbf{z})}$ , where  $\mathcal{E}(\mathbf{z})$  is an "energy" function

- the Ising model is an example of a Markov network or an undirected graphical model.

3. Dealing with evidence in directed graphical models such as belief networks aka directed acyclic graphs.

# How to Generate Samples from  $p(\mathbf{z})$ ?

An important method is the acceptance-rejection algorithm:

- Choose a proposal density  $q(\mathbf{z})$  from which it is easy to simulate.  
- The support of  $q(\cdot)$  must contain the support of  $\tilde{p}(\mathbf{z})$
- can therefore choose  $k > 0$  so that  $k \cdot q(\mathbf{z}) \geq \tilde{p}(\mathbf{z})$  for all  $\mathbf{z}$ .
- Generate  $\mathbf{Z} \sim q(\cdot)$  and  $U \sim U(0,1)$ .  
- Accept  $\mathbf{Z}$  if  $U \leq \frac{\tilde{p}(\mathbf{Z})}{k \cdot q(\mathbf{Z})}$ . Otherwise re-sample  $(\mathbf{Z}, U)$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1f734246-7026-481c-b3ab-2f675f614081/85b7c035e35cc0a1c489fdf2d9e88d161591d780c116292e4e04940a4e162711.jpg)  
Figure 11.4 from Bishop

Alternative representation:

- Sample a point uniformly from the region under the curve  $kq(\mathbf{z})$  
- Accept the point if it lies in the white region.

# Efficiency of Acceptance-Rejection Algorithm

Question: How many iterations,  $I$ , does it take on average to generate a sample?

- The probability of success on each iteration is (why?)  $Z_{p} / k$ .  
- Clear that  $I$  has a geometric distribution.  
- Therefore have  $\mathbb{E}[I] = k / Z_p$ .

Some implications …

- Would like to take  $k$  as small as possible.  
- When  $q(\mathbf{z}) = p(\mathbf{z})$ , we get  $\mathbb{E}[I] = 1$ .  
- $\mathbb{E}[I]$  can be large if  $q(\mathbf{z})$  is very different from  $p(\mathbf{z})$ 
	- so would like have the proposal distribution close to the true one!

Acceptance-rejection can work very well in low-dimensions

- but can be extremely inefficient (why?) in high dimensions.

Nonetheless, can be a useful technique (even in high dimensions) when combined with MCMC methods.

# Another Approach: Markov Chain Monte-Carlo (MCMC)

- MCMC algorithms were originally developed in the 1940's by physicists at Los Alamos
- Ulam (playing solitaire!), Von Neumann (acceptance-rejection!) and others.
- They were interested in modeling the probabilistic behavior of collections of atomic particles
- could not be done analytically but maybe they could use simulation?
- Simulation was difficult – the normalization constant  $Z_{p}$  was not known
- and simulation hadn't (why?) been "discovered" yet  
- although simulation ideas had been around for some time

e.g. Buffon's needle (1700's), Lord Kelvin (1901), Fermi (1930's).

- in fact the term "Monte-Carlo" was coined at Los Alamos.
- Ulam and Metropolis overcame this problem by constructing a Markov chain for which the desired distribution was the stationary distribution
- then only needed to simulate the Markov chain until stationarity achieved  
- they introduced the Metropolis algorithm and its impact was enormous.
- Introduced to statistics and generalized with the Metropolis-Hastings algorithm (1970) and the Gibbs sampler of Geman and Geman (1984).

# But First … Some Markov Chain Theory

Definition: A sequence of random variables  $\{\mathbf{X}_1, \mathbf{X}_2, \ldots, \mathbf{X}_t\}$  on a discrete state space  $\Omega$  is called a (first-order) Markov Chain if

$$
p \left(\mathbf {X}_{t} = \mathbf {x}_{t} \mid \mathbf {X}_{t - 1} = \mathbf {x}_{t - 1}, \dots , \mathbf {X}_{1} = \mathbf {x}_{1}\right) = p \left(\mathbf {X}_{t} = \mathbf {x}_{t} \mid \mathbf {X}_{t - 1} = \mathbf {x}_{t - 1}\right).
$$

We will restrict ourselves to time-homogeneous Markov chains:

$$
p (\mathbf {X}_{t} = \mathbf {x}_{t} \mid \mathbf {X}_{t - 1} = \mathbf {x}_{t - 1}) = \mathbf {P} (\mathbf {x}_{t} \mid \mathbf {x}_{t - 1}) \in \mathbb {R}^{\Omega \times \Omega}
$$

Easy to check that  $[p(\mathbf{X}_{t + 1} = \mathbf{x}_t\mid \mathbf{X}_{t - 1} = \mathbf{x}_{t - 1})]_{(\mathbf{x}_t,\mathbf{x}_{t - 1})\in \Omega} = \mathbf{P}^2$

Definition: A Markov chain is called ergodic if there exists  $r$  such that  $\mathbf{P}^r > 0$  - this is equivalent to the Markov chain being:

1. Irreducible: For all  $\mathbf{x},\mathbf{y}\in \Omega$  , there exists  $r(\mathbf{x},\mathbf{y})$  s.t.  $\mathbf{P}^{r(\mathbf{x},\mathbf{y})}(\mathbf{x},\mathbf{y}) > 0$  
2. Aperiodic: For all  $\mathbf{x} \in \Omega$ ,  $\operatorname{GCD}\{r : P^r(\mathbf{x}, \mathbf{x}) > 0\} = 1$ .

# Stationary Distributions of Markov Chains

Definition: A stationary distribution of a Markov chain is a distribution  $\pi$  on  $\Omega$  such that

$$
\pi (\mathbf {y}) = \sum_{\mathbf {x} \in \Omega} P (\mathbf {y} \mid \mathbf {x}) \pi (\mathbf {x}).
$$

Theorem: A finite ergodic Markov Chain has a unique stationary distribution.

Definition: The total variation distance,  $d_{TV}(\mu, \nu)$ , between two probability measures  $\mu, \nu$  on  $\Omega$  is defined as

$$
\| \mu - \nu \|_{T V} := \max_{S \subset \Omega} \{\mu (S) - \nu (S) \} = \frac{1}{2} \sum_{\mathbf {z} \in \Omega} | \mu (\mathbf {z}) - \nu (\mathbf {z}) |
$$

The mixing time of  $\tau_{\mathrm{mix}}(\epsilon)$  defined as the time until the total variation distance to  $\pi$  is below  $\epsilon$

$$
\tau_{\mathrm{mi x}} (\epsilon) = \max_{\mathbf {x}_{0} \in \Omega} \min \left\{t: \left\| P^{t} (\cdot , \mathbf {x}_{0}) - \pi (\cdot) \right\|_{T V} \leq \epsilon \right\} \sim \ln \left(\frac{1}{\epsilon}\right)
$$

Would like to have similar properties for continuous sample spaces!

# Reversible Markov Chains

Definition: A Markov chain is said to be reversible if there exists a probability measure  $\pi$  on  $\Omega$  such that

$$
P (\mathbf {x} \mid \mathbf {y}) \pi (\mathbf {y}) = P (\mathbf {y} \mid \mathbf {x}) \pi (\mathbf {x}) \tag {3}
$$

Easy to check that if  $\pi$  satisfies (3) then it is the stationary distribution of the Markov chain since then

$$
\sum_{\mathbf {x}} P (\mathbf {y} \mid \mathbf {x}) \pi (\mathbf {x}) = \sum_{\mathbf {x}} P (\mathbf {x} \mid \mathbf {y}) \pi (\mathbf {y}) = \pi (\mathbf {y})
$$

- so (3) then implies the chain moves from  $\mathbf{x}$  to  $\mathbf{y}$  at the same rate it moves from  $\mathbf{y}$  to  $\mathbf{x}$  (when in equilibrium)  
- for this reason (3) is often called the detailed balance equation

Satisfying the detailed balance equation is a sufficient (but not necessary) condition for  $\pi$  to be a stationary distribution

- will also want to have ergodicity to guarantee that  $\pi$  is the stationary distribution

There are analogous definitions and results for continuous Markov chains.

# The Metropolis-Hastings Algorithm

Suppose we want to sample from a distribution  $p(\mathbf{x}) \coloneqq \tilde{p}(\mathbf{x}) / Z_p$ .

We can construct a (reversible) Markov chain as follows. Let  $\mathbf{X}_t = \mathbf{x}$  be the current state:

- Generate  $\mathbf{Y} \sim Q(\cdot \mid \mathbf{x})$  for some Markov transition matrix  $Q$ .

Let  $\mathbf{y}$  be the generated value.

- Set  $\mathbf{X}_{t + 1} = \mathbf{y}$  with probability  $\alpha (\mathbf{y}\mid \mathbf{x})\coloneqq \min \left\{\frac{\tilde{p}(\mathbf{y})}{\tilde{p}(\mathbf{x})}\cdot \frac{Q(\mathbf{x}|\mathbf{y})}{Q(\mathbf{y}|\mathbf{x})},1\right\}$ .

Otherwise set  $\mathbf{X}_{t + 1} = \mathbf{x}$

Claim: The resulting Markov chain is reversible with stationary distribution  $p(\mathbf{x}) = \tilde{p}(\mathbf{x}) / Z_p$ .

Note that  $Z_{p}$  is not required for the algorithm!

Note also that if  $\mathbf{Y} = \mathbf{y}$  is rejected then the current state  $\mathbf{x}$  becomes the next state so that  $\mathbf{X}_t = \mathbf{X}_{t + 1} = \mathbf{x}$ .

Can therefore sample from  $p(\mathbf{x})$  by running the algorithm until stationarity is achieved and then using generated points as our samples.

# The Metropolis-Hastings Algorithm

Proof of Claim: We just check that  $p(\mathbf{x})$  satisfies the detailed balance equations:

$$
\begin{array}{l} \underbrace {\alpha (\mathbf {y} \mid \mathbf {x}) Q (\mathbf {y} \mid \mathbf {x})}_{P (\mathbf {y} \mid \mathbf {x})} p (\mathbf {x}) = \min  \left\{\frac{p (\mathbf {y})}{p (\mathbf {x})} \cdot \frac{Q (\mathbf {x} \mid \mathbf {y})}{Q (\mathbf {y} \mid \mathbf {x})}, 1 \right\} Q (\mathbf {y} \mid \mathbf {x}) p (\mathbf {x}) \\ = \min  \left\{Q (\mathbf {x} \mid \mathbf {y}) p (\mathbf {y}), Q (\mathbf {y} \mid \mathbf {x}) p (\mathbf {x}) \right\} \\ = \min  \left\{1, \frac{p (\mathbf {x})}{p (\mathbf {y})} \cdot \frac{Q (\mathbf {y} \mid \mathbf {x})}{Q (\mathbf {x} \mid \mathbf {y})} \right\} Q (\mathbf {x} \mid \mathbf {y}) p (\mathbf {y}) \\ = \underbrace {\alpha (\mathbf {x} \mid \mathbf {y}) Q (\mathbf {x} \mid \mathbf {y})}_{P (\mathbf {x} | \mathbf {y})} p (\mathbf {y}). \\ \end{array}
$$

Question: How do we determine when stationarity is achieved?

- will use convergence diagnostics (to be discussed later) to do this.

Question: There are many possible choices of  $Q(\cdot \mid \cdot)$ . What should we use?

- an important question since  $Q(\cdot \mid \cdot)$  influences how much time required to reach stationarity  
- won't have time to say much on this question.

Question: Are the samples independent?

# Example: Sampling from a 2-D Gaussian

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1f734246-7026-481c-b3ab-2f675f614081/ac0b014e0c645e1daab7f8dcfa7a260d2eeffd4df7864426d6228ffd04d0e2b9.jpg)  
Figure 11.9 from Bishop: A simple illustration using Metropolis algorithm to sample from a Gaussian distribution whose one standard-deviation contour is shown by the ellipse. The proposal distribution is an isotropic Gaussian distribution whose standard deviation is 0.2. Steps that are accepted are shown as green lines, and rejected steps are shown in red. A total of 150 candidate samples are generated, of which 43 are rejected.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1f734246-7026-481c-b3ab-2f675f614081/887bfca0fb19c2449831818026f5c613f61ff0a99b8dee690c95b79f9d968cf8.jpg)  
Figure 27.8 from Barber: Metropolis-Hastings samples from a bi-variate distribution  $p(x_1, x_2)$  using a proposal  $\tilde{q}(\mathbf{x}'|\mathbf{x}) = N(\mathbf{x}'|\mathbf{x}, \mathbf{l})$ . We also plot the iso-probability contours of  $p$ . Although  $p(\mathbf{x})$  is multi-modal, the dimensionality is low enough and the modes sufficiently close such that a simple Gaussian proposal distribution is able to bridge the two modes. In higher dimensions, such multi-modality is more problematic.

Question: Why do you think it might sometimes be difficult to sample from a multi-modal distribution?

Gibbs sampling is an MCMC sampler introduced by Geman and Geman in 1984

- named after the physicist J. W. Gibbs who died 80 years earlier.

Let  $\mathbf{x}^{(t)}\in \mathbb{R}^m$  denote the current sample. Then Gibbs sampling proceeds as follows:

1. Pick an index  $k \in \{1, \dots, m\}$  either via round-robin or uniformly at random  
2. Set  $\mathbf{x}_j^{(t + 1)} = \mathbf{x}_j^{(t)}$ , for  $j \neq k$ , i.e.  $\mathbf{x}_{-k}^{(t + 1)} = \mathbf{x}_{-k}^{(t)}$  
3. Generate  $\mathbf{x}_k^{(t + 1)}\sim p(\mathbf{x}_k\mid \mathbf{x}_{-k}^{(t)})$

- so only one component of  $\mathbf{x}$  is updated at a time.

Common to simply order the  $m$  components and update them sequentially. Can then let  $\mathbf{x}_k^{(t + 1)}$  be the value of the chain after all  $m$  updates rather than each individual update.

A very popular method when the (true) conditional distributions,  $p(\mathbf{x}_j \mid \mathbf{x}_{-k}^{(t)})$ , are easy to simulate from

- which is the case for conditionally conjugate models and others.

Easy to see that Gibbs sampling is a special case of Metropolis-Hastings sampling with

$$
Q_{k} (\mathbf {y} \mid \mathbf {x}) = \left\{ \begin{array}{l l} p (\mathbf {y}_{k} \mid \mathbf {x}_{- k}) & \mathbf {y}_{- k} = \mathbf {x}_{- k} \\ 0 & \text{ot he rw is e .} \end{array} \right.
$$

and that each component update will be accepted with probability 1.

Have to be careful that the component-wise Markov Chain is ergodic.

- see Barber's Figure 27.5 later in these slides.

Instead of updating just 1 component at a time can also split  $\mathbf{x}$  into blocks and update 1 block at a time.

If not possible to simulate directly from one or more of the conditional distributions can use rejection-sampling or Metropolis-Hastings sampling for those updates

-sometimescalledMetropolis-with-Gibbs.

# A Simple Example

Consider the distribution

$$
p (x, y) = \frac{n !}{(n - x) ! x !} y^{(x + \alpha - 1)} (1 - y)^{(n - x + \beta - 1)}, \quad x \in \{0, \ldots , n \}, y \in [ 0, 1 ].
$$

Hard to simulate directly from  $p(x, y)$  but the conditional distributions are easy to work with. We see that

$p(x\mid y)\equiv \operatorname{Bin}(n,y)$  

- $p(y \mid x) \equiv \operatorname{Beta}(x + \alpha, n - x + \beta)$

Since it's easy to simulate from each conditional, it is easy to run a Gibbs sampler to simulate from the joint distribution.

Question: Given one of our earlier examples, can you identify a situation where this distribution might arise?

The marginal distribution of  $x$  is the beta-binomial distribution.

# Hierarchical Models

<table><tr><td>Diet</td><td>Measurements</td></tr><tr><td>A</td><td>62, 60, 63, 59</td></tr><tr><td>B</td><td>63, 67, 71, 64, 65, 66</td></tr><tr><td>C</td><td>68, 66, 71, 67, 68, 68</td></tr><tr><td>D</td><td>56, 62, 60, 61, 63, 64, 63, 59</td></tr></table>

Table 11-2 taken from Bayesian Data Analysis,  ${2}^{nd}$  edition by Gelman et al.

Gibbs sampling is particularly suited for hierarchical modeling

- we will consider an example from Bayesian Data Analysis by Gelman et al.  
- the data is in Table 11-2 above.

# The Hierarchical Normal Model

Data  $y_{ij}$ , for  $i = 1, \dots, n_j$  and  $j = 1, \dots, J$  are assumed to be independently normally distributed within each of  $J$  groups with means  $\theta_j$  and common variance  $\sigma^2$ . That is,  $y_{ij} \mid \theta_j \sim N(\theta_j, \sigma^2)$ .

Total number of observations is  $n = \sum_{j=1}^{J} n_j$ .

Group means are assumed to follow a normal distribution with unknown mean  $\mu$  and variance  $\tau^2$ . That is  $\theta_j \sim N(\mu, \tau^2)$ .

A uniform prior is assumed for  $(\mu, \log \sigma, \tau)$  so  $p(\mu, \log \sigma, \log \tau) \propto \tau$

- if a uniform prior was assigned to  $\log \tau$  then posterior would be improper as discussed in Gelman et al
- this emphasizes the importance of understanding the issues associated with choosing priors.

The posterior then given by

$$
p (\boldsymbol {\theta}, \mu , \log \sigma , \log \tau \mid \mathbf {y}) \propto \tau \prod_{j = 1}^{J} \mathsf {N} \left(\theta_{j} \mid \mu , \tau^{2}\right) \prod_{j = 1}^{J} \prod_{i = 1}^{n_{j}} \mathsf {N} \left(y_{i j} \mid \theta_{j}, \sigma^{2}\right).
$$

# The Gibbs Sampler for the Hierarchical Normal Model

Will see that all conditional distributions required for Gibbs sampler have simple conjugate forms:

# 1. Conditional Posterior Distribution of Each  $\theta_{j}$

Just gather terms from posterior that only involve  $\theta_{j}$  and then simplify to obtain

$$
\theta_{j} \mid (\boldsymbol {\theta}_{- j}, \mu , \sigma , \tau , \mathbf {y}) \sim \mathrm{N} \left(\hat {\theta}_{j}, V_{\theta_{j}}\right)
$$

where

$$
\hat {\theta}_{j}   :=   \frac{\frac{1}{\tau^{2}} \mu + \frac{n_{j}}{\sigma^{2}} \bar {y}_{. j}}{\frac{1}{\tau^{2}} + \frac{n_{j}}{\sigma^{2}}}
$$

$$
V_{\theta_{j}}   :=   \frac{1}{\frac{1}{\tau^{2}} + \frac{n_{j}}{\sigma^{2}}}.
$$

These conditional distributions are independent so generating the  $\theta_{j}$ 's one at a time is equivalent to drawing  $\pmb{\theta}$  all at once.

# 2. Conditional Posterior Distribution of  $\mu$

Again, just gather terms from posterior that only involve  $\mu$  and then simplify to obtain

$$
\mu \mid (\boldsymbol {\theta}, \sigma , \tau , \mathbf {y}) \sim \mathsf {N} \left(\hat {\mu}, \frac{\tau^{2}}{J}\right)
$$

where

$$
\hat {\mu} := \frac{1}{J} \sum_{j = 1}^{J} \theta_{j}.
$$

# 3. Conditional Posterior Distribution of  $\sigma^2$

Again, just gather terms from posterior that only involve  $\sigma$  and then simplify to obtain

$$
\sigma^{2} \mid (\boldsymbol {\theta}, \mu , \tau , \mathbf {y}) \sim \ln v - \chi^{2} (n, \hat {\sigma}^{2})
$$

where

$$
\hat {\sigma}^{2} := \frac{1}{n} \sum_{j = 1}^{J} \sum_{i = 1}^{n_{j}} (y_{i j} - \theta_{j})^{2}.
$$

# 4. Conditional Posterior Distribution of  $\tau^2$

Again, gather terms from posterior that only involve  $\tau$  and then simplify to obtain

$$
\tau^{2} \mid (\boldsymbol {\theta}, \mu , \sigma , \mathbf {y}) \sim \operatorname{In v} - \chi^{2} (J - 1, \hat {\tau}^{2})
$$

where

$$
\hat {\tau}^{2} := \frac{1}{J - 1} \sum_{j = 1}^{J} (\theta_{j} - \mu)^{2}.
$$

To start the Gibbs sampler we need starting points for  $\theta$  and  $\mu$  - but not (why?) for  $\tau$  or  $\sigma$ .

# Difficulties With Gibbs Sampling

Gibbs sampling is a very popular MCMC technique that is widely used.

It does have some potential drawbacks, however:

1. Need to be able to show that the Gibbs sampler Markov chain is ergodic

- obvious in many circumstances but sometimes an issue  
- for example Figure 27.5 from Barber shows a 2-dimensional example where the chain is not irreducible.

2. If the variables are strongly correlated (negatively or positively) then it may take too long to reach the stationary distribution

- see Figure 27.7 from Barber and Figure 11.11 from Bishop.

Question: Suppose the random variables  $x_{1}, \ldots, x_{d}$  are independent. How long do you think it will take the Gibbs sampler to reach stationarity in that case?

# An Example Where Gibbs Fails

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1f734246-7026-481c-b3ab-2f675f614081/950b7a4f062240f37fa13e4e89ac7ddcd05f0e1a56908469d092f3f948d82604.jpg)  
Figure 27.5 from Barber: A two-dimensional distribution for which Gibbs sampling fails. The distribution has mass only in the shaded quadrants. Gibbs sampling proceeds from the  $l^{th}$  sample state  $(x_1^l, x_2^l)$  and then sampling from  $p(x_2|x_1^l)$ , which we write  $(x_1^{l+1}, x_2^{l+1})$  where  $x_1^{l+1} = x_1^l$ . One then continues with a sample from  $p(x_1|x_2 = x_2^{l+1})$ , etc. If we start in the lower left quadrant and proceed this way, the upper right region is never explored.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1f734246-7026-481c-b3ab-2f675f614081/85828dded7c9d172aa9a53c24e319e2618abe7a6972c9b94426a61e4adc1a3c9.jpg)  
(a)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1f734246-7026-481c-b3ab-2f675f614081/d34d132092d01fea0b3ce816f4961a5c5fbe595b2df9263477e65ecf9749ca1a.jpg)  
(b)  
Figure 27.7 from Barber: Two hundred Gibbs samples for a two dimensional Gaussian. At each stage only a single component is updated. (a): For a Gaussian with low correlation, Gibbs sampling can move through the likely regions effectively. (b): For a strongly correlated Gaussian, Gibbs sampling is less effective and does not rapidly explore the likely regions.

When the variables are very correlated a common strategy is to seek variable transformations so that the transformed variables are approximately independent.

# Gibbs is More Effective When Variables Are Less Correlated

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1f734246-7026-481c-b3ab-2f675f614081/dfb82650cff662db1b6daaf452c9ae31885fd96f75e7b79d3877c77f57dfe526.jpg)  
Figure 11.11 from Bishop: Illustration of Gibbs sampling by alternate updates of two variables whose distribution is a correlated Gaussian. The step size is governed by the standard deviation of the conditional distribution (green curve), and is  $O(l)$ , leading to slow progress in the direction of elongation of the joint distribution (red ellipse). The number of steps needed to obtain an independent sample from the distribution is  $O((L / l)2)$ .

# A Cautionary Example (From Casella and George, 1992)

Gibbs sampling implies that conditional distributions are sufficient to define the joint distribution.

But there is a subtle issue here: it is not the case that a set of proper well-defined conditional distributions will determine a proper marginal.

e.g. Consider the following 2-dimensional example with

$$
f (x \mid y) = y e^{- y x}, \quad 0 <   x <   \infty \tag {4}
$$

$$
f (y \mid x) = x e^{- x y}, \quad 0 <   y <   \infty \tag {5}
$$

so both conditionals are exponential distributions (and therefore well-defined).

If we apply a Gibbs sampler to (4) and (5), however, will not obtain a sample from any marginal or joint distribution!

This is because (4) and (5) do not correspond to any joint distribution on  $(x,y)$ .

# MCMC Output Analysis

We are usually interested in scalar-valued functions of the parameter vector  $\theta$ .

Let  $\psi (\pmb {\theta})$  be one such function.

If we have  $n$  MCMC samples from the stationary distribution then we have  $n$  samples of  $\psi(\pmb{\theta})$ :

$$
\left\{\psi_{1} := \psi \left(\boldsymbol {\theta}_{1}\right), \dots , \psi_{n} := \psi \left(\boldsymbol {\theta}_{n}\right) \right\}.
$$

The sample mean is then given by  $\bar{\psi} = n^{-1}\sum_{i = 1}^{n}\psi_{1}$

Posterior intervals for  $\psi (\pmb {\theta})$  can also be calculated:

1. Let  $L(\alpha_{1}) \coloneqq \alpha_{1}$  lower sample quantile and  $U(\alpha_{2}) \coloneqq \alpha_{2}$  upper sample quantile of  $\psi_{1}, \ldots, \psi_{n}$ . Then  $(L(\alpha_{1}), U(\alpha_{2}))$  is a  $1 - (\alpha_{1} + \alpha_{2})$  posterior interval.  
2. If  $\alpha_{1} = \alpha_{2} = \alpha / 2$  then we obtain an equi-tailed  $1 - \alpha$  posterior interval.  
3. For a highest posterior density interval we solve (numerically) for  $\alpha_{1}$  and  $\alpha_{2}$  such that  $\alpha = \alpha_{1} + \alpha_{2}$  and  $U(\alpha_{2}) - L(\alpha_{1})$  is minimized

- could be a union of intervals if posterior of  $\psi (\pmb {\theta})$  is not unimodal  
- kernel density estimates of the posterior density can be plotted to help determine number of modes.

# Convergence Diagnostics

In order to use the MCMC samples for inference we must:

1. Ensure the Markov chains have reached stationarity  
2. Only use those samples that have been generated after stationarity has been reached.

But it's impossible to ensure when these two conditions are satisfied since the Markov chain does not begin with the stationary distribution. Instead we can use various methods to assess whether or not stationarity appears to have been reached :

1. Visual inspection where we plot variables (of interest) vs iteration#, plot running means of variables (of interest) etc.  
- can be very informative but they also require "manual" work.

2. Statistical summaries of MCMC output which are designed to diagnose convergence / non-convergence

- they can be programmed and so "manual" labor not required

We will consider the popular Gelman-Rubin methodology

- will not justify everything here but details can be found in Bayesian Data Analysis by Gelman et.al. and also Chapter 20 of SDFE by Ruppert and Matteson. (The latter is available online.)

# Convergence Diagnostics Via Visual Inspection

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1f734246-7026-481c-b3ab-2f675f614081/99b578bf9f3c73e51e8d39f6ccbff58e8c76e0d7662c74537ac13bf95ad8f854.jpg)  
Figure 11.2 from Gelman et al. (2nd Edition): Five independent sequences of a Markov chain simulation for the bivariate unit normal distribution, with over-dispersed starting points indicated by solid squares. (a) After 50 iterations, the sequences are still far from convergence. (b) After 1000 iterations, the sequences are nearer to convergence. Figure (c) shows the iterates from the second halves of the sequences. The points in Figure (c) have been jittered so that steps in which the random walk stood still are not hidden.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1f734246-7026-481c-b3ab-2f675f614081/64b1bdce04dc6eb270069d74be28d25335aeb3e04facf455f00858879bc9af20.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1f734246-7026-481c-b3ab-2f675f614081/061286139891fec7ad6668c1dc657c7db963a960490011dd18b17fe665bf66ad.jpg)

# The Gelman & Rubin Approach

Gelman & Rubin approach runs  $m / 2$  chains for a total of  $n_0 + 2n$  iterations each.

The chains are begun from over-dispersed starting points

- usually obtained by generating them from some over-dispersed distribution.

We discard the first  $n_0$  samples from each chain

- these samples constitute the burn-in period where the chains are assumed to be in their transient phase  
- common to take  $n_0 = 2n$  so first half of each chain is discarded.

Remaining component of each chain is then split into two (sub-)chains, each containing  $n$  samples

- chain splitting will allow process (described below) to determine if each chain has reached stationarity.

At this point we therefore have  $m$  chains each containing  $n$  samples

- we hope these  $m \times n$  samples are from the stationarity distribution  
- so we check that this appears to be the case by comparing the between-chain variance with the within-chain variance for all scalar quantities,  $\psi$ , of interest.

# The Gelman & Rubin Approach

Because the method is based on means and variances generally a good idea to transform the scalar estimands so they are approximately normal

- e.g. take logs of strictly positive quantities  
- e.g. take logits of quantities that must lie in  $(0,1)$ .

Let  $\psi_{ij}$  for  $i = 1,\ldots n$  and  $j = 1,\ldots ,m$  be the MCMC samples

- computed after the burn-in period  
- and then splitting the non-burn-in component of each chain in two.

The betweenand within-sequence variances,  $B$  and  $W$ , are computed as

$$
B := \frac{n}{m - 1} \sum_{j = 1}^{m} \left(\bar {\psi}_{. j} - \bar {\psi}_{. .}\right)^{2}
$$

$$
W := \frac{1}{m} \sum_{j = 1}^{m} s_{j}^{2} \quad \text{wh er e} \quad s_{j}^{2} := \frac{1}{n - 1} \sum_{i = 1}^{n} \left(\psi_{i j} - \bar {\psi}_{. j}\right)^{2}
$$

and where  $\bar{\psi}_{\cdot j} := \frac{1}{n}\sum_{i=1}^{n}\psi_{ij}$  and  $\bar{\psi}_{\cdot \cdot} := \frac{1}{m}\sum_{j=1}^{m}\bar{\psi}_{\cdot j}$ .

# The Gelman & Rubin Approach

$B$  contains a factor of  $n$  because it is based on the variance of the within-sequence means,  $\bar{\psi}_{j}$ , each of which is an average of  $n$  values.

We can estimate  $\operatorname{Var}(\psi \mid \mathbf{X})$  as a weighted average of  $W$  and  $B$  with

$$
\widehat {\mathbf {V a r}}^{+} (\psi \mid \mathbf {X}) = \frac{n - 1}{n} W + \frac{1}{n} B
$$

- overestimates the marginal posterior variance since starting distribution is over-dispersed  
- but unbiased when sampling from the desired stationary distribution.

But also have for any finite  $n$  that  $W$  should be an underestimate of  $\operatorname{Var}(\psi \mid \mathbf{X})$

- since each individual sequence may not have had time to explore all of the target, i.e. stationary, distribution  
- but  $W$  should approach  $\operatorname{Var}(\psi \mid \mathbf{X})$  in limit as  $n \to \infty$ .

# The Gelman & Rubin Approach

We therefore monitor convergence through

$$
\hat {R} := \sqrt{\frac{\widehat {\operatorname{Va r}}^{+} (\psi \mid \mathbf {X})}{W}}
$$

Note that should have  $\hat{R} > 1$  for any finite  $n$  by above argument.

But also have  $\hat{R} \to 1$  as  $n \to \infty$ .

Rule of Thumb: Values of  $\hat{R} < 1.1$  are acceptable but closer  $\hat{R}$  is to 1 the better.

We then monitor  $\hat{R}$  for all quantities  $\psi$  of interest.

# The Gelman & Rubin Approach

Note that  $B / n$  is the sample variance of  $m$  chain means so  $B / mn$  therefore estimates Monte-Carlo variance of  $\bar{\psi}$ .

Suppose now that we could take an independent sample of size  $n_{eff}$ .

Variance of the mean of this sample would be estimated as  $\widehat{\mathsf{Var}}^{+}(\psi \mid \mathbf{X}) / n_{eff}$

Equating the two estimates yields the effective sample size,  $n_{eff}$ , as

$$
n_{e f f} := m n \frac{\widehat {\operatorname{Va r}}^{+} (\psi \mid \mathbf {X})}{B} \tag {6}
$$

Generally  $n_{eff} < mn$  since samples within each sequence will be auto-correlated

- $n_{eff} / mn$  is then a measure of the simulation efficiency.

If  $m$  is small then  $B$  will have high sampling variability in which case  $n_{eff}$  will be a crude estimate

- might prefer to report  $\min (n_{eff},mn)$  in this case.

# Applications of Bayesian Modeling & MCMC

Inference in (complex) Bayesian models is typically done via one of:

1. Sampling from the posterior using MCMC algorithms such as Metropolis-Hastings, Gibbs sampling or auxiliary variable methods such as slice sampling or Hamiltonian Monte-Carlo (HMC)  
2. Approximating the posterior with more tractable distributions - a process known as deterministic inference

- methods include variational Bayes and expectation propagation.

Over the past couple of decades a lot of software such WinBugs, OpenBugs and JAGS have been made freely available

- they use Gibbs sampling to simulate from posterior and also perform various convergence diagnostics

More recently STAN has been developed (mainly by researchers at Columbia U)  

- relies on HMC to overcome slow mixing / convergence of Gibbs for very complex models.

There are Bayesian versions of classification, regression etc. as well as many other applications including …

# Data Augmentation for Binary Response Regression

- Have binary response variables  $\mathbf{y} := (y_1, \ldots, y_m)$  and corresponding covariate vectors  $\mathbf{x}_i := (x_{i1}, \ldots, x_{ik})$ .

The probit regression model is a GLM where

$$
p_{i} := P \left(y_{i} = 1\right) = \Phi \left(x_{i 1} \beta_{1} + \dots + x_{i k} \beta_{k}\right).
$$

Goal is to estimate  $\beta \coloneqq (\beta_{1},\dots ,\beta_{k})$

- can be done using standard GLM software using the 'probit' link function.

But we will use a Bayesian approach!

If we assume a prior  $\pi (\beta)$  on  $\beta$  then posterior given by

$$
\begin{array}{l} g (\boldsymbol {\beta} \mid \mathbf {y}) \propto \pi (\boldsymbol {\beta}) \prod_{i = 1}^{n} p_{i}^{y_{i}} (1 - p_{i})^{1 - y_{i}} \\ = \pi (\beta) \prod_{i = 1}^{n} \Phi \left(\mathbf {x}_{i}^{\top} \boldsymbol {\beta}\right)^{y_{i}} (1 - \Phi \left(\mathbf {x}_{i}^{\top} \boldsymbol {\beta}\right))^{1 - y_{i}}. \tag {7} \\ \end{array}
$$

Not clear how to generate samples of  $\beta$  from the posterior in (7) using Gibbs.

A clever way to resolve this problem is to define latent variables

$$
z_{i} := x_{i 1} \beta_{1} + \dots + x_{i k} \beta_{k} + \epsilon_{i}
$$

where the  $\epsilon_{i}$ 's are IID  $N(0,1)$  for  $i = 1,\ldots ,n$ .

Note that (why?)

$$
p_{i} = P \left(z_{i} > 0\right) = \Phi \left(\mathbf {x}_{i}^{\top} \beta\right).
$$

Can now regard the problem as a missing data problem where instead of observing the  $z_{i}$ 's we only observe the indicators  $y_{i} \coloneqq 1_{\{z_{i} > 0\}}$ .

Posterior distribution is now over  $(\beta, \mathbf{z})$  and is given by

$$
\begin{array}{l} g (\boldsymbol {\beta}, \mathbf {z} \mid \mathbf {y}) \propto g (\boldsymbol {\beta}, \mathbf {z}, y) \\ = \pi (\beta) \prod_{i = 1}^{n} \left[ 1_{\{z_{i} > 0 \}} 1_{\{y_{i} = 1 \}} + 1_{\{z_{i} \leq 0 \}} 1_{\{y_{i} = 0 \}} \right] \phi \left(z_{i}; \mathbf {x}_{i}^{\top} \beta , 1\right) \tag {8} \\ \end{array}
$$

where  $\phi (\cdot ;\mu ,\sigma^2)$  denotes the PDF for a normal random variable with mean  $\mu$  and variance  $\sigma^2$

# Data Augmentation for Binary Response Regression

Posterior in (8) is in a particularly convenient form for Gibbs sampling.

Suppose we assume  $\pi (\beta)\equiv 1$  , i.e. a uniform prior on  $\beta$

Can then use a block Gibbs sampler where we simulate successively from  $g(\boldsymbol{\beta} \mid \mathbf{z}, \mathbf{y})$  and  $g(\mathbf{z} \mid \boldsymbol{\beta}, \mathbf{y})$ .

Relatively(!) easy then to see that

$$
g (\boldsymbol {\beta} \mid \mathbf {z}, \mathbf {y}) \sim \operatorname{MV N}_{k} \left(\left(\mathbf {X}^{\top} \mathbf {X}\right)^{- 1} \mathbf {X}^{\top} \mathbf {z}, \left(\mathbf {X}^{\top} \mathbf {X}\right)^{- 1}\right). \tag {9}
$$

Question: How would you justify (9)?

Question: How can we simulate from  $g(\mathbf{z} \mid \boldsymbol{\beta}, \mathbf{y})$ ?

# An Application to the Donner Party Wagon Trail Dataset

Consider the data-set on the Donner party, a group of wagon trail emigrants who struggled to cross the Sierra Nevada mountains in California in 1846-47.

Interested in estimating the model

$$
P \left(y_{i} = 1\right) = \Phi \left(\beta_{0} + \beta_{1} \mathrm{Ma le}_{i} + \beta_{2} \mathrm{Ag e}_{i}\right) \tag {10}
$$

where  $y_{i} = 1$  denotes the death of the  $i^{th}$  person in the party and  $y_{i} = 0$  denotes their survival.

Have two covariates: Male (1 for males, 0 for females) and Age (in years).

Figure on next slide displays estimated percentile survival rates for men of various ages based in the Donner party

- computed by running the block Gibbs sampler and using the  $\beta$  samples (after convergence had been diagnosed) together with (10).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1f734246-7026-481c-b3ab-2f675f614081/525b35b79e07ec52295f3d165d5210ad7631fd8d6791c331e341d8ddb014fea5.jpg)

# Example: Asset Allocation with Views

In finance one can use sophisticated statistical / time series techniques to construct an objective model of security returns or risk factors.

Let  $\mathbf{X}_{t + 1}$  denote the change in risk factors between dates  $t$  and  $t + 1$

- then all security returns from  $t$  to  $t + 1$  depend on  $\mathbf{X}_{t + 1}$  only plus idiosyncratic noise.

Let  $f(\cdot)$  denote the (objective) distribution of  $\mathbf{X}_{t+1}$  based on all information available in the market place at date  $t$ .

The investor would like to construct an optimal portfolio based on the distribution  $f(\cdot)$  as well as her own subjective views of what will happen in the market between dates  $t$  and  $t + 1$ .

Question: How can she do this?

Solution: Let  $\mathbf{V} = g(\mathbf{X}_{t + 1}) + \epsilon$  be a random vector where

- $g(\cdot)$  is a function representing how these views depend on  $\mathbf{X}_{t+1}$  
- and  $\epsilon$  is a noise vector reflecting how certain the investor is in her views.
- $\epsilon$  is assumed to be independent of  $\mathbf{X}_{t+1}$  with distribution MVN $(\mathbf{0}, \Sigma)$  say.

Suppose the investor believes that  $g(\mathbf{X}_{t + 1})$  will equal  $\mathbf{v}$ .

Then we construct the conditional distribution of  $\mathbf{X}_{t + 1}$  given  $\mathbf{V} = \mathbf{v}$  and obtain

$$
\begin{array}{l} f (\mathbf {X}_{t + 1} \mid \mathbf {V} = \mathbf {v}) \quad \propto \quad f (\mathbf {X}_{t + 1}, \mathbf {v}) \\ = f (\mathbf {v} \mid \mathbf {X}_{t + 1}) f (\mathbf {X}_{t + 1}). \tag {11} \\ \end{array}
$$

We can use MCMC to simulate many samples from (11) which can then be used to construct portfolios.

We obtain the famous Black-Litterman model when  $\mathbf{X}_{t + 1}$  is the vector of security returns,  $g(\cdot)$  is linear, and all distributions are multivariate normal

- in this case the posterior can be calculated analytically.

# A Novel Application: Optimization and Code-Breaking

One day a psychologist from California's state prison system showed up at the consulting service of Stanford's Statistics department.

The problem was to decode a collection of coded messages – see example below. Student in consulting service guessed it was a simple substitution cipher

- so each symbol represents a letter, number, punctuation mark or a space.

Goal then is to crack this cipher and find the function

$$
f: \{\text{co de sp ac e} \} \rightarrow \{\text{us ua la lp ha be t} \}. \tag {12}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1f734246-7026-481c-b3ab-2f675f614081/2a93df037d257966557b019a45a455c6a2d0f24126c1802f9f4d7028053adb70.jpg)  
Figure taken from "The Markov Chain Monte Carlo Revolution", by Persi Diaconis in the Bulletin of the American Mathematical Society (2008).

# Solution approach:

1. Find a text, e.g. War and Peace, and record the first-order transitions, i.e. the proportion of consecutive text symbols from  $x$  to  $y$  - yields a matrix  $M(x,y)$  of transitions  
2. Can then define a plausibility to any function  $f(\cdot)$  vis

$$
\operatorname{Pl} (f) := \prod_{i} M \left(f \left(s_{i}\right), f \left(s_{i + 1}\right)\right)
$$

where  $s_i$  runs over symbols in coded message.

3. Functions with high values of  $\mathsf{PI}(f)$  are good candidates for decryption code in (12).  
4. So search for maximal  $f(\cdot)'s$  by running the following MCMC:

- Start with a preliminary guess, say  $f$ .  
- Compute  $\operatorname{Pl}(f)$ .  
- Change to  $f_{*}$  by making a random transposition of the values  $f$  assigns to two symbols.  
- Compute  $\operatorname{Pl}(f_{*})$ ; if this is larger than  $\operatorname{Pl}(f)$ , accept  $f_{*}$ .  
- If not, flip a  $\mathrm{Pl}(f_{*}) / \mathrm{Pl}(f)$  coin; if it comes up heads, accept  $f_{*}$ .  
- If the coin toss comes up tails, stay at  $f$ .

# And the Solution ….

to bat-rb. con todo mi respeto. i was sitting down playing chess with danny de emf and boxer de el centro was sitting next to us. boxer was making loud and loud voices so i tell him por favor can you kick back homie cause im playing chess a minute later the vato starts back up again so this time i tell him con disrespecto homie can you kick back. the vato stop for a minute and he starts up again so i tell him check this out shut the f**k up cause im tired of your voice and if you got a problem with it we can go to celda and handle it. i really felt disrespected that's why i told him. anyways after i tell him that the next thing I know that vato slashes me and leaves. dy the time i figure im hit i try to get away but the c.o. is walking in my direction and he gets me right dy a celda. so i go to the hole. when im in the hole my home boys hit doxer so now "b" is also in the hole. while im in the hole im getting schoold wrong and

Figure taken from "The Markov Chain Monte Carlo Revolution", by Persi Diaconis in the Bulletin of the American Mathematical Society (2008).

# Example: Topic Modeling

LDA is a hierarchical model used to model text documents:

Each document is modeled as a mixture of topics.  
Each topic is then defined as a distribution over the words in the vocabulary.

We assume there are:

A total of  $K$  topics.  

- A total of  $D$  documents.  
- A total of  $M$  words in the vocabulary / dictionary - words are numbered from 1 to  $M$ .

The latent Dirichlet allocation (LDA) topic model is obtained in the following generative fashion:

# Example: Topic Modeling

1. A topic mixture  $\pmb{\theta}_{d}$  for each document is drawn independently from a  $\mathrm{Dir}_K(\alpha \mathbf{1})$  distribution, where  $\mathrm{Dir}_K(\phi)$  is a Dirichlet distribution over the  $K$ -dimensional simplex with parameters  $\phi = (\phi_{1},\dots,\phi_{K})$ .  
2. Each of the  $K$  topics  $\{\beta_k\}_{k=1}^K$  are drawn independently from a  $\mathrm{Dir}_M(\gamma \mathbf{1})$  distribution.  
3. Then for each of the  $i = 1, \dots, N_d$  words in document  $d$ , an assignment variable  $z_i^d$  is drawn from  $\mathrm{Mult}(\pmb{\theta}_d)$ .  
4. Conditional on the assignment variable  $z_i^d$ , word  $i$  in document  $d$ , denoted as  $w_i^d$ , is drawn independently from  $\text{Mult}(\beta_{z_i^d})$

This is a hierarchical model and it is easy to write out the joint distribution of all the data.

Only the  $w_{i}^{d}$ 's are observed, however, so we need to use the conditional distribution to learn the topic mixtures for each document, the  $K$  topic distributions and the latent variables  $z_{i}^{d}$

- typically done via Gibbs sampling or variational Bayes.

Question: Is this a bag-of-words model?

# Example: Topic Modeling

# Topics

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1f734246-7026-481c-b3ab-2f675f614081/6a54ce87b4eb28ae0e650cf6d80e66a9a9f7b284abcb7e9d851baa039033be02.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1f734246-7026-481c-b3ab-2f675f614081/4b387cfcc9669a479cf7cf4f9283bd75e493b24bed7ab413fb23450cde3ddebd.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1f734246-7026-481c-b3ab-2f675f614081/2dee80445beaa7146faa67edbe1b9331499e1f7d9a2a7a4cca163bac013c2086.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1f734246-7026-481c-b3ab-2f675f614081/67633868c629a006674c4e9b611ab838d2c3c0e12d97f0af4a11833a2ba97f2b.jpg)  
Figure taken from "Introduction to Probabilistic Topic Models", by D.M. Blei. (2011).

# Documents

# Seeking Life's Bare (Genetic) Necessities

COLD SPRING HARBOR, NEW YORK How many genes does a organism need to survive. Last week at the genome meeting here, two genome researchers with radically different approaches presented complementary views of the basic genes needed for life. One research team, using computer analyses to compare known genomes, concluded that today's organisms can be sustained with just  $25\%$  genes, and that the earliest life forms

required a mere 128 grams. The other researcher mapped genes in a simple parasitic and estimated that for this organism, the most important job is to keep the job—but what anything short of 100 wouldn't be enough.

Although the numbers don't match precisely, those predictions

- Genome Mapping and Sequencing: Spring Harbor, New York, May 9 to 12.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1f734246-7026-481c-b3ab-2f675f614081/7b71afe59f677f77ac76c6d5fcb4b2ce6d6b7b515ef3bbcbaf075d138fa1cf21.jpg)

#  
  
7.1.1.1  
1  
#  
#

Stripping down. Computer analysis yields an estimate of the minimum modern and ancient genomes.

SCIENCE  $\cdot$  VOL.272  $\cdot$  24 MAY 1996

# Topic proportions and assignments

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1f734246-7026-481c-b3ab-2f675f614081/d772e5cd448b3b54dc0b84699c6735cd462adde63e5805ec075d1333ae47fbd5.jpg)

# An Extremely Brief Detour on Graphical Models

Graphical models are used to describe dependence / independence relationships between variables.

Two main types of graphical models:

1. Undirected graphical models which are also known as Markov networks.  
2. Directed graphical models which are also known as Bayesian networks - belief networks, i.e. directed acyclic graphs (DAG's), are an important subclass.

Each node in graph corresponds to a random variable.

The edge structure of the graph (and edge direction in case of directed graphs) help determine the conditional independence / dependence relationships between random variables

- these relationships often enable inference, e.g. computation of conditional distributions, to be performed very efficiently.

Graphical models now very popular in statistics and machine learning.

# Directed Acyclic Graphs (DAGs)

There are no directed cycles in a DAG

- implies there is a node numbering such that any link from any node always goes to a higher numbered node.

Many efficient algorithms exist for performing inference in belief networks

- inference is the problem of "understanding" the conditional distribution of the graph when some nodes are observed

# Directed Acyclic Graphs (DAGs)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1f734246-7026-481c-b3ab-2f675f614081/1b7134e2ef771896ed8d0bb5894b5090325f0fafb465b4b177854d9eb256cd1d.jpg)  
Figure 8.2 from Bishop

Note ordering of nodes in the DAG of Figure 8.2. This ordering can be used to write

$$
\begin{array}{l} p \left(x_{1}, x_{2}, \dots , x_{7}\right) = p \left(x_{7} \mid x_{4}, x_{5}\right) \cdot p \left(x_{6} \mid x_{4}\right). \\ p \left(x_{5} \mid x_{1}, x_{3}\right) \cdot p \left(x_{4} \mid x_{1}, x_{2}, x_{3} \right. \\ p (x_{3}) \cdot p (x_{2}) \cdot p (x_{1}). \\ \end{array}
$$

More generally for any DAG we have

$$
p (\mathbf {x}) = \prod_{k = 1}^{K} p \left(x_{k} \mid \mathfrak {p a} \left(x_{k}\right)\right) \tag {13}
$$

where  $\mathfrak{pa}(x)$  denotes the "parents" of node  $x_{k}$ .

It's easy (why?) to simulate from a belief network using (13)

- simulating using representation in (13) is called ancestral sampling.

Not easy to simulate from conditional distribution when some nodes are observed

- but will see that Gibbs sampling easy to implement in that case.

# Dealing with Evidence in a Belief Network

Suppose now that  $x_{3}, x_{5}$  and  $x_{6}$  have been observed and we want to compute the conditional distribution of the unobserved variables.

Using (13) this conditional distribution satisfies

$$
\begin{array}{l} p \left(x_{1}, x_{2}, x_{4}, x_{7} \mid x_{3}, x_{5}, x_{6}\right) = \frac{p \left(x_{1} , x_{2} , x_{3} , x_{4} , x_{5} , x_{6} , x_{7}\right)}{p \left(x_{3} , x_{5} , x_{6}\right)} \\ = \frac{p \left(x_{1} , x_{2} , x_{3} , x_{4} , x_{5} , x_{6} , x_{7}\right)}{\sum_{x_{1} , x_{2} , x_{4} , x_{7}} p \left(x_{1} , x_{2} , x_{3} , x_{4} , x_{5} , x_{6} , x_{7}\right)} \\ = \frac{\prod_{k = 1}^{7} p \left(x_{k} \mid \mathfrak {p a} \left(x_{k}\right)\right)}{\sum_{x_{1} , x_{2} , x_{4} , x_{7}} \prod_{k = 1}^{7} p \left(x_{k} \mid \mathfrak {p a} \left(x_{k}\right)\right)} \tag {14} \\ \end{array}
$$

where  $x_{3}, x_{5}$  and  $x_{6}$  are "clamped" at their observed values in (14).

Computing the normalizing factor, i.e. the denominator, in (14) can be computationally demanding — especially for very large DAGs.

Note also that the ordering of the original DAG (with no observed variables) is now lost. e.g.  $x_{1}$  and  $x_{3}$  are no longer independent once  $x_{5}$  has been observed.

# Sampling Given Evidence in a Directed Acyclic Graphs

Questions: Can we use still ancestral sampling to simulate from  $p(x_{1},x_{2},x_{4},x_{7}|x_{3},x_{5},x_{6})$ ? If so, is it efficient?

Question: Can we simulate efficiently from  $p(x_{1},x_{2},x_{4},x_{7}|x_{3},x_{5},x_{6})$ ?

Solution: Yes, using Gibbs sampling!

At each step of the Gibbs sampler we need to simulate from  $p(x_{i} \mid \mathbf{x}_{-i})$  where any observed values in  $\mathbf{x}_{-i}$  are clamped at these values throughout the simulation.

But it's easy to see (why?) that

$$
p (x_{i} \mid \mathbf {x}_{- i}) = \frac{1}{Z} p (x_{i} \mid p a (x_{i})) \prod_{j \in c h (i)} p (x_{j} \mid p a (x_{j}))
$$

where  $pa(x_{i})$  and  $ch(i)$  are the parent and children nodes, respectively, of  $x_{i}$ , and  $Z$  is the (usually easy to compute) normalization constant

$$
Z = \sum_{x_{i}} p (x_{i} \mid p a (x_{i})) \prod_{j \in c h (i)} p (x_{j} \mid p a (x_{j})).
$$

The parents of  $x_{i}$ , the children of  $x_{i}$  and the parents of the children of  $x_{i}$  are known collectively as the Markov blanket of  $x_{i}$ .

# Oil Exploration and Inference Using a DAG

e.g. Consider the oil exploration example on the next slide:

A directed graphical model can be used to model the geology of a particular area below the seabed of the North Sea

- this geology is complex and locating oil requires both exploration and inference.

A decision has been made to drill at node A and the figures display the changes in probabilities of oil being present at every other node conditional on:

(i) oil being found at A (left-hand heat-map).  
(ii) only partial oil being found at A (right-hand heat-map).

The probabilities, and therefore all of the changes in probabilities, can be estimated using Gibbs sampling as described above.

# Oil Exploration and Inference Using a DAG

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1f734246-7026-481c-b3ab-2f675f614081/d7218c4392228d269bc67d5017b3263241bb0ae30a7ce70a7029271c2809555b.jpg)  
Difference Oil, Oil A

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1f734246-7026-481c-b3ab-2f675f614081/1fa9a07fda0ff919625079a984d3b91a77af8cf8f474a7acf78578ecefb49085.jpg)  
Difference Oil, Partial Oil A  
Figure 4: Difference between conditional probabilities given evidence and prior probabilities. Evidence is observed in prospect A, and follows the explanations in section 3.4. Figure shows the effect of Evidence 1 (left) and 2 (right).

Figure taken from "Strategies for Petroleum Exploration Based on Bayesian Networks: a Case Study", by Martinelli et al. (2012).

# Appendix: Bayesian Model Checking

After (successfully) confirming stationarity of Markov chains, can use samples to estimate quantities of interest.

But often this is just part of a bigger analysis. In particular often need to: (1) assess model performance and (2) choose among competing models.

There are many ways to assess model performance including:

1. Comparing posterior distributions of parameters to domain knowledge.  
2. Simulating samples from the posterior predictive distribution and checking them for "reasonableness"

- can do this by first simulating  $\theta$  from posterior distribution (already have these samples from the MCMC!) and then simulating  $\mathbf{X}_{rep} \mid \theta$

3. Posterior predictive checking: design test statistics of interest and compare their posterior predictive distributions (using simulated samples) to observed values of these test statistics

- a form of internal model validation.

But see Bayesian Data Analysis (BDA) by Gelman et al. for discussion of model checking and examples.

Consider a sequence of binary outcomes  $\mathbf{y} = [y_1, \ldots, y_n]$ .

We model them as a specified number of IID Bernoulli trials with a uniform prior on the probability of success,  $\theta$ .

Let  $s := \sum y_i$ . Then posterior is

$$
\begin{array}{l} p (\theta \mid \mathbf {y}) \propto p (\mathbf {y} \mid \theta) p (\theta) \\ = \theta^{s} (1 - \theta)^{n - s} \\ \end{array}
$$

Recognize this as the Beta  $(\sum y_{i} + 1, n - \sum y_{i} + 1)$  distribution.

The data is  $y = \left[11000001111100000000\right]$

- so  $n = 20$  and  $s = 7$ .

Questions: Is this a good model? Do the data look IID (given  $\theta$ )?

We note the sequence is strongly autocorrelated with  $T(\mathbf{y}) = 3$  where  $T(\cdot)$  counts the number of switches between 0 and 1.

So let's simulate  $m$  samples  $T(\mathbf{y}_1^{rep}), \ldots, T(\mathbf{y}_m^{rep})$  from posterior predictive dist. - and compare them with  $T(\mathbf{y})$ .

# Appendix: An Example of a Posterior Predictive Check

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1f734246-7026-481c-b3ab-2f675f614081/cb2a94ae4e1cb16523e96d782fad19c8a70a0b24f90b8becfc425ca49f1dfa3f.jpg)  
Posterior Predictive Check Based on # of Switches in Coin Toss Sequence

We took  $m = 10k$  and found only  $2.8\%$  of the samples were  $\leq T(\mathbf{y}) = 3$

- pretty strong evidence against the model!

Posterior predictive checks are a form of internal model validation and in this case suggests the model is inadequate and should be improved / expanded.

# Appendix: Bayesian Model Selection

Suppose now that we have several "good" models that have "passed" various posterior predictive checks etc.

Question: How do we pick the "best" model?

There are also several approaches to this mode selection problem:

1. Information criteria approaches that estimate an in-sample error and penalize the effective number of parameters,  $p_D$ .

Two common criteria are:

(i) The deviance information criterion (DIC)  

- only suitable for certain types of Bayesian models  
(ii) The Watanabe-Akaike information criterion (WAIC)  
- recently developed and more generally applicable than DIC  
- but not suitable for models where the data is dependent (given  $\theta$ ) like time-series and spatial models.

Note that  $p_D$  is a random variable that depends on the data

- is estimated differently for DIC and WAIC.

When comparing models, a smaller DIC or WAIC is better.

Both DIC and WAIC are easily estimated from the output of an MCMC

- important given the computational demands of Bayesian modeling.

# Appendix: Bayesian Model Selection

2. Bayesian cross-validation where the data is divided into  $K$  folds

Error on each fold computed by fitting model on remaining  $K - 1$  folds. Can be computed using:

(i) mean-squared prediction error - requires predicted values of hold-out data can use posterior predictive mean which can often be estimated from MCMC.  
(ii) the log posterior predictive distribution evaluated at the hold-out data.

Cross-validation can clearly be computationally very demanding.

3. Bayes factors can also be useful when choosing among models.

Given two models  $H_{1}$  and  $H_{2}$ , the Bayes factor,  $B(H_{2};H_{1})$ , is

$$
B (H_{2}; H_{1}) := \frac{p (\mathbf {X} \mid H_{2})}{p (\mathbf {X} \mid H_{1})} = \frac{\int_{\boldsymbol {\theta}_{2}} p (\mathbf {X} \mid \boldsymbol {\theta}_{2} , H_{2}) p (\boldsymbol {\theta}_{2} \mid H_{2}) d \boldsymbol {\theta}_{2}}{\int_{\boldsymbol {\theta}_{1}} p (\mathbf {X} \mid \boldsymbol {\theta}_{1} , H_{1}) p (\boldsymbol {\theta}_{1} \mid H_{1}) d \boldsymbol {\theta}_{1}}
$$

not defined if priors  $p(\pmb{\theta}_i \mid H_i)$  not proper  

- in general need to estimate the two integrals.

Bayesian Model Averaging (BMA) is a related technique that performs inference using a weighted average of several "good" models

- weights are computed via Bayes factors.

# Appendix: Auxiliary Variable MCMC Methods

A real concern with MCMC methods is that the chain move through all areas of significant probability

- guaranteed in theory but in practice too many iterations may be required.

e.g. consider a Metropolis-Hastings algorithm with a local proposal distribution, i.e. a proposal unlikely to propose a candidate point  $x_{t+1}$  that's far from  $x_t$ .

If the target distribution has many modes or "islands" of high density, then it will take a long time to move from one island to another.

But if we use a global proposal distribution, i.e. one with very large variance, then chance of landing on a high-density island is small.

Convergence diagnostics can help us determine if the MCMC chain for a specific application is converging too slowly.

But we could also use auxiliary variable MCMC methods such as Hamiltonian Monte-Carlo or the slice sampler

- they've become very popular in recent years and (with Gibbs sampling) have begun to render (basic) Metropolis-Hastings almost obsolete!

# Appendix: Hamiltonian Monte-Carlo

Hamiltonian Monte-Carlo is an MCMC method for continuous variables. It makes non-local jumps possible so we can jump from one mode to another.

To begin, we write the target distribution as

$$
p (\mathbf {x}) = \frac{1}{Z_{x}} e^{H_{x} (\mathbf {x})}
$$

where as usual  $Z_{x}$  is unknown.

Now introduce a new auxiliary variable  $\mathbf{y}$  with

$$
p (\mathbf {y}) = \frac{1}{Z_{y}} e^{H_{y} (\mathbf {y})}
$$

- almost always choose  $\mathbf{y}$  to be Gaussian so that  $H_{y}(\mathbf{y}) = -\frac{1}{2}\mathbf{y}^{\top}\mathbf{y}$ .

We also assume

$$
p (\mathbf {x}, \mathbf {y}) = p (\mathbf {x}) p (\mathbf {y}) = \frac{1}{Z_{x} Z_{y}} e^{H_{x} (\mathbf {x}) + H_{y} (\mathbf {y})} = \frac{1}{Z} e^{H (\mathbf {x}, \mathbf {y})}
$$

where  $Z\coloneqq Z_{x}Z_{y}$  and  $H(\mathbf{x},\mathbf{y})\coloneqq H_{x}(\mathbf{x}) + H_{y}(\mathbf{y})$

# Appendix: Hamiltonian Monte-Carlo

The goal is to define an MCMC algorithm for generating samples of  $(\mathbf{x},\mathbf{y})$  with the stationary distribution  $p(\mathbf{x},\mathbf{y})$

- once stationarity is reached we can simply discard the  $\mathbf{y}$  samples.

The "trick" is to define the proposal distribution so that we can easily jump from one mode (of  $p(\mathbf{x})$ ) to another.

Can do this as follows: given a current sample  $(\mathbf{x},\mathbf{y})$  we:

1. Simulate  $\mathbf{y}'$  from  $p(\mathbf{y})$  
2. And then simulate  $\mathbf{x}'$  from  $p(\mathbf{x} \mid \mathbf{y}')$  using a Metropolis-Hastings sampler

We want the new sample  $(\mathbf{x}',\mathbf{y}')$  to satisfy

$$
H (\mathbf {x}^{\prime}, \mathbf {y}^{\prime}) \approx H (\mathbf {x}, \mathbf {y})
$$

so that it will be accepted with high probability in the M-H algorithm.

We can achieve this by moving (approximately) along a contour of  $H$  from  $(\mathbf{x},\mathbf{y})$  to  $(\mathbf{x}',\mathbf{y}')$  where  $(\mathbf{x}',\mathbf{y}') = (\mathbf{x} + \Delta \mathbf{x},\mathbf{y} + \Delta \mathbf{y})$ .

# Appendix: Hamiltonian Monte-Carlo

A first-order Taylor approximation implies

$$
\begin{array}{l} H \left(\mathbf {x}^{\prime}, \mathbf {y}^{\prime}\right) = H (\mathbf {x} + \Delta \mathbf {x}, \mathbf {y} + \Delta \mathbf {y}) \\ \approx \quad H (\mathbf {x}, \mathbf {y}) + \nabla_{x} H_{x} (\mathbf {x})^{\top} \Delta \mathbf {x} + \nabla_{y} H_{y} (\mathbf {y})^{\top} \Delta \mathbf {y} \tag {15} \\ \end{array}
$$

To move (approximately) along a contour of  $H$  would like to set sum of last two terms in (15) to 0 - a 1-dimensional constraint so many solutions possible.

Customary to use so-called Hamiltonian dynamics whereby

$$
\Delta \mathbf {x} := \epsilon \nabla_{y} H (\mathbf {y}) \quad \text{an d} \quad \Delta \mathbf {y} := - \epsilon \nabla_{x} H (\mathbf {x})
$$

so that  $H(\mathbf{x}',\mathbf{y}')\approx H(\mathbf{x},\mathbf{y})$  as desired.

We take  $L$  such Hamiltonian steps all with the same value of  $\epsilon$  which is drawn randomly according to

$$
\epsilon = \left\{ \begin{array}{l l} + \epsilon_{0}, & \text{wi th pr ob .0 .5} \\ - \epsilon_{0}, & \text{wi th pr ob .0 .5} \end{array} \right.
$$

so that the proposal distribution,  $Q(\cdot \mid \cdot)$ , is symmetric.

# Appendix: Hamiltonian Monte-Carlo Algorithm

Algorithm 27.4 Hybrid Monte Carlo sampling

1: Start from  $\mathbf{x}^1$  
2: for  $i = 1$  to  $L$  do  
3: Draw a new sample  $\mathbf{y}$  from  $p(\mathbf{y})$ .  
4: Choose a random (forwards or backwards) trajectory direction.  
5: Starting from  $x^i, y$ , follow Hamiltonian dynamics for a fixed number of steps, giving a candidate  $x', y'$ .  
6: Accept the candidate  $\mathbf{x}^{i+1} = \mathbf{x}'$  if  $H(\mathbf{x}',\mathbf{y}') > H(\mathbf{x},\mathbf{y})$ , otherwise accept it with probability  $\exp(H(\mathbf{x}',\mathbf{y}') - H(\mathbf{x},\mathbf{y}))$ .  
7: If rejected, we take the sample as  $\mathbf{x}^{i + 1} = \mathbf{x}^i$ .  
8: end for

- Algorithm 27.4 from Barber

# Appendix: Hamiltonian Monte-Carlo

The variable  $\mathbf{x}$  has the interpretation of position and the auxiliary variable  $\mathbf{y}$  has the interpretation of momentum.

Typically,  $\mathbf{y}$  has the same dimension as  $\mathbf{x}$  so there is one momentum variable for each space variable.

The Hamiltonian dynamics, i.e. movement along a contour of  $H$ , can be implemented in a more sophisticated way than (15) via so-called Leapfrog discretization

- see, for example, Bishop for details.

In order to implement the algorithm we need to specify the parameters  $L$  and  $\epsilon_0$

- success of algorithm is quite sensitive to these choices  
- improved versions of Hamiltonian MC choose these parameters adaptively  
- and these versions are implemented in the new and popular STAN software
- developed mainly by a team at Columbia University!

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1f734246-7026-481c-b3ab-2f675f614081/5dc6b2648004a3dd9d9d4f8dd1def247602a98f749d26fb2eee8d24c479dca6b.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1f734246-7026-481c-b3ab-2f675f614081/8dcc65bd4a6f7abcab815de30075407592abd1f0188f952d1f7883e50bd1d54f.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1f734246-7026-481c-b3ab-2f675f614081/108d40b913e7c91c3b8aaeb2f2137513447f7c6934fe6145e4145989b8048733.jpg)

Figure 27.9 from Barber: Hybrid Monte Carlo. (a): Multi-modal distribution  $p(x)$  for which we desire samples. (b): HMC forms the joint distribution  $p(x)p(y)$  where  $p(y)$  is Gaussian. (c): This is a plot of (b) from above. Starting from the point  $x$ , we first draw a  $y$  from the Gaussian  $p(y)$ , giving a point  $(x,y)$ , given by the green line. Then we use Hamiltonian dynamics (white line) to traverse the distribution at roughly constant energy for a fixed number of steps, giving  $x',y'$ . We accept this point if  $H(x',y') > H(x,y')$  and make the new sample  $x'$  (red line). Otherwise this candidate is accepted with probability

$\exp (H(x',y') - H(x,y'))$  . If rejected the new sample  $x^{\prime}$  is taken as a copy of  $x$

# Empirical Bayes

<table><tr><td>Claims x</td><td>0</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td></tr><tr><td>Counts yx</td><td>7840</td><td>1317</td><td>239</td><td>42</td><td>14</td><td>4</td><td>4</td><td>1</td></tr><tr><td>Formula (19)</td><td>.168</td><td>.363</td><td>.527</td><td>1.33</td><td>1.43</td><td>6.00</td><td>1.25</td><td>-</td></tr><tr><td>Gamma MLE</td><td>.164</td><td>.398</td><td>.633</td><td>.87</td><td>1.10</td><td>1.34</td><td>1.57</td><td>-</td></tr></table>

Table displays counts  $y_{x}$  of number of claims  $x$  made in a single year by 9461 automobile insurance policy holders. Robbins' formula (19) estimates the number of claims expected in a succeeding year, for instance 0.168 for a customer in the  $x = 0$  category. Parametric maximum likelihood analysis based on a gamma prior gives less noisy estimates.

Table displays one year's worth of claims data for a European insurance company. There were 9461 policy holders of whom 7840 made 0 claims, 1317 made 1 claim, 239 made 2 claims etc.

Goal: Estimate # of claims each policy holder will make next year.

# Empirical Bayes

Let  $X_{k}$  denote the number of claims made in a single year by policy holder  $k$ .

Assume  $X_{k}$  is Poisson with parameter  $\theta_{k}$  so that

$$
P \left(X_{k} = x\right) = p_{\theta_{k}} (x) := \frac{e^{- \theta_{k}} \theta_{k}^{x}}{x !}, \quad x = 0, 1, 2, \dots . \tag {16}
$$

Assume the  $\theta_{k}$ 's are random with prior  $g(\theta)$ .

Consider now an individual customer with observed number of claims  $x$ . Then we have (why?)

$$
\mathbb {E} [ \theta \mid x ] = \frac{\int_{0}^{\infty} \theta p_{\theta} (x) g (\theta) d \theta}{\int_{0}^{\infty} p_{\theta} (x) g (\theta) d \theta}. \tag {17}
$$

Note that (17) also yields the expected number of claims made by the customer next year since (why?)  $\mathbb{E}[\theta \mid x] = \mathbb{E}[X\mid x]$ .

So (17) is what the insurance company needs to answer its question if it already knows the prior  $g(\cdot)$ .

e.g. If the company assumes  $g$  is  $\mathrm{Gamma}(\nu, \sigma)$  with  $\nu$  and  $\sigma$  known, then no problem calculating (17)

- but how would we choose "good" values of  $\nu$  and  $\sigma$ ?

# Robbins' Approximation

A typical Bayesian approach would in fact assume they are unknown and would therefore place a hyper-prior (with known parameters) on  $(\nu, \sigma)$ .

In that case considerably more work required to compute  $g$  and calculate (17).

Alternatively we can be a little clever! Using (16) and (17) we have

$$
\begin{array}{l} \mathbb {E} [ \theta \mid x ] = \frac{\int_{0}^{\infty} \left[ e^{- \theta} \theta^{x + 1} / x ! \right] g (\theta) d \theta}{\int_{0}^{\infty} \left[ e^{- \theta} \theta^{x} / x ! \right] g (\theta) d \theta} \\ = \frac{(x + 1) \int_{0}^{\infty} \left[ e^{- \theta} \theta^{x + 1} / (x + 1)! \right] g (\theta) d \theta}{\int_{0}^{\infty} \left[ e^{- \theta} \theta^{x} / x! \right] g (\theta) d \theta} \\ = (x + 1) \frac{f (x + 1)}{f (x)} \tag {18} \\ \end{array}
$$

where

$$
f (x) = \int_{0}^{\infty} p_{\theta} (x) g (\theta) d \theta
$$

is the marginal density of  $X$ .

# Robbins' Approximation

Clear from (18) that to answer the insurance company's question we only need  $f(\cdot)$  and not  $g(\cdot)$ .

But we have a lot of data and can easily estimate  $f(\cdot)$  directly to obtain Robbins' approximation

$$
\begin{array}{l} \widehat {\mathbb {E}} [ \theta \mid x ] = (x + 1) \frac{\hat {f} (x + 1)}{\hat {f} (x)} \\ = (x + 1) \frac{y_{x + 1}}{y_{x}} \tag {19} \\ \end{array}
$$

with  $y_{x}$  denoting # of observations with  $x$  claims.

We see the values of  $\hat{\mathbb{E}}[\theta \mid x]$  in the third row of the table.

Values at end of third row go awry because (19) becomes unstable at that point due to small count numbers in the data for policies that had 5 or more claims.

Can help resolve this issue by using a parametric empirical Bayesian approach in contrast to the non-parametric approach outlined above.

# Parametric Empirical Bayes

Now assume prior  $g(\cdot)$  is  $\mathrm{Gamma}(\nu, \sigma)$  with

$$
g (\theta) = \frac{\theta^{\nu - 1} e^{- \theta / \sigma}}{\sigma^{\nu} \Gamma (\nu)}, \quad \theta \geq 0
$$

with  $(\nu, \sigma)$  unknown.

Instead of placing a (hyper-) prior on  $(\nu, \sigma)$  can estimate them from the data by explicitly computing (how?) the marginal density  $f(x)$  which now has parameters  $\nu$  and  $\sigma$ .

Then simply compute the MLE's  $\hat{\nu}$  and  $\hat{\sigma}$  to obtain

$$
\hat {\mathbb {E}} [ \theta \mid x ] = (x + 1) \frac{f_{\hat {\nu} , \hat {\sigma}} (x + 1)}{f_{\hat {\nu} , \hat {\sigma}} (x)} \tag {20}
$$

as our estimator - now see fourth row of table.
---
title: "Chapter 16: Numerical Models"
parent_directory: "Analysis of Fixed Income Securities Full"
formatted: "2025-12-21 06:30:25 AM"
formatter_model: "claude-sonnet-4-5-20250929"
cli-tool: "claude-code"
primary_tags:
  - numerical methods
  - monte carlo simulation
  - lattice models
  - american option pricing
  - machine learning finance
secondary_tags:
  - longstaff-schwartz model
  - particle swarm optimization
  - q learning
  - black-litterman model
  - neural networks
  - genetic algorithm
  - binomial model
  - finite difference
  - bayesian learning
cssclasses: academia
---

# Chapter 16: Numerical Models

## 16.1 Introduction

Since fixed income derivatives are in general complex, they do not have easy closed-form solutions. The majority of them require numerical methods to obtain their prices.

## 16.2 Lattice

Lattice models are most efficient to evaluate American style derivatives.

### 16.2.1 Binomial

For fixed-income derivatives, given the complexity of the yield curve and volatility surface, the equity binomial model (CRR) does not suffice.

1. Ho-Lee (normal)
2. Black-Derman-Toy (log-normal)

### 16.2.2 Finite Difference

This is also known as the trinomial model.

1. explicit
2. implicit

## 16.3 Monte Carlo

Monte Carlo is known to solve European option problems (while lattice is for American options). Yet, there are two methods that use MC to solve American option values – the Longstaff-Schwartz regression model and exogenous boundary method.

These methods, especially the LS model, are particularly important for interest rate derivatives in that many interest rate derivative contracts are very complex and must use Monte Carlo simulations to capture their complexities (e.g. path dependency). It is not possible to build a lattice model (i.e. backward induction) to evaluate these exotic interest rate derivatives.

### 16.3.1 Longstaff-Schwartz

The Longstaff and Schwartz adopt a clever idea (later on shown to be connected to machine learning) to overcome the problem of the MC that cannot solve for American option values. The idea is amazingly simple (and yet powerful).

In a lattice, we can easily perform backward induction and compare if it is worthwhile to exercise the option at any state and any given point in time. This is because the backward induction in a lattice computes the expected value of all future possible optimal decisions. As a result, if the exercise value is higher than such expected value (known as the continuation value), the decision is definitely optimal because the value of exercising today outweighs the best possible decision of the future.

Monte Carlo simulations cannot provide such an expected value. MC simulations can only move forwards and hence cannot be used to price American options – until Longstaff and Schwartz. Longstaff and Schwartz cleverly recognize that the continuation value is nothing more than a conditional expectation given the current stock price:

$$
\xi(t) = \hat{\mathbb{E}}_{t}[C(t + dt)|S(t)]
$$

where $\xi(t)$ is the conditional value at time $t$, which is the conditional expectation of future option price $C(t + dt)$ conditional on today's stock price $S(t)$. And today's option value is the larger of this continuation value (i.e. no exercise) or exercise value (i.e. exercise): $C(t) = \max\{\xi(t), X(t)\}$ where $X(t)$ is the exercise value. If the option is a put, then $X(t) = K - S(t)$. If it is a call, then $X(t) = S(t) - K$ before any dividend is paid. The process repeats at every time step.


Basic statistic knowledge indicates that $\hat{\mathbb{E}}_t[C(t + dt)|S(t)]$ is a function of today's stock price and hence we can write the future option price and today's stock price in a regression form:

$$
\begin{align}
C(t + dt) &= \hat{\mathbb{E}}_t[C(t + dt)|S(t)] + e(t + dt) \\
&= f(S(t)) + e(t + dt) \\
&= b_0 + b_1 S(t) + b_2 S(t)^2 + e(t + dt)
\end{align}
$$

where $e(t + dt)$ is the error term which is assumed to follow i.i.d with 0 mean. Longstaff and Schwartz propose a polynomial function for $f(S)$. As a result, at each time step, the LS regression is run and coefficients can be used to calculate the conditional value:


$$
\xi(t) = b_{0} + b_{1} S(t) + b_{2} S(t)^{2}
$$

which is then compared to the exercise value $X(t)$ to arrive at the option value:


$$
C(t) = \max\{\xi(t), X(t)\}
$$

and the process repeats.


Now, lets study the LS example. Eight sample paths are given for three periods, as shown in Figure 16.1a.

Stock price paths

| Path | t=0 | t=1 | t=2 | t=3 |
|---|---|---|---|---|
| 1 | 1.00 | 1.09 | 1.08 | 1.34 |
| 2 | 1.00 | 1.16 | 1.26 | 1.54 |
| 3 | 1.00 | 1.22 | 1.07 | 1.03 |
| 4 | 1.00 | 0.93 | 0.97 | 0.92 |
| 5 | 1.00 | 1.11 | 1.56 | 1.52 |
| 6 | 1.00 | 0.76 | 0.77 | 0.90 |
| 7 | 1.00 | 0.92 | 0.84 | 1.01 |
| 8 | 1.00 | 0.88 | 1.22 | 1.34 |

(a)
Cash-flow matrix at time 3

| Path | t = 1 | t = 2 | t = 3 |
|---|---|---|---|
| 1 | — | — | 0.00 |
| 2 | — | — | 0.00 |
| 3 | — | — | 0.07 |
| 4 | — | — | 0.18 |
| 5 | — | — | 0.00 |
| 6 | — | — | 0.20 |
| 7 | — | — | 0.09 |
| 8 | — | — | 0.00 |

(b)

Figure 16.1: Sample Paths and Terminal Payoff (LS)

Given the stock values at maturity $(t = 3)$, Figure 16.1b presents the put option values at strike price of 1.1.

Then we move backwards to $t = 2$. At $t = 2$, we must first compute the continuation value $\xi(2)$. This is achieved by a quadratic regression:

$$
\xi(1) = -1.07 + 2.983 \times S(2) - 1.813 \times S(2)^{2}
$$

which is presented in Figure 16.2a. Then, the continuation results are presented in Figure 16.2b. Comparing the continuation values with the exercise values, we achieve the option values at $t = 2$ shown in Figure 16.2c.


Regression at time 2

| Path | Y | X |
|---|---|---|
| 1 | 0.00 × 0.94176 | 1.08 |
| 2 | — | — |
| 3 | 0.07 × 0.94176 | 1.07 |
| 4 | 0.18 × 0.94176 | 0.97 |
| 5 | — | — |
| 6 | 0.20 × 0.94176 | 0.77 |
| 7 | 0.09 × 0.94176 | 0.84 |
| 8 | — | — |

(a)

Optimal early exercise decision at time 2

<table><tr><td>Path</td><td>Exercise</td><td>Continuation</td></tr><tr><td>1</td><td>.02</td><td>.0369</td></tr><tr><td>2</td><td>—</td><td>—</td></tr><tr><td>3</td><td>.03</td><td>.0461</td></tr><tr><td>4</td><td>.13</td><td>.1176</td></tr><tr><td>5</td><td>—</td><td>—</td></tr><tr><td>6</td><td>.33</td><td>.1520</td></tr><tr><td>7</td><td>.26</td><td>.1565</td></tr><tr><td>8</td><td>—</td><td>—</td></tr></table>

(b)
Cash-flow matrix at time 2

<table><tr><td>Path</td><td>t = 1</td><td>t = 2</td><td>t = 3</td></tr><tr><td>1</td><td>—</td><td>.00</td><td>.00</td></tr><tr><td>2</td><td>—</td><td>.00</td><td>.00</td></tr><tr><td>3</td><td>—</td><td>.00</td><td>.07</td></tr><tr><td>4</td><td>—</td><td>.13</td><td>.00</td></tr><tr><td>5</td><td>—</td><td>.00</td><td>.00</td></tr><tr><td>6</td><td>—</td><td>.33</td><td>.00</td></tr><tr><td>7</td><td>—</td><td>.26</td><td>.00</td></tr><tr><td>8</td><td>—</td><td>.00</td><td>.00</td></tr></table>

(c)

Figure 16.2: Results at  $t = 2$

We repeat the same process for  $t = 1$ . First the quadratic regression is performed and results are in Figure 16.3a. The continuation values are reported in Figure 16.3b. Finally the option values are given in Figure 16.3c.

Regression at time 1

<table><tr><td>Path</td><td>Y</td><td>X</td></tr><tr><td>1</td><td>.00 × .94176</td><td>1.09</td></tr><tr><td>2</td><td>—</td><td>—</td></tr><tr><td>3</td><td>—</td><td>—</td></tr><tr><td>4</td><td>.13 × .94176</td><td>.93</td></tr><tr><td>5</td><td>—</td><td>—</td></tr><tr><td>6</td><td>.33 × .94176</td><td>.76</td></tr><tr><td>7</td><td>.26 × .94176</td><td>.92</td></tr><tr><td>8</td><td>.00 × .94176</td><td>.88</td></tr></table>

(a)

<table><tr><td rowspan="2">Path</td><td colspan="3">Stopping rule</td></tr><tr><td>t=1</td><td>t=2</td><td>t=3</td></tr><tr><td>1</td><td>0</td><td>0</td><td>0</td></tr><tr><td>2</td><td>0</td><td>0</td><td>0</td></tr><tr><td>3</td><td>0</td><td>0</td><td>1</td></tr><tr><td>4</td><td>1</td><td>0</td><td>0</td></tr><tr><td>5</td><td>0</td><td>0</td><td>0</td></tr><tr><td>6</td><td>1</td><td>0</td><td>0</td></tr><tr><td>7</td><td>1</td><td>0</td><td>0</td></tr><tr><td>8</td><td>1</td><td>0</td><td>0</td></tr></table>

(c)

<table><tr><td colspan="3">Optimal early exercise decision at time 1</td></tr><tr><td>Path</td><td>Exercise</td><td>Continuation</td></tr><tr><td>1</td><td>.01</td><td>.0139</td></tr><tr><td>2</td><td>—</td><td>—</td></tr><tr><td>3</td><td>—</td><td>—</td></tr><tr><td>4</td><td>.17</td><td>.1092</td></tr><tr><td>5</td><td>—</td><td>—</td></tr><tr><td>6</td><td>.34</td><td>.2866</td></tr><tr><td>7</td><td>.18</td><td>.1175</td></tr><tr><td>8</td><td>.22</td><td>.1533</td></tr></table>

(b)

<table><tr><td colspan="4">Option cash flow matrix</td></tr><tr><td>Path</td><td>t=1</td><td>t=2</td><td>t=</td></tr><tr><td>1</td><td>.00</td><td>.00</td><td>.0</td></tr><tr><td>2</td><td>.00</td><td>.00</td><td>.0</td></tr><tr><td>3</td><td>.00</td><td>.00</td><td>.0</td></tr><tr><td>4</td><td>.17</td><td>.00</td><td>.0</td></tr><tr><td>5</td><td>.00</td><td>.00</td><td>.0</td></tr><tr><td>6</td><td>.34</td><td>.00</td><td>.0</td></tr><tr><td>7</td><td>.18</td><td>.00</td><td>.0</td></tr><tr><td>8</td><td>.22</td><td>.00</td><td>.0</td></tr></table>

(d)

Figure 16.3: Results at  $t = 1$

See Excel

### 16.3.2 Free-Boundary PDE

In an alternative (relatively unsuccessful) attempt, researchers have tried to solve American-style derivatives by using an explicit exercise boundary. The approach is built upon the nice property that option prices of any kind are solutions to a class of differential equations which can be solved as a "free boundary problem". In other words, as long as the exercise boundary of an option is known, its price is no more than a simple integration along the exercise boundary. Unfortunately, not only is the exercise boundary of an American-style derivative unknown, but it is recursive (i.e. the boundary value at the current time depends on the boundary value at the immediately later time - resulting a recursively dependent structure of boundary values). In other words, the boundary function can only be achieved via a lattice model (e.g. binomial model). In doing so, the option is guaranteed to be exercised optimally and the valuation can hence be at the maximum. As Carr (1998), among others, points out, if we solve an American-style derivative premium as a free-boundary problem, then we can use an explicit boundary function and the American-style derivative premium is simply an integration of payoff function (e.g. put) over the boundary.


$$ \xi(t) = \hat{\mathbb{E}}_t\left[e^{-r\tau} \max\{X(\tau), 0\}\right] $$ where  $X(\tau)$  is the exercise value at the stopping time  $\tau$ . If it is a put option without dividends which is the case in this paper, then  $X(\tau) = K - S(\tau)$ . On the boundary,  $S(\tau) = B(\tau)$  and hence  $X(\tau) = K - B(\tau)$  where  $B(\tau)$  is the boundary function given exogenously. The way the boundary function works is that it serves as a stopping time. Once the stock price at time  $t$  hits the boundary  $B(t)$ , the process stops and the option will be exercised and paid and hence the American-style derivative can be evaluated as a barrier option.


The easiest way to perform the integration is through Monte Carlo simulations. As the derivative price $\xi(t)$ is given as an expected value:

$$
\xi(t) = \frac{1}{N} \sum_{j=1}^{N} e^{-r \tau_{j}} \max\{K - B(\tau_{j}), 0\}
$$

We note that the recursively determined boundary function (via a lattice model) maximizes the option value, any other exogenously specified boundary function will only be "sub-optimal", that is, generating a lower value than the lattice model. This sub-optimal argument is convenient in that now we can simply try a large number of boundary functions and use the one that generates the highest option value as a good approximation.

Researchers then have tried various approximations on the exercise boundary. These approximations are explicit functions and hence can be easily integrated (and hence American-style derivative value solved for). According to a recent survey by Nunes (2008), the literature has the following functional forms:

1. Constant: $B(t) = a_0$
2. Linear: $B(t) = a_0 + a_1t$
3. Exponential: $B(t) = a_0e^{a_1t}$
4. Exponential-constant: $a_0 + e^{a_1t}$
5. Polynomial: $B(t) = \sum_{i=1}^n a_i t^{i-1}$

6. Carr-Jarrow-Myneni (2008): $B(t) = \min(K, \frac{r}{q}K)e^{-a\sqrt{T-t}} + E_{\infty}[1 - e^{-a\sqrt{T-t}}]$

Note that the boundary is not a function of the stock price (i.e. free boundary problem). Since these boundary functions are explicit, they can be easily integrated.

Certainly the accuracy of the American value depends on the accuracy of the approximated boundary function. The problem of this approach is that there is no consensus of which functional form of the boundary can consistently be the best. Often it varies with the parameters of the option (i.e. moneyness, interest rate, time to maturity, and volatility). As a result, no conclusion can be drawn on a particular functional form.

So far the literature has not reached any consensus and the boundary seems to be payoff-specific. In other words, different payoffs require different boundaries for accurate American-style derivative values. As a result, it is quite natural to allow the boundary function to be absolutely free (i.e. one value per time step). Yet this requires an optimization in high dimensions. As the number of time steps increases, the cost of computation becomes exponentially prohibitively high.

We can use the flat boundary to introduce this solution.

## 16.4 AI/ML Tools

Artificial intelligence and machine learning knowledge has been gradually introduced into the finance and banking industry in recent years. Many business schools have incorporated such knowledge into their curricula and yet very few can clearly articulate the strengths and weaknesses of various applications of this knowledge and worse how to pick and choose the best tools.

The most criticisms about AI/ML in finance are their non-transparency. These are complex tools and hard to explain how or why they work.

### 16.4.1 What is AI? ML? and BD?

Artificial intelligence (AI), machine learning (ML), and big data (BD) have recently been adopted into FinTech and been the fastest growing area in finance, both in private industry and academia. While these three areas are frequently used in combinations in developing valuable applications, these three areas are fundamentally different and deserve separate research.

Strictly speaking, AI is a combination of computation (artificial) and biology (intelligence) which is quite different in nature from ML which is based upon statistical methodologies. In the past, statistics have predominantly been presented in a parametric fashion, mainly due to insufficient computation power and lack of data. This has been changed recently and non-parametric statistics with powerful computation capabilities fuel the growth of machine learning. As non-parametric statistics require a large amount of data, ML and BD (such as NLP, or natural language processing) have been combined in revolutionizing the financial world. Together, they facilitate the progress of AI.


AI has four major branches:

- swarm intelligence (birds, ants, bees, fish)
- reinforcement learning (mice (in maze))
- genetic algorithm (genes) neural networks (neurons)

These AI theories are behavioral models in that they "artificialize" natural intelligence (specified in parentheses above) which reflects biological behaviors. As a result, they are different from ML methodologies. The connection (and hence confusion) of these two is due to the fact that these AI models can be efficiently used to find optimal solutions (e.g. PSO) which then are similar to ML models. Indeed, from the perspective of computation, one can hardly differentiate one tool from the other and in many instances these two distinctly different theories are used in combination.

Machine learning (ML) is very close to non-parametric statistics. In statistics, in the past parametric forms were preferred due to lack of computation power. Now with new technologies in computation, both software (parallel computing) and hardware (GPU, graphic processing units), we expand the statistics into non-parametric areas that allow more flexible, complex models.

ML has many overlaps with statistics (or econometrics):

Monte Carlo simulations
- stochastic processes maximum likelihood
- linear programming
- principle component (regularization) etc.

None of AI or ML can be useful without a large amount of data. Data analysis (or data science) has grown from the computer science (theoretical) field to all walks of life. The capability of analyzing data has expanded from numerals to textuals, and further into videos. Big data (BD) has become a field of its own which includes:

NPL
- visualization
- database technology etc.

### 16.4.2 Particle Swarm Optimization

In theory, swarm intelligence is effective for optimization problems in a high-dimensional space. PSO is such an application. The original version of PSO was first proposed by Eberhart and Kennedy (1995) who modify the behavioral model of swarm into an objective-seeking algorithm. Similar to Renold's, their model "artificializes" the group behavior of a flock of birds seeking food. Via bird-to-bird chirping (peer-to-peer communication), all birds fly to the loudest sound of chirping. Subsequently, Eberhart and Shi (1998) improve the model by adding an inertia term (symbolized as  $w$  later as we introduce the model) and it has become the standard PSO algorithm used today. Setting a proper value of the inertia term is to seek the balance between exploitation and exploration. A larger value of the inertia term gives more weight to exploration (as the bird is more likely to fly on its own) and a smaller value of the inertia term gives more weight to exploitation (as the bird intends more to fly toward other birds).

One can compare PSO to the grid search. A grid search can find the global optimum and yet it takes an exploding amount of time to reach such a solution, especially in a high-dimensional space. PSO can be regarded as a "smart grid search" where each particle performs a "stupid search" and yet by communicating with other particles and by having a large number of such particles we can reach the global optimum quickly.

Imagine we would like to measure the deepest place of a lake whose bottom has an uneven surface. A two-dimension grid search can easily find the global minimum. An alternative would be PSO. Imagine we have a number of "fish" (particles) who swim in the lake. At each time step, all fish will measure the depth of the lake underneath them. And each fish is communicating with all the other fish to decide whose depth is the deepest (minimum). All fish now remember the minimum and then they swim for another time step. At each time step they update the global minimum so far. If we let these fish swim randomly for enough time, we will reach the global minimum.


In the case of the lake, we may find the grid search to be more accurate and time-effective. But in an  $n$ -dimensional lake, grid searches are becoming ineffective but the same number of fish may just do the same job with the same amount of time as in the two-dimensional lake.

Currently there have been some limited number of applications of PSO in finance, mostly in portfolio selection. In this paper, we use it for the first time in the literature to locate the exercise boundary of American-style derivatives (specifically, put option, option on min/max, and Asian option).

The PSO algorithm can be formally defined as follows. For $i = 1, \dots, n$ particles and each particle is a vector of dimensions, we have:

$$
\begin{cases}
\vec{v}_{i,j}(t+1) = w(t)\vec{v}_{i,j}(t) + r_1c_1(\vec{p}_{i,j}(t) - \vec{x}_i(t)) + r_2c_2(\vec{g}(t) - \vec{x}_{i,j}(t)) \\
\vec{x}_{i,j}(t+1) = \vec{x}_{i,j}(t) + \vec{v}_{i,j}(t+1)
\end{cases}
$$ where $\vec{v}_{i,j}(t)$ is velocity of the $i$th particle in the $j$th dimension at time $t$; $\vec{x}_{i,j}(t)$ is position of the $i$th particle in the $j$th dimension at time $t$; $w(t)$ is a "weight" (less than 1) which decides how the current velocity will be carried over to the next period (and usually it is set as $w(t) = \alpha w(t - 1)$ and $\alpha < 1$ to introduce diminishing velocity); and finally $r_1, r_2 \sim u(0,1)$ follow a uniform distribution.


![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/2bda2ed570870e882f00d1b3f25eb3e154482711e36ae46861cd527f78b7b556.jpg)
Figure 16.4: PSO Demonstration

Application 1: Portfolio Optimization

See Excel and paper

Application 2: American Option Pricing

See paper

#### Other Applications

Anything problem that has high-dimensions (e.g. American option exercise boundary and portfolio weights) can benefit from PSO. This is the area where traditional numerical algorithms (e.g. SciPy or Excel Solver) do not do a good job.

The swing contract of natural gas described in the next sub-section is a good example.

### 16.4.3 Q Learning - Swing Contract

According to: https://amunategui.github.io/reinforcement-learning/index.html:

Q-learning is a model-free reinforcement learning technique. Specifically, Q-learning can be used to find an optimal action-selection policy for any given (finite) Markov decision process (MDP).

Machine learning is assumed to be either supervised or unsupervised but a recent new-comer broke the status-quo - reinforcement learning. Supervised and unsupervised approaches require data to model, not reinforcement learning! That's right, it can explore space with a handful of instructions, analyze its surroundings one step at a time, and build data as it goes along for modeling.

Wikipedia:

Q-learning is a model-free reinforcement learning algorithm to learn a policy telling an agent what action to take under what circumstances. It does not require a model (hence the connotation "model-free") of the environment, and it can handle problems with stochastic transitions and rewards, without requiring adaptations.

$$
\begin{align}
\underbrace{Q(s_t, a_t)}_{\text{newvalue}} &\leftarrow (1 - \alpha) \underbrace{Q(s_t, a_t)}_{\text{oldvalue}} + \underbrace{\alpha}_{\text{learningrate}} \left(\underbrace{R_t}_{\text{reward}} + \underbrace{\gamma}_{\text{discountfactor}} \cdot \underbrace{\max_a Q(s_{t+1}, a_t)}_{\text{est'doptimalfuturevalue}}\right) \\
&= Q(s_t, a_t) + \underbrace{\alpha\left(R_t + \gamma \cdot \max_a Q(s_{t+1}, a_t) - Q(s_t, a_t)\right)}_{\text{temporaldifference}}
\end{align}
$$

When  $\alpha = 1$ , then above equation simplifies to:

$$ \underbrace{Q(s_t, a_t)}_{\text{newvalue}} \gets R_t + \gamma \cdot \max_a Q(s_{t+1}, a) $$

#### An Example - Finding Optimal Route

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/b74fe213c4908b6b3b9c13e9761dfe05f077a54afaa93b29f6ad43218c3b9f7b.jpg)
Figure 16.5: Finding Optimal Route

#### An Application - Natural Gas Swing Contract

A swing contract is an option contract that allows the buyer to buy at each day a flexible quantity (but up to daily and global limits) of natural gas at a strike price for a period of time.

At each day, the buyer of the swing contract can also withdraw any quantity of natural gas (but up to the storage limit) to sell to the market at the market price.

As a result, it is a derivative contract that must be balanced between price and quantity in order to maximize the profit.

$$
\max_{\underline {{N}} \in \mathbb {N}} \left\{\sum_{i = 1}^{n_{f}} N_{i} \Phi (T_{i}, T_{i} + 1 \mathrm{d}) \right\}
$$

### 16.4.4 Bayesian Learning - Black-Litterman Model

The basic probability theory states that:

$$ p(A|B) = \frac{p(B|A)p(A)}{p(B)} \tag{16.1} $$ where  $A$ ,  $B$  are two closed sets.


In terms of density notation:

$$
\begin{align}
f(\theta|x) &= \frac{f(x|\theta)f(\theta)}{f(x)} \tag{16.2} \\
&\propto f(x|\theta)f(\theta)
\end{align}
$$ where  $f(\cdot)$  is a generic density function symbol and does not present any specific functional form.


In plain English, using Bayesian probability terminology, the above equation can be viewed as:

$$
\mathrm{po st er io r} = \frac{\mathrm{li ke li ho od} \times \mathrm{pr io r}}{\mathrm{ev id en ce}}
$$

The usual econometric interpretation of the this equation is that  $x$  represents data observed in reality. The model (if correct) that generates the data is  $f(x|\theta)$  where  $\theta$  represents a set of parameters of the model. A usual example is a normal model where  $\theta = \{\mu, \sigma^2\}$  (i.e. mean and variance). If the model is correct, then the data observed  $x$  should follow a normal distribution. (Certainly, we can test this hypothesis.) This is known as the likelihood function.

In the usual case, the parameters of the model are assumed to be constants. Yet, Bayesian theorists argue that they can be random and follow a distribution themselves - generically  $f(\theta)$  (e.g.  $\mu$  follows a normal distribution and  $\sigma$  follows a  $\Gamma$  distribution). This is known and the prior distribution.

By the probability theory (density functions under Bayes theory) then gives rise to the distribution of the parameters given data,  $f(\theta | x)$ , as in equation (16.2). We can then establish statistics of this posterior distribution about the parameters.

In finance (economics), we always assume that data are generated by model, and hence little discussion of  $f(x)$ . Yet in a broader context (e.g. equation (16.1)),  $x$  is not necessarily data generated by model. For example, in ML,  $x$  can be interpreted as features and  $\theta$  can be interpreted as classes. Given that  $f(x)$  consists of observed data, it has no impact if we would like to find the maximum class  $\theta$  and is just a scalar. Hence, it can be ignored (line 2 of equation (16.2)).

Switch of notation (to be more consistent with the ML literature):

$$
\begin{array}{l} h_{\text{MAP}} = \arg \max_{h\in H}p(h|D) \\ = \arg \max_{h \in H} \frac{p (D | h) p (h)}{p (D)} \\ = \arg \max_{h \in H} p (D | h) p (h) \\ \end{array}
$$ where  $D$  represents data and  $h$  for class.


In the following example,  $\theta$  is going out or staying home and  $x$  is weather. We would like to use weather to predict of people go out or not.

<table><tr><td>Weather</td><td>Play</td></tr><tr><td>Sunny</td><td>No</td></tr><tr><td>Overcast</td><td>Yes</td></tr><tr><td>Rainy</td><td>Yes</td></tr><tr><td>Sunny</td><td>Yes</td></tr><tr><td>Sunny</td><td>Yes</td></tr><tr><td>Overcast</td><td>Yes</td></tr><tr><td>Rainy</td><td>No</td></tr><tr><td>Rainy</td><td>No</td></tr><tr><td>Sunny</td><td>Yes</td></tr><tr><td>Rainy</td><td>Yes</td></tr><tr><td>Sunny</td><td>No</td></tr><tr><td>Overcast</td><td>Yes</td></tr><tr><td>Overcast</td><td>Yes</td></tr><tr><td>Rainy</td><td>No</td></tr></table>

<table><tr><td colspan="3">Frequency Table</td></tr><tr><td>Weather</td><td>No</td><td>Yes</td></tr><tr><td>Overcast</td><td></td><td>4</td></tr><tr><td>Rainy</td><td>3</td><td>2</td></tr><tr><td>Sunny</td><td>2</td><td>3</td></tr><tr><td>Grand Total</td><td>5</td><td>9</td></tr></table>

<table><tr><td colspan="3">Likelihood table</td><td></td><td></td></tr><tr><td>Weather</td><td>No</td><td>Yes</td><td></td><td></td></tr><tr><td>Overcast</td><td></td><td>4</td><td>=4/14</td><td>0.29</td></tr><tr><td>Rainy</td><td>3</td><td>2</td><td>=5/14</td><td>0.36</td></tr><tr><td>Sunny</td><td>2</td><td>3</td><td>=5/14</td><td>0.36</td></tr><tr><td>All</td><td>5</td><td>9</td><td></td><td></td></tr><tr><td></td><td>=5/14</td><td>=9/14</td><td></td><td></td></tr><tr><td></td><td>0.36</td><td>0.64</td><td></td><td></td></tr></table>

Figure 16.6: Simple Example of Bayesian Learning

In this example,

$$ p(\mathrm{Sunny}|\mathrm{Yes}) = \frac{p(\mathrm{Sunny} \& \mathrm{Yes})}{p(\mathrm{Yes})} = \frac{3}{9} = 0.33
$$

$$ p(\text{Sunny}) = \frac{5}{14} = 0.36; p(\text{Yes}) = \frac{9}{14} = 0.64
$$

$$ p(\text{Yes}|\text{Sunny}) = 0.33 \times \frac{0.64}{0.36} = 0.60
$$ which has higher probability.


# Naive Bayes

Naïve Bayes is a classifier. In other words, it limits  $\theta$  to be distinct classes (either  $0/1$  or  $1, 2, 3, \dots, n$ ). Hence we change notation from  $\theta$  to  $C_k$ .

$$
\begin{array}{l} p (C_{k} | x_{1}, \dots , x_{n}) = p (C_{k} | \underline {{x}}) \\ = \frac{p (C_{k}) p (\underline {{x}} | C_{k})}{p (\underline {{x}})} \\ \approx p (C_{k}) p (\underline {{x}} | C_{k}) \\ \end{array}
$$ where the last line indicates that the  $p(\underline{x})$  is purely data and can be ignored.


The likelihood function is very familiar and can be estimated with data easily as follows:

$$
\begin{array}{l} p (x_{1}, \dots , x_{n}, C_{k}) = p (x_{1} | x_{2}, \dots , x_{n}, C_{k}) p (x_{2}, \dots , x_{n}, C_{k}) \\ = p \left(x_{1} \mid x_{2}, \dots , x_{n}, C_{k}\right) p \left(x_{2} \mid x_{3}, \dots , x_{n}, C_{k}\right) p \left(x_{3}, \dots , x_{n}, C_{k}\right) \\ = p \left(x_{1} \mid x_{2}, \dots , x_{n}, C_{k}\right) p \left(x_{2} \mid x_{3}, \dots , x_{n}, C_{k}\right) \dots p \left(x_{n} \mid C_{k}\right) p \left(C_{k}\right) \\ = p (x_{1} | x_{2}) p (x_{2} | x_{3}) \dots p (x_{n} | C_{k}) p (C_{k}) \\ \end{array}
$$ where the last line is a result of Markov property (no memory). In the Gaussian case, this function has a closed-form solution and analytical derivatives can be taken:


$$
\frac{\partial p}{\partial C_{k}} = 0
$$ for all  $k$ . Solving for the simultaneous equations for  $C_k$  yields the estimators (equations) for  $C_k$ . However, in the real world, the distributions are not Gaussian and we must use numerical tools to solve for the classification functions.


by Jason Brownlee on December 8, 2014 in Algorithms From Scratch (https://machinelearningma bayes-classifier-scratch-python/)

# Black-Litterman Model https://kaihuahuang.github.io/2019/09/09/Basic-Black-Litterman-Asset-Allocation/


The Black-Litterman asset allocation model, created by Fischer Black and Robert Litterman, is a sophisticated portfolio construction method that overcomes the problem of traditional mean-variance asset allocation.

The Black-Litterman model uses a Bayesian approach to combine the subjective views of an investor regarding the expected returns of one or more assets with the market equilibrium vector of expected returns (the prior distribution) to form a new, mixed estimate of expected returns.

Below is the picture summerizes the whole framework:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/2a7e07ff583b2c9fa1c833337a425c1ad46f81133eb9216328394732140a71a3.jpg)
Figure 16.7: Black-Litterman Model

Utility maximization gives:

$$
U = \underline{\omega}'\underline{\mu} - \frac{1}{2}\lambda\underline{\omega}'\Sigma\underline{\omega}
$$

$$
\frac{\partial U}{\partial \underline{w}} = \underline{\mu} - \lambda\Sigma\underline{\omega} = 0
$$

$$
\underline{\mu} = \lambda\Sigma\underline{\omega}
$$ where  $\lambda$  is similar to risk aversion of the individual.


Replacing  $w$  (optimal weights) by the sizes of market capitalization of the stocks:

$$
\underline{\pi} = \lambda\Sigma\underline{w}_M
$$ where  $\underline{w}_M$  is the vector of market capitalizations.


(1) Define

$$
\pi = \lambda \Sigma \omega
$$

Let  $\lambda$  represent the magnitude of risk aversion. It can either be an arbitrary assumption or can be given by


$$
\lambda = \frac{\mathbb{E}[r] - r_f}{\sigma^2}
$$ where  $\mathbb{E}[R]$  is return of the market portfolio (a portfolio that includes all the assets in the market or any other index benchmark that the investor decide to choose);  $r_f$  is risk free market rate,  $\sigma^2$  is variance of the market portfolio;  $\Sigma$  is the covariance matrix of the assets ( $N \times N$  matrix); and  $\omega$  is a matrix of weights of assets according to their market capitalization.


(2) After deriving the assets' implied returns, then we can compute the expected return,  $\mathbb{E}[R]$  which is an  $N\times 1$  vector, of the assets under the Black-Litterman model with the following equation.

$$
\mathbb {E} [ R ] = \left[ (\tau \Sigma)^{- 1} + P^{\prime} \Omega P \right]^{- 1} \left[ (\tau \Sigma)^{- 1} \underline {{\pi}} + P^{\prime} \Omega Q \right]
$$ where  $\tau$  is a number indicating the uncertainty of the CAPM distribution (It is usually within the range of 0.025-0.05);  $P$  is a matrix with investors views; each row a specific view of the market and each entry of the row represents the weights of each assets ( $K \times N$  matrix);  $Q$  is the expected returns of the portfolios from the views described in matrix ( $K \times 1$  vector);  $\Omega$  is diagonal covariance matrix with entries of the uncertainty within each view ( $K \times K$  matrix) $\Sigma$  and  $\Pi$  as described in previous section.


(3) Once we compute  $\mathbb{E}[R]$ , then we can compute the posterior variance matrix  $M$ , which will be used to compute the new covariance matrix. The new covariance matrix

$$
M = \left[ (\tau \Sigma)^{- 1} + P^{\prime} \Omega P \right]^{- 1}
$$

(4)

$$
\Sigma_{P} = \Sigma + M
$$

With the new covariance matrix, we can then calculate the new portfolio weights

$$
\omega = \left(\lambda \Sigma_{P}\right)^{- 1} \underline {{\pi}}
$$

Indian paper:

Let  $\underline{\pi}_t$  be the  $N\times 1$  conditional mean vector and let  $\Sigma_t$  be the  $N\times N$  covariance matrix estimate of these returns given information available at time  $t - 1$ . In addition, define  $\omega_{t - 1}$  as the vector of market capitalization weights at time  $t - 1$ . When the CAPM holds, the conditional mean vector satisfies the following equation:

$$
\underline {{\pi}}_{t} = \lambda \Sigma_{t} \omega_{t - 1}
$$ where  $\lambda$  is the risk aversion coefficient.


$$
Q_{t} (k) = (P_{t} \Pi_{t}) (k) + \eta_{k} \sqrt{P_{t} \Sigma_{t} P_{t}^{\prime} (k , k)}
$$ where  $\eta_{k}$  in  $\{-2, -1, 1, 2\}$  defines "very bearish", "bearish", "bullish" and "very bullish" respectively. To impose views we use two classifiers, one to predict the sign of  $\eta_{k}$  and the other to predict its absolute value. i.e., we use the following two binary level responses to train various classifiers and predict the qualitative view of next period.


$$
Y_{1} = \left\{ \begin{array}{l l} - 1 & \text{if si gn of ex ce ss re tu rn of th en ex tw ee k 's is ne ga ti ve} \\ 1 & \text{if si gn of ex ce ss re tu rn of th en ex tw ee k 's is po si ti ve} \end{array} \right.
$$

$$
Y_{2} = \left\{ \begin{array}{l l} 1 & z_{t} = \frac{r_{t} - \bar {r}_{t , 3}}{\sigma_{t , 3}} \leqslant 1 \\ 2 & z_{t} = \frac{r_{t} - \bar {r}_{t , 3}}{\sigma_{t , 3}} > 1 \end{array} \right.
$$

$$
Y = \left\{ \begin{array}{l l} - 2 & \text{ve ry be ar is h} \\ - 1 & \text{be ar is h} \\ 1 & \text{bu ll is h} \\ 2 & \text{ve ry bu ll is h} \end{array} \right.
$$

We need to compute  $Y_{1}$ , using Naïve Bayes.

### 16.4.5 Neural Networks - Credit Ratings

This is main for credit rating (i.e. classification). But its applications are way beyond that (practically a virgin land)

# Basic Theory

1. single layer NN (with a sigmoid function) is identical to logistic regression.

2. backpropagation is identical to recursive algorithm
3. confusion matrix is similar to ROC (accuracy ratio) diagram

# CNN vs. RNN

Convolutional neural network (CNN) is mainly for image recognition. It is a powerful classification tool. Not to be confused with RNN (recurrent neural network) which is successful in language processing (e.g. Google).

Due to its recurrent nature, RNN has been promoted to study time series - which is a fallacy.

# Deep Learning

NN is often referred as deep learning, which is not appropriate.

### 16.4.6 Genetic Algorithm

It is a tool for seeking the optimal solution, again in a high dimensional space search. To a certain degree, it is very similar to PSO (no surprise!) in that they both aim at solving a high dimensional problem.

Yet, GA is more algorithmic (i.e. programming intensive) than PSO which is only linear algebra. It would be interesting to compare the two and see which is better at which.

### 16.4.7 Other Classification ML Tools

There are a bunch:

1. regularization
2. regression tree
3. random forest
4. discriminant analysis
5. support vector machine
6. etc...

### 16.4.8 Issues of Overfitting

One major problem with ML tools is the failure to detect convergence. Except for very few (e.g. Q learning), ML tools are hard to see if the result has reached even the local optimum. As it turns out, if you continue to run the algorithm but it has already reached the global optimum, it will then drift away from the optimal solution.

This is because there is a tradeoff between: exploitation


- exploration

Exploration is to let the system wander more in order to find a new/better global optimum. Yet this slows the system down. Otherwise, exploitation will render the system run to a local optimum fast.

Since there is no clear criteria to decide the balance between the two forces, there is naturally no good way to define a convergence. There are a few proposals for setting up a balance between the two but none receives any consensus.

On the other hand, in econometrics, there is a likelihood ratio test (but the models must be nested) to examine if one can stop fitting a more complex model. As a result, future research in ML in finance can incorporate such methods.

In sum, this is an exploding area (although quite a while in technology areas) in finance. Welcome to join the once in a lifetime opportunity!


---
parent_directory:
title: "Beyond Black-Litterman in Practice: a Five-Step Recipe to Input Views on non-Normal Markets"
tags:
aliases:
parent_folder: Lecture Notes
subfolder:
key_concepts:
cssclasses: academia
linter-yaml-title-alias: "Beyond Black-Litterman in Practice: a Five-Step Recipe to Input Views on non-Normal Markets"
---

# Beyond Black-Litterman in Practice: a Five-Step Recipe to Input Views on non-Normal Markets

Attilio Meucci

Lehman Brothers, Inc., New York e-mail: attilio.meucci@lehman.com website: www.symmys.com

May 2006

# Abstract

The copula-opinion pooling (COP) approach extends in principle the Black-Litterman methodology to non-normally distributed markets and views. However, the implementations of the COP framework presented so far rely on restrictive quasi-normal assumptions. Here we present a general recipe to implement the COP approach in practice under all possible market and views specifications.

JEL Classification: C1, G11

Keywords: opinion pooling, views, copula, skewness, fat tails, Bayesian prior, posterior, Monte Carlo, quantitative portfolio management, asset allocation, CVaR, expected shortfall, Student  $t$  copula, non-parametric estimation

www.symmys.com > Research > Working Papers

# 1 Introduction

The pathbreaking technique by Black and Litterman (1990) (BL) allows portfolio managers to compute a posterior market distribution that smoothly blends their subjective views on the market with a prior market distribution, under the assumption that all the distributions involved be normal.

In reality the markets are in general highly non-normal. Furthermore, practitioners might wish to input their views in less informative ways than the "alpha + normal noise" prescription of BL, for instance by means of uniform distributions on ranges. Finally, the markets are not necessarily represented by a set of returns: for instance, for a trader of Asian options the market is the set of prices of one single underlying at specific monitoring times.

In theory, these issues are fully addressed by the copula-opinion pooling (COP) approach, see Meucci (2006). Nevertheless, the practical implementation proposed in that paper obtains the posterior distribution under very specific quasi-normal assumptions. Indeed, the market is assumed skew- $t$  distributed and the computation of the market posterior relies on the property that, as in the normal case, linear combinations of skew- $t$  distributed variables are skew- $t$  distributed. Therefore, the applicability of the COP framework in general is not evident.

However, it turns out that the implementation in practice of the COP approach under any distributional assumption is straightforward: by representing the prior market distribution in terms of a very large number of Monte Carlo scenarios, an equal number of scenarios from the COP posterior market distribution can be computed in a fraction of a second. Also, Monte Carlo methods are not cursed by dimensionality: therefore the COP approach can handle markets with any number of risk factors.

In this note we discuss the above implementation recipe. In section 2 we briefly review the COP approach. In Section 3 we start the implementation by collecting the necessary inputs, namely the market prior and the practitioner's views, under extremely general assumptions. In Section 4 we detail five simple steps that lead from the COP inputs to the final COP output, namely the posterior market distribution. In Section 5 we show how to solve a portfolio optimization problem with the very general representation of the posterior obtained above. In Section 6 we conclude.

In order to illustrate the general implementation recipe we discuss a nontrivial example in the Treasuries market. For the reader's convenience we also provide fully documented MATLAB code at symmsy.com > Book > Downloads > MATLAB > COP.

# 2 Review of the COP approach

Here we briefly review the COP approach. For the motivations behind this methodology, more details on the theory underlying it and a direct comparison with the BL approach the reader is referred to Meucci (2006).

The starting point of the COP approach is the multivariate distribution of the  $N$ -dimensional market vector  $\mathbf{M}$ . For instance,  $\mathbf{M}$  could represent the returns on a set of securities. Unlike in BL, the market vector  $\mathbf{M}$  could also represent a collection of risk factors in a (non-linear) factor model, or a set of values of one stochastic process at specific monitoring times, or any other set of random variables that drives the randomness in the market.

Financial institutions estimate and model the distribution in which they operate. We represent this generic distribution in terms of its probability distribution function (pdf):

$$
\mathbf {M} \sim f _ {\mathbf {M}} \tag {1}
$$

The market distribution is estimated and modeled by means of sophisticated proprietary models. This distribution represents the "prior" benchmark distribution, which managers twist according to their subjective views.

A practitioner can have  $K \leq N$  subjective views on linear combinations of the market  $\mathbf{M}$ . These linear combinations are represented by a  $K \times N$  dimensional "pick" matrix  $\mathbf{P}$ : the generic  $k$ -th row of the pick matrix determines the weights of the  $k$ -th view. Furthermore, we can always choose  $N - K$  additional complementary linear combinations on which no view is expressed. We compact these complementary directions as rows of a  $(N - K) \times N$  matrix  $\mathbf{P}^{\perp}$ . The resulting invertible matrix

$$
\overline {{\mathbf {P}}} \equiv \left( \begin{array}{c} \mathbf {P} \\ \mathbf {P} ^ {\perp} \end{array} \right) \tag {2}
$$

defines the view-adjusted market coordinates. In other words, the  $N$ -dimensional random vector:

$$
\mathbf {V} \equiv \overline {{\mathbf {P}}} \mathbf {M} \tag {3}
$$

is fully equivalent to the market  $\mathbf{M}$ .

The practitioner's views correspond to statements on the first  $K$  entries of  $\mathbf{V}$ . Each of these statements, i.e. the generic  $k$ -th subjective view, is expressed in terms of a cumulative distribution function (cdf):

$$
\widehat {F} _ {k} (v) \equiv \mathbb {P} _ {s u b j} \left\{V _ {k} \leq v \right\}, \quad k = 1, \dots , K. \tag {4}
$$

The prior distribution (1) also implies a distribution for each view, which we represent by its cdf:

$$
F _ {k} (v) \equiv \mathbb {P} _ {\text {p r i o r}} \left\{V _ {k} \leq v \right\}, \quad k = 1, \dots , K. \tag {5}
$$

In general the practitioner's views (4) are different than the respective market-implied distributions (5). The COP approach resolves this dichotomy by means of opinion pooling techniques. The posterior cdf is defined as a weighted average:

$$
\widetilde {F} _ {k} \equiv c _ {k} \widehat {F} _ {k} + (1 - c _ {k}) F _ {k}, \quad k = 1, \dots , K, \tag {6}
$$

where the weights  $c_k$  represents the confidence in the respective view. The confidence can be set endogenously, i.e. directly from the practitioner, or exogenously, i.e. from the top management in terms of the practitioner's skills, see Meucci (2006).

Formula (6) defines the posterior marginal distribution of each view. In the COP approach the copula of the posterior distribution of the views is inherited from the prior copula:

$$
\left( \begin{array}{c} C _ {1} \\ \vdots \\ C _ {K} \end{array} \right) \stackrel {{d}} {{=}} \left( \begin{array}{c} F _ {1} \left(V _ {1}\right) \\ \vdots \\ F _ {K} \left(V _ {K}\right) \end{array} \right). \tag {7}
$$

Therefore the posterior joint distribution of the views is defined as follows:

$$
\left( \begin{array}{c} V _ {1} \\ \vdots \\ V _ {K} \end{array} \right) \stackrel {{d}} {{=}} \left( \begin{array}{c} \widetilde {F} _ {1} ^ {- 1} \left(C _ {1}\right) \\ \vdots \\ \widetilde {F} _ {K} ^ {- 1} \left(C _ {K}\right) \end{array} \right). \tag {8}
$$

Finally, to determine the posterior distribution of the market  $\mathbf{M} \sim \widetilde{f}_{\mathbf{M}}$  we apply (3) backwards and rotate the views back into the market coordinates:

$$
\mathbf {M} \stackrel {d} {=} \overline {{\mathbf {P}}} ^ {- 1} \mathbf {V}, \tag {9}
$$

where the first  $K$  entries of  $\mathbf{V}$  follow the posterior distribution (8) and the remaining entries are left unaltered.

To summarize, the COP approach starts from a fully generic prior distribution (1) and yields a posterior distribution (9) that reflects the practitioner's views (4). As in BL, the COP posterior distribution represents a gentle, consistent twist of the original prior distribution, see Meucci (2006): therefore, once fed into an optimization algorithm, it gives rise to sensible allocations.

In order to obtain the posterior we need to perform the marginalizations (5), the copula factorization (7) and the quantile inversions (8). None of these operations is feasible in closed analytical form, except in trivial cases. Nevertheless, it is straightforward to perform these operations numerically, as we proceed to show.

# 3 COP inputs in practice

The inputs for the COP approach are the prior market distribution (1) and the practitioner's views (4).

We represent the prior market distribution by means of a large number of Monte Carlo simulations. More precisely, the prior market distribution is represented by a  $J \times N$  panel  $\mathcal{M}$ :

$$
\mathbf {M} \sim f _ {\mathbf {M}} \Longleftrightarrow \mathcal {M}. \tag {10}
$$

Each  $N$ -dimensional row represents one of the  $J$  simulated joint scenarios for the market variable  $\mathbf{M}$ . The representation of the prior market distribution in terms of a panel of simulations  $\mathcal{M}$  is very general, easy to implement and

accurate. Indeed, in the first place it is not hard to draw a sample from any distribution, from a simple multivariate normal distribution to the most complex specifications. Furthermore, this operation does not need to be performed in real time: the simulations can be generated and stored in memory off-line whenever the "official" estimate of the market prior is updated. Therefore, one can afford to generate a very large number of simulations, thereby achieving the desired level of accuracy.

To illustrate, we consider the US Treasury market at a weekly investment horizon. The randomness in this market is well described by the joint distribution of the following  $N \equiv 6$  key rates: 6m, 2y, 5y, 10y, 20y, 30y.

To illustrate the full generality of the COP approach, we model the multivariate distribution of weekly rate changes by what is perhaps the most general specification: each of the factors is fitted separately to  $N$  different univariate distributions and the co-dependence of these factors is modeled in terms of a multivariate copula.

In particular, we model the marginal distributions of the weekly rate changes non parametrically: first we truncate the empirical distribution of weekly yield changes based on the current yield levels, in such a way to rule out negative yields at a weekly horizon. Then we perform a kernel smoothing of the ensuing distribution.

We model the co-dependence of weekly rate changes by means of a  $t$  copula. We estimate the parameters of the  $t$  copula by maximum-likelihood. We obtain  $\nu \approx 5.5$  degrees of freedom and the following correlation matrix:

<table><tr><td></td><td>6m</td><td>2y</td><td>5y</td><td>10y</td><td>20y</td><td>30y</td></tr><tr><td>6m</td><td>1</td><td>82%</td><td>72%</td><td>62%</td><td>58%</td><td>56%</td></tr><tr><td>2y</td><td>.</td><td>1</td><td>95%</td><td>85%</td><td>79%</td><td>77%</td></tr><tr><td>5y</td><td>.</td><td>.</td><td>1</td><td>96%</td><td>90%</td><td>89%</td></tr><tr><td>10y</td><td>.</td><td>.</td><td>.</td><td>1</td><td>97%</td><td>97%</td></tr><tr><td>20y</td><td>.</td><td>.</td><td>.</td><td>.</td><td>1</td><td>99%</td></tr><tr><td>30y</td><td>.</td><td>.</td><td>.</td><td>.</td><td>.</td><td>1</td></tr></table>

It is immediate to generate a panel  $\mathcal{M}$  of, say,  $J \equiv 100,000$  Monte Carlo scenarios from the multivariate distribution defined by the above marginal-copula factorization. The interested reader can find thoroughly documented MATLAB code at symmsy.com for both the estimation and the simulation process.

In Table 11 we report the sample mean, standard deviation, skewness and kurtosis for the marginal distributions of the six key rates.

<table><tr><td></td><td>6m</td><td>2y</td><td>5y</td><td>10y</td><td>20y</td><td>30y</td><td></td></tr><tr><td>mn (×105)</td><td>8.9</td><td>8.5</td><td>-37.3</td><td>-42.5</td><td>-39.5</td><td>-39.7</td><td></td></tr><tr><td>sd (×104)</td><td>11.6</td><td>13.9</td><td>14.7</td><td>13.7</td><td>12.5</td><td>12.0</td><td></td></tr><tr><td>sk (×102)</td><td>-24.0</td><td>2.4</td><td>16.2</td><td>25.1</td><td>24.0</td><td>23.1</td><td></td></tr><tr><td>ku</td><td>5.66</td><td>3.85</td><td>3.50</td><td>3.57</td><td>3.62</td><td>3.71</td><td></td></tr></table>

The kurtosis is significantly larger than 3, which corresponds to normality. In particular, the short end of the curve displays heavy tails, i.e. high probability

of extreme events. Furthermore, the extreme events across the curve are highly co-dependent, due to the low number of degrees of freedom in the  $t$  copula. Finally the skewnesses are non-null. Therefore, in our example the prior market distribution deviates substantially from normality.

We stress that the representation of the prior distribution depends on two steps, namely estimation/modeling and simulation. Here we are not concerned with the estimation/modeling process, which is fully discretionary. In general, financial institutions estimate the prior market distribution by means of a spectrum of techniques and models. The techniques include general equilibrium arguments as in BL, backward-looking time-series analysis and forward-looking implied pricing analysis. The models include simple parametric models such as the normal assumption, more complex parametric models such as quasi-elliptical distributions, and non-parametric models. Regardless the estimation/modeling route chosen by a given financial institution, the simulation part of the exercise is straightforward, as the above example shows.

The second input of the COP approach are the practitioner's views. Any parametric or non-parametric representation of the cdf of the views (4) is a viable option. We remark that in the COP approach this distribution can take on any shape: from the "alpha + normal noise" specification as in BL, to an uninformative uniform specification, to a multi-modal specification, etc. Also, in order to complete the specification of the views we need to set the confidence levels  $c_{1},\ldots ,c_{K}$  in each view.

To illustrate, we consider a manager who expresses a 10 b.p. steepening view on the 2-20 spread and a 5 b.p. bullish view on the 2-5-10 butterfly. Therefore, the "pick" matrix reads:

$$
\mathbf {P} \equiv \left( \begin{array}{c c c c c c} 0 & - 1 & 0 & 0 & 1 & 0 \\ 0 & - 0. 5 & 1 & - 0. 5 & 0 & 0 \end{array} \right). \tag {12}
$$

We assume that the manager has uninformative views over the given ranges, which can be modeled by the uniform distribution:

$$
\widehat {F} _ {k} (v) \equiv \left\{ \begin{array}{c c} 0 & v \leq a _ {k} \\ \frac {v - a _ {k}}{b _ {k} - a _ {k}} & v \in [ a _ {k}, b _ {k} ] \\ 1 & v \geq b _ {k}. \end{array} \right., \quad k = 1, 2. \tag {13}
$$

In our case, the boundaries of the ranges read:

$$
\mathbf {a} ^ {\prime} \equiv (0, 0), \quad \mathbf {b} ^ {\prime} \equiv (0. 0 0 1, 0. 0 0 0 5). \tag {14}
$$

Also, we assume that the manager expresses a  $25\%$  confidence in both views. In other words,  $c_{1} \equiv c_{2} \equiv 0.25$ . As in BL, the confidence level is a sensitive parameter, refer to Figure 1 and comments thereafter in Meucci (2006) for a sensitivity study and a comparison with BL.

# 4 COP output in practice: five simple steps

In this section we detail the five steps of the recipe that processes the COP inputs in the previous section, namely the market prior and the practitioner's views, and leads to the COP output, namely the posterior market distribution.

- Step 1: rotate the market prior into the views' coordinates.

First we complement the pick matrix  $\mathbf{P}$  as in (2), where  $\mathbf{P}^{\perp}$  can be any  $(N - K)\times N$  matrix such that  $\overline{\mathbf{P}}$  is invertible. However, for computational efficiency and accuracy we impose that the rows of  $\mathbf{P}^{\perp}$  be orthogonal and that their norm equal one.

In our example (12), we obtain

$$
\mathbf {P} ^ {\perp} \approx \left( \begin{array}{c c c c c c} -. 8 8 & . 1 1 & . 2 5 & . 3 8 & . 1 1 & 0 \\ . 4 4 & -. 0 6 & . 3 8 & . 8 1 & -. 0 6 & 0 \\ . 1 9 & . 6 6 & . 2 6 & -. 1 3 & . 6 6 & 0 \\ 0 & 0 & 0 & 0 & 0 & 1 \end{array} \right)
$$

Then we rotate the market into the views coordinates as in (3). In terms of the panel representation of the market prior (10) this operation corresponds to a simple matrix multiplication:

$$
\mathcal {V} \equiv \mathcal {M} \overline {{\mathbf {P}}} ^ {\prime}. \tag {15}
$$

Each row of the  $J \times N$  panel  $\mathcal{V}$  is an independent joint realization of the market in the views coordinates.

- Step 2: compute the views prior cdf's and the market-implied prior copula.

We sort the first  $K$  columns of the panel (15) and obtain two  $J \times K$  panels  $\mathcal{W}$  and  $\mathcal{C}$  defined as follows.

The generic  $k$ -th column  $W_{,k}$  of the panel  $\mathcal{W}$  contains the same entries as the respective column  $V_{,k}$  in  $\mathcal{V}$ , only rearranged in ascending order:  $W_{1,k} \leq W_{2,k} \leq \ldots < W_{J,k}$ . The prior cdf (5) of the  $k$ -th view evaluated at the sorted values is approximated with extreme accuracy by its empirical counterpart:

$$
F _ {k} \left(W _ {j, k}\right) \equiv \frac {j}{J + 1}. \tag {16}
$$

The generic element  $C_{j,k}$  of the panel  $\mathcal{C}$  represents the ranking of the respective entry of the panel  $\mathcal{V}$  within its column, normalized by the total number of simulations. For instance, if  $V_{5,7}$  is the 4,203-th smallest simulations in column 7, then  $C_{5,7} \equiv 4,203 / (J + 1)$ . Each row of the panel  $\mathcal{C}$  represents a joint simulation of the grades (7). In other words, the ranking panel  $\mathcal{C}$  represents the copula of the views:

$$
\operatorname {c o p u l a} \mathbf {C} \Longleftrightarrow \text {r a n k i n g} \mathcal {C}. \tag {17}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/6431e29b-e233-4990-97b2-49a796282e9b/ca144fa8b143ab9abf65864da970a672d489ab8f40a8c19a4fa92b8ac9923403.jpg)  
Figure 1: Simulations from views copula

For illustration purpose, we artificially draw the first two columns of (15) from a bivariate normal distribution with correlation 0.9. Then we compute the ranking panel  $\mathcal{C}$ : the scatter plot of the first column  $C_{,1}$  versus the second column  $C_{,2}$  in Figure 1 represents the classical distribution of the normal copula.

Notice that both the sorted values  $\mathcal{W}$  and the ranking  $\mathcal{C}$  are outputted simultaneously by  $K$  sorting operations, which operate column-wise. Therefore, this step simultaneously and efficiently yields both the prior cdf's and the prior copula of the views.

- Step 3: compute the marginal posterior cdf of each view.

The posterior marginal cdf's are approximated with extreme accuracy by their empirical counterparts. From (16) it follows that the  $J \times K$  panel  $\mathcal{F}$  defined as

$$
\widetilde {F} _ {j, k} \equiv c _ {k} \widehat {F} _ {k} \left(W _ {j, k}\right) + \left(1 - c _ {k}\right) \frac {j}{J + 1} \tag {18}
$$

represents the posterior marginal cdf's (6) evaluated in correspondence to the respective entries in the sorted panel  $\mathcal{W}$ .

In Figure 2 we consider the first view  $(k\equiv 1)$ , namely the steepener. We display the view's subjective cdf  $W_{\cdot ,k}\to \widehat{F}_k(W_{j,\cdot})$  as in (13)-(14); the market-implied prior cdf  $W_{\cdot ,k}\rightarrow \cdot /(J + 1)$  as in (16); and the posterior cdf  $W_{\cdot ,k}\to \widetilde{F}_{\cdot ,k}$  as in (18).

- Step 4: compute the joint posterior distribution of the views.

Consider the linear interpolator of a function  $\mathbf{y}_{grid} \equiv f(\mathbf{x}_{grid})$  evaluated at a given grid of points  $\mathbf{x}_{grid}$ . We denote the interpolator as follows:

$$
x \mapsto y = \mathrm {i n t e r p} \left(x; \mathbf {x} _ {g r i d}, \mathbf {y} _ {g r i d}\right).
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/6431e29b-e233-4990-97b2-49a796282e9b/787a33589627a6a910d7a006740f4a109b8232fdf82ba65356a5cd27b57783bc.jpg)  
Figure 2: Cdf of the steepening view: as implied by the market (prior); as stated by the manager (view); and the posterior

We can produce a  $J \times K$  panel  $\tilde{\mathcal{V}}$  of joint scenarios from the posterior distribution of the views (8) by means of the linear interpolator:

$$
\widetilde {V} _ {j, k} \equiv \operatorname {i n t e r p} \left(C _ {j, k}; \widetilde {F} _ {\cdot , k}, W _ {\cdot , k}\right), \tag {19}
$$

where  $C_{j,k}$  is the  $(j,k)$ -th entry of the ranking panel  $\mathcal{C}$ ,  $\widetilde{F}_{\cdot,k}$  denotes the  $k$ -th column of the cdf panel  $\widetilde{\mathcal{F}}$  and  $W_{\cdot,k}$  denotes the  $k$ -th column of the sorted simulations of the views  $\mathcal{W}$ .

Indeed, as we illustrate Figure 3, from Step 3 it follows that  $W_{.,k}$  represents the quantile function  $\widetilde{F}_k^{-1}$  evaluated at the grid of points  $\widetilde{F}_{.,k}$  and from Step 2 it follows that  $C_{j,k}$  represents a simulation of the  $k$ -th grade. Notice that we do not need to invert the cdf explicitly, i.e. to compute the quantile function.

- Step 5: compute the joint posterior realizations of the market distribution.

First we extend the  $J \times K$  panel (19) to a  $J \times N$  panel of posterior simulations for the whole market in the view-adjusted coordinates by juxtaposing the last  $N - K$  columns of  $\mathcal{V}$  defined in (15). Then we rotate these simulations back into the market coordinates as in (9) by means of a simple matrix multiplication:

$$
\widetilde {\mathcal {M}} \equiv \widetilde {\mathcal {V}} \overline {{\mathbf {P}}} ^ {\prime - 1}. \tag {20}
$$

Each  $N$ -dimensional row represents an independent joint scenario from the COP posterior market distribution  $\tilde{f}_{\mathbf{M}}$ .

We remark that all the above five steps can be performed in real time in a fraction of a second even when the number of simulations is extremely large.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/6431e29b-e233-4990-97b2-49a796282e9b/633cef8b0fa0ef29eaa4f17e09fe85be1e83c442849e3f6cfc6df6247f78aa33.jpg)  
Figure 3: Simulation of posterior as quantile of grade

In Table 21 we report some summary statistics for the posterior market distribution, compare with the same statistics for the prior market distribution in Table 11.

<table><tr><td></td><td>6m</td><td>2y</td><td>5y</td><td>10y</td><td>20y</td><td>30y</td><td></td></tr><tr><td>mn (×105)</td><td>8.9</td><td>-4.7</td><td>-33.5</td><td>-44.4</td><td>-28.2</td><td>-39.7</td><td></td></tr><tr><td>sd (×104)</td><td>11.6</td><td>13.9</td><td>14.9</td><td>13.6</td><td>12.5</td><td>12.0</td><td></td></tr><tr><td>sk (×102)</td><td>-24.0</td><td>5.5</td><td>15.4</td><td>25.6</td><td>22.5</td><td>23.1</td><td></td></tr><tr><td>ku</td><td>5.66</td><td>3.78</td><td>3.42</td><td>3.60</td><td>3.63</td><td>3.71</td><td></td></tr></table>

As in BL, the means of the posterior consistently reflect the steepening and the bullish butterfly views. The even moments, i.e. the standard deviations and the kurtosis, are only marginally affected. On the other hand, the posterior skewness of the 2y rate, which is demoted by both views, is substantially different from its prior counterpart.

# 5 From market posterior to optimal portfolios

Any portfolio optimization methodology proceeds in three phases, see Meucci (2005) for a thorough discussion: mapping the distribution of the market factors into the distribution of the securities returns; agreeing on a metric to evaluate portfolios of securities; and devising a viable maximization procedure to determine the optimal portfolio according to the previously introduced metric.

In the BL approach the risk factors are the security returns and therefore no mapping is needed. Furthermore, within the BL framework portfolios are evaluated according to their mean-variance trade-off. Accordingly, portfolio

optimization is solved by quadratic programming.

In general markets the randomness of the factors maps non-linearly in the distribution of the securities returns. Furthermore, in highly non-normal markets the mean-variance trade-off is not sufficient to account for market asymmetries and extreme events.

In this section we illustrate a general framework to utilize the COP posterior distribution in a portfolio optimization context. We map the posterior distribution non-linearly into the distribution of the securities returns; we introduce a risk-reward trade-off that is suitable for non-normal markets; and we discuss the algorithm that optimizes this trade off.

However we stress that, just as mean-variance optimization is neither a byproduct, nor the focus of the BL approach, so is the general framework proposed in this section not part of the COP approach. Just as in BL, the sole purpose of the COP approach is to obtain from a prior market distribution a posteriori market distribution that includes the practitioner's views, as described in Sections 2-4. As far as portfolio optimization is concerned, financial institutions typically utilize their own proprietary approaches, which vary widely in scope and level of sophistication: in such circumstances the COP market posterior would be an input for these specific methodologies.

Consider  $S \leq N$  securities whose returns  $\mathbf{R}$  are fully determined by the vector of market risk factors  $\mathbf{M}$ . We map each joint scenario of the posterior market distribution, i.e. each row of the  $J \times N$  panel  $\widetilde{\mathcal{M}}$ , into a scenario for a given security's return, by means of a suitable security-dependent pricing function  $P_{s}$ . This way we obtain a  $J \times S$  panel  $\widetilde{\mathcal{R}}$  defined entry-wise as follows:

$$
\widetilde {R} _ {j, s} \equiv P _ {s} (\widetilde {M} _ {j, \cdot}). \tag {22}
$$

Each row of  $\widehat{\mathcal{R}}$  represents a joint scenario of the securities returns.

In some markets, such as in the mutual fund industry considered in BL, the pricing functions are trivial: indeed, in this case the returns of the securities coincide with the market risk factors. On the other extreme, in very complex markets the pricing functions  $P_{s}$  are highly non-linear and the computation (22) becomes costly: fortunately, this computation can be parallelized, since each row in  $\widetilde{\mathcal{R}}$  only depends on the respective row in  $\widetilde{\mathcal{M}}$ . For a large spectrum of intermediate markets a second-order approximation is satisfactory:

$$
\widetilde {R} _ {j, s} \approx \Theta_ {s} + \sum_ {n = 1} ^ {N} \Delta_ {s} ^ {n} \widetilde {M} _ {j, n} + \sum_ {n, m = 1} ^ {N} \Gamma_ {s} ^ {n, m} \widetilde {M} _ {j, n} \widetilde {M} _ {j, m}. \tag {23}
$$

In the derivatives world this is known as the "theta-delta-gamma" approximation. In the fixed-income world this becomes the standard "carry-duration-convexity" approximation. In this case the computation of the panel  $\tilde{\mathcal{R}}$  can be efficiently performed as a matrix multiplication.

In our example we consider a restricted market of  $S \equiv 4$  liquid US Treasury bonds with 2, 5, 10 and 30 years to maturity respectively.

For each bond  $s = 1, \ldots, 4$ , we calculate the following quantities: the carry  $\Theta_s$ ; the  $N \equiv 6$  key rate durations  $\Delta_s^1, \ldots, \Delta_s^6$  with respect to the 6m, 2y, 5y, 10y, 20y and 30y yield changes; and the  $N \times N \equiv 36$  cross-convexities  $\Gamma_s^{n,m}$ .

Now, consider a generic portfolio of the given  $S$  securities, as represented by the vector of relative weights  $\mathbf{w}$ . In order to evaluate the riskiness of the portfolio  $\mathbf{w}$  in highly non-normal markets, a measure of risk is needed which accounts for potential asymmetries and for the occurrence of extreme events. One such measure is the expected shortfall, also known as conditional value at risk:

$$
\operatorname {C V a R} (\mathbf {w}) \equiv - \operatorname {E} \left\{R | R \leq F _ {R} ^ {- 1} (1 - \gamma) \right\}, \tag {24}
$$

where  $R \equiv \mathbf{w}'\mathbf{R}$  is the portfolio return;  $F_{X}^{-1}(\alpha)$  denotes the  $\alpha$ -quantile of the generic random variable  $X$ ; and  $\gamma$  is the required confidence level for the CVaR<sup>1</sup>. According to the mean-CVaR trade-off, the manager minimizes the expected shortfall subject to the constraint of a minimum target expected return. In addition, there can be other constraints, such as the standard full-investment and long-only conditions:

$$
\mathbf {w} (r) \equiv \operatorname {a r g m i n} \left\{\mathrm {C V a R} (\mathbf {w}) \right\}, \tag {25}
$$

$$
\mathbf {w} ^ {\prime} \operatorname {E} \{\mathbf {R} \} \geq r
$$

$$
\mathbf {w} ^ {\prime} \mathbf {1} \equiv 1, \mathbf {w} \geq 0
$$

As the target expected return  $r$  varies, the optimal portfolios (25) span an efficient frontier in the risk-reward space defined by expected shortfall and target return. Using a result in Rockafellar and Uryasev (2000) we can solve (25) in the posterior market (22) by means of linear programming, see the technical appendix for details.

In Table 26 we display the posterior efficient portfolio compositions (25) as functions of the target return.

Posterior allocation  $(\%)$  

<table><tr><td>bond\target return (×103)</td><td>2.0</td><td>3.5</td><td>4.5</td><td>5</td></tr><tr><td>2y</td><td>69</td><td>27</td><td>0</td><td>0</td></tr><tr><td>5y</td><td>0</td><td>0</td><td>0</td><td>0</td></tr><tr><td>10y</td><td>31</td><td>73</td><td>90</td><td>53</td></tr><tr><td>30y</td><td>0</td><td>0</td><td>10</td><td>47</td></tr></table>

In Table 27 we display the respective prior efficient portfolio compositions.

Prior allocation  $(\%)$  

<table><tr><td>bond\target return (×103)</td><td>2.0</td><td>3.5</td><td>4.5</td><td>5</td></tr><tr><td>2y</td><td>28</td><td>0</td><td>0</td><td>0</td></tr><tr><td>5y</td><td>72</td><td>66</td><td>16</td><td>0</td></tr><tr><td>10y</td><td>0</td><td>17</td><td>59</td><td>66</td></tr><tr><td>30y</td><td>0</td><td>17</td><td>25</td><td>34</td></tr></table>

Notice how the bullish butterfly demotes the 5y sector in the posterior portfolio, whereas the steepening view shifts more weight on the 2y sector. On the other hand, the combined effect of the two views on the long end of the curve is not univocal: this is reflected in the posterior allocation, which, depending on the target return, is either overor under-weighted with respect to the prior allocation.

# 6 Conclusions

In theory, the COP approach blends the prior market distribution with the practitioner's subjective views under very general assumptions for the distributions of both the market and the views. However, the COP approach requires to compute the distribution of a copula, several marginal distributions and several quantile functions: these computations cannot be performed analytically, except in trivial cases.

Here we present a simple recipe to perform the above computations numerically. The accuracy is excellent and all the computations can be performed in a fraction of a second: therefore the COP approach can be effectively implemented in real time on a trading desk.

We illustrate the recipe in practice in the Treasury market, which we model by means of an extremely general and highly non-normal distribution: a heavily co-dependent parametric copula and fat-tailed, skewed, non-parametric marginal distributions.

The author is grateful to Alfredo Bequillard, Anthony Lazanas and two anonymous referees for their feedback and to Stan Uryasev and his team for solving the linear programming problem with CPLEX.

# References

Black, F., and R. Litterman, 1990, Asset allocation: combining investor views with market equilibrium, *Goldman Sachs Fixed Income Research*.  
Meucci, A., 2005, Risk and Asset Allocation (Springer).  
——, 2006, Beyond Black-Litterman: Views on non-normal markets, Risk Magazine 19, 87-92.

Rockafellar, R.T., and S. Uryasev, 2000, Optimization of conditional value-at-risk, Journal of Risk 2, 21-41.  
——, 2002, Conditional value-at-risk for general loss distributions, Journal of Banking and Finance 26, 1443-1471.

# 7 Technical Appendix

Consider the following linear programming problem:

$$
\mathbf {x} (r) = \operatorname {a r g m i n} \left\{\mathbf {e} ^ {\prime} \mathbf {x} \right\}.
$$

$$
\begin{array}{l} \mathbf {A x} \leq \mathbf {b} (r) \\ \mathbf {d} ^ {\prime} \mathbf {x} = 1 \end{array}
$$

In this expression the efficient portfolio weights  $\mathbf{w}(r)$  relative to the target return  $r$  are given by the first  $S$  entries of the  $(S + 1 + J)$ -dimensional solution  $\mathbf{x}(r)$ . The remaining inputs are defined in terms of the posterior market panel  $\widetilde{\mathcal{R}}$  as follows:

$$
\begin{array}{l} \mathbf {A} \left(\widetilde {\mathcal {R}}\right) \equiv \left( \begin{array}{c c c} - \mathbf {1} _ {1 \times J} \widetilde {\mathcal {R}} / J & 0 & \mathbf {0} _ {1 \times J} \\ - \widetilde {\mathcal {R}} & - \mathbf {1} _ {J \times 1} & - \mathbf {I} _ {J \times J} \\ - \mathbf {I} _ {S \times S} & \mathbf {0} _ {S \times 1} & \mathbf {0} _ {S \times J} \\ \mathbf {0} _ {J \times S} & \mathbf {0} _ {J \times 1} & - \mathbf {I} _ {J \times J} \end{array} \right) \\ \begin{array}{r l r} {\mathbf {b} \left(r\right)} & \equiv & {\left( \begin{array}{c} - r \\ \mathbf {0} _ {J \times 1} \\ \mathbf {0} _ {S \times 1} \\ \mathbf {0} _ {J \times 1} \end{array} \right)} \end{array} \\ \mathbf {e} ^ {\prime} \equiv \left(\mathbf {0} _ {1 \times S}, 1, \frac {\mathbf {1} _ {1 \times J}}{J (1 - \gamma)}\right) \\ \mathbf {d} ^ {\prime} \equiv \left(\mathbf {1} _ {1 \times S}, 0, \mathbf {0} _ {1 \times J}\right). \\ \end{array}
$$

---
title: Simulating the Credit Loss Distribution
parent_directory: Bond Valuation
formatted: 2025-12-21 10:00:00 AM
formatter_model: grok-code-fast-1
cli_tool: opencode
primary_tags:
  - monte carlo simulation
  - credit loss distribution
  - credit risk modeling
secondary_tags:
  - asset returns
  - multivariate normal
  - rating transition probabilities
  - tail risk measures
  - credit value at risk
  - expected shortfall
  - multivariate t distribution
cssclasses: academia
---

# Simulating the Credit Loss Distribution

SRICHANDER RAMASWAMY, PhD

Senior Economist, Bank for International Settlements, Basel, Switzerland

Abstract: Monte Carlo methods have become a valuable computational tool in modern finance as the increased availability of powerful computers has enhanced their efficiency. A particularly useful feature of Monte Carlo methods is that their computational complexity increases linearly with the number of variables. Moreover, they are flexible and easy to implement for a range of distributional assumptions for the underlying variables that influence the outcomes of interest. Monte Carlo methods are particularly effective for simulating credit loss distribution and for evaluating tail risk measures, and they are computationally less intensive than analytical methods.

The distribution of portfolio credit risk is highly skewed and has a long fat tail. Unlike the case for a normally distributed loss distribution, knowledge of the first two moments of the credit loss distribution provides little information about tail risk. To compute tail risk (large losses that occur with a low probability) one has to simulate the credit loss distribution using Monte Carlo techniques. In this entry we will provide a brief introduction to Monte Carlo methods and subsequently describe the computational process involved in performing a Monte Carlo simulation to generate the distribution of credit losses. Simulating the credit loss distribution is discussed under the assumption that the asset returns that drive credit events are either multivariate normal or multivariate  $t$  distributed. The discussion and the examples cited in this entry assume that the credit risk arises from holding a portfolio of corporate bonds.


# MONTE CARLO METHODS

Numerical methods known as Monte Carlo methods can be loosely described as statistical simulation methods that make use of sequences of random numbers to perform the simulation. The first documented account of Monte Carlo simulation dates back to the 18th century when a simulation technique was used to estimate the value  $\pi$ . However, it is only since the digital computer era that this technique has gained scientific acceptance for solving complex numerical problems in various disciplines. The name "Monte Carlo" was coined by Metropolis during the Manhattan Project of World War II because of the similarity of statistical simulation to games of chance symbolized by the capital of Monaco. Von Neumann laid much of the early foundations of Monte Carlo simulation that require generation of pseudo-random number generators and inverse cumulative distribution functions. The application of Monte Carlo simulation techniques to finance was pioneered by Phelim Boyle (1977) in connection with pricing of options.


It is tempting to think of Monte Carlo methods as a technique to simulate random processes that are described by a stochastic differential equation. This belief stems from the option pricing applications of Monte Carlo methods in finance where the underlying variable of interest is the evolution of stock prices that are described by a stochastic differential equation. However, this description is too restrictive because many Monte Carlo applications have no apparent stochastic content, such as the evaluation of a definite integral or inversion of a system of linear equations. In many applications of Monte Carlo methods, the only requirement is that the physical or mathematical quantity of interest to us can be described by a probability distribution function.

Monte Carlo methods have become a valuable computational tool in modern finance to price complex derivative securities and to perform value at risk calculations. An important advantage of Monte Carlo methods is that they are flexible and easy to implement. Further, the increased availability of powerful computers has enhanced the efficiency of these methods. Notwithstanding this, the method can still be slow and standard errors of estimates can be large when applied to high-dimensional problems or if the region of interest to us is not around the mean of the distribution. In such cases, we require a large number of simulation runs to estimate the variable of interest with reasonable accuracy. The standard errors on the estimated parameters can be reduced using conventional variance reduction procedures such as control variate techniques or antithetic sampling approaches.


More recent techniques to speed up the convergence of Monte Carlo methods for high-dimensional problems make use of deterministic sequences rather than random sequences. These sequences are known by the name quasi-random sequences in contrast to the pseudorandom sequences commonly used in standard Monte Carlo methods. The advantage of using quasi-random sequences is that they generate sequences of  $n$ -tuples that fill  $n$ -dimensional space more uniformly than uncorrelated points generated by pseudo-random sequences. However, the computational advantage of quasi-random sequences diminishes as the number of variables increases beyond 30.

An important advantage of Monte Carlo methods is that the computational complexity increases linearly with the number of variables. In contrast, the computational complexity increases exponentially in the number of variables for discrete probability tree approaches for solving similar kinds of problems. This point is best illustrated by considering the problem of credit loss simulation. One approach to computing the loss distribution of a two-bond portfolio is to enumerate all possible combination of credit states this portfolio can be in one year's time. Assuming there are 18 possible credit states that each bond can be in, the two-bond portfolio could take one of 324 (18 times 18) credit states. Valuing the credit loss associated with each one of the 324 states will allow us to derive the credit loss distribution of the two-bond portfolio. If the number of bonds in the portfolio increases to 10, the total number of possible credit states will be equal to 18 to the power 10, which is equal to  $3.57 \times 10^{12}$  credit states. Clearly, even with such a small portfolio, it is practically impossible to enumerate all the states and compute the credit loss distribution.

If we use Monte Carlo simulation, on the other hand, the problem complexity remains the same irrespective of whether the portfolio is comprised of 2, 10, or more bonds. In each of these cases we may wish to run several scenarios, each of which corresponds to a simulation run, and under each scenario compute the credit loss associated with the portfolio. Performing many simulation runs will allow us to compute the credit loss distribution of the bond portfolio. As the number of bonds in the portfolio increases, the computational effort involved increases linearly in the number of bonds in the portfolio.


The basic building blocks for performing Monte Carlo simulation will require a scheme to generate uniformly distributed random numbers and a suitable transformation algorithm if the probability distribution of the variable simulated is different from a uniform distribution. Most applications in finance require the generation of a normally distributed random variable. To simulate such a random variable, the standard transformation techniques used are either the Box-Muller method or the inverse cumulative normal method. If the simulated random variables are greater than one, we need methods to generate correlated random numbers that model the relationship between the variables.

# Credit Loss Simulation

At the security level, credit loss arises from credit events that include rating migrations and outright default. As these credit events are associated with changes in perceptions about an obligor's ability to make the contractual debt payments, one needs to identify variables that influence the obligors' ability to pay. The variable that is often used in practice is the asset returns of the obligor. The motivation for using asset returns is that changes in asset values of a firm influence its solvency position. When asset values fall below outstanding liabilities, the firm is no longer considered solvent. But other thresholds based on rating transition probabilities can be derived and used to infer how changes in asset values will influence credit ratings. Simulating asset returns and checking their values against these thresholds will allow us to signal credit events, which can then be used to estimate the credit loss for a particular simulation run.


Computing portfolio credit risk requires extending the above approach to model joint rating migrations, which in turn requires modeling the comovement of asset returns of different obligors. Considering that the marginal distribution of asset returns is assumed to be normal in Merton's option pricing framework (Merton, 1974), one can make a simplifying assumption that the joint distribution of asset returns is multivariate normal. The joint evolution of the asset returns of the obligors under the multivariate normal distribution will signal how the value of the portfolio evolves, or equivalently, what the credit loss on the portfolio will be. The distribution of obligor asset returns under the multivariate normal distribution can be generated using Monte Carlo simulation. This will allow us subsequently to compute the loss distribution of the bond portfolio resulting from credit events.

The description given above provides the basic intuition behind the use of Monte Carlo simulation for computing the credit loss distribution. In the context of its intended use here, the Monte Carlo simulation technique can be described as a computational scheme that utilizes sequences of random numbers generated from a given probability distribution function to derive the distribution of portfolio credit loss. The distribution of portfolio credit loss can be computed both under the default mode, which only considers whether the obligor is solvent or not, and under the migration mode that includes credit events arising from rating changes. Consequently, to compute the credit loss under the default mode, we only need to consider the loss resulting from obligor default; whereas under the migration mode, we have to compute the credit loss associated with rating migrations in addition to the credit loss resulting from obligor default.

To generate the credit loss for one run of the Monte Carlo simulation, we need to go through three computational steps described below.


1. Simulate correlated random numbers that model the joint distribution of asset returns of the obligors in the portfolio.
2. Infer the implied credit rating of each obligor based on simulated asset returns.
3. Compute the potential loss in value based on the implied credit rating, and in those cases where the asset return value signals an obligor default, compute a random loss on default value by sampling from a beta distribution function.

Repeating the above simulation run many times and computing the credit loss under each simulation run will allow us to generate the distribution of portfolio credit loss under the migration mode. If we are only interested in the credit loss distribution under the default mode, we can compute this by setting credit loss associated with rating migrations to zero in the simulation run. In the following sections we will briefly describe the computational steps that are required to generate the credit loss distribution.

# Generating Correlated Asset Returns

We briefly described earlier the steps involved in simulating the credit loss distribution for a bond portfolio. As the first step, we mentioned that correlated random numbers that model the joint distribution of asset returns have to be simulated. An immediate question that will arise in our minds is whether the obligor-specific means and standard deviations of asset returns have to be taken into account in the simulations. The simple answer to this question is no. This is because the simulated asset returns will be compared against the rating migration thresholds, which are computed under the assumption that asset returns are standardized normal random variables. As a result, the obligor-specific mean and standard deviation of asset returns are not required for simulating the loss distribution. Hence, we will assume that obligor asset returns are standard normal random variables (having mean zero and standard deviation equal to one). Under this assumption, the Monte Carlo simulation method will require generating a sequence of random vectors that are sampled from a standardized multivariate normal distribution.


Many standard numerical packages provide routines to generate sequences of random vectors sampled from a multivariate normal distribution. Although the details of the implementation are not discussed here, we will briefly outline the numerical procedure commonly used to generate sequences of multivariate normal random vectors. Let us assume that the multivariate normal random vector has a mean vector  $\vec{a}$  and covariance matrix  $C$ . Covariance matrices have the property that they are symmetric and positive definite (meaning all its eigenvalues are greater than zero). Given such a matrix, it is possible to find a unique lower triangular matrix  $L$  such that,

$$
L L^{T} = C \tag {1}
$$

The matrix  $L$  is referred to as the Cholesky factor corresponding to the positive definite matrix  $C$ . Once the Cholesky factor is determined, generating a sequence of random vectors with the desired multivariate distribution only requires generating a sequence of independent standard normal random variables. If  $\vec{x}$  denotes the vector of independent standard normal random variables, the vector  $\vec{r}$  with the desired multivariate normal distribution can be constructed as follows:

$$
\vec{r} = \vec{a} + L \vec{x} \tag {2}
$$

The sequence of random vectors  $\vec{r}$  that are generated will have the property that their joint distribution is multinormal with mean vector  $\vec{a}$  and covariance matrix  $C$ .

It is useful to note here that by setting the mean vector  $\vec{a}$  to zero and the covariance matrix equal to the correlation matrix, we can generate a sequence of random vectors whose

Table 1 Rating Transition Probabilities and  $z$  -Thresholds

<table><tr><td rowspan="2">Transition to Rating</td><td colspan="2">Transition Probabilities</td><td colspan="2">z-Threshold (Gaussian)</td><td colspan="2">z-Threshold (Student&#x27;s t)</td></tr><tr><td>A2-rated</td><td>A3-rated</td><td>A2-rated</td><td>A3-rated</td><td>A2-rated</td><td>A3-rated</td></tr><tr><td>Aaa</td><td>0.05</td><td>0.05</td><td>3.28</td><td>3.28</td><td>5.04</td><td>5.04</td></tr><tr><td>Aa1</td><td>0.06</td><td>0.11</td><td>3.05</td><td>2.95</td><td>4.43</td><td>4.15</td></tr><tr><td>Aa2</td><td>0.30</td><td>0.05</td><td>2.64</td><td>2.86</td><td>3.49</td><td>3.96</td></tr><tr><td>Aa3</td><td>0.80</td><td>0.24</td><td>2.25</td><td>2.61</td><td>2.77</td><td>3.43</td></tr><tr><td>A1</td><td>5.57</td><td>1.55</td><td>1.49</td><td>2.05</td><td>1.66</td><td>2.45</td></tr><tr><td>A2</td><td>80.75</td><td>8.68</td><td>-1.15</td><td>1.24</td><td>-1.24</td><td>1.35</td></tr><tr><td>A3</td><td>7.48</td><td>75.40</td><td>-1.65</td><td>-1.08</td><td>-1.86</td><td>-1.16</td></tr><tr><td>Baa1</td><td>2.99</td><td>7.03</td><td>-2.05</td><td>-1.48</td><td>-2.45</td><td>-1.65</td></tr><tr><td>Baa2</td><td>0.83</td><td>3.83</td><td>-2.27</td><td>-1.87</td><td>-2.79</td><td>-2.18</td></tr><tr><td>Baa3</td><td>0.41</td><td>1.50</td><td>-2.43</td><td>-2.15</td><td>-3.08</td><td>-2.61</td></tr><tr><td>Ba1</td><td>0.29</td><td>0.57</td><td>-2.60</td><td>-2.33</td><td>-3.40</td><td>-2.90</td></tr><tr><td>Ba2</td><td>0.11</td><td>0.20</td><td>-2.69</td><td>-2.41</td><td>-3.58</td><td>-3.05</td></tr><tr><td>Ba3</td><td>0.12</td><td>0.23</td><td>-2.81</td><td>-2.54</td><td>-3.86</td><td>-3.28</td></tr><tr><td>B1</td><td>0.03</td><td>0.35</td><td>-2.86</td><td>-2.85</td><td>-3.96</td><td>-3.96</td></tr><tr><td>B2</td><td>0.07</td><td>0.05</td><td>-2.98</td><td>-2.94</td><td>-4.25</td><td>-4.15</td></tr><tr><td>B2</td><td>0.03</td><td>0.05</td><td>-3.06</td><td>-3.06</td><td>-4.43</td><td>-4.43</td></tr><tr><td>Caa-C</td><td>0.03</td><td>0.01</td><td>-3.16</td><td>-3.09</td><td>-4.67</td><td>-4.50</td></tr><tr><td>Default</td><td>0.08</td><td>0.10</td><td>-1000</td><td>-1000</td><td>-1000</td><td>-1000</td></tr></table> joint distribution is standardized multivariate normal. Since the joint distribution of obligor asset returns was assumed to be standardized multivariate normal, this sequence of random vectors will be the one of interest to us.


# Inferring Implied Credit Rating

The next step in the credit loss simulation process is to infer the credit rating of the various obligors in the portfolio as implied by the simulated asset return vector. In order to do this, we need to determine the thresholds against which the asset returns will be compared to identify rating changes or obligor default. To illustrate how these thresholds can be determined, let us consider an obligor that has a current credit rating of A1. (Moody's rating categories are used here to denote the credit rating of an obligor.) Let  $p_{A1,Aaa}$  denote the probability of transitioning to the credit rating Aaa. Under the assumption that the asset returns of the obligor are normally distributed, the credit event that signals the obligor rating migration from A1 to Aaa will occur when the standardized asset returns of the obligor exceed the threshold  $z_{A1,Aaa}$ . This threshold can be determined by solving the following integral equation:


$$ p_{A 1, A a a} = \frac{1}{\sqrt{2 \pi}} \int_{z_{A 1, A a a}}^{\infty} \exp \left(- \frac{1}{2} x^{2}\right) d x \tag {3}
$$

A rating transition of this obligor from A1 to Aa1 will occur if the asset return falls between the thresholds  $z_{A1,Aaa}$  and  $z_{A1,Aa1}$ . The threshold  $z_{A1,Aa1}$  can be determined by solving the following integral equation:

$$ p_{A 1, A a 1} = \frac{1}{\sqrt{2 \pi}} \int_{z_{A 1, A a 1}}^{z_{A 1, A a}} \exp \left(- \frac{1}{2} x^{2}\right) d x \tag {4}
$$

One can extend this sequential rule to determine the thresholds for migrating to other rating grades. We note here that these  $z$ -thresholds are a function of the current credit rating of the obligor. Table 1 shows the rating transition probabilities and the corresponding  $z$ -thresholds for two different obligor credit ratings when the asset returns are assumed to be Gaussian (normal distribution).

Let us consider the two-bond portfolio given in Table 2 to illustrate the specific steps involved

Table 2 Security Level Details for the Two-Bond Portfolio

<table><tr><td>Description</td><td>Bond 1</td><td>Bond 2</td></tr><tr><td>Issuer rating grade</td><td>A3</td><td>A2</td></tr><tr><td>Dirty price for \$1 nominal</td><td>1.0533</td><td>1.0029</td></tr><tr><td>Nominal exposure</td><td>$1,000,000</td><td>$1,000,000</td></tr><tr><td>Modified duration</td><td>4.021</td><td>3.747</td></tr><tr><td>Convexity</td><td>19.75</td><td>16.45</td></tr><tr><td>Mean recovery rate</td><td>35\%</td><td>35\%</td></tr><tr><td>Volatility of recovery rate</td><td>25\%</td><td>25\%</td></tr></table> in computing the credit loss from one simulation run for this portfolio. Suppose during one draw from a bivariate normal distribution the random asset returns are, respectively, 2.5 for bond 1 and -3.5 for bond 2. Given the initial issuer rating of A3 for bond 1, one can infer from the  $z$ -threshold values for A3-rated issuers in Table 1 that an asset return value of 2.5 implies a credit rating change of the issuer to an A1 rating. Similarly, one can infer from Table 1 that an asset return value of -3.5 for an A2-rated issuer will imply that the issuer defaults on the outstanding debt. Proceeding in this manner, the implied credit rating of the debt issuers in the two-bond portfolio for every simulation run can be derived on the basis of the  $z$ -threshold values in Table 1.


For a general  $n$ -bond portfolio, the implied credit rating of the debt issuers for each simulation run can be similarly determined. It is important to note here that the number of obligors in an  $n$ -bond portfolio will be less than or equal to  $n$ . In the case where there are fewer than  $n$  obligors, credit rating changes should be identical for all bonds issued by the same obligor in any simulation run. This has the implication that the dimension of the simulated asset return vector should be equal to the number of obligors or debt issuers in the bond portfolio.

# Computing Credit Loss

Once the implied rating changes for the obligors are determined for the simulated asset re turn vector, the corresponding credit loss associated with such implied rating changes could be determined. It is important to note here that we generically refer to the price change resulting from the rating change as a loss although a credit improvement of the obligor will result in a price appreciation for the bond. The price change of a bond as a result of a rating change for the bond issuer will be a function of the change in the yield spreads and the maturity of the bond. Assuming that our interest is to estimate the credit loss due to a change in the bond's mark to market value as a result of the rating change, we would want to know at what time horizon the bond's price has to be marked to market. If we were to compute the worst-case loss scenario, it would correspond to a rating change of the obligor during the next trading day. In this case, the current trading price of the bond and its risk parameters, duration, and convexity serve to characterize the credit loss. The credit loss resulting from a rating change from the  $i$ th grade to the  $k$ th grade will be a function of the change in the bond yield and is given by,


$$
\Delta P_{i k} = P_{d i r t y} \times D \times \Delta y_{i k} - 0. 5 \times P_{d i r t y} \times C \times \Delta y_{i k}^{2} \tag {5}
$$

In equation (5),  $P_{\text{dirty}}$  is the dirty price of the bond (accrued interest plus traded price),  $\Delta y_{ik}$  is the yield change when issuer rating changes from grade  $i$  to grade  $k$ ,  $D$  is the modified duration of the bond, and  $C$  the convexity. When the issuer migrates to the default state, the credit loss will be equal to the dirty price  $P_{\text{dirty}}$  minus the recovery rate.

To illustrate the credit loss computation, let us again focus on the two-bond portfolio example. In this example, the asset return value signaled an upgrade to an A1 rating from the current rating of A3 for bond 1. Suppose the change in the yield spread associated with this rating change is -30 basis points. Then, substituting the various parameter values into equation (5), the credit loss for 1 million notional amount held of bond 1 is given by,


$$
\begin{array}{l} C r e d i t \quad l o s s = 1, 0 0 0, 0 0 0 \times [ 1. 0 5 3 3 \times 4. 0 2 1 \\ \times (- 0. 0 0 3) - 0. 5 \times 1. 0 5 3 3 \times 1 9. 7 5 \\ \times (- 0. 0 0 3)^{2} ] = - \$ 1 2, 7 9 9. 6 \\ \end{array}
$$

We note here that the negative sign associated with the credit loss is suggesting that this rating change results in a profit rather than a loss.

For bond 2, the simulated asset return value of  $-3.5$  implies default of the obligor. In this case, we must find a random loss on default, which will be a function of the assumed recovery rate distribution. Many credit risk models assume the recovery rate process to have a beta distribution with mean  $\mu$  and standard deviation  $\sigma$ . Given the values for  $\mu$  and  $\sigma$ , the parameters  $\alpha$  and  $\beta$  that define the beta distribution with the desired mean and standard deviation can be computed as given below:

$$
\alpha = \frac{\mu^{2} (1 - \mu)}{\sigma^{2}} - \mu \tag {6}
$$

$$
\beta = \frac{\alpha}{\mu} - \alpha \tag {7}
$$

For the bond in question, let us assume the mean recovery rate to be  $\mu = 35\%$  and the standard deviation of the recovery rate to be  $\sigma = 25\%$ . Corresponding to these recovery rate values, the parameters of the beta distribution function are  $\alpha = 0.924$  and  $\beta = 1.716$ .

The random recovery rate for bond 2 for the simulation run is determined by drawing a random number from a beta distribution with  \alpha  and  \beta  parameter values as above. Let us assume that the simulated recovery value is  40\%  for bond 2. The implied loss on default for the bond that trades at a dirty price of 1.0533 is then equal to 0.6533 (bond dirty price minus the recovery value). The credit loss arising from bond 2 for this simulation run will be equal to the nominal exposure times the loss on default, which is equal to 653,300.

For the two-bond portfolio, the total credit loss for this simulation run is the sum of the two losses. If this simulation run corresponds to the  $i$ th run, the portfolio credit loss under the ith simulation run, denoted  $\ell_{i}$  , is given by,


$$
\ell_{i} = - \$ 12, 7 9 9. 6 + \$ 6 5 3, 3 0 0 = \$ 6 4 0, 5 0 0. 4
$$

It is important to emphasize here that for a general  $n$ -bond portfolio, all bonds of a particular issuer should have the same recovery value for any one simulation run if they have the same seniority. This information must be taken into account when simulating the credit loss distribution of a general  $n$ -bond portfolio.

# Computing Expected and Unexpected Loss

The above procedure outlined how the portfolio credit loss can be computed for one simulation run. By repeating the simulation run  $N$  times where  $N$  is sufficiently large, the distribution of the credit losses can be generated. Given the simulated loss distribution, one can compute various risk measures of interest. For instance, the expected and unexpected credit loss (the first two moments of the loss distribution) using the simulated loss data can be computed as follows:

$$
E L_{P} = \frac{1}{N} \sum_{i = 1}^{N} \ell_{i} \tag {8}
$$

$$
U L_{P} = \sqrt{\frac{1}{N - 1} \sum_{i = 1}^{N} \left(\ell_{i} - E L_{P}\right)^{2}} \tag {9}
$$

To reduce the standard error of the estimated portfolio expected loss, it is common practice to perform antithetic sampling when performing the Monte Carlo simulation. The idea behind antithetic sampling technique is that when random samples are drawn from a symmetric distribution, sampling errors can be avoided if the antithetic or symmetric part of the random sample is also drawn. This will ensure that the empirical mean of the random samples is equal to the mean of the distribution function from which the samples are drawn. Including the antithetic part of the samples will double the total number of simulation runs.

# Importance Sampling

The Monte Carlo simulation technique described so far is based on random sampling. In such a sampling process, the probability of any value being generated is proportional to the probability density at that point. This property will have the effect of generating asset return values in the simulations that tend to cluster around the mean of the normal distribution function. Rating migrations and obligor defaults, however, are events that are driven by asset return values that deviate significantly from the mean of the normal distribution. The implication is that a significant proportion of the simulation runs will not trigger any credit events. If our intention is to compute the expected and unexpected loss of the portfolio from the simulations, random sampling will be the appropriate method to use. If, on the other hand, we expect to compute risk measures associated with tail events from the simulated data, random sampling will be inefficient.

If our primary intention of performing Monte Carlo simulations is to compute tail risk measures (to be discussed in the next section), we can improve the simulation efficiency through importance sampling (see Glasserman and Li, 2005). Simulation efficiency in our context refers to the number of simulation runs required to compute the risk measure of interest for a specified standard error of the estimate. Importance sampling artificially inflates the probability of choosing random samples from those regions of the distribution that are of most interest to us. This would mean that our sampling process is biased in such a manner that a large number of credit events are simulated relative to what would occur in practice. In the Monte Carlo simulation terminology, the adjustment made to the probability of a particular point being sampled is referred to as its importance weight. To estimate the true probability distribution of the simulated losses when performing importance sampling, we have to restore the actual probability of each sample by multiplying it by the inverse of its importance weight. In practice, when the number of obligors in the portfolio is large (this is usually true for the benchmark portfolio), performing importance sampling will lead to improved computational efficiency.


# Tail Risk Measures

The discussions so far focused on how the mean (expected loss) and standard deviation (unexpected loss) of the credit loss distribution for a corporate bond portfolio can be computed from the simulations. If the distribution of credit losses is normally distributed, standard deviation can be interpreted as the maximum deviation around the mean that will not be exceeded with a  $66\%$  level of confidence. Since the credit loss distribution is not normal, a similar interpretation to the standard deviation of credit loss does not hold. In most cases, computing the probability of incurring a large credit loss on a corporate bond portfolio using unexpected loss information is usually not possible.

In general, a major preoccupation of most corporate bond portfolio managers is to structure the portfolio so as to minimize the probability of large losses. To do this an estimate of the potential downside risk of the portfolio becomes a key requirement. Computing any downside risk measure requires an estimate of the probability mass associated with the tail of the loss distribution. If the simulated credit loss distribution is available, it is quite easy to derive appropriate tail risk measures of interest. For a corporate bond portfolio, the tail risk measures of interest are credit value at risk and expected shortfall risk. Both these risk measures are discussed below, and the method to compute these measures using the simulated loss distribution is also indicated.

# Credit Value at Risk

Credit value at risk (CVaR) is a tail risk measure that quantifies the extreme losses arising from credit events that can occur at a prespecified level of confidence over a given time horizon. In practical terms, CVaR provides an estimate of the maximum credit loss on a portfolio, which could be exceeded by a probability  $p$ . Without loss of generality, it will be assumed that this probability is expressed in percentage. If the probability  $p$  is chosen to be sufficiently small, one can expect that the credit loss will not exceed the CVaR amount at a high confidence level given by  $(100 - p)\%$ . Stated differently, CVaR at a confidence level of  $(100 - p)\%$  refers to the maximum dollar value of loss that will only be exceeded  $p\%$  of the time over the given time horizon. Since losses from credit risk are measured over a one-year horizon, the CVaR measure we will compute also relates to a one-year time horizon.


In order to compute CVaR to quantify the tail risk of the credit loss distribution in a corporate bond portfolio, we need to specify the confidence level at which it should be determined. Within the framework of economic capital allocation, CVaR is usually measured at a confidence level that reflects the solvency standard of the institution in question. For instance, the solvency standard of an AA-rated institution is typically  $99.97\%$ , and hence, CVaR will be computed at this confidence level. From a portfolio management perspective, however, the confidence level of interest for CVaR estimate would typically be much lower. The motivation for this is that portfolio managers have to provide monthly performance reports to clients, and return deviations over this period need to be explained. In this case, estimating CVaR at a confidence level of  $91.6\%$  would imply that the underperformance relative to the benchmark will exceed the monthly CVaR estimate once during the year on average if monthly performance reporting is used. In this case, the CVaR estimate provides useful information to the portfolio manager and the client in terms of both the return surprises one could expect and also to actually observe it happen.

Motivated by the above observation, we will choose the confidence level for the CVaR esti mate to be  $90\%$ . At this level of confidence, the portfolio manager can expect the credit losses to exceed the monthly CVaR estimate for one reporting period during the year. Once the confidence level for CVaR is specified, estimating CVaR from the simulated loss distribution is quite simple. If, for instance, the number of simulation runs is equal to 10,000, then the  $90\%$  CVaR will be equal to the 1,000th worst-case credit loss. Assuming that the simulated credit losses are sorted in an ascending order of magnitude, the credit loss corresponding to the 9,000th row in the sorted data will be the CVaR at  $90\%$  confidence level for 10,000 simulation runs.


Considering that standard practice in portfolio management is to report risk measures relative to the current market value of the portfolio, we will introduce the term "percentage credit value at risk." If  $M_P$  denotes the current mark to market value of the portfolio, the percentage CVaR at 90\% confidence level is defined as,

$$
\% C V a R_{90 \%} = \frac{C V a R_{90 \%}}{M_{P}} \tag{10}
$$

# Expected Shortfall

Although CVaR is a useful tail risk measure, it fails to reflect the severity of loss in the worst-case scenarios in which the loss exceeds CVaR. In other words, CVaR fails to provide insight as to how far the tail of the loss distribution extends. This information is critical if the portfolio manager is interested in restricting the severity of the losses in the worst-case scenarios under which losses exceed CVaR. In order to better motivate this point, Figure 1 shows the credit loss distribution for two portfolios that have identical CVaR at the  $90\%$  level of confidence.

Examining Figure 1 it is clear that although both portfolios have identical CVaR at the  $90\%$  confidence level, the severity of the worst-case losses that exceed the  $90\%$  confidence level are lower for portfolio 1 compared to portfolio 2. This example suggests that in order to investigate whether portfolio credit risk is well diversified, it is not sufficient if we only examine the tail probability beyond some confidence level. Examining the loss exceedence beyond the desired confidence level at which CVaR is estimated is important to gauge the loss severity in the tail part of the loss distribution.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/e644213d7dde8cac5d3cc40b60c3dc6286b799da6159bfcb7096ebcc05ae9a4f.jpg)
Figure 1 Credit Loss Distribution for Two Portfolios


One such risk measure that provides an estimate of the loss severity in the tail part of the loss distribution is the expected shortfall (ES), which is sometimes also referred to as conditional VaR. Similar to CVaR, expected shortfall requires specifying a confidence level and a time horizon. Considering that ES is usually used in conjunction with CVaR, the confidence level should be chosen as  $90\%$  and the time horizon one year. A simple interpretation of ES is that it measures the average loss in the worst  $p\%$  scenarios where  $(100 - p)\%$  denotes the confidence level at which CVaR is estimated. In mathematical terms, expected shortfall can be defined as the conditional expectation of that part of the credit loss that exceeds the CVaR limit. The interpretation of ES as conditional VaR follows from this definition. If  $\tilde{\ell}$  denotes the loss variable, ES can be defined as given below:

$$
E S = E \left[ \tilde {\ell} \mid \tilde {\ell} > C V a R \right] \tag {11}
$$

Given the simulated loss distribution of the portfolio, computing expected shortfall risk is quite simple. Let  $\ell_{i}$  denote the simulated credit loss distribution for the  $i$ th simulation run, and let us assume that the losses are sorted in ascending order. If the number of simulation runs is equal to  $N$ , the relevant equation to compute

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/15e027a2ff9e44a7d4a62554e2d919f25db7beb488af8003b9cc65824572a74d.jpg)
Figure 2 Various Risk Measures for Portfolio Credit Risk

ES at the  $90\%$  confidence level from the simulations is given below:

$$
E S_{90 \%} = \frac{1}{(1 - 0.9) N} \times \sum_{i = 0.9 N + 1}^{N} \ell_{i} \tag{12}
$$

The percentage ES at  $90\%$  confidence level is defined as,

$$
\% E S_{90 \%} = \frac{E S_{90 \%}}{M_{P}} \tag{13}
$$

Figure 2 shows the various credit risk measures presented here that can be computed from the simulated loss data.

# Relaxing the Normal Distribution Assumption

A growing body of empirical studies conducted on financial time series data suggests that returns on traded financial instruments exhibit volatility clustering and extreme movements that are not representative of a normally distributed random variable. Another commonly observed property of financial time series is that during times of large market moves, there is greater degree of comovement of returns across many firms compared to those observed during normal market conditions. This property, usually referred to as tail dependence, captures the extent to which the dependence (or correlation) between random variables arises from extreme observations. Stated differently, for a given level of correlation between the random variables a multivariate distribution with tail dependence has a much greater tendency to generate simultaneous extreme values for the random variables in contrast to those distributions that do not have this property.


A multivariate normal distribution does not exhibit tail dependence. The dependence or correlation structure exhibited between the random variables in a multivariate normal distribution arises primarily from comovements of the variables around the center of the distribution. As a consequence, contagion or herding behavior commonly observed in financial markets is difficult to model within the framework of multivariate normal distributions. In order to capture contagion and herding behavior in financial markets, distributions that exhibit tail dependence should be used to model financial variables of interest. In the context of credit risk modeling, contagion effects would result in greater comovement of asset returns across firms during periods of recession leading to higher probability of joint defaults. If we model the joint distribution of asset returns to be multivariate normal, we will fail to capture the effects of contagion in the aggregate portfolio credit risk measures we compute. In the next section we relax the assumption that the distribution of asset returns is multivariate normal.

# Student's  $t$  Distribution

Among the class of distribution functions that exhibit tail dependence, the family of multivariate normal mixture distributions, which include Student's  $t$  distribution and generalized hyperbolic distribution, is an interesting alternative. This is because normal mixture distributions inherit the correlation matrix of the multivariate normal distribution. Hence, correlation matrices for normal mixture distributions are easy to calibrate.

Formally, a member of the  $m$ -dimensional family of variance mixtures of normal distributions is equal in distribution to the product of a scalar random variable  $s$  and a normal random vector  $\vec{u}$  having zero mean and covariance matrix  $\Sigma$ . The scalar random variable  $s$  is assumed to be positive with finite second moment and independent of  $\vec{u}$ . If  $\vec{x}$  denotes a random vector having a multivariate normal mixture distribution, our definition leads to the following equation:


$$
\vec{x} = s \cdot \vec{u} \tag {14}
$$

Since normal mixture distributions inherit the correlation matrix of the multivariate normal distribution, we have the following relationship:

$$
\operatorname{Co rr} \left(x_{i}, x_{k}\right) = \operatorname{Co rr} \left(u_{i}, u_{k}\right) \tag {15}
$$

The random vector  $\vec{x}$  will have multivariate  $t$  distribution with  $\nu$  degrees of freedom if the scalar random variable  $s$  is defined as below:

$$ s = \sqrt{\frac{v}{\omega}} \tag {16}
$$

In equation (16),  $\omega$  is a chi-square distributed random variable with  $\nu$  degrees of freedom. For  $\nu > 2$ , the resulting Student's  $t$  distribution will have zero mean vector and covariance matrix  $\frac{\nu}{\nu - 2}\Sigma$ . The Student's  $t$  distribution has the property that as  $\nu$  increases, the distribution approaches a normal distribution. In fact, for values of  $\nu$  greater than 25, it is difficult to distinguish between a normal distribution and  $t$  distribution. In a multivariate setting, as  $\nu$  decreases, the degree of tail dependence between the random variables will increase. For financial time series,  $\nu$  is typically around 4 (Platen and Sidorowicz, 2007).

An important distinction between the  $t$  distribution and the normal distribution is that uncorrelated random variables are mutually independent, whereas the components of multivariate  $t$  are in general dependent even if they are uncorrelated. In modeling credit risk, this property makes it possible to capture comovements of asset returns between firms in extreme market situations even if the asset returns exhibit little or no correlation under normal market conditions.

In the univariate case, the probability density function of the Student's  $t$  distribution with  $\nu$  degrees of freedom has the following functional form:

$$ f_{\nu} (x) = \frac{\Gamma ((\nu + 1) / 2)}{\sqrt{\nu \pi} \times \Gamma (\nu / 2)} \times \left(1 + \frac{x^{2}}{\nu}\right)^{- (\nu + 1) / 2} \tag {17}
$$

In equation (17)  $\Gamma (\cdot)$  is the gamma function, which is given by

$$
\Gamma (\alpha) = \int_{0}^{\infty} x^{\alpha - 1} e^{- x} d x \tag {18}
$$

# Loss Simulation Under Multivariate  $t$  Distribution

The steps involved in simulating the credit loss distribution when asset returns are multivariate  $t$  follow the same procedure as for the multivariate normal case. Instead of generating the sequence of correlated asset returns from a multivariate normal distribution, we now have to generate this sequence from a multivariate  $t$  distribution. The next step will involve inferring the credit rating change of the various obligors in the portfolio as implied by the simulated asset return vector. To do this, we need to determine the thresholds against which the asset returns will be compared to identify rating changes or obligor default. These  $z$ -thresholds have to be calibrated to correspond to the Student's  $t$  distribution. Specifically, the integrand for computing the  $z$ -thresholds will be the Student's  $t$  density function.

For purpose of illustration, let us consider an obligor that has a current credit rating of A1. Let  $p_{A1,Aaa}$  denote the probability of transitioning to the credit rating Aaa. Under the assumption that the asset returns of the obligor are  $t$ -distributed, the credit event that signals the obligor rating migration from A1 to Aaa will occur when the asset returns of the obligor exceed the threshold  $z_{A1,Aaa}$ . This threshold can be determined by solving the following integral equation:


$$ p_{A 1, A a a} = \frac{\Gamma ((v + 1) / 2)}{\sqrt{v \pi} \times \Gamma (v / 2)} \int_{z_{A 1, A a a}}^{\infty} \left(1 + \frac{x^{2}}{v}\right)^{- (v + 1) / 2} d x \tag {19}
$$

A rating transition of this obligor from A1 to Aa1 will occur if the asset return falls between the thresholds  $z_{A1,Aaa}$  and  $z_{A1,Aa1}$ . The threshold  $z_{A1,Aa1}$  can be determined by solving the following integral equation:

$$ p_{A 1, A a 1} = \frac{\Gamma ((\nu + 1) / 2)}{\sqrt{\nu \pi} \times \Gamma (\nu / 2)} \int_{z_{A 1, A a 1}}^{z_{A 1, A a a}} \left(1 + \frac{x^{2}}{\nu}\right)^{- (\nu + 1) / 2} d x \tag {20}
$$

One can extend this sequential rule to determine the thresholds for migrating to other rating grades. Table 1 shows the  $z$ -threshold values computed using the rating transition probabilities for A2- and A3-rated obligors when the asset returns are  $t$ -distributed.

The rest of this section discusses the procedure to generate a sequence of random vectors from a multivariate  $t$  distribution. Following the discussion earlier in this entry, a random vector with multivariate  $t$  distribution having  $\nu$  degrees of freedom can be derived by combining a chi-square random variable with  $\nu$  degrees of freedom and a random vector that is normally distributed and independent of the chi-square random variable. This procedure will allow us to generate a sequence of multivariate  $t$ -distributed random vectors with  $\nu$  degrees of freedom.

To generate a sequence of chi-square distributed random variables, the standard procedure is to make use of the relationship between chi-square distribution and gamma distribution. A random variable  $x$  is said to have gamma distribution if its density function is defined as below:

$$ f (x) = \left\{ \begin{array}{c c} \frac{1}{\Gamma (\alpha) \beta^{\alpha}} x^{\alpha - 1} e^{- x / \beta}, & x > 0 \\ 0, & x \leq 0 \end{array} \right. \tag {21}
$$

In equation (21)  $\alpha > 0$  and  $\beta > 0$  are the parameters of the gamma distribution, and  $\Gamma(\alpha)$ is the gamma function given by equation (18). The chi-square distribution with  $\nu$  degrees of freedom is a special case of the gamma distribution with parameter values  $\alpha = \nu /2$  and  $\beta = 2$


Given the above relationship between gamma and chi-square distribution, a sequence of random variables having chi-square distribution with  $\nu$  degrees of freedom can be generated by sampling from a gamma distribution with parameter values  $\alpha = \nu /2$  and  $\beta = 2$ . Most standard software packages provide routines to generate random sequences from a gamma distribution. Hence, we will not discuss the details concerned with generating such a sequence of random variables.

To summarize, the following are the steps involved in generating an  $n$ -dimensional sequence of multivariate  $t$  distributed random variables with  $\nu$  degrees of freedom.

Step 1: Compute the Cholesky factor  $L$  of the matrix  $C$  where  $C$  is the  $n \times n$  asset return correlation matrix.
Step 2: Simulate  $n$  independent standard normal random variates  $z_{1},z_{2},\dots ,z_{n}$  and set  $\vec{u} = L\vec{z}$ .
Step 3: Simulate a random variate  $\omega$  from chi-square distribution with  $\nu$  degrees of freedom that is independent of the normal random variates and set  $s = \frac{\sqrt{\nu}}{\sqrt{\omega}}$ .
Step 4: Set  $\vec{x} = s\cdot \vec{u}$  which represents the desired  $n$  -dimensional  $t$  variate with  $\nu$  degrees of freedom and correlation matrix  $C$

Repeating the steps 2 to 4 will allow us to generate the sequence of multivariate  $t$ -distributed random variables.

Computing the credit loss for the two-bond portfolio in Table 2 will require comparing the asset return values under each simulation run against the  $z$ -thresholds given in Table 1 to trigger rating migrations and defaults for the obligors in the two-bond portfolio. On the basis of the implied rating changes assigned to the obligors using simulated asset returns, the credit loss for each simulation run can be calculated. The rest of the steps involved in computing the credit risk measures of interest from the simulated loss distribution are identical to the ones for the normal distribution case.


# KEY POINTS

- Monte Carlo methods provide a flexible tool to simulate credit loss distribution and are relatively simple to implement.
- To simulate the credit loss distribution under the rating migration mode, rating transition probabilities have to be transformed into corresponding  $z$ -thresholds for the assumed distribution function for the asset returns.
- Simulating multivariate  $t$  random vectors requires appropriately scaling the sequence of multivariate normal vectors by another sequence of chi-square random variables that are uncorrelated with the normal random vectors.
- From the simulated loss distribution, various tail risk measures of interest can be computed.
- Using techniques such as importance sampling can significantly reduce the standard errors of tail risk measures for a given number of simulation runs.


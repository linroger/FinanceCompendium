
# Robust Portfolio Optimization

DESSISLAVA A. PACHAMANOVA, PhD

Associate Professor of Operations Research, Babson College

PETTER N. KOLM, PhD

Clinical Associate Professor and Director of the Mathematics in Finance Masters Program,

Courant Institute, New York University

FRANK J. FABOZZI, PhD, CFA, CPA

Professor of Finance, EDHEC Business School

SERGIO M. FOCARDI, PhD

Partner, The Intertek Group

Abstract: As the use of quantitative techniques has become more widespread in the investment industry, the issue of how to handle portfolio estimation and model risk has grown in importance. Robust optimization is a technique for incorporating estimation errors directly into the portfolio optimization process, and is typically applied in conjunction with robust statistical estimation methods. The robust optimization approach uses the distribution from the estimation process to find a portfolio allocation in one single optimization, while keeping the computational costs low. Robust portfolios tend to be less sensitive to estimation errors, offer some improved portfolio performance, and often have lower turnover ratios.

The concepts of portfolio optimization and diversification have been instrumental in the understanding of financial markets and the development of financial decision making. The major breakthrough came in 1952 with the publication of Harry Markowitz's theory of portfolio selection. Markowitz suggested that sound financial decision making is a quantitative trade-off between risk and return. His work spurred a vast amount of research on quantifying market behavior, and one of the main practical consequences of his theory was the acceptance of the notion that diversification reduces portfolio risk.


Sixty years after Markowitz's seminal work, substantial advances have been made in the theory and practice of portfolio management. Today, quantitative techniques for forecasting asset returns, portfolio allocation, risk measurement, trading and rebalancing, to mention a few, have a major presence in the financial industry. Their proliferation has been facilitated by the decreased cost of computing power and the increased availability of sophisticated and specialized software that allows investors to incorporate their forecasts about the future direction of markets into disciplined analytical frameworks.



Consider the classical mean-variance portfolio allocation problem:

$$
\begin{array}{l} \max_{\mathbf {w}} \quad \boldsymbol {\mu}^{\prime} \mathbf {w} - \lambda \mathbf {w}^{\prime} \Sigma \mathbf {w} \\ s. t. \quad \mathbf {w}^{\prime} \iota = 1 \\ \end{array}
$$ where  $\mu$  is the vector of expected returns (alphas) for  $N$  assets in the investment universe,  $\pmb{\Sigma}$  is the asset-asset covariance matrix,  $\mathbf{w}$  is the  $N$ -dimensional vector of portfolio weights,  $\lambda$  is the risk aversion coefficient, and  $\iota$  is a vector of ones. This optimization problem simply states that the optimal portfolio weights should be chosen so that the expected portfolio return less the portfolio risk (scaled by the risk aversion coefficient) is as large as possible. The equality constraint ensures that the portfolio weights add up to one.


As demonstrated, for instance, by Black and Litterman (1992), a small change in the expected asset returns can result in large changes in the optimal portfolio allocation. In other words, the classical portfolio optimization problem is not robust with respect to small changes in its inputs. Since in practice expected returns and asset covariances cannot be measured exactly but have to be estimated—sometimes with large errors—it is important in applications that uncertainty resulting from estimation errors be taken into account.

One way to make the optimization problem robust with respect to estimation errors is to require that the optimal solution remains optimal for all values of the expected returns that are "close" to the estimates of expected returns  $\hat{\mu}$ . We can express this requirement in the optimization problem as follows: Instead of using the estimate  $\hat{\mu}$  of  $\mu$ , we consider a set of vectors that are close to the estimate  $\hat{\mu}$ , and solve the optimization problem for all vectors in this set. The idea here is that the expected returns may have been estimated with some error, but that the estimates are not too far away from the true expected returns. Mathematically, this idea is incorporated in the definition of an uncertainty set for  $\hat{\mu}$ ,


$$
U_{\delta} (\hat {\mu}) = \left\{\mu \mid | \mu_{i} - \hat {\mu}_{i} | \leq \delta_{i}, i = 1, \dots , N \right\} \tag {1}
$$

In words, the set  $U_{\delta}(\hat{\mu})$  contains all vectors  $\boldsymbol{\mu} = (\mu_1, \dots, \mu_N)$  such that each component  $\mu_i$  is in the interval  $[\hat{\mu}_i - \delta_i, \hat{\mu}_i + \delta_i]$ , and is often referred to as a "box" uncertainty set. From a statistical point of view, these intervals can be chosen to be certain confidence intervals around each point estimate  $\hat{\mu}_i$ .

We solve a modification of the original optimization problem such that even if  $\mu$  takes its worst possible value within the uncertainty set, the allocation remains optimal. Namely, we solve the max-min portfolio optimization problem

$$
\begin{array}{l l} \max_{\mathbf {w}} & \left\{\min_{\mu \in U_{\delta} (\hat {\boldsymbol {\mu}})} \left\{\boldsymbol {\mu}^{\prime} \mathbf {w} \right\} - \lambda \mathbf {w}^{\prime} \Sigma \mathbf {w} \right\} \\ s. t. & \mathbf {w}^{\prime} \mathfrak {t} = 1 \end{array}
$$

At first sight, this optimization problem looks complicated, as we have to minimize the objective function with respect to  $\mu$  over the specified uncertainty set and, simultaneously, maximize the objective function with respect to  $\mathbf{w}$  to find the optimal allocation. However, as we will see shortly, this problem can be reformulated into an equivalent maximization problem with respect to only  $\mathbf{w}$ . First, let us understand what this model implies from an intuitive perspective.

Observe that this model incorporates the notion of aversion to estimation error in the following sense. When the interval  $[\hat{\mu}_i - \delta_i, \hat{\mu}_i + \delta_i]$  for the expected return of the  $i$ th asset is large, meaning that the expected return has been estimated with large estimation error, then the minimization problem over  $\mu$  is less constrained. Consequently, the minimum will be smaller than it would be in situations when the interval for  $\hat{\mu}_i$  is smaller. Obviously, when the interval is small enough, the minimization problem will be so tightly constrained that it would deliver a solution that is close to the optimal solution of the classical portfolio optimization problem in which estimation errors are ignored. In other words, it is the size of the intervals (in general, the size of the uncertainty set) that controls the aversion to the uncertainty that comes from estimation errors.


The robust version of the classical portfolio optimization problem is obtained by solving the max-min problem above, and for this model is easy to derive without any involved mathematics. Namely, it is

$$
\begin{array}{l} \max_{\mathbf {w}} \quad \hat {\mathbf {u}}^{\prime} \mathbf {w} - \delta^{\prime} | \mathbf {w} | - \lambda \mathbf {w}^{\prime} \Sigma \mathbf {w} \\ s. t. \quad \mathbf {w}^{\prime} \iota = 1 \\ \end{array}
$$ where  $|\mathbf{w}|$  denotes the absolute value of the entries of the vector of weights  $\mathbf{w}$ . To gain some intuition, notice that if the weight of asset  $i$  in the portfolio is negative, the worst-case expected return for asset  $i$  is  $\hat{\mu}_i + \delta_i$  (we lose the largest amount possible). If the weight of asset  $i$  in the portfolio is positive, then the worst-case expected return for asset  $i$  is  $\hat{\mu}_i - \delta_i$  (we gain the smallest amount possible). Observe that  $\hat{\mu}_i w_i - \delta_i |w_i|$  equals  $(\hat{\mu}_i - \delta_i) w_i$  if the weight  $w_i$  is positive and  $(\hat{\mu}_i + \delta_i) w_i$  if the weight  $w_i$  is negative. Hence, the mathematical expression in the objective agrees with our intuition: It minimizes the worst-case expected portfolio return. In this robust version of the mean-variance formulation, assets whose mean return estimates are less accurate (have a larger estimation error  $\delta_i$ ) are therefore penalized in the objective function, and will tend to have a smaller weight in the optimal portfolio allocation.


This optimization problem has the same computational complexity as the nonrobust meanvariance formulation—namely, it can be stated as a quadratic optimization problem. The latter can be achieved by using a standard trick that allows us to get rid of the absolute values for the weights. The idea is to introduce an  $N$ -dimensional vector of additional variables  $\psi$  to replace the absolute values, and to write an equivalent version of the optimization problem,


$$
\begin{array}{l} \max_{\mathbf {w}, \psi} \quad \hat {\boldsymbol {\mu}}^{\prime} \mathbf {w} - \delta^{\prime} \boldsymbol {\psi} - \lambda \mathbf {w}^{\prime} \Sigma \mathbf {w} \\ \begin{array}{l l} \text{s .t .} & \mathbf {w}^{\prime} \iota = 1 \end{array} \\ \psi_{i} \geq w_{i}; \psi_{i} \geq - w_{i}, i = 1, \dots , N \\ \end{array}
$$

Therefore, incorporating considerations about the uncertainty in the estimates of the expected returns in this example has virtually no computational cost.

We can view the effect of this particular "robustification" of the mean-variance portfolio optimization formulation in two different ways. On the one hand, we see that the values of the expected returns for the different assets have been adjusted downwards in the objective function of the optimization problem. That is, the robust optimization model "shrinks" the expected return of assets with large estimation error. On the other hand, we can interpret the additional term in the objective function as a "risk-like" term that represents penalty for estimation error. The size of the penalty is determined by the investor's aversion to estimation risk, and is reflected in the magnitude of the deltas.

More complicated specifications for uncertainty sets have more involved mathematical representations, but can still be selected so that they preserve an easy computational structure for the robust optimization problem. For example, a frequently used uncertainty set is

$$
U_{\delta} (\hat {\mu}) = \left\{\mu | \left(\mu - \hat {\mu}\right)^{\prime} \Sigma_{\mu}^{- 1} (\mu - \hat {\mu}) \leq \delta^{2} \right\} \tag {2}
$$ where  $\Sigma_{\mu}$  is the covariance matrix of estimation errors for the vector of expected returns  $\mu$ . This uncertainty set represents the requirement that the scaled sum of squares (scaled by the inverse of the covariance matrix of estimation errors) between all elements in the set and the point estimates  $\hat{\mu}_1, \hat{\mu}_2, \dots, \hat{\mu}_N$  can be no larger than  $\delta^2$ . We note that this uncertainty set cannot be interpreted as individual confidence intervals around each point estimate. Instead, those familiar with statistics will notice that this uncertainty set captures the idea of a joint confidence region used, for example, in


Wald tests. In practice, the covariance matrix of estimation errors is often assumed to be diagonal. For this particular case, the set contains all vectors of expected returns that are within a certain number of standard deviations from the point estimate of the vector of expected returns, and the resulting robust portfolio optimization problem would protect the investor if the vector of expected returns is indeed within that range.

# Selecting Uncertainty Sets from Statistical Procedures

How do we select uncertainty sets for a particular application? In practice, their shape and size are usually based on statistical estimates and probabilistic guarantees. For example, uncertainty set (1) defines an  $N$ -dimensional box: It considers possible deviations of the  $N$  uncertain parameters from their expected values, and the resulting robust portfolio optimization problem protects against the worst possible realization of each individual parameter separately. Uncertainty set (2) defines an  $N$ -dimensional ellipsoid (in two dimensions, an ellipsoid is an ellipse), and is not as conservative as (1). The resulting robust portfolio optimization offers protection from the worst possible joint deviation of the actual expected returns from the forecasts, by considering the correlations between the estimation errors of the uncertain parameters through the covariance matrix  $\Sigma_{\mu}$ .

The calibration of the parameters that enter the definition of uncertainty sets is very important. For example, the intervals for  $\hat{\mu}$  that define the uncertainty set (1) above can be matched to  $95\%$  or  $99\%$  confidence intervals for the estimates of the expected returns. The value of the parameter  $\delta$  in the uncertainty set (2) can be related to probabilistic guarantees, as we will explain later.

The covariance matrix  $\pmb{\Sigma}_{\mu}$  of the errors in the estimated expected asset returns in uncertainty set (2) can be obtained using several different techniques. However, its estimation can be problematic because of the difficulty in separating the estimation error in expected returns from the inherent variability in actual realized returns (Lee, Stefek, and Zhelenyak, 2006). Specifically, if a portfolio manager forecasts a  $5\%$  active return over the next time period, but achieves  $1\%$ , he cannot argue that there was a  $4\%$  error in his expected return, so evaluating  $\Sigma_{\mu}$  from historical data can be tricky.


In theory, if returns in a given sample of size  $T$  are assumed to come from a normal distribution, then  $\Sigma_{\mu}$  equals  $(1 / T) \cdot \Sigma$ , where  $\Sigma$  is the covariance matrix of asset returns as before. However, experience seems to suggest that this may not be the best method in practice. One issue is that this approach applies only in a world in which returns are stationary. Another important issue is whether the estimate of the asset covariance matrix  $\Sigma$  itself is reliable if it is estimated from a sample of historical data. It is well-known that computing a meaningful asset return covariance matrix requires a large number of observations—many more observations than the number of assets in the portfolio—and even then the sample covariance matrix may contain large estimation errors that produce poor results in the mean-variance optimization. A fix when sufficient data are not available is to compute the estimation errors in expected returns at a factor (e.g., industry, country, sector) level, and use their variances and covariances in the estimation error covariance matrix for the individual asset returns in a manner similar to standard factor models.

Several approximate methods for estimating  $\Sigma_{\mu}$  have also been found to work well in practice (Stubbs and Vance, 2005). For example, it has been observed that simpler estimation approaches, such as computing the diagonal matrix containing the variances of the estimates (as opposed to the complete error covariance matrix), often provide most of the benefit in robust portfolio optimization. In addition, standard approaches for estimating expected returns, such as Bayesian statistics and regression-based methods, generate estimates for the estimation error covariance matrix in the process of generating the estimates themselves.


Uncertainty sets (1) and (2) are both symmetric, that is, the sets are symmetric around the vector of uncertain parameters  $\hat{\mu}$ . One can also consider asymmetric uncertainty sets that better reflect information about the probability distributions of the uncertain parameters when the probability distributions are skewed (see Natarajan, Pachamanova, and Sim, 2008). Recently, there has been also a substantial interest in developing "structured" uncertainty sets, that is, uncertainty sets that are constructed for a specific purpose. Frequently, structured uncertainty sets based on simple intersections of elementary uncertainty sets are used to minimize the "conservatism" in traditional ellipsoidal or "box" uncertainty sets. We will discuss such uncertainty sets in more detail later in this entry.

# Clarifying a Misconception about Robust Optimization

Among practitioners, the notion of robust portfolio optimization is often equated with the robust mean-variance model we just discussed, with uncertainty set (1) or (2) for the expected asset returns. While robust optimization applications frequently involve one form or another of this model, the actual scope of robust optimization can be much broader. We note that the term "robust optimization" refers to the technique of incorporating information about uncertainty sets for the parameters in the optimization model, and not to the specific definitions of uncertainty sets or the choice of which parameters to model as uncertain. For example, we can use the robust optimization methodology to incorporate considerations for uncertainty in the estimate of the covariance matrix in addition to the uncertainty in expected returns, and obtain a different robust portfolio allocation formulation.

Robust optimization can be applied also to portfolio allocation models that are different from the mean-variance framework, e.g.,

Sharpe ratio and value-at-risk optimization (see, for example, Goldfarb and Iyengar, 2003 and Natarajan, Pachamanova, and Sim, 2008). There are numerous useful and reasonable robust formulations, and a complete review is beyond the scope of this entry. We refer interested readers to Fabozzi et al. (2007) for further details.

# THE RELATIONSHIP TO BAYESIAN METHODS AND ECONOMIC THEORY

Critics have argued that robust optimization is not really different from shrinkage estimators that combine the minimum variance portfolio with a speculative investment portfolio. Indeed, when using a particular uncertainty set for the expected returns (assuming all other parameters in the mean-variance problem are certain), it can be shown that the optimal mean-variance portfolio weights using robust optimization are a linear combination of the weights of the minimum variance portfolio (which is independent of investor preferences or expected returns) and a mean-variance efficient portfolio. These portfolio weights can also be obtained by solving a standard mean-variance problem with expected return estimates derived from a standard shrinkage estimator with specific shrinkage parameters (see, for example, Garlappi, Uppal, and Wang, 2007 and Scherer, 2005). Robust optimization thus appears to offer a less transparent way to express investor preferences and tolerance to uncertainty than other approaches, such as Bayesian methods, in which the shrinkage parameters can be defined explicitly.

In general, however, robust optimization is not necessarily equivalent to shrinkage estimation. For instance, differences are apparent in the presence of additional portfolio constraints. Furthermore, as we mentioned earlier, the robust optimization methodology can be used to account for uncertainty in parameters other than expected asset returns (covariances of asset returns, for example), making its relationship with Bayesian estimation even less obvious.


The concept of robust optimization has been criticized also from the point of view of classical economic theory (see, for example, Sims, 2001). From a behavioral and decision-making point of view, few individuals have max-min preferences. Indeed, max-min preferences describe the behavior of decision makers who face great ambiguity and thus make choices consistent with the belief that the worst possible outcomes are highly likely. This kind of conservative behavior is not typical of the average investor. The problem of overconservativeness in applying robust optimization, however, can be controlled by modifying the specification of uncertainty sets for the parameters, as we will explain in the following section.

# USING ROBUST PORTFOLIO OPTIMIZATION IN PRACTICE

One of the main problems in assessing the practical benefits of the robust optimization approach is that its performance is dependent on the choice (or calibration) of the model parameters, such as the coefficient of aversion to estimation error  $\delta$ . In a sense, however, this issue is no different from the calibration of standard parameters in the classical portfolio optimization framework, such as the length of the estimation period to use for forecast generation and the choice of the risk aversion coefficient. These and other parameters need to be determined empirically or subjectively.

Note also that other robust modeling devices such as Bayesian estimators and the Black-Litterman model (for an overview, see Fabozzi, Focardi, and Kolm, 2006) have similar issues. In particular, for shrinkage estimators, the portfolio manager needs to determine which shrinkage target to use and the size of the shrinkage parameter. In the Black-Litterman model, he needs to provide his confidence in equilibrium as well as his confidence in his views.

The values of the robust formulation parameters can sometimes be matched to probabilistic guarantees. For example, if the estimates of the expected asset returns are assumed to be normally distributed, then there is an  $\omega \%$  chance that the estimates will fall in the ellipsoidal set (2) around the manager's estimates  $\hat{\mu}$ ,

$$
U_{\delta} (\hat {\mu}) = \left\{\mu | \left(\mu - \hat {\mu}\right)^{\prime} \Sigma_{\mu}^{- 1} (\mu - \hat {\mu}) \leq \delta^{2} \right\}
$$ if  $\delta^2$  is assigned the value of the  $\omega$ th percentile of a  $\chi^2$  distribution with degrees of freedom equal to the number of assets in the portfolio. As an example, suppose that there are 15 assets in the asset universe and that all returns are normally distributed. If we choose  $\delta^2 = 25$ , then  $95\%$  of all expected returns will be in the set  $U_{\delta}(\hat{\mu})$ .


More generally, if the expected returns can belong to any possible probability distribution, then assigning

$$
\delta = \sqrt{\frac{1 - \omega}{\omega}}
$$ guarantees that the estimates will fall in the uncertainty set  $U_{\delta}(\hat{\mu})$  with probability at least  $\omega \%$  (El Ghaoui, Oks, and Oustry, 2003).


It has been observed that in practice the standard robust mean-variance formulation with the above uncertainty set specification for estimated expected returns may result in portfolio allocations that are too pessimistic. Recall that the traditional robust counterpart tries to find the optimal solution so that constraints containing uncertain coefficients are satisfied for the worst-case realizations of the uncertain parameters. Naturally, the larger the uncertainty set, the greater the chance that the optimal portfolio allocation will be conservative. Therefore, especially in situations in which the worst-case expected returns can be far away from the estimated expected returns, some portfolio performance may be sacrificed. Of course, we can always make a formulation less pessimistic by considering a smaller uncertainty set. For the uncertainty set above, we can achieve this by decreasing the parameter  $\delta$ . However, there is a recent trend among practitioners to apply more structured restrictions. We provide an example of a structured uncertainty set next.


When we formulated the robust portfolio optimization problem earlier in this entry, we made the assumption that all of the actual realizations of expected returns could be worse than their expected values. Thus, the net adjustment in the expected portfolio return will always be downwards. While this leads to a more robust problem than the original one, in many instances it may be too pessimistic to assume that all estimation errors go against us. Instead, it may be more reasonable to believe that at least some of the true realizations will be above their expected values. For example, we may make the assumption that there are approximately as many realizations above the estimated values as there are realizations below the estimated values. This condition can be incorporated in the portfolio optimization problem by adding an additional restriction to the uncertainty set (2). Ceria and Stubbs (2006) refer to this adjustment as a "zero net alpha adjustment." Instead of adjusting the alphas of the estimates, we can perform this kind of adjustment also on their standard deviations or variances. It can be shown that the effect of the zero net adjustment is equivalent to modifying the covariance matrix  $\Sigma_{\mu}$  of estimation errors for the expected returns. Tests with real data indicate that robust mean-variance optimization with this kind of adjustment for expected return estimates outperforms classical mean-variance optimization  $70\%$  to  $80\%$  of the time (Ceria and Stubbs, 2006).

Other structured uncertainty sets include "tiered" uncertainty sets in which some of the uncertain parameters are modeled as "well-behaved," while others are modeled as "misbehaving." The modeler can require protection against a prespecified number of parameters that he believes will "misbehave," that is, which will deviate significantly from their expected values (see, for example, Bienstock, 2006). In the context of portfolio optimization, we would specify "misbehaving" parameters as those realizations of expected asset returns that are likely to be lower than their estimates.


# Effect of Robust Portfolio Optimization Formulations on Performance

As we mentioned earlier, some tests with simulated and real market data indicate that robust optimization, when inaccuracy is assumed in the expected return estimates, outperforms classical mean-variance optimization in terms of total excess return a large percentage (70\% to 80\%) of the time (Ceria and Stubbs, 2006). Other tests have not been as conclusive (Lee, Stefek, and Zhelenyak, 2006). The factor that accounts for much of the difference is how the uncertainty in parameters is modeled. Therefore, finding a suitable degree of robustness and appropriate definitions of uncertainty sets can have a significant impact on portfolio performance.

Independent tests by practitioners and academics using both simulated and market data appear to confirm that robust optimization generally results in more stable portfolio weights, that is, that it eliminates the extreme corner solutions resulting from traditional mean-variance optimization. Robust mean-variance optimization also appears to improve worst-case portfolio performance, and results in smoother and more consistent portfolio returns. Finally, by preventing large swings in positions, robust optimization frequently makes better use of the turnover budget and risk constraints.

Robust optimization, however, is not a panacea. By using robust portfolio optimization, investors are likely to trade off the optimality of their portfolio allocation in cases in which nature behaves as they predicted for protection against the risk of inaccurate estimation. Therefore, investors using the technique should not expect to do better than classical portfolio optimization when estimation errors have little impact, or when typical scenarios occur. They should, however, expect insurance in scenarios in which their estimates deviate from the actual realized values by up to the amount they have prespecified in the modeling process.


# PRACTICAL CONSIDERATIONS FOR ROBUST PORTFOLIO ALLOCATION

Which type of robust models is best for modeling financial portfolios? The short answer is: It depends. Among others, it depends on the size of the portfolio, the type of assets and their distributional characteristics, the portfolio strategies and trading styles involved, and the existing infrastructure. Sometimes it makes sense to consider a combination of several techniques, such as a blend of Bayesian estimation and robust portfolio optimization. This is an empirical question—indeed, the only way to find out which strategy performs best is through thorough research and testing. A simple step-by-step checklist for robust quantitative portfolio management could include:

1. Risk forecasting: Develop an accurate risk model
2. Return forecasting: Construct robust expected return estimates
3. Classical portfolio optimization: Start with a simple framework
4. Model risk mitigation: a. Minimize estimation risk through the use of robust estimators

b. Improve the stability of the optimization framework through robust optimization

# 5. Extensions

Needless to say, by no means do we claim that this list is complete or that it has to be followed religiously—it is simply provided as a starting point for the quantitative portfolio manager.

In general, the most difficult item in this list is the calculation of robust expected return estimates. Developing profitable trading strategies (" $\alpha$  generation") is notoriously hard, but not impossible. It is important to remember that modern portfolio optimization techniques and fancy mathematics are not going to help at all if the underlying trading strategies are poor.


Implicit in this list is that for each step one needs to perform thorough testing in order to understand the effect of changes and new additions to the model. It is not unusual that quantitative analysts and portfolio managers will have to revisit previous steps as part of the research and development process. For example, it is important to understand the interplay between forecast generation and the reliability of optimized portfolio weights. Introducing a robust optimizer may lead to more reliable, and often more stable, portfolio weights. However, how to make the optimization framework more robust depends on how expected return and risk forecasts are produced. Therefore, sometimes one has to refine or modify basic forecast generation. Identifying the individual and the combined contribution of different techniques is crucial in the development of a successful quantitative framework.

Minimizing estimation risk and improving the reliability of the optimization framework can be done in either order, or sometimes at the same time. The goal of both approaches is of course to improve the overall reliability and performance of the portfolio allocation framework. Some important questions to consider here are: When/why does the framework perform well (poorly)? How sensitive is it to changes in inputs? How does it behave when constraints change? Are portfolio weights intuitive—do they make sense? How high is the turnover of the portfolio over time?

Starting from the simple framework of classical portfolio optimization, many extensions are possible. Typical examples include the introduction of transaction costs models, more complex constraints (e.g., integer constraints such as round lotting or cardinality constraints), different risk measures (e.g., downside risk measures, higher moments), and dynamic and stochastic programming for incorporating in tertemporal dependencies. Often, these are problem specific and have to be dealt with on a case-by-case basis.


# FUTURE DIRECTIONS

Advances in the mathematical and physical sciences have always had a major impact on finance. In particular, probability theory, statistics, econometrics, and operations research have provided the necessary tools and discipline for the development of modern financial economics and large-scale portfolio management. The substantial advances in the areas of robust estimation and robust optimization during the 1990s have proven to be of significant importance for the practical applicability and reliability of portfolio management and optimization.

From a theoretical perspective, the area of robust optimization is quite mature. By contrast, there are many unanswered questions in the practice of robust portfolio optimization. There is a need for more empirical research in order to provide better guidelines for applying robust optimization in a way that guarantees superior portfolio performance. In particular, practitioners need to understand better (1) the implications of using different types of uncertainty set, (2) the interaction between different forecast generation methods (estimation techniques) and robust optimization, (3) how to calibrate model parameters in the optimization model, and (4) how to deal with the overconservatism inherent in many robust models.

The robust optimization framework offers great flexibility and many new interesting possibilities in portfolio management. For instance, robust portfolio optimization can exploit the notion of statistically equivalent portfolios. Specifically, with robust optimization, a manager can find the best portfolio that (1) minimizes trading costs with respect to the current holdings, and (2) has an expected portfolio return and variance that are statistically equivalent to those of the classical mean-variance portfolio. Common portfolio constraints, such as transaction cost considerations and tax implications, can be handled efficiently in the robust optimization framework.


Robust optimization has also shown promise as a computationally attractive alternative to classical optimization methods when it comes to multiperiod portfolio management. There are numerous benefits to taking a long-term view of investment management. Treating portfolio allocation as a multiperiod problem provides a framework for robust overall portfolio management that takes into consideration the effects of rebalancing, transaction costs, future liabilities, and taxes.

By incorporating multiperiod views on asset behavior in rebalancing models, portfolio managers may be able to reduce their transaction costs, as the portfolio will not be rebalanced unnecessarily often. As a simple example, if a portfolio manager expects asset returns to dip at the next time period, but then recover, he may choose to hold on to the assets in his portfolio in order to minimize transaction costs. However, if the net gain from realizing the tax loss is higher than the expense of the transactions, he may choose to trade for short term benefit despite believing that the portfolio value will recover after two trading periods. These trade-offs are complex to evaluate and model, and traditional optimization techniques for multistage optimization, such as dynamic programming (see, for example, Bertsekas, 1995a) and stochastic programming (see, for example, Wallace and Ziemba, 2005), have not been very successful in this context as they result in computationally intractable problems due to the "curse of dimensionality." However, if future asset returns are treated as uncertain parameters, and the uncertainty in their estimates is modeled through appropriately chosen uncertainty sets, the resulting portfolio optimization formulations are computationally tractable.

We emphasize that while the focus of this entry has been on the application of robust optimization to portfolio construction, robust optimization is a powerful and general tool with financial applications that extend well beyond that of portfolio allocation. The robust optimization technique appears promising in enhancing existing models for optimal trading, the computation of hedge ratios, the estimation of econometric models, and quantitative model selection—just to mention a few. Certainly, the future may bring many more.


# KEY POINTS

- As the use of quantitative techniques has become widespread in the investment industry, the consideration of estimation risk and model risk has grown in importance.
- In contrast to the traditional approach in which inputs to the portfolio allocation framework are treated as deterministic, robust portfolio optimization incorporates estimation errors in input parameters directly into the optimization process.
- In robust portfolio optimization, the inputs are not the traditional forecasts, such as expected returns and risk, but rather uncertainty sets containing these point estimates (e.g., confidence intervals around the forecasts).
- The robust optimization is a general technique that leads to a more reliable portfolio allocation framework and offers greater flexibility and many new interesting possibilities for the portfolio manager.
- One of the main problems in assessing the practical benefits of the robust optimization approach is that its performance is dependent on the choice (or calibration) of the model parameters, such as the coefficient of aversion to estimation error.
- Which type of robust model is best for modeling financial portfolios depends on, among other things, the size of the portfolio, the type of assets and their distributional characteristics, the portfolio strategies and trading styles involved, and the existing infrastructure.

# REFERENCES

Black, F., and Litterman, R. (1992). Global portfolio optimization. *Financial Analysts Journal* 48, September-October: 28-43.
Ben-Tal, A., and Nemirovski, A. (1998). Robust convex optimization. Mathematics of Operations Research 23: 769-805.
Bertsekas, D. (1995a). Dynamic Programming and Optimal Control, vol. 1. Belmont, MA: Athena Scientific.
Bertsekas, D. (1995b). Dynamic Programming and Optimal Control, vol. 2. Belmont, MA: Athena Scientific.
Bienstock, D. (2006). Experiments with robust optimization. Presentation at the International Symposium on Mathematical Programming, Rio de Janeiro, Brazil.
Ceria, S., and Stubbs, R. (2006). Incorporating estimation errors into portfolio selection: Robust portfolio construction. Journal of Asset Management 7, 2: 109-127.
El Ghaoui, L., and Lebret, H. (1997). Robust solutions to least-squares problems with uncertain data. SIAM Journal on Matrix Analysis and Applications, 18: 1035-1064.
El Ghaoui, L., Oks, M., and Oustry, F. (2003). Worst-case value-at-risk and robust portfolio optimization: A conic optimization approach. Operations Research 51, 4: 543-556.
Fabozzi, F. J., Focardi, S. M., and Kolm, P. N. (2006). Financial Modeling of the Equity Market: From CAPM to Cointegration. Hoboken, NJ: John Wiley & Sons.
Fabozzi, F. J., Kolm, P. N., Pachamanova, D. A., and Focardi, S. F. (2007). Robust Portfolio Op timization and Management. Hoboken, NJ: John Wiley & Sons.

Focardi, S. M., and Fabozzi, F. J. (2004). The Mathematics of Financial Modeling and Investment Management. Hoboken, NJ: John Wiley & Sons.
Garlappi, L., Uppal, R., and Wang, T. (2007). Portfolio selection with parameter and model uncertainty: A multi-prior approach. Review of Financial Studies 20, 1: 41-81.
Goldfarb, D., and Iyengar, G. (2003). Robust portfolio selection problems. Mathematics of Operations Research 28, 1: 1-38.
Lee, J., Stefek, D., and Zhelenyak, A. (2006). Robust portfolio optimization: A closer look. *MSCI Barra Research Insights Report*, June.
Markowitz, H. M. (1952). Portfolio selection. Journal of Finance 7, 1: 77-91.
Natarajan, K., Pachamanova, D. A., and Sim, M. (2008). Incorporating asymmetric distributional information in robust value-at-risk optimization. Management Science 54, 3: 573-585.
Rachev, S. T., Hsu, J., Bagasheva, B., and Fabozzi, F. J. (2007). Bayesian Methods in Finance. Hoboken, NJ: John Wiley & Sons.
Scherer, B. (2005). How Different is Robust Optimization Really? New York: Deutsche Asset Management.
Sims, C. A. (2001). Pitfalls in a mini-max approach to model uncertainty. *American Economic Review* 91, 2: 51-54.
Stubbs, R., and Vance, P. (2005). Computing return estimation error matrices for robust optimization. Report, Axioma, Inc., April.


# Average Value-at-Risk

STOYAN V. STOYANOV, PhD

Professor of Finance at EDHEC Business School and Head of Research for EDHEC Risk Institute-Asia

SVETLOZAR T. RACHEV, PhD, Dr Sci

Frey Family Foundation Chair-Professor, Department of Applied Mathematics & Statistics, Stony Brook University, and Chief Scientist, FinAnalytica

FRANK J. FABOZZI, PhD, CFA, CPA

Professor of Finance, EDHEC Business School

Abstract: Despite the fact that the value-at-risk (VaR) measure has been adopted as a standard risk measure in the financial industry, it has a number of deficiencies recognized by financial professionals. It is not a coherent risk measure. This is because it does not satisfy the subadditivity property requirement of a coherent risk measure. That is, there are cases in which the portfolio VaR is larger than the sum of the VaRs of the portfolio constituents, supporting the view that VaR cannot be used as a true risk measure. Unlike VaR, the average value-at-risk measure (AVaR)—also referred to as conditional value-at-risk and expected shortfall—is a coherent risk measure and has other advantages that result in its greater acceptance in risk modeling.

The average value-at-risk (AVaR) is a risk measure that is a superior alternative to VaR. Not only does it lack the deficiencies of VaR, but it also has an intuitive interpretation. There are convenient ways for computing and estimating AVaR, which allows its application in optimal portfolio problems. Moreover, it satisfies all axioms of coherent risk measures and it is consistent with the preference relations of risk-averse investors.

In this entry, we explore in detail the properties of AVaR and illustrate its superiority to VaR. We develop new geometric interpretations of AVaR and the various calculation methods.

We also provide closed-form expressions for the AVaR of the normal distribution, Student's  $t$  distribution, and a practical formula for Lévy stable distributions. Finally, we describe different estimation methods and remark on potential pitfalls.

# AVERAGE VALUE-AT-RISK DEFINED

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/1b41db6d9d4eaaa4447fc3c920480c2849ae7afa790d1a5cc7113519ee66e03d.jpg)
Figure 1 Note: The top plot shows the densities of  $X$  and  $Y$  and the bottom plot shows their c.d.f.s. The  $95\%$  VaRs of  $X$  and  $Y$  are equal to 0.15 but  $X$  has a thicker tail and is more risky.


that their risks are equal because their  $95\%$  VaRs are equal.

This conclusion is wrong because we pay no attention to the losses that are larger than the  $95\%$  VaR level. It is visible in Figure 1 that the left tail of  $X$  is heavier than the left tail of  $Y$ . Therefore, it is more likely that the losses of  $X$  will be larger than the losses of  $Y$ , on condition that they are larger than  $15\%$ . Thus, looking only at the losses occurring with probability smaller than  $5\%$ , the random return  $X$  is riskier than  $Y$ . Note that both  $X$  and  $Y$  have equal standard deviations. If we base the analysis on the standard deviation and the expected return, we would conclude that not only is the uncertainty of  $X$  equal to the uncertainty of  $Y$ , but  $X$  is actually preferable because of the higher expected return. In fact, we realize that it is exactly the opposite, which shows how important it is to ground the reasoning on a proper risk measure.

The disadvantage of VaR, that it is not informative about the magnitude of the losses larger than the VaR level, is not present in the risk measure known as average value-at-risk. In the literature, it is also called conditional value-at-risk or expected shortfall but we will use average value-at-risk (AVaR) as it best describes the quantity it refers to.

The AVaR at tail probability  $\epsilon$  is defined as the average of the VaRs, which are larger than the VaR at tail probability  $\epsilon$ . Therefore, by construction, the AVaR is focused on the losses in the tail, which are larger than the corresponding VaR level. The average of the VaRs is computed through the integral

$$
A V a R_{\in} (X) = \frac{1}{\epsilon} \int_{0}^{\epsilon} V a R_{p} (X) d p \tag {1}
$$ where  $VaR_{p}(X)$  is defined by  $VaR_{\epsilon}(X) = -\inf_{x}\{x|P(X\leq x)\geq \epsilon \} = -F_{X}^{-1}(\epsilon)$ . As a matter of fact, the AVaR is not well defined for all real-valued random variables but only for those with finite mean; that is  $AVaR_{\epsilon}(X) < \infty$  if  $E|X| < \infty$ . This should not be disturbing because random variables with infinite mathematical


![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/e73add02cbe70ddf4d048d43110d343a10d73d69aa04dcd911e23de14d9af91c.jpg) expectation have limited application in the field of finance. For example, if such a random variable is used for a model of stock returns, then it is assumed that the common stock has infinite expected return, which is not realistic.
Figure 2 Geometrically,  $AVaR_{\epsilon}(X)$  is the height for which the area of the drawn rectangle equals the shaded area closed between the graph of the inverse c.d.f. and the horizontal axis for  $t \in [0,\epsilon]$ . The  $VaR_{\epsilon}(X)$  value is shown by a dash-dotted line.


The AVaR satisfies all the axioms of coherent risk measures. One consequence is that, unlike VaR, it is convex for all possible portfolios, which means that it always accounts for the diversification effect.

A geometric interpretation of the definition in equation (1) is provided in Figure 2. In this figure, the inverse c.d.f. of a random variable  $X$  is plotted. The shaded area is closed between the graph of  $F_{X}^{-1}(t)$  and the horizontal axis for  $t \in [0, \epsilon]$  where  $\epsilon$  denotes the selected tail probability.  $AVaR_{\epsilon}(X)$  is the value for which the area of the drawn rectangle, equal to  $\epsilon \times AVaR_{\epsilon}(X)$ , coincides with the shaded area, which is computed by the integral in equation (1). The  $VaR_{\epsilon}(X)$  value is always smaller than  $AVaR_{\epsilon}(X)$ . In Figure 2,  $VaR_{\epsilon}(X)$  is shown by a dash-dotted line and is indicated by an arrow.

Let us revisit the example developed at the beginning of this section. We concluded that even though the VaRs at  $5\%$  tail probability of both random variables are equal,  $X$  is riskier than  $Y$  because the left tail of  $X$  is heavier than the left tail of  $Y$ ; that is, the distribution of  $X$  is more likely to produce larger losses than the distribution of  $Y$  on condition that the losses are beyond the VaR at the  $5\%$  tail probability. We apply the geometric interpretation illustrated in Figure 2 to this example. First, notice that the shaded area in Figure 2, which concerns the graph of the inverse of the c.d.f., can also be identified through the graph of the c.d.f. This is done in Figure 3, which shows a magnified section of the left tails of the c.d.f.s plotted in Figure 1. The shaded area appears as the intersection of the area closed below the graph of the distribution function and the horizontal axis, and the area below a horizontal line shifted at the tail probability above the horizontal axis. In Figure 3, we show the area for  $F_{X}(x)$  at  $5\%$  tail probability. The corresponding area for  $F_{Y}(x)$  is smaller because  $F_{Y}(x) \leq F_{X}(x)$  to the left of the crossing point of the two c.d.f.s, which is exactly at  $5\%$  tail probability.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/944d7f66d87e5fd398227358fc1dc27ea0e33917726c6dcc669738151de5751c.jpg)
Figure 3 The AVaRs of the Return Distributions from Figure 1 in Line with the Geometric Intuition Note: Even though the  $95\%$  VaRs are equal, the AVaRs at  $5\%$  tail probability differ,  $AVaR_{0.05}(X) > AVaR_{0.05}(Y)$ .


In line with the geometric interpretation, the  $AVaR_{0.05}(X)$  is a number such that if we draw a rectangle with height 0.05 and width equal to  $AVaR_{0.05}(X)$ , the area of the rectangle  $(0.05 \times AVaR_{0.05}(X))$  equals the shaded area in Figure 3. The same exercise for  $AVaR_{0.05}(Y)$  shows that  $AVaR_{0.05}(Y) < AVaR_{0.05}(X)$  because the corresponding shaded area is smaller and both rectangles share a common height of 0.05.


Besides the definition in equation (1), AVaR can be represented through a minimization formula,

$$
A V a R_{\epsilon} (X) = \min_{\theta \in \mathbb {R}} \left(\theta + \frac{1}{\epsilon} E (- X - \theta)_{+}\right) \tag {2}
$$ where  $(x)_{+}$  denotes the maximum between  $x$  and zero,  $(x)_{+} = \max (x,0)$  and  $X$  describes the portfolio return distribution. It turns out that this formula has an important application in optimal portfolio problems based on AVaR as a risk measure. In the appendix to this entry, we provide an illuminating geometric interpretation of equation (2), which shows the connection to the definition of AVaR.


How can we compute the AVaR for a given return distribution? Throughout this section, we assume that the return distribution function is a continuous function, that is, there are no point masses. Under this condition, after some algebra and using the fact that VaR is the negative of a certain quantile, we obtain that the AVaR can be represented in terms of a conditional expectation,

$$
\begin{array}{l} A V a R_{\epsilon} (X) = - \frac{1}{\epsilon} \int_{0}^{\epsilon} F_{X}^{- 1} (t) d t \\ = - E (X \mid X <   - V a R_{\epsilon} (X)) \tag {3} \\ \end{array}
$$ which is called expected tail loss (ETL) and is denoted by  $ETL_{\epsilon}(X)$ . The conditional expectation implies that the AVaR equals the average loss provided that the loss is larger than the VaR level. In fact, the average of VaRs in equation (1) equals the average of losses in equation (3) only if the c.d.f. of  $X$  is continuous at  $x = VaR_{\epsilon}(X)$ . If there is a discontinuity, or a point mass, the relationship is more involved. The general formula is given in the appendix to this entry.


Equation (3) implies that AVaR is related to the conditional loss distribution. In fact, under certain conditions, it is the mathematical expectation of the conditional loss distribution, which represents only one characteristic of it. In the appendix to this entry, we introduce several sets of characteristics of the conditional loss distribution, which provide a more complete picture of it. Also, in the appendix, we introduce the more general concept of higher-order AVaR.

For some continuous distributions, it is possible to calculate explicitly the AVaR through equation (3). We provide the closed-form expressions for the normal distribution and Student's  $t$  distribution. In the appendix to this entry, we give a semi-explicit formula for the class of stable distributions.

# 1. The normal distribution

Suppose that  $X$  is distributed according to a normal distribution with standard deviation  $\sigma_X$  and mathematical expectation  $EX$ . The AVaR of  $X$  at tail probability  $\epsilon$  equals

$$
A V a R_{\epsilon} (X) = \frac{\sigma_{X}}{\epsilon \sqrt{2 \pi}} \exp \left(- \frac{(V a R_{\epsilon} (Y))^{2}}{2}\right) - E X \tag {4}
$$ where  $Y$  has the standard normal distribution,  $Y\in N(0,1)$


# 2. The Student's t distribution

Suppose that  $X$  has Student's  $t$  distribution with  $\nu$  degrees of freedom,  $X\in t(\nu)$ . The AVaR of  $X$  at tail probability  $\epsilon$  equals

$$
\begin{array}{l} A V a R_{e} (X) = \\ \left\{ \begin{array}{l l} \frac{\Gamma \left(\frac{\nu + 1}{2}\right)}{\Gamma \left(\frac{\nu}{2}\right)} \frac{\sqrt{\nu}}{(\nu - 1) \epsilon \sqrt{\pi}} \left(1 + \frac{(V a R_{\epsilon} (X))^{2}}{\nu}\right)^{\frac{1 - \nu}{2}}, \nu > 1 \\ \infty & , \nu = 1 \end{array} \right. \\ \end{array}
$$ where the notation  $\Gamma (x)$  stands for the gamma function. It is not surprising that for  $\nu = 1$  the AVaR explodes because the Student's  $t$  distribution with one degree of freedom, also known as the Cauchy distribution, has infinite mathematical expectation.5


Note that equation (4) can be represented in a more compact way,

$$
A V a R_{\epsilon} (X) = \sigma_{X} C_{\epsilon} - E X \tag {5}
$$ where  $C_{\epsilon}$  is a constant which depends only on the tail probability  $\epsilon$ . Therefore, the AVaR of the normal distribution has the same structure as the normal VaR—the difference between the properly scaled standard deviation and the mathematical expectation. In effect, similar to the normal VaR, the normal AVaR properties are dictated by the standard deviation. Even though AVaR is focused on the extreme losses only, due to the limitations of the normal assumption, it is symmetric.


Exactly the same conclusion holds for the AVaR of Student's  $t$  distribution. The true merits of AVaR become apparent if the underlying distributional model is skewed.

# AVaR ESTIMATION FROM A SAMPLE

Suppose that we have a sample of observed portfolio returns and we are not aware of their distribution. Provided that we do not impose any distributional model, the AVaR of portfolio return can be estimated from the sample of observed portfolio returns. Denote the observed portfolio returns by  $r_1, r_2, \ldots, r_n$  at time instants  $t_1, t_2, \ldots, t_n$ . The numbers in the sample are given in order of observation. Denote the sorted sample by  $r_{(1)} \leq r_{(2)} \leq \ldots \leq r_{(n)}$ . Thus,  $r_{(1)}$  equals the smallest observed portfolio return and  $r_{(n)}$  is the largest. The AVaR of portfolio returns at tail probability  $\epsilon$  is estimated according to the formula

$$
\widehat {A V a R_{\epsilon}} (r) = - \frac{1}{\epsilon} \left(\frac{1}{n} \sum_{k = 1}^{\lceil n \epsilon \rceil - 1} r_{(k)} + \left(\epsilon - \frac{\lceil n \epsilon \rceil - 1}{n}\right) r_{(\lceil n \epsilon \rceil)}\right) \tag {6}
$$ where the notation  $\lceil x\rceil$  stands for the smallest integer larger than  $x$ . The "hat" above AVaR denotes that the number calculated by equation (6) is an estimate of the true value because it is


based on a sample. This is a standard notation in statistics.

We demonstrate how equation (6) is applied in the following example. Suppose that the sorted sample of portfolio returns is  $-1.37\%$ ,  $-0.98\%$ ,  $-0.38\%$ ,  $-0.26\%$ ,  $0.19\%$ ,  $0.31\%$ ,  $1.91\%$  and our goal is to calculate the portfolio AVaR at  $30\%$  tail probability. In this case, the sample contains 7 observations and  $(n\epsilon) = (7 \times 0.3) = 3$ . According to equation (6), we calculate

$$
\begin{array}{l} \widehat{AVaR_{0.3}} (r) = -\frac{1}{0.3}\bigg(\frac{1}{7} (-1.37\% -0.98\%) \\ \left. + (0.3 - 2 / 7) (- 0.38 \%) \right) \\ = 1.137\% \\ \end{array}
$$

Formula (6) can be applied not only to a sample of empirical observations. We may want to work with a statistical model for which no closed-form expressions for AVaR are known. Then we can simply sample from the distribution and apply formula (6) to the generated simulations.

Besides formula (6), there is another method for calculation of AVaR. It is based on the minimization formula (2) in which we replace the mathematical expectation by the sample average,

$$
\widehat {A V a R_{\epsilon}} (r) = \min_{\theta \in \mathbb {R}} \left(\theta + \frac{1}{n \epsilon} \sum_{i = 1}^{n} \max  (- r_{i} - \theta , 0)\right) \tag {7}
$$

Even though it is not obvious, equations (6) and (7) are completely equivalent.

The minimization formula in equation (7) is appealing because it can be calculated through the methods of linear programming. It can be restated as a linear optimization problem by introducing auxiliary variables  $d_{1},\ldots ,d_{n}$ , one for each observation in the sample,

$$
\min_{\theta , d} \quad \theta + \frac{1}{n \epsilon} \sum_{k = 1}^{n} d_{k}
$$ subject to  $-r_k - \theta \leq d_k, \quad k = 1, n$ $d_{k} \geq 0, k = 1, n$  (8)


$$
\theta \in \mathbb {R}
$$

The linear problem (8) is obtained from (7) through standard methods in mathematical programming. We briefly demonstrate the equivalence between them. Let us fix the value of  $\theta$  to  $\theta^{*}$ . Then the following choice of the auxiliary variables yields the minimum in (8). If  $-r_{k} - \theta^{*} < 0$ , then  $d_{k} = 0$ . Conversely, if it turns out that  $-r_{k} - \theta^{*} \geq 0$ , then  $-r_{k} - \theta^{*} = d_{k}$ . In this way, the sum in the objective function becomes equal to the sum of maxima in equation (7).

Applying (8) to the sample in the example above, we obtain the optimization problem subject to  $0.98\% - \theta \leq d_{1}$


$$
\begin{array}{l} \min_{\theta , d} \quad \theta + \frac{1}{7 \times 0 . 3} \sum_{k = 1}^{7} d_{k} \\ -0.31\% -\theta \leq d_{2} \\ -1.91\% -\theta \leq d_{3} \\ 1.37 \% - \theta \leq d_{4} \\ 0.38\% - \theta \leq d_{5} \\ 0.26 \% - \theta \leq d_{6} \\ -0.19\% -\theta \leq d_{7} \\ d_{k} \geq 0, \quad k = 1, 7 \\ \theta \in \mathbb {R} \\ \end{array}
$$

The solution to this optimization problem is the number  $1.137\%$ , which is attained for  $\theta = 0.38\%$ . In fact, this value of  $\theta$  coincides with the VaR at  $30\%$  tail probability and this is not by chance but a feature of the problem, which is demonstrated in the appendix to this entry. We verify that the solution of the problem is indeed the number  $1.137\%$  by calculating the objective in equation (7) for  $\theta = 0.38\%$ ,

$$
\begin{array}{l} A V a R_{\epsilon} (r) = 0.38 \% + \frac{0.98 \% - 0.38 \% + 1.37 \% - 0.38 \%}{7 \times 0.3} \\ = 1.137 \% \\ \end{array}
$$

Thus, we obtain the number calculated through equation (6).

# COMPUTING PORTFOLIO AVaR IN PRACTICE

The ideas behind the approaches of VaR estimation are applied to AVaR. We assume that there are  $n$  assets with random returns described by the random variables  $X_{1},\ldots ,X_{n}$ . Thus, the portfolio return is represented by


$$ r_{p} = w_{1} X_{1} + \ldots + w_{n} X_{n}
$$ where  $w_{1},\ldots ,w_{n}$  are the weights of the assets in the portfolio.


# The Multivariate Normal Assumption

If the asset returns are assumed to have a multivariate normal distribution, then the portfolio return has a normal distribution with variance  $w^{\prime}\Sigma w$ , where  $w$  is the vector of weights and  $\Sigma$  is the covariance matrix between stock returns. The mean of the normal distribution is

$$
E r_{p} = \sum_{k = 1}^{n} w_{k} E X_{k}
$$ where  $E$  stands for the mathematical expectation. Thus, under this assumption the AVaR of portfolio return at tail probability  $\epsilon$  can be expressed in closed-form through equation (4),


$$
\begin{array}{l} A V a R_{\epsilon} \left(r_{p}\right) = \frac{\sqrt{w^{\prime} \Sigma w}}{\epsilon \sqrt{2 \pi}} \exp \left(- \frac{\left(V a R_{\epsilon} (Y)\right)^{2}}{2}\right) - E r_{p} \\ = C_{\epsilon} \sqrt{w^{\prime} \Sigma w} - E r_{p} \tag {9} \\ \end{array}
$$ where  $C_{\epsilon}$  is a constant independent of the portfolio composition and can be calculated in advance. In effect, due to the limitations of the multivariate normal assumption, the portfolio AVaR appears symmetric and is representable as the difference between the properly scaled standard deviation of the random portfolio return and portfolio expected return.


# The Historical Method

The historical method is not related to any distributional assumptions. We use the historically observed portfolio returns as a model for the future returns and apply formula (6) or (7).

The historical method has several drawbacks. It is very inaccurate for low tail probabilities, for example,  $1\%$  or  $5\%$ . Even with one year of daily returns, which amounts to 250 observations, in order to estimate the AVaR at  $1\%$  probability, we have to use the 3 smallest observations, which is quite insufficient. What makes the estimation problem even worse is that these observations are in the tail of the distribution; that is, they are the smallest ones in the sample. The implication is that when the sample changes, the estimated AVaR may change a lot because the smallest observations tend to fluctuate a lot.


# The Hybrid Method

According to the hybrid method, different weights are assigned to the observations by which the more recent observations get a higher weight. The rationale is that the observations far back in the past have less impact on the portfolio risk at the present time.

The hybrid method can be adapted for AVaR estimation. The weights assigned to the observations are interpreted as probabilities and, thus, the portfolio AVaR can be estimated from the resulting discrete distribution according to the formula

$$
\begin{array}{l} \widehat {A V a R_{\epsilon}} (r) \\ = - \frac{1}{\epsilon} \left(\sum_{j = 1}^{k_{\epsilon}} p_{j} r_{(j)} + \left(\epsilon - \sum_{j = 1}^{k_{\epsilon}} p_{j}\right) r_{\left(k_{\epsilon + 1}\right)}\right) \tag {10} \\ \end{array}
$$ where  $r_{(1)}\leq r_{(2)}\leq \ldots \leq r_{(k_m)}$  denotes the sorted sample of portfolio returns or payoffs and  $p_1,$ $p_2,\dots ,p_{k_m}$  stand for the probabilities of the sorted observations; that is,  $p_1$  is the probability of  $r_{(1)}$  . The number  $k_{\epsilon}$  in equation (10) is an integer satisfying the inequalities


$$
\sum_{j = 1}^{k_{\epsilon}} p_{j} \leq \epsilon <   \sum_{j = 1}^{k_{\epsilon + 1}} p_{j}
$$

Equation (10) follows directly from the definition of  $\mathrm{AVaR^8}$  under the assumption that the underlying distribution is discrete without the additional simplification that the outcomes are equally probable. In the appendix to this entry, we demonstrate the connection between equation (10) and the definition of AVaR in equation (1).


# The Monte Carlo Method

The Monte Carlo method assumes and estimates a multivariate statistical model for the asset return distribution. Then we sample from it, and we calculate scenarios for portfolio return. On the basis of these scenarios, we estimate portfolio AVaR using equation (6) in which  $r_1, \ldots, r_n$  stands for the vector of generated scenarios.

Similar to the case of VaR, an artifact of the Monte Carlo method is the variability of the risk estimate. Since the estimate of portfolio AVaR is obtained from a generated sample of scenarios, by regenerating the sample, we will obtain a slightly different value.

Suppose that the portfolio daily return distribution is the standard normal law,  $r_p \in N(0,1)$ . By the closed-form expression in equation (4), we calculate that the AVaR of the portfolio at  $1\%$  tail probability equals

$$
\begin{array}{l} A V a R_{0. 0 1} (r_{p}) = \frac{1}{0 . 0 1 \sqrt{2 \pi}} \exp \left(- \frac{2 . 3 2 6^{2}}{2}\right) \\ = 2. 6 6 5 \\ \end{array}
$$

In order to investigate how the fluctuations of the  $99\%$  AVaR change about the theoretical value, we generate samples of different sizes: 500, 1,000, 5,000, 10,000, 20,000, and 100,000 scenarios. The  $99\%$  AVaR is computed from these samples using equation 6 and the numbers are stored. We repeat the experiment 100 times. In the end, we have 100 AVaR numbers for each sample size. We expect that as the sample size increases, the AVaR values will fluctuate less about the theoretical value which is  $AVaR_{0.01}(X) = 2.665$ ,  $X \in N(0,1)$ .

Panel A of Table 1 contains the result of the experiment. From the 100 AVaR numbers, we calculate the  $95\%$  confidence interval reported in the third column. The confidence intervals

Table 1 Confidence Intervals Calculated for AVaR and VaR

<table><tr><td>Number of Scenarios</td><td>AVaR at 99\%</td><td>95\% Confidence Interval</td></tr><tr><td>500</td><td>2.646</td><td>[2.2060, 2.9663]</td></tr><tr><td>1,000</td><td>2.771</td><td>[2.3810, 2.9644]</td></tr><tr><td>5,000</td><td>2.737</td><td>[2.5266, 2.7868]</td></tr><tr><td>10,000</td><td>2.740</td><td>[2.5698, 2.7651]</td></tr><tr><td>20,000</td><td>2.659</td><td>[2.5955, 2.7365]</td></tr><tr><td>50,000</td><td>2.678</td><td>[2.6208, 2.7116]</td></tr><tr><td>100,000</td><td>2.669</td><td>[2.6365, 2.6872]</td></tr></table>

Panel A: The  $99\%$  AVaR of the standard normal distribution computed from a sample of scenarios. The  $95\%$  confidence interval is calculated from 100 repetitions of the experiment. The true value is  $AVaR_{0.01}(X) = 2.665\$ .

<table><tr><td>Number of Scenarios</td><td>99\% VaR</td><td>95\% Confidence Interval</td></tr><tr><td>500</td><td>2.067</td><td>[1.7515, 2.3825]</td></tr><tr><td>1,000</td><td>2.406</td><td>[2.1455, 2.6665]</td></tr><tr><td>5,000</td><td>2.286</td><td>[2.1875, 2.3845]</td></tr><tr><td>10,000</td><td>2.297</td><td>[2.2261, 2.3682]</td></tr><tr><td>20,000</td><td>2.282</td><td>[2.2305, 2.3335]</td></tr><tr><td>50,000</td><td>2.342</td><td>[2.3085, 2.3755]</td></tr><tr><td>100,000</td><td>2.314</td><td>[2.2925, 2.3355]</td></tr></table>

Panel B: The  $99\%$  VaR of the standard normal distribution computed from a sample of scenarios. The  $95\%$  confidence interval is calculated from 100 repetitions of the experiment. The true value is  $VaR_{0.01}(X) = 2.326$ .

cover the theoretical value 2.665 and also we notice that the length of the confidence interval decreases as the sample size increases. This effect is illustrated in Figure 4 with boxplot diagrams. A sample of 100,000 scenarios results in AVaR numbers, which are tightly packed around the true value while a sample of only 500 scenarios may give a very inaccurate estimate.

By comparing, Panel A of Table 1 to Panel B of the table, which shows the results for VaR, we notice that the length of the  $95\%$  confidence intervals for AVaR are larger than the corresponding confidence intervals for VaR. This result is not surprising. Given that both quantities are at the same tail probability of  $1\%$ , the AVaR has larger variability than the VaR for a fixed number of scenarios because the AVaR is the average of terms fluctuating more than the  $1\%$

Figure 4 Boxplot Diagrams of the Fluctuation of the AVaR at  $1\%$  Tail Probability of the Standard Normal Distribution Based on Scenarios
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/452ad3c312fb5b6697ce876e01077f857d47125417197fa8c5b20e2d2e175b6a.jpg)
Note: The horizontal axis shows the number of scenarios and the boxplots are computed from 100 independent samples.

VaR. This effect is more pronounced the more heavy-tailed the distribution is.

# BACK-TESTING OF AVaR

Suppose that we have selected a method for calculating the daily AVaR of a portfolio. A reasonable question is how we can verify if the estimates of daily AVaR are realistic. This is done by back-testing. In the case of VaR back-testing consists of computing the portfolio VaR for each day back in time using the information available up to that day only. In this way, we have the VaR numbers back in time as if we had used exactly the same methodology in the past. On the basis of the VaR numbers and the realized portfolio returns, we can use statistical methods to assess whether the forecasted loss at the VaR tail probability is consistent with the observed losses. If there are too many observed losses larger than the forecasted VaR, then the model is too optimistic. Conversely, if there are too few losses larger than the forecasted VaR, then the model is too pessimistic.

Note that in the case of VaR back-testing, we are simply counting the cases in which there is an exceedance; that is, when the size of the observed loss is larger than the predicted VaR. The magnitude of the exceedance is immaterial for the statistical test.

Unlike VaR, back-testing of AVaR is not straightforward and is a much more challenging task. By definition, the AVaR at tail probability  $\epsilon$  is the average of VaRs larger than the VaR at tail probability  $\epsilon$ . Thus, the most direct approach to test AVaR would be to perform VaR back-tests at all tail probabilities smaller than  $\epsilon$ . If all these VaRs are correctly modeled, then so is the corresponding AVaR.

One general issue with this approach is that it is impossible to perform in practice. Suppose that we consider the AVaR at tail probability of  $1\%$ , for example. Back-testing VaRs deeper in the tail of the distribution can be infeasible because the back-testing time window is too short. The lower the tail probability, the larger the time window we need in order for the VaR test to be conclusive. Another general issue is that this approach is too demanding. Even if the VaR back-testing fails at some tail probability  $\epsilon_{1}$  below  $\epsilon$ , this does not necessarily mean that the AVaR is incorrectly modeled because the test failure may be due to purely statistical reasons and not to incorrect modeling.

These arguments illustrate why AVaR back-testing is a difficult problem—we need the information about the entire tail of the return distribution describing the losses larger than the VaR at tail probability  $\epsilon$  and there may be too few observations from the tail upon which to base the analysis. For example, in one business year, there are typically 250 trading days. Therefore, a one-year back-testing results in 250 daily portfolio returns, which means that if  $\epsilon = 1\%$ , then there are only 2 observations available from the losses larger than the VaR at  $1\%$  tail probability.

As a result, in order to be able to back-test AVaR, we can assume a certain "structure" of the tail of the return distribution that would compensate for the lack of observations. There are two general approaches:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/c6ceaa5c7ad02ab8426a1b600f558e579e87962a71d3eefe5fcb6077bc391e07.jpg)
Figure 5 Examples of Risk-Aversion Functions Note: The right plot shows the risk-aversion function yielding the AVaR at tail probability  $\epsilon$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/274ed540203601f2d33ce12850bd8b716f0204a4fc6e38493ed74cdf55a08aa6.jpg)


1. Use the tails of the Lévy stable distributions as a proxy for the tail of the loss distribution and take advantage of the practical semi-analytic formula for the AVaR given in the appendix to this entry to construct a statistical test.
2. Make the weaker assumption that the loss distribution belongs to the domain of attraction of a max-stable distribution. Thus, the behavior of the large losses can be approximately described by the limit max-stable distribution and a statistical test can be based on it.

The rationale of the first approach is that, generally, the Lévy stable distribution provides a good fit to the stock returns data and, thus, the stable tail may turn out to be a reasonable approximation. Moreover, from the generalized central limit theorem we know that stable distributions have domains of attraction, which makes them an appealing candidate for an approximate model.

The second approach is based on a weaker assumption. The family of max-stable distributions arises as the limit distribution of properly scaled and centered maxima of IID random variables. If the random variable describes portfolio losses, then the limit max-stable distribution can be used as a model for the large losses (i.e., the ones in the tail). Unfortunately, as a result of the weaker assumption, estimators of poor quality have to be used to estimate the parameters of the limit max-stable distribution, such as the Hill estimator, for example. This represents the basic trade-off in this approach.

# TECHNICAL APPENDIX

In this appendix, we start with a more general view that better describes the conditional loss distribution in terms of certain characteristics in which AVaR appears as a special case. We continue with the notion of higher-order AVaR, generating a family of coherent risk measures. Next, we provide an intuitive geometric interpretation of the minimization formula for the AVaR calculation. We also provide a semi-analytic expression for the AVaR of stable distributions and compare the expected tail loss measure to AVaR. Finally, we comment on the proper choice of a risk-aversion function in spectral risk measures, which does not result in an infinite risk measure.

# Characteristics of Conditional Loss Distributions

In the entry, we defined AVaR as a risk measure and showed how it can be calculated in practice. While it is an intuitive and easy to use coherent risk measure, AVaR represents the average of the losses larger than the VaR at tail probability  $\epsilon$ , which is only one characteristic of the distribution of extreme losses. We remarked that if the distribution function is continuous, then AVaR coincides with ETL, which is the mathematical expectation of the condi tional loss distribution. Besides the mathematical expectation, there are other important characteristics of the conditional loss distribution. For example, AVaR does not provide any information about how dispersed the conditional losses are around the AVaR value. In this section, we state a couple of families of useful characteristics in which AVaR appears as one example.


Consider the following tail moment of order  $n$  at tail probability  $\epsilon$ ,

$$ m_{\epsilon}^{n} (X) = \frac{1}{\epsilon} \int_{0}^{\epsilon} \left(F_{X}^{- 1} (t)\right)^{n} d t \tag {A.1}
$$ where  $n = 1,2,\ldots ,F_X^{-1}(t)$  is the inverse c.d.f. of the random variable  $X$ . If the distribution function of  $X$  is continuous, then the tail moment of order  $n$  can be represented through the following conditional expectation


$$ m_{\epsilon}^{n} (X) = E \left(X^{n} \mid X <   \operatorname{Va R}_{\epsilon} (X)\right) \tag {A.2}
$$ where  $n = 1,2,\ldots$  In the general case, if the c.d.f. has a jump at  $VaR_{\epsilon}(X)$ , a link exists between the conditional expectation and equation (A.1), which is similar to formula (A.12) later in this appendix for AVaR. In fact, AVaR appears as the negative of the tail moment of order one,  $AVaR_{\epsilon}(X) = -m_{\epsilon}^{1}(X)$ .


The higher-order tail moments provide additional information about the conditional distribution of the extreme losses. We can make a parallel with the way the moments of a random variable are used to describe certain properties of it. In our case, it is the conditional distribution that we are interested in.

In addition to the moments  $m_{\epsilon}^{n}(X)$ , we introduce the central tail moments of order  $n$  at tail probability  $\epsilon$ ,

$$
M_{\epsilon}^{n} (X) = \frac{1}{\epsilon} \int_{0}^{\epsilon} \left(F_{X}^{- 1} (t) - m_{\epsilon}^{1} (X)\right)^{n} d t \tag {A.3}
$$ where  $m_{\epsilon}^{1}(X)$  is the tail moment of order one. If the distribution function is continuous, then the central moments can be expressed in terms of the conditional expectation


$$
M_{\epsilon}^{n} (X) = E ((X - m_{\epsilon}^{1} (X))^{n} | X <   V a R_{\epsilon} (X))
$$

The tail variance of the conditional distribution appears as  $M_{\epsilon}^{2}(X)$  and the tail standard deviation equals

$$
(M_{\epsilon}^{2} (X))^{1 / 2} = \left(\frac{1}{\epsilon} \int_{0}^{\epsilon} (F_{X}^{- 1} (t) - m_{\epsilon}^{1} (X))^{2} d t\right)^{1 / 2}
$$

There is a formula expressing the tail variance in terms of the tail moments introduced in (A.2),

$$
\begin{array}{l} M_{\epsilon}^{2} (X) = m_{\epsilon}^{2} (X) - (m_{\epsilon}^{1} (X))^{2} \\ = m_{\epsilon}^{2} (X) - (A V a R_{\epsilon} (X))^{2} \\ \end{array}
$$

This formula is similar to the representation of variance in terms of the first two moments,

$$
\sigma_{X}^{2} = E X^{2} - (E X)^{2}
$$

The tail standard deviation can be used to describe the dispersion of conditional losses around AVaR as it satisfies the general properties of dispersion measures. It can be viewed as complementary to AVaR in the sense that if there are two portfolios with equal AVaRs of their return distributions but different tail standard deviations, the portfolio with the smaller standard deviation is preferable.

Another central tail moment that can be interpreted is  $M_{\epsilon}^{3}(X)$ . After proper normalization, it can be employed to measure the skewness of the conditional loss distribution. In fact, if the tail probability is sufficiently small, the tail skewness will be quite significant. In the same fashion, by normalizing the central tail moment of order 4, we obtain a measure of kurtosis of the conditional loss distribution.

In a similar way, we introduce the absolute central tail moments of order  $n$  at tail probability  $\epsilon$ ,

$$
\mu_{\epsilon}^{n} (X) = \frac{1}{\epsilon} \int_{0}^{\epsilon} | F_{X}^{- 1} (t) - m_{\epsilon}^{1} (X) |^{n} d t \quad (\mathrm{A}. 4)
$$

The tail moments  $\mu_{\epsilon}^{n}(X)$  raised to the power of  $1 / n$ ,  $(\mu_{\epsilon}^{n}(X))^{1 / n}$ , can be applied as measures of dispersion of the conditional loss distribution if the distribution is such that they are finite.

In the entry, we remarked that the tail of the random variable can be so heavy that AVaR becomes infinite. Even if it is theoretically finite, it can be hard to estimate because the heavy tail will result in the AVaR estimator having a large variability. Thus, under certain conditions it may turn out to be practical to employ a robust estimator instead. The median tail loss (MTL), defined as the median of the conditional loss distribution, is a robust alternative to AVaR. It has the advantage of always being finite no matter the tail behavior of the random variable. Formally, it is defined as


$$
M T L_{\epsilon} (X) = - F_{X}^{- 1} (1 / 2 | X <   - V a R_{\epsilon} (X)) \tag {A.5}
$$ where  $F_{X}^{-1}(p|X < -VaR_{\epsilon}(X))$  stands for the inverse distribution function of the c.d.f. of the conditional loss distribution


$$
\begin{array}{l} F_{X} (x \mid X <   - V a R_{\epsilon} (X)) \\ = P (X \leq x \mid X <   - V a R_{\epsilon} (X)) \\ = \left\{ \begin{array}{l} P (X \leq x) / \epsilon , x <   - V a R_{\epsilon} (X) \\ 1, \hskip 2 8. 4 5 2 7 5 6 p t x \geq - V a R_{\epsilon} (X) \end{array} \right. \\ \end{array}
$$

In effect, MTL, as well as any other quantile of the conditional loss distribution, can be directly calculated as a quantile of the distribution of  $X$ ,

$$
\begin{array}{l} M T L_{\epsilon} (X) = - F_{X}^{- 1} (\epsilon / 2) \\ = V a R_{\epsilon / 2} (X) \tag {A.6} \\ \end{array}
$$ where  $F_{X}^{-1}(p)$  is the inverse c.d.f. of  $X$  and  $\epsilon$  is the tail probability of the corresponding VaR in equation (A.5). Thus, MTL shares the properties of VaR. Equation (A.6) shows that MTL is not a coherent risk measure even though it is a robust alternative to AVaR, which is a coherent risk measure.


In the universe of the three families of moments that we introduced, AVaR is one special case providing only limited information. It may be the only coherent risk measure among them but the other moments can be employed in addition to AVaR in order to gain more insight into the conditional loss distribution. Furthermore, it could appear that other reasonable risk measures can be based on some of the moments. Thus, we believe that they all should be considered in financial applications.

# Higher-Order AVaR

By definition, AVaR is the average of VaRs larger than the VaR at tail probability  $\epsilon$ . In the same fashion, we can pose the question of what happens if we average all AVaRs larger than the AVaR at tail probability  $\epsilon$ . In fact, this quantity is an average of coherent risk measures and, therefore, is a coherent risk measure itself since it satisfies all defining properties of coherent risk measures. We call it AVaR of order one and denote it by  $AVaR_{\epsilon}^{(1)}(X)$  because it is a derived quantity from AVaR. In this section, we consider similar derived quantities from AVaR which we call higher-order AVaRs.

Formally, the AVaR of order one is represented in the following way

$$
A V a R_{\epsilon}^{(1)} = \frac{1}{\epsilon} \int_{0}^{\epsilon} A V a R_{p} (X) d p
$$ where  $AVaR_{p}(X)$  is the AVaR at tail probability  $p$ . Replacing AVaR by the definition given in equation (1), we obtain


$$
\begin{array}{l} A V a R_{\epsilon}^{(1)} = - \frac{1}{\epsilon} \int_{0}^{\epsilon} \left(\int_{0}^{1} F_{X}^{- 1} (y) g_{p} (y) d y\right) d p \\ = - \frac{1}{\epsilon} \int_{0}^{1} F_{X}^{- 1} (y) \left(\int_{0}^{\epsilon} g_{p} (y) d p\right) d y \\ \end{array}
$$ where


$$ g_{p} (y) = \left\{ \begin{array}{c} 1 / p, y \in [ 0, p ] \\ 0, y > p \end{array} \right.
$$ and after certain algebraic manipulations, we get the expression


$$
\begin{array}{l} A V a R_{\epsilon}^{(1)} (X) = - \frac{1}{\epsilon} \int_{0}^{\epsilon} F_{X}^{- 1} (y) \log \frac{\epsilon}{y} d y \\ = \int_{0}^{\epsilon} V a R_{y} (X) \phi_{\epsilon} (y) d y \tag {A.7} \\ \end{array}
$$

In effect, the AVaR of order one can be expressed as a weighted average of VaRs larger than the VaR at tail probability  $\epsilon$  with a weighting function  $\phi_{\epsilon}(y)$  equal to

$$
\phi_{\epsilon} (y) = \left\{ \begin{array}{l l} \frac{1}{\epsilon} \log \frac{\epsilon}{y}, & 0 \leq y \leq \epsilon \\ 0, & \epsilon <   y \leq 1 \end{array} \right.
$$

The AVaR of order one can be viewed as a spectral risk measure with  $\phi_{\epsilon}(y)$  being the risk aversion function.

Similarly, we define the higher-order AVaR through the recursive equation

$$
A V a R_{\epsilon}^{(n)} (X) = \frac{1}{\epsilon} \int_{0}^{\epsilon} A V a R_{p}^{(n - 1)} (X) d p \quad (A. 8)
$$ where  $AVaR_{p}^{(0)}(X) = AVaR_{p}(X)$  and  $n = 1,2\ldots$  Thus, the AVaR of order two equals the average of AVaRs of order one, which are larger than the AVaR of order one at tail probability  $\epsilon$ . The AVaR of order  $n$  appears as an average of AVaRs of order  $n - 1$ .


The quantity  $AVaR_{\epsilon}^{(n)}(X)$  is a coherent risk measure because it is an average of coherent risk measures. This is a consequence of the recursive definition in (A.8). It is possible to show that AVaR of order  $n$  admits the representation

$$
A V a R_{\epsilon}^{(n)} (X) = \frac{1}{\epsilon} \int_{0}^{\epsilon} V a R_{y} (X) \frac{1}{n !} \left(\log \frac{\epsilon}{y}\right)^{n} d y \tag {A.9}
$$ and  $AVaR_{\epsilon}^{(n)}(X)$  can be viewed as a spectral risk measure with a risk aversion function equal to


$$
\phi_{\epsilon}^{(n)} (y) = \left\{ \begin{array}{l l} \frac{1}{\epsilon n !} \left(\log \frac{\epsilon}{y}\right)^{n}, & 0 \leq y \leq \epsilon \\ 0, & \epsilon <   y \leq 1 \end{array} \right.
$$

As a simple consequence of the definition, the sequence of higher-order AVaRs is monotonic,

$$
\begin{array}{l} A V a R_{\epsilon} (X) \leq A V a R_{\epsilon}^{(1)} (X) \leq \dots \leq \\ A V a R_{\epsilon}^{(n)} (X) \leq \dots \\ \end{array}
$$

In the entry, we remarked that if the random variable  $X$  has a finite mean,  $E|X| < \infty$ , then AVaR is also finite. This is not true for spectral risk measures and the higher-order AVaR in particular. In line with the general theory developed later in this appendix,  $AVaR_{\epsilon}^{(n)}(X)$  is finite if all moments of  $X$  exist. For example, if the random variable  $X$  has an exponential tail, then  $AVaR_{\epsilon}^{(n)}(X) < \infty$  for any  $n < \infty$ .


# The Minimization Formula for AVaR

In this section, we provide a geometric interpretation of the minimization formula (2) for AVaR. We restate equation (2) in the following equivalent form,

$$
A V a R_{\epsilon} (X) = \frac{1}{\epsilon} \min_{\theta \in \mathbb {R}} (\epsilon \theta + E (- X - \theta)_{+}) \quad (A. 1 0)
$$ where  $(x)_{+} = \max (x,0)$ . Note the similarity between equation (A.10) and the definition of AVaR in (A.2). Instead of the integral of the quantile function in the definition of AVaR, a minimization formula appears in (A.10). We interpreted the integral of the inverse c.d.f. as the shaded area in Figure 2. Similarly, we will find the area corresponding to the objective function in the minimization formula and we will demonstrate that as  $\theta$  changes, there is a minimal area that coincides with the area corresponding to the shaded area in Figure 2. Moreover, the minimal area is attained for  $\theta = VaR_{\epsilon}(X)$  when the c.d.f. of  $X$  is continuous at  $VaR_{\epsilon}(X)$ . In fact, all illustrations in this section are based on the assumption that  $X$  has a continuous distribution function.


Consider first the expectation in equation (A.10). Assuming that  $X$  has a continuous c.d.f., we obtain an expression for the expectation involving the inverse c.d.f.,

$$
\begin{array}{l} E (- X - \theta)_{+} = \int_{\mathbb {R}} \max  (- x - \theta , 0) d F_{X} (x) \\ = \int_{0}^{1} \max  \left(- F_{X}^{- 1} (t) - \theta , 0\right) d t \\ = - \int_{0}^{1} \min  \left(F_{X}^{- 1} (t) + \theta , 0\right) d t \\ \end{array}
$$

This representation implies that the expectation  $E(-X - \theta)_+$  equals the area closed between the graph of the inverse c.d.f. and a line parallel to the horizontal axis passing through the point  $(0, -\theta)$ . This is the shaded area on the right plot in Figure A.1. The same area can be represented in terms of the c.d.f. This is done on the left plot in Figure A.1.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/54671d6e1401f7244a0c2f8e41fbfb159082fb8586424436be9c09f58e75d182.jpg)
Figure A.1 Note: The shaded area is equal to the expectation  $E(-X - \theta)_+$  in which  $X$  has a continuous distribution function.


Let us get back to equation (A.10). The tail probability  $\epsilon$  is fixed. The product  $\epsilon \times \theta$  equals the area of a rectangle with sides equal to  $\epsilon$  and  $\theta$ . This area is added to  $E(-X - \theta)_+$ . Figure A.2 shows the two areas together. The shaded areas on the top and the bottom plots equal  $\epsilon \times AVaR_{\epsilon}(X)$ . The top plot shows the case in which  $-\theta < -VaR_{\epsilon}(X)$ . Comparing the plot to Figure A.1, we find out that adding the marked area to the shaded area we obtain the total area corresponding to the objective in the minimization formula,  $\epsilon \theta + E(-X - \theta)_+$ . If  $-\theta > -VaR_{\epsilon}(X)$ , then we obtain a similar case shown on the bottom plot. Again, adding the marked area to the shaded area we obtain the total area computed by the objective in the minimization formula. By varying  $\theta$ , the total area changes but it always remains larger than the shaded area unless  $\theta = VaR_{\epsilon}(X)$ .

Thus, when  $\theta = VaR_{\epsilon}(X)$  the minimum area is attained, which equals exactly  $\epsilon \times AVaR_{\epsilon}(X)$ . According to equation (A.10), we have to divide the minimal area by  $\epsilon$  in order to obtain the AVaR. As a result, we have demonstrated that the minimization formula in equation (2) calculates the AVaR.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/a43d3e9889c496cb86943d89893b7959f3ae773f1d4509e742cb2f751d8dbdbf.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/9351aa7c56478c9415045061cd3af4f47b5cd4767e20c6a38e7540547c71b9dd.jpg)
Figure A.2 Note: The marked area is in addition to the shaded one. The marked area is equal to zero if  $\theta = VaR_{\epsilon}(X)$

# AVaR for Stable Distributions

Working with the class of stable distributions in practice is difficult because there are no closed-form expressions for their densities and distribution functions. Thus, practical work relies on numerical methods.

Stoyanov et al. (2006) give an account of the approaches to estimating AVaR of stable distributions. It turns out that there is a formula that is not exactly a closed-form expression, such as the ones for the normal and Student's  $t$  AVaR stated in the entry, but is suit able for numerical work. It involves numerical integration but the integrand is nicely behaved and the integration range is a bounded interval. Numerical integration can be performed by standard toolboxes in many software packages, such as MATLAB, for example. Moreover, there are libraries freely available on the Internet. Therefore, numerical integration itself is not a severe restriction for applying a formula in practice. Since the formula involves numerical integration, we call it a semi-analytic expression.


Suppose that the random variable  $X$  has a stable distribution with tail exponent  $\alpha$ , skewness parameter  $\beta$ , scale parameter  $\sigma$ , and location parameter  $\mu$ ,  $X \in S_{\alpha}(\sigma, \beta, \mu)$ . If  $\alpha \leq 1$ , then  $AVaR_{\epsilon}(X) = \infty$ . The reason is that stable distributions with  $\alpha \leq 1$  have infinite mathematical expectation and the AVaR is unbounded.

If  $\alpha > 1$  and  $VaR_{\epsilon}(X) \neq 0$ , then the AVaR can be represented as

$$
A V a R_{\epsilon} (X) = \sigma A_{\epsilon , \alpha , \beta} - \mu
$$ where the term  $A_{\epsilon ,\alpha ,\beta}$  does not depend on the scale and the location parameters. In fact, this representation is a consequence of the positive homogeneity and the invariance property of AVaR. Concerning the term  $A_{\epsilon ,\alpha ,\beta}$ ,


$$
\begin{array}{l} A_{\epsilon , \alpha , \beta} = \frac{\alpha}{1 - \alpha} \frac{| V a R_{\epsilon} (X) |}{\pi \epsilon} \\ \int_{- \bar {\theta}_{0}}^{\pi / 2} g (\theta) \exp \left(- | V a R_{\epsilon} (X) |^{\frac{\alpha}{\alpha - 1}} v (\theta)\right) d \theta \\ \end{array}
$$ where


$$ g (\theta) = \frac{\sin (\alpha (\bar {\theta}_{0} + \theta) - 2 \theta)}{\sin \alpha (\bar {\theta}_{0} + \theta)} - \frac{\alpha \cos^{2} \theta}{\sin^{2} \alpha (\bar {\theta}_{0} + \theta)},
$$

$$
\begin{array}{l} v (\theta) = \left(\cos \alpha \bar {\theta}_{0}\right)^{\frac{1}{\alpha - 1}} \left(\frac{\cos \theta}{\sin \alpha (\bar {\theta}_{0} + \theta)}\right)^{\frac{\alpha}{\alpha - 1}} \\ \frac{\cos (\alpha \bar {\theta}_{0} + (\alpha - 1) \theta)}{\cos \theta}, \\ \end{array}
$$ in which  $\bar{\theta}_0 = \frac{1}{\alpha}$  arctan  $(\bar{\beta}\tan \frac{\pi\alpha}{2})$ $\bar{\beta} = -\mathrm{sign}(VaR_{\epsilon}(X))\beta$  , and  $V a R_{\epsilon}(X)$  is the VaR of the stable distribution at tail probability  $\epsilon$


If  $VaR_{\epsilon}(X) = 0$ , then the AVaR admits a very simple expression,

$$
A V a R_{\epsilon} (X) = \frac{2 \Gamma \left(\frac{\alpha - 1}{\alpha}\right)}{(\pi - 2 \theta_{0})} \frac{\cos \theta_{0}}{(\cos \alpha \theta_{0})^{1 / \alpha}}
$$ in which  $\Gamma (x)$  is the gamma function and  $\theta_0 = \frac{1}{\alpha}\arctan (\beta \tan \frac{\pi\alpha}{2})$


# ETL vs. AVaR

The expected tail loss and the average value-at-risk are two related concepts. In the entry, we remarked that ETL and AVaR coincide if the portfolio return distribution is continuous at the corresponding VaR level. However, if there is a discontinuity, or a point mass, then the two notions diverge. Still, the AVaR can be expressed through the ETL and the VaR at the same tail probability. In this section, we illustrate this relationship and show why the AVaR is more appealing. Moreover, it will throw light on why equation (6) should be used when considering a sample of observations.

The ETL at tail probability  $\epsilon$  is defined as the average loss provided that the loss exceeds the VaR at tail probability  $\epsilon$ ,

$$
E T L_{\epsilon} (X) = - E (X \mid X <   - V a R_{\epsilon} (X)) \tag {A.11}
$$

As a consequence of the definition, the ETL can be expressed in terms of the c.d.f. and the inverse c.d.f. Suppose additionally, that the c.d.f. of  $X$  has a jump at  $-VaR_{\epsilon}(X)$ . In this case, the loss  $VaR_{\epsilon}(X)$  occurs with probability equal to the size of the jump and, because of the strict inequality in (A.11), it will not be included in the average.

Figure A.3 shows the graphs of the c.d.f. and the inverse c.d.f. of a random variable with a point mass at  $-VaR_{\epsilon}(X)$ . If  $\epsilon$  splits the jump of the c.d.f. as on the left plot in Figure A.3, then the ETL at tail probability  $\epsilon$  equals

$$
\begin{array}{l} E T L_{\epsilon} (X) = - E (X \mid X <   - V a R_{\epsilon} (X)) \\ = - E (X \mid X <   - V a R_{\epsilon_{0}} (X)) \\ = E T L_{\epsilon_{0}} (X) \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/7ff94da998941cbd7185657474f419e5faacefc6f7bf57fbc67413890b88a0d1.jpg)
Figure A.3 The C.D.F. and the Inverse C.D.F. of a Random Variable  $X$  with a Point Mass at  $-VaR_{\epsilon}(X)$  Note: The tail probability e splits the jump of the c.d.f.

In terms of the inverse c.d.f., the quantity  $ETL_{\epsilon 0}(X)$  can be represented as

$$
E T L_{\epsilon_{0}} (X) = - \frac{1}{\epsilon_{0}} \int_{0}^{\epsilon_{0}} F_{X}^{- 1} (t) d t
$$

The relationship between AVaR and ETL follows directly from the definition of AVaR. Suppose that the c.d.f. of the random variable  $X$  is as on the left plot in Figure A.3. Then,

$$
\begin{array}{l} A V a R_{\epsilon} (X) = - \frac{1}{\epsilon} \int_{0}^{\epsilon} F_{X}^{- 1} (t) d t \\ = - \frac{1}{\epsilon} \left(\int_{0}^{\epsilon_{0}} F_{X}^{- 1} (t) d t + \int_{\epsilon_{0}}^{\epsilon} F_{X}^{- 1} (t) d t\right) \\ = - \frac{1}{\epsilon} \int_{0}^{\epsilon_{0}} F_{X}^{- 1} (t) d t + \frac{\epsilon - \epsilon_{0}}{\epsilon} V a R_{\epsilon} (X) \\ \end{array}
$$ where the last inequality holds because the inverse c.d.f. is flat in the interval  $[\epsilon_0,\epsilon ]$  and the integral is merely the surface of the rectangle shown on the right plot in Figure A.3. The integral in the first summand can be related to the ETL at tail probability  $\epsilon$  and, finally, we arrive at the expression


$$
A V a R_{\epsilon} (X) = \frac{\epsilon_{0}}{\epsilon} E T L_{\epsilon} (X) + \frac{\epsilon - \epsilon_{0}}{\epsilon} V a R_{\epsilon} (X) \tag {A.12}
$$

Equation (A.12) shows that  $AVaR_{\epsilon}(X)$  can be represented as a weighted average between the ETL and the VaR at the same tail probability as the coefficients in front of the two summands are positive and sum up to one. In the special case in which there is no jump, or if  $\epsilon = \epsilon_1$ , then AVaR equals ETL.

Why is equation (A.12) important if in all statistical models we assume that the random variables describing return or payoff distribution have densities? Under this assumption, not only are the corresponding c.d.f.s continuous but they are also smooth. Equation (A.12) is important because if the estimate of AVaR is based on the Monte Carlo method, then we use a sample of scenarios that approximate the nicely behaved hypothesized distribution. Even though we are approximating a smooth distribution function, the sample c.d.f. of the scenarios is completely discrete, with jumps at the scenarios the size of which equals the  $1/n$ , where  $n$  stands for the number of scenarios.

In fact, equation (6) given in the entry is actually equation (A.12) restated for a discrete random variable. The outcomes are the available scenarios, which are equally probable. Consider a sample of observations or scenarios  $r_1,\ldots ,r_n$  and denote by  $r_{(1)}\leq r_{(2)}\leq \dots \leq r_{(n)}$  the ordered sample. The natural estimator of the ETL at tail probability  $\epsilon$  is

$$
\widehat {E T L}_{\epsilon} (r) = - \frac{1}{\lceil n \epsilon \rceil - 1} \sum_{k = 1}^{\lceil n \epsilon \rceil - 1} r (k) \tag {A.13}
$$ where  $\lceil x\rceil$  is the smallest integer larger than  $x$ . Formula (A.13) means that we average  $\lceil n\epsilon \rceil - 1$  of the  $\lceil n\epsilon \rceil$  smallest observations, which is, in fact, the definition of the conditional expectation in (A.11) for a discrete distribution. The VaR at tail probability  $\epsilon$  is equal to the negative of the empirical quantile,


$$
\widehat {V a R}_{\epsilon} (r) = - r_{(\lceil n \epsilon \rceil)} \tag {A.14}
$$

It remains to determine the coefficients in (A.12). Having in mind that the observations in the sample are equally probable, we calculate that


$$
\epsilon_{0} = \frac{\lceil n \epsilon \rceil - 1}{n}
$$

Plugging  $\epsilon_0$ , (A.14), and (A.13) into equation (A.12), we obtain (6), which is the sample AVaR.

Similarly, equation (10) also arises from (A.12). The assumption is that the underlying random variable has a discrete distribution but the outcomes are not equally probable. Thus, the corresponding equation for the average loss on condition that the loss is larger than the VaR at tail probability  $\epsilon$  is given by

$$
\widehat {E T L}_{\epsilon} (r) = - \frac{1}{\epsilon_{0}} \sum_{j = 1}^{k_{\epsilon}} p_{j} r_{(j)} \tag {A.15}
$$ where  $\epsilon_0 = \sum_{j=1}^{k_\epsilon} p_j$  and  $k_\epsilon$  is the integer satisfying the inequalities


$$
\sum_{j = 1}^{k_{\epsilon}} p_{j} \leq \epsilon <   \sum_{j = 1}^{k_{\epsilon} + 1} p_{j}
$$

The sum  $\sum_{j=1}^{k_{\epsilon}} p_j$  stands for the cumulative probability of the losses larger than the VaR at tail probability  $\epsilon$ . Note that equation (A.15) turns into equation (A.13) when the outcomes are equally probable. With these remarks, we have demonstrated the connection between equations (6), (10), and (A.12).

The differences between ETL and AVaR are not without any practical importance. In fact, ETL is not a coherent risk measure. Furthermore, the sample ETL in (A.13) is not a smooth function of the tail probability while the sample AVaR is smooth. This is illustrated in Figure A.4. The top plot shows the graph of the sample ETL and AVaR with the tail probability varying between  $1\%$  and  $10\%$ . The sample contains 100 independent observations on a standard normal distribution,  $X \in N(0,1)$ . The bottom plot shows the same but the sample is larger. It contains 250 independent observations on a standard normal distribution.

Both plots demonstrate that the sample ETL is a step function of the tail probability while the AVaR is a smooth function of it. This is not surprising because, as  $\epsilon$  increases, new observations appear in the sum in (A.13) producing the jumps in the graph of the sample ETL. In contrast, the AVaR changes gradually as it is a weighted average of the ETL and the VaR at the same tail probability. Note that, as the sample size increases, the jumps in the graph of the sample ETL diminish. In a sample of 5,000 scenarios, both quantities almost overlap. This is because the standard normal distribu

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/01376a4849aa854481884dc2f7eb31745ff94fc037be842a9e942d5b41f3692e.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/a782a23cc8b76fa2ea7750e503e18cee20091e70f1fb95e18298a9859c004b33.jpg)
Figure A.4 The Graphs of the Sample ETL and AVaR with Tail Probability Varying between  $1\%$  and  $10\%$

Note: The top plot is produced from a sample of 100 observations and the bottom plot from a sample of 250 observations. In both cases,  $X \in N(0,1)$ .


tion has a smooth c.d.f. and the sample c.d.f. constructed from a larger sample better approximates the theoretical c.d.f. In this case, as the sample size approaches infinity, the AVaR becomes indistinguishable from the ETL at the same tail probability.[10]

# KEY POINTS

- Although the value-at-risk (VaR) measure is a popular risk measure in the financial industry, it has a number of deficiencies. It is not a coherent risk measure because it does not satisfy the subadditivity property requirement of a coherent risk measure.
- In contrast to VaR, the average value-at-risk measure (AVaR)—also referred to as conditional value-at-risk and expected shortfall—is a coherent risk measure and has other advantages that result in its greater acceptance in risk modeling.
- There are convenient ways for computing and estimating AVaR that allow its application in optimal portfolio problems.
- A more general family of coherent risk measures is the spectral risk measure. The AVaR is a spectral risk measure with a specific risk-aversion function and is important for the proper selection of the risk-aversion function to avoid explosion of the risk measure.
- There is connection between the theory of probability metrics and risk measures. Basically, by choosing an appropriate probability metric one can guarantee that if two portfolio return distributions are close to each other, their risk profiles are also similar.

# NOTES

1. In fact,  $X = 0.05\sqrt{3} Z + 0.03$  where  $Z$  has Student's  $t$  distribution with 4 degrees of freedom and  $Y$  has a normal distribution with standard deviation equal to 0.1 and mathematical expectation equal to 0.01. The coefficient of  $Z$  is chosen so that the standard deviation of  $X$  is also equal to 0.1.

2. By comparing the c.d.f.s, we notice that the c.d.f. of  $X$  is "above" the c.d.f. of  $Y$  to the left of the crossing point,  $F_{X}(x) \geq F_{Y}(x), x \leq -0.15$ .
3. This term is adopted in Rockafellar and Uryasev (2002).
4. Equation (2) was first studied by Pflug (2000). A proof that equation (1) is indeed the AVaR can be found in Rockafellar and Uryasev (2002).
5. As we remarked,  $AVaR_{\epsilon}(X)$  can be infinite only if the mathematical expectation of  $X$  is infinite. Nevertheless, if this turns out to be an issue, one can use instead of AVaR the median of the loss distribution provided that the loss is larger than  $VaR_{\epsilon}(X)$  as a robust version of AVaR. The median of the conditional loss is always finite and, therefore, the issue disappears but at the cost of violating the coherence axioms. The appendix to this entry provides more details.
6. This formula is a simple consequence of the definition of AVaR for discrete distributions; see the appendix to this entry. A detailed derivation is provided by Rockafellar and Uryasev (2002).
7. For example,  $\lceil 3.1\rceil = \lceil 3.8\rceil = 4$
8. A formal proof can be found in Rockafellar and Uryasev (2002). The reasoning in Rockafellar and Uryasev (2002) is based on the assumption that the random variable describes losses while in equation (10), the random variable describes the portfolio return or payoff.

9. Formal derivation of this relationship can be found, for example, in Rockafellar and Uryasev (2002).
10. In fact, this is a consequence of the celebrated Glivenko-Cantelli theorem claiming that the sample c.d.f. converges almost surely to the true c.d.f.

# REFERENCES

Acerbi, C. (2004). Coherent representation of subjective risk aversion. Chapter 10 in G. Szego (ed.), Risk Measures for the 21st Century. Chichester, UK: Wiley, pp. 147-208.

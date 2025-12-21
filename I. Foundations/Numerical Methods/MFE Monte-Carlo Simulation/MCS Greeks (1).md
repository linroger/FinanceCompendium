---
title: Estimating the Greeks
parent_directory: MFE Monte-Carlo Simulation
formatted: 2025-12-21 11:15:00 AM
formatter_model: claude-sonnet-4-5-thinking
cli-tool: opencode
primary_tags:
- monte carlo methods
- unbiased estimators
- black scholes framework
- pathwise derivative
secondary_tags:
- finite differences
- likelihood ratio method
- option sensitivities
- derivative pricing
cssclasses: academia
---

# Estimating the Greeks

In these lecture notes we discuss the use of Monte-Carlo simulation for the estimation of sensitivities of expectations to various parameters. Such sensitivities are of interest in many domains including finance where they are typically refereed to as the Greeks. We will consider three different methods for estimating the Greeks of derivative securities. The first approach is based on finite difference approximations and results in biased estimators. The other two approaches, namely the pathwise and likelihood ratio methods result (when applicable) in unbiased estimators. All three approaches are often used in practice and Chapter 7 of Glasserman's "Monte Carlo Methods in Financial Engineering" (2004) should be consulted for further details. We follow Glasserman very closely in our discussion and all of our examples are drawn from that source with the exception of Example 1 which is in fact a queuing example.

## 1 Finite Difference Approximations

To begin, let  $\alpha(\theta) \coloneqq \operatorname{E}[Y(\theta)]$  be the price of a particular derivative security when the value of some parameter is  $\theta$ . Then  $\alpha'(\theta)$  is the derivative price's sensitivity to changes in the parameter  $\theta$ . For example, if  $Y$  is the discounted payoff of a standard European call option in the Black-Scholes framework and  $\theta = S_0$ , the initial underlying security price, then  $\alpha'(\theta)$  is the delta of the option and it can be calculated explicitly. In general, however, we will not have an explicit expression for  $\alpha'(\theta)$  and in such circumstances we might instead use Monte-Carlo methods to estimate it.

One approach to estimating  $\alpha'(\theta)$  is to use the forward-difference ratio

$$
\Delta_{F} := \frac{\alpha (\theta + h) - \alpha (\theta)}{h}
$$

for some small given  $h > 0$ . Of course we generally don't know  $\alpha(\theta + h)$  (or  $\alpha(\theta)$ ) but we can estimate each of them. In particular, we can simulate  $n$  samples of  $Y(\theta)$  and a further  $n$  samples of  $Y(\theta + h)$ , let  $\bar{Y}_n(\theta)$  and  $\bar{Y}_n(\theta + h)$  be their respective averages and then take

$$
\widehat {\Delta}_{F} := \frac{\bar {Y}_{n} (\theta + h) - \bar {Y}_{n} (\theta)}{h}
$$

as our estimator. If  $\alpha$  is twice differentiable at  $\theta$  then  $\alpha (\theta +h) = \alpha (\theta) + \alpha^{\prime}(\theta)h + \frac{1}{2}\alpha^{\prime \prime}(\theta)h^{2} + o(h^{2})$  and it follows that the bias of the estimator  $\widehat{\Delta}_F$  satisfies

$$
\operatorname{Bi as} \left(\widehat {\Delta}_{F}\right) := \mathrm{E} \left[ \widehat {\Delta}_{F} - \alpha^{\prime} (\theta) \right] = \frac{1}{2} \alpha^{\prime \prime} (\theta) h + o (h). \tag {1}
$$

We could instead, however, simulate at  $\theta - h$  and  $\theta + h$  and then use the central-difference estimator

$$
\widehat {\Delta}_{C} := \frac{\bar {Y}_{n} (\theta + h) - \bar {Y}_{n} (\theta - h)}{2 h} \tag {2}
$$

as our estimator of  $\alpha^{\prime}(\theta)$ . The same Taylor expansion argument then shows that the bias of  $\hat{\Delta}_C$  satisfies

$$
\operatorname{Bi as} \left(\widehat {\Delta}_{C}\right) := \operatorname{E} \left[ \widehat {\Delta}_{C} - \alpha^{\prime} (\theta) \right] = o (h)
$$

which is superior to the  $O(h)$  bias of  $\widehat{\Delta}_F$  in (1). While the central difference estimator requires a little extra work in practice because of the need<sup>1</sup> to estimate  $\alpha (\theta - h)$  in addition to  $\alpha (\theta + h)$, we prefer it to the forward-difference estimator on account of the superior convergence of its bias to zero.

## Variance of the Finite Difference Estimators

It is very reasonable to assume that the pairs  $(Y(\theta + h), Y(\theta - h))$  and  $(Y_i(\theta + h), Y_i(\theta - h))$  for  $i = 1, \ldots, n$  are IID. In that case it follows from (2) that

$$
\operatorname{Va r} \left(\widehat {\Delta}_{C}\right) = \frac{\operatorname{Va r} \left(Y (\theta + h) - Y (\theta - h)\right)}{4 n h^{2}} \tag {3}
$$

and so analyzing the variance of  $\widehat{\Delta}_C$  comes down to analyzing  $\operatorname{Var}\left(Y(\theta + h) - Y(\theta - h)\right)$ . There are three cases that typically arise:

$$
\operatorname{Va r} \left(Y (\theta + h) - Y (\theta - h)\right) = \left\{ \begin{array}{l l} O (1), & \text{Ca se (i)} \\ O (h), & \text{Ca se (ii)} \\ O \left(h^{2}\right), & \text{Ca se (ii i)}. \end{array} \right. \tag {4}
$$

Case (i) occurs if we simulate  $Y(\theta + h)$  and  $Y(\theta - h)$  independently for in that case we have

$$
\begin{array}{l} \operatorname{Va r} \left(Y (\theta + h) - Y (\theta - h)\right) = \operatorname{Va r} \left(Y (\theta + h)\right) + (Y (\theta - h)) \\ \rightarrow 2 \operatorname{Va r} (Y (\theta)) \\ \end{array}
$$

under the minor assumption that  $\operatorname{Var}(Y(\theta))$  is continuous in  $\theta$ . Case (ii) is the typical case when we simulate  $Y(\theta + h)$  and  $Y(\theta - h)$  using common random numbers, i.e. when we simulate  $Y(\theta + h)$  and  $Y(\theta - h)$  from the same sequence  $U_1, U_2, \ldots$  of uniform random numbers. In that event,  $Y(\theta + h)$  and  $Y(\theta - h)$  should be strongly correlated so that  $\operatorname{Var}\left(\widehat{\Delta}_C\right) = O(h^{-1})$  in (3).

In order for case (iii) to apply $^2$  we again need to use common random numbers with the additional condition that the output  $Y(\cdot)$  is continuous in  $\theta$  almost surely. This last condition is often not met which is why case (ii) is the typical case when common random numbers are used. We will return to case (iii) when we discuss the pathwise estimator of Section 2.3.

## Trading Off Bias and Variance

## 1.1 System Comparison and Common Random Numbers

### Example 1 (Comparing Two Queueing Systems)

Consider a queueing system where customers arrive according to a Poisson process,  $N(t)$ . The operator of the system needs to install a server to service the arrivals and he has a choice of two possible servers,  $M$  and  $N$ . In the event that  $M$  is chosen, let  $S_{i}^{m}$  denote the service time of the  $i^{th}$  customer, and let  $X^{m}$  denote the total time in the system of all the customers who arrive before time  $T$ . That is,

$$
X^{m} = \sum_{i = 1}^{N (T)} W_{i}^{m}
$$

where  $W_{i}^{m}$  is the total time in the system of the  $i^{th}$  customer. This implies  $W_{i}^{m} = S_{i}^{m} + Q_{i}^{m}$  where  $Q_{i}^{m}$  is the waiting time before being served for the  $i^{th}$  customer.  $S_{i}^{n}, X^{n}, W_{i}^{n}$  and  $Q_{i}^{n}$  are all defined in the same way for server  $N$ . The operator wants to estimate

$$
\theta = \operatorname{E} [ X^{m} ] - \operatorname{E} [ X^{n} ].
$$

Perhaps the obvious way to estimate  $\theta$  is to estimate  $\theta_{m} := \operatorname{E}[X^{m}]$  and  $\theta_{n} := \operatorname{E}[X^{n}]$  independently of one another, and then set  $\widehat{\theta} = \widehat{\theta}_{m} - \widehat{\theta}_{n}$ . The variance of  $\widehat{\theta}$  is then given by

$$
\operatorname{Va r} (\widehat {\theta}) = \operatorname{Va r} (\widehat {\theta}_{m}) + \operatorname{Va r} (\widehat {\theta}_{n}).
$$

But maybe we can do better by computing  $\widehat{\theta}_m$  and  $\widehat{\theta}_n$  in such a way that  $\widehat{\theta}_m$  and  $\widehat{\theta}_n$  are dependent. If this is the case, then

$$
\operatorname{Va r} (\widehat {\theta}) = \operatorname{Va r} (\widehat {\theta}_{m}) + \operatorname{Va r} (\widehat {\theta}_{n}) - 2 \operatorname{Co v} (\widehat {\theta}_{m}, \widehat {\theta}_{n}).
$$

So if we can arrange it that  $\mathrm{Cov}(\widehat{\theta}_m,\widehat{\theta}_n) > 0$ , then we can achieve a variance reduction. Sometimes we can achieve a significant variance reduction using common random numbers.

Let  $X_1^m, \ldots, X_r^m$  and  $X_1^n, \ldots, X_r^n$  be the sets of  $r$  samples that we use to estimate  $\operatorname{E}[X^m]$  and  $\operatorname{E}[X^n]$ , respectively. Now set

$$
Z_{i} := X_{i}^{m} - X_{i}^{n}, \qquad i = 1, \dots , r.
$$

If the  $Z_{i}$ 's are IID, then

$$
\widehat {\theta} = \frac{\sum_{i = 1}^{r} Z_{i}}{r}
$$

$$
\operatorname{Va r} (\widehat {\theta}) = \frac{\operatorname{Va r} (X_{i}^{m}) + \operatorname{Va r} (X_{i}^{n}) - 2 \operatorname{Co v} (X_{i}^{m} , X_{i}^{n})}{r}.
$$

So to reduce  $\operatorname{Var}(\widehat{\theta})$ , we would like to make  $\operatorname{Cov}(X_i^m, X_i^n)$  as large as possible. We can generally achieve this by using the common random numbers to generate  $X_i^m$  and  $X_i^n$ . In particular, we should use the same arrival sequences for each possible server. We can do more: while  $S_i^m$  and  $S_i^n$  will generally have different distributions we might still be able to arrange it so that  $S_i^m$  and  $S_i^n$  are positively correlated. For example, if they are generated using the inverse transform method, we should use the same  $U_i \sim U(0,1)$  to generate both  $S_i^m$  and  $S_i^n$ . Since the inverse of the CDF is monotonic, this means that  $S_i^m$  and  $S_i^n$  will in fact be positively correlated. By using common random numbers in this manner and synchronizing them correctly as we have described, it should be the case that  $X_i^m$  and  $X_i^n$  are strongly positively correlated. For example, if  $X_i^m$  is large, then that would suggest that there have been many arrivals in  $[0,T]$  and / or service times have been very long. But then the same should be true for the system when  $N$  is the server, implying that  $X_i^n$  should also be large.

This example clearly demonstrates the value of using common random numbers. While in general it cannot always be guaranteed to work, i.e. decrease the variance, it is often very effective, sometimes decreasing the variance by orders of magnitude. The philosophy of the method is that comparisons of the two systems should be made "under similar experimental conditions".

## 2 The Pathwise Method

### Example 2 (Estimating the Black-Scholes Delta)

Consider the case of a European call option with strike  $K$  and maturity  $T$  in the Black-Scholes framework. While an explicit expression for the option delta is available, we can also estimate it via the pathwise method as follows. We first write the option payoff as

$$
Y = e^{- r T} \left(S_{T} - K\right)^{+} \tag {6}
$$

$$
S_{T} = S_{0} e^{\left(r - \frac{\sigma^{2}}{2}\right) T + \sigma \sqrt{T} Z} \tag {7}
$$

where  $Z\sim \mathsf{N}(0,1)$  . It follows from (6) and (7) that

$$
\begin{array}{l} \frac{\partial Y}{\partial S_{0}} = \frac{\partial Y}{\partial S_{T}} \frac{\partial S_{T}}{\partial S_{0}} \\ = e^{- r T} 1_{\left\{S_{T} > K \right\}} \frac{S_{T}}{S_{0}}. \tag {8} \\ \end{array}
$$

The estimator (8) is easily calculated via a Monte-Carlo simulation. It should also be clear that the expression (8) is valid for any model of security prices where  $S_{t} = S_{0}e^{X_{t}}$  for any (risk-neutral) stochastic process  $X_{t}$  that does not depend on  $S_{0}$ .

Exercise 1 Show that the pathwise estimator for the vega of a call option in the Black-Scholes world is given by

$$
\begin{array}{l} \frac{\partial Y}{\partial \sigma} = e^{- r T} (- \sigma T + \sqrt{T} Z) S_{T} 1_{\{S_{T} > K \}} \\ = e^{- r T} \left(\frac{\log \left(S_{T} / S_{0}\right) - \left(r + \sigma^{2} / 2\right) T}{\sigma}\right) S_{T} 1_{\left\{S_{T} > K \right\}}. \tag {9} \\ \end{array}
$$

### Example 3 (Path-Dependent Deltas)

## 2.1 The Pathwise Method for SDEs

### Example 4 (Square-Root Diffusions)

Suppose  $X_{t}$  satisfies the SDE

$$
d X_{t} = \kappa (\beta - X_{t}) d t + \sigma \sqrt{X_{t}} d W_{t}.
$$

While we can't find an explicit expression for  $X_{t}$  it is well known that

$$
X_{t} \sim c_{1} \chi_{\nu}^{\prime 2} \left(c_{2} X_{0}\right)
$$

where  $c_{1}, c_{2}$  and  $\nu$  are known constants, and  $\chi_{\nu}^{\prime 2}(c_2X_0)$  is the non-central chi-squared distribution with  $\nu$  degrees of freedom and non-centrality parameter  $c_{2}X_{0}$ . As long as  $\nu > 1$  then  $X_{t}$  can be generated using the representation

$$
X_{t} = c_{1} \left(\left(Z + \sqrt{c_{2} X_{0}}\right)^{2} + \chi_{\nu - 1}^{2}\right) \tag {12}
$$

with  $Z \sim \mathsf{N}(0,1)$  and  $\chi_{\nu - 1}^2$  an ordinary chi-squared random variable with  $\nu - 1$  degrees of freedom and independent of  $Z$ . It follows that

$$
\frac{\partial X_{t}}{\partial X_{0}} = c_{1} c_{2} \left(1 + \frac{Z}{\sqrt{c_{2} X_{0}}}\right). \tag {13}
$$

More generally, if we need to simulate a path of  $X_{t}$  at the times  $t_1 < t_2 < \dots < t_n$  then we can use (13) (with 0 and  $t$  replaced by  $t_i$  and  $t_{i+1}$ , respectively) to obtain the recursion

$$
\begin{array}{l} \frac{\partial X_{t_{i + 1}}}{\partial X_{0}} = \frac{\partial X_{t_{i + 1}}}{\partial X_{t_{i}}} \frac{\partial X_{t_{i}}}{\partial X_{0}} \\ { = } { c_{ 1 , i } c_{ 2 , i } \left( 1 + \frac{ Z_{ i + 1 } } { \sqrt{ c_{ 1 , 2 } X_{ t_{ i } } } } \right) \frac{ \partial X_{ t_{ i } } } { \partial X_{ 0 } } } \\ \end{array}
$$

where  $Z_{i+1} \sim \mathsf{N}(0,1)$  is used to generate  $X_{t_{i+1}}$  from  $X_{t_i}$ . The constants  $c_{1,i}$  and  $c_{2,i}$  depend on the time increment  $t_{i+1} - t_i$ .

### Euler Schemes

## 2.2 Inapplicability of Pathwise Method for Digital and Barrier Options

### Example 5 (Digital options and gamma)

Consider a digital call option which has discounted payoff

$$
Y = e^{- r T} 1_{\{S_{T} > K \}} \tag {14}
$$

with  $S_T$  given by (7). Note that  $\frac{\partial Y}{\partial S_0} = 0$  everywhere except at  $S_T = K$  where the derivative does not exist. The pathwise derivative therefore exists and equals zero almost surely. We therefore have

$$
0 = \operatorname{E} \left[ \frac{\partial Y}{\partial S_{0}} \right] \neq \frac{\partial}{\partial S_{0}} \operatorname{E} [ Y ]
$$

so clearly the interchange of expectation and differentiation is not valid here. Intuitively, the reason for this is that the change in  $\operatorname{E}[Y]$  due to a change in  $S_0$  is due to the possibility that the change in  $S_0$  will cause  $S_T$  to cross (or not cross) the barrier  $K$ . But this change is not captured by the pathwise derivative which is zero almost surely.

For the same reason the Black-Scholes gamma cannot be estimated via the pathwise method because the "payoff" for the gamma is the delta of (8). In particular, the gamma for a European call option with  $Y$  as in (6) is given by

$$
\begin{array}{l} \frac{\partial^{2}}{\partial S_{0}^{2}} \mathrm{E} [ Y ] = \frac{\partial}{\partial S_{0}} \left(\frac{\partial}{\partial S_{0}} \mathrm{E} [ Y ]\right) \\ = \frac{\partial}{\partial S_{0}} \mathrm{E} \left[ \frac{\partial Y}{\partial S_{0}} \right] (15) \\ = \frac{\partial}{\partial S_{0}} \mathrm{E} \left[ e^{- r T} 1_{\{S_{T} > K \}} \frac{S_{T}}{S_{0}} \right]. (16) \\ \end{array}
$$

The interchange of the order of expectation and differentiation in (15) is justified (as we noted in Example 2) by our rule of thumb. However, for the reason outlined above in the case of the digital option, we cannot interchange the order of expectation and differentiation in (16) and therefore obtain an unbiased pathwise estimator for the gamma of the call option. This observation is also true for barrier options and so we can conclude that the pathwise method does not apply for such securities.

Note that the payoff  $Y$  in (14) (and inside the expectation in (16)) is not almost surely continuous in  $S_0$ . In fact for any  $Z \sim \mathsf{N}(0,1)$  in (7),  $Y$  will be discontinuous in  $S_0$  (albeit at just a single point) and so the rule of thumb justifying the interchange of expectation and differentiability will not hold. It's worth noting, however, that all is not lost as various smoothing tricks can be applied to smooth out the troublesome discontinuities; see Section 7.2.3 of Glasserman for further details and examples.

## 2.3 Justifying the Interchange of Expectation and Differentiation in (5)

## 3 The Likelihood Ratio Method

### Example 6 (Black-Scholes Delta)

The lognormal density of  $S_{T}$  is given by

$$
g (x) = \frac{1}{x \sigma \sqrt{T}} \phi (\zeta (x)), \quad \zeta (x) := \frac{\log (x / S_{0}) - (r - \sigma^{2} / 2) T}{\sigma \sqrt{T}}
$$

where  $\phi (\cdot)$  denotes the standard normal density. Taking  $\theta = S_0$  (for the delta) we see that the score is given by

$$
\frac{d g (x) / d S_{0}}{g (x)} = - \zeta (x) \frac{d \zeta (x)}{d S_{0}} = \frac{\log (x / S_{0}) - (r - \sigma^{2} / 2) T}{S_{0} \sigma^{2} T}.
$$

An unbiased estimator of the delta in then obtained by multiplying the score by the option payoff as in (21). If  $S_{T}$  is generated from  $S_{0}$  as in (7) with  $Z \sim \mathsf{N}(0,1)$  then  $\zeta(S_{T}) = Z$  and the estimator simplifies to

$$
\frac{\partial C}{\partial S_{0}} = \mathrm{E} \left[ e^{- r T} \left(S_{T} - K\right)^{+} \frac{Z}{S_{0} \sigma \sqrt{T}} \right] \tag {22}
$$

where  $C = \mathrm{E}_{\theta}[Y]$  denote the Black-Scholes call price. The expression inside the expectation in (22) is therefore our likelihood ratio estimator for the option delta.

Note that given the score  $Z / S_0 \sigma \sqrt{T}$  in Example 6 we can immediately compute the delta for other option payoffs as well. For example, the delta of a digital can be estimated using

$$
e^{- r T} 1_{\{S_{T} > K \}} \frac{Z}{S_{0} \sigma \sqrt{T}}.
$$

This is a particular advantage of the likelihood ratio method: once we have the score (which does not depend on the payoff) we immediately have estimators for other payoffs.

### Example 7 (Path-Dependent Delta)

### Example 8 (Path-Dependent Vega)

## 3.1 Bias, Absolute Continuity and Variance

As stated earlier, justifying the interchange of the order of differentiation and integration in (20) needs to be justified mathematically in order to guarantee that the LR estimator in (21) is unbiased. This is rarely an issue, however, since density functions are usually smooth functions of their parameters and such smoothness is generally sufficient to justify the interchange. Nonetheless, it is worth considering the issue as it will help shed some light on why the variance of LR estimators can be very large. Recall that the goal is to compute

$$
\begin{array}{l} \alpha^{\prime} (\theta) = \frac{\partial}{\partial \theta} \int_{\mathbb {R}^{m}} f (x) g_{\theta} (x) d x \\ = \lim_{h \rightarrow 0} \int_{\mathbb {R}^{m}} f (x) \left(\frac{g_{\theta + h} (x) - g_{\theta} (x)}{h}\right) d x \\ = \lim_{h \rightarrow 0} \int_{\mathbb {R}^{m}} f (x) \frac{1}{h} \left(\frac{g_{\theta + h} (x)}{g_{\theta} (x)} - 1\right) g_{\theta} (x) d x \\ = \lim_{h \rightarrow 0} \frac{1}{h} \left(\mathrm{E}_{\theta} \left[ f (X) \frac{g_{\theta + h} (X)}{g_{\theta} (X)} \right] - \mathrm{E}_{\theta} [ f (X) ]\right). \tag {25} \\ \end{array}
$$

Let's now fix  $h$  and consider the first expectation in (25). We recognize  $\mathrm{E}_{\theta}\left[f(X)\frac{g_{\theta + h}(X)}{g_{\theta}(X)}\right]$  as an importance sampling (IS) estimator of  $\mathrm{E}_{\theta +h}[f(X)]$  and we know from importance sampling that for this IS estimator to be unbiased we require an absolute continuity condition, namely that  $g_{\theta}(x) > 0$  at all points  $x$  for which  $g_{\theta +h}(x) > 0$ .

Glasserman provides a simple example where this absolute continuity condition fails. In particular, let

$$
g_{\theta} (x) := \frac{1}{\theta} 1_{\{0 <   x <   \theta \}}
$$

and note that it is differentiable in  $\theta$  for any fixed  $x\in (0,\theta)$ . This means the score exists w.p. 1 and equals  $-1 / \theta$ . But it can be easily checked that the LR estimator of the derivative of  $\operatorname{E}_{\theta}[X]$  is biased.

Exercise 3 Referring to the example immediately preceding this exercise, show that the expected value of the  $LR$  estimator is  $-1/2$  whereas the true sensitivity is  $+1/2$ .

In practice, the use of the likelihood ratio method tends to be limited by either not having  $g_{\theta}$  available explicitly as mentioned above or the absolute continuity requirement being "close" to not holding. In the latter event the variance of the LR estimator can be very large and in practice, this is often the problem that we actually encounter. We can see from (22), for example, that the variance of the LR estimator will be very high when  $T$  is close to 0 and in fact it will grow without bound as  $T \to 0$ . This can be a serious problem for the method more generally when the payoff of the derivative security depends on the underlying price at a range of times with small increments between them. Consider for example the score in (24) for the path-dependent vega. If we keep the time increments  $t_j - t_{j-1}$  fixed but increase  $m$  then the variance of the score will increase linearly in  $m$ . We could also, however, keep the maturity  $T$  fixed and increase  $m$  by shrinking the time increments  $t_j - t_{j-1}$ . In this case we see again that the variance of the score can increase without bound as  $m \to \infty$ .

Exercise 4 Can you see how an absolute continuity argument can help to explain why the variance of the scores in Example 6 and (24) grow without bound as  $T \to 0$  and  $m \to \infty$ , respectively?

Example 9 (Variance Comparison of Pathwise and LR estimators for Vega of an Asian option) Following Glasserman, we study the growth in the variance of the vega estimator of an Asian option as the number of averaging periods,  $m$ , varies. We estimate the variance of the pathwise and LR vega estimators given by (10) and (24) (multiplied by the discounted Asian payoff of course), respectively. The parameters we use are  $S_0 = K = 100$ ,  $\sigma = 0.3$ ,  $r = .04$  and equally spaced dates corresponding to 1 week, i.e.  $t_j - t_{j-1} = 1/52$  for all  $j$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/d88fcb20-48fc-4ad6-8e79-59bb2d81f220/f1165317367881812b883a6037028e63292f0e2775d00dfcb5ad70f2ab88ab31.jpg)  
(a) Variance per replication on log-scale

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/d88fcb20-48fc-4ad6-8e79-59bb2d81f220/f2aa4b345e6685d32391418b54c35247875b524a9842c02c1e4a25d7935d2bd1.jpg)  
(b) Estimated vega  
Figure 1: Pathwise versus likelihood ratio method for estimating the vega of an Asian call option. Quantities are plotted as a function of the number of weeks in the Asian average.

The results are displayed in Figure 1 and are based on 500k samples. In Figure 1(a) the estimated variances are plotted on a log-scale and we see that the pathwise estimator has a much lower variance than the LR estimator for all values of  $m$  with the discrepancy between the two increasing with  $m$ . In Figure 1(b), we plot the estimated vegas from each method and we can see clearly that the pathwise estimator is a much smoother function of  $m$  than the LR estimator. These results are consistent with our earlier observations.

## 3.2 Estimating Second Derivatives

## 4 Combining the Pathwise and Likelihood Ratio Methods

We can combine the pathwise and LR estimators in order to leverage the strengths of each approach. Consider for example the problem of estimating the delta of a digital call option with strike  $K$ . We know from Example 14 that the pathwise approach cannot be used directly here. Nonetheless we can proceed by writing the digital payoff as

$$
\begin{array}{l} 1_{\{x > K \}} = f_{\epsilon} (x) + \left(1_{\{x > K \}} - f_{\epsilon} (x)\right) \\ = f_{\epsilon} (x) + h_{\epsilon} (x) \\ \end{array}
$$

where

$$
f_{\epsilon} (x) := \min  \left\{1, \frac{\max  \left\{0 , x - K + \epsilon \right\}}{2 \epsilon} \right\}
$$

and  $h_{\epsilon}(x) \coloneqq 1_{\{x > K\}} - f_{\epsilon}(x)$ . Note that  $f_{\epsilon}(x)$  is piecewise linear approximation to the payoff function  $1_{\{x > K\}}$  and that  $h_{\epsilon}(x)$  corrects the approximation. We can apply the pathwise estimator to  $f_{\epsilon}(S_T)$  (since it's continuous almost surely in  $S_0$ ) and the LR estimator to  $h_{\epsilon}(S_T)$ . Assuming as before that  $S_t \sim \mathrm{GBM}(r, \sigma)$ , the resulting estimator is given by

$$
e^{- r t} \times \left[ \frac{1}{2 \epsilon} 1_{\{| S_{T} - K | <   \epsilon \}} \frac{S_{T}}{S_{0}} + h_{\epsilon} (S_{T}) \frac{\zeta (S_{T})}{S_{0} \sigma \sqrt{T}} \right]. \tag {27}
$$

Figure 2 plots the variance of the estimator in (27) as a function of  $\epsilon$  with our usual choice of parameters, i.e.  $S_0 = K = 100$ ,  $T = 0.25$ ,  $\sigma = 0.3$  and  $r = .05$ . It's not surprising to see the variance of the mixed estimator increase as  $\epsilon$  decreases given its appearance in the denominator of the first term in (27). It is interesting to see, however just how small a variance can be achieved by selecting  $\epsilon \approx 30$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/d88fcb20-48fc-4ad6-8e79-59bb2d81f220/862092eea044cee9e9d15ef070410a23dbaf629d2e2686e0c3dd9cf92834ca99.jpg)  
Figure 2: Variance (per replication) of combined pathwise and likelihood ratio estimators of the delta of a digital call as a function of  $\epsilon$
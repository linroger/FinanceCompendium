---
aliases:
- Output Analysis and Run-Length Control
tags: null
key_concepts: null
parent_directory: '[[MFE Monte-Carlo Simulation]]'
cssclasses: academia
title: Monte Carlo Output Analysis and Run-Length Control
linter-yaml-title-alias: Monte Carlo Output Analysis and Run-Length Control
primary_tags:
- large numbers
- output analysis
- bootstrap approximation
secondary_tags:
- approximate confidence intervals
- given confidence level
- approximate interval
- bootstrap samples
- bootstrap interval
- bootstrap method
tags_extracted: '2025-12-18T17:59:42.312007'
tags_method: max_quality_v1
---

# Output Analysis and Run-Length Control

In these notes we describe how the Central Limit Theorem can be used to construct approximate  $(1 - \alpha)\%$  confidence intervals for the quantity,  $\theta$ , we are trying to estimate. We also describe methods to estimate the number of samples that are required to achieve a given confidence level and we end with a discussion of the bootstrap method for performing output analysis.

## 1 Output Analysis

Recall the simulation framework that we use when we want to estimate  $\theta \coloneqq \mathbb{E}[h(\mathbf{X})]$  where  $\mathbf{X} \in \mathbb{R}^n$ . We first simulate  $\mathbf{X}_1, \ldots, \mathbf{X}_n$  IID and then set

$$
\widehat {\theta}_{n} = \frac{h (\mathbf {X}_{1}) + \ldots + h (\mathbf {X}_{n})}{n}
$$

The Strong Law of Large Numbers (SLLN) then implies

$$
\widehat {\theta}_{n} \rightarrow \theta \mathrm{as} n \rightarrow \infty \mathrm{w .p .} 1.
$$

But at this point we don't know how large  $n$  should be so that we can have confidence in  $\widehat{\theta}_n$  as an estimator of  $\theta$ . Put another way, for a fixed value of  $n$ , what can we say about the quality of  $\widehat{\theta}_n$ ? We will now answer this question and to simplify our notation we will take  $Y_i \coloneqq h(\mathbf{X}_i)$ .

### 1.1 Confidence Intervals

One way to answer this question is to use a confidence interval. Suppose then that we want to estimate  $\theta$  and we have a random vector  $\mathbf{Y} = (Y_1, \ldots, Y_n)$  whose distribution depends on  $\theta$ . Then we seek  $L(\mathbf{Y})$  and  $U(\mathbf{Y})$  such that

$$
\mathbf {P} (L (\mathbf {Y}) \leq \theta \leq U (\mathbf {Y})) = 1 - \alpha
$$

where  $0 \leq \alpha \leq 1$  is a pre-specified number. We then say that  $[L(\mathbf{Y}), U(\mathbf{Y})]$  is a  $100(1 - \alpha)\%$  confidence interval for  $\theta$ . Note that  $[L(\mathbf{Y}), U(\mathbf{Y})]$  is a random interval. However, once we replace  $\mathbf{Y}$  with a sample vector,  $\mathbf{y}$ , then  $[L(\mathbf{y}), U(\mathbf{y})]$  becomes a real interval. We now discuss the Chebyshev Inequality and the Central Limit Theorem, both of which can be used to construct confidence intervals.

#### The Chebyshev Inequality

Since the  $Y_{i}$ 's are assumed to be IID we know the variance of  $\widehat{\theta}_n$  is given by  $\operatorname{Var}(\widehat{\theta}_n) = \frac{\sigma^2}{n}$  where  $\sigma^2 \coloneqq \operatorname{Var}(Y)$ . Clearly a small value of  $\operatorname{Var}(\widehat{\theta}_n)$  implies a more accurate estimate of  $\theta$  and this is indeed confirmed by Chebyshev's Inequality which for any  $k > 0$  states that

$$
\mathbf {P} \left(\left| \widehat {\theta}_{n} - \theta \right| \geq k\right) \leq \frac{\operatorname{Va r} \left(\widehat {\theta}_{n}\right)}{k^{2}}. \tag {1}
$$

We can see from (1) that a smaller value of  $\operatorname{Var}(\widehat{\theta}_n)$  therefore improves our confidence in  $\widehat{\theta}_n$ . We could easily use Chebyshev's Inequality to construct (how?) confidence intervals for  $\theta$  but it is generally very conservative.

Exercise 1 Why does Chebyshev's Inequality generally lead to conservative confidence intervals?

Instead, we will use the Central Limit Theorem to obtain better estimates of  $\mathbf{P}\left(|\widehat{\theta}_n - \theta |\geq k\right)$  and as a result, narrower confidence intervals for  $\theta$

#### The Central Limit Theorem

The Central Limit Theorem is among the most important theorems in probability theory and we state it here for convenience with the symbol " $\xrightarrow{d}$ " denoting convergence in distribution.

#### Theorem 1 (Central Limit Theorem)

Suppose  $Y_{1},\ldots ,Y_{n}$  are IID and  $\mathbb{E}[Y_i^2 ] <   \infty$  . Then

$$
\frac{\widehat {\theta}_{n} - \theta}{\sigma / \sqrt{n}} \xrightarrow {d} N (0, 1) \quad a s \quad n \to \infty
$$

where  $\widehat{\theta}_n = \sum_{i=1}^n Y_i / n$ ,  $\theta := \mathbb{E}[Y_i]$  and  $\sigma^2 := \operatorname{Var}(Y_i)$ .

Note that we assume nothing about the distribution of the  $Y_{i}$ 's other than that  $\mathbb{E}[Y_i^2] < \infty$ . If  $n$  is sufficiently large in our simulations, then we can use the CLT to construct confidence intervals for  $\theta \coloneqq \mathbb{E}[Y]$ . We now describe how to do this.

### 1.2 An Approximate $100(1 - \alpha)\%$ Confidence Interval for $\theta$

Let  $z_{1 - \alpha /2}$  be the the  $(1 - \alpha /2)$  percentile point of the  $\mathsf{N}(0,1)$  distribution so that

$$
\mathbf {P} \left(- z_{1 - \alpha / 2} \leq Z \leq z_{1 - \alpha / 2}\right) = 1 - \alpha
$$

when  $Z \sim \mathsf{N}(0,1)$ . Suppose now that we have simulated IID samples,  $Y_{i}$ , for  $i = 1,\dots ,n$ , and that we want to construct a  $100(1 - \alpha)\%$  CI for  $\theta = \mathbb{E}[Y]$ . That is, we want  $L(\mathbf{Y})$  and  $U(\mathbf{Y})$  such that

$$
\mathbf {P} \left(L (\mathbf {Y}) \leq \theta \leq U (\mathbf {Y})\right) = 1 - \alpha .
$$

The CLT implies  $\sqrt{n}\left(\widehat{\theta}_n - \theta\right) / \sigma$  is approximately  $\mathsf{N}(0,1)$  for large  $n$  so we have

$$
\begin{array}{l} \mathbf {P} \left(- z_{1 - \alpha / 2} \leq \frac{\sqrt{n} (\widehat {\theta}_{n} - \theta)}{\sigma} \leq z_{1 - \alpha / 2}\right) \approx 1 - \alpha \\ \Rightarrow \mathbf {P} \left(- z_{1 - \alpha / 2} \frac{\sigma}{\sqrt{n}} \leq \widehat {\theta}_{n} - \theta \leq z_{1 - \alpha / 2} \frac{\sigma}{\sqrt{n}}\right) \approx 1 - \alpha \\ \Rightarrow \mathbf {P} \left(\widehat {\theta}_{n} - z_{1 - \alpha / 2} \frac{\sigma}{\sqrt{n}} \leq \theta \leq \widehat {\theta}_{n} + z_{1 - \alpha / 2} \frac{\sigma}{\sqrt{n}}\right) \approx 1 - \alpha . \\ \end{array}
$$

Our approximate  $100(1 - \alpha)\%$  CI for  $\theta$  is therefore given by

$$
[ L (\mathbf {Y}), U (\mathbf {Y}) ] = \left[ \widehat {\theta}_{n} - z_{1 - \alpha / 2} \frac{\sigma}{\sqrt{n}}, \widehat {\theta}_{n} + z_{1 - \alpha / 2} \frac{\sigma}{\sqrt{n}} \right]. \tag {2}
$$

Recall that  $\widehat{\theta}_n = (Y_1 + \ldots + Y_n) / n$ , so  $L$  and  $U$  are indeed functions of  $\mathbf{Y}$ . There is still a problem, however, as we do not usually know  $\sigma^2$ . We resolve this issue by estimating  $\sigma^2$  with

$$
\widehat {\sigma}_{n}^{2} = \frac{\sum_{i = 1}^{n} (Y_{i} - \widehat {\theta}_{n})^{2}}{n - 1}.
$$

It is easy to show that  $\widehat{\sigma}_n^2$  is an unbiased estimator of  $\sigma^2$  and that  $\widehat{\sigma}_n^2\to \sigma^2$  w.p. 1 as  $n\to \infty$ . So now we replace  $\sigma$  with  $\widehat{\sigma}_n$  in (2) to obtain

$$
[ L (\mathbf {Y}), U (\mathbf {Y}) ] = \left[ \widehat {\theta}_{n} - z_{1 - \alpha / 2} \frac{\widehat {\sigma}_{n}}{\sqrt{n}}, \quad \widehat {\theta}_{n} + z_{1 - \alpha / 2} \frac{\widehat {\sigma}_{n}}{\sqrt{n}} \right] \tag {3}
$$

as our approximate  $100(1 - \alpha)\%$  CI for  $\theta$  when  $n$  is large.

Remark 1 Note that when we obtain sample values of  $\mathbf{y} = (y_1, \ldots, y_n)$ , then  $[L(\mathbf{y}), U(\mathbf{y})]$  becomes a real interval. Then we can no longer say (why not?) that

$$
\mathbf {P} \left(\theta \in [ L (\mathbf {y}), U (\mathbf {y}) ]\right) = 1 - \alpha .
$$

Instead, we say that we are  $100(1 - \alpha)\%$  confident that  $[L(\mathbf{y}), U(\mathbf{y})]$  contains  $\theta$ . Furthermore, the smaller the value of  $U(\mathbf{y}) - L(\mathbf{y})$ , the more confidence we will have in our estimate of  $\theta$ .

#### Example 1 (Pricing a European Call Option)

Suppose we want to estimate the price,  $C_0$ , of a call option on a stock whose price process,  $S_t$ , is a  $GBM(\mu, \sigma)$ . The relevant parameters are  $r = .05$ ,  $T = 0.5$  years,  $S_0 = \\(100$ ,  $\sigma = 0.2$  and strike  $K = \$ 110 \). Then we know that

$$
C_{0} = \mathbb {E}_{0}^{Q} \left[ e^{- r T} \max  \left(S_{T} - K, 0\right) \right]
$$

where we can assume that  $S_{t} \sim GBM(r, \sigma)$  under the risk-neutral probability measure,  $Q$ . That is, we assume  $S_{T} = S_{0} \exp \left((r - \sigma^{2}/2)T + \sigma Z\right)$  where  $Z \sim \mathsf{N}(0,T)$ . Though we can of course compute  $C_{0}$  exactly, we can also estimate  $C_{0}$  using Monte Carlo with (3) yielding an approximate  $100(1 - \alpha)\%$  CI for  $C_{0}$  with  $Y_{i} := e^{-rT} \max(S_{T}^{(i)} - K, 0)$  denoting the  $i^{th}$  discounted sample payoff of the option. Based on  $n = 100k$  samples, we obtain [15.16, 15.32] as our approximate  $95\%$  CI for  $C_{0}$ .

#### Properties of the Confidence Interval

The width of the confidence interval is given by

$$
U - L = \frac{2 \widehat {\sigma}_{n} z_{1 - \alpha / 2}}{\sqrt{n}}
$$

and so the half-width then is  $(U - L) / 2$ . The width clearly depends on  $\alpha$ ,  $\widehat{\sigma}_n$  and  $n$ . However,  $\widehat{\sigma}_n \to \sigma$  almost surely as  $n \to \infty$ , and  $\sigma$  is a constant. Therefore, for a fixed  $\alpha$ , we need to increase  $n$  if we are to decrease the width of the confidence interval. Indeed, since  $U - L \propto \frac{1}{\sqrt{n}}$ , we can see for example that we would need to increase  $n$  by a factor of four in order to decrease the width of the confidence interval by only a factor of two.

## 2 Run-Length Control

Up to this point we have selected  $n$  in advance and then computed the approximate CI. The width of the CI is then a measure of the error in our estimator. Now we will do the reverse by first choosing some error criterion that we want our estimator to satisfy, and then choosing  $n$  so that this criterion is satisfied.

There are two types of error that we will consider:

1. Absolute error, which is given by  $E_{a} \coloneqq |\widehat{\theta}_{n} - \theta|$  and  
2. Relative error, which is given by  $E_r \coloneqq \left| \frac{\widehat{\theta}_n - \theta}{\theta} \right|$ .

Now we know that  $\widehat{\theta}_n\to \theta$  w.p. 1 as  $n\to \infty$  so that  $E_{a}$  and  $E_{r}$  both  $\rightarrow 0$  as  $n\rightarrow \infty$ . (If  $\theta = 0$  then  $E_{r}$  is not defined.) However, in practice  $n\neq \infty$  and so the errors will be non-zero. We specify the following error criterion:

Error Criterion: Given  $0 \leq \alpha \leq 1$  and  $\epsilon \geq 0$ , we want  $\mathbf{P}(E \leq \epsilon) = 1 - \alpha$ .  $E$  is the error type we have specified, i.e., relative or absolute.

The goal then is to choose  $n$  so that the error criterion is approximately satisfied and this is easily done. Suppose, for example, that we want to control absolute error,  $E_{a}$ . Then, as we saw earlier,

$$
\mathbf {P} \left(\widehat {\theta}_{n} - z_{1 - \alpha / 2} \frac{\sigma}{\sqrt{n}} \leq \theta \leq \widehat {\theta}_{n} + z_{1 - \alpha / 2} \frac{\sigma}{\sqrt{n}}\right) \approx 1 - \alpha .
$$

This then implies  $\mathbf{P}\left(|\widehat{\theta}_n - \theta |\leq z_{1 - \alpha /2}\frac{\sigma}{\sqrt{n}}\right)\approx 1 - \alpha$  so in terms of  $E_{a}$  we have

$$
\mathbf {P} \left(E_{a} \leq z_{1 - \alpha / 2} \frac{\sigma}{\sqrt{n}}\right) \approx 1 - \alpha .
$$

If we then want  $\mathbf{P}\left(E_{a} \leq \epsilon\right) \approx 1 - \alpha$ , it clearly suffices to choose  $n$  such that

$$
n = \frac{\sigma^{2} z_{1 - \alpha / 2}^{2}}{\epsilon^{2}}.
$$

If we are working with relative error, then a similar argument implies that  $\mathbf{P}\left(E_r\leq \epsilon\right)\approx 1 - \alpha$  if

$$
n = \frac{\sigma^{2} z_{1 - \alpha / 2}^{2}}{\theta^{2} \epsilon^{2}}.
$$

There are still some problems, however:

1. When we are controlling  $E_r$ , we need to know  $\sigma$  and  $\theta$  in advance.  
2. When we are controlling  $E_{a}$ , we need to know  $\sigma$  in advance.

Of course we do not usually know  $\sigma$  or  $\theta$  in advance. In fact,  $\theta$  is what we are trying to estimate! There are two methods we can use to overcome this problem: the two-stage method and the sequential method, both of which we will now describe.

### 2.1 The Two-Stage Procedure

Suppose we want to satisfy the condition  $\mathbf{P}(E_a\leq \epsilon) = 1 - \alpha$  so that we are trying to control the absolute error. Then we saw earlier that we would like to set

$$
n = \frac{\sigma^{2} z_{1 - \alpha / 2}^{2}}{\epsilon^{2}}.
$$

Unfortunately, we don't know  $\sigma^2$  but we can solve this problem by first doing a pilot simulation to estimate it. The idea is to do a small number,  $p$ , of initial runs to estimate  $\sigma^2$ . We then use our estimate,  $\widehat{\sigma}^2$ , to compute an estimate,  $\widehat{n}$ , of  $n$ . Finally, we repeat the simulation, but now we use  $\widehat{n}$  runs. We have the following algorithm.

Two-Stage Monte Carlo Simulation for Estimating  $\mathbb{E}[h(\mathbf{X})]$

```txt
/\*Do pilot simulation first \*/   
for  $i = 1$  to  $p$  generate  $\mathbf{X}^i$    
end for   
set  $\widehat{\theta} = \sum h(\mathbf{X}^i) / p$    
set  $\widehat{\sigma}^2 = \sum (h(\mathbf{X}^i) - \widehat{\theta})^2 /(p - 1)$    
set  $n = \frac{\widehat{\sigma}^2z_{1 - \alpha / 2}^2}{\epsilon^2}$    
/\*Now do main simulation \*/   
for  $i = 1$  to  $n$  generate  $\mathbf{X}^i$    
end for   
set  $\widehat{\theta}_n = \sum h(\mathbf{X}^i) / n$    
set  $\widehat{\sigma}_n^2 = \sum (h(\mathbf{X}^i) - \widehat{\theta}_n)^2 /(n - 1)$    
set  $100(1 - \alpha)\% \mathrm{Cl} = \left[\widehat{\theta}_n - z_{1 - \alpha /2}\frac{\widehat{\sigma}_n}{\sqrt{n}},\widehat{\theta}_n + z_{1 - \alpha /2}\frac{\widehat{\sigma}_n}{\sqrt{n}}\right]$
```

For this method to work, it is important that  $\widehat{\theta}$  and  $\widehat{\sigma}^2$  be sufficiently good estimates of  $\theta$  and  $\sigma^2$ . Therefore, it is important to make  $p$  sufficiently large. In practice, we usually take  $p \geq 50$ . We can use an analogous two-stage procedure if we want to control the relative error and have  $\mathbf{P}(E_r \leq \epsilon) = 1 - \alpha$ .

### 2.2 The Sequential Procedure

Suppose again that we wish to satisfy the condition  $\mathbf{P}(E_a\leq \epsilon) = 1 - \alpha$ . Then we saw earlier that we would like to set

$$
n = \frac{\sigma^{2} z_{1 - \alpha / 2}^{2}}{\epsilon^{2}}.
$$

In contrast to the pilot procedure, we do not precompute  $n$  during the sequential procedure. Instead, we continue to generate samples until

$$
\frac{\widehat {\sigma}_{n} z_{1 - \alpha / 2}}{\sqrt{n}} \leq \epsilon
$$

where  $\widehat{\sigma}_n$  is again the estimate of  $\sigma$  based upon the first  $n$  samples. It is important that  $n$  be sufficiently large so that  $\widehat{\theta}_n$  and  $\widehat{\sigma}_n^2$ , are sufficiently good estimates of  $\theta$  and  $\sigma^2$ , respectively. As a result, we typically insist that  $n \geq 50$  before we stop. Approximate confidence intervals are then computed as usual.

Question: Have we allowed any biases to creep in here?

We have the following algorithm:

Sequential Monte Carlo Simulation for Estimating  $\mathbb{E}[h(\mathbf{X})]$

set check  $= 0$ $n = 1$

while (check  $= 0$

generate  $\mathbf{X}^n$

set  $\widehat{\theta}_n = \sum h(\mathbf{X}^i) / n$

$\mathbf{set}\widehat{\sigma}_n^2 = \sum (h(\mathbf{X}^i) - \widehat{\theta}_n)^2 /(n - 1)$

if  $(n\geq p)$  and  $\left(\frac{\widehat{\sigma}_nz_{1 - \alpha / 2}}{\sqrt{n}}\leq \epsilon\right)$

check  $= 1$

else

$$
n = n + 1
$$

end if

end while

and with

In practice we do not need to store every value,  $h(\mathbf{X}^i)$  for  $i = 1, \dots, n$ , in order to update  $\widehat{\theta}_n$  and  $\widehat{\sigma}_n$ . Indeed, we can update  $\widehat{\theta}_n$  and  $\widehat{\sigma}_n$  efficiently by observing that

$\widehat{\theta}_n = \widehat{\theta}_{n - 1} + \frac{h(\mathbf{X}^n) - \widehat{\theta}_{n - 1}}{n}$  and

$$
\widehat {\sigma}_{n}^{2} = \left(\frac{n - 2}{n - 1}\right) \widehat {\sigma}_{n - 1}^{2} + n \left(\widehat {\theta}_{n} - \widehat {\theta}_{n - 1}\right)^{2}.
$$

If we want to control the relative error and have  $\mathbf{P}(E_r\leq \epsilon) = 1 - \alpha$  , then we would simulate samples until

$$
\frac{\widehat {\sigma}_{n} \left(z_{1 - \alpha / 2}\right)}{\widehat {\theta}_{n} \sqrt{n}} \leq \epsilon .
$$

## 3 Output Analysis Using the Bootstrap

We can view our output analysis problem as one of estimating

$$
\operatorname{MS E} (F) := \mathbb {E}_{F} \left[ \left(g \left(Y_{1}, \dots , Y_{n}\right) - \theta (F)\right)^{2} \right] \tag {4}
$$

where  $\theta(F) = \mathbb{E}_F[X]$ ,  $g(Y_1, \ldots, Y_n) \coloneqq \bar{Y}$  and  $F$  denotes the CDF of  $Y$ . In that case, we saw in Section 1 how we could use the CLT to construct approximate confidence intervals for  $\theta$ . While this is certainly the most common context in which we encounter (4), other situations arise where the CLT cannot be easily used to obtain a confidence interval for  $\theta(F)$ . For example, if  $\theta(F) = \operatorname{Var}(Y)$  or  $\theta(F) = \mathbb{E}[Y | Y \geq \alpha]$ , then an alternative method of constructing a confidence interval for  $\theta$  will be required. The bootstrap method provides such an alternative and in order to describe the method we will assume our problem is to estimate  $\operatorname{MSE}(F)$  as in (4).

To begin with, recall that the empirical distribution,  $F_{e}$ , is defined to be the CDF of the distribution that places a weight of  $1 / n$  on each of the simulated values  $Y_{1},\ldots ,Y_{n}$ . The empirical CDF therefore satisfies

$$
F_{e} (y) = \frac{\sum_{i = 1}^{n} 1_{\{Y_{i} \leq y \}}}{n}
$$

and for large  $n$  it can be shown (and should be intuitively clear) that  $F_{e}$  should be a good approximation to  $F$ . Therefore, as long as  $\theta$  is sufficiently well-behaved, i.e. a "continuous" function of  $F$ , then for sufficiently large  $n$  we should have

$$
\operatorname{MS E} (F) \approx \operatorname{MS E} \left(F_{e}\right) = \mathbb {E}_{F_{e}} \left[ \left(g \left(Y_{1}, \dots , Y_{n}\right) - \theta \left(F_{e}\right)\right)^{2} \right]. \tag {5}
$$

The quantity  $\mathrm{MSE}(F_e)$  is known as the bootstrap approximation to  $\mathrm{MSE}(F)$  and is easy to estimate via simulation as we shall see below. But first, however, we will consider an example where  $\mathrm{MSE}(F_e)$  can be computed exactly. Indeed the bootstrap is not required in this case but it is nonetheless instructive to see the calculations written out explicitly.

#### Example 2 (Applying the Bootstrap to the Sample Mean)

Suppose we wish to estimate  $\theta(F) = \mathbb{E}_F[Y]$  via the estimator  $\widehat{\theta} = g(Y_1, \ldots, Y_n) \coloneqq \bar{Y}$ . As noted above, the bootstrap is not necessary in this case as we can apply the CLT directly as in Section 1 to obtain confidence intervals for  $\widehat{\theta}$  or equivalently, we can estimate the mean-squared error  $\mathbb{E}\left[\left(\bar{Y} - \theta\right)^2\right] = \sigma^2 / n$  with

$$
\hat {\sigma}_{n}^{2} / n = \sum_{i = 1}^{n} (y_{i} - \bar {y})^{2} / (n (n - 1)).
$$

Letting  $\bar{y}$  denote the mean of the observed, i.e. simulated, data-points  $y_{1},\ldots ,y_{n}$ , we obtain that the bootstrap estimator is given by

$$
\begin{array}{l} \mathsf {M S E} (F_{e}) = \mathbb {E}_{F_{e}} \left[ \left(\frac{\sum_{i = 1}^{n} Y_{i}}{n} - \bar {y}\right)^{2} \right] \\ = \operatorname{Va r}_{F_{e}} \left(\frac{\sum_{i = 1}^{n} Y_{i}}{n}\right) (6) \\ = \frac{\operatorname{Va r}_{F_{e}} (Y)}{n} (7) \\ = \frac{\sum_{i = 1}^{n} \left(y_{i} - \bar {y}\right)^{2}}{n^{2}} \\ \end{array}
$$

where (6) follows since  $\mathbb{E}_{F_e}[Y] = \bar{y}$ , and (7) follows since the  $Y_i$ 's are IID  $F_e$ . We therefore see that the bootstrap approximation to the MSE is almost identical to our usual estimator,  $\widehat{\sigma}_n^2 / n$ .

In contrast to Example 2, we cannot usually compute  $\mathrm{MSE}(F_e)$  explicitly, but as it's an expectation we can easily use Monte-Carlo to estimate it. In this case we need to simulate from  $F_{e}$  which is easy to do and so we obtain the following bootstrap algorithm for estimating  $\mathrm{MSE}(F)$ .

#### Bootstrap Simulation Algorithm for Estimating $\mathbf{MSE}(F)$

for  $i = 1$  to  $B$

$$
\text{ge ne ra te} Y_{1}, \dots , Y_{n} \Vdash \text{ID fr om} F_{e}
$$

$$
\mathbf {s e t} \widehat {\theta}_{i}^{b} = g \left(Y_{1}, \dots , Y_{n}\right)
$$

$$
\operatorname{se t} Z_{i}^{b} = \left[ \widehat {\theta}_{i}^{b} - \theta \left(F_{e}\right) \right]^{2}
$$

end for

$$
\operatorname{se t} \widehat {\operatorname{MS E} (F)} = \sum_{b = 1}^{B} Z^{(b)} / B
$$

The  $Z_{i}^{b'}$ 's (or equivalently the  $\widehat{\theta}_{i}^{b'}$ 's) are the bootstrap samples and a value of  $B = 100$  is often sufficient to obtain a sufficiently accurate estimate. In the next example we apply the bootstrap approach in a historical simulation context where we have real data observations as opposed to simulated data. (The disadvantage with historical simulation is that we typically have no control over  $n$ .)

#### Example 3 (Estimating the Minimum Variance Portfolio)

Suppose we wish to invest a fixed sum of money in two financial assets,  $X$  and  $Z$  say, that yield random returns of  $R_{x}$  and  $R_{z}$ , respectively. We invest a fraction  $\theta$  of our wealth in  $X$ , and the remaining  $1 - \theta$  in  $Z$ . The goal is to choose  $\theta$  to minimize the total variance,  $\operatorname{Var}(\theta R_{x} + (1 - \theta)R_{z})$ , of our investment return. It is easy to see that the minimizing  $\theta$  is given by

$$
\theta = \frac{\sigma_{z}^{2} - \sigma_{x z}}{\sigma_{x}^{2} + \sigma_{z}^{2} - 2 \sigma_{x z}} \tag {8}
$$

where  $\sigma_x^2 = \operatorname{Var}(R_x)$ ,  $\sigma_z^2 = \operatorname{Var}(R_z)$  and  $\sigma_{xz} = \operatorname{Cov}(R_x,R_z)$ . In practice, we do not know these quantities and therefore have to estimate them from historical data. We therefore obtain

$$
\widehat {\theta} = \frac{\widehat {\sigma}_{z}^{2} - \widehat {\sigma}_{x z}}{\widehat {\sigma}_{x}^{2} + \widehat {\sigma}_{z}^{2} - 2 \widehat {\sigma}_{x z}}. \tag {9}
$$

as our estimator of the minimum variance portfolio with  $\widehat{\sigma}_x^2$ ,  $\widehat{\sigma}_z^2$  and  $\widehat{\sigma}_{xz}$  estimated from historical return data  $Y_{1},\ldots ,Y_{n}$  with  $Y_{i}:= \left(R_{x}^{(i)},R_{z}^{(i)}\right)$  the joint return in period  $i$ .

We would like to know how good an estimator  $\widehat{\theta}$  is. More specifically, what is the (mean-squared) error when we use  $\widehat{\theta}$ ? We can answer this question using the bootstrap with  $\theta(F) \coloneqq \theta$  and  $g(Y_1, \ldots, Y_n) = \widehat{\theta}$  the estimator given by (9).

Exercise 2 Provide pseudo-code for estimating  $MSE(\hat{\theta}) \coloneqq MSE(F)$ , in Example 3.

Exercise 3 Consider the problem of estimating  $\theta(F) = \mathbb{E}[Y | Y \geq \beta]$  for some fixed constant,  $\beta$ . Explain how you would use the bootstrap to estimate  $MSE(F)$  in this case given  $n$  Monte-Carlo samples  $Y_1, \ldots, Y_n$ .

### 3.1 Constructing Bootstrap Confidence Intervals

The bootstrap method is also widely used to construct confidence intervals and here we will consider the so-called basic bootstrap interval. Consider our bootstrap samples  $\widehat{\theta}_1^b, \ldots, \widehat{\theta}_B^b$  and suppose we want a  $1 - \alpha$  confidence interval for  $\theta = \theta(F)$ . Let  $q_l$  and  $q_u$  be the  $\alpha/2$  lowerand upper-sample quantiles, respectively, of the bootstrap samples. Then the fraction of bootstrap samples satisfying

$$
q_{l} \leq \widehat {\theta}^{b} \leq q_{u} \tag {10}
$$

is  $1 - \alpha$ . But (10) is equivalent to

$$
\widehat {\theta} - q_{u} \leq \widehat {\theta} - \widehat {\theta}^{b} \leq \widehat {\theta} - q_{l} \tag {11}
$$

where  $\widehat{\theta} = g(y_1, \ldots, y_n)$  is our estimate of  $\theta$  computed using the original data-set. This implies  $\widehat{\theta} - q_u$  and  $\widehat{\theta} - q_l$  are the lower and upper quantiles for  $\widehat{\theta} - \widehat{\theta}^b$ . The basic bootstrap assumes they are also the quantiles for  $\theta - \widehat{\theta}$ . This makes sense intuitively – and can be justified mathematically as  $n \to \infty$  and if  $\theta$  is a "continuous" function of  $F$ . It therefore follows that

$$
\widehat {\theta} - q_{u} \leq \theta - \widehat {\theta} \leq \widehat {\theta} - q_{l} \tag {12}
$$

will occur in approximately in a fraction  $1 - \alpha$  of samples. Adding  $\widehat{\theta}$  across (12) yields an approximate  $(1 - \alpha)\%$  CI for  $\theta$  of

$$
\left(2 \widehat {\theta} - q_{u}, 2 \widehat {\theta} - q_{l}\right).
$$
---
aliases:
- Output Analysis and Run-Length Control
tags: null
key_concepts: null
parent_directory: '[[MFE Monte-Carlo Simulation]]'
cssclasses: academia
title: Monte Carlo Output Analysis and Run-Length Control - MasterSlides
linter-yaml-title-alias: Monte Carlo Output Analysis and Run-Length Control - MasterSlides
primary_tags:
- monte-carlo simulation output analysis
- central limit theorem
secondary_tags:
- output analysis
- carlo simulation analysis
- monte simulation analysis
- martin.b.baugh@gmail.com output analysis
tags_extracted: '2025-12-18T17:59:46.834152'
tags_method: max_quality_v1
---

# IEOR E4703: Monte-Carlo Simulation

# Output Analysis for Monte-Carlo

# Martin Haugh

Department of Industrial Engineering and Operations Research

Columbia University

Email: martin.b.baugh@gmail.com

# Output Analysis

Recall our simulation framework for estimating  $\theta \coloneqq \mathbb{E}[h(\mathbf{X})]$  where  $\mathbf{X} \in \mathbb{R}^n$ .

We first simulate  $\mathbf{X}_1, \ldots, \mathbf{X}_n$  IID and then set

$$
\widehat {\theta} _ {n} = \frac {h \left(\mathbf {X} _ {1}\right) + \ldots + h \left(\mathbf {X} _ {n}\right)}{n}.
$$

The Strong Law of Large Numbers (SLLN) implies

$$
\widehat {\theta} _ {n} \rightarrow \theta \quad \text {a s} n \rightarrow \infty \mathrm {w . p .} 1.
$$

But how large  $n$  should be so that we can have confidence in our estimator,  $\hat{\theta}_n$ ?

We can figure this out through the use of confidence intervals.

# Output Analysis

Suppose then that we wish to estimate  $\theta$  and we have a random vector  $\mathbf{Y} = (Y_1, \ldots, Y_n)$  whose distribution depends on  $\theta$ .

We seek  $L(\mathbf{Y})$  and  $U(\mathbf{Y})$  such that

$$
P (L (\mathbf {Y}) \leq \theta \leq U (\mathbf {Y})) = 1 - \alpha
$$

where  $0 \leq \alpha \leq 1$  is a pre-specified number.

We then say that  $[L(\mathbf{Y}), U(\mathbf{Y})]$  is a  $100(1 - \alpha)\%$  confidence interval for  $\theta$ .

Note that  $[L(\mathbf{Y}), U(\mathbf{Y})]$  is a random interval.

However, once we replace  $\mathbf{Y}$  with a sample vector,  $\mathbf{y}$ , then  $[L(\mathbf{y}), U(\mathbf{y})]$  becomes a real interval.

Question: How can we find  $L(\mathbf{Y})$  and  $U(\mathbf{Y})$ ?

# The Chebyshev Inequality

$Y_{i}$  's are assumed IID so  $\mathsf{Var}(\widehat{\theta}_n) = \sigma^2 /n$  where  $\sigma^2\coloneqq \mathsf{Var}(Y)$

- clearly a small value of  $\operatorname{Var}(\widehat{\theta}_n)$  implies a more accurate estimate of  $\theta$ .

Indeed Chebyshev's Inequality states that for any  $k > 0$  we have

$$
P \left(\left| \widehat {\theta} _ {n} - \theta \right| \geq k\right) \leq \frac {\operatorname {V a r} \left(\widehat {\theta} _ {n}\right)}{k ^ {2}}. \tag {1}
$$

Could easily use Chebyshev's Inequality to construct (how?) confidence intervals for  $\theta$  but it is generally very conservative.

Question: Why does Chebyshev's Inequality generally lead to conservative confidence intervals?

Instead, will use the Central Limit Theorem (CLT) to obtain better estimates of  $P\left(|\widehat{\theta}_n - \theta |\geq k\right)$

- and therefore narrower confidence intervals for  $\theta$ .

# The Central Limit Theorem

# Theorem. (Central Limit Theorem)

Suppose  $Y_{1},\ldots ,Y_{n}$  are IID and  $\mathbb{E}[Y_i^2 ] <   \infty$  . Then

$$
\frac {\widehat {\theta} _ {n} - \theta}{\sigma / \sqrt {n}} \xrightarrow {d} \mathsf {N} (0, 1) \text {a s} n \to \infty
$$

where  $\widehat{\theta}_n = \sum_{i=1}^n Y_i / n$ ,  $\theta := \mathbb{E}[Y_i]$  and  $\sigma^2 := \operatorname{Var}(Y_i)$ .

# Using the CLT to Construct Confidence Intervals

Let  $z_{1 - \alpha /2}$  be the the  $(1 - \alpha /2)$  percentile point of the  $N(0,1)$  distribution so that

$$
P (- z _ {1 - \alpha / 2} \leq Z \leq z _ {1 - \alpha / 2}) = 1 - \alpha
$$

when  $Z\sim \mathsf{N}(0,1)$

Suppose that we have simulated IID samples,  $Y_{i}$ , for  $i = 1,\dots ,n$

Now want to construct a  $100(1 - \alpha)\%$  CI for  $\theta = \mathbb{E}[Y]$ . That is, we want  $L(\mathbf{Y})$  and  $U(\mathbf{Y})$  such that

$$
P \left(L (\mathbf {Y}) \leq \theta \leq U (\mathbf {Y})\right) = 1 - \alpha .
$$

The CLT implies  $\sqrt{n}\left(\widehat{\theta}_n - \theta\right) / \sigma$  is approximately  $N(0,1)$  for large  $n$ .

# Using the CLT to Construct Confidence Intervals

Therefore have

$$
\begin{array}{l} P \left(- z _ {1 - \alpha / 2} \leq \frac {\sqrt {n} (\widehat {\theta_ {n}} - \theta)}{\sigma} \leq z _ {1 - \alpha / 2}\right) \approx 1 - \alpha \\ \Rightarrow P \left(- z _ {1 - \alpha / 2} \frac {\sigma}{\sqrt {n}} \leq \widehat {\theta} _ {n} - \theta \leq z _ {1 - \alpha / 2} \frac {\sigma}{\sqrt {n}}\right) \approx 1 - \alpha \\ \Rightarrow P \left(\widehat {\theta} _ {n} - z _ {1 - \alpha / 2} \frac {\sigma}{\sqrt {n}} \leq \theta \leq \widehat {\theta} _ {n} + z _ {1 - \alpha / 2} \frac {\sigma}{\sqrt {n}}\right) \approx 1 - \alpha . \\ \end{array}
$$

Our approximate  $100(1 - \alpha)\%$  CI for  $\theta$  is therefore given by

$$
[ L (\mathbf {Y}), U (\mathbf {Y}) ] = \left[ \widehat {\theta} _ {n} - z _ {1 - \alpha / 2} \frac {\sigma}{\sqrt {n}}, \widehat {\theta} _ {n} + z _ {1 - \alpha / 2} \frac {\sigma}{\sqrt {n}} \right]. \tag {2}
$$

Recall that  $\widehat{\theta}_n = (Y_1 + \ldots + Y_n) / n$ , so  $L$  and  $U$  are indeed functions of  $\mathbf{Y}$ .

# Using the CLT to Construct Confidence Intervals

There is still a problem, however, as we do not usually know  $\sigma^2$ . We resolve this issue by estimating  $\sigma^2$  with

$$
\hat {\sigma} _ {n} ^ {2} = \frac {\sum_ {i = 1} ^ {n} (Y _ {i} - \hat {\theta} _ {n}) ^ {2}}{n - 1}.
$$

Easy to show that  $\hat{\sigma}_n^2$  is an unbiased estimator of  $\sigma^2$  and that  $\hat{\sigma}_n^2 \to \sigma^2$  w.p. 1 as  $n \to \infty$ .

So now replace  $\sigma$  with  $\hat{\sigma}_n$  in (2) to obtain

$$
[ L (\mathbf {Y}), U (\mathbf {Y}) ] = \left[ \widehat {\theta} _ {n} - z _ {1 - \alpha / 2} \frac {\widehat {\sigma} _ {n}}{\sqrt {n}}, \widehat {\theta} _ {n} + z _ {1 - \alpha / 2} \frac {\widehat {\sigma} _ {n}}{\sqrt {n}} \right] \tag {3}
$$

as our approximate  $100(1 - \alpha)\%$  CI for  $\theta$  when  $n$  is "large".

# Using the CLT to Construct Confidence Intervals

When we obtain sample values  $\mathbf{y} = (y_1, \ldots, y_n)$ , then  $[L(\mathbf{y}), U(\mathbf{y})]$  becomes a real interval.

Then can no longer say (why not?) that  $P(\theta \in [L(\mathbf{y}), U(\mathbf{y})]) = 1 - \alpha$ .

Instead, say that we are  $100(1 - \alpha)\%$  confident that  $[L(\mathbf{y}), U(\mathbf{y})]$  contains  $\theta$ .

The width of the confidence interval is given by

$$
U - L = \frac {2 \hat {\sigma} _ {n} z _ {1 - \alpha / 2}}{\sqrt {n}}
$$

and so the half-width is  $(U - L) / 2$ .

For a fixed  $\alpha$ , must increase  $n$  if we are to decrease the width of the CI.

$U - L \propto 1 / \sqrt{n}$  so (for example) would need to increase  $n$  by a factor of four in order to decrease the width of CI by only a factor of two.

# Run-Length Control

Up to this point we have selected  $n$  and then computed the approximate CI. The width of the CI is then a measure of the error in our estimator.

Now will do the reverse by first choosing some error criterion that we want our estimator to satisfy, and then choosing  $n$  so that this criterion is satisfied.

There are two types of error that we will consider:

1. Absolute error which is given by  $E_{a} \coloneqq |\hat{\theta}_{n} - \theta|$  
2. Relative error which is given by  $E_{r} \coloneqq \left| \frac{\hat{\theta}_{n} - \theta}{\theta} \right|$ .

We know that  $\widehat{\theta}_n\to \theta$  w.p. 1 as  $n\rightarrow \infty$  so that  $E_{a}$  and  $E_{r}$  both  $\rightarrow 0$  w.p.1 as  $n\rightarrow \infty$ .

However, in practice  $n \neq \infty$  and so the errors will be non-zero. We specify the following error criterion:

Error Criterion: Given  $0 \leq \alpha \leq 1$  and  $\epsilon \geq 0$ , we want  $P(E \leq \epsilon) = 1 - \alpha$  where  $E = E_{a}$  or  $E = E_{r}$ .

# Run-Length Control

Goal then is to choose  $n$  so that error criterion is (approximately satisfied) and this is easily done.

Suppose (for example) we want to control absolute error,  $E_{a}$ . Then

$$
P \left(\hat {\theta} _ {n} - z _ {1 - \alpha / 2} \frac {\sigma}{\sqrt {n}} \leq \theta \leq \hat {\theta} _ {n} + z _ {1 - \alpha / 2} \frac {\sigma}{\sqrt {n}}\right) \approx 1 - \alpha .
$$

Therefore  $P\left(|\widehat{\theta}_n - \theta |\leq z_{1 - \alpha /2}\frac{\sigma}{\sqrt{n}}\right)\approx 1 - \alpha$  , i.e.

$$
P \left(E _ {a} \leq z _ {1 - \alpha / 2} \frac {\sigma}{\sqrt {n}}\right) \approx 1 - \alpha .
$$

If we then want  $P(E_{a} \leq \epsilon) \approx 1 - \alpha$ , then clearly suffices to choose  $n$  such that

$$
n = \sigma^ {2} z _ {1 - \alpha / 2} ^ {2} / \epsilon^ {2}.
$$

Similar argument implies that  $P(E_r \leq \epsilon) \approx 1 - \alpha$  if

$$
n = \sigma^ {2} z _ {1 - \alpha / 2} ^ {2} / \theta^ {2} \epsilon^ {2}.
$$

# Run-Length Control

There are still some problems, however:

1. When we are controlling  $E_r$ , we need to know  $\sigma$  and  $\theta$  in advance.  
2. When we are controlling  $E_{a}$ , we need to know  $\sigma$  in advance.

Of course we do not usually know  $\sigma$  or  $\theta$  in advance. In fact,  $\theta$  is what we are trying to estimate!

There are two methods we can use to overcome this problem: the two-stage method and the sequential method.

# The Bootstrap Approach to Output Analysis

Can view output analysis problem as one of estimating

$$
\operatorname {M S E} (F) := \mathbb {E} _ {F} \left[ \left(g \left(Y _ {1}, \dots , Y _ {n}\right) - \theta (F)\right) ^ {2} \right] \tag {4}
$$

where  $\theta (F) = \mathbb{E}_F[X]$ ,  $g(Y_{1},\ldots ,Y_{n})\coloneqq \bar{Y}$  and  $F$  denotes the CDF of  $Y$ .

Saw earlier how we could use the CLT to construct approximate CI's for  $\theta$ .

But there are situations where the CLT cannot be easily used to obtain a CI.

e.g. If  $\theta(F) = \mathsf{Var}(Y)$  or  $\theta(F) = \mathbb{E}[Y | Y \geq \alpha]$ .

Need an alternative method of constructing a CI for  $\theta$  in such situations.

The bootstrap method provides such an alternative.

To begin, recall the empirical distribution,  $F_{e}$ , is the CDF that places a weight of  $1 / n$  on each of the simulated values  $Y_{1},\ldots ,Y_{n}$ .

# The Bootstrap Approach to Output Analysis

The empirical CDF therefore satisfies

$$
F _ {e} (y) = \frac {\sum_ {i = 1} ^ {n} 1 _ {\{Y _ {i} \leq y \}}}{n}.
$$

For large  $n$  can be shown (and should be intuitively clear) that  $F_{e}$  should be a good approximation to  $F$ .

Therefore, if  $\theta$  sufficiently well-behaved function of  $F$ , then for sufficiently large  $n$  should have

$$
\operatorname {M S E} (F) \approx \operatorname {M S E} \left(F _ {e}\right) = \mathbb {E} _ {F _ {e}} \left[ \left(g \left(Y _ {1}, \dots , Y _ {n}\right) - \theta \left(F _ {e}\right)\right) ^ {2} \right]. \tag {5}
$$

$\operatorname{MSE}(F_e)$  is known as the bootstrap approximation to  $\operatorname{MSE}(F)$ .

- easy to estimate via simulation.

But first will consider an example where  $\mathrm{MSE}(F_e)$  can be computed exactly. Indeed the bootstrap is not required in this case but nonetheless instructive to see the explicit calculations.

# E.G. Applying the Bootstrap to the Sample Mean

We wish to estimate  $\theta(F) = \mathbb{E}_F[Y]$  via the estimator  $\hat{\theta} = g(Y_1, \ldots, Y_n) \coloneqq \bar{Y}$ .

As noted above, the bootstrap is not necessary in this case as we can apply the CLT directly to obtain CI's for  $\hat{\theta}$ .

Equivalently, we can estimate the MSE,  $\mathbb{E}\left[\left(\bar{Y} -\theta\right)^2\right] = \sigma^2 /n$  , with

$$
\hat {\sigma} _ {n} ^ {2} / n = \sum_ {i = 1} ^ {n} (y _ {i} - \bar {y}) ^ {2} / (n (n - 1)).
$$

Let  $\bar{y}$  denote mean of simulated data-points  $y_{1},\ldots ,y_{n}$ . Bootstrap estimator then given by

$$
\begin{array}{l} {\sf M S E} (F _ {e}) = {\mathbb {E}} _ {F _ {e}} \left[ \left(\frac {\sum_ {i = 1} ^ {n} Y _ {i}}{n} - \bar {y}\right) ^ {2} \right] \\ = \operatorname {V a r} _ {F _ {e}} \left(\frac {\sum_ {i = 1} ^ {n} Y _ {i}}{n}\right) (6) \\ = \frac {\operatorname {V a r} _ {F _ {e}} (Y)}{n} (7) \\ = \frac {\sum_ {i = 1} ^ {n} (y _ {i} - \bar {y}) ^ {2}}{n ^ {2}}. \\ \end{array}
$$

# The Bootstrap Algorithm

In general, however, cannot usually compute  $\mathrm{MSE}(F_e)$  explicitly. But it's an expectation so can use Monte-Carlo!

# Bootstrap Simulation Algorithm for Estimating MSE(F)

for  $i = 1$  to  $B$

generate  $Y_{1},\ldots ,Y_{n}$  IID from  $F_{e}$

set  $\hat{\theta}_i^b = g(Y_1,\dots ,Y_n)$

set  $Z_{i}^{b} = \left[\hat{\theta}_{i}^{b} - \theta (F_{e})\right]^{2}$

end for

set  $\widehat{\operatorname{MSE}(F)} = \sum_{b=1}^{B} Z^{(b)} / B$

The  $Z_{i}^{b'}$ 's (or equivalently the  $\hat{\theta}_{i}^{b'}$ 's) are the bootstrap samples and a value of  $B = 100$  is often sufficient to obtain a sufficiently accurate estimate.

Next example applies bootstrap in a historical simulation context where we have real data observations as opposed to simulated data

- have no control over  $n$  in historical simulations - a disadvantage!

# e.g. Estimating the Minimum Variance Portfolio

Wish to invest a fixed sum of money in two financial assets,  $X$  and  $Z$  say, that yield random returns of  $R_{x}$  and  $R_{z}$ , respectively.

Let  $\theta$  and  $1 - \theta$  be fractions of our wealth invested in  $X$  and  $Z$ .

Goal is to choose  $\theta$  to minimize the total variance

$$
\operatorname {V a r} \left(\theta R _ {x} + (1 - \theta) R _ {z}\right).
$$

Easy to see the minimizing  $\theta$  satisfies

$$
\theta = \frac {\sigma_ {z} ^ {2} - \sigma_ {x z}}{\sigma_ {x} ^ {2} + \sigma_ {z} ^ {2} - 2 \sigma_ {x z}}. \tag {8}
$$

In practice have to estimate  $\sigma_z^2$ ,  $\sigma_x^2$  and  $\sigma_{xz}$  from historical return data  $Y_{1},\ldots ,Y_{n}$  with  $Y_{i}:= \left(R_{x}^{(i)},R_{z}^{(i)}\right)$  the joint return in period  $i$ .

Therefore obtain

$$
\hat {\theta} = \frac {\hat {\sigma} _ {z} ^ {2} - \hat {\sigma} _ {x z}}{\hat {\sigma} _ {x} ^ {2} + \hat {\sigma} _ {z} ^ {2} - 2 \hat {\sigma} _ {x z}}. \tag {9}
$$

as our estimator.

# e.g. Estimating the Minimum Variance Portfolio

Would like to know how good an estimator  $\hat{\theta}$  is. More specifically, what is MSE  $\left(\hat{\theta}\right)$ ?

Can answer this question using the bootstrap with  $\theta(F) \coloneqq \theta$  and  $g(Y_1, \ldots, Y_n) = \hat{\theta}$ .

Question: Provide pseudo-code for estimating  $\mathrm{MSE}(\hat{\theta})\coloneqq \mathrm{MSE}(F)$

# Estimating Confidence Intervals Via the Bootstrap

Bootstrap also widely used to construct CI's. Here we consider the so-called basic bootstrap interval.

Consider the bootstrap samples  $\hat{\theta}_1^b, \dots, \hat{\theta}_B^b$  and suppose we want a  $1 - \alpha$  CI for  $\theta = \theta(F)$ .

Let  $q_{l}$  and  $q_{u}$  be the  $\alpha / 2$  lowerand upper-sample quantiles, respectively, of the bootstrap samples.

Fraction of bootstrap samples satisfying

$$
q _ {l} \leq \hat {\theta} ^ {b} \leq q _ {u} \tag {10}
$$

is  $1 - \alpha$ . But (10) is equivalent to

$$
\hat {\theta} - q _ {u} \leq \hat {\theta} - \hat {\theta} ^ {b} \leq \hat {\theta} - q _ {l} \tag {11}
$$

where  $\hat{\theta} = g(y_1, \ldots, y_n)$  is our estimate of  $\theta$  computed using original data-set.

# Estimating Confidence Intervals Via the Bootstrap

This implies  $\hat{\theta} - q_u$  and  $\hat{\theta} - q_l$  are the lower and upper quantiles for  $\hat{\theta} - \hat{\theta}^b$ .

The basic bootstrap assumes they are also the quantiles for  $\theta -\hat{\theta}$

- makes sense intuitively – and can be justified mathematically as  $n \to \infty$  and if  $\theta$  is a well-behaved function of  $F$ .

Therefore follows that

$$
\hat {\theta} - q _ {u} \leq \theta - \hat {\theta} \leq \hat {\theta} - q _ {l} \tag {12}
$$

will occur in approximately in a fraction  $1 - \alpha$  of samples.

Adding  $\hat{\theta}$  across (12) yields an approximate  $(1 - \alpha)\%$  CI for  $\theta$  of

$$
\left(2 \hat {\theta} - q _ {u}, 2 \hat {\theta} - q _ {l}\right).
$$
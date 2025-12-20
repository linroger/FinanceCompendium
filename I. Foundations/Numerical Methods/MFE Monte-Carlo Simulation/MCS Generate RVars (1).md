---
aliases: null
tags: null
key_concepts: null
parent_directory: null
cssclasses: academia
title: Generating Random Variables and Stochastic Processes
linter-yaml-title-alias: Generating Random Variables and Stochastic Processes
primary_tags:
- other approaches
- multivariate normal distributions
- composition method
- cholesky decomposition method
secondary_tags:
- random variables
- random variable
- acceptance rejection method
- brownian motions
- some random variables
- random vector
- poisson variable
- monte carlo integration
- poisson process a
tags_extracted: '2025-12-18T17:59:21.904229'
tags_method: max_quality_v1
---

# Generating Random Variables and Stochastic Processes

In these lecture notes we describe the principal methods that are used to generate random variables, taking as given a good  $U(0,1)$  random variable generator. We begin with Monte-Carlo integration and then describe the main methods for random variable generation including inverse-transform, composition and acceptance-rejection. We also describe the generation of normal random variables and multivariate normal random vectors via the Cholesky decomposition. We end with a discussion of how to generate (non-homogeneous) Poisson processes as well (geometric) Brownian motions.

# 1 Monte Carlo Integration

Monte-Carlo simulation can also be used for estimating integrals and we begin with one-dimensional integrals. Suppose then that we want to compute

$$
\theta := \int_{0}^{1} g (x) d x.
$$

If we cannot compute  $\theta$  analytically, then we could use numerical methods. However, we can also use simulation and this can be especially useful for high-dimensional integrals. The key observation is to note that  $\theta = \mathbb{E}[g(U)]$  where  $U\sim U(0,1)$ . We can use this observation as follows:

1. Generate  $U_{1}, U_{2}, \ldots, U_{n} \sim \text{IID } U(0,1)$  
2. Estimate  $\theta$  with

$$
\widehat {\theta}_{n} := \frac{g (U_{1}) + \ldots + g (U_{n})}{n}
$$

There are two reasons that explain why  $\widehat{\theta}_n$  is a good estimator:

1. $\widehat{\theta}_n$  is unbiased, i.e.,  $\mathbb{E}[\widehat{\theta}_n] = \theta$  and  
2. $\widehat{\theta}_n$  is consistent, i.e.,  $\widehat{\theta}_n \to \theta$  as  $n \to \infty$  with probability 1. This follows immediately from the Strong Law of Large Numbers (SLLN) since  $g(U_1), g(U_2), \ldots, g(U_n)$  are IID with mean  $\theta$ .

Example 1 Suppose we wish to estimate  $\int_0^1 x^3 dx$  using simulation. We know the exact answer is  $1/4$  but we can also estimate this using simulation. In particular if we generate  $n$ $U(0,1)$  independent variables, cube them and then take their average then we will have an unbiased estimate.

Example 2 We wish to estimate  $\theta = \int_{1}^{3}(x^{2} + x)dx$  again using simulation. Once again we know the exact answer (it's 12.67) but we can also estimate it by noting that

$$
\theta = 2 \int_{1}^{3} \frac{x^{2} + x}{2} d x = 2 \mathbb {E} [ X^{2} + X ]
$$

where  $X \sim U(1,3)$ . So we can estimate  $\theta$  by generating  $n$  IID  $U(0,1)$  random variables, converting them (how?) to  $U(1,3)$  variables,  $X_{1},\ldots ,X_{n}$ , and then taking  $\widehat{\theta}_n \coloneqq 2\sum_i(X_i^2 +X_i) / n$ .

# 1.1 Multi-Dimensional Monte Carlo Integration

Suppose now that we wish to approximate

$$
\theta = \int_{0}^{1} \int_{0}^{1} g (x_{1}, x_{2}) d x_{1} d x_{2}.
$$

Then we can write  $\theta = \mathbb{E}[g(U_1,U_2)]$  where  $U_{1},U_{2}$  are IID  $U(0,1)$  random variables. Note that the joint PDF satisfies  $f_{u_1,u_2}(u_1,u_2) = f_{u_1}(u_1)f_{u_2}(u_2) = 1$  on  $[0,1]^2$ . As before we can estimate  $\theta$  using simulation by performing the following steps:

1. Generate  $n$  independent bivariate vectors  $(U_1^i, U_2^i)$  for  $i = 1, \dots, n$ , with all  $U_i^{i}$ 's IID  $U(0,1)$ .  
2. Compute  $g(U_1^i, U_2^i)$  for  $i = 1, \dots, n$ .  
3. Estimate  $\theta$  with

$$
\widehat {\theta}_{n} = \frac{g (U_{1}^{1} , U_{2}^{1}) + \ldots + g (U_{1}^{n} , U_{2}^{n})}{n}
$$

As before, the SLLN justifies this approach and guarantees that  $\widehat{\theta}_n\to \theta$  w.p. 1 as  $n\to \infty$

# Example 3 (Computing a Multi-Dimensional Integral)

We can use Monte Carlo to estimate

$$
\begin{array}{l} \theta := \int_{0}^{1} \int_{0}^{1} \left(4 x^{2} y + y^{2}\right) d x d y \\ = \mathbb {E} \left[ 4 X^{2} Y + Y^{2} \right] \\ \end{array}
$$

where  $X, Y$  are IID  $U(0,1)$ . (The true value of  $\theta$  is easily calculated to be 1.)

We can also apply Monte Carlo integration to more general problems. For example, if we want to estimate

$$
\theta = \int \int_{A} g (x, y) f (x, y) d x d y
$$

where  $f(x,y)$  is a density function on  $A$ , then we observe that  $\theta = \mathbb{E}[g(X,Y)]$  where  $X, Y$  have joint density  $f(x,y)$ . To estimate  $\theta$  using simulation we simply generate  $n$  random vectors  $(X,Y)$  with joint density  $f(x,y)$  and then estimate  $\theta$  with

$$
\widehat {\theta}_{n} := \frac{g (X_{1} , Y_{1}) + \ldots + g (X_{n} , Y_{n})}{n}.
$$

# 2 Generating Univariate Random Variables

We will study a number of methods for generating univariate random variables. The three principal methods are the inverse transform method, the composition method and the acceptance-rejection method. All of these methods rely on having a (good)  $U(0,1)$  random number generator available which we assume to be the case.

# 2.1 The Inverse Transform Method

The Inverse Transform Method for Discrete Random Variables

Suppose  $X$  is a discrete random variable with probability mass function (PMF)

$$
X = \left\{ \begin{array}{l l} x_{1}, & \mathsf {w . p .} p_{1} \\ x_{2}, & \mathsf {w . p .} p_{2} \\ x_{3}, & \mathsf {w . p .} p_{3} \end{array} \right.
$$

where  $p_1 + p_2 + p_3 = 1$ . We would like to generate a value of  $X$  and we can do this by using our  $U(0,1)$  generator as follows. First generate  $U$  and then set

$$
X = \left\{ \begin{array}{l l} x_{1}, & \text{if } \quad 0 \leq U \leq p_{1} \\ x_{2}, & \text{if } \quad p_{1} <   U \leq p_{1} + p_{2} \\ x_{3}, & \text{if } \quad p_{1} + p_{2} <   U \leq 1. \end{array} \right.
$$

We can easily check that this is correct: note that  $\mathbf{P}(X = x_1) = \mathbf{P}(0 \leq U \leq p_1) = p_1$  since  $U$  is  $U(0, 1)$ . The same is true for  $\mathbf{P}(X = x_2)$  and  $\mathbf{P}(X = x_3)$ .

More generally, suppose  $X$  can take on  $n$  distinct values,  $x_{1} < x_{2} < \ldots < x_{n}$ , with

$$
\mathbf {P} (X = x_{i}) = p_{i} \quad \text{fo r} i = 1, \dots , n.
$$

Then to generate a sample value of  $X$  we:

1. Generate  $U$  
2. Set  $X = x_{j}$  if  $\sum_{i=1}^{j-1} p_{i} < U \leq \sum_{i=1}^{j} p_{i}$ . That is, we set  $X = x_{j}$  if  $F(x_{j-1}) < U \leq F(x_{j})$ .

If  $n$  is large, then we might want to search for  $x_{j}$  more efficiently, however!

# Example 4 (Generating a Geometric Random Variable)

Suppose  $X$  is geometric with parameter  $p$  so that  $\mathbf{P}(X = n) = (1 - p)^{n - 1}p$ . Then we can generate  $X$  as follows:

1. Generate  $U$  
2. Set  $X = j$  if  $\sum_{i=1}^{j-1}(1-p)^{i-1}p < U \leq \sum_{i=1}^{j}(1-p)^{i-1}p$ . That is, we set (why?)  $X = j$  if  $1 - (1-p)^{j-1} < U \leq 1 - (1-p)^{j}$ .

In particular, we set  $X = \operatorname{Int}\left(\frac{\log(U)}{\log(1 - p)}\right) + 1$  where  $\operatorname{Int}(y)$  denotes the integer part of  $y$ .

You should convince yourself that this is correct! How does this compare to the coin-tossing method for generating  $X$ ?

# Example 5 (Generating a Poisson Random Variable)

Suppose that  $X$  is Poisson(λ) so that  $\mathbf{P}(X = n) = \exp(-\lambda) \lambda^n / n!$ . We can generate  $X$  as follows:

1. Generate  $U$  
2. Set  $X = j$  if  $F(j - 1) < U \leq F(j)$ .

How do we find  $j$ ? We could use the following algorithm.

$$
\begin{array}{l} \text{se t} j = 0, p = e^{- \lambda}, F = p \\ \text{wh il e} U > F \\ \text{se t} p = \lambda p / (j + 1), F = F + p, j = j + 1 \\ \operatorname{se t} X = j \\ \end{array}
$$

Questions: How much work does this take? What if  $\lambda$  is large? Can we find  $j$  more efficiently?

Answer (to last question): Yes by checking if  $j$  is close to  $\lambda$  first.

Further questions: Why might this be useful? How much work does this take?

# The Inverse Transform Method for Continuous Random Variables

Suppose now that  $X$  is a continuous random variable and we want to generate a value of  $X$ . Recall that when  $X$  was discrete, we could generate a variate by first generating  $U$  and then setting  $X = x_{j}$  if  $F(x_{j-1}) < U \leq F(x_{j})$ . This suggests that when  $X$  is continuous, we might generate  $X$  as follows:

1. Generate  $U$  
2. Set  $X = x$  if  $F_{x}(x) = U$ , i.e., set  $X = F_{x}^{-1}(U)$ .

We need to prove that this algorithm actually works! But this follows immediately since

$$
\mathbf {P} (X \leq x) = \mathbf {P} \left(F_{x}^{- 1} (U) \leq x\right) = \mathbf {P} \left(U \leq F_{x} (x)\right) = F_{x} (x)
$$

as desired. This argument assumes  $F_x^{-1}$  exists but there is no problem even when  $F_x^{-1}$  does not exist. All we have to do is

1. Generate  $U$  
2. Set  $X = \min \{x : F_x(x) \geq U\}$ .

This works for discrete and continuous random variables or mixtures of the two.

# Example 6 (Generating an Exponential Random Variable)

We wish to generate  $X \sim \mathrm{Exp}(\lambda)$ . In this case  $F_{x}(X) = 1 - e^{-\lambda x}$  so that  $F_{x}^{-1}(u) = -\log (1 - u) / \lambda$ . We can generate  $X$  then by generating  $U$  and setting (why?)  $X = -\log (U) / \lambda$ .

# Example 7 (Generating a Gamma(n,λ) Random Variable)

We wish to generate  $X \sim \operatorname{Gamma}(n, \lambda)$  where  $n$  is a positive integer. Let  $X_i$  be IID  $\sim \exp(\lambda)$  for  $i = 1, \ldots, n$ . Note that if  $Y := X_1 + \ldots + X_n$  then  $Y \sim \operatorname{Gamma}(n, \lambda)$ . How can we use this observation to generate a sample value of  $Y$ ? If  $n$  is not an integer, then we need another method to generate  $Y$ .

# Example 8 (Generating Order Statistics)

Order statistics are very important and have many applications in statistics, engineering and even finance. So suppose  $X$  has CDF  $F_{x}$  and let  $X_{1},\ldots ,X_{n}$  be IID  $\sim X$ . Let  $X_{(1)},\ldots ,X_{(n)}$  be the ordered sample so that

$$
X_{(1)} \leq X_{(2)} \leq \dots \leq X_{(n)}.
$$

We say  $X_{(i)}$  is the  $i^{th}$  ordered statistic. Several questions arise:

Question: How do we generate a sample of  $X_{(i)}$ ?

Method 1: Generate  $U_{1}, \ldots, U_{n}$  and for each  $U_{i}$  compute  $X_{i} = F_{X}^{-1}(U_{i})$ . We then order the  $X_{i}$ 's and take the  $i^{th}$  smallest as our sample. How much work does this take?

Question: Can we do better?

Method 2: Sure, use the monotonicity of  $F!$

Question: Can we do even better?

Method 3: Suppose  $Z \sim \mathrm{beta}(a, b)$  on  $(0, 1)$  so that

$$
f (z) = c z^{a - 1} (1 - z)^{b - 1} \quad \text{fo r} 0 \leq z \leq 1
$$

where  $c$  is a constant so that the density integrates to 1. How can we use this distribution?

Question: Can we do even better?

# Advantages of the Inverse Transform Method

There are two principal advantages to the inverse transform method:

1. Monotonicity: we have already seen how this can be useful.  
2. The method is 1-to-1, i.e. one  $U(0,1)$  variable produces one  $X$  variable. This property can be useful for some variance reduction techniques.

# Disadvantages of the Inverse Transform Method

The principal disadvantage of the inverse transform method is that  $F_{x}^{-1}$  may not always be computable. For example, suppose  $X \sim \mathsf{N}(0,1)$ . Then

$$
F_{x} (x) = \int_{- \infty}^{x} \frac{1}{\sqrt{2 \pi}} \exp \left(\frac{- z^{2}}{2}\right) d z
$$

so that we cannot even express  $F_{x}$  in closed form. Even if  $F_{x}$  is available in closed form, it may not be possible to find  $F_{x}^{-1}$  in closed form. For example, suppose  $F_{x}(x) = x^{5}(1 + x)^{3} / 8$  for  $0 \leq x \leq 1$ . Then we cannot compute  $F_{x}^{-1}$ . One possible solution to these problems is to find  $F_{x}^{-1}$  numerically.

# 2.2 The Composition Approach

Another method for generating random variables is the composition approach. Suppose again that  $X$  has CDF  $F_{x}$  and that we wish to simulate a value of  $X$ . We can often write

$$
F_{x} (x) = \sum_{j = 1}^{\infty} p_{j} F_{j} (x)
$$

where the  $F_{j}$ 's are also CDFs,  $p_{j} \geq 0$  for all  $j$ , and  $\sum p_{j} = 1$ . Equivalently, if the densities exist then we can write

$$
f_{x} (x) = \sum_{j = 1}^{\infty} p_{j} f_{j} (x).
$$

Such a representation often occurs very naturally. For example, suppose

$X\sim$  Hyperexponential  $(\lambda_1,\alpha_1,\dots ,\lambda_n,\alpha_n)$  so that

$$
f_{x} (x) = \sum_{j = 1}^{n} \alpha_{i} \lambda_{i} e^{- \lambda_{i} x}
$$

where  $\lambda_{i}$ ,  $\alpha_{i} \geq 0$ , and  $\sum_{i}^{n} \alpha_{i} = 1$ . Here  $\alpha_{i} = 0$  for  $i > n$ . If it's difficult to simulate  $X$  directly using the inverse transform method then we could use the composition algorithm (see below) instead.

# Composition Algorithm

1. Generate  $I$  that is distributed on the non-negative integers so that  $\mathbf{P}(I = j) = p_j$ . (How do we do this?)  
2. If  $I = j$ , then simulate  $Y_{j}$  from  $F_{j}$  
3. Set  $X = Y_{j}$

We claim that  $X$  has the desired distribution!

Proof: We have

$$
\begin{array}{l} \mathbf {P} (X \leq x) = \sum_{j = 1}^{\infty} \mathbf {P} (X \leq x | I = j) \mathbf {P} (I = j) \\ = \sum_{j = 1}^{\infty} \mathbf {P} \left(Y_{j} \leq x\right) \mathbf {P} (I = j) \\ = \sum_{j = 1}^{\infty} F_{j} (x) p_{j} \\ = F_{x} (x) \\ \end{array}
$$

The proof actually suggests that the composition approach might arise naturally from 'sequential' type experiments. Consider the following example.

# Example 9 (A Sequential Experiment)

Suppose we roll a dice and let  $Y \in \{1, 2, 3, 4, 5, 6\}$  be the outcome. If if  $Y = i$  then we generate  $Z_{i}$  from the distribution  $F_{i}$  and set  $X = Z_{i}$ .

What is the distribution of  $X$ ? How do we simulate a value of  $X$ ?

# Example 10 (The Hyperexponential Distribution)

Let  $X \sim \text{Hyperexponential}(\lambda_1, \alpha_1, \lambda_2, \alpha_2)$  so that  $f_x(x) = \alpha_1 \lambda_1 e^{-\lambda_1 x} + \alpha_2 \lambda_2 e^{-\lambda_2 x}$ . In our earlier notation we have

$$
\alpha_{1} = p_{1}
$$

$$
\alpha_{2} = p_{2}
$$

$$
f_{1} (x) = \lambda_{1} e^{- \lambda_{1} x}
$$

$$
f_{2} (x) = \lambda_{2} e^{- \lambda_{2} x}
$$

and the following algorithm will then generate a sample of  $X$ .

generate  $U_{1}$

if  $U_{1}\leq p_{1}$  then

$$
\text{se t} i = 1
$$

else

$$
\text{se t} i = 2
$$

generate  $U_{2}$

$$
/ * \text{No w} X \text{fr om} \operatorname{Ex p} \left(\lambda_{i}\right) * /
$$

set

$$
X = - \frac{1}{\lambda_{i}} \log (U_{2})
$$

Question: How would you simulate a value of  $X$  if  $F_{x}(x) = (x + x^{3} + x^{5}) / 3$ ?

When the decomposition

$$
F_{x} = \sum_{j = 1}^{\infty} p_{j} F_{j} (x)
$$

is not obvious, we can create an artificial decomposition by splitting.

# Example 11 (Splitting)

Suppose

$$
f_{x} (x) = \frac{1}{5} 1_{[ - 1, 0 ]} (x) + \frac{6}{1 5} 1_{[ 0, 2 ]} (x).
$$

How do we simulate a value of  $X$  using vertical splitting? How would horizontal splitting work?

# 2.3 The Acceptance-Rejection Algorithm

Let  $X$  be a random variable with density,  $f(\cdot)$ , and CDF,  $F_{x}(\cdot)$ . Suppose it's hard to simulate a value of  $X$  directly using either the inverse transform or composition algorithm. We might then wish to use the acceptance-rejection algorithm. Towards this end let  $Y$  be another random variable with density  $g(\cdot)$  and suppose that it is easy to simulate a value of  $Y$ . If there exists a constant  $a$  such that

$$
\frac{f (x)}{g (x)} \leq a \text{fo r} a l l x
$$

then we can simulate a value of  $X$  as follows.

# The Acceptance-Rejection Algorithm

generate  $Y$  with PDF  $g(\cdot)$

generate  $U$

while  $U > \frac{f(Y)}{ag(Y)}$

generate  $Y$

generate  $U$

set  $X = Y$

Question: Why must we have  $a \geq 1$ ?

We must now prove that this algorithm does indeed work. We define  $B$  to be the event that  $Y$  has been accepted in the while loop, i.e.,  $U \leq f(Y) / ag(Y)$ . We need to show that  $\mathbf{P}(X \leq x) = F_x(x)$

Proof: First observe

$$
\begin{array}{l} \mathbf {P} (X \leq x) = \mathbf {P} (Y \leq x | B) \\ = \frac{\mathbf {P} ((Y \leq x) \cap B)}{\mathbf {P} (B)}. \tag {1} \\ \end{array}
$$

We can compute  $\mathbf{P}(B)$  as

$$
\mathbf {P} (B) = \mathbf {P} \left(U \leq \frac{f (Y)}{a g (Y)}\right) = \frac{1}{a}
$$

while the numerator in (1) satisfies

$$
\begin{array}{l} \mathbf {P} \left((Y \leq x) \cap B\right) = \int_{- \infty}^{\infty} \mathbf {P} \left((Y \leq x) \cap B \mid Y = y\right) g (y) d y \\ = \int_{- \infty}^{\infty} \mathbf {P} \left((Y \leq x) \cap \left(U \leq \frac{f (Y)}{a g (Y)}\right) \mid Y = y\right) g (y) d y \\ = \int_{- \infty}^{x} \mathbf {P} \left(U \leq \frac{f (y)}{a g (y)}\right) g (y) d y \quad (\text{wh y ?}) \\ = \frac{F_{x} (x)}{a} \\ \end{array}
$$

Therefore  $\mathbf{P}(X\leq x) = F_x(x)$ , as required.

# Example 12 (Generating a  $\mathbf{Beta}(a,b)$  Random Variable)

Recall that  $X$  has a  $\operatorname{Beta}(a, b)$  distribution if  $f(x) = cx^{a - 1}(1 - x)^{b - 1}$  for  $0 \leq x \leq 1$ . Suppose now that we wish to simulate from the  $\operatorname{Beta}(4, 3)$  so that

$$
f (x) = 6 0 x^{3} (1 - x)^{2} \quad \text{fo r} 0 \leq x \leq 1.
$$

We could, for example, integrate  $f(\cdot)$  to find  $F(\cdot)$ , and then try to use the inverse transform approach. However, it is hard to find  $F^{-1}(\cdot)$ . Instead, let's use the acceptance-rejection algorithm:

1. First choose  $g(y)$ : let's take  $g(y) = 1$  for  $y \in [0,1]$ , i.e.,  $Y \sim U(0,1)$ .  
2. Then find  $a$ . Recall that we must have

$$
\frac{f (x)}{g (x)} \leq a \text{fo r} a \text{fo r} x,
$$

which implies

$$
6 0 x^{3} (1 - x)^{2} \leq a \text{fo r} a \in [ 0, 1 ].
$$

So take  $a = 3$ . It is easy to check that this value works. We then have the following algorithm.

# Algorithm

```txt
generate  $Y\sim U(0,1)$    
generate  $U\sim U(0,1)$    
while  $U > 20Y^{3}(1 - Y)^{2}$  generate  $Y$  generate  $U$    
set  $X = Y$
```

# Efficiency of the Acceptance-Rejection Algorithm

Let  $N$  be the number of loops in the A-R algorithm until acceptance, and as before, let  $B$  be the event that  $Y$  has been accepted in a loop, i.e.  $U \leq f(Y) / ag(Y)$ . We saw earlier that  $\mathbf{P}(B) = 1 / a$ .

# Questions:

1: What is the distribution of  $N$ ?  
2: What is  $\mathbb{E}[N]$ ?

# How Do We Choose  $a$ ?

$\mathbb{E}[N] = a$  , so clearly we would like  $a$  to be as small as possible. Usually, this is just a matter of calculus.

# Example 13 (Generating a  $\mathbf{Beta}(a,b)$  Random Variable continued)

Recall the Beta(4,3) example with PDF  $f(x) = 60x^{3}(1 - x)^{2}$  for  $x \in [0,1]$ . We chose  $g(y) = 1$  for  $y \in [0,1]$  so that  $Y \sim U(0,1)$ . The constant  $a$  had to satisfy

$$
\frac{f (x)}{g (x)} \leq a \quad \text{fo ra ll} x \in [ 0, 1 ]
$$

and we chose  $a = 3$ . We can do better by choosing

$$
a = \max_{x \in [ 0, 1 ]} \frac{f (x)}{g (x)} \approx 2. 0 7 3.
$$

# How Do We Choose  $g(\cdot)?$

We would like to choose  $g(\cdot)$  to minimize the computational load. This can be achieved by taking  $g(\cdot)$  'close' to  $f(\cdot)$ . Then  $a$  will be close to 1 and so fewer iterations will be required in the A-R algorithm. There is a tradeoff, however: if  $g(\cdot)$  is 'close' to  $f(\cdot)$  then it will probably also be hard to simulate from  $g(\cdot)$ . So we often need to find a balance between having a 'nice'  $g(\cdot)$  and a small value of  $a$ .

# Acceptance-Rejection Algorithm for Discrete Random Variables

So far, we have expressed the A-R algorithm in terms of PDF's, thereby implicitly assuming that we are generating continuous random variables. However, the A-R algorithm also works for discrete random variables where we simply replace PDF's with PMF's. So suppose we wish to simulate a discrete random variable,  $X$ , with PMF,  $p_i = \mathbf{P}(X = x_i)$ . If we do not wish to use the discrete inverse transform method for example, then we can use the following version of the A-R algorithm. We assume that we can generate  $Y$  with PMF,  $q_i = \mathbf{P}(Y = y_i)$ , and that  $a$  satisfies  $p_i / q_i \leq a$  for all  $i$ .

# The Acceptance-Rejection Algorithm for Discrete Random Variables

```txt
generate  $Y$  with PMF  $q_{i}$    
generate  $U$    
while  $U > \frac{p_Y}{aq_Y}$  generate  $Y$    
generate  $U$    
set  $X = Y$
```

Generally, we would use this A-R algorithm when we can simulate  $Y$  efficiently.

Exercise 1 (From Simulation by Sheldon M. Ross)

Suppose  $Y \sim \operatorname{Bin}(n, p)$  and that we want to generate  $X$  where

$$
\mathbf {P} (X = r) = \mathbf {P} (Y = r | Y \geq k)
$$

for some fixed  $k \leq n$ . Assume  $\alpha = \mathbf{P}(Y \geq k)$  has been computed.

1. Give the inverse transform method for generating  $X$ .  
2. Give another method for generating  $X$ .  
3. For what values of  $\alpha$ , small or large, would the algorithm in (2) be inefficient?

# Example 14 (Generating from a Uniform Distribution over a 2-D Region)

Suppose  $(X,Y)$  is uniformly distributed over a 2-dimensional area,  $A$ . How would you simulate a sample of  $(X,Y)$ ? Note first that if  $X \sim U(-1,1)$ ,  $Y \sim U(-1,1)$  and  $X$  and  $Y$  are independent then  $(X,Y)$  is uniformly distributed over the region

$$
A := \{(x, y): - 1 \leq x \leq 1, - 1 \leq y \leq 1 \}.
$$

We can therefore (how?) simulate a sample of  $(X,Y)$  when  $A$  is a square. Suppose now that  $A$  is a circle of radius 1 centered at the origin. How do we simulate a sample of  $(X,Y)$  in that case?

Remark 1 The  $A-R$  algorithm is an important algorithm for generating random variables. Moreover it can be used to generate samples from distributions that are only known up to a constant. It is very inefficient in high-dimensions, however, which is why Markov Chain Monte Carlo (MCMC) algorithms are required.

# 3 Other Methods for Generating Univariate Random Variables

Besides the inverse transform, composition and acceptance-rejection algorithms, there are a number of other important methods for generating random variables. We begin with the convolution method.

# 3.1 The Convolution Method

Suppose  $X \sim Y_1 + Y_2 + \ldots + Y_n$  where the  $Y_i$ 's are IID with CDF  $F_y(\cdot)$ . Suppose also that it's easy to generate the  $Y_i$ 's. Then it is straightforward to generate a value of  $X$ :

1. Generate  $Y_{1},\ldots ,Y_{n}$  that have CDF  $F_{y}$  
2. Set  $X = Y_{1} + \ldots + Y_{n}$

We briefly mentioned this earlier in Example 7 when we described how to generate a  $\mathrm{Gamma}(\lambda, n)$  random variable. The convolution method is not always the most efficient method. Why?

More generally, suppose we want to simulate a value of a random variable,  $X$ , and we know that

$$
X \sim g (Y_{1}, \dots , Y_{n})
$$

for some random variables  $Y_{i}$  and some function  $g(\cdot)$ . Note that the  $Y_{i}$ 's need not necessarily be IID. If we know how to generate  $(Y_{1},\ldots ,Y_{n})$  then we can generate  $X$  by generating  $(Y_{1},\dots ,Y_{n})$  and setting  $X = g(Y_{1},\ldots ,Y_{n})$ . We saw such an application in Example 7.

# Example 15 (Generating Lognormal Random Variables)

Suppose  $X \sim \mathsf{N}(\mu, \sigma^2)$ . Then  $Y := \exp(X)$  has a lognormal distribution, i.e.,  $Y \sim \mathsf{LN}(\mu, \sigma^2)$ . (Note  $\mathbb{E}[Y] \neq \mu$  and  $\operatorname{Var}(Y) \neq \sigma^2$ .) How do we generate a log-normal random variable?

# Example 16 (Generating  $\chi^2$  Random Variables)

Suppose  $X \sim \mathsf{N}(0,1)$ . Then  $Y \coloneqq X^2$  has a chi-square distribution with 1 degree of freedom, i.e.,  $Y \sim \chi_1^2$ .

Question: How would you generate a  $\chi_1^2$  random variable?

Suppose now that  $X_{i} \sim \chi_{1}^{2}$  for  $i = 1, \ldots, n$ . Then  $Y := X_{1} + \ldots + X_{n}$  has a chi-square distribution with  $n$  degrees-of-freedom, i.e.,  $Y \sim \chi_{n}^{2}$ .

Question: How would you generate a  $\chi_n^2$  random variable?

# Example 17 (Generating  $t_n$  Random Variables)

Suppose  $X \sim \mathsf{N}(0,1)$  and  $Y \sim \chi_n^2$  with  $X$  and  $Y$  independent. Then

$$
Z := \frac{X}{\sqrt{\frac{Y}{n}}}
$$

has a  $t$  distribution with  $n$  degrees of freedom, i.e.,  $Z \sim t_{n}$ .

Question: How would you generate a  $t_n$  random variable?

Example 18 (Generating  $F_{m,n}$  Random Variables)

Suppose  $X \sim \chi_m^2$  and  $Y \sim \chi_n^2$  with  $X$  and  $Y$  independent. Then

$$
Z := \frac{\left(\frac{X}{m}\right)}{\left(\frac{Y}{n}\right)}
$$

has an  $F$  distribution with  $m$  and  $n$  degrees of freedom, i.e.,  $Z \sim F_{m,n}$ .

Question: How would you generate a  $F_{m,n}$  random variable?

# 4 Generating Normal Random Variables

While we typically rely on software packages to generate normal random variables for us, it is nonetheless worthwhile having an understanding of how to do this. We first note that if  $Z \sim \mathsf{N}(0,1)$  then

$$
X := \mu + \sigma Z \sim \mathsf {N} (\mu , \sigma^{2})
$$

so that we need only concern ourselves with generating  $\mathsf{N}(0,1)$  random variables. One possibility for doing this is to use the inverse transform method. But we would then have to use numerical methods since we cannot find  $F_{z}^{-1}(\cdot) \coloneqq \Phi^{-1}(\cdot)$  in closed form. Other approaches for generating  $\mathsf{N}(0,1)$  random variables include:

1. The Box-Muller method  
2. The Polar method  
3. Rational approximations.

There are many other methods such as the A-R algorithm that could also be used to generate  $N(0,1)$  random variables.

# 4.1 The Box Muller Algorithm

The Box-Muller algorithm uses two IID  $U(0,1)$  random variables to produce two IID  $\mathsf{N}(0,1)$  random variables. It works as follows:

The Box-Muller Algorithm for Generating Two IID  $\mathbf{N}(0,1)$  Random Variables

generate  $U_{1}$  and  $U_{2}$  IID  $U(0,1)$

set

$$
X = \sqrt{- 2 \log (U_{1})} \cos (2 \pi U_{2}) \quad \text{an d} \quad Y = \sqrt{- 2 \log (U_{1})} \sin (2 \pi U_{2})
$$

We now show that this algorithm does indeed produce two IID  $\mathsf{N}(0,1)$  random variables,  $X$  and  $Y$ .

Proof: We need to show that

$$
f (x, y) = \frac{1}{\sqrt{2 \pi}} \exp \left(- \frac{x^{2}}{2}\right) \frac{1}{\sqrt{2 \pi}} \exp \left(- \frac{y^{2}}{2}\right)
$$

First, make a change of variables:

$$
\begin{array}{l} R := \sqrt{X^{2} + Y^{2}} \\ \theta := \tan^{- 1} \left(\frac{Y}{X}\right) \\ \end{array}
$$

so  $R$  and  $\theta$  are polar coordinates of  $(X, Y)$ . To transform back, note  $X = R\cos(\theta)$  and  $Y = R\sin(\theta)$ . Note also that  $R = \sqrt{-2\log(U_1)}$  and  $\theta = 2\pi U_2$ . Since  $U_1$  and  $U_2$  are IID,  $R$  and  $\theta$  are independent. Clearly  $\theta \sim U(0, 2\pi)$  so  $f_\theta(\theta) = 1/2\pi$  for  $0 \leq \theta \leq 2\pi$ . It is also easy to see that  $f_R(r) = r e^{-r^2/2}$  for  $r \geq 0$ , so that

$$
f_{R, \theta} (r, \theta) = \frac{1}{2 \pi} r e^{- r^{2} / 2}, 0 \leq \theta \leq 2 \pi , r \geq 0.
$$

This implies

$$
\begin{array}{l} \mathbf {P} (X \leq x_{1}, Y \leq y_{1}) = \mathbf {P} (R \cos (\theta) \leq x_{1}, R \sin (\theta) \leq y_{1}) \\ = \iint_{A} \frac{1}{2 \pi} r e^{- r^{2} / 2} d r d \theta \tag {2} \\ \end{array}
$$

where  $A = \{(r,\theta):r\cos (\theta)\leq x,r\sin (\theta)\leq y\}$ . We now transform back to  $(x,y)$  coordinates with

$$
x = r \cos (\theta) \quad \text{an d} \quad y = r \sin (\theta)
$$

and note that  $dx \, dy = r dr \, d\theta$ , i.e., the Jacobian of the transformation is  $r$ . We then use (2) to obtain

$$
\begin{array}{l} \mathbf {P} (X \leq x_{1}, Y \leq y_{1}) = \frac{1}{2 \pi} \int_{- \infty}^{x_{1}} \int_{- \infty}^{y_{1}} e x p \left(- \frac{\left(x^{2} + y^{2}\right)}{2}\right) d x d y \\ = \frac{1}{\sqrt{2 \pi}} \int_{- \infty}^{x_{1}} \exp (- x^{2} / 2) d x \frac{1}{\sqrt{2 \pi}} \int_{- \infty}^{y_{1}} \exp (- y^{2} / 2) d y \\ \end{array}
$$

as required.

# 4.2 The Polar Method

One disadvantage of the Box-Muller method is that computing sines and cosines is inefficient. We can get around this problem using the polar method which is described in the algorithm below.

The Polar Algorithm for Generating Two IID  $\mathbf{N}(0,1)$  Random Variables

set  $S = 2$

while  $S > 1$

generate  $U_{1}$  and  $U_{2}$  IID  $U(0,1)$

set  $V_{1} = 2U_{1} - 1$ ,  $V_{2} = 2U_{2} - 1$  and  $S = V_{1}^{2} + V_{2}^{2}$

set

$$
X = \sqrt{\frac{- 2 \log (S)}{S}} V_{1} \quad \text{an d} \quad Y = \sqrt{\frac{- 2 \log (S)}{S}} V_{2}
$$

Can you see why this algorithm works?

# 4.3 Rational Approximations

Let  $X \sim \mathsf{N}(0,1)$  and recall that  $\Phi(x) = \mathbf{P}(X \leq x)$  is the CDF of  $X$ . If  $U \sim U(0,1)$ , then the inverse transform method seeks  $x_u = \Phi^{-1}(U)$ . Finding  $\Phi^{-1}$  in closed form is not possible but instead, we can use rational approximations. These are very accurate and efficient methods for estimating  $x_u$ .

# Example 19 (Rational Approximations)

For  $0.5 \leq u \leq 1$

$$
x_{u} \approx t - \frac{a_{0} + a_{1} t}{1 + b_{1} t + b_{2} t^{2}}
$$

where  $a_0, a_1, b_1$  and  $b_2$  are constants, and  $t = \sqrt{-2\log(1 - u)}$ . The error is bounded in this case by .003. Even more accurate approximations are available, and since they are very fast, many packages (including Matlab) use them for generating normal random variables.

# 5 The Multivariate Normal Distribution

If the  $n$ -dimensional vector  $\mathbf{X}$  is multivariate normal with mean vector  $\mu$  and covariance matrix  $\Sigma$  then we write

$$
\mathbf {X} \sim \mathrm{MN}_{n} (\boldsymbol {\mu}, \boldsymbol {\Sigma}).
$$

The standard multivariate normal has  $\pmb{\mu} = \mathbf{0}$  and  $\pmb{\Sigma} = \mathbf{I}_{\mathbf{n}}$ , the  $n \times n$  identity matrix. The PDF of  $\mathbf{X}$  is given by

$$
f (\mathbf {x}) = \frac{1}{(2 \pi)^{n / 2} | \boldsymbol {\Sigma} |^{1 / 2}} e^{- \frac{1}{2} (\mathbf {x} - \boldsymbol {\mu})^{\top} \boldsymbol {\Sigma}^{- 1} (\mathbf {x} - \boldsymbol {\mu})} \tag {3}
$$

where  $|\cdot|$  denotes the determinant, and its characteristic function satisfies

$$
\phi_{\mathbf {X}} (\mathbf {s}) = \operatorname{E} \left[ e^{i \mathbf {s}^{\top} \mathbf {X}} \right] = e^{i \mathbf {s}^{\top} \boldsymbol {\mu} - \frac{1}{2} \mathbf {s}^{\top} \boldsymbol {\Sigma} s}. \tag {4}
$$

Recall again our partition of  $\mathbf{X}$  into  $\mathbf{X_1} = (X_1,\ldots ,X_k)^\top$  and  $\mathbf{X_2} = (X_{k + 1},\dots ,X_n)^\top$ . If we extend this notation naturally so that

$$
\boldsymbol {\mu} = \left( \begin{array}{c} \mu_{1} \\ \mu_{2} \end{array} \right) \quad \text{an d} \quad \boldsymbol {\Sigma} = \left( \begin{array}{c c} \boldsymbol {\Sigma}_{1 1} & \boldsymbol {\Sigma}_{1 2} \\ \boldsymbol {\Sigma}_{2 1} & \boldsymbol {\Sigma}_{2 2} \end{array} \right).
$$

then we obtain the following results regarding the marginal and conditional distributions of  $\mathbf{X}$ .

# Marginal Distribution

The marginal distribution of a multivariate normal random vector is itself multivariate normal. In particular,  $\mathbf{X}_{\mathrm{i}}\sim \mathsf{MN}(\mu_{\mathrm{i}},\Sigma_{\mathrm{ii}})$ , for  $i = 1,2$

# Conditional Distribution

Assuming  $\Sigma$  is positive definite, the conditional distribution of a multivariate normal distribution is also a multivariate normal distribution. In particular,

$$
\mathbf {X}_{\mathbf {2}} \mid \mathbf {X}_{\mathbf {1}} = \mathbf {x}_{\mathbf {1}} \sim \operatorname{MN} (\mu_{\mathbf {2}, 1}, \Sigma_{\mathbf {2}, 1})
$$

where  $\mu_{2,1} = \mu_2 + \Sigma_{21}\Sigma_{11}^{-1}\left(\mathbf{x}_1 - \mu_1\right)$  and  $\Sigma_{2,1} = \Sigma_{22} - \Sigma_{21}\Sigma_{11}^{-1}\Sigma_{12}$ .

# Linear Combinations

Linear combinations of multivariate normal random vectors remain normally distributed with mean vector and covariance matrix given by

$$
\mathrm{E} \left[ \mathbf {A} \mathbf {X} + \mathbf {a} \right] = \mathbf {A} \mathrm{E} \left[ \mathbf {X} \right] + \mathbf {a}
$$

$$
\operatorname{Co v} (\mathbf {A X} + \mathbf {a}) = \mathbf {A} \operatorname{Co v} (\mathbf {X}) \mathbf {A}^{\top}.
$$

# Estimation of Multivariate Normal Distributions

The simplest and most common method of estimating a multivariate normal distribution is to take the sample mean vector and sample covariance matrix as our estimators of  $\pmb{\mu}$  and  $\pmb{\Sigma}$ , respectively. It is easy to justify this choice since they are the maximum likelihood estimators. It is also common to take  $n / (n - 1)$  times the sample covariance matrix as an estimator of  $\pmb{\Sigma}$  as this estimator is known to be unbiased.

# Testing Normality and Multivariate Normality

There are many tests that can be employed for testing normality of random variables and vectors. These include standard univariate tests and tests based on QQplots, as well omnibus moment tests based on whether the skewness and kurtosis of the data are consistent with a multivariate normal distribution. Section 3.1.4 of MFE should be consulted for details on these tests.

# 5.1 Generating Multivariate Normally Distributed Random Vectors

Suppose that we wish to generate  $\mathbf{X} = (X_{1},\ldots ,X_{n})$  where  $\mathbf{X}\sim \mathsf{MN}_n(\mathbf{0},\mathbf{\Sigma})$ . Note that it is then easy to handle the case where  $\mathbb{E}[\mathbf{X}]\neq \mathbf{0}$ . Let  $\mathbf{Z} = (Z_1,\dots,Z_n)^\top$  where the  $Z_{i}$ 's are IID  $\mathsf{N}(0,1)$  for  $i = 1,\ldots ,n$ . If  $\mathbf{C}$  is an  $(n\times m)$  matrix then it follows that

$$
\mathbf {C}^{\top} \mathbf {Z} \sim \operatorname{MN} (0, \mathbf {C}^{\top} \mathbf {C}).
$$

Our problem therefore reduces to finding  $\mathbf{C}$  such that  $\mathbf{C}^{\top}\mathbf{C} = \boldsymbol{\Sigma}$ . We can use the Cholesky decomposition of  $\boldsymbol{\Sigma}$  to find such a matrix,  $\mathbf{C}$ .

# The Cholesky Decomposition of a Symmetric Positive-Definite Matrix

A well known fact from linear algebra is that any symmetric positive-definite matrix,  $\mathbf{M}$ , may be written as

$$
\mathbf {M} = \mathbf {U}^{\top} \mathbf {D} \mathbf {U}
$$

where  $\mathbf{U}$  is an upper triangular matrix and  $\mathbf{D}$  is a diagonal matrix with positive diagonal elements. Since  $\pmb{\Sigma}$  is symmetric positive-definite, we can therefore write

$$
\boldsymbol {\Sigma} = \mathbf {U}^{\top} \mathbf {D} \mathbf {U} = (\mathbf {U}^{\top} \sqrt{\mathbf {D}}) (\sqrt{\mathbf {D}} \mathbf {U}) = (\sqrt{\mathbf {D}} \mathbf {U})^{\top} (\sqrt{\mathbf {D}} \mathbf {U}).
$$

The matrix  $\mathbf{C} = \sqrt{\mathbf{D}}\mathbf{U}$  therefore satisfies  $\mathbf{C}^{\top}\mathbf{C} = \boldsymbol{\Sigma}$ . It is called the Cholesky Decomposition of  $\boldsymbol{\Sigma}$ .

# The Cholesky Decomposition in Matlab and R

It is easy to compute the Cholesky decomposition of a symmetric positive-definite matrix in Matlab and R using the chol command and so it is also easy to simulate multivariate normal random vectors. As before, let  $\pmb{\Sigma}$  be an  $(n\times n)$  variance-covariance matrix and let  $\mathbf{C}$  be its Cholesky decomposition. If  $\mathbf{X}\sim \mathrm{MN}(\mathbf{0},\mathbf{\Sigma})$  then we can generate random samples of  $\mathbf{X}$  in Matlab as follows:

Sample Matlab Code  

<table><tr><td colspan="3">&gt;&gt; Sigma = [1.0 0.5 0.5; 
0.5 2.0 0.3; 
0.5 0.3 1.5];</td></tr><tr><td colspan="3">&gt;&gt; C = chol(Sigma);</td></tr><tr><td colspan="3">&gt;&gt; Z = randn(3,1000000);</td></tr><tr><td colspan="3">&gt;&gt; X = C&#x27;*Z;</td></tr><tr><td colspan="3">&gt;&gt; cov(X&#x27;)</td></tr><tr><td>ans = 
0.9972</td><td>0.4969</td><td>0.4988</td></tr><tr><td>0.4969</td><td>1.9999</td><td>0.2998</td></tr><tr><td>0.4988</td><td>0.2998</td><td>1.4971</td></tr></table>

We must be very careful in  $\mathbf{Matlab}^2$  and R to pre-multiply  $Z$  by  $\mathbf{C}^\top$  and not C. We have the following algorithm for generating multivariate random vectors,  $\mathbf{X}$ .

Generating Correlated Normal Random Variables  

```txt
generate  $\mathbf{Z}\sim \mathrm{MN}(0,\mathbf{I})$    
/\* Now compute the Cholesky Decomposition \*/   
compute C such that  $\mathbf{C}^{\top}\mathbf{C} = \boldsymbol{\Sigma}$    
set  $\mathbf{X} = \mathbf{C}^{\top}\mathbf{Z}$
```

# 6 Simulating Poisson Processes

Recall that a Poisson process,  $N(t)$ , with intensity  $\lambda$  is a process such that

$$
\mathbf {P} \left(N (t) = r\right) = \frac{\left(\lambda t\right)^{r} e^{- \lambda t}}{r !}.
$$

For a Poisson process the numbers of arrivals in non-overlapping intervals are independent and the distribution of the number of arrivals in an interval only depends on the length of the interval.

The Poisson process is good for modeling many phenomena including the emission of particles from a radioactive source and the arrivals of customers to a queue. The  $i^{th}$  inter-arrival time,  $X_{i}$ , is defined to be the interval between the  $(i - 1)^{th}$  and  $i^{th}$  arrivals of the Poisson process, and it is easy to see that the  $X_{i}$ 's are IID  $\sim \mathrm{Exp}(\lambda)$ . In particular, this means we can simulate a Poisson process with intensity  $\lambda$  by simply generating the inter-arrival times,  $X_{i}$ , where  $X_{i} \sim \mathrm{Exp}(\lambda)$ . We have the following algorithm for simulating the first  $T$  time units of a Poisson process:

Simulating  $T$  Time Units of a Poisson Process  

```latex
set  $t = 0$ $I = 0$    
generate  $U$    
set  $t = t - \log (U) / \lambda$    
while  $t <   T$ $\begin{array}{r}\mathbf{set}I = I + 1,S(I) = t\\ \mathbf{generate}U\\ \mathbf{set}t = t - \log (U) / \lambda \end{array}$
```

# 6.1 The Non-Homogeneous Poisson Process

A non-homogeneous Poisson process,  $N(t)$ , is obtained by relaxing the assumption that the intensity,  $\lambda$ , is constant. Instead we take it to be a deterministic function of time,  $\lambda(t)$ . More formally, if  $\lambda(t) \geq 0$  is the intensity of the process at time  $t$ , then we say that  $N(t)$  is a non-homogeneous Poisson process with intensity  $\lambda(t)$ . Define the function  $m(t)$  by

$$
m (t) := \int_{0}^{t} \lambda (s) d s.
$$

Then it can be shown that  $N(t + s) - N(t)$  is a Poisson random variable with parameter  $m(t + s) - m(t)$ , i.e.,

$$
\mathbf {P} (N (t + s) - N (t) = r) = \frac{\exp (- m_{t , s}) (m_{t , s})^{r}}{r !}
$$

where  $m_{t,s} \coloneqq m(t + s) - m(t)$ .

# Simulating a Non-Homogeneous Poisson Process

Before we describe the thinning algorithm for simulating a non-homogeneous Poisson process, we first need the following<sup>3</sup> proposition.

Proposition 1 Let  $N(t)$  be a Poisson process with constant intensity  $\lambda$ . Suppose that an arrival that occurs at time  $t$  is counted with probability  $p(t)$ , independently of what has happened beforehand. Then the process of counted arrivals is a non-homogeneous Poisson process with intensity  $\lambda(t) = \lambda p(t)$ .

Suppose now  $N(t)$  is a non-homogeneous Poisson process with intensity  $\lambda(t)$  and that there exists a  $\lambda$  such that  $\lambda(t) \leq \lambda$  for all  $t \leq T$ . Then we can use the following algorithm, based on Proposition 1, to simulate  $N(t)$ .

# The Thinning Algorithm for Simulating  $T$  Time Units of a NHPP

```txt
set  $t = 0$ $I = 0$    
generate  $U_{1}$    
set  $t = t - \log (U_1) / \lambda$    
while  $t <   T$    
generate  $U_{2}$    
if  $U_{2}\leq \lambda (t) / \lambda$  then set  $I = I + 1$ $S(I) = t$  generate  $U_{1}$    
set  $t = t - \log (U_1) / \lambda$
```

# Questions

1. Can you give a more efficient version of the algorithm when there exists  $\lambda > 0$  such that  $\min_{0 \leq t \leq T} \lambda(t) \geq \lambda$ ?  
2. Can you think of another algorithm for simulating a non-homogeneous Poisson process that is not based on thinning?

# 6.2 Credit Derivatives Models

Many credit derivatives models use Cox processes to model company defaults. A Cox process,  $C(t)$ , is similar to a non-homogeneous Poisson process except that the intensity function,  $\lambda(t)$ , is itself a stochastic process. However, conditional upon knowing  $\lambda(t)$  for all  $t \in [0,T]$ ,  $C(t)$  is a non-homogeneous Poisson process. In credit derivatives models, bankruptcy of a company is often modelled as occurring on the first arrival in the Cox process where the intensity at time  $t$ ,  $\lambda(t)$ , generally depends on the level of other variables in the economy. Such variables might include, for example, interest rates, credit ratings and stock prices, all of which are themselves random. An understanding of and ability to simulate non-homogeneous Poisson processes is clearly necessary for analyzing such credit derivatives models.

# 7 Simulating (Geometric) Brownian Motion

Definition 1 A stochastic process,  $\{X_{t}:t\geq 0\}$ , is a Brownian motion with parameters  $(\mu ,\sigma)$  if

1. For  $0 < t_1 < t_2 < \ldots < t_{n-1} < t_n$

$$
\left(X_{t_{2}} - X_{t_{1}}\right), \left(X_{t_{3}} - X_{t_{2}}\right), \ldots , \left(X_{t_{n}} - X_{t_{n - 1}}\right)
$$

are mutually independent.

2. For  $s > 0$ ,  $X_{t + s} - X_t \sim N(\mu s, \sigma^2 s)$  and  
3. $X_{t}$  is a continuous function of  $t$  w.p. 1.

We say that  $X$  is a  $B(\mu, \sigma)$  Brownian motion with drift,  $\mu$ , and volatility,  $\sigma$ . When  $\mu = 0$  and  $\sigma = 1$  we have a standard Brownian motion (SBM). We will use  $B_{t}$  to denote a SBM and we will always assume (unless otherwise stated) that  $B_{0} = 0$ . Note that if  $X \sim B(\mu, \sigma)$  and  $X_{0} = x$  then we can write

$$
X_{t} = x + \mu t + \sigma B_{t}
$$

where  $B$  is a SBM. We will usually write a  $B(\mu, \sigma)$  Brownian motion in this way.

Remark 2 Bachelier (1900) and Einstein (1905) were the first to explore Brownian motion from a mathematical viewpoint whereas Wiener (1920's) was the first to show that it actually exists as a well-defined mathematical entity.

# Questions

1. What is  $\mathbb{E}[B_{t + s}B_s]$ ?  
2. What is  $\mathbb{E}[X_{t + s}X_s]$  where  $X\sim B(\mu ,\sigma)?$  
3. Let  $B$  be a SBM and let  $Z_{t} \coloneqq |B_{t}|$ . What is the CDF of  $Z_{t}$  for  $t$  fixed?

# 7.1 Simulating a Standard Brownian Motion

It is not possible to simulate an entire sample path of Brownian motion between 0 and  $T$  as this would require an infinite number of random variables. This is not always a problem, however, since we often only wish to simulate the value of Brownian motion at certain fixed points in time. For example, we may wish to simulate  $B_{t_i}$  for  $t_1 < t_2 < \ldots < t_n$ , as opposed to simulating  $B_t$  for every  $t \in [0,T]$ .

Sometimes, however, the quantity of interest,  $\theta$ , that we are trying to estimate does indeed depend on the entire sample path of  $B_{t}$  in  $[0,T]$ . In this case, we can still estimate  $\theta$  by again simulating  $B_{t_i}$  for  $t_1 < t_2 < \ldots < t_n$  but where we now choose  $n$  to be very large. We might, for example, choose  $n$  so that  $|t_{i + 1} - t_i| < \epsilon$  for all  $i$ , where  $\epsilon > 0$  is very small. By choosing  $\epsilon$  to be sufficiently small, we hope to minimize the numerical error (as opposed to the statistical error), in estimating  $\theta$ . We will return to this issue later in the course when we learn how to simulate stochastic differential equations (SDE's).

In either case, we need to be able to simulate  $B_{t_i}$  for  $t_1 < t_2 < \ldots < t_n$  and for a fixed  $n$ . We will now see how to do this. The first observation we make is that

$$
\left(B_{t_{2}} - B_{t_{1}}\right), \left(B_{t_{3}} - B_{t_{2}}\right), \ldots , \left(B_{t_{n}} - B_{t_{n - 1}}\right)
$$

are mutually independent, and for  $s > 0$ ,  $B_{t + s} - B_t \sim \mathsf{N}(0,s)$ . The idea then is as follows: we begin with  $t_0 = 0$  and  $B_{t_0} = 0$ . We then generate  $B_{t_1}$  which we can do since  $B_{t_1} \sim \mathsf{N}(0,t_1)$ . We now generate  $B_{t_2}$  by first observing that  $B_{t_2} = B_{t_1} + (B_{t_2} - B_{t_1})$ . Then since  $(B_{t_2} - B_{t_1})$  is independent of  $B_{t_1}$ , we can generate  $B_{t_2}$  by generating an  $\mathsf{N}(0,t_2 - t_1)$  random variable and simply adding it to  $B_{t_1}$ . More generally, if we have already generated  $B_{t_i}$  then we can generate  $B_{t_{i + 1}}$  by generating an  $\mathsf{N}(0,t_{i + 1} - t_i)$  random variable and adding it to  $B_{t_i}$ . We have the following algorithm.

# Simulating a Standard Brownian Motion

$$
\mathbf {s e t} \quad t_{0} = 0, B_{t_{0}} = 0
$$

$$
\text{fo r} i = 1 \text{to} n
$$

$$
\operatorname{ge ne ra te} X \sim \mathsf {N} (0, t_{i} - t_{i - 1}))
$$

$$
\mathbf {s e t} B_{t_{i}} = B_{t_{i - 1}} + X
$$

Remark 3 It is very important that when you generate  $B_{t_{i+1}}$ , you do so conditional on the value of  $B_{t_i}$ . If you generate  $B_{t_i}$  and  $B_{t_{i+1}}$  independently of one another then you are effectively simulating from different sample paths of the Brownian motion. This is not correct! In fact when we generate  $(B_{t_1}, B_{t_2}, \ldots, B_{t_n})$  we are actually generating a random vector that does not consist of IID random variables.

# Simulating a  $\mathbf{B}(\mu, \sigma)$  Brownian Motion

Suppose now that we want to simulate a  $B(\mu, \sigma)$  BM,  $X$ , at the times  $t_1, t_2, \ldots, t_{n-1}, t_n$ . Then all we have to do is simulate an SBM,  $(B_{t_1}, B_{t_2}, \ldots, B_{t_n})$ , and use our earlier observation that  $X_t = x + \mu t + \sigma B_t$ .

# Brownian Motion as a Model for Stock Prices?

There are a number of reasons why Brownian motion is not a good model for stock prices. They include

1. The limited liability of shareholders  
2. The fact that people care about returns, not absolute prices so the IID increments property of BM should not hold for stock prices.

As a result, geometric Brownian Motion (GBM) is a much better model for stock prices.

# 7.2 Geometric Brownian Motion

Definition 2 A stochastic process,  $\{X_{t}:t\geq 0\}$ , is a  $(\mu ,\sigma)$  geometric Brownian motion (GBM) if  $\log (X)\sim B(\mu -\sigma^2 /2,\sigma)$ . We write  $X\sim GBM(\mu ,\sigma)$ .

The following properties of GBM follow immediately from the definition of BM:

1. Fix  $t_1, t_2, \ldots, t_n$ . Then  $\frac{X_{t_2}}{X_{t_1}}$ ,  $\frac{X_{t_3}}{X_{t_3}}$ ,  $\frac{X_{t_n}}{X_{t_{n-1}}}$  are mutually independent.  
2. For  $s > 0$ ,  $\log \left(\frac{X_{t + s}}{X_t}\right) \sim \mathsf{N}\left((\mu - \sigma^2 / 2)s, \sigma^2 s\right)$ .  
3. $X_{t}$  is continuous w.p. 1.

Again, we call  $\mu$  the drift and  $\sigma$  the volatility. If  $X \sim GBM(\mu, \sigma)$ , then note that  $X_{t}$  has a lognormal distribution. In particular, if  $X \sim GBM(\mu, \sigma)$ , then  $X_{t} \sim \mathsf{LN}\left((\mu - \sigma^{2}/2)t, \sigma^{2}t\right)$ . In Figure 1 we have plotted some sample paths of Brownian and geometric Brownian motions.

Question: How would you simulate a sample path of  $GBM(\mu, \sigma^2)$  at the fixed times  $0 < t_1 < t_2 < \ldots < t_n$ ?

Answer: Simulate  $\log (X_{t_i})$  first and then take exponentials! (See below for more details.)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/3afc335d-c292-46fd-a083-054af7c05147/22ed15ab72164b572d39515451272a8701cc1ab273451ba6bfb089737312ee07.jpg)  
(a) Brownian motion

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/3afc335d-c292-46fd-a083-054af7c05147/81fdddd36175489c808cbfb74ce551105745581ce4e504ced0275680bc400cc0.jpg)  
(b) Geometric Brownian motion  
Figure 1: Sample paths of Brownian motion,  $B_{t}$ , and geometric Brownian motion (GBM),  $X_{t} = X_{0}e^{(\mu -\sigma^{2} / 2)t + \sigma B_{t}}$ . Parameters for the GBM were  $X_0 = 100$ ,  $\mu = 10\%$  and  $\sigma = 30\%$ .

# Modelling Stock Prices as Geometric Brownian Motion

Suppose  $X \sim \mathrm{GBM}(\mu, \sigma)$ . Note the following:

1. If  $X_{t} > 0$ , then  $X_{t+s}$  is always positive for any  $s > 0$  so limited liability is not violated.  
2. The distribution of  $\frac{X_{t+s}}{X_t}$  only depends on  $s$  so the distribution of returns from one period to the next only depends on the length of the period.

This suggests that GBM might be a reasonable model for stock prices. In fact, we will often model stock prices as GBM's in this course, and we will generally use the following notation:

- $S_0$  is the known stock price at  $t = 0$  
- $S_{t}$  is the random stock price at time  $t$  and

$$
S_{t} = S_{0} e^{(\mu - \sigma^{2} / 2) t + \sigma B_{t}}
$$

where  $B$  is a standard BM. The drift is  $\mu, \sigma$  is the volatility and  $S$  is a therefore a  $GBM(\mu, \sigma)$  process that begins at  $S_0$ .

# Questions

1. What is  $\mathbb{E}[S_t]$ ?  
2. What is  $\mathbb{E}[S_t^2 ]?$  
3. Show  $S_{t + \Delta t} = S_t e^{(\mu -\sigma^2 /2)\Delta t + \sigma (B_{t + \Delta t} - B_t)}$

Suppose now that we wish to simulate  $S \sim GBM(\mu, \sigma)$ . Then we know

$$
S_{t + \Delta t} = S_{t} e^{(\mu - \sigma^{2} / 2) \Delta t + \sigma (B_{t + \Delta t} - B_{t})}
$$

so that we can simulate  $S_{t + \Delta t}$  conditional on  $S_{t}$  for any  $\Delta t > 0$  by simply simulating an  $\mathsf{N}(0, \Delta t)$  random variable.

# Example 20 (Simulating Delta-Hedging in a Black-Scholes Economy)

In this extended example we consider the use of the Black-Scholes model to hedge a vanilla European call option. Moreover, we will assume that the assumptions of Black-Scholes are correct so that the security price has GBM dynamics, it is possible to trade continuously at no cost and borrowing and lending at the risk-free rate are also possible. It is then possible to dynamically replicate the payoff of the call option using a self-financing (s.f.) trading strategy. The initial value of this s.f. strategy is the famous Black-Scholes arbitrage-free price of the option. The s.f. replication strategy requires the continuous delta-hedging of the option but of course it is not practical to do this and so instead we hedge periodically. (Periodic or discrete hedging then results in some replication error but this error goes to 0 as the time interval between re-balancing goes to 0.)

Towards this end, let  $P_{t}$  denote the time  $t$  value of the discrete-time s.f. strategy that attempts to replicate the option payoff and let  $C_0$  denote the initial value of the option. The replicating strategy is then given by

$$
P_{0} := C_{0} \tag {5}
$$

$$
P_{t_{i + 1}} = P_{t_{i}} + \left(P_{t_{i}} - \delta_{t_{i}} S_{t_{i}}\right) r \Delta t + \delta_{t_{i}} \left(S_{t_{i + 1}} - S_{t_{i}} + q S_{t_{i}} \Delta t\right) \tag {6}
$$

where  $\Delta t\coloneqq t_{i + 1} - t_i$  is the length of time between re-balancing (assumed constant for all  $i$ ),  $r$  is the annual risk-free interest rate (assuming per-period compounding),  $q$  is the dividend yield and  $\delta_{t_i}$  is the Black-Scholes delta at time  $t_i$ . This delta is a function of  $S_{t_i}$  and some assumed implied volatility,  $\sigma_{imp}$  say. Note that (5) and (6) respect the self-financing condition. Stock prices are simulated assuming  $S_{t}\sim \mathrm{GBM}(\mu ,\sigma)$  so that

$$
S_{t + \Delta t} = S_{t} e^{(\mu - \sigma^{2} / 2) \Delta t + \sigma \sqrt{\Delta t} Z}
$$

where  $Z \sim \mathsf{N}(0,1)$ . In the case of a short position in a call option with strike  $K$  and maturity  $T$ , the final trading P&L is then defined as

$$
\mathrm{P} \& \mathrm{L} := P_{T} - \left(S_{T} - K\right)^{+} \tag {7}
$$

where  $P_T$  is the terminal value of the replicating strategy in (6). In the Black-Scholes world we have  $\sigma = \sigma_{imp}$  and the P&L will be 0 along every price path in the limit as  $\Delta t \to 0$ .

In practice, however, we do not know \(\sigma\) and so the market (and hence the option hedger) has no way to ensure a value of \(\sigma_{imp}\) such that \(\sigma = \sigma_{imp}\). This has interesting implications for the trading P&L and it means in particular that we cannot exactly replicate the option even if all of the assumptions of Black-Scholes are correct. In Figure 2 we display histograms of the P&L in (7) that results from simulating 100,000 sample paths of the underlying price process with \(S_0 = K = \\(100\). (Other parameters and details are given below the figure.) In the case of the first histogram the true volatility was \(\sigma = 30\%\) with \(\sigma_{imp} = 20\%\) and the option hedger makes (why?) substantial losses. In the case of the second histogram the true volatility was \(\sigma = 30\%\) with \(\sigma_{imp} = 40\%\) and the option hedger makes (why?) substantial gains.

Clearly then this is a situation where substantial errors in the form of non-zero hedging P&L's are made and this can only be due to the use of incorrect model parameters. This example is intended<sup>4</sup> to highlight the importance of not just having a good model but also having the correct model parameters.

Note that the payoff from delta-hedging an option is in general path-dependent, i.e. it depends on the price path taken by the stock over the entire time interval. In fact, it can be shown that the payoff from continuously delta-hedging an option satisfies

$$
\mathsf {P} \& \mathsf {L} = \int_{0}^{T} \frac{S_{t}^{2}}{2} \frac{\partial^{2} V_{t}}{\partial S^{2}} \left(\sigma_{i m p}^{2} - \sigma_{t}^{2}\right) d t \tag {8}
$$

where  $V_{t}$  is the time  $t$  value of the option and  $\sigma_{t}$  is the realized instantaneous volatility at time  $t$ . We recognize the term  $\frac{S_t^2}{2}\frac{\partial^2V_t}{\partial S^2}$  as the dollar gamma. It is always positive for a call or put option, but it goes to zero as the

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/3afc335d-c292-46fd-a083-054af7c05147/07543f52c140076f939f6ba1a63bf50eac0af0eea35cb284262b25c6488bdb57.jpg)  
(a) Delta-hedging P&L: true vol.  $= 30\%$ , imp. vol.  $= 20\%$ .  
(b) Delta-hedging P&L: true vol.  $= 30\%$ , imp. vol.  $= 40\%$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/3afc335d-c292-46fd-a083-054af7c05147/a72eb7ef7d6d98633fd3596eb6b87aa424999537e9d708346d2f61f2aafcba01.jpg)  
Figure 2: Histogram of P&L from simulating 100k paths where we hedge a short call position with \( S_0 = K = \\(100 \), \( T = 6 \) months, true volatility \( \sigma = 30\% \), and \( r = q = 1\% \). A time step of \( dt = 1/2 \), 000 was used so hedging P&L due to discretization error is negligible. The hedge ratio, i.e. delta, was calculated using the implied volatility that was used to calculate the initial option price.

option moves significantly into or out of the money.

Returning to the self-financing trading strategy of (5) and (6), note that we can choose any model we like for the security price dynamics. In particular, we are not restricted to choosing GBM and other diffusion or jump-diffusion models could be used instead. It is interesting to simulate these alternative models and to then observe what happens to the replication error in (8) where the  $\delta_{t_i}$ 's are computed assuming (incorrectly) GBM price dynamics. Note that it is common to perform simulation experiments like this when using a model to price and hedge a particular security. The goal then is to understand how robust the hedging strategy (based on the given model) is to alternative price dynamics that might prevail in practice. Given the appropriate data, one can also back-test the performance of a model on realized historical price data to assess its hedging performance. This back-testing is sometimes called a historical simulation.

# Simulating Multidimensional (Geometric) Brownian Motions

It is often the case that we wish to simulate a vector of geometric Brownian motion paths. In this case we again have

$$
S_{t + \Delta t}^{(i)} = S_{t}^{(i)} e^{\left(\mu_{i} - \sigma_{i}^{2} / 2\right) \Delta t + \sigma_{i} \left(B_{t + \Delta t}^{(i)} - B_{t}^{(i)}\right)} \tag {9}
$$

for  $i = 1, \dots, n$ , and where the Brownian increments  $B_{t + \Delta t}^{(i)} - B_t^{(i)}$  and  $B_{t + \Delta t}^{(j)} - B_t^{(j)}$  have correlation  $\rho_{i,j}$ . Since we know how to simulate multivariate normal distribution using the Cholesky decomposition method of Section 5.1, it should be clear how to simulate (9) for  $i = 1, \dots, n$ .
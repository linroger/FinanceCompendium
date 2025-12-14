---
parent_directory: Lecture Notes
title: LEAST-SQUARES FITTING OF LINEAR MODELS
tags:
aliases:
  - LEAST-SQUARES FITTING OF LINEAR MODELS
parent_folder: Mathematical Finance
subfolder:
key_concepts:
cssclasses: academia
linter-yaml-title-alias: LEAST-SQUARES FITTING OF LINEAR MODELS
---

# LEAST-SQUARES FITTING OF LINEAR MODELS

# 1. THE IMPORTANCE OF LINEAR FITS

Linear model fits are of tremendous importance in finance.

They are, approximately, the most complex model explainable to quantitatively inexperienced people, though the same observation does not apply once error bars are included. They are nontrivial, well-behaved in corner cases, robust and thoroughly studied. Calibration can be fast and easy, parameter counts are small, and they can be viewed as the local limit of all differentiable models.

Though we need to avoid complacency about nonlinear effects, and be aware of false positives, they serve well as initial models in most circumstances. We begin by examining fits using ordinary least squares regressions.

# 2. PERSPECTIVE ON REGRESSION

Regression on a data set may be viewed as one of several sorts of exercise, including

- Minimizing a particular objective function characterizing the sizes of error in a model  
- Maximizing statistical likelihood of a model's correctness  
- Minimizing the expected error in conditional predictions made by the model

In special cases, particularly where we are confident that future errors and past residuals are independent draws from identical normal distributions, and where our objective function is a monotonic function of the sum of squared residuals, these exercises can turn out to be equivalent. This is particularly true of polynomial models and, a forteriori, linear models.

$$
Y \sim \alpha + \beta X
$$

Though the three exercises are philosophically different, our assumptions cause them to result in the same fitted model, i.e. identical values for  $\alpha$  and  $\beta$ . Even in this special case of concomitance in the fitted models, though, these three approaches give us different views of what the strengths and weaknesses might be in our modeling approach. The most important such views are, respectively,

- We have flexibility in defining goodness of fit  
- We must consider whether the data population we work with exhibits unusual properties  
- The goal of fitting a model is ultimately not to have a well-fitted model but rather to have a model good at making predictions.

We begin our course of study with the mathematics of least-squares linear models under the highly restrictive assumptions above. Later on, we will progress to considering the consequences of questioning our assumptions.

# 3. FITTING

Let's begin our mathematical tour by taking the statistical perspective. Assume we have a set of  $N$  observation times indexed by  $t$ , a dependent variable  $Y$  with  $N$  observations  $Y_{t}$  and

a set of explanatory variables  $X_{i}, i = 1,\dots ,K$  having observations  $X_{i,t}$ . Our model is

$$
Y = \alpha + \beta X + u
$$

where  $\alpha$  and  $\beta$  are fixed coefficients and the  $u$  are random i.i.d symmetrically distributed about 0.

3.0.1. Comment. As noted by Craig Venables, our fitting process uses real data, and the "center"  $\alpha$  of that data is unlikely to be near zero. Our fitting process is often really just a local linear approximation. Taylor's theorem tells us that

$$
f (x) = f (x _ {0}) + f ^ {\prime} (x _ {0}) (x - x _ {0}) + O ((x - x _ {0}) ^ {2})
$$

Therefore our model above, while mathematically correct, is often more usefully considered in implementation as being the model

$$
Y = \alpha + (\beta - \beta_ {0}) X + u
$$

or

$$
Y = \alpha + \beta (X - X _ {0}) + u
$$

which, if we were to extend to a centered 2-variable version, would look like

$$
\begin{array}{l} Y = \alpha + \sum_ {i = 1} ^ {n} \beta_ {i} (x _ {i} - x _ {i 0}) + \sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} \beta_ {i j} (x _ {i} - x _ {i 0}) (x _ {j} - x _ {j 0}) \\ + \left[ \sigma + \sum_ {i = 1} ^ {n} \gamma_ {i} (x _ {i} - x _ {i 0}) \right] Z + \delta Z ^ {2} \\ \end{array}
$$

Our errors in the linear model will therefore appear in four flavors, arising from our ignorance of various terms above

- curvature in the main effects (quadratic terms in one variable -  $\beta_{ii}$ )  
- linear-linear interactions (cross product terms in two variables -  $\beta_{ij}$ )  
- variance heterogeneity (terms in  $(x_{i} - x_{i0})Z$ ), and  
- skewness  $Z^{2}$

Definition 3.1. The expectation of a variable  $A$  is defined as the probability-weighted value over our entire state space  $\Omega$

$$
\mathbb {E} (A) := \int_ {\Omega} A d P
$$

where we are typically considering  $\Omega$  to be standard euclidean space with metric  $P$ .

Now, surely if our model coefficients were chosen such that  $\mathbb{E}(u) \neq 0$ , then the presumed symmetry of the distribution of  $u$  would mean a better model is available by adding a further constant to  $\alpha$ . Therefore, we have a primary statistical condition that the first moment of  $u$  be zero, and therefore

$$
\mathbb {E} (Y) = \alpha + \beta \mathbb {E} (X)
$$

Estimates of these expectations are easily available by computing the sample mean of  $Y$

$$
\hat {\mathbb {E}} (Y) = \frac {1}{N} \sum y _ {t}
$$

and likewise for  $\hat{\mathbb{E}}(X)$ . We therefore have one equation with two unknowns,

$$
\alpha = \beta \hat {\mathbb {E}} (X) - \hat {\mathbb {E}} (Y)
$$

and find ourselves in need of further information, which will have to be derived from the second moment.

# 3.1. Some Probability Theory.

Definitions 3.2. The conditional probability  $P(A|B)$ , the probability of  $A$  conditional on  $B$  is

$$
\frac {P (A \cap B)}{P (B)}.
$$

If  $P(A|B) = P(A)$  we say that  $A$  and  $B$  are independent. Random variables  $W, Z$  are independent if, for all  $w, z \in \mathbb{R}$ , the events  $\{W < w\}, \{Z < z\}$  are independent. We define the cumulative distribution function of  $W$  as

$$
\Psi_ {W} (w) = P (W <   w)
$$

and note that by the Radon-Nikodym theorem there exists a (generalized) derivative  $\phi_W$  of  $\Psi_W$  such that

$$
\Psi_ {W} (w) = \int_ {- \infty} ^ {w} \phi_ {W} (x) d x.
$$

We define the conditional distribution of  $W$  on  $Z$  as the function from  $\mathbb{R} \times \mathbb{R} \to \mathbb{R}$

$$
\Psi_ {W | Z} (w, z) = l i m _ {\Delta z \rightarrow 0} P (W <   w | z \leq Z <   z + \Delta z)
$$

and its density function  $\phi_{W|Z}(w,z)$  in the obvious manner. We define the  $p^{\text{th}}$  moment of  $W$  as  $\mathbb{E}(W^p)$  and designate the variance as the second moment. We analogize to two variables, labeling as covariance the quantity  $\mathbb{E}\left((W - \mathbb{E}(W))(Z - \mathbb{E}(Z))\right)$ .

Lemma 3.3. Law of Iterated Expectations For any two random variables  $W, Z$ ,

$$
\mathbb {E} \left(\mathbb {E} \left(W | Z\right)\right) = \mathbb {E} (W).
$$

Proof.

$$
\begin{array}{l} \mathbb {E} \left(\mathbb {E} \left(W | Z\right)\right) = \int_ {z = - \infty} ^ {\infty} \mathbb {E} \left(W | Z\right) d P \\ = \int_ {z = - \infty} ^ {\infty} d z \int_ {w = - \infty} ^ {\infty} w d w \\ = \int_ {w = - \infty} ^ {\infty} w d w \int_ {z = - \infty} ^ {\infty} d z \\ = \int_ {w = - \infty} ^ {\infty} w d w \\ = \mathbb {E} (W) \\ \end{array}
$$

□

Lemma 3.4. If two random variables  $W, Z$  are independent, then

$$
\mathbb {E} \left(W | Z\right) = \mathbb {E} (W).
$$

and

$$
\mathbb {E} \left(W Z\right) = \mathbb {E} (W) \mathbb {E} (Z).
$$

Proof. Independence implies  $\phi_{W|Z}(w|z) = \phi_W(w)$ , so

$$
\mathbb {E} (W | Z = z) = \int w \phi_ {W | Z} (a | b) = \int w \phi_ {W} (w) = \mathbb {E} (W).
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/d6b3974c-f53e-44dd-9cd9-e1a2bb34b308/93f60d6b94bf5de2e18857c074e1b868af64bc08f8278b6a76dbf19a8487f609.jpg)

# 3.2. Second Moments For Regression. Recall now that our model is

$$
Y = \alpha + \beta X + u
$$

and the  $u$  are random i.i.d symmetrically distributed about 0. Let us now assume also that the  $u$  are independent of  $X$ , which in reality is almost never true. Then we can compute that

$$
\begin{array}{l} \mathbb {E} (Y X ^ {*}) = \mathbb {E} (\alpha X) + \mathbb {E} (\beta X X ^ {*}) + \mathbb {E} (u X ^ {*}) \\ = \alpha \mathbb {E} (X ^ {*}) + \beta \mathbb {E} (X X ^ {*}) + \mathbb {E} (u) \mathbb {E} (X ^ {*}) \\ \end{array}
$$

by independence of the constants and  $u$  from  $X$ . As we saw above,  $\mathbb{E}(u) = 0$  and we will want to require that

$$
\mathbb {E} (Y) = \alpha + \beta \mathbb {E} (X)
$$

leaving us with

$$
\alpha = \mathbb {E} (Y) - \beta \mathbb {E} (X)
$$

and so

$$
\mathbb {E} (Y X ^ {*}) = \left(\mathbb {E} (Y) - \beta \mathbb {E} (X)\right) \mathbb {E} (X ^ {*}) + \beta \mathbb {E} (X X ^ {*})
$$

which solves to

$$
\beta = \left(\mathbb {E} (Y X ^ {*}) - \mathbb {E} (Y) \mathbb {E} (X)\right) \left(\mathbb {E} (X) \mathbb {E} (X ^ {*}) - \mathbb {E} (X X ^ {*})\right) ^ {- 1}.
$$

For fitting actual data, we therefore estimate  $\beta$  as

$$
\beta = \left(\hat {\mathbb {E}} (Y X ^ {*}) - \hat {\mathbb {E}} (Y) \hat {\mathbb {E}} (X)\right) \left(\hat {\mathbb {E}} (X) \hat {\mathbb {E}} (X ^ {*}) - \hat {\mathbb {E}} (X X ^ {*})\right) ^ {- 1}.
$$

or, in one dimension,

$$
\beta = \frac {\hat {\mathbb {E}} (Y X) - \hat {\mathbb {E}} (Y) \hat {\mathbb {E}} (X)}{\hat {\mathbb {E}} (X) ^ {2} - \hat {\mathbb {E}} (X X ^ {*})}.
$$

Note that, due to the convexity of the square function and the triangle inequality, this equation is well-defined except when  $X_{j}$  is a constant for some component  $j$ . When there exists a  $j$  such that  $X_{j}$  is a constant then the matrix  $\left(\mathbb{E}(X)^2 - \mathbb{E}(XX^*)\right)^{-1}$  is degenerate and not invertible<sup>1</sup>. This computation, the so-called Method of Moments, is an extremely useful way of thinking about regression and is the basis of many convenient forms of mathematical proofs of regression's properties. However, except in one or two dimensions, matrix inversion is an expensive and numerically unstable operation, so we need to be careful about using it to actually compute our coefficients.

The method of moments is far more broadly useful than as a simple regression formula. It is widely used in time series analysis and derivatives pricing to form tractable equations for fitting highly nonlinear models.

# 4. SQUARED ERRORS

Let us now take another perspective on fitting the model

$$
Y = \alpha + \beta X + u
$$

where we consider each manifestation of  $u$  to be an "error" in the model's description of reality. For a parameter pair  $\tilde{\alpha}, \tilde{\beta}$  and a given data set  $X_{i}, Y_{i}$ , we define  $e_{i} = Y_{i} - \tilde{\alpha} + \tilde{\beta} X_{i}$  and the 2-parameter objective function

$$
f (\tilde {\alpha}, \tilde {\beta}; \pmb {e}) = \sum u _ {i} ^ {2}
$$

and refer to it as the Sum of Squared Errors or SSE. A pair  $\alpha, \beta$  at which  $f$  takes on its minimal value are the "best available" set of parameters conditional on our choice of objective function. Generically, the problem of minimizing a 2-parameter function such as this is mathematically impossible in closed form and computationally difficult in practice. However, the extreme simplicity of the SSE allows us to minimize  $f$  quickly and easily in this special case.

It is unsurprising to find that a two-moment method of moments calibration of our model is mathematically equivalent to minimizing the sum of squared errors. Each sample of  $u$  contributes its square to the overall variance between the model and our measurements in the same manner it contributes its square to the SSE in the objective function. For convenience, we will momentarily depart from the CAPM-inspired choice of coefficients  $\alpha, \beta$  and switch to statistical notation. Let us say that we want to solve for a parameter vector

$$
\pmb {\beta} = \{\beta_ {0}, \beta_ {1}, \dots , \beta_ {n} \} ^ {*}
$$

where typically  $\beta_0$  would be the constant term, or equivalently the coefficient on a constant (always taken to be 1.0) and the remaining dimensions would cover  $n - 1$  nontrivial variables. An exact solution to a linear model with independent variables  $x^{(1)}, x^{(2)}$ , if it existed, would find that we had a  $\pmb{\beta}$  such that

$$
\left( \begin{array}{c c c} 1 & x _ {1} ^ {(1)} & x _ {1} ^ {(2)} \\ 1 & x _ {2} ^ {(1)} & x _ {2} ^ {(2)} \\ & \vdots \\ 1 & x _ {m} ^ {(1)} & x _ {m} ^ {(2)} \end{array} \right) \left( \begin{array}{c} \beta_ {0} \\ \beta_ {1} \\ \beta_ {2} \\ \vdots \\ \beta_ {n - 1} \end{array} \right) = \left( \begin{array}{c} y _ {0} \\ y _ {1} \\ y _ {2} \\ \vdots \\ y _ {m} \end{array} \right)
$$

Let us label the columns of the initial design matrix  $\mathbf{X}$  in Equation 4 as

$$
\mathbf {X} = \left[ \begin{array}{l l l l} \mathbf {X _ {1}} & \mathbf {X _ {2}} & \dots & \mathbf {X _ {n}} \end{array} \right]
$$

Then our goal is to choose  $\beta$  so as to minimize

$$
g (\beta) = \sqrt {(\mathbf {X} \beta - \mathbf {y}) (\mathbf {X} \beta - \mathbf {y}) ^ {*}}.
$$

Of course if  $\beta$  minimizes  $g$  then it also minimizes  $g^2$ , so right away we can see that it is sufficient to minimize

$$
f (\beta) = (\mathbf {X} \beta - \mathbf {y}) (\mathbf {X} \beta - \mathbf {y}) ^ {*}.
$$

Now suppose we have a solution,  $\beta$ , to the least-squares minimization problem, and a perturbation  $\tilde{\beta}$  of it where

$$
\tilde {\beta} - \beta = \alpha \mathbf {z}
$$

and we consider letting  $\alpha \to 0$ . We can of course write the SSE corresponding to  $\tilde{\beta}$  as

$$
\begin{array}{l} \left(\mathbf {X} (\beta + \alpha \mathbf {z}) - \mathbf {y}\right) \left(\mathbf {X} (\beta + \alpha \mathbf {z}) - \mathbf {y}\right) ^ {*} \\ = (\mathbf {X} \beta - \mathbf {y}) (\mathbf {X} \beta - \mathbf {y}) ^ {*} + 2 \alpha \mathbf {z} ^ {*} \mathbf {X} ^ {*} (\mathbf {X} \beta - \mathbf {y}) + \alpha^ {2} (\mathbf {X} \beta) (\mathbf {X} \beta) ^ {*} \\ \end{array}
$$

Note that the third term on the right is a sum of squares, so

$$
\begin{array}{l} (\mathbf {X} (\beta + \alpha \mathbf {z}) - \mathbf {y}) (\mathbf {X} (\beta + \alpha \mathbf {z}) - \mathbf {y}) ^ {*} \\ <   (\mathbf {X} \beta - \mathbf {y}) (\mathbf {X} \beta - \mathbf {y}) ^ {*} + 2 \alpha \mathbf {z} ^ {*} \mathbf {X} ^ {*} (\mathbf {X} \beta - \mathbf {y}) \\ \end{array}
$$

If we set  $\mathbf{z}$  to

$$
\mathbf {z} = - \mathbf {X} ^ {*} (\mathbf {X} \boldsymbol {\beta} - \mathbf {y})
$$

then the second term on the right becomes

$$
- 2 \alpha (\mathbf {X} \beta - \mathbf {y}) ^ {*} \mathbf {X} \mathbf {X} ^ {*} (\mathbf {X} \beta - \mathbf {y})
$$

which is a negative number times a sum of squares. This yields

$$
(\mathbf {X} (\beta + \alpha \mathbf {z}) - \mathbf {y}) (\mathbf {X} (\beta + \alpha \mathbf {z}) - \mathbf {y}) ^ {*} <   (\mathbf {X} \beta - \mathbf {y}) (\mathbf {X} \beta - \mathbf {y}) ^ {*},
$$

contradicting our assumption that  $\beta$  minimized the SSE. How can this be? It must imply that the second term on the right was actually zero, i.e. that

$$
\mathbf {X} ^ {*} (\mathbf {X} \beta - \mathbf {y}) = \mathbf {0}
$$

or equivalently that

$$
\mathbf {X} ^ {*} \mathbf {X} \boldsymbol {\beta} = \mathbf {X} ^ {*} \mathbf {y}.
$$

We call this the normal equations, and it seems to imply that the model coefficients  $\beta$  that we seek are available by computing

$$
\beta = (X ^ {*} X) ^ {- 1} X ^ {*} y
$$

where we use the term pseudoinverse to describe the matrix  $(X^{*}X)^{-1}X^{*}$ . The quantity  $\rho_{\mathrm{LS}} = ||X\beta -y||_2$  characterizes the sizes of residuals.

4.1. Weighted Regression. If we wish to weight our observations, then we think of ourselves as having a diagonal matrix  $W$  containing those weights. In this case we obtain

$$
\mathbf {X} ^ {*} \mathbf {W} \mathbf {X} \boldsymbol {\beta} = \mathbf {X} ^ {*} \mathbf {W} \mathbf {y}.
$$

Uses of weights include

- Handling different error estimates for different observations  
- Fitting according to practical importance of points  
- Local regressions

# 5. THE COMPUTATIONAL COMPLEXITY OF INVERTING A MATRIX

Matrix inverses like the one above appear frequently in the theory of regression, in finite difference schemes for option pricing, and in risk computations. However, they should essentially never be computed, being both computationally expensive and unstable (sensitive to round-off error). For a scalar  $\sigma$ , viewed as a 1-dimensional matrix, there is no problem in

computing  $\sigma^{-1} = 1 / \sigma$ . However, in two dimensions the operation is noticeably more complex, with the matrix

$$
\left( \begin{array}{l l} \sigma_ {1, 1} & \sigma_ {1, 2} \\ \sigma_ {2, 1} & \sigma_ {2, 2} \end{array} \right)
$$

having a symbolic inverse

$$
\left( \begin{array}{c c} \frac {\sigma_ {2 , 2}}{\sigma_ {1 , 1} \sigma_ {2 , 2} - \sigma_ {1 , 2} \sigma_ {2 , 1}} & - \frac {\sigma_ {1 , 2}}{\sigma_ {1 , 1} \sigma_ {2 , 2} - \sigma_ {1 , 2} \sigma_ {2 , 1}} \\ - \frac {\sigma_ {2 , 1}}{\sigma_ {1 , 1} \sigma_ {2 , 2} - \sigma_ {1 , 2} \sigma_ {2 , 1}} & \frac {\sigma_ {1 , 1}}{\sigma_ {1 , 1} \sigma_ {2 , 2} - \sigma_ {1 , 2} \sigma_ {2 , 1}} \end{array} \right)
$$

involving (naively) 24 floating point operations. In 3 dimensions, the situation already becomes dire, with the matrix

$$
\left( \begin{array}{l l l} \sigma_ {1, 1} & \sigma_ {1, 2} & \sigma_ {1, 3} \\ \sigma_ {2, 1} & \sigma_ {2, 2} & \sigma_ {2, 3} \\ \sigma_ {3, 1} & \sigma_ {3, 2} & \sigma_ {3, 3} \end{array} \right)
$$

having a symbolic inverse

$$
\left( \begin{array}{c c c} \frac {\sigma_ {2 , 2} \sigma_ {3 , 3} - \sigma_ {2 , 3} \sigma_ {3 , 2}}{D} & \frac {\sigma_ {1 , 3} \sigma_ {3 , 2} - \sigma_ {1 , 2} \sigma_ {3 , 3}}{D} & \frac {\sigma_ {1 , 2} \sigma_ {2 , 3} - \sigma_ {1 , 3} \sigma_ {2 , 2}}{D} \\ \frac {\sigma_ {2 , 3} \sigma_ {3 , 1} - \sigma_ {2 , 1} \sigma_ {3 , 3}}{D} & \frac {\sigma_ {1 , 1} \sigma_ {3 , 3} - \sigma_ {1 , 3} \sigma_ {3 , 1}}{D} & \frac {\sigma_ {1 , 3} \sigma_ {2 , 1} - \sigma_ {1 , 1} \sigma_ {2 , 3}}{D} \\ \frac {\sigma_ {2 , 1} \sigma_ {3 , 2} - \sigma_ {2 , 2} \sigma_ {3 , 1}}{D} & \frac {\sigma_ {1 , 2} \sigma_ {3 , 1} - \sigma_ {1 , 1} \sigma_ {3 , 2}}{D} & \frac {\sigma_ {1 , 1} \sigma_ {2 , 2} - \sigma_ {1 , 2} \sigma_ {2 , 1}}{D} \end{array} \right)
$$

where

$$
D = - \sigma_ {1, 3} \sigma_ {2, 2} \sigma_ {3, 1} + \sigma_ {1, 2} \sigma_ {2, 3} \sigma_ {3, 1} +
$$

$$
\sigma_ {1, 3} \sigma_ {2, 1} \sigma_ {3, 2} - \sigma_ {1, 1} \sigma_ {2, 3} \sigma_ {3, 2} - \sigma_ {1, 2} \sigma_ {2, 1} \sigma_ {3, 3} + \sigma_ {1, 1} \sigma_ {2, 2} \sigma_ {3, 3}
$$

with 252 naive FLOPS and 60 actual FLOPS. With larger matrices, the combinatorial explosion is staggering, going roughly as  $(n!)^2$ . If we look at the apparent computational needs for a matrix inverse, it quickly becomes obvious that a matrix inverse is never the end product of one of our calculations but rather an intermediate step. Therefore, we can be well-served by avoiding calculation of a matrix inverse and computing its effects in our formula instead.

# 6. BASICS OF COMPUTATION IN LINEAR ALGEBRA

We consider our matrices  $A \in \mathbb{R}^{m \times n}$  as comprised of components in several ways. When not otherwise noted, the matrix elements are represented with lowercase equivalent letters and two indices over the natural numbers up to  $m, n$ , i.e.  $A$  is comprised of elements

$$
a _ {i, j}, i = 1, \dots , m, j = 1, \dots , n.
$$

and its transpose as the matrix  $A^{*}$

$$
a _ {i, j} ^ {*} = a _ {j, i}, i = 1, \ldots , n, j = 1, \ldots , m.
$$

We can also consider  $A$  as a stack of row vectors  $\boldsymbol{r}_i \in \mathbb{R}^n$  or a row of column vectors defined similarly. The operation of transposition simply swaps row and column vectors. In the context of regression, we typically take the row count  $m$  to be the number of data points, so that we often have  $m \gg n$ . Considering scalars and row or column vectors as small matrices, we have the dot product to define our typical form of multiplication in linear algebra, where if  $A \in \mathbb{R}^{m \times p}$  and  $B \in \mathbb{R}^{p \times n}$  then their product  $C = A \cdot B \in \mathbb{R}^{m \times n}$  is computed as

$$
C = A B \qquad \Longrightarrow \qquad c _ {i j} = \sum_ {k = 1} ^ {p} a _ {i k} b _ {k j}
$$

One consequence of this definition is that for vectors  $x, y \in \mathbb{R}^n$ , we have that  $x^{*}y$  is a scalar. It is worth considering the special case of the vector outer product where  $p = 1$ . A common requirement is to compute

$$
B = A + x y ^ {*}
$$

where  $A \in \mathbb{R}^{m \times n}, x \in \mathbb{R}^m, y \in \mathbb{R}^n$  and the quantity  $xy^*$  is the component we label as the outer product of  $x$  with  $y$ . These types of computations pop up frequently in practical fitting algorithms, in stability calculations, and in so-called "online" algorithms for live tracking of linear models. For notational purposes, we will often require block notation for our matrices, where we partition  $A$  to obtain

$$
\begin{array}{r} n _ {1} \quad \ldots \quad n _ {r} \\ m _ {1} \left( \begin{array}{c c c} A _ {1 1} & \ldots & A _ {1 r} \\ \vdots & & \vdots \\ A _ {q 1} & \ldots & A _ {q r} \end{array} \right) \end{array}
$$

which represents  $A = (A_{\alpha \beta})$  as a  $q$ -by- $r$  block matrix with  $\alpha = 1, \ldots, q$ ,  $\beta = 1, \ldots, r$ , component matrices  $A_{\alpha \beta} \in \mathbb{R}^{m_\alpha \times n_\beta}$  and the  $m_\alpha$  and  $n_\beta$  summing to  $m$  and  $n$  respectively.

# 6.1. Linear Algebraic Terminology.

Definitions 6.1. We say that the range of a matrix  $A \in \mathbb{R}^{m \times n}$  is

$$
r a n (A) = \left\{y \in \mathbb {R} ^ {m}: y = A x f o r s o m e x \in \mathbb {R} ^ {n} \right\}
$$

and the null space of  $A$  is

$$
n u l l (A) = \{x \in \mathbb {R} ^ {n}: A x = 0 \}.
$$

The rank

$$
\operatorname {r a n k} (A) = \dim \left(\operatorname {r a n} (A)\right)
$$

and we say that  $A$  is rank deficient if  $\operatorname{rank}(A) < \min(m, n)$ . The identity matrix in  $\mathbb{R}^n$  is

$$
I _ {n} = [ e _ {1}, \ldots , e _ {n} ]
$$

where the  $e_i$  are the standard orthonormal basis (or canonical) vectors. When  $n$  is obvious, we just write  $I$ .

$$
e_{\ell} = (\underbrace{0,\ldots,0}_{\ell -1},1,0,\ldots ,0)^{*}.
$$

The inverse of square matrix  $A \in \mathbb{R}^{n \times n}$  is a matrix  $A^{-1}$  such that  $AA^{-1} = I_n$  if such a quantity exists. When it does we say  $A$  is nonsingular or of full rank. Otherwise we call it singular, and this also implies  $A$  is rank deficient. The determinant of  $A$  is the (recursively defined) quantity

$$
d e t (A) = \sum_ {j = 1} ^ {n} = (- 1) ^ {j + 1} a _ {1 j} d e t (A _ {1 j})
$$

with  $A_{1j} \in \mathbb{R}^{n - 1 \times n - 1}$  determined by deleting both the first row and the  $j^{th}$  column from  $A$ , and  $\det((a)) = a$ .

6.1.1. Determinant Effects. The determinant is invariant under transposition and homogeneous with respect to the dot product. For square  $A \in \mathbb{R}^{n \times n}$ , matrices  $\det(A) = 0$  if and only if the  $A$  is rank deficient.

6.1.2. Orthogonal. If a square matrix  $Q$  satisfies  $QQ^{*} = Q^{*}Q = I$  we say the matrix is orthogonal.  
6.1.3. Basic Properties. Unlike with scalars, matrix multiplication is associative but intransitive, i.e. generically we have  $AB \neq BA$ . Therefore we remark that

$$
(A B) (B ^ {- 1} A ^ {- 1}) = A (B B ^ {- 1}) A ^ {- 1} = A I A ^ {- 1} = I
$$

showing that  $(AB)^{-1} = B^{-1}A^{-1}$ . If we add a matrix  $C$  to  $A$  to form  $B = A + C$ , then

$$
\begin{array}{l} B (A ^ {- 1} - B ^ {- 1} C A ^ {- 1}) = B A ^ {- 1} - C A ^ {- 1} \\ = \left(B - (B + A)\right) A ^ {- 1} \\ = A A ^ {- 1} = I \\ \end{array}
$$

so that we can conclude

$$
\begin{array}{l} B ^ {- 1} = A ^ {- 1} - B ^ {- 1} C A ^ {- 1} \\ = A ^ {- 1} - B ^ {- 1} (B - A) A ^ {- 1} \\ \end{array}
$$

The special case where  $C = UV^{*}$  with matrices  $U, V \in \mathbb{R}^{n \times k}$  yields the Sherman-Morrison Inversion Formula

$$
\left(A + U V ^ {*}\right) ^ {- 1} = A ^ {- 1} - A ^ {- 1} U \left(I + V ^ {*} A ^ {- 1} U\right) ^ {- 1} V ^ {*} A ^ {- 1}.
$$

6.2. Applications of Sherman-Morrison. This formula is extremely useful in "online" algorithms, finite difference schemes and error propagation analysis. We most often consider the case  $k = 1$  in which case the term  $I + V^{*}A^{-1}U$  is a scalar and readily invertible. Furthermore, we often are able to assume  $U$  and  $V$  have just one or two nonzero elements, making the computation of  $(A + UV^{*})^{-1}$  as a perturbation of  $A^{-1}$  very simple in comparison to a full recalculation of an inverse.

Using this, the Sherman-Morrison inversion formula tells us how, if some new observation  $\pmb{x}, y$  arrives, we can update  $\pmb{\beta}$ . For convenience we define the self-adjoint prediction error matrix or dispersion matrix

$$
\boldsymbol {P} = \left(\boldsymbol {X} ^ {*} \boldsymbol {X}\right) ^ {- 1}
$$

so that

$$
\beta = P X ^ {*} y
$$

Define the prediction error as

$$
h = y - \boldsymbol {x} ^ {*} \boldsymbol {\beta}
$$

and the error dispersion as the scalar

$$
f = 1 + \boldsymbol {x} ^ {*} \boldsymbol {P} \boldsymbol {x}
$$

Now we can compute the new dispersion matrix as

$$
\begin{array}{l} \boldsymbol {P} _ {\mathrm {n e w}} = \left(\boldsymbol {P} ^ {- 1} + \boldsymbol {x x} ^ {*}\right) ^ {- 1} \\ = P - P x \left(1 + x ^ {*} P x\right) ^ {- 1} x ^ {*} P \\ = P - P x f ^ {- 1} x ^ {*} P \\ \end{array}
$$

and our new regression coefficients

$$
\begin{array}{l} \beta_ {\text {n e w}} = \beta + P x (1 + x ^ {*} P x) (y - x ^ {*} \beta) \\ = \boldsymbol {\beta} + \boldsymbol {P x} f ^ {- 1} h. \\ \end{array}
$$

A similar formula applies, of course, when we are subtracting rather than adding some observation  $\boldsymbol{x}, y$ , whence

$$
\boldsymbol {\beta} _ {\text {r e d u c e d}} = \boldsymbol {\beta} - \boldsymbol {P} \boldsymbol {x} \left(\boldsymbol {1} - \boldsymbol {x} ^ {*} \boldsymbol {P} \boldsymbol {x}\right) ^ {- 1} \left(\boldsymbol {y} - \boldsymbol {x} ^ {*} \boldsymbol {\beta}\right)
$$

which allows us to perform efficient window regression.

6.3. Distance and Error. We typically consider distance between vectors  $v_{1}, v_{2}$  in terms of a  $p$ -norm on their difference  $x = v_{1} - v_{2}$ . This is defined as

$$
\left| \left| x \right| \right| _ {p} = \left(\left| x _ {1} \right| ^ {p} + \dots + \left| x _ {n} \right| ^ {p}\right) ^ {1 / p}
$$

and take a limit as  $p\to \infty$  to define the  $\infty$  norm

$$
\left| \left| x \right| \right| _ {\infty} = \max (\left| x _ {1} \right| ^ {p}, \ldots , \left| x _ {n} \right| ^ {p}).
$$

For a matrix  $A$  we typically consider the standard norm  $||\cdot||_F$  of  $A$  considered as a vector in  $\mathbb{R}^{mn}$ , along with  $p$ -norms defined by

$$
\left| \left| A \right| \right| _ {p} = \sup  _ {\left| \left| x \right| \right| _ {p} \neq 0} \frac {\left| \left| A x \right| \right| _ {p}}{\left| \left| x \right| \right| _ {p}}
$$

and we define the roundoff norm  $|\cdot |:\mathbb{R}^{m\times n}\to \mathbb{R}^{m\times n}$  by

$$
C = | A | \quad \Longrightarrow \quad c _ {i j} = | a _ {i j} |
$$

and interpret inequalities written  $A < B$  to mean  $|A| < |B|$ . We often make use of the Hölder inequality

$$
| x ^ {*} y | \leq | | x | | _ {p} | | y | | _ {q} \quad \frac {1}{p} + \frac {1}{q} = 1
$$

and its most important manifestation  $|x^{*}y| \leq ||x||_{2}||y||_{2}$ . We also often use the property that

$$
| | A | | _ {2} \leq \sqrt {| | A | | _ {1} | | A | | _ {\infty}}
$$

which relates the mathematically useful 2-norm to more easily computed 1and  $\infty$ -norms. Given any norm  $||\cdot||$  we say the condition number  $\kappa(A)$  of  $A$  is

$$
\kappa (A) = | | A | | | | A ^ {- 1} | |.
$$

Matrices with large  $\kappa$  are called ill-conditioned and ones with small  $\kappa$  are called well-conditioned. Orthogonal matrices neither contract nor expand any vectors, so for them we always have  $\kappa = 1$ . Given an approximation  $\hat{x}$  to  $x$ , we say that the absolute error is

$$
\epsilon_ {\mathrm {a b s}} = \left| \left| \hat {x} - x \right| \right|
$$

and the relative error is

$$
\epsilon_ {\mathrm {r e l}} = \frac {| | \hat {x} - x | |}{| | x | |}.
$$

Using the notation above we see that if we have a limit constant  $\mathbf{u}$  on the relative error of coefficients of  $\hat{A}$  approximating  $A$  then

$$
| \hat {A} - A | \leq \mathbf {u} | A |.
$$

Lemma 6.2. If we have a small perturbation  $\Delta A$  on the matrix  $A \in \mathbb{R}^{n \times n}$  for which the linear system  $Ax = b$  is solved, so that

$$
(A + \Delta A) \tilde {x} = b + \Delta b
$$

characterized by both  $||\Delta A|| < \epsilon ||A||$  and  $||\Delta b|| < \epsilon ||b||$  with a sufficiently small condition number  $\kappa < 1 / \epsilon$  then the we define  $r = \epsilon \kappa$  and relative error in  $\tilde{x}$  is limited by

$$
\epsilon_ {r e l} = \frac {| | \tilde {x} - x | |}{| | x | |} \leq \frac {2 \epsilon}{1 - r} \kappa .
$$

and  $A + \Delta A$  is nonsingular.

Lemma 6.2 is useful for judging when an update to, or error in, linear model fitting inputs will result in acceptably sized effects on the resulting model.

# 7. MATRIX DECOMPOSITION

Consider the case where we need to compute the inverse of a matrix  $A$  as applied to a vector  $\boldsymbol{w}$ . That is we wish to compute

$$
\pmb {z} = A ^ {- 1} \pmb {w}
$$

but of course we can view this instead as solving the equation

$$
\boldsymbol {w} = A \boldsymbol {z}.
$$

So long as we properly compute  $\mathbf{z}$  we don't necessarily mind that  $A^{-1}$  was never computed as an intermediate step. We accomplish this through matrix decompositions.

Definition 7.1. A matrix  $A \in \mathbb{R}^{n \times n}$  is positive semidefinite if  $x^*Ax \geq 0$  for all nonzero  $x \in \mathbb{R}^n$ . We say it is positive definite if the inequality is strict.

In most of finance, our matrices are (or ought to be) positive definite or at least semidefinite. When they are not, it implies we have poorly fit our risk matrix, or conceived an unstable finite differencing scheme.

7.1. Singular Value Decomposition. Whether or not a matrix is square or positive semidefinite,  $A \in \mathbb{R}^{m \times n}$  always admits a singular value decomposition (SVD) of matrices transforming it to the diagonal case. That is, there exist  $U \in \mathbb{R}^{m \times m}$  and  $V \in \mathbb{R}^{n \times n}$  such that the matrix  $D = U^t A V$  is diagonal. It is easy to show that the rank of  $A$  is equal to the number of nonzero entries on the diagonal of  $D$ . These diagonal entries  $\sigma_j, j = 1, \ldots, \min(m, n)$  are also called the singular values of  $A$  and their squares form the eigenvalues of  $A$ . It is useful to think about cases where some  $\sigma_j$  are nonzero but very small, in which case we say  $A$  is nearly rank deficient. For a matrix of full rank, the singular values of  $A^{-1}$  are proportional to  $1 / \sigma_j$ , so small singular values  $\sigma_j$  can be troublesome in solving linear equations. It is relatively

easy to use the SVD to show that the condition number satisfies

$$
\kappa (A) = \lim _ {\mathbf {u} \to 0} \sup _ {| | \Delta A | | \leq \mathbf {u} | | A | |} \frac {| | (A + \Delta A) ^ {- 1} - A ^ {- 1} | |}{\epsilon} \frac {1}{| | A ^ {- 1} | |}.
$$

7.2. Triangular Matrices. Some matrices  $L$  are lower triangular, that is they have zeros for every entry  $\ell_{ij}, j > i$  above the diagonal. For these matrices, solving  $Lx = b$  is a simple matter of applying a back-substitution algorithm,

$$
x _ {i} = \frac {1}{\ell_ {i i}} \left(b _ {i} - \sum_ {j = 1} ^ {i - 1} \ell_ {i j} x _ {j}\right)
$$

which in two-dimensional form reads as

$$
\left( \begin{array}{c c} \ell_ {1 1} & 0 \\ \ell_ {1 2} & \ell_ {2 2} \end{array} \right) \left( \begin{array}{c} x _ {1} \\ x _ {2} \end{array} \right) = \left( \begin{array}{c} b _ {1} \\ b _ {2} \end{array} \right)
$$

This clearly enjoys the solution

$$
x _ {1} = b _ {1} / \ell_ {1 1}
$$

$$
x _ {1} = \left(b _ {2} - \ell_ {2 1} x _ {1}\right) / \ell_ {2 2}.
$$

A similar way of solving upper triangular systems is now obvious. These two algorithms provide the basic idea behind the tridiagonal algorithm typically used in grid schemes for solving difference equations arising from PDE solvers for financial derivatives pricing. Note that if we break  $L$  up into blocks, an analogous algorithm applies block-by-block, i.e. for

$$
\left( \begin{array}{c c c c} L _ {1 1} & 0 & \ldots & 0 \\ L _ {2 1} & L _ {2 2} & \ldots & 0 \\ \vdots & \vdots & \ddots & \vdots \\ L _ {N 1} & L _ {N 2} & \ldots & L _ {N N} \end{array} \right) \left( \begin{array}{c} X _ {1} \\ X _ {2} \\ \vdots \\ X _ {N} \end{array} \right) = \left( \begin{array}{c} B _ {1} \\ B _ {2} \\ \vdots \\ B _ {N} \end{array} \right)
$$

we can iterate solving  $L_{jj}X_{j} = B_{j}$  and then substituting

$$
B _ {i} \longrightarrow B _ {i} - L _ {i j} X _ {j} \quad \forall i > j.
$$

note that singularities in any  $L_{jj}$  will cause errors. Now, since lowerand upper-triangular systems are so easy to solve, we see that if our normal equations

$$
\mathbf {X} ^ {*} \mathbf {X} \beta = \mathbf {X} ^ {*} y.
$$

involved a triangular, then we might have an easy time finding  $\beta$  without needing to invert anything.

7.3. Cholesky Decomposition. A symmetric positive definite matrix  $A$  may be broken down into a "matrix square root"  $C$ , called the Cholesky Decomposition, where

$$
C C ^ {*} = A
$$

and  $C$  is lower triangular with positive diagonal entries.

Having taken the square root of  $A$ , we may then solve the triangular systems  $C y = b$  and  $C^* x = y$  to solve a corresponding system of equations.

# 7.4. QR Decomposition.

Theorem 7.2. Any matrix  $A \in \mathbb{R}^{m \times n}$  can be written in unitary-equivalent upper triangular form  $R$ . That is to say, there exists an orthogonal matrix  $Q$  and upper triangular matrix  $R$  such that  $A = QR$ .

Consider this applied to the normal equations, where we the theorem tells us it is possible to have decomposed  $\mathbf{X}$  into  $\mathbf{X} = QR$ . Then we can write

$$
\mathbf {X} ^ {*} \mathbf {X} \boldsymbol {\beta} = \mathbf {X} ^ {*} y
$$

$$
R ^ {*} Q ^ {*} Q R \beta = R ^ {*} Q ^ {*} y
$$

$$
R ^ {*} R \beta = R ^ {*} Q ^ {*} y
$$

$$
R \beta = Q ^ {*} y
$$

which can easily be solved for  $\beta$  using the triangular algorithm if  $Q$  is known.

7.4.1. Interesting Unitary Matrices. A 2-by2 orthogonal matrix  $Q$  is a rotation matrix if it has the form

$$
Q = \left( \begin{array}{c c} \cos (\theta) & \sin (\theta) \\ - \sin (\theta) & \cos (\theta) \end{array} \right)
$$

If  $y = Q^{*}x$  then  $y$  is obtained by rotating  $x$  counterclockwise through an angle  $\theta$ . Changing cosine signs and sign on a sine,

$$
Q = \left( \begin{array}{l l} \cos (\theta) & \sin (\theta) \\ \sin (\theta) & - \cos (\theta) \end{array} \right)
$$

is a reflection and  $y$  is the reflection of  $x$  across the line defined by

$$
Q = \left( \begin{array}{c} \cos (\theta / 2) \\ \sin (\theta / 2) \end{array} \right)
$$

7.4.2. Householder Matrices. Take a nonzero  $v \in \mathbb{R}^n$ . Let's note first of all that the vector  $w = v / ||v||$  is a unit length vector in the same direction as  $v$ . If we are using the 2-norm then we also have that  $||v||^2 = v \cdot v$ . We can form the outer product of a vector  $v$  with itself to get a full matrix, which has some useful properties. Consider the projection, computed as  $(x \cdot v)v$ , of a vector  $x$  in the direction  $v$ . This is a new vector, in the direction of  $v$ , of length equal to  $x\cos(\theta)$  where  $\theta$  is the angle between  $v$  and  $x$ .

If we subtract this projection from our original  $x$ , then we have the image of  $x$  in the hyperplane  $v^{\perp}$  defined by all vectors perpendicular to  $v$ , known as the null space of  $v$ . Subtracting twice this projection will form the reflection of  $x$  through  $v^{\perp}$ . This reflection has a particularly convenient mathematical form, since

$$
\begin{array}{l} x - 2 \frac {x \cdot v}{v \cdot v} v = x - 2 \frac {v \cdot x}{v \cdot v} v \\ = x - 2 \frac {2}{v ^ {*} \cdot v} (v ^ {*} x) v \\ = x - 2 \frac {2}{v ^ {*} \cdot v} v \left(v ^ {*} x\right) \\ = x - 2 \frac {2}{v ^ {*} \cdot v} (v v ^ {*}) x \\ = \underbrace {\left(I - 2 \frac {2}{v ^ {*} \cdot v} (v v ^ {*})\right)} _ {P _ {v}} \cdot x \\ \end{array}
$$

The matrix  $P_{v}$  is called the Householder reflection in  $v$ . It is symmetric, unitary, and can be completely characterized by one vector  $v$  and a scalar  $\beta = 2 / ||v||^2$ . If we want to compute  $P_{v}x$  for some vector  $x$ , we simply compute

$$
x - \beta (x ^ {*} v) \times v.
$$

For a matrix  $A \in \mathbb{R}^{m \times n}$  we can precompute

$$
z ^ {*} = \beta v ^ {*} A
$$

and then calculate the product of  $A$  with  $P_{v}$  as

$$
P A = (I - \beta v v ^ {*}) A = A - v z ^ {*}
$$

thereby avoiding matrix-matrix multiplication. Now, if we want to QR decompose a matrix  $A$ , we can start by trying to find a simple matrix  $P$  such that the product of  $P$  with  $A$  is triangular, at least as far as the first column. After that, we can repeat the operation to continue triangulating. The first column must have 1 in its first entry and zeros thereafter, so we want a matrix  $P$  that multiplies the first column  $x = (a_{i1})$  to obtain  $Px = \alpha \mathbf{e}_1$  for some  $\alpha$ , which will end up in the top row. Let's assume we can somehow accomplish this with a Householder reflection and solve for the corresponding vector  $v$ . Then

$$
(I - \beta v v ^ {*}) x = \alpha \mathbf {e} _ {1}
$$

$$
\beta (v ^ {*} x) v = x - \alpha \mathbf {e} _ {1}
$$

$$
v = \frac {1}{\beta v ^ {*} x} (x - \mathbf {e} _ {1})
$$

so therefore defining

$$
v = x - \alpha \mathbf {e} _ {1}
$$

accomplishes our goal. It is relatively easy to compute that

$$
\alpha = \pm | | x | |.
$$

This simple way to find  $v$  makes these Householder reflections very useful. They are also extremely accurate, having errors that do not propagate to degrade machine precision. In order to factor  $A \in \mathbb{R}^{m \times n}$  we simply need to repeat this process  $n$  times on successive nontriangular blocks of  $A$ , at lower and lower cost as the blocks get smaller.

$$
A _ {j - 1} = \left( \begin{array}{c c c c c c c} a _ {1 1} & a _ {1 2} & a _ {1 3} & \dots & \dots & \dots & a _ {1 n} \\ & a _ {2 2} & a _ {2 3} & \dots & \dots & \dots & a _ {2 n} \\ & & a _ {3 3} & \dots & \dots & \dots & a _ {3 n} \\ & & & \ddots & \dots & \dots & \vdots \\ & & & & a _ {j j} & \dots & a _ {j n} \\ & & & & a _ {j + 1, j} & \dots & a _ {j + 1, n} \\ & & & & \vdots & \vdots & \vdots \\ & & & & a _ {m j} & \dots & a _ {m n} \end{array} \right)
$$

Now to solve a least-squares problem

$$
A ^ {*} A x = A ^ {*} b
$$

we partition  $A$  into

$$
A = \left[ \begin{array}{l l} Q _ {1} & Q _ {2} \end{array} \right] \left[ \begin{array}{l} R _ {1} \\ 0 \end{array} \right]
$$

and we can equivalently solve

$$
R _ {1} x = Q _ {1} ^ {*} b.
$$

We apply the successive Householder reflections  $P_{i}$  to  $b$  to compute the right hand side, and then use the triangular algorithm to complete our process of finding  $x$ .

7.4.3. Givens Rotations. Working with multidimensional versions of the rotations we previously observed, we can see that it is possible to zero out the lower or upper triangle of  $A$  with a succession of operations aimed at eliminating just one component at a time.

$$
\begin{array}{r} i \left( \begin{array}{l l l l l l l} 1 & \dots & 0 & \dots & 0 & \dots & 0 \\ \vdots & \ddots & \vdots & & \vdots & & \vdots \\ 0 & \dots & \cos (\theta) & \dots & \sin (\theta) & \dots & 0 \\ \vdots & & \vdots & & \vdots & & \vdots \\ 0 & \dots & - \sin (\theta) & \dots & \cos (\theta) & \dots & 0 \\ 0 & \dots & 0 & \dots & 0 & \dots & 1 \end{array} \right) \end{array}
$$

Let us say that we want to zero out the element  $a_{ik}$  in  $A$ . We'll do so by rotating it to zero using the  $i - 1$  row above it.

We take

$$
\theta = \cos^ {- 1} \left(\frac {a _ {i k}}{\sqrt {a _ {i k} ^ {2} + a _ {(i - 1) , k} ^ {2}}}\right)
$$

so that the new value is zero. The pattern for Givens QR decomposition is then that  $A$  is transformed as follows

$$
\begin{array}{l} \begin{array}{r l} & {\left[ \begin{array}{l l l} \bullet & \bullet & \bullet \\ \bullet & \bullet & \bullet \\ \bullet & \bullet & \bullet \\ \bullet & \bullet & \bullet \end{array} \right] \to \left[ \begin{array}{l l l} \bullet & \bullet & \bullet \\ \bullet & \bullet & \bullet \\ \bullet & \bullet & \bullet \\ 0 & \bullet & \bullet \end{array} \right] \to \left[ \begin{array}{l l l} \bullet & \bullet & \bullet \\ \bullet & \bullet & \bullet \\ 0 & \bullet & \bullet \\ 0 & \bullet & \bullet \end{array} \right]} \end{array} \\ \rightarrow \left[\begin{array}{l l l}\bullet&\bullet&\bullet\\0&\bullet&\bullet\\0&\bullet&\bullet\\0&\bullet&\bullet\end{array}\right]\rightarrow \left[\begin{array}{l l l}\bullet&\bullet&\bullet\\0&\bullet&\bullet\\0&\bullet&\bullet\\0&0&\bullet\end{array}\right]\rightarrow \left[\begin{array}{l l l}\bullet&\bullet&\bullet\\0&\bullet&\bullet\\0&0&\bullet\\0&0&\bullet\end{array}\right] \\ \rightarrow \left[\begin{array}{c c c}\bullet&\bullet&\bullet\\0&\bullet&\bullet\\0&0&\bullet\\0&0&0\end{array}\right] \\ \end{array}
$$

7.4.4. Which Factorization? A least squares solution is sensitive to the quantity  $\kappa + \rho_L D\kappa$ . Error from using the method of normal equations with a Cholesky decomposition goes as  $\kappa^2$ . Cholesky decomposition will fail for small condition numbers  $\kappa \gtrsim 1 / \sqrt{u}$ . For Householder QR decomposition, the failure boundary is  $\kappa \gtrsim 1 / u$ . Gram-Schmidt may be constructed to achieve

this same result with pivoting but at slightly higher computational cost. These solutions have approximate relative error of

$$
\mathbf {u} (\kappa + \rho_ {\mathrm {L S}}) \kappa^ {2}
$$

The computational cost of all these techniques goes as  $O(n^{2}m)$ .

# 8. STANDARD ERROR

The standard error of a regression assumes the residuals are uncorrelated. In this instance we write the square of standard error as a function of the squared residual

$$
s ^ {2} = \frac {\mathbf {e} \cdot \mathbf {e} ^ {*}}{m - n}
$$

This can be particularly useful when looking at confidence envelopes of local regressions.

# 9. INTRINSICALLY LINEAR REGRESSION

We say that a function relating  $y$  to  $x$  is intrinsically linear if by means of transformations

$$
x \stackrel {\psi} {\rightarrow} \check {x}
$$

$$
y \stackrel {\phi} {\rightarrow} \check {y}
$$

the function can be expressed as  $\check{y}_t = a + b\check{x}_t$  where  $\check{x}_t$  is the transformed independent variable. In the multivariate case, we consider that we are solving the problem of minimizing

$$
| | \sum_ {j - 1} ^ {n} \beta \Psi (X _ {j}) - \Phi (y) | | ^ {2}.
$$

From a computational point of view, this is easily accomplished by first transforming all dependent and independent variables, and then solving the system as usual. We sometimes also use the phrase generalized linear regression.

An example might be bond price versus yield.

# 10. SIMPLE REGRESSION AND BETA

When we are performing a univariate regression, it is common to represent the linear coefficient, as above, with the (now scalar) value  $\beta$ . Due to the numerics of OLS, we have a simple relation to the Pearson correlation  $\rho$  and the individual variances  $\sigma_x^2, \sigma_y^2$ . Namely, for an OLS fit that yielded  $\alpha, \beta$  for

$$
y \sim \alpha + \beta x
$$

we have

$$
\beta = \rho \frac {\sigma_ {y}}{\sigma_ {x}}
$$

# 11. MEASURING REGRESSION MODEL PERFORMANCE

11.1. Coefficient of Determination. When the sum of squares is a good representation of the regression's accuracy, we can compute two interesting quantities. The first, the sum of

squared residuals

$$
R S S = \sum u _ {i} ^ {2}
$$

represents how close our model came to being truly ideal. The second quantity is the sum of squares inherent to the data, or total sum of squares

$$
T S S = \sum \left(y _ {i} - \mathbb {E} (y)\right) ^ {2}
$$

Linear regression can be thought of as a projection of the design matrix onto the subspace of purely linear data, i.e. residuals are orthogonal to the regression, so these two quantities add like the variances of uncorrelated variables. We can consider their relative size, and compute the correlation coefficient between model predictions and outcomes to be

$$
\rho = \sqrt {\frac {T S S - R S S}{T S S}}
$$

We can define the universal coefficient of determination or  $R^2$ , as

$$
R ^ {2} = 1 - \frac {R S S}{T S S}
$$

It is quite easy to see that this quantity has the "right" asymptotics for representing regression quality.

Taking a more specific approach, we can see that for linear models orthogonality lets us write the explained sum of squares

$$
\begin{array}{l} E S S := \sum \left(\hat {y} _ {i} - \mathbb {E} (y)\right) ^ {2} \\ = \sum \left(y _ {i} - \mathbb {E} (y)\right) ^ {2} - \left(y _ {i} - \hat {y} _ {i}\right) ^ {2} \\ = \sum \left(y _ {i} - \mathbb {E} (y)\right) ^ {2} - u _ {i} ^ {2} \\ = T S S - R S S \\ \end{array}
$$

showing that in the linear case

$$
R ^ {2} = \frac {E S S}{T S S}
$$

One of the most important metrics of model performance is its  $R^2$  on out-of-sample data.

There is no technical limitation that  $R^2$  may be computed only from linear models. Its construction makes it particularly relatable to ordinary least squares, but that need not limit us. Any set of residuals is fair game.

# 11.2. Terminology of Data Points.

- Recall that we use the term residual to describe the difference between the predicted value (based on the regression equation) and the actual, observed value.  
- An outlier is an observation with large residual. In other words, it is an observation whose dependent-variable value is unusual given its value on the predictor variables. An outlier may indicate a sample peculiarity or may indicate a data entry error or other problem.  
- A data point near the "edge" of a distribution is said to have high leverage, and, being far from the mean will tend to be important.  
- Outliers tend to have high influence, which means their inclusion in the data set greatly affects the estimate of regression coefficients.

One important characterization of outliers is Cook's distance, which combines the information of leverage and residual of the observation. Formally, leverage is based on the fitted values of a regression, where we begin by observing that our coefficients

$$
\beta = (X ^ {*} X) ^ {- 1} X ^ {*} \boldsymbol {y}
$$

come from the pseudoinverse  $(X^{*}X)^{-1}X^{*}$ . We can see that (generically) our regression, if asked to predict values for the same set of independent  $y$  as it was fitted on, would not of course return its precise inputs - that's impossible - but rather would apply this coefficient set to  $y$ , obtaining

$$
\begin{array}{l} \hat {\boldsymbol {y}} = X \beta \\ = X \left(X ^ {*} X\right) ^ {- 1} X ^ {*} \boldsymbol {y} \\ = H \boldsymbol {y} \\ \end{array}
$$

where

$$
H := X \left(X ^ {*} X\right) ^ {- 1} X ^ {*}
$$

is called the hat matrix because it operates on  $\pmb{y}$  to "put a hat on it".

The diagonal elements of the hat matrix are

$$
h _ {i i} = \boldsymbol {x} _ {i} ^ {*} \left(X ^ {*} X\right) ^ {- 1} \boldsymbol {x} _ {i}
$$

Cook's distance for an observation at  $i$  is the quotient of the squared Euclidean distance that the vector  $\mathbf{y}$  moves when the  $i$ th point is omitted, by the parameter count and sum of squares. We can therefore think of it as the variation introduced by observation  $i$ , normalized to how much such variation we would expect given the overall data variation and parameter count.

We can compute the reduced model  $\bar{X}\bar{\beta}$  where the  $i$ th row has been deleted, so one equation for Cook's distance is

$$
c _ {i} = \frac {1}{s ^ {2} p} \| \boldsymbol {y} - \hat {\boldsymbol {y}} \| ^ {2}
$$

where  $p$  is the parameter count (i.e. the rank of  $X$ ). Now our residuals are obviously

$$
\boldsymbol {u} = \boldsymbol {y} - \hat {\boldsymbol {y}}
$$

so

$$
\boldsymbol {u} = (I - H) \boldsymbol {y}
$$

and the diagonal elements of  $H$  are all in  $[0,1]$  and satisfy

$$
\sum h _ {i i} = p.
$$

If the residuals are indeed independent, then in particular they are uncorrelated, so the residuals have the diagonal covariance matrix

$$
\boldsymbol {S} = (I - H) \hat {\boldsymbol {\sigma}} ^ {2}.
$$

for some  $\hat{\sigma}$ . Define

$$
\bar {\delta} = \bar {y} - \bar {X} \bar {\beta}
$$

to describe the residuals from the reduced model and the leave-one-out residual

$$
\bar {u} _ {i} = y _ {i} - \hat {\boldsymbol {\beta}} ^ {*} \mathbf {x} _ {i}
$$

If we choose

$$
\bar {H} = \bar {X} \big (X ^ {*} X \big) ^ {- 1} \bar {X} ^ {*}
$$

then

$$
\bar {u} = (I - \bar {H}) \bar {\delta}
$$

and

$$
\bar {u} _ {i} = \frac {y _ {i} - \hat {\beta} ^ {*} \pmb {x} _ {i}}{1 - h _ {i i}}
$$

The fitted value will change by an amount

$$
\begin{array}{l} \bar {y} - \bar {X} = \frac {h _ {i i}}{1 - h _ {i i}} u _ {i} \\ = \frac {h _ {i i}}{1 - h _ {i i}} u _ {i} \\ \end{array}
$$

showing the relative increase in the  $i$ th residual to be  $\frac{h_{ii}}{1 - h_{ii}}$ . This leads us to use the term leverage to describe  $h_{ii}$ . By diagonality of  $I$ ,  $J$  and  $I - H$ , we see that removing the data observation at index  $i$ , and forming the RSS

$$
\bar {\delta} ^ {*} (I - \bar {H}) \bar {\delta}
$$

givestus the original RSS,but reduced by the missing row

$$
\frac {u _ {i} ^ {2}}{1 - h _ {i i}}
$$

In this independent case we have that

$$
\mathrm {v a r} (\hat {u} _ {i}) = 1 - h _ {i i} \hat {\sigma} ^ {2}
$$

so the reduction is proportional to the residual size. A large value for  $h$ , near 1, will noticeably lever the fitted hyperplane in its direction.

The average leverage should be  $p / n$  where  $p$  is the parameter count and  $n$  the observation count. With parameter count  $p$  and  $s^2$  as a reliable unbiased estimate of the error variance  $\hat{\sigma}^2$  Cook's distance of residual  $u_i$  is the quantity

$$
c _ {i} = u _ {i} ^ {2} \frac {h _ {i i}}{p s ^ {2} (1 - h _ {i i}) ^ {2}}
$$

In practice we usually take  $s^2$  to be the mean residual square sum. A generalized extension of Cook's distance, due to Hampel (1974), is the influence curve for any functional  $T$  at any distribution  $F$ ,

$$
\operatorname {I C} (x; T, F) = \lim _ {\epsilon \downarrow 0} \frac {T \left((1 - \epsilon) F + \epsilon \Delta_ {x}\right) - T (F)}{\epsilon}
$$

where  $\Delta_x$  is a distribution with unit mass at  $x$ , i.e. the probability distribution whose density is the Dirac (generalized) function  $\delta_x$ . This curve defines, over the domain of  $x$ , what the incremental contribution of  $x$  is to an estimator  $F$ . We will see these in greater detail and more concrete form soon when we consider robust estimation schemes.

11.3. Normal Quantile-Quantile Analysis. Since in the real world, our data are rarely normally distributed, we would like to have some ways of determining when, and in what

# $\operatorname{Im}(\operatorname{PHM} \sim \operatorname{SPY})$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/d6b3974c-f53e-44dd-9cd9-e1a2bb34b308/59fb682740bd5e455082ac944aa6f893df49e5d2a21ecbf106626d6d47ff0300.jpg)  
Residuals vs Fitted  
Fitted values

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/d6b3974c-f53e-44dd-9cd9-e1a2bb34b308/3510b248e4fa8f4c44f66d55f47fbe1e89b36fdd38d6d4e8988c36e9ddc88c39.jpg)  
Normal Q-Q  
Theoretical Quantiles

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/d6b3974c-f53e-44dd-9cd9-e1a2bb34b308/d2ad776d6a3636a990563bd232c90cb9321c804ec5db55364a7cca7251063e63.jpg)  
Scale-Location  
Fitted values  
FIGURE 1. Quality measures of a linear fit. Strong evidence of fat tails is manifested, especially in the top metric plots.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/d6b3974c-f53e-44dd-9cd9-e1a2bb34b308/b18af93a7fe0a2ec43b0b84772657c4e99d8c526a2643dd6935f2a1d1ffa1f07.jpg)  
Residuals vs Leverage  
Leverage

ways, our data (empirically) deviates from normality. The first metrics to use, of course, are the higher moments of the distribution, applied to the individual variables

It is obvious that for any symmetric distribution the odd moments

$$
M _ {d} = \mathbb {E} \left[ (x - \bar {x}) ^ {n} \right], \quad d \text {o d d}
$$

disappear when  $d \geq 3$ . Other distributions may exhibit a nonzero skew and other evidence of asymmetry. Many empirical distributions in finance also have even moments that fail

to match those expected from normal distributions. The standardized normal has fourth moment,  $kurtosis$ , equal to 3 so a higher fourth moment implies "fat tails". It is underappreciated that high  $kurtosis$  also is associated with a "peaky" distributional center.

Given a proportion  $p$ , we say that the  $p$ th quantile of a sample set  $\mathbf{y}$  is

$$
Q _ {p} (\boldsymbol {y}) = \frac {1}{2} \left(\max  \{y _ {i}: y _ {i} \leq p \} + \min  \{y _ {i}: y _ {i} \geq p \}\right)
$$

For a graphical picture of the difference between an empirical distribution and the normal, we can contemplate a normal quantile-quantile plot. This plot is formed by obtaining the mean  $\bar{x}$  and standard deviation  $s_x$ , then ordering our values  $x_i, i = 1, \dots, n$ , and computing the CDF values

$$
\phi_ {i} = \Phi (i / n; \bar {x}, s _ {x})
$$

A plot of  $(\phi_i, x_i)$  points will be (approximately) linear with a slope of 1.0 and intercept at zero if  $\{x_i\}$  came from a normal distribution. If the intercept is nonzero then odd moments are present. Skew is quite obvious as a varying slope. Fat tails are evident if the left side dives below the line and the right side rises above it. The deviation of a QQ plot from linearity, as measured by  $R^2$ , can serve along with moments as a rough-and-ready measure of distributional adherence to the normal.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/d6b3974c-f53e-44dd-9cd9-e1a2bb34b308/2c2894ecb10e7efa41002ffd60c55fa9251c878299b3cafa01ed5f0f3026d9f4.jpg)  
Normal QQ, Student t Distributi  
FIGURE 2. Fat tails from a Student t.

Note that visual examination of the residuals, along with leverage and distance metrics, can take us a long way to identifying when these issues have become significant. The plot function for  $1\mathfrak{m}$  in  $\mathbf{R}$  is geared to this type of investigation.

# Normal QQ, Lognormal Distribut

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/d6b3974c-f53e-44dd-9cd9-e1a2bb34b308/f12bd983834d2d2d682b5da202414cca10e0ae873280cd2ba2fd37d4bfce6969.jpg)  
FIGURE 3. Fat tail from a Lognormal, skinny tail left

12. EXPONENTIALLY-WEIGHTED MOVING REGRESSIONS Let's revisit the weighted regression, with a special weighting scheme.

$$
\mathsf {I m} (\mathsf {P H M} \sim \mathsf {S P Y})
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/d6b3974c-f53e-44dd-9cd9-e1a2bb34b308/4c743854ee34969e6270f322df6a1ce7c02b57e43fcdb51b7b1f0c9baf5cb574.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/d6b3974c-f53e-44dd-9cd9-e1a2bb34b308/8473cc2b90c80b3ace9f413cc04bea74d17737bf6abade0605821f6e2e0f503d.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/d6b3974c-f53e-44dd-9cd9-e1a2bb34b308/39ce9209f5dac5988d82894d48b916adeb1e5f561f954fca9ddc229b13e6fdef.jpg)  
FIGURE 4. Linear fit quality on daily data.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/d6b3974c-f53e-44dd-9cd9-e1a2bb34b308/ccb931d54cedf2dc2d51bee6b9d876aac7fc28ec3df6d3ed07cf71efe4ebc35a.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/d6b3974c-f53e-44dd-9cd9-e1a2bb34b308/21f93cfa6956faec69245c50c9b5b0846f4f951f083d41d968539b5492527852.jpg)  
Minute And Overnight Returns  
FIGURE 5. Equity returns with a linear fit. Large values of Cook's distance are circled in red.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/d6b3974c-f53e-44dd-9cd9-e1a2bb34b308/f255ee69f07ce8d50c0e0d6bf4fff0fa3c154176c7689c77748353cbf0d7a5f2.jpg)  
Daily Returns  
FIGURE 6. Equity returns with a linear fit. Large values of Cook's distance are circled in red.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/d6b3974c-f53e-44dd-9cd9-e1a2bb34b308/1af9fb79ad2cc286ce431311d210fbfeccab1cbf9fbcb7358e3c0c184bc62079.jpg)  
Minute And Overnight Returns  
FIGURE 7. Equity returns with a linear fit, concentrating on high density region.

Recall that in ordinary least squares regression, we solve (in principle but not in practice) the normal equations to obtain a parameter estimate

$$
\boldsymbol {\beta} = \left(\boldsymbol {X} ^ {*} \boldsymbol {X}\right) ^ {- 1} \boldsymbol {X} ^ {*} \boldsymbol {y}
$$

The Sherman-Morrison inversion formula

$$
\left(\boldsymbol {A} + \boldsymbol {U} \boldsymbol {V} ^ {*}\right) ^ {- 1} = \boldsymbol {A} ^ {- 1} - \boldsymbol {A} ^ {- 1} \boldsymbol {U} \left(\boldsymbol {I} + \boldsymbol {V} ^ {*} \boldsymbol {A} ^ {- 1} \boldsymbol {U}\right) ^ {- 1} \boldsymbol {V} ^ {*} \boldsymbol {A} ^ {- 1}.
$$

tells us how, if some new observation  $\pmb{x}, y$  arrives, we can update  $\pmb{\beta}$ . For convenience we define the self-adjoint prediction error matrix or dispersion matrix

$$
\boldsymbol {P} = \left(\boldsymbol {X} ^ {*} \boldsymbol {X}\right) ^ {- 1}
$$

so that

$$
\beta = P X ^ {*} y
$$

Define the prediction error as

$$
h = y - \boldsymbol {x} ^ {*} \boldsymbol {\beta}
$$

and the error dispersion as

$$
f = 1 + \boldsymbol {x} ^ {*} \boldsymbol {P} \boldsymbol {x}
$$

Now we can compute the new dispersion matrix as

$$
\begin{array}{l} \pmb {P} _ {\mathrm {n e w}} = \left(\pmb {P} ^ {- 1} + \pmb {x} \pmb {x} ^ {*}\right) ^ {- 1} \\ = \boldsymbol {P} - \boldsymbol {P} \boldsymbol {x} \left(1 + \boldsymbol {x} ^ {*} \boldsymbol {P} \boldsymbol {x}\right) ^ {- 1} \boldsymbol {x} ^ {*} \boldsymbol {P} \\ = P - P x f ^ {- 1} x ^ {*} P \\ \end{array}
$$

and our new regression coefficients

$$
\begin{array}{l} \boldsymbol {\beta} _ {\mathrm {n e w}} = \boldsymbol {\beta} + \boldsymbol {P} \boldsymbol {x} (1 + \boldsymbol {x} ^ {*} \boldsymbol {P} \boldsymbol {x}) ^ {- 1} (\boldsymbol {y} - \boldsymbol {x} ^ {*} \boldsymbol {\beta}) \\ = \boldsymbol {\beta} + \boldsymbol {P x} f ^ {- 1} h. \\ \end{array}
$$

A similar formula applies, of course, when we are subtracting rather than adding some observation  $\boldsymbol{x}, y$ , whence

$$
\boldsymbol {\beta} _ {\text {r e d u c e d}} = \boldsymbol {\beta} - \boldsymbol {P} \boldsymbol {x} \left(\boldsymbol {x} ^ {*} \boldsymbol {P} \boldsymbol {x} - 1\right) ^ {- 1} \left(y - \boldsymbol {x} ^ {*} \boldsymbol {\beta}\right)
$$

which allows us to perform efficient window regression.

Now let us say that we wish to discount our old data relative to new incoming information by some factor  $\lambda \in (0,1]$ . We can therefore say that the dispersion matrix of the old data should be multiplied by  $\lambda$ , allowing our update  $\pmb{x},y$  to have full effect. That is to say we obtain

$$
\begin{array}{l} \boldsymbol {P} _ {\mathrm {n e w}} = \left(\lambda \boldsymbol {P} + \boldsymbol {x x} ^ {*}\right) ^ {- 1} \\ = \frac {1}{\lambda} \left(\boldsymbol {P} - \boldsymbol {P x} \left(\boldsymbol {\lambda} + \boldsymbol {x} ^ {*} \boldsymbol {P x}\right) ^ {- 1} \boldsymbol {x} ^ {*} \boldsymbol {P}\right) \\ \end{array}
$$

Our new coefficients are then

$$
\begin{array}{l} \boldsymbol {\beta} _ {\text {n e w}} = \boldsymbol {\beta} + \boldsymbol {P} \boldsymbol {x} \left(\boldsymbol {\lambda} + \boldsymbol {x} ^ {*} \boldsymbol {P} \boldsymbol {x}\right) ^ {- 1} \left(\boldsymbol {y} - \boldsymbol {x} ^ {*} \boldsymbol {\beta}\right) \\ = \boldsymbol {\beta} + \boldsymbol {P} \boldsymbol {x} f _ {\lambda} ^ {- 1} h \\ \end{array}
$$

This approach is called discounted least-squares regression and is commonly seen in control theory<sup>2</sup>.

# 13. EPPS EFFECT

Regressions, with their tight link to correlation, are obviously sensitive to the Epps effect. Data which is frequently zero, typically due to high-frequency sampling, can "fool" a regression into small or zero  $\beta$  values.

# 14. TIME SERIES: CONTEMPORANEOUS AND PREDICTIVE REGRESSION

In quantitative finance, we usually work with time series, in which data points (typically) correspond to measurements made in time series  $X^{(t)}, y^{(t)}$ . From a practical point of view, the essential consideration is our alignment of rows of  $X$  with  $y$ . The most obvious alignment is to take  $y$  measurements at the same time as  $X$  measurements in a contemporaneous regression. In the majority of quantitative financial cases, this will result in a significant  $\beta$  value. Because the  $X$  and  $y$  data has been aligned in time, a contemporaneous regression does not represent predictions into the future. It does however characterize co-movement. Therefore these regressions are extremely useful for

- Computing hedges or proxies between financial assets  
Assessing risk to any given time series (e.g. weather)  
- Quantifying risks according to components as represented by terms in the  $\beta$  vector

In contrast, for a predictive regression, we deliberately misalign the time stamps in  $X$  and  $y$ . Usually (but not necessarily always) we do so in an off-by-one manner, making row  $t$  of  $X$  correspond to row  $t + 1$  of  $y$ . We imagine ourselves, at any given row, as having the information available at  $X^{(t)}$  and wishing to make a useful educated guess at  $y^{(t + 1)}$ . Here,  $y$  is usually an asset return whose prediction, if accurate, can be made profitable.
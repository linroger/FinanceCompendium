---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Chapter 9
linter-yaml-title-alias: Chapter 9
---

# Chapter 9

# Correlations and Copulas

Suppose that a company has an exposure to two different market variables. In the case of each variable, it gains  $10 million if there is a one-standard-deviation increase and loses$ 10 million if there is a one-standard-deviation decrease. If changes in the two variables have a high positive correlation, the company's total exposure is very high; if they have a correlation of zero, the exposure is less but still quite large; if they have a high negative correlation, the exposure is quite low because a loss on one of the variables is likely to be offset by a gain on the other. This example shows that it is important for a risk manager to estimate correlations between the changes in market variables as well as their volatilities when assessing risk exposures.

This chapter explains how correlations can be monitored in a similar way to volatilities. It also covers what are known as copulas. These are tools that provide a way of defining a correlation structure between two or more variables, regardless of the shapes of their probability distributions. Copulas have a number of applications in risk management. The chapter shows how a copula can be used to create a model of default correlation for a portfolio of loans. This model is used in the Basel II capital requirements.

# 9.1 Definition of Correlation

The coefficient of correlation,  $\rho$ , between two variables  $V_{1}$  and  $V_{2}$  is defined as

$$
\rho = \frac {E \left(V _ {1} V _ {2}\right) - E \left(V _ {1}\right) E \left(V _ {2}\right)}{S D \left(V _ {1}\right) S D \left(V _ {2}\right)} \tag {9.1}
$$ where  $E(.)$  denotes expected value and  $SD(.)$  denotes standard deviation. If there is no correlation between the variables,  $E(V_{1}V_{2}) = E(V_{1})E(V_{2})$  and  $\rho = 0$ . If  $V_{1} = V_{2}$ , both the numerator and the denominator in the expression for  $\rho$  equal the variance of  $V_{1}$ . As we would expect,  $\rho = 1$  in this case.


The covariance between  $V_{1}$  and  $V_{2}$  is defined as

$$

\operatorname {c o v} \left(V _ {1}, V _ {2}\right) = E \left(V _ {1} V _ {2}\right) - E \left(V _ {1}\right) E \left(V _ {2}\right) \tag {9.2}

$$ so that the correlation can be written


$$

\rho = \frac {\operatorname {c o v} (V _ {1} , V _ {2})}{S D (V _ {1}) S D (V _ {2})}

$$

Although it is easier to develop intuition about the meaning of a correlation than a covariance, it is covariances that will prove to be the fundamental variables of our analysis. An analogy here is that variance rates were the fundamental variables for the EWMA and GARCH models in Chapter 8, even though it is easier to develop intuition about volatilities.

# 9.1.1 Correlation vs. Dependence

Two variables are defined as statistically independent if knowledge about one of them does not affect the probability distribution for the other. Formally,  $V_{1}$  and  $V_{2}$  are independent if:

$$ f (V _ {2} | V _ {1} = x) = f (V _ {2})
$$ for all  $x$  where  $f(.)$  denotes the probability density function and  $|$  is the symbol denoting "conditional on."


If the coefficient of correlation between two variables is zero, does this mean that there is no dependence between the variables? The answer is no. We can illustrate this with a simple example. Suppose that there are three equally likely values for  $V_{1}$ : -1, 0, and +1. If  $V_{1} = -1$  or  $V_{1} = +1$ , then  $V_{2} = +1$ . If  $V_{1} = 0$ , then  $V_{2} = 0$ . In this case, there is clearly a dependence between  $V_{1}$  and  $V_{2}$ . If we observe the value of  $V_{1}$ , we know the value of  $V_{2}$ . Also, a knowledge of the value of  $V_{2}$  will cause us to change our probability distribution for  $V_{1}$ . However, because  $E(V_{1}V_{2}) = 0$  and  $E(V_{1}) = 0$ , it is easy to see that the coefficient of correlation between  $V_{1}$  and  $V_{2}$  is zero.

This example emphasizes the point that the coefficient of correlation measures one particular type of dependence between two variables. This is linear dependence. There are many other ways in which two variables can be related. We can characterize the nature of the dependence between  $V_{1}$  and  $V_{2}$  by plotting  $E(V_{2})$  against  $V_{1}$ . Three examples are shown in Figure 9.1. Figure 9.1(a) shows linear dependence where the expected value of  $V_{2}$  depends linearly on  $V_{1}$ . Figure 9.1(b) shows a V-shaped relationship between the expected value of  $V_{2}$  and the value of  $V_{1}$ . (This is similar to the simple example just considered; a symmetrical V-shaped relationship, however strong, leads to zero coefficient of correlation.) Figure 9.1(c) shows a type of dependence that is often seen when  $V_{1}$  and  $V_{2}$  are percentage changes in financial variables. For the values of  $V_{1}$  normally encountered, there is very little relation between  $V_{1}$  and  $V_{2}$ . However, extreme values of  $V_{1}$  tend to lead to extreme values of  $V_{2}$ . (This could be consistent with correlations increasing in stressed market conditions.)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/541c37bea14bb424a07b6024d5019c52dbb7c42e25533dfd985697b8f2b66f7e.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/4298a7b75626f0db5ac3bd50b10a778a4d4a26410b406ae8aafdb69207f075f2.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/35ad392e56f18ec20e1c6c246fbea06bb8e466c220c4f1a447204dbcaf09fc69.jpg)
Figure 9.1 Examples of Ways in Which  $V_{2}$  Can Be Dependent on  $V_{1}$


Another aspect of the way in which  $V_{2}$  depends on  $V_{1}$  is found by examining the standard deviation of  $V_{2}$  conditional on  $V_{1}$ . As we will see later, this is constant when  $V_{1}$  and  $V_{2}$  have a bivariate normal distribution. But, in other situations, the standard deviation of  $V_{2}$  is liable to depend on the value of  $V_{1}$ .

# 9.2 Monitoring Correlation

Chapter 8 explained how exponentially weighted moving average and GARCH models can be developed to monitor the variance rate of a variable. Similar approaches can be used to monitor the covariance rate between two variables. The variance rate per day of a variable is the variance of daily returns. Similarly, the covariance rate per day between two variables is defined as the covariance between the daily returns of the variables.

Suppose that  $X_{i}$  and  $Y_{i}$  are the values of two variables,  $X$  and  $Y$ , at the end of day  $i$ . The returns on the variables on day  $i$  are

$$ x _ {i} = \frac {X _ {i} - X _ {i - 1}}{X _ {i - 1}} \qquad y _ {i} = \frac {Y _ {i} - Y _ {i - 1}}{Y _ {i - 1}}
$$

The covariance rate between  $X$  and  $Y$  on day  $n$  is from equation (9.2):

$$
\operatorname {c o v} _ {n} = E (x _ {n} \gamma_ {n}) - E (x _ {n}) E (\gamma_ {n})
$$

In Section 8.5, we explained that risk managers assume that expected daily returns are zero when the variance rate per day is calculated. They do the same when calculating the covariance rate per day. This means that the covariance rate per day between  $X$  and  $Y$  on day  $n$  is assumed to be

$$
\operatorname {c o v} _ {n} = E (x _ {n} \gamma_ {n})
$$

Using equal weights for the last  $m$  observations on  $x_{i}$  and  $\gamma_{i}$  gives the estimate

$$
\operatorname {c o v} _ {n} = \frac {1}{m} \sum_ {i = 1} ^ {m} x _ {n - i} \gamma_ {n - i} \tag {9.3}
$$

A similar weighting scheme for variances gives an estimate for the variance rate on day  $n$  for variable  $X$  as

$$ v a r _ {x, n} = \frac {1}{m} \sum_ {i = 1} ^ {m} x _ {n - i} ^ {2}
$$ and for variable  $Y$  as


$$ v a r _ {\gamma , n} = \frac {1}{m} \sum_ {i = 1} ^ {m} y _ {n - i} ^ {2}
$$

The correlation estimate on day  $n$  is

$$
\frac {\operatorname {C O V} _ {n}}{\sqrt {\operatorname {v a r} _ {x , n} \operatorname {v a r} _ {y , n}}}
$$

# 9.2.1 EWMA

Most risk managers would agree that observations from long ago should not have as much weight as recent observations. In Chapter 8, we discussed the use of the exponentially weighted moving average (EWMA) model for variances. We saw that it leads to weights that decline exponentially as we move back through time. A similar weighting scheme can be used for covariances. The formula for updating a covariance estimate in the EWMA model is similar to that in equation (8.8) for variances:

$$
\operatorname {c o v} _ {n} = \lambda \operatorname {c o v} _ {n - 1} + (1 - \lambda) x _ {n - 1} \gamma_ {n - 1}
$$

A similar analysis to that presented for the EWMA volatility model shows that the weight given to  $x_{n - i}\gamma_{n - i}$  declines as  $i$  increases (i.e., as we move back through time). The lower the value of  $\lambda$ , the greater the weight that is given to recent observations.

# Example 9.1

Suppose that  $\lambda = 0.95$  and that the estimate of the correlation between two variables  $X$  and  $Y$  on day  $n - 1$  is 0.6. Suppose further that the estimates of the volatilities for  $X$  and  $Y$  on day  $n - 1$  are  $1\%$  and  $2\%$ , respectively. From the relationship between correlation and covariance, the estimate of the covariance rate between  $X$  and  $Y$  on day  $n - 1$  is

$$
0. 6 \times 0. 0 1 \times 0. 0 2 = 0. 0 0 0 1 2
$$

Suppose that the percentage changes in  $X$  and  $Y$  on day  $n - 1$  are  $0.5\%$  and  $2.5\%$ , respectively. The variance rates and covariance rate for day  $n$  would be updated as follows:

$$
\begin{array}{l} \sigma_ {x, n} ^ {2} = 0. 9 5 \times 0. 0 1 ^ {2} + 0. 0 5 \times 0. 0 0 5 ^ {2} = 0. 0 0 0 0 9 6 2 5 \\ \sigma_ {\gamma , n} ^ {2} = 0. 9 5 \times 0. 0 2 ^ {2} + 0. 0 5 \times 0. 0 2 5 ^ {2} = 0. 0 0 0 4 1 1 2 5 \\ \operatorname {c o v} _ {n} = 0. 9 5 \times 0. 0 0 0 1 2 + 0. 0 5 \times 0. 0 0 5 \times 0. 0 2 5 = 0. 0 0 0 1 2 0 2 5 \\ \end{array}
$$

The new volatility of  $X$  is  $\sqrt{0.00009625} = 0.981\%$ , and the new volatility of  $Y$  is  $\sqrt{0.00041125} = 2.028\%$ . The new correlation between  $X$  and  $Y$  is

$$
\frac {0 . 0 0 0 1 2 0 2 5}{0 . 0 0 9 8 1 \times 0 . 0 2 0 2 8} = 0. 6 0 4 4
$$

# 9.2.2 GARCH

GARCH models can also be used for updating covariance rate estimates and forecasting the future level of covariance rates. For example, the GARCH(1,1) model for updating a covariance rate between  $X$  and  $Y$  is

$$
\operatorname {c o v} _ {n} = \omega + \alpha x _ {n - 1} \gamma_ {n - 1} + \beta \operatorname {c o v} _ {n - 1}
$$

This formula, like its counterpart in equation (8.10) for updating variances, gives some weight to a long-run average covariance, some to the most recent covariance estimate, and some to the most recent observation on covariance (which is  $x_{n-1}\gamma_{n-1}$ ). The long-term average covariance rate is  $\omega/(1 - \alpha - \beta)$ . Formulas similar to those in equations (8.14) and (8.15) can be developed for forecasting future covariance rates and calculating the average covariance rate during a future time period.

# 9.3 Correlation and Covariance Matrices

Once variances, covariances, and correlations have been calculated for a set of variables, correlation matrices and covariance matrices can be produced.

A correlation matrix is shown in Table 9.1. It displays coefficients of correlation. Because a variable is always perfectly correlated with itself, the diagonal elements of a correlation matrix are always 1. Furthermore, because  $\rho_{ij} = \rho_{ji}$ , the correlation matrix is symmetric.

It is often more convenient to work with a variance-covariance matrix. When  $i \neq j$ , the  $(i,j)$  element in this matrix is the covariance between variable  $i$  and variable  $j$ . When  $i = j$ , it is the variance of variable  $i$ . (See Table 9.2.)

# 9.3.1 Consistency Condition for Covariances

Not all variance-covariance matrices are internally consistent. The condition for an  $N \times N$  variance-covariance matrix,  $\Omega$ , to be internally consistent is

$$
\mathbf {w} ^ {\mathrm {T}} \boldsymbol {\Omega} \mathbf {w} \geq 0 \tag {9.4}
$$ for all  $N \times 1$  vectors  $\mathbf{w}$  where  $\mathbf{w}^{\mathrm{T}}$  is the transpose of  $\mathbf{w}$ . A matrix that satisfies this property is known as positive-semidefinite.


To understand why the condition in equation (9.4) must hold, suppose that  $\mathbf{w}$  is the (column) vector  $(w_{1},w_{2},\ldots ,w_{N})$ . The expression  $\mathbf{w}^{\mathrm{T}}\Omega \mathbf{w}$  is the variance rate of a

Table 9.1 A Correlation Matrix

<table><tr><td>1</td><td>ρ12</td><td>ρ13</td><td>...</td><td>ρ1n</td></tr><tr><td>ρ21</td><td>1</td><td>ρ23</td><td>...</td><td>ρ2n</td></tr><tr><td>ρ31</td><td>ρ32</td><td>1</td><td>...</td><td>ρ3n</td></tr><tr><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td></tr><tr><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td></tr><tr><td>ρn1</td><td>ρn2</td><td>ρn3</td><td>...</td><td>1</td></tr></table>

$\rho_{ij}$  is the correlation between variable  $i$  and variable  $j$ .

Table 9.2 A Variance-Covariance Matrix

<table><tr><td>var1</td><td>cov12</td><td>cov13</td><td>...</td><td>cov1n</td></tr><tr><td>cov21</td><td>var2</td><td>cov23</td><td>...</td><td>cov2n</td></tr><tr><td>cov31</td><td>cov32</td><td>var3</td><td>...</td><td>cov3n</td></tr><tr><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td></tr><tr><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td></tr><tr><td>covn1</td><td>covn2</td><td>covn3</td><td>...</td><td>varn</td></tr></table> portfolio where an amount  $w_{i}$  is invested in market variable  $i$ . As such, it cannot be negative.


To ensure that a positive-semidefinite matrix is produced, variances and covariances should be calculated consistently. For example, if variance rates are calculated by giving equal weight to the last  $m$  data items, the same should be done for covariance rates. If variance rates are updated using an EWMA model with  $\lambda = 0.94$ , the same should be done for covariance rates. Using a GARCH model to update a variance-covariance matrix in a consistent way is trickier and requires a multivariate model. $^1$

An example of a variance-covariance matrix that is not internally consistent is

$$

\left( \begin{array}{c c c} 1 & 0 & 0. 9 \\ 0 & 1 & 0. 9 \\ 0. 9 & 0. 9 & 1 \end{array} \right)

$$

The variance of each variable is 1.0 and so the covariances are also coefficients of correlation in this case. The first variable is highly correlated with the third variable, and the second variable is also highly correlated with the third variable. However, there is no correlation at all between the first and second variables. This seems strange. When we set  $\mathbf{w}^{\mathrm{T}}$  equal to  $(1,1,-1)$ , we find that the condition in equation (9.4) is not satisfied, proving that the matrix is not positive-semidefinite. $^2$

If we make a small change to a positive-semidefinite matrix that is calculated from observations on three variables (e.g., for the purposes of doing a sensitivity analysis), it is likely that the matrix will remain positive-semidefinite. However, if we do the same thing for observations on 100 variables, we have to be much more careful. An arbitrary small change to a positive-semidefinite  $100 \times 100$  matrix is quite likely to lead to it no longer being positive-semidefinite.

# 9.4 Multivariate Normal Distributions

Multivariate normal distributions are well understood and relatively easy to deal with. As we will explain in the next section, they can be useful tools for specifying the correlation structure between variables, even when the distributions of the variables are not normal.

We start by considering a bivariate normal distribution where there are only two variables,  $V_{1}$  and  $V_{2}$ . Suppose that we know that  $V_{1}$  has some value. Conditional on this, the value of  $V_{2}$  is normal with mean

$$

\mu_ {2} + \rho \sigma_ {2} \frac {V _ {1} - \mu_ {1}}{\sigma_ {1}}

$$ and standard deviation


$$

\sigma_ {2} \sqrt {1 - \rho^ {2}}

$$

Here  $\mu_{1}$  and  $\mu_{2}$  are the unconditional means of  $V_{1}$  and  $V_{2}$ ,  $\sigma_{1}$  and  $\sigma_{2}$  are their unconditional standard deviations, and  $\rho$  is the coefficient of correlation between  $V_{1}$  and  $V_{2}$ . Note that the expected value of  $V_{2}$  conditional on  $V_{1}$  is linearly dependent on the value of  $V_{1}$ . This corresponds to Figure 9.1(a). Also, the standard deviation of  $V_{2}$  conditional on the value of  $V_{1}$  is the same for all values of  $V_{1}$ .

Software for calculating the cumulative bivariate normal distribution is on the author's website: www-2.rotman.utoronto.ca/\~hull/riskman


# 9.4.1 Generating Random Samples from Multivariate Normal Distributions

Most programming languages have routines for sampling a random number between zero and one, and many have routines for sampling from a normal distribution.

When samples  $\varepsilon_{1}$  and  $\varepsilon_{2}$  from a bivariate normal distribution (where both variables have mean zero and standard deviation one) are required, the usual procedure involves first obtaining independent samples  $z_{1}$  and  $z_{2}$  from a univariate standard normal distribution (i.e., a normal distribution with mean zero and standard deviation one). The required samples  $\varepsilon_{1}$  and  $\varepsilon_{2}$  are then calculated as follows:

$$

\begin{array}{l} \varepsilon_ {1} = z _ {1} \\ \varepsilon_ {2} = \rho z _ {1} + z _ {2} \sqrt {1 - \rho^ {2}} \\ \end{array}

$$ where  $\rho$  is the coefficient of correlation in the bivariate normal distribution.

Consider next a situation where we require samples from a multivariate normal distribution (where all variables have mean zero and standard deviation one) and the coefficient of correlation between variable  $i$  and variable  $j$  is  $\rho_{ij}$ . We first sample  $n$  independent variables  $z_{i}$  ( $1 \leq i \leq n$ ) from univariate standard normal distributions. The required samples are  $\varepsilon_{i}$  ( $1 \leq i \leq n$ ), where

$$
\varepsilon_ {i} = \sum_ {k = 1} ^ {i} \alpha_ {i k} z _ {k} \tag {9.5}
$$ and the  $\alpha_{ik}$  are parameters chosen to give the correct variances and the correct correlations for  $\varepsilon_{i}$ . For  $1 \leq j < i$ , we must have


$$

\sum_ {k = 1} ^ {i} \alpha_ {i k} ^ {2} = 1

$$ and, for all  $j <   i$

$$
\sum_ {k = 1} ^ {j} \alpha_ {i k} \alpha_ {j k} = \rho_ {i j}
$$

The first sample,  $\varepsilon_{1}$ , is set equal to  $z_{1}$ . These equations can be solved so that  $\varepsilon_{2}$  is calculated from  $z_{1}$  and  $z_{2}$ ,  $\varepsilon_{3}$  is calculated from  $z_{1}$ ,  $z_{2}$ , and  $z_{3}$ , and so on. The procedure is known as the Cholesky decomposition. (See Problem 9.9.)

If we find ourselves trying to take the square root of a negative number when using the Cholesky decomposition, the variance-covariance matrix assumed for the variables is not internally consistent. As explained in Section 9.3.1, this is equivalent to saying that the matrix is not positive-semidefinite.

# 9.4.2 Factor Models

Sometimes the correlations between normally distributed variables are defined using a factor model. Suppose that  $U_{1}, U_{2}, \ldots, U_{N}$  have standard normal distributions (i.e., normal distributions with mean zero and standard deviation one). In a one-factor model, each  $U_{i} (1 \leq i \leq N)$  has a component dependent on a common factor,  $F$ , and a component that is uncorrelated with the other variables. Formally,

$$
U _ {i} = a _ {i} F + \sqrt {1 - a _ {i} ^ {2}} Z _ {i} \tag {9.6}
$$ where  $F$  and the  $Z_{i}$  have standard normal distributions and  $a_{i}$  is a constant between -1 and +1. The  $Z_{i}$  are uncorrelated with each other and uncorrelated with  $F$ . The coefficient of  $Z_{i}$  is chosen so that  $U_{i}$  has a mean of zero and a variance of one. In this model, all the correlation between  $U_{i}$  and  $U_{j}$  arises from their dependence on the common factor,  $F$ . The coefficient of correlation between  $U_{i}$  and  $U_{j}$  is  $a_{i}a_{j}$ .


A one-factor model imposes some structure on the correlations and has the advantage that the resulting covariance matrix is always positive-semidefinite. Without assuming a factor model, the number of correlations that have to be estimated for the  $N$  variables is  $N(N - 1) / 2$ . With the one-factor model, we need only estimate  $N$  parameters:  $a_1$ ,  $a_2$ , ...,  $a_N$ . An example of a one-factor model from the world of investments is the capital asset pricing model where the return on a stock has a component dependent on the return from the market and an idiosyncratic (nonsystematic) component that is independent of the return on other stocks (see Section 1.3).

The one-factor model can be extended to a two-factor, three-factor, or  $M$ -factor model. In the  $M$ -factor model

$$

U _ {i} = a _ {i 1} F _ {1} + a _ {i 2} F _ {2} + \dots + a _ {i M} F _ {M} + \sqrt {1 - a _ {i 1} ^ {2} - a _ {i 2} ^ {2} - \dots - a _ {i M} ^ {2}} Z _ {i} \tag {9.7}

$$

The factors,  $F_{1}, F_{2}, \ldots, F_{M}$  have uncorrelated standard normal distributions and the  $Z_{i}$  are uncorrelated both with each other and with the factors. In this case, the correlation between  $U_{i}$  and  $U_{j}$  is

$$

\sum_ {m = 1} ^ {M} a _ {i m} a _ {j m}

$$

# 9.5 Copulas

Consider two correlated variables,  $V_{1}$  and  $V_{2}$ . The marginal distribution of  $V_{1}$  (sometimes also referred to as the unconditional distribution) is its distribution assuming we know nothing about  $V_{2}$ ; similarly, the marginal distribution of  $V_{2}$  is its distribution assuming we know nothing about  $V_{1}$ . Suppose we have estimated the marginal distributions of  $V_{1}$  and  $V_{2}$ . How can we make an assumption about the correlation structure between the two variables to define their joint distribution?

If the marginal distributions of  $V_{1}$  and  $V_{2}$  are normal, a convenient and easy-to-work-with assumption is that the joint distribution of the variables is bivariate normal. (The correlation structure between the variables is then as described in Section 9.4.) Similar assumptions are possible for some other marginal distributions. But often there is no natural way of defining a correlation structure between two marginal distributions. This is where copulas come in.

As an example of the application of copulas, suppose that variables  $V_{1}$  and  $V_{2}$  have the triangular probability density functions shown in Figure 9.2. Both variables have values between 0 and 1. The density function for  $V_{1}$  peaks at 0.2. The density function for  $V_{2}$  peaks at 0.5. For both density functions, the maximum height is 2.0 (so that the area under the density function is 1.0). To use what is known as a Gaussian copula, we map  $V_{1}$  and  $V_{2}$  into new variables  $U_{1}$  and  $U_{2}$  that have standard normal distributions. (A standard normal distribution is a normal distribution with mean zero and standard deviation one.) The mapping is accomplished on a percentile-to-percentile basis. The one-percentile point of the  $V_{1}$  distribution is mapped to the one-percentile point of the  $U_{1}$  distribution; the 10-percentile point of the  $V_{1}$  distribution is mapped to the

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/927c145d90bc0b0e5c0f387ef258db5c0c07b93454203ec4b7ece6543c47a33a.jpg)
(a)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/2b7e75551a7aeeeb0915a30dfc37b59a95ba6da8183c84b010fff5114285117a.jpg)
(b)
Figure 9.2 Triangular Distributions for  $V_{1}$  and  $V_{2}$

Table 9.3 Mapping of  $V_{1}$  That Has the Triangular Distribution in Figure 9.2(a) to  $U_{1}$  That Has a Standard Normal Distribution

<table><tr><td>V1Value</td><td>Percentile of Distribution</td><td>U1Value</td></tr><tr><td>0.1</td><td>5.00</td><td>-1.64</td></tr><tr><td>0.2</td><td>20.00</td><td>-0.84</td></tr><tr><td>0.3</td><td>38.75</td><td>-0.29</td></tr><tr><td>0.4</td><td>55.00</td><td>0.13</td></tr><tr><td>0.5</td><td>68.75</td><td>0.49</td></tr><tr><td>0.6</td><td>80.00</td><td>0.84</td></tr><tr><td>0.7</td><td>88.75</td><td>1.21</td></tr><tr><td>0.8</td><td>95.00</td><td>1.64</td></tr><tr><td>0.9</td><td>98.75</td><td>2.24</td></tr></table>

Table 9.4 Mapping of  $V_{2}$  That Has the Triangular Distribution in Figure 9.2(b) to  $U_{2}$  That Has a Standard Normal Distribution

<table><tr><td>V2Value</td><td>Percentile of Distribution</td><td>U2Value</td></tr><tr><td>0.1</td><td>2.00</td><td>-2.05</td></tr><tr><td>0.2</td><td>8.00</td><td>-1.41</td></tr><tr><td>0.3</td><td>18.00</td><td>-0.92</td></tr><tr><td>0.4</td><td>32.00</td><td>-0.47</td></tr><tr><td>0.5</td><td>50.00</td><td>0.00</td></tr><tr><td>0.6</td><td>68.00</td><td>0.47</td></tr><tr><td>0.7</td><td>82.00</td><td>0.92</td></tr><tr><td>0.8</td><td>92.00</td><td>1.41</td></tr><tr><td>0.9</td><td>98.00</td><td>2.05</td></tr></table>

10-percentile point of the  $U_{1}$  distribution; and so on.  $V_{2}$  is mapped into  $U_{2}$  in a similar way. Table 9.3 shows how values of  $V_{1}$  are mapped into values of  $U_{1}$ . Table 9.4 similarly shows how values of  $V_{2}$  are mapped into values of  $U_{2}$ . Consider the  $V_{1} = 0.1$  calculation in Table 9.3. The cumulative probability that  $V_{1}$  is less than 0.1 is (by calculating areas of triangles)  $0.5 \times 0.1 \times 1 = 0.05$  or  $5\%$ . The value 0.1 for  $V_{1}$  therefore gets mapped to the five-percentile point of the standard normal distribution. This is  $-1.64$ .

The variables,  $U_{1}$  and  $U_{2}$ , have normal distributions. We assume that they are jointly bivariate normal. This in turn implies a joint distribution and a correlation structure between  $V_{1}$  and  $V_{2}$ . The essence of the copula is therefore that, instead of defining a correlation structure between  $V_{1}$  and  $V_{2}$  directly, we do so indirectly. We map  $V_{1}$  and

$V_{2}$  into other variables that have well-behaved distributions and for which it is easy to define a correlation structure.

Suppose that we assume that the correlation between  $U_{1}$  and  $U_{2}$  is 0.5. The joint cumulative probability distribution between  $V_{1}$  and  $V_{2}$  is shown in Table 9.5. To illustrate the calculations, consider the first one where we are calculating the probability that  $V_{1} < 0.1$  and  $V_{2} < 0.1$ . From Tables 9.3 and 9.4, this is the same as the probability that  $U_{1} < -1.64$  and  $U_{2} < -2.05$ . From the cumulative bivariate normal distribution, this is 0.006 when  $\rho = 0.5$ . (Note that the probability would be only  $0.02 \times 0.05 = 0.001$  if  $\rho = 0$ .)

The correlation between  $U_{1}$  and  $U_{2}$  is referred to as the copula correlation. This is not, in general, the same as the coefficient of correlation between  $V_{1}$  and  $V_{2}$ . Because  $U_{1}$  and  $U_{2}$  are bivariate normal, the conditional mean of  $U_{2}$  is linearly dependent on  $U_{1}$  and the conditional standard deviation of  $U_{2}$  is constant (as discussed in Section 9.4). However, a similar result does not in general apply to  $V_{1}$  and  $V_{2}$ .

# 9.5.1 Expressing the Approach Algebraically

The way in which a Gaussian copula defines a joint distribution is illustrated in Figure 9.3. For a more formal description of the model, suppose that  $G_{1}$  and  $G_{2}$  are the cumulative marginal (i.e., unconditional) probability distributions of  $V_{1}$  and  $V_{2}$ . We map  $V_{1} = v_{1}$  to  $U_{1} = u_{1}$  and  $V_{2} = v_{2}$  to  $U_{2} = u_{2}$  so that

$$

G _ {1} (\nu_ {1}) = N (u _ {1})

$$ and


$$

G _ {2} (v _ {2}) = N (u _ {2})

$$

Table 9.5 Cumulative Joint Probability Distribution for  $V_{1}$  and  $V_{2}$  in the Gaussian Copula Model (Correlation parameter  $= 0.5$ . Table shows the joint probability that  $V_{1}$  and  $V_{2}$  are less than the specified values.)

<table><tr><td rowspan="2">V1</td><td colspan="9">V2</td></tr><tr><td>0.1</td><td>0.2</td><td>0.3</td><td>0.4</td><td>0.5</td><td>0.6</td><td>0.7</td><td>0.8</td><td>0.9</td></tr><tr><td>0.1</td><td>0.006</td><td>0.017</td><td>0.028</td><td>0.037</td><td>0.044</td><td>0.048</td><td>0.049</td><td>0.050</td><td>0.050</td></tr><tr><td>0.2</td><td>0.013</td><td>0.043</td><td>0.081</td><td>0.120</td><td>0.156</td><td>0.181</td><td>0.193</td><td>0.198</td><td>0.200</td></tr><tr><td>0.3</td><td>0.017</td><td>0.061</td><td>0.124</td><td>0.197</td><td>0.273</td><td>0.331</td><td>0.364</td><td>0.381</td><td>0.387</td></tr><tr><td>0.4</td><td>0.019</td><td>0.071</td><td>0.149</td><td>0.248</td><td>0.358</td><td>0.449</td><td>0.505</td><td>0.535</td><td>0.548</td></tr><tr><td>0.5</td><td>0.019</td><td>0.076</td><td>0.164</td><td>0.281</td><td>0.417</td><td>0.537</td><td>0.616</td><td>0.663</td><td>0.683</td></tr><tr><td>0.6</td><td>0.020</td><td>0.078</td><td>0.173</td><td>0.301</td><td>0.456</td><td>0.600</td><td>0.701</td><td>0.763</td><td>0.793</td></tr><tr><td>0.7</td><td>0.020</td><td>0.079</td><td>0.177</td><td>0.312</td><td>0.481</td><td>0.642</td><td>0.760</td><td>0.837</td><td>0.877</td></tr><tr><td>0.8</td><td>0.020</td><td>0.080</td><td>0.179</td><td>0.318</td><td>0.494</td><td>0.667</td><td>0.798</td><td>0.887</td><td>0.936</td></tr><tr><td>0.9</td><td>0.020</td><td>0.080</td><td>0.180</td><td>0.320</td><td>0.499</td><td>0.678</td><td>0.816</td><td>0.913</td><td>0.970</td></tr></table> where  $N$  is the cumulative normal distribution function. This means that

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/90e1f86efb6a727a5ace0a7932db9e2a7ab54727f135a183115814aecaa569a2.jpg)
Figure 9.3 The Way in Which a Copula Model Defines a Joint Distribution


$$ u _ {1} = N ^ {- 1} [ G _ {1} (\nu_ {1}) ] \qquad u _ {2} = N ^ {- 1} [ G _ {2} (\nu_ {2}) ]
$$

$$
\nu_ {1} = G _ {1} ^ {- 1} [ N (u _ {1}) ] \qquad \nu_ {2} = G _ {2} ^ {- 1} [ N (u _ {2}) ]
$$

The variables  $U_{1}$  and  $U_{2}$  are then assumed to be bivariate normal. The key property of a copula model is that it preserves the marginal distributions of  $V_{1}$  and  $V_{2}$  (however unusual these may be) while defining a correlation structure between them.

# 9.5.2 Other Copulas

The Gaussian copula is just one copula that can be used to define a correlation structure between  $V_{1}$  and  $V_{2}$ . There are many other copulas leading to many other correlation structures. One that is sometimes used is the Student's t-copula. This works in the same way as the Gaussian copula except that the variables  $U_{1}$  and  $U_{2}$  are assumed to have a bivariate Student's  $t$ -distribution instead of a bivariate normal distribution. To sample from a bivariate Student's  $t$ -distribution with  $f$  degrees of freedom and correlation  $\rho$ , the steps are as follows:

1. Sample from the inverse chi-square distribution to get a value  $\chi$ . (In Excel, the CHIINV function can be used. The first argument is RAND() and the second is  $f$ .)
2. Sample from a bivariate normal distribution with correlation  $\rho$  as described in Section 9.4.
3. Multiply the normally distributed samples by  $\sqrt{f / \chi}$ .

# 9.5.3 Tail Dependence

Figure 9.4 shows plots of 5,000 random samples from a bivariate normal distribution, while Figure 9.5 does the same for the bivariate Student's  $t$ . The correlation parameter is 0.5 and the number of degrees of freedom for the Student's  $t$  is 4. Define a tail value of a distribution as a value in the left or right  $1\%$  tail of the distribution. There is a tail value for the normal distribution when the variable is greater than 2.33 or less than -2.33. Similarly, there is a tail value in the Student's  $t$ -distribution when the value of the variable is greater than 3.75 or less than -3.75. Vertical and horizontal lines in the figures indicate when tail values occur. The figures illustrate that it is much more common for the two variables to have tail values at the same time in the bivariate Student's  $t$ -distribution than in the bivariate normal distribution. To put this another way, the tail dependence is higher in a bivariate Student's  $t$ -distribution than in a bivariate normal distribution. We made the point earlier that correlations between market variables tend to increase in extreme market conditions, so that Figure 9.1(c) is sometimes a better description of the correlation structure between two variables than Figure 9.1(a). This has led some researchers to argue that the Student's  $t$ -copula provides a better description of the joint behavior of two market variables than the Gaussian copula.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/9da5b93a4bec596f2f4bbbe39575ff7b07a100ec2c1f5a7664b9e64d10cf2787.jpg)

Figure 9.4 5,000 Random Samples from a Bivariate Normal Distribution

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/8e07ec804fbd3b6e5a39fb208eccaf24429fc691b920b9fec9c931fb70c197e3.jpg)

Figure 9.5 5,000 Random Samples from a Bivariate Student's  $t$ -distribution with Four Degrees of Freedom

# 9.5.4 Multivariate Copulas

Copulas can be used to define a correlation structure between more than two variables. The simplest example of this is the multivariate Gaussian copula. Suppose that there are  $N$  variables,  $V_{1}, V_{2}, \ldots, V_{N}$  and that we know the marginal distribution of each variable. For each  $i$  ( $1 \leq i \leq N$ ), we transform  $V_{i}$  into  $U_{i}$  where  $U_{i}$  has a standard normal distribution. (As described earlier, the transformation is accomplished on a percentile-to-percentile basis.) We then assume that the  $U_{i}$  have a multivariate normal distribution.

# 9.5.5 A Factor Copula Model

In multivariate copula models, analysts often assume a factor model for the correlation structure between the  $U_{i}$ . When there is only one factor, equation (9.6) gives

$$
U _ {i} = a _ {i} F + \sqrt {1 - a _ {i} ^ {2}} Z _ {i} \tag {9.8}
$$ where  $F$  and the  $Z_{i}$  have standard normal distributions. The  $Z_{i}$  are uncorrelated with each other and with  $F$ .


Other factor copula models are obtained by choosing  $F$  and the  $Z_{i}$  to have other zero-mean unit-variance distributions. We discuss this further in connection with credit risk in the next section. These distributional choices affect the nature of the dependence between the  $U$ -variables and therefore that between the  $V$ -variables.

# 9.6 Application to Loan Portfolios: Vasicek's Model

We now present an application of the one-factor Gaussian copula model that will prove useful in understanding the Basel II capital requirements, which are discussed in Chapter 25. Suppose a bank has a large portfolio of loans where the probability of default per year for each loan is  $1\%$ . If the loans default independently of each other, we would expect the default rate to be almost exactly  $1\%$  every year. In practice, loans do not default independently of each other. They are all influenced by macroeconomic conditions. As a result, in some years the default rate is high whereas in others it is low. This is illustrated by Table 9.6, which shows the default rates compiled by S&P for all rated companies between 1981 and 2020. The default rate varies from a low of  $0.15\%$  in 1981 to a high of  $4.19\%$  in 2009. Other high-default-rate years were 1990, 1991, 1999, 2000, 2001, 2002, 2016, and 2020

To model the defaults of the loans in a portfolio, we define  $T_{i}$  as the time when company  $i$  defaults. (There is an implicit assumption that all companies will default eventually—but the default may happen a long time, perhaps even hundreds of years, in the future.) We make the simplifying assumption that all loans have the same unconditional cumulative probability distribution for the time to default and define PD as the probability of default by time  $T$ :

$$

\mathrm {P D} = \operatorname {P r o b} \left(T _ {i} <   T\right).

$$

The Gaussian copula model can be used to define a correlation structure between the times to default of the loans. Following the procedure we have described, each time to default  $T_{i}$  is mapped to a variable  $U_{i}$  that has a standard normal distribution on a percentile-to-percentile basis.

Table 9.6 Annual Percentage Default Rate for All Rated Companies, 1981-2020

<table><tr><td>Year</td><td>Default Rate</td><td>Year</td><td>Default Rate</td><td>Year</td><td>Default Rate</td></tr><tr><td>1981</td><td>0.15</td><td>1995</td><td>1.05</td><td>2009</td><td>4.19</td></tr><tr><td>1982</td><td>1.22</td><td>1996</td><td>0.51</td><td>2010</td><td>1.21</td></tr><tr><td>1983</td><td>0.77</td><td>1997</td><td>0.63</td><td>2011</td><td>0.80</td></tr><tr><td>1984</td><td>0.93</td><td>1998</td><td>1.28</td><td>2012</td><td>1.14</td></tr><tr><td>1985</td><td>1.13</td><td>1999</td><td>2.15</td><td>2013</td><td>1.06</td></tr><tr><td>1986</td><td>1.74</td><td>2000</td><td>2.48</td><td>2014</td><td>0.69</td></tr><tr><td>1987</td><td>0.95</td><td>2001</td><td>3.79</td><td>2015</td><td>1.36</td></tr><tr><td>1988</td><td>1.39</td><td>2002</td><td>3.60</td><td>2016</td><td>2.09</td></tr><tr><td>1989</td><td>1.79</td><td>2003</td><td>1.93</td><td>2017</td><td>1.21</td></tr><tr><td>1990</td><td>2.74</td><td>2004</td><td>0.78</td><td>2018</td><td>1.03</td></tr><tr><td>1991</td><td>3.26</td><td>2005</td><td>0.60</td><td>2019</td><td>1.30</td></tr><tr><td>1992</td><td>1.50</td><td>2006</td><td>0.48</td><td>2020</td><td>2.74</td></tr><tr><td>1993</td><td>0.60</td><td>2007</td><td>0.37</td><td></td><td></td></tr><tr><td>1994</td><td>0.63</td><td>2008</td><td>1.80</td><td></td><td></td></tr></table>

SOURCE: S&P Global Ratings: www.spglobal.com/ratingsdirect.

We assume the factor model in equation (9.8) for the correlation structure is between the  $U_{i}$  and make the simplifying assumption that the  $a_{i}$  are all the same and equal to  $a$  so that:

$$

U _ {i} = a F + \sqrt {1 - a ^ {2}} Z _ {i}

$$

As in equation (9.8), the variables  $F$  and  $Z_{i}$  have independent standard normal distributions. The copula correlation between each pair of loans is in this case the same. It is

$$

\rho = a ^ {2}

$$ so that the expression for  $U_{i}$  can be written

$$
U _ {i} = \sqrt {\rho} F + \sqrt {1 - \rho} Z _ {i} \tag {9.9}
$$

Define the "worst case default rate,"  $\operatorname{WCDR}(T, X)$ , as the default rate (i.e., percentage of loans defaulting) during time  $T$  that will not be exceeded with probability  $X$ . (In many applications  $T$  will be one year.) As shown in what follows, the assumptions we have made lead to

$$
\operatorname {W C D R} (T, X) = N \left(\frac {N ^ {- 1} (\mathrm {P D}) + \sqrt {\rho} N ^ {- 1} (X)}{\sqrt {1 - \rho}}\right) \tag {9.10}
$$

This is a strange-looking result, but a very important one. It was first developed by Vasicek in 1987. $^{7}$ $N$  and  $N^{-1}$  are the cumulative normal and inverse cumulative normal distribution functions. They can be calculated using the NORMSDIST and NORM-SINV functions in Excel. Note that if  $\rho = 0$ , the loans default independently of each other and WCDR = PD. As  $\rho$  increases, WCDR increases.

# Example 9.2

Suppose that a bank has a large number of loans to retail customers. The one-year probability of default for each loan is  $2\%$  and the copula correlation parameter,  $\rho$ , in Vasicek's model is estimated as 0.1. In this case,

$$
\mathrm {W C D R} (1, 0. 9 9 9) = N \left(\frac {N ^ {- 1} (0 . 0 2) + \sqrt {0 . 1} N ^ {- 1} (0 . 9 9 9)}{\sqrt {1 - 0 . 1}}\right) = 0. 1 2 8
$$ showing that the  $99.9\%$  worst case one-year default rate is  $12.8\%$ .


# 9.6.1 Proof of Vasicek's Result

From the properties of the Gaussian copula model

$$

\mathrm {P D} = \operatorname {P r o b} \left(T _ {i} <   T\right) = \operatorname {P r o b} \left(U _ {i} <   U\right)

$$ where


$$

U = N ^ {- 1} [ \mathrm {P D} ] \tag {9.11}

$$

The probability of default by time  $T$  depends on the value of the factor,  $F$ , in equation (9.9). The factor can be thought of as an index of macroeconomic conditions. If  $F$  is high, macroeconomic conditions are good. Each  $U_{i}$  will then tend to be high and the corresponding  $T_{i}$  will therefore also tend to be high, meaning that the probability of an early default is low and therefore  $\mathrm{Prob}(T_i < T)$  is low. If  $F$  is low, macroeconomic conditions are bad. Each  $U_{i}$  and the corresponding  $T_{i}$  will then tend to be low so that the probability of an early default is high. To explore this further, we consider the probability of default conditional on  $F$ .

From equation (9.9),

$$

Z _ {i} = \frac {U _ {i} - \sqrt {\rho} F}{\sqrt {1 - \rho}}

$$

The probability that  $U_{i} < U$  conditional on the factor value,  $F$ , is

$$

\operatorname {P r o b} (U _ {i} <   U | F) = \operatorname {P r o b} \left(Z _ {i} <   \frac {U - \sqrt {\rho} F}{\sqrt {1 - \rho}}\right) = N \left(\frac {U - \sqrt {\rho} F}{\sqrt {1 - \rho}}\right)

$$

This is also  $\operatorname{Prob}(T_i < T|F)$  so that

$$

\operatorname {P r o b} \left(T _ {i} <   T \mid F\right) = N \left(\frac {U - \sqrt {\rho} F}{\sqrt {1 - \rho}}\right) \tag {9.12}

$$

From equation (9.11) this becomes

$$

\operatorname {P r o b} \left(T _ {i} <   T \mid F\right) = N \left(\frac {N ^ {- 1} (\mathrm {P D}) - \sqrt {\rho} F}{\sqrt {1 - \rho}}\right) \tag {9.13}

$$

For a large portfolio of loans with the same PD, where the copula correlation for each pair of loans is  $\rho$ , this equation provides a good estimate of the percentage of loans defaulting by time  $T$  conditional on  $F$ . We will refer to this as the default rate.

As  $F$  decreases, the default rate increases. How bad can the default rate become? Because  $F$  has a normal distribution, the probability that  $F$  will be less than  $N^{-1}(Y)$  is  $Y$ . There is therefore a probability of  $Y$  that the default rate will be greater than

$$

N \bigg (\frac {N ^ {- 1} (\mathrm {P D}) - \sqrt {\rho} N ^ {- 1} (Y)}{\sqrt {1 - \rho}} \bigg)

$$

The default rate that we are  $X\%$  certain will not be exceeded in time  $T$  is obtained by substituting  $Y = 1 - X$  into the preceding expression. Because  $N^{-1}(X) = -N^{-1}(1 - X)$ , we obtain equation (9.10).

# 9.6.2 Estimating PD and  $\rho$

The maximum likelihood methods explained in Chapter 8 can be used to estimate PD and  $\rho$  from historical data on default rates. We used equation (9.10) to calculate a high percentile of the default rate distribution, but it is actually true for all percentiles. If DR is the default rate and  $G(\mathrm{DR})$  is the cumulative probability distribution function for DR, equation (9.10) shows that

$$

\mathrm {D R} = N \left(\frac {N ^ {- 1} (\mathrm {P D}) + \sqrt {\rho} N ^ {- 1} (G (\mathrm {D R}))}{\sqrt {1 - \rho}}\right)

$$

Rearranging this equation,

$$

G (\mathrm {D R}) = N \left(\frac {\sqrt {1 - \rho} N ^ {- 1} (\mathrm {D R}) - N ^ {- 1} (\mathrm {P D})}{\sqrt {\rho}}\right) \tag {9.14}

$$

Differentiating this, the probability density function for the default rate is

$$ g (\mathrm {D R}) = \sqrt {\frac {1 - \rho}{\rho}} \exp \left\{\frac {1}{2} \left[ (N ^ {- 1} (\mathrm {D R})) ^ {2} - \left(\frac {\sqrt {1 - \rho} N ^ {- 1} (\mathrm {D R}) - N ^ {- 1} (\mathrm {P D})}{\sqrt {\rho}}\right) ^ {2} \right] \right\} \tag {9.15}
$$

The procedure for calculating maximum likelihood estimates for PD and  $\rho$  from historical data is as follows:

1. Choose trial values for PD and  $\rho$ .
2. Calculate the logarithm of the probability density in equation (9.15) for each of the observations on DR.
3. Use Solver to search for the values of PD and  $\rho$  that maximize the sum of the values in 2.

One application of this is to the data in Table 9.6. The estimates for  $\rho$  and PD given by these data are 0.063 and  $1.48\%$ , respectively. (See worksheet on the author's website for the calculations.) The probability distribution for the default rate is shown in Figure 9.6. The  $99.9\%$  worst case default rate is

$$
N \left(\frac {N ^ {- 1} (0 . 0 1 4 8) + \sqrt {0 . 0 6 3} N ^ {- 1} (0 . 9 9 9)}{\sqrt {1 - 0 . 0 6 3}}\right) = 0. 0 7 4
$$ or  $7.4\%$  per annum.


![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/797bca79b21a19b3b47c5f4156b97de712e510f36af18874939774223e7c40fa.jpg)
Figure 9.6 Probability Distribution of Default Rate When Parameters Are Estimated Using the Data in Table 9.6

# 9.6.3 Alternatives to the Gaussian Copula

The one-factor Gaussian copula model has its limitations. As Figure 9.4 illustrates, it leads to very little tail dependence. This means that an unusually early default for one company does not often happen at the same time as an unusually early default for another company. It can be difficult to find a  $\rho$  to fit data. For example, there is no  $\rho$  that is consistent with a PD of  $1\%$  and the situation where one year in 10 the default rate is greater than  $3\%$ . Other one-factor copula models with more tail dependence can provide a better fit to data.

An approach to developing other one-factor copulas is to choose  $F$  or  $Z_{i}$ , or both, as distributions with heavier tails than the normal distribution in equation (9.9). (They have to be scaled so that they have a mean of zero and standard deviation of one.) The distribution of  $U_{i}$  is then determined (possibly numerically) from the distributions of  $F$  and  $Z_{i}$ . Equation (9.10) becomes

$$

\operatorname {W C D R} (T, X) = \Phi \left(\frac {\Psi^ {- 1} (\mathrm {P D}) + \sqrt {\rho} \Theta^ {- 1} (X)}{\sqrt {1 - \rho}}\right)

$$ where  $\Phi, \Theta$ , and  $\Psi$  are the cumulative probability distributions of  $Z_{i}$ ,  $F$ , and  $U_{i}$ , and equation (9.14) becomes

$$
G (\mathrm {D R}) = \Theta \left(\frac {\sqrt {1 - \rho} \Phi^ {- 1} (\mathrm {D R}) - \Psi^ {- 1} (\mathrm {P D})}{\sqrt {\rho}}\right)
$$

# Summary

Risk managers use correlations or covariances to describe the relationship between two variables. The daily covariance rate is the correlation between the daily returns on the variables multiplied by the product of their daily volatilities. The methods for monitoring a covariance rate are similar to those described in Chapter 8 for monitoring a variance rate. Risk managers often try to keep track of a variance-covariance matrix for all the variables to which they are exposed.

The marginal distribution of a variable is the unconditional distribution of the variable. Very often an analyst is in a situation where he or she has estimated the marginal distributions of a set of variables and wants to make an assumption about their correlation structure. If the marginal distributions of the variables happen to be normal, it is natural to assume that the variables have a multivariate normal distribution. In other situations, copulas are used. The marginal distributions are transformed on a percentile-to-percentile basis to normal distributions (or to some other distribution for which there is a multivariate counterpart). The correlation structure between the variables of interest is then defined indirectly from an assumed correlation structure between the transformed variables.

When there are many variables, analysts often use a factor model. This is a way of reducing the number of correlation estimates that have to be made. The correlation between any two variables is assumed to derive solely from their correlations with the factors. The default correlation between different companies can be modeled using a factor-based Gaussian copula model of their times to default.

An important application of copulas for risk managers is to the calculation of the distribution of default rates for loan portfolios. Analysts often assume that a one-factor copula model relates the probability distributions of the times to default for different loans. The percentiles of the distribution of the number of defaults on a large portfolio can then be calculated from the percentiles of the probability distribution of the factor. As we shall see in Chapter 25, this is the approach used in determining credit risk capital requirements for banks under Basel II.

# Further Reading

Cherubini, U., E. Luciano, and W. Vecchiato. Copula Methods in Finance. Hoboken, NJ: John Wiley & Sons, 2004.

Demarta, S., and A. J. McNeil. "The  $t$ -Copula and Related Copulas." Working Paper, Department of Mathematics, ETH Zentrum, Zurich, Switzerland, 2005.

Engle, R. F., and J. Mezrich. "GARCH for Groups." Risk (August 1996): 36-40.

Vasicek, O. "Probability of Loss on a Loan Portfolio." Working Paper, KMV, 1987. (Published in Risk in December 2002 under the title "Loan Portfolio Value.")

# Practice Questions and Problems (Answers at End of Book)

9.1 If you know the correlation between two variables, what extra information do you need to calculate the covariance?

9.2 What is the difference between correlation and dependence? Suppose that  $\gamma = x^2$  and  $x$  is normally distributed with mean zero and standard deviation one. What is the correlation between  $x$  and  $\gamma$ ?

9.3 What is a factor model? Why are factor models useful when defining a correlation structure between large numbers of variables?

9.4 What is meant by a positive-semidefinite matrix? What are the implications of a correlation matrix not being positive-semidefinite?

9.5 Suppose that the current daily volatilities of asset A and asset B are 1.6\% and 2.5\%, respectively. The prices of the assets at close of trading yesterday were $20 and $40 and the estimate of the coefficient of correlation between the returns on the two assets made at that time was 0.25. The parameter λ used in the EWMA model is 0.95.

(a) Calculate the current estimate of the covariance between the assets.

 (b) On the assumption that the prices of the assets at close of trading today are $20.50 and $40.50, update the correlation estimate.

9.6 Suppose that the current daily volatilities of asset X and asset Y are 1.0\% and 1.2\%, respectively. The prices of the assets at close of trading yesterday were $30 and $50 and the estimate of the coefficient of correlation between the returns on the two assets made at this time was 0.50. Correlations and volatilities are updated using a GARCH(1,1) model. The estimates of the model's parameters are α = 0.04 and β = 0.94. For the correlation ω = 0.000001 and for the volatilities ω = 0.000003. If the prices of the two assets at close of trading today are $31 and $51, how is the correlation estimate updated?

9.7 Suppose that in Problem 8.15 the correlation between the S&P 500 index (measured in dollars) and the FTSE 100 index (measured in sterling) is 0.7, the correlation between the S&P 500 index (measured in dollars) and the dollar-sterling exchange rate is 0.3, and the daily volatility of the S&P 500 index is  $1.6\%$ . What is the correlation between the S&P 500 index (measured in dollars) and the FTSE 100 index when it is translated to dollars? (Hint: For three variables  $X$ ,  $Y$ , and  $Z$ , the covariance between  $X + Y$  and  $Z$  equals the covariance between  $X$  and  $Z$  plus the covariance between  $Y$  and  $Z$ .)

9.8 Suppose that two variables  $V_{1}$  and  $V_{2}$  have uniform distributions where all values between 0 and 1 are equally likely. Use a Gaussian copula to define the correlation structure between  $V_{1}$  and  $V_{2}$  with a copula correlation of 0.3. Produce a table similar to Table 9.5 considering values of 0.25, 0.50, and 0.75 for  $V_{1}$  and  $V_{2}$ . (A spreadsheet for calculating the cumulative bivariate normal distribution is on the author's website: www-2.rotman.utoronto.ca/~hull/riskman.)

9.9 Assume that you have independent random samples  $z_{1}, z_{2}$ , and  $z_{3}$  from a standard normal distribution and want to convert them to samples  $\varepsilon_{1}, \varepsilon_{2}$ , and  $\varepsilon_{3}$  from a trivariate normal distribution using the Cholesky decomposition. Derive three formulas expressing  $\varepsilon_{1}, \varepsilon_{2}$ , and  $\varepsilon_{3}$  in terms of  $z_{1}, z_{2}$ , and  $z_{3}$  and the three correlations that are needed to define the trivariate normal distribution.
9.10 Explain what is meant by tail dependence. How can you vary tail dependence by the choice of copula?
9.11 Suppose that the marginal distributions of  $V_{1}$  and  $V_{2}$  are standard normal distributions but that a Student's  $t$ -copula with four degrees of freedom and a correlation parameter of 0.5 is used to define the correlation between the variables. How would you obtain samples from the joint distribution?
9.12 In Table 9.5, what is the probability density function of  $V_{2}$  conditional on  $V_{1} < 0.1$ ? Compare it with the unconditional distribution of  $V_{2}$ .
9.13 What is the median of the distribution of  $V_{2}$  when  $V_{1}$  equals 0.2 in the example in Tables 9.3 and 9.4?
9.14 Suppose that a bank has made a large number of loans of a certain type. The one-year probability of default on each loan is  $1.5\%$  and the recovery rate is  $30\%$ . The bank uses a Gaussian copula for time to default. Use Vasicek's model to estimate the default rate that we are  $99.5\%$  certain will not be exceeded. Assume a copula correlation of 0.2.
9.15 Suppose that the default rate for a portfolio of consumer loans over the past 10 years has been  $1\%$ ,  $9\%$ ,  $2\%$ ,  $3\%$ ,  $5\%$ ,  $1\%$ ,  $6\%$ ,  $7\%$ ,  $4\%$ , and  $1\%$ . What are the maximum likelihood estimates of the parameters in Vasicek's model?

# Further Questions

9.16 Suppose that the price of Asset X at close of trading yesterday was $300 and its volatility was estimated as 1.3\% per day. The price of X at the close of trading today is $298. Suppose further that the price of Asset Y at the close of trading yesterday was $8, its volatility was estimated as 1.5\% per day, and its correlation with X was estimated as 0.8. The price of Y at the close of trading today is unchanged at $8. Update the volatility of X and Y and the correlation between X and Y using

(a) The EWMA model with  $\lambda = 0.94$

(b) The GARCH(1,1) model with  $\omega = 0.000002$ ,  $\alpha = 0.04$ , and  $\beta = 0.94$ .

In practice, is the  $\omega$  parameter likely to be the same for X and Y?

9.17 The probability density function for an exponential distribution is  $\lambda e^{-\lambda x}$  where  $x$  is the value of the variable and  $\lambda$  is a parameter. The cumulative probability distribution is  $1 - e^{-\lambda x}$ . Suppose that two variables  $V_{1}$  and  $V_{2}$  have exponential distributions with  $\lambda$  parameters of 1.0 and 2.0, respectively. Use a Gaussian copula to define the correlation structure between  $V_{1}$  and  $V_{2}$  with a copula correlation of  $-0.2$ . Produce a table similar to Table 9.5 using values of 0.25, 0.5, 0.75, 1, 1.25, and 1.5 for  $V_{1}$  and  $V_{2}$ . (A spreadsheet for calculating the cumulative bivariate normal distribution is on the author's website: www-2.rotman.utoronto.ca/~hull/ riskman.)

9.18 Create an Excel spreadsheet to produce a chart similar to Figure 9.5 showing samples from a bivariate Student's  $t$ -distribution with four degrees of freedom where the correlation is 0.5. Next suppose that the marginal distributions of  $V_{1}$  and  $V_{2}$  are Student's  $t$  with four degrees of freedom but that a Gaussian copula with a copula correlation parameter of 0.5 is used to define the correlation between the two variables. Construct a chart showing samples from the joint distribution. Compare the two charts you have produced.
9.19 Suppose that a bank has made a large number of loans of a certain type. The one-year probability of default on each loan is  $1.2\%$ . The bank uses a Gaussian copula for time to default. It is interested in estimating a  $99.97\%$  worst case for the percent of loans that default on the portfolio. Show how this varies with the copula correlation.
9.20 The default rates in the past 15 years for a certain category of loans are  $2\%$ ,  $4\%$ ,  $7\%$ ,  $12\%$ ,  $6\%$ ,  $5\%$ ,  $8\%$ ,  $14\%$ ,  $10\%$ ,  $2\%$ ,  $3\%$ ,  $2\%$ ,  $6\%$ ,  $7\%$ , and  $9\%$ . Use the maximum likelihood method to calculate the best fit values of the parameters in Vasicek's model. What is the probability distribution of the default rate? What is the  $99.9\%$  worst case default rate?


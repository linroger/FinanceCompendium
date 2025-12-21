---
title: "Regression Analysis: Theory and Estimation"
primary_tags:
  - regression analysis
  - linear regression models
  - econometric estimation
  - statistical inference
  - financial econometrics
secondary_tags:
  - least squares estimation
  - hypothesis testing
  - model diagnostics
  - heteroscedasticity
  - autocorrelation
  - multicollinearity
  - time series regression
  - cross sectional analysis
  - parameter estimation
  - statistical significance
cssclasses: academia
---

# Regression Analysis: Theory and Estimation

SERGIO M. FOCARDL, PhD

Partner, The Intertek Group

FRANK J. FABOZZI, PhD, CFA, CPA

Professor of Finance, EDHEC Business School

Abstract: The tools of financial econometrics play an important role in financial model building. The most basic tool in financial econometrics is regression analysis. The purpose in regression analysis is to estimate the relationship between a random variable and one or more independent variables. To understand and apply regression analysis one must understand the theory and the methodologies for estimating the parameters of the regression model. Moreover, when the assumptions underlying the model are violated, it is necessary to know how to remedy the problem.

Our first basic tool in econometrics is regression analysis. In regression analysis, we estimate the relationship between a random variable $Y$ and one or more variables $X_{i}$. The variables $X_{i}$ can be either deterministic variables or random variables. The variable $Y$ is said to be the dependent variable because its value is assumed to be dependent on the value of the $X_{i}$'s. The $X_{i}$'s are referred to as the independent variables, regressor variables, or explanatory variables. Our primary focus is on the linear regression model. We will be more precise about what we mean by a "linear" regression model later in this entry. Let's begin with a discussion of the concept of dependence.

# THE CONCEPT OF DEPENDENCE

Regressions are about dependence between variables. In this section we provide a brief discussion of how dependence is represented in both a deterministic setting and a probabilistic setting. In a deterministic setting, the concept of dependence is embodied in the mathematical notion of function. A function is a correspondence between the individuals of a given domain $A$ and the individuals of a given range $B$. In particular, numerical functions establish a correspondence between numbers in a domain $A$ and numbers in a range $B$.

In quantitative science, we work with variables obtained through a process of observation or measurement. For example, price is the observation of a transaction, time is the reading of a clock, position is determined with measurements of the coordinates, and so on. In quantitative science, we are interested in numerical functions $y = f(x_{1},\ldots ,x_{n})$ that link the results of measurements so that by measuring the independent variables $(x_{1},\dots,x_{n})$ we can predict the value of the dependent variable $y$. Being the results of measurements, variables are themselves functions that link a set $\Omega$ of unobserved "states of the world" to observations. Different states of the world result in different values for the variables but the link among the variables remains constant. For example, a column of mercury in a thermometer is a physical object that can be in different "states." If we measure the length and the temperature of the column (in steady conditions), we observe that the two measurements are linked by a well-defined (approximately linear) function. Thus, by measuring the length, we can predict the temperature.

In order to model uncertainty, we keep the logical structure of variables as real-valued functions defined on a set  $\Omega$  of unknown states of the world. However, we add to the set  $\Omega$  the structure of a probability space. A probability space is a triple formed by a set of individuals (the states of the world), a structure of events, and a probability function:  $(\Omega, \mathfrak{I}, P)$ . Random variables represent measurements as in the deterministic case, but with the addition of a probability structure that represents uncertainty. In financial econometrics, a "state of the world" should be intended as a complete history of the underlying economy, not as an instantaneous state.


In this setting, where the independent variable is deterministic, the distributions  $F(y|x)$  can be arbitrarily defined. Important for the discussion of linear regressions in this entry is the case when the shape of the distribution  $F(y|x)$  remains constant and only the mean of the distribution changes as a function of  $x$ .

Consider now the case where both  $X$  and  $Y$  are random variables. For example,  $Y$  might be the uncertain price of IBM stock tomorrow and  $X$  the uncertain level of the S&P 500 tomorrow. One way to express the link between these two variables is through their joint distribution  $F(x,y)$  and, if it exists, their joint density  $f(x,y)$ . We define the joint and marginal distributions as follows:

$$
\begin{array}{l} F_{X Y} (x, y) = P (X \leq x, Y \leq y), F_{X} (x) = P (X \leq x), \\ F_{Y} (y) = P (Y \leq y) \\ \end{array}
$$

$$
F_{X Y} (x, y) = \int_{- \infty}^{+ \infty} \int_{- \infty}^{+ \infty} f (x, y) d x d y
$$

$$
\begin{array}{l} F_{\mathrm{X}} (x) = \int_{- \infty}^{x} \int_{- \infty}^{- \infty} f (u, y) d u d y = \int_{- \infty}^{x} \left(\int_{- \infty}^{- \infty} f (u, y) d y\right) d u \\ = \int_{- \infty}^{x} f_{X} (u) d u \\ \end{array}
$$

$$
\begin{array}{l} F_{\Upsilon} (x) = \int_{- \infty}^{- \infty} \int_{- \infty}^{y} f (x, v) d x d v = \int_{- \infty}^{y} \left(\int_{- \infty}^{- \infty} f (x, v) d x\right) d v \\ = \int_{- \infty}^{x} f_{Y} (v) d v \\ \end{array}
$$

$$ f (x \mid y) = \frac{f (x , y)}{f_{Y} (y)}, f (y \mid x) = \frac{f (x , y)}{f_{X} (x)}
$$

We will also use the short notation:

$$
\begin{array}{l} f_{X} (x) = f (x), f_{Y} (y) = f (y), f_{X \mid Y} (x \mid y) \\ = f (x | y), f_{Y \mid X} (y \mid x) = f (y \mid x) \\ \end{array}
$$

Given a joint density  $f(x,y)$ , we can also represent the functional link between the two variables as the dependence of the distribution of one variable on the value assumed by the other variable. In fact, we can write the joint density  $f(x,y)$  as the product of two factors, the conditional density  $f(y|x)$  and the marginal density  $f_{X}(x)$ :

$$ f (x, y) = f (y | x) f_{X} (x) \tag {1}
$$

This factorization—that is, expressing a joint density as a product of a marginal density and a conditional density—is the conceptual basis of financial econometrics. There are significant differences in cases where both variables  $X$  and  $Y$  are random variables, compared to the case where the variable  $X$  is deterministic. First, as both variables are uncertain, we cannot fix the value of one variable as if it were independent. We have to adopt a framework of conditioning where our knowledge of one variable influences our knowledge of the other variable.

The impossibility of making experiments is a major issue in econometrics. In the physical sciences, the ability to create the desired experimental setting allows the scientist to isolate the effects of single variables. The experimenter tries to create an environment where the effects of variables other than those under study are minimized. In economics, however, all the variables change together and cannot be controlled. Back in the 1950s, there were serious doubts that econometrics was possible. In fact, it was believed that estimation required the independence of samples while economic samples are never independent.

However, the framework of conditioning addresses this problem. After conditioning, the joint densities of a process are factorized into initial and conditional densities that behave as independent distributions. An econometric model is a probe that extracts independent samples—the noise terms—from highly dependent variables.

Let's briefly see, at the heuristic level, how conditioning works. Suppose we learn that the random variable  $X$  has the value  $x$ , that is,  $X = x$ . Recall that  $X$  is a random variable that is a real-valued function defined over the set  $\Omega$ . If we know that  $X = x$ , we do not know the present state of the world but we do know that it must be in the subspace  $(\omega \in \Omega: X(\omega) = x)$ . We call  $(Y|X = x)$  the variable  $Y$  defined on this subspace. If we let  $x$  vary, we create a family of random variables defined on the family of subspaces  $(\omega \in \Omega: X(\omega) = x)$  and indexed by the value assumed by the variable  $X$ .

It can be demonstrated that the sets  $(\omega \in \Omega: X(\omega) = x)$  can be given a structure of probability space, that the variables  $(Y|X = x)$  are indeed random variables on these probability spaces, and that they have (if they exist) the conditional densities:

$$ f (y | x) = \frac{f (x , y)}{f_{X} (x)} \tag {2}
$$ for  $f_{\mathrm{X}}(x) > 0$ . In the discrete setting we can write


$$
\begin{array}{l} f (y | x) = P (Y = y \mid X = x) \\ f (x, y) = P (X = x, Y = y) \\ \end{array}
$$

The conditional expectation  $E[Y|X = x]$  is the expectation of the variable  $(Y|X = x)$ . Consider the previous example of the IBM stock price tomorrow and of the S&P 500 level tomorrow. Both variables have unconditional expectations. These are the expectations of IBM's stock tomorrow and of S&P 500's level tomorrow considering every possible state of the world. However, we might be interested in computing the expected value of IBM's stock price tomorrow if we know S&P 500's value tomorrow. This is the case if, for example, we are creating scenarios based on S&P 500's value.

If we know the level of the S&P 500, we do not know the present state of the world but we do know the subset of states of the world in which the present state of the world is. If we only know the value of the S&P 500, IBM's stock price is not known because it is different in each state that belongs to this restricted set. IBM's stock price is a random variable on this restricted space and we can compute its expected value.

If we consider a discrete setting, that is, if we consider only a discrete set of possible IBM stock prices and S&P 500 values, then the computation of the conditional expectation can be performed using the standard definition of conditional probability. In particular, the conditional expectation of a random variable  $Y$  given the event  $B$  is equal to the unconditional expectation of the variable  $Y$  set to zero outside of  $B$  and divided by the probability of  $B$ :  $E[Y|B] = \mathrm{E}[1_{\mathrm{B}}Y] / \mathrm{P}(B)$ , where  $1_{B}$  is the indicator function of the set  $B$ , equal to 1 for all elements of  $B$ , zero elsewhere. Thus, in this example,

$$
\begin{array}{l} \mathrm{E} [ \text{IBM stock price} | \text{S \& P 500 value} = \mathrm{s} ] \\ = E \left[ 1_{\left(\mathrm{S \& P 500 value} = s\right)} (\text{IBM stock price}) \right] / \\ P (\mathrm{S \& P 500 value} = s) \\ \end{array}
$$

However, in a continuous-state setting there is a fundamental difficulty: The set of states of the world corresponding to any given value of the S&P 500 has probability zero; therefore we cannot normalize dividing by  $P(B)$ . As a consequence we cannot use the standard definition of conditional probability to compute directly the conditional expectation.

To overcome this difficulty, we define the conditional expectation indirectly, using only unconditional expectations. We define the conditional expectation of IBM's stock price given the S&P 500 level as that variable that has the same unconditional expectation as IBM's stock price on each set that can be identified by for the value of the S&P 500. This is a random variable which is uniquely defined for each state of the world up to a set of probability zero.

If the conditional density exists, conditional expectation is computed as follows:

$$
E [ Y | X = x ] = \int_{- \infty}^{+ \infty} y f (y | x) d y \tag {3}
$$

We know from probability theory that the law of iterated expectations holds

$$
E [ E [ Y | X = x ] ] = E [ Y ] \tag {4}
$$ and that the following relationship also holds


$$
E [ X Y ] = E [ X E [ Y | X ] ] \tag {5}
$$

Rigorously proving all these results requires a considerable body of mathematics and the rather difficult language and notation of  $\sigma$ -algebras. However, the key ideas should be sufficiently clear.

What is the bearing of the above on the discussion of regressions in this entry? Regressions have a twofold nature: They can be either (1) the representation of dependence in terms of conditional expectations and conditional distributions or (2) the representation of dependence of random variables on deterministic parameters. The above discussion clarifies the probabilistic meaning of both.

# REGRESSIONS AND LINEAR MODELS

In this section we discuss regressions and, in particular, linear regressions.

# Case Where All Regressors Are Random Variables

Let's start our discussion of regression with the case where all regressors are random variables. Given a set of random variables  $\mathbf{X} = (Y, X_1, \ldots, X_N)^\prime$ , with a joint probability density  $f(y, x_1, \ldots, x_N)$ , consider the conditional expectation of  $Y$  given the other variables  $(X_1, \ldots, X_N)^\prime$ :

$$
Y = E [ Y | X_{1}, \ldots , X_{N} ]
$$

As we saw in the previous section, the conditional expectation is a random variable. We can therefore consider the residual:

$$
\varepsilon = Y - E [ Y | X_{1}, \ldots , X_{N} ]
$$

The residual is another random variable defined over the set  $\Omega$ . We can rewrite the above equation as a regression equation:

$$
Y = E \left[ Y \mid X_{1}, \dots , X_{N} \right] + \varepsilon \tag {6}
$$

The deterministic function  $y = \varphi (\mathbf{z})$  where

$$ y = \varphi (z) = E [ Y | X_{1} = z_{1}, \dots , X_{N} = z_{N} ] \tag {7}
$$ is called the regression function.


The following properties of regression equations hold.

Property 1. The conditional mean of the residual is zero:  $E[\varepsilon |X_1,\ldots ,X_N] = 0$ . In fact, taking conditional expectations on both sides of equation (7), we can write

$$
\begin{array}{l} E [ Y | X_{1}, \dots , X_{N} ] = E [ E [ Y | X_{1}, \dots , X_{N} ] \\ \left| X_{1}, \dots , X_{N} \right] + E \left[ \varepsilon \mid X_{1}, \dots , X_{N} \right] \\ \end{array}
$$

Because

$$
\begin{array}{l} E [ E [ Y | X_{1}, \dots , X_{N} ] | X_{1}, \dots , X_{N} ] \\ = E \left[ Y \mid X_{1}, \dots , X_{N} \right] \\ \end{array}
$$ is a property that follows from the law of iterated expectations, we can conclude that  $E[\varepsilon |X_1,\ldots ,X_N] = 0$


Property 2. The unconditional mean of the residual is zero:  $E[\varepsilon] = 0$ . This property follows immediately from the multivariate formulation of the law of iterated expectations (4):  $E[E[Y|X_1, \ldots, X_N]] = E[Y]$ . In fact, taking expectation of both sides of equation (7) we can write

$$
E [ Y ] = E \left[ E \left[ Y \mid X_{1}, \dots , X_{N} \right] \right] + E [ \varepsilon ]
$$ hence  $E[\varepsilon] = 0$ .


Property 3: The residuals are uncorrelated with the variables $X_{1},\ldots ,X_{N}$. $E[\varepsilon X] = 0$. This follows from equation (6) by multiplying both sides of equation (7) by $X_{1},\ldots ,X_{N}$ and taking expectations. Note however, that the residuals are not necessarily independent of the regressor $X$


If the regression function is linear, we can write the following linear regression equation:

$$
Y = a + \sum_{i = 1}^{N} b_{i} X_{i} + \varepsilon \tag {8}
$$ and the following linear regression function:


$$ y = a + \sum_{i = 1}^{N} b_{i} x_{i} \tag {9}
$$

The rest of this entry deals with linear regressions. If the vector  $\mathbf{Z} = (Y, X_1, \ldots, X_N)$  is jointly normally distributed, then the regression function is linear. To see this, partition  $\mathbf{z}$ , the vector of means  $\mu$ , and the covariance matrix  $\Sigma$  conformably in the following way:

$$
\begin{array}{l} \mathbf {Z} = \left( \begin{array}{c} Y \\ \mathbf {X} \end{array} \right),   \mathbf {z} = \left( \begin{array}{c} y \\ \mathbf {x} \end{array} \right),   \boldsymbol {\mu} = \left( \begin{array}{c} \mu_{\mathrm{y}} \\ \boldsymbol {\mu}_{x} \end{array} \right), \\ \boldsymbol {\Sigma} = \left( \begin{array}{c c} \sigma_{y y} & \sigma_{x y} \\ \sigma_{y \mathbf {x}} & \boldsymbol {\Sigma}_{\mathbf {x x}} \end{array} \right) \\ \end{array}
$$ where  $\mu$  is the vector of means and  $\Sigma$  is the covariance matrix. It can be demonstrated that the conditional density  $(Y|\mathbf{X} = \mathbf{x})$  has the following expression:


$$
(Y | \mathbf {X} = \mathbf {x}) \sim N \left(\alpha + \boldsymbol {\beta}^{\prime} \mathbf {x}, \sigma^{2}\right) \tag {10}
$$ where


$$
\begin{array}{l} \boldsymbol {\beta} = \Sigma_{x x}^{- 1} \sigma_{x y} \\ \alpha = \mu_{y} - \beta^{\prime} \mu_{x} \tag {11} \\ \sigma^{2} = \sigma_{y y}^{2} - \sigma_{y x} \Sigma_{x x}^{- 1} \sigma_{x y} \\ \end{array}
$$

The regression function can be written as follows:

$$ y = \alpha + \boldsymbol {\beta}^{\prime} \mathbf {x}, \text{or ex pl ic it ly :} y = \alpha + \sum_{i = 1}^{N} \beta_{i} x_{i} \tag {12}
$$

The normal distribution is not the only joint distribution that yields linear regressions. Spherical and elliptical distributions also yield linear regressions. Spherical distributions extend the multivariate normal distribution  $N(0,\mathbf{I})$

(i.e., the joint distribution of independent normal variables). Spherical distributions are characterized by the property that their density is constant on a sphere, so that their joint density can be written as

$$ f (x_{1}, \ldots , x_{N}) = g (x_{1}^{2} + \dots + x_{N}^{2})
$$ for some function  $g$ .


Spherical distributions have the property that their marginal distributions are uncorrelated but not independent, and can be viewed as multivariate normal random variables, with a random covariance matrix. An example of a spherical distribution used in financial econometrics is the multivariate  $t$ -distribution with  $m$  degrees of freedom, whose density has the following form:

$$ f (x_{1}, \ldots , x_{N}) = c \left[ 1 + \frac{1}{m} (x_{1}^{2} + \dots + x_{N}^{2}) \right]^{- \frac{m + N}{2}}
$$

The multivariate  $t$ -distribution is important in econometrics for several reasons. First, some sampling distributions are actually a  $t$ -distribution entries. Second, the  $t$ -distribution proved to be an adequate description of fat-tailed error terms in some econometrics models (although not as good as the stable Paretian distribution).

Elliptical distributions generalize the multivariate normal distribution  $N(0,\Sigma)$ . (See Bradley and Taqqu [2003].) Because they are constant on an ellipsoid, their joint density can be written as

$$ f (\mathbf {x}) = g \left(\left(\mathbf {x} - \boldsymbol {\mu}\right)^{\prime} \boldsymbol {\Sigma} \left(\mathbf {x} - \boldsymbol {\mu}\right)\right), \mathbf {x}^{\prime} = \left(x_{1}, \dots , x_{N}\right)
$$ where  $\mu$  is a vector of constants and  $\pmb{\Sigma}$  is a strictly positive-definite matrix. Spherical distributions are a subset of elliptical distributions. Conditional distributions and linear combinations of elliptical distributions are also elliptical.


The fact that elliptical distributions yield linear regressions is closely related to the fact that the linear correlation coefficient is a meaningful measure of dependence only for elliptical distributions. There are distributions that do not factorize as linear regressions. The linear correlation coefficient is not a meaningful measure of dependence for these distributions. The copula function of a given random vector  $X = (X_{1},\ldots ,X_{N})^{\prime}$  completely describes the dependence structure of the joint distribution of random variables  $X_{i}, i = 1,\dots,N$ . (See Embrechts, McNeil, and Straumann [2002].)


# Linear Models and Linear Regressions

Let's now discuss the relationship between linear regressions and linear models. In applied work, we are given a set of multivariate data that we want to explain through a model of their dependence. Suppose we want to explain the data through a linear model of the type:

$$
Y = \alpha + \sum_{i = 1}^{N} \beta_{i} X_{i} + \varepsilon
$$

We might know from theoretical reasoning that linear models are appropriate or we might want to try a linear approximation to nonlinear models. A linear model such as the above is not, per se, a linear regression unless we apply appropriate constraints. In fact, linear regressions must satisfy the three properties mentioned above. We call linear regressions linear models of the above type that satisfy the following set of assumptions such that

$$
\alpha + \sum_{i = 1}^{N} \beta_{i} X_{i}
$$ is the conditional expectation of  $Y$ .


Assumption 1. The conditional mean of the residual is zero:  $E[\varepsilon |X_1,\ldots ,X_N]$

Assumption 2. The unconditional mean of the residual is zero:  $E[\varepsilon] = 0$ .

Assumption 3: The correlation between the residuals and the variables  $X_{1},\ldots ,X_{N}$  is zero:  $E[\varepsilon X] = 0$

The above set of assumptions is not the full set of assumptions used when estimating a linear model as a regression but only consistency conditions to interpret a linear model as a regression. We will introduce additional assumptions relative to how the model is sampled in the section on estimation. Note that the linear regression equation does not fully specify the joint conditional distribution of the dependent variables and the regressors. (This is a rather subtle point related to concept of exogeneity of variables. See Hendry [1995] for a further discussion.)


# Case Where Regressors Are Deterministic Variables

In many applications of interest to the financial modeler, the regressors are deterministic variables. Conceptually, regressions with deterministic regressors are different from cases where regressors are random variables. In particular, as we have seen in a previous section, one cannot consider the regression as a conditional expectation. However, we can write a linear regression equation:

$$
Y = \alpha + \sum_{i = 1}^{N} \beta_{i} x_{i} + \varepsilon \tag {13}
$$ and the following linear regression function:


$$ y = \alpha + \sum_{i = 1}^{N} \beta_{i} x_{i} \tag {14}
$$ where the regressors are deterministic variables. As we will see in the following section, in both cases the least squares estimators are the same though the variances of the regression parameters as functions of the samples are different.


# ESTIMATION OF LINEAR REGRESSIONS

In this section, we discuss how to estimate the linear regression parameters. We consider two main estimation techniques: maximum likelihood method and least squares method. A discussion of the sampling distributions of linear regression parameters follow. The method of moments and the instrumental variables method are other methods that are used but are not discussed in this entry.


# Maximum Likelihood Estimates

Let's reformulate the regression problem in a matrix form that is standard in regression analysis and that we will use in the following sections. Let's start with the case of a dependent variable  $Y$  and one independent regressor  $X$ . This case is referred to as the bivariate case or the simple linear regression. Suppose that we are empirically given  $T$  pairs of observations of the regressor and the independent variable. In financial econometrics these observations could represent, for example, the returns  $Y$  of a stock and the returns  $X$  of a factor taken at fixed intervals of time  $t = 1,2,\dots,T$ . Using a notation that is standard in regression estimation, we place the given data in a vector  $\mathbf{Y}$  and a matrix  $\mathbf{X}$ :

$$
\mathbf {Y} = \left( \begin{array}{c} Y_{1} \\ \vdots \\ Y_{T} \end{array} \right), \mathbf {X} = \left( \begin{array}{c c} 1 & X_{1} \\ \vdots & \vdots \\ 1 & X_{T} \end{array} \right) \tag {15}
$$

The column of 1s represents constant terms. The regression equation can be written as a set of  $T$  samples from the same regression equation, one for each moment:

$$
\begin{array}{l} Y_{1} = \beta_{0} + \beta_{1} X_{1} + \varepsilon_{1} \\ \begin{array}{c} \vdots \\ \vdots \end{array} \\ Y_{T} = \beta_{0} + \beta_{1} X_{T} + \varepsilon_{T} \\ \end{array}
$$ that we can rewrite in matrix form,


$$
\mathbf {Y} = \mathbf {X} \boldsymbol {\beta} + \varepsilon
$$ where  $\beta$  is the vector of regression coefficients,


$$
\boldsymbol {\beta} = \left( \begin{array}{c} \beta_{0} \\ \beta_{1} \end{array} \right)
$$ and  $\varepsilon$  are the residuals.


We now make a set of assumptions that are standard in regression analysis and that we will progressively relax. The assumptions for the linear regression model with normally distributed residuals are:


1. The residuals are zero-mean, normally distributed independent variables  $\varepsilon \sim N(0,\sigma_{\varepsilon}^{2}\mathbf{I})$  where  $\sigma_{\varepsilon}^{2}$  is the common variance of the residuals and  $\mathbf{I}$  is the identity matrix.
2.  $\mathbf{X}$  is distributed independently of the residuals  $\varepsilon$ .

(16)

The regression equation can then be written:  $E(\mathbf{Y}|\mathbf{X}) = \mathbf{X}\beta$ . The residuals form a sequence of independent variables. They can therefore be regarded as a strict white-noise sequence. As the residuals are independent draws from the same normal distribution, we can compute the log-likelihood function as follows:

$$
\begin{array}{l} \log L = - \frac{T}{2} \log (2 \pi) - \frac{T}{2} \log \left(\sigma_{\varepsilon}^{2}\right) \\ - \sum_{t = 1}^{T} \left[ \frac{\left(Y_{t} - \beta_{0} - \beta_{1} X_{t}\right)^{2}}{2 \sigma_{\varepsilon}^{2}} \right] \tag {17} \\ \end{array}
$$

The maximum likelihood (ML) principle requires maximization of the log-likelihood function. Maximizing the log-likelihood function entails first solving the equations:

$$
\frac{\partial \log L}{\partial \beta_{0}} = 0, \frac{\partial \log L}{\partial \beta_{1}} = 0, \frac{\partial \log L}{\partial \sigma_{\varepsilon}^{2}} = 0
$$

These equations can be explicitly written as follows:

$$
\sum_{t = 1}^{T} \left(Y_{t} - \beta_{0} - \beta_{1} X_{t}\right) = 0
$$

$$
\sum_{t = 1}^{T} X_{t} \left(Y_{t} - \beta_{0} - \beta_{1} X_{t}\right) = 0
$$

$$
T \sigma_{\varepsilon}^{2} - \sum_{t = 1}^{T} [ (Y_{t} - \beta_{0} - \beta_{1} X_{t})^{2} ] = 0
$$

A little algebra shows that solving the first two equations yields

$$
\begin{array}{l} \hat {\beta}_{1} = \frac{\overline {{X Y}} - \overline {{X Y}}}{\sigma_{\varepsilon}^{2}} \\ \hat {\beta}_{0} = (\bar {Y} - \beta_{1} \bar {X}) \tag {18} \\ \end{array}
$$ where


$$
\overline {{X}} = \frac{1}{T} \sum_{t = 1}^{T} X_{t}, \overline {{X Y}} = \frac{1}{T} \sum_{t = 1}^{T} X_{t} Y_{t}
$$ and where  $\bar{\sigma}_x,\bar{\sigma}_y$  are the empirical standard deviations of the sample variables  $X,Y$  respectively. Substituting these expressions in the third equation


$$
\frac{\partial \log L}{\partial \sigma_{\varepsilon}^{2}} = 0
$$ yields the variance of the residuals:


$$
\hat {\sigma}_{\varepsilon}^{2} = \frac{1}{T} \sum_{t = 1}^{T} \left[ \left(Y_{t} - \hat {\beta}_{0} - \hat {\beta}_{1} X_{t}\right)^{2} \right] \tag {19}
$$

In the matrix notation established above, we can write the estimators as follows:

$$
F o r \quad \hat {\boldsymbol {\beta}} = (\mathbf {X}^{\prime} \mathbf {X})^{- 1} \mathbf {X}^{\prime} \mathbf {Y} \tag {20}
$$

For the variance of the regression:

$$
\hat {\sigma}^{2} = \frac{1}{T} \left(\mathbf {Y} - X \hat {\boldsymbol {\beta}}\right)^{\prime} (\mathbf {Y} - X \hat {\boldsymbol {\beta}}) \tag {21}
$$

A comment is in order. We started with  $T$  pairs of given data  $(X_{i},Y_{i})$ ,  $i = 1,\dots ,T$  and then attempted to explain these data as a linear regression  $Y = \beta_{1}X + \beta_{0} + \varepsilon$ . We estimated the coefficients  $(\beta_{1},\beta_{2})$  with maximum likelihood estimation (MLE) methods. Given this estimate of the regression coefficients, the estimated variance of the residuals is given by equation (22). Note that equation (22) is the empirical variance of residuals computed using the estimated regression parameters. A large variance of the residuals indicates that the level of noise in the process (i.e., the size of the unexplained fluctuations of the process) is high.

# Generalization to Multiple Independent Variables

The above discussion of the MLE method generalizes to multiple independent variables,  $N$ . We are empirically given a set of  $T$  observations that we organize in matrix form,


$$
\mathbf {Y} = \left( \begin{array}{c} Y_{1} \\ \vdots \\ Y_{T} \end{array} \right), \mathbf {X} = \left( \begin{array}{c c c} X_{1 1} & \dots & X_{N 1} \\ \vdots & \ddots & \vdots \\ X_{1 T} & \dots & X_{N T} \end{array} \right) \tag {22}
$$ and the regression coefficients and error terms in the vectors,


$$
\beta = \left( \begin{array}{c} \beta_{1} \\ \vdots \\ \beta_{N} \end{array} \right), \varepsilon = \left( \begin{array}{c} \varepsilon_{1} \\ \vdots \\ \varepsilon_{T} \end{array} \right) \tag {23}
$$

The matrix  $\mathbf{X}$  which contains all the regressors is called the design matrix. The regressors  $\mathbf{X}$  can be deterministic, the important condition being that the residuals are independent. One of the columns can be formed by 1s to allow for a constant term (intercept). Our objective is to explain the data as a linear regression:

$$
\mathbf {Y} = \mathbf {X} \boldsymbol {\beta} + \varepsilon
$$

We make the same set of assumptions given by equation (17) as we made in the case of a single regressor. Using the above notation, the loglikelihood function will have the form

$$
\begin{array}{l} \log L = - \frac{T}{2} \log (2 \pi) - \frac{T}{2} \log (\sigma_{\varepsilon}^{2}) \\ - \frac{1}{2 \sigma_{\varepsilon}^{2}} (\mathbf {Y} - \mathbf {X} \boldsymbol {\beta})^{\prime} (\mathbf {Y} - \mathbf {X} \boldsymbol {\beta}) \tag {24} \\ \end{array}
$$

The maximum likelihood conditions are written as

$$
\frac{\partial \log L}{\partial \boldsymbol {\beta}} = 0, \quad \frac{\partial \log L}{\partial \sigma_{\varepsilon}^{2}} = 0 \tag {25}
$$

These equations are called normal equations. Solving the system of normal equations gives the same form for the estimators as in the univariate case:

$$
\begin{array}{l} \hat {\boldsymbol {\beta}} = (\mathbf {X}^{\prime} \mathbf {X})^{- 1} \mathbf {X}^{\prime} \mathbf {Y} \\ \hat {\sigma}^{2} = \frac{1}{T} \left(\mathbf {Y} - \mathbf {X} \hat {\boldsymbol {\beta}}\right)^{\prime} \left(\mathbf {Y} - \mathbf {X} \hat {\boldsymbol {\beta}}\right) \tag {26} \\ \end{array}
$$

The variance estimator is not unbiased. It can be demonstrated that to obtain an unbiased estimator we have to apply a correction that takes into account the number of variables by replac ing  $T$  with  $T - N$ , assuming  $T > N$ :


$$
\hat {\sigma}^{2} = \frac{1}{T - N} \left(\mathbf {Y} - \mathbf {X} \hat {\boldsymbol {\beta}}\right)^{\prime} \left(\mathbf {Y} - \mathbf {X} \hat {\boldsymbol {\beta}}\right) \tag {27}
$$

The MLE method requires that we know the functional form of the distribution. If the distribution is known but not normal, we can still apply the MLE method but the estimators will be different. We will not here discuss further MLE for nonnormal distributions.

# Ordinary Least Squares Method

We now establish the relationship between the MLE principle and the ordinary least squares (OLS) method. OLS is a general method to approximate a relationship between two or more variables. We use the matrix notation defined above for MLE method; that is, we assume that observations are described by equation (23) while the regression coefficients and the residuals are described by equation (24).

If we use the OLS method, the assumptions of linear regressions can be weakened. In particular, we need not assume that the residuals are normally distributed but only assume that they are uncorrelated and have finite variance. The residuals can therefore be regarded as a white-noise sequence (and not a strict white-noise sequence as in the previous section). We summarize the linear regression assumptions as follows:

Assumptions for the linear regression model:

1. The mean of the residuals is zero:  $E(\varepsilon) = 0$
2. The residuals are mutually uncorrelated:  $(E(\varepsilon \varepsilon^{\prime}) = \sigma^{2}\mathbf{I})$ , where  $\sigma^2$  is the variance of the residuals and  $\mathbf{I}$  is the identity matrix.
3.  $\mathbf{X}$  is distributed independently of the residuals  $\varepsilon$ .

(28)

In the general case of a multivariate regression, the OLS method requires minimization of the sum of the squared residuals. Consider the vector of residuals:


$$
\varepsilon = \left[ \begin{array}{c} \varepsilon_{1} \\ \vdots \\ \varepsilon_{T} \end{array} \right]
$$

The sum of the squared residuals  $(\mathrm{SSR}) = (\varepsilon_1^2 + \ldots + \varepsilon_T^2)$  can be written as  $\mathrm{SSR} = \varepsilon' \varepsilon$ . As  $\varepsilon = \mathbf{Y} - \mathbf{X} \boldsymbol{\beta}$ , we can also write

$$
\operatorname{SS R} = (\mathbf {Y} - \mathbf {X} \boldsymbol {\beta})^{\prime} (\mathbf {Y} - \mathbf {X} \boldsymbol {\beta})
$$

The OLS method requires that we minimize the SSR. To do so, we equate to zero the first derivatives of the SSR:

$$
\frac{\partial (\mathbf {Y} - \mathbf {X} \boldsymbol {\beta})^{\prime} (\mathbf {Y} - \mathbf {X} \boldsymbol {\beta})}{\partial \boldsymbol {\beta}} = 0
$$

This is a system of  $N$  equations. Solving this system, we obtain the estimators:

$$
\hat {\boldsymbol {\beta}} = (\mathbf {X}^{\prime} \mathbf {X})^{- 1} \mathbf {X}^{\prime} \mathbf {Y}
$$

These estimators are the same estimators obtained with the MLE method; they have an optimality property. In fact, the Gauss-Markov theorem states that the above OLS estimators are the best linear unbiased estimators (BLUE). "Best" means that no other linear unbiased estimator has a lower variance. It should be noted explicitly that OLS and MLE are conceptually different methodologies: MLE seeks the optimal parameters of the distribution of the error terms, while OLS seeks to minimize the variance of error terms. The fact that the two estimators coincide was an important discovery.

# SAMPLING DISTRIBUTIONS OF REGRESSIONS

Estimated regression parameters depend on the sample. They are random variables whose distribution is to be determined. As we will see in this section, the sampling distributions differ depending on whether the regressors are assumed to be fixed deterministic variables or random variables.


Let's first assume that the regressors are fixed deterministic variables. Thus only the error terms and the dependent variable change from sample to sample. The  $\hat{\beta}$  are unbiased estimators and  $E[\hat{\beta}] = \beta$  therefore holds. It can also be demonstrated that the following expression for the variance of  $\hat{\beta}$  holds

$$
E [ (\boldsymbol {\beta} - \hat {\boldsymbol {\beta}}) (\boldsymbol {\beta} - \hat {\boldsymbol {\beta}})^{\prime} ] = \sigma^{2} (\mathbf {X}^{\prime} \mathbf {X})^{- 1} \tag {29}
$$ where an estimate  $\hat{\sigma}^2$  of  $\sigma^2$  is given by (27).


Under the additional assumption that the residuals are normally distributed, it can be demonstrated that the regression coefficients are jointly normally distributed as follows:

$$
\hat {\boldsymbol {\beta}} \sim N_{N} [ \boldsymbol {\beta}, \sigma^{2} (\mathbf {X}^{\prime} \mathbf {X})^{- 1} ] \tag {30}
$$

These expressions are important because they allow us to compute confidence intervals for the regression parameters.

Let's now suppose that the regressors are random variables. Under the assumptions set forth in (29), it can be demonstrated that the variance of the estimators  $\hat{\beta}$  can be written as follows:

$$
V (\hat {\boldsymbol {\beta}}) = E [ (\mathbf {X}^{\prime} \mathbf {X})^{- 1} ] V (\mathbf {X}^{\prime} \varepsilon) E [ (\mathbf {X}^{\prime} \mathbf {X})^{- 1} ] \qquad (3 1)
$$ where the terms  $E[(\mathbf{X}'\mathbf{X})^{-1}]$  and  $V(\mathbf{X}'\varepsilon)$  are the empirical expectation of  $(\mathbf{X}'\mathbf{X})^{-1}$  and the empirical variance of  $(\mathbf{X}'\varepsilon)$ , respectively.


The following terms are used to describe this estimator of the variance: sandwich estimator, robust estimator, and White estimator. The term sandwich estimator is due to the fact that the term  $V(\mathbf{X}^{\prime}\varepsilon)$  is sandwiched between the terms  $E[(\mathbf{X}'\mathbf{X})^{-1}]$ . These estimators are robust because they take into account not only the variability of the dependent variables but also that of the independent variables. Consider that if the regressors are a large sample, the sandwich and the classical estimators are close to each other.

# DETERMINING THE EXPLANATORY POWER OF A REGRESSION

The above computations to estimate regression parameters were carried out under the assumption that the data were generated by a linear regression function with uncorrelated and normally distributed noise. In general, we do not know if this is indeed the case. Though we can always estimate a linear regression model on any data sample by applying the estimators discussed above, we must now ask the question: When is a linear regression applicable and how can one establish the goodness (i.e., explanatory power) of a linear regression?

Quite obviously, a linear regression model is applicable if the relationship between the variables is approximately linear. How can we check if this is indeed the case? What happens if we fit a linear model to variables that have nonlinear relationships, or if distributions are not normal? A number of tests have been devised to help answer these questions.

Intuitively, a measure of the quality of approximation offered by a linear regression is given by the variance of the residuals. Squared residuals are used because a property of the estimated relationship is that the sum of the residuals is zero. If residuals are large, the regression model has little explanatory power. However, the size of the average residual in itself is meaningless as it has to be compared with the range of the variables. For example, if we regress stock prices over a broad-based stock index, other things being equal, the residuals will be numerically different if the price is in the range of dollars or in the range of hundreds of dollars.

# Coefficient of Determination

A widely used measure of the quality and usefulness of a regression model is given by the coefficient of determination denoted by  $R^2$  or  $R^2$  squared. The idea behind  $R^2$  is the following.

The dependent variable  $Y$  has a total variation given by the following expression:

$$
\text{To ta lv ar ia ti on} = S_{Y}^{2} = \frac{1}{T - 1} \sum_{t = 1}^{T} \left(Y_{t} - \bar {Y}\right)^{2} \tag {32}
$$ where


$$
\overline {{Y}} = \frac{1}{T - 1} \sum_{t = 1}^{T} Y_{t}
$$

This total variation is the sum of the variation of the variable  $Y$  due to the variation of the regressors plus the variation of residuals  $S_{Y}^{2} = S_{R}^{2} + S_{\varepsilon}^{2}$ . We can therefore define the coefficient of determination:

Coefficient of determination  $= R^{2} = \frac{S_{R}^{2}}{S_{Y}^{2}}$

$$
1 - R^{2} = \frac{S_{\varepsilon}^{2}}{S_{Y}^{2}} \tag {33}
$$ as the portion of the total fluctuation of the dependent variable,  $Y$ , explained by the regression relation.  $R^2$  is a number between 0 and 1:  $R^2 = 0$  means that the regression has no explanatory power,  $R^2 = 1$  means that the regression has perfect explanatory power. The quantity  $R^2$  is computed by software packages that perform linear regressions.


It can be demonstrated that the coefficient of determination  $R^2$  is distributed as the well-known Student  $F$  distribution. This fact allows one to determine intervals of confidence around a measure of the significance of a regression.

# Adjusted  $R^2$

The quantity  $R^2$  as a measure of the usefulness of a regression model suffers from the problem that a regression might fit data very well in-sample but have no explanatory power out-of-sample. This occurs if the number of regressors is too high. Therefore an adjusted  $R^2$  is sometimes used. The adjusted  $R^2$  is defined as  $R^2$  corrected by a penalty function that takes into account the number  $p$  of regressors in the model:


$$
\text{Ad ju st ed} R^{2} = \frac{T - 1}{T - N - 1} \frac{S_{R}^{2}}{S_{Y}^{2}} \tag {34}
$$

# Relation of  $R^2$  to Correlation Coefficient

The  $R^2$  is the squared correlation coefficient. The correlation coefficient is a number between -1 and +1 that measures the strength of the dependence between two variables. If a linear relationship is assumed, the correlation coefficient has the usual product-moment expression:

$$ r = \sqrt{\frac{\overline {{X Y}} - \overline {{X Y}}}{S_{y} X_{x}}} \tag {35}
$$

# USING REGRESSION ANALYSIS IN FINANCE

This section provides several illustrations of regression analysis in finance as well as the data for each illustration. However, in order to present the data, we limit our sample size.

# Characteristic Line for Common Stocks

The characteristic line of a security is the regression of the excess returns of that security on the market excess returns:

$$ r_{i} = \alpha_{i} + \beta_{i} r_{M}
$$ where


$r_i =$  the security excess return of a security over the risk-free rate

$r_{M} =$  the market excess return of the market over the risk-free rate

We computed the characteristic lines of two common stocks, Oracle and General Motors (GM), and a randomly created portfolio consisting of 20 stocks equally weighted. We used the S&P 500 Index as a proxy for the market returns and the 90-day Treasury rate as a proxy for the risk-free rate. The return and excess return data are shown in Table 1. Note that there are 60 monthly observations used to estimate the characteristic line from December 2000 to November 2005. The 20 stocks comprising the portfolio are shown at the bottom of Table 1.

Table 1 Return and Excess Return Data for S&P 500, Oracle, GM, and Portfolio  ${}^{a} : {12}/1/{2000} - {11}/1/{2005}$

<table><tr><td>Date</td><td>S&amp;P 500 Return</td><td>Risk-Free Rate</td><td>S&amp;P - Risk Free Rate</td><td>Oracle Return</td><td>Oracle Excess Return</td><td>GM Return</td><td>GM Excess Return</td><td>Portfolio Return</td><td>Portfolio Excess Return</td></tr><tr><td>12/1/2000</td><td>0.03464</td><td>0.00473</td><td>0.02990</td><td>0.00206</td><td>-0.00267</td><td>0.05418</td><td>0.04945</td><td>0.01446</td><td>0.00973</td></tr><tr><td>1/1/2001</td><td>-0.09229</td><td>0.00413</td><td>-0.09642</td><td>-0.34753</td><td>-0.35165</td><td>-0.00708</td><td>-0.01120</td><td>-0.07324</td><td>-0.07736</td></tr><tr><td>2/1/2001</td><td>-0.06420</td><td>0.00393</td><td>-0.06813</td><td>-0.21158</td><td>-0.21550</td><td>-0.02757</td><td>-0.03149</td><td>-0.07029</td><td>-0.07421</td></tr><tr><td>3/1/2001</td><td>0.07681</td><td>0.00357</td><td>0.07325</td><td>0.07877</td><td>0.07521</td><td>0.05709</td><td>0.05352</td><td>0.11492</td><td>0.11135</td></tr><tr><td>4/1/2001</td><td>0.00509</td><td>0.00321</td><td>0.00188</td><td>-0.05322</td><td>-0.05643</td><td>0.03813</td><td>0.03492</td><td>0.01942</td><td>0.01621</td></tr><tr><td>5/1/2001</td><td>-0.02504</td><td>0.00302</td><td>-0.02805</td><td>0.24183</td><td>0.23881</td><td>0.13093</td><td>0.12791</td><td>-0.03050</td><td>-0.03351</td></tr><tr><td>6/1/2001</td><td>-0.01074</td><td>0.00288</td><td>-0.01362</td><td>-0.04842</td><td>-0.05130</td><td>-0.01166</td><td>-0.01453</td><td>-0.03901</td><td>-0.04189</td></tr><tr><td>7/1/2001</td><td>-0.06411</td><td>0.00288</td><td>-0.06698</td><td>-0.32467</td><td>-0.32754</td><td>-0.13915</td><td>-0.14203</td><td>-0.08264</td><td>-0.08552</td></tr><tr><td>8/1/2001</td><td>-0.08172</td><td>0.00274</td><td>-0.08447</td><td>0.03030</td><td>0.02756</td><td>-0.21644</td><td>-0.21918</td><td>-0.13019</td><td>-0.13293</td></tr><tr><td>9/1/2001</td><td>0.01810</td><td>0.00219</td><td>0.01591</td><td>0.07790</td><td>0.07571</td><td>-0.03683</td><td>-0.03902</td><td>0.05969</td><td>0.05749</td></tr><tr><td>10/1/2001</td><td>0.07518</td><td>0.00177</td><td>0.07341</td><td>0.03466</td><td>0.03289</td><td>0.20281</td><td>0.20104</td><td>0.11993</td><td>0.11816</td></tr><tr><td>11/1/2001</td><td>0.00757</td><td>0.00157</td><td>0.00601</td><td>-0.01568</td><td>-0.01725</td><td>-0.02213</td><td>-0.02370</td><td>0.02346</td><td>0.02190</td></tr><tr><td>12/1/2001</td><td>-0.01557</td><td>0.00148</td><td>-0.01706</td><td>0.24982</td><td>0.24834</td><td>0.05226</td><td>0.05078</td><td>0.05125</td><td>0.04976</td></tr><tr><td>1/1/2002</td><td>-0.02077</td><td>0.00144</td><td>-0.02221</td><td>-0.03708</td><td>-0.03852</td><td>0.03598</td><td>0.03454</td><td>0.02058</td><td>0.01914</td></tr><tr><td>2/1/2002</td><td>0.03674</td><td>0.00152</td><td>0.03522</td><td>-0.22984</td><td>-0.23136</td><td>0.14100</td><td>0.13948</td><td>0.02818</td><td>0.02667</td></tr><tr><td>3/1/2002</td><td>-0.06142</td><td>0.00168</td><td>-0.06309</td><td>-0.21563</td><td>-0.21730</td><td>0.06121</td><td>0.05953</td><td>-0.00517</td><td>-0.00684</td></tr><tr><td>4/1/2002</td><td>-0.00908</td><td>0.00161</td><td>-0.01069</td><td>-0.21116</td><td>-0.21276</td><td>-0.03118</td><td>-0.03279</td><td>-0.02664</td><td>-0.02825</td></tr><tr><td>5/1/2002</td><td>-0.07246</td><td>0.00155</td><td>-0.07401</td><td>0.19571</td><td>0.19416</td><td>-0.13998</td><td>-0.14153</td><td>-0.04080</td><td>-0.04235</td></tr><tr><td>6/1/2002</td><td>-0.07900</td><td>0.00149</td><td>-0.08050</td><td>0.05702</td><td>0.05553</td><td>-0.12909</td><td>-0.13058</td><td>-0.05655</td><td>-0.05804</td></tr><tr><td>7/1/2002</td><td>0.00488</td><td>0.00142</td><td>0.00346</td><td>-0.04196</td><td>-0.04337</td><td>0.02814</td><td>0.02673</td><td>-0.01411</td><td>-0.01553</td></tr></table>

Table 1 (Continued)

<table><tr><td>Date</td><td>S&amp;P 500 Return</td><td>Risk-Free Rate</td><td>S&amp;P - Risk Free Rate</td><td>Oracle Return</td><td>Oracle Excess Return</td><td>GM Return</td><td>GM Excess Return</td><td>Portfolio Return</td><td>Portfolio Excess Return</td></tr><tr><td>8/1/2002</td><td>-0.11002</td><td>0.00133</td><td>-0.11136</td><td>-0.18040</td><td>-0.18173</td><td>-0.18721</td><td>-0.18855</td><td>-0.09664</td><td>-0.09797</td></tr><tr><td>9/1/2002</td><td>0.08645</td><td>0.00133</td><td>0.08512</td><td>0.29644</td><td>0.29510</td><td>-0.14524</td><td>-0.14658</td><td>0.06920</td><td>0.06787</td></tr><tr><td>10/1/2002</td><td>0.05707</td><td>0.00130</td><td>0.05577</td><td>0.19235</td><td>0.19105</td><td>0.19398</td><td>0.19268</td><td>0.08947</td><td>0.08817</td></tr><tr><td>11/1/2002</td><td>-0.06033</td><td>0.00106</td><td>-0.06139</td><td>-0.11111</td><td>-0.11217</td><td>-0.07154</td><td>-0.07259</td><td>-0.04623</td><td>-0.04729</td></tr><tr><td>12/1/2002</td><td>-0.02741</td><td>0.00103</td><td>-0.02845</td><td>0.11389</td><td>0.11286</td><td>-0.01438</td><td>-0.01541</td><td>-0.00030</td><td>-0.00134</td></tr><tr><td>1/1/2003</td><td>-0.01700</td><td>0.00100</td><td>-0.01800</td><td>-0.00582</td><td>-0.00682</td><td>-0.07047</td><td>-0.07147</td><td>-0.03087</td><td>-0.03187</td></tr><tr><td>2/1/2003</td><td>0.00836</td><td>0.00098</td><td>0.00737</td><td>-0.09365</td><td>-0.09463</td><td>-0.00444</td><td>-0.00543</td><td>-0.00951</td><td>-0.01049</td></tr><tr><td>3/1/2003</td><td>0.08104</td><td>0.00094</td><td>0.08010</td><td>0.09594</td><td>0.09500</td><td>0.07228</td><td>0.07134</td><td>0.06932</td><td>0.06838</td></tr><tr><td>4/1/2003</td><td>0.05090</td><td>0.00095</td><td>0.04995</td><td>0.09512</td><td>0.09417</td><td>-0.01997</td><td>-0.02092</td><td>0.06898</td><td>0.06803</td></tr><tr><td>5/1/2003</td><td>0.01132</td><td>0.00090</td><td>0.01042</td><td>-0.07686</td><td>-0.07776</td><td>0.01896</td><td>0.01806</td><td>0.00567</td><td>0.00477</td></tr><tr><td>6/1/2003</td><td>0.01622</td><td>0.00077</td><td>0.01546</td><td>-0.00167</td><td>-0.00243</td><td>0.03972</td><td>0.03896</td><td>0.03096</td><td>0.03019</td></tr><tr><td>7/1/2003</td><td>0.01787</td><td>0.00079</td><td>0.01708</td><td>0.07006</td><td>0.06927</td><td>0.09805</td><td>0.09726</td><td>0.03756</td><td>0.03677</td></tr><tr><td>8/1/2003</td><td>-0.01194</td><td>0.00086</td><td>-0.01280</td><td>-0.12315</td><td>-0.12401</td><td>-0.00414</td><td>-0.00499</td><td>-0.03145</td><td>-0.03231</td></tr><tr><td>9/1/2003</td><td>0.05496</td><td>0.00084</td><td>0.05412</td><td>0.06400</td><td>0.06316</td><td>0.04251</td><td>0.04167</td><td>0.07166</td><td>0.07082</td></tr><tr><td>10/1/2003</td><td>0.00713</td><td>0.00083</td><td>0.00630</td><td>0.00418</td><td>0.00334</td><td>0.00258</td><td>0.00174</td><td>0.00832</td><td>0.00749</td></tr><tr><td>11/1/2003</td><td>0.05077</td><td>0.00085</td><td>0.04992</td><td>0.10067</td><td>0.09982</td><td>0.24825</td><td>0.24740</td><td>0.06934</td><td>0.06849</td></tr><tr><td>12/1/2003</td><td>0.01728</td><td>0.00083</td><td>0.01645</td><td>0.04762</td><td>0.04679</td><td>-0.06966</td><td>-0.07049</td><td>0.00012</td><td>-0.00070</td></tr><tr><td>1/1/2004</td><td>0.01221</td><td>0.00081</td><td>0.01140</td><td>-0.07143</td><td>-0.07224</td><td>-0.03140</td><td>-0.03221</td><td>0.01279</td><td>0.01198</td></tr><tr><td>2/1/2004</td><td>-0.01636</td><td>0.00083</td><td>-0.01718</td><td>-0.06760</td><td>-0.06842</td><td>-0.01808</td><td>-0.01890</td><td>-0.03456</td><td>-0.03538</td></tr><tr><td>3/1/2004</td><td>-0.01679</td><td>0.00083</td><td>-0.01762</td><td>-0.06250</td><td>-0.06333</td><td>0.00360</td><td>0.00277</td><td>-0.00890</td><td>-0.00972</td></tr><tr><td>4/1/2004</td><td>0.01208</td><td>0.00091</td><td>0.01118</td><td>0.01333</td><td>0.01243</td><td>-0.04281</td><td>-0.04372</td><td>0.02303</td><td>0.02212</td></tr><tr><td>5/1/2004</td><td>0.01799</td><td>0.00109</td><td>0.01690</td><td>0.04649</td><td>0.04540</td><td>0.02644</td><td>0.02535</td><td>-0.00927</td><td>-0.01036</td></tr><tr><td>6/1/2004</td><td>-0.03429</td><td>0.00133</td><td>-0.03562</td><td>-0.11903</td><td>-0.12036</td><td>-0.07405</td><td>-0.07538</td><td>-0.05173</td><td>-0.05307</td></tr><tr><td>7/1/2004</td><td>0.00229</td><td>0.00138</td><td>0.00090</td><td>-0.05138</td><td>-0.05276</td><td>-0.04242</td><td>-0.04380</td><td>-0.00826</td><td>-0.00965</td></tr><tr><td>8/1/2004</td><td>0.00936</td><td>0.00143</td><td>0.00793</td><td>0.13139</td><td>0.12996</td><td>0.02832</td><td>0.02689</td><td>0.01632</td><td>0.01488</td></tr><tr><td>9/1/2004</td><td>0.01401</td><td>0.00156</td><td>0.01246</td><td>0.12234</td><td>0.12078</td><td>-0.09251</td><td>-0.09407</td><td>0.00577</td><td>0.00421</td></tr><tr><td>10/1/2004</td><td>0.03859</td><td>0.00167</td><td>0.03693</td><td>0.00632</td><td>0.00465</td><td>0.00104</td><td>-0.00063</td><td>0.05326</td><td>0.05159</td></tr><tr><td>11/1/2004</td><td>0.03246</td><td>0.00189</td><td>0.03057</td><td>0.07692</td><td>0.07503</td><td>0.03809</td><td>0.03620</td><td>0.02507</td><td>0.02318</td></tr><tr><td>12/1/2004</td><td>-0.02529</td><td>0.00203</td><td>-0.02732</td><td>0.00364</td><td>0.00162</td><td>-0.08113</td><td>-0.08315</td><td>-0.03109</td><td>-0.03311</td></tr><tr><td>1/1/2005</td><td>0.01890</td><td>0.00218</td><td>0.01673</td><td>-0.05955</td><td>-0.06172</td><td>-0.03151</td><td>-0.03369</td><td>0.01225</td><td>0.01008</td></tr><tr><td>2/1/2005</td><td>-0.01912</td><td>0.00231</td><td>-0.02143</td><td>-0.03629</td><td>-0.03860</td><td>-0.17560</td><td>-0.17790</td><td>-0.01308</td><td>-0.01538</td></tr><tr><td>3/1/2005</td><td>-0.02011</td><td>0.00250</td><td>-0.02261</td><td>-0.07372</td><td>-0.07622</td><td>-0.09221</td><td>-0.09471</td><td>-0.03860</td><td>-0.04110</td></tr><tr><td>4/1/2005</td><td>0.02995</td><td>0.00254</td><td>0.02741</td><td>0.10727</td><td>0.10472</td><td>0.18178</td><td>0.17924</td><td>0.04730</td><td>0.04476</td></tr><tr><td>5/1/2005</td><td>-0.00014</td><td>0.00257</td><td>-0.00271</td><td>0.03125</td><td>0.02868</td><td>0.07834</td><td>0.07577</td><td>-0.02352</td><td>-0.02609</td></tr><tr><td>6/1/2005</td><td>0.03597</td><td>0.00261</td><td>0.03336</td><td>0.02803</td><td>0.02542</td><td>0.08294</td><td>0.08033</td><td>0.04905</td><td>0.04644</td></tr><tr><td>7/1/2005</td><td>-0.01122</td><td>0.00285</td><td>-0.01407</td><td>-0.04274</td><td>-0.04559</td><td>-0.07143</td><td>-0.07428</td><td>-0.02185</td><td>-0.02470</td></tr><tr><td>8/1/2005</td><td>0.00695</td><td>0.00305</td><td>0.00390</td><td>-0.04542</td><td>-0.04847</td><td>-0.10471</td><td>-0.10776</td><td>0.00880</td><td>0.00575</td></tr><tr><td>9/1/2005</td><td>-0.01774</td><td>0.00306</td><td>-0.02080</td><td>0.02258</td><td>0.01952</td><td>-0.10487</td><td>-0.10793</td><td>-0.04390</td><td>-0.04696</td></tr><tr><td>10/1/2005</td><td>0.03519</td><td>0.00333</td><td>0.03186</td><td>-0.00631</td><td>-0.00963</td><td>-0.20073</td><td>-0.20405</td><td>0.01649</td><td>0.01316</td></tr><tr><td>11/1/2005</td><td>0.01009</td><td>0.00346</td><td>0.00663</td><td>-0.00714</td><td>-0.01060</td><td>0.01050</td><td>0.00704</td><td>0.01812</td><td>0.01466</td></tr></table>

Portfolio includes the following 20 stocks: Honeywell, Alcoa, Campbell Soup, Boeing, General Dynamics, Oracle, Sun, General Motors, Procter & Gamble, Wal-Mart, Exxon, ITT, Unilever, Hilton, Martin Marietta, Coca-Cola, Northrop Grumman, Mercury Interact, Amazon, and United Technologies.

The estimated parameters for the two stocks and the portfolios are reported in Table 2. As can be seen from the table, the intercept term is not statistically significant; however, the slope, referred to as the beta of the characteristic line, is statistically significant. Typically for individual stocks, the  $R^2$  ranges from 0.15 to 0.65. For Oracle and GM the  $R^2$  is 0.23 and 0.26, respectively.

In contrast, for a randomly created portfolio, the  $R^2$  is considerably higher. For our 20-stock portfolio, the  $R^2$  is 0.79.

Note that some researchers estimate a stock's beta by using returns rather than excess returns. The regression estimated is referred to as the single-index market model. This model was first suggested by Markowitz as a proxy

Table 2 Characteristic Line of the Common Stock of General Motors, Oracle, and Portfolio: 12/1/2000-11/1/2005

<table><tr><td>Coefficient</td><td>Coefficient Estimate</td><td>Standard Error</td><td>t-statistic</td><td>p-value</td></tr><tr><td colspan="5">GM</td></tr><tr><td>α</td><td>-0.005</td><td>0.015</td><td>-0.348</td><td>0.729</td></tr><tr><td>β</td><td>1.406</td><td>0.339</td><td>4.142</td><td>0.000</td></tr><tr><td>R2</td><td>0.228</td><td></td><td></td><td></td></tr><tr><td>p-value</td><td>0.000</td><td></td><td></td><td></td></tr><tr><td colspan="5">Oracle</td></tr><tr><td>α</td><td>-0.009</td><td>0.011</td><td>-0.812</td><td>0.420</td></tr><tr><td>β</td><td>1.157</td><td>0.257</td><td>4.501</td><td>0.000</td></tr><tr><td>R2</td><td>0.259</td><td></td><td></td><td></td></tr><tr><td>p-value</td><td>0.000</td><td></td><td></td><td></td></tr><tr><td colspan="5">Portfolio</td></tr><tr><td>α</td><td>0.003</td><td>0.003</td><td>1.027</td><td>0.309</td></tr><tr><td>β</td><td>1.026</td><td>0.070</td><td>14.711</td><td>0.000</td></tr><tr><td>R2</td><td>0.787</td><td></td><td></td><td></td></tr><tr><td>p-value</td><td>0.000</td><td></td><td></td><td></td></tr></table> measure of the covariance of a stock with an index so that the full mean-variance analysis need not be performed. While the approach was mentioned by Markowitz (1959) in a footnote in his book, it was Sharpe (1963) who investigated this further. It turns out that the beta estimated using both the characteristic line and the single-index market model do not differ materially. For example, for our 20-stock portfolio, the betas differed only because of rounding off.


# Empirical Duration of Common Stock

A commonly used measure of the interest-rate sensitivity of an asset's value is its duration. Duration is interpreted as the approximate percentage change in the value of an asset for a 100-basis-point change in interest. Duration can be estimated by using a valuation model or empirically by estimating from historical returns the sensitivity of the asset's value to changes in interest rates. When duration is measured in the latter way, it is called empirical duration. Since it is estimated using regression analysis, it is sometimes referred to as regression-based duration.

A simple linear regression for computing empirical duration using monthly historical data (see Reilly, Wright, and Johnson, 2007) is

$$ y_{i t} = \alpha_{i} + \beta_{i} x_{t} + e_{i t}
$$ where


$y_{it} =$  the percentage change in the value of asset  $i$  for month  $t$ $x_{t} =$  the change in the Treasury yield for month  $t$

The estimated  $\beta_{i}$  is the empirical duration for asset  $i$ .

We will apply this linear regression to monthly data from October 1989 to October 2003 shown in Table  $3^{1}$  for the following asset indexes:

Electric Utility sector of the S&P 500
- Commercial Bank sector of the S&P 500
Lehman U.S. Aggregate Bond Index (now the Barclays Capital U.S. Aggregate Bond Index)

The yield change  $(x_{t})$  is measured by the Lehman Treasury Index. The regression results are shown in Table 4. We report the empirical duration  $(\beta_{i})$ , the  $t$ -statistic, the  $p$ -value, the  $R^2$ , and the intercept term. Negative values are reported for the empirical duration. In practice, however, the duration is quoted as a positive value. For the Electric Utility sector and the Lehman U.S. Aggregate Bond Index, the empirical duration is statistically significant at any reasonable level of significance.

A multiple regression model to estimate the empirical duration that has been suggested is

$$ y_{i t} = \alpha_{i} + \beta_{1 i} x_{1 t} + \beta_{2 i} x_{2 t} + e_{i t}
$$ where  $y_{it}$  and  $x_{1t}$  are the same as for the simple linear regression and  $x_{2t}$  is the return on the S&P 500. The results for this model are also shown in Table 4.


The results of the multiple regression indicate that the returns for the Electric Utility sector are affected by both the change in Treasury rates and the return on the stock market as proxied

Table 3 Data for Empirical Duration Illustration

<table><tr><td rowspan="2">Month</td><td rowspan="2">Change in Lehman Bros Treasury Yield</td><td rowspan="2">S&amp;P500 Return</td><td colspan="3">Monthly Returns for</td></tr><tr><td>Electric Utility Sector</td><td>Commercial Bank Sector</td><td>Lehman U.S. Aggregate Bond Index</td></tr><tr><td>Oct-89</td><td>-0.46</td><td>-2.33</td><td>2.350</td><td>-11.043</td><td>2.4600</td></tr><tr><td>Nov-89</td><td>-0.10</td><td>2.08</td><td>2.236</td><td>-3.187</td><td>0.9500</td></tr><tr><td>Dec-89</td><td>0.12</td><td>2.36</td><td>3.794</td><td>-1.887</td><td>0.2700</td></tr><tr><td>Jan-90</td><td>0.43</td><td>-6.71</td><td>-4.641</td><td>-10.795</td><td>-1.1900</td></tr><tr><td>Feb-90</td><td>0.09</td><td>1.29</td><td>0.193</td><td>4.782</td><td>0.3200</td></tr><tr><td>Mar-90</td><td>0.20</td><td>2.63</td><td>-1.406</td><td>-4.419</td><td>0.0700</td></tr><tr><td>Apr-90</td><td>0.34</td><td>-2.47</td><td>-5.175</td><td>-4.265</td><td>-0.9200</td></tr><tr><td>May-90</td><td>-0.46</td><td>9.75</td><td>5.455</td><td>12.209</td><td>2.9600</td></tr><tr><td>Jun-90</td><td>-0.20</td><td>-0.70</td><td>0.966</td><td>-5.399</td><td>1.6100</td></tr><tr><td>Jul-90</td><td>-0.21</td><td>-0.32</td><td>1.351</td><td>-8.328</td><td>1.3800</td></tr><tr><td>Aug-90</td><td>0.37</td><td>-9.03</td><td>-7.644</td><td>-10.943</td><td>-1.3400</td></tr><tr><td>Sep-90</td><td>-0.06</td><td>-4.92</td><td>0.435</td><td>-15.039</td><td>0.8300</td></tr><tr><td>Oct-90</td><td>-0.23</td><td>-0.37</td><td>10.704</td><td>-10.666</td><td>1.2700</td></tr><tr><td>Nov-90</td><td>-0.28</td><td>6.44</td><td>2.006</td><td>18.892</td><td>2.1500</td></tr><tr><td>Dec-90</td><td>-0.23</td><td>2.74</td><td>1.643</td><td>6.620</td><td>1.5600</td></tr><tr><td>Jan-91</td><td>-0.13</td><td>4.42</td><td>-1.401</td><td>8.018</td><td>1.2400</td></tr><tr><td>Feb-91</td><td>0.01</td><td>7.16</td><td>4.468</td><td>12.568</td><td>0.8500</td></tr><tr><td>Mar-91</td><td>0.03</td><td>2.38</td><td>2.445</td><td>5.004</td><td>0.6900</td></tr><tr><td>Apr-91</td><td>-0.15</td><td>0.28</td><td>-0.140</td><td>7.226</td><td>1.0800</td></tr><tr><td>May-91</td><td>0.06</td><td>4.28</td><td>-0.609</td><td>7.501</td><td>0.5800</td></tr><tr><td>Jun-91</td><td>0.15</td><td>-4.57</td><td>-0.615</td><td>-7.865</td><td>-0.0500</td></tr><tr><td>Jul-91</td><td>-0.13</td><td>4.68</td><td>4.743</td><td>7.983</td><td>1.3900</td></tr><tr><td>Aug-91</td><td>-0.37</td><td>2.35</td><td>3.226</td><td>9.058</td><td>2.1600</td></tr><tr><td>Sep-91</td><td>-0.33</td><td>-1.64</td><td>4.736</td><td>-2.033</td><td>2.0300</td></tr><tr><td>Oct-91</td><td>-0.17</td><td>1.34</td><td>1.455</td><td>0.638</td><td>1.1100</td></tr><tr><td>Nov-91</td><td>-0.15</td><td>-4.04</td><td>2.960</td><td>-9.814</td><td>0.9200</td></tr><tr><td>Dec-91</td><td>-0.59</td><td>11.43</td><td>5.821</td><td>14.773</td><td>2.9700</td></tr><tr><td>Jan-92</td><td>0.42</td><td>-1.86</td><td>-5.515</td><td>2.843</td><td>-1.3600</td></tr><tr><td>Feb-92</td><td>0.10</td><td>1.28</td><td>-1.684</td><td>8.834</td><td>0.6506</td></tr><tr><td>Mar-92</td><td>0.27</td><td>-1.96</td><td>-0.296</td><td>-3.244</td><td>-0.5634</td></tr><tr><td>Apr-92</td><td>-0.10</td><td>2.91</td><td>3.058</td><td>4.273</td><td>0.7215</td></tr><tr><td>May-92</td><td>-0.23</td><td>0.54</td><td>2.405</td><td>2.483</td><td>1.8871</td></tr><tr><td>Jun-92</td><td>-0.26</td><td>-1.45</td><td>0.492</td><td>1.221</td><td>1.3760</td></tr><tr><td>Jul-92</td><td>-0.41</td><td>4.03</td><td>6.394</td><td>-0.540</td><td>2.0411</td></tr><tr><td>Aug-92</td><td>-0.13</td><td>-2.02</td><td>-1.746</td><td>-5.407</td><td>1.0122</td></tr><tr><td>Sep-92</td><td>-0.26</td><td>1.15</td><td>0.718</td><td>1.960</td><td>1.1864</td></tr><tr><td>Oct-92</td><td>0.49</td><td>0.36</td><td>-0.778</td><td>2.631</td><td>-1.3266</td></tr><tr><td>Nov-92</td><td>0.26</td><td>3.37</td><td>-0.025</td><td>7.539</td><td>0.0228</td></tr><tr><td>Dec-92</td><td>-0.24</td><td>1.31</td><td>3.247</td><td>5.010</td><td>1.5903</td></tr><tr><td>Jan-93</td><td>-0.36</td><td>0.73</td><td>3.096</td><td>4.203</td><td>1.9177</td></tr><tr><td>Feb-93</td><td>-0.29</td><td>1.35</td><td>6.000</td><td>3.406</td><td>1.7492</td></tr><tr><td>Mar-93</td><td>0.02</td><td>2.15</td><td>0.622</td><td>3.586</td><td>0.4183</td></tr><tr><td>Apr-93</td><td>-0.10</td><td>-2.45</td><td>-0.026</td><td>-5.441</td><td>0.6955</td></tr><tr><td>May-93</td><td>0.25</td><td>2.70</td><td>-0.607</td><td>-0.647</td><td>0.1268</td></tr><tr><td>Jun-93</td><td>-0.30</td><td>0.33</td><td>2.708</td><td>4.991</td><td>1.8121</td></tr><tr><td>Jul-93</td><td>0.05</td><td>-0.47</td><td>2.921</td><td>0.741</td><td>0.5655</td></tr><tr><td>Aug-93</td><td>-0.31</td><td>3.81</td><td>3.354</td><td>0.851</td><td>1.7539</td></tr><tr><td>Sep-93</td><td>0.00</td><td>-0.74</td><td>-1.099</td><td>3.790</td><td>0.2746</td></tr><tr><td>Oct-93</td><td>0.05</td><td>2.03</td><td>-1.499</td><td>-7.411</td><td>0.3732</td></tr><tr><td>Nov-93</td><td>0.26</td><td>-0.94</td><td>-5.091</td><td>-1.396</td><td>-0.8502</td></tr><tr><td>Dec-93</td><td>0.01</td><td>1.23</td><td>2.073</td><td>3.828</td><td>0.5420</td></tr></table>

(Continued)

Table 3 (Continued)

<table><tr><td rowspan="2">Month</td><td rowspan="2">Change in Lehman Bros Treasury Yield</td><td rowspan="2">S&amp;P500 Return</td><td colspan="3">Monthly Returns for</td></tr><tr><td>Electric Utility Sector</td><td>Commercial Bank Sector</td><td>Lehman U.S. Aggregate Bond Index</td></tr><tr><td>Jan-94</td><td>-0.17</td><td>3.35</td><td>-2.577</td><td>4.376</td><td>1.3502</td></tr><tr><td>Feb-94</td><td>0.55</td><td>-2.70</td><td>-5.683</td><td>-4.369</td><td>-1.7374</td></tr><tr><td>Mar-94</td><td>0.55</td><td>-4.35</td><td>-4.656</td><td>-3.031</td><td>-2.4657</td></tr><tr><td>Apr-94</td><td>0.37</td><td>1.30</td><td>0.890</td><td>3.970</td><td>-0.7985</td></tr><tr><td>May-94</td><td>0.18</td><td>1.63</td><td>-5.675</td><td>6.419</td><td>-0.0138</td></tr><tr><td>Jun-94</td><td>0.16</td><td>-2.47</td><td>-3.989</td><td>-2.662</td><td>-0.2213</td></tr><tr><td>Jul-94</td><td>-0.23</td><td>3.31</td><td>5.555</td><td>2.010</td><td>1.9868</td></tr><tr><td>Aug-94</td><td>0.12</td><td>4.07</td><td>0.851</td><td>3.783</td><td>0.1234</td></tr><tr><td>Sep-94</td><td>0.43</td><td>-2.41</td><td>-2.388</td><td>-7.625</td><td>-1.4717</td></tr><tr><td>Oct-94</td><td>0.18</td><td>2.29</td><td>1.753</td><td>1.235</td><td>-0.0896</td></tr><tr><td>Nov-94</td><td>0.37</td><td>-3.67</td><td>2.454</td><td>-7.595</td><td>-0.2217</td></tr><tr><td>Dec-94</td><td>0.11</td><td>1.46</td><td>0.209</td><td>-0.866</td><td>0.6915</td></tr><tr><td>Jan-95</td><td>-0.33</td><td>2.60</td><td>7.749</td><td>6.861</td><td>1.9791</td></tr><tr><td>Feb-95</td><td>-0.41</td><td>3.88</td><td>-0.750</td><td>6.814</td><td>2.3773</td></tr><tr><td>Mar-95</td><td>0.01</td><td>2.96</td><td>-2.556</td><td>-1.434</td><td>0.6131</td></tr><tr><td>Apr-95</td><td>-0.18</td><td>2.91</td><td>3.038</td><td>4.485</td><td>1.3974</td></tr><tr><td>May-95</td><td>-0.72</td><td>3.95</td><td>7.590</td><td>9.981</td><td>3.8697</td></tr><tr><td>Jun-95</td><td>-0.05</td><td>2.35</td><td>-0.707</td><td>0.258</td><td>0.7329</td></tr><tr><td>Jul-95</td><td>0.14</td><td>3.33</td><td>-0.395</td><td>4.129</td><td>-0.2231</td></tr><tr><td>Aug-95</td><td>-0.10</td><td>0.27</td><td>-0.632</td><td>5.731</td><td>1.2056</td></tr><tr><td>Sep-95</td><td>-0.05</td><td>4.19</td><td>6.987</td><td>5.491</td><td>0.9735</td></tr><tr><td>Oct-95</td><td>-0.21</td><td>-0.35</td><td>2.215</td><td>-1.906</td><td>1.3002</td></tr><tr><td>Nov-95</td><td>-0.23</td><td>4.40</td><td>-0.627</td><td>7.664</td><td>1.4982</td></tr><tr><td>Dec-95</td><td>-0.18</td><td>1.85</td><td>6.333</td><td>0.387</td><td>1.4040</td></tr><tr><td>Jan-96</td><td>-0.13</td><td>3.44</td><td>2.420</td><td>3.361</td><td>0.6633</td></tr><tr><td>Feb-96</td><td>0.49</td><td>0.96</td><td>-3.590</td><td>4.673</td><td>-1.7378</td></tr><tr><td>Mar-96</td><td>0.31</td><td>0.96</td><td>-1.697</td><td>2.346</td><td>-0.6954</td></tr><tr><td>Apr-96</td><td>0.25</td><td>1.47</td><td>-4.304</td><td>-1.292</td><td>-0.5621</td></tr><tr><td>May-96</td><td>0.18</td><td>2.58</td><td>1.864</td><td>2.529</td><td>-0.2025</td></tr><tr><td>Jun-96</td><td>-0.14</td><td>0.41</td><td>5.991</td><td>-0.859</td><td>1.3433</td></tr><tr><td>Jul-96</td><td>0.08</td><td>-4.45</td><td>-7.150</td><td>0.466</td><td>0.2736</td></tr><tr><td>Aug-96</td><td>0.15</td><td>2.12</td><td>1.154</td><td>4.880</td><td>-0.1675</td></tr><tr><td>Sep-96</td><td>-0.23</td><td>5.62</td><td>0.682</td><td>6.415</td><td>1.7414</td></tr><tr><td>Oct-96</td><td>-0.35</td><td>2.74</td><td>4.356</td><td>8.004</td><td>2.2162</td></tr><tr><td>Nov-96</td><td>-0.21</td><td>7.59</td><td>1.196</td><td>10.097</td><td>1.7129</td></tr><tr><td>Dec-96</td><td>0.30</td><td>-1.96</td><td>-0.323</td><td>-4.887</td><td>-0.9299</td></tr><tr><td>Jan-97</td><td>0.06</td><td>6.21</td><td>0.443</td><td>8.392</td><td>0.3058</td></tr><tr><td>Feb-97</td><td>0.11</td><td>0.81</td><td>0.235</td><td>5.151</td><td>0.2485</td></tr><tr><td>Mar-97</td><td>0.36</td><td>-4.16</td><td>-4.216</td><td>-7.291</td><td>-1.1083</td></tr><tr><td>Apr-97</td><td>-0.18</td><td>5.97</td><td>-2.698</td><td>5.477</td><td>1.4980</td></tr><tr><td>May-97</td><td>-0.07</td><td>6.14</td><td>4.240</td><td>3.067</td><td>0.9451</td></tr><tr><td>Jun-97</td><td>-0.11</td><td>4.46</td><td>3.795</td><td>4.834</td><td>1.1873</td></tr><tr><td>Jul-97</td><td>-0.43</td><td>7.94</td><td>2.627</td><td>12.946</td><td>2.6954</td></tr><tr><td>Aug-97</td><td>0.30</td><td>-5.56</td><td>-2.423</td><td>-6.205</td><td>-0.8521</td></tr><tr><td>Sep-97</td><td>-0.19</td><td>5.48</td><td>5.010</td><td>7.956</td><td>1.4752</td></tr><tr><td>Oct-97</td><td>-0.21</td><td>-3.34</td><td>1.244</td><td>-2.105</td><td>1.4506</td></tr><tr><td>Nov-97</td><td>0.06</td><td>4.63</td><td>8.323</td><td>3.580</td><td>0.4603</td></tr><tr><td>Dec-97</td><td>-0.11</td><td>1.72</td><td>7.902</td><td>3.991</td><td>1.0063</td></tr><tr><td>Jan-98</td><td>-0.25</td><td>1.11</td><td>-4.273</td><td>-4.404</td><td>1.2837</td></tr><tr><td>Feb-98</td><td>0.17</td><td>7.21</td><td>2.338</td><td>9.763</td><td>-0.0753</td></tr></table>

Table 3 (Continued)

<table><tr><td rowspan="2">Month</td><td rowspan="2">Change in Lehman Bros Treasury Yield</td><td rowspan="2">S&amp;P500 Return</td><td colspan="3">Monthly Returns for</td></tr><tr><td>Electric Utility Sector</td><td>Commercial Bank Sector</td><td>Lehman U.S. Aggregate Bond Index</td></tr><tr><td>Mar-98</td><td>0.05</td><td>5.12</td><td>7.850</td><td>7.205</td><td>0.3441</td></tr><tr><td>Apr-98</td><td>0.00</td><td>1.01</td><td>-3.234</td><td>2.135</td><td>0.5223</td></tr><tr><td>May-98</td><td>-0.08</td><td>-1.72</td><td>-0.442</td><td>-3.200</td><td>0.9481</td></tr><tr><td>Jun-98</td><td>-0.09</td><td>4.06</td><td>3.717</td><td>2.444</td><td>0.8483</td></tr><tr><td>Jul-98</td><td>0.03</td><td>-1.06</td><td>-4.566</td><td>0.918</td><td>0.2122</td></tr><tr><td>Aug-98</td><td>-0.46</td><td>-14.46</td><td>7.149</td><td>-24.907</td><td>1.6277</td></tr><tr><td>Sep-98</td><td>-0.53</td><td>6.41</td><td>5.613</td><td>2.718</td><td>2.3412</td></tr><tr><td>Oct-98</td><td>0.05</td><td>8.13</td><td>-2.061</td><td>9.999</td><td>-0.5276</td></tr><tr><td>Nov-98</td><td>0.17</td><td>6.06</td><td>1.631</td><td>5.981</td><td>0.5664</td></tr><tr><td>Dec-98</td><td>0.02</td><td>5.76</td><td>2.608</td><td>2.567</td><td>0.3007</td></tr><tr><td>Jan-99</td><td>-0.01</td><td>4.18</td><td>-6.072</td><td>-0.798</td><td>0.7143</td></tr><tr><td>Feb-99</td><td>0.55</td><td>-3.11</td><td>-5.263</td><td>0.524</td><td>-1.7460</td></tr><tr><td>Mar-99</td><td>-0.05</td><td>4.00</td><td>-2.183</td><td>1.370</td><td>0.5548</td></tr><tr><td>Apr-99</td><td>0.05</td><td>3.87</td><td>6.668</td><td>7.407</td><td>0.3170</td></tr><tr><td>May-99</td><td>0.31</td><td>-2.36</td><td>7.613</td><td>-6.782</td><td>-0.8763</td></tr><tr><td>Jun-99</td><td>0.11</td><td>5.55</td><td>-4.911</td><td>5.544</td><td>-0.3194</td></tr><tr><td>Jul-99</td><td>0.11</td><td>-3.12</td><td>-2.061</td><td>-7.351</td><td>-0.4248</td></tr><tr><td>Aug-99</td><td>0.10</td><td>-0.50</td><td>1.508</td><td>-4.507</td><td>-0.0508</td></tr><tr><td>Sep-99</td><td>-0.08</td><td>-2.74</td><td>-5.267</td><td>-6.093</td><td>1.1604</td></tr><tr><td>Oct-99</td><td>0.11</td><td>6.33</td><td>1.800</td><td>15.752</td><td>0.3689</td></tr><tr><td>Nov-99</td><td>0.16</td><td>2.03</td><td>-8.050</td><td>-7.634</td><td>-0.0069</td></tr><tr><td>Dec-99</td><td>0.24</td><td>5.89</td><td>-0.187</td><td>-9.158</td><td>-0.4822</td></tr><tr><td>Jan-00</td><td>0.19</td><td>-5.02</td><td>5.112</td><td>-2.293</td><td>-0.3272</td></tr><tr><td>Feb-00</td><td>-0.13</td><td>-1.89</td><td>-10.030</td><td>-12.114</td><td>1.2092</td></tr><tr><td>Mar-00</td><td>-0.20</td><td>9.78</td><td>1.671</td><td>18.770</td><td>1.3166</td></tr><tr><td>Apr-00</td><td>0.17</td><td>-3.01</td><td>14.456</td><td>-5.885</td><td>-0.2854</td></tr><tr><td>May-00</td><td>0.07</td><td>-2.05</td><td>2.985</td><td>11.064</td><td>-0.0459</td></tr><tr><td>Jun-00</td><td>-0.26</td><td>2.47</td><td>-5.594</td><td>-14.389</td><td>2.0803</td></tr><tr><td>Jul-00</td><td>-0.08</td><td>-1.56</td><td>6.937</td><td>6.953</td><td>0.9077</td></tr><tr><td>Aug-00</td><td>-0.17</td><td>6.21</td><td>13.842</td><td>12.309</td><td>1.4497</td></tr><tr><td>Sep-00</td><td>-0.03</td><td>-5.28</td><td>12.413</td><td>1.812</td><td>0.6286</td></tr><tr><td>Oct-00</td><td>-0.06</td><td>-0.42</td><td>-3.386</td><td>-1.380</td><td>0.6608</td></tr><tr><td>Nov-00</td><td>-0.31</td><td>-7.88</td><td>3.957</td><td>-3.582</td><td>1.6355</td></tr><tr><td>Dec-00</td><td>-0.33</td><td>0.49</td><td>4.607</td><td>12.182</td><td>1.8554</td></tr><tr><td>Jan-01</td><td>-0.22</td><td>3.55</td><td>-11.234</td><td>3.169</td><td>1.6346</td></tr><tr><td>Feb-01</td><td>-0.16</td><td>-9.12</td><td>6.747</td><td>-3.740</td><td>0.8713</td></tr><tr><td>Mar-01</td><td>-0.08</td><td>-6.33</td><td>1.769</td><td>0.017</td><td>0.5018</td></tr><tr><td>Apr-01</td><td>0.22</td><td>7.77</td><td>5.025</td><td>-1.538</td><td>-0.4151</td></tr><tr><td>May-01</td><td>0.00</td><td>0.67</td><td>0.205</td><td>5.934</td><td>0.6041</td></tr><tr><td>Jun-01</td><td>0.01</td><td>-2.43</td><td>-7.248</td><td>0.004</td><td>0.3773</td></tr><tr><td>Jul-01</td><td>-0.40</td><td>-0.98</td><td>-5.092</td><td>2.065</td><td>2.2357</td></tr><tr><td>Aug-01</td><td>-0.14</td><td>-6.26</td><td>-0.149</td><td>-3.940</td><td>1.1458</td></tr><tr><td>Sep-01</td><td>-0.41</td><td>-8.08</td><td>-10.275</td><td>-4.425</td><td>1.1647</td></tr><tr><td>Oct-01</td><td>-0.39</td><td>1.91</td><td>1.479</td><td>-7.773</td><td>2.0930</td></tr><tr><td>Nov-01</td><td>0.41</td><td>7.67</td><td>-0.833</td><td>7.946</td><td>-1.3789</td></tr><tr><td>Dec-01</td><td>0.21</td><td>0.88</td><td>3.328</td><td>3.483</td><td>-0.6357</td></tr><tr><td>Jan-02</td><td>0.00</td><td>-1.46</td><td>-3.673</td><td>1.407</td><td>0.8096</td></tr><tr><td>Feb-02</td><td>-0.08</td><td>-1.93</td><td>-2.214</td><td>-0.096</td><td>0.9690</td></tr><tr><td>Mar-02</td><td>0.56</td><td>3.76</td><td>10.623</td><td>7.374</td><td>-1.6632</td></tr><tr><td>Apr-02</td><td>-0.44</td><td>-6.06</td><td>1.652</td><td>2.035</td><td>1.9393</td></tr></table>

(Continued)

Table 3 (Continued)

<table><tr><td rowspan="2">Month</td><td rowspan="2">Change in Lehman Bros Treasury Yield</td><td rowspan="2">S&amp;P500 Return</td><td colspan="3">Monthly Returns for</td></tr><tr><td>Electric Utility Sector</td><td>Commercial Bank Sector</td><td>Lehman U.S. Aggregate Bond Index</td></tr><tr><td>May-02</td><td>-0.06</td><td>-0.74</td><td>-3.988</td><td>1.247</td><td>0.8495</td></tr><tr><td>Jun-02</td><td>-0.23</td><td>-7.12</td><td>-4.194</td><td>-3.767</td><td>0.8651</td></tr><tr><td>Jul-02</td><td>-0.50</td><td>-7.80</td><td>-10.827</td><td>-4.957</td><td>1.2062</td></tr><tr><td>Aug-02</td><td>-0.17</td><td>0.66</td><td>2.792</td><td>3.628</td><td>1.6882</td></tr><tr><td>Sep-02</td><td>-0.45</td><td>-10.87</td><td>-8.677</td><td>-10.142</td><td>1.6199</td></tr><tr><td>Oct-02</td><td>0.11</td><td>8.80</td><td>-2.802</td><td>5.143</td><td>-0.4559</td></tr><tr><td>Nov-02</td><td>0.34</td><td>5.89</td><td>1.620</td><td>0.827</td><td>-0.0264</td></tr><tr><td>Dec-02</td><td>-0.45</td><td>-5.88</td><td>5.434</td><td>-2.454</td><td>2.0654</td></tr><tr><td>Jan-03</td><td>0.11</td><td>-2.62</td><td>-3.395</td><td>-0.111</td><td>0.0855</td></tr><tr><td>Feb-03</td><td>-0.21</td><td>-1.50</td><td>-2.712</td><td>-1.514</td><td>1.3843</td></tr><tr><td>Mar-03</td><td>0.05</td><td>0.97</td><td>4.150</td><td>-3.296</td><td>-0.0773</td></tr><tr><td>Apr-03</td><td>-0.03</td><td>8.24</td><td>5.438</td><td>9.806</td><td>0.8254</td></tr><tr><td>May-03</td><td>-0.33</td><td>5.27</td><td>10.519</td><td>5.271</td><td>1.8645</td></tr><tr><td>Jun-03</td><td>0.08</td><td>1.28</td><td>1.470</td><td>1.988</td><td>-0.1986</td></tr><tr><td>Jul-03</td><td>0.66</td><td>1.76</td><td>-5.649</td><td>3.331</td><td>-3.3620</td></tr><tr><td>Aug-03</td><td>0.05</td><td>1.95</td><td>1.342</td><td>-1.218</td><td>0.6637</td></tr><tr><td>Sep-03</td><td>-0.46</td><td>-1.06</td><td>4.993</td><td>-0.567</td><td>2.6469</td></tr><tr><td>Oct-03</td><td>0.33</td><td>5.66</td><td>0.620</td><td>8.717</td><td>-0.9320</td></tr><tr><td>Nov-03</td><td>0.13</td><td>0.88</td><td>0.136</td><td>1.428</td><td>0.2391</td></tr><tr><td>Dec-03</td><td>-0.14</td><td>5.24</td><td>NA</td><td>NA</td><td>NA</td></tr></table> by the S&P 500. For the Commercial Bank sector, the coefficient of the changes in Treasury rates is not statistically significant, however the coefficient of the return on the S&P 500 is statistically significant. The opposite is the case for the Lehman U.S. Aggregate Bond Index. It is interesting to note that the duration for the Lehman U.S. Aggregate Bond Index as reported by Lehman Brothers was about 4.55 in November 2003. The empirical duration is 4.1. While the sign of the coefficient that is an estimate of duration is negative (which means the price moves in the opposite direction to the change in interest rates), mar ket participants talk in terms of the positive value of duration for a bond that has this characteristic.


# Predicting the 10-Year Treasury Yield2

The U.S. Department of the Treasury issues two types of securities: zero-coupon securities and coupon securities. Securities issued with one year or less to maturity are called Treasury bills; they are issued as zero-coupon instruments. Treasury securities with more than one year to maturity are issued as coupon-bearing securities. Treasury securities from more than one year up to 10 years of maturity are called Treasury notes; Treasury securities with a maturity in excess of 10 years are called Treasury bonds. The U.S. Treasury auctions securities of specified maturities on a regular calendar basis. The Treasury currently issues 30-year Treasury bonds but had stopped issuance of them from October 2001 to January 2006.


An important Treasury coupon bond is the 10-year Treasury note. In this illustration we will try to forecast this rate based on two independent variables suggested by economic theory. A well-known theory of interest rates is that the interest rate in any economy consists of two components. This relationship is known as Fisher's law. The first is the expected

Table 4 Estimation of Regression Parameters for Empirical Duration

<table><tr><td></td><td>Electric Utility Sector</td><td>Commercial Bank Sector</td><td>Lehman U.S. Aggregate Bond Index</td></tr><tr><td colspan="4">a. Simple Linear Regression</td></tr><tr><td colspan="4">Intercept</td></tr><tr><td>αi</td><td>0.6376</td><td>1.1925</td><td>0.5308</td></tr><tr><td>t-statistic</td><td>1.8251</td><td>2.3347</td><td>21.1592</td></tr><tr><td>p-value</td><td>0.0698</td><td>0.0207</td><td>0.0000</td></tr><tr><td colspan="4">Change in the Treasury yield</td></tr><tr><td>βi</td><td>-4.5329</td><td>-2.5269</td><td>-4.1062</td></tr><tr><td>t-statistic</td><td>-3.4310</td><td>-1.3083</td><td>-43.2873</td></tr><tr><td>p-value</td><td>0.0008</td><td>0.1926</td><td>0.0000</td></tr><tr><td>R2</td><td>0.0655</td><td>0.0101</td><td>0.9177</td></tr><tr><td>F-value</td><td>11.7717</td><td>1.7116</td><td>1873.8000</td></tr><tr><td>p-value</td><td>0.0007</td><td>0.1926</td><td>0.0000</td></tr><tr><td colspan="4">b. Multiple Linear Regression</td></tr><tr><td colspan="4">Intercept</td></tr><tr><td>αi</td><td>0.3937</td><td>0.2199</td><td>0.5029</td></tr><tr><td>t-statistic</td><td>1.1365</td><td>0.5835</td><td>21.3885</td></tr><tr><td>p-value</td><td>0.2574</td><td>0.5604</td><td>0.0000</td></tr><tr><td colspan="4">Change in the Treasury yield</td></tr><tr><td>β1i</td><td>-4.3780</td><td>-1.9096</td><td>-4.0885</td></tr><tr><td>t-statistic</td><td>-3.4143</td><td>-1.3686</td><td>-46.9711</td></tr><tr><td>p-value</td><td>0.0008</td><td>0.1730</td><td>0.0000</td></tr><tr><td colspan="4">Return on the S&amp;P 500</td></tr><tr><td>β2i</td><td>0.2664</td><td>1.0620</td><td>0.0304</td></tr><tr><td>t-statistic</td><td>3.4020</td><td>12.4631</td><td>5.7252</td></tr><tr><td>p-value</td><td>0.0008</td><td>0.0000</td><td>0.0000</td></tr><tr><td>R2</td><td>0.1260</td><td>0.4871</td><td>0.9312</td></tr><tr><td>F-value</td><td>12.0430</td><td>79.3060</td><td>1130.5000</td></tr><tr><td>p-value</td><td>0.00001</td><td>0.00000</td><td>0.00000</td></tr></table> rate of inflation. The second is the real rate of interest. We use regression analysis to produce a model to forecast the yield on the 10-year Treasury note (simply, the 10-year Treasury yield)—the dependent variable—and the expected rate of inflation (simply, expected inflation) and the real rate of interest (simply, real rate).


The 10-year Treasury yield is observable, but we need a proxy for the two independent variables (i.e., the expected rate of inflation and the real rate of interest at the time) as they are not observable at the time of the forecast. Keep in mind that since we are forecasting, we do not use as our independent variable information that is unavailable at the time of the forecast. Consequently, we need a proxy available at the time of the forecast.

The inflation rate is available from the U.S. Department of Commerce. However, we need a proxy for expected inflation. We can use some type of average of past inflation as a proxy. In our model, we use a 5-year moving average. There are more sophisticated methodologies for calculating expected inflation, but the 5-year moving average is sufficient for our illustration. For example, one can use an exponential smoothing of actual inflation, a methodology used by the OECD. For the real rate, we use the rate on 3-month certificates of deposit (CDs). Again, we use a 5-year moving average.

The monthly data for the three variables from November 1965 to December 2005 (482 observations) are provided in Table 5. The regression results are reported in Table 6. As can be seen, the coefficients of both independent variables

Table 5 Monthly Data for 10-Year Treasury Yield, Expected Inflation, and Real Rate: November 1965-December 2005

<table><tr><td>Date</td><td>10-Yr. Trea. Yield</td><td>Exp. Infl.</td><td>Real Rate</td><td>Date</td><td>10-Yr. Trea. Yield</td><td>Exp. Infl.</td><td>Real Rate</td><td>Date</td><td>10-Yr. Trea. Yield</td><td>Exp. Infl.</td><td>Real Rate</td></tr><tr><td>1965</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Nov</td><td>4.45</td><td>1.326</td><td>2.739</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Dec</td><td>4.62</td><td>1.330</td><td>2.757</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>1966</td><td></td><td></td><td></td><td>1970</td><td></td><td></td><td></td><td>1974</td><td></td><td></td><td></td></tr><tr><td>Jan</td><td>4.61</td><td>1.334</td><td>2.780</td><td>Jan</td><td>7.80</td><td>3.621</td><td>3.061</td><td>Jan</td><td>6.99</td><td>4.652</td><td>3.330</td></tr><tr><td>Feb</td><td>4.83</td><td>1.348</td><td>2.794</td><td>Feb</td><td>7.24</td><td>3.698</td><td>3.064</td><td>Feb</td><td>6.96</td><td>4.653</td><td>3.332</td></tr><tr><td>Mar</td><td>4.87</td><td>1.358</td><td>2.820</td><td>Mar</td><td>7.07</td><td>3.779</td><td>3.046</td><td>Mar</td><td>7.21</td><td>4.656</td><td>3.353</td></tr><tr><td>Apr</td><td>4.75</td><td>1.372</td><td>2.842</td><td>Apr</td><td>7.39</td><td>3.854</td><td>3.035</td><td>Apr</td><td>7.51</td><td>4.657</td><td>3.404</td></tr><tr><td>May</td><td>4.78</td><td>1.391</td><td>2.861</td><td>May</td><td>7.91</td><td>3.933</td><td>3.021</td><td>May</td><td>7.58</td><td>4.678</td><td>3.405</td></tr><tr><td>June</td><td>4.81</td><td>1.416</td><td>2.883</td><td>June</td><td>7.84</td><td>4.021</td><td>3.001</td><td>June</td><td>7.54</td><td>4.713</td><td>3.419</td></tr><tr><td>July</td><td>5.02</td><td>1.440</td><td>2.910</td><td>July</td><td>7.46</td><td>4.104</td><td>2.981</td><td>July</td><td>7.81</td><td>4.763</td><td>3.421</td></tr><tr><td>Aug</td><td>5.22</td><td>1.464</td><td>2.945</td><td>Aug</td><td>7.53</td><td>4.187</td><td>2.956</td><td>Aug</td><td>8.04</td><td>4.827</td><td>3.401</td></tr><tr><td>Sept</td><td>5.18</td><td>1.487</td><td>2.982</td><td>Sept</td><td>7.39</td><td>4.264</td><td>2.938</td><td>Sept</td><td>8.04</td><td>4.898</td><td>3.346</td></tr><tr><td>Oct</td><td>5.01</td><td>1.532</td><td>2.997</td><td>Oct</td><td>7.33</td><td>4.345</td><td>2.901</td><td>Oct</td><td>7.9</td><td>4.975</td><td>3.271</td></tr><tr><td>Nov</td><td>5.16</td><td>1.566</td><td>3.022</td><td>Nov</td><td>6.84</td><td>4.436</td><td>2.843</td><td>Nov</td><td>7.68</td><td>5.063</td><td>3.176</td></tr><tr><td>Dec</td><td>4.84</td><td>1.594</td><td>3.050</td><td>Dec</td><td>6.39</td><td>4.520</td><td>2.780</td><td>Dec</td><td>7.43</td><td>5.154</td><td>3.086</td></tr><tr><td>1967</td><td></td><td></td><td></td><td>1971</td><td></td><td></td><td></td><td>1975</td><td></td><td></td><td></td></tr><tr><td>Jan</td><td>4.58</td><td>1.633</td><td>3.047</td><td>Jan</td><td>6.24</td><td>4.605</td><td>2.703</td><td>Jan</td><td>7.5</td><td>5.243</td><td>2.962</td></tr><tr><td>Feb</td><td>4.63</td><td>1.667</td><td>3.050</td><td>Feb</td><td>6.11</td><td>4.680</td><td>2.627</td><td>Feb</td><td>7.39</td><td>5.343</td><td>2.827</td></tr><tr><td>Mar</td><td>4.54</td><td>1.706</td><td>3.039</td><td>Mar</td><td>5.70</td><td>4.741</td><td>2.565</td><td>Mar</td><td>7.73</td><td>5.431</td><td>2.710</td></tr><tr><td>Apr</td><td>4.59</td><td>1.739</td><td>3.027</td><td>Apr</td><td>5.83</td><td>4.793</td><td>2.522</td><td>Apr</td><td>8.23</td><td>5.518</td><td>2.595</td></tr><tr><td>May</td><td>4.85</td><td>1.767</td><td>3.021</td><td>May</td><td>6.39</td><td>4.844</td><td>2.501</td><td>May</td><td>8.06</td><td>5.585</td><td>2.477</td></tr><tr><td>June</td><td>5.02</td><td>1.801</td><td>3.015</td><td>June</td><td>6.52</td><td>4.885</td><td>2.467</td><td>June</td><td>7.86</td><td>5.639</td><td>2.384</td></tr><tr><td>July</td><td>5.16</td><td>1.834</td><td>3.004</td><td>July</td><td>6.73</td><td>4.921</td><td>2.436</td><td>July</td><td>8.06</td><td>5.687</td><td>2.311</td></tr><tr><td>Aug</td><td>5.28</td><td>1.871</td><td>2.987</td><td>Aug</td><td>6.58</td><td>4.947</td><td>2.450</td><td>Aug</td><td>8.4</td><td>5.716</td><td>2.271</td></tr><tr><td>Sept</td><td>5.3</td><td>1.909</td><td>2.980</td><td>Sept</td><td>6.14</td><td>4.964</td><td>2.442</td><td>Sept</td><td>8.43</td><td>5.738</td><td>2.241</td></tr><tr><td>Oct</td><td>5.48</td><td>1.942</td><td>2.975</td><td>Oct</td><td>5.93</td><td>4.968</td><td>2.422</td><td>Oct</td><td>8.15</td><td>5.753</td><td>2.210</td></tr><tr><td>Nov</td><td>5.75</td><td>1.985</td><td>2.974</td><td>Nov</td><td>5.81</td><td>4.968</td><td>2.411</td><td>Nov</td><td>8.05</td><td>5.759</td><td>2.200</td></tr><tr><td>Dec</td><td>5.7</td><td>2.027</td><td>2.972</td><td>Dec</td><td>5.93</td><td>4.964</td><td>2.404</td><td>Dec</td><td>8</td><td>5.761</td><td>2.186</td></tr><tr><td>1968</td><td></td><td></td><td></td><td>1972</td><td></td><td></td><td></td><td>1976</td><td></td><td></td><td></td></tr><tr><td>Jan</td><td>5.53</td><td>2.074</td><td>2.959</td><td>Jan</td><td>5.95</td><td>4.959</td><td>2.401</td><td>Jan</td><td>7.74</td><td>5.771</td><td>2.166</td></tr><tr><td>Feb</td><td>5.56</td><td>2.126</td><td>2.943</td><td>Feb</td><td>6.08</td><td>4.959</td><td>2.389</td><td>Feb</td><td>7.79</td><td>5.777</td><td>2.164</td></tr><tr><td>Mar</td><td>5.74</td><td>2.177</td><td>2.937</td><td>Mar</td><td>6.07</td><td>4.953</td><td>2.397</td><td>Mar</td><td>7.73</td><td>5.800</td><td>2.138</td></tr><tr><td>Apr</td><td>5.64</td><td>2.229</td><td>2.935</td><td>Apr</td><td>6.19</td><td>4.953</td><td>2.403</td><td>Apr</td><td>7.56</td><td>5.824</td><td>2.101</td></tr><tr><td>May</td><td>5.87</td><td>2.285</td><td>2.934</td><td>May</td><td>6.13</td><td>4.949</td><td>2.398</td><td>May</td><td>7.9</td><td>5.847</td><td>2.060</td></tr><tr><td>June</td><td>5.72</td><td>2.341</td><td>2.928</td><td>June</td><td>6.11</td><td>4.941</td><td>2.405</td><td>June</td><td>7.86</td><td>5.870</td><td>2.034</td></tr><tr><td>July</td><td>5.5</td><td>2.402</td><td>2.906</td><td>July</td><td>6.11</td><td>4.933</td><td>2.422</td><td>July</td><td>7.83</td><td>5.900</td><td>1.988</td></tr><tr><td>Aug</td><td>5.42</td><td>2.457</td><td>2.887</td><td>Aug</td><td>6.21</td><td>4.924</td><td>2.439</td><td>Aug</td><td>7.77</td><td>5.937</td><td>1.889</td></tr><tr><td>Sept</td><td>5.46</td><td>2.517</td><td>2.862</td><td>Sept</td><td>6.55</td><td>4.916</td><td>2.450</td><td>Sept</td><td>7.59</td><td>5.981</td><td>1.813</td></tr><tr><td>Oct</td><td>5.58</td><td>2.576</td><td>2.827</td><td>Oct</td><td>6.48</td><td>4.912</td><td>2.458</td><td>Oct</td><td>7.41</td><td>6.029</td><td>1.753</td></tr><tr><td>Nov</td><td>5.7</td><td>2.639</td><td>2.808</td><td>Nov</td><td>6.28</td><td>4.899</td><td>2.461</td><td>Nov</td><td>7.29</td><td>6.079</td><td>1.681</td></tr><tr><td>Dec</td><td>6.03</td><td>2.697</td><td>2.798</td><td>Dec</td><td>6.36</td><td>4.886</td><td>2.468</td><td>Dec</td><td>6.87</td><td>6.130</td><td>1.615</td></tr><tr><td>1969</td><td></td><td></td><td></td><td>1973</td><td></td><td></td><td></td><td>1977</td><td></td><td></td><td></td></tr><tr><td>Jan</td><td>6.04</td><td>2.745</td><td>2.811</td><td>Jan</td><td>6.46</td><td>4.865</td><td>2.509</td><td>Jan</td><td>7.21</td><td>6.176</td><td>1.573</td></tr><tr><td>Feb</td><td>6.19</td><td>2.802</td><td>2.826</td><td>Feb</td><td>6.64</td><td>4.838</td><td>2.583</td><td>Feb</td><td>7.39</td><td>6.224</td><td>1.527</td></tr><tr><td>Mar</td><td>6.3</td><td>2.869</td><td>2.830</td><td>Mar</td><td>6.71</td><td>4.818</td><td>2.641</td><td>Mar</td><td>7.46</td><td>6.272</td><td>1.474</td></tr><tr><td>Apr</td><td>6.17</td><td>2.945</td><td>2.827</td><td>Apr</td><td>6.67</td><td>4.795</td><td>2.690</td><td>Apr</td><td>7.37</td><td>6.323</td><td>1.427</td></tr><tr><td>May</td><td>6.32</td><td>3.016</td><td>2.862</td><td>May</td><td>6.85</td><td>4.776</td><td>2.734</td><td>May</td><td>7.46</td><td>6.377</td><td>1.397</td></tr><tr><td>June</td><td>6.57</td><td>3.086</td><td>2.895</td><td>June</td><td>6.90</td><td>4.752</td><td>2.795</td><td>June</td><td>7.28</td><td>6.441</td><td>1.340</td></tr><tr><td>July</td><td>6.72</td><td>3.156</td><td>2.929</td><td>July</td><td>7.13</td><td>4.723</td><td>2.909</td><td>July</td><td>7.33</td><td>6.499</td><td>1.293</td></tr><tr><td>Aug</td><td>6.69</td><td>3.236</td><td>2.967</td><td>Aug</td><td>7.40</td><td>4.699</td><td>3.023</td><td>Aug</td><td>7.4</td><td>6.552</td><td>1.252</td></tr><tr><td>Sept</td><td>7.16</td><td>3.315</td><td>3.001</td><td>Sept</td><td>7.09</td><td>4.682</td><td>3.110</td><td>Sept</td><td>7.34</td><td>6.605</td><td>1.217</td></tr><tr><td>Oct</td><td>7.1</td><td>3.393</td><td>3.014</td><td>Oct</td><td>6.79</td><td>4.668</td><td>3.185</td><td>Oct</td><td>7.52</td><td>6.654</td><td>1.193</td></tr><tr><td>Nov</td><td>7.14</td><td>3.461</td><td>3.045</td><td>Nov</td><td>6.73</td><td>4.657</td><td>3.254</td><td>Nov</td><td>7.58</td><td>6.710</td><td>1.154</td></tr><tr><td>Dec</td><td>7.65</td><td>3.539</td><td>3.059</td><td>Dec</td><td>6.74</td><td>4.651</td><td>3.312</td><td>Dec</td><td>7.69</td><td>6.768</td><td>1.119</td></tr></table>

Table 5 (Continued)

<table><tr><td>Date</td><td>10-Yr. Trea. Yield</td><td>Exp. Infl.</td><td>Real Rate</td><td>Date</td><td>10-Yr. Trea. Yield</td><td>Exp. Infl.</td><td>Real Rate</td><td>Date</td><td>10-Yr. Trea. Yield</td><td>Exp. Infl.</td><td>Real Rate</td></tr><tr><td>1978</td><td></td><td></td><td></td><td>1982</td><td></td><td></td><td></td><td>1986</td><td></td><td></td><td></td></tr><tr><td>Jan</td><td>7.96</td><td>6.832</td><td>1.068</td><td>Jan</td><td>14.59</td><td>9.285</td><td>2.497</td><td>Jan</td><td>9.19</td><td>6.154</td><td>5.284</td></tr><tr><td>Feb</td><td>8.03</td><td>6.890</td><td>0.995</td><td>Feb</td><td>14.43</td><td>9.334</td><td>2.612</td><td>Feb</td><td>8.7</td><td>6.043</td><td>5.249</td></tr><tr><td>Mar</td><td>8.04</td><td>6.942</td><td>0.923</td><td>Mar</td><td>13.86</td><td>9.375</td><td>2.741</td><td>Mar</td><td>7.78</td><td>5.946</td><td>5.225</td></tr><tr><td>Apr</td><td>8.15</td><td>7.003</td><td>0.854</td><td>Apr</td><td>13.87</td><td>9.417</td><td>2.860</td><td>Apr</td><td>7.3</td><td>5.858</td><td>5.143</td></tr><tr><td>May</td><td>8.35</td><td>7.063</td><td>0.784</td><td>May</td><td>13.62</td><td>9.456</td><td>2.958</td><td>May</td><td>7.71</td><td>5.763</td><td>5.055</td></tr><tr><td>June</td><td>8.46</td><td>7.124</td><td>0.716</td><td>June</td><td>14.3</td><td>9.487</td><td>3.095</td><td>June</td><td>7.8</td><td>5.673</td><td>4.965</td></tr><tr><td>July</td><td>8.64</td><td>7.191</td><td>0.598</td><td>July</td><td>13.95</td><td>9.510</td><td>3.183</td><td>July</td><td>7.3</td><td>5.554</td><td>4.878</td></tr><tr><td>Aug</td><td>8.41</td><td>7.263</td><td>0.482</td><td>Aug</td><td>13.06</td><td>9.524</td><td>3.259</td><td>Aug</td><td>7.17</td><td>5.428</td><td>4.789</td></tr><tr><td>Sept</td><td>8.42</td><td>7.331</td><td>0.397</td><td>Sept</td><td>12.34</td><td>9.519</td><td>3.321</td><td>Sept</td><td>7.45</td><td>5.301</td><td>4.719</td></tr><tr><td>Oct</td><td>8.64</td><td>7.400</td><td>0.365</td><td>Oct</td><td>10.91</td><td>9.517</td><td>3.363</td><td>Oct</td><td>7.43</td><td>5.186</td><td>4.671</td></tr><tr><td>Nov</td><td>8.81</td><td>7.463</td><td>0.322</td><td>Nov</td><td>10.55</td><td>9.502</td><td>3.427</td><td>Nov</td><td>7.25</td><td>5.078</td><td>4.680</td></tr><tr><td>Dec</td><td>9.01</td><td>7.525</td><td>0.284</td><td>Dec</td><td>10.54</td><td>9.469</td><td>3.492</td><td>Dec</td><td>7.11</td><td>4.982</td><td>4.655</td></tr><tr><td>1979</td><td></td><td></td><td></td><td>1983</td><td></td><td></td><td></td><td>1987</td><td></td><td></td><td></td></tr><tr><td>Jan</td><td>9.1</td><td>7.582</td><td>0.254</td><td>Jan</td><td>10.46</td><td>9.439</td><td>3.553</td><td>Jan</td><td>7.08</td><td>4.887</td><td>4.607</td></tr><tr><td>Feb</td><td>9.1</td><td>7.645</td><td>0.224</td><td>Feb</td><td>10.72</td><td>9.411</td><td>3.604</td><td>Feb</td><td>7.25</td><td>4.793</td><td>4.558</td></tr><tr><td>Mar</td><td>9.12</td><td>7.706</td><td>0.174</td><td>Mar</td><td>10.51</td><td>9.381</td><td>3.670</td><td>Mar</td><td>7.25</td><td>4.710</td><td>4.493</td></tr><tr><td>Apr</td><td>9.18</td><td>7.758</td><td>0.108</td><td>Apr</td><td>10.4</td><td>9.340</td><td>3.730</td><td>Apr</td><td>8.02</td><td>4.627</td><td>4.445</td></tr><tr><td>May</td><td>9.25</td><td>7.797</td><td>0.047</td><td>May</td><td>10.38</td><td>9.288</td><td>3.806</td><td>May</td><td>8.61</td><td>4.551</td><td>4.404</td></tr><tr><td>June</td><td>8.91</td><td>7.821</td><td>-0.025</td><td>June</td><td>10.85</td><td>9.227</td><td>3.883</td><td>June</td><td>8.4</td><td>4.476</td><td>4.335</td></tr><tr><td>July</td><td>8.95</td><td>7.834</td><td>-0.075</td><td>July</td><td>11.38</td><td>9.161</td><td>3.981</td><td>July</td><td>8.45</td><td>4.413</td><td>4.296</td></tr><tr><td>Aug</td><td>9.03</td><td>7.837</td><td>-0.101</td><td>Aug</td><td>11.85</td><td>9.087</td><td>4.076</td><td>Aug</td><td>8.76</td><td>4.361</td><td>4.273</td></tr><tr><td>Sept</td><td>9.33</td><td>7.831</td><td>-0.085</td><td>Sept</td><td>11.65</td><td>9.012</td><td>4.152</td><td>Sept</td><td>9.42</td><td>4.330</td><td>4.269</td></tr><tr><td>Oct</td><td>10.3</td><td>7.823</td><td>0.011</td><td>Oct</td><td>11.54</td><td>8.932</td><td>4.204</td><td>Oct</td><td>9.52</td><td>4.302</td><td>4.259</td></tr><tr><td>Nov</td><td>10.65</td><td>7.818</td><td>0.079</td><td>Nov</td><td>11.69</td><td>8.862</td><td>4.243</td><td>Nov</td><td>8.86</td><td>4.285</td><td>4.243</td></tr><tr><td>Dec</td><td>10.39</td><td>7.818</td><td>0.154</td><td>Dec</td><td>11.83</td><td>8.800</td><td>4.276</td><td>Dec</td><td>8.99</td><td>4.279</td><td>4.218</td></tr><tr><td>1980</td><td></td><td></td><td></td><td>1984</td><td></td><td></td><td></td><td>1988</td><td></td><td></td><td></td></tr><tr><td>Jan</td><td>10.8</td><td>7.825</td><td>0.261</td><td>Jan</td><td>11.67</td><td>8.741</td><td>4.324</td><td>Jan</td><td>8.67</td><td>4.274</td><td>4.180</td></tr><tr><td>Feb</td><td>12.41</td><td>7.828</td><td>0.418</td><td>Feb</td><td>11.84</td><td>8.670</td><td>4.386</td><td>Feb</td><td>8.21</td><td>4.271</td><td>4.149</td></tr><tr><td>Mar</td><td>12.75</td><td>7.849</td><td>0.615</td><td>Mar</td><td>12.32</td><td>8.598</td><td>4.459</td><td>Mar</td><td>8.37</td><td>4.268</td><td>4.104</td></tr><tr><td>Apr</td><td>11.47</td><td>7.879</td><td>0.701</td><td>Apr</td><td>12.63</td><td>8.529</td><td>4.530</td><td>Apr</td><td>8.72</td><td>4.270</td><td>4.075</td></tr><tr><td>May</td><td>10.18</td><td>7.926</td><td>0.716</td><td>May</td><td>13.41</td><td>8.460</td><td>4.620</td><td>May</td><td>9.09</td><td>4.280</td><td>4.036</td></tr><tr><td>June</td><td>9.78</td><td>7.989</td><td>0.702</td><td>June</td><td>13.56</td><td>8.393</td><td>4.713</td><td>June</td><td>8.92</td><td>4.301</td><td>3.985</td></tr><tr><td>July</td><td>10.25</td><td>8.044</td><td>0.695</td><td>July</td><td>13.36</td><td>8.319</td><td>4.793</td><td>July</td><td>9.06</td><td>4.322</td><td>3.931</td></tr><tr><td>Aug</td><td>11.1</td><td>8.109</td><td>0.716</td><td>Aug</td><td>12.72</td><td>8.241</td><td>4.862</td><td>Aug</td><td>9.26</td><td>4.345</td><td>3.879</td></tr><tr><td>Sept</td><td>11.51</td><td>8.184</td><td>0.740</td><td>Sept</td><td>12.52</td><td>8.164</td><td>4.915</td><td>Sept</td><td>8.98</td><td>4.365</td><td>3.844</td></tr><tr><td>Oct</td><td>11.75</td><td>8.269</td><td>0.795</td><td>Oct</td><td>12.16</td><td>8.081</td><td>4.908</td><td>Oct</td><td>8.8</td><td>4.381</td><td>3.810</td></tr><tr><td>Nov</td><td>12.68</td><td>8.356</td><td>0.895</td><td>Nov</td><td>11.57</td><td>7.984</td><td>4.919</td><td>Nov</td><td>8.96</td><td>4.385</td><td>3.797</td></tr><tr><td>Dec</td><td>12.84</td><td>8.446</td><td>1.004</td><td>Dec</td><td>12.5</td><td>7.877</td><td>4.928</td><td>Dec</td><td>9.11</td><td>4.384</td><td>3.787</td></tr><tr><td>1981</td><td></td><td></td><td></td><td>1985</td><td></td><td></td><td></td><td>1989</td><td></td><td></td><td></td></tr><tr><td>Jan</td><td>12.57</td><td>8.520</td><td>1.132</td><td>Jan</td><td>11.38</td><td>7.753</td><td>4.955</td><td>Jan</td><td>9.09</td><td>4.377</td><td>3.786</td></tr><tr><td>Feb</td><td>13.19</td><td>8.594</td><td>1.242</td><td>Feb</td><td>11.51</td><td>7.632</td><td>4.950</td><td>Feb</td><td>9.17</td><td>4.374</td><td>3.792</td></tr><tr><td>Mar</td><td>13.12</td><td>8.649</td><td>1.336</td><td>Mar</td><td>11.86</td><td>7.501</td><td>4.900</td><td>Mar</td><td>9.36</td><td>4.367</td><td>3.791</td></tr><tr><td>Apr</td><td>13.68</td><td>8.700</td><td>1.477</td><td>Apr</td><td>11.43</td><td>7.359</td><td>4.954</td><td>Apr</td><td>9.18</td><td>4.356</td><td>3.784</td></tr><tr><td>May</td><td>14.1</td><td>8.751</td><td>1.619</td><td>May</td><td>10.85</td><td>7.215</td><td>5.063</td><td>May</td><td>8.86</td><td>4.344</td><td>3.758</td></tr><tr><td>June</td><td>13.47</td><td>8.802</td><td>1.755</td><td>June</td><td>10.16</td><td>7.062</td><td>5.183</td><td>June</td><td>8.28</td><td>4.331</td><td>3.723</td></tr><tr><td>July</td><td>14.28</td><td>8.877</td><td>1.897</td><td>July</td><td>10.31</td><td>6.925</td><td>5.293</td><td>July</td><td>8.02</td><td>4.320</td><td>3.679</td></tr><tr><td>Aug</td><td>14.94</td><td>8.956</td><td>2.037</td><td>Aug</td><td>10.33</td><td>6.798</td><td>5.346</td><td>Aug</td><td>8.11</td><td>4.306</td><td>3.644</td></tr><tr><td>Sept</td><td>15.32</td><td>9.039</td><td>2.155</td><td>Sept</td><td>10.37</td><td>6.664</td><td>5.383</td><td>Sept</td><td>8.19</td><td>4.287</td><td>3.623</td></tr><tr><td>Oct</td><td>15.15</td><td>9.110</td><td>2.256</td><td>Oct</td><td>10.24</td><td>6.528</td><td>5.399</td><td>Oct</td><td>8.01</td><td>4.273</td><td>3.614</td></tr><tr><td>Nov</td><td>13.39</td><td>9.175</td><td>2.305</td><td>Nov</td><td>9.78</td><td>6.399</td><td>5.360</td><td>Nov</td><td>7.87</td><td>4.266</td><td>3.609</td></tr><tr><td>Dec</td><td>13.72</td><td>9.232</td><td>2.392</td><td>Dec</td><td>9.26</td><td>6.269</td><td>5.326</td><td>Dec</td><td>7.84</td><td>4.258</td><td>3.611</td></tr></table>

(Continued)

Table 5 (Continued)

<table><tr><td>Date</td><td>10-Yr. Trea. Yield</td><td>Exp. Infl.</td><td>Real Rate</td><td>Date</td><td>10-Yr. Trea. Yield</td><td>Exp. Infl.</td><td>Real Rate</td><td>Date</td><td>10-Yr. Trea. Yield</td><td>Exp. Infl.</td></tr><tr><td>1990</td><td></td><td></td><td></td><td>1994</td><td></td><td></td><td></td><td>1998</td><td></td><td></td></tr><tr><td>Jan</td><td>8.418</td><td>4.257</td><td>3.610</td><td>Jan</td><td>5.642</td><td>4.256</td><td>1.739</td><td>Jan</td><td>5.505</td><td>2.828</td></tr><tr><td>Feb</td><td>8.515</td><td>4.254</td><td>3.595</td><td>Feb</td><td>6.129</td><td>4.224</td><td>1.663</td><td>Feb</td><td>5.622</td><td>2.806</td></tr><tr><td>Mar</td><td>8.628</td><td>4.254</td><td>3.585</td><td>Mar</td><td>6.738</td><td>4.195</td><td>1.586</td><td>Mar</td><td>5.654</td><td>2.787</td></tr><tr><td>Apr</td><td>9.022</td><td>4.260</td><td>3.580</td><td>Apr</td><td>7.042</td><td>4.166</td><td>1.523</td><td>Apr</td><td>5.671</td><td>2.765</td></tr><tr><td>May</td><td>8.599</td><td>4.264</td><td>3.586</td><td>May</td><td>7.147</td><td>4.135</td><td>1.473</td><td>May</td><td>5.552</td><td>2.744</td></tr><tr><td>June</td><td>8.412</td><td>4.272</td><td>3.589</td><td>June</td><td>7.32</td><td>4.106</td><td>1.427</td><td>June</td><td>5.446</td><td>2.725</td></tr><tr><td>July</td><td>8.341</td><td>4.287</td><td>3.568</td><td>July</td><td>7.111</td><td>4.079</td><td>1.394</td><td>July</td><td>5.494</td><td>2.709</td></tr><tr><td>Aug</td><td>8.846</td><td>4.309</td><td>3.546</td><td>Aug</td><td>7.173</td><td>4.052</td><td>1.356</td><td>Aug</td><td>4.976</td><td>2.695</td></tr><tr><td>Sept</td><td>8.795</td><td>4.335</td><td>3.523</td><td>Sept</td><td>7.603</td><td>4.032</td><td>1.315</td><td>Sept</td><td>4.42</td><td>2.680</td></tr><tr><td>Oct</td><td>8.617</td><td>4.357</td><td>3.503</td><td>Oct</td><td>7.807</td><td>4.008</td><td>1.289</td><td>Oct</td><td>4.605</td><td>2.666</td></tr><tr><td>Nov</td><td>8.252</td><td>4.371</td><td>3.493</td><td>Nov</td><td>7.906</td><td>3.982</td><td>1.278</td><td>Nov</td><td>4.714</td><td>2.653</td></tr><tr><td>Dec</td><td>8.067</td><td>4.388</td><td>3.471</td><td>Dec</td><td>7.822</td><td>3.951</td><td>1.278</td><td>Dec</td><td>4.648</td><td>2.641</td></tr><tr><td>1991</td><td></td><td></td><td></td><td>1995</td><td></td><td></td><td></td><td>1999</td><td></td><td></td></tr><tr><td>Jan</td><td>8.007</td><td>4.407</td><td>3.436</td><td>Jan</td><td>7.581</td><td>3.926</td><td>1.269</td><td>Jan</td><td>4.651</td><td>2.631</td></tr><tr><td>Feb</td><td>8.033</td><td>4.431</td><td>3.396</td><td>Feb</td><td>7.201</td><td>3.899</td><td>1.261</td><td>Feb</td><td>5.287</td><td>2.621</td></tr><tr><td>Mar</td><td>8.061</td><td>4.451</td><td>3.360</td><td>Mar</td><td>7.196</td><td>3.869</td><td>1.253</td><td>Mar</td><td>5.242</td><td>2.605</td></tr><tr><td>Apr</td><td>8.013</td><td>4.467</td><td>3.331</td><td>Apr</td><td>7.055</td><td>3.840</td><td>1.240</td><td>Apr</td><td>5.348</td><td>2.596</td></tr><tr><td>May</td><td>8.059</td><td>4.487</td><td>3.294</td><td>May</td><td>6.284</td><td>3.812</td><td>1.230</td><td>May</td><td>5.622</td><td>2.586</td></tr><tr><td>June</td><td>8.227</td><td>4.504</td><td>3.267</td><td>June</td><td>6.203</td><td>3.781</td><td>1.222</td><td>June</td><td>5.78</td><td>2.572</td></tr><tr><td>July</td><td>8.147</td><td>4.517</td><td>3.247</td><td>July</td><td>6.426</td><td>3.746</td><td>1.223</td><td>July</td><td>5.903</td><td>2.558</td></tr><tr><td>Aug</td><td>7.816</td><td>4.527</td><td>3.237</td><td>Aug</td><td>6.284</td><td>3.704</td><td>1.228</td><td>Aug</td><td>5.97</td><td>2.543</td></tr><tr><td>Sept</td><td>7.445</td><td>4.534</td><td>3.223</td><td>Sept</td><td>6.182</td><td>3.662</td><td>1.232</td><td>Sept</td><td>5.877</td><td>2.527</td></tr><tr><td>Oct</td><td>7.46</td><td>4.540</td><td>3.207</td><td>Oct</td><td>6.02</td><td>3.624</td><td>1.234</td><td>Oct</td><td>6.024</td><td>2.515</td></tr><tr><td>Nov</td><td>7.376</td><td>4.552</td><td>3.177</td><td>Nov</td><td>5.741</td><td>3.587</td><td>1.229</td><td>Nov</td><td>6.191</td><td>2.502</td></tr><tr><td>Dec</td><td>6.699</td><td>4.562</td><td>3.133</td><td>Dec</td><td>5.572</td><td>3.549</td><td>1.234</td><td>Dec</td><td>6.442</td><td>2.490</td></tr><tr><td>1992</td><td></td><td></td><td></td><td>1996</td><td></td><td></td><td></td><td>2000</td><td></td><td></td></tr><tr><td>Jan</td><td>7.274</td><td>4.569</td><td>3.092</td><td>Jan</td><td>5.58</td><td>3.505</td><td>1.250</td><td>Jan</td><td>6.665</td><td>2.477</td></tr><tr><td>Feb</td><td>7.25</td><td>4.572</td><td>3.054</td><td>Feb</td><td>6.098</td><td>3.458</td><td>1.270</td><td>Feb</td><td>6.409</td><td>2.464</td></tr><tr><td>Mar</td><td>7.528</td><td>4.575</td><td>3.014</td><td>Mar</td><td>6.327</td><td>3.418</td><td>1.295</td><td>Mar</td><td>6.004</td><td>2.455</td></tr><tr><td>Apr</td><td>7.583</td><td>4.574</td><td>2.965</td><td>Apr</td><td>6.67</td><td>3.376</td><td>1.328</td><td>Apr</td><td>6.212</td><td>2.440</td></tr><tr><td>May</td><td>7.318</td><td>4.571</td><td>2.913</td><td>May</td><td>6.852</td><td>3.335</td><td>1.359</td><td>May</td><td>6.272</td><td>2.429</td></tr><tr><td>June</td><td>7.121</td><td>4.567</td><td>2.864</td><td>June</td><td>6.711</td><td>3.297</td><td>1.387</td><td>June</td><td>6.031</td><td>2.421</td></tr><tr><td>July</td><td>6.709</td><td>4.563</td><td>2.810</td><td>July</td><td>6.794</td><td>3.261</td><td>1.417</td><td>July</td><td>6.031</td><td>2.412</td></tr><tr><td>Aug</td><td>6.604</td><td>4.556</td><td>2.757</td><td>Aug</td><td>6.943</td><td>3.228</td><td>1.449</td><td>Aug</td><td>5.725</td><td>2.406</td></tr><tr><td>Sept</td><td>6.354</td><td>4.544</td><td>2.682</td><td>Sept</td><td>6.703</td><td>3.195</td><td>1.481</td><td>Sept</td><td>5.802</td><td>2.398</td></tr><tr><td>Oct</td><td>6.789</td><td>4.533</td><td>2.624</td><td>Oct</td><td>6.339</td><td>3.163</td><td>1.516</td><td>Oct</td><td>5.751</td><td>2.389</td></tr><tr><td>Nov</td><td>6.937</td><td>4.522</td><td>2.571</td><td>Nov</td><td>6.044</td><td>3.131</td><td>1.558</td><td>Nov</td><td>5.468</td><td>2.382</td></tr><tr><td>Dec</td><td>6.686</td><td>4.509</td><td>2.518</td><td>Dec</td><td>6.418</td><td>3.102</td><td>1.608</td><td>Dec</td><td>5.112</td><td>2.374</td></tr><tr><td>1993</td><td></td><td></td><td></td><td>1997</td><td></td><td></td><td></td><td>2001</td><td></td><td></td></tr><tr><td>Jan</td><td>6.359</td><td>4.495</td><td>2.474</td><td>Jan</td><td>6.494</td><td>3.077</td><td>1.656</td><td>Jan</td><td>5.114</td><td>2.368</td></tr><tr><td>Feb</td><td>6.02</td><td>4.482</td><td>2.427</td><td>Feb</td><td>6.552</td><td>3.057</td><td>1.698</td><td>Feb</td><td>4.896</td><td>2.366</td></tr><tr><td>Mar</td><td>6.024</td><td>4.466</td><td>2.385</td><td>Mar</td><td>6.903</td><td>3.033</td><td>1.746</td><td>Mar</td><td>4.917</td><td>2.364</td></tr><tr><td>Apr</td><td>6.009</td><td>4.453</td><td>2.330</td><td>Apr</td><td>6.718</td><td>3.013</td><td>1.795</td><td>Apr</td><td>5.338</td><td>2.364</td></tr><tr><td>May</td><td>6.149</td><td>4.439</td><td>2.272</td><td>May</td><td>6.659</td><td>2.990</td><td>1.847</td><td>May</td><td>5.381</td><td>2.362</td></tr><tr><td>June</td><td>5.776</td><td>4.420</td><td>2.214</td><td>June</td><td>6.5</td><td>2.968</td><td>1.899</td><td>June</td><td>5.412</td><td>2.363</td></tr><tr><td>July</td><td>5.807</td><td>4.399</td><td>2.152</td><td>July</td><td>6.011</td><td>2.947</td><td>1.959</td><td>July</td><td>5.054</td><td>2.363</td></tr><tr><td>Aug</td><td>5.448</td><td>4.380</td><td>2.084</td><td>Aug</td><td>6.339</td><td>2.926</td><td>2.016</td><td>Aug</td><td>4.832</td><td>2.365</td></tr><tr><td>Sept</td><td>5.382</td><td>4.357</td><td>2.020</td><td>Sept</td><td>6.103</td><td>2.909</td><td>2.078</td><td>Sept</td><td>4.588</td><td>2.365</td></tr><tr><td>Oct</td><td>5.427</td><td>4.333</td><td>1.958</td><td>Oct</td><td>5.831</td><td>2.888</td><td>2.136</td><td>Oct</td><td>4.232</td><td>2.366</td></tr><tr><td>Nov</td><td>5.819</td><td>4.309</td><td>1.885</td><td>Nov</td><td>5.874</td><td>2.866</td><td>2.189</td><td>Nov</td><td>4.752</td><td>2.368</td></tr><tr><td>Dec</td><td>5.794</td><td>4.284</td><td>1.812</td><td>Dec</td><td>5.742</td><td>2.847</td><td>2.247</td><td>Dec</td><td>5.051</td><td>2.370</td></tr></table>

Table 5 (Continued)

<table><tr><td>Date</td><td>10-Yr. Trea. Yield</td><td>Exp. Infl.</td><td>Real Rate</td><td>Date</td><td>10-Yr. Trea. Yield</td><td>Exp. Infl.</td><td>Real Rate</td></tr><tr><td>2002</td><td></td><td></td><td></td><td>2004</td><td></td><td></td><td></td></tr><tr><td>Jan</td><td>5.033</td><td>2.372</td><td>2.950</td><td>Jan</td><td>4.134</td><td>2.172</td><td>1.492</td></tr><tr><td>Feb</td><td>4.877</td><td>2.372</td><td>2.888</td><td>Feb</td><td>3.973</td><td>2.157</td><td>1.442</td></tr><tr><td>Mar</td><td>5.396</td><td>2.371</td><td>2.827</td><td>Mar</td><td>3.837</td><td>2.149</td><td>1.385</td></tr><tr><td>Apr</td><td>5.087</td><td>2.369</td><td>2.764</td><td>Apr</td><td>4.507</td><td>2.142</td><td>1.329</td></tr><tr><td>May</td><td>5.045</td><td>2.369</td><td>2.699</td><td>May</td><td>4.649</td><td>2.136</td><td>1.273</td></tr><tr><td>June</td><td>4.799</td><td>2.367</td><td>2.636</td><td>June</td><td>4.583</td><td>2.134</td><td>1.212</td></tr><tr><td>July</td><td>4.461</td><td>2.363</td><td>2.575</td><td>July</td><td>4.477</td><td>2.129</td><td>1.156</td></tr><tr><td>Aug</td><td>4.143</td><td>2.364</td><td>2.509</td><td>Aug</td><td>4.119</td><td>2.126</td><td>1.097</td></tr><tr><td>Sept</td><td>3.596</td><td>2.365</td><td>2.441</td><td>Sept</td><td>4.121</td><td>2.124</td><td>1.031</td></tr><tr><td>Oct</td><td>3.894</td><td>2.365</td><td>2.374</td><td>Oct</td><td>4.025</td><td>2.122</td><td>0.966</td></tr><tr><td>Nov</td><td>4.207</td><td>2.362</td><td>2.302</td><td>Nov</td><td>4.351</td><td>2.124</td><td>0.903</td></tr><tr><td>Dec</td><td>3.816</td><td>2.357</td><td>2.234</td><td>Dec</td><td>4.22</td><td>2.129</td><td>0.840</td></tr><tr><td>2003</td><td></td><td></td><td></td><td>2005</td><td></td><td></td><td></td></tr><tr><td>Jan</td><td>3.964</td><td>2.351</td><td>2.168</td><td>Jan</td><td>4.13</td><td>2.131</td><td>0.783</td></tr><tr><td>Feb</td><td>3.692</td><td>2.343</td><td>2.104</td><td>Feb</td><td>4.379</td><td>2.133</td><td>0.727</td></tr><tr><td>Mar</td><td>3.798</td><td>2.334</td><td>2.038</td><td>Mar</td><td>4.483</td><td>2.132</td><td>0.676</td></tr><tr><td>Apr</td><td>3.838</td><td>2.323</td><td>1.976</td><td>Apr</td><td>4.2</td><td>2.131</td><td>0.622</td></tr><tr><td>May</td><td>3.372</td><td>2.312</td><td>1.913</td><td>May</td><td>3.983</td><td>2.127</td><td>0.567</td></tr><tr><td>June</td><td>3.515</td><td>2.300</td><td>1.850</td><td>June</td><td>3.915</td><td>2.120</td><td>0.520</td></tr><tr><td>July</td><td>4.408</td><td>2.288</td><td>1.786</td><td>July</td><td>4.278</td><td>2.114</td><td>0.476</td></tr><tr><td>Aug</td><td>4.466</td><td>2.267</td><td>1.731</td><td>Aug</td><td>4.016</td><td>2.107</td><td>0.436</td></tr><tr><td>Sept</td><td>3.939</td><td>2.248</td><td>1.681</td><td>Sept</td><td>4.326</td><td>2.098</td><td>0.399</td></tr><tr><td>Oct</td><td>4.295</td><td>2.233</td><td>1.629</td><td>Oct</td><td>4.553</td><td>2.089</td><td>0.366</td></tr><tr><td>Nov</td><td>4.334</td><td>2.213</td><td>1.581</td><td>Nov</td><td>4.486</td><td>2.081</td><td>0.336</td></tr><tr><td>Dec</td><td>4.248</td><td>2.191</td><td>1.537</td><td>Dec</td><td>4.393</td><td>2.075</td><td>0.311</td></tr></table>

Note: Expected Infl.  $(\%)$  = expected rate of inflation as proxied by the 5-year moving average of the actual inflation rate. Real Rate  $(\%)$  = real rate of interest as proxied by the 5-year moving average of the interest rate on 3-month certificates of deposit.

Table 6 Results of Regression for Forecasting 10-Year Treasury Yield

<table><tr><td colspan="6">Regression Statistics</td></tr><tr><td>Multiple R2</td><td>0.908318</td><td></td><td></td><td></td><td></td></tr><tr><td>R2</td><td>0.825042</td><td></td><td></td><td></td><td></td></tr><tr><td>Adjusted R2</td><td>0.824312</td><td></td><td></td><td></td><td></td></tr><tr><td>Standard Error</td><td>1.033764</td><td></td><td></td><td></td><td></td></tr><tr><td>Observations</td><td>482</td><td></td><td></td><td></td><td></td></tr><tr><td colspan="6">Analysis of Variance</td></tr><tr><td></td><td>df</td><td>SS</td><td>MS</td><td>F</td><td>Significance F</td></tr><tr><td>Regression</td><td>2</td><td>2413.914</td><td>1206.957</td><td>1129.404</td><td>4.8E-182</td></tr><tr><td>Residual</td><td>479</td><td>511.8918</td><td>1.068668</td><td></td><td></td></tr><tr><td>Total</td><td>481</td><td>2925.806</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td>Coefficients</td><td>Standard Error</td><td>t</td><td>Statistics p-value</td></tr><tr><td>Intercept</td><td></td><td>1.89674</td><td>0.147593</td><td>12.85118</td><td>1.1E-32</td></tr><tr><td>Expected Inflation</td><td></td><td>0.996937</td><td>0.021558</td><td>46.24522</td><td>9.1E-179</td></tr><tr><td>Real Rate</td><td></td><td>0.352416</td><td>0.039058</td><td>9.022903</td><td>4.45E-18</td></tr></table> are positive (as would be predicted by economic theory) and highly significant.


# NONNORMALITY AND AUTOCORRELATION OF THE RESIDUALS

In the above discussion we assumed that there is no correlation between the residual terms. Let's now relax these assumptions. The correlation of the residuals is critical from the point of view of estimation. Autocorrelation of residuals is quite common in financial estimation where we regress quantities that are time series.

A time series is said to be autocorrelated if each term is correlated with its predecessor so that the variance of each term is partially explained by regressing each term on its predecessor.

Recall from the previous section that we organized regressor data in a matrix called the design matrix. Suppose that both regressors and the variable  $Y$  are time series data, that is, every row of the design matrix corresponds to a moment in time. The regression equation is written as follows:

$$
\mathbf {Y} = \mathbf {X} \boldsymbol {\beta} + \varepsilon
$$

Suppose that residuals are correlated. This means that in general  $E[\varepsilon_i\varepsilon_j] = \sigma_{ij} \neq 0$ . Thus the variance-covariance matrix of the residuals  $\{\sigma_{ij}\}$  will not be a diagonal matrix as in the case of uncorrelated residuals, but will exhibit nonzero off-diagonal terms. We assume that we can write

$$
\{\sigma_{i j} \} = \sigma^{2} \pmb {\Omega}
$$ where  $\Omega$  is a positive definite symmetric matrix and  $\sigma$  is a parameter to be estimated.


If residuals are correlated, the regression parameters can still be estimated without biases using the formula given by (26). However, this estimate will not be optimal in the sense that there are other estimators with lower variance of the sampling distribution. An optimal linear unbiased estimator has been derived. It is called Aitken's generalized least squares (GLS) estimator and is given by


$$
\hat {\beta} = \left(\mathbf {X}^{\prime} \boldsymbol {\Omega}^{- 1} \mathbf {X}\right)^{- 1} \mathbf {X}^{\prime} \boldsymbol {\Omega}^{- 1} \mathbf {Y} \tag {36}
$$ where  $\Omega$  is the residual correlation matrix.


The GLS estimators vary with the sampling distribution. It can also be demonstrated that the variance of the GLS estimator is also given by the following "sandwich" formula:

$$
V (\hat {\boldsymbol {\beta}}) = E \left(\left(\boldsymbol {\beta} - \hat {\boldsymbol {\beta}}\right) \left(\boldsymbol {\beta} - \hat {\boldsymbol {\beta}}\right)^{\prime}\right) = \sigma^{2} \left(\mathbf {X}^{\prime} \boldsymbol {\Omega}^{- 1} \mathbf {X}\right)^{- 1} \tag {37}
$$

This expression is similar to equation (28) with the exception of the sandwiched term  $\Omega^{-1}$ . Unfortunately, (37) cannot be estimated without first knowing the regression coefficients. For this reason, in the presence of correlation of residuals, it is common practice to replace static regression models with models that explicitly capture autocorrelations and produce uncorrelated residuals.

The key idea here is that autocorrelated residuals signal that the modeling exercise has not been completed. If residuals are autocorrelated, this signifies that the residuals at a generic time  $t$  can be predicted from residuals at an earlier time. For example, suppose that we are linearly regressing a time series of returns  $r_t$  on  $N$  factors:

$$ r_{t} = \alpha_{1} f_{1, t - 1} + \dots + \alpha_{N} f_{N, t - 1} + \varepsilon_{t}
$$

Suppose that the residual terms  $\varepsilon_{t}$  are autocorrelated and that we can write regressions of the type

$$
\varepsilon_{t} = \varphi \varepsilon_{t - 1} + \eta_{t}
$$ where  $\eta_t$  are now uncorrelated variables. If we ignore this autocorrelation, valuable forecasting information is lost. Our initial model has to be replaced with the following model:


$$ r_{t} = \alpha_{1} f_{1, t - 1} + \dots + \alpha_{N} f_{N, t - 1} + \varepsilon_{t}
$$

$$
\varepsilon_{t} = \varphi \varepsilon_{t - 1} + \eta_{t}
$$ with the initial conditions  $\varepsilon_0$


# Detecting Autocorrelation

How do we detect the autocorrelation of residuals? Suppose that we believe that there is a reasonable linear relationship between two variables, for instance stock returns and some fundamental variable. We then perform a linear regression between the two variables and estimate regression parameters using the OLS method. After estimating the regression parameters, we can compute the sequence of residuals. At this point, we can apply tests such as the Durbin-Watson test or the Dickey-Fuller test to gauge the autocorrelation of residuals. If residuals are auto-correlated, we should modify the model.

# PITFALLS OF REGRESSIONS

It is important to understand when regressions are correctly applicable and when they are not. In addition to the autocorrelation of residuals, there are other situations where it would be inappropriate to use regressions. In particular, we analyze the following cases, which represent possible pitfalls of regressions:

- Spurious regressions with integrated variables
Collinearity
- Increasing the number of regressors

# Spurious Regressions

The phenomenon of spurious regressions, observed by Yule in 1927, led to the study of cointegration. We encounter spurious regressions when we perform an apparently meaningful regression between variables that are independent. A typical case is a regression between two independent random walks. Regressing two independent random walks, one might find very high values of  $R^2$  even if the two processes are independent. More in general, one might find high values of  $R^2$  in the regression of two or more integrated variables, even if residuals are highly correlated.

Testing for regressions implies testing for cointegration. Anticipating what will be discussed there, it is always meaningful to perform regressions between stationary variables. When variables are integrated, regressions are possible only if variables are cointegrated. This means that residuals are a stationary (though possibly autocorrelated) process. As a rule of thumb, Granger and Newbold (1974) observe that if the  $R^2$  is greater than the Durbin-Watson statistics, it is appropriate to investigate if correlations are spurious.

# Collinearity

Collinearity, also referred to as multicollinearity, occurs when two or more regressors have a linear deterministic relationship. For example, there is collinearity if the design matrix

$$
\mathbf {X} = \left( \begin{array}{c c c} X_{1 1} & \dots & X_{N 1} \\ \vdots & \ddots & \vdots \\ X_{1 T} & \dots & X_{N T} \end{array} \right)
$$ exhibits two or more columns that are perfectly proportional. Collinearity is essentially a numerical problem. Intuitively, it is clear that it creates indeterminacy as we are regressing twice on the same variable. In particular, the standard estimators given by (26) and (27) cannot be used because the relative formulas become meaningless.


In principle, collinearity can be easily resolved by eliminating one or more regressors. The problem with collinearity is that some variables might be very close to collinearity, thus leading to numerical problems and indeterminacy of results. In practice, this might happen for many different numerical artifacts. Detecting and analyzing collinearity is a rather delicate problem. In principle one could detect collinearity by computing the determinant of  $\mathbf{X}'\mathbf{X}$ . The difficulty resides in analyzing situations where this determinant is very small but not zero. One possible strategy for detecting and removing collinearity is to go through a process of orthogonalization of variables. (See Hendry [1995].)


# Increasing the Number of Regressors

Increasing the number of regressors does not always improve regressions. The econometric theorem known as Pyrrho's lemma relates to the number of regressors. (See Dijkstra [1995].) Pyrrho's lemma states that by adding one special regressor to a linear regression, it is possible to arbitrarily change the size and sign of regression coefficients as well as to obtain an arbitrary goodness of fit. This result, rather technical, seems artificial as the regressor is an artificially constructed variable. It is, however, a perfectly rigorous result; it tells us that, if we add regressors without a proper design and testing methodology, we risk obtaining spurious results.

Pyrrho's lemma is the proof that modeling results can be arbitrarily manipulated in-sample even in the simple context of linear regressions. In fact, by adding regressors one might obtain an excellent fit in-sample though these regressors might have no predictive power out-of-sample. In addition, the size and even the sign of the regression relationships can be artificially altered in-sample.

The above observations are especially important for those financial models that seek to forecast prices, returns, or rates based on regressions over economic or fundamental variables. With modern computers, by trial and error, one might find a complex structure of regressions that give very good results in-sample but have no real forecasting power.

# KEY POINTS

- In regression analysis, the relationship between a random variable, called the dependent variable, and one or more variables referred to as the independent variables, regressors, or explanatory variables (which can be random variables or deterministic variables) is estimated.


- Factorization, which involves expressing a joint density as a product of a marginal density and a conditional density, is the conceptual basis of financial econometrics.
- An econometric model is a probe that extracts independent samples—the noise terms—from highly dependent variables.
- Regressions have a twofold nature: they can be either (1) the representation of dependence in terms of conditional expectations and conditional distributions or (2) the representation of dependence of random variables on deterministic parameters.
- In many applications in financial modeling, the regressors are deterministic variables. Therefore, on a conceptual level, regressions with deterministic regressors are different from cases where regressors are random variables. In particular, a financial modeler cannot view the regression as a conditional expectation.
- There are two main estimation techniques for estimating the parameters of a regression: maximum likelihood method and ordinary least squares method. The maximum likelihood principle requires maximization of the log-likelihood function. The ordinary least squares method requires minimization of the sum of the squared residuals. The ordinary least squares estimators are the best linear unbiased estimators.
- Because the estimated regression parameters depend on the sample, they are random variables whose distribution is to be determined. The sampling distributions differ depending on whether the regressors are assumed to be fixed deterministic variables or random variables.
- A measure of the quality of approximation offered by a linear regression is given by the variance of the residuals. If residuals are large, the regression model has little explanatory power. However, the size of the average residual in itself is meaningless as it has to be compared with the range of the variables. A widely used measure of the quality and usefulness of a regression model is given by the coefficient of determination, denoted by  $R^2$  or  $R$ -squared, that can attain a value from zero to one. The adjusted  $R^2$  is defined as  $R^2$  corrected by a penalty function that takes into account the number of regressors in the model.


- Stepwise regression is a model-building technique for regression designs. The two methodologies for stepwise regression are the backward stepwise method and the backward removal method.
- A time series is said to be autocorrelated if each term is correlated with its predecessor so that the variance of each term is partially explained by regressing each term on its predecessor. Autocorrelation of residuals, a violation of the regression model assumptions, is quite common in financial estimation where financial modelers regress quantities that are time series. When there is autocorrelation present in a time series, the generalized least squares estimation method is used. The Durbin-Watson test or the Dickey-Fuller test can be utilized to gauge test for the presence of autocorrelation for the residuals.
- Three other situations where there are possible pitfalls of using regressions are spurious regressions with integrated variables, collinearity, and increasing the number of regressors. Spurious regressions occur when an apparently meaningful regression between variables that are independent is estimated. Collinearity occurs when two or more regressors in a regression model have a linear deterministic relationship.
- Pyrrho's lemma, which relates to the number of regressors in a regression model, states that by adding one special regressor to a linear regression, it is possible to arbitrarily change the size and sign of regression coefficients as well as to obtain an arbitrary goodness of fit. Pyrrho's lemma is the proof that modeling results can be arbitrarily manipulated in-sample even in the simple context of linear regressions.


# NOTES

1. The data were supplied by David Wright of Northern Illinois University.
2. We are grateful to Robert Scott of the Bank for International Settlement for suggesting this illustration and for providing the data.

# REFERENCES

Bradley, B., and Taqqu, M. (2003). Financial risk and heavy tails. In S. T. Rachev (ed.), Handbook of Heavy Tailed Distributions in Finance (pp. 35-103). Amsterdam: Elsevier/North Holland.
Dijkstra, T. K. (1995). Pyrrho's lemma, or have it your way. *Metrica* 42: 119-225.
Embrechts, P., McNeil, A., and Straumann, D. (2002). Correlation and dependence in risk management: Properties and pitfalls. In M. Dempster (ed.), Risk Management: Value at Risk and Beyond (pp. 176-223). Cambridge: Cambridge University Press.
Granger, C., and Newbold, P. (1974). Spurious regression in econometrics. Journal of Econometrics 2: 111-120.
Hendry, D. F. (1995). Dynamic Econometrics. Oxford: Oxford University Press.
Markowitz, H. M. (1959). Portfolio Selection: Efficient Diversification of Investments. New Haven, CT: Cowles Foundation for Research in Economics.
Reilly, F. K., Wright, D. J., and Johnson, R. R. (2007). An analysis of the interest rate sensitivity of common stocks. Journal of Portfolio Management 33, 2: 85-107.
Sharpe, W. F. (1963). A simplified model for portfolio analysis. Management Science 9, 1: 277-293.

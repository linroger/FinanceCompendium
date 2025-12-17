
# Copulas

SVETLOZAR T. RACHEV, PhD, Dr Sci

Frey Family Foundation Chair-Professor, Department of Applied Mathematics and Statistics, Stony Brook University, and Chief Scientist, FinAnalytica

CHRISTIAN MENN, Dr. rer. pol.

Managing Partner, RIVACON

FRANK J. FABOZZI, PhD, CFA, CPA

Professor of Finance, EDHEC Business School

Abstract: Understanding dependences or functional links between variables is a key theme in financial modeling. In general terms, functional dependences are represented by dynamic models. Many important models are linear models whose coefficients are correlations coefficients. In many instances in financial modeling, it is important to arrive at a quantitative measure of the strength of dependencies. The correlation coefficient provides such a measure. In many instances, however, the correlation coefficient might be misleading. In particular, there are cases of nonlinear dependencies that result in a zero correlation coefficient. From the point of view of financial modeling, this situation is particularly dangerous as it leads to substantially underestimated risk. Different measures of dependence have been proposed, in particular copula functions.

Correlation is a widespread concept in financial modeling and stands for a measure of dependence between random variables. However, this term is very often incorrectly used to mean any notion of dependence. Actually correlation is one particular measure of dependence among many. In the world of multivariate normal distribution and, more generally, in the world of spherical and elliptical distributions, it is the accepted measure. This follows from a property of the multivariate normal distribution. In this entry, we discuss the limitations of correlation as a measure of the dependence between two random variables and introduce an alter native measure to overcome these limitations, copulas.1


# DRAWBACKS OF CORRELATION

In the general case, there are at least three major drawbacks of the correlation measure. Consider the case of two real-valued random variables  $X$  and  $Y$ . First, the variances of  $X$  and  $Y$  must be finite or the correlation is not defined. This assumption causes problems when working with heavy-tailed data because under certain circumstances the variances are infinite and, for that reason, the correlation between them is not defined.


# OVERCOMING THE DRAWBACKS OF CORRELATION: COPULAS

A more prevalent approach, which overcomes this disadvantage, is to model dependency using copulas. As noted by Patton (2004, p. 3): "The word copula comes from Latin for a 'link' or 'bond', and was coined by Sklar (1959), who first proved the theorem that a collection of marginal distributions can be 'coupled' together via a copula to form a multivariate distribution." The idea is as follows. The description of the joint distribution of a random vector is divided into two parts:


1. The specification of the marginal distributions.
2. The specification of the dependence structure by means of a special function, called copula.

The use of copulas offers the following advantages:

- The nature of dependency that can be modeled is more general. In comparison, only linear dependence can be explained by the correlation.
- Dependence of extreme events might be modeled.
- Copulas are indifferent to continuously increasing transformations (not only linear as it is true for correlations).

Because of these advantages, in recent years there has been increased application of copulas in asset and option pricing, portfolio selection, and risk management.

# MATHEMATICAL DEFINITION OF COPULAS

From a mathematical viewpoint, a copula function  $C$  is nothing more than a probability distribution function on the  $d$ -dimensional hypercube  $I_{d} = [0,1] \times [0,1] \times \ldots \times [0,1]$ :

$$
\begin{array}{l} C: I _ {d} \to [ 0, 1 ] \\ (x _ {1}, \dots , x _ {d}) \rightarrow C (x _ {1}, \dots , x _ {d}) \\ \end{array}
$$

It has been shown that any multivariate probability distribution function  $F_{Y}$  of some random vector  $Y = (Y_{1},\dots ,Y_{d})$  can be represented with the help of a copula function  $C$  in the following form:

$$
\begin{array}{l} F _ {Y} \left(y _ {1}, \dots , y _ {d}\right) = P \left(Y _ {1} \leq y _ {1}, \dots , Y _ {d} \leq y _ {d}\right) \\ = C \left(P \left(Y _ {1} \leq y _ {1}\right), \dots , P \left(Y _ {d} \leq y _ {d}\right)\right) \\ = C \left(F _ {Y _ {1}} \left(y _ {1}\right), \dots , F _ {Y _ {d}} \left(y _ {d}\right)\right) \\ \end{array}
$$ where the  $F_{Y_i}, i = 1, \ldots, d$  denote the marginal distribution functions of the random variables  $Y_i, i = 1, \ldots, d$ .


![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/f81cf837652544b24b742ef7e5cd33f0cee713db52121ec9b0cb0d337fb9a0bf.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/18145fd466b7a4139c5c0c1899aca9325455f7397bd9c270608704a5d01a632b.jpg)

Figure 1 Visualization of the Copula for Bivariate Independence*
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/b7b11f2bf7e88579421a4a6ba4d7983712eea79ca4633e0fb232b1ccc9654441.jpg)
Panel a: Uniform Marginal Distributions. Panel b: Standard Normal Marginal Distributions.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/9810cff53352236950dcd3c3a5069d740b7890344188986e151ac28df3f66606.jpg)
*The graphs show the joint distribution function of a bivariate random vector for two different marginal distributions. Each panel consists of a surface and a corresponding contour plot.

The copula function makes the bridge between the univariate distribution of the individual random variables and their joint probability distribution. This justifies the fact that the copula function creates uniquely the dependence, whereas the probability distribution of the involved random variables is provided by their marginal distribution.

As an example we consider the following three bivariate copula functions:

$C(x,y) = x\cdot y$
$C(x,y) = \min (x,y)$

$$
\begin{array}{l} \cdot C (x, y) = \int_ {- \infty} ^ {\Phi^ {- 1} (x)} \int_ {- \infty} ^ {\Phi^ {- 1} (y)} \frac {1}{2 \pi (1 - \rho^ {2}) ^ {1 / 2}} \\ \exp \left(\frac {s ^ {2} - 2 \rho s t + t ^ {2}}{2 (1 - \rho^ {2})}\right) d s d t \\ \end{array}
$$

The first represents the independent case as the joint probability distribution equals the product of their marginals. The second example represents a case of extreme dependence whereas the third example represents the general Gaussian copula function for the bivariate case.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/78b405906963a3545794194888dc3294578769f8562e2196e687b1c02758c93c.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/a5b078b4530f9e75a50f5d9408a016e92cd6ebbd36bfd9eeb65874c3fdd2f40b.jpg)

Figure 2 Visualization of the Bivariate Minimum Copula*
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/026fa11456fc300823412975ce3883b7efbbb5c037e5ed739b6d97d7d7dacbb3.jpg)
Panel a: Uniform Marginal Distributions. Panel b: Standard Normal Marginal Distributions.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/a23c254c9731f558c1d419528e7690a57b64345f79a14ef8e647aceb1e7c3933.jpg)
*The graphs show the joint distribution function of a bivariate random vector for two different marginal distributions. Each panel consists of a surface and a corresponding contour plot.

We illustrate the effect of the different copulas by applying them to two different marginal distributions, namely (1) the uniform distribution on the interval [0,1] and (2) the standard normal distribution. The results are presented in Figures 1, 2, and 3.

# KEY POINTS

- In financial modeling, it is critical to understand dependencies or functional links be- tween variables and have a quantitative measure of the strength of dependencies.


- The most commonly used measure of dependency in finance is the correlation coefficient. This measure might be misleading. In particular, there are cases of nonlinear dependencies that result in a zero correlation coefficient.
- The existence of finite variances is required for a correlation to be computed. Some return distributions, however, have fat tails, and the variances are infinite.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/3cf9549d621f1525c31f1d031b00ec6c2767182ed092220ecef8618c91791324.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/ebb20cbb9c39a01134f5c5a2ef2722dcb7a239fe5aab0f1dc9563764eca24075.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/13fe94a47ef1891965ffb52acf438d602c44d695a2561915926d6db3e72e6bcf.jpg)
Figure 3 Visualization of the Gaussian Copula with Correlation  $\rho = 0.8^{*}$  Panel a: Uniform Marginal Distributions. Panel b: Standard Normal Marginal Distributions. *The graph shows the joint distribution function of a bivariate random vector for two different marginal distributions. Each panel consists of a surface and a corresponding contour plot.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/59841c6c59dc45f4a8a9f3abbf17e5a31c33dfeb3aab68c196dd34ace837a36f.jpg)

- The correlation is not invariant under nonlinear strictly increasing transformations, making the use of this measure a serious disadvantage.
- The copula overcomes the drawbacks of the correlation as a measure of dependency by allowing for a more general measure than linear dependence, allowing for the modeling of dependence for extreme events, and being indifferent to continuously increasing transformations.
- The copula function bridges the univariate distribution of the individual random vari ables and their joint probability distribution, thereby justifying the fact that the copula function creates the dependence uniquely, whereas the probability distribution of the involved random variables is provided by their marginal distribution.


# NOTES

1. For a discussion of applications in finance and insurance, see Embrechts, McNeil, and Straumann (1999) and Patton (2003a, 2003b, 2004).

2. A simple example is the following: Let  $X$  be a standard normal distribution and  $Y = X^2$ . Because the third moment of the standard normal distribution is zero, the correlation between  $X$  and  $Y$  is zero despite the fact that  $Y$  is a function of  $X$ , which means that they are dependent.
3. The importance of copulas in the modeling of the distribution of multivariate random variables is provided by Sklar's theorem. The derivation was provided in Sklar (1959).

# REFERENCES

Embrechts, P., McNeil, A., and Straumann, D. (1999). Correlation and dependence properties in risk management: Properties and pitfalls. In Risk Management: Value at Risk and Beyond, ed. M. Dempster, 176-223. Cambridge: Cambridge University Press.

Patton, A. J. (2003a). On the importance of skewness and asymmetric dependence for asset allocation. Journal of Financial Econometrics 2, 1: 130-168.
Patton, A. J. (2003b). Estimation of copula models for time series of possibly different lengths. Working paper. London School of Economics, September.
Patton, A. J. (2004). Modelling asymmetric exchange rate dependence. Working paper. London School of Economics, September.
Sklar, A. (1959). Fonctions de répartition à n dimensions et leurs marges. Publications de l'Institut de Statistique de l'Université de Paris 8: 229-231.

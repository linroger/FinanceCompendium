---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Mathematics Appendix
linter-yaml-title-alias: Mathematics Appendix
---

# Mathematics Appendix

# A.1 A BRIEF OVERVIEW OF ELEMENTARY STATISTICS

# Mean, Variance, and Standard Deviation

The purpose of this appendix is to review several important elementary statistics concepts. To begin with, suppose that we wish to describe or summarize the characteristics or distribution of a single population of values (or sample drawn from a population). Two important characteristics include central location (measured by average, mean, median, expected value, or mode) and dispersion (measured by range, variance, or standard deviation).

In many instances, we will be most interested in the typical value (if it exists) drawn from a population or sample; that is, we are interested in the "location" of the data set. Mean (often referred to as average) or expected values (sometimes referred to as weighted average) are frequently used as measures of location (or central tendency) because they account for all relevant data points and the frequency with which they occur. The arithmetic mean value of a population  $\mu$  is computed by adding the values  $x_{i}$  associated with each observation  $i$  and dividing the result by the number of observations  $n$  in the population:

$$
\mu = \sum_ {i = 1} ^ {n} x _ {i} \div n \tag {A.1}
$$

Variance is a measure of the dispersion (variability and sometimes volatility or uncertainty) of values within a data set. In a finance setting, variance is also used as an indicator of risk. Variance is defined as the mean of squared deviations of actual data points from the mean or expected value of a data set. Deviations are squared to ensure that negative deviations do not cancel positive deviations, resulting in zero variances. High variances imply high dispersion of data. This indicates that certain or perhaps many data points are significantly different from mean or expected values. Population and sample variances are computed as follows:

$$
\sigma^ {2} = \sum_ {i = 1} ^ {n} \left(x _ {i} - \mu\right) ^ {2} \div n \tag {A.2}
$$

$$
s ^ {2} = \frac {\sum_ {i = 1} ^ {n} \left(x _ {i} - \bar {x}\right) ^ {2}}{n - 1} \tag {A.3}
$$

Standard deviation is simply the square root of variance. It is also used as a measure of dispersion, risk, or uncertainty. Standard deviation is sometimes easier to interpret than variance because its value is expressed in terms of the same units as the data points themselves rather than their squared values. High standard deviations and high variances imply high dispersion of data. Standard deviations for populations and samples are computed as follows:

$$
\sigma = \sqrt {\sum_ {i = 1} ^ {n} \left(x _ {i} - \mu\right) ^ {2} \div n} \tag {A.4}
$$

$$
s = \sqrt {\frac {\sum_ {i = 1} ^ {n} \left(x _ {i} - \bar {x}\right) ^ {2}}{n - 1}} \tag {A.5}
$$

# Co-movement Statistics

A joint probability distribution is concerned with probabilities associated with each possible combination of outcomes drawn from two sets of data. Covariance measures the mutual variability of outcomes selected from each set; that is, covariance measures the relationship between variability in one data set relative to variability in the second data set, where variables are selected one at a time from each data set and paired. If large values in one data set seem to be associated with large values in the second data set, covariance is positive; if large values in the first data set seem to be associated with small values in the second data set, covariance is negative. If data sets are unrelated, covariance is zero. Covariance between data set  $x$  and data set  $y$  may be measured as follows, depending on whether one is interested in covariance of a population or a sample or expected covariance:

$$
\sigma_ {x, y} = \sum_ {i = 1} ^ {n} \left(x _ {i} - \mu_ {x}\right) \left(y _ {i} - \mu_ {y}\right) \div n \tag {A.6}
$$

$$
s _ {x, y} = \frac {\sum_ {i = 1} ^ {n} \left(x _ {i} - \bar {x}\right) \left(y _ {i} - \bar {y}\right)}{n - 1} \tag {A.7}
$$

The sign associated with covariance indicates whether the relationship associated with the data in the sets are direct (positive sign), inverse (negative sign), or independent (covariance is zero). The absolute value of covariance measures the strength of the relationship between the two data sets. However, the absolute value of covariance can often be more easily interpreted when it is expressed relative to the standard deviations of each of the two data sets. That is, when we divide covariance by the product of the standard

deviations of each of the data sets, we obtain the sample coefficient of correlation  $\rho_{x,y}$  as follows:

$$
\rho_ {x, y} = \frac {\sigma_ {x , y}}{\sigma_ {x} \sigma_ {y}} = \frac {\sum_ {i = 1} ^ {n} \left(x _ {i} - \bar {x}\right) \left(y _ {i} - \bar {y}\right) / (n - 1)}{\sqrt {\frac {\sum_ {i = 1} ^ {n} \left(x _ {i} - \bar {x}\right) ^ {2}}{n - 1}} \cdot \sqrt {\frac {\sum_ {i = 1} ^ {n} \left(y _ {i} - \bar {y}\right) ^ {2}}{n - 1}}} \tag {A.8}
$$

A correlation coefficient equal to 1 indicates that the two data sets are perfectly positively correlated; that is, their changes are always in the same direction, by the same proportions, with  $100\%$  consistency. Correlation coefficients will always range between  $-1$  and  $+1$ . A correlation coefficient of  $-1$  indicates that the two data sets are perfectly inversely correlated; that is, their changes are always in the opposite direction, by the same proportions with  $100\%$  consistency. The closer a correlation coefficient is to  $-1$  or  $+1$ , the stronger is the relationship between the two data sets. A correlation coefficient equal to zero implies independence (no relationship) between the two sets of data.

The correlation coefficient may be squared to obtain the coefficient of determination (also referred to as  $r^2$  or r-square in some statistics texts and here as  $\rho^2$ ). The coefficient of determination is the proportion of variability in one data set that is explained by or associated with variability in the second data set. For example,  $\rho^2$  equal to 0.35 indicates that 35% of the variability in one data set is explained in a statistical sense by variability in the second data set.

# Hypothesis Testing

In this section, we discuss the process of induction to form testable hypotheses or theories from specific observations. These hypotheses or theories are useful if they provide a means to make meaningful predictions. Normally, testing a theory involves the collection of additional observations to determine whether they support the theory's predictions. If the additional observations do not confirm the predictions, then one has grounds for rejecting the theory. The observations collected to test a theory are usually represented by numbers or data. In most cases, statistical inference concerns the generalization of sample results to a population.

In many instances, one might make use of statistical inference to test a hypothesis. By convention, a hypotheses test usually involves formulation of a null (or maintained) hypothesis along with a competing alternative (research or challenging) hypothesis. The null hypothesis  $\mathrm{H_0}$  usually is the claim that the population parameter equals some "maintained" value (note that null frequently implies no difference, no impact or nothing). The null hypothesis normally includes an equality sign or either  $\leq$  or  $\geq$  signs. The alternative hypothesis  $\mathrm{H_A}$  is the claim that the population parameter differs from the maintained value. The alternative hypothesis normally includes a strict inequality sign. Such tests are usually structured in a conservative manner such that the burden of proof is on the

alternative hypothesis. One supports the research or alternative hypothesis by demonstrating the null hypothesis to be false (rejecting the null hypothesis). One rejects the null hypothesis only when the probability of its being true is sufficiently low (the conventional probability, known as a level of significance, is 0.05 or 0.01). In some instances, the appropriate level of significance for a hypothesis test can be based on the relative costs of rejecting the null hypothesis when it is true or accepting it when it is false.

One might list the steps of a typical statistical hypothesis test as follows:

1. Define the null hypothesis,  $\mathrm{H}_0$  
2. Define the alternative hypothesis,  $\mathrm{H}_{\mathrm{A}}$  
3. Determine a level of significance,  $\alpha$ , for the test.  
4. Determine the decision rule or test statistic along with acceptance or rejection regions or critical value based on  $\alpha$ .  
5. Perform computations.  
6. Form conclusions.

The decision rule or test statistic is a given function of a measurement drawn from the sample on which the statistical decision will be based. The rejection region consists of those values of the test statistic that will lead to rejection of the null hypothesis. The critical value marks the boundary between the acceptance and rejection regions.

An experiment involving a given sample drawn from a population has some probability of resulting in an erroneous conclusion. Thus, one's hypothesis test may lead to an incorrect rejection of a true null hypothesis (Type I error) or an incorrect retaining of a false null hypothesis (Type II error). The power of a test refers to the probability of not committing a Type II error. This is equivalent to the probability of accepting the alternative hypothesis when it is correct. A test is considered to be superior when its power is higher.

Statistics are most useful for empirical studies in finance. This chapter provides, at best, a very superficial overview of a few of the applications of statistical methodology in finance. The reader is advised to consult a more comprehensive statistics text for a more detailed presentation of statistical methodology and its applications to financial problems.

# Hypothesis Testing: Two Populations

Here, we are concerned with comparing two means,  $\mu_{1}$  and  $\mu_{2}$  for populations 1 and 2 with standard deviations  $\sigma_{1}$  and  $\sigma_{2}$ . We shall assume that our samples are independent and drawn from populations whose data are normally distributed. Our test will be based on samples of sizes  $n_{1}$  and  $n_{2}$ . The samples will have means and variances equal to  $\overline{x}_{1}$  and  $\overline{x}_{2}$  and  $s_{1}^{2}$  and  $s_{2}^{2}$ , respectively. We will base our testing methodologies on test statistics and distributions somewhat different from those used earlier. Suppose that we wanted to test whether the means of two populations were different based on samples drawn from those populations. Our hypotheses and test statistics might be as follows:

$$
\begin{array}{l} \mathrm {H} _ {0}: \mu_ {1} = \mu_ {2} \\ \mathrm {H} _ {\mathrm {A}}: \mu \neq \mu_ {2} \\ \end{array}
$$

$$
t = \frac {(\bar {x} _ {1} - \bar {x} _ {2}) - (\mu_ {1} - \mu_ {2})}{\sqrt {\left[ \frac {(n _ {1} - 1) s _ {1} ^ {2} + (n _ {2} - 1) s _ {2} ^ {2}}{(n _ {1} + n _ {2} - 2)} \right] \left[ \frac {n _ {1} + n _ {2}}{n _ {1} \cdot n _ {2}} \right]}} \tag {A.9}
$$

where  $s_1^2$  and  $s_2^2$  are the sample variances. If we are testing whether  $\overline{x}_1$  and  $\overline{x}_2$  are equal, then our hypothesized difference in means  $\mu_1 - \mu_2 = 0$  is used for computing our test statistic. Our test statistic assumes that our data follows a student-  $t$  distribution.

A variety of other types of tests involving samples from two populations can be constructed as well. For example, tests can be developed to determine whether variances differ, other tests can be based on samples with matched pairs of observations, and so on. A statistics or econometrics text can be consulted to provide additional testing methodologies.

# Introduction to Simple OLS Regression

Regressions are used to determine relationships between a dependent variable and one or more independent variables. A simple regression is concerned with the relationship between a dependent variable and a single independent variable; a multiple regression is concerned with the relationship between a dependent variable and a series of independent variables. A linear regression is used to describe the relationship between the dependent and independent variable(s) to a linear function or line (or hyperplane in the case of a multiple regression).

The simple ordinary least squares regression (simple OLS) takes the following form:

$$
y _ {t} = \hat {b} _ {0} + \hat {b} _ {1} x _ {t} + \varepsilon_ {i, t} \tag {A.10}
$$

The OLS regression coefficients  $\hat{b}_0$  and  $\hat{b}_1$  are derived by minimizing the variance of errors in fitting the curve (or  $m$ -dimensional surface for multiple regressions involving  $m$  variables). Since the expected value of error terms equals zero, this derivation is identical to minimizing error terms squared. Regression coefficient  $\hat{b}_1$  is simply the covariance between  $y$  and  $x$  divided by the variance of  $x$ ;  $\hat{b}_1$  and  $\hat{b}_0$  are found as follows:

$$
\hat {b} _ {1} = \frac {\sigma_ {x , y} ^ {2}}{\sigma_ {x} ^ {2}} = \frac {\sum_ {i = 1} ^ {n} \left(x _ {i} - \bar {x}\right) \left(y _ {i} - \bar {y}\right)}{\sum_ {i = 1} ^ {n} \left[ \left(x _ {i} - \bar {x}\right) \right] ^ {2}} \tag {A.11}
$$

$$
\hat {b} _ {0} = \bar {y} - \hat {b} _ {1} \bar {x} \tag {A.12}
$$

Appropriate use of the OLS requires the following assumptions:

- Dependent variable values are distributed independently of one another.  
- The variance of  $x$  is approximately the same over all ranges for  $x$ .  
- The variance of error term values is approximately the same over all ranges of  $x$ .  
- The expected value of each disturbance or error term equals zero.

Violations in these assumptions will weaken the validity of the results obtained from the regression and may necessitate either modifications to the OLS regression or different statistical testing techniques.

A simple regression is concerned with the relationship between a dependent variable and a single independent variable. Regression coefficients  $\hat{b}_0$  and  $\hat{b}_1$  represent the vertical intercept and the slope in the statistical linear relationship between the dependent variable  $y_i$  and the independent variable  $x_i$ . Thus the vertical intercept  $\hat{b}_0$  represents the regression's forecasted value for  $y_i$  when  $x_i$  equals zero and the slope of the regression  $\hat{b}_1$  represents the change in  $\hat{y}_i$  (the value forecast by the regression for  $y_i$ ) induced by a change in  $x_i$ . The error term  $\hat{\varepsilon}_i$  represents the vertical distance between the value  $\hat{y}_i$  forecasted by the regression based on its true value  $y_i$ ; that is,  $\hat{\varepsilon}_i = y_i - \hat{y}_i$ . The OLS regression minimizes the sum or average of these error terms squared. The size of the sum of the squared errors (often called SSE or, when divided by  $(n - 2)$ , the variance of errors  $\sigma_{\varepsilon}^2$ ) will be used to measure the predictive strength of the regression equation. A regression with smaller error terms or smaller  $\sigma_{\hat{\varepsilon}}^2$  is likely to be a better predictor, all else held constant.

Once we have determined the statistical relationship between  $y_{i}$  and  $x_{i}$  based on our OLS, our next problem is to measure the strength of the relationship, or its significance. One of the more useful indicators of the strength of the regression is the coefficient of determination or  $\rho^2$  statistic. The coefficient of determination (often referred to as r-square) represents the proportion of variation of variable  $y$  that is explained by its regression on  $x$ . It is determined as follows:

$$
\rho_ {x, y} ^ {2} = \frac {\left(\sigma_ {x , y}\right) ^ {2}}{\sigma_ {x} ^ {2} \sigma_ {y} ^ {2}} = \frac {\left[ \sum_ {i = 1} ^ {n} \left(x _ {i} - \bar {x}\right) \left(y _ {i} - \bar {y}\right) \right] ^ {2}}{\left[ \sum_ {i = 1} ^ {n} \left(x _ {i} - \bar {x}\right) \right] ^ {2} \left[ \sum_ {i = 1} ^ {n} \left(y _ {i} - \bar {y}\right) \right] ^ {2}} \tag {A.13}
$$

This coefficient of determination may also be expressed as either of the following:

$$
\rho_ {x, y} ^ {2} = \frac {\text {T o t a l V a r i a t i o n i n y E x p l a i n e d b y t h e R e g r e s s i o n}}{\text {T o t a l V a r i a t i o n i n y}} \tag {A.14}
$$

$$
\rho_ {x, y} ^ {2} = \frac {\sum_ {i = 1} ^ {n} \left(y _ {i} - \bar {y}\right) ^ {2} - \sum_ {i = 1} ^ {n} \varepsilon_ {i} ^ {2}}{\sum_ {i = 1} ^ {n} \left(y _ {i} - \bar {y}\right) ^ {2}} \tag {A.15}
$$

The sum  $\sum (y_i - \overline{y})^2$  represents total variation in  $y$ ; the sum  $\sum \hat{\varepsilon}_i^2$  represents the variation in  $y$  not explained by the regression on  $x$ .

Assume that there exists for a population a true OLS regression equation  $y_{i} = \beta_{0} + \beta_{1}x_{i} + \varepsilon_{i}$  representing the relationship between  $y_{i}$  and  $x_{i}$ , without measurement or sampling error. However, we propose the regression  $y_{i} = \hat{b}_{0} + \hat{b}_{1}x_{i} + \hat{\varepsilon}_{i}$ , whose ability to represent the true relationship between  $y_{i}$  and  $x_{i}$  is a function of our ability to measure and sample properly. Our sampling coefficients  $\hat{b}_{0}$  and  $\hat{b}_{1}$  are merely estimates for the true coefficients  $\beta_{0}$  and  $\beta_{1}$  and they may vary from sample to sample. It is useful to know the significance of each of these sampling coefficients in explaining the relationship between  $y_{i}$  and  $x_{i}$ .

Our estimate  $\hat{b}_{1}$  for the slope coefficient  $\beta_{1}$  might vary from regression to regression, depending on how our sample varies. Our estimates for  $\hat{b}_{1}$  will follow a  $t$ -distribution if our sample of  $y_{i}$ 's is large or normally distributed; if our sample is sufficiently large, our estimates for  $\beta_{1}$  may be characterized as normally distributed. One potential test of the significance of our coefficient estimate  $\hat{b}_{1}$  is structured as follows:

$$
\mathrm {H} _ {0}: \beta_ {1} \leq 0
$$

$$
\mathrm {H} _ {\mathrm {A}}: \beta_ {1} > 0
$$

Our null hypothesis is that  $y$  is unrelated or inversely related to  $x$ ; our alternative hypothesis is that  $y$  is directly related to  $x$ . The first step in our test is to compute the standard error  $se(\hat{b}_1)$  of our estimate for  $\beta_1$  as follows:

$$
s e \left(\hat {b} _ {1}\right) = \sqrt {\frac {1}{n} \frac {\sigma_ {\hat {\varepsilon}} ^ {2}}{\sigma_ {x} ^ {2}}} = \sqrt {\frac {\sum_ {i = 1} ^ {n} \hat {\varepsilon} _ {i} ^ {2}}{n - 2}} \tag {A.16}
$$

The standard error for  $\hat{b}_1$  is, in a sense, an indicator of our level of uncertainty regarding our estimate for  $\beta_1$ . The numerator within the radical indicates the variability unexplained by the regression; the denominator indicates total variability. Our next step is to find the test statistic for  $\hat{b}_1$ . This is analogous to standardizing or finding the normal deviate in our earlier hypothesis tests:

$$
t \left(\hat {b} _ {1}\right) = \frac {\hat {b} _ {1}}{s e \left(\hat {b} _ {1}\right)} \tag {A.17}
$$

We next compare this test statistic to a critical value from a table representing the  $t$ -distribution (such as Table A.2 at the end of this mathematics appendix).

The process for determining the statistical significance of the vertical intercept  $\hat{b}_0$  is quite similar to that for determining the statistical significance for  $\hat{b}_1$ . We first designate appropriate hypotheses, such as:

$$
\mathrm {H} _ {0}: \beta_ {0} = 0
$$

$$
\mathrm {H} _ {\mathrm {A}}: \beta_ {0} \neq 0
$$

The primary difference in the process is in determining  $se(\hat{b}_0)$ :

$$
s e \left(\hat {b} _ {0}\right) = \sqrt {\frac {\sum_ {i = 1} ^ {n} \varepsilon_ {i} ^ {2}}{n - 2} \cdot \sum_ {i = 1} ^ {n} x _ {i} ^ {2}}} \tag {A.18}
$$

Next, we find our  $t$ -statistic as follows:

$$
t \left(\hat {b} _ {0}\right) = \frac {\hat {b} _ {0}}{s e \left(\hat {b} _ {0}\right)} \tag {A.19}
$$

We then compare the  $t$ -statistic to the appropriate critical value just as we did when testing the significance of the slope coefficient. This particular test involves two tails, since our alternative hypothesis is a strict inequality. Be certain to make appropriate adjustments to the critical value (for example, divide  $\alpha$  by 2 for two-tailed tests) when making comparisons.

# A.2 ESSENTIALS OF MATRICES AND MATRIX ARITHMETIC

A matrix is simply an ordered rectangular array of numbers. A matrix is an entity that enables one to represent a series of numbers as a single object, thereby providing for convenient systematic methods for completing large numbers of repetitive computations. Such objects are essential for the management of large data structures. Rules of matrix arithmetic and other matrix operations are often similar to rules of ordinary arithmetic and other operations, but they are not always identical. In this text, matrices will usually be denoted with bold uppercase letters. When the matrix has only one row or one column, bold lowercase letters will be used for identification. The following are examples of matrices:

$$
\mathbf {A} = \left[ \begin{array}{c c c} 4 & 2 & 6 \\ 3 & 7 & 4 \\ 8 & - 5 & 9 \end{array} \right] \quad \mathbf {B} = \left[ \begin{array}{c c} 2 & - 3 \\ ^ {3} / _ {4} & - ^ {1} / _ {2} \end{array} \right] \quad \mathbf {c} = \left[ \begin{array}{l} 1 \\ 5 \\ 7 \end{array} \right] \quad \mathbf {d} = \left[ \begin{array}{l} 3 \\ \overline {{5}} \end{array} \right]
$$

The dimensions of a matrix are given by the ordered pair  $m \times n$ , where  $m$  is the number of rows and  $n$  is the number of columns in the matrix. The matrix is said to be of order  $m \times n$  where, by convention, the number of rows is listed first. Thus,  $\mathbf{A}$  is  $3 \times 3$ ,  $\mathbf{B}$  is  $2 \times 2$ ,  $\mathbf{c}$  is  $3 \times 1$ , and  $\mathbf{d}$  is  $1 \times 1$ . Each number or value in a matrix is referred to as an element. The symbol  $a_{i,j}$  denotes the element in row  $i$  and column  $j$  of matrix  $\mathbf{A}$ ,  $b_{i,j}$  denotes the element in row  $i$  and column  $j$  of matrix  $\mathbf{B}$ , and so on. Thus,  $a_{3,2}$  is  $-5$  and  $c_{2,1} = 5$ .

There are specific terms denoting various types of matrices. Each of these particular types of matrices has useful applications and unique properties for working with. For example, a vector is a matrix with only one row or one column. Thus, the dimensions of a vector are  $1 \times n$  or  $m \times 1$ . Matrix  $\mathbf{c}$  above is a column vector, of order  $3 \times 1$ . A  $1 \times n$  matrix is a row vector with  $n$  elements. The column vector has one column and the row vector has one row. A scalar is a matrix with exactly one element. Matrix  $\mathbf{d}$  is a scalar. A square matrix has the same number of rows and columns ( $m = n$ ). Matrix  $\mathbf{A}$  is square and of order 2. The set of elements extending from the upper left-most corner to the lower right-most corner in a square matrix are said to be in the principal diagonal. For each of these elements  $i_{i,j}$ ,  $i = j$ . Principal diagonal elements of square matrix  $\mathbf{A}$  are  $a_{1,1} = 4$ ,  $a_{2,2} = 7$ , and  $a_{3,3} = 9$ . Matrices  $\mathbf{B}$  and  $\mathbf{d}$  are also square matrices.

A symmetric matrix is a square matrix where  $c_{i,j}$  equals  $c_{j,i}$  for all  $i$  and  $j$ ; that is, the  $i$ th element in each row equals the  $j$ th element in each column. Scalar  $\mathbf{d}$  and matrices  $\mathbf{H}$ ,  $\mathbf{I}$ , and  $\mathbf{J}$  below are all symmetric matrices. A diagonal matrix is a symmetric matrix whose elements off the principal diagonal are zero, where the principal diagonal contains the series of

elements where  $i = j$ . Scalar  $\mathbf{d}$  and matrices  $\mathbf{H}$  and  $\mathbf{I}$  in the following are all diagonal matrices. An identity or unit matrix is a diagonal matrix consisting of ones along the principal diagonal. Both matrices  $\mathbf{H}$  and  $\mathbf{I}$  following are diagonal matrices;  $\mathbf{I}$  is the  $3 \times 3$  identity matrix:

$$
\mathbf {H} = \left[ \begin{array}{l l l} 1 3 & 0 & 0 \\ 0 & 1 1 & 0 \\ 0 & 0 & 1 0 \end{array} \right] \mathbf {I} = \left[ \begin{array}{l l l} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{array} \right] \mathbf {J} = \left[ \begin{array}{l l l} 1 & 7 & 2 \\ 7 & 5 & 0 \\ 2 & 0 & 4 \end{array} \right]
$$

# Matrix Arithmetic

Matrix arithmetic provides for standard rules of operation just as conventional arithmetic. Matrices can be added or subtracted if their dimensions are identical. Matrices  $\mathbf{A}$  and  $\mathbf{B}$  add to  $\mathbf{C}$  if  $a_{i,j} + b_{i,j} = c_{i,j}$  for all  $i$  and  $j$ :

$$
\left[ \begin{array}{c c c c} a _ {1, 1} & a _ {1, 2} & \dots & a _ {1, n} \\ a _ {2, 1} & a _ {2, 2} & \dots & a _ {2, n} \\ \vdots & \vdots & \vdots & \vdots \\ a _ {m, 1} & a _ {m, 2} & \dots & a _ {m, n} \end{array} \right] + \left[ \begin{array}{c c c c} b _ {1, 1} & b _ {1, 2} & \dots & b _ {1, n} \\ b _ {2, 1} & b _ {2, 2} & \dots & b _ {2, n} \\ \vdots & \vdots & \vdots & \vdots \\ b _ {m, 1} & b _ {m, 2} & \dots & b _ {m, n} \end{array} \right] = \left[ \begin{array}{c c c c} c _ {1, 1} & c _ {1, 2} & \dots & c _ {1, n} \\ c _ {2, 1} & c _ {2, 2} & \dots & c _ {2, n} \\ \vdots & \vdots & \vdots & \vdots \\ c _ {m, 1} & c _ {m, 2} & \dots & c _ {m, n} \end{array} \right]
$$

A

B

C

For example:

$$
\left[ \begin{array}{l l l} 2 & 4 & 9 \\ 6 & 4 & 2 5 \\ 0 & 2 & 1 1 \end{array} \right] + \left[ \begin{array}{l l l} 3 & 0 & 6 \\ 2 & 1 & 3 \\ 7 & 0 & 4 \end{array} \right] = \left[ \begin{array}{l l l} 5 & 4 & 1 5 \\ 8 & 5 & 2 8 \\ 7 & 2 & 1 5 \end{array} \right]
$$

A

B

C

Note that each of the three matrices is of dimension  $3 \times 3$  and that each of the elements in matrix  $\mathbf{C}$  is the sum of corresponding elements in matrices  $\mathbf{A}$  and  $\mathbf{B}$ . The process of subtracting matrices is similar, where  $d_{i,j} - e_{i,j} = f_{i,j}$  for  $\mathbf{D} - \mathbf{E} = \mathbf{F}$ :

$$
\left[ \begin{array}{c c c c} d _ {1, 1} & d _ {1, 2} & \ldots & d _ {1, n} \\ d _ {2, 1} & d _ {2, 2} & \ldots & d _ {2, n} \\ \vdots & \vdots & \vdots & \vdots \\ d _ {m, 1} & d _ {m, 2} & \ldots & d _ {m, n} \end{array} \right] - \left[ \begin{array}{c c c c} e _ {1, 1} & e _ {1, 2} & \ldots & e _ {1, n} \\ e _ {2, 1} & e _ {2, 2} & \ldots & e _ {2, n} \\ \vdots & \vdots & \vdots & \vdots \\ e _ {m, 1} & e _ {m, 2} & \ldots & e _ {m, n} \end{array} \right] = \left[ \begin{array}{c c c c} f _ {1, 1} & f _ {1, 2} & \ldots & f _ {1, n} \\ f _ {2, 1} & f _ {2, 2} & \ldots & f _ {2, n} \\ \vdots & \vdots & \vdots & \vdots \\ f _ {m, 1} & f _ {m, 2} & \ldots & f _ {m, n} \end{array} \right]
$$

D

E

F

For example:

$$
\left[ \begin{array}{l l l} 9 & 4 & 9 \\ 6 & 4 & 8 \\ 5 & 2 & 9 \end{array} \right] - \left[ \begin{array}{l l l} 5 & 0 & 6 \\ 2 & 1 & 6 \\ 5 & 0 & 9 \end{array} \right] = \left[ \begin{array}{l l l} 4 & 4 & 3 \\ 4 & 3 & 2 \\ 0 & 2 & 0 \end{array} \right]
$$

D

E

F

Now consider a third matrix operation. The transpose  $\mathbf{A}^T$  of matrix  $\mathbf{A}$  is obtained by interchanging the rows and columns of matrix  $\mathbf{A}$ . Each  $a_{i,j}$  becomes  $a_{j,i}$ . The following represent matrix  $\mathbf{A}$  and its transpose  $\mathbf{A}^T$ :

$$
\begin{array}{c c} \left[ \begin{array}{c c c} 1 & 8 & 9 \\ 6 & 4 & 2 5 \\ 3 & 2 & 3 5 \end{array} \right] & \left[ \begin{array}{c c c} 1 & 6 & 3 \\ 8 & 4 & 2 \\ 9 & 2 5 & 3 5 \end{array} \right] \\ \mathbf {A} & \mathbf {A} ^ {T} \end{array}
$$

The transpose of a column vector is a row vector:

$$
\begin{array}{c c} \left[ \begin{array}{l} 9 \\ 6 \\ 3 \\ 7 \end{array} \right] & \left[ \begin{array}{l l l l} 9 & 6 & 3 & 7 \end{array} \right] \\ \mathbf {y} & \mathbf {y} ^ {T} \end{array}
$$

Similarly, the transpose of a row vector is a column vector. Note that the transpose  $\mathbf{V}^T$  of a symmetric matrix  $\mathbf{V}$  is  $\mathbf{V}$ :

$$
\mathbf {V} = \left[ \begin{array}{l l l} 0. 0 9 & 0. 0 1 & 0. 0 4 \\ 0. 0 1 & 0. 1 6 & 0. 1 0 \\ 0. 0 4 & 0. 1 0 & 0. 6 4 \end{array} \right] \quad \mathbf {V} ^ {T} = \left[ \begin{array}{l l l} 0. 0 9 & 0. 0 1 & 0. 0 4 \\ 0. 0 1 & 0. 1 6 & 0. 1 0 \\ 0. 0 4 & 0. 1 0 & 0. 6 4 \end{array} \right] = \mathbf {V}
$$

# Multiplication of Matrices

Two matrices  $\mathbf{A}$  and  $\mathbf{B}$  can be multiplied to obtain the product  $\mathbf{AB} = \mathbf{C}$  if the number of columns in the first matrix  $\mathbf{A}$  equals the number of rows  $\mathbf{B}$  in the second. If matrix  $\mathbf{A}$  is of dimension  $m \times n$  and matrix  $\mathbf{B}$  is of dimension  $n \times q$ , the dimensions of the product matrix  $\mathbf{C}$  will be  $m \times q$ . Each element  $c_{i,k}$  of matrix  $\mathbf{C}$  is determined by the following sum:

$$
c _ {i, k} = \sum_ {j = 1} ^ {n} a _ {i, j} b _ {j, k}
$$

For example, consider the following product:

$$
\begin{array}{c c} \left[ \begin{array}{l l l} 7 & 4 & 9 \\ 6 & 4 & 1 2 \\ 3 & 2 & 1 7 \end{array} \right] & \left[ \begin{array}{l l} 7 & 6 \\ 5 & 1 \\ 9 & 1 2 \end{array} \right] = \left[ \begin{array}{l l} 1 5 0 & 1 5 4 \\ 1 7 0 & 1 8 4 \\ 1 8 4 & 2 2 4 \end{array} \right] \\ \mathbf {A} & \mathbf {B} \\ & \mathbf {C} \end{array}
$$

If it is possible to multiply two matrices, they are said to be conformable for multiplication. Any matrix can be multiplied by a scalar, where the product is simply each element times the value of the scalar.

Matrix C in the above is found as follows:

$$
\begin{array}{c c} \left[ \begin{array}{l l l} 7 & 4 & 9 \\ 6 & 4 & 1 2 \\ 3 & 2 & 1 7 \end{array} \right] & \left[ \begin{array}{l l} 7 & 6 \\ 5 & 1 \\ 9 & 1 2 \end{array} \right] = \left[ \begin{array}{l l} (7 \cdot 7) + (4 \cdot 5) + (9 \cdot 9) & (7 \cdot 6) + (4 \cdot 1) + (9 \cdot 1 2) \\ (6 \cdot 7) + (4 \cdot 5) + (1 2 \cdot 9) & (6 \cdot 6) + (4 \cdot 1) + (1 2 \cdot 1 2) \\ (3 \cdot 7) + (2 \cdot 5) + (1 7 \cdot 9) & (3 \cdot 6) + (2 \cdot 1) + (1 7 \cdot 1 2) \end{array} \right] \\ \mathbf {A} & \mathbf {B} = \mathbf {C} \end{array}
$$

Note that the number of columns (3) in matrix  $\mathbf{A}$  equals the number of rows in matrix  $\mathbf{B}$ . Also note that the number of rows in matrix  $\mathbf{C}$  equals the number of rows in matrix  $\mathbf{A}$ ; the number of columns in  $\mathbf{C}$  equals the number of columns in matrix  $\mathbf{B}$ .

# Inverting Matrices

An inverse matrix  $\mathbf{A}^{-1}$  exists for the square matrix  $\mathbf{A}$  if the product  $\mathbf{A}^{-1}\mathbf{A}$  or  $\mathbf{A}\mathbf{A}^{-1}$  equals the identity matrix  $\mathbf{I}$ . Consider the following product:

$$
\left[ \begin{array}{l l} 2 & 4 \\ 8 & 1 \end{array} \right] \quad \left[ \begin{array}{l l} \frac {- 1}{3 0} & \frac {2}{1 5} \\ \frac {4}{1 5} & \frac {- 1}{1 5} \end{array} \right] = \left[ \begin{array}{l l} 1 & 0 \\ 0 & 1 \end{array} \right]
$$

One means for finding the inverse matrix  $\mathbf{A}^{-1}$  for matrix  $\mathbf{A}$  is through the use of a process called the Gauss-Jordan Method. This method will be performed on matrix  $\mathbf{A}$  by first augmenting it with the identity matrix as follows:

$$
\left[ \begin{array}{l l l l l} 2 & 4 & \vdots & 1 & 0 \\ 8 & 1 & \vdots & 0 & 1 \end{array} \right] \tag {A}
$$

For the sake of convenience, call the above augmented matrix  $\mathbf{A}$  temporarily. Now, a series of row operations (addition, subtraction, or multiplication of each element in a row) will be performed such that the identity matrix replaces the original matrix  $\mathbf{A}$  (on the left side). The right-side elements will comprise the inverse matrix  $\mathbf{A}^{-1}$ . Thus, in our final augmented matrix, we will have ones along the principal diagonal on the left side and zeros elsewhere; the right side of the matrix will comprise the inverse of  $\mathbf{A}$ . Allowable row operations include the following:

1. Multiply a given row by any constant. Each element in the row must be multiplied by the same constant.  
2. Add a given row to any other row in the matrix. Each element in a row is added to the corresponding element in the same column of another row.  
3. Subtract a given row from any other row in the matrix. Each element in a row is subtracted from the corresponding element in the same column of another row.  
4. Any combination of the above. For example, a row may be multiplied by a constant before it is subtracted from another row.

Our first row operation will serve to replace the upper left corner value with a one. We multiply row 1 in  $\mathbf{A}$  (row  $1A$ ) by 0.5 to obtain the following:

$$
\left[ \begin{array}{c c c c c} 1 & 2 & \vdots & 0. 5 & 0 \\ 8 & 1 & \vdots & 0 & 1 \end{array} \right] 2 A \cdot 0. 5 = 1 B
$$

where row  $1B$  replaces row  $1A$ . Now we obtain a zero in the lower left corner by multiplying row 2 in  $\mathbf{A}$  by  $1/8$  and subtracting the result from our new row 1 to obtain matrix  $\mathbf{B}$  as follows:

$$
\left[ \begin{array}{c c c c c} 1 & 2 & \vdots & 0. 5 & 0 \\ 0 & \frac {1 5}{8} & \vdots & 0. 5 & \frac {- 1}{8} \end{array} \right] \begin{array}{l} 1 A \cdot 0. 5 = 1 B \\ 1 B - (2 A \cdot \frac {1}{8}) = 2 B \end{array} \tag {B}
$$

Next, we obtain a 1 in the lower right corner of the left side of the matrix by multiplying row  $2B$  by 8/15:

$$
\left[ \begin{array}{c c c c c} 1 & 2 & \vdots & 0. 5 & 0 \\ 0 & 1 & \vdots & \frac {4}{1 5} & \frac {- 1}{1 5} \end{array} \right] \begin{array}{c} 1 A \cdot 0. 5 = 1 B \\ 2 B \cdot \frac {8}{1 5} = 2 C \end{array}
$$

We obtain a zero in the upper right corner of the left side matrix by multiplying row 2 above by 2 and subtracting from row 1 in  $\mathbf{B}$ :

$$
\left[ \begin{array}{c c c c c} 1 & 0 & \vdots & \frac {- 1}{3 0} & \frac {2}{1 5} \\ 0 & 1 & \vdots & \frac {4}{1 5} & \frac {- 1}{1 5} \end{array} \right] \begin{array}{l} 1 B - (2 C \cdot 2) = 1 C \\ 2 B \cdot \frac {8}{1 5} = 2 C \end{array} \tag {C}
$$

The left side of augmented matrix  $\mathbf{C}$  is the identity matrix; the right side of  $\mathbf{C}$  is  $\mathbf{A}^{-1}$ . Because matrices cannot be divided as numbers are in arithmetic, one performs an analogous operation by inverting the matrix intended to be the "divisor" and postmultiplying this inverse by the first matrix to obtain a quotient. Thus, instead of dividing  $\mathbf{A}$  by  $\mathbf{B}$  to obtain  $\mathbf{D}$ , one inverts  $\mathbf{B}$  and obtains  $\mathbf{D}$  by the product  $\mathbf{AB}^{-1} = \mathbf{D}$ . This concept is extremely useful for many types of algebraic manipulations.

# Solving Systems of Equations

Matrices can be very useful in arranging systems of equations. Consider, for example, the following system of equations:

$$
\begin{array}{l} 0. 0 5 x _ {1} + 0. 1 2 x _ {2} = 0. 0 5 \\ 0. 1 0 x _ {1} + 0. 3 0 x _ {2} = 0. 0 8 \\ \end{array}
$$

This system of equations can be represented as follows:

$$
\begin{array}{c c} \left[ \begin{array}{c c} 0. 0 5 & 0. 1 2 \\ 0. 1 0 & 0. 3 0 \end{array} \right] & \left[ \begin{array}{c} x _ {1} \\ x _ {2} \end{array} \right] = \left[ \begin{array}{c} 0. 0 5 \\ 0. 0 8 \end{array} \right] \\ \mathbf {C} & \mathbf {x} \quad \mathbf {s} \end{array}
$$

We are not able to divide  $\mathbf{C}$  by  $s$  to obtain  $\mathbf{x}$ ; instead, we invert  $\mathbf{C}$  to obtain  $\mathbf{C}^{-1}$  and multiply it by  $s$  to obtain  $\mathbf{x}$ :

$$
\mathbf {C} ^ {- 1} \mathbf {s} = \mathbf {x}
$$

Therefore, to solve for vector  $\mathbf{x}$ , we first invert  $\mathbf{C}$  by augmenting it with the identity matrix:

$$
\left[ \begin{array}{l l l l l} 0. 0 5 & 0. 1 2 & \vdots & 1 & 0 \\ 0. 1 0 & 0. 3 0 & \vdots & 0 & 1 \end{array} \right] \tag {A}
$$

$$
\left[ \begin{array}{l l l l l} 1 & 2. 4 & \vdots & 2 0 & 0 \\ 0 & 0. 6 & \vdots & - 2 0 & 1 0 \end{array} \right] R o w B 1 = A 1 \cdot 2 0 \tag {B}
$$

$$
\left[ \begin{array}{c c c c c} 1 & 0 & \vdots & 1 0 0 & - 4 0 \\ 0 & 1 & \vdots & \frac {- 1 0 0}{3} & \frac {5 0}{3} \end{array} \right] \quad \begin{array}{l} R o w C 1 0 = B 1 + - (2. 4 \cdot C 2) \\ R o w C 2 = B 2 \cdot 5 / 3 \end{array} \tag {C}
$$

$$
\begin{array}{c c} \mathbf {I} & \mathbf {C} ^ {- 1} \end{array}
$$

Thus, we obtain vector  $\mathbf{x}$  with the following product:

$$
\left[ \begin{array}{l l} 1 0 0 & - 4 0 \\ \frac {- 1 0 0}{3} & \frac {5 0}{3} \end{array} \right] \quad \left[ \begin{array}{l} 0. 0 5 \\ 0. 0 8 \end{array} \right] = \left[ \begin{array}{l} x _ {1} \\ x _ {2} \end{array} \right] = \left[ \begin{array}{l} 1. 8 \\ \frac {- 1}{3} \end{array} \right] \tag {D}
$$

$$
\mathbf {C} ^ {- 1} \quad \mathbf {s} = \mathbf {x} = \mathbf {x}
$$

Thus, we find that  $x_{1} = 1.8$  and  $x_{2} = -1 / 3$ .

# A.3 DERIVATIVES OF POLYNOMIALS

The derivative from calculus can be used to determine rates of change or slopes. They are also useful for finding function maxima and minima. For those functions whose slopes are constantly changing, the derivative is an instantaneous rate of change; that is, the change in  $y$  induced by the "tiniest" change in  $x$ . Assume that  $y$  is given as a function of variable  $x$ . If  $x$  were to increase by a small (infinitesimal—that is, approaching, though not quite, equal to zero) amount  $h$ , by how much would  $y$  change? This rate of change is given by the derivative of  $y$  with respect to  $x$ , which is defined as follows:

$$
\frac {d y}{d x} = f ^ {\prime} (x) = \lim  _ {h \rightarrow 0} \frac {f (x + h) - f (x)}{h}
$$

One type of function that appears regularly in finance is the polynomial function. This type of function defines variable  $y$  in terms of a coefficient  $c$  (or series of coefficients  $c_{j}$ ), variable  $x$  (or series of variables  $x_{j}$ ), and an exponent  $n$  (or series of exponents  $n_{j}$ ). Strictly speaking, the exponents in a polynomial equation must be non-negative integers; however, the rules that we discuss here still apply when the exponents assume negative or noninteger values. Where there exists one coefficient, one variable, and one exponent, the polynomial function is written as follows:

$$
y = c \cdot x ^ {n}
$$

For example, let  $c = 7$  and  $n = 4$ . Thus, our polynomial is written as follows:  $y = 7x^4$ . The derivative of  $y$  with respect to  $x$  is given by the following function:

$$
\frac {d y}{d x} = c \cdot n \cdot x ^ {n - 1}
$$

Taking the derivative of  $y$  with respect to  $x$  in our example, we obtain  $dy / dx = 7 \times 4 \times x^{4 - 1} = 28x^3$ . Note that this derivative is always positive when  $x > 0$ ; thus the slope of this curve is always positive when  $x > 0$ . Consider a second polynomial with more than one term (  $m$  terms total). In this second case, there will be one variable  $x$ ,  $m$  coefficients  $(c_j)$ , and  $m$  exponents  $(n_j)$ :

$$
y = \sum_ {j = 1} ^ {m} c _ {j} \cdot x ^ {n _ {j}}
$$

The derivative of such a function  $y$  with respect to  $x$  is given by:

$$
\frac {d y}{d x} = \sum_ {j = 1} ^ {m} c _ {j} \cdot n _ {j} \cdot x ^ {n _ {j} - 1}
$$

That is, simply take the derivative of each term in  $y$  with respect to  $x$  and sum these derivatives. Consider a second example, a second-order (the largest exponent is 2) polynomial function given by  $y = 5x^2 - 3x + 2$ . The derivative of this function with respect to  $x$  is:  $dy/dx = 10x - 3$ . This derivative is positive when  $x > 0.3$ , negative when  $x < 0.3$ , and zero when  $x = 0.3$ . Thus, when  $dy/dx > 0$ ,  $y$  increases as  $x$  increases; when  $dy/dx < 0$ ,  $y$  decreases as  $x$  increases; and when  $dy/dx = 0$ ,  $y$  may be either minimized or maximized. Also note that  $y$  is minimized when  $x = 0.3$ ; at this point,  $dy/dx = 0$ .

As suggested above, derivatives can often be used to find minimum and maximum values of functions. To find the minimum value of  $y$  in function  $y = 5x^{2} - 3x + 2$ , we set the first derivative of  $y$  with respect to  $x$  equal to zero and then solve for  $x$ . For our example, the minimum is found as follows:

$$
1 0 x - 3 = 0
$$

$$
1 0 x = 3
$$

$$
x = \frac {3}{1 0}
$$

In order to ensure that we have found a minimum (rather than a maximum), we check the second derivative. The second derivative is found by taking the derivative of the first derivative. If the second derivative is greater than zero, we have a minimum value for  $y$  (the function is concave up). When the second derivative is less than zero, we have a maximum (the function is concave down). If the second derivative is zero, we have neither a minimum nor a maximum. The second derivative in the above example is given by  $d^2 y / dx^2 = 10$ , also written  $f''(x) = 10$ . Since the second derivative 10 is greater than zero, we have found a minimum value for  $y$ . In many cases, more than one "local" minimum or maximum value will exist.

Consider a third example where our second order polynomial is given:  $y = -7x^{2} + 4x + 5$ . The first derivative is  $dy / dx = -14x + 4$ . Setting the first derivative equal to zero, we find our maximum as follows:

$$
\begin{array}{l} - 1 4 x + 4 = 0 \\ - 1 4 x = - 4 \\ x \quad = \frac {4}{1 4} \\ \end{array}
$$

We check second-order conditions (the second derivative) to ensure that this is a maximum. The second derivative is  $\frac{d^2y}{dx^2} = -14$ . Since  $-14$  is less than zero, we have a maximum at  $x = 4 / 14$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/a42f2bfd-72f6-43db-be08-2f66d5516934/0cee5fc5b82adf84c57423ee825a9c9ebcd3e85c93a891a9921fd19ffa396c12.jpg)  
0

TABLE A.1 Normal Distribution,  $z$  -values  

<table><tr><td>z</td><td>0.00</td><td>0.01</td><td>0.02</td><td>0.03</td><td>0.04</td><td>0.05</td><td>0.06</td><td>0.07</td><td>0.08</td><td>0.09</td></tr><tr><td>0.0</td><td>0.0000</td><td>0.0040</td><td>0.0080</td><td>0.0120</td><td>0.0159</td><td>0.0199</td><td>0.0239</td><td>0.0279</td><td>0.0319</td><td>0.0358</td></tr><tr><td>0.1</td><td>0.0398</td><td>0.0438</td><td>0.0478</td><td>0.0517</td><td>0.0557</td><td>0.0596</td><td>0.0636</td><td>0.0675</td><td>0.0714</td><td>0.0753</td></tr><tr><td>0.2</td><td>0.0793</td><td>0.0832</td><td>0.0871</td><td>0.0909</td><td>0.0948</td><td>0.0987</td><td>0.1026</td><td>0.1064</td><td>0.1103</td><td>0.1141</td></tr><tr><td>0.3</td><td>0.1179</td><td>0.1217</td><td>0.1255</td><td>0.1293</td><td>0.1331</td><td>0.1368</td><td>0.1406</td><td>0.1443</td><td>0.1480</td><td>0.1517</td></tr><tr><td>0.4</td><td>0.1554</td><td>0.1591</td><td>0.1628</td><td>0.1664</td><td>0.1700</td><td>0.1736</td><td>0.1772</td><td>0.1808</td><td>0.1844</td><td>0.1879</td></tr><tr><td>0.5</td><td>0.1915</td><td>0.1950</td><td>0.1985</td><td>0.2019</td><td>0.2054</td><td>0.2088</td><td>0.2123</td><td>0.2157</td><td>0.2190</td><td>0.2224</td></tr><tr><td>0.6</td><td>0.2257</td><td>0.2291</td><td>0.2324</td><td>0.2356</td><td>0.2389</td><td>0.2421</td><td>0.2454</td><td>0.2486</td><td>0.2517</td><td>0.2549</td></tr><tr><td>0.7</td><td>0.2580</td><td>0.2611</td><td>0.2642</td><td>0.2673</td><td>0.2703</td><td>0.2734</td><td>0.2764</td><td>0.2793</td><td>0.2823</td><td>0.2852</td></tr><tr><td>0.8</td><td>0.2881</td><td>0.2910</td><td>0.2939</td><td>0.2967</td><td>0.2995</td><td>0.3023</td><td>0.3051</td><td>0.3078</td><td>0.3106</td><td>0.3133</td></tr><tr><td>0.9</td><td>0.3159</td><td>0.3186</td><td>0.3212</td><td>0.3238</td><td>0.3264</td><td>0.3289</td><td>0.3315</td><td>0.3340</td><td>0.3365</td><td>0.3389</td></tr><tr><td>1.0</td><td>0.3413</td><td>0.3437</td><td>0.3461</td><td>0.3485</td><td>0.3508</td><td>0.3531</td><td>0.3554</td><td>0.3577</td><td>0.3599</td><td>0.3621</td></tr><tr><td>1.1</td><td>0.3643</td><td>0.3665</td><td>0.3686</td><td>0.3708</td><td>0.3729</td><td>0.3749</td><td>0.3770</td><td>0.3790</td><td>0.3810</td><td>0.3830</td></tr><tr><td>1.2</td><td>0.3849</td><td>0.3869</td><td>0.3888</td><td>0.3906</td><td>0.3925</td><td>0.3943</td><td>0.3962</td><td>0.3980</td><td>0.3997</td><td>0.4015</td></tr><tr><td>1.3</td><td>0.4032</td><td>0.4049</td><td>0.4066</td><td>0.4082</td><td>0.4099</td><td>0.4115</td><td>0.4131</td><td>0.4147</td><td>0.4162</td><td>0.4177</td></tr><tr><td>1.4</td><td>0.4192</td><td>0.4207</td><td>0.4222</td><td>0.4236</td><td>0.4251</td><td>0.4265</td><td>0.4279</td><td>0.4292</td><td>0.4306</td><td>0.4319</td></tr><tr><td>1.5</td><td>0.4332</td><td>0.4345</td><td>0.4357</td><td>0.4370</td><td>0.4382</td><td>0.4394</td><td>0.4406</td><td>0.4418</td><td>0.4429</td><td>0.4441</td></tr><tr><td>1.6</td><td>0.4452</td><td>0.4463</td><td>0.4474</td><td>0.4484</td><td>0.4495</td><td>0.4505</td><td>0.4515</td><td>0.4525</td><td>0.4535</td><td>0.4545</td></tr><tr><td>1.7</td><td>0.4554</td><td>0.4564</td><td>0.4573</td><td>0.4582</td><td>0.4591</td><td>0.4599</td><td>0.4608</td><td>0.4616</td><td>0.4625</td><td>0.4633</td></tr><tr><td>1.8</td><td>0.4641</td><td>0.4649</td><td>0.4656</td><td>0.4664</td><td>0.4671</td><td>0.4678</td><td>0.4686</td><td>0.4693</td><td>0.4699</td><td>0.4706</td></tr><tr><td>1.9</td><td>0.4713</td><td>0.4719</td><td>0.4726</td><td>0.4732</td><td>0.4738</td><td>0.4744</td><td>0.4750</td><td>0.4756</td><td>0.4761</td><td>0.4767</td></tr><tr><td>2.0</td><td>0.4772</td><td>0.4778</td><td>0.4783</td><td>0.4788</td><td>0.4793</td><td>0.4798</td><td>0.4803</td><td>0.4808</td><td>0.4812</td><td>0.4817</td></tr><tr><td>2.1</td><td>0.4821</td><td>0.4826</td><td>0.4830</td><td>0.4834</td><td>0.4838</td><td>0.4842</td><td>0.4846</td><td>0.4850</td><td>0.4854</td><td>0.4857</td></tr><tr><td>2.2</td><td>0.4861</td><td>0.4864</td><td>0.4868</td><td>0.4871</td><td>0.4875</td><td>0.4878</td><td>0.4881</td><td>0.4884</td><td>0.4887</td><td>0.4890</td></tr><tr><td>2.3</td><td>0.4893</td><td>0.4896</td><td>0.4898</td><td>0.4901</td><td>0.4904</td><td>0.4906</td><td>0.4909</td><td>0.4911</td><td>0.4913</td><td>0.4916</td></tr><tr><td>2.4</td><td>0.4918</td><td>0.492</td><td>0.4922</td><td>0.4925</td><td>0.4927</td><td>0.4929</td><td>0.4931</td><td>0.4932</td><td>0.4934</td><td>0.4936</td></tr><tr><td>2.5</td><td>0.4938</td><td>0.4940</td><td>0.4941</td><td>0.4943</td><td>0.4945</td><td>0.4946</td><td>0.4948</td><td>0.4949</td><td>0.4951</td><td>0.4952</td></tr><tr><td>2.6</td><td>0.4953</td><td>0.4955</td><td>0.4956</td><td>0.4957</td><td>0.4959</td><td>0.4960</td><td>0.4961</td><td>0.4962</td><td>0.4963</td><td>0.4964</td></tr><tr><td>2.7</td><td>0.4965</td><td>0.4966</td><td>0.4967</td><td>0.4968</td><td>0.4969</td><td>0.4970</td><td>0.4971</td><td>0.4972</td><td>0.4973</td><td>0.4974</td></tr><tr><td>2.8</td><td>0.4974</td><td>0.4975</td><td>0.4976</td><td>0.4977</td><td>0.4977</td><td>0.4978</td><td>0.4979</td><td>0.4979</td><td>0.4980</td><td>0.4981</td></tr><tr><td>2.9</td><td>0.4981</td><td>0.4982</td><td>0.4982</td><td>0.4983</td><td>0.4984</td><td>0.4984</td><td>0.4985</td><td>0.4985</td><td>0.4986</td><td>0.4986</td></tr><tr><td>3.0</td><td>0.4986</td><td>0.4987</td><td>0.4987</td><td>0.4988</td><td>0.4988</td><td>0.4989</td><td>0.4989</td><td>0.4989</td><td>0.4990</td><td>0.4990</td></tr></table>

TABLE A.2 Student t-Distribution  

<table><tr><td rowspan="2">df</td><td colspan="5">Right Area, α</td></tr><tr><td>0.100</td><td>0.050</td><td>0.025</td><td>0.010</td><td>0.005</td></tr><tr><td>1</td><td>3.078</td><td>6.314</td><td>12.706</td><td>31.821</td><td>63.657</td></tr><tr><td>2</td><td>1.886</td><td>2.920</td><td>4.303</td><td>6.695</td><td>9.925</td></tr><tr><td>3</td><td>1.638</td><td>2.353</td><td>3.182</td><td>4.541</td><td>5.841</td></tr><tr><td>4</td><td>1.533</td><td>2.132</td><td>2.776</td><td>3.747</td><td>4.604</td></tr><tr><td>5</td><td>1.476</td><td>2.015</td><td>2.571</td><td>3.365</td><td>4.032</td></tr><tr><td>6</td><td>1.440</td><td>1.943</td><td>2.447</td><td>3.143</td><td>3.707</td></tr><tr><td>7</td><td>1.415</td><td>1.895</td><td>2.365</td><td>2.998</td><td>3.499</td></tr><tr><td>8</td><td>1.397</td><td>1.860</td><td>2.306</td><td>2.896</td><td>3.355</td></tr><tr><td>9</td><td>1.383</td><td>1.833</td><td>2.262</td><td>2.821</td><td>3.250</td></tr><tr><td>10</td><td>1.372</td><td>1.812</td><td>2.228</td><td>2.764</td><td>3.169</td></tr><tr><td>11</td><td>1.363</td><td>1.796</td><td>2.201</td><td>2.718</td><td>3.106</td></tr><tr><td>12</td><td>1.356</td><td>1.782</td><td>2.179</td><td>2.681</td><td>3.055</td></tr><tr><td>13</td><td>1.350</td><td>1.771</td><td>2.160</td><td>2.650</td><td>3.012</td></tr><tr><td>14</td><td>1.345</td><td>1.761</td><td>2.145</td><td>2.624</td><td>2.977</td></tr><tr><td>15</td><td>1.341</td><td>1.753</td><td>2.131</td><td>2.602</td><td>2.947</td></tr><tr><td>16</td><td>1.337</td><td>1.746</td><td>2.120</td><td>2.583</td><td>2.921</td></tr><tr><td>17</td><td>1.333</td><td>1.740</td><td>2.110</td><td>2.567</td><td>2.898</td></tr><tr><td>18</td><td>1.330</td><td>1.734</td><td>2.101</td><td>2.552</td><td>2.878</td></tr><tr><td>19</td><td>1.328</td><td>1.729</td><td>2.093</td><td>2.539</td><td>2.861</td></tr><tr><td>20</td><td>1.325</td><td>1.725</td><td>2.086</td><td>2.528</td><td>2.845</td></tr><tr><td>21</td><td>1.323</td><td>1.721</td><td>2.080</td><td>2.518</td><td>2.831</td></tr><tr><td>22</td><td>1.321</td><td>1.717</td><td>2.074</td><td>2.508</td><td>2.819</td></tr><tr><td>23</td><td>1.319</td><td>1.714</td><td>2.069</td><td>2.500</td><td>2.807</td></tr><tr><td>24</td><td>1.318</td><td>1.711</td><td>2.064</td><td>2.492</td><td>2.797</td></tr><tr><td>25</td><td>1.316</td><td>1.708</td><td>2.060</td><td>2.485</td><td>2.787</td></tr><tr><td>26</td><td>1.315</td><td>1.706</td><td>2.056</td><td>2.479</td><td>2.779</td></tr><tr><td>27</td><td>1.314</td><td>1.703</td><td>2.052</td><td>2.473</td><td>2.771</td></tr><tr><td>28</td><td>1.313</td><td>1.701</td><td>2.048</td><td>2.467</td><td>2.763</td></tr><tr><td>29</td><td>1.311</td><td>1.699</td><td>2.045</td><td>2.462</td><td>2.756</td></tr><tr><td>30</td><td>1.310</td><td>1.697</td><td>2.042</td><td>2.457</td><td>2.750</td></tr><tr><td>∞</td><td>1.282</td><td>1.645</td><td>1.960</td><td>2.326</td><td>2.576</td></tr></table>

Examples: The  $t$  value for  $\infty$  degrees of freedom that bound a right-tail area of 0.025 is 1.960. The  $t$  value for  $\infty$  degrees of freedom that bound leftand right-tail areas (two tails) summing to 0.05 is 1.960.
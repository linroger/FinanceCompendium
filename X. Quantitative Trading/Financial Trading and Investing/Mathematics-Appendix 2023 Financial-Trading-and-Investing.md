---
title: "Mathematics-Appendix 2023 Financial-Trading-and-Investing"
parent_directory: "X. Quantitative Trading/Financial Trading and Investing"
formatted: 2025-12-20 11:45:00 AM
formatter_model: claude-sonnet-4
cli_tool: opencode
primary_tags:
  - mathematical appendix
  - statistics
  - quantitative finance
secondary_tags:
  - mean variance
  - hypothesis testing
  - ols regression
  - matrix arithmetic
cssclasses: academia
---

# Mathematics-Appendix 2023 Financial-Trading-and-Investing

## A.1 A BRIEF OVERVIEW OF ELEMENTARY STATISTICS

### Mean, Variance, and Standard Deviation

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

### Co-movement Statistics

### Hypothesis Testing

### Hypothesis Testing: Two Populations

### Introduction to Simple OLS Regression

## A.2 ESSENTIALS OF MATRICES AND MATRIX ARITHMETIC

### Matrix Arithmetic

### Multiplication of Matrices

### Inverting Matrices

### Solving Systems of Equations

## A.3 DERIVATIVES OF POLYNOMIALS

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
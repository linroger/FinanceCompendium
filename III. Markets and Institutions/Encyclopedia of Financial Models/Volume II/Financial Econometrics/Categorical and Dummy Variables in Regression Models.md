
# Categorical and Dummy Variables in Regression Models

SERGIO M. FOCARDL, PhD

Partner, The Intertek Group

FRANK J. FABOZZI, PhD, CFA, CPA

Professor of Finance, EDHEC Business School

Abstract: In the application of regression analysis there are many situations where either the dependent variable or one or more of the regressors are categorical variables. When one or more categorical variables are used as regressors, a financial modeler must understand how to code the data, test for the significance of the categorical variables, and, based on the coding, how to interpret the estimated parameters. When the dependent variable is a categorical variable, the model is a probability model.

There are many times in the application of regression analysis when the financial modeler will need to include a categorical variable rather than a continuous variable as a regressor. Categorical variables are variables that represent group membership. For example, given a set of bonds, the rating is a categorical variable that indicates to what category—AA, BB, and so on—each bond belongs. A categorical variable does not have a numerical value or a numerical interpretation in itself. Thus the fact that a bond is in category AA or BB does not, in itself, measure any quantitative characteristic of the bond, though quantitative attributes such as a bond's yield spread can be associated with each category.

In this entry, we will discuss how to deal with regressors that are categorical variables in a regression model. There are also applications where the dependent variable may be a categorical variable. For example, the dependent variable could be bankruptcy or nonbankruptcy of a company over some period of time. In such cases, the product of a regression is a probability. Probability models of this type include linear probability, logit regression, and probit linear models.


# INDEPENDENT CATEGORICAL VARIABLES

Categorical input variables are used to cluster input data into different groups. That is, suppose we are given a set of input-output data and a partition of the data set in a number of subsets  $A_{i}$  so that each data point belongs to one and only one set. The  $A_{i}$  represent a categorical input variable. In financial econometrics categories might represent, for example, different market regimes, economic states, ratings, countries, industries, or sectors.


We cannot, per se, mix quantitative input variables and categorical variables. For example, we cannot sum yield spreads and their ratings. However, we can perform a transformation that allows the mixing of categorical and quantitative variables. Let's see how. Suppose first that there is only one categorical input variable  $D$ , one quantitative input variable  $X$ , and one quantitative output variable  $Y$ . Consider our set of quantitative data, that is, quantitative observations. We organize data in a matrix form as usual:

Suppose data belong to two categories. An explanatory variable that distinguishes only two categories is called a dichotomous variable. The key is to represent a dichotomous categorical variable as a numerical variable  $D$ , called a dummy variable, that can assume the two values 0,1. We can now add the variable  $D$  to the input variables to represent membership in one or the other group:

$$
X = \left[ \begin{array}{c c c} D _ {1} & 1 & X _ {1 1} \\ \vdots & \vdots & \vdots \\ D _ {T} & 1 & X _ {T 1} \end{array} \right]
$$

If  $D_{i} = 0$ , the data  $X_{i}$  belong to the first category; if  $D_{i} = 1$ , the data  $X_{i}$  belong to the second category.

Consider now the regression equation

$$
Y _ {i} = \beta_ {0} + \beta_ {1} X _ {i} + \varepsilon_ {i}
$$

In financial econometric applications, the index  $i$  will be time or a variable that identifies a cross section of assets, such as bond issues. Consider that we can write three separate regression equations, one for those data that correspond to  $D = 1$ , one for those data that correspond to  $D = 0$ , and one for the fully pooled data. Suppose now that the three equations differ by the intercept term but have the same slope. Let's explicitly write the two equations for those data that correspond to  $D = 1$  and for those data that correspond to  $D = 0$ :


$$
\mathrm {y} _ {i} = \left\{ \begin{array}{l l} \beta_ {0 0} + \beta_ {1 X _ {i}} + \varepsilon_ {i}, & \text {i f} D _ {i} = 0 \\ \beta_ {0 1} + \beta_ {1} X _ {i} + \varepsilon_ {i}, & \text {i f} D _ {i} = 1 \end{array} \right.
$$ where  $i$  defines the observations that belong to the first category when the dummy variable  $D$  assumes value 0 and also defines the observations that belong to the second category when the dummy variable  $D$  assumes value 1. If the two categories are recession and expansion, the first equation might hold in periods of expansion and the second in periods of recession. If the two categories are investment-grade bonds and noninvestment-grade bonds, the two equations apply to different cross sections of bonds, as will be illustrated in an example later in this entry.


Observe now that, under the assumption that only the intercept term differs in the two equations, the two equations can be combined into a single equation in the following way:

$$
Y _ {i} = \beta_ {0 0} + \gamma D (i) + \beta_ {1} X _ {i} + \varepsilon_ {i}
$$ where  $\gamma = \beta_{01} - \beta_{00}$  represents the difference of the intercept for the two categories. In this way we have defined a single regression equation with two independent quantitative variables,  $X, D$ , to which we can apply all the usual tools of regression analysis, including the ordinary least squares (OLS) estimation method and all the tests. By estimating the coefficients of this regression, we obtain the common slope and two intercepts. Observe that we would obtain the same result if the categories were inverted. However, the interpretation of the estimated parameter for the categorical variable would differ depending on which category is omitted.


Thus far we have assumed that there is no interaction between the categorical and the quantitative variable, that is, the slope of the regression is the same for the two categories. This means that the effects of variables are additive; that is, the effect of one variable is added regardless of the value taken by the other variable. In many applications, this is an unrealistic assumption.


Using dummy variables, the treatment is the same as that applied to intercepts. Consider the regression equation  $Y_{i} = \beta_{0} + \beta_{1}X_{i} + \varepsilon_{i}$  and write two regression equations for the two categories as we did above:

$$
\mathrm {y} _ {i} = \left\{ \begin{array}{l l} \beta_ {0} + \beta_ {1 0 X _ {i}} + \varepsilon_ {i}, & \text {i f} D _ {i} = 0 \\ \beta_ {0} + \beta_ {1 1 X _ {i}} + \varepsilon_ {i}, & \text {i f} D _ {i} = 1 \end{array} \right.
$$

We can couple these two equations in a single equation as follows:

$$
Y _ {i} = \beta_ {0} + \beta_ {1 0} X _ {i} + \delta \left(D _ {i} X _ {i}\right) + \varepsilon_ {i}
$$ where  $\delta = \beta_{11} - \beta_{10}$ . In fact, the above equation is identical to the first equation for  $D_{i} = 0$  and to the second for  $D_{i} = 1$ . This regression can be estimated with the usual LS methods.


In practice, it is rarely appropriate to consider only interactions and not the intercept, which is the main effect. We call marginalization the fact that the interaction effect is marginal with respect to the main effect. However, we can easily construct a model that combines both effects. In fact we can write the following regression adding two variables, the dummy  $D$  and the interaction  $DX$ :

$$
Y _ {i} = \beta_ {0} + \gamma D _ {i} + \beta_ {1} X _ {i} + \delta \left(D _ {i} X _ {i}\right) + \varepsilon_ {i}
$$

This regression equation, which now includes three regressors, combines both effects.

The above process of introducing dummy variables can be generalized to regressions with multiple variables. Consider the following regression:

$$
Y _ {i} = \beta_ {0} + \sum_ {j = 1} ^ {N} \beta_ {j} X _ {i j} + \varepsilon_ {i}
$$ where data can be partitioned in two categories with the use of a dummy variable:


$$
\mathbf {X} = \left[ \begin{array}{c c c c c} D _ {1} & 1 & X _ {1 1} & \dots & X _ {1 N} \\ \vdots & \vdots & \vdots & \ddots & \vdots \\ D _ {T} & 1 & X _ {T 1} & \dots & X _ {T N} \end{array} \right]
$$

We can introduce the dummy  $D$  as well as its interaction with the  $N$  quantitative variable and thus write the following equation:


$$
Y _ {i} = \beta_ {0} + \gamma_ {i} D _ {i} + \sum_ {j = 1} ^ {N} \beta_ {j} X _ {i j} + \sum_ {j = 1} ^ {N} \delta_ {i j} (D _ {i} X _ {i j}) + \varepsilon_ {i}
$$

The above discussion depends critically on the fact that there are only two categories, a fact that allows one to use the numerical variable 0,1 to identify the two categories. However, the process can be easily extended to multiple categories by adding dummy variables. Suppose there are  $K > 2$  categories. An explanatory variable that distinguishes between more than two categories is called a polytomous variable.

Suppose there are three categories,  $A$ ,  $B$ , and  $C$ . Consider a dummy variable  $D1$  that assumes a value one on the elements of  $A$  and zero on all the others. Let's now add a second dummy variable  $D2$  that assumes the value one on the elements of the category  $B$  and zero on all the others. The three categories are now completely identified:  $A$  is identified by the values 1,0 of the two dummy variables,  $B$  by the values 0,1, and  $C$  by the values 0,0. Note that the values 1,1 do not identify any category. This process can be extended to any number of categories. If there are  $K$  categories, we need  $K - 1$  dummy variables.

How can we determine if a given categorization is useful? It is quite obvious that many categorizations will be totally useless for the purpose of any econometric regression. If we categorize bonds in function of the color of the logo of the issuer, it is quite obvious that we obtain meaningless results. In other cases, however, distinctions can be subtle and important. Consider the question of market regime shifts or structural breaks. These are delicate questions that can be addressed only with appropriate statistical tests.

A word of caution about statistical tests is in order. Statistical tests typically work under the assumptions of the model and might be misleading if these assumptions are violated. If we try to fit a linear model to a process that is inherently nonlinear, tests might be misleading. It is good practice to use several tests and to be particularly attentive to inconsistencies between test results. Inconsistencies signal potential problems in applying tests, typically model misspecification.


The  $t$ -statistic applied to the regression coefficients of dummy variables offer a set of important tests to judge which regressors are significant. The  $t$ -statistics are the coefficients divided by their respective squared errors. The  $p$ -value associated with each coefficient estimate is the probability of the hypothesis that the corresponding coefficient is zero, that is, that the corresponding variable is irrelevant.

We can also use the  $F$ -test to test the significance of each specific dummy variable. To do so we can run the regression with and without that variable and form the corresponding  $F$ -test. The Chow test is the  $F$ -test to gauge if all the dummy variables are collectively irrelevant (see Chow, 1960). The Chow test is an  $F$ -test of mutual exclusion, written as follows:

$$
F = \frac {[ S S R - (S S R _ {1} + S S R _ {2}) ]}{S S R _ {1} + S S R _ {2}} \frac {[ n - 2 (k + 1) ]}{k + 1}
$$ where


$SSR_{1} =$  the squared sum of residuals of the regression run with data in the first category without dummy variables

$SSR_{2} =$  the squared sum of residuals of the regression run with data in the second category without dummy variables

SSR = the squared sum of residuals of the regression run with fully pooled data without dummy variables

Observe that  $SSR_{1} + SSR_{2}$  is equal to the squared sum of residuals of the regression run on fully pooled data but with dummy variables. Thus the Chow test is the  $F$ -test of the unrestricted regressions with and without dummy variables.

# Illustration: Predicting Corporate Bond Yield Spreads

To illustrate the use of dummy variables, we will estimate a model to predict corporate bond spreads. The regression is relative to a cross section of bonds. The regression equation is the following:

$$
\begin{array}{l} \operatorname {S p r e a d} _ {i} = \beta_ {0} + \beta_ {1} \text {C o u p o n} _ {i} + \beta_ {2} \text {C o v e r a g e R a t i o} _ {i} \\ + \beta_ {3} \text {L o g g e d E B I T} _ {i} + \varepsilon_ {i} \\ \end{array}
$$ where


$\mathrm{Spread}_i =$  option-adjusted spread (in basis points) for the bond issue of company  $i$

[ \text{Coupon}_i = \frac{\text{coupon rate for the bond of company } i, \text{expressed without considering percentage sign (i.e.,} 7.5\% = 7.5)} ]

$\text{CoverageRatio}_i = \frac{\text{earnings before interest, taxes, depreciation and amortization (EBITDA) divided by interest expense}}{for company i}$

[ \text{LoggedEBIT}_i = \frac{\text{logarithm of earnings}}{(\text{earnings before interest and taxes, EBIT, in millions of dollars})} ] for company  $i$

The dependent variable, Spread, is not measured by the typically nominal spread but by the option-adjusted spread. This spread measure adjusts for any embedded options in a bond (see Chapter 6 in Fabozzi, 2006).

Theory would suggest the following properties for the estimated coefficients:

- The higher the coupon rate, the greater the issuer's default risk and hence the larger the spread. Therefore, a positive coefficient for the coupon rate is expected.
- A coverage ratio is a measure of a company's ability to satisfy fixed obligations, such as interest, principal repayment, or lease payments. There are various coverage ratios. The one used in this illustration is the ratio of the earnings before interest, taxes, depreciation, and amortization (EBITDA) divided by interest expense. Since the higher the coverage ratio the lower the default risk, an inverse relationship is expected between the spread and the coverage ratio; that is, the estimated coefficient for the coverage ratio is expected to be negative.


- There are various measures of earnings reported in financial statements. Earnings in this illustration is defined as the trailing 12-months earnings before interest and taxes (EBIT). Holding other factors constant, it is expected that the larger the EBIT, the lower the default risk and therefore an inverse relationship (negative coefficient) is expected.

We used 100 observations at two different dates,  $6/6/05$  and  $11/28/05$ ; thus there are 200 observations in total. This will allow us to test if there is a difference in the spread regression for investment-grade and noninvestment grade bonds using all observations. We will then test to see if there is any structural break between the two dates. We organize the data in matrix form as usual. Data are shown in Table 1. The second column indicates that data belong to two categories and suggests the use of one dummy variable. Another dummy variable is used later to distinguish between the two dates. Let's first estimate the regression equation for the fully pooled data, that is, all data without any distinction in categories. The estimated coefficients for the model and their corresponding  $t$ -statistics are shown below:

<table><tr><td>Coefficient</td><td>Estimated Coefficient</td><td>Standard Error</td><td>t-statistic</td><td>p-value</td></tr><tr><td>β0</td><td>157.01</td><td>89.56</td><td>1.753</td><td>0.081</td></tr><tr><td>β1</td><td>61.27</td><td>8.03</td><td>7.630</td><td>9.98E-13</td></tr><tr><td>β2</td><td>-13.20</td><td>2.27</td><td>-5.800</td><td>2.61E-08</td></tr><tr><td>β3</td><td>-90.88</td><td>16.32</td><td>-5.568</td><td>8.41E-08</td></tr></table>

Other regression results are:

SSR: 2.3666e + 006

$F$  -statistic: 89.38

$p$  -value: 0

$R^2$ : 0.57

Given the high value of the  $F$ -statistic and the  $p$ -value close to zero, the regression is significant. The coefficient for the three regressors is statistically significant and has the expected sign. However, the intercept term is not statistically significant. The residuals are given in the first column of Table 2.

Let's now analyze if we obtain a better fit if we consider the two categories of investment-grade and below investment-grade bonds. It should be emphasized that this is only an exercise to show the application of regression analysis. The conclusions we reach are not meaningful from an econometric point of view given the small size of the database. The new equation is written as follows:

$$
\begin{array}{l} \operatorname {S p r e a d} _ {i} = \beta_ {0} + \beta_ {1} D 1 _ {i} + \beta_ {2} \text {C o u p o n} _ {i} \\ + \beta_ {3} D 1 _ {i} \text {C o u p o n} _ {i} + \beta_ {4} \text {C o v e r a g e R a t i o} _ {i} \\ + \beta_ {5} D 1 _ {i} \text {C o v e r a g e R a t i o} _ {i} + \beta_ {6} \text {L o g g e d E B I T} _ {i} \\ + \beta_ {7} D 1 _ {i} \text {L o g g e d E B I T} _ {i} + \varepsilon_ {i} \\ \end{array}
$$

There are now seven variables and eight parameters to estimate. The estimated model coefficients and the  $t$ -statistics are shown below:

<table><tr><td>Coefficient</td><td>Estimated Coefficient</td><td>Standard Error</td><td>t-statistic</td><td>p-value</td></tr><tr><td>β0</td><td>284.52</td><td>73.63</td><td>3.86</td><td>0.00</td></tr><tr><td>β1</td><td>597.88</td><td>478.74</td><td>1.25</td><td>0.21</td></tr><tr><td>β2</td><td>37.12</td><td>7.07</td><td>5.25</td><td>3.96E-07</td></tr><tr><td>β3</td><td>-45.54</td><td>38.77</td><td>-1.17</td><td>0.24</td></tr><tr><td>β4</td><td>-10.33</td><td>1.84</td><td>-5.60</td><td>7.24E-08</td></tr><tr><td>β5</td><td>50.13</td><td>40.42</td><td>1.24</td><td>0.22</td></tr><tr><td>β6</td><td>-83.76</td><td>13.63</td><td>-6.15</td><td>4.52E-09</td></tr><tr><td>β7</td><td>-0.24</td><td>62.50</td><td>-0.00</td><td>1.00</td></tr></table>

Other regression results are:

SSR:  $1.4744\mathrm{e} + 006$

$F$  -statistic: 76.83

$p$  -value: 0

$R^2$  : 0.73

The Chow test has the value 16.60. The  $F$ -statistic and the Chow test suggest that the use of dummy variables has greatly improved the goodness of fit of the regression, even after compensating for the increase in the number of

Table 1 Regression Data for the Bond Spread Application: 11/28/2005 and 06/06/2005

<table><tr><td>Issue #</td><td>Spread, 11/28/05</td><td>CCC+ and Below</td><td>Coupon</td><td>Coverage Ratio</td><td>Logged EBIT</td><td>Spread, 6/6/05</td><td>CCC+ and Below</td><td>Coupon</td><td>Coverage Ratio</td><td>Logged EBIT</td></tr><tr><td>1</td><td>509</td><td>0</td><td>7.400</td><td>2.085</td><td>2.121</td><td>473</td><td>0</td><td>7.400</td><td>2.087</td><td>2.111</td></tr><tr><td>2</td><td>584</td><td>0</td><td>8.500</td><td>2.085</td><td>2.121</td><td>529</td><td>0</td><td>8.500</td><td>2.087</td><td>2.111</td></tr><tr><td>3</td><td>247</td><td>0</td><td>8.375</td><td>9.603</td><td>2.507</td><td>377</td><td>0</td><td>8.375</td><td>5.424</td><td>2.234</td></tr><tr><td>4</td><td>73</td><td>0</td><td>6.650</td><td>11.507</td><td>3.326</td><td>130</td><td>0</td><td>6.650</td><td>9.804</td><td>3.263</td></tr><tr><td>5</td><td>156</td><td>0</td><td>7.125</td><td>11.507</td><td>3.326</td><td>181</td><td>0</td><td>7.125</td><td>9.804</td><td>3.263</td></tr><tr><td>6</td><td>240</td><td>0</td><td>7.250</td><td>2.819</td><td>2.149</td><td>312</td><td>0</td><td>7.250</td><td>2.757</td><td>2.227</td></tr><tr><td>7</td><td>866</td><td>1</td><td>9.000</td><td>1.530</td><td>2.297</td><td>852</td><td>1</td><td>9.000</td><td>1.409</td><td>1.716</td></tr><tr><td>8</td><td>275</td><td>0</td><td>5.950</td><td>8.761</td><td>2.250</td><td>227</td><td>0</td><td>5.950</td><td>11.031</td><td>2.166</td></tr><tr><td>9</td><td>515</td><td>0</td><td>8.000</td><td>2.694</td><td>2.210</td><td>480</td><td>0</td><td>8.000</td><td>2.651</td><td>2.163</td></tr><tr><td>10</td><td>251</td><td>0</td><td>7.875</td><td>8.289</td><td>1.698</td><td>339</td><td>0</td><td>7.875</td><td>8.231</td><td>1.951</td></tr><tr><td>11</td><td>507</td><td>0</td><td>9.375</td><td>2.131</td><td>2.113</td><td>452</td><td>0</td><td>9.375</td><td>2.039</td><td>2.042</td></tr><tr><td>12</td><td>223</td><td>0</td><td>7.750</td><td>4.040</td><td>2.618</td><td>237</td><td>0</td><td>7.750</td><td>3.715</td><td>2.557</td></tr><tr><td>13</td><td>71</td><td>0</td><td>7.250</td><td>7.064</td><td>2.348</td><td>90</td><td>0</td><td>7.250</td><td>7.083</td><td>2.296</td></tr><tr><td>14</td><td>507</td><td>0</td><td>8.000</td><td>2.656</td><td>1.753</td><td>556</td><td>0</td><td>8.000</td><td>2.681</td><td>1.797</td></tr><tr><td>15</td><td>566</td><td>1</td><td>9.875</td><td>1.030</td><td>1.685</td><td>634</td><td>1</td><td>9.875</td><td>1.316</td><td>1.677</td></tr><tr><td>16</td><td>213</td><td>0</td><td>7.500</td><td>11.219</td><td>3.116</td><td>216</td><td>0</td><td>7.500</td><td>10.298</td><td>2.996</td></tr><tr><td>17</td><td>226</td><td>0</td><td>6.875</td><td>11.219</td><td>3.116</td><td>204</td><td>0</td><td>6.875</td><td>10.298</td><td>2.996</td></tr><tr><td>18</td><td>192</td><td>0</td><td>7.750</td><td>11.219</td><td>3.116</td><td>201</td><td>0</td><td>7.750</td><td>10.298</td><td>2.996</td></tr><tr><td>19</td><td>266</td><td>0</td><td>6.250</td><td>3.276</td><td>2.744</td><td>298</td><td>0</td><td>6.250</td><td>3.107</td><td>2.653</td></tr><tr><td>20</td><td>308</td><td>0</td><td>9.250</td><td>3.276</td><td>2.744</td><td>299</td><td>0</td><td>9.250</td><td>3.107</td><td>2.653</td></tr><tr><td>21</td><td>263</td><td>0</td><td>7.750</td><td>2.096</td><td>1.756</td><td>266</td><td>0</td><td>7.750</td><td>2.006</td><td>3.038</td></tr><tr><td>22</td><td>215</td><td>0</td><td>7.190</td><td>7.096</td><td>3.469</td><td>259</td><td>0</td><td>7.190</td><td>6.552</td><td>3.453</td></tr><tr><td>23</td><td>291</td><td>0</td><td>7.690</td><td>7.096</td><td>3.469</td><td>315</td><td>0</td><td>7.690</td><td>6.552</td><td>3.453</td></tr><tr><td>24</td><td>324</td><td>0</td><td>8.360</td><td>7.096</td><td>3.469</td><td>331</td><td>0</td><td>8.360</td><td>6.552</td><td>3.453</td></tr><tr><td>25</td><td>272</td><td>0</td><td>6.875</td><td>8.612</td><td>1.865</td><td>318</td><td>0</td><td>6.875</td><td>9.093</td><td>2.074</td></tr><tr><td>26</td><td>189</td><td>0</td><td>8.000</td><td>4.444</td><td>2.790</td><td>209</td><td>0</td><td>8.000</td><td>5.002</td><td>2.756</td></tr><tr><td>27</td><td>383</td><td>0</td><td>7.375</td><td>2.366</td><td>2.733</td><td>417</td><td>0</td><td>7.375</td><td>2.375</td><td>2.727</td></tr><tr><td>28</td><td>207</td><td>0</td><td>7.000</td><td>2.366</td><td>2.733</td><td>200</td><td>0</td><td>7.000</td><td>2.375</td><td>2.727</td></tr><tr><td>29</td><td>212</td><td>0</td><td>6.900</td><td>4.751</td><td>2.847</td><td>235</td><td>0</td><td>6.900</td><td>4.528</td><td>2.822</td></tr><tr><td>30</td><td>246</td><td>0</td><td>7.500</td><td>19.454</td><td>2.332</td><td>307</td><td>0</td><td>7.500</td><td>16.656</td><td>2.181</td></tr><tr><td>31</td><td>327</td><td>0</td><td>6.625</td><td>3.266</td><td>2.475</td><td>365</td><td>0</td><td>6.625</td><td>2.595</td><td>2.510</td></tr><tr><td>32</td><td>160</td><td>0</td><td>7.150</td><td>3.266</td><td>2.475</td><td>237</td><td>0</td><td>7.150</td><td>2.595</td><td>2.510</td></tr><tr><td>33</td><td>148</td><td>0</td><td>6.300</td><td>3.266</td><td>2.475</td><td>253</td><td>0</td><td>6.300</td><td>2.595</td><td>2.510</td></tr><tr><td>34</td><td>231</td><td>0</td><td>6.625</td><td>3.266</td><td>2.475</td><td>281</td><td>0</td><td>6.625</td><td>2.595</td><td>2.510</td></tr><tr><td>35</td><td>213</td><td>0</td><td>6.690</td><td>3.266</td><td>2.475</td><td>185</td><td>0</td><td>6.690</td><td>2.595</td><td>2.510</td></tr><tr><td>36</td><td>350</td><td>0</td><td>7.130</td><td>3.266</td><td>2.475</td><td>379</td><td>0</td><td>7.130</td><td>2.595</td><td>2.510</td></tr><tr><td>37</td><td>334</td><td>0</td><td>6.875</td><td>4.310</td><td>2.203</td><td>254</td><td>0</td><td>6.875</td><td>5.036</td><td>2.155</td></tr><tr><td>38</td><td>817</td><td>1</td><td>8.625</td><td>1.780</td><td>1.965</td><td>635</td><td>0</td><td>8.625</td><td>1.851</td><td>1.935</td></tr><tr><td>39</td><td>359</td><td>0</td><td>7.550</td><td>2.951</td><td>3.078</td><td>410</td><td>0</td><td>7.550</td><td>2.035</td><td>3.008</td></tr><tr><td>40</td><td>189</td><td>0</td><td>6.500</td><td>8.518</td><td>2.582</td><td>213</td><td>0</td><td>6.500</td><td>13.077</td><td>2.479</td></tr><tr><td>41</td><td>138</td><td>0</td><td>6.950</td><td>25.313</td><td>2.520</td><td>161</td><td>0</td><td>6.950</td><td>24.388</td><td>2.488</td></tr><tr><td>42</td><td>351</td><td>0</td><td>9.500</td><td>3.242</td><td>1.935</td><td>424</td><td>0</td><td>9.500</td><td>2.787</td><td>1.876</td></tr><tr><td>43</td><td>439</td><td>0</td><td>8.250</td><td>2.502</td><td>1.670</td><td>483</td><td>0</td><td>8.250</td><td>2.494</td><td>1.697</td></tr><tr><td>44</td><td>347</td><td>0</td><td>7.700</td><td>4.327</td><td>3.165</td><td>214</td><td>0</td><td>7.700</td><td>4.276</td><td>3.226</td></tr><tr><td>45</td><td>390</td><td>0</td><td>7.750</td><td>4.327</td><td>3.165</td><td>260</td><td>0</td><td>7.750</td><td>4.276</td><td>3.226</td></tr><tr><td>46</td><td>149</td><td>0</td><td>8.000</td><td>4.327</td><td>3.165</td><td>189</td><td>0</td><td>8.000</td><td>4.276</td><td>3.226</td></tr><tr><td>47</td><td>194</td><td>0</td><td>6.625</td><td>4.430</td><td>3.077</td><td>257</td><td>0</td><td>6.625</td><td>4.285</td><td>2.972</td></tr><tr><td>48</td><td>244</td><td>0</td><td>8.500</td><td>4.430</td><td>3.077</td><td>263</td><td>0</td><td>8.500</td><td>4.285</td><td>2.972</td></tr><tr><td>49</td><td>566</td><td>1</td><td>10.375</td><td>2.036</td><td>1.081</td><td>839</td><td>1</td><td>10.375</td><td>2.032</td><td>1.014</td></tr><tr><td>50</td><td>185</td><td>0</td><td>6.300</td><td>7.096</td><td>3.469</td><td>236</td><td>0</td><td>6.300</td><td>6.552</td><td>3.453</td></tr><tr><td>51</td><td>196</td><td>0</td><td>6.375</td><td>7.096</td><td>3.469</td><td>221</td><td>0</td><td>6.375</td><td>6.552</td><td>3.453</td></tr><tr><td>52</td><td>317</td><td>0</td><td>6.625</td><td>3.075</td><td>2.587</td><td>389</td><td>0</td><td>6.625</td><td>2.785</td><td>2.551</td></tr><tr><td>53</td><td>330</td><td>0</td><td>8.250</td><td>3.075</td><td>2.587</td><td>331</td><td>0</td><td>8.250</td><td>2.785</td><td>2.551</td></tr></table>

Table 1 (Continued)

<table><tr><td>Issue #</td><td>Spread, 11/28/05</td><td>CCC+ and Below</td><td>Coupon</td><td>Coverage Ratio</td><td>Logged EBIT</td><td>Spread, 6/6/05</td><td>CCC+ and Below</td><td>Coupon</td><td>Coverage Ratio</td><td>Logged EBIT</td></tr><tr><td>54</td><td>159</td><td>0</td><td>6.875</td><td>8.286</td><td>3.146</td><td>216</td><td>0</td><td>6.875</td><td>7.210</td><td>3.098</td></tr><tr><td>55</td><td>191</td><td>0</td><td>7.125</td><td>8.286</td><td>3.146</td><td>257</td><td>0</td><td>7.125</td><td>7.210</td><td>3.098</td></tr><tr><td>56</td><td>148</td><td>0</td><td>7.375</td><td>8.286</td><td>3.146</td><td>117</td><td>0</td><td>7.375</td><td>7.210</td><td>3.098</td></tr><tr><td>57</td><td>112</td><td>0</td><td>7.600</td><td>8.286</td><td>3.146</td><td>151</td><td>0</td><td>7.600</td><td>7.210</td><td>3.098</td></tr><tr><td>58</td><td>171</td><td>0</td><td>7.650</td><td>8.286</td><td>3.146</td><td>221</td><td>0</td><td>7.650</td><td>7.210</td><td>3.098</td></tr><tr><td>59</td><td>319</td><td>0</td><td>7.375</td><td>3.847</td><td>1.869</td><td>273</td><td>0</td><td>7.375</td><td>4.299</td><td>1.860</td></tr><tr><td>60</td><td>250</td><td>0</td><td>7.375</td><td>12.656</td><td>2.286</td><td>289</td><td>0</td><td>7.375</td><td>8.713</td><td>2.364</td></tr><tr><td>61</td><td>146</td><td>0</td><td>5.500</td><td>5.365</td><td>3.175</td><td>226</td><td>0</td><td>5.500</td><td>5.147</td><td>3.190</td></tr><tr><td>62</td><td>332</td><td>0</td><td>6.450</td><td>5.365</td><td>3.175</td><td>345</td><td>0</td><td>6.450</td><td>5.147</td><td>3.190</td></tr><tr><td>63</td><td>354</td><td>0</td><td>6.500</td><td>5.365</td><td>3.175</td><td>348</td><td>0</td><td>6.500</td><td>5.147</td><td>3.190</td></tr><tr><td>64</td><td>206</td><td>0</td><td>6.625</td><td>7.140</td><td>2.266</td><td>261</td><td>0</td><td>6.625</td><td>5.596</td><td>2.091</td></tr><tr><td>65</td><td>558</td><td>0</td><td>7.875</td><td>2.050</td><td>2.290</td><td>455</td><td>0</td><td>7.875</td><td>2.120</td><td>2.333</td></tr><tr><td>66</td><td>190</td><td>0</td><td>6.000</td><td>2.925</td><td>3.085</td><td>204</td><td>0</td><td>6.000</td><td>3.380</td><td>2.986</td></tr><tr><td>67</td><td>232</td><td>0</td><td>6.750</td><td>2.925</td><td>3.085</td><td>244</td><td>0</td><td>6.750</td><td>3.380</td><td>2.986</td></tr><tr><td>68</td><td>913</td><td>1</td><td>11.250</td><td>2.174</td><td>1.256</td><td>733</td><td>0</td><td>11.250</td><td>2.262</td><td>1.313</td></tr><tr><td>69</td><td>380</td><td>0</td><td>9.750</td><td>4.216</td><td>1.465</td><td>340</td><td>0</td><td>9.750</td><td>4.388</td><td>1.554</td></tr><tr><td>70</td><td>174</td><td>0</td><td>6.500</td><td>4.281</td><td>2.566</td><td>208</td><td>0</td><td>6.500</td><td>4.122</td><td>2.563</td></tr><tr><td>71</td><td>190</td><td>0</td><td>7.450</td><td>10.547</td><td>2.725</td><td>173</td><td>0</td><td>7.450</td><td>8.607</td><td>2.775</td></tr><tr><td>72</td><td>208</td><td>0</td><td>7.125</td><td>2.835</td><td>3.109</td><td>259</td><td>0</td><td>7.125</td><td>2.813</td><td>3.122</td></tr><tr><td>73</td><td>272</td><td>0</td><td>6.500</td><td>5.885</td><td>2.695</td><td>282</td><td>0</td><td>6.500</td><td>5.927</td><td>2.644</td></tr><tr><td>74</td><td>249</td><td>0</td><td>6.125</td><td>5.133</td><td>2.682</td><td>235</td><td>0</td><td>6.125</td><td>6.619</td><td>2.645</td></tr><tr><td>75</td><td>278</td><td>0</td><td>8.750</td><td>6.562</td><td>2.802</td><td>274</td><td>0</td><td>8.750</td><td>7.433</td><td>2.785</td></tr><tr><td>76</td><td>252</td><td>0</td><td>7.750</td><td>2.822</td><td>2.905</td><td>197</td><td>0</td><td>7.750</td><td>2.691</td><td>2.908</td></tr><tr><td>77</td><td>321</td><td>0</td><td>7.500</td><td>2.822</td><td>2.905</td><td>226</td><td>0</td><td>7.500</td><td>2.691</td><td>2.908</td></tr><tr><td>78</td><td>379</td><td>0</td><td>7.750</td><td>4.093</td><td>2.068</td><td>362</td><td>0</td><td>7.750</td><td>4.296</td><td>2.030</td></tr><tr><td>79</td><td>185</td><td>0</td><td>6.875</td><td>6.074</td><td>2.657</td><td>181</td><td>0</td><td>6.875</td><td>5.294</td><td>2.469</td></tr><tr><td>80</td><td>307</td><td>0</td><td>7.250</td><td>5.996</td><td>2.247</td><td>272</td><td>0</td><td>7.250</td><td>3.610</td><td>2.119</td></tr><tr><td>81</td><td>533</td><td>0</td><td>10.625</td><td>1.487</td><td>1.950</td><td>419</td><td>0</td><td>10.625</td><td>1.717</td><td>2.081</td></tr><tr><td>82</td><td>627</td><td>0</td><td>8.875</td><td>1.487</td><td>1.950</td><td>446</td><td>0</td><td>8.875</td><td>1.717</td><td>2.081</td></tr><tr><td>83</td><td>239</td><td>0</td><td>8.875</td><td>2.994</td><td>2.186</td><td>241</td><td>0</td><td>8.875</td><td>3.858</td><td>2.161</td></tr><tr><td>84</td><td>240</td><td>0</td><td>7.375</td><td>8.160</td><td>2.225</td><td>274</td><td>0</td><td>7.375</td><td>8.187</td><td>2.075</td></tr><tr><td>85</td><td>634</td><td>0</td><td>8.500</td><td>2.663</td><td>2.337</td><td>371</td><td>0</td><td>8.500</td><td>2.674</td><td>2.253</td></tr><tr><td>86</td><td>631</td><td>1</td><td>7.700</td><td>2.389</td><td>2.577</td><td>654</td><td>1</td><td>7.700</td><td>2.364</td><td>2.632</td></tr><tr><td>87</td><td>679</td><td>1</td><td>9.250</td><td>2.389</td><td>2.577</td><td>630</td><td>1</td><td>9.250</td><td>2.364</td><td>2.632</td></tr><tr><td>88</td><td>556</td><td>1</td><td>9.750</td><td>1.339</td><td>1.850</td><td>883</td><td>1</td><td>9.750</td><td>1.422</td><td>1.945</td></tr><tr><td>89</td><td>564</td><td>1</td><td>9.750</td><td>1.861</td><td>2.176</td><td>775</td><td>1</td><td>9.750</td><td>1.630</td><td>1.979</td></tr><tr><td>90</td><td>209</td><td>0</td><td>6.750</td><td>8.048</td><td>2.220</td><td>223</td><td>0</td><td>6.750</td><td>7.505</td><td>2.092</td></tr><tr><td>91</td><td>190</td><td>0</td><td>6.500</td><td>4.932</td><td>2.524</td><td>232</td><td>0</td><td>6.500</td><td>4.626</td><td>2.468</td></tr><tr><td>92</td><td>390</td><td>0</td><td>6.875</td><td>6.366</td><td>1.413</td><td>403</td><td>0</td><td>6.875</td><td>5.033</td><td>1.790</td></tr><tr><td>93</td><td>377</td><td>0</td><td>10.250</td><td>2.157</td><td>2.292</td><td>386</td><td>0</td><td>10.250</td><td>2.057</td><td>2.262</td></tr><tr><td>94</td><td>143</td><td>0</td><td>5.750</td><td>11.306</td><td>2.580</td><td>110</td><td>0</td><td>5.750</td><td>9.777</td><td>2.473</td></tr><tr><td>95</td><td>207</td><td>0</td><td>7.250</td><td>2.835</td><td>3.109</td><td>250</td><td>0</td><td>7.250</td><td>2.813</td><td>3.122</td></tr><tr><td>96</td><td>253</td><td>0</td><td>6.500</td><td>4.918</td><td>2.142</td><td>317</td><td>0</td><td>6.500</td><td>2.884</td><td>1.733</td></tr><tr><td>97</td><td>530</td><td>1</td><td>8.500</td><td>0.527</td><td>2.807</td><td>654</td><td>1</td><td>8.500</td><td>1.327</td><td>2.904</td></tr><tr><td>98</td><td>481</td><td>0</td><td>6.750</td><td>2.677</td><td>1.858</td><td>439</td><td>0</td><td>6.750</td><td>3.106</td><td>1.991</td></tr><tr><td>99</td><td>270</td><td>0</td><td>7.625</td><td>2.835</td><td>3.109</td><td>242</td><td>0</td><td>7.625</td><td>2.813</td><td>3.122</td></tr><tr><td>100</td><td>190</td><td>0</td><td>7.125</td><td>9.244</td><td>3.021</td><td>178</td><td>0</td><td>7.125</td><td>7.583</td><td>3.138</td></tr></table>

Notes:
Spread  $=$  option-adjusted spread (in basis points)
Coupon = coupon rate, expressed without considering percentage sign (i.e., 7.5\% = 7.5)
Coverage Ratio = EBITDA divided by interest expense for company
Logged EBIT = logarithm of earnings (EBIT in millions of dollars)

Table 2 Illustration of Residuals and Leverage for Corporate Bond Spread

<table><tr><td>Issue #</td><td>Residuals</td><td>Residuals Dummy 1</td><td>Residuals Dummy 2</td></tr><tr><td>1</td><td>118.79930</td><td>148.931400</td><td>162.198700</td></tr><tr><td>2</td><td>126.39350</td><td>183.097400</td><td>200.622000</td></tr><tr><td>3</td><td>-68.57770</td><td>-39.278100</td><td>-26.716500</td></tr><tr><td>4</td><td>-37.26080</td><td>-60.947500</td><td>-71.034400</td></tr><tr><td>5</td><td>16.63214</td><td>4.419645</td><td>-3.828890</td></tr><tr><td>6</td><td>-128.76600</td><td>-104.569000</td><td>-92.122000</td></tr><tr><td>7</td><td>386.42330</td><td>191.377200</td><td>217.840000</td></tr><tr><td>8</td><td>73.53972</td><td>48.516800</td><td>56.58778</td></tr><tr><td>9</td><td>104.15990</td><td>146.400600</td><td>160.438900</td></tr><tr><td>10</td><td>-124.78700</td><td>-98.020100</td><td>-71.374300</td></tr><tr><td>11</td><td>-4.28874</td><td>73.473220</td><td>94.555400</td></tr><tr><td>12</td><td>-117.58200</td><td>-88.168700</td><td>-82.883100</td></tr><tr><td>13</td><td>-223.61800</td><td>-213.055000</td><td>-202.748000</td></tr><tr><td>14</td><td>54.13075</td><td>99.735710</td><td>123.153000</td></tr><tr><td>15</td><td>-29.42160</td><td>-132.755000</td><td>-179.955000</td></tr><tr><td>16</td><td>27.74192</td><td>26.913670</td><td>24.308960</td></tr><tr><td>17</td><td>79.04072</td><td>63.114850</td><td>58.091160</td></tr><tr><td>18</td><td>-8.57759</td><td>-3.366800</td><td>-5.003930</td></tr><tr><td>19</td><td>18.62462</td><td>13.109110</td><td>9.664499</td></tr><tr><td>20</td><td>-123.21000</td><td>-56.256500</td><td>-48.090100</td></tr><tr><td>21</td><td>-181.64800</td><td>-140.494000</td><td>-118.369000</td></tr><tr><td>22</td><td>26.43157</td><td>27.457990</td><td>14.487850</td></tr><tr><td>23</td><td>71.79254</td><td>84.897050</td><td>73.862080</td></tr><tr><td>24</td><td>63.73623</td><td>93.025400</td><td>84.583560</td></tr><tr><td>25</td><td>-23.09740</td><td>-22.603200</td><td>-3.106990</td></tr><tr><td>26</td><td>-146.00700</td><td>-112.938000</td><td>-110.018000</td></tr><tr><td>27</td><td>53.72288</td><td>78.075810</td><td>78.781050</td></tr><tr><td>28</td><td>-99.29780</td><td>-84.003500</td><td>-84.749600</td></tr><tr><td>29</td><td>-46.31030</td><td>-41.105600</td><td>-43.489200</td></tr><tr><td>30</td><td>98.22006</td><td>79.285040</td><td>96.588250</td></tr><tr><td>31</td><td>32.05062</td><td>37.541930</td><td>41.075430</td></tr><tr><td>32</td><td>-167.12000</td><td>-148.947000</td><td>-143.382000</td></tr><tr><td>33</td><td>-127.03400</td><td>-129.393000</td><td>-127.118000</td></tr><tr><td>34</td><td>-63.94940</td><td>-58.458100</td><td>-54.924600</td></tr><tr><td>35</td><td>-85.93250</td><td>-78.871000</td><td>-75.085900</td></tr><tr><td>36</td><td>24.10520</td><td>41.795380</td><td>47.283410</td></tr><tr><td>37</td><td>12.86740</td><td>23.326060</td><td>33.884440</td></tr><tr><td>38</td><td>333.53890</td><td>101.376800</td><td>173.584400</td></tr><tr><td>39</td><td>58.02881</td><td>82.472150</td><td>77.040360</td></tr><tr><td>40</td><td>-19.14100</td><td>-32.550700</td><td>-29.298900</td></tr><tr><td>41</td><td>118.41190</td><td>67.990200</td><td>81.986050</td></tr><tr><td>42</td><td>-169.48100</td><td>-90.625700</td><td>-64.883800</td></tr><tr><td>43</td><td>-38.74030</td><td>13.936980</td><td>39.950520</td></tr><tr><td>44</td><td>62.91014</td><td>86.397490</td><td>80.392250</td></tr><tr><td>45</td><td>102.84620</td><td>127.541400</td><td>121.729700</td></tr><tr><td>46</td><td>-153.47300</td><td>-122.739000</td><td>-127.583000</td></tr><tr><td>47</td><td>-30.81510</td><td>-32.968700</td><td>-41.285200</td></tr><tr><td>48</td><td>-95.711400</td><td>-52.572300</td><td>-53.631800</td></tr><tr><td>49</td><td>-101.678000</td><td>-219.347000</td><td>-237.977000</td></tr><tr><td>50</td><td>50.969050</td><td>30.496460</td><td>14.081700</td></tr><tr><td>51</td><td>57.373200</td><td>38.712320</td><td>22.587840</td></tr><tr><td>52</td><td>29.717770</td><td>34.958870</td><td>36.101100</td></tr><tr><td>53</td><td>-56.859100</td><td>-12.364200</td><td>-4.932630</td></tr><tr><td>54</td><td>-23.959100</td><td>-31.659900</td><td>-38.650000</td></tr><tr><td>55</td><td>-7.278620</td><td>-8.940330</td><td>-14.962800</td></tr></table>

Table 2 (Continued)

<table><tr><td>Issue #</td><td>Residuals</td><td>Residuals Dummy 1</td><td>Residuals Dummy 2</td></tr><tr><td>56</td><td>-65.598100</td><td>-61.220800</td><td>-66.275700</td></tr><tr><td>57</td><td>-115.386000</td><td>-105.573000</td><td>-109.757000</td></tr><tr><td>58</td><td>-59.449600</td><td>-48.429300</td><td>-52.419900</td></tr><tr><td>59</td><td>-69.299000</td><td>-43.044000</td><td>-23.885700</td></tr><tr><td>60</td><td>15.946800</td><td>13.880220</td><td>28.513500</td></tr><tr><td>61</td><td>11.362190</td><td>-21.353800</td><td>-35.607900</td></tr><tr><td>62</td><td>139.148000</td><td>129.380400</td><td>118.803100</td></tr><tr><td>63</td><td>158.084100</td><td>149.524300</td><td>139.140600</td></tr><tr><td>64</td><td>-56.785300</td><td>-60.952000</td><td>-51.339900</td></tr><tr><td>65</td><td>153.651800</td><td>194.149900</td><td>205.750200</td></tr><tr><td>66</td><td>-15.653600</td><td>-28.630900</td><td>-40.227500</td></tr><tr><td>67</td><td>-19.612200</td><td>-14.472300</td><td>-23.166100</td></tr><tr><td>68</td><td>209.488200</td><td>144.261600</td><td>67.891100</td></tr><tr><td>69</td><td>-185.659000</td><td>-100.217000</td><td>-63.396000</td></tr><tr><td>70</td><td>-91.541800</td><td>-92.646100</td><td>-91.015000</td></tr><tr><td>71</td><td>-36.623800</td><td>-33.937000</td><td>-29.003400</td></tr><tr><td>72</td><td>-65.586300</td><td>-51.301800</td><td>-59.080100</td></tr><tr><td>73</td><td>39.294110</td><td>32.661770</td><td>32.391920</td></tr><tr><td>74</td><td>28.197460</td><td>14.759650</td><td>12.952710</td></tr><tr><td>75</td><td>-73.910000</td><td>-28.902200</td><td>-22.353300</td></tr><tr><td>76</td><td>-78.608000</td><td>-47.733800</td><td>-48.902600</td></tr><tr><td>77</td><td>5.711553</td><td>30.546620</td><td>28.410290</td></tr><tr><td>78</td><td>-10.926100</td><td>22.258560</td><td>38.888810</td></tr><tr><td>79</td><td>-71.611400</td><td>-69.462200</td><td>-67.416900</td></tr><tr><td>80</td><td>-10.848000</td><td>3.505179</td><td>15.383910</td></tr><tr><td>81</td><td>-78.195700</td><td>32.775440</td><td>61.748590</td></tr><tr><td>82</td><td>123.041000</td><td>191.738700</td><td>213.938800</td></tr><tr><td>83</td><td>-223.662000</td><td>-160.978000</td><td>-142.925000</td></tr><tr><td>84</td><td>-58.977600</td><td>-47.671100</td><td>-33.850800</td></tr><tr><td>85</td><td>203.727300</td><td>257.223800</td><td>270.556600</td></tr><tr><td>86</td><td>267.904600</td><td>-65.208100</td><td>89.636310</td></tr><tr><td>87</td><td>220.923600</td><td>-4.162260</td><td>42.473790</td></tr><tr><td>88</td><td>-12.621600</td><td>-142.213000</td><td>-168.474000</td></tr><tr><td>89</td><td>31.862060</td><td>-127.616000</td><td>-134.267000</td></tr><tr><td>90</td><td>-53.593800</td><td>-57.028600</td><td>-45.579800</td></tr><tr><td>91</td><td>-70.794900</td><td>-73.470000</td><td>-70.669700</td></tr><tr><td>92</td><td>24.164780</td><td>34.342730</td><td>62.098550</td></tr><tr><td>93</td><td>-171.291000</td><td>-73.744300</td><td>-52.943000</td></tr><tr><td>94</td><td>17.439710</td><td>-22.092800</td><td>-20.420000</td></tr><tr><td>95</td><td>-74.246100</td><td>-56.942100</td><td>-64.236600</td></tr><tr><td>96</td><td>-42.690600</td><td>-42.602900</td><td>-31.958300</td></tr><tr><td>97</td><td>114.168900</td><td>-66.109500</td><td>-66.049500</td></tr><tr><td>98</td><td>114.578500</td><td>129.177300</td><td>145.600600</td></tr><tr><td>99</td><td>-34.225400</td><td>-7.862790</td><td>-13.705900</td></tr><tr><td>100</td><td>-6.958960</td><td>-10.488100</td><td>-13.508000</td></tr><tr><td>101</td><td>81.920940</td><td>112.117900</td><td>101.420600</td></tr><tr><td>102</td><td>70.515070</td><td>127.283800</td><td>120.844000</td></tr><tr><td>103</td><td>-18.587600</td><td>24.683610</td><td>20.132390</td></tr><tr><td>104</td><td>-8.443100</td><td>-26.784100</td><td>-28.884400</td></tr><tr><td>105</td><td>13.449820</td><td>6.582981</td><td>6.321103</td></tr><tr><td>106</td><td>-50.430600</td><td>-26.617000</td><td>-36.781100</td></tr><tr><td>107</td><td>318.056000</td><td>133.403000</td><td>130.828300</td></tr><tr><td>108</td><td>47.876010</td><td>16.919350</td><td>5.068270</td></tr><tr><td>109</td><td>64.341610</td><td>107.038200</td><td>99.281600</td></tr><tr><td>110</td><td>-14.573200</td><td>10.557760</td><td>3.393970</td></tr></table>

(Continued)

Table 2 (Continued)

<table><tr><td>Issue #</td><td>Residuals</td><td>Residuals Dummy 1</td><td>Residuals Dummy 2</td></tr><tr><td>111</td><td>-66.995600</td><td>11.539420</td><td>7.987728</td></tr><tr><td>112</td><td>-113.425000</td><td>-82.640800</td><td>-88.147800</td></tr><tr><td>113</td><td>-209.054000</td><td>-198.177000</td><td>-205.892000</td></tr><tr><td>114</td><td>107.522000</td><td>152.737700</td><td>142.464600</td></tr><tr><td>115</td><td>41.638860</td><td>-76.825800</td><td>-145.458000</td></tr><tr><td>116</td><td>7.647833</td><td>10.327540</td><td>9.887700</td></tr><tr><td>117</td><td>33.946630</td><td>21.528710</td><td>18.669900</td></tr><tr><td>118</td><td>-22.671700</td><td>-13.952900</td><td>-13.425200</td></tr><tr><td>119</td><td>40.107630</td><td>35.729610</td><td>24.798540</td></tr><tr><td>120</td><td>-142.727000</td><td>-74.636000</td><td>-73.956000</td></tr><tr><td>121</td><td>-63.286100</td><td>-31.013100</td><td>-33.970100</td></tr><tr><td>122</td><td>61.774140</td><td>64.481450</td><td>64.302480</td></tr><tr><td>123</td><td>87.135110</td><td>101.920500</td><td>103.676700</td></tr><tr><td>124</td><td>62.078800</td><td>93.048860</td><td>97.398200</td></tr><tr><td>125</td><td>48.320900</td><td>45.935300</td><td>36.150130</td></tr><tr><td>126</td><td>-121.736000</td><td>-90.029000</td><td>-92.609500</td></tr><tr><td>127</td><td>87.253680</td><td>111.626800</td><td>105.229900</td></tr><tr><td>128</td><td>-106.767000</td><td>-91.452500</td><td>-99.300700</td></tr><tr><td>129</td><td>-28.566900</td><td>-22.540100</td><td>-29.135400</td></tr><tr><td>130</td><td>108.560100</td><td>98.752280</td><td>95.570570</td></tr><tr><td>131</td><td>64.418690</td><td>71.586810</td><td>60.886980</td></tr><tr><td>132</td><td>-95.752300</td><td>-75.902200</td><td>-84.570100</td></tr><tr><td>133</td><td>-27.665900</td><td>-28.348600</td><td>-40.306300</td></tr><tr><td>134</td><td>-19.581300</td><td>-12.413200</td><td>-23.113000</td></tr><tr><td>135</td><td>-119.564000</td><td>-110.826000</td><td>-121.274000</td></tr><tr><td>136</td><td>47.473260</td><td>66.840260</td><td>58.094960</td></tr><tr><td>137</td><td>-61.953700</td><td>-53.237800</td><td>-64.316600</td></tr><tr><td>138</td><td>149.786400</td><td>211.505100</td><td>204.226300</td></tr><tr><td>139</td><td>90.609530</td><td>118.184700</td><td>114.258300</td></tr><tr><td>140</td><td>55.650810</td><td>29.860840</td><td>23.239180</td></tr><tr><td>141</td><td>126.240500</td><td>78.712630</td><td>79.050720</td></tr><tr><td>142</td><td>-107.826000</td><td>-27.243600</td><td>-31.116800</td></tr><tr><td>143</td><td>7.614932</td><td>60.121850</td><td>50.036220</td></tr><tr><td>144</td><td>-65.174500</td><td>-41.979400</td><td>-42.794500</td></tr><tr><td>145</td><td>-22.238400</td><td>2.164489</td><td>1.542950</td></tr><tr><td>146</td><td>-108.558000</td><td>-78.116000</td><td>-77.769900</td></tr><tr><td>147</td><td>20.679750</td><td>19.696850</td><td>12.963030</td></tr><tr><td>148</td><td>-88.216600</td><td>-43.906700</td><td>-43.383600</td></tr><tr><td>149</td><td>165.253100</td><td>48.262590</td><td>-23.500200</td></tr><tr><td>150</td><td>93.311620</td><td>74.519920</td><td>70.896340</td></tr><tr><td>151</td><td>73.715770</td><td>56.735780</td><td>53.402470</td></tr><tr><td>152</td><td>94.629570</td><td>100.961000</td><td>90.629950</td></tr><tr><td>153</td><td>-62.947300</td><td>-17.362000</td><td>-21.403800</td></tr><tr><td>154</td><td>14.480140</td><td>10.216950</td><td>6.659433</td></tr><tr><td>155</td><td>40.160620</td><td>41.936480</td><td>39.346550</td></tr><tr><td>156</td><td>-115.159000</td><td>-107.344000</td><td>-108.966000</td></tr><tr><td>157</td><td>-94.946500</td><td>-81.696400</td><td>-82.447900</td></tr><tr><td>158</td><td>-28.010400</td><td>-13.552500</td><td>-14.110500</td></tr><tr><td>159</td><td>-110.127000</td><td>-85.111400</td><td>-96.632900</td></tr><tr><td>160</td><td>9.959282</td><td>18.682370</td><td>12.662020</td></tr><tr><td>161</td><td>89.889700</td><td>57.689740</td><td>48.509480</td></tr><tr><td>162</td><td>150.675500</td><td>141.424000</td><td>135.920500</td></tr><tr><td>163</td><td>150.611600</td><td>142.567900</td><td>137.258000</td></tr><tr><td>164</td><td>-38.040900</td><td>-36.521000</td><td>-48.754100</td></tr><tr><td>165</td><td>55.443990</td><td>95.437610</td><td>88.132530</td></tr></table>

Table 2 (Continued)

<table><tr><td>Issue #</td><td>Residuals</td><td>Residuals Dummy 1</td><td>Residuals Dummy 2</td></tr><tr><td>166</td><td>-4.652580</td><td>-18.233400</td><td>-27.698600</td></tr><tr><td>167</td><td>-10.611100</td><td>-6.074840</td><td>-12.637200</td></tr><tr><td>168</td><td>35.778970</td><td>164.163000</td><td>162.921500</td></tr><tr><td>169</td><td>-215.328000</td><td>-131.013000</td><td>-135.422000</td></tr><tr><td>170</td><td>-59.986400</td><td>-60.605400</td><td>-70.729300</td></tr><tr><td>171</td><td>-74.693600</td><td>-66.782400</td><td>-69.716200</td></tr><tr><td>172</td><td>-13.734800</td><td>0.523639</td><td>-3.905600</td></tr><tr><td>173</td><td>45.295840</td><td>38.898770</td><td>30.164940</td></tr><tr><td>174</td><td>30.476800</td><td>13.024800</td><td>3.159872</td></tr><tr><td>175</td><td>-67.888500</td><td>-25.271900</td><td>-23.635500</td></tr><tr><td>176</td><td>-135.061000</td><td>-103.830000</td><td>-107.375000</td></tr><tr><td>177</td><td>-90.741200</td><td>-65.550000</td><td>-70.062300</td></tr><tr><td>178</td><td>-28.683300</td><td>4.187387</td><td>-4.706060</td></tr><tr><td>179</td><td>-103.027000</td><td>-97.290000</td><td>-106.078000</td></tr><tr><td>180</td><td>-88.975000</td><td>-66.845700</td><td>-77.367900</td></tr><tr><td>181</td><td>-177.281000</td><td>-67.904100</td><td>-66.493200</td></tr><tr><td>182</td><td>-43.044700</td><td>24.059160</td><td>18.696920</td></tr><tr><td>183</td><td>-212.505000</td><td>-152.131000</td><td>-155.963000</td></tr><tr><td>184</td><td>-38.210800</td><td>-25.916400</td><td>-34.173800</td></tr><tr><td>185</td><td>-66.764700</td><td>-12.702000</td><td>-17.886300</td></tr><tr><td>186</td><td>295.611300</td><td>-36.578800</td><td>106.036400</td></tr><tr><td>187</td><td>176.630300</td><td>-47.533000</td><td>-13.126100</td></tr><tr><td>188</td><td>324.060100</td><td>189.413000</td><td>136.666400</td></tr><tr><td>189</td><td>221.951100</td><td>76.029960</td><td>34.046210</td></tr><tr><td>190</td><td>-58.422000</td><td>-59.380500</td><td>-70.254000</td></tr><tr><td>191</td><td>-37.907200</td><td>-39.303500</td><td>-49.850800</td></tr><tr><td>192</td><td>53.841660</td><td>65.166450</td><td>51.559780</td></tr><tr><td>193</td><td>-166.323000</td><td>-68.275700</td><td>-66.904900</td></tr><tr><td>194</td><td>-45.521100</td><td>-79.888400</td><td>-90.959200</td></tr><tr><td>195</td><td>-30.394500</td><td>-13.116600</td><td>-17.062000</td></tr><tr><td>196</td><td>-42.709500</td><td>-33.855500</td><td>-50.285700</td></tr><tr><td>197</td><td>257.550200</td><td>34.224540</td><td>70.337910</td></tr><tr><td>198</td><td>90.307160</td><td>102.727000</td><td>89.148700</td></tr><tr><td>199</td><td>-61.373800</td><td>-35.037300</td><td>-37.531400</td></tr><tr><td>200</td><td>-30.310400</td><td>-29.889500</td><td>-32.034600</td></tr></table>

Notes:
Residuals: residuals from the pooled regression without dummy variables for investment grade.
Residuals Dummy 1: inclusion of dummy variable for investment grade.
Residuals Dummy 2: inclusion of dummy variable to test for regime shift.

parameters. The residuals of the model without and with dummy variable D1 are shown, respectively, in the second and third columns of Table 2.

Now let's use dummy variables to test if there is a regime shift between the two dates. This is a common use for dummy variables in practice. To this end we create a new dummy variable that has the value 0 for the first date 11/28/05 and 1 for the second date  $6 / 6 / 05$ . The new equation is written as follows:


$$
\begin{array}{l} \operatorname {S p r e a d} _ {i} = \beta_ {0} + \beta_ {1} D 2 _ {i} + \beta_ {2} \text {C o u p o n} _ {i} \\ + \beta_ {3} D 2 _ {i} \text {C o u p o n} _ {i} + \beta_ {4} \text {C o v e r a g e R a t i o} _ {i} \\ + \beta_ {5} D 2 _ {i} \text {C o v e r a g e R a t i o} _ {i} + \beta_ {6} \text {L o g g e d E B I T} _ {i} \\ + \beta_ {7} D 2 _ {i} \text {L o g g e d E B I T} _ {i} + \varepsilon_ {i} \\ \end{array}
$$ as in the previous case but with a different dummy variable. There are seven independent


variables and eight parameters to estimate. The estimated model coefficients and  $t$ -statistics are shown below:

<table><tr><td>Coefficient</td><td>Estimated Coefficient</td><td>Standard Error</td><td>t-statistic</td><td>p-value</td></tr><tr><td>β0</td><td>257.26</td><td>79.71</td><td>3.28</td><td>0.00</td></tr><tr><td>β1</td><td>82.17</td><td>61.63</td><td>1.33</td><td>0.18</td></tr><tr><td>β2</td><td>33.25</td><td>7.11</td><td>4.67</td><td>5.53E-06</td></tr><tr><td>β3</td><td>28.14</td><td>2.78</td><td>10.12</td><td>1.45E-19</td></tr><tr><td>β4</td><td>-10.79</td><td>2.50</td><td>-4.32</td><td>2.49E-05</td></tr><tr><td>β5</td><td>0.00</td><td>3.58</td><td>0.00</td><td>1.00</td></tr><tr><td>β6</td><td>-63.20</td><td>18.04</td><td>-3.50</td><td>0.00</td></tr><tr><td>β7</td><td>-27.48</td><td>24.34</td><td>-1.13</td><td>0.26</td></tr></table>

Other regression statistics are:

$$
\mathrm {S S R}: 1. 5 3 9 9 \mathrm {e} + 0 0 6
$$

$$
F \text {- s t a t i s t i c :} 7 2. 3 9
$$

$$ p \text {- v a l u e :} 0
$$

$$
R ^ {2}: 0. 7 1
$$

The Chow test has the value 14.73. The  $F$ -statistics and the Chow test suggest that there is indeed a regime shift and that the spread regressions at the two different dates are different. Again, the use of dummy variables has greatly improved the goodness of fit of the regression, even after compensating for the increase in the number of parameters. The residuals of the model with dummy variables D2 are shown in the next-to-the-last column of Table 2.

# Illustration: Testing the Mutual Fund Characteristic Lines in Different Market Environments

The characteristic line of a mutual fund is the regression of the excess returns of a mutual fund on the market's excess returns:

$$ y _ {i t} = \alpha_ {i} + \beta_ {i} x _ {t}
$$ where


$$ y _ {i t} = \underset {\text {t h e r e i s}} {\text {m u t u a l f u n d i ' s e x c e s s r e t u r n o v e r}}
$$

$$ x _ {t} = \text {m a r k e t e x c e s s r e t u r n o v e r t h e r i s k -}
$$

$\alpha_{i}$  and  $\beta_{i} =$  the regression parameters to be estimated for mutual fund  $i$

We will first estimate the characteristic line for two large-cap mutual funds. Since we would prefer not to disclose the name of each fund, we simply refer to them as A and B. (Neither mutual fund selected is an index fund.) Because the two mutual funds are large-cap funds, the S&P 500 was used as the benchmark. The risk-free rate used was the 90-day Treasury bill rate. Ten years of monthly data were used from January 1, 1995 to December 31, 2004. The data are reported in Table 3. The first column in the table shows the month. The second and third columns give the return on the market return  $(r_{Mt})$  and risk-free rate  $(r_{ft})$ , respectively. The fifth column is the excess market return, which is  $x_{t}$  in the regression equation. The seventh and eighth columns show the returns for mutual funds A and B, respectively. The excess returns for the two mutual funds  $(y_{it})$  are given in the last two columns. The other columns will be explained shortly.

The results of the above regression for both mutual funds are shown in Table 4. The estimated  $\beta$  for both mutual funds is statistically significantly different from zero.

Let's now perform a simple application of the use of dummy variables by determining if the slope (beta) of the two mutual funds is different in a rising stock market ("up market") and a declining stock market ("down market"). To test this, we can write the following multiple regression model:

$$ y _ {i t} = \alpha_ {i} + \beta_ {1 i} x _ {t} + \beta_ {2 i} \left(D _ {t} x _ {t}\right) + e _ {i t}
$$ where  $D_{t}$  is the dummy variable that can take on a value of 1 or 0. We will let


$D_{t} = 1$  if period  $t$  is classified as an up market
$D_{t} = 0$  if period  $t$  is classified as a down market

The coefficient for the dummy variable is  $\beta_{2i}$ . If that coefficient is statistically significant, then for the mutual fund:

$$
\text {I n a n u p m a k e t :} \beta_ {i} = \beta_ {1 i} + \beta_ {2 i}
$$

$$
\text {I n a d o w n m a k e t :} \beta_ {i} = \beta_ {1 i}
$$

Table 3 Data for Estimating Mutual Fund Characteristic Line with a Dummy Variable

<table><tr><td rowspan="2">Month Ended</td><td rowspan="2">rM</td><td rowspan="2">rft</td><td rowspan="2">Dummy Dt</td><td rowspan="2">rM-fctxt</td><td rowspan="2">Dtxt</td><td colspan="2">Mutual Fund</td><td rowspan="2">Ayt</td><td rowspan="2">Byt</td></tr><tr><td>Art</td><td>Brt</td></tr><tr><td>01/31/1995</td><td>2.60</td><td>0.42</td><td>0</td><td>2.18</td><td>0</td><td>0.65</td><td>1.28</td><td>0.23</td><td>0.86</td></tr><tr><td>02/28/1995</td><td>3.88</td><td>0.40</td><td>0</td><td>3.48</td><td>0</td><td>3.44</td><td>3.16</td><td>3.04</td><td>2.76</td></tr><tr><td>03/31/1995</td><td>2.96</td><td>0.46</td><td>1</td><td>2.50</td><td>2.5</td><td>2.89</td><td>2.58</td><td>2.43</td><td>2.12</td></tr><tr><td>04/30/1995</td><td>2.91</td><td>0.44</td><td>1</td><td>2.47</td><td>2.47</td><td>1.65</td><td>1.81</td><td>1.21</td><td>1.37</td></tr><tr><td>05/31/1995</td><td>3.95</td><td>0.54</td><td>1</td><td>3.41</td><td>3.41</td><td>2.66</td><td>2.96</td><td>2.12</td><td>2.42</td></tr><tr><td>06/30/1995</td><td>2.35</td><td>0.47</td><td>1</td><td>1.88</td><td>1.88</td><td>2.12</td><td>2.18</td><td>1.65</td><td>1.71</td></tr><tr><td>07/31/1995</td><td>3.33</td><td>0.45</td><td>1</td><td>2.88</td><td>2.88</td><td>3.64</td><td>3.28</td><td>3.19</td><td>2.83</td></tr><tr><td>08/31/1995</td><td>0.27</td><td>0.47</td><td>1</td><td>-0.20</td><td>-0.2</td><td>-0.40</td><td>0.98</td><td>-0.87</td><td>0.51</td></tr><tr><td>09/30/1995</td><td>4.19</td><td>0.43</td><td>1</td><td>3.76</td><td>3.76</td><td>3.06</td><td>3.47</td><td>2.63</td><td>3.04</td></tr><tr><td>10/31/1995</td><td>-0.35</td><td>0.47</td><td>1</td><td>-0.82</td><td>-0.82</td><td>-1.77</td><td>-0.63</td><td>-2.24</td><td>-1.10</td></tr><tr><td>11/30/1995</td><td>4.40</td><td>0.42</td><td>1</td><td>3.98</td><td>3.98</td><td>4.01</td><td>3.92</td><td>3.59</td><td>3.50</td></tr><tr><td>12/31/1995</td><td>1.85</td><td>0.49</td><td>1</td><td>1.36</td><td>1.36</td><td>1.29</td><td>1.73</td><td>0.80</td><td>1.24</td></tr><tr><td>01/31/1996</td><td>3.44</td><td>0.43</td><td>1</td><td>3.01</td><td>3.01</td><td>3.36</td><td>2.14</td><td>2.93</td><td>1.71</td></tr><tr><td>02/29/1996</td><td>0.96</td><td>0.39</td><td>1</td><td>0.57</td><td>0.57</td><td>1.53</td><td>1.88</td><td>1.14</td><td>1.49</td></tr><tr><td>03/31/1996</td><td>0.96</td><td>0.39</td><td>1</td><td>0.57</td><td>0.57</td><td>0.59</td><td>1.65</td><td>0.20</td><td>1.26</td></tr><tr><td>04/30/1996</td><td>1.47</td><td>0.46</td><td>1</td><td>1.01</td><td>1.01</td><td>1.46</td><td>1.83</td><td>1.00</td><td>1.37</td></tr><tr><td>05/31/1996</td><td>2.58</td><td>0.42</td><td>1</td><td>2.16</td><td>2.16</td><td>2.17</td><td>2.20</td><td>1.75</td><td>1.78</td></tr><tr><td>06/30/1996</td><td>0.41</td><td>0.40</td><td>1</td><td>0.01</td><td>0.01</td><td>-0.63</td><td>0.00</td><td>-1.03</td><td>-0.40</td></tr><tr><td>07/31/1996</td><td>-4.45</td><td>0.45</td><td>1</td><td>-4.90</td><td>-4.9</td><td>-4.30</td><td>-3.73</td><td>-4.75</td><td>-4.18</td></tr><tr><td>08/31/1996</td><td>2.12</td><td>0.41</td><td>0</td><td>1.71</td><td>0</td><td>2.73</td><td>2.24</td><td>2.32</td><td>1.83</td></tr><tr><td>09/30/1996</td><td>5.62</td><td>0.44</td><td>0</td><td>5.18</td><td>0</td><td>5.31</td><td>4.49</td><td>4.87</td><td>4.05</td></tr><tr><td>10/31/1996</td><td>2.74</td><td>0.42</td><td>1</td><td>2.32</td><td>2.32</td><td>1.42</td><td>1.34</td><td>1.00</td><td>0.92</td></tr><tr><td>11/30/1996</td><td>7.59</td><td>0.41</td><td>1</td><td>7.18</td><td>7.18</td><td>6.09</td><td>5.30</td><td>5.68</td><td>4.89</td></tr><tr><td>12/31/1996</td><td>-1.96</td><td>0.46</td><td>1</td><td>-2.42</td><td>-2.42</td><td>-1.38</td><td>-0.90</td><td>-1.84</td><td>-1.36</td></tr><tr><td>01/31/1997</td><td>6.21</td><td>0.45</td><td>1</td><td>5.76</td><td>5.76</td><td>4.15</td><td>5.73</td><td>3.70</td><td>5.28</td></tr><tr><td>02/28/1997</td><td>0.81</td><td>0.39</td><td>1</td><td>0.42</td><td>0.42</td><td>1.65</td><td>-1.36</td><td>1.26</td><td>-1.75</td></tr><tr><td>03/31/1997</td><td>-4.16</td><td>0.43</td><td>1</td><td>-4.59</td><td>-4.59</td><td>-4.56</td><td>-3.75</td><td>-4.99</td><td>-4.18</td></tr><tr><td>04/30/1997</td><td>5.97</td><td>0.43</td><td>1</td><td>5.54</td><td>5.54</td><td>4.63</td><td>3.38</td><td>4.20</td><td>2.95</td></tr><tr><td>05/31/1997</td><td>6.14</td><td>0.49</td><td>1</td><td>5.65</td><td>5.65</td><td>5.25</td><td>6.05</td><td>4.76</td><td>5.56</td></tr><tr><td>06/30/1997</td><td>4.46</td><td>0.37</td><td>1</td><td>4.09</td><td>4.09</td><td>2.98</td><td>2.90</td><td>2.61</td><td>2.53</td></tr><tr><td>07/31/1997</td><td>7.94</td><td>0.43</td><td>1</td><td>7.51</td><td>7.51</td><td>6.00</td><td>7.92</td><td>5.57</td><td>7.49</td></tr><tr><td>08/31/1997</td><td>-5.56</td><td>0.41</td><td>1</td><td>-5.97</td><td>-5.97</td><td>-4.40</td><td>-3.29</td><td>-4.81</td><td>-3.70</td></tr><tr><td>09/30/1997</td><td>5.48</td><td>0.44</td><td>1</td><td>5.04</td><td>5.04</td><td>5.70</td><td>4.97</td><td>5.26</td><td>4.53</td></tr><tr><td>10/31/1997</td><td>-3.34</td><td>0.42</td><td>1</td><td>-3.76</td><td>-3.76</td><td>-2.76</td><td>-2.58</td><td>-3.18</td><td>-3.00</td></tr><tr><td>11/30/1997</td><td>4.63</td><td>0.39</td><td>0</td><td>4.24</td><td>0</td><td>3.20</td><td>2.91</td><td>2.81</td><td>2.52</td></tr><tr><td>12/31/1997</td><td>1.72</td><td>0.48</td><td>1</td><td>1.24</td><td>1.24</td><td>1.71</td><td>2.41</td><td>1.23</td><td>1.93</td></tr><tr><td>01/31/1998</td><td>1.11</td><td>0.43</td><td>1</td><td>0.68</td><td>0.68</td><td>-0.01</td><td>-0.27</td><td>-0.44</td><td>-0.70</td></tr><tr><td>02/28/1998</td><td>7.21</td><td>0.39</td><td>1</td><td>6.82</td><td>6.82</td><td>5.50</td><td>6.84</td><td>5.11</td><td>6.45</td></tr><tr><td>03/31/1998</td><td>5.12</td><td>0.39</td><td>1</td><td>4.73</td><td>4.73</td><td>5.45</td><td>3.84</td><td>5.06</td><td>3.45</td></tr><tr><td>04/30/1998</td><td>1.01</td><td>0.43</td><td>1</td><td>0.58</td><td>0.58</td><td>-0.52</td><td>1.07</td><td>-0.95</td><td>0.64</td></tr><tr><td>05/31/1998</td><td>-1.72</td><td>0.40</td><td>1</td><td>-2.12</td><td>-2.12</td><td>-1.25</td><td>-1.30</td><td>-1.65</td><td>-1.70</td></tr><tr><td>06/30/1998</td><td>4.06</td><td>0.41</td><td>1</td><td>3.65</td><td>3.65</td><td>3.37</td><td>4.06</td><td>2.96</td><td>3.65</td></tr><tr><td>07/31/1998</td><td>-1.06</td><td>0.40</td><td>1</td><td>-1.46</td><td>-1.46</td><td>0.10</td><td>-1.75</td><td>-0.30</td><td>-2.15</td></tr><tr><td>08/31/1998</td><td>-14.46</td><td>0.43</td><td>1</td><td>-14.89</td><td>-14.89</td><td>-15.79</td><td>-13.44</td><td>-16.22</td><td>-13.87</td></tr><tr><td>09/30/1998</td><td>6.41</td><td>0.46</td><td>0</td><td>5.95</td><td>0</td><td>5.00</td><td>4.86</td><td>4.54</td><td>4.40</td></tr><tr><td>10/31/1998</td><td>8.13</td><td>0.32</td><td>0</td><td>7.81</td><td>0</td><td>5.41</td><td>4.56</td><td>5.09</td><td>4.24</td></tr><tr><td>11/30/1998</td><td>6.06</td><td>0.31</td><td>0</td><td>5.75</td><td>0</td><td>5.19</td><td>5.56</td><td>4.88</td><td>5.25</td></tr><tr><td>12/31/1998</td><td>5.76</td><td>0.38</td><td>1</td><td>5.38</td><td>5.38</td><td>7.59</td><td>7.18</td><td>7.21</td><td>6.80</td></tr><tr><td>01/31/1999</td><td>4.18</td><td>0.35</td><td>1</td><td>3.83</td><td>3.83</td><td>2.60</td><td>3.11</td><td>2.25</td><td>2.76</td></tr><tr><td>02/28/1999</td><td>-3.11</td><td>0.35</td><td>1</td><td>-3.46</td><td>-3.46</td><td>-4.13</td><td>-3.01</td><td>-4.48</td><td>-3.36</td></tr><tr><td>03/31/1999</td><td>4.00</td><td>0.43</td><td>1</td><td>3.57</td><td>3.57</td><td>3.09</td><td>3.27</td><td>2.66</td><td>2.84</td></tr><tr><td>04/30/1999</td><td>3.87</td><td>0.37</td><td>1</td><td>3.50</td><td>3.5</td><td>2.26</td><td>2.22</td><td>1.89</td><td>1.85</td></tr></table>

(Continued)

Table 3 (Continued)

<table><tr><td rowspan="2">Month Ended</td><td rowspan="2">rM</td><td rowspan="2">rft</td><td rowspan="2">Dummy Dt</td><td rowspan="2">rM-fctxt</td><td rowspan="2">Dtxt</td><td colspan="2">Mutual Fund</td><td rowspan="2">Ayt</td><td rowspan="2">Byt</td></tr><tr><td>Art</td><td>Brt</td></tr><tr><td>05/31/1999</td><td>-2.36</td><td>0.34</td><td>1</td><td>-2.70</td><td>-2.7</td><td>-2.12</td><td>-1.32</td><td>-2.46</td><td>-1.66</td></tr><tr><td>06/30/1999</td><td>5.55</td><td>0.40</td><td>1</td><td>5.15</td><td>5.15</td><td>4.43</td><td>5.36</td><td>4.03</td><td>4.96</td></tr><tr><td>07/31/1999</td><td>-3.12</td><td>0.38</td><td>1</td><td>-3.50</td><td>-3.5</td><td>-3.15</td><td>-1.72</td><td>-3.53</td><td>-2.10</td></tr><tr><td>08/31/1999</td><td>-0.50</td><td>0.39</td><td>0</td><td>-0.89</td><td>0</td><td>-1.05</td><td>-2.06</td><td>-1.44</td><td>-2.45</td></tr><tr><td>09/30/1999</td><td>-2.74</td><td>0.39</td><td>1</td><td>-3.13</td><td>-3.13</td><td>-2.86</td><td>-1.33</td><td>-3.25</td><td>-1.72</td></tr><tr><td>10/31/1999</td><td>6.33</td><td>0.39</td><td>0</td><td>5.94</td><td>0</td><td>5.55</td><td>2.29</td><td>5.16</td><td>1.90</td></tr><tr><td>11/30/1999</td><td>2.03</td><td>0.36</td><td>1</td><td>1.67</td><td>1.67</td><td>3.23</td><td>3.63</td><td>2.87</td><td>3.27</td></tr><tr><td>12/31/1999</td><td>5.89</td><td>0.44</td><td>1</td><td>5.45</td><td>5.45</td><td>8.48</td><td>7.09</td><td>8.04</td><td>6.65</td></tr><tr><td>01/31/2000</td><td>-5.02</td><td>0.41</td><td>1</td><td>-5.43</td><td>-5.43</td><td>-4.09</td><td>-0.83</td><td>-4.50</td><td>-1.24</td></tr><tr><td>02/29/2000</td><td>-1.89</td><td>0.43</td><td>1</td><td>-2.32</td><td>-2.32</td><td>1.43</td><td>2.97</td><td>1.00</td><td>2.54</td></tr><tr><td>03/31/2000</td><td>9.78</td><td>0.47</td><td>0</td><td>9.31</td><td>0</td><td>6.84</td><td>5.86</td><td>6.37</td><td>5.39</td></tr><tr><td>04/30/2000</td><td>-3.01</td><td>0.46</td><td>1</td><td>-3.47</td><td>-3.47</td><td>-4.04</td><td>-4.55</td><td>-4.50</td><td>-5.01</td></tr><tr><td>05/31/2000</td><td>-2.05</td><td>0.50</td><td>1</td><td>-2.55</td><td>-2.55</td><td>-2.87</td><td>-4.47</td><td>-3.37</td><td>-4.97</td></tr><tr><td>06/30/2000</td><td>2.46</td><td>0.40</td><td>1</td><td>2.06</td><td>2.06</td><td>0.54</td><td>6.06</td><td>0.14</td><td>5.66</td></tr><tr><td>07/31/2000</td><td>-1.56</td><td>0.48</td><td>0</td><td>-2.04</td><td>0</td><td>-0.93</td><td>1.89</td><td>-1.41</td><td>1.41</td></tr><tr><td>08/31/2000</td><td>6.21</td><td>0.50</td><td>0</td><td>5.71</td><td>0</td><td>7.30</td><td>6.01</td><td>6.80</td><td>5.51</td></tr><tr><td>09/30/2000</td><td>-5.28</td><td>0.51</td><td>1</td><td>-5.79</td><td>-5.79</td><td>-4.73</td><td>-4.81</td><td>-5.24</td><td>-5.32</td></tr><tr><td>10/31/2000</td><td>-0.42</td><td>0.56</td><td>0</td><td>-0.98</td><td>0</td><td>-1.92</td><td>-4.84</td><td>-2.48</td><td>-5.40</td></tr><tr><td>11/30/2000</td><td>-7.88</td><td>0.51</td><td>0</td><td>-8.39</td><td>0</td><td>-6.73</td><td>-11.00</td><td>-7.24</td><td>-11.51</td></tr><tr><td>12/31/2000</td><td>0.49</td><td>0.50</td><td>0</td><td>-0.01</td><td>0</td><td>2.61</td><td>3.69</td><td>2.11</td><td>3.19</td></tr><tr><td>01/31/2001</td><td>3.55</td><td>0.54</td><td>0</td><td>3.01</td><td>0</td><td>0.36</td><td>5.01</td><td>-0.18</td><td>4.47</td></tr><tr><td>02/28/2001</td><td>-9.12</td><td>0.38</td><td>0</td><td>-9.50</td><td>0</td><td>-5.41</td><td>-8.16</td><td>-5.79</td><td>-8.54</td></tr><tr><td>03/31/2001</td><td>-6.33</td><td>0.42</td><td>0</td><td>-6.75</td><td>0</td><td>-5.14</td><td>-5.81</td><td>-5.56</td><td>-6.23</td></tr><tr><td>04/30/2001</td><td>7.77</td><td>0.39</td><td>0</td><td>7.38</td><td>0</td><td>5.25</td><td>4.67</td><td>4.86</td><td>4.28</td></tr><tr><td>05/31/2001</td><td>0.67</td><td>0.32</td><td>0</td><td>0.35</td><td>0</td><td>0.47</td><td>0.45</td><td>0.15</td><td>0.13</td></tr><tr><td>06/30/2001</td><td>-2.43</td><td>0.28</td><td>1</td><td>-2.71</td><td>-2.71</td><td>-3.48</td><td>-1.33</td><td>-3.76</td><td>-1.61</td></tr><tr><td>07/31/2001</td><td>-0.98</td><td>0.30</td><td>1</td><td>-1.28</td><td>-1.28</td><td>-2.24</td><td>-1.80</td><td>-2.54</td><td>-2.10</td></tr><tr><td>08/31/2001</td><td>-6.26</td><td>0.31</td><td>0</td><td>-6.57</td><td>0</td><td>-4.78</td><td>-5.41</td><td>-5.09</td><td>-5.72</td></tr><tr><td>09/30/2001</td><td>-8.08</td><td>0.28</td><td>0</td><td>-8.36</td><td>0</td><td>-6.46</td><td>-7.27</td><td>-6.74</td><td>-7.55</td></tr><tr><td>10/31/2001</td><td>1.91</td><td>0.22</td><td>0</td><td>1.69</td><td>0</td><td>1.01</td><td>2.30</td><td>0.79</td><td>2.08</td></tr><tr><td>11/30/2001</td><td>7.67</td><td>0.17</td><td>0</td><td>7.50</td><td>0</td><td>4.49</td><td>5.62</td><td>4.32</td><td>5.45</td></tr><tr><td>12/31/2001</td><td>0.88</td><td>0.15</td><td>1</td><td>0.73</td><td>0.73</td><td>1.93</td><td>2.14</td><td>1.78</td><td>1.99</td></tr><tr><td>01/31/2002</td><td>-1.46</td><td>0.14</td><td>1</td><td>-1.60</td><td>-1.6</td><td>-0.99</td><td>-3.27</td><td>-1.13</td><td>-3.41</td></tr><tr><td>02/28/2002</td><td>-1.93</td><td>0.13</td><td>1</td><td>-2.06</td><td>-2.06</td><td>-0.84</td><td>-2.68</td><td>-0.97</td><td>-2.81</td></tr><tr><td>03/31/2002</td><td>3.76</td><td>0.13</td><td>0</td><td>3.63</td><td>0</td><td>3.38</td><td>4.70</td><td>3.25</td><td>4.57</td></tr><tr><td>04/30/2002</td><td>-6.06</td><td>0.15</td><td>0</td><td>-6.21</td><td>0</td><td>-4.38</td><td>-3.32</td><td>-4.53</td><td>-3.47</td></tr><tr><td>05/31/2002</td><td>-0.74</td><td>0.14</td><td>0</td><td>-0.88</td><td>0</td><td>-1.78</td><td>-0.81</td><td>-1.92</td><td>-0.95</td></tr><tr><td>06/30/2002</td><td>-7.12</td><td>0.13</td><td>0</td><td>-7.25</td><td>0</td><td>-5.92</td><td>-5.29</td><td>-6.05</td><td>-5.42</td></tr><tr><td>07/31/2002</td><td>-7.80</td><td>0.15</td><td>0</td><td>-7.95</td><td>0</td><td>-6.37</td><td>-7.52</td><td>-6.52</td><td>-7.67</td></tr><tr><td>08/31/2002</td><td>0.66</td><td>0.14</td><td>0</td><td>0.52</td><td>0</td><td>-0.06</td><td>1.86</td><td>-0.20</td><td>1.72</td></tr><tr><td>09/30/2002</td><td>-10.87</td><td>0.14</td><td>0</td><td>-11.01</td><td>0</td><td>-9.38</td><td>-6.04</td><td>-9.52</td><td>-6.18</td></tr><tr><td>10/31/2002</td><td>8.80</td><td>0.14</td><td>0</td><td>8.66</td><td>0</td><td>3.46</td><td>5.10</td><td>3.32</td><td>4.96</td></tr><tr><td>11/30/2002</td><td>5.89</td><td>0.12</td><td>0</td><td>5.77</td><td>0</td><td>3.81</td><td>1.73</td><td>3.69</td><td>1.61</td></tr><tr><td>12/31/2002</td><td>-5.88</td><td>0.11</td><td>1</td><td>-5.99</td><td>-5.99</td><td>-4.77</td><td>-2.96</td><td>-4.88</td><td>-3.07</td></tr><tr><td>01/31/2003</td><td>-2.62</td><td>0.10</td><td>1</td><td>-2.72</td><td>-2.72</td><td>-1.63</td><td>-2.34</td><td>-1.73</td><td>-2.44</td></tr><tr><td>02/28/2003</td><td>-1.50</td><td>0.09</td><td>0</td><td>-1.59</td><td>0</td><td>-0.48</td><td>-2.28</td><td>-0.57</td><td>-2.37</td></tr><tr><td>03/31/2003</td><td>0.97</td><td>0.10</td><td>0</td><td>0.87</td><td>0</td><td>1.11</td><td>1.60</td><td>1.01</td><td>1.50</td></tr><tr><td>04/30/2003</td><td>8.24</td><td>0.10</td><td>0</td><td>8.14</td><td>0</td><td>6.67</td><td>5.44</td><td>6.57</td><td>5.34</td></tr><tr><td>05/31/2003</td><td>5.27</td><td>0.09</td><td>1</td><td>5.18</td><td>5.18</td><td>4.96</td><td>6.65</td><td>4.87</td><td>6.56</td></tr><tr><td>06/30/2003</td><td>1.28</td><td>0.10</td><td>1</td><td>1.18</td><td>1.18</td><td>0.69</td><td>1.18</td><td>0.59</td><td>1.08</td></tr><tr><td>07/31/2003</td><td>1.76</td><td>0.07</td><td>1</td><td>1.69</td><td>1.69</td><td>1.71</td><td>3.61</td><td>1.64</td><td>3.54</td></tr><tr><td>08/31/2003</td><td>1.95</td><td>0.07</td><td>1</td><td>1.88</td><td>1.88</td><td>1.32</td><td>1.13</td><td>1.25</td><td>1.06</td></tr></table>

Table 3 (Continued)

<table><tr><td rowspan="2">Month Ended</td><td rowspan="2">rM</td><td rowspan="2">rft</td><td rowspan="2">Dummy Dt</td><td rowspan="2">rM-fctxt</td><td rowspan="2">Dtxt</td><td colspan="4">Mutual Fund</td></tr><tr><td>A rt</td><td>B rt</td><td>A yt</td><td>B yt</td></tr><tr><td>09/30/2003</td><td>-1.06</td><td>0.08</td><td>1</td><td>-1.14</td><td>-1.14</td><td>-1.34</td><td>-1.12</td><td>-1.42</td><td>-1.20</td></tr><tr><td>10/31/2003</td><td>5.66</td><td>0.07</td><td>1</td><td>5.59</td><td>5.59</td><td>5.30</td><td>4.21</td><td>5.23</td><td>4.14</td></tr><tr><td>11/30/2003</td><td>0.88</td><td>0.07</td><td>1</td><td>0.81</td><td>0.81</td><td>0.74</td><td>1.18</td><td>0.67</td><td>1.11</td></tr><tr><td>12/31/2003</td><td>5.24</td><td>0.08</td><td>1</td><td>5.16</td><td>5.16</td><td>4.87</td><td>4.77</td><td>4.79</td><td>4.69</td></tr><tr><td>01/31/2004</td><td>1.84</td><td>0.07</td><td>1</td><td>1.77</td><td>1.77</td><td>0.87</td><td>2.51</td><td>0.80</td><td>2.44</td></tr><tr><td>02/29/2004</td><td>1.39</td><td>0.06</td><td>1</td><td>1.33</td><td>1.33</td><td>0.97</td><td>1.18</td><td>0.91</td><td>1.12</td></tr><tr><td>03/31/2004</td><td>-1.51</td><td>0.09</td><td>1</td><td>-1.60</td><td>-1.6</td><td>-0.89</td><td>-1.79</td><td>-0.98</td><td>-1.88</td></tr><tr><td>04/30/2004</td><td>-1.57</td><td>0.08</td><td>1</td><td>-1.65</td><td>-1.65</td><td>-2.59</td><td>-1.73</td><td>-2.67</td><td>-1.81</td></tr><tr><td>05/31/2004</td><td>1.37</td><td>0.06</td><td>0</td><td>1.31</td><td>0</td><td>0.66</td><td>0.83</td><td>0.60</td><td>0.77</td></tr><tr><td>06/30/2004</td><td>1.94</td><td>0.08</td><td>0</td><td>1.86</td><td>0</td><td>1.66</td><td>1.56</td><td>1.58</td><td>1.48</td></tr><tr><td>07/31/2004</td><td>-3.31</td><td>0.10</td><td>1</td><td>-3.41</td><td>-3.41</td><td>-2.82</td><td>-4.26</td><td>-2.92</td><td>-4.36</td></tr><tr><td>08/31/2004</td><td>0.40</td><td>0.11</td><td>0</td><td>0.29</td><td>0</td><td>-0.33</td><td>0.00</td><td>-0.44</td><td>-0.11</td></tr><tr><td>09/30/2004</td><td>1.08</td><td>0.11</td><td>0</td><td>0.97</td><td>0</td><td>1.20</td><td>1.99</td><td>1.09</td><td>1.88</td></tr><tr><td>10/31/2004</td><td>1.53</td><td>0.11</td><td>0</td><td>1.42</td><td>0</td><td>0.33</td><td>1.21</td><td>0.22</td><td>1.10</td></tr><tr><td>11/30/2004</td><td>4.05</td><td>0.15</td><td>1</td><td>3.90</td><td>3.9</td><td>4.87</td><td>5.68</td><td>4.72</td><td>5.53</td></tr><tr><td>12/31/2004</td><td>3.40</td><td>0.16</td><td>1</td><td>3.24</td><td>3.24</td><td>2.62</td><td>3.43</td><td>2.46</td><td>3.27</td></tr></table>

Notes:
1. The following information is used for determining the value of the dummy variable for the first three months:

<table><tr><td></td><td>rm</td><td>rf</td><td>rm-1</td></tr><tr><td>Sep-94</td><td>-2.41</td><td>0.37</td><td>-2.78</td></tr><tr><td>Oct-94</td><td>2.29</td><td>0.38</td><td>1.91</td></tr><tr><td>Nov-94</td><td>-3.67</td><td>0.37</td><td>-4.04</td></tr><tr><td>Dec-94</td><td>1.46</td><td>0.44</td><td>1.02</td></tr></table>

2. The dummy variable is defined as follows:
$D_{t}x_{t} = x_{t}$  if  $(r_M - r_{ft})$  for the prior three months  $>0$ $D_{t}x_{t} = 0$  otherwise

If  $\beta_{2i}$  is not statistically significant, then there is no difference in  $\beta_{i}$  for up and down markets.

In our illustration, we have to define what we mean by an up and a down market. We will

Table 4 Characteristic Line for Mutual Funds A and B

<table><tr><td>Coefficient</td><td>Coefficient Estimate</td><td>Standard Error</td><td>t-statistica</td><td>p-value</td></tr><tr><td colspan="5">Mutual Fund A</td></tr><tr><td>α</td><td>0.206</td><td>0.102</td><td>-2.014</td><td>0.046</td></tr><tr><td>β</td><td>0.836</td><td>0.022</td><td>37.176</td><td>0.000</td></tr><tr><td>R2</td><td>0.92</td><td></td><td></td><td></td></tr><tr><td>p-value</td><td>0.000</td><td></td><td></td><td></td></tr><tr><td colspan="5">Mutual Fund B</td></tr><tr><td>α</td><td>0.010</td><td>0.140</td><td>0.073</td><td>0.942</td></tr><tr><td>β</td><td>0.816</td><td>0.031</td><td>26.569</td><td>0.000</td></tr><tr><td>R2</td><td>0.86</td><td></td><td></td><td></td></tr><tr><td>p-value</td><td>0.000</td><td></td><td></td><td></td></tr></table>

${}^{a}$  Null hypothesis is that  $\beta$  is equal to zero.

define an up market precisely as one where the average excess return (market return over the risk-free rate or  $(r_{Mt} - r_{ft})$ ) for the prior three months is greater than zero. Then

$D_{t} = 1$  if the average  $(r_{Mt} - r_{ft})$  for the prior three months  $>0$ $D_{t} = 0$  otherwise

The regressor will then be

$D_{t}x_{t} = x_{t}$  if  $(r_{Mt} - r_{ft})$  for the prior three months  $>0$ $D_{t}x_{t} = 0$  otherwise

The data are presented in Table 3. The fourth column provides the coding for the dummy variable,  $D_{t}$ , and the sixth column shows the

Table 5 Regression Results for Dummy Variable Regression for Mutual Funds A and B

<table><tr><td>Coefficient</td><td>Coefficient Estimate</td><td>Standard Error</td><td>t-statistic</td><td>p-value</td></tr><tr><td colspan="5">Fund A</td></tr><tr><td>α</td><td>-0.23</td><td>0.10</td><td>-2.36</td><td>0.0198</td></tr><tr><td>β1</td><td>0.75</td><td>0.03</td><td>25.83</td><td>4E-50</td></tr><tr><td>β2</td><td>0.18</td><td>0.04</td><td>4.29</td><td>4E-05</td></tr><tr><td colspan="5">Fund B</td></tr><tr><td>α</td><td>0.00</td><td>0.14</td><td>-0.03</td><td>0.9762</td></tr><tr><td>β1</td><td>0.75</td><td>0.04</td><td>18.02</td><td>2E-35</td></tr><tr><td>β2</td><td>0.13</td><td>0.06</td><td>2.14</td><td>0.0344</td></tr></table> product of  $D_{t}$  and  $x_{t}$ . The regression results for the two mutual funds are shown in Table 5. The adjusted  $R^2$  is 0.93 and 0.83 for mutual funds A and B, respectively.


For both funds,  $\beta_{2i}$  is statistically significantly different from zero. Hence, for these two mutual funds, there is a difference in the  $\beta_{i}$  for up and down markets. From the results reported previously, we would find that:

<table><tr><td></td><td>Mutual Fund A</td><td>Mutual Fund B</td></tr><tr><td>Down market βi(=β1i)</td><td>0.75</td><td>0.75</td></tr><tr><td>Up market βi(=β1i+β2i)</td><td>0.93(=0.75+0.18)</td><td>0.88(=0.75+0.13)</td></tr></table>

# DEPENDENT CATEGORICAL VARIABLES

Thus far we have discussed models where the independent variables can be either quantitative or categorical while the dependent variable is quantitative. Let's now discuss models where the dependent variable is categorical. Recall that a regression model can be interpreted as a conditional probability distribution. Suppose that the dependent variable is a categorical variable  $Y$  that can assume two values, which we represent conventionally as 0 and 1. The probability distribution of the dependent variable is then a discrete function:

$$
\left\{ \begin{array}{l} \mathrm {P} (Y = 1) = p \\ \mathrm {P} (Y = 0) = q = 1 - p \end{array} \right.
$$

A regression model where the dependent variable is a categorical variable is therefore a probability model; that is, it is a model of the probability  $p$  given the values of the independent variables  $\mathbf{X}$ :

$$
\mathrm {P} (Y = 1 | \mathbf {X}) = f (\mathbf {X})
$$

In the following sections we will discuss three probability models: the linear probability model, the probit regression model, and the logit regression model.

# Linear Probability Model

The linear probability model assumes that the function  $f(\mathbf{X})$  is linear. For example, a linear probability model of default assumes that there is a linear relationship between the probability of default and the factors that determine default.

$$
\mathrm {P} (Y = 1 | \mathbf {X}) = f (\mathbf {X})
$$

The parameters of the model can be obtained by using ordinary least squares applying the estimation methods of multiple regression models entry. Once the parameters of the model are estimated, the predicted value for  $\mathrm{P}(Y)$  can be interpreted as the event probability such as the probability of default in our previous example. Note, however, that when using a linear probability model, in this entry the  $R^2$  is used only if all the independent variables are also binary variables.

A major drawback of the linear probability model is that the predicted value may be negative. In the probit regression and logit regression models described below, the predicted probability is forced to be between 0 and 1.

# Probit Regression Model

The probit regression model is a nonlinear regression model where the dependent variable is a binary variable. Due to its nonlinearity, one cannot estimate this model with least squares methods. We have to use maximum likelihood (ML) methods as described below.

Because what is being predicted is the standard normal cumulative probability distribution, the predicted values are between 0 and 1.

The general form for the probit regression model is

$$
\begin{array}{l} P (Y = 1 | X _ {1}, X _ {2}, \dots , X _ {K}) \\ = N \left(a + b _ {1} X _ {1} + b _ {2} X _ {2} + \dots + b _ {K} X _ {K}\right) \\ \end{array}
$$ where  $N$  is the cumulative standard normal distribution function.


To see how ML methods work, consider a model of the probability of corporate bond defaults. Suppose that there are three factors that have been found to historically explain corporate bond defaults. The probit regression model is then

$$
\left\{ \begin{array}{l} \mathrm {P} (Y = 1 | X _ {1} X _ {2}, X _ {3}) \\ \quad = N (\beta_ {0} + \beta_ {1} X _ {1} + \beta_ {2} X _ {2} + \beta_ {3} X _ {3}) \\ \mathrm {P} (Y = 0 | X _ {1}, X _ {2}, X _ {3}) \\ \quad = 1 - N (\beta_ {0} + \beta_ {1} X _ {1} + \beta_ {2} X _ {2} + \beta_ {3} X _ {3}) \end{array} \right.
$$

The likelihood function is formed from the products

$$
\begin{array}{l} \prod_ {i} N \left(\beta_ {0} + \beta_ {1} X _ {1 i} + \beta_ {2} X _ {2 i} + \beta_ {3} X _ {3 i}\right) ^ {Y _ {i}} \\ (1 - N \left(\beta_ {0} + \beta_ {1} X _ {1 i} + \beta_ {2} X _ {2 i} + \beta_ {3} X _ {3 i}\right)) ^ {1 - Y _ {i}} \\ \end{array}
$$ extended to all the samples, where the variable  $Y$  assumes a value of 0 for defaulted companies and 1 for nondefaulted companies. Parameters are estimated by maximizing the likelihood.


Suppose that the following parameters are estimated:

$$
\beta = - 2. 1 \quad \beta_ {1} = 1. 9 \quad \beta_ {2} = 0. 3 \quad \beta_ {3} = 0. 8
$$

Then

$$
\begin{array}{l} N \left(a + b _ {1} X _ {1} + b _ {2} X _ {2} + b _ {3} X _ {3}\right) \\ = N (- 2. 1 + 1. 9 X _ {1} + 0. 3 X _ {2} + 0. 8 X _ {3}) \\ \end{array}
$$

Now suppose that the probability of default of a company with the following values for the independent variables is sought:


$$
\begin{array}{c c c} X _ {1} = 0. 2 & X _ {2} = 0. 9 & X _ {3} = 1. 0 \end{array}
$$

Substituting these values we get

$$
N (- 2. 1 + 1. 9 (0. 2) + 0. 3 (0. 9) + 0. 8 (1. 0)) = N (- 0. 6 5)
$$

The standard normal cumulative probability for  $N(-0.65)$  is  $25.8\%$ . Therefore, the probability of default for a company with this characteristic is  $25.8\%$ .

# Application to Hedge Fund Survival

An illustration of the probit regression model is provided by Malkiel and Saha (2005) who use it to calculate the probability of the demise of a hedge fund. The dependent variable in the regression is 1 if a fund is defunct (did not survive) and 0 if it survived. The explanatory variables, their estimated coefficient, and the standard error of the coefficient using hedge fund data from 1994 to 2003 are given below:

<table><tr><td>Explanatory Variable</td><td>Coefficient</td><td>Standard Deviation</td></tr><tr><td>1. Return for the first quarter before the end of fund performance</td><td>-1.47</td><td>0.36</td></tr><tr><td>2. Return for the second quarter before the end of fund performance</td><td>-4.93</td><td>0.32</td></tr><tr><td>3. Return for the third quarter before the end of fund performance</td><td>-2.74</td><td>0.33</td></tr><tr><td>4. Return for the fourth quarter before the end of fund performance</td><td>-3.71</td><td>0.35</td></tr><tr><td>5. Standard deviation for the year prior to the end of fund performance</td><td>17.76</td><td>0.92</td></tr><tr><td>6. Number of times in the final three months the fund&#x27;s monthly return fell below the monthly median of all funds in the same primary category</td><td>0.00</td><td>0.33</td></tr><tr><td>7. Assets of the fund (in billions of dollars) estimated at the end of performance</td><td>-1.30</td><td>-7.76</td></tr><tr><td>Constant term</td><td>-0.37</td><td>0.07</td></tr></table>

For only one explanatory variable, the sixth one, the coefficient is not statistically significant from zero. That explanatory variable is a proxy for peer comparison of the hedge fund versus similar hedge funds. The results suggest that there is a lower probability of the demise of a hedge fund if there is good recent performance (the negative coefficient of the first four variables above) and the more assets under management (the negative coefficient for the last variable above). The greater the hedge fund performance return variability, the higher the probability of demise (the positive coefficient for the fifth variable above).

# Logit Regression Model

As with the probit regression model, the logit regression model is a nonlinear regression model where the dependent variable is a binary variable and the predicted values are between 0 and 1. The predicted value is also a cumulative probability distribution. However, rather than being a standard normal cumulative probability distribution, it is a standard cumulative probability distribution of a distribution called the logistic distribution.

The general formula for the logit regression model is

$$
\begin{array}{l} \mathrm {P} (Y = 1 | X _ {1}, X _ {2}, \dots , X _ {N}) \\ = F \left(a + b _ {1} X _ {1} + b _ {2} X _ {2} + \dots + b _ {N} X _ {N}\right) \\ = - 1 / 1 + e ^ {- \mathrm {W}} \\ \end{array}
$$ where  $W = a + b_{1}X_{1} + b_{2}X_{2} + \ldots +b_{\mathrm{N}}X_{\mathrm{N}}$


As with the probit regression model, the logit regression model is estimated with ML methods.

Using our previous illustration,  $W = -0.65$ . Therefore

$$
1 / [ 1 + e ^ {- W} ] = 1 / [ 1 + e ^ {- (- 0.65)} ] = 34.3 \%
$$

The probability of default for the company with these characteristics is  $34.3\%$ .

# KEY POINTS

- Categorical variables are variables that represent group membership and can appear in a regression equation as a regressor or as an independent variable.
- A dichotomous variable is an explanatory variable that distinguishes only two categories; the key is to represent a dichotomous categorical variable as a numerical variable, referred to as a dummy variable, that can assume the two values 0,1.
- When a dummy variable is a regressor, the  $t$ -statistic can be used to determine if that variable is statistically significant. The Chow test can also be used to test if all the dummy variables in a regression model are collectively relevant.
- A regression model where the dependent variable is a categorical variable is a probability model, and there are three types of such models: the probability model, the probit regression model, and the logit regression model.
- The linear probability model assumes that the probability model to be estimated is linear and can be estimated using least squares.
- The probit regression model is a nonlinear regression model where the dependent variable is a binary variable. The model cannot be estimated using least squares because it is a nonlinear model and is instead estimated using maximum likelihood methods.
- The logit regression model is a nonlinear regression model where the dependent variable is a binary variable and the predicted values are between 0 and 1 and represent a cumulative probability distribution. Rather than being a standard normal cumulative probability distribution, it is a standard cumulative probability of a logit.

# NOTE

1. The model presented in this illustration was developed by FridsonVision and is described in "Focus Issues Methodology," Leverage World (May 30, 2003). The data for this illustration were provided by Greg Braylovskiy of FridsonVision. The firm uses about 650 companies in its analysis. Only 100 observations were used in this illustration.

# REFERENCES

Chow, G. C. (1960). Tests of equality between sets of coefficients in two linear regressions. *Econometrica* 28: 591-605.
Fabozzi, F. J. (2006). Bond Markets, Analysis, and Strategies, 6th ed. Upper Saddle River, NJ: Prentice Hall.
Malkiel, B., and Saha, A. (2005). Hedge funds: Risk and return. Financial Analysts Journal 22: 80-88.

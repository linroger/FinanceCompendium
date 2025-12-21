---
title: Categorical and Dummy Variables in Regression Models
parent_directory: Financial Econometrics
formatted: 2025-12-21 11:00:00 AM
formatter_model: claude-opus-4-5-20251101
cli-tool: opencode
primary_tags:
  - categorical variables
  - dummy variables
  - regression models
  - financial econometrics
secondary_tags:
  - probit regression
  - logit regression
  - linear probability model
  - chow test
  - mutual fund performance
  - corporate bond spreads
  - hedge fund survival
cssclasses: academia
---

# Categorical and Dummy Variables in Regression Models

SERGIO M. FOCARDI, PhD

Partner, The Intertek Group

FRANK J. FABOZZI, PhD, CFA, CPA

Professor of Finance, EDHEC Business School

Abstract: In the application of regression analysis there are many situations where either the dependent variable or one or more of the regressors are categorical variables. When one or more categorical variables are used as regressors, a financial modeler must understand how to code the data, test for the significance of the categorical variables, and, based on the coding, how to interpret the estimated parameters. When the dependent variable is a categorical variable, the model is a probability model.

There are many times in the application of regression analysis when the financial modeler will need to include a categorical variable rather than a continuous variable as a regressor. Categorical variables are variables that represent group membership. For example, given a set of bonds, the rating is a categorical variable that indicates to what category—AA, BB, and so on—each bond belongs. A categorical variable does not have a numerical value or a numerical interpretation in itself. Thus the fact that a bond is in category AA or BB does not, in itself, measure any quantitative characteristic of the bond, though quantitative attributes such as a bond's yield spread can be associated with each category.

In this entry, we will discuss how to deal with regressors that are categorical variables in a regression model. There are also applications where the dependent variable may be a categorical variable. For example, the dependent variable could be bankruptcy or nonbankruptcy of a company over some period of time. In such cases, the product of a regression is a probability. Probability models of this type include linear probability, logit regression, and probit linear models.


## INDEPENDENT CATEGORICAL VARIABLES

Categorical input variables are used to cluster input data into different groups. That is, suppose we are given a set of input-output data and a partition of the data set in a number of subsets  $A_{i}$  so that each data point belongs to one and only one set. The  $A_{i}$  represent a categorical input variable. In financial econometrics categories might represent, for example, different market regimes, economic states, ratings, countries, industries, or sectors.


We cannot, per se, mix quantitative input variables and categorical variables. For example, we cannot sum yield spreads and their ratings. However, we can perform a transformation that allows the mixing of categorical and quantitative variables. Let's see how. Suppose first that there is only one categorical input variable  $D$ , one quantitative input variable  $X$ , and one quantitative output variable  $Y$ . Consider our set of quantitative data, that is, quantitative observations. We organize data in a matrix form as usual:

Suppose data belong to two categories. An explanatory variable that distinguishes only two categories is called a dichotomous variable. The key is to represent a dichotomous categorical variable as a numerical variable  $D$ , called a dummy variable, that can assume the two values 0,1. We can now add the variable  $D$  to the input variables to represent membership in one or the other group:

$$
X = \left[ \begin{array}{c c c} D_{1} & 1 & X_{1 1} \\ \vdots & \vdots & \vdots \\ D_{T} & 1 & X_{T 1} \end{array} \right]
$$

If  $D_{i} = 0$ , the data  $X_{i}$  belong to the first category; if  $D_{i} = 1$ , the data  $X_{i}$  belong to the second category.

Consider now the regression equation

$$
Y_{i} = \beta_{0} + \beta_{1} X_{i} + \varepsilon_{i}
$$

In financial econometric applications, the index  $i$  will be time or a variable that identifies a cross section of assets, such as bond issues. Consider that we can write three separate regression equations, one for those data that correspond to  $D = 1$ , one for those data that correspond to  $D = 0$ , and one for the fully pooled data. Suppose now that the three equations differ by the intercept term but have the same slope. Let's explicitly write the two equations for those data that correspond to  $D = 1$  and for those data that correspond to  $D = 0$ :


$$
\mathrm{y}_{i} = \left\{ \begin{array}{l l} \beta_{0 0} + \beta_{1 X_{i}} + \varepsilon_{i}, & \text{if } D_{i} = 0 \\ \beta_{0 1} + \beta_{1} X_{i} + \varepsilon_{i}, & \text{if } D_{i} = 1 \end{array} \right.
$$ where  $i$  defines the observations that belong to the first category when the dummy variable  $D$  assumes value 0 and also defines the observations that belong to the second category when the dummy variable  $D$  assumes value 1. If the two categories are recession and expansion, the first equation might hold in periods of expansion and the second in periods of recession. If the two categories are investment-grade bonds and noninvestment-grade bonds, the two equations apply to different cross sections of bonds, as will be illustrated in an example later in this entry.


Observe now that, under the assumption that only the intercept term differs in the two equations, the two equations can be combined into a single equation in the following way:

$$
Y_{i} = \beta_{0 0} + \gamma D (i) + \beta_{1} X_{i} + \varepsilon_{i}
$$ where  $\gamma = \beta_{01} - \beta_{00}$  represents the difference of the intercept for the two categories. In this way we have defined a single regression equation with two independent quantitative variables,  $X, D$ , to which we can apply all the usual tools of regression analysis, including the ordinary least squares (OLS) estimation method and all the tests. By estimating the coefficients of this regression, we obtain the common slope and two intercepts. Observe that we would obtain the same result if the categories were inverted. However, the interpretation of the estimated parameter for the categorical variable would differ depending on which category is omitted.


Thus far we have assumed that there is no interaction between the categorical and the quantitative variable, that is, the slope of the regression is the same for the two categories. This means that the effects of variables are additive; that is, the effect of one variable is added regardless of the value taken by the other variable. In many applications, this is an unrealistic assumption.


Using dummy variables, the treatment is the same as that applied to intercepts. Consider the regression equation  $Y_{i} = \beta_{0} + \beta_{1}X_{i} + \varepsilon_{i}$  and write two regression equations for the two categories as we did above:

$$
\mathrm{y}_{i} = \left\{ \begin{array}{l l} \beta_{0} + \beta_{1 0 X_{i}} + \varepsilon_{i}, & \text{if } D_{i} = 0 \\ \beta_{0} + \beta_{1 1 X_{i}} + \varepsilon_{i}, & \text{if } D_{i} = 1 \end{array} \right.
$$

We can couple these two equations in a single equation as follows:

$$
Y_{i} = \beta_{0} + \beta_{1 0} X_{i} + \delta \left(D_{i} X_{i}\right) + \varepsilon_{i}
$$ where  $\delta = \beta_{11} - \beta_{10}$ . In fact, the above equation is identical to the first equation for  $D_{i} = 0$  and to the second for  $D_{i} = 1$ . This regression can be estimated with the usual LS methods.


In practice, it is rarely appropriate to consider only interactions and not the intercept, which is the main effect. We call marginalization the fact that the interaction effect is marginal with respect to the main effect. However, we can easily construct a model that combines both effects. In fact we can write the following regression adding two variables, the dummy  $D$  and the interaction  $DX$ :

$$
Y_{i} = \beta_{0} + \gamma D_{i} + \beta_{1} X_{i} + \delta \left(D_{i} X_{i}\right) + \varepsilon_{i}
$$

This regression equation, which now includes three regressors, combines both effects.

The above process of introducing dummy variables can be generalized to regressions with multiple variables. Consider the following regression:

$$
Y_{i} = \beta_{0} + \sum_{j = 1}^{N} \beta_{j} X_{i j} + \varepsilon_{i}
$$ where data can be partitioned in two categories with the use of a dummy variable:


$$
\mathbf {X} = \left[ \begin{array}{c c c c c} D_{1} & 1 & X_{1 1} & \dots & X_{1 N} \\ \vdots & \vdots & \vdots & \ddots & \vdots \\ D_{T} & 1 & X_{T 1} & \dots & X_{T N} \end{array} \right]
$$

We can introduce the dummy  $D$  as well as its interaction with the  $N$  quantitative variable and thus write the following equation:


$$
Y_{i} = \beta_{0} + \gamma_{i} D_{i} + \sum_{j = 1}^{N} \beta_{j} X_{i j} + \sum_{j = 1}^{N} \delta_{i j} (D_{i} X_{i j}) + \varepsilon_{i}
$$

The above discussion depends critically on the fact that there are only two categories, a fact that allows one to use the numerical variable 0,1 to identify the two categories. However, the process can be easily extended to multiple categories by adding dummy variables. Suppose there are  $K > 2$  categories. An explanatory variable that distinguishes between more than two categories is called a polytomous variable.

Suppose there are three categories,  $A$ ,  $B$ , and  $C$ . Consider a dummy variable  $D1$  that assumes a value one on the elements of  $A$  and zero on all the others. Let's now add a second dummy variable  $D2$  that assumes the value one on the elements of the category  $B$  and zero on all the others. The three categories are now completely identified:  $A$  is identified by the values 1,0 of the two dummy variables,  $B$  by the values 0,1, and  $C$  by the values 0,0. Note that the values 1,1 do not identify any category. This process can be extended to any number of categories. If there are  $K$  categories, we need  $K - 1$  dummy variables.

How can we determine if a given categorization is useful? It is quite obvious that many categorizations will be totally useless for the purpose of any econometric regression. If we categorize bonds in function of the color of the logo of the issuer, it is quite obvious that we obtain meaningless results. In other cases, however, distinctions can be subtle and important. Consider the question of market regime shifts or structural breaks. These are delicate questions that can be addressed only with appropriate statistical tests.

A word of caution about statistical tests is in order. Statistical tests typically work under the assumptions of the model and might be misleading if these assumptions are violated. If we try to fit a linear model to a process that is inherently nonlinear, tests might be misleading. It is good practice to use several tests and to be particularly attentive to inconsistencies between test results. Inconsistencies signal potential problems in applying tests, typically model misspecification.


The  $t$ -statistic applied to the regression coefficients of dummy variables offer a set of important tests to judge which regressors are significant. The  $t$ -statistics are the coefficients divided by their respective squared errors. The  $p$ -value associated with each coefficient estimate is the probability of the hypothesis that the corresponding coefficient is zero, that is, that the corresponding variable is irrelevant.

We can also use the  $F$ -test to test the significance of each specific dummy variable. To do so we can run the regression with and without that variable and form the corresponding  $F$ -test. The Chow test is the  $F$ -test to gauge if all the dummy variables are collectively irrelevant (see Chow, 1960). The Chow test is an  $F$ -test of mutual exclusion, written as follows:

$$
F = \frac{[ S S R - (S S R_{1} + S S R_{2}) ]}{S S R_{1} + S S R_{2}} \frac{[ n - 2 (k + 1) ]}{k + 1}
$$ where


$SSR_{1} =$  the squared sum of residuals of the regression run with data in the first category without dummy variables

$SSR_{2} =$  the squared sum of residuals of the regression run with data in the second category without dummy variables

SSR = the squared sum of residuals of the regression run with fully pooled data without dummy variables

Observe that  $SSR_{1} + SSR_{2}$  is equal to the squared sum of residuals of the regression run on fully pooled data but with dummy variables. Thus the Chow test is the  $F$ -test of the unrestricted regressions with and without dummy variables.

## Illustration: Predicting Corporate Bond Yield Spreads

To illustrate the use of dummy variables, we will estimate a model to predict corporate bond spreads. The regression is relative to a cross section of bonds. The regression equation is the following:

$$
\begin{array}{l} \operatorname{Sp re ad}_{i} = \beta_{0} + \beta_{1} \text{Co up on}_{i} + \beta_{2} \text{Co ve ra ge Ra ti o}_{i} \\ + \beta_{3} \text{Lo gg ed EB IT}_{i} + \varepsilon_{i} \\ \end{array}
$$ where


$\mathrm{Spread}_i =$  option-adjusted spread (in basis points) for the bond issue of company  $i$

[ \text{Coupon}_i = \frac{\text{couponrateforthebondofcompany } i, \text{expressedwithoutconsideringpercentagesign (i.e.,} 7.5\% = 7.5)} ]

$\text{CoverageRatio}_i = \frac{\text{earningsbeforeinterest,taxes,depreciationandamortization (EBITDA)dividedbyinterestexpense}}{for company i}$

[ \text{LoggedEBIT}_i = \frac{\text{logarithmofearnings}}{(\text{earningsbeforeinterestandtaxes,EBIT,inmillionsofdollars})} ] for company  $i$

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
\begin{array}{l} \operatorname{Sp re ad}_{i} = \beta_{0} + \beta_{1} D 1_{i} + \beta_{2} \text{Co up on}_{i} \\ + \beta_{3} D 1_{i} \text{Co up on}_{i} + \beta_{4} \text{Co ve ra ge Ra ti o}_{i} \\ + \beta_{5} D 1_{i} \text{Co ve ra ge Ra ti o}_{i} + \beta_{6} \text{Lo gg ed EB IT}_{i} \\ + \beta_{7} D 1_{i} \text{Lo gg ed EB IT}_{i} + \varepsilon_{i} \\ \end{array}
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

<table><tr><td>Issue #</td><td>Spread, 11/28/05</td><td>CCC+ and Below</td><td>Coupon</td><td>Coverage Ratio</td><td>Logged EBIT</td><td>Spread, 6/6/05</td><td>CCC+ and Below</td><td>Coupon</td><td>Coverage Ratio</td><td>Logged EBIT</td></tr><tr><td>1</td><td>509</td><td>0</td><td>7.400</td><td>2.085</td><td>2.121</td><td>473</td><td>0</td><td>7.400</td><td>2.087</td><td>2.111</td></tr><tr><td>2</td><td>584</td><td>0</td><td>8.500</td><td>2.085</td><td>2.121</td><td>529</td><td>0</td><td>8.500</td><td>2.087</td><td>2.111</td></tr><tr><td>3</td><td>247</td><td>0</td><td>8.375</td><td>9.603</td><td>2.507</td><td>377</td><td>0</td><td>8.375</td><td>5.424</td><td>2.234</td></tr><tr><td>4</td><td>73</td><td>0</td><td>6.650</td><td>11.507</td><td>3.326</td><td>130</td><td>0</td><td>6.650</td><td>9.804</td><td>3.263</td></tr><tr><td>5</td><td>156</td><td>0</td><td>7.125</td><td>11.507</td><td>3.326</td><td>181</td><td>0</td><td>7.125</td><td>9.804</td><td>3.263</td></tr><tr><td>6</td><td>240</td><td>0</td><td>7.250</td><td>2.819</td><td>2.149</td><td>312</td><td>0</td><td>7.250</td><td>2.757</td><td>2.227</td></tr><tr><td>7</td><td>866</td><td>1</td><td>9.000</td><td>1.530</td><td>2.297</td><td>852</td><td>1</td><td>9.000</td><td>1.409</td><td>1.716</td></tr><tr><td>8</td><td>275</td><td>0</td><td>5.950</td><td>8.761</td><td>2.250</td><td>227</td><td>0</td><td>5.950</td><td>11.031</td><td>2.166</td></tr><tr><td>9</td><td>515</td><td>0</td><td>8.000</td><td>2.694</td><td>2.210</td><td>480</td><td>0</td><td>8.000</td><td>2.651</td><td>2.163</td></tr><tr><td>10</td><td>251</td><td>0</td><td>7.875</td><td>8.289</td><td>1.698</td><td>339</td><td>0</td><td>7.875</td><td>8.231</td><td>1.951</td></tr><tr><td>11</td><td>507</td><td>0</td><td>9.375</td><td>2.131</td><td>2.113</td><td>452</td><td>0</td><td>9.375</td><td>2.039</td><td>2.042</td></tr><tr><td>12</td><td>223</td><td>0</td><td>7.750</td><td>4.040</td><td>2.618</td><td>237</td><td>0</td><td>7.750</td><td>3.715</td><td>2.55</td></tr><tr><td>13</td><td>-223.61800</td><td>-213.055000</td><td>-202.748000</td></tr><tr><td>14</td><td>54.13075</td><td>99.735710</td><td>123.153000</td></tr><tr><td>15</td><td>-29.42160</td><td>-132.755000</td><td>-179.955000</td></tr><tr><td>16</td><td>27.74192</td><td>26.913670</td><td>24.308960</td></tr><tr><td>17</td><td>79.04072</td><td>63.114850</td><td>58.091160</td></tr><tr><td>18</td><td>-8.57759</td><td>-3.366800</td><td>-5.003930</td></tr><tr><td>19</td><td>18.62462</td><td>13.109110</td><td>9.664499</td></tr><tr><td>20</td><td>-123.21000</td><td>-56.256500</td><td>-48.090100</td></tr><tr><td>21</td><td>-181.64800</td><td>-140.494000</td><td>-118.369000</td></tr><tr><td>22</td><td>26.43157</td><td>27.457990</td><td>14.487850</td></tr><tr><td>23</td><td>71.79254</td><td>84.897050</td><td>73.862080</td></tr><tr><td>24</td><td>63.73623</td><td>93.025400</td><td>84.583560</td></tr><tr><td>25</td><td>-23.09740</td><td>-22.603200</td><td>-3.106990</td></tr><tr><td>26</td><td>-146.00700</td><td>-117.58200</td><td>-88.168700</td><td>-82.883100</td></tr><tr><td>54</td><td>159</td><td>0</td><td>6.875</td><td>8.286</td><td>3.146</td><td>216</td><td>0</td><td>6.875</td><td>7.210</td><td>3.098</td></tr><tr><td>55</td><td>191</td><td>0</td><td>7.125</td><td>8.286</td><td>3.146</td><td>257</td><td>0</td><td>7.125</td><td>7.210</td><td>3.098</td></tr><tr><td>56</td><td>148</td><td>0</td><td>7.375</td><td>8.286</td><td>3.146</td><td>117</td><td>0</td><td>7.375</td><td>7.210</td><td>3.098</td></tr><tr><td>57</td><td>112</td><td>0</td><td>7.600</td><td>8.286</td><td>3.146</td><td>151</td><td>0</td><td>7.600</td><td>7.210</td><td>3.098</td></tr><tr><td>58</td><td>171</td><td>0</td><td>7.650</td><td>8.286</td><td>3.146</td><td>221</td><td>0</td><td>7.650</td><td>7.210</td><td>3.098</td></tr><tr><td>59</td><td>319</td><td>0</td><td>7.375</td><td>3.847</td><td>1.869</td><td>273</td><td>0</td><td>7.375</td><td>4.299</td><td>1.860</td></tr><tr><td>60</td><td>250</td><td>0</td><td>7.375</td><td>12.656</td><td>2.286</td><td>289</td><td>0</td><td>7.375</td><td>8.713</td><td>2.364</td></tr><tr><td>61</td><td>146</td><td>0</td><td>5.500</td><td>5.365</td><td>3.175</td><td>226</td><td>0</td><td>5.500</td><td>5.147</td><td>3.190</td></tr><tr><td>62</td><td>332</td><td>0</td><td>6.450</td><td>5.365</td><td>3.175</td><td>345</td><td>0</td><td>6.450</td><td>5.147</td><td>3.190</td></tr><tr><td>63</td><td>354</td><td>0</td><td>6.500</td><td>5.365</td><td>3.175</td><td>348</td><td>0</td><td>6.500</td><td>5.147</td><td>3.190</td></tr><tr><td>64</td><td>206</td><td>0</td><td>6.625</td><td>7.140</td><td>2.266</td><td>261</td><td>0</td><td>6.625</td><td>5.596</td><td>2.091</td></tr><tr><td>65</td><td>558</td><td>0</td><td>7.875</td><td>2.050</td><td>2.290</td><td>455</td><td>0</td><td>7.875</td><td>2.120</td><td>2.290</td></tr>

Table 1 (Continued)

<table><tr><td>Issue #</td><td>Spread, 11/28/05</td><td>CCC+ and Below</td><td>Coupon</td><td>Coverage Ratio</td><td>Logged EBIT</td><td>Spread, 6/6/05</td><td>CCC+ and Below</td><td>Coupon</td><td>Coverage Ratio</td><td>Logged EBIT</td></tr><tr><td>54</td><td>159</td><td>0</td><td>6.875</td><td>8.286</td><td>3.146</td><td>216</td><td>0</td><td>6.875</td><td>7.210</td><td>3.098</td></tr><tr><td>55</td><td>191</td><td>0</td><td>7.125</td><td>8.286</td><td>3.146</td><td>257</td><td>0</td><td>7.125</td><td>7.210</td><td>3.098</td></tr><tr><td>56</td><td>148</td><td>0</td><td>7.375</td><td>8.286</td><td>3.146</td><td>117</td><td>0</td><td>7.375</td><td>7.210</td><td>3.098</td></tr><tr><td>57</td><td>112</td><td>0</td><td>7.600</td><td>8.286</td><td>3.146</td><td>151</td><td>0</td><td>7.600</td><td>7.210</td><td>3.098</td></tr><tr><td>58</td><td>171</td><td>0</td><td>7.650</td><td>8.286</td><td>3.146</td><td>221</td><td>0</td><td>7.650</td><td>7.210</td><td>3.098</td></tr><tr><td>59</td><td>319</td><td>0</td><td>7.375</td><td>3.847</td><td>1.869</td><td>273</td><td>0</td><td>7.375</td><td>4.299</td><td>1.860</td></tr><tr><td>60</td><td>250</td><td>0</td><td>7.375</td><td>12.656</td><td>2.286</td><td>289</td><td>0</td><td>7.375</td><td>8.713</td><td>2.364</td></tr><tr><td>61</td><td>146</td><td>0</td><td>5.500</td><td>5.365</td><td>3.175</td><td>226</td><td>0</td><td>5.500</td><td>5.147</td><td>3.190</td></tr><tr><td>62</td><td>332</td><td>0</td><td>6.450</td><td>5.365</td><td>3.175</td><td>345</td><td>0</td><td>6.450</td><td>5.147</td><td>3.190</td></tr><tr><td>63</td><td>354</td><td>0</td><td>6.500</td><td>5.365</td><td>3.175</td><td>348</td><td>0</td><td>6.500</td><td>5.147</td><td>3.190</td></tr><tr><td>64</td><td>206</td><td>0</td><td>6.625</td><td>7.140</td><td>2.266</td><td>261</td><td>0</td><td>6.625</td><td>5.596</td><td>2.091</td></tr><tr><td>65</td><td>558</td><td>0</td><td>7.875</td><td>2.050</td><td>2.290</td><td>455</td><td>0</td><td>7.875</td><td>2.120</td><td>2.290</td></tr>

Notes:
Spread  $=$  option-adjusted spread (in basis points)
Coupon = coupon rate, expressed without considering percentage sign (i.e., 7.5\% = 7.5)
Coverage Ratio = EBITDA divided by interest expense for company
Logged EBIT = logarithm of earnings (EBIT in millions of dollars)

Table 2 Illustration of Residuals and Leverage for Corporate Bond Spread

<table><tr><td>Issue #</td><td>Residuals</td><td>Residuals Dummy 1</td><td>Residuals Dummy 2</td></tr><tr><td>1</td><td>118.79930</td><td>148.931400</td><td>162.198700</td></tr><tr><td>2</td><td>126.39350</td><td>183.097400</td><td>200.622000</td></tr><tr><td>3</td><td>-68.57770</td><td>-39.278100</td><td>-26.716500</td></tr><tr><td>4</td><td>-37.26080</td><td>-60.947500</td><td>-71.034400</td></tr><tr><td>5</td><td>16.63214</td><td>4.419645</td><td>-3.828890</td></tr><tr><td>6</td><td>-128.76600</td><td>-104.569000</td><td>-92.122000</td></tr><tr><td>7</td><td>386.42330</td><td>191.377200</td><td>217.840000</td></tr><tr><td>8</td><td>73.53972</td><td>48.516800</td><td>56.58778</td></tr><tr><td>9</td><td>104.15990</td><td>146.400600</td><td>160.438900</td></tr><tr><td>10</td><td>-124.78700</td><td>-98.020100</td><td>-71.374300</td></tr><tr><td>11</td><td>-4.28874</td><td>73.473220</td><td>94.555400</td></tr><tr><td>12</td><td>-117.58200</td><td>-88.168700</td><td>-82.883100</td></tr><tr><td>13</td><td>-223.61800</td><td>-213.055000</td><td>-202.748000</td></tr><tr><td>14</td><td>54.13075</td><td>99.735710</td><td>123.153000</td></tr><tr><td>15</td><td>-29.42160</td><td>-132.755000</td><td>-179.955000</td></tr><tr><td>16</td><td>27.74192</td><td>26.913670</td><td>24.308960</td></tr><tr><td>17</td><td>79.04072</td><td>63.114850</td><td>58.091160</td></tr><tr><td>18</td><td>-8.57759</td><td>-3.366800</td><td>-5.003930</td></tr><tr><td>19</td><td>18.62462</td><td>13.109110</td><td>9.664499</td></tr><tr><td>20</td><td>-123.21000</td><td>-56.256500</td><td>-48.090100</td></tr><tr><td>21</td><td>-181.64800</td><td>-140.494000</td><td>-118.369000</td></tr><tr><td>22</td><td>26.43157</td><td>27.457990</td><td>14.487850</td></tr><tr><td>23</td><td>71.79254</td><td>84.897050</td><td>73.862080</td></tr><tr><td>24</td><td>63.73623</td><td>93.025400</td><td>84.583560</td></tr><tr><td>25</td><td>-23.09740</td><td>-22.603200</td><td>-3.106990</td></tr><tr><td>26</td><td>-146.00700</td><td>-117.58200</td><td>-88.168700</td><td>-82.883100</td></tr><tr><td>54</td><td>159</td><td>0</td><td>6.875</td><td>8.286</td><td>3.146</td><td>216</td><td>0</td><td>6.875</td><td>7.210</td><td>3.098</td></tr><tr><td>55</td><td>191</td><td>0</td><td>7.125</td><td>8.286</td><td>3.146</td><td>257</td><td>0</td><td>7.125</td><td>7.210</td><td>3.098</td></tr><tr><td>56</td><td>148</td><td>0</td><td>7.375</td><td>8.286</td><td>3.146</td><td>117</td><td>0</td><td>7.375</td><td>7.210</td><td>3.098</td></tr><tr><td>57</td><td>112</td><td>0</td><td>7.600</td><td>8.286</td><td>3.146</td><td>151</td><td>0</td><td>7.600</td><td>7.210</td><td>3.098</td></tr><tr><td>58</td><td>171</td><td>0</td><td>7.650</td><td>8.286</td><td>3.146</td><td>221</td><td>0</td><td>7.650</td><td>7.210</td><td>3.098</td></tr><tr><td>59</td><td>319</td><td>0</td><td>7.375</td><td>3.847</td><td>1.869</td><td>273</td><td>0</td><td>7.375</td><td>4.299</td><td>1.860</td></tr><tr><td>60</td><td>250</td><td>0</td><td>7.375</td><td>12.656</td><td>2.286</td><td>289</td><td>0</td><td>7.375</td><td>8.713</td><td>2.364</td></tr><tr><td>61</td><td>146</td><td>0</td><td>5.500</td><td>5.365</td><td>3.175</td><td>226</td><td>0</td><td>5.500</td><td>5.147</td><td>3.190</td></tr><tr><td>62</td><td>332</td><td>0</td><td>6.450</td><td>5.365</td><td>3.175</td><td>345</td><td>0</td><td>6.450</td><td>5.147</td><td>3.190</td></tr><tr><td>63</td><td>354</td><td>0</td><td>6.500</td><td>5.365</td><td>3.175</td><td>348</td><td>0</td><td>6.500</td><td>5.147</td><td>3.190</td></tr><tr><td>64</td><td>206</td><td>0</td><td>6.625</td><td>7.140</td><td>2.266</td><td>261</td><td>0</td><td>6.625</td><td>5.596</td><td>2.091</td></tr><tr><td>65</td><td>558</td><td>0</td><td>7.875</td><td>2.050</td><td>2.290</td><td>455</td><td>0</td><td>7.875</td><td>2.120</td><td>2.290</td></tr>

(Continued)

Table 2 (Continued)

<table><tr><td>Issue #</td><td>Residuals</td><td>Residuals Dummy 1</td><td>Residuals Dummy 2</td></tr><tr><td>56</td><td>-65.598100</td><td>-61.220800</td><td>-66.275700</td></tr><tr><td>57</td><td>-115.386000</td><td>-105.573000</td><td>-109.757000</td></tr><tr><td>58</td><td>-59.449600</td><td>-48.429300</td><td>-52.419900</td></tr><tr><td>59</td><td>-69.299000</td><td>-43.044000</td><td>-23.885700</td></tr><tr><td>60</td><td>15.946800</td><td>13.880220</td><td>28.513500</td></tr><tr><td>61</td><td>11.362190</td><td>-21.353800</td><td>-35.607900</td></tr><tr><td>62</td><td>139.148000</td><td>129.380400</td><td>118.803100</td></tr><tr><td>63</td><td>158.084100</td><td>149.524300</td><td>139.140600</td></tr><tr><td>64</td><td>-56.785300</td><td>-60.952000</td><td>-51.339900</td></tr><tr><td>65</td><td>153.651800</td><td>194.149900</td><td>205.750200</td></tr><tr><td>66</td><td>-15.653600</td><td>-28.630900</td><td>-40.227500</td></tr><tr><td>67</td><td>-19.612200</td><td>-14.472300</td><td>-23.166100</td></tr><tr><td>68</td><td>209.488200</td><td>144.261600</td><td>67.891100</td></tr><tr><td>69</td><td>-185.659000</td><td>-100.217000</td><td>-63.396000</td></tr><tr><td>70</td><td>-91.541800</td><td>-92.646100</td><td>-91.015000</td></tr><tr><td>71</td><td>-36.623800</td><td>-33.937000</td><td>-29.003400</td></tr><tr><td>72</td><td>-65.586300</td><td>-51.301800</td><td>-59.080100</td></tr><tr><td>73</td><td>39.294110</td><td>32.661770</td><td>32.391920</td></tr><tr><td>74</td><td>28.197460</td><td>14.759650</td><td>12.952710</td></tr><tr><td>75</td><td>-73.910000</td><td>-28.902200</td><td>-22.353300</td></tr><tr><td>76</td><td>-78.608000</td><td>-47.733800</td><td>-48.902600</td></tr><tr><td>77</td><td>5.711553</td><td>30.546620</td><td>28.410290</td></tr><tr><td>78</td><td>-10.926100</td><td>22.258560</td><td>38.888810</td></tr><tr><td>79</td><td>-71.611400</td><td>-69.462200</td><td>-67.416900</td></tr><tr><td>80</td><td>-10.848000</td><td>3.505179</td><td>15.3839</td></tr><tr><td>111</td><td>-66.995600</td><td>11.539420</td><td>7.987728</td></tr><tr><td>112</td><td>-113.425000</td><td>-82.640800</td><td>-88.147800</td></tr><tr><td>113</td><td>-209.054000</td><td>-198.177000</td><td>-205.892000</td></tr><tr><td>114</td><td>107.522000</td><td>152.737700</td><td>142.464600</td></tr><tr><td>115</td><td>41.638860</td><td>-76.825800</td><td>-145.458000</td></tr><tr><td>116</td><td>7.647833</td><td>10.327540</td><td>9.887700</td></tr><tr><td>117</td><td>33.946630</td><td>21.528710</td><td>18.669900</td></tr><tr><td>118</td><td>-22.671700</td><td>-13.952900</td><td>-13.425200</td></tr><tr><td>119</td><td>40.107630</td><td>35.729610</td><td>24.798540</td></tr><tr><td>120</td><td>-142.727000</td><td>-74.636000</td><td>-73.956000</td></tr><tr><td>121</td><td>-63.286100</td><td>-31.013100</td><td>-33.970100</td></tr><tr><td>122</td><td>61.774140</td><td>64.481450</td><td>64.302480</td></tr><tr><td>123</td><td>87.135110</td><td>101.920500</td><td>103.676700</td></tr><tr><td>124</td><td>62.078800</td><td>93.048860</td><td>97.398200</td></tr><tr><td>125</td><td>48.320900</td><td>45.935300</td><td>36.150130</td></tr><tr><td>126</td><td>-121.736000</td><td>-90.029000</td><td>-92.609500</td></tr><tr><td>127</td><td>87.253680</td><td>111.626800</td><td>105.229900</td></tr><tr><td>128</td><td>-106.767000</td><td>-91.452500</td><td>-99.300700</td></tr><tr><td>129</td><td>-28.566900</td><td>-22.540100</td><td>-29.135400</td></tr><tr><td>130</td><td>108.560100</td><td>98.752280</td><td>95.570570</td></tr><tr><td>131</td><td>64.418690</td><td>71.586810</td><td>60.886980</td></tr><tr><td>132</td><td>-95.752300</td><td>-75.902200</td><td>-84.570100</td></tr><tr><td>133</td><td>-27.665900</td><td>-28.348600</td><td>-40.306300</td></tr><tr><td>134</td><td>-19.581300</td><td>-12.413200</td><td>-23.113000</td></tr><tr><td>135</td><td>-119.564000</td><td>-110.8260</td><td>-135.061000</td><td>-103.830000</td><td>-107.375000</td></tr><tr><td>166</td><td>-4.652580</td><td>-18.233400</td><td>-27.698600</td></tr><tr><td>167</td><td>-10.611100</td><td>-6.074840</td><td>-12.637200</td></tr><tr><td>168</td><td>35.778970</td><td>164.163000</td><td>162.921500</td></tr><tr><td>169</td><td>-215.328000</td><td>-131.013000</td><td>-135.422000</td></tr><tr><td>170</td><td>-59.986400</td><td>-60.605400</td><td>-70.729300</td></tr><tr><td>171</td><td>-74.693600</td><td>-66.782400</td><td>-69.716200</td></tr><tr><td>172</td><td>-13.734800</td><td>0.523639</td><td>-3.905600</td></tr><tr><td>173</td><td>45.295840</td><td>38.898770</td><td>30.164940</td></tr><tr><td>174</td><td>30.476800</td><td>13.024800</td><td>3.159872</td></tr><tr><td>175</td><td>-67.888500</td><td>-25.271900</td><td>-23.635500</td></tr><tr><td>176</td><td>-135.061000</td><td>-103.830000</td><td>-107.375000</td></tr><tr><td>177</td><td>-90.741200</td><td>-65.550000</td><td>-70.062300</td></tr><tr><td>178</td><td>-28.683300</td><td>4.187387</td><td>-4.706060</td></tr><tr><td>179</td><td>-103.027000</td><td>-97.290000</td><td>-106.078000</td></tr><tr><td>180</td><td>-88.975000</td><td>-66.845700</td><td>-77.367900</td></tr><tr><td>181</td><td>-177.281000</td><td>-67.904100</td><td>-66.493200</td></tr><tr><td>182</td><td>-43.044700</td><td>24.059160</td><td>18.696920</td></tr><tr><td>183</td><td>-212.505000</td><td>-152.131000</td><td>-155.963000</td></tr><tr><td>184</td><td>-38.210800</td><td>-25.916400</td><td>-34.173800</td></tr><tr><td>185</td><td>-66.764700</td><td>-12.702000</td><td>-17.886300</td></tr><tr><td>186</td><td>295.611300</td><td>-36.578800</td><td>106.036400</td></tr><tr><td>187</td><td>176.630300</td><td>-47.533000</td><td>-13.126100</td></tr><tr><td>188</td><td>324.060100</td><td>189.413000</td><td>136.666400</td></tr><tr><td>189</td><td>221.951100</td><td>76.029960</td><td>34.046210</td></tr><tr><td>190</td><td>-58.422000</td><td>-46.764700</td><td>-12.702000</td><td>-17.886300</td></tr>

Notes:
Residuals: residuals from the pooled regression without dummy variables for investment grade.
Residuals Dummy 1: inclusion of dummy variable for investment grade.
Residuals Dummy 2: inclusion of dummy variable to test for regime shift.

parameters. The residuals of the model without and with dummy variable D1 are shown, respectively, in the second and third columns of Table 2.

Now let's use dummy variables to test if there is a regime shift between the two dates. This is a common use for dummy variables in practice. To this end we create a new dummy variable that has the value 0 for the first date 11/28/05 and 1 for the second date  $6 / 6 / 05$ . The new equation is written as follows:


$
\begin{array}{l} \operatorname{Sp re ad}_{i} = \beta_{0} + \beta_{1} D 2_{i} + \beta_{2} \text{Co up on}_{i} \\ + \beta_{3} D 2_{i} \text{Co up on}_{i} + \beta_{4} \text{Co ve ra ge Ra ti o}_{i} \\ + \beta_{5} D 2_{i} \text{Co ve ra ge Ra ti o}_{i} + \beta_{6} \text{Lo gg ed EB IT}_{i} \\ + \beta_{7} D 2_{i} \text{Lo gg ed EB IT}_{i} + \varepsilon_{i} \\ \end{array}
$ as in the previous case but with a different dummy variable. There are seven independent

variables and eight parameters to estimate. The estimated model coefficients and  $t$ -statistics are shown below:

<table><tr><td>Coefficient</td><td>Estimated Coefficient</td><td>Standard Error</td><td>t-statistic</td><td>p-value</td></tr><tr><td>β0</td><td>257.26</td><td>79.71</td><td>3.28</td><td>0.00</td></tr><tr><td>β1</td><td>82.17</td><td>61.63</td><td>1.33</td><td>0.18</td></tr><tr><td>β2</td><td>33.25</td><td>7.11</td><td>4.67</td><td>5.53E-06</td></tr><tr><td>β3</td><td>28.14</td><td>2.78</td><td>10.12</td><td>1.45E-19</td></tr><tr><td>β4</td><td>-10.79</td><td>2.50</td><td>-4.32</td><td>2.49E-05</td></tr><tr><td>β5</td><td>0.00</td><td>3.58</td><td>0.00</td><td>1.00</td></tr><tr><td>β6</td><td>-63.20</td><td>18.04</td><td>-3.50</td><td>0.00</td></tr><tr><td>β7</td><td>-27.48</td><td>24.34</td><td>-1.13</td><td>0.26</td></tr></table>

Other regression statistics are:

$
\mathrm{SS R}: 1. 5 3 9 9 \mathrm{e} + 0 0 6
$

$
F \text{-s ta ti st ic :} 7 2. 3 9
$

$ p \text{-v al ue :} 0
$

$
R^{2}: 0. 7 1
$

The Chow test has the value 14.73. The  $F$ -statistics and the Chow test suggest that there is indeed a regime shift and that the spread regressions at the two different dates are different. Again, the use of dummy variables has greatly improved the goodness of fit of the regression, even after compensating for the increase in the number of parameters. The residuals of the model with dummy variables D2 are shown in the next-to-the-last column of Table 2.

## Illustration: Testing the Mutual Fund Characteristic Lines in Different Market Environments

The characteristic line of a mutual fund is the regression of the excess returns of a mutual fund on the market's excess returns:

$ y_{i t} = \alpha_{i} + \beta_{i} x_{t}
$ where


$ y_{i t} = \underset {\text{th er ei s}} {\text{mu tu al fu nd i 's ex ce ss re tu rn ov er}}
$

$ x_{t} = \text{ma rk et ex ce ss re tu rn ov er th er is k -}
$

$\alpha_{i}$  and  $\beta_{i} =$  the regression parameters to be estimated for mutual fund  $i$

We will first estimate the characteristic line for two large-cap mutual funds. Since we would prefer not to disclose the name of each fund, we simply refer to them as A and B. (Neither mutual fund selected is an index fund.) Because the two mutual funds are large-cap funds, the S&P 500 was used as the benchmark. The risk-free rate used was the 90-day Treasury bill rate. Ten years of monthly data were used from January 1, 1995 to December 31, 2004. The data are reported in Table 3. The first column in the table shows the month. The second and third columns give the return on the market return  $(r_{Mt})$  and risk-free rate  $(r_{ft})$ , respectively. The fifth column is the excess market return, which is  $x_{t}$  in the regression equation. The seventh and eighth columns show the returns for mutual funds A and B, respectively. The excess returns for the two mutual funds  $(y_{it})$  are given in the last two columns. The other columns will be explained shortly.

The results of the above regression for both mutual funds are shown in Table 4. The estimated  $\beta$  for both mutual funds is statistically significantly different from zero.

Let's now perform a simple application of the use of dummy variables by determining if the slope (beta) of the two mutual funds is different in a rising stock market ("up market") and a declining stock market ("down market"). To test this, we can write the following multiple regression model:

$ y_{i t} = \alpha_{i} + \beta_{1 i} x_{t} + \beta_{2 i} \left(D_{t} x_{t}\right) + e_{i t}
$ where  $D_{t}$  is the dummy variable that can take on a value of 1 or 0. We will let


$D_{t} = 1$  if period  $t$  is classified as an up market
$D_{t} = 0$  if period  $t$  is classified as a down market

The coefficient for the dummy variable is  $\beta_{2i}$ . If that coefficient is statistically significant, then for the mutual fund:

$
\text{In an up ma ke t :} \beta_{i} = \beta_{1 i} + \beta_{2 i}
$

$
\text{In ad ow nm ak et :} \beta_{i} = \beta_{1 i}
$

Table 3 Data for Estimating Mutual Fund Characteristic Line with a Dummy Variable

<table><tr><td rowspan="2">Month Ended</td><td rowspan="2">rM</td><td rowspan="2">rft</td><td rowspan="2">Dummy Dt</td><td rowspan="2">rM-fctxt</td><td rowspan="2">Dtxt</td><td colspan="2">Mutual Fund</td><td rowspan="2">Ayt</td><td rowspan="2">Byt</td></tr><tr><td>Art</td><td>Brt</td></tr><tr><td>01/31/1995</td><td>2.60</td><td>0.42</td><td>0</td><td>2.18</td><td>0</td><td>0.65</td><td>1.28</td><td>0.23</td><td>0.86</td></tr><tr><td>02/28/1995</td><td>3.88</td><td>0.40</td><td>0</td><td>3.48</td><td>0</td><td>3.44</td><td>3.16</td><td>3.04</td><td>2.76</td></tr><tr><td>03/31/1995</td><td>2.96</td><td>0.46</td><td>1</td><td>2.50</td><td>2.5</td><td>2.89</td><td>2.58</td><td>2.43</td><td>2.12</td></tr><tr><td>04/30/1995</td><td>2.91</td><td>0.44</td><td>1</td><td>2.47</td><td>2.47</td><td>1.65</td><td>1.81</td><td>1.21</td><td>1.37</td></tr><tr><td>05/31/1995</td><td>3.95</td><td>0.54</td><td>1</td><td>3.41</td><td>3.41</td><td>2.66</td><td>2.96</td><td>2.12</td><td>2.42</td></tr><tr><td>06/30/1995</td><td>2.35</td><td>0.47</td><td>1</td><td>1.88</td><td>1.88</td><td>2.12</td><td>2.18</td><td>1.65</td><td>1.71</td></tr><tr><td>07/31/1995</td><td>3.33</td><td>0.45</td><td>1</td><td>2.88</td><td>2.88</td><td>3.64</td><td>3.28</td><td>3.19</td><td>2.83</td></tr><tr><td>08/31/1995</td><td>0.27</td><td>0.47</td><td>1</td><td>-0.20</td><td>-0.2</td><td>-0.40</td><td>0.98</td><td>-0.87</td><td>0.51</td></tr><tr><td>09/30/1995</td><td>4.19</td><td>0.43</td><td>1</td><td>3.76</td><td>3.76</td><td>3.06</td><td>3.47</td><td>2.63</td><td>3.04</td></tr><tr><td>10/31/1995</td><td>-0.35</td><td>0.47</td><td>1</td><td>-0.82</td><td>-0.82</td><td>-1.77</td><td>-0.63</td><td>-2.24</td><td>-1.10</td></tr><tr><td>11/30/1995</td><td>4.40</td><td>0.42</td><td>1</td><td>3.98</td><td>3.98</td><td>4.01</td><td>3.92</td><td>3.59</td><td>3.50</td></tr><tr><td>12/31/1995</td><td>1.85</td><td>0.49</td><td>1</td><td>1.36</td><td>1.36</td><td>1.29</td><td>1.73</td><td>0.80</td><td>1.24</td></tr>

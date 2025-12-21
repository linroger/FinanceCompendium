
---
title: "Modeling Portfolio Credit Risk"
parent_directory: "III. Markets and Institutions/Encyclopedia of Financial Models/Volume I/Bond Valuation"
formatted: 2025-12-21 09:45:00 AM
formatter_model: claude-sonnet-4-5-20250929
cli_tool: opencode
primary_tags:
  - credit risk modeling
  - default probability estimation
  - recovery rate analysis
  - rating migration probabilities
secondary_tags:
  - corporate bond valuation
  - structural credit models
  - empirical default approaches
  - expected loss calculation
  - unexpected loss quantification
  - merton model framework
  - moody kmv approach
  - transition matrix analysis
  - kmv approach
  - distance to default
  - beta distribution modeling
  - rating transition matrix
  - loss on default
  - independence assumption
  - bernoulli random variable
cssclasses: academia
---

# Modeling Portfolio Credit Risk

SRICHANDER RAMASWAMY, PhD

Senior Economist, Bank for International Settlements, Basel, Switzerland

Abstract: Modeling credit risk is more challenging than modeling market risk. Some of these challenges relate to the differences in the conceptual approaches used for modeling credit risk and the data limitations associated with the estimation of key model parameters. Hence, there is invariably a subjective element to the modeling of credit risk. A better understanding of these subjective elements can help practitioners to exercise sound judgment and to raise the right questions when trying to interpret the statistical outputs provided by credit risk models.

This entry describes the building blocks to modeling credit risk. Key elements of the building blocks include probability of default of the issuer; recovery rate in the event of issuer default; and the probabilities of migrating to different credit rating states. Various techniques that can be employed to estimate the probability of issuer default, including their relative merits and limitations, are then discussed. Subsequently, the common approaches to quantifying credit risk are introduced. These include the default mode paradigm, which considers default and no default as two states of the world; and the migration mode paradigm, which includes migrations to other credit rating categories including the default state. The entry concludes with a numerical example to illustrate the various concepts presented.

## ELEMENTS OF CREDIT RISK

Credit risk is the risk that a borrower will be unable to make payment of interest or principal in a timely manner. Under this definition, a delay in repayments, restructuring of borrower repayments, and bankruptcy, which constitute default events, will fall under credit risk. In addition to this, the mark-to-market loss of a bond resulting from a change in the market perception of the issuer to service the debt in future is also attributed to credit risk. This manifests itself in the form of a widening of the credit spread of the security in question against a risk-free asset, such as the Treasury bond, of similar maturity. The fluctuations in the credit spread between the two securities reflect views on the intrinsic creditworthiness of the issuer of the defaultable security.

The key determinants of credit risk at the security level include probability of default (PD) of the issuer, that is, the probability that the issuer will default on its contractual obligations to repay its debt; recovery rate given that the issuer has defaulted; and rating migration probabilities, that is, the extent to which the credit quality of the issuer improves or deteriorates as expressed by a change in the probability of default of the issuer. The following sections discuss in greater detail these determinants of credit risk for corporate issuers, and wherever relevant, methods commonly employed to estimate them will be indicated.

## Probability of Default

Assessments about an issuer's ability to service debt obligations play a fundamental role in establishing the level of credit risk embedded in a security. This is usually expressed through the default probability that quantifies the likelihood of the issuer not being able to service the debt obligations. Since probability of default is a function of the time horizon over which one measures the debt servicing ability, it is standard practice to assume a one-year time horizon to quantify this.

In general, the approaches used to determine default probabilities at the issuer level fall into two broad categories. The first is empirical in nature and requires the existence of a public credit-quality rating scheme. The second is based on Merton's options theory framework (Merton, 1974), and hence, is a structural approach. The empirical approach to estimating PD makes use of a historical database of corporate defaults to form a static pool of companies having a particular credit rating for a given year. Annual default rates are then calculated for each static pool, which are then aggregated to provide an estimate of the average historical default probability for a given credit rating. If one uses this approach, then the default probabilities for any two issuers having the same credit rating will be identical. The option pricing approach to estimate default probability makes use of the current estimates of the firm's assets, liabilities, and asset volatility, and hence, is related to the dynamics of the underlying structure of the firm. Each of these approaches is discussed below in greater detail.


### Empirical Approach

The empirical approach to determining probability of default is taken by major rating agencies that include Moody's Investors Service, Standard & Poor's Corporation, and Fitch Ratings. The rating agencies assign credit ratings to different issuers on the basis of extensive analysis of both the quantitative and qualitative performance of a firm, which is intended to capture the level of credit risk. (How credit ratings are assigned is not discussed in this entry.) For purpose of illustrating the empirical approach used to determining default probabilities for different credit ratings, we will discuss Moody's methodology.

Moody's rating symbols (Aa, A, Baa, etc.) for issuer ratings are opinions of the ability of the issuer to honor senior unsecured financial obligations and contracts denominated in foreign and/or domestic currency. The rating gradations provide bondholders with a simple system to measure an issuer's ability to meet its senior financial obligations.

In addition to the generic rating categories, Moody's applies numerical modifiers 1, 2, and 3 for the rating categories from Aa to Caa. The modifier 1 indicates that the issuer is in the higher end of its letter-rating category; the modifier 2 indicates a mid-range ranking; the modifier 3 indicates that the issuer is in the lower end of the letter-ranking category. It is customary to refer to a rating change from grade Aa1 to Aa2 as a one-notch rating downgrade. Bonds issued by firms rated between Aaa to Baa are referred to as investment-grade bonds and the rest as non-investment-grade bonds.

It is important to emphasize here that Moody's ratings incorporate assessments of both the likelihood and the severity of default.

Considering that a particular issuer could have debt issues with different collateral and seniority, Moody's approach will lead to different debt issues of a particular issuer having different ratings. However, when an issuer is deemed to have defaulted on a particular debt issue, cross default clauses will require all outstanding debt of the issuer to be considered as having defaulted. This in turn brings us to the following question: What events signal the default of an issuer? Moody's definition of default considers three types of default events:

1. There is a missed or delayed disbursement of interest and/or principal including delayed payments made within a grace period.
2. An issuer files for bankruptcy or legal receivership occurs.
3. A distressed exchange occurs where (1) the issuer offers bondholders a new security or package of securities that amount to a diminished financial obligation, or (2) the exchange had the apparent purpose of helping the borrower to default.

One may note here that the above definitions of default are meant to capture events that change the relationship between the bondholder and bond issuer, which subjects the bondholder to an economic loss.

The empirical approach to determining probability of default relies on historical defaults of various rated issuers. This requires forming a static pool of issuers with a given rating every year and computing the ratio of defaulted issuers after a one-year period to the number of issuers that could have potentially defaulted for the given rating. If, during the year, ratings for certain issuers are withdrawn, then these issuers are subtracted from the potential number of issuers who could have defaulted in the static pool. Specifically, the one-year default rates for A-rated issuers during a given year represent the number of A-rated issuers that defaulted over the year divided by the number of A-rated issuers that could have defaulted over that year. Annual default rates calculated in this manner for each rating grade are then aggregated to provide an estimate of the average historical default probability for a given rating grade.


We mentioned earlier in this entry that although different debt issues of a particular issuer could have different ratings assigned depending on the seniority of the issue, cross default clauses will require all outstanding debt of a particular issuer to default at the same time. This raises an important question when managing corporate bond portfolios, namely, whether the issuer rating or the rating of the bond issue is to be considered when implying the probability of default. The short answer to this question is that it depends on how credit risk will be quantified for the given bond. The approach taken here to quantify bond-level credit risk requires that the credit rating of the bond issuer is the one to be used. This will be evident when we discuss the quantification of credit risk at the bond level.

### Merton's Approach

Merton's approach to estimating the probability of default of a firm builds on the limited liability rule that allows shareholders to default on their obligations while surrendering the firm's assets to the creditors. In this framework, the firm's liabilities are viewed as contingent claims on the assets of the firm, and default occurs at debt maturity when the firm's asset value falls below the debt value. Assuming that the firm is financed by means of equity $S_{t}$ and a single zero-coupon debt maturing at time $T$ with face value $F$ and current market value $B_{t}$, the firm's assets at time $t$ can be represented as

$$
A_{t} = S_{t} + B_{t} \tag {1}
$$

The probability of default in Merton's framework for the firm will be the probability that the firm's assets is less than the face value of the debt, which is given by,

$$
A_{t} = S_{t} + B_{t} \tag{1}
$$

$$
PD = \operatorname{prob}\left[ A_{T} < F \right] \tag{2}
$$

In order to determine PD in Merton's framework, we need to select a suitable model for the process followed by $A_{t}$. Standard assumption is to postulate that $A_{t}$ follows a log-normal process with growth rate $\mu$ and asset volatility $\sigma_{A}$ which is given below:


$$
A_{t} = A_{0} \exp\left[ (\mu - 0.5 \sigma_{A}^{2}) t + \sigma_{A} \sqrt{t} z_{t} \right] \tag{3}
$$

In equation (3)  $z_{t}$  is a normally distributed random variable with zero mean and unit variance. Using equation (3) in conjunction with equation (2) we can denote the PD as

$$
\begin{array}{l}
PD = \operatorname{prob}\left[ \ln A_{0} + (\mu - 0.5 \sigma_{A}^{2}) T \right. \\
\left. + \sigma_{A} \sqrt{T} z_{T} < \ln F \right] \tag{4}
\end{array}
$$

In equation (4) we have taken logarithm on both sides of the inequality, since doing so does not change the probabilities. Rearranging the terms in equation (4), the probability of default for the firm can be represented as

$$
PD = \operatorname{prob}\left[ z_{T} < -\frac{\ln \frac{A_{0}}{F} + (\mu - 0.5 \sigma_{A}^{2}) T}{\sigma_{A} \sqrt{T}} \right] \tag{5}
$$

Since  $z_{T}$  is a normally distributed random variable, PD can be represented as

$$
PD = N(-D) \tag{6}
$$

where

$$
D = \frac{\ln \frac{A_{0}}{F} + (\mu - 0.5 \sigma_{A}^{2}) T}{\sigma_{A} \sqrt{T}} \tag{7}
$$

$$
N(-D) = \frac{1}{\sqrt{2\pi}} \int_{-\infty}^{-D} \exp\left(-\frac{1}{2} x^{2}\right) dx \tag{8}
$$

In equation (7),  $D$  represents the distance to default, which is the distance between the logarithm of the expected asset value at maturity and the logarithm of the default point normalized by the asset volatility.

Although Merton's framework for determining PD for issuers is rather simple, applying this directly in practice runs into difficulties. This is because firms seldom issue zero coupon bonds and usually have multiple liabilities. Furthermore, firms in distress may be able to draw on lines of credit to honor coupon and principal payments, resulting in a maturity transformation of their liabilities.


To resolve these difficulties Moody's KMV suggests some modifications to Merton's framework to make the default probability estimate meaningful in a practical setting (see Crosbie and Bohn, 2002). (Moody's KMV refers to probability of default as expected default frequency or EDF™). For instance, rather than using face value of the debt to denote the default point, Moody's KMV suggests using the sum of the short-term liabilities (coupon and principal payments due in less than one year) and one-half of the long-term liabilities. This choice is based on the empirical evidence that firms default when their asset value reaches a level that is somewhat between the value of total liabilities and the value of short-term liabilities. Further, since the asset returns of the firms may in practice deviate from a normal distribution, Moody's KMV maps the distance to the default variable to a historical default statistics database to estimate the probability of default. In the KMV framework, default probabilities for issuers can take values in the range between  $0.02\%$  and  $20\%$ .

To illustrate the KMV approach, let  $DPT$  denote the default point, which is equal to the sum of the short-term liabilities due in less than one year and one-half of the long-term liabilities, and  $E(A_{T})$  the expected value of the firm's assets one year from now. Then the distance to default is given by,

$$
D = \frac{\ln \frac{E(A_{T})}{DPT}}{\sigma_{A}} = \frac{\ln \frac{A_{0}}{DPT} + (\mu - 0.5 \sigma_{A}^{2}) T}{\sigma_{A} \sqrt{T}} \tag{9}
$$

In equation (9), the market value of the firm's assets is not observed since liabilities of the firm are not traded. What can be observed in the market is the equity value of the firm because it is traded. Since the value of the firm's equity at time  $T$  can be seen as the value of a call option on the assets of the firm with a strike price equal to the book value of the liabilities, we have the following equation:


$$
S_{T} = A_{T} \times N(d_{1}) - e^{-rT} \times DPT \times N(d_{2}) \tag{10}
$$

In equation (10), $N(\cdot)$ is cumulative standard unit normal distribution, $r$ is the risk-free interest rate, and the variables $d_{1}$ and $d_{2}$ are given by,

$$
d_{1} = \frac{\ln\left(A_{T}/DPT\right) + \left(r + \frac{1}{2} \sigma_{A}^{2}\right) T}{\sigma_{A} \sqrt{T}} \tag{11}
$$

$$
d_{2} = d_{1} - \sigma_{A} \sqrt{T} \tag{12}
$$

It is possible to show that equity and asset volatility are related through the following relation:

$$
\sigma_{S} = \frac{A_{T}}{S_{T}} \times N(d_{1}) \times \sigma_{A} \tag{13}
$$

From this relation it is possible to solve for the asset value and asset volatility, given the equity value and equity volatility using an iterative procedure. Knowing the asset volatility and asset value, it is possible to compute the distance to default using equation (9) from which probability of default can be inferred.

### Relative Merits

The empirical and structural approaches to determine the probability of default for issuers can result in significant differences in the estimates of PD. Both approaches have their relative advantages and disadvantages. For instance, the empirical approach has the implicit assumption that all issuers having the same credit rating will have identical PD. Furthermore, this default probability will be equal to the historical average rate of default. Use of the structural approach, on the other hand, will result in PD being more responsive to changes in economic conditions and business cycles as it incorporates current estimates of the asset value and asset volatility of the firm in deriving this information. One drawback, however, is that the historical database of defaulted firms is comprised mostly of industrial corporates. As a consequence, use of the industrial corpo rate default database to infer the PD of regulated financial firms could potentially result in biased PD estimates. Seen from a trading perspective, credit spreads for corporates tend to be influenced much more by agency ratings and credit rating downgrades rather than EDF values. This has the implication that bond market participants tend to attach greater significance to rating agency decisions for pricing. For the purpose of modeling portfolio credit risk and selecting an optimal corporate bond portfolio to replicate the benchmark risk characteristics, we will demonstrate the usefulness of both approaches in the entries to follow.


### On Rating Outlooks

Rating agencies provide forward-looking assessment of the creditworthiness of issuers over the medium term. Such forward-looking credit assessments of issuers are referred to as rating outlooks. Outlooks assess the potential direction of an issuer's rating or creditworthiness over the next six months to three years. A positive outlook suggests an improvement in credit rating, a negative outlook indicates deterioration in credit rating, and a stable outlook suggests a rating change is less likely to happen. Bond prices tend to react to changes in rating outlook although no actual change in credit rating has occurred. In particular, the impact on prices is much more significant if the issuer is Baa since a rating downgrade can result in the issuer being rated non-investment grade. Furthermore, if a particular sector (such as Telecom) is having a negative rating outlook, a change in rating outlook from stable to negative for an issuer in this sector can also have a significant effect on bond prices.

The above observations raise the following important question: Should a negative or a positive rating outlook for a given issuer be incorporated in our assessment of PD through a downgrade or upgrade before it has actually happened? The short answer to this question is no, primarily because our estimate of credit risk will incorporate the probability that credit rating of issuers can change over time. Forcing a rating change for the issuer before it has actually happened may tend to bias our estimate of credit risk.


### Captive Finance Companies

Large companies in most industrial sectors have captive finance subsidiaries. The principal function of any financial subsidiary is to support the sales of the parent's products. This function can make the finance company a critical component of the parent's long-term business strategy. In light of this close relationship between the captive finance company and its parent, credit ratings for both are usually identical. However, if the legal clauses guarantee that the parent company's bankruptcy does not automatically trigger the bankruptcy of the financial subsidiary, rating differences may exist between the parent company and its financial subsidiary. For the purpose of quantifying credit risk, we will use the actual credit rating of the financial subsidiary in the calculations.

Estimating the probability of default of financial subsidiaries on the basis of Merton's structural model can lead to difficulties. This is because the equity of the financial subsidiary may not be traded. For example, Ford Motor is traded whereas the financial subsidiary Ford Credit is not traded. Considering that the financing arm of major industrial corporates is vital to the survival of both the parent and the subsidiary, one can argue that the equity market takes this relationship into account when valuing the parent company. Under this argument, one can assign the same probability of default to both companies where only one of them is traded in the market.

## Recovery Rate

In the event of default, bondholders will not receive all of the promised coupon and principal payments on the bond. Recovery rate for a bond, which is defined as the percentage of the face value that can be recovered in the event of default, will be of natural interest to investors. Considering that credit market convention is to ask how much of promised debt is lost rather than how much of it is recovered, the term "loss given default" (LGD), which is defined as one minus recovery rate, is also commonly used in the credit risk literature.


In general, estimating the recovery value of the bond in the event of default is rather complex. This is because the payments made to bondholders could take the form of a combination of equity and derivative securities, new debt, or modifications to the terms of the surviving debt. Considering that there may be no market for some forms of payments, it may not be feasible to measure the recovery value. Moreover, the amount recovered could take several months or even years to materialize and could potentially also depend on the relative strength of the negotiating positions. As a result, estimating historical averages of amounts recovered from defaulted debt will require making some simplifying assumptions.

Moody's, for instance, proxy the recovery rate with the secondary market price of the defaulted instrument approximately one month after the time of default. The motivation for such a definition is that many investors may wish to trade out of defaulted bonds, and a separate investor clientele may acquire these and pursue the legal issues related to recovering money from defaulted debt instruments. In this context, Moody's recovery rate proxy can be interpreted as a transfer price between these two investor groups.

Empirical research on recovery rates suggests that industrial sector, seniority of the debt, state of the economy, and credit rating of the issuer one year prior to default are variables that have significant influence on potential recovery rates. For example, during periods of economic downturns, the recovery rate is usually lower relative to historical averages. This has the implication that there is also a time dimension to the potential recovery rates. Differences in recovery rates for defaulted debt across industry sectors arise because the recovery amount will depend on the net worth of the firm's tangible assets. For instance, firms belonging to industrial sectors with physical assets such as public utilities have higher recovery rates compared to the industry-wide average. Empirical results also tend to suggest that issuers that were rated investment grade one year prior to default tend to have higher recovery values compared to issuers that were rated non-investment grade.


In order to incorporate the variations in the observed recovery rates over time and between issuers when quantifying credit risk, the standard deviation of recovery rates, denoted  $\sigma_{RR}$ , is taken into account. Including the uncertainty in recovery rates will have the effect of increasing credit risk at the issuer level. Common practice is to use beta distribution to model the observed variations in recovery rates. The advantage of choosing beta distribution is that it has a simple functional form dependent on two parameters that allows for high recovery rate outliers observed in the empirical data to be modeled. The beta distribution has support on the interval 0 to 1, and its density function is given by,

$$
f(x, \alpha, \beta) = \left\{ \begin{array}{cc} \frac{\Gamma(\alpha + \beta)}{\Gamma(\alpha) \cdot \Gamma(\beta)} x^{\alpha - 1} (1 - x)^{\beta - 1}, & 0 < x < 1 \\ 0 & \text{otherwise} \end{array} \right. \tag{14}
$$ where  $\alpha >0,\beta >0$  and  $\Gamma (\cdot)$  is the gamma function. The mean and variance of the beta distribution are given by,


$$
\mu = \frac{\alpha}{\alpha + \beta} \tag{15}
$$

$$
\sigma^{2} = \frac{\alpha \cdot \beta}{(\alpha + \beta)^{2} \cdot (\alpha + \beta + 1)} \tag{16}
$$ the period 1978 to 2001 based on prices at time of default. One can notice that senior secured debt recovers on average  $53\%$  of the face value of the debt whereas senior unsecured debt recovers only around  $42\%$  of face value. The standard deviation of the recovery rates for all seniority classes is roughly around  $25\%$ .

Table 1 shows the empirical estimates of recovery rates on defaulted securities covering


The empirical estimates for average recovery rates tend to vary somewhat depending on the data set used and the recovery rate definition. For instance, the study by Moody's using defaulted bond data covering the period 1982-2008 suggest that mean recovery rates for senior secured bonds is  $53\%$ , for senior unsecured bonds is  $32.4\%$ , and for subordinated bonds is  $23.5\%$ .

In the numerical examples to be presented in this entry, we have assumed that the bonds under consideration are senior unsecured debt. Furthermore, we have assumed that the standard deviation of the recovery rate is  $25\%$  and the average recovery rate is  $35\%$ , which is closer to Moody's estimate incorporating more recent default data.

## Rating Migrations

The framework for assessing the issuer's PD comprised of estimating the probability associated with the issuer defaulting on its promised debt payments. In this framework, the issuer is considered to be in one of two states: its current rating or the default state. In practice, default is just one of many states to which the issuer's rating can transition. Actions of rating agencies can result in the issuer's rating being downgraded or upgraded by one or several notches. One can associate the concept of a state with each rating grade

Table 1 Recovery Rate Statistics on Defaulted Securities (1978-2001)

<table><tr><td>Bond Seniority</td><td>Number of Issuers</td><td>Median</td><td>Mean</td><td>Standard Deviation</td></tr><tr><td>Senior secured</td><td>134</td><td>57.42\%</td><td>52.97\%</td><td>23.05\%</td></tr><tr><td>Senior unsecured</td><td>475</td><td>42.27\%</td><td>41.71\%</td><td>26.62\%</td></tr><tr><td>Senior subordinated</td><td>340</td><td>31.90\%</td><td>29.68\%</td><td>24.97\%</td></tr><tr><td>Subordinated</td><td>247</td><td>31.96\%</td><td>31.03\%</td><td>22.53\%</td></tr></table> so that rating actions result in the transition to one of several states. Each rating action can be viewed as a credit event that changes the perceived probability of default of the issuer. In the credit risk terminology such a multistate credit event process is described as credit or rating migration. Associated with rating migrations are transition probabilities, which model the relative frequency with which such credit events occur.

Source: Altman, Resti, and Sironi (2001).


Modeling the rating migrations process will require estimating a matrix of transition probabilities, which is referred to as the rating transition matrix. Each cell in the one-year rating transition matrix corresponds to the probability of an issuer migrating from one rating state to another over the course of a 12-month horizon. Mathematically speaking, a rating transition matrix is a Markov matrix, which has the property that the sum of all cells in any given row of the matrix is equal to one. Incorporating rating migrations into the credit risk-modeling framework provides a much richer picture of changes in aggregate credit quality of the issuer.

The techniques used to estimate transition probabilities are similar in principle to the estimation of probability of default. For instance, computing the one-year transition probability from the rating Aa1 to Baa1 will require first determining the number of issuers that are rated Baa1 and that had an Aa1-rating one year earlier. Dividing this number by the total number of issuers that were rated Aa1 during the previous year will give us the one-year transition probability between these two ratings. Again, if the ratings of some Aa1 issuers are withdrawn during the one-year period of interest to us, then the total number of Aa1 issuers is reduced by this number. Annual transition probabilities calculated in this manner are then aggregated over a number of years to estimate the average historical transition probability. Table 2 shows an example rating transition matrix, with the transition probabilities expressed in percentages.


The interpretation of the numbers in the rating transition matrix is the following. The first cell in the matrix refers to the probability (expressed in percentage terms) of remaining in the rating grade Aaa one year from now. The estimate of this probability is  $89.06\%$  in the rating transition matrix. The cell under column A3 in the first row of the matrix refers to the probability of an issuer migrating from Aaa-rating to A3-rating in one year, and the estimate of this probability is  $0.17\%$ . Similarly, the cells in the

Table 2 An Example One-Year Rating Transition Matrix

<table><tr><td>Aa3</td><td>A1</td><td>A2</td><td>A3</td><td>Baa1</td><td>Baa2</td><td>Baa3</td><td>Ba1</td><td>Ba2</td><td>Ba3</td><td>B1</td><td>B2</td><td>B3</td><td>Caa-C</td><td>Default</td></tr><tr><td>0.49</td><td>0.74</td><td>0.29</td><td>0.17</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.04</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.01</td></tr><tr><td>6.86</td><td>2.41</td><td>0.33</td><td>0.05</td><td>0.19</td><td>0.00</td><td>0.00</td><td>0.09</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.02</td></tr><tr><td>8.82</td><td>4.13</td><td>1.42</td><td>0.61</td><td>0.17</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.05</td><td>0.08</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.03</td></tr><tr><td>81.48</td><td>9.30</td><td>3.28</td><td>0.89</td><td>0.25</td><td>0.22</td><td>0.17</td><td>0.00</td><td>0.04</td><td>0.09</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.04</td></tr><tr><td>5.76</td><td>80.88</td><td>7.50</td><td>3.00</td><td>0.81</td><td>0.28</td><td>0.14</td><td>0.37</td><td>0.26</td><td>0.05</td><td>0.12</td><td>0.01</td><td>0.00</td><td>0.00</td><td>0.06</td></tr><tr><td>0.80</td><td>5.57</td><td>80.75</td><td>7.48</td><td>2.99</td><td>0.83</td><td>0.41</td><td>0.29</td><td>0.11</td><td>0.12</td><td>0.03</td><td>0.07</td><td>0.03</td><td>0.03</td><td>0.08</td></tr><tr><td>0.24</td><td>1.55</td><td>8.68</td><td>75.40</td><td>7.03</td><td>3.83</td><td>1.50</td><td>0.57</td><td>0.20</td><td>0.23</td><td>0.35</td><td>0.05</td><td>0.05</td><td>0.01</td><td>0.10</td></tr><tr><td>0.19</td><td>0.21</td><td>2.84</td><td>8.04</td><td>74.68</td><td>7.73</td><td>3.29</td><td>1.09</td><td>0.48</td><td>0.37</td><td>0.58</td><td>0.09</td><td>0.02</td><td>0.02</td><td>0.13</td></tr><tr><td>0.18</td><td>0.18</td><td>0.92</td><td>3.87</td><td>7.27</td><td>75.35</td><td>7.40</td><td>1.77</td><td>0.55</td><td>0.69</td><td>0.51</td><td>0.47</td><td>0.27</td><td>0.03</td><td>0.23</td></tr><tr><td>0.08</td><td>0.19</td><td>0.61</td><td>0.69</td><td>3.42</td><td>9.92</td><td>71.29</td><td>6.79</td><td>2.76</td><td>2.02</td><td>0.85</td><td>0.33</td><td>0.36</td><td>0.17</td><td>0.46</td></tr><tr><td>0.03</td><td>0.24</td><td>0.13</td><td>0.73</td><td>0.82</td><td>3.20</td><td>8.36</td><td>72.31</td><td>5.00</td><td>4.22</td><td>1.22</td><td>1.38</td><td>1.24</td><td>0.36</td><td>0.67</td></tr><tr><td>0.03</td><td>0.04</td><td>0.16</td><td>0.14</td><td>0.39</td><td>0.77</td><td>2.53</td><td>9.18</td><td>70.35</td><td>6.82</td><td>1.84</td><td>4.07</td><td>2.07</td><td>0.58</td><td>1.03</td></tr><tr><td>0.00</td><td>0.04</td><td>0.17</td><td>0.19</td><td>0.19</td><td>0.28</td><td>0.75</td><td>2.94</td><td>5.47</td><td>72.38</td><td>5.25</td><td>5.60</td><td>3.34</td><td>0.92</td><td>2.46</td></tr><tr><td>0.00</td><td>0.06</td><td>0.10</td><td>0.16</td><td>0.08</td><td>0.26</td><td>0.32</td><td>0.45</td><td>2.69</td><td>6.09</td><td>71.52</td><td>5.58</td><td>6.80</td><td>1.90</td><td>3.97</td></tr><tr><td>0.01</td><td>0.11</td><td>0.00</td><td>0.07</td><td>0.18</td><td>0.12</td><td>0.19</td><td>0.30</td><td>1.69</td><td>3.05</td><td>5.95</td><td>63.38</td><td>11.70</td><td>3.82</td><td>9.37</td></tr><tr><td>0.00</td><td>0.02</td><td>0.04</td><td>0.07</td><td>0.12</td><td>0.13</td><td>0.22</td><td>0.20</td><td>0.38</td><td>1.28</td><td>4.41</td><td>3.69</td><td>68.14</td><td>7.51</td><td>13.72</td></tr><tr><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.54</td><td>0.54</td><td>0.71</td><td>0.00</td><td>1.52</td><td>2.06</td><td>1.37</td><td>3.20</td><td>60.46</td><td>29.60</td></tr><tr><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>100.0</td></tr></table> second row correspond to the one-year migration probabilities of an issuer that is currently rated Aa1.


Considering that Table 2 is representative of a typical rating transition matrix that credit agencies publish, one can draw interesting conclusions from the relative frequency of rating downgrades and upgrades from this table. For example, the rating transition matrix suggests that higher ratings have generally been less likely to be revised over one year than lower ratings. Another observation is that large and sudden rating changes occur infrequently. As one moves down the rating scale, the likelihood of a multinotch rating change increases.

## Quantifying Credit Risk

In the previous section we identified the important variables that influence credit risk at the security level. In this section we will focus our attention on quantifying credit risk at the security level. Without loss of generality, it will be assumed that the security is a corporate bond. Most of us are familiar with the concept of risk in connection with financial assets. In broad terms, risk is associated with potential financial loss that can arise from holding the asset, the exact magnitude of which is difficult to forecast. As a result, it is common to describe the potential loss in value using an appropriate probability distribution whose mean and standard deviation serve as useful measures for risk quantification.

The above practice is well known in the equities market where investors focus on market risk that model variations in stock return. This leads us to quantifying the market risk measures through expected return and standard deviation of return. Under the assumption that equity returns are normally distributed, the realized return will lie within one standard deviation of the expected return with two-thirds probability.

Quantifying credit risk for a corporate bond is similar in principle. Unlike the case for equities, corporate bond investors focus on the distribution of potential losses that can result from the issuer-specific credit events. Borrowing the principle from equities market, it has become common practice to quantify credit risk at the security level through the mean and standard deviation of the loss distribution. However, there is an important difference between the two risk measures. This pertains to the distribution of credit loss, which unlike for market risk, is far from being a normal distribution. Hence, deviations from the expected loss by one standard deviation can occur more frequently than on one in three occasions. Credit market convention is to refer to the standard deviation of loss resulting from credit events as unexpected loss (UL) and the average loss as expected loss (EL). Figure 1 shows the typical shape of the distribution of credit losses.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/8725883523e9601afda6ee6db77e3f8c519bb88f4523ce844ed9742d7f3bd967.jpg)
Figure 1 Typical Shape of the Credit Loss Distribution


In this section we will discuss how expected and unexpected loss used to quantify credit risk at the security or bond level can be determined. Depending on whether the loss distribution takes into account the changes in bond prices resulting from rating migrations, we can compute two sets of loss variables, one in the default mode and another in the migration mode. Quantification of credit risk in both these modes is discussed below.

Expected Loss Under Default Mode Expected loss under default mode of a bond is defined as the average loss the bondholder can expect to incur if the issuer goes bankrupt. Considering that default probability estimates are based on a one-year holding period, expected loss is also expressed over a one-year period. In practice, the issuer could actually default at any time during the one-year horizon. Since a bond portfolio manager is usually interested in the worst-case loss scenario, which corresponds to the issuer defaulting in the immediate future, we will use the one-year PD to quantify the worst-case loss. This has the implication that we can quantify credit risk using the current trading price for the bond rather than its one-year forward price. Often, a portfolio manager's goal is to manage relative risk versus a benchmark. In this case, the use of one-year PD in conjunction with current trading prices will not bias the relative risk estimates. Moreover, this assumption leads to considerable simplification in quantifying credit risk since deriving forward yield curves for various credit ratings is quite tedious.


The estimate of expected loss for a security depends on three variables: probability of default of the issuer, the average recovery rate, and the nominal exposure (NE) to the security. One can think of the default process  $\delta$  as being a Bernoulli random variable that takes the value 0 or 1. The value  $\delta = 1$  signals a default and the value  $\delta = 0$  signals no default. Conditional upon default, the recovery rate  $\Re$  is a random variable whose mean recovery rate is RR. Figure 2 pictorially depicts the default process and the recovery values. In this exhibit,  $P_{\text{dirty}}$  denotes the dirty price (clean price plus accrued interest) for a 1 face value of the bond.

Figure 2 indicates that if the issuer defaults, the price of the bond will be equal to its recovery rate  $\psi$ , which is a random variable. If the issuer does not default, the bond can be sold for a value equal to its current dirty price  $P_{\text{dirty}}$ . In this default mode framework, the price of the risky debt can be written as,

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/d0ace012b063e0a7245bb431b91d8c6a4f4d4195d9ab3a04205625a37c16cf71.jpg)
Figure 2 Bond Price Distribution Under Default Mode


$$
\tilde{P} = P_{\text{dirty}} \times I_{[\delta = 0]} + \psi \times I_{[\delta = 1]} \tag{17}
$$

In equation (17),  $I$  is the indicator function of the default process. For the purpose of quantifying credit risk, the variable of interest to us is the credit loss resulting from holding the corporate bond. This is a random variable, which we denote  $\tilde{\ell}$ , and is given by,

$$
\begin{array}{l}
\tilde{\ell} = P_{\text{dirty}} - \tilde{P} = P_{\text{dirty}} - P_{\text{dirty}} \\
\times I_{[\delta = 0]} - \psi \times I_{[\delta = 1]} \tag{18}
\end{array}
$$

Taking expectations on both sides of equation (18) will allow us to compute the expected loss arising from credit risk. This is given by,

$$
\begin{array}{l}
EL = E(\tilde{\ell}) = P_{\text{dirty}} - P_{\text{dirty}} \\
\times (1 - PD) - E\left(\psi \times I_{[\delta = 1]}\right) \tag{19}
\end{array}
$$

We note that computing expected loss requires taking the expectation of the product of two random variables, the recovery rate process and the default process. Knowledge of the joint distribution of these two random variables will be required to compute this expectation. Most credit risk models will make the simplifying assumption that these two random variables are independent. If we make this assumption, we get the equation for expected loss as given below:

$$
\begin{array}{l}
EL = P_{\text{dirty}} \times PD - RR \times PD \tag{20} \\
= PD \times \left(P_{\text{dirty}} - RR\right)
\end{array}
$$

We remind the reader that  $P_{\text{dirty}}$  is the dirty price of the bond for \$1 nominal and RR in equation (20) is the mean recovery rate, which is expressed as a fraction of the face value of the debt. It is important to draw attention to the fact that the quantity ( $P_{\text{dirty}} - RR$ ) is different from LGD, which is defined as one minus the recovery rate. We therefore introduce the term "loss on default" (LD) to capture this new quantity as given below:

$$
LD = P_{\text{dirty}} - RR \tag{21}
$$

We note that loss on default will be identical to the quantity loss given default if the dirty price of the bond is equal to one. In all other circumstances these two quantities will not be the same.

Equation (20) has been derived under the assumption that the nominal exposure is one dollar. The expected loss from credit risk for a nominal exposure equal to NE is given by,

$$
EL = NE \times PD \times LD \tag{22}
$$

The use of the quantity LD rather than LGD in defining expected loss might raise some doubts in the minds of the reader. To clear these doubts, let us consider the following example that illustrates why LD is more appropriate than LGD in the context of bond portfolio management.

Let us consider the case of a bond portfolio manager who has the option to invest \$1 million either in a bond with dirty price \$100 (issuer A) or in a bond with dirty price \$80 (issuer B). In the latter case, the portfolio manager will buy \$1.25 million nominal value of issuer B's bond to fully invest the \$1 million. Let us assume that both issuers default within the next year and the recovery value is \$50 for \$100 face value of exposure. If the portfolio manager had invested in issuer A's bond, he would recover \$500,000 since the nominal exposure is \$1 million. On the other hand, if the portfolio manager invested in issuer B's bond, then the amount recovered would be \$625,000. This is because the portfolio manager has a nominal exposure of \$1.25 million of issuer B's bond. Clearly, from the portfolio manager's perspective the credit loss resulting from an investment in issuer A's bond is \$500,000, whereas the credit loss from an investment in issuer B's bond is only \$375,000, although both investments recovered 50\% of the face value of debt. Use of the quantity LD correctly identifies the losses in both circumstances whereas the LGD definition will indicate that the losses are \$500,000 for issuer A's bond and 625,000 for issuer B's bond. In practice, LGD is used in conjunction with the exposure amount of the transaction to identify the expected loss. However, this definition will also incorrectly identify the losses as being identical for both bonds in this example.


Unexpected Loss Under Default Mode We learned that the expected loss on the bond is the average loss that the investor can expect to incur over the course of a one-year period. However, the actual loss may well exceed this average loss over certain time periods. The potential deviation from the expected loss that the investor can expect to incur is quantified in terms of the standard deviation of the loss variable defined in equation (18). Credit market convention is to refer to the standard deviation of loss as unexpected loss. Hence, to derive the unexpected loss formula, we need to compute the standard deviation of the random variable  $\tilde{\ell}$ . To facilitate this computation, we will rewrite equation (18) as follows:

$$
\begin{array}{l}
\tilde{\ell} = P_{\text{dirty}} - P_{\text{dirty}} \times (1 - I_{[\delta = 1]}) + \psi \times I_{[\delta = 1]} \\
= I_{[\delta = 1]} \times \left(P_{\text{dirty}} - \psi\right) \tag{23}
\end{array}
$$

Recalling a standard result from probability theory, the variance of any random variable  $z$  can be written as the difference between the expected value of the random variable squared minus the square of its expected value. In equation form this is given by,

$$
\sigma_{z}^{2} = E\left(z^{2}\right) - \left[E(z)\right]^{2} \tag{24}
$$

We will again make the simplifying assumption that the default and recovery rate processes are independent in deriving the unexpected loss formula. Under this assumption the variance of the random variable  $\tilde{\ell}$  can be written as,

$$
\begin{array}{l}
\operatorname{Var}(\tilde{\ell}) = E(I_{[\delta = 1]}^{2}) \times E[(P_{\text{dirty}} - \psi)^{2}] \\
- \left[E(I_{[\delta = 1]}) \right]^{2} \times \left[E(P_{\text{dirty}} - \psi)\right]^{2} \tag{25}
\end{array}
$$

Taking expected values and using the relation (24), equation (25) simplifies to,

$$
\operatorname{Var}(\tilde{\ell}) = \left[\sigma_{PD}^{2} + PD^{2}\right] \times \left[\sigma_{RR}^{2} + LD^{2}\right] - PD^{2} \times LD^{2} \tag{26}
$$

In the above equation, $\sigma_{PD}^{2}$ is the variance of the Bernoulli random variable $\delta$, which is given by

$$
\sigma_{PD}^{2} = PD \times (1 - PD) \tag{27}
$$

Simplifying the terms in equation (26), it can be shown that unexpected loss, which is the standard deviation of the loss variable, is given by

$$
UL = \sqrt{PD \times \sigma_{RR}^{2} + LD^{2} \times \sigma_{PD}^{2}} \tag{28}
$$

The above formula for unexpected loss assumes that the nominal exposure is equal to one dollar. For a nominal exposure equal to NE, the unexpected loss at the security level will be given by

$$
UL = NE \times \sqrt{PD \times \sigma_{RR}^{2} + LD^{2} \times \sigma_{PD}^{2}} \tag{29}
$$

### On the Independence Assumption

In deriving the expressions for expected and unexpected losses on a bond resulting from credit risk, we made the simplifying assumption that the default process and recovery rate process are independent. The question we should ask ourselves is whether this assumption is a reasonable one to make. Examining existing theoretical models on credit risk does not give us a definitive answer to this question. For instance, in Merton's framework the default process of a firm is driven by the value of the firm's assets. The risk of a firm's default is therefore explicitly linked to the variability in the firm's asset value. In this setup both the default process and the recovery rate are a function of the structural characteristics of the firm, and one can show that PD and RR are inversely related.

The reduced-form models, unlike structural models, do not condition default on the value of the firm. The default and recovery processes are modeled independently of the structural features of the firm and are further assumed to be independent of each other. This independence assumption between default and recovery processes, which is fundamental to reduced-form models, is pervasive in all existing credit value at risk models.


Empirical results on the relationship between default and recovery values tend to suggest that these two variables are negatively correlated. The intuition behind this result is that both default rate and recovery rate may depend on certain structural factors. For instance, if a borrower defaults on the debt payments, the recovery rate will depend on the net worth of the firm's assets. This net worth, which is usually a function of prevailing economic conditions, will be lower during periods of recession. On the contrary, during recession the probability of default of issuers tends to increase. The combination of these two effects will result in a negative correlation between default and recovery rates.

Empirical research on the relationship between default and recovery rate processes suggests that a simple microeconomic interpretation based on supply and demand tends to drive aggregate recovery rate values. In particular, during high default years the supply of defaulted securities tends to exceed demand, which in turn drives secondary market prices down. Considering that RR values are based on bond prices shortly after default, the observed recovery rates are lower when there is an excess supply of defaulted securities.

In order to incorporate the empirical evidence that recovery values decrease when default rates are high, we will have to identify periods when PD is high relative to normal levels. If PD values are determined on the basis of historical average default rates as is done by rating agencies, it is difficult to distinguish between low and high default periods. On the other hand, if a structural approach is used to estimate PD values as is done by KMV Corporation, it is possible to signal periods when PD values are higher than historical average levels. This information can then be incorporated to determine the appropriate recovery rates to be used. Such an approach will amount to the use of a regime-switching model to determine the average recovery rates.

### Expected Loss Under Migration Mode

To derive the formula for expected loss under default mode we took into consideration the credit event that results in the issuer defaulting on debt payments. In general, this is not the only credit event the bondholder will experience that influences the market price of the bond. More frequent are credit events that result in rating upgrades or downgrades of the bond issuer. These credit events correspond to a change in the opinion of the rating agencies concerning the creditworthiness of the issuer. Since rating changes are issuer-specific credit events, the associated bond price changes will fall under credit risk. Including price risk resulting from rating migrations in the calculation of potential credit losses is referred to as credit risk under migration mode.

In practice, the change in bond price can be both positive and negative depending on whether the rating change results in an upgrade or downgrade, respectively. However, we will use the term "credit loss" generically to refer to a change in bond price as a result of a credit event. Before proceeding to derive the formula that quantifies expected loss under migration mode, we will indicate how the price change resulting from a credit event can be estimated.

Estimating Price Changes Practitioners familiar with pricing of corporate bonds know that the issuer's rating does not fully explain yield differentials between bonds of similar maturities. In an empirical study, Elton, Gruber, Agrawal and Mann (2002) find that pricing errors can vary from 34 cents per  \$100 for Aa financials to over\$ 1.17 for Baa industrials. Their study suggests that the following factors have an important influence on observed price differentials between corporate bonds:

- The finer rating categories introduced by the major rating agencies when combined with the bond's maturity
- Differences between Standard and Poor's and Moody's ratings for the issuer

- Differences in expected recovery rate for the bond
- The coupon on the bond due to different tax treatment
- Whether the bond is new and has traded for more than one year

These observations indicate that we cannot use generic yield curves for various rating grades to reprice bonds when the issuer's rating changes. We will have to adopt a different technique to estimate the price risk resulting from rating changes. It is important to bear in mind that in the context of credit risk quantification, our objective is to estimate approximate price changes from rating migrations rather than to capture the correct trading price for the bond. To this end, rating migrations should result in a price change that is consistent with perceived change in the creditworthiness of the issuer.

The technique we will adopt here to estimate the change in bond price due to a rating change makes use of the current modified duration and convexity of the bond. To determine the change in yield associated with a rating change, we will assume that there exists a fixed yield spread between each rating grade that is a function of the debt issue's seniority. These yield spreads will be taken relative to the government yield curve. If we denote modified duration of the bond by  $D$  and convexity by  $C$ , then the change in price of the bond due to a change  $\Delta y$  in the bond yield as a result of the rating change is given by,

$$
\begin{array}{l}
Price\,change = -P_{\text{dirty}} \times D \times \Delta y + 0.5 \\
\times P_{\text{dirty}} \times C \times \Delta y^{2} \tag{30}
\end{array}
$$

Considering that our interest is to estimate the loss resulting from the rating change to quantify credit risk, the following equation is the one that is relevant to us:

$$
\Delta P = P_{\text{dirty}} \times D \times \Delta y - 0.5 \times P_{\text{dirty}} \times C \times \Delta y^{2} \tag{31}
$$

The advantage of such a technique is that it will retain price differentials observed in the market between bonds with similar maturity

Table 3 Example Yield Spreads for Different Rating Grades and Debt Seniority

<table><tr><td>Rating Grade</td><td>Rating Description</td><td>Senior Unsecured</td><td>Subordinated</td></tr><tr><td>1</td><td>Aaa / AAA</td><td>15 bp</td><td>20 bp</td></tr><tr><td>2</td><td>Aa1 / AA+</td><td>30 bp</td><td>40 bp</td></tr><tr><td>3</td><td>Aa2 / AA</td><td>45 bp</td><td>60 bp</td></tr><tr><td>4</td><td>Aa3 / AA-</td><td>60 bp</td><td>80 bp</td></tr><tr><td>5</td><td>A1 / A+</td><td>75 bp</td><td>100 bp</td></tr><tr><td>6</td><td>A2 / A</td><td>90 bp</td><td>120 bp</td></tr><tr><td>7</td><td>A3 / A-</td><td>105 bp</td><td>140 bp</td></tr><tr><td>8</td><td>Baa1 / BBB+</td><td>130 bp</td><td>180 bp</td></tr><tr><td>9</td><td>Baa2 / BBB</td><td>155 bp</td><td>220 bp</td></tr><tr><td>10</td><td>Baa3 / BBB-</td><td>180 bp</td><td>260 bp</td></tr><tr><td>11</td><td>Ba1 / BB+</td><td>230 bp</td><td>330 bp</td></tr><tr><td>12</td><td>Ba2 / BB</td><td>280 bp</td><td>410 bp</td></tr><tr><td>13</td><td>Ba3 / BB-</td><td>330 bp</td><td>480 bp</td></tr><tr><td>14</td><td>B1 / B+</td><td>430 bp</td><td>610 bp</td></tr><tr><td>15</td><td>B2 / B</td><td>530 bp</td><td>740 bp</td></tr><tr><td>16</td><td>B3 / B-</td><td>630 bp</td><td>870 bp</td></tr><tr><td>17</td><td>Caa-C / CCC</td><td>780 bp</td><td>1040 bp</td></tr></table> and credit rating when the issuer migrates to a different rating grade. Table 3 shows the indicative yield spreads relative to government bonds for different rating grades as a function of the seniority of the debt issue. These yield spreads will be used to illustrate how the price change resulting from a rating migration can be estimated by using it in conjunction with the current duration and convexity of the bond.


#### Deriving Expected Loss

Unlike in the case of the default mode, the issuer can migrate to one of several rating grades under the migration mode during the course of the year. Associated with these rating migrations are discrete transition probabilities that comprise the rows of the rating transition matrix given in Table 2. In the rating migration framework, the transition probabilities represent historical averages and can be treated as deterministic variables. The random variables here are the credit losses that the bondholder incurs when the issuer rating changes. The expected value of the credit loss for a rating change from the  $i$ th grade to the  $k$ th grade is given by,

$$
\begin{array}{l}
\Delta P_{ik} = P_{\text{dirty}} \times D \times \Delta y_{ik} - 0.5 \times P_{\text{dirty}} \\
\times C \times \Delta y_{ik}^{2} \tag{32}
\end{array}
$$

In equation (32),  $\Delta y_{ik}$  denotes the yield change when the issuer rating changes from grade  $i$  to grade  $k$ . When the issuer migrates to the default state, the credit loss  $\Delta P_{ik}$  will be equal to the loss on default LD. Considering that there are 18 rating grades including the default state, the expected loss under the rating migration mode for an issuer whose current credit rating is  $i$  is given by,

$$
EL = \sum_{k=1}^{18} p_{ik} \times \Delta P_{ik} \tag{33}
$$

In equation (33), $p_{ik}$ denotes the one-year transition probability to migrate from rating grade $i$ to rating grade $k$. The above equation quantifies the expected loss over a one-year horizon for a nominal exposure of one dollar. For a nominal exposure NE, the expected loss under migration mode is given by,

$$
EL = NE \times \sum_{k=1}^{18} p_{ik} \times \Delta P_{ik} \tag{34}
$$

### Unexpected Loss Under Migration Mode

By definition, unexpected loss under migration mode is the standard deviation of the credit loss variable. The loss variable under the migration mode is given by,


$$
\tilde{\ell} = \sum_{k=1}^{18} p_{ik} \times \Delta\tilde{P}_{ik} \tag{35}
$$

In equation (35), $\Delta\tilde{P}_{ik}$ denotes the credit loss when the credit rating changes from grade $i$ to grade $k$, which is regarded as a random variable. The expected value of this random variable is $\Delta P_{ik}$, and we shall denote its variance by $\sigma_{ik}^2$. When $k$ is equal to the default state, $\sigma_{ik}$ will be equal to $\sigma_{RR}$, which is the standard deviation of the recovery rate. Recalling equation (24), we can write the variance of the loss variable as,

$$
\begin{array}{l}
\operatorname{Var}(\tilde{\ell}) = E\left(\sum_{k=1}^{18} p_{ik} \times \Delta\tilde{P}_{ik}^{2}\right) \\
- \left[E\left(\sum_{k=1}^{18} p_{ik} \times \Delta\tilde{P}_{ik}\right)\right]^{2} \tag{36}
\end{array}
$$

Taking expectations and making use of the relation (24) once more, we get the following expression for the variance of the loss variable:

$$
\begin{array}{l}
\operatorname{Var}(\tilde{\ell}) = \sum_{k=1}^{18} p_{ik} \times (\Delta P_{ik}^{2} + \sigma_{ik}^{2}) \\
- \left[\sum_{k=1}^{18} p_{ik} \times \Delta P_{ik}\right]^{2} \tag{37}
\end{array}
$$

If we assume that there is no uncertainty associated with the credit losses except in the default state, all $\sigma_{ik}^{2}$ terms in equation (37) will drop out other than $\sigma_{RR}^{2}$. Making this assumption and noting that $p_{ik}$ is equal to PD when $k$ is the default state, the unexpected loss under migration mode for a nominal exposure NE is given by,

$$
\begin{array}{l}
UL = NE \\
\times \sqrt{PD \times \sigma_{RR}^{2} + \sum_{k=1}^{18} p_{ik} \times \Delta P_{ik}^{2} - \left[\sum_{k=1}^{18} p_{ik} \times \Delta P_{ik}\right]^{2}} \tag{38}
\end{array}
$$

## Numerical Example

In this section we will consider a numerical example to illustrate the computations of expected

Table 4 Security Level Details of the Example Bond

<table><tr><td>Description</td><td>Value</td></tr><tr><td>Issuer rating grade</td><td>A3</td></tr><tr><td>Dirty price for \$1 nominal</td><td>1.0533</td></tr><tr><td>Nominal exposure</td><td>\$1,000,000</td></tr><tr><td>Modified duration</td><td>4.021</td></tr><tr><td>Convexity</td><td>19.75</td></tr><tr><td>Mean recovery rate</td><td>35\%</td></tr><tr><td>Volatility of RR</td><td>25\%</td></tr></table> pected and unexpected losses under the default mode and migration mode. The security level details of the example we will consider are given in Table 4.


Since the mean recovery rate is assumed to be  $35\%$ , the loss on default for this security is equal to 0.7033 for one-dollar nominal exposure. The probability of default for this security is equal to  $0.10\%$ , which corresponds to the last column in row A3 of the transition matrix given in Table 3. The expected and unexpected losses in the default mode when  $\mathrm{PD} = 0.001$  are given below.

$$
\begin{array}{l}
EL = NE \times PD \times LD \\
= 1,000,000 \times 0.001 \times 0.7033 = \$703.3
\end{array}
$$

$$
\begin{array}{l}
UL = NE \times \sqrt{PD \times \sigma_{RR}^{2} + LD^{2} \times \sigma_{PD}^{2}} \\
= 1,000,000 \\
\times \sqrt{0.001 \times 0.25^{2} + 0.7033^{2} \times 0.001 \times (1 - 0.001)} \\
= \$22,369.3
\end{array}
$$

Under the migration mode, the breakdown of the calculations involved in estimating expected and unexpected losses are given in Table 5.

The expected loss under migration mode is given by,

$$
\begin{array}{l}
EL = NE \times \sum_{k=1}^{18} p_{ik} \times \Delta P_{ik} \\
= 1,000,000 \times 0.003132 = \$3,132
\end{array}
$$

The unexpected loss under migration mode is given by,

$$
\begin{array}{l}
UL = NE \\
\times \sqrt{PD \times \sigma_{RR}^{2} + \sum_{k=1}^{18} p_{ik} \times \Delta P_{ik}^{2} - \left[\sum_{k=1}^{18} p_{ik} \times \Delta P_{ik}\right]^{2}} \\
= 1,000,000 \\
\times \sqrt{0.001 \times 0.25^{2} + 6.803 \times 10^{-4} - 0.003132^{2}} \\
= \$27,073.8
\end{array}
$$

Table 5 Calculation of EL and UL Under Migration Mode

<table><tr><td>Grade</td><td>pik</td><td>Δyk</td><td>ΔPik</td><td>pik × ΔPik</td><td>pik × ΔPik2</td></tr><tr><td>1</td><td>0.05\%</td><td>-0.90\%</td><td>-0.0390</td><td>-0.000019</td><td>7.590E-07</td></tr><tr><td>2</td><td>0.11\%</td><td>-0.75\%</td><td>-0.0323</td><td>-0.000036</td><td>1.151E-06</td></tr><tr><td>3</td><td>0.05\%</td><td>-0.60\%</td><td>-0.0258</td><td>-0.000013</td><td>3.325E-07</td></tr><tr><td>4</td><td>0.24\%</td><td>-0.45\%</td><td>-0.0193</td><td>-0.000046</td><td>8.912E-07</td></tr><tr><td>5</td><td>1.55\%</td><td>-0.30\%</td><td>-0.0128</td><td>-0.000198</td><td>2.539E-06</td></tr><tr><td>6</td><td>8.68\%</td><td>-0.15\%</td><td>-0.0064</td><td>-0.000553</td><td>3.529E-06</td></tr><tr><td>7</td><td>75.40\%</td><td>0.00\%</td><td>0.0000</td><td>0.000000</td><td>0.000E+00</td></tr><tr><td>8</td><td>7.03\%</td><td>0.25\%</td><td>0.0105</td><td>0.000740</td><td>7.785E-06</td></tr><tr><td>9</td><td>3.83\%</td><td>0.50\%</td><td>0.0209</td><td>0.000801</td><td>1.676E-05</td></tr><tr><td>10</td><td>1.50\%</td><td>0.75\%</td><td>0.0312</td><td>0.000468</td><td>1.458E-05</td></tr><tr><td>11</td><td>0.57\%</td><td>1.25\%</td><td>0.0513</td><td>0.000293</td><td>1.501E-05</td></tr><tr><td>12</td><td>0.20\%</td><td>1.75\%</td><td>0.0709</td><td>0.000142</td><td>1.006E-05</td></tr><tr><td>13</td><td>0.23\%</td><td>2.25\%</td><td>0.0900</td><td>0.000207</td><td>1.864E-05</td></tr><tr><td>14</td><td>0.35\%</td><td>3.25\%</td><td>0.1267</td><td>0.000443</td><td>5.615E-05</td></tr><tr><td>15</td><td>0.05\%</td><td>4.25\%</td><td>0.1612</td><td>0.000081</td><td>1.299E-05</td></tr><tr><td>16</td><td>0.05\%</td><td>5.25\%</td><td>0.1937</td><td>0.000097</td><td>1.876E-05</td></tr><tr><td>17</td><td>0.01\%</td><td>6.75\%</td><td>0.2385</td><td>0.000024</td><td>5.688E-06</td></tr><tr><td>18</td><td>0.10\%</td><td></td><td>0.7033</td><td>0.000703</td><td>4.946E-04</td></tr><tr><td></td><td></td><td></td><td>Sum</td><td>0.003132</td><td>6.803E-04</td></tr></table>

It is useful to note here that under migration mode the expected loss is more than four times higher. The increase in the unexpected loss in migration mode is, however, only around  $21\%$  higher than the unexpected loss under default mode.

## KEY POINTS

- Approaches used to determine default probabilities at the issuer level fall under two broad categories: the empirical approach that uses historical default data and public credit rating schemes; and the structural approach that uses options theory framework.
- Recovery rates on defaulted bonds vary over the business cycle and across industry sectors; and there is a negative relationship between recovery rates and probability of default.
- Credit risk for a corporate bond can be quantified in terms of the first two moments of its loss distribution: expected loss and unexpected loss.


- Approaches to quantifying credit risk fall under two categories: those that are based on two states of the world, namely default or no default; and those that include migrations to other credit rating categories including the state of default.


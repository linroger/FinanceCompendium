---
title: "Credit Risk"
aliases:
   - Credit Risk
   - Default Concepts
   - Credit Default Swaps
parent_directory: Derivatives Market Complete Full/chapters manual
formatted: 2025-12-21 02:17:00 AM
formatter_model: kimi-k2-turbo
cli_tool: claude-code
primary_tags:
  - credit risk management
  - default probability
  - credit default swaps
  - merton model
  - credit ratings
secondary_tags:
  - bankruptcy valuation
  - recovery rates
  - credit events
  - collateralized debt obligations
  - risk neutral pricing
  - bond default risk
  - credit derivatives
  - counterparty risk
  - financial crisis impact
cssclasses: academia
---

# Credit Risk

The risk that a counterparty will fail to meet a contractual payment obligation is called credit risk. Such risk exists anytime one party promises to make a future payment to another. Credit risk arises with loans, corporate bonds, and derivative contracts, and is therefore a risk that permeates the financial system. The failure to make a promised payment is a default. More generally, the term credit event is often used in contracts to refer to specific occurrences that suggest that a default is likely or has occurred. Examples of credit events are declaration of bankruptcy, failure to make a bond payment, repudiation of an obligation, or a credit downgrade.

In this chapter we discuss theory and practice relating to credit risk. We first present a framework for analyzing credit risk and discuss the Merton model, which essentially uses the Black-Scholes model to study credit risk. We then discuss credit ratings, which are widely used by market participants to judge the credit-worthiness of instruments and firms. Finally, we consider the instruments used to modify, hedge, and trade credit risk, including credit default swaps and collateralized debt obligations.

Defaults and fear of defaults played a central role in the financial crisis of 2008, so you may recognize many of the terms and concepts in this chapter. Credit risk is important because routine financial dealings presume the credit-worthiness of a counterparty. Also, many investors seek assets that have a low risk of default. Thus, assessing and managing credit risk are of critical importance in modern financial markets.

## I. DEFAULT CONCEPTS AND TERMINOLOGY

In this section we introduce basic concepts and terminology related to default in the context of pricing a zero-coupon bond. Suppose that a firm with asset value  $A_0$  issues a zero-coupon bond maturing at time  $T$ , with a promised payment of  $\bar{B}$ . Let  $B_T$  denote the market value of the bond at time  $T$ . At time  $T$ , there are two possible outcomes:

- $A_T > \bar{B}$ . Since assets are worth more than the repayment owed bondholders, shareholders will repay bondholders in full, so  $B_T = \bar{B}$ .
- $A_{T} < \bar{B}$ . Shareholders will walk away from the firm, surrendering it to bondholders. The value of the bonds at time  $T$  is then  $B_{T} = A_{T}$ .

Let  $g^{*}(A_{T};A_{0})$  denote the risk-neutral probability density for the time  $T$  asset value, conditional upon the time 0 asset value,  $A_0$ . Then we can write the initial debt value,  $B_{0}$ , as

$$
B _ {0} = e ^ {- r T} \left[ \int_ {0} ^ {\bar {B}} A _ {T} g ^ {*} \left(A _ {T}; A _ {0}\right) d A _ {T} + \bar {B} \int_ {\bar {B}} ^ {\infty} g ^ {*} \left(A _ {T}; A _ {0}\right) d A _ {T} \right] \tag {1}
$$

The first integral on the right-hand side is the risk-neutral partial expectation of the asset value, conditional on bankruptcy. The second integral is the risk-neutral probability that the firm is not bankrupt. Thus, we can rewrite the value of the bonds as

$$
B_{0} = e^{-rT} \left\{\mathrm{E}^{*} \left(A_{T} | \text{Default}\right) \times \Pr^{*} (\text{Default}) + \bar{B} \times [1 - \Pr^{*} (\text{Default})] \right\}
$$

where $\mathrm{E}^{*}$ and $\Pr^{*}$ are computed with respect to the risk-neutral measure. Since $B_{T} = A_{T}$ in default, we can also write this as

$$
B_{0} = e^{-rT} \left\{\mathrm{E}^{*} \left(B_{T} | \text{Default}\right) \times \Pr^{*} (\text{Default}) + \bar{B} \times [1 - \Pr^{*} (\text{Default})] \right\} \tag{2}
$$

If we set the probability of default equal to zero, equation (2) yields the standard formula for the value of a default-free bond,  $B_0 = e^{-rT}\bar{B}$ . Equation (2) also illustrates that default introduces two new elements: the default probability  $(\mathrm{Pr}^*[Default])$ , and the payoff conditional on default  $(\mathrm{E}^* \left[ B_T | Default \right])$ .

The payoff conditional on default can be expressed in different ways. The recovery rate is the amount the debt-holders receive as a fraction of what they are owed. Thus, in the case where a firm issues a single zero-coupon bond, the risk-neutral expected recovery rate is

$$

\mathrm {E} ^ {*} (\text {R e c o v e r y r a t e}) = \frac {\mathrm {E} ^ {*} (B _ {T} | \text {D e f a u l t})}{\bar {B}} \tag {3}

$$

The loss given default is the difference between what the bondholders are owed and what they receive, as a fraction of the promised payment:

$$

\mathrm {E} ^ {*} (\text {L o s s g i v e n d e f a u l t}) = 1 - \mathrm {E} ^ {*} (\text {R e c o v e r y r a t e}) \tag {4}

$$

Conventionally any such measure is expressed as a percentage.

Finally, we can express the credit spread—the difference between the yield to maturity on a defaultable bond and an otherwise equivalent default-free bond—in terms of the risk-neutral default probability and expected loss given default. In equation (2), divide both sides by  $\bar{B}$  and take the natural logarithm of both sides. Recall that the annual yield to maturity on the bond,  $\rho$ , is

$$

\rho = \frac {1}{T} \ln \left(\frac {\bar {B}}{B _ {0}}\right)

$$

After some rearrangement, we obtain the following expression from equation (2):

$$

\rho - r = \frac {1}{T} \ln \left[ \frac {1}{1 - \Pr^ {*} (\text {D e f a u l t}) \times \mathrm {E} ^ {*} (\text {L o s s g i v e n d e f a u l t})} \right] \tag {5}

$$

The left-hand side of equation (5) is the credit spread. Both the probability of default and the expected loss given default are less than 1, so, as we would expect, the credit spread is greater than or equal to zero. If either the probability of default or the expected loss given default is zero, the bond yield equals the risk-free rate.

By taking a Taylor series expansion of the right-hand side of equation (5), we obtain

$$

\rho - r \approx \frac {1}{T} \Pr^ {*} (\text {D e f a u l t}) \times \mathrm {E} ^ {*} (\text {L o s s g i v e n d e f a u l t})

$$

Thus, the credit spread approximately equals the annualized product of the risk-neutral default probability and the expected loss given default.

## 2. THE MERTON DEFAULT MODEL

Owning zero-coupon debt subject to default is the same thing as owning a default-free bond and writing a put option on the assets of the firm. This is an example of a structural approach to modeling bankruptcy: We create an explicit model for the evolution of the firm's assets, coupled with a rule governing default.

If we assume that the assets of the firm are lognormally distributed, then we can use lognormal probability calculations to compute either the risk-neutral or actual probability that the firm will go bankrupt. This approach to bankruptcy modeling has come to be called the Merton model since Merton (1974) used continuous-time methods to provide a model of the credit spread. The Merton default model has in recent years been the basis for credit risk analyses provided by Moody's KMV.

# Default at Maturity

Assume that the assets of the firm,  $A$ , follow the process

$$

\frac {d A}{A} = (\alpha - \delta) d t + \sigma d Z \tag {6}

$$ where  $\alpha$  is the expected return on the firm assets and  $\delta$  is the cash payout made to claim holders on the firm. Suppose the firm has issued a single zero-coupon bond with promised payment  $\bar{B}$ , that matures at time  $T$  and makes no payouts. Default occurs at time  $T$  if  $A_{T} < \bar{B}$ . The probability of bankruptcy at time  $T$ , conditional on the value of assets at time  $t$ , is

$$
\begin{array}{l} \Pr (A _ {T} <   \bar {B} | A _ {t}) = N \left[ - \frac {\ln (A _ {t} / \bar {B}) + (\alpha - \delta - \frac {1}{2} \sigma^ {2}) (T - t)}{\sigma \sqrt {T - t}} \right] \tag {7} \\ = N (- \hat {d} _ {2}) \\ \end{array}
$$

In this equation,  $\hat{d}_2$  is the Black-Scholes  $d_2$  term with  $r$  replaced by  $\alpha$ .

The expression  $\hat{d}_2$  is called the distance to default and measures the size (in standard deviations) of the random shock required to induce bankruptcy. To understand this interpretation, recall that when assets are lognormally distributed, the expected log asset value at time  $T$  is

$$
\operatorname {E} \left[ \ln \left(A _ {T}\right) \right] = \ln \left(A _ {t}\right) + (\alpha - \delta - 0. 5 \sigma^ {2}) (T - t)
$$

Thus, the distance to default is the difference between  $\operatorname{E}[\ln (A_T)]$  and the bankruptcy level  $\bar{B}$ , normalized by the standard deviation:2

$$
\begin{array}{l} \text {D i s t a n c e} = \frac {\operatorname {E} [ \ln \left(A _ {T}\right) ] - \bar {B}}{\sigma \sqrt {T - t}} \\ = \frac {\ln (A _ {t}) + (\alpha - \delta - 0 . 5 \sigma^ {2}) (T - t) - \ln (\bar {B})}{\sigma \sqrt {T - t}} \\ \end{array}
$$

This is  $\hat{d}_2$ . The default probability is  $N(-\text{distance to default})$ .

The expected recovery rate, conditional on default, is

$$
\mathrm {E} \left(A _ {T} \mid A _ {T} <   \bar {B}\right) = A _ {t} e ^ {(\alpha - \delta) (T - t)} \frac {N \left[ - \frac {\ln \left(A _ {t} / \bar {B}\right) + (\alpha - \delta + \frac {1}{2} \sigma^ {2}) (T - t)}{\sigma \sqrt {T - t}} \right]}{N \left[ - \frac {\ln \left(A _ {t} / \bar {B}\right) + (\alpha - \delta - \frac {1}{2} \sigma^ {2}) (T - t)}{\sigma \sqrt {T - t}} \right]} \tag {8}
$$

It is important to notice that the calculations in equations (7) and (8) are performed under the true probability measure (also sometimes called the physical measure). Thus, these equations provide estimates of the empirically observed default probability and recovery rate, but we cannot use them in pricing calculations. In order to compute the theoretical credit spread, for example, we replace the actual asset drift,  $\alpha$ , with the risk-free rate in equations (7) and (8). This gives us

$$
\Pr^ {*} (A _ {T} <   \bar {B}; A _ {t}) = N \left[ - \frac {\ln (A _ {t} / \bar {B}) + (r - \delta - \frac {1}{2} \sigma^ {2}) (T - t)}{\sigma \sqrt {T - t}} \right] \tag {9}
$$ and


$$

\mathrm {E} ^ {*} \left(A _ {T} \mid A _ {T} <   \bar {B}\right) = A _ {t} e ^ {(r - \delta) (T - t)} \frac {N \left[ - \frac {\ln \left(A _ {t} / \bar {B}\right) + \left(r - \delta + \frac {1}{2} \sigma^ {2}\right) (T - t)}{\sigma \sqrt {T - t}} \right]}{N \left[ - \frac {\ln \left(A _ {t} / \bar {B}\right) + \left(r - \delta - \frac {1}{2} \sigma^ {2}\right) (T - t)}{\sigma \sqrt {T - t}} \right]} \tag {10}

$$

We can use these expressions to compute equation (5).

Example 1. Suppose that \overline{B} = \100, A_0 = \90, \alpha = 10\%, r = 6\%, \sigma = 25\%, \delta = 0 (the firm makes no payouts), and T = 5 years. The theoretical debt value in this case is \62.928, which implies a yield of 9.2635\%.

Using equations (7) and (9), the true and risk-neutral default probabilities are  $33.49\%$  and  $47.26\%$ . Thus, over a 5-year horizon, we would expect to observe a default one-third of the time. Under the risk-neutral measure, however, defaults occur almost half the time. The greater risk-neutral default probability is due to the assets growing more slowly under the risk-neutral measure.

Using equations (8) and (10), the expected asset value conditional on default is  \$71.867 under the true measure, and\$ 68.144 under the risk-neutral measure. Expected recovery rates are therefore

$$

\mathrm {E} (\text {R e c o v e r y r a t e}) = \frac {7 1 . 8 6 7}{1 0 0} = 0. 7 1 8 6 7

$$ under the true measure, and


$$

\mathrm {E} ^ {*} (\text {R e c o v e r y r a t e}) = \frac {6 8 . 1 4 4}{1 0 0} = 0. 6 8 1 4 4

$$ under the risk-neutral measure. Note that the risk-neutral expected loss given default is


$$

\mathrm {E} ^ {*} (\text {L o s s g i v e n d e f a u l t}) = 1 - 0. 6 8 1 4 4 = 0. 3 1 8 6 6

$$

Using the risk-neutral default probability and loss given default, we can compute the theoretical debt yield. From equation (5), the credit spread is

$$

\frac {1}{5} \ln \left[ \frac {1}{1 - 0 . 4 7 2 6 \times 0 . 3 1 8 6 6} \right] = 0. 0 3 2 6 3 5

$$

This implies a debt yield to maturity of  $0.060 + 0.032635 = 0.092635$ , which is the same answer as that using the Black-Scholes formula to compute the theoretical debt value.

As the preceding example shows, historical data on defaults provides different information than historical data on prices. Historical default frequencies and recovery rates, which are observed under the true measure, correspond to equations (7) and (8). If we examine credit spreads, by contrast, we can infer the risk-neutral expected default frequency and recovery rate, which correspond to equations (9) and (10). Notice, however, that we would infer the same asset volatility from both sets of calculations.

# Related Models

Suppose that the value of assets can jump to zero according to a Poisson process. Specifically, suppose that over an interval  $dt$ , the probability of a jump to zero is  $\lambda dt$ , and that the occurrence of this jump is independent of the market and of other defaults. When a stock can independently jump to zero, the value of a European call is obtained by replacing the risk-free rate,  $r$ , with  $r + \lambda$ . As before, equity is a call option on the assets. If the firm makes no payouts, the value,  $B_{t}$ , of a single issue of zero-coupon debt maturing at time  $T$  is


$$

B _ {t} = A _ {t} - \operatorname {B S C a l l} \left(A _ {t}, \bar {B}, \sigma , r + \lambda , T - t, 0\right) \tag {11}

$$

The possibility that assets can jump to zero will raise the bond yield.3

There is a special case where the effect of the jump probability on the bond yield is particularly easy to interpret. When the bond is default-free except for the possibility of a jump, then the bond yield is  $r + \lambda$ : The yield increases one-for-one with the default probability.

Example 2. Suppose that a firm has a single issue of zero-coupon debt promising to pay 10 in 5 years, and that A_0 = 90,  \sigma = 30\% ,  r = 0.06 , and  \delta = 0 . From equation (11), when  \lambda = 0 , the value of the debt is

$$

B _ {t} = \$ 90 - \text {B S C a l l} (9 0, 1 0, 0. 3 0, 0. 0 6, 5, 0) = \$ 7. 4 0 8

$$

The yield on debt is  $\ln (10 / 7.408) / 5 = 0.06$ . This bond is priced as if it were default-free.

When  $\lambda = 0.02$ , the price of the bond is

$$

B _ {t} = \$ 90 - \text {B S C a l l} (9 0, 1 0, 0. 3 0, 0. 0 6 + 0. 0 2, 5, 0) = \$ 6. 7 0 3

$$

The yield is then  $\ln (10 / 6.703) / 5 = 0.08$ : The yield increases by the default probability.

When a default is likely apart from jumps to zero, then the increase in the bond yield is less than  $\lambda$ . For example, when  $\bar{B} = \$100$ , the bond yield is  $10.342\%$  without jumps, and  $11.588\%$  with a  $2\%$  jump to zero.

The models we have discussed are relatively simple: There are no coupon payments and bankruptcy occurs only at maturity. In practice, firms typically have a mix of short-term and long-term coupon-paying debt, so that debt maturity is not well-defined and bankruptcy can occur at any time. One solution in this case is to approximate the bankruptcy trigger as the face value of short-term debt plus one-half the face value of long-term debt (Vassalou and Xing, 2004).

With barrier option pricing formulas, binomial valuation, Monte Carlo, or other numerical methods, it is possible to create bankruptcy models that permit bankruptcy prior to a maturity date. The Black and Cox (1976) model is a variant of the Merton model in which bankruptcy occurs if assets fall to a predetermined level,  $\underline{A}$ , prior to maturity. This assumption mimics a debt covenant that triggers default if the firm's financial condition worsens sufficiently. Equity in this model is a call option that knocks out if  $A_{t} \leq \underline{A}$ .

# 3. BOND RATINGS AND DEFAULT EXPERIENCE

Bond ratings provide a measure of the credit risk for specific bonds. Such ratings, which are provided by third parties, attempt to measure the likelihood that a company will default on a bond. In the United States, the Securities and Exchange Commission (SEC) identifies specific credit-rating firms as Nationally Recognized Statistical Rating Organizations (NRSROs). The history and significance of this designation was explained by the chairman of the SEC in congressional testimony.[4]

The Commission originally used the term "Nationally Recognized Statistical Rating Organization," or NRSRO, with respect to credit rating agencies in 1975 solely to differentiate between grades of debt securities held by broker-dealers as capital to meet Commission capital requirements. Since that time, ratings by NRSROs have become benchmarks in federal and state legislation, domestic and foreign financial regulations and privately negotiated financial contracts.

During the 1990s there were three NRSROs: Standard and Poor's, Moody's, and Fitch. As of early 2012, there were 10. The rating agencies were widely criticized for some of their ratings activity prior to the 2008 financial crisis. Agencies had granted high ratings to securities that paid investors based on the performance of mortgages. Many of these highly rated securities were downgraded significantly during the financial crisis. Rating agencies are paid by issuers of the rated securities, and critics charged that this created a conflict of interest for the agencies. Rating agencies are still predominantly paid by issuers, but the Dodd-Frank Act in 2010 changed some of the rules pertaining to agencies. Specifically, Section 932 of the act required among other things that the rating agencies increase transparency of their rating methods and improve their internal controls. References to ratings are to be removed from federal statutes. The effect of the changes remains to be seen.

Moody's rates bonds using the designations Aaa, Aa, A, Baa, Ba, B, Caa, Ca, and C. Within each ratings category (except for Aaa, Ca, and C), bonds may be further rated as a 1, 2, or 3, with 1 denoting the highest quality within a category. Standard and Poor's and Fitch have a similar rating system, using the designations AAA, AA, A, BBB, BB, B, CCC, CC, and C, with “+” and “-” used to denote within -grade differences.

The market distinguishes between "investment grade" (a rating of Baa/BBB or above) and "below-investment grade" or "speculative grade" (a rating below Baa/BBB) bonds. Some investors are permitted to hold only investment grade bonds, and some contracts have triggers based upon whether a company's bond rating is investment grade. For example, prior to Enron's bankruptcy, some of the company's deals contained clauses requiring that Enron make payments if Enron lost its investment grade status. Enron's financial difficulties were worsened when its rating fell below investment grade.

TABLEI
Standard and Poor's 1-year global corporate average credit rating transition rates, 1981-2010  $(\%)$ . NR means "no longer rated."

<table><tr><td>From/to</td><td>AAA</td><td>AA</td><td>A</td><td>BBB</td><td>BB</td><td>B</td><td>CCC/C</td><td>D</td><td>NR</td></tr><tr><td>AAA</td><td>87.91</td><td>8.08</td><td>0.54</td><td>0.05</td><td>0.08</td><td>0.03</td><td>0.05</td><td>0.00</td><td>3.25</td></tr><tr><td>AA</td><td>0.57</td><td>86.48</td><td>8.17</td><td>0.53</td><td>0.06</td><td>0.08</td><td>0.02</td><td>0.02</td><td>4.06</td></tr><tr><td>A</td><td>0.04</td><td>1.90</td><td>87.29</td><td>5.37</td><td>0.38</td><td>0.17</td><td>0.02</td><td>0.08</td><td>4.75</td></tr><tr><td>BBB</td><td>0.01</td><td>0.13</td><td>3.70</td><td>84.55</td><td>3.98</td><td>0.66</td><td>0.15</td><td>0.25</td><td>6.56</td></tr><tr><td>BB</td><td>0.02</td><td>0.04</td><td>0.17</td><td>5.22</td><td>75.75</td><td>7.30</td><td>0.76</td><td>0.95</td><td>9.79</td></tr><tr><td>B</td><td>0.00</td><td>0.04</td><td>0.14</td><td>0.23</td><td>5.48</td><td>73.23</td><td>4.47</td><td>4.70</td><td>11.71</td></tr><tr><td>CCC/C</td><td>0.00</td><td>0.00</td><td>0.19</td><td>0.28</td><td>0.83</td><td>13.00</td><td>43.82</td><td>27.39</td><td>14.48</td></tr></table>

Source: Vazza et al. (2011, Table 21).

# Rating Transitions

A company that goes bankrupt will typically have had ratings downgrades prior to bankruptcy. By looking at the frequency with which bonds experience a ratings change, it is possible to estimate the ultimate bankruptcy probability. A change in ratings is called a ratings transition.

Table 1 is a ratings transition matrix, reporting the probability that a firm in a given ratings category will switch to another ratings category over the course of a year. Firms rated AAA, AA, or A all have about an  $88\%$  chance of retaining their rating over a 1-year horizon, and almost no chance of suffering a default over that time. They do, however, have some chance of experiencing a downgrade, after which bankruptcy becomes likelier: The default probability increases as the rating decreases.

Given certain assumptions, we can use a short-term ratings transition matrix to compute the ultimate probability that a firm with a given rating will go bankrupt. Specifically, suppose we believe that a ratings transition matrix is constant over time and that the probability of moving from one rating to another in a given year does not depend on the rating in a previous year. Then we can use the matrix to compute the probability that a firm that is A-rated (for example) will move to any other rating, and the subsequent probability that it will move from one of the new ratings to a different rating, and so forth.

The following simple example will illustrate how to interpret and use a ratings transition matrix. Suppose that securities can be in one of three categories: Good, Bad, and Ugly. The matrix in Table 2 displays the probability that a firm with a rating in the left-hand column will, over the course of a year, move to a rating in the top row. For example, there is a  $90\%$  probability that a firm rated Good will still be Good 1 year later. There is a  $3\%$  chance that the Good firm will become Ugly.

Ratings transition matrix. The entry in the  $i$ th row and  $j$ th column is the probability that a firm will, over 1 year, move from type  $i$  to type  $j$ .

TABLE 2

<table><tr><td rowspan="2" colspan="2"></td><td colspan="3">To:</td></tr><tr><td>Good</td><td>Bad</td><td>Ugly</td></tr><tr><td rowspan="3">From:</td><td>Good</td><td>0.90</td><td>0.07</td><td>0.03</td></tr><tr><td>Bad</td><td>0.15</td><td>0.75</td><td>0.10</td></tr><tr><td>Ugly</td><td>0.06</td><td>0.14</td><td>0.80</td></tr></table>

Notice that each row sums to one. This means that after 1 year each firm must be in one of the three categories. By contrast, in Table 1, there is a "no longer rated" category, indicating that a firm has for some reason dropped out of S&P's rating universe.

We can use the transition matrix to compute the probability that a firm rated Good will still be Good 2 years from now. To perform this calculation, recognize that there are three different paths by which a firm that is now Good can still be Good in 2 years.

- There is a  $90\%$  chance that a Good firm remains Good over 1 year. There is therefore an  $81\%$ $(0.9 \times 0.9)$  probability that the firm will be Good for both years.
- There is a  $7\%$  probability that the firm will be Bad next year, in which case there is a  $15\%$  chance the firm will become Good the subsequent year. There is therefore a  $1.05\%$ $(0.07 \times 0.15)$  probability that the firm will go from Good to Bad and then back to Good.
- Finally, there is a  $3\%$  probability that the firm will become Ugly, and then a  $6\%$  probability that it will become Good again. There is therefore a  $0.18\%$ $(0.03 \times 0.06)$  probability that the firm will become Ugly and then Good.

The total probability that a Good firm will still be Good in 2 years is therefore  $82.23\%$

$$

(0. 9 0 \times 0. 9 0) + (0. 0 7 \times 0. 1 5) + (0. 0 3 \times 0. 0 6) = 0. 8 2 2 3

$$

In order to perform this calculation, it may at first seem necessary to enumerate the possible transitions. Notice, however, that the calculation entails multiplying each element of the first row of the transition matrix by the corresponding element of the first column, and then summing the results. It turns out that if we wish to know all possible transitions over a 2-year period, we can construct a new matrix from the 1-year transition matrix, where the element in the  $i$ th row and  $j$ th column of the new matrix is created by multiplying the  $i$ th row of the original matrix by the  $j$ th column of the original matrix and summing the results. This is a multiplication of the transition matrix by itself. Table 3 shows the result.

In order to compute the ratings distribution after 3 years, we can duplicate the procedure, only taking the 2-year matrix and multiplying it by the 1-year matrix. This is the same as multiplying the 1-year matrix by itself twice.

In general, let  $p(i,t;j,t + s)$  denote the probability that, over an  $s$ -year horizon, a firm will move from the rating in row  $i$  to that in column  $j$ . The entries in Table 1 give us

TABLE 3
Ratings transition probabilities after 2 years.

<table><tr><td rowspan="2" colspan="2"></td><td colspan="3">To</td></tr><tr><td>Good</td><td>Bad</td><td>Ugly</td></tr><tr><td rowspan="3">From:</td><td>Good</td><td>0.8223</td><td>0.1197</td><td>0.0580</td></tr><tr><td>Bad</td><td>0.2535</td><td>0.5870</td><td>0.1595</td></tr><tr><td>Ugly</td><td>0.1230</td><td>0.2212</td><td>0.6558</td></tr></table>

$p(i, t; j, t + 1)$ . Suppose there are  $n$  ratings. Over 2 years, the probability of moving from rating  $i$  to rating  $j$  is

$$ p (i, t; j, t + 2) = \sum_ {k = 1} ^ {n} p (i, t; k, t + 1) \times p (k, t + 1; j, t + 2)
$$

From the 2-year transitions we can go to 3 years, and then 4, and so on. Given the  $s - 1$ -year transition probabilities, the  $s$ -year transition probability is

$$ p (i, t; j, t + s) = \sum_ {k = 1} ^ {n} p (i, t; k, t + s - 1) \times p (k, t + s - 1; j, t + s) \tag {12}
$$

Thus, a transition probability matrix can be used to tell us the probability that a firm will go bankrupt after a given period of time.

The long-term experience of bonds with a given rating is reported in Table 4. Note that if a bond has a AAA rating, after 7 years there is a  $0.1\%$  chance it will have gone bankrupt. However, bonds issued by firms initially rated B accounted for  $54.1\%$  of defaults over the 30-year period in Table 4.

# Recovery Rates

Table 5 displays historical average recovery rates for bonds with different levels of seniority. When we model debt with different priorities, we assume that in a default, junior debtholders received no payment if senior debt was not completely repaid. This rule for paying bondholders is called absolute priority. If the bankruptcy process respects absolute priority, more senior bonds will have higher recovery rates. Table 5 shows that bonds designated as more senior generally have higher average recovery rates. It is important to understand that the numbers in Table 5 are averages, and there is considerable variation in recovery rates across firms.

# Reduced Form Bankruptcy Models

The existence of data on corporate bond ratings changes, and defaults suggests that we could construct statistical pricing models designed to match the behavior of bond prices.

TABLE 4

Cumulative default rates (in percent) by original rating of issuer, 1981-2010.

<table><tr><td></td><td colspan="7">\% of Total Defaults per Time Frame</td></tr><tr><td></td><td>AAA</td><td>AA</td><td>A</td><td>BBB</td><td>BB</td><td>B</td><td>CCC/C</td></tr><tr><td>1 year</td><td>0.0</td><td>0.0</td><td>0.0</td><td>2.6</td><td>9.6</td><td>48.7</td><td>39.1</td></tr><tr><td>3 years</td><td>0.0</td><td>0.0</td><td>0.9</td><td>4.1</td><td>18.0</td><td>64.7</td><td>12.3</td></tr><tr><td>5 years</td><td>0.0</td><td>0.2</td><td>1.1</td><td>5.6</td><td>21.6</td><td>62.9</td><td>8.6</td></tr><tr><td>7 years</td><td>0.1</td><td>0.3</td><td>1.8</td><td>6.6</td><td>23.0</td><td>60.6</td><td>7.5</td></tr><tr><td>Total</td><td>0.3</td><td>1.3</td><td>4.2</td><td>9.0</td><td>25.1</td><td>54.1</td><td>6.0</td></tr></table>

Source: Vazza et al. (2011, Table 12).

TABLE 5

Value-weighted average recovery rates (per 100 of par value) in the default year, based on post-default trading prices.

<table><tr><td rowspan="2">Priority</td><td colspan="2">Recovery</td></tr><tr><td>2010</td><td>1982–2010</td></tr><tr><td>First lien bank loan</td><td>72.3</td><td>59.6</td></tr><tr><td>Bonds</td><td></td><td></td></tr><tr><td>Senior secured</td><td>54.7</td><td>49.1</td></tr><tr><td>Senior unsecured</td><td>63.8</td><td>37.4</td></tr><tr><td>Senior subordinated</td><td>39.4</td><td>25.3</td></tr><tr><td>Subordinated</td><td>32.2</td><td>24.2</td></tr><tr><td>Junior subordinated</td><td>N/A</td><td>17.1</td></tr></table>

Source: Ou (2011, Exhibit 7).

Such models are called reduced form models. In order to price bonds we require risk-neutral probabilities, so we cannot directly use historical data.

To understand how reduced form models work, consider the simplest version of such a model. Suppose a  $T$ -year bond promises to pay  $\bar{B}$  at maturity and there is a zero recovery rate in the event of default. The risk-free rate is  $r$  and constant over time. If default follows a Poisson process with the risk-neutral intensity  $\lambda$ , then the bond price depends only on time and on the occurrence of the jump. The partial differential equation for pricing the bond is

$$
\frac {\partial B (t)}{\partial t} - \lambda B (t) = r B (t)
$$

With the boundary condition that  $B(T) = \bar{B}$ , the bond price is

$$
B (t) = \bar {B} e ^ {- (r + \lambda) (T - t)} \tag {13}
$$

Given our strong assumptions that recovery rate is zero and interest rates are nonstochastic, it would seem a simple matter to price this bond by observing  $r$  and inferring  $\lambda$  from data on defaults. The problem, however, is that equation (13) presumes that  $\lambda$  is a risk-neutral jump probability. Thus, we can infer  $\lambda$  from bond prices but not from historical default data.

To understand the issue, suppose that bond defaults are idiosyncratic. In this case an investor can diversify default risk. We then expect  $\lambda$  in equation (13) to equal the historically observed  $\lambda$ .

If defaults are correlated, however, then even a portfolio containing numerous bonds will encounter systematic losses from correlated defaults. Defaults occur when firms perform poorly—i.e., when equity returns are low. Investors require a positive risk premium to hold such bonds, and therefore the risk-neutral default probability in equation (13) will exceed the historical default probability.

A more general approach than that in equation (13) uses ratings transitions. Equation (13) does not take into account that default becomes more likely as ratings decline. With risk-neutral ratings transitions, it is possible to price bonds taking into account the various paths by which default can occur. Jarrow et al. (1997) show how to use observed bond prices and historical ratings transitions to infer risk-neutral ratings transition probabilities.

# 4. CREDIT DEFAULT SWAPS

The buyer of a bond acquires both interest rate risk and the credit risk of the issuer. An investor may wish to hold a different combination of these risks. Credit derivatives, which have existed since the early 1990s, are contracts that permit the trading and hedging of credit risk. In theory, credit derivatives permit institutions to hedge credit risk just as they might hedge the cost of oil. The outstanding notional principal covered by credit default swaps, which we discuss in this section, grew significantly between 2004 and 2010.

# Single-Name Credit Default Swaps

A single-name credit default swap (CDS) is an insurance contract on a bond. The CDS seller pays the buyer when the reference entity (the "single name" that issued the insured bond) experiences a credit event—for example, the failure to make a bond payment. The buyer of the swap is the protection buyer, and the counterparty providing the credit insurance is the swap writer or protection seller. If a credit event occurs, the protection buyer receives

$$
\text {P r o t e c h i o n b u y e r p a y o f f = B o n d p a r v a l u e - B o n d m a r k e t v a l u e} \tag {14}
$$

It is common for CDS contracts to settle in cash, with the seller paying the buyer the amount in equation (14). A corporate bondholder, for example, could buy a CDS for protection against the credit risk of a company. The CDS buyer and seller are typically unrelated to the reference entity. CDS contracts can have any maturity, but it is common to see quotes for 5and 10-year maturities.

Payment conventions for CDS contracts can be confusing. The payment for a CDS can have two components: a lump sum payment at the initiation of the contract (the "upfront payment"), and an annual premium, which is paid quarterly until expiration or the occurrence of a credit event, whichever is earlier. Prior to 2009, there was no upfront payment for reasonably credit-worthy firms, so buyers of CDS contracts paid only the annual premium. This amount is known as the conventional spread. Since 2009, CDS prices have been quoted either as a conventional spread or as points upfront with an implied annual premium of 500 basis points.

Figure 1 illustrates the relationship among a protection buyer (the investor), a protection seller (the swap writer), and the reference entity (XYZ). The figure assumes that the buyer pays the seller a conventional spread of 40 basis points. A default swap typically specifies one or more XYZ debt issues, called the reference assets or reference obligations. The reference asset is important because bonds from the same issuer with different seniority levels will have different prices after a default. Generally, the protection buyer can deliver any bond with payment rights equal to that of the reference asset. Although the figure shows the protection buyer owning a bond, it is possible to buy a CDS without owning the bond. The CDS buyer in this case is effectively short the bond, because the position makes money when the bond defaults.

You might wonder who decides whether a credit event has occurred and how the bond market value in equation (14) is determined. The International Swaps and Derivatives Association (ISDA) plays a central role in the CDS market: ISDA provides the standard documentation for CDS, an ISDA determination committee pronounces the occurrence of a credit event, and ISDA controls the settlement auctions that determine the payout. The standard procedure calls for dealers to submit both bid and ask prices for the defaulted bonds. The resulting demand and supply schedules are used to determine net open interest for the bond, after which there is an auction for that amount. The auction price is used to settle the CDS. Settlement procedures have changed over time in response to problems during settlement and will likely continue to evolve over time.[10]

CDS contracts are quoted for different expirations. The set of prices with different maturities generates a credit spread curve, where, for example, you may observe that credit spreads are small at short horizons and larger over 5 years. With an array of different maturities it is possible to make sophisticated bets. For example, you could buy protection

# FIGURE I

Depiction of the cash flows in a credit default swap. The CDS buyer may or may not own the reference asset, which was issued by XYZ. The CDS buyer pays 40 basis points per year in exchange for the CDS seller's payment in the event of a default by XYZ.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/cad955698bca5dced4dcad13327d34dedfbc58a048b29616c0195a26f89f840c.jpg) with a 4-year horizon and sell protection with a 5-year horizon; this is a bet that default will not occur in the fifth year.

Finally, recognize that both parties to a default swap face credit risk from the swap itself. The protection buyer may default on premium payments, and the protection seller could go bankrupt at the same time that a default occurs on the reference asset. This was a concern when AIG was rescued; see the box on the next page. Credit-linked notes, which we discuss below, are structured to eliminate counterparty credit risk.

Credit default premiums have become widely watched indicators of the likelihood of default for both firms and sovereigns, especially during times of financial stress. Figure 2 shows CDS prices (quoted as conventional spreads) for Morgan Stanley, Lehman Brothers, and Bank of America. It is easy to discern September 2008 in this figure. Lehman filed for bankruptcy on September 15, with its CDS contract having reached 688 the Friday before. Morgan Stanley survived, but its CDS premium reached 1260.90 on October 10, 2008. Bank of America fared more poorly following the crisis.

Figure 3 displays CDS premia for Germany, Greece, and Spain. All three countries had low credit spreads before late 2008. Greece defaulted in 2012, and investors had clearly become concerned about Spain. Germany maintained a relatively low CDS premium.

# Pricing a Default Swap

An investor who buys a bond and a default swap on the bond owns a synthetic default-free bond. This observation suggests that the default swap premium should approximately equal the default premium on the bond. To make this more precise, suppose we simultaneously undertake the following set of transactions:

- Buy protection with a CDS on \$100 worth of senior bonds issued by XYZ. The default swap premium is  $\rho$ .

# BOX I: Standardizing CDS

Financial firms have many interlocking relationships stemming from lending and derivatives. A policy concern during the financial crisis was that, because of these linkages, the failure of one firm could trigger multiple other failures. To understand how this could happen, suppose that firms B, C, and D own the debt of firm X, and that they buy credit default swaps on X from firm A. If firms A and X were to fail simultaneously, firms B, C, and D would lose their insurance and also suffer losses on the debt of X. They could possibly fail. In September 2008, the Federal Reserve rescued AIG when the firm was unable to post collateral to cover losses on hundreds of billions of dollars of written credit default swaps. There is controversy about whether the rescue was necessary, but it likely reduced the chance of additional failures.

Following the crisis, both regulators and the financial industry sought to make the CDS market more standardized and transparent. On the regulatory front, the Dodd-Frank Wall Street Reform and Consumer Protection Act required that all standardized derivatives contracts be centrally cleared and margined. Had this requirement been in place before September 2008 and applied to credit default swaps, AIG would have had to post margin for its positions and would have been marked-to-market daily by a clearinghouse. The magnitude and risk of AIG's position would have been apparent to regulators. It is possible that with margin requirements, AIG would have written fewer CDSs in the first place.

The industry also worked to standardize CDS contracts. The "big bang" in April 2009 (Markit, 2009) created standard CDS coupons of 100 and 500 basis points, with standard payment dates. If the CDS premium on a firm would have been 40 basis points prior to the big bang (as in Figure 1), for a transaction after that date the CDS buyer would pay 100 basis points annually, and the seller would make an initial lump-sum payment ("points upfront") in order to compensate the buyer for the greater annual payment. Similarly, if the conventional spread would have been more than 100 basis points, the buyer would make an upfront payment to the seller, in addition to paying 100 basis points annually. For ease of interpretation, CDSs paying 100 basis points are quoted using the conventional spread. CDSs paying 500 basis points may be quoted as points upfront. One purpose of coupon standardization was to make CDS positions easier to trade and offset.

- Short-sell a 100 default-free floating rate note paying r. (Such a note always sells at par.) Suppose that we can short-sell the bond costlessly.
- Buy XYZ senior floating-rate notes paying  $c = r + a$ , with par value \$100. The premium  $a = c - r$  is constant over time.

The short-sale of the default-free note funds the purchase of the defaultable note. These transactions require no initial cash flow.

Each period prior to termination, the net cash flow on the position is  $c - (r + \rho)$ . XYZ either defaults or does not default prior to maturity of the CDS, so that the default swap terminates in either of two ways:

- If the CDS matures and XYZ has not defaulted, sell the XYZ floating rate bond and use the 100 proceeds to buy the default-free floating rate note in order to close the

# FIGURE 2

5-year credit default swap premia for Morgan Stanley, Lehman Brothers, and Bank of America, 2004-2012. Y-axis scales are different for each panel.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/00fed2331716a5e6fc4bfb15234634d6886e318797360fa6d26f9d05104473e0.jpg) short sale. (By using floating rate notes, we ensure that both bonds are worth 100 if there is no default.)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/865f8514e98723605d97480ec378da58c44bd0c1bea09fc4d52b9b50d70f1516.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/e9ab2f3dee8cb6031d6153e030053e6f609193808672d4802a41bb00d7d24b4c.jpg)

Source: Datastream and Bloomberg.

- If XYZ defaults, under the terms of the CDS, surrender the defaulted floating rate notes in exchange for  \$100. Use the\$ 100 proceeds to buy the default-free floating rate note in order to close the short sale.

In either case, there is no net cash flow.

Since we can enter and close the position with no net cash flow, the interim cash flows should also equal zero, which implies that  $c - (r + \rho) = 0$ , or

$$
\rho = c - r \tag {15}
$$

In other words, the default swap premium equals the credit spread.

Notice that we made very strong assumptions to reach this conclusion, so we should not expect equation (15) to hold exactly. In practice, we would need to take into account a variety of complications, including time variation in the credit spread, bonds having fixed

# FIGURE 3

5-year credit default swap premia for Germany, Greece, and Spain, 2004-2012. Bloomberg does not provide data for Greek CDS after November 2011. Y-axis scales are different for each panel.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/ad50654b44dbe7d988e8daa4fafef749be7ca73d090a3744529a81f94d23e867.jpg) coupons instead of being floating rate, and transaction costs (such as costs of short-selling). Duffie (1999) discusses the effects of many such complications.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/deb2b59188f668a5a43f1c9783149d5b6c0f1b568925988cc9998d8cf8234700.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/7d6f9cbc9cdf27fea86dd56794ae89bde7c21672a5a77dbf37daaf8e642af352.jpg)

Source: Bloomberg.

A different set of issues is created by the possibility that a party to a CDS contract may be able to affect the value of the bonds, and thus affect the value of the CDS contract.

An important question implicitly raised by this discussion is the definition of an "otherwise equivalent default-free bond." It seems natural to use government bonds as a benchmark, but government bonds are unique in certain respects. Prices of government bonds include a liquidity premium and sometimes reflect special tax attributes (for example, in the United States, federal government bonds are exempt from state taxes). At the same time, yields on non-governmental bonds will reflect default risk.[12] Thus, the yield on an "equivalent default-free bond" is unlikely to be the government yield curve, and in fact may not be directly observable.

# Box 2: Amherst Holdings

In 2009, a Texas-based brokerage, Amherst Holdings, sold credit default swaps on a mortgage-backed security based on subprime mortgages. According to the Wall Street Journal (Zuckerman et al., 2009), the underlying mortgages, which were widely expected to default, had a face value of  \$29 million and a market value of substantially less. Banks including J.P. Morgan Chase, Royal Bank of Scotland, and Bank of America bought\$ 130 million in CDS on the mortgage-backed securities, paying as much as $0.90 per $1 of bond face value.

After selling the CDS, Amherst bought the underlying bonds and paid them off in full. The result was that the bonds did not default and the CDS contracts were worthless. The Journal article noted, "Banks are questioning whether Amherst set them up by selling credit-default swaps and then rendering them worthless."

It is a well-understood problem that an insurance buyer cares less about the value of the insured asset and an insurance seller cares more. Traditional insurance contracts can deal with these problems by requiring that the insurance buyer have an insured interest, with deductibles, and with monitoring. These mechanisms are absent in the CDS market, although there have been calls for additional government regulation to address the issue.

# CDS Indices

A CDS index is an average of the premiums on a set of individual CDSs. Thus, a CDS index provides a way to track credit for a market segment. The leading credit indices are the CDX indices for North American and emerging markets and iTraxx indices in the rest of the world. Leading CDX indices include the CDX.NA.IG (North American investment grade, equally weighted basket of 125 names), CDX.NA.HY (high yield, 100 names), CDX.NA.IG.HVOL (high volatility investment grade, 30 names), and CDX.EM (emerging markets, approximately 14 names). Leading iTraxx indices include iTraxx Europe (125 names), iTraxx Europe HiVol (30 names), and various sector indices. There are also credit indices for North America, Europe, Asia, Japan, and Australia (see Markit, 2008).[13]

Different contracts trade with different standard maturities. Most contracts are issued every 6 months. The CDX.NA.IG has standard maturities of 1, 2, 3, 5, 7, and 10 years.[14] The most recent 5 and 10-year contracts are the most heavily traded. The constituent firms can vary over time. Over the life of a contract, firms will drop out of an index due to bankruptcy or illiquidity, but otherwise the make-up of a given offering is set for the life of the offering. When a credit event occurs, the contract is reset with one fewer firm and a proportionally reduced notional principal.

# FIGURE 4

The structure of tranched CDX.NA.IG.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/295e5253a2903ffc314782879c13a23cbca61425beb61eaf31628331e51d6094.jpg)

Source: Markit (2008).

The nomenclature for CDS indices specifies the issue date. For example, the CDX.NA.IG.9 was first traded on September 21, 2007, maturing on December 20, 2017.[15] The IG.10 contract was first traded in March 2008, and so forth.

To a first approximation, it is possible to replicate a CDS index by holding a pool of CDSs.[16] As with a single CDS, one party is a protection seller, receiving premium payments, and the other is a protection buyer, making the payments but receiving a payment from the seller if there is a credit event.

Variants of standard CDS indices trade:

- A CDS index can be funded or unfunded. The unfunded version is like a credit default swap, except that the underlying asset is a basket of firms. The funded index is a note linked to the index with a collateral arrangement in case the note buyer had to make a payment.
- The index contracts also trade based on tranches. We will discuss tranching and CDOs further in Section 5.
- The underlying assets can represent different countries, currencies, maturities, or industries.

Tranched investment grade CDX has a payoff structure illustrated in Figure 4. Products based on this structure can be either funded or unfunded. We discuss tranched structure below, and we will see that the pricing of the various tranches is sensitive to correlation. In fact, tranche pricing can be quoted using implied correlation in much the same way equity option premiums are quoted using implied volatility.

## Other Credit-Linked Structures

There are other ways to hedge credit risk besides credit default swaps. It is possible to swap the return on a bond for the return on a different asset (total return swaps), and it is possible to create funded structures that pay when there is a default (credit-linked notes).

Total Rate of Return Swaps. A CDS contract has the payoff of an option. Total rate of return swaps can also be used to hedge credit risk, without paying a premium. These swaps are used less frequently than credit-default swaps. A difference between a total rate of return swap and the credit products we are discussing is that a total return swap for a bond makes payments based on changes in market value due to interest rate changes as well as due to credit changes. A CDS makes payments only if there is a credit event.

Credit-Linked Notes. A credit-linked note is a bond issued by one company with payments that depend upon the credit status (i.e., bankrupt or not) of a different company. For example, banks can issue credit-linked notes to hedge the credit risk of loans. To see how a credit-linked note works, suppose that bank ABC lends money to company XYZ. At the time of the loan, ABC creates a trust that issues notes: These are the credit-linked notes. The funds raised by the issuance of these notes are invested in bonds with a low probability of default (such as government bonds), which are held in the trust. If XYZ remains solvent, ABC is obligated to pay the notes in full. If XYZ goes bankrupt, the note-holders receive the XYZ loans and become creditors of XYZ. ABC takes possession of the securities in the trust. Thus, the credit-linked note is in effect a bond issued by ABC, which ABC does not need to repay in full if XYZ goes bankrupt. This structure eliminates a third-party insurance provider. Credit-linked notes can be rated and exchange-traded.

Because of the trust, the credit-linked notes can be paid in full even if ABC defaults. Thus, even though they are issued by ABC, the interest rate on the notes is determined by the credit risk of XYZ. An arrangement like this was used by Citigroup when it made loans to Enron in 2000 and 2001.[17] When Enron went bankrupt in late 2001, Citigroup avoided losses on over 1 billion in loans because it had hedged the loans by issuing credit-linked notes. (Citigroup was later sued over this transaction because it allegedly helped Enron misstate earnings.)

Credit Guarantees. If party A guarantees party B against default on a debt obligation, party A is said to have issued a credit guarantee. A credit guarantee is a put option on an obligation, with the option payable on a default or other credit event. Thus, a credit guarantee is effectively like a CDS. One consequence of the financial crisis is that the federal government in the United States has become a major provider of credit guarantees. Some of these are described in the box on the next page.

## 5. TRANCHED STRUCTURES

Financial institutions acquire assets that are difficult to resell individually, examples of which are auto loans, credit card receivables, home equity loans, and mortgages. A process called securitization provides a mechanism for reselling such assets by pooling together many of them and creating securities based on the pool. An asset-backed security (ABS)

# Box 3: Government Credit Guarantees

The U.S. government is a major supplier of credit guarantees in a variety of financial activities. Some of the guarantees are front-page news: Federal debt guarantees for Chrysler in the 1980s and US Airways in 2002 are well-known examples. However, there are also a host of governmental and quasi-governmental insurance programs that many take for granted. Here is a partial list:

- The Federal Deposit Insurance Corporation (FDIC) guarantees bank deposits against default of the bank.
- The Pension Benefit Guarantee Corporation (PBGC) guarantees defined benefit pensioners against the failure of the firm to honor its pension obligations.
- The Federal National Mortgage Association (Fannie Mae) and the Federal Home Loan and Mortgage Corporation (Freddie Mac) buy mortgages that meet certain characteristics and resell them with a government-supported guarantee against default by the borrower.
- The federal government assumes the credit risk for most student loans.

As a result of the financial crisis, the United States government significantly increased its explicit exposure to credit risk, with Fannie Mae and Freddie Mac providing the most prominent example.* In 2010, traditional government debt outstanding was about  \$13.5 trillion. In addition, direct loans and guarantees were about\$ 2.3 trillion, debt of Fannie Mae and Freddie Mac was about \$5 trillion, the FDIC insured about \$5.8 trillion in deposits, and the PBGC insured funds with liabilities in the vicinity of 2.8 trillion (a 2007 estimate) (Lucas, 2011).

All told, the government has about 160 programs providing direct loans and loan guarantees (Office of Management and Budget, 2012). The accounting for these various programs is complex (Lucas, 2010), and it seems unlikely that government decision makers are fully aware of their true costs. Lucas and McDonald (2006, 2010) show, in the context of Fannie Mae and Freddie Mac, how a Merton approach could be used to provide estimates of the cost.

*To be precise, the government guarantees that Fannie Mae and Freddie Mac will have positive net worth, and thus remain able to meet their debt obligations (Jickling, 2008).

is a specific kind of structure used in securitizations. The regulatory definition of an ABS states in part that an ABS is "a security that is primarily serviced by the cash flows of a discrete pool of receivables or other financial assets, either fixed or revolving, that by their terms convert into cash within a finite time period."18 In practice, the term "mortgage-backed security" (MBS) is used to refer to securitized mortgages, while ABS is used to refer to other kinds of securitized assets. The term structured finance is used generally to refer to the creation of new claims from existing assets. The box on the next page discusses the role of structured finance in the financial crisis.

When an asset pool is securitized, the cash flows can be passed directly through to investors, in which case the structure is a pass-through. An alternative is to reapportion the returns on the asset pool in such a way that different claims to the asset pool have differing priorities with respect to the cash flows. Such a structure is said to be tranched. Many

# Box 4: Structured Finance and the Financial Crisis

At the end of 1995, there was  \$257 billion of ABSs and\$ 2.35 trillion of mortgage-related securities outstanding. ABSs and mortgage-related debt constituted about 23\% of total outstanding debt in the United States (see sifma.org for data). By the end of 2007, there was \$2.95 trillion of ABS and \$8.16 trillion of mortgage-related debt, with the two categories constituting 34.6\% of outstanding debt. This relative growth of structured products was fueled by the real estate boom and facilitated by credit rating agencies giving high ratings to new structured products.

The end result was that ABS and mortgage-related debt played a central role in the financial crisis. Many of the structured offerings were held by financial institutions: Benmelech and Dlugosz (2010) show that as of October 2008, financial institutions worldwide had reported 218 billion of writedowns related to ABS CDOs, with another 300 billion related to other products, including residential mortgage-backed securities.

These writedowns and losses were reflected in credit downgrades of these products. During the crisis there were significant downgrades of triple-A rated ABSs, CDOs, and similar products. Benmelech and Dlugosz (2010) find that between 1983 and 2008,  $19\%$  of products suffering a ratings downgrade of eight notches or more had originally had a rating of Aaa. (A downgrade from Aaa to Aa3, for example, would be three notches, bypassing Aa1 and Aa2.) Most such downgrades occurred in 2007 and 2008. The failure of so many highly rated structures led to widespread criticism of the credit rating agencies, and also to the new Dodd-Frank rules pertaining to credit rating agencies.

securitized structures have some degree of tranching. Our focus in this section will be on the effect of tranching.

# Collateralized Debt Obligations

A collateralized debt obligation (CDO) is a financial structure that repackages the cash flows from a set of assets. You create a CDO by acquiring an asset pool and issuing tranched financial claims to finance the pool. The tranching makes it possible to take a pool of low-rated assets and create some tranches that are highly rated. Of course, the total risk of the pool is preserved, so other tranches will have low ratings. It is common for ABSs to be tranched, but for consistency we will refer to any tranched claim as a CDO.[19]

Given this general description, there are many different ways a CDO can be structured. First, the asset pool can be a fixed set of assets, in which case the CDO is static. If instead a manager buys and sells assets during the life of the CDO, it is managed. Second, the CDO claims can directly receive the cash flows generated by the pool assets; this is a cash flow CDO. Alternatively, the CDO claims can receive payments based on cash flows and the gain or loss from asset sales; this is a market value CDO. Finally, a CDO can be created using credit default swaps or other unfunded claims; this is called a synthetic CDO.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/5400a6cb1e78777de201bdee3430c96f47e7266a7ef4692a1e4e93ce7d29f9fd.jpg)

There are at least two reasons for creating CDOs. First, financial institutions will sometimes want to securitize assets, effectively removing them from the institution's balance sheet by selling them to other investors.[20] A CDO can be used to accomplish this, in which case it is a balance sheet CDO. Second, a CDO can be created in response to institutional frictions. For example, some investors are permitted to hold only investment-grade bonds. As we will see below, CDOs can potentially be used to create investment-grade bonds from a pool of non-investment-grade bonds. This is called an arbitrage CDO.

A CDO with Independent Defaults. We will illustrate CDOs with a simple example. Suppose that there are three risky, speculative-grade bonds that each promise to pay \$100 in 1 year. Defaults, which occur with a risk-neutral probability of  $10\%$ , are independent, and occur only at maturity of the bond. Each bond has a  $40\%$  recovery rate, and the risk-free rate is  $6\%$ . Using equation (2), the price of each bond is

$$ e ^ {- 0. 0 6} \left[ (1 - 0. 1) \times \$ 1 0 0 + 0. 1 \times \$ 4 0 \right] = \$ 8 8. 5 2 6

$$

The yield on each bond is  $\ln (100 / 88.526) = 0.1219$ .

Now suppose that among investors wishing to invest in bonds, some are happy to hold a speculative-grade bond, while others seek safer bonds. We can accommodate the different kinds of investors by creating a CDO to rearrange the cash flows from a pool of bonds. The structure of the CDO is illustrated in Figure 5. The total promised payoff on the three bonds is 300; the CDO apportions this payoff among three tranches of unequal size. The senior

TABLE 6
Pricing of CDO in Figure 5, assuming that bond defaults are uncorrelated. Promised payoffs to the bonds are  \$140 (senior),\$ 90 (mezzanine), and 70 (equity).

<table><tr><td rowspan="2">Number of Defaults</td><td rowspan="2">Total Probability</td><td rowspan="2">Payoff</td><td colspan="3">Bond Payoff</td></tr><tr><td>Senior</td><td>Mezzanine</td><td>Equity</td></tr><tr><td>0</td><td>0.729</td><td>300</td><td>140</td><td>90</td><td>70</td></tr><tr><td>1</td><td>0.243</td><td>240</td><td>140</td><td>90</td><td>10</td></tr><tr><td>2</td><td>0.027</td><td>180</td><td>140</td><td>40</td><td>0</td></tr><tr><td>3</td><td>0.001</td><td>120</td><td>120</td><td>0</td><td>0</td></tr><tr><td>Price</td><td></td><td></td><td>131.828</td><td>83.403</td><td>50.347</td></tr><tr><td>Yield</td><td></td><td></td><td>6.010\%</td><td>7.61\%</td><td>32.96\%</td></tr><tr><td>Default probability</td><td></td><td></td><td>0.0010</td><td>0.0280</td><td>0.2710</td></tr><tr><td>Average recovery rate</td><td></td><td></td><td>85.71\%</td><td>42.86\%</td><td>12.81\%</td></tr></table> tranche (140) receives first claim to the bond payments, the mezzanine tranche (90) has the next claim, and the equity tranche (70) receives whatever is left. For the bond that is ith in line, with a promised payment of \bar{B}_i, the payoff is


$$

\text {B o n d} i \text {m a t u r i t y p a y o f f} = \min  \left[ \max  \left(A _ {T} - \sum_ {j = 1} ^ {i - 1} \bar {B} _ {j}, 0\right), \bar {B} _ {i} \right] \tag {16}

$$ where  $A_{T}$  is the maturity value of the asset pool.

To understand the pricing of the CDO claims, recognize that there are four possible outcomes: no defaults  $(0.90^{3} = 72.9\%$  probability), one bond defaults  $(3 \times 0.90^{2} \times 0.10 = 24.3\%$  probability), two bonds default  $(3 \times 0.90 \times 0.10^{2} = 2.71\%$  probability), and three bonds default  $(0.10^{3} = 0.1\%$  probability). To compute the price of a CDO tranche, we can compute the expected payoff of the tranche using the risk-neutral default probabilities.

The CDO pricing is illustrated in Table 6. Note that the senior tranche is almost risk-free. The only time the senior tranche is not fully paid is in the unlikely (0.1\% probability) event that all three bonds default. In that case, the senior tranche receives  \$120, a recovery rate of 85.7\%$ . Since it is almost paid in full, investors will pay 131.828 for the senior tranche, which is a yield of  $6.02\%$ .

The mezzanine tranche is fully paid if there is one default, but it is not fully paid if there are two or three defaults. The yield is  $7.61\%$  and the average recovery rate is  $40 / 90 \times 0.027 / 0.028 = 0.4285$ . Finally, the equity tranche receives less than full payment if there are any defaults. Consequently, it is priced to yield  $32.96\%$ . Note that the sum of the prices of the three tranches is 265.58. As you would expect, this is the same as the price of the three bonds put into the asset pool.

A CDO with Correlated Defaults. In the preceding example we assumed that the bonds were uncorrelated. This is an important assumption. To illustrate the effects of correlation,

TABLE 7

Pricing of CDO in Figure 5, assuming that bond defaults are perfectly correlated. Promised payoffs to the bonds are  \$140 (senior),\$ 90 (mezzanine), and 70 (equity).

<table><tr><td rowspan="2">Number of Defaults</td><td rowspan="2">Total Probability</td><td rowspan="2">Payoff</td><td colspan="3">Bond Payoff</td></tr><tr><td>Senior</td><td>Mezzanine</td><td>Equity</td></tr><tr><td>0</td><td>0.9</td><td>300</td><td>140</td><td>90</td><td>70</td></tr><tr><td>1</td><td>0</td><td>240</td><td>140</td><td>90</td><td>10</td></tr><tr><td>2</td><td>0</td><td>180</td><td>140</td><td>40</td><td>0</td></tr><tr><td>3</td><td>0.1</td><td>120</td><td>120</td><td>0</td><td>0</td></tr><tr><td>Price</td><td></td><td></td><td>129.963</td><td>76.283</td><td>59.331</td></tr><tr><td>Yield</td><td></td><td></td><td>7.4\%</td><td>16.5\%</td><td>16.5\%</td></tr><tr><td>Default probability</td><td></td><td></td><td>0.1</td><td>0.1</td><td>0.1</td></tr><tr><td>Average recovery rate</td><td></td><td></td><td>85.71\%</td><td>0</td><td>0</td></tr></table>

Table 7 shows how the CDO tranches are priced if the bonds are perfectly correlated—i.e., if at maturity, either all firms default or none do. A comparison of Tables 6 and 7 shows the importance of default correlation in the pricing of CDOs.

Given the structure of the CDO and the assumptions about the recovery rate, with perfect correlation of defaults, the mezzanine and equity tranches have the same yield. The senior tranche becomes riskier because the probability of three defaults—the only circumstance in which the senior tranche is not fully paid—is greater.

Suppose you had created a CDO where the tranches were priced and issued assuming zero correlation among the underlying assets, and then the market price of the tranches reflected an increase in correlations. You can see the effect by comparing the prices in Table 6 with that in Table 7. The senior and mezzanine tranches lose value, while the equity tranche increases in value. This is essentially what happened to many real estate-based CDOs during the period from 2006 to 2008, as it became apparent that the decline in real estate prices would be widespread rather than isolated to particular markets. Perceived correlations had increased.

Synthetic CDOs. A standard ABS or CDO is constructed by placing assets within a legal structure such as a trust or special purpose vehicle, which is funded by issuing tranched securities. If you own a tranche, you have a funded position. If you borrow to buy the tranche, you have a leveraged position in the tranche, which is equivalent to an unfunded position.

It is also possible to create a derivative that has the same payoff as an unfunded tranche position. This is called a synthetic CDO. Figure 4 illustrates tranched CDX, which is an example of a synthetic CDO. The holder of tranched CDX has a return depending upon the default experience of the names in the index, just as with a CDO.

The advantage of a synthetic CDO is that it is not necessary to create a physical position in assets. A disadvantage is that a synthetic position may have additional credit risk.

# CDO-Squareds

A CDO-squared is a CDO comprised of CDOs.[21] Such a structure pools claims from the risky tranches of multiple CDOs and thereby creates a new CDO, the senior tranche of which can again (under certain assumptions) be highly rated.

A primary purpose of creating a CDO-squared is to transform low-rated bonds (e.g., mezzanine bonds) into highly rated bonds through pooling and tranching. Intuitively, this can only work if the risks in the different mezzanine bonds can be diversified by pooling. Moreover, if the CDO-squared is constructed under the belief that diversification is possible, and correlations then increase, you would expect the CDO-squared to suffer significant losses in all tranches, but primarily in the tranche that benefitted the most from diversification—namely, the senior tranche. (As a point of comparison, you can see from Tables 6 and 7 that the mezzanine tranche in the parent CDO is most harmed by an increase in correlation. The equity tranche benefits.) The box on the next page discusses several famous transactions in which CDOs were created from branched securities.

We will examine the workings of a CDO-squared by building on the example in Table 6. We will see that the CDO-squared is more sensitive to a change in the assumed correlation than is the original CDO.

Suppose there are multiple CDOs consisting of three bonds, each with three tranches, as in Table 6. Consider creating a new CDO consisting of three mezzanine bonds, one from each of three CDOs. This structure is illustrated in Figure 6. For this new CDO, the par value of the three mezzanine bonds is  \$270, so we will issue senior, mezzanine, and equity tranches with par values of$ 150, $80, and \$40.

In Table 6, each of the existing mezzanine bonds has three possible payoffs: a full payoff of  \$90 (if the number of defaults in the originating CDO is zero or one), a partial payoff of\$ 40 (if there are two defaults), and a payoff of zero (if there are three defaults). Thus, for the new CDO each of the three bonds can make one of three payments, so there are 27 possible payoff states with 10 distinct asset values at maturity.

Table 8 presents the payoffs and associated probabilities for the CDO-squared. To understand the table, consider the second row, in which two of the three underlying mezzanine bonds pay in full, while one defaults. From Table 6, the total probability of exactly one full default is the probability of two full payments (which happens with zero or one default in the underlying CDO) times the probability of one zero payment (which happens with three defaults in the underlying CDO), and there are three ways this can happen. Thus, we have  $(0.729 + 0.243)^{2} \times 0.001 \times 3 = 0.00283$  as the probability in the second row. The payment in this case is  $180$ , which is apportioned across the three tranches using strict priority. Because there are 10 distinct outcomes, Table 8 is more complex than Table 6, but the logic is the same.

Table 9 presents the analysis for the case when the default correlation for the original bonds is 1 instead of 0. In this case, either no bonds default or all bonds default. With the original CDO, we saw in Table 7 that an increase in correlation harms the senior and mezzanine tranches, and increases the value of the equity tranche. The values of the underlying bonds do not change and the market value of the entire CDO does not change.

# BOX 5: Abacus and Magnetar

Publicly available data is scarce for the CDO and ABS markets. The transactions are complicated and difficult to document, but anecdotes have come to light as a result of regulatory action and investigative reporting. Two notable cases both hinge on the question of whether the party selecting assets for a CDO was simultaneously betting against it.

In 2010 the SEC brought a complaint against Goldman Sachs for a CDO named Abacus (U.S. Securities and Exchange Commission, 2010). According to the complaint, hedge fund manager John Paulson, who wished to bet against particular BBB-rated RMBS tranches, was permitted to help pick the specific securities that went into the deal. Abacus was structured as a synthetic CDO, so the investors in Abacus effectively sold a credit default swap with Paulson as counterparty. The transaction amounted to a bet between the two parties about the return on the assets. Paulson eventually earned  \$1 billion. Goldman ultimately settled the case, paying\$ 550 million to the SEC. The Goldman employee in charge of Abacus was Fabrice Tourre, who was famously quoted in the SEC complaint: "More and more leverage in the system[ … ] The whole building is about to collapse anytime now … Only potential survivor, the fabulous Fab[rice Tourre] … standing in the middle of all these complex, highly lever aged, exotic trades he created without necessarily understanding all of the implications of those monstruosities[sic]!!!

Eisinger and Bernstein (2010) reported extensively on the actions of a hedge fund named Magnetar, which profited during the crisis by again betting against CDOs. According to the articles, one twist is that Magnetar bought the equity tranches of CDOs, which facilitated their creation, and then bet against more senior tranches using credit default swaps. One CDO that Magnetar supposedly helped create was titled "Squared," as it consisted of tranches of other CDOs in which Magnetar had been involved. In a further twist, Magnetar in 2007 bundled its equity CDO positions and sold these as a new CDO, Tigris. Both Standard and Poor's and Fitch gave portions of Tigris a triple-A rating, but Moody's refused to rate it. Magnetar reportedly sold its interest for 450 million. Less than a year later, the CDO defaulted. Magnetar's activities came to light because of Pro Publica's reporting, but in May 2012, the Wall Street Journal reported that the SEC was investigating Magnetar (Eaglesham, 2012). The Journal reported that the SEC was investigating the same issue that arose with Abacus: Did Magnetar have inappropriate influence in selecting assets in certain CDOs?

With the CDO-squared, when correlation increases the value of the underlying mezzanine bonds declines, so the entire CDO is worth less. In addition, while all tranches decline in value—all are priced to yield  $16.53\%$ —the equity tranche has the lowest percentage decline. Thus, the CDO-squared has different sensitivity to correlation than does the original CDO.

Many CDOs are constructed from ABS and MBS bonds that are tranched, so in practice these CDOs resemble the CDO-squared in this example. Given this, it is no surprise that investors holding senior CDO tranches during the financial crisis suffered significant losses as housing prices fell nationwide.

# FIGURE 6

Structure of a CDO-squared, created by pooling and tranching mezzanine bonds from CDOs A, B, and C.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/27589d02cb88836a5c61eda7c496557b9d8954137365be47b721a1806a25336e.jpg)

# Nth to default baskets

CDOs provide a means of pooling risky bonds to create claims with more and less risk than the pool. A particular variant of this strategy is the Nth to default basket.

Consider a CDO that contains equal quantities of  $N$  bonds. Over the life of the CDO there can be anywhere between 0 and  $N$  defaults. It is possible to create tranches where particular bondholders bear the consequences of a particular default.

The owner of the first-to-default tranche bears the most risk: If any of the bonds in the asset pool default, the first-to-default owner bears the loss from this default. The owner of the last-to-default generally bears the least risk, since all bonds must default in order for this claim to bear a loss.

Table 10 shows the pricing that results from this structure, assuming that the defaults are uncorrelated and occur only at time  $T$ . By comparing Table 10 with Table 6, you can observe a similarity between the equity tranche and the first-to-default on the one hand, and on the other, the senior tranche and the third-to-default.

Possible payoffs for a CDO constructed from mezzanine CDOs from Table 6, assuming that defaults on the underlying asset are uncorrelated. The count column is the number of events corresponding to the configuration of defaults, and the probability column is the total probability of this payoff.

TABLE 8

<table><tr><td colspan="3">Mezzanine Bond Payoff</td><td></td><td></td><td></td><td colspan="3">Tranche</td></tr><tr><td>$90</td><td>$40</td><td>0</td><td>Count</td><td>Assets</td><td>Probability</td><td>Senior</td><td>Mezzanine</td><td>Equity</td></tr><tr><td>3</td><td>0</td><td>0</td><td>1</td><td>270</td><td>0.91833</td><td>150</td><td>80</td><td>40</td></tr><tr><td>2</td><td>0</td><td>1</td><td>3</td><td>180</td><td>0.00283</td><td>150</td><td>30</td><td>0</td></tr><tr><td>1</td><td>0</td><td>2</td><td>3</td><td>90</td><td>0.00000</td><td>90</td><td>0</td><td>0</td></tr><tr><td>0</td><td>0</td><td>3</td><td>1</td><td>0</td><td>0.00000</td><td>0</td><td>0</td><td>0</td></tr><tr><td>2</td><td>1</td><td>0</td><td>3</td><td>220</td><td>0.07653</td><td>150</td><td>70</td><td>0</td></tr><tr><td>1</td><td>1</td><td>1</td><td>6</td><td>130</td><td>0.00016</td><td>130</td><td>0</td><td>0</td></tr><tr><td>0</td><td>1</td><td>2</td><td>3</td><td>40</td><td>0.00000</td><td>40</td><td>0</td><td>0</td></tr><tr><td>1</td><td>2</td><td>0</td><td>3</td><td>170</td><td>0.00213</td><td>150</td><td>20</td><td>0</td></tr><tr><td>0</td><td>2</td><td>1</td><td>3</td><td>80</td><td>0.00000</td><td>80</td><td>0</td><td>0</td></tr><tr><td>0</td><td>3</td><td>0</td><td>1</td><td>120</td><td>0.00002</td><td>120</td><td>0</td><td>0</td></tr><tr><td>Price</td><td></td><td></td><td></td><td></td><td></td><td>141.26</td><td>74.35</td><td>34.59</td></tr><tr><td>Yield</td><td></td><td></td><td></td><td></td><td></td><td>6.003\%</td><td>7.320\%</td><td>14.520\%</td></tr><tr><td>Default probability</td><td></td><td></td><td></td><td></td><td></td><td>0.0002</td><td>0.0817</td><td>0.0817</td></tr><tr><td>Average recovery rate</td><td></td><td></td><td></td><td></td><td></td><td>85.09\%</td><td>83.94\%</td><td>0</td></tr></table>

Figure 7 illustrates the pricing of  $N$ th to default bonds for a 10-bond pool assuming default correlations of 0, 0.25, and 1.[22] Again, we assume defaults occur only at time  $T$ . The result for a default correlation of 1 is like that in Table 11: When one bond defaults, all bonds default, so all claims have the same yield. The graphs for correlations of 0 and 0.25 show

TABLE 9

Possible payoffs for a CDO constructed from mezzanine CDOs from Table 7, assuming that defaults on the underlying asset are perfectly correlated. Column headings have the same meaning as in Table 8.

<table><tr><td colspan="3">Mezzanine Bond Payoff</td><td></td><td></td><td></td><td colspan="3">Tranche</td></tr><tr><td>$90</td><td>$40</td><td>0</td><td>Count</td><td>Assets</td><td>Probability</td><td>Senior</td><td>Mezzanine</td><td>Equity</td></tr><tr><td>3</td><td>0</td><td>0</td><td>1</td><td>270</td><td>0.90</td><td>150</td><td>80</td><td>40</td></tr><tr><td>0</td><td>0</td><td>3</td><td>1</td><td>0</td><td>0.10</td><td>0</td><td>0</td><td>0</td></tr><tr><td>Price</td><td></td><td></td><td></td><td></td><td></td><td>127.14</td><td>67.81</td><td>33.90</td></tr><tr><td>Yield</td><td></td><td></td><td></td><td></td><td></td><td>16.53\%</td><td>16.53\%</td><td>16.53\%</td></tr><tr><td>Default probability</td><td></td><td></td><td></td><td></td><td></td><td>0.10</td><td>0.10</td><td>0.10</td></tr><tr><td>Average recovery rate</td><td></td><td></td><td></td><td></td><td></td><td>0</td><td>0</td><td>0</td></tr></table>

TABLE 10

Pricing of  $N$ th to default bonds. Assumes the bonds owned as assets have uncorrelated defaults.

<table><tr><td rowspan="2">Default</td><td rowspan="2">Probability</td><td rowspan="2">Probability N or More</td><td colspan="2">Payoffs</td><td colspan="3">Expected</td></tr><tr><td>Default</td><td>No Default</td><td>Payoff</td><td>Price</td><td>Yield</td></tr><tr><td>First</td><td>0.243</td><td>0.271</td><td>40</td><td>100</td><td>83.74</td><td>78.863</td><td>0.237</td></tr><tr><td>Second</td><td>0.027</td><td>0.028</td><td>40</td><td>100</td><td>98.32</td><td>92.594</td><td>0.077</td></tr><tr><td>Third</td><td>0.001</td><td>0.001</td><td>40</td><td>100</td><td>99.94</td><td>94.120</td><td>0.061</td></tr></table> significant differences for yields for low numbers of defaults. The first-to-default tranche, for example, has a yield of  $16.02\%$  when defaults are uncorrelated and  $13.51\%$  when the default correlation is 0.25. This again illustrates that  $N$ th to default baskets are a way to speculate on default correlations.

# CHAPTER SUMMARY

A party to a contract may fail to make a required future payment. The possibility of this event, which is called default, gives rise to credit risk. Credit risk is an important consideration in valuing corporate bonds, where two key inputs are the probability of default and the expected payoff to the bond if the firm does default. The Merton model uses option pricing to value debt subject to default. Some credit rating firms are designated by the SEC as Nationally Recognized Statistical Ratings Organizations (NRSROs). Credit agencies assign

# FIGURE 7

Pricing of an  $N$ th to default basket containing equal quantities of 10 bonds, each with a  $10\%$  probability of default.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/9beffed82a82be86f7e67a9a8dfa067c4f33694823b95a4f701fe11786bd6288.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/3f33d4b32936ba0a7bc17004feca9bfa9dfa05551c70286903269c40a87e980c.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/1d4e4f34941aaf633beb40057b40c3b25267a4be8f410386c573d73a10ff50bf.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/eb866eccf548f43ab5b74250d2537891b339900bb2fb1ac82d1f48a43f16a446.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/c266094d75afa5fb52dfb8c79d6ce4c7bf57b5729dd8633b97d7a4ef95cd79f6.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/b11a2bb483cf5a3ee29a2751f861530aeb28965b3e94f706633f4898938c19e3.jpg)

TABLE II

Pricing of  $N$ th to default bonds. Assumes the bonds owned as assets have perfectly correlated defaults.

<table><tr><td rowspan="2">Default</td><td rowspan="2">Probability</td><td rowspan="2">Probability N or More</td><td colspan="2">Payoffs</td><td colspan="3">Expected</td></tr><tr><td>Default</td><td>No Default</td><td>Payoff</td><td>Price</td><td>Yield</td></tr><tr><td>First</td><td>0.100</td><td>0.100</td><td>40</td><td>100</td><td>94.000</td><td>88.526</td><td>0.122</td></tr><tr><td>Second</td><td>0.100</td><td>0.100</td><td>40</td><td>100</td><td>94.000</td><td>88.526</td><td>0.122</td></tr><tr><td>Third</td><td>0.100</td><td>0.100</td><td>40</td><td>100</td><td>94.000</td><td>88.526</td><td>0.122</td></tr></table> debt ratings to firms; these are designed to measure the probability of bankruptcy in the future.

There are various financial vehicles that permit the trading of credit risk. A single-name credit default swap pays to the protection buyer the loss on a corporate or government bond when there is a credit event. In exchange, the protection buyer makes a periodic premium payment to the seller. There are also credit default swap indices, which are credit default swaps on a basket of names.

Collateralized debt obligations (CDOs) are claims to an asset pool. The claims are often structured (tranched) so as to create new claims, some of which are more and some of which are less sensitive to credit risk than the pool as a whole. The value of these claims depends importantly on the default correlation of the assets in the pool. It is possible to create a CDO in which the underlying assets are CDO tranches. Such a doubly tranched structure could be called a CDO-squared (although in practice, claims called CDO-squared are triply tranched).

# FURTHER READING

Both the actual traded credit contracts and pricing theory continue to evolve. Books with a practitioner perspective include Goodman and Fabozzi (2002) and Tavakoli (2001). Duffie (1999) discusses the pricing of credit default swaps. Frameworks for analyzing credit risk are discussed in Credit Suisse Financial Products (1997), J.P. Morgan (1997), Kealhofer (2003a), Kealhofer (2003b), and white papers on the Moody's KMV website, www.moodyskmv.com. A debate between advocates and critics of the KMV approach is in the February 2002 issue of Risk (Kealhofer and Kurbat, 2002; Sobehart and Keenan, 2002).

Books with a more academic and theoretical perspective include Cossin and Pirotte (2001), Duffie and Singleton (2003), Meissner (2005), and Schonbucher (2003). Duffie and Yurday (2004a, 2004b) provide a blended discussion of the history of some of the products, practical issues, and pricing models. Papers examining Merton-style models include Jones et al. (1984), Kim et al. (1993), Leland (1994), Leland and Toft (1996), and Longstaff and Schwartz (1995). Empirical studies of Merton-style models include Anderson and Sundaresan (2000), Bharath and Shumway (2004), and Eom et al. (2004). Shumway (2001) estimates hazard models of bankruptcy. Johnson and Stulz (1987), Hull and White (1995), and Klein (1996) consider how it affects prices of derivatives.

Gorton (2010) provides a valuable, detailed look at the functioning of the banking system before and during the crisis, including a look at structured products. Benmelech and Dlugosz (2010) and Benmelech and Dlugosz (2009) examine CDOs.

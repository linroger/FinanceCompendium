
# Capital Asset Pricing Models

Abstract: Risk-return analysis in finance is a "normative" theory: It does not purport to describe, rather it offers advice. Specifically, it offers advice to an investor regarding how to manage a portfolio of securities. The investor may be an institution, such as a pension fund or endowment; or it may be an asset management firm with multiple portfolios to manage (e.g., managing various mutual funds and funds for institutional clients). The focus of risk-return analysis is on advice for each individual portfolio. This contrasts with capital asset pricing models, which are hypotheses concerning capital markets as a whole. They are "positive" models, that is, they are hypotheses about that which is—as opposed to "normative" models, which advise on what should be or, more precisely, advise on what an investor should do.

# INTRODUCTION

Asset pricing theory seeks to explain how the price or value of a claim from ownership of a financial asset is determined. The pricing or valuation of an asset must take into account the timing of the payments expected to be received and the risk associated with receiving the expected payments. The major challenge in asset pricing theory is often not the timing issue but the treatment of risk. The formulation of an asset pricing theory that has empirically proven to have good predictive value offers investors the opportunity to capitalize on mispriced assets. Moreover, the theory provides investors with a tool for pricing new financial instruments and nonpublicly traded assets.

Cochrane (2001) suggests two popular approaches to asset pricing: absolute pricing and relative pricing. The absolute pricing approach seeks to price an asset by reference to its exposure to fundamental macroeconomic risk. An example of an absolute pricing approach is the consumption-based capital asset pricing model (CAPM) formulated by Breeden (1979). In contrast, the relative pricing approach seeks to value an asset based only on the prices of other assets without reliance on the exposure of the asset to the various sources of macroeconomic factors. The well-known option pricing model formulated by Black and Scholes (1973) is an example of an asset pricing model that employs the relative pricing approach.


Most asset pricing models used in practice today are the result of a blend of both approaches. Capital asset pricing models (CAPM), the subject of this entry, are an example. The CAPM starts as an absolute pricing model but then, as will be explained, prices assets relative to the market. There is no attempt in the CAPM to determine how the market risk premium or the risk factor is determined in an economy.


In this entry, we focus on the basic CAPM first formulated in the 1960s by several academicians. There have been numerous extensions of the basic CAPM that have been proposed in the decades that followed but these will not be covered in this entry. However, because there is considerable confusion regarding certain aspects of the theory, in addition to describing the basic CAPM in this entry we explain the sources of the confusion and their implications.

# SHARPE-LINTNER CAPM

The first CAPM was that of Sharpe (1964) and Lintner (1965). The Sharpe-Lintner CAPM (SL-CAPM) assumes the following:

- All investors have the same beliefs concerning security returns.
- All investors have mean-variance efficient portfolios.
- All investors can lend all they have or can borrow all they want at the same risk-free interest rate that the U.S. federal government pays to borrow money.

By the mean it is meant the expected value of the return of a security or portfolio. Thus, throughout this entry, we use the terms "mean return" and "expected return" interchangeably. By variance, we mean the variance of the returns of a security or portfolio. This is the square of the standard deviation, the most commonly used measure in statistics to quantify the dispersion of the possible outcomes of some random variable. Standard deviation is the more intuitively meaningful measure: Most of any probability distribution is between its mean mi nus two standard deviations and mean plus two distributions. It is not true that most of a distribution is between the mean and plus or minus two variances, or any other number of variances. While standard deviation is the more intuitive measure, formulas are more conveniently expressed in terms of variance. One can most easily compute the variance of a portfolio and then take its square root to obtain its standard deviation.


By mean-variance efficient portfolios, we mean that of all the possible portfolios that can be created from all of the securities in the market, the ones that have highest mean for a given variance.

The two major conclusions of the SL-CAPM are:

CAPM Conclusion 1. The market portfolio is a mean-variance efficient portfolio.

CAPM Conclusion 2. The difference between the expected return and the risk-free interest rate, referred to as the excess return, of each security is proportional to its beta.

The "market portfolio" includes all securities in the market. The composition of the portfolio is such that the sum of the weights allocated to all the securities is equal to one. That is, denoting  $X_{i}^{M}$  as the percentage of security  $i$  in the market portfolio (denoted by  $M$ ), then

$$
\sum_ {i = 1} ^ {n} X _ {i} ^ {M} = 1 \tag {1}
$$

Each holding of a security is proportional to its part of the total market capitalization. That is,

$$
X _ {i} ^ {M} = \frac {\text {M a r k e t v a l u e o f} i - \text {t h s e c u r i t y}}{\text {T o t a l m a r k e t v a l u e o f a l l s e c u r i t i e s}} \tag {2}
$$

CAPM Conclusion 1 is that this "market portfolio" is on the mean-variance efficient frontier.

Let  $r_i$  stand for the return on the  $i$ -th security during some period. The return on the market portfolio then is


$$ r ^ {M} = \sum_ {i = 1} ^ {n} X _ {i} ^ {M} r _ {i} \tag {3}
$$

The beta  $(\beta)$  referred to in CAPM Conclusion 2 can be estimated using regression analysis from historical data on observed returns for a security and observed returns for the market. In this regression analysis, security return is the "dependent variable" and market return is the "independent variable." However, the beta produced by this analysis should be interpreted as a measure of association rather than causation. That is, it is a measure of the extent that the two quantities move up and down together, not as the so-called "independent variable" causing the level of the "dependent variable." Below we examine why there is this association (not causation) in CAPM between security returns and market return.

The excess return, denoted by  $e_i$ , is the difference between the security's expected return,  $E(r_i)$ , and the risk-free interest rate,  $r_f$ , at which all investors are assumed to lend or borrow:

$$ e _ {i} = E \left(r _ {i}\right) - r _ {f} \tag {4}
$$

CAPM Conclusion 2 is that the excess return for security  $i$  is proportional to its  $\beta$ . That is, letting  $k$  be a constant then

$$ e _ {i} = k \beta_ {i} \quad i = 1, \dots , n \tag {5}
$$

It can also be shown that equation (5) applies to portfolios as well as individual securities. Thus in an SL-CAPM world, each security and portfolio has an excess return that is proportional to the regression of the security or portfolio's return against the return of the market portfolio.

# ROY CAPM

A second CAPM, which appeared shortly after that of the writings of Sharpe and Lintner, differs from the SL-CAPM only in its assumption concerning the investment constraint imposed by investors. More specifically, it assumes that each investor  $(I)$  can choose any portfolio that satisfies


$$
\sum_ {i = 1} ^ {n} X _ {i} ^ {I} = 1 \tag {6}
$$ without regard to the sign of the variables. Positive  $X_{i}^{I}$  is interpreted as a long position in a security while a negative  $X_{i}^{I}$  is interpreted as a short position in a security.


However, a negative  $X_{i}^{I}$  is far from a realistic model of real-world constraints on shorting. For example, equation (6) would consider feasible a portfolio with

$$
\begin{array}{l} X _ {1} = - 1, 0 0 0 \\ X _ {2} = 1, 0 0 1 \\ X _ {i} = 0 \quad i = 3, \dots , n \\ \end{array}
$$ since the above sums to one. This would correspond to an investor depositing  \$1,000 with a broker; shorting\$ 1,000,000 of stock 1; then using the proceeds of the sale, plus the \$1,000 deposited with the broker to buy \$1,001,000 worth of stock 2. In fact, in this example, Treasury Regulation T (Reg T) would require that the sum of long positions, plus the value of the stocks sold short, not exceed 2,000.


Equation (6), as the only constraint on portfolio choice, was first proposed by Roy (1952), albeit not in a CAPM context. Since it is difficult to pin down who first used this constraint set in a CAPM (more than one did so almost simultaneously), we refer to this as the Roy CAPM as distinguished from the SL-CAPM.

# CONFUSIONS REGARDING THE CAPM

Probably no other part of financial theory has been subject to more confusion, by professionals and amateurs alike, than the CAPM. Major areas of confusion include the following:


Confusion 1. Failure to distinguish between the following two statements:

The market is efficient in that each participant has correct beliefs and uses them to their advantage.

and

The market portfolio is a mean-variance efficient portfolio.

Confusion 2. Belief that equation (5) shows that CAPM investors get paid for bearing "market risk." That this view—held almost universally until quite recently—is in error is easily demonstrated by examples in which securities have the same covariance structure but different excess returns.

Confusion 3. Failure to distinguish between the beta in Sharpe's one-factor model of covariance (see Sharpe, 1963) and that in Sharpe's CAPM.

The following sections present the assumptions and conclusions of the SL-CAPM and the Roy CAPM, and discuss the nature of these three historic sources of confusion, and their practical implications.

# TWO MEANINGS OF MARKET EFFICIENCY

CAPM is an elegant theory. With the aid of some simplifying assumptions, it reaches dramatic conclusions about practical matters. For example:

- How can an investor choose an efficient portfolio? The answer: Just buy the market.
- How can an investor forecast expected returns? The answer: Just forecast betas.
- How should an investor price a new security? The answer is once again: Forecast its beta.

CAPM's simplifying assumptions make it easier to deduce properties of market equilib- ria, which is like computing falling body trajectories while assuming there is no air. But, before betting the ranch that the feather and the brick will hit the ground at the same time, it is best to consider the implications of some of the omitted complexities. The present section mostly explores the implications of generalizing one of the CAPMs' simplifying assumptions.


Note the difference between the statement "The market is efficient," in the sense that market participants have accurate information and use it correctly to their benefit, and the statement "The market portfolio is a mean-variance efficient portfolio." Under some assumptions the two statements are equivalent. Specifically, if we assume:

Assumption 1. Transaction costs and other illiquidities can be ignored.

Assumption 2. All investors hold mean-variance efficient portfolios.

Assumption 3. All investors hold the same (correct) beliefs about means, variances, and covariances of securities.

Assumption 4. Every investor can lend all she or he has or can borrow all she or he wants at the risk-free interest rate.

Then based on these four assumptions we get CAPM Conclusion 1: The market portfolio is a mean-variance efficient portfolio. This CAPM conclusion also follows if Assumption 4 is replaced by the following assumption:

Assumption  $4^{\prime}$ . Equation (6) is the only constraint on the investor's choice of portfolio.

As noted earlier, a negative  $X_{i}$  is interpreted as a short position; but this is clearly a quite unrealistic model of real-world short constraints. Equation (6) would permit any investor to deposit \$1,000 with a broker, sell short \$1,000,000 worth of one security, and buy long 1,001,000 worth of another security.

In addition to CAPM Conclusion 1, Assumptions 1 through 4 imply CAPM Conclusion 2: In equilibrium, excess returns are proportional to betas, as in equation (5). This CAPM

Table 1 Expected Returns and Standard Deviations for Three Hypothetical Securitiesa

<table><tr><td>Security</td><td>Expected Return</td><td>Standard Deviation</td></tr><tr><td>1</td><td>0.15\%</td><td>0.18\%</td></tr><tr><td>2</td><td>0.10\%</td><td>0.12\%</td></tr><tr><td>3</td><td>0.20\%</td><td>0.30\%</td></tr></table>

${}^{a}$  Security returns are uncorrelated.

conclusion is the basis for the CAPM's prescriptions for risk adjustment and asset valuation.

Since a Roy CAPM world may or may not have a risk-free asset, Assumptions 1-3 plus Assumption  $4^{\prime}$  cannot imply CAPM Conclusion 2. These assumptions do, however, imply the following:

CAPM Conclusion  $2^{\prime}$ . Expected returns are a linear function of betas, that is, there are constants,  $a$  and  $b$ , such that

$$
E \left(r _ {i}\right) = a + b \beta_ {i} \quad i = 1, \dots , n \tag {7}
$$

Equation (5) of the SL-CAPM is the same as equation (7) of the Roy CAPM with  $a = r_f$ .

CAPM Conclusions 1 and 2 (or  $2^{\prime}$ ) do not follow from Assumptions 1, 2, and 3 if 4 (or Assumption  $4^{\prime}$ ) is replaced by a more realistic description of the investor's investment constraints. This is illustrated by an example with the expected returns and standard deviations given in Table 1. In this example, it is assumed that the returns are uncorrelated (but similar results occur with correlated returns). The example assumes that investors cannot sell short or borrow. The same results hold if investors can borrow limited amounts or can sell short but are subject to Reg T or a similar constraint.

Assumptions 1 through 3 are assumed in this example. Rather than Assumption 4 or Assumption  $4^{\prime}$ , the example assumes that the investor can choose any portfolio that meets the following constraints:

$$
X _ {1} + X _ {2} + X _ {3} = 1. 0 \tag {8a}
$$ and


$$
X _ {1} \geq 0, X _ {2} \geq 0, X _ {3} \geq 0 \tag {8b}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/7a1939457fd8fb60a2ffe5ddc89e5919cceec041c5927de5f8a241ac0fc5505a.jpg)
Figure 1 Example Illustrating That When Short Sales Are Not Allowed, the Market Portfolios Are Typically Not Mean-Variance Efficient

This is the "standard" portfolio selection constraint set presented in Markowitz (1952). It differs from the Roy constraint set in the inclusion of nonnegativity constraints, the inequalities given by (8b).

In Figure 1,  $X_{1}$  the fraction invested in Security 1—is plotted on the horizontal axis;  $X_{2}$  the fraction invested in Security 2—is plotted on the vertical axis; and  $X_{3}$  the fraction invested in the third security—is given implicitly by the relationship  $X_{3} = 1 - X_{1} - X_{2}$ . In the figure, the portfolio labeled "c" has smaller variance than any other portfolio that satisfies the equation (8a) constraint. In general, such a minimum-overall-variance portfolio may or may not satisfy the inequalities given by (8b) constraints. In other words, the minimum-overall-variance portfolio may or may not be feasible for the original Markowitz constraint set (Markowitz, 1952). In the present example it is. Results similar to those we illustrate here also typically hold when  $c$  is not feasible for the standard model.

The line  $\ell \ell^{\prime}$  connects all points (portfolios) that minimize variance, on the portfolio-as-a-whole, for various levels of portfolio expected return, subject to equation (8a), ignoring nonnegativity inequalities (8b). Using differential calculus, one can minimize a function such as

$$
V = \sum_ {i = 1} ^ {3} X _ {i} ^ {2} V _ {i} \tag {9a}
$$ subject to constraints


$$
\sum_ {i = 1} ^ {3} X _ {i} = 1 \tag {9b}
$$

$$
E _ {0} = \sum_ {i = 1} ^ {3} X _ {i} E \left(r _ {i}\right) \tag {9c}
$$

One can do so with the expected returns and standard deviations from Table 1, letting  $E_0$  vary, and thereby obtain the line in Figure 1. Moving downward and to the right on  $\ell \ell'$ , the portfolio expected return increases. This downward direction for increasing expected return does not always hold: It depends on the choice of security expected returns.

In the Roy model, every point in the figure is feasible since they all satisfy equation (6) or, equivalently, equation (8a). It follows that, in the Roy CAPM, all points on  $\ell \ell^{\prime}$ , from "c" downward in the direction of increasing  $E$ , are efficient. But in the standard model, including nonnegativity inequalities (8b), all points on  $\ell \ell^{\prime}$  below the point "b" are not feasible (since they have negative  $X_{2}$ ) and therefore cannot be efficient. In this example, when portfolio choice is subject to the standard constraint set, the set of efficient portfolios is the same as that of the Roy constraint set from portfolio  $c$  to portfolio  $b$ . After that, the set of efficient portfolios moves horizontally along the  $X_{1}$  axis, ending at point  $(0, 0)$ . This represents the portfolio with everything invested in Security 3, which has maximum expected return in the example.

Suppose that some investors select the cautious portfolio  $d$ , while the remainder selects the more aggressive portfolio  $e$ . The market portfolio  $M$  lies on the straight line that connects  $d$  and  $e$  (e.g., halfway between if both groups have equal amounts invested).

But  $M$  is not an efficient portfolio, either for the standard constraint set or for the Roy constraint set. Thus, even though all investors hold mean-variance efficient portfolios, the market portfolio is not mean-variance efficient!

# A Simple Market

Figure 1 demonstrates that if the expected returns and variances for our three hypothetical securities in Table 1 reflect equilibrium beliefs, then the market portfolio would not be a mean-variance efficient portfolio. But can these be equilibrium beliefs? Consider the following simple market: Inhabitants of an island live on coconuts and produce them from their own gardens. The island has three enterprises, namely, three coconut farms. Once a year, a stock market convenes to trade the shares of the three farms. Each year the resulting share prices turn out to be the same as those of preceding years. Thus the only source of uncertainty of return is the dividend each stock pays during the year, which is the stock's pro rata share of the farm's production. Markowitz (2005) shows that means, variances, and covariances of coconut production exist that imply the efficient set in Figure 1, or in any of the other three security-efficient sets presented in Markowitz (1952 and Chapter 7 in 1959) initial works.

With such probability distributions of returns, the market is rational in the sense that each participant knows the true probability distribution of returns, and each seeks and achieves mean-variance efficiency. Nevertheless, in contrast to the usual CAPM conclusion, the market portfolio is not an efficient portfolio. It also follows that there is no representative investor since no one wants to hold the market portfolio.

# Arbitrage

Suppose that most investors are subject to the nonnegativity requirement of inequalities (8b), but one investor can short in the CAPM sense. (Perhaps the CAPM investor has surreptitious access to a vault containing stock certificates that he or she can "borrow" temporarily without posting collateral.) Would this CAPM investor, with unlimited power to short and use the proceeds to buy long, arbitrage away the inefficiency in the market portfolio?

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/12b20b3fda90c6d3cf4386306cb9188353f6cea0c7148740badea6adf03773eb.jpg)
Figure 2 Illustration That an Investor Who Can Sell Short and Use the Proceeds to Buy Long Should Not Short an Inefficient Market

Figure 2 shows an investor would not do so. Suppose that portfolio  $P$  is the one most preferred by the Roy CAPM investor. If this investor shorts  $M$  and uses the proceeds to buy more  $P$ , then the resulting portfolio will be on the straight line connecting  $M$  and  $P$ —but this time on the far side of  $P$  (e.g., at  $Q$ ) rather than between  $M$  and  $P$ . But  $Q$  is not efficient for the Roy CAPM investor since it does not lie on the  $\ell \ell'$  line. The Roy CAPM investor is better off just holding  $P$  rather than shorting  $M$  to buy more  $P$ .

With market participants holding portfolios  $d$ ,  $e$ , and  $P$  and with the weighted average of the  $d$  and  $e$  investors being at  $M$ , the new market portfolio will be on the straight line between  $M$  and  $P$ , such as at  $M^a$ ,  $M^b$ , or  $M^c$  in Figure 3.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/ca9693d47aa1838ec4faedf28faac13b86e65fde22dc686e344c2b679937f260.jpg)
Figure 3 Illustration That the Presence of a CAPM Short Seller Does Not Make the Market Portfolio Efficient

$M^c$  cannot be the market equilibrium since this would imply a negative market value for Security 2. Similarly,  $M^b$  implies a zero market value for Security 2, therefore a zero price.

Thus the only points (portfolios) between  $M$  and  $P$  that are consistent with positive prices for all securities lie strictly between  $M$  and  $M^b$ , such as  $M^a$ ; but  $M^a$  is not efficient for the investors with either a standard or a Roy constraint set.

# Expected Returns and Betas

If Assumptions 1 through 4 (or Assumption  $4^{\prime}$ ) are true, then CAPM Conclusion  $2^{\prime}$  follows: Expected returns are linearly related to the betas of each security as in equation (7), that is,

$$
\begin{array}{l} E _ {1} = a + b \beta_ {1} \\ E _ {2} = a + b \beta_ {2} \\ E _ {3} = a + b \beta_ {3} \\ \end{array}
$$ where  $\beta i$  is the coefficient of the regression of the return on the  $i$ th security against the return on the market portfolio. In other words, all  $(E_i,\beta_i)$  combinations lie on the straight line


$$
Y = a + b X
$$

But equation (7) does not typically hold if Assumptions 1 through 3 are true but neither Assumption 4 nor Assumption  $4^{\prime}$  is also true, as illustrated using the data in Tables 2 and 3, and Figure 4. Table 2 shows the  $\beta_{i}$  for portfolio  $P$ ; Table 3 shows them for portfolio  $M$ . These betas are computed using the fact that the regression coefficient  $\beta_{s,r}$  of random variable  $s$  against a random variable  $r$  is

$$
\beta_ {s, r} = \frac {\operatorname {C o v a r i a n c e} (r , s)}{\operatorname {V a r i a n c e} (s)} \tag {10}
$$

Table 2 Betas versus Portfolio P

<table><tr><td>Security</td><td>Percent in P</td><td>covi,P = PiVi</td><td>betai,P</td></tr><tr><td>1</td><td>0.70\%</td><td>0.0227</td><td>0.52</td></tr><tr><td>2</td><td>-0.25</td><td>-0.0036</td><td>-0.08</td></tr><tr><td>3</td><td>0.55</td><td>0.0495</td><td>1.12</td></tr></table>

Note:  $\operatorname{var}\left( P\right)  = {0.0440};{\text{beta}}_{i,P} = {\operatorname{cov}}_{i,P}/\operatorname{var}\left( P\right)$  .

Table 3 Betas versus Portfolio  $M$

<table><tr><td>Security</td><td>Percent in M</td><td>covi,M=Miv</td><td>betai,M</td></tr><tr><td>1</td><td>0.30</td><td>0.0097</td><td>0.36</td></tr><tr><td>2</td><td>0.19</td><td>0.0027</td><td>0.10</td></tr><tr><td>3</td><td>0.51</td><td>0.0459</td><td>1.71</td></tr></table>

Note:  $\operatorname{var}(M) = 0.0268$ ;  $\operatorname{beta}_{i,M} = \operatorname{cov}_{i,M} / \operatorname{var}(M)$ .

Figure 4 shows the plot of these betas against the expected returns given in Table 1. The relationship between beta and expected return is linear for regressions against  $P$ , as implied by equation (7), but not against  $M$ . In general, expected returns are a linear function of betas if and only if the regressions are against a portfolio on the  $\ell \ell'$  line. (See Chapter 12 in Markowitz and Todd [2000].)

# Limited Borrowing

Thus far we have seen that the market portfolio is not necessarily an efficient portfolio, and there is usually no linear relationship between expected returns and betas (regressions against the market portfolio) if the SL-CAPM or Roy CAPM is replaced by the standard, Markowitz constraint set, constraints given by (8). Figure 5 illustrates that the same conclusions hold if borrowing and lending at a risk-free interest rate are permitted, but borrowing is limited, for example, to  $100\%$  of the equity in the portfolio. In Figure 5, Security 3 is the risk-free asset.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/c665f7a6ce13234e6f13012ee5e4aaea91c589cf68d0b33b2a48be7f91ac05bb.jpg)
Expected Return
Figure 4 Linear Relationship between Expected Returns and Betas If and Only If the Regression Is Against a Portfolio on the Line  $\ell \ell^{\prime}$  in Figure 1.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/ecec3485c5c5119621098a727084d0657e0e38223d6c4973d3b6c148530cdf75.jpg)
Figure 5 Illustration That If Borrowing Is Permitted but Limited, the Market Portfolio Is Still Typically Not an Efficient Portfolio

With  $100\%$  borrowing permitted, the set of feasible portfolios is no longer on and in the triangle with  $(0, 0)$ ,  $(1, 0)$ , and  $(0, 1)$  as its vertices. Rather, the feasible region is on and in the triangle whose vertices are  $(0, 0)$ ,  $(2, 0)$ , and  $(0, 2)$ . For example, the  $(2, 0)$  point represents the portfolio with  $200\%$  invested in Security 1.

In the SL-CAPM, the efficient set starts at the portfolio  $(0,0)$ , which holds only the risk-free asset. From there, the efficient set moves along a straight line in the first quadrant of Figure 5. In the SL-CAPM, this efficient line would continue in the same direction without limit. In the model with borrowing limited to at most  $100\%$  of equity, the ray extending from  $(0,0)$  is no longer feasible (therefore no longer efficient) when it crosses the line connecting  $(0,2)$  and  $(2,0)$ —at  $b$  in the figure. The efficient set then moves towards the leveraged portfolio with highest expected return:  $(2,0)$  in the present case. Thus in Figure 5 the set of efficient portfolios is the line segment connecting  $(0,0)$  to  $b$ , followed by the segment connecting  $b$  to  $(2,0)$ . As in our analysis using the standard constraint set, if some investors hold portfolio  $d$  and the remainder hold portfolio  $e$ , then the "market portfolio" will be between them (e.g., at  $M'$ ) and will not be an efficient portfolio.

We put "market portfolio" in quotes above because  $M'$  is a leveraged portfolio. In order to meet the definition of market portfolio in equation (1), so that the holdings in the market portfolio sum to one, we must rescale  $M'$ . This gives us the market portfolio (no quotation marks)  $M$ , which is also not an efficient portfolio.


Finally, as in the analysis of the standard case since  $M$  is not on the  $\ell \ell'$  line, there does not exist a linear relationship between expected returns and betas. Also, there is no "representative investor," since no investor wants to hold the market portfolio.

# Further Generalizations

Suppose that there are  $n$  securities (for  $n = 3$  or 30 or 3,000). Suppose that one security has the highest expected return, and that the  $n$  securities have a "nonsingular covariance matrix." This means that there is no riskless combination of risky securities. If the only constraint on the choice of portfolio is equation (6), then the portfolios that minimize portfolio variance  $V_{p}$  for various values of portfolio expected return  $E_{p}$  lie on a single straight line in  $n$ -dimensional portfolio space. This is not true for an investor also subject to nonnegativity constraints such as in the inequalities given by (8b).

The critical line algorithm (CLA) for tracing out all efficient portfolios begins with the portfolio that is  $100\%$  invested in the security with highest expected return (see Markowitz and Todd, 2000). It traces out the set of efficient portfolios in a series of iterations. Each iteration computes one piece (one linear segment) of the piecewise linear efficient set. Each successive segment has either one more or one less security than the preceding segment. If the universe consists of, say 10,000 securities, and if all securities are to be demanded by someone, then this universal efficient frontier must contain at least 10,000 segments. If investors have sufficiently diverse risk tolerances, they will choose portfolios on many different segments. The market portfolio is a weighted average of individual portfolios and typically will not be on any efficient segment.

This characterization of efficient sets remains true if limited borrowing is allowed, as we saw.

It also remains true when short selling is permitted but is subject to Reg T or a similar constraint (see Jacobs, Levy, and Markowitz, 2005).

# CAPM INVESTORS DO NOT GET PAID FOR BEARING RISK

Recall that if the SL-CAPM assumptions are made, then a stock's beta (regression against the market portfolio) is proportional to its excess return, as shown in equation (5). Markowitz shows that this does not imply that CAPM investors are paid to bear risk (see Markowitz, 2008).

This is most easily seen if we assume that risks are uncorrelated. (CAPM should cover this case, too.) In this case, we show that two securities can have the same variance but different expected returns, or the same expected returns and different variances. Therefore, it cannot be true that the investor is paid for bearing risk!

According to equation (10), the beta of  $r_i$  against  $r_M$  is

$$
\beta_ {i} = \frac {\operatorname {C o v a r i a n c e} \left(r _ {i} , r ^ {M}\right)}{\operatorname {V a r i a n c e} \left(r ^ {M}\right)}
$$

Therefore, equation (5) holds if and only if we also have

$$ e _ {i} = \tilde {b} \operatorname {c o v a r i a n c e} \left(r _ {i}, r ^ {M}\right) \tag {11}
$$ where


$$
\tilde {b} = b / \operatorname {V a r} \left(r ^ {M}\right)
$$

In other words, excess return is proportional to  $\beta_{i}$  if and only if it is proportional to the covariance between  $r_i$  and  $r^M$ .

As a calculus exercise one can show that, in the uncorrelated case, the SL-CAPM investor minimizes portfolio variance for given portfolio mean if and only if the investor chooses a portfolio such that

$$
V X _ {i} ^ {I} = k ^ {I} e _ {i} \tag {12a}
$$ where  $V_{i}$  is the variance of  $r_i$  and  $k^l$  depends on the investor's risk aversion.


Equation (12a) implies a similar relationship for the market portfolio:3

$$
V _ {i} X _ {i} ^ {M} = k ^ {M} e _ {i} \tag {12b}
$$

Therefore,

$$
X _ {i} ^ {M} = k ^ {M} \left(\frac {e _ {i}}{V _ {i}}\right) \quad \text {f o r} i = 1, \dots , n \tag {12c}
$$

Thus if two securities have the same positive excess return but different variances, the market portfolio will contain a larger dollar value of the one with the lower variance. Conversely, if two securities have the same variance but different positive excess returns, the market portfolio will contain a larger dollar value of the one with the higher excess return.

Now let us consider where the linear relationship in equation (5), or (11), comes from in this case of uncorrelated returns. It can be shown that in equation (12b),  $V_{i}X_{i}^{M}$  is the covariance of the  $r_i$  with the market. Therefore, covariance with the market is proportional to excess return (and vice versa) because the security with the higher ratio of excess return to variance is a larger part of the market portfolio.

Thus, in the uncorrelated case, the relationship between beta and excess return in equation (5) results from the security with higher excess return (per unit variance) being a larger part of the market portfolio. The beta in equation (5) is the regression of  $r_i$  against the market portfolio and, in the uncorrelated case, the only security in the market portfolio with which it is correlated is itself.

When returns are correlated, the formula for the covariance between security return and market portfolio return is more complicated, but the basic principle is the same. For example, if two securities have the same covariance structure, the one with the higher expected return will constitute a larger share of the market portfolio—despite the presence in the market portfolio of securities with which it is correlated—and hence have its own re turns more correlated with returns on the market portfolio.


# THE "TWO BETA" TRAP

Two distinct meanings of the word "beta" are used in modern financial theory. These meanings are sufficiently alike for people to converse—some with one meaning in mind, some with the other—without realizing they are talking about two different things. The meanings are sufficiently different, however, that one can validly derive diametrically opposite conclusions depending on which one is used. The net result of all this can be like an Abbott and Costello vaudeville comedy routine with portfolio theory rather than baseball as its setting. This is what Markowitz (1984) calls the two beta trap. Below we first review the background of the two betas and then tabulate propositions that are true for one concept and false for the other.

# Beta1963

Sharpe's single-index (or one-factor) model of covariance introduced in 1963 assumes that the returns of different securities are correlated with each other because each is dependent on some underlying systematic factor (see Sharpe, 1963). This can be written as

$$ r _ {i} = \alpha_ {i} + \beta_ {i} F + u _ {i} \tag {13}
$$ where the expected value of  $u_{i}$  is zero, and  $u_{i}$  is uncorrelated with  $F$  and every other  $u_{j}$ .


Originally  $F$  was denoted by  $I$  and described as an "underlying factor, the general prosperity of the market as expressed by some index." We have changed the notation from  $I$  to  $F$  to emphasize that  $r_i$  depends on the underlying factor rather than the index used to estimate the factor. The index never measures the factor exactly, no matter how many securities are used in the index, provided that each security has positive variance of  $u_{i}$ , since the index  $I$  equals:


$$
\begin{array}{l} I = \sum w _ {i} r _ {i} \\ = \sum \alpha_ {i} w _ {i} + F \left(w _ {i} \beta_ {i}\right) + \sum u _ {i} w _ {i} \tag {14} \\ = A + B F + U \\ \end{array}
$$ where  $w_{i}$  is the weight of return  $r_i$  in the index, and


$$
A = \sum \alpha_ {i} w _ {i}
$$

$$
B = \sum w _ {i} \beta_ {i}
$$

$$
U = \sum u _ {i} w _ {i}
$$

$U$  is the error in the observation of  $F$ . Under the conditions stated, the variance of  $U$  is

$$
V _ {U} = \sum_ {i = 1} ^ {N} w _ {i} ^ {2} V _ {U _ {i}} > 0 \tag {15}
$$

Sharpe (1963) tested equation (13) as an explanation of how security returns tend to go up and down together. He concluded that equation (13) was as complex a model of covariance as seemed to be needed. This conclusion was supported by research of Cohen and Pogue (1967). King (1966) found strong evidence for industry factors in addition to the market-wide factor. Rosenberg (1974) found other sources of systematic risk beyond the market-wide factor and industry factors.

We refer to the beta coefficient in equation (13) as "beta<sub>1963</sub>" since it is the subject of Sharpe's 1963 article. We contrast the properties of this beta with that of the beta that arises from the Sharpe-Lintner CAPM. The latter we will refer to as "beta<sub>1964</sub>" since it is the subject of Sharpe (1964).

# Beta1964

We noted that the SL-CAPM makes various assumptions about the world, including that all investors are mean-variance efficient, have the same beliefs, and can lend or borrow all they want at the same "risk-free" interest rate. Note, however, one assumption that the SL-CAPM does not make it that the covariances among securities satisfy equation (13). On the contrary, the assumptions it makes concerning covariances are quite general. They are consistent with equation (13) but do not require it. They are also consistent with the existence of industry factors as noted by King, or other sources of systematic risk such as those identified by Rosenberg.


As previously noted, the beta that appears in the CAPM relationship of equation (5) (which we now refer to as  $\beta_{1964}$ ) is the regression of the  $i$ th security's return against the return on the market portfolio. This is defined whether or not the covariance structure is generated by the single-factor model of equation (13). Equation (5) is an assertion about the expected return of a security and how it relates to the regression of the security's return against the marketportfolio return. Unlike equation (13), it is not an assertion about how security returns covary.

One source of confusion between beta $_{1963}$  and beta $_{1964}$  is that William Sharpe presented each of them. Sharpe, however, has never been confused on this point. In particular, when explaining beta $_{1964}$  he emphasizes that he derived it without assuming equation (13).

# Propositions about Betas

Table 4 lists various propositions about betas and indicates whether they are true or false for beta $_{1963}$  or beta $_{1964}$ . The first column presents each proposition, the second indicates whether the proposition is true or false for beta $_{1963}$ , and the third column indicates the same for beta $_{1964}$ . Most of the propositions in Table 4 are true for one of the betas and false for the other.

# Proposition 1

Because of the definition of a regression beta in general, both  $\beta_{1963}$  and  $\beta_{1964}$  equal

$$
\beta_ {i} = \operatorname {c o v} \left(r _ {i}, R\right) / V (R)
$$ for some random variable  $R$ . In the case of  $\mathrm{beta}_{1963}$ ,  $R$  is  $F$  for equation (13); in the case of  $\mathrm{beta}_{1964}$ ,  $R$  is the  $M$  in equations (1) and (2).


Table 4 Propositions about Beta

<table><tr><td></td><td>β1963</td><td>β1964</td></tr><tr><td>1. The βi of theith security equals cov(ri,R)/V(R) for some random variable R.</td><td>T</td><td>T</td></tr><tr><td>2. R is &quot;observable&quot;; specifically, it may be computed exactly from security returns (ri) and market values (Xi).</td><td>F</td><td>T</td></tr><tr><td>3. R is a value-weighted average of the (ri).</td><td>F</td><td>T</td></tr><tr><td>4. An index I that estimates R should ideally be weighted by a combination of (1/VUi) and (βi/Vi). Unfortunately, the βi and Ui needed to determine these weights are unobservable.</td><td>T</td><td>F</td></tr><tr><td>5. If ideal weights are not used, then equal weights are &quot;not bad&quot; in computing I; specifically, nonoptimum weights can be compensated for by increased sample size.</td><td>T</td><td>F</td></tr><tr><td>6. Essentially, all that is important in computing I is to have a large number of securities; it is not necessary to have a large fraction of all securities.</td><td>T</td><td>F</td></tr><tr><td>7. The ideally weighted index is an efficient portfolio.</td><td>F</td><td>T</td></tr></table>

# Proposition 2

Equation (15) implies that  $F$  cannot be observed exactly no matter how many securities are used to estimate it, provided that no security has a zero variance of  $u_{i}$ . In contrast, portfolio  $M$  in equation (2) is observable, at least in principle, if only we are diligent enough to measure each  $X_{i}^{M}$  in the market. Thus, the assertion that  $R$  is observable is true in principle for beta<sub>1964</sub> and false for beta<sub>1963</sub>.

# Propositions 3 and 4

One source of confusion about the two betas concerns whether an index estimating  $R$  should be "value weighted"; that is, should the  $w_{i}$  used in computing an estimate of  $R$  from the  $r_i$  equal the  $X_{i}^{M}$ ? We have seen that in the case of beta<sub>1964</sub>:

$$
R = \sum X _ {i} ^ {M} r _ {i}
$$

In this case  $W_{i} = X_{i}^{M} =$  market-value weights.

The answer is different in the case of beta $_{1963}$ . Ideally, we would like to eliminate the error term  $U$  from equation (14). Our index would be perfect if  $V_U = 0$ , provided of course  $B \neq 0$ . Nevertheless, as long as no security has  $V_{u_i} = 0$ , the perfect index cannot be achieved with a finite number of securities. Short of this, it might seem that the best to be wished is that  $V_U$  be a minimum. In this case,  $w_i$  would equal  $1 / V_{u_i}$ . The optimum choice of weights for estimating the underlying factor  $F$  is more complicated, depending also on  $\beta_{i} / V_{i}$  (see Markowitz, 1983) and more complicated still, since  $V_{u_i}$  and  $\beta_{i}$  are not known.


# Proposition 5

The fifth proposition in Table 4 asserts that if ideal weights cannot be obtained, equal weights are good enough. In particular, an increase in the number of securities can compensate for nonoptimum weights. We have already seen that this proposition is false for  $\beta \alpha_{1964}$ . It is easily seen to be true for  $\beta \alpha_{1963}$  under mild restrictions on how fast the  $V_{u_i}$  increases as  $i$  increases.

# Proposition 6

The next proposition asserts that all that is important in designing a good index is to have many securities, as opposed to having a large percentage of the population represented in the index. This proposition is true for  $I_{1963}$  and false for  $I_{1964}$ , as may be illustrated by two extreme examples.

First, suppose that there are only a few securities in the entire population, and all of them are used in computing a value-weighted index. Then  $I_{1964}$  would, in fact, be  $M$  and would be precisely correct. In the case of  $I_{1963}$ , on the other hand, equation (15) implies that if  $n = 6$ , for example, the error term  $V_{U}$  is the same regardless of whether the six securities are  $100\%$  or  $1\%$  of the universe.


At the other extreme, imagine that the sample is large but is a small percentage of the total population. For example, suppose  $N = 1,000$  out of 100,000 securities. Then  $I_{1963}$  will give a good reading for  $F$ , and therefore  $\beta_{1963}$ , but  $I_{1964}$  may lead to serious misestimates of  $\beta_{1964}$ . First, the covariance with  $I_{1964}$  of an asset not in this index will tend to be too low. Second, if the index contains more of certain kinds of assets than is characteristic of the entire population, then assets of this sort will tend to have a higher correlation with the index than with the true  $M$ , and assets of other sorts will tend to have lower correlations. More precisely, the covariance between return  $r_i$  and the market is a weighted average of the covariances  $\sigma_{ij}$  (including  $V_i = \sigma_{ii}$ ) weighted by market values. If the index chosen does not have approximately the same average  $\sigma_{ij}$  for a given  $i$ , the estimates of  $\beta_{i,1964}$  will be in error.

# Proposition 7

This proposition asserts that the ideal index is an efficient portfolio. This is true for  $I_{1964}$  and false for  $I_{1963}$  since one of the conclusions of the SL-CAPM assumptions is that the market portfolio is efficient. In fact, the market portfolio is the only combination of risky assets that is efficient in this CAPM. All other efficient portfolios consist of either investment in the market portfolio plus lending at the risk-free rate, or of investment in the market portfolio financed in part by borrowing at the risk-free rate. On the other hand,  $\beta_{1963}$  has nothing to do with expected returns or market efficiency.

# KEY POINTS

- The two major conclusions of the Sharpe-Lintner CAPM are that (1) the market portfolio is a mean-variance efficient portfolio; and (2) the excess return of each security is proportional to its beta.

- The "market portfolio" includes all securities in the market.
- The beta  $(\beta)$  in the CAPM is estimated using regression analysis using historical data on observed returns for a security (response variable) and observed returns for the market (explanatory variable).
- The Roy CAPM differs from the Sharpe-Lintner CAPM only in its assumption concerning the investment constraint imposed by investors. More specifically, it assumes that each investor can short securities.
- Confusion regarding the CAPM involves (1) the failure to distinguish between the following two statements: The market is efficient in that each participant has correct beliefs and uses them to their advantage on the one hand, and the market portfolio is a mean-variance efficient portfolio on the other hand; (2) belief that CAPM investors get paid for bearing nondiversifiable risk; and (3) failure to distinguish between the beta in Sharpe's one-factor model of covariance (1963 beta) and that in Sharpe's CAPM (1964 beta).


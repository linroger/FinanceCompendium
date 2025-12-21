# Arbitrage Pricing Theory and Multifactor Models of Risk and Return

# 10

THE EXPLOitation OF security mispricing in such a way that risk-free profits can be earned is called arbitrage. It involves the simultaneous purchase and sale of equivalent securities or portfolios in order to profit from discrepancies in their prices. Perhaps the most basic principle of capital market theory is that well-functioning security markets rule out arbitrage opportunities. If actual security prices did allow for arbitrage, the result would be strong pressure on prices that would quickly eliminate the opportunity. Therefore, we can expect security markets to satisfy a "no-arbitrage condition."

In this chapter, we show how no-arbitrage conditions, together with the factor model introduced in Chapter 8, allow us to generalize the security market line of the CAPM to gain richer insight into the risk-return relationship. We begin by showing how the decomposition of risk into market versus firm-specific influences that we introduced in earlier chapters can be extended to deal with the multifaceted nature of systematic risk. Multifactor models of security returns can be used to measure and manage exposure to each of many economywide factors such as business-cycle risk, interest or inflation rate risk, energy price risk, and so on. These models ultimately lead us to a multifactor version of the security market line in which risk premiums derive from exposure to multiple risk sources, each with its own risk premium.


This approach to the risk-return trade-off is called arbitrage pricing theory, or APT. In a single-factor market where there are no extra-market risk factors, the APT leads to a mean return-beta equation identical to that of the CAPM. In a multifactor market with one or more extra-market risk factors, the APT delivers a mean-beta equation similar to Merton's multifactor extension of the CAPM (his ICAPM). Finally, we ask how to identify the factors that are likely to be the most important sources of risk. These will be the factors generating substantial hedging demands that brought us to the multifactor CAPM introduced in Chapter 9. Both the APT and the CAPM therefore can lead to multiple-risk versions of the security market line, thereby enriching the insights we can derive about the risk-return relationship.

# 10.1 Multifactor Models: A Preview

The index model introduced in Chapter 8 gave us a way of decomposing stock return variability into market or systematic risk, due largely to macroeconomic events, versus firm-specific or idiosyncratic effects that can be diversified in large portfolios. In the single-index model, the return on a broad market-index portfolio summarized the impact of the macro factor. In Chapter 9 we introduced the possibility that risk premiums may also depend on correlations with extra-market risk factors such as inflation, or changes in the parameters describing future investment opportunities: interest rates, volatility, market-risk premiums, and betas. For example, returns on an asset whose return increases when inflation increases can be used to hedge uncertainty in the future inflation rate. Its price may rise and its risk premium may fall as a result of investors' extra demand for this asset.

Risk premiums of individual securities should reflect their sensitivities to extra-market risk factors just as their betas on the market index determine their risk premiums in the simple CAPM. When securities can be used to hedge these factors, the resulting hedging demands will turn the SML into a multifactor model, with each significant risk source generating an additional factor. Risk factors can be represented either by returns on these hedge portfolios (just as the index portfolio represents the market factor) or more directly by changes in the risk factors themselves, for example, changes in interest rates or inflation.

# Factor Models of Security Returns

We begin with a familiar single-factor model like the one introduced in Chapter 8. Uncertainty in asset returns has two sources: a common or macroeconomic factor and firm-specific events. By construction, the common factor has zero expected value because it measures new information concerning the macroeconomy; new information implies a revision to current expectations, and if initial expectations are rational, then such revisions should average out to zero.

If we call  $F$  the deviation of the common factor from its expected value,  $\beta_{i}$  the sensitivity of firm  $i$  to that factor, and  $e_{i}$  the firm-specific disturbance, the factor model states that the actual excess return on firm  $i$  will equal its initially expected value plus a (zero expected value) random amount attributable to unanticipated economywide events, plus another (zero expected value) random amount attributable to firm-specific events.

Formally, the single-factor model of excess returns is described by Equation 10.1:

$$
R _ {i} = E \left(R _ {i}\right) + \beta_ {i} F + e _ {i} \tag {10.1}
$$ where  $E(R_{i})$  is the expected excess return on stock  $i$ . Notice that if the macro factor has a value of 0 in any particular period (i.e., no macro surprises), the excess return on the security will equal its previously expected value,  $E(R_{i})$ , plus the effect of firm-specific events only. The nonsystematic components of returns, the  $e_{i}$ 's, are assumed to be uncorrelated across stocks and with the factor  $F$ .


# Example 10.1 Factor Models

To illustrate the factor model, suppose that the macro factor,  $F$ , represents news about the state of the business cycle, which we will measure by the unexpected percentage change in gross domestic product (GDP). The consensus is that GDP will increase by  $4\%$  this year. Suppose also that a stock's  $\beta$  value is 1.2. If GDP increases by only  $3\%$ , then the value of  $F$  would be  $-1\%$ , representing a  $1\%$  disappointment in actual versus expected growth. Given the stock's beta, this disappointment would translate into a stock return  $1.2\%$  lower than previously expected. This macro surprise, together with the firm-specific disturbance,  $e_{i}$ , determines the total departure of the stock's return from its originally expected value.


# Concept Check 10.1

Suppose you currently expect the stock in Example 10.1 to earn a  $10\%$  rate of return. Then some macroeconomic news suggests that GDP growth will come in at  $5\%$  instead of  $4\%$ . How will you revise your estimate of the stock's expected rate of return?

The factor model's decomposition of returns into systematic and firm-specific components is compelling, but confining systematic risk to a single factor is not. Indeed, when we motivated systematic risk as the source of risk premiums in Chapter 9, we noted that extra-market sources of risk may arise from a number of sources such as uncertainty about interest rates, inflation, and so on. The market return reflects all of these macro factors as well as the average sensitivity of firms to those factors.

It stands to reason that a more explicit representation of systematic risk, allowing different stocks to exhibit different sensitivities to its various components, would be a useful refinement of the single-factor model. Models that allow for several factors—multifactor models—can provide better descriptions of security returns.

Apart from their use in building models of equilibrium security pricing, multifactor models are useful in risk management applications. They give us a simple way to measure investor exposure to various macroeconomic risks and construct portfolios to hedge those risks.

Let's start with a two-factor model. Suppose the two most important macroeconomic sources of risk are uncertainties surrounding the state of the business cycle, news of which we will again measure by unanticipated growth in GDP, and changes in interest rates. We will denote by IR any unexpected change in interest rates. The return on any stock will respond to each source of macro risk as well as its own firm-specific influences. We can write a two-factor model describing the excess return on stock  $i$  in some time period as follows:

$$
R _ {i} = E \left(R _ {i}\right) + \beta_ {i \mathrm {G D P}} \mathrm {G D P} + \beta_ {i \mathrm {I R}} \mathrm {I R} + e _ {i} \tag {10.2}
$$

The two macro factors on the right-hand side of the equation comprise the systematic factors in the economy. As in the single-factor model, both of these macro factors have zero expectation: They represent changes in these variables that have not already been anticipated. The coefficients of each factor in Equation 10.2 measure the sensitivity of share returns to that factor. For this reason, the coefficients are sometimes called factor loadings or, equivalently, factor betas. An increase in interest rates is bad news for most firms, so we would expect interest rate betas generally to be negative. As before,  $e_i$  reflects firm-specific influences.

To illustrate the advantages of multifactor models, consider two firms, one a regulated electric-power utility in a mostly residential area and the other an airline. Because residential demand for electricity is not very sensitive to the business cycle, the utility has a low beta on GDP. But the utility's stock price may have a relatively high sensitivity to interest rates. Because the cash flow generated by the utility is relatively stable, its present value behaves much like that of a bond, varying inversely with interest rates. Conversely, the performance of the airline is very sensitive to economic activity but is less sensitive to interest rates. It will have a high GDP beta and a lower interest rate beta. Suppose that on a particular day, a news item suggests that the economy will expand. GDP is expected to increase, but so are interest rates. Is the "macro news" on this day good or bad? For the utility, this is bad news: Its dominant sensitivity is to rates. But for the airline, which responds more to GDP, this is good news. Clearly a one-factor or single-index model cannot capture such differential responses to varying sources of macroeconomic uncertainty.


# Example 10.2 Risk Assessment Using Multifactor Models

Suppose we estimate the two-factor model in Equation 10.2 for Northeast Airlines and find the following result:

$$
R = . 1 3 3 + 1. 2 (\mathrm {G D P}) - . 3 (\mathrm {I R}) + e
$$

This tells us that, based on currently available information, the expected excess rate of return for Northeast is  $13.3\%$ , but that for every percentage point increase in GDP beyond current expectations, the return on Northeast's shares increases on average by  $1.2\%$ , while for every unanticipated percentage point that interest rates increase, Northeast's shares fall on average by  $0.3\%$ .

Factor betas can provide a framework for a hedging strategy. Investors concerned with their current exposure to one or another macro factor might offset that risk by initiating a position with equal but opposite exposure. Often, futures contracts can be used to hedge a particular factor risk. We explore this application in Chapter 22.

Like the index model of Chapter 8, the multifactor model is no more than a description of the factors that affect security returns. There is no "theory" in the equation. The obvious question left unanswered by Equation 10.2 is where  $E(R)$  comes from, in other words, what determines a security's expected excess rate of return. Arbitrage pricing theory provides the answer to this question.

# 10.2 Arbitrage Pricing Theory

Stephen Ross developed the arbitrage pricing theory (APT) in 1976. Like the CAPM, the APT predicts a security market line linking expected returns to risk, but the path it takes to the SML is quite different. Ross's APT relies on three key propositions: (1) Security returns can be described by a factor model, (2) there are sufficient securities to diversify away idiosyncratic risk, and (3) well-functioning security markets do not allow arbitrage opportunities to persist. We begin with a simple version of Ross's model, which assumes that only one systematic factor affects security returns. Once we understand how the model works, it will be much easier to see how it can be generalized to accommodate more than one factor.

# Arbitrage, Risk Arbitrage, and Equilibrium

An arbitrage opportunity arises when an investor can earn riskless profits without making a net investment. A trivial example of an arbitrage opportunity would arise if shares of a stock sold for different prices on two different exchanges. For example, suppose Microsoft sold for  \$310 on the NYSE but only\$ 305 on NASDAQ. Then you could buy the shares on NASDAQ and simultaneously sell them on the NYSE, clearing a riskless profit of 5 per share without tying up any of your own capital. The Law of One Price states that if two assets are equivalent in all economically relevant respects, then they should have the same price. The Law of One Price is enforced by arbitrageurs: If they observe a violation of the law, they will engage in arbitrage activity—simultaneously buying the asset where it is cheap and selling where it is expensive. In the process, they will bid up the price where it is low and force it down where it is high until the opportunity is eliminated.

Strategies that exploit violations of the Law of One Price all involve long–short positions. You buy the relatively cheap asset and sell the relatively overpriced one. The net investment, therefore, is zero. Moreover, the position is riskless. Therefore, any investor, regardless of risk aversion or wealth, will want to take an infinite position in it. Because those large positions will quickly force prices up or down until the opportunity vanishes, security prices should satisfy a “no-arbitrage condition,” that is, a condition that rules out the existence of arbitrage opportunities.

The idea that market prices will move to rule out arbitrage opportunities is perhaps the most fundamental concept in capital market theory. Violation of this restriction would indicate the grossest form of market irrationality.

There is an important difference between arbitrage and risk-return dominance arguments in support of equilibrium price relationships. A dominance argument holds that when an equilibrium price relationship is violated, many investors will make limited portfolio changes, depending on their degree of risk aversion. Aggregation of these limited portfolio changes is required to create a large volume of buying and selling, which in turn restores equilibrium prices. By contrast, when arbitrage opportunities exist, each investor wants to take as large a position as possible; hence, it will not take many investors to bring about the price pressures necessary to restore equilibrium. Therefore, implications for prices derived from no-arbitrage arguments are stronger than implications derived from a risk-return dominance argument.

The CAPM is an example of a dominance argument, implying that all investors hold mean-variance efficient portfolios. If a security is mispriced, investors will tilt their portfolios toward the underpriced and away from the overpriced securities. Pressure on equilibrium prices results from many investors shifting their portfolios, each by a relatively small dollar amount. The assumption that a large number of investors are mean-variance optimizers is critical. In contrast, the implication of a no-arbitrage condition is that a few investors who identify an arbitrage opportunity will mobilize large dollar amounts and quickly restore equilibrium.

Practitioners often use the terms arbitrage and arbitrageurs more loosely than our strict definition. Arbitrageur often refers to a professional searching for mispriced securities in specific areas such as merger-target stocks, rather than to one who seeks strict (risk-free) arbitrage opportunities. Such activity is sometimes called risk arbitrage to distinguish it from pure arbitrage.

# Diversification in a Single-Factor Security Market

We begin by considering the risk of a portfolio of stocks in a single-factor market. We first show that if a portfolio is well diversified, its firm-specific or nonfactor risk becomes negligible, so that only factor (equivalently, systematic) risk remains. The excess return,  $R_P$ , on an  $n$ -stock portfolio with weights  $w_i$ ,  $\sum w_i = 1$ , is


$$
R _ {P} = E \left(R _ {P}\right) + \beta_ {P} F + e _ {P} \tag {10.3}
$$ where


$$
\beta_ {P} = \sum w _ {i} \beta_ {i}; E (R _ {P}) = \sum w _ {i} E (R _ {i})
$$ are the weighted averages of the  $\beta_{i}$  and risk premiums of the  $n$  securities. The portfolio nonsystematic return (which is uncorrelated with  $F$ ) is  $e_{P} = \sum w_{i} e_{i}$ , which similarly is a weighted average of the  $e_{i}$  of the  $n$  securities.


There are two random (and uncorrelated) terms on the right-hand side of Equation 10.3, so we can separate the variance of the portfolio into its systematic and nonsystematic sources:

$$
\sigma_ {P} ^ {2} = \beta_ {P} ^ {2} \sigma_ {F} ^ {2} + \sigma^ {2} (e _ {P})
$$ where  $\sigma_F^2$  is the variance of the factor  $F$  and  $\sigma^2 (e_P)$  is the nonsystematic variance of the portfolio, which is given by


$$
\sigma^ {2} \left(e _ {P}\right) = \operatorname {V a r i a n c e} \left(\sum w _ {i} e _ {i}\right) = \sum w _ {i} ^ {2} \sigma^ {2} \left(e _ {i}\right)
$$

In deriving the nonsystematic variance of the portfolio, we depend on the fact that the firm-specific  $e_i$ s are uncorrelated (so all covariances across assets are zero) and, hence, the variance of the "portfolio" of nonsystematic  $e_i$ s is the weighted sum of the individual nonsystematic variances with the square of the investment proportions as weights.

If the portfolio were equally weighted,  $w_{i} = 1 / n$ , then the nonsystematic variance would be

$$
\sigma^ {2} \left(e _ {P}\right) = \sum w _ {i} ^ {2} \sigma^ {2} \left(e _ {i}\right) = \sum \left(\frac {1}{n}\right) ^ {2} \sigma^ {2} \left(e _ {i}\right) = \frac {1}{n} \sum \frac {\sigma^ {2} \left(e _ {i}\right)}{n} = \frac {1}{n} \bar {\sigma} ^ {2} \left(e _ {i}\right) \tag {10.4}
$$ where the last term is the average value of nonsystematic variance across securities. In words, the nonsystematic variance of the portfolio equals the average nonsystematic variance divided by  $n$ . Therefore, as  $n$  increases, nonsystematic variance falls. This is the effect of diversification.


We see this effect dramatically in the scatter diagram of Figure 10.1. The square reddish points are the monthly returns over a five-year period for a single stock, Intel. The round blue points are for a diversified stock mutual fund, Vanguard's Growth & Income Fund. During the period, both the stock and the fund had virtually identical betas. But their nonsystematic risk differed considerably: The scatter of Intel's returns falls considerably further from the regression line than the mutual fund's, for which diversification has eliminated most residual risk.

In sum, the number of securities in the portfolio has no bearing on systematic risk. Only average beta matters. In contrast, firm-specific risk becomes increasingly irrelevant as the portfolio becomes more diversified. You can see where we are going. Risk premiums should depend only on systematic risk that cannot be diversified; firm-specific risk should not command a risk premium because it is easily eliminated.

# Well-Diversified Portfolios

Equation 10.4 tells us that as diversification progresses, that is, as the weight in each security approaches zero, the nonsystematic variance of the portfolio approaches zero. We will define a well-diversified portfolio as one for which each weight,  $w_{i}$ , is small enough that for practical purposes the nonsystematic variance,  $\sigma^2 (e_P)$ , is negligible.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/ae5f4a5c50068ed3fded88d6a7475ade1ad1351e497b51057649f717772b1120.jpg)
Figure 10.1 Scatter diagram for a single stock (Intel) and a diversified mutual fund (Vanguard Growth and Income). The fund exhibits much smaller scatter around the regression line.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/050e49f388452d7caf7e9f95117264636144b68493bd6244599386e03034d6a8.jpg)

# Concept Check 10.2 a. A portfolio is invested in a very large number of shares (  $n$  is large). However, one-half of the portfolio is invested in stock 1, and the rest of the portfolio is equally divided among the other  $n - 1$  shares. Is this portfolio well diversified?

b. Another portfolio also is invested in the same  $n$  shares, where  $n$  is very large. Instead of equally weighting with portfolio weights of  $1/n$  in each stock, the weights in half the securities are  $1.5/n$  while the weights in the other shares are  $.5/n$ . Is this portfolio well diversified?

Because the expected value of  $e_P$  for any well-diversified portfolio is zero, and its variance also is effectively zero, any realized value of  $e_P$  will be virtually zero. Rewriting Equation 10.1, we conclude that, for a well-diversified portfolio, for all practical purposes

$$
R _ {P} = E (R _ {P}) + \beta_ {P} F
$$

The solid line in Figure 10.2, Panel A, plots the excess return of a well-diversified portfolio  $A$  with  $E(R_{A}) = 10\%$  and  $\beta_{A} = 1$  for various realizations of the systematic factor. The expected return of portfolio  $A$  is  $10\%$ ; this is where the solid line crosses the vertical axis. At this point, the systematic factor is zero, implying no macro surprises. If the macro

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/a5bdb939752adc8a29d61f0297f6ccedec6f67bbb6b3de633a58b124227ccef0.jpg)
A
Figure 10.2 Excess returns as a function of the systematic factor: Panel A, Well-diversified portfolio A; Panel B, Single stock (S).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/c588fb1da758cdd886a8dbc0c497a75c0ca00c0fc1e1b3fd381c1c47c9a14b6f.jpg)
B factor is positive, the portfolio's return exceeds its expected value; if it is negative, the portfolio's return falls short of its mean. The excess return on the portfolio is therefore


$$
E \left(R _ {A}\right) + \beta_ {A} F = 10 \% + 1.0 \times F
$$

Compare Panel A in Figure 10.2 with Panel B, which is a similar graph for a single stock  $(S)$  with  $\beta_{S} = 1$ . The undiversified stock is subject to nonsystematic risk, which is seen in a scatter of points around the line. The well-diversified portfolio's return, in contrast, is determined completely by the systematic factor.

# The Security Market Line of the APT

Nonsystematic risk is negligible in well-diversified portfolios, and one would not expect investors to be rewarded for bearing risk that can be eliminated through diversification. Therefore, only systematic or factor risk should be related to portfolio expected returns. This is the basis of the security market line that we are now ready to derive.

First, we show that all well-diversified portfolios with the same beta must have the same expected return. Figure 10.3 plots the returns on two such portfolios,  $A$  and  $B$ , both with betas of 1, but with differing expected returns:  $E(r_{A}) = 10\%$  and  $E(r_{B}) = 8\%$ . Could portfolios  $A$  and  $B$  coexist with the return pattern depicted? Clearly not: No matter what the systematic factor turns out to be, portfolio  $A$  outperforms portfolio  $B$ , leading to an arbitrage opportunity.

If you sell short  \$1 million of B$  and buy 1 million of  $A$ , a zero-net-investment strategy, you would have a riskless payoff of 20,000, as follows:

$$
(. 1 0 + 1. 0 \times F) \times \$ 1 \text {m i l l o n} \quad \text {f r o m l o n g p o s i t i o n i n} A
$$

$$
- (0. 0 8 + 1. 0 \times F) \times \$ 1 \text {m i l l o n} \quad \text {f r o m s h o r t p o s i t i o n i n} B
$$

$$
. 0 2 \times \$ 1 \text {m i l l o n} = \$ 2 0, 0 0 0 \quad \text {n e t p r o c e s d s}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/980fae9db6e722312beb201c2fd50f5983f186b548d0be4d8578e37d883d1e35.jpg)
Figure 10.3 Returns as a function of the systematic factor: An arbitrage opportunity

Your profit is risk-free because the factor risk cancels out across the long and short positions. Moreover, the strategy requires zero-net-investment. You (and others) will pursue it on an infinitely large scale until the resulting pressure on security prices forces the return discrepancy between the two portfolios to disappear. We conclude that such arbitrage activity ensures that well-diversified portfolios with equal betas will have equal expected returns.

What about portfolios with different betas? Their risk premiums must be proportional to beta. To see why, consider Figure 10.4. Suppose that the risk-free rate is  $4\%$  and that a well-diversified portfolio,  $C$ , with a beta of .5, has an expected return of  $6\%$ . Portfolio  $C$  plots below the line from the risk-free asset to portfolio  $A$ . Consider, therefore, a new portfolio,  $D$ , composed of half of portfolio  $A$  and half of the risk-free asset. Portfolio  $D$ 's beta will be  $(.5 \times 0 + .5 \times 1.0) = .5$ , and its expected return will be  $(.5 \times 4 + .5 \times 10) = 7\%$ . Now portfolio  $D$  has an equal beta but a greater expected return than portfolio  $C$ . From our analysis of Figure 10.3 in the previous paragraph we know that this constitutes an arbitrage opportunity. We conclude that, to preclude arbitrage opportunities, the expected return on all well-diversified portfolios must lie on the straight line from the risk-free asset in Figure 10.4.

Notice in Figure 10.4 that risk premiums are indeed proportional to portfolio betas. The risk premium is depicted by the vertical arrow, which measures the distance between the risk-free rate and the expected return on the portfolio. As in the simple CAPM, the risk premium is zero for  $\beta = 0$  and rises in direct proportion to  $\beta$ .

Figure 10.4 relates the risk premium on well-diversified portfolios to their betas. As a final step, we would like a security market line that relates the portfolio risk premium to its beta against a market index rather than an unspecified macro factor.

Fortunately, this last step is easy to justify. This is because all well-diversified portfolios are perfectly correlated with the macro factor. (Again, look at Figure 10.2, Panel A, which shows that the scatter plot for any well-diversified portfolio lies precisely on the straight line.) Therefore, if a market index portfolio is well diversified, its return will perfectly reflect the value of the macro factor. This means that betas measured against the market index are just as informative about relative levels of systematic risk as are betas measured against the macro factor.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/42af0ecc9cecf7f465ca137c84ee9d1d0c692a83e3d047371a534746a1f7063b.jpg)
Figure 10.4 An arbitrage opportunity


Therefore, we can write the excess return on a well-diversified portfolio  $P$  as:

$$
R _ {P} = \alpha_ {P} + \beta_ {P} R _ {M} \tag {10.5}
$$ where  $\beta_{P}$  now denotes the beta against the well-diversified market index.


We know that risk premiums must rise in proportion to beta. Therefore, if a portfolio has (let's say) twice the beta against the macro factor as the market index, its beta with respect to the index will be 2, and it should have twice the risk premium. More generally, for any well-diversified portfolio  $P$ , the expected excess return must be:

$$
E \left(R _ {P}\right) = \beta_ {P} E \left(R _ {M}\right) \tag {10.6}
$$

In other words, the risk premium (i.e., the expected excess return) on portfolio  $P$  is the product of its beta and the risk premium of the market index. Equation 10.6 thus establishes that the SML of the CAPM must also apply to well-diversified portfolios simply by virtue of the "no-arbitrage" requirement of the APT.

Individual Assets and the APT We have demonstrated that if arbitrage opportunities are to be ruled out, each well-diversified portfolio's expected return must satisfy the SML predicted by the CAPM. The natural question is whether this relationship tells us anything about the expected returns on the component stocks. The answer is that if this relationship is to be satisfied by all well-diversified portfolios, it must be satisfied by almost all individual securities, although a rigorous proof of this proposition is somewhat difficult. We can illustrate the argument less formally.


Suppose that the expected return-beta relationship is violated for all single assets. Now create a pair of well-diversified portfolios from these assets. What are the chances that in spite of the fact that for any pair of assets the relationship does not hold, the relationship will hold for both well-diversified portfolios? The chances are small, but it is perhaps possible that the relationships among the single securities are violated in offsetting ways so that somehow it holds for the pair of well-diversified portfolios.

Now construct yet another well-diversified portfolio. What are the chances that the violations of the relationships for single securities are such that this third portfolio also will fulfill the no-arbitrage expected return-beta relationship? Obviously, the chances are smaller still. Continue with a fourth well-diversified portfolio, and so on. If the no-arbitrage expected return-beta relationship has to hold for each of these different, well-diversified portfolios, it must be virtually certain that the relationship holds for all but a small number of individual securities.

We use the term virtually certain advisedly because we must distinguish this conclusion from the statement that all securities surely fulfill this relationship. The reason we cannot make the latter statement has to do with a property of well-diversified portfolios.

Recall that to qualify as well diversified, a portfolio must have very small positions in all securities. If, for example, only one security violates the expected return-beta relationship, then the effect of this violation on a well-diversified portfolio will be too small to be of importance for any practical purpose, and meaningful arbitrage opportunities will not arise. But if many securities violate the expected return-beta relationship, the relationship will no longer hold even approximately for well-diversified portfolios, and arbitrage opportunities will be available. Consequently, we conclude that the no-arbitrage condition for a single-factor security market implies the expected return-beta relationship for all well-diversified portfolios and for all but possibly a small number of individual securities.

# Well-Diversified Portfolios in Practice

What is the effect of diversification on portfolio standard deviation in practice, where portfolio size is not unlimited? To illustrate, consider the residual standard deviation of a 1,000-stock portfolio with equal weights on each component stock. If the annualized residual standard deviation for each stock is  $\sigma(e_i) = 40\%$ , then the portfolio achieves a small but still not negligible standard deviation of  $40 / \sqrt{1,000} = 1.26\%$ .

What is a "large" portfolio? Many widely held ETFs or mutual funds hold hundreds of different shares, but very few hold more than 1,000. Therefore, for plausible portfolios, even broad diversification is not likely to achieve the risk reduction of the APT's "well-diversified" ideal. This is a shortcoming in the model. On the other hand, even the levels of residual risk attainable in practice should make the APT's security market line at the very least a good approximation to the risk-return relation. We address the comparative strengths of the APT and the CAPM as models of risk and return in the next section.

# 10.3 The APT and the CAPM

The APT serves many of the same functions as the CAPM. It gives us a benchmark for rates of return that can be used in capital budgeting, security valuation, or investment performance evaluation. Moreover, it highlights the crucial distinction between nondiversifiable risk (factor risk), which requires a reward in the form of a risk premium, and diversifiable risk, which does not.

In many ways, the APT is an extremely appealing model. It does not require that almost all investors be mean-variance optimizers. Instead, it is built on the highly plausible assumption that a rational capital market will preclude arbitrage opportunities. A violation of the APT's pricing relationships will cause extremely strong pressure to restore them. Moreover, the APT provides an expected return-beta relationship using as a benchmark a well-diversified index portfolio rather than the elusive and impossible-to-observe market portfolio of all assets that underpins the CAPM. When we replace the unobserved market portfolio of the CAPM with a broad, but observable, index portfolio, we can no longer be sure that this portfolio will be an adequate benchmark for the CAPM's security market line.

In spite of these apparent advantages, the APT does not fully dominate the CAPM. The CAPM provides an unequivocal statement on the expected return-beta relationship for all securities, whereas the APT implies that this relationship holds for all but perhaps a small proportion of these securities. Because the APT is built on the foundation of well-diversified portfolios, it cannot rule out a violation of the expected return-beta relationship for any particular asset. Moreover, we've seen that even large portfolios may have nonnegligible residual risk.

In the end, however, it is noteworthy and comforting that despite the very different paths they take to get there, both models arrive at the same security market line. Most important, they both highlight the distinction between firm-specific and systematic risk, which is at the heart of all modern models of risk and return.

# 10.4 A Multifactor APT

So far, we've examined the APT in a one-factor world. In reality, as we pointed out above, there are several sources of systematic risk such as uncertainty in the business cycle, interest rates, energy prices, and so on. Presumably, exposure to any of these factors will affect a stock's appropriate expected return. The APT can be generalized to accommodate these multiple sources of risk in a manner much like the multifactor CAPM.

Suppose that we generalize the single-factor model expressed in Equation 10.1 to a two-factor model:

$$
R _ {i} = E \left(R _ {i}\right) + \beta_ {i 1} F _ {1} + \beta_ {i 2} F _ {2} + e _ {i} \tag {10.7}
$$

In Example 10.2, factor 1 was the departure of GDP growth from expectations and factor 2 was the unanticipated change in interest rates. Each factor has zero expected value because each measures the surprise in (rather than the level of) the systematic variable. Similarly, the firm-specific component of unexpected return,  $e_i$ , also has zero expected value. Extending such a two-factor model to any number of factors is straightforward.

The benchmark portfolios in the APT are factor portfolios, which are well-diversified portfolios constructed to have a beta of 1 on one of the factors and a beta of zero on any other factor. We can think of each factor portfolio as a tracking portfolio. That is, the returns on such a portfolio track the evolution of one particular source of macroeconomic risk but are uncorrelated with other sources of risk. It is possible to form such factor portfolios because we have a large number of securities to choose from, and a relatively small number of factors. The multifactor SML predicts that the contribution of each source of risk to the security's total risk premium equals the factor beta times the risk premium of the factor portfolio tracking that source of risk. We illustrate with an example.

# Example 10.3 Multifactor SML

Suppose that the two factor portfolios, portfolios 1 and 2, have expected returns  $E(r_1) = 10\%$  and  $E(r_2) = 12\%$  and that the risk-free rate is  $4\%$ . The risk premium on the first factor portfolio is  $10\% - 4\% = 6\%$ , and that on the second factor portfolio is  $12\% - 4\% = 8\%$ .

Now consider a well-diversified portfolio, portfolio  $A$ , with beta on the first factor portfolio,  $\beta_{A1} = .5$ , and beta on the second factor portfolio,  $\beta_{A2} = .75$ . The multifactor APT states that the overall risk premium on this portfolio should equal the sum of the risk premiums required as compensation for each source of systematic risk.

The risk premium attributable to risk factor 1 is the portfolio's exposure to factor 1,  $\beta_{A1}$ , multiplied by the risk premium earned on the first factor portfolio,  $E(r_1) - r_f$ . Therefore, the portion of portfolio  $A$  's risk premium that is compensation for its exposure to the first factor is  $\beta_{A1}[E(r_1) - r_f] = .5(10\% -4\%) = 3\%$ . Similarly, the risk premium attributable to risk factor 2 is proportional to the exposure to that factor. The total equilibrium expected return on portfolio  $A$  therefore would be the sum of the risk-free rate plus total compensation for all sources of risk:

4\% Risk-free rate  $r_f = 4\%$
+3\% Risk premium for exposure to factor 1  $\beta_{A1}\times [E(r_1) - r_l] = .5\times 6\%$
+6\% Risk premium for exposure to factor 2  $\beta_{A2}\times [E(r_2) - r_d] = .75\times 8\%$
$= 13\%$  Total expected return  $r_f + \beta_{A1}[E(r_1) - r_f] + \beta_{A2}[E(r_2) - r_f]$

To generalize Example 10.3, note that the factor exposures of any portfolio,  $P$ , are given by its betas,  $\beta_{P1}$  and  $\beta_{P2}$ . A competing portfolio,  $Q$ , can be formed by investing in factor portfolios with the following weights:  $\beta_{P1}$  in the first factor portfolio,  $\beta_{P2}$  in the second factor portfolio, and  $1 - \beta_{P1} - \beta_{P2}$  in T-bills. By construction, portfolio  $Q$  will have betas equal to those of portfolio  $P$  and expected return of

$$
\begin{array}{l} E \left(r _ {Q}\right) = \beta_ {P 1} E \left(r _ {1}\right) + \beta_ {P 2} E \left(r _ {2}\right) + \left(1 - \beta_ {P 1} - \beta_ {P 2}\right) r _ {f} \\ = r _ {f} + \beta_ {P 1} [ E (r _ {1}) - r _ {f} ] + \beta_ {P 2} [ E (r _ {2}) - r _ {f} ] \tag {10.8} \\ \end{array}
$$

This is a two-factor SML, and, as Example 10.4 now shows, any well-diversified portfolio with the same betas must have the same expected return as long as capital markets do not allow for easy arbitrage opportunities.

# Example 10.4 Mispricing and Arbitrage

Using the numbers in Example 10.3, the expected return on portfolio A should be:

$$
E (r _ {A}) = 4 + . 5 \times (1 0 - 4) + . 7 5 \times (1 2 - 4) = 1 3
$$

Suppose its expected return is actually  $12\%$  rather than  $13\%$ . This would give rise to the following arbitrage opportunity.

Form portfolio  $Q$  from the factor portfolios with the same betas as portfolio  $A$ . This requires weights of .5 on the first factor portfolio, .75 on the second factor portfolio, and -.25 on the risk-free asset. This portfolio has exactly the same factor betas as portfolio  $A$ : It has a beta of .5 on the first factor because of its .5 weight on the first factor portfolio, and a beta of .75 on the second factor. (The weight of -.25 on risk-free T-bills does not affect the sensitivity to either factor.)

Now invest  \$1 in portfolio Q and sell (short)\$ 1 in portfolio A. Your net investment is zero, but your expected dollar profit is positive and equal to

$$
\$ 1 \times E (r _ {Q}) - \$ 1 \times E (r _ {A}) = \$ 1 \times . 1 3 - \$ 1 \times . 1 2 = \$ . 0 1
$$

Moreover, your position is riskless. Your exposure to each risk factor cancels out because you are long  \$1 in portfolio Q and short\$ 1 in portfolio A, and both of these well-diversified portfolios have exactly the same factor betas. Thus, if portfolio A's expected return differs from that of portfolio Q's, you can earn positive risk-free profits on a zero-net-investment position. This is an arbitrage opportunity.

Because portfolio  $Q$  in Example 10.4 has precisely the same exposures as portfolio  $A$  to the two sources of risk, their expected returns also ought to be equal. So portfolio  $A$  also ought to have an expected return of  $13\%$ . If it does not, then there will be an arbitrage opportunity and great pressure on prices until the opportunity is eliminated. We conclude that any well-diversified portfolio with betas  $\beta_{P1}$  and  $\beta_{P2}$  must have the expected return given in Equation 10.8.

# Concept Check 10.3

Using the factor portfolios of Example 10.3, find the equilibrium rate of return on a well-diversified portfolio with  $\beta_{1} = .2$  and  $\beta_{2} = 1.4$ .

Finally, the extension of the multifactor SML of Equation 10.8 to individual assets is precisely the same as for the one-factor APT. Equation 10.8 cannot be satisfied by every well-diversified portfolio unless it is satisfied by almost all individual securities. Equation 10.8 thus represents the multifactor SML for an economy with multiple sources of risk.

Elton, Gruber, and Mei* use the APT to derive the cost of capital for electric utilities. They consider six potential systematic risk factors: unanticipated developments in the term structure of interest rates, the level of interest rates, inflation rates, the business cycle (measured by GDP), foreign exchange rates, and a summary measure they devise to measure other macro factors.

Their first step is to estimate the risk premium associated with exposure to each risk source. They accomplish this in a two-step strategy (which we will describe in detail in Chapter 13):

1. Estimate "factor loadings" (i.e., betas) of a large sample of firms. Regress returns of 100 randomly selected stocks against the five systematic factors. They use a time-series regression for each stock (e.g., 60 months of data), therefore estimating 100 regressions, one for each stock.
2. Estimate the reward earned per unit of exposure to each risk factor. For each month, regress the return of each stock against the five betas estimated. The coefficient on each beta is the extra average return earned as beta increases (i.e., it is an estimate of the risk premium for that risk factor from that month's data). These estimates are of course subject to sampling error. Therefore, average the risk premium estimates across months. The average response of return to risk is less subject to sampling error.

The risk premiums are in the middle column of the table in the next column.

Notice that some risk premiums are negative. The risk premium should be positive for risk factors you don't want exposure to, but negative for factors you do want exposure to. For example, you should desire securities that have higher returns when inflation increases and be willing to accept lower expected returns on such securities; this shows up as a negative risk premium.

<table><tr><td>Factor</td><td>Factor Risk Premium</td><td>Factor Betas for Niagara Mohawk</td></tr><tr><td>Term structure</td><td>0.425</td><td>1.0615</td></tr><tr><td>Interest rates</td><td>-0.051</td><td>-2.4167</td></tr><tr><td>Exchange rates</td><td>-0.049</td><td>1.3235</td></tr><tr><td>Business cycle</td><td>0.041</td><td>0.1292</td></tr><tr><td>Inflation</td><td>-0.069</td><td>-0.5220</td></tr><tr><td>Other macro factors</td><td>0.530</td><td>0.3046</td></tr></table>

The table implies that average returns are related to factor betas as follows:

$$
\begin{array}{l} r _ {f} +. 4 2 5 \beta_ {\text {t e r m s t r u c}} - . 0 5 1 \beta_ {\text {i n t r a t e}} \\ - . 0 4 9 \beta_ {\text {e x r a t e}} +. 0 4 1 \beta_ {\text {b u s c y c l e}} - . 0 6 9 \beta_ {\text {i n f l a t i o n}} +. 5 3 0 \beta_ {\text {o t h e r}} \\ \end{array}
$$

Finally, to obtain the cost of capital for a particular firm, the authors estimate the firm's betas against each source of risk, multiply each factor beta by the "cost of factor risk" from the table above, sum over all risk sources to obtain the total risk premium, and add the risk-free rate.

For example, the beta estimates for Niagara Mohawk appear in the last column of the table above. Therefore, its cost of capital is

$$
\begin{array}{l} \text {C o s t} = r _ {f} +. 4 2 5 (1. 0 6 1 5) - 0. 5 1 (- 2. 4 1 6 7) \\ - . 0 4 9 (1. 3 2 3 5) +. 0 4 1 (. 1 2 9 2) \\ - . 0 6 9 (-. 5 2 2 0) +. 5 3 0 (. 3 0 4 6) \\ = r _ {f} +. 7 2 \\ \end{array}
$$

In other words, the monthly cost of capital for Niagara Mohawk is .72\% above the monthly risk-free rate. Its annualized risk premium is therefore .72\% × 12 = 8.64\%.

*Edwin J. Elton, Martin J. Gruber, and Jianping Mei, "Cost of Capital Using Arbitrage Pricing Theory: A Case Study of Nine New York Utilities," Financial Markets, Institutions, and Instruments 3 (August 1994), pp. 46-68.

We pointed out earlier that one application of the CAPM is to provide "fair" rates of return for regulated utilities. The multifactor APT can be used to the same end. The nearby box summarizes a study in which the APT was applied to find the cost of capital for regulated electric companies. Notice that empirical estimates for interest rate and inflation risk premiums in the box are negative, as we argued was reasonable in our discussion of Example 10.2.

# 10.5 The Fama-French (FF) Three-Factor Model

The APT shows us how multiple risk factors can result in a multifactor SML. But how can we identify the most likely sources of systematic risk? One approach comes from Merton's multifactor CAPM, discussed in Chapter 9, in which the extra-market risk factors are due to hedging demands against a range of risks associated with either consumption or investment opportunities. Another approach, which is far more common, uses firm characteristics that seem on empirical grounds to proxy for exposure to systematic risk. The factors chosen are variables that on past evidence have predicted average returns well and therefore may be capturing risk premiums. One example of this approach is the Fama and French three-factor model and its many extensions, which have come to dominate empirical research in security returns:4


$$
R _ {i t} = \alpha_ {i} + \beta_ {i M} R _ {M t} + \beta_ {i S M B} \mathrm {S M B} _ {t} + \beta_ {i H M L} \mathrm {H M L} _ {t} + e _ {i t} \tag {10.9}
$$ where


SMB = Small Minus Big (i.e., the return of a portfolio of small stocks in excess of the return on a portfolio of large stocks).

HML = High Minus Low (i.e., the return of a portfolio of stocks with a high book-to-market ratio in excess of the return on a portfolio of stocks with a low book-to-market ratio).

The market index is the first of the Fama-French factors and is expected to capture systematic risk originating from macroeconomic factors.

The two extra-market factors are chosen because of long-standing observations that firm size, measured by market capitalization (the market value of outstanding equity), and the book-to-market ratio (book value per share divided by stock price) predict deviations of average stock returns from levels consistent with the CAPM. Fama and French justify this model on empirical grounds: While SMB and HML are not themselves obvious candidates for relevant risk factors, the argument is that they may proxy for hard-to-measure more-fundamental variables. For example, Fama and French point out that firms with high book-to-market ratios are more likely to be in financial distress and that small stocks may be more vulnerable to deterioration in business conditions. Thus, these variables may capture sensitivity to risk factors in the macroeconomy. More evidence on the Fama-French model appears in Chapter 13.

The problem with empirical approaches such as the Fama-French model is that the extra-market factors in these models cannot be clearly identified with a source of risk that is of obvious concern to a significant group of investors. Black points out that when researchers scan and rescan the database of security returns in search of explanatory factors (an activity often called data-snooping), they may eventually uncover past "patterns" that are due purely to chance. However, Fama and French have shown that size and book-to-market ratios have predicted average returns in different time periods and in markets all over the world, thus mitigating potential effects of data-snooping.

$^{4}$ Eugene F. Fama and Kenneth R. French, "Multifactor Explanations of Asset Pricing Anomalies," Journal of Finance 51 (1996), pp. 55-84.
Interpreting the returns on the SMB and HML portfolios is a bit subtle because both portfolios are zero-net-investment positions, long in one portfolio (e.g., small firms) and short in another (big firms). Therefore, one cannot compute profit per dollar invested. The "return" for the SMB portfolio is actually the profit on the overall position per dollar invested in the small-cap firms (or, equivalently, per dollar shorted in the large-cap firms). By the way, the market excess return is also a zero-net-investment portfolio: Every dollar invested in the market is financed with a short position in (i.e., borrowing at) the risk-free rate.
Fischer Black, "Beta and Return," Journal of Portfolio Management 20 (1993), pp. 8-18.

The persistent risk premiums associated with Fama-French factors suggest that they reflect a multifactor CAPM based on extra-market hedging demands rather than yet-unexplained anomalies, where firm characteristics are correlated with alpha values. We revisit this question in Chapter 13.

# Estimating and Implementing a Three-Factor SML

In Chapter 8, we estimated the single-index model for U.S. Steel. Now we are ready to estimate a three-factor model and see what it implies about the equilibrium expected rate of return on U.S. Steel stock. We begin by estimating U.S. Steel's beta on each of the Fama-French factors. Therefore, we generalize regression Equation 10.1 of the single-factor model and fit the following multiple regression equation, where we use U.S. Steel's ticker symbol,  $X$ , to denote the stock in Equation 10.10:

$$ r _ {X, t} - r _ {f, t} = \alpha_ {X} + \beta_ {M} \left(r _ {M, t} - r _ {f, t}\right) + \beta_ {\mathrm {H M L}} r _ {\mathrm {H M L}, t} + \beta_ {\mathrm {S M B}} r _ {\mathrm {S M B}, t} + e _ {X, t} \tag {10.10}
$$

The three betas on the right-hand side of Equation 10.10 measure U.S. Steel's sensitivities to the three hypothesized sources of systematic risk: the market index  $(M)$ , the value-versus-growth factor (HML), and the size factor (SMB).

Table 10.1 shows estimates of both the single-factor and three-factor index models. The intercept in each regression is the estimate of U.S. Steel's (monthly) alpha over the sample period. The coefficient on the market index excess return,  $r_{M} - r_{f}$ , is the estimate of U.S. Steel's market risk, while the coefficients on the returns of SMB and HML are estimates of its betas against the two extra-market risk factors.

U.S. Steel is only a moderately large firm. Its roughly \$5 billion market capitalization in early 2022 puts in somewhere between the 50th and 60th size percentile. On the other hand, its book-to-market ratio, about 1.5, is quite high, in the top decile. Perhaps not surprisingly, then, its beta against SMB is low and not even close to statistical significance, while its beta on HML is above 1 and easily significant. Given the significance of the extra-market factor, it is not surprising that the  $R$ -square in the three-factor model is greater than in the single-factor model, while the residual standard deviation is lower.

<table><tr><td rowspan="2"></td><td colspan="2">Single-index model</td><td colspan="2">Three-factor model</td></tr><tr><td>Regression Coefficient</td><td>t-Statistic</td><td>Regression Coefficient</td><td>t-Statistic</td></tr><tr><td>Intercept (alpha, \%)</td><td>-2.034</td><td>-0.991</td><td>-0.745</td><td>-0.363</td></tr><tr><td>r_m - r_f</td><td>2.030</td><td>4.785</td><td>1.771</td><td>4.074</td></tr><tr><td>SMB</td><td></td><td></td><td>0.369</td><td>0.487</td></tr><tr><td>HML</td><td></td><td></td><td>1.249</td><td>2.303</td></tr><tr><td>R-square</td><td>0.283</td><td></td><td>0.352</td><td></td></tr><tr><td>Residual std dev (\%)</td><td>15.171</td><td></td><td>14.675</td><td></td></tr></table>

# Table 10.1

Estimates of single-index and three-factor Fama-French regressions for U.S. Steel, monthly data,

5 years ending in 2021.

Source:Authors' calculations.

Using the three-factor model to estimate expected returns requires forecasts of the premiums on the two extra-market risk premiums as well as that on the market index. The historical-average market risk premium has been about  $8.8\%$ , and those for SMB and HML have been  $3.0\%$  and  $4.2\%$ , respectively. Therefore, if the risk-free rate is  $2\%$ , we can calculate U.S. Steel's expected return using the estimates in Table 10.1 as follows.

$$
\begin{array}{l} E \left(r _ {X}\right) = r _ {f} + \beta_ {X, M} \left[ E \left(r _ {M}\right) - r _ {f} \right] + \beta_ {X, \mathrm {S M B}} E \left(r _ {\mathrm {S M B}}\right) + \beta_ {X, \mathrm {H M L}} E \left(r _ {\mathrm {H M L}}\right) \\ = 2 \% + (1.771 \times 8.8 \%) + (.369 \times 3.0 \%) + (1.249 \times 4.2 \%) = 23.9 \% \\ \end{array}
$$

If instead we use the beta estimate from the single-index model, we obtain a somewhat lower expected return:

$$
E \left(r _ {X}\right) = r _ {f} + \beta \left[ E \left(r _ {M}\right) - r _ {f} \right] = 2 \% + 2.030 \times 8.8 \% = 19.9 \%
$$

While U.S. Steel's beta against the market index is lower in the three-factor model, that lower sensitivity is more than offset by its exposure to the HML factor.

Notice that in neither case do we add the regression estimate of alpha to the forecast of expected return. Equilibrium expected returns depend only on risk; the expectation of alpha in market equilibrium must be zero. While a security may have outperformed its benchmark return in a particular sample period (as reflected in a positive alpha), we would not expect that performance to continue into the future. In fact, as an empirical matter, individual firm alphas show virtually no persistence over time.

# Extensions of the Three-Factor Model: A First Look

Since Fama and French published their three-factor model, there has been a crush of research looking for other factors that may explain the cross-section of average security returns. Here, we will provide only a first look at some of the more prominent candidates, deferring a closer look until a little later in the text.

But don't lose track of the more important general message of the APT. Once you understand a specific application such as the three-factor model, you can view all of its extensions as variants on an important theme: There are a limited number of factor portfolios, each of which proxies for a source of systematic risk. Given the exposures to these risks, or "factor betas," you can then examine the extent to which average returns vary with those exposures. This results in a multifactor security market line. This is exactly what we did for the three-factor model, and that methodology extends in a straightforward way to other multifactor models.

One of the earliest, and still most prominent, additions to the list of relevant factors was a momentum factor introduced by Carhart. His factor is the difference in the returns between stocks that performed well in the last year and those that performed poorly. The factor is often called UMD (for up minus down), analogously to SMB or HML. Persistence of recent relative performance captures a sort of momentum effect.

Fama and French offer an extension of their own model, which they call a five-factor pricing model. Their extension uses their original three factors augmented by a profitability factor and an investment factor. The profitability factor is commonly called RMW (for robust minus weak) and is the difference in returns on diversified stock portfolios with strong versus weak profitability. The investment factor is measured by CMA (conservative minus aggressive), the difference in returns on diversified portfolios comprising stocks of low-investment versus high-investment firms.

Notice that all of these factors are measured as the difference in returns of competing investment portfolios, for example, small versus large firms, and thus all may be interpreted as capturing a risk premium associated with some characteristic. Along these lines, you may have noticed as well that the market risk premium is also the difference in two security returns:  $r_{M} - r_{f}$  is the difference in returns between the market index and the risk-free asset.

The overwhelming number of new factors that have now appeared in the literature has been dubbed the factor zoo. Many of these may be redundant, simply minor variants on a common theme. Others may be spurious, the result of data snooping or "false positives" due to overly aggressive examination of historical returns. We will return to these issues in the next few chapters.

# Smart Betas and Multifactor Models

We've seen that both the CAPM and the APT have multifactor generalizations. There are at least two important implications of these generalizations. First, investors should be aware that their portfolios are subject to more than one systematic source of risk, and that they need to think about how much exposure they wish to establish to each systematic factor. Second, when they evaluate investment performance, they should be aware that risk premiums come from exposure to several risk factors and that alpha needs to be computed controlling for each of them.

A group of products called smart-beta ETFs has important implications for both of these issues. They are analogous to index ETFs, but instead of tracking a broad market index using market capitalization weights, they are funds designed to provide exposure to specific characteristics such as value, growth, or volatility. Among the more prominent themes are the extra-market factors of the Fama-French five-factor model: size (SMB), value (HML), operating profitability (RMW), and investment (CMA). Another common factor is momentum, which is the return on a portfolio that buys recent well-performing stocks and sells poorly performing ones. Other recently considered factors are based on volatility, as measured by the standard deviation of stock returns; liquidity; and dividend yield.

Smart-beta ETFs allow investors to tailor portfolio exposures either toward or away from a range of extra-market risk factors using easy-to-trade index-like products. They are therefore well-suited to a multifactor environment. They also raise the question of appropriate performance evaluation. When investors can cheaply and effectively manage exposure to multidimensional sources of systematic risk, investment success is captured by a multifactor alpha, providing a clean measure of the success of security selection. This is the message of the multifactor SML presented in Equation 7.13.

# SUMMARY

1. Multifactor models seek to improve the explanatory power of single-factor models by explicitly accounting for the various components of systematic risk. These models use indicators intended to capture a wide range of macroeconomic risk factors.
2. Once we allow for multiple risk factors, we conclude that the security market line also ought to be multidimensional, with exposure to each risk factor contributing to the total risk premium of the security.
3. A (risk-free) arbitrage opportunity arises when two or more security prices enable investors to construct a zero-net-investment portfolio that will yield a sure profit. The presence of arbitrage opportunities will generate a large volume of trades that puts pressure on security prices. This pressure will continue until prices reach levels that preclude such arbitrage.
4. When securities are priced so that there are no risk-free arbitrage opportunities, we say that they satisfy the no-arbitrage condition. Price relationships that satisfy the no-arbitrage condition are important because we expect them to hold in real-world markets.
5. Portfolios are called "well diversified" if they include a large number of securities and the investment proportion in each is sufficiently small. The proportion of any particular security in a well-diversified portfolio is small enough so that, for all practical purposes, a reasonable change in that security's rate of return will have a negligible effect on the portfolio's rate of return.
6. In a single-factor security market, all well-diversified portfolios have to satisfy the expected return-beta relationship of the CAPM to satisfy the no-arbitrage condition. If all well-diversified portfolios satisfy the expected return-beta relationship, then individual securities also must satisfy this relationship, at least approximately.
7. The APT does not require the restrictive assumptions of the CAPM and its (unobservable) market portfolio. The price of this generality is that the APT does not guarantee this relationship for all securities at all times.
8. A multifactor APT generalizes the single-factor model to accommodate several sources of systematic risk. The multidimensional security market line predicts that exposure to each risk factor contributes to the security's total risk premium by an amount equal to the security's factor beta times the risk premium of the factor portfolio that tracks that source of risk.
9. The multifactor extension of the single-factor CAPM, the ICAPM, predicts the same multidimensional security market line as the multifactor APT. The ICAPM suggests that priced extra-market risk factors will be the ones that lead to significant hedging demand by a substantial fraction of investors. Other approaches to the multifactor APT are more empirically based, where the extra-market factors are selected based on past ability to predict risk premiums.

# KEY TERMS single-factor model

multifactor model factor loading
factor beta arbitrage pricing theory (APT)

arbitrage
Law of One Price risk arbitrage

well-diversified portfolio factor portfolio

# KEY EQUATIONS

Single-factor model:  $R_{i} = E(R_{i}) + \beta_{i}F + e_{i}$

Multifactor model (here, 2 factors,  $F_{1}$  and  $F_{2}$ ):  $R_{i} = E(R_{i}) + \beta_{i1}F_{1} + \beta_{i2}F_{2} + e_{i}$

Single-index model:  $R_{i} = \alpha_{i} + \beta_{i}R_{M} + e_{i}$

Multifactor SML (here, 2 factor-tracking portfolios, labeled 1 and 2):

$$
\begin{array}{l} E (r _ {i}) = r _ {f} + \beta_ {i 1} [ E (r _ {1}) - r _ {f} ] + \beta_ {i 2} [ E (r _ {2}) - r _ {f} ] \\ = r _ {f} + \beta_ {i 1} E (R _ {1}) + \beta_ {i 2} E (R _ {2}) \\ \end{array}
$$ where  $\beta_{i1}$  and  $\beta_{i2}$  measure the stock's typical response to returns on each tracking portfolio and the risk premiums on the two portfolios are  $E(R_1)$  and  $E(R_2)$ .


1. Suppose that two factors have been identified for the U.S. economy: the growth rate of industrial production, IP, and the inflation rate, IR. IP is expected to be  $3\%$ , and IR  $5\%$ . A stock with a beta of 1 on IP and .5 on IR currently is expected to provide a rate of return of  $12\%$ . If industrial production actually grows by  $5\%$ , while the inflation rate turns out to be  $8\%$ , what is your revised estimate of the expected rate of return on the stock?
2. The APT itself does not provide guidance concerning the factors that one might expect to determine risk premiums. How should researchers decide which factors to investigate? Why, for example, is industrial production a reasonable factor to test for a risk premium?
3. If the APT is to be a useful theory, the number of systematic factors in the economy must be small. Why?
4. Suppose that there are two independent economic factors,  $F_{1}$  and  $F_{2}$ . The risk-free rate is  $6\%$ , and all stocks have independent firm-specific components with a standard deviation of  $45\%$ . Portfolios  $A$  and  $B$  are both well-diversified with the following properties:

<table><tr><td>Portfolio</td><td>Beta on F1</td><td>Beta on F2</td><td>Expected Return</td></tr><tr><td>A</td><td>1.5</td><td>2.0</td><td>31\%</td></tr><tr><td>B</td><td>2.2</td><td>-0.2</td><td>27\%</td></tr></table>

What is the expected return-beta relationship in this economy?

5. Consider the following data for a one-factor economy. Both portfolios are well diversified.

<table><tr><td>Portfolio</td><td>E(r)</td><td>Beta</td></tr><tr><td>A</td><td>12\%</td><td>1.2</td></tr><tr><td>F</td><td>6\%</td><td>0.0</td></tr></table>

Suppose that another portfolio, portfolio  $E$ , is well diversified with a beta of .6 and expected return of  $8\%$ . Would an arbitrage opportunity exist? If so, what would be the arbitrage strategy?

6. Assume that portfolios  $A$  and  $B$  are both well diversified and that  $E(r_{A}) = 12\%$  and  $E(r_{B}) = 9\%$ . If the economy has only one factor, and  $\beta_{A} = 1.2$ , whereas  $\beta_{B} = .8$ , what must be the risk-free rate?
7. Assume that stock market returns have the market index as a common factor, and that all stocks in the economy have a beta of 1 on the market index. Firm-specific returns all have a standard deviation of  $30\%$ .

Suppose that an analyst studies 20 stocks and finds that one-half of them have an alpha of  $+2\%$ , and the other half have an alpha of  $-2\%$ . Suppose the analyst invests \$1 million in an equally weighted portfolio of the positive alpha stocks, and shorts \$1 million of an equally weighted portfolio of the negative alpha stocks.

a. What are the expected profit (in dollars) and standard deviation of the analyst's profit?
b. How does your answer change if the analyst examines 50 stocks instead of 20 stocks? 100 stocks?

8. Assume that security returns are generated by the single-index model,

$$
R _ {i} = \alpha_ {i} + \beta_ {i} R _ {M} + e _ {i}
$$ where  $R_{i}$  is the excess return for security  $i$  and  $R_{M}$  is the market's excess return. The risk-free rate is  $2\%$ . Suppose also that there are three securities,  $A$ ,  $B$ , and  $C$ , characterized by the following data:


<table><tr><td>Security</td><td>βi</td><td>E(Ri)</td><td>σ(ei)</td></tr><tr><td>A</td><td>0.8</td><td>10\%</td><td>25\%</td></tr><tr><td>B</td><td>1.0</td><td>12</td><td>10</td></tr><tr><td>C</td><td>1.2</td><td>14</td><td>20</td></tr></table> a. If  $\sigma_{M} = 20\%$  , calculate the variance of returns of securities  $A,B,$  and  $C$

$b$ . Now assume that there are an infinite number of assets with return characteristics identical to those of  $A$ ,  $B$ , and  $C$ , respectively. If one forms a well-diversified portfolio of type  $A$  securities, what will be the mean and variance of the portfolio's excess returns? What about portfolios composed only of type  $B$  or  $C$  stocks?
c. Is there an arbitrage opportunity in this market? What is it? Analyze the opportunity graphically.

9. The SML relationship states that the expected risk premium on a security in a one-factor model must be directly proportional to the security's beta. Suppose that this were not the case. For example, suppose that expected return rises more than proportionately with beta as in the figure below.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/a77b2ad68211dfa0ab19d94cdc97f73fd577ba10c4ebd8fdc4332baee2c5e2be.jpg) a. How could you construct an arbitrage portfolio? (Hint: Consider combinations of portfolios  $A$  and  $B$ , and compare the resultant portfolio to  $C$ .)

b. Some researchers have examined the relationship between average returns on diversified portfolios and the  $\beta$  and  $\beta^2$  of those portfolios. What should they have discovered about the effect of  $\beta^2$  on portfolio return?

10. Consider the following multifactor (APT) model of security returns for a particular stock.

<table><tr><td>Factor</td><td>Factor Beta</td><td>Factor Risk Premium</td></tr><tr><td>Inflation</td><td>1.2</td><td>6\%</td></tr><tr><td>Industrial production</td><td>0.5</td><td>8</td></tr><tr><td>Oil prices</td><td>0.3</td><td>3</td></tr></table> a. If T-bills currently offer a  $6\%$  yield, find the expected rate of return on this stock if the market views the stock as fairly priced.

b. Suppose that the market expects the values for the three macro factors given in column 1 below, but that the actual values turn out as given in column 2. Calculate the revised expectations for the rate of return on the stock once the "surprises" become known.

<table><tr><td>Factor</td><td>Expected Value</td><td>Actual Value</td></tr><tr><td>Inflation</td><td>5\%</td><td>4\%</td></tr><tr><td>Industrial production</td><td>3</td><td>6</td></tr><tr><td>Oil prices</td><td>2</td><td>0</td></tr></table>

11. Suppose that the market can be described by the following three sources of systematic risk with associated risk premiums.

<table><tr><td>Factor</td><td>Risk Premium</td></tr><tr><td>Industrial production (I)</td><td>6\%</td></tr><tr><td>Interest rates (R)</td><td>2</td></tr><tr><td>Consumer confidence (C)</td><td>4</td></tr></table>

The return on a particular stock is generated according to the following equation:

$$ r = 15 \% + 1.0 I + .5 R + .75 C + e
$$

Find the equilibrium rate of return on this stock using the APT. The T-bill rate is  $6\%$ . Is the stock over- or underpriced? Explain.

12. As a finance intern at Pork Products, Jennifer Wainwright's assignment is to come up with fresh insights concerning the firm's cost of capital. She decides that this would be a good opportunity to try out the new material on the APT that she learned last semester. She decides that three promising factors would be (a) the return on a broad-based index such as the S&P 500; (b) the level of interest rates, as represented by the yield to maturity on 10-year Treasury bonds; and (c) the price of hogs, which is particularly important to her firm. Her plan is to find the beta of Pork Products against each of these factors by using a multiple regression and to estimate the risk premium associated with each exposure factor. Comment on Jennifer's choice of factors. Which are most promising with respect to the likely impact on her firm's cost of capital? Can you suggest improvements to her specification?

# Use the following information to answer Problems 13 through 16:

Orb Trust (Orb) has historically leaned toward a passive management style of its portfolios. The only model that Orb's senior management has promoted in the past is the capital asset pricing model (CAPM). Now Orb's management has asked one of its analysts, Kevin McCracken, CFA, to investigate the use of the arbitrage pricing theory (APT) model.

McCracken believes that a two-factor APT model is adequate, where the factors are the sensitivity to changes in real GDP and changes in inflation. McCracken has concluded that the factor risk premium for real GDP is  $8\%$ , while the factor risk premium for inflation is  $2\%$ . He estimates for Orb's High Growth Fund that the sensitivities to these two factors are 1.25 and 1.5, respectively. Using his APT results, he computes the equilibrium expected return of the fund. For comparison purposes, he then uses fundamental analysis to compute the actually expected return of Orb's High Growth Fund. McCracken finds that the two estimates of the Orb High Growth Fund's expected return are equal.

McCracken asks a fellow analyst, Sue Kwon, to provide an estimate of the expected return of Orb's Large Cap Fund based on fundamental analysis. Kwon, who manages the fund, says that the expected return is  $8.5\%$  above the risk-free rate. McCracken then applies the APT model to the Large Cap Fund. He finds that the sensitivities to real GDP and inflation are .75 and 1.25, respectively.

McCracken's manager at Orb, Jay Stiles, asks McCracken to construct a portfolio that has a unit sensitivity to real GDP growth but is not affected by inflation. McCracken is confident in his APT estimates for the High Growth Fund and the Large Cap Fund. He then computes the sensitivities for a third fund, Orb's Utility Fund, which has sensitivities equal to 1.0 and 2.0, respectively. McCracken will use his APT results for these three funds to create a portfolio with a unit exposure to real GDP and no exposure to inflation. He calls the fund the "GDP Fund." Stiles says such a GDP Fund would be good for clients who are retirees who live off the steady income of their investments. McCracken does not agree with Stiles, but says that the fund would be a good choice if upcoming supply-side macroeconomic policies of the government are successful.


13. According to the APT, if the risk-free rate is  $4\%$ , what should be McCracken's estimate of the expected return of Orb's High Growth Fund?
14. With respect to McCracken's APT model estimate of Orb's Large Cap Fund and the information Kwon provides, is an arbitrage opportunity available?
15. If the GDP Fund is constructed from the other three funds, which of the following would be its weight in the Utility Fund? (a)  $-2.2$ ; (b)  $-3.2$ ; or (c) .3.
16. With respect to the comments of Stiles and McCracken concerning for whom the GDP Fund would be appropriate:

$a$  . McCracken is correct and Stiles is wrong.
$b$  Both are correct.
$c$ . Stiles is correct and McCracken is wrong.

17. Assume a universe of  $n$  (large) securities for which the largest residual variance is not larger than  $n\sigma_{M}^{2}$ . Construct as many different weighting schemes as you can that generate well-diversified portfolios.
18. Small firms generally have relatively high loadings (high betas) on the SMB (small minus big) factor.

$a$  .Explain why this is not surprising.
b. Now suppose two unrelated small firms merge. Each will be operated as an independent unit of the merged company. Would you expect the stock market behavior of the merged firm to differ from that of a portfolio of the two previously independent firms?
c. How does the merger affect market capitalization?
$d$ . What is the prediction of the Fama-French 3-factor model for the risk premium on the merged firm compared to the weighted average of the two component companies?
e. Do we see here a problem in applying the FF model?

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/241da92ba3f99fa51af12c01d3ba3bd8bfd23b3c90851fd5c554cc5c3cf3f087.jpg)

1. Jeffrey Bruner, CFA, uses the capital asset pricing model (CAPM) to help identify mispriced securities. A consultant suggests Bruner use arbitrage pricing theory (APT) instead. In comparing CAPM and APT, the consultant makes the following arguments:

$a$ . Both the CAPM and APT require a mean-variance efficient market portfolio.
$b$ . Neither the CAPM nor the APT assumes normally distributed security returns.
c. The CAPM assumes that one specific factor explains security returns but APT does not.

State whether each of the consultant's arguments is correct or incorrect. Indicate, for each incorrect argument, why the argument is incorrect.

2. Assume that both  $X$  and  $Y$  are well-diversified portfolios and the risk-free rate is  $8\%$ .

<table><tr><td>Portfolio</td><td>Expected Return</td><td>Beta</td></tr><tr><td>X</td><td>16\%</td><td>1.00</td></tr><tr><td>Y</td><td>12</td><td>0.25</td></tr></table>

In this situation you would conclude that portfolios  $X$  and  $Y$ : a. Are in equilibrium.

b. Offer an arbitrage opportunity.
$c$  .Are both underpriced.
$d$ . Are both fairly priced.

3. A zero-investment portfolio with a positive alpha could arise if:

$a$ . The expected return of the portfolio equals zero.
$b$ . The capital market line is tangent to the opportunity set.
c. The Law of One Price remains unviolated.
$d$ . A risk-free arbitrage opportunity exists.

4. According to the theory of arbitrage:

$a$ . High-beta stocks are consistently overpriced.
$b$ . Low-beta stocks are consistently overpriced.
c. Positive alpha investment opportunities will quickly disappear.
$d$ . Rational investors will pursue arbitrage opportunities consistent with their risk tolerance.

5. The general arbitrage pricing theory (APT) differs from the single-factor capital asset pricing model (CAPM) because it:

$a$  .Places more emphasis on market risk.
$b$ . Minimizes the importance of diversification.
c. Recognizes multiple unsystematic risk factors.
$d$ . Recognizes multiple systematic risk factors.

6. An investor takes as large a position as possible when an equilibrium price relationship is violated. This is an example of:

$a$ . A dominance argument.
$b$ . The mean-variance efficient frontier.
c. Arbitrage activity.
$d$ . The capital asset pricing model.

7. The feature of the general version of the arbitrage pricing theory (APT) that offers the greatest potential advantage over the simple CAPM is the: a. Identification of anticipated changes in production, inflation, and term structure of interest rates as key factors explaining the risk-return relationship.

$b$ . Superior measurement of the risk-free rate of return over historical time periods.
c. Variability of coefficients of sensitivity to the APT factors for a given asset over time.
$d$ . Use of several factors instead of a single market index to explain the risk-return relationship.

8. In contrast to the capital asset pricing model, arbitrage pricing theory:

$a$ . Requires that markets be in equilibrium.
$b$ . Uses risk premiums based on micro variables.
$c$ . Specifies the number and identifies specific factors that determine expected returns.
$d$ . Does not require the restrictive assumptions concerning the market portfolio.

# E-INVESTMENTS EXERCISES

The factors that underlie the APT model are the unanticipated realizations of macro factors such as economic activity or the inflation rate. Citigroup tracks and makes publicly available some of these macroeconomic surprises. Use your Web browser to search for Citigroup's Economic Surprise Index or its Inflation Surprise Index. Identify some recent months in which there was a large positive surprise in these variables.

a. What was the market return in those months? (You can find market index returns on finance .yahoo.com.) b. Based on these returns, was unexpectedly high economic activity good news or bad news?
c. What about inflation surprises?
d. Would a stock with a positive loading on economic activity surprises be expected to have a higher or lower equilibrium return?
e. What about a stock with a positive loading on inflation surprises?

# SOLUTIONS TO CONCEPT CHECKS

1. The GDP beta is 1.2 and GDP growth is  $1\%$  better than previously expected. So you will increase your forecast for the stock return by  $1.2 \times 1\% = 1.2\%$ . The revised forecast is for an  $11.2\%$  return.
2.  $a$ . This portfolio is not well diversified. The weight on the first security does not decline as  $n$  increases. Regardless of how much diversification there is in the rest of the portfolio, you will not shed the firm-specific risk of this security.
b. This portfolio is well diversified. Even though some stocks have three times the weight of other stocks (1.5/n versus .5/n), the weight on all stocks approaches zero as  $n$  increases. The impact of any individual stock's firm-specific risk will approach zero as  $n$  becomes ever larger.
3. The equilibrium return is  $E(r) = r_{f} + \beta_{P1}[E(r_{1}) - r_{f}] + \beta_{P2}[E(r_{2}) - r_{f}]$ . Using the data in Example 10.3:

$$
E (r) = 4 + . 2 \times (10 - 4) + 1. 4 \times (12 - 4) = 16.4 \%
$$


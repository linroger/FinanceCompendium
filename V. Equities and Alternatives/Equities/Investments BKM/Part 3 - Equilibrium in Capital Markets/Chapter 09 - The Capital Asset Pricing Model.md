# The Capital Asset Pricing Model

# 9

THE CAPITAL ASSET pricing model, almost always referred to as the CAPM, is one of the centerpieces of modern financial economics. The model gives us a precise prediction of the relationship that we should observe between the risk of an asset and its expected return. This relationship serves two vital functions. First, it provides a benchmark rate of return for evaluating possible investments. For example, if we are analyzing securities, we might be interested in whether the expected return we forecast for a stock is more or less than its "fair" return given its risk. Second, the model helps us to make an educated guess as to the expected return on assets that have not yet been traded in the marketplace. For example, how do we price an initial public offering of stock? How will a major new investment project affect the return investors require on a company's stock?


Although the CAPM does not fully withstand empirical tests, it is widely used because of the insight it offers. All generalizations of the model retain its central conclusion that only systematic risk will be rewarded with a risk premium. While the best way to measure that systematic risk can be subtle, all the more complex cousins of the basic CAPM can be viewed as variations on this fundamental theme.

# 9.1 The Capital Asset Pricing Model

The capital asset pricing model is a set of predictions concerning equilibrium expected returns on risky assets. Harry Markowitz laid down the foundation of modern portfolio management in 1952. The CAPM was published 12 years later in articles by William Sharpe, $^{1}$  John Lintner, $^{2}$  and Jan Mossin. $^{3}$  The time for this gestation indicates that the leap from Markowitz's portfolio selection model to the CAPM is not trivial.

William Sharpe, "Capital Asset Prices: A Theory of Market Equilibrium," Journal of Finance, September 1964.
2John Lintner, "The Valuation of Risk Assets and the Selection of Risky Investments in Stock Portfolios and Capital Budgets," Review of Economics and Statistics, February 1965.
$^{3}$ Jan Mossin, "Equilibrium in a Capital Asset Market," Econometrica, October 1966.

The CAPM is based on two sets of assumptions, listed in Table 9.1. The first set pertains to investor behavior and allows us to assume that investors are alike in most important ways, specifically that they are all mean-variance optimizers with a common time horizon and a common set of information reflected in their use of an identical input list. The second set of assumptions pertains to the market setting, asserting that markets are well-functioning with few impediments to trading. Even a cursory consideration of these assumptions reveals that they are fairly strong, and one may justifiably wonder whether a theory derived from them will withstand empirical tests. Therefore, we will devote considerable attention later in the chapter to how the predictions of the model may change when one or more of these restrictive assumptions are relaxed.

Still, the simple version of the CAPM is a good place to start. While the appropriate quantification of risk and the prediction for the exact risk-return trade-off may differ across more sophisticated variants of the model, the central implication of the basic model, that risk premia will be proportional to exposure to systematic risk and independent of firm-specific risk, remains generally valid in its extensions. In part because of this commonality, the simple CAPM remains in wide use despite its empirical shortcomings.

Therefore, we begin by supposing that all investors optimize their portfolios using the Markowitz model of efficient diversification. That is, each investor uses an input list (expected returns and covariance matrix) to draw an efficient frontier employing all available risky assets and identifies an efficient risky portfolio,  $P$ , by drawing the tangent CAL (capital allocation line) to the frontier as in Figure 9.1, Panel A. As a result, each investor holds securities in the investable universe with weights arrived at by the Markowitz optimization process. Notice that this framework employs Assumptions 1(a) (investors are all mean-variance optimizers), 2(a) (all assets trade and therefore can be held in investors' portfolios), and 2(b) (investors can borrow or lend at the risk-free rate and therefore can select portfolios from the capital allocation line of the tangency portfolio).

The CAPM asks what would happen if all investors shared an identical investable universe and used the same input list to draw their efficient frontiers. The use of a common input list obviously requires Assumption 1(c), but notice that it also relies on Assumption 1(b), that each investor is optimizing for a common investment horizon. It also implicitly assumes that investor choices will not be affected by differences in tax rates or trading costs that could affect net rates of return (Assumptions 2[c] and 2[d]).

# The Market Portfolio

Not surprisingly in light of our assumptions, investors would calculate identical efficient frontiers of risky assets. Facing the same risk-free rate (Assumption 2[b]), they would

# Table 9.1

The assumptions of the CAPM

1. Individual behavior a. Investors are rational, mean-variance optimizers.

b. Their common planning horizon is a single period.
c. Investors all use identical input lists, an assumption often termed homogeneous expectations. Homogeneous expectations are consistent with the assumption that all relevant information is publicly available.

2. Market structure a. All assets are publicly held and trade on public exchanges.

b. Investors can borrow or lend at a common risk-free rate, and they can take short positions on traded securities.
c. No taxes.
d. No trading costs.

then draw an identical tangent CAL and naturally all would arrive at the same risky portfolio,  $P$ . All investors therefore would choose the same set of weights for each risky asset. What must be these weights?

A key insight of the CAPM is this: Because the market portfolio is the aggregation of all investors' risky portfolios, each of which is identical, it too will have those same weights. (Notice that this conclusion relies on Assumption 2[a] because it requires that all assets can be traded and included in investors' portfolios.) Therefore, if all investors choose the same risky portfolio, it must be the market portfolio, that is, the value-weighted portfolio of all assets in the investable universe.

The proportion of each stock in this portfolio equals the market value of the stock (price per share times number of shares outstanding) divided by the sum of the market value of all stocks. This implies that if the weight of Microsoft stock, for example, in each common risky portfolio is  $1\%$ , then Microsoft also will constitute  $1\%$  of the market portfolio. The same principle applies to the proportion of any stock in each investor's risky portfolio. As a result, the optimal risky portfolio of all investors is simply a share of the market portfolio in Figure 9.1.

We conclude that the capital allocation line based on each investor's

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/d9b52b9b8ce515523d4e5a54634673e6a3d42dbbbe22628682bf6e0fab821b7d.jpg)
A: The Efficient Frontier of Risky Assets with the Optimal CAL
B: The Efficient Frontier and the Capital Market Line optimal risky portfolio will in fact also be the capital market line, as depicted in Figure 9.1, Panel B. This implication will allow us to say much about the risk-return trade-off.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/e952656f54d070cecff221587a1558323df3ea38902dc04f8d35eab434ba9156.jpg)
Figure 9.1 Capital allocation line and the capital market line


Now suppose that the optimal portfolio of our investors does not include the stock of some company, such as Delta Airlines. When all investors avoid Delta stock, the demand is zero, and Delta's price takes a free fall. As Delta stock gets progressively cheaper, it becomes ever more attractive and other stocks look relatively less attractive. Ultimately, Delta reaches a price where it is attractive enough to include in the optimal stock portfolio.

Such a price adjustment process guarantees that all stocks will be included in the optimal portfolio. It shows that all assets have to be included in the market portfolio. The only issue is the price at which investors will be willing to include a stock in their optimal risky portfolio.

# The Passive Strategy Is Efficient

In Chapter 6 we defined the capital market line (CML) as the CAL that is constructed from a money market account (or T-bills) and the market portfolio. Now you can fully appreciate why the CML is an interesting CAL. In the simple world of the CAPM, the market portfolio,  $M$ , is the optimal tangency portfolio on the efficient frontier.

In this scenario, the market portfolio held by all investors is based on the common input list, which incorporates all relevant information about the universe of securities. This means that investors can skip the trouble of doing security analysis—they can obtain an efficient portfolio simply by holding the market portfolio. (Of course, if everyone were to follow this strategy, no one would perform security analysis and this result would no longer hold. We discuss this issue in greater depth in Chapter 11 on market efficiency.)

If security analysis, which is the heart of active investment policy, is not advantageous, then passive strategies will be efficient. These call for diversified portfolios formed without incurring the research and trading expenses associated with an active approach. In particular, passive strategies focus on index portfolios that mimic the broad market portfolio, thus achieving the broadest diversification with extremely low implementation cost. For this reason, we sometimes call this result a mutual fund theorem. The mutual fund theorem is another incarnation of the separation property discussed in Chapter 7. If all investors would freely choose to hold the market portfolio, they would not object if all stocks were replaced with shares of a single mutual fund holding that market portfolio.

In reality, different investment managers do create risky portfolios that differ from the market index. We attribute this largely to the use of different input lists in the formation of their optimal risky portfolios. Nevertheless, the practical significance of the mutual fund theorem is that a passive investor, one who does not engage in security analysis, may view the market index as a reasonable first approximation to an efficient risky portfolio.

The nearby box summarizes some of the arguments for indexing. If the passive strategy is efficient, then attempts to beat it simply generate trading and research costs with no offsetting benefit and, ultimately, inferior results.

# Concept Check 9.1

If there are only a few investors who perform security analysis, and all others hold the market portfolio,  $M$ , would the CML still be the efficient CAL for investors who do not engage in security analysis? Why or why not?

# The Risk Premium of the Market Portfolio

In Chapter 6 we discussed how individual investors go about deciding capital allocation. If all investors choose to invest in portfolio  $M$  and the risk-free asset, what can we deduce about the equilibrium risk premium of portfolio  $M$ ?

Recall that each individual investor chooses a proportion  $y$ , allocated to the optimal portfolio  $M$ , such that

$$ y = \frac {E \left(r _ {M}\right) - r _ {f}}{A \sigma_ {M} ^ {2}} \tag {9.1}
$$ where  $E(r_{M}) - r_{f} = E(R_{M})$  is the market risk premium (expected excess return).


In the simplified CAPM economy, risk-free investments involve borrowing and lending among investors. Any borrowing position must be offset by the lending position of the creditor. This means that net borrowing and lending across all investors must be zero,

Index funds have long been considered one of the smartest investments you can make. They're affordable and well diversified, and they tend to generate solid returns over time, outperforming most actively managed funds. In 2007, Warren Buffett made a 1 million bet that an S&P 500 index fund would beat the returns of an actively managed hedge fund over 10 years—and he won in a landslide.

Buffett's victorious bet may be reason enough for some to start adding index funds to their portfolio, but if you need more convincing, read on to understand what index funds are and what makes them so popular.

Index funds are mutual funds—bundles of other investments, like stocks and bonds—that track the performance of a market index, like the S&P 500. Some indexes are tailored to specific sectors, geography, and stock exchanges. The funds that track these indexes contain the same investments in approximately the same proportion as the index itself.

There are three key benefits to investing in index funds: broad diversification, low costs, and solid returns.

1. Broad diversification The most obvious benefit of investing in index funds is that your portfolio becomes instantly diversified. For instance, an index fund that tracks the S&P 500 has 500 different investments. When your money is spread out among so many assets, your ups and downs will be smaller.
2. Low costs An expense ratio is an annual fee that mutual funds charge their shareholders, usually a percentage of invested assets. Actively managed mutual funds often have expense ratios above  $1\%$  because portfolio managers spend resources picking investments. So if you invest \$100,000, your expenses can be more than \$ 1,000 annually.

Index funds, on the other hand, are passively managed. Because they track a specified index, there's little work for portfolio managers to charge for, and these savings are passed on in the form of lower expense ratios. Many charge less than  $0.07\%$  of assets. If you invest \$100,000 in a mutual fund with a 0.07\%$  expense ratio, you will pay only \70 per year, versus \$1,000 with a  $1\%$  expense ratio. Not small potatoes.

Naturally, index funds have a lower turnover ratio than actively managed funds. Turnover ratios measure the percentage of a mutual fund's holdings that are replaced in a single year. If those assets are worth more when they're sold than when you bought them, the difference between the two prices is considered a capital gain and you'll have to pay taxes on this amount. This isn't as much of a concern with index funds, thanks to their low turnover, about  $1\%$  to  $2\%$  per year, compared with  $20\%$  or higher for some actively managed funds.

3. Solid returns As Buffett knew when he made his 1 million bet, even the smartest and most diligent portfolio managers don't consistently beat index funds. Only 23.51\% of actively managed mutual funds outperformed the S&P 500 over five years, according to the latest data from Standard & Poor's.

Whether you're new to investing or not, an index fund is a great asset to add to your portfolio. It takes a little time to find the right index fund for you, but once you do, you can sit back and let your money grow.

Source: Kailey Fralick, "3 Reasons You Should Be Investing in Index Funds," The Motley Fool, March 1, 2019, https://www.fool.com/investing/2019/03/01/3-reasons-you-should-be-investing-in-index-funds.aspx. Reprinted with permission.

and, therefore, the average position in the risky portfolio is  $100\%$ , or  $\overline{y} = 1$ . Setting  $y = 1$  in Equation 9.1; substituting the representative investor's risk aversion,  $\overline{A}$ , for  $A$ ; and rearranging, we find that the risk premium on the market portfolio is related to its variance by the average degree of risk aversion:

$$
E \left(R _ {M}\right) = \bar {A} \sigma_ {M} ^ {2} \tag {9.2}
$$

When investors purchase stocks, their demand drives up prices, thereby reducing expected rates of return and risk premiums. But when risk premiums fall, investors will shift some of their funds from the risky market portfolio into the risk-free asset. In equilibrium, the risk premium on the market portfolio must be just high enough to induce investors to hold the available supply of stocks. If the risk premium is too high, there will be excess demand for securities, and prices will rise; if it is too low, investors will not hold enough stock to absorb the supply, and prices will fall. Equation 9.2 tells us that the equilibrium risk premium of the market portfolio is therefore proportional both to the risk of the market, as measured by the variance of its returns, and to the degree of risk aversion of the average investor, denoted by  $\overline{A}$ .

# Concept Check 9.2

Data from the last 95 years for the broad U.S. equity market yield the following statistics: average excess return,  $8.9\%$ ; standard deviation,  $20.3\%$ .

a. To the extent that these averages approximated investor expectations for the period, what must have been the average coefficient of risk aversion?
b. If the coefficient of risk aversion were actually 3.5, what risk premium would have been consistent with the market's historical standard deviation?

# Expected Returns on Individual Securities

The CAPM is built on the insight that the appropriate risk premium on an asset will be determined by its contribution to the risk of investors' overall portfolios. Portfolio risk is what matters to investors and is what governs the risk premiums they demand.

Remember that in the CAPM, all investors use the same input list, that is, the same estimates of expected returns, variances, and covariances, and, therefore, all end up using the market as their optimal risky portfolio. To calculate the variance of the market portfolio, we use the bordered covariance matrix with the market portfolio weights, as discussed in Chapter 7. We highlight GE in this depiction of the  $n$  stocks in the market portfolio so that we can measure the contribution of GE to the risk of the market portfolio.

Recall that we calculate the variance of the portfolio by summing over all the elements of the covariance matrix, first multiplying each element by the portfolio weights from the row and the column. The contribution of one stock to portfolio variance therefore can be expressed as the sum of all the covariance terms in the column corresponding to the stock, where each covariance is first multiplied by both the stock's weight from its row and the weight from its column.

<table><tr><td>Portfolio Weights</td><td>w1</td><td>w2</td><td>...</td><td>wGE</td><td>...</td><td>wn</td></tr><tr><td>w1</td><td>Cov(R1, R1)</td><td>Cov(R1, R2)</td><td>...</td><td>Cov(R1, RGE)</td><td>...</td><td>Cov(R1, Rn)</td></tr><tr><td>w2</td><td>Cov(R2, R1)</td><td>Cov(R2, R2)</td><td>...</td><td>Cov(R2, RGE)</td><td>...</td><td>Cov(R2, Rn)</td></tr><tr><td>:</td><td>:</td><td>:</td><td></td><td>:</td><td></td><td>:</td></tr><tr><td>wGE</td><td>Cov(RGE, R1)</td><td>Cov(RGE, R2)</td><td>...</td><td>Cov(RGE, RGE)</td><td>...</td><td>Cov(RGE, Rn)</td></tr><tr><td>:</td><td>:</td><td>:</td><td></td><td>:</td><td></td><td>:</td></tr><tr><td>wn</td><td>Cov(Rn, R1)</td><td>Cov(Rn, R2)</td><td>...</td><td>Cov(Rn, RGE)</td><td>...</td><td>Cov(Rn, Rn)</td></tr></table>

Thus, the contribution of GE's stock to the variance of the market portfolio is

$$
\begin{array}{l} w _ {\mathrm {G E}} \left[ w _ {1} \operatorname {C o v} \left(R _ {1}, R _ {\mathrm {G E}}\right) + w _ {2} \operatorname {C o v} \left(R _ {2}, R _ {\mathrm {G E}}\right) + \dots + w _ {\mathrm {G E}} \operatorname {C o v} \left(R _ {\mathrm {G E}}, R _ {\mathrm {G E}}\right) + \dots \right. \tag {9.3} \\ + w _ {n} \operatorname {C o v} \left(R _ {n}, R _ {\mathrm {G E}}\right) ] \\ \end{array}
$$

An alternative approach would be to measure GE's contribution to market variance as the sum of the elements in the row and the column corresponding to GE. In this case, GE's contribution would be twice the sum in Equation 9.3. The approach that we take allocates contributions to portfolio risk among securities in a convenient manner in that the sum of the contributions of each stock equals the total portfolio variance, whereas the alternative measure of contribution would sum to twice the portfolio variance. This results from a type of double-counting because adding both the rows and the columns for each stock would result in each entry in the matrix being added twice. Using either approach, GE's contribution to the variance of the market return would be directly proportional to the covariance of its returns with the market.

Notice that every term in the square brackets can be slightly rearranged as follows:  $w_{i}\mathrm{Cov}(R_{i},R_{\mathrm{GE}}) = \mathrm{Cov}(w_{i}R_{i},R_{\mathrm{GE}})$ . Moreover, because covariance is additive, the sum of the terms in the square brackets is

$$
\sum_ {i = 1} ^ {n} w _ {i} \operatorname {C o v} \left(R _ {i}, R _ {\mathrm {G E}}\right) = \sum_ {i = 1} ^ {n} \operatorname {C o v} \left(w _ {i} R _ {i}, R _ {\mathrm {G E}}\right) = \operatorname {C o v} \left(\sum_ {i = 1} ^ {n} w _ {i} R _ {i}, R _ {\mathrm {G E}}\right) \tag {9.4}
$$

But because  $\sum_{i=1}^{n} w_i R_i = R_M$ , Equation 9.4 implies that

$$
\sum_ {i = 1} ^ {n} w _ {i} \mathrm {C o v} (R _ {i}, R _ {\mathrm {G E}}) = \mathrm {C o v} (R _ {M}, R _ {\mathrm {G E}})
$$ and, therefore, GE's contribution to the variance of the market portfolio (Equation 9.3) may be more simply stated as  $w_{\mathrm{GE}} \mathrm{Cov}(R_M, R_{\mathrm{GE}})$ .


This should not surprise us. For example, if the covariance between GE and the rest of the market is negative, then GE makes a "negative contribution" to portfolio risk: By providing excess returns that move inversely with the rest of the market, GE stabilizes the return on the overall portfolio. If the covariance is positive, GE makes a positive contribution to overall portfolio risk because its returns reinforce swings in the rest of the portfolio.

We also observe that the contribution of GE to the risk premium of the market portfolio is  $w_{\mathrm{GE}} E(R_{\mathrm{GE}})$ . Therefore, the reward-to-risk ratio for investments in GE can be expressed as

$$
\frac {\text {G E ' s c o n t r i b u t i o n t o r i s k p r e m i u m}}{\text {G E ' s c o n t r i b u t i o n t o v a r i a n c e}} = \frac {w _ {\mathrm {G E}} E \left(R _ {\mathrm {G E}}\right)}{w _ {\mathrm {G E}} \operatorname {C o v} \left(R _ {\mathrm {G E}} , R _ {M}\right)} = \frac {E \left(R _ {\mathrm {G E}}\right)}{\operatorname {C o v} \left(R _ {\mathrm {G E}} , R _ {M}\right)}
$$

The market portfolio is the tangency (efficient mean-variance) portfolio. The reward-to-risk ratio for investment in the market portfolio is

$$
\frac {\text {M a r k e t} R _ {M})}{\text {M a r k e t} \text {v a r i a n c e}} = \frac {E (R _ {M})}{\sigma_ {M} ^ {2}} \tag {9.5}
$$

The ratio in Equation 9.5 is often called the market price of risk because it quantifies the extra return that investors demand to bear portfolio risk. Notice that for components of the efficient portfolio, such as shares of GE, we measure risk as the contribution to portfolio variance (which depends on its covariance with the market). In contrast, for the efficient portfolio itself, variance is the appropriate measure of risk.

A basic principle of equilibrium is that all investments should offer the same reward-to-risk ratio. If the ratio were better for one investment than another, investors would rearrange their portfolios, tilting toward the alternative with the better trade-off and shying away from the other. Such activity would impart pressure on security prices until the ratios

A positive contribution to variance doesn't imply that diversification isn't beneficial. Excluding GE from the portfolio would require that its weight be assigned to the remaining stocks and that reallocation would increase variance even more. Variance is reduced by including more stocks and reducing the weight of each (i.e., diversifying), despite the fact that each positive-covariance security makes some contribution to variance. Notice in Equation 9.1 that the optimal allocation to the risky portfolio is proportional to the ratio of the risk premium to variance, not to standard deviation.

7Unfortunately, the market portfolio's Sharpe ratio

$$
\frac {E (r _ {M}) - r _ {f}}{\sigma_ {M}}
$$ sometimes is referred to as the market price of risk, but this is not correct. The price of risk relates risk premium to variance (or to covariance for incremental risk), not standard deviation.


were equalized. Therefore, we conclude that the reward-to-risk ratios of GE and the market portfolio should be equal:

$$
\frac {E \left(R _ {\mathrm {G E}}\right)}{\operatorname {C o v} \left(R _ {\mathrm {G E}} , R _ {M}\right)} = \frac {E \left(R _ {M}\right)}{\sigma_ {M} ^ {2}} \tag {9.6}
$$

To determine the fair risk premium of GE stock, we rearrange Equation 9.6 slightly to obtain

$$
E \left(R _ {\mathrm {G E}}\right) = \frac {\operatorname {C o v} \left(R _ {\mathrm {G E}} , R _ {M}\right)}{\sigma_ {M} ^ {2}} E \left(R _ {M}\right) \tag {9.7}
$$

The ratio  $\mathrm{Cov}(R_{\mathrm{GE}}, R_M) / \sigma_M^2$  measures the contribution of GE stock to the variance of the market portfolio as a fraction of the total variance of the market portfolio. The ratio is called beta and is denoted by  $\beta$ . Using this measure, we can restate Equation 9.7 as

$$
E \left(r _ {\mathrm {G E}}\right) = r _ {f} + \beta_ {\mathrm {G E}} \left[ E \left(r _ {M}\right) - r _ {f} \right] \tag {9.8}
$$

This expected return-beta (or mean-beta) relationship is the most familiar expression of the CAPM to practitioners.

The expected return-beta relationship tells us that the total expected rate of return is the sum of the risk-free rate (compensation for "waiting," i.e., the time value of money) plus a risk premium (compensation for "worrying," specifically about investment returns). Moreover, it makes a very specific prediction about the size of the risk premium: It is the product of a "benchmark risk premium" (that of the broad market portfolio) and the relative risk of the particular asset as measured by its beta (its contribution to the risk of the overall risky portfolio).

Notice what the risk premium does not depend on: the total volatility of the investment. So, for example, the stock market performance of a firm developing a new drug that may be a great success or a total failure may have extremely high variance, but investors in those shares will not, for that reason, demand a high expected return. They recognize that because the success of the firm is largely independent of macroeconomic risk and the return on the rest of their (diversified) portfolio, its contribution to overall portfolio risk is low and therefore does not warrant a large risk premium. The CAPM predicts that systematic risk should "be priced," meaning that it commands a risk premium, but firm-specific risk should not be priced by the market.

If the expected return-beta relationship holds for each individual asset, it must hold for any combination or weighted average of assets. Suppose that some portfolio  $P$  has weight  $w_{k}$  for stock  $k$ , where  $k$  takes on values 1, ..., n. Writing out the CAPM Equation 9.8 for each stock, and multiplying each equation by the weight of the stock in the portfolio, we obtain these equations, one for each stock:

$$
\begin{array}{l} w _ {1} E (r _ {1}) = w _ {1} r _ {f} + w _ {1} \beta_ {1} [ E (r _ {M}) - r _ {f} ] \\ + w _ {2} E (r _ {2}) = w _ {2} r _ {f} + w _ {2} \beta_ {2} [ E (r _ {M}) - r _ {f} ] \\ + \quad \dots = \dots \\ + w _ {n} E (r _ {n}) = w _ {n} r _ {f} + w _ {n} \beta_ {n} [ E (r _ {M}) - r _ {f} ] \\ E (r _ {P}) = r _ {f} + \beta_ {P} [ E (r _ {M}) - r _ {f} ] \\ \end{array}
$$

Summing each column shows that the CAPM holds for the overall portfolio because  $E(r_{P}) = \sum_{k} w_{k} E(r_{k})$  is the expected return on the portfolio and  $\beta_{P} = \sum_{k} w_{k} \beta_{k}$  is the portfolio beta. Incidentally, this result has to be true for the market portfolio itself,

$$
E (r _ {M}) = r _ {f} + \beta_ {M} [ E (r _ {M}) - r _ {f} ]
$$

Indeed, this is a tautology because  $\beta_{M} = 1$ , as we can verify by noting that

$$
\beta_ {M} = \frac {\operatorname {C o v} \left(R _ {M} , R _ {M}\right)}{\sigma_ {M} ^ {2}} = \frac {\sigma_ {M} ^ {2}}{\sigma_ {M} ^ {2}} = 1 \tag {9.9}
$$

This also establishes 1 as the weighted-average value of beta across all assets. If the market beta is 1, and the market is a portfolio of all assets in the economy, the weighted-average beta of all assets must be 1. Hence, betas greater than 1 are considered aggressive in that investment in high-beta stocks entails above-average sensitivity to market swings. Betas below 1 can be described as defensive.

A word of caution: We often hear that well-managed firms will provide high rates of return. We agree this is true if one measures the firm's return on its investments in plant and equipment. The CAPM, however, predicts returns on investments in the securities of the firm.

Let's say that everyone knows a firm is well run. Its stock price will therefore be bid up, and consequently returns to stockholders who buy at those high prices will not be excessive. Security prices, in other words, already reflect public information about a firm's prospects; therefore, only the risk of the company (as measured by beta in the context of the CAPM) should affect expected returns. In a well-functioning market, investors receive high expected returns only if they are willing to bear risk.

Of course, investors do not directly observe expected returns on securities. Rather, they observe security prices and bid those prices up or down. Expected rates of return can at most be inferred from the prices investors pay compared to the cash flows those investments are expected to generate.

# Concept Check 9.3

Suppose that the risk premium on the market portfolio is estimated at  $8\%$  with a standard deviation of  $22\%$ . What is the risk premium on a portfolio invested  $25\%$  in Toyota and  $75\%$  in Ford if they have betas of 1.10 and 1.25, respectively?

# The Security Market Line

The expected return-beta relationship is a reward-risk equation. The beta of a security is the appropriate measure of its risk because beta is proportional to the risk the security contributes to the optimal risky portfolio.

Risk-averse mean-variance investors measure the risk of the optimal risky portfolio by its variance. Hence, we would expect the risk premium on an individual asset to depend on its contribution to the risk of the portfolio. The beta of a stock measures its contribution to the variance of the market portfolio, and, therefore, the required risk premium is a function of beta. The CAPM confirms this intuition, stating further that the security's risk premium is directly proportional to both the beta and the risk premium of the market portfolio; that is, the risk premium equals  $\beta [E(r_M) - r_f]$ .

The expected return-beta relationship can be portrayed graphically as the security market line (SML) in Figure 9.2. Because the market's beta is 1, the slope is the risk premium of the market portfolio. At the point on the horizontal axis where  $\beta = 1$ , we can read off the vertical axis the expected return on the market portfolio.

It is useful to compare the security market line to the capital market line. The CML graphs the risk premiums of efficient portfolios (i.e., portfolios composed of the market and the risk-free asset) as a function of portfolio standard deviation. This is appropriate because standard deviation is a valid measure of risk for efficiently diversified portfolios that are candidates for an investor's overall portfolio. The SML, in contrast, graphs individual asset risk premiums as a function of asset risk. The relevant measure of risk for individual assets held as parts of well-diversified portfolios is not the asset's standard deviation or variance; it is, instead, the contribution of the asset to the portfolio variance, which we measure by the asset's beta. The SML is valid for both efficient portfolios and individual assets.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/3a880d56e4b67b015b955b1a102a48540740680017e6f1a46b7c1b39e5f0eedf.jpg)
Figure 9.2 The security market line


The security market line offers a benchmark for the evaluation of investment performance. It provides the expected rate of return investors demand as compensation for both beta risk as well as the time value of money.[8] Because the security market line is the graphic representation of the expected return-beta relationship, "fairly priced" assets plot exactly on the SML; that is, their expected returns are commensurate with their risk. All securities lie on the SML in market equilibrium.

We see here how the CAPM may be of use in the money-management industry. Suppose that security analysis is performed to calculate the return a money manager actually expects. (Notice that we depart here from the simple CAPM world in that some investors now apply their own unique analysis to derive an "input list" that may differ from that of their competitors.) If a stock is perceived to be a good buy, or underpriced, it will provide an expected return in excess of the equilibrium return stipulated by the SML. Underpriced stocks therefore plot above the SML: Given their betas, their expected returns are greater than dictated by the CAPM. Overpriced stocks plot below the SML.


The difference between the equilibrium and actually expected rate of return on a stock is called the stock's alpha, denoted by  $\alpha$ . For example, if the market return is expected to be  $14\%$ , a stock has a beta of 1.2, and the T-bill rate is  $6\%$ , the SML would predict an expected return on the stock of  $6 + 1.2(14 - 6) = 15.6\%$ . If one believed the stock would provide an expected return of  $17\%$ , the implied alpha would be  $1.4\%$  (see Figure 9.3).

# Concept Check 9.4

Stock XYZ has an expected return of  $12\%$  and risk of  $\beta = 1$ . Stock ABC has expected return of  $13\%$  and  $\beta = 1.5$ . The market's expected return is  $11\%$ , and  $r_f = 5\%$ .

a. According to the CAPM, which stock is a better buy?
b. What is the alpha of each stock? Plot the SML and each stock's risk-return point on one graph. Show the alphas graphically.

One might say that security analysis (which we treat in Part Five) is about uncovering securities with nonzero alphas. This analysis suggests that the starting point of portfolio management can be a passive market-index portfolio. The portfolio manager will then increase the weights of securities with positive alphas and decrease the weights of securities with negative alphas. We showed one strategy (the Treynor-Black model) for adjusting the portfolio weights in such a manner in Chapter 8.

The CAPM is also useful in capital budgeting decisions. For a firm considering a new project, the CAPM can provide the required rate of return that the project needs to yield, based on its beta, to be acceptable to investors. Managers can use the CAPM to obtain this cutoff internal rate of return (IRR), or "hurdle rate," for the project.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/cb92df6e21b50141873d3d40e23f4f18464019db039ebddb4bfa2f7b4471d61e.jpg)
Figure 9.3 The SML and a positive-alpha stock. The risk-free rate is  $6\%$ , and the market's expected return is  $14\%$ , implying a market risk premium of  $8\%$ .

# Example 9.1 The CAPM and Capital Budgeting

An expansion of a firm's production facilities will cost  \$100 million and is expected to generate incremental cash flows of\$ 20 million a year for 8 years. What is the project's NPV? If the project beta is .8, the market risk premium is 8\%, and the risk-free rate is 2\%, then the discount rate for the project is  $2 + .8 \times 8 = 8.4\%$ . The project's net present value is therefore:

$$
\begin{array}{l} N P V = -100 + 20 \times \text {Annuity Factor} (8.4\%, 8 \text {years}) \\ = - 1 0 0 + 2 0 \times 5. 6 6 0 = \$ 1 3. 2 1 \text {m i l l i o n} \\ \end{array}
$$

Yet another use of the CAPM is in utility rate cases. The question in those cases is what rate of return a regulated utility should be allowed to earn on its investment in plant and equipment. The next example illustrates.

# Example 9.2 Using the CAPM for Regulated Utilities

Suppose that the equityholders of a regulated utility have invested 100 million in the firm and that the beta of the equity is .6. If the T-bill rate is 6 \% and the market risk premium is 8 \%, then the fair expected profits to the firm would be assessed as 6 + .6 \times 8 = 10.8 \% of the \$ 100 million investment, or \$ 10.8 million. The firm would be allowed to set prices at a level expected to generate these profits.

# Concept Check 9.5

The risk-free rate is  $8\%$  and the expected return on the market portfolio is  $16\%$ . A firm considers a project that is expected to have a beta of 1.3.

a. What is the required rate of return on the project?
b. If the expected IRR of the project is  $19\%$ , should it be accepted?

# The CAPM and the Single-Index Market

The index model from the last chapter asserted that security returns could be described by Equation 8.8, which is restated here as Equation 9.10:

$$
R _ {i} = \alpha_ {i} + \beta_ {i} R _ {M} + e _ {i} \tag {9.10}
$$

The index model states that the realized excess return on any stock is the sum of the realized excess return due to marketwide factors,  $\beta_{i}R_{M}$ , a nonmarket premium,  $\alpha_{i}$ , and firm-specific outcomes summarized by  $e_i$ . Because the expected value of firm-specific surprises is zero, the expected excess return, equivalently the risk premium, of stock  $i$  would then be given by Equation 9.11:

$$
E \left(R _ {i}\right) = \alpha_ {i} + \beta_ {i} E \left(R _ {M}\right) \tag {9.11}
$$

The expected return-beta relationship of the CAPM, which we rearrange very slightly from Equation 9.8, is  $E(r_{i}) - r_{f} = \beta_{i}[E(r_{M}) - r_{f}]$ . Stated in terms of excess returns, this risk-return relation is:

$$
E \left(R _ {i}\right) = \beta_ {i} E \left(R _ {M}\right) \tag {9.12}
$$

Comparing Equations 9.11 and 9.12, we see that the prediction of the CAPM is that for every stock, the equilibrium value of  $\alpha_{i}$  is 0. The logic of the CAPM is that the only reason for a stock to provide a premium over the risk-free rate is that the stock imposes systematic risk for which the investor must be compensated. A positive alpha implies reward without risk. Investors will relentlessly pursue positive alpha stocks and bid up their prices; at those higher prices, expected rates of return will be lower. Symmetrically, investors will shun or short sell negative alpha stocks, driving down their prices and driving up their expected returns. This portfolio rebalancing will continue until all alpha values are driven to zero. At this point, investors will be content to fully diversify and eliminate unique risk, that is, to hold the broadest possible market portfolio. When all stocks have zero alphas, the market portfolio is the optimal risky portfolio.

Of course, if you estimate the index model regression (Equation 9.10), you will find that in any particular sample period, some firms will do better than investors initially expected and therefore display positive alphas; others will disappoint and provide negative alphas. But if the CAPM is correct, estimated values of alpha for any group of stocks should cluster around zero. We will turn to some of the empirical evidence on this prediction in Chapter 11.

# 9.2 Assumptions and Extensions of the CAPM

From the outset, we noted that the CAPM is an elegant model built on a set of uncomfortably restrictive assumptions. This raises the question of what happens to the predicted risk-return relationship when we attempt to generalize the model to accommodate more realistic assumptions. In this section, we will review some variants of the basic model. We organize the discussion by the particular assumption from Table 9.1 that is called into question. We will discover that parts of the model change in important ways, but the fundamental distinction between systematic and diversifiable risk remains.

# Identical Input Lists

Assumption 1(c) (investors optimize with the same input list) appears ominously restrictive, but it actually is not all that problematic. When most information is public, it would not be surprising for investors to be close to agreement on firms' prospects. Moreover, trades of investors who derive different input lists will offset and prices will reflect consensus expectations. We will later allow for the possibility that some investors expend resources to obtain private information and exploit prices that don't reflect the insights derived from this information. But regardless of their success, it is reasonable to conclude that, at least in the absence of private information, investors should assume alpha values are zero.

On the other hand, impediments to selling securities short (which we ruled out in Assumption 2[b]) can upend this conclusion. We start with the fact that short positions are not as easy to take as long ones for three reasons:

1. The liability of investors who hold a short position in an asset is potentially unlimited because the price may rise without limit. Hence, a large short position requires large collateral, and proceeds cannot be used to invest in other risky assets.
2. There is a limited supply of shares of any stock to be borrowed by would-be short sellers. It often happens that investors simply cannot find shares to borrow in order to short.
3. Many investment companies are prohibited from short sales. The U.S. and other countries further restrict short sales by regulation.

Why are short sales important? When prices rise above intrinsic values, rational investors will take short positions, thus holding down the price. But given impediments to short sales, the natural market actions that would normally prevent prices from rising to unsustainable levels are likewise impeded. Such price run-ups are precursors to a correction or even a crash and are a good part of what defines a "bubble."

Taxes also cast doubt on Assumption 1(c) because two investors can realize different after-tax returns from the same stock. Such distortions to the "input list" could, in principle, lead to different after-tax optimal risky portfolios; hence, the CAPM required Assumption 2(c) (no taxes). Nevertheless, despite an extension to the CAPM that incorporates personal taxes on dividends and capital gains,[10] there is no decisive evidence that taxes are a major factor in stock returns. A plausible explanation for this negative finding relies on "clientele" and supply effects. If high tax-bracket investors shy away from high-yield (dividend-paying) stocks and thus force down their prices, tax-exempt investors will view the stocks as a bargain and take up the slack in demand. On the other end, if corporations see that high dividend yields reduce stock prices, they simply will substitute stock repurchases for dividends, reinforcing the clientele effect in neutralizing tax effects.

# Risk-Free Borrowing and the Zero-Beta Model

Restrictions on borrowing (or significantly higher rates on borrowing than on lending), which violate Assumption 2(b), also can create problems for the CAPM because borrowers and lenders will arrive at different tangency portfolios and thus different optimal risky portfolios. The market portfolio will no longer be each investor's optimal risky portfolio.

Efficient frontier portfolios have a number of interesting characteristics, independently derived by Merton and Roll. Some of these are:

1. Any portfolio that is a combination of two frontier portfolios is itself on the efficient frontier.
2. Because each investor will still choose his or her optimal risky portfolio from the efficient frontier, the market portfolio will be an aggregation of efficient portfolios and therefore (from the first property) will itself be efficient.
3. Every portfolio on the efficient frontier, except for the global minimum-variance portfolio, has a "companion" portfolio on the bottom (inefficient) half of the frontier with which it is uncorrelated. Because it is uncorrelated, the companion portfolio is referred to as the zero-beta portfolio of the efficient portfolio. Focusing on the market portfolio  $M$  and its zero-beta companion portfolio  $Z$ , one can derive the following CAPM-like equation:

$$
E \left(r _ {i}\right) - E \left(r _ {Z}\right) = \left[ E \left(r _ {M}\right) - E \left(r _ {Z}\right) \right] \frac {\operatorname {C o v} \left(r _ {i} , r _ {M}\right)}{\sigma_ {M} ^ {2}} = \beta_ {i} \left[ E \left(r _ {M}\right) - E \left(r _ {Z}\right) \right] \tag {9.13}
$$

Equation 9.13 resembles the SML of the CAPM, except that the risk-free rate is replaced with the expected return on the zero-beta companion of the market-index portfolio. Fischer Black used these properties to show that Equation 9.13 is the CAPM equation that results when investors face restrictions on borrowing. $^{12}$

Risk-tolerant investors are the ones who would like to borrow to leverage up their position in the tangency portfolio. But limits to their ability to borrow or spreads between borrowing and lending rates impede their ability to do so. Investors who would otherwise wish to borrow and leverage the tangency portfolio but who find it impossible or costly to do so will instead tilt their portfolios toward high-beta (high expected return) stocks and away from low-beta ones. As a result, prices of high-beta stocks will rise, and their risk premiums will fall. In Equation 9.13, the risk premium on the market portfolio is smaller than predicted by the basic CAPM because the expected return on the zero-beta portfolio is greater than the risk-free rate, and therefore the reward to bearing systematic risk is smaller. In other words, the SML will be flatter than in the simple CAPM.

# Labor Income and Other Nontraded Assets

The assertion that all assets are tradable (Assumption 2[a]) is essential for the conclusion that the market portfolio, which is so central to the CAPM, is the common risky portfolio chosen by all investors. In fact, many assets are not tradeable. Private businesses are a large and important part of the economy, but by definition, these businesses do not trade. Neither does human capital, the earning power of individuals. As a rough guide to relative magnitudes, we note that employee compensation averaged just about  $60\%$  of national

$^{11}$ Robert C. Merton, "An Analytic Derivation of the Efficient Portfolio Frontier," Journal of Financial and Quantitative Analysis, 1972; and Richard Roll, "A Critique of the Asset Pricing Theory's Tests: Part I: On Past and Potential Testability of the Theory," Journal of Financial Economics 4 (1977).
$^{12}$ Fischer Black, "Capital Market Equilibrium with Restricted Borrowing," Journal of Business, July 1972.

income for the five years ending in 2021. It seems clear that human capital is considerably higher than the total market value of traded assets. The market value of privately held corporations and businesses is of the same order of magnitude.

These considerations imply that investors may derive very different "optimal risky portfolios." Consider owners of a family business. Their wealth is already highly dependent on the success of the business. Prudence dictates that they avoid further investments in assets that are highly correlated with their business. Similarly, investors should avoid stock returns that are positively correlated with their personal income; for example, Delta employees should avoid investing in the airline and related businesses. Differential investment demands arising from this consideration can derail the mean-variance efficiency of the index portfolio.

To the extent that risk characteristics of private enterprises differ from those of traded securities, a portfolio of traded assets that best hedges the risk of typical private business would enjoy elevated demand from the population of private business owners. The price of assets in this portfolio will be bid up relative to the CAPM prediction, and the expected returns on these securities will be lower in relation to their systematic risk. In fact, Heaton and Lucas show that adding proprietary income to a standard asset-pricing model improves its predictive performance.[13]

The size of labor income and its special nature are of even greater concern for the validity of the CAPM. The possible effect of labor income on equilibrium returns can be appreciated from its important effect on personal portfolio choice. Human capital is less "portable" across time and may be more difficult to hedge using traded securities than nontraded business. This may induce hedging demand for stocks of labor-intensive firms with high wage expenses: These firms will do well when wage income is generally depressed, and thus serve as a hedge against wage income uncertainty. The resulting pressure on security prices may reduce the equilibrium expected return on these stocks to levels below those predicted by the CAPM.

Mayers derives the equilibrium expected return-beta equation for an economy in which individuals are endowed with labor income of varying size relative to their nonlabor capital. He finds that the mean-beta relation of the simple CAPM must be modified in a few key ways; for example, including human capital along with financial wealth in the market portfolio, which also requires accounting for the covariance of asset returns with the "portfolio" of aggregate human capital.

Other implications of labor income relate to the distribution of risk sharing across the economy. For example, young investors typically have a lot of human capital (they have many working years left in life) but little financial capital. Unless they can borrow to invest, they cannot buy a lot of equity. Therefore, middle-age or older investors have to bear most of the economy's financial risk; this concentration of financial risk on a subset of the population can result in a higher market risk premium than one would otherwise infer from Equation 9.2.[15]

# A Multiperiod Model and Hedge Portfolios

Assumption 1(a) states that only the mean and variance of wealth matter to investors. But consider these questions:

1. Would you rather have wealth of \$1.1 million and a price of oil of \$400 per barrel or \$1 million and oil priced at \$40 per barrel? If you are a big energy consumer, you may very well be better off with slightly less money and considerably lower energy prices. The lower energy-price scenario leaves you with more to spend on other consumption goods.
2. Would you rather have wealth of  \$1 million and a real interest rate of 10\%$  or 1.1 million and a real rate of  $1\%$ ? You may be better off with slightly less money but with the ability to invest it to earn higher returns. Your stream of consumption could easily be higher in the lower wealth—higher rate scenario.
 3. Would you rather have wealth of \$1 million with a market standard deviation of 10\% or \$1.1 million and a standard derivation of 50\%? You may be better off with slightly less money but with the lower volatility. You would then be more comfortable investing a greater share of your wealth in the market index, thereby earning a higher risk premium on your complete portfolio.

These examples show that investors should care about more than the risk and return of their wealth as measured in dollars. They should be more concerned with the stream of consumption that wealth can buy for them. Therefore, Assumption 1(a), that investors optimize over the mean and variance of the dollar value of their portfolios, is problematic. The assumption rules out concern with the correlation of asset returns with either inflation or prices of important consumption items such as housing or energy. It also rules out concern with the correlation between asset returns and the parameters of the "investment opportunity set," for example, changes in the volatility of asset returns. The extra demand for assets that can be used to hedge these "extra-market risks" would increase their prices and reduce their risk premiums relative to the prediction of the CAPM.

Similar extra-market risk factors would arise in a multiperiod model, which we ignored when we adopted Assumption 1(b), limiting investors to a common single-period horizon. Consider a possible decline in future interest rates. Investors would be unhappy about this event to the extent that it would reduce the expected income their investments could throw off in the future. Assets whose returns will be higher when interest rates fall (e.g., long-term bonds) would hedge this risk and thus command higher prices and lower risk premiums. Because of such hedging demands, correlation with any parameter describing future investment opportunities can result in violations of the CAPM mean-beta equation.

Robert C. Merton devised a model of asset pricing that allows us to examine the impacts of these hedging demands.[16] In his basic model, Merton relaxes the "single-period" assumption about investors. He envisions individuals who optimize a lifetime consumption/investment plan and who continually adapt their consumption/investment decisions to changes in wealth, prices, and investment opportunities. In one special case, when uncertainty about portfolio returns is the only source of risk and investment opportunities remain unchanged through time (i.e., there is no change in the risk-free rate or the probability distribution of the return on the market portfolio or individual securities), Merton's so-called intertemporal capital asset pricing model (ICAPM) predicts the same expected return-beta relationship as the simple CAPM.[17]

But the situation changes when we include additional sources of risk. These extra risks are of two general kinds. One concerns changes in the parameters describing investment opportunities, such as future risk-free rates, expected returns, or asset risk. Suppose that the real interest rate may change over time. If it falls in some future period, one's level of wealth will now support a lower stream of real consumption. Future spending plans, for example, for retirement spending, may be put in jeopardy. To the extent that returns on some securities are correlated with changes in the risk-free rate, a portfolio can be formed to hedge such risk, and investors will bid up the price (and bid down the expected return) of those hedge assets. Investors will sacrifice some expected return if they can find assets whose returns will be higher when other parameters (in this case, the real risk-free rate) change adversely.

The other additional source of risk concerns the prices of the consumption goods that can be purchased with any amount of wealth. Consider inflation risk. In addition to the expected level and volatility of nominal wealth, investors must be concerned about the cost of living—what those dollars can buy. Therefore, inflation risk is an important extramarket source of risk, and investors may be willing to sacrifice some expected return to purchase securities whose returns will be higher when the cost of living changes adversely. If so, hedging demands for securities that help to protect against inflation risk would affect portfolio choice and thus expected return. One can push this conclusion even further, arguing that empirically significant hedging demands may arise for important subsectors of consumer expenditures; for example, investors may bid up share prices of energy companies that will hedge energy price uncertainty. These sorts of effects may characterize any assets that hedge important extra-market sources of risk.

More generally, suppose we can identify  $K$  sources of extra-market risk and find  $K$  associated hedge portfolios. Then, Merton's ICAPM expected return-beta equation would generalize the SML to a multi-index version:

$$
E \left(R _ {i}\right) = \beta_ {i M} E \left(R _ {M}\right) + \sum_ {k = 1} ^ {K} \beta_ {i k} E \left(R _ {k}\right) \tag {9.14}
$$ where  $\beta_{iM}$  is the familiar security beta on the market-index portfolio and  $\beta_{ik}$  is the beta on the  $k$ th hedge portfolio. The equation predicts that the risk premium for security  $i$  is the sum of the compensation it commands for all of the relevant risk sources to which it is exposed. The first term is the usual risk premium for exposure to market risk. The other terms (in the summation sign) are benchmark risk premiums for each source of extra-market risk times the security beta with respect to that risk source. Thus, this expression generalizes the one-factor SML to a world with multiple sources of systematic risk.


# A Consumption-Based CAPM

The logic of the CAPM together with the hedging demands noted in the previous subsection suggest that it might be useful to center the model directly on consumption. Such models were pioneered by Mark Rubinstein, Robert Lucas, and Douglas Breeden.[18]

In a lifetime consumption/investment plan, the investor must in each period balance the allocation of current wealth between today's consumption and the savings and investment that will support future consumption. When optimized, the utility value from an additional dollar of consumption today must equal the utility value of the expected future consumption that could be financed by investing that marginal dollar.


Suppose you wish to increase expected consumption growth by allocating some of your savings to a risky portfolio. How would we measure the risk of these assets? As a general rule, investors will value additional income more highly during difficult economic times (when resources are scarce) than in affluent times (when consumption is already abundant). An asset will therefore be viewed as riskier in terms of consumption if it has positive covariance with consumption growth—in other words, if its payoff is higher when consumption is already high but lower when consumption is relatively restricted. Therefore, equilibrium risk premiums will be greater for assets that exhibit higher covariance with consumption growth. Developing this insight, we can write the risk premium on an asset as a function of its "consumption risk" as follows:

$$
E \left(R _ {i}\right) = \beta_ {i C} \mathrm {R P} _ {C} \tag {9.15}
$$ where portfolio  $C$  may be interpreted as a consumption-tracking portfolio (also called a consumption-mimicking portfolio), that is, the portfolio with the highest correlation with consumption growth;  $\beta_{iC}$  is the slope coefficient in the regression of asset  $i$ 's excess returns,  $R_i$ , on those of the consumption-tracking portfolio; and, finally,  $\mathrm{RP}_C$  is the risk premium associated with consumption uncertainty, which is measured by the expected excess return on the consumption-tracking portfolio:


$$
\mathrm {R P} _ {C} = E \left(R _ {C}\right) = E \left(r _ {C}\right) - r _ {f} \tag {9.16}
$$

Notice how similar this conclusion is to the conventional CAPM. The consumption-tracking portfolio in the consumption-based CAPM (often called the CCAPM) plays the role of the market portfolio in the conventional CAPM. This is consistent with its focus on the risk of consumption opportunities rather than the risk and return of the dollar value of the portfolio. The excess return on the consumption-tracking portfolio plays the role of the excess return on the market portfolio,  $M$ . Both approaches result in linear, single-factor models that differ mainly in the identity of the factor they use.

Because the CCAPM is so similar to the CAPM, one might wonder about its usefulness. Indeed, just as the CAPM is empirically flawed because not all assets are traded, the CCAPM has its own shortcomings. The attractiveness of this model is in that it compactly incorporates hedging demands surrounding consumption uncertainty as well as possible changes in the parameters that characterize investment opportunities. There is a price to pay for this compactness, however. Consumption growth figures are measured with significant error and published infrequently (monthly at the most), compared with financial assets, whose prices are available throughout the day. Nevertheless, some empirical research indicates that this model is more successful in explaining realized returns than the CAPM, which is a reason why students of investments should be familiar with it. We return to this issue, as well as empirical evidence concerning the CCAPM, in Chapter 13.

# Liquidity and the CAPM

Finally, transaction costs inhibit trades; this violates Assumption 2(d) (no transaction costs). In fact, the CAPM has little to say about trading activity. In the equilibrium of the CAPM, all investors share all available information and demand identical portfolios of risky assets. The awkward implication of this result is that there is no reason for trade. If all investors hold identical portfolios of risky assets, then when new (unexpected) information arrives, prices will change commensurately, but each investor will continue to hold a piece of the market portfolio, which requires no exchange of assets. How do we square this implication with the observation that on a typical day, trading volume amounts to several billion shares? One obvious answer is heterogeneous expectations, that is, beliefs not shared by the entire market. Diverse beliefs will give rise to trading as investors attempt to profit by rearranging portfolios in accordance with their now-heterogeneous demands. In reality, trading (and trading costs) will be of great importance to investors.


The liquidity of an asset is the ease and speed with which it can be sold at fair market value. Part of liquidity is the cost of engaging in a transaction, particularly the bid-ask spread. Another part is price impact—the adverse movement in price one would encounter when attempting to execute a larger trade. Yet another component is immediacy—the ability to sell the asset quickly without reverting to fire-sale prices. Conversely, illiquidity can be measured in part by the discount from fair market value a seller must accept if the asset is to be sold quickly. A perfectly liquid asset is one that would entail no illiquidity discount.

Liquidity (or the lack of it) has long been recognized as an important characteristic that affects asset values. In legal cases, courts have routinely applied very steep discounts to the values of businesses that cannot be publicly traded. But liquidity has not always been appreciated as an important factor in security markets, presumably due to the relatively small trading cost per transaction compared with the large costs of trading assets such as real estate. The first breakthrough came in the work of Amihud and Mendelson $^{20}$  and today, liquidity is routinely viewed as an important determinant of prices and expected returns. We supply only a brief synopsis of this important topic here and provide empirical evidence in Chapter 13.

One important component of trading cost is the bid-ask spread. For example, in electronic markets, the limit-order book contains the "inside spread," that is, the difference between the highest price at which some investor will purchase any shares and the lowest price at which another investor is willing to sell. The effective bid-ask spread will also depend on the size of the desired transaction. Larger purchases will require a trader to move deeper into the limit-order book and accept less-attractive prices. While inside spreads on electronic markets often appear extremely low, effective spreads can be much larger because most limit orders are good for only small numbers of shares.

There is great emphasis today on the component of the spread due to asymmetric information. Asymmetric information is the potential for one trader to have private information about the value of the security that is not known to the trading partner. To see why such an asymmetry can affect the market, think about the problems facing someone buying a used car. The seller knows more about the car than the buyer, so the buyer naturally wonders if the seller is trying to get rid of the car because it is a "lemon." At the least, buyers worried about overpaying will shave the prices they are willing to pay for a car of uncertain quality. In extreme cases of asymmetric information, trading may cease altogether.[21] Similarly, traders who post offers to buy or sell at limit prices need to be worried about being picked off by better-informed traders who hit their limit prices only when they are out of line with the intrinsic value of the firm.


Broadly speaking, we may envision investors trading securities for two reasons. Some trades are driven by "noninformational" motives, for example, selling assets to raise cash for a big purchase, or even just for portfolio rebalancing. These sorts of trades, which are not motivated by private information that bears on the value of the traded security, are called noise trades. Market makers will earn a profit from the bid-ask spread when transacting with noise traders (also called liquidity traders because their trades may derive from needs for liquidity, i.e., cash).

Other transactions are initiated by traders who believe they have come across information that a security is mispriced. But if that information gives them an advantage, it must be disadvantageous to their trading counterparties. In this manner, information traders impose a cost on both security dealers and other investors who post limit orders. Although on average dealers make money from the bid-ask spread when transacting with liquidity traders, they absorb losses from information traders. Similarly, any trader posting a limit order is at risk from information traders. The response is to increase limit-ask prices and decrease limit-bid orders—in other words, the spread must widen. The greater the importance of information traders, the greater the spread required to compensate for the potential losses from trading with them. In the end, therefore, liquidity traders absorb most of the cost of the information trades because the bid-ask spread that they must pay on their "innocent" trades widens when informational asymmetry is more severe.

Moreover, security dealers will respond to a buy order by increasing asked prices, reasoning that if the order is informationally based, they should revise upward their estimate of the intrinsic value of the stock. Similarly, sell orders induce reductions in posted prices. These so-called price impacts affect any trade larger than the typically small sizes posted for the best bid or offer prices, and also represent increased trading costs for noise traders.

Higher trading costs make securities less attractive, in part because investors realize that they incur costs not just at the time of purchase, but also when they eventually will sell their shares. The prospect of these future trading costs depresses current share prices. Of course, if someone buys a share at a lower price, the expected rate of return will be higher. Therefore, we should expect to see less-liquid securities offer higher average rates of return. But this illiquidity premium need not rise in direct proportion to trading cost. If an asset is less liquid, it will be shunned by frequent traders and held instead by longer-term traders who are less affected by high trading costs. Hence, in equilibrium, investors with long holding periods will, on average, hold more of the illiquid securities, while short-horizon investors will prefer liquid securities. This "clientele effect" mitigates the effect of the bid-ask spread for illiquid securities. The end result is that the liquidity premium should increase with trading costs (measured by the bid-ask spread) at a decreasing rate.

Figure 9.4 confirms this prediction. It shows average monthly returns for stocks stratified by bid-ask spread. The difference in returns between the most liquid stocks (lowest bid-ask spread) and least liquid stocks (highest spread) is about  $.7\%$  per month. This is just about the same magnitude as the monthly market risk premium! Liquidity clearly matters for asset pricing.

So far, we have shown that the expected level of liquidity can affect prices, and therefore expected rates of return. What about unanticipated changes in liquidity? In some circumstances, liquidity can unexpectedly dry up. For example, in the financial crisis of 2008, as many investors attempted to reduce leverage and cash out their positions, finding buyers for some assets became difficult. Many mortgage-backed securities stopped trading altogether. Liquidity had evaporated. Nor was this an unheard-of phenomenon. The market crash of 1987, as well as the failure of Long-Term Capital Management in 1998, also saw large declines in liquidity across broad segments of the market.

Figure 9.4 The relationship between illiquidity and average returns
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/2f97a3b1ada6324d6dea5054f4ad28533c278e0b919b629edf9551e3e8ce8df6.jpg)
Source: Derived from Yakov Amihud and Haim Mendelson, "Asset Pricing and the Bid-Ask Spread," Journal of Financial Economics 17 (1986), pp. 223-249.


In fact, when liquidity in one stock decreases, it commonly tends to decrease in other stocks at the same time[22] In other words, variation in liquidity has an important systematic component. Not surprisingly, investors demand compensation for exposure to liquidity risk. The extra expected return for bearing liquidity risk modifies the CAPM expected return-beta relationship.

Following up on this insight, Amihud demonstrates that firms with greater liquidity risk have higher average returns.[23] Later studies focus on exposure to marketwide liquidity risk, as measured by a "liquidity beta." Analogously to a traditional market beta, the liquidity beta measures the sensitivity of a firm's returns to changes in market liquidity (whereas the traditional beta measures return sensitivity to the market return). Firms that provide better returns when market liquidity falls offer some protection against liquidity risk, and thus should be priced higher and offer lower expected returns. In fact, we will see in Chapter 13 that firms with high liquidity betas have offered higher average returns, just as theory predicts.[24] Moreover, the liquidity premium that emerges from

22See, for example, Tarun Chordia, Richard Roll, and Avanidhar Subrahmanyam, "Commonality in Liquidity," Journal of Financial Economics 56 (2000), pp. 3-28, or J. Hasbrouck and D. H. Seppi, "Common Factors in Prices, Order Flows and Liquidity," Journal of Financial Economics 59 (2001), pp. 383-411.
23Yakov Amihud, "Illiquidity and Stock Returns: Cross-Section and Time-Series Effects," Journal of Financial Markets 9 (2002), pp. 31-56.
24See L. Pastor and R. F. Stambaugh, "Liquidity Risk and Expected Stock Returns," Journal of Political Economy 111 (2003), pp. 642-685, or V. V. Acharya and L. H. Pedersen, "Asset Pricing with Liquidity Risk," Journal of Financial Economics 77 (2005), pp. 375-410.

these studies appear to be of roughly the same order of magnitude as the market risk premium, suggesting that liquidity should be a first-order consideration when thinking about security pricing.

# 9.3 Issues in Testing the CAPM

Testing the CAPM is surprisingly difficult. We will look more systematically at these tests in Chapter 13. One long-standing thorn in the side of researchers is Assumption 1(a) (all assets trade), which leads to the result that the market portfolio must include all risky assets in the economy. In reality, we cannot even observe all the assets that do trade, let alone properly account for those that do not. The theoretical market portfolio, which is central to the CAPM, is impossible to pin down in practice.

Because the theoretical CAPM market portfolio cannot be observed, most tests of the model are directed at the mean-beta relationship as applied to assets with respect to an observed, but perhaps inefficient, stock index portfolio. But if the test rejects the model, is that because the model is faulty or because the index is a faulty proxy for the true market? And if we test one of the more general variants of the CAPM, how can we be sure that we have included a comprehensive set of extra-market hedge portfolios?

Moreover, where do we obtain the beta coefficients to use in our statistical tests? We must estimate them for each stock. These estimates are typically quite imprecise, which can lead to an incorrect rejection of the model.[25]

In addition, both alpha and beta, as well as residual variance, are likely time varying. There is nothing in the CAPM that precludes such time variation, but standard regression techniques rule it out and thus may lead to false rejection of the model. There are now well-known techniques to account for time-varying parameters. In fact, Robert Engle won the Nobel Prize for his pioneering work on econometric techniques to deal with time-varying volatility.[26] Nevertheless, these techniques have not salvaged the CAPM.

Finally, betas as well as the market risk premium may vary not purely randomly over time, but in response to changing economic conditions. A "conditional" CAPM allows risk and expected return to change with a set of "conditioning variables" that describe the state of the economy.[27] As importantly, the beta of a security can be decomposed into two components, one that measures sensitivity to changes in corporate profitability and another that measures sensitivity to changes in market discount rates. These are found to be quite different in many cases.[28]

25Merton H. Miller and Myron Scholes, "Rates of Return in Relations to Risk: A Re-Examination of Some Recent Findings," in Studies in the Theory of Capital Markets, ed. Michael C. Jensen (New York: Praeger, 1972).
26Engle's work gave rise to the widespread use of so-called ARCH models. ARCH stands for autoregressive conditional heteroskedasticity, which is a fancy way of saying that volatility changes over time, and that recent levels of volatility can be used to form optimal estimates of future volatility.
[27]There is now a large volume of literature on conditional models of security market equilibrium. Much of it derives from Ravi Jagannathan and Zhenyu Wang, "The Conditional CAPM and the Cross-Section of Expected Returns," Journal of Finance 51 (March 1996), pp. 3-53.
28John Campbell and Tuomo Vuolteenaho, "Bad Beta, Good Beta," American Economic Review 94 (December 2004), pp. 1249-75.

A strand of research that has not yet yielded fruit is the search for portfolios that hedge the risk of specific consumption items, as in Merton's Equation 9.14. Portfolios that should hedge presumably important extra-market sources of risk have not resoundingly been found to predict risk premia.

As mentioned in Chapter 5, Fama and French documented the predictive power of size and book-to-market ratios (B/M) for asset returns. They interpret portfolios formed to align with these characteristics as hedging portfolios in the context of Equation 9.14. Following their lead, other papers have now suggested a number of other extra-market risk factors (discussed in the next chapter). But we don't really know what fundamental uncertainties in future investment opportunities are hedged by these factors, leading many to be skeptical of empirically driven identification of extra-market hedging portfolios.

The bottom line is that, in much of the research community, the single-index CAPM is considered passé. However, there is no broad consensus on what specific extension of the basic model should replace it. Stay tuned for future developments.

# 9.4 The CAPM and the Investment Industry

In many ways, portfolio theory and the CAPM have become accepted tools in the practitioner community. Many investment professionals think about the distinction between firm-specific and systematic risk and are comfortable with the use of beta to measure systematic risk. One extensive survey found that about three-quarters of financial managers use the CAPM when estimating the cost of capital.[29] In the asset management industry, alpha is regularly computed. On the other hand, compensation of portfolio managers is rarely based on alpha or other theoretically appropriate risk-adjusted measures such as those addressed later in the text (see Chapter 24).

What about the prediction that the passive market index is actually the most efficiently diversified portfolio that a mutual fund company can offer its clients? Interestingly, the CAPM proposition that the market portfolio is efficient cannot be tested because the true market portfolio of all assets cannot be observed in the first place. But it has become ever more evident that consistently beating even a less-than-fully-inclusive index such as the S&P 500 is already beyond the power of most investors, even professional ones.

Indirect evidence on the efficiency of the market can be found in hundreds of studies of the performance of professionally managed portfolios. By and large, the message of these studies, which we will review in Chapter 11, is that professional investors do not on average outperform passive market indexes. In fact, the average mutual fund alpha, net of fees, is negative in most years. Moreover, history provides little help in identifying the managers with the better prospects for superior performance: The funds that provide positive alphas in one year are typically not the ones that do so in the following year.

These results are important. While we might expect realized alpha values of individual securities to center around zero, professionally managed mutual funds might be expected to demonstrate average positive alphas. Funds with superior performance should tilt the sample average to a positive value. Their failure to do so suggests the difficulty in beating the passive strategy that the CAPM deems to be optimal.

From the standpoint of the industry, an index portfolio that can be beaten by only a tiny fraction of professional managers over a 10-year period may well be taken as ex-ante efficient for all practical purposes, that is, to be used as (1) a diversification vehicle to mix with an active portfolio from security analysis (discussed in Chapter 8); (2) a benchmark for performance evaluation and compensation (discussed in Chapter 24); (3) a means to adjudicate lawsuits about fair compensation to various risky enterprises; and (4) a means to determine proper prices in regulated industries, allowing shareholders to earn a fair rate of return on their investments, but no more.

# SUMMARY

1. The CAPM assumes that investors are single-period planners who agree on a common input list from security analysis and seek mean-variance optimal portfolios.
2. The CAPM assumes that security markets are ideal in the sense that:

$a$ . Relevant information about securities is widely and publicly available.
$b$ . There are no taxes or transaction costs.
$c$ . All risky assets are publicly traded.
$d$ . Investors can borrow and lend any amount at a fixed risk-free rate.

3. With these assumptions, all investors hold identical risky portfolios. The CAPM holds that in equilibrium the market portfolio is the unique mean-variance efficient tangency portfolio. Thus, a passive strategy is efficient.
4. The CAPM market portfolio is value-weighted. Each security is held in a proportion equal to its market value divided by the total market value of all securities.
5. If the market portfolio is efficient and the average investor neither borrows nor lends, then the risk premium on the market portfolio is proportional to its variance,  $\sigma_M^2$ , as well as the average coefficient of risk aversion across investors,  $\overline{A}$ :

$$
E (r _ {M}) - r _ {f} = \overline {{A}} \sigma_ {M} ^ {2}
$$

6. The CAPM implies that the risk premium on any individual asset or portfolio is the product of the risk premium on the market portfolio and the beta coefficient:

$$
E \left(r _ {i}\right) - r _ {f} = \beta_ {i} \left[ E \left(r _ {M}\right) - r _ {f} \right]
$$ where the beta coefficient is the covariance of the asset's excess return with that of the market portfolio as a fraction of the variance of the excess return of the market portfolio:


$$
\beta_ {i} = \frac {\operatorname {C o v} (R _ {i} , R _ {M})}{\sigma_ {M} ^ {2}}
$$

7. When risk-free borrowing is restricted but all other CAPM assumptions hold, then the simple version of the security market line is replaced by its zero-beta version. Accordingly, the risk-free rate in the expected return-beta relationship is replaced by the zero-beta portfolio's expected rate of return:

$$
E \left(r _ {i}\right) = E \left(r _ {Z}\right) + \beta_ {i} \left[ E \left(r _ {M}\right) - E \left(r _ {Z}\right) \right]
$$

8. The security market line of the CAPM must be modified to account for labor income and other significant nontraded assets.
9. The simple version of the CAPM assumes that investors have a single-period time horizon. When investors are assumed to be concerned with lifetime consumption and bequest plans, but investors' tastes and security return distributions are stable over time, the market portfolio remains efficient and the simple version of the expected return-beta relationship holds. But if those distributions change unpredictably, or if investors seek to hedge nonmarket sources of risk to their consumption, the simple CAPM gives way to a multifactor version in which the security's exposure to these nonmarket sources of risk command risk premiums.
10. The consumption-based capital asset pricing model (CCAPM) is a single-factor model in which the market portfolio excess return is replaced by that of a consumption-tracking portfolio. By appealing directly to consumption, the model naturally incorporates consumption-hedging considerations and changing investment opportunities within a single-factor framework.
11. Liquidity costs and liquidity risk can affect security pricing. Investors demand compensation for expected costs of illiquidity as well as the risk surrounding those costs.

homogeneous expectations market portfolio mutual fund theorem market price of risk beta expected return-beta (ormean-beta) relationship security market line (SML)


alpha zero-beta portfolio liquidity illiquidity

KEY TERMS

Market risk premium:  $E(R_{M}) = \overline{A}\sigma_{M}^{2}$

Beta:  $\beta_{i} = \frac{\operatorname{Cov}(R_{i}, R_{M})}{\sigma_{M}^{2}}$

Security market line:  $E(r_{i}) = r_{f} + \beta_{i}\big[E(r_{M}) - r_{f}\big]$

Zero-beta SML:  $E(r_{i}) = E(r_{Z}) + \beta_{i}[E(r_{M}) - E(r_{Z})]$

Multifactor SML (in excess returns):  $E(R_{i}) = \beta_{iM}E(R_{M}) + \sum_{k = 1}^{K}\beta_{ik}E(R_{k})$

KEY EQUATIONS

1. What must be the beta of a portfolio with  $E(r_{P}) = 18\%$ , if  $r_f = 6\%$  and  $E(r_M) = 14\%$ ?
2. The market price of a security is 50. Its expected rate of return is 14\%. The risk-free rate is 6\%, and the market risk premium is 8.5\%. What will be the market price of the security if its correlation coefficient with the market portfolio doubles (and all other variables remain unchanged)? Assume that the stock is expected to pay a constant dividend in perpetuity.
3. Are the following true or false? Explain.

$a$ . Stocks with a beta of zero offer an expected rate of return of zero.
$b$ . The CAPM implies that investors require a higher return to hold highly volatile securities.
c. You can construct a portfolio with beta of .75 by investing .75 of the investment budget in T-bills and the remainder in the market portfolio.

PROBLEM SETS

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/17d0a41f51d2034b788909e6a7c0988df279c2d38a0a68425d6346138cd7900f.jpg)

SCHWESER

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/d2f6c26bcabc74c5dd6350beb0b13020a6f021ce3fe795d54b7f93970924919f.jpg)

SCHWESER

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/10ca4fe09522af82b3f44353cf0dec164e0d2d572071dfcb0e201c0c0ff31cdd.jpg)

SCHWESER

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/35551e8ce58e10278255a28f3eb8484b57b8ba8b6374de3f4e96dd9c4f26a4d1.jpg)

SCHWESER excel


Please visit us at www.mhhe.com/Bodie13e


4. Here are data on two companies. The T-bill rate is  $4\%$  and the market risk premium is  $6\%$ .

<table><tr><td>Company</td><td>\$1 Discount Store</td><td>Everything \$5</td></tr><tr><td>Forecasted return</td><td>12\%</td><td>11\%</td></tr><tr><td>Standard deviation of returns</td><td>8\%</td><td>10\%</td></tr><tr><td>Beta</td><td>1.5</td><td>1.0</td></tr></table>

What would be the fair return for each company according to the capital asset pricing model (CAPM)?

5. Characterize each company in the previous problem as underpriced, overpriced, or properly priced.
6. What is the expected rate of return for a stock that has a beta of 1.0 if the expected return on the market is  $15\%$ ?

a.  $15\%$ .
$b$ . More than  $15\%$ .
$c$ . Cannot be determined without the risk-free rate.

7. Kaskin, Inc., stock has a beta of 1.2 and Quinn, Inc., stock has a beta of .6. Which of the following statements is most accurate?

a. The expected rate of return will be higher for the stock of Kaskin, Inc., than that of Quinn, Inc.
$b$ . The stock of Kaskin, Inc., has more total risk than the stock of Quinn, Inc.
c. The stock of Quinn, Inc., has more systematic risk than that of Kaskin, Inc.

8. You are a consultant to a large manufacturing corporation that is considering a project with the following net after-tax cash flows (in millions of dollars):

<table><tr><td>Years from Now</td><td>After-Tax Cash Flow</td></tr><tr><td>0</td><td>-40</td></tr><tr><td>1–10</td><td>15</td></tr></table>

The project's beta is 1.8.

a. Assuming that  $r_f = 8\%$  and  $E(r_M) = 16\%$ , what is the net present value of the project?
$b$ . What is the highest possible beta estimate for the project before its NPV becomes negative?

9. Consider the following table, which gives a security analyst's expected return on two stocks in two particular scenarios for the rate of return on the market:

<table><tr><td>Market Return</td><td>Aggressive Stock</td><td>Defensive Stock</td></tr><tr><td>5\%</td><td>-2\%</td><td>6\%</td></tr><tr><td>25</td><td>38</td><td>12</td></tr></table> a. What are the betas of the two stocks?

$b$ . What is the expected rate of return on each stock if the two scenarios for the market return are equally likely?
c. If the T-bill rate is  $6\%$  and the market return is equally likely to be  $5\%$  or  $25\%$ , draw the SML for this economy.
$d$ . Plot the two securities on the SML graph. What is the alpha of each?
e. What hurdle rate should be used by the management of the aggressive firm for a project with the risk characteristics of the defensive firm's stock?

For Problems 10 through 16: If the simple CAPM is valid, which of the following situations are possible? Explain. Consider each situation independently.

<table><tr><td>10. Portfolio</td><td>Expected Return</td><td>Beta</td></tr><tr><td>A</td><td>20\%</td><td>1.4</td></tr><tr><td>B</td><td>25\%</td><td>1.2</td></tr></table>

<table><tr><td>11.</td><td>Portfolio</td><td>Expected Return</td><td>Standard Deviation</td></tr><tr><td></td><td>A</td><td>30\%</td><td>35\%</td></tr><tr><td></td><td>B</td><td>40\%</td><td>25\%</td></tr></table>

<table><tr><td colspan="3">12.</td></tr><tr><td>Portfolio</td><td>Expected Return</td><td>Standard Deviation</td></tr><tr><td>Risk-free</td><td>10\%</td><td>0\%</td></tr><tr><td>Market</td><td>18\%</td><td>24\%</td></tr><tr><td>A</td><td>16\%</td><td>12\%</td></tr></table>

<table><tr><td>13.</td><td>Portfolio</td><td>Expected Return</td><td>Standard Deviation</td></tr><tr><td></td><td>Risk-free</td><td>10\%</td><td>0\%</td></tr><tr><td></td><td>Market</td><td>18\%</td><td>24\%</td></tr><tr><td></td><td>A</td><td>20\%</td><td>22\%</td></tr></table>

<table><tr><td>14.</td><td>Portfolio</td><td>Expected Return</td><td>Beta</td></tr><tr><td></td><td>Risk-free</td><td>10\%</td><td>0</td></tr><tr><td></td><td>Market</td><td>18\%</td><td>1.0</td></tr><tr><td></td><td>A</td><td>16\%</td><td>1.5</td></tr></table>

<table><tr><td>15.</td><td>Portfolio</td><td>Expected Return</td><td>Beta</td></tr><tr><td></td><td>Risk-free</td><td>10\%</td><td>0</td></tr><tr><td></td><td>Market</td><td>18\%</td><td>1.0</td></tr><tr><td></td><td>A</td><td>16\%</td><td>0.9</td></tr></table>

<table><tr><td colspan="3">16.</td></tr><tr><td>Portfolio</td><td>Expected Return</td><td>Standard Deviation</td></tr><tr><td>Risk-free</td><td>10\%</td><td>0\%</td></tr><tr><td>Market</td><td>18\%</td><td>24\%</td></tr><tr><td>A</td><td>16\%</td><td>22\%</td></tr></table>

For Problems 17 through 19: Assume that the risk-free rate of interest is  $6\%$  and the expected rate of return on the market is  $16\%$ .

17. A share of stock sells for \$50 today. It will pay a dividend of \$6 per share at the end of the year. Its beta is 1.2. What do investors expect the stock to sell for at the end of the year?
 18. I am buying a firm with an expected perpetual cash flow of 1,000 but am unsure of its risk. If I think the beta of the firm is .5, when in fact the beta is really 1, how much more will I offer for the firm than it is truly worth?
19. A stock has an expected rate of return of  $4\%$ . What is its beta?
20. Two investment advisers are comparing performance. One averaged a  $19\%$  rate of return and the other a  $16\%$  rate of return. However, the beta of the first investor was 1.5, whereas that of the second investor was 1.

a. Can you tell which investor was a better selector of individual stocks (aside from the issue of general movements in the market)?
$b$ . If the T-bill rate was  $6\%$  and the market return during the period was  $14\%$ , which investor would be considered the superior stock selector?
c. What if the T-bill rate was  $3\%$  and the market return was  $15\%$ ?

21. Suppose the rate of return on short-term government securities (perceived to be risk-free) is about  $5\%$ . Suppose also that the expected rate of return required by the market for a portfolio with a beta of 1 is  $12\%$ . According to the capital asset pricing model:

$a$ . What is the expected rate of return on the market portfolio?
$b$ . What would be the expected rate of return on a stock with  $\beta = 0$ ?
 c. Suppose you consider buying a share of stock at \$40. The stock is expected to pay \$3 dividends next year and you expect it to sell then for 41. The stock risk has been evaluated at β = -.5. Is the stock overpriced or underpriced?

22. Suppose that borrowing is restricted so that the zero-beta version of the CAPM holds. The expected return on the market portfolio is  $17\%$ , and on the zero-beta portfolio it is  $8\%$ . What is the expected return on a portfolio with a beta of .6?
23. a. A mutual fund with beta of .8 has an expected rate of return of  $14\%$ . If  $r_f = 5\%$ , and you expect the rate of return on the market portfolio to be  $15\%$ , should you invest in this fund? What is the fund's alpha?
b. What passive portfolio composed of a market-index portfolio and a money market account would have the same beta as the fund? Show that the difference between the expected rate of return on this passive portfolio and that of the fund equals the alpha from part (a).

24. Outline how you would incorporate the following into the CCAPM: a. Liquidity.

$b$ . Nontraded assets. (Do you have to worry about labor income?)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/a1fe51ea610310bb7a31c7cf81117e4661899adf8c9c721fe3ab7b42fb2ecb6a.jpg)

1. a. John Wilson is a portfolio manager at Austin & Associates. For all of his clients, Wilson manages portfolios that lie on the Markowitz efficient frontier. Wilson asks Mary Regan, CFA, a managing director at Austin, to review the portfolios of two of his clients, the Eagle Manufacturing Company and the Rainbow Life Insurance Co. The expected returns of the two portfolios are substantially different. Regan determines that the Rainbow portfolio is virtually identical to the market portfolio and concludes that the Rainbow portfolio must be superior to the Eagle portfolio. Do you agree or disagree with Regan's conclusion that the Rainbow portfolio is superior to the Eagle portfolio? Justify your response with reference to the capital market line.
b. Wilson remarks that the Rainbow portfolio has a higher expected return because it has greater nonsystematic risk than Eagle's portfolio. Define nonsystematic risk and explain why you agree or disagree with Wilson's remark.

2. Wilson is now evaluating the expected performance of two common stocks, Furhman Labs Inc. and Garten Testing Inc. He has gathered the following information:

The risk-free rate is  $5\%$ .
The expected return on the market portfolio is  $11.5\%$ .
The beta of Furhman stock is 1.5.
The beta of Garten stock is .8.

Based on his own analysis, Wilson's forecasts of the returns on the two stocks are  $13.25\%$  for Furhman stock and  $11.25\%$  for Garten stock. Calculate the required rate of return for Furhman Labs stock and for Garten Testing stock. Indicate whether each stock is undervalued, fairly valued, or overvalued.

3. The security market line depicts:

$a$ . A security's expected return as a function of its systematic risk.
$b$ . The market portfolio as the optimal portfolio of risky securities.
$c$ . The relationship between a security's return and the return on an index.
$d$ . The complete portfolio as a combination of the market portfolio and the risk-free asset.

4. Within the context of the capital asset pricing model (CAPM), assume:

Expected return on the market  $= 15\%$
- Risk-free rate  $= 8\%$
Expected rate of return on XYZ security  $= 17\%$
Beta of XYZ security  $= 1.25$

Which one of the following is correct?

a. XYZ is overpriced.
b. XYZ is fairly priced.
c. XYZ's alpha is  $-.25\%$ .
d. XYZ's alpha is  $.25\%$ .

5. What is the expected return of a zero-beta security?

$a$  .Market rate of return.
b. Zero rate of return.
$c$  Negative rate of return.
$d$ . Risk-free rate of return.

6. Capital asset pricing theory asserts that portfolio returns are best explained by: a. Economic factors.

b. Specific risk.
$c$  Systematic risk.
d. Diversification.

7. According to CAPM, the expected rate of return of a portfolio with a beta of 1.0 and an alpha of 0 is: a. Between  $r_M$  and  $r_f$ .

$b$  .The risk-free rate,  $r_f$ c.  $\beta (r_M - r_f)$
$d$ . The expected return on the market,  $r_{M}$

For CFA Problems 8 and 9: Refer to the following table, which shows risk and return measures for two portfolios.

<table><tr><td>Portfolio</td><td>Average Annual Rate of Return</td><td>Standard Deviation</td><td>Beta</td></tr><tr><td>R</td><td>11\%</td><td>10\%</td><td>0.5</td></tr><tr><td>S&amp;P 500</td><td>14\%</td><td>12\%</td><td>1.0</td></tr></table>

8. When plotting portfolio  $R$  in the preceding table relative to the SML, portfolio  $R$  lies: a. On the SML.

b. Below the SML.
c. Above the SML.
$d$ . Insufficient data given.

9. When plotting portfolio  $R$  relative to the capital market line, portfolio  $R$  lies: a. On the CML.

b. Below the CML.
c. Above the CML.
$d$ . Insufficient data given.

10. Briefly explain whether investors should expect a higher return on portfolio  $A$  than on portfolio  $B$  according to the capital asset pricing model.

<table><tr><td></td><td>Portfolio A</td><td>Portfolio B</td></tr><tr><td>Systematic risk (beta)</td><td>1.0</td><td>1.0</td></tr><tr><td>Specific risk for each individual security</td><td>High</td><td>Low</td></tr></table>

11. Joan McKay is a portfolio manager for a bank trust department. McKay meets with two clients, Kevin Murray and Lisa York, to review their investment objectives. Each client expresses an interest in changing his or her individual investment objectives. Both clients currently hold well-diversified portfolios of risky assets.

$a$ . Murray wants to increase the expected return of his portfolio. State what action McKay should take to achieve Murray's objective. Justify your response in the context of the CML.
b. York wants to reduce the risk exposure of her portfolio but does not want to engage in borrowing or lending activities to do so. State what action McKay should take to achieve York's objective. Justify your response in the context of the SML.

12. Karen Kay, a portfolio manager at Collins Asset Management, is using the capital asset pricing model for making recommendations to her clients. Her research department has developed the information shown in the following exhibit.

Forecast Returns, Standard Deviations, and Betas

<table><tr><td></td><td>Forecast Return</td><td>Standard Deviation</td><td>Beta</td></tr><tr><td>Stock X</td><td>14.0\%</td><td>36\%</td><td>0.8</td></tr><tr><td>Stock Y</td><td>17.0\%</td><td>25\%</td><td>1.5</td></tr><tr><td>Market index</td><td>14.0\%</td><td>15\%</td><td>1.0</td></tr><tr><td>Risk-free rate</td><td>5.0\%</td><td></td><td></td></tr></table>

$a$ . Calculate expected return and alpha for each stock.
$b$ . Identify and justify which stock would be more appropriate for an investor who wants to  $i$ . Add this stock to a well-diversified equity portfolio.
ii. Hold this stock as a single-stock portfolio.

# E-INVESTMENTS EXERCISES

Fidelity provides data on the risk and return of its funds at www.fidelity.com. Click on the News and Research link, then choose Mutual Funds from the submenu. In the Search and Compare Funds section, search over All Asset Classes. On the next screen, click on Volatility and set the beta slider to 0.75. Select five funds from the resulting list and click Compare. Rank the five funds according to their betas and then according to their standard deviations. (You will have to click on Risk to get more detailed information on each fund.) Do both lists rank the funds in the same order? How would you explain any difference in the rankings? Repeat the exercise to compare five funds that have betas greater than or equal to 1.50. Why might the degree of agreement when ranking funds by beta versus standard deviation differ when using high versus low beta funds?

# SOLUTIONS TO CONCEPT CHECKS

1. We can characterize the entire population by two representative investors. One is the "uninformed" investor, who does not engage in security analysis and holds the market portfolio, whereas the other optimizes using the Markowitz algorithm with input from security analysis. The uninformed investor does not know what input the informed investor uses to make portfolio purchases. The uninformed investor knows, however, that if the other investor is informed, the market portfolio proportions will be optimal. Therefore, to depart from these proportions would constitute an uninformed bet, which will, on average, reduce the efficiency of diversification with no compensating improvement in expected returns.


2. a. Substituting the historical mean and standard deviation in Equation 9.2 yields a coefficient of risk aversion of

$$
\bar {A} = \frac {E (r _ {M}) - r _ {f}}{\sigma_ {M} ^ {2}} = \frac {. 0 8 9}{. 2 0 3 ^ {2}} = 2. 1 6
$$ b. This relationship also tells us that for the historical standard deviation and a coefficient of risk aversion of 3.5, the risk premium would be


$$
E \left(r _ {M}\right) - r _ {f} = \bar {A} \sigma_ {M} ^ {2} = 3.5 \times .203 ^ {2} = .144 = 14.4 \%
$$

3. For these investment proportions,  $w_{\text{Ford}}$ ,  $w_{\text{Toyota}}$ , the portfolio  $\beta$  is

$$
\begin{array}{l} \beta_ {P} = w _ {\text {F o r d}} \beta_ {\text {F o r d}} + w _ {\text {T o y o t a}} \beta_ {\text {T o y o t a}} \\ = (. 7 5 \times 1. 2 5) + (. 2 5 \times 1. 1 0) = 1. 2 1 2 5 \\ \end{array}
$$

As the market risk premium,  $E(r_{M}) - r_{f}$ , is  $8\%$ , the portfolio risk premium will be

$$
\begin{array}{l} E \left(r _ {P}\right) - r _ {f} = \beta_ {P} \left[ E \left(r _ {M}\right) - r _ {f} \right] \\ = 1.2125 \times 8 = 9.7 \% \\ \end{array}
$$

4. The alpha of a stock is its expected return in excess of that required by the CAPM.

$$
\begin{array}{l} \alpha = E (r) - \left\{r _ {f} + \beta \left[ E \left(r _ {M}\right) - r _ {f} \right] \right\} \\ \alpha_ {X Y Z} = 12 - [ 5 + 1.0 (11 - 5) ] = 1 \% \\ \alpha_ {A B C} = 13 - [ 5 + 1.5 (11 - 5) ] = - 1 \% \\ \end{array}
$$

ABC plots below the SML, while  $XYZ$  plots above.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/a69622dc5816a6626545870acef5cf4dcff48e204378e984e7e907b29ce1091e.jpg)

5. The project-specific required return is determined by the project beta together with the market risk premium and the risk-free rate. The CAPM tells us that an acceptable expected rate of return for the project is

$$ r _ {f} + \beta [ E (r _ {M}) - r _ {f} ] = 8 + 1.3 (16 - 8) = 18.4 \%
$$ which becomes the project's hurdle rate. If the IRR of the project is  $19\%$ , then it is desirable. Any project with an IRR equal to or less than  $18.4\%$  should be rejected.



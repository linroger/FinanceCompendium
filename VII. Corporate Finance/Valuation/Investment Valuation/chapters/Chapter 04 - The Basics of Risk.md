---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: The Basics of Risk
linter-yaml-title-alias: The Basics of Risk
---

# The Basics of Risk

When valuing assets and firms, we need to use discount rates that reflect the riskiness of the cash flows. In particular, the cost of debt has to incorporate a default spread for the default risk in the debt, and the cost of equity has to include a risk premium for equity risk. But how do we measure default and equity risk? More importantly, how do we come up with the default and equity risk premiums?

This chapter lays the foundations for analyzing risk in valuation. It presents alternative models for measuring risk and converting these risk measures into acceptable hurdle rates. It begins with a discussion of equity risk and presents the analysis in three steps. In the first step, risk is defined in statistical terms to be the variance in actual returns around an expected return. The greater this variance, the more risky an investment is perceived to be. The next step, the central one, is to decompose this risk into risk that can be diversified away by investors and risk that cannot. The third step looks at how different risk and return models in finance attempt to measure this nondiversifiable risk. It compares the most widely used model, the capital asset pricing model (CAPM), with other models and explains how and why they diverge in their measures of risk and the implications for the equity risk premium.

The final part of this chapter considers default risk and how it is measured by ratings agencies. By the end of the chapter, we should have a way of estimating the equity risk and default risk for any firm.

# WHAT IS RISK?

Risk, for most of us, refers to the likelihood that in life's games of chance we will receive an outcome that we will not like. For instance, the risk of driving a car too fast is getting a speeding ticket or, worse still, getting into an accident. Merriam-Webster's Collegiate Dictionary, in fact, defines the verb to risk as "to expose to hazard or danger." Thus risk is perceived almost entirely in negative terms.

In finance, our definition of risk is both different and broader. Risk, as we see it, refers to the likelihood that we will receive a return on an investment that is different from the return we expect to make. Thus, risk includes not only the bad outcomes (returns that are lower than expected), but also good outcomes (returns that are higher than expected). In fact, we can refer to the former as downside risk and the latter as upside risk, but we consider both when measuring risk. In fact, the spirit of our definition of risk in finance is captured best by the Chinese symbols for risk:

# 危機

Loosely defined, the first symbol is the symbol for "danger," while the second is the symbol for "opportunity," making risk a mix of danger and opportunity. It illustrates very clearly the trade-off that every investor and business has to make—between the higher rewards that come with the opportunity and the higher risk that has to be borne as a consequence of the danger.

Much of this chapter can be viewed as an attempt to come up with a model that best measures the danger in any investment, and then attempts to convert this into the opportunity that we would need to compensate for the danger. In finance terms, we term the danger to be "risk" and the opportunity to be "expected return."

What makes the measurement of risk and expected return so challenging is that it can vary depending on whose perspective we adopt. When analyzing the risk of a firm, for instance, we can measure it from the viewpoint of the firm's managers. Alternatively, we can argue that the firm's equity is owned by its stockholders, and that it is their perspective on risk that should matter. A firm's stockholders, many of whom hold the stock as one investment in a larger portfolio, might perceive the risk in the firm very differently from the firm's managers, who might have the bulk of their capital, human and financial, invested in the firm.

We argue that risk in an investment has to be perceived through the eyes of investors in the firm. Since firms often have thousands of investors, often with very different perspectives, it can be asserted that risk has to be measured from the perspective of not just any investor in the stock, but of the marginal investor, defined to be the investor most likely to be trading on the stock at any given point in time. The objective in valuation is to measure the value of an asset to those who will be pricing it. If we want to stay true to this objective, we have to consider the viewpoint of those who set the stock prices, and they are the marginal investors.

# EQUITY RISK AND EXPECTED RETURN

To demonstrate how risk is viewed in finance, risk analysis is presented here in three steps: first, defining risk in terms of the distribution of actual returns around an expected return; second, differentiating between risk that is specific to one or a few investments and risk that affects a much wider cross section of investments (in a market where the marginal investor is well diversified, it is only the latter risk, called market risk, that will be rewarded); and third, alternative models for measuring this market risk and the expected returns that go with it.

# Defining Risk

Investors who buy an asset expect to earn returns over the time horizon that they hold the asset. Their actual returns over this holding period may be very different from the expected returns, and it is this difference between actual and expected returns that is a source of risk. For example, assume that you are an investor with a one-year time horizon buying a one-year Treasury bill (or any other default-free one-year bond) with a 5 percent expected return. At the end of the one-year holding period, the actual return on this investment will be 5 percent, which is equal to the expected return. The return distribution for this investment is shown in Figure 4.1. This is a riskless investment.

To provide a contrast to the riskless investment, consider an investor who buys stock in a firm, say Boeing. This investor, having done her research, may conclude that she can make an expected return of 30 percent on Boeing over her one-year holding period. The actual return over this period will almost certainly not be equal to 30 percent; it might be much greater or much lower. The distribution of returns on this investment is illustrated in Figure 4.2.

In addition to the expected return, an investor now has to consider the following. First, note that the actual returns, in this case, are different from the expected return. The spread of the actual returns around the expected return is measured by the variance or standard deviation of the distribution; the greater the deviation of the actual returns from the expected return, the greater the variance. Second, the bias toward positive or negative returns is represented by the skewness of the distribution. The distribution in Figure 4.2 is positively skewed, since there is a higher probability of large positive returns than large negative returns. Third, the shape of the tails of the distribution is measured by the kurtosis of the distribution; fatter tails lead to higher kurtosis. In investment terms, this represents the tendency of the price of this investment to jump (up or down from current levels) in either direction.

In the special case where the distribution of returns is normal, investors do not have to worry about skewness and kurtosis, since there is no skewness (normal distributions are symmetric) and a normal distribution is defined to have a kurtosis of zero. Figure 4.3 illustrates the return distributions on two investments with symmetric returns.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/3ee3167f33c43dd8fffef4a06578297c8a3cb09b55f0d5602f63ba6db1534685.jpg)

Expected Return

FIGURE 4.1 Probability Distribution of Returns on a Risk-Free Investment

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/d7fe7ed2cfd8bc7fa09139301435ec57bac941aad8ce99e20129f55d4f7d7327.jpg)

FIGURE 4.2 Return Distribution for Risky Investment

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/82e3d90f233d3049fdda5850966e37cb9e96993bfaf183b643f0bacd0cdeb246.jpg)

FIGURE 4.3 Return Distribution Comparisons

When return distributions are normal, the characteristics of any investment can be measured with two variables—the expected return, which represents the opportunity in the investment, and the standard deviation or variance, which represents the danger. In this scenario, a rational investor, faced with a choice between two investments with the same standard deviation but different expected returns, will always pick the one with the higher expected return.

In the more general case, where distributions are neither symmetric nor normal, it is still conceivable that investors will choose between investments on the basis of only the expected return and the variance, if they possess utility functions that allow them to do so. It is far more likely, however, that they prefer positive skewed distributions to negatively skewed ones, and distributions with a lower likelihood of jumps (lower kurtosis) over those with a higher likelihood of jumps (higher kurtosis). In this world, investors will trade off the good (higher expected returns and more positive skewness) against the bad (higher variance and kurtosis) in making investments.

In closing, it should be noted that the expected returns and variances that we run into in practice are almost always estimated using past returns rather than future returns. The assumption made when using historical variances is that past return distributions are good indicators of future return distributions. When this assumption is violated, as is the case when the asset's characteristics have changed significantly over time, the historical estimates may not be good measures of risk.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/6d064fa5bfb854f0d499deae3f7caba8291b3ea7fb6d15b4f6b5502bfeda95dc.jpg) optvar.xls: This is a dataset on the Web that summarizes standard deviations and variances of stocks in various sectors in the United States.

# Diversifiable and Nondiversifiable Risk

Although there are many reasons why actual returns may differ from expected returns, we can group the reasons into two categories: firm-specific and marketwide. The risks that arise from firm-specific actions affect one or a few investments, while the risks arising from marketwide reasons affect many or all investments. This distinction is critical to the way we assess risk in finance.

Components of Risk When an investor buys stock or takes an equity position in a firm, he or she is exposed to many risks. Some risk may affect only one or a few firms, and this risk is categorized as firm-specific risk. Within this category, we would consider a wide range of risks, starting with the risk that a firm may have misjudged the demand for a product from its customers; we call this project risk. For instance, consider

Boeing's investment in a Super Jumbo jet. This investment is based on the assumption that airlines want a larger airplane and are willing to pay a high price for it. If Boeing has misjudged this demand, it will clearly have an impact on Boeing's earnings and value, but it should not have a significant effect on other firms in the market. The risk could also arise from competitors proving to be stronger or weaker than anticipated, called competitive risk. For instance, assume that Boeing and Airbus are competing for an order from Qantas, the Australian airline. The possibility that Airbus may win the bid is a potential source of risk to Boeing and perhaps some of its suppliers, but again, few other firms will be affected by it. Similarly, Disney recently launched magazines aimed at teenage girls, hoping to capitalize on the success of its TV shows. Whether it succeeds is clearly important to Disney and its competitors, but it is unlikely to have an impact on the rest of the market. In fact, risk measures can be extended to include risks that may affect an entire sector but are restricted to that sector; we call this sector risk. For instance, a cut in the defense budget in the United States will adversely affect all firms in the defense business, including Boeing, but there should be no significant impact on other sectors. What is common across the three risks described—project, competitive, and sector risk—is that they affect only a small subset of firms.

There is another group of risks that is much more pervasive and affects many if not all investments. For instance, when interest rates increase, all investments are negatively affected, albeit to different degrees. Similarly, when the economy weakens, all firms feel the effects, though cyclical firms (such as automobiles, steel, and housing) may feel it more. We term this risk market risk.

Finally, there are risks that fall in a gray area, depending on how many assets they affect. For instance, when the dollar strengthens against other currencies, it has a significant impact on the earnings and values of firms with international operations. If most firms in the market have significant international operations, it could well be categorized as market risk. If only a few do, it would be closer to firm-specific risk. Figure 4.4 summarizes the spectrum of firm-specific and market risks.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/7a08e391dfcf5b2f511d1e78af2c613300e03494c6c3faad031703d6300fbdfc.jpg)

FIGURE 4.4 Breakdown of Risk

# Why Diversification Reduces or Eliminates Firm-Specific Risk: An Intuitive Explanation

As an investor, you could invest all your portfolio in one asset. If you do so, you are exposed to both firm-specific and market risk. If, however, you expand your portfolio to include other assets or stocks, you are diversifying, and by doing so you can reduce your exposure to firm-specific risk. There are two reasons why diversification reduces or, at the limit, eliminates firm-specific risk. The first is that each investment in a diversified portfolio is a much smaller percentage of that portfolio than would be the case if you were not diversified. Any action that increases or decreases the value of only that investment or a small group of investments will have only a small impact on your overall portfolio, whereas undiversified investors are much more exposed to changes in the values of the investments in their portfolios. The second reason is that the effects of firm-specific actions on the prices of individual assets in a portfolio can be either positive or negative for each asset for any period. Thus, in very large portfolios this risk will average out to zero and will not affect the overall value of the portfolio.

In contrast, the effects of marketwide movements are likely to be in the same direction for most or all investments in a portfolio, though some assets may be affected more than others. For instance, other things being equal, an increase in interest rates will lower the values of most assets in a portfolio. Being more diversified does not eliminate this risk.

A Statistical Analysis of Diversification-Reducing Risk The effects of diversification on risk can be illustrated fairly dramatically by examining the effects of increasing the number of assets in a portfolio on portfolio variance. The variance in a portfolio is partially determined by the variances of the individual assets in the portfolio and partially by how they move together; the latter is measured statistically with a correlation coefficient or the covariance across investments in the portfolio. It is the covariance term that provides an insight into why diversification will reduce risk and by how much.

Consider a portfolio of two assets. Asset A has an expected return of  $\mu_{\mathrm{A}}$  and a variance in returns of  $\sigma_{\mathrm{A}}^{2}$ , while asset B has an expected return of  $\mu_{\mathrm{B}}$  and a variance in returns of  $\sigma_{\mathrm{B}}^{2}$ . The correlation in returns between the two assets, which measures how the assets move together, is  $\rho_{\mathrm{AB}}$ . The expected returns and variances of a two-asset portfolio can be written as a function of these inputs and the proportion of the portfolio going to each asset.

$$
\begin{array}{l} \mu_ {\text {p o r t f o l i o}} = \mathrm {w} _ {\mathrm {A}} \mu_ {\mathrm {A}} + (1 - \mathrm {w} _ {\mathrm {A}}) \mu_ {\mathrm {B}} \\ \sigma_ {\text {p o r t f o l i o}} ^ {2} = \mathrm {w} _ {\mathrm {A}} ^ {2} \sigma_ {\mathrm {A}} ^ {2} + (1 - \mathrm {w} _ {\mathrm {A}}) ^ {2} \sigma_ {\mathrm {B}} ^ {2} + 2 \mathrm {w} _ {\mathrm {A}} (1 - \mathrm {w} _ {\mathrm {A}}) \rho_ {\mathrm {A B}} \sigma_ {\mathrm {A}} \sigma_ {\mathrm {B}} \\ \end{array}
$$ where  $\mathrm{w_A} =$  Proportion of the portfolio in asset A


The last term in the variance formulation is sometimes written in terms of the covariance in returns between the two assets, which is:

$$

\sigma_ {\mathrm {A B}} = \rho_ {\mathrm {A B}} \sigma_ {\mathrm {A}} \sigma_ {\mathrm {B}}

$$

The savings that accrue from diversification are a function of the correlation coefficient. Other things remaining equal, the higher the correlation in returns between the two assets, the smaller are the potential benefits from diversification. It is worth adding, though, that the benefits of correlation exist even for positively correlated assets and are non-existent only when the correlation is equal to one.


# Mean-Variance Models Measuring Market Risk

While most risk and return models in use in finance agree on the first two steps of the risk analysis process (i.e., that risk comes from the distribution of actual returns around the expected return and that risk should be measured from the perspective of a marginal investor who is well diversified), they part ways when it comes to measuring nondiversifiable or market risk. This section will discuss the different models that exist in finance for measuring market risk and why they differ. It begins with what still is the most widely used model for measuring market risk in finance—the capital asset pricing model (CAPM)—and then discusses the alternatives to this model that have developed over the past two decades. While the discussion will emphasize the differences, it will also look at what the models have in common.

Capital Asset Pricing Model The risk and return model that has been in use the longest and is still the standard for most practitioners is the capital asset pricing model (CAPM). This section will examine the assumptions on which the model is based and the measures of market risk that emerge from these assumptions.

# WHY IS THE MARGINAL INVESTOR ASSUMED TO BE DIVERSIFIED?

The argument that diversification reduces an investor's exposure to risk is clear both intuitively and statistically, but risk and return models in finance go further. These models look at risk through the eyes of the investor most likely to be trading on the investment at any point in time—the marginal investor. They argue that this investor, who sets prices for investments, is well diversified; thus, the only risk that he or she cares about is the risk added to a diversified portfolio or market risk. This argument can be justified simply. The risk in an investment will always be perceived to be higher for an undiversified investor than for a diversified one, since the latter does not shoulder any firm-specific risk and the former does. If both investors have the same expectations about future earnings and cash flows on an asset, the diversified investor will be willing to pay a higher price for that asset because of his or her perception of lower risk. Consequently, the asset, over time, will end up being held by diversified investors.

This argument is powerful, especially in markets where assets can be traded easily and at low cost. Thus, it works well for a stock traded in developed markets, since investors can become diversified at fairly low cost. In addition, a significant proportion of the trading in developed market stocks is done by institutional investors, who tend to be well diversified. It becomes a more difficult argument to sustain when assets cannot be easily traded or the costs of trading are high. In these markets, the marginal investor may well be undiversified, and firm-specific risk may therefore continue to matter when looking at individual investments. For instance, real estate in most countries is still held by investors who are undiversified and have the bulk of their wealth tied up in these investments.

Assumptions While diversification reduces the exposure of investors to firm-specific risk, most investors limit their diversification to holding only a few assets. Even large mutual funds rarely hold more than a few hundred stocks, and many of them hold as few as 10 to 20. There are two reasons why investors stop diversifying. One is that an investor or mutual fund manager can obtain most of the benefits of diversification from a relatively small portfolio, because the marginal benefits of diversification become smaller as the portfolio gets more diversified. Consequently, these benefits may not cover the marginal costs of diversification, which include transactions and monitoring costs. Another reason for limiting diversification is that many investors (and funds) believe they can find undervalued assets and thus choose not to hold those assets that they believe to be fairly valued or overvalued.

The capital asset pricing model assumes that there are no transaction costs, all assets are traded, and investments are infinitely divisible (i.e., you can buy any fraction of a unit of the asset). It also assumes that everyone has access to the same information and that investors therefore cannot find under- or overvalued assets in the marketplace. By making these assumptions, it allows investors to keep diversifying without additional cost. At the limit, their portfolios will not only include every traded asset in the market but these assets will be held in proportion to their market value.

The fact that this portfolio includes all traded assets in the market is the reason it is called the market portfolio, which should not be a surprising result, given the benefits of diversification and the absence of transaction costs in the capital asset pricing model. If diversification reduces exposure to firm-specific risk and there are no costs associated with adding more assets to the portfolio, the logical limit to diversification is to hold a small proportion of every traded asset in the economy. If this seems abstract, consider the market portfolio to be an extremely well diversified mutual fund that holds stocks and real assets. In the CAPM, all investors will hold combinations of the riskier asset and that supremely diversified mutual fund.[2]

Investor Portfolios in the CAPM If every investor in the market holds the identical market portfolio, how exactly do investors reflect their risk aversion in their investments? In the capital asset pricing model, investors adjust for their risk preferences in their allocation decision, where they decide how much to invest in a riskless asset and how much in the market portfolio. Investors who are risk averse might choose to put much or even all of their wealth in the riskless asset. Investors who want to take more risk will invest the bulk or even all of their wealth in the market portfolio. Investors who invest all their wealth in the market portfolio and are desirous of taking on still more risk would do so by borrowing at the riskless rate and investing in the same market portfolio as everyone else.

These results are predicated on two additional assumptions. First, there exists a riskless asset, where the expected returns are known with certainty. Second, investors can lend and borrow at the riskless rate to arrive at their optimal allocations. While lending at the riskless rate can be accomplished fairly simply by buying Treasury bills or bonds, borrowing at the riskless rate might be more difficult for individuals to do. There are variations of the CAPM that allow these assumptions to be relaxed and still arrive at conclusions that are consistent with the model.


Measuring the Market Risk of an Individual Asset The risk of any asset to an investor is the risk added by that asset to the investor's overall portfolio. In the CAPM world, where all investors hold the market portfolio, the risk to an investor of an individual asset will be the risk that this asset adds to the market portfolio. Intuitively, if an asset moves independently of the market portfolio, it will not add much risk to the market portfolio. In other words, most of the risk in this asset is firm-specific and can be diversified away. In contrast, if an asset tends to move up when the market portfolio moves up and down when it moves down, it will add risk to the market portfolio. This asset has more market risk and less firm-specific risk. Statistically, this added risk is measured by the covariance of the asset with the market portfolio.

Measuring the Nondiversifiable Risk In a world in which investors hold a combination of only two assets—the riskless asset and the market portfolio—the risk of any individual asset will be measured relative to the market portfolio. In particular, the risk of any asset will be the risk it adds to the market portfolio. To arrive at the appropriate measure of this added risk, assume that  $\sigma_{\mathrm{m}}^{2}$  is the variance of the market portfolio prior to the addition of the new asset and that the variance of the individual asset being added to this portfolio is  $\sigma_{\mathrm{i}}^{2}$ . The market value portfolio weight on this asset is  $\mathbf{w}_{\mathrm{i}}$ , and the covariance in returns between the individual asset and the market portfolio is  $\sigma_{\mathrm{im}}$ . The variance of the market portfolio prior to and after the addition of the individual asset can then be written as:

Variance prior to asset i being added  $= \sigma_{m}^{2}$

Variance after asset i is added  $= \sigma_{\mathrm{m}}^2 = \mathrm{w_i}^2\sigma_{\mathrm{i}}^2 +(1 - \mathrm{w_i})^2\sigma_{\mathrm{m}}^2 +2\mathrm{w_i}(1 - \mathrm{w_i})\sigma_{\mathrm{im}}$

The market value weight on any individual asset in the market portfolio should be small, since the market portfolio includes all traded assets in the economy. Consequently, the first term in the equation should approach zero, and the second term should approach  $\sigma_{\mathrm{m}}^2$ , leaving the third term ( $\sigma_{\mathrm{im}}$ , the covariance) as the measure of the risk added by asset i.

Standardizing Covariances The covariance is a percentage value, and it is difficult to pass judgment on the relative risk of an investment by looking at this value. In other words, knowing that the covariance of Boeing with the market portfolio is 55 percent does not provide us a clue as to whether Boeing is riskier or safer than the average asset. We therefore standardize the risk measure by dividing the covariance of each asset with the market portfolio by the variance of the market portfolio. This yields a risk measure called the beta of the asset:

$$

\text {B e t a o f a s s e t i} = \frac {\text {C o v a r i a n c e o f a s s e t i w i t h m a r k e t p o r t f o l i o}}{\text {V a r i a n c e o f t h e m a r k e t p o r t f o l i o}} = \frac {\sigma_ {\mathrm {i m}}}{\sigma_ {\mathrm {m}} ^ {2}}

$$

Since the covariance of the market portfolio with itself is its variance, the beta of the market portfolio (and, by extension, the average asset in it) is 1. Assets that are riskier than average (using this measure of risk) will have betas that exceed 1, and assets that are safer than average will have betas that are lower than 1. The riskless asset will have a beta of zero.


Getting Expected Returns The fact that every investor holds some combination of the riskless asset and the market portfolio leads to the next conclusion, which is that the expected return on an asset is linearly related to the beta of the asset. In particular, the expected return on an asset can be written as a function of the risk-free rate and the beta of that asset:

$$

\mathrm {E} \left(\mathrm {R} _ {\mathrm {i}}\right) = \mathrm {R} _ {\mathrm {f}} + \beta_ {\mathrm {i}} \left[ \mathrm {E} \left(\mathrm {R} _ {\mathrm {m}}\right) - \mathrm {R} _ {\mathrm {f}} \right]

$$ where  $\mathrm{E}(\mathrm{R}_i) =$  Expected return on asset i

$\dot{\mathrm{R}}_t =$  Risk-free rate

$\mathrm{E}(\mathrm{R}_{\mathrm{m}}) =$  Expected return on market portfolio

$\beta_{i} =$  Beta of asset i

To use the capital asset pricing model, we need three inputs. While the next chapter looks at the estimation process in far more detail, each of these inputs is estimated as follows:

The riskless asset is defined to be an asset for which the investor knows the expected return with certainty for the time horizon of the analysis.

■ The risk premium is the premium demanded by investors for investing in the market portfolio, which includes all risky assets in the market, instead of investing in a riskless asset.

The beta, defined as the covariance of the asset divided by the market portfolio, measures the risk added by an investment to the market portfolio.

In summary, in the capital asset pricing model all the market risk is captured in one beta measured relative to a market portfolio, which at least in theory should include all traded assets in the marketplace held in proportion to their market value.

Arbitrage Pricing Model The restrictive assumptions on transaction costs and private information in the capital asset pricing model, and the model's dependence on the market portfolio, have long been viewed with skepticism by both academics and practitioners. Ross (1976) suggested an alternative model for measuring risk called the arbitrage pricing model (APM).

Assumptions If investors can invest risklessly and earn more than the riskless rate, they have found an arbitrage opportunity. The premise of the arbitrage pricing model is that investors take advantage of such arbitrage opportunities, and in the process eliminate them. If two portfolios have the same exposure to risk but offer different expected returns, investors will buy the portfolio that has the higher expected returns and sell the portfolio with the lower expected returns, and earn the difference as a riskless profit. To prevent this arbitrage from occurring, the two portfolios have to earn the same expected return.

Like the capital asset pricing model, the arbitrage pricing model begins by breaking risk down into firm-specific and market risk components. As in the capital asset pricing model, firm-specific risk covers information that affects primarily the firm. Market risk affects many or all firms and would include unanticipated changes in a number of economic variables, including gross national product, inflation, and interest rates. Incorporating both types of risk into a return model, we get:

$$
\mathrm {R} = \mathrm {E} (\mathrm {R}) + \mathrm {m} + \varepsilon
$$ where  $R$  is the actual return,  $E(R)$  is the expected return,  $m$  is the marketwide component of unanticipated risk, and  $\varepsilon$  is the firm-specific component. Thus, the actual return can be different from the expected return, because of either market risk or firm-specific actions.


Sources of Marketwide Risk While both the capital asset pricing model and the arbitrage pricing model make a distinction between firm-specific and marketwide risk, they measure market risk differently. The CAPM assumes that market risk is captured in the market portfolio, whereas the arbitrage pricing model allows for multiple sources of marketwide risk and measures the sensitivity of investments to changes in each source. In general, the market component of unanticipated returns can be decomposed into economic factors:

$$

\begin{array}{l} R = E (R) + m + \varepsilon \\ = R + \left(\beta_ {1} F _ {1} + \beta_ {2} F _ {2} + \dots + \beta_ {n} F _ {n}\right) + \varepsilon \\ \end{array}

$$ where  $\beta_{j} =$  Sensitivity of investment to unanticipated changes in market risk factor j  $F_{j} =$  Unanticipated changes in market risk factor j

Note that the measure of an investment's sensitivity to any macroeconomic (or market) factor takes the form of a beta, called a factor beta. In fact, this beta has many of the same properties as the market beta in the CAPM.

Effects of Diversification The benefits of diversification were discussed earlier, in the context of the breakdown of risk into market and firm-specific risk. The primary point of that discussion was that diversification eliminates firm-specific risk. The arbitrage pricing model uses the same argument and concludes that the return on a portfolio will not have a firm-specific component of unanticipated returns. The return on a portfolio can be written as the sum of two weighted averages—that of the anticipated returns in the portfolio and that of the market factors:

$$
\begin{array}{l} R _ {p} = \left(w _ {1} R _ {1} + w _ {2} R _ {2} + \dots + w _ {n} R _ {n}\right) + \left(w _ {1} \beta_ {1, 1} + w _ {2} \beta_ {1, 2} + \dots + w _ {n} \beta_ {1, n}\right) F _ {1} + \\ \left(\mathrm {w} _ {1} \beta_ {2, 1} + \mathrm {w} _ {2} \beta_ {2, 2} + \dots + \mathrm {w} _ {\mathrm {n}} \beta_ {2, \mathrm {n}}\right) \mathrm {F} _ {2} \dots . \\ \end{array}
$$ where  $\mathbf{w}_{\mathrm{i}} =$  Portfolio weight on asset j (where there are n assets)


$$

\begin{array}{l} R _ {i} = \text {E x p e c t e d r e t u r n o n a s s e t j} \\ \beta_ {i, j} = \text {B e t a o n f a c t o r i f o r s a s s e t j} \\ \end{array}

$$

Expected Returns and Betas The final step in this process is estimating an expected return as a function of the betas just specified. To do this, we should first note that the beta of a portfolio is the weighted average of the betas of the assets in the portfolio. This property, in conjunction with the absence of arbitrage, leads to the conclusion that expected returns should be linearly related to betas. To see why, assume that there is only one factor and three portfolios. Portfolio A has a beta of 2.0 and an expected return of 20 percent; portfolio B has a beta of 1.0 and an expected return of 12 percent; and portfolio C has a beta of 1.5 and an expected return of 14 percent. Note that investors can put half of their wealth in portfolio A and half in portfolio B and end up with portfolios with a beta of 1.5 and an expected return of 16 percent. Consequently no investor will choose to hold portfolio C until the prices of assets in that portfolio drop and the expected return increases to 16 percent. By the same rationale, the expected returns of every portfolio should be a linear function of the beta. If they were not, we could combine two other portfolios, one with a higher beta and one with a lower beta, to earn a higher return than the portfolio in question, creating an opportunity for arbitrage. This argument can be extended to multiple factors with the same results. Therefore, the expected return on an asset can be written as:


$$

\mathrm {E} (\mathrm {R}) = \mathrm {R} _ {\mathrm {f}} + \beta_ {1} [ \mathrm {E} (\mathrm {R} _ {1}) - \mathrm {R} _ {\mathrm {f}} ] + \beta_ {2} [ \mathrm {E} (\mathrm {R} _ {2}) - \mathrm {R} _ {\mathrm {f}} ] \dots + \beta_ {\mathrm {K}} [ \mathrm {E} (\mathrm {R} _ {\mathrm {K}}) - \mathrm {R} _ {\mathrm {f}} ]

$$ where  $\mathrm{R_f} =$  Expected return on a zero-beta portfolio

$\mathrm{E}(\mathrm{R}_{\mathrm{j}}) =$  Expected return on a portfolio with a factor beta of 1 for factor j, and zero for all other factors (where  $\mathrm{j} = 1,2,\dots ,\mathrm{K}$  factors)

The terms in the brackets can be considered to be risk premiums for each of the factors in the model.

The capital asset pricing model can be considered to be a special case of the arbitrage pricing model, where there is only one economic factor driving marketwide returns, and the market portfolio is the factor.

$$
\mathrm {E} (\mathrm {R}) = \mathrm {R} _ {\mathrm {f}} + \beta_ {\mathrm {m}} [ \mathrm {E} (\mathrm {R} _ {\mathrm {m}}) - \mathrm {R} _ {\mathrm {f}} ]
$$

The APM in Practice The arbitrage pricing model requires estimates of each of the factor betas and factor risk premiums in addition to the riskless rate. In practice, these are usually estimated using historical data on asset returns and a factor analysis. Intuitively, in a factor analysis, we examine the historical data looking for common patterns that affect broad groups of assets (rather than just one sector or a few assets). A factor analysis provides two output measures:

1. It specifies the number of common factors that affected the historical return data.
2. It measures the beta of each investment relative to each of the common factors and provides an estimate of the actual risk premium earned by each factor.

The factor analysis does not, however, identify the factors in economic terms. In summary, in the arbitrage pricing model the market risk is measured relative to multiple unspecified macroeconomic variables, with the sensitivity of the investment relative to each factor being measured by a beta. The number of factors, the factor betas, and the factor risk premiums can all be estimated using the factor analysis.

Multifactor Models for Risk and Return The arbitrage pricing model's failure to identify the factors specifically in the model may be a statistical strength, but it is an intuitive weakness. The solution seems simple: Replace the unidentified statistical factors with specific economic factors, and the resultant model should have an economic basis while still retaining much of the strength of the arbitrage pricing model. That is precisely what multifactor models try to do.

Deriving a Multifactor Model Multifactor models generally are determined by historical data rather than by economic modeling. Once the number of factors has been identified in the arbitrage pricing model, their behavior over time can be extracted from the data. The behavior of the unnamed factors over time can then be compared to the behavior of macroeconomic variables over that same period, to see whether any of the variables is correlated, over time, with the identified factors.

For instance, Chen, Roll, and Ross (1986) suggest that the following macroeconomic variables are highly correlated with the factors that come out of factor analysis: industrial production, changes in default premium, shifts in the term structure, unanticipated inflation, and changes in the real rate of return. These variables can then be correlated with returns to come up with a model of expected returns, with firm-specific betas calculated relative to each variable.

$$
\mathrm {E} (\mathrm {R}) = \mathrm {R} _ {\mathrm {f}} + \beta_ {\mathrm {G N P}} \left[ \mathrm {E} \left(\mathrm {R} _ {\mathrm {G N P}}\right) - \mathrm {R} _ {\mathrm {f}} \right] + \beta_ {\mathrm {I}} \left[ \mathrm {E} \left(\mathrm {R} _ {\mathrm {I}}\right) - \mathrm {R} _ {\mathrm {f}} \right] \dots + \beta_ {\delta} \left[ \mathrm {E} \left(\mathrm {R} _ {\delta}\right) - \mathrm {R} _ {\mathrm {f}} \right]
$$ where  $\beta_{\mathrm{GNP}} =$  Beta relative to changes in industrial production


$\mathrm{E}(\mathrm{R}_{\mathrm{GNP}}) =$  Expected return on a portfolio with a beta of one on the industrial production factor and zero on all other factors

$\beta_{\mathrm{I}} =$  Beta relative to changes in inflation

$\mathrm{E}(\mathrm{R}_{\mathrm{I}}) =$  Expected return on a portfolio with a beta of one on the inflation factor and zero on all other factors

The costs of going from the arbitrage pricing model to a macroeconomic multifactor model can be traced directly to the errors that can be made in identifying the factors. The economic factors in the model can change over time, as will the risk premium associated with each one. For instance, oil price changes were a significant economic factor driving expected returns in the 1970s but are not as significant in other time periods. Using the wrong factor or missing a significant factor in a multifactor model can lead to inferior estimates of expected return.

# ALTERNATIVE MODELS FOR EQUITY RISK

The CAPM, arbitrage pricing model, and multifactor model represent attempts by financial economists to build risk and return models from the mean-variance base established by Harry Markowitz (1991). There are many, though, who believe the basis for the model is flawed and that we should be looking at alternatives, and in this section, we will look at some of them.

# Different Return Distributions

From its very beginnings, the mean-variance framework has been controversial. While there have been many who have challenged its applicability, we will consider these challenges in three groups. The first group argues that stock prices, in particular, and investment returns, in general, exhibit too many large values to be drawn from a normal distribution. They argue that the fat tails on stock price distributions lend themselves better to a class of distributions, called power law distributions, which exhibit infinite variance and long periods of price dependence. The second group takes issue with the symmetry of the normal distribution and argues for measures that incorporate the asymmetry observed in actual return distributions into risk measures. The third group posits that distributions that allow for price jumps are more realistic and that risk measures should consider the likelihood and magnitude of price jumps.


Fat Tails and Power Law Distributions Benoit Mandelbrot (1961; Mandelbrot and Hudson, 2004), a mathematician who also did pioneering work on the behavior of stock prices, was one of those who took issue with the use of normal and lognormal distributions. He argued, based on his observation of stock and real asset prices, that a power law distribution characterized them better. In a power-law distribution, the relationship between two variables, Y and X, can be written as follows:

$$

\mathrm {Y} = \alpha^ {\mathrm {X}}

$$

In this equation,  $\alpha$  is a constant (constant of proportionality), and  $k$  is the power law exponent. Mandelbrot's key point was that the normal and log normal distributions were best suited for series that exhibited mild and well-behaved randomness, whereas power law distributions were more suited for series that exhibited large movements and what he termed wild randomness. Wild randomness occurs when a single observation can affect the population in a disproportionate way; stock and commodity prices exhibit wild randomness. Stock and commodity prices, with their long periods of relatively small movements, punctuated by wild swings in both directions, seem to fit better into the wild randomness group.

What are the consequences for risk measures? If asset prices follow power law distributions, the standard deviation or volatility ceases to be a good risk measure and a good basis for computing probabilities. Assume, for instance, that the standard deviation in annual stock returns is 15 percent and that the average return is 10 percent. Using the normal distribution as the base for probability predictions, this will imply that the stock returns will exceed 40 percent (average plus two standard deviations) only once every 44 years and 55 percent only (average plus three standard deviations) only once every 740 years. In fact, stock returns will be greater than 85 percent (average plus five standard deviations) only once every 3.5 million years. In reality, stock returns exceed these values far more frequently, a finding consistent with power law distributions, where the probability of larger values declines linearly as a function of the power law exponent. As the value gets doubled, the probability of its occurrence drops by the square of the exponent. Thus, if the exponent in the distribution is 2, the likelihood of returns of 25 percent, 50 percent, and 100 percent can be computed as follows:

Returns will exceed 25 percent: once every 6 years.

Returns will exceed 50 percent: once every 24 years.

Returns will exceed 100 percent: once every 96 years.

Note that as the returns get doubled, the likelihood increases four-fold (the square of the exponent). As the exponent decreases, the likelihood of larger values increases; an exponent between 0 and 2 will yield extreme values more often than a normal distribution. An exponent between 1 and 2 yields power law distributions called stable Paretian distributions, which have infinite variance. In an early study, Fama (1965) estimated the exponent for stocks to be between 1.7 and 1.9, but subsequent studies have found that the exponent is higher in both equity and currency markets.

In practical terms, the power law proponents argue that using measures such as volatility (and its derivatives such as beta) underestimate the risk of large movements. The power law exponents for assets, in their view, provide investors with more realistic risk measures for these assets. Assets with higher exponents are less risky (since extreme values become less common) than asset with lower exponents.

Mandelbrot's challenge to the normal distribution was more than a procedural one. Mandelbrot's world, in contrast to the Gaussian mean-variance one, is a world where prices move jaggedly over time and look as though they have no pattern at a distance, but where patterns repeat themselves, when observed closely. In the 1970s, Mandelbrot created a branch of mathematics called fractal geometry where processes are not described by conventional statistical or mathematical measures but by fractals; a fractal is a geometric shape that when broken down into smaller parts replicates that shape. To illustrate the concept, he uses the example of the coastline that, from a distance, looks irregular and up close looks roughly the same—fractal patterns repeat themselves. In fractal geometry, higher fractal dimensions translate into more jagged shapes; the rugged Cornish coastline has a fractal dimension of 1.25 whereas the much smoother South African coastline has a fractal dimension of 1.02. Using the same reasoning, stock prices that look random, when observed at longer time intervals, start revealing self-repeating patterns, when observed over shorter time periods. More volatile stocks score higher on measures of fractal dimension, thus making it a measure of risk. With fractal geometry, Mandelbrot was able to explain not only the higher frequency of price jumps (relative to the normal distribution) but also long periods where prices move in the same direction and the resulting price bubbles.

Asymmetric Distributions Intuitively, it should be downside risk that concerns us and not upside risk. In other words, it is not investments that go up significantly that create heartburn and unease but investments that go down significantly. The mean-variance framework, by weighting both upside volatility and downside movements equally, does not distinguish between the two. With a normal or any other symmetric distribution, the distinction between upside and downside risk is irrelevant because the risks are equivalent. With asymmetric distributions, though, there can be a difference between upside and downside risk. Studies of risk aversion in humans conclude that (1) they are loss averse; that is, they weigh the pain of a loss more than the joy of an equivalent gain and (2) they value very large positive payoffs—long shots—far more than they should given the likelihood of these payoffs.

In practice, return distributions for stocks and most other assets are not symmetric. Instead, asset returns exhibit fat tails (i.e., more jumps) and are more likely to have extreme positive values than extreme negative values (simply because returns are constrained to be no less than  $-100$  percent). As a consequence, the distribution of stock returns has a higher incidence of extreme returns (fat tails or kurtosis) and a tilt toward very large positive returns (positive skewness). Critics of the mean-variance approach argue that it takes too narrow a view of both rewards and risk. In their view, a fuller return measure should consider not just the magnitude of expected returns but also the likelihood of very large positive returns or skewness, and a more complete risk measure should incorporate both variance and the possibility of big jumps (co-kurtosis). Note that even as these approaches deviate from the mean-variance approach in terms of how they define risk, they stay true to the portfolio measure of risk. In other words, it is not the possibility of large positive payoffs (skewness) or big jumps (kurtosis) that they argue should be considered, but only that portion of the skewness (co-skewness) and kurtosis (co-kurtosis) that is market-related and not diversifiable.

Jump Process Models The normal, power law, and asymmetric distributions that form the basis for the models we have discussed in this section are all continuous distributions. Observing the reality that stock prices do jump, there are some who have argued for the use of jump process distributions to derive risk measures.

Press (1967), in one of the earliest papers that attempted to model stock price jumps, argued that stock prices follow a combination of a continuous price distribution and a Poisson distribution, where prices jump at irregular intervals. The key parameters of the Poisson distribution are the expected size of the price jump  $(\mu)$ , the variance in this value  $(\delta^2)$ , and the likelihood of a price jump in any specified time period  $(\lambda)$ , and Press estimated these values for 10 stocks. In subsequent papers, Beckers (1981) and Ball and Torous (1983) suggest ways of refining these estimates. In an attempt to bridge the gap between the CAPM and jump process models, Jarrow and Rosenfeld (1984) derive a version of the capital asset pricing model that includes a jump component that captures the likelihood of market jumps and an individual asset's correlation with these jumps.

While jump process models have gained some traction in option pricing, they have had limited success in equity markets, largely because the parameters of jump process models are difficult to estimate with any degree of precision. Thus, while everyone agrees that stock prices jump, there is little consensus on the best way to measure how often this happens, whether these jumps are diversifiable, and how best to incorporate their effect into risk measures.

# Regression or Proxy Models

The conventional models for risk and return in finance (CAPM, arbitrage pricing model, and even multifactor models) start by making assumptions about how investors behave and how markets work to derive models that measure risk and link those measures to expected returns. While these models have the advantage of a foundation in economic theory, they seem to fall short in explaining differences in returns across investments. The reasons for the failure of these models run the gamut: The assumptions made about markets are unrealistic (no transactions costs, perfect information) and investors don't behave rationally (and behavioral finance research provides ample evidence of this).


With proxy models, we essentially give up on building risk and return models from economic theory. Instead, we start with how investments are priced by markets and relate returns earned to observable variables. Rather than talk in abstractions, consider the work done by Fama and French in the early 1990s. Examining returns earned by individual stocks from 1962 to 1990, they concluded that CAPM betas did not explain much of the variation in these returns. They then took a different tack and looked for company-specific variables that did a better job of explaining return differences they pinpointed two variables—the market capitalization of a firm and its price-to-book ratio (the ratio of market cap to accounting book value for equity). Specifically, they concluded that small market cap stocks earned much higher annual returns than large market cap stocks and that low price to book ratio stocks earned much higher annual returns than stocks that traded at high price-to-book ratios. Rather than view this as evidence of market inefficiency (which is what prior studies that had found the same phenomena had done), they argued if these stocks earned higher returns over long time periods, they must be riskier than stocks that earned lower returns. In effect, market capitalization and price-to-book ratios were better proxies for risk, according to their reasoning, than betas. In fact, they regressed returns on stocks against the market capitalization of a company and its price-to-book ratio to arrive at the following regression for U.S. stocks;

$$

\begin{aligned} \text {Expected monthly return} & = 1.77\% -0.11[\ln (\text {Market capitalization in millions})] \\ & +0.35[\ln (\text {Book / Price})] \end{aligned}

$$

In a pure proxy model, you could plug the market capitalization and book-to-market ratio for any company into this regression to get expected monthly returns.

In the two decades since the Fama-French paper brought proxy models to the fore, researchers have probed the data (which has become more detailed and voluminous over time) to find better and additional proxies for risk. Some of the proxies are highlighted here:

■ Earnings momentum. Equity research analysts will find vindication in research that seems to indicate that companies that have reported stronger than expected earnings growth in the past earn higher returns than the rest of the market.
■ Price momentum. Chartisti will smile when they read this, but researchers have concluded that price momentum carries over into future periods. Thus, the expected returns will be higher for stocks that have outperformed markets in recent time periods and lower for stocks that have lagged.
■ Liquidity. In a nod to real-world costs, there seems to be clear evidence that stocks that are less liquid (lower trading volume, higher bid-ask spreads) earn higher returns than more liquid stocks.

While the use of pure proxy models by practitioners is rare, they have adapted the findings for these models into their day-to-day use. Many analysts have melded the CAPM with proxy models to create composite or melded models. For instance, many analysts who value small companies derive expected returns for these companies by adding a small cap premium to the CAPM expected return:


Expected return  $=$  Risk-free rate + Market beta × Equity risk premium + Small cap premium

The threshold for small capitalization varies across time but is generally set at the bottom decile of publicly traded companies, and the small cap premium itself is estimated by looking at the historical premium earned by small cap stocks over the market. Using the Fama-French findings, the CAPM has been expanded to include market capitalization and price-to-book ratios as additional variables, with the expected return stated as:

Expected return  $=$  Risk-free rate + Market beta × Equity risk premium + Size beta * Small cap risk premium + Book-to-market beta × Book-to-market premium

The size and the book-to-market betas are estimated by regressing a stock's returns against the size premium and book-to-market premiums over time; this is analogous to the way we get the market beta, by regressing stock returns against overall market returns.

While the use of proxy and melded models offers a way of adjusting expected returns to reflect market reality, there are three dangers in using these models.

1. Data mining. As the amount of data that we have on companies increases and becomes more accessible, it is inevitable that we will find more variables that are related to returns. It is also likely that most of these variables are not proxies for risk and that the correlation is a function of the time period that we look at. In effect, proxy models are statistical models and not economic models. Thus, there is no easy way to separate the variables that matter from those that do not.
2. Standard error. Since proxy models come from looking at historical data, they carry all of the burden of the noise in the data. Stock returns are extremely volatile over time, and any historical premia that we compute (for market capitalization or any other variable) are going to have significant standard errors. The standard errors on the size and book-to-market betas in the three-factor Fama-French model may be so large that using them in practice creates almost as much noise as it adds in precision.
3. Pricing error or risk proxy. For decades, value investors have argued that you should invest in stocks with low PE ratios that trade at low multiples of book value and have high dividend yields, pointing to the fact that you will earn higher returns by doing so. (In fact, a scan of Benjamin Graham's screens from security analysis for cheap companies unearths most of the proxies that you see in use today.) Proxy models incorporate all of these variables into the expected return and thus render these assets to be fairly priced. Using the circular logic of these models, markets are always efficient because any inefficiency that exists is just another risk proxy that needs to get built into the model.

# A COMPARATIVE ANALYSIS OF EQUITY RISK MODELS

When faced with the choice of estimating expected returns on equity or cost of equity, we are therefore faced with several choices, ranging from the CAPM to proxy models. Table 4.1 summarizes the different models and presents their pluses and minuses.

TABLE 4.1 Alternative Models for Cost of Equity

<table><tr><td>Model</td><td>Expected Return on Equity</td><td>Pluses</td><td>Minuses</td></tr><tr><td>The CAPM</td><td>E(R) = Rf + β, × ERP</td><td>Simple to compute</td><td>Does not explain differences in returns across stocks well.</td></tr><tr><td>APM (n factors)</td><td>E(R) = Rf + ∑j=1j=nβj[E(Rj) - Rf]</td><td>More nuanced breakdown of market risk</td><td>Factors are statistical and unnamed.</td></tr><tr><td>Multifactor model (n factors)</td><td>E(R) = Rf + ∑k=nβk[E(Rk) - Rf]</td><td>More intuitive than APM</td><td>Factors are unstable and change over time.</td></tr><tr><td>Alternative distributions</td><td>Depends on model</td><td>More realistic</td><td>Parameters for the models are very difficult to estimate.</td></tr><tr><td>Proxy models</td><td>E(R) = a + b X1 + c X2</td><td>Explains differences in past returns well</td><td>Variables in model may not be proxies for risk and reflect data mining.</td></tr></table>

$\mathbb{R}_i$  Riskfree rate, ERP: Equity Risk Premium  $= \mathrm{E}(\mathrm{Rm}) - \mathrm{R}_i$ . X1, X2: Company-specific variables.

The decision has to be based as much on theoretical considerations as it will be on pragmatic considerations. The CAPM is the simplest of the models, insofar as it requires only one firm-specific input (the beta), and that input can be estimated readily from public information. To replace the CAPM with an alternative model, whether it be from the mean variance family (arbitrage pricing model or multifactor models), alternative return process families (power, asymmetric, and jump distribution models), or proxy models, we need evidence of substantial improvement in accuracy in future forecasts (and not just in explaining past returns).

Ultimately, the survival of the capital asset pricing model as the default model for risk in real-world applications is a testament to both its intuitive appeal and the failure of more complex models to deliver significant improvement in terms of estimating expected returns. We would argue that a judicious use of the capital asset pricing model, without an over reliance on historical data, is still the most effective way of dealing with risk in valuation in most cases. In some sectors (commodities) and segments (closely held companies, illiquid stocks), using other, more complete models will be justified. We will return to the question of how improvements in estimating the inputs to the CAPM can generate far more payoff than switching to more complicated models for cost of equity.

# MODELS OF DEFAULT RISK

The risk discussed so far in this chapter relates to cash flows on investments being different from expected cash flows. There are some investments, however, in which the cash flows are promised when the investment is made. This is the case, for instance, when you lend to a business or buy a corporate bond; the borrower may default on interest and principal payments on the borrowing. Generally speaking, borrowers with higher default risk should pay higher interest rates on their borrowing than those with lower default risk. This section examines the measurement of default risk and the relationship of default risk to interest rates on borrowing.


In contrast to the general risk and return models for equity, which evaluate the effects of market risk on expected returns, models of default risk measure the consequences of firm-specific default risk on promised returns. While diversification can be used to explain why firm-specific risk will not be priced into expected returns for equities, the same rationale cannot be applied to securities that have limited upside potential and much greater downside potential from firm-specific events. To see what is meant by limited upside potential, consider investing in the bond issued by a company. The coupons are fixed at the time of the issue, and these coupons represent the promised cash flow on the bond. The best-case scenario for you as an investor is that you receive the promised cash flows; you are not entitled to more than these cash flows even if the company is wildly successful. All other scenarios contain only bad news, though in varying degrees, with the delivered cash flows being less than the promised cash flows. Consequently, the expected return on a corporate bond is likely to reflect the firm-specific default risk of the firm issuing the bond.

# Determinants of Default Risk

The default risk of a firm is a function of two variables. The first is the firm's capacity to generate cash flows from operations, and the second is its financial obligations—including interest and principal payments.[5] Firms that generate high cash flows relative to their financial obligations should have lower default risk than do firms that generate low cash flows relative to obligations. Thus, firms with significant existing investments that generate high cash flows will have lower default risk than will firms that do not have such investments.

In addition to the magnitude of a firm's cash flows, the default risk is also affected by the volatility in these cash flows. The more stability there is in cash flows, the lower is the default risk in the firm. Firms that operate in predictable and stable businesses will have lower default risk than will otherwise similar firms that operate in cyclical or volatile businesses.

Most models of default risk use financial ratios to measure the cash flow coverage (i.e., the magnitude of cash flows relative to obligations) and control for industry effects in order to evaluate the variability in cash flows.

# Bond Ratings and Interest Rates

The most widely used measure of a firm's default risk is its bond rating, which is generally assigned by an independent ratings agency. The two best known are Standard & Poor's (S&P) and Moody's. Thousands of companies are rated by these two agencies, and their views carry significant weight with financial markets.

The Ratings Process The process of rating a bond starts when the issuing company requests a rating from a bond ratings agency. The ratings agency then collects information from both publicly available sources, such as financial statements, and the company itself and makes a decision on the rating. If the company disagrees with the rating, it is given the opportunity to present additional information. This process is presented schematically for one ratings agency, Standard & Poor's, in Figure 4.5.

The ratings assigned by these agencies are letter ratings. A rating of AAA from Standard & Poor's and Aaa from Moody's represents the highest rating, granted to firms that are viewed as having the lowest default risk. As the default risk increases, the ratings decline toward D for firms in default (Standard & Poor's). A rating at or above BBB by Standard & Poor's (or Baa by Moody's) is categorized as above investment grade, reflecting the view of the ratings agency that there is relatively little default risk in investing in bonds issued by these firms.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/b3814901ebfc788586e2ff174a7b63c7be0526ff43df7cfa3a1cd6480b39a6a0.jpg)
FIGURE 4.5 The Ratings Process

Determinants of Bond Ratings The bond ratings assigned by ratings agencies are primarily based on publicly available information, though private information conveyed by the firm to the ratings agency does play a role. The rating assigned to a company's bonds will depend in large part on financial ratios that measure the capacity of the company to meet debt payments and generate stable and predictable cash flows. While a multitude of financial ratios exist, Table 4.2 summarizes some of the key ratios used to measure default risk.

There is a strong relationship between the bond rating a company receives and its performance on these financial ratios. Table 4.3 provides a summary of the median ratios from 2007 to 2009 for different S&P ratings classes for manufacturing firms.

Not surprisingly, firms that generate income and cash flows significantly higher than debt payments, that are profitable, and that have low debt ratios are

TABLE 4.2 Definition of Financial Ratios: S&P

<table><tr><td>Financial Ratio</td><td>Definition</td></tr><tr><td>EBITDA/Revenues</td><td>EBITDA/Revenues</td></tr><tr><td>ROIC</td><td>ROIC = EBIT/(BV of debt + BV of equity - Cash)</td></tr><tr><td>EBIT/Interest expenses</td><td>Interest coverage ratio</td></tr><tr><td>EBITDA/Interest</td><td>EBITDA/Interest expenses</td></tr><tr><td>FFO/debt</td><td>(Net Income + Depreciation)/Debt</td></tr><tr><td>Free operating CF/Debt</td><td>Funds from operations/Debt</td></tr><tr><td>Discounted CF/Debt</td><td>Discounted cash flows/Debt</td></tr><tr><td>Debt/EBITDA</td><td>BV of Debt/EBITDA</td></tr><tr><td>D/(D+E)</td><td>BV of Debt/(BV of Debt + BV of equity)</td></tr></table>

TABLE 4.3 Financial Ratios and S&P Ratings

<table><tr><td></td><td>AAA</td><td>AA</td><td>A</td><td>BBB</td><td>BB</td><td>B</td><td>CCC</td></tr><tr><td>EBITDA/Revenues</td><td>22.20\%</td><td>26.50\%</td><td>19.80\%</td><td>17.00\%</td><td>17.20\%</td><td>16.20\%</td><td>10.50\%</td></tr><tr><td>ROIC</td><td>27.00\%</td><td>28.40\%</td><td>21.80\%</td><td>15.20\%</td><td>12.40\%</td><td>8.70\%</td><td>2.70\%</td></tr><tr><td>EBIT/Interest expenses</td><td>26.20</td><td>16.40</td><td>11.20</td><td>5.80</td><td>3.40</td><td>1.40</td><td>0.40</td></tr><tr><td>EBITDA/Interest</td><td>32.00</td><td>19.50</td><td>13.50</td><td>7.80</td><td>4.80</td><td>2.30</td><td>1.10</td></tr><tr><td>FFO/Debt</td><td>155.50\%</td><td>79.20\%</td><td>54.50\%</td><td>35.50\%</td><td>25.70\%</td><td>11.50\%</td><td>2.50\%</td></tr><tr><td>Free-operating CF/Debt</td><td>129.90\%</td><td>40.60\%</td><td>31.20\%</td><td>16.10\%</td><td>7.10\%</td><td>2.20\%</td><td>-3.60\%</td></tr><tr><td>Discounted CF/Debt</td><td>84.40\%</td><td>23.30\%</td><td>19.90\%</td><td>10.30\%</td><td>5.50\%</td><td>0.70\%</td><td>-3.60\%</td></tr><tr><td>Debt/EBITDA</td><td>0.40</td><td>0.90</td><td>1.50</td><td>2.20</td><td>3.10</td><td>5.50</td><td>8.60</td></tr><tr><td>D/(D+E)</td><td>12.30\%</td><td>35.20\%</td><td>36.80\%</td><td>44.50\%</td><td>52.50\%</td><td>73.20\%</td><td>98.90\%</td></tr></table> more likely to be highly rated than are firms that do not have these characteristics. There will be individual firms whose ratings are not consistent with their financial ratios, however, because the ratings agency does add subjective judgments into the final mix. Thus a firm that performs poorly on financial ratios but is expected to improve its performance dramatically over the next period may receive a higher rating than is justified by its current financials. For most firms, however, the financial ratios should provide a reasonable basis for estimating the bond rating.


Bond Ratings and Interest Rates The interest rate on a corporate bond should be a function of its default risk, which is measured by its rating. If the rating is a good measure of the default risk, higher-rated bonds should be priced to yield lower interest rates than those of lower-rated bonds. In fact, the difference between the interest rate on a bond with default risk and a default-free government bond is the default spread. This default spread will vary by maturity of the bond and can also change from period to period, depending on economic conditions. Chapter 7 considers how best to estimate these default spreads and how they might vary over time.

# CONCLUSION

Risk, as defined in finance, is measured based on deviations of actual returns on an investment from its expected returns. There are two types of risk. The first, called equity risk, arises in investments where there are no promised cash flows, but there are expected cash flows. The second, default risk, arises on investments with promised cash flows.

On investments with equity risk, the risk is best measured by looking at the variance of actual returns around the expected returns, with greater variance indicating greater risk. This risk can be broken down into risk that affects one or a few investments, called firm-specific risk, and risk that affects many investments, referred to as market risk. When investors diversify, they can reduce their exposure to firm-specific risk. If we assume that the investors who trade at the margin are well diversified, the risk we should be looking at with equity investments is the nondiversifiable or market risk. The different models of equity risk introduced in this chapter share this objective of measuring market risk, but they differ in the way they do it. In the capital asset pricing model, exposure to market risk is measured by a market beta, which estimates how much risk an individual investment will add to a portfolio that includes all traded assets. The arbitrage pricing model and the multifactor model allow for multiple sources of market risk and estimate betas for an investment relative to each source. Regression or proxy models for risk look for firm characteristics, such as size, that have been correlated with high returns in the past and use these to measure market risk. In all these models, the risk measures are used to estimate the expected return on an equity investment. This expected return can be considered the cost of equity for a company.

On investments with default risk, risk is measured by the likelihood that the promised cash flows might not be delivered. Investments with higher default risk should have higher interest rates, and the premium that we demand over a riskless rate is the default spread. For many U.S. companies, default risk is measured by rating agencies in the form of a bond rating; these ratings determine, in large part, the interest rates at which these firms can borrow. Even in the absence of ratings, interest rates will include a default spread that reflects the lenders' assessments of default risk. These default-risk-adjusted interest rates represent the cost of borrowing or debt for a business.


# QUESTIONS AND SHORT PROBLEMS

In the problems following, use an equity risk premium of 5.5 percent if none is specified.

1. The following table lists the stock prices for Microsoft from 1989 to 1998. The company did not pay any dividends during the period.

<table><tr><td>Year</td><td>Price</td></tr><tr><td>1989</td><td>$ 1.20</td></tr><tr><td>1990</td><td>$ 2.09</td></tr><tr><td>1991</td><td>$ 4.64</td></tr><tr><td>1992</td><td>$ 5.34</td></tr><tr><td>1993</td><td>$ 5.05</td></tr><tr><td>1994</td><td>$ 7.64</td></tr><tr><td>1995</td><td>$10.97</td></tr><tr><td>1996</td><td>$20.66</td></tr><tr><td>1997</td><td>$32.31</td></tr><tr><td>1998</td><td>$69.34</td></tr></table> a. Estimate the average annual return you would have made on your investment.

b. Estimate the standard deviation and variance in annual returns.
c. If you were investing in Microsoft today, would you expect the historical standard deviations and variances to continue to hold? Why or why not?

2. Unicom is a regulated utility serving northern Illinois. The following table lists the stock prices and dividends on Unicom from 1989 to 1998.

<table><tr><td>Year</td><td>Price</td><td>Dividends</td></tr><tr><td>1989</td><td>$36.10</td><td>$3.00</td></tr><tr><td>1990</td><td>$33.60</td><td>$3.00</td></tr><tr><td>1991</td><td>$37.80</td><td>$3.00</td></tr><tr><td>1992</td><td>$30.90</td><td>$2.30</td></tr><tr><td>1993</td><td>$26.80</td><td>$1.60</td></tr><tr><td>1994</td><td>$24.80</td><td>$1.60</td></tr><tr><td>1995</td><td>$31.60</td><td>$1.60</td></tr><tr><td>1996</td><td>$28.50</td><td>$1.60</td></tr><tr><td>1997</td><td>$24.25</td><td>$1.60</td></tr><tr><td>1998</td><td>$35.60</td><td>$1.60</td></tr></table> a. Estimate the average annual return you would have made on your investment.

b. Estimate the standard deviation and variance in annual returns.
c. If you were investing in Unicom today, would you expect the historical standard deviations and variances to continue to hold? Why or why not?

3. The following table summarizes the annual returns you would have made on two companies—Scientific Atlanta, a satellite and data equipment manufacturer, and AT&T, the telecommunications giant—from 1989 to 1998.

<table><tr><td>Year</td><td>Scientific Atlanta</td><td>AT&amp;T</td></tr><tr><td>1989</td><td>80.95\%</td><td>58.26\%</td></tr><tr><td>1990</td><td>-47.37\%</td><td>-33.79\%</td></tr><tr><td>1991</td><td>31.00\%</td><td>29.88\%</td></tr><tr><td>1992</td><td>132.44\%</td><td>30.35\%</td></tr><tr><td>1993</td><td>32.02\%</td><td>2.94\%</td></tr><tr><td>1994</td><td>25.37\%</td><td>-4.29\%</td></tr><tr><td>1995</td><td>-28.57\%</td><td>28.86\%</td></tr><tr><td>1996</td><td>0.00\%</td><td>-6.36\%</td></tr><tr><td>1997</td><td>11.67\%</td><td>48.64\%</td></tr><tr><td>1998</td><td>36.19\%</td><td>23.55\%</td></tr></table> a. Estimate the average annual return and standard deviation in annual returns in each company.

b. Estimate the covariance and correlation in returns between the two companies.
c. Estimate the variance of a portfolio composed, in equal parts, of the two investments.

4. You are in a world where there are only two assets, gold and stocks. You are interested in investing your money in one, the other, or both assets. Consequently you collect the following data on the returns on the two assets over the past six years.

<table><tr><td></td><td>Gold</td><td>Stock Market</td></tr><tr><td>Average return</td><td>8\%</td><td>20\%</td></tr><tr><td>Standard deviation</td><td>25\%</td><td>22\%</td></tr><tr><td>Correlation</td><td>-0.4</td><td></td></tr></table> a. If you were constrained to pick just one, which one would you choose?

b. A friend argues that this is wrong. He says that you are ignoring the big payoffs that you can get on the other asset. How would you go about alleviating his concern?
c. How would a portfolio composed of equal proportions in gold and stocks do in terms of mean and variance?
d. You now learn that GPEC (a cartel of gold-producing countries) is going to vary the amount of gold it produces in relation to stock prices in the United States. (GPEC will produce less gold when stock markets are up and more when they are down.) What effect will this have on your portfolio? Explain.

5. You are interested in creating a portfolio of two stocks—Coca-Cola and Texas Utilities. Over the past decade, an investment in Coca-Cola stock would have earned an average annual return of  $25\%$ , with a standard deviation in returns of  $36\%$ . An investment in Texas Utilities stock would have earned an average annual return of  $12\%$ , with a standard deviation of  $22\%$ . The correlation in returns across the two stocks is 0.28.

a. Assuming that the average return and standard deviation, estimated using past returns, will continue to hold in the future, estimate the future average returns and standard deviation of a portfolio composed  $60\%$  of Coca-Cola and  $40\%$  of Texas Utilities stock.
b. Now assume that Coca-Cola's international diversification will reduce the correlation to 0.20, while increasing Coca-Cola's standard deviation in returns to  $45\%$ . Assuming all of the other numbers remain unchanged, estimate one standard deviation of the portfolio in (a).

6. Assume that you have half your money invested in Times Mirror, the media company, and the other half invested in Unilever, the consumer product company. The expected returns and standard deviations on the two investments are:

<table><tr><td></td><td>Times Mirror</td><td>Unilever</td></tr><tr><td>Expected return</td><td>14\%</td><td>18\%</td></tr><tr><td>Standard deviation</td><td>25\%</td><td>40\%</td></tr></table>

Estimate the variance of the portfolio as a function of the correlation coefficient (start with  $-1$  and increase the correlation to  $+1$  in 0.2 increments).

7. You have been asked to analyze the standard deviation of a portfolio composed of the following three assets:

<table><tr><td></td><td>Expected Return</td><td>Standard Deviation</td></tr><tr><td>Sony Corporation</td><td>11\%</td><td>23\%</td></tr><tr><td>Tesoro Petroleum</td><td>9\%</td><td>27\%</td></tr><tr><td>Storage Technology</td><td>16\%</td><td>50\%</td></tr></table>

You have also been provided with the correlations across these three investments:

<table><tr><td></td><td>Sony Corporation</td><td>Tesoro Petroleum</td><td>Storage Technology</td></tr><tr><td>Sony Corporation</td><td>1.00</td><td>-0.15</td><td>0.20</td></tr><tr><td>Tesoro Petroleum</td><td>-0.15</td><td>1.00</td><td>-0.25</td></tr><tr><td>Storage Technology</td><td>0.20</td><td>-0.25</td><td>1.00</td></tr></table>

Estimate the variance of a portfolio, equally weighted across all three assets.

8. Assume that the average variance of return for an individual security is 50 and that the average covariance is 10. What is the expected variance of a portfolio of 5, 10, 20, 50, and 100 securities? How many securities need to be held before the risk of a portfolio is only  $10\%$  more than the minimum?
9. Assume you have all your wealth (a million dollars) invested in the Vanguard 500 index fund, and that you expect to earn an annual return of  $12\%$ , with a standard deviation in returns of  $25\%$ . Since you have become more risk averse, you decide to shift  $\$200,000$  from the Vanguard 500 index fund to Treasury bills. The T-bill rate is  $5\%$ . Estimate the expected return and standard deviation of your new portfolio.
10. Every investor in the capital asset pricing model owns a combination of the market portfolio and a riskless asset. Assume that the standard deviation of the market portfolio is  $30\%$  and that the expected return on the portfolio is  $15\%$ .

What proportion of the following investors' wealth would you suggest investing in the market portfolio and what proportion in the riskless asset? (The riskless asset has an expected return of  $5\%$ .) a. An investor who desires a portfolio with no standard deviation.

b. An investor who desires a portfolio with a standard deviation of  $15\%$ .
c. An investor who desires a portfolio with a standard deviation of  $30\%$ .
d. An investor who desires a portfolio with a standard deviation of  $45\%$ .
e. An investor who desires a portfolio with an expected return of  $12\%$ .

11. The following table lists returns on the market portfolio and on Scientific Atlanta, each year from 1989 to 1998.

<table><tr><td>Year</td><td>Scientific Atlanta</td><td>Market Portfolio</td></tr><tr><td>1989</td><td>80.95\%</td><td>31.49\%</td></tr><tr><td>1990</td><td>-47.37\%</td><td>-3.17\%</td></tr><tr><td>1991</td><td>31.00\%</td><td>30.57\%</td></tr><tr><td>1992</td><td>132.44\%</td><td>7.58\%</td></tr><tr><td>1993</td><td>32.02\%</td><td>10.36\%</td></tr><tr><td>1994</td><td>25.37\%</td><td>2.55\%</td></tr><tr><td>1995</td><td>-28.57\%</td><td>37.57\%</td></tr><tr><td>1996</td><td>0.00\%</td><td>22.68\%</td></tr><tr><td>1997</td><td>11.67\%</td><td>33.10\%</td></tr><tr><td>1998</td><td>36.19\%</td><td>28.32\%</td></tr></table> a. Estimate the covariance in returns between Scientific Atlanta and the market portfolio.

b. Estimate the variances in returns on both investments.
c. Estimate the beta for Scientific Atlanta.

12. United Airlines has a beta of 1.5. The standard deviation in the market portfolio is  $22\%$ , and United Airlines has a standard deviation of  $66\%$ .

a. Estimate the correlation between United Airlines and the market portfolio.
b. What proportion of United Airlines' risk is market risk?

13. You are using the arbitrage pricing model to estimate the expected return on Bethlehem Steel, and have derived the following estimates for the factor betas and risk premium:

<table><tr><td>Factor</td><td>Beta</td><td>Risk Premium</td></tr><tr><td>1</td><td>1.2</td><td>2.5\%</td></tr><tr><td>2</td><td>0.6</td><td>1.5\%</td></tr><tr><td>3</td><td>1.5</td><td>1.0\%</td></tr><tr><td>4</td><td>2.2</td><td>0.8\%</td></tr><tr><td>5</td><td>0.5</td><td>1.2\%</td></tr></table> a. Which risk factor is Bethlehem Steel most exposed to? Is there any way, within the arbitrage pricing model, to identify the risk factor?

b. If the risk-free rate is  $5\%$ , estimate the expected return on Bethlehem Steel.
c. Now assume that the beta in the capital asset pricing model for Bethlehem Steel is 1.1, and that the risk premium for the market portfolio is  $5\%$ . Estimate the expected return using the CAPM.
d. Why are the expected returns different using the two models?

14. You are using the multifactor model to estimate the expected return on Emerson Electric, and have derived the following estimates for the factor betas and risk premiums:

<table><tr><td>Macroeconomic Factor</td><td>Measure</td><td>Beta</td><td>Risk Premium (Rfactor - Rf)</td></tr><tr><td>Level of interest rates</td><td>T-bond rate</td><td>0.5</td><td>1.8\%</td></tr><tr><td>Term structure</td><td>T-bond rate—T-bill rate</td><td>1.4</td><td>0.6\%</td></tr><tr><td>Inflation rate</td><td>Consumer price index</td><td>1.2</td><td>1.5\%</td></tr><tr><td>Economic growth</td><td>Gross national product growth rate</td><td>1.8</td><td>4.2\%</td></tr></table>

With a riskless rate of  $6\%$ , estimate the expected return on Emerson Electric.

15. The following equation is reproduced from the study by Fama and French of returns between 1963 and 1990.

$$

R _ {t} = 1. 7 7 - 0. 1 1 \ln (M V) + 0. 3 5 \ln (B V / M V)

$$ where MV is the market value of equity in hundreds of millions of dollars and BV is the book value of equity in hundreds of millions of dollars. The return is a monthly return.


a. Estimate the expected annual return on Lucent Technologies if the market value of its equity is \$180 billion and the book value of its equity is \$73.5 billion.
b. Lucent Technologies has a beta of 1.55. If the riskless rate is  $6\%$  and the risk premium for the market portfolio is  $5.5\%$ , estimate the expected return.
c. Why are the expected returns different under the two approaches?


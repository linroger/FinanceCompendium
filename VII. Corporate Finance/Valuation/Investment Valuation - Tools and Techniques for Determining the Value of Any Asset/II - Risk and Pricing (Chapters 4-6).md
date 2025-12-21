---
title: "II - Risk and Pricing (Chapters 4-6)"
parent_directory: Investment Valuation - Tools and Techniques for Determining the Value of Any Asset
formatted: 2025-12-21 12:40:00 PM
formatter_agent: claude-sonnet-4-5-20250929
cli_tool: claude-code
primary_tags:
   - risk and return models
   - capital asset pricing model
   - market efficiency
secondary_tags:
   - equity risk measurement
   - default risk assessment
   - arbitrage pricing theory
   - multifactor models
   - behavioral finance
cssclasses: academia
---

# II - Risk and Pricing (Chapters 4-6)

## The Basics of Risk

When valuing assets and firms, we need to use discount rates that reflect the riskiness of the cash flows. In particular, the cost of debt has to incorporate a default spread for the default risk in the debt, and the cost of equity has to include a risk premium for equity risk. But how do we measure default and equity risk? More importantly, how do we come up with the default and equity risk premiums?

This chapter lays the foundations for analyzing risk in valuation. It presents alternative models for measuring risk and converting these risk measures into acceptable hurdle rates. It begins with a discussion of equity risk and presents the analysis in three steps. In the first step, risk is defined in statistical terms to be the variance in actual returns around an expected return. The greater this variance, the more risky an investment is perceived to be. The next step, the central one, is to decompose this risk into risk that can be diversified away by investors and risk that cannot. The third step looks at how different risk and return models in finance attempt to measure this nondiversifiable risk. It compares the most widely used model, the capital asset pricing model (CAPM), with other models and explains how and why they diverge in their measures of risk and the implications for the equity risk premium.

The final part of this chapter considers default risk and how it is measured by ratings agencies. By the end of the chapter, we should have a way of estimating the equity risk and default risk for any firm.

```d2
direction: down

classes: {
  model: {
    shape: rectangle
    style.fill: "#e3f2fd"
    style.stroke: "#1976d2"
    style.border-radius: 8
  }
  concept: {
    shape: oval
    style.fill: "#fff3e0"
    style.stroke: "#f57c00"
  }
}

risk_concepts: Risk Concepts {
  class: concept
}

firm_specific_risk: Firm-Specific Risk {
  class: concept
}

market_risk: Market Risk {
  class: concept
}

capm: Capital Asset Pricing Model (CAPM) {
  class: model
}

apt: Arbitrage Pricing Theory (APT) {
  class: model
}

multifactor: Multifactor Models {
  class: model
}

proxy_models: Proxy Models {
  class: model
}

risk_concepts -> firm_specific_risk: Diversifiable
risk_concepts -> market_risk: Non-diversifiable

market_risk -> capm: Single factor (market portfolio)
market_risk -> apt: Multiple factors
market_risk -> multifactor: Economic factors
market_risk -> proxy_models: Size, value, momentum

capm -> expected_returns: E(R) = Rf + β(Rm - Rf)
apt -> expected_returns: E(R) = Rf + ∑βi(RFi - Rf)
multifactor -> expected_returns: E(R) = Rf + ∑βj(ERPj)
proxy_models -> expected_returns: Regression-based
```

## What Is Risk?

Risk, for most of us, refers to the likelihood that in life's games of chance we will receive an outcome that we will not like. For instance, the risk of driving a car too fast is getting a speeding ticket or, worse still, getting into an accident. Merriam-Webster's Collegiate Dictionary, in fact, defines the verb to risk as "to expose to hazard or danger." Thus risk is perceived almost entirely in negative terms.

In finance, our definition of risk is both different and broader. Risk, as we see it, refers to the likelihood that we will receive a return on an investment that is different from the return we expect to make. Thus, risk includes not only the bad outcomes (returns that are lower than expected), but also good outcomes (returns that are higher than expected). In fact, we can refer to the former as downside risk and the latter as upside risk, but we consider both when measuring risk. In fact, the spirit of our definition of risk in finance is captured best by the Chinese symbols for risk:

# 危機

Loosely defined, the first symbol is the symbol for "danger," while the second is the symbol for "opportunity," making risk a mix of danger and opportunity. It illustrates very clearly the trade-off that every investor and business has to make—between the higher rewards that come with the opportunity and the higher risk that has to be borne as a consequence of the danger.

Much of this chapter can be viewed as an attempt to come up with a model that best measures the danger in any investment, and then attempts to convert this into the opportunity that we would need to compensate for the danger. In finance terms, we term the danger to be "risk" and the opportunity to be "expected return."

What makes the measurement of risk and expected return so challenging is that it can vary depending on whose perspective we adopt. When analyzing the risk of a firm, for instance, we can measure it from the viewpoint of the firm's managers. Alternatively, we can argue that the firm's equity is owned by its stockholders, and that it is their perspective on risk that should matter. A firm's stockholders, many of whom hold the stock as one investment in a larger portfolio, might perceive the risk in the firm very differently from the firm's managers, who might have the bulk of their capital, human and financial, invested in the firm.

We argue that risk in an investment has to be perceived through the eyes of investors in the firm. Since firms often have thousands of investors, often with very different perspectives, it can be asserted that risk has to be measured from the perspective of not just any investor in the stock, but of the marginal investor, defined to be the investor most likely to be trading on the stock at any given point in time. The objective in valuation is to measure the value of an asset to those who will be pricing it. If we want to stay true to this objective, we have to consider the viewpoint of those who set the stock prices, and they are the marginal investors.

## Equity Risk and Expected Return

### Defining Risk

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

## Diversifiable and Nondiversifiable Risk

Although there are many reasons why actual returns may differ from expected returns, we can group the reasons into two categories: firm-specific and marketwide. The risks that arise from firm-specific actions affect one or a few investments, while the risks arising from marketwide reasons affect many or all investments. This distinction is critical to the way we assess risk in finance.

Components of Risk When an investor buys stock or takes an equity position in a firm, he or she is exposed to many risks. Some risk may affect only one or a few firms, and this risk is categorized as firm-specific risk. Within this category, we would consider a wide range of risks, starting with the risk that a firm may have misjudged the demand for a product from its customers; we call this project risk. For instance, consider

Boeing's investment in a Super Jumbo jet. This investment is based on the assumption that airlines want a larger airplane and are willing to pay a high price for it. If Boeing has misjudged this demand, it will clearly have an impact on Boeing's earnings and value, but it should not have a significant effect on other firms in the market. The risk could also arise from competitors proving to be stronger or weaker than anticipated, called competitive risk. For instance, assume that Boeing and Airbus are competing for an order from Qantas, the Australian airline. The possibility that Airbus may win the bid is a potential source of risk to Boeing and perhaps some of its suppliers, but again, few other firms will be affected by it. Similarly, Disney recently launched magazines aimed at teenage girls, hoping to capitalize on the success of its TV shows. Whether it succeeds is clearly important to Disney and its competitors, but it is unlikely to have an impact on the rest of the market. In fact, risk measures can be extended to include risks that may affect an entire sector but are restricted to that sector; we call this sector risk. For instance, a cut in the defense budget in the United States will adversely affect all firms in the defense business, including Boeing, but there should be no significant impact on other sectors. What is common across the three risks described—project, competitive, and sector risk—is that they affect only a small subset of firms.

There is another group of risks that is much more pervasive and affects many if not all investments. For instance, when interest rates increase, all investments are negatively affected, albeit to different degrees. Similarly, when the economy weakens, all firms feel the effects, though cyclical firms (such as automobiles, steel, and housing) may feel it more. We term this risk market risk.

Finally, there are risks that fall in a gray area, depending on how many assets they affect. For instance, when the dollar strengthens against other currencies, it has a significant impact on the earnings and values of firms with international operations. If most firms in the market have significant international operations, it could well be categorized as market risk. If only a few do, it would be closer to firm-specific risk. Figure 4.4 summarizes the spectrum of firm-specific and market risks.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/7a08e391dfcf5b2f511d1e78af2c613300e03494c6c3faad031703d6300fbdfc.jpg)

FIGURE 4.4 Breakdown of Risk

### Why Diversification Reduces or Eliminates Firm-Specific Risk: An Intuitive Explanation

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

# Option Pricing Theory and Models

In general, the value of any asset is the present value of the expected cash flows on that asset. This chapter considers an exception to that rule when it looks at assets with two specific characteristics:

1. The assets derive their value from the values of other assets.
2. The cash flows on the assets are contingent on the occurrence of specific events.

These assets are called options, and the present value of the expected cash flows on these assets will understate their true value. This chapter describes the cash flow characteristics of options, considers the factors that determine their value, and examines how best to value them.

# BASICS OF OPTION PRICING

An option provides the holder with the right to buy or sell a specified quantity of an underlying asset at a fixed price (called a strike price or an exercise price) at or before the expiration date of the option. Since it is a right and not an obligation, the holder can choose not to exercise the right and can allow the option to expire. There are two types of options—call options and put options.

# Call and Put Options: Description and Payoff Diagrams

A call option gives the buyer of the option the right to buy the underlying asset at the strike price or the exercise price at any time prior to the expiration date of the option. The buyer pays a price for this right. If at expiration the value of the asset is less than the strike price, the option is not exercised and expires worthless. If, however, the value of the asset is greater than the strike price, the option is exercised—the buyer of the option buys the stock at the exercise price, and the difference between the asset value and the exercise price comprises the gross profit on the investment. The net profit on the investment is the difference between the gross profit and the price paid for the call initially.

A payoff diagram illustrates the cash payoff on an option at expiration. For a call, the net payoff is negative (and equal to the price paid for the call) if the value of the underlying asset is less than the strike price. If the price of the underlying asset exceeds the strike price, the gross payoff is the difference between the value of the underlying asset and the strike price, and the net payoff is the difference between the gross payoff and the price of the call. This is illustrated in Figure 5.1.


A put option gives the buyer of the option the right to sell the underlying asset at a fixed price, again called the strike or exercise price, at any time prior to the expiration date of the option. The buyer pays a price for this right. If the price of the underlying asset is greater than the strike price, the option will not be exercised and will expire worthless. But if the price of the underlying asset is less than the strike price, the owner of the put option will exercise the option and sell the stock at the strike price, claiming the difference between the strike price and the market value of the asset as the gross profit. Again, netting out the initial cost paid for the put yields the net profit from the transaction.

A put has a negative net payoff if the value of the underlying asset exceeds the strike price, and has a gross payoff equal to the difference between the strike price and the value of the underlying asset if the asset value is less than the strike price. This is summarized in Figure 5.2.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/a6d1688179bbb90e0c9e468ea247d654e369d1affa71d88cd98f32f3de4a8b64.jpg)
FIGURE 5.1 Payoff on Call Option

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/a04fa5237fd8a1aa9f28915edd9a91f7d60256c4ed8548b7a16e3fa85e3179cc.jpg)
FIGURE 5.2 Payoff on Put Option

# DETERMINANTS OF OPTION VALUE

The value of an option is determined by six variables relating to the underlying asset and financial markets.

1. Current value of the underlying asset. Options are assets that derive value from an underlying asset. Consequently, changes in the value of the underlying asset affect the value of the options on that asset. Since calls provide the right to buy the underlying asset at a fixed price, an increase in the value of the asset will increase the value of the calls. Puts, on the other hand, become less valuable as the value of the asset increases.
2. Variance in value of the underlying asset. The buyer of an option acquires the right to buy or sell the underlying asset at a fixed price. The higher the variance in the value of the underlying asset, the greater the value of the option. This is true for both calls and puts. While it may seem counterintuitive that an increase in a risk measure (variance) should increase value, options are different from other securities since buyers of options can never lose more than the price they pay for them; in fact, they have the potential to earn significant returns from large price movements.
3. Dividends paid on the underlying asset. The value of the underlying asset can be expected to decrease if dividend payments are made on the asset during the life of the option. Consequently, the value of a call on the asset is a decreasing function of the size of expected dividend payments, and the value of a put is an increasing function of expected dividend payments. A more intuitive way of thinking about dividend payments, for call options, is as a cost of delaying exercise on in-the-money options. To see why, consider an option on a traded stock. Once a call option is in-the-money (i.e., the holder of the option will make a gross payoff by exercising the option), exercising the call option will provide the holder with the stock and entitle him or her to the dividends on the stock in subsequent periods. Failing to exercise the option will mean that these dividends are forgone.
4. Strike price of the option. A key characteristic used to describe an option is the strike price. In the case of calls, where the holder acquires the right to buy at a fixed price, the value of the call will decline as the strike price increases. In the case of puts, where the holder has the right to sell at a fixed price, the value will increase as the strike price increases.
5. Time to expiration on the option. Both calls and puts are more valuable the greater the time to expiration. This is because the longer time to expiration provides more time for the value of the underlying asset to move, increasing the value of both types of options. Additionally, in the case of a call, where the buyer has the right to pay a fixed price at expiration, the present value of this fixed price decreases as the life of the option increases, increasing the value of the call.

6. Riskless interest rate corresponding to life of the option. Since the buyer of an option pays the price of the option up front, an opportunity cost is involved. This cost will depend on the level of interest rates and the time to expiration of the option. The riskless interest rate also enters into the valuation of options when the present value of the exercise price is calculated, since the exercise price does not have to be paid (received) until expiration on calls (puts). Increases in the interest rate will increase the value of calls and reduce the value of puts.

Table 5.1 summarizes the variables and their predicted effects on call and put prices.

# American versus European Options: Variables Relating to Early Exercise

A primary distinction between American and European options is that an American option can be exercised at any time prior to its expiration, while European options can be exercised only at expiration. The possibility of early exercise makes American options more valuable than otherwise similar European options; it also makes them more difficult to value. There is one compensating factor that enables the former to be valued using models designed for the latter. In most cases, the time premium associated with the remaining life of an option and transaction costs make early exercise suboptimal. In other words, the holders of in-the-money options generally get much more by selling the options to someone else than by exercising the options.

# OPTION PRICING MODELS

Option pricing theory has made vast strides since 1972, when Fischer Black and Myron Scholes published their pathbreaking paper that provided a model for valuing dividend-protected European options. Black and Scholes used a "replicating portfolio"—a portfolio composed of the underlying asset and the risk-free asset that had the same cash flows as the option being valued—and the notion of arbitrage to come up with their final formulation. Although their derivation is mathematically

TABLE 5.1 Summary of Variables Affecting Call and Put Prices

<table><tr><td rowspan="2">Factor</td><td colspan="2">Effect On</td></tr><tr><td>Call Value</td><td>Put Value</td></tr><tr><td>Increase in underlying asset&#x27;s value</td><td>Increases</td><td>Decreases</td></tr><tr><td>Increase in variance of underlying asset</td><td>Increases</td><td>Increases</td></tr><tr><td>Increase in strike price</td><td>Decreases</td><td>Increases</td></tr><tr><td>Increase in dividends paid</td><td>Decreases</td><td>Increases</td></tr><tr><td>Increase in time to expiration</td><td>Increases</td><td>Increases</td></tr><tr><td>Increase in interest rates</td><td>Increases</td><td>Decreases</td></tr></table> complicated, there is a simpler binomial model for valuing options that draws on the same logic.


# Binomial Model

The binomial option pricing model is based on a simple formulation for the asset price process in which the asset, in any time period, can move to one of two possible prices. The general formulation of a stock price process that follows the binomial path is shown in Figure 5.3. In this figure, S is the current stock price; the price moves up to Su with probability p and down to Sd with probability  $1 - \mathfrak{p}$  in any time period.

Creating a Replicating Portfolio The objective in creating a replicating portfolio is to use a combination of risk-free borrowing/lending and the underlying asset to create the same cash flows as the option being valued. The principles of arbitrage apply then, and the value of the option must be equal to the value of the replicating portfolio. In the case of the general formulation shown in Figure 5.3, where stock prices can move either up to Su or down to Sd in any time period, the replicating portfolio for a call with strike price K will involve borrowing $B and acquiring Δ of the underlying asset, where:

$$

\Delta = \text {N u m b e r o f u n i t s o f u n i t y} = \frac {\mathrm {C} _ {\mathrm {u}} - \mathrm {C} _ {\mathrm {d}}}{\mathrm {S u} - \mathrm {S d}}

$$ where  $C_u =$  Value of the call if the stock price is Su  $C_d =$  Value of the call if the stock price is Sd

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/0764278ccf5910b9f6a85b946fa8d589c6e82c056678613dd1b5c75cec29b09f.jpg)

FIGURE 5.3 General Formulation for Binomial Price Path

In a multiperiod binomial process, the valuation has to proceed iteratively (i.e., starting with the final time period and moving backward in time until the current point in time). The portfolios replicating the option are created at each step and valued, providing the values for the option in that time period. The final output from the binomial option pricing model is a statement of the value of the option in terms of the replicating portfolio, composed of  $\Delta$  shares (option delta) of the underlying asset and risk-free borrowing/lending.

Value of the call  $=$  Current value of underlying asset  $\times$  Option delta - Borrowing needed to replicate the option

# ILLUSTRATION 5.1: Binomial Option Valuation

Assume that the objective is to value a call with a strike price of  \$50, which is expected to expire in two time periods, on an underlying asset whose price currently is\$ 50 and is expected to follow a binomial process:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/493df4ddde502b2d7f547418f22f4719efbd5c2aa49ca1778e85ee21bfcc1c79.jpg)

Now assume that the interest rate is  $11\%$ . In addition, define:

$\Delta =$  Number of shares in the replicating portfolio

B = Dollars of borrowing in replicating portfolio

The objective is to combine  $\Delta$  shares of stock and  $B$  dollars of borrowing to replicate the cash flows from the call with a strike price of 50. This can be done iteratively, starting with the last period and working back through the binomial tree.

STEP 1: Start with the end nodes and work backward:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/c3cc758f16ae98e7f05cdabad26be76cd3b0f1d8fa76ae74b3dfadef48caf707.jpg)

Thus, if the stock price is \$70 at t = 1, borrowing \$45 and buying one share of the stock will give the same cash flows as buying the call. The value of the call at t = 1, if the stock price is 70, is therefore:

Value of call  $=$  Value of replicating position  $= {70\Delta } - \mathrm{B} = {70} - {45} = {25}$

Considering the other leg of the binomial tree at  $t = 1$ ,

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/bb357a36684cdc6d9f889a2d53ab6a138e17b108163b9b140fac69bec699b997.jpg)

If the stock price is 35 at t = 1, then the call is worth nothing.

STEP 2: Move backward to the earlier time period and create a replicating portfolio that will provide the cash flows the option will provide.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/09551c4ab71382c3fd90f83c7cca9646d1dc6d1d75e86d5167649a44e3931585.jpg)

In other words, borrowing \$22.50 and buying five-sevenths of a share will provide the same cash flows as a call with a strike price of \$50 over the call's lifetime. The value of the call therefore has to be the same as the cost of creating this position.

Value of call  $=$  Value of replicating position  $= \left( \frac{5}{7} \right) \times$  Current stock price - Borrowing

$$
= \left(\frac {5}{7}\right) (5 0) - 2 2. 5 = \$ 1 3. 2 1
$$

The Determinants of Value The binomial model provides insight into the determinants of option value. The value of an option is not determined by the expected price of the asset but by its current price, which, of course, reflects expectations about the future. This is a direct consequence of arbitrage. If the option value deviates from the value of the replicating portfolio, investors can create an arbitrage position (i.e., one that requires no investment, involves no risk, and delivers positive returns). To illustrate, if the portfolio that replicates the call costs more than the call does in the market, an investor could buy the call, sell the replicating portfolio, and be guaranteed the difference as a profit. The cash flows on the two positions will offset each other, leading to no cash flows in subsequent periods. The call option value also increases as the time to expiration is extended, as the price movements (u and d) increase, and with increases in the interest rate.

While the binomial model provides an intuitive feel for the determinants of option value, it requires a large number of inputs, in terms of expected future prices at each node. As time periods are made shorter in the binomial model, you can make one of two assumptions about asset prices. You can assume that price changes become smaller as periods get shorter; this leads to price changes becoming infinitesimally small as time periods approach zero, leading to a continuous price process. Alternatively, you can assume that price changes stay large even as the period gets shorter; this leads to a jump price process, where prices can jump in any period. This section considers the option pricing models that emerge with each of these assumptions.

# Black-Scholes Model

When the price process is continuous (i.e., price changes become smaller as time periods get shorter), the binomial model for pricing options converges on the Black-Scholes model. The model, named after its cocreateurs, Fischer Black and Myron Scholes, allows us to estimate the value of any option using a small number of inputs, and has been shown to be robust in valuing many listed options.

The Model While the derivation of the Black-Scholes model is far too complicated to present here, it is based on the idea of creating a portfolio of the underlying asset and the riskless asset with the same cash flows, and hence the same cost, as the option being valued. The value of a call option in the Black-Scholes model can be written as a function of the five variables:

$S =$  Current value of the underlying asset

$\mathrm{K} =$  Strike price of the option

$\mathbf{t} =$  Life to expiration of the option

$\mathrm{r} =$  Riskless interest rate corresponding to the life of the option

$\sigma^2 =$  Variance in the  $\ln (\mathrm{value})$  of the underlying asset

The value of a call is then:

$$
\text {V a l u e o f} \mathrm {c a l l} = \mathrm {S N} \left(\mathrm {d} _ {1}\right) - \mathrm {K} \mathrm {e} ^ {- \mathrm {r t}} \mathrm {N} \left(\mathrm {d} _ {2}\right)
$$

$$
\begin{array}{l} \text {w h e r e} d _ {1} = \frac {\ln \left(\frac {S}{K}\right) + \left(r + \frac {\sigma^ {2}}{2}\right) t}{\sigma \sqrt {t}} \\ d _ {2} = d _ {1} - \sigma \sqrt {t} \\ \end{array}
$$

Note that  $\mathrm{e}^{-\mathrm{rt}}$  is the present value factor, and reflects the fact that the exercise price on the call option does not have to be paid until expiration, since the model values European options.  $\mathrm{N}(\mathrm{d}_1)$  and  $\mathrm{N}(\mathrm{d}_2)$  are probabilities, estimated by using a cumulative standardized normal distribution, and the values of  $\mathrm{d}_1$  and  $\mathrm{d}_2$  obtained for an option. The cumulative distribution is shown in Figure 5.4.

In approximate terms,  $\mathrm{N}(\mathrm{d}_2)$  yields the likelihood that an option will generate positive cash flows for its owner at exercise (i.e., that  $\mathrm{S} > \mathrm{K}$  in the case of a call option and that  $\mathrm{K} > \mathrm{S}$  in the case of a put option). The portfolio that replicates the call option is created by buying  $\mathrm{N}(\mathrm{d}_1)$  units of the underlying asset, and borrowing  $\mathrm{Ke}^{-\mathrm{rt}}\mathrm{N}(\mathrm{d}_2)$ . The portfolio will have the same cash flows as the call option, and thus the same value as the option.  $\mathrm{N}(\mathrm{d}_1)$ , which is the number of units of the underlying asset that are needed to create the replicating portfolio, is called the option delta.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/f19f0df2a0ca366b7fec4d948ffc6cc151166463587884b9f1ee8de38d4eee25.jpg)

FIGURE 5.4 Cumulative Normal Distribution

# A NOTE ON ESTIMATING THE INPUTS TO THE BLACK-SCHOLES MODEL

The Black-Scholes model requires inputs that are consistent on time measurement. There are two places where this affects estimates. The first relates to the fact that the model works in continuous time, rather than discrete time. That is why we use the continuous time version of present value  $(\exp^{-\mathrm{rt}})$  rather than the discrete version,  $(1 + \mathrm{r})^{-\mathrm{t}}$ . It also means that the inputs such as the riskless rate have to be modified to make them continuous time inputs. For instance, if the one-year Treasury bond rate is 6.2 percent, the risk-free rate that is used in the Black-Scholes model should be:

$$
\begin{array}{l} \text {C o n t i n u o u s r i k k l e s s r a t e} = \ln (1 + \text {D i s c r e t e r i k k l e s s r a t e}) \\ = \ln (1.062) = .06015 \text{or} 6.015 \% \\ \end{array}
$$

The second relates to the period over which the inputs are estimated. For instance, the preceding rate is an annual rate. The variance that is entered into the model also has to be an annualized variance. The variance, estimated from  $\ln (\text{asset prices})$ , can be annualized easily because variances are linear in time if the serial correlation is zero. Thus, if monthly or weekly prices are used to estimate variance, the variance is annualized by multiplying by 12 or 52, respectively.

# ILLUSTRATION 5.2: Valuing an Option Using the Black-Scholes Model

On March 6, 2001, Cisco Systems was trading at \$13.62. We will attempt to value a July 2001 call option with a strike price of \$15, trading on the CBOE on the same day for 2. The following are the other parameters of the options:

The annualized standard deviation in Cisco Systems stock price over the previous year was  $81\%$ . This standard deviation is estimated using weekly stock prices over the year, and the resulting number was annualized as follows:

Weekly standard deviation  $= 11.23\%$

Annualized standard deviation  $= 11.23\% \times \sqrt{52} = 81\%$

The option expiration date is Friday, July 20, 2001. There are 103 days to expiration, and the annualized Treasury bill rate corresponding to this option life is  $4.63\%$ .

The inputs for the Black-Scholes model are as follows:

Current stock price (S) = 13.62

Strike price on the option = 15

Option life  $= 103 / 365 = 0.2822$

Standard deviation in In(stock prices) = 81\%

Riskless rate  $= 4.63\%$

Inputting these numbers into the model, we get:

$$
\mathrm {d} _ {1} = \frac {\ln \left(\frac {1 3 . 6 2}{1 5 . 0 0}\right) + \left(. 0 4 6 3 + \frac {. 8 1 ^ {2}}{2}\right) . 2 8 2 2}{. 8 1 \sqrt {. 2 8 2 2}} = . 0 2 1 2
$$

$$
\mathrm {d} _ {2} = . 0 2 1 2 -. 8 1 \sqrt {. 2 8 2 2} = -. 4 0 9 1
$$

Using the normal distribution, we can estimate the  $\mathsf{N}(\mathsf{d}_1)$  and  $\mathsf{N}(\mathsf{d}_2)$ :

$$
N \left(d _ {1}\right) = . 5 0 8 5
$$

$$
N (d _ {2}) = . 3 4 1 2
$$

The value of the call can now be estimated:

$$
\begin{array}{l} \text {V a l u e} = \mathrm {S} \mathrm {N} \left(\mathrm {d} _ {1}\right) - \mathrm {K} \mathrm {e} ^ {- \mathrm {r t}} \mathrm {N} \left(\mathrm {d} _ {2}\right) \\ = 1 3. 6 2 (. 5 0 8 5) - 1 5 \mathrm {e} ^ {- (. 0 4 6 3) (. 2 8 2 2)} (. 3 4 1 2) = \$ 1. 8 7 \\ \end{array}
$$

Since the call is trading at 2, it is slightly overvalued, assuming that the estimate of standard deviation used is correct.

# IMPLIED VOLATILITY

The only input in the Black Scholes on which there can be significant disagreement among investors is the variance. While the variance is often estimated by looking at historical data, the values for options that emerge from using the historical variance can be different from the market prices. For any option, there is some variance at which the estimated value will be equal to the market price. This variance is called an implied variance.

Consider the Cisco option valued in Illustration 5.2. With a standard deviation of 81 percent, the value of the call option with a strike price of 15 was estimated to be 1.87. Since the market price is higher than the calculated value, we tried higher standard deviations, and at a standard deviation 85.40 percent the value of the option is 2 (which is the market price). This is the implied standard deviation or implied volatility.

Model Limitations and Fixes The Black-Scholes model was designed to value European options that can be exercised only at maturity and whose underlying assets do not pay dividends. In addition, options are valued based on the assumption that option exercise does not affect the value of the underlying asset. In practice, assets do pay dividends, options sometimes get exercised early, and exercising an option can affect the value of the underlying asset. Adjustments exist that, while not perfect, provide partial corrections to the Black-Scholes model.

Dividends The payment of a dividend reduces the stock price; note that on the ex-dividend day, the stock price generally declines. Consequently, call options become less valuable and put options more valuable as expected dividend payments increase. There are two ways of dealing with dividends in the Black-Scholes model:

1. Short-term options. One approach to dealing with dividends is to estimate the present value of expected dividends that will be paid by the underlying asset during the option life and subtract it from the current value of the asset to use as S in the model.

Modified stock price  $=$  Current stock price -Present value of expected dividends during the life of the option

2. Long-term options. Since it becomes less practical to estimate the present value of dividends the longer the option life, an alternate approach can be used. If the dividend yield ( $y =$  Dividends/Current value of the asset) on the underlying asset is expected to remain unchanged during the life of the option, the Black-Scholes model can be modified to take dividends into account.

$$
\mathrm {C} = \mathrm {S} e ^ {- \gamma \mathrm {t}} \mathrm {N} \left(\mathrm {d} _ {1}\right) - \mathrm {K} e ^ {- \mathrm {r t}} \mathrm {N} \left(\mathrm {d} _ {2}\right)
$$ where  $\mathrm{d}_1 = \frac{\ln\left(\frac{\mathrm{S}}{\mathrm{K}}\right) + \left(\mathrm{r} - \mathrm{y} + \frac{\sigma^2}{2}\right)\mathrm{t}}{\sigma\sqrt{\mathrm{t}}}$


$$ d _ {2} = d _ {1} - \sigma \sqrt {t}
$$

From an intuitive standpoint, the adjustments have two effects. First, the value of the asset is discounted back to the present at the dividend yield to take into account the expected drop in asset value resulting from dividend payments. Second, the interest rate is offset by the dividend yield to reflect the lower carrying cost from holding the asset (in the replicating portfolio). The net effect will be a reduction in the value of calls estimated using this model.

# ILLUSTRATION 5.3: Valuing a Short-Term Option with Dividend Adjustments—The Black-Scholes Correction

Assume that it is March 6, 2001, and that AT&T is trading at  \$20.50 a share. Consider a call option on the stock with a strike price of\$ 20, expiring on July 20, 2001. Using past stock prices, the annualized standard deviation in the log of stock prices for AT&T is estimated at 60\%. There is one dividend, amounting to 0.15, and it will be paid in 23 days. The riskless rate is 4.63\%.

Present value of expected dividend = $0.15/1.046323/365 = $0.15

Dividend-adjusted stock price = $20.50 - $0.15 = 20.35

Time to expiration  $= 103 / 365 = 0.2822$

Variance in In(stock prices)  $= 0.6^{2} = 0.36$

Riskless rate  $= 4.63\%$

The value from the Black-Scholes model is:

$$
\mathrm {d} _ {1} = 0. 2 5 5 1
$$

$$
N \left(d _ {1}\right) = 0. 6 0 0 7
$$

$$
\mathrm {d} _ {2} = - 0. 0 6 3 6
$$

$$
N \left(d _ {2}\right) = 0. 4 7 4 5
$$

$$
\text {V a l u e o f c a l l} = \\ 2 0. 3 5 (0. 6 0 0 7) - \\ 2 0 \exp^ {- (0. 0 4 6 3) (2 8 2 2)} (0. 4 7 4 6) = \\ 2. 8 6
$$

The call option was trading at 2.60 on that day.

# ILLUSTRATION 5.4: Valuing a Long-Term Option with Dividend Adjustments—Primes and Scores

The CBOE offers longer-term call and put options on some stocks. On March 6, 2001, for instance, you could have purchased an AT&T call expiring on January 17, 2003. The stock price for AT&T is  \$20.50 (as in the previous example). The following is the valuation of a call option with a strike price of\$ 20. Instead of estimating the present value of dividends over the next two years, assume that AT&T's dividend yield will remain 2.51\% over this period and that the risk-free rate for a two-year Treasury bond is 4.85\%. The inputs to the Black-Scholes model are:

$$
S = \text {C u r r e n t} = \$ 2 0. 5 0
$$

$$
K = \text {S t i k e} = \$ 2 0
$$

Time to expiration  $= 1.8333$  years

Standard deviation in In(stock prices) = 60\%

Riskless rate  $= 4.85\%$  Dividend yield  $= 2.51\%$

The value from the Black-Scholes model is:

$$ d _ {1} = \frac {\ln \left(\frac {2 0 . 5 0}{2 0 . 0 0}\right) + \left(. 0 4 8 5 -. 0 2 5 1 + \frac {. 6 ^ {2}}{2}\right) 1 . 8 3 3 3}{. 6 \sqrt {1 . 8 3 3 3}} = 0. 4 8 9 4 \quad N \left(d _ {1}\right) = 0. 6 8 7 7
$$

$$ d _ {2} = . 4 8 9 4 - . 6 \sqrt {1 . 8 3 3 3} = -. 3 2 3 0 \quad N (d _ {2}) = 0. 3 7 3 3
$$

$$
\text {V a l u e o f c a l l} = \$ 20.50 \exp^ {- (\cdot 0 2 5 1) (1. 8 3 3 3)} (0. 6 8 7 7) - \$ 2 0 \exp^ {- (\cdot 0 4 8 5) (1. 8 3 3 3)} (0. 3 7 3 3) = \$ 6. 6 3
$$

The call was trading at 5.80 on March 8, 2001.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/95ec1bfda1f6d80756c4ef6d38810b79ff6683c9ae6da2a208bf8069a901ba06.jpg) optst.xls: This spreadsheet allows you to estimate the value of a short-term option when the expected dividends during the option life can be estimated.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/2a07527a120738d5b3ffae950fce4d7c0ebba06b6e2b2a3d56b4bdc25b3e702f.jpg) optlt.xls: This spreadsheet allows you to estimate the value of an option when the underlying asset has a constant dividend yield.

Early Exercise The Black-Scholes model was designed to value European options that can be exercised only at expiration. In contrast, most options that we encounter in practice are American options and can be exercised at any time until expiration. As mentioned earlier, the possibility of early exercise makes American options more valuable than otherwise similar European options; it also makes them more difficult to value. In general, though, with traded options, it is almost always better to sell the option to someone else rather than exercise early, since options have a time premium (i.e., they sell for more than their exercise value). There are two exceptions. One occurs when the underlying asset pays large dividends, thus reducing the expected value of the asset. In this case, call options may be exercised just before an ex-dividend date, if the time premium on the options is less than the expected decline in asset value as a consequence of the dividend payment. The other exception arises when an investor holds both the underlying asset and deep in-the-money puts (i.e., puts with strike prices well above the current price of the underlying asset) on that asset at a time when interest rates are high. In this case, the time premium on the put may be less than the potential gain from exercising the put early and earning interest on the exercise price.

There are two basic ways of dealing with the possibility of early exercise. One is to continue to use the unadjusted Black-Scholes model and to regard the resulting value as a floor or conservative estimate of the true value. The other is to try to adjust the value of the option for the possibility of early exercise. There are two approaches for doing so. One uses the Black-Scholes model to value the option to each potential exercise date. With options on stocks, this basically requires that the investor values options to each ex-dividend day and chooses the maximum of the estimated call values. The second approach is to use a modified version of the binomial model to consider the possibility of early exercise. In this version, the up and the down movements for asset prices in each period can be estimated from the variance. $^2$

# Approach 1: Pseudo-American Valuation

Step 1: Define when dividends will be paid and how much the dividends will be.

Step 2: Value the call option to each ex-dividend date using the dividend-adjusted approach described earlier, where the stock price is reduced by the present value of expected dividends.

Step 3: Choose the maximum of the call values estimated for each ex-dividend day.

# ILLUSTRATION 5.5: Using Pseudo-American Option Valuation to Adjust for Early Exercise

Consider an option with a strike price of  \$35 on a stock trading at\$ 40. The variance in the ln(stock prices) is 0.05, and the riskless rate is 4\%. The option has a remaining life of eight months, and there are three dividends expected during this period:

<table><tr><td>Expected Dividend</td><td>Ex-Dividend Day</td></tr><tr><td>\$0.80</td><td>In 1 month</td></tr><tr><td>\$0.80</td><td>In 4 months</td></tr><tr><td>0.80</td><td>In 7 months</td></tr></table>

The call option is first valued to just before the first ex-dividend date:

$$
S = \$ 40
$$

$$
K = \$ 35
$$

$$ t = 1 / 1 2
$$

$$
\sigma^ {2} = 0. 0 5
$$

$$ r = 0. 0 4
$$

The value from the Black-Scholes model is:

$$
\text {V a l u e} = \$ 5. 1 3 1
$$

The call option is then valued to before the second ex-dividend date:

$$
\text {A d j u s t e d} = \\ 4 0 - \\ 0. 8 0 / 1. 0 4 ^ {1 / 1 2} = \\ 3 9. 2 0
$$

$$
K = \$ 35
$$

$$ t = 4 / 1 2
$$

$$
\sigma^ {2} = 0. 0 5
$$

$$ r = 0. 0 4
$$

The value of the call based on these parameters is:

$$
\text {V a l u e} = \$ 5. 0 7 3
$$

The call option is then valued to before the third ex-dividend date:

$$
\text {A d j u s t e d} = \$ 4 0 - \$ 0. 8 0 / 1. 0 4 ^ {1 / 1 2} - \$ 0. 8 0 / 1. 0 4 ^ {4 / 1 2} = \$ 3 8. 4 1
$$

$$
K = \$ 35
$$

$$ t = 7 / 1 2
$$

$$
\sigma^ {2} = 0. 0 5
$$

$$ r = 0. 0 4
$$

The value of the call based on these parameters is:

$$
\text {V a l u e} = \$ 5. 1 2 8
$$

The call option is then valued to expiration:

$$
\text {A d j u s t e d} = \\mathbb {S} 4 0 - \mathbb {S} 0. 8 0 / 1. 0 4 ^ {1 / 1 2} - \mathbb {S} 0. 8 0 / 1. 0 4 ^ {4 / 1 2} - \mathbb {S} 0. 8 0 / 1. 0 4 ^ {7 / 1 2} = \mathbb {S} 3 7. 6 3
$$

$$
K = \$ 35
$$

$$ t = 8 / 1 2
$$

$$
\sigma^ {2} = 0. 0 5
$$

$$ r = 0. 0 4
$$

The value of the call based on these parameters is:

$$
\text {V a l u e} = \$ 4. 7 5 7
$$

$$
\text {P s e u d o - A m i r i c a n v a l u e o f c a l l} = \text {M a x u m i m} (\$ 5. 1 3 1, \$ 5. 0 7 3, \$ 5. 1 2 8, \$ 4. 7 5 7) = \$ 5. 1 3 1
$$

Approach 2: Using the Binomial Model The binomial model is much more capable of handling early exercise because it considers the cash flows at each time period, rather than just at expiration. The biggest limitation of the binomial model is determining what stock prices will be at the end of each period, but this can be overcome by using a variant that allows us to estimate the up and the down movements in stock prices from the estimated variance. There are four steps involved:

Step 1: If the variance in  $\ln (\text{stock prices})$  has been estimated for the Black-Scholes valuation, convert these into inputs for the binomial model:

$$ u = e ^ {\sigma \sqrt {d t} + \left(r - \frac {\sigma^ {2}}{2}\right) d t}
$$

$$ d = e ^ {- \sigma \sqrt {d t} + \left(r - \frac {\sigma^ {2}}{2}\right) d t}
$$ where  $u$  and  $d$  are the up and the down movements per unit time for the binomial, and  $dt$  is the number of periods within each year (or unit time).


Step 2: Specify the period in which the dividends will be paid and make the assumption that the price will drop by the amount of the dividend in that period.

Step 3: Value the call at each node of the tree, allowing for the possibility of early exercise just before ex-dividend dates. There will be early exercise if the remaining time premium on the option is less than the expected drop in option value as a consequence of the dividend payment.

Step 4: Value the call at time 0, using the standard binomial approach.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/01369a098ebc80e589911e9a0996994ddf4ca3e71d76f898caa1a8f5832849a8.jpg)

# bstobin.xls: This spreadsheet allows you to estimate the parameters for a binomial model from the inputs to a Black-Scholes model.

Impact of Exercise on Underlying Asset Value The Black-Scholes model is based on the assumption that exercising an option does not affect the value of the underlying asset. This may be true for listed options on stocks, but it is not true for some types of options. For instance, the exercise of warrants increases the number of shares outstanding and brings fresh cash into the firm, both of which will affect the stock price. The expected negative impact (dilution) of exercise will decrease the value of warrants, compared to otherwise similar call options. The adjustment for dilution to the stock price is fairly simple in the Black-Scholes valuation. The stock price is adjusted for the expected dilution from the exercise of the options. In the case of warrants, for instance:

$$

\text {D i l u t i o n - a d j u s t e d} S = \left(S n _ {s} + W n _ {w}\right) / \left(n _ {s} + n _ {w}\right)

$$ where  $S =$  Current value of the stock

$\mathrm{n_w =}$  Number of warrants outstanding

W = Value of warrants outstanding

$\mathrm{n_s =}$  Number of shares outstanding

When the warrants are exercised, the number of shares outstanding will increase, reducing the stock price. The numerator reflects the market value of equity, including both stocks and warrants outstanding. The reduction in S will reduce the value of the call option.

There is an element of circularity in this analysis, since the value of the warrant is needed to estimate the dilution-adjusted S and the dilution-adjusted S is needed to estimate the value of the warrant. This problem can be resolved by starting the process off with an assumed value for the warrant (e.g., the exercise value or the current market price of the warrant). This will yield a value for the warrant, and this estimated value can then be used as an input to reestimate the warrant's value until there is convergence.

# FROM BLACK-SCHOLES TO BINOMIAL

The process of converting the continuous variance in a Black-Scholes model to a binomial tree is a fairly simple one. Assume, for instance, that you have an asset that is trading at 30 currently and that you estimate the annualized standard deviation in the asset value to be 40 percent; the annualized riskless rate is 5 percent. For simplicity, let us assume that the option that you are valuing has a four-year life and that each period is a year. To estimate the prices at the end of each of the four years, we begin by first estimating the up and down movements in the binomial:

$$
\begin{array}{l} \mathrm {u} = \exp^ {. 4 \sqrt {1} + \left(. 0 5 - \frac {. 4 ^ {2}}{2}\right) 1} = 1. 4 4 7 7 \\ \mathrm {d} = \exp^ {- . 4 \sqrt {1} + \left(. 0 5 - \frac {. 4 0 ^ {2}}{2}\right) 1} = 0. 6 5 0 5 \\ \end{array}
$$

Based on these estimates, we can obtain the prices at the end of the first node of the tree (the end of the first year):

$$
\mathrm {U p} \quad \text {p r i c e} = \$ 3 0 (1. 4 4 7 7) = \$ 4 3. 4 3
$$

$$
\text {D o w n p r i c e} = \$ 4 0 (0. 6 5 0 5) = \$ 1 9. 5 2
$$

Progressing through the rest of the tree, we obtain the following numbers:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/032723fa37e9c6bbf65bd2d7edfe20106233becdbe58040e4daed693576cdaec.jpg)

# ILLUSTRATION 5.6: Valuing a Warrant on Avatek Corporation

Avatek Corporation is a real estate firm with 19.637 million shares outstanding, trading at  \$0.38 a share. In March 2001 the company had 1.8 million options outstanding, with four years to expiration and with an exercise price of\$ 2.25. The stock paid no dividends, and the standard deviation in In(stock prices) was 93\%. The four-year Treasury bond rate was 4.9\%. (The options were trading at 0.12 apiece at the time of this analysis.)

The inputs to the warrant valuation model are as follows:

$$
S = (0. 3 8 \times 1 9. 6 3 7 + 0. 1 2 \times 1. 8) / (1 9. 6 3 7 + 1. 8) = 0. 3 5 4 4
$$

$K =$  Exercise price on warrant  $= 2.25$

$t =$  Time to expiration on warrant  $= 4$  years

$r =$  Riskless rate corresponding to life of option  $= 4.9\%$

$\sigma^2 =$  Variance in value of stock  $= 0.93^{2}$

$y =$  Dividend yield on stock  $= 0.0\%$

The results of the Black-Scholes valuation of this option are:

$$
\mathrm {d} _ {1} = 0. 0 4 1 8 \quad \mathrm {N} (\mathrm {d} _ {1}) = 0. 5 1 6 7
$$

$$
\mathrm {d} _ {2} = - 1. 8 1 8 2 \quad \mathrm {N} (\mathrm {d} _ {2}) = 0. 0 3 4 5
$$

Value of option = 0.3544(0.5167) - 2.25 exp $^{-(0.049)(4)}$  (0.0345) = 0.12

The options were trading at 0.12 in March 2001. Since the value was equal to the price, there was no need for further iterations. If there had been a difference, we would have reestimated the adjusted stock price and option value. If the options had been non-traded (as is the case with management options), this calculation would have required an iterative process, where the option value is used to get the adjusted value per share and the value per share to get the option value.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/0edb10887bdb297cd3d65583f65b824e2060d3aec7f3617ef5ae037148f9dc90.jpg)

# warrant.xls: This spreadsheet allows you to estimate the value of an option when there is a potential dilution from exercise.

The Black-Scholes Model for Valuing Puts The value of a put can be derived from the value of a call with the same strike price and the same expiration date:

$$
C - P = S - K e ^ {- r t}
$$ where  $C$  is the value of the call and  $P$  is the value of the put. This relationship between the call and put values is called put-call parity, and any deviations from parity can be used by investors to make riskless profits. To see why put-call parity holds, consider selling a call and buying a put with exercise price  $K$  and expiration date  $t$ , and simultaneously buying the underlying asset at the current price  $S$ . The payoff from this position is riskless and always yields  $K$  at expiration (t). To see this, assume that the stock price at expiration is  $S^*$ . The payoff on each of the positions in the portfolio can be written as follows:


<table><tr><td>Position</td><td>Payoffs at t if S* &gt; K</td><td>Payoffs at t if S* &lt; K</td></tr><tr><td>Sell call</td><td>-(S* - K)</td><td>0</td></tr><tr><td>Buy put</td><td>0</td><td>K - S*</td></tr><tr><td>Buy stock</td><td>S*</td><td>S*</td></tr><tr><td>Total</td><td>K</td><td>K</td></tr></table>

Since this position yields K with certainty, the cost of creating this position must be equal to the present value of K at the riskless rate  $(\mathrm{K} \mathrm{e}^{-\mathrm{rt}})$ .

$$

\mathrm {S} + \mathrm {P} - \mathrm {C} = \mathrm {K e} ^ {- \mathrm {r t}}

$$

$$

C - P = S - K e ^ {- r t}

$$

Substituting the Black-Scholes equation for the value of an equivalent call into this equation, we get:

$$

\text {V a l u e o f p u t} = \mathrm {K} \mathrm {e} ^ {- \mathrm {r t}} [ 1 - \mathrm {N} (\mathrm {d} _ {2}) ] - \mathrm {S} \mathrm {e} ^ {- \mathrm {y t}} [ 1 - \mathrm {N} (\mathrm {d} _ {1}) ]

$$ where  $d_1 = \frac{\ln\left(\frac{S}{K}\right) + \left(r - y + \frac{\sigma^2}{2}\right)t}{\sigma\sqrt{t}}$

$$ d _ {2} = d _ {1} - \sigma \sqrt {t}
$$

Thus, the replicating portfolio for a put is created by selling short  $[1 - \mathrm{N}(\mathrm{d}_1)]$  shares of stock and investing  $\mathrm{K e}^{-\mathrm{rt}}[1 - \mathrm{N}(\mathrm{d}_2)]$  in the riskless asset.

# ILLUSTRATION 5.7: Valuing a Put Using Put-Call Parity: Cisco Systems and AT&T

Consider the call on Cisco Systems that we valued in Illustration 5.2. The call had a strike price of  \$15 on the stock, had 103 days left to expiration, and was valued at\$ 1.87. The stock was trading at 13.62, and the riskless rate was 4.63\%. The put can be valued as follows:

$$
\text {P u t v a l u e} = C - S + K \mathrm {e} ^ {- r t} = \\ 1. 8 7 - \\ 1 3. 6 2 + \\ 1 5 \mathrm {e} ^ {- (0. 0 4 6 3) (2. 8 2 2)} = \\ 3. 0 6
$$

The put was trading at 3.38.

Also, a long-term call on AT&T was valued in Illustration 5.4. The call had a strike price of 20, 1.8333 years left to expiration, and a value of 6.63. The stock was trading at 20.50 and was expected to maintain a dividend yield of 2.51\% over the period. The riskless rate was 4.85\%. The put value can be estimated as follows:

$$
\text {P u t v a l u e} = C - S \mathrm {e} ^ {- y t} + K \mathrm {e} ^ {- r t} = \\ 6. 6 3 - \\ 2 0. 5 \mathrm {e} ^ {- (0. 2 5 1) (1. 8 3 3 3)} + \\ 2 0 \mathrm {e} ^ {- (0. 4 8 5) (1. 8 3 3 3)} = \\ 5. 3 5
$$

The put was trading at 3.80. Both the call and the put were trading at different prices from our estimates, which may indicate that we have not correctly estimated the stock's volatility.

# Jump Process Option Pricing Models

If price changes remain larger as the time periods in the binomial model are shortened, it can no longer be assumed that prices change continuously. When price changes remain large, a price process that allows for price jumps is much more realistic. Cox and Ross (1976) valued options when prices follow a pure jump process, where the jumps can only be positive. Thus, in the next interval, the stock price will either have a large positive jump with a specified probability or drift downward at a given rate.

Merton (1976) considered a distribution where there are price jumps superimposed on a continuous price process. He specified the rate at which jumps occur  $(\lambda)$  and the average jump size  $(k)$ , measured as a percentage of the stock price. The model derived to value options with this process is called a jump diffusion model. In this model, the value of an option is determined by the five variables specified in the Black-Scholes model, and the parameters of the jump process  $(\lambda, k)$ . Unfortunately, the estimates of the jump process parameters are so difficult to make for most firms that they overwhelm any advantages that accrue from using a more realistic model. These models, therefore, have seen limited use in practice.

# EXTENSIONS OF OPTION PRICING

All the option pricing models described so far—the binomial, the Black-Scholes, and the jump process models—are designed to value options with clearly defined exercise prices and maturities on underlying assets that are traded. However, the options we encounter in investment analysis or valuation are often on real assets rather than financial assets. Categorized as real options, they can take much more complicated forms. This section considers some of these variations.

# Capped and Barrier Options

With a simple call option, there is no specified upper limit on the profits that can be made by the buyer of the call. Asset prices, at least in theory, can keep going up, and the payoffs increase proportionately. In some call options, though, the buyer is entitled to profits up to a specified price but not above it. For instance, consider a call option with a strike price of  $\mathrm{K}_1$  on an asset. In an unrestricted call option, the payoff on this option will increase as the underlying asset's price increases above  $\mathrm{K}_1$ . Assume, however, that if the price reaches  $\mathrm{K}_2$ , the payoff is capped at  $(\mathrm{K}_2 - \mathrm{K}_1)$ . The payoff diagram on this option is shown in Figure 5.5.

This option is called a capped call. Notice, also, that once the price reaches  $\mathrm{K}_3$ , there is no longer any time premium associated with the option, and the option will therefore be exercised. Capped calls are part of a family of options called barrier options, where the payoff on and the life of the option are functions of whether the underlying asset price reaches a certain level during a specified period.

The value of a capped call is always lower than the value of the same call without the payoff limit. A simple approximation of this value can be obtained by valuing the call twice, once with the given exercise price and once with the cap, and taking the difference in the two values. In the preceding example, then, the value of the call with an exercise price of  $\mathrm{K}_1$  and a cap at  $\mathrm{K}_2$  can be written as:

Value of capped call  $=$  Value of call  $\left( {\mathrm{K} = {\mathrm{K}}_{1}}\right)  -$  Value of call  $\left( {\mathrm{K} = {\mathrm{K}}_{2}}\right)$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/f633fc036a8d002f569cba79b5660869ef9a181af7bb389b6663afc03e3a9cb9.jpg)

FIGURE 5.5 Payoff on Capped Call

Barrier options can take many forms. In a knockout option, an option ceases to exist if the underlying asset reaches a certain price. In the case of a call option, this knockout price is usually set below the strike price, and this option is called a down-and-out option. In the case of a put option, the knockout price will be set above the exercise price, and this option is called an up-and-out option. Like the capped call, these options are worth less than their unrestricted counterparts. Many real options have limits on potential upside, or knockout provisions, and ignoring these limits can result in the overstatement of the value of these options.

# Compound Options

Some options derive their value not from an underlying asset, but from other options. These options are called compound options. Compound options can take any of four forms—a call on a call, a put on a put, a call on a put, or a put on a call. Geske (1979) developed the analytical formulation for valuing compound options by replacing the standard normal distribution used in a simple option model with a bivariate normal distribution in the calculation.

Consider, for instance, the option to expand a project that is discussed in Chapter 30. While we will value this option using a simple option pricing model, in reality there could be multiple stages in expansion, with each stage representing an option for the following stage. In this case, we will undervalue the option by considering it as a simple rather than a compound option.

Notwithstanding this discussion, the valuation of compound options becomes progressively more difficult as more options are added to the chain. In this case, rather than wreck the valuation on the shoals of estimation error, it may be better to accept the conservative estimate that is provided with a simple valuation model as a floor on the value.

# Rainbow Options

In a simple option, the uncertainty is about the price of the underlying asset. Some options are exposed to two or more sources of uncertainty, and these options are rainbow options. Using the simple option pricing model to value such options can lead to biased estimates of value. As an example, consider an undeveloped oil reserve as an option, where the firm that owns the reserve has the right to develop the reserve. Here there are two sources of uncertainty. The first is obviously the price of oil, and the second is the quantity of oil that is in the reserve. To value this undeveloped reserve, we can make the simplifying assumption that we know the quantity of oil in the reserve with certainty. In reality, however, uncertainty about the quantity will affect the value of this option and make the decision to exercise more difficult.

# CONCLUSION

An option is an asset with payoffs that are contingent on the value of an underlying asset. A call option provides its holder with the right to buy the underlying asset at a fixed price, whereas a put option provides its holder with the right to sell at a fixed price, at any time before the expiration of the option. The value of an option is determined by six variables—the current value of the underlying asset, the variance in this value, the expected dividends on the asset, the strike price and life of the option, and the riskless interest rate. This is illustrated in both the binomial and the Black-Scholes models, which value options by creating replicating portfolios composed of the underlying asset and riskless lending or borrowing. These models can be used to value assets that have option like characteristics.

# QUESTIONS AND SHORT PROBLEMS

In the problems following, use an equity risk premium of 5.5 percent if none is specified.

1. The following are prices of options traded on Microsoft Corporation, which pays no dividends.

<table><tr><td></td><td colspan="2">Call</td><td colspan="2">Put</td></tr><tr><td></td><td>K = 85</td><td>K = 90</td><td>K = 85</td><td>K = 90</td></tr><tr><td>One-month</td><td>$2.75</td><td>$1.00</td><td>$4.50</td><td>$7.50</td></tr><tr><td>Three-month</td><td>$4.00</td><td>$2.75</td><td>$5.75</td><td>$9.00</td></tr><tr><td>Six-month</td><td>$7.75</td><td>$6.00</td><td>$8.00</td><td>$12.00</td></tr></table>

The stock is trading at 83, and the annualized riskless rate is 3.8\%. The standard deviation in \ln (\text{stock prices}) (based on historical data) is 30\%.

a. Estimate the value of a three-month call with a strike price of 85.

b. Using the inputs from the Black-Scholes model, specify how you would replicate this call.

c. What is the implied standard deviation in this call?

 d. Assume now that you buy a call with a strike price of \$85 and sell a call with a strike price of \$90. Draw the payoff diagram on this position.

e. Using put-call parity, estimate the value of a three-month put with a strike price of 85.

2. You are trying to value three-month call and put options on Merck with a strike price of \$30. The stock is trading at \$28.75, and the company expects to pay a quarterly dividend per share of 0.28 in two months. The annualized riskless interest rate is 3.6\%, and the standard deviation in log stock prices is 20\%.

a. Estimate the value of the call and put options, using the Black-Scholes model.

b. What effect does the expected dividend payment have on call values? On put values? Why?

3. There is the possibility that the options on Merck described in the preceding problem could be exercised early.

a. Use the pseudo-American call option technique to determine whether this will affect the value of the call.

b. Why does the possibility of early exercise exist? What types of options are most likely to be exercised early?

4. You have been provided the following information on a three-month call:

$$
\begin{array}{l} S = 9 5 \quad K = 9 0 \quad t = 0. 2 5 \quad r = 0. 0 4 \\ \mathrm {N} \left(\mathrm {d} _ {1}\right) = 0. 5 7 5 0 \quad \mathrm {N} \left(\mathrm {d} _ {2}\right) = 0. 4 5 0 0 \\ \end{array}
$$ a. If you wanted to replicate buying this call, how much money would you need to borrow?

b. If you wanted to replicate buying this call, how many shares of stock would you need to buy?

5. Go Video, a manufacturer of video recorders, was trading at \$4 per share in May 1994. There were 11 million shares outstanding. At the same time, it had 550,000 one-year warrants outstanding, with a strike price of \$4.25. The stock has had a standard deviation of 60\%. The stock does not pay a dividend. The riskless rate is 5\%.

a. Estimate the value of the warrants, ignoring dilution.
b. Estimate the value of the warrants, allowing for dilution.
c. Why does dilution reduce the value of the warrants?

6. You are trying to value a long-term call option on the NYSE Composite index, expiring in five years, with a strike price of 275. The index is currently at 250, and the annualized standard deviation in stock prices is  $15\%$ . The average dividend yield on the index is  $3\%$  and is expected to remain unchanged over the next five years. The five-year Treasury bond rate is  $5\%$ .

a. Estimate the value of the long-term call option.
b. Estimate the value of a put option with the same parameters.
c. What are the implicit assumptions you are making when you use the Black-Scholes model to value this option? Which of these assumptions are likely to be violated? What are the consequences for your valuation?

7. A new security on AT&T will entitle the investor to all dividends on AT&T over the next three years, limiting upside potential to  $20\%$  but also providing downside protection below  $10\%$ . AT&T stock is trading at 50, and three-year call and put options are traded on the exchange at the following prices:

<table><tr><td></td><td colspan="2">Call Options</td><td colspan="2">Put Options</td></tr><tr><td>K</td><td>1-Year</td><td>3-Year</td><td>1-Year</td><td>3-Year</td></tr><tr><td>45</td><td>$8.69</td><td>$13.34</td><td>$1.99</td><td>$ 3.55</td></tr><tr><td>50</td><td>$5.86</td><td>$10.89</td><td>$3.92</td><td>$ 5.40</td></tr><tr><td>55</td><td>$3.78</td><td>$ 8.82</td><td>$6.59</td><td>$ 7.63</td></tr><tr><td>60</td><td>$2.35</td><td>$ 7.11</td><td>$9.92</td><td>$10.23</td></tr></table>

How much would you be willing to pay for this security?

# Market Efficiency—Definition, Tests, and Evidence

What is an efficient market? What does it imply for investment and valuation models? Clearly, market efficiency is a concept that is controversial and attracts strong views, pro and con, partly because of differences between individuals about what it really means, and partly because whether markets are efficient or not is a core belief that in large part determines how an investor approaches investing. This chapter provides a definition of market efficiency, considers the implications of an efficient market for investors, and summarizes some of the basic approaches that are used to test investment schemes, thereby proving or disproving market efficiency. It also provides a summary of the voluminous research on whether markets are efficient.

# MARKET EFFICIENCY AND INVESTMENT VALUATION

The question of whether markets are efficient, and, if not, where the inefficiencies lie, is central to investment valuation. If markets are in fact efficient, the market price provides the best estimate of value, and the process of valuation becomes one of justifying the market price. If markets are not efficient, the market price may deviate from the true value, and the process of valuation is directed toward obtaining a reasonable estimate of this value. Those who do valuation well, then, will be able to make higher returns than other investors because of their capacity to spot under- and overvalued firms. To make these higher returns, though, markets have to correct their mistakes (i.e., become efficient) over time. Whether these corrections occur over six months or over five years can have a profound impact on which valuation approach an investor chooses to use and the time horizon that is needed for it to succeed.

There is also much that can be learned from studies of market efficiency, which highlight segments where the market seems to be inefficient. These inefficiencies can provide the basis for screening all stocks to come up with a subsample that is more likely to contain undervalued stocks. Given the size of the universe of stocks, this not only saves time for the analyst, but it increases the odds significantly of finding under- and overvalued stocks. For instance, some efficiency studies suggest that stocks that are neglected by institutional investors are more likely to be undervalued and earn excess returns. A strategy that screens firms for low institutional investment (as a percentage of the outstanding stock) may yield a subsample of neglected firms, which can then be valued to arrive at a portfolio of undervalued firms. If the research is correct, the odds of finding undervalued firms should increase in this subsample.

# WHAT IS AN EFFICIENT MARKET?

An efficient market is one where the market price is an unbiased estimate of the true value of the investment. Implicit in this derivation are several key concepts:
- Contrary to popular view, market efficiency does not require that the market price be equal to true value at every point in time. All it requires is that errors in the market price be unbiased; prices can be greater than or less than true value, as long as these deviations are random.
The fact that the deviations from true value are random implies, in a rough sense, that there is an equal chance that any stock is under- or overvalued at any point in time, and that these deviations are uncorrelated with any observable variable. For instance, in an efficient market, stocks with lower PE ratios should be no more or no less likely to be undervalued than stocks with high PE ratios.
If the deviations of market price from true value are random, it follows that no group of investors should be able to consistently find under- or overvalued stocks using any investment strategy.

Definitions of market efficiency have to be specific not only about the market that is being considered but also the investor group that is covered. It is extremely unlikely that all markets are efficient to all investors at all times, but it is entirely possible that a particular market (for instance, the New York Stock Exchange) is efficient with respect to the average investor. It is also possible that some markets are efficient while others are not, and that a market is efficient with respect to some investors and not to others. This is a direct consequence of differential tax rates and transaction costs, which confer advantages on some investors relative to others.

Definitions of market efficiency are also linked up with assumptions about what information is available to investors and reflected in the price. For instance, a strict definition of market efficiency that assumes that all information, public as well as private, is reflected in market prices would imply that even investors with precise inside information will be unable to beat the market. One of the earliest classifications of levels of market efficiency was provided by Fama (1971), who argued that markets could be efficient at three levels, based on what information was reflected in prices. Under weak form efficiency, the current price reflects the information contained in all past prices, suggesting that charts and technical analyses that use past prices alone would not be useful in finding undervalued stocks. Under semi-strong form efficiency, the current price reflects the information contained not only in past prices but all public information (including financial statements and news reports) and no approach that is predicated on using and massaging this information would be useful in finding undervalued stocks. Under strong form efficiency, the current price reflects all information, public as well as private, and no investors will be able to find undervalued stocks consistently.

# IMPLICATIONS OF MARKET EFFICIENCY

An immediate and direct implication of an efficient market is that no group of investors should be able to beat the market consistently using a common investment strategy. An efficient market would also carry negative implications for many investment strategies:


In an efficient market, equity research and valuation would be a costly task that would provide no benefits. The odds of finding an undervalued stock would always be 50-50, reflecting the randomness of pricing errors. At best, the benefits from information collection and equity research would cover the costs of doing the research.
In an efficient market, a strategy of randomly diversifying across stocks or indexing to the market, carrying little or no information cost and minimal execution costs, would be superior to any other strategy that created larger information and execution costs. There would be no value added by active portfolio managers and investment strategists.
In an efficient market, a strategy of minimizing trading (i.e., creating a portfolio and not trading unless cash was needed) would be superior to a strategy that required frequent trading.

It is therefore no wonder that the concept of market efficiency evokes such strong reactions on the part of portfolio managers and analysts, who view it, quite rightly, as a challenge to their existence.

It is also important that there be clarity about what market efficiency does not imply. An efficient market does not imply that:

Stock prices cannot deviate from true value; in fact, there can be large deviations from true value. The only requirement is that the deviations be random.
■ No investor will beat the market in any time period. To the contrary, approximately half of all investors, prior to transaction costs, should beat the market in any period.
■ No group of investors will beat the market in the long term. Given the number of investors in financial markets, the laws of probability would suggest that a fairly large number are going to beat the market consistently over long periods, not because of their investment strategies but because they are lucky. It would not, however, be consistent if a disproportionately large number $^2$  of these investors used the same investment strategy.

In an efficient market, the expected returns from any investment will be consistent with the risk of that investment over the long term, though there may be deviations from these expected returns in the short term.

# NECESSARY CONDITIONS FOR MARKET EFFICIENCY

Markets do not become efficient automatically. It is the actions of investors, sensing bargains and putting into effect schemes to beat the market, that make markets efficient. The necessary conditions for a market inefficiency to be eliminated are:

The market inefficiency should provide the basis for a scheme to beat the market and earn excess returns. For this to hold true:

The asset or assets that are the source of the inefficiency have to be traded.
The transaction costs of executing the scheme have to be smaller than the expected profits from the scheme.

There should be profit-maximizing investors who:
- Recognize the potential for excess return.
Can replicate the beat-the-market scheme that earns the excess return.
Have the resources to trade on the stock(s) until the inefficiency disappears.

The internal contradiction of claiming that there is no possibility of beating the market in an efficient market and requiring profit-maximizing investors to constantly seek out ways of beating the market and thus making it efficient has been explored by many. If markets were in fact efficient, investors would stop looking for inefficiencies, which would lead to markets becoming inefficient again. It makes sense to think about an efficient market as a self-correcting mechanism, where inefficiencies appear at regular intervals but disappear almost instantaneously as investors find them and trade on them.

# PROPOSITIONS ABOUT MARKET EFFICIENCY

A reading of the conditions under which markets become efficient leads to general propositions about where investors are most likely to find inefficiencies in financial markets.

Proposition 1: The probability of finding inefficiencies in an asset market decreases as the ease of trading on the asset increases. To the extent that investors have difficulty trading on an asset, either because open markets do not exist or because there are significant barriers to trading, inefficiencies in pricing can continue for long periods.

This proposition can be used to shed light on the differences between different asset markets. For instance, it is far easier to trade on stocks than it is on real estate, since markets are much more open, prices are in smaller units (reducing the barriers to entry for new traders), and the asset itself does not vary from transaction to transaction (one share of IBM is identical to another share, whereas one piece of real estate can be very different from another piece that is a stone's throw away). Based on these differences, there should be a greater likelihood of finding inefficiencies (both under- and overvaluation) in the real estate market.

Proposition 2: The probability of finding an inefficiency in an asset market increases as the transactions and information cost of exploiting the inefficiency increases. The cost of collecting information and trading varies widely across markets and even across investments in the same markets. As these costs increase, it pays less and less to try to exploit these inefficiencies.

Consider, for instance, the perceived wisdom that investing in "loser" stocks (i.e., stocks that have done very badly in some prior time period) should yield excess returns. This may be true in terms of raw returns, but transaction costs are likely to be much higher for these stocks since:

They tend to be low-priced stocks, leading to higher brokerage commissions and expenses.
The bid-ask spread, a transaction cost paid at the time of purchase, becomes a much higher fraction of the total price paid.
■ Trading is often thin on these stocks, and small trades can cause prices to change, resulting in a higher buy price or a lower sell price.

Corollary 1: Investors who can establish a cost advantage (either in information collection or in transaction costs) will be more able to exploit small inefficiencies than other investors who do not possess this advantage.

There are a number of studies that look at the effect of block trades on prices and conclude that while block trades do affect prices, investors will not exploit these inefficiencies because of the number of times they will have to trade and their associated transaction costs. These concerns are unlikely to hold for a specialist on the floor of the exchange, who can trade quickly, often and at no or very low costs. It should be pointed out, however, that if the market for specialists is efficient, the value of a seat on the exchange should reflect the present value of potential benefits from being a specialist.

This corollary also suggests that investors who work at establishing a cost advantage, especially in relation to information, may be able to generate excess returns on the basis of these advantages. Thus John Templeton, who started investing in Japanese and other Asian markets well before other portfolio managers, might have been able to exploit the informational advantages he had over his peers to make excess returns on his portfolios, at least for a few years.

Proposition 3: The speed with which an inefficiency is resolved will be directly related to how easily the scheme to exploit the inefficiency can be replicated by other investors. The ease with which a scheme can be replicated is related to the time, resources, and information needed to execute it. Since very few investors single-handedly possess the resources to eliminate an inefficiency through trading, it is much more likely that an inefficiency will disappear quickly if the scheme used to exploit the inefficiency is transparent and can be copied by other investors.

To illustrate this point, assume that stocks are consistently found to earn excess returns in the month following a stock split. Since firms announce stock splits publicly and any investor can buy stocks right after these splits, it would be surprising if this inefficiency persisted over time. This can be contrasted with the excess returns made by some arbitrage funds in index arbitrage, where index futures are bought (or sold), and stocks in the index are sold short or (bought). This strategy requires that investors be able to obtain information on the index and spot prices instantaneously, have the capacity (in terms of margin requirements and resources) to trade index futures and to sell short on stocks, and to have the resources to take and hold very large positions until the arbitrage unwinds. Consequently, inefficiencies in index futures pricing are likely to persist at least for the most efficient arbitrageurs, with the lowest execution costs and the speediest execution times.

# TESTING MARKET EFFICIENCY

Tests of market efficiency look at the whether specific investment strategies earn excess returns. Some tests also account for transactions costs and execution feasibility. Since an excess return on an investment is the difference between the actual and expected return on that investment, there is implicit in every test of market efficiency a model for this expected return. In some cases, this expected return adjusts for risk using the capital asset pricing model or the arbitrage pricing model, and in others the expected return is based on returns on similar or equivalent investments. In every case, a test of market efficiency is a joint test of market efficiency and the efficacy of the model used for expected returns. When there is evidence of excess returns in a test of market efficiency, it can indicate that markets are inefficient or that the model used to compute expected returns is wrong (or both). Although this may seem to present an insoluble dilemma, if the conclusions of the study are insensitive to different model specifications, it is much more likely that the results are being driven by true market inefficiencies and not just by model misspecifications.

There are a number of different ways of testing for market efficiency, and the approach used will depend in great part on the investment scheme being tested. A scheme based on trading on information events (stock splits, earnings announcements, or acquisition announcements) is likely to be tested using an "event study" in which returns around the event are scrutinized for evidence of excess returns. A scheme based on trading on an observable characteristic of a firm (price-earnings ratios, price-book value ratios, or dividend yields) is likely to be tested using a portfolio approach, where portfolios of stocks with these characteristics are created and tracked over time to see whether in fact they make excess returns. The following pages summarize the key steps involved in each of these approaches, and some potential pitfalls to watch out for when conducting or using these tests.

# Event Study

An event study is designed to examine market reactions to and excess returns around specific information events. The information events can be marketwide, such as macroeconomic announcements, or firm-specific, such as earnings or dividend announcements. The five steps in an event study are:

1. The event to be studied is clearly identified, and the date on which the event was announced is pinpointed. The presumption in event studies is that the timing of the event is known with a fair degree of certainty. Since financial markets react to the information about an event rather than the event itself, most event studies are centered around the announcement date for the event.

# Announcement Date

__________

2. Once the event dates are known, returns are collected around these dates for each of the firms in the sample. In doing so, two decisions have to be made. First, the researcher has to decide whether to collect weekly, daily, or shorter-interval returns around the event. This will be determined in part by how precisely the event date is known (the more precise, the more likely it is that shorter return intervals can be used) and by how quickly information is reflected in prices (the faster the adjustment, the shorter the return interval to use). Second, the analyst has to determine how many periods of returns before and after the announcement date will be considered as part of the event window. That decision also will be determined by the precision of the event date, since more imprecise dates will require longer windows.


![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/8162b8c74f7a2cb06ae76b64ca5f0446caaad2c3181eee53e968cb1d156a8afa.jpg)

Return window: -n to +n where  $\mathrm{R_{jt}} =$  Returns on firm j for period t(t=-n,...,0,...,+n)


3. The returns, by period, around the announcement date, are adjusted for market performance and risk to arrive at excess returns for each firm in the sample. For instance, if the capital asset pricing model is used to control for risk:

Excess return on period  $t =$  Return on day  $t -$  (Risk-free rate + Beta × Return on market on day  $t$ )

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/cf07b30e2ec35db68cb087dc966f8b36376fa28f9a1e417ecacf86a9160da6a9.jpg)

Return window: -n to +n where  $\mathrm{ER}_{\mathrm{jt}} =$  Excess returns on firm j for period t(t=-n,...,0,...,+n)=Rjt-E(Rjt)


4. The excess returns, by period, are averaged across all events in the sample, and a standard error is computed.

$$

\text {A v e r a g e e x c e s s r e t u r n o n d a y} \mathrm {t} = \sum_ {\mathrm {j} = 1} ^ {\mathrm {j} = \mathrm {N}} \frac {\mathrm {E R} _ {\mathrm {j t}}}{\mathrm {N}}

$$

Standard error in excess return on day  $t = \sum_{d=1}^{d=N} \frac{(\mathrm{ER}_{dt} - \mathrm{Average~ER})^2}{(N - 1)}$ where  $\mathrm{N} =$  Number of events (firms) in the event study


5. The question of whether the excess returns around the announcement are different from zero is answered by estimating the t statistic for each period, by dividing the average excess return by the standard error:

T statistic for excess return on day  $t =$  Average excess return/Standard error If the  $t$  statistics are statistically significant,4 the event affects returns; the sign of the excess return determines whether the effect is positive or negative.

<table><tr><td>Level</td><td>One-Tailed</td><td>Two-Tailed</td></tr><tr><td>1\%</td><td>2.33</td><td>2.55</td></tr><tr><td>5\%</td><td>1.66</td><td>1.96</td></tr></table>

# ILLUSTRATION 6.1: Example of an Event Study—Effects of Option Listing on Stock Prices

Academics and practitioners have long argued about the consequences of option listing for stock price volatility. On the one hand, there are those who argue that options attract speculators and hence increase stock price volatility. On the other hand, there are others who argue that options increase the available choices for investors and increase the flow of information to financial markets, and thus lead to lower stock price volatility and higher stock prices.

One way to test these alternative hypotheses is to do an event study, examining the effects of listing options on the underlying stocks' prices. Conrad (1989) did such a study, following these steps:

Step 1: The date of the announcement that options on a particular stock would be listed on the Chicago Board Options Exchange was collected.

Step 2: The prices of the underlying stock (j) were collected for each of the 10 days prior to the option listing announcement date, for the day of the announcement, and for each of the 10 days after.

Step 3: The returns on the stock  $(\mathsf{R}_{\mathrm{it}})$  were computed for each of these trading days.

Step 4: The beta for the stock  $(\beta_{i})$  was estimated using the returns from a time period outside the event window (using 100 trading days from before the event and 100 trading days after the event).

Step 5: The returns on the market index  $(\mathsf{R}_{\mathrm{mt}})$  were computed for each of the 21 trading days.

Step 6: The excess returns were computed for each of the 21 trading days:

$$

\mathrm {E R} _ {\mathrm {j t}} = \mathrm {R} _ {\mathrm {j t}} - \beta_ {\mathrm {j}} \mathrm {R} _ {\mathrm {m t}} \quad \mathrm {t} = - 1 0, - 9, - 8, \dots , + 8, + 9, + 1 0

$$

The excess returns are cumulated for each trading day.

Step 7: The average and standard error of excess returns across all stocks with option listings were computed for each of the 21 trading days. The t statistics are computed using the averages and standard errors for each trading day. The following table summarizes the average excess returns and t statistics around option listing announcement dates:

<table><tr><td>Trading Day</td><td>Average Excess Return</td><td>Cumulative Excess Return</td><td>T Statistic</td></tr><tr><td>-10</td><td>0.17\%</td><td>0.17\%</td><td>1.30</td></tr><tr><td>-9</td><td>0.48\%</td><td>0.65\%</td><td>1.66</td></tr><tr><td>-8</td><td>-0.24\%</td><td>0.41\%</td><td>1.43</td></tr><tr><td>-7</td><td>0.28\%</td><td>0.69\%</td><td>1.62</td></tr><tr><td>-6</td><td>0.04\%</td><td>0.73\%</td><td>1.62</td></tr><tr><td>-5</td><td>-0.46\%</td><td>0.27\%</td><td>1.24</td></tr><tr><td>-4</td><td>-0.26\%</td><td>0.01\%</td><td>1.02</td></tr><tr><td>-3</td><td>-0.11\%</td><td>-0.10\%</td><td>0.93</td></tr><tr><td>-2</td><td>0.26\%</td><td>0.16\%</td><td>1.09</td></tr><tr><td>-1</td><td>0.29\%</td><td>0.45\%</td><td>1.28</td></tr><tr><td>0</td><td>0.01\%</td><td>0.46\%</td><td>1.27</td></tr><tr><td>1</td><td>0.17\%</td><td>0.63\%</td><td>1.37</td></tr><tr><td>2</td><td>0.14\%</td><td>0.77\%</td><td>1.44</td></tr><tr><td>3</td><td>0.04\%</td><td>0.81\%</td><td>1.44</td></tr><tr><td>4</td><td>0.18\%</td><td>0.99\%</td><td>1.54</td></tr><tr><td>5</td><td>0.56\%</td><td>1.55\%</td><td>1.88</td></tr><tr><td>6</td><td>0.22\%</td><td>1.77\%</td><td>1.99</td></tr><tr><td>7</td><td>0.05\%</td><td>1.82\%</td><td>2.00</td></tr><tr><td>8</td><td>-0.13\%</td><td>1.69\%</td><td>1.89</td></tr><tr><td>9</td><td>0.09\%</td><td>1.78\%</td><td>1.92</td></tr><tr><td>10</td><td>0.02\%</td><td>1.80\%</td><td>1.91</td></tr></table>

Based on these excess returns, there is no evidence of an announcement effect on the announcement day alone, but there is mild evidence of a positive effect over the entire announcement period.5

# Portfolio Study

In some investment strategies, firms with specific characteristics are viewed as more likely to be undervalued, and therefore to have excess returns, than firms without these characteristics. In these cases, the strategies can be tested by creating portfolios of firms possessing these characteristics at the beginning of a time period and then examining returns over the time period. To ensure that these results are not colored by the idiosyncracies of one time period, this analysis is repeated for a number of periods. The seven steps in doing a portfolio study are:

1. The variable on which firms will be classified is defined, using the investment strategy as a guide. This variable has to be observable, though it does not have to be numerical. Examples would include market value of equity, bond ratings, stock prices, price-earnings ratios, and price-book value ratios.
2. The data on the variable is collected for every firm in the defined universe at the start of the testing period, and firms are classified into portfolios based on the magnitude of the variable. Thus, if the price-earnings ratio is the screening variable, firms are classified on the basis of PE ratios into portfolios from lowest PE to highest PE classes. The number of classes will depend on the size of the universe, since there have to be sufficient firms in each portfolio to get some measure of diversification.
3. The returns are collected for each firm in each portfolio for the testing period, and the returns for each portfolio are computed, making the decision to weight them either equally or based on value.
4. The beta (if using a single-factor model) or betas (if using a multifactor model) of each portfolio are estimated, either by taking the average of the betas of the individual stocks in the portfolio or by regressing the portfolio's returns against market returns over a prior time period (for instance, the year before the testing period). If you want to control for any other variables that have been shown to be correlated with returns such as market capitalization or price to book ratio, they can be incorporated into the expected return as well.
5. The excess returns earned by each portfolio are computed, in conjunction with the standard error of the excess returns.
6. There are a number of statistical tests available to check whether the average excess returns are, in fact, different across the portfolios. Some of these tests are parametric (they make certain distributional assumptions about excess returns), and some are nonparametric.
7. As a final test, the extreme portfolios can be matched against each other to see whether there are statistically significant differences across these portfolios.

# ILLUSTRATION 6.2: Example of a Portfolio Study—Price-Earnings Ratios

Practitioners have claimed that low price-earnings ratio stocks are generally bargains and do much better than the market or stocks with high price-earnings ratios. This hypothesis can be tested using a portfolio approach:

Step 1: Using data on price-earnings ratios from the end of 1987, firms on the New York Stock Exchange were classified into five groups, the first group consisting of stocks with the lowest PE ratios and the fifth group consisting of stocks with the highest PE ratios. Firms with negative price-earnings ratios were ignored (which may bias the results).

Step 2: The returns on each portfolio were computed using data from 1988 to 1992. Stocks that went bankrupt or were delisted were assigned a return of  $-100\%$ .

Step 3: The betas for each stock in each portfolio were computed using monthly returns from 1983 to 1987, and the average beta for each portfolio was estimated. The portfolios were assumed to be equally weighted.

Step 4: The returns on the market index were computed from 1988 to 1992.

Step 5: The excess returns on each portfolio were computed from 1988 to 1992. The following table summarizes the excess returns each year from 1988 to 1992 for each portfolio.

<table><tr><td>PE Class</td><td>1988</td><td>1989</td><td>1990</td><td>1991</td><td>1992</td><td>1988-1992</td></tr><tr><td>Lowest</td><td>3.84\%</td><td>-0.83\%</td><td>2.10\%</td><td>6.68\%</td><td>0.64\%</td><td>2.61\%</td></tr><tr><td>2</td><td>1.75\%</td><td>2.26\%</td><td>0.19\%</td><td>1.09\%</td><td>1.13\%</td><td>1.56\%</td></tr><tr><td>3</td><td>0.20\%</td><td>-3.15\%</td><td>-0.20\%</td><td>0.17\%</td><td>0.12\%</td><td>-0.59\%</td></tr><tr><td>4</td><td>-1.25\%</td><td>-0.94\%</td><td>-0.65\%</td><td>-1.99\%</td><td>-0.48\%</td><td>-1.15\%</td></tr><tr><td>Highest</td><td>-1.74\%</td><td>-0.63\%</td><td>-1.44\%</td><td>-4.06\%</td><td>-1.25\%</td><td>-1.95\%</td></tr></table>

Step 6: While the ranking of the returns across the portfolio classes seems to confirm our hypothesis that low-PE stocks earn a higher return, we have to consider whether the differences across portfolios are statistically significant. There are several tests available, but these are a few:

An F test can be used to accept or reject the hypothesis that the average returns are the same across all portfolios. A high F score would lead us to conclude that the differences are too large to be random.
A chi-squared test is a nonparametric test that can be used to test the hypothesis that the means are the same across the five portfolio classes.
We could isolate just the lowest-PE and highest-PE stocks and estimate a t statistic that the averages are different across these two portfolios.

# CARDINAL SINS IN TESTING MARKET EFFICIENCY

In the process of testing investment strategies, there are a number of pitfalls that have to be avoided. Six of them are:

1. Using anecdotal evidence to support/reject an investment strategy. Anecdotal evidence is a double-edged sword. It can be used to support or reject the same hypothesis. Since stock prices are noisy and all investment schemes (no matter how absurd) will succeed sometimes and fail at other times, there will always be cases where the scheme works or does not work.

2. Testing an investment strategy on the same data and time period from which it was extracted. This is the tool of choice for the unscrupulous investment strategist. An investment scheme is extracted from hundreds through an examination of the data for a particular time period. This investment scheme is then tested on the same time period, with predictable results. (The scheme does miraculously well and makes immense returns.)

An investment scheme should always be tested out on a time period different from the one it is extracted from or on a universe different from the one used to derive the scheme.

3. Choosing a biased sample. There may be bias in the sample on which the test is run. Since there are thousands of stocks that could be considered part of this universe, researchers often choose to use a smaller sample. When this choice is random, this does limited damage to the results of the study. If the choice is biased, it can provide results that are not true in the larger universe.

4. Failure to control for market performance. A failure to control for overall market performance can lead you to conclude that your investment scheme works just because it makes good returns (most schemes will make good returns if the overall market does well; the question is whether they made better returns than expected) or does not work just because it makes bad returns (most schemes will do badly if the overall market performs poorly). It is crucial therefore that investment schemes control for market performance during the period of the test.

5. Failure to control for risk. A failure to control for risk leads to a bias toward accepting high-risk investment schemes and rejecting low-risk investment schemes, since the former should make higher returns than the market and the latter lower, without implying any excess returns.

6. Mistaking correlation for causation. Consider the study on PE stocks cited in the earlier section. We concluded that low-PE stocks have higher excess returns than high-PE stocks. It would be a mistake to conclude that a low price-earnings ratio causes excess returns, since the high returns and the low PE ratio themselves might have been caused by the high risk associated with investing in the stock. In other words, high risk is the causative factor that leads to both the observed phenomena—low PE ratios on the one hand and high returns on the other. This insight would make us more cautious about adopting a strategy of buying low-PE stocks in the first place.

# SOME LESSER SINS THAT CAN BE A PROBLEM

1. Survival bias. Most researchers start with an existing universe of publicly traded companies and work back through time to test investment strategies. This can create a subtle bias since it automatically eliminates firms that failed during the period, with obvious negative consequences for returns. If the investment scheme is particularly susceptible to picking firms that have high bankruptcy risk, this may lead to an overstatement of returns on the scheme.

For example, assume that the investment scheme recommends investing in stocks that have very negative earnings, using the argument that these stocks are the most likely to benefit from a turnaround. Some of the firms in this portfolio will go bankrupt, and a failure to consider these firms will overstate the returns from this strategy.

2. Not allowing for transaction costs. Some investment schemes are more expensive than others because of transaction costs—execution fees, bid-ask spreads, and price impact. A complete test will take these into account before it passes judgment on the strategy. This is easier said than done, because different investors have different transaction costs, and it is unclear which investor's trading cost schedule should be used in the test. Most researchers who ignore transaction costs argue that individual investors can decide for themselves, given their transaction costs, whether the excess returns justify the investment strategy.
3. Not allowing for difficulties in execution. Some strategies look good on paper but are difficult to execute in practice, either because of impediments to trading or because trading creates a price impact. Thus a strategy of investing in very small companies may seem to create excess returns on paper, but these excess returns may not exist in practice because the price impact is significant.

# EVIDENCE ON MARKET EFFICIENCY

This section of the chapter attempts to summarize the evidence from studies of market efficiency. Without claiming to be comprehensive, the evidence is classified into four sections—the study of price changes and their time series properties, the research on the efficiency of market reaction to information announcements, the existence of return anomalies across firms and over time, and the analysis of the performance of insiders, analysts, and money managers.

# TIME SERIES PROPERTIES OF PRICE CHANGES

Investors have used price charts and price patterns as tools for predicting future price movements for as long as there have been financial markets. It is not surprising, therefore, that the first studies of market efficiency focused on the relationship between price changes over time, to see if in fact such predictions were feasible. Some of this testing was spurred by the random walk theory of price movements, which contended that price changes over time followed a random walk. As the studies of the time series properties of prices have proliferated, the evidence can be classified into two categories—studies that focus on short-term price behavior (intraday, daily, and weekly price movements) price behavior and research that examines the longer term (monthly, annual, and multi-year).

# Short-Term Price Movements

The notion that today's price change conveys information about tomorrow's price change is deeply rooted in most investors' psyches. There are several ways in which this hypothesis can be tested in financial markets.

Serial Correlation The serial correlation measures the correlation between price changes in consecutive time periods, whether hourly, daily, or weekly, and is a measure of how much the price change in any period depends on the price change over the previous time period. A serial correlation of zero would therefore imply that price changes in consecutive time periods are uncorrelated with each other, and can thus be viewed as a rejection of the hypothesis that investors can learn about future price changes from past ones. A serial correlation that is positive and statistically significant could be viewed as evidence of price momentum in markets, and would suggest that returns in a period are more likely to be positive if the prior period's returns were positive, and negative if previous returns were negative. A serial correlation that is negative and statistically significant could be evidence of price reversals, and would be consistent with a market where positive returns are more likely to follow negative returns and vice versa.


From the viewpoint of investment strategy, serial correlations can be exploited to earn excess returns. A positive serial correlation would be exploited by a strategy of buying after periods with positive returns and selling after periods with negative returns. A negative serial correlation would suggest a strategy of buying after periods with negative returns and selling after periods with positive returns. Since these strategies generate transactions costs, the correlations have to be large enough to allow investors to generate profits to cover these costs. It is therefore entirely possible that there is serial correlation in returns, without any opportunity to earn excess returns for most investors.

The earliest studies of serial correlation—Alexander (1964), Cootner (1962), and Fama (1965)—all looked at large U.S. stocks and concluded that the serial correlation in stock prices was small. Fama, for instance, found that 8 of the 30 stocks listed in the Dow had negative serial correlations and that most of the serial correlations were less than 0.05. Other studies confirm these findings not only for smaller stocks in the United States, but also for other markets. For instance, Jennergren and Korsvold (1974) report low serial correlations for the Swedish equity market, and Cootner (1961) concludes that serial correlations are low in commodity markets as well. Although there may be statistical significance associated with some of these correlations, it is unlikely that there is enough correlation to generate excess returns.

The serial correlation in short period returns is affected by market liquidity and the presence of a bid-ask spread. Not all stocks in an index are liquid, and in some cases stocks may not trade during a period. When the stock trades in a subsequent period, the resulting price changes can create positive serial correlation. To see why, assume that the market is up strongly on day 1, but that three stocks in the index do not trade on that day. On day 2, if these stocks are traded, they are likely to go up in price to reflect the increase in the market the previous day. The net result is that you should expect to see positive serial correlation in daily or hourly returns in illiquid market indexes.

The bid-ask spread creates a bias in the opposite direction, if transaction prices are used to compute returns, since prices have an equal chance of ending up at the bid or the ask price. The bounce that this induces in prices—from bid to ask to bid again—will result in negative serial correlations in returns. Roll (1984) provides a simple measure of this relationship:

Bid-ask spread  $= -\sqrt{2}$  (Serial covariance in returns) where the serial covariance in returns measures the covariance between return changes in consecutive time periods. For very short return intervals, this bias induced


in serial correlations might dominate and create the mistaken view that price changes in consecutive time periods are negatively correlated.

Filter Rules In a filter rule, an investor buys an investment if the price rises X percent from a previous low and holds the investment until the price drops X percent from a previous high. The magnitude of the change (X percent) that triggers the trades can vary from filter rule to filter rule, with smaller changes resulting in more transactions per period and higher transaction costs. Figure 6.1 graphs out a typical filter rule.

This strategy is based on the assumption that price changes are serially correlated and that there is price momentum (i.e., stocks that have gone up strongly in the past are more likely to keep going up than to go down). Table 6.1 summarizes results—Fama and Blume (1966) and Jensen and Bennington (1970)—from a study on returns, before and after transactions costs, on a trading strategy based on filter rules ranging from 0.5 percent to 20 percent. (A 0.5 percent rule implies that a stock is bought when it rises 0.5 percent from a previous low and is sold when it falls 0.5 percent from a prior high.)

The only filter rule that beats the returns from the buy-and-hold strategy is the 0.5 percent rule, but it does so before transaction costs. This strategy creates 12,514 trades during the period, which generate enough transaction costs to wipe out the principal invested by the investor. While this test is dated, it also illustrates basic problems with strategies that require frequent short-term trading. Even though these strategies may earn excess returns prior to transaction costs, adjusting for these costs can wipe out the excess returns.

One popular indicator among investors that is a variant on the filter rule is the relative strength measure, which relates recent prices on stocks or other investments

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/4ffe712f5f280bca7a8aab85d8068d4fca13f40f326223ab8396a772a5b26a4d.jpg)
FIGURE 6.1 Filter Rule

TABLE 6.1 Returns on Filter Rule Strategies

<table><tr><td>Value of X</td><td>Return with Strategy</td><td>Return with Buy and Hold</td><td>Number of Transactions with Strategy</td><td>Return after Transaction Costs</td></tr><tr><td>0.5\%</td><td>11.5\%</td><td>10.4\%</td><td>12,514</td><td>-103.6\%</td></tr><tr><td>1.0\%</td><td>5.5\%</td><td>10.3\%</td><td>8,660</td><td>-74.9\%</td></tr><tr><td>2.0\%</td><td>0.2\%</td><td>10.3\%</td><td>4,764</td><td>-45.2\%</td></tr><tr><td>3.0\%</td><td>-1.7\%</td><td>10.1\%</td><td>2,994</td><td>-30.5\%</td></tr><tr><td>4.0\%</td><td>0.1\%</td><td>10.1\%</td><td>2,013</td><td>-19.5\%</td></tr><tr><td>5.0\%</td><td>-1.9\%</td><td>10.0\%</td><td>1,484</td><td>-16.6\%</td></tr><tr><td>6.0\%</td><td>1.3\%</td><td>9.7\%</td><td>1,071</td><td>-9.4\%</td></tr><tr><td>7.0\%</td><td>0.8\%</td><td>9.6\%</td><td>828</td><td>-7.4\%</td></tr><tr><td>8.0\%</td><td>1.7\%</td><td>9.6\%</td><td>653</td><td>-5.0\%</td></tr><tr><td>9.0\%</td><td>1.9\%</td><td>9.6\%</td><td>539</td><td>-3.6\%</td></tr><tr><td>10.0\%</td><td>3.0\%</td><td>9.6\%</td><td>435</td><td>-1.4\%</td></tr><tr><td>12.0\%</td><td>5.3\%</td><td>9.4\%</td><td>289</td><td>2.3\%</td></tr><tr><td>14.0\%</td><td>3.9\%</td><td>10.3\%</td><td>224</td><td>1.4\%</td></tr><tr><td>16.0\%</td><td>4.2\%</td><td>10.3\%</td><td>172</td><td>2.3\%</td></tr><tr><td>18.0\%</td><td>3.6\%</td><td>10.0\%</td><td>139</td><td>2.0\%</td></tr><tr><td>20.0\%</td><td>4.3\%</td><td>9.8\%</td><td>110</td><td>3.0\%</td></tr></table>

Data sources: Fama and Blume (1966); Jensen and Bennington (1970).

either to average prices over a specified period, say over six months, or to the price at the beginning of the period. Stocks that score high on the relative strength measure are considered good investments. This investment strategy is also based upon the assumption of price momentum.

Runs Tests A runs test is a nonparametric variation on the serial correlation, and it is based on a count of the number of runs (i.e., sequences of price increases or decreases) in the price changes. Thus, the following time series of price changes, where U is an increase and D is a decrease, would result in the following runs:

# UUUDDUDDDUUDDUDUUDDUUUDDU

There were 18 runs in this price series of 33 periods. The actual number of runs in the price series is compared against the number that can be expected in a series of this length, assuming that price changes are random. If the actual number of runs is greater than the expected number, there is evidence of negative correlation in price changes. If it is lower, there is evidence of positive correlation. A 1966 study by Niederhoffer and Osborne of price changes in the Dow 30 stocks assuming daily, four-day, nine-day, and 16-day return intervals provided the following results:

<table><tr><td></td><td colspan="4">Differencing Interval</td></tr><tr><td></td><td>Daily</td><td>Four-Day</td><td>Nine-Day</td><td>Sixteen-Day</td></tr><tr><td>Actual runs</td><td>735.1</td><td>175.7</td><td>74.6</td><td>41.6</td></tr><tr><td>Expected runs</td><td>759.8</td><td>175.8</td><td>75.3</td><td>41.7</td></tr></table>

Based on these results, there is evidence of positive correlation in daily returns but no evidence of deviations from normality for longer return intervals.

Again, while the evidence is dated, it serves to illustrate the point that long strings of positive and negative changes are, by themselves, insufficient evidence that markets are not random, since such behavior is consistent with price changes following a random walk. It is the recurrence of these strings that can be viewed as evidence against randomness in price behavior.

# Longer-term Price Movements

While most of the earlier studies of price behavior focused on shorter return intervals, more attention has been paid to price movements over longer periods (one-year to five-year periods) in recent years. Here, there is an interesting dichotomy in the results. When long term is defined as months rather than years, there seems to be a tendency toward positive serial correlation or price momentum. However, when long term is defined in terms of years, there is substantial negative correlation in the returns, suggesting that markets reverse themselves over long periods.

# Weekly and Monthly Price Momentum

In the preceding section, we noted that the evidence of short-term price patterns is weak and that any price dependence over very short time periods (minutes or hours) can be attributed more to market structure (liquidity, bid-ask spreads) than to inefficiency. We also argued that while chartists who track these short-term price movements abound, few seem to emerge as consistent winners. As we extend our time periods from minutes to days and from days to weeks, there is some evidence of price momentum. Put differently, stocks that have gone up in the last few weeks or months seem to have a tendency to continue to outperform the market in the next few weeks or months, and stocks that have gone down in the recent weeks or months continue to languish in the next few weeks or months.

Jegadeesh and Titman (1993, 2001) present evidence of what they call price momentum in stock prices over time periods of up to eight months — stocks that have gone up in the last six months tend to continue to go up, whereas stocks that have gone down in the last six months tend to continue to go down. The momentum effect is just as strong in the European markets, though it seems to be weaker in emerging markets. What may cause this momentum? One potential explanation is that mutual funds are more likely to buy past winners and dump past losers, thus generating price continuity.

# Annual or Multi-year Price Reversal

When the long term is defined in terms of years, there is negative correlation in returns, suggesting that markets reverse themselves over very long periods. Fama and French (1988) examined five-year returns on stocks from 1941 to 1985 and present evidence of this phenomenon. They found that serial correlation is more negative in five-year returns than in one-year returns, and is much more negative for smaller stocks rather than larger stocks. Figure 6.2 summarizes one-year and five-years serial correlation by size class for stocks on the New York Stock Exchange.


Since there is evidence that prices reverse themselves in the long term, it might be worth examining whether such price reversals can be used by investors to profit. To isolate the effect of such price reversals on the extreme portfolios, DeBondt and Thaler constructed a winner portfolio of 35 stocks that had gone up the most over the prior year, and a loser portfolio of 35 stocks that had gone down the most over the prior year, each year from 1933 to 1978, and examined returns on these portfolios for the sixty months following the creation of the portfolio. Figure 6.3 summarizes the excess returns for winner and loser portfolios. This analysis suggests that loser portfolios clearly outperform winner portfolios in the 60 months following creation. This evidence is consistent with market overreaction and correction in long return intervals.

There are many academics as well as practitioners, who suggest that these findings may be interesting but that they overstate potential returns on loser portfolios. For instance, there is evidence that loser portfolios are more likely to contain low-priced stocks (selling for less than 5), which generate higher transactions costs and are also more likely to offer heavily skewed returns; that is, the excess returns come from a few stocks making phenomenal returns rather than from consistent performance. One study of the winner and loser portfolios attributes the bulk of the excess returns of loser portfolios to low-priced stocks and also finds that the results are sensitive to when the portfolios are created.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/702ce26c843f1a2bf0b14e2ca517a71610ef76afe069c4e5e7e096c5bafda4bb.jpg)
FIGURE 6.2 One-Year and Five-Year Correlations: Market Value Class, 1941 to 1985 Source: Fama and French (1988).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/8012348e9952483b2b40bb1be179c1a56df9a368ead16c4f501e56035070dc21.jpg)
FIGURE 6.3 Excess Returns for Winner and Loser Portfolios Source: DeBondt and Thaler (1985).

Loser portfolios created every December earn significantly higher returns than portfolios created every June.

# Speculative Bubbles, Crashes, and Panics

Historians who have examined the behavior of financial markets over time have challenged the assumption of rationality that underlies much of efficient market theory. They point to the frequency with which speculative bubbles have formed in financial markets as investors buy into fads or get-rich-quick schemes, and the crashes when these bubbles have ended, and suggest that there is nothing to prevent the recurrence of this phenomenon in today's financial markets. There is some evidence in the literature of irrationality on the part of market players.

Experimental Studies of Rationality Some of the most interesting evidence on market efficiency and rationality in recent years has come from experimental studies. While most experimental studies suggest that traders are rational, there are some examples of irrational behavior in some of these studies.

One such study was done at the University of Arizona. In an experimental study, traders were told that a payout would be declared after each trading day, determined randomly from four possibilities—0, 8, 28, or 60 cents. The average payout was 24 cents. Thus the share's expected value on the first trading day of a 15-day experiment was  \$3.60 (24 cents times 15), the second day was\$ 3.36, and so on. The traders were allowed to trade each day. The results of 60 such experiments are summarized in Figure 6.4.

There is clear evidence here of a speculative bubble forming during periods 3 to 5, where prices exceed expected values by a significant amount. The bubble ultimately bursts, and prices approach expected value by the end of the period. If this mispricing is feasible in a simple market, where every investor obtains the same information, it is clearly feasible in real financial markets, where there is much more differential information and much greater uncertainty about expected value.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/02542f6610dad7ed3466d7898fed3205bb59bb9c088a1efe72ee2e9e4e2906bb.jpg)
FIGURE 6.4 Trading Price by Trading Day


It should be pointed out that some of the experiments were run with students, and some with Tucson businessmen with real-world experience. The results were similar for both groups. Furthermore, when price curbs of 15 cents were introduced, the booms lasted even longer because traders knew that prices would not fall by more than 15 cents in a period. Thus, the notion that price limits can control speculative bubbles seems misguided.

Behavioral Finance The irrationality sometimes exhibited by investors has given rise to a whole new area of finance called behavioral finance. Using evidence gathered from experimental psychology, researchers have tried to both model how investors react to information and predict how prices will change as a consequence. They have been far more successful at the first endeavor than the second. For instance, the evidence seems to suggest that:

■ Investors do not like to admit their mistakes. Consequently, they tend to hold on to losing stocks far too long, or in some cases double up their bets (investments) as stocks drop in value.
■ More information does not always lead to better investment decisions. Investors seem to suffer both from information overload and from a tendency to react to the latest piece of information. Both result in investment decisions that lower returns in the long term.

If the evidence on how investors behave is so clear-cut, you might ask, why are the predictions that emerge from these models so noisy? The answer, perhaps, is that any model that tries to forecast human foibles and irrationalities is, by its very

# BEHAVIORIAL FINANCE AND VALUATION

In 1999, Robert Shiller made waves in both academia and investment houses with his book titled *Irrational Exuberance*. His thesis is that investors are often not just irrational but irrational in predictable ways—overreacting to some information and buying and selling in herds. His work forms part of a growing body of theory and evidence of behavioral finance, which can be viewed as a congruence of psychology, statistics, and finance.

While the evidence presented for investor irrationality is strong, the implications for valuation are less so. You can consider discounted cash flow valuation to be the antithesis of behavioral finance, because it takes the point of view that the value of an asset is the present value of the expected cash flows generated by that asset. With this context, there are two ways in which you can look at the findings in behavioral finance:

1. Irrational behavior may explain why prices can deviate from value (as estimated in a discounted cash flow model). Consequently, it provides the foundation for the excess returns earned by rational investors who base decisions on estimated value. Implicit here is the assumption that markets ultimately recognize their irrationality and correct themselves.
2. It may also explain why discounted cash flow values can deviate from relative values (estimated using multiples). Since the relative value is estimated by looking at how the market prices similar assets, irrationalities that exist will be priced into the asset.

nature, unlikely to be a stable one. Behavioral finance may emerge ultimately as a trump card in explaining why and how stock prices deviate from true value, but its role in devising investment strategy still remains questionable.

# MARKET REACTION TO INFORMATION EVENTS

Some of the most powerful tests of market efficiency are event studies where market reaction to informational events (such as earnings and takeover announcements) has been scrutinized for evidence of inefficiency. While it is consistent with market efficiency for markets to react to new information, the reaction has to be instantaneous and unbiased. This point is made in Figure 6.5 by contrasting three different market reactions to information announcements containing good news.

Of the three market reactions pictured here, only the first one is consistent with an efficient market. In the second market, the information announcement is followed by a gradual increase in prices, allowing investors to make excess returns after the announcement. This is a slow learning market in which some investors will make excess returns on the price drift. In the third market, the price reacts instantaneously to the announcement, but corrects itself in the days that follow, suggesting that the initial price change was an overreaction to the information. Here again, an enterprising investor could have sold short after the announcement and expected to make excess returns as a consequence of the price correction.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/7bba346fe944aea2a5c06ed0938345862c80607bf46e7e5c824fb5fde0b93920.jpg)
FIGURE 6.5 Information and Price Adjustment


# Earnings Announcements

When firms make earnings announcements, they convey information to financial markets about their current and future prospects. The magnitude of the information, and the size of the market reaction, should depend on how much the earnings report exceeds or falls short of investor expectations. In an efficient market, there should be an instantaneous reaction to the earnings report, if it contains surprising information, and prices should increase following positive surprises and decline following negative surprises.

Since actual earnings are compared to investor expectations, one of the key parts of an earnings event study is the measurement of these expectations. Some of the earlier studies used earnings from the same quarter in the prior year as a measure of expected earnings (i.e., firms that report increases in quarter-to-quarter earnings provide positive surprises, and those that report decreases in quarter-to-quarter earnings provide negative surprises). In more recent studies, analyst estimates of earnings have been used as a proxy for expected earnings and compared to the actual earnings.

Figure 6.6 provides a graph of price reactions to earnings surprises, classified on the basis of magnitude into different classes from "most negative" earnings reports (group 1) to most positive earnings reports (group 10). The evidence contained in this graph is consistent with the evidence in most earnings announcement studies:

The earnings announcement clearly conveys valuable information to financial markets; there are positive excess returns (cumulative abnormal returns) around positive announcements and negative excess returns around negative announcements.
There is some evidence of a market reaction in the days immediately prior to the earnings announcement that is consistent with the nature of the announcement (i.e., prices tend to go up on the day before positive announcements and down on the day before negative announcements). This can be viewed as evidence of either insider trading, information leakage, or getting the announcement date wrong.[10]

FIGURE 6.6 Post-Announcement Drift after Unexpected Quarterly Earnings Surprises: U.S. Companies from 1988 to 2002
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/8bfc3edde47b5d2ee1fdca7229d90e645b6581bf472461d555c6d9153f1247c0.jpg)
Source: Updated version of Rendleman, Jones, and Latrané (1982).


There is some evidence, albeit weak, of a price drift in the days following an earnings announcement. Thus a positive report evokes a positive market reaction on the announcement date, and there are mildly positive excess returns in the days following the earnings announcement. Similar conclusions emerge for negative earnings reports.

The management of a firm has some discretion on the timing of earnings reports, and there is some evidence that the timing affects expected returns. A 1989 study of earnings reports, classified by the day of the week that the earnings are reported, reveals that earnings and dividend reports on Fridays are much more likely to contain negative information than announcements on any other day of the week. This is shown in Figure 6.7.

There is also some evidence discussed by Chambers and Penman (1984) that earnings announcements that are delayed, relative to the expected announcement date, are much more likely to contain bad news than earnings announcements that are early or on time. This is graphed in Figure 6.8. Earnings announcements that are more than six days late relative to the expected announcement date are much more likely to contain bad news and evoke negative market reactions than earnings announcements that are on time or early.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/b31fb676c7f270fbc1b70240053b42d194e2c106a243ac5abb1339800aaae215.jpg)
FIGURE 6.7 Earnings and Dividend Reports by Day of the Week Source: Damodaran (1989).


# Investment and Project Announcements

Firms frequently make announcements of their intentions of investing resources in projects and research and development. There is evidence that financial markets react to these announcements. The question of whether markets have a long-term or short-term perspective can be partially answered by looking at these market reactions. If financial markets are as short-term as some of their critics claim, they should react negatively to announcements by the firm that it plans to invest in research and development. As table 6.2, which looks at market reactions to various investment announcements makes clear, the evidence suggests that the market reaction to investment announcements is generally positive, albeit discriminating.

This table excludes the largest investments that most firms make, which are acquisitions of other firms. Here the evidence is not so favorable. In about 55 percent of all acquisitions, the stock price of the acquiring firm drops on the announcement of the acquisition, reflecting the market's beliefs that firms tend to overpay on acquisitions.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/5d853026ed2a1fdf58c36d532978be0b5ff96c762aab7787de9586c5f31ed906.jpg)
FIGURE 6.8 Cumulated Abnormal Returns and Earnings Delay Source: Chambers and Penman (1984).

TABLE 6.2 Market Reactions to Investment Announcements

<table><tr><td rowspan="2">Type of Announcement</td><td colspan="2">Abnormal Returns</td></tr><tr><td>On Announcement Day</td><td>In Announcement Month</td></tr><tr><td>Joint venture formations</td><td>0.399\%</td><td>1.412\%</td></tr><tr><td>R&amp;D expenditures</td><td>0.251\%</td><td>1.456\%</td></tr><tr><td>Product strategies</td><td>0.440\%</td><td>-0.35\%</td></tr><tr><td>Capital expenditures</td><td>0.290\%</td><td>1.499\%</td></tr><tr><td>All announcements</td><td>0.355\%</td><td>0.984\%</td></tr></table>

Source: Chan, Martin, and Kensinger (1990); McConnell and Muscarella (1985).

# MARKET ANOMALIES

Merriam-Webster's Collegiate Dictionary defines an anomaly as a "deviation from the common rule." Studies of market efficiency have uncovered numerous examples of market behavior that are inconsistent with existing models of risk and return and often defy rational explanation. The persistence of some of these patterns of behavior suggests that the problem, in at least some of these anomalies, lies in the models being used for risk and return rather than in the behavior of financial markets. The following section summarizes some of the more widely noticed anomalies in financial markets in the United States and elsewhere.

# Anomalies Based on Firm Characteristics

There are a number of anomalies that have been related to observable firm characteristics, including the market value of equity, price-earnings ratios, and price-book value ratios.

The Small Firm Effect Studies such as Banz (1981) and Keim (1983) have consistently found that smaller firms (in terms of market value of equity) earn higher returns than larger firms of equivalent risk, where risk is defined in terms of the market beta. Figure 6.9 summarizes returns for stocks in 10 market value classes for the period from 1927 to 2010.

The size of the small firm premium, while it has varied across time, has been generally positive. It was highest during the 1970s and early 1980s and lowest during the 1990s before returning in the first half of the last decade. The persistence of this premium has led to several possible explanations.

1. The transaction costs of investing in small stocks are significantly higher than the transaction costs of investing in larger stocks, and the premiums are estimated prior to these costs. While this is generally true, the differential transaction costs are unlikely to explain the magnitude of the premium across time, and are likely to become even less critical for longer investment horizons. The difficulties of replicating the small firm premiums that are observed in the studies in real time are illustrated in Figure 6.10, which compares the returns on a hypothetical small firm portfolio (CRSP Small Stocks) with the actual returns on a small firm mutual fund (DFA Small Stock Fund), which passively invests in small stocks.
2. The capital asset pricing model may not be the right model for risk, and betas underestimate the true risk of small stocks. Thus, the small firm premium is really a measure of the failure of beta to capture risk. The additional risk associated with small stocks may come from several sources. First, the estimation risk associated with estimates of beta for small firms is much greater than the estimation risk associated with beta estimates for larger firms. The small firm premium may be a reward for this additional estimation risk. Second, there may be additional risk in investing in small stocks because far less information is available on these stocks. In fact, studies indicate that stocks that are neglected by analysts and institutional investors earn an excess return that parallels the small firm premium.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/88a490c0d98623fa115ec8fd7bd59e3a01b695820a0d59657eee87ffa8e8016d.jpg)
FIGURE 6.9 Annual Returns by Size Class, 1927 to 1983

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/5595f2a692bd47bc9a03a2a531d99e20b128f3675917cd4a2bb700e9426a2e40.jpg)
FIGURE 6.10 Returns on CRSP Small Stocks versus DFA Small Stock Fund

There is evidence of a small firm premium in markets outside the United States as well. Dimson and Marsh (1986) examined stocks in the United Kingdom from 1955 to 1984 and found that the annual returns on small stocks exceeded those on large stocks by 6 percent annually over the period. Chan, Hamao, and Lakonishok (1991) report a small firm premium of about 5 percent for Japanese stocks between 1971 and 1988.

Price-Earnings Ratios Investors have long argued that stocks with low price-earnings ratios are more likely to be undervalued and earn excess returns. For instance, Benjamin Graham, in his investment classic The Intelligent Investor,[11] used low price-earnings ratios as a screen for finding undervalued stocks. Studies [Basu (1977); Basu (1983)] that have looked at the relationship between PE ratios and excess returns confirm these priors. Figure 6.11 summarizes annual returns by PE ratio classes for stocks from 1952 to 2010. Firms in the lowest PE ratio class earned an average return of 18.9 percent during the period, while firms in the highest PE ratio class earned an average return of only 11.4 percent.

The excess returns earned by low PE ratio stocks also persist in other international markets. Table 6.3 summarizes the results of studies looking at this phenomenon in markets outside the United States.

The excess returns earned by low price-earnings ratio stocks are difficult to justify using a variation of the argument used for small stocks (i.e., that the risk of low PE ratios stocks is understated in the CAPM). Low PE ratio stocks generally are characterized by low growth, large size, and stable businesses, all of which should work toward reducing their risk rather than increasing it. The only explanation that can be given for this phenomenon, which is consistent with an efficient market, is that low PE ratio stocks generate large dividend yields, which would have created a larger tax burden because dividends are taxed at higher rates.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/8068e897e19e10c2373891abd696e1880ade76a3bc2d64f5531fb6bc7d2e406f.jpg)
FIGURE 6.11 PE Ratios and Stock Returns, 1952 to 2010

TABLE 6.3 Excess Returns on Low PE Ratio Stocks by Country, 1989-1994

<table><tr><td>Country</td><td>Annual Premium Earned by Lowest-PE Stocks (Bottom Quintile)</td></tr><tr><td>Australia</td><td>3.03\%</td></tr><tr><td>France</td><td>6.40\%</td></tr><tr><td>Germany</td><td>1.06\%</td></tr><tr><td>Hong Kong</td><td>6.60\%</td></tr><tr><td>Italy</td><td>14.16\%</td></tr><tr><td>Japan</td><td>7.30\%</td></tr><tr><td>Switzerland</td><td>9.02\%</td></tr><tr><td>United Kingdom</td><td>2.40\%</td></tr></table>

Annual premium: Premium earned over an index of equally weighted stocks in that market between January 1, 1989, and December 31, 1994. These numbers were obtained from a Merrill Lynch Survey of Proprietary Indices.

Price-Book Value Ratios Another statistic that is widely used by investors in investment strategy is price-book value ratios. A low price-book value ratio has been considered a reliable indicator of undervaluation in firms. In studies that parallel those done on price-earnings ratios, the relationship between returns and price-book value ratios has been examined. The consistent finding from these studies is that there is a negative relationship between returns and price-book value ratios—low price-book value ratio stocks earn higher returns than high price-book value ratio stocks.

Rosenberg, Reid, and Lanstein (1985) find that the average returns on U.S. stocks are positively related to the ratio of a firm's book value to market value. Between 1973 and 1984, the strategy of picking stocks with high book-price ratios (low price-book values) yielded an excess return of 36 basis points a month. Fama and French (1992), in examining the cross section of expected stock returns between 1963 and 1990, established that the positive relationship between book-to-price ratios and average returns persists in both the univariate and multivariate tests, and is even stronger than the size effect in explaining returns. When they classified firms on the basis of book-to-price ratios into 12 portfolios, firms in the lowest book-to-price (highest price-book) class earned an average monthly return of 0.30 percent, while firms in the highest book-to-price (lowest price-book) class earned an average monthly return of 1.83 percent for the 1963-1990 period.

Chan, Hamao, and Lakonishok (1991) find that the book-to-market ratio has a strong role in explaining the cross section of average returns on Japanese stocks. Capaul, Rowley, and Sharpe (1993) extend the analysis of price-book value ratios across other international markets, and conclude that value stocks (i.e., stocks with low price-book value ratios) earned excess returns in every market that they analyzed between 1981 and 1992. Their annualized estimates of the return differential earned by stocks with low price-book value ratios, over the market index, were:

<table><tr><td>Country</td><td>Added Return to Low Price-Book Value Portfolio</td></tr><tr><td>France</td><td>3.26\%</td></tr><tr><td>Germany</td><td>1.39\%</td></tr><tr><td>Switzerland</td><td>1.17\%</td></tr><tr><td>United Kingdom</td><td>1.09\%</td></tr><tr><td>Japan</td><td>3.43\%</td></tr><tr><td>United States</td><td>1.06\%</td></tr><tr><td>Europe</td><td>1.30\%</td></tr><tr><td>Global</td><td>1.88\%</td></tr></table>

A caveat is in order. Fama and French pointed out that low price-book value ratios may operate as a measure of risk, since firms with prices well below book value are more likely to be in trouble and go out of business. Investors therefore have to evaluate for themselves whether the additional returns made by such firms justify the additional risk taken on by investing in them.

# Temporal Anomalies

There are a number of peculiarities in return differences across calendar time that not only are difficult to rationalize but are also suggestive of inefficiencies. Furthermore, some of these temporal anomalies are related to the small firm effect described in the previous section.

January Effect Studies of returns in the United States and other major financial markets [Roll (1983); Haugen and Lakonishok (1988)] consistently reveal strong differences in return behavior across the months of the year. Figure 6.12 reports average returns by months of the year from 1926 to 1983. Returns in January are significantly higher than returns in any other month of the year. This phenomenon is called the year-end or January effect, and it can be traced to the first two weeks in January.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/eeb7f648df5fa2a0a15f2bfc7ee8e8dc3f31c0ffcb6862c99f693af34ec0f92f.jpg)
FIGURE 6.12 Returns by Month of the Year: U.S. stocks from 1927 to 2010


The relationship between the January effect and the small firm effect [(Keum (1983) and Reinganum (1983)] adds to the complexity of this phenomenon. The January effect is much more accentuated for small firms than for larger firms, and roughly half of the small firm premium described in the prior section is earned in the first two weeks of January. Figure 6.13 graphs returns in January by size and risk class for data from 1935 to 1986.

A number of explanations have been advanced for the January effect, but few hold up to serious scrutiny. Reinganum suggested that there is tax loss selling by investors at the end of the year on stocks that have lost money to capture the capital gain, driving prices down, presumably below true value, in December, and a buying back of the same stocks in January,[12] resulting in the high returns. The fact that the January effect is accentuated for stocks that have done worse over the prior year is offered as evidence for this explanation. There are several pieces of evidence that contradict it, though. First, there are countries, like Australia, that have a different tax year but continue to have a January effect. Second, the January effect is no greater, on average, in years following bad years for the stock market than in other years.

A second rationale is that the January effect is related to institutional trading behavior around the turn of the years. It has been noted, for instance, that the ratio of buys to sells for institutions drops significantly below average in the days before the turn of the year and picks up to above average in the months that follow. This is illustrated in Figure 6.14. It is argued that the absence of institutional buying pushes down prices in the days before the turn of the year and pushes up prices in the days after.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/8ab44c22ac7bf4ef7833989b7ab28d9073c57c82effe4cd9ce3c5ed09a3fc573.jpg)
FIGURE 6.13 Returns in January by Size and Risk Class, 1935-1986 Source: Ritter and Chopra (1989).


The universality of the January effect is illustrated in Figure 6.15, which examines returns in January versus the other months of the year in several major financial markets, and finds strong evidence of a January effect in every market [Haugen and Lakonishok (1988); Gultekin and Gultekin (1983)].

Weekend Effect The weekend effect is another return phenomenon that has persisted over extraordinarily long periods and over a number of international markets. It refers to the differences in returns between Mondays and other days of the week. The significance of the return difference is brought out in Figure 6.16, which graphs returns by days of the week from 1962 to 1978 [Gibbons and Hess (1981)].

The returns on Mondays are significantly negative, whereas the returns on every other day of the trading week are not. There are a number of other findings on the Monday effect that have fleshed this out. First, the Monday effect is really a weekend effect since the bulk of the negative returns is manifested in the Friday close to Monday open returns. The intraday returns on Monday are not the culprits in creating the negative returns. Second, the Monday effect is worse for small stocks than for larger stocks. Third, the Monday effect is no worse following three-day weekends than following two-day weekends.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/66ac749a0b9e12bc033287f15aae09effc2111bf8f6d44b8a6bdc5634312c351.jpg)
FIGURE 6.14 Institutional Buying/Selling around Year-End


There are some who have argued that the weekend effect is the result of bad news being revealed after the close of trading on Friday and during the weekend. They point to Figure 6.7, which reveals that more negative earnings reports are revealed after close of trading on Friday. Even if this were a widespread phenomenon, the return behavior would be inconsistent with a rational market, since rational investors would build the expectation of the bad news over the weekend into the price before the weekend, leading to an elimination of the weekend effect.

The weekend effect is fairly strong in most major international markets, as shown in Figure 6.17. The presence of a strong weekend effect in Japan, which allowed Saturday trading for a portion of the period studied here, indicates that there might be a more direct reason for negative returns on Mondays than bad information over the weekend.

As a final note, the negative returns on Mondays cannot be attributed to just the absence of trading over the weekend. The returns on days following trading holidays in general are characterized by positive, not negative, returns. Figure 6.18 summarizes returns on trading days following major holidays and confirms this pattern.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/31d4aac72be25726a73681bffeda0ff0cccf0b641f48be043df7522ffd805404.jpg)
FIGURE 6.15 Returns in January versus Other Months—Major Financial Markets Source: Gultekin and Gultekin (1983).

# EVIDENCE ON INSiders AND INVESTMENT PROFESSIONALS

There is a sense that insiders, analysts, and portfolio managers must possess an advantage over the average investors in the market and be able to convert this advantage into excess returns. The evidence on the performance of these investors is actually surprisingly mixed.

# Insider Trading

The Securities and Exchange Commission (SEC) defines an insider to be an officer or director of the firm or a major stockholder (holding more than 5 percent of the outstanding stock in the firm). Insiders are barred from trading in advance of specific information on the company and are required to file with the SEC when they buy or sell stock in the company. If it is assumed, as seems reasonable, that insiders have better information about the company and consequently better estimates of value than other investors, the decisions by insiders to buy and sell stock should affect stock prices. Figure 6.19, derived from an early study of insider trading by Jaffe (1974), examines excess returns on two groups of stock, classified on the basis of insider trades. The "buy group" includes stocks where buys exceeded sells by the biggest margin, and the "sell group" includes stocks where sells exceeded buys by the biggest margin.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/02cf45ad7087e5d636c0edf50a31dbd7eb1a0f89b90d780dc9c2a6b7e2415574.jpg)
FIGURE 6.16 Average Daily Returns by Day of the Week, 1962-1978 Source: Gibbons and Hess (1981).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/76f59594b0956b1e55f2953454ec3489c0adaa86b31af90d97fe6269d4bf1f64.jpg)
FIGURE 6.17 Weekend Effect in International Markets

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/7f4ad778ba45b7e5f1cae305ff2e700bbf0bf08b960878d5ade8cd4f156ddd7e.jpg)
FIGURE 6.18 A Holiday Effect? Average Market Returns on Trading Days Following Holidays


While it seems like the buy group does significantly better than the sell group in this study, advances in information technology have made this information on insider trading available to more and more investors. A more recent study [Seyhun (1998)] of insider trading examines excess returns around both the date the insiders report to the SEC and the date that information becomes available to investors in the official summary. Figure 6.20 presents the contrast between the two event dates.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/fa958a597bf7b4538b21f378800f7f7599fb1a995c3f9c681c8abdc31d04f0d4.jpg)
FIGURE 6.19 Cumulative Returns Following Insider Trading: Buy versus Sell Group Source: Jaffe (1974).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/9a73fe2e1e6cb6d099b039dfae05879b21a250e71cddf577ea360d51773d66f2.jpg)
FIGURE 6.20 Abnormal Returns around Reporting Day versus Official Summary Availability Day

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/ce6ec2ca6566811943859349b607c542764a54682dad9a037cfb57ec5c694af4.jpg)

Given the opportunity to buy on the date the insider reports to the SEC, investors could have marginal excess returns, but these returns diminish and become statistically insignificant if investors are forced to wait until the official summary date.

None of these studies examine the question of whether insiders themselves make excess returns. The reporting process, as set up now by the SEC, is biased toward legal and less profitable trades and away from illegal and more profitable trades. Though direct evidence cannot be offered for this proposition, insiders trading illegally on private information must make excess returns.

# Analyst Recommendations

Analysts clearly hold a privileged position in the market for information, operating at the nexus of private and public information. Using both types of information, analysts issue buy and sell recommendations to their clients, who trade on this basis.

While both buy and sell recommendations affect stock prices, sell recommendations affect prices much more adversely than buy recommendations affect them positively. Interestingly, Womack (1996) documents that the price effect of buy recommendations tends to be immediate and there is no evidence of price drifts after the announcement, whereas prices continue to trend down after sell recommendations. Figure 6.21 graphs his findings. Stock prices increase by about 3 percent on buy recommendations, whereas they drop by about 4 percent on sell recommendations at the time of the recommendations (three days around reports). In the six months following, prices decline an additional 5 percent for sell recommendations, while leveling off for buy recommendations.

Though analysts provide a valuable service in collecting private information, or maybe because they do, there is a negative relationship in the cross section between returns earned by stocks and the number of analysts following the stock. The same kind of relationship exists between another proxy for interest—institutional ownership—and returns. This evidence [Arbel and Strebel (1983)] suggests that neglected stocks—those followed by few analysts and not held widely by institutions—earn higher returns than widely followed and held stocks.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/be350b1660b05635da3db24ed5c947cabe86c40a43c1b22797934cbe164fb338.jpg)
FIGURE 6.21 Market Reaction to Recommendations, 1989 to 1990 Source: Womack (1996).

# Money Managers

Professional money managers operate as the experts in the field of investments. They are supposed to be better informed, have lower transaction costs, and be better investors overall than smaller investors. The earliest study of mutual funds by Jensen (1968) suggested that this supposition might not hold in practice. His findings, summarized in Figure 6.22 as excess returns on mutual funds, were that the average portfolio manager actually underperformed the market between 1955 and 1964.

These results have been replicated with mild variations in their conclusions. In the studies that are most favorable for professional money managers, they break even against the market after adjusting for transaction costs, and in those that are least favorable they underperform the market even before adjusting for transaction costs.

The results, when categorized on a number of different bases, do not offer much solace. For instance, Figure 6.23 shows excess returns from 1983 to 1990 and the percentage of money managers beating the market, categorized by investment style. Money managers in every investment style underperform the market index and updated studies since have yielded similar findings.

Figure 6.24 looks at the payoff to active portfolio management by measuring the added value from trading actively during the course of the year, and finds that returns drop between 0.5 percent and 1.5 percent a year as a consequence.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/00a273a4890c57b0ad5cf943e45b7b2636d901514e3016b17b97754ffef67b9a.jpg)
FIGURE 6.22 Mutual Fund Performance, 1955 to 1964—the Jensen Study Source: Jensen (1968).

Finally, we find no evidence of continuity in performance. It classified money managers into quartiles and examined the probabilities of movement from one quartile to another each year from 1983 to 1990. The results are summarized in Table 6.4.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/9129475daa56eb2745d364bb06ffc971e42db2c3e945b418d496acc2f3f4df0b.jpg)
FIGURE 6.23 Performance of Equity Funds, 1983 to 1990

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/8f5294138738efc7d8b7c3e323c0d38816f16478a8c4832c44a82d9f08672b3e.jpg)
FIGURE 6.24 The Payoff to Active Money Management: Equity Funds Note: This chart measures the difference between actual return on equity funds and return on hypothetical portfolio frozen at beginning of period.

TABLE 6.4 Probabilities of Transition from One Quartile to Another

<table><tr><td rowspan="2">Ranking This Period</td><td colspan="4">Ranking Next Period</td></tr><tr><td>1</td><td>2</td><td>3</td><td>4</td></tr><tr><td>1</td><td>26\%</td><td>24\%</td><td>23\%</td><td>27\%</td></tr><tr><td>2</td><td>20\%</td><td>26\%</td><td>29\%</td><td>25\%</td></tr><tr><td>3</td><td>22\%</td><td>28\%</td><td>26\%</td><td>24\%</td></tr><tr><td>4</td><td>32\%</td><td>22\%</td><td>22\%</td><td>24\%</td></tr></table>

Table 6.4 indicates that a money manager who was ranked in the first quartile in a period had a 26 percent chance of being ranked in the first quartile in the next period and a 27 percent chance of being ranked in the bottom quartile. There is some evidence of reversal in the portfolio managers in the lowest quartile, though some of that may be a reflection of the higher-risk portfolios that they put together.

Thus, the overall evidence is that money managers collectively add little value for investors with their active investing strategies. So, is there any good news for money managers in these studies? There are some glimmers:

Hot bands phenomenon: While there is little evidence of overall continuing in mutual fund performance, there is some evidence that money managers who have performed well in the recent past are likely to outperform the market in the near future. It is unclear, however, how long this momentum lasts, before there is reversal. This evidence mirrors our earlier analysis of stock prices showing momentum over weeks and months and reversing themselves in the long term. Even this good news has to be taken with an ounce of caution, since it is possible that sheer chance and selection bias can still explain these positive runs of superior performance.


■ Skill versus luck: There is some debate as to whether the differences in returns that money managers earn over long periods can be entirely attributed to luck. Fama and French (2010) argue that when returns are measured net of costs, there is little evidence that mutual funds beat the market. However, when they look at gross returns, there is some evidence of differences in skill; they estimate that superior managers generate about  $1.25\%$  more than the average.
- Tax, liquidity, and time horizon arbitrage: A money manager with a tax rate much lower than that of other money managers, lower need for liquidity or lower transactions costs than other investors, and/or a longer time horizon may be able to exploit these differences to get investments at bargain prices and earn excess returns. Although there is anecdotal evidence that such investors exist, many of them are undone by their own success; as they attract more money, they lose their focus and their competitive edge.

The bottom line: It is possible to beat the market, but it is hard work. There are no magic bullets or simple formulae for investment success. The money managers who beat the market consistently over time tend to be few and far between. Although they may adopt different strategies and have different views on markets, they share some common characteristics. They have well thought out investment philosophies, play to their strengths, and stay disciplined.

# CONCLUSION

The question of whether markets are efficient will always be a provocative one, given the implications that efficient markets have for investment management and research. If an efficient market is defined as one where the market price is an unbiased estimate of the true value, it is quite clear that some markets will always be more efficient than others and that markets will always be more efficient to some investors than to others. The capacity of a market to correct inefficiencies quickly will depend, in part, on the ease of trading, the transaction costs, and the vigilance of profit-seeking investors in that market.

While market efficiency can be tested in a number of different ways, the two most widely used tests to test efficiency are event studies, which examine market reactions to information events, and portfolio studies, which evaluate the returns of portfolios created on the basis of observable characteristics. It does make sense to be vigilant, because bias can enter these studies, intentionally or otherwise, in a number of different ways and can lead to unwarranted conclusions and, worse still, wasteful investment strategies.

There is substantial evidence of irregularities in market behavior related to systematic factors such as size, price-earnings ratios, and price-book value ratios, as well as to time—the January and the weekend effects. While these irregularities may be inefficiencies, there is also the sobering evidence that professional money

# MARKET INEFFICIENCIES AND MONEY MANAGER PERFORMANCE

The evidence on markets is contradictory. On the one hand, there seem to be numerous patterns in stock prices—stock prices reverse course in the long term and returns are higher in January—and evidence of market anomalies—small-market-cap firms with low price-to-book and price-to-earnings ratios seem to handily beat the market. On the other hand, there seems to be little evidence of money managers being able to exploit these findings to beat the market.

There are a number of possible explanations. The most benign one is that the inefficiencies show up mostly in hypothetical studies and that the transaction cost and execution problems associated with converting these inefficiencies into portfolios overwhelm the excess returns. A second possible explanation is that the studies generally look at the long term; many are over 20 to 50 years. Over shorter periods, there is substantially more uncertainty about whether small stocks will outperform large stocks and whether buying losers will generate excess returns. There are no investment strategies that are sure bets for short periods. Pradhuman (2000) illustrates this phenomenon by noting that small-cap stocks have underperformed large-cap stocks in roughly one out of every four years in the past 50 years. Bernstein (1998) notes that while value investing (buying low PE and low price-to-book value stocks) may earn excess returns over long periods, growth investing has outperformed value investing over many five-year periods during the past three decades. A third explanation is that portfolio managers do not consistently follow any one strategy but jump from one strategy to another, both increasing their expenses and reducing the likelihood that the strategy can generate excess returns in the long term.

managers, who are in a position to exploit these inefficiencies, have a very difficult time consistently beating financial markets. Read together, the persistence of the irregularities and the inability of money managers to beat the market are testimony to the gap between empirical tests on paper and real-world money management in some cases, and the failure of the models of risk and return in others.

# QUESTIONS AND SHORT PROBLEMS

In the problems following, use an equity risk premium of 5.5 percent if none is specified.

1. Which of the following is an implication of market efficiency? (There may be more than one right answer.) a. Resources are allocated among firms efficiently (i.e., put to best use).

b. No investor will do better than the market in any time period.
c. No investor will do better than the market consistently.
d. No investor will do better than the market consistently after adjusting for risk.

e. No investor will do better than the market consistently after adjusting for risk and transaction costs.
f. No group of investors will do better than the market consistently after adjusting for risk and transaction costs.
2. Suppose you are following a retailing stock that has a strong seasonal pattern to sales. Would you expect to see a seasonal pattern in the stock price as well?
3. Tests of market efficiency are often referred to as joint tests of two hypotheses—the hypothesis that the market is efficient and an expected returns model. Explain. Is it ever possible to test market efficiency alone (i.e., without jointly testing an asset pricing model)?
4. You are in a violent argument with a chartist. He claims that you are violating the fundamental laws of economics by trying to find intrinsic value. "Price is determined by demand and supply, not by some intrinsic value." Is finding an intrinsic value inconsistent with demand and supply?
5. You are testing the effect of merger announcements on stock prices. (This is an event study.) Your procedure goes through the following steps:

Step 1: You choose the 20 biggest mergers of the year.
Step 2: You isolate the date the merger became effective as the key day around which you will examine the data.
Step 3: You look at the returns for the five days after the effective merger date.

By looking at these returns (0.13\%) you conclude that you could not have made money on merger announcements. Are there any flaws that you can detect in this test? How would you correct for them? Can you devise a stronger test?

6. In an efficient market, the market price is defined to be an "unbiased estimate" of the true value. This implies that (choose one): a. The market price is always equal to true value.

b. The market price has nothing to do with true value.
c. Markets make mistakes about true value, and investors can exploit these mistakes to make money.
d. Market prices contain errors, but the errors are random and therefore cannot be exploited by investors.
e. No one can beat the market.

7. Evaluate whether the following actions are likely to increase stock market efficiency, decrease it, or leave it unchanged, and explain why.

a. The government imposes a transaction tax of  $1\%$  on all stock transactions. Increase efficiency \_\_\_\_\_\_ Decrease efficiency \_\_\_\_\_\_ Leave unchanged b. The securities exchange regulators impose a restriction on all short sales to prevent rampant speculation.

Increase efficiency Decrease efficiency Leave unchanged c. An options market, trading call and put options, is opened up, with options traded on many of the stocks listed on the exchange.


Increase efficiency Decrease efficiency Leave unchanged d. The stock market removes all restrictions on foreign investors acquiring and holding stock in companies.


Increase efficiency Decrease efficiency Leave unchanged

8. The following is a graph of cumulative abnormal returns around the announcement of asset divestitures by major corporations.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/dbb4ce0c3ac6e9e02a4ddb2fe8b3fb53a593e9673b60487b5168aa0e5cbccd7d.jpg)

How best would you explain the: a. Market behavior before the announcement?

b. Market reaction to the announcement?
c. Market reaction after the announcement?

9. What is the phenomenon of the size effect in stock performance? How does it relate to the turn-of-the-year effect? Can you suggest any good reasons why small stocks, after adjusting for beta, still do better than large stocks? What strategy would you follow to exploit this anomaly? What factors do you have to keep in mind?

10. A study examining market reactions to earnings surprises found that prices tend to drift after earnings surprises. What does this tell you about the market's capacity to learn from events and new information? What cross-sectional differences would you expect to find in this learning behavior? (Would you expect to see a greater price drift in some types of firms than in others? Why?) How would you try to exploit this anomaly? What possible costs would you have to keep in mind?

11. One explanation of the turn-of-the-year or January effect has to do with sales and purchases related to the tax year.

a. Present the tax effect hypothesis.
b. Studies have shown that the January effect occurs internationally, even in countries where the tax year does not start in January. Speculate on a good reason for this.

12. The following are the expected price appreciation and dividend yield components of returns on two portfolios—a high dividend yield portfolio and a low dividend yield portfolio.

<table><tr><td>Portfolio</td><td>Expected Price Appreciation</td><td>Expected Dividend Yield</td></tr><tr><td>High yield</td><td>9\%</td><td>5\%</td></tr><tr><td>Low yield</td><td>12\%</td><td>1\%</td></tr></table>

You are a taxable investor who faces a tax rate of  $40\%$  on dividends. What would your tax rate on capital gains need to be for you to be indifferent between these two portfolios?

13. Answer true or false to the following questions: a. Low price-earnings stocks, on average, earn returns in excess of expectations, while high price-earnings stocks earn less than expected. This is primarily because lower PE ratio stocks have lower risk.


True False b. The small firm effect, which refers the positive excess returns earned, on average, by small firms, is primarily caused by a few small firms that make very high positive returns.


True False c. Investors generally cannot make money on analyst recommendations, because stock prices are not affected by these recommendations.


True False

14. You are examining the performance of two mutual funds. AD Value Fund has been in existence since January 1, 1988, and invests primarily in stocks with low price-earnings ratios and high dividend yields. AD Growth Fund has also been in existence since January 1, 1988, but it invests primarily in high-growth stocks, with high PE ratios and low or no dividends. The performance of these funds over the past five years is summarized as follows:

<table><tr><td></td><td colspan="3">Average from 1988 to 1992</td></tr><tr><td></td><td>Price Appreciation</td><td>Dividend Yield</td><td>Beta</td></tr><tr><td>NYSE Composite</td><td>13\%</td><td>3\%</td><td>1.0</td></tr><tr><td>AD Value</td><td>11\%</td><td>5\%</td><td>0.8</td></tr><tr><td>AD Growth</td><td>15\%</td><td>1\%</td><td>1.2</td></tr></table>

The average risk-free rate during the period was  $6\%$ . The current risk-free rate is  $3\%$ .

a. How well or badly did these funds perform after adjusting for risk?

b. Assume that the front-end load on each of these funds is  $5\%$  (i.e., if you put \$1,000 in each of these funds today, you would only be investing \$ 950 after the initial commission). Assume also that the excess returns you have calculated in part (a) will continue into the future and that you choose to invest in the fund that outperformed the market. How many years would you have to hold this fund to break even?


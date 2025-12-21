---
title: An Introduction to Credit Risk Models
parent_directory: Encyclopedia of Financial Models
formatted: 2025-12-21 09:15:00 AM
formatter_model: grok-code-fast-1
cli-tool: opencode
primary_tags:
  - credit risk models
secondary_tags:
  - default probabilities
  - credit ratings
  - structural models
  - reduced form models
  - merton model
  - valuation pricing hedging
  - logistic regression
  - term structure
  - empirical evidence
cssclasses: academia
---

# An Introduction to Credit Risk Models

DONALD R. VAN DEVENTER, PhD

Chairman and Chief Executive Officer, Kamakura Corporation

Abstract: Credit risk technology has evolved with advances in computer science and information technology. Traditional credit ratings date back to 1860, an era when the cost of collecting and analyzing corporate credit information was high. The commercial advantages of a central provider of credit risk analysis were high. With the advent of better computer technology and databases of corporate financial information and stock prices, quantitative approaches to credit risk assessment have become more popular and increasingly accurate. Credit scoring is a quantitative approach to retail credit assessment, but, in the corporate world, more and more credit analysts prefer a default probability with an explicit maturity to a "credit rating" or "credit score."

This entry introduces the topic of credit risk modeling by first summarizing the key objectives of credit risk modeling. We then discuss ratings and credit scores, contrasting them with modern default probability technology. Next, we discuss why valuation, pricing, and hedging of credit risky instruments are even more important than knowing the default probability of the issuer of the security. We review some empirical data on the consistency of movements between common stock prices and credit spreads with some surprising results. Finally, we compare the accuracy of ratings, the Merton model of risky debt, and reduced form credit models.

## KEY OBJECTIVES IN CREDIT RISK MODELING

In short, the objective of the credit risk modeling process is to provide an investor with practical tools to "buy low/sell high." Robert Merton, in a 2002 story retold by van Deventer, Imai, and Mesler (2004), explained how Wall Street has worked for years to get investors to focus on expected returns, ignoring risk, in order to get investors to move into higher risk investments. In a similar vein, investment banks have tried to get potential investors in collateralized debt obligations (CDOs) to focus on "expected loss" instead of market value and the volatility of that market value on a CDO. The result, according to the Global Stability Report of the International Monetary Fund, was an estimated 945 billion in global credit losses during the credit crisis that began in earnest in 2007.[2]


This means that we need more than a default probability. The default probability provides some help in the initial yes/no decision on a new transaction, but it is not enough information to make a well-informed yes/no, buy/sell decision, as we discuss below. Once the transaction is done, we have a number of very critical objectives from the credit risk modeling process. We need to know the value of the portfolio, the risk of the portfolio (as measured most importantly by the random variation in its value), and the proper hedge of the risk if we deem the risk to be beyond our risk appetite. Indeed, the best single sentence test of a credit model is "What is the hedge?" If one cannot answer this question, the credit modeling effort falls far short of normal risk management standards. It is inconceivable that an interest rate risk manager could not answer this question. Why should we expect any less from a credit risk manager, who probably has more risk in his area of responsibility than almost anyone else? Indeed, stress testing with respect to macroeconomic factors is now standard under proposals from the European Central Bank and under the U.S. programs titled "Supervisory Capital Assessment Program" and "Comprehensive Capital Analysis and Review." The latter programs, applied to the 19 largest financial institutions in the United States, focused on macro factors like home prices, real gross domestic product growth, and unemployment.


## RATINGS AND "CREDIT SCORES" VERSUS DEFAULT PROBABILITIES

Rating agencies have played a major role in fixed income markets around the world since the origins of Standard & Poor's in 1860. Even the "rating agencies" of consumer debt, the credit bureaus, play prominently in the banking markets of most industrialized countries. Why do financial institutions use ratings and credit scores instead of default probabilities? As a former banker myself, I confess that the embarrassing answer is "There is no good reason" to use a rating or a credit score as long as the default probability modeling effort is a sophisticated one and the inputs to that model are complete.

Ratings have a lot in common with interest accrual based on 360 days in a year. Both ratings and this interest accrual convention date from an era that predates calculators and modern default probability technology. Why use a debt rating updated every 1-2 years when one can literally have the full term structure of default probabilities on every public company updated daily or in real time? In the past, there were good reasons for the reliance on ratings:


- Default probability formulas were not disclosed, so proper corporate governance would not allow reliance on those default probabilities.
- Default probability model accuracy was either not disclosed or disclosed in such a way that weak performance was disguised by selecting small sectors of the covered universe for testing.
- Default probability models relied on old technology, like the Merton model of risky debt and its variants, that has long been recognized as out of date.3
- Default probability models implausibly relied on a single input (the unobservable value of company assets), ignoring other obvious determinants of credit risk like cash balances, cash flow coverage, the charge card balance of the CEO of a small business, or the number of days past due on a retail credit.

With modern credit technology, none of these reasons are currently valid because there is a rich, modern credit technology available with full disclosure and an unconstrained ability to take useful explanatory variables. In this vein, ratings suffer from a number of comparisons to the modern credit model:


- Ratings are discrete with a limited number of grades. There are 21 Standard & Poor's ratings grades, for example, running from AAA to D. Default probabilities are continuous and run (or should run) from 0 to  $100\%$ .
- Ratings are updated very infrequently and there are obvious barriers that provoke even later than usual response from the rating agencies, like the 2004 downgrade from AAA to AA- for Merck, a full three weeks after the withdrawal of its major drug Vioxx crushed the company's stock price. Another example is General Electric, first rated AAA in 1956, which was not downgraded until March 2009, a full four months after General Electric was forced to borrow under the Federal Reserve's Commercial Paper Funding Facility.4 Default probabilities can adjust in real time if done right.


- Ratings have an ambiguous maturity, which we discuss in the next section. The full term structure of default probabilities is available and the obvious impact of the business cycle is observable: The full default probability term structure rises and falls through the business cycle, with short-term default probabilities rising and falling more dramatically than long-term default probabilities. Figure 1 illustrates this cyclical rise and fall during the credit crisis of 2007-2011 for Bank of America Corporation and Citigroup, two of the largest U.S. bank holding companies, using the reduced form model default probabilities discussed below and provided by Kamakura Corporation.

The cyclical rise and fall of default probabilities for both banks are very clear and show the impact of the credit crisis, which was at its height in 2007-2009. We take a longer-term view from 1990 to 2006 below.

Figure 2 shows clearly the joint rise in default probabilities in 1990-1991, a mini recession in 1994-1995, and the impact of the Russian debt crisis and high-tech crash in 1998-2002. By way of contrast, Standard & Poor's only changed its ratings on Bank of America twice in the 1995-2006 period, once in 1996 and once in 2005.

What about consumer and small business "credit scores"? Like ratings and the interest accrual method mentioned above, these date from an era when there was limited understanding of credit risk in the financial community. Vendors of credit scores had two objectives in marketing a credit risk product: to make it simple enough for any banker to understand and to avoid angering consumers who might later learn how they are ranked under the credit measure. The latter concern is still, ironically, the best reason for the use of credit scores instead of default probabilities today on the retail side. From a banker's perspective, though, the score hides information that is known to the credit score vendor. The credit scoring vendor is actually using the statistical techniques we describe below to derive a default probability for the consumer. They then hide it by scaling the default probability to run from some arbitrary range like 600 to 1,000 with 1,000 being best. One scaling that does this, for example, is the formula:

Credit score  $= 1,000 - 4$  (Consumer 1-year default probability)

This scaling formula hides the default probability that Basel II requires and modern bankers are forced to "undo" by analyzing the mapping of credit scores to defaults. This just wastes every one's time for no good reason other than the desire to avoid angering retail borrowers with a cold-hearted default probability assessment.

The only time a rating or credit score can outperform a modern credit model is if there are variables missing in the credit model. Heading into the credit crisis as of December 31, 2006, for example, Citigroup had a roughly 50 billion direct and indirect exposure to super senior tranches of collateralized debt obligations, but these exposures were not reported in a quantitative form and therefore could not be used in a quantitative credit model. A judgmental rating in this case would be able to adjust for this risk if proper disclosure were made to the rating agencies. This, however, is a rare case and in general a first-class modeling effort will be consistently superior.[6]


## WHAT "THROUGH THE CYCLE" REALLY MEANS

Financial market participants often comment that default probabilities span a specific period of time (30 days, 1 year, 5 years) while ratings are "through the cycle" ratings. What does "through the cycle" really mean?

Figure 3 provides the answer. It shows the term structure of default probabilities out for 10 years for Morgan Stanley on October 15, 2008, one month after the collapse of Lehman Brothers, and July 7, 2011. The July 7, 2011 term structure was quite low because business conditions at the time were excellent. Looking at the right-hand side of the curve, we can see that both default probability curves are converging and, if the graph is continued to a long enough maturity, both will hit about 42-50 basis points for a very long-term default probability.

This is consistent with the "long-run" default experience for both Morgan Stanley's 2011 rating of A. Over the 15 years after being rated A,  $2.77\%$  of those formerly rated A defaulted. This is the same as a constant default rate over those 15 years of 18.7 basis points, a rate double the 8 basis point default rate in just the first one year after being rated A. Morgan Stanley is a higher than average risk for an A-rated company as it was forced to borrow as much as 61.3 billion from the Federal Reserve on September 29, 2008. "Through the cycle" has a very simple meaning—it is a very long-term default probability that is totally consistent with the term structure of default probabilities of a well-specified model. What is the term? The major rating agencies are currently reporting about 30 years of historical experience, so the answer is 30 years.

## VALUATION, PRICING, AND HEDGING

Earlier in this entry, we said the best one-sentence test of a credit model is "what is the hedge?" That statement is no exaggeration, because in order to be able to specify the hedge, we need to be able to value the risky credit (or portfolio of risky credits). If we can value the credits, we can price them as well. If we can value them, we can stress test that valuation as macroeconomic factors driving default probabilities shift. The pervasive impact of macroeconomic factors on default probabilities Figure 1 shows for Bank of America and Citigroup makes obvious what is documented by van Deventer and Imai (2003). The business cycle drives default risk (and valuations) up and down. With this valuation capability, we need to know the true value of everything we own and everything Wall Street wants us to buy or sell. We can see that the structured product offered at 103 is in reality only worth 98. This capability is essential to meet modern risk management standards. Just as important, it is critical insurance against becoming yet another victim of Wall Street.


## EMPIRICAL DATA ON CREDIT SPREADS AND COMMON STOCK PRICES

Before exploring the nature and performance of modern credit models, it is useful to look at the relationship between stock prices and credit spreads. Van Deventer and Imai (2003) print in its entirety a useful data series of new issue credit spreads compiled over a nine-year period beginning in the mid-1980s by First Interstate Bancorp. First Interstate at the time was the seventh largest bank holding company in the United States, one of the largest debt issuers in the United States, and a company whose rating ranged from AA to BB during the course of the data series. The credit spreads were the average credit spread quoted for a new issue of noncall debt of 100 million by six investment banking firms, with the high and low quotations thrown out. Data were collected weekly for 427 weeks. No yield curve smoothing or secondary market bond prices were necessary to get the spreads, as the spreads themselves were the pricing quotation. These data, in the author's judgment, are much more reliable than the average credit default swap spread available since 2003 because of the extremely low volumes of credit default swap transactions reported by the Depository Trust and Clearing Corporation on www.dttcc.com.

Jarrow and van Deventer (1998, 1999) first used these data to test the implications of credit models. They reported the following findings on the relationship between credit spreads and equity prices:


- Stock prices and credit spreads moved in opposite directions during the week 172-184 times (depending on the maturity of the credit spread) of the 427 observations.
- Stock prices and credit spreads were both unchanged in only 1-3 observations.
- In total, only  $40.7\%$  to  $43.6\%$  of the observations were consistent with the Merton model (and literally any of its single factor variants) of risky debt.

This means that multiple variables are impacting credit spreads and stock prices, not the single variable (the value of company assets) that is the explanatory variable in any of the commercially available implementations of default probabilities that are Merton related. We address this issue in detail in our discussion of the Merton model and its variants in the following section. The summary data on the First Interstate stock price and credit spreads are reproduced in Table 1.

Table 1 Analysis of Changes in First Interstate Bancorp Credit Spreads Stock Prices

<table><tr><td></td><td>SPREAD 2 Years</td><td>SPREAD 3 Years</td><td>SPREAD 5 Years</td><td>SPREAD 7 Years</td><td>SPREAD 10 Years</td><td>Total</td></tr><tr><td>Total Number of Data Points</td><td>427</td><td>427</td><td>427</td><td>427</td><td>427</td><td>2135</td></tr><tr><td colspan="7">Data Points Consistent with Merton</td></tr><tr><td>Opposite Move in Stock Price and Spreads</td><td>179</td><td>178</td><td>183</td><td>172</td><td>184</td><td>896</td></tr><tr><td>Stock Price and Credit Spreads Unchanged</td><td>3</td><td>3</td><td>1</td><td>2</td><td>2</td><td>11</td></tr><tr><td>Total Consistent</td><td>182</td><td>181</td><td>184</td><td>174</td><td>186</td><td>907</td></tr><tr><td colspan="7">Percent Consistent</td></tr><tr><td>With Merton Model</td><td>42.6\%</td><td>42.4\%</td><td>43.1\%</td><td>40.7\%</td><td>43.6\%</td><td>42.5\%</td></tr><tr><td>Standard Deviation</td><td>2.4\%</td><td>2.4\%</td><td>2.4\%</td><td>2.4\%</td><td>2.4\%</td><td>1.1\%</td></tr><tr><td>Standard Deviations from 100\% Consistency</td><td>-23.9</td><td>-24.1</td><td>-23.7</td><td>-24.9</td><td>-23.5</td><td>-53.8</td></tr><tr><td>Standard Deviations from 50\% Consistency</td><td>-3.1</td><td>-3.2</td><td>-2.9</td><td>-3.9</td><td>-2.7</td><td>-7.0</td></tr></table>

Source: van Deventer and Imai (2003).


Given this inconsistency of actual market movements with the strongly restrictive assumption that only one variable drives debt and equity prices, why did analysts choose the structural models of risky debt in the first place? Originally, the models were implemented on the hope (and sometimes belief) that performance must be good. Later, once the performance of the model was found to be poor, this knowledge was known only to very large financial institutions who had an extensive credit model testing regime. One very large institution, for example, told the author in 2003 that it had known for years that the most popu lar commercial implementation of the Merton model of risky debt was less accurate than the market leverage ratio in the ordinal ranking of companies by riskiness. The firm was actively using this knowledge to arbitrage market participants who believed, but had not confirmed, that the Merton model of risky debt was accurate. We report on the large body of test results that began to enter the public domain in 1998 in a later section.


As analysts began to realize there were problems with the structural models of risky debt, active attempts were made to improve the model. We present in the following paragraphs a brief listing of the types of assumptions that can be used in the structural models of risky debt.[12]

## Pure Black-Scholes/Merton Approach

The original Merton model assumes interest rates are constant and that equity is a European option on the assets of the firm. This means that bankruptcy can occur only at the maturity debt of the single debt instrument issued by the firm. Lando (2004, p. 14) notes a very important liability of the basic Merton model as the maturity of debt gets progressively shorter: "When the value of assets is larger than the face value of debt, the yield spreads go to zero as time to maturity goes to 0 in the Merton model." This is a critical handicap in trying to use this one-period model as a complete valuation framework. If credit spreads are unrealistic, we cannot achieve accuracy in our one-sentence credit model test: What's the hedge?


We note here that allowing for various classes of debt is a very modest extension of the model. Allowing for subordinated debt does not change the probability of default. The implicit loss given default will simply be higher for the subordinated debt issue than it will for the senior debt issue.

## Merton Model with Stochastic Interest Rates

The Merton model with stochastic interest rates was published by Shimko, Tejima, and van Deventer (1993). This modest extension of the original Merton framework simply combined Merton's own model for options when interest rates are random with the structural credit risk framework. The model has the virtue of allowing two random factors (the risk-free short-term rate of interest and the value of company assets, which can have any arbitrary degree of correlation). It provides at least a partial explanation of the First Interstate results discussed above, but it shares most of the other liabilities of the basic Merton approach.

## The Merton Model with Jumps in Asset Values

One of the most straightforward ways in which to make credit spreads more realistic is to assume that there are random jumps in the value of company assets, overlaid on top of the basic Merton assumption of geometric Brownian motion (i.e., normally distributed asset returns and lognormally distributed asset values). This model produces more realistic credit spread values, but Lando (2004, p. 27) concludes, "while the jump-diffusion model is excellent for illustration and simulating the effects of jumps, the problems in estimating the model make it less attractive in practical risk management."


## Introducing Early Default in the Merton Structural Approach

In 1976, Black and Cox allowed default to occur prior to the maturity of debt if the value of company assets hits a deterministic barrier that can be a function of time. The value of equity is the equivalent of a "down and out" call option. When there are dividend payments, modeling gets much more complicated. Lando (2004, p. 33) summarizes key attributes of this modeling assumption: "While the existence of a default barrier increases the probability of default in a Black-Cox setting compared with that in a Merton setting, note that the bond holders actually take over the remaining assets when the boundary is hit and this in fact leads to higher bond prices and lower spreads."

## Other Variations on the Merton Model

Other extensions of the model summarized by Lando include


- A Merton model with continuous coupons and perpetual debt.
- Stochastic interest rates and jumps with barriers in the Merton model.
- Models of capital structure with stationary leverage ratios.

Ironically, all current commercial implementations of the Merton model for default probability estimation are minor variations on the original Merton model or extremely modest extensions of Black and Cox (1976). In short, at best 34-year-old technology is being used. Moreover, all current commercial implementations assume interest rates are constant, making failure of the "What's the hedge test" a certainty for fixed income portfolio managers, the primary users of default technology. All of the problems raised in the previous section on the First Interstate dataset remain for all current commercial implementations. That has much to do with the empirical results summarized below.


## REDUCED-FORM MODELS OF RISKY DEBT

The many problems with the major variations on the Merton approach led Jarrow and Turnbull (1995) to elaborate on a reduced form of the original Merton model. In his options model for companies where the stock price is lognormally distributed, Merton allowed for a constant instantaneous default intensity. If the default event occurred, the stock price was assumed to go to zero. Merton derived the value of options on a defaultable common stock in a constant interest rates framework. Van Deventer (2006) shows how to use this Merton "reduced form" model to imply default probabilities from observable put and call options.

Jarrow and Turnbull adopted this default intensity approach as an alternative to the Merton structural approach. They did so under the increasingly popular belief that companies' choices of capital structure vary dynamically with the credit quality of the firm, and that the assets they hold are often highly illiquid, contrary to the assumptions in the structural approach. Duffie and Singleton (1999), Jarrow (2001), and many others have dramatically increased the richness of the original Jarrow-Turnbull model to include the following features:


- Interest rates are random.
- An instantaneous default intensity is also random and driven by interest rates and one or more random macroeconomic factors.
- Bonds are traded in a less liquid market, and credit spreads have a "liquidity premium" above and beyond the loss component of the credit spread.

- Loss given default can be random and driven by macroeconomic factors as well.

Default intensities and the full term structure of default probabilities can be derived in two ways:


- By implicit estimation, from observable bond prices, credit default swap prices, or options prices or any combination of them
- By explicit estimation, using a historical default database

The first commercial implementation on a sustained basis of the latter approach was the 2002 launch of the Kamakura Risk Information Services multiple models default probability service, which includes both Merton and reduced form models benchmarked in historical default data bases. The first commercial implementation of this approach for sovereign default risk assessment was also by Kamakura Risk Information Services in 2008.

In deriving default probabilities from historical data, financial economists have converged on a hazard rate modeling procedure using logistic regression, where estimated default probabilities  $\mathrm{P}[t]$  are fitted to a historical database with both defaulting and nondefaulting observations and a list of explanatory variables  $X_{i}$ . Chava and Jarrow (2004) prove that the logistic regression is the maximum likelihood estimator when trying to predict a dependent variable that is either one (i.e., in the default case) or zero (in the "no default" case):

$$
P [ t ] = 1 / \left[ 1 + \exp \left(- \alpha - \sum_{\mathrm{i} = 1}^{\mathrm{n}} \beta_{\mathrm{i}} X_{\mathrm{i}}\right) \right]
$$

This simple equation makes obvious the most important virtue of the reduced form approach. The reduced form approach can employ any variable, without restriction, that improves the quality of default prediction, because any variable can contribute in the equation above including Merton default probabilities if they have explanatory power. This means that the reduced form approach can never be worse than the Merton model because the Merton model can always be an input. The reverse is not true—the charge card balance of the chief executive officer is a well-known predictor of small business default, but the Merton default formulas do not have the flexibility to use this insight. Note also that the linear function in the denominator can be thought of as Altman's 1968 z-score concept. In that sense, the reduced form/logistic regression approach has both Altman's work and Merton's work as ancestors.


In short, reduced form models can be the result of unconstrained variable selection among the full set of variables that add true economic explanatory power to default prediction. The Merton model, in any variation, is a constrained approach to default estimation because the mathematical formula for the model does not allow many potential explanatory variables to be used.

Most importantly, the logistic regression approach provides a solid opportunity to test whether in fact the Merton model does have the problems one would predict from the First Interstate data discussed above. We turn to that task now.

## EMPIRICAL EVIDENCE ON MODEL PERFORMANCE

Shumway and Bharath (2008) conduct an extensive test of the Merton approach. They test two hypotheses. Hypothesis 1 is that the Merton model is a "sufficient statistic" for the probability of default, that is, a variable so powerful that in a logistic regression like the formula in the previous section no other explanatory variables add explanatory power. Hypothesis 2 is the hypothesis that the Merton model adds explanatory power even if common reduced form model explanatory variables are present. They specifically test modifications of the Merton structure partially disclosed by commercial vendors of the Merton model. The Shumway and Bharath (2008) conclusions, based on all publicly traded firms in the United States (except financial firms) using quarterly data from 1980 to 2003 are as follows:13


- "We conclude that the ... Merton model does not produce a sufficient statistic for the probability of default."

- "Models 6 and 7 include a number of other covariates: the firm's returns over the past year, the log of the firm's debt, the inverse of the firm's equity volatility, and the firm's ratio of net income to total assets. Each of these predictors is statistically significant, making our rejection of hypothesis one quite robust. Interestingly, with all of these predictors included in the hazard model, the ... Merton probability is no longer statistically significant, implying that we can reject hypothesis two."

- "Looking at CDS implied default probability regressions and bond yield spread regressions, the ... Merton probability does not appear to be a significant predictor of either quantity when our naïve probability, agency ratings and other explanatory variables are accounted for."

These conclusions have been confirmed by Kamakura Corporation in five studies done in 2002, 2003, 2004, 2006, and 2011. The current Kamakura default database includes more than 1.76 million monthly observations on all public companies in North America from 1990 to December 2008, including 2,046 defaulting observations. Both hypotheses 1 and 2 were tested in the context of a "hybrid" model, which adds the Kamakura Merton implementation as an additional explanatory variable alongside the Kamakura reduced form model inputs. In every case, Kamakura agrees with Shumway and Bharath that hypothesis 1 can be strongly rejected. Kamakura has found 49 other variables that are statistically significant predictors of default even when Merton default probabilities are added as an explanatory variable.

Somewhat different from Shumway and Bharath, Kamakura finds that the Merton default probability has weak statistical significance when added as an explanatory variable to these other 49 variables, but the coefficient on the Merton default probability has the wrong sign; when Merton default probabilities rise, the predicted hybrid default probabilities fall. This is because Merton default probabilities are highly correlated with other variables like the market leverage ratio (which was mentioned above as out-predicting the commercial Merton implementation) and the ratio of total liabilities to total assets. It is an interesting econometric question whether the Merton input variable should be retained in such an event.


These findings were indirectly confirmed in Bohn, Arora, and Korablev (2005), in which Moody's for the first time releases quantitative test results on their Merton implementation. In that paper, the authors report on the relative accuracy of their proprietary Merton implementation compared to the more standard Merton theoretical implementation; they state that on a relatively easy data set (1996-2004 with small firms and financial institutions excluded) the proprietary Merton implementation has a receiver operating characteristics (ROC) accuracy ratio  $7.5\%$  higher than the standard Merton implementation.[14] This puts the accuracy of the Moody's model more than  $5\%$  below that reported on a harder data set (all public firms of all sizes, including banks, 1990-2004) in the Kamakura Risk Information Services Technical Guide, Version 4.1 (2005) and again in the Kamakura Risk Information Services Guide, Version 5.0 (2010) on data spanning 1990-2008. The accuracy is also well below reduced form model accuracy published in Bharath and Shumway (2008), Campbell, Hilscher, and Szilagyi (2008), Hilscher and Wilson (2011), van Deventer and Imai (2003), and van Deventer, Imai, and Mesler (2004). The standard Merton accuracy ratio reported by Bohn, Arora, and Korablev (2005) is identical to that reported by Kamakura on a harder data set. It is not surprising that there were no comparisons to reduced-form models using logistic regression in Bohn, Arora, and Korablev.

## KEY POINTS

- Ratings date from the founding of a predecessor of Standard & Poor's in 1860. The very existence of ratings as a credit assessment tool dates from an era when computers did not exist and the electronic transmission of financial information was impossible.
- Because of this history, ratings are extremely simple ordinal rankings of firms or other counterparties by a small number of ratings grades, 21 grades in the U.S. rating agencies.
- Ratings have no explicit maturity and no explicit default probability associated with them.
- For consumer credit risk assessment, "credit scores" are similar to ratings in that they are an ordinal risk measure, they have no maturity, and they have no explicit default probability associated with the score. While some credit bureaus state that credit scores rank the risk of a 90-day past due experience over 24 months, they are used on the full spectrum of credits from charge cards to 30-year mortgages.
- Unlike ratings, which have both qualitative and quantitative inputs to the process, the creation of credit scores is fully automated and based on a sophisticated statistical process.
- In the modern era, there is no need for either ratings or credit scores if the credit analyst has access to best in class default probabilities for a full term structure of time horizons for each counterparty.
- The ratings debate about "point in time" and "through the cycle" is a distinction without a difference. All ratings reflect information as of the ratings announcement date, as do default probabilities, so they are in that sense a "point in time." The longest term default probability is the best measure of long-term risk and the shortest term default probability is the best measure of short-term risk. The longest default probability is "through the cycle" if the maturity is long enough. The maturity of the rating has never been clearly articulated by the rating agencies themselves.


- The first attempts at measuring default probabilities were based on the early work by Robert Merton nearly 40 years ago. Merton's theory is simple and has intuitive appeal.
- The Merton model has not been accurate in practical use because it is based on assumptions that are simply not true: that common stock prices and bond prices are driven by only one factor, the value of company assets, and that company assets are perfectly liquid.
- A modern reduced form approach will always be more accurate than the Merton approach because the reduced form approach can employ any input that makes economic sense and improves accuracy.
- Logistic regression is the maximum likelihood estimator for prediction of a variable that has a zero (no default) or one (default) value.
- Reduced form default models were introduced by Jarrow based on an early continuous time default model by Merton. Empirical evidence suggests reduced form models are more accurate than ratings and the Merton approach in predicting default.
- Reduced form default models were first launched commercially in 2002 for public firms and in 2008 for sovereigns. They are also in wide use for predicting default of retail and small business clients.

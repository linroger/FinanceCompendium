---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Chapter 22
linter-yaml-title-alias: Chapter 22
---

# Chapter 22

# Model Risk Management

The use of models by financial institutions is growing fast. Models are employed for making credit decisions, liquidity management, the evaluation of credit exposures, the valuation of derivatives, the calculation of risk measures such as value at risk (VaR) and expected shortfall (ES), the management of portfolios of financial assets for clients, the assessment of capital adequacy, customer relationship management, fraud detection, the identification of money laundering, and so on. Complex models, with advanced analytic techniques such as machine learning, are being used to automate some activities previously carried out by humans. (See Chapter 29 for a discussion of machine learning.) It is now recognized that large financial institutions need a model risk management function to ensure that models are appropriate for their intended purpose and are used in the correct way.

Models are approximations to reality. The art of building a model is to capture the key aspects of reality for a particular application without allowing the model to become so complicated that it is almost impossible to use. Nearly always, a model relies on some assumptions about the phenomenon being modeled. It is important to understand those assumptions and know when they are no longer appropriate.

It used to be the case that models could be developed by a quant on a spreadsheet and used with minimal oversight. This is no longer the case. Models must now be well documented and reviewed periodically to determine whether they are still appropriate and are working as intended. When changes are made to models, approval is usually necessary. These aspects of model risk management are typically not popular with model builders, who tend to enjoy the creative aspects of model development and dislike spending time justifying their models and documenting them.

Regulators have, since the Global Financial Crisis, become less comfortable with the use of internal models to determine capital requirements. They have also become more concerned about the way models are used for other purposes within financial institutions. Model risk is a component of operational risk. Regulators want banks to have a system for managing the risks presented by models. Models must be developed, validated, and used in accordance with this system.

This chapter starts by reviewing regulatory guidance on model risk management. It describes the role of the model validation group and then moves on to compare the way in which models are used in finance with the way they are used by physicists and other scientists. After that, it focuses on the use of models for valuation and risk management and examines some of the lessons that can be learned from the mistakes made in that area.

# 22.1 Regulatory Guidance

In April 2011, the U.S. Board of Governors of the Federal Reserve System published SR 11-7, which provides guidance to banks on effective model risk management. $^{1}$  This document has proved to be very influential, and U.S. banks are expected to ensure that their practices are consistent with the principles outlined in the document. Bank supervisors elsewhere have indicated that they expect to see a similar systematic approach to understanding and managing model risk. If a bank supervisor feels that a bank's model risk management systems are inadequate, it may request the bank to hold additional capital.

SR 11-7 defines model risk as "the potential for adverse consequences from decisions based on incorrect or misused model outputs and reports." Model risk occurs primarily for two reasons:

1. The model may have fundamental errors when viewed from the perspective of its objectives. These errors may concern the data it uses, the way calculations are done, numerical procedures, assumptions made, and so on.
2. The model may be used incorrectly or inappropriately. It is important to understand the limitations of models. A model may have been developed assuming a particular set of market conditions or a particular type of customer behavior. When these change, the model may no longer be appropriate.

Financial institutions should attempt to identify the sources of model risk and their magnitude. Complex models generally lead to more model risk than simple models. When models are linked or when several models are based on the same underlying set of assumptions, there is liable to be a greater degree of model risk. It is important to monitor model performance to determine as early as possible when a model is, for whatever reason, not performing as well as expected.

# 22.1.1 Model Development

When a model is developed, documentation is important. There are several reasons for this. If the model developer leaves the organization and there has been no good documentation, it might be very difficult for others to assume responsibility for the model, and, as a result, the work of the developer might be lost. Regulators frequently ask to see model documentation when they evaluate the procedures used by a financial institution. Also, model validation and periodic review are facilitated if the model has been well documented.

An important aspect of model documentation is a statement of the purpose of the model, the underlying theory, an evaluation of industry practice, and a review of published research. It is important that the documentation clearly explains the underlying mathematics, numerical procedures used, assumptions made, and so on. The documentation should be sufficiently detailed that someone who is new to the area can understand what has been done. As indicated earlier, model documentation will often be viewed as a boring chore by the model developer. But in practice it often proves to be a useful discipline, forcing the model developer to step back and think about his or her work in a way not done before. Sometimes changes to the model result.

Models should be tested as thoroughly as possible. This should include careful testing of all parts of the computer code and evaluating the model's behavior for a range of input data. The testing should identify situations where the model performs well and situations where it performs poorly. This can be done by observing the performance of the model with progressively more extreme values for the inputs. In some situations, it is appropriate to compare the output from the proposed model with the output from a more elaborate model that would be computationally too slow to be used in practice.

The way in which the performance of a model is tested will depend on the nature of the model. Models developed from historical data should be tested out of sample. For example, if a model for making loan decisions is developed from a particular set of data collected over a particular period, it would clearly not be appropriate to test it using the same data. Similarly, if a portfolio management strategy for a client is developed by analyzing the behavior of asset prices during a particular period, it should be tested using data from another period.

We have discussed in earlier chapters how back-testing can be used for VaR models. It can be used in other situations as well. Suppose a model based on a particular set of assumptions is used to price and hedge barrier options. It should be possible to determine how well it would have worked in the past. Would a user of the model have made a profit on average? If so, would the profit have been sufficiently great to compensate for the risks being taken?

As a model is used in practice, a financial institution should collect information on whether it is reflecting economic and business realities and working in the way intended. There is a danger that the existence of a model may lead to a change in behavior. For example, a model for managing customer relationships may lead to customers behaving differently; a model for detecting money laundering might work well until would-be money launderers learn (perhaps by trial and error) how the model works and adjust their behavior accordingly. Even model users may find ways of adjusting inputs to a model or the way the model is used to make themselves look good.

# 22.1.2 Model Validation

One result of the increasing attention being devoted to model risk management is the formation of model validation groups. These groups are responsible for verifying that all the models used by the organization are performing as expected. They provide a check on the work of the model developer and critically review what has been produced and how the model is performing.

The person charged with validating a model should be independent of the model developer and the model user. Ensuring independence is critical to the success of the model risk management function. The reporting lines and incentives should be chosen to promote independence. The success of the model validation function should be judged by the objectivity of the model reviews, the issues raised, and the actions taken by management to address the issues. Corporate culture is important. If objective thinking and the challenging of decisions are not encouraged, the model validation process is likely to be ineffective. Regulators are likely to ask to see instances where models and their use have been appropriately changed as a result of validation.

Models are sometimes used informally in a small way prior to initial validation. However, before a model becomes part of a financial institution's way of operating it is important that a first validation be carried out. The extent and rigor of the validation should depend on the risks presented by the model. Consider the situation where a model has been developed to automate billions of dollars of loan decisions. Here it is clearly important that the validation be thorough. Even if the model is performing well and in accordance with its objectives, the model validation group might insist on a staged implementation with close monitoring to reduce model risk.

Model validation should continue on an ongoing basis after the model has been approved for use. This ensures that the impact of changes in markets and business practices on the performance of the model is monitored. SR 11-7 recommends that models be reviewed by the validation group at least annually. Users of the model (particularly if they are different from the developers) can provide input, and the validation group can determine whether the performance of the model using recent data is as good as it was on the data available when the model was first produced. The outcomes from using the model (e.g., credit decisions made, return on investments from using the model, fraud attempts thwarted) should be documented and compared with what was expected.

Business Snapshot 22.1 describes the London Whale story, which is an example of a situation where the model validation group was under pressure to approve a model. This was because the model provided justification for reducing VaR, and therefore regulatory capital, when a huge position in one product was hedged with an opposite position in a similar product. If the model validation group had more time, it would have carried out a more careful review of the model. It might have argued that the correlation between

# BUSINESS SNAPSHOT 22.1

# The London Whale

The London Whale was a trader, Bruno Iksil, who worked for the Chief Investment Office (CIO) at JPMorgan Chase (JPM). His nickname arose from his huge positions in credit default swaps on CDX and iTraxx indices. (As explained in Section 17.4, these are products that provide protection against defaults for a portfolio of companies.)

The CIO's responsibility was to invest the bank's surplus cash. At the end of 2011, the bank's positions in the credit indices were moderately large and it was net long (i.e., it was buying more protection against defaults than it was selling). This net long position hedged the CIO's positions in fixed-income products. JPM wanted to reduce its risk-weighted assets to comply with the new Basel regulations. It also wanted to move toward a more neutral position in the credit indices because it felt that the economy was improving. Unwinding its existing positions in the indices would lead to a loss, partly because the positions had a negative mark-to-market value and partly because the positions were sufficiently large that unwinding them would tend to move the market against JPM. As a result, the CIO chose to hedge its net long position in credit indices by selling protection on different indices.

The CIO expected the long and short positions to offset each other. In fact, this did not happen. Market participants realized that someone was taking big positions. (JPM, like other dealers, tries to keep its positions secret. However, market participants realized that there was a "whale" in the market and it eventually became apparent that the whale was a trader for JPM.) Realizing that the positions would have to be unwound at some future time and that this would move the market, some market participants engaged in predatory trading, taking opposite positions to JPM. This moved the market against JPM and meant that the values of JPM's long and short positions were not as closely correlated as expected.

The CIO increased the size of its positions. This was partly for technical hedging reasons and partly to defend against predators. Its huge position was theoretically well balanced (i.e., models showed that its value should not be affected to any great extent by credit spread movements). It had long and short positions in CDX investment-grade (IG) indices and in the CDX high-yield (HY, non-investment-grade) indices. It sold large amounts of credit protection on the 10-year CDX IG 9 index and bought large amounts of protection on the five-year CDX IG 9 index. (This was an index created from 125 names in September 2007. Although not the current CDX IG index, it still traded reasonably actively; 121 of the original 125 names had not defaulted.) Prices did not move in the way that was expected, and a loss of about  \$6 billion was recognized by April/May 2012. Deferred bonuses to CIO employees were clawed back, and Jamie Dimon, JPM's chairman and CEO, took a pay cut for the year. Allegations that the value of the portfolio was misreported to shareholders were investigated by U.S. government agencies, and JPM ended up paying a fine of almost\$ 1 billion.

Why was the CIO allowed to take such huge risks? In January 2012, the CIO exceeded its VaR limit and the bank as whole exceeded its VaR limit as a result of the CIO's trading. However, a new VaR model was being developed. This model, which was finished in the second half of January and quickly reviewed and approved by the model validation group, reduced the VaR of the CIO's portfolio by  $50\%$  so that pre-January VaR limits were adhered to. JPM's January 2013 internal report on the London Whale losses (particularly the appendix) indicates that a number of mistakes were made. The quant who developed the model and the model validation group were under pressure to develop and approve the model. The quant reported to traders in the CIO, and the model validation group had time to carry out only limited back-testing of the model. In May 2012, the model was re-evaluated. A number of serious errors were discovered and its use was discontinued.

This story emphasizes the importance of the model validation function and why it needs to be independent.

the two products was assumed to be too large. It could also have made the point that hedges that work well for small positions do not always work well for large positions. The bank's use of the model for its large position had the potential to lead to predatory trading (see Chapter 21), rendering the historical comparisons of the prices of the products being traded less relevant.

SR 11-7 argues that comprehensive validation should have three core elements:

1. Evaluation of conceptual soundness, including developmental evidence
2. Ongoing monitoring, including process verification and benchmarking
3. Outcomes analysis, including back-testing

A sound developmental process should produce documented evidence in support of all model assumptions. There is a danger that the model developer has a bias toward a particular type of model—or even an interest in showing off his or her quant skills by developing an unnecessarily complex model. The validation work should ensure that this has not happened. Stability is an important property of models. If a small change in an input produces a large change in the output, the model may be unstable and inappropriate for its intended use. Model validation should include model stress testing where the model is subjected to extreme inputs to test its range of applicability.

As already mentioned, ongoing monitoring is a core part of model validation. This includes ensuring that all changes made to a model are tested and documented. If the model user and the model developer are the same person (as is sometimes the case), there is a temptation for the model user to tweak the code to improve model performance. This is unsatisfactory and can lead to a situation where the model is nothing more than a collection of tweaks with no unifying theory. If a model is not performing as well as it could, a review should be undertaken and possibly a new model with better foundations developed. It is important for a model validation function to investigate situations where a model is not used because managers feel the output is not consistent with their experience and judgment. This can be an indication that improvements or a new approach is necessary.

Outcomes analysis, such as back-testing, is important for monitoring a model's performance. Some work in this area should be carried out by the model developer and documented. This work should be checked by the model validation group and continued on an ongoing basis. The reasons for any differences between expected outcomes and actual outcomes should be analyzed. For example, a particular liquidity management model might be found to work well in low-interest-rate environments, but less so when interest rates increase. This type of analysis can lead to model improvements.

# 22.1.3 Vendor Models

Not all models are developed internally. Some are purchased from model vendors. Sometimes the purpose of a model that has been purchased is to benchmark a similar model developed internally. In this case, the vendor model can be a useful validation tool. In other situations, the vendor model may be used because it is less expensive than developing a similar model internally. When this is the case, vendor models should be subject to the same validation as internal models. However, they present particular challenges for the model validation group, as the modeling expertise is external to the organization and some aspects of the model may be proprietary.

Financial institutions should have processes in place for selecting vendor models. The vendor should be required to provide documentation explaining the model design, testing results, and model limitations. Financial institutions should insist that vendors conduct ongoing performance monitoring and outcomes analysis, and that they provide the results of this to their clients.

The validation group should be responsible for approving the use of a vendor model. It may not have access to the computer code, but it can conduct extensive analysis on the results produced by the model for a variety of inputs. It should insist that the vendor provide full information about the data used to develop the model. There should be a contingency plan for a situation in which the vendor goes out of business or decides to stop supporting the model. One approach here is to insist that the computer code and all other proprietary material be placed in escrow and made available to the client in circumstances in which the vendor is no longer able to provide support.

# 22.2 Models in Physics and Finance

Many individuals who were well trained in physics now work in finance developing models. Some models in finance are structurally similar to those in physics. For example, the differential equation that leads to the famous Black-Scholes-Merton option pricing model is the heat-exchange equation that has been used by physicists for many years. However, as Derman has pointed out, there is an important difference between the models of physics and the models of finance. The models of physics describe physical processes and are highly accurate. By contrast, the models of finance describe the behavior of market variables, customers, borrowers, and so on. The phenomena being modeled are a result of the actions of human beings. As a result, the models are at best approximate descriptions of the phenomena being modeled.

One important difference between the models of physics and the models of finance concerns model parameters. The parameters of models in physics generally do not change. For example, the gravitational pull on the surface of the earth is always 32 feet per second per second. By contrast, parameters in finance models change daily. The volatility used to price an option might be  $20\%$  one day,  $22\%$  the next day, and  $19\%$  the following day. Indeed, the parameters used on a day are often chosen to be consistent with market prices, not to determine them.

# 22.3 Simple Models: Expensive Mistakes

Models do not have to be highly complex to lead to losses. Business Snapshot 22.2 provides a simple example of this. Kidder Peabody's computer system did not account correctly for funding costs when a linear product was traded. As a result, the system indicated that one of the company's traders was making a large profit when in fact he was taking a huge loss. The model used by Kidder Peabody should have been subject to independent validation. Even if the theoretical problem with the model was not picked up, the difference between model prices and market prices would have indicated to the model validation group that something was seriously wrong.

The Kidder Peabody modeling mistake would have been easy to identify if there was a culture within the organization that allowed traders to be challenged. Indeed, Barry Finer, risk manager for the government bond desk, did point out the difficulty of making large arbitrage profits from a market as efficient as the U.S. government bond market. But his concerns were dismissed out of hand.

# BUSINESS SNAPSHOT 22.2

# Kidder Peabody's Embarrassing Mistake

Investment banks have developed a way of creating a zero-coupon bond, called a strip, from a coupon-bearing Treasury bond by selling each of the cash flows underlying the coupon-bearing bond as a separate security. Joseph Jett, a trader working for Kidder Peabody, had a relatively simple trading strategy. He would buy strips and sell them in the forward market. The forward price of the strip was always greater than the spot price, so it appeared that he had found a money-making machine! In fact, the difference between the forward price and the spot price represents nothing more than the cost of funding the purchase of the strip. Suppose, for example, that the three-month interest rate is 4\% per annum and the spot price of a strip is \$70. The three-month forward price of the strip is 70e^{0.04 \times 3/12} = \$70.70. This is because, for someone who wants to own the strip in three months, the forward contract saves \$0.70 of funding costs.

Kidder Peabody's computer system reported a profit on each of Jett's trades equal to the excess of the forward price over the spot price ( \$0.70 in our example). By rolling his contracts forward, Jett was able to prevent the funding cost from accruing to him. The result was that the system reported a profit of\$ 100 million on Jett's trading (and Jett received a big bonus) when in fact there was a loss in the region of 350 million. This shows that even large financial institutions can get relatively simple things wrong!

Sometimes the assumptions made by model developers are inaccurate but less easy to identify than in the Kidder Peabody case. An example here is provided by the interest rate swap market. A plain vanilla interest rate swap, such as the one described in Section 5.5.3, can be valued by assuming that forward interest rates will be realized. This is explained in Appendix D. For example, if the forward interest rate for the period between 2 and 2.5 years is  $4.3\%$  per annum, the swap can be correctly valued on the assumption that the floating rate that is exchanged for a fixed rate at the 2.5-year point is calculated using this rate. It is tempting to generalize from this and argue that any swap agreement to exchange cash flows in the future can be valued on the assumption that forward rates are realized. This is not so. Consider, for example, what is known as an in-arrrears swap. In this instrument, the floating rate that is observed on a particular date is paid on that date, not one accrual period later as is the case for a plain vanilla swap. An in-arrrears swap should be valued on the assumption that the realized interest rate equals the forward interest rate plus a "convexity adjustment." As indicated in Business Snapshot 22.3, financial institutions that did not understand this lost money in the mid-1990s.

# BUSINESS SNAPSHOT 22.3

# Exploiting the Weaknesses of a Competitor's Mode

An in-arrears swap is an interest rate swap where the floating interest rate is paid on the day it is observed, not one accrual period later. Whereas a plain vanilla swap is correctly valued by assuming that future rates will be today's forward rates, an in-arrears swap should be valued on the assumption that a future rate is today's forward interest rate plus a "convexity adjustment."

In the mid-1990s, sophisticated financial institutions understood the correct approach for valuing an in-arrrears swap. Less sophisticated financial institutions used the naive "assume forward rates will be realized" approach. The result was that by choosing trades judiciously, sophisticated financial institutions were able to make substantial profits at the expense of their less sophisticated counterparties.

The derivatives business is one where traders do not hesitate to exploit the weaknesses of their competitors' models!

A similar example to this is provided by the interest rate futures markets. In most situations, it is reasonable to assume that a futures price is the same as the corresponding forward price. For example, the futures price in a futures contract to deliver gold in one year should be very close to the forward price in a forward contract to deliver gold at the same time. There are some differences between the two contracts. For example, a futures contract is settled daily and the party with the short position has some flexibility on the precise delivery date. But these differences do not create a material difference between the futures and forward prices. In the mid-1990s, many market participants chose to assume that the futures rate in an interest rate futures contract is the same as the corresponding forward rate. In fact, the approximate result that is true for most other futures contracts does not apply to interest rate futures. This is because interest rate futures last a long time so that the impact of daily settlement cannot be ignored. Also, in the case of interest rates, futures and forwards are settled at different times. Futures are settled at the beginning of the period covered by the underlying rate whereas forwards are settled at the end.

# 22.3.1 Monitoring Trading Patterns

The situations we have just outlined suggest that an important way of identifying model risk in the valuation of products is to monitor trading patterns. In particular, the risk management function within a financial institution should keep track of the following:

1. The type of trading the financial institution is doing with other financial institutions
2. How competitive it is in bidding for different types of structured transactions
3. The profits being recorded from the trading of different products

Getting too much of a certain type of business, or making huge profits from relatively simple trading strategies, can be a warning sign. If a financial institution finds that its prices are out of line with the market, it must make adjustments to its valuation procedures to bring them into line.

The high profits being recorded for Joseph Jett's trading at Kidder Peabody (see Business Snapshot 22.2) should have indicated that something was amiss. Likewise, if in the mid-1990s a financial institution's risk management team discovered that traders were entering into a large number of in-arrrears swaps with other financial institutions (see Business Snapshot 22.3) where they were receiving fixed and paying floating, they could have alerted modelers to a potential problem and directed that trading in the product be temporarily stopped.

# 22.4 Models for Pricing Actively Traded Products

When a financial instrument trades actively, we do not need a model to know what its price is. The market tells us this. Suppose, for example, that a certain option on a stock index trades actively and is quoted by market makers as bid $30, ask $30.5. Our best estimate of its current value is the mid-market price of 30.25.

A situation that is common in the over-the-counter market is one where a financial instrument that has to be valued is a standard product such as an option, but not exactly the same as one that trades in the market. For example, it might be an option with a strike price or time to maturity (or both) different from the options whose prices can be observed. The model is then used as a tool to ensure that the way an instrument is priced is consistent with the observed market prices of other similar instruments. A good example of how this is done is provided by the way the Black-Scholes-Merton model is used in practice. (See Appendix E for a description of the Black-Scholes-Merton model.)

The Black-Scholes-Merton model has been successful because all its inputs except one are known with a high degree of certainty. The one input that cannot be observed is volatility. This means that there is a one-to-one correspondence between prices and volatilities. When the volatility for an option has been specified, the price can be calculated. Similarly, when the price is known, a volatility can be determined. The volatility determined from a market price is known as an implied volatility. Traders responsible for options on a particular asset keep track of what is known as the volatility surface. This is the set of implied volatilities calculated for options with different strike prices and times to maturity.

Table 22.1 Volatility Surface Volatilities for different strike prices and maturities are shown as  $\%$  per annum.

<table><tr><td></td><td colspan="5">Strike Price</td></tr><tr><td></td><td>0.90</td><td>0.95</td><td>1.00</td><td>1.05</td><td>1.10</td></tr><tr><td>1-month</td><td>14.2</td><td>13.0</td><td>12.0</td><td>13.1</td><td>14.5</td></tr><tr><td>3-month</td><td>14.0</td><td>13.0</td><td>12.0</td><td>13.1</td><td>14.2</td></tr><tr><td>6-month</td><td>14.1</td><td>13.3</td><td>12.5</td><td>13.4</td><td>14.3</td></tr><tr><td>1-year</td><td>14.7</td><td>14.0</td><td>13.5</td><td>14.0</td><td>14.8</td></tr><tr><td>2-year</td><td>15.0</td><td>14.4</td><td>14.0</td><td>14.5</td><td>15.1</td></tr><tr><td>5-year</td><td>14.8</td><td>14.6</td><td>14.4</td><td>14.7</td><td>15.0</td></tr></table>

Table 22.1 provides an example of the volatility surface that could be constructed for options on an exchange rate. (For simplicity we assume that the current exchange rate is close to 1.00.) Note that, if the Black-Scholes-Merton model were a perfect description of reality, the volatilities in the table would be constant and not vary through time. In practice, implied volatilities for options are not the same for different strike prices and times to maturity, and they do vary through time. (This is true for options on all assets.) It is the trader's job to understand the current volatility surface and how it could change through time.

Suppose that a trader wishes to value a nine-month option with a strike price of 1.05 on the day Table 22.1 is produced. A six-month option with this strike price has a volatility of  $13.4\%$  and a one-year option with this strike price has a volatility of  $14.0\%$ . Interpolating between these, a trader would use a volatility of  $13.7\%$  in the Black-Scholes-Merton model to value the option. Suppose next that both the time to maturity and the strike price are different from those in the table. A two-dimensional interpolation is then necessary. This involves first interpolating between strike prices and then between times to maturity. (The same answer is obtained if one first interpolates between maturities and then between strike prices. See Problem 22.12.) Consider a 1.5-year option with a strike price of 0.92. A one-year option with this strike price has an interpolated implied volatility of  $14.42\%$ ; a two-year option with the strike price has an interpolated volatility of  $14.76\%$ . The interpolated volatility for a 1.5-year option is therefore  $14.59\%$ .

# 22.4.1 Sources of Model Risk for Actively Traded Products

One issue for the model validation group is whether the prices determined for actively traded instruments depend on the model used. If, in the example just considered, we replaced the Black-Scholes-Merton model by another model, would the prices be similar? The answer to this question is that, when the nature of the product being valued is exactly the same as actively traded instruments (i.e., only parameters like the strike price and time to maturity are different), the model does not usually affect prices materially. This is because the model is being used as nothing more than a sophisticated interpolation tool and two different interpolation tools usually give very similar valuations.

There is liable to be model risk in extreme situations. The model validation group should check this out. For example, it should examine the operation of different models when the volatility surface is very steep in either the strike price or time-to-maturity dimension. Also, the model validation group should check on the reliability of the pricing data that are available in the market and how the model would work when less data than usual are available.

# 22.4.2 Hedging

In the case of actively traded instruments, the main model risk concerns hedging. As we have discussed, switching from one model to another does not usually affect prices to any great extent, but it can have an effect on hedging performance.

We can distinguish between within-model hedging and outside-model hedging. Within-model hedging is designed to deal with the risk of changes in variables that are assumed to be uncertain by the model. Outside-model hedging deals with the risk of changes in variables that are assumed to be constant (or deterministic) by the model. For the Black-Scholes-Merton model, hedging against movements in the underlying stock price (delta and gamma hedging) is within-model hedging, because the model assumes that stock price changes are uncertain. However, hedging against volatility changes (vega hedging) is outside-model hedging because the model assumes that volatility is constant.

In practice, traders almost invariably do outside-model hedging as well as within-model hedging. This is because, as we have explained, the calibration process results in parameters such as volatilities (which are assumed by a model to be constant) changing daily. A good options trader will monitor the exposure of a trading book to the sorts of shifts in the volatility surface that are typically seen.[5]

If a model is designed to be always consistent with market prices and hedging is carried out continuously for all variables (both those that are assumed to be constant by the model and those that are assumed to be stochastic), the value of the hedger's position should in theory not change. However, in practice hedging cannot be carried out in this idealized way. Consider again the Black-Scholes-Merton model to value a position in options on an exchange rate. Each option price is a deterministic function of the exchange rate, its implied volatility, and time. This means that the trader has an exposure to the exchange rate and the implied volatilities of all the options in the portfolio. The exposure to the exchange rate can be hedged without difficulty by trading the foreign currency. This is known as delta hedging and is usually done at least once a day (see Chapter 15). Hedging the risk of volatility changes is not as easy. It requires trades in other options (which can be expensive) and assumptions about how the volatility surface can change through time. As a result, volatility hedging cannot be anything near as effective as delta hedging.

In practice, delta hedging is often the only hedging that a trader carries out on a regular basis. The delta of an option position does depend on the model used. This means that the hedge position taken by a trader varies from one model to the next. An important activity for the model validation group is to test the effectiveness of delta hedging for alternative models.

# 22.4.3 P&L Decomposition

One analysis that can be carried out is known as  $P\& L$  decomposition. Risk managers divide day-to-day changes in the value of a portfolio into:

1. A change resulting from risks that were unhedged
2. A change resulting from the hedging model being imperfect
3. A change resulting from new trades done during the day

If the day-to-day change is unacceptable, the analysis will indicate the areas where more effort should be expended. The good news here is that, on average, the total gain or loss to a financial institution from inaccurate hedging is often small because it is largely diversified away across the portfolio of a large financial institution.

# 22.5 Models for Less Actively Traded Products

The general procedure for pricing derivatives is to build a model and then imply the parameters of the model from the prices that can be observed in the market. This is illustrated in Figure 22.1. One or more other financial instruments whose prices can be observed in the market are chosen as the "calibrating instruments." These instruments are chosen so that they are as similar as possible to the financial instrument of interest. They are then used to imply parameters for the model being used for the instrument under consideration.

We have argued that there is very little model risk as far as valuation is concerned when this approach is used for standard instruments that trade actively. The same is not true for non-standard instruments. Here the model used is likely to have a significant effect on valuations as well as on hedging. An example of model risk in the pricing of structured products is provided by Business Snapshot 7.1. This makes the point that the assumption that the BBB-rated tranche of an asset-backed security (ABS) is similar to a BBB bond is not a good one when tranches of an ABS CDO are being priced.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f92d6a55-cea9-43e0-894c-41ef6fed0a93/57d63fb7d2dbd0e38eb3f24a69ed079158b4a6026f4def0539883fe8f8129197.jpg)

Figure 22.1 How Models Are Usually Used for Valuing a Financial Instrument

An important point to note is that we are nearly always concerned with what might be termed relative valuation. The objective is to value the financial instrument consistently with other similar financial instruments whose prices can be observed. It is very rare to use a model to value a derivative in absolute terms. This is another difference between finance models and the models of physics.

A financial institution should not rely on a single model for pricing non-standard products. Instead it should, whenever possible, use several different models. This leads to a price range for the instrument and a better understanding of the model risks being taken.

Suppose that three different models give prices of \$6 million, \$7.5 million, and \$8.5 million for a particular product that a financial institution is planning to sell to a client. Even if the financial institution believes that the first model is the best one and plans to use that model as its standard model for daily repricing and hedging, it should ensure that the price it charges the client is at least \$8.5 million. Moreover, it should be conservative about recognizing profits. If the product is sold for \$9 million, it is tempting to recognize an immediate profit of \$3 million (\$9 million less the believed-to-be-accurate price of \$6 million). However, this is overly aggressive. A better, more conservative, practice is to put the 3 million into a reserve account and transfer it to profits slowly during the life of the product.

# 22.5.1 Weighted Monte Carlo Simulation

When different models are being used, they should be calibrated to the prices of actively traded standard products that are observed in the market. For example, when a barrier option is being priced, the models tested should produce prices for regular call and put options that are equal to those observed in the market. Rather than testing a small number of different models, a sophisticated analysis can be attempted to answer the question: "What range of model prices is possible for models that price actively traded products correctly?" This analysis, if carried out successfully, will give a worst possible price and a best possible price for the non-standard instrument. One approach is known as weighted Monte Carlo simulation. This involves carrying out a Monte Carlo simulation for one model and then applying weights to the sampled paths. Constraints are placed on the weights so that standard instruments are priced correctly by the weighted Monte Carlo simulation. An optimization procedure is used to find the weights that produce maximum and minimum values for the non-standard derivative consistent with the constraints.

# 22.6 Accounting

Products that are held in the trading book must be valued daily. This process is referred to by traders as marking to market. The valuations are used by accountants to calculate quarterly financial statements. Accountants refer to marking to market as "fair-value accounting."

Accountants recognize that some models produce more reliable prices than others. The Financial Accounting Standards Board in the United States (FAS 157) and the International Accounting Standards Board in Europe (IAS 39) require banks to report three categories of valuations separately:

Level 1 valuations: Valuations for instruments where there are quoted prices in active markets.

Level 2 valuations: Valuations for instruments where there are quoted prices for similar instruments in active markets or quoted prices for the same instrument in markets that are not active.

Level 3 valuations: Valuations for instruments where some modeling assumptions are required. (This is sometimes referred to as marking to model.)

The valuations we discussed in Section 22.4 where the model is used as a sophisticated interpolation tool would be classified as Level 2 valuations. The valuations in Section 22.5 where the calibrating instruments are somewhat different from the instrument being valued would be classified as Level 3 valuations.

# 22.7 What Makes a Successful Pricing Model?

It might be argued that any model where the values of input parameters change from day to day is not helpful. Certainly this would be true for models in physics. But, as has been explained, models for valuing financial instruments are used in a quite different way from the models of physics.

The Black-Scholes-Merton model is popular for three reasons:

1. It can be used in the way we have described for interpolation in conjunction with a volatility surface, and ensures that prices are consistent with observed market prices.
2. It is a communication tool. Traders often prefer quoting implied volatilities to quoting option prices, because implied volatilities are more stable than option prices and, as a result, their quotes do not change as frequently. When the price of the underlying asset changes or the interest rate changes, the option price changes but the implied volatility may not.
3. The model is sufficiently simple that a trader can develop intuition about the model and use it to structure his or her thinking about option markets.

Models in other areas that have these properties have also proved to be popular. Model developers and the model validation group should understand that the ultimate purpose of a model is often to enable the model user to understand the market and exercise his or her judgment more efficiently. When alternative models are compared, this is an important consideration and may lead to simpler models being preferred to more complex ones.

# 22.8 Model-Building Missteps

The art of model building is to capture what is important for valuing and hedging an instrument without making the model more complex than it needs to be. Sometimes models have to be quite complex to capture the important features of a situation, but this is not always the case.

One potential misstep in model building is over-fitting. Consider the problem posed by the volatility surface in Table 22.1. We can exactly match the volatility surface with a single model by extending the Black-Scholes-Merton model so that volatility is a complex function of the underlying asset price and time. $^{10}$  This can be desirable for some applications, but the model can become difficult to use. We may find that some properties of the model are less reasonable than those of simpler models. In particular, the joint probability distribution of the asset price at two or more times might be less than ideal, and, in some circumstances, future volatility surfaces given by the model might look quite different from those observed in the market today. $^{11}$

Another potential misstep in model building is over-parameterization. The Black-Scholes-Merton model can be extended to include features such as stochastic volatility or jumps in the asset price. This invariably introduces extra parameters that have to be estimated and makes the model more difficult to use. It is usually claimed that the parameters in complex models are more stable than those in simpler models and do not have to be adjusted very much from day to day. This may be true, but we should remember that we are not dealing with physical processes. The parameters in a complex model may remain relatively constant for a period of time and then change, perhaps because there has been what economists refer to as a regime change. A financial institution may find that a more complicated model is an improvement over a simple model until there is a regime change. The more complicated model may not then have the flexibility to cope with changing market conditions.[12]

As we have already mentioned, simple models are often the most successful. Often users are skeptical of complex models because they are so-called black boxes and it is very difficult to develop intuition about them. In some situations, users' skepticism is well founded for the reasons we have just mentioned.

# Summary

Model risk is a form of operational risk. It is now recognized that it requires special attention. Regulators expect to see that a financial institution has comprehensive procedures for developing, documenting, validating, and using models. Models should be reviewed periodically to ensure that they are working as originally intended. The model validation group should be independent of model developers and model users. It should provide a check on the work of the model developer and reach conclusions about the circumstances under which the model should be used.

Models in finance are different from those used in the physical sciences, because they are ultimately models of human behavior. They can usually only provide an approximation to reality. Furthermore, from time to time there are regime shifts leading to fundamental shifts in the performance of models.

Valuation models are often nothing more than sophisticated interpolation tools to ensure that one instrument is priced consistently with other similar instruments. As the instrument being valued becomes less standard, the valuation model chosen becomes more important. It is then a good practice for the model validation group to test the use of different models to obtain a realistic range for pricing and to understand the accompanying model risk. The models should always be calibrated to the current prices of actively traded instruments. The hedging performance of a model, as well as valuation performance, should be evaluated carefully.

# Further Reading

Avellaneda, M., R. Buff, C. Friedman, N. Grandchamp, L. Kruk, and J. Newman. "Weighted Monte Carlo: A New Technique for Calibrating Asset Pricing Models." International Journal of Theoretical and Applied Finance 4, no. 1 (February 2001): 91-119.

Bates, D. S. "Post '87 Crash Fears in the S&P Futures Market." Journal of Econometrics 94 (January/February 2000): 181-238.

Board of Governors of the Federal Reserve System, Office of the Comptroller of the Currency. "Supervisory Guidance on Model Risk Management," April 2011.

Cont, R. "Model Uncertainty and Its Impact on the Pricing of Derivative Instruments." Mathematical Finance 16, no. 3 (July 2006): 519-547.

Derman, E. "Model Risk," Risk 9, no. 5 (May 1996): 139-145.

Derman, E. My Life as a Quant: Reflections on Physics and Finance. Hoboken, NJ: John Wiley & Sons, 2004.

Elices, A., and E. Gimenez. "Weighted Monte Carlo." Risk (May 2006).

Glasserman, P., and X. Xu. "Robust Risk Measurement and Model Risk." Quantitative Finance 14, no. 1 (January 2014): 29-58.

Hull, J. C., and W. Suo. "A Methodology for the Assessment of Model Risk and Its Application to the Implied Volatility Function Model." Journal of Financial and Quantitative Analysis 37, no. 2 (June 2002): 297-318.

JPMorgan Chase. "Report of JPMorgan Chase & Co. Management Task Force Regarding 2012 CIO Losses," January 2013.

# Practice Questions and Problems (Answers at End of Book)

22.1 Explain what is meant by (a) marking to market and (b) marking to model.
22.2 What are the two categories of model risk identified in SR 11-7?
22.3 Why is it important that a model be fully documented?
22.4 "The Black-Scholes-Merton model is nothing more than a sophisticated interpolation tool." Discuss this viewpoint.
22.5 Using Table 22.1, calculate the volatility a trader would use for an eight-month option with a strike price of 1.04.
22.6 What is the key difference between the models of physics and the models of finance?
22.7 How is a financial institution likely to find that it is using a model different from its competitors for valuing a particular type of derivatives product?
22.8 Distinguish between within-model and outside-model hedging.
22.9 What is meant by P&L decomposition?
22.10 What is meant by "Level 1," "Level 2," and "Level 3" valuations in accounting?
22.11 What is meant by over-fitting and over-parameterization in model building?
22.12 Section 22.4 calculates the implied volatility of an option with strike price 0.92 and time to maturity 1.5 years using the data in Table 22.1 as  $14.59\%$ . It does this by interpolating first along the strike price dimension and then along the time to maturity dimension. Show that the same answer is obtained by interpolating first along the time to maturity dimension and then along the strike price dimension.

22.13 "For structured products, traders mark to model. They do not mark to market." Explain this remark.

# Further Questions

22.14 Suppose that all options traders decide to switch from Black-Scholes-Merton to another model that makes different assumptions about the behavior of asset prices. What effect do you think this would have on (a) the pricing of standard options and (b) the hedging of standard options?
22.15 Using Table 22.1, calculate the volatility a trader would use for an 11-month option with a strike price of 0.98.
22.16 Suppose that a financial institution uses an imprecise model for pricing and hedging a particular type of structured product. Discuss how, if at all, it is likely to realize its mistake.


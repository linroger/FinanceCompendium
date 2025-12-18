---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Chapter 27
linter-yaml-title-alias: Chapter 27
---

# Chapter 27

# Fundamental Review of the Trading Book

In May 2012, the Basel Committee on Banking Supervision issued a consultative document proposing major revisions to the way regulatory capital for market risk is calculated. This is referred to as the "Fundamental Review of the Trading Book" (FRTB). The Basel Committee then followed its usual process of requesting comments from banks, revising the proposals, and carrying out Quantitative Impact Studies (QISs). The final version of the rules was published by the Basel Committee in January 2019. The internationally agreed implementation date is January 2023, but many jurisdictions indicated that they will be a year or two later than that.

FRTB's approach to determining capital for market risk is much more complex than the approaches previously used by regulators. The purpose of this chapter is to outline its main features.

# 27.1 Background

The Basel I calculations of market risk capital were based on a value at risk (VaR) calculated for a 10-day horizon with a  $99\%$  confidence level. The VaR was "current" in the sense that calculations made on a particular day were based on the behavior of market variables during an immediately preceding period of time (typically, one to four years). Basel II.5 required banks to calculate a "stressed VaR" measure in addition to the current measure. As explained in Sections 12.1 and 26.1, this is VaR where calculations are based on the behavior of market variables during a 250-day period of stressed market conditions. To determine the stressed period, banks were required to go back through time searching for a 250-day period where the observed movements in market variables would lead to significant financial stress for the current portfolio.

FRTB changes the measure used for determining market risk capital. Instead of VaR with a  $99\%$  confidence level, it uses expected shortfall (ES) with a  $97.5\%$  confidence level. The measure is actually stressed ES with a  $97.5\%$  confidence. This means that, as in the case of stressed VaR, calculations are based on the way market variables have been observed to move during stressed market conditions.

For normal distributions, VaR with a  $99\%$  confidence and ES with a  $97.5\%$  confidence are almost exactly the same. Suppose losses have a normal distribution with a mean  $\mu$  and standard deviation  $\sigma$ . The  $99\%$  VaR is  $\mu + 2.326\sigma$  while the  $97.5\%$  expected shortfall is  $\mu + 2.338\sigma$ . (See Problem 27.2.) For non-normal distributions, they are not equivalent. When the loss distribution has a heavier tail than a normal distribution, the  $97.5\%$  ES can be considerably greater than the  $99\%$  VaR.

Under FRTB, the 10-day time horizon used in Basel I and Basel II.5 is changed to reflect the liquidity of the market variable being considered. FRTB considers changes to market variables that would take place (in stressed market conditions) over periods of time reflecting their liquidity. The changes are referred to as shocks. The market variables are referred to as risk factors. The periods of time considered are referred to as liquidity horizons. Five different liquidity horizons are specified: 10 days, 20 days, 40 days, 60 days, and 120 days. The allocation of risk factors to these liquidity horizons is indicated in Table 27.1.

FRTB specifies both a standardized approach and an internal models approach for calculating market risk capital. Even when banks have been approved to use the internal models approach, they are required by regulators to calculate required capital under both approaches. This is consistent with the Basel Committee's plans to use standardized approaches to provide a floor for capital requirements. As discussed in Section 26.4, in December 2017, the Basel Committee announced a move to a situation where total required capital is at least  $72.5\%$  of that given by standardized approaches. It will achieve

Table 27.1 Allocation of Risk Factors to Liquidity Horizons

<table><tr><td>Risk Factor</td><td>Horizon (days)</td></tr><tr><td>Interest rate (dependent on currency)</td><td>10–60</td></tr><tr><td>Interest rate volatility</td><td>60</td></tr><tr><td>Credit spread: sovereign, investment grade</td><td>20</td></tr><tr><td>Credit spread: sovereign, non-investment grade</td><td>40</td></tr><tr><td>Credit spread: corporate, investment grade</td><td>40</td></tr><tr><td>Credit spread: corporate, non-investment grade</td><td>60</td></tr><tr><td>Credit spread: other</td><td>120</td></tr><tr><td>Credit spread volatility</td><td>120</td></tr><tr><td>Equity price: large cap</td><td>10</td></tr><tr><td>Equity price: small cap</td><td>20</td></tr><tr><td>Equity price: large cap volatility</td><td>20</td></tr><tr><td>Equity price: small cap volatility</td><td>60</td></tr><tr><td>Equity: other</td><td>60</td></tr><tr><td>Foreign exchange rate (dependent on currency)</td><td>10–40</td></tr><tr><td>Foreign exchange volatility</td><td>40</td></tr><tr><td>Energy price</td><td>20</td></tr><tr><td>Precious metal price</td><td>20</td></tr><tr><td>Other commodities price</td><td>60</td></tr><tr><td>Energy price volatility</td><td>60</td></tr><tr><td>Precious metal volatility</td><td>60</td></tr><tr><td>Other commodities price volatility</td><td>120</td></tr><tr><td>Commodity (other)</td><td>120</td></tr></table> this by 2028 with a five-year phase-in period. These changes are a culmination of a trend by the Basel Committee since the 2008 crisis to place less reliance on internal models and to use standardized models to provide a floor for capital requirements.

A difference between FRTB and previous market risk regulatory requirements is that most calculations are carried out at the trading desk level. Furthermore, permission to use the internal models approach is granted on a desk-by-desk basis. Therefore it is possible that, at a particular point in time, a bank's foreign currency trading desk has permission to use the internal models approach while the equity trading desk does not.

In earlier chapters, we saw how the ways in which capital is calculated for the trading book and the banking book are quite different. This potentially gives rise to regulatory arbitrage where banks choose to allocate instruments to either the trading book or the banking book so as to minimize capital. In Basel II.5, the incremental risk charge made this less attractive. FRTB counteracts regulatory arbitrage by defining more clearly than previously the differences between the two books.

# 27.2 Standardized Approach

Under the standardized approach, the capital requirement is the sum of three components: a risk charge calculated using a risk sensitivity approach, a default risk charge, and a residual risk add-on.

Consider the first component. Seven risk classes (corresponding to trading desks) are defined (general interest rate risk, foreign exchange risk, commodity risk, equity risk, and three categories of credit spread risk). Within each risk class, a delta risk charge, vega risk charge, and curvature risk charge are calculated.

The delta risk charge for a risk class is calculated using the risk weights and weighted sensitivity approach described in Section 13.6:

$$
\text {D e l t a R i s k C h a r g e} = \sum_ {i} \sum_ {j} \rho_ {i j} \delta_ {i} \delta_ {j} W _ {i} W _ {j} \tag {27.1}
$$ where the summations are taken over all risk factors in the risk class. The risk weights,  $W_{i}$ , and the correlations between risk factors,  $\rho_{ij}$ , are determined by the Basel Committee. The sensitivities (or deltas),  $\delta_{i}$ , are determined by the bank. As explained in Chapter 13, in the case of risk factors such as equity prices, exchange rates, or commodity prices, the deltas measure the sensitivity of the portfolio to percentage changes. For example, if a 1\% increase in a commodity price would increase the value of a portfolio by \$3,000, the delta would be 3,000/0.01 = 300,000. In the case of risk factors such as interest rates and credit spreads, the deltas are defined in terms of absolute changes. For example, if the effect of an interest rate increasing by one basis point (0.0001) is to reduce the value of a portfolio by \$200, the delta with respect to that interest rate would be -200/0.0001 = -2,000,000.


Consider how the risk weights,  $W_{i}$ , might be set by regulators. Suppose first that all risk factors are equity prices, exchange rates, or commodity prices, so the deltas are sensitivities to percentage changes. If  $W_{i}$  were set equal to the daily volatility of risk factor  $i$  for all  $i$ , the risk charge in equation (27.1) would equal the standard deviation of change in the value of the portfolio per day. This corresponds to the Markowitz result discussed in Chapter 1. If  $W_{i}$  were set equal to the daily volatility of risk factor  $i$  in stressed market conditions (the stressed daily volatility) for all  $i$ , equation (27.1) would give the standard deviation of the daily change of the portfolio in stressed market conditions. In practice, the  $W_{i}$  are set equal to multiples of the stressed daily volatility to reflect the liquidity horizon and the confidence level that regulators wish to consider. Suppose that the stressed daily volatility of risk factor  $i$  is estimated as  $2\%$  and that the risk factor has a 20-day liquidity horizon. The risk weight might be set as  $0.02 \times \sqrt{20} \times 2.338 = 0.209$ . (Note that the 2.338 multiplier reflects the amount by which a standard deviation has to be multiplied to get ES with a  $97.5\%$  confidence when a normal distribution is assumed.)

Now suppose that the risk factors are interest rates and credit spreads so that deltas are sensitivities with respect to actual changes measured in basis points. The  $W_{i}$  for risk factor

$i$  is set equal to a multiple of the stressed daily standard deviation for all  $i$ . If the multiple were 1, the formula would give the standard deviation of the value of the portfolio in one day. In practice the multiple is determined as just described to reflect the liquidity horizon and confidence level.

Vega risk is handled similarly to delta risk. A vega risk charge is calculated for each risk class using equation (27.1). The risk factors (counted by the  $i$  and  $j$ ) are now volatilities. The summation is taken over all volatilities in the risk class. The parameter  $\delta_{i}$  is actually a vega. It is the sensitivity of the value of the portfolio to small changes in volatility  $i$ . The parameter  $\rho_{ij}$  is the correlation between changes in volatility  $i$  and volatility  $j$ , and  $W_{i}$  is the risk weight for volatility  $i$ . The latter is determined similarly to the delta risk weights to reflect the volatility of the volatility  $i$ , its liquidity horizon, and the confidence level.

There are assumed to be no diversification benefits between risk factors in different risk classes and between the vega risks and delta risks within a risk class. The end product of the calculations we have described so far is therefore the sum of the delta risk charges across the seven risk classes plus the sum of the vega risk charges across the seven risk classes.

# 27.2.1 Term Structures

In the case of risk factors such as interest rates, volatilities, and credit spreads, there is usually a term structure defined by a number of points. For example, an interest rate term structure is sometimes defined by 10 points. These are the zero-coupon interest rates for maturities of 3 months, 6 months, 1 year, 2 years, 3 years, 5 years, 10 years, 15 years, 20 years, and 30 years. As discussed in Chapter 13, each vertex of the term structure is a separate risk factor for the purposes of using equation (27.1). The delta of a portfolio with respect to a one basis point move in one of the vertices on the term structure is calculated by increasing the position of the vertex by one basis point while making no change to the other vertices. The Basel Committee defines risk weights for each vertex of the term structure and correlations between the vertices of the same term structure.

A simplification is used when correlations between points on different term structures are defined. The correlations between point A on term structure 1 and point B on term structure 2 are assumed to be the same for all A and B. This was one of the alternatives considered in Chapter 14; see equation (14.2).

# 27.2.2 Curvature Risk Charge

The curvature risk charge is a capital charge for a bank's gamma risk exposure under the standardized approach. Consider the exposure of a portfolio to the  $i$ th risk factor. Banks are required to test the effect of increasing and decreasing the risk factor by its risk weight,  $W_{i}$ . If the portfolio is linearly dependent on the risk factor, the impact of an increase of  $W_{i}$  in the risk factor is  $W_{i}\delta_{i}$ . Similarly, the impact of a decrease of  $W_{i}$  in the risk factor is  $-\delta_{i}W_{i}$ . To evaluate the impact of curvature net of the delta effect, the standardized approach therefore calculates

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f92d6a55-cea9-43e0-894c-41ef6fed0a93/060fa638dfdb1a581a50add401ebdb5d9912d4dd925ebb668507a6679226834d.jpg)
Figure 27.1 Calculation of Curvature Risk Charge for a Risk Factor In Figure 27.1a, the curvature risk charge is AB; in Figure 27.1b, it is zero.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f92d6a55-cea9-43e0-894c-41ef6fed0a93/1c5b227605b26554a36642cb58879c906f3b4da11b05ab854457dafddff34f95.jpg)


1.  $W_{i}\delta_{i}$  minus the impact of a increase of  $W_{i}$  in the risk factor, and
2.  $-W_{i}\delta_{i}$  minus the impact of a decrease in the risk factor of  $W_{i}$ .

The curvature risk charge for the risk factor is the greater of these two. If the impact of curvature net of delta is negative, it is counted as zero. The calculation is illustrated in Figure 27.1. In Figure 27.1a, the portfolio value is currently given by point O. If there were no curvature, an increase of  $W_{i}$  in the risk factor would lead to the portfolio value at point C, whereas a decrease of  $W_{i}$  in the risk factor would lead to the portfolio value at point A. Because of curvature, an increase of  $W_{i}$  leads to the portfolio value at point D, and a decrease of  $W_{i}$  leads to the portfolio value at point B. Since AB > CD, the risk charge is AB. In Figure 27.1b, the risk charge is zero because curvature actually increases the value of the position (relative to what delta would suggest) for both increases and decreases in the risk factor. (Figure 27.1a could correspond to a short position in an option; Figure 27.1b could correspond to a long position in an option.)

When there are several risk factors, each is handled similarly to Figure 27.1. When there is a term structure (e.g., for interest rates, credit spreads, and volatilities), all points are shifted by the same amount for the purpose of calculating the effect of curvature. The shift is the largest  $W_{i}$  for the points on the term structure. In the case of an interest rate term structure, the  $W_{i}$  corresponding to the three-month vertex might be the largest  $W_{i}$ , so this would define an upward and downward parallel shift in the term structure. The delta effect is removed for each point on the term structure by using the  $\delta_{i}$  for that point.

The curvature risk charges for different risk factors are combined to determine a total curvature risk charge. When diversification benefits are allowed, aggregation formulas broadly similar to those used for deltas are used with correlations specified by the Basel Committee.

# 27.2.3 Default Risk Charge

Risks associated with counterparty credit spread changes are handled separately from risks associated with counterparty defaults in FRTB. In the standardized approach, credit spread risks are handled using the delta/vega/curvature approach described earlier. Default risks, sometimes referred to as jump-to-default (JTD) risks, are handled by a separate default risk charge. This is calculated by multiplying each exposure by a loss given default (LGD) and a default risk weight. Both the LGD and the risk weight are specified by the Basel Committee. For example, the LGD for senior debt is specified as  $75\%$  and the default risk weight for a counterparty rated A is  $3\%$ . Equity positions are subject to a default risk charge with an LGD = 100\%. Rules for offsetting exposures are specified.

# 27.2.4 Residual Risk Add-On

The residual risk add-on considers risks that cannot be handled by the delta/vega/curvature approach described earlier. It includes exotic options when they cannot be considered as linear combinations of plain vanilla options. The add-on is calculated by multiplying the notional amount of the transaction by a risk weight that is specified by the Basel Committee. In the case of exotic options the risk weight is  $1\%$ .

# 27.2.5 A Simplified Approach

In this section, we have described the standardized approach that the Basel Committee requires all large banks to use. In June 2017 the Basel Committee published a consultative document outlining a simplified standardized approach that it proposes for smaller banks. This has been included in the final January 2019 document. The full approach is simplified in a number of ways. For example, vega and gamma risk do not have to be considered. This should make FRTB more attractive to jurisdictions such as the United States that have many small banks that tend to enter into only relatively simple transactions.

# 27.3 Internal Models Approach

The internal models approach requires banks to estimate stressed ES with a  $97.5\%$  confidence. FRTB does not prescribe a particular method for doing this. Typically the historical simulation approach described in Chapter 12 is likely to be used. Risk factors are allocated to liquidity horizons as indicated in Table 27.1. Define:

Category 1 Risk Factors: Risk factors with a time horizon of 10 days
Category 2 Risk Factors: Risk factors with a time horizon of 20 days
Category 3 Risk Factors: Risk factors with a time horizon of 40 days
Category 4 Risk Factors: Risk factors with a time horizon of 60 days
Category 5 Risk Factors: Risk factors with a time horizon of 120 days

As we shall see, all calculations are based on considering 10-day changes in the risk factors. In Basel I and Basel II.5, banks are allowed to deduce the impact of 10-day changes from the impact of one-day changes using a  $\sqrt{10}$  multiplier. In FRTB, banks are required to consider changes over periods of 10 days that occurred during a stressed period in the past. Econometricians naturally prefer that non-overlapping periods be used when VaR or ES is being estimated using historical simulation, because they want observations on the losses to be independent. However, this is not feasible when 10-day changes are considered, because it would require a very long historical period. FRTB requires banks to base their estimates on overlapping 10-day periods. The first simulation trial assumes that the percentage changes in all risk factors over the next 10 days will be the same as their changes between Day 0 and Day 10 of the stressed period; the second simulation trial assumes that the percentage changes in all risk factors over the next 10 days will be the same as their changes between Day 1 and Day 11 of the stressed period; and so on.

Banks are first required to calculate ES when 10-day changes are made to all risk factors. (We will denote this by  $\mathrm{ES}_1$ .) They are then required to calculate ES when 10-day changes are made to all risk factors in categories 2 and above with risk factors in category 1 being kept constant. (We will denote this by  $\mathrm{ES}_2$ .) They are then required to calculate ES when 10-day changes are made to all risk factors in categories 3, 4, and 5 with risk factors in categories 1 and 2 being kept constant. (We will denote this by  $\mathrm{ES}_3$ .) They are then required to calculate ES when 10-day changes are made to all risk factors in categories 4 and 5 with risk factors in categories 1, 2, and 3 being kept constant. (We will denote this by  $\mathrm{ES}_4$ .) Finally, they are required to calculate  $\mathrm{ES}_5$ , which is the effect of making 10-day changes only to category 5 risk factors.

The liquidity-adjusted ES is calculated as

$$

\sqrt {\mathrm {E S} _ {1} {} ^ {2} + \sum_ {j = 2} ^ {5} \left(\mathrm {E S} _ {j} \sqrt {\frac {\mathrm {L H} _ {j} - \mathrm {L H} _ {j - 1}}{1 0}}\right) ^ {2}} \tag {27.2}

$$ where  $\mathrm{LH}_j$  is the liquidity horizon for category  $j$ . To understand equation (27.2), suppose first that all risk factors are in category 1 or 2 so that only  $\mathrm{ES}_1$  and  $\mathrm{ES}_2$  are calculated. It is assumed that the behavior of all risk factors during a 10-day period is independent of the behavior of category 2 risk factors during a further 10-day period. An extension of the square root rule discussed in Chapter 12 then leads to the liquidity-adjusted ES being

$$
\sqrt {\mathrm {E S} _ {1} ^ {2} + \mathrm {E S} _ {2} ^ {2}}
$$

Now suppose that there are also category 3 risk factors. The expression  $\sqrt{\mathrm{ES}_1^2 + \mathrm{ES}_2^2}$  would be correct if the category 3 risk factors had a 20-day instead of a 40-day liquidity horizon. We assume that the behavior of the category 3 risk factors over an additional 20 days is independent of the behavior of all the risk factors over the periods already considered. We also assume that the ES for the category 3 risk factors over 20 days is  $\sqrt{2}$  times their ES over 10 days. This leads to a liquidity-adjusted ES of:

$$
\sqrt {\mathrm {E S} _ {1} ^ {2} + \mathrm {E S} _ {2} ^ {2} + 2 \mathrm {E S} _ {3} ^ {2}}
$$

Continuing in this way, we obtain equation (27.2). This is referred to as the cascade approach to calculating ES (and can be used for VaR as well).

Calculations are carried out for each desk. If there are six desks, this means the internal models approach, as we have described it so far, requires  $5 \times 6 = 30$  ES calculations. As mentioned, the use of overlapping time periods is less than ideal because changes in successive historical simulation trials are not independent. This does not bias the results, but it reduces the effective sample size, making results more noisy than they would otherwise be.

FRTB represents a movement away from basing calculations on one-day changes. Presumably the Basel Committee has decided that, in spite of the lack of independence of observations, a measure calculated from 10-day changes provides more relevant information than a measure calculated from one-day changes. This could be the case if changes on successive days are not independent, but changes in successive 10-day periods can reasonably be assumed to be independent.

The calculation of a stressed measure (VaR or ES) requires banks to search for the period in the past when market variable changes would be worst for their current portfolio. (The search must go back as far as 2007.) When Basel II.5 was implemented, a problem was encountered in that banks found that historical data were not available for some of their current risk factors. It was therefore not possible to know how these risk factors would have behaved during the 250-day periods in the past that were candidates for the reference stressed period. FRTB handles this by allowing the search for stressed periods to involve a subset of risk factors, provided that at least  $75\%$  of the current risk factors are used. The expected shortfalls that are calculated are scaled up by the ratio of ES for the most recent 12 months using all risk factors to ES for the most recent 12 months using the subset of risk factors. (This potentially doubles the number of ES calculations from 30 to 60.)

Banks are required to calculate ES for the whole portfolio as well for each of six trading desks. The ES for a trading desk is referred to as a partial expected shortfall. It is determined by shocking the risk factors belonging to the trading desk while keeping all other risk factors fixed. The sum of the partial expected shortfalls is always greater than the ES for the whole portfolio. What we will refer to as the weighted expected shortfall (WES) is a weighted average of (a) the ES for the whole portfolio and (b) the sum of the partial expected shortfalls. Specifically:

$$
\mathrm {W E S} = \lambda \times \mathrm {E S T} + (1 - \lambda) \times \sum_ {j} \mathrm {E S P} _ {j}
$$ where EST is the expected shortfall calculated for the total portfolio and  $\mathrm{ESP}_j$  is the  $j$ th partial expected shortfall. The parameter  $\lambda$  is set by the Basel Committee to be 0.5.


Some risk factors are categorized as non-modelable. Specifically, if there are less than 24 observations on a risk factor in a year or more than one month between successive observations, the risk factor is classified as non-modelable. Such risk factors are handled by special rules involving stress tests.

The total capital requirement for day  $t$  is

$$

\max  \left(\mathrm {W E S} _ {t - 1} + \mathrm {N M C} _ {t - 1}, m _ {c} \times \mathrm {W E S} _ {\text {a v g}} + \mathrm {N M C} _ {\text {a v g}}\right)

$$ where  $\mathrm{WES}_{t-1}$  is the WES for day  $t-1$ ,  $\mathrm{NMC}_{t-1}$  is the capital charge calculated for non-modelable risk factors on day  $t-1$ ,  $\mathrm{WES}_{\mathrm{avg}}$  is the average WES for the previous 60 days, and  $\mathrm{NMC}_{\mathrm{avg}}$  is the average capital charge calculated for the non-modelable risk factors over the previous 60 days. The parameter  $m_c$  is at minimum 1.5.

# 27.3.1 Back-Testing

FRTB does not back-test the stressed ES measures that are used to calculate capital under the internal models approach for two reasons. First, it is more difficult to back-test ES than VaR. Second, it is not possible to back-test a stressed measure at all. The stressed data upon which a stressed measure is based are extreme data that statistically speaking are not expected to be observed with the same frequency in the future as they were during the stressed period.

FRTB back-tests a bank's models by asking each trading desk to back-test a VaR measure calculated over a one-day horizon and the most recent 12 months of data. Both  $99\%$  and  $97.5\%$  confidence levels are to be used. If there are more than 12 exceptions for the  $99\%$  VaR or more than 30 exceptions for the  $97.5\%$  VaR, the trading desk is required to calculate capital using the standardized approach until neither of these two conditions continues to exist.

Banks may be asked by regulators to carry out other back-tests. Some of these could involve calculating the  $p$ -value of the profit or loss on each day. This is the probability of observing a profit that is less than the actual profit or a loss that is greater than the actual loss. If the model is working perfectly, the  $p$ -values obtained should be uniformly distributed.

# 27.3.2 Profit and Loss Attribution

Another test used by the regulators is known as profit and loss attribution. Banks are required to compare the actual profit or loss in a day with that predicted by their models. Two measures must be calculated. The measures are:

Mean of  $U$  Standard Deviation of  $V$

Variance of  $U$  Variance of  $V$ where  $U$  denotes the difference between the actual and model profit/loss in a day and  $V$  denotes the actual profit/loss in a day. Regulators expect the first measure to be between  $-10\%$  and  $+10\%$  and the second measure to be less than  $20\%$ . When there are four or more situations in a 12-month period where the ratios are outside these ranges, the desk must use the standardized approach for determining capital.

# 27.3.3 Credit Risk

As mentioned, FRTB distinguishes two types of credit risk exposure to a company:

1. Credit spread risk is the risk that the company's credit spread will change, causing the mark-to-market value of the instrument to change.
2. Jump-to-default risk is the risk that there will be a default by the company.

Under the internal models approach, the credit spread risk is handled in a similar way to market risks. Table 27.1 shows that the liquidity horizon for credit spread varies from 20 to 120 days and the liquidity horizon for a credit spread volatility is 120 days. The jump-to-default risk is handled in the same way as default risks in the banking book. In the internal models approach, the capital charge is based on a VaR calculation with a one-year time horizon and a  $99.9\%$  confidence level.

# 27.3.4 Securitizations

The comprehensive risk measure (CRM) charge was introduced in Basel II.5 to cover the risks in products created by securitizations such as asset-backed securities and collateralized debt obligations (see Section 26.1). The CRM rules allow a bank (with regulatory approval) to use its own models. The Basel Committee has concluded that this is unsatisfactory because there is too much variation in the capital charges calculated by different banks for the same portfolio. It has therefore decided that under FRTB the standardized approach must be used for securitizations.

# 27.4 Trading Book vs. Banking Book

The FRTB addresses whether instruments should be put in the trading book or the banking book. Roughly speaking, the trading book consists of instruments that the bank intends to trade. The banking book consists of instruments that are expected to be held to maturity. Instruments in the banking book are subject to credit risk capital whereas those in the trading book are subject to market risk capital. The two sorts of capital are calculated in quite different ways. This has in the past given rise to regulatory arbitrage. For example, as we have mentioned in earlier chapters, banks have often chosen to hold credit-dependent instruments in the trading book because they are then subject to less regulatory capital than they would be if they had been placed in the banking book.

The FRTB attempts to make the distinction between the trading book and the banking book clearer and less subjective. To be in the trading book, it will no longer be sufficient for a bank to have an "intent to trade." It must be able to trade and manage the underlying risks on a trading desk. The day-to-day changes in value should affect equity and pose risks to solvency. The FRTB provides rules for determining for different types of instruments whether they should be placed in the trading book or the banking book.

An important point is that instruments are assigned to the banking book or the trading book when they are initiated and there are strict rules preventing them from being subsequently moved between the two books. Transfers from one book to another can happen only in extraordinary circumstances. (Examples given of extraordinary circumstances are the closing of trading desks and a change in accounting standards with regard to the recognition of fair value.) Any capital benefit as a result of moving items between the books will be disallowed.

# Summary

FRTB is a major change to the way capital is calculated for market risk. After over 20 years of using VaR with a 10-day time horizon and  $99\%$  confidence to determine market risk capital, regulators are switching to using ES with a  $97.5\%$  confidence level and varying time horizons. The time horizons, which can be as high as 120 days, are designed to incorporate liquidity considerations into the capital calculations. The change that is considered to a risk factor when capital is calculated reflects movements in the risk factor over a period of time equal to the liquidity horizon in stressed market conditions.

The Basel Committee has specified a standardized approach and an internal models approach. Even when they have been approved by their supervisors to use the internal models approach, banks must also implement the standardized approach. Regulatory capital under the standardized approach is based on formulas involving the delta, vega, and gamma exposures of the trading book. Regulatory capital under the internal models approach is based on the calculation of stressed expected shortfall. Calculations are carried out separately for each trading desk.

# Further Reading

Bank for International Settlements. "Minimum Capital Requirements for Market Risk," January 2019.

# Practice Questions and Problems (Answers at End of Book)

27.1 Outline the differences between the way market risk capital is calculated in (a) Basel I, (b) Basel II.5, and (c) the FRTB.
27.2 Use footnote 4 to verify that when losses have a normal distribution with mean  $\mu$  and standard deviation  $\sigma$  the  $97.5\%$  expected shortfall is  $\mu + 2.338\sigma$ .

27.3 Explain why the use of overlapping time periods proposed by the FRTB does not give independent observations on the changes in variables.
27.4 What are the advantages of expected shortfall over value at risk?
27.5 What is the difference between the trading book and the banking book? Why are regulators concerned about specifying whether an instrument should be one or the other in the FRTB?
27.6 How are credit trades handled under the FRTB?

# Further Question

27.7 Suppose that an investor owns the 10 million portfolio in Table 12.1 on July 8, 2020. Suppose that the 250 days ending April 30, 2020, constitute the stressed period for the portfolio. Calculate the 97.5\% expected shortfall using the overlapping periods method in conjunction with historical simulation and the cascade approach. Relevant data on the indices is on the author's website (see "Worksheet for Value at Risk Example"). For the purposes of this problem, assume that S&P 500 and FTSE have a 10-day liquidity horizon, CAC 40 has a 40-day liquidity horizon, and Nikkei 225 has a 20-day liquidity horizon. For each day during the stressed period, consider the change in a variable over a 10-day period ending on the day.


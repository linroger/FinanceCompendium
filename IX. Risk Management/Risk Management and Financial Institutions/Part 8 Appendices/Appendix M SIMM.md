---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Appendix M
linter-yaml-title-alias: Appendix M
---

# Appendix M

# SIMM

As discussed in Chapter 6, some standard OTC derivatives transactions are cleared through CCPs and some continue to be cleared bilaterally. Regulators require initial and variation margin to be posted for bilaterally cleared transactions. The variation margin requires agreement on the valuation of outstanding transactions, and procedures have been established for resolving any disagreements on this. The calculation of initial margin is more complicated than valuing the transactions and there is more scope for different models to give different results. As a result there have been attempts to develop an industry standard.

Initial margin is specified in the regulations for portfolios of uncleared transactions between two parties as the gain in value over 10 days that we are  $99\%$  certain will not be exceeded in stressed market conditions. Note that initial margin is the mirror image of VaR. When we are calculating VaR, we are determining extreme percentiles of the loss distribution, but when we are calculating initial margin we are determining extreme percentiles of the gain distribution. This is because exposure increases as the uncollateralized value of a portfolio increases.

The Basel Committee proposed a grid approach for calculating initial margin, which specified initial margin as a percentage of notional principal for different types of transactions. This was unpopular because it did not incorporate netting. If a market participant entered into a certain transaction on Day 1 and an almost offsetting transaction on Day 5, both with the same counterparty, the initial margin on Day 5 would be almost double that on Day 1—even though the net exposure to the counterparty would be close to zero. ISDA proposed what is known as the Standard Initial Margin Model (SIMM) as a way of overcoming this. This model has now been approved by regulators. $^{1}$

The contributions of delta and vega to the initial margin is handled using the weighted sensitivity approach in Section 13.5. They are each calculated as:

$$
\sqrt {\sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} \delta_ {i} \delta_ {j} \rho_ {i j} W _ {i} W _ {j}}
$$ where the  $W_{i}$  is the risk weight for risk factor  $i$  (specified by the regulators),  $\delta_{i}$  is the sensitivity of the position held to risk factor  $i$  (determined by the bank), and  $\rho_{ij}$  is the correlation between risk factors  $i$  and  $j$  (specified by the regulators). Because a 10-day time horizon with  $99\%$  confidence is used, a possible formula for  $W_{i}$  is


$$

W _ {i} = \sqrt {1 0} \times N ^ {- 1} (0. 9 9) \sigma_ {i} \tag {M.1}

$$ where  $\sigma_{i}$  is the daily volatility (or standard deviation, in the case of interest rates, credit spreads, and volatilities) of the  $i$ th risk factor in stressed market conditions.

To calculate the incremental effect on initial margin of gamma risk, SIMM considers the situation where all deltas are zero and there is no cross gamma. From the results in Section 15.11.2 it can be seen that the mean and standard deviation of the change in the value of the portfolio over one day are:

$$
E (\Delta P) = \frac {1}{2} \sum_ {i} \gamma_ {i} \sigma_ {i} ^ {2}
$$

$$
S D (\Delta P) = \sqrt {\frac {1}{2} \sum_ {i , j} \rho_ {i j} ^ {2} \gamma_ {i} \gamma_ {j} \sigma_ {i} ^ {2} \sigma_ {j} ^ {2}} \tag {M.2}
$$ where  $\gamma_{i}$  is the gamma with respect to the ith risk factor.


Estimates of the mean and standard deviation of portfolio change over 10 days are obtained by replacing  $\sigma_{i}$  with  $\sqrt{10}\sigma_{i}$ . Defining

$$

C _ {i} = \frac {1}{2} \gamma_ {i} (\sqrt {1 0} \sigma_ {i}) ^ {2}

$$ the mean,  $m$ , and standard deviation,  $s$ , of the 10-day change are therefore given by

$$ m = \sum_ {i} C _ {i}
$$

$$ s ^ {2} = 2 \sum_ {i, j} \rho_ {i j} ^ {2} C _ {i} C _ {j} \tag {M.3}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f92d6a55-cea9-43e0-894c-41ef6fed0a93/d694ae9f7557b9c5ea1c2cd7961663596a58ca4511f77c5f59dd14ae3bc7ed0c.jpg)

Figure M.1 Relation between  $\lambda$  and  $\beta$

SIMM then sets

$$
\mathrm {I M} (\mathrm {G a m m a}) = m + \lambda s / \sqrt {2}
$$

The parameter  $\lambda$  in this equation is defined in terms of

$$
\beta = \frac {\sum_ {i} C _ {i}}{\sum_ {i} | C _ {i} |}
$$ as indicated in Figure M.1. This relationship produces results that have the right properties and correspond closely with tests carried out using Monte Carlo simulation.


There are a number of other details in SIMM. To simplify matters, gamma is calculated from vega using the relationship between the two that holds for European options. Risk factors are divided into buckets, and some risk factors involve term structures with vertices and are handled as we have described in Chapter 14. There are rules specified for calculating the correlations  $\rho_{ij}$  both within buckets and between buckets.


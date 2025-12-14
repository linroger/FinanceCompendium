---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Chapter 28
linter-yaml-title-alias: Chapter 28
---

# Chapter 28

# Economic Capital and RAROC

Economic capital (sometimes referred to as risk capital) is a financial institution's own internal estimate of the capital it needs for the risks it is taking. It is different from regulatory capital, which tends to be based on one-size-fits-all rules. Economic capital can be regarded as a "currency" for risk-taking within a financial institution. A business unit can take a certain risk only when it is allocated the appropriate economic capital for that risk. The profitability of a business unit is measured relative to the economic capital allocated to the unit.

In this chapter, we discuss the approaches a financial institution uses to arrive at estimates of economic capital for particular risk types and particular business units, and how these estimates are aggregated to produce a single economic capital estimate for the whole financial institution. We also discuss risk-adjusted return on capital, or RAROC. This is the return earned by a business unit on the capital assigned to it. RAROC can be used to assess the past performance of business units. It can also be used to forecast future performance of the units and decide on the most appropriate way of allocating capital in the future. It provides a basis for determining whether some activities should be discontinued and others expanded.

# 28.1 Definition of Economic Capital

Economic capital is usually defined as the amount of capital a financial institution needs in order to absorb losses over one year with a certain confidence level. The confidence level is therefore the probability that the bank's losses will not exceed the economic capital in one year. The confidence level depends on the financial institution's objectives. A common objective for a large international bank is to maintain a AA credit rating. Corporations rated AA have a one-year probability of default of about  $0.02\%$ . This suggests that the confidence level should be set as high as  $99.98\%$  for economic capital to be a guide as to what is necessary to maintain a AA rating. The probability that capital will be insufficient to absorb losses so that a default results is then the required  $0.02\%$ . For a bank wanting to maintain a BBB credit rating, the confidence level can be lower. A BBB-rated corporation has a probability of about  $0.2\%$  of defaulting in one year, so that a confidence level of  $99.8\%$  gives the capital necessary to maintain a BBB rating.

Capital is required to cover unexpected loss. This is defined as the difference between the actual loss and the expected loss. As explained in Chapter 25, the idea here is that expected losses should be taken account of in the way a financial institution prices its products so that only unexpected losses require capital. As indicated in Figure 28.1, the economic capital is the difference between expected loss and the  $X$  percentile point on the probability distribution of the loss, where  $X\%$  is the confidence level.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f92d6a55-cea9-43e0-894c-41ef6fed0a93/f0419c7b35bfa0569b8482b63bfe3cba37fac2e96d4ae2e66e690471069f8d54.jpg)

Figure 28.1 Calculation of Economic Capital from One-Year Loss Distribution  $X\%$  is the confidence level.

# Example 28.1

Suppose that the main business of an AA-rated bank is lending in a certain region of the world. The bank estimates its losses as  $1\%$  of outstanding loan principal per year on average. The one-year  $99.98\%$  VaR is estimated as  $5\%$  of the outstanding loan principal. The economic capital required per  $\$ 100$  of loans made is therefore  $\$ 4$ . (This is the difference between the one year  $99.98\%$  VaR and the expected loss.)

# 28.1.1 Approaches to Measurement

There are two broad approaches to measuring economic capital: the "top-down" and "bottom-up" approaches. In the top-down approach, the volatility of the financial institution's assets is estimated and then used to calculate the probability that the value of the assets will fall below the value of the liabilities by the end of the time horizon. A theoretical framework that can be used for the top-down approach is Merton's model, which was discussed in Section 17.8.

The approach most often used is the bottom-up approach where loss distributions are estimated for different types of risk and different business units and then aggregated. The first step in the aggregation can be to calculate probability distributions for losses by risk type or losses by business unit. A final aggregation gives a probability distribution of total losses for the whole financial institution.

The various risks facing a bank or other financial institution are summarized in Figure 28.2. As we saw in Chapter 20, bank regulators have chosen to define operational risk as: "The risk of loss resulting from inadequate or failed internal processes, people, and systems or from external events." Operational risk includes model risk and legal risk, but it does not include risk arising from strategic decisions and reputational risk. We will collectively refer to the latter risks as business risk. Regulatory capital is not required for business risk, but some banks do assess economic capital for it.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f92d6a55-cea9-43e0-894c-41ef6fed0a93/fb0ec98a47d5c0da95d67624bff18877e50d070e570f30c1520d4b01f5d65ada.jpg)

Figure 28.2 Categorization of Risks Faced by a Bank and Regulatory Capital Requirements

# 28.2 Components of Economic Capital

In earlier chapters, we covered approaches used to calculate loss distributions for different types of risk. This section reviews some of the key issues.

# 28.2.1 Market Risk Economic Capital

In Chapters 12 and 13, we discussed the historical simulation and model-building approaches for estimating the probability distribution of losses or gains from market risk. As explained, this distribution is usually calculated in the first instance with a one-day time horizon. Regulatory capital for market risk in Basel I and Basel II.5 is calculated from 10-day  $99\%$  VaR estimates. In FRTB, as described in Chapter 27, ES is used with time horizons determined by liquidity.

When calculating economic capital, we usually want to use the same time horizon and confidence level for all risks. The time horizon is usually one year and, as already discussed, the confidence level can be as high as  $99.98\%$ . Simple assumptions are (a) that the probability distributions of gains and losses for each day during the year are the same and (b) that the distributions are independent. The one-year loss or gain distribution is then approximately normal. Assuming 252 business days in the year, the standard deviation of the one-year loss or gain equals the standard deviation of the daily loss or gain multiplied by  $\sqrt{252}$ . If the average loss is zero, the  $99.98\%$  VaR is then 3.54 times the standard deviation of the one-year loss or gain. The  $99.8\%$  VaR is 2.88 times the standard deviation of the one-year loss or gain. Note that we are not assuming that the daily losses or gains are normal. All we are assuming is that they are independent and identically distributed. The central limit theorem of statistics tells us that the sum of many independent identically distributed variables is approximately normal.

# Example 28.2

Suppose that the one-day standard deviation of market risk losses or gains for a bank is $5 million. The one-year 99.8\% VaR is 2.88 × √252 × 5 = 228.6 or $228.6 million.

In practice, the losses (gains) on different days are not perfectly independent and identically distributed. The independence assumption can be relaxed by assuming a constant autocorrelation between the returns on successive days. This allows the result in equation (11.5) to be used and, providing the autocorrelation is not too large, the loss (gain) in a year can still be assumed to be approximately normal. Sometimes, it may be appropriate to develop a more elaborate model of how the standard deviation of the daily loss (gain) evolves through time. Monte Carlo simulation can then be used to aggregate the daily distributions and the result may not then be a normal distribution.

# 28.2.2 Credit Risk Economic Capital

Although Basel II gives banks that use the internal-ratings-based approach for regulatory capital a great deal of freedom, it does not allow them to choose their own credit correlation model and correlation parameters. When calculating economic capital, banks are free to make the assumptions they consider most appropriate for their situation. Credit-Metrics, which is explained in Section 19.4, is a popular approach for calculating credit risk economic capital.

Another approach that has been proposed is Credit Risk Plus, which is described in Section 19.3. This approach borrows a number of ideas from actuarial science to calculate a probability distribution for losses from defaults. Whereas CreditMetrics calculates the loss from downgrades and defaults, Credit Risk Plus calculates losses from defaults only.

In calculating credit risk economic capital, a financial institution can choose to adopt a conditional or unconditional model. In a conditional (cycle-specific) model, the expected and unexpected losses take account of current economic conditions. In an unconditional (cycle-neutral) model, they are calculated by assuming economic conditions that are in some sense an average of those experienced through the cycle. Rating agencies aim to produce ratings that are unconditional. In addition, when regulatory capital is calculated using the internal-ratings-based approach, the PD and LGD estimates should be unconditional. Obviously, it is important to be consistent when economic capital is calculated. If expected losses are conditional, unexpected losses should also be conditional. If expected losses are unconditional, the same should be true of unexpected losses.

Whatever the approach used, a Monte Carlo simulation is usually necessary to calculate the probability distribution of credit losses. As explained in Chapters 20 and 21, derivatives complicate the calculations because of the uncertainty about the exposure at the time of a default or downgrade.

# 28.2.3 Operational Risk Economic Capital

The procedure used by bank regulators for operational risk is described in Section 20.4. Many banks are likely to choose this approach for economic capital. But some may attempt to use more sophisticated models that lead to a complete distribution of losses being estimated.

# 28.2.4 Business Risk Economic Capital

As mentioned earlier, business risk includes strategic risk (relating to a bank's decision to enter new markets and develop new products) and reputational risk. Business risk is even more difficult to quantify than operational risk and estimates are likely to be largely subjective. However, attempting to quantify business risk can be a useful exercise, as it can lead to risk managers within a financial institution acquiring a good understanding of the portfolio of business risks being taken. This enables them to assess the marginal impact on total risk of new strategic initiatives that are being contemplated.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f92d6a55-cea9-43e0-894c-41ef6fed0a93/f871335139265ca39979a43a48fcce360b51cf9a01d377f5d16a297f5e04a13e.jpg)

Figure 28.3 Loss Probability Density Function for Market Risk

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f92d6a55-cea9-43e0-894c-41ef6fed0a93/7d5eaf083b38e99dac3d8a66ffc0bb01ab405db99854724bdae452aeeb8c7569.jpg)

Figure 28.4 Loss Probability Density Function for Credit Risk

# 28.3 Shapes of the Loss Distributions

The loss probability distributions for market, credit, and operational risk are very different. Rosenberg and Schuermann (2004) used data from a variety of different sources to estimate typical shapes for these distributions. These are shown in Figures 28.3 to 28.5. The market risk loss distribution (see Figure 28.3) is symmetrical but not perfectly normally distributed. A  $t$ -distribution with 11 degrees of freedom has been shown to provide a good fit. The credit risk loss distribution in Figure 28.4 is quite skewed, as one would expect. The operational risk distribution in Figure 28.5 has a quite extreme shape. Most of the time, losses are modest, but occasionally they are very large.

We can characterize a distribution by its second, third, and fourth moments. Loosely speaking, the second moment measures standard deviation (or variance), the

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f92d6a55-cea9-43e0-894c-41ef6fed0a93/0e0aac0c3676d81e06cef1263d77bf8fb29ddf58b53b38e614f9d6e4626be691.jpg)

Figure 28.5 Loss Probability Density Function for Operational Risk

Table 28.1 Characteristics of Loss Distributions for Different Risk Types

<table><tr><td></td><td>Second Moment (standard deviation)</td><td>Third Moment (skewness)</td><td>Fourth Moment (kurtosis)</td></tr><tr><td>Market risk</td><td>High</td><td>Zero</td><td>Low</td></tr><tr><td>Credit risk</td><td>Moderate</td><td>Moderate</td><td>Moderate</td></tr><tr><td>Operational risk</td><td>Low</td><td>High</td><td>High</td></tr></table> third moment measures skewness, and the fourth moment measures kurtosis (i.e., the heaviness of tails). Table 28.1 summarizes the properties of typical loss distributions for market, credit, and operational risk.

# 28.4 Relative Importance of Risks

The relative importance of different types of risk depends on the business mix. Credit risk is important in commercial lending, retail lending, and a financial institution's derivatives business. Market risk is important in trading and some investment banking activities. But as mentioned in Chapter 20, operational risk (particularly cyber risk, legal risk, and compliance risk) is now considered by many observers to be the most important risk for financial institutions.

Operational risk has always been considered to be the most important risk in asset management. If the asset manager is found to be negligent in some way, there are liable to be expensive investor lawsuits. Business Snapshot 28.1 gives one example of this. Another high-profile example is provided by Unilever's pension plan. Mercury Asset Management, owned by Merrill Lynch, pledged not to underperform a benchmark index by more than  $3\%$ . Between January 1997 and March 1998, it underperformed the index by  $10.5\%$ . Unilever sued Merrill Lynch for $185 million and the matter was settled out of court. The Spanish bank Santander incurred operational risk losses in 2009 on funds it managed for investors and placed with Bernard Madoff, who, it transpired, was running a $50 billion Ponzi scheme.

# BUSINESS SNAPSHOT 28.1

# The EGT Fund

In 1996, Peter Young was fund manager at Deutsche Morgan Grenfell, a subsidiary of Deutsche Bank. He was responsible for managing a fund called the European Growth Trust (EGT). It had grown to be a very large fund and Young had responsibilities for managing over one billion pounds of investors' money.

Certain rules applied to EGT. One of these was that no more than  $10\%$  of the fund could be invested in unlisted securities. Peter Young violated this rule in a way that it can be argued benefited him personally. When the facts were uncovered, he was fired and Deutsche Bank had to compensate investors. The total cost to Deutsche Bank was over 200 million pounds.

# 28.4.1 Interactions between Risks

There are interactions between the different types of risks. If a financial institution's counterparty defaults, credit risk exists only if market variables have moved so that the uncollateralized value of the derivative to the financial institution is positive. Another interaction is that the probability of default by a counterparty may depend on the value of a financial institution's contract (or contracts) with the counterparty. This is the wrong-way issue discussed in Chapter 18. If the counterparty has entered into the contract for hedging purposes, the dependence should be small. However, if the contract has been entered into for speculative purposes and the contract is large in relation to the size of the counterparty, the dependence is likely to be important.

As the Long-Term Capital Management saga clearly shows, there can be interactions between liquidity risks and market risks (see Business Snapshot 16.1). There are also interactions between operational risks and market risks. It is unlikely that we would know about the activities of Jérôme Kerviel at Société Générale if he had guessed right about market movements (see Business Snapshot 5.5). Similarly, we are unlikely to hear about a violation of the rules for a fund (such as the one in Business Snapshot 28.1) if the violation leads to a gain rather than a loss.

# 28.5 Aggregating Economic Capital

A financial institution typically calculates market, credit, operational, and (possibly) business risk loss distributions for a number of different business units. It is then faced with the problem of aggregating the loss distributions to calculate a total economic capital for the whole enterprise.

The simplest approach is to assume that the total economic capital for a set of  $n$  different risks is the sum of the economic capital amounts for each risk considered separately, so that

$$
E _ {\text {t o t a l}} = \sum_ {i = 1} ^ {n} E _ {i} \tag {28.1}
$$ where  $E_{\mathrm{total}}$  is the total economic capital for the financial institution facing  $n$  different risks and  $E_{i}$  is the economic capital for the  $i$ th risk considered on its own. This is what the Basel Committee does for regulatory capital. The total regulatory capital a bank is required to keep is the sum of the regulatory capital amounts for credit, market, and operational risks.


Equation (28.1) is clearly a very conservative assumption. It assumes perfect correlation. In the context of economic capital calculations where the confidence level is, say,  $99.9\%$ , it would mean that, if the market risk loss for a financial institution is in the extreme  $0.1\%$  tail of the distribution, the same is true for the credit risk loss and the operational risk loss. Rosenberg and Schuermann estimate the correlation between market risk and credit risk to be approximately  $50\%$  and the correlation between each of these risks and operational risk to be approximately  $20\%$ . They estimate that equation (28.1) when used as a way of aggregating market, credit, and operational risks overstates the total capital required by about  $40\%$ .

# 28.5.1 Assuming Normal Distributions

A simple assumption when aggregating loss distributions is that they are normally distributed. The standard deviation of the total loss from  $n$  sources of risk is then

$$

\sigma_ {\text {t o t a l}} = \sqrt {\sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} \sigma_ {i} \sigma_ {j} \rho_ {i j}} \tag {28.2}

$$ where  $\sigma_{i}$  is the standard deviation of the loss from the  $i$ th source of risk and  $\rho_{ij}$  is the correlation between risk  $i$  and risk  $j$ . The capital requirement can be calculated from this. For example, the excess of the  $99.9\%$  VaR over the expected loss is 3.09 times the number calculated in equation (28.2).

This approach tends to underestimate the capital requirement because it takes no account of the skewness and kurtosis of the loss distributions. Rosenberg and Schuermann estimate that, when the approach is applied to aggregating market, credit, and operational risks, the total capital is underestimated by about  $40\%$ .

# 28.5.2 Using Copulas

A more sophisticated approach to aggregating loss distributions is by using copulas. Copulas were discussed in Chapter 9. Each loss distribution is mapped on a percentile to percentile basis to a standard well-behaved distribution. A correlation structure between the standard distributions is defined and this indirectly defines a correlation structure between the original distributions.

Many different copulas can be defined. The simplest is the Gaussian copula, where the standard distributions are assumed to be multivariate normal. Other alternatives, with more tail correlation, are explained in Section 9.5.

# 28.5.3 The Hybrid Approach

The approach in Section 11.9 for aggregating VaR is a popular approach for aggregating economic capital estimates. It is sometimes referred to as the hybrid approach. It involves calculating the economic capital for a portfolio of risks from the economic capital for the individual risks using

$$
E _ {\text {t o t a l}} = \sqrt {\sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} E _ {i} E _ {j} \rho_ {i j}} \tag {28.3}
$$

When the distributions are normal, this approach is exactly correct. When distributions are non-normal, the hybrid approach gives an approximate answer—but one that reflects any heaviness in the tails of the individual loss distributions. Rosenberg and Schuermann find that the answers given by the hybrid approach are reasonably close to those given by copula models.

# Example 28.3

Suppose that the estimates for economic capital for market, credit, and operational risk for two business units are as shown in Table 28.2. The correlations between the losses are shown in Table 28.3. The correlation between credit risk and market risk within the same business unit is 0.5, and the correlation between operational risk and either credit or market risk within the same business unit is 0.2. (These correspond to the estimates of Rosenberg and Schuermann mentioned earlier.) The correlation between two different risk types in two different business units is zero. The correlation between market risks across business units is 0.4. The correlation between credit risks across business units is 0.6. The correlation between operational risks across business units is zero.

Table 28.2 Economic Capital Estimates for Example 28.3

<table><tr><td></td><td colspan="2">Business Units</td></tr><tr><td></td><td>1</td><td>2</td></tr><tr><td>Market Risk</td><td>30</td><td>40</td></tr><tr><td>Credit Risk</td><td>70</td><td>80</td></tr><tr><td>Operational Risk</td><td>30</td><td>90</td></tr></table>

Table 28.3 Correlations between Losses in Example 28.3

<table><tr><td></td><td>MR-1</td><td>CR-1</td><td>OR-1</td><td>MR-2</td><td>CR-2</td><td>OR-2</td></tr><tr><td>MR-1</td><td>1.0</td><td>0.5</td><td>0.2</td><td>0.4</td><td>0.0</td><td>0.0</td></tr><tr><td>CR-1</td><td>0.5</td><td>1.0</td><td>0.2</td><td>0.0</td><td>0.6</td><td>0.0</td></tr><tr><td>OR-1</td><td>0.2</td><td>0.2</td><td>1.0</td><td>0.0</td><td>0.0</td><td>0.0</td></tr><tr><td>MR-2</td><td>0.4</td><td>0.0</td><td>0.0</td><td>1.0</td><td>0.5</td><td>0.2</td></tr><tr><td>CR-2</td><td>0.0</td><td>0.6</td><td>0.0</td><td>0.5</td><td>1.0</td><td>0.2</td></tr><tr><td>OR-2</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.2</td><td>0.2</td><td>1.0</td></tr></table>

MR, CR, and OR refer to market risk, credit risk, and operational risk; 1 and 2 refer to business units.

We can aggregate the economic capital using the hybrid approach. The total market risk economic capital is

$$
\sqrt {3 0 ^ {2} + 4 0 ^ {2} + 2 \times 0 . 4 \times 3 0 \times 4 0} = 5 8. 8
$$

The total credit risk economic capital is

$$
\sqrt {7 0 ^ {2} + 8 0 ^ {2} + 2 \times 0 . 6 \times 7 0 \times 8 0} = 1 3 4. 2
$$

The total operational risk economic capital is

$$
\sqrt {3 0 ^ {2} + 9 0 ^ {2}} = 9 4. 9
$$

The total economic capital for business unit 1 is

$$
\sqrt {3 0 ^ {2} + 7 0 ^ {2} + 3 0 ^ {2} + 2 \times 0 . 5 \times 3 0 \times 7 0 + 2 \times 0 . 2 \times 3 0 \times 3 0 + 2 \times 0 . 2 \times 7 0 \times 3 0} = 1 0 0. 0
$$

The total economic capital for business unit 2 is

$$
\sqrt {4 0 ^ {2} + 8 0 ^ {2} + 9 0 ^ {2} + 2 \times 0 . 5 \times 4 0 \times 8 0 + 2 \times 0 . 2 \times 4 0 \times 9 0 + 2 \times 0 . 2 \times 8 0 \times 9 0} = 1 5 3. 7
$$

The total enterprise-wide economic capital is the square root of

$$
\begin{array}{l} 3 0 ^ {2} + 4 0 ^ {2} + 7 0 ^ {2} + 8 0 ^ {2} + 3 0 ^ {2} + 9 0 ^ {2} + 2 \times 0. 4 \times 3 0 \times 4 0 + 2 \times 0. 5 \times 3 0 \times 7 0 \\ + 2 \times 0. 2 \times 3 0 \times 3 0 + 2 \times 0. 5 \times 4 0 \times 8 0 + 2 \times 0. 2 \times 4 0 \times 9 0 \\ + 2 \times 0. 6 \times 7 0 \times 8 0 + 2 \times 0. 2 \times 7 0 \times 3 0 + 2 \times 0. 2 \times 8 0 \times 9 0 \\ \end{array}
$$ or 203.2.


There are clear diversification benefits. The sum of the economic capital estimates for market, credit, and operational risk is  $58.8 + 134.2 + 94.9 = 287.9$  and the sum of the economic capital estimates for two business units is  $100 + 153.7 = 253.7$ . Both of these are greater than the total economic capital estimate of 203.2.

# 28.6 Allocation of Economic Capital

Suppose that the sum of the economic capital for the business units in a bank,  $\sum_{i=1}^{n} E_i$ , is $2 billion and that the total economic capital for the whole bank, after taking less-than-perfect correlations into account, is $1.3 billion (= 65\% of the sum of the  $E_i$ ). The 0.7 billion is a diversification gain to the bank. How should the total economic capital be allocated to the business units?

A simple approach is to allocate 0.65Ei to business unit i. However, this is probably not the best approach. Consider a situation where there are 50 business units and that two particular units both have an economic capital of $100 million. Suppose that, when the first business unit is excluded from the calculations, the bank's economic capital decreases by $60 million and that, when the second business unit is excluded from the calculation, the bank's economic capital decreases by 10 million. Arguably, the first business unit should have more economic capital than the second, because its incremental impact on the bank's total economic capital is greater.

The issues here are analogous to those we discussed in Section 11.8 for allocating VaR. One approach is to calculate incremental economic capital for each business unit and then allocate economic capital to business units in proportion to their incremental capital. (Incremental capital is the difference between the total economic capital with and without the business unit.) A popular alternative is to work with the component economic capital. This involves allocating

$$ x _ {i} \frac {\partial E _ {\mathrm {t o t a l}}}{\partial x _ {i}}
$$ to the  $i$ th business unit, where  $x_{i}$  is the investment in the  $i$ th business unit. As we pointed out in Section 11.8, a result known as Euler's theorem then ensures that the total of the allocated capital is the total economic capital  $E_{\mathrm{total}}$ .


Define  $Q_{i}$  as the increase in the total economic capital when we increase  $x_{i}$  by a small amount  $\Delta x_{i}$ . A discrete approximation for the component economic capital for business unit  $i$  is

$$

\frac {Q _ {i}}{\gamma_ {i}} \tag {28.4}

$$ where  $\gamma_{i} = \Delta x_{i} / x_{i}$

# Example 28.4

Consider again Example 28.3. The total economic capital is 203.2. The economic capital calculated for Business Unit 1 is 100 and that calculated for Business Unit 2 is 153.7.

A simple approach would allocate 100/253.7 of the total economic capital to Business Unit 1 and 153.7/253.7 of the economic capital to Business Unit 2. This would result in 80.1 for Business Unit 1 and 123.1 to Business Unit 2.

The incremental effect of Business Unit 1 on the total economic capital is  $203.2 - 153.7 = 49.5$ . Similarly, the incremental effect of Business Unit 2 on the total economic capital is  $203.2 - 100 = 103.2$ . The two incremental capitals do not add up to the total capital (as is usually the case). However, we could use them as a basis for allocating the total capital. We would then allocate  $49.5 / (49.5 + 103.2)$  of the capital to Business Unit 1 and  $103.2 / (49.5 + 103.2)$  of it to Business Unit 2. This would result in 65.9 for Business Unit 1 and 137.3 for Business Unit 2.

To apply equation (28.4) and allocate component economic capital to each unit, we could calculate the partial derivative analytically. Alternatively, we can use a numerical calculation. When we increase the size of Business Unit 1 by  $1\%$ , its economic capital amounts for market, credit, and operational risk in Table 28.2 increase to 30.3, 70.7, and 30.3, respectively. The total economic capital becomes 203.906 so that  $Q_{1} = 203.906 - 203.224 = 0.682$ .

When we increase the size of Business Unit 2 by  $1\%$ , its economic capital amounts for market, credit, and operational risk in Table 28.2 increase to 40.4, 80.8, and 90.9, respectively. The total economic capital becomes 204.577 so that  $Q_{2} = 204.577 - 203.224 = 1.353$ .

In this case, because we are considering  $1\%$  increases in the size of each unit,  $\gamma_{1} = \gamma_{2} = 0.01$ . From equation (28.4), the economic capital allocations to the two business units are 68.2 and 135.3. (These do not quite add up to the total economic capital of 203.2 because we approximated the partial derivative.)

# 28.7 Deutsche Bank's Economic Capital

Deutsche Bank publishes the results of its economic capital calculations in its annual financial statements. Table 28.4 summarizes the economic capital and regulatory capital reported at the end of 2021. Capital is calculated for credit risk, market risk, operational risk, and strategic (i.e., business) risk. Deutsche Bank calculated a diversification benefit reflecting the lack of perfect correlation between the different risk types. The total economic capital was about 23.5 billion euros.

The actual capital held was about 46.5 billion euros of core Tier 1 capital (i.e., common equity), 8.3 billion euros of additional Tier 1 capital, and about 7.3 billion euros of Tier 2 capital. Table 28.4 shows capital amounts as a percentage of risk-weighted assets. Deutsche Bank exceeds the capital requirements in Basel III, including the G-SIB additional capital, which in the case of Deutsche Bank was  $1.5\%$  of risk-weighted assets.

Table 28.5 summarizes how this capital was allocated to business units. A more detailed analysis given by Deutsche Bank shows that credit risk accounted for about  $70\%$  of the corporate bank's economic capital. Credit risk was also the most important component for the investment bank, but market risk and operational risk were relatively more important for the investment bank than for the corporate bank.

Table 28.4 Deutsche Bank's Economic Capital and Regulatory Capital, December 2021 (millions of euros)

<table><tr><td>Credit risk</td><td>11,725</td></tr><tr><td>Market risk</td><td>7,920</td></tr><tr><td>Operational risk</td><td>4,937</td></tr><tr><td>Strategic risk</td><td>3,173</td></tr><tr><td>Diversification benefit</td><td>(4,213)</td></tr><tr><td>Total economic capital</td><td>23,542</td></tr><tr><td>Total risk-weighted assets</td><td>351,629</td></tr><tr><td>Common Equity Tier 1 capital (\% of risk-weighted assets)</td><td>13.2\%</td></tr><tr><td>All Tier 1 capital (\% of risk-weighted assets)</td><td>15.6\%</td></tr><tr><td>Total (Tier 1 plus Tier 2) capital (\% of risk-weighted assets)</td><td>17.7\%</td></tr></table>

Table 28.5 Allocation of Deutsche Bank's Economic Capital to Divisions, December 2021 (millions of euros)

<table><tr><td>Division</td><td>Allocated Economic Capital</td></tr><tr><td>Corporate Bank</td><td>3,500</td></tr><tr><td>Investment Bank</td><td>7,442</td></tr><tr><td>Private Bank</td><td>3,183</td></tr><tr><td>Asset Management</td><td>267</td></tr><tr><td>Capital Release Unit</td><td>1,309</td></tr><tr><td>Corporate &amp; Other</td><td>7,840</td></tr><tr><td>Total</td><td>23,542</td></tr></table>

# 28.8 RAROC

Risk-adjusted performance measurement (RAPM) has become an important part of how business units are assessed. There are many different approaches, but all have one thing in common. They compare return with capital employed in a way that incorporates an adjustment for risk.

The most common approach is to compare expected return with economic capital. This is usually referred to as RAROC (risk-adjusted return on capital). The formula is

$$
\mathrm {R A O C} = \frac {\text {R e v e n u e s} - \text {C o s t s} - \text {E x p e c t e d l o s s e s}}{\text {E c o n o m i c c a p i t a l}} \tag {28.5}
$$

The numerator may be calculated on a pre-tax or post-tax basis. Sometimes, a risk-free rate of return on the economic capital is calculated and added to the numerator.

# Example 28.5

A bank rated AA estimates its losses on loans as  $1\%$  of the outstanding principal on average. The  $99.98\%$  VaR (i.e., the loss exceeded only  $0.02\%$  of the time) is  $5\%$  of outstanding loans. As indicated in Example 28.1, the economic capital required per  $100 of loans is$ 4, which is the difference between the 99.98\% VaR and the expected loss. (This ignores diversification benefits that would in practice be allocated to the lending unit as a result of less than perfect correlation with the bank's other activities.) The spread between the cost of funds and the interest charged is 2.5\%. Subtracting from this the expected loan loss of 1\%, the expected contribution per $100 of loans is $1.50. Assuming that the lending unit's administrative costs total 0.7\% of the amount loaned, the expected profit is reduced to $0.80 per $100 in the loan portfolio. RAROC is therefore

$$
\frac {0 . 8 0}{4} = 2 0
$$

An alternative calculation would add the interest on the economic capital to the numerator. Suppose that the risk-free interest rate is  $2\%$ . Then  $0.02 \times 4 = 0.08$  is added to the numerator so that RAROC becomes

$$
\frac {0 . 8 8}{4} = 2 2
$$

As pointed out by Matten (2000), it is more accurate to refer to the approach in equation (28.5) as RORAC (return on risk-adjusted capital) rather than RAROC, because it is the capital (i.e., the denominator) not the return that reflects risk. In theory, RAROC should involve adjusting the return (i.e., the numerator) for risk. In practice, RAROC is used to denote a wide range of return on capital calculations.

RAROC can be calculated ex-ante (before the start of the year) or ex-post (after the end of the year). Ex-ante calculations are based on estimates of expected profit. Ex-post calculations are based on actual profit results. Ex-ante calculations are typically used to decide whether a particular business unit should be expanded or contracted. Ex-post calculations are typically used for performance evaluation and bonus calculations.

It is usually not appropriate to base a decision to expand or contract a particular business unit on an ex-post analysis (although there is a natural temptation to do this). It may be that results were bad for the most recent year because of a one-time event (e.g., an unusually high credit loss or a particularly high operational risk loss). Key strategic decisions should be based on expected long-term results.

# Summary

Economic capital is the capital that a bank or other financial institution deems necessary for the risks it is bearing. When calculating economic capital, a financial institution is free to adopt any approach it likes. It does not have to use the one proposed by regulators. Typically, it estimates economic capital for credit risk, market risk, operational risk, and (possibly) business risk for its business units and then aggregates the estimates to produce an estimate of the economic capital for the whole enterprise. The risks are usually assumed to be less than perfectly correlated. The benefits of diversification are estimated and allocated to business units. Usually the approach used is designed to reflect the incremental impact of the business units on the total economic capital.

The one-year loss distributions for market risk, credit risk, and operational risk are quite different. The loss distribution for market risk is symmetrical. For credit risk it is skewed, and for operational risk it is highly skewed with very heavy tails.

Financial institutions calculate RAROC, the risk adjusted return on economic capital, for each business unit by dividing the profit of the business unit by its allocated economic capital. The expected future RAROC is used to decide which areas of the business should be expanded or contracted. The actual RAROC achieved by a business unit is used for performance evaluation.

# Further Reading

Dev, A. Economic Capital: A Practitioner's Guide. London: Risk Books, 2004.

Matten, C. Managing Bank Capital: Capital Allocation and Performance Measurement. 2nd ed. Chichester, UK: John Wiley & Sons, 2000.

Rosenberg, J. V., and T. Schuermann. "A General Approach to Integrated Risk Management with Skewed, Fat-Tailed Risks." Federal Reserve Bank of New York, Staff Report no. 185, May 2004.

# Practice Questions and Problems (Answers at End of Book)

28.1 What is the difference between economic capital and regulatory capital?
28.2 What determines the confidence level used by a AA-rated financial institution in its economic capital calculations?
28.3 What types of risk are included in business risk?
28.4 In what respects are the models used to calculate economic capital for market risk, credit risk, and operational risk likely to be different from those used to calculate regulatory capital?
28.5 Suppose that the credit loss in a year has a lognormal distribution. The logarithm of the loss is normal with mean 0.5 and standard deviation 4. What is the economic capital requirement if a confidence level of  $99.97\%$  is used?
28.6 Suppose that the economic capital estimates for two business units are as follows:

<table><tr><td></td><td colspan="2">Business Units</td></tr><tr><td></td><td>1</td><td>2</td></tr><tr><td>Market Risk</td><td>20</td><td>40</td></tr><tr><td>Credit Risk</td><td>40</td><td>30</td></tr><tr><td>Operational Risk</td><td>70</td><td>10</td></tr></table>

The correlations are as in Table 28.3. Calculate the total economic capital for each business unit and the two business units together.

28.7 In Problem 28.6, what is the incremental effect of each business unit on the total economic capital? Use this to allocate economic capital to business units. What is the impact on the economic capital of each business unit increasing by  $0.5\%$ ? Show that your results are consistent with Euler's theorem.
28.8 A bank is considering expanding its asset management operations. The main risk is operational risk. It estimates the expected operational risk loss from the new venture in one year to be  $2 million and the 99.97\% VaR (arising from a small chance of an large investor lawsuit) to be$ 40 million. The expected fees it will receive from investors for the funds under administration are $12 million per year, and administrative costs are expected to be $3 million per year. Estimate the before-tax RAROC.
28.9 RAROC can be used in two different ways. What are they?

# Further Questions

28.10 Suppose that daily gains (losses) are normally distributed with a standard deviation of 5 million.

(a) Estimate the minimum regulatory capital the bank is required to hold. (Assume a multiplicative factor of 4.0.)

(b) Estimate the economic capital using a one-year time horizon and a  $99.9\%$  confidence level assuming that there is a correlation of 0.05 between gains (losses) on successive days.

28.11 Suppose that the economic capital estimates for two business units are

<table><tr><td></td><td colspan="2">Business Units</td></tr><tr><td></td><td>1</td><td>2</td></tr><tr><td>Market Risk</td><td>10</td><td>50</td></tr><tr><td>Credit Risk</td><td>30</td><td>30</td></tr><tr><td>Operational Risk</td><td>50</td><td>10</td></tr></table>

The correlation between market risk and credit risk in the same business unit is 0.3. The correlation between credit risk in one business unit and credit risk in another is 0.7. The correlation between market risk in one business unit and market risk in the other is 0.2. All other correlations are zero. Calculate the total economic capital. How much should be allocated to each business unit?

28.12 Suppose that a bank's sole business is to lend in two regions of the world. The lending in each region has the same characteristics as in Example 28.5 of Section 28.8. Lending to Region A is three times as great as lending to Region B. The correlation between loan losses in the two regions is 0.4. Estimate the total RAROC.

28.13 Suppose daily losses (gains) from trading are independent and normally distributed with mean zero. Calculate in terms of the standard deviation of the daily losses (gains) (a) the basic Basel I regulatory capital requirement calculated as 3 times the 10-day  $99\%$  VaR and (b) the economic capital calculated using a  $99.97\%$  confidence level and a one-year time horizon. Would you expect the economic and regulatory capital to become closer together or farther apart if daily losses/gains are generated by a distribution with much heavier tails than the normal distribution? What would you expect to be the impact of the daily losses/gains exhibiting positive autocorrelation?

# Part Seven

# OTHER TOPICS


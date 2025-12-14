---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Chapter 16
linter-yaml-title-alias: Chapter 16
---

# Chapter 16

# Scenario Analysis and Stress Testing

Stress testing involves evaluating the impact of extreme, but plausible, scenarios that are not considered by value at risk (VaR) or expected shortfall (ES) models. If there is one lesson to be learned from the market turmoil that started in the summer of 2007, it is that more emphasis should be placed on stress testing and less emphasis should be placed on the mechanistic application of VaR/ES models. VaR/ES models are useful, but they are inevitably backward looking. Risk management is concerned with what might happen in the future.

This chapter considers the different approaches that can be used to generate scenarios for stress testing and how the results should be used. It explains that the Global Financial Crisis of 2007-2008 has caused regulators to require banks to conduct more stress testing and that increasingly regulators are defining the stress tests themselves in an attempt to ensure that banks have sufficient capital to withstand adverse scenarios.

# 16.1 Generating the Scenarios

The most popular approach for calculating market risk VaR or ES is the historical simulation approach covered in Chapter 12. This approach assumes that data from the past are a good guide to what will happen over the next 1 to 10 days. But if an event has not occurred during the period covered by the data, it will not affect the results when the usual historical simulation method is used.

We have discussed a number of ways VaR/ES calculations can be modified so that they reflect more than the simple assumption that the future movements in market variables will be a random sample from the recent past. In particular:

1. Volatility scaling (see Section 12.3) can lead to more extreme outcomes being considered when the market is highly volatile.
2. Extreme value theory (see Section 12.5) provides a way of extending the tails of the loss distribution obtained from historical data.
3. Calculating stressed VaR or stressed ES (see Section 12.1) considers the impact of a particularly difficult period of 250 days that has occurred in the past.

But the nature of a VaR/ES calculation is that it is backward looking. Events that could happen, but are quite different from those that occurred during the period covered by the data, are not taken into account. Stress testing is an attempt to overcome this weakness of the VaR/ES measure.

Stress testing involves estimating how the portfolio of a financial institution would perform under scenarios involving extreme (but plausible) market moves. The exchange rate example in Table 8.1 illustrates the occurrence of extreme market moves. It shows five-standard-deviation moves happen about every five years on average, whereas they would happen hardly ever (about once every 7,000 years) if the distributions were normal.

A key issue in stress testing is the way in which scenarios are chosen. We now consider alternative procedures.

# 16.1.1 Stressing Individual Variables

One approach is to use scenarios where there is a large move in one variable and other variables are unchanged. Examples of scenarios of this type that are sometimes considered are:

1. A 100-basis-point parallel shift (up or down) in a yield curve.
2. Increasing or decreasing all the implied volatilities used for an asset by  $50\%$  of current values.
3. Increasing or decreasing an equity index by  $10\%$ .
4. Increasing or decreasing the exchange rate for a major currency by  $6\%$ .
5. Increasing or decreasing the exchange rate for a minor currency by  $20\%$ .

The impact of small changes in a variable is measured by its delta. The impact of larger changes can be measured by a combination of delta and gamma. Here we are considering changes that are so large that it is likely to be unreliable to estimate the change in the value of a portfolio using Greek letters.

# 16.1.2 Scenarios Involving Several Variables

Usually, when one market variable shows a big change, others do as well. This has led financial institutions to develop scenarios where several variables change at the same time. A common practice is to use extreme movements in market variables that have occurred in the past. For example, to test the impact of an extreme movement in U.S. equity prices, a company might set the percentage changes in all market variables equal to those on October 19, 1987 (when the S&P 500 moved by 22.3 standard deviations). If this is considered to be too extreme, the company might choose January 8, 1988 (when the S&P 500 moved by 6.8 standard deviations). Other dates when there were big movements in equity prices are September 11, 2001, when terrorists attacked the World Trade Center in New York, and September 15, 2008, when Lehman Brothers declared bankruptcy. Equity prices also declined sharply in March 2020 because of uncertainties associated with the COVID-19 pandemic. The Dow Jones Industrial Average declined by  $7.79\%$ ,  $9.99\%$ , and  $12.93\%$  on March 9, March 12, and March 16, respectively.

Another approach is to magnify what has happened in the past to generate extreme scenarios. For example, we might take a period of time when there were moderately adverse market movements and create a scenario where all variables move by three or five times as much as they did then. The problem with this approach is that correlations increase in stressed market conditions, and increasing the movements in all market variables by a particular multiple does not increase correlation.

Some historical scenarios are one-day shocks to market variables. Others involve shocks that take place over several days, several weeks, or even several months. It is important to include volatilities in the market variables that are considered. Typically, extreme movements in market variables such as interest rates and exchange rates are accompanied by large increases in the volatilities of these variables and large increases in the volatilities of a wide range of other variables. Some scenarios are likely to involve big movements in commodity prices, such as the plunge in oil prices in the second half of 2014. Others may involve a situation where there is a flight to quality combined with a shortage of liquidity and an increase in credit spreads. This was what happened in August 1998 when Russia defaulted on its debt and in July and August 2007 when investors lost confidence in the products created from the securitization of subprime mortgages (see Chapter 7).

# 16.1.3 Scenarios Generated by Management

History never repeats itself exactly. This may be partly because traders are aware of past financial crises and try to avoid making the same mistakes as their predecessors. The U.S. mortgage market led to the Global Financial Crisis that started in 2007. It is unlikely that future credit crises will be a result of mortgage-lending criteria being relaxed—but it is likely that there will be credit crises in the future.

In many ways, the scenarios that are most useful in stress testing are those generated by senior management or by the economics group within a financial institution. Senior management and the economics group are in a good position to use their understanding of markets, world politics, the economic environment, and current global uncertainties to develop plausible scenarios that would lead to large losses. Sometimes, the scenarios produced are based on things that have happened in the past, but are adjusted to include key features of the current financial and economic environment.

One way of developing the scenarios is for a committee of senior management to meet periodically and "brainstorm" answers to the simple question: "What can go wrong?" Clemens and Winkler (1999) have done studies to investigate the optimal composition of a committee of this type. Their conclusions are that (a) the committee should have three to five members, (b) the backgrounds of the committee members should be different, and (c) there should be a healthy dialogue between members of the committee. It is important that members of the committee are able step back from their day-to-day responsibilities to consider the big picture.

It is not always the case that senior management's thinking has to be highly innovative in order for it to come up with relevant scenarios. In 2005 and 2006, many commentators realized that the U.S. housing market was experiencing a bubble and that sooner or later the bubble would burst. It is easy to be wise after the event, but one reasonable scenario for the stress-testing committee to propose during that period would have been a  $20\%$  or  $30\%$  decline in house prices in all parts of the country.

It is important that senior management and the board of directors understand and recognize the importance of stress testing. They have the responsibility for taking strategic decisions based on the stress-testing results. One advantage of involving senior management in the development of the scenarios to be used in stress testing is that it should naturally lead to a "buy in" by them to the idea that stress testing is important. The results generated from scenarios that are created by individuals who have middle management positions are unlikely to be taken as seriously.

# 16.1.4 Core vs. Peripheral Variables

When individual variables are stressed or scenarios are generated by management, the scenarios are likely to be incomplete in that movements of only a few (core) market variables are specified. One approach is to set changes in all other (peripheral) variables to zero, but this is likely to be unsatisfactory. Another approach is to regress the peripheral variables on the core variables that are being stressed to obtain forecasts for them conditional on the changes being made to the core variables. These forecasts (as point forecasts or probability distributions) can be incorporated into the stress test.

This is known as conditional stress testing and is discussed by Kupiec (1999). Kim and Finger (2000) carry this idea further by using what they call a "broken arrow" stress test. In this, the correlation between the core variables and the peripheral variables is based on what happens in stressed market conditions rather than what happens on average.

# 16.1.5 Making Scenarios Complete

Scenarios should be carefully examined in an attempt to make sure that all the adverse consequences are considered. The scenarios should include not only the immediate

# BUSINESS SNAPSHOT 16.1

# Long-Term Capital Management's Big Loss

Long-Term Capital Management (LTCM), a hedge fund formed in the mid-1990s, experienced problems because of the way it provided collateral for its transactions. The hedge fund's investment strategy was known as convergence arbitrage. A very simple example of what it might do is the following. It would find two bonds, X and Y, issued by the same company promising the same payoffs, with X being less liquid (i.e., less actively traded) than Y. The market always places a value on liquidity. As a result, the price of X would be less than the price of Y. LTCM would buy X, short Y, and wait, expecting the prices of the two bonds to converge at some future time.

When interest rates increased, the company expected both bonds to move down in price by about the same amount so that the collateral it paid on bond X would be about the same as the collateral it received on bond Y. Similarly, when interest rates decreased, LTCM expected both bonds to move up in price by about the same amount so that the collateral it received on bond X would be about the same as the collateral it paid on bond Y. It therefore expected that there would be no significant outflow of funds as a result of its collateralization agreements.

In August 1998, Russia defaulted on its debt and this led to what is termed a "flight to quality" in capital markets. One result was that investors valued liquid instruments more highly than usual and the spreads between the prices of the liquid and illiquid instruments in LTCM's portfolio increased dramatically. The prices of the bonds LTCM had bought went down and the prices of those it had shorted increased. It was required to post collateral on both. The company was highly leveraged and found it difficult to make the payments required under the collateralization agreements. The result was that positions had to be closed out and there was a total loss of about 4 billion. If the company had been less highly leveraged it would probably have been able to survive the flight to quality and could have waited for the prices of the liquid and illiquid bonds to become closer.

effect on the financial institution's portfolio of a shock to market variables, but also any "knock-on" effect resulting from many different financial institutions being affected by the shock in the same way and responding in the same way. Many people have said that they recognized the real estate bubble in the United States would burst in 2007, but did not realize how bad the consequences would be. They did not anticipate that many financial institutions would experience losses at the same time with the result that there would be a flight to quality with severe liquidity problems and a huge increase in credit spreads.

Another example of knock-on effects is provided by the failure of Long-Term Capital Management (LTCM) in 1998 (see Business Snapshot 16.1). LTCM tended to have long positions in illiquid securities and short positions in liquid securities. Its failure was caused by a flight to quality following Russia's default on its debt. Many investors were only interested in buying liquid securities. Spreads between liquid and illiquid securities increased. LTCM had done stress tests looking at the impact of flights to quality similar to those that had occurred pre-1998. What it did not allow for was the knock-on effect. Many hedge funds were following similar trading strategies to those of LTCM in 1998. When the flight to quality started, they were all forced to unwind their positions at the same time. Unwinding meant selling illiquid securities and buying liquid securities, reinforcing the flight to quality and making it more severe than previous flights to quality.

Scenarios should ideally be dynamic so that the response to the scenario of the financial institution doing the stress test, as well as the responses of other financial institutions, are considered. Consider, for example, the situation where a financial institution has sold call options dependent on an underlying asset and maintains delta neutrality. A shock where there is a large increase in the asset price will lead to an immediate loss on the option position. To maintain delta neutrality, large amounts of the asset will have to be bought at a relatively high price. The cost of subsequent delta hedging is liable to depend on the volatility of the asset price. Often the volatility will be high, with big increases and decreases in the asset price before it settles down. The subsequent delta hedging is then particularly expensive.

# 16.1.6 Reverse Stress Testing

Reverse stress testing involves the use of computational procedures to search for scenarios that lead to a failure of the financial institution. It has become an important tool in risk management, and many bank supervisory bodies now require banks to have reverse stress testing programs in place.

# Example 16.1

As a simple example of reverse stress testing, suppose a financial institution has positions in four European call options on an asset. The asset price is 50, the risk-free rate is 3\%, the volatility is 20\%, and there is no income on the asset. The positions, strike prices, and lives of the options are as indicated in the table below. The current value of the position (in millions of dollars) is -25.90. A numerical procedure can be used to search for one-day changes in the asset price and the volatility that will lead to the greatest losses. Some bounds should be put on the changes that are considered. We assume that the asset price will not decrease below  $40 or increase above$ 60. It is assumed that the volatility will not fall below 10\% or rise above 30\%.

<table><tr><td>Position (000s)</td><td>Strike Price</td><td>Life (years)</td><td>Position Value ($ millions)</td></tr><tr><td>+250</td><td>50</td><td>1.0</td><td>1,176.67</td></tr><tr><td>-125</td><td>60</td><td>1.5</td><td>-293.56</td></tr><tr><td>-75</td><td>40</td><td>0.8</td><td>-843.72</td></tr><tr><td>-50</td><td>55</td><td>0.5</td><td>-65.30</td></tr><tr><td>Total</td><td></td><td></td><td>-25.90</td></tr></table>

Using the formulas for valuing European options (see Appendix E) in conjunction with Excel's Solver, the worst loss is found to be when the volatility decreases to  $10\%$  and the asset price falls to  $45.99. The loss is$ 289.38 million. Reverse stress testing therefore shows that the financial institution is most exposed to a reduction of about  $8\%$  in the asset price combined with a sharp decline in volatility.

This might seem to be an unreasonable scenario. It is unlikely that volatility would go down sharply when the asset price declines by  $8\%$ . Solver could be run again with the lower bound to volatility being  $20\%$  instead of  $10\%$ . This gives a worst-case loss occurring when the volatility stays at  $20\%$  and the asset price falls to $42.86. The loss is then $87.19 million.

Searching over all the market variables to which a financial institution is exposed in the way indicated in Example 16.1 is in practice usually not computationally feasible. One approach is to identify 5 to 10 key market variables and assume that changes in other variables are dependent on changes in these variables.

Another way of simplifying the search process is to impose some structure on the problem. A principal components analysis (see Section 14.3) can be carried out on the changes in market variables (ideally using data from stressed market conditions) and then a search can be conducted to determine the changes in the principal components that generate large losses. This reduces the dimension of the space over which the search is conducted and should lead to fewer implausible scenarios.

An alternative approach is for the risk management group to impose a structure on scenarios. For example, a number of adverse scenarios that have occurred in the past can be specified. An analyst can then search to find what multiplier must be applied to the changes observed in all market variables under the scenarios in order for a particular loss level to be reached. For example, it might be concluded that a financial institution could survive a repeat of market movements during the Global Financial Crisis of 2008, but that if movements were  $50\%$  greater there would be serious problems.

Reverse stress testing can be used as a tool to facilitate brainstorming by the stress-testing committee. Prior to a meeting of the stress-testing committee, analysts can use reverse stress testing to come up with several scenarios that would be disastrous to the financial institution. These scenarios, along with others they generate themselves, are then considered by the stress-testing committee. They use their judgment to eliminate some of the analysts' scenarios as implausible and modify others so that they become plausible and are retained for serious evaluation.

# 16.2 Regulation

We discuss the regulation of banks later in this book. At this stage it is worth noting that regulators require market risk calculations that are based on a bank's internal VaR models to be accompanied by "rigorous and comprehensive" stress testing. They make the point that stress testing is particularly important after long periods of benign conditions because such conditions tend to lead to complacency.

The recommendations of regulators highlight the importance of top management and board involvement in stress testing. In particular, top management and board members should be involved in setting stress-testing objectives, defining scenarios, discussing the results of stress tests, assessing potential actions, and decision making. Regulators make the point that the banks that fared well in the Global Financial Crisis that started in mid-2007 were the ones where senior management as a whole took an active interest in the development and operation of stress testing, with the results of stress testing serving as an input into strategic decision making. Stress testing should be conducted across all areas of the bank. It should not be the case that each area conducts its own stress test.

Specific recommendations for banks are:

1. Stress testing should form an integral part of the overall governance and risk management culture of the bank. Stress testing should be actionable, with the results from stress-testing analyses impacting decision making at the appropriate management level, including strategic business decisions of the board and senior management. Board and senior management involvement in the stress-testing program is essential for its effective operation.
2. A bank should operate a stress-testing program that promotes risk identification and control, provides a complementary risk perspective to other risk management tools, improves capital and liquidity management, and enhances internal and external communication.
3. Stress-testing programs should take account of views from across the organization and should cover a range of perspectives and techniques.
4. A bank should have written policies and procedures governing the stress-testing program. The operation of the program should be appropriately documented.
5. A bank should have a suitably robust infrastructure in place, which is sufficiently flexible to accommodate different and possibly changing stress tests at an appropriate level of granularity.
6. A bank should regularly maintain and update its stress-testing framework. The effectiveness of the stress-testing program, as well as the robustness of major individual components, should be assessed regularly and independently.
7. Stress tests should cover a range of risks and business areas, including at the firmwide level. A bank should be able to integrate effectively across the range of its stress-testing activities to deliver a complete picture of firmwide risk.
8. Stress-testing programs should cover a range of scenarios, including forward-looking scenarios, and aim to take into account system-wide interactions and feedback effects.
9. Stress tests should feature a range of severities, including events capable of generating most damage whether through size of loss or through loss of reputation. A stress-testing program should also determine what scenarios could challenge the viability of the bank (reverse stress tests) and thereby uncover hidden risks and interactions among risks.
10. As part of an overall stress-testing program, a bank should aim to take account of simultaneous pressures in funding and asset markets, and the impact of a reduction in market liquidity on exposure valuation.
11. The effectiveness of risk mitigation techniques should be systematically challenged.
12. The stress-testing program should explicitly cover complex and bespoke products such as securitized exposures. Stress tests for securitized assets should consider the underlying assets, their exposure to systematic market factors, relevant contractual arrangements and embedded triggers, and the impact of leverage, particularly as it relates to the subordination level in the issue structure.
13. The stress-testing program should cover pipeline and warehousing risks. $^4$  A bank should include such exposures in its stress tests regardless of their probability of being securitized.
14. A bank should enhance its stress-testing methodologies to capture the effect of reputational risk. The bank should integrate risks arising from off-balance-sheet vehicles and other related entities in its stress-testing program.
15. A bank should enhance its stress-testing approaches for highly leveraged counterparties in considering its vulnerability to specific asset categories or market movements and in assessing potential wrong-way risk related to risk-mitigating techniques.

The recommendations for bank supervisors are:

16. Supervisors should make regular and comprehensive assessments of a bank's stress-testing programs.
17. Supervisors should require management to take corrective action if material deficiencies in the stress-testing program are identified or if the results of stress tests are not adequately taken into consideration in the decision-making process.
18. Supervisors should assess and, if necessary, challenge the scope and severity of firm-wide scenarios. Supervisors may ask banks to perform sensitivity analysis with respect to specific portfolios or parameters, use specific scenarios, or evaluate scenarios under which their viability is threatened (reverse stress-testing scenarios).
19. Under the Pillar 2 (supervisory review process) of the Basel II framework, supervisors should examine a bank's stress-testing results as part of a supervisory review of both the bank's internal capital assessment and its liquidity risk management. In particular, supervisors should consider the results of forward-looking stress testing for assessing the adequacy of capital and liquidity.
20. Supervisors should consider implementing stress-test exercises based on common scenarios.
21. Supervisors should engage in a constructive dialogue with other public authorities and the industry to identify systemic vulnerabilities. Supervisors should also ensure that they have the capacity and the skills to assess banks' stress-testing programs.

# 16.2.1 Scenarios Chosen by Regulators

Bank regulators require banks to consider extreme scenarios and then make sure they have enough capital for those scenarios. There is an obvious problem here. Banks want to keep their regulatory capital as low as possible. They therefore have no incentive to consider extreme scenarios that would lead to a bank supervisor telling them that their capital requirements need to be increased. There is therefore a natural tendency for the scenarios they consider to be "watered down" and fairly benign.

One approach to overcoming this problem is for regulators themselves to provide the scenarios (see Recommendations 18 and 20). Regulators in many jurisdictions (including the United Kingdom, the European Union, and the United States) now regularly carry out their own stress tests to determine whether the banks they are supervising have enough capital to survive extreme adverse events. If banks fail the stress test, they are required to raise more capital and may be subject to dividend restrictions.

In the United States, the Federal Reserve has since 2009 carried out an annual stress test for all banks with consolidated assets of more than 50 billion (i.e., G-SIBs and D-SIBs). Since 2011 this has been called the Comprehensive Capital Analysis and Review (CCAR). Banks are required to submit a capital plan (including planned dividends). The scenarios created by the Federal Reserve are recession scenarios similar to those in 1973-1975, 1981-1982, and 2007-2009. The scenarios include projections for about 25 variables, including macroeconomic variables such as gross domestic product (GDP) growth, unemployment rate, stock market indices, and house price indices.

Banks in the United States with consolidated assets over 10 billion are subject to the Dodd-Frank Act Stress Test (DFAST). The scenarios considered in DFAST are similar to those in CCAR. However, banks do not have to submit a capital plan, as the management of capital is assumed to be based on a standard set of assumptions. Both CCAR and DFAST involve a huge amount of work for banks with thousands of pages of justification for the models used being produced.

# BUSINESS SNAPSHOT 16.2

# Traffic Light Options

In June 2001, the Danish Financial Supervisory Authority (DFSA) introduced a "traffic light" solvency stress-testing system. This requires life insurance companies and pension funds to submit semiannual reports indicating the impact on them of certain predefined shocks. The "red light scenario" involves a 70-basis-point decrease in interest rates, a  $12\%$  decline in stock prices, and an  $8\%$  decline in real estate prices. If capital falls below a specified critical level in this scenario, the company is categorized with "red light status" and is subject to more frequent monitoring with monthly reports being required. The "yellow light scenario" involves a 100-basis-point decrease in interest rates, a  $30\%$  decline in stock prices, and a  $12\%$  decline in real estate prices. If capital falls below the critical level in this scenario, the company is categorized with "yellow light status" and has to submit quarterly reports. When the company's capital stays above the critical levels for the red and yellow light scenarios, the company has a "green light status" and is subject to normal semiannual reporting.

Derivatives dealers have developed products for helping life insurance and pension funds keep a green light status. These are known as traffic light options. They pay off in the traffic light scenarios so as to give a boost to the financial institution's performance when these scenarios are considered. Traffic light options pay off only when the movements close to those specified by regulators in the red light or yellow light scenario occur. The options are therefore not too expensive.

By choosing scenarios themselves, regulators are able to focus the attention of banks on recession scenarios that are of concern to regulators. If regulators see many banks taking positions with similar risks, they can require all banks to consider a particular set of scenarios that give rise to adverse results for the positions. The downside of regulators generating scenarios themselves is that part of the reason for the increased focus by supervisors on stress testing is that they want to encourage financial institutions to spend more time generating and worrying about potential adverse scenarios. If supervisors do the work in generating the scenarios, this may not happen and banks will focus only on the scenarios generated by regulators. In an ideal regulatory environment, both management-generated scenarios and supervisor-generated scenarios are evaluated.

There is a danger that financial institutions will find actions they can take that allow them to pass the stress tests without making them any safer. An extreme example of this is in Business Snapshot 16.2. When regulators defined key scenarios for life insurance companies and pension funds in Denmark, some of those companies responded by hedging against the particular scenarios used by regulators—and only against those scenarios.[5] This is not what regulators intended. Each scenario used in stress testing should be viewed as representative of a range of things that might happen. Financial institutions should ensure that their capital will be in good shape not just for the specified scenarios, but also for other similar or related scenarios. Regulators are now well aware of this type of problem and have procedures aimed at ensuring that banks do not game the system in this way.

# 16.3 What to Do with the Results

The biggest problem in stress testing is using the results effectively. All too often, the results of stress testing are ignored by senior management. A typical response is, "Yes, there are always one or two scenarios that will sink us. We cannot protect ourselves against everything that might happen." One way of trying to avoid this sort of response is to involve senior management in the development of scenarios, as outlined earlier. A better response on the part of senior management would be, "Are the risks associated with these scenarios acceptable? If not, let's investigate what trades we can put on or other actions we can take to make these types of risks more acceptable."

The problem for both senior management and the risk management group is that they have two separate reports on their desks concerning what could go wrong. One report comes from VaR or ES models, the other from internal stress testing. Which one should they base their decision making on?

# 16.3.1 Integrating Stress Testing and VaR Calculations

Berkowitz (2000) suggests that stress testing will be taken more seriously if its results are integrated into the calculation of VaR. This can be done by assigning a probability to each stress scenarios that is considered. Suppose that a financial institution has considered  $n_s$  stress scenarios and the total probability assigned to the stress scenarios is  $p$ . Assume further that there are  $n_\nu$  VaR scenarios generated using historical simulation in the usual way. An analyst can assume that there are a total of  $n_s + n_\nu$  scenarios. The  $n_s$  stress scenarios have probability  $p$  and the  $n_\nu$  historical scenarios have probability  $1 - p$ .

Unfortunately human beings are not good at estimating a subjective probability for the occurrence of a rare event. To make the task feasible for the stress-testing committee, one approach is to ask the stress-testing committee to allocate each scenario to categories with preassigned probabilities. The categories might be:

1. Probability  $= 0.05\%$ . Extremely unlikely. One chance in 2,000.
2. Probability  $= 0.2\%$ . Very unlikely, but the scenario should be given about the same weight as the 500 scenarios used in the historical simulation analysis.
3. Probability  $= 0.5\%$ . Unlikely, but the scenario should be given more weight than the 500 scenarios used in the historical simulation analysis.

# Example 16.2

Suppose that, in the example in Section 12.1, five stress scenarios are considered. They lead to losses (000s) of 400, 700, 900, 1,050, and 1,200. The probabilities assigned to the scenarios are 0.5\%, 0.2\%, 0.2\%, 0.05\%, and 0.05\%, respectively. The total probability of the stress scenarios is, therefore, 1\%. This means that the probability assigned to the scenarios generated by historical simulation is 99\%. Assuming that equal weighting is used, each historical simulation scenario is assigned a probability of 0.99 / 500 = 0.00198. Table 12.4 is therefore replaced by Table 16.1. The probabilities assigned to scenarios are

Table 16.1 Losses Ranked from Highest to Lowest

<table><tr><td>Scenario</td><td>Loss (000s)</td><td>Probability</td><td>Cumulative Probability</td></tr><tr><td>s5</td><td>1,200.000</td><td>0.00050</td><td>0.00050</td></tr><tr><td>s4</td><td>1,050.000</td><td>0.00050</td><td>0.00100</td></tr><tr><td>v427</td><td>922.484</td><td>0.00198</td><td>0.00298</td></tr><tr><td>s3</td><td>900.000</td><td>0.00200</td><td>0.00498</td></tr><tr><td>v429</td><td>858.423</td><td>0.00198</td><td>0.00696</td></tr><tr><td>s2</td><td>700.000</td><td>0.00200</td><td>0.00896</td></tr><tr><td>v424</td><td>653.542</td><td>0.00198</td><td>0.01094</td></tr><tr><td>v415</td><td>490.215</td><td>0.00198</td><td>0.01292</td></tr><tr><td>v482</td><td>422.291</td><td>0.00198</td><td>0.01490</td></tr><tr><td>s1</td><td>400.000</td><td>0.00500</td><td>0.01990</td></tr><tr><td>v440</td><td>362.733</td><td>0.00198</td><td>0.02188</td></tr><tr><td>v426</td><td>360.532</td><td>0.00198</td><td>0.02386</td></tr><tr><td>v431</td><td>353.788</td><td>0.00198</td><td>0.02584</td></tr><tr><td>…</td><td>…</td><td>…</td><td>…</td></tr><tr><td>…</td><td>…</td><td>…</td><td>…</td></tr><tr><td>…</td><td>…</td><td>…</td><td>…</td></tr></table>

For Example 16.2, s1, s2, … are the stress scenarios; v1, v2, … are the VaR historical simulation scenarios.

accumulated from the worst scenario to the best. $^{7}$  The VaR level when the confidence level is  $99\%$  is the first loss for which the cumulative probability is greater than 0.01. In our example this is 653,542.

Rebonato (2010) suggests a more elaborate approach to assessing probabilities of scenarios involving a careful application of a well-known result in statistics, Bayes' theorem, and what are known as Bayesian networks. The probability of a scenario consisting of two events is equal to the probability of the first event happening times the probability of the second event happening conditional on the first event having happened. Similarly the probability of a scenario consisting of three events is the probability of the first event happening times the probability of the second event happening conditional that the first event has happened times the probability of the third event happening conditional that the first two events have happened. Rebonato's approach provides a way of evaluating the conditional probabilities.

# 16.3.2 Subjective vs. Objective Probabilities

There are two types of probability estimates: objective and subjective. An objective probability for an event is a probability calculated by observing the frequency with which the event happens in repeated trials. As an idealized example of an objective probability, consider an urn containing red balls and black balls in an unknown proportion. We want to know the probability of a ball drawn at random from the urn being red. We could draw a ball at random, observe its color, replace it in the urn, draw another ball at random, observe its color, replace it in the urn, and so on, until 100 balls have been drawn. If 30 of the balls that have been drawn are red and 70 are black, our estimate for the probability of drawing a red ball is 0.3. Unfortunately, most objective probabilities calculated in real life are usually less reliable than the probability in this example, because the probability of the event happening does not remain constant for the observations that are available and the observations may not be independent.

A subjective probability is a probability derived from an individual's personal judgment about the chance of a particular event occurring. The probability is not based on historical data. It is a degree of belief. Different people are liable to have different subjective probabilities for the same event.

The probabilities in historical simulation are objective whereas the probabilities assigned to the scenarios in stress testing are subjective. Many analysts are uncomfortable with subjective probabilities because they are not based on data. Also, it is unfortunately the case that political considerations may play a part in a financial institution's decision to focus on historical data. If you use historical data and things go wrong, you can blame the data. If you use subjective judgments that have been provided by a group of people, those people are liable to be blamed.

However, if it is based only on objective probabilities, risk management is inevitably backward looking and fails to capitalize on the judgment and expertise of senior managers. It is the responsibility of those managers to steer the financial institution so that catastrophic risks are avoided.

# Summary

Stress testing is an important part of the risk management process. It leads to a financial institution considering the impact of extreme scenarios that are ignored by a traditional VaR or ES analysis, but that do happen from time to time. Once plausible scenarios have been evaluated, the financial institution can take steps to lessen the impact of the particularly bad ones. One advantage of a comprehensive stress-testing program is that a financial institution obtains a better understanding of the nature of the risks in its portfolio.

Scenarios can be generated in a number of different ways. One approach is to consider extreme movements in just one market variable while keeping others fixed. Another is to use the movements in all market variables that occurred during periods in the past when the market experienced extreme shocks. The best approach is to ask a committee of senior management and economists to use their judgment and experience to generate the plausible extreme scenarios. Sometimes financial institutions carry out reverse stress testing where algorithms are used to search for scenarios that would lead to large losses. Scenarios should be as complete as possible and include the impact of knock-on effects as well as the initial shock to market variables. The market turmoil starting in summer 2007 shows that, in some cases, the knock-on effect can be significant and include a flight to quality, an increase in credit spreads, and a shortage of liquidity.

Regulators require financial institutions to keep sufficient capital for stress scenarios. Regulators in the United States, European Union, and United Kingdom regularly develop stress scenarios to be evaluated by all the large financial institutions they are responsible for. This may lead to some of the financial institutions having to raise more capital and has the potential to uncover systemic risk problems.

If subjective probabilities are assigned to the extreme scenarios that are considered, stress testing can be integrated with a VaR analysis. This is an interesting idea, but it does not seem to have been widely adopted by financial institutions or their regulators.

# Further Reading

Alexander, C., and E. A. Sheedy. "Developing a Stress-Testing Framework Based on Market Risk Models." Journal of Banking and Finance 32, no. 10 (2008): 2220-2236.

Aragonés, J. R., C. Blanco, and K. Dowd. "Incorporating Stress Tests into Market Risk Modeling." Derivatives Quarterly 7 (Spring 2001): 44-49.

Aragonés, J. R., C. Blanco, and K. Dowd. "Stress Tests, Market Risk Measures, and Extremes: Bringing Stress Tests to the Forefront of Market Risk Management." In Stress Testing for Financial Institutions: Applications, Regulations, and Techniques, edited by D. Rösch and H. Scheule. London: Risk Books, 2008.

Basel Committee on Banking Supervision. "Principles for Sound Stress-Testing Practices and Supervision," May 2009.

Berkowitz, J. "A Coherent Framework for Stress Testing." Journal of Risk 2, no. 2 (Winter 1999/2000): 5-15.

Bogle, J. C. "Black Monday and Black Swans." *Financial Analysts Journal* 64, no. 2 (March/April 2008): 30-40.

Clemens, R., and R. Winkler. "Combining Probability Distributions from Experts in Risk Analysis." Risk Analysis 19, no. 2 (April 1999): 187-203.

Duffie, D. "Systemic Risk Exposures: A 10-by-10-by-10 Approach." Working Paper, Stanford University, 2011.

Glasserman, P., C. Kang, and W. Kang. "Stress Scenario Selection by Empirical Likelihood." Quantitative Finance 15 (2015): 25-41.

Hassani, B. Scenario Analysis in Risk Management. Cham, Switzerland: Springer, 2016.

Hua, P., and P. Wilmott. "Crash Courses." Risk 10, no. 6 (June 1997): 64-67.

Kim, J., and C. C. Finger. "A Stress Test to Incorporate Correlation Breakdown." Journal of Risk 2, no. 3 (Spring 2000): 5-19.

Kupiec, P. "Stress Testing in a Value at Risk Framework." Journal of Derivatives 6 (1999): 7-24.

Rebonato, R. Coherent Stress Testing: A Bayesian Approach to the Analysis of Financial Stress. Chichester, UK: John Wiley & Sons, 2010.

Taleb, N. N. The Black Swan: The Impact of the Highly Improbable. New York: Random House, 2007.

# Practice Questions and Problems (Answers at End of Book)

16.1 Explain three different ways that scenarios can be generated for stress testing.
16.2 What is reverse stress testing? How is it used?
16.3 Why might the regulatory environment lead to a financial institution underestimating the severity of the scenarios it considers?
16.4 What are traffic light options? What are their drawbacks?
16.5 Why is it important for senior management to be involved in stress testing?
16.6 What are the advantages and disadvantages of bank regulators choosing some of the scenarios that are considered for stress testing?
16.7 Explain the difference between subjective and objective probabilities.
16.8 Suppose that, in the example in Section 12.1, seven stress scenarios are considered. They lead to losses (000s) of 400, 600, 700, 1,000, 1,100, 1,300, and 1,400. The subjective probabilities assigned to the scenarios are 0.5\%, 0.5\%, 0.2\%, 0.2\%, 0.05\%, 0.05\%, and 0.05\%, respectively. What is the new one-day 99\% VaR that would be calculated using the procedure discussed in Section 16.3?
16.9 Suppose that the positions in the four options in Example 16.1 are changed to 200, -70, -120, and -60. Use Solver to calculate the worst-case scenario for a daily change. Consider asset prices between  $40 and$ 60 and volatilities between 10\% and 30\%.

# Further Questions

16.10 What difference does it make to the worst-case scenario in Example 16.1 if (a) the options are American rather than European and (b) the options are barrier options that are knocked out if the asset price reaches $65? Use Solver to search over asset prices between $40 and 60 and volatilities between 18\% and 30\%.
16.11 What difference does it make to the VaR calculated in Example 16.2 if the exponentially weighted moving average model is used to assign weights to historical scenarios as described in Section 12.3.1?

# Part Four

# CREDIT RISK


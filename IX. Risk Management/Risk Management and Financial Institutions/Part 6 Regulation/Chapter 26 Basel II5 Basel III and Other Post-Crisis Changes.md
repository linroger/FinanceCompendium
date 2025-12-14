---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Chapter 26
linter-yaml-title-alias: Chapter 26
---

# Chapter 26

# Basel II.5, Basel III, and Other Post-Crisis Changes

It was perhaps unfortunate for Basel II that its implementation date coincided, at least approximately, with the start of the worst crisis that financial markets had experienced since the 1930s. Some commentators have blamed Basel II for the Global Financial Crisis. They point out that it was a move toward self-regulation where banks, when calculating regulatory capital, had the freedom to use their own estimates of model inputs such as PD, LGD, and EAD. However, blaming Basel II may be unfair because, as explained in Chapter 7, the seeds of the crisis were sown well before Basel II was implemented.

This chapter starts by discussing what has become known as Basel II.5. This is a collection of changes to the calculation of market risk capital that was put in place by the Basel Committee on Banking Supervision following the large losses experienced by banks during the crisis. The implementation date for Basel II.5 was December 31, 2011.

The chapter then moves on to consider Basel III, which was a much bigger post-crisis overhaul of bank regulations. A first set of regulations were published in December 2010 and the Basel II regulations were finalized in December 2017. (New rules for market risk, which are part of Basel III but sometimes referred to as Basel IV, are discussed in Chapter 27.) The implementation of Basel III has been phased in over several years.

The chapter also discusses other regulations that have been introduced since the 2008 crisis to complement the work of the Basel Committee. These include the Dodd-Frank Act, which was signed into law by President Barack Obama in the United States on July 21, 2010, and rules introduced in the European Union and the United Kingdom.

# 26.1 Basel II.5

During the credit crisis, it was recognized that some changes were necessary to the calculation of capital for market risk. These changes are referred to as Basel II.5 and, as already mentioned, the implementation date for them was December 31, 2011.2 There are three changes involving:

1. The calculation of a stressed VaR;
2. A new incremental risk charge; and
3. A comprehensive risk measure for instruments dependent on credit correlation.

The measures have the effect of greatly increasing the market risk capital that large banks are required to hold.

# 26.1.1 Stressed VaR

The 1996 Amendment to Basel I, where capital was first required for market risk, allowed banks to base capital on a 10-day  $99\%$  VaR measure. Most banks use historical simulation to calculate VaR. This is described in Chapter 12. The assumption underlying historical simulation was that the changes in market variables during the following day would be a random sample from their daily changes (percentage or actual) observed during the previous one to four years. The 2003-2006 period was one where the volatility of most market variables was low. As a result, the market risk VaRs calculated during this period for regulatory capital purposes were also low. Furthermore, the VaRs continued to be too low for a period of time after the onset of the crisis, because much of the data used to calculate them continued to come from a low-volatility period.

This led the Basel Committee to introduce the stressed VaR measure. As explained in Section 12.1.3, stressed VaR is determined by basing calculations on how market variables moved during a 250-day (12-month) period of stressed market conditions, rather than on how they moved during the past one to four years. The historical simulation calculations to arrive at a stressed VaR measure assume that the changes in market variables during the next day are a random sample from their daily changes observed during the 250-day period of stressed market conditions.

Basel II.5 requires banks to calculate two VaRs. One is the usual VaR (based on the previous one to four years of market movements). The other is the stressed VaR

(calculated from a stressed period of 250 days). The two VaR measures are combined to calculate a total capital charge. The formula for the total capital charge is

$$
\max  \left(\mathrm {V a R} _ {t - 1}, m _ {c} \times \mathrm {V a R} _ {\text {a v g}}\right) + \max  \left(\mathrm {s V a R} _ {t - 1}, m _ {s} \times \mathrm {s V a R} _ {\text {a v g}}\right)
$$ where  $\mathrm{VaR}_{t-1}$  and  $\mathrm{sVaR}_{t-1}$  are the VaR and stressed VaR (with a 10-day time horizon and a  $99\%$  confidence level) calculated on the previous day. The variables  $\mathrm{VaR}_{\mathrm{avg}}$  and  $\mathrm{sVaR}_{\mathrm{avg}}$  are the average of VaR and stressed VaR (again with a 10-day time horizon and a  $99\%$  confidence level) calculated over the previous 60 days. The parameters  $m_s$  and  $m_c$  are multiplicative factors that are determined by bank supervisors and are at minimum equal to three. As explained in Section 25.6, the market risk capital requirement prior to Basel II.5 was


$$

\max  \left(\mathrm {V a R} _ {t - 1}, m _ {c} \times \mathrm {V a R} _ {\mathrm {a v g}}\right)

$$

Because stressed VaR is always at least as great as VaR, the formula shows that (assuming  $m_{c} = m_{s}$ ) the impact of this new rule is to at least double the capital requirement. In practice, a trebling of the capital requirement as a result of the change was not unusual.

Originally it was considered that 2008 would constitute a good one-year period for the calculation of stressed VaR. Later it was realized that the one-year period chosen should reflect a bank's portfolio. A bank is therefore required to search for a one-year period that would be particularly stressful for its current portfolio. The stressed period used by one bank is therefore not necessarily the same as that used by another bank.

# 26.1.2 Incremental Risk Charge

In 2005, the Basel Committee became concerned that exposures in the trading book were attracting less capital than similar exposures in the banking book. Consider a bond. If held in the trading book, the capital would be calculated by applying a multiplier to the 10-day  $99\%$  VaR, as discussed in Section 25.6. If held in the banking book (and treated like a loan), capital for the bond would be calculated using VaR with a one-year time horizon and a  $99.9\%$  confidence level, as discussed in Section 25.8. The trading-book calculation usually gave rise to a much lower capital charge than the banking-book calculation. As a result, banks tended whenever possible to hold credit-dependent instruments in the trading book.

Regulators proposed what is referred to as an incremental default risk charge (IDRC) in 2005 for instruments in the trading book that were sensitive to default risk. The effect of this was that the capital requirement for these instruments equaled the maximum of the capital using trading book calculations and the capital using banking book calculations. In 2008, the Basel Committee recognized that most of the losses in the credit market turmoil of 2007 and 2008 were from changes in credit ratings, widening of credit spreads, and loss of liquidity, rather than solely as a result of defaults. It therefore amended its previous proposals to reflect this. The new requirement became known as the incremental risk charge (IRC).


The IRC requires banks to calculate a one-year  $99.9\%$  VaR for losses from credit-sensitive products in the trading book taking both credit rating changes and defaults into account. Like the IDRC, the aim was to set capital equal to the maximum of that obtained using trading book calculations and that obtained using banking book calculations. Because the instruments subject to the IRC are in the trading book, it is assumed that a bank will have the opportunity to rebalance its portfolio during the course of the year so that default risk is mitigated. Banks are therefore required to estimate a liquidity horizon for each instrument subject to the IRC. The liquidity horizon represents the time required to sell the position or to hedge all material risks in a stressed market.

Suppose that the liquidity horizon for a bond with a credit rating of A is three months. For the purposes of the calculation of VaR over a one-year time horizon, the bank assumes that at the end of three months, if the bond's rating has changed or if it has defaulted, it is replaced by an A-rated bond similar to that held at the beginning of the period. The same thing happens at the end of six months and at the end of nine months. This is known as the constant level of risk assumption.

The impact of the constant level of risk assumption is that it is less likely that there will be a default. Instead, small losses are realized from ratings downgrades when rebalancing takes place. The assumption typically has the effect of reducing the one-year  $99.9\%$  VaR. $^{5}$  The minimum liquidity horizon for IRC is specified by the Basel Committee as three months.

The IRC therefore provides a measure of the default and credit migration risks of credit products over a one-year horizon at a  $99.9\%$  confidence level, taking into account the liquidity horizons of individual positions or sets of positions.

# 26.1.3 The Comprehensive Risk Measure

The comprehensive risk measure (CRM) is designed to take account of risks in what is known as the correlation book. This is the portfolio of instruments such as asset-backed securities (ABSs) and collateralized debt obligations (CDOs) that are sensitive to the correlation between the default risks of different assets. These instruments were discussed in Chapter 7. Suppose a bank has a AAA-rated tranche of an ABS. In the normal market environment, there is very little risk of losses from the tranche. However, in stressed market environments when correlations increase, the tranche is vulnerable—as became apparent during the 2007–2009 crisis.

Table 26.1 Standardized Capital Charge for Correlation-Dependent Instruments

<table><tr><td>External Credit Assessment</td><td>AAA to AA-</td><td>A+ to A-</td><td>BBB+ to BBB-</td><td>BB+ to BB-</td><td>Below BB- or Unrated</td></tr><tr><td>Securitizations</td><td>1.6\%</td><td>4\%</td><td>8\%</td><td>28\%</td><td>Deduction</td></tr><tr><td>Resecuritizations</td><td>3.2\%</td><td>8\%</td><td>18\%</td><td>52\%</td><td>Deduction</td></tr></table>

The CRM is a single capital charge replacing the incremental risk charge and the specific risk charge for instruments dependent on credit correlation. The Basel II.5 standardized approach for calculating the CRM is summarized in Table 26.1. Given the experience of the securitization market during the crisis (see Chapter 7), it is not surprising that capital charges are higher for resecuritizations (e.g., ABS CDOs) than for securitizations (e.g., ABSs). A deduction means that the principal amount is subtracted from capital, which is equivalent to a  $100\%$  capital charge.

Basel II.5 allows banks, with supervisory approval, to use their internal models to calculate the CRM. The models developed by banks have to be quite sophisticated to be approved by bank supervisors. For example, they must capture the cumulative impact of multiple defaults, credit spread risk, the volatility of implied correlations, the relationship between credit spreads and implied correlations, recovery rate volatility, the risk of hedge slippage, and potential hedge rebalancing costs. A routine and rigorous program of stress testing is also required. The capital charge calculated from an internal model is subject to a floor calculated from the capital given by the standardized approach.

# 26.2 Basel III

Following the 2007-2009 Global Financial Crisis, the Basel Committee realized that a major overhaul of Basel II was necessary. Basel II.5 increased capital requirements for market risk. The Basel Committee wanted to increase equity capital requirements further. In addition, it considered that the definition of equity capital needed to be tightened and that regulations were needed to address liquidity risk.

Basel III proposals were first published in December 2009 soon after the end of the Global Financial Crisis. Following comments from banks, a quantitative impact study, and a number of international summits, a first set of regulations was published in December 2010. They were finalized in 2017.

There are six parts to the regulations:

1. Capital Definition and Requirements
2. Capital Conservation Buffer

3. Countercyclical Buffer
4. Leverage Ratio
5. Liquidity Risk
6. Counterparty Credit Risk

The regulations were originally scheduled to be introduced between 2013 and 2015. However, for various reasons implementation of many of the Basel III requirements has been delayed to January 2023.

# 26.2.1 Capital Definition and Requirements

Under Basel III, a bank's total capital consists of:

1. Tier 1 equity capital
2. Additional Tier 1 capital
3. Tier 2 capital

There is no Tier 3 capital.

Tier 1 equity capital (also referred to as common equity Tier 1 or CET1 capital) includes share capital and retained earnings but does not include goodwill or deferred tax assets. It must be adjusted downward to reflect defined benefit pension plan deficits but is not adjusted upward to reflect defined benefit plan surpluses. (See Section 3.12 for a discussion of defined benefit plans.) Changes in retained earnings arising from securitized transactions are not counted as part of capital for regulatory purposes. The same is true of changes in retained earnings arising from the bank's own credit risk. (The latter is referred to as DVA and is discussed in Chapter 18.) There are rules relating to the inclusion of minority interests and capital issued by consolidated subsidiaries.

The additional Tier 1 (AT1) capital category consists of items, such as non-cumulative preferred stock, that were previously Tier 1 but are not common equity. Tier 2 capital includes debt that is subordinated to depositors with an original maturity of five years.

Common equity is referred to by the Basel Committee as "going-concern capital." When the bank is a going concern (i.e., has positive equity capital), common equity absorbs losses. Tier 2 capital is referred to as "gone-concern capital." When the bank is no longer a going concern (i.e., has negative capital), losses have to be absorbed by Tier 2 capital. Tier 2 capital ranks below depositors in a liquidation. While Tier 2 capital remains positive, depositors should in theory be repaid in full.

The capital requirements are as follows:

1. Tier 1 equity capital must be at least  $4.5\%$  of risk-weighted assets at all times.
2. Total Tier 1 capital (Tier 1 equity capital plus additional Tier 1 capital) must be at  $6\%$  of risk-weighted assets at all times.
3. Total capital (total Tier 1 plus Tier 2) must be at least  $8\%$  of risk-weighted assets at all times.

Table 26.2 Dividend Restrictions Arising from the Capital Conservation Buffer

<table><tr><td>Tier 1 Equity Capital Ratio</td><td>Minimum Percent of Earnings Retained</td></tr><tr><td>4.000\% to 5.125\%</td><td>100\%</td></tr><tr><td>5.125\% to 5.750\%</td><td>80\%</td></tr><tr><td>5.750\% to 6.375\%</td><td>60\%</td></tr><tr><td>6.375\% to 7.000\%</td><td>40\%</td></tr><tr><td>&gt;7\%</td><td>0\%</td></tr></table>

Basel I required Tier 1 equity capital to be at least  $2\%$  of risk-weighted assets and total Tier 1 capital to be at least  $4\%$  of risk-weighted assets. The Basel III rules are much more demanding because (a) these percentages have been increased and (b) the definition of what qualifies as equity capital for regulatory purposes has been tightened. However, the Tier 1 plus Tier 2 requirement is the same as under Basel I and Basel II.

The Basel Committee also calls for more capital for "systemically important" banks, as will be discussed later in this chapter.

# 26.2.2 Capital Conservation Buffer

In addition to the capital requirements just mentioned, Basel III requires a capital conservation buffer in normal times consisting of a further amount of CET1 equal to  $2.5\%$  of risk-weighted assets. This provision is designed to ensure that banks build up capital during normal times so that it can be run down when losses are incurred during periods of financial difficulties. (The argument in favor of this is that it is much easier for banks to raise capital during normal times than during periods of stressed market conditions.) In circumstances where the capital conservation buffer has been wholly or partially used up, banks are required to constrain their dividends until the capital has been replenished. The dividend rules are summarized in Table 26.2. For example, if CET1 is  $5.5\%$  of risk-weighted assets, the minimum retained earnings is  $80\%$  so that the maximum dividends as a percent of retained earnings is  $20\%$ . The difference between the  $4.5\%$  basic equity capital requirement and the  $7.0\%$  equity capital requirement that includes the capital conservation buffer is in some ways analogous to the difference between the MCR and SCR in Solvency II (see Section 25.12).

The capital conservation buffer means that the Tier 1 equity capital that banks are required to keep in normal times (excluding other requirements that will be discussed later) is  $7\%$  of risk-weighted assets; total Tier 1 capital is required to be at least  $8.5\%$  of risk-weighted assets; Tier 1 plus Tier 2 capital is required to be at least  $10.5\%$  of risk-weighted assets. These numbers can decline to  $4.5\%$ ,  $6\%$ , and  $8\%$  in stressed market conditions (because of losses), but banks are then under pressure to bring capital back up to the required levels. One of the consequences of the increased equity capital requirement is that banks may find it difficult to achieve the returns on equity that they had

Table 26.3 Dividend Restrictions Arising from the Capital Conservation Buffer and  $2.5\%$  Countercyclical Buffer

<table><tr><td>Tier 1 Equity Capital Ratio</td><td>Minimum Percent of Earnings Retained</td></tr><tr><td>4.50\% to 5.75\%</td><td>100\%</td></tr><tr><td>5.75\% to 7.00\%</td><td>80\%</td></tr><tr><td>7.00\% to 8.25\%</td><td>60\%</td></tr><tr><td>8.25\% to 9.50\%</td><td>40\%</td></tr><tr><td>&gt;9.50\%</td><td>0\%</td></tr></table> during the 1990 to 2006 period. However, bank shareholders can console themselves that bank stock is less risky as a result of the extra capital.


# 26.2.3 Countercyclical Buffer

In addition to the capital conservation buffer, Basel III has specified a countercyclical buffer. This is similar to the capital conservation buffer, but the extent to which it is implemented in a particular country is left to the discretion of national authorities. The buffer is intended to provide protection for the cyclicality of bank earnings. The buffer can be set to between  $0\%$  and  $2.5\%$  of total risk-weighted assets and must be met with Tier 1 equity capital (CET1).

For jurisdictions where the countercyclical buffer is non-zero, Table 26.2 is modified. For example, when the countercyclical buffer is set at its maximum level of  $2.5\%$ , it is replaced by Table 26.3.

# 26.2.4 Leverage Ratio

In addition to the capital requirements based on risk-weighted assets, Basel III specifies a minimum leverage ratio of  $3\%$ . The leverage ratio is the ratio of a capital measure to an exposure measure. The capital measure is total Tier 1 capital. The exposure measure is the sum of (a) on-balance-sheet exposures, (b) derivatives exposures, (c) securities financing transaction exposures, and (d) off-balance-sheet items. No risk-weighting adjustments are made. The on-balance-sheet exposures include all assets on the balance sheet. Derivatives exposures are calculated as "replacement cost plus add-on" similar to the way they are calculated under Basel I (see Section 25.3). Securities financing transaction exposures include transactions such as repurchase agreements and security lending/borrowing when the transaction does not lead to balance sheet assets. Off-balance-sheet items include loan commitments, loan substitutes, acceptances, and letters of credit.

Regulators in some countries have indicated that they regard Basel's leverage ratio of  $3\%$  as too low. In April 2014, regulators in the United States proposed rules requiring a  $5\%$  leverage ratio for eight large bank holding companies (which, as we will explain later, are known as G-SIBs), and  $6\%$  for the FDIC-insured subsidiaries of these bank holding companies. In October 2014, the Bank of England's Financial Policy Committee increased the leverage ratio for UK banks to  $4.05\%$ , a level that could be increased to  $4.95\%$  in boom times to rein in excessive lending. In China the leverage ratio has been set at  $4\%$ .


Why did the Basel Committee introduce the leverage ratio? The reason is that regulators thought that banks had too much discretion in the way risk-weighted assets were calculated. They have far less discretion in the way "total exposure" is calculated. It should be emphasized that this does not mean that regulators are discarding capital requirements based on risk-weighted assets. They require banks to satisfy both (a) the ratios of capital to risk-weighted assets mentioned earlier in this chapter and (b) the ratio of capital to non-risk-weighted exposure leverage requirement explained here.

One of the two capital ratios is likely to be the critical ratio for a bank (i.e., the ratio it is closest to not complying with). If the risk-weighted assets ratio is the critical one, then arguably the leverage ratio can be justified because it provides useful additional information to regulators. But if the leverage ratio is the critical one (and there is some evidence that at times it has been for some U.S. banks), a bank might be encouraged to hold risky assets because they have the same effect on the leverage ratio as safe assets but provide a higher expected return. This could be an unintended adverse consequence for regulators.

# 26.2.5 Liquidity Risk

Prior to the financial crisis, the focus of the Basel regulations had been on ensuring that banks had sufficient capital for the risks they were taking. It turned out that many of the problems encountered by financial institutions during the crisis were not as a result of a shortage of capital. They were instead a result of liquidity risks taken by the banks.

Liquidity risks arise because there is a tendency for banks to finance long-term needs with short-term funding, such as commercial paper. Provided the bank is perceived by the market to be financially healthy, this is usually not a problem. Suppose that a bank uses 90-day commercial paper to fund its activities. When one 90-day issue of commercial paper matures, the bank refinances with a new issue; when the new issue matures, it refinances with another issue; and so on. However, as soon as the bank experiences financial difficulties—or is thought to be experiencing financial difficulties—it is liable to become impossible for the bank to roll over its commercial paper. This type of problem led to the demise of Northern Rock in the United Kingdom and Lehman Brothers in the United States.

Table 26.4 ASF Factors for Net Stable Funding Ratio

<table><tr><td>ASF Factor</td><td>Category</td></tr><tr><td>100\%</td><td>Tier 1 and Tier 2 capital</td></tr><tr><td></td><td>Preferred stock and borrowing with a remaining maturity greater than one year</td></tr><tr><td>90\%</td><td>“Stable” demand deposits and term deposits with a remaining maturity less less than one year provided by retail or small business customers</td></tr><tr><td>80\%</td><td>“Less Stable” demand deposits and term deposits with a remaining maturity less
than one year provided by retail or small business customers</td></tr><tr><td>50\%</td><td>Wholesale demand deposits and term deposits with a remaining maturity less than one year provided by non-financial corporates, sovereigns, central
banks, multilateral development banks, and public-sector entities</td></tr><tr><td>0\%</td><td>All other liability and equity categories</td></tr></table>

Basel III has introduced requirements involving two liquidity ratios that are designed to ensure that banks can survive liquidity pressures. The ratios are:

1. Liquidity Coverage Ratio (LCR); and
2. Net Stable Funding Ratio (NSFR)

The LCR focuses on a bank's ability to survive a 30-day period of liquidity disruptions. It is defined as:

# High-Quality Liquid Assets Net Cash Outflows in a 30-Day Period

The 30-day period considered in the calculation of this ratio is one of acute stress involving a downgrade of the bank's debt by three notches (e.g., from AA- to A-), a partial loss of deposits, a complete loss of wholesale funding, increased haircuts on secured funding (so that instruments posted as collateral are not valued as highly), and drawdowns on lines of credit. The Basel III regulations require the ratio to be greater than  $100\%$  so that the bank's liquid assets are sufficient to survive these pressures.

The NSFR focuses on liquidity management over a period of one year. It is defined as

# Amount of Stable Funding Required Amount of Stable Funding

The numerator is calculated by multiplying each category of funding (capital, wholesale deposits, retail deposits, etc.) by an available stable funding (ASF) factor, reflecting their stability. As shown in Table 26.4, the ASF for wholesale deposits is less than that for retail deposits, which in turn is smaller than that for Tier 1 or Tier 2 capital. The denominator is calculated from the items requiring funding. Each category of these is multiplied by a required stable funding (RSF) factor to reflect the permanence of the funding required. Some of the applicable factors are indicated in Table 26.5.

Table 26.5 RSF Factors for Net Stable Funding Ratio

<table><tr><td>RSF Factor</td><td>Category</td></tr><tr><td>0\%</td><td>CashShort-term instruments, securities, loans to financial entities if they have a residual maturity of less than one year</td></tr><tr><td>5\%</td><td>Marketable securities with a residual maturity greater than one year if they are claims on sovereign governments or similar bodies with a 0\% risk weight</td></tr><tr><td>20\%</td><td>Corporate bonds with a rating of AA- or higher and a residual maturity greater than one year</td></tr><tr><td></td><td>Claims on sovereign governments or similar bodies with a risk weight of 20\%</td></tr><tr><td>50\%</td><td>Gold, equity securities, bonds rated A+ to A-</td></tr><tr><td>65\%</td><td>Residential mortgages</td></tr><tr><td>85\%</td><td>Loans to retail and small business customers with a remaining maturity less than one year</td></tr><tr><td>100\%</td><td>All other assets</td></tr></table>

Basel III requires the NSFR to be greater than  $100\%$  so that the calculated amount of stable funding is greater than the calculated required amount of stable funding.

# Example 26.1

A bank has the following balance sheet:

<table><tr><td>Cash</td><td>5</td><td>Retail Deposits (stable)</td><td>40</td></tr><tr><td>Treasury Bonds (&gt;1 yr)</td><td>5</td><td>Wholesale Deposits</td><td>48</td></tr><tr><td>Mortgages</td><td>20</td><td>Tier 2 Capital</td><td>4</td></tr><tr><td>Small Business Loans</td><td>60</td><td>Tier 1 Capital</td><td>8</td></tr><tr><td>Fixed Assets</td><td>10</td><td></td><td></td></tr><tr><td></td><td>100</td><td></td><td>100</td></tr></table>

The Amount of Stable Funding is

$$

4 0 \times 0. 9 + 4 8 \times 0. 5 + 4 \times 1. 0 + 8 \times 1. 0 = 7 2

$$

The Required Amount of Stable Funding is

$$

5 \times 0 + 5 \times 0. 0 5 + 2 0 \times 0. 6 5 + 6 0 \times 0. 8 5 + 1 0 \times 1. 0 = 7 4. 2 5

$$

The NSFR is therefore

$$

\frac {7 2}{7 4 . 2 5} = 0. 9 7 0

$$ or  $97.0\%$ . The bank does not therefore satisfy the NSFR requirement.

The new rules are tough and have led to big changes in bank balance sheets. It was estimated in September 2014 that the rules will require U.S. banks to hold an extra 100 billion of liquid assets.

# 26.2.6 Counterparty Credit Risk

For each of its derivatives counterparties, a bank calculates a credit value adjustment (CVA) which has been discussed in earlier chapters. This is the expected loss because of the possibility of a default by the counterparty. The way in which the calculation of CVA is carried out was described in Chapter 18. Reported profit is reduced by the total of the CVAs for all counterparties.

The CVA for a counterparty can change because either (a) the risk factors underlying the value of the derivatives entered into with the counterparty change or (b) the credit spreads applicable to the counterparty's borrowing change. Basel III requires the CVA risk arising from changing credit spreads to be a component of market risk capital. Once CVA has been calculated, it is a relatively simple matter to calculate the delta and gamma with respect to a parallel shift in the term structure of the counterparty's credit spread. These can be used to calculate appropriate market risk measures.

The Basel Committee proposed changes to the calculation of capital for CVA risk in 2015. A major objective was to allow banks that hedged the impact of both credit spread changes and risk factor changes on CVA to take both into account when calculating regulatory capital. Without this change, hedges for risk factor changes would increase capital charges.

# 26.2.7 G-SIBs, SIFIs, and D-SIBs

Regulators are particularly concerned that large, systemically important financial institutions keep sufficient capital to avoid a repeat of the government bailouts during the 2007 to 2009 financial crisis.

The term G-SIB stands for global systemically important bank, whereas the term SIFI (systemically important financial institution) is used to describe both banks and nonbanks that are considered to be systemically important. The popular view of SIFIs is that they are "too big to fail," and have been identified as the financial institutions that will have to be bailed out if they run into financial difficulties.

The systemic importance of a bank or other financial institution depends on the effect that its failure could have on the global financial system. This in turn depends on the nature of its activities and the contracts it has entered into with other financial institutions globally. The Basel Committee uses a scoring methodology to determine which banks are G-SIBs. Other approaches involving network theory have been attempted by some researchers.

In 2013, the Basel Committee published the final version of rules that call for more Tier 1 equity capital for G-SIBs. $^{10}$  G-SIBs are categorized according to whether the extra equity capital is  $1\%$ ,  $1.5\%$ ,  $2\%$ ,  $2.5\%$ , or  $3.5\%$  of risk-weighted assets.

A list of G-SIBs is published by the Financial Stability Board annually. In November 2021, the list included the 30 banks shown in Table 26.6. A total of 18 banks were in the  $1\%$  category, eight were in the  $1.5\%$  category, three were in the  $2\%$  category, and one (JP Morgan Chase) was in the  $2.5\%$  category. None were in the  $3.5\%$  category. The CET1 capital, as a percent of risk-weighted assets required by the banks in Table 26.6, was therefore the baseline  $4.5\%$  plus  $2.5\%$  for the capital conservation buffer plus the amount indicated in the table plus any extra amounts required by national supervisors. The CET1 plus AT1 required capital was  $1.5\%$  more than this.

In November 2015, the Financial Stability Board issued proposals concerning the total loss-absorbing capacity (TLAC) of G-SIBs. The proposals were developed in consultation with the Basel Committee on Banking Supervision and were in response to a call by G20 leaders at the 2013 St. Petersburg Summit. TLAC consists of instruments that can absorb losses and protect depositors in the event of a default. The instruments include equity, preferred shares, and subordinated debt. From January 1, 2019, the minimum TLAC for G-SIBs was set at  $16\%$  of risk-weighted assets, increasing to  $18\%$  on January 1, 2022. It also had to be less than  $6\%$  of the leverage ratio denominator on January 1, 2019, increasing to  $6.75\%$  on January 1, 2022. Non-compliance with TLAC could impede a bank's ability to issue dividends.

Some countries are requiring greater capital than the minimums set by the Basel Committee and the Financial Stability Board or are implementing the rules earlier than required. An example of a country requiring that its banks hold high amounts of capital is Switzerland, which has two G-SIBs (UBS and Credit Suisse). The high capital requirements are understandable because the banks are large in relation to the Swiss economy, so that a failure of either of them would be catastrophic.

National regulators designate some banks that have not been classified as G-SIBs as domestic systemically important banks (D-SIBs). These banks may be subject to capital requirements higher than the minimum, extra disclosure requirements, or stringent stress tests.

Table 26.6 G-SIB Banks in 2021, Categorized According to Extra Capital Required

<table><tr><td>Extra Capital</td><td>Banks</td></tr><tr><td>1\%</td><td>Agricultural Bank of China, Bank of New York Mellon, Credit Suisse, Groupe BPCE, Groupe Crédit Agricole, ING Bank, Mizuho FG, Morgan Stanley, Royal Bank of Canada, Santander, Société Générale, Standard Chartered, State Street, Sumitomo Mitsui FG, Toronto Dominion, UBS, UniCredit, Wells Fargo</td></tr><tr><td>1.5\%</td><td>Bank of America, Bank of China, Barclays, China Construction Bank, Deutsche Bank, Goldman Sachs, Industrial and Commercial Bank of China, Mitsubishi UFJ FG</td></tr><tr><td>2\%</td><td>BNP Paribas, Citigroup, HSBC</td></tr><tr><td>2.5\%</td><td>JP Morgan Chase</td></tr></table>

# 26.3 Contingent Convertible Bonds

An interesting development in the capitalization of banks has been what are known as contingent convertible bonds (CoCos). Traditionally, convertible bonds have been bonds issued by a company where, in certain circumstances, the holder can choose to convert them into equity at a predetermined exchange ratio. Typically the bond holder chooses to convert when the company is doing well and the stock price is high. CoCos are different in that they automatically get converted into equity when certain conditions are satisfied. Typically, these conditions are satisfied when the company is experiencing financial difficulties. CoCos provide a higher rate of interest than regular debt.

CoCos are attractive to banks because in normal times the bonds are debt and allow the bank to report a relatively high return on equity. When the bank experiences financial difficulties and incurs losses, the bonds are converted into equity and the bank is able to continue to maintain an equity cushion and avoid insolvency. From the point of view of regulators, CoCos are potentially attractive because they avoid the need for a bailout. Indeed, the conversion of CoCos is sometimes referred to as a "bail-in." New equity for the financial institution is provided from within by private-sector bondholders rather than from outside by the public sector.

A key issue in the design of CoCos is the specification of the trigger that forces conversion and the way that the exchange ratio (number of shares received in exchange for one bond) is set. A popular trigger in the bonds issued so far is the ratio of Tier 1 equity capital to risk-weighted assets. Another possible trigger is the ratio of the market value of equity to book value of assets.

Lloyd's Banking Group, Rabobank Netherlands, and Credit Suisse were among the first banks to issue CoCos. Business Snapshot 26.1 provides a description of the bonds issued by Credit Suisse in 2011. These bonds get converted into equity if either Tier 1 equity capital falls below  $7\%$  of risk-weighted assets or the Swiss bank regulators determine that the bank requires public-sector support. CoCos have been popular in Europe with over 200 billion of issues by 2020.

CoCos (prior to conversion) qualify as additional Tier 1 capital if the trigger, defined in terms of the ratio of Tier 1 equity capital to risk-weighted assets, is set at  $5.125\%$  or higher. Otherwise they qualify as Tier 2 capital.

# 26.4 Use of Standardized Approaches and SA-CCR

In December 2017, the Basel Committee announced that, starting in 2022, it would require the implementation of a standardized approach for all capital calculations. A bank's total capital requirement will be the maximum of (a) that calculated as before using approved internal models and (b) a certain percentage of that given by the standardized approaches. The percentage will  $50\%$  in 2023, rising to  $72.5\%$  in 2028.

# BUSINESS SNAPSHOT 26.1

# Credit Suisse's CoCo Bond Issues

On February 14, 2011, Credit Suisse announced that it had agreed to exchange 6.2 billion of existing investments by two Middle Eastern investors, Qatar Holding LLC and the Olayan Group LLC, for CoCo bonds. The bonds automatically convert into equity if either of the following two conditions are satisfied:

1. The Tier 1 equity capital of Credit Suisse falls below  $7\%$  of risk-weighted assets.
2. The Swiss bank regulator determines that Credit Suisse requires public-sector support to prevent it from becoming insolvent.

Credit Suisse followed this announcement on February 17, 2011, with a public issue of 2 billion of CoCos. These securities have similar terms to ones held to the Middle Eastern investors and were rated \mathrm{BBB + } by Fitch. They mature in 2041 and can be called any time after August 2015. The coupon is 7.875\%. Any concerns that the market had no appetite for CoCos were alleviated by this issue. It was 11 times oversubscribed.

Credit Suisse indicated that it plans to satisfy one-third of the non-equity capital requirement with bonds similar to those just described and two-thirds of the non-equity capital requirement with bonds where the conversion trigger is about  $5\%$  (rather than  $7\%$ ) of risk-weighted assets.

The standardized approach for market risk capital applicable in 2022 will be explained in Chapter 27. As explained in Chapter 20, operational risk capital will be based entirely on a standardized approach (the SMA). The standardized risk weights for credit risk are a revision of the Basel II weights.

The standardized approach for calculating exposure at default (EAD) for derivatives in Basel I has been improved with what is known as SA-CCR. EAD is

$$
1. 4 \times (\mathrm {R C} + \mathrm {P F E})
$$ where RC is the replacement cost and PFE is potential future exposure. For transactions where no collateral is posted, the RC is calculated as


$$

\mathrm {R C} = \max  (V, 0)

$$

For transactions that are subject to collateral agreements this is adjusted to

$$

R C = \max  (V - C, D, 0)

$$ where  $C$  is the net value of the collateral currently posted by the counterparty (with the collateral posted by the bank being considered negative). The variable  $D$  is the change in the  $V$  that could occur without any additional collateral being received (e.g., because of minimum transfer amounts in the collateral agreement). For example, if  $V = C = 50$  and  $V$  could increase to 51 without any additional collateral being received,  $D = 1$  and the  $\mathrm{RC} = 1$ . In the case of non-cash collateral, a haircut is applied in the calculation of  $C$ .

The PFE is a relatively sophisticated way of calculating the add-on to the current exposure. Two factors taken into account are:

1. When the counterparty has posted excess collateral, risk is reduced and the reduction in risk increases as the amount of the excess collateral increases.
2. When no collateral is posted, credit exposure reduces as  $V$  becomes more negative. The PFE add-on amount when  $V$  is slightly negative should be greater than when  $V$  is highly negative.

# 26.5 Dodd-Frank Act

The Dodd-Frank Act in the United States was signed into law in July 2010. Its aim was to prevent future bailouts of financial institutions and protect the consumer. A summary of the main regulations is as follows:

1. Two new bodies, the Financial Stability Oversight Council (FSOC) and the Office of Financial Research (OFR), were created to monitor systemic risk and research the state of the economy. Their tasks are to identify risks to the financial stability of the United States, promote market discipline, and maintain investor confidence.
2. The orderly liquidation powers of the Federal Deposit Insurance Corporation (FDIC) were expanded. The Office of Thrift Supervision was eliminated.
3. The amount of deposits insured by the FDIC was increased permanently to $250,000. (Previously, the $250,000 limit had been regarded as temporary.)
4. Regulations were introduced requiring large hedge funds and similar financial intermediaries to register with the SEC and report on their activities.
5. A Federal Insurance Office was created to monitor all aspects of the insurance industry and work with state regulators.
6. Proprietary trading and other similar activities of deposit-taking institutions were curtailed. This is known as the "Volcker rule" because it was proposed by former Federal Reserve chairman Paul Volcker.
7. Some high-risk trading operations were required to be spun off into separately capitalized affiliates.
8. Standardized over-the-counter derivatives had to be traded on electronic platforms known as swap execution facilities (SEFs). These are similar to exchanges and are designed to make prices in the OTC market more transparent. Standardized over-counter derivatives between financial institutions had to be cleared by central clearing parties (CCPs). (See Chapter 6 for a further discussion of CCPs.) The Commodity Futures Trading Commission (CFTC) was given responsibility for monitoring the activities of CCPs and SEFs.
9. The Federal Reserve was required to set risk management standards for systemically important financial utilities engaged in activities such as payment, settlement, and clearing.
10. Protection for investors was increased and improvements were made to the regulation of securities.
11. Rating agencies were required to make the assumptions and methodologies behind their ratings more transparent and the potential legal liabilities of rating agencies were increased. An Office of Credit Ratings was created at the SEC to provide oversight of rating agencies.
12. The use of external credit ratings in the regulation of financial institutions was discontinued. (This provision of the Act brings Dodd-Frank into direct conflict with the Basel Committee, which, as we have seen in this chapter and the last one, does make some use of external credit ratings.)
13. A Consumer Financial Protection Bureau was created within the Federal Reserve to ensure that consumers get clear and accurate information when they shop for financial products, such as mortgages and credit cards.
14. Issuers of securitized products were required (with some exceptions) to own  $5\%$  of each product created.
15. Federal bank regulators were required to issue regulations that discourage the use of compensation arrangements that might lead to excessive risk taking (e.g., compensation arrangements based on short-run performance). Shareholders were given a non-binding vote on executive compensation. A requirement that board compensation committees be made up of independent directors was introduced.
16. Mortgage lenders were required to make a reasonable good faith determination based on verified and documented information that the borrower has the ability to repay a loan. Failure to do this might lead to a foreclosure being disallowed.
17. Large financial firms were required to have board committees where at least one expert has risk management experience at a large complex firm.
18. The FDIC was allowed to take over a large financial institution when it failed and sell its assets, imposing losses on shareholders and creditors, with the costs of failures being paid for by the financial industry.
19. FSOC and OFR, which as mentioned earlier had the responsibility of monitoring systemic risk, were charged with identifying systemically important financial institutions (SIFIs).
20. The Federal Reserve Board and the FDIC required all SIFIs to prepare what is known as living wills, mapping out how they could raise funds in a crisis and how their operations would be wound up in the event of failure.

The Dodd-Frank Act did not define a future role for Fannie Mae and Freddie Mac, which were key players in the U.S. mortgage market. These agencies were taken over by the U.S. government in September 2008. The Dodd-Frank Act has been loosened somewhat since 2010. For example, in 2018, smalland medium-sized banks were exempted from some regulations. In 2020, banks were granted permission to invest in venture capital funds.

# 26.6 Legislation in Other Countries

The large banks are truly global and when regulations vary throughout the world, they are liable to move all or part of their operations from one jurisdiction to another to obtain more favorable treatment. Although all countries are subject to the same Basel III rules, local regulators have some discretion in the application of rules, and legislation is not the same across all countries. In 2011, the Swiss bank UBS made headlines by suggesting that it might move its investment bank headquarters from Zurich to London, Singapore, or New York to avoid the higher capital requirements imposed by Swiss regulators. (It did not do this.)

The previous section outlined the rules introduced by legislators in the United States. Legislation in other countries has addressed some of the same issues. In the United Kingdom, an independent committee was chaired by Sir John Vickers to consider issues facing the banking industry, and new legislation in the form of the Financial Services (Banking Reform) Act 2013 was passed. In the European Union a committee headed by Erkki Liikanen was set up in November 2011 and published its report in October 2012.

Some of the rules and recommendations in the United Kingdom, European Union, and other countries are similar to those in the United States. For example, the Dodd-Frank Act requires originators of securitized products in the United States to keep  $5\%$  of all assets created. (See item 14 of the previous list.) A similar provision exists in the Capital Requirement Directive 2 (CRD2) of the European Union.[11] Most national legislators have agreed that standardized over-the-counter derivatives should be cleared through central clearing houses instead of being cleared bilaterally (see list item 8).

Sometimes the rules in different countries are similar but not exactly the same. The Dodd-Frank Act included the requirement that standardized derivatives be traded on swap execution facilities (see list item 8). The European Union has introduced similar trading platforms, known as organized trading facilities (OTFs).

The most controversial aspect of Dodd-Frank is probably the Volcker rule (see item 6), which prohibits banks from proprietary trading and restricts investment in hedge funds and private equity companies by banks and their affiliates. The rationale for the rule is reasonable: Banks should not be allowed to speculate with depositors' funds, because those funds are insured by the FDIC. The rule may be difficult to enforce, though, because for a bank with a large portfolio of positions, it can be difficult to tell whether a particular new trade is entered into for hedging or speculative purposes.[12] In spite of this, many U.S. banks have closed down their proprietary trading desks, and some employees working on those desks have left to join hedge funds. The Vickers committee in the United Kingdom recognized the importance of protecting depositors' funds but did not go so far as to prohibit proprietary trading. The retail operations of banks had (by 2019) to be ring-fenced to insulate them from riskier activities such as trading and investment banking. The Liikanen committee in the European Union similarly requires a separation of core banking activities from proprietary trading and other high-risk activities.

Regulators in most countries consider living wills (see list item 20) to be important for SIFIs and are applying pressure on SIFIs to develop them. SIFIs tend to have developed complex organizational structures for tax and regulatory purposes. The living will requirement may result in this being simplified so that the different activities of a SIFI are in separately capitalized legal entities, not all of which need to be bailed out in the event of the SIFI's failure. Regulators have the option of forcing SIFIs to divest certain operations, or even break up entirely, if their living wills are deemed unsatisfactory. They hope that living wills avoid a replay of the panic and cross-border litigation that erupted when the Lehman Brothers investment bank collapsed in 2008. They also think that the multiyear litigation concerned with the termination of Lehman's derivatives portfolio could have been avoided if Lehman and its ISDA master agreements had been structured so that it was possible to keep the portfolio alive and to unwind it in an orderly way in the few days after bankruptcy.

Compensation is an important issue. Pre-crisis, the annual bonus was a large part of the compensation for many traders and other employees and led them to have a relatively short-term horizon in their decision making. If losses were incurred after the payment of a bonus, they did not have to return the bonus. Many banks have recognized the problem and voluntarily moved to bonuses that are deferred by being spread out over three to five years, rather than all being paid in one year. If a trader shows good results in one year and bad results in the next, some of the bonus applicable to the good year will be deferred and then "clawed back" during the bad year. The Dodd-Frank Act restrictions on pay in the financial sector are relatively mild. When financial institutions received funds during the crisis under the Troubled Asset Relief Program (TARP), compensation was restricted. But, as soon as the funds were paid back, banks had much more freedom in their compensation arrangements.[13]

Some other countries have restricted compensation. Sometimes the restriction is temporary. For example, in 2009 the United Kingdom introduced a one-time "supertax" on bonuses in excess of  $\pounds 25,000$ . But in other cases it is permanent. For example, in April 2019, the European Union introduced CRD 5, which confirmed a cap on the bonuses on bankers classified as "risk takers." Under this directive the maximum ratio of bonus to fixed pay is 1.0 (with some flexibility to increase that ratio to 2.0 with shareholder approval).

# Summary

The financial crisis that started in 2007 was the worst that many parts of the world had seen since the 1930s. Some financial institutions failed. Others had to be bailed out with taxpayers' money. Not surprisingly, both the Basel Committee and national governments decided that a major overhaul of the regulations affecting financial institutions was required.

The Basel II.5 regulations increased the capital banks were required to keep for market risk. They recognized that capital should reflect the volatilities and correlations experienced during stressed market conditions as well as during normal market conditions; they eliminated some of the ways banks could reduce regulatory capital by moving items from the banking book to the trading book; and they created a special capital requirement for derivatives dependent on credit correlation, which had been a particular problem during the crisis.

Basel III dramatically increased the amount of equity capital banks were required to keep. It also recognized that many of the problems of banks during the crisis were liquidity problems and imposed new liquidity requirements for financial institutions.

National governments have also introduced new rules for financial institutions. In the United States, the Dodd-Frank Act has many provisions designed to protect consumers and investors, avoid future bailouts, and monitor the functioning of the financial system more carefully. Similar, though not necessarily identical, regulations exist in other countries.

One problem facing regulators is what are referred to as unintended consequences. Basel I had the unintended consequence of discouraging loans to high-quality corporations because of the  $100\%$  risk weight that would be assigned. The 1996 Amendment and the development of the credit derivatives market that came after it encouraged banks to find ways of moving credit risks from the banking book to the trading book in order to reduce capital requirements. There will no doubt be unintended consequences of Basel III and the legislation. Hopefully, the benefits of the new measures will outweigh any harm to the financial system arising from the unintended consequences.

# Further Reading

Acharya, V. V., T. F. Cooley, M. P. Richardson, and I. Walter. Regulating Wall Street: The Dodd-Frank Act and the New Architecture of Global Finance. Hoboken, NJ: John Wiley & Sons, 2011.

Bank for International Settlements. "Basel III: Finalizing Post-Crisis Reforms," December 2017.

Basel Committee on Banking Supervision. "Basel III: A Global Regulatory Framework for More Resilient Banks and Banking Systems," June 2011.

Basel Committee on Banking Supervision. "Basel III: International Framework for Liquidity Risk Measurement Standards and Monitoring," December 2010.

Basel Committee on Banking Supervision. "Guidelines for Computing Capital for Incremental Risk in the Trading Book," July 2009.

Basel Committee on Banking Supervision. "Revisions to the Basel II Market Risk Framework," February 2011.

Finger, C. "CreditMetrics and Constant Level of Risk." MSCI, 2010.

# Practice Questions and Problems (Answers at End of Book)

26.1 What are the three major components of Basel II.5?
26.2 What are the six major components of Basel III?
26.3 What is the difference between VaR as it has been traditionally measured and stressed VaR?
26.4 Explain how the incremental risk charge is calculated. Why was it introduced by the Basel Committee?
 26.5 What is the difference between the capital required for a AAA-rated ABS with principal of $100 million and a AAA-rated ABS CDO with a principal of $100 million using the standardized approach?
26.6 By how much has the Tier 1 equity capital (including the capital conservation buffer) increased under Basel III compared with the Tier 1 equity capital requirement under Basel I and II?
26.7 Suppose that the Tier 1 equity ratio for a bank is  $6\%$ . What is the maximum dividend, as a percent of earnings, that can be paid if (a) there is no countercyclical buffer and (b) there is a  $2.5\%$  countercyclical buffer?
26.8 Explain how the leverage ratio differs from the usual capital ratios calculated by regulators.
26.9 Explain how the liquidity coverage ratio and the net stable funding ratio are defined.
26.10 How would the net stable funding ratio in Example 26.1 change if half the wholesale deposits were replaced by stable retail deposits?
26.11 What is CVA? What new regulations concerning CVA were introduced in Basel III?
26.12 Explain how CoCo bonds work. Why are they attractive to (a) banks and (b) regulators?

# Further Questions

26.13 Explain one way that the Dodd-Frank Act is in conflict with (a) the Basel international regulations and (b) the regulations introduced by other national governments.

# 26.14 A bank has the following balance sheet:

<table><tr><td>Cash</td><td>3</td><td>Retail Deposits (stable)</td><td>25</td></tr><tr><td>Treasury Bonds (&gt;1 yr)</td><td>5</td><td>Retail Deposits (less stable)</td><td>15</td></tr><tr><td>Corporate Bonds Rated A</td><td>4</td><td>Wholesale Deposits</td><td>44</td></tr><tr><td>Mortgages</td><td>18</td><td>Preferred Stock (&gt;1 yr)</td><td>4</td></tr><tr><td>Small Business Loans (&lt;1 yr)</td><td>60</td><td>Tier 2 Capital</td><td>3</td></tr><tr><td>Fixed Assets</td><td>10</td><td>Tier 1 Capital</td><td>9</td></tr><tr><td></td><td>100</td><td></td><td>100</td></tr></table>

(a) What is the Net Stable Funding Ratio?

(b) The bank decides to satisfy Basel III by raising more (stable) retail deposits and keeping the proceeds in Treasury bonds. What extra retail deposits need to be raised?

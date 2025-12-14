---
parent_directory:
title: NBER WORKING PAPER SERIES
tags:
aliases:
parent_folder: Week 6
subfolder:
key_concepts:
cssclasses: academia
linter-yaml-title-alias: NBER WORKING PAPER SERIES
---

# NBER WORKING PAPER SERIES

# GOVERNMENT GUARANTEES AND THE VALUATION OF AMERICAN BANKS

Andrew G. Atkeson

Adrien d'Avernas

Andrea L. Eisfeldt

Pierre-Olivier Will

Working Paper 24706

http://www.nber.org/papers/w24706

NATIONAL BUREAU OF ECONOMIC RESEARCH

1050 Massachusetts Avenue

Cambridge, MA 02138

June 2018

All errors are ours. The views expressed herein are those of the authors and do not necessarily reflect the views of the National Bureau of Economic Research.

At least one co-author has disclosed a financial relationship of potential relevance for this research. Further information is available online at http://www.nber.org/papers/w24706.ack

NBER working papers are circulated for discussion and comment purposes. They have not been peer-reviewed or been subject to the review by the NBER Board of Directors that accompanies official NBER publications.

© 2018 by Andrew G. Atkeson, Adrien d'Avernas, Andrea L. Eisfeldt, and Pierre-Olivier Will. All rights reserved. Short sections of text, not to exceed two paragraphs, may be quoted without explicit permission provided that full credit, including © notice, is given to the source.

Government Guarantees and the Valuation of American Banks

Andrew G. Atkeson, Adrien d'Avernas, Andrea L. Eisfeldt, and Pierre-Olivier Will

NBER Working Paper No. 24706

June 2018

JEL No. G18,G2,G21,G28,G32,G33,G38

# ABSTRACT

Banks' ratio of the market value to book value of their equity was close to 1 until the 1990s, then more than doubled during the 1996-2007 period, and fell again to values close to 1 after the 2008 financial crisis. Sarin and Summers (2016) and Chousakos and Gorton (2017) argue that the drop in banks' market-to-book ratio since the crisis is due to a loss in bank franchise value or profitability. In this paper we argue that banks' market-to-book ratio is the sum of two components: franchise value and the value of government guarantees. We empirically decompose the ratio between these two components and find that a large portion of the variation in this ratio over time is due to changes in the value of government guarantees.

Andrew G. Atkeson

Bunche Hall 9381

Department of Economics

UCLA

Box 951477

Los Angeles, CA 90095-1477

and NBER

andy@atkeson.net

Adrien d'Avernas

Stockholm School of Economics

adrien.davernas@gmail.com

Andrea L. Eisfeldt

UCLA Anderson School of Management

110 Westwood Plaza

Suite C4.10

Los Angeles, CA 90095

and NBER

andrea.eisfeldt@anderson.ucla.edu

Pierre-Olivier Will

Department of Economics

University of California, Los Angeles

Bunche Hall 8283

Los Angeles, CA 90095

and NBER

poweill@econ.ucla.edu

# 1 Introduction

Are banks safer today than they were in 2007? Book measures of leverage indicate that regulations post-crisis have shored up the US banking system (see Yellen, 2017); however, market measures of leverage and bank credit risk are actually higher than pre-crisis levels (Sarin and Summers, 2016). Do book or market measures more accurately depict the safety of the US banking system? The answer depends on the quantitative drivers of the difference between the market and book values of bank assets. In this paper, we provide a decomposition of banks' market-to-book values into a component driven by bank profitability, or "franchise value," and a component driven by the value of explicit and implicit government guarantees. We find that, quantitatively, about half of the elevated market values of banks from the mid-1990s to 2007 arose from the ability of bank equity holders to capitalize the value of the government safety net. Under current regulatory limitations on leverage, the ability of banks to capture the value of government guarantees is constrained, and, as a result, market-to-book ratios are lower.

The key to understanding the difference between book and market measures of bank leverage is a decomposition of the drivers of banks' market value of equity (MVE) versus book value of equity (Be) into two components, franchise value, and the value of government guarantees. Building on this idea, we provide and apply a measurement framework to quantitatively assess the drivers of bank valuation and bank safety using market and accounting data. Our decomposition can be written simply as

$$
\frac {\mathrm {M V E}}{\mathrm {B V E}} = 1 + \frac {\mathrm {F V E} - \mathrm {B V E}}{\mathrm {B V E}} + \frac {\mathrm {M V E} - \mathrm {F V E}}{\mathrm {B V E}}.
$$

$$
\begin{array}{c c} \text {f r a n c h i s e} & \text {g o v e r n m e n t} \\ \text {v a l u e} & \text {g u a r a n t e e s} \end{array}
$$

The first component of banks' market-to-book equity ratios is the ratio of the gap between the fair value of bank equity (FVE) and the book value of bank equity divided by the book value of bank equity. We define the fair value of bank equity as the difference between the fair value of all of the bank's assets and the fair value of

all of the bank's liabilities. Fair values are measured as the discounted present value of all of the cash flows associated with bank assets and liabilities, not considering the contribution to bank value from government guarantees. The difference between the fair value and book value of bank equity, then, is the gap between the market value and book value of the bank's business arms, which we refer to as the franchise value of the bank.

The second component is the ratio of the gap between the market value of bank equity and the fair value of bank equity to the book value of bank equity. The market value of bank equity includes the discounted present value of cash flows associated with taxpayer bailouts of banks in times of distress. By definition, this second component reflects the contribution to bank equity valuation from bank risk taking with the support of government guarantees for bank liabilities.

The implications of observations on the market-to-book values of equity for bank financial soundness depend critically on which of these two components, franchise value versus government guarantees, accounts for most of the movement in bank equity valuation. As emphasized by Keeley (1990), Sarin and Summers (2016), and Chousakos and Gorton (2017), to the extent that the market-to-book value of equity is high because banks have high franchise value, a high market-to-book value of equity is a manifestation of economic capital not recorded on banks' balance sheets and banks have less risk of default in a crisis.

In contrast, to the extent that high market-to-book values of equity are due to the value of government guarantees, then high valuations of bank equity are a signal of risk in banks and of a large taxpayer contingent liability for bank bailouts in a crisis. As we show in our model below, in this case, increases in book or regulatory capital should be expected to reduce bank market-to-book ratios and accounting profitability. The reduction in bank's market-to-book ratios has an upside, namely a lower liability forcing taxpayers to bail out bank debt and deposits in a crisis.<sup>1</sup>

Our paper is closely related in its objective to that of Haldane, Brennan, and

Madouros (2010). These authors ask whether the evolution of bank profitability and valuation prior to the financial crisis reflected an increase in the economic profitability of bank loan making and deposit taking (what we term franchise value) or, instead, a return to bank owners from risk taking backed by government guarantees. They examine how increases in bank leverage and risk taking might account for the rise in bank accounting profitability from the mid-1990s until the financial crisis. We extend their analysis to provide a quantitative accounting of the evolution of US bank valuations and the relative contributions from franchise values and value from risk taking backed by government guarantees. Our accounting indicates that there has been a reduction in bank franchise values from before the 2008 crisis to now, mostly stemming from a lower fair value of core deposits. However, our main finding is that there has been an equally large decline in banks' capitalized values from government guarantees.

Our framework allows us to assess which channel for capturing the value of government guarantees, namely, risk taking, leverage, or prospects for growth of banks' balance sheets, has declined in importance post-crisis.

It does not appear that regulation has succeeded in reducing risk taking by banks. In particular, our accounting indicates that bank equity would still be wiped out in a crisis of the magnitude observed in 2008. This finding is driven by two observations. First, bank accounting profitability is still quite high relative to available riskless rates of return even after adjustment for the fair value of bank assets and liabilities. This observation implies that banks' assets are still quite exposed to aggregate risk. Second, the market signals from bank equity and debt reviewed by Sarin and Summers (2016) still signal considerable risk to subordinated claims on US banks, suggesting that the market perceives that bank equity and subordinated debt would still be wiped out in a crisis.

Instead, we find that the reduction of the value of government guarantees to bank equity is due primarily to the increase in bank regulatory capital and a reduction in

the growth rate of banks' balance sheets. With greater regulatory or book capital, equity suffers more of the loss to bank assets in a crisis. Holding fixed the drop in bank asset values in a crisis, the taxpayer contribution required to honor deposit guarantees is smaller. Moreover, with lower expected growth, equity is not able to grow implicit guarantees in advance of the next crisis.

Our accounting model suggests that moves to lighten the regulatory burden on banks going forward should be met with caution. The value of government guarantees to bank equity is highly sensitive to small changes in the risk exposure of bank assets. If regulators allow even a moderate increase in risk taking by banks, we should see a significant jump in bank valuations and accounting profitability. The temptation will be to interpret this increase in bank valuations and accounting profitability as a restoration of bank franchise value previously damaged by regulation. Instead, we argue that it would properly be interpreted as a return to the days in which taxpayers had a large contingent liability to bail out banks in a crisis.

The remainder of our paper is organized as follows. In section 2, we document the facts on bank valuation and profitability that we focus on in our accounting exercise. In section 3 we present the model we use for measurement. We define the book and fair values of items on banks' balance sheets. We show that to construct a fair value balance sheet for banks, one must measure the fair values of bank loans and deposits, as well as banks' growth opportunities to earn future profits from originating new loans and acquiring new deposits. We establish the result that in the absence of government guarantees, the market value of bank equity is equal to the fair value of bank equity, regardless of the risk in the banks' assets and regardless of bank equity's decisions to default on bank subordinated liabilities in a crisis. In the presence of government guarantees, we show that equity holders obtain a market value in excess of fair value by taking on risk, boosting dividends in normal times and defaulting during crises.

The concept of the fair value of bank equity for banks is very similar to the concept of the value of equity absent violations of the Miller and Modigliani (1958) theorem from the familiar adjusted present value formula in corporate finance. The difference between the fair value of bank equity and the market value of equity stems from a

non-zero net present value of banks' financing decisions. In particular, implicit and explicit guarantees lead to a positive net present value of debt financing for US banks because of the injection of taxpayer funds into the bank in the event of a crisis. We use the terminology fair value of equity, or FVE for two reasons. First, our concept of fair value is related to that used in financial institution accounting. Second, we include the franchise value of a bank's deposit business in the fair value of equity, despite the fact that the value of the deposit business depends on the bank's capital structure.<sup>3</sup>

The quantitative value of government guarantees depends critically on the risk neutral probability of a crisis state. In section 4, we use data on the realized returns on broad portfolios of corporate bonds from Asvanunt and Richardson (2016), as well as estimates of the credit risk premium from Berndt, Douglas, Duffie, and Ferguson (2017), to measure exposure to aggregate credit risk and to calibrate the risk neutral probability of a crisis. Based on these data, we calibrate the risk neutral probability of the crisis state to  $5\%$  on an annual basis. Under the assumption that marginal utility is high in the crisis state,  $5\%$  is an upper bound on the objective probability of a crisis, and thus crises are rare events.

In section 5 we use a stylized, two-state model of a bank to demonstrate that, under reasonable parameters describing bank leverage and aggregate credit risk, the observed drop in bank valuations since 2007 can easily be generated by a decline in the value of government guarantees to bank equity. The stylized bank issues liabilities insured with a government guarantee and holds only marketable securities exposed to aggregate credit risk. By definition, this bank has no franchise value. However, with guaranteed liabilities and assets with the same distribution of excess returns as those on BBB-rated corporate bonds, the bank trades at a market-to-book ratio of equity of 2 given book leverage of  $90\%$ . Leverage is key to this valuation. If book leverage is constrained to  $85\%$ , the market-to-book ratio of this bank falls from 2 to close to 1. The entire decline is due to the reduction in the size of taxpayers' exposure to bailouts in the crisis state.

With confirmation of the quantitative plausibility of guarantees as main drivers of bank equity values in hand, we turn in section 6 to a complete accounting exercise. We construct estimates of book value, the fair value, and the market value of banks in the 1970-1985, 1996-2007, and 2011-2017 time periods. We model each of these time periods as those in which only the "normal" state is realized. We collect data on the book value of items on banks' balance sheets from bank regulatory reports. To construct a fair value version of banks' balance sheets, we use banks' reports of the fair value of their loans found in the footnotes of banks' annual reports since the mid-1990s as well as two measures of the fair value of bank deposits. The first is a measure of the fair value of bank deposits from the Portfolio Value Model developed by the Office of Thrift Supervision (OTS). The second is a measure of the fair value of deposits derived from the measure of core deposit intangibles recorded on bank books when one bank acquires another.<sup>4</sup> We then use a Gordon (1962) dividend growth model to value bank equity using observed accounting returns for banks, our calibration of the risk-neutral probabilities of the normal and crisis states, and measures of the riskless interest rate and the growth rate of bank balance sheets in normal times from each of these three time periods.

Using our model for measurement, we find the following results for banks' market-to-book equity values, and the contribution from franchise values and government guarantees:

In the early period from 1970 to 1985, according to our model, banks did not have large franchise values and did not derive value from risk taking with government guarantees. Our model yields a market-to-book equity value of 1, which matches the observed ratio for financial firms for that time period.

In contrast to this early period, in the pre-crisis, post-deregulation period from 1996 to 2007, our model predicts that banks' market-to-book equity ratio was 2.24, which closely matches the observed average ratio of 2.12 over this time period. We find that the excess in market over book values was driven mainly by the value of government guarantees. In particular, we find that banks' franchise values contributed

$\frac{\mathrm{FVE - BVE}}{\mathrm{BVE}} = 0.34$  and the value of government guarantees contributed  $\frac{\mathrm{MVE - FVE}}{\mathrm{BVE}} = 0.91$  to the total gap between market and book values of  $\frac{\mathrm{MVE - BVE}}{\mathrm{BVE}} = 1.24$  implied by our model. Hence, we find that government guarantees contribute roughly three times more than franchise value to the market-to-book ratio of equity over this pre-crisis window. Our model suggests that the value of government guarantees was so high in this time period because, starting in the late 1990s, banks took on significantly more risk, as evidenced by significantly higher realized accounting returns in banking relative to riskless benchmarks.

This accounting evidence of risk taking by banks continues past the 2008 crisis. However, due to changes in book leverage and the growth rate of bank assets over time, this risk taking by banks has had a smaller effect on the market value of bank equity post-crisis. For the 2011 to 2017 time period, our model implies that banks' market-to-book equity ratios should have averaged a much lower value of 1.19. In the data, the market-to-book ratio in banking averaged 0.98 over this time period. In the post-crisis data, about half of the excess of market over book values of equity stem from franchise value and half from government guarantees.

Finally, in section 7, we conclude. Our valuation estimates indicate that regulation-induced reductions in book leverage have succeeded in reducing the market value of the funds that taxpayers will need to contribute in a bailout, consistent with the views of Yellen (2017) and the important contribution by Admati and Hellwig (2013) which provides strong arguments for lower bank leverage. On the other hand, we also show that the risk of equity and subordinated debt being wiped out has not gone down substantially, which explains the observations of high market leverage as well as market measures of bank credit riskiness in Sarin and Summers (2016).

In Appendix A, we present proofs of several propositions regarding the impact of changes in leverage, risk taking, and economic profitability on banks' accounting profitability and market-to-book ratios. In Appendix B, we discuss in greater detail several of our modeling assumptions and compare our results on the value of government guarantees to other measures of the value of government guarantees in the literature.

# 2 Historical Data on the Valuation of US Banks

In this section we develop the main stylized facts describing changes in bank valuation, leverage, profitability, and market credit risk measures. These facts motivate our study and support the calibration of our model.<sup>5</sup>

Bank Valuation We measure the valuation of the banking sector in each time period as the ratio of market-to-book value of equity for the entire sector in each quarter from 1991 to 2017. We display this market-to-book value of equity for the US banks over the time period 1991-2017 in Figure 1.

This figure shows a substantial increase in the ratio of the market-to-book value of equity for US banks in the mid-1990s and a sharp reduction in this ratio after the financial crisis. In particular, we find that the market-to-book ratio in banking averaged 2.12 over the 1996-2007 time period and 0.97 over the 2011-2017 time period. This pattern of bank valuations over time is consistent with the findings in Chousakos and Gorton (2017) and Minton, Stulz, and Taboada (2017) regarding the valuation of bank equity relative to balance sheet benchmarks.

Keeley (1990) provides evidence on the valuation of banks in the 1970's. He finds that market-to-book values of bank equity were closer to one during that time period. To confirm that finding, in Figure 2, we examine the ratio of the market-to-book value of equity for the US financial sector from 1975 to the present together with

<sup>5</sup>We collect financial information on bank holding companies from the "Quarterly Trends for Consolidated US Banking Organizations" report from the Federal Reserve Bank of New York and from the Holding Company Data of the Federal Reserve Bank of Chicago. To construct market prices, we merge this dataset with S&P's Compustat and the Center for Research in Security Prices (CRSP) databases using the CRSP-FRB links from the Federal Reserve Bank of New York. Our sample of public bank holding companies consists of 1,128 banks and 40,468 bank-quarter observations from 1986 to 2016 and covers  $93\%$  of total assets of all FDIC-insured institutions in the fourth quarter of 2016. To have a longer historical perspective, we also use the consolidated annual financial statements of FDIC-insured institutions from 1935 to 2016 available in the FDIC Historical Statistics on Banking. We obtain corporate bond credit spreads from the Lehman/Warga and Merrill Lynch (BAML) databases.

<sup>6</sup>We construct the market-to-book value of equity for the sector as the sum of the market value of equity across bank holding companies in our sample divided by the sum of the book value of equity across the same bank holding companies. This ratio corresponds to a value-weighted average of the market-to-book value of equity across bank holding companies.

our series for bank holding companies over the 1986-2017 time period. $^{7}$  Note that the market-to-book value of equity for the US financial sector corresponds closely to that for bank holding companies over the time period for which we have data for both series. Figure 2 shows that the ratio of the market-to-book value of equity for the financial sector from 1975 into the early 1990s was close to 1.

Consistent with the findings of Minton et al. (2017), we find similar patterns of bank valuations over time for large and small bank holding companies. In Figure 3, we show the ratios of the market-to-book value of equity for bank holding companies with assets over  $250 billion and those with assets from$ 10 to $250 billion.<sup>8</sup> These data on the valuation of large and smaller banks suggest that fluctuations in bank market valuations are not driven by valuations of the investment banking activities of the largest bank holding companies.

Bank Financial Soundness In what follows, we consider the implications of the data on bank valuations presented above as an indicator of bank financial soundness. The connection to bank financial soundness is through bank leverage. It is common to evaluate bank leverage on both a book and a market basis.

Bank capital regulation is applied to banks' book leverage, that is, the ratio of the book value of debt to the book value of assets (we abstract here from risk weighting of assets). Figure 4 shows book leverage for bank holding companies over the period 1991-2017. Book leverage has declined steadily over this time period.

We plot market leverage for bank holding companies, defined as the ratio of the book value of debt to the market value of assets, over this time period in Figure 5.<sup>9</sup> Bank market leverage shows a pattern over time that is different from that of than book leverage. Specifically, bank market leverage was relatively low in the period before the 2008 crisis and it is high in the period since that crisis.

<sup>7</sup>The CRSP-FRB linked database starts in 1986. Therefore, we use financial firms with a standard industry classification code in between 6000 and 6999 to go back to 1975.  
<sup>8</sup>We use the GDP Implicit Price Deflator with base year 2009 as the deflator.  
<sup>9</sup>The market value of assets is defined as the book value of debt plus the market value of equity.

Bank Profitability Accounting measures of bank profitability are a key input into our accounting for the market valuation of banks. As we will show in our model, bank profits in normal times are driven both by banks' exposure to crisis risk (consistent with the findings of Meiselman et al. (2018)) and by sources of franchise value. Here we document the accounting data that we target.

Figure 6 displays the accounting return on equity (ROE) for US bank holding companies over the period 1991-2017. ROE is measured as the ratio of bank net income to the book value of bank equity. Figure 6 shows that the ROE for bank holding companies was high at just under  $15\%$  from the mid-1990s into 2007, and it has been substantially lower since the 2008 crisis.

Figure 7 shows the corresponding accounting profitability of bank holding companies over this time period measured in terms of bank return on assets or ROA (the ratio of net income to total book assets). Here we find that the ROA for bank holding companies was consistently above  $1\%$  from the mid-1990s into 2007 and has been below  $1\%$  since the 2008 crisis.

The high accounting profitability of banks in the period from the mid-1990s into 2007 was unusual in a longer historical perspective. In Figure 8, we show the return on assets (ROA) for commercial bank subsidiaries reported in the FDIC Historical Statistics on Banking from 1934 to 2017. This figure shows that the ROA for banks was consistently under  $1\%$  until the mid-1990s. Then, as in the bank holding company data in Figure 7, banks had an ROA consistently above  $1\%$  from the mid-1990s into 2007, and then a lower ROA since the 2008 crisis.

Spreads on Subordinated Debt As we apply our accounting model, we need to confirm that it is consistent with the evolution of market signals of the risk exposure of bank equity and subordinated debt to a crisis. Sarin and Summers (2016) is a convincing review of those equity and debt market signals and concludes that these signals have not improved from levels observed before the 2008 crisis. In our accounting model, we focus on matching data on spreads on banks' subordinated debt. In Figure 9 we present data on these corporate bond spreads from 1991 to 2017. For a sample of firms covered by the S&P's Compustat database and the

Center for Research in Security Prices (CRSP), we matched month-end secondary market option-adjusted credit spreads of their outstanding senior unsecured bonds from the Lehman/Warga and Bank of America Merrill Lynch databases.[10]

In Figure 9, the blue line corresponds to averages of the natural  $\log^{11}$  of option-adjusted spreads on bank holding company bonds calculated by the Bank of America Merrill Lynch. The grey lines correspond to averages of option adjusted spreads on bonds of non-financial firms $^{12}$  within a certain credit rating. Starting from the bottom and going up, these lines correspond to AAAand AA-rated bonds together in one line,  $A$ -rated bonds, BBB-rated bonds, BB-rated bonds, and B-rated bonds. Thus, in this figure, we see how the level of bank bond spreads has evolved over time and how these spreads have moved relative to those of non-financial firms. We see that the level of bank bond spreads has risen both in absolute terms since before 2008 and in relative terms relative to non-bank bonds. Before the crisis, bank bond spreads were in line with those of A-rated firms. After the crisis, bank bond spreads are in line with those of BBB-rated firms. The average level of bank holding companies' corporate bond option-adjusted spreads was 93 basis points over the period 1996-2007 and 151 basis points over the period 2011-2017.

<sup>10</sup>We eliminate all observations with credit spreads below 5 basis points and greater than 3,000 basis points. In addition, we drop very small corporate issues (equity market value of less than $1 million) and all observations with a remaining term to maturity of less than 6 months or more than 20 years. Some firms tend to have many different corporate bond securities outstanding. To avoid overweight firms that issue a lot of different securities, when different prices were available for the same firm, we keep only the security with time to maturity closest to 8 years (sample average). Financial, utility, and public administration firms are also excluded from the sample. Restricting to unique credit spreads monthly observations for each firm eliminates 45% of the dataset; other restrictions affect less than 5% of the rest.  
11Option-adjusted spreads roughly follow a log-normal distribution with time-varying mean and standard deviation.  
<sup>12</sup>We define non-financial firms as firms with a standard industry classification code not between 6000 and 6999.

# 3 An Accounting Model

We now present the model we use to define the concepts of book, fair, and market values of equity and to establish the results that FVE - Be is a measure of the franchise value of the bank and MVE - FVE is a measure of the market value of the taxpayer injections of resources needed to honor government guarantees of bank liabilities.

A representative bank operates a loan-making arm and a government-guaranteed deposit-taking arm.[13] Deposits are fully guaranteed by the government. Every period, the loan-making arm makes new loans and the deposit arm takes in new government-guaranteed deposits. The bank also issues subordinated debt. Both the loan-making and the deposit-taking arms are subject to shocks: shocks to the prepayment rate and default rate of loans, to the withdrawal rate of deposits, and to the growth rate of the balance sheet achieved through origination of new loans and deposits. We assume that the vector of shocks is independently and identically distributed over time under the risk-neutral probability measure but that the shocks can be contemporaneously correlated. After observing the realized shocks, equity holders have the option to default. In that case, the subordinated debt holders take over the bank and auction it off immediately to new owners. The government makes a contribution of taxpayer funds to the sale sufficient to ensure that the new owners of the bank are willing to assume the bank's deposit liabilities and pay a non-negative price for the bank to the holders of the subordinated debt.

# 3.1 The loan-making Arm

Let  $L$  denote the total face value, or book value, of the loans on the bank's balance sheet. Every period, every dollar of loan pays a coupon  $c_{L}$ , net of servicing cost. Then the face value of the loan is prepaid with probability  $\mu_{L}^{\prime}$ , and default on the face value of the loan occurs with probability  $\delta_{L}^{\prime}$ . We use the prime notation,  $\mu_{L}^{\prime}$  and  $\delta_{L}^{\prime}$ , to indicate that the probability of prepayment and default are themselves random variables, representing aggregate risk of prepayment and default. The fair value of the loans on the bank's balance sheet is  $v_{L} \times L$ , where the ratio of fair to book value for the stock of loans on the balance sheet solves the asset pricing equation

$$
v _ {L} = \frac {1}{1 + i} \hat {\mathbb {E}} \left[ c _ {L} + \mu_ {L} ^ {\prime} + (1 - \mu_ {L} ^ {\prime} - \delta_ {L} ^ {\prime}) v _ {L} \right], \tag {1}
$$

where  $i$  is the risk-free rate and  $\hat{\mathbb{E}}[\cdot]$  denotes expectations under the risk-neutral probability measure. Solving for  $v_{L}$  we obtain:

$$
v _ {L} = \frac {c _ {L} + \bar {\mu} _ {L}}{i + \bar {\mu} _ {L} + \bar {\delta} _ {L}},
$$

where the "bar" notation denotes the expectation given risk-neutral probabilities, for example  $\bar{\mu}_L = \hat{\mathbb{E}}[\mu_L']$ . That is,  $v_{L}$  is the present value of receiving the coupon  $c_{L}$  and the average prepayment  $\bar{\mu}_{L}$ , until the loan is either prepaid or defaulted on.

Next, let us calculate the fair value of the loan-making arm of the bank. We assume that the bank grows at rate  $g'$  and impose the standard growth condition  $\bar{g} < i$ . To achieve that growth, the bank must make new loans at a rate  $\mu_L' + \delta_L' + g'$  so as to replace the principal prepaid,  $\mu_L'$ , and written down,  $\delta_L'$ , and achieve net growth rate  $g'$  in the book value of its loans. We assume that the bank incurs origination costs at rate  $\phi_L > 0$  per dollar of new loans. Therefore, the contribution to the bank dividend, or free cash flow, generated by the loan-making arm is  $DIV_L' \times L$ , where the dividend rate is

$$
D I V _ {L} ^ {\prime} = c _ {L} + \mu_ {L} ^ {\prime} - (1 + \phi_ {L}) (\mu_ {L} ^ {\prime} + \delta_ {L} ^ {\prime} + g ^ {\prime}).
$$

The first term is the coupon, the second term is the prepayment rate, and the third term is the sum of the principal and origination cost for new loans. The fair value of the loan-making arm is the risk-neutral expected present value of these free cash flows. Therefore, the fair value of the loan-making arm is  $\mathrm{FVL} \times L$ , where the fair value ratio solves

$$
\mathrm {F V L} = \frac {1}{1 + i} \hat {\mathbb {E}} \left[ D I V _ {L} ^ {\prime} + (1 + g ^ {\prime}) \mathrm {F V L} \right]. \tag {2}
$$

Taking the difference between the pricing equation for FVL, (2), and  $v_{L}$ , (1), we obtain

$$
\mathrm {F V L} - v _ {L} = \frac {1}{1 + i} \hat {\mathbb {E}} \left[ (\mu_ {L} ^ {\prime} + \delta_ {L} ^ {\prime} + g ^ {\prime}) (v _ {L} - (1 + \phi_ {L})) + (1 + g ^ {\prime}) (\mathrm {F V L} - v _ {L}) \right].
$$

Solving for FVL, we obtain

$$
\mathrm {F V L} = v _ {L} + \frac {\bar {\mu} _ {L} + \bar {\delta} _ {L} + \bar {g}}{i - \bar {g}} \left(v _ {L} - (1 + \phi_ {L})\right). \tag {3}
$$

Assuming that banks only make investments with positive net present value, we have that  $v_{L} \geq 1 + \phi_{L}$ . Thus, the fair value of the loan-making arm exceeds the book value for two reasons: value from assets in place and value from growth opportunities. First, the present value of all the payments to be received from each outstanding loan,  $v_{L}$ , exceeds its book value of 1. Second, each time the bank will issue a new loan, it will make a profit equal to the net present value,  $v_{L} - (1 + \phi_{L})$ .

# 3.2 The Deposit-Taking Arm

Let  $D$  denote the total face value, or book value, of the deposits on the bank's balance sheet. Every period, every dollar of deposits costs the bank  $c_{D}$ , equal to the sum of the interest rate paid on deposits and the servicing cost. The deposit is withdrawn with probability of repayment,  $\mu_{D}^{\prime}$ . As before, we use the prime notation,  $\mu_{D}^{\prime}$ , to indicate that the probability is random, representing aggregate run or funding risk. Hence, the fair value of the deposits on the bank's balance sheet is  $-v_{D} \times D$ , where

the ratio of the fair to book value of deposits solves

$$
v _ {D} = \frac {1}{1 + i} \hat {\mathbb {E}} [ c _ {D} + \mu_ {D} ^ {\prime} + (1 - \mu_ {D} ^ {\prime}) v _ {D} ] \Rightarrow v _ {D} = \frac {c _ {D} + \bar {\mu} _ {D}}{i + \bar {\mu} _ {D}}.
$$

Next, let us calculate the fair value of the deposit-taking arm of the bank. We again assume that the bank grows at rate  $g'$ . Hence, to achieve that growth, the bank must take new deposits at a rate  $\mu_D' + g'$  so as to replace the deposits withdrawn,  $\mu_D'$ , and achieve net growth of the book value of deposits of  $g'$ . We assume that, when it originates new deposits, the bank incurs costs at rate  $\phi_D$ . Therefore, the contribution to bank dividends, or free cash flow, generated by the deposit-taking arm is  $-DIV_D' \times D$ , where the dividend rate solves

$$
D I V _ {D} ^ {\prime} = c _ {D} + \mu_ {D} ^ {\prime} - (1 - \phi_ {D}) (\mu_ {D} ^ {\prime} + g ^ {\prime}).
$$

The fair value of the deposit-taking arm is  $-\mathrm{FVD} \times D$ , where

$$
\mathrm {F V D} = \frac {1}{1 + i} \hat {\mathbb {E}} \left[ D I V _ {D} ^ {\prime} + \left(1 + g ^ {\prime}\right) \mathrm {F V D} \right]. \tag {4}
$$

Taking the difference between the equations for FVD and  $v_{D}$ , we obtain that

$$
\mathrm {F V D} - v _ {D} = \frac {1}{1 + i} \hat {\mathbb {E}} \left[ (\mu_ {D} ^ {\prime} + g ^ {\prime}) (v _ {D} - (1 - \phi_ {D})) + (1 + g ^ {\prime}) (\mathrm {F V D} - v _ {D}) \right].
$$

Solving for FVD  $- v_{D}$ , we obtain:

$$
\mathrm {F V D} = v _ {D} - \frac {\bar {\mu} _ {D} + \bar {g}}{i - \bar {g}} \left(1 - \phi_ {D} - v _ {D}\right).
$$

Assuming as before that the bank invests only in projects with positive net present value, we have that  $v_{D} + \phi_{D} \leq 1$ . This implies that the fair value of the deposit-taking arm exceeds the book value for two reasons. First, the present value of the payment to be made on outstanding deposits is less than the face value of 1. Second, each time the bank takes a new deposit, it makes a profit equal to the net present value,  $1 - v_{D} - \phi_{D}$ .

# 3.3 Subordinated Debt

In addition to deposits, we assume that the bank also issues subordinated debt.14 We assume that subordinated debt takes the form of one-period defaultable debt with face value  $1 + i$ . We denote the price of a unit of subordinated debt by  $v_{B}$ . To determine  $v_{B}$ , we need to study the default decision of equity.

The Default Decision of Equity Suppose that equity enters the period with  $L$  loans,  $D$  deposits, and  $B$  subordinated debt. If equity does not default, subordinated debt is paid principal and interest  $(1 + i)B$  out of the bank's free cash flows  $DIV_{L}^{\prime}L - DIV_{D}^{\prime}D$ . In these states, equity issues new subordinated debt in quantity  $(1 + g^{\prime})B$  at price  $v_{B}$ . Thus, the dividend to equity in the event that equity does not default is  $DIV_{E}^{\prime} \times L$ , where

$$
D I V _ {E} ^ {\prime} = D I V _ {L} ^ {\prime} - D I V _ {D} ^ {\prime} \Theta_ {D} - (1 + i) \Theta_ {B} + v _ {B} (1 + g ^ {\prime}) \Theta_ {B}, \tag {5}
$$

with  $\Theta_D \equiv D / L$  and  $\Theta_B \equiv B / L$ . If, on the other hand, equity chooses to default, then it receives zero dividend and gives up all future claims on the bank. Hence, the default decision is obtained as the solution of the following Bellman equation:

$$
\mathrm {M V E} = \max  \frac {1}{1 + i} \hat {\mathbb {E}} \left[ I ^ {\prime} \left\{D I V _ {E} ^ {\prime} + (1 + g ^ {\prime}) \mathrm {M V E} \right\} \right] \tag {6}
$$

with respect to repayment decisions  $I' \in \{0,1\}$ , where the prime notation indicates that the repayment decision will depend on the vector of shocks realizations,

$(\mu_L', \delta_L', \mu_D', g')$ . Clearly, this implies that equity defaults if

$$
D I V _ {E} ^ {\prime} + (1 + g ^ {\prime}) \mathrm {M V E} <   0. \tag {7}
$$

The Valuation of Subordinated Debt Now let us turn to the valuation of subordinated debt. If there is default,  $I' = 0$ , then subordinated debt is not paid its principal and interest  $1 + i$ . Instead, subordinated debt holders immediately resell the bank to new owners. The bank is sold inclusive of some government support  $T' \geq 0$  per unit of asset. After purchasing the bank, new owners receive the current free cash flow from loans and deposits, and issue new subordinated debt at price  $(1 + g')v_{B}$ . New owners do not have to repay current subordinated debt owners. All in all, this implies that the selling price of the bank is, per unit of asset,

$$
R ^ {\prime} \Theta_ {B} = T ^ {\prime} + D I V _ {E} ^ {\prime} + (1 + i) \Theta_ {B} + (1 + g ^ {\prime}) \mathrm {M V E}. \tag {8}
$$

The first term,  $T'$ , is the government support. The second term,  $DIV_E' + (1 + i)\Theta_B$ , is the free cash flow received by the new owners. The third term adjusts free cash flow for the fact that new owners do not have to repay principal and interest,  $(1 + i)\Theta_B$ , to current subordinated debt owners. The last term is the continuation value of new owners. We assume that the government support,  $T'$ , is chosen so that

$$
0 \leq R ^ {\prime} \leq 1 + i. \tag {9}
$$

The left-hand inequality reflects limited liability for subordinated debt holders. The right-hand inequality imposes that the government does not pay more than principal and interest on outstanding subordinated debt.

Given that, in case of default, subordinated debt holders resell the bank at price  $R^{\prime}\Theta_{B}$ , the selling price of subordinated debt is

$$
v _ {B} = \frac {1}{1 + i} \hat {\mathbb {E}} \left[ (1 + i) I ^ {\prime} + (1 - I ^ {\prime}) R ^ {\prime} \right]. \tag {10}
$$

Finally, we can compute the fair value of the subordinated debt arm of the bank as

before:

$$
\mathrm {F V B} = \frac {1}{1 + i} \hat {\mathbb {E}} \left[ (1 + i) I ^ {\prime} + (1 - I ^ {\prime}) R ^ {\prime} - (1 + g ^ {\prime}) v _ {B} + (1 + g ^ {\prime}) \mathrm {F V B} \right],
$$

and one sees by direct comparison that  $\mathrm{FVB} = v_{B}$

# 3.4 Book, Fair, and Market Value of Equity

Book Value Banks hold loans and deposits on their books at face values. Banks hold subordinated debt on their books at market value. The book value of bank equity is the difference between the book value of bank assets and the book value of bank liabilities. Hence, the ratio of the book value of bank equity to the book value of bank assets is given by

$$
\mathrm {B V E} = 1 - \Theta_ {D} - \Theta_ {B} v _ {B}.
$$

Define  $\Theta = \Theta_{D} + \Theta_{B}v_{B}$ . Then  $\Theta$  is the book leverage of the bank. We thus have  $\mathrm{BVE} = 1 - \Theta$ .

Fair Value The fair value of bank equity, on the other hand, is the difference between the fair value of bank assets and the fair value of bank liabilities not including the value of government guarantees. The ratio of the fair value of bank equity to the book value of bank assets is given by

$$
\mathrm {F V E} = \mathrm {F V L} - \Theta_ {D} \mathrm {F V D} - \Theta_ {B} v _ {B}. \tag {11}
$$

Since FVL  $\geq 1$  and FVD  $\geq 1$ , it follows that the fair value of bank equity exceeds the book value.

Note that the difference between the fair value and book value of bank equity is given by

$$
\mathrm {F V E} - \mathrm {B V E} = (\mathrm {F V L} - 1) - \Theta_ {D} (1 - \mathrm {F V D}),
$$

which is the gap between the fair value and book value of the bank's loans and

deposits. Accordingly, we define the franchise value of the bank (relative to total book assets) to be the difference between the fair value and book value of bank equity since this gap corresponds to the gap between the fair value and book value of the bank's business arms.

Market versus Fair Value To compare the fair value of equity to the market value of equity, we use a budget identity in the tradition of Miller and Modigliani (1958). We start from the observation that shareholders and subordinated debt holders do not make all payments on deposits: in a severe default, some of the payments are made by the government. Hence, we have the standard result that the sum of the market values of equity and subordinated debt are equal to the fair value of the bank's two business arms, plus the market value of all the payments made by the government

$$
\mathrm {M V E} + \Theta_ {B} v _ {B} = \mathrm {F V L} - \Theta_ {D} \mathrm {F V D} + \mathrm {M V G},
$$

where MVG is defined recursively from

$$
\mathrm {M V G} = \frac {1}{1 + i} \hat {\mathbb {E}} [ (1 - I ^ {\prime}) T ^ {\prime} + (1 + g ^ {\prime}) \mathrm {M V G} ]. \tag {12}
$$

Subtracting the value of the bank's subordinated debt from both sides gives us

$$
\mathrm {M V E} = \mathrm {F V E} + \mathrm {M V G}. \tag {13}
$$

This identity is straightforward to formally verify using equations (2), (3), (4), (5), (6), (8), (10), (11), and (12).

Equation (13) implies that, in the absence of government guarantees, the market value of bank equity is equal to the fair value of bank equity regardless of the risk in bank assets and bank equity's strategy for default.[15] It follows from this

decomposition that, as long as the bank defaults with positive probability and the government contributes resources to bail out bank liabilities, then the market value of bank equity exceeds the fair value of bank equity.

Notice as well that, in our model, equity does not directly receive payments due to government guarantees upon default. Only debt receives these payments. Yet, equity indirectly profits from these payments. This is because equity reaps the benefit of issuing risk-free liabilities without bearing the full cost of making these liabilities risk free: equity only repays liabilities in good times, and the government repays in bad times. Equation (13) shows that the market value of equity capitalizes the present value of all future government contributions.

Finally, using our definition of the market value of government guarantees, we obtain the following decomposition of the market-to-book ratio of equity:

$$
\frac {\mathrm {M V E}}{\mathrm {B V E}} = 1 + \frac {\mathrm {F V E} - \mathrm {B V E}}{\mathrm {B V E}} + \frac {\mathrm {M V E} - \mathrm {F V E}}{\mathrm {B V E}} = 1 + \frac {\mathrm {F V E} - \mathrm {B V E}}{\mathrm {B V E}} + \frac {\mathrm {M V G}}{\mathrm {B V E}}.
$$

Both the second and the third terms are positive. The second term reflects the franchise value of the bank relative to the book value of bank equity. The third term reflects the market value of government guarantees relative to the fair value of bank equity.

# 3.5 Comparative Statics for the Market to Book Ratio

As we argued earlier, the market to book equity ratio dropped dramatically after the financial crisis of 2008. This drop has been interpreted by Sarin and Summers (2016) as a signal that banks have become riskier. In what follows, we provide comparative statics to demonstrate that, in fact, whether a drop in the market to book ratio signals an improvement or a deterioration in bank safety depends on the forces driving the decline. For instance, if the drop is the consequence of a decrease in bank franchise value, it indicates that banks are riskier. But if the drop is the consequence of a decrease in risk taking (perhaps due to more stringent regulation),

it indicates that banks are safer, not riskier.

We focus on the case in which the bank does not issue subordinated debt ( $B = 0$ ). This case is appropriate because, in the data, banks issue very little subordinated debt. In this case, the cash injections from the government in the case of default by bank equity are whatever are needed to pay off depositors. In terms of the equations above, the cash transfer from the government in the event of default is

$$
T ^ {\prime} = - \left[ D I V _ {L} ^ {\prime} - D I V _ {D} ^ {\prime} \Theta_ {D} + (1 + g ^ {\prime}) \mathrm {M V E} \right]
$$

per unit of asset.

Franchise Value The first comparative static is with respect to a decrease in bank franchise value. Formally, consider any change in parameter, besides growth and leverage, that decreases the equity dividend rate in all states. This includes, for example, a decrease in loan coupon,  $c_{L}$ , an increase in average prepayment,  $\bar{\mu}_{L}$ , an increase in average default,  $\bar{\delta}_{L}$ , or an increase in deposits coupon,  $c_{D}$ .

Lemma 1 (Rents and Quasi-Rents). Consider a decrease in rents or quasi-rents. Then:

- the franchise value,  $\frac{\mathrm{FVE} - \mathrm{BVE}}{\mathrm{BVE}}$ , decreases;  
- the market-to-book ratio,  $\frac{\mathrm{MVE}}{\mathrm{BVE}}$ , decreases;  
- the value of the government guarantee,  $\frac{\mathrm{MVG}}{\mathrm{BVE}}$ , increases.

It is intuitive that a decrease in the bank's economic profitability reduces both the market value and the fair value of bank equity. The key point is that it reduces the fair value by more. Indeed, for the franchise value, the decrease in profitability matters in all states, both those in which the bank defaults  $(I' = 0)$  and those in which it does not  $(I' = 1)$ . For the market value, it only matters in non-default states,  $I' = 1$ . On net, this implies that MVE - FVE = MVG must increase.

This comparative statics exercise illustrates that a decrease in the market-to-book equity ratio, if driven by a decrease in bank franchise value, can be interpreted, following Sarin and Summers (2016), as a decrease in bank safety.

Risk Taking Second, we consider the impact of an increase in risk taking, defined as follows. Assume that the shocks  $x' \equiv (\delta_L', \mu_L', \mu_D', g')$  have a factor structure, that is  $x' = \bar{x} + A\Sigma \varepsilon'$  for some vector of mean zero, unit variance, and contemporaneously independent shocks,  $\varepsilon' = (\varepsilon_1', \varepsilon_2', \dots, \varepsilon_N')$ , some  $4 \times N$  matrix  $A$ , and some  $N \times N$  positive diagonal matrix  $\Sigma = \mathrm{diag}(\sigma_1, \dots, \sigma_N)$ . We define a decrease in risk taking as a decrease in  $\sigma_n$ , for some  $n \in \{1, \dots, N\}$ .

Lemma 2 (Risk Taking). Consider a decrease in risk taking. Then:

- the market to book ratio,  $\frac{\mathrm{MVE}}{\mathrm{BVE}}$ , decreases;  
- the franchise value,  $\frac{\mathrm{FVE - BVE}}{\mathrm{BVE}}$ , stays the same;  
- the government guarantee,  $\frac{\mathrm{MVG}}{\mathrm{BVE}}$  decreases.

The decrease in risk leaves the franchise value constant because bank franchise value only depends on the mean of shocks under the risk-neutral probabilities. That decrease in risk decreases the market-to-book ratio value because of a usual option valuation effect: the payoff of equity is convex, so a decrease in risk reduces the upside by more than the downside.

This comparative statics exercise illustrates that a decrease in the market to book equity ratio for a bank, if driven by a decrease in risk of the bank, can be interpreted as signal of an increase in bank safety.

Leverage The last comparative statics exercise is with respect to leverage,  $\Theta$ .

Lemma 3 (Leverage). Consider a decrease in leverage. Then:

- the market-to-book ratio,  $\frac{\mathrm{MVE}}{\mathrm{BVE}}$ , decreases;  
- the franchise-value,  $\frac{\mathrm{FVE} - \mathrm{BVE}}{\mathrm{BVE}}$ , decreases;  
- the government guarantee,  $\frac{\mathrm{MVG}}{\mathrm{BVE}}$  decreases.

To understand this comparative statics result, notice that a decrease in leverage has two effects on bank safety going in opposite directions. On the one hand, it makes

it less profitable to operate a bank, so it increases incentives to default. Correspondingly, we find that the franchise value decreases. On the other hand, it also increases the bank's equity cushion, so it reduces incentives to default. Correspondingly, we find that the government guarantee decreases.

This comparative statics exercise illustrates that a decrease in the market-to-book equity ratio for a bank, if driven by a decrease in book leverage, can be interpreted, following Yellen (2017), as a signal of an increase in bank safety.

# 3.6 What Triggers Default

The Default Region In this paragraph, we investigate the multiple dimensions of banks' default risk: we ask which type of shocks bring the bank closer to default, in the sense of decreasing the sum of current dividends and continuation payoffs,  $DIV_E' + (1 + g')\mathrm{MVE}$ .

Lemma 4. Holding every other shock realization the same, the bank is strictly closer to default if

- loan delinquency,  $\delta_L'$ , increases;  
- loan prepayment,  $\mu_L'$ , increases and  $\phi_L > 0$ ;  
- deposit withdrawal,  $\mu_D'$ , increases and  $\phi_D > 0$ ;  
- balance sheet growth,  $g'$ , decreases and either MVG  $> 0$ ,  $v_{L} > 1 + \phi_{L}$ , or  $v_{D} < 1 - \phi_{D}$ .

Loan delinquencies create losses and so bring the bank closer to default. Loan prepayment also brings the bank closer to default because the cost of replacing a loan on the balance sheet exceeds its face value,  $1 + \phi_{L} > 1$ . When loan making has zero net present value,  $v_{L} = 1 + \phi_{L}$ , this observation becomes equivalent to the standard intuition that prepayment must create a loss for the bank, which is long premium bonds (loans). Conversely, deposit withdrawal also brings the bank closer to default. Indeed, the cost of honoring a withdrawal is greater than the benefit of

replacing the deposit on the balance sheet  $1 > 1 - \phi_L$ . When deposit taking has zero net present value,  $v_{D} = 1 - \phi_{D}$ , this is equivalent to the standard intuition that prepayment creates a loss for the bank, which is short discount bonds (deposits). Finally, negative shocks to the growth rate of the bank's balance sheet also bring the bank closer to default as long as growth opportunities have strictly positive value. Growth opportunities can arise in our model if either the value of government guarantees is positive, loan making has positive net present value, or deposit taking has positive net present value. Lemma 4 illustrates the commonly held view that a bank's default risk has multiple dimensions, such as credit risk  $(\delta_L^{\prime})$ , prepayment risk  $(\mu_L^{\prime})$ , run risk  $(\mu_D^{\prime})$ , or growth opportunity risk  $(g^{\prime})$ .

Default and Accounting Profitability Although risk has multiple dimensions, the bank's default decision ultimately depends on the overall performance of its portfolio, as measured by the sum of current dividends and continuation payoff,  $DIV_{E}^{\prime} + (1 + g^{\prime})\mathrm{MVE}$ . In this paragraph, we relate the bank's overall performance to standard measures of accounting profitability. First, we note that

$$
D I V _ {E} ^ {\prime} = R O A ^ {\prime} - g ^ {\prime} \mathrm {B V E} - (1 - v _ {B}) \Theta_ {B},
$$

where  $ROA'$  is the bank's return on assets. That is, the dividend of equity, per unit of assets, is equal to the return on assets,  $ROA'$ , adjusted for the cost of growing assets in excess of liabilities,  $g'$  Be, and the cost of issuing subordinated debt at a discount. Dividing both sides by Be, and keeping in mind that the return on equity is  $ROE' \equiv ROA'/BVE$ , we obtain that

$$
\frac {D I V _ {E} ^ {\prime}}{\mathrm {B V E}} = R O E ^ {\prime} - g ^ {\prime} - (1 - v _ {B}) \frac {\Theta_ {B}}{B V E}. \tag {14}
$$

Hence, the bank defaults whenever

$$
R O E ^ {\prime} + g ^ {\prime} \left(\frac {\mathrm {M V E}}{\mathrm {B V E}} - 1\right) - (1 - v _ {B}) \frac {\Theta_ {B}}{B V E} <   - \frac {\mathrm {M V E}}{\mathrm {B V E}}. \tag {15}
$$

That is, the bank defaults whenever the return on equity, properly adjusted for the benefit of current growth opportunities, falls below the negative of the market-to-book ratio. $^{16}$

# 3.7 Two-State Valuation

In this subsection, we develop the valuation formulas that we implement in the remainder of the paper. Since default is a binary decision, a bank's valuation ultimately depends on probabilities and payoffs for two events: repayment  $(I' = 1)$  and default  $(I' = 0)$ . Hence, we can value the bank as if there were only two states. Of course, these two events are determined by the optimal default decision for equity, but given that decision, we can use the following valuation formulas.

Formally, let  $q(n) \equiv \hat{\mathbb{E}}[I']$  denote the risk-neutral probability for the event of repayment, which we will refer to as "normal times." Vice versa, let  $q(c) = 1 - q(n)$  denote the total risk-neutral probability for the event of default, or "crisis time." For any random variable  $x'$ , we let  $x(n) \equiv \hat{\mathbb{E}}[x'|I' = 1]$  denote the risk-neutral expectation conditional on a normal time and  $x(c) = \mathbb{E}[x'|I' = 0]$  denote the expectation conditional on a crisis. Again, let  $\bar{x} \equiv \hat{\mathbb{E}}[x']$  denote the unconditional expectation of that variable under the risk-neutral probabilities.

With this notation, we obtain using equations (6) and (14)

$$
\frac {\mathrm {M V E}}{\mathrm {B V E}} = \frac {q (n)}{1 + i - q (n) (1 + g (n))} \left[ R O E (n) - g (n) - (1 - v _ {B}) \frac {\Theta_ {B}}{B V E} \right], \tag {16}
$$

a formula that will prove to be convenient for our quantitative exercises.

Likewise we can obtain a formula for the market value of government guarantees, assuming for simplicity either that there is no subordinated debt  $(\Theta_B = 0)$  or that

this debt is fully bailed out in default (so that  $v_{B} = 1$ ):

$$
\frac {\text {M V G}}{\text {B V E}} = - \frac {q (c) T (c)}{i - \bar {g}}, \tag {17}
$$

where  $T(c)$  is the expectation of the cash injection from the government required to sell the failed bank, conditional on bank failure. That is,

$$
T (c) = - \left[ R O E (c) + (1 + g (c)) \frac {\mathrm {M V E}}{\mathrm {B V E}} \right].
$$

In what follows, it is useful for us to compute the value of government guarantees in terms of banks' realized accounting returns and balance sheet growth rates conditional on not defaulting relative to the unconditional expectation of these accounting returns. Now take unconditional expectations in (14) and recall that  $\mathrm{FVE} = \overline{DIV}_E / (i - \overline{g})$ . Under the assumption that either  $\Theta_B = 0$  or  $v_{B} = 1$ , we obtain after rearranging that the unconditional expectation of the accounting return on equity for a bank is given by

$$
\overline {{R O E}} = i \left(\frac {\mathrm {F V E}}{\mathrm {B V E}}\right) - \bar {g} \left(\frac {\mathrm {F V E} - \mathrm {B V E}}{\mathrm {B V E}}\right). \tag {18}
$$

We can then write the market value of government guarantees by taking the difference between the market value and fair value of bank equity as

$$
\frac {\mathrm {M V G}}{\mathrm {B V E}} = \frac {q (n)}{1 + i - q (n) (1 + g (n))} \left[ \left(R O E (n) - g (n)\right) - \left(\overline {{R O E}} - \bar {g}\right) \right] - \tag {19}
$$

$$
\left[ 1 - \frac {q (n) (i - \bar {g})}{1 + i - q (n) (1 + g (n))} \right] \frac {\mathrm {F V E}}{\mathrm {B V E}}.
$$

This formula for the value of government guarantees is useful for understanding the source of the value of these guarantees. The value of these guarantees is broken into two components. The first component is represented by the term

$$
\frac {q (n)}{1 + i - q (n) (1 + g (n))} \left[ (R O E (n) - g (n)) - (\overline {{R O E}} - \bar {g}) \right].
$$

This term represents the expected discounted present value of the realized excess return (dividend) that the owners of the bank earn from risk taking until the first time that a crisis occurs. The second component is represented by the term

$$
- \left[ 1 - \frac {q (n) (i - \bar {g})}{1 + i - q (n) (1 + g (n))} \right] \frac {\mathrm {F V E}}{\mathrm {B V E}}.
$$

This term represents the expected discounted value of the loss that the owners of the bank will suffer when they default since they must give up their equity in the bank.

# 4 Calibrating Aggregate Credit Risk

Our findings regarding the value of government guarantees to bank equity require that banks be exposed to a risk that involves a small probability of a very negative outcome. We document that aggregate credit risk has this feature. Broad portfolios of corporate bonds experienced large negative realized excess returns in 2008. These portfolios earn relatively small realized excess returns from their exposure to this risk in normal times.[17]

We build on existing studies of bank risk exposure. Begenau, Piazzesi, and Schneider (2015) is an important study of banks' exposure to interest rate risk and credit risk. They estimate the size of banks' exposure to these risks in terms of factor portfolios. They find that banks increased their exposure to both interest rate risk and credit risk in advance of the financial crisis. Building on their study, we model bank exposure to credit risk directly in terms of the excess returns on portfolios of corporate bonds with different credit ratings financed with risk-free debt.[18] In our model, we abstract from the impact of interest rate risk on banks' profitability and valuation.[19] We discuss this assumption further in Appendix B.

In this section, we rely on the insight from subsection 3.7 that a bank's valuation ultimately depends on the bank's expected risk-neutral performance in two-states: a crisis state in which the bank finds it optimal to default and a normal state in which the bank finds it optimal to repay. We use data on the total returns on portfolios of corporate bonds in excess of returns on similar maturity bonds without credit risk to calibrate the risk-neutral probabilities  $q(c)$  of a crisis. Our calibration of the risk-neutral probability of the normal state  $q(n)$  determines the trade-off investors face between exposure to negative realized excess returns in the crisis state  $c$  and reward in terms of positive realized excess returns in the normal state  $n$ .

Our calibration of the risk-neutral probabilities  $q(s)$  is based on the asset pricing equation for excess returns on any two fairly priced assets:

$$
q (n) \left(R (n) - R ^ {f} (n)\right) + (1 - q (n)) \left(R (c) - R ^ {f} (c)\right) = 0. \tag {20}
$$

To focus on credit risk, we let  $R(s)$  denote the realized returns on a portfolio of corporate bonds with a given credit rating below AAA, and we let  $R^{f}(n)$  denote the realized returns on a portfolio of AAA-rated bonds.

We also use information from recent studies of the expected credit risk premium on investment grade corporate bonds relative to similar duration Treasury bonds by Asvanunt and Richardson (2016) and Berndt, Douglas, Duffie, and Ferguson (2017). The expected risk premium on any asset relative to another asset is the expected value of the excess return under the physical probabilities  $p(s)$ . As long as realized excess returns on corporate bonds in the normal state are positive, estimates of expected risk premia on corporate bonds are a lower bound on the realized excess return on these bonds in the normal state. That is, under these assumptions we have the inequality

$$
R (n) - R ^ {f} (n) \geq p (n) \left(R (n) - R ^ {f} (n)\right) + (1 - p (n)) \left(R (c) - R ^ {f} (c)\right). \tag {21}
$$

<table><tr><td></td><td>AA</td><td>A</td><td>BBB</td><td>BB</td><td>B</td><td>HY</td></tr><tr><td>Returns BAML 2008</td><td>-5.00%</td><td>-12.30%</td><td>-15.76%</td><td>-23.90%</td><td>-32.73%</td><td>-31.09%</td></tr><tr><td>Returns BAML 97-07/11-17</td><td>-21bp</td><td>9bp</td><td>33bp</td><td>111bp</td><td>31bp</td><td>77bp</td></tr><tr><td>Premium BDDF 2002-2015</td><td>13bp</td><td>26bp</td><td>57bp</td><td>143bp</td><td>242bp</td><td></td></tr><tr><td>Premium AV 1988-2014</td><td></td><td>50bp for IG</td><td></td><td></td><td></td><td>248bp</td></tr><tr><td>R(n) - Rf(n) if q(n) = 0.95</td><td>26bp</td><td>65bp</td><td>84bp</td><td>126bp</td><td>172bp</td><td>164bp</td></tr></table>

Table 1: Realized Annualized Excess Returns and Credit Risk Premium on Corporate Bonds AV = Asvanunt and Richardson (2016), BDDF = Berndt, Douglas, Duffie, and Ferguson (2017). The last line is calculated as  $R(n) - R^{f}(n) = -(1 - q(n)) / q(n) \left[ R(c) - R^{f}(c) \right]$ , where  $R(c) - R^{f}(c)$  is the realized BAML excess return in 2008.

Corporate bonds are useful for studying the nature of aggregate credit risk as these bonds are traded, and hence their returns can easily be measured for different credit ratings. We measure the credit risk in corporate bonds using BAML Total Return Indices for portfolios of bonds of different credit ratings.[20] To measure credit risk, we examine the total returns on bonds rated  $AA$ ,  $A$ ,  $BBB$ ,  $BB$ ,  $B$ , and the BAML High Yield Total Return index in excess of the total returns on bonds with a rating of  $AAA$ .[21] See Table 1 for a presentation of these data.

The realized excess returns on the BAML portfolios for 2008 were increasingly negative as the rating of the bond portfolio declines, consistent with the hypothesis that bonds with a lower credit rating are more exposed to aggregate credit risk. For the most part, the realized excess returns on these bond portfolios in the non-crisis years of 1997-2007 and 2011-2017 are increasing as the credit rating of the bond portfolio declines, consistent with the hypothesis that investors were compensated in normal times for exposure to this risk.

Next, consider the evidence on the expected credit risk premium, which, through equation (21), puts a lower bound on the realized excess returns on corporate bonds

in normal times. In Table 1, we present the expected credit risk premia estimated by Asvanunt and Richardson (2016) over the 1988-2014 time period and by Berndt, Douglas, Duffie, and Ferguson (2017) over the 2002-2015 time period.[22]

To map these data to our model to calibrate the risk-neutral probability  $q(n)$ , we use the realized excess returns on these various portfolios as a measure of the realized excess return on a portfolio of assets with the credit risk in corporate bonds in the crisis state  $c$ , which we denote by  $R(c) - i$ .<sup>23</sup> Thus, given a choice of  $q(n)$ , our model implies a predicted realized excess return for each of these bond portfolios in normal times  $R(n) - i$ . In the last line of Table 1, we present the model's predictions for these realized excess returns in the normal state under the hypothesis that the risk-neutral probability of the normal state is  $q(n) = 0.95$ .

Based on these observations, in what follows, we use a calibration of the risk-neutral probability of the normal state of  $q(n) = 0.95$ .

# 5 Applying the Model to a Stylized Bank

We now use our model to study the implications of government guarantees for the market valuation of a stylized bank that has no franchise value because all of its assets and liabilities are simply marketable securities. We do so to make a simple quantitative illustration of the two comparative statics results that we considered in Lemmas 2 and 3.

In particular, we first show that, in the presence of government guarantees, it is quantitatively plausible that observed variations in bank accounting profitability and market valuations in normal times can be accounted for by small changes in bank exposure to the aggregate credit risk in investment grade corporate bonds. We

demonstrate that a bank with government guarantees, plausible amounts of book equity, and assets with the exposure to aggregate credit risk of  $BBB$ -rated corporate bonds can capture enough value from government guarantees to boost the ratio of the market-to-book value of its equity to 2.

We then use this stylized model to demonstrate the result in Lemma 3: a reduction in book leverage can result in a substantial decline in the accounting profitability and market valuation of the bank, even if it implies that the bank is becoming safer in the sense that the market value of the government guarantees is getting smaller. Specifically, this exercise demonstrates that higher regulatory capital standards should be expected to significantly reduce the accounting profitability and valuation of a risk-taking bank.

Our stylized bank holds on its asset side a portfolio of marketable securities with exposure to the credit risk observed in corporate bonds with different credit ratings and finances its portfolio with wholesale deposits backed by a full government guarantee. Accordingly, because all of the bank's assets and liabilities are obtained through transactions in capital markets, we assume that the fair value of this bank's assets and liabilities is equal to the book value. That is, we assume that  $v_{L} = v_{D} = 1$  and that there are no costs of originating new loans or deposits  $\phi_{L} = \phi_{D} = 0$ . The book leverage of the bank is  $\Theta$ . Thus, the book value and the fair value of the bank's equity are given by  $1 - \Theta$ .

The assets of this stylized bank earn gross returns  $1 + R(s)$  realized in state  $s$ . We assume that the bank reinvests to have its portfolio of assets and liabilities grow at rates  $g(s)$ . With these assumptions, the free cash flow of the bank is given by

$$
D I V _ {E} (s) = (R (s) - i) + (1 - \Theta) (1 + i) - (1 + g (s)) (1 - \Theta).
$$

The accounting return on equity for this stylized bank is given by

$$
R O E (s) = \frac {R (s) - \Theta i}{1 - \Theta}.
$$

The market value of this bank is given by equation (6). The decision of bank

equity to default  $I(s)$  is governed by equation (7). With only two states, the ratio of the market value of equity to its book value is given by the maximum of the value given from equation (16) and the ratio of the fair to book value of equity (corresponding to no default). Hence, it is optimal for the bank to default in the crisis state if

$$
\frac {q (n)}{1 + i - q (n) (1 + g (n))} \left[ R O E (n) - g (n) \right] > \frac {\mathrm {F V E}}{\mathrm {B V E}}. \tag {22}
$$

For our stylized bank, the ratio FVE/Be = 1.

# 5.1 Risk and Bank Valuation

We now examine the implications of our stylized model for the market valuation and accounting profitability of stylized banks that have different exposures to aggregate credit risk as indexed by their realized excess returns in the crisis state  $R(c) - i$  and different levels of leverage  $\Theta$ . We calibrate our stylized model to a risk-neutral probability of the normal state of  $q(n) = 0.95$  and hence a risk-neutral probability of a crisis of  $q(c) = 0.05$ . We set the risk-free interest rate to  $i = 5\%$  and the growth rate of the book balance sheet in normal times of  $g(n) = 7.5\%$ .[24]

To model banks with different exposures to aggregate credit risk, we consider four banks that differ in their realized excess returns in the crisis state. We calibrate these crisis excess returns to those observed for the different BAML bond portfolios in 2008 discussed above in Table 1. We refer to these four banks with different risk profiles as the  $AA$ ,  $A$ ,  $BBB$ , and  $BB$  banks.

We now examine how the market valuation and accounting profitability of our four stylized banks vary with these banks' exposure to credit risk. We consider first a value for leverage in these banks of  $\Theta = 0.90$ .

With the parameters we have set, we have that the realized accounting returns on equity for these banks in the normal state  $(ROE(n))$  are rising sharply in bank

<table><tr><td rowspan="2" colspan="2"></td><td colspan="4">Rating of Bank Assets</td></tr><tr><td>AA</td><td>A</td><td>BBB</td><td>BB</td></tr><tr><td rowspan="2">Θ = 0.90</td><td>ROE(n)</td><td>7.63%</td><td>11.47%</td><td>13.40%</td><td>17.58%</td></tr><tr><td>MVE/Be</td><td>1</td><td>1.31</td><td>1.95</td><td>3.33</td></tr><tr><td rowspan="2">Θ = 0.85</td><td>ROE(n)</td><td>6.75%</td><td>9.32%</td><td>10.60%</td><td>13.39%</td></tr><tr><td>MVE/Be</td><td>1</td><td>1</td><td>1.02</td><td>1.95</td></tr></table>

Table 2: Profitability and Valuation of Stylized Banks

exposure to credit risk. See the first row of Table 2. Thus, we see that it is quite plausible that large differences in banks' observed accounting returns on equity in normal times can be accounted for by differences in their exposure to the aggregate credit risk in investment grade corporate bonds.

Which of these banks chooses to default in the crisis state? From equation (22), we have that the banks with  $A-$ ,  $BBB-$ , and  $BB$ -rated assets would all choose to default in the crisis state. Only the safest bank, the bank with  $AA$  rated assets, would choose not to default.

Now consider the implications of our model for the market valuation of these banks. The safest bank, the bank with  $AA$ -rated assets, does not default in the crisis state. Hence, the market value of its equity is equal to the fair value of its equity, which, in turn, is equal to the book value of its equity. Hence, it trades at a market-to-book value of 1.

To value the three riskier banks that choose to default in the crisis state, we use equation (16). From this equation, we have that the bank with  $A$ -rated assets trades at a market-to-book ratio of 1.31, the bank with  $BBB$ -rated assets at a ratio of 1.95, and the bank with  $BB$ -rated assets at a ratio of 3.33. (See the second row of Table 2.) Thus, we see that the market valuation of these banks rises sharply with their exposure to aggregate credit risk. Moreover, our stylized bank can attain a market-to-book ratio close to 2 simply from exposure to the aggregate credit risk in  $BBB$  bonds.

The results in Table 2 from this simple numerical exercise make clear the quantita-

tive implications of Lemma 2. Specifically, we see that, in the presence of government guarantees, it is entirely plausible that large changes in banks' accounting profitability and market valuations can be accounted for by small changes in banks' exposure to the aggregate credit risk in investment grade corporate bonds.

# 5.2 Equity Capital, Bank Accounting Profits, and Valuation

We now illustrate the comparative statics exercise in Lemma 3. Specifically, we now consider the accounting profitability and valuation of our stylized banks with a value for leverage in these banks of  $\Theta = 0.85$ . Results are reported in the lower half of Table 2.

The realized accounting returns on equity for these banks in the normal state  $(ROE(n))$  are substantially reduced relative to the example above with lower equity capital. (Compare the first and third rows of Table 2.)

Which of these banks chooses to default in the crisis state? From equation (22), we have that now only the two riskiest banks, the banks with  $BBB$  and  $BB$  assets, would choose to default in the crisis state. The banks with  $AA$  and  $A$  assets would not choose to default in the crisis state.

This reduction in banks' book leverage has a striking impact on their market valuations. (Compare the second and fourth rows of Table 2.) Now, the banks with AAand A-rated assets both trade at a market-to-book ratio of 1. The BBB bank now trades at a market-to-book ratio of only 1.02 instead of 1.95. Although this bank continues to default in the crisis state (and hence with the same probability), with lower leverage, the equity of this bank derives much less value from the government guarantees.

The results in Table 2 from this second simple numerical exercise highlight the quantitative implications of Lemma 3, that is, the prediction of our model that an increase in bank capital following a crisis should be expected to substantially reduce bank market valuations and accounting profitability relative to what was observed prior to that crisis.

# 5.3 Risk Taking and Accounting Profitability

As shown in Table 2, the accounting profitability of our stylized bank rises in the risk exposure of its assets.[25] We can use the benchmark for accounting profitability in equation (18) to decompose the accounting profitability of banks observed in normal times into a component that is due to exposure to aggregate risk  $ROE(n) - \overline{ROE}$  and a component that is due to the fair value of bank equity  $\overline{ROE}$ .

For our stylized banks in which FVE = Be, we have  $\overline{ROE} = i$ , which we calibrate to  $i = 5\%$ . For each of our stylized banks, we see that they show accounting profitability in normal times in excess of this benchmark, with this gap increasing as the credit quality of the bank's assets is reduced. Note that this excess accounting profitability for the  $BBB$  bank with book leverage of  $\Theta = 0.9$  is  $840bp$ . When book leverage is reduced to  $\Theta = 0.85$ , this excess profitability is reduced to  $560bp$ . The risk-neutral expectation of the bank's accounting profitability, however, is unchanged at  $\overline{ROE}$  regardless of risk taking. A bank that takes risks succeeds at raising its accounting profitability in normal times at the expense of reducing its profitability in the crisis state. From equation (19) and our quantitative results, we see how this impact of risk taking on accounting profitability translates into higher valuations of government guarantees.

# 6 Accounting for the Valuation of US Banks

In this section, we use our model to provide a full accounting of the evolution of the market valuation of banks for three time periods: 1970-1985, 1996-2007, and 2011-2017. We choose these time periods to correspond to "normal" states as opposed to crisis states. We omit the time period between 1986 and 1995 because this was a period of rapid change in the regulatory environment and business models for banking and of substantial volatility in bank earnings and valuations. We omit the years 2008-2010 as these correspond to a crisis period in banking. Table 3 summarizes

all the parameters and results of this section. Our accounting proceeds in two steps.

In the first step, we construct a measure of the fair value of bank equity, using data on the book value of items on banks' balance sheets together with data reported in the footnotes of banks' annual reports and results from the Portfolio Value Model created by the Office of Thrift Supervision. We do so using equations (3), (4), and (11). The inputs required here are the values of the ratio of the fair to book value of loans  $v_{L}$ , the ratio of the fair to book value of deposits  $v_{D}$ , and an assumption regarding the value of growth opportunities in loan making, FVL  $-v_{L}$ , and deposit taking, FVD  $-v_{D}$ . This first step gives us a measure of the ratio of the franchise value of banks relative to the book value of bank equity implied by  $\frac{\text{FVE-BVE}}{\text{BVE}}$ .

In the second step, we construct a measure of the model's implications for the market value of bank equity. This measure is the maximum of the fair value of bank equity and the market value of bank equity conditional on equity defaulting in the crisis state from equation (16). The inputs required here are measures of the risk-free interest rate  $i$ , a measure of the growth rate of the bank balance sheet in normal times  $g(n)$ , a measure of the bank's free cash flow to equity in the normal state  $DIV_{E}(n)$  given observed accounting profitability, and our calibration of the risk-neutral probability of the normal state  $q(n) = 0.95$ . Hence, this second step gives us a measure of the ratio of the market value of government guarantees to the fair value of bank equity implied by  $\frac{\text{MVE-FVE}}{\text{BVE}}$ .

# 6.1 First Step: FVE

Measurement of Franchise Value in Banking. From equation (11), the fair value of bank equity, and hence the franchise value of the bank, is determined by the fair value of the current stock of bank loans relative to its book value  $v_{L}$ , the fair value of the current stock of deposits relative to its book value  $v_{D}$ , the leverage of the bank  $\Theta_{D}$ , and the value of the bank's opportunities to originate new loans and deposits. Note that the subordinated debt of the bank is recorded on the balance sheet at its market price, so we are able to read  $\Theta_{B}v_{B}$  off bank balance sheets.

To measure  $v_{L}$ , our paper relies on banks' estimates of the fair value of their loans presented in the footnotes to the financial statements in their annual reports.[27] To measure  $v_{D}$ , we rely on estimates of the fair value of bank deposits from a model developed by the Office of Thrift Supervision. We assume that banking is competitive in the sense that loan and deposit origination is a zero net present value activity, that is,  $\phi_{L} = (v_{L} - 1)$  and  $\phi_{D} = (1 - v_{D})$ . This implies that the gap between the fair value and the book value of bank equity relative to the book value of bank assets is given by  $(v_{L} - 1) - \Theta_{D}(1 - v_{D})$ .

The methods that banks and the OTS use to estimate the fair value of loans and deposits are related to the internal cost-accounting models banks develop to evaluate the risk versus the profitability of their lending and deposit taking units. This methodology is commonly referred to as funds transfer pricing (FTP).[28] This methodology is also related to the methodology that the Bureau of Economic Analysis uses when it measures value added in banking. In particular, the BEA's methodology attributes a portion of banks' net interest income to implicit charges for service provision, which they refer to as Financial Intermediation Services Implicitly Measured (FISIM).[29]

Loan Fair Values First consider our data on the fair value of bank loans. Banks have been required since the mid-1990's to report an estimate of the fair value of their loans in the footnotes to their Annual Reports. We collected data from the footnotes in bank annual reports on the fair and book values of bank loan portfolios

27For background information on these reports on loan fair values, see Nissim (2003), Nissim and Penman (2007), Tschirhart, O'Brien, Moise, and Yang (2007), Calomiris and Nissim (2014), and Knott, Richardson, Rismanchi, and Sen (2014).  
$^{28}$ Hutchison and Pennacchi (1996), Jarrow and Deventer (1998), Janosi, Jarrow, and Zullo (1999), O'Brien (2000), and Sheehan (2013) develop fair value models for loans and deposits. For a discussion of banks' models for Funds Transfer Pricing, see Wyle and Tsaig (2011), Grant (2011), and Determine (2012).  
29Wang, Basu, and Fernald (2008) and Basu, Inklaar, and Wang (2011) study the measurement of FISIM and Hood (2013) and Akritidis (2017) discuss the methods used in the US and elsewhere to conduct this measurement. Haldane, Brennan, and Madouros (2010) focuses on the impact of risk taking on measurement of FISIM in banking.

for the period 1995-2016 for 19 large bank holding companies. $^{30}$  We compute a ratio of the fair to book value of loans for the banking sector by taking the sum of loan fair values across these banks divided by the sum of loan book values. The resulting ratios from these data are shown in Figure 10. In normal times, these ratios range between 1 and 1.02. Thus, consistent with the finding of Begenau and Stafford (2018) that bank assets have not substantially outperformed passive portfolios of securities, we find that according to bank models of loan fair values, the gap between loan fair values and book values is small.

The coefficient  $v_{L}$  in our model refers to the ratio of the fair value to book value of all bank assets. To obtain an estimate of  $v_{L}$  to be used in our model, we must convert the figure for the ratio of the fair-to-book value of bank loans to a fair to book value of all bank assets. We do so as follows. We treat all earning bank assets that are not loans as having fair values equal to book values.[31] We also treat all non-earning bank assets as having fair values equal to book values.[32] If we denote the ratio of fair to book value of bank loans taken from bank annual reports by  $\widetilde{v}_{L}$  and the ratio of bank loans in the data to total assets in the data by  $\widetilde{L}$ , these assumptions give us that  $v_{L}$  in our model is given by

$$
v _ {L} = 1 + \left(\widetilde {v} _ {L} - 1\right) \widetilde {L}.
$$

We report the implied values of  $v_{L}$  in Table 3. We do not have data for the 1970-1985 time period. We set  $v_{L} = 1$  for this time period.

Deposit Fair Values Now consider our data for the fair value of bank deposits. Banks do not report on the fair value of their deposits. Instead, we rely on estimates of the fair value of deposits constructed by the OTS in their Portfolio Value Model.[33] Their estimate of the ratio of the fair to book value of deposits (which they refer to as the intangible value of deposits) is an estimate of the interest savings to the bank that arise if current depositors leave their funds in their demand accounts or roll over their funds in time deposits at rates below prevailing wholesale interest rates (or a combination of both).

The OTS published estimates of the fair value of selected assets and liabilities on a quarterly basis from 1997 to 2011.[34] We use the OTS estimates of the intangible value of retail certificates of deposit, transaction accounts, money market accounts, passbook savings accounts, and non interest bearing accounts to construct an estimate of the fair value of deposits in banks in the data, which we denote by  $\widetilde{v}_D$ .[35]

We check the results from the OTS Portfolio Value Model for the intangible value of deposits against accounting data on the core deposit intangibles that banks record when one bank purchases another bank. Davis (2017) charts three reports on average core deposit intangibles recorded from whole bank transactions from 2000 to 2017. Core deposit intangibles range from  $2.5\%$  to  $3\%$  in the early 2000s and have fallen to roughly  $1\%$  since the crisis. These estimates imply a large drop in the gap between the book value and fair value of deposit liabilities across these two time periods. This finding is consistent with the discussion in Fine and Rohde (2013).

As with loans, the concept of  $v_{D}$  in our model corresponds to the ratio of the fair value to book value of all bank liabilities. In addition to deposits, bank liabilities include fed funds purchased, repo and trading liabilities.[36] We assume that these

33See Office of Thrift Supervision (2000) for a description of that model. See also Sheehan (2013). 34These estimates are available on the website of the Office of the Comptroller of the Currency (https://www.occ.gov/publications/publications-by-type/ other-publications-reports/ots/ots-asset-liability-price-tables.html).  
35The aggregation of these OTs fair value estimates requires considerable judgment on our part. With more time, perhaps a more precise estimate could be constructed.  
36 Recall that we handle subordinated debt separately. We discuss banks' estimates of the fair value of these other bank liabilities in Appendix B.

liabilities are all carried on the books at fair value. Hence, if  $\widetilde{D}$  denotes the ratio of deposits to total assets in the data, our model concept of  $v_{D}$  is given by

$$
v _ {D} = 1 - (1 - \widetilde {v} _ {D}) \frac {\widetilde {D}}{\Theta},
$$

where  $\widetilde{D} / \Theta$  is the ratio of deposits to total liabilities in the data.

We report the implied values of  $v_{D}$  in Table 3. Again, we do not have data for the 1970-1985 time period. We set  $v_{D} = 1$  for this time period. We find significant gaps between the fair and book values of bank deposits, particularly during the 1996-2007 time period.[37]

Bank Leverage The sources we use to measure bank leverage  $\Theta$  (and accounting profitability and growth of assets) are as follows. For the 1970-1985 time period, we use data from the FDIC's Historical Statistics on Banking. This source provides data on bank income statements and balance sheets on an annual basis from 1934 through 2017. For the 1996-2007 and 2011-2017 time periods, we use data on bank holding companies from the Federal Reserve Bank of New York's report "Quarterly Trends for Consolidated US Banking Organizations." This source provides quarterly data on bank holding company income statements and balance sheets on a quarterly basis from 1991 through 2017Q3. The values of the ratio of the fair value of bank subordinated debt to total assets  $(\Theta_{B}v_{B})$  for these three time periods are from line 19 from Schedule HC on the bank holding company FR Y-9C reports. These data are presented in the top panel of Table 3.

Results on Bank Franchise Values Bank franchise parameters give us the following results for the ratio of the fair value of bank equity to the book value of bank equity presented in the bottom panel of Table 3. We estimate that the ratio of the fair value of bank equity relative to the book value of bank equity was 1.33 for bank

holding companies in the 1996-2007 time period and 1.10 for bank holding companies in the 2011-2017 time period. Thus, our estimates imply that bank franchise values have fallen considerably relative to bank book equity — from  $33\%$  in 1996-2007 to  $10\%$  in 2011-2017.

# 6.2 Second Step: MVE

Market Value of Equity We now turn to the second step of our accounting, that of measuring the model's implications for the market value of bank equity. For this step, from equation (16) we require measures of the following parameters:  $q(n), i, g(n)$ , and  $ROE(n)$ . These parameters are presented in the top panel of Table 3, where we compute  $ROE(n) = ROA(n) / (1 - \Theta)$ .

We use our calibration of the risk-neutral probability of the normal state of  $q(n) = 0.95$  for all time periods that we consider.

To calibrate the level of the riskless interest rate  $i$  for each of our three normal time periods, we consider the constant maturity yield on five-year Treasury securities as reported in the top panel of Table 3. To calibrate the growth rate of assets in the normal state  $g(n)$ , we examine the average of the growth rate of bank total assets in the time periods under consideration. We use values of the growth rate of banks in normal times  $g(n)$  of  $10.0\%$  for 1970-1985,  $7.5\%$  for 1996-2007, and  $2.4\%$  for 2011-2017.

To compute equity dividends in normal times  $DIV_{E}(n)$ , we use that

$$
D I V _ {E} (n) = R O A (n) - (1 - v _ {B}) \Theta_ {B} - g (n) B V E.
$$

To estimate the market price of subordinated debt  $v_{B}$ , we use data on banks' bond spreads as described in Section 2. We have that  $v_{B} = \frac{1 + i}{1 + y}$  where  $y$  is the yield on subordinated debt. We calibrate the spreads on bank-subordinated debt  $y_{B} - i$  to 93bp for 1996-2007 and 147bp for 2011-2017. We do not have data for the 1970-1985 time period. We use a spread of 100bp for this time period. This calibration implies values of  $v_{B}$  equal to 0.991 for 1970-1985 and 1996-2007 and 0.986 for 2011-2017. Using these data, we have implied values of  $\Theta_{B}$ .

# 6.3 Results

Our results are presented in the bottom panel of Table 3.

Our model predicts that during the 1970-1985 time period, banks would not choose to default in the crisis state, and hence they derived no value from government guarantees. This implies that the market-to-book ratio of banks during this time period should equal the ratio of the fair value to book value of equity and that government guarantees did not add to the market value of bank equity.

Our model predicts that during the 1996-2007 time period, banks would choose to default in the crisis state and that the model-implied ratio of market-to-book value of equity was 2.24. This value is quite close to the observed average value in the data of 2.12. As a result, we argue that our model can account for observed bank valuations during the 1996-2007 time period. Since the predicted ratio of the fair-to-book value of equity during this time period was only 1.33, our model implies that banks derived a substantial portion of their market value of equity from government guarantees (roughly  $91\%$  of their book value of equity).

Our model predicts that during the 2011-2017 time period, banks would choose to default in the crisis state and that the model-implied ratio of market-to-book value of equity was 1.19. This figure is close to the model's predictions for the ratios of the fair-to-book value of bank equity of 1.10 discussed above. Hence, our model predicts that banks currently do not derive much of their market value from government guarantees. Our model actually overpredicts the ratio of the market-to-book value of bank equity relative to the data. In the data, this figure averages 0.98 over this time period.

What forces drive our finding that the market value of government guarantees was large relative to the book value of bank equity in the period 1996-2007 but not in the other two time periods? The forces that we focus on here are changes in the book value of bank leverage and the risk in bank assets.

We have seen that the book value of bank leverage has declined steadily across the three time periods that we study. This finding raises the question of why the market value of government guarantees was not high in the 1970-1985 time period.

The answer lies in the amount of aggregate risk in bank assets. To derive this answer, we use equation (18) to measure the excess accounting return on equity of banks in normal times for these three time periods.[38] We find a value of  $ROE(s^n) - \overline{ROE}$  of only 89bp in the 1970-1985 time period. This excess accounting return to equity contrasts sharply with the value of 908bp in the 1996-2007 time period and the value of 577bp for the 2011-2017 time period. Based on this evidence, we argue that risk taking by banks in terms of the exposure in bank assets rose sharply from the 1970-1985 time period to the 1990s and beyond. This evidence suggests that the risk in bank assets has declined only modestly since the crisis of 2008.[39]

# 7 Conclusion

In this paper, we have shown that a large part of the evolution of bank valuations from 1970 to the present can be explained by changes in the value of government guarantees. By increasing leverage and exposure to losses in credit crisis states, bankers increase the capitalized value of government guarantees. We show that changes in the capitalized value of these guarantees, driven mainly by changes in bank leverage, risk taking, and the growth rate of banks' balance sheets, have been at least as important as banks' true franchise values in determining the value of US banks over time.

Our paper has important implications for bank regulation. Indeed, we show that very small changes in banks' exposure to aggregate credit risk, as well as small changes in bank leverage, have very large effects on taxpayers' liability to bail out banks in a crisis. Currently, bank book leverage is lower than pre-crisis levels. The

38To implement this formula, we set  $\bar{g} = i - 0.025$  
39We do not directly address changes in the regulatory and economic environment that would account for the changes in bank risk taking and value derived from government guarantees that we document here. There is a large literature on the changes in the regulatory environment that increased the incentives for banks to take risks and become too big to fail. See, for example, Boyd and Gertler (1994), Feldman and Rolnick (1998), Wilmarth Jr. (2002), Stern and Feldman (2004), and Mishkin (2006). There is also a literature that examines the impact of equity-based incentives for CEOs on bank risk taking. See for example Chesney, Stromberg, and Wagner (2012), Larcker, Ormazabal, Tayan, and Taylor (2014), and Boyallian and Ruiz-Verdu (2017).

larger bank equity cushion has reduced the value of taxpayers' liability to bail out banks in a crisis. However, data on bank profitability and market measures of bank credit risk indicate that banks have not substantially reduced their exposure to aggregate risk. As a result, current data suggest that bank equity and subordinated debt would again be wiped out in a credit crisis of the magnitude of 2008.

To conclude, our accounting model suggests that moves to lighten the regulatory burden on banks going forward should be met with caution. The value of government guarantees to bank equity is highly sensitive to small changes in the risk exposure of bank assets. If regulators allow even a moderate increase in risk taking by banks, we should see a significant jump in bank valuations and accounting profitability. The temptation will be to interpret this increase in bank valuations and accounting profitability as a restoration of bank franchise value previously damaged by regulation. Instead, we argue that it would properly be interpreted as a return to the days in which taxpayers had a large contingent liability to bail out banks in a crisis.

CALIBRATION  

<table><tr><td></td><td>1970:1-1985:12</td><td>1996:1-2007:12</td><td>2011:1-2017:12</td><td>name</td><td>source</td></tr><tr><td>Θ</td><td>93.86%</td><td>91.80%</td><td>88.87%</td><td>leverage</td><td>FR Y-9C Reports 1-RC28/RC12</td></tr><tr><td>ΘBV</td><td>0.41%</td><td>1.33%</td><td>0.74%</td><td>subordinated debt</td><td>FR Y-9C Reports RC19/RC12</td></tr><tr><td>i</td><td>10.79%</td><td>4.81%</td><td>1.34%</td><td>risk-free rate</td><td>Five-year Treasury yield</td></tr><tr><td>g(n)</td><td>10.0%</td><td>7.5%</td><td>2.4%</td><td>expected growth of balance sheet</td><td></td></tr><tr><td>vL</td><td>1</td><td>1.009</td><td>1.002</td><td>fair-to-book value of loans</td><td>annual reports</td></tr><tr><td>vD</td><td>1</td><td>0.978</td><td>0.99</td><td>fair-to-book value of deposits</td><td>OTS estimates</td></tr><tr><td>ROA(n)</td><td>0.717%</td><td>1.22%</td><td>0.825%</td><td>return on assets in sn</td><td>FRY-9C Reports RI14/A</td></tr></table>

RESULTS  

<table><tr><td></td><td>1970:1-1985:12</td><td>1996:1-2007:12</td><td>2011:1-2017:12</td><td>name</td><td>source</td></tr><tr><td>MVE/Be</td><td>1</td><td>2.24</td><td>1.19</td><td>market-to-book value of equity</td><td>accounting model</td></tr><tr><td>FVE-BVE</td><td>0</td><td>0.33</td><td>0.10</td><td>franchise value/book equity</td><td>accounting model</td></tr><tr><td>MVE-FVE</td><td>0</td><td>0.91</td><td>0.09</td><td>value of gov’t guarantees/book equity</td><td>accounting model</td></tr><tr><td>Be ROE</td><td>10.79%</td><td>5.80%</td><td>1.64%</td><td>return on equity with no asset risk</td><td>accounting model</td></tr><tr><td>ROE(n) - ROE</td><td>89bp</td><td>908bp</td><td>577bp</td><td>excess returns in normal times</td><td>accounting model</td></tr></table>

Table 3: Calibration and Results

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/b7bb2165-7d23-49bd-b208-91fbdd98f9a6/383a0b4c590bdef1908e83d0221b3b44c31ec6d719776e517b63d4e04a102885.jpg)  
Figure 1: Market to Book Value of Equity for Bank Holding Companies The ratio is computed as the sum of the market value of equity across bank holding companies divided by the sum of the book value of equity across bank holding companies. The book value of equity comes from the Holding Company Data of the Federal Reserve Bank of Chicago and corresponds to item 28 of Schedule HC from FR Y-9C reports. The market value of equity comes from the Center for Research in Security Prices (CRSP) database.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/b7bb2165-7d23-49bd-b208-91fbdd98f9a6/657871eb80dd9ec3de55bbe609bc1e16bac46b1250a6c8c7549f509f50cd54ba.jpg)  
Figure 2: Market to Book Value of Equity for Bank Holding Companies and Financial Firms The ratio is computed as the sum of the market value of equity across bank holding companies divided by the sum of the book value of equity across bank holding companies. The book value of equity comes from the Holding Company Data of the Federal Reserve Bank of Chicago and corresponds to item 28 of Schedule HC from FR Y-9C reports. The market value of equity comes from the Center for Research in Security Prices (CRSP) database. We use financial firms with a standard industry classification code between 6000 and 6199 to go back to 1975.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/b7bb2165-7d23-49bd-b208-91fbdd98f9a6/fb7a6d0ae8fe0d0c7bbd0e49a27aaa91fcb8e7f96809cbc1f7e5b85106a3a64a.jpg)  
Figure 3: Market to Book Value of Equity for Bank Holding Companies We use the gross domestic product implicit price deflator with base year 2009 as the deflator of the \(205 billion threshold. We then take the average of the ratios of market-to-book value of equity within each group. We use the same data as in Figure 1.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/b7bb2165-7d23-49bd-b208-91fbdd98f9a6/65d3e0abe55aa488a2192b2a4aadda7c59c6f1e3fa96a5109035109eb92fa8ef.jpg)  
Figure 4: Book Leverage for Bank Holding Companies This figure reports book leverage from the "Quarterly Trends for Consolidated US Banking Organizations" report of the Federal Reserve Bank of New York. The ratio is computed as the sum of liabilities across bank holding companies divided by the sum of total assets across bank holding companies.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/b7bb2165-7d23-49bd-b208-91fbdd98f9a6/ac25e6cb717b6fe4c9b27ce26a9dcde53b93fa527927b6008c943019ee102b9b.jpg)  
Figure 5: Market Leverage for Bank Holding Companies The ratio is computed as the sum of the book value of liabilities across bank holding companies divided by the sum of the market value of total assets across bank holding companies. The book value of liabilities comes from the Holding Company Data of the Federal Reserve Bank of Chicago and corresponds to item 21 of Schedule HC from FR Y-9C reports. The market value of assets is calculated as the sum of the book value of liabilities and the market value of equity coming from the Center for Research in Security Prices (CRSP) database.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/b7bb2165-7d23-49bd-b208-91fbdd98f9a6/db69c24370907a0f855563e24ffa6645a4f72b7d24607a6b398eae25f1483967.jpg)  
Figure 6: Return on Equity for Bank Holding Companies This figure reports the quarterly annualized return on equity from the "Quarterly Trends for Consolidated US Banking Organizations" report of the Federal Reserve Bank of New York. The ratio is computed as the sum of net income across bank holding companies divided by the sum of total equity across bank holding companies. Net income corresponds to item 14 of Schedule HI from FR Y9-C reports. The book value of equity corresponds to item 28 of Schedule HC from FR Y-9C reports.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/b7bb2165-7d23-49bd-b208-91fbdd98f9a6/f917cd2dd7802ffe81fd9d38e54e5ea3a4e6a89f6d05abd594e56317da900149.jpg)  
Figure 7: Return on Assets for Bank Holding Companies This figure reports the quarterly annualized return on assets from the "Quarterly Trends for Consolidated US Banking Organizations" report of the Federal Reserve Bank of New York. The ratio is computed as the sum of net income across bank holding companies divided by the sum of total assets across bank holding companies. Net income corresponds to item 14 of Schedule HI from FR Y9-C reports. The book value of assets corresponds to item 12 of Schedule HC from FR Y-9C reports.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/b7bb2165-7d23-49bd-b208-91fbdd98f9a6/3d1691a5476af78710e471be39875177ffd5e31f1b38c5d2c29b8fbd1407682a.jpg)  
Figure 8: Return on Assets for FDIC-Insured Banks This figure reports the return on assets from the consolidated annual financial statements of FDIC-insured institutions. The ratio is computed as the sum of net income across FDIC-insured institutions divided by the sum of total assets across FDIC-insured institutions.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/b7bb2165-7d23-49bd-b208-91fbdd98f9a6/e7e8ccab6c9c96f13ffa2c41b11c7fc294736d88bf3f9b5980fe585a7fd46f48.jpg)  
Figure 9: Corporate Bond Log Option-Adjusted Spreads The blue line is the average corporate bond log option-adjusted spread of publicly traded bank holding companies from the Lehman/Warga and Merrill Lynch databases from 1986 to 2016. The grey lines show the average for publicly traded non-financial firms within rating groups AAA or AA, A, BBB, BB, and B.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/b7bb2165-7d23-49bd-b208-91fbdd98f9a6/2b91e88bcd5c09ee4eed9ba8aff141b218146e94d1d0a765572ae3df96270b4a.jpg)  
Figure 10: Fair to Book Value of Loans The ratio is computed as the sum of the fair value of loans across bank holding companies divided by the sum of the book value of loans across bank holding companies. Observations of fair value of loans come from notes in the annual reports of bank holding companies. See, for example, note 22 "Fair Value of Financial Instruments", on page 208 of the 2016 Bank of America annual report. We collected observations for Bank of America, Citigroup, JP Morgan Chase, Wells Fargo, American International Group, Metlife, American Express, Huntington Bancshares, Fifth Third Bank, Washington Mutual, SunTrust Banks, Regions Financial Corporation, PNC Financial Services, National City Corporation, Zions Bancorporation, Countrywide Financial, Comerica, KeyCorp, and U.S. Bancorp.

# Noninterest Income Share

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/b7bb2165-7d23-49bd-b208-91fbdd98f9a6/898837793d3d2676f08fe37784dca2435c1c1049d957bb3062ce86b2f0ca2efc.jpg)  
Figure 11: Non-Interest Income Share by Bank Size Non-interest income as a percentage of net operating revenue. Net operating revenue is defined as the sum of net interest income and non-interest income. Source: Federal Reserve Bank of New York, "Quarterly Trends for Consolidated US Banking Organizations" 4th quarter 2017.

# Return on Equity

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/b7bb2165-7d23-49bd-b208-91fbdd98f9a6/51b34dc1e956529db7e638ba9c7f2c49adc9a05f523e9273bf24365733639d85.jpg)  
Figure 12: Return on Equity by BHC Size Source: Federal Reserve Bank of New York, "Quarterly Trends for Consolidated US Banking Organizations" 4th quarter 2017.

# A Omitted Proofs

# A.1 Proof of Lemma 1

It is clear from the Bellman equations that a decrease in profitability decreases both MVE and FVE. Since  $\mathrm{BVE} = 1 - \Theta$  is not affected by profitability, it follows that both MVE/Be and FVE/Be decrease. To sign the net impact on MVG, recall the Bellman equation for FVE:

$$
\mathrm {F V E} = \frac {1}{1 + i} \hat {\mathbb {E}} \left[ D I V _ {E} ^ {\prime} + (1 + g ^ {\prime}) \mathrm {F V E} \right].
$$

Subtract this Bellman equation for FVE from the Bellman equation for MVE, (24).

$$
\begin{array}{l} \mathrm {M V E} - \mathrm {F V E} = \frac {1}{1 + i} \max  \left\{- D I V _ {E} ^ {\prime} - (1 + g ^ {\prime}) \mathrm {F V E}, (1 + g ^ {\prime}) (\mathrm {M V E} - \mathrm {F V E}) \right\} \\ = \frac {1 + \bar {g}}{1 + i} (\mathrm {M V E - F V E}) \\ + \frac {1}{1 + i} \max  \left\{- D I V _ {E} ^ {\prime} - (1 + g ^ {\prime}) \mathrm {F V E} - (1 + g ^ {\prime}) (\mathrm {M V E} - \mathrm {F V E}), 0 \right\}. \\ \end{array}
$$

Let  $\rho \equiv (\mathrm{MVE} - \mathrm{FVE}) / \mathrm{BVE}$  and recall that  $\mathrm{BVE} = 1 - \Theta$  and that  $\mathrm{FVE} = D\bar{I} V_{E} / (i - \bar{g})$ . Dividing through both sides by  $1 - \Theta$  and rearranging, we obtain

$$
\rho (i - \bar {g}) = \max  \left\{- \frac {D I V _ {E} ^ {\prime} + (1 + g ^ {\prime}) \frac {D I V _ {E}}{i - \bar {g}}}{1 - \Theta} - (1 + g ^ {\prime}) \rho , 0 \right\}. \tag {23}
$$

The left-hand side is strictly increasing in  $\rho$  and the right-hand side is weakly decreasing. It is clear that any parameter that decreases dividends in all states, besides growth and leverage, increases the right-hand side. This implies that following any change in parameter that decreases dividends in all states, besides growth and leverage,  $\rho$  must increase.

# A.2 Proof of Lemma 2

Recall the equation for MVE:

$$
\mathrm {M V E} = \frac {1}{1 + i} \hat {\mathbb {E}} \left[ \max  \left\{0, D I V _ {E} ^ {\prime} + (1 + g ^ {\prime}) \mathrm {M V E} \right\} \right]. \tag {24}
$$

Subtract  $(1 + \bar{g}) / (1 + i)\mathrm{MVE} / \mathrm{BVE}$  from both sides to obtain

$$
\left(i - \bar {g}\right) \mathrm {M V E} = \hat {\mathbb {E}} \left[ \max \left\{- (1 + g ^ {\prime}) \mathrm {M V E}, D I V _ {E} ^ {\prime} \right\} \right].
$$

The left-hand side is strictly increasing in MVE, is equal to zero when  $\mathrm{MVE} = 0$ , and goes to infinity as  $\mathrm{MVE} \to \infty$ . The right-hand side is decreasing and positive. Hence, there exists a unique solution.

By definition, an increase in risk taking keeps  $\bar{g}$  the same, so it leaves the left-hand side the same. It is easy to see that it increases the right-hand side. Indeed, rewrite the right-hand side as

$$
\begin{array}{l} - \frac {1 + \bar {g}}{1 + i} \mathrm {M V E} + \hat {\mathbb {E}} [ \max  \left\{0, D I V _ {E} ^ {\prime} + (1 + g ^ {\prime}) \mathrm {M V E} \right\} ] \\ = - \frac {1 + \bar {g}}{1 + i} \mathrm {M V E} + \hat {\mathbb {E}} \left[ \max  \left\{0, a + \sum_ {n = 1} ^ {N} k _ {n} \sigma_ {n} \varepsilon_ {n} ^ {\prime} \right\} \right] \\ \end{array}
$$

for some coefficients  $a$  and  $k_{n}$  since the dividend is an affine function of shocks and the shocks are affine functions of the  $\varepsilon$ 's. Now it is easy to see that, for any mean zero random variable, the function  $\sigma \mapsto \mathbb{E}\left[\max \{0,a + b\sigma \varepsilon \} \right]$  is increasing in  $\sigma$ , so the result follows.

# A.3 Proof of Lemma 3

Start from the right-hand side of (23). Let

$$
N (\Theta) \equiv D I V _ {E} ^ {\prime} + (1 + g ^ {\prime}) \frac {\overline {{D I V}} _ {E}}{i - \bar {g}}.
$$

It is clear from the expression of  $DIV_{E}^{\prime}$  that  $N(\Theta)$  is decreasing in  $\Theta$  and that  $N(\Theta) < 0$  whenever the right-hand side of the Bellman equation (23) is positive. Therefore:

$$
\frac {\partial}{\partial \Theta} \left(\frac {N (\Theta)}{1 - \Theta}\right) = - \frac {\partial N (\Theta) / \partial \Theta}{1 - \Theta} - \frac {N (\Theta)}{(1 - \Theta) ^ {2}} > 0
$$

whenever the right-hand side of the Bellman equation (23) is positive. This implies that a decrease in  $\Theta$  decreases  $\rho$ .

# A.4 Proof of Lemma 4

We have

$$
\begin{array}{l} D I V _ {E} ^ {\prime} + (1 + g ^ {\prime}) \mathrm {M V E} = D I V _ {L} ^ {\prime} - \Theta_ {D} D I V _ {D} ^ {\prime} - (1 + i) \Theta_ {B} + v _ {B} (1 + g ^ {\prime}) \Theta_ {B} \\ = c _ {L} + \mu_ {L} ^ {\prime} - (1 + \phi_ {L}) \left(\mu_ {L} ^ {\prime} + \delta_ {L} ^ {\prime} + g ^ {\prime}\right) \\ - c _ {D} - \mu_ {D} ^ {\prime} + \left(1 - \phi_ {D}\right) \left(\mu_ {D} ^ {\prime} + g ^ {\prime}\right) \\ - (1 + i) \Theta_ {B} + v _ {B} \left(1 + g ^ {\prime}\right) \Theta_ {B} + \left(1 + g ^ {\prime}\right) \mathrm {M V E}. \\ \end{array}
$$

Clearly, the partial derivative with respect to  $\delta_L^{\prime}$  is strictly negative, the partial derivative with respect to  $\mu_L^\prime$  is strictly negative if  $\phi_L > 0$ , and the partial derivative with respect to  $\phi_{D}$  is strictly negative if  $\phi_D > 0$ .

The partial derivative with respect to  $g'$  is equal to

$$
- (1 + \phi_ {L}) + \Theta_ {D} (1 - \phi_ {D}) + v _ {B} \Theta_ {B} + \mathrm {M V E}.
$$

Now use that  $\mathrm{MVE} \geq \mathrm{FVE} = \mathrm{FVL} - \Theta_{D}\mathrm{FVD} - \Theta_{B}v_{B}$  to obtain that the partial derivative with respect to  $g'$  is greater than

$$
\mathrm {F V L} - \left(1 + \phi_ {L}\right) + \Theta_ {D} \left(1 - \phi_ {D} - \mathrm {F V D}\right) \geq 0,
$$

since  $\mathrm{FVL} \geq v_L \geq 1 + \phi_L$ , and  $\mathrm{FVD} \leq v_D \leq 1 - \phi_D$ . Hence, the partial derivative is positive. Clearly, the partial derivative is strictly positive if  $\mathrm{MVE} > \mathrm{FVE}$ ,  $v_L >$

$$
1 + \phi_ {L}, \text {o r} v _ {D} <   1 - \phi_ {D}.
$$

# B Frequently Asked Questions

Here we address several questions that have been asked about our modeling and measurement of the fair value of banks and of the value of government guarantees for banks. These questions are as follows.

(i) In our measurement of the franchise value of banks, we have focused on measuring the gap between the fair value and book value of banks' loans and deposits. Would consideration of the gap between the fair value and book value of the other assets and liabilities on banks' balance sheets have a substantial impact on our measurement of banks' franchise value?  
(ii) In our measurement of the franchise value of banks, we have assumed that bank equity does not derive value from banks' non-interest income other than service charges on deposits. Non-interest income has grown considerably as a portion of banks' operating income over the past several decades. Would consideration of the contribution of non-interest income to dividends to bank equity substantially affect our measurement of bank franchise value?  
(iii) In our model of the value of government guarantees for stylized banks, we have focused on aggregate credit risk and abstracted from the role of interest rate risk. How would consideration of interest rate risk affect our measurement of the value of government guarantees?  
(iv) In our model of the value of government guarantees for banks, we have assumed that banks' opportunity to grow their balance sheets contributes to the value of these guarantees. What justification do we have for this assumption? Why is it that competition between banks does not eliminate the value of this growth opportunity?

(v) In our valuation model for banks, we use a discrete time model and consider each time period to be one year. Hence, we have implicitly assumed that banks are required to meet capital standards only once per year (at the beginning of each time period) and that the risks to bank assets and liabilities over a one-year horizon is the relevant horizon for measuring bank risks. How should one interpret this assumption? And what impact would it have to use a longer or shorter time period in our analysis?  
(vi) How do results from our model of the value of government guarantees compare to other estimates in the literature?

We address each of these questions in the subsections below.

# B.1 A Full Accounting for Fair Value of the Balance Sheet

In our measurement of the franchise value of banks, we have focused on measuring the gap between the fair value and book value of banks' loans and deposits. Would consideration of the gap between the fair value and book value of the other assets and liabilities on banks' balance sheets have a substantial impact on our measurement of banks' franchise value?

Based on work by Nissim and Penman (2007) and Calomiris and Nissim (2014), we argue that the answer to this question is no.

As described by Calomiris and Nissim (2014), banks have been required to report their own estimates of the fair value of their financial assets and liabilities in the footnotes to their annual reports for several decades now. Specifically, these authors report that "the measurement of the disclosed fair value of equity is made possible by an accounting change in 1992. Since 1992 on an annual basis, and since Q2:2009 on a quarterly basis, companies are required to disclose the estimated fair value of their financial assets and liabilities as of the balance sheet date. These disclosures are quite comprehensive. They include essentially all loans, securities, debts payable, time deposits, derivatives, and most other financial instruments." In Figure 2 of their paper, they plot the mean and median of the ratio of the disclosed fair value to

disclosed book value of equity for the bank holding companies in their sample from the end of 2000 through mid-2013. As is evident in this figure, the ratio of disclosed fair value to disclosed book value of equity is very stable over time and very close to 1. These results indicate that banks' estimates of the fair value of items on their balance sheets are very close to the book value of these items.

Note that these disclosed estimates of the fair value of bank assets and liabilities do not include estimates of the fair value of deposits with no defined maturity (demand deposits). This is why we have focused on estimating the ratio of the fair value to book value of these deposits using alternative data from the Office of Thrift Supervision Portfolio Value Model and from estimates of Core Deposit Intangibles from bank transactions.

Nissim and Penman (2007) provide a comprehensive discussion of the gap between the fair and book values of all of the items on banks' balance sheets. Using data from before the crisis, they report, "On average,  $36\%$  of banks' reported assets (cash and balances due, federal funds sold, securities purchased under resell agreements, available-for-sale securities, and trading assets) and  $16\%$  of their liabilities (federal funds purchased, securities sold under repurchase agreements, and trading liabilities) were reported on the balance sheet at or close to fair value. Another  $52\%$  of assets (loans, held-to-maturity securities, and other financial assets) and  $34\%$  of liabilities (time deposits and debt) were subject to Statement of Financial Accounting Standard (SFAS) 107 and SFAS 115 fair value disclosure requirements. Thus, for approximately  $88\%$  of BHCs' reported assets and  $50\%$  of their liabilities, fair value estimates were generally available during the sample period." They further conclude that the difference between the fair and book values of existing assets is likely of "secondary importance."

# B.2 Non-interest Income and Bank Value

In our measurement of the franchise value of banks, we have assumed that bank equity does not derive significant value from banks' non-interest income other than

service charges on deposits. $^{40}$  Non-interest income has grown considerably as a portion of banks' operating income over the past several decades. This has been especially true for the largest banks. Here we consider the question of whether the contribution of non-interest income to dividends to bank equity substantially affects our measurement of bank franchise value.

On the basis of cross-sectional data on overall bank accounting profitability and bank equity valuations, we argue that it is unlikely that bank equity derives significant value from activities that generate non-interest income other than service charges on deposits. This is because, while non-interest income has become relatively more important for larger banks, there does not appear to be significant systematic variation across banks of different size in accounting profitability and equity valuation.

The main categories of bank holding company non-interest income are as follows: service charges on deposits; income from fiduciary activities; fees and commissions from securities brokerage; investment banking, advisory, and underwriting fees and commissions; fees and commissions from annuity sales; underwriting income from insurance and reinsurance activities; income from other insurance activities; venture capital revenue; net servicing fees; net securitization income; and trading revenue. The main sources of non-interest expense are expenses for salaries and employee benefits, premises, and intermediate inputs.

Copeland (2012) analyzes the evolution of non-interest income for bank holding companies of different sizes over the period 1994-2010. He finds that the most dramatic growth of non-traditional sources of non-interest income has occurred for the largest bank holding companies, while smaller bank holding companies have not seen much of a change in the size and sources of their non-interest income. In Figure 11 we show the change in importance of non-interest income in bank net operating revenue by bank size over the period 1991 to the present as reported in the Federal Reserve Bank of New York's "Quarterly Trends for Consolidated US Banking Organizations." These data clearly show that non-interest income is more important for

larger bank holding companies and that this has been increasingly true over time.

We argue that bank equity does not derive significant value from banks' non-interest income other than service charges on deposits based on two cross-sectional observations regarding bank accounting overall profitability and equity valuations. Each of these observations in cross-sectional data indicate that larger banks are neither more profitable nor more highly valued than medium-sized banks. Thus, it appears that the advantage large banks have in generating non-interest income does not translate into an advantage in terms of overall profitability or valuation.

First, we consider data from the Federal Reserve Bank of New York's "Quarterly Trends for Consolidated US Banking Organizations" report on bank holding companies' accounting return on equity by bank size over the time period 1991 to the present. As shown in Figure 12, over the time period 1991 to the present, banks' accounting return on equity does not show significant variation across bank size categories. In particular, the time series variation in this measure of accounting profitability is substantially larger than the cross-sectional variation at a point in time.[41]

Next we consider data on the valuation of banks by bank size. Figure 3 shows measures of the ratio of the market-to-book value of equity by bank size for the period 1991 to the present. Here again, we see that the variation in the ratio of the market-to-book value of equity over time is substantially larger than the variation of this ratio in the cross-section at a point in time. Minton, Stulz, and Taboada (2017) conduct a more thorough study of the relationship between bank size and bank valuation and arrive at the conclusion that there is strong cross-sectional evidence that the valuation of large banks falls with size (as is evident in our Figure 3). Moreover, they find that banks with more trading assets are worth less than banks with fewer trading assets.

41The large decline in bank return on equity in the final quarter of 2017 is largely due to the impact of the recent corporate tax cut on the valuation of banks' tax assets.

# B.3 Interest Rate Risk

In our model of the value of government guarantees, we have assumed that the risks that banks face are independent and identically distributed (i.i.d.) over time. With this stark modeling assumption, we can derive very simple formulas for the value of government guarantees based on a few parameters. We see this simplicity as the main advantage of our modeling framework.

One cost of this assumption is that we are unable to account explicitly for interest rate risk. This is because our assumption forces us to keep the risk-free interest rate  $i$  constant over time. Hence, the term structure of interest rates in our model is always constant at all maturities. Clearly, the interest rate risk associated with banks' maturity transformation and interest rate derivatives is an important risk to bank asset values. What is the impact of this omission of interest rate risk on our valuation exercise?

We conjecture that one could capture the impact of interest rate risk and other risks on the value of government guarantees in our model in a reduced form manner as follows. As shown in equation (16), in our model, the market value of bank equity is determined by a handful of parameters. These are the risk free rate  $i$ , the expected growth rate of the bank conditional on not defaulting  $g(n)$ , the risk-neutral probability of bank failure  $1 - q(n)$ , and the bank's return on equity conditional on not defaulting  $ROE(n)$ . To derive these parameters from an underlying model, one must choose a state space  $S$  and associated risk-neutral probabilities  $q(s)$  and then directly specify the excess returns on banks' portfolio of assets  $R(s) - i$  together with the growth rates of the bank's portfolio  $g(s)$ . These choices imply bank dividends to equity  $DIV_{E}(s)$  as a function of the state. One would then solve equation (6) for the default decision. As shown in equations (16) and (17), the valuation of bank equity and government guarantees then reduces to the same two-state version of our model studied in sections 5 and 6.

To summarize, the reduced-form risks that determine bank default and valuation in our model are the risks to bank dividends  $DIV_{E}(s)$  and to the growth of the bank  $g(s)$ . As discussed in Lemma 2, the model can accommodate a wide array of

underlying fundamental risks. As discussed in section 5, we can also model these fundamental risks directly in terms of realized excess returns on the banks' portfolio of assets.

Begenau, Piazzesi, and Schneider (2015) is an important study of the joint distribution of interest rate and credit risk faced by banks. Future work should incorporate results from their model of the returns banks obtain from exposure to these risks to improve the computation of the implied value of government guarantees.

# B.4 Government guarantees and the value of growing a bank

In our model of the value of government guarantees for banks, we have assumed that banks' opportunity to grow their balance sheets contributes to the value of these guarantees. That is, we assume that (i) the government guarantee is a regulatory rent, (ii) the value of which accrues to the owners of bank liabilities (insured debt and equity), and that (iii) bankers can expand the value of this rent by growing their bank.[42] What justification can we provide for these assumptions?

It is widely observed that the federal safety net for banking is a regulatory rent for this sector. The Federal Reserve System, in its role as primary regulator of bank holding companies, recognizes the nature of the apparent profit opportunity of setting up or expanding a bank holding company to take advantage of government

42Note that our assumption that growth of the bank contributes to the value of government guarantees only applies to growth achieved through organic growth via new injections of bank equity. The opportunity to grow an individual bank through a strategy of acquisitions would not contribute to the value of the acquiring bank in our model because the acquiring bank would have to pay the shareholders of the acquired bank for the value of expanded government guarantees.

guarantees and imposes restrictions on bank holding companies as a result.[43,44]

Our second assumption is perhaps more controversial. Why do the owners of incumbent banks capture the value of these rents? Why doesn't competition for these rents dissipate these rents?[45]

We conjecture that the answer to this question is based on the observation that entry into banking and growth of incumbent banks are constricted through a somewhat opaque exercise of regulatory discretion by bank supervisors. This discretion is based on both the Bank Holding Company Act and its subsequent modifications<sup>46</sup> and through the direct supervision of bank subsidiaries.<sup>47</sup> Thus, it is reasonable to expect that the owners of an incumbent bank with permission to issue government backed liabilities would enjoy a quasi-rent from government guarantees earned as compensation for past expenditures on rent seeking to gain permission to establish an incumbent bank under the federal safety net. This is one classic definition of the charter value of a bank.

Our third assumption is the most controversial. Why would owners of incum-

43 In a policy statement regarding the obligations of bank holding companies to insured bank subsidiaries, the Federal Reserve states that "the important public policy interest in the support provided by a bank holding company to its subsidiary banks is based upon the fact that, in acquiring a commercial bank, a bank holding company derives certain benefits at the corporate level that result, in part, from the ownership of an institution that can issue federally insured deposits and has access to Federal Reserve credit. The existence of the federal safety net reflects important governmental concerns regarding the critical fiduciary responsibilities of depository institutions as custodians of depositors' funds and their strategic role within our economy as operators of the payments system and impartial providers of credit. Thus, in seeking the advantages flowing from the ownership of a commercial bank, bank holding companies have an obligation to serve as sources of strength and support to their subsidiary banks." See Federal Deposit Insurance Corporation, "FDIC Law, Regulation, Related Acts: 7500-FRB Regulations: Policy Statement of the Board of Governors of the Federal Reserve System for Assessing the Financial Factors in the Formation of Small One-Bank Holding Companies Pursuant to the Bank Holding Company Act," https://www.fdic.gov/regulations/laws/rules/7500-5000.html

44See also Kane (2014).  
45This is the classic question raised in Tullock (1980) regarding the value of regulatory rents.  
46See Wilmarth Jr. (2002) and Omarova and Tahyar (2012) for a discussion of the evolution of this act and its impact on the growth of banking.  
47A bank that is given a low CAMEL rating (supervisory rating system to classify a bank's overall condition) in an examination by the FDIC or other bank regulator will face direct restrictions on its further growth under the regulatory framework of the FDICIA's policies for prompt corrective action.

bent banks in the early 1990s capture value from the opportunity to grow their bank rapidly over the next two decades under a vastly expanded federal safety net? Why did increased competition following deregulation fail to dissipate the rents associated with this growth opportunity? We conjecture that a full answer to this question would be based on the observation that most of these rents from this growth opportunity were offered to and captured by incumbents who grew dramatically larger to take advantage of the specific benefits offered to banks that could achieve the scale needed to be labeled "too big to fail."48 Thus, we conjecture that the resolution of the Tullock paradox49 in this case would be based on the argument that in the transition from a fragmented, highly constrained banking sector in the 1970s to the large sector now dominated by a few very large banks, owners of larger incumbent banks did indeed capture most of the value of the growth opportunity to expand the scope of the federal safety net for finance due to increasing returns to scale in rent seeking in finance.

Based on these observations, we interpret the assumption that the growth of banking  $g(s)$  is an exogenous parameter in our model as a constraint imposed by regulation. Our assumption that owners of incumbent banks do not need to incur non-interest lobbying expenses to gain permission to expand their bank<sup>50</sup> is based on a conjecture that these rent-seeking expenses were quite small relative to the value of the expanded government guarantee obtained. This is a conjecture that should be evaluated more closely in future work.

48There is a large literature on the changes in the regulatory environment that increased the incentives for banks to take risks and to grow to become too big to fail. See, for example, Boyd and Gertler (1994), Berger et al. (1995), Feldman and Rolnick (1998), Wilmarth Jr. (2002), Stern and Feldman (2004), Mishkin (2006), and Avraham, Selvaggi, and Vickery (2012).  
49This is the apparent paradox pointed to in Tullock (1980) of the low costs of rent seeking relative to the gains from rent seeking.  
$^{50}$ Such expenses could be modeled in a manner parallel to the non-interest expenses  $\phi_L$  and  $\phi_D$  we assumed that banks incur to grow deposits and loans.

# B.5 The impact of the length of the time period on valuation

In our valuation model for banks, we use a discrete time model and consider each time period to be one year. Hence, we have implicitly assumed that banks are required to meet capital standards only once per year (at the beginning of each time period) and that the risks to bank assets and liabilities over a one-year horizon is the relevant horizon for measuring bank risks. We choose this time period based on the observation that larger banks are required to undergo a full examination annually. This convention of an annual review of bank balance sheets has continued post crisis with the implementation of annual stress tests and approval of capital plans for larger banks.

What is the impact of this choice of time period on our valuation exercise? The answer to this question depends on the nature of the risks that banks face.

For example, if one assumes that the value of bank assets follows a diffusion, as is typically assumed in a Mertonor Leland-style structural credit risk model, then it is essentially impossible for a bank with a positive equity position to fail over a short time horizon.[51] This implies that, in this case, if regulators were to examine banks frequently enough and force them to meet capital standards based on a market-to-market accounting of their balance sheet often enough, then the failure of a bank would occur with vanishing probability.[52]

In contrast, if one assumes that the value of bank assets is subject to the risk of a discrete jump downward large enough to trigger default that occurs with some Poisson rate over time (often called jump to default risk), then more frequent examination of the bank, in and of itself, does not significantly reduce the probability of bank failure over a given time horizon. The only option for reducing the risk of bank failure in this case is to raise the capital standard for the bank so that a downward jump in its asset value, should it occur, no longer triggers failure of the bank. In interpreting our model, we opt for this second approach to modeling the risk within

banks.

There is a large literature in finance, both in option pricing and structural credit risk modeling, that indicates that the risk of discrete jumps in asset values is significant and important in understanding the pricing of options and credit risk.[53] Certainly, during the crisis of 2007-2009, the transition of the financial system from a mildly distressed state in the late summer of 2008 to a severely distressed state by late September of 2008 was extremely rapid. Likewise, the large negative realized excess return on corporate credit portfolios in 2008 that we use in our measurement exercise was concentrated in the last few months of 2008.

Based on these observations that the risk of jump to default is likely to be an important driver of the risk of bank failure, we conjecture that the choice of the length of a time period in our model does not have a substantial impact on our results.

# B.6 Comparison to other estimates in the literature

Our finding of large capitalized values of government guarantees in the period before 2008 follows a large literature on the impact of government guarantees on the value of bank debt and equity. Li, Qu, and Zhang (2011), Office (2014) and Acharya, Anginer, and Warburton (2016) are recent studies of the impact of government guarantees on the pricing of bank bonds. Schweikhard and Tsesmelidakis (2012) study the impact of government guarantees on bank CDS spreads relative to equity based estimates of banks' probability of default. Gandhi and Lustig (2015) and Gandhi, Lustig, and Plazzi (2017) study the impact of government guarantees on the pricing of bank equity. Kelly, Lustig, and Van Nieuwerburgh (2016) study the impact of government guarantees on the pricing of options on bank equity. This paper highlights the impact of guarantees on option pricing due to guarantees against an aggregate or systemic shock to the financial sector as opposed to an idiosyncratic shock to an individual bank. All of this literature finds a significant impact of government guarantees on the pricing of bank debt and equity, particularly for larger banks.

Several studies have focused on quantifying the value of these government guarantees to owners of bank debt and equity. Here we focus on comparing our results to two of these studies in particular. The first of these is presented in Ruud (2007). This paper presents an estimate of the fair value of government guarantees to banks based on methodology used by Lucas and McDonald (2006) to measure the value of government support for Fannie Mae and Freddie Mac. The second of these is presented in Merton and Tsesmelidakis (2013). This paper uses results from Schweikhard and Tsesmelidakis (2012) to derive an estimate of the ex-ante and ex-post values of government support during the recent financial crisis.

Ruud (2007) applies a Merton-style structural credit risk model to assess the value of deposit insurance for 231 publicly traded banks, using data from 2004 to estimate the inputs of equity volatility and leverage needed for the model. She extrapolates results from these calculations to find a fair value of expected payouts from the FDIC (net of the recovery value from selling what remains of the failed bank) over a five-year horizon of only $4 billion.

Merton and Tsesmelidakis (2013) is a detailed study of the pricing of bank bonds for 74 large financial firms. They use the Merton-type model of bond spreads in Schweikhard and Tsesmelidakis (2012) calibrated to match the pricing of bonds of non-financial firms to measure the impact of government guarantees on the pricing of bank bonds over the period 2007-2010. They calculate that these guarantees amounted to a wealth transfer of  $365 billion over this time period. They refer to this number as a valuation of implicit guarantees as it does not include the value of explicit deposit insurance. They divide this number into two components. The first is the benefit obtained by shareholders from being able to issue bonds at a higher price. They value this component at$ 129 billion. The remainder is the amount gained by incumbent bondholders ex-post when the negative shock of the financial crisis occurs. The ex-ante figure of $129 billion is conceptually closer to the value of government guarantees that we compute.

We find a larger value of government guarantees for the period 1996-2008 than is found in these other two papers. There are two significant methodological differences between our model for estimating the value of government guarantees and the models

presented in these other papers that account for the differences in the estimates obtained in our paper and in these other papers.

First, from equation (12), we value government guarantees as a growing perpetuity. That is, we take into account that when a regulator sells what remains of a failed bank to new owners, the prospect that these new owners will also benefit from continued government guarantees affects the sale price and thus the recovery value of a failed bank (as noted in equation 8 in our model). In contrast, the papers by Ruud (2007) and Merton and Tsesmelidakis (2013) measure the value of guarantees over a fixed time horizon and consider the recovery value of a failed bank to be a fixed parameter that is not included in the measure of government guarantees. To facilitate a comparison of our measure of the value of government guarantees as a growing perpetuity to measures of the value of these guarantees over a fixed horizon, one can use equation (12) to convert our estimates of the value of government guarantees to any finite time horizon of  $T$  years using a standard annuity formula

$$
\mathrm {M V G} ^ {T} = \left[ 1 - \left(\frac {1 + \bar {g}}{1 + i}\right) ^ {T} \right] \mathrm {M V G}.
$$

For example, to convert the ex-ante value of government guarantees obtained from our model to a value over a horizon of five-years as in Ruud (2007) with a risk-free interest rate of  $i = 0.05$  and expected growth of the bank balance sheet of  $\bar{g} = 0.025$ , we have that the value of government guarantees over a five-year horizon is  $11.4\%$  of the estimate obtained in our paper for the value of these guarantees over an infinite horizon.

Note that this adjustment for the time horizon is sufficient to reconcile our estimate of the value of government guarantees with that obtained in Merton and Tsesmelidakis (2013). Specifically, if one converts their estimate of the benefit to bank shareholders of  $129 billion from issuing bonds at a premium over a four year period to an infinite horizon, one would obtain an estimate of the value of government guarantees in the neighborhood of$ 1 trillion.

The second methodological difference between our study and these other studies

is the approach we take to calibrating the parameters of the measurement model. As shown in equation (19), in applying our model in section 6, we measure the value of government guarantees using a measure of the fair value of bank assets and observed bank accounting profitability. Our measure of the risk that banks face is consistent with a small probability of a large negative shock to the bank's balance sheet.[54] In contrast, the approach followed by Ruud (2007) and Merton and Tsesmelidakis (2013) is based on the structural model of Merton as applied to banks in Merton (1977). In these models, the risk in bank assets is measured using observations on the volatility of bank equity and measures of bank market leverage.

Note that if one assumes a model in which risk to bank dividends and growth is i.i.d. and in which banks reset balance sheets to conform with regulatory limits on leverage once a year, as we have done, then the valuation formulas for bank equity and the value of government guarantees are given as in equations (17) and (19) conditional on a solution for the default decision from equation (15) regardless of the approach used for measuring the risks to the bank's return on equity and to the growth of the bank's balance sheet.[55] Thus, the other principal difference in methodology that accounts for the difference between our estimate of the value of government guarantees and the estimates presented in Ruud (2007) and Merton and Tsesmelidakis (2013) is that our model assumes a large downside tail risk for banks.

$^{54}$ Lucas, Klaassen, Spreij, and Straetmans (2001) and Nagel and Purnanandam (2017) provide theoretical arguments that returns on bank portfolios should be expected to have a thick tail of extreme negative returns. Recall that our measure of the value of government guarantees for stylized banks in section 5 is a proof of concept based on direct observation of the downside risk in portfolios of corporate bonds.  
[55] As discussed in Atkeson, Eisfeldt, and Will (2017), the distribution of equity volatility across firms appears to experience regime shifts that have a dramatic impact on estimates of the risk in firm or bank assets derived from a Merton-type structural credit risk model. See, for example, estimates of the probabilities of default of European banks based on this method in Flannery and Giacomini (2015). These regime shifts suggest that it may be fruitful to move beyond an i.i.d. model of the risks facing banks to include shifts in regimes. See d'Avernas (2017) for a regime-switching model of equity volatility and bond spreads for non-financial firms in the United States.

# References

Viral V. Acharya, Deniz Anginer, and A. Joseph Warburton. The end of market discipline? Investor expectations of implicit government guarantees. Unpublished paper, May 2016.  
Anat Admati and Martin Hellwig. The Banker's New Clothes: What's Wrong with Banking and What to Do about it. Princeton University Press, Princeton, NJ, 2013.  
Anat R. Admati, Peter M. DeMarzo, Martin Hellwig, and Paul Pfleiderer. Fallacies, irrelevant facts, and myths in the discussion of capital regulation: Why bank equity is not expensive. Working Paper 2065, Stanford Graduate School of Business, October 2013.  
Leonidas Akritidis. Financial intermediation services indirectly measured (FISM) in the UK revisited. Technical report, UK Office For National Statistics, April 24, 2017.  
Attakrit Asvanunt and Scott Richardson. The credit risk premium. Unpublished paper, June 2016.  
Andrew G. Atkeson, Andrea L. Eisfeldt, and Pierre-Olivier Will. Measuring the financial soundness of US firms, 1926-2012. Research in Economics, 71(3):613-635, September 2017.  
Dafna Avraham, Patricia Selvaggi, and James Vickery. A structural view of U.S. bank holding companies. *FRBNY Economic Policy Review*, pages 65–81, July 2012.  
Susanto Basu, Robert Inklaar, and J. Christina Wang. The value of risk: Measuring the service output of U.S. commercial banks. *Economic Inquiry*, 49(1):226-245, January 2011.

Juliane Begenau and Erik Stafford. Do banks have an edge? Working paper 18-060, Harvard Business School, January 2018.  
Juliane Begenau, Monika Piazzesi, and Martin Schneider. Banks' risk exposures. working paper 21334, NBER, July 2015.  
Juliane Begenau, Saki Bigio, and Jeremy Majerovitz. Data lessons on bank behavior. Unpublished paper, January 2018.  
Allen N. Berger, Anil K. Kashyap, and Joseph M. Scalise. The transformation of the U.S. banking industry: What a long strange trip it's been. *Brookings Papers on Economic Activity*, 1995, (2):55-201, 1995.  
Antje Berndt, Rohan Douglas, Darrell Duffie, and Mark Ferguson. Corporate credit risk premia. Unpublished paper, December 2017.  
Patricia Boyallian and Pablo Ruiz-Verdu. Leverage, CEO risk-taking incentives, and bank failure during the 2007-10 financial crisis. Review of Finance, pages 1-43, November 2017.  
John H. Boyd and Mark Gertler. The role of large banks in the recent U.S. banking crisis. *Federal Reserve Bank of Minneapolis Quarterly Review*, 18(1):2-21, Winter 1994.  
Mark Broadie, Mikhail Chernov, and Michael Johannes. Model mispecification and risk premia: Evidence from futures options. Journal of Finance, 62(3):1453-1490, June 2007.  
Charles W. Calomiris and Doron Nissim. Crisis-related shifts in the market valuation of banking activities. Journal of Financial intermediation, 23(3):400-435, July 2014.  
Marc Chesney, Jacob Stromberg, and Alexander F. Wagner. Risk-taking incentives and losses in the financial crisis. Unpublished paper, February 10 2012.

Kyriakos T. Chousakos and Gary B. Gorton. Bank health post-crisis. Working Paper 23167, NBER, February 2017.  
Adam Copeland. Evolution and heterogeneity among larger bank holding companies: 1994 to 2010. *FRBNY Economic Policy Review*, pages 83-93, July 2012.  
Adrien d'Avernas. Disentangling credit spreads and equity volatility. Unpublished paper, January 2017.  
Madeline G. Davis. Core deposit intangible asset values and deposit premiums update, November 2017.  
URL https://mercercapital.com/financialreportingblog/core-deposit-intangible-asset-values-deposit-premiums-update/.  
Jean Determine. Fund transfer pricing for deposits and loans, foundation and advanced. Working paper 2012-55-FIN, Instead, May 24 2012.  
Sebastian Di Tella and Pablo Kurlat. Why are banks exposed to monetary policy? Unpublished paper, November 2017.  
Itamar Drechsler, Alexi Savov, and Philipp Schnabl. The deposits channel of monetary policy. Quarterly Journal of Economics, 132(4):1819-1876, November 2017a.  
Itamar Drechsler, Alexi Savov, and Philipp Schnabl. Banking on deposits: Maturity transformation without interest rate risk. Unpublished paper, March 2017b.  
Mark Egan, Stefan Lewellen, and Adi Sunderam. The cross section of bank value. Working Paper 23291, NBER, March 2017.  
William B. English, Skander J. Van den Heuvel, and Egon Zakrajsek. Interest rate risk and bank equity valuations. Finance and Economics Discussion Series 2012-26, Board of Governors of the Federal Reserve System, May 2012.  
Ron J. Feldman and Arthur J. Rolnick. Fixing FDICIA: A plan to fix the too big to fail problem. Annual report essay, Federal Reserve Bank of Minneapolis, January 1998.

Aaron Fine and Frank Rohde. Deposits: A return to value? December 2013.  
Mark J. Flannery and Emanuela Giacomini. Maintaining adequate bank capital: An empirical analysis of the supervision of European banks. Journal of Banking and Finance, 59:236-249, October 2015.  
Frederick T. Furlong and Simon H. Kwan. Sources of bank charter value. Technical report, Federal Reserve Bank of San Francisco, September 2006.  
Priyank Gandhi and Hanno Lustig. Size anomalies in U.S. bank stock returns. Journal of Finance, 70(2):733-768, April 2015.  
Priyank Gandhi, Hanno N. Lustig, and Alberto Plazzi. Equity is cheap for large financial institutions. Unpublished paper, July 2017.  
Kay Giesecke, Francis A. Longstaff, Stephen Schaefer, and Ilya Strebulaev. Corporate bond default risk: A 150-year perspective. Journal of Financial Economics, 102 (2):233-250, November 2011.  
Matthieu Gomez, Augustin Landier, David Alexandre Sraer, and David Thesmar. Banks' exposure to interest rate risk and the transmission of monetary policy. Unpublished paper, April 2016.  
Myron J. Gordon. The Investment, Financing, and Valuation of the Corporation. R. D. Irwin, Homewood, IL, 1962.  
Joel Grant. Liquidity transfer pricing: A guide to better practice. Financial Stability Institute Occasional Paper 10, Bank for International Settlements, December 2011.  
Andrew Haldane, Simon Brennan, and Vasileios Madouros. What is the contribution of the financial sector: Miracle or mirage? In *The Future of Finance: The LSE Report*, chapter 2, pages 87-120. London School of Economics and Political Science, 2010.

Samuel G. Hanson, Anil K. Kashyap, and Jeremy C. Stein. A macroprudential approach to financial regulation. Journal of Economic Perspectives, 25(1):3-28, Winter 2011.  
Kyle K. Hood. Measuring the services of commercial banks in the national income and product accounts: Changes in concepts and methods in the 2013 comprehensive revision. Survey of Current Business, 93:8-19, February 2013.  
David E. Hutchison and George G. Pennacchi. Measuring rents and interest rate risk in imperfect financial markets: The case of retail bank deposits. Journal of Financial and Quantitative Analysis, 31(3):399-417, September 1996.  
Tibor Janosi, Robert A. Jarrow, and Ferdinando Zullo. An empirical analysis of the Jarrow-van-Deventer model for valuing non-maturity demand deposits. Journal of Derivatives, 7(1):8-31, Fall 1999.  
Robert Jarrow and Donald van Deventer. The arbitrage-free valuation and hedging of demand deposits and credit card loans. Journal of Banking and Finance, 22: 249-272, 1998.  
Edward J. Kane. Shadow banking: Theft by safety net. Yale Journal on Regulation, 31(3):773-807, 2014.  
Michael C. Keeley. Deposit insurance, risk, and market power in banking. *American Economic Review*, 80(5):1183–1200, December 1990.  
Bryan Kelly, Hanno Lustig, and Stijn Van Nieuwerburgh. Too-systemic-to-fail: What options markets imply about sector-wide government guarantees. *American Economic Review*, 106(6):1278-1319, June 2016.  
Samuel Knott, Peter Richardson, Katie Rismanchi, and Kallol Sen. Understanding the fair value of banks' loans. Financial Stability Paper 31, Bank of England, November 2014.

David F. Larcker, Gaizka Ormazabal, Brian Tayan, and Daniel J. Taylor. Follow the money: Compensation, risk, and the financial crisis. Research paper, Stanford Graduate School of Business, September 8, 2014.  
Zan Li, Shisheng Qu, and Jing Zhang. Quantifying the value of implicit government guarantees for large financial institutions. Technical report, Moody's Analytics, January 2011.  
André Lucas, Pieter Klaassen, Peter Spreij, and Stefan Straetmans. An analytic approach to the credit risk of large corporate bond and loan portfolios. Journal of Banking and Finance, 25(9):1635-1664, September 2001.  
Deborah Lucas and Robert McDonald. An options-based approach to evaluating the risk of Fannie Mae and Freddie Mac. Journal of Monetary Economics, 53(1): 155-176, January 2006.  
Deborah Lucas and Robert McDonald. Valuing government guarantees: Fannie and Freddie revisited. In Deborah Lucas, editor, Measuring and Managing Financial Risk, chapter 6, pages 131-154. University of Chicago Press, Chicago, IL, 2010.  
Jonathan R. Macey and Geoffrey P. Miller. Double liability of bank shareholders: History and implications. Faculty Scholarship Series 1642, Yale Law School, 1992.  
Ben Meiselman, Stefan Nagel, and Amiyatosh Purnanandam. Judging bank risk by the profits they report. Unpublished paper, February 2018.  
Robert C. Merton. An analytic derivation of the cost of deposit insurance and loan guarantees: An application of modern option pricing theory. Journal of Banking and Finance, 1(1):3-11, June 1977.  
Robert C. Merton and Zoe Tsesmelidakis. The value of implicit guarantees. March 2013. Unpublished paper.  
Merton H. Miller and Franco Modigliani. The cost of capital, corporation finance, and the theory of investment. American Economic Review, 48(3):261-297, June 1958.

Bernadette A. Minton, Ren M. Stulz, and Alvaro G. Taboada. Are larger banks valued more highly? Working Paper 23212, NBER, March 2017.  
Frederic S. Mishkin. How big a problem is too big to fail? a review of Gary Stern and Ron Feldman's "Too Big to Fail: The Hazards of Bank Bailouts". Journal of Economic Literature, 44(4):988-1004, December 2006.  
Moody's. Annual default study: Corporate default and recovery rates, 1920-2017. Technical report, Moody's Investors Service, February 2018.  
Stefan Nagel and Amiyatosh Purnanandam. Bank risk dynamics and distance to default. Unpublished paper, July 2017.  
Doron Nissim. Reliability of banks' fair value disclosure for loans. Review of Quantitative Finance and Accounting, 20(4):355-384, June 2003.  
Doron Nissim and Stephen Penman. Fair value accounting in the banking industry. Occasional paper series, CE-ASA, May 2007.  
James M. O'Brien. Estimating the value and interest rate risk of interest-bearing transactions deposits. November 2000. FEDS Working Paper 00-53.  
Government Accountability Office. Large bank holding companies: Expectations of government support. Technical Report 14-621, Government Accountability Office, July 2014.  
Risk Management Division Office of Thrift Supervision. Net portfolio value model. Technical report, Office of Thrift Supervision, March 2000.  
Saule T. Omarova and Margaret E. Tahyar. That which we call a bank: Revisiting the history of bank holding company regulations in the united states. Cornell Law Faculty Publications, (Paper 1012), 2012.  
Judy Ruud. The fair value of the federal deposit insurance guarantee. Working Paper 13, Congressional Budget Office, November 2007.

Natasha Sarin and Lawrence H. Summers. Have big banks gotten safer? Brookings Papers on Economic Activity, pages 15-16, 2016.  
Frederic A. Schweikhard and Zoe Tsesmelidakis. The impact of government interventions on cds and equity markets. Unpublished paper, 2012.  
Richard G. Sheehan. Valuing core deposits. Journal of Financial Services Research, 43(2):197-220, April 2013.  
Gary H. Stern and Ron J. Feldman. Too Big to Fail: The Hazards of Bank Bailouts. Washington, DC: Brookings Institution, 2004.  
John Tschirhart, James M. O'Brien, Michael Moise, and Emily Yang. Bank commercial loan fair value practices. (29), September 2007. FEDS Working Paper.  
Gordon Tullock. Efficient rent-seeking. In James M. Buchanan, Robert D. Tollison, and Gordon Tullock, editors, Toward a theory of the rent-seeking society, pages 97-112. College Station, TX: A&M University, 1980.  
J. Christina Wang, Susanto Basu, and John G. Fernald. A general equilibrium asset-pricing approach to the measurement of nominal and real bank output. Working Paper 14616, NBER, December 2008.  
Arthur E. Wilmarth Jr. The transformation of the u.s. financial services industry, 1975-2000: Competition, consolidation, and increased risks. University of Illinois Law Review, pages 215-476, February 2002.  
Robert J. Wyle and Yaakov Tsaig. Implementing high value funds transfer pricing systems. Technical report, Moody's Analytics, September 2011.  
Janet L. Yellen. Financial stability a decade after the onset of the crisis. Remarks at Jackson Hole Conference, August 2017.
---
aliases:
   - Mortgage-Backed Securities
   - MBS
   - Nyfed MBS Primer
primary_tags:
  - nonagency mortgage-backed securities
  - private-label mortgage-backed securities
  - credit risk analysis
  - loss-adjusted yield
  - mortgage securitization
secondary_tags:
  - principal return timing
  - loss severity modeling
  - voluntary prepayments
  - involuntary prepayments
  - transition matrices
  - tranche analysis
  - credit enhancement
  - capital structure analysis
  - coverage ratios
  - default rate projections
  - prepayment vectors
  - yield matrix analysis
parent_directory: MBS & Real Estate Finance
cssclasses: academia
title: Mortgage Backed Securities - Nyfed
---

NO. 1001 FEBRUARY 2022

# Mortgage-Backed Securities

Andreas Fuster | David Lucca | James Vickery

## Mortgage-Backed Securities

Andreas Fuster, David Lucca, and James Vickery

Federal Reserve Bank of New York Staff Reports, no. 1001

February 2022

JEL classification: G10, G12, G21

# Abstract

This paper reviews the mortgage-backed securities (MBS) market, with a particular emphasis on agency residential MBS in the United States. We discuss the institutional environment, security design, MBS risks and asset pricing, and the economic effects of mortgage securitization. We also assemble descriptive statistics about market size, growth, security characteristics, prepayment, and trading activity.

Throughout, we highlight insights from the expanding body of academic research on the MBS market and mortgage securitization.

Key words: mortgage finance, securitization, agency mortgage-backed securities, TBA, option-adjusted spreads, covered bonds

Lucca: Federal Reserve Bank of New York (email: david.lucca@ny.frb.org). Fuster: Ecole Polytechnique Fédérale de Lausanne, Swiss Finance Institute, and CEPR (email: andreas.fuster@epfl.ch). Vickery: Federal Reserve Bank of Philadelphia (email: james.vickery@phil.frb.org). This is a preliminary draft of a chapter to be published in the Research Handbook on Financial Markets, edited by Refet Gürkaynak and Jonathan Wright. The authors thank the editors, discussant Benson Durham, and Eric Horton, You Suk Kim, Haoyang Liu, Dean Parker, Shane Sherlund, and Andreas Strzodka for helpful comments and suggestions. Natalie Newton provided outstanding research assistance.

This paper presents preliminary findings and is being distributed to economists and other interested readers solely to stimulate discussion and elicit comments. The views expressed in this paper are those of the author(s) and do not necessarily reflect the position of the Federal Reserve Banks of New York and Philadelphia or the Federal Reserve System. Any errors or omissions are the responsibility of the author(s).

# 1 Introduction

The mortgage-backed securities (MBS) market emerged as a way to decouple mortgage lending from mortgage investing. Until the 1980s, nearly all US mortgages were held on balance sheet by financial intermediaries, predominately savings and loans. Securitization today allows these mortgages to be held and traded by investors all over the world, and the US MBS market is one of the largest and most liquid global fixed-income markets, with more than \$11 trillion of securities outstanding and nearly \$300 billion in average daily trading volume.<sup>1</sup> MBS and a related instrument, covered bonds, are also used for funding mortgages in many European countries as well as some other parts of the world.

This paper presents an overview of the MBS market, including the institutional environment, security design, MBS risks and asset pricing, and the economic effects of mortgage securitization. It also assembles descriptive statistics about the MBS market, including market size, growth, security characteristics, prepayment, trading activity and yield spreads. We particularly focus on the large agency residential MBS market in the United States, but also discuss other types of MBS both in the US and around the world. We also consider the role of the Federal Reserve through its quantitative easing program.

Throughout, we highlight insights from the growing literature on MBS and mortgage securitization, a body of research catalyzed by the role of MBS markets in the 2008 financial crisis. We also highlight topics for future research. This paper can only scratch the surface of such a complex topic, however, and for other surveys and further information, we refer the reader to Hayre (2001), McConnell and Buser (2011), Green (2013), Davidson and Levin (2014), Fabozzi (2016) and Kim et al. (2022).

# 2 The MBS universe

## 2.1 MBS market segments and their evolution over time

Mortgage-backed securities are bonds with cash flows tied to the principal and interest payments on a pool of underlying mortgages. Mortgage securitization has a long history (e.g., see Goetzmann and Newman, 2010), but the birth of the modern US MBS market is typically dated to the issuance of the first agency MBS pool by Ginnie Mae in 1970.

Figure 1 documents the enormous growth in the MBS market over the past half-century. The figure breaks down the market along two key dimensions:

- Agency vs nonagency. Agency MBS carry a government-backed credit guarantee from one of three housing agencies: Fannie Mae, Freddie Mac or Ginnie Mae.[2] Nonagency MBS, on the other hand, are issued by private financial institutions and are not guaranteed. Instead, securities are branched in terms of seniority to cater to investors with different credit risk appetites.  
- Residential vs commercial. The bulk of MBS are backed by mortgages on individual residential properties (RMBS). But there is also an active commercial MBS (CMBS) market secured by a diverse range of commercial real estate (e.g., office, multifamily, industrial, hotel, and warehouse properties). Commercial mortgages are larger, more complex and more heterogenous than residential mortgages, and these features are reflected in the design of CMBS, as we discuss in section 3.

The top panel of Figure 1 plots the evolution of the volume of residential MBS. The market began to expand significantly in the early 1980s, driven at the time by high and volatile interest rates and the need to alleviate the maturity and liquidity mismatch faced by savings and loans. Regulatory and tax incentives also played an important role.<sup>3</sup> The RMBS market continued to expand rapidly over the following two decades, with the volume of securities outstanding reaching almost $50\%$ of GDP by the time of the Great Recession. Particularly notable is the rapid growth in nonagency MBS during the 2000s due to the issuance of subprime and "alt-A" MBS backed by mortgages with high levels of credit risk.<sup>4</sup>

The housing crash and wave of mortgage defaults that precipitated the Great Recession also caused a freeze in the issuance of nonagency MBS in mid-2007 (Calem et al., 2013; Vickery and Wright, 2013; Fuster and Vickery, 2015; Kruger, 2018). The market has partially recovered but nonagency MBS issuance remains far below pre-crisis levels even to the present day. The MBS market as a whole remains very active, however — as of 2021, $65\%$ of total home mortgage debt is securitized into MBS, up from $60\%$ a decade ago, nearly all of it in the form of agency MBS. The stock of MBS as a percent of nominal GDP is smaller than prior to the Great Recession though, reflecting the post-crisis normalization of household leverage.

The bottom panel of Figure 1 focuses on CMBS. The CMBS market is smaller than the residential market, and did not grow in earnest until the 1990s, fueled by the Resolution Trust Corporation which issued securities backed by distressed commercial real estate in the wake of the savings and loan crisis (An et al., 2009; Chandan, 2012). Like its residential cousin, the nonagency CMBS market experienced an extraordinary boom during the 2000s — almost tripling in size as a percentage of GDP — before CMBS issuance ground to a halt at the start of the Great Recession. The market has returned to health in the post-crisis period, but normalized by GDP, the volume of nonagency CMBS today is only at the level of the early 2000s.

In contrast, the agency CMBS market has grown rapidly since the Great Recession. These securities have an explicit or implicit government credit guarantee, like agency RMBS, and are typically backed by mortgages on apartment buildings or other form of multifamily housing (e.g., senior housing, student housing).<sup>5</sup>

Competition and substitution between government-backed and private securitization is a central feature of both the commercial and residential market. For instance, Adelino et al. (2020) show that high-LTV lending migrated almost entirely from the FHA and VA to the private subprime market during the 2000s boom, before shifting back during and after the Great Recession. The market price of credit risk is a key driver of these substitution effects, because credit guarantee fees on agency MBS are set administratively and do not reflect market prices. For example, in recent years the rise in the guarantee fees charged by the GSEs has driven some lending from the agency to nonagency market and has also induced banks to retain low-risk mortgages on balance sheet rather than

securitizing them.

Regulatory policies also shape the relative size of the agency and nonagency market and likely contributed to the slow post-crisis recovery of nonagency RMBS, including: (i) the introduction of higher conforming loan limits in counties with high home prices, which expanded the footprint of the GSEs (Vickery and Wright, 2013); (ii) Dodd-Frank Act risk retention requirements and constraints on household leverage through the "Ability-to-Repay" (ATR) rule (DeFusco et al., 2019)<sup>6</sup>; and (iii) bank liquidity regulations that favor agency securities (Roberts et al., 2018).

# 2.2 Investors

Who invests in MBS? The Financial Accounts of the United States provides a partial answer by tabulating investors in agency and GSE-issued securities, a category which mainly comprises agency MBS. As of mid-2021, depository institutions are the largest class of investors (32% of the total), followed by the Federal Reserve (23%), international investors (11%), mutual funds (7%) and money market funds (5%). A full tabulation is provided in the Appendix.

More details on bank MBS holdings are presented in Federal Reserve Bank of New York (2021). Banks invest very heavily in agency MBS, which account for about half of banks' total investment security holdings. Banks are also significant investors in agency collateralized mortgage obligations (CMOs), and to a lesser extent, nonagency MBS.

The Federal Reserve is the single largest agency MBS investor through its large-scale asset purchase program, with total holdings of $2.5 trillion as of October 2021. Research has found that Fed MBS purchases reduce MBS yields and have a range of other effects on financial markets and the macroeconomy (see section 4).

# 2.3 Agency RMBS in the cross-section

Table 1 provides a cross-sectional snapshot of the population of agency residential MBS pools based on security-level data from eMBS as of March 2021. We divide the universe by agency—Fannie Mae, Freddie Mac or Ginnie Mae. Within the Ginnie Mae population, we separately break out multi-issuer pools, because they are much larger and more diversified than other Ginnie Mae pools and make up the bulk of new Ginnie issuance (see also section 3). Averages and distributional statistics reported in the table are weighted by outstanding pool balance.

The population consists of just over a million individual MBS pools, which together comprise $7.7 trillion of home mortgage debt. Almost all of this debt consists of fixed-rate mortgages (FRMs), mainly in the form of 30-year FRMs ($6.5 trillion of the total). For Fannie, Freddie, and Ginnie multi-issuer pools, around 95% of the pool balances are deliverable in the "to-be-announced" (TBA) market, which is the primary venue for agency MBS trading (see section 5).

Strikingly,  $42\%$  of the outstanding balance reflects pools with an age of one year or less. $^{7}$  This is an unusually high percentage, due to a record refinancing wave and home price boom in 2020 that resulted in around \$4 trillion of mortgage originations (Fuster et al., 2021). Even so, nearly a quarter of the total unpaid balance comprises pools with an age exceeding 5 years. This diversity of vintages is also evident in the distribution of coupons (the rate of interest paid to investors). About  $45\%$  of the universe consists of MBS pools with a coupon of  $2.5\%$  or lower — these are the typical coupons into which new mortgages would be securitized, reflecting recent record-low mortgage rates. But there is still a substantial population of much higher coupons, with  $18\%$  of the total unpaid balance reflecting coupons of  $4\%$  or higher. Borrowers represented in these pools would almost surely benefit substantially from refinancing, but for one reason or another have failed to do so (see, e.g., Keys et al., 2016 for discussion.)

Pool size also varies widely. The bottom 10 percent of the universe consists of pools with an outstanding balance of  \$5 million or below, while the top 10 percent has a balance exceeding\$ 20 billion. This dispersion reflects differences in original issue amount as well as the fact that many older pools have partially or almost completely paid down.

Pool size is much larger for Ginnie Mae multi-issuer pools than for the other categories. Prepayment speed — a primary driver of security value — is also very heterogeneous across pools. The median three-month prepayment speed, measured by the conditional prepayment rate (CPR), is  $27.8\%$ , but the 5th and 95th percentiles are  $2.6\%$  and  $52.6\%$  respectively. Section 4.2 discusses the drivers of prepayments.

To sum up, Table 1 shows that there is substantial heterogeneity and fragmentation within the agency MBS universe, which consists of more than a million unique individual pools. Even so, trading arrangements have evolved to facilitate a liquid, well-functioning secondary market, with trading concentrated in a small number of forward contracts, as we discuss in section 5.

# 2.4 International MBS markets

Outside the US, securitization is also used as a form of secondary market mortgage finance around the world, including China, continental Europe, Canada, the United Kingdom, and Australia.

Some countries share features of the US mortgage finance system. For example, the Danish model is similar in many respects to agency securitization, as discussed by Berg et al. (2018). Mortgages in Denmark are originated by a small number of specialist mortgage banks, which then issue bonds with cash flows matching the borrowers' payments. The mortgage bank retains the loan on balance sheet, however, and bears the credit risk if the borrower defaults. In this sense, Danish mortgage banks play a role similar to Fannie Mae and Freddie Mac. Another example is the Canadian model, which features a significant role for government guarantees, with the public sector insuring all mortgages with a downpayment of less than  $20\%$ . There is an active market for securitizing these government-insured loans, with payments to investors guaranteed by the Canada Mortgage and Housing Corporation, a government agency also similar in some ways to Fannie Mae and Freddie Mac (Mordel and Stephens, 2015).

In most other countries, however, securitizations more closely resemble nonagency MBS, with credit risk being borne by capital market investors.<sup>8</sup> Standard and Poor's (2021) provides an overview of market conditions for credit-sensitive MBS around the

globe.

Covered bonds are a distinct but related form of capital market mortgage financing, and are popular in many European countries.<sup>9</sup> Covered bonds are debt instruments that finance a "cover pool" of ring-fenced assets. The bond investor has exclusive recourse to the asset pool in case of default, with further recourse to the issuer's other assets if needed (see Berg et al. 2018). Unlike securitization, the cover pool is pledged as collateral for the bonds but remains on the issuer's balance sheet, and mortgage prepayment and default therefore do not typically affect the payments to investors. The US does not have an active covered bond market, in part because banks have access to funding collateralized by mortgages through the Federal Home Loan Bank system (Bernanke, 2009).

# 3 Security design

Aside from the underlying mortgage type (residential or commercial) and the presence or absence of a government-backed credit guarantee, MBS also differ in terms of how cash flows from the mortgages are allocated to investors.

The most straightforward MBS design is provided by so-called "pass-through" securities. All cash flows — including scheduled principal and interest, as well as prepayments — are paid to investors on a pro-rata basis, after first subtracting from the interest payments a fee to the loan servicer, and (in case of loans with a credit guarantee) the guarantee fee ("g-fee"). This is how residential agency MBS pools are structured.[10]

However, there are economic reasons to depart from the simple pass-through structure to appeal to investors with different needs and risk appetites. In the agency MBS segment, pools are resecuritized into collateralized mortgage obligations (or CMOs) to create tranches with different prepayment risk and duration. In a "sequential pay" struct

true, principal prepayments are first only disbursed to class A bondholders until these bonds are completely paid off; then to class B, and so on. This structure caters to investors with different maturity habitats — for example life insurers favor long-duration assets to match their policy liabilities. Also popular, "stripped" CMOs separate cash flows into interest-only (or IO) and principal-only (or PO) tranches. The universe also includes many other security types; see Arcidiacono et al. (2013) for an overview. As of 2021 there is \$1.3 trillion in agency CMOs outstanding (source: SIFMA).

In the nonagency market, structured securities are used to allocate credit risk across investors. Typically, nonagency CMOs follow a "senior-subordinated" structure, where principal payments are directed first to the senior tranches, at least during an initial "lock-out" period, while lower-ranked "mezzanine" tranches initially receive only coupon payments.[11] The lowest-ranked "equity" tranche is the first to absorb credit losses and therefore has the highest risk.

In the CMBS market, the most junior tranches are typically retained by the "special servicer" (or "B-piece buyer") who is also responsible for negotiating work-outs for delinquent loans. B-piece buyers therefore have strong incentives to carefully assess the credit risk of the underlying loans before entering a deal, and are considered the gate-keepers in the CMBS market (Ashcraft et al., 2019). Wong (2018), however, finds evidence that the dual role of B-piece buyers as both investor and servicer leads to conflicts of interest with senior bondholders during workouts.

# 3.1 Process of securitization

How are MBS actually produced? We here provide a brief overview for residential agency MBS pools, following Fuster et al. (2013). See Bhattacharya et al. (2008) for a broader discussion that also covers nonagency securities.

The building blocks for any MBS are individual loans. These are typically newly originated mortgages, but not always. The origination process begins with the borrower and originator agreeing on the terms (interest rate, contract type, and upfront payments including "points"). The loan originator could be a bank or a nonbank mortgage com-

pany, with nonbanks accounting for about two-thirds of originations in recent years (see Buchak et al., 2018, Kim et al., 2018 and Kim et al., 2022 for analysis of the growth of nonbank lending and its implications for systemic risk). The terms are guaranteed by the originator for a "lock period" of typically 30 to 90 days, during which time the borrower's application is evaluated and processed—in particular, to ensure that they fulfill agency guidelines. Assuming the originator decides to fund the loan through an agency securitization (rather than keeping the loan in portfolio), they may at this point already forward-sell the loan in the TBA market, effectively hedging against changes in the value of the loan during the lock period.

There are then two ways for the securitization to take place. In a "lender swap" transaction, the originator directly pools loans and delivers the pool to the securitizing agency (e.g. Fannie Mae) in exchange for an MBS certificate, which can be subsequently sold to investors in the secondary market (or delivered to them, if it had previously been forward-sold). There are also multi-lender swaps, where loans from different sellers are pooled into an MBS (e.g. Fannie Mae Majors) and sellers receive a proportional share of the resulting pool. This is particularly relevant in the Ginnie Mae segment of the agency market, where the Ginnie Mae II multi-issuer pool program accounts for 85-90 percent of new MBS issuance (Tozer, 2019). The multi-issuer channel is particularly valuable for smaller lenders that would not otherwise have the economies of scale to originate and securitize government mortgages.

Fannie Mae and Freddie Mac also conduct "whole loan conduit" or "cash window" transactions in which they purchase loans directly from originators (typically smaller ones), pool these loans themselves, and sell the issued MBS in the secondary market. The trade-off for originators is that the pricing obtained at the cash window is typically worse, but the originator obtains liquidity immediately and does not face the risk of not being able to assembling enough loans for a pool.[12] There is no cash window for Ginnie Mae MBS, because these pools are issued by private financial institutions rather than Ginnie Mae itself.

# 4 Risks to MBS investing, prepayment, and the OAS

MBS yields significantly exceed yields on risk-free securities reflecting the risks associated with investing in MBS. We review these risks and then discuss prepayments, both their measurement and their modeling. Finally, we delve more deeply into the valuation of agency MBS through option-adjusted spreads (OAS).

# 4.1 Risks to MBS investing

Risks to MBS investing can be grouped into four main categories: duration, prepayment, credit and liquidity.

Duration risk: MBS duration measures two closely related concepts. It is the weighted average time until cash flows, which include both principal and interest payments, are paid out to investors. But duration is also the sensitivity of the MBS price to a change in the general level of interest rates. Because MBS pay fixed coupons to investors and typically have 30-year maturities, duration is high and prices are very sensitive to interest rates. A key distinguishing feature of MBS is that the duration of the security is not fixed but rather uncertain because borrowers can prepay their loans at any time.

Prepayment risk: MBS prepayments are either voluntary or involuntary. Voluntary prepayments are largely determined by borrowers' refinancing and relocation decisions while involuntary prepayments reflect defaults (see credit risk discussion below). Refinancing is the most important source of prepayment, because for typical mortgages securitized into agency MBS, the borrower can pay off the remaining balance at par with no penalty. Since the mortgage rate is fixed, refinancing to a new loan is attractive when market interest rates are low; therefore prepayments rise and MBS duration falls when interest rates decline. In other words, MBS are callable securities, and price appreciation from lower interest rates is therefore capped—MBS exhibit "negative convexity."

Credit risk: At any point in time, borrowers can fail to make payments on the mortgages underlying an MBS. Default occurs when the loan no longer pays principal and interest until liquidation. Default is often caused by a "double trigger" of negative equity and a negative life event such as unemployment, illness or divorce (e.g., Ganong and Noel, 2020; Low, 2021).<sup>13</sup> Without such negative events, borrowers are generally reluctant

to walk away from their mortgage and home even when equity is deeply negative (e.g., Bhutta et al., 2017). More generally, not all delinquencies turn into defaults as loans can cure without "rolling" into more severe credit buckets.

The implications of default for investors depends on whether the MBS is an agency or nonagency security. For agency MBS, the GSEs and Ginnie Mae promise full and timely payment of principal and interest, a guarantee that is either explicitly or implicitly backed by the federal government. When a borrower defaults, the issuer repurchases the loan from the MBS pool at par, resulting in a prepayment event for MBS investors (an involuntary prepayment).<sup>14</sup> For nonagency MBS, however, borrower default is much more significant because investors bear any credit losses, starting with the most junior security, the equity tranche. Investors model probabilities of default and loss-given-default using reduced-form models that include loan characteristics (e.g., LTVs, credit scores) as well as macroeconomic variables.<sup>15</sup>

Although agency MBS are essentially free of credit risk, in recent years the GSEs have issued a new instrument — credit risk transfer (CRT) bonds — with cash flows explicitly tied to credit losses on agency mortgages. CRTs are structured debt securities linked to a "reference pool" of securitized loans. These bonds experience principal write-downs if credit losses on the reference pool exceed particular thresholds. See Finkelstein et al. (2018) for more details. CRTs were introduced to reduce the GSEs' exposure to mortgage credit risk by shifting some of the risk to the private sector. CRT secondary market prices also provide a useful market signal about expected future mortgage credit losses; for example CRT prices fell sharply at the start of the COVID-19 pandemic before recovering.

Trading and funding liquidity risk: MBS trading liquidity—the ease with which securities can be traded—and funding liquidity—how easily MBS collateral is funded—are additional risks to investing in MBS and influence returns (Brunnermeier and Pedersen, 2009; Song and Zhu, 2019). Trading liquidity varies quite significantly by type of MBS

after the financial crisis were indeed underwater on their mortgages, Low (2021) presents evidence that the share of defaults with positive equity is quite high in "normal times."  
<sup>14</sup>For MBS guaranteed by the GSEs, it is the relevant agency, Fannie Mae or Freddie Mac, that repurchases the mortgage. For Ginnie Mae pools, it is the financial institution that issued the security rather than Ginnie Mae itself (Tozer, 2019). This is an important distinction, because the financial characteristics of the issuer can affect their incentives to repurchase loans. For example bank issuers have been more likely to repurchase nonperforming mortgages from Ginnie Mae pools during the COVID-19 pandemic because of their stronger liquidity position.  
<sup>15</sup>See Demyanyk and Van Hemert (2011) for an example of this type of model.

- liquidity for private-label MBS is quite limited, but for agency MBS the TBA forward market provides a high level of trading liquidity as well as funding liquidity through the execution of dollar rolls (see section 5).

# 4.2 Measuring and modeling prepayments

We now turn to a more detailed discussion of prepayment risk, the most salient of these four risks for agency MBS. For a given borrower, prepayment often involves paying down the entire loan balance. Such an event only marginally reduces the overall MBS pool balance though, because each pool is backed by many loans. Prepayment is measured by the single monthly mortality (SMM), which is the fraction of an MBS balance prepaid in a month relative to the remaining scheduled principal balance, and by the conditional prepayment rate (CPR) which is simply the SMM expressed at an annual rate.

The blue line in the top panel of Figure 2 plots the time series of CPR for the aggregate universe of 30-year fixed-rate agency MBS. Aggregating balances hides pool-specific prepayment variation, which is significant as shown earlier in Table 1. But even the aggregate prepayment rate exhibits very wide variation, ranging from a CPR of about 55 percent during the 2003 refinancing wave to a low of about 10 percent in 2008. The dashed red line is the "moneyness" of the mortgage universe, which is the difference between the average interest rate on the universe of outstanding mortgages and the current market mortgage rate. When the moneyness of the universe increases, refinancing becomes more attractive and prepayments therefore rise. Even so, similar levels of moneyness in 2003 and 2008 led to very different prepayment outcomes. A much greater degree of heterogeneity also exists at the level of specific pools. Prepayment modeling attempts to explain this variation and to predict prepayments.

# 4.2.1 Modelling prepayments

The academic literature considers structural and rational models of mortgage prepayment (e.g., Stanton, 1995), but practitioners rely on reduced-form statistical prepayment models. $^{16}$  These models do not assume rational borrower behavior but use information

on observable borrower characteristics and macroeconomic factors to explain variation in the SMM. Given the many variables and the complexity of the task, models from different investors often disagree significantly about predicted prepayments (Carlin et al., 2014).

Explanatory variables in prepayment models can be logically grouped into those related to turnover, refinancing, and defaults and curtailments. The first two channels are quantitatively the most important.[17] The turnover channel is associated with property sales, which are affected by economic conditions and the strength of the housing market. Turnover is highly seasonal, peaking in the summer, and is also subject to a "seasoning" effect because sales are less likely during the first two to three years after a home purchase.

The refinancing channel exhibits the greatest variation over time and across pools. The key variable used in modeling it is a pool's moneyness: when moneyness is positive, a borrower can lower their rate and monthly payment by refinancing—in other words, the borrower's prepayment option is "in-the-money" (ITM). Negative moneyness, instead, means that refinancing (or selling the home and buying another) would increase the rate paid—the borrower's option is "out-of-the-money."

# 4.2.2 Prepayment vs moneyness: the "S-curve"

The bottom panel of Figure 2 plots average prepayment rates as a function of moneyness in a monthly panel of MBS indexed by coupon rate and year of origination. Reflecting the shape of the relationship, this is known as an "S-curve." While prepayments rise with moneyness, on average, they never come close to reaching 100 percent.[18] This reflects the fact that many borrowers fail to refinance when it is in their monetary interest to do so (Keys et al., 2016). In addition, the S-curve bends down as pools become deeply ITM, reflecting the so-called "burnout effect" — over time, an ITM mortgage pool becomes less responsive to interest rates because the borrowers most sensitive to the refinancing incentive have already exited.

The S-curve shifts over time due to changes in non-moneyness drivers of prepayment.

For instance, when interest rates hit multi-year lows, refinancing for given levels of moneyness typically increases due to the "buzz" surrounding these low rates—this is known as the "media effect" in prepayment modeling. This effect was prominent during the record 2002-03 refinancing wave (Figure 2, top panel), and may also have contributed to high prepayments during the COVID-19 pandemic after mortgage rates reached all-time lows. Furthermore, an increase in "cash-out" refinancing to extract equity during a home price boom can shift the S-curve upwards, while conversely, falling home prices and/or a weak economy can make it difficult for borrowers to qualify for a refinancing, thereby reducing prepayment for a given moneyness. Changes in agency underwriting guidelines or government policies (such as the Home Affordable Refinance Program introduced in the wake of the Great Recession) can also substantially shift prepayments.

Heterogeneity in refinancing across pools also reflects differences in creditworthiness as measured by credit scores and LTVs, and loan size due to the fixed costs involved in refinancing. State-level policies also matter (e.g., New York's mortgage recording tax).

# 4.3 The OAS and risks to investing in agency MBS

We use the option-adjusted spread (OAS) to delve further into the risks associated with agency MBS. The OAS is the most popular metric to assess agency MBS valuations and risk premia. As shown by Boyarchenko et al. (2019), the OAS is equal to the average expected excess returns over the lifetime of the security.[19] Formally, the OAS is the constant spread to baseline rates that sets the expected discounted value of cash flows equal to the security's market price after accounting for prepayments:

$$
P _ {M} = \mathbb {E} \sum_ {k = 1} ^ {T} \frac {X _ {k} (r _ {k})}{\prod_ {j = 1} ^ {k} \left(1 + \mathrm {O A S} + r _ {j}\right)}, \tag {1}
$$

where  $P_{M}$  is the market price of an MBS,  $r_{j}$  is the riskless interest rate at time  $j$  and  $X_{k}$  is the cash flow from the security. The OAS increases the larger the value of discounted cash flows relative to the market price, meaning that when spreads are positive, MBS

trade below the discounted price net of the OAS.[20] The calculation of the expectation term in the OAS uses Monte Carlo simulations and both a calibrated interest rate and an estimated prepayment model. The two are combined to simulate interest rate paths and corresponding prepayment flows to obtain model prices and spreads in (1).[21]

We turn to data on OAS from a major dealer (JP Morgan) to present stylized facts both in the time series and cross section of agency MBS. The top panel of Figure 3 shows the evolution of Treasury OAS for the so-called current-coupon MBS, meaning the synthetic coupon trading at par, issued by Fannie Mae.

This OAS averaged about 50 basis points since 2000, but spiked to about 150 basis points in the fall of 2008, and turned negative at times during the periods of the QE3 and QE4 programs, when the Federal Reserve purchased large quantities of agency MBS.

A negative OAS indicates that, after accounting for embedded prepayment option, MBS are valued more highly than Treasuries. On face value this seems anomalous because Treasuries are more liquid than MBS, are explicitly issued by the federal government, and are generally treated more favorably for regulatory purposes (e.g., bank capital and liquidity requirements). However, a negative OAS could for example be driven by preferred-habitat effects or indicate that some investors reached for a higher yield because they cannot synthetically replicate the higher MBS zero-volatility yield by investing in Treasuries and interest rate options. Note that in this case the MBS yield will always exceed that on Treasuries, even when OAS are negative. A final explanation is simply that there may model error leading to mismeasurement of the OAS.

The bottom panel of Figure 3 focuses on the cross section of OAS and reveals substantial variation across MBS with different moneyness levels.[22] In the cross section, a

$$
P _ {M} = \sum_ {k = 1} ^ {T} \frac {X _ {k} (\mathbb {E} r _ {k})}{\prod_ {j = 1} ^ {k} (1 + Z \mathrm {V S} + \mathbb {E} r _ {j})}. \tag {2}
$$

smile-like pattern emerges: spreads are lowest for securities for which the prepayment option is at-the-money, and increase if the option moves out-of-the-money and especially when it is in-the-money. The OAS smile pattern was first shown by Boyarchenko et al. (2019), who also find that OAS predicts realized excess returns. A similar smile-shaped pattern in MBS excess returns is documented by Diep et al. (2021).

Large positive average OAS over time and across securities suggest that MBS investors require risk compensation to hold MBS over Treasuries. The embedded prepayment option means that even if payments are guaranteed, the timing of cash flows accruals is uncertain. Equation (1) explicitly incorporates the feature that cash flows depend on interest rates through prepayments. However, OAS abstracts from uncertainty related to non-interest rate factors that affect prepayments, such as house prices and lending standards. Boyarchenko et al. (2019) show that MBS investors earn risk compensation for these non-interest-rate prepayment factors and that these factors underlie the cross-sectional smile pattern in the OAS.[23]

In the time series, Boyarchenko et al. (2019) further show that risk factors unrelated to prepayment, such as liquidity or changes in the perceived strength of the implicit federal government guarantee on the agencies, are important drivers of the average OAS. For example, the non-prepayment component in the OAS co-moves with spreads on other agency debt and corporate securities, reflecting shared risk factors.

# 4.4 Supply Effects and Fed Quantitative Easing

The supply of MBS — which is affected by the net volume of new issuance as well as Fed MBS purchases that reduce the net supply available to private investors — is also positively related to the non-prepayment component of OAS. As an indication of these effects, the OAS turned negative during QE3 and QE4 when the Fed purchased large quantities of agency MBS (see grey bars in Figure 3, left panel). Consistent with this fact, event studies using high-frequency data find that announcements of new Fed MBS purchases are

associated with significant declines in MBS yields and OAS (Gagnon et al., 2011; Hancock and Passmore, 2011; Krishnamurthy and Vissing-Jorgensen, 2011). Chernov et al. (2016) similarly find evidence that MBS risk premiums are affected by the Federal Reserve's quantitative easing programs using a more model-based approach. Krishnamurthy and Vissing-Jorgensen (2011) and Di Maggio et al. (2020) furthermore show that MBS purchases have larger effects on MBS yields than a comparable volume of Treasury purchases, consistent with the presence of some degree of market segmentation. Kandrac (2018) studies effects of Fed MBS purchases on market functioning and liquidity, finding modest negative effects.

Other research investigates the broader financial and macroeconomic effects of the Federal Reserve's MBS purchases. For example, Di Maggio et al. (2020) find that Fed QE significantly boosted refinancing activity and as a result, led to higher aggregate consumption. Beraja et al. (2019) show that the effectiveness of QE and monetary policy more generally depends on the distribution of home equity, because insufficient equity reduces the ability of borrowers to refinance.

# 5 Trading

Most agency RMBS trading occurs through the to-be-announced or "TBA" forward market. The key feature of a TBA trade is that the seller does not specify exactly which pools will be delivered at settlement. Instead, the buyer and seller agree on six trade parameters: the agency, coupon, maturity, price, face value, and settlement month, and any combination of pools satisfying the parameters and SIFMA good delivery guidelines can be delivered at settlement.[24]

The TBA market effectively concentrates the fragmented universe of around a million individual agency MBS pools into a small number of liquid contracts for trading purposes, thereby improving fungibility and liquidity.[25] Investors trade TBAs to express

price views or for hedging. TBAs are also used by lenders to hedge their origination pipeline, as discussed in section 3.

The TBA market can further be used as a funding vehicle, through the execution of "dollar roll" transactions. In a dollar roll, the roll seller sells TBAs for a coming delivery month (the "front" month) and simultaneously purchases TBAs for a later "back" month. This provides short-term funding to the roll seller by postponing the date when she is due to pay cash to settle her long TBA position. The substance of a dollar roll is similar to a repurchase agreement, but there are some important differences; see Song and Zhu (2019) for further discussion and empirical analysis of the dollar roll market. The Federal Reserve has also used dollar rolls to support market functioning, and actively employed this tool during the COVID-19 pandemic (Frame et al., 2021).

Since mid-2019, Fannie Mae and Freddie Mac pools have traded through a single set of "Uniform MBS" (UMBS) TBA contracts, in which pools issued by either agency can be delivered at settlement. Previously, the two GSEs traded separately in the TBA market. This change in market structure was implemented because TBA trading had historically been highly concentrated in Fannie Mae contracts, leading to an illiquidity discount for Freddie Mac pools which put them at a competitive disadvantage. Liu et al. (2021) find that UMBS implementation successfully improved Freddie Mac TBA liquidity without any obvious adverse effects on overall market functioning.

The agency market also features significant trading of individual pools (known as "spec pool" trading). One reason for spec pool trading is that the TBA market operates on a cheapest-to-deliver basis — sellers will deliver the least valuable eligible pools. This leads to a semi-separating equilibrium in which more valuable "pay-up" MBS pools trade individually while less valuable MBS trade on a pooled basis in the TBA market. See Li and Song (2020) for a theoretical model of this structure. Specified pool trades are often arranged to settle on TBA settlement dates, but can settle at any time of the month.[26]

Specified pool trading also includes agency MBS pools that for various reasons are not TBA-eligible.[27] Other mortgage securities, such as CMBS, agency CMOs, and nonagency

RMBS, also trade on an individual basis.

# 5.1 Evidence on trading activity and liquidity

Table 2 presents trading volume statistics based on TRACE data aggregated by SIFMA. Agency residential MBS trading activity dwarfs the other segments of the market, with  \$288bn of daily trading volume, compared to\$ 2.7bn for CMBS and only \$0.5bn for nonagency RMBS. This reflects  \$261bn of TBA trading (about 90% of the agency RMBS total), followed by a smaller but still very significant\$ 25.4bn of specified pool trades and \$1.4bn of agency CMOs.

Estimated trading costs are also significantly lower in the TBA market. Bessembinder et al. (2013) estimate one-way trading costs of only 1 basis point (bp) for TBAs, compared to 40bp for specified pools, and 39bp for nonagency MBS. Gao et al. (2017) find that TBA liquidity has positive spillover effects on the specified pool market — trading costs are lower for specified pools that are TBA eligible and for spec pool trades close to TBA settlement dates. Huh and Kim (2020) trace out the broader effects of TBA liquidity using a TBA-eligibility cutoff at the national conforming loan limit. TBA eligibility is estimated to reduce mortgage rates by 7-28bp, and to spur refinancing activity.

Table 2 also compares MBS trading volume to activity in other US fixed income markets. TBA activity is lower than in the Treasury market, but trading volume is more than six times higher than in the corporate bond market, despite the larger stock of corporate bonds outstanding. Trading activity is even lower for municipal bonds, agency debt and asset backed securities, and Bessembinder et al. (2020) further show that TBA trading costs are much lower than for these other markets.[28]

# 6 Economic effects of MBS and mortgage securitization

What are the broader economic effects of MBS markets and mortgage securitization? A sizeable academic literature has studied different aspects of this question and also high-

lighted potential downsides of securitization, especially in the wake of the Great Recession. In this section, we provide a brief overview of some of the main themes.

A key benefit of securitization is that it makes mortgages more liquid, thereby significantly de-coupling loan originators' ability to produce loans from their own financial condition (e.g. funding, risk exposure). As evidence on this point, Loutskina and Strahan (2009) show that bank liquid assets and deposit costs play much less of a role in the origination of conforming mortgages, which can easily be securitized, compared to less-liquid jumbo mortgages. Securitization is also fundamental to the rise of nonbank lenders (financed through wholesale funding) as the dominant origination channel in the US (Buchak et al., 2020; Gete and Reher, 2020; Kim et al., 2022).<sup>29</sup>

Since securitization increases liquidity and broadens the set of lenders able to originate mortgages, one would naturally expect that it also leads to an outward shift in credit supply, plausibly increasing credit access for otherwise "marginal" borrowers. However, a sizeable literature has argued that securitization also reduces credit quality through an additional "moral hazard" channel: as originators offload the credit risk, they may have weaker incentives to screen borrowers, leading to lower acquisition of soft information and worse ex-post outcomes (e.g., Keys et al., 2010; Nadauld and Sherlund, 2013; Rajan et al., 2015; Choi and Kim, 2020). But the strength of the evidence, and the question of whether securitization is an important cause of the US mortgage boom and bust of the 2000s, remains debated in the literature (e.g., Bubb and Kaufman, 2014; Foote et al., 2012, 2020; Mian and Sufi, 2021).

A related literature has focused on the effects of securitization on loan monitoring after origination—in particular, whether the mortgage servicer has insufficient or misaligned incentives to work out appropriate solutions (such as modifications) for delinquent loans. Again, there is a debate in the literature about how important these incentive effects were in explaining (non-)modifications of securitized mortgages during the Great Recession (e.g., Piskorski et al., 2010; Agarwal et al., 2011; Adelino et al., 2013; Aiello, 2021). More recently, Kim et al. (2021) find that mortgage servicers' financial condition affects forbearance outcomes for securitized mortgages during the COVID-19 crisis. Related, Wong (2018) finds evidence of misaligned servicer incentives in the CMBS market.

Securitization may also affect mortgage contract design. Fuster and Vickery (2015) show that lenders reduce the supply of long-term prepayable fixed-rate mortgages (relative to adjustable-rate mortgages) when securitization markets become illiquid. They argue that this is due to lenders' limited ability to absorb the interest rate and prepayment risk embedded in FRMs.[30] Thus, it appears unlikely that the 30-year prepayable FRM, which is by far the dominant mortgage type in the US, could be offered at similarly competitive rates without liquid securitization markets.

In turn, the popularity of prepayable FRMs has broader consequences for financial markets and the transmission of monetary policy. In particular, several studies argue that "convexity hedging" flows lead to important interactions between the MBS market and the Treasury yield curve (Hanson, 2014; Malkhozov et al., 2016; Hanson et al., 2021). Furthermore, the fact that US borrowers need to refinance to benefit from a drop in market interest rates means there is much less direct transmission of monetary policy to household balance sheets than in a system with adjustable-rate mortgages (e.g. Campbell, 2013; Di Maggio et al., 2017). Transmission is further blunted by the limited ability of mortgage originators to increase origination capacity during periods of peak demand; instead, originators tend to earn high markups during such periods (Fuster et al., 2013, 2017, 2021).

# 7 Directions for future research

The MBS market was a relatively neglected research topic prior to the 2008 financial crisis, but the literature has grown rapidly in the years since. Rich loanand security-level datasets are now available to researchers, and the introduction of TRACE data for structured products in 2011 provides new opportunities to study MBS microstructure and liquidity. We end this paper by highlighting some topics that we believe present opportunities for future research.

1. Securitization and alternative mortgage designs. Various alternative mortgage designs have been proposed to improve macroeconomic stability, reduce transaction costs, or produce other benefits. For instance, Eberly and Krishnamurthy (2014), Guren et al. (2021), and Campbell et al. (2021) study mortgages that can switch

from FRMs to ARMs or interest-only loans during recessions, while Greenwald et al. (2021) study shared appreciation mortgages with payments that adjust with home prices. An open question is how such alternative products would be funded and what role securitization markets would play. Securitization may in fact hinder innovation, in the sense that the existence of a thick, liquid secondary market for a particular contract —30-year FRMs—may present a barrier for alternative designs.

2. What's holding back nonagency securitization? Nonagency securitization remains far lower than prior to the financial crisis, despite the much higher credit guarantee fees now charged by the GSEs. Stricter post-crisis regulation is a natural reason why, as discussed in section 2.1. But research has not clearly disentangled the role of regulation from other factors such as changes in expectations.  
3. Investor behavior. There is limited research on the determinants of investor behavior in the MBS market (e.g., the striking fact that MBS now make up half of bank security portfolios) and how investors affect pricing and liquidity.[31]  
4. Securitization and climate change. An emerging literature studies the interaction between climate change and mortgage and MBS markets (e.g., Ouazad and Kahn, 2019). This is likely to be a fruitful topic for future work. For instance, securitization prices can provide useful high-frequency information about the market's assessment of climate and natural disaster risk. Another application: Fannie Mae has developed a "green MBS" program for loans backed by buildings with green building certifications — to our knowledge, its effects have not been rigorously studied.

To sum up, mortgage-backed securities are at the very heart of housing finance and the US financial system, and also play a significant role in monetary policy and monetary transmission. The MBS market also presents many opportunities for academics, and this important market is likely to remain a vibrant topic for research in the years to come.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/0ec7735d-92dd-4623-ae17-6be697681290/4e0217cbd8c35f8dcb410e1004afa91d96ae68f27628b4fdb6092be6b9f972db.jpg)  
Figure 1: Mortgage-backed securities outstanding

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/0ec7735d-92dd-4623-ae17-6be697681290/043d84a899eef635295943b4389d40409b04a81009ac55d981087ffcedaac3ae.jpg)

Shaded areas represent stock of agency and nonagency MBS as a percent of nominal GDP. Dashed line plots total MBS scaled by the relevant stock of mortgage debt. See Appendix (section A) for details of figure construction. Data sources: FAUS, BEA.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/0ec7735d-92dd-4623-ae17-6be697681290/61dd2fa0925642f64a1bba626094bcaa243e836300a975b7cba34d3a3cac4dba.jpg)  
Figure 2: CPR for agency MBS

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/0ec7735d-92dd-4623-ae17-6be697681290/dfd900563d20822ada9a3da8868476958ed67436972071c9d2c646b1c5b991fa.jpg)

The top panel shows the time series of the monthly conditional prepayment rate (CPR) on the universe of 30-year fixed-rate agency MBS weighted by their remaining principal balance, against the moneyness of the mortgage universe. Moneyness is calculated as the weighted average coupon rate (WAC) minus the monthly average 30-year fixed-rate mortgage rate. The bottom panel shows a binned scatter plot (Cattaneo et al., 2019) of the cross-sectional variation in CPR as a function of their moneyness. All data is monthly and covers the period 2000-2021. Source: eMBS; Freddie Mac.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/0ec7735d-92dd-4623-ae17-6be697681290/3ca1d10516b6ec332a5f2aeb0797e0c9565f1bba96ea4dcc8f8b68b2c84d0eb4.jpg)  
Figure 3: Time-series and cross-sectional variation of the agency OAS.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/0ec7735d-92dd-4623-ae17-6be697681290/7b024acde7f4f720d68d09b1eef2a0348dbb4dda4980d29888fb26c6535c2133.jpg)

The top panel shorts the time series of the option-adjusted spread (to Treasuries and averaged each month) on the current-coupon agency MBS. The red line is the sample average and shaded areas represent periods in which the Federal Reserve purchased agency MBS in QE programs. The bottom panel shows a binned scatter plot (Cattaneo et al., 2019) of the cross-sectional variation in the OAS across MBS coupons as a function of their moneyness. Moneyness is calculated as the coupon rate plus 50 basis points (to account for servicing and the guarantee fee) minus the monthly average 30-year fixed-rate mortgage rate. The bottom panel only includes coupons with remaining principal balance of at least 100 million. All data is monthly average and covers the period 2000-2021. Source: JP Morgan; Freddie Mac.

Table 1: The cross-section of agency MBS pools  

<table><tr><td></td><td>Fannie Mae</td><td>Freddie Mac</td><td>Ginnie Mae Multi</td><td>Other</td><td>Total</td></tr><tr><td>Number of Active Pools</td><td>474,062</td><td>274,588</td><td>8,547</td><td>246,025</td><td>1,003,222</td></tr><tr><td colspan="6">Aggregate Outstanding Face Value (UPB, in billions)</td></tr><tr><td>30yr FRM</td><td>2,590.1</td><td>1,902.8</td><td>1,575.8</td><td>386.3</td><td>6,455.1</td></tr><tr><td>15yr FRM</td><td>450.8</td><td>339.8</td><td>24.5</td><td>3.6</td><td>818.7</td></tr><tr><td>Other FRM</td><td>204.2</td><td>127.9</td><td>0.0</td><td>0.3</td><td>332.4</td></tr><tr><td>Other Mortgage Types</td><td>34.4</td><td>26.7</td><td>10.6</td><td>46.6</td><td>118.3</td></tr><tr><td>Total</td><td>3,279.5</td><td>2,397.2</td><td>1,610.9</td><td>436.9</td><td>7,724.5</td></tr><tr><td>TBA eligible (%, weighted by UPB)</td><td>94.1</td><td>94.1</td><td>96.2</td><td>21.3</td><td>90.5</td></tr><tr><td colspan="6">Distribution of Pool UPB</td></tr><tr><td>10th pctile</td><td>4.3</td><td>6.2</td><td>754.2</td><td>1.0</td><td>5.0</td></tr><tr><td>50th pctile</td><td>165.0</td><td>287.8</td><td>6,226.6</td><td>6.2</td><td>353.3</td></tr><tr><td>90th pctile</td><td>26,654.0</td><td>6,956.9</td><td>34,823.1</td><td>36.8</td><td>19,598.8</td></tr><tr><td>95th pctile</td><td>35,199.7</td><td>8,932.9</td><td>40,937.4</td><td>58.6</td><td>34,823.1</td></tr><tr><td>99th pctile</td><td>41,203.9</td><td>12,348.9</td><td>43,895.2</td><td>144.2</td><td>41,203.9</td></tr><tr><td colspan="6">Distribution by Coupon (weighted by UPB)</td></tr><tr><td>less than 2</td><td>0.05</td><td>0.09</td><td>0.01</td><td>0.03</td><td>0.05</td></tr><tr><td>2-2.5</td><td>0.24</td><td>0.27</td><td>0.16</td><td>0.07</td><td>0.22</td></tr><tr><td>2.5-3</td><td>0.18</td><td>0.17</td><td>0.20</td><td>0.18</td><td>0.18</td></tr><tr><td>3-3.5</td><td>0.20</td><td>0.18</td><td>0.25</td><td>0.14</td><td>0.20</td></tr><tr><td>3.5-4</td><td>0.15</td><td>0.13</td><td>0.22</td><td>0.19</td><td>0.16</td></tr><tr><td>4-4.5</td><td>0.11</td><td>0.09</td><td>0.10</td><td>0.17</td><td>0.10</td></tr><tr><td>greater than 4.5</td><td>0.07</td><td>0.07</td><td>0.06</td><td>0.22</td><td>0.08</td></tr><tr><td colspan="6">Distribution of Pool Age (%, weighted by UPB)</td></tr><tr><td>less than 1yr</td><td>41.92</td><td>47.44</td><td>38.52</td><td>27.44</td><td>42.11</td></tr><tr><td>1-5yr</td><td>32.69</td><td>30.81</td><td>40.84</td><td>41.71</td><td>34.32</td></tr><tr><td>5-10yr</td><td>20.38</td><td>17.43</td><td>17.87</td><td>18.52</td><td>18.84</td></tr><tr><td>greater than 10yr</td><td>5.01</td><td>4.32</td><td>2.77</td><td>12.32</td><td>4.74</td></tr><tr><td colspan="6">Distribution of Prepayment Speed (weighted by UPB)</td></tr><tr><td>1st pctile</td><td>0.05</td><td>0.10</td><td>7.52</td><td>0.00</td><td>0.04</td></tr><tr><td>5th pctile</td><td>1.87</td><td>3.60</td><td>9.83</td><td>0.01</td><td>2.64</td></tr><tr><td>25th pctile</td><td>13.90</td><td>13.24</td><td>27.86</td><td>3.84</td><td>14.82</td></tr><tr><td>50th pctile</td><td>24.88</td><td>23.91</td><td>40.34</td><td>23.22</td><td>27.80</td></tr><tr><td>75th pctile</td><td>36.26</td><td>35.63</td><td>47.23</td><td>38.81</td><td>40.03</td></tr><tr><td>95th pctile</td><td>50.88</td><td>48.93</td><td>55.88</td><td>66.92</td><td>52.57</td></tr><tr><td>99th pctile</td><td>66.09</td><td>61.90</td><td>59.98</td><td>87.32</td><td>66.10</td></tr></table>

Reflects the population of agency residential MBS pools measured as of March 2021. All averages and distributional statistics are weighted by outstanding pool unpaid balance. Source: Author calculations based on eMBS security-level data.

Table 2: MBS trading volume  

<table><tr><td></td><td>Avg. daily 
trading volume 
($bn)</td></tr><tr><td colspan="2">A. Residential: Agency MBS</td></tr><tr><td>TBA</td><td>260.95</td></tr><tr><td>Specified Pool</td><td>25.34</td></tr><tr><td>CMO</td><td>1.37</td></tr><tr><td>Total</td><td>287.67</td></tr><tr><td colspan="2">B. Residential: Non-agency MBS</td></tr><tr><td>CMO (IO/PO)</td><td>0.05</td></tr><tr><td>CMO (P&amp;I)</td><td>0.43</td></tr><tr><td>Total</td><td>0.48</td></tr><tr><td colspan="2">C. Commercial MBS</td></tr><tr><td>Agency CMBS</td><td>1.22</td></tr><tr><td>Non-Agency CMBS (IO/PO)</td><td>0.28</td></tr><tr><td>Non-Agency CMBS (P&amp;I)</td><td>0.74</td></tr><tr><td>Total</td><td>2.71</td></tr><tr><td colspan="2">Memo: other USD fixed income securities</td></tr><tr><td>US Treasury</td><td>603.2</td></tr><tr><td>Corporate debt</td><td>38.9</td></tr><tr><td>Municipal bonds</td><td>12.0</td></tr><tr><td>Federal agency securities</td><td>5.3</td></tr><tr><td>Asset backed securities</td><td>1.9</td></tr></table>

Average daily trading volume is calculated over the period from January to September 2021. IO/POs are stripped passthrough pools that pay either interest only or principal only, whereas P&I CMOs are typically sequential pay bonds with cashflows derived from both principal and interest payments on the underlying mortgages. Source: SIFMA, aggregated from FINRA TRACE data.

# References

ADELINO, M., K. GERARDI, AND P. S. WILLEN (2013): "Why Don't Lenders Renegotiate More Home Mortgages? Redeferences, Self-Cures and Securitization," Journal of Monetary Economics, 60, 835-853.  
ADELINO, M., W. B. MCCARTNEY, AND A. SCHOAR (2020): "The Role of Government and Private Institutions in Credit Cycles in the U.S. Mortgage Market," Working Papers 20-40, Federal Reserve Bank of Philadelphia.  
ADELINO, M., A. SCHOAR, AND F. SEVERINO (2016): "Loan Originations and Defaults in the Mortgage Crisis: The Role of the Middle Class," Review of Financial Studies, 29, 1635-1670.  
AGARWAL, S., G. AMROMIN, I. BEN-DAVID, S. CHOMSISENGPHET, AND D. D. EVANOFF (2011): "The role of securitization in mortgage renegotiation," Journal of Financial Economics, 102, 559-578.  
AIELLO, D. J. (2021): "Financially constrained mortgage servicers," Journal of Financial Economics, forthcoming.  
AN, X., Y. DENG, AND S. GABRIEL (2009): "Value Creation through Securitization: Evidence from the CMBS Market," Journal of Real Estate Finance and Economics, 38, 302-326.  
ARCIDIACONO, N., L. CORDELL, A. DAVIDSON, AND A. LEVIN (2013): "Understanding and Measuring Risks in Agency CMOs," Working paper no. 13-8, Federal Reserve Bank of Philadelphia.  
ASHCRAFT, A. AND T. SCHUERMANN (2008): "Understanding the Securitization of Subprime Mortgage Credit," Foundations and Trends in Finance, 2, 191-309.  
ASHCRAFT, A. B., K. GOORIAH, AND A. KERMANI (2019): "Does skin-in-the-game affect security performance?" Journal of Financial Economics, 134, 333-354.  
BERAJA, M., A. FUSTER, E. HURST, AND J. VAVRA (2019): "Regional Heterogeneity and the Refinancing Channel of Monetary Policy," Quarterly Journal of Economics, 134, 109-183.  
BERG, J., M. B. NIELSEN, AND J. VICKERY (2018): "Peas in a pod? Comparing the U.S. and Danish mortgage finance systems," Staff Reports 848, Federal Reserve Bank of New York.

BERNANKE, B. (2009): "The Future of Mortgage Finance in the United States," B.E. Journal of Economic Analysis & Policy, 9, 1-10.  
BESSEMBINDER, H., W. F. MAXWELL, AND K. VENKATARAMAN (2013): "Trading Activity and Transaction Costs in Structured Credit Products," Financial Analysts Journal, 69, 55-67.  
BESSEMBINDER, H., C. SPATT, AND K. VENKATARAMAN (2020): "A Survey of the Microstructure of Fixed-Income Markets," Journal of Financial and Quantitative Analysis, 55, 1-45.  
BHATTACHARYA, A. K., W. S. BERLINER, AND F. J. FABOZZI (2008): "The Interaction of MBS Markets and Primary Mortgage Rates," Journal of Structured Finance, 14, 16-36.  
BHUTTA, N., H. SHAN, AND J. DOKKO (2017): "Consumer Ruthlessness and Mortgage Default during the 2007 to 2009 Housing Bust," Journal of Finance, 72, 2433-2466.  
BOYARCHENKO, N., A. FUSTER, AND D. O. LUCCA (2019): "Understanding mortgage spreads," Review of Financial Studies, 32, 3799-3850.  
BRUNNERMEIER, M. K. AND L. H. PEDERSEN (2009): "Market Liquidity and Funding Liquidity," Review of Financial Studies, 22, 2201-2238.  
BUBB, R. AND A. KAUFMAN (2014): "Securitization and moral hazard: Evidence from credit score cutoff rules," Journal of Monetary Economics, 63, 1-18.  
BUCHAK, G., G. MATVOS, T. PISKORSKI, AND A. SERU (2018): "Fintech, Regulatory Arbitrage, and the Rise of Shadow Banks," Journal of Financial Economics, 130, 453-483.  
(2020): "Beyond the Balance Sheet Model of Banking: Implications for Bank Regulation and Monetary Policy," Working Paper 25149, National Bureau of Economic Research.  
BURGESS, G., W. PASSMORE, AND S. SHERLUND (2022): "The Government Agencies," This Volume.  
CALEM, P., F. COVAS, AND J. WU (2013): "The Impact of the 2007 Liquidity Shock on Bank Jumbo Mortgage Lending," Journal of Money, Credit and Banking, 45, 59-91.  
CAMPBELL, J. Y. (2013): "Mortgage Market Design," Review of Finance, 17, 1-33.  
CAMPBELL, J. Y., N. CLARA, AND J. F. COCCO (2021): "Structuring Mortgages for Macroeconomic Stability," Journal of Finance, 76, 2525-2576.

CARLIN, B. I., F. A. LONGSTAFF, AND K. MATOBA (2014): "Disagreement and Asset Prices," Journal of Financial Economics, 114, 226-238.  
CATTANEO, M. D., R. K. CRUMP, M. H. FARRELL, AND Y. FENG (2019): "On binscatter," arXiv preprint arXiv:1902.09608.  
CHANDAN, S. (2012): "The Past, Present, and Future of CMBS," Tech. rep.  
CHEN, J., H. LIU, A. SARKAR, AND Z. SONG (2020): "Dealers and the Dealer of Last Resort: Evidence from MBS Markets in the COVID-19 Crisis," Staff Reports 933, Federal Reserve Bank of New York.  
CHERNOV, M., B. R. DUNN, AND F. A. LONGSTAFF (2016): "Macroeconomic-Driven Prepayment Risk and the Valuation of Mortgage-Backed Securities," Working Paper 22096, National Bureau of Economic Research.  
CHOI, D. B. AND J.-E. KIM (2020): "Does Securitization Weaken Screening Incentives?" Journal of Financial and Quantitative Analysis, 1-43.  
CORDELL, L., G. FELDBERG, AND D. SASS (2019): "The Role of ABS CDOs in the Financial Crisis," Journal of Structured Finance, 25, 10-27.  
CREDIT SUISSE (2011): "Agency CMBS Market Primer," Tech. rep.  
DAVIDSON, A. AND A. LEVIN (2014): Mortgage Valuation Models: Embedded Options, Risk, and Uncertainty, Oxford University Press.  
DEFUSCO, A. A., S. JOHNSON, AND J. MONDRAGON (2019): "Regulating Household Leverage," Review of Economic Studies, 87, 914-958.  
DEMYANYK, Y. AND O. VAN HEMERT (2011): "Understanding the subprime mortgage crisis," Review of Financial Studies, 24, 1848-1880.  
DENG, Y., J. M. QUIGLEY, AND R. VAN ORDER (2000): "Mortgage Terminations, Heterogeneity and the Exercise of Mortgage Options," Econometrica, 68, 275-307.  
DI MAGGIO, M., A. KERMANI, B. J. KEYS, T. PISKORSKI, R. RAMCHARAN, A. SERU, AND V. YAO (2017): "Interest Rate Pass-Through: Mortgage Rates, Household Consumption, and Voluntary Deleveraging," American Economic Review, 107, 3550-88.

DI MAGGIO, M., A. KERMANI, AND C. J. PALMER (2020): "How Quantitative Easing Works: Evidence on the Refinancing Channel," Review of Economic Studies, 87, 1498-1528.  
DIEP, P., A. L. EISFELDT, AND S. RICHARDSON (2021): "The Cross Section of MBS Returns," Journal of Finance, 76, 2093-2151.  
EBERLY, J. AND A. KRISHNAMURTHY (2014): "Efficient Credit Policies in a Housing Debt Crisis," Brookings Papers on Economic Activity, 45, 73-136.  
EREL, I., T. NADAULD, AND R. M. STULZ (2013): "Why Did Holdings of Highly Rated Securitization Tranches Differ So Much across Banks?" Review of Financial Studies, 27, 404-453.  
FABOZZI, F. J., ed. (2016): The Handbook of Mortgage-Backed Securities, Oxford University Press, 7th ed.  
FEDERAL RESERVE BANK OF NEW YORK (2021): "Quarterly Trends for Consolidated U.S. Banking Organizations," Second Quarter.  
FINKELSTEIN, D., A. STRZODKA, AND J. VICKERY (2018): "Credit risk transfer and de facto GSE reform," Economic Policy Review, 88-116.  
FOOTE, C. L., K. S. GERARDI, AND P. S. WILLEN (2012): "Why Did So Many People Make So Many Ex Post Bad Decisions? The Causes of the Foreclosure Crisis," Working Paper 18082, National Bureau of Economic Research.  
FOOTE, C. L., L. LOEWENSTEIN, AND P. S. WILLEN (2020): "Cross-Sectional Patterns of Mortgage Debt during the Housing Boom: Evidence and Implications," Review of Economic Studies, 88, 229-259.  
FRAME, W. S., A. FUSTER, J. TRACY, AND J. VICKERY (2015): "The Rescue of Fannie Mae and Freddie Mac," Journal of Economic Perspectives, 29, 25-52.  
FRAME, W. S., B. GREENE, C. HULL, AND J. ZORSKY (2021): "Fed's Mortgage-Backed Securities Purchases Sought Calm, Accommodation During Pandemic," Tech. rep., Dallas Fed Economics.  
FUSTER, A., L. GOODMAN, D. LUCCA, L. MADAR, L. MOLLOY, AND P. WILLEN (2013): "The Rising Gap between Primary and Secondary Mortgage Rates," Federal Reserve Bank of New York Economic Policy Review, 19, 17-39.

FUSTER, A., A. HIZMO, L. LAMBIE-HANSON, J. VICKERY, AND P. S. WILLEN (2021): "How Resilient Is Mortgage Credit Supply? Evidence from the COVID-19 Pandemic," Working Paper 28843, National Bureau of Economic Research.  
FUSTER, A., S. H. LO, AND P. S. WILLEN (2017): "The Time-Varying Price of Financial Intermediation in the Mortgage Market," Staff report no. 805, Federal Reserve Bank of New York.  
FUSTER, A. AND J. VICKERY (2015): "Securitization and the Fixed-Rate Mortgage," Review of Financial Studies, 28, 176-211.  
GAGNON, J., M. RASKIN, J. REMACHE, AND B. SACK (2011): "The Financial Market Effects of the Federal Reserve's Large-Scale Asset Purchases," International Journal of Central Banking, 7, 3-43.  
GANONG, P. AND P. J. NOEL (2020): "Why Do Borrowers Default on Mortgages? A New Method For Causal Attribution," Working Paper 27585, National Bureau of Economic Research.  
GAO, P., P. SCHULTZ, AND Z. SONG (2017): "Liquidity in a Market for Unique Assets: Specified Pool and To-Be-Announced Trading in the Mortgage-Backed Securities Market," Journal of Finance, 72, 1119-1170.  
GERARDI, K., A. LEHNERT, S. M. SHERLUND, AND P. WILLEN (2008): "Making Sense of the Subprime Crisis," Brookings Papers on Economic Activity, 69-145.  
GETE, P. AND M. REHER (2020): "Mortgage Securitization and Shadow Bank Lending," Review of Financial Studies, 34, 2236-2274.  
GOETZMANN, W. N. AND F. NEWMAN (2010): "Securitization in the 1920's," Working Paper 15650, National Bureau of Economic Research.  
GREEN, R. K. (2013): Introduction to Mortgages and Mortgage Backed Securities, no. 9780124017436 in Elsevier Monographs, Elsevier.  
GREENWALD, D. L., T. LANDVOIGT, AND S. V. NIEUWERBURGH (2021): "Financial Fragility with SAM?" Journal of Finance, 76, 651-706.  
GUREN, A. M., A. KRISHNAMURTHY, AND T. J. McQUADE (2021): "Mortgage Design in an Equilibrium Model of the Housing Market," Journal of Finance, 76, 113-168.  
HANCOCK, D. AND W. PASSMORE (2011): "Did the Federal Reserve's MBS purchase program lower mortgage rates?" Journal of Monetary Economics, 58, 498-514.

HANSON, S. G. (2014): "Mortgage Convexity," Journal of Financial Economics, 113, 270-299.  
HANSON, S. G., D. O. LUCCA, AND J. H. WRIGHT (2021): "Rate-Amplifying Demand and the Excess Sensitivity of Long-Term Rates," Quarterly Journal of Economics, 136, 1719-1781.  
HAYRE, L. (2001): "A Concise Guide to Mortgage-Backed Securities (MBSs)," in Salomon Smith Barney Guide to Mortgage-Backed and Asset-Backed Securities, ed. by L. Hayre, New York, NY: Wiley and Sons, chap. 1, 9-68.  
HUH, Y. AND Y. S. KIM (2020): "The Real Effects of Secondary Market Trading Structure: Evidence from the Mortgage Market," Working Paper, Federal Reserve Board.  
KANDRAC, J. (2018): "The Costs of Quantitative Easing: Liquidity and Market Functioning Effects of Federal Reserve MBS Purchases," International Journal of Central Banking, 14, 259-304.  
KEYS, B. J., T. MUKHERJEE, A. SERU, AND V. VIG (2010): "Did Securitization Lead to Lax Screening? Evidence from Subprime Loans," Quarterly Journal of Economics, 125, 307-362.  
KEYS, B. J., D. G. POPE, AND J. C. POPE (2016): "Failure to Refinance," Journal of Financial Economics, 122, 482-499.  
KIM, Y., K. PENCE, R. STANTON, J. WALDEN, AND N. WALLACE (2022): "Non-Banks and Mortgage Securitization," Annual Review of Financial Economics, forthcoming.  
KIM, Y. S., S. M. LAUFER, K. PENCE, R. STANTON, AND N. WALLACE (2018): "Liquidity Crises in the Mortgage Market," Brookings Papers on Economic Activity, 49, 347-428.  
KIM, Y. S., D. LEE, T. SCHARLEMMANN, AND J. VICKERY (2021): "Intermediation Frictions in Debt Relief: Evidence from CARES Act Forbearance," Working Paper.  
KRISHNAMURTHY, A. AND A. VISSING-JORGENSEN (2011): "The Effects of Quantitative Easing on Interest Rates: Channels and Implications for Policy," Brookings Papers on Economic Activity, pp. 215-287.  
KRUGER, S. (2018): "The effect of mortgage securitization on foreclosure and modification," Journal of Financial Economics, 129, 586-607.  
LEWIS, M. (2010): *Liar's Poker*, W. W. Norton.  
LI, W. AND Z. SONG (2020): "Asset Heterogeneity, Market Fragmentation, and Quasi-Consolidated Trading," Working paper.

LIU, H., Z. SONG, AND J. VICKERY (2021): "Defragmenting Markets: Evidence from Agency MBS," Staff Reports 965, Federal Reserve Bank of New York.  
LOUTSKINA, E. AND P. E. STRAHAN (2009): "Securitization and the Declining Impact of Bank Finance on Loan Supply: Evidence from Mortgage Originations," Journal of Finance, 64, 861-889.  
Low, D. (2021): "What Triggers Mortgage Default? New Evidence from Linked Administrative and Survey Data," Working Paper, CFPB.  
MALKHOZOV, A., P. MUELLER, A. VEDOLIN, AND G. VENTER (2016): "Mortgage Risk and the Yield Curve," Review of Financial Studies, 29, 1220-1253.  
McCONNELL, J. J. AND S. A. BUSER (2011): "The Origins and Evolution of the Market for Mortgage-Backed Securities," Annual Review of Financial Economics, 3, 173-192.  
MEULI, J., T. NELLEN, AND T. NITSCHKA (2021): "Covered bonds, loan growth and bank funding: The Swiss experience since 1932," International Finance, 24, 77-94.  
MIAN, A. AND A. SUTFI (2015): House of Debt, University of Chicago Press.  
(2021): "Credit Supply and Housing Speculation," Review of Financial Studies, 35, 680-719.  
MORDEL, A. AND N. STEPHENS (2015): "Residential Mortgage Securitization in Canada: A Review," Bank of Canada Financial System Review.  
NADAULD, T. D. AND S. M. SHERLUND (2013): "The impact of securitization on the expansion of subprime credit," Journal of Financial Economics, 107, 454-476.  
OUAZAD, A. AND M. E. KAHN (2019): "Mortgage Finance and Climate Change: Securitization Dynamics in the Aftermath of Natural Disasters," Working Paper 26322, National Bureau of Economic Research.  
PISKORSKI, T., A. SERU, AND V. VIG (2010): "Securitization and distressed loan renegotiation: Evidence from the subprime mortgage crisis," Journal of Financial Economics, 97, 369-397.  
PROKOPCZUK, M., J. B. SIEWERT, AND V. VONHOFF (2013): "Credit risk in covered bonds," Journal of Empirical Finance, 21, 102-120.  
RAJAN, U., A. SERU, AND V. VIG (2015): "The failure of models that predict failure: Distance, incentives, and defaults," Journal of Financial Economics, 115, 237-260.

ROBERTS, D., A. SARKAR, AND O. SHACHAR (2018): "The Costs and Benefits of Liquidity Regulations," Staff Reports 852, Federal Reserve Bank of New York.  
SADHWANI, A., K. GIESECKE, AND J. SIRIGNANO (2021): "Deep Learning for Mortgage Risk," Journal of Financial Econometrics, 19, 313-368.  
SIFMA (2021): "Uniform Practices for the Clearance and Settlement of Mortgage-Backed Securities and Other Related Securities," Securities Industry and Financial Markets Association.  
SONG, Z. AND H. ZHU (2019): "Mortgage Dollar Roll," Review of Financial Studies, 32, 2955-2996.  
STANDARD AND POOR'S (2020): "A Primer On China's Residential Mortgage Backed Securities Market".  
(2021): "Global Structured Finance 2021 Outlook,".  
STANTON, R. (1995): "Rational Prepayment and the Valuation of Mortgage-Backed Securities," Review of Financial Studies, 8, 677-708.  
TOZER, T. (2019): "A Primer and Perspective on Ginnie Mae," Milken Institute Discussion Paper.  
URBAN INSTITUTE (2021): "Housing Finance At A Glance," Tech. rep., Housing Finance Policy Center.  
VICKERY, J. AND J. WRIGHT (2013): "TBA Trading and Liquidity in the Agency MBS Market," Federal Reserve Bank of New York Economic Policy Review, 19, 1-18.  
WONG, M. (2018): "CMBS and Conflicts of Interest: Evidence from Ownership Changes for Servicers," Journal of Finance, 73, 2425-2458.  
XIAO, Z. (2021): "Interest Rate Risk, Prepayment Risk and Banks' Securitization of Mortgages," Working Paper, University of British Columbia.

# Appendix for "Mortgage-Backed Securities"

# Andreas Fuster, David Lucca and James Vickery

# A Variable definitions for construction of Figure 1

All statistics are derived from the Financial Accounts of the United States, except for nominal GDP (source: BEA, via FRED). Commercial mortgages and MBS are inclusive of multifamily loans but exclude farm loans.

# Total mortgage debt: residential:

- L. 217, FL893065105: One-to-four family residential mortgages

# Total mortgage debt: commercial:

- L. 217, FL893065405: Multifamily residential + L. 217, FL893065505: Commercial

# Total MBS: residential:

- L. 126, FL413065105: One-to-four-family residential mortgages (GNM) + L. 125, FL403065195: Mortgages, One-to-four-family residential, consolidated trusts (GSEs)+ L. 127, FL673065105: One-to-four family residential (ABS)

# Total MBS: commercial:

- L. 126, FL413065505: Commercial mortgages (GNM) +  
L. 126, FL413065405: Multifamily residential mortgages (GNM) +  
L. 125, FL403065495: Multifamily residential Consolidated trusts (GSEs) +  
L. 127, FL673065405: Multifamily residential (ABS) +  
L. 127, FL673065505: Commercial (ABS)

# Total agency MBS: residential:

- L. 126, FL413065105: One-to-four-family residential mortgages (GNM) + L. 125, FL403065195: Mortgages, one-to-four-family residential, consolidated trusts (GSEs)

# Total agency MBS: commercial:

- L. 126, FL413065505: Commercial mortgages (GNM) + L. 126, FL413065405: Multifamily residential mortgages (GNM) + L. 125, FL403065495: Multifamily residential, Consolidated trusts (GSEs)

# Nominal GDP:

- Nominal GDP, Seasonally Adjusted Annual Rate https://fred.stlouisfed.org/series/GDP. Note: Statistics in figure normalized by four-quarter-ended GDP

Table A.1: Investors in agency and GSE-backed securities  

<table><tr><td></td><td>$bn</td><td>% of total</td></tr><tr><td>Depository institutions</td><td>3357</td><td>32%</td></tr><tr><td>Federal Reserve</td><td>2414</td><td>23%</td></tr><tr><td>Rest of the world</td><td>1145</td><td>11%</td></tr><tr><td>Mutual funds</td><td>713</td><td>7%</td></tr><tr><td>Money market funds</td><td>499</td><td>5%</td></tr><tr><td>State and local governments</td><td>428</td><td>4%</td></tr><tr><td>Life insurance companies</td><td>348</td><td>3%</td></tr><tr><td>Credit unions</td><td>297</td><td>3%</td></tr><tr><td>Pension funds</td><td>260</td><td>2%</td></tr><tr><td>Households and nonprofit organizations</td><td>247</td><td>2%</td></tr><tr><td>Government sponsored enterprises</td><td>219</td><td>2%</td></tr><tr><td>State and local government defined benefit pension funds</td><td>201</td><td>2%</td></tr><tr><td>Mortgage real estate investment trusts</td><td>188</td><td>2%</td></tr><tr><td>Property-casualty insurance companies</td><td>137</td><td>1%</td></tr><tr><td>Foreign banking offices</td><td>59</td><td>1%</td></tr><tr><td>Other</td><td>78</td><td>1%</td></tr></table>

Includes issues of federal budget agencies; issues of government sponsored enterprises such as Fannie Mae and FHLB; and agencyand GSE-backed mortgage pool securities issued by Ginnie Mae, Fannie Mae, Freddie Mac, and the Farmers Home Administration. Source: Financial Accounts of the United States, Table L.211, 2021:Q2.
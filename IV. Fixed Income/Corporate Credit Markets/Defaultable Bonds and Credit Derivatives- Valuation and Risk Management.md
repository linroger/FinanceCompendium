# Defaultable Bonds and Credit Derivatives: Valuation and Risk Management

D.L. Chertok *†

December 22, 2004

# Abstract

This paper surveys the most common models and methodologies for valuing defaultable bonds and credit derivatives. Structural and reduced-form pricing models are discussed and credit modelling methodologies are compared with respect to their applicability to defaultable asset classes.

# 1 Introductory remarks

In recent years, market participants witnessed increased activity in secondary corporate, particularly high-yield bond market, structured and synthetic credit products and derivatives. The amount of outstanding corporate debt as of September 30, 2002 was estimated at  \$4 trillion while asset-backs amounted to\$ 1.5 trillion and mortgage-based securities to  \$4.6 trillion. British Bankers Association estimated credit derivatives volumes to be close to\$ 2 trillion at the end of 2002 and expects them to increase to \$4.8 trillion by end of 2004.

While the issuance of "traditional" corporate paper has been hindered by unfavourable economic conditions, the emphasis has increasingly shifted toward securitized assets and derivatives. The increasing popularity of securitized investments can be attributed to the following factors (see [2]):

*Quantitative Developer, Deerfield Capital Management, LLC., 8700 W. Bryn Mawr Ave.,  ${12}^{th}$  Floor,Chicago,IL 60631; tel.: (773) 380-1611, email: dchertok@deerfieldcapital.com

I would like to thank Harry Danilevski and Luke Knecht for helpful discussions

$^{\ddagger}$ Opinions expressed in this paper are author's only and do not necessarily reflect the views of Deerfield Capital Management, LLC.

Table 1: Advantages of securitized credit products  

<table><tr><td>Loans and other financial contracts</td><td>Security</td></tr><tr><td>illiquid</td><td>liquid/tradeable</td></tr><tr><td>originator bears the risk</td><td>risk transferred away to investors</td></tr><tr><td>originator is responsible for risk assessment</td><td>independent third party evaluation</td></tr><tr><td>pricing is difficult, at best mark-to-model</td><td>marked to market</td></tr><tr><td>high operating cost</td><td>operating costs lower</td></tr><tr><td>limited investor base</td><td>many interested investors</td></tr><tr><td>available only to big players</td><td>smaller firms can take advantage of arbitrage opportunities</td></tr></table>

Incorporating defaultable securities into the investor's portfolio, however, implies the acceptance of an elevated level of risk. The need to manage such investments has stimulated rapid development of quantitative modelling tools for the purposes of portfolio optimization and risk management.

# 2 Sources of risk

A portfolio of defaultable securities is subject to a multitude of risks, e.g., (see [2]):

- investment and reinvestment risk;  
- interest rate risk;  
- asset/liability mismatch;  
credit risk:

- default risk;  
- credit migration risk;  
- recovery rate risk;  
- spread risk;  
- macroeconomic risk;  
- asset correlation risk.

While some of these risks are not easily, if at all, quantifiable, a consistent mathematical model can improve the manager's ability to manage overall portfolio risk and correctly position himself in anticipation of market events.

# 3 Valuation

Analytical models for valuing defaultable securities fall into two main categories (see [7], [6]): structural and reduced form. Practitioners often use statistical models based on agency ratings or macroeconomic factors.

# 3.1 Structural models

Structural models rely on assumptions about the value of the firm and the volatility of its assets. The former must be deduced from accounting data which is subject to manipulation, while the latter may only be estimated from historical data with questionable applicability to the future. Structural approach was pioneered by Merton [4] and is currently used in Moody's KMV framework.

Merton's model is an extension of the Black-Scholes approach [3] makes the following assumptions:

- the firm's liabilities are of the same type (e.g., bonds);  
- the firm's debt is zero coupon with no embedded options;  
- interest rates are stationary;  
- bankruptcy occurs only at maturity and costs nothing;  
- claims to the firm's assets are satisfied in strict priority.

Merton's model has a closed-form solution. The model's idealized assumptions were relaxed by Black and Cox [10] to include default prior to maturity by virtue of assets falling below a certain level. Longstaff and Schwartz [12] incorporated interest rate risk and allowed for deviations from the strict priority of claims against the assets. This model can be used for valuing both fixed and floating rate debt through closed-form solutions. Briys and de Varenne [11] introduced the discounting of the bankruptcy-triggering value at the risk-free rate (stochastic) and eliminated the possibility of the bond holder receiving a payment exceeding the firm's value. Madan and Unal [17] utilize the structural hazard rate approach

which relies on a stochastic hazard rate. The model is calibrated to the term structure of credit spreads. Hui [21] and Hui and Lo incorporated a default barrier dependent on stochastic interest rates and the volatility of the firm value. Ericsson and Reneby [19] proposed one-factor models of the firm value and liabilities and validated it on a sample of US corporate bonds.

In the context of securitized and synthetic credit products, Hull and White [24] developed a model for valuing plain vanilla and binary credit default swaps (CDS) on the assumption of constant interest rates, known recovery rates and claim amounts. The model appears to underestimate the observed yield spread to Treasury, which is consistent with neglecting risks other than default. Taking their idea one step further, the authors incorporate default correlations into their original model to value basket CDS's [25].

# 3.2 Reduced form models

Reduced form models are based on the "no arbitrage" argument by assuming that the probability of default is implicit in the observed credit spread of the security under consideration. As pointed out in [9], however, the observed credit spread incorporates the prices of liquidity risk, tax and regulatory constraints. It may therefore be treated as an upper bound on the price of a credit put.

Schönbucher [13] did away with the restrictive liquidation clause and introduced the notion of multiple defaults on the same debt. Duffie and Singleton [16] replace the short-term interest rate with the default-adjusted rate as the discount rate. The authors apply this framework to the pricing of callable corporate bonds and a credit spread put. Zhou [14] attempted to reconcile the differences between structural and reduced-form models by introducing a jump-diffusion model which allowed for a sudden jump in the firm value. This, in turn, lead to a more realistic term structure of credit spreads. Nielsen and Ronn [15] developed a two-factor stochastic model of default with the risk-free rate and risky yield spread as factors.

Jarrow [27] devised an algorithm which incorporated firm equity prices into the reduced-form framework. The algorithm provides for an explicit estimation of the default intensity and liquidity premium. Jarrow and Yu [18] introduced the concept of counterparty risk, i.e., the risk that the default of the firm's counterparty may affect the firm's own default probability. The authors showed how a CDS can be mispriced when the default correlation between primary and secondary default entities is ignored. Jarrow and Yildirim [18] developed a model for valuing a CDS in the presence of correlation between market and credit risk. The model incorporates stochastic interest rates, an interest rate-dependent default

intensity function and a constant recovery rate. Yu [20] estimated the default risk premium by decomposing the expected return on a defaultable bond into three parts: em default-free component, risk premium due to macroeconomic factors (state variables) and survival bias, i.e., the difference between risk-neutral and physical mean-loss rates.

Reduced-form models proved especially useful when pricing securitized and synthetic credit products. Duffie and Gårleanu [23] proposed a comprehensive CDO valuation model incorporating multi-issuer default, sectoral, regional, global and recovery risks and diversity scores. Results were presented for uniform and fast prioritization schemes. Laurent and Gregory [31] developed an algorithm for pricing basket CDS's and CDO's based on the copula approach.

# 3.3 Statistical models

Hurst [28] contended that the market is often an accurate predictor of the default rate. The author attempted to forecast the default rate using GDP projections and default development patterns and outlays a methodology for valuing a CDO. Unfortunately, the paper's prediction of the default rate in 2001 and 2002 fell far short from the actual figure.

# 4 Credit modelling techniques employed by credit agencies

Credit agencies use predominantly statistical models for default probability estimation. These models are based on rating systems developed by the agency to gauge the probability of default of any given pool of assets.

# 4.1 The Moody's approach to rating CDO's

A concise explanation of this methodology can be found in [33]. The ratings are based on the concept of diversity score. The actual portfolio is replaced with a (smaller) collection of assets with (an approximately) the same return distribution. Each instrument in this idealized portfolio has the same par value, rating, average coupon and maturity. The number of assets in the model portfolio is the diversity score. It reflects correlations in default rates and the distribution of asset size in the actual portfolio. When possible, assets should be grouped into industries and the within-industry diversity scores should be added together. Whenever

such grouping is not possible ( structured instruments ), explicit assumptions have to be made about default correlations between assets. A model portfolio can then be constructed by matching the first two moments of the return distribution of the actual portfolio.

Once the diversity score is calculated, the following average characteristics of the actual portfolio are computed:

- weighted average rating factor (WARF). This is a number that corresponds to the 10-year cumulative default rate for an instrument with a given rating. WARF determines the average probability of default during the weighted average life of the pool;  
- weighted average coupon (WAC). This parameter can be varied with time to assess different scenarios;  
- weighted average spread (WAS);  
- weighted average recovery rate (WARR).

The likelihood of a possible cash flow shortfall is estimated based on WARF and WARR values. Further, the following qualitative factors are assessed:

- specific covenant and indenture provisions;  
- collateral trade restrictions;  
- coverage and collateral quality tests;  
- collateral "ramp-up" purchases;  
- collateral liquidation value;  
- synthetic and structured instrument risk;  
- asset-liability mismatches;  
insurer guarantees;  
- early redemption risk;  
- manager expertise, operational support and compliance.

# 4.2 The Binomial Expansion Method

The Binomial Expansion Method, originally introduced by Moody's in [30], is based on the Diversity Score concept. This concept employs an orthogonal projection of the space of defaultable assets onto an  $D$ -dimensional subspace. Here  $D$  is the diversity score, the number of independent assets that are homogeneous and uncorrelated, determined by some suitable approximation. The (expected) loss is then calculated as

$$
E (L o s s) = \sum_ {j = 0} ^ {D} P _ {j} L _ {j}, \tag {1}
$$

where

$$
P _ {j} = C _ {D} ^ {j} p ^ {j} (1 - p) ^ {D - j} \tag {2}
$$

is the probability of simultaneous  $j$  defaults among the  $D$  assets comprising the basis portfolio. The variance of loss is computed as

$$
\operatorname {V a r} (\text {L o s s}) = \sum_ {j = 0} ^ {D} P _ {j} [ E (\text {L o s s}) - L _ {j} ] ^ {2}. \tag {3}
$$

An expansion of this method which incorporates a state space of (discrete) recovery rates:

$$
E (L o s s) = \sum_ {j = 0} ^ {D} P _ {j} \sum_ {q = 1} ^ {n} \omega_ {q} L _ {j} \left(\alpha_ {q}\right), \tag {4}
$$

where  $\alpha_{i}, i = \overline{1,n}$  are the possible values of the recovery rate corresponding to the default of  $j$ -th asset,  $\omega_{i}, i = \overline{1,n}$  are the corresponding probabilities. The variance of loss is computed as

$$
\operatorname {V a r} (\text {L o s s}) = \sum_ {j = 0} ^ {D} P _ {j} \sum_ {q = 1} ^ {n} \left[ E (\text {L o s s}) - L _ {j} \left(\alpha_ {q}\right) \right] ^ {2}. \tag {5}
$$

# 4.3 Moody's LossCalc™

Moody's defines recovery on a defaulted credit as its value approximately one month after default. Recovery rate is further defined as a percentage of par value of the defaulted debt. Loss given default ( LGD ) is then calculated as

$$
L G D = 1 - \text {R e c o v e r y} R a t e \tag {6}
$$

Moody's employs  $\mathrm{LossCalc}^{\mathrm{TM}}$  [32] to potential loss in the event of default as

Potential Credit Loss  $=$  Probability of Default  $\times$  Loss Given Default (7)

To predict LGD, LossCalc  $\mathbf{\tau}^{\mathrm{TM}}$  uses nine factors which can be grouped as follows:

- debt-type (loan, bond, preferred stock) and seniority grade (secured, senior unsecured, subordinate etc.):  
- firm-specific capital structure: leverage and seniority standing;  
- industry: moving average of industry recoveries, banking industry indicator;  
- macroeconomic: one-year median default probability calculated using Moody's proprietary models and data, Moody's Bankrupt Bond Index, trailing 12-month speculative grade default rate, changes in the index of Leading Economic Indicators.

# 5 Risk management

Guo [2] suggested the following factors as the main constituents of an investment manager's risk profile:

average NPV P&L;  
- distribution of NPV P&L: max/min/std  
- probability of first dollar cash investment loss, average dollar loss;  
- VaR measures;  
- IRR, Sharpe ratio.

Taken in their entirety, they should help an investor decide on the suitability of the investment manager for the investor's portfolio given the portfolio risk constraints.

Several methodologies and corresponding software are currently available for credit risk analysis. A comparison of most widely accepted methodologies is presented in Table 2.

These models have the following common features:

Table 2: Credit risk models  

<table><tr><td>Name</td><td>Developed by</td><td>Basis and Assumptions</td><td>Advantages</td><td>Disadvantages</td></tr><tr><td>CreditMetrics TM</td><td>J.P. Morgan Chase</td><td>Merton&#x27;s approach [4], credit migration analysis, credit VaR</td><td>isolates the individual marginal risk contributions to the portfolio</td><td>heavily relies on historical data for defaults and credit migration; no market risk, no non-linear instruments</td></tr><tr><td>CreditPortfolio-View TM</td><td>McKinsey</td><td>multifactor model based on macroeconomic considerations</td><td>abstracts from firm-specific historical data</td><td>macroeconomic data may be hard to analyze and interpret</td></tr><tr><td>CreditRisk+ TM</td><td>Credit Suisse Financial Products</td><td>actuarial model: default modelled as Poisson process; default rates are stochastic</td><td>makes no assumptions about the causes of default, easy to implement, few inputs</td><td>no market risk, no non-linear instruments</td></tr><tr><td>CreditPortfolio-Manager TM</td><td>KMV Moody&#x27;s</td><td>actuarial multi-factor model: default rates are functions of macroeconomic variables</td><td>does not rely on historical agency data</td><td>firm value can be hard to estimate</td></tr></table>

- a system of rating credits;  
- assumptions about correlation of probabilities of default (PD) across borrows;  
- assumptions about loss given default (LGD);

- assumptions regarding the correlation between PD and LGD

Rating systems can be classified as [35]

- market-based (used by KMV Moody's): rely on Merton's approach [4] to derive default probabilities from equity prices. PD is assumed to be a decreasing function of the firm equity price and an increasing function of the firm asset volatility and leverage. Potential difficulties include underestimation of PD when the market is "overvalued" and quick reversion in PD changes when general market volatility increases.  
- based on macroeconomic factors as well as firm-specific information.

Transition matrices employed in the models should be "cyclical": a recession transition matrix is quite different from a boom transition matrix.

The Basel Committee recommends the following simplifying assumptions when calculating PD correlation between borrowers:

- all borrowers exhibit sensitivity to a single risk factor;  
- highest-quality borrowers have a correlation of 0.2;  
- high-risk borrowers have a correlation of 0.1.

As pointed out by Altman et al [36], PD and LGD appear to be positively correlated, and if this indeed true, it may amplify the procyclicality of the default-recovery cycle, i.e., deteriorating business conditions lead to the tightening of capital requirements by the banks, which, in turn, adversely affects access to capital and the vicious cycle continues.

# 6 Portfolio management

Credit risk is conventionally decomposed into expected loss (EL) and unexpected loss (UL):

$$
C r e d i t R i s k = E x p e c t e d L o s s + U n e x p e c t e d L o s s. \tag {8}
$$

EL is the expected value of portfolio losses given the current conditions, while UL is the volatility of portfolio losses. Methods for quantifying credit risk fall into two categories ( see [37]):

- loss-based method. The exposure is assumed to be held at maturity., i.e., is either repaid at par or defaults and is recovered. Credit migration has no effect on the value of the portfolio. This method can be used for loan portfolios where no market for the assets exists;

- NPV-based method. The value of the portfolio is calculated using either through credit spreads or by marking-to-model. This method can be used for corporate bonds or credit derivatives where the market for the assets exists.

Portfolio models can be used for

- solvency analysis;  
- credit risk concentrations and portfolio optimization;  
- sensitivity analysis and stress testing.

# A.1 Calculation of firm asset value

The following calculation is based on the example given by Chance [34]. Let the firm assets be currently worth  $A$ , its market debt is worth  $B$  and its equity is worth  $S$ . Then

$$
A = B + S. \tag {A.1}
$$

Suppose the firm has total outstanding debt with face value  $F$  due at time  $T$ . Then at time  $T$  stock holdings are worth  $\max \{A(T) - F, 0\}$ , i.e., the firm stock can be viewed as a call option on the firm assets. Recall the put-call parity equation:

$$
C _ {X} (t, T) = P _ {X} (t, T) + S (t) - X e ^ {- r T}, \tag {A.2}
$$

where  $C_X(t,T)$  and  $P_X(t,T)$  are the ( per share ) prices at time  $t$  of a call and put on the firm stock struck at  $X$ ,  $S(t)$  is the price of a share of stock and  $r$  is the risk-free interest rate. Extending our analogy, observe that

$$
S (t) = P (t, T) + A (t) - F e ^ {- r T}, \tag {A.3}
$$

where  $A(t)$  and  $F$  are expressed per share. The value of firm assets calculated this way can be input into a structural model.

# A.2 An approximation for the default intensity when the recovery rate is known

Consider a risky bond that is trading at par unit value at a spread  $s$  over the current risk-free rate  $r$  and matures at time  $T \gg 1$ . Under risk-neutral valuation with continuous compounding, its current value (1) can be expressed as (see [15]):

$$
1 = e ^ {- r d t} \left[ D \lambda d t + e ^ {(r + s) d t} (1 - \lambda d t) \right], \tag {A.4}
$$

where  $D$  is the recovery rate and  $\lambda$  is the (instantaneous) default intensity. In (A.4),  $D\lambda dt$  is the bond payoff at time  $t + dt$  in the event of default during time interval  $dt$  (assuming the bond is not currently in default),  $e^{(r + s)dt}$  is the expected value of the bond at time  $t + dt$  (assuming there is no default during  $dt$ ) and  $e^{-rdt}$  is the discount factor.

Employing a first-order approximation  $e^{\epsilon} \approx \epsilon, \epsilon \ll 1$ , we can transform (A.4) into

$$
\begin{array}{l} 1 = e ^ {- r d t} \left[ D \lambda d t + e ^ {(r + s) d t} (1 - \lambda d t) \right] \\ \approx e ^ {- r d t} \left[ D \left(e ^ {\lambda d t} - 1\right) + e ^ {(- r + r + s - \lambda) d t} \right. \\ = D e ^ {(\lambda - r) d t} - D e ^ {- r d t} + e ^ {(s - \lambda) d t} \\ \approx D [ 1 + (\lambda - r) d t - (1 - r d t) ] + [ 1 + (s - \lambda) d t ] \\ = 1 + D \lambda d t + s d t - \lambda d t, \tag {A.5} \\ \end{array}
$$

and hence,

$$
s - \lambda (1 - D) = 0, \tag {A.6}
$$

so

$$
\lambda = \frac {s}{1 - D}, D \neq 0. \tag {A.7}
$$

Therefore, if the recovery rate is known together with the bond spread to Treasury, its (instantaneous) default intensity  $\lambda$  can be calculated from A.7. Assuming constant (i.e., stationary) default intensity for the forecast period  $\Delta t$ , one can then calculate the probability of default of the underlying credit as

$$
P _ {d} = \lambda \Delta t. \tag {A.8}
$$

A non-stationary default intensity  $\lambda(t)$  can be computed only if the processes for non-stationary interest rate, survival probability and term structure of credit spreads  $r(t), D(t)$  and  $s(t)$  are all known:

$$
P _ {d} = \int_ {t} ^ {t + \Delta t} \lambda (t) d t. \tag {A.9}
$$

Equation (A.7) has important, albeit obvious, implications. First, the default intensity of a credit can be gauged by its spread to Treasury: The higher the spread, the higher the perceived probability of default. Second, in the unlikely event that the spread does not change even though the credit quality has deteriorated, it means that the expectation of the recovery rate has improved ( $1 - D$  has decreased, so  $D$  has increased). Conversely, if an improvement in credit quality does not lead to the narrowing of the spread, it means that the expectation of the recovery rate has fallen.

# References

[1] Financial institutions plan to significantly increase CBO/CLO investments, Capital Market Risk Advisors, April 2000 http://www.cmra.com/cgi-bin/CLO-CBO.cgi  
[2] Guo, D., CDO: Securitization of loans and bonds, 2001 http://www.aimhi.com/VC/tcfa/DajiangGuo.pdf  
[3] Black, F., Scholes, M., The pricing of options and corporate liabilities, The Journal of Political Economy, vol. 81, no. 3, (May-June 1973), pp. 637-654.  
[4] Merton, R., On the Pricing of Corporate Debt: The Risk Structure of Interest Rates, The Journal of Finance, 29 (1974), pp. 449-470  
[5] RiskMetrics™ - Technical document, J.P. Morgan/Reuters, 1996 (4th ed.), http://www.riskmetrics.com/  
[6] Credit risk modelling: Current practices and applications, Basle Committee on Banking Supervision, Basle, April 1999, http://www.bis.org/publ/bcbs49.pdf  
[7] Smithson, C., Hayt, G., How the market values credit derivatives, The RMA Journal, March 2000, http://www.rutterassociates.com/PDF/How%20the%20Mkt%20Values%20Credit%20Derivatives%20  
[8] Smithson, C., Hayt, G., The state of the art in credit portfolio modeling, The RMA Journal, March 2001, http://www.rutterassociates.com/PDF/2%20State%20of%20Art%20in%20Credit%20Portfolio%20Modeling%20(RMA,%20Mar%202001).pdf

[9] The problem with credit derivatives, TechHackers' QuantNews, December 1998, http://www.techhackers.com/pdf/qn_2.pdf  
[10] Black, F., Cox, J., Valuing Corporate Securities: Some Effects of Bond Indenture Provisions, Journal of Finance, Vol. XXXI, No. 2, (May 1976), pp. 351-367  
[11] Briys, E., de Varenne, F., Valuing risky fixed rate debt: An extension Journal of Financial and Quantitative Analysis, Vol. 32, No. 2, June 1997  
[12] A simple approach to valuing risky fixed and floating rate debt, Longstaff, F., Schwartz, E., The Journal of Finance, vol. L, No. 3 (July 1995), pp. 789-819, http://www.anderson.ucla.edu/acad_unit/finance/faculty/longstaff/22-93.pdf  
[13] Schonbucher, P., Term structure modelling of defaultable bonds, Discussion Paper 272, London School of Economics, 1997, http://fmg.lse.ac.uk/pdfs/dp0272.pdf  
[14] Zhou, C., A jump-diffusion approach to modeling credit risk and valuing defaultable securities, Federal Reserve Board, 1997, http://www.federalreserve.gov/pubs/feds/1997/199715/199715pap.pdf  
[15] Nielsen, S., Ronn, E., The valuation of default risk in corporate bonds and interest rate swaps, July 1998, http://www.math.ku.dk/~nielsen/ps_files/cb10.ps  
[16] Duffie, D., Singleton, K., Modeling term structures of defaultable bonds, The Review of Financial Studies, Special 1999 vol. 12, no. 4, pp. 687-720, http://www.stanford.edu/~duffie/ds.pdf  
[17] Madan, D., Unal, H., A two-factor hazard-rate model for pricing risky debt and the term structure of credit spreads, June 1999, Working Paper 99-32, The Wharton Financial Institutions Center, http://fic.wharton.upenn.edu/fic/papers/99/9932.pdf  
[18] Jarrow, R., Yu, F., Counterparty risk and the pricing of defaultable securities, The Journal of Finance, vol. LVI, No. 5 (October 2001), pp. 1765-1800, http://web.gsm.uci.edu/~fanyu/papers/Yu.pdf

[19] Ericsson, J., Reneby, J., The valuation of corporate liabilities: Theory and tests, SSE/EFI Working Paper Series in Economics and Finance No. 445, January 2003, http://swopec.hhs.se/hastef/papers/hastef0445.pdf  
[20] Yu, F., Modeling expected return on defaultable bonds, University of California, Irvine, April 4, 2002, http://web.gsm.uci.edu/~fanyu/papers/yu\_\_fan-expectedreturn.pdf  
[21] Hui, C.H., Pricing corporate bonds with risk adjustable default barrier, Hong Kong Monetary Authority, 1999, http://www.phy.cuhk.edu.hk/people/teach/cflo/Finance/papers/publications/bond_dynamic_barrier_main3.pdf  
[22] C.H. Hui and C.F. Lo A note on risky bond valuation, International Journal of Theoretical and Applied Finance, 3(3) (2000), pp. 575-580, http://www.phy.cuhk.edu.hk/people/teach/cflo/Finance/papers/publications/riskybond_IJTAF.pdf  
[23] Duffie, D., Gârleanu, N., Risk and valuation of collateralized debt obligations, Graduate School of Business, Stanford University, September 2001, http://www.stanford.edu/~duffie/ddng.pdf  
[24] Hull, J., White, A., Valuing credit default swaps II: No counterparty default risk, Joseph L. Rotman School of Management, University of Toronto, April 2000, http://www.rotman.utoronto.ca/finance/papers/CredDefSw2Dec211.pdf  
[25] Hull, J., White, A., Valuing credit default swaps II: Modeling default correlations, Joseph L. Rotman School of Management, University of Toronto, April 2000, http://www.rotman.utoronto.ca/finance/papers/CredDefSw2Dec211.pdf  
[26] Jarrow, R., Default parameter estimation using market prices, Financial Analysts Journal, vol. 57, no. 5 (September/October 2001), pp. 75-92 http://www.aimrpubs.org/faj/issues/v57n5/pdf/f0570075a.pdf  
[27] Jarrow, R., Yildirim, Y., A simple model for valuing default swaps when both market and credit risks are correlated, Kamakura Corporation and

Siracuse University, December 2001, http://sominfo.syr.edu/facstaff/yildiray/creditderivative.pdf  
[28] The default cycle and implications for CDO valuation, First Union Securities, August 2001, http://www.securitization.net/pdf/funion_cdo_073001.pdf  
[29] Cifuentes, A., Polansky, J., Wang, J., Analyzing the risk of structured redit (CDO) branches: The modified binomial expansion method, Triton Partners, September 2000, http://www.tritonpartners.com/pdf/Triton%20Partners' %20Binomial%20Expansion%  
[30] Cifuentes, A., O'Connor, G., The binomial expansion method applied to CBO/CLO Analysis, Moody's Investors Service, December 1996, http: //www.moodys.com/cust/research/avalon/Publication/Special%20Report/noncategorized_number/SF5066.pdf  
[31] Laurent, J.-P., Gregory, J., Basket default swaps, CDO's and factor copulas, Working paper, October 2002, http://www.defaultrisk.com/pdf_files/Basket 默认_Swaps_CDO_n_Fctr_Cpl.pdf  
[32] Gupton, G., Stein, R., LossCalc™: Moodys model for predicting loss given default (LGD), Moody's Investors Service, February 2002, http://riskcalc.moodysrms.com/us/research/lied/losscalc_methodology.pdf  
[33] Gluck, J., Rating CDOs: The Moodys approach, Risk Publications, November 2000, http://www.riskpublications.com/credit/nov00/features/ratings.htm  
[34] Chance, D., Default risk as an option, Teaching note 96-01, Virginia Polytechnic Institute and State University, October 2002, http://www.cob.vt.edu/finance/faculty/dmc/Courses/TCHnotes/Tn96-01.pdf  
[35] Lowe, P., Credit risk measurement and procyclicality, BIS Working Papers, No. 116, September 2002, http://www.bis.org/publ/work116.htm

[36] Altman, E. et al., The link between default and recovery rates: Implications for credit risk models and procyclicality, working paper, July 2002, http://pages.stern.nyu.edu/~ealtman/The_Link_between 默认 and_Recovery_Rates.pdf  
[37] Garside, T., Stott, H., Stevens, A., Credit portfolio management, Oliver, Wyman & Company, December 1999, http://www.erisk.com/portal/resources/archive/013_200CreditPortfolioModels.pdf  
[38] Crouhy, M., Galai, D., Mark, R., A comparative analysis of current credit risk models, Journal of Banking & Finance, vol. 24 (2000), pp. 59-117, http://www.defaultrisk.com/pdf_files/A%20Comparative%20Anlss%20o%20Crrnt%20Cr%20Rsk%20Mdls.pdf  
[39] Schacter, B., Stringent stress tests, Risk, 2000, December, S22-S24, http://www.gloriamundi.org/download.asp?ResouceUrl=Stressed.pdf  
[40] The Case for Hedge Funds, The Journal of Alternative Investments, Tremont Partners, Inc., TASS Investment Research Ltd., vol. 2, no. 3 (Winter 1999), 63 - 76  
[41] Simozar, S., Stress testing, Derivatives Risk Management Service, March 1998, 5E1-5E12, http://www.gloriamundi.org/download.asp?ResourceUrl=saied.pdf  
[42] Sound practices for hedge fund managers, February 2000, http: //customfundgroup.com/pdfs/Sound\%20Practices\%20by\%20Hedge\%20Fund\%  
[43] International Association of Financial Engineers Investor Risk Committee Survey, June 6, 2002, http://www.cmra.com/cgi-bin/dload.cgi?IRC.pdf  
[44] Hedge Fund Risk Measurement and Reporting, Capital Market Risk Advisors, May 2000 http://www.cmra.com/cgi-bin/dload.cgi?HF.pdf<sub>⓶</sub>  
[45] AIMA/CMRA Hedge Fund Risk Transparency Survey, January 2002 http://www.cmra.com/cgi-bin/dload.cgi?Aima-cmra.pdf

[46] Performance Measurement and Attribution, Investment/Financial Services Review, February 2002 http://www.cmra.com/cgi-bin/dload.cgi?perfmeas.pdf  
[47] Risk in Fixed-Income Hedge Fund Styles, Hsieh, D., Fung, W., The Journal of Fixed Income, September 2002, Vol. 12, No. 2  
[48] Risk Reporting, Capital Market Risk Advisors (presentation), 1998  
[49] Chait, N., Risk Management: A practical approach to managing a portfolio of hedge funds for a large insurance company, April 2001, http://www.barclaygrp.com/info/library/research/20010423/index.html
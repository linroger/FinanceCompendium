
# Valuing Mortgage-Backed and Asset-Backed Securities

FRANK J. FABOZZI, PhD, CFA, CPA

Professor of Finance, EDHEC School of Business

MARK B. WICKARD

Senior Vice President/Corporate Cash Investment Advisor, Morgan Stanley Smith Bamey

Abstract: The valuing (or pricing) of a bond without an embedded option (that is, an option-free bond) is straightforward. The value is equal to the present value of the expected cash flows. Ignoring defaults, for an option-free bond the cash flows are known and consist of the periodic interest payments and principal at the maturity date. The interest or discount rates for computing the present value of the cash flows begin with the spot rates for a benchmark security and to those rates an appropriate spread is added. Moving from valuing option-free bonds to corporate bonds and agency debentures with embedded options is not simple. The interest rate-sensitive options that can be embedded into these bonds are call options, put options, accelerated sinking provisions, and, for floating-rate securities, caps on the interest rate. The reason valuation is complicated is that the embedded options must be taken into account and the theoretical option-free value of the bond must be adjusted accordingly. The technique typically used for valuing corporate bonds and agency debentures with embedded options is the lattice method. Mortgage-backed securities also have embedded options: the right of the borrowers in a loan pool to prepay their mortgage loan. However, because future cash flows for a loan pool are sensitive to not only the current interest rate but the history of rates since the loans were originated, the lattice method which is solved using backward induction cannot be employed. Instead, the most common methodology used for valuing mortgage-backed securities and mortgage-related asset-backed securities is the Monte Carlo simulation model. Other types of asset-backed securities are straightforward to value. In addition to the complications in valuing mortgage-backed securities and mortgage-related asset-backed securities, there is the difficulty in estimating their price sensitivity to changes in interest rates (that is, duration and convexity). The Monte Carlo simulation model can be used to compute the effective duration of these securities. This duration measure takes into consideration how a change in interest rates can impact a security's cash flow.

In this entry we will explain the methodology for valuing asset-backed securities (ABS) and mortgage-backed securities (MBS) and measures of relative value. We begin by reviewing cash-flow yield analysis and the limitations of the spread measure that is a result of that analysis—the nominal spread. We then look at a better spread measure called the zero-volatility spread, but point out its limitation as a measure of relative value for MBS products because


of the borrower's prepayment option and for ABS products where the prepayment option has value. Finally, we look at the methodology for valuing MBS and for ABS products where the prepayment option has value—the Monte Carlo simulation model. A by-product of this model is a spread measure called the option-adjusted spread (OAS). This measure is superior to the nominal spread and the zero-volatility spread for ABS products where the prepayment option has a value because it takes into account how cash flows may change when interest rates change. That is, it recognizes the borrower's prepayment option and how that affects prepayments when interest rates may change in the future. While the OAS is superior to the two other spread measures, it is based on assumptions that must be understood by an investor and the sensitivity of the security's value and OAS to changes in those assumptions must be investigated.

# CASH-FLOW YIELD ANALYSIS
$$ where  $i_{M}$  is the monthly interest rate that will equate the present value of the projected monthly cash flow to the market price (plus accrued interest) of the security.


All yield measures suffer from problems that limit their use in assessing a security's potential return. The yield to maturity for a Treasury, agency, or corporate bond has two major shortcomings as a measure of a bond's potential return. To realize the stated yield to maturity, the investor must: (1) reinvest the coupon payments at a rate equal to the yield to maturity and (2) hold the bond to the maturity date. The reinvestment of the coupon payments is critical and for long-term bonds can comprise as much as  $80\%$  of the bond's return. The risk of having to reinvest the interest payments at less than the computed yield is called reinvestment risk. The risk associated with a decline in the value of a security due to a rise in interest rates is called interest rate risk and in practice is quantified by computing the security's duration and convexity.

These shortcomings are equally applicable to the cash-flow yield measure for ABS and MBS: (1) the projected cash flows are assumed to be reinvested at the computed cash-flow yield and (2) the security is assumed to be held until the final payout based on some prepayment assumption. The importance of reinvestment risk—the risk that the cash flow will be reinvested at a rate less than the calculated cash-flow yield—is particularly important for amortizing MBS and

ABS products, because payments are monthly and both interest and principal must be reinvested. Moreover, an additional assumption is that the projected cash flow is actually realized. If the prepayment experience and the recovery rate realized differ from that assumed, the cashflow yield will not be realized.

Given the computed cash-flow yield and the average life for a security based on some prepayment assumption and default/recovery assumption, the next step is to compare the yield to the yield for a comparable Treasury security. "Comparable" is typically defined as a Treasury security with the same maturity as the (weighted) average life or the duration of the security. The difference between the cash-flow yield and the yield on a comparable Treasury security is called the nominal spread.

Unfortunately, it is the nominal spread that investors will too often use as a measure of relative value for ABS and MBS. However, this spread masks the fact that a portion of the nominal spread may be compensation for accepting prepayment risk. Instead of nominal spread, investors need a measure that indicates the compensation after adjusting for prepayment risk for all MBS and for ABS where the prepayment option has value. This measure is called the option-adjusted spread. Before discussing this measure, we describe another spread measure commonly quoted for MBS and ABS called the zero-volatility spread. This measure takes into account another problem with the nominal spread. Specifically, the nominal spread is computed assuming that all the cash flows for a security should be discounted at only one interest rate. That is, it fails to recognize the term structure of interest rates.

# ZERO-VOLATILITY SPREAD

The proper procedure to compare ABS and MBS to a Treasury is to compare it to a portfolio of Treasury securities that have the same cash flow. The value of the security is then equal to the present value of all of the cash flows. The secu rity's value, assuming the cash flows are default free, will equal the present value of the replicating portfolio of Treasury securities. In turn, these cash flows are valued at the Treasury spot rates.


The zero-volatility spread is a measure of the spread that the investor would realize over the entire Treasury spot rate curve if the non-Treasury security being analyzed is held to maturity. It is not a spread off one point on the Treasury yield curve, as is the nominal spread. The zero-volatility spread (also called the Z-spread and the static spread) is the spread that will make the present value of the cash flows from the non-Treasury security when discounted at the Treasury spot rate plus the spread equal to the market price plus accrued interest of the non-Treasury security. A trial-and-error procedure (or search algorithm) is required to determine the zero-volatility spread.

In general, the shorter the average life of the ABS/MBS, the less the zero-volatility spread will deviate from the nominal spread. The magnitude of the difference between the nominal spread and the zero-volatility spread also depends on the shape of the yield curve. The steeper the yield curve, the greater the difference.

If borrowers in the underlying loan pool have the right to prepay but do not typically take advantage of a decline in interest rates below the loan's rate to refinance, then the zero-volatility spread is the appropriate measure of relative value and it should be used in valuing cash flows to determine the value of ABS. This is the case, for example, for automobile loan ABS. While borrowers have the right to refinance when rates decline below the loan rate, they typically do not. In contrast, for standard residential mortgage loans, home equity loan ABS, and manufactured housing ABS, the borrowers in the underlying pool do refinance when interest rates decline below the loan rate. The next methodology and spread measure are used for products with this characteristic. Basically, they are used for all residential MBS and mortgage-related ABS.

# VALUATION USING MONTE CARLO SIMULATION AND OAS ANALYSIS

In fixed income valuation modeling, there are two methodologies commonly used to value securities with embedded options—the Monte Carlo simulation model and the lattice model. The Monte Carlo simulation model involves simulating a large number of potential interest rate paths in order to assess the value of a security on those different paths. This model is the most flexible of the two valuation methodologies for valuing interest rate-sensitive instruments where the history of interest rates is important. MBS and mortgage-related ABS are commonly valued using this model. As explained below, a by-product of this valuation model is the OAS. (An alternative model for valuing agency passthrough securities that does not require a prepayment model is provided in Kalotay, Yang, and Fabozzi, 2004.)

A lattice model is used to value callable agency debentures and corporate bonds. This valuation model accommodates securities in which the decision to exercise a call option is not dependent on how interest rates evolved over time. That is, the decision of an issuer to call a bond will depend on the prevailing interest rate at which the issue can be refunded relative to the issue's coupon rate and the costs associated with refunding, and not the path interest rates took to get to that rate. MBS and mortgage-related ABS which allow prepayments have periodic cash flows that are interest rate path dependent. This means that the cash flow received in one period is determined not only by the current interest rate level, but also by the path that interest rates took to get to the current level.

Prepayments for MBS and mortgage-related ABS are interest rate path dependent because this month's prepayment rate depends on whether there have been prior opportunities to refinance since the underlying loans were originated. Moreover, the cash flows to be received in the current month by investors in a bond class of MBS and mortgage-related ABS transaction depend on the outstanding balances of the other bond classes in the transaction. For example, in the case of a planned amortization class (PAC) bond in a collateralized mortgage obligation structure, all prepayments from the time the security was issued up to the valuation date affect the amount of support bonds outstanding and therefore the cash flow at the valuation date for the PAC bond. Thus, we need the history of prepayments to calculate the balances of bond classes in a structure.


Conceptually, valuation using the Monte Carlo simulation model is simple. In practice, however, it is very complex. The simulation involves generating a set of cash flows based on simulated future refinancing rates, which in turn imply simulated prepayment and default/ recovery rates. The objective is to figure out how the value of the collateral gets transmitted to the bond classes in the structure. More specifically, modeling is used to identify where the value in a transaction has been allocated and where the risk (prepayment risk and credit risk) has been distributed in order to identify the bond classes with low risk and high value.

# Simulating Interest Rate Paths and Cash Flows

Monte Carlo simulation is a management science/operations research technique that is commonly employed in finance. The purpose of Monte Carlo simulation is to generate a probability distribution for the outcome of some random variable of interest. In its application to valuing securities, it is used to generate interest rate paths so that potential cash flows on those paths can be determined and then each path is valued. (In the parlance of simulation, an interest rate path is referred to as a trial.) The value for the security on each of those interest rate paths is then one value in determining the estimated probability distribution for the security's value.

The procedure for generating the interest rate paths begins with a benchmark term structure of interest rates and associated with this benchmark are market prices for benchmark securities. Given the benchmark term structure of interest rates, the interest rate paths are adjusted (that is, calibrated) so that the average price produced by the model for each benchmark security will equal the market price for the benchmark security.

Most models use the on-the-run Treasury issues in this calibration process. Other model developers use off-the-run Treasury issues as well. The argument for using off-the-run Treasury issues is that the price/yield of on-the-run Treasury issues will not reflect their true economic value because the market price reflects their value for financing purposes (that is, an issue may be on special in the repo market). Some models use the London Interbank Offered Rate (LIBOR) curve instead of the Treasury curve. The reason is that some investors are interested in spreads that they can earn relative to their funding costs and LIBOR, for many investors, is a better proxy for that cost than Treasury rates.

To generate the interest rate paths, an assumption about the evolution of future interest rates is required. Most Monte Carlo simulation models use some form of one-factor interest rate model. The one factor used is the short-term interest rate. When using a particular one-factor interest rate model, several further assumptions must be made. The first, and the most important, is the assumption about the volatility of the short-term interest rate. The volatility assumption determines the dispersion of future interest rates in the simulation. Many model developers do not use one volatility number for the yield volatility of all maturities for the benchmark curve. Instead, they use either a short/long yield volatility or a term structure of yield volatility. A short/long yield volatility means that volatility is specified for maturities up to a certain number of years (short yield volatility) and a different yield volatility for greater maturities (long yield volatility). The short yield volatility is assumed to be greater than the long yield volatility. A term structure of yield volatilities means that a yield volatility is assumed for each maturity. (In practice, interest rate volatility is extracted from interest rate cap market prices.) From these prices, a term structure of yield volatility is obtained. Differences in the assumption about volatility of short-term interest rates can have a material impact on the resulting value derived for the security.


Another assumption relates to the speed of mean reversion of the short-term interest rate. Mean reversion in an interest rate model has to do with not allowing interest rates to fall below a lower barrier and not exceed an upper barrier before rates revert back to some average interest rate specified by the model developer or user.

The random paths of interest rates should be generated from an arbitrage-free model of the future term structure of interest rates. By arbitrage free it is meant that the model replicates today's term structure of interest rates, an input of the model, and that for all future dates there is no possible arbitrage within the model.

The simulation works by generating many scenarios of future interest rate paths. In each month of a given scenario (that is, path), a monthly interest rate and a refinancing rate are generated. The monthly interest rates are used to discount the projected cash flows in the scenario. The refinancing rate is needed to determine the cash flows because it represents the opportunity cost the borrower is facing at that time.

If the refinancing rates are high relative to the borrower's loan rate, the borrower will have no incentive to refinance. For MBS and mortgage-related ABS, there is a disincentive to prepay (that is, the homeowner may avoid moving in order to avoid refinancing). If the refinancing rate is low relative to the borrower's loan rate, the borrower has an incentive to refinance.

Prepayments (voluntary and involuntary) and recoveries are projected by feeding the refinancing rate and loan characteristics into a

Table 1 Simulated Paths of One-Month Future Interest Rates

<table><tr><td rowspan="2">Month</td><td colspan="7">Interest Rate Path Number</td></tr><tr><td>1</td><td>2</td><td>3</td><td>...</td><td>n</td><td>...</td><td>N</td></tr><tr><td>1</td><td>f1(1)</td><td>f1(2)</td><td>f1(3)</td><td>...</td><td>f1(n)</td><td>...</td><td>f1(N)</td></tr><tr><td>2</td><td>f2(1)</td><td>f2(2)</td><td>f2(3)</td><td>...</td><td>f2(n)</td><td>...</td><td>f2(N)</td></tr><tr><td>3</td><td>f3(1)</td><td>f3(2)</td><td>f3(3)</td><td>...</td><td>f3(n)</td><td>...</td><td>f3(N)</td></tr><tr><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td></tr><tr><td>t</td><td>ft(1)</td><td>ft(2)</td><td>ft(3)</td><td>...</td><td>ft(n)</td><td>...</td><td>ft(N)</td></tr><tr><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td></tr><tr><td>M-2</td><td>fM-2(1)</td><td>fM-2(2)</td><td>fM-2(3)</td><td>...</td><td>fM-2(n)</td><td>...</td><td>fM-2(N)</td></tr><tr><td>M-1</td><td>fM-1(1)</td><td>fM-1(2)</td><td>fM-1(3)</td><td>...</td><td>fM-1(n)</td><td>...</td><td>fM-1(N)</td></tr><tr><td>M</td><td>fM(1)</td><td>fM(2)</td><td>fM(3)</td><td>...</td><td>fM(n)</td><td>...</td><td>fM(N)</td></tr></table>

Notation:  $f_{t}(n)$  = one-month future interest rate for month  $t$  on path  $n$ ,  $N$  = total number of interest rate paths;  $M$  = number of months for the loan pool.

prepayment model and default model. (In the case of agency MBS [Ginnie Mae, Fannie Mae, and Freddie Mac] no assumption about defaults is required.) Given the projected prepayments, the cash flows along an interest rate path can be determined. To be able to do this, the entire deal must be reverse engineered. That is, the deal's waterfall (that is, the rules for distribution of interest, principal repayment, and loss allocation) must be specified so that the cash flow for the bond class being valued can be determined. Model developers do not reverse engineer the deals. Rather, there are vendors who provide the waterfall for deals that are used in conjunction with the Monte Carlo simulation model.

To make this more concrete, consider a newly issued loan pool with a maturity of  $M$  months that is the collateral for an MBS or mortgage-related ABS. Table 1 shows  $N$  simulated interest rate path scenarios. Each scenario consists of a path of  $M$  simulated 1-month future interest rates. (The determination of the number of paths generated is based on a variance-reduction method.) So, the first assumption made to generate the short-term interest rate paths in Table 1 is the volatility of short-term interest rates.


Table 2 shows the paths of simulated refinancing rates corresponding to the scenarios shown in Table 1. In going from Table 1 to Table 2, an assumption must be made about the relationship between the benchmark short-term interest rate and the refinancing rate. The assumption is that there is a constant spread relationship between the refinancing rate and the interest rate for a

Table 2 Simulated Paths of Refinancing Rates

<table><tr><td rowspan="2">Month</td><td colspan="7">Interest Rate Path Number</td></tr><tr><td>1</td><td>2</td><td>3</td><td>...</td><td>n</td><td>...</td><td>N</td></tr><tr><td>1</td><td>r1(1)</td><td>r1(2)</td><td>r1(3)</td><td>...</td><td>r1(n)</td><td>...</td><td>r1(N)</td></tr><tr><td>2</td><td>r2(1)</td><td>r2(2)</td><td>r2(3)</td><td>...</td><td>r2(n)</td><td>...</td><td>n2(N)</td></tr><tr><td>3</td><td>r3(1)</td><td>r3(2)</td><td>r3(3)</td><td>...</td><td>r3(n)</td><td>...</td><td>r3(N)</td></tr><tr><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td></tr><tr><td>t</td><td>r1(1)</td><td>rt(2)</td><td>rt(3)</td><td>...</td><td>rt(n)</td><td>...</td><td>rt(N)</td></tr><tr><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td></tr><tr><td>M-2</td><td>rM-2(1)</td><td>rM-2(2)</td><td>rM-2(3)</td><td>...</td><td>rM-2(n)</td><td>...</td><td>rM-2(N)</td></tr><tr><td>M-1</td><td>rM-1(1)</td><td>rM-1(2)</td><td>rM-1(3)</td><td>...</td><td>rM-1(n)</td><td>...</td><td>rM-1(N)</td></tr><tr><td>M</td><td>rM(1)</td><td>rM(2)</td><td>rM(3)</td><td>...</td><td>rM(n)</td><td>...</td><td>rM(N)</td></tr></table>

Notation:  $r_t(n) =$  refinancing rate for month  $t$  on path  $n$ ;  $N =$  total number of interest rate paths;  $M =$  number of months for the loan pool.

Table 3 Simulated Cash Flows for the Loan Pool

<table><tr><td rowspan="2">Month</td><td colspan="7">Interest Rate Path Number</td></tr><tr><td>1</td><td>2</td><td>3</td><td>...</td><td>n</td><td>...</td><td>N</td></tr><tr><td>1</td><td>C1(1)</td><td>C1(2)</td><td>C1(3)</td><td>...</td><td>C1(n)</td><td>...</td><td>C1(N)</td></tr><tr><td>2</td><td>C2(1)</td><td>C2(2)</td><td>C2(3)</td><td>...</td><td>C2(n)</td><td>...</td><td>C2(N)</td></tr><tr><td>3</td><td>C3(1)</td><td>C3(2)</td><td>C3(3)</td><td>...</td><td>C3(n)</td><td>...</td><td>C3(N)</td></tr><tr><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td></tr><tr><td>t</td><td>Ct(1)</td><td>Ct(2)</td><td>Ct(3)</td><td>...</td><td>Ct(n)</td><td>...</td><td>Ct(N)</td></tr><tr><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td></tr><tr><td>M-2</td><td>CM-2(1)</td><td>CM-2(2)</td><td>CM-2(3)</td><td>...</td><td>CM-2(n)</td><td>...</td><td>CM-2(N)</td></tr><tr><td>M-1</td><td>CM-1(1)</td><td>CM-1(2)</td><td>CM-1(3)</td><td>...</td><td>CM-1(n)</td><td>...</td><td>CM-1(N)</td></tr><tr><td>M</td><td>CM(1)</td><td>CM(2)</td><td>CM(3)</td><td>...</td><td>CM(n)</td><td>...</td><td>CM(N)</td></tr></table>

Notation:  $C_t(n) =$  loan pool's cash flow for month  $t$  on path  $n$ ;  $N =$  total number of interest rate paths;  $M =$  number of months for the loan pool.

maturity that is the best proxy for the borrowing rate. Typically, it is the 10-year rate that is used as a proxy.

Given the refinancing rates, the collateral's cash flows on each interest rate path can be generated. This requires a prepayment and default/recovery model. So our next assumption is that the prepayment and default/recovery models used to generate the loan pool's cash flows are correct. The resulting cash flows are depicted in Table 3.

Given the loan pool's cash flow for each month on each interest rate path, the next step is to use the waterfall for the structure to determine how the cash flow is distributed to the bond class being valued. Let us use BCC to denote the cash flow for that bond class. Table 4 shows the simulated cash flows on each of the interest rate paths for the bond class being valued.


# Calculating the Present Value of a Bond Class for a Scenario Interest Rate Path

Given the cash flows for the bond class on an interest rate path, the path's present value can be calculated. The discount rate for determining the present value is the simulated spot rate for each month on the interest rate path plus an appropriate spread. The spot rate on a path can be determined from the simulated future monthly rates. The relationship that holds between the simulated spot rate for month  $t$  on path  $n$  and the simulated future one-month rates is:

$$ z _ {t} (n) = \left\{\left[ 1 + f _ {1} (n) \right] \left[ 1 + f _ {2} (n) \right] \dots \left[ 1 + f _ {t} (n) \right] \right\} ^ {1 / t} - 1
$$

Table 4 Simulated Cash Flows for the Bond Class Being Valued

<table><tr><td rowspan="2">Month</td><td colspan="7">Interest Rate Path Number</td></tr><tr><td>1</td><td>2</td><td>3</td><td>...</td><td>n</td><td>...</td><td>N</td></tr><tr><td>1</td><td>BCC1(1)</td><td>BCC1(2)</td><td>BCC1(3)</td><td>...</td><td>BCC1(n)</td><td>...</td><td>BCC1(N)</td></tr><tr><td>2</td><td>BCC2(1)</td><td>BCC2(2)</td><td>BCC2(3)</td><td>...</td><td>BCC2(n)</td><td>...</td><td>BCC2(N)</td></tr><tr><td>3</td><td>BCC3(1)</td><td>BCC3(2)</td><td>BCC3(3)</td><td>...</td><td>BCC3(n)</td><td>...</td><td>BCC3(N)</td></tr><tr><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td></tr><tr><td>t</td><td>BCCt(1)</td><td>BCC2(2)</td><td>BCCt(3)</td><td>...</td><td>BCCt(n)</td><td>...</td><td>BCCt(N)</td></tr><tr><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td></tr><tr><td>M-2</td><td>BCCM-2(1)</td><td>BCCM-2(2)</td><td>BCCM-2(3)</td><td>...</td><td>BCCM-2(n)</td><td>...</td><td>BCCM-2(N)</td></tr><tr><td>M-1</td><td>BCCM-1(1)</td><td>BCCM-1(2)</td><td>BCCM-1(3)</td><td>...</td><td>BCCM-1(n)</td><td>...</td><td>BCCM-1(N)</td></tr><tr><td>M</td><td>BCCM(1)</td><td>BCCM(2)</td><td>BCCM(3)</td><td>...</td><td>BCCM(n)</td><td>...</td><td>BCCM(N)</td></tr></table>

Notation:  $\mathrm{BCC}_t(n) =$  bond class's cash flow for month  $t$  on path  $n$ ;  $N =$  total number of interest rate paths;  $M =$  number of months for the loan pool.

Table 5 Simulated Paths of Monthly Spot Rates

<table><tr><td rowspan="2">Month</td><td colspan="7">Interest Rate Path Number</td></tr><tr><td>1</td><td>2</td><td>3</td><td>...</td><td>n</td><td>...</td><td>N</td></tr><tr><td>1</td><td>z1(1)</td><td>z1(2)</td><td>z1(3)</td><td>...</td><td>z1(n)</td><td>...</td><td>z1(N)</td></tr><tr><td>2</td><td>z2(1)</td><td>z2(2)</td><td>z2(3)</td><td>...</td><td>z2(n)</td><td>...</td><td>z2(N)</td></tr><tr><td>3</td><td>z3(1)</td><td>z3(2)</td><td>z3(3)</td><td>...</td><td>z3(n)</td><td>...</td><td>z3(N)</td></tr><tr><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td></tr><tr><td>t</td><td>zt(1)</td><td>zt(2)</td><td>zt(3)</td><td>...</td><td>zt(n)</td><td>...</td><td>zt(N)</td></tr><tr><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td></tr><tr><td>M-2</td><td>zM-2(1)</td><td>zM-2(2)</td><td>zM-2(3)</td><td>...</td><td>zM-2(n)</td><td>...</td><td>zM-2(N)</td></tr><tr><td>M-1</td><td>zM-1(1)</td><td>zM-1(2)</td><td>zM-1(3)</td><td>...</td><td>zM-1(n)</td><td>...</td><td>zM-1(N)</td></tr><tr><td>M</td><td>zM(1)</td><td>zM(2)</td><td>zM(3)</td><td>...</td><td>zM(n)</td><td>...</td><td>zm(N)</td></tr></table>

Notation:  $z_{t}(n) =$  spot rate for month  $t$  on path  $n$ ;  $N =$  total number of interest rate paths;  $M =$  number of months for the loan pool.

where

$z_{t}(n) =$  simulated spot rate for month  $t$  on path  $n$

$f_{j}(n) =$  simulated future one-month rate for month  $j$  on path  $n$

Consequently, the interest rate path for the simulated future one-month rates can be converted to the interest rate path for the simulated monthly spot rates as shown in Table 5. Therefore, the present value of the cash flows for month  $t$  on interest rate path  $n$  discounted at the simulated spot rate for month  $t$  plus some spread is:

$$
\operatorname {P V} \left[ B C C _ {t} (n) \right] = \frac {B C C _ {t} (n)}{\left[ 1 + z _ {t} (n) + K \right] ^ {t}} \tag {1}
$$ where


$PV[BCC_{t}(n)] =$  present value of the cash flow for the bond class for month  $t$  on path  $n$

$BCC_{t}(n) = \text{cash flow for the bond class}$  for month  $t$  on path  $n$

$z_{t}(n) =$  spot rate for month  $t$  on path  $n$

$$
K = \mathrm {s p r e a d}
$$

The present value for path  $n$  is the sum of the present value of the cash flows for each month on path  $n$ . That is,


(2)

$$
\begin{array}{l} \operatorname {P V} [ \text {P a t h} (n) ] = \operatorname {P V} [ B C C _ {1} (n) ] + \operatorname {P V} [ B C C _ {2} (n) ] \\ + \dots + \mathrm {P V} [ B C C _ {M} (n) ] \\ \end{array}
$$ where  $\mathrm{PV}[\mathrm{Path}(n)]$  is the present value of interest rate path  $n$ .


# Determining the Theoretical Value

The present value of a given interest rate path is treated as the theoretical value of a bond class if that path is realized. The theoretical value of the bond class using the Monte Carlo simulation model is determined by calculating the average of the theoretical values of all the interest rate paths. That is, the theoretical value is equal to

Theoretical value

$$
= \frac {\operatorname {P V} [ \operatorname {P a t h} (1) ] + \cdots + \operatorname {P V} [ \operatorname {P a t h} (N) ]}{N} \tag {3}
$$ where  $N$  is the number of interest rate paths.


Notice that the results of the Monte Carlo simulation model produce one value, the average value, and that value is taken as the theoretical value. However, as noted earlier, the purpose of a Monte Carlo simulation model is to estimate the probability distribution for the variable of interest. While a probability distribution can easily be obtained from the values for each path and summary information in addition to the mean such as dispersion and skewness measures can be computed, it is rare if that information is provided. Basically, the reason is that investors rarely seek that information because too often they do not understand the Monte Carlo simulation process.


Moreover, it should be apparent how the Monte Carlo simulation model is driven by assumptions. Hence, a user of a model such as the one described here is subject to modeling risk. To mitigate modeling risk, an investor can test the sensitivity of the value produced by the model to alternative assumptions. For example, regarding the volatility assumption, the model can be rerun assuming both proportionality lower and higher volatility than initially assumed. The sensitivity to prepayments can be analyzed in the same way. From the sensitivity analysis, an investor can determine which assumptions appear to be more important for the security being considered for purchase.

# Option-Adjusted Spread

Thus far we have seen how the theoretical value of a security can be determined using the Monte Carlo simulation model. Recall that in the model, a spread  $(K)$  is added to the monthly spot rates on all the interest rate paths in Table 5 in order to determine the discount rate used for calculating the present value of the cash flows. The spread should reflect the risk associated with the security as required by the market. However, the reverse can be done. Given (1) the cash flows in Table 4 for the bond class being valued, (2) the spot rates in Table 5, and (3) the market price of the security being valued, one can determine the spread that will make the average value for the interest rate paths equal to the market price (plus accrued interest). That spread is what is referred to as the option-adjusted spread (OAS). Mathematically, OAS is the spread that will make

$$
\frac {\text {M a r k e t p r i c e} +}{\text {A c c r u e d i n t e r e s t}} = \frac {\operatorname {P V} [ \operatorname {P a t h} (1) ] + \cdots + \operatorname {P V} [ \operatorname {P a t h} (N) ]}{N} \tag {4}
$$ where  $N$  is the number of interest rate paths.


Basically, the OAS is used to reconcile the model's value [that is, the value determined by the Monte Carlo simulation model given by equation (3)] with the market price. On the left-hand side of equation (4) is the market's valuation of the security as represented by the market price. On the right-hand side of the equation is the model's evaluation of the security (that is, the theoretical value), which is the average present value over all the interest rate paths. Basically, the OAS was developed as a measure of the spread that can be used to convert dollar differences between model value and market price. But what is it a "spread" over? In describing the model above, we can see that the OAS is measuring the average spread over the benchmark spot rate. It is an average spread since the OAS is found by averaging over the interest rate paths for the possible future benchmark spot rate curves.

This spread measure is superior to the nominal spread, which gives no recognition to the prepayment risk. The OAS is "option adjusted" because the cash flows on the interest rate paths are adjusted for the option of the borrowers to prepay.

# Option Cost

The implied cost of the option embedded in a security can be obtained by calculating the difference between the OAS and the zero-volatility spread. That is,

$$
\text {O p t i o n} = \text {Z e r o - v o l a t i l i t y s p r e a d - O A S}
$$

The option cost measures the prepayment (or option) risk embedded in MBS and ABS. Note that the cost of the option is a by-product of the OAS analysis, not valued explicitly with some option pricing model.

When the option cost is zero because the borrower tends not to exercise the prepayment option when interest rates decline below the loan rate or when there is no prepayment option, then substituting zero for the OAS in the previous equation and solving for the zero-volatility spread, we get:


$$
Z e r o - v o l a t i l i t y s p r e a d = O A S
$$

Consequently, when the value of the option is zero (that is, the option cost is zero) for a particular ABS, simply computing the zero-volatility spread for relative value purposes or for valuing that ABS is sufficient. Even if there is a small value for the option, the zero-volatility spread should be adequate rather than calculating an OAS using the Monte Carlo simulation model.

# Simulated Average Life

The average life of a security when using the Monte Carlo simulation model is the weighted average time to receipt of principal payments (scheduled payments and projected prepayments). The average life reported in a Monte Carlo model is the average of the average lives along the interest rate paths. That is, for each interest rate path, there is an average life. The average of these average lives is the average life reported by the model.

Additional information is conveyed by the distribution of the average life. The greater the range and standard deviation of the average life, the more uncertainty there is about the security's average life.

# MEASURING INTEREST RISK

There are two measures of interest rate risk that are commonly used: duration and convexity. Duration is a first approximation as to how the value of an individual security or the value of a portfolio will change when interest rates change. Convexity measures the change in the value of a security or portfolio that is not explained by duration. How these measures are computed when using the Monte Carlo simulation model is described in this section.

# Duration

The most obvious way to measure a bond's price sensitivity as a percentage of its current price to changes in interest rates is to change rates by a small number of basis points and calculate how its price will change. To do this, we introduce the following notation. Let


$$
\begin{array}{l} V _ {0} = \text {i n i t i a l v a l u e o r p r i c e o f t h e s e c u r i t y} \\ \Delta y = \text {c h a n g e i n t h e y i e l d o f t h e s e c u r i t y (i n} \quad \text {d e c i m a l)} \\ V _ {-} = \text {t h e} \quad \text {e t a m i s d e c r e a s e d} \quad \Delta y \\ V _ {+} = \text {t h e} \quad \text {e t a m i s} \quad \text {i n c r e a s e d} \quad \Delta y \\ \end{array}
$$

There are two key points to keep in mind in the foregoing discussion. First, the change in yield referred to above is the same change in yield for all maturities. This assumption is commonly referred to as a "parallel yield curve shift assumption." Thus, the foregoing discussion about the price sensitivity of a security to interest rate changes is limited to parallel shifts in the yield curve. Second, the notation refers to the estimated value of the security. This value is obtained from a valuation model. Consequently, the resulting measure of the price sensitivity of a security to interest rate changes is only as good as the valuation model employed to obtain the estimated value of the security.

Now let's focus on the measure of interest. We are interested in the percentage change in the price of a security when interest rates change. This measure is referred to as duration. It can be demonstrated that duration can be estimated using the following formula:

$$
\text {D u r a t i o n} = \frac {V _ {-} - V _ {+}}{2 V _ {0} (\Delta y)} \tag {5}
$$

The duration of a security can be interpreted as the approximate percentage change in price for a 100 basis point parallel shift in the yield curve. Thus, a bond with a duration of 5 will change by approximately  $5\%$  for a 100 basis point parallel shift in the yield curve. For a 50 basis point parallel shift in the yield curve, the bond's price will change by approximately  $2.5\%$ ; for a 25 basis point parallel shift in the yield curve,  $1.25\%$ , and so on.

What this means is that in calculating the values of  $V_{-}$  and  $V_{+}$  in the duration formula, the same cash flows used to calculate  $V_{0}$  are used. Therefore, the change in the bond's price when the yield curve is shifted by a small number of basis points is due solely to discounting at the new yields. This assumption makes sense for option-free bonds such as Treasury securities and nonmortgage ABS such as credit card ABS and auto loan-backed ABS. However, the same cannot be said for MBS and mortgage-related ABS because for these products the cash flows are sensitive to changes in interest rates. Rather, for these products a change in yield will alter the expected cash flows because it will change expected prepayments.

The Monte Carlo simulation model takes into account how parallel shifts in the yield curve will affect the cash flows. Thus, when  $V_{-}$  and  $V_{+}$  are the values produced from the valuation model, the resulting duration takes into account both the discounting at different interest rates and how the cash flows can change. When duration is calculated in this manner, it is referred to as effective duration or option-adjusted duration.

To calculate effective duration, the value of a security must be estimated when interest rates are shocked (that is, changed) up and down a given number of basis points. In terms of the Monte Carlo simulation model, the yield curve used is shocked up and down and the new curve is used to generate the values to be used in equation (5) to obtain effective duration.

There are two important aspects of this process of generating the values when the rates are shocked that are critical to understand. First, the assumption is that the relationships assumed do not change when rates are shocked up and down. Specifically, (1) the interest rate volatility is assumed to be unchanged to derive the new interest rate paths for a given shock (that is, the new Table 1), as well as the other assumptions made to generate the new Table 2 from the newly constructed Table 1, and (2) the OAS is assumed to be constant. The constancy of the OAS comes into play because when discount ing the new cash flows (that is, the cash flows in the new Table 4), the current OAS that was computed is assumed to be the same and is added to the new rates in the new Table 1.


# Convexity

The duration measure indicates that regardless of whether interest rates increase or decrease, the approximate percentage price change is the same. However, this does not agree with the price volatility property of a bond. Specifically, while for small changes in yield the percentage price change will be the same for an increase or decrease in yield, for large changes in yield this is not true. This suggests that duration is only a good approximation of the percentage price change for a small change in yield.

The reason for this result is that duration is in fact a first approximation for a small change in yield. The approximation can be improved by using a second approximation. This approximation is referred to as "convexity." (The use of this term in the industry is unfortunate since the term "convexity" is also used to describe the shape or curvature of the price/yield relationship.) The convexity measure of a security can be used to approximate the change in price that is not explained by duration.

The convexity measure of a bond can be approximated using the following formula:

$$
\text {C o n v e x i t y m e a s u r e} = \frac {V _ {+} + V _ {-} - 2 V _ {0}}{2 V _ {0} (\Delta y) ^ {2}} \tag {6}
$$ where the notation is the same as used earlier for duration. When the values for the inputs in the convexity measure as given in equation (6) are obtained from a Monte Carlo simulation model, the resulting convexity is referred to as effective convexity. Note that dealers often quote convexity by dividing the convexity measure by 100.


When the convexity measure is positive, we have the situation where the gain is greater than the loss for a given large change in rates. That is, the security exhibits positive convexity. Most nonmortgage ABS have positive convexity.

However, if the convexity measure is negative, we have the situation where the loss will be greater than the gain. A security with this characteristic is said to have negative convexity and it occurs with MBS and mortgage-related ABS.

# KEY POINTS

- Valuing securities with interest rate-sensitive options requires the employment of a model that recognizes how future interest rates can change and how that impacts the expected cash flows.
- For bonds with embedded options such as callable bonds and putable bonds, as well as bonds that have an accelerated sinking fund provision, the lattice method can be used. Unfortunately, the lattice model cannot be used for MBS and mortgage-related ABS because these securities have path-dependent cash flows and thus how interest rates have evolved prevents solving a lattice model.
Instead of the lattice model, the Monte Carlo simulation model is used to value MBS and mortgage-related ABS. There are many assumptions in the model and therefore, sensitivity analysis should be used to test the sensitivity of the model's value to changes in the major assumptions.
- For ABS that do not have an embedded option (that is, no prepayment option) or where there is a prepayment option but for all intents and purposes the prepayment option is unlikely to be exercised, valuation is fairly straightforward—assuming a good model for estimating defaults and recoveries. It is simply the present value of the expected cash flow discounted at the benchmark spot rates plus an appropriate spread.
- The cash-flow yield measure for MBS and ABS is a flawed measure of value. The corresponding nominal spread is therefore similarly flawed. A better measure for ABS where the prepayment option has little value is the zero-volatility spread. For MBS and mortgage-related ABS, the commonly used measure is the OAS. This measure adjusts the spread for the embedded option by adjusting the cash flows in the Monte Carlo simulation model (as well as in the lattice model).


- Because the OAS is derived from the Monte Carlo simulation model, it is also an assumption-driven product and therefore subject to modeling risk.
- The appropriate interest risk measures for MBS and mortgage-related ABS are effective duration and effective convexity. These measures require, as inputs, the estimated value of the security obtained by shocking the Monte Carlo simulation model.

# NOTES

1. For a discussion of MBS, see Fabozzi, Bhattacharya, and Berliner (2011). Asset-backed securities are described in Fabozzi (2012).
2. For a discussion of prepayment models for MBS, see Fabozzi, Bhattacharya, and Berliner (2011).
3. PACs are described in Fabozzi, Bhattacharya, and Berliner (2011).
4. For applications of Monte Carlo simulation to finance, see Pachamanova and Fabozzi (2010).
5. Variance-reduction methods in Monte Carlo simulation are explained in Pachamanova and Fabozzi (2010).
6. For an illustration applied to an actual CMO transaction, see Fabozzi, Richard, and Horowitz (2006).
7. For an explanation of duration and convexity, see Fabozzi (1999, 2011).

# REFERENCES

Fabozzi, F. J. (1999). Duration, Convexity, and Other Bond Risk Measures. Hoboken, NJ: John Wiley & Sons.
Fabozzi, F. J. (2012). Bond Markets, Analysis, and Strategies, 8th ed. Upper Saddle River, NJ: Pearson.
Fabozzi, F. J., Bhattacharya, A. K., and Berliner, W. S. (2011). Mortgage-Backed Securities:

Products, Structuring, and Analytics Techniques, 2nd ed. Hoboken, NJ: John Wiley & Sons.
Fabozzi, F. J., Richard, S. F., and Horowitz, D. S. (2006). Valuation of mortgage-backed securities. In F. J. Fabozzi (ed.), The Handbook of Mortgage-Backed Securities, 6th ed. (pp. 759-781). New York: McGraw Hill.

Kalotay, A., Yang, D., and Fabozzi, F. J. (2004). An option-theoretic prepayment model for mortgages and mortgage-backed securities. International Journal of Theoretical and Applied Finance 7, 8: 949-978.
Pachamanova, D., and Fabozzi, F. J. (2010). Simulation and Optimization Modeling in Finance. Hoboken, NJ: John Wiley & Sons.

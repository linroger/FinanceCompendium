---
title: "Measurement of Prepayments for Residential Mortgage-Backed Securities"
parent_directory: "Mortgage-Backed Securities Analysis and Valuation"
formatted: "2025-12-21 07:15:00 AM"
formatter_model: "claude-sonnet-4-5-20250929"
cli-tool: "claude-code"
primary_tags:
  - prepayment measurement
  - mortgage-backed securities
  - conditional prepayment rate
  - single monthly mortality rate
secondary_tags:
  - PSA prepayment benchmark
  - voluntary prepayments
  - involuntary prepayments
  - delinquency measures
  - cumulative default rate
  - conditional default rate
  - loss severity measures
  - agency MBS
  - nonagency MBS
  - prospectus prepayment curve
cssclasses: academia
---

# Measurement of Prepayments for Residential Mortgage-Backed Securities

WILLIAM S. BERLINER

Executive Vice President, Manhattan Advisory Services Inc.

FRANK J. FABOZZI, PhD, CFA, CPA

Professor of Finance, EDHEC Business School

ANAND K. BHATTACHARYA, PhD

Professor of Finance Practice, Department of Finance, W. P. Carey School of Business,

Arizona State University

Abstract: The valuation of residential mortgage-backed securities begins with a projection of a subject security's cash flow. The monthly cash flow from the underlying pool of mortgage loans includes three components: (1) scheduled principal payments (also referred to as amortization), (2) interest payments, and (3) any prepayments. Prepayments are any payments made by borrowers that are in excess of the scheduled principal payment. Consequently, the cash flow depends on the prepayment behavior of the borrowers in the mortgage pool. In addition to prepayments, the expected credit performance of the underlying loans must be projected to estimate a residential mortgage-backed securities cash flow. The sharp deterioration in mortgage performance that emerged in late 2006 led to the realization that prepayments and defaults often had related effects on the performance of these securities, even though they represent very different phenomena. As a result, new terminology has emerged to clarify the different circumstances that result in the early return of principal to investors. Understanding the terms used in the market to define prepayments and default experience, as well as the methodologies used to generate these metrics, is important for the following reasons: efficient risk-based pricing at the origination level; evaluation of relative value within the residential mortgage-backed securities sector (as well as across the fixed income universe); effective hedging and management of prepayment and credit risk exposure; and ex post performance attribution.

Securities backed by a pool of residential mortgage loans, referred to as mortgage-backed securities (MBS) or mortgage-related securities, have complex cash flow characteristics compared to the traditional government, corporate or municipal security. Residential MBS are classified as agency MBS and nonagency MBS. The former include MBS issued by Ginnie Mae (a federally-related government entity) and two government-sponsored enterprises (Fannie Mae and Freddie Mac). Residential MBS not issued by agency MBS are called nonagency or private label MBS. In turn nonagency MBS are categorized based on the credit quality of the underlying borrower or lien. There are nonagency MBS backed by prime loans, along with those backed by borrowers with blemished credit histories or an inferior lien on the mortgaged property (e.g., a second mortgage lien). The latter nonagency MBS are generically referred to as subprime MBS.

Complicating the cash flows projection of a residential MBS is that borrowers can prepay their loans and will in fact do so for a variety of reasons. Such prepayments can occur for a variety of reasons. Virtually all mortgage loans have a "due on sale" clause, which means that the remaining balance of the loan must be paid when the house is sold. Existing mortgages can also be refinanced by the obligor if the prevailing level of mortgage rates declines, or if a more attractive financing vehicle is proposed to them. In addition, homeowners can make partial prepayments on their loan, which serve to reduce the remaining balance and shorten the loan's remaining term. Prepayments strongly impact the returns and performance of MBS, and investors devote significant resources to studying and modeling them.

For the holder of a mortgage-related security asset, the borrower's prepayment option creates a unique form of risk. In cases where the obligor refinances the loan in order to capitalize on a drop in market rates, the investor has a high-yielding asset pay off, and it can be replaced only with an asset carrying a lower yield.
Consequently, it is essential for participants in the residential MBS market to understand the general prepayment and credit performance nomenclature. The market is characterized by the usage of a variety of terms; some terms describe general phenomena, while others are specific to certain types of loan products and assets. In this entry, the basic terms used to characterize residential mortgage-related prepayments and losses are discussed. Our focus is on describing the terminology and outlining the methodologies used in calculating relevant metrics, not on the determinants of prepayment and default behavior.

# PREPAYMENT TERMINOLOGY

For fixed-rate fully amortizing assets, such as, home equity loans (HELs), and manufactured housing loans (MHS), the monthly scheduled payment (consisting of scheduled principal and interest) is constant throughout the amortization term. If the borrower pays more than the monthly scheduled payment, the extra payment will be used to pay down the outstanding balance faster than the original amortization schedule, resulting in a prepayment (or, as it is sometimes referenced, an unscheduled principal payment). If the outstanding balance is paid off in full, the prepayment is a complete prepayment; if only a portion of the outstanding balance is prepaid, the prepayment is called either a partial prepayment or curtailment. Prepayments can be the result of natural turnover, refinancings, defaults, partial paydowns, and credit-related events.

The evaluation of prepayments is further complicated by the fact that there is an interplay between defaults, which are effectively credit-related prepayments, and prepayments attributable specifically to declining interest rates. In agency MBS (i.e., pools issued by Ginnie Mae, Fannie Mae, and Freddie Mac) there have at times been large numbers of seriously delinquent loans in pools for which Freddie Mac and Fannie Mae continued to pay interest and scheduled principal. In 2010, however, the two government-sponsored enterprises (Fannie Mae and Freddie Mac) changed their policies and began buying loans that were 120 days or more delinquent out of pools. These buyouts initially resulted in a surge in prepayment speeds. Moreover, the new policy meant that pools containing large numbers of lower-quality loans would tend to experience consistently faster prepayment speeds than those pools backed by better-credit loans.

However, for private-label MBS, prepayments resulting from credit events must be treated differently than those attributable to refinancings. This is because a default means that the investor will probably not receive the entire amount of the defaulted principal, but only the amount recovered after the foreclosure process is completed. Moreover, the timing of payments is also at issue. There is typically a sizeable delay between the time a borrower becomes delinquent on a loan and its ultimate liquidation. This has resulted in the convention where prepayments in private-label securities are separated into voluntary and involuntary prepayments. Voluntary prepayments occur as a result of a refinancing, the sale of the property, or other events (e.g., the death of the property owner) where the full principal amount is paid immediately to the bondholder. Involuntary prepayments occur as a result of a credit event, for which both the timing and net principal received are uncertain.


Prepayments and defaults can be analyzed on both the loan and pool level. Loan-level prepayment analysis, which requires detailed loan-level information, is more accurate than pool-level prepayment analysis, but is also more computationally intensive. Additionally, this type of analysis allows the inclusion of specific obligor and property characteristics as determinants of prepayments and defaults. Loan-level analysis involves tracking defaults and prepayments on an individual loan basis, projecting each loan's cash flows, and combining these amounts to calculate aggregated metrics. Due to the diversity of the characteristics of the underlying loans in most deals, loan level analysis is generally more accurate and has greater predictive capabilities.

# CALCULATING PREPAYMENT SPEEDS

The first critical step in calculating prepayment speed is to define a prepayment. For the purposes of this discussion, a prepayment is defined as the early return of principal to the investor. By definition, this means that amortization (or scheduled principal payments) must be excluded from the calculation, leaving only unscheduled principal payments to be analyzed.


# Conditional Prepayment Rate

The approach most commonly used to generate prepayment speeds is to calculate monthly prepaid principal as a percentage of the security's outstanding balance and then annualize that percentage. Most current approaches to prepayment calculations either quote this annualized periodic speed, known as the conditional prepayment rate (CPR) directly or use it as an input to generate other quotation benchmarks. This methodology is useful in that it allows analysts to both calculate the historical prepayment experience of a security, as well as project prepayment speeds (and thus a security's cash flows) into the future. When used as part of a model to generate projected cash flows, the CPR calculation assumes that some fraction of the unpaid principal balance (or UPB) of the pool is prepaid each month for the remaining term of the mortgage. The advantages of this approach are its simplicity and its flexibility. For example, changes in economic conditions that impact prepayment rates or changes in the historical prepayment pattern of a pool can be analyzed quickly. In addition, the CPR can be used as an input to other models and quotation mechanisms, as noted already.

The CPR is an annual rate. However, because mortgage cash flows are a monthly phenomenon, calculating the CPR requires the generation of a monthly prepayment rate, called the single monthly mortality rate (SMM). The SMM is the most fundamental measure of prepayment speeds. SMM measures the monthly prepayment amount as a percentage of the previous month's outstanding balance minus the scheduled principal payment. Mathematically, the SMM is calculated as follows:

$$
\mathrm{SMM} = \frac{\text{Total payment, including prepayments - Scheduled interest payment - Scheduled principal payment}}{[\text{Unpaid principal balance - Scheduled principal payment}]}
$$

For example, if the pool balance at month zero is \$10,000,000, assuming an interest rate of 12\%, the scheduled principal and interest payments are 2,861.26 and \$100,000 in month one, respectively. If the actual payment received by investors in month one is \$202,891.25, the SMM rate is 1\%, calculated as

$$
\mathrm{SMM} = \frac{(\$ 202,891.25 - \$ 100,000 - \$ 2,861.26)}{(\$ 10,000,000 - \$ 2,861.26)} = 1\%
$$

Therefore, if a mortgage loan prepaid at  $1\%$  SMM in a particular month, this means that  $1\%$  of that month's scheduled balance (last month's outstanding balance minus the scheduled principal payment) has been prepaid.

Given the SMM, a CPR can be computed using the following formula:

$$
\mathrm{CPR} = 1 - (1 - \mathrm{SMM})^{12}
$$

For example, if the SMM is  $1\%$ , then the CPR is

$$
\mathrm{CPR} = 1 - (0.99)^{12} = 11.36\%
$$

Conversely, CPRs can be converted into SMMs (and thus be used to generate monthly cash flows) through the following formula:

$$
\mathrm{SMM} = 1 - (1 - \mathrm{CPR})^{1/12}
$$

For example, suppose that the CPR used to estimate prepayments is  $6\%$ . The corresponding SMM is

$$
\mathrm{SMM} = 1 - (1 - 0.06)^{1 / 2} = 1 - 0.94^{0.08333} = 0.5143 \%
$$

# PSA Prepayment Benchmark

The Public Securities Association (PSA) prepayment benchmark is expressed as a monthly series of annual prepayment rates. The basic PSA model assumes that prepayment rates are low for newly originated mortgages and then increase linearly as the mortgages age or season.

The PSA standard benchmark assumes the following prepayment rates for 30-year mortgages:

1. A CPR of  $0.2\%$  for the first month, increased by  $0.2\%$  per year per month for the next 29 months when it reaches  $6\%$  per year.
2. A  $6\%$  CPR for the remaining years.

This benchmark, referred to as "100\% PSA" or simply "100 PSA," is graphically depicted in the middle graph in Figure 1. Mathematically, 100 PSA can be expressed as follows:

$$
\text{If } t \leq 30 \text{ then CPR} = 6\% \times (t / 30)
$$

$$
\text{If } t > 30 \text{ then CPR} = 6\%
$$ where  $t$  is the number of months since the mortgage was originated. Since the CPR prior to month 30 rises at a constant rate, this period is sometimes referred to as the "ramp," and loans are considered to be "on the ramp" when they are less than 30 months old.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/d234f4a70e76f0b17b75753a1699737c5d60823017f5d7d66ff3628533990244.jpg)
Figure 1 Graphical Depiction of 50 PSA, 100 PSA, and 300 PSA


Slower or faster speeds are then referred to as some percentage of PSA. For example, 50 PSA means one-half the CPR of the PSA benchmark prepayment rate; 150 PSA means 1.5 times the CPR of the PSA benchmark prepayment rate; 300 PSA means three times the CPR of the benchmark prepayment rate. This is illustrated graphically in Figure 1 for 50 PSA, 100 PSA, and 150 PSA. A prepayment rate of 0 PSA means that no prepayments are assumed.

It is important to note that mortgage pools will typically be comprised of loans having different origination months and, therefore, different ages. In practice, the weighted average loan age (WALA) of a pool or security is used as a proxy for its age. However, a large dispersion of loan ages within a pool will distort the PSA calculation.

It is helpful to outline the CPRs and SMMs assumed at different PSA assumptions for different loan ages. The SMMs for month 5, month 20, and months 31 through 360 assuming 100 PSA are calculated as follows:

For month 5:

$$
\begin{array}{l} \mathrm{CPR} = 6\% (5 / 30) = 1\% = 0.01 \\ \mathrm{SMM} = 1 - (1 - 0.01)^{1/12} = 1 - (0.99)^{0.083333} \\ = 0.000837 \\ \end{array}
$$

For month 20:

$$
\begin{array}{l} \mathrm{CPR} = 6\% (20 / 30) = 4\% = 0.04 \\ \mathrm{SMM} = 1 - (1 - 0.04)^{1/12} = 1 - (0.96)^{0.083333} \\ = 0.003396 \\ \end{array}
$$

For months 31-360:

$$
\begin{array}{l} \mathrm{CPR} = 6\% \\ \mathrm{SMM} = 1 - (1 - 0.06)^{1/12} = 1 - (0.94)^{0.083333} \\ = 0.005143 \\ \end{array}
$$

The SMMs for month 5, month 20, and months 31 through 360 assuming 165 PSA are computed as follows:

For month 5:

$$
\mathrm{CPR} = 6 \% (5 / 30) = 1 \% = 0.01
$$

$$
165 \mathrm{PSA} = 1.65 (0.01) = 0.0165
$$

$$
\begin{array}{l} \mathrm{SMM} = 1 - (1 - 0.0165)^{1/12} \\ = 1 - (0.9835)^{0.083333} = 0.001386 \\ \end{array}
$$

For month 20:

$$
\mathrm{CPR} = 6\% (20 / 30) = 4\% = 0.04
$$

$$
165 \mathrm{PSA} = 1.65 (0.04) = 0.066
$$

$$
\begin{array}{l} \mathrm{SMM} = 1 - (1 - 0.066)^{1/12} = 1 - (0.934)^{0.083333} \\ = 0.005674 \\ \end{array}
$$

For months 31 through 360:

$$
\mathrm{CPR} = 6\%
$$

$$
165 \mathrm{PSA} = 1.65 (0.06) = 0.099
$$

$$
\begin{array}{l} \mathrm{SMM} = 1 - (1 - 0.099)^{1/12} = 1 - (0.901)^{0.083333} \\ = 0.008282 \\ \end{array}
$$

Notice that the SMM assuming 165 PSA is not 1.65 times the SMM at 100 PSA. Rather, the CPR for the pool's age at 100 PSA is multiplied by 1.65 to generate the CPR representing 165 PSA at that age.

# Illustration of Monthly Cash Flow Construction

We now show how to construct a monthly cash flow for a hypothetical agency pass-through given a PSA assumption. For the purpose of this illustration, the underlying mortgages for this hypothetical pass-through are assumed to be fixed rate fully amortizing mortgages with a weighted average coupon (WAC) rate of 6.0\%. It will be assumed that the mortgage pass-through rate is 5.5\% with a weighted average maturity (WAM) of 358 months.

Table 1 shows the cash flow for selected months assuming 100 PSA. The cash flow is broken down into three components: (1) interest (based on the pass-through rate), (2) the

Table 1 Monthly Cash Flow for a 400 Million Mortgage Pass-Through with a 5.5\% Pass-Through Rate, a WAC of 6.0\%, and a WAM of 358 Months, Assuming 100\% PSA

<table><tr><td>(1)</td><td>(2)</td><td>(3)</td><td>(4)</td><td>(5)</td><td>(6)</td><td>(7)</td><td>(8)</td><td>(9)</td></tr><tr><td>Month</td><td>Outstanding Balance</td><td>SMM</td><td>Mortgage Payment</td><td>Net Interest</td><td>Scheduled Principal</td><td>Prepayments</td><td>Total Principal</td><td>Cash Flow</td></tr><tr><td>1</td><td>400,000,000</td><td>0.00050</td><td>2,402,998</td><td>1,833,333</td><td>402,998</td><td>200,350</td><td>603,349</td><td>2,436,682</td></tr><tr><td>2</td><td>399,396,651</td><td>0.00067</td><td>2,401,794</td><td>1,830,568</td><td>404,810</td><td>266,975</td><td>671,785</td><td>2,502,353</td></tr><tr><td>3</td><td>398,724,866</td><td>0.00084</td><td>2,400,187</td><td>1,827,489</td><td>406,562</td><td>333,463</td><td>740,025</td><td>2,567,514</td></tr><tr><td>4</td><td>397,984,841</td><td>0.00101</td><td>2,398,177</td><td>1,824,097</td><td>408,253</td><td>399,780</td><td>808,033</td><td>2,632,130</td></tr><tr><td>5</td><td>397,176,808</td><td>0.00117</td><td>2,395,766</td><td>1,820,394</td><td>409,882</td><td>465,892</td><td>875,773</td><td>2,696,167</td></tr><tr><td>6</td><td>396,301,034</td><td>0.00134</td><td>2,392,953</td><td>1,816,380</td><td>411,447</td><td>531,764</td><td>943,211</td><td>2,759,591</td></tr><tr><td>7</td><td>395,357,823</td><td>0.00151</td><td>2,389,738</td><td>1,812,057</td><td>412,949</td><td>597,362</td><td>1,010,311</td><td>2,822,368</td></tr><tr><td>8</td><td>394,347,512</td><td>0.00168</td><td>2,386,124</td><td>1,807,426</td><td>414,386</td><td>662,652</td><td>1,077,038</td><td>2,884,464</td></tr><tr><td>9</td><td>393,270,474</td><td>0.00185</td><td>2,382,110</td><td>1,802,490</td><td>415,758</td><td>727,600</td><td>1,143,357</td><td>2,945,847</td></tr><tr><td>10</td><td>392,127,117</td><td>0.00202</td><td>2,377,698</td><td>1,797,249</td><td>417,063</td><td>792,172</td><td>1,209,235</td><td>3,006,484</td></tr><tr><td>11</td><td>390,917,882</td><td>0.00219</td><td>2,372,890</td><td>1,791,707</td><td>418,300</td><td>856,336</td><td>1,274,636</td><td>3,066,343</td></tr><tr><td>12</td><td>389,643,247</td><td>0.00236</td><td>2,367,686</td><td>1,785,865</td><td>419,470</td><td>920,057</td><td>1,339,527</td><td>3,125,391</td></tr><tr><td>13</td><td>388,303,720</td><td>0.00253</td><td>2,362,089</td><td>1,779,725</td><td>420,571</td><td>983,303</td><td>1,403,873</td><td>3,183,599</td></tr><tr><td>14</td><td>386,899,847</td><td>0.00271</td><td>2,356,101</td><td>1,773,291</td><td>421,602</td><td>1,046,041</td><td>1,467,643</td><td>3,240,934</td></tr><tr><td>15</td><td>385,432,204</td><td>0.00288</td><td>2,349,724</td><td>1,766,564</td><td>422,563</td><td>1,108,239</td><td>1,530,802</td><td>3,297,366</td></tr><tr><td>16</td><td>383,901,402</td><td>0.00305</td><td>2,342,961</td><td>1,759,548</td><td>423,454</td><td>1,169,864</td><td>1,593,318</td><td>3,352,866</td></tr><tr><td>17</td><td>382,308,084</td><td>0.00322</td><td>2,335,813</td><td>1,752,245</td><td>424,273</td><td>1,230,887</td><td>1,655,159</td><td>3,407,405</td></tr><tr><td>18</td><td>380,652,925</td><td>0.00340</td><td>2,328,284</td><td>1,744,659</td><td>425,020</td><td>1,291,274</td><td>1,716,294</td><td>3,460,953</td></tr><tr><td>19</td><td>378,936,632</td><td>0.00357</td><td>2,320,377</td><td>1,736,793</td><td>425,694</td><td>1,350,996</td><td>1,776,690</td><td>3,513,483</td></tr><tr><td>20</td><td>377,159,941</td><td>0.00374</td><td>2,312,095</td><td>1,728,650</td><td>426,296</td><td>1,410,023</td><td>1,836,319</td><td>3,564,968</td></tr><tr><td>21</td><td>375,323,622</td><td>0.00392</td><td>2,303,442</td><td>1,720,233</td><td>426,824</td><td>1,468,325</td><td>1,895,148</td><td>3,615,382</td></tr><tr><td>22</td><td>373,428,474</td><td>0.00409</td><td>2,294,420</td><td>1,711,547</td><td>427,278</td><td>1,525,872</td><td>1,953,150</td><td>3,664,697</td></tr><tr><td>23</td><td>371,475,324</td><td>0.00427</td><td>2,285,034</td><td>1,702,595</td><td>427,657</td><td>1,582,637</td><td>2,010,294</td><td>3,712,889</td></tr><tr><td>24</td><td>369,465,030</td><td>0.00444</td><td>2,275,288</td><td>1,693,381</td><td>427,962</td><td>1,638,590</td><td>2,066,553</td><td>3,759,934</td></tr><tr><td>25</td><td>367,398,478</td><td>0.00462</td><td>2,265,185</td><td>1,683,910</td><td>428,192</td><td>1,693,706</td><td>2,121,898</td><td>3,805,808</td></tr><tr><td>26</td><td>365,276,580</td><td>0.00479</td><td>2,254,730</td><td>1,674,184</td><td>428,347</td><td>1,747,956</td><td>2,176,303</td><td>3,850,488</td></tr><tr><td>27</td><td>363,100,276</td><td>0.00497</td><td>2,243,928</td><td>1,664,210</td><td>428,427</td><td>1,801,315</td><td>2,229,742</td><td>3,893,952</td></tr><tr><td>28</td><td>360,870,534</td><td>0.00514</td><td>2,232,783</td><td>1,653,990</td><td>428,430</td><td>1,853,758</td><td>2,282,189</td><td>3,936,178</td></tr><tr><td>29</td><td>358,588,346</td><td>0.00514</td><td>2,221,300</td><td>1,643,530</td><td>428,358</td><td>1,842,021</td><td>2,270,379</td><td>3,913,909</td></tr><tr><td>30</td><td>356,317,967</td><td>0.00514</td><td>2,209,875</td><td>1,633,124</td><td>428,286</td><td>1,830,345</td><td>2,258,631</td><td>3,891,755</td></tr><tr><td>100</td><td>223,414,587</td><td>0.00514</td><td>1,540,329</td><td>1,023,984</td><td>423,256</td><td>1,146,847</td><td>1,570,104</td><td>2,594,087</td></tr><tr><td>101</td><td>221,844,483</td><td>0.00514</td><td>1,532,407</td><td>1,016,787</td><td>423,185</td><td>1,138,773</td><td>1,561,958</td><td>2,578,745</td></tr><tr><td>102</td><td>220,282,525</td><td>0.00514</td><td>1,524,526</td><td>1,009,628</td><td>423,114</td><td>1,130,740</td><td>1,553,853</td><td>2,563,482</td></tr><tr><td>103</td><td>218,728,672</td><td>0.00514</td><td>1,516,686</td><td>1,002,506</td><td>423,042</td><td>1,122,749</td><td>1,545,791</td><td>2,548,297</td></tr><tr><td>104</td><td>217,182,881</td><td>0.00514</td><td>1,508,885</td><td>995,422</td><td>422,971</td><td>1,114,799</td><td>1,537,770</td><td>2,533,191</td></tr><tr><td>105</td><td>215,645,111</td><td>0.00514</td><td>1,501,125</td><td>988,373</td><td>422,900</td><td>1,106,891</td><td>1,529,790</td><td>2,518,164</td></tr><tr><td>200</td><td>100,719,066</td><td>0.00514</td><td>919,770</td><td>461,629</td><td>416,174</td><td>515,859</td><td>932,033</td><td>1,393,662</td></tr><tr><td>201</td><td>99,787,032</td><td>0.00514</td><td>915,039</td><td>457,357</td><td>416,104</td><td>511,066</td><td>927,170</td><td>1,384,527</td></tr><tr><td>202</td><td>98,859,862</td><td>0.00514</td><td>910,333</td><td>453,108</td><td>416,034</td><td>506,298</td><td>922,332</td><td>1,375,439</td></tr><tr><td>203</td><td>97,937,531</td><td>0.00514</td><td>905,651</td><td>448,880</td><td>415,964</td><td>501,555</td><td>917,518</td><td>1,366,399</td></tr><tr><td>204</td><td>97,020,012</td><td>0.00514</td><td>900,994</td><td>444,675</td><td>415,893</td><td>496,836</td><td>912,730</td><td>1,357,405</td></tr><tr><td>205</td><td>96,107,283</td><td>0.00514</td><td>896,360</td><td>440,492</td><td>415,823</td><td>492,142</td><td>907,966</td><td>1,348,457</td></tr><tr><td>300</td><td>28,001,417</td><td>0.00514</td><td>549,218</td><td>128,340</td><td>409,211</td><td>141,907</td><td>551,118</td><td>679,457</td></tr><tr><td>301</td><td>27,450,299</td><td>0.00514</td><td>546,393</td><td>125,814</td><td>409,142</td><td>139,073</td><td>548,215</td><td>674,028</td></tr><tr><td>302</td><td>26,902,085</td><td>0.00514</td><td>543,583</td><td>123,301</td><td>409,073</td><td>136,254</td><td>545,326</td><td>668,628</td></tr><tr><td>303</td><td>26,356,758</td><td>0.00514</td><td>540,787</td><td>120,802</td><td>409,003</td><td>133,450</td><td>542,453</td><td>663,255</td></tr><tr><td>304</td><td>25,814,305</td><td>0.00514</td><td>538,006</td><td>118,316</td><td>408,934</td><td>130,660</td><td>539,595</td><td>657,910</td></tr><tr><td>305</td><td>25,274,710</td><td>0.00514</td><td>535,239</td><td>115,842</td><td>408,865</td><td>127,885</td><td>536,751</td><td>652,593</td></tr><tr><td>350</td><td>3,725,850</td><td>0.00514</td><td>424,402</td><td>17,077</td><td>405,773</td><td>17,075</td><td>422,848</td><td>439,925</td></tr><tr><td>351</td><td>3,303,002</td><td>0.00514</td><td>422,219</td><td>15,139</td><td>405,704</td><td>14,901</td><td>420,605</td><td>435,744</td></tr><tr><td>352</td><td>2,882,397</td><td>0.00514</td><td>420,048</td><td>13,211</td><td>405,636</td><td>12,738</td><td>418,374</td><td>431,585</td></tr><tr><td>353</td><td>2,464,023</td><td>0.00514</td><td>417,887</td><td>11,293</td><td>405,567</td><td>10,587</td><td>416,154</td><td>427,447</td></tr><tr><td>354</td><td>2,047,869</td><td>0.00514</td><td>415,738</td><td>9,386</td><td>405,499</td><td>8,447</td><td>413,946</td><td>423,332</td></tr><tr><td>355</td><td>1,633,924</td><td>0.00514</td><td>413,600</td><td>7,489</td><td>405,430</td><td>6,318</td><td>411,749</td><td>419,237</td></tr><tr><td>356</td><td>1,222,175</td><td>0.00514</td><td>411,473</td><td>5,602</td><td>405,362</td><td>4,201</td><td>409,563</td><td>415,164</td></tr><tr><td>357</td><td>812,613</td><td>0.00514</td><td>409,357</td><td>3,724</td><td>405,294</td><td>2,095</td><td>407,388</td><td>411,113</td></tr><tr><td>358</td><td>405,224</td><td>0.00514</td><td>407,251</td><td>1,857</td><td>405,225</td><td>0</td><td>405,225</td><td>407,082</td></tr></table>

${}^{a}$  Since the WAM is 358 months,the underlying mortgage pool is seasoned an average of two months. Therefore, the CPR for month 28 is  $6\%$  .

regularly scheduled principal payment, and (3) prepayments based on 100 PSA. Let's walk through Table 1 column by column:

Column 1. This is the month.

Column 2. This column gives the outstanding mortgage balance at the beginning of the month. It is equal to the outstanding balance at the beginning of the previous month reduced by the total principal payment in the previous month.

Column 3. This column shows the SMM for 100 PSA. Two things should be noted in this column. First, for month 1, the SMM is for a pass-through that has been seasoned three months because the WAM is 357 months. This results in a CPR of  $0.8\%$ . Second, from month 27 on, the SMM is 0.00514, which corresponds to a CPR of  $6\%$ .

Column 4. The aggregate monthly mortgage payments using a  $6 \%$ note rate are shown in this column. Notice that the total monthly mortgage payment declines over time, as prepayments reduce the mortgage balance outstanding. (In the absence of prepayments, this figure would remain constant.) In essence, the payment is calculated each month as a function of the WAC, the remaining balance at the end of the prior month, and the remaining term (i.e., the original WAM minus the number of months since issuance). For example, the payment in month 10 of  \$2,376,474 can be generated on a calculator by inputting\$ 391,508,422 as the balance or present value,  $0.5 \%$  (6.0\% divided by 12) as the rate, and 348 months as the remaining term. $^{4}$

Column 5. The monthly interest paid to the pass-through investor is found in this column. This value is determined by multiplying the outstanding mortgage balance at the beginning of the month by the pass-through rate of  $5.5\%$  and dividing by 12.

Column 6. This column shows the scheduled principal repayment, or amortization. This is the difference between the total monthly mortgage payment [the amount shown in column (4)] and the gross coupon interest for the month. The gross coupon interest is  $6.0\%$  multiplied by the outstanding mortgage balance at the beginning of the month, then divided by 12.


Column 7. The dollar value of prepayments for the month is reported in this column. This amount is calculated by using the following equation:

Prepayments = SMM × (Beginning principal balance_t - Scheduled principal payment_t)

So, for example, in month 100, the beginning mortgage balance is \$223,414,587, the scheduled principal payment is \$423,356, and the SMM at 100 PSA is 0.00514301 (only 0.00514 is shown in the table to save space), so the prepayment is

$$
\begin{array}{l} 0.00514301 \times (\$223,414,587 - \$423,356) \\ = \$1,146,847 \\ \end{array}
$$

Column 8. The total principal payment, which is the sum of columns (6) and (7), is shown in this column.

Column 9. The projected monthly cash flow for this pass-through is shown in this last column. The monthly cash flow is the sum of the interest paid to the pass-through investor [column (5)] and the total principal payments for the month [column (8)].

# Prospectus Prepayment Curve

A more recent addition to MBS prepayment terminology is the prospectus prepayment curve (PPC). While the logic underlying the PSA convention (i.e., that loans prepay faster as they age, all other factors constant) remains in force, a PPC curve allowed its creator (typically the underwriter of a private-label deal) to specify the prepayment ramp that was used to structure the deal. Evidence suggested that loans have seasoned faster than the 30 month period implied by the PSA curve, especially for some products (such as alt-A loans) that were believed to season faster than normal. Rather than use a percentage of a publicly utilized ramp, PPC curves (which are quoted in a transaction's prospectus supplement) were used for many nonagency transactions between 2004 and 2007.


Typically,  $100\%$  PPC is the base-case prepayment assumption used to create a particular deal. PPC curves (or ramps) are generally specified as a beginning and terminal CPR, along with the associated time period. A typical ramp might be specified as "8-20\% CPR over 12 months." This translates to an assumption of  $8\%$  CPR in the first month, increasing  $1.09\%$  per month for the next 11 months, and terminating at  $20\%$  CPR in month 12. However, there is no industry standardization for the usage of this terminology, as the specification is issue-dependent. As a result, investors must confirm how "100\% PPC" is defined for each particular issue before performing further analysis.

The language utilized in a deal's prospectus supplement is illuminating. For example, the document for the CWALT 2005-J9 deal has language as follows:

Prepayments of mortgage loans commonly are measured relative to a prepayment standard or model. The model used in this prospectus supplement assumes a constant prepayment rate (i.e., CPR) or an assumed rate of prepayment each month of the then-outstanding principal balance of a pool of new mortgage loans. A  $100\%$  prepayment assumption for loan group 1 (the "prepayment assumption") assumes a CPR of  $8.0\%$  per annum of the then outstanding principal balance of the applicable mortgage loans in the first month of the life of the mortgage loans and an additional approximately  $1.0909090909\%$  (precisely  $12\% / 11$ ) per annum in the second through 11th months. Beginning in the 12th month and in each month thereafter during the life of the mortgage loans, a  $100\%$  prepayment assumption assumes a CPR of  $20.0\%$  per annum each month.

Note that the prospectus supplement does not directly refer to a "PPC," but rather defines the prepayment ramp as "a  $100\%$  prepayment assumption."


# Prepayment Conventions for Securities Backed by Home Equity and Manufactured Housing Loans

While the expression of prepayments in the MBS market is fairly standardized and comprises a combination of PSA curves and CPR calculations as previously described, a variety of descriptions are used to express the paydown behavior of securities backed by home equity and manufactured housing loans. While issuance of securities backed by these loans fell out of favor in the mid-2000s, a brief discussion of these conventions will nonetheless be helpful in understanding how prepayment conventions have been adjusted in order to represent an asset's unique behavior. Despite the diversity in terminology, most of the concepts used to indicate prepayments for these two sectors of the mortgage market use the CPR concept as the numeraire while incorporating the PSA ramping methodology.

# Home Equity Prepayment Speeds

In the early stages of the development of the securitized market for home equity loans, the majority of the loans were fixed rate, closed-end loans. Over the years, the balance has slowly shifted in favor of adjustable rate loans, particularly subprime ARMs. The earliest definition of prepayment speeds in the home equity market was the home equity prepayment (HEP) curve.5 The primary motivation for using a different prepayment methodology for home equity loans was to capture the faster seasoning ramp observed for the asset class. Typically, home equity loans season faster than traditional single-family loans, making the PSA ramp an inappropriate description of the behavior of prepayments.

The HEP curve reflects the observed behavior in historic HEL data—it has a ramp of

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/76873988ff3c4ebe3555765cd0ade16b74de4a9a5dfd601a56ad8e877edc14a8.jpg)
Figure 2 HEP Curves

10 months and a variable long-term CPR to reflect individual issuer speeds. A faster long-term speed means faster CPRs on the ramp because the ramp is fixed at 10 months regardless of the long-term speed. For example, a  $20\%$  HEP projection would mean a 10-month ramp increasing to  $20\%$  in the 10th month from  $2\%$  in the first month and a constant  $20\%$  thereafter. Figure 2 shows several HEP curves at  $20\%$  HEP and  $24\%$  HEP, where month 1 speeds of  $2.4\%$  CPR increase over 10 months to  $24\%$  CPR.

In addition to utilizing the HEP curve, a PPC ramp is also commonly used to define the base-case prepayment assumption for the product. As with other mortgage products, the specification of the ramp will be dependent on the attributes of the underlying loan collateral, with respect to both the beginning and terminal speeds as well as the duration of the ramp. Occasionally, deals are also priced to a constant CPR assumption, ignoring the impact of seasoning in generating the deal's cash flows.

## Manufactured Housing Prepayment Curve

The manufactured housing prepayment (MHP) curve is a measure of prepayment behavior for manufactured housing, based on the Green Tree Financial manufactured housing prepayment experience. MHP is similar to the PSA curve, except that the seasoning ramp is slightly different to account for the specific behavior of manufactured loans:  $100\%$  MHP is equivalent to  $3.6\%$  CPR at month zero and increases  $0.1\%$  CPR every month until month 24, when it plateaus at  $6\%$  CPR. Figure 3 shows the prepayment speeds at  $50\%$  MHP,  $100\%$  MHP, and  $200\%$  MHP.

# DELINQUENCY, DEFAULT, AND LOSS TERMINOLOGY

The measurement of potential and actual cash flow impairment resulting from borrower credit problems is critically important to the analysis of private label or nonagency MBS. Historically, the importance of these measures stemmed from their role in allowing investors in subordinate MBS tranches to assess relative value and risk. However, the mortgage crisis that began in 2007 demonstrated to investors that all nonagency securities have exposure to defaults and losses; put differently, it is impossible to invest in nonagency MBS without taking on a material degree of credit risk. This means that any divergence in realized default and loss experience from investors' initial expectations can result in writedowns and losses on the investment.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/71974780632f4eb23f99e060cc9f7785013c6d26746ca53e9ecf1e3f9f59f79d.jpg)
Figure 3 MHP Curves

Despite the importance of delinquencies, losses, and defaults in the mortgage-related markets, the terminology is not standardized. For instance, static pool losses may be reported on a monthly or annualized basis as a percentage of either current or original balance, with the metric based upon current balance being the preferred method to ensure consistency with prepayment reporting.

Before we discuss the measurement of defaults and losses, it is instructive to briefly review the various outcomes of a loan when the obligor ceases making scheduled payments. A loan becomes delinquent when the obligor fails to make the contractual payment on the stated date. If the underlying property has appreciated from the initial purchase price, the homeowner can often sell the home and use the proceeds to settle the mortgage debt. (This generally is categorized as a voluntary prepayment and is considered part of housing turnover.) If the homeowner cannot sell the property at a high enough price and remains delinquent, the loan is declared to be in default once all collection (and modification) efforts have failed. At that point, the issuer (or the servicer) has several options. There may either be a short sale, where the borrower sells the property in a negotiated transaction subject to approval by the servicer; alternatively, the property may go into the foreclosure or repossession process and be eventually sold by the servicer. Therefore, the process chain is delinquency to default to foreclosure (or repossession) to liquidation, at which time the severity of loss can be assessed.


# Delinquency Measures

As mentioned, when a borrower fails to make one or more timely payments, the loan is said to be delinquent. Delinquency measures are designed to gauge whether borrowers are current on their loan payment as well as to stratify unpaid loans according to the seriousness of the delinquency. The calculation method used is determined by the servicer. When the underlying pool of assets is comprised of mortgage loans, the two commonly used methods for classifying delinquencies are those recommended by the now-defunct Office of Thrift Supervision (OTS) and the Mortgage Bankers Association (MBA).

The OTS method uses the following loan delinquency classifications:

- Payment due date to 30 days late: Current
30-60 days late: 30 days delinquent

- 60-90 days late: 60 days delinquent
- More than 90 days late:  ${90} +$  days delinquent

The MBA method is a somewhat more stringent classification method, classifying a loan as 30 days delinquent once payments are not received after the due date. Thus, a loan classified as "current" under the OTS method would be listed as "30 days delinquent" under the MBA method. The two methods can report significantly different delinquencies.[6]

# Default Measures

The conditions that result in classification of some loans as delinquent (such as the loss of a job or illness) may change, resulting in the resumption of timely principal and interest payments. However, some portion of the loans classified as delinquent typically end up in default. By definition, default is the point where the borrower loses title to the property in question.

Two broadly used measures for quantifying default are the cumulative default rate and the conditional default rate. The cumulative default rate (denoted as the CDX) is the proportion of the total face value of loans in a pool that have gone into default as a percentage of the total face value of the security.

The conditional default rate (CDR) is the annualized value of the unpaid principal balance of newly defaulted loans over the course of a month as a percentage of the unpaid balance of the pool (before scheduled principal payment) at the beginning of the month. It is computed by first calculating the monthly default rate (MDR) as shown below:

$$
\begin{array}{l} \text{MDR} \\ = \frac{\text{Default loan balance in month } t}{\text{Beginning balance for month } t - \text{Scheduled principal}} \\ \end{array}
$$

This is then annualized as follows to get the CDR:

$$
\mathrm{CDR}_{t} = 1 - (1 - \text{Default rate for month } t)^{12}
$$

As described earlier, the default rate represents involuntary prepayments, and the CDR represents the involuntary prepayment speed calculated for nonagency MBS. Voluntary prepayment speeds (i.e., those resulting from refinancing activity and housing turnover) must be calculated separately.

Note that the conversion of MDR to CDR is identical to the formula for converting SMMs to CPRs.


Let's use the following as an example. Assume that a nonagency pool with an 8\% note rate and 300 months left to maturity has a balance at time  t  of 10,000,000. The pool's scheduled monthly payment is 77,181.62, comprised of 66,666.67 in interest and \$10,514.96 in scheduled principal. Assume that the pool receives \$20,000 of voluntary prepayments and 15,000 in involuntary prepayments.

The monthly voluntary prepayment speed is calculated as follows:

$$
\begin{array}{l} \text{Voluntary SMM} = \frac{\$20,000}{\$10,000,000 - \$10,514.96} \\ = 0.002 \\ \end{array}
$$

This can then be converted to  $2.37\%$  CPR.

The MDR is calculated similarly:

$$
\mathrm{MDR} = \frac{\$15,000}{\$10,000,000 - \$10,514.96} = 0.0015
$$ which can be converted to  $1.78\%$  CDR.


In some cases, the involuntary and voluntary prepayment speeds are combined to calculate a single prepayment speed. In this case, the calculation of a "total CPR" is as follows:

$$
\begin{array}{l} \text{Total SMM} = \frac{\$35,000}{\$10,000,000 - \$10,514.96} \\ = 0.0035 \\ \end{array}
$$ which can be converted to a total CPR of  $4.12\%$ .


There are a number of issues implied by these calculations. First, note that the voluntary SMM and MDR equals the pool's total SMM. (It is not true, however, that CPRs and CDRs sum to equal the total pool CPR; it is only the monthly rates that are additive.) In using the output of a model, it is also important to ascertain what the vendor means when they quote a "CPR." Since many systems will show CPRs as the annualized rate of all prepayments (i.e., total CPRs) and show CDRs separately, the voluntary prepayment speed must be calculated independently. This can be accomplished by deannualizing the CPRs and CDRs (i.e., converting them to SMMs and MDRs), subtracting the MDR from the SMM, and annualizing the difference. In the above example, the voluntary SMM is 0.0035 less 0.0015 or 0.002, which annualizes to a  $2.37\%$  voluntary CPR.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/e05718c3bf48374fca274424c90cf16ffd898b42077c7b70376d49785f7f6c82.jpg)
Figure 4 Monthly Dollar Amounts of Defaults on a 100 Million Pool Using 8\% CDR at Different Voluntary Prepayment Speeds


Also note that the CDR metric measures only the amount of defaults and not the amount of losses because actual losses depends upon the amounts that can be recovered on loans in default, adjusted for the costs of collection and servicer advances, if applicable. In the extreme case, if there is full recovery of the unpaid principal balance of the defaulted loans, the losses will be zero except for the costs of recovery. However, depending upon the timing of the recovery of the defaulted loan balances, the cash flows to certain bondholders may be interrupted.

There is also an interesting and important relationship between the voluntary prepayment speed and the dollar amount of defaults in a pool. Every dollar of principal that is prepaid voluntarily is returned at 100 cents on the dollar and cannot subsequently go into default. Therefore, the dollar amount of a pool's principal that goes into default declines as voluntary prepayment speeds increase, even if the assumed CDR remains constant. This is illustrated in Figure 4. The figure shows the projected dollar amounts of defaults on a \$100 million pool with an 8.5\% note rate at 8\% CDR for two different voluntary CPRs. At a combination of  $15\%$  CPR and  $8\%$  CDR, the pool is expected to lose a total of 21.9 million in face value; the projected amount of defaulted principal using  $8\%$  CPR and  $8\%$  CDR increases to 29.0 million.


As with prepayment analysis, there are disadvantages to using constant CDRs that tend to distort credit analysis. A constant CDR assumption is not necessarily consistent with the actual behavior of defaults, and also does not allow the analysis to take variations in the timing of defaults into account. As with prepayments, credit problems have historically tended to be very low immediately after the loans are closed, but generally increase with time as the pool in question ages.

One time-honored methodology is to utilize the Standard Default Assumption (SDA) convention, which assumes that defaults (as measured in annual terms using CDRs) have a fairly consistent pattern over the life of the pool. The SDA model is similar in concept to the PSA convention used in prepayment analysis, and is specified as follows:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/68ece33815c76793d56d8763c140a59d0be71e47f2df18a944f782ec392cf43e.jpg)
Figure 5  $100\%$  SDA Without Effects of Prepayments


-  $0.02\%$  initial CDR, rising  $0.02\%$  CDR until reaching  $0.6\%$  CDR in month 30.
- A constant  $0.6\%$  CDR from months 30 to 60.
- A linear decline of  $0.0095\%$  between months 61 and 120, reaching  $0.03\%$  in month 120.
- A constant  $0.03\%$  CDR for the remaining term.

The base SDA curve is shown in Figure 5.

In addition to the prescribed CDR curve described above, the base SDA model explicitly accounts for the effects of voluntary prepayments by assuming a prepayment speed of  $150\%$  PSA. One hundred percent SDA at  $150\%$  PSA results in cumulative defaults of around  $2.73\%$ . The dollar amount of monthly defaults is calculated as the product of monthly default rates or MDRs (i.e., the deannualized CDR) and the monthly balance factor at the projected prepayment speed. Cumulative defaults are the sum of this vector. Table 2 shows how  $100\%$  SDA would be calculated, assuming a  $6.0\%$  coupon pass-through (as in the prior examples).

A depiction of monthly defaults using the base assumptions of the SDA model at  $150\%$  PSA is shown in Figure 6.

# Loss Severity Measures

Where the lender has a lien on the property, a portion of the value of the loan can be recovered through the legal recovery process (i.e., through foreclosure and repossession) and subsequent sale of the asset. The difference between the proceeds received from the recovery process (after all transaction costs) and principal balance of the loan is the loss in dollars. The historical loss severity rate in any month is defined as follows:

$$
\text{Loss severity rate} = 1 - \frac{\text{Liquidation Proceeds}}{\text{Liquidation Balance}_{t}}
$$

The loss severity rate ranges from 0 to 1 (or  $0\%$  to  $100\%$ ). If the loss severity rate is zero, then liquidation proceeds are equal to the liquidated loan balance. A loss severity rate of 1 (or  $100\%$ ) means that there are no liquidation proceeds. The loss rate is equal to the annual default rate multiplied by the loss assumption severity. In projecting future cash flows and losses, investors will often use a constant loss

Table 2 Calculation of Monthly Defaults Using  $100\%$  SDA at  $150\%$  PSA for a Pass-Through with a  $5.5\%$  Pass-Through Rate, a WAC of  $6.0\%$ , and a WAM of 357 Months

<table><tr><td>(1)</td><td>(2)</td><td>(3)</td><td>(4)</td><td>(5)</td></tr><tr><td>Month</td><td>100\% SDA (in CDRs)</td><td>100\% SDA (in MDRs)a</td><td>Bond Factor (@ 150\% PSA)</td><td>Factor-Adjusted MDRb</td></tr><tr><td>1</td><td>0.080\%</td><td>0.007\%</td><td>0.99798</td><td>0.0067\%</td></tr><tr><td>2</td><td>0.100\%</td><td>0.008\%</td><td>0.99571</td><td>0.0083\%</td></tr><tr><td>3</td><td>0.120\%</td><td>0.010\%</td><td>0.99318</td><td>0.0099\%</td></tr><tr><td>4</td><td>0.140\%</td><td>0.012\%</td><td>0.99041</td><td>0.0116\%</td></tr><tr><td>5</td><td>0.160\%</td><td>0.013\%</td><td>0.98738</td><td>0.0132\%</td></tr><tr><td>6</td><td>0.180\%</td><td>0.015\%</td><td>0.98410</td><td>0.0148\%</td></tr><tr><td>7</td><td>0.200\%</td><td>0.017\%</td><td>0.98057</td><td>0.0164\%</td></tr><tr><td>8</td><td>0.220\%</td><td>0.018\%</td><td>0.97680</td><td>0.0179\%</td></tr><tr><td>9</td><td>0.240\%</td><td>0.020\%</td><td>0.97278</td><td>0.0195\%</td></tr><tr><td>10</td><td>0.260\%</td><td>0.022\%</td><td>0.96853</td><td>0.0210\%</td></tr><tr><td>11</td><td>0.280\%</td><td>0.023\%</td><td>0.96403</td><td>0.0225\%</td></tr><tr><td>12</td><td>0.300\%</td><td>0.025\%</td><td>0.95930</td><td>0.0240\%</td></tr><tr><td>13</td><td>0.320\%</td><td>0.027\%</td><td>0.95433</td><td>0.0255\%</td></tr><tr><td>14</td><td>0.340\%</td><td>0.028\%</td><td>0.94914</td><td>0.0269\%</td></tr><tr><td>15</td><td>0.360\%</td><td>0.030\%</td><td>0.94372</td><td>0.0284\%</td></tr><tr><td>16</td><td>0.380\%</td><td>0.032\%</td><td>0.93807</td><td>0.0298\%</td></tr><tr><td>17</td><td>0.400\%</td><td>0.033\%</td><td>0.93220</td><td>0.0311\%</td></tr><tr><td>18</td><td>0.420\%</td><td>0.035\%</td><td>0.92612</td><td>0.0325\%</td></tr><tr><td>19</td><td>0.440\%</td><td>0.037\%</td><td>0.91982</td><td>0.0338\%</td></tr><tr><td>20</td><td>0.460\%</td><td>0.038\%</td><td>0.91332</td><td>0.0351\%</td></tr><tr><td>21</td><td>0.480\%</td><td>0.040\%</td><td>0.90661</td><td>0.0363\%</td></tr><tr><td>22</td><td>0.500\%</td><td>0.042\%</td><td>0.89970</td><td>0.0376\%</td></tr><tr><td>23</td><td>0.520\%</td><td>0.043\%</td><td>0.89260</td><td>0.0388\%</td></tr><tr><td>24</td><td>0.540\%</td><td>0.045\%</td><td>0.88531</td><td>0.0399\%</td></tr><tr><td>25</td><td>0.560\%</td><td>0.047\%</td><td>0.87783</td><td>0.0411\%</td></tr><tr><td>26</td><td>0.580\%</td><td>0.048\%</td><td>0.87017</td><td>0.0422\%</td></tr><tr><td>27</td><td>0.600\%</td><td>0.050\%</td><td>0.86233</td><td>0.0432\%</td></tr><tr><td>28</td><td>0.600\%</td><td>0.050\%</td><td>0.85456</td><td>0.0428\%</td></tr><tr><td>29</td><td>0.600\%</td><td>0.050\%</td><td>0.84685</td><td>0.0425\%</td></tr><tr><td>30</td><td>0.600\%</td><td>0.050\%</td><td>0.83920</td><td>0.0421\%</td></tr><tr><td>100</td><td>0.192\%</td><td>0.016\%</td><td>0.43487</td><td>0.0069\%</td></tr><tr><td>101</td><td>0.182\%</td><td>0.015\%</td><td>0.43064</td><td>0.0065\%</td></tr><tr><td>102</td><td>0.173\%</td><td>0.014\%</td><td>0.42644</td><td>0.0061\%</td></tr><tr><td>103</td><td>0.163\%</td><td>0.014\%</td><td>0.42228</td><td>0.0057\%</td></tr><tr><td>104</td><td>0.154\%</td><td>0.013\%</td><td>0.41815</td><td>0.0054\%</td></tr><tr><td>105</td><td>0.144\%</td><td>0.012\%</td><td>0.41406</td><td>0.0050\%</td></tr><tr><td>200</td><td>0.030\%</td><td>0.003\%</td><td>0.14894</td><td>0.0004\%</td></tr><tr><td>201</td><td>0.030\%</td><td>0.003\%</td><td>0.14715</td><td>0.0004\%</td></tr><tr><td>202</td><td>0.030\%</td><td>0.003\%</td><td>0.14538</td><td>0.0004\%</td></tr><tr><td>203</td><td>0.030\%</td><td>0.003\%</td><td>0.14363</td><td>0.0004\%</td></tr><tr><td>204</td><td>0.030\%</td><td>0.003\%</td><td>0.14188</td><td>0.0004\%</td></tr><tr><td>205</td><td>0.030\%</td><td>0.003\%</td><td>0.14016</td><td>0.0004\%</td></tr><tr><td>300</td><td>0.030\%</td><td>0.003\%</td><td>0.03093</td><td>0.0001\%</td></tr><tr><td>301</td><td>0.030\%</td><td>0.003\%</td><td>0.03022</td><td>0.0001\%</td></tr><tr><td>302</td><td>0.030\%</td><td>0.003\%</td><td>0.02952</td><td>0.0001\%</td></tr><tr><td>303</td><td>0.030\%</td><td>0.003\%</td><td>0.02882</td><td>0.0001\%</td></tr><tr><td>304</td><td>0.030\%</td><td>0.003\%</td><td>0.02814</td><td>0.0001\%</td></tr><tr><td>305</td><td>0.030\%</td><td>0.003\%</td><td>0.02745</td><td>0.0001\%</td></tr><tr><td>350</td><td>0.030\%</td><td>0.003\%</td><td>0.00289</td><td>0.0000\%</td></tr><tr><td>351</td><td>0.030\%</td><td>0.003\%</td><td>0.00247</td><td>0.0000\%</td></tr><tr><td>352</td><td>0.030\%</td><td>0.003\%</td><td>0.00204</td><td>0.0000\%</td></tr><tr><td>353</td><td>0.030\%</td><td>0.003\%</td><td>0.00163</td><td>0.0000\%</td></tr><tr><td>354</td><td>0.030\%</td><td>0.003\%</td><td>0.00121</td><td>0.0000\%</td></tr><tr><td>355</td><td>0.030\%</td><td>0.003\%</td><td>0.00080</td><td>0.0000\%</td></tr><tr><td>356</td><td>0.030\%</td><td>0.003\%</td><td>0.00040</td><td>0.0000\%</td></tr><tr><td>357</td><td>0.030\%</td><td>0.003\%</td><td>0.00000</td><td>0.0000\%</td></tr><tr><td></td><td></td><td></td><td>Cumulative Defaults</td><td>2.75\%</td></tr></table>

${}^{a}$  CDRs are converted to MDRs by using the following formula:
MDR = 1 - (1 - CDR)h2 b Column (3)  $\times$  (4)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/869c85d5f3689f0600deeed3e532d8c84110fa97367594049b17aca2a9e53ab5.jpg) severity assumption based on a combination of loan attributes, projected changes in home prices, and the length of time until liquidation. The percentage of loss severity is then applied to the monthly default amount (generated by using the applicable MDR) in order to calculate monthly losses.
Figure 6 Monthly CDRs for  $100\%$  SDA Using  $150\%$  PSA


Default and loss severity assumptions (which translate into expected losses) are critical metrics for holders of mortgages and MBS that have exposure to mortgage credit performance. From the viewpoint of issuers, the assumptions used to value and capitalize investments in retained tranches are critical for assessing a firm's value, as any deterioration in the performance of retained tranches can negatively impact overall corporate valuations. Investors in whole-loan mortgages and subordinate MBS routinely use the credit metrics discussed above to analyze the relative value of different alternatives by generating default- and loss-adjusted returns and valuations.

# KEY POINTS

- The monthly cash flow from the underlying pool of mortgage loans for a residential mortgage-backed security includes scheduled principal payments, interest payments, and any principal payments made by borrowers that is in excess of the scheduled principal payment. The last component is referred to as prepayments.


- The valuation of residential mortgage-backed securities requires the generation of a residential MBS's cash flow. Prepayment speeds and default rates must be projected in order to do so.
- The performance of a residential MBS depends on the prepayments and performance of the loan pool.
- The measurement of potential and actual cash flow impairment resulting from borrower credit problems is critically important to the analysis of nonagency or private label MBS.
- Complicating the evaluation of prepayments is the interplay between defaults, which are effectively credit-related prepayments, and prepayments attributable specifically to declining interest rates.
- The approach most commonly used to measure prepayment speeds is the conditional prepayment rate, which calculates monthly prepaid principal (i.e., that excludes scheduled principal amortizations) as a percentage of the security's outstanding balance and then annualizes that percentage. The CPR is an annual rate; the corresponding monthly rate is the single monthly mortality rate.
The Public Securities Association (PSA) prepayment benchmark is expressed as a monthly series of annual prepayment rates that assumes prepayment rates are low for newly originated mortgages and then will speed up as the mortgages age.


- A loan is classified as delinquent when a borrower fails to make one or more timely payments. Measures of delinquency are designed to gauge whether borrowers are current on their loan payment as well as stratifying unpaid loans according to the seriousness of the delinquency. The calculation method used is determined by the servicer. The two commonly used methods for classifying delinquencies are those recommended by the now-defunct Office of Thrift Supervision (OTS) and the Mortgage Bankers Association (MBA).
- Cumulative default rate and conditional default rate are the two broadly used metrics for quantifying defaults for a mortgage pool. The cumulative default rate is the proportion of the total face value of loans in a pool that have gone into default as a percentage of the total face value of the collateral pool. The conditional default rate is the annualized value of the unpaid principal balance of newly defaulted loans over the course of a month as a percentage of the unpaid balance of the pool (before scheduled principal payment) at the beginning of the month. To compute this measure, the monthly default rate must first be calculated.

# NOTES

1. For a detailed discussion of the types of mortgage loans and residential MBS, see Fabozzi, Bhattacharya, and Berliner (2011).

2. Also called the constant prepayment rate.
3. This benchmark is commonly referred to as a "prepayment model," suggesting that it can be used to estimate prepayments. Characterization of this benchmark as a prepayment model is inaccurate. It is simply a market convention. While the PSA has changed its name to the Securities Industry and Financial Markets Association, or SIFMA, the benchmark is still referred to as the "PSA prepayment benchmark."
4. The calculation can also be presented as a series of formulas, which are available in Chapter 21 Fabozzi (2006).
5. The HEP curve was developed by Prudential Securities based on the prepayment experience of 10 billion of home equity loan deals.
6. For example, a June 9, 2000, report by Moody's titled, "Contradictions in Terms: Variations in Terminology in the Mortgage Market," shows that the reported delinquencies can differ dramatically when the different conventions are used.
7. For clarity's sake, we assume a simple pool with no credit enhancement.
8. These payments are reported in the monthly remittance reports compiled by a transaction's trustee.

# REFERENCES

Fabozzi, F. J. (2006). Fixed Income Mathematics: Analytical and Statistical Techniques. New York: McGraw-Hill.

Fabozzi, F. J., Bhattacharya, A. K., and Berliner, S. (2011). Mortgage-Backed Securities, 2nd ed. Hoboken, NJ: John Wiley & Sons.

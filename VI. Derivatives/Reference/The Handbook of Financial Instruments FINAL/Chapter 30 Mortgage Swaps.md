---
aliases:
  - Mortgage Swaps
tags:
key_concepts:
parent_directory: The Handbook of Financial Instruments FINAL
cssclasses: academia
title: Chapter 30 Mortgage Swaps
linter-yaml-title-alias: Mortgage Swaps
---

# Mortgage Swaps

David Yuen, CFA

Senior Vice President

Portfolio Strategist/Risk Manager

Franklin Templeton Investments

Frank J. Fabozzi, Ph.D., CFA

Adjunct Professor Finance

School of Management

Yale University

As explained in Chapter 14, the market for securities backed by real estate assets is a major part of the investment-grade bond market. An efficient strategy to gain exposure (both risk and reward) to the mortgage market is through a mortgage swap. A mortgage swap is a specialized form of interest rate swap developed in the United States. In this chapter we discuss mortgage swaps and other types of swaps (index amortizing swap and total return mortgage swap) that can be used by participants in the mortgage market.

# FEATURES OF MORTGAGE SWAPS

As the name implies, a mortgage swap is a swap transaction entered between two counterparties based on the cash flows and performance of a pool of mortgages. It is a synthetic leveraged long position on mortgages. It is economically equivalent to borrowing funds at LIBOR  $(+/-$  a spread) and investing in a pool of mortgages or mortgage-backed securities.

As with other generic fixed-to-floating interest rate swaps, it has two legs: the fixed leg and the floating leg. The fixed leg is also referred to as the

"mortgage leg" and the floating leg is also referred to as the "funding leg." The mortgage leg replicates the cash flows of a pool of mortgages including the monthly coupon payments, monthly regular principal amortization, monthly irregular principal prepayments, monthly gain (discounts) or loss (premiums) on paydown, and the price appreciation or depreciation on the remaining balance at the end of the holding period. The funding leg replicates the cost of carrying the investment, usually at LIBOR. Since most mortgage swaps are done on 3to 5-year terms and the reference mortgage pool has 15or 30-year maturities, a termination price for the swap must be established at the swap expiration to calculate and settle the gain or loss.

A feature of the mortgage swap that makes it unique from other interest rate swaps is that the notional balance of the mortgage swap (both the mortgage leg and the funding leg) amortizes down simultaneously with actual monthly prepayments on the specific pool of reference mortgages. Therefore, the amortization rate is unknown at the inception of the swap. Some market participants enter into amortizing asset swaps with a predetermined amortization schedule to match the sinking fund schedule of the asset, but in that case, the notional balance is fixed and known upfront. Only a mortgage swap and an index amortizing swap (which is a slightly different version of a mortgage swap) have a variable amortizing schedule that both counterparties can agree upon without ambiguity.

# Mortgage Swap Structure

A typical mortgage swap structure and its cash flows can best be illustrated using an example with the following structure and terms:

<table><tr><td>Notional Amount:</td><td>100 million</td></tr><tr><td>Term:</td><td>3 years</td></tr><tr><td>Reference asset:</td><td>GNMA 8\%, pool#xxxx or all 1999 production</td></tr><tr><td>Initial Price:</td><td>103\% of notional face</td></tr><tr><td>Reference pool WAC:</td><td>8.5\%</td></tr><tr><td>Reference pool WAM:</td><td>330 months</td></tr><tr><td>Projected prepayment rate:</td><td>12\% CPR, 1.06\% SMM</td></tr><tr><td>Initial 1-month LIBOR:</td><td>5.50\%</td></tr><tr><td>Receive:</td><td>Fixed coupon of 8\% (30/360) on current balances of reference pool</td></tr><tr><td>Pay:</td><td>LIBOR flat (act/360) on current value (current balance × initial price) of reference pool</td></tr><tr><td>Receive:</td><td>Principal paydown × discount if initial price is below par</td></tr><tr><td>Pay:</td><td>Principal paydown × premium if initial price is above par</td></tr><tr><td>Payment frequency:</td><td>Monthly</td></tr><tr><td>Payment dates:</td><td>15th of every month to coincide with GNMA payments (25th for FNMA)</td></tr><tr><td>Expiration:</td><td>Cash settlement on difference between initial price and market price on the remaining balance by polling method (three dealers), or</td></tr><tr><td>Physical settlement:</td><td>Mortgage leg receiver pays the initial price and takes delivery of mortgage-backed securities of the remaining balance</td></tr></table>

As the terms indicate, the investor will receive the full economics (coupon income, actual prepayment experience, gain or loss on paydown, and price appreciation or depreciation at the end of the holding period) of owning 100 million of GNMA 8\% pool#xxxxx, and will incur the monthly variable cost of funding at LIBOR. This transaction can be replicated by using a dollar roll, a specialized form of repurchase agreement developed for the mortgage market explained in Chapter 14. The difference between "dollar rolling" GNMA 8\% on a monthly basis and using a mortgage swap is that the funding cost on the dollar roll is unknown from month to month. With a mortgage swap, the investor is locked into a funding rate for the rest of the term, although unwinding the swap may be more costly than unwinding a dollar roll.

Exhibit 30.1 shows the projected cash flows of the same mortgage swap using  $12\%$  CPR as an illustrative prepayment speed and holding LIBOR flat constant at  $5.5\%$ . Keep in mind that the balance or pool factor will be determined monthly depending on the actual monthly prepayment rates and LIBOR may also vary monthly.

# Prepayment Risk

A feature of MBS, which impacts mortgage swaps, is the borrower's option to refinance or prepay partially or in full. The borrower has that option at any time but is more likely to exercise that option when mortgage rates are low. In a declining rate environment, prepayments would speed up leaving the MBS investor with a lower outstanding balance to realize the price appreciation. The duration of MBS also shortens given the faster prepayment, again limiting upside potential. The prepayment risk and consequently, the negative convexity, get passed through to the mortgage swap receiver also. (By negative convexity it is meant that when interest rates decline a large number of basis points, the price appreciation of a security is less than the price depreciation that would be realized if interest rates increased the same number of basis points.) Unlike a normal fixed-rate receiver in a swap, which has positive convexity, a mortgage swap receiver actually has negative convexity.

EXHIBIT 30.1 Cash Flows of the Hypothetical Mortgage Swap

Structure:

<table><tr><td colspan="2">Principal WAM MBS Price ⇒ 103.00</td><td>100 330</td><td>WAC CPR Ending Price ⇒ 101</td><td>8.500\% 12.00\%</td><td>Coupon SMM MY</td><td>8.00\% 1.060\% 7.349\%</td><td>1-month LIBOR PSA BEY</td><td>5.50\% 200\% 7.463\%</td></tr><tr><td>Term</td><td>Principal Payment</td><td>Net Interest</td><td>Prepayment</td><td>MBS Balance</td><td>Principal Settlement</td><td>LIBOR Flat</td><td>Swaps Cash Flow</td><td></td></tr><tr><td>1</td><td>0.0764</td><td>0.6667</td><td>1.0588</td><td>98.8648</td><td>-0.03406</td><td>0.4786</td><td>0.1540</td><td></td></tr><tr><td>2</td><td>0.0761</td><td>0.6591</td><td>1.0468</td><td>97.7419</td><td>-0.03369</td><td>0.4732</td><td>0.1522</td><td></td></tr><tr><td>3</td><td>0.0759</td><td>0.6516</td><td>1.0349</td><td>96.6311</td><td>-0.03332</td><td>0.4678</td><td>0.1505</td><td></td></tr><tr><td>4</td><td>0.0756</td><td>0.6442</td><td>1.0231</td><td>95.5324</td><td>-0.03296</td><td>0.4625</td><td>0.1487</td><td></td></tr><tr><td>5</td><td>0.0753</td><td>0.6369</td><td>1.0115</td><td>94.4456</td><td>-0.03260</td><td>0.4573</td><td>0.1470</td><td></td></tr><tr><td>6</td><td>0.0750</td><td>0.6296</td><td>1.0000</td><td>93.3706</td><td>-0.03225</td><td>0.4521</td><td>0.1453</td><td></td></tr><tr><td>7</td><td>0.0748</td><td>0.6225</td><td>0.9886</td><td>92.3072</td><td>-0.03190</td><td>0.4469</td><td>0.1437</td><td></td></tr><tr><td>8</td><td>0.0745</td><td>0.6154</td><td>0.9773</td><td>91.2554</td><td>-0.03155</td><td>0.4418</td><td>0.1420</td><td></td></tr><tr><td>9</td><td>0.0742</td><td>0.6084</td><td>0.9662</td><td>90.2149</td><td>-0.03121</td><td>0.4368</td><td>0.1404</td><td></td></tr><tr><td>10</td><td>0.0740</td><td>0.6014</td><td>0.9552</td><td>89.1858</td><td>-0.03087</td><td>0.4318</td><td>0.1388</td><td></td></tr><tr><td>11</td><td>0.0737</td><td>0.5946</td><td>0.9443</td><td>88.1679</td><td>-0.03054</td><td>0.4269</td><td>0.1372</td><td></td></tr><tr><td>12</td><td>0.0734</td><td>0.5878</td><td>0.9335</td><td>87.1609</td><td>-0.03021</td><td>0.4220</td><td>0.1356</td><td></td></tr><tr><td>13</td><td>0.0732</td><td>0.5811</td><td>0.9228</td><td>86.1650</td><td>-0.02988</td><td>0.4172</td><td>0.1340</td><td></td></tr><tr><td>14</td><td>0.0729</td><td>0.5744</td><td>0.9123</td><td>85.1798</td><td>-0.02956</td><td>0.4124</td><td>0.1325</td><td></td></tr><tr><td>15</td><td>0.0727</td><td>0.5679</td><td>0.9018</td><td>84.2053</td><td>-0.02923</td><td>0.4077</td><td>0.1309</td><td></td></tr><tr><td>16</td><td>0.0724</td><td>0.5614</td><td>0.8915</td><td>83.2414</td><td>-0.02892</td><td>0.4030</td><td>0.1294</td><td></td></tr><tr><td>17</td><td>0.0721</td><td>0.5549</td><td>0.8813</td><td>82.2880</td><td>-0.02860</td><td>0.3984</td><td>0.1279</td><td></td></tr><tr><td>18</td><td>0.0719</td><td>0.5486</td><td>0.8712</td><td>81.3449</td><td>-0.02829</td><td>0.3939</td><td>0.1264</td><td></td></tr><tr><td>19</td><td>0.0716</td><td>0.5423</td><td>0.8612</td><td>80.4121</td><td>-0.02798</td><td>0.3893</td><td>0.1250</td><td></td></tr><tr><td>20</td><td>0.0714</td><td>0.5361</td><td>0.8513</td><td>79.4894</td><td>-0.02768</td><td>0.3849</td><td>0.1235</td><td></td></tr><tr><td>21</td><td>0.0711</td><td>0.5299</td><td>0.8415</td><td>78.5768</td><td>-0.02738</td><td>0.3805</td><td>0.1221</td><td></td></tr><tr><td>22</td><td>0.0709</td><td>0.5238</td><td>0.8319</td><td>77.6741</td><td>-0.02708</td><td>0.3761</td><td>0.1207</td><td></td></tr><tr><td>23</td><td>0.0706</td><td>0.5178</td><td>0.8223</td><td>76.7812</td><td>-0.02679</td><td>0.3718</td><td>0.1193</td><td></td></tr><tr><td>24</td><td>0.0703</td><td>0.5119</td><td>0.8128</td><td>75.8980</td><td>-0.02650</td><td>0.3675</td><td>0.1179</td><td></td></tr><tr><td>25</td><td>0.0701</td><td>0.5060</td><td>0.8035</td><td>75.0244</td><td>-0.02621</td><td>0.3633</td><td>0.1165</td><td></td></tr><tr><td>26</td><td>0.0698</td><td>0.5002</td><td>0.7942</td><td>74.1603</td><td>-0.02592</td><td>0.3591</td><td>0.1151</td><td></td></tr><tr><td>27</td><td>0.0696</td><td>0.4944</td><td>0.7851</td><td>73.3056</td><td>-0.02564</td><td>0.3550</td><td>0.1138</td><td></td></tr><tr><td>28</td><td>0.0693</td><td>0.4887</td><td>0.7760</td><td>72.4603</td><td>-0.02536</td><td>0.3509</td><td>0.1125</td><td></td></tr><tr><td>29</td><td>0.0691</td><td>0.4831</td><td>0.7671</td><td>71.6241</td><td>-0.02509</td><td>0.3468</td><td>0.1112</td><td></td></tr><tr><td>30</td><td>0.0688</td><td>0.4775</td><td>0.7582</td><td>70.7970</td><td>-0.02481</td><td>0.3428</td><td>0.1099</td><td></td></tr><tr><td>31</td><td>0.0686</td><td>0.4720</td><td>0.7495</td><td>69.9790</td><td>-0.02454</td><td>0.3389</td><td>0.1086</td><td></td></tr><tr><td>32</td><td>0.0684</td><td>0.4665</td><td>0.7408</td><td>69.1699</td><td>-0.02427</td><td>0.3349</td><td>0.1073</td><td></td></tr><tr><td>33</td><td>0.0681</td><td>0.4611</td><td>0.7322</td><td>68.3695</td><td>-0.02401</td><td>0.3311</td><td>0.1060</td><td></td></tr><tr><td>34</td><td>0.0679</td><td>0.4558</td><td>0.7237</td><td>67.5779</td><td>-0.02375</td><td>0.3272</td><td>0.1048</td><td></td></tr><tr><td>35</td><td>0.0676</td><td>0.4505</td><td>0.7154</td><td>66.7949</td><td>-0.02349</td><td>0.3235</td><td>0.1036</td><td></td></tr><tr><td>36</td><td>0.0674</td><td>0.4453</td><td>0.7071</td><td>66.0205</td><td>-1.34364</td><td>0.3197</td><td>-1.2181</td><td></td></tr></table>

# Valuation of Mortgage Swaps

The valuation of mortgage swaps is closely tied to the cash market and the repo market. If the fair market value of GNMA  $8\%$  is  $\$103$  using the above example and the funding rate is LIBOR flat, the swap at inception has zero value. If the dollar roll market becomes hot after the mortgage swap is put on (meaning the implied funding rate is LIBOR minus a spread in the dollar roll market), then the value of that mortgage swap would be at a discount, or a new mortgage swap can be put on at LIBOR minus a spread. If GNMA  $8\%$  market value goes up, the value of that mortgage swap also goes up. If prepayment projection goes up holding everything else constant (i.e., aside from the interest rate induced prepayment), the value of that mortgage swap would go down.

# INDEX AMORTIZING SWAP

While a mortgage swap replicates the cash flows of a mortgage pass-through security, an index amortizing swap replicates the cash flows of a collateralized mortgage obligation (CMO) tranche and even a PAC tranche as illustrated in Chapter 14 for hypothetical CMO deal CMO-3. The amortization schedule does not correspond to the underlying prepayment one for one. In fact, it typically has a lock-out period of one year when there is no amortization regardless of the prepayment rates. From year 2 to year 5 (or expiration of the swap), the notional balance of the swap would amortize monthly according to the following schedule depending on the monthly prepayment rate:

<table><tr><td>If Prepayment of Reference Pool Is</td><td>\% of Initial Notional Balance Amortized after the One-Year Lock-Out</td><td>Average Life of Swap</td></tr><tr><td>&lt; 100 PSA</td><td>1\%</td><td>4.53</td></tr><tr><td>between 100 PSA and 300 PSA</td><td>2\%</td><td>3.13</td></tr><tr><td>between 301 PSA and 500 PSA</td><td>4\%</td><td>2.08</td></tr><tr><td>&gt; 501 PSA</td><td>8\%</td><td>1.56</td></tr></table>

In this example, the index used is the PSA prepayment rate. Other commonly used indices are LIBOR and Constant Treasury Maturity (CMT).

A similar index amortizing swap indexed to 10-year CMT would look like the following:

<table><tr><td>If 10-Year CMT Rate is</td><td>\% of Initial Notional Balance Amortized after the One-Year Lock-Out</td><td>Average Life of Swap</td></tr><tr><td>&gt;7\%</td><td>1\%</td><td>4.53</td></tr><tr><td>between 6.5\% and 7.0\%</td><td>2\%</td><td>3.13</td></tr><tr><td>between 6.0\% and 6.5\%</td><td>4\%</td><td>2.08</td></tr><tr><td>&lt;6\%</td><td>8\%</td><td>1.56</td></tr></table>

The logic is the same here. If rates are high, the prepayment of the reference pool would slow down and the rate of amortization also slows down. If rates are low, the prepayment of the reference pool would speed up and the rate of amortization would also speed up. There are a few implicit assumptions here. One is that the 10-year CMT is highly correlated with mortgage rates. (The R-squared has been  $85\%$  in the past 10 years and  $77\%$  since 1998.) The second assumption is an implied prepayment model. The prepayment model is implying that when CMT is above  $7\%$  (mortgage rate above  $8.5\%$ ), the prepayment option of the reference pool is out-of-the-money and consequently the prepayment rate would slow to less than 100 PSA. When CMT is between  $6.5\%$  and  $7.0\%$  (mortgage rate between  $8\%$  and  $8.5\%$ ), refinancing becomes somewhat economical depending on the loan size, loan fees, and all the other costs associated with refinancing, the PSA would fluctuate between 100 and 300. When CMT drops below  $6\%$  (implied mortgage rate below  $7.5\%$ ), the prepayment option is clearly in-the-money and the prepayment rate of the reference pool accelerates beyond 500 PSA. Note that the average life of the swap under various prepayment/interest rate scenarios mirrors that of a typical CMO tranche.

# TOTAL RETURN INDEX SWAPS

It is apparent from the economics of a mortgage swap that the cash flows and total return characteristics of the swap mimic the holding period total return of the underlying mortgages financed at LIBOR. This kind of asset swap can be extended to other kinds of assets or indices, for example, Salomon Brothers Mortgage Index, the Mortgage subindex of the Lehman Aggregate Index and the Merrill Lynch Mortgage Index. This type of swap is referred to as a "total return index swap."

A typical total return index swap pays the investor the periodic total return of the reference index while the investor finances it at LIBOR (see Exhibit 30.2). The notional balance of a total return index swap stays constant although the prepayment is already factored into the monthly total return figure (total return = coupon return + price return + paydown return). A total return mortgage index swap is a leveraged exposure to the total mortgage market that is marked to market on a periodic basis. The above illustrated mortgage swap is only a specific type of total return swap with GNMA  $8\%$  being the reference index or asset and only marked to market with price settlement at the expiration.

# APPLICATIONS OF MORTGAGE AND TOTAL RETURN INDEX SWAPS

In this section we will describe the various applications of mortgage and total return swaps.

# Passive Exposure

The most useful application of a mortgage swap and total return index swap is the quick and passive exposure to the mortgage market. Given that the mortgage sector is the largest sector of the investment-grade bond market, it is not surprising that nontraditional mortgage investors would want to gain exposure to the mortgage market. However, an inexperienced mortgage investor (say a traditional corporate investor or a broad investment-grade fixed-income core investor) has to deal with the complexity of mortgage securities—that is, prepayment modeling, valuation modeling, back office to handle monthly cash flows, settlement, and so forth. Proper active management requires specialized expertise and analytical tools. An investor can gain exposure to the broad mortgage market in a passive way through a mortgage swap.

# Leverage

As illustrated previously, a mortgage swap is economically equivalent to a synthetic leveraged investment in mortgages with funding at LIBOR  $(+/-$  a spread). Although leverage can also be obtained through dollar rolls and mortgage futures, a mortgage swap can lock in a long-term financing spread to LIBOR while short-term implied financing spreads can fluctuate with other alternatives.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/34152bb9-0c82-464c-8d95-33ab992e7f99/bbb5a81cca32c6b6e54a2aa6d3e6766f50c5fec744de1ef50e82aa9cfff0f0de.jpg)

EXHIBIT 30.2 Typical Total Return Swap

# Diversification

Even if the investor has the back office and analytical tools to handle mortgage-backed securities, the size of the portfolio may limit the degree of diversification one wants to achieve. Since specified pools can prepay differently and therefore perform differently than the overall mortgage market, a small portfolio holding small samples of mortgage pools can have volatile performance from one period to another. This is especially problematic for a small new portfolio trying to establish a track record or an index fund that needs to minimize tracking error. Instead of holding small samples of mortgage pools, a small portfolio can enter into a mortgage swap referencing a much bigger portion of the mortgage universe to ensure broad market diversification and consequently broad market type of return.

# Hedging

Hedging a portfolio of mortgage-backed securities can be tricky because of the embedded prepayment options. Interest rate futures can hedge out the interest rate (duration) risk but cannot address the negative convexity. Interest rate options can hedge out part of the convexity risk but still leave the risks of mismatch since interest rate options are efficiently exercised but prepayment options are not. Only a mortgage total return swap would have the "true" mortgage characteristics to minimize the basis risk.

# Arbitrage

An active mortgage manager or an experienced mortgage specialist who has security selection skills in specific tranches of CMOs or specified pools can "arbitrage" the value differential. For instance, various tranches of CMOs can be assembled to replicate the risk characteristics (i.e., interest rate risk, exposure to interest rate volatility, and prepayment risk) of GNMA  $8\%$  while having a higher value. This long CMOs position can be combined with a pay GNMA  $8\%$  mortgage swap to have a risk neutral position with a higher value. Specified pools with unique characteristics such as loan-to-value (LTV) ratio, loan balance, regional concentration, and weighted average gross coupon will prepay differently from the generic mortgages. For example, loans with higher LTV prepay slower because of the lack of equity which is required for refinancing. Loans from New York prepay slower than the national average because of the state's transfer tax. Loans with lower balance prepay slower because the fixed portion of refinancing cost becomes a bigger hurdle for low balance loans. Loans from Hawaii prepay slower because of the slow housing market there. A skillful mortgage manager can hold specified premium pools with slower prepayment characteristics given any of the above reasons and enter into an offsetting mortgage swap with generic reference pool thus profiting from the difference in prepayment.

# Transferring Alphas

In investment management, "alpha" is a measure of a portfolio manager's performance relative to the manager's benchmark. The alpha in one market can be transferred to another market through the use of a total return index swap. Suppose an experienced mortgage manager has been able to systematically outperform the Lehman Mortgage Index but has little experience in the equity market. The positive alpha of this mortgage manager can be transferred to the equity market by entering into a cross index total return swap paying mortgage index and receiving S&P 500 as shown in Exhibit 30.3. The excess return over the mortgage index becomes an excess return over the S&P index.

The same strategy can be applied to an enhanced indexer. An experienced money market manager who can consistently outperform LIBOR can create an enhanced product with any total return index, or index plus fund. As shown in Exhibit 30.4, the manager can convert his LIBOR plus return into an Index Plus return by entering into a total return index swap paying LIBOR and receiving index return.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/34152bb9-0c82-464c-8d95-33ab992e7f99/96e79a0d37c85a0e93bb9e1e11a42c91bd59cc21d294c530b01fa10a10e249c5.jpg)

EXHIBIT 30.3 Cross Index Total Return Swap for Transferring Alpha

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/34152bb9-0c82-464c-8d95-33ab992e7f99/2999d7052ac2d0ab23b51ab9efb65a0b7c02ebda9328e75fa1714b69a2637122.jpg)

EXHIBIT 30.4 Creating an Enhanced Index Product with a Total Return Index

# DISADVANTAGES OF MORTGAGE SWAPS

A mortgage swap and total return mortgage index swap have disadvantages. Agency mortgages have little or no credit risks. A swap exposes the investor to swap counterparty credit risk. Liquidity is also a concern in the mortgage swap market while the MBS cash market has become the biggest domestic fixed-income market by size and probably the most liquid only second to the Treasury market. The investor also foregoes the potential to outperform the mortgage index through active management.


# Relative Value Analysis of Fixed-Income Products

STEVEN V. MANN, PhD

Professor of Finance, Moore School of Business, University of South Carolina

Abstract: Valuation of fixed-income products employs one of two basic methods—discounted cash flows and relative value. Methods using discounted cash flows require several assumptions to be used as inputs but produce a precise valuation result. The tools of relative value analysis are less ambitious. They help us discern differences in value between two similar bonds on a relative basis. Relative value analysis investors make statements such as "Bond X is cheaper than Bond Y." Relative value tools range in complexity from yield spreads to asset swap spreads and the credit default swap basis.

There are two basic approaches to the valuation of fixed-income products. The discounted cash flow method seeks to value a bond given assumptions about cash flows, reference yield curves, risk premiums, and so on. Given these inputs, the bond's value is determined. Once computed, this value is compared to the prevailing market price and a rich/cheap determination can be made. The alternative method, relative valuation, is less ambitious and not surprisingly more popular.

Tools of relative value analysis, when properly interpreted, give the user some clues about how similar bonds are currently valued in the market on a relative basis. This battery of tools allows us to make conjectures such as "Bond X is cheaper than Bond Y." Yield measures are basic relative value tools. For example, one method of measuring a risky bond's relative value is to compute its yield spread relative to a designated benchmark. Discerning relative value is then a matter of comparing the yield spreads of two or more bonds that are otherwise the same. The bond with the largest yield spread is viewed as the cheapest and is considered the best relative value. In this entry, we will introduce yield spread measures utilizing instruments from both the cash and derivatives markets. $^{1}$


One common way fixed-income portfolio managers attempt to outperform benchmarks is through security selection. When pursuing a security selection strategy, managers attempt to overweight cheap issues and underweight rich issues to enhance the total rate of return relative to their benchmark. For this to occur, one or more of the bond's risks must be mispriced. Active security selection to enhance performance leads to the search for effective relative value tools in bond markets.


# YIELD SPREADS OVER SWAP AND TREASURY CURVES

As noted, yield spreads are a frequently used tool of relative value analysis. The computation is a simple one. A yield spread is the difference between a risky bond's yield and a benchmark yield holding maturity constant. It is critical to note the yield spread does not have any predictive power on the bondholder's realized return; the yield spread is merely a convenient way to express the price relative to the benchmark.

There are two commonly used benchmarks: the interest rate swap curve and the U.S. Treasury yield curve. A swap is a contract used to transform cash flows from one form to another. In its most basic form, in an interest rate swap two counterparties agree to exchange cash flows at designated future dates for a specified length of time. The fixed-rate payer makes payments that are determined by a fixed rate called a swap rate. Correspondingly, the floating-rate payer makes payments based on a reference rate, usually the London Interbank Offered Rate (LIBOR). LIBOR is the interest rate that prime banks in London are willing to pay other prime banks on certificates of deposit denominated in U.S. dollars.

Market participants quote swap rates for swaps across the maturity spectrum. The relationship between the swap rate and the swap's maturity is called the swap curve. Since the reference rate for a swap's floating rate payments is usually LIBOR, the swap curve is also referred to as the LIBOR curve.

Over time the swap curve has supplanted the Treasury yield curve as the benchmark of choice for computing yield spreads. Indeed, in some countries and currencies, the interest rate swap market is more liquid than the market for sovereign debt. It is important to keep in mind that the swap curve does not represent a set of default-free interest rates. A swap rate is a rate that embodies two risks: (1) the default risk of the counterparty, and (2) liquidity risk.


As noted, in many countries, the swap curve is the benchmark of choice over a country's government securities yield curve. There are several reasons that augur use of the swap curve. First, in order to construct a government bond yield curve that is reflective of the term structure of interest rates, yields on government securities must be available across the entire maturity spectrum. In most government bond markets, however, a limited number of securities are available. For example, the U.S. Treasury issues only six securities with a maturity of two years or more (two, three, five, seven, 10, and 30 years). Conversely, in the swap market, swap rates are quoted on a wide swath of the maturity spectrum.

Second, technical factors introduce some noise into Treasury yields and preclude them from being clear signals of benchmark risk-free interest rates. Treasury securities differ on dimensions other than level of the coupon and maturity. Yields are affected when a note or bond is cheapest to deliver into the Treasury note or bond futures contracts. In addition, yields are also affected when the security is "on special" in the repo market. The tax treatment of bonds, especially those trading at a premium or a discount, can affect yields. Swap rates for the most part do not carry this excess baggage and are therefore more reflective of true, albeit risky, interest rates.

Lastly, because of the differences in sovereign credit risk, comparing government yields across countries is tenuous at best. The swap curve, by contrast, reflects roughly the same level of credit risk across countries. Cross-country comparisons are more meaningful.

A spread over the benchmark swap curve is simply the difference between the yield measure in question and the linearly interpolated swap rate at the same maturity. It should be a suitable yield measure such as yield to maturity, yield to call, or cash flow yield for structured products. Because the swap rate is interpolated, the spread over the benchmark swap curve is often referred to as the interpolated spread or the I-spread. Interpolated spreads circumvent the problem of maturity mismatch that affects the level of the spread. This is especially true if the yield curve is steeply sloped.


To find the I-spread, consider a  $5.25\%$  coupon bond issued by General Electric (GE) that matures on December 6, 2017. For a settlement date of January 27, 2009, the I-spread was 261.6 basis points. This spread can be interpreted as the compensation the market demanded for the risk differential between the risky bond and the benchmark swap curve.

The yield spreads can also be computed using active or on-the-run Treasuries. On-the-run Treasuries are the most recently issued Treasury securities of a particular maturity. Since the yield curve is not flat, the yield spreads differ depending on the maturity of the on-the-run Treasury. Thus, even if the yield curve remains fixed, the yield spread will change as the bond rolls down the curve. Using the interpolated 8.9-year Treasury yield, suppose the yield spread for the GE bond on January 27, 2009 was 284 basis points. This yield spread can then be compared to similar bonds at the time in order to determine which bond reflects the best relative value.

# ASSET SWAPS

An asset swap is a synthetic structure that transforms the nature of the bond's cash flow from one form into another. The structure is created through the combination of a bond position (fixed-rate or floating-rate) with one or more interest rate swaps. Asset swaps are used extensively by financial institutions for asset-liability management. Namely, asset swaps transform the cash flows of long-term fixed-rate assets to floating-rate cash flows, which are in a form more amendable to financial institutions' funding opportunities.

# Asset Swap Mechanics

The mechanics of an asset swap are straightforward. An investor, whom we shall refer to as the asset swap buyer, does the following: (1) takes a long position in a fixed-rate coupon bond with a bullet maturity, and (2) simultaneously enters into an off-market interest rate swap with a tenor equal to the bond's remaining term to maturity. An off-market swap is one whose floating rates are determined with a nonzero spread added to the reference rate. Assume that the bond is trading at par. The asset swap buyer enters into an agreement to pay the semiannual coupon payments as the fixed-rate leg in exchange for floating-rate payments at LIBOR plus (or minus) a spread (called the asset swap spread). For simplicity, assume the frequency of the fixed-rate and floating-rate payments are the same. The spread over LIBOR that makes the net present value of the coupon payments (i.e., the fixed-rate leg) and the projected floating-rate payments equal to zero is the asset swap spread. This asset swap spread is used as a measure of relative value regardless of whether the cash flows are actually swapped.

# Determining the Asset Swap Spread for a Par Bond

To better understand how all the pieces fit together, let's illustrate how an asset swap spread is calculated. Consider a corporate bond issued by General Electric that matures on December 6, 2017, and pays coupon interest semiannually at an annual rate of  $5.25\%$ . Assume a position with a par value of  $\$1$  million. Further assume that this bond sold for par for settlement on December 6, 2008. For ease of exposition, we will evaluate the asset swap on a coupon payment date to abstract some of the details of swaps.

The asset swap spread is determined using the following procedure. First, assume that a  \$1 million par value position of the General Electric coupon bond was valued at a price of\$ 100 for settlement on December 6, 2008. (It actually traded at a large premium at the time.) The price paid for the bond at settlement is the flat price of  \$1,000,000 plus zero accrued interest such that the full price is\$ 1,000,000 since it is a coupon payment date. Second, assume that a long position in an interest rate swap is established with a notional principal of 1,000,000. Third, determine the net cash difference at settlement. This amount is simply the difference between the bond's full price and the swap's principal amount plus accrued interest. By construction, this difference is zero in our illustration. Fourth, determine the spread over the reference rate (i.e., LIBOR) required to equate the present value of the swap's floating-rate payments and the present value of the fixed-rate payments (i.e., the bond's cash flows). In our illustration, a swap spread of 221.1 basis points satisfied this condition.


Our illustration is a special case for a bond selling at par, and the accrued interest on both the bond and the swap are equal to zero. The asset swap spread makes the present value of a par swap's floating payments equal the bond's payments to maturity. This is true because the net cash at settlement is equal to zero.

# Par versus Market Structures

Market participants use two types of fixed-floating asset swap structures—par and market. The par structure is the most prevalent. When utilizing a par structure, the notional amount of the interest rate swap is equal to the bond's maturity value. The price of the bond acquired by the asset swap buyer is par regardless of its market price. If the bond is trading at a discount, the asset swap seller receives more for the bond than it is worth and garners an upfront "profit." Alternatively, if the bond is trading at a premium, the asset swap seller receives less for the bond than it is worth and suffers an upfront "loss." At the initiation of the asset swap, the present value of the net cash flows of both parties is zero, so any upfront profit or loss is illusory because the spread adjusts. The asset swap seller "gives up" the premium over par at inception and in return pays a lower spread on the floating-rate cash flows. For bonds trading at a discount, the asset swap seller pays a higher spread on the floating-rate cash flows as recompense for capturing the discount at settlement.


An asset swap with a par structure is two separate transactions: (1) The asset swap buyer pays par to the asset swap seller for a bond and (2) an off-market swap. Accordingly, after the asset swap's cash flows are established, the bond's credit performance has no impact on the interest rate swap. If the bond were to default, the asset swap buyer no longer receives coupon payments or the maturity payment. The asset swap buyer's obligations imposed by the swap continue on as before until it matures or can be closed out at market value.

An alternative structure for an asset swap is called a market structure. This method differs from a par structure in four respects. First, the bond is purchased at its prevailing market price rather than at par. Second, the notional principal of the off-market swap floating-rate payments is scaled by the bond's full price. Third, at the end of the transaction's life, the asset swap buyer pays par to the asset swap seller and receives the original full price of the bond. Lastly, note also that the counterparty risk exposure is allocated differently in the two asset swap structures. If the bond in question trades at a premium, the asset swap seller bears more of the counterparty risk. Conversely, in a market structure for the same premium bond, the counterparty risk is tilted toward the asset swap buyer due to the net payment of the bond's premium at the end of the transaction. Correspondingly, if the bond in question trades at a discount, the tilt of the counterparty risk exposure is reversed for both structures.

# Determining the Asset Swap Spread in the General Case

Let's introduce some real-world complications. First, we consider an asset swap with a settlement date that falls between two coupon payment dates. Once this circumstance is considered, both the coupon-paying bond and swap will have nonzero accrued interest. Suppose an asset swap with a par structure has a settlement day that falls between the two semiannual coupon payment dates. By market convention, the asset swap buyer pays par for the bond and does not directly pay accrued interest. The asset swap buyer receives the full coupon payment at the next payment date and pays the full coupon payment as required on the fixed-rate side of the swap. The floating-rate swap payment from the asset swap seller is treated somewhat differently. Floating-rate payments are usually more frequent than fixed-rate payments (quarterly versus semiannually) and almost always use a different day count convention. The floating-rate payment is adjusted accordingly.


As an illustration, consider a 4.125\% coupon bond issued by Wal-Mart that matured on February 15, 2011. This bond delivered coupon payments semiannually. Suppose an asset swap buyer took a long position in this bond that was trading at a flat price of 103.764. We will sketch the procedure for calculating the asset swap spread if it had a trade settlement date of June 23, 2008. The notional principal is set to the default of  \$1 million. The asset swap spread that equates the present value of the cash flows was 75.7 basis points. As a result, the floating-rate swap payments would have been calculated with a rate of 3-month LIBOR plus 75.7 basis points. The asset swap buyer's swap payments would have been simply the five semiannual coupon payments of\$ 20,625 and \$1,000,000 on the maturity date of February 15, 2011. The asset swap seller's floating-rate swap payments would have depended on the value of 3-month LIBOR on each payment date. As noted, the first floating-rate payment of \$2,835.04 reflects the accrual from the settlement date on January 28, 2009, to the first payment date of February 15, 2009, using an actual/360 day count convention.

# Uses of Asset Swaps

The primary reason for using an asset swap is to acquire some exposure to risks of a fixed rate while neutralizing the interest rate risk. For example, financial institutions typically fund on a floating-rate basis and unless they have a view on interest rates, management wants to invest in floating-rate assets. Financial institutions are active participants in the asset swap market by buying fixed-rate bonds and transforming the cash flow from those bonds into floating payments, which provide a better match against their liability structure. An active asset swap market tends to eliminate pricing discrepancies between fixed-rate and floating-rate products.

Asset swap spreads are often used as an indicator of relative value. If a fixed-income investor is considering five fixed-rate bonds of similar maturity and risk for inclusion in a portfolio and wants to assess their relative value, the investor would simply find the highest asset swap spreads, which represent the best relative value.

In practice, however, asset swaps are typically employed as a relative value detector in the following manner. After choosing portfolio duration (and perhaps key rate durations to control shaping risk) and after choosing a credit mix (or perhaps an average credit rating), find the constrained portfolio that produces the highest asset swap spread. This portfolio presumably represents the best relative value for a given duration target and credit target—with or without distributional constraints on durations and credit ratings.

# A Miscellany of Asset Swaps

There are a handful of variations on the standard asset swap structure discussed to this point. A forward start asset swap involves taking a long position in a risky bond on a forward settlement date in combination with an interest rate swap whose asset swap spread is established today. This transaction allows an investor to gain an exposure to a risky product in the future at a known price today. Investors bear no exposure to credit risk until the forward settlement date because the asset swap terminates if the bond defaults prior to this date.


A cross-currency asset swap is a combination of a long position in a risky bond whose cash flows are denominated in a different currency and an off-market interest rate swap. The swap transforms the fixed-rate coupon payments into floating-rate cash flows in the investor's home currency. An exchange of principal occurs at the end of the swap's life as is common with currency swaps. Moreover, the swap's cash flows are converted using a predetermined exchange rate. This asset swap variation would allow, say, a U.S. investor to take an exposure to a yen-denominated corporate bond while simultaneously mitigating the interest rate and currency risks.

Investors often use asset swaps in convertible bond arbitrage. Convertibles are ideal securities for "arbitrage" because the convertible itself, namely the underlying stock and the embedded derivatives, are traded along predictable ratios and any discrepancy or mispricing would give rise to arbitrage opportunities for hedge fund managers to exploit. The valuation of convertible bonds is driven by four primary factors: (1) interest rates, (2) credit spreads, (3) stock prices, and (4) volatility of stock prices. Convertible bond arbitrage involves taking a leveraged position (usually long) in the convertible bond to gain exposure to a mispriced factor while simultaneously hedging interest rates and small changes in stock prices.

Callable asset swaps are used to strip out equity and credit components with a structure that allows the investor to cancel the off-market swap on any call date. This ability to terminate the swap is accomplished through the purchase of Bermudan receiver swaptions.

# CREDIT DEFAULT SWAPS

Credit default swaps (CDS) are contracts that enable the transfer of credit risk between the two counterparties to the trade. CDS resemble insurance policies.4 Taking long/short CDS positions is referred to as buying/selling "protection." The protection buyer pays the protection seller a periodic payment (premium) for protection against a credit event experienced by a reference asset or entity. Simply put, sellers of protection are taking on credit risk for a fee while protection buyers are paying to reduce their credit risk exposure. A reference asset could refer to a single asset, and this is termed a single-name credit default swap. Alternatively, if the reference asset is a group of assets, it is referred to as a basket credit default swap. A reference entity could be a corporation or government entity (sovereign or municipal).


The payout of credit default swaps is contingent on the occurrence of a credit event. Definitions of credit events are published by the ISDA, the so-called "1999 Definitions." The 1999 Definitions list eight different credit events, which include: (1) bankruptcy, (2) credit event upon merger, (3) cross acceleration, (4) cross default, (5) downgrade, (6) failure to pay, (7) repudiation/moratorium, and (8) restructuring. The most controversial credit event is a restructuring. A restructuring refers to an alteration of the debt obligation's original terms in an effort to make the obligation less onerous to the borrower. Among the terms that may be offered: (1) reduction in the stated rate of interest, (2) principal reduction, (3) principal payment rescheduling or interest payment postponement, or (4) a change in the seniority level of the obligation. The inclusion of restructuring as a trigger for a credit event is desired by protection buyers because they insist it is part of their essential credit protection. Protection sellers counter that the restructuring provision is triggered by routine modifications to the debt. In April 2001, the ISDA issued the so-called "Supplement Definition" that indicates the conditions needed to qualify for a restructuring: (1) The reference obligation must have at least four bondholders, and (2) at least two-thirds of the bondholders must consent to the restructuring.

The market for single-name credit default swaps is an over-the-counter interdealer market. For credit default swaps on corporate or sovereign debt, the contract specifications are largely standardized. For example, the tenor is usually five years. Certain dealers are also willing to create customized contracts better suited to the counterparty's risk exposure. A protection buyer makes payments (typically quarterly) that are fixed by contract until a credit event is triggered or maturity, whichever is earlier. The formula for calculating the protection buyer's quarterly is given by the expression

```batch quarterly payment  $=$  CDS spread  $\times$  notional principal  $\times$  (days in period)/360
```

Figure 1 presents these payments. If a credit event does not occur during the tenor of the CDS, the protection buyer's fixed payments are the only payments. At inception, there is no exchange of principal between the buyer and the seller. If a credit event is triggered, there is an exchange between the protection buyer and protection seller. The protection buyer makes accrued payments up until the credit event date and then stops making quarterly payments.

What both parties must do when there is a credit event depends on the settlement terms of the CDS. The settlement terms can specify either physical settlement or cash settlement. If the CDS specifies physical delivery, the protection buyer delivers the reference obligation to the protection seller in return for the cash payment. Figure 2 illustrates this scenario. If the credit event is triggered, the seller's pay ment may be a prespecified amount or it may reflect the reference obligation's value decline. When the payment is fixed, it is based on a notional principal amount. Conversely, when the payment is based on the reference obligation's value decline, it is usually computed using pricing information obtained by polling several CDS dealers.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/1d75857cb3810d18141bb04a13d87e9d4cac17415ea98a97f559164cada82f03.jpg)
Figure 1 Premium Payments for a CDS Assuming no Credit Event

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/50a2e2ebeaa9c51297aca6444a266b755a230e2cd775242e8618d963ef6e05d9.jpg)
Figure 2 The Exchange if a Credit Event Occurs


Usually there is more than one obligation of the reference entity from which the protection buyer can choose. The set of all obligations that are permitted for physical delivery is called the deliverable obligations. Any obligation meeting the stated criteria (coupon, maturity, etc.) is part of this basket. Naturally, the protection buyer will choose among the deliverable obligations the one that is cheapest to deliver.

CDS are structured to replicate the experience of a default in the cash market. If a credit event occurs, the deliverable obligation should trade at a deep discount to par.

The seller's net loss will be the difference between par and the deliverable obligation's recovery value. Note that the CDS is a pure play in the deliverable obligation's credit risk. A long position in the reference instrument exposes the investor to other risks.

As an illustration, consider a CDS with a reference asset being a Citigroup  $6.5\%$  coupon bond that matured on January 18, 2011. The notional principal for this contract was 10 million. Suppose the following information was available:

<table><tr><td>Reference Entity/Asset</td><td>Citigroup 6.5\% 1/18/2011</td></tr><tr><td>Tenor</td><td>5 years</td></tr><tr><td>Effective date</td><td>7/3/08</td></tr><tr><td>Maturity date</td><td>9/20/13</td></tr><tr><td>Payment frequency</td><td>Quarterly</td></tr></table>

The first coupon payment date was September 22, 2008. Suppose the deal spread was 143.5 basis points. Presented in the following table are the first four quarterly payments that the protection buyer made to the seller.

<table><tr><td>Date</td><td>Cash flow ($)</td></tr><tr><td>9/22/08</td><td>$32,287.50</td></tr><tr><td>12/22/08</td><td>$36,273.61</td></tr><tr><td>3/20/09</td><td>$35,077.78</td></tr><tr><td>6/22/09</td><td>37,469.44</td></tr></table>

There were 81 actual days of accrual from the effective date of 7/3/08 to the first coupon date of 9/22/08, so inserting this number along with the notional principal of 10 million and a spread of 143.5 basis points (in decimal) gives the first quarterly payment of

$$
\$ 32,287.50 = 0.01435 \times \$ 10 \text{mi ll io n} \times (8 1 / 3 6 0)
$$

The remainder of the quarterly payments are computed in the same fashion. Note that while the CDS spread remains fixed, the payments will vary somewhat due to the varying number of days between coupon payment dates.

# Credit Default Swap Basis

A CDS is, under certain simplifying assumptions, equivalent to a long position in an asset-swapped fixed-rate bond financed with a repurchase (repo) agreement. Accordingly, it is critical to address the linkage between asset swap spreads, CDS spreads, and credit spreads.

Practitioners access relative value by comparing CDS spreads and asset-swap spread levels. In fact, the difference between the CDS premium and the asset swap spread is referred to as the credit default swap basis (CDS basis). Practitioners also look at differences between CDS spreads and either the I-spread or the zero-volatility spread (Z-spread). A nonzero basis signals opportunities for investors. If the basis is negative (i.e., the CDS spread is less than the asset swap spread), this suggests that the investor buy the bond in the cash market and buy protection via a CDS. Conversely, if the basis is positive (i.e., the CDS spread is greater than the asset swap spread), this suggests that the investor sell the bond in the cash market and sell protection via a CDS.


# KEY POINTS

- There are two approaches to the valuation of fixed-income products: discounted cash flow and relative value.
- The relative value method can provide information about how similar bonds are priced on a relative basis.
- A yield spread is the difference between a risky bond's yield and a benchmark yield holding maturity constant.
- Two commonly used benchmark yield curves are the swap curve and the U.S. Treasury curve.
- An asset swap is a synthetic structure that transforms the nature of cash flows from one form into another.
- An asset swap spread is used as an indicator of relative value and is the spread over the reference rate that equates the value of the floating rate cash flows and the bond's cash flows.
- The credit default swap (CDS) basis is the difference between the CDS premium and the asset swap spread.
- A nonzero CDS basis signals opportunities for investors.


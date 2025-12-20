---
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Basis Trades and Treasury Market Illiquidity
---

# Basis Trades and Treasury Market Illiquidity

By Daniel Barth and Jay Kahn<sup>1</sup>

The Treasury futures basis trade seeks to exploit the price difference between cash Treasury securities and Treasury futures. This brief summarizes evidence on the size and extent of basis trading by hedge funds and assesses the possibility that the trade's exposure to financing and liquidity risks contributed to Treasury market illiquidity in March 2020. This brief also highlights the potential for the trade to lead to further illiquidity. While we find that Treasury illiquidity in March placed stress on Treasury basis trades, the evidence casts doubt on the theory that stress in these trades amplified Treasury market illiquidity. Intervention by the Federal Reserve in the Treasury and repo markets may have limited spillovers that could affect financial stability.

Basis trading is a form of near-arbitrage between the cash and futures prices of Treasury securities — a usually small difference known as the basis. If this difference is bigger than the cost of buying the Treasury and financing that purchase in the repurchase agreement (repo) market, then the trade is profitable. Traders rely on repo markets for financing to achieve high leverage for these trades. In early March 2020, stress in Treasury markets led to large basis trade losses for some relative value hedge funds. Basis trades tie together Treasury markets, futures markets, and repo markets, all three of which are crucial to price discovery and liquidity provision in the financial system. While the return on the basis trade is virtually guaranteed over the long term, in the short term this trade is exposed to substantial liquidity and margin risk. Stress on these trades therefore presents a potential source of systemic risk.

A variety of data sources and market commentaries have documented the rising popularity of basis trading among relative value hedge funds. Office of Financial Research (OFR) internal data also provide evidence of this. If the hedge funds undertaking these trades are large and highly leveraged, this may further magnify the associated potential systemic risks. Indeed, the pervasive illiquidity in March 2020 led to large losses at relative value hedge funds engaged in basis trades. Such funds significantly unwound their positions as a result. This has led regulators and market observers to speculate that stress in basis trades may have added to stress in Treasury markets. However, the evidence casts doubt on this conclusion. Specifically, we find that the Treasuries that were most likely to have been directly affected by losses on the basis trade actually became more valuable during March 2020.

In this brief, we first describe the mechanics of basis trades and the determinants of their returns. We also provide evidence on their size and possible importance in Treasury markets. We then detail how the returns to basis trades are compensation for exposure to substantial margin and rollover risks, and highlight the relationships that arise between the basis, the yield on Treasury bills, the repo rate, and the federal funds rate. We conclude with a discussion of the March 2020 Treasury illiquidity episode and a discussion of potential risks associated with basis trades in the future.[2]

The analysis uses the OFR's collection of cleared repo data, which began in October 2019. However, remaining data gaps limit visibility into basis trading: specifically, we do not have high-frequency or precise data on hedge funds' balance sheets or data on their substantial borrowing in the uncleared bilateral portions of the repo market. Increasing transparency would improve the abilities of financial regulators to monitor the risks of this trade. Careful monitoring is warranted to determine to what extent margin calls and rollover risk on basis trades may lead to market disruptions and potential hedge fund defaults.

# Structure of Basis Trades

The basis trade relies on a relationship between the cash Treasury market, where investors purchase Treasuries today; the Treasury futures market, where investors agree on a fixed price to pay for Treasuries they will receive in the future; and the repo market, where investors borrow or lend Treasuries against cash today. Theoretically, borrowing a Treasury today in the repo market, for which the investor pays interest at the repo rate, should cost the same amount as purchasing that Treasury today in the cash market with the agreement to sell that Treasury in the futures market at a later date. Very small variations from that ideal can be profitable if the investment is leveraged using borrowed capital.

Basis trades are three-legged trades that span crucial financial markets: cash Treasury markets, Treasury futures markets, and repo markets. As we show, basis trades use long cash Treasury positions and short futures positions to construct a payoff that, absent financing risks and other frictions, would be a net position similar to a Treasury bill. (In futures markets, long positions are a bet prices will go up; short positions are

a bet prices will go down.) One immediate difference between the return on a basis trade and the return on a bill is the possible variation margin on the futures position. (Futures traders make variation margin payments when the value of cash and collateral in their accounts falls below set margin levels.) More importantly, basis traders generally finance the long cash position in the repo market, which exposes the basis trade to rollover and liquidity risks. The return on basis trade is thus equivalent to a synthetic bill plus a risk premium. This risk premium is positive on average but can vary significantly and can turn negative during times of stress in funding markets. We discuss the sources of this premium below.

In a simple form of the basis trade, at date 0, an investor purchases a Treasury note in the cash market for a price  $P$ , and simultaneously opens a short position in a Treasury note future at a price,  $F$ . This short futures position promises delivery of a Treasury note at date  $T$ . Because the basis is typically narrow, investors leverage the trade by financing the purchase of the cash Treasury note through a repo loan at an interest rate  $r$  using the note as collateral. At date  $T$ , the investor takes the note returned from the repo contract and delivers it into the futures contract, receiving  $F$ , and using a portion of the futures payment to settle the repo debt. The profit from this trade is:

$$
F - P (1 + r)^{T}.
$$

Figure 1 presents a basic diagram of a basis trade, tracking the flow of the underlying Treasury security over time and across the three markets. The profitability of the basis trade depends on the basis, that is, the difference between cash and futures prices of a Treasury. Cash and futures prices converge as the delivery date approaches (see Figure 2). This convergence is virtually guaranteed: at the delivery date, cash and futures prices must be equal because on that date a trader can buy a Treasury in the cash market and immediately deliver it into the futures market.

The profitability of basis trades is summarized by the implied repo rate (IRR), which is the repo rate at which the profit on the basis trade would be zero. The IRR is closely related to the yield on a Treasury bill because the cash flows from the basis trade replicate those from a Treasury bill maturing on the futures delivery date.

Figure 1. Diagram of a Basis Trade  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/7fc0d866-94ba-4c22-b8eb-dad947d8bdb0/fb3ad30efd74da3dda7bcd971804d095fc19d8c239ea2079547d8d8d83a39ef0.jpg)  
Note: Arrows denote flow of Treasury security; cash moves in the opposite direction.  
Source: Office of Financial Research

Figure 2. Convergence of Treasury Futures and Cash Prices ($)  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/7fc0d866-94ba-4c22-b8eb-dad947d8bdb0/3414537418babb5c0fd4dc8e31e2f30e277977ea002e4ed573ef35af1065f646.jpg)  
Note: Average over all five-year contracts since 2016.  
Sources: Bloomberg Finance L.P., Center for Research in Security Prices/ University of Chicago Booth School of Business, Office of Financial Research  
Sources: Bloomberg Finance L.P., Center for Research in Security Prices/ University of Chicago Booth School of Business, Office of Financial Research

The IRR therefore comprises the return to a bill plus a premium for risk, and closely tracks the return on an actual bill (see Figure 3).<sup>3</sup>

When the IRR is greater than the actual repo rate, basis traders can profit by "buying the basis," that is, by buying the note and shorting the corresponding Treasury futures, while borrowing in the repo market. At delivery, the trader will earn the spread between

Figure 3. Returns on the Basis Trade and Bill Yields (percent)  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/7fc0d866-94ba-4c22-b8eb-dad947d8bdb0/09fff242c2403a3145a0be6abaf40dfccff94bd012d8a2055aee986357e99272.jpg)  
Note: One-week moving averages. Implied repo rates use the futures contract with the second-to-nearest delivery date.

the IRR and the repo rate. Buying the basis while borrowing in the repo market amounts to a bet that futures prices will converge to cash prices at a rate faster than the repo rate. Traders can also "sell the basis," by selling a Treasury in the cash market, and opening a long position in the futures market, while securing the Treasury through repo lending. Selling the basis amounts to a bet that futures prices will converge to cash prices at a rate slower than the repo rate. The bet

is desirable when the actual repo rate is greater than the IRR, or when the trader is closing an existing position from buying the basis. Because the futures price and the cash price of the Treasury are known to the basis trader, provided the basis trader also knows the repo rate, profits on these bets at delivery are guaranteed.

The basis trade does not, however, constitute true arbitrage or offer risk-free profits. Several risks drive a wedge between the profitability of the basis trade and the yield on a Treasury bill and thus create potential consequences for financial stability.

# Risks of Basis Trades

If there were no margin requirements for the futures contract and if there were no need to roll over repo financing, then the basis trade would be pure riskless arbitrage, and there would be no deviation between the IRR and the return on bills. In reality, the basis trade is not a risk-free strategy. Among the risks basis traders face:

Rollover risk: Financing costs are an important source of risk for basis traders. The long position in the Treasury note is largely financed by borrowing in the repo market. One option for this financing is to enter into short-term — possibly overnight — repo trades. Interest rates on overnight repo are often lower than on term repo given the same collateral. However, rolling repo borrowing over daily exposes the trader to the possibility of rates rising before the trade is complete, which would require the trader to post additional collateral to secure the same amount of financing. If the trader is already highly leveraged, it may be difficult to raise more capital without selling assets, possibly at discounted or fire-sale prices. Such liquidity-driven sales could push prices down in other markets, instigating further margin calls and a liquidity spiral. We note, however, that traders may manage this risk by financing through repo with a term matched to the expiration of the futures contract, rather than through overnight funding. More granular data would be needed to determine the length of financing basis traders employ.

Margin risk: When Treasury note futures prices rise, the trader going long the basis will have to make variation margin payments on the short futures contract.

When Treasury cash prices also rise, these margin payments will be offset by the increased collateral value of the long Treasury note held. However, when Treasury note futures and cash prices diverge, as can occur in times of illiquidity, the increase in collateral value may not be enough to meet the variation margin requirement. The basis trader must make a sudden cash outlay to meet their margin call.

Leverage and default risk: The high leverage of many basis traders compounds the risks they face. Repo contracts with Treasury collateral allow borrowers to obtain extremely high leverage because haircuts are so small. A haircut is a discount on the value of an asset pledged as collateral. As a simple rule, the maximum leverage obtainable for a given security as collateral is the inverse of the haircut. Treasuries typically have haircuts of around 2 percent. At this level, traders could in principle achieve 50-to-1 leverage. For highly leveraged traders, small changes in margin requirements or the cost of financing could lead to large cash outlays, and in the worst-case scenario could lead to outright failure.

# Deviations of Basis Trade Returns From Bill Returns

Deviations of the IRR from the return on Treasury bills reflect the risks basis trades face. In the absence of rollover risk and margin requirements, the first two legs of the basis trade would be equivalent to a Treasury bill. In this case, the return on the basis should be the same as the return on that bill. Therefore, one way to assess the extent of risks the basis trade faces at any given time is to examine deviations of the return on the basis trade from the return on the bill.

In particular, in times of relative illiquidity and high balance sheet costs, the implied repo rate has deviated significantly from the rate of return on bills. One example of these deviations occurred directly following the collapse of Lehman Brothers in 2008 (see Figure 4). Immediately after that collapse, as liquidity dried up in financial markets, implied repo rates fell across contracts. The IRR decline reflected a flight to safety in Treasury markets. Treasury bill rates fell less, in part due to the natural constraint of the zero lower bound. This deviation persisted for several months. It reflected relatively slow-moving capital in the wake

of hits to balance sheets of intermediaries during the crisis, as well as general concerns over counterparty risk. Note in this case that traders that were long the basis would have profited from the basis narrowing and turning negative.

This pattern in 2008 is indicative of a more general rule that returns on basis trades tend to depart from bill returns during times of stress. In general, deviations of the return on basis trades from returns on Treasuries have reflected the costs of liquidity provision, that is, the willingness of financial institutions to take on the margin risk and rollover risk that basis trades entail.

One way to summarize the costs of liquidity provision in Treasury repo markets is the difference between the repo rate and the federal funds rate. Because Treasury repo rates reflect a willingness to accept Treasuries as collateral, whereas lending in the federal funds market is uncollateralized, differences in Treasury repo and federal funds rates will partly reflect balance sheet constraints that make accepting Treasuries more or less costly. Figure 5 shows deviations of basis trade return for five-year and two-year contracts from bill yields, along with the spread between the repo rate and federal funds rate. Deviations of the basis trade return from the

Figure 4. Basis Trade Returns During the 2007-09 Financial Crisis (percent)  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/7fc0d866-94ba-4c22-b8eb-dad947d8bdb0/9cefbe4b30ebf0c34e7932dffa8f7c0b61e7cdc8f6172f23621fbfb92218f587.jpg)  
Note: Data are one-week moving averages. Implied repo rates use the futures contract with the second-to-nearest delivery date.  
Sources: Bloomberg Finance L.P., Center for Research in Security Prices/ University of Chicago Booth School of Business, Office of Financial Research

Figure 5. Deviations of the Basis Trade Return from the Bill Return and the Cost of Note Funding (percentage points)  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/7fc0d866-94ba-4c22-b8eb-dad947d8bdb0/e0f367914e6131c760adf63c6df3ecf56cde818361c5fb69cc66e9b01f1166b5.jpg)  
Note: Data are 14-day moving averages of the spread of the implied repo rate for futures contract with the second-to-nearest delivery date over the yield for an equivalent maturity Treasury bill for two-year and five-year Treasury futures and the spread of the GCF Treasury repo index over the effective federal funds rate.

Sources: Federal Reserve Bank of New York Effective Federal Funds Rate, DTCC GCF Repo Index, Bloomberg Finance L.P., Center for Research in Security Prices/University of Chicago Booth School of Business, Office of Financial Research

bill yield constitute a liquidity premium in basis trades, because basis traders will require compensation for the risks incurred in financing their Treasury holdings until the delivery date. These risks should be correlated with the spread between the actual repo rate and the federal funds rate. When Treasuries are more expensive to finance, the excess returns on the basis must be high enough in equilibrium to induce basis traders to hold these Treasuries until delivery. Therefore, the excess return on the basis closely follows the costs of financing a note, as represented by the spread of the repo rate over the federal funds rate.

# Implementing Basis Trades

Understanding sources of risk for basis trades and where stress can manifest requires understanding the technical details of implementing these trades.

In particular, only certain futures contracts and Treasury notes are used in basis trading. On any given date, there is just one Treasury security that basis traders want to own for each contract to make a particular deal as profitable as possible, called the "cheapest-to-deliver" Treasury. Treasury futures are exchanged on the Chicago Board of Trade (CBOT) and cleared by CME Clearing. Treasury note futures are offered by CBOT quarterly and require physical delivery. Each

quarter, CBOT offers contracts for two-year, five-year, and 10-year Treasury notes as well as Treasury bonds.4 Only a certain basket of Treasuries can be delivered into each of these futures contracts, with limits on this deliverable basket determined by the maturity of the note relative to the delivery date of the contract and the original maturity of the note at issuance.5 For instance, the deliverable basket for the two-year CBOT contract contains Treasuries with an original maturity of less than five years and three months and a residual maturity on the last day of the delivery month between one year and eight months and two years. Otherwise-similar Treasuries will differ in whether they are deliverable into the futures contract. A conversion factor attached to the futures price is meant to account for the desirability of individual Treasuries. A formula provided by the CBOT determines these conversion factors. Due to these conversion factors, only one Treasury note will be cheapest-to-deliver into each futures contract.6 Which note is the cheapest-to-deliver can change over the life of a contract.

Another complication is the structure of the repo market where basis traders finance their initial note purchase. The structure of this market can create difficulties in securing funding for basis trades and can amplify counterparty risk. Figure 6 describes the general structure of the repo market. Basis traders can borrow

Figure 6. Structure of the Bilateral Repo Market  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/7fc0d866-94ba-4c22-b8eb-dad947d8bdb0/41406d32b08dd50035dcbb5b56e223624e2b5aa6070713d2a9a6457afb74e060.jpg)  
Note: Arrows denote the direction of the flow of cash, from cash lenders to cash borrowers.  
Source: Office of Financial Research

cash from two venues in the bilateral repo market. The first is the sponsored segment within the Fixed Income Clearing Corporation's DVP Repo service. The second is the uncleared bilateral market between dealers and cash borrowers. Traders that are not clearing members of DVP can access the venue's clearing services if a sponsoring member guarantees their trades. Specifically, sponsoring dealers are required to cover the clearing fund allocated to their counterparty. For the sponsor, this offers the advantage of netting trades that provide cash to borrowers against trades that secure cash from money market funds and other cash lenders. However, sponsors are more exposed to the risk of counterparty default than in other sections of the market. As a result, sponsors generally charge borrowers a premium above rates in the interdealer market.

In the uncleared bilateral market, there are no central counterparties, so counterparty exposure cannot be shared with other participants. Basis trades financed in uncleared bilateral repo markets therefore result in direct counterparty risks for dealers.

The parts of the repo market in which hedge funds borrow are somewhat divorced from the facilities through which the Federal Reserve controls repo rates. The Federal Reserve influences rates in the bilateral repo market through its facilities in the tri-party repo market, in which basis traders are unlikely to participate. The Overnight Reverse-Repurchase Facility (ON-RRP) sets a floor on rates by offering an outside option for certain money market funds to invest their cash. Since September 2019, the Federal Reserve has also operated a Repo Facility (RP) that sets a ceiling on rates by lending to primary dealers. However, because there is no direct link to the markets in which basis traders borrow, pass-through of these facilities into repo rates for basis traders depends on dealer intermediation.

# Rise of Hedge Fund Basis Trades

Basis trading has existed since the late 1970s, though the rise of Treasury note basis trades is relatively recent: short-maturity note futures contracts were introduced only in 1989 for the five-year Treasury contract and in 1990 for the two-year Treasury contract. Both contracts had little open interest until the last few years. Hedge fund participation in the basis trade appears to have

Figure 7. Hedge Fund Treasury Futures Short Positions (\$ billions)  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/7fc0d866-94ba-4c22-b8eb-dad947d8bdb0/25206ef35f337b152ca7f852702a57507a04c0375f6fa7f25548d42f641d2e2e.jpg)  
Note: Data are aggregate leveraged fund short positions in dollars of face value. Ultra bond futures and 10-year ultra note futures positions are included with bond futures and 10-year note futures respectively.  
Sources: Commodity Futures Trading Commission Commitment of Traders, Office of Financial Research

risen dramatically over recent years, and may have migrated away from large banks as a result of increased balance sheet costs to those banks from post-financial crisis regulations. One way to measure basis trade intensity among hedge funds is by looking at hedge fund short positions in Treasury futures (see Figure 7).

In early 2018, hedge funds began accumulating sizable short positions in Treasury futures. The increase in these futures positions was greatest in two-year and five-year notes. Smaller increases also occurred in 10-year note and Treasury bond futures contracts. At the peak of these short positions in 2019, the total face value outstanding for hedge funds was more than \$800 billion.

These short futures positions alone do not necessarily indicate basis trading, as futures may be used in many kinds of trades. However, the OFR's cleared repo collection offers a clearer picture of hedge fund trades. Because the OFR's collection includes collateral information for every repo contract in DVP, we can examine

Figure 8. DVP Sponsored Reverse Repo by Participant Type (\$ billions)  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/7fc0d866-94ba-4c22-b8eb-dad947d8bdb0/efc1c343b7cecc89fb3386dcb865655c6dedf3c425930876c94eea72617d46c8.jpg)  
Note: Data are aggregate daily transaction volumes.  
Sources: OFR Cleared Repo Collection, Office of Financial Research

the specific collateral posted by hedge funds in support of their sponsored borrowing in DVP.

# Hedge Fund Repo Positions

While the majority of hedge fund repo borrowing likely occurs through bilateral uncleared trades, the sponsored DVP market offers insights not available in the uncleared bilateral market. Sponsored DVP is also increasingly important in its own right. At present, hedge funds make up the vast majority of sponsored borrowing (see Figure 8). The Depository Trust & Clearing Corporation first allowed hedge fund participation in sponsored repo in 2017. Such participation increased dramatically after the expansion of sponsorship in April 2019. Recent repo data show that cash provided by money market funds is mostly passed on to hedge funds, so the expansion of sponsored lending provides a hint to the pace of growth in sponsored borrowing. Following the expansion of sponsorship, participation of money market funds in sponsored repo increased dramatically (see Figure 9). This may be associated with increased borrowing by hedge funds in DVP.

Figure 9. Money Market Fund Repo with FICC (\$ billions)  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/7fc0d866-94ba-4c22-b8eb-dad947d8bdb0/70bb68aab30bb2af0eb85b32d5949391a5efdb8252fe4b28da4454e6fbcff37f.jpg)  
Note: Aggregate repo volume outstanding. FICC stands for Fixed Income Clearing Corporation.  
Sources: OFR Money Market Fund Monitor, Office of Financial Research

In general, rates in the sponsored market for cash borrowers are higher than interdealer rates, which are again higher than the sponsored market for cash lenders. There are two primary reasons for this. First, sponsors are required to guarantee the trades of the entities they sponsor. This means that hedge funds that trade in sponsored markets represent relatively high risk for their counterparties. Second, sponsored borrowers generally borrow early in the day relative to sponsored lenders. Because much of sponsored borrowing uses cash from sponsored lenders, sponsored borrowing creates additional liquidity risk for sponsors. The fact

that sponsored borrowing rates are in general above interdealer rates highlights a potential for imperfect pass-through of liquidity-boosting interventions by the Federal Reserve to the borrowing rates of hedge funds, adding an additional layer of liquidity risk to hedge fund basis trades.

If hedge funds are actively basis trading, we would expect them to disproportionately hold the cheapest-to-deliver Treasury notes. Figure 10 shows hedge fund positions in repo by security CUSIP prior to the Dec. 1, 2019, futures delivery date and following that

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/7fc0d866-94ba-4c22-b8eb-dad947d8bdb0/db8ff2080879d87c83dcc1f699f4f215089bc06289323a0a83e1690fa321eba4.jpg)  
Figure 10. Hedge Fund DVP Repo in Treasuries by Maturity Date (\( billions, average daily transaction value)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/7fc0d866-94ba-4c22-b8eb-dad947d8bdb0/8b9be419721a0930ab5ce35cad101dec57eb143b797953f0935e46e11d87e184.jpg)  
Note: Dots are average daily outstanding positions in individual Treasuries; solid lines are smoothed fitted sums within maturity windows. Above, gray areas are deliverables for December 2019, below for March 2020. The orange dot denotes positions in the cheapest-to-delivery for the two-year December contract. Some positions have been excluded from the scatter for disclosure purposes.  
Sources: OFR Cleared Repo Collection, Office of Financial Research

delivery date. The shaded windows in the top panel are the maturity dates of notes eligible for delivery into the December futures contract. Securities just inside this delivery window had significantly more hedge fund repo volume than securities just outside this window. The largest position prior to December 1 was in the two-year window and was for the Treasury security that was cheapest-to-deliver for this contract. After December 1, the position in the cheapest-to-deliver for the two-year December contract had diminished considerably, while positions had expanded for deliverables for the March contract, highlighted in gray in the bottom panel. This is consistent with hedge funds maintaining positions in the cheapest-to-deliver for contracts near to delivery.

The decline in repo in the two-year cheapest-to-deliver Treasury occurs directly before the December futures contract's first delivery date, with another smaller increase before its last delivery date. Even though only part of hedge funds' basis positions are likely to be funded in DVP, the  $4-$ 4.5 billion in repo outstanding in this Treasury note just before the delivery date is equivalent to more than 10 percent of the outstanding notional value of the note.

# Reasons for Rising Hedge Fund Treasury Positions

Participation by hedge funds in basis trades requires those funds to hold securities until they roll. The primary source of demand for Treasury futures is from unlevered asset managers, such as mutual funds, insurance funds, and pension funds. By holding these securities until they roll contracts, hedge funds provide liquidity by using repo leverage to purchase Treasuries. While the exact reason for increases in volume in hedge fund basis trades is unclear, possibilities include:

1. Declining foreign demand for Treasuries. Since 2015, foreign holdings of Treasuries have been declining as a share of total Treasuries outstanding. Weakened demand for Treasury coupon securities from foreign investors, combined with increased amounts of Treasuries outstanding, may have pushed down the relative prices of notes and bonds, making the basis trade more attractive to hedge funds.
2. Regulatory costs of holding Treasuries for banks. Hedge funds and other proprietary traders are not explicitly limited to maximum leverage ratios in the same way banks are. Standards imposed after the 2007-09 financial crisis put direct leverage limits on banking institutions, typically requiring a capital-to-asset ratio of at least 5 percent, which implies a maximum leverage ratio of 20 to 1.[7] Hedge fund leverage is constrained only by the haircuts on the collateral, and for Treasury securities haircuts are typically around 2 percent. This implies a maximum leverage ratio for hedge funds of 50 to 1. Because the basis trade profits from tiny differences in spreads, high leverage is necessary to make the trade worthwhile. Basis trade activity may therefore have migrated from banks to hedge funds and other less-regulated traders because leverage limits made the basis trade unprofitable for banks. Anecdotal evidence supports this; the Financial Times has reported that many of the lead traders executing these trades at banks have left to join hedge funds.[8]
3. Increasing segmentation in the bills market. Regulatory reforms may have made it more difficult for unlevered funds to hold longer-term Treasuries and may have led to a natural source of demand for long futures positions in Treasuries. As a result, segmentation may have increased in the Treasury market, which would lead simultaneously to a higher disconnect between bond and bill returns and to demand for short Treasury note futures.

It is difficult to determine which of these possible causes is most likely and, in equilibrium, they are all reinforcing. However, all three explanations would have resulted in increased costs associated with longer-term Treasuries for regulated or unlevered participants relative to levered and unregulated participants such as hedge funds. This relative change in the costs of holding Treasuries for hedge funds and unlevered participants would in turn have made the basis trade more desirable for hedge funds and have led to a reallocation of Treasuries from traditional holders to relative value hedge funds. This is consistent with the generally higher return on basis trades relative to bills seen in the latter part of Figure 5.

The exposures implicit in Treasury basis trades are similar to those that have led to problems for hedge

funds in the past. Long-Term Capital Management (LTCM), for instance, was a highly leveraged relative value hedge fund whose failure nearly led to a financial crisis in 1998 when the spreads they were betting on diverged further than fund managers expected. LTCM suffered because it was highly exposed to liquidity and flight-to-safety risks for which it was poorly hedged. While the introduction of central counterparties and cleared repo markets may have reduced some of the risks that LTCM faced, modern relative value hedge funds are more plentiful, larger, and continue to be highly leveraged.

# Basis Trades and March 2020 Treasury Market lliquidity

Treasury market illiquidity in March led to large losses in hedge fund basis trades as the CBOT increased margins and repo rates became extremely volatile. However, we are not aware of any hedge fund defaults on basis trades. While funds appear to have partially exited these trades based on sales of the cheapest-to-deliver notes, it is not clear that these sales actually impaired Treasury market liquidity. Instead, the basis trade appears to have continued to provide net liquidity to underlying Treasuries relative to comparable

off-the-run securities. That so many of the risks of this trade materialized without substantial feedback into financial stability may have been a result of timely intervention by the Federal Reserve. In this section we review the March illiquidity episode, discussing possible exacerbating factors, and then discuss the effects of this illiquidity on basis trades. We conclude by discussing the effects of Federal Reserve actions after March on Treasury market liquidity and basis trades.

# Onset of Treasury Market Iliquidity

In early March 2020, Treasury market liquidity decreased. As yields fell, volatility spiked, according to multiple option-implied indexes (see Figure 11). At the same time, bid-ask spreads began to increase, concentrated in off-the-run Treasuries (see Figure 12). Standard spreads associated with liquidity risk, such as the on-the-run off-the-run spread, also spiked. These indicators are consistent with a general flight to liquidity, with investors selling off-the-run Treasuries and either holding the proceeds as cash or purchasing more-liquid on-the-run Treasuries that could be more readily converted into cash.

This illiquidity appears to have been reflected in an inability of dealers that purchased Treasuries to offload

Figure 11. Treasury Volatility Indexes  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/7fc0d866-94ba-4c22-b8eb-dad947d8bdb0/498f2f3ebce2635d9706eae0dc396aae449e85cba91d8cb95495344e61112a55.jpg)  
Note: CME 10-year Treasury VIX and the MOVE Index are option implied Treasury volatility indexes.  
Sources: Bloomberg Finance L.P., Office of Financial Research

the securities on to ultimate buyers (see Figure 13). Making markets requires dealers to hold inventories of the Treasuries in which they make those markets, with accompanying regulatory and balance sheet costs. Leading into March, primary dealers already had elevated exposure to Treasuries, which had begun to rise in late 2018. Sales in the Treasury market increased this exposure, especially to the shortest and longest residual maturity Treasuries. As the pandemic created demand for cash in the real economy, selling pressure in the Treasury market came from multiple sources. One notable source of sales was from foreign accounts. Treasury International Capital System data show net decreases in foreign Treasury positions were around  \$257 billion in the month of March, with a decrease of\$ 147 billion in foreign official accounts. Data from the Federal Reserve's Factors Affecting Reserve Balances, which provide a higher-frequency view of foreign official custody holdings with the Federal Reserve, suggest these sales began in the last weeks of February. Without immediate buyers, these Treasuries remained on dealers' balance sheets and made the dealers hesitant to create markets in these off-the-run Treasuries.

# Stress in Hedge Fund Basis Trades

Treasury market illiquidity had an immediate effect on basis trades. First, rising volatility led to increasing margins on Treasury futures, and therefore margin calls on these positions (see Figure 14). From February 28 to March 16, across Treasury note futures contracts margins rose by more than 30 percent, while margins on bond futures more than doubled, corresponding to their longer duration. Margin calls may have forced an accelerated decline of hedge fund short futures positions (see Figure 15). In particular, total hedge fund shorts declined from \(774 billion in face value to \)684 billion between February 18 and March 17, with particularly large declines of around \$71 billion in two-year Treasury shorts.[10] Some portion of this decline preceded March, with total shorts declining by \(25 billion between February 18 and March 3, which may have represented some foresight of the stress that potential spread of COVID-19 to the United States could put on Treasury markets.

The variation margin payments on the futures contract were not fully offset by the increase in prices in the long note position. Futures prices rose more quickly

Figure 12. Bid-Ask Spreads for Off-the-run Treasuries ($)  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/7fc0d866-94ba-4c22-b8eb-dad947d8bdb0/19d5ada7815037160951bda50c56fb45c55e2bdb39f245de3140309a69d1e276.jpg)  
Note: Spreads are the difference between bid and ask prices for \$100 notional in the fourth-from-most-recent Treasury issuance as of January 2020.

Figure 13. Primary Dealer Treasury Net Exposure (\$ billions)  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/7fc0d866-94ba-4c22-b8eb-dad947d8bdb0/f3bd691bca0a86b9d4ec4cf5dbb584602c35932d1c09c4b8f1a1fa058311207c.jpg)  
Sources: Bloomberg Finance L.P., Office of Financial Research  
Note: Data are net exposures by maturity.  
Sources: Federal Reserve Bank of New York Primary Dealer Statistics, Office of Financial Research

than cash prices (see Figure 16). This widened the basis, leading to further losses for basis traders who had bought the basis.

The imperfect nature of pass-through within repo markets may also have contributed to the losses on basis positions. Figure 17 illustrates the pass-through of federal funds rate target changes onto the repo rates for sections of the DVP market. Spreads between repo rates and the federal funds rate target widened in the first two weeks of March 2020. At the same time, the spread between the sponsored borrowing rate — the rate at which hedge funds borrow in DVP — and interdealer rates was at the widest level seen since the OFR repo data collection began. While this may be in part a sign of sponsors' concerns over intraday liquidity provision to their borrowers, the highest rates were concentrated among hedge funds, suggesting that their leverage may have been a concern.

In combination, Treasury illiquidity and imperfect repo pass-through led to a large disconnect between the implied repo rate and Treasury bill yields across contracts. The IRR followed the bill rate until early March, and then began to depart (see Figure 18). This departure began as the bill rate rapidly moved below the DVP sponsored borrowing rate and these

Figure 14. Maintenance Margin on Futures Contracts ($)  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/7fc0d866-94ba-4c22-b8eb-dad947d8bdb0/4cc341f550c8074e452b84bcba54b635b4387a83852506c411d7818df72d8b02.jpg)  
Note: Data are for maintenance margins on \$200,000 notional in two-year Treasury futures contracts.  
Sources: CME Group, Office of Financial Research  
Sources: Bloomberg Finance L.P., Office of Financial Research

Figure 15. Primary Dealer Treasury Net Exposure (\$ billions)  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/7fc0d866-94ba-4c22-b8eb-dad947d8bdb0/e4864a6ce58a8870c285555ace2501a91eb507b234f362424ff6ef0868e2587b.jpg)  
Note: Data are leveraged fund short and long positions in dollars of face value.

Figure 16. Futures and Cash Prices for the Two-Year June 2020 Contract($)  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/7fc0d866-94ba-4c22-b8eb-dad947d8bdb0/4e4ffcebf11e7b3b3b3da095272ac65dc9b3bd7182936880186ea541cc826fd4.jpg)  
Sources: Commodity Futures Trading Commission Commitments of Traders, Office of Financial Research  
Note: Spreads are the difference between bid and ask prices for \$100 notional in the fourth-from-most-recent Treasury issuance as of January 2020.

Figure 17. DVP Repo Rates (left axis, percentage point spread over fed funds target midpoint) and Federal Reserve Facility Participation (right axis, $ billions)  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/7fc0d866-94ba-4c22-b8eb-dad947d8bdb0/c7d8f8cb1d58bc5c2895fbf513f54aef018ded6c1452d5ce27f6ac145555fbf9.jpg)  
Note: Repo rates are average overnight Treasury rates for each market segment.. The two black lines represent the average rate offered by the Federal Reserve's Overnight Reverse-Repurchase Facility (ON-RRP) and Repo Facility (RP). The two shaded areas are daily transaction volumes in these facilities.

trades became less profitable. The spread between the IRR and bill yields then increased, rising well above the average over the last two years, and falling around 2 percent per annum (see Figure 19). This disconnect peaked around March 17, and then began to normalize, with the IRR falling back into line with both the bill rate and actual repo rate.

All this evidence points to the conclusion that March illiquidity caused losses on the basis trade, which were possibly compounded by large sales of the basis — with traders who had bought the basis now selling cash Treasuries and buying futures in order to close their positions — under pressure from margin requirements. In this sense, while we are unaware of any hedge fund defaults associated with the basis trade during this illiquidity episode, many of the risks of the basis trade appear to have materialized during March.

Figure 18. Basis Trade Return, Bills Rate, and DVP Repo Rate (percent)  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/7fc0d866-94ba-4c22-b8eb-dad947d8bdb0/2622e3d8fbeddf95a942426b886fcf88a4efe00dc4be51b5b7868e79cfd33ec7.jpg)  
Sources: Federal Reserve Bank of New York, OFR Cleared Repo Collection, Office of Financial Research  
Note: DVP Repo rate is the average overnight rate for sponsored borrowers with Treasury collateral. Implied repo rates are for July contracts.  
Sources: Bloomberg Finance L.P., Treasury Daily Yield Curve Rates, OFR Cleared Repo Collection, Office of Financial Research

# Signs of Liquidity in the Cheapest-to-Deliver

These facts alone do not suggest any feedback effects from stress in the basis trade to Treasury illiquidity. Rather, there is some evidence that the basis trade continued to provide liquidity through March.

In particular, relative to comparable Treasuries, the cheapest-to-deliver securities for the futures market traded at higher prices throughout March. Figure 20 shows spreads of Treasuries outside the deliverable set but with similar maturity dates over the cheapest-to-deliver for the two-year and five-year note futures contract for June 2020. These deliverable spread increases coincided with increases in bid-ask spreads across Treasuries, and had generally decreased by the beginning of April as stress in the Treasury market fell.

This premium for deliverable Treasuries runs counter to the narrative that sales of the basis directly harmed Treasury liquidity. If selling pressure from relative value hedge funds had significantly harmed Treasury liquidity, we might expect the price of the cheapest-to-deliver securities to have fallen relative to comparable securities as dealers accumulated large net exposure to these specific Treasuries. That the premium rose suggests that any selling pressure was offset by the liquidity that the basis trade provides and the link it establishes to futures markets.[11] This link may have become particularly valuable during the general flight to liquidity during March, and reduced pressure on dealers purchasing the cheapest-to-deliver.

As a result, while the general evidence points to sales of the basis by hedge funds during March, we do not find conclusive evidence that these sales in turn caused greater illiquidity in the Treasury market. While many of the risks of this trade seem to have materialized, evidence of spillovers into Treasury liquidity and short-term funding disruptions are limited. However, it is worth noting that had liquidity not returned to the Treasury market when it did, and had repo rates not fallen, the consequences for relative value hedge funds could have been much worse.

# Effect of Federal Reserve Actions

Timely intervention by the Federal Reserve may have been crucial for limiting the extent of hedge fund losses in the basis trade and in preventing broader spillovers.

Figure 19. Spread of Basis Return over Bill Yield (percentage points)  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/7fc0d866-94ba-4c22-b8eb-dad947d8bdb0/4bf5d67e64e3ab10ffa5cb3642121120c52091ce541113e4a01959879049ebf0.jpg)  
Note: Spread between the implied repo rate and an equivalent maturity bill yield for the futures contract with the second-to-nearest delivery date.

Figure 20. Spread on the Cheapest-to-Deliver Treasury (percentage points)  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/7fc0d866-94ba-4c22-b8eb-dad947d8bdb0/754d0f82159ed549647c570b5ce285da5c60d415fe89c950ca3749c79be96551.jpg)  
Sources: Bloomberg Finance L.P., Center for Research in Security Prices/ University of Chicago Booth School of Business, Office of Financial Research  
Note: Spread is the yield on a similar maturity nondeliverable Treasury minus the yield on the cheapest-to-deliver. Cheapest-to-deliver is for June futures contracts.  
Sources: Bloomberg Finance L.P., Office of Financial Research

Following March 16, returns on basis trades began to move back into line with the returns on Treasury bills, and came closer to the cost of borrowing in the sponsored repo market. Several Fed actions on March 16 and 17 may have contributed to this easing of pressure on hedge funds. In particular, Federal Reserve expansions of Treasury purchases provided an additional source of demand for off-the-run Treasuries, while expansions of the central bank's repo facility reduced financing risks associated with providing liquidity to Treasury markets. It is difficult to know exactly which of these actions was most important, in particular because they were mutually reinforcing.

The Federal Reserve took the unusual action of including the cheapest-to-deliver Treasury across contracts in its purchases. The direct effect of these purchases may have been limited. Purchases of deliverables for longer duration securities picked up almost immediately after March 15. However, these longer-duration securities seem to have made up a relatively small portion of hedge fund short futures positions. Alternatively, Fed purchases of the most popular two-year and five-year cheapest-to-deliver Treasuries were negligible until April. This is consistent with the basis trade still providing liquidity to the market, as dealers may have been more comfortable holding Treasuries for which they had a natural source of demand from basis traders.

However, the indirect effect of including cheapest-to-deliver Treasuries in Federal Reserve purchases may have been substantial. Even if purchases of shorter-maturity cheapest-to-deliver Treasuries on March 16 were small, the knowledge that the Treasuries could be sold to the Federal Reserve in the future may have made dealers more willing to hold these Treasuries, allowing hedge funds to gradually reduce their exposure to the basis trade. The increase in Federal Reserve purchases in April may then represent concerns over the longer-term profitability of basis trades, which as we discuss below is likely to be reduced. Without these actions, dealers may not have been willing to hold the cheapest-to-deliver securities in order to accommodate a gradual withdrawal from the basis trade.

As these purchases may have made dealers more willing to accept cheapest-to-deliver Treasuries, the Fed also lowered the costs of funding these Treasury holdings for hedge funds. Fed actions succeeded in lowering the

Figure 21. Cumulative Federal Reserve Purchases of the Cheapest-to-Deliver Securities (\$ billions)  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/7fc0d866-94ba-4c22-b8eb-dad947d8bdb0/190adb0e8102c0d1f801611e02a04c25970bd0bd449f46b689a152a38c4c1c26.jpg)  
Note: Cumulative purchases of the cheapest-to-deliver (CTD) Treasuries for June delivery.  
Sources: Federal Reserve Bank of New York, Office of Financial Research

DVP repo rate across segments of the market, including in the sponsored borrowing segment. Expansion of the repo facility likely reduced these rates by relieving liquidity concerns among dealers. Following this expansion on March 16, the sponsored lending rate fell to the zero lower bound defined by the Fed's overnight reverse repurchase (ON-RRP) facility (see Figure 21). The rate on sponsored borrowing largely fell in lockstep, reducing the cost of funding these Treasury positions for hedge funds.

# Conclusion

Treasury market illiquidity in March placed severe stress on hedge fund basis traders. Media articles published in the week of March 17 indicate that several relative value hedge funds experienced serious stress associated with the basis trade.[12] These losses were driven by margin calls and repo rate volatility. Under this pressure, hedge funds unwound their positions, selling to dealers whose balance sheets were already swelling with Treasuries.

However, to our knowledge no defaults directly associated with the basis trade actually occurred, suggesting

that these funds weathered the margin calls during this period. In addition, spreads for the cheapest-to-deliver securities across contracts suggest that this trade continued to provide liquidity relative to comparable off-the-run Treasuries. Rapid action by the Federal Reserve in expanding its purchases of Treasury securities and its repo facilities may have stemmed much of the potential impact of these trades on Treasury illiquidity.

Meanwhile, further reductions in hedge fund short positions suggest that the popularity of the basis trade has decreased, with total short positions at \(554 billion as of April 28, a decline of almost 30 percent from mid-February. Basis trades remain unattractive for hedge funds. While the IRR has remained near zero, the spread that sponsors charge borrowers over their lending rates imposes an effective lower bound on hedge fund borrowing rates of around 12.5 basis points. (A basis point is one-hundredth of a percentage point.) At the same time, the implied repo rate has generally been in the range of 5 basis points for the two-year and five-year contracts, in line with bill rates, and has been below zero for the 10-year contract. As a result, net returns on new basis trades are likely to be negative in the immediate future. That a substantial portion of the outstanding of the cheapest-to-deliver securities has been purchased by the Federal Reserve without a substantial increase in implied repo rates further underscores the possibility that demand for basis trades will be tepid going forward.

Nevertheless, risks of basis trades persist. Hedge funds still hold large short Treasury futures positions. Looking forward, relatively large amounts of short-term Treasury bill issuance may support returns on the basis trade, while other participants such as foreign official accounts appear to be at least temporarily satisfied with the liquidity buffers they established in March. However, relatively high costs of funding for hedge funds, combined with low returns on the basis trade, may lead to further sales of the basis and reduce the liquidity these trades provide to longer-term Treasury notes and bonds. The high leverage of hedge funds involved in basis trades continues to be a cause for concern. These funds remain exposed to sudden bouts of illiquidity in Treasury and repo markets.

Even if basis trades remain unpopular, it is worth considering the vulnerabilities exposed by difficulties in March. The transition of Treasury security ownership toward highly leveraged funds exposes the market to sell-offs because small changes in prices can trigger large losses. Expanded dealer Treasury exposure could exacerbate these sell-offs, hampering the ability of those dealers to make markets. Finally, the role of repo markets in financing both dealers and leveraged Treasury holders, as well as the importance of Treasury collateral, tie short-term funding markets to the Treasury market, leading to potential spillovers into broader wholesale funding markets. Future episodes of Treasury market instability therefore remain a possibility and may trigger continued intervention by the Federal Reserve.

# Endnotes

Daniel Barth, Senior Economist, Board of Governors of the Federal Reserve System (daniel.j.barth@frb.gov), and Jay Kahn, Research Economist, Office of Financial Research (robert.kahn@ofr.treasury.gov). The authors thank Amanda Buckley, Katherine Gleason, Maryann Haggerty, Matthew McCormick, Sriram Rajan and Stacey Schreft for their comments and assistance.  
2 Previous research, in particular Andreas Schrimpf, Hyun Song Shin, and Vladyslav Sushko "Leverage and margin spirals in fixed income markets during the Covid-19 crisis," BIS Bulletin No. 2, April 2, 2020 (https://www.bis.org/publ/bisbull02.pdf), has discussed the role of the basis trade in March Treasury illiquidity. While we confirm their results that losses on the trade occurred during March, we provide evidence that feedback into Treasury market illiquidity may have been limited.  
3 Throughout this brief, when we construct long series of the returns on the basis trade, we use a roll date for the futures contract that avoids the delivery month, so as to avoid any excess volatility caused by optionality in physical delivery. In particular, we choose the futures contract that on any given day has the second-nearest delivery date.  
4 For 10-year note contracts and bond contracts, the CBOT offers additional "ultra" futures, with narrower maturity ranges eligible for delivery.

For instance, the deliverable basket for the two-year contract contains Treasuries with an original maturity of less than five years and three months and a residual maturity on the last day of the delivery month between one year and eight months and two years.  
6 Specific collateral repo rates can vary for individual securities. If the repo rate on the cheapest-to-deliver is particularly high, the cheapest-to-deliver may not actually be the most attractive Treasury to deliver into the futures position.  
These post-crisis limits stem mostly from the Dodd-Frank Wall Street Reform and Consumer Protection Act of 2010 and from the international Basel III standards.  
See Joe Rennison, "Repo blame game moves focus to hedge funds," Financial Times, Dec. 13, 2019. https://www.ft.com/content/6427f16a-1d05-11ea-97df-cc63de1d73f4.  
9 Sales from these foreign official accounts may have had particular importance for Treasury market illiquidity. Primary dealers are required to make "reasonable" markets for sales of Treasuries by these accounts. Additionally, the funds from these sales seem to have been invested in significant part in the Federal Reserve's foreign repo pool, which effectively removes reserves from the system, potentially making repo financing of Treasuries more expensive

10 There are two ways to reduce futures exposure: for contracts maturing in March, hedge funds may have simply not rolled over into the June contract. For contracts maturing after March, hedge funds would have to take on offsetting long positions.  
11 It is possible that in order to keep basis trades open while meeting margin calls, hedge funds may have sold Treasuries other than the cheapest-to-deliver, thus contributing to the lower price of other securities. It is difficult to reject this possibility without more detailed data on hedge funds' Treasury holdings. However, even in this case the willingness of hedge funds to sell other Treasuries to keep their basis trades open would still indicate excess demand for the trade.  
12 See for instance Stephen Spratt, "How a Little Known Trade Upended the U.S. Treasury Market," Bloomberg, March 17, 2020. https://www.bloomberg.com/news/articles/2020-03-17/treasury-futures-dominothat-helped-drive-fed-s-5-trillion-repo; Juliet Chung, "Hedge Funds Hit by Losses in Basis Trade," The Wall Street Journal, March 19, 2020. https://www.wsj.com/articles/hedge-funds-hit-by-losses-in-basis-trade-11584661202; Sonali Basak, Liz McCormick, Donal Griffin, and Hema Parmar, "Before Fed Acted, Leverage Burned Hedge Funds in Treasury Market," Bloomberg, March 19, 2020. https://www.bloomberg.com/news/articles/2020-03-19/before-fed-acted-leverage-burned-hedge-funds-in-treasury-trade.
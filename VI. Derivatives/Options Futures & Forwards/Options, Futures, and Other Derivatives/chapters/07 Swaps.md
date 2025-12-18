---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: 7.1 MECHANICS OF INTEREST RATE SWAPS
linter-yaml-title-alias: 7.1 MECHANICS OF INTEREST RATE SWAPS
---

# 7.1 MECHANICS OF INTEREST RATE SWAPS

An interest rate swap is a swap where interest at a predetermined fixed rate, applied to a certain principal, is exchanged for interest at a floating reference rate, applied to the same principal, with regular exchanges being made for an agreed period of time. Historically, the most common floating reference interest rate in an interest rate swap has been LIBOR. For example, a swap negotiated in the past might be an agreement to exchange interest at 2\% on a principal of \50 million for interest at three-month LIBOR on the same principal for the next five years with exchanges every three months.

As explained in Chapter 4, LIBOR has proved to be an unsatisfactory reference rate because it is based on estimates made by banks, not on actual transactions. The plan in financial markets is to phase out the use of LIBOR and replace it by a reference rate based on overnight transactions between banks. The transition period will be tricky for the swaps market. Many LIBOR-for-fixed swaps have been negotiated in the past with long lives and will continue to be in existence after the use of LIBOR has been discontinued. For example, a 20-year swap negotiated at the end of 2013 will still have 12 years to run at the end of 2021 (which was the original date chosen for the end of LIBOR). If banks stop providing LIBOR estimates after the end of 2021, it will be necessary for the market to agree on a way of estimating LIBOR from the new reference rates. For example, three-month U.S. LIBOR is likely to be estimated as three-month SOFR plus  $x$ , where  $x$  is some average of the difference between the two rates observed in the past.

At this point, it is worth reviewing the differences between LIBOR and the overnight reference rates that are replacing it:

LIBOR rates are the borrowing rates estimated by banks in the interbank market for periods between one day and one year.

- Overnight rates such as SOFR and SONIA are based on actual transactions between banks.
- The overnight rates are converted to longer reference rates using what might be termed an "averaging process." Usually the averaging involves daily compounding as described in Section 4.2, but occasionally a simple arithmetic average is used (as for CME's one-month SOFR futures).
- LIBOR rates for a period are known at the beginning of the period to which they apply, whereas the result of the averaging process for overnight rates is known only at the end of the period.
- LIBOR rates incorporate some credit risk, whereas rates based on overnight rates such as SOFR and SONIA are considered to be risk-free rates.

As LIBOR is phased out, swaps based on overnight rates are becoming more popular. These are referred to as overnight indexed swaps (OISs).

An Is is an agreement to exchange a fixed rate of interest for a reference rate of interest that is calculated from realized overnight rates. A simple example of an Is is a swap lasting for three months. This leads to a single exchange at the end of the three months. The fixed rate of interest applied to a certain principal is exchanged for the reference rate applied to the same principal. Other similar OISs that last for one month, six months, and one year lead to a single exchange calculated in a similar way. When the life of the Is is greater than one year, it is typically divided into three-month subperiods, with the fixed rate being exchanged at the end of each three-month period for the three-month reference rate that is calculated for that period from one-day rates. OISs lasting ten years or longer are now traded.

Consider a hypothetical two-year Is initiated on March 8, 2022, between Apple and Citigroup. We suppose Apple agrees to pay to Citigroup interest at the rate of  $3\%$  per annum every three months on a notional principal of 100 million, and in return Citigroup agrees to pay Apple the three-month SOFR floating reference rate on the same notional principal. Apple is the fixed-rate payer; Citigroup is the floating-rate payer. For ease of exposition, we assume that rates are quoted with quarterly compounding and we ignore the impact of day count conventions and holiday conventions (which are explained later in this chapter). The swap is shown in Figure 7.1.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/6cbd8ce61c68f14936b2f2fef067b8cb8e904c51e6e6cfc8978d096f9a725006.jpg)

Figure 7.1 Interest rate swap between Apple and Citigroup.

In total there are eight exchanges on the swap. One possible outcome is shown in Table 7.1. The first exchange of payments would take place on June 8, 2022. Apple would pay Citigroup  \$750,000 (one quarter of 3\%$  applied to 100 million). Citigroup would pay Apple the three-month rate calculated from daily SOFR rates over the previous three months. The 3-month SOFR rate calculated on June 8, 2022 (from overnight rates between March 8, 2022, and June 8, 2022) is assumed to be  $2.2\%$  per annum or  $0.55\%$  per three months using the formula in Section 4.2. The floating payment from Citigroup to Apple is therefore \$550,000. The fixed and floating payments are netted with the result that Apple pays Citigroup \$200,000 on June 8, 2022. The second exchange of payments is on September 8, 2022. Again, the fixed payment from Apple to Citigroup is \$750,000. We assume that the 3-month SOFR rate on September 8, 2022 (calculated from overnight rates between June 8, 2022 and September 8, 2022) is  $2.6\%$  per annum or  $0.65\%$  per three months. The floating payment is therefore \$650,000 and the net payment from Apple to Citigroup is therefore 100,000.

What is the difference between an Is and a LIBOR swap? If the heading of the second column in Table 7.1 is changed to "LIBOR rate" the table could provide an example of a LIBOR swap. The difference is that the LIBOR rate for a period is known at the beginning of the period, whereas the overnight reference rate is not known until the end of the period. The  $2.20\%$  floating rate applicable to the first exchange on June 8, 2002, if LIBOR, would be known at the beginning of the swap's life on March 8, 2022; the  $2.60\%$  floating rate applicable to the second exchange on September 8, 2022, would be known on June 8, 2022; and so on.

Table 7.1 Cash flows to Apple for one possible outcome of the Is in Figure 7.1. The swap lasts two years and the notional principal is 100 million.

<table><tr><td>Date</td><td>SOFR rate (\%)</td><td>Floating cash flow received ($’000s)</td><td>Fixed cash flow paid ($’000s)</td><td>Net cash flow ($’000s)</td></tr><tr><td>June 8, 2022</td><td>2.20</td><td>550</td><td>750</td><td>-200</td></tr><tr><td>Sept. 8, 2022</td><td>2.60</td><td>650</td><td>750</td><td>-100</td></tr><tr><td>Dec. 8, 2022</td><td>2.80</td><td>700</td><td>750</td><td>-50</td></tr><tr><td>Mar. 8, 2023</td><td>3.10</td><td>775</td><td>750</td><td>+25</td></tr><tr><td>June 8, 2023</td><td>3.30</td><td>825</td><td>750</td><td>+75</td></tr><tr><td>Sept. 8, 2023</td><td>3.40</td><td>850</td><td>750</td><td>+100</td></tr><tr><td>Dec. 8, 2023</td><td>3.60</td><td>900</td><td>750</td><td>+150</td></tr><tr><td>Mar. 8, 2024</td><td>3.80</td><td>950</td><td>750</td><td>+200</td></tr></table>

# 7.2 DETERMINING RISK-FREE RATES

Overnight indexed swaps play an important role in determining the risk-free rates which are needed for valuing derivatives.

OISs, when first entered into, into have a value of zero. (In this respect an Is is like a forward contract.) The fixed rate that is exchanged for floating is referred to as the Is rate. The Is rates for a range of maturities can be observed in the market at a particular time. Is rates with maturities one year or less, because they lead to just one exchange, have a straightforward interpretation. They provide the risk-free zero rates that are equivalent to the underlying overnight rates.

Now consider Is rates for maturities greater than a year. The notional principal is not exchanged in an Is. (This is why the principal is termed "notional.") However, if we did exchange the notional principal at the end of the life of the swap, the cash exchanges would not change in any way because the notional principal is the same for both the fixed and floating payments. Table 7.2 is produced from Table 7.1 by adding exchanges of principal at the end. The table shows that the swap is equivalent to the exchange of a floating rate bond (cash flows in the third column) for a fixed rate bond (cash flows in the fourth column).

A key point is that the floating-rate bond in Table 7.2 is worth \$100,000. This is because it provides the payments necessary to service \$100 million of borrowings at overnight rates. (To see this, imagine that (a) \$100 million plus accumulated interest is borrowed at successive overnight rates during each quarter, (b) the accumulated interest is paid at the end of each quarter, and (c) \$100 million principal is repaid at the end of the two years.) Because an Is is worth zero when first entered into, the fixed-rate bond (fourth column of Table 7.2) must also be worth 100 million. This shows that the Is rate of 3\% is the interest rate on a two-year fixed-rate bond that is worth par and pays interest quarterly.

Is rates can therefore be used in the same way as the Treasury rates in Section 4.7 to define a zero curve. The Is rates out to one year define zero rates in a direct way. The Is rates for longer maturities define bonds worth par. The zero curve can be assumed

Table 7.2 Cash flows in Table 7.1 when the notional principal is exchanged at the end.

<table><tr><td>Date</td><td>SOFR rate (\%)</td><td>Floating cash flow received ($&#x27;000s)</td><td>Fixed cash flow paid ($&#x27;000s)</td><td>Net cash flow ($&#x27;000s)</td></tr><tr><td>June 8, 2022</td><td>2.20</td><td>550</td><td>750</td><td>-200</td></tr><tr><td>Sept. 8, 2022</td><td>2.60</td><td>650</td><td>750</td><td>-100</td></tr><tr><td>Dec. 8, 2022</td><td>2.80</td><td>700</td><td>750</td><td>-50</td></tr><tr><td>Mar. 8, 2023</td><td>3.10</td><td>775</td><td>750</td><td>+25</td></tr><tr><td>June 8, 2023</td><td>3.30</td><td>825</td><td>750</td><td>+75</td></tr><tr><td>Sept. 8, 2023</td><td>3.40</td><td>850</td><td>750</td><td>+100</td></tr><tr><td>Dec. 8, 2023</td><td>3.60</td><td>900</td><td>750</td><td>+150</td></tr><tr><td>Mar. 8, 2024</td><td>3.80</td><td>100,950</td><td>100,750</td><td>+200</td></tr></table>

Table 7.3 Is Rates and the calculation of the Is zero curve.

<table><tr><td>Is maturity</td><td>Is rate</td><td>Compounding frequency for Is rate</td><td>Zero rate (cont. comp.)</td></tr><tr><td>1 month</td><td>1.8\%</td><td>Monthly</td><td>1.7987\%</td></tr><tr><td>3 months</td><td>2.0\%</td><td>Quarterly</td><td>1.9950\%</td></tr><tr><td>6 months</td><td>2.2\%</td><td>Semiannually</td><td>2.1880\%</td></tr><tr><td>12 months</td><td>2.5\%</td><td>Annually</td><td>2.4693\%</td></tr><tr><td>2 years</td><td>3.0\%</td><td>Quarterly</td><td>2.9994\%</td></tr><tr><td>5 years</td><td>4.0\%</td><td>Quarterly</td><td>4.0401\%</td></tr></table> to be linear between maturities and calculations can be carried out by DerivaGem. A example of the result of the calculations is shown in Table 7.3 and Figure 7.2. In this example, the two-year and five-year zero rates would be chosen using an iterative search procedure (such as Solver in Excel) so that they are consistent with the following:
- A two-year bond making quarterly interest payments at  $3\%$  per annum is worth par.
- A five-year bond making quarterly interest payments at  $4\%$  per annum is worth par.

# 7.3 REASONS FOR TRADING INTEREST RATE SWAPS

Swaps have proved to be very popular because they have many uses, as we will now explain. Most of the discussion of interest rate swaps in the next few sections applies regardless of the floating reference rate used. For ease of exposition we will therefore simply refer to the floating rate as "floating."

# Using the Swap to Transform a Liability

For Apple, the swap in Figure 7.1 could be used to transform a floating-rate loan into a fixed-rate loan, as indicated in Figure 7.3. Suppose that Apple has arranged to borrow 100 million for two years at the floating rate plus 10 basis points. (One basis point is

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/8953740fb4628d3b21cc26eb0e550b5380e4d3b3a9252492954951b482843105.jpg)

Figure 7.2 Is zero rates in Table 7.3.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/138664fc88e1821f261a11e426cf4e620e36cb4b5584c594027350c538b035a3.jpg)

Figure 7.3 Apple uses the swap in Figure 7.1 to convert floating-rate borrowings into fixed-rate borrowings.

$0.01\%$ , so the rate is floating plus  $0.1\%$ .) After Apple has entered into the swap, it has three sets of cash flows:

1. It pays floating plus  $0.1\%$  to its outside lenders.
2. It receives floating under the terms of the swap.
3. It pays  $3\%$  under the terms of the swap.

These three sets of cash flows net out to an interest rate payment of  $3.1\%$ . Thus, for Apple the swap could have the effect of transforming borrowings at the floating rate plus 10 basis points into borrowings at a fixed rate of  $3.1\%$ .

A company wishing to transform a fixed-rate loan into a floating-rate loan would enter into the opposite swap. Suppose that Intel has borrowed 100 million at 3.2\% for two years and wishes to switch to the floating rate. Like Apple, it contacts Citigroup. We assume that it agrees to enter into a swap where it pays the floating rate and receives 2.97\%. Its position would then be as indicated in Figure 7.4. It has three sets of cash flows:

1. It pays  $3.2\%$  to its outside lenders.
2. It pays floating under the terms of the swap.
3. It receives  $2.97\%$  under the terms of the swap.

These three sets of cash flows net out to an interest rate payment of floating plus  $0.23\%$  (or floating plus 23 basis points). Thus, for Intel the swap could have the effect of transforming borrowings at a fixed rate of  $3.2\%$  into borrowings at the floating rate plus 23 basis points.

# Using the Swap to Transform an Asset

Swaps can also be used to transform the nature of an asset. Consider Apple in our example. The swap in Figure 7.1 could have the effect of transforming an asset earning a fixed rate of interest into an asset earning a floating rate of interest. Suppose that Apple owns \$100 million in bonds that will provide interest at  $2.7\%$  per annum over the next two years. After Apple has entered into the swap, it is in the position shown in Figure 7.5. It has three sets of cash flows:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/62e91c476dc2ca818346a69d2c468b72258c45d874e833b84ba309d7cf6adc4e.jpg)

Figure 7.4 Intel uses a swap to convert fixed-rate borrowings into floating-rate borrowings.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/58148cb7c55468db0023849d49f14950ffbab838a6b5deabffd7b88d8ede8477.jpg)

Figure 7.5 Apple uses the swap in Figure 7.1 to convert a fixed-rate investment into a floating-rate investment.

1. It receives  $2.7\%$  on the bonds.
2. It receives floating under the terms of the swap.
3. It pays  $3\%$  under the terms of the swap.

These three sets of cash flows net out to an interest rate inflow of floating minus 30 basis points. The swap has therefore transformed an asset earning  $2.7\%$  into an asset earning floating minus 30 basis points.

Consider next the swap entered into by Intel in Figure 7.4. The swap could have the effect of transforming an asset earning a floating rate of interest into an asset earning a fixed rate of interest. Suppose that Intel has an investment of 100 million that yields floating minus 20 basis points. After it has entered into the swap, it is in the position shown in Figure 7.6. It has three sets of cash flows:

1. It receives floating minus 20 basis points on its investment.
2. It pays floating under the terms of the swap.
3. It receives  $2.97\%$  under the terms of the swap.

These three sets of cash flows net out to an interest rate inflow of  $2.77\%$ . Thus, one possible use of the swap for Intel is to transform an asset earning floating minus 20 basis points into an asset earning  $2.77\%$ .

# 7.4 THE ORGANIZATION OF TRADING

Financial institutions such as Citigroup act as market makers and provide bid and ask quotes for the fixed rates that they are prepared to exchange in swaps. Table 7.4 shows the full set of quotes that might be made at the time of the trades considered in Figures 7.3 to 7.6. The bid quote is the fixed rate that applies when the financial

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/a28dbe23981a7918558a1a5460ea2775c4e6abda067b5e4e72c7ece3a4259591.jpg)

Figure 7.6 Intel uses the swap in Figure 7.3 to convert a floating-rate investment into a fixed-rate investment.

Table 7.4 Example of bid and ask fixed rates in the swap market for a swap where payments are exchanged quarterly (percent per annum).

<table><tr><td>Maturity (years)</td><td>Bid</td><td>Ask</td><td>Swap rate</td></tr><tr><td>2</td><td>2.97</td><td>3.00</td><td>2.985</td></tr><tr><td>3</td><td>3.05</td><td>3.08</td><td>3.065</td></tr><tr><td>4</td><td>3.15</td><td>3.19</td><td>3.170</td></tr><tr><td>5</td><td>3.26</td><td>3.30</td><td>3.280</td></tr><tr><td>7</td><td>3.40</td><td>3.44</td><td>3.420</td></tr><tr><td>10</td><td>3.48</td><td>3.52</td><td>3.500</td></tr></table> institution is paying the fixed rate and receiving floating. The ask quote is the fixed rate that applies when it is receiving the fixed rate and paying floating. The average of the bid and ask rates is known as the swap rate and is shown in the final column. The spread between the bid and the ask (three to four basis points in the table) compensates the market maker for its costs.

Occasionally a market maker may be lucky enough to enter into offsetting trades with two different nonfinancial companies. Usually, however, when it enters into a trade with a nonfinancial company, it must enter into the opposite trade with another financial institution to hedge its risk. This is less profitable. Also, as explained in earlier chapters, the financial crisis of 2008 led to an international agreement that standard swaps between financial institutions be traded on electronic platforms and cleared though central counterparties (CCPs). This agreement would not apply to the swap in Figures 7.4 and 7.6 because Intel is a nonfinancial company, but it would apply to Citigroup's hedging trade with another financial institution. Whereas the trade with Intel might require no collateral to be posted, the hedging trade with another financial institution would require both initial and variation margin because it would be cleared through a CCP. This point is discussed further in Chapter 9.

# Day Count Issues

We discussed day count conventions in Section 6.1. The day count conventions affect payments on a swap and mean that some of the numbers calculated in the examples we have given earlier in this chapter are only approximately correct. Floating reference rates such as SOFR and U.S. LIBOR are quoted on an actual/360 basis. The first floating payment in Table 7.1 is based on a rate of  $2.2\%$ . Because there are 92 days between March 8, 2022, and June 8, 2022, the floating payment that reflects an actual/360 day count is

$$
\$ 100,000,000 \times 0.022 \times \frac {92}{360} = \$ 562,222
$$

In general, it is  $LRn / 360$  where  $L$  is the principal,  $R$  is the floating rate, and  $n$  is the number of days in the accrual period.

The fixed rate in a swap is also quoted with a day count convention. Popular fixed-rate day counts are actual/365 and 30/360. This means that the fixed and floating rates are often not directly comparable because one applies to 360 days while the other applies to a full year. Also, in the case of actual/365, the fixed-rate cash flows in a swap will vary slightly according to the number of days in the applicable period.

Business Snapshot 7.1 Extract from Hypothetical Swap Confirmation

<table><tr><td>Trade date</td><td>1-March-2022</td></tr><tr><td>Effective date</td><td>8-March-2022</td></tr><tr><td>Business day convention (all dates)</td><td>Following business day</td></tr><tr><td>Holiday calendar</td><td>U.S.</td></tr><tr><td>Termination date</td><td>8-March-2024</td></tr><tr><td>Fixed amounts</td><td></td></tr><tr><td>Fixed-rate payer</td><td>Apple Inc.</td></tr><tr><td>Fixed-rate notional principal</td><td>USD 100 million</td></tr><tr><td>Fixed rate</td><td>3.0\% per annum</td></tr><tr><td>Fixed-rate day count convention</td><td>Actual/365</td></tr><tr><td>Fixed-rate payment dates</td><td>Each 8-March, 8-June, 8-September, and 8-December commencing 8-June, 2022, up to and including 8-March, 2024</td></tr><tr><td>Floating amounts</td><td></td></tr><tr><td>Floating-rate payer</td><td>Citigroup Inc.</td></tr><tr><td>Floating-rate notional principal</td><td>USD 100 million</td></tr><tr><td>Floating rate</td><td>3-month SOFR reference rate</td></tr><tr><td>Floating-rate day count convention</td><td>Actual/360</td></tr><tr><td>Floating-rate payment dates</td><td>Each 8-March, 8-June, 8-September, and 8-December commencing 8-June, 2022, up to and including 8-March, 2024</td></tr></table>

For ease of exposition, we will ignore day count issues in our valuations in this chapter.

# Confirmations

When swaps are traded bilaterally a legal agreement, known as a confirmation, is signed by representatives of the two parties. The drafting of confirmations has been facilitated by the work of the International Swaps and Derivatives Association (ISDA) in New York. This organization has produced a number of Master Agreements that are designed to cover all over-the-counter derivative transactions between two parties and define what happens in the event of default by either side, collateral requirements (if any), and so on. Business Snapshot 7.1 shows a possible extract from the confirmation for the swap between Apple and the Citigroup in Figure 7.1. Almost certainly, the full confirmation would state that the provisions of an ISDA Master Agreement apply to the contract.

The confirmation specifies that the following business day convention is to be used and that the U.S. calendar determines which days are business days and which days are holidays. This means that, if a payment date falls on a weekend or a U.S. holiday, the payment is made on the next business day.[2]

# 7.5 THE COMPARATIVE-ADVANTAGE ARGUMENT

An explanation commonly put forward to explain the popularity of swaps concerns comparative advantages. In this context, a comparative advantage is advantage that leads to company being treated more favorably in one debt market than in another debt market. Consider the use of an interest rate swap to transform a liability. Some companies, it is argued, have a comparative advantage when borrowing in fixed-rate markets, whereas other companies have a comparative advantage when borrowing in floating-rate markets. To obtain a new loan, it makes sense for a company to go to the market where it has a comparative advantage. As a result, the company may borrow fixed when it wants floating, or borrow floating when it wants fixed. The swap is used to transform a fixed-rate loan into a floating-rate loan, and vice versa.

# Illustration

Suppose that two companies, AAACorp and BBBCorp, both wish to borrow 10 million for five years and have been offered the rates shown in Table 7.5. AAACorp has a AAA credit rating; BBBCorp has a BBB credit rating. We assume that BBBCorp wants to borrow at a fixed rate of interest, whereas AAACorp wants to borrow at a floating rate. Since BBBCorp has a worse credit rating than AAACorp, it pays a higher rate of interest in both fixed and floating markets.

A key feature of the rates offered to AAACorp and BBBCorp is that the difference between the two fixed rates is greater than that between the two floating rates. BBBCorp pays  $1.2\%$  more than AAACorp in fixed-rate markets and only  $0.7\%$  more than AAACorp in floating-rate markets. BBBCorp appears to have a comparative advantage in floating-rate markets, whereas AAACorp appears to have a comparative advantage in fixed-rate markets. It is this apparent anomaly that can lead to a swap being negotiated. AAACorp borrows fixed-rate funds at  $4\%$  per annum. BBBCorp borrows funds at floating plus  $0.6\%$  per annum. They then enter into a swap agreement to ensure that AAACorp ends up with floating-rate funds and BBBCorp with fixed-rate funds.

To understand how the swap might work, we first assume (somewhat unrealistically) that AAACorp and BBBCorp get in touch with each other directly. The sort of swap

Table 7.5 Borrowing rates that provide a basis for the comparative-advantage argument. "Floating" is the floating reference rate.

<table><tr><td></td><td>Fixed rate</td><td>Floating rate</td></tr><tr><td>AAACorp</td><td>4.0\%</td><td>Floating -0.1\%</td></tr><tr><td>BBBCorp</td><td>5.2\%</td><td>Floating +0.6\%</td></tr></table> they might negotiate is shown in Figure 7.7. AAACorp agrees to pay BBBCorp interest at a floating reference rate on  \$10 million. In return, BBBCorp agrees to pay AAACorp interest at a fixed rate of 4.35\%$  per annum on 10 million.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/d5429ebac5dcf8d7e8e6dbad354d2563e880d7d309b2bdd402c404a2602347ee.jpg)

Figure 7.7 Swap agreement between AAACorp and BBBCorp when rates in Table 7.5 apply.

AAACorp has three sets of interest rate cash flows:

1. It pays  $4\%$  per annum to outside lenders.
2. It receives  $4.35\%$  per annum from BBBCorp.
3. It pays floating to BBBCorp.

The net effect of the three cash flows is that AAACorp pays floating minus  $0.35\%$  per annum. This is  $0.25\%$  per annum less than it would pay if it went directly to floating-rate markets.

BBBCorp also has three sets of interest rate cash flows:

1. It pays floating  $+0.6\%$  per annum to outside lenders.
2. It receives floating from AAACorp.
3. It pays  $4.35\%$  per annum to AAACorp.

The net effect of the three cash flows is that BBBCorp pays  $4.95\%$  per annum. This is  $0.25\%$  per annum less than it would pay if it went directly to fixed-rate markets.

In this example, the swap has been structured so that the net gain to both sides is the same,  $0.25\%$ . This need not be the case. However, the total apparent gain from this type of interest rate swap arrangement is always  $a - b$ , where  $a$  is the difference between the interest rates facing the two companies in fixed-rate markets, and  $b$  is the difference between the interest rates facing the two companies in floating-rate markets. In this case,  $a = 1.2\%$  and  $b = 0.7\%$ , so that the total gain is  $0.5\%$ .

If the transaction between AAACorp and BBBCorp were brokered by a financial institution, an arrangement such as that shown in Figure 7.8 might result. In this case, AAACorp ends up borrowing at floating  $-0.33\%$ , BBBCorp ends up borrowing at  $4.97\%$ , and the financial institution earns a spread of four basis points per year. The gain to AAACorp is  $0.23\%$ ; the gain to BBBCorp is  $0.23\%$ ; and the gain to the financial institution is  $0.04\%$ . The total gain to all three parties is  $0.5\%$  as before.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/debcd243193bf58e2250a21c9415c7d5544e7e6192eea2d6e993180566662226.jpg)

Figure 7.8 Swap agreement between AAACorp and BBBCorp when rates in Table 7.5 apply and swap is brokered by a financial institution.

# Criticism of the Comparative-Advantage Argument

The comparative-advantage argument we have just outlined for explaining the attractiveness of interest rate swaps is open to question. Why in Table 7.5 should the spreads between the rates offered to AAACorp and BBBCorp be different in fixed and floating markets? Now that the interest rate swap market has been in existence for a long time, we might reasonably expect these types of differences to have been arbitraged away.

The reason that spread differentials appear to exist is due to the nature of the contracts available to companies in fixed and floating markets. Suppose that the floating reference rate is a three-month rate. The  $4.0\%$  and  $5.2\%$  rates available to AAACorp and BBBCorp in fixed-rate markets are five-year rates (for example, the rates at which the companies can issue five-year fixed-rate bonds). The rates offered in floating-rate markets are three-month rates. In the floating-rate market, the lender usually has the opportunity to review the spread above the floating reference rate every time rates are reset. (In our example, rates are reset quarterly.) If the creditworthiness of AAACorp or BBBCorp has declined, the lender has the option of increasing the spread over the floating reference rate that is charged. In extreme circumstances, the lender can refuse to continue the loan. The providers of fixed-rate financing do not have the option to change the terms of the loan in this way.[5]

The spreads between the rates offered to AAACorp and BBBCorp are a reflection of the extent to which BBBCorp is more likely to default than AAACorp. During the next three months, there is very little chance that either AAACorp or BBBCorp will default. As we look further ahead, default statistics show that on average the probability of a default by a company with a BBB credit rating increases faster than the probability of a default by a company with a AAA credit rating. This is why the spread between the five-year rates is greater than the spread between the three-month floating rates.

After negotiating a loan at floating  $+0.6\%$  and entering into the swap shown in Figure 7.8, BBBCorp appears to obtain a fixed-rate loan at  $4.97\%$ . The arguments just presented show that this is not really the case. In practice, the rate paid is  $4.97\%$  only if BBBCorp can continue to borrow floating-rate funds at a spread of  $0.6\%$  over the floating reference rate. If, for example, the credit rating of BBBCorp declines so that the floating-rate loan is rolled over at floating  $+1.6\%$ , the rate paid by BBBCorp increases to  $5.97\%$ . The market expects that BBBCorp's spread over the floating reference rate will on average rise during the swap's life. BBBCorp's expected average borrowing rate when it enters into the swap is therefore greater than  $4.97\%$ .

The swap in Figure 7.8 locks in  $0.33\%$  below the floating reference rate for AAACorp for the next five years, not just for the next three months. This appears to be a good deal for AAACorp. The downside is that unless collateral is posted it is bearing the risk of a default by the financial institution. If it borrowed floating-rate funds in the usual way, it would not be bearing this risk.

# 7.6 VALUATION OF INTEREST RATE SWAPS

We now move on to discuss the valuation of interest rate swaps. An interest rate swap is worth close to zero when it is first initiated. After it has been in existence for some time, its value may be positive or negative.

Each exchange of payment in a swap can be regarded as a forward rate agreement (FRA). As shown at the end of Section 4.9, an FRA can be valued by assuming that forward rates are realized. Because it is nothing more than a portfolio of FRAs, an interest rate swap can also be valued by assuming that forward rates are realized. The procedure is:

1. Calculate forward rates for each of the unknown floating rates that will determine swap cash flows.
2. Calculate the swap cash flows on the assumption that unknown floating rates will equal forward rates.
3. Discount the swap cash flows at the risk-free rate.

The value of a swap therefore requires a calculation of forward rates corresponding to all floating payments and risk-free rates to discount the net cash flows from payments dates to the present. We explained how to calculate a risk-free zero curve from Is rates earlier in the chapter. This provides the necessary risk-free rates. Furthermore, if the swap is an Is, the relevant forward rates can be calculated from this risk-free zero curve using the formulas in Section 4.8. Note that the first rate required is not really a forward rate. It is a blend of one-day rates already observed and the zero rate that corresponds to the remaining one-day rates in the period.

In the case of a LIBOR swap, the necessary forward rates are estimated from Eurodollar futures and swap rates (assuming these are available). Eurodollar futures provide a direct estimate of forward rates (although a convexity adjustment might be necessary as discussed in Chapter 6). In the case of swap rates, we use that fact that swap rates such as those in Table 7.4 define swaps that are worth zero. This provides equations that must be satisfied by forward rates. With appropriate interpolation a complete forward curve consistent with the swaps rates can be obtained. Note that the first LIBOR payment has generally already been determined and does not require a forward rate calculation.

# Example 7.1

Suppose that some time ago a financial institution entered into a swap where it agreed to make semiannual payments at a rate of  $3\%$  per annum and receive the SOFR six-month reference rate on a notional principal of \$100 million. The swap now has a remaining life of 1.2 years. Payments will therefore be exchanged at 0.2, 0.7, and 1.2 years. Assume the risk-free rates with continuous compounding (calculated from SOFR) for 0.2, 0.7, and 1.2 years are  $2.8\%$ ,  $3.2\%$ , and  $3.4\%$ , respectively. Assume also that the continuously compounded risk-free rate observed for the last 0.3 years (which contain  $60\%$  of the days that will determine the exchange at 0.2 years) is  $2.3\%$ . The floating rate for the exchange at 0.2 years is assumed to be  $0.6 \times 2.3\% + 0.4 \times 2.8\%$ , or  $2.50\%$ . The floating rate for exchange at 0.7 years is the forward rate for the period between 0.2 and 0.7 years. This is  $3.36\%$  with continuous compounding. Similarly, the floating rate for the exchange at 1.2 years is the forward rate for the period between 0.7 years and 1.2 years. This is  $3.68\%$  with continuous compounding.

The swap is therefore valued assuming that the three floating rates are  $2.50\%$ ,  $3.36\%$ , and  $3.68\%$  with continuous compounding. With semiannual compounding, these rates become  $2.516\%$ ,  $3.388\%$ , and  $3.714\%$ . The calculations for valuing the swap are therefore as indicated in the following table (all cash flows are in millions of dollars):

<table><tr><td>Time (years)</td><td>Fixed cash flow</td><td>Floating cash flow</td><td>Net cash flow</td><td>Discount factor</td><td>Present value of net cash flow</td></tr><tr><td>0.2</td><td>-1.500</td><td>+1.258</td><td>-0.242</td><td>0.9944</td><td>-0.241</td></tr><tr><td>0.7</td><td>-1.500</td><td>+1.694</td><td>+0.194</td><td>0.9778</td><td>+0.190</td></tr><tr><td>1.2</td><td>-1.500</td><td>+1.857</td><td>+0.357</td><td>0.9600</td><td>+0.343</td></tr><tr><td>Total</td><td></td><td></td><td></td><td></td><td>+0.292</td></tr></table>

Consider,forexample,the0.7yearrow. The fixedcash flowis -0.5 × 0.03 × 100, or -\$1.500 million. The floating cash flow, assuming forward rates are realized, is 0.5 × 0.03388 × 100, or \$1.694 million. The net cash flow is therefore \$0.194 million. The discount factor is e-0.032×0.7 = 0.9778, so that the present value is \$0.194 × 0.9778 = 0.190.

The value of the swap is obtained by summing the present values. It is 0.292 million. (Note that these calculations are approximate because they do not take account of holiday calendars and day count conventions.)

# 7.7 HOW THE VALUE CHANGES THROUGH TIME

The fixed rate in an interest rate swap is chosen so that the swap is worth zero initially. This does not mean that each cash flow exchange in the swap is worth zero initially. Instead, it means that the sum of the values of the cash flow exchanges is zero. Figure 7.9 shows two alternative situations in swap where there are ten cash-flow exchanges.

Figure 7.9a would arise in the situation where the term structure of interest rates is upward sloping and a fixed rate of interest is being received while the floating rate is paid. The upward-sloping term structure produces forward rates that increase with maturity. As a result the value of the exchanges decreases with maturity. Because the sum of the exchanges is zero, it follows that the early exchanges must have a positive value while the later ones have a negative value. If the term structure of rates is upward sloping and the fixed rate is being paid while the floating rate is received, a similar argument shows that the early exchanges will have a negative value while the later exchanges have a positive value. This is the situation in Figure 7.9b. When the term structure is downward sloping, the position is reversed, so that Figure 7.9a shows the situation where the fixed rate is paid and Figure 7.9b where the fixed rate is received.

These results can be used to determine whether the swap is expected to have a positive or negative value in the future. In Figure 7.9a the value of the swap is expected to become negative with the passage of time because the early positive-value exchanges will have been made. Similarly, in Figure 7.9b the value of the swap is expected to become positive with the passage of time because the early negative-value exchanges will have been made.[6]

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/4f9a78ea56a3c6c1bf850f732e07a108ceb94829e66a5809aefeca30f8d820d9.jpg)

Figure 7.9 Two possible patterns for the value of the cash-flow exchanges in an interest rate swap.

(a)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/71dbbd04790d43ffb0166c6d65041600245fc5a11fbc8db86fffe17d31519368.jpg)

(b)

# 7.8 FIXED-FOR-FIXED CURRENCY SWAPS

Another popular type of swap is a fixed-for-fixed currency swap. This involves exchanging principal and interest payments at a fixed rate in one currency for principal and interest payments at a fixed rate in another currency.

A currency swap agreement requires the principal to be specified in each of the two currencies. The principal amounts in each currency are usually exchanged at the beginning and at the end of the life of the swap. Usually the principal amounts are chosen to be approximately equivalent using the exchange rate at the swap's initiation. But when they are exchanged at the end of the life of the swap, their values may be quite different.

# Illustration

Consider a hypothetical five-year currency swap agreement between British Petroleum and Barclays entered into on February 1, 2022. We suppose that British Petroleum pays a fixed rate of interest of  $3\%$  in dollars to Barclays and receives a fixed rate of interest of

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/dfbeb7e4c68dc101426d9150843f40849a97453b3cac129691b8167130d1bf0e.jpg)

Figure 7.10 A currency swap.

4\% in British pounds (sterling) from Barclays. Interest rate payments are made once a year and the principal amounts are  \$15 million and\$ 10 million. This is termed a fixed-for-fixed currency swap because the interest rate in both currencies is fixed. The swap is shown in Figure 7.10. Initially, the principal amounts flow in the opposite direction to the arrows in Figure 7.10. The interest payments during the life of the swap and the final principal payment flow in the same direction as the arrows. Thus, at the outset of the swap, British Petroleum pays £10 million and receives \$15 million. Each year during the life of the swap contract, British Petroleum receives £0.40 million (= 4\% of £10 million) and pays \$0.45 million (= 3\% of \$15 million). At the end of the life of the swap, it pays \$15 million and receives £10 million. These cash flows are shown in Table 7.6. The cash flows to Barclays are the opposite to those shown.

# Use of a Currency Swap to Transform Liabilities and Assets

A swap such as the one just considered can be used to transform borrowings in one currency to borrowings in another currency. Suppose that British Petroleum can borrow  \$10 million at 4\%$  interest. The swap has the effect of transforming this loan into one where it has borrowed 15 million at  $3\%$  interest. The initial exchange of principal converts the amount borrowed from sterling to dollars. The subsequent exchanges in the swap have the effect of swapping the interest and principal payments from sterling to dollars.

The swap can also be used to transform the nature of assets. Suppose that British Petroleum can invest 15 million to earn 3\% in U.S. dollars for the next five years, but feels that sterling will strengthen (or at least not depreciate) against the dollar and prefers a U.K.-denominated investment. The swap has the effect of transforming the U.S. investment into a \mathbf{£}10 million investment in the U.K. yielding 4\%.

Table 7.6 Cash flows to British Petroleum in currency swap.

<table><tr><td>Date</td><td>Dollar cash flow (millions)</td><td>Sterling cash flow (millions)</td></tr><tr><td>February 1, 2022</td><td>+15.00</td><td>-10.00</td></tr><tr><td>February 1, 2023</td><td>-0.45</td><td>+0.40</td></tr><tr><td>February 1, 2024</td><td>-0.45</td><td>+0.40</td></tr><tr><td>February 1, 2025</td><td>-0.45</td><td>+0.40</td></tr><tr><td>February 1, 2026</td><td>-0.45</td><td>+0.40</td></tr><tr><td>February 1, 2027</td><td>-15.45</td><td>+10.40</td></tr></table>

# Comparative Advantage

Currency swaps can be motivated by comparative advantage. To illustrate this, we consider another hypothetical example. Suppose the five-year fixed-rate borrowing costs to General Electric and Qantas Airways in U.S. dollars (USD) and Australian dollars (AUD) are as shown in Table 7.7. The data in the table suggest that Australian rates are higher than U.S. interest rates. Also, General Electric is more creditworthy than Qantas Airways, because it is offered a more favorable rate of interest in both currencies. From the viewpoint of a swap trader, the interesting aspect of Table 7.7 is that the spreads between the rates paid by General Electric and Qantas Airways in the two markets are not the same. Qantas Airways pays  $2\%$  more than General Electric in the USD market and only  $0.4\%$  more than General Electric in the AUD market.

This situation is analogous to that in Table 7.5. General Electric has a comparative advantage in the USD market, whereas Qantas Airways has a comparative advantage in the AUD market. In Table 7.5, where a plain vanilla interest rate swap was considered, we argued that comparative advantages are largely illusory. Here we are comparing the rates offered in two different currencies, and it is more likely that the comparative advantages are genuine. One possible source of comparative advantage is tax. General Electric's position might be such that USD borrowings lead to lower taxes on its worldwide income than AUD borrowings. Qantas Airways' position might be the reverse. (Note that we assume that the interest rates in Table 7.7 have been adjusted to reflect these types of tax advantages.)

We suppose that General Electric wants to borrow 20 million AUD and Qantas Airways wants to borrow 15 million USD and that the current exchange rate (USD per AUD) is 0.7500. This creates a perfect situation for a currency swap. General Electric and Qantas Airways each borrow in the market where they have a comparative advantage; that is, General Electric borrows USD whereas Qantas Airways borrows AUD. They then use a currency swap to transform General Electric's loan into a AUD loan and Qantas Airways' loan into a USD loan.

As already mentioned, the difference between the dollar interest rates is  $2\%$ , whereas the difference between the AUD interest rates is  $0.4\%$ . By analogy with the interest rate swap case, we expect the total gain to all parties to be  $2.0 - 0.4 = 1.6\%$  per annum.

There are many ways in which the swap can be arranged. Figure 7.11 shows one way a swap might be brokered by a financial institution. General Electric borrows USD and Qantas Airways borrows AUD. The effect of the swap is to transform the USD interest rate of  $5\%$  per annum to an AUD interest rate of  $6.9\%$  per annum for General Electric. As a result, General Electric is  $0.7\%$  per annum better off than it would be if it went directly to AUD markets. Similarly, Qantas exchanges an AUD loan at  $8\%$  per annum for a USD loan at  $6.3\%$  per annum and ends up  $0.7\%$  per

Table 7.7 Borrowing rates providing basis for currency swap.

<table><tr><td></td><td>USD*</td><td>AUD*</td></tr><tr><td>General Electric</td><td>5.0\%</td><td>7.6\%</td></tr><tr><td>Qantas Airways</td><td>7.0\%</td><td>8.0\%</td></tr><tr><td colspan="3">*Quoted rates have been adjusted to reflect the differential impact of taxes.</td></tr></table> annum better off than it would be if it went directly to USD markets. The financial institution gains  $1.3\%$  per annum on its USD cash flows and loses  $1.1\%$  per annum on its AUD flows. If we ignore the difference between the two currencies, the financial institution makes a net gain of  $0.2\%$  per annum. As predicted, the total gain to all parties is  $1.6\%$  per annum.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/4aad363549509bf7e2dcf8870d06e42c4eb511fa8260c9553607fc1e6d4a46ae.jpg)

Figure 7.11 A currency swap motivated by comparative advantage.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/2345533c01a18d9afea18623d5206f413fe714798ee8bb4de692739b7ef02d74.jpg)

Figure 7.12 Alternative arrangement for currency swap: Qantas Airways bears some foreign exchange risk.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/f3930c7752e669ed9fc9e2d9fcd9ffa687d84546fc6b6e0ec9598c516e144ea6.jpg)

Figure 7.13 Alternative arrangement for currency swap: General Electric bears some foreign exchange risk.

Each year the financial institution makes a gain of USD 195,000 ( $= 1.3\%$  of 15 million) and incurs a loss of AUD 220,000 ( $= 1.1\%$  of 20 million). The financial institution can avoid any foreign exchange risk by buying AUD 220,000 per annum in the forward market for each year of the life of the swap, thus locking in a net gain in USD.

It is possible to redesign the swap so that the financial institution does not need to hedge. Figures 7.12 and 7.13 present two alternatives. These alternatives are unlikely to be used in practice because they do not lead to General Electric and Qantas being free of foreign exchange risk. In Figure 7.12, Qantas bears some foreign exchange risk because it pays  $1.1\%$  per annum in AUD and pays  $5.2\%$  per annum in USD. In Figure 7.13, General Electric bears some foreign exchange risk because it receives  $1.1\%$  per annum in USD and pays  $8\%$  per annum in AUD.

# 7.9 VALUATION OF FIXED-FOR-FIXED CURRENCY SWAPS

Each exchange of payments in a fixed-for-fixed currency swap is a forward contract. As shown in Section 5.7, forward foreign exchange contracts can be valued by assuming that forward exchange rates are realized. A fixed-for-fixed currency swap can therefore be valued assuming that forward rates are realized.

# Example 7.2

Suppose that the term structure of risk-free interest rates is flat in both Japan and the United States. The Japanese rate is  $1.5\%$  per annum and the U.S. rate is  $2.5\%$  per annum (both with continuous compounding). A financial institution has entered into a currency swap in which it receives  $3\%$  per annum in yen and pays  $4\%$  per annum in dollars once a year. The principals in the two currencies are 10 million and 1,200 million yen. The swap will last for another three years, and the current exchange rate is 110 yen per dollar. The calculations for valuing the swap as the sum of forward foreign exchange contracts are summarized in the following table (all amounts are in millions):

<table><tr><td>Time (years)</td><td>Dollar cash flow</td><td>Yen cash flow</td><td>Forward exchange rate</td><td>Dollar value of yen cash flow</td><td>Net cash flow</td><td>Present value</td></tr><tr><td>1</td><td>-0.4</td><td>+36</td><td>0.009182</td><td>0.3306</td><td>-0.0694</td><td>-0.0677</td></tr><tr><td>2</td><td>-0.4</td><td>+36</td><td>0.009275</td><td>0.3339</td><td>-0.0661</td><td>-0.0629</td></tr><tr><td>3</td><td>-10.4</td><td>+1236</td><td>0.009368</td><td>11.5786</td><td>+1.1786</td><td>+1.0934</td></tr><tr><td>Total</td><td></td><td></td><td></td><td></td><td></td><td>+0.9629</td></tr></table>

The financial institution pays 0.04 \times 10 = \0.4 million dollars and receives 1,200 \times 0.03 = 36 million yen each year. In addition, the dollar principal of \10 million is paid and the yen principal of 1,200 million is received at the end of year 3. The current spot rate is 1/110 = 0.009091 dollar per yen. In this case, r = 2.5\% and r_f = 1.5\% so that the one-year forward exchange rate is, from equation (5.9), 0.009091e^{(0.025 - 0.015)\times 1} = 0.009182. The twoand three-year forward exchange rates in the table are calculated similarly. The forward contracts underlying the swap can be valued by assuming that the forward exchange rates are realized. If the one-year forward exchange rate is realized, the value of yen cash flow in year 1 will be 36 \times 0.009182 = 0.3306 million dollars and the net cash flow at the end of year 1 will be 0.3306 - 0.4 = -0.0694 million dollars. This has a present value of -0.0694e^{-0.025\times 1} = -0.0677 million dollars. This is the value of the forward contract corresponding to the exchange of cash flows at the end of year 1. The value of the other forward contracts are calculated similarly. As shown in the table, the total value of the forward contracts is \0.9629 million.

The value of a currency swap is normally zero when it is first negotiated. If the two principals are worth exactly the same using the exchange rate at the start of the swap, the value of the swap is also zero immediately after the initial exchange of principal. However, as in the case of interest rate swaps, this does not mean that each of the individual forward contracts underlying the swap has zero value. It can be shown that when interest rates in two currencies are significantly different, the payer of the high-interest-rate currency is in the position where the forward contracts corresponding to the early exchanges of cash flows have negative values, and the forward contract corresponding to final exchange of principals has a positive value. The payer of the low-interest-rate currency is likely to be in the opposite position; that is, the early exchanges of cash flows have positive values and the final exchange has a negative value.

For the payer of the low-interest-rate currency, the swap will tend to have a negative value during most of its life. The forward contracts corresponding to the early exchanges of payments have positive values, and once these exchanges have taken place, there is a tendency for the remaining forward contracts to have, in total, a negative value. For the payer of the high-interest-rate currency, the reverse is true. The value of the swap will tend to be positive during most of its life. Results of this sort are important when the credit risk in bilaterally cleared transactions is considered.

# Valuation in Terms of Bond Prices

A fixed-for-fixed currency swap can also be valued in a straightforward way as the difference between two bonds. If we define  $V_{\mathrm{swap}}$  as the value in U.S. dollars of an outstanding swap where dollars are received and a foreign currency is paid, that is,

$$
V _ {\text {s w a p}} = B _ {D} - S _ {0} B _ {F}
$$ where  $B_{F}$  is the value, measured in the foreign currency, of the bond defined by the foreign cash flows on the swap and  $B_{D}$  is the value of the bond defined by the domestic cash flows on the swap, and  $S_{0}$  is the spot exchange rate (expressed as number of dollars per unit of foreign currency). The value of a swap can therefore be determined from the term structure of interest rates in the two currencies and the spot exchange rate.


Similarly, the value of a swap where the foreign currency is received and dollars are paid is

$$

V _ {\text {s w a p}} = S _ {0} B _ {F} - B _ {D}

$$

# Example 7.3

Consider again the situation in Example 7.2. The term structure of risk-free interest rates is flat in both Japan and the United States. The Japanese rate is  $1.5\%$  per annum and the U.S. rate is  $2.5\%$  per annum (both with continuous compounding). A financial institution has entered into a currency swap in which it receives  $3\%$  per annum in yen and pays  $4\%$  per annum in dollars once a year. The principals in the two currencies are  \$10 million and 1,200 million yen. The swap will last for another three years, and the current exchange rate is 110 yen =\$ 1. The calculations for valuing the swap in terms of bonds are summarized in the following table (all amounts are in millions):

<table><tr><td>Time (years)</td><td>Cash flows on dollar bond ($)</td><td>Present value ($)</td><td>Cash flows on yen bond (yen)</td><td>Present value (yen)</td></tr><tr><td>1</td><td>0.4</td><td>0.3901</td><td>36</td><td>35.46</td></tr><tr><td>2</td><td>0.4</td><td>0.3805</td><td>36</td><td>34.94</td></tr><tr><td>3</td><td>10.4</td><td>9.6485</td><td>1,236</td><td>1,181.61</td></tr><tr><td>Total</td><td></td><td>10.4191</td><td></td><td>1,252.01</td></tr></table>

The cash flows from the dollar bond underlying the swap are as shown in the second column. The present value of the cash flows using the dollar discount rate of  $2.5\%$  are shown in the third column. The cash flows from the yen bond underlying the swap are shown in the fourth column. The present value of the cash flows using the yen discount rate of  $1.5\%$  are shown in the final column of the table. The value of the dollar bond,  $B_{D}$ , is 10.4191 million dollars. The value of the yen bond is 1,252.01 million yen. The value of the swap in dollars is therefore  $(1,252.01 / 110) - 10.4191 = 0.9629$  million. This is in agreement with the calculation in Example 7.2.

# 7.10 OTHER CURRENCY SWAPS

Two other popular currency swaps are:

1. Fixed-for-floating where a floating interest rate in one currency is exchanged for a fixed interest rate in another currency
2. Floating-for-floating where a floating interest rate in one currency is exchanged for a floating interest rate in another currency.

An example of the first type of swap would be an exchange where a floating rate on a principal of £7 million is paid and  $3\%$  on a principal of \$10 million is received with payments being made semiannually for 10 years. Similarly to a fixed-for-fixed currency swap, this would involve an initial exchange of principal in the opposite direction to the interest payments and a final exchange of principal in the same direction as the interest payments at the end of the swap's life. A fixed-for-floating swap can be regarded as a portfolio consisting of a fixed-for-fixed currency swap and a fixed-for-floating interest rate swap. For instance, the swap in our example can be regarded as (a) a swap where  $3\%$  on a principal of \$10 million is received and (say)  $4\%$  on a principal of £7 million is paid plus (b) an interest rate swap where  $4\%$  is received and floating is paid on a notional principal of £7 million.

To value the swap we are considering we can calculate the value of the dollar payments in dollars by discounting them at the dollar risk-free rate. We can calculate the value of the sterling payments by assuming that floating forward rates will be realized and discounting the cash flows at the sterling risk-free rate. The value of the swap is the difference between the values of the two sets of payments using current exchange rates.

An example of the second type of swap would be the exchange where floating on a principal of £7 million is paid and floating on a principal of \$10 million is received. As in the other cases we have considered, this would involve an initial exchange of principal in the opposite direction to the interest payments and a final exchange of principal in the same direction as the interest payments at the end of the swap's life. A floating-for-floating swap can be regarded as a portfolio consisting of a fixed-for-fixed currency swap and two interest rate swaps, one in each currency. For instance, the swap in our example can be regarded as (a) a swap where 3\% on a principal of \$10 million is received and 4\% on a principal of £7 million is paid plus (b) an interest rate swap where 4\% is received and floating is paid on a notional principal of £7 million plus (c) an interest rate swap where 3\% is paid and floating is received on a notional principal of 10 million.

A floating-for-floating swap can be valued by assuming that forward interest rates in each currency will be realized and discounting the cash flows at risk-free rates. The value of the swap is the difference between the values of the two sets of payments using current exchange rates.

# 7.11 CREDIT RISK

When swaps and other derivatives are cleared through a central counterparty there is very little credit risk. As has been explained, standard swap transactions between a nonfinancial corporation and a derivatives dealer can be cleared bilaterally. Both sides are then potentially subject to credit risk. Consider the bilaterally cleared transaction between Intel and Citigroup in Figure 7.4. This would be netted with all other bilaterally cleared derivatives between Intel and Citigroup. If Intel defaults when the net value of the outstanding transactions to Citigroup is greater than the collateral (if any) posted by Intel, Citigroup will incur a loss. Similarly, if Citigroup defaults when the net value of the outstanding transactions to Intel is greater than the collateral (if any) posted by Citigroup, Intel will incur a loss.

It is important to distinguish between the credit risk and market risk to a financial institution in any contract. The credit risk arises from the possibility that a loss will be incurred because of a default by the counterparty. The market risk arises from the possibility that market variables such as interest rates, equity prices, and exchange rates will move in such a way that the value of a contract to the financial institution becomes negative. Market risks can be hedged by entering into offsetting contracts; credit risks are less easy to hedge.

One of the more bizarre stories in swap markets is outlined in Business Snapshot 7.2. It concerns a British Local Authority, Hammersmith and Fulham, and shows that, in addition to bearing market risk and credit risk, banks trading swaps also sometimes bear legal risk.

# 7.12 CREDIT DEFAULT SWAPS

A swap which has grown in importance since the year 2000 is a credit default swap (CDS). This is a swap that allows companies to hedge credit risks in the same way that they have hedged market risks for many years. A CDS is like an insurance contract that pays off if a particular company or country defaults. The company or country is known as the reference entity. The buyer of credit protection pays an insurance premium, known as the CDS spread, to the seller of protection for the life of the contract or until the reference entity defaults. Suppose that the notional principal of the CDS is  \$100 million and the CDS spread for a five-year deal is 120 basis points. The insurance premium would be 120 basis points applied to\$ 100 million or 1.2 million per year. If the reference entity does not default during the five years, nothing is received in return for the insurance premiums. If reference entity does default and bonds issued by the reference entity are worth 40 cents per dollar of principal immediately after default, the

# Business Snapshot 7.2 The Hammersmith and Fulham Story

Between 1987 to 1989 the London Borough of Hammersmith and Fulham in Great Britain entered into about 600 interest rate swaps and related instruments with a total notional principal of about 6 billion pounds. The transactions appear to have been entered into for speculative rather than hedging purposes. The two employees of Hammersmith and Fulham that were responsible for the trades had only a sketchy understanding of the risks they were taking and how the products they were trading worked.

By 1989, because of movements in sterling interest rates, Hammersmith and Fulham had lost several hundred million pounds on the swaps. To the banks on the other side of the transactions, the swaps were worth several hundred million pounds. The banks were concerned about credit risk. They had entered into offsetting swaps to hedge their interest rate risks. If Hammersmith and Fulham defaulted they would still have to honor their obligations on the offsetting swaps and would take a huge loss.

What happened was something a little different from a default. Hammersmith and Fulham's auditor asked to have the transactions declared void because Hammersmith and Fulham did not have the authority to enter into the transactions. The British courts agreed. The case was appealed and went all the way to the House of Lords, then Britain's highest court. The final decision was that Hammersmith and Fulham did not have the authority to enter into the swaps, but that they ought to have the authority to do so in the future for risk management purposes. Needless to say, banks were furious that their contracts were overturned in this way by the courts.

seller of protection has to make a payment to the buyer of protection equal to \$60 million. The idea here is that, if the buyer of protection owned a portfolio of bonds issued by the reference entity with a principal of \$100 million, the insurance payoff would be sufficient to bring the value of the portfolio back up to 100 million.

Credit default swaps are discussed in more detail in Chapter 25.

# 7.13 OTHER TYPES OF SWAPS

Many other types of swaps are traded. We will discuss some of them in Chapter 34. At this stage we provide an overview.

# Variations on the Standard Interest Rate Swap

In fixed-for-floating interest rate swaps, the frequency of payments on the two sides can be different. For example, a three-month floating rate might be exchanged for a six-month fixed rate with the first being paid every three months and the second being paid every six months. Floating rates such as the commercial paper (CP) rate are occasionally used. Sometimes floating-for-floating interest rates swaps (known as basis swaps) are negotiated. For example, the three-month CP rate minus 10 basis points might be exchanged for an overnight reference rate with both being applied to the same principal. (This deal would allow a company to hedge its exposure when assets and liabilities are subject to different floating rates.)

The principal in a swap agreement can be varied throughout the term of the swap to meet the needs of a counterparty. In an amortizing swap, the principal reduces in a predetermined way. (This might be designed to correspond to the amortization schedule on a loan.) In a step-up swap, the principal increases in a predetermined way. (This might be designed to correspond to drawdowns on a loan agreement.) Forward swaps (sometimes referred to as deferred swaps) where the parties do not begin to exchange interest payments until some future date are also sometimes arranged. Sometimes swaps are negotiated where the principal to which the fixed payments are applied is different from the principal to which the floating payments are applied.

In a compounding swap, interest on one or both sides is compounded forward to the end of the life of the swap according to preagreed rules and there is only one payment date at the end of the life of the swap. In an accrual swap, the interest on one side of the swap accrues only when the floating reference rate is in a certain range.

# Quantos

Sometimes a rate observed in one currency is applied to a principal amount in another currency. One such deal would be where a U.S. floating rate is exchanged for a U.K. floating rate with both principals being applied to a principal of 10 million British pounds. This type of swap is referred to as a diff swap or a quanto.

# Equity Swaps

An equity swap is an agreement to exchange the total return (dividends and capital gains) realized on an equity index for either a fixed or a floating rate of interest. For example, the total return on the S&P 500 in successive six-month periods might be exchanged for  $3\%$  with both being applied to the same principal. Equity swaps can be used by portfolio managers to convert returns from a fixed or floating investment to the returns from investing in an equity index, and vice versa.

# Options

Sometimes there are options embedded in a swap agreement. For example, in an extendable swap, one party has the option to extend the life of the swap beyond the specified period. In a puttable swap, one party has the option to terminate the swap early. Options on swaps, or swaptions, are also available. These provide one party with the right at a future time to enter into a swap where a predetermined fixed rate is exchanged for floating.

# Commodity, Volatility, and Other Swaps

Commodity swaps are in essence a series of forward contracts on a commodity with different maturity dates and the same delivery prices. In a volatility swap, there are a series of time periods. At the end of each period, one side pays a preagreed volatility while the other side pays the historical volatility realized during the period. Both volatilities are multiplied by the same notional principal in calculating payments.

Swaps are limited only by the imagination of financial engineers and the desire of corporate treasurers and fund managers for exotic structures. In Chapter 34 we will describe the famous  $5/30$  swap entered into between Procter and Gamble and Bankers

Trust where payments depended in a complex way on the 30-day commercial paper rate, a 30-year Treasury bond price, and the yield on a 5-year Treasury bond.

# SUMMARY

The two most common types of swaps are interest rate swaps and currency swaps. In an interest rate swap, one party agrees to pay the other party interest at a fixed rate on a notional principal for a number of years. In return, it receives interest at a floating rate on the same notional principal for the same period of time. In a currency swap, one party agrees to pay interest on a principal amount in one currency. In return, it receives interest on a principal amount in another currency.

Principal amounts are not exchanged in an interest rate swap. In a currency swap, principal amounts are usually exchanged at both the beginning and the end of the life of the swap. For a party paying interest in the foreign currency, the foreign principal is received, and the domestic principal is paid at the beginning of the life of the swap. At the end of the life of the swap, the foreign principal is paid and the domestic principal is received.

An interest rate swap can be used to transform a floating-rate loan into a fixed-rate loan, or vice versa. It can also be used to transform a floating-rate investment to a fixed-rate investment, or vice versa. A currency swap can be used to transform a loan in one currency into a loan in another currency. It can also be used to transform an investment denominated in one currency into an investment denominated in another currency.

The interest rate and currency swaps considered in main part of the chapter can be regarded portfolios of forward contracts. They can be valued by assuming the forward interest rates and exchange rates observed in the market today will occur in the future.

# FURTHER READING

Alm, J., and F. Lindskog, "Foreign Currency Interest Rate Swaps in Asset-Liability Management for Insurers," European Actuarial Journal, 3 (2013): 133-58.
Corb, H. Interest Rate Swaps and Other Derivatives. New York: Columbia University Press, 2012.
Flavell, R. Swaps and Other Derivatives, 2nd edn. Chichester: Wiley, 2010.
Johannes, M., and S. Sundaresan, "The Impact of Collateralization on Swap Rates," Journal of Finance, 61, 1 (February 2007): 383-410.
Litzenberger, R. H. "Swaps: Plain and Fanciful," Journal of Finance, 47, 3 (1992): 831-50.
Memmel, C., and A. Schertler. "Bank Management of the Net Interest Margin: New Measures," Financial Markets and Portfolio Management, 27, 3 (2013): 275-97.
Purnanandan, A. "Interest Rate Derivatives at Commercial Banks: An Empirical Investigation," Journal of Monetary Economics, 54 (2007): 1769-1808.

# Short Concept Questions

7.1. Explain how payments are calculated in an OIS.
7.2. Explain how the risk-free zero curve is calculated from OIS rates.

7.3. How many exchanges are usually made in a one-year OIS swap?
7.4. Explain whether principal is exchanged in (a) an interest rate swap and (b) a currency swap.
7.5. A company has a five-year investment earning  $3\%$  per year. Five-year interest rate swaps are quoted as bid  $3.21\%$ , ask  $3.25\%$ . What floating investment rate investment can be achieved with a swap?
7.6. A company can borrow for five years at  $4\%$ . Five-year interest rate swaps are quoted as bid  $3.21\%$ , ask  $3.25\%$ . What floating borrowing rate can be obtained using a swap?
7.7. Explain why borrowing at a floating rate and swapping to fixed does not necessarily give rise to borrowing at the same fixed rate every year.
7.8. What estimates have to be made to value an interest rate swap?
7.9. Consider a swap when fixed is paid and floating is received. If the term structure of interest rates is upward sloping, do the early exchanges have a positive or negative value?
7.10. Explain two ways a fixed-for-fixed currency swap can be valued.

# Practice Questions

7.11. Companies A and B have been offered the following rates per annum on a 20 million five-year loan:

<table><tr><td></td><td>Fixed rate</td><td>Floating rate</td></tr><tr><td>Company A</td><td>5.0\%</td><td>SOFR + 0.1\%</td></tr><tr><td>Company B</td><td>6.4\%</td><td>SOFR + 0.6\%</td></tr></table>

Company A requires a floating-rate loan; Company B requires a fixed-rate loan. Design a swap that will net a bank, acting as intermediary,  $0.1\%$  per annum and that will appear equally attractive to both companies.

7.12. A \$100 million interest rate swap has a remaining life of 10 months. Under the terms of the swap, six-month LIBOR is exchanged for  $4\%$  per annum (compounded semiannually). Six-month LIBOR forward rates for all maturities are  $3\%$  (with semiannual compounding). The six-month LIBOR rate was  $2.4\%$  two months ago. OIS rates for all maturities are  $2.7\%$  with continuous compounding. What is the current value of the swap to the party paying floating? What is the value to the party paying fixed?
7.13. Company X wishes to borrow U.S. dollars at a fixed rate of interest. Company Y wishes to borrow Japanese yen at a fixed rate of interest. The amounts required by the two companies are roughly the same at the current exchange rate. The companies have been quoted the following interest rates, which have been adjusted for the impact of taxes:

<table><tr><td></td><td>Yen</td><td>Dollars</td></tr><tr><td>Company X</td><td>5.0\%</td><td>9.6\%</td></tr><tr><td>Company Y</td><td>6.5\%</td><td>10.0\%</td></tr></table>

Design a swap that will net a bank, acting as intermediary, 50 basis points per annum. Make the swap equally attractive to the two companies and ensure that all foreign exchange risk is assumed by the bank.

7.14. A currency swap has a remaining life of 15 months. It involves exchanging interest at  $10\%$  on  $\pm 20$  million for interest at  $6\%$  on  $\$30$  million once a year. The term structure of risk-free interest rates in the United Kingdom is flat at  $7\%$  and the term structure of risk-free interest rates in the United States is flat at  $4\%$  (both with annual compounding). The current exchange rate (dollars per pound sterling) is 1.5500. What is the value of the swap to the party paying sterling? What is the value of the swap to the party paying dollars?
7.15. Explain the difference between the credit risk and the market risk in a swap.
7.16. A corporate treasurer tells you that he has just negotiated a five-year loan at a competitive fixed rate of interest of  $5.2\%$ . The treasurer explains that he achieved the  $5.2\%$  rate by borrowing at a six-month floating reference rate plus 150 basis points and swapping the floating reference rate for  $3.7\%$ . He goes on to say that this was possible because his company has a comparative advantage in the floating-rate market. What has the treasurer overlooked?
7.17. A bank enters into an interest rate swap with a nonfinancial counterparty using bilaterally clearing where it is paying a fixed rate of  $3\%$  and receiving floating. No collateral is posted and no other transactions are outstanding between the bank and the counterparty. What credit risk is the bank subject to? Discuss whether the credit risk is greater when the yield curve is upward sloping or when it is downward sloping.
7.18. Companies X and Y have been offered the following rates per annum on a 5 million 10-year investment:

<table><tr><td></td><td>Fixed rate</td><td>Floating rate</td></tr><tr><td>Company X</td><td>8.0\%</td><td>LIBOR</td></tr><tr><td>Company Y</td><td>8.8\%</td><td>LIBOR</td></tr></table>

Company X requires a fixed-rate investment; company Y requires a floating-rate investment. Design a swap that will net a bank, acting as intermediary,  $0.2\%$  per annum and will appear equally attractive to X and Y.

7.19. A financial institution has entered into an interest rate swap with company X. Under the terms of the swap, it receives  $4\%$  per annum and pays six-month LIBOR on a principal of \$10 million for five years. Payments are made every six months. Suppose that company X defaults on the sixth payment date (end of year 3) when six-month forward LIBOR rates for all maturities are  $2\%$  per annum. What is the loss to the financial institution? Assume that six-month LIBOR was  $3\%$  per annum halfway through year 3 and that at the time of the default all OIS rates are  $1.8\%$  per annum. OIS rates are expressed with continuous compounding; other rates are expressed with semiannual compounding.
7.20. A financial institution has entered into a 10-year currency swap with company Y. Under the terms of the swap, the financial institution receives interest at  $3\%$  per annum in Swiss francs and pays interest at  $8\%$  per annum in U.S. dollars. Interest payments are exchanged once a year. The principal amounts are 7 million dollars and 10 million francs. Suppose that company Y declares bankruptcy at the end of year 6, when the exchange rate is \$0.80 per franc. What is the cost to the financial institution? Assume that, at the end of year 6, risk-free interest rates are  $3\%$  per annum in Swiss francs and  $8\%$  per annum in U.S. dollars for all maturities. All interest rates are quoted with annual compounding.

7.21. Companies A and B face the following interest rates (adjusted for the differential impact of taxes):

<table><tr><td></td><td>Company A</td><td>Company B</td></tr><tr><td>U.S. dollars</td><td>Floating + 0.5\%</td><td>Floating + 1.0\%</td></tr><tr><td>Canadian dollars</td><td>5.0\%</td><td>6.5\%</td></tr></table>

Assume that A wants to borrow U.S. dollars at a floating rate of interest and B wants to borrow Canadian dollars at a fixed rate of interest. A financial institution is planning to arrange a swap and requires a 50-basis-point spread. If the swap is equally attractive to A and B, what rates of interest will A and B end up paying?

7.22. After it hedges its foreign exchange risk using forward contracts, is the financial institution's average spread in Figure 7.11 likely to be greater than or less than 20 basis points? Explain your answer.
7.23. "Nonfinancial companies with high credit risks are the ones that cannot access fixed-rate markets directly. They are the companies that are most likely to be paying fixed and receiving floating in an interest rate swap." Assume that this statement is true. Do you think it increases or decreases the risk of a financial institution's swap portfolio? Assume that companies are most likely to default when interest rates are high.
7.24. Why is the expected loss to a bank from a default on a swap with a counterparty less than the expected loss from the default on a loan to the counterparty when the loan and swap have the same principal? Assume that there are no other derivatives transactions between the bank and the counterparty, that the swap is cleared bilaterally, and that no collateral is provided by the counterparty in the case of either the swap or the loan.
7.25. A bank finds that its assets are not matched with its liabilities. It is taking floating-rate deposits and making fixed-rate loans. How can swaps be used to offset the risk?
7.26. Explain how you would value a swap that is the exchange of a floating rate in one currency for a fixed rate in another currency.
7.27. OIS rates are  $3.4\%$  for all maturities. What is the value of an OIS swap with two years to maturity where  $3\%$  is received and the floating reference rate is paid. Assume annual compounding, annual payments, and 100 million principal.
7.28. A financial institution has entered into a swap where it agreed to make quarterly payments at a rate of  $3\%$  per annum and receive the SOFR three-month reference rate on a notional principal of \$100 million. The swap now has a remaining life of 7.5 months. Assume the risk-free rates with continuous compounding (calculated from SOFR) for 1.5, 4.5, and 7.5 months are  $2.8\%$ ,  $3.0\%$ , and  $3.1\%$ , respectively. Assume also that the continuously compounded risk-free rate observed for the last 1.5 months is  $2.7\%$ . Estimate the value of the swap.
7.29. (a) Company A has been offered the swap quotes in Table 7.4. It can borrow for three years at  $3.45\%$ . What floating rate can it swap this fixed rate into? (b) Company B has been offered the swap quotes in Table 7.4. It can borrow for five years at floating plus 75 basis points. What fixed rate can it swap this rate into? (c) Explain the rollover risks that Company B is taking.
7.30. The one-year LIBOR rates is  $3\%$ , and the LIBOR forward rate for the 1- to 2-year period is  $3.2\%$ . The three-year swap rate for a swap with annual payments is  $3.2\%$ . What is the LIBOR forward rate for the 2- to 3-year period if OIS zero rates for maturities of one, two, and three years are  $2.5\%$ ,  $2.7\%$ , and  $2.9\%$ , respectively. What is the value of a three-year swap where  $4\%$  is received and LIBOR is paid on a principal of 100 million. All rates are annually compounded.


7.31. A financial institution has entered into a swap where it agreed to receive quarterly payments at a rate of  $2\%$  per annum and pay the SOFR three-month reference rate on a notional principal of \$100 million. The swap now has a remaining life of 10 months. Assume the risk-free rates with continuous compounding (calculated from SOFR) for 1 month, 4 months, 7 months, and 10 months are  $1.4\%$ ,  $1.6\%$ ,  $1.7\%$ , and  $1.8\%$ , respectively. Assume also that the continuously compounded risk-free rate observed for the last two months is  $1.1\%$ . Estimate the value of the swap.

7.32. Company A, a British manufacturer, wishes to borrow U.S. dollars at a fixed rate of interest. Company B, a U.S. multinational, wishes to borrow sterling at a fixed rate of interest. They have been quoted the following rates per annum:

<table><tr><td></td><td>Sterling</td><td>U.S. Dollars</td></tr><tr><td>Company A</td><td>11.0\%</td><td>7.0\%</td></tr><tr><td>Company B</td><td>10.6\%</td><td>6.2\%</td></tr></table>

(Rates have been adjusted for differential tax effects.) Design a swap that will net a bank, acting as intermediary, 10 basis points per annum and that will produce a gain of 15 basis points per annum for each of the two companies.

7.33. The five-year swap rate when cash flows are exchanged semiannually is  $4\%$ . A company wants a swap where it receives payments at  $4.2\%$  per annum on a notional principal of \$10 million. The OIS zero curve is flat at  $3.6\%$ . How much should a derivatives dealer charge the company. Assume that all rates are expressed with semiannual compounding and ignore bid-ask spreads.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/fe84e9051623d22b461e0274c30d54ec09e953aa36982d56ead60cf452d04198.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/3bcfa2e2e346d13f145aa302763648ccf2b760c59e79ab06ed3d8228b82abe9c.jpg)

# Securitization and the Financial Crisis of 2007-8

Derivatives such as forwards, futures, swaps, and options are concerned with transferring risk from one entity in the economy to another. The first seven chapters of this book have focused on forwards, futures, and swaps. Before moving on to discuss options, we consider another important way of transferring risk in the economy: securitization.

Securitization is of particular interest because of its role in the financial crisis that started in 2007. The crisis had its origins in financial products created from mortgages in the United States, but rapidly spread from the United States to other countries and from financial markets to the real economy. Some financial institutions failed; others had to be rescued by national governments. There can be no question that the first decade of the twenty-first century was disastrous for the financial sector.

In this chapter, we examine the nature of securitization and its role in the crisis. In the course of the chapter, we will learn about the U.S. mortgage market, asset-backed securities, collateralized debt obligations, waterfalls, and the importance of incentives in financial markets.


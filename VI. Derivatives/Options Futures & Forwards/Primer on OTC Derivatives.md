---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Chapter 16
linter-yaml-title-alias: Chapter 16
---

The information in this chapter was last updated in 1993. Since the money market evolves very rapidly, recent developments may have superseded some of the content of this chapter.

Federal Reserve Bank of Richmond

Richmond, Virginia

1998

# Chapter 16

# OVER-THE-COUNTER

# INTEREST RATE DERIVATIVES

Anatoli Kuprianov

# INTRODUCTION

Over-the-counter (OTC) interest rate derivatives include instruments such as forward rate agreements (FRAs), interest rate swaps, caps, floors, and collars. Broadly defined, a derivative instrument is a formal agreement between two parties specifying the exchange of cash payments based on changes in the price of a specified underlying item or differences in the returns to different securities. Like exchange-traded interest rate derivatives such as interest rate futures and futures options, OTC interest rate derivatives set terms for the exchange of cash payments based on changes in market interest rates. An FRA is a forward contract that sets terms for the exchange of cash payments based on changes in the London Interbank Offered Rate (LIBOR); interest rate swaps provide for the exchange of payments based on differences between two different interest rates; and interest rate caps, floors, and collars are option-like agreements that require one party to make payments to the other when a stipulated interest rate, most often a specified maturity of LIBOR, moves outside of some predetermined range.

The over-the-counter market differs from futures markets in a number of important respects. Whereas futures and futures options are standardized agreements that trade on organized exchanges, the over-the-counter market is an informal market consisting of dealers, or market makers, who trade price information and negotiate transactions over electronic communications networks. Although a great deal of contract standardization exists in the over-the-counter market, dealers active in this market custom-tailor agreements to meet the specific needs of their customers. And unlike futures markets, where futures exchange clearinghouses guarantee contract performance through a system of margin requirements combined with the daily settlement of gains or losses, counterparties to OTC derivative agreements must bear some default or credit risk.

The rapid growth and energized pace of innovation in the market for interest rate derivatives since 1981, the date of the first widely publicized swap agreement, has proven truly phenomenal. The advent of trading in interest rate swaps was soon followed by FRAs, caps, floors, collars, as well as other hybrid instruments

such as forward swaps, options on swaps (swaptions), and even options on options (captions).

This chapter offers an introduction to OTC interest rate derivatives. The first five sections describe some of the most common types of OTC derivatives: FRAs, interest rate swaps, caps, floors, and collars. The final section discusses policy and regulatory concerns prompted by the growth of the OTC derivatives market.

# FORWARD RATE AGREEMENTS

FRAs are cash-settled forward contracts on interest rates traded among major international banks active in the Eurodollar market. An FRA can be viewed as the OTC equivalent of a Eurodollar futures contract. Most FRAs trade for maturities corresponding to standard Eurodollar time deposit maturities, although nonstandard maturities are sometimes traded (Grabbe 1991, Chap. 13). Trading in FRAs began in 1983 (Norfield 1992).

Banks use FRAs to fix interest costs on anticipated future deposits or interest revenues on variable-rate loans indexed to LIBOR. A bank that sells an FRA agrees to pay the buyer the increased interest cost on some "notional" principal amount if some specified maturity of LIBOR is above a stipulated "forward rate" on the contract maturity or settlement date. The principal amount of the agreement is termed "notional" because, while it determines the amount of the payment, actual exchange of the principal never takes place. Conversely, the buyer agrees to pay the seller any decrease in interest cost if market interest rates fall below the forward rate. Thus, buying an FRA is comparable to selling, or going short, a Eurodollar or LIBOR futures contract.

The following example illustrates the mechanics of a transaction involving an FRA. Suppose two banks enter into an agreement specifying:

- a forward rate of 5 percent on a Eurodollar deposit with a three-month maturity;  
- a \$1 million notional principal; and  
settlement in one month.

Such an agreement is termed a 1x4 FRA because it fixes the interest rate for a deposit to be placed after one month and maturing four months after the date the contract is negotiated. If the three-month LIBOR is 6 percent on the contract settlement date, the seller would owe the buyer the difference between 6 and 5 percent interest on \$1 million for a period of 90 days. Every 1 basis point change in the interest rate payable on a principal of \$1 million for a 90-day maturity changes interest cost by \$25, so that the increase in the interest cost on a three-month Eurodollar deposit over the specified forward rate in this case is \$25 x 100 basis points = \$2,500. But the interest on a Eurodollar deposit is paid upon maturity (at the end of the term of the deposit), whereas FRAs

are settled on the contract maturity date (which would correspond to the date the underlying hypothetical deposit would be placed). Therefore, to make the cash payment on the FRA equivalent to the extra interest that would have been earned on a Eurodollar deposit paying 6 percent, the \(2,500 difference in interest costs calculated above is discounted back three months using the actual three-month LIBOR prevailing on the settlement date. Thus, if 90-day LIBOR turns out to be 6 percent on the contract maturity date the buyer would receive

$$
\$ 2,463.05 = \$ 2,500 / [1 + 0.06 (90 / 360) ].
$$

More generally, final settlement of the amounts owed by the parties to an FRA is determined by the formula

$$
P a y m e n t = (N) \left(L I B O R - F R\right) \left(d t m / 3 6 0\right) / 1 + L I B O R \left(d t m / 3 6 0\right),
$$

where

$$
N = \text {t h e}
$$

LIBOR = the value of LIBOR for the maturity specified by the contract prevailing on the contract settlement

date;

$$
F R = \text {t h e a g r e e d - u p o n f o r w a r d r a t e ; a n d}
$$

$dtm =$  maturity of the forward rate, specified in days.

If  $LIBOR > FR$  the seller owes the payment to the buyer, and if  $LIBOR < FR$  the buyer owes the seller the absolute value of the payment amount determined by the above formula.

# INTEREST RATE SWAPS

A swap is a contractual agreement between two parties to exchange, or "swap," future payment streams based on differences in the returns to different securities or changes in the price of some underlying item. Interest rate swaps constitute the most common type of swap agreement. In an interest rate swap, the parties to the agreement, termed the swap counterparties, agree to exchange payments indexed to two different interest rates. Total payments are determined by the specified notional principal amount of the swap, which is never actually exchanged. Financial intermediaries, such as banks, pension funds, and insurance companies, as well as nonfinancial firms use interest rate swaps to effectively change the maturity of outstanding debt or that of an interest-bearing asset.<sup>1</sup>

Swaps grew out of parallel loan agreements in which firms exchanged loans denominated in different currencies. Although some swaps were arranged in the late 1970s, the first widely publicized swap took place in 1981 when IBM and the World Bank agreed to exchange interest payments on debt denominated in

# FIGURE 1

# U.S. Dollar Interest Rate Swaps

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/e1dc8b6e-9689-4bc7-8b6b-9e918bb374f7/f82346bdff1c3e88577ae91780947cf94cdabcb9e2e82b81434f1c7cf68d8910.jpg)  
Source: Market Survey Highlights, Year End 1991, International Swap Dealers Association, Inc.

different currencies, an arrangement known as a currency swap. The first interest rate swap was a 1982 agreement in which the Student Loan Marketing Association (Sallie Mae) swapped the interest payments on an issue of intermediate-term, fixed-rate debt for floating-rate payments indexed to the three-month Treasury bill yield. The interest rate swap market has grown rapidly since then. Figure 1 displays the year-end total notional principal of U.S. dollar interest rate swaps outstanding from 1985 to 1991. Based on market survey data published by the International Swap Dealers Association (ISDA), U.S. dollar interest rate swaps comprise about one-half of all interest rate swaps outstanding: the notional principal amount of U.S. dollar interest rate swaps outstanding as of the end of 1991 was just over \$1.5 trillion, compared to almost \$3.1 trillion for all interest rate swaps.

Swap Dealers Early interest rate swaps were brokered transactions in which financial intermediaries with customers interested in entering into a swap would seek counterparties for the transaction among their other customers. The intermediary collected a brokerage fee as compensation, but did not maintain a

continuing role once the transaction was completed. The contract was between the two ultimate swap users, who exchanged payments directly.

Today the market has evolved into more of a dealer market dominated by large international commercial and investment banks. Dealers act as market makers that stand ready to become a counterparty to different swap transactions before a customer for the other side of the transaction is located. A swap dealer intermediates cash flows between different customers, or "end users," becoming a middleman to each transaction. The dealer market structure relieves end users from the need to monitor the financial condition of many different swap counterparties. Because dealers act as middlemen, end users need only be concerned with the financial condition of the dealer, and not with the creditworthiness of the other ultimate end user of the instrument (Brown and Smith 1990).

Figure 2 illustrates the flow of payments between two swap end users through a swap dealer. Unlike brokers, dealers in the over-the-counter market do not charge a commission. Instead, they quote two-way "bid" and "asked" prices at which they stand ready to act as counterparty to their customers in a derivative instrument. The quoted spread between bid and asked prices allows an intermediary to receive a higher payment from one counterparty than is paid to the other.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/e1dc8b6e-9689-4bc7-8b6b-9e918bb374f7/168539ff166425096ea7ce8c1fb8a92398c1de21857bc61e90b46e7f2916f734.jpg)  
FIGURE 2  
The Dealer Market for Interest Rate Swaps

Swap Market Conventions There are many different variants of interest rate swaps. The most common is the fixed/floating swap in which a fixed-rate payer makes payments based on a long-term interest rate to a floating-rate payer, who, in turn, makes payments indexed to a short-term money market rate to the fixed-rate payer. A fixed/floating swap is characterized by:

- a fixed interest rate;  
- a variable or floating interest rate which is periodically reset;  
- a notional principal amount upon which total interest payments are based; and
- the term of the agreement, including a schedule of interest rate reset dates (that is, dates when the value of the interest rate used to determine floating-rate payments is determined) and payment dates.

The fixed interest rate typically is based on the prevailing market interest rate for Treasury securities with a maturity corresponding to the term of the swap agreement. The floating rate is most often indexed to threeor six-month LIBOR, in which case the swap is termed a "generic" or "plain vanilla" swap, but can be indexed to almost any money market rate such as the Treasury bill, commercial paper, federal funds, or prime interest rate. The maturity, or "tenor," of a fixed/floating interest rate swap can vary between 1 and 15 years. By convention, a fixed-rate payer is designated as the buyer and is said to be long the swap, while the floating-rate payer is the seller and is characterized as short the swap.

Timing of Payments A swap is negotiated on its "trade date" and takes effect two days later on its initial "settlement date." If the agreement requires the exchange of cash at the outset, as in the case of a "nonpar" swap, the transaction takes place on the initial settlement date. Interest begins accruing on the "effective date" of the swap, which usually coincides with the initial settlement date. (Forward swaps, in which the effective date of the swap is deferred, are an exception to this rule.) Floating-rate payments are adjusted on periodic "reset dates" based on the prevailing market-determined value of the floating-rate index, with subsequent payments made on a sequence of payment dates (also known as settlement dates) specified by the agreement. Typically, the reset frequency for the floating-rate index is the term of the interest rate index itself. For example, the floating rate on a generic swap indexed to the six-month LIBOR would, in most cases, be reset every six months with payment dates following six months later. The floating rate can be reset more frequently, however, as in the case of swaps indexed to Treasury bill rates, which are reset weekly.

Fixed interest payment intervals can be three months, six months, or one year. Semiannual payment intervals are most common because they coincide with the intervals between interest payments on Treasury bonds. Floating-rate payment intervals need not coincide with fixed-rate payment intervals, although they often do. When payment intervals coincide, it is common practice to exchange only the net difference between the fixed and floating payments.

Price Quotation The price of a fixed/floating swap is quoted in two parts: a fixed interest rate and an index upon which the floating interest rate is based. The floating rate can be based on an index of short-term market rates (such as a given maturity of LIBOR) plus or minus a given margin, or set to the index "flat"—that is, the floating interest rate index itself with no margin added. The convention in the swap market is to quote the fixed interest rate as an All-In-Cost (AIC), which means that the fixed interest rate is quoted relative to a flat floating-rate index.

The AIC typically is quoted as a spread over U.S. Treasury securities with a maturity corresponding to the term of the swap. For example, a swap dealer might quote a price on a three-year generic swap at an All-In-Cost of "72-76 flat," which means the dealer stands ready to "buy" the swap (that is, enter into the swap as a fixed-rate payer) at 72 basis points over the prevailing three-year interest rate on U.S. Treasuries while receiving floating-rate payments indexed to a specified maturity of LIBOR with no margin, and "sell" (receive fixed and pay floating) if the other party to the swap agrees to pay 76 basis points over Treasury securities.

Bid-asked spreads in the swap market vary greatly depending on the type of agreement. The spread can be as low as 3 to 4 basis points for a twoor three-year generic swap, while spreads for nonstandard, custom-tailored swaps tend to be much higher.

The Generic Swap As an illustration of the mechanics of a simple interest rate swap, consider the example of a generic swap. Fixed interest payments on a generic swap typically are based on a 30/360 day-count convention, meaning that they are calculated assuming each month has 30 days and the quoted interest rate is based on a 360-day year. Given an All-In-Cost of the swap, the semiannual fixed-rate payment would be

$$
(N) (A / C) (1 8 0 / 3 6 0),
$$

where  $N$  denotes the notional principal amount of the agreement.

Floating-rate payments are based on an actual/360-day count, meaning that interest payments are calculated using the actual number of days elapsed since the previous payment date, based on a 360-day year. Let  $d_{t}$  denote the number of days since the last settlement date. Then, the floating-rate payment is determined by the formula

$$
(N) (L I B O R) (d _ {t} / 3 6 0).
$$

To illustrate, suppose a dealer quotes an All-In-Cost for a generic swap at 10 percent against six-month LIBOR flat. If the notional principal amount of the swap is \$1 million, then the semiannual fixed payment would be

$$
\$ 50,000 = (\$ 1,000,000) (0.1 0) (1 8 0 / 3 6 0).
$$

Suppose that the six-month period from the effective date of the swap to the first payment date (sometimes also termed a settlement date) comprises 181 days and that the corresponding LIBOR was 8 percent on the swap's effective date. Then, the first floating-rate payment would be

$$
\$ 40,222.22 = (\$ 1,000,000) (0.08) (181 / 360).
$$

Often a swap agreement will call for only the net amount of the promised payments to be exchanged. In this example, the fixed-rate payer would pay the floating-rate payer a net amount of

$$
\mathbb {S} 9, 7 7 7. 7 8 = \mathbb {S} 5 0, 0 0 0. 0 0 - \mathbb {S} 4 0, 2 2 2. 2 2.
$$

A payment frequency "mismatch" occurs when the floating-rate payment frequency does not match the scheduled frequency of the fixed-rate payment. Mismatches typically arise in the case of swaps that base floating-rate payments on maturities shorter than the six-month payment frequency common for fixed-rate payments. Macfarlane, Ross, and Showers (1990) discuss swap mismatches in some detail.

Day-Count Conventions A wide variety of day-count conventions are used in the swap market. Fixed payments can be quoted either on an actual/365 (bond equivalent) basis or on an actual/360 basis. Floating-rate payments indexed to private-sector interest rates typically follow an actual/360 day-count convention commonly used in the money market. Floating-rate payments tied to Treasury bill rates are calculated on an actual/365 basis, however.

Nongeneric Swaps An interest rate swap that specifies an exchange of payments based on the difference between two different variable rates is known as a "basis swap." For example, a basis swap might specify the exchange of payments based on the difference between LIBOR and the prime rate. Other interest rate swaps include the forward swap, in which the effective date of the swap is deferred; the swaption, which is an option on an interest rate swap; and puttable and callable swaps, in which one party has the right to cancel the swap at certain times. This list is far from exhaustive—many other types of interest rate swaps are currently traded, and the number grows with each year. Abken (1991b) describes a variety of different swap agreements.

Swap Valuation Interest rate swaps can be viewed as implicit mutual lending arrangements. A party to an interest rate swap implicitly holds a long position in one type of interest-bearing security and a short position in another. Swap valuation techniques utilize this fact to reduce the problem of pricing an interest rate swap to a straightforward problem of pricing two underlying hypothetical securities having a redemption or face value equal to the notional principal amount of the swap. The method used to value a fixed/floating swap is outlined below.

Partitioning a Swap A fixed/floating swap can be partitioned into (1) a bond paying a fixed coupon and (2) a variable-rate note with payments tied to the variable-rate index. Let  $S(0, T)$  denote the value of a  $T$ -period swap on its initial

settlement date (date 0),  $B(0, T)$  the value of a hypothetical  $T$ -period fixed-rate bond paying a coupon equal to the fixed-rate payments specified by the agreement, and  $V(0, T)$  the value of a variable-rate note maturing at date  $T$ . Assuming that the face or redemption value of both hypothetical securities is equal to the notional principal amount of the swap, the value of the swap to a fixed-rate payer can be expressed as

$$
S (0, T) = V (0, T) - B (0, T).
$$

Pricing the Variable-Rate Note A variable-rate note whose payments are indexed to market interest rates is valued at par upon issuance and just after each interest payment is made. Thus, assuming that payment dates coincide with interest rate reset dates, the value of the hypothetical variable-rate note  $V(0,T)$  will just equal the notional principal amount of the swap on every reset date. On any other date the value of a variable-rate note—exclusive of accrued interest—is just the present value of the next known interest payment plus the present value of the face value of the note, the latter amount representing the value of all remaining payments on the note as of the next settlement date.

Pricing the Fixed-Rate Note The hypothetical fixed-rate note  $B(0, T)$  can be priced using standard bond valuation techniques. The convention in swap markets is to quote the AIC as a semiannual bond-equivalent rate. The formula for valuing a bond paying semiannual fixed coupon payments is

$$
B (0, T) = \sum_ {t = 0} ^ {2 T} \left[ (C / 2) / (1 + y / 2) ^ {t} \right] + [ N / (1 + y) ^ {T} ],
$$

where  $C$  is the annual coupon payment,  $T$  the number of years to maturity,  $N$  the principal or face value, and  $y$  the yield-to-maturity of the bond.

By definition, the All-In-Cost of a fixed/floating swap is the yield to maturity that just makes the value of the hypothetical fixed-rate bond equal to the notional principal amount of the swap. The annual coupon payment for this hypothetical bond is determined by the AIC and the notional principal amount of the agreement:

$$
C = (A / C / 1 0 0) (N),
$$

where  $A / C$  is expressed as a percentage rate. It is easy to see that the value of the hypothetical bond implicit in this fixed/floating swap will be par (the notional principal amount of the swap) when

$$
y = A / C / 1 0 0.
$$

Nonpar Swaps In most cases swaps are priced so that the initial value of the agreement is zero to both counterparties; that is, so that the value of both hypothetical component securities is just equal to the notional principal amount of

the swap. Occasionally, however, a swap may be priced such that one party owes money to the other at initial settlement, resulting in a "nonpar" swap. Nonpar swaps are used to offset existing positions in swaps entered into in previous periods where interest rates have changed since the original swap was negotiated, or in cases where a given cash flow needs to be matched exactly (Dattatreya 1992). Valuation methods for nonpar swaps are somewhat more involved than the simple case discussed above. Interested readers can find more comprehensive discussions of swap valuation in Beckstrom (1990), Iben (1990), and Macfarlane, Ross, and Showers (1990).

The Effect of Changes in Market Interest Rates on Swap Values A change in market interest rates affects the value of a fixed/floating swap in much the same way that it affects the value of a corporate bond with a comparable maturity. To see why, note that a change in market interest rates will have no effect on the value of the hypothetical variable-rate note implicit in a fixed/floating swap on interest rate reset dates. Therefore, on reset dates a change in market interest rates will affect the value of the swap only through its effect on the value of the hypothetical fixed-rate bond. Since an increase in interest rates lowers the value of the bond, it increases the value of the swap position for a fixed-rate payer to the same degree it would increase the value of a short position in a fixed-rate bond.

Between interest rate reset dates the amount of the next payment due on the variable-rate note is predetermined. Thus, a change in market interest rates affects the values of both the hypothetical variable-rate note and the hypothetical fixed-rate bond. The change in the value of the variable-rate note partially offsets the change in the value of the fixed-rate note in this case. As a general rule the price behavior of a fixed/floating interest rate swap will approximate the price behavior of a fixed-rate note with a maturity equal to the term of the swap less the maturity of the variable interest rate. For example, a two-year generic swap indexed to six-month LIBOR will approximate the behavior of a fixed-rate bond with a term to maturity of between 18 and 24 months, depending on the amount of time since the last interest rate reset date (Burghardt et al. 1991, p. 86).

The value of a fixed/floating swap generally changes over time when the term structure of interest rates is upward-sloping. Only when the term structure is flat and market interest rates remain unchanged will the value of an interest rate swap remain unchanged over the life of the agreement (Smith, Smithson, and Wakeman 1988).

# INTEREST RATE CAPS

The buyer of an interest rate cap pays the seller a premium in return for the right to receive the difference in the interest cost on some notional principal amount any time a specified index of market interest rates rises above a stipulated "cap

rate." The buyer bears no obligation or liability if interest rates fall below the cap rate, however. Thus, a cap resembles an option in that it represents a right rather than an obligation to the buyer.

Caps evolved from interest rate guarantees that fixed a maximum level of interest payable on floating-rate loans. The advent of trading in over-the-counter interest rate caps dates back to 1985, when banks began to strip such guarantees from floating-rate notes to sell to the market (Kahle 1992). The leveraged buyout boom of the 1980s spurred the evolution of the market for interest rate caps. Firms engaged in leveraged buyouts typically took on large quantities of short-term debt, which made them vulnerable to financial distress in the event of a rise in interest rates. As a result, lenders began requiring such borrowers to buy interest-rate caps to reduce the risk of financial distress (Burghardt et al. 1991). More recently, trading activity in interest rate caps has declined as the number of new leveraged buyouts has fallen. Figure 3 shows that the total notional principal amount of caps, floors, and collars outstanding at the end of 1991 actually fell to  \$311 billion from\$ 360 billion at the end of 1990 (floors and collars are discussed below).

FIGURE 3  
U.S. Dollar Caps, Collars, and Floors  
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/e1dc8b6e-9689-4bc7-8b6b-9e918bb374f7/228e0b00ed430fabe9e2f776cda1442dd233d09d429d42ea8b6911f39aefbde9.jpg)  
Source: Market Survey Highlights, Year End 1991, International Swap Dealers Association, Inc.

Market Conventions An interest rate cap is characterized by:

- a notional principal amount upon which interest payments are based;  
- an interest rate index, typically some specified maturity of LIBOR;  
- a cap rate, which is equivalent to a strike or exercise price on an option; and  
- the period of the agreement, including payment dates and interest rate reset dates.

Payment schedules for interest rate caps follow conventions in the interest rate swap market. Payment amounts are determined by the value of the index rate on a series of interest rate reset dates. Intervals between interest rate reset dates and scheduled payment dates typically coincide with the term of the interest rate index. Thus, interest rate reset dates for a cap indexed to six-month LIBOR would occur every six months with payments due six months later. Cap buyers typically schedule interest rate reset and payment intervals to coincide with interest payments on outstanding variable-rate debt. Interest rate caps cover periods ranging from one to ten years with interest rate reset and payment dates most commonly set either three or six months apart.

If the specified market index is above the cap rate, the seller pays the buyer the difference in interest cost on the next payment date. The amount of the payment is determined by the formula

$$
(N) \max (0, r - r _ {\mathrm {c}}) (d _ {t} / 3 6 0),
$$

where  $N$  is the notional principal amount of the agreement,  $r_c$  is the cap rate (expressed as a decimal), and  $d_t$  is the number of days from the interest rate reset date to the payment date. Interest rates quoted in cap agreements follow money market day-count conventions, so that payment calculations assume a 360-day year.

Figure 4 depicts the payoff to the buyer of a one-period interest rate cap. If the index rate is above the cap rate, the buyer receives a payment of  $(N)(r - r_c)(d_t / 360)$ , which is equivalent to the payoff from buying an FRA.2 Otherwise, the buyer receives no payment and loses the premium paid for the cap. Thus, a cap effectively gives its buyer the right, but not the obligation, to buy an FRA with a forward rate equal to the cap rate. Such an agreement is known as a call option. A one-period cap can be viewed as a European call option on an FRA with a strike price equal to the cap rate  $r_c$ .3 More generally, multi-period

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/e1dc8b6e-9689-4bc7-8b6b-9e918bb374f7/aeb1033c73f75f616beb85367c372309c83d6bb6af792e2533fe398a8d919792.jpg)  
FIGURE 4  
The Payoff to Buying a  
One-Period Interest Rate Cap

caps, which specify a series of future interest rate reset and payment dates, can be viewed as a bundle of European call options on a sequence of FRAs.

Example of an Interest Rate Cap Consider the example of a one-year interest rate cap that specifies a notional principal amount of \(1 million and a six-month LIBOR cap rate of 5 percent. Assume the agreement covers a period starting January 15 through the following January 15 with the interest rate to be reset on July 15. The first period of a cap agreement typically is excluded from the agreement, so the cap buyer in this example will be entitled to a payment only if the six-month LIBOR exceeds 5 percent on the July 15 interest rate reset date. Suppose that six-month LIBOR is 5.5 percent on July 15. Then, on the following January 15 (184 days after the July 15 reset date) the seller will owe the buyer

$$
\$ 2,555.56 = (\$ 1,000,000) (0.055 - 0.050) (184 / 360).
$$

Comparison of Caps and Futures Options A one-period cap can be compared to a put option on a Eurodollar futures contract. To see why, note that the payoff at expiration to a put option on Eurodollar futures is

$$
(N) \max  (0, K - F) (9 0 / 3 6 0),
$$

where  $N$  is the notional principal amount of the agreement ( \$1 million for a Eurodollar futures option), K$  is the strike price and  $F$  is the price of the underlying futures contract. The price index used for Eurodollar futures can be written

as  $F = 100 - r$ , where  $r$  is the three-month LIBOR implied by the futures price. Now, write  $K = 100 - r_{k}$  where  $r_{k}$  is the futures interest rate implied by the strike price  $K$ . Then, the payoff at expiration to a Eurodollar futures option can be expressed as

$$
(N) \max  [ 0, 1 0 0 - r _ {k} - (1 0 0 - r) ] (9 0 / 3 6 0) = (N) \max  (0, r - r _ {k}) (9 0 / 3 6 0).
$$

where, as before,  $N$  is the notional principal amount of the agreement,  $r_c$  is the cap rate,  $r_f$  is the floor rate, and  $d_t$  is the term of the index in days. Figure 7 illustrates the payoff to buying a one-period zero-cost interest rate collar. If the index interest rate  $r$  is less than the floor rate  $r_f$  on the interest rate reset date, the floor is in-the-money and the collar buyer (who has sold a floor) must pay the collar counterparty an amount equal to  $(N)(r_f - r)(d_t / 360)$ . When  $r$  is greater than  $r_f$  but less than the cap rate  $r_c$ , both the floor and the cap are out-of-the-money and no payments are exchanged. Finally, when the index is above the cap rate the cap is in-the-money and the buyer receives  $(N)(r - r_c)(d_t / 360)$ .

# FIGURE 7

# The Payoff to Buying a

# One-Period, Zero-Cost Collar

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/e1dc8b6e-9689-4bc7-8b6b-9e918bb374f7/bd595df9782773429b29af1fce1278afce7904beef36300161436e56b99f29e4.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/e1dc8b6e-9689-4bc7-8b6b-9e918bb374f7/ac86af9ff7c0ffc0fd5b9ce4fcb08b5cc93ea31ce3e6ab8967e8c8255a62a005.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/e1dc8b6e-9689-4bc7-8b6b-9e918bb374f7/19c05c601799194f31c9f976bb080be06b600ef473b73bf5141f68c73357decd.jpg)

Figure 8 illustrates a special case of a zero-cost collar that results from the simultaneous purchase of a one-period cap and sale of a one-period floor when the cap and floor rates are equal. In this case the combined transaction replicates the payoff of an FRA with a forward interest rate equal to the cap/floor rate. This result is a consequence of a property of option prices known as put-call parity.

More generally, the purchase of a cap and sale of a floor with the same notional principle, index rate, strike price, and reset dates produces the same payout stream as an interest rate swap with an All-In-Cost equal to the cap or

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/e1dc8b6e-9689-4bc7-8b6b-9e918bb374f7/10c377077eead1fb09bc199b5e56134e573596f60153485aa0c901dbd577ddb6.jpg)  
on Interest Expense

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/e1dc8b6e-9689-4bc7-8b6b-9e918bb374f7/0da30164b8d770d47a4388f3bf1300cf2d0ae9fbf4e74b4ba3663487de5b3fb6.jpg)  
The Effect of Buying a Cap

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/e1dc8b6e-9689-4bc7-8b6b-9e918bb374f7/c838a1c7dacaf9150c0060d615d3bd597c0d136cbc35b7f5e1a798cdd3b795a3.jpg)  
FIGURE 5

if the index interest rate rises above the floor rate, so the most a buyer can lose is the premium paid to the seller at the outset of the agreement.

The payment received by the buyer of an interest rate floor is determined by the formula

$$
(N) \max (0, r _ {f} - r) (d _ {t} / 3 6 0),
$$

where  $N$  is the notional principal amount of the agreement,  $r_f$  is the floor rate or strike price, and  $d_t$  is the number of days from the last interest rate reset date to the payment date. Figure 6 depicts the payoff to a one-period floor as a function of the value of the underlying index rate. If the index rate is below the floor rate on the interest rate reset date the buyer receives a payment of  $(N)(r_f - r)(d_t / 360)$ , which is equivalent to the payoff from selling an FRA at a forward rate of  $r_f$ . On the other hand, if the index rate is above the floor rate the buyer receives no payment and loses the premium paid to the seller. Thus, a floor effectively gives the buyer the right, but not the obligation, to sell an FRA, which makes it equivalent to a European put option on an FRA. More generally, a multi-period floor can be viewed as a bundle of European-style put options on a sequence of FRAs maturing on a succession of future maturity dates.

Comparison of Floors and Futures Options Purchasing a one-period interest rate floor yields a payoff closely resembling that of a long Eurodollar futures call option. The payoff to a call option on a Eurodollar futures contract is

$(N)\max (0,F - K)(90 / 360),$

# FIGURE 6

# The Payoff to Buying a

# One-Period Interest Rate Floor

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/e1dc8b6e-9689-4bc7-8b6b-9e918bb374f7/b7a9509aaced91ef5ea763d72b9b97ae7cff502163c29fb9239597994480f4e3.jpg)

where  $F = 100 - r$  is the index price of the underlying futures contract and  $K$  is the strike price. As before, write  $K = 100 - r_{K}$ . Then, the payoff to a Eurodollar futures call option can be expressed in terms of the underlying interest rate as

$$
(N) \max (0, r _ {k} - r) (9 0 / 3 6 0),
$$

which is the same as the payoff to a one-period interest rate floor indexed to 90-day LIBOR with a floor rate equal to

$r_k$ . The one noteworthy difference between the two instruments is that a Eurodollar futures option can be exercised at any time, while a floor resembles a European option that can only be exercised on its expiration date. Like caps, interest rate floors settle in arrears, whereas a futures option settles on its expiration date.

# INTEREST RATE COLLARS

The buyer of an interest rate collar purchases an interest rate cap while selling a floor indexed to the same interest rate. Borrowers with variable-rate loans buy collars to limit effective borrowing rates to a range of interest rates between some maximum, determined by the cap rate, and a minimum, which is fixed by the floor strike price; hence, the term "collar." Although buying a collar limits a borrower's ability to benefit from a significant decline in market interest rates, it has the advantage of being less expensive than buying a cap alone because the borrower earns premium income from the sale of the floor that offsets the cost

of the cap. A zero-cost collar results when the premium earned by selling a floor exactly offsets the cap premium.

The amount of the payment due to or owed by a buyer of an interest rate collar is determined by the expression

$$
(N) [ \max (0, r - r _ {c}) - \max (0, r _ {f} - r) ] (d _ {t} / 3 6 0),
$$

where, as before,  $N$  is the notional principal amount of the agreement,  $r_c$  is the cap rate,  $r_f$  is the floor rate, and  $d_t$  is the term of the index in days. Figure 7 illustrates the payoff to buying a one-period zero-cost interest rate collar. If the index interest rate  $r$  is less than the floor rate  $r_f$  on the interest rate reset date, the floor is in-the-money and the collar buyer (who has sold a floor) must pay the collar counterparty an amount equal to  $(N)(r_f - r)(d_t / 360)$ . When  $r$  is greater than  $r_f$  but less than the cap rate  $r_c$ , both the floor and the cap are out-of-the-money and no payments are exchanged. Finally, when the index is above the cap rate the cap is in-the-money and the buyer receives  $(N)(r - r_c)(d_t / 360)$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/e1dc8b6e-9689-4bc7-8b6b-9e918bb374f7/a3beb1f5f6edf2237f7d69548be3dd74c94adbf0fe2ab356bf1872805add8454.jpg)  
One-Period, Zero-Cost Collar  
Figure 8 illustrates a special case of a zero-cost collar that results from the simultaneous purchase of a one-period cap and sale of a one-period floor when the cap and floor rates are equal. In this case the combined transaction replicates the payoff of an FRA with a forward interest rate equal to the cap/floor rate. This result is a consequence of a property of option prices known as put-call parity.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/e1dc8b6e-9689-4bc7-8b6b-9e918bb374f7/0c649e02de92fda8bb9d45a0c117a110fe216c1769a1bc2f0a2b712693e4dfc9.jpg)  
The Payoff to Buying a

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/e1dc8b6e-9689-4bc7-8b6b-9e918bb374f7/e6c3a3dedcd65da8d44832e14762fe687b96a431f53f0babe55d09e12e016590.jpg)  
FIGURE 7

More generally, the purchase of a cap and sale of a floor with the same notional principle, index rate, strike price, and reset dates produces the same payout stream as an interest rate swap with an All-In-Cost equal to the cap or

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/e1dc8b6e-9689-4bc7-8b6b-9e918bb374f7/3e0af8c4dc59291217ef1c1061b0014a108e76adb51fa706e6893b31578c263b.jpg)  
FIGURE 8  
Put-Call Parity

floor rate. Since caps and floors can be viewed as a sequence of European call and put options on FRAs, buying a cap and selling a floor with the same strike price and interest rate reset and payment dates effectively creates a sequence of FRAs, all with the same forward rate. But note that an interest rate swap can be viewed as a sequence of FRAs, each with a forward rate equal to the All-In-Cost of the swap. Therefore, put-call parity implies that buying a cap and selling a floor with the same contract specifications results in the same payment stream that would be obtained by buying an interest rate swap.

In recent years dealers in the OTC derivatives market have shown a great deal of ingenuity in devising new hybrid instruments yielding an almost endless variety of payout patterns. Interested readers can find descriptions of other types of derivatives in Abken (1989), Burghardt et al. (1991), Smith and Smithson (1990), and Smith, Smithson, and Wilford (1989).

Hedging Uses of Interest Rate Collars Figure 9 illustrates the effect that buying a one-period, zero-cost collar has on the exposure to changes in market interest rates faced by a firm with outstanding variable-rate debt. The first panel depicts the firm's inherent or unhedged interest exposure, while the second panel illustrates the effect that buying a collar has on interest expense. Finally, the third panel combines the borrower's inherent exposure with the payoff to buying a collar to display the effect of a change in market interest rates on a hedged borrower's interest expense. Note that changes in market interest rates can only affect the hedged borrower's interest expense when the index rate varies between the floor and cap rates. Outside this range, the borrower's interest expense is completely hedged.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/e1dc8b6e-9689-4bc7-8b6b-9e918bb374f7/96a40a22f997cae1250f14982c84c5029421f251fe2e3f59b2526b1353b5aebf.jpg)  
a. Unhedged Exposure

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/e1dc8b6e-9689-4bc7-8b6b-9e918bb374f7/16e5225b75d426435ee33c88fd53d022d2a893177239791dd4def6f02c8b07db.jpg)  
The Effect of Buying an Interest Rate Collar  
on Interest Expense  
b. Collar Payment

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/e1dc8b6e-9689-4bc7-8b6b-9e918bb374f7/b490ef0d710e500c30f23787cb072c01ca4b2281e7efe63b5d5dabaa0241693c.jpg)  
FIGURE 9  
c. Hedged Exposure

# RISK AND REGULATION IN THE

# OVER-THE-COUNTER DERIVATIVES MARKET

Regulatory Concerns The OTC derivatives market is often characterized as unregulated because no federal regulatory agency oversees trading activity in this market, as the Commodity Futures Trading Commission (CFTC) does with futures markets or the Securities and Exchange Commission (SEC) does with securities markets.4 Yet it would be misleading to characterize the OTC derivatives market as completely unregulated. Many of the largest derivatives dealers are affiliates of commercial banks, which rank among the most heavily regulated of all firms. Bank regulatory agencies routinely conduct on-site examinations to review procedures in place for controlling risks at the institutions they supervise.

Additionally, regulations imposed by the federal banking agencies include minimum capital requirements designed to take account of credit risk exposure arising in connection with derivative instruments. While not subject to the comprehensive regulatory oversight applied to commercial banks, investment banks dealing in OTC derivatives are subject to SEC scrutiny. And the International Swap Dealers Association (ISDA)—an industry association organized by the major OTC derivatives dealers—sets standards for market practices and addresses the legal and public policy issues affecting the market.

Nonetheless, the rapid growth and sheer size of the OTC derivatives market has sparked debate over the risks posed by the growth of trading in derivative instruments and the appropriate scope of market regulation. When all types of derivative agreements are taken into account, including currency swaps, caps, floors, collars, and swaptions, the total notional principal amount of outstanding agreements exceeded \$4 trillion at the end of 1991, with derivatives dealers acting as middlemen to most transactions. Much of the trading activity in this market takes place between a relatively small number of large dealers, resulting in an interdependent web of obligations among those dealers. Unlike exchange-traded derivatives such as futures contracts and futures options, where the exchange clearinghouses guarantee contract performance through a system of margin requirements, daily settlement of gains and losses, and the backing of the capital of clearing member firms, OTC derivative instruments are bilateral arrangements that carry no independent third-party guarantee. As a result, counterparties to OTC instruments face the risk of default, known as counterparty credit risk. Moreover, the absence of contract standardization means that OTC derivatives tend to be less liquid than exchange-traded derivatives, which can make it difficult to execute transactions in periods of extreme price volatility or when a counterparty's credit standing is questioned.

A recent joint study by the three federal banking agencies examined the risks posed by the growth of trading in OTC derivatives (Board of Governors of the Federal Reserve System, Federal Deposit Insurance Corporation, and Office of the Comptroller of the Currency 1993). The study found that risks associated with OTC derivatives differed little from the risks traditionally borne by financial intermediaries. Although it did identify a number of concerns, the study concluded that trading in derivative instruments has not contributed to the overall fragility of the financial system and does not pose undue risks for organizations active in this market. To the contrary, it cited at least one instance—namely, the period of exchange rate turbulence in European currencies in September of 1992—where it concluded that foreign currency markets were not likely to have performed as well as they did during the crisis without the existence of foreign currency derivatives that enabled financial institutions to manage their currency positions.

The joint study identified six different types of risks in connection with derivative instruments: credit risk, market risk, liquidity risk, settlement risk, operating risk, and aggregation risk. As noted earlier, much of the concern over the growth of the market has centered around the issue of counterparty credit risk because of the sheer size of the market and the size of credit exposures

borne by dealers. Because derivative instruments tie together so many different markets around the world, regulators have expressed concerns that aggregation, or interconnection risk, might make it difficult to contain a financial crisis to keep it from spreading to other markets. The remainder of this chapter discusses some of the risks associated with OTC derivatives and the legal, regulatory, and market arrangements that have developed to deal with such risks.

# Counterparty Credit Risk

Measuring the Credit Risk Exposure of an FRA The credit risk exposure associated with an FRA, or any other derivative instrument for that matter, differs from that of a debt instrument because an FRA is not a funding transaction and therefore involves no exchange of principal. At its inception the value of an FRA is zero to both parties, so there is no initial credit risk. Potential credit risk is bilateral: a party to an FRA is exposed to credit risk when the value of the agreement becomes positive to him or her, and the value of an FRA can change so as to gain value to either party. Unlike a loan agreement, where financial distress on the part of a borrower always exposes the lender to default risk, financial distress on the part of an FRA counterparty does not necessarily expose the other counterparty to the risk of default. A financially distressed firm has no incentive to default on an agreement that has positive value to it—and even if such a counterparty were to default, the nondefaulting party would suffer no loss.

Since an FRA involves no exchange of principal, potential credit risk exposure is a small fraction of the notional principal amount of the agreement. Credit risk exposure is determined by the value of the FRA, which corresponds to the cost of replacing the FRA. To illustrate, recall the earlier example of a 1x4 FRA with a notional principal of  \$1 million and a forward rate of 5 percent. If market interest rates rise by 50 basis points immediately after the agreement is negotiated, the value of the FRA to the buyer is just the current present value of\$ 1,250 (50 basis points x \$25 per basis point), or

$$
\$ 1,229.51 = \$ 1,250 / [1 + 0.050(120 / 360)].
$$

This calculation determines the value of the agreement exactly 30 days before its scheduled settlement, or maturity date. The credit risk exposure borne by the FRA buyer in this example is just over 1/10 of 1 percent of the notional principal amount of the agreement.

Measuring the Credit Risk Exposure of an Interest Rate Swap A swap counterparty's credit risk exposure is determined by the cost of replacing the agreement in the event of a default. The cost of obtaining a replacement swap is determined by the difference between the All-In-Cost of the old swap and the AIC on a replacement swap. As an illustration, consider the case of a fixed rate payer in a

swap with one year left to maturity and a 7 percent AIC. If the floating-rate payer defaults when the prevailing market rate on a one-year replacement swap is 8 percent, the nondefaulting party will be required to pay an extra 1 percent per year on the notional principal to replace the swap. The replacement value of the swap is just the net present value of the difference in interest payments.

In discussing swap valuation methods it was useful to view a swap as an implicit mutual lending arrangement in which the counterparties exchanged loans indexed to two different interest rates. In looking at credit risk exposure, however, it can be useful to view a swap as a bundle of FRAs, all with forward rates equal to the All-In-Cost of the swap. Thus, the swap in the above example can be viewed as a combination of a 0x6 FRA and a 6x12 FRA, each with a forward rate of 7 percent. The replacement cost of the swap is just equal to the value of the two component FRAs when the underlying index rate is 8 percent.

As with FRAs, the potential credit risk exposure of an interest rate swap typically is a small fraction of the notional principal amount of the agreement. By one estimate, the expected lifetime credit exposure associated with an interest rate swap varies from 0.002 percent of the notional principal for a swap with a one-year maturity to 4.5 percent for a swap with a ten-year maturity (Simons 1989).

Credit Risk Exposure of Caps, Floors, and Collars Sellers of caps and floors face no credit risk, since neither type of agreement requires the buyer to make any payments other than the initial premium. But cap and floor buyers face the risk of nonperformance on the part of the seller any time a cap or floor goes "in-the-money"—that is, any time the seller is required to make payments to the buyer. Since a collar involves a short position in a floor and a long position in a cap, it can expose both the buyer and seller to counterparty credit risk.

The credit risk exposure faced by the buyer of an interest rate cap can be compared to the risk exposure of a fixed-rate payer in an interest rate swap. In both cases, the buyers face the risk that the seller will default when interest rates rise. Similarly, the buyer of an interest rate floor faces a credit risk exposure analogous to that of a floating-rate payer, or seller, of an interest rate swap. The total credit risk exposure in each case is determined by the cost of buying a replacement cap or floor.

Netting Arrangements When dealers first began acting as intermediaries in swap agreements the risk associated with each swap was accounted for separately. As the market grew, swap dealers found themselves parties to multiple agreements with the same counterparty. Concern over their growing aggregate exposure led many dealers to adopt "master" agreements that treated all their transactions with a given counterparty as supplements to a single consolidated agreement. These master agreements gave swap counterparties the right to terminate all supplemental swap agreements in the event of default on any one of the swaps. The advent

of the master agreement represented an attempt by swap dealers to limit the credit risk exposure with any single counterparty to the net value of all swaps with that counterparty. Today virtually all OTC derivatives utilize a standardized master agreement designed by the International Swap Dealers Association (Gooch and Pergam 1990).

The Status of OTC Derivatives Under Bankruptcy Law Before the enactment of recent amendments to the Bankruptcy Code, there was some question as to whether master swap agreement netting provisions would be legally enforceable in the event of bankruptcy. The U.S. Bankruptcy Code grants a firm in bankruptcy proceedings an "automatic stay" from the claims of its creditors. The automatic stay allows a bankrupt firm to postpone scheduled debt payments and overrides most other contractual obligations pending the resolution of all claims against the firm. Thus, although virtually all lending agreements give creditors the right to demand accelerated repayment of a loan in the event of a default on a scheduled payment, default inevitably delays repayment in practice. Often, creditors of the bankrupt firm receive only a fraction of the amounts owed them even if the firm ultimately emerges from bankruptcy proceedings as a reorganized entity. Swap market participants faced the risk that the Bankruptcy Courts might enforce the automatic stay against swap agreements, making the netting provisions of the ISDA master swap agreement unenforceable. Nondefaulting counterparties would then face the risk that a bankruptcy trustee might selectively default only on swaps having a negative value to a bankrupt counterparty, a practice known as "cherry picking."

Public Law 101-311, enacted on June 25, 1990, amended the Bankruptcy Code to exempt swap agreements executed under a single master agreement such as the ISDA master agreement from the automatic stay normally applicable to creditors of a bankrupt firm. The amendments were enacted to make the netting provisions of the ISDA master swap agreement enforceable in the event of bankruptcy. The Bankruptcy Code amendments also authorize nondefaulting swap counterparties to utilize any collateral posted in connection with a swap agreement to offset the net amount owed by a bankrupt counterparty (Rogers 1990). In this respect, the law treats OTC derivatives analogously to exchange-traded futures contracts.<sup>8</sup> These provisions greatly mitigate the potential loss faced by swap counterparties when the parties involved have multiple agreements with one another.

The Status of Swap Agreements Under Banking Law Commercial banks and thrift institutions are not subject to the provisions of the Bankruptcy Code. Instead, bank failure resolution is governed by federal and state banking laws, which

gives the Federal Deposit Insurance Corporation (FDIC) and the Resolution Trust Corporation (RTC) (in the case of certain savings and loan institutions) considerable discretion in dealing with failing federally insured depository institutions. The FDIC and RTC may act in the capacity of either a conservator or a receiver. An institution placed in conservatorship is not declared legally insolvent. It continues its normal business operations under the close scrutiny of federal regulators pending resolution of its financial difficulties. Institutions in conservatorship are either returned to private sector control, through a sale or merger, or they are eventually declared insolvent. When a federally insured depository institution is declared legally insolvent either the FDIC or RTC becomes the receiver for the institution. Regulators may resolve bank failures either through a "purchase and assumption" transaction in which the failed institution is taken over by another bank or thrift or, less often, through liquidation.[9]

The Financial Institutions Reform, Recovery, and Enforcement Act of 1989 (FIRREA) contains provisions similar to the netting provisions of the Bankruptcy Code requiring the receiver of a failed bank or conservator of a failing bank to treat all supplemental swap agreements executed under a single master agreement as a single contract. In the event of a default or liquidation of a bank or thrift, the institution's counterparties maintain the right to accelerate repayment of all swap agreements made under a single master agreement. Counterparties do not have an automatic right to terminate existing swap agreements when an institution is placed into conservatorship, however, because an institution in conservatorship has not legally failed (although they do retain the right to demand accelerated repayment in the event of a default or breach of another covenant). FIRREA gives bank regulators the express right to transfer all derivative instruments covered by a single master agreement, along with other bank assets, to another institution, either when the institution is in conservatorship or in the case of a purchase and assumption transaction. But in this latter case the master agreement and all its supplements must be treated as a single agreement and transferred together with all applicable collateral. Thus, the law discourages federal regulators from cherry picking among individual OTC agreements that are part of a larger master agreement.[10] Nondefaulting counterparties still face the risk that their agreements might be assigned to a counterparty with a relatively weak credit standing, however.

Although recent legislation has reduced the legal risks faced by domestic counterparties, derivatives dealers with exposures to counterparties outside of the United States still face risks arising from the uncertain legal status of netting arrangements under foreign laws. At present, ISDA is working with authorities

in other countries to enact bankruptcy legislation resembling the recent Bankruptcy Code amendments enacted in the United States. Until such legislation is enacted, however, internationally active OTC derivatives dealers face considerable legal risk.

Aggregation or Interconnection Risk Aggregation or interconnection risk refers to the risk that a disruption in one market, caused by the default of a major institution or some other event, might cause widespread difficulties throughout the OTC derivatives market or even spread to other financial markets. Market liquidity risk is one source of interconnection risk. OTC derivatives dealers operate in many different markets at once. They must often execute complex, multi-legged transactions to create custom-tailored instruments for their customers while attempting to hedge the resulting exposure to market risk. The successful execution of such operations depends on the ability to complete a number of transactions in different markets almost simultaneously. But experience shows that market liquidity can evaporate quickly, especially in times of financial stress when market participants have reason to question the creditworthiness of potential counterparties. Reduced liquidity can make it difficult for a dealer to hedge its exposure to market price risk or, in the event of a default by a counterparty, make obtaining a replacement swap a costly proposition.

Counterparty credit risk can also be a source of aggregation risk because such a large fraction of trading in OTC derivatives takes place between the dealers themselves. The default of a single major dealer could have a significant effect on the outstanding positions of other major dealers. In addition to potential losses from credit risk exposures, a default by a major derivatives dealer would leave other dealers exposed to considerable price risk. Dealers use derivatives both to hedge their outstanding commitments to other OTC counterparties as well as other asset holdings. These dealers would need to rebalance their portfolios, either by buying or selling new derivative instruments or by quickly selling existing asset holdings. The resulting flurry of activity might conceivably disrupt not only the OTC derivatives market, but other markets as well.

To date, losses incurred by counterparties to OTC derivatives have yet to even approach the magnitude of losses incurred in the course of more traditional lending and investment activities. Worth noting in this regard is that financial markets have survived at least one default by a major derivatives dealer—that of Drexel Burnham Lambert in 1990—without serious disruption, although it has certainly provided headaches for Drexel's former counterparties. Recent legislation recognizing netting arrangements was designed to help contain the consequences of a default by a major derivatives dealer in the United States, although, as noted earlier, other countries have been slow to enact such legislation.

Market Arrangements for Controlling Risks Managing the credit risk associated with a position in an instrument such as an interest rate swap requires credit evaluation skills of the type commonly associated with bank lending. Thus,

as the swaps market evolved into a dealer market where financial intermediaries assumed the role of counterparty to the end users of swap agreements, commercial banks, which have traditionally specialized in credit risk evaluation and have the capital reserves necessary to support credit risk management, came to dominate the market for swaps and other OTC derivatives. Only in cases where a counterparty is deemed a poor credit risk are performance bonds, such as margin requirements of the type employed by futures exchanges, used to substitute for credit evaluation. When performance bonds are used, the agreement often provides for the periodic settlement of changes in the value of a derivative instrument using a process resembling the daily marking-to-market of futures contracts, although settlement generally takes place at less frequent intervals with OTC derivatives (Smith, Smithson, and Wakeman 1986).

The widely publicized financial difficulties of many firms and banks in recent years has made market participants sensitive to the issue of counterparty credit risk. As a result, dealers with less than AA credit ratings have found it increasingly difficult to trade in OTC derivatives. The heavy loan losses and resulting financial difficulty experienced by many commercial banks in recent years has hampered the ability of such institutions to compete in this market. At the same time, a number of investment banks have formed separately capitalized subsidiaries so as to enhance their credit standing and remain competitive in the derivatives market.[11] Thus, market discipline has had the salutary effect of restricting the activities of less creditworthy counterparties.

# CONCLUDING COMMENTS

The evolution of the over-the-counter derivatives market has revolutionized the nature of financial intermediation in money markets in a span covering a little more than a decade. Along with the benefits derivatives offer firms in managing cash flows, however, the rapid growth of the market has raised new concerns for regulators and policymakers. Industry spokesmen argue that existing market arrangements are adequate to address such concerns, a view increasingly shared by regulators and policymakers.[12] The development of the ISDA master agreement in recent years, along with recent changes in banking laws and in the U.S. Bankruptcy Code, has gone far to minimize the potential for widespread market disruption that could result from a default on the part of a major dealer in the swaps market. And concerns about counterparty credit risk have led market participants themselves to limit the activities of dealers with less than outstanding credit ratings.

# REFERENCES

Abken, Peter A. "Globalization of Stock, Futures, and Options Markets," Federal Reserve Bank of Atlanta Economic Review, vol. 76 (July/August 1991), pp. 1-22.  
"Beyond Plain Vanilla: A Taxonomy of Swaps," Federal Reserve Bank of Atlanta Economic Review, vol. 76 (March/April 1991), pp. 12-29.  
"Interest-Rate Caps, Collars, and Floors," Federal Reserve Bank of Atlanta Economic Review, vol. 74 (November/December 1989), pp. 2-24.  
Bank for International Settlements. Recent Developments in International Interbank Relations. Basle, Switzerland: Bank for International Settlements, 1992.  
Beckstrom, Rod A. "Fundamental Models for Pricing Swaps," in Robert J. Schwartz and Clifford W. Smith, Jr., eds., The Handbook of Currency and Interest Rate Risk Management. New York: New York Institute of Finance, 1990.  
Board of Governors of the Federal Reserve System, Federal Deposit Insurance Corporation, and Office of Comptroller of the Currency. "Derivative Product Activities of Commercial Banks," Joint study conducted in response to questions posed by Senator Riegle on derivative products. January 27, 1993.  
Brown, Keith C., and Donald J. Smith. "Plain Vanilla Swaps: Market Structures, Applications, and Credit Risk," in Carl R. Beidleman, ed., *Interest Rate Swaps*. Homewood, Ill.: Business One Irwin, 1990.  
Burghardt, Galen, Belton, Lane, Luce, and McVey. Eurodollar Futures and Options. Chicago: Probus Publishing Company, 1991.  
Chew, Lillian. "Judgement of Salomon," Risk, vol. 6 (March 1993), pp. 8-9.  
"Kings of the Road," Risk, vol. 5 (September 1992), pp. 94-98.  
Corrigan, E. Gerald. "Painful Period Has Set Stage for Banking Rebound," American Banker, February 3, 1992, pp. 12-13.  
Dattatreya, Ravi E. "Interest Rate Swaps," The 1992 Dictionary of Derivatives, pp. 31-35. Supplement to the June 1992 issue of Euromoney. London: Euromoney Publications PLC, 1992.  
Dotsey, Michael, and Anatoli Kuprianov. "Reforming Deposit Insurance: Lessons from the Savings and Loan Crisis," Federal Reserve Bank of Richmond Economic Review, vol. 76 (March/April 1990), pp. 3-28.  
Gooch, Anthony C., and Albert S. Pergam. "United States and New York Law," in Robert J. Schwartz and Clifford W. Smith, Jr., eds., The Handbook of Currency and Interest Rate Risk Management. New York: New York Institute of Finance, 1990.  
Grabbe, J. Orlin. International Financial Markets, 2d ed. New York: Elsevier, 1991.  
Hansell, Saul, and Kevin Muehring. "Why Derivatives Rattle the Regulators," Institutional Investor, September 1992, pp. 49-62.  
Iben, Benjamin. "Interest Rate Swap Valuation," in Carl R. Beidleman, ed., *Interest Rate Swaps*. Homewood, Ill.: Business One Irwin, 1990.

Kahle, Jeff. "Caps and Floors," The 1992 Dictionary of Derivatives, pp. 6-8. Supplement to the June 1992 issue of Euromoney. London: Euromoney Publications PLC, 1992.  
Macfarlane, John, Daniel R. Ross, and Janet Showers. "The Interest Rate Swap Market: Yield Mathematics, Terminology, and Conventions," in Carl R. Beidleman, ed., *Interest Rate Swaps*. Homewood, Ill.: Business One Irwin, 1990.  
Norfield, Anthony. "Forward Rate Agreements," The 1992 Dictionary of Derivatives, pp. 25-27. Supplement to the June 1992 issue of Euromoney. London: Euromoney Publications PLC, 1992.  
Peltz, Michael. "Wall Street's Triple-A for Effort," Institutional Investor, vol. 27 (May 1993), pp. 89-92.  
Phillips, Susan M. "Challenges Posed by OTC Derivatives." Remarks of Susan M. Phillips, Member, Board of Governors of the Federal Reserve System, at the Tenth Annual Meeting of the National Futures and Options Society, December 3, 1992.  
Rogers, William P., Jr. "Regulation of Swaps in the United States," in Robert J. Schwartz and Clifford W. Smith, Jr., eds., The Handbook of Currency and Interest Rate Risk Management. New York: New York Institute of Finance, 1990.  
Shale, Tony. "How ISDA Got the Message," Risk, vol. 6 (April 1993), pp. 7-8.  
Simons, Katerina. "Measuring Credit Risk in Interest Rate Swaps," Federal Reserve Bank of Boston New England Economic Review, November/December 1989, pp. 29-38.  
Smith, Clifford W., Jr., and Charles W. Smithson. "Financial Engineering: An Overview," in Clifford W. Smith, Jr. and Charles W. Smithson, eds., The Handbook of Financial Engineering. New York: Harper Business, 1990.  
and Lee Macdonald Wakeman. ". The Market for Interest Rate Swaps," Financial Management, vol. 17 (1988), pp. 34-44.  
"The Evolving Market for Swaps," Midland Corporate Finance Journal, vol. 3 (Winter 1986), pp. 20-32.  
Smith, Clifford W., Jr., Charles W. Smithson, and D. Sykes Wilford. "Managing Financial Risk," Journal of Applied Corporate Finance, vol. 1 (1989), pp. 27-48.  
Wall, Larry D., and John J. Pringle. "Interest Rate Swaps: A Review of the Issues," Federal Reserve Bank of Atlanta Economic Review, vol. 73 (November/December 1988), pp. 22-37.  
Williams, Jeffrey. The Economic Function of Futures Markets. Cambridge, England: Cambridge University Press, 1986.
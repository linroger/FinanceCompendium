# A Teaching Note on Pricing and Valuing Interest Rate Swaps Using LIBOR and OIS Discounting

April 2012

Donald J. Smith

Associate Professor of Finance

Boston University School of Management

595 Commonwealth Avenue

Boston, MA 02215

Phone: 617-353-2037

Email: donsmith@bu.edu

The author acknowledges and thanks James Adams, Don Chance, and Yu Wang for their useful comments and corrections to an earlier draft of this note.

# A Teaching Note on Pricing and Valuing Interest Rate Swaps Using LIBOR and OIS Discounting

The intent of this note is to extend the discussion of pricing and valuing interest rate swaps that appears in chapter eight of my book, Bond Math: The Theory Behind the Formulas (Wiley Finance, 2011), to include recent developments in the use of OIS (Overnight Indexed Swap) discounting. In Bond Math, I use the traditional method of bootstrapping implied spot (i.e., zero-coupon) swap rates, using either the LIBOR forward curve or fixed rates on a series of "at-market" interest rate swaps that have a market value of zero. In the last few years, swap dealers have started to use implied spot rates and corresponding discount factors that have been bootstrapped from fixed rates observed in the OIS market. This note explains why and how this is being done using simplified numerical examples based on the Bond Math chapter.

Three important calculations for interest rate swaps to be covered are: (1) pricing an at-market (or par) swap, (2) valuing an off-market swap, and (3) inferring the forward curve that is consistent with a sequence of at-market swaps. I use "pricing" to mean determining the fixed rate at inception and "valuing" to mean determining the market value thereafter. To keep the examples simple, I neglect transactions costs, use a 30/360 day-count convention, and assume that the pricing and valuation are on a settlement date. However, the same techniques can be used to deal with bid-ask spreads, more common day-count conventions such as actual/360 and actual/365, and between-settlement-date calculations.

Starting with the LIBOR forward curve, pricing an at-market swap entails "monetizing" each forward rate by multiplying by the notional principal and day-count

fraction and then discounting the cash flows. The idea is to derive a uniform fixed rate such that when it is monetized using the same notional principal and day-count fractions, the same present value is obtained. Therefore, an at-market swap, which is also called a "par" swap, has an initial value of zero by construction. The swap fixed rate is an "average" of the LIBOR forward curve, not a simple arithmetic or geometric average, but an average in the time-value-of-money sense in that the two legs of the swap have the same present value.

An obvious challenge is to obtain the LIBOR forward curve needed to price the swap because it generally is not observed. It helps if there are actively traded futures contracts on the reference rate, such as the Eurodollar contract at the CME Group in Chicago. Its trading results provide data on 3-month LIBOR for quarterly delivery dates out to ten years. However, a convexity adjustment to the observed futures rate is needed to get the forward rate. That requires an interest rate term structure model and assumptions about the future rate volatility and correlations across points along the yield curve. The need for this adjustment, which is discussed in greater detail in Bond Math, arises because of daily mark-to-market and settlement practices on exchange-traded futures contracts.

Swap valuation involves: (1) comparing the contractual fixed rate to that on an at-market swap having otherwise matching terms, (2) getting an annuity for the difference in the fixed rates, and (3) calculating the present value of the annuity using a sequence of discount factors corresponding to the settlement dates. An alternative approach is to interpret the interest rate swap as a long/short combination of a bond paying the fixed rate on the swap and a floating-rate bond paying the money market reference rate, e.g., 3-

month LIBOR. In the traditional methodology for swap valuation, the implicit floater maintains its par value on rate-reset dates while the fixed-rate bond can be valued at a premium or discount. The difference in the prices of these two bonds is the value of the interest rate swap. With OIS discounting, the result that the implicit floating-rate bond paying LIBOR is priced at par value no longer holds.

It is useful to infer the LIBOR forward curve from observed fixed rates on at-market swaps. This implied forward curve, also called the projected curve, is used to price and value non-standard contracts. For example, a "vanilla" interest rate swap has a constant notional principal and an immediate start date. Non-vanilla varieties can have varying notional principals and deferred start dates. Pricing such swaps entails getting the "average", perhaps a "weighted average" if the notional principal varies, of the relevant segment of the forward curve. As shown later in the paper, the implied LIBOR forward curve calculated for OIS discounting is needed to value collateralized interest rate swaps using the combination-of-bonds approach.

The first section of the note repeats the examples of pricing and valuing interest rate swaps in chapter eight of Bond Math and uses the LIBOR swap curve for discounting. In addition to showing the equations that produce the implied spot rates, the corresponding discount factors are calculated. The second section explains OIS discounting and identifies its impact on the swap values and the implied forward curve. The third section generalizes the numerical examples for practical applications in pricing and valuing swaps using spreadsheet analysis.

# The Traditional Method to Price and Value Interest Rate Swaps

Suppose the sequence of fixed rates on at-market interest rate swaps is:  $1.04\%$  for 6 months,  $1.58\%$  for 9 months,  $2.12\%$  for 12 months,  $2.44\%$  for 15 months,  $2.76\%$  for 18 months,  $3.08\%$  for 21 months and  $3.40\%$  for 24 months. These swaps are for quarterly settlements tied to 3-month LIBOR and assume the 30/360 day-count convention. Current 3-month LIBOR is  $0.50\%$ . The assumed 30/360 day-counts for all rates is to simplify the exposition—in practice, actual/360 and actual/365 are common.

The implied spot rates given this sequence of observed (or, perhaps, interpolated) fixed rates are determined via the standard bootstrapping technique using the combination-of-bonds interpretation of a swap. That is, the implicit fixed-rate bond is priced at par value (100) and redeems that amount at maturity. Each quarterly coupon payment on this bond is the annual swap fixed rate times 100, and then divided by four because there are assumed to be 90 days in each quarter of the 360-day year. The 6-month implied spot rate is the solution for  $Spot_{0x6}$  in this expression:

$$
1 0 0 = \frac {1 . 0 4 / 4}{\left(1 + \frac {0 . 0 0 5 0}{4}\right)} + \frac {1 . 0 4 / 4 + 1 0 0}{\left(1 + \frac {\text {S p o t} _ {0 x 6}}{4}\right) ^ {2}}, \quad \text {S p o t} _ {0 x 6} = 0. 0 1 0 4 0 7
$$

The first cash flow is discounted using current 3-month LIBOR. The result for  $Spot_{0x6}$  becomes an input in the solution for the "0x9" implied spot rate.

$$
1 0 0 = \frac {1 . 5 8 / 4}{\left(1 + \frac {0 . 0 0 5 0}{4}\right)} + \frac {1 . 5 8 / 4}{\left(1 + \frac {0 . 0 1 0 4 0 7}{4}\right) ^ {2}} + \frac {1 . 5 8 / 4 + 1 0 0}{\left(1 + \frac {\text {S p o t} _ {0 x 9}}{4}\right) ^ {3}}, \quad \text {S p o t} _ {0 x 9} = 0. 0 1 5 8 2 9
$$

These are the remaining equations for the bootstrapped implied spot curve.

$$
\begin{array}{l} 1 0 0 = \frac {2 . 1 2 / 4}{\left(1 + \frac {0 . 0 0 5 0}{4}\right)} + \frac {2 . 1 2 / 4}{\left(1 + \frac {0 . 0 1 0 4 0 7}{4}\right) ^ {2}} + \frac {2 . 1 2 / 4}{\left(1 + \frac {0 . 0 1 5 8 2 9}{4}\right) ^ {3}} + \frac {2 . 1 2 / 4 + 1 0 0}{\left(1 + \frac {S p o t _ {0 x 1 2}}{4}\right) ^ {4}}, \\ S p o t _ {0 x 1 2} = 0. 0 2 1 2 7 2 \\ \end{array}
$$

$$
\begin{array}{l} 1 0 0 = \frac {2 . 4 4 / 4}{\left(1 + \frac {0 . 0 0 5 0}{4}\right)} + \frac {2 . 4 4 / 4}{\left(1 + \frac {0 . 0 1 0 4 0 7}{4}\right) ^ {2}} + \frac {2 . 4 4 / 4}{\left(1 + \frac {0 . 0 1 5 8 2 9}{4}\right) ^ {3}} + \frac {2 . 4 4 / 4}{\left(1 + \frac {0 . 0 2 1 2 7 2}{4}\right) ^ {4}} \\ + \frac {2 . 4 4 / 4 + 1 0 0}{\left(1 + \frac {\text {S p o t} _ {0 x 1 5}}{4}\right) ^ {5}}, \quad \text {S p o t} _ {0 x 1 5} = 0. 0 2 4 5 0 6 \\ \end{array}
$$

$$
\begin{array}{l} 1 0 0 = \frac {2 . 7 6 / 4}{\left(1 + \frac {0 . 0 0 5 0}{4}\right)} + \frac {2 . 7 6 / 4}{\left(1 + \frac {0 . 0 1 0 4 0 7}{4}\right) ^ {2}} + \frac {2 . 7 6 / 4}{\left(1 + \frac {0 . 0 1 5 8 2 9}{4}\right) ^ {3}} + \frac {2 . 7 6 / 4}{\left(1 + \frac {0 . 0 2 1 2 7 2}{4}\right) ^ {4}} \\ + \frac {2 . 7 6 / 4}{\left(1 + \frac {0 . 0 2 4 5 0 6}{4}\right) ^ {5}} + \frac {2 . 7 6 / 4 + 1 0 0}{\left(1 + \frac {\text {S p o t} _ {0 x 1 8}}{4}\right) ^ {6}}, \quad \text {S p o t} _ {0 x 1 8} = 0. 0 2 7 7 5 6 \\ \end{array}
$$

$$
\begin{array}{l} 1 0 0 = \frac {3 . 0 8 / 4}{\left(1 + \frac {0 . 0 0 5 0}{4}\right)} + \frac {3 . 0 8 / 4}{\left(1 + \frac {0 . 0 1 0 4 0 7}{4}\right) ^ {2}} + \frac {3 . 0 8 / 4}{\left(1 + \frac {0 . 0 1 5 8 2 9}{4}\right) ^ {3}} + \frac {3 . 0 8 / 4}{\left(1 + \frac {0 . 0 2 1 2 7 2}{4}\right) ^ {4}} \\ + \frac {3 . 0 8 / 4}{\left(1 + \frac {0 . 0 2 4 5 0 6}{4}\right) ^ {5}} + \frac {3 . 0 8 / 4}{\left(1 + \frac {0 . 0 2 7 7 5 6}{4}\right) ^ {6}} + \frac {3 . 0 8 / 4 + 1 0 0}{\left(1 + \frac {\text {S p o t} _ {0 x 2 1}}{4}\right) ^ {7}}, \quad \text {S p o t} _ {0 x 2 1} = 0. 0 3 1 0 2 5 \\ \end{array}
$$

$$
\begin{array}{l} 1 0 0 = \frac {3 . 4 0 / 4}{\left(1 + \frac {0 . 0 0 5 0}{4}\right)} + \frac {3 . 4 0 / 4}{\left(1 + \frac {0 . 0 1 0 4 0 7}{4}\right) ^ {2}} + \frac {3 . 4 0 / 4}{\left(1 + \frac {0 . 0 1 5 8 2 9}{4}\right) ^ {3}} + \frac {3 . 4 0 / 4}{\left(1 + \frac {0 . 0 2 1 2 7 2}{4}\right) ^ {4}} \\ + \frac {3 . 4 0 / 4}{\left(1 + \frac {0 . 0 2 4 5 0 6}{4}\right) ^ {5}} + \frac {3 . 4 0 / 4}{\left(1 + \frac {0 . 0 2 7 7 5 6}{4}\right) ^ {6}} + \frac {3 . 4 0 / 4}{\left(1 + \frac {0 . 0 3 1 0 2 5}{4}\right) ^ {7}} + \frac {3 . 4 0 / 4 + 1 0 0}{\left(1 + \frac {\text {S p o t} _ {0 x 2 4}}{4}\right) ^ {8}}, \\ \end{array}
$$

$$
S p o t _ {0 x 2 4} = 0. 0 3 4 3 1 6
$$

All of the reported results for these and the following equations are calculated on a

spreadsheet to preserve accuracy in the bootstrapping process, which is very sensitive to

rounding. However, the rounded results are shown in the equations for the purpose of consistent exposition.

Each implied spot rate converts to a discount factor  $(DF)$ , starting with current 3-month LIBOR.

$$
D F _ {0 x 3} = \frac {1}{\left(1 + \frac {0 . 0 0 5 0}{4}\right)} = 0. 9 9 8 7 5 2
$$

$$
D F _ {0 x 6} = \frac {1}{\left(1 + \frac {0 . 0 1 0 4 0 7}{4}\right) ^ {2}} = 0. 9 9 4 8 1 7
$$

$$
D F _ {0 x 9} = \frac {1}{\left(1 + \frac {0 . 0 1 5 8 2 9}{4}\right) ^ {3}} = 0. 9 8 8 2 2 2
$$

$$
D F _ {0 x 1 2} = \frac {1}{\left(1 + \frac {0 . 0 2 1 2 7 2}{4}\right) ^ {4}} = 0. 9 7 9 0 0 8
$$

$$
D F _ {0 x 1 5} = \frac {1}{\left(1 + \frac {0 . 0 2 4 5 0 6}{4}\right) ^ {5}} = 0. 9 6 9 9 2 3
$$

$$
D F _ {0 x 1 8} = \frac {1}{\left(1 + \frac {0 . 0 2 7 7 5 6}{4}\right) ^ {6}} = 0. 9 5 9 3 5 8
$$

$$
D F _ {0 x 2 1} = \frac {1}{\left(1 + \frac {0 . 0 3 1 0 2 5}{4}\right) ^ {7}} = 0. 9 4 7 3 5 2
$$

$$
D F _ {0 x 2 4} = \frac {1}{\left(1 + \frac {0 . 0 3 4 3 1 6}{4}\right) ^ {8}} = 0. 9 3 3 9 4 3
$$

Discount factors are particularly useful in spreadsheet analysis because a future cash flow needs only to be multiplied by the factor to obtain its present value.

The forward LIBOR curve that is consistent with these at-market swap fixed rates can be calculated from either the implied spot rates or the discount factors. The implied, or projected, 3-month forward rate between months 3 and 6 is denoted  $Rate_{3x6}$ ; the implied rate between months 12 and 15 is  $Rate_{12x15}$ . These are the results using the bootstrapped spot rates:

$$
\text {R a t e} _ {3 x 6} = \left(\frac {\left(1 + \frac {0 . 0 1 0 4 0 7}{4}\right) ^ {2}}{\left(1 + \frac {0 . 0 0 5 0 0 0}{4}\right) ^ {1}} - 1\right) * 4 = 0. 0 1 5 8 2 1
$$

$$
\text {R a t e} _ {6 x 9} = \left(\frac {\left(1 + \frac {0 . 0 1 5 8 2 9}{4}\right) ^ {3}}{\left(1 + \frac {0 . 0 1 0 4 0 7}{4}\right) ^ {2}} - 1\right) * 4 = 0. 0 2 6 6 9 4
$$

$$
\operatorname {R a t e} _ {9 x 1 2} = \left(\frac {\left(1 + \frac {0 . 0 2 1 2 7 2}{4}\right) ^ {4}}{\left(1 + \frac {0 . 0 1 5 8 2 9}{4}\right) ^ {3}} - 1\right) * 4 = 0. 0 3 7 6 4 7
$$

$$
\text {R a t e} _ {1 2 x 1 5} = \left(\frac {\left(1 + \frac {0 . 0 2 4 5 0 6}{4}\right) ^ {5}}{\left(1 + \frac {0 . 0 2 1 2 7 2}{4}\right) ^ {4}} - 1\right) * 4 = 0. 0 3 7 4 6 8
$$

$$
\text {R a t e} _ {1 5 x 1 8} = \left(\frac {\left(1 + \frac {0 . 0 2 7 7 5 6}{4}\right) ^ {6}}{\left(1 + \frac {0 . 0 2 4 5 0 6}{4}\right) ^ {5}} - 1\right) * 4 = 0. 0 4 4 0 4 7
$$

$$
\operatorname {R a t e} _ {1 8 x 2 1} = \left(\frac {\left(1 + \frac {0 . 0 3 1 0 2 5}{4}\right) ^ {7}}{\left(1 + \frac {0 . 0 2 7 7 5 6}{4}\right) ^ {6}} - 1\right) * 4 = 0. 0 5 0 6 9 6
$$

$$
\text {R a t e} _ {2 1 x 2 4} = \left(\frac {\left(1 + \frac {0 . 0 3 4 3 1 6}{4}\right) ^ {8}}{\left(1 + \frac {0 . 0 3 1 0 2 5}{4}\right) ^ {7}} - 1\right) * 4 = 0. 0 5 7 4 2 7
$$

The same series of implied forward rates can be obtained using the discount factors.

$$
\text {R a t e} _ {3 x 6} = \left(\frac {0 . 9 9 8 7 5 2}{0 . 9 9 4 8 1 7} - 1\right) * 4 = 0. 0 1 5 8 2 1
$$

$$
\text {R a t e} _ {6 x 9} = \left(\frac {0 . 9 9 4 8 1 7}{0 . 9 8 8 2 2 2} - 1\right) * 4 = 0. 0 2 6 6 9 4
$$

$$
\text {R a t e} _ {9 x 1 2} = \left(\frac {0 . 9 8 8 2 2 2}{0 . 9 7 9 0 0 8} - 1\right) * 4 = 0. 0 3 7 6 4 7
$$

$$
\text {R a t e} _ {1 2 x 1 5} = \left(\frac {0 . 9 7 9 0 0 8}{0 . 9 6 9 9 2 3} - 1\right) * 4 = 0. 0 3 7 4 6 8
$$

$$
\text {R a t e} _ {1 5 x 1 8} = \left(\frac {0 . 9 6 9 9 2 3}{0 . 9 5 9 3 5 8} - 1\right) * 4 = 0. 0 4 4 0 4 7
$$

$$
\text {R a t e} _ {1 8 x 2 1} = \left(\frac {0 . 9 5 9 3 5 8}{0 . 9 4 7 3 5 2} - 1\right) * 4 = 0. 0 5 0 6 9 6
$$

$$
\text {R a t e} _ {2 1 x 2 4} = \left(\frac {0 . 9 4 7 3 5 2}{0 . 9 3 3 9 4 3} - 1\right) * 4 = 0. 0 5 7 4 2 7
$$

Suppose this sequence of implied forward rates is in fact the observed LIBOR forward curve and each is the fixed rate on a forward rate agreement (FRA) on 3-month LIBOR. An FRA is just a one-period interest rate swap; alternatively, a swap is a series

of FRAs. For example, a 3x6 FRA can be used to lock in  $1.5821\%$  for an exposure to 3-month LIBOR, three months into the future. A company that issues a floating-rate note tied to LIBOR can create a "synthetic" fixed-rate liability by entering a series of payoff-fixed FRAs or a pay-fixed interest rate swap. The difference is that the FRAs would fix rates that vary according to the shape of the LIBOR forward curve whereas the swap establishes the same fixed rate for each period.

The implied spot curve, and the corresponding discount factors, can be computed as the geometric average of the LIBOR forward rates in addition to being bootstrapped from the swap fixed rates. A few examples illustrate the process.

$$
\left(1 + \frac {0 . 0 0 5 0 0 0}{4}\right) * \left(1 + \frac {0 . 0 1 5 8 2 1}{4}\right) = \left(1 + \frac {\text {S p o t} _ {0 x 6}}{4}\right) ^ {2}, \quad \text {S p o t} _ {0 x 6} = 0. 0 1 0 4 0 7
$$

$$
\left(1 + \frac {0 . 0 1 0 4 0 7}{4}\right) ^ {2} * \left(1 + \frac {0 . 0 2 6 6 9 4}{4}\right) = \left(1 + \frac {\text {S p o t} _ {0 x 9}}{4}\right) ^ {3}, \quad \text {S p o t} _ {0 x 9} = 0. 0 1 5 8 2 9
$$

$$
\left(1 + \frac {0 . 0 1 5 8 2 9}{4}\right) ^ {3} * \left(1 + \frac {0 . 0 3 7 6 4 7}{4}\right) = \left(1 + \frac {\text {S p o t} _ {0 x 1 2}}{4}\right) ^ {4}, \quad \text {S p o t} _ {0 x 1 2} = 0. 0 2 1 2 7 2
$$

Notice again that the result from one calculation is used as an input in the next—that is the hallmark of the bootstrapping technique.

An at-market swap fixed rate is the "average" of the relevant segment of the LIBOR forward curve. Each forward rate is multiplied by the notional principal (assume it is 100) and by the day-count factor (which is 0.25 because of the assumed 30/360 convention). These cash flows are discounted using the implied spot rates corresponding to each time period. The 24-month swap fixed rate (SFR) is the uniform rate such that when it is

multiplied by 100 and by 0.25 and discounted using the same spot rates, its present value is equal to that of the forward curve. In sum,  $SFR$  is the solution to this expression:

$$
\begin{array}{l} \frac {0.5000 \% * 100 * 0.25}{\left(1 + \frac {0.005000}{4}\right) ^ {1}} + \frac {1.5821 \% * 100 * 0.25}{\left(1 + \frac {0.010407}{4}\right) ^ {2}} + \frac {2.6694 \% * 100 * 0.25}{\left(1 + \frac {0.015829}{4}\right) ^ {3}} + \frac {3.7647 \% * 100 * 0.25}{\left(1 + \frac {0.021272}{4}\right) ^ {4}} \\ + \frac {3.7468 \% * 100 * 0.25}{\left(1 + \frac {0.024506}{4}\right) ^ {5}} + \frac {4.4047 \% * 100 * 0.25}{\left(1 + \frac {0.027756}{4}\right) ^ {6}} + \frac {5.0696 \% * 100 * 0.25}{\left(1 + \frac {0.031025}{4}\right) ^ {7}} + \frac {5.7427 \% * 100 * 0.25}{\left(1 + \frac {0.034316}{4}\right) ^ {8}} \\ \frac {S F R * 1 0 0 * 0 . 2 5}{\left(1 + \frac {0 . 0 0 5 0 0 0}{4}\right) ^ {1}} + \frac {S F R * 1 0 0 * 0 . 2 5}{\left(1 + \frac {0 . 0 1 0 4 0 7}{4}\right) ^ {2}} + \frac {S F R * 1 0 0 * 0 . 2 5}{\left(1 + \frac {0 . 0 1 5 8 2 9}{4}\right) ^ {3}} + \frac {S F R * 1 0 0 * 0 . 2 5}{\left(1 + \frac {0 . 0 2 1 2 7 2}{4}\right) ^ {4}} \\ + \frac {S F R * 1 0 0 * 0 . 2 5}{\left(1 + \frac {0 . 0 2 4 5 0 6}{4}\right) ^ {5}} + \frac {S F R * 1 0 0 * 0 . 2 5}{\left(1 + \frac {0 . 0 2 7 7 5 6}{4}\right) ^ {6}} + \frac {S F R * 1 0 0 * 0 . 2 5}{\left(1 + \frac {0 . 0 3 1 0 2 5}{4}\right) ^ {7}} + \frac {S F R * 1 0 0 * 0 . 2 5}{\left(1 + \frac {0 . 0 3 4 3 1 6}{4}\right) ^ {8}} \\ \end{array}
$$

The result for the 24-month swap on 3-month LIBOR is that  $SFR = 3.400\%$ .

It is no surprise that the same swap fixed rate of  $3.400\%$  arises via the discount factors in a more compact equation.

$$
\begin{array}{l} (0.5000\% *100*0.25*0.998752) + (1.5821\% *100*0.25*0.994817) \\ + (2.6694 \% * 100 * 0.25 * 0.988222) + (3.7647 \% * 100 * 0.25 * 0.979008) \\ + (3.7468\% * 100 * 0.25 * 0.969923) + (4.4047\% * 100 * 0.25 * 0.959358) \\ + (5.0696 \% * 100 * 0.25 * 0.947352) + (5.7427 \% * 100 * 0.25 * 0.933943) \\ \end{array}
$$

The key idea in this calculation is that the LIBOR forward curve indicates the sequence of "hedge-able" rates whereby the hedges are carried out using FRAs or Eurodollar futures contracts. The no-arbitrage condition is that the present values of the two legs of the swap are the same so that the initial value is zero.

The intent of these numerical examples is to demonstrate that in the traditional method of pricing interest rate swaps, one can move seamlessly between the LIBOR forward, spot, and swap curves. One can start with the observed swap curve, i.e., the fixed rates on at-market (or par) interest rate swaps, and then bootstrap the implied spot and forward curves. As well, one could start with the observed forward curve and bootstrap the implied spot rates and the swap fixed rates. Of course, this flexibility rests on the assumption that the LIBOR-based implied spot rates are appropriate to discount future cash flows. That assumption becomes critical in calculating the market-to-market (MTM) value of an existing swap.

Suppose that a  $3.85\%$  fixed-rate, \$50 million notional principal, quarterly settlement interest rate swap on 3-month LIBOR has 12 months remaining. This swap might originally have had a tenor of five years and four years have gone by. Its MTM value is based on a comparison to the  $2.12\%$  fixed rate on the 12-month at-market swap. The annuity is the difference between the contractual and the current market fixed rates, times the notional principal and the day-count factor.

$$
(3.85\% -2.12\%)^{*}\mathbb{S}50,000,000^{*}0.25 = \\ 216,250
$$

This is the unambiguous aspect to the valuation problem. In principle (and neglecting the bid-ask spread), each counterparty could enter a "mirror swap" at  $2.12\%$  to eliminate any further exposure to LIBOR. The combination of the two swaps results in four quarterly

payments of \(216,250 from the fixed-rate payer to the fixed-rate receiver. Because the fixed rate on the MTM swap is lower than on the contractual rate, the "receiver" gains and the "payer" loses.

The ambiguous aspect to swap valuation arises in discounting the annuity. What are the correct spot rates (or discount factors)? An obvious choice is the sequence of bootstrapped implied spot rates. Then the value of the swap is \$856,523.

$$
\frac {\mathbb {S} 2 1 6 , 2 5 0}{\left(1 + \frac {0 . 0 0 5 0 0 0}{4}\right) ^ {1}} + \frac {\mathbb {S} 2 1 6 , 2 5 0}{\left(1 + \frac {0 . 0 1 0 4 0 7}{4}\right) ^ {2}} + \frac {\mathbb {S} 2 1 6 , 2 5 0}{\left(1 + \frac {0 . 0 1 5 8 2 9}{4}\right) ^ {3}} + \frac {\mathbb {S} 2 1 6 , 2 5 0}{\left(1 + \frac {0 . 0 2 1 2 7 2}{4}\right) ^ {4}} = \mathbb {S} 8 5 6, 5 2 3
$$

The bootstrapped discount factors give the same result, of course.

$$
\begin{array}{l} \left(\frac {\mathbb {S} 2 1 6 , 2 5 0 * 0 . 9 9 8 7 5 2}{\mathbb {S} 2 1 6 , 2 5 0 * 0 . 9 9 4 8 1 7}\right) + \left(\frac {\mathbb {S} 2 1 6 , 2 5 0 * 0 . 9 8 8 2 2 2}{\mathbb {S} 2 1 6 , 2 5 0 * 0 . 9 8 8 2 2 2}\right) \\ + (\$ 2 1 6, 2 5 0 * 0. 9 7 9 0 0 8) = \$ 8 5 6, 5 2 3 \\ \end{array}
$$

This interest rate swap is an asset worth \$856,523 to the fixed-rate receiver and a liability for the same amount to the fixed-rate payer.

The second approach to swap valuation is to interpret the contract as a long/short combination of floating-rate and fixed-rate bonds. The implicit  \$50 million, floating-rate bond pays interest quarterly based on 3-month LIBOR. By presumption, the unknown levels for future LIBOR can be hedged using FRAs or Eurodollar futures to lock in the sequence of forward rates. The present value of the cash flows is\$ 50 million.

$$
\begin{array}{l} (\$ 50,000,000 * 0.5000 \% * 0.25 * 0.998752) + (\$ 50,000,000 * 1.5821 \% * 0.25 * 0.994817) \\ + (\$ 50,000,000 * 2.6694 \% * 0.25 * 0.988222) + (\$ 50,000,000 * 3.7647 \% * 0.25 * 0.979008) \\ + (\$ 50,000,000 * 0. 9 7 9 0 0 8) = \$ 5 0,0 0 0,0 0 0 \\ \end{array}
$$

The implicit,  \$50 million, 3.85\% fixed-rate bond pays interest in the amount of\$ 481,250 each quarter. The value of this bond using the LIBOR discount factors is \$50,856,523 (calculated on a spreadsheet using the unrounded discount factors).

$$
\begin{array}{l} \left(\$ 4 8 1, 2 5 0 * 0. 9 9 8 7 5 2\right) + \left(\$ 4 8 1, 2 5 0 * 0. 9 9 4 8 1 7\right) + \left(\$ 4 8 1, 2 5 0 * 0. 9 8 8 2 2 2\right) \\ + (\$ 50, 4 8 1, 2 5 0 * 0. 9 7 9 0 0 8) = \$ 5 0, 8 5 6, 5 2 3 \\ \end{array}
$$

The value of the swap is just the difference in the bond prices, \$856,523.

$$
\$ 50,856,523 - \$ 50,000,000 = \$ 856,523
$$

The two key assumptions to this calculation of market value are: (1) the swap is not collateralized (or, if it is, the collateral is not considered in the valuation methodology), and (2) the fixed-rate payer is a "LIBOR-flat" borrower. The first assumption is the topic of the next section on OIS discounting; the second means that the owing counterparty, here the fixed-rate payer, has credit quality consistent with the banks that are used to establish the LIBOR index. Said differently, this counterparty can borrow funds for 12 months at LIBOR flat (meaning a margin of zero above the reference rate) on a quarterly payment floating-rate basis or at  $2.12\%$  fixed. In sum, these implied spot rates and discount factors are appropriate to get the present value of its future obligations. Usually, this corresponds to an investment-grade borrower having a quality rating of A+ to AA- on its debt.

Suppose instead that the fixed-rate payer is a financially distressed company that has had its debt liabilities downgraded to non-investment grade. If the fixed-rate receiver requested early termination of the swap, the payer would offer to settle the obligation for something less than  \$856,523. That counterparty to the contract would argue that the present value of the (unambiguous)\$ 216,250 annuity should be calculated with discount

factors that reflect its higher-than-LIBOR-flat or higher-than-2.12%-fixed 12-month cost of borrowed funds. In sum, the fair value of the swap would be overstated at \$856,523.

While using default-risk-adjusted discount factors is appropriate in principle for an early termination, it would be unwieldy for routine valuations carried out daily by swap dealers having a multitude of open contracts. The advantage to using the LIBOR swap curve is that there are good publically available data for a full range of maturities. Importantly, the bootstrapped numbers are "internal" to the valuation problem. In this traditional approach, one can start with either the LIBOR forward curve or fixed rates on at-market swaps and easily infer the implied spot rates and discount factors needed to value the swap book.

# Pricing and Valuing Interest Rate Swaps Using OIS Discounting

An important development in the interest rate swap market in recent years has been widespread use of collateralization to mitigate counterparty credit risk. When the market started in the 1980s, most swap contracts were unsecured and any imbalance in the credit standings between the two counterparties was “priced into” the fixed rate or managed by having the weaker party get some type of credit enhancement. In the 1990s, after the introduction of the CSA (Credit Support Annex) to the standard ISDA (International Swap and Derivatives Association) master agreement, posting cash collateral when the market value of the swap is negative became more common and nowadays is the industry norm.

The main implication of collateralization is that the credit risk on the swap transaction becomes minimal, similar to exchange-traded futures contracts. To be sure,

futures require initial margin accounts by both counterparties to provide an additional buffer to potential default loss. Bilateral CSAs usually entail a zero threshold, meaning only the counterparty having the negative market value for the swap posts collateral, so there still is some "tail" risk of default. In any case, minimal credit risk on the swap implies that the discount factors to get the present value of the annuity for the difference between the contractual and MTM fixed rates, which remains unambiguous, should be based on risk-free interest rates or, at least, nearly risk-free from the perspective of the rating agencies.

Why then is it not market practice to use actively traded Treasury notes and bonds, for which there are ample price data, to get the discount factors? The problem is that Treasury yields are in general too low for this purpose. Treasuries are by far the most liquid debt security in the fixed-income market and are in high demand as collateral for the repo transactions. Exemption from state and local income taxes lowers their yields even more. Also, Treasury yields are more volatile than swap rates because they are the first asset class to absorb fluctuations in demand and supply arising from international capital flows, especially during flights to quality.

The ideal discount factors to value collateralized derivatives contracts would come from traded securities having the same liquidity, tax status, and volatility as interest rate swaps but credit risk approaching zero. Pre-2007, fixed rates on LIBOR swaps were viewed to be a reasonable and workable proxy for the risk-free yield curve. However, in the post-2007 world the presence of a persistent and sizable LIBOR-OIS spread exposes the "credit risk approaching zero" presumption. The OIS curve is now preferred by swap dealers because it removes the bank credit and liquidity risk that is being priced into

LIBOR. Moreover, central clearing of standardized swaps and collateralization of un-cleared transactions are mandated for dealers by the Dodd-Frank Act of 2010. In response, central clearingers such as CME and LCH specifically use the OIS curve to value swaps and to establish collateral requirements.

An overnight indexed swap is a derivative contract on the total return of a reference rate that is compounded daily over a set time period. In the U.S. dollar market, the reference rate is the effective federal funds rate. It is calculated and reported by the Federal Reserve each day in its H.15 Report and is the weighted average of brokered trades between banks for overnight ownership of deposits at the Fed (i.e., bank reserves). The effective fed funds rate is not necessarily equal to the target rate set by the Federal Open Market Committee (FOMC) and announced at regularly scheduled FOMC meetings. The Fed merely aims to keep the effective rate close to its target via open market operations of buying and selling securities. [In the Euro-zone, the OIS reference rate is EONIA (Euro Overnight Index Average, which essentially is the 1-day interbank rate. In the U.K., the reference rate is SONIA (Sterling Overnight Index Average).]

Suppose the 3-month fixed rate is  $0.10\%$  on an OIS (in the U.S.) for a notional principal of \$100 million. At settlement, the payoff will be based on the difference between the fixed and floating legs on the swap. Assuming 90 days for the three months (i.e., for simplicity, the 30/360 day-count convention), the fixed leg is:

$$
\$ 100,000,000 * \frac {90}{360} * 0. 0 0 1 0 = \$ 2 5, 0 0 0
$$

The floating leg depends on the sequence of realized daily reference rates.

$$
\$ 100,000,000 * \left[ \left(1 + \frac {E F F _ {1}}{3 6 0}\right) * \left(1 + \frac {E F F _ {2}}{3 6 0}\right) * \dots * \left(1 + \frac {E F F _ {9 0}}{3 6 0}\right) - 1 \right]
$$

$EFF_{1}, EFF_{2}, \ldots, EFF_{90}$  are the reported daily observations for the effective fed funds rate. $^{1}$  Net settlement on the OIS is the difference between the two legs. The 3-month OIS fixed rate determines the  $0x3$  discount factor.

$$
D F _ {0 x 3} = \frac {1}{\left(1 + \frac {0 . 0 0 1 0 0}{4}\right)} = 0. 9 9 9 7 5 0
$$

If 3-month LIBOR is  $0.50\%$  and the 3-month OIS fixed rate is  $0.10\%$ , the LIBOR-OIS spread is 40 basis points. Until August 2007, this spread was consistently much narrower, typically just 5-10 basis points, thereby justifying the use of LIBOR swaps as proxies for risk-free transactions. Some commentators date the onset of the financial crisis at August 9, 2007, which was the day when the LIBOR-OIS spread first spiked upward. It remained high, oscillating between 50 and 100 basis points, and then jumped again in the fall of 2008, reaching its pinnacle at about 350 basis points after the announcement of the Lehman bankruptcy on September 15, 2008. It then returned to more normal levels in 2009 only to go up again in 2011 reflecting concerns over the Euro-zone sovereign debt crisis. The LIBOR-OIS spread has become a widely used indicator for bank credit and liquidity risk.

Suppose that the fixed rate on a 6-month OIS is  $0.62\%$ . Given 180 days for the time period and \$100 million in notional principal, the fixed and floating legs are:

$$
\begin{array}{l} \$ 100,000,000 * \frac {180}{360} * 0. 0 0 6 2 = \$ 3 1 0, 0 0 0 \\ \$ 100,000,000 * \left[ \left(1 + \frac {E F F _ {1}}{3 6 0}\right) * \left(1 + \frac {E F F _ {2}}{3 6 0}\right) * \dots * \left(1 + \frac {E F F _ {1 8 0}}{3 6 0}\right) - 1 \right] \\ \end{array}
$$

The 6-month discount factor for the OIS curve is:

$$
D F _ {0 x 6} = \frac {1}{\left(1 + \frac {0 . 0 0 6 2}{2}\right)} = 0. 9 9 6 9 1 0
$$

Because of the assumed 30/360 day-count convention, the  $0.62\%$  rate for six months is simply divided by 2. In general, the divisor is "Year/Days", where Year is 360 or 365 days, and Days is the actual or assumed number of days in the time period.

OIS fixed rates for other maturities out to one year typically are quoted in the same manner, that is, on a simple interest basis common for money market instruments. Suppose that the fixed rates for 9 and 12 months are  $1.10\%$  and  $1.64\%$  and that these apply to 270 and 360 days. The  $0x9$  and  $0x12$  OIS discount factors are:

$$
D F _ {0 x 9} = \frac {1}{\left(1 + \frac {0 . 0 1 1 0}{3 6 0 / 2 7 0}\right)} = 0. 9 9 1 8 1 8
$$

$$
D F _ {0 x 1 2} = \frac {1}{\left(1 + \frac {0 . 0 1 6 4}{3 6 0 / 3 6 0}\right)} = 0. 9 8 3 8 6 5
$$

OIS contracts maturing in more than one year usually are designed to have periodic settlements against the fixed rate, as is standard for LIBOR swaps. To stay with the simplistic design of these numerical examples, assume that the annual OIS fixed rates for quarterly settlement are:  $1.98\%$  for 15 months,  $2.32\%$  for 18 months,  $2.63\%$  for 21 months, and  $2.90\%$  for 24 months. For these, the discount factors are obtained using a bootstrapping technique equivalent to that shown the first section. The difference in presentation here is that the discount factors are used directly rather than the implied spot rates.

$$
\begin{array}{l} 1 0 0 = (1. 9 8 / 4 * 0. 9 9 9 7 5 0) + (1. 9 8 / 4 * 0. 9 9 6 9 1 0) + (1. 9 8 / 4 * 0. 9 9 1 8 1 8) \\ + (1. 9 8 / 4 * 0. 9 8 3 8 6 5) + (1. 9 8 / 4 + 1 0 0) * D F _ {0 x 1 5}, D F _ {0 x 1 5} = 0. 9 7 5 5 0 8 \\ \end{array}
$$

$$
\begin{array}{l} 1 0 0 = (2. 3 2 / 4 * 0. 9 9 9 7 5 0) + (2. 3 2 / 4 * 0. 9 9 6 9 1 0) + (2. 3 2 / 4 * 0. 9 9 1 8 1 8) \\ + (2. 3 2 / 4 * 0. 9 8 3 8 6 5) + (2. 3 2 / 4 * 0. 9 7 5 5 0 8) + (2. 3 2 / 4 + 1 0 0) ^ {*} D F _ {0 x 1 8}, \\ D F _ {0 x 1 8} = 0. 9 6 5 7 0 1 \\ \end{array}
$$

$$
\begin{array}{l} 1 0 0 = (2. 6 3 / 4 * 0. 9 9 9 7 5 0) + (2. 6 3 / 4 * 0. 9 9 6 9 1 0) + (2. 6 3 / 4 * 0. 9 9 1 8 1 8) \\ + (2. 6 3 / 4 * 0. 9 8 3 8 6 5) + (2. 6 3 / 4 * 0. 9 7 5 5 0 8) + (2. 6 3 / 4 * 0. 9 6 5 7 0 1) \\ + (2. 6 3 / 4 + 1 0 0) ^ {*} D F _ {0 x 2 1}, \quad D F _ {0 x 2 1} = 0. 9 5 4 8 4 0 \\ \end{array}
$$

$$
\begin{array}{l} 1 0 0 = (2. 9 0 / 4 * 0. 9 9 9 7 5 0) + (2. 9 0 / 4 * 0. 9 9 6 9 1 0) + (2. 9 0 / 4 * 0. 9 9 1 8 1 8) \\ + (2. 9 0 / 4 * 0. 9 8 3 8 6 5) + (2. 9 0 / 4 * 0. 9 7 5 5 0 8) + (2. 9 0 / 4 * 0. 9 6 5 7 0 1) \\ + (2. 9 0 / 4 * 0. 9 5 4 8 4 0) + (2. 9 0 / 4 + 1 0 0) ^ {*} D F _ {0 x 2 4}, \quad D F _ {0 x 2 4} = 0. 9 4 3 3 6 5 \\ \end{array}
$$

Consider again the valuation of the seasoned LIBOR swap from the first section. It has a fixed rate of  $3.85\%$ , a notional principal of \$50 million, and 12 months remaining until maturity. If it is marked to market against the  $2.12\%$  fixed rate on an at-market LIBOR swap, the (unambiguous) annuity is \$216,250:

$$
(3.85\% -2.12\%)^{*}\mathbb{S}50,000,000^{*}0.25 = \\ 216,250
$$

Using the LIBOR swap discount factors, the market value is shown above to be \$856,523.

$$
\begin{array}{l} \left(\frac {\mathbb {S} 2 1 6 , 2 5 0 * 0 . 9 9 8 7 5 2}{\mathbb {S} 2 1 6 , 2 5 0 * 0 . 9 9 4 8 1 7}\right) + \left(\frac {\mathbb {S} 2 1 6 , 2 5 0 * 0 . 9 9 4 8 1 7}{\mathbb {S} 2 1 6 , 2 5 0 * 0 . 9 8 8 2 2 2}\right) \\ + (\$ 2 1 6, 2 5 0 * 0. 9 7 9 0 0 8) = \$ 8 5 6, 5 2 3 \\ \end{array}
$$

Now, using the slightly higher OIS discount factors, the market value of the swap goes up to \$859,019.

$$
\begin{array}{l} \left(\frac {\mathbb {S} 2 1 6 , 2 5 0 * 0 . 9 9 9 7 5 0}{\mathbb {S} 2 1 6 , 2 5 0 * 0 . 9 9 6 9 1 0}\right) + \left(\frac {\mathbb {S} 2 1 6 , 2 5 0 * 0 . 9 9 6 9 1 0}{\mathbb {S} 2 1 6 , 2 5 0 * 0 . 9 9 1 8 1 8}\right) \\ + (\$ 2 1 6, 2 5 0 * 0. 9 8 3 8 6 5) = \$ 8 5 9, 0 1 9 \\ \end{array}
$$

Clearly, the difference is not large but that is due to the low level of interest rates and the relatively short time frame in the example. The impact of using OIS rather than LIBOR discount factors is greater for longer-term swaps and when the difference between the contractual rate and the MTM swap rate is larger. What matters is that this market value better captures the minimal credit risk on a collateralized interest rate swap.

In general, fixed-rate receivers gain and payers lose following the switch from LIBOR to OIS discounting as long as the swap yield curve is upward sloping and the LIBOR-OIS spread is positive. Amrut Nashikkar of Barclays Capital points out that this could impact end-users who have a large "directional book", meaning they typically enter the same type of swap. For example, life insurance companies and defined-benefit pension funds enter receive-fixed swaps to reduce the duration mismatch between their assets, which are mostly equity and corporate bonds, and their long-term liabilities. On the other hand, the GSEs (Government-Sponsored Enterprises) like Fannie Mae and Freddie Mac tend to enter pay-fixed swaps to hedge their positions in long-term fixed-rate mortgages. Other indicated impacts are on hedging strategies for swap dealers because the switch introduces exposure to the LIBOR-OIS spread, on the pricing of other derivatives because the implied LIBOR forward curve changes, and on the accounting for interest rate swaps.

A useful application for the OIS discount factors is to calculate the implied LIBOR forward curve that is consistent with the observed rates on collateralized interest rate swaps. To see the difference between LIBOR and OIS discounting, assume that the fixed rates on the sequence of collateralized swaps are the same as in the first section. That is, the fixed rates are  $1.04\%$ ,  $1.58\%$ ,  $2.12\%$ ,  $2.44\%$ ,  $2.76\%$ ,  $3.08\%$ , and  $3.40\%$  for quarterly settlement swaps against 3-month LIBOR for maturities ranging from 6 to 24 months.

Given that 3-month LIBOR is assumed to be  $0.50\%$ , the  $3x6$  implied LIBOR forward is calculated using the  $0x3$  and  $0x6$  OIS discount factors and the 6-month swap fixed rate.

$$
\begin{array}{l} (0.50 \% * 100 * 0.25 * 0.999750) + \left(R a t e _ {3 x 6} * 100 * 0.25 * 0.996910\right) = \\ (1.04 \% * 100 * 0.25 * 0.999750) + (1.04 \% * 100 * 0.25 * 0.996910), \quad \text {Rate} _ {3 x 6} = 1.5815 \% \\ \end{array}
$$

This equation follows the principle of swap pricing—the fixed rate, here  $1.04\%$  for the 6-month maturity, is the "average" of the forward curve in that the present values are the same after the rates are monetized by multiplying by the notional principal (100) and the day-count factor (0.25).

The  $6x9$  implied forward rate further illustrates the property that OIS discounting lowers the implied LIBOR forward curve when the LIBOR-OIS spread is positive and the forward curve is upwardly sloped.

$$
\begin{array}{l} (0.50\% *100*0.25*0.999750) + (1.5815\% *100*0.25*0.996910) + \\ \left(R a t e _ {6 x 9} * 100 * 0.25 * 0.991818\right) = \left(1.58 \% * 100 * 0.25 * 0.999750\right) \\ + (1.58 \% * 100 * 0.25 * 0.996910) + (1.58 \% * 100 * 0.25 * 0.991818), \text {Rate} _ {6 x 9} = 2.6671 \% \\ \end{array}
$$

In the first section, the  $6x9$  implied forward is shown to be  $2.6694\%$  using LIBOR discount factors, while here is it  $2.6671\%$  for OIS discounting.

The difference in the implied forward rates becomes a bit larger moving out along the curve. These are the remaining implied rates for LIBOR using the OIS discount factors.

$$
\begin{array}{l} (0.50 \% * 100 * 0.25 * 0.999750) + (1.5815 \% * 100 * 0.25 * 0.996910) \\ + (2.6671\% * 100 * 0.25 * 0.991818) + \left(R a t e _ {9 x 1 2} * 100 * 0.25 * 0.983865\right) = \\ (2.12 \% * 100 * 0.25 * 0.999750) + (2.12 \% * 100 * 0.25 * 0.996910) \\ + (2.12 \% * 100 * 0.25 * 0.991818) + (2.12 \% * 100 * 0.25 * 0.983865), \text {Rate} _ {9 x 12} = 3.7602 \% \\ \end{array}
$$

$$
\begin{array}{l} (0.50 \% * 100 * 0.25 * 0.999750) + (1.5815 \% * 100 * 0.25 * 0.996910) \\ + (2.6671\% * 100 * 0.25 * 0.991818) + (3.7602\% * 100 * 0.25 * 0.983865) \\ + \left(R a t e _ {12 x 15} * 100 * 0.25 * 0.975508\right) = (2.44 \% * 100 * 0.25 * 0.999750) \\ + (2.44 \% * 100 * 0.25 * 0.996910) + (2.44 \% * 100 * 0.25 * 0.991818) \\ + (2.44 \% * 100 * 0.25 * 0.983865) + (2.44 \% * 100 * 0.25 * 0.975508), \text {Rate} _ {12 x 15} = 3.7431 \% \\ \end{array}
$$

$$
\begin{array}{l} (0.50 \% * 100 * 0.25 * 0.999750) + (1.5815 \% * 100 * 0.25 * 0.996910) \\ + (2.6671\% * 100 * 0.25 * 0.991818) + (3.7602\% * 100 * 0.25 * 0.983865) \\ + (3.7431\% * 100 * 0.25 * 0.975508) + \left(Rate_{15x18} * 100 * 0.25 * 0.965701\right) = \\ (2.76 \% * 100 * 0.25 * 0.999750) + (2.76 \% * 100 * 0.25 * 0.996910) \\ + (2.76 \% * 100 * 0.25 * 0.991818) + (2.76 \% * 100 * 0.25 * 0.983865) \\ + (2.76 \% * 100 * 0.25 * 0.975508) + (2.76 \% * 100 * 0.25 * 0.965701), \text {Rate} _ {15 x 18} = 4.3995 \% \\ \end{array}
$$

$$
\begin{array}{l} (0.50 \% * 100 * 0.25 * 0.999750) + (1.5815 \% * 100 * 0.25 * 0.996910) \\ + (2.6671\% * 100 * 0.25 * 0.991818) + (3.7602\% * 100 * 0.25 * 0.983865) \\ + (3.7431\% * 100 * 0.25 * 0.975508) + (4.399\% * 100 * 0.25 * 0.965701) \\ + \left(R a t e _ {18 x 21} * 100 * 0.25 * 0.954840\right) = (3.08 \% * 100 * 0.25 * 0.999750) \\ + (3.08 \% * 100 * 0.25 * 0.996910) + (3.08 \% * 100 * 0.25 * 0.991818) \\ + (3.08 \% * 100 * 0.25 * 0.983865) + (3.08 \% * 100 * 0.25 * 0.975508) \\ + (3.08 \% * 100 * 0.25 * 0.965701) + (3.08 \% * 100 * 0.25 * 0.954840), \text {Rate} _ {18 x 21} = 5.0618 \% \\ \end{array}
$$

$$
\begin{array}{l} (0.50 \% * 100 * 0.25 * 0.999750) + (1.5815 \% * 100 * 0.25 * 0.996910) \\ + (2.6671\% * 100 * 0.25 * 0.991818) + (3.7602\% * 100 * 0.25 * 0.983865) \\ + (3.7431\% * 100 * 0.25 * 0.975508) + (4.3995\% * 100 * 0.25 * 0.965701) \\ + (5.0618\% * 100 * 0.25 * 0.954840) + \left(Rate _ {21x24} * 100 * 0.25 * 0.943365\right) = \\ \end{array}
$$

$$
\begin{array}{l} (3.40 \% * 100 * 0.25 * 0.999750) + (3.40 \% * 100 * 0.25 * 0.996910) \\ + (3.40 \% * 100 * 0.25 * 0.991818) + (3.40 \% * 100 * 0.25 * 0.983865) \\ + (3.40 \% * 100 * 0.25 * 0.975508) + (3.40 \% * 100 * 0.25 * 0.965701) \\ + (3.40 \% * 100 * 0.25 * 0.954840) + (3.40 \% * 100 * 0.25 * 0.943365), \text {Rate} _ {21x24} = 5.7298 \% \\ \end{array}
$$

In this example, the use of OIS rather than LIBOR discount factors does not make for a large difference in the implied LIBOR forward curve. It is only 1.29 basis points,  $5.7427\%$  compared to  $5.7298\%$ , for the 21x24 time period. Nevertheless, these are the correct forward, or projected, rates to use on collateralized swaps when determining the fixed rate on a non-vanilla design, for instance, a varying notional principal, forward-starting swap, or when pricing options on swaps (i.e., "swaptions").

These implied forward rates are also important when valuing a swap using the combination-of-bonds approach. Consider again the  $3.85\%$ ,  $\$ 50$  million notional principal, 12- month quarterly settlement swap shown above to have a market value of  $\$ 859,019$  when collateralized and marked against a  $2.12\%$  at-market contract. That amount is the annuity of  $\$ 216,250$  for the difference in the fixed swap rates discounted using the OIS curve. The equation is repeated here.

$$
\begin{array}{l} \left(\frac {\mathbb {S} 2 1 6 , 2 5 0 * 0 . 9 9 9 7 5 0}{\mathbb {S} 2 1 6 , 2 5 0 * 0 . 9 9 6 9 1 0}\right) + \left(\frac {\mathbb {S} 2 1 6 , 2 5 0 * 0 . 9 9 6 9 1 0}{\mathbb {S} 2 1 6 , 2 5 0 * 0 . 9 9 1 8 1 8}\right) \\ + (\$ 2 1 6, 2 5 0 * 0. 9 8 3 8 6 5) = \$ 8 5 9, 0 1 9 \\ \end{array}
$$

The implicit  $3.85\%$  fixed- rate bond pays a quarterly coupon of \$481,250. It can be valued using the OIS discount factors as if the bond has been upgraded to risk- free status.

$$
\begin{array}{l} \left( \right.\frac {\left. \right.\left.\left.\left.\left.\left.\left.\left.\left.\left.\left.\left.\left.\left.\left.\left.\left.\left.\left.\left.\left.\left.\left.\left.\left.\left.\left.\left.\left.\left.\left.\left.\left.\left.\right.\right.\right.\right.\right.\right.\right.\right.\right.\right.\right.\right.\right.\right.\right.\right.\right.\right.\right.\right.\right.\right.\right.\right.\right.\right.\right.\right.\right.\right.\right.\right.\right. \\ + (\$ 5 0, 4 8 1, 2 5 0 * 0. 9 8 3 8 6 5) = \$ 5 1, 1 0 4, 9 2 0 \\ \end{array}
$$

This is greater than the bond price of \(50,856,523 found in the first section, where it is calculated using the (lower) LIBOR discount factors.

The key point is that it would be incorrect to assume that the implicit floating-rate bond continues to be priced at par value. That would value the swap wrongly at  $1,104,920 (=$ 51,104,920 - \$50,000,000). This "floater" should be treated as a risk-free security having a price greater than \$50,000,000 because it is collateralized. To get that price, assume that the implied forward rates based on the OIS discount factors are the fixed rates on collateralized FRAs. That means the cash flows on the LIBOR floating-rate bond can be fixed via hedging. The value of the implicit floater is \$50,245,902 (calculated on a spreadsheet using the unrounded discount factors).

$$
\begin{array}{l} \left(\frac {\left(\$ 50,000,000 * 0.5000 \% * 0.25 * 0.999750\right) + \left(\$ 50,000,000 * 1.5815 \% * 0.25 * 0.996910\right)\right) \\ + (\$ 50,000,000 * 2.6671\% * 0.25 * 0.991818) + (\$ 50,000,000 * 3.7602\% * 0.25 * 0.983865) \\ + (\$ 50,000,000 * 0. 9 8 3 8 6 5) = \$ 5 0, 2 4 5, 9 0 2 \\ \end{array}
$$

The difference in the (unrounded) values for the two implicit bonds is  \$859,019, which is the same as found directly by discounting the\$ 216,250 annuity with the OIS discount factors.

$$
\$ 51,104,920 - \$ 50,245,902 = \$ 859,019
$$

This valuation exercise assumes the same series of swap fixed rates whether the contracts are uncollateralized or collateralized. But that is not likely to happen in reality. Johannes and Sundaresan (2007) explain that the fixed rate on the collateralized swap should be higher than when it is uncollateralized and provide empirical evidence to support that conjecture. The reasoning is similar to the convexity adjustment between interest rates on exchange-traded futures and over-the-counter forwards. The idea is that posting cash collateral is costly to the counterparty for which the swap is "underwater", meaning it has a negative MTM value. Either the funds need to be borrowed or are diverted from other uses, thereby imposing a financial or, at least, an opportunity cost to the entity.

The reason for the higher fixed rate on a collateralized swap is that the impact of having to post costly collateral is not symmetric between the two counterparties—the fixed-rate receiver suffers from interest rate volatility while the payer benefits. Suppose the contract is underwater to the fixed-rate receiver because swap rates have risen since entrance. If rates rise further, more collateral is needed; if rates fall, less is required. In contrast, suppose the swap is underwater to the fixed-rate payer because rates have fallen. If rates then rise somewhat, less collateral is needed; and if rates fall further, more is

required. Systematically, the fixed-rate receiver posts more costly collateral when rates go up and the fixed-rate payer posts more when rates go down. This asymmetry, other things being equal, leads to a higher fixed rate on the collateralized swap.

# Generalization of the Formulas

This note follows Bond Math in writing out the equations as if the bootstrapping were to be done step by step. This is to facilitate the exposition of the calculations, especially for those learning about fixed-income securities and derivatives. In practice, the discount factors and implied forward rates are bootstrapped on a spreadsheet. The formulas can be generalized in a mathematical form that is more customary to those who study or work with advanced financial analysis. The general notation is:

(1) There are  $N$  periods to maturity, denoted  $1, 2, \ldots, n, \ldots, N$ .  
(2)  $A_{n}$  is the day-count factor for period  $n$ . This can be on a 30/360 basis as used in this note but in practice actual/360 is common in the U.S. and actual/365 in many other financial markets.  
(3) The LIBOR swap fixed rate is  $SFR_{n}$  for an at-market (or par) interest rate swap maturing at the end of period  $n$  and having a market value of zero.  
(4) The discount factor bootstrapped from at-market LIBOR swap fixed rates is  $DF_{n}^{LIBOR}$  for period  $n$ . For 3-month time periods, as in the numerical examples above,  $n = 7$  corresponds to the 0x21 discount factor.  
(5) The implied spot rate bootstrapped from the LIBOR swap fixed rates or, equivalently, from the LIBOR discount factors or the implied LIBOR forward rates, is  $Spot_{n}^{LIBOR}$  for period  $n$ .

(6) The implied, or projected, LIBOR forward rate between period  $n - 1$  and period  $n$ , which is bootstrapped from the LIBOR discount factors or from the implied spot rates, is  $IFR_{n - 1,n}^{LIBOR}$ . For example, for 3-month time periods, the "6x9" implied forward rate calculated using the 6-month and 9-month spot rates or discount factors, is  $IFR_{2,3}^{LIBOR}$ .  
(7) The OIS fixed rate is  $OIS_{n}$  for an overnight indexed swap maturing at the end of period  $n$ . For 3-month time periods, the 6-month OIS fixed rate is  $OIS_{2}$ .  
(8) The discount factor bootstrapped from at-market OIS swap fixed rates is  $DF_{n}^{OIS}$  for period  $n$ .  
(9) The implied LIBOR forward rate between period  $n - 1$  and period  $n$ , which is bootstrapped from the corresponding OIS discount factors, is  $IFR_{n - 1,n}^{OIS}$ .  
(10) All interest rates are annualized and expressed in decimal form.

The calculations in the first section of the paper use the traditional swap valuation approach in that present values are calculated with LIBOR discount factors or spot rates. Given a series of LIBOR swap fixed rates and the day-count factors for each period, the LIBOR discount factors are bootstrapped from this formula:

$$
D F _ {n} ^ {L I B O R} = \frac {1 - S F R _ {n} * \sum_ {j = 1} ^ {n - 1} A _ {j} * D F _ {j} ^ {L I B O R}}{1 + S F R _ {n} * A _ {n}}
$$

The sequence of implied spot rates are derived from these discount factors.

$$
S p o t _ {n} ^ {L I B O R} = \left[ \left(\frac {1}{D F _ {n} ^ {L I B O R}}\right) ^ {\frac {1}{n}} - 1 \right] * \frac {1}{A _ {n}}
$$

The implied LIBOR forward rates can be obtained from the discount factors.

$$
I F R _ {n - 1, n} ^ {L I B O R} = \left(\frac {D F _ {n - 1} ^ {L I B O R}}{D F _ {n} ^ {L I B O R}} - 1\right) * \frac {1}{A _ {n}}
$$

The fixed rate on an uncollateralized interest rate swap is the "average" of the LIBOR forward curve.

$$
S F R _ {n} = \frac {\sum_ {j = 1} ^ {n} A _ {j} * I F R _ {j - 1 , j} ^ {L I B O R} * D F _ {j} ^ {L I B O R}}{\sum_ {j = 1} ^ {n} A _ {j} * D F _ {j} ^ {L I B O R}}
$$

In the second section, the OIS fixed rates are used to get the OIS discount factors. For maturities up to one year, the money market quotation convention is used.

$$
D F _ {n} ^ {O I S} = \frac {1}{1 + O I S _ {n} * \sum_ {j = 1} ^ {n} A _ {j}}
$$

For maturities over one year, the more standard method of quoting swaps entailing periodic settlements is used:

$$
D F _ {n} ^ {O I S} = \frac {1 - O I S _ {n} * \sum_ {j = 1} ^ {n - 1} A _ {j} * D F _ {j} ^ {O I S}}{1 + O I S _ {n} * A _ {n}}
$$

The implied LIBOR forward curve applicable for OIS discounting is produced from this formula:

$$
I F R _ {n - 1, n} ^ {O I S} = \frac {S F R _ {n} * \sum_ {j = 1} ^ {n} A _ {j} * D F _ {j} ^ {O I S} - \sum_ {j = 1} ^ {n - 1} A _ {j} * I F R _ {j - 1 , j} ^ {O I S} * D F _ {j} ^ {O I S}}{D F _ {n} ^ {O I S} * A _ {n}}
$$

The fixed rate on a collateralized "vanilla" interest rate swap, before considering the convexity adjustment suggested by Johannes and Sundaresan, is:

$$
S F R _ {n} = \frac {\sum_ {j = 1} ^ {n} A _ {j} * I F R _ {j - 1 , j} ^ {L I B O R} * D F _ {j} ^ {O I S}}{\sum_ {j = 1} ^ {n} A _ {j} * D F _ {j} ^ {O I S}}
$$

# Conclusions

The traditional approach to pricing and valuing standard interest rate swaps, for which there is periodic settlement based on the difference between the fixed rate and the floating reference rate, assumes that the contract is not collateralized or, if it is, that the

collateralization can be neglected. The discount factors are bootstrapped from the fixed rates on at-market (or par) swaps that have a market value of zero or from the LIBOR forward curve. Assuming the absence of arbitrage and no transactions costs, i.e., neglecting the bid-ask spread, allows the seamless movement between the LIBOR swap, spot, and forward curves. This facilitates routine and frequent valuations that are needed for risk management and financial reporting. The two key assumptions supporting the traditional approach are that LIBOR discount factors are: (1) appropriate measures for the credit quality of the counterparty for which the swap has negative market value if the contract is uncollateralized; and (2) reasonable proxies for the risk-free yield curve if it is collateralized.

The financial crisis that started in 2007 challenges the second assumption. Collateralization is now commonplace in the swap market and the sizeable and persistent LIBOR-OIS spread indicates that LIBOR discount factors no longer represent risk-free rates. Nowadays, fixed rates on overnight indexed swaps are deemed to be more appropriate for valuing collateralized contracts. A switch from LIBOR to OIS discounting typically raises the value of the swap to fixed-rate receivers at the expense of the fixed-rate payers, the more so the longer the time to maturity and the greater the difference between the contractual fixed rate and the current market rate. That assumes, of course, an upwardly sloped forward curve and a positive LIBOR-OIS spread.

Fortunately, the same bootstrapping techniques that have become standard for LIBOR discounting can be applied to OIS fixed rates. One important caveat arises in valuing a LIBOR swap as a long/short combination of a fixed-rate and floating-rate bond. Given OIS discount factors, one cannot simply assume that the implicit floating-rate bond

trades at par value on a rate-reset date. It is necessary to bootstrap first the implied LIBOR forward curve that is consistent with OIS discount factors. Then the value of the swap can be calculated as the difference in the prices of the implicit bonds.

# Notes

1. This description of the calculation of the floating leg on an OIS contract is an abstraction. In practice, weekends and holidays are handled with an odd mix of simple and compound interest. Suppose that for a 5-day OIS, the effective fed funds rate is  $0.09\%$  on Thursday,  $0.10\%$  on Friday, and  $0.11\%$  on Monday. The Friday rate is used for Saturday and Sunday, however, on a simple interest basis. The floating leg would be calculated as:

$$
\$ 100,000,000 * \left[ \left(1 + \frac {0 . 0 0 0 9}{3 6 0}\right) * \left(1 + \frac {3 * 0 . 0 0 1 0}{3 6 0}\right) * \left(1 + \frac {0 . 0 0 1 1}{3 6 0}\right) - 1 \right]
$$

As formulated in the text, the Friday rate would be compounded for the three days:

$$
\$ 100,000,000 * \left[ \left(1 + \frac {0 . 0 0 0 9}{3 6 0}\right) * \left(1 + \frac {0 . 0 0 1 0}{3 6 0}\right) ^ {3} * \left(1 + \frac {0 . 0 0 1 1}{3 6 0}\right) - 1 \right]
$$

The difference, of course, is minor, especially when market rates are so low.

See the articles by Justin Clarke of Edu-Risk International for the differences in how short-dated and long-dated OIS rates are quoted in practice and how seasonality and FOMC meeting dates are handled.

# References

Clarke, Justin, "Swap Discounting & Pricing Using the OIS Curve", Edu-Risk International, available at www.edurisk.ie.  
Clarke, Justin, "Constructing the OIS Curve", Edu-Risk International, available at www.edurisk.ie.  
Johannes, Michael and Suresh Sundaresan, "The Impact of Collateralization on Swap Rates", Journal of Finance, Vol. LXII, No. 1, February 2007.  
Nashikkar, Amrut, "Understanding OIS Discounting", Barclays Capital Interest Rate Strategy, February 24, 2011.  
Smith, Donald J., Bond Math: The Theory Behind the Formulas, Wiley Finance, 2011.
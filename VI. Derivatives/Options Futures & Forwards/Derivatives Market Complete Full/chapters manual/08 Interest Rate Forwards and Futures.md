---
title: "Chapter 8 - Interest Rate Forwards and Futures"
aliases:
   - Interest Rate Forwards and Futures
parent_directory: Derivatives Market Complete Full/chapters manual
formatted: 2025-12-21 02:30:00 AM
formatter_model: obsidian-formatting-agent
cli_tool: claude-code
primary_tags:
   - interest rate forwards
   - bond pricing theory
   - futures contracts
   - duration convexity
   - repurchase agreements
secondary_tags:
   - zero coupon bonds
   - implied forward rates
   - forward rate agreements
   - eurodollar futures
   - treasury futures
   - convexity bias
   - cheapest to deliver
   - synthetic fras
   - duration matching
   - pvbp dv01
   - macaulay duration
   - modified duration
   - yield curve
   - hedging strategies
   - repo market
cssclasses: academia
---

# Interest Rate Forwards and Futures

Suppose you have the opportunity to spend $1 one year from today to receive $2 two years from today. What is the value of this opportunity? To answer this question, you need to know the appropriate interest rates for discounting the two cash flows. This comparison is an example of the most basic concept in finance: using interest rates to compute present values. Once we find a present value for one or more assets, we can compare the values of cash flows from those assets even if the cash inflows and cash outflows occur at different times. In order to perform these calculations, we need information about the set of interest rates prevailing between different points in time.

We begin the chapter by reviewing basic bond concepts—coupon bonds, yields to maturity, and implied forward rates. Any reader of this chapter should understand these basic concepts. We then look at interest rate forwards and forward rate agreements, which permit hedging interest rate risk. Finally, we look at bond futures and the repo market.

## Bond Basics

Table 1 presents information about current interest rates for bonds maturing in from 1 to 3 years. Identical information is presented in five different ways in the table. Although the information appears differently across columns, it is possible to take the information in any one column of Table 1 and reproduce the other four columns.

In practice, a wide range of maturities exists at any point in time, but the U.S. government issues Treasury securities only at specific maturities—typically 3 months, 6 months, and 1, 2, 5, 10, and 30 years.[2] Government securities that are issued with less than 1 year to maturity and that make only a single payment, at maturity, are called Treasury bills. Notes and bonds pay coupons and are issued at a price close to their maturity value (i.e., they are issued at par). Notes have 10 or fewer years to maturity and bonds have more

From Chapter 7 of Derivatives Markets, Third Edition, Robert McDonald. Copyright © 2013 by Pearson Education, Inc. Published by Pearson Prentice Hall. All rights reserved.

<table><tr><td>TABLE I</td><td colspan="5">Five ways to present equivalent information about default-free interest rates.
All rates but those in the last column are effective annual rates.</td></tr><tr><td rowspan="2">Years to Maturity</td><td>(1)</td><td>(2)</td><td>(3)</td><td>(4)</td><td rowspan="2">(5)
Continuously
Compounded
Zero Yield</td></tr><tr><td>Zero-Coupon Bond Yield</td><td>Zero-Coupon Bond Price</td><td>One-Year Implied Forward Rate</td><td>Par Coupon</td></tr><tr><td>1</td><td>6.00\%</td><td>0.943396</td><td>6.00000\%</td><td>6.00000\%</td><td>5.82689\%</td></tr><tr><td>2</td><td>6.50</td><td>0.881659</td><td>7.00236</td><td>6.48423</td><td>6.29748</td></tr><tr><td>3</td><td>7.00</td><td>0.816298</td><td>8.00705</td><td>6.95485</td><td>6.76586</td></tr></table> than 10 years to maturity. The distinctions between bills, notes, and bonds are not important for our purposes; we will refer to all three as bonds. Treasury inflation protected securities are bonds for which payments are adjusted for inflation. Finally, the most recently issued government bonds are called on-the-run; other bonds are called off-the-run. These terms are used frequently in talking about government bonds since on-the-run bonds generally have lower yields and greater trading volume than off-the-run bonds. Appendix A discusses some of the conventions used in bond price and yield quotations.

In addition to government bonds there are also STRIPS. A STRIPS—Separate Trading of Registered Interest and Principal of Securities—is a claim to a single interest payment or the principal portion of a government bond. These claims trade separately from the bond. STRIPS are zero-coupon bonds since they make only a single payment at maturity. "STRIPS" should not be confused with the forward strip, which is the set of forward prices available at a point in time.

We need a way to represent bond prices and interest rates. Interest rate notation is, unfortunately and inevitably, cumbersome, because for any rate we must keep track of three dates: the date on which the rate is quoted, and the period of time (this has beginning and ending dates) over which the rate prevails. We will let  $r_t(t_1, t_2)$  represent the interest rate from time  $t_1$  to time  $t_2$ , prevailing on date  $t$ . If the interest rate is current—i.e., if  $t = t_1$ —and if there is no risk of confusion, we will drop the subscript.

## Zero-Coupon Bonds

We begin by showing that the zero-coupon bond yield and zero-coupon bond price, columns (1) and (2) in Table 1, provide the same information. A zero-coupon bond is a bond that makes only a single payment at its maturity date. Our notation for zero-coupon bond prices will mimic that for interest rates. The price of a bond quoted at time  $t_0$ , with the bond to be purchased at  $t_1$  and maturing at  $t_2$ , is  $P_{t_0}(t_1, t_2)$ . As with interest rates, we will drop the subscript when  $t_0 = t_1$ .

The 1-year zero-coupon bond price of P(0, 1) = 0.943396 means that you would pay \$0.943396 today to receive \$1 in 1 year. You could also pay P(0, 2) = 0.881659 today to receive \$1 in 2 years and P(0, 3) = 0.816298 to receive \$1 in 3 years.

The yield to maturity (or internal rate of return) on a zero-coupon bond is simply the percentage increase in dollars earned from the bond. For the 1-year bond, we end up with  $1 / 0.943396 - 1 = 0.06$  more dollars per \$1 invested. If we are quoting interest rates as effective annual rates, this is a  $6 \%$  yield.

For the zero-coupon 2-year bond, we end up with  $1 / 0.881659 - 1 = 0.134225$  more dollars per  $\$ 1$  invested. We could call this a 2-year effective interest rate of  $13.4225\%$ , but it is conventional to quote rates on an annual basis. If we want this yield to be comparable to the  $6 \%$  yield on the 1-year bond, we could assume annual compounding and get  $(1 + r(0,2))^{2} = 1.134225$ , which implies that  $r(0,2) = 0.065$ . In general,

$$
P(0, n) = \frac{1}{[1 + r(0,n)]^{n}} \tag{1}
$$

Note from equation (1) that a zero-coupon bond price is a discount factor: A zero-coupon bond price is what you would pay today to receive \$1 in the future. If you have a future cash flow at time  $t$ ,  $C_t$ , you can multiply it by the price of a zero-coupon bond,  $P(0, t)$ , to obtain the present value of the cash flow. Because of equation (1), multiplying by  $P(0, t)$  is the same as discounting at the rate  $r(0, t)$ , i.e.,

$$
C_{t} \times P(0, t) = \frac{C_{t}}{[1 + r(0,t)]^{t}}
$$

The inverse of the zero-coupon bond price,  $1 / P(0,t)$ , provides a future value factor.

In contrast to zero-coupon bond prices, interest rates are subject to quoting conventions that can make their interpretation difficult (if you doubt this, see Appendix A). Because of their simple interpretation, we can consider zero-coupon bond prices as the building block for all of fixed income.

A graph of annualized zero-coupon yields to maturity against time to maturity is called the zero-coupon yield curve. A yield curve shows us how yields to maturity vary with time to maturity. In practice, it is common to present the yield curve based on coupon bonds, not zero-coupon bonds.

## Implied Forward Rates

We now see how column (3) in Table 1 can be computed from either column (1) or (2). The 1-year and 2-year zero-coupon yields are the rates you can earn from year 0 to year 1 and from year 0 to year 2. There is also an implicit rate that can be earned from year 1 to year 2 that must be consistent with the other two rates. This rate is called the implied forward rate.

Suppose we could today guarantee a rate we could earn from year 1 to year 2. We know that  $1 invested for 1 year earns \left[1 + r_0(0, 1)\right]$ and $1 invested for 2 years earns  $[1 + r_0(0, 2)]^2$ . Thus, the time 0 forward rate from year 1 to year 2,  $r_0(1, 2)$ , should satisfy

$$
[ 1 + r _ {0} (0, 1) ] [ 1 + r _ {0} (1, 2) ] = [ 1 + r _ {0} (0, 2) ] ^ {2}
$$ or


$$

1 + r _ {0} (1, 2) = \frac {[ 1 + r _ {0} (0 , 2) ] ^ {2}}{1 + r _ {0} (0 , 1)} \tag {2}

$$

Figure 1 shows graphically how the implied forward rate is related to 1- and 2-year yields. If  $r_0(1, 2)$  did not satisfy equation (2), then there would be an arbitrage opportunity. Problem

# FIGURE I

An investor investing for 2 years has a choice of buying a 2-year zero-coupon bond paying  $[1 + r_0(0,2)]^2$  or buying a 1-year bond paying  $1 + r_{0}(0,1)$  for 1 year, and reinvesting the proceeds at the implied forward rate,  $r_0(1,2)$ , between years 1 and 2. The implied forward rate makes the investor indifferent between these alternatives.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/29b8e892a26d75564b4643ceda5e321a47d5bb5439dcdf2fe4025701324bdae2.jpg)

15 asks you to work through the arbitrage. In general, we have

$$

\boxed {\left[ 1 + r _ {0} \left(t _ {1}, t _ {2}\right) \right] ^ {t _ {2} - t _ {1}} = \frac {\left[ 1 + r _ {0} \left(0 , t _ {2}\right) \right] ^ {t _ {2}}}{\left[ 1 + r _ {0} \left(0 , t _ {1}\right) \right] ^ {t _ {1}}} = \frac {P \left(0 , t _ {1}\right)}{P \left(0 , t _ {2}\right)}} \tag {3}

$$

Corresponding to 1-year and 2-year interest rates,  $r_0(0,1)$  and  $r_0(0,2)$ , we have prices of 1-year and 2-year zero-coupon bonds,  $P_0(0,1)$  and  $P_0(0,2)$ . Just as the interest rates imply a forward 1-year interest rate, the bond prices imply a 1-year forward zero-coupon bond price. The implied forward zero-coupon bond price must be consistent with the implied forward interest rate. Rewriting equation (3), we have

$$

P _ {0} \left(t _ {1}, t _ {2}\right) = \frac {1}{\left[ 1 + r _ {0} \left(t _ {1} , t _ {2}\right) \right] ^ {t _ {2} - t _ {1}}} = \frac {\left[ 1 + r _ {0} \left(0 , t _ {1}\right) \right] ^ {t _ {1}}}{\left[ 1 + r _ {0} \left(0 , t _ {2}\right) \right] ^ {t _ {2}}} = \frac {P \left(0 , t _ {2}\right)}{P \left(0 , t _ {1}\right)} \tag {4}

$$

The implied forward zero-coupon bond price from  $t_1$  to  $t_2$  is simply the ratio of the zero-coupon bond prices maturing at  $t_2$  and  $t_1$ .

Example 1. Using information in Table 1, we want to compute the implied forward interest rate from year 2 to year 3 and the implied forward price for a 1-year zero-coupon bond purchased in year 2.

The implied forward interest rate,  $r_0(2,3)$ , can be computed as

$$

1 + r _ {0} (2, 3) = \frac {[ 1 + r _ {0} (0 , 3) ] ^ {3}}{[ 1 + r _ {0} (0 , 2) ] ^ {2}} = \frac {(1 + 0.07) ^ {3}}{(1 + 0.065) ^ {2}} = 1.0800705

$$ or equivalently as


$$

1 + r _ {0} (2, 3) = \frac {P _ {0} (0 , 2)}{P _ {0} (0 , 3)} = \frac {0.881659}{0.816298} = 1.0800705

$$

The implied forward 1-year zero-coupon bond price is

$$

\frac {P _ {0} (0 , 3)}{P _ {0} (0 , 2)} = \frac {1}{1 + r _ {0} (2 , 3)} = 0.925865

$$

## Coupon Bonds

Given the prices of zero-coupon bonds—column (1) in Table 1—we can price coupon bonds. We can also compute the par coupon—column (4) in Table 1—the coupon rate at which a bond will be priced at par. To describe a coupon bond, we need to know the date at which the bond is being priced, the start and end date of the bond payments, the number and amount of the payments, and the amount of principal. Some practical complexities associated with coupon bonds, not essential for our purposes, are discussed in Appendix A.

We will let B_t(t_1, t_2, c, n) denote the time t price of a bond that is issued at t_1, matures at t_2, pays a coupon of c per dollar of maturity payment, and makes n evenly spaced payments over the life of the bond, beginning at time t_1 + (t_2 - t_1)/n. We will assume the maturity payment is \$1. If the maturity payment is different than \$1, we can just multiply all payments by that amount.

Since the price of a bond is the present value of its payments, at issuance time  $t$  the price of a bond maturing at  $T$  must satisfy

$$

B _ {t} (t, T, c, n) = \sum_ {i = 1} ^ {n} c P _ {t} (t, t _ {i}) + P _ {t} (t, T) \tag {5}

$$ where  $t_i = t + i(T - t) / n$ , with  $i$  being the index in the summation. Using equation (5), we can solve for the coupon as

$$ c = \frac {B _ {t} (t , T , c , n) - P _ {t} (t , T)}{\sum_ {i = 1} ^ {n} P _ {t} (t , t _ {i})}
$$

A par bond has  $B_{t} = 1$ , so the coupon on a par bond is given by

$$
\boxed {c = \frac {1 - P _ {t} (t , T)}{\sum_ {i = 1} ^ {n} P _ {t} (t , t _ {i})}} \tag {6}
$$

Example 2. Using the information in Table 1, the coupon on a 3-year coupon bond that sells at par is

$$
\begin{array}{l} c = \frac {1 - 0.816298}{0.943396 + 0.881659 + 0.816298} \\ = 6.95485\% \\ \end{array}
$$

Equation (5) computes the bond price by discounting each bond payment at the rate appropriate for a cash flow with that particular maturity. For example, in equation (5), the coupon occurring at time  $t_i$  is discounted using the zero-coupon bond price  $P_t(t, t_i)$ ; an alternative way to write the bond price is using the yield to maturity to discount all payments.

Suppose the bond makes  $m$  payments per year. Denoting the per-period yield to maturity as  $y_{m}$ , we have

$$
B _ {t} (t, T, c, n) = \sum_ {i = 1} ^ {n} \frac {c}{\left(1 + y _ {m}\right) ^ {i}} + \frac {1}{\left(1 + y _ {m}\right) ^ {n}} \tag {7}
$$

It is common to compute the quoted annualized yield to maturity,  $y$ , as  $y = m \times y_{m}$ . Government bonds, for example, make two coupon payments per year, so the annualized yield to maturity is twice the semiannual yield to maturity.

The difference between equation (5) and equation (7) is that in equation (5), each coupon payment is discounted at the appropriate rate for a cash flow occurring at that time. In equation (7), one rate is used to discount all cash flows. By definition, the two expressions give the same price. However, equation (7) can be misleading, since the yield to maturity,  $y_{m}$ , is not the return an investor earns by buying and holding a bond. Moreover, equation (7) provides no insight into how the cash flows from a bond can be replicated with zero-coupon bonds.

## Zeros from Coupons

We have started with zero-coupon bond prices and deduced the prices of coupon bonds. In practice, the situation is often the reverse: We observe prices of coupon bonds and must infer prices of zero-coupon bonds. This procedure in which zero coupon bond prices are deduced from a set of coupon bond prices is called bootstrapping.

Suppose we observe the par coupons in Table 1. We can then infer the first zero-coupon bond price from the first coupon bond as follows:

$$
1 = (1 + 0.06) P (0, 1)
$$

This implies that  $P(0,1) = 1 / 1.06 = 0.943396$ . Using the second par coupon bond with a coupon rate of  $6.48423\%$  gives us

$$
1 = 0.0648423 P (0, 1) + 1.0648423 P (0, 2)
$$

Since we know  $P(0,1) = 0.943396$ , we can solve for  $P(0,2)$ :

$$
\begin{array}{l} P (0, 2) = \frac {1 - 0.0648423 \times 0.943396}{1.0648423} \\ = 0.881659 \\ \end{array}
$$

Finally, knowing  $P(0,1)$  and  $P(0,2)$ , we can solve for  $P(0,3)$  using the 3-year par coupon bond with a coupon of  $6.95485\%$ :

$$
1 = (0.0695485 \times P (0, 1)) + (0.0695485 \times P (0, 2)) + (1.0695485 \times P (0, 3))
$$ which gives us


$$

\begin{array}{l} P (0, 3) = \frac {1 - (0.0695485 \times 0.943396) - (0.0695485 \times 0.881659)}{1.0695485} \\ = 0.816298 \\ \end{array}

$$

There is nothing about the procedure that requires the bonds to trade at par. In fact, we do not even need the bonds to all have different maturities. For example, if we had a 1-year bond and two different 3-year bonds, we could still solve for the three zero-coupon bond prices by solving simultaneous equations.


## Interpreting the Coupon Rate

A coupon rate—for example the  $6.95485\%$  coupon on the 3-year bond—determines the cash flows the bondholder receives. However, except in special cases, it does not correspond to the rate of return that an investor actually earns by holding the bond.

Suppose for a moment that interest rates are certain; i.e., the implied forward rates in Table 1 are the rates that will actually occur in years 1 and 2. Imagine that we buy the 3-year bond and hold it to maturity, reinvesting all coupons as they are paid. What rate of return do we earn? Before going through the calculations, let's stop and discuss the intuition. We are going to invest an amount at time 0 and to reinvest all coupons by buying more bonds, and we will not withdraw any cash until time 3. In effect, we are constructing a 3-year zero-coupon bond. Thus, we should earn the same return as on a 3-year zero:  $7\%$ . This buy-and-hold return is different than the yield to maturity of  $6.95485\%$ . The coupon payment is set to make a par bond fairly priced, but it is not actually the return we earn on the bond except in the special case when the interest rate is constant over time.

Consider first what would happen if interest rates were certain, we bought the 3-year bond with a 100 principal and a coupon of 6.95485\%, and we held it for 1 year. The price at the end of the year would be

$$

\begin{array}{l} B _ {1} = \frac {6.95485}{1.0700237} + \frac {106.95485}{(1.0700237) (1 + 0.0800705)} \\ = 99.04515 \\ \end{array}

$$

The 1-period return is thus

$$

\begin{array}{l} 1 \text {period} = \frac {6.95485 + 99.04515}{100} - 1 \\ = 0.06 \\ \end{array}

$$

We earn  $6\%$ , since that is the 1-year interest rate. Problem 13 asks you to compute your 2-year return on this investment.

By year 3, we have received three coupons, two of which have been reinvested at the implied forward rate. The total value of reinvested bond holdings at year 3 is

$$
6.95485 \times [ (1.0700237) (1.0800705) + (1.0800705) + 1 ] + 100 = 122.5043
$$

The 3-year yield on the bond is thus

$$

\left(\frac {122.5043}{100}\right) ^ {1 / 3} - 1 = 0.07

$$

As we expected, this is equal to the  $7\%$  yield on the 3-year zero and different from the coupon rate.

This discussion assumed that interest rates are certain. Suppose that we buy and hold the bond, reinvesting the coupons, and that interest rates are not certain. Can we still expect to earn a return of  $7\%$  ? The answer is yes if we use interest rate forward contracts to guarantee the rate at which we can reinvest coupon proceeds. Otherwise, the answer in general is no.

The belief that the implied forward interest rate equals the expected future spot interest rate is a version of the expectations hypothesis. Forward prices are biased predictors of future spot prices when the underlying asset has a risk premium; the same is true for forward interest rates. When you own a coupon bond, the rate at which you will be able to reinvest coupons is uncertain. If interest rates carry a risk premium, then the expected return to holding the bond will not equal the  $7\%$  return calculated by assuming interest rates are certain. The expectations hypothesis will generally not hold, and you should not expect implied forward interest rates to be unbiased predictors of future interest rates.

In practice, you can guarantee the  $7\%$  return by using forward rate agreements to lock in the interest rate for each of the reinvested coupons. We discuss forward rate agreements in Section 2.

## Continuously Compounded Yields

Any interest rate can be quoted as either an effective annual rate or a continuously compounded rate. (Or in a variety of other ways, such as a semiannually compounded rate, which is common with bonds. See Appendix A.) Column (5) in Table 1 presents the continuously compounded equivalents of the rates in the "zero yield" column.

In general, if we have a zero-coupon bond paying \$1 at maturity, we can write its price in terms of an annualized continuously compounded yield,  $r^{cc}(0,t)$ , as

$$

P (0, t) = e ^ {- r ^ {c c} (0, t) t}

$$

Thus, if we observe the price, we can solve for the yield as

$$ r ^ {c c} (0, t) = \frac {1}{t} \ln [ 1 / P (0, t) ]
$$

We can compute the continuously compounded 3-year zero yield, for example, as

$$
\frac {1}{3} \ln (1 / 0.816298) = 0.0676586
$$

Alternatively, we can obtain the same answer using the 3-year zero yield of  $7\%$ :

$$
\ln (1 + 0.07) = 0.0676586
$$

Any of the zero yields or implied forward yields in Table 1 can be computed as effective annual or continuously compounded. The choice hinges on convention and ease of calculation.

## Forward Rate Agreements, Eurodollar Futures, and Hedging

We now consider the problem of a borrower who wishes to hedge against increases in the cost of borrowing. We consider a firm expecting to borrow  $100\mathrm{m}$  for 91 days, beginning 120 days from today, in June. This is the borrowing date. The loan will be repaid in September on the loan repayment date. In the examples we will suppose that the effective quarterly interest rate at that time can be either  $1.5\%$  or  $2\%$ , and that the implied June 91-day forward rate (the rate from June to September) is  $1.8\%$ . Here is the risk faced by the borrower, assuming no hedging:

$$
120 \text {days} \quad \frac {211 \text {days}}{r _ {\text {quarterly}} = 1.5 \% \quad r _ {\text {quarterly}} = 2 \%}
$$

$$
\text {B o r r o w} \quad 1 0 0 \mathrm {m} \quad + 1 0 0 \mathrm {m} \quad - 1 0 1. 5 \mathrm {m} \quad - 1 0 2. 0 \mathrm {m}
$$

Depending upon the interest rate, there is a variation of  \0.5\mathrm{m}  in the borrowing cost. How can we hedge this uncertainty?

### Forward Rate Agreements

A forward rate agreement (FRA) is an over-the-counter contract that guarantees a borrowing or lending rate on a given notional principal amount. FRAs can be settled either at the initiation or maturity of the borrowing or lending transaction. If settled at maturity, we will say the FRA is settled in arrears. In the example above, the FRA could be settled on day 120, the point at which the borrowing rate becomes known and the borrowing takes place, or settled in arrears on day 211, when the loan is repaid.

FRAs are a forward contract based on the interest rate, and as such do not entail the actual lending of money. Rather, the borrower who enters an FRA is paid if a reference rate is above the FRA rate, and the borrower pays if the reference rate is below the FRA rate. The actual borrowing is conducted by the borrower independently of the FRA. We will suppose that the reference rate used in the FRA is the same as the actual borrowing cost of the borrower.

FRA Settlement in Arrears. First consider what happens if the FRA is settled in September, on day 211, the loan repayment date. In that case, the payment to the borrower should be

$$
\left(r _ {\text {q u a r t e r l y}} - r _ {\mathrm {F R A}}\right) \times \text {n o t i o n a l p r i n c i p a l}
$$

Thus, if the borrowing rate is  $1.5\%$ , the payment under the FRA should be

$$
(0.015 - 0.018) \times \$ 100 \mathrm {m} = - \$ 300,000
$$

Since the rate is lower than the FRA rate, the borrower pays the FRA counterparty.

Similarly, if the borrowing rate turns out to be  $2.0\%$ , the payment under the FRA should be

$$
(0.02 - 0.018) \times \$ 100 \mathrm {m} = \$ 200,000
$$

Settling the FRA in arrears is simple and seems like the obvious way for the contract to work. However, settlement can also occur at the time of borrowing.

FRA Settlement at the Time of Borrowing. If the FRA is settled in June, at the time the money is borrowed, payments will be less than when settled in arrears because the borrower has time to earn interest on the FRA settlement. In practice, therefore, the FRA settlement is tailed by the reference rate prevailing on the settlement (borrowing) date. (Tailing in this context means that we reduce the payment to reflect the interest earned between June and

September.) Thus, the payment for a borrower is

$$
\text {N o t i o n a l p r i n c i p a l} \times \frac {\left(r _ {\text {q u a r t e r l y}} - r _ {\mathrm {F R A}}\right)}{1 + r _ {\text {q u a r t e r l y}}} \tag {8}
$$

If  $r_{\text{quarterly}} = 1.5\%$ , the payment in June is

$$
\frac {- \ 3 0 0 , 0 0 0}{1 + 0 . 0 1 5} = - \ 2 9 5, 5 6 6. 5 0
$$

By definition, the future value of this is  $-\$ 300,000$ . In order to make this payment, the borrower can borrow an extra  $295,566.50$ , which results in an extra  $\$ 300,000$  loan payment in September. If on the other hand  $r_{\mathrm{quarterly}} = 2.0\%$ , the payment is

$$
\frac {\mathbb {S} 2 0 0 , 0 0 0}{1 + 0 . 0 2} = \mathbb {S} 1 9 6, 0 7 8. 4 3
$$

The borrower can invest this amount, which gives 200,000 in September, an amount that offsets the extra borrowing cost.

If the forward rate agreement covers a borrowing period other than 91 days, we simply use the appropriate rate instead of the 91-day rate in the above calculations.

### Synthetic FRAs

Suppose that today is day 0. By using a forward rate agreement, we will be able to invest \$1 on day 120 and be guaranteed a 91-day return of 1.8\%. We can synthetically create the same effect as with an FRA by trading zero-coupon bonds. In order to accomplish this we need to guarantee cash flows of $0 on day 0, -$1 on day 120, and +\$1.018 on day 211.4

First, let's get a general sense of the transaction. To match the FRA cash flows, we want cash going out on day 120 and coming in on day 211. To accomplish this, on day 0 we will need to borrow with a 120-day maturity (to generate a cash outflow on day 120) and lend with a 211-day maturity (to generate a cash inflow on day 211). Moreover, we want the day 0 value of the borrowing and lending to be equal so that there is no initial cash flow. This description tells us what we need to do.

In general, suppose that today is day 0, and that at time  $t$  we want to lend \$1 for the period  $s$ , earning the implied forward rate  $r_0(t, t + s)$  over the interval from  $t$  to  $t + s$ . To simplify the notation in this section,  $r_0(t, t + s)$  will denote the nonannualized percent return from time  $t$  to time  $s$ . Recall first that

$$
1 + r _ {0} (t, t + s) = \frac {P (0 , t)}{P (0 , t + s)}
$$

The strategy we use is to:

1. Buy  $1 + r_0(t, t + s)$  zero-coupon bonds maturing at time  $t + s$ .
2. Short-sell 1 zero-coupon bond maturing at time  $t$ .

Investment strategy undertaken at time 0, resulting in net cash flows of  $-\$ 1$  on day  $t$ , and receiving the implied forward rate,  $1 + r_0(t,t + s)$  at  $t + s$ . This synthetically creates the cash flows from entering into a forward rate agreement on day 0 to lend at day  $t$ .

TABLE 2

<table><tr><td rowspan="2">Transaction</td><td colspan="3">Cash Flows</td></tr><tr><td>0</td><td>t</td><td>t + s</td></tr><tr><td>Buy 1 + r0(t, t + s) zeros maturing at t + s</td><td>-P(0, t + s) × (1 + r0(t, t + s))</td><td>—</td><td>1 + r0(t, t + s)</td></tr><tr><td>Short 1 zero maturing at t</td><td>+P(0, t)</td><td>01</td><td>—</td></tr><tr><td>Total</td><td>0</td><td>-1</td><td>1 + r0(t, t + s)</td></tr></table>

Example of synthetic FRA. The transactions in this table are exactly those in Table 2, except that all bonds are sold at time  $t$ .

TABLE 3

<table><tr><td rowspan="2">Transaction</td><td colspan="2">Cash Flows</td></tr><tr><td>0</td><td>t</td></tr><tr><td>Buy 1 + r0)t, t + s) zeros maturing at t + s</td><td>-P(0, t + s) × [1 + r0(t, t + s)]</td><td>1+r0(t, t+s)/1+r1(t, t+s)</td></tr><tr><td>Short 1 zero maturing at t</td><td>+P(0, t)</td><td>-1</td></tr><tr><td>Total</td><td>0</td><td>r0(t, t+s)-r1(t, t+s)/1+r1(t, t+s)</td></tr></table>

The resulting cash flows are illustrated in Table 2, which shows that transactions made on day 0 synthetically create a loan commencing on day  $t$  and paying the implied forward rate,  $r_0(t, t + s)$ , on day  $t + s$ .

This example can be modified slightly to synthetically create the cash flows from a forward rate agreement that settles on the borrowing date, day  $t$ . To make this modification, we sell at time  $t$  the bond maturing at time  $t + s$ . The result is presented in Table 3. Note that if we reinvested the FRA proceeds at the market rate prevailing on day  $t$ ,  $r_t(t, t + s)$ , we would receive  $r_0(t, t + s) - r_t(t, t + s)$  on day  $t + s$ .

Example 3. Consider the example above and suppose that  $P(0,211) = 0.95836$  and  $P(0,120) = 0.97561$ , which implies a 120-day interest rate of  $2.5\%$ . In order to receive 1.018 on day 211, we buy 1.018 211-day zero-coupon bonds. The cost of this is

$$
1. 0 1 8 \times P (0, 2 1 1) = \$ 0. 9 7 5 6 1
$$

In order to have zero cash flow initially and a cash outflow on day 120, we borrow 0.97561, with a 120-day maturity. This entails borrowing one 120-day bond, since

$$
\frac {0 . 9 7 5 6 1}{P (0 , 1 2 0)} = 1
$$

The result on day 120 is that we pay  \$1 to close the short position on the 120-day bond, and on day 211 we receive\$ 1.018 since we bought that many 211-day bonds.

To summarize, we have shown that an FRA is just like the stock and currency forwards we have considered, both with respect to pricing and synthesizing. If at time 0 we want to lock in a lending rate from time  $t$  to time  $t + s$ , we can create a rate forward synthetically by buying the underlying asset (the bond maturing at  $t + s$ ) and borrowing (shorting) the bond maturing at day  $t$ .

In general, we have the following conclusions concerning a rate forward covering the period  $t_1$  to  $t_2$ :

- The forward rate we can obtain is the implied forward rate—i.e.,  $r_{t_0}(t_1, t_2) = P_{t_0}(t_0, t_1) / P_{t_0}(t_0, t_2) - 1$ .
- We can synthetically create the payoff to an FRA,  $\frac{r_{t_0}(t_1,t_2) - r_{t_1}(t_1,t_2)}{1 + r_{t_1}(t_1,t_2)}$ , by borrowing to buy a bond maturing at  $t_2$ , i.e., by:

1. Buying  $1 + r_{t_0}(t_1, t_2)$  of the zero-coupon bond maturing on day  $t_2$ , and
2. Shorting 1 zero-coupon bond maturing on day  $t_1$ .

### Eurodollar Futures

Eurodollar futures contracts are similar to FRAs in that they can be used to guarantee a borrowing rate. There are subtle differences between FRAs and Eurodollar contracts, however, that are important to understand.

Let's consider again the example in which we wish to guarantee a borrowing rate for a  $100\mathrm{m}$  loan from June to September. Suppose the June Eurodollar futures price is 92.8. Implied 3-month LIBOR is  $\frac{100 - 92.8}{4\times 100} = 1.8\%$  over 3 months. The payoff on a single short Eurodollar contract at expiration will be

$$
[ 92.8 - (100 - r_{\mathrm{LIBOR}}) ] \times 100 \times \$ 25
$$

Thus, the payoff on the Eurodollar contract compensates us for differences between the implied rate  $(1.8\%)$  and actual LIBOR at expiration.

To illustrate hedging with this contract we again consider two possible 3-month borrowing rates in June:  $1.5\%$  or  $2\%$ . If the interest rate is  $1.5\%$ , borrowing cost on  $\$100\mathrm{m}$  will be  $\$1.5\mathrm{m}$ , payable in September. If the interest rate is  $2\%$ , borrowing cost will be  $\$2\mathrm{m}$ .

Suppose that we were to short 100 Eurodollar futures contracts. Ignoring marking-to-market prior to June, if the 3-month rate in June is  $1.5\%$ , the Eurodollar futures price will be 94. The payment is

$$
[ (92.8 - 94) \times 100 \times \$ 25 ] \times 100 = - \$ 300,000
$$

We multiply by 100 twice: once to account for 100 contracts, and the second time to convert the change in the futures price to basis points. Similarly, if the borrowing rate is  $2\%$ , we have

$$
[ (92.8 - 92) \times 100 \times \$ 25 ] \times 100 = \$ 200,000
$$

This is like the payment on an FRA paid in arrears, except that the futures contract settles in June, but our interest expense is not paid until September. Thus we have 3 months to earn or pay interest on our Eurodollar gain or loss before we actually have to make the interest payment.

Recall that when the FRA settles on the borrowing date, the payment is the present value of the change in borrowing cost. The FRA is thus tailed automatically as part of the agreement. With the Eurodollar contract, by contrast, we need to tail the position explicitly. We do this by shorting fewer than 100 contracts, using the implied 3-month Eurodollar rate of  $1.8\%$  as our discount factor. Thus, we enter into

$$
\text {N u m b e r o f E u r o d o l l a r c o n t r a c t s} = - \frac {100}{1 + 0.018} = - 98.2318
$$

Now consider the gain on the Eurodollar futures position. If LIBOR = 6\% (r_quarterly = 1.5\%), our total gain on the short contracts when we initiate borrowing on day 120 will be

$$
98.2318 \times (92.8 - 94) \times \$ 2500 = - \$ 294,695
$$

If LIBOR = 8\% (r_quarterly = 2.0\%), our total gain on the contracts will be

$$
98.2318 \times (92.8 - 92) \times \$ 2500 = \$ 196,464
$$

Notice that the amounts are different than with the FRA: The reason is that the FRA payment is automatically tailed using the 3-month rate prevailing in June, whereas with the Eurodollar contract we tailed using  $1.8\%$ , the LIBOR rate implied by the initial futures price.

We can now invest these proceeds at the prevailing interest rate. Here are the results on day 211, when borrowing must be repaid. If LIBOR = 6\% (r quarterly = 1.5\%), we save 300,000 in borrowing cost, and the proceeds from the Eurodollar contract are

$$
- \$ 294,695 \times (1.015) = - \$ 299,115
$$

If LIBOR = 8\% (r_quarterly = 2.0\%), we owe an extra 200,000 in interest and the invested proceeds from the Eurodollar contract are

$$
\$ 196,464 \times (1.02) = \$ 200,393
$$

Table 4 summarizes the result from this hedging position. The borrowing cost is close to  $1.8\%$ .

Convexity Bias and Tailing. In Table 4 the net borrowing cost appears to be a little less than  $1.8\%$ . You might guess that this is due to rounding error. It is not. Let's examine the numbers more closely.

TABLE 4

Results from hedging 100m in borrowing with 98.23 short Eurodollar futures.

<table><tr><td rowspan="3">Borrowing Rate:</td><td colspan="4">Cash Flows</td></tr><tr><td colspan="2">June</td><td colspan="2">September</td></tr><tr><td>1.5\%</td><td>2\%</td><td>1.5\%</td><td>2\%</td></tr><tr><td>Borrow 100m</td><td>+100m</td><td>+100m</td><td>-101.5m</td><td>-102.0m</td></tr><tr><td>Gain on 98.23 short Eurodollar contracts</td><td>-0.294695m</td><td>0.196464m</td><td></td><td></td></tr><tr><td>Gain plus interest</td><td></td><td></td><td>-0.299115m</td><td>0.200393m</td></tr><tr><td>Net</td><td></td><td></td><td>-101.799m</td><td>-101.799m</td></tr></table>

If LIBOR = 6\% (rquarterly = 1.5\%), we pay \$1.5m in borrowing cost and we lose \$299,115 on the Eurodollar contract, for a net borrowing expense of \$1.799115m. This is a "profit" from the Eurodollar hedge, relative to the use of an FRA, of $1.8m - $1.799115m = \$884.

If LIBOR = 8\% (rquarterly = 2.0\%), we pay \$2.0m in borrowing cost but make \$200,393 on the Eurodollar contract, for a net borrowing expense of \$1.799607m. We make a profit, relative to an FRA, of $1.8m - $1.799607m = \$393.

It appears that we systematically come out ahead by hedging with Eurodollar futures instead of an FRA. You are probably thinking that something is wrong.

As it turns out, what we have just shown is that the rate implied by the Eurodollar contract cannot equal the prevailing FRA (implied forward) rate for the same loan. To see this, consider the borrower perspective: When the interest rate turns out to be high, the short Eurodollar contract has a positive payoff and the proceeds can be reinvested until the loan payment date at the high realized rate. When the interest rate turns out to be low, the short Eurodollar contract has a negative payoff and we can fund this loss until the loan payment date by borrowing at a low rate. Thus the settlement structure of the Eurodollar contract works systematically in favor of the borrower. By turning the argument around, we can verify that it systematically works against a lender.

The reason this happens with Eurodollars and not FRAs is that we have to make the tailing decision before we know the 3-month rate prevailing on day 120. When we tail by a fixed amount (1.8\% in the above example), the actual variations in the realized rate work in favor of the borrower and against the lender. The FRA avoids this by automatically tailing—paying the present value of the change in borrowing cost—using the actual interest rate on the borrowing date.

In order for the futures price to be fair to both the borrower and lender, the rate implicit in the Eurodollar futures price must be higher than a comparable FRA rate. This difference between the FRA rate and the Eurodollar rate is called convexity bias. For the most part in subsequent discussions we will ignore convexity bias and treat the Eurodollar contract and FRAs as if they are interchangeable. The reason is that in many cases the effect is small. In the above example, convexity bias results in a profit of several hundred dollars out of a borrowing cost of  $1.8\mathrm{m}$ . For short-term contracts, the effect can be small, but for longer-term contracts the effect can be important.[7]

In practice, convexity bias also matters before the final contract settlement. Marking-to-market a futures contract can lead to a futures price that is different from the forward price. When a futures contract is marked to market and interest rates are negatively correlated with the futures price, there is a systematic advantage to being short the futures contract. This leads to a futures price that is greater than the forward price. This is exactly what happens with the Eurodollar contract in this example. When interest rates rise, the borrower receives a payment that can be invested at the higher interest rate. When interest rates fall, the borrower makes a payment that can be funded at the lower interest rate. This works to the borrower's benefit. Marking-to-market prior to settlement is therefore another reason why the rate implied by the Eurodollar contract will exceed that on an otherwise comparable FRA.

LIBOR Versus 3-Month T-Bills. The Eurodollar futures contract is based on LIBOR, but there are other 3-month interest rates. For example, the Treasury-bill futures contract is based on the price of the 3-month Treasury bill. A borrower could use either the Eurodollar contract or the Treasury-bill futures contract to hedge their borrowing rate. Which contract is preferable?

Banks that offer LIBOR time deposits have the potential to default. Thus, LIBOR includes a default premium. (The default premium is an increase in the interest rate that compensates the lender for the possibility the borrower will default.) Private companies that borrow can also default, so their borrowing rates will also include a default premium.

The U.S. government, by contrast, is considered unlikely to default, so it can borrow at a lower rate than firms. In addition, in the United States and other countries, government

The expected error is

$$
\begin{array}{l} E \left[ \frac {\tilde {r} (\tilde {r} - r _ {\text {f o r w a r d}})}{1 + r _ {\text {f o r w a r d}}} \right] = \frac {1}{1 + r _ {\text {f o r w a r d}}} \left[ E (\tilde {r} ^ {2}) - E (\tilde {r} r _ {\text {f o r w a r d}}) \right] \\ = \frac {\sigma^ {2}}{1 + r _ {\text {f o r w a r d}}} \\ \end{array}
$$ where  $\sigma^2$  is the variance of the interest rate. Rates in our example can be  $2\%$  or  $1.5\%$ , so the standard deviation is approximately 25 basis points, or 0.0025, and the variance is thus  $0.0025^2 = 0.00000625$ . Convexity bias is thus


$$

\$ 100\mathrm{m} \times \frac{0.00000625}{1.018} = \$ 613.95

$$

The actual average convexity error in the example was  $(\$  884 + \$ 393)/2, $or$ \ $638.5\$

# FIGURE 2

The 3-month LIBOR rate and 3-month T-bill rate (top panel) and the difference between the two (bottom panel), 1982-2011.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/b8dddf80bd11f4c3676489b2e974c6040134446e8e10e81457b8de9ef40be6f4.jpg) bonds are more liquid than corporate bonds, and this results in higher prices—a liquidity premium—for government bonds.[8]

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/e81b6a2e385738d4c322e2794fa77b13f500e29fbbd84e9033e1412c00748a11.jpg)

Source: Datastream.


The borrower will want to use the futures contract that has a price that moves in tandem with its own borrowing rate. A private borrower's interest rate will more closely track LIBOR than the Treasury-bill rate. In fact, the spread between corporate borrowing rates and Treasuries moves around a great deal. A private firm's borrowing costs can increase even as the T-bill rate goes down; this can occur during times of financial distress, when investors bid up the prices of Treasury securities relative to other assets (a so-called "flight to quality"). Thus, LIBOR is commonly used in markets as a benchmark, high-quality, private interest rate.

Figure 2 shows historical 3-month LIBOR along with the difference between LIBOR and the 3-month T-bill yield, illustrating this variability. It is obvious that the spread varies considerably over time: Although the spread has been as low as a few basis points, twice in the 1990s it exceeded 100 basis points. In September of 1982, when Continental Bank failed, and during the financial crisis of 2008 (see Box 1), the spread exceeded 400 basis points. A private LIBOR-based borrower who had hedged its borrowing rate by shorting T-bill futures in August of 1982 would by September have lost money on the T-bill contract as Treasury rates declined, while the actual cost of borrowing (LIBOR) would have remained close to unchanged. This example illustrates the value of using a hedging contract that reflects the actual cost of borrowing.


The Eurodollar futures contract is far more popular than the T-bill futures contract. Trading volume and open interest on the two contracts were about equal in the early 1980s. However, in recent years, open interest on the Eurodollar contract has been millions of contracts, while the T-bill contract has had zero open interest. This is consistent with LIBOR being a better measure of private sector interest rates than the T-bill yield.

## Duration and Convexity

An important characteristic of a bond is the sensitivity of its price to interest rate changes, which we measure using duration. Duration tells us approximately how much the bond's price will change for a given change in the bond's yield. Duration is thus a summary measure of the risk of a bond, permitting a comparison of bonds with different coupons, times to maturity, and discounts or premiums relative to principal. In this section we also discuss convexity, which is another measure related to bond price risk.

### Price Value of a Basis Point and DV01

We first compute the change in the bond price due to a change in the yield. Suppose a bond makes  $m$  coupon payments per year for  $T$  years in the amount  $C / m$  and pays  $M$  at maturity. Let  $y / m$  be the per-period yield to maturity (by convention,  $y$  is the annualized yield to maturity) and  $n = m \times T$  the number of periods until maturity. The price of the bond,  $B(y)$ , is given by

$$

B (y) = \sum_ {i = 1} ^ {n} \frac {C / m}{(1 + y / m) ^ {i}} + \frac {M}{(1 + y / m) ^ {n}}

$$

The change in the bond price for a unit change in the yield,  $y$ , is

$$

\begin{array}{l} \frac {\text {C h a n g e i n b o n d p r i c e}}{\text {U n i t c h a n g e i n y i e l d}} = - \sum_ {i = 1} ^ {n} \frac {i}{m} \frac {C / m}{(1 + y / m) ^ {i + 1}} - \frac {n}{m} \frac {M}{(1 + y / m) ^ {n + 1}} \\ = - \frac {1}{1 + y / m} \left[ \sum_ {i = 1} ^ {n} \frac {i}{m} \frac {C / m}{(1 + y / m) ^ {i}} + \frac {n}{m} \frac {M}{(1 + y / m) ^ {n}} \right] \tag {9} \\ \end{array}

$$

Equation (9) tells us the dollar change in the bond price for a change of 1.0 in  $y$ . It is natural to scale this either to reflect a change per percentage point [in which case we divide equation (9) by 100] or per basis point (divide equation (9) by 10,000). Equation (9) divided

# Box I: Was LIBOR Accurate During the Financial Crisis?

Unlike most quoted interest rates, LIBOR is not based on a transaction price. Rather, the British Bankers' Association (BBA) conducts a daily survey of 16 large banks and asks about their borrowing rate for a 1 million time deposit. A bank that is regarded as safe will be able to borrow at a lower rate than one thought to be less creditworthy.

During the financial crisis, the BBA became concerned that some of the surveyed banks were not being truthful about their borrowing rates. In April 2008, the Wall Street Journal reported on LIBOR:

The world's most widely used interest rate took its largest jump since the advent of the credit crisis in a sign that banks could be responding to increasing concerns that the rate doesn't reflect their actual borrowing costs.

Thursday's sudden jump in the dollar-denominated London interbank offered rate, or Libor, comes after a decision Wednesday by the British Bankers' Association to speed up an inquiry into the daily borrowing rates that banks provide to establish the Libor rate.

The move by the BBA, which oversees Libor, came amid concerns among bankers that their rivals were not reporting the high rates they were paying for short-term loans for fear of appearing desperate for cash. . . .

Some expect Libor to increase further. William Porter, credit strategist at Credit Suisse, said he believes the three-month dollar rate is 0.4 percentage point below where it should be. That echoes the view of Scott Peng, a Citigroup Inc. analyst who said that Libor understated banks' true borrowing costs by as much as 0.3 percentage points.

Source: Mollenkamp 2008.

Government investigations can move slowly. Three years later, the Financial Times (Masters et al., 2011) reported that subpeonas were being issued to a handful of global banks as regulators investigated LIBOR manipulation between 2006 and 2008. The article noted that LIBOR is used as a benchmark for 350 trillion in financial products, explaining the concern of regulators.

by 10,000 is also known as the price value of a basis point (PVBP) or the dollar value of an 01 (DV01). To interpret PVBP for a bond, we need to know the par value of the bond.

Example 4. Consider the 3-year zero-coupon bond in Table 1 with a yield to maturity of 7\%. The bond price per \$100 of maturity value is $100/1.07³ = $81.62979. At a yield of 7.01\%, one basis point higher, the bond price is $100/1.0701³ = $81.60691, a change of -\$0.02288 per 100 of maturity value.

As an alternative way to derive the price change, we can compute equation (9) with  $C = 0$ ,  $M = \$100$ ,  $n = 3$ , and  $m = 1$  to obtain

$$
- \frac {1}{1 . 0 7} \times 3 \times \frac {\mathbb {S} 1 0 0}{1 . 0 7 ^ {3}} = - \mathbb {S} 2 2 8. 8 7
$$

In order for this to reflect a change of 1 basis point, we divide by 10,000 to obtain  $-\228.87 / 10,000 = -\$ 0.02289, almost equal to the actual bond price change. This illustrates the importance of scaling equation (9) appropriately.

### Duration

When comparing bonds with different prices and par values, it is helpful to have a measure of price sensitivity expressed per dollar of bond price. We obtain this by dividing equation (9) by the bond price,  $B(y)$ , and multiplying by  $-1$ . This gives us a measure known as modified duration, which is the percentage change in the bond price for a unit change in the yield:

$$

\begin{array}{l} \text {M o d i f i e d} = - \frac {\text {C h a n g e i n b o n d p r i c e}}{\text {U n i t c h a n g e i n y i e l d}} \times \frac {1}{B (y)} \\ = \boxed {\frac {1}{B (y)} \frac {1}{1 + y / m} \left[ \sum_ {i = 1} ^ {n} \frac {i}{m} \frac {C / m}{(1 + y / m) ^ {i}} + \frac {n}{m} \frac {M}{(1 + y / m) ^ {n}} \right]} \tag {10} \\ \end{array}

$$

We obtain another measure of bond price risk—Macaulay duration—by multiplying equation (10) by  $1 + y / m$ . This puts both bond price and yield changes in percentage terms and gives us an expression with a clear interpretation:

$$

\begin{array}{l} \text {M a c a u l a y d u r a t i o n} = - \frac {\text {C h a n g e i n b o n d p r i c e}}{\text {U n i t c h a n g e i n y i e l d}} \times \frac {1 + y / m}{B (y)} \\ = \boxed {\frac {1}{B (y)} \left[ \sum_ {i = 1} ^ {n} \frac {i}{m} \frac {C / m}{(1 + y / m) ^ {i}} + \frac {n}{m} \frac {M}{(1 + y / m) ^ {n}} \right]} \tag {11} \\ \end{array}

$$

To interpret this expression, note that  $(C / m) / (1 + y / m)^i$  is the present value of the  $i$ th bond payment, which occurs in  $i / m$  years. The quantity  $C / m / [(1 + y / m)^i B(y)]$  is therefore the fraction of the bond value that is due to the  $i$ th payment. Macaulay duration is a weighted average of the time (number of periods) until the bond payments occur, with the weights being the percentage of the bond price accounted for by each payment. This interpretation of Macaulay duration as a time-to-payment measure explains why these measures of bond price sensitivity are called "duration." For a zero-coupon bond, equation (11) implies that Macaulay duration equals time to maturity.

Macaulay duration illustrates why maturity alone is not a satisfactory risk measure for a coupon bond. A coupon bond makes a series of payments, each with a different maturity. Macaulay duration summarizes bond price risk as a weighted average of these different maturities.

Example 5. Returning to Example 4, using equation (11), Macaulay duration for the  $7\%$  bond is

$$
- \frac {- \$ 2 2 8 . 8 7}{1} \times \frac {1 . 0 7}{\$ 8 1 . 6 2 9 7 9} = 3. 0 0 0
$$

Example 6. Consider the 3-year coupon bond in Table 1. For a par bond, the yield to maturity is the coupon,  $6.95485\%$  in this case. For each payment we have

$$

\% \text {Payment} 1 = \frac {0.0695485}{1.0695485} = 0.065026

$$

$$

\% \text {Payment} 2 = \frac {0.0695485}{(1.0695485) ^ {2}} = 0.060798

$$

$$

\% \text {Payment} 3 = \frac {1.0695485}{(1.0695485) ^ {3}} = 0.874176

$$

Thus, with  $n = 3$  and  $m = 1$ , Macaulay duration is

$$

(1 \times 0. 0 6 5 0 2 6) + (2 \times 0. 0 6 0 7 9 8) + (3 \times 0. 8 7 4 1 7 6) = 2. 8 0 9 1 5

$$

The interpretation of the duration of 2.81 is that the bond responds to interest rate changes as if it were a pure discount bond with 2.81 years to maturity. Modified duration is  $2.80915 / 1.0695485 = 2.626482$ .

Since duration tells us the sensitivity of the bond price to a change in the interest rate, it can be used to compute the approximate bond price change for a given change in interest rates. Suppose the bond price is  $B(y)$  and the yield on the bond changes from  $y$  to  $y + \epsilon$ , where  $\epsilon$  is a small change in the yield. The formula for Macaulay duration,  $D_{\mathrm{Mac}}$ , can be written

$$

D _ {\mathrm {M a c}} = - \frac {\left[ B (y + \epsilon) - B (y) \right]}{\epsilon} \frac {1 + y}{B (y)}

$$

We can therefore rewrite this equation to obtain the new bond price in terms of the old bond price and either duration measure:

$$

B (y + \epsilon) = B (y) - [ D \times B (y) \epsilon ] = B (y) - \left[ D _ {\mathrm {M a c}} / (1 + y) \times B (y) \epsilon \right] \tag {12}

$$

Example 7. Consider the 3-year zero-coupon bond with a price of  $81.63 per$ 100 maturity value. The yield is  $7\%$  and the bond's Macaulay duration is 3.0. If the yield were to increase to  $7.25\%$ , the predicted price would be

$$

B (7.25 \%) = \ 81.63 - (3 / 1.07) \times \ 81.63 \times 0.0025 = \$ 81.058

$$

The actual new bond price is 100 / (1.0725)^3 = \ 81.060. The prediction error is about 0.02\% of the bond price.

Although duration is an important concept and is frequently used in practice, it has a conceptual problem. We emphasized in the previous section that a coupon bond is a collection of zero-coupon bonds, and therefore each cash flow has its own discount rate. Yet both duration formulas are computed assuming that all cash flows are discounted by a single artificial number, the yield to maturity.

### Duration Matching

Suppose we own a bond with time to maturity  $t_1$ , price  $B_1$ , and Macaulay duration  $D_1$ . We are considering a short position in a bond with maturity  $t_2$ , price  $B_2$ , and Macaulay duration

$D_{2}$ . How much of the second bond should we short-sell so that the resulting portfolio—long the bond with duration  $D_{1}$  and short the bond with duration  $D_{2}$ —is insensitive to interest rate changes?

Equation (12) gives us a formula for the change in price of each bond. Let  $N$  denote the quantity of the second bond. The value of the portfolio is

$$

B _ {1} + N B _ {2}

$$ and, using equation (12), the change in price due to an interest rate change of  $\epsilon$  is

$$
\begin{array}{l} \left[ B _ {1} \left(y _ {1} + \epsilon\right) - B _ {1} \left(y _ {1}\right) \right] + N \left[ B _ {2} \left(y _ {2} + \epsilon\right) - B _ {2} \left(y _ {2}\right) \right] \\ = - D _ {1} B _ {1} \left(y _ {1}\right) \epsilon / \left(1 + y _ {1}\right) - N D _ {2} B _ {2} \left(y _ {2}\right) \epsilon / \left(1 + y _ {2}\right) \\ \end{array}
$$ where  $D_{1}$  and  $D_{2}$  are Macaulay durations. If we want the net change to be zero, we choose  $N$  to set the right-hand side equal to zero. This gives


$$

\boxed {N = - \frac {D_{1} B_{1} (y_{1}) / (1 + y_{1})}{D_{2} B_{2} (y_{2}) / (1 + y_{2})}} \tag {13}

$$

When a portfolio is duration-matched in this fashion, the net investment in the portfolio will typically not be zero. That is, either the value of the short bond is less than the value of the long bond, in which case additional financing is required, or vice versa, in which case there is cash to invest. This residual can be financed or invested in very short-term bonds, with duration approximately zero, in order to leave the portfolio duration matched.

Example 8. Suppose we own a 7-year  $6\%$  coupon bond with a yield of  $7\%$  and want to find the duration-matched short position in a 10-year  $8\%$  coupon bond yielding  $7.5\%$ . Assuming annual coupon payments, the Macaulay duration and price of the two bonds is 5.882 years and \$94.611, and 7.297 years and \$103.432, respectively. Thus, if we own one of the 7-year bonds, we must hold

$$
- \frac {5.882 \times 94.611 / (1.07)}{7.297 \times 103.432 / (1.075)} = - 0.7408
$$ units of the 10-year bond. The short position in the 10-year bond is not enough to pay for the 7-year bond; hence, investment in the portfolio is  $1 \times 94.611 - 0.7408 \times 103.432 = 17.99$ . If the yield on both bonds increases 25 basis points, the price change of the portfolio is

$$
- 1.289 + (- 0.7408) \times - 1.735 = - 0.004
$$

### Convexity

The hedge in Example 8 is not perfect, because duration changes as the interest rate changes. Convexity measures the extent to which duration changes as the bond's yield changes. The formula for convexity is

$$
\text {C o n v e x i t y} = \frac {1}{B (y)} \left[ \sum_ {i = 1} ^ {n} \frac {i (i + 1)}{m ^ {2}} \frac {C / m}{(1 + y / m) ^ {i + 2}} + \frac {n (n + 1)}{m ^ {2}} \frac {M}{(1 + y / m) ^ {n + 2}} \right] \tag {14}
$$

We can use convexity in addition to duration to obtain a more accurate prediction of the new bond price. When we include convexity, the price prediction formula, equation (12), becomes

$$
B (y + \epsilon) = B (y) - [ D \times B (y) \times \epsilon ] + 0. 5 \times \text {C o n v e x i t y} \times B (y) \times \epsilon^ {2} \tag {15}
$$ where  $D$  is modified duration. Here is an example of computing a bond price at a new yield using both duration and convexity.


Example 9. Consider again Example 7. We want to predict the new price of a 3-year zero-coupon bond when the interest rate changes from 7\% to 7.25\%. Using equation (14) with C = 0, m = 1, and M = \100, convexity of the bond is

$$

\text {Convexity} = 3 \times 4 \times \frac {100}{1.07^{(3 + 2)}} \times \frac {1}{81.63} = 10.4812

$$

Using equation (15), the price at a yield of  $7.25\%$  is

$$

\begin{array}{l} B (7.25 \%) = \ 81.63 - (3 / 1.07) \times \ 81.63 \times 0.0025 + 0.5 \times 10.4812 \times \ 81.63 \times 0.0025 ^ {2} \\ = \$ 81.060 \\ \end{array}

$$

The predicted price of  \$81.060 is the same as the actual price at a yield of 7.25\%$ , to an accuracy of three decimal points. In Example 7, the predicted price was slightly lower (81.058) than the actual new price. The difference without a convexity correction occurs because the bond's sensitivity to the interest rate changes as the interest rate changes.[16] Convexity corrects for this effect.

Figure 3 illustrates duration and convexity by comparing three bond positions that have identical prices at a yield of  $10\%$ . Duration is the slope of the bond price graph at a given yield, and convexity is the curvature of the graph. The  $10\%$  10-year bond has the lowest duration and is the shallowest bond price curve. The other two bonds have almost equal durations at a yield of  $10\%$  and their slopes are equal in the figure. However, the 25-year bond exhibits greater curvature: Its price is above the 10-year bond at both lower and higher yields. This greater curvature is what it means for the 25-year bond to have greater convexity.

# FIGURE 3

Comparison of the value of three bond positions as a function of the yield to maturity: 2.718 10-year zero-coupon bonds, one 10-year bond paying a  $10\%$  annual coupon, and one 25-year bond paying a  $10\%$  coupon. The duration  $(D)$  and convexity  $(C)$  of each bond at a yield of  $10\%$  are in the legend.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/54a7f19c94ce0de6c8a5daff636c40d8838c73acfc03d22700e982ae20a85478.jpg)

The idea that using both duration and convexity provides a more accurate model of bond price changes is not particular to bonds, but it pertains to options as well.

## Treasury-Bond and Treasury-Note Futures

The Treasury-note and Treasury-bond futures contracts are important instruments for hedging interest rate risk. $^{17}$  The specifications for the T-note contract are listed in Figure 4. The bond contract is similar except that the deliverable bond has a maturity of at least 15 years, or if the bond is callable, has 15 years to first call. The two contracts are similar; we will focus here on the T-note contract. In this discussion we will use the terms "bond" and "note" interchangeably.

The basic idea of the T-note contract is that a long position is an obligation to buy a  $6\%$  bond with between 6.5 and 10 years to maturity. To a first approximation, we can think of the underlying as being like a stock with a dividend yield of  $6\%$ . The futures price would then be computed as with a stock index: the future value of the current bond price, less the future value of coupons payable over the life of the futures contract.

This description masks a complication that may already have occurred to you. The delivery procedure permits the short to deliver any note maturing in 6.5 to 10 years. Hence, the delivered note can be one of many outstanding notes, with a range of coupons and maturities. Which bond does the futures price represent?

Of all bonds that could be delivered, there will generally be one that is the most advantageous for the short to deliver. This bond is called the cheapest to deliver. A description of the delivery procedure will demonstrate the importance of the cheapest-to-deliver bond.

<table><tr><td>FIGURE 4</td><td>Where traded</td><td>CME Group/CBOT</td></tr><tr><td rowspan="3">Specifications for the Treasury-note futures contract.</td><td>Underlying Size Months</td><td>6\% 10-year Treasury note \$100,000 Treasury note March, June, September, December, out 15 months</td></tr><tr><td>Trading ends</td><td>Seventh business day preceding last business day of month. Delivery until last business day of month.</td></tr><tr><td>Delivery</td><td>Physical T-note with at least 6.5 years to maturity and not more than 10 years to maturity. Price paid to the short for notes with other than 6\% coupon is determined by multiplying futures price by a conversion factor. The conversion factor is the price of the delivered note (\$1 par value) to yield 6\%. Settlement until last business day of the month.</td></tr></table>

In fulfilling the note futures contract, the short delivers the bond in exchange for payment. The payment to the short—the invoice price for the delivered bond—is the futures price times the conversion factor. The conversion factor is the price of the bond if it were priced to yield  $6\%$ . Thus, the short delivering a bond is paid

Invoice price  $=$  (Futures price  $\times$  conversion factor) + accrued interest

Example 10. Consider two bonds making semiannual coupon payments. Bond A is a  $7\%$  coupon bond with exactly 8 years to maturity, a price of 103.71, and a yield of  $6.4\%$ . This bond would have a price of 106.28 if its yield were  $6\%$ . Thus its conversion factor is 1.0628.

Bond B has 7 years to maturity and a  $5\%$  coupon. Its current price and yield are 92.73 and  $6.3\%$ . It would have a conversion factor of 0.9435, since that is its price at a  $6\%$  yield.

Now suppose that the futures contract is close to expiration, the observed futures price is 97.583, and the only two deliverable bonds are Bonds A and B. The short can decide which bond to deliver by comparing the market value of the bond to its invoice price if delivered. For Bond A we have

$$

\text {Invoice price} - \text {market price} = (97.583 \times 1.0628) - 103.71 = 0.00

$$

For Bond B we have

TABLE 5
Prices, yields, and the conversion factor for two bonds. The futures price is 97.583. The short would break even delivering the 8-year  $7\%$  bond, and lose money delivering the 7-year  $5\%$  bond. Both bonds make semiannual coupon payments.

<table><tr><td>Description</td><td>8-Year 7\% Coupon, 6.4\% Yield</td><td>7-Year 5\% Coupon, 6.3\% Yield</td></tr><tr><td>Market price</td><td>103.71</td><td>92.73</td></tr><tr><td>Price at 6\% (conversion factor)</td><td>106.28</td><td>94.35</td></tr><tr><td>Invoice price (futures × conversion factor)</td><td>103.71</td><td>92.09</td></tr><tr><td>Invoice – market</td><td>0</td><td>-0.66</td></tr></table>

Invoice price - market price  $= (97.583 \times 0.9435) - 92.73 = -0.66$

These calculations are summarized in Table 5.

Based on the yields for the two bonds, the short breaks even delivering the 8-year  $7\%$  bond and would lose money delivering the 7-year  $5\%$  coupon bond (the invoice price is less than the market price). In this example, the 8-year  $7\%$  bond is thus the cheapest to deliver.

In general there will be a single cheapest-to-deliver bond. You might be wondering why both bonds are not equally cheap to deliver. The reason is that the conversion factor is set by a mechanical procedure (the price at which the bond yields  $6\%$ ), taking no account of the current relative market prices of bonds. Except by coincidence, two bonds will not be equally cheap to deliver.

Also, all but one of the bonds must have a negative delivery value. If two bonds had a positive delivery value, then arbitrage would be possible. The only no-arbitrage configuration in general has one bond worth zero to deliver (Bond A in Example 10) and the rest lose money if delivered. To avoid arbitrage, the futures price is

$$

\text {F u t u r e s p r i c e} = \frac {\text {P r i c e o f c h e a p e s t t o d e l i v e r}}{\text {C o n v e r s i o n f a c t o r f o r c h e a p e s t t o d e l i v e r}} \tag {16}

$$

This discussion glosses over subtleties involving transaction costs (whether you already own a bond may affect your delivery profit calculation) and uncertainty before the delivery period about which bond will be cheapest to deliver. Also the T-note is deliverable at any time during the expiration month, but trading ceases with 7 business days remaining. Consequently, if there are any remaining open contracts during the last week of the month, the short has the option to deliver any bond at a price that might be a week out of date. This provides a delivery option for the short that is also priced into the contract.

The T-bond and T-note futures contracts have been extremely successful. The contracts illustrate some important design considerations for a futures contract. Consider first how the contract is settled. If the contract designated a particular T-bond as the underlying asset, that T-bond could be in short supply, and in fact it might be possible for someone to corner the available supply. (A market corner occurs when someone buys most or all of the deliverable asset or commodity.) A short would then be unable to obtain the bond to deliver. In addition, the deliverable T-bond would change from year to year and the contract would become more complicated, since traders would have to price the futures differently to reflect different underlying bonds for different maturity dates.


An alternative scheme could have had the contract cash-settle against a T-bond index, much like the S&P 500. This arrangement, however, introduces basis risk, as the T-bond futures contract might then track the index but fail to track any particular bond.

In the end, settlement procedures for the T-bond and T-note contracts permitted a range of bonds and notes to be delivered. Since a high-coupon bond is worth more than an otherwise identical low-coupon bond, there had to be a conversion factor, in order that the short is paid more for delivering the high-coupon bond.

The idea that there is a cheapest to deliver is not exclusive to Treasury bonds. The same issue arises with commodities, where a futures contract may permit delivery of commodities at different locations or of different qualities.

## Repurchase Agreements

A repurchase agreement, or repo, is the sale of a security, with the seller agreeing to buy the security back at a prespecified price at a later date. The counterparty to a repo enters into a reverse repurchase agreement, or reverse repo, which is the purchase of a security, with the buyer agreeing to sell it at the prespecified price at the later date. The repo is a reverse cash-and-carry—a sale coupled with a long forward position. The reverse repo is a cash-and-carry—a purchase coupled with a short forward position.

A repo is at bottom a simple idea. The borrower (the repo) owns a security and would like to temporarily obtain cash. Similarly, the lender (the reverse repo) has cash and would like to lend the cash to earn a return. The security owner is able to borrow cash using the security as collateral for the loan. While the repo is in place, however, the lender owns the bond. The party who repos, however, owns the bond both before and after the repo and therefore bears the long-run risk of owning the security. Although the mechanics of a repo can seem arcane, it is a collateralized loan. We will use the language of loans to talk about repos.

The implicit interest rate in the transaction is the repo rate: the annualized percentage difference between the sale and purchase price. Repos are common in bond markets, but a repurchase agreement can be used for any asset. Most repos are overnight. A longer-term repurchase agreement is called a term repo.

Example 11. Suppose you enter into a 1-week repurchase agreement for a 9-month \$1m Treasury bill. The current price of the T-bill is \$956,938, and you agree to repurchase it in 1 week for 958,042. You have borrowed money at a 1-week rate of 958,042/956,938 - 1 = 0.115\%, receiving cash today and promising to repay cash plus interest in a week. The security provides collateral for the loan.

An important feature of a repo is that the actual cash amount exchanged for the security can be less than the market value of the security serving as collateral. The amount by which the value of the collateral exceeds the amount of the loan is called a haircut. The haircut provides a cushion should the security fall in value and the borrower fail to repay the loan.

The size of the haircut reflects the credit risk of the borrower as well as the risk of the collateral. A  $2\%$  haircut would mean that a borrower repoing a security worth \$102 would receive a loan of only \$100. Collateral with a more variable price and a less liquid market is lower quality from the perspective of the lender and typically would require a greater haircut.

Repurchase agreements played an important role in the financial crisis in 2008. Box 2 discusses this.

Repurchase agreements often use government securities as collateral, and can be negotiated to require a specific security as collateral—called a special collateral repurchase agreement—or with any of a variety of government securities as collateral—called a general collateral repurchase agreement. General collateral repos have greater flexibility and hence lower transaction costs.

The repo rate on special collateral repos will generally be below that on general collateral repos. (The borrower obtains a more favorable rate because the collateral is more desirable.) With a low enough repo rate, the original bondholder can earn interest on the cash received for the bond that exceeds the repo rate. The borrower thereby profits from the specialness of the bond.

When two parties transact a repo directly with each other, the transaction is known as a bilateral repo. It is also common for the two parties to agree to a repo but then to use a tri-party agent to provide operational assistance, such as the transferring of collateral and cash between the two parties, and valuing collateral. This is called a tri-party repo.[19]

Repurchase agreements can be used by dealers as a form of financing. The purchase of a security requires funds. A dealer can buy a bond and then repo it overnight. The money raised with the repo, together with the haircut, provides the cash needed to pay the bond seller. The dealer then has a cost of carrying the bond equal to the repo rate plus the capital cost of the haircut. The counterparty on this transaction is a lender with cash to invest short-term, such as a money-market fund.

The same techniques can be used to finance speculative positions. A hedge fund speculating on the price difference between two Treasury bonds—a transaction known as a "convergence trade"—can finance the transaction with repos. The hedge fund will undertake the following two transactions simultaneously:

The long position. Buy bond A and repo it, using the cash received in the repo to pay for the bond. When it is time to unwind the repo, close the repo position and sell the bond, using the cash raised from the sale to repay the loan (think of the bond sale and close of the repo as happening simultaneously). Note that a low repo rate for this bond works to the arbitrageur's advantage, since it means that the interest rate on the loan is low. The arbitrageur also benefits from a price increase on the bond.

The short position. Borrow bond B by entering into a reverse repurchase agreement. Obtain the bond (collateral for the loan) via the reverse repo, sell it, and use the proceeds to lend to the counterparty. At the termination of the agreement, buy the bond back in the open market and return it, being paid the repo rate. Since we receive interest in this transaction, a high repo rate works to the arbitrageur's advantage as does a price decrease on the bond.

One well-known convergence trade involves newly issued on-the-run 30-year Treasury bonds, which typically sell at a lower yield than the almost identical off-the-run  $29\frac{1}{2}$ -year Treasury bond.[20] One would expect that the yields of the 30-year and  $29\frac{1}{2}$ -year bonds would converge as the 30-year bond aged and became off-the-run. As described above, traders making this bet would reverse repo the on-the-run bond (betting that its price will fall) and repo the off-the-run bond (betting that its price will rise). Traders profit from a convergence in price.

The arbitrageur in this situation would like a low repo rate on the purchased bond and a high repo rate on the sold bond, as well as a price increase of the purchased bond relative to the short-sold bond.[21] Even if the price gap between the two bonds closes, the arbitrage can be prohibitively costly if the difference in repo rates on the two bonds is sufficiently great. Finally, the size of the haircut will affect the desirability of the trade. Box 3 describes the use of repos by Long-Term Capital Management, a hedge fund.

# CHAPTER SUMMARY

The price of a zero-coupon bond with  $T$  years to maturity tells us the value today of \$1 to be received at time  $T$ . The set of these bond prices for different maturities is the zero-coupon yield curve and is the basic input for present value calculations. There are equivalent ways to express the same information about interest rates, including the par coupon rate and implied forward rates.

Forward rate agreements (FRAs) permit borrowers and lenders to hedge the interest rate by locking in the implied forward rate. If the interest rate changes, FRAs require a payment reflecting the change in the value of the interest rate as of the loan's maturity day. Eurodollar contracts are an alternative to FRAs as a hedging mechanism. However, Eurodollar contracts make payment on the initiation date for the loan rather than the maturity date, so there is a timing mismatch between the Eurodollar payment and the interest payment date. This gives rise to convexity bias, which causes the rate implied by the Eurodollar contract to be greater than that for an otherwise equivalent FRA. Treasury bill contracts are yet another possible hedging vehicle, but suffer from basis risk since the change in the government's borrowing rate may be different from the change in the borrowing rate for a firm or individual.

PVBP and DV01 measure the dollar change in a bond's price when the yield increases by one basis point.

Modified duration is the percentage change in the bond price for a unit change in the interest rate. Macaulay duration is the percentage change in the bond price for a percentage change in the discount factor. Duration is not a perfect measure of bond price risk. A portfolio

# Box 2: Repo in the 2008 Financial Crisis

Repurchase agreements are not as familiar as stocks and bonds. During and after the 2008 financial crisis, however, repo transactions made headlines. Three aspects of repo were noteworthy. First, the volume of repo was enormous. Second, most repo agreements are for short time periods, often overnight. This contributed to the fragility of financial institutions that were heavily reliant on repo financing. Third, repo transactions were used to manipulate accounting reports, most notably at Lehman Brothers and Bank of America.

Surprisingly, no one knows exactly how big the repo market is. There is agreement that the outstanding amount of repo in the U.S. and Europe is in the trillions of dollars, with estimates as great as 10 trillion in each locale (Hördahl and King, 2008; Gorton and Metrick, 2010). One difficulty of measuring repo is that a given security may be repoed multiple times. For example, a money-market fund may have cash to lend and a dealer may have a bond to use as collateral. The dealer may repo the bond to another dealer who in turn repos it to the money market fund. The act of reposing a security that is itself serving as collateral is called rehypothecation. From an economic perspective, the same bond has been loaned twice for the same ultimate economic purpose; the multiple transactions due to rehypothecation should count as one transaction (the loan of one security for cash) rather than two.

Repurchase agreements are widely used as a way to finance the holding of a long-term asset. A bank could buy a bond (e.g., a mortgage-backed obligation) and finance the bond with a repurchase agreement. If the haircut were  $5\%$ , the bank could buy a  \$105 bond by investing\$ 5 of capital and repoing the bond for 100. When the repo expires, the bank must either renew the repo or find a new repo counterparty. A risk of repo finance is that if the bank gets into trouble, or if the bond's risk increases, the counterparty might refuse to continue lending or might increase the haircut. Gorton and Metrick (2009) argue that increases in haircuts on mortgage-backed instruments caused a "run on repo." If haircuts increase significantly, a bank that is heavily repo-financed will have to sell assets, possibly realizing losses, contributing to (or revealing) price declines for the assets, and causing lenders to flee. Lenders to Bear Stears and Lehman, for example, withdrew repo financing in the days before they failed.


Finally, the bankruptcy of Lehman provided a glimpse into the use of repo to manipulate accounting statements. The Lehman bankruptcy examiner found that Lehman systematically understated its leverage on its accounting reports (Valukas, 2010). At each quarter end, Lehman engaged in a strategy known as "Repo 105," in which it would use repos to sell assets, receive cash, and use the cash to buy down debt. It would reverse the transaction at the beginning of the next quarter, borrowing to buy the assets back. The repos were reported as asset sales rather than repos. It was later disclosed that Citigroup and Bank of America did the same thing, although both banks claimed that they did not intend to create misleading financial statements (see Rapoport, 2010).

is said to be duration-matched if it consists of short and long bond positions with equal value-weighted durations. Convexity is a measure of the change in duration as the bond's yield to maturity changes.

Treasury-note and Treasury-bond futures contracts have Treasury notes and bonds as underlying assets. A complication with these contracts is that a range of bonds are

# BOX 3: Long-Term Capital Management

Repurchase agreements achieved particular notoriety during the Long-Term Capital Management (LTCM) crisis in 1998. LTCM was a hedge fund with a luminous roster of partners, including star bond trader John Meriwether, former Federal Reserve Vice Chairman David Mullins, and academics Robert Merton and Myron Scholes, who won the Nobel Prize in Economics while associated with LTCM.

Many of LTCM's strategies involved convergence trades. In his book about LTCM, Lowenstein (2000, p. 45) described one trade like this: "No sooner did Long-Term buy the off-the-run bonds than it loaned them to some other Wall Street firm, which then wired cash to Long-Term as collateral. Then Long-Term turned around and used this cash as collateral on the bonds that it borrowed. The collateral it paid equaled the collateral it collected. In other words, Long-Term pulled off the entire 2 billion trade without using a dime of its own cash." (Emphasis in original.)


When LTCM failed in the fall of 1998, it had many such transactions and thus potentially many creditors. The difficulty of unwinding all of these intertwined positions was one of the reasons the Fed brokered a buyout of LTCM by other banks, rather than have LTCM explicitly declare bankruptcy.

deliverable, and there is a cheapest to deliver. The futures price will reflect expectations about which bond is cheapest to deliver.

Repurchase agreements and reverse repurchase agreements are synthetic short-term borrowing and lending, the equivalent of reverse cash-and-carry and cash-and-carry transactions.

## Further Reading

Basic interest rate concepts are fundamental in finance. While the bond price calculations in this chapter are useful in practice, concepts such as duration have conceptual problems.

Useful references for bond and money market calculations are Stigum (1990) and Stigum and Robinson (1996). Veronesi (2010), Sundaresan (2009) and Tuckman (1995) are fixed-income texts that go into topics in this chapter in more depth. Convexity bias is studied by Burghardt and Hoskins (1995) and Gupta and Subrahmanyam (2000). Grinblatt and Longstaff (2000) discuss the market for STRIPS and study the pricing relationships between Treasury bonds and STRIPS. The repo market is discussed in Fleming and Garbade (2002, 2003, 2004).

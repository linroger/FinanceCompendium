---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: 6.1 DAY COUNT AND QUotation CONVENTIONS
linter-yaml-title-alias: 6.1 DAY COUNT AND QUotation CONVENTIONS
---

# 6.1 DAY COUNT AND QUotation CONVENTIONS

As a preliminary to the material in this chapter, we consider the day count and quotation conventions that apply to bonds and other instruments dependent on interest rates.

# Day Counts

The day count defines the way in which interest accrues over time. Generally, we know the interest earned over some reference period (e.g., the time between coupon payments on a bond), and we are interested in calculating the interest earned over some other period.

The day count convention is usually expressed as  $X / Y$ . When we are calculating the interest earned between two dates,  $X$  defines the way in which the number of days between the two dates is calculated, and  $Y$  defines the way in which the total number of days in the reference period is measured. The interest earned between the two dates is

Number of days between dates  $\times$  Interest earned in reference period

Three day count conventions that are commonly used in the United States are:

1. Actual/actual (in period)
2. 30/360
3. Actual/360

# Business Snapshot 6.1 Day Counts Can Be Deceptive

Between February 28, 2018, and March 1, 2018, you have a choice between owning a U.S. government bond and a U.S. corporate bond. They pay the same coupon and have the same quoted price. Assuming no risk of default, which would you prefer?

It sounds as though you should be indifferent, but in fact you should have a marked preference for the corporate bond. Under the 30/360 day count convention used for corporate bonds, there are 3 days between February 28, 2018, and March 1, 2018. Under the actual/actual (in period) day count convention used for government bonds, there is only 1 day. You would earn approximately three times as much interest by holding the corporate bond!

The actual/actual (in period) day count is used for Treasury bonds in the United States. This means that the interest earned between two dates is based on the ratio of the actual days elapsed to the actual number of days in the period between coupon payments. Assume that the bond principal is 100, coupon payment dates are March 1 and September 1, and the coupon rate is 8\% per annum. (This means that 4 of interest is paid on each of March 1 and September 1.) Suppose that we wish to calculate the interest earned between March 1 and July 3. The reference period is from March 1 to September 1. There are 184 (actual) days in the reference period, and interest of 4 is earned during the period. There are 124 (actual) days between March 1 and July 3. The interest earned between March 1 and July 3 is therefore

$$
\frac {1 2 4}{1 8 4} \times 4 = 2. 6 9 5 7
$$

The 30/360 day count is used for corporate and municipal bonds in the United States. This means that we assume 30 days per month and 360 days per year when carrying out calculations. With the 30/360 day count, the total number of days between March 1 and September 1 is 180. The total number of days between March 1 and July 3 is  $(4 \times 30) + 2 = 122$ . In a corporate bond with the same terms as the Treasury bond just considered, the interest earned between March 1 and July 3 would therefore be

$$
\frac {1 2 2}{1 8 0} \times 4 = 2. 7 1 1 1
$$

As shown in Business Snapshot 6.1, sometimes the 30/360 day count convention has surprising consequences.

The actual/360 day count is used for money market instruments in the United States. This indicates that the reference period is 360 days. The interest earned during part of a year is calculated by dividing the actual number of elapsed days by 360 and multiplying by the rate. The interest earned in 90 days is therefore exactly one-fourth of the quoted rate, and the interest earned in a whole year of 365 days is 365/360 times the quoted rate.

Conventions vary from country to country and from instrument to instrument. For example, money market instruments are quoted on an actual/365 basis in Australia, Canada, and New Zealand. LIBOR is quoted on an actual/360 for all currencies except sterling, for which it is quoted on an actual/365 basis. Euro-denominated and sterling bonds are usually quoted on an actual/actual basis.

# Price Quotations of U.S. Treasury Bills

The prices of money market instruments are sometimes quoted using a discount rate. This is the interest earned as a percentage of the final face value rather than as a percentage of the initial price paid for the instrument. An example is Treasury bills in the United States. If the price of a 91-day Treasury bill is quoted as 8, this means that the rate of interest earned is  $8\%$  of the face value per 360 days. Suppose that the face value is \ $100. Interest of \$ 2.0222 (= \ $100 × 0.08 × 91/360) is earned over the 91-day life. This corresponds to a true rate of interest of 2.0222/(100 - 2.0222) = 2.064\% for the 91-day period. In general, the relationship between the cash price per \$ 100 of face value and the quoted price of a Treasury bill in the United States is

$$
P = \frac {3 6 0}{n} (1 0 0 - Y)
$$ where  $P$  is the quoted price,  $Y$  is the cash price, and  $n$  is the remaining life of the Treasury bill measured in calendar days. For example, when the cash price of a 90-day Treasury bill is 99, the quoted price is 4.


# Price Quotations of U.S. Treasury Bonds

Treasury bond prices in the United States are quoted in dollars and thirty-seconds of a dollar. The quoted price is for a bond with a face value of $100. Thus, a quote of 120-05 or  $120\frac{5}{32}$  indicates that the quoted price for a bond with a face value of $100,000 is 120,156.25.

The quoted price, which traders refer to as the clean price, is not the same as the cash price paid by the purchaser of the bond, which is referred to by traders as the dirty price. In general,

Cash price = Quoted price + Accrued interest since last coupon date

To illustrate this formula, suppose that it is March 5, 2018, and the bond under consideration is an  $11\%$  coupon bond maturing on July 10, 2038, with a quoted price of 155-16 or $155.50. Because coupons are paid semiannually on government bonds (and the final coupon is at maturity), the most recent coupon date is January 10, 2018, and the next coupon date is July 10, 2018. The (actual) number of days between January 10, 2018, and March 5, 2018, is 54, whereas the (actual) number of days between January 10, 2018, and July 10, 2018, is 181. On a bond with $100 face value, the coupon payment is 5.50 on January 10 and July 10. The accrued interest on March 5, 2018, is the share of the July 10 coupon accruing to the bondholder on March 5, 2018. Because actual/actual in period is used for Treasury bonds in the United States, this is

$$

\frac {5 4}{1 8 1} \times \$ 5. 5 0 = \$ 1. 6 4

$$

The cash price per 100 face value for the bond is therefore

$$

\$ 155.50 + \$ 1.64 = \$ 157.14

$$

Thus, the cash price of a $100,000 bond is $157,140.

# 6.2 TREASURY BOND FUTURES

Table 6.1 shows interest rate futures quotes on May 21, 2020. Trading in the Ultra T-bond futures contract started in 2010. Any government bond with a maturity over 25 years can be delivered by the party with the short position under the terms of this contract. In the T-bond futures contract, any government bond that has a maturity between 15 and 25 years can be delivered.

A Treasury note is a Treasury bond with maturity between one and ten years. As can be seen from the volume of trading, the 10-year, 5-year, and 2-year Treasury note futures contracts with short maturities are very popular. In the 10-year Treasury note futures contract, any note with a maturity between  $6\frac{1}{2}$  and 10 years can be delivered. In the 5-year and 2-year Treasury note futures contracts, the note delivered has a remaining life of about 5 years and 2 years, respectively, and the original life must be less than 5.25 years.

The 30-day Fed Funds Rate contract has a settlement price equal to 100 minus the arithmetic average of the federal funds rate during the contract month. The Eurodollar and SOFR contracts will be discussed in Section 6.3.

# Quotes

Ultra T-bond futures and Treasury bond futures contracts are quoted in dollars and thirty-seconds of a dollar per $100 face value. This is similar to the way the bonds are quoted in the spot market. In Table 6.1, the settlement price of the June 2020 Treasury bond futures contract is specified as 179-20. This means  $179_{32}^{20}$ , or 179.625. The settlement price of the 10-year Treasury note futures contract is quoted to the nearest half of a thirty-second. Thus the settlement price of 139-025 for the June 2020 contract should be interpreted as  $139_{32}^{2.5}$ , or 139.078125. The 5-year and 2-year Treasury note contracts are quoted even more precisely, to the nearest quarter of a thirty-second. Thus the opening price of 125-132 for the September 2020 5-year Treasury note contract should be interpreted as  $125_{32}^{13.25}$ , or 125.4140625. Similarly, the settlement price of 110-127 for September 2020 2-year Treasury note contract should be interpreted as  $110_{32}^{12.75}$ , or 110.3984375.

# Conversion Factors

When a particular bond is delivered in a CME group bond futures contract, a parameter known as its conversion factor defines the price received for the bond by the party with the short position. The applicable quoted price for the bond delivered is the product of the conversion factor and the most recent settlement price for the futures contract. Taking accrued interest into account (see Section 6.1), the cash received for each 100 face value of the bond delivered is

$$

\left(\text {M o s t r e c e n t s e t t l e m e n t p r i c e} \times \text {C o n v e r s i o n f a c t o r}\right) + \text {A c c r u e d i n t e r e s t}

$$

Each contract is for the delivery of  $100,000 face value of bonds. Suppose that the most recent settlement price is 120-00, the conversion factor for the bond delivered is 1.3800, and the accrued interest on this bond at the time of delivery is$ 3 per 100 face value.

Table 6.1 Futures quotes for a selection of CME Group contracts on interest rates on May 21, 2020.

<table><tr><td></td><td>Open</td><td>High</td><td>Low</td><td>Prior settlement</td><td>Last trade</td><td>Change</td><td>Volume</td></tr><tr><td colspan="8">Ultra T-Bond, $100,000</td></tr><tr><td>June 2020</td><td>220-06</td><td>221-31</td><td>220-06</td><td>220-17</td><td>220-28</td><td>+0-11</td><td>238,736</td></tr><tr><td>Sept. 2020</td><td>218-25</td><td>220-12</td><td>218-25</td><td>218-31</td><td>219-14</td><td>+0-15</td><td>137,715</td></tr><tr><td colspan="8">Treasury Bond, $100,000</td></tr><tr><td>June 2020</td><td>179-15</td><td>180-08</td><td>179-13</td><td>179-20</td><td>179-27</td><td>+0-07</td><td>395,908</td></tr><tr><td>Sept. 2020</td><td>177-29</td><td>178-22</td><td>177-29</td><td>178-03</td><td>178-08</td><td>+0-05</td><td>211,246</td></tr><tr><td colspan="8">10-Year Treasury Notes, $100,000</td></tr><tr><td>June 2020</td><td>139-005</td><td>139-070</td><td>138-315</td><td>139-025</td><td>139-020</td><td>-0-005</td><td>1,364,022</td></tr><tr><td>Sept. 2020</td><td>138-230</td><td>138-300</td><td>138-230</td><td>138-250</td><td>138-250</td><td>0-000</td><td>489,015</td></tr><tr><td colspan="8">5-Year Treasury Notes, $100,000</td></tr><tr><td>June 2020</td><td>125-190</td><td>125-217</td><td>125-180</td><td>125-205</td><td>125-197</td><td>-0-007</td><td>1,149,055</td></tr><tr><td>Sept. 2020</td><td>125-132</td><td>125-162</td><td>125-125</td><td>125-147</td><td>125-142</td><td>-0-005</td><td>709,155</td></tr><tr><td colspan="8">2-Year Treasury Notes, $200,000</td></tr><tr><td>June 2020</td><td>110-082</td><td>110-086</td><td>110-080</td><td>110-085</td><td>110-082</td><td>-0-002</td><td>547,322</td></tr><tr><td>Sept. 2020</td><td>110-123</td><td>110-130</td><td>110-122</td><td>110-127</td><td>110-127</td><td>0-000</td><td>351,107</td></tr><tr><td colspan="8">30-Day Fed Funds Rate, $5,000,000</td></tr><tr><td>May 2020</td><td>99.9475</td><td>99.950</td><td>99.9525</td><td>99.9475</td><td>99.9475</td><td>0.000</td><td>2,703</td></tr><tr><td>June 2020</td><td>99.950</td><td>99.950</td><td>99.945</td><td>99.945</td><td>99.950</td><td>+0.005</td><td>15,306</td></tr><tr><td>July 2020</td><td>99.950</td><td>99.950</td><td>99.945</td><td>99.950</td><td>99.950</td><td>0.000</td><td>22,982</td></tr><tr><td colspan="8">Eurodollar, $1,000,000</td></tr><tr><td>Sept. 2020</td><td>99.730</td><td>99.730</td><td>99.710</td><td>99.725</td><td>99.720</td><td>-0.005</td><td>100,166</td></tr><tr><td>Dec. 2020</td><td>99.710</td><td>99.720</td><td>99.700</td><td>99.715</td><td>99.710</td><td>-0.005</td><td>76,127</td></tr><tr><td>Dec. 2021</td><td>99.775</td><td>99.785</td><td>99.770</td><td>99.780</td><td>99.775</td><td>-0.005</td><td>77,528</td></tr><tr><td>Dec. 2022</td><td>99.665</td><td>99.680</td><td>99.655</td><td>99.670</td><td>99.665</td><td>-0.005</td><td>56,826</td></tr><tr><td>Dec. 2023</td><td>99.500</td><td>99.520</td><td>99.495</td><td>99.510</td><td>99.505</td><td>-0.005</td><td>33,203</td></tr><tr><td>Dec. 2024</td><td>99.320</td><td>99.345</td><td>99.310</td><td>99.320</td><td>99.320</td><td>0.000</td><td>27,584</td></tr><tr><td colspan="8">1-Month SOFR, $5,000,000</td></tr><tr><td>May 2020</td><td>99.9525</td><td>99.9575</td><td>99.9525</td><td>99.9525</td><td>99.9575</td><td>+0.005</td><td>5,497</td></tr><tr><td>June 2020</td><td>99.945</td><td>99.945</td><td>99.940</td><td>99.945</td><td>99.945</td><td>0.000</td><td>2,363</td></tr><tr><td>July 2020</td><td>99.945</td><td>99.945</td><td>99.940</td><td>99.945</td><td>99.940</td><td>-0.005</td><td>1,010</td></tr><tr><td colspan="8">3-Month SOFR, 1,000,000</td></tr><tr><td>June 2020</td><td>99.940</td><td>99.945</td><td>99.940</td><td>99.940</td><td>99.9425</td><td>+0.0025</td><td>677</td></tr><tr><td>Dec. 2020</td><td>99.955</td><td>99.965</td><td>99.955</td><td>99.960</td><td>99.965</td><td>+0.005</td><td>942</td></tr><tr><td>June 2021</td><td>99.990</td><td>99.995</td><td>99.990</td><td>99.995</td><td>99.995</td><td>0.000</td><td>7,447</td></tr><tr><td>Dec. 2021</td><td>99.990</td><td>99.990</td><td>99.985</td><td>99.990</td><td>99.990</td><td>0.000</td><td>9,666</td></tr></table>

The cash received by the party with the short position (and paid by the party with the long position) is then

$$

(1. 3 8 0 0 \times 1 2 0. 0 0) + 3. 0 0 = \$ 1 6 8. 6 0

$$ per  $100 face value. A party with the short position in one contract would deliver bonds with a face value of$ 100,000 and receive 168,600.

The conversion factor for a bond is set equal to the quoted price the bond would have per dollar of principal on the first day of the delivery month on the assumption that the interest rate for all maturities equals  $6\%$  per annum (with semiannual compounding). In the case of the first three contracts in Table 6.1, the bond maturity and the times to the coupon payment dates are rounded down to the nearest 3 months for the purposes of the calculation. The practice enables the exchange to produce comprehensive tables. If, after rounding, the bond lasts for an exact number of 6-month periods, the first coupon is assumed to be paid in 6 months. If, after rounding, the bond does not last for an exact number of 6-month periods (i.e., there are an extra 3 months), the first coupon is assumed to be paid after 3 months and accrued interest is subtracted.

As a first example of these rules, consider a  $10\%$  coupon bond with 20 years and 2 months to maturity that is deliverable in the T-bond futures contract. For the purposes of calculating the conversion factor, the bond is assumed to have exactly 20 years to maturity. The first coupon payment is assumed to be made after 6 months. Coupon payments are then assumed to be made at 6-month intervals until the end of the 20 years when the principal payment is made. Assume that the face value is $100. When the discount rate is  $6\%$  per annum with semiannual compounding (or  $3\%$  per 6 months), the value of the bond is

$$
\sum_ {i = 1} ^ {4 0} \frac {5}{1 . 0 3 ^ {i}} + \frac {1 0 0}{1 . 0 3 ^ {4 0}} = \$ 1 4 6. 2 3
$$

Dividing by the face value gives a conversion factor of 1.4623.

As a second example of the rules, consider an  $8\%$  coupon bond with 18 years and 4 months to maturity. For the purposes of calculating the conversion factor, the bond is assumed to have exactly 18 years and 3 months to maturity. Discounting all the payments back to a point in time 3 months from today at  $6\%$  per annum (compounded semiannually) gives a value of

$$
4 + \sum_ {i = 1} ^ {3 6} \frac {4}{1 . 0 3 ^ {i}} + \frac {1 0 0}{1 . 0 3 ^ {3 6}} = \$ 1 2 5. 8 3 2 3
$$

The interest rate for a 3-month period is  $\sqrt{1.03} - 1$ , or  $1.4889\%$ . Hence, discounting back to the present gives the bond's value as  $125.8323 / 1.014889 = \$ 123.99. Subtracting the accrued interest of 2.0 gives \121.99. The conversion factor is therefore 1.2199.

In the case of the 2-year and 5-year note futures contract, a similar calculation is used to determine the conversion factor except that the time to maturity is rounded to the nearest month.

# Cheapest-to-Deliver Bond

At any given time during the delivery month, there are many bonds that can be delivered in bond futures contracts. These vary widely as far as coupon and maturity are concerned. The party with the short position can choose which of the available bonds is "cheapest" to deliver. Because the party with the short position receives

$$
\text {(M o s t r e c e n t s e t t l e m e n t p r i c e} \times \text {C o n v e r s i o n f a c t o r)} + \text {A c c r u e d i n t e r e s t}
$$ and the cost of purchasing a bond is


$$

\text {Q u o t e d b o n d p r i c e} + \text {A c c r u e d i n t e r e s t}

$$ the cheapest-to-deliver bond is the one for which


$$

\text {Q u o t e d}

$$ is least. Once the party with the short position has decided to deliver, it can determine the cheapest-to-deliver bond by examining each of the deliverable bonds in turn.


# Example 6.1

The party with the short position has decided to deliver and is trying to choose between the three bonds in the table below. Assume the most recent settlement price is 93-08, or 93.25.

<table><tr><td>Bond</td><td>Quoted bond price ($)</td><td>Conversion factor</td></tr><tr><td>1</td><td>99.50</td><td>1.0382</td></tr><tr><td>2</td><td>143.50</td><td>1.5188</td></tr><tr><td>3</td><td>119.75</td><td>1.2615</td></tr></table>

The cost of delivering each of the bonds is as follows:

$$

\begin{array}{l} \text {B o n d} 1: 9 9. 5 0 - (9 3. 2 5 \times 1. 0 3 8 2) = \$ 2. 6 9 \\ \text {B o n d 2 :} 1 4 3. 5 0 - (9 3. 2 5 \times 1. 5 1 8 8) = \$ 1. 8 7 \\ \text {B o n d 3 :} 1 1 9. 7 5 - (9 3. 2 5 \times 1. 2 6 1 5) = \$ 2. 1 2 \\ \end{array}

$$

The cheapest-to-deliver bond is Bond 2.

A number of factors determine the cheapest-to-deliver bond. When bond yields are in excess of  $6\%$ , the conversion factor system tends to favor the delivery of low-coupon long-maturity bonds. When yields are less than  $6\%$ , the system tends to favor the delivery of high-coupon short-maturity bonds. Also, when the yield curve is upward-sloping, there is a tendency for bonds with a long time to maturity to be favored, whereas when it is downward-sloping, there is a tendency for bonds with a short time to maturity to be delivered.

In addition to the cheapest-to-deliver bond option, the party with a short position has an option known as the wild card play. This is described in Business Snapshot 6.2.

# Determining the Futures Price

An exact theoretical futures price for the Treasury bond contract is difficult to determine because the short party's options concerned with the timing of delivery and choice of the bond that is delivered cannot easily be valued. However, if we assume that both the cheapest-to-deliver bond and the delivery date are known, the Treasury

# Business Snapshot 6.2 The Wild Card Play

The settlement price in the CME Group's Treasury bond futures contract is the price at 2:00 p.m. Chicago time. However, Treasury bonds continue trading in the spot market beyond this time and a trader with a short position can issue to the clearing house a notice of intention to deliver later in the day. If the notice is issued, the invoice price is calculated on the basis of the settlement price that day, that is, the price at 2:00 p.m.

This practice gives rise to an option known as the wild card play. If bond prices decline after 2:00 p.m. on the first day of the delivery month, the party with the short position can issue a notice of intention to deliver at, say, 3:45 p.m. and proceed to buy bonds in the spot market for delivery at a price calculated from the 2:00 p.m. futures price. If the bond price does not decline, the party with the short position keeps the position open and waits until the next day when the same strategy can be used.

As with the other options open to the party with the short position, the wild card play is not free. Its value is reflected in the futures price, which is lower than it would be without the option.

bond futures contract is a futures contract on a traded security (the bond) that provides the holder with known income. $^{1}$  Equation (5.2) then shows that the futures price,  $F_{0}$ , is related to the spot price,  $S_{0}$ , by

$$

F _ {0} = \left(S _ {0} - I\right) e ^ {r T} \tag {6.1}

$$ where  $I$  is the present value of the coupons during the life of the futures contract,  $T$  is the time until the futures contract matures, and  $r$  is the risk-free interest rate applicable to a time period of length  $T$ .

# Example 6.2

Suppose that, in a Treasury bond futures contract, it is known that the cheapest-to-deliver bond will be a  $12\%$  coupon bond with a conversion factor of 1.6000. Suppose also that it is known that delivery will take place in 270 days. Coupons are payable semiannually on the bond. As illustrated in Figure 6.1, the last coupon date was 60 days ago, the next coupon date is in 122 days, and the coupon date thereafter is in 305 days. The term structure is flat, and the rate of interest (with continuous compounding) is  $10\%$  per annum. Assume that the current quoted bond price is 115. The cash price of the bond is obtained by adding to this quoted price the proportion of the next coupon payment that accrues to the holder. The cash price is therefore

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/6f1c48ede5e5f3d9683101f436a2ba8e421e8b4eff62b3cd9cbd775b77103b71.jpg)

Figure 6.1 Time chart for Example 6.2.

$$
1 1 5 + \frac {6 0}{6 0 + 1 2 2} \times 6 = 1 1 6. 9 7 8
$$

A coupon of 6 will be received after 122 days (= 0.3342 years). The present value of this is

$$
6 e ^ {- 0. 1 \times 0. 3 3 4 2} = 5. 8 0 3
$$

The futures contract lasts for 270 days ( $= 0.7397$  years). The cash futures price, if the contract were written on the  $12\%$  bond, would therefore be

$$
(1 1 6. 9 7 8 - 5. 8 0 3) e ^ {0. 1 \times 0. 7 3 9 7} = 1 1 9. 7 1 1
$$

At delivery, there are 148 days of accrued interest. The quoted futures price, if the contract were written on the  $12\%$  bond, is calculated by subtracting the accrued interest

$$
1 1 9. 7 1 1 - 6 \times \frac {1 4 8}{1 4 8 + 3 5} = 1 1 4. 8 5 9
$$

From the definition of the conversion factor, 1.6000 standard bonds are considered equivalent to each  $12\%$  bond. The quoted futures price should therefore be

$$
\frac {1 1 4 . 8 5 9}{1 . 6 0 0 0} = 7 1. 7 9
$$

# 6.3 EURODOLLAR AND SOFR FUTURES

A very popular interest rate futures contract in the United States has historically been the three-month Eurodollar futures contract traded by the CME group. The underlying interest rate is three-month (90-day) U.S. dollar LIBOR and the maturities offered by the CME for this contract extend ten years into the future. Table 6.1 indicates that the volume of trading in Eurodollar futures was still quite high in May 2020. This is a little surprising given that LIBOR is being phased out at the end of 2021 (see Section 4.2). The expectation is that Eurodollar futures will over time be replaced by SOFR futures and this is slowly happening. The volume of trading and open interest for Eurodollar futures has been declining while that for SOFR futures has been increasing. In this section, we explain how both contracts work.

# Eurodollar Futures

Eurodollar futures trade until two days before the third Wednesday of the delivery month. At that point, there is a final settlement equal to  $100 - R$ , where  $R$  is the three-month U.S. dollar LIBOR fixing on that day expressed with a quarterly compounding and an actual/360 day count convention. Thus, if three-month LIBOR proved to be  $0.75\%$  two days before the third Wednesday of the delivery month, the final settlement price would be 99.250. Once a final settlement has taken place all contracts are declared closed. Table 6.1 indicates that there is trading in contracts that mature well after 2021. As explained in Section 4.2, it may well be that banks will stop providing the estimates necessary to determine LIBOR at the end of 2021. If that happens, the CME has indicated that it will base the final settlement on SOFR with appropriate adjustments for the spread between the two rates.

The contract is designed so that a one-basis-point ( = 0.01 ) move in the futures quote corresponds to a gain or loss of $25 per contract. When a Eurodollar futures quote increases by one basis point, a trader who is long one contract gains $25 and a trader who is short one contract loses $25. Similarly, when the quote decreases by one basis point a trader who is long one contract loses $25 and a trader who is short one contract gains $25. Suppose, for example, the settlement price for the September 2020 contract changes from 99.725 to 99.685 between May 21 and May 22, 2020. Traders with long positions lose 4 × 25 = $100 per contract; traders with short positions gain 100 per contract. A one-basis-point change in the futures quote corresponds to a 0.01\% change in the underlying interest rate. This in turn leads to a

$$
1, 0 0 0, 0 0 0 \times 0. 0 0 0 1 \times 0. 2 5 = 2 5
$$ or  $25 change in the interest that will be earned on$ 1 million in three months. The $25 per basis point rule is therefore consistent with the underlying interest rate applying to $1 million of principal.


The futures quote is 100 minus the futures interest rate. A trader who is long gains when interest rates fall and one who is short gains when interest rates rise. Table 6.2 shows a possible set of outcomes for the September 2020 contract in Table 6.1 for a trader who takes a long position on May 21, 2020, at the last trade price of 99.720.

The contract in Table 6.2 could be used as a hedge if LIBOR-based payments were due to be received on a principal of  $1 million for the three-month period starting on September 14, 2020. The contract locks in a LIBOR rate of 100 - 99.720$ , or  $0.28\%$  per year. The LIBOR rate on September 14, 2020, in Table 6.2 proves to be  $100 - 99.810$ , or  $0.19\%$  per year. The interest received will be  $0.25 \times 0.0019 \times \$ 1,000,000 = \ $475.$  When the  $\$ 225$ gain on the contract is taken into account, the amount received is $700, which corresponds to a LIBOR rate of  $0.28\%$  ( $0.25 \times 0.0028 \times \$ 1,000,000 = \$700.) The hedge works well, but it should be noted that it is not perfect. One reason is that

Table 6.2 Possible sequence of prices for September 2020 Eurodollar futures contract.

<table><tr><td>Date</td><td>Trade price</td><td>Settlement futures price</td><td>Change</td><td>Gain per long contract</td></tr><tr><td>May 21, 2020</td><td>99.720</td><td></td><td></td><td></td></tr><tr><td>May 21, 2020</td><td></td><td>99.715</td><td>-0.005</td><td>-12.50</td></tr><tr><td>May 22, 2020</td><td></td><td>99.665</td><td>-0.050</td><td>-125.00</td></tr><tr><td>Sept. 14, 2020</td><td></td><td>99.810</td><td>+0.010</td><td>+25.00</td></tr><tr><td>Total</td><td></td><td></td><td>+0.090</td><td>+225.00</td></tr></table> the futures contract is settled daily rather than all at the end. The other is that settlement is on September 14, 2020, while interest is paid three months later.[2]


# SOFR Futures

Table 6.1 shows futures quotes for one-month and three-month SOFR futures. The one-month SOFR futures contract is designed to be as similar as possible to the federal funds rate futures contract. The settlement at the end of a contract month equals 100 minus the arithmetic average of SOFR one-day rates during the month (with rates on a weekend or a holiday being assumed to be the same as the rate on the most recent business day). It can be seen that the May 2020 contract still traded on May 21, 2020, even though the rate on about two thirds of the days in the month had already been observed. The settlement futures rate implied by the May, June, and July futures contracts are  $0.0475\%$ ,  $0.055\%$ , and  $0.55\%$ , respectively. The rates implied by the corresponding federal funds futures contracts are similar. (In theory, they should be slightly higher because the federal funds rate is an unsecured rate while SOFR is secured, but in practice the difference is so small that it is not noticeable in the quotes.)

A one-month SOFR contract is designed to hedge a $5,000,000 position. In this respect, it is similar to the federal funds rate contract. When the rate implied by the contract changes by one basis point, the gain or loss per contract is $41.67. (This is consistent with the $5,000,000 size because $5,000,000 × 0.0001 × 1/12 = 41.67.) Contracts trade for the 13 months following the current month.

The three-month SOFR futures contract is designed to be as similar as possible to the Eurodollar futures contract. The settlement is on the third Wednesday of a month. It equals 100 minus the result of compounding one-day SOFR rates over the previous three months in the way described in Section 4.2. The contract month specified in Table 6.1 is the beginning of the three-month period. The delivery month is three months later. The June 2020 contract was therefore settled on September 16, 2020. The settlement price equaled  $100 - R$ , where  $R$  is the rate obtained by compounding the one-day SOFR rates observed on days between June 17, 2020, and September 15, 2020. (The rate observed on the final day of the period is not included in the compounding calculation.)

Three-month SOFR futures trade for the contract months of March, June, September, and December. Perhaps optimistically, the CME offers a total of 39 contract months so that traders can hedge or speculate on SOFR rates as far in the future as 10 years. The contract is designed to hedge a $1 million position (similarly to the Eurodollar futures contract). When the quote changes by one basis point, the gain or loss per contract is $25. Three-month SOFR futures and Eurodollar futures contracts are therefore structurally very similar. The main difference is that the Eurodollar futures contract is settled at the beginning of the three-month period to which the rate applies whereas the three-moth SOFR futures contract is settled at the end of the three-month period (after all the underlying one-day rates have been observed).

# Example 6.3

Suppose that on May 21, 2020, an investor has agreed to pay the three-month SOFR rate plus 200 basis points on 100 million of borrowings for three months beginning on December 16, 2021. From Table 6.1, the December 2021 three-month SOFR futures is  $99.990$ . The futures markets are therefore indicating a SOFR rate of only  $0.01\%$  (one basis point) for the period of the borrowings. The investor thinks that rates may increase and so would like to use futures to lock in a borrowing rate of  $2.01\%$ . The investor can do this by shorting 100 December contracts. If rates increase, the futures quote will decline and there will be a gain to compensate for the extra interest paid; if rates decrease, the quote will increase and there will be a loss on the futures, but this will be compensated for by less interest being paid.


For example, suppose that the final settlement proves to be 99.200, which corresponds to a rate of 0.8\% per annum. The rate paid on the loan would then be 2.8\% per annum and the total interest would be 0.25 × $100,000,000 × 0.028 = $700,000. However, the futures contract has declined by 79 basis points (from 99.990 to 99.200). The gain is $25 per basis point or 100 × $25 × 79 = $197,500 on 100 contracts. When this is taken into account, the amount paid is $700,000 - $197,000 = $502,500, which corresponds to a rate of 2.01\% (that is, $502,500 = 0.25 × $100,000,000 × 0.0201).

On May 21, 2020, negative SOFR rates were considered a possibility. (The Federal Reserve Board was taking steps to stimulate the economy by reducing interest rates following the Covid-19 crisis and the interest rates in some other countries were negative.) Suppose that the final settlement is 100.400. The SOFR rate applicable to the borrowings is then -0.4\% and the investor will pay 2\% - 0.4\% = 1.6\%. The interest payment will be 0.25 \times \100,000,000 \times 0.016 = \400,000. However, the futures contract has increased by 41 basis points, leading to a loss of 100 \times \25 \times 41 = \102,250 and bringing the total payment to \502,250, as before.

# Convexity Adjustments

In Chapter 5 we argued that for most contracts it is not necessary to distinguish between futures and forward prices because the two are very similar. When the futures contracts we have just considered last longer than about two years, it does become important to distinguish between futures and forward. What is termed a convexity adjustment is made so that

$$

\text {F o r w a r d R a t e} = \text {F u t u r e s R a t e} - c

$$ where  $c$  is the convexity adjustment.

One reason for the convexity adjustment is daily settlement. Consider two traders. Trader A has entered into a futures contract where there will be a gain if rates increase and a loss if rates decrease. (Trader A could be the investor in Example 6.3.) Trader B has entered into a similar forward contract. The contracts are the same except that Trader A's contract is settled daily, while Trader B's contract is settled at the end of its life. The daily settlement will tend to favor Trader A. When rates increase, Trader A makes an immediate gain and, because rates have just increased, the gain will tend to be invested at a relatively high interest rate. When rates decrease, Trader A takes an immediate loss but because rates have just decreased this will tend to be financed at a relatively low rate. To put this another way, Trader A will tend to have more funds in his or her margin account when rates are high than when rates are low. Trader B, who has entered into an FRA does not benefit from day-to-day changes in rates in this way. To compensate for this, Trader B's forward quote should be more attractive than Trader A's futures quote. In this case, a more attractive quote corresponds to a lower forward rate, so that we should expect to see a positive value for the convexity adjustment,  $c$ .

In the case of Eurodollar futures contracts, there is another consideration. The futures contracts are settled at the beginning of the time period to which the rate applies. In an FRA, as explained in Section 4.9, settlement reflects the fact the interest is normally paid at the end of a period rather than the beginning. Consider again Trader A and Trader B who will gain if rates increase and lose if rates decrease. When rates prove to be high, the impact of delaying settlement on the value of Trader B's gain is relatively high. When rates prove to be low, the impact of delaying settlement on Trader B's loss is relatively low. As a result, the difference in the timing of the settlement favors Trader A and, like daily settlement, leads to forward rates being lower than futures rates.

The convexity adjustment,  $c$ , is therefore positive. It increases as the life of the contract increases and the volatility of interest rates increase.

# Calculating Zero Curves

Futures contracts (with the convexity adjustments we have just mentioned being applied as appropriate) can be used to provide estimates of forward interest rates. These can then be used to determine zero rates. From equation (4.5) the forward rate applicable to the period between times  $T_{1}$  and  $T_{2}$  is

$$
R _ {F} = \frac {R _ {2} T _ {2} - R _ {1} T _ {1}}{T _ {2} - T _ {1}}
$$ where  $R_{1}$  and  $R_{2}$  are the zero rates for maturities  $T_{1}$  and  $T_{2}$ , respectively. (All rates are assumed to be continuously compounded.) It follows from this that


$$

R _ {2} = \frac {R _ {F} \left(T _ {2} - T _ {1}\right) + R _ {1} T _ {1}}{T _ {2}} \tag {6.2}

$$

This equation can be used to bootstrap LIBOR or SOFR zero curves.

Consider first LIBOR. Its zero curve is known for maturities up to one year (providing banks continue to provide submissions estimating their borrowing rates). Equation (6.2) can be used to extend this zero curve, as we will now show.

# Example 6.4

A 300-day LIBOR zero rate has been calculated (using interpolation between the 6-month and 12-month rate) as  $2.80\%$  with continuous compounding. From Eurodollar futures quotes, it has been calculated that (a) the forward rate for a 90-day period beginning in 300 days is  $3.30\%$  with continuous compounding,

(b) the forward rate for a 90-day period beginning in 391 days is  $3.50\%$  with continuous compounding, and (c) the forward rate for the 90-day period beginning in 489 days is  $3.60\%$  with continuous compounding. We can use equation (6.2) to obtain the 391 rate as

$$

\frac {0 . 0 3 3 \times 9 1 + 0 . 0 2 8 \times 3 0 0}{3 9 1} = 0. 0 2 9 1 6

$$ or  $2.916\%$ . Similarly we can use the second forward rate to determine to 489-day rate as

$$
\frac {0 . 0 3 5 \times 9 8 + 0 . 0 2 9 1 6 \times 3 9 1}{4 8 9} = 0. 0 3 0 3 3
$$ or  $3.033\%$ . The next forward rate would be used to extend the zero curve for a further three months, and so on. Note that even though the rate underlying the Eurodollar futures contract is a 90-day rate, it is assumed to apply to the 91 or 98 days between contract maturities to facilitate the bootstrapping.


Determining short-maturity SOFR rates requires a little more work. We illustrate this with another example.

# Example 6.5

It is October and the current three-month SOFR futures contract has two months until the December delivery date. Suppose further that compounding the overnight rates (already observed) for the first month of the contract gives a rate of  $2\%$  per year and that the futures quote gives a rate for the whole three-month period of  $2.5\%$  per year. If all rates are expressed with continuous compounding, the implied zero rate,  $R$ , for the next two months is given by solving

$$
0. 0 2 \times (1 / 1 2) + R \times (2 / 1 2) = 0. 0 2 5 \times (3 / 1 2)
$$

It is 0.0275, or  $2.75\%$ . The forward rate calculated from the contract covering the December to March period can be used in conjunction with this estimate and equation (6.2) to obtain the 5-month zero rate as in Example 6.4. The contract covering the March to June period can similarly determine the 8-month zero rate, and so on.

# 6.4 DURATION-BASED HEDGING STRATEGIES USING FUTURES

We discussed duration in Section 4.10. Interest rate futures can be used to hedge the yield on a bond portfolio at a future time. Define:

$V_{F}$ : Contract price for one interest rate futures contract

$D_F$ : Duration of the asset underlying the futures contract at the maturity of the futures contract

$P$ : Forward value of the portfolio being hedged at the maturity of the hedge (in practice, this is usually assumed to be the same as the value of the portfolio today)

$D_P$ : Duration of the portfolio at the maturity of the hedge.

If we assume that the change in the forward yield,  $\Delta y$ , is the same for all maturities, it is approximately true that

$$

\Delta P = - P D _ {P} \Delta y

$$

It is also approximately true that

$$

\Delta V _ {F} = - V _ {F} D _ {F} \Delta y

$$

The number of contracts required to hedge against an uncertain  $\Delta y$ , therefore, is

$$

N ^ {*} = \frac {P D _ {P}}{V _ {F} D _ {F}} \tag {6.3}

$$

This is the duration-based hedge ratio. It is sometimes also called the price sensitivity hedge ratio.

When the hedging instrument is a Treasury bond futures contract, the hedger must base  $D_F$  on an assumption that one particular bond will be delivered. This means that the hedger must estimate which of the available bonds is likely to be cheapest to deliver at the time the hedge is put in place. If, subsequently, the interest rate environment changes so that it looks as though a different bond will be cheapest to deliver, then the hedge has to be adjusted and as a result its performance may be worse than anticipated.

When hedges are constructed using interest rate futures, it is important to bear in mind that interest rates and futures prices move in opposite directions. When interest rates go up, an interest rate futures price goes down. When interest rates go down, the reverse happens, and the interest rate futures price goes up. Thus, a company in a position to lose money if interest rates drop should hedge by taking a long futures position. Similarly, a company in a position to lose money if interest rates rise should hedge by taking a short futures position.

The hedger tries to choose the futures contract so that the duration of the underlying asset is as close as possible to the duration of the asset being hedged. Eurodollar futures tend to be used for exposures to short-term interest rates, whereas ultra T-bond, Treasury bond, and Treasury note futures contracts are used for exposures to longer-term rates.

# Example 6.6

It is August 2 and a fund manager with  $10 million invested in government bonds is concerned that interest rates are expected to be highly volatile over the next 3 months. The fund manager decides to use the December T-bond futures contract to hedge the value of the portfolio. The current futures price is 93-02, or 93.0625. Because each contract is for the delivery of$ 100,000 face value of bonds, the futures contract price is 93,062.50.

Suppose that the duration of the bond portfolio in 3 months will be 6.80 years. The cheapest-to-deliver bond in the T-bond contract is expected to be a 20-year  $12\%$  per annum coupon bond. The yield on this bond is currently  $8.80\%$  per annum, and the duration will be 9.20 years at maturity of the futures contract.

# Business Snapshot 6.3 Asset-Liability Management by Banks

The asset-liability management (ALM) committees of banks now monitor their exposure to interest rates very carefully. Matching the durations of assets and liabilities is sometimes a first step, but this does not protect a bank against non-parallel shifts in the yield curve. A popular approach is known as  $GAP$  management. This involves dividing the zero-coupon yield curve into segments, known as buckets. The first bucket might be 0 to 1 month, the second 1 to 3 months, and so on. The ALM committee then investigates the effect on the value of the bank's portfolio of the zero rates corresponding to one bucket changing while those corresponding to all other buckets stay the same.

If there is a mismatch, corrective action is usually taken. This can involve changing deposit and lending rates in the way described in Section 4.12. Alternatively, tools such as swaps, FRAs, bond futures, Eurodollar futures, and other interest rate derivatives can be used.

The fund manager requires a short position in T-bond futures to hedge the bond portfolio. If interest rates go up, a gain will be made on the short futures position, but a loss will be made on the bond portfolio. If interest rates decrease, a loss will be made on the short position, but there will be a gain on the bond portfolio. The number of bond futures contracts that should be shorted can be calculated from equation (6.3) as

$$

\frac {1 0 , 0 0 0 , 0 0 0}{9 3 , 0 6 2 . 5 0} \times \frac {6 . 8 0}{9 . 2 0} = 7 9. 4 2

$$

To the nearest whole number, the portfolio manager should short 79 contracts.

# 6.5 HEDGING PORTFOLIOS OF ASSETS AND LIABILITIES

Financial institutions sometimes attempt to hedge themselves against interest rate risk by ensuring that the average duration of their assets equals the average duration of their liabilities. (The liabilities can be regarded as short positions in bonds.) This strategy is known as duration matching or portfolio immunization. When implemented, it ensures that a small parallel shift in interest rates will have little effect on the value of the portfolio of assets and liabilities. The gain (loss) on the assets should offset the loss (gain) on the liabilities.

Duration matching does not immunize a portfolio against nonparallel shifts in the zero curve. This is a weakness of the approach. In practice, short-term rates are usually more volatile than, and are not perfectly correlated with, long-term rates. Sometimes it even happens that short- and long-term rates move in opposite directions to each other. Duration matching is therefore only a first step and financial institutions have developed other tools to help them manage their interest rate exposure. See Business Snapshot 6.3.

# SUMMARY

In the Treasury bond futures contracts, the party with the short position has a number of interesting delivery options:

1. Delivery can be made on any day during the delivery month.
2. There are a number of alternative bonds that can be delivered.
3. On any day during the delivery month, the notice of intention to deliver at the 2:00 p.m. settlement price can be made later in the day.

These options all tend to reduce the futures price.

The Eurodollar futures contract is a contract on the 3-month LIBOR interest rate two days before the third Wednesday of the delivery month. It is expected that as LIBOR is phased out this will be replaced by the 3-month SOFR futures contract. This is a futures contract on the rate obtained by compounding one-day SOFR rates over a three-month period.

The concept of duration is important in hedging interest rate risk. It enables a hedger to assess the sensitivity of a bond portfolio to small parallel shifts in the yield curve. It also enables the hedger to assess the sensitivity of an interest rate futures price to small changes in the yield curve. The number of futures contracts necessary to protect the bond portfolio against small parallel shifts in the yield curve can therefore be calculated.

The key assumption underlying duration-based hedging is that all interest rates change by the same amount. This means that only parallel shifts in the term structure are allowed for. In practice, short-term interest rates are generally more volatile than are long-term interest rates, and hedge performance is liable to be poor if the duration of the bond underlying the futures contract differs markedly from the duration of the asset being hedged.

# FURTHER READING

Burghardt, G., and W. Hoskins. "The Convexity Bias in Eurodollar Futures," Risk, 8, 3 (1995): 63-70.
Grinblatt, M., and N. Jegadeesh. "The Relative Price of Eurodollar Futures and Forward Contracts," Journal of Finance, 51, 4 (September 1996): 1499-1522.
Henrard, M. P. A., Overnight Futures: Convexity Adjustment (February 2018). Available at SSRN: https://ssrn.com/abstract=3134346.

# Short Concept Questions

6.1. What is the day convention for (a) Treasury bonds, (b) corporate bonds and, (c) Treasury bills in the United States?
6.2. What is the relationship between the quoted price and cash price of a Treasury bill?
6.3. What is the difference between the clean price and the dirty price of a bond?
6.4. Explain how the conversion factor of a bond is calculated and used by the CME group.
6.5. How much does someone with a short contract gain or lose when the three-month Eurodollar futures price changes from 97.540 to 98.080?

6.6. How is the three-month contract on LIBOR settled?
6.7. How is the three-month contract on SOFR settled?
6.8. What is the purpose of applying a convexity adjustment to the rates obtained from futures quotes?
6.9. What is the limitation of duration-based hedging?
6.10. Which do you expect to be greater: the forward interest rate or the futures interest rate?

# Practice Questions

6.11. A U.S. Treasury bond pays a 7\% coupon on January 7 and July 7. How much interest accrues per 100 of principal to the bondholder between July 7, 2017, and August 8, 2017? How would your answer be different if it were a corporate bond?
6.12. It is January 9, 2018. The price of a Treasury bond with a  $6\%$  coupon that matures on October 12, 2030, is quoted as 102-07. What is the cash price?
6.13. A three-month SOFR futures price changes from 96.76 to 96.82. What is the gain or loss to a trader who is long two contracts?
6.14. The 350-day LIBOR rate is  $3\%$  with continuous compounding and the forward rate calculated from a Eurodollar futures contract that matures in 350 days is  $3.2\%$  with continuous compounding. Estimate the 440-day zero rate.
 6.15. It is January 30. You are managing a bond portfolio worth 6 million. The duration of the portfolio in 6 months will be 8.2 years. The September Treasury bond futures price is currently 108-15, and the cheapest-to-deliver bond will have a duration of 7.6 years in September. How should you hedge against changes in interest rates over the next 6 months?
6.16. The price of a 90-day Treasury bill is quoted as 10.00. What continuously compounded return (on an actual/365 basis) does an investor earn on the Treasury bill for the 90-day period?
6.17. It is May 5, 2021. The quoted price of a government bond with a  $12\%$  coupon that matures on July 27, 2034, is 110-17. What is the cash price?
6.18. Suppose that the Treasury bond futures price is 101-12. Which of the following four bonds is cheapest to deliver?

<table><tr><td>Bond</td><td>Price</td><td>Conversion factor</td></tr><tr><td>1</td><td>125-05</td><td>1.2131</td></tr><tr><td>2</td><td>142-15</td><td>1.3792</td></tr><tr><td>3</td><td>115-31</td><td>1.1149</td></tr><tr><td>4</td><td>144-02</td><td>1.4026</td></tr></table>

6.19. It is July 30, 2021. The cheapest-to-deliver bond in a September 2021 Treasury bond futures contract is a 13\% coupon bond, and delivery is expected to be made on September 30, 2021. Coupon payments on the bond are made on February 4 and August 4 each year. The term structure is flat, and the rate of interest with semiannual compounding is 12\% per annum. The conversion factor for the bond is 1.5. The current quoted bond price is 110. Calculate the quoted futures price for the contract.

6.20. A trader is looking for arbitrage opportunities in the Treasury bond futures market. What complications are created by the fact that the party with a short position can choose to deliver any bond with a maturity between 15 and 25 years?
6.21. Suppose that the 9-month SOFR interest rate is  $8\%$  per annum and the 6-month SOFR interest rate is  $7.5\%$  per annum (both with actual/365 and continuous compounding). Estimate the 3-month SOFR futures price quote for a contract maturing in 6 months.
6.22. Suppose that the 300-day LIBOR zero rate is  $4\%$  and Eurodollar quotes for contracts maturing in 300, 398, and 489 days are 95.83, 95.62, and 95.48. Calculate 398-day and 489-day LIBOR zero rates. Assume no difference between forward and futures rates for the purposes of your calculations.
6.23. Suppose that a bond portfolio with a duration of 12 years is hedged using a futures contract in which the underlying asset has a duration of 4 years. What is likely to be the impact on the hedge of the fact that the 12-year rate is less volatile than the 4-year rate?
 6.24. Suppose that it is February 20 and a treasurer realizes that on July 17 the company will have to issue $5 million of commercial paper with a maturity of 180 days. If the paper were issued today, the company would realize $4,820,000. (In other words, the company would receive $4,820,000 for its paper and have to redeem it at $5,000,000 in 180 days' time.) The September Eurodollar futures price is quoted as 92.00. How should the treasurer hedge the company's exposure?
 6.25. On August 1, a portfolio manager has a bond portfolio worth 10 million. The duration of the portfolio in October will be 7.1 years. The December Treasury bond futures price is currently 91-12 and the cheapest-to-deliver bond will have a duration of 8.8 years at maturity. How should the portfolio manager immunize the portfolio against changes in interest rates over the next 2 months?
6.26. How can the portfolio manager change the duration of the portfolio to 3.0 years in Problem 6.25?
6.27. Between October 30, 2022, and November 1, 2022, you have a choice between owning a U.S. government bond paying a  $12\%$  coupon and a U.S. corporate bond paying a  $12\%$  coupon. Consider carefully the day count conventions discussed in this chapter and decide which of the two bonds you would prefer to own. Ignore the risk of default.
6.28. The 60-day SOFR rate has been estimated as  $3\%$ . The 3-month SOFR futures quote for the period between 60 and 150 days is 96.5. Estimate the 150-day SOFR rate.
6.29. Explain why the forward interest rate is less than the corresponding futures interest rate calculated from a Eurodollar futures contract.
6.30. It is April 7, 2022. The quoted price of a U.S. government bond with a  $6\%$  per annum coupon (paid semiannually) is 120-00. The bond matures on July 27, 2033. What is the cash price? How does your answer change if it is a corporate bond?
 6.31. It is March 10, 2022. The cheapest-to-deliver bond in a December 2022 Treasury bond futures contract is an 8\% coupon bond, and delivery is expected to be made on December 31, 2022. Coupon payments on the bond are made on March 1 and September 1 each year. The rate of interest with continuous compounding is 5\% per annum for all maturities. The conversion factor for the bond is 1.2191. The current quoted bond price is 137. Calculate the quoted futures price for the contract.

6.32. Assume that a bank can borrow or lend money at the same interest rate in the LIBOR market. The 90-day rate is  $2\%$  per annum, and the 180-day rate is  $2.2\%$  per annum, both expressed with continuous compounding and actual/actual day count. The Eurodollar futures price for a contract maturing in 91 days is quoted as 97.95. What arbitrage opportunities are open to the bank?

6.33. A Canadian company wishes to create a Canadian LIBOR futures contract from a U.S. Eurodollar futures contract and forward contracts on foreign exchange. Using an example, explain how the company should proceed. For the purposes of this problem, assume that a futures contract is the same as a forward contract.

6.34. A portfolio manager plans to use a Treasury bond futures contract to hedge a bond portfolio over the next 3 months. The portfolio is worth $100 million and will have a duration of 4.0 years in 3 months. The futures price is 122, and each futures contract is on $100,000 of bonds. The bond that is expected to be cheapest to deliver will have a duration of 9.0 years at the maturity of the futures contract. What position in futures contracts is required?

(a) What adjustments to the hedge are necessary if after 1 month the bond that is expected to be cheapest to deliver changes to one with a duration of 7 years?
(b) Suppose that all rates increase over the next 3 months, but long-term rates increase less than short-term and medium-term rates. What is the effect of this on the performance of the hedge?

The birth of the over-the-counter swap market can be traced to a currency swap negotiated between IBM and the World Bank in 1981. The World Bank had borrowings denominated in U.S. dollars while IBM had borrowings denominated in German deutsche marks and Swiss francs. The World Bank (which was restricted in the deutsche mark and Swiss franc borrowing it could do directly) agreed to make interest payments on IBM's borrowings while IBM in return agreed to make interest payments on the World Bank's borrowings. Since that first transaction in 1981, the swap market has seen phenomenal growth.

A swap is an over-the-counter agreement between two companies to exchange cash flows in the future. The agreement defines the dates when the cash flows are to be paid and the way in which they are to be calculated. Usually the calculation of the cash flows involves the future value of an interest rate, an exchange rate, or other market variable.

A forward contract can be viewed as a simple example of a swap. Suppose it is March 1, 2022, and a company enters into a forward contract to buy 100 ounces of gold for  $1,700 per ounce in one year. The company can sell the gold in one year as soon as it is received. The forward contract is therefore equivalent to a swap where the company agrees that on March 1, 2023, it will pay$ 170,000 and receive 100S, where S is the market price of one ounce of gold on that date.

Whereas a forward contract is equivalent to the exchange of cash flows on just one future date, swaps typically lead to cash-flow exchanges taking place on several future dates. In this chapter we examine how swaps are used and how they are valued. Our discussion centers on interest rate swaps and currency swaps. Other types of swaps are briefly reviewed at the end of this chapter and discussed in more detail in Chapter 34.


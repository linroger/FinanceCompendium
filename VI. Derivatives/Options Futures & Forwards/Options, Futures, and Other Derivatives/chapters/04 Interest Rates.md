---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: 4.1 TYPES OF RATES
linter-yaml-title-alias: 4.1 TYPES OF RATES
---

# 4.1 TYPES OF RATES

An interest rate in a particular situation defines the amount of money a borrower promises to pay the lender. For any given currency, many different types of interest rates are regularly quoted. These include mortgage rates, deposit rates, prime borrowing rates, and so on. One important factor influencing interest rates is credit risk. This is the risk that there will be a default by the borrower of funds, so that the interest and principal are not paid to the lender as promised. The higher the credit risk, the higher the interest rate that is promised by the borrower. The extra amount added to a risk-free interest rate to allow for credit risk is known as a credit spread.

Interest rates are often expressed in basis points. One basis point is  $0.01\%$  per annum.

# Treasury Rates

Treasury rates are the rates an investor earns on Treasury bills and Treasury bonds. These are the instruments used by a government to borrow in its own currency. Japanese Treasury rates are the rates at which the Japanese government borrows in yen; U.S. Treasury rates are the rates at which the U.S. government borrows in U.S. dollars; and so on. It is usually assumed that there is no chance that the government of a developed country will default on an obligation denominated in its own currency. A developed country's Treasury rates are therefore regarded as risk-free in the sense that an investor who buys a Treasury bill or Treasury bond is certain that interest and principal payments will be made as promised.

# Overnight Rates

Banks are required to maintain a certain amount of cash, known as a reserve, with the central bank. The reserve requirement for a bank at any time depends on its outstanding assets and liabilities. At the end of a day, some financial institutions typically have surplus funds in their accounts with the central bank while others have requirements for funds. This leads to borrowing and lending overnight. A broker usually matches borrowers and lenders. In the United States, the central bank is the Federal Reserve (often referred to as the Fed) and the overnight rate is called the federal funds rate. The weighted average of the rates in brokered transactions (with weights being determined by the size of the transaction) is termed the effective federal funds rate. This overnight rate is monitored by the Federal Reserve, which may intervene with its own transactions in an attempt to raise or lower it. Other countries have similar systems to the United States. For example, in the United Kingdom, the average of brokered overnight rates is the sterling overnight index average (SONIA); in the eurozone, it is the euro short-term rate (ESTER);[1] in Switzerland, it is the Swiss average rate overnight (SARON); in Japan, it is the Tokyo overnight average rate (TONAR).

# Repo Rates

Unlike the overnight federal funds rate, repo rates are secured borrowing rates. In a repo (or repurchase agreement), a financial institution that owns securities agrees to sell the securities for a certain price and buy them back at a later time for a slightly higher price. The financial institution is obtaining a loan and the interest it pays is the difference between the price at which the securities are sold and the price at which they are repurchased. The interest rate is referred to as the repo rate.

If structured carefully, a repo involves very little credit risk. If the borrower does not honor the agreement, the lending company simply keeps the securities. If the lending company does not keep to its side of the agreement, the original owner of the securities keeps the cash provided by the lending company. The most common type of repo is an overnight repo, where funds are lent overnight. However, longer-term arrangements, known as term repos, are sometimes used. Because it is a secured rate, a repo rate is theoretically very slightly below the corresponding fed funds rate.

The secured overnight financing rate (SOFR) is an important volume-weighted median average of the rates on overnight repo transactions in the United States.

# 4.2 REFERENCE RATES

Reference interest rates are important in financial markets. The parties to transactions frequently enter into contracts where the future interest rate paid or received is uncertain, but will be set equal the value of an agreed reference interest rate.

# LIBOR

LIBOR is short for London Interbank Offered Rate. It has historically been a very important reference rate. LIBOR rates have been compiled by asking a panel of global banks to provide quotes estimating the unsecured rates of interest at which they could borrow from other banks just prior to 11 a.m. (U.K. time). Several different currencies and several different borrowing periods (ranging from one day to one year) were considered. The banks submitting quotes typically had good credit ratings. LIBOR rates were therefore considered to be estimates of unsecured borrowing rates for creditworthy banks.

LIBOR rates have served as reference rates for hundreds of trillions of dollars of transactions throughout the world. For example, the borrowing rate on a five-year loan in a particular situation might be specified as three-month LIBOR plus 30 basis points (i.e., three-month LIBOR plus  $0.3\%$ ). The value of three-month LIBOR would then be noted at the beginning of each three-month period and interest based on this LIBOR rate would be paid by the borrower at the end of the period.

A problem with LIBOR is that there is not enough borrowing between banks for a bank's estimates to be determined by market transactions. As a result, LIBOR submissions by banks involved a certain amount of judgment and could be subject to manipulation. Bank regulators are uncomfortable with this and have developed plans to phase out the use of LIBOR. Originally, the deadline for LIBOR to be discontinued was the end of 2021, but quotes may continue for a period after that to make it easier to deal with the existing contracts that depend on LIBOR.

# The New Reference Rates

The plan is to base reference rates on the overnight rates we have mentioned. For example, the new reference rate in the United States will be SOFR; in the U.K., it will be SONIA; in the eurozone, it will be ESTER; in Switzerland, it will be SARON; in Japan, it will be TONAR. (Note that the overnight rate in the U.S. will be a secured overnight rate because it is a repo rate; the overnight rate in other countries will be unsecured because, as explained earlier, they are determined from the overnight transactions between banks when they manage reserves.)

Longer rates such as three-month rates, six-month rates, or one-year rates can be determined from overnight rates by compounding them daily. In the case of SOFR, there are assumed to be 360 days per year. (See Chapter 6 for a discussion of day count conventions) Suppose that the (annualized) SOFR overnight rate on the  $i$ th business day of a period is  $r_i$  ( $1 \leq i \leq n$ ) and the rate applies to  $d_i$  days. The (annualized) interest rate for the period is

$$
\left[ \left(1 + r _ {1} \hat {d} _ {1}\right) \left(1 + r _ {2} \hat {d} _ {2}\right) \dots \left(1 + r _ {n} \hat {d} _ {n}\right) - 1 \right] \times \frac {3 6 0}{D}
$$ where  $\hat{d}_i = d_i / 360$  and  $D = \sum_{i}d_{i}$  is the number of days in the period. On most days  $d_{i} = 1$ , but weekends and holidays lead to the overnight rates being applied to more than one day. (For example, on a Friday  $d_{i}$  will normally be equal to 3.)


The new reference rates are regarded as risk-free because they are derived from one-day loans to creditworthy financial institutions. LIBOR, by contrast, incorporates a credit spread. There is another important difference between the old and new reference rates. LIBOR rates are forward looking. They are determined at the beginning of the period to which they will apply. The new reference rates are backward looking. The rate applicable to a particular period is not known until the end of the period when all the relevant overnight rates have been observed.


As we will discuss in Chapter 7, swaps are a way in which short-term interest rates can be used to determine the equivalent interest rates that apply to relatively long periods.

# Reference Rates and Credit Risk

One problem faced by banks is that credit spreads in the economy increase in stressed market conditions. For example, the spread between three-month LIBOR and a three-month rate based on overnight rates is usually about 10 basis points  $(0.1\%)$ , but it can be much higher in stressed market conditions. For example, it spiked to an all-time high of 364 basis points  $(3.64\%)$  in the United States in October 2008 during the financial crisis. If a bank offers a loan at a reference rate plus  $x\%$ , where  $x$  is a constant, it would like the rate to reflect ups and downs in average credit spreads. LIBOR, when used as a reference rate, did this, but the new reference rates (because they are essentially risk-free) do not. This has led banks to ask for a way of creating risky reference rates by adding a credit spread to the new reference rates. There have been a number of proposals and the new risk-free reference rates may be augmented by credit spread measures in the future.

# 4.3 THE RISK-FREE RATE

As we shall see, the usual approach to valuing derivatives involves setting up a riskless portfolio and arguing that the return on the portfolio should be the risk-free rate. The risk-free rate therefore plays a central role in derivatives pricing. It might be thought that derivatives traders would use the rates on Treasury bills and Treasury bonds as risk-free rates. In fact they do not do this. This is because there are tax and regulatory factors that lead to Treasury rates being artificially low. For example:

1. Banks are not required to keep capital for investments in a Treasury instruments, but they are required to keep capital for other very low risk instruments.
2. In the United States, Treasury instruments are given favorable tax treatment compared with other very low risk instruments because the interest earned by investors is not taxed at the state level.

The risk-free reference rates created from from overnight rates (see Section 4.2) are the ones used in valuing derivatives.

# 4.4 MEASURING INTEREST RATES

A statement by a bank that the interest rate on one-year deposits is  $10\%$  per annum sounds straightforward and unambiguous. In fact, its precise meaning depends on the way the interest rate is measured.

Table 4.1 Effect of the compounding frequency on the value of  $\$ {100}$  at the end of 1 year when the interest rate is 10\% per annum.

<table><tr><td>Compounding frequency</td><td>Value of \$100 at end of year ($)</td></tr><tr><td>Annually (m = 1)</td><td>110.00</td></tr><tr><td>Semiannually (m = 2)</td><td>110.25</td></tr><tr><td>Quarterly (m = 4)</td><td>110.38</td></tr><tr><td>Monthly (m = 12)</td><td>110.47</td></tr><tr><td>Weekly (m = 52)</td><td>110.51</td></tr><tr><td>Daily (m = 365)</td><td>110.52</td></tr></table>

If the interest rate is measured with annual compounding, the bank's statement that the interest rate is  $10\%$  means that  $\$ 100$  grows to

$$

\$ 100 \times 1.1 = \$ 110

$$ at the end of 1 year. When the interest rate is measured with semiannual compounding, it means that  $5\%$  is earned every 6 months, with the interest being reinvested. In this case,  $\$ 100$  grows to

$$
\$ 100 \times 1.05 \times 1.05 = \$ 110.25
$$ at the end of 1 year. When the interest rate is measured with quarterly compounding, the bank's statement means that  $2.5\%$  is earned every 3 months, with the interest being reinvested. The  $\$ 100$ then grows to


$$

\$ 100 \times 1.025 ^ {4} = \$ 110.38

$$ at the end of 1 year. Table 4.1 shows the effect of increasing the compounding frequency further.


The compounding frequency defines the units in which an interest rate is measured. A rate expressed with one compounding frequency can be converted into an equivalent rate with a different compounding frequency. For example, from Table 4.1 we see that  $10.25\%$  with annual compounding is equivalent to  $10\%$  with semiannual compounding. We can think of the difference between one compounding frequency and another to be analogous to the difference between kilometers and miles. They are two different units of measurement.

To generalize our results, suppose that an amount  $A$  is invested for  $n$  years at an interest rate of  $R$  per annum. If the rate is compounded once per annum, the terminal value of the investment is

$$

A (1 + R) ^ {n}

$$

If the rate is compounded  $m$  times per annum, the terminal value of the investment is

$$

A \left(1 + \frac {R}{m}\right) ^ {m n} \tag {4.1}

$$

When  $m = 1$ , the rate is sometimes referred to as the equivalent annual interest rate.

Suppose  $R_{1}$  is an interest rate when compounding is  $m_{1}$  times per year and  $R_{2}$  is the equivalent rate when compounding is  $m_{2}$  times per year. From equation (4.1), the values of an investment of  $A$  after  $n$  years is the same if:

$$

A \left(1 + \frac {R _ {1}}{m _ {1}}\right) ^ {m _ {1} n} = A \left(1 + \frac {R _ {2}}{m _ {2}}\right) ^ {m _ {2} n}

$$

This means that

$$

R _ {2} = m _ {2} \left[ \left(1 + \frac {R _ {1}}{m _ {1}}\right) ^ {m _ {1} / m _ {2}} - 1 \right]

$$

As an example of the application of this formula, suppose that an interest rate is  $6\%$  with semiannual compounding. The equivalent rate with quarterly compounding can be calculated by setting  $m_{1} = 2$ ,  $R_{1} = 0.06$ , and  $m_{2} = 4$ . It is:

$$

R _ {2} = 4 \left[ \left(1 + \frac {0 . 0 6}{2}\right) ^ {2 / 4} - 1 \right] = 0. 0 5 9 6

$$ or  $5.96\%$ .

# Continuous Compounding

The limit as the compounding frequency,  $m$ , tends to infinity is known as continuous compounding. With continuous compounding, it can be shown that an amount  $A$  invested for  $n$  years at rate  $R$  grows to

$$
A e ^ {R n} \tag {4.2}
$$ where  $e$  is approximately 2.71828. The exponential function,  $e^x$ , is built into most calculators, so the computation of the expression in equation (4.2) presents no problems. In the example in Table 4.1,  $A = 100$ ,  $n = 1$ , and  $R = 0.1$ , so that the value to which  $A$  grows with continuous compounding is


$$

1 0 0 e ^ {0. 1} = \$ 1 1 0. 5 2

$$

This is (to two decimal places) the same as the value with daily compounding. For most practical purposes, continuous compounding can be thought of as being equivalent to daily compounding. Compounding a sum of money at a continuously compounded rate  $R$  for  $n$  years involves multiplying it by  $e^{Rn}$ . Discounting it at a continuously compounded rate  $R$  for  $n$  years involves multiplying by  $e^{-Rn}$ .

In this book, interest rates will be measured with continuous compounding except where stated otherwise. Readers used to working with interest rates that are measured with annual, semiannual, or some other compounding frequency may find this a little strange at first. However, continuously compounded interest rates are used to such a great extent in pricing derivatives that it makes sense to get used to working with them now.

Suppose that  $R_{c}$  is a rate of interest with continuous compounding and  $R_{m}$  is the equivalent rate with compounding  $m$  times per annum. From the results in equations (4.1) and (4.2), we have

$$

A e ^ {R _ {c} n} = A \left(1 + \frac {R _ {m}}{m}\right) ^ {m n}

$$ or


$$ e ^ {R _ {c}} = \left(1 + \frac {R _ {m}}{m}\right) ^ {m}
$$

This means that

$$
R _ {c} = m \ln \left(1 + \frac {R _ {m}}{m}\right) \tag {4.3}
$$ and


$$

R _ {m} = m \left(e ^ {R _ {c} / m} - 1\right) \tag {4.4}

$$

These equations can be used to convert a rate with a compounding frequency of  $m$  times per annum to a continuously compounded rate and vice versa. The natural logarithm function  $\ln x$ , which is built into most calculators, is the inverse of the exponential function, so that, if  $y = \ln x$ , then  $x = e^{y}$ .

# Example 4.1

Consider an interest rate that is quoted as  $10\%$  per annum with semiannual compounding. From equation (4.3) with  $m = 2$  and  $R_{m} = 0.1$ , the equivalent rate with continuous compounding is

$$

2 \ln \left(1 + \frac {0 . 1}{2}\right) = 0. 0 9 7 5 8

$$ or  $9.758\%$  per annum.

# Example 4.2

Suppose that a lender quotes the interest rate on loans as  $8\%$  per annum with continuous compounding, and that interest is actually paid quarterly. From equation (4.4) with  $m = 4$  and  $R_{c} = 0.08$ , the equivalent rate with quarterly compounding is

$$
4 \times (e ^ {0. 0 8 / 4} - 1) = 0. 0 8 0 8
$$ or  $8.08\%$  per annum. This means that on a  $\$ 1,000$ loan, interest payments of  $\$ 20.20$ would be required each quarter.


# 4.5 ZERO RATES

The  $n$ -year zero-coupon interest rate is the rate of interest earned on an investment that starts today and lasts for  $n$  years. All the interest and principal is realized at the end of  $n$  years. There are no intermediate payments. The  $n$ -year zero-coupon interest rate is sometimes also referred to as the  $n$ -year spot rate, the  $n$ -year zero rate, or just the  $n$ -year zero. Suppose a 5-year zero rate with continuous compounding is quoted as  $5\%$  per annum. This means that 100, if invested for 5 years, grows to

$$

1 0 0 \times e ^ {0. 0 5 \times 5} = 1 2 8. 4 0

$$

Most of the interest rates we observe directly in the market are not pure zero rates. Consider a 5-year risk-free bond that provides a  $6\%$  coupon (i.e., it pays interest at a rate of  $6\%$  per year). The price of this bond does not by itself determine the 5-year risk-free zero rate because some of the return on the bond is realized in the form of coupons prior to the end of year 5. Later in this chapter we will discuss how we can determine zero rates from the market prices of coupon-bearing instruments.


# 4.6 BOND PRICING

Most bonds pay coupons to the holder periodically. The bond's principal (which is also known as its par value or face value) is paid at the end of its life. The theoretical price of a bond can be calculated as the present value of all the cash flows that will be received by the owner of the bond. Sometimes bond traders use the same discount rate for all the cash flows underlying a bond, but a more accurate approach is to use a different zero rate for each cash flow.

To illustrate this, consider the situation where zero rates, measured with continuous compounding, are as in Table 4.2. (We explain later how these can be calculated.) Suppose that a 2-year bond with a principal of 100 provides coupons at the rate of 6\% per annum semiannually. To calculate the present value of the first coupon of 3, we discount it at 5.0\% for 6 months; to calculate the present value of the second coupon of 3, we discount it at 5.8\% for 1 year; and so on. Therefore, the theoretical price of the bond is

$$

3 e ^ {- 0. 0 5 \times 0. 5} + 3 e ^ {- 0. 0 5 8 \times 1. 0} + 3 e ^ {- 0. 0 6 4 \times 1. 5} + 1 0 3 e ^ {- 0. 0 6 8 \times 2. 0} = 9 8. 3 9

$$ or 98.39. (DerivaGem can be used to calculate bond prices.)


# Bond Yield

A bond's yield is the single discount rate that, when applied to all cash flows, gives a bond price equal to its market price. Suppose that the theoretical price of the bond we have been considering,  \98.39 , is also its market value (i.e., the market's price of the bond is in exact agreement with the data in Table 4.2). If  y  is the yield on the bond, expressed with continuous compounding, it must be true that

$$

3 e ^ {- y \times 0. 5} + 3 e ^ {- y \times 1. 0} + 3 e ^ {- y \times 1. 5} + 1 0 3 e ^ {- y \times 2. 0} = 9 8. 3 9

$$

This equation can be solved using an iterative ("trial and error") procedure to give  $y = 6.76\%$ .

Table 4.2 Zero rates.

<table><tr><td>Maturity (years)</td><td>Zero rate(\% continuously compounded)</td></tr><tr><td>0.5</td><td>5.0</td></tr><tr><td>1.0</td><td>5.8</td></tr><tr><td>1.5</td><td>6.4</td></tr><tr><td>2.0</td><td>6.8</td></tr></table>

# Par Yield

The par yield for a certain bond maturity is the coupon rate that causes the bond price to equal its par value. (The par value is the same as the principal value.) Usually the bond is assumed to provide semiannual coupons. Suppose that the coupon on a 2-year bond in our example is  $c$  per annum (or  $\frac{1}{2}c$  per 6 months). Using the zero rates in Table 4.2, the value of the bond is equal to its par value of 100 when

$$

\frac {c}{2} e ^ {- 0. 0 5 \times 0. 5} + \frac {c}{2} e ^ {- 0. 0 5 8 \times 1. 0} + \frac {c}{2} e ^ {- 0. 0 6 4 \times 1. 5} + \left(1 0 0 + \frac {c}{2}\right) e ^ {- 0. 0 6 8 \times 2. 0} = 1 0 0

$$

This equation can be solved in a straightforward way to give  $c = 6.87$ . The 2-year par yield is therefore  $6.87\%$  per annum.

More generally, if  $d$  is the present value of \$1 received at the maturity of the bond,  $A$  is the value of an annuity that pays one dollar on each coupon payment date, and  $m$  is the number of coupon payments per year, then the par yield  $c$  must satisfy

$$

1 0 0 = A \frac {c}{m} + 1 0 0 d

$$ so that


$$ c = \frac {(1 0 0 - 1 0 0 d) m}{A}
$$

In our example,  $m = 2$ ,  $d = e^{-0.068 \times 2} = 0.87284$ , and

$$
A = e ^ {- 0. 0 5 \times 0. 5} + e ^ {- 0. 0 5 8 \times 1. 0} + e ^ {- 0. 0 6 4 \times 1. 5} + e ^ {- 0. 0 6 8 \times 2. 0} = 3. 7 0 0 2 7
$$

The formula confirms that the par yield is  $6.87\%$  per annum. A bond with this coupon and semiannual payments is worth par.

# 4.7 DETERMINING ZERO RATES

In this section we describe a procedure known as the bootstrap method which can be used to determine zero rates.

Consider the data in Table 4.3 on the prices of five bonds. Because the first three bonds pay no coupons, the zero rates corresponding to the maturities of these bonds

Table 4.3 Data for bootstrap method.

<table><tr><td>Bond principal ($)</td><td>Time to maturity (years)</td><td>Annual coupon* ($)</td><td>Bond price ($)</td><td>Bond yield** (\%)</td></tr><tr><td>100</td><td>0.25</td><td>0</td><td>99.6</td><td>1.6064 (Q)</td></tr><tr><td>100</td><td>0.50</td><td>0</td><td>99.0</td><td>2.0202 (SA)</td></tr><tr><td>100</td><td>1.00</td><td>0</td><td>97.8</td><td>2.2495 (A)</td></tr><tr><td>100</td><td>1.50</td><td>4</td><td>102.5</td><td>2.2949 (SA)</td></tr><tr><td>100</td><td>2.00</td><td>5</td><td>105.0</td><td>2.4238 (SA)</td></tr></table>

*Half the stated coupon is assumed to be paid every 6 months. **Compounding frequency corresponds to payment frequency: Q = quarterly, SA = semiannual, A = annual.

can easily be calculated. The 3-month bond has the effect of turning an investment of 99.6 into 100 in 3 months. The continuously compounded 3-month rate  $R$  is therefore given by solving

$$
1 0 0 = 9 9. 6 e ^ {R \times 0. 2 5}
$$

It is  $1.603\%$  per annum. The 6-month continuously compounded rate is similarly given by solving

$$
1 0 0 = 9 9. 0 e ^ {R \times 0. 5}
$$

It is  $2.010\%$  per annum. Similarly, the 1-year rate with continuous compounding is given by solving

$$
1 0 0 = 9 7. 8 e ^ {R \times 1. 0}
$$

It is  $2.225\%$  per annum.

The fourth bond lasts 1.5 years. Because coupons are paid semiannually, the cash flows it provides are as follows:

6 months: 2

1 year: 2

1.5 years: 102.

From our earlier calculations, we know that the discount rate for the payment at the end of 6 months is  $2.010\%$  and that the discount rate for the payment at the end of 1 year is  $2.225\%$ . We also know that the bond's price, \$102.5, must equal the present value of all the payments received by the bondholder. Suppose the 1.5-year zero rate is denoted by  $R$ . It follows that

$$
2 e ^ {- 0. 0 2 0 1 0 \times 0. 5} + 2 e ^ {- 0. 0 2 2 2 5 \times 1. 0} + 1 0 2 e ^ {- R \times 1. 5} = 1 0 2. 5
$$

This reduces to

$$ e ^ {- 1. 5 R} = 0. 9 6 6 3 1
$$ or


$$

R = - \frac {\ln (0 . 9 6 6 3 1)}{1 . 5} = 0. 0 2 2 8 4

$$

The 1.5-year zero rate is therefore  $2.284\%$ . This is the only zero rate that is consistent with the 6-month rate, 1-year rate, and the data in Table 4.3.

The 2-year zero rate can be calculated similarly from the 6-month, 1-year, and 1.5-year zero rates, and the information on the last bond in Table 4.3. If  $R$  is the 2-year zero rate, then

$$
2. 5 e ^ {- 0. 0 2 0 1 0 \times 0. 5} + 2. 5 e ^ {- 0. 0 2 2 2 5 \times 1. 0} + 2. 5 e ^ {- 0. 0 2 2 8 4 \times 1. 5} + 1 0 2. 5 e ^ {- R \times 2. 0} = 1 0 5
$$

This gives  $R = 0.02416$ , or  $2.416\%$ .

The rates we have calculated are summarized in Table 4.4. A chart showing the zero rate as a function of maturity is known as the zero curve. A common assumption is that the zero curve is linear between the points determined using the bootstrap method. (This means that the 1.25-year zero rate is  $0.5 \times 2.225 + 0.5 \times 2.284 = 2.255\%$  in our example.) It is also usually assumed that the zero curve is horizontal prior to the first point and horizontal beyond the last point. Figure 4.1 shows the zero curve for our data using these assumptions. By using longer maturity bonds, the zero curve would be more accurately determined beyond 2 years.

Table 4.4 Continuously compounded zero rates determined from data in Table 4.3.

<table><tr><td>Maturity (years)</td><td>Zero rate(\% continuously compounded)</td></tr><tr><td>0.25</td><td>1.603</td></tr><tr><td>0.50</td><td>2.010</td></tr><tr><td>1.00</td><td>2.225</td></tr><tr><td>1.50</td><td>2.284</td></tr><tr><td>2.00</td><td>2.416</td></tr></table>

In practice, we do not usually have bonds with maturities equal to exactly 1.5 years, 2 years, 2.5 years, and so on. One approach is to interpolate between the bond price data before it is used to calculate the zero curve. For example, if it is known that a 2.3-year bond with a coupon of  $6\%$  sells for 108 and a 2.7-year bond with a coupon of  $6.5\%$  sells for 109, it might be assumed that a 2.5-year bond with a coupon of  $6.25\%$  would sell for 108.5. Another more general procedure is as follows. Define  $t_1, t_2, \ldots, t_n$  as the maturities of the instruments whose prices are to be matched. Assume a piecewise linear curve with corners at these times. Use an iterative "trial and error" procedure to determine the rate at time  $t_1$  that matches the price of the first instrument, then use a similar procedure to determine the rate at time  $t_2$  that matches the price of the second instrument, and so on. For any trial rate, the rates used for coupons are determined by linear interpolation.

A more sophisticated approach is to use polynomial or exponential functions, rather than linear functions, for the zero curve between times  $t_i$  and  $t_{i+1}$  for all  $i$ . The functions are chosen so that they price the bonds correctly and so that the gradient of the zero curve does not change at any of the  $t_i$ . This is referred to as using a spline function for the zero curve.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/1f4c70c6dbb27b752d21af30e939e76b8eded69e01541c26a27dd96fdb725ba3.jpg)
Figure 4.1 Zero rates given by the bootstrap method.

# 4.8 FORWARD RATES

Forward interest rates are the rates of interest implied by current zero rates for periods of time in the future. To illustrate how they are calculated, we suppose that zero rates are as shown in the second column of Table 4.5. The rates are assumed to be continuously compounded. Thus, the 3\% per annum rate for 1 year means that, in return for an investment of \100 today, an amount 100e^{0.03\times 1} = \103.05 is received in 1 year; the 4\% per annum rate for 2 years means that, in return for an investment of \100 today, an amount 100e^{0.04\times 2} = \$108.33 is received in 2 years; and so on.

The forward interest rate in Table 4.5 for year 2 is  $5\%$  per annum. This is the rate of interest that is implied by the zero rates for the period of time between the end of the first year and the end of the second year. It can be calculated from the 1-year zero interest rate of  $3\%$  per annum and the 2-year zero interest rate of  $4\%$  per annum. It is the rate of interest for year 2 that, when combined with  $3\%$  per annum for year 1, gives  $4\%$  overall for the 2 years. To show that the correct answer is  $5\%$  per annum, suppose that \$100 is invested. A rate of  $3\%$  for the first year and  $5\%$  for the second year gives

$$

1 0 0 e ^ {0. 0 3 \times 1} e ^ {0. 0 5 \times 1} = \$ 1 0 8. 3 3

$$ at the end of the second year. A rate of  $4 \%$  per annum for 2 years gives

$$
1 0 0 e ^ {0. 0 4 \times 2}
$$ which is also 108.33. This example illustrates the general result that when interest rates are continuously compounded and rates in successive time periods are combined, the overall equivalent rate is simply the average rate during the whole period. In our example, 3\% for the first year and 5\% for the second year average to 4\% over the 2 years. The result is only approximately true when the rates are not continuously compounded.


The forward rate for year 3 is the rate of interest that is implied by a  $4\%$  per annum 2-year zero rate and a  $4.6\%$  per annum 3-year zero rate. It is  $5.8\%$  per annum. The reason is that an investment for 2 years at  $4\%$  per annum combined with an investment for one year at  $5.8\%$  per annum gives an overall average return for the three years of  $4.6\%$  per annum. The other forward rates can be calculated similarly and are shown in the third column of the table. In general, if  $R_{1}$  and  $R_{2}$  are the zero rates for maturities

Table 4.5 Calculation of forward rates.

<table><tr><td>Year (n)</td><td>Zero rate for an n-year investment
(\% per annum)</td><td>Forward rate for nth year
(\% per annum)</td></tr><tr><td>1</td><td>3.0</td><td></td></tr><tr><td>2</td><td>4.0</td><td>5.0</td></tr><tr><td>3</td><td>4.6</td><td>5.8</td></tr><tr><td>4</td><td>5.0</td><td>6.2</td></tr><tr><td>5</td><td>5.3</td><td>6.5</td></tr></table>

$T_{1}$  and  $T_{2}$ , respectively, and  $R_{F}$  is the forward interest rate for the period of time between  $T_{1}$  and  $T_{2}$ , then

$$

R _ {F} = \frac {R _ {2} T _ {2} - R _ {1} T _ {1}}{T _ {2} - T _ {1}} \tag {4.5}

$$

To illustrate this formula, consider the calculation of the year-4 forward rate from the data in Table 4.5:  $T_{1} = 3$ ,  $T_{2} = 4$ ,  $R_{1} = 0.046$ , and  $R_{2} = 0.05$ , and the formula gives  $R_{F} = 0.062$ .

Equation (4.5) can be written as

$$

R _ {F} = R _ {2} + \left(R _ {2} - R _ {1}\right) \frac {T _ {1}}{T _ {2} - T _ {1}} \tag {4.6}

$$

This shows that, if the zero curve is upward sloping between  $T_{1}$  and  $T_{2}$  so that  $R_{2} > R_{1}$ , then  $R_{F} > R_{2}$  (i.e., the forward rate for a period of time ending at  $T_{2}$  is greater than the  $T_{2}$  zero rate). Similarly, if the zero curve is downward sloping with  $R_{2} < R_{1}$ , then  $R_{F} < R_{2}$  (i.e., the forward rate is less than the  $T_{2}$  zero rate). Taking limits as  $T_{2}$  approaches  $T_{1}$  in equation (4.6) and letting the common value of the two be  $T$ , we obtain

$$

R _ {F} = R + T \frac {\partial R}{\partial T}

$$ where  $R$  is the zero rate for a maturity of  $T$ . The value of  $R_{F}$  obtained in this way is known as the instantaneous forward rate for a maturity of  $T$ . This is the forward rate that is applicable to a very short future time period that begins at time  $T$ . Define  $P(0, T)$  as the price of a zero-coupon bond maturing at time  $T$ . Because  $P(0, T) = e^{-RT}$ , the equation for the instantaneous forward rate can also be written as

$$
R _ {F} = - \frac {\partial}{\partial T} \ln P (0, T)
$$

If a large financial institution can borrow or lend at the rates in Table 4.5, it can lock in the forward rates. For example, it can borrow 100 at 3\% for 1 year and invest the money at 4\% for 2 years, the result is a cash outflow of 100e^{0.03 \times 1} = 103.05 at the end of year 1 and an inflow of 100e^{0.04 \times 2} = 108.33 at the end of year 2. Since 108.33 = 103.05e^{0.05}, a return equal to the forward rate (5\%) is earned on 103.05 during the second year. Alternatively, it can borrow 100 for 4 years at 5\% and invest it for 3 years at 4.6\%. The result is a cash inflow of 100e^{0.046 \times 3} = 114.80 at the end of the third year and a cash outflow of 100e^{0.05 \times 4} = 122.14 at the end of the fourth year. Since 122.14 = 114.80e^{0.062}, money is being borrowed for the fourth year at the forward rate of 6.2\%.

If a large investor thinks that rates in the future will be different from today's forward rates, there are many trading strategies that the investor will find attractive (see Business Snapshot 4.1). One of these involves entering into a contract known as a forward rate agreement. We will now discuss how this contract works and how it is valued.

# 4.9 FORWARD RATE AGREEMENTS

A forward rate agreement (FRA) is an agreement to exchange a predetermined fixed rate for a reference rate that will be observed in the market at a future time. Both rates

# Business Snapshot 4.1 Orange County's Yield Curve Plays

Suppose a large investor can borrow or lend at the rates given in Table 4.5 and thinks that 1-year interest rates will not change much over the next 5 years. The investor can borrow 1-year funds and invest for 5-years. The 1-year borrowings can be rolled over for further 1-year periods at the end of the first, second, third, and fourth years. If interest rates do stay about the same, this strategy will yield a profit of about  $2.3\%$  per year, because interest will be received at  $5.3\%$  and paid at  $3\%$ . This type of trading strategy is known as a yield curve play. The investor is speculating that rates in the future will be quite different from the forward rates observed in the market today. (In our example, forward rates observed in the market today for future 1-year periods are  $5\%$ ,  $5.8\%$ ,  $6.2\%$ , and  $6.5\%$ .)

Robert Citron, the Treasurer at Orange County, used yield curve plays similar to the one we have just described very successfully in 1992 and 1993. The profit from Mr. Citron's trades became an important contributor to Orange County's budget and he was re-elected. (No one listened to his opponent in the election, who said his trading strategy was too risky.)

In 1994 Mr. Citron expanded his yield curve plays. He invested heavily in inverse floaters. These pay a rate of interest equal to a fixed rate of interest minus a floating rate. He also leveraged his position by borrowing in the repo market. If short-term interest rates had remained the same or declined he would have continued to do well. As it happened, interest rates rose sharply during 1994. On December 1, 1994, Orange County announced that its investment portfolio had lost 1.5 billion and several days later it filed for bankruptcy protection.

are applied to a specified principal, but the principal itself is not exchanged. Historically, the reference rate has usually been LIBOR. Consider an agreement to exchange 3\% for three-month LIBOR in two years with both rates being applied to a principal of \100 million. One side (Party A) would agree to pay LIBOR and receive the fixed rate of 3\%. The other side (Party B) would agree to receive LIBOR and pay the fixed rate of 3\%. Assume all rates are compounded quarterly (as would usually be the case). If three-month LIBOR proved to be 3.5\% in two years, Party A would receive

$$
\$ 100,000,000 \times (0.035 - 0.030) \times 0.25 = \$ 125,000
$$ and Party B would pay this amount. The payment would be due at time 2.25 years. $^4$


As LIBOR is phased out, we can expect to see more FRAs based on floating rates such as three-month SOFR and three-month SONIA. FRAs are a way of locking in the rate that will be paid or received in the future. For example, a trader who is due to receive a rate based on three-month SOFR on a certain principal during a certain future time period can lock in the rate by entering into an FRA where SOFR is paid and a fixed rate is received. Similarly, a trader who is due to pay a rate based on three-month SOFR on a certain principal during a certain future time period can lock in the rate by entering into an FRA where SOFR is received and a fixed rate is paid.

When the fixed rate equals the relevant forward rate the value of an FRA is zero. For example, when the reference rate is three-month SOFR, an FRA would be worth zero when the fixed rate equals the forward three-month SOFR rate. When an FRA is first set up the fixed rate is normally equal to the forward rate, so that its value is zero. As time passes, the forward rate is liable to change. Suppose that, at a particular time, we define:

$R_{K}$ : the fixed rate agreed to in the FRA

$R_{F}$ : the current forward rate for the reference rate

$\tau$ : the period of time to which the rates apply (three months in the above example)

$L$ : the principal in the contract.

We can compare

1. the FRA under consideration
2. a similar FRA where the fixed rate is the forward rate,  $R_{F}$ .

For the party receiving the fixed rate, the only difference between the two FRAs is that the cash flow at maturity for the first FRA is  $\tau(R_K - R_F)L$  more than that for the second FRA. (This amount can be positive or negative.) We know that the second FRA is worth zero. It follows that the first FRA is worth the present value of  $\tau(R_K - R_F)L$ . Similarly, for the party that pays the fixed rate, the FRA is worth the present value of  $\tau(R_F - R_K)L$ .

An important implication of these results is that an FRA can be valued by assuming that the forward interest rate for the underlying reference rate will be the one that determines the exchange.

# Example 4.3

Suppose that the forward SOFR rate for the period between time 1.5 years and time 2 years in the future is  $5\%$  (with semiannual compounding) and that some time ago a company entered into an FRA where it will receive  $5.8\%$  (with semiannual compounding) and pay SOFR on a principal of \$100 million for the period. The 2-year (SOFR) risk-free rate is  $4\%$  (with continuous compounding). The value of the FRA is

$$

1 0 0, 0 0 0, 0 0 0 \times (0. 0 5 8 - 0. 0 5 0) \times 0. 5 e ^ {- 0. 0 4 \times 2} = \$ 3 6 9, 2 0 0

$$

# 4.10 DURATION

The duration of a bond, as its name implies, is a measure of how long the holder of the bond has to wait before receiving the present value of the cash payments. A zero-coupon bond that lasts  $n$  years has a duration of  $n$  years. However, a coupon-bearing bond lasting  $n$  years has a duration of less than  $n$  years, because the holder receives some of the cash payments prior to year  $n$ .

Suppose that a bond provides the holder with cash flows  $c_{i}$  at time  $t_i$  ( $1 \leq i \leq n$ ). The bond price  $B$  and bond yield  $y$  (continuously compounded) are related by

$$

B = \sum_ {i = 1} ^ {n} c _ {i} e ^ {- y t _ {i}} \tag {4.7}

$$

The duration of the bond,  $D$ , is defined as

$$

D = \frac {\sum_ {i = 1} ^ {n} t _ {i} c _ {i} e ^ {- y t _ {i}}}{B} \tag {4.8}

$$

This can be written

$$

D = \sum_ {i = 1} ^ {n} t _ {i} \left[ \frac {c _ {i} e ^ {- y t _ {i}}}{B} \right]

$$

The term in square brackets is the ratio of the present value of the cash flow at time  $t_i$  to the bond price. The bond price is the present value of all payments. The duration is therefore a weighted average of the times when payments are made, with the weight applied to time  $t_i$  being equal to the proportion of the bond's total present value provided by the cash flow at time  $t_i$ . The sum of the weights is 1.0. Note that, for the purposes of the definition of duration, all discounting is done at the bond yield rate of interest,  $y$ . (We do not use a different zero rate for each cash flow in the way described in Section 4.6.)

When a small change  $\Delta y$  in the yield is considered, it is approximately true that

$$

\Delta B = \frac {d B}{d y} \Delta y \tag {4.9}

$$

From equation (4.7), this becomes

$$

\Delta B = - \Delta y \sum_ {i = 1} ^ {n} c _ {i} t _ {i} e ^ {- y t _ {i}} \tag {4.10}

$$

(Note that there is a negative relationship between  $B$  and  $y$ . When bond yields increase, bond prices decrease. When bond yields decrease, bond prices increase.) From equations (4.8) and (4.10), the key duration relationship is obtained:

$$

\Delta B = - B D \Delta y \tag {4.11}

$$

This can be written

$$

\frac {\Delta B}{B} = - D \Delta y \tag {4.12}

$$

Equation (4.12) is an approximate relationship between percentage changes in a bond price and changes in its yield. It is easy to use and is the reason why duration, first suggested by Frederick Macaulay in 1938, has become such a popular measure.

Consider a 3-year  $10\%$  coupon bond with a face value of \$100. Suppose that the yield on the bond is 12\%$  per annum with continuous compounding. This means that  $y = 0.12$ . Coupon payments of \5 are made every 6 months. Table 4.6 shows the calculations necessary to determine the bond's duration. The present values of the bond's cash flows, using the yield as the discount rate, are shown in column 3 (e.g., the present value of the first cash flow is  $5e^{-0.12 \times 0.5} = 4.709$ ). The sum of the numbers in column 3 gives the bond's price as 94.213. The weights are calculated by dividing the numbers in column 3 by 94.213. The sum of the numbers in column 5 gives the duration as 2.653 years.

DV01 is the price change from a 1-basis-point increase in all rates. Gamma is the change in DV01 from a 1-basis-point increase in all rates. The following example investigates the accuracy of the duration relationship in equation (4.11).

Table 4.6 Calculation of duration.

<table><tr><td>Time (years)</td><td>Cash flow ($)</td><td>Present value</td><td>Weight</td><td>Time × weight</td></tr><tr><td>0.5</td><td>5</td><td>4.709</td><td>0.050</td><td>0.025</td></tr><tr><td>1.0</td><td>5</td><td>4.435</td><td>0.047</td><td>0.047</td></tr><tr><td>1.5</td><td>5</td><td>4.176</td><td>0.044</td><td>0.066</td></tr><tr><td>2.0</td><td>5</td><td>3.933</td><td>0.042</td><td>0.083</td></tr><tr><td>2.5</td><td>5</td><td>3.704</td><td>0.039</td><td>0.098</td></tr><tr><td>3.0</td><td>105</td><td>73.256</td><td>0.778</td><td>2.333</td></tr><tr><td>Total:</td><td>130</td><td>94.213</td><td>1.000</td><td>2.653</td></tr></table>

# Example 4.4

For the bond in Table 4.6, the bond price,  $B$ , is 94.213 and the duration,  $D$ , is 2.653, so that equation (4.11) gives

$$

\Delta B = - 9 4. 2 1 3 \times 2. 6 5 3 \times \Delta y

$$ or


$$

\Delta B = - 2 4 9. 9 5 \times \Delta y

$$

When the yield on the bond increases by 10 basis points  $(= 0.1\%)$ ,  $\Delta y = +0.001$ . The duration relationship predicts that  $\Delta B = -249.95 \times 0.001 = -0.250$ , so that the bond price goes down to  $94.213 - 0.250 = 93.963$ . How accurate is this? Valuing the bond in terms of its yield in the usual way, we find that, when the bond yield increases by 10 basis points to  $12.1\%$ , the bond price is

$$

\begin{array}{l} 5 e ^ {- 0. 1 2 1 \times 0. 5} + 5 e ^ {- 0. 1 2 1 \times 1. 0} + 5 e ^ {- 0. 1 2 1 \times 1. 5} + 5 e ^ {- 0. 1 2 1 \times 2. 0} \\ + 5 e ^ {- 0. 1 2 1 \times 2. 5} + 1 0 5 e ^ {- 0. 1 2 1 \times 3. 0} = 9 3. 9 6 3 \\ \end{array}

$$ which is (to three decimal places) the same as that predicted by the duration relationship.


# Modified Duration

The preceding analysis is based on the assumption that  $y$  is expressed with continuous compounding. If  $y$  is expressed with annual compounding, it can be shown that the approximate relationship in equation (4.11) becomes

$$

\Delta B = - \frac {B D \Delta y}{1 + y}

$$

More generally, if  $y$  is expressed with a compounding frequency of  $m$  times per year, then

$$

\Delta B = - \frac {B D \Delta y}{1 + y / m}

$$

A variable  $D^{*}$ , defined by

$$

D ^ {*} = \frac {D}{1 + y / m}

$$ is sometimes referred to as the bond's modified duration. It allows the duration relationship to be simplified to


$$

\Delta B = - B D ^ {*} \Delta y \tag {4.13}

$$ when  $y$  is expressed with a compounding frequency of  $m$  times per year. The following example investigates the accuracy of the modified duration relationship.

# Example 4.5

The bond in Table 4.6 has a price of 94.213 and a duration of 2.653. The yield, expressed with semiannual compounding is  $12.3673\%$ . The modified duration,  $D^{*}$ , is given by

$$
D ^ {*} = \frac {2 . 6 5 3}{1 + 0 . 1 2 3 6 7 3 / 2} = 2. 4 9 9
$$

From equation (4.13),

$$
\Delta B = - 9 4. 2 1 3 \times 2. 4 9 9 \times \Delta y
$$ or


$$

\Delta B = - 2 3 5. 3 9 \times \Delta y

$$

When the yield (semiannually compounded) increases by 10 basis points  $(= 0.1\%)$ , we have  $\Delta y = +0.001$ . The duration relationship predicts that we expect  $\Delta B$  to be  $-235.39 \times 0.001 = -0.235$ , so that the bond price goes down to  $94.213 - 0.235 = 93.978$ . How accurate is this? An exact calculation similar to that in the previous example shows that, when the bond yield (semiannually compounded) increases by 10 basis points to  $12.4673\%$ , the bond price becomes 93.978. This shows that the modified duration calculation gives good accuracy for small yield changes.

Another term that is sometimes used is dollar duration. This is the product of modified duration and bond price, so that  $\Delta B = -D_{\S}\Delta y$ , where  $D_{\S}$  is dollar duration.

# Bond Portfolios

The duration,  $D$ , of a bond portfolio can be defined as a weighted average of the durations of the individual bonds in the portfolio, with the weights being proportional to the bond prices. Equations (4.11) to (4.13) then apply, with  $B$  being defined as the value of the bond portfolio. They estimate the change in the value of the bond portfolio for a small change  $\Delta y$  in the yields of all the bonds.

It is important to realize that, when duration is used for bond portfolios, there is an implicit assumption that the yields of all bonds will change by approximately the same amount. When the bonds have widely differing maturities, this happens only when there is a parallel shift in the zero-coupon yield curve. We should therefore interpret equations (4.11) to (4.13) as providing estimates of the impact on the price of a bond portfolio of a small parallel shift,  $\Delta y$ , in the zero curve.

By choosing a portfolio so that the duration of assets equals the duration of liabilities (i.e., the net duration is zero), a financial institution eliminates its exposure to small parallel shifts in the yield curve. But it is still exposed to shifts that are either large or nonparallel.

# 4.11 CONVEXITY

The duration relationship applies only to small changes in yields. This is illustrated in Figure 4.2, which shows the relationship between the percentage change in value and change in yield for two bond portfolios having the same duration. The gradients of the two curves are the same at the origin. This means that both bond portfolios change in value by the same percentage for small yield changes and is consistent with equation (4.12). For large yield changes, the portfolios behave differently. Portfolio  $X$  has more curvature in its relationship with yields than portfolio  $Y$ . A factor known as convexity measures this curvature and can be used to improve the relationship in equation (4.12).

A measure of convexity is

$$

C = \frac {1}{B} \frac {d ^ {2} B}{d y ^ {2}} = \frac {\sum_ {i = 1} ^ {n} c _ {i} t _ {i} ^ {2} e ^ {- y t _ {i}}}{B}

$$

From Taylor series expansions, we obtain a more accurate expression than equation (4.9), given by

$$

\Delta B = \frac {d B}{d y} \Delta y + \frac {1}{2} \frac {d ^ {2} B}{d y ^ {2}} \Delta y ^ {2} \tag {4.14}

$$

This leads to

$$

\frac {\Delta B}{B} = - D \Delta y + \frac {1}{2} C (\Delta y) ^ {2}

$$

For a portfolio with a particular duration, the convexity of a bond portfolio tends to be greatest when the portfolio provides payments evenly over a long period of time. It is least when the payments are concentrated around one particular point in time. By choosing a portfolio of assets and liabilities with a net duration of zero and a net convexity of zero, a financial institution can make itself immune to relatively large parallel shifts in the zero curve. However, it is still exposed to nonparallel shifts.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/d21dfd923833e7a38bc21e7b96ffd38b9f3072a62513947ae0d6395d5d97a629.jpg)
Figure 4.2 Two bond portfolios with the same duration.


# 4.12 THEORIES OF THE TERM STRUCTURE OF INTEREST RATES

It is natural to ask what determines the shape of the zero curve. Why is it sometimes downward sloping, sometimes upward sloping, and sometimes partly upward sloping and partly downward sloping? A number of different theories have been proposed. The simplest is expectations theory, which conjectures that long-term interest rates should reflect expected future short-term interest rates. More precisely, it argues that a forward interest rate corresponding to a certain future period is equal to the expected future zero interest rate for that period. Another idea, market segmentation theory, conjectures that there need be no relationship between short-, medium-, and long-term interest rates. Under the theory, a major investor such as a large pension fund or an insurance company invests in bonds of a certain maturity and does not readily switch from one maturity to another. The short-term interest rate is determined by supply and demand in the short-term bond market; the medium-term interest rate is determined by supply and demand in the medium-term bond market; and so on.

The theory that is most appealing is liquidity preference theory. The basic assumption underlying the theory is that investors prefer to preserve their liquidity and invest funds for short periods of time. Borrowers, on the other hand, usually prefer to borrow at fixed rates for long periods of time. This leads to a situation in which forward rates are greater than expected future zero rates. The theory is also consistent with the empirical result that yield curves tend to be upward sloping more often than they are downward sloping.

# The Management of Net Interest Income

To understand liquidity preference theory, it is useful to consider the interest rate risk faced by banks when they take deposits and make loans. The net interest income of the bank is the excess of the interest received over the interest paid and needs to be carefully managed.

Consider a simple situation where a bank offers consumers a one-year and a five-year deposit rate as well as a one-year and five-year mortgage rate. The rates are shown in Table 4.7. We make the simplifying assumption that the expected one-year interest rate for future time periods is equal the one-year rates prevailing in the market today. Loosely speaking this means that the market considers interest rate increases to be just as likely as interest rate decreases. As a result, the rates in Table 4.7 are "fair" in that

Table 4.7 Example of rates offered by a bank to its customers.

<table><tr><td>Maturity (years)</td><td>Deposit rate</td><td>Mortgage rate</td></tr><tr><td>1</td><td>3\%</td><td>6\%</td></tr><tr><td>5</td><td>3\%</td><td>6\%</td></tr></table>

Table 4.8 Five-year rates are increased in an attempt to match maturities of assets and liabilities.

<table><tr><td>Maturity (years)</td><td>Deposit rate</td><td>Mortgage rate</td></tr><tr><td>1</td><td>3\%</td><td>6\%</td></tr><tr><td>5</td><td>4\%</td><td>7\%</td></tr></table> they reflect the market's expectations (i.e., they correspond to expectations theory). Investing money for one year and reinvesting for four further one-year periods give the same expected overall return as a single five-year investment. Similarly, borrowing money for one year and refinancing each year for the next four years leads to the same expected financing costs as a single five-year loan.


Suppose you have money to deposit and agree with the prevailing view that interest rate increases are just as likely as interest rate decreases. Would you choose to deposit your money for one year at  $3\%$  per annum or for five years at  $3\%$  per annum? The chances are that you would choose one year because this gives you more financial flexibility. It ties up your funds for a shorter period of time.

Now suppose that you want a mortgage. Again you agree with the prevailing view that interest rate increases are just as likely as interest rate decreases. Would you choose a one-year mortgage at  $6\%$  or a five-year mortgage at  $6\%$ ? The chances are that you would choose a five-year mortgage because it fixes your borrowing rate for the next five years and subjects you to less refinancing risk.

When the bank posts the rates shown in Table 4.7, it is likely to find that the majority of its depositors opt for one-year deposits and the majority of its borrowers opt for five-year mortgages. This creates an asset/liability mismatch for the bank and subjects it to risks. There is no problem if interest rates fall. The bank will find itself financing the five-year  $6\%$  loans with deposits that cost less than  $3\%$  in the future and net interest income will increase. However, if rates rise, the deposits that are financing these  $6\%$  loans will cost more than  $3\%$  in the future and net interest income will decline. A  $3\%$  rise in interest rates would reduce the net interest income to zero.

It is the job of the asset/liability management group to ensure that the maturities of the assets on which interest is earned and the maturities of the liabilities on which interest is paid are matched. One way it can do this is by increasing the five-year rate on both deposits and mortgages. For example, it could move to the situation in Table 4.8 where the five-year deposit rate is  $4\%$  and the five-year mortgage rate  $7\%$ . This would make five-year deposits relatively more attractive and one-year mortgages relatively more attractive. Some customers who chose one-year deposits when the rates were as in Table 4.7 will switch to five-year deposits in the Table 4.8 situation. Some customers who chose five-year mortgages when the rates were as in Table 4.7 will choose one-year mortgages. This may lead to the maturities of assets and liabilities being matched. If there is still an imbalance with depositors tending to choose a one-year maturity and borrowers a five-year maturity, five-year deposit and mortgage rates could be increased even further. Eventually the imbalance will disappear.

The net result of all banks behaving in the way we have just described is liquidity preference theory. Long-term rates tend to be higher than those that would be predicted by expected future short-term rates. The yield curve is upward sloping most

# Business Snapshot 4.2 Liquidity and the 2007-2009 Financial Crisis

During the financial crisis that started in July 2007 there was a "flight to quality," where financial institutions and investors looked for safe investments and were less inclined than before to take credit risks. Financial institutions that relied on short-term funding experienced liquidity problems. One example is Northern Rock in the United Kingdom, which financed much of its mortgage portfolio with wholesale deposits, some lasting only 3 months. Starting in September 2007, the depositors became nervous and refused to roll over the funding they were providing to Northern Rock, i.e., at the end of a 3-month period they would refuse to deposit their funds for a further 3-month period. As a result, Northern Rock was unable to finance its assets. It was taken over by the U.K. government in early 2008. In the United States, financial institutions such as Bear Stearns and Lehman Brothers experienced similar liquidity problems because they had chosen to fund part of their operations with short-term funds.

of the time. It is downward sloping only when the market expects a steep decline in short-term rates.

Many banks now have sophisticated systems for monitoring the decisions being made by customers so that, when they detect small differences between the maturities of the assets and liabilities being chosen by customers they can fine tune the rates they offer. Sometimes derivatives such as interest rate swaps are also used to manage their exposure. The result of all this is that net interest income is usually very stable. This has not always been the case. In the United States, the failure of Savings and Loan companies in the 1980s and the failure of Continental Illinois in 1984 were to a large extent a result of the fact that they did not match the maturities of assets and liabilities. Both failures proved to be very expensive for U.S. taxpayers.

# Liquidity

In addition to creating problems in the way that has been described, a portfolio where maturities are mismatched can lead to liquidity problems. Consider a financial institution that funds 5-year fixed rate loans with wholesale deposits that last only 3 months. It might recognize its exposure to rising interest rates and hedge its interest rate risk. (One way of doing this is by using interest rate swaps, as mentioned earlier.) However, it still has a liquidity risk. Wholesale depositors may, for some reason, lose confidence in the financial institution and refuse to continue to provide the financial institution with short-term funding. The financial institution, even if it has adequate equity capital, will then experience a severe liquidity problem that could lead to its downfall. As described in Business Snapshot 4.2, these types of liquidity problems were the root cause of some of the failures of financial institutions during the crisis that started in 2007.

# SUMMARY

The compounding frequency used for an interest rate defines the units in which it is measured. The difference between an annually compounded rate and a quarterly compounded rate is analogous to the difference between a distance measured in miles and a distance measured in kilometers. Traders frequently use continuous compounding when analyzing the value of options and more complex derivatives.


Many different types of interest rates are quoted in financial markets and calculated by analysts. The  $n$ -year zero or spot rate is the rate applicable to an investment lasting for  $n$  years when all of the return is realized at the end. The par yield on a bond of a certain maturity is the coupon rate that causes the bond to sell for its par value. Forward rates are the rates applicable to future periods of time implied by today's zero rates.

The method most commonly used to calculate zero rates is known as the bootstrap method. It involves starting with short-term instruments and moving progressively to longer-term instruments, making sure that the zero rates calculated at each stage are consistent with the prices of the instruments. It is used daily by trading desks to calculate a variety of zero curves.

A forward rate agreement (FRA) is an over-the-counter agreement where a floating rate will be exchanged for a specified interest rate with both rates being applied to a predetermined principal over a predetermined period.

An important concept in interest rate markets is duration. Duration measures the sensitivity of the value of a bond portfolio to a small parallel shift in the zero-coupon yield curve. Specifically,

$$

\Delta B = - B D \Delta y

$$ where  $B$  is the value of the bond portfolio,  $D$  is the duration of the portfolio,  $\Delta y$  is the size of a small parallel shift in the zero curve, and  $\Delta B$  is the resultant effect on the value of the bond portfolio.

Liquidity preference theory can be used to explain the interest rate term structures that are observed in practice. The theory argues that most entities like to borrow long and lend short. To match the maturities of borrowers and lenders, it is necessary for financial institutions to raise long-term rates so that forward interest rates are higher than expected future spot interest rates.

# FURTHER READING

Berndt, A., D. Duffie, and Y. Zhu, "Across-the-Curve Credit Spread Indices," Working Paper, July 2020. See: www.darrellduffie.com/uploads/pubs/BerndtDuffieZhuJuly2020.pdf.

Fabozzi, F. J. Bond Markets, Analysis, and Strategies, 8th end. Upper Saddle River, NJ: Pearson, 2012.

Grinblatt, M., and F. A. Longstaff. "Financial Innovation and the Role of Derivatives Securities: An Empirical Analysis of the Treasury Strips Program," Journal of Finance, 55, 3 (2000): 1415-36.

Jorion, P. Big Bets Gone Bad: Derivatives and Bankruptcy in Orange County. New York: Academic Press, 1995.

Schrimpf, A., and V. Sushko, "Beyond LIBOR: A Primer on the New Benchmark Rates," BIS Quarterly, March 2019: 29-52.

Stigum, M., and A. Crescenzi. Money Markets, 4th end. New York: McGraw Hill, 2007.

# Short Concept Questions

4.1. Explain how LIBOR is determined and why it is being discontinued.
4.2. What overnight rates are expected to replace LIBOR?

4.3. What is a repo rate?
4.4. Give two reasons why Treasury rates are less than other very low risk rates in the United States.
4.5. Which is better for a lender:  $5\%$  compounded annually or  $5\%$  compounded quarterly?
4.6. What is the formula for calculating the future value of an amount  $A$  when the interest rate is  $R$  and the compounding frequency is  $m$ ?
4.7. What is the formula for calculating the present value of an amount  $A$  when the interest rate is  $R$  and the compounding frequency is continuous?
4.8. How is par yield defined?
4.9. What is a forward rate agreement? How can it be valued?
4.10. Explain what liquidity preference theory and expectations theory imply about forward interest rates and expected future spot interest rates.

# Practice Questions

4.11. A bank quotes an interest rate of  $7\%$  per annum with quarterly compounding. What is the equivalent rate with (a) continuous compounding and (b) annual compounding?

4.12. The 6-month and 1-year zero rates are both  $5\%$  per annum. For a bond that has a life of 18 months and pays a coupon of  $4\%$  per annum (with semiannual payments and one having just been made), the yield is  $5.2\%$  per annum. What is the bond's price? What is the 18-month zero rate? All rates are quoted with semiannual compounding.

4.13. An investor receives \$1,100 in one year in return for an investment of \$1,000 now. Calculate the percentage return per annum with:

(a) Annual compounding

(b) Semiannual compounding

(c) Monthly compounding

(d) Continuous compounding.

4.14. Suppose that risk-free zero interest rates with continuous compounding are as follows:

<table><tr><td>Maturity (months)</td><td>Rate (\% per annum)</td></tr><tr><td>3</td><td>3.0</td></tr><tr><td>6</td><td>3.2</td></tr><tr><td>9</td><td>3.4</td></tr><tr><td>12</td><td>3.5</td></tr><tr><td>15</td><td>3.6</td></tr><tr><td>18</td><td>3.7</td></tr></table>

Calculate forward interest rates for the second, third, fourth, fifth, and sixth quarters.

4.15. Assuming that SOFR rates are as in Problem 4.14, what is the value of an FRA where the holder will pay SOFR and receive 4.5\% (quarterly compounded) for a three-month period starting in one year on a principal of 1,000,000?

4.16. The term structure of interest rates is upward sloping. Put the following in order of magnitude:

(a) The 5-year zero rate

(b) The yield on a 5-year coupon-bearing bond

(c) The forward rate corresponding to the period between 4.75 and 5 years in the future. What is the answer when the term structure of interest rates is downward sloping?

4.17. What does duration tell you about the sensitivity of a bond portfolio to interest rates. What are the limitations of the duration measure?
4.18. What rate of interest with continuous compounding is equivalent to  $8\%$  per annum with monthly compounding?
4.19. A deposit account pays  $4 \%$ per annum with continuous compounding, but interest is actually paid quarterly. How much interest will be paid each quarter on a 10,000 deposit?
4.20. Suppose that 6-month, 12-month, 18-month, 24-month, and 30-month zero rates are, respectively,  $4\%$ ,  $4.2\%$ ,  $4.4\%$ ,  $4.6\%$ , and  $4.8\%$  per annum, with continuous compounding. Estimate the cash price of a bond with a face value of 100 that will mature in 30 months and pay a coupon of  $4\%$  per annum semiannually.
4.21. A 3-year bond provides a coupon of  $8\%$  semiannually and has a cash price of 104. What is the bond's yield?
4.22. Suppose that the 6-month, 12-month, 18-month, and 24-month zero rates are  $5\%$ ,  $6\%$ ,  $6.5\%$ , and  $7\%$ , respectively. What is the 2-year par yield?
4.23. Suppose that risk-free zero interest rates with continuous compounding are as follows:

<table><tr><td>Maturity (years)</td><td>Rate (\% per annum)</td></tr><tr><td>1</td><td>2.0</td></tr><tr><td>2</td><td>3.0</td></tr><tr><td>3</td><td>3.7</td></tr><tr><td>4</td><td>4.2</td></tr><tr><td>5</td><td>4.5</td></tr></table>

Calculate forward interest rates for the second, third, fourth, and fifth years.

4.24. A 10-year 8\% coupon bond currently sells for \$90. A 10-year 4\% coupon bond currently sells for \$80. What is the 10-year zero rate? (Hint: Consider taking a long position in two of the 4\% coupon bonds and a short position in one of the 8\% coupon bonds.)
4.25. Explain carefully why liquidity preference theory is consistent with the observation that the term structure of interest rates tends to be upward-sloping more often than it is downward-sloping.
4.26. "When the zero curve is upward-sloping, the zero rate for a particular maturity is greater than the par yield for that maturity. When the zero curve is downward-sloping the reverse is true." Explain why this is so.
4.27. Why does a loan in the repo market involve very little credit risk?
4.28. A 5-year bond with a yield of  $7\%$  (continuously compounded) pays an  $8\%$  coupon at the end of each year.

(a) What is the bond's price?

(b) What is the bond's duration?

(c) Use the duration to calculate the effect on the bond's price of a  $0.2\%$  decrease in its yield.

(d) Recalculate the bond's price on the basis of a  $6.8\%$  per annum yield and verify that the result is in agreement with your answer to (c).

4.29. The cash prices of 6-month and 1-year Treasury bills are 94.0 and 89.0. A 1.5-year Treasury bond that will pay coupons of \$4 every 6 months currently sells for \$94.84. A 2-year Treasury bond that will pay coupons of \$5 every 6 months currently sells for \$97.12. Calculate the 6-month, 1-year, 1.5-year, and 2-year Treasury zero rates.
4.30. "An interest rate swap where 6-month LIBOR is exchanged for a fixed rate of  $5\%$  on a principal of 100 million for 5 years involves a known cash flow and a portfolio of nine FRAs." Explain this statement.
4.31. When compounded annually an interest rate is  $11\%$ . What is the rate when expressed with (a) semiannual compounding, (b) quarterly compounding, (c) monthly compounding, (d) weekly compounding, and (e) daily compounding.
4.32. The table below gives Treasury zero rates and cash flows on a Treasury bond. Zero rates are continuously compounded.

(a) What is the bond's theoretical price?

(b) What is the bond's yield assuming it sells for its theoretical price?

<table><tr><td>Maturity (years)</td><td>Zero rate</td><td>Coupon payment</td><td>Principal</td></tr><tr><td>0.5</td><td>2.0\%</td><td>$20</td><td></td></tr><tr><td>1.0</td><td>2.3\%</td><td>$20</td><td></td></tr><tr><td>1.5</td><td>2.7\%</td><td>$20</td><td></td></tr><tr><td>2.0</td><td>3.2\%</td><td>$20</td><td>1,000</td></tr></table>

4.33. A 5-year bond provides a coupon of  $5\%$  per annum payable semiannually. Its price is 104. What is the bond's yield? You may find Excel's Solver useful.

4.34. An interest rate is quoted as  $5\%$  per annum with semiannual compounding. What is the equivalent rate with (a) annual compounding, (b) monthly compounding, and (c) continuous compounding.

4.35. Portfolio A consists of a 1-year zero-coupon bond with a face value of \$2,000 and a 10-year zero-coupon bond with a face value of \$6,000. Portfolio B consists of a 5.95-year zero-coupon bond with a face value of 5,000. The current yield on all bonds is 10\% per annum.

(a) Show that both portfolios have the same duration.

(b) Show that the percentage changes in the values of the two portfolios for a  $0.1\%$  per annum increase in yields are the same.

(c) What are the percentage changes in the values of the two portfolios for a  $5\%$  per annum increase in yields?

4.36. Verify that DerivaGem agrees with the price of the bond in Section 4.6. Test how well DV01 predicts the effect of a 1-basis-point increase in all rates. Estimate the duration of the bond from DV01. Use DV01 and Gamma to predict the effect of a 200-basis-point increase in all rates. Use Gamma to estimate the bond's convexity. (Hint: In DerivaGem, DV01 is  $\frac{dB}{dy}$ , where  $B$  is the price of the bond and  $y$  is its yield measured in basis points, and Gamma is  $\frac{d^2B}{dy^2}$ , where  $y$  is measured in percent.)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/41d4909a701ab222df5cfaf8f5673eb4cd8f427fcd7695aace1d3dc02748a215.jpg)

# Determination of Forward and Futures Prices

In this chapter we examine how forward prices and futures prices are related to the spot price of the underlying asset. Forward contracts are easier to analyze than futures contracts because there is no daily settlement—only a single payment at maturity. We therefore start this chapter by considering the relationship between the forward price and the spot price. Luckily it can be shown that the forward price and futures price of an asset are usually very close when the maturities of the two contracts are the same. This is convenient because it means that results obtained for forwards can be assumed to be true for futures.

In the first part of the chapter we derive some important general results on the relationship between forward (or futures) prices and spot prices. We then use the results to examine the relationship between futures prices and spot prices for contracts on stock indices, foreign exchange, and commodities. We will consider interest rate futures contracts in the next chapter.

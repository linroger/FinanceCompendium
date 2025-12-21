---
title: "Chapter 03: Interest Rates and Security Valuation"
parent_directory: "Financial Markets and Institutions/Part 01 Introduction"
formatted: "2025-12-21 10:25:00 AM"
formatter_model: "claude-sonnet-4-5-20250929"
cli_tool: "claude-code"
primary_tags:
  - interest rate determinants
  - bond valuation
  - equity valuation
  - duration and convexity
secondary_tags:
  - coupon rates
  - yield to maturity
  - dividend discount models
  - security price sensitivity
  - immunization strategies
cssclasses: academia
---

Interest Rates as a Determinant of Financial Security Values: Chapter Overview

Various Interest Rate Measures Coupon Rate

Required Rate of Return

Expected Rate of Return

Required versus Expected

Rates of Return: The Role of Efficient Markets

Realized Rate of Return

Bond Valuation

Bond Valuation Formula Used to Calculate Fair Present Values

Bond Valuation Formula Used to Calculate Yield to Maturity

Equity Valuation

Zero Growth in Dividends

Constant Growth in Dividends

Supernormal (or Nonconstant)

Growth in Dividends

Impact of Interest Rate Changes on

Security Values

Impact of Maturity on Security Values

Maturity and Security Prices

Maturity and Security Price

Sensitivity to Changes in

Interest Rates

Impact of Coupon Rates on Security

Values

Coupon Rate and Security Prices

Coupon Rate and Security

Price Sensitivity to Changes in

Interest Rates

Duration

A Simple Illustration of Duration

A General Formula for Duration

Features of Duration

Economic Meaning of Duration

Large Interest Rate Changes and Duration

Appendix 3A: Duration and

Immunization

Appendix 3B: More on Convexity

(Appendixes 3A and 3B available through Connect or your course

instructor)

# Chapter 03: Interest Rates and Security Valuation

## Learning Goals

### LG 3-1

Understand the differences in the required rate of return, the expected rate of return, and the realized rate of return.

### LG 3-2

Calculate bond values.

### LG 3-3

Calculate equity values.

### LG 3-4

Appreciate how security prices are affected by interest rate changes.

### LG 3-5

Understand how the maturity and coupon rate on a security affect its price sensitivity to interest rate changes.

### LG 3-6

Know what duration is.

### LG 3-7

Understand how maturity, yield to maturity, and coupon rate affect the duration of a security.

### LG 3-8

Understand the economic meaning of duration.

## Interest Rates as a Determinant of Financial Security Values: Chapter Overview

In Chapter 2, we reviewed the basic concepts of time value of money and how time value of money equations can be used to convert cash flows received or paid over an investment horizon into either a present value or future value. Of particular importance was the fact that interest rate levels, and changes in interest rate levels, affect security values. We also reviewed factors that determine the level of interest rates, changes in interest rates, and interest rate differences among securities (e.g., default risk, callability).

With this understanding of how and why interest rates change, in this chapter we apply time value of money principles to the valuation of specific financial securities, paying particular attention to the change in a security's value when interest rates change. We examine how characteristics specific to a financial security (e.g., coupon rate and remaining time to maturity) also influence a financial security's price. We conclude the chapter with an analysis of the duration of a security. Duration, which measures the weighted-average time to maturity of an asset or liability, using the present values of the cash flows as weights, also has economic meaning as the sensitivity of an asset or liability's value or price to a small interest rate change. The valuation and duration models reviewed in this chapter are used by traders to determine whether to transact in the various financial markets we discuss in Chapters 5 through 10.

## Various Interest Rate Measures

LG3-1

In Chapter 2, we presented a general discussion of interest rates and how they are determined. The term interest rates can actually have many different meanings depending on the time frame used for analysis and the type of security being analyzed. In this chapter, we start off by defining different interest rate measures employed in the valuation of financial securities by market participants. These definitions are summarized in Table 3-1. In the body of the chapter, we apply these rates to the valuation of bonds (bond markets and their operations are discussed in detail in Chapter 6) and the valuation of stocks (stock markets and their operations are discussed in Chapter 8).

### Coupon Rate

Interest rate used to calculate the annual cash flow the bond issuer promises to pay the bond holder.

One variation on the meaning of the term interest rate specific to debt instruments is the coupon rate paid on a bond. As discussed in detail in the next section, the coupon rate on a bond instrument is the annual (or periodic) cash flow that the bond issuer contractually promises to pay the bond holder. This coupon rate is only one component of the overall return (required, expected, or realized rate of return) the bond holder earns on a bond, however. As discussed below, required, expected, or realized rates of return incorporate not only the coupon payments but all cash flows on a bond investment, including full and partial repayments of principal by the issuer.

### Required Rate of Return

Market participants use time value of money equations to calculate the fair present value of a financial security over an investment horizon. As we discussed in Chapter 2 and will see later in this chapter, this process involves the discounting of all projected cash flows

### TABLE 3-1 Various Interest Rate Measures

Coupon rate—interest rate on a bond instrument used to calculate the annual cash flow the bond issuer promises to pay the bond holder.

Required rate of return—interest rate an investor should receive on a security given its risk.

Required rate of return is used to calculate the fair present value on a security.

Expected rate of return—interest rate an investor expects to receive on a security if he or she buys the security at its current market price, receives all expected payments, and sells the security at the end of his or her investment horizon.

Realized rate of return—actual interest rate earned on an investment in a financial security. Realized rate of return is a historical (ex post) measure of the interest rate.

1. Security valuation is a topic that finance students probably studied in introductory financial management courses. However, these models are critical tools for traders of financial securities and managers of financial institutions. Therefore, in this chapter we review and provide a reference guide to the general pricing relationships. This material can be included or dropped from the chapter reading, depending on the need for review of the material, without harming the continuity of the chapter.
2. The projected cash flows used in these equations may be those promised by the security issuer or expected cash flows estimated by the security purchaser (or some other analyst) from a probability distribution of the possible cash flows received on the security. In either case, the cash flows received are not ex ante known with perfect certainty because of default and other risks.

### Required Rate of Return

The interest rate an investor should receive on a security, given its risk.

(CFs) on the security at an appropriate interest rate. (For easy reference to the notation used in this chapter, we list and define all variables used in this chapter at the end of the chapter.) The interest rate used to find the fair present value of a financial security is called the required rate of return  $(r)$ . This interest rate is a function of the various risks associated with a security (discussed in Chapter 2) and is thus the interest rate the investor should receive on the security given its risk (default risk, liquidity risk, etc.). The required rate of return is thus an ex ante (before the fact) measure of the interest rate on a security. The present value  $(PV)$  is determined by the following formula:

$$
P V = \frac{C F_{1}}{(1 + r)^{1}} + \frac{C F_{2}}{(1 + r)^{2}} + \frac{C F_{3}}{(1 + r)^{3}} + \ldots + \frac{C F_{n}}{(1 + r)^{n}} = \sum_{t = 1}^{n} \frac{C F_{t}}{(1 + r)^{t}}
$$ where


$$ r = \text{Re qu ir ed}
$$

$$
C F_{t} = \text{Ca sh fl ow pr oj ec te di np er io d} t (t = 1, \dots , n)
$$

$$ n = \text{Nu mb er of pe ri od si nt he in ve st me nt ho ri zo n}
$$

Once a  $PV$  is calculated, market participants then compare this present value with the current market price  $(\overline{P})$  at which the security is trading in a financial market. If the current market price of the security  $(\overline{P})$  is less than its fair value  $(PV)$ , the security is currently undervalued. The market participant would want to buy more of this security at its current price. If the current market price of the security is greater than its present value, the security is overvalued. The market participant would not want to buy this security at its current price. If the present value of the security equals its current market price, the security is said to be fairly priced given its risk characteristics. In this case,  $PV$  equals  $\overline{P}$ .

# CALCULATOR HINTS

$$
\begin{array}{l} N = 4 \\ I = 1 1. 2 5 \\ P M T = 1 0 0 \\ F V = 9 6 0 \\ C P T P V = 9 3 5. 3 1 \\ \end{array}
$$

# EXAMPLE 3-1 Application of Required Rate of Return

A Walmart bond you purchased two years ago for \$890 is now selling for \$925. The bond paid \$100 per year in coupon interest on the last day of each year (the last payment made today). You intend to hold the bond for four more years and project that you will be able to sell it at the end of year 4 for \$960. You also project that the bond will continue paying 100 in interest per year. Given the risk associated with the bond, its required rate of return (r) over the next four years is 11.25 percent. Accordingly, the bond's fair present value is:

$$
\begin{array}{l} P V = \frac{1 0 0}{(1 + 0 . 1 1 2 5)^{1}} + \frac{1 0 0}{(1 + 0 . 1 1 2 5)^{2}} + \frac{1 0 0}{(1 + 0 . 1 1 2 5)^{3}} + \frac{1 0 0 + 9 6 0}{(1 + 0 . 1 1 2 5)^{4}} \\ = \$ 935.31 \\ \end{array}
$$

Given the current selling price of the Walmart bond,  \$925, relative to the fair present value,\$ 935.31, this bond is currently undervalued.

# expected rate of return

The interest rate an investor would expect to earn on a security if he or she were to buy the security at its current market price, receive all promised or expected payments on the security, and sell the security at the end of his or her investment horizon.

# Expected Rate of Return

The expected rate of return,  $E(r)$ , on a financial security is the interest rate a market participant expects to earn by buying the security at its current market price  $(\overline{P})$ , receiving all projected cash flow payments  $(CFs)$  on the security, and selling the security at the end of the participant's investment horizon. Thus, the expected rate of return is also an ex ante measure of the interest rate on a security. However, the expected rate of return on an investment is based on the current market price rather than fair present value. As discussed above, these may or may not be equal.

Again, time value of money equations are used to calculate the expected rate of return on a security. In this case, the current market price of the security is set equal to the present value of all projected cash flows received on the security over the investment horizon.

TABLE 3-2 The Relation between Required Rate of Return and Expected Rate of Return

<table><tr><td>E(r) ≥ r or P ≤ PV</td><td>The projected cash flows received on the security are greater than or equal to those required to compensate for the risk incurred from investing in the security. Thus, buy this security.</td></tr><tr><td>E(r) &lt; r or P &gt; PV</td><td>The projected cash flows received on the security are less than is required to compensate for the risk incurred from investing in the security. Thus, do not buy this security.</td></tr></table>

The expected rate of return is the discount rate in the present value equation that just makes the present value of projected cash flows equal to its current market price  $(\bar{P})^3$  That is:

$$
\bar {P} = \frac{C F_{1}}{\left[ 1 + E (r) \right]^{1}} + \frac{C F_{2}}{\left[ 1 + E (r) \right]^{2}} + \frac{C F_{3}}{\left[ 1 + E (r) \right]^{3}} + \dots + \frac{C F_{n}}{\left[ 1 + E (r) \right]^{n}}
$$ where


$E(r) =$  Expected rate of return

$CF_{t} = \mathrm{Cash}$  flow projected in period  $t$ $(t = 1,\dots ,n)$

$n =$  Number of periods in the investment horizon

Once an expected rate of return,  $E(r)$ , on a financial security is calculated, the market participant compares this expected rate of return to its required rate of return  $(r)$ . If the expected rate of return is greater than the required rate of return, the projected cash flows on the security are greater than is required to compensate for the risk incurred from investing in the security. Thus, the market participant would want to buy more of this security. If the expected rate of return is less than the required rate of return, the projected cash flows from the security are less than those required to compensate for the risk involved. Thus, the market participant would not want to invest in the security. We summarize these relationships in Table 3-2.

# CALCULATOR HINTS

$N = 4$

${PMT} = {100}$

${FV} = {960}$

$PV = -925$

CPT  $I = 11.607\%$

# EXAMPLE 3-2 Application of Expected Rate of Return

Refer to information in Example 3-1 describing a Walmart bond you purchased two years ago for  \$890. Using the current market price of\$ 925, the expected rate of return on the bond over the next four years is calculated as follows:

$$

\begin{array}{l} 9 2 5 = \frac{1 0 0}{[ 1 + E (r) ]^{1}} + \frac{1 0 0}{[ 1 + E (r) ]^{2}} + \frac{1 0 0}{[ 1 + E (r) ]^{3}} + \frac{1 0 0 + 9 6 0}{[ 1 + E (r) ]^{4}} \\ \Rightarrow E(r) = 11.607 \% \\ \end{array}

$$

Given that the required return on the bond is 11.25 percent, the projected cash flows on the bond are greater than is required to compensate you for the risk on the bond.

# Required versus Expected Rates of Return: The Role

# of Efficient Markets

We have defined two ex ante (before the fact) measures of interest rates. The required rate of return is used to calculate a fair present value of a financial security, while the expected rate of return is a discount rate used in conjunction with the current market price of a

3. We are also assuming that any cash flows on the investment can be reinvested to earn the same expected rate of return.
4. Note also that by implication, if  $E(r) > r$ , then the market price of a security  $(\bar{P})$  is less than its fair present value  $(PV)$  and vice versa if  $E(r) < r$ .

# market efficiency

The process by which financial security prices move to a new equilibrium when interest rates or a security-specific characteristic changes.

# realized rate of return

The actual interest rate earned on an investment in a financial security.

# DO YOU UNDERSTAND?

1. The difference between a required rate of return and an expected rate of return?
2. The difference between the coupon rate on a bond and the realized rate of return on a bond?

security. As long as financial markets are efficient (see below), the current market price of a security tends to equal its fair price present value. This is the case most of the time. However, when an event occurs that unexpectedly changes interest rates or a characteristic of a financial security (e.g., an unexpected dividend increase, an unexpected decrease in default risk), the current market price of a security can temporarily diverge from its fair present value. When investors determine a security is undervalued (i.e., its current market price is less than its fair present value), demand for the security increases, as does its price. Conversely, when investors determine a security is overvalued (i.e., its current market price is greater than its fair present value), they will sell the security, resulting in a price drop. The speed with which financial security prices adjust to unexpected news, so as to maintain equality with the fair present value of the security, is referred to as market efficiency. We examine the three forms of market efficiency (weak form, semistrong form, and strong form) in Chapter 8.

# Realized Rate of Return

Required and expected rates of return are interest rate concepts pertaining to the returns expected or required just prior to the investment being made. Once made, however, the market participant is concerned with how well the financial security actually performs. The realized rate of return  $(\overline{r})$  on a financial security is the interest rate actually earned on an investment in a financial security. The realized rate of return is thus a historical interest rate of return—it is an ex post (after the fact) measure of the interest rate on the security.

To calculate a realized rate of return  $(\bar{r})$ , all cash flows actually paid or received are incorporated in time value of money equations to solve for the realized rate of return. By setting the price actually paid for the security  $(\bar{P})$  equal to the present value of the realized cash flows  $(RCF_{1}, RCF_{2}, \ldots, RCF_{n})$ , the realized rate of return is the discount rate that just equates the purchase price to the present value of the realized cash flows. That is:

$$

\bar {P} = \frac{R C F_{1}}{(1 + \bar {r})^{1}} + \frac{R C F_{2}}{(1 + \bar {r})^{2}} + \dots + \frac{R C F_{n}}{(1 + \bar {r})^{n}}

$$ where


$$

R C F_{t} = \text{Re al iz ed ca sh fl ow in pe ri od} t (t = 1, \dots , n)

$$

$\bar{r} =$  Realized rate of return on a security

If the realized rate of return  $(\overline{r})$  is greater than the required rate of return  $(r)$ , the market participant actually earned more than was needed to be compensated for the ex ante or expected risk of investing in the security. If the realized rate of return is less than the required rate of return, the market participant actually earned less than the interest rate required to compensate for the risk involved.

# CALCULATOR HINTS

$$

N = 2

$$

$$

P M T = 1 0 0

$$

$$

F V = 9 2 5

$$

$$

P V = - 8 9 0

$$

$$

CPT / = 13.08 \%

$$

# EXAMPLE 3-3 Application of Realized Rate of Return

Consider again the Walmart bond investment described in Examples 3-1 and 3-2. Using your original purchase price, 890, and the current market price on this bond, the realized rate of return you have earned on this bond over the last two years is calculated as follows:

$$

\begin{array}{l} 8 9 0 = \frac{1 0 0}{(1 + \bar {r})^{1}} + \frac{1 0 0 + 9 2 5}{(1 + \bar {r})^{2}} \\ \Rightarrow \bar{r} = 13.08\% \\ \end{array}

$$

# BOND VALUATION

# LG 3-2

# coupon bonds

Bonds that pay interest based on a stated coupon rate. The interest, or coupon, payments per year are generally constant over the life of the bond.

# zero-coupon bonds

Bonds that do not pay interest.

The valuation of a bond instrument employs time value of money concepts. The fair value of a bond reflects the present value of all cash flows promised or projected to be received on that bond discounted at the required rate of return  $(r_b)$ . Similarly, the expected rate of return,  $E(r_b)$ , is the interest rate that equates the current market price of the bond with the present value of all promised cash flows received over the life of the bond. Finally, a realized rate of return  $(\overline{r}_b)$  on a bond is the actual return earned on a bond investment that has already taken place. Promised cash flows on bonds come from two sources: (1) interest or coupon payments paid over the life of the bond and (2) a lump sum payment (face or par value) when a bond matures.

# Bond Valuation Formula Used to Calculate Fair Present Values

Most bonds pay a stated coupon rate of interest to the holders of the bonds. These bonds are called coupon bonds. The interest, or coupon, payments per year, INT, are generally constant (fixed) over the life of the bond. Thus, the fixed interest payment is essentially an annuity paid to the bond holder periodically (normally semiannually) over the life of the bond. Bonds that do not pay coupon interest are called zero-coupon bonds. For these bonds, INT is zero. In addition to coupon payments, the face or par value of the bond,  $M$ , is a lump sum payment received by the bond holder when the bond matures. Face value is generally set at 1,000 in the U.S. bond market. When new bonds are issued, the coupon rate on the new bonds is typically set at the current required rate of return. As discussed below, this results in the original sale of the bond occurring at the par value.

Using time value of money formulas, and assuming that the bond issuer makes its promised semiannual coupon and principal payments, the present value of a bond,  $V_{b}$ , can be written as:

$$

\begin{array}{l} V_{b} = \frac{I N T / 2}{(1 + r_{b} / 2)^{1}} + \frac{I N T / 2}{(1 + r_{b} / 2)^{2}} + \ldots + \frac{I N T / 2}{(1 + r_{b} / 2)^{2 T}} + \frac{M}{(1 + r_{b} / 2)^{2 T}} \\ = \frac{I N T}{2} \sum_{t = 1}^{2 T} \left(\frac{1}{1 + r_{b} / 2}\right)^{t} + \frac{M}{(1 + r_{b} / 2)^{2 T}} \\ = \frac{I N T}{(2)} \left[ \frac{1 - \frac{1}{\left(1 + r_{b} / 2\right)^{2 T}}}{r_{b} / 2} \right] + M \left[ \frac{1}{\left(1 + r_{b} / 2\right)^{2 T}} \right] \\ \end{array}

$$ where


$$

V_{b} = \text{Pr es en tv al ue of th eb on d}

$$

$$

M = \text{Pa ro rf ac ev al ue of th eb on d}

$$

$$

I N T = \text{An nu al in te rs t (or co up on)} \text{pa ym en to nt he bo nd ;e qu al st he pa rv al ue of th e}

$$

$$

T = \text{Nu mb er of ye ar su nt il th eb on dm at ur es}

$$

$$ r_{b} = \text{An nu al in te rs tr at eu se dt od is co un tc ah fl ow so nt he bo nd}
$$

5. Variable rate bonds pay interest that is indexed to some broad interest rate measure (such as Treasury bill rates) and thus experience variable coupon payments. Income bonds pay interest only if the issuer has sufficient earnings to make the promised payments. Index (or purchasing power) bonds pay interest based on an inflation index. Each of these types of bonds, therefore, can have variable interest payments.
6. More generally, for bonds that pay interest other than semiannually:

$$
V_{b} = \frac{I N T}{m} \left[ \frac{1 - \frac{1}{\left(1 + r_{b} / m\right)^{m T}}}{r_{b} / m} \right] + M \left[ \frac{1}{\left(1 + r_{b} / m\right)^{m T}} \right]
$$ where  $m =$  Number of times per year interest is paid.


# CALCULATOR HINTS

$$

\begin{array}{l} N = 1 2 (2) = 2 4 \\ I = 4. 0 0 \\ P M T = 5 0 \\ F V = 1, 0 0 0 \\ C P T P V = - 1, 1 5 2. 4 7 \\ \end{array}

$$

# EXAMPLE 3-4 Calculation of the Fair Value of a Coupon Bond

You are considering the purchase of a  \$1,000 face value bond issued by ExxonMobil. The bond pays 10 percent coupon interest per year, with the coupon paid semiannually (i.e.,\$ 50 [= 1,000(0.10)/2] over the first half of the year and 50 over the second half of the year). The bond matures in 12 years (i.e., the bond pays interest (12 × 2 =) 24 times before it matures). If the required rate of return (r_b) on this bond is 8 percent (i.e., the periodic discount rate is (8\%/2 = 4 percent), the market value of the bond is calculated as follows:

$$

\begin{array}{l} V_{b} = \frac{1 , 0 0 0 (0 . 1 0)}{2} \left[ \frac{1 - \frac{1}{[ 1 + (0 . 0 8 / 2) ]^{2 (1 2)}}}{0 . 0 8 / 2} \right] + 1, 0 0 0 / [ 1 + (0. 0 8 / 2) ]^{2 (1 2)} \\ = 5 0 (1 5. 2 4 6 9 6) + 1, 0 0 0 (0. 3 9 0 1 2) = \$ 1, 1 5 2. 4 7 \\ \end{array}

$$ or an investor would be willing to pay no more than 1,152.47 for this bond.


If the required rate of return on this bond is 10 percent, the market value of the bond is calculated as follows:

$$

\begin{array}{l} V_{b} = \frac{1 , 0 0 0 (0 . 1 0)}{2} \left[ \frac{1 - \frac{1}{[ 1 + (0 . 1 0 / 2) ]^{2 (1 2)}}}{0 . 1 0 / 2} \right] + 1, 0 0 0 / [ 1 + (0. 1 0 / 2) ]^{2 (1 2)} \\ = 5 0 (1 3. 7 9 8 6 4) + 1, 0 0 0 (0. 3 1 0 0 7) = \$ 1, 0 0 0. 0 0 \\ \end{array}

$$ or an investor would be willing to pay no more than 1,000.00 for this bond.


If the required rate of return on this bond is 12 percent, the market value of the bond is calculated as follows:

$$

\begin{array}{l} V_{b} = \frac{1 , 0 0 0 (0 . 1 0)}{2} \left[ \frac{1 - \frac{1}{[ 1 + (0 . 1 2 / 2) ]^{2 (1 2)}}}{0 . 1 2 / 2} \right] + 1, 0 0 0 / [ 1 + (0. 1 2 / 2) ]^{2 (1 2)} \\ = 5 0 (1 2. 5 5 0 3 6) + 1, 0 0 0 (0. 2 4 6 9 8) = \$ 8 7 4. 5 0 \\ \end{array}

$$ or an investor would be willing to pay no more than 874.50 for this bond.


# bond

Long-term debt obligation issued by corporations and government units.

# premium bond

A bond in which the present value of the bond is greater than its face value.

# discount bond

A bond in which the present value of the bond is less than its face value.

# par bond

A bond in which the present value of the bond is equal to its face value.

In the preceding example, when the required rate of return  $(r_b)$  on the bond is 8 percent, the present value of the bond,  $1,152.47$ , is greater than its face value of  $\$1,000$ . When the bond's coupon rate is greater than the required rate of return (10 percent versus 8 percent in our example), the bond should sell at a premium. To achieve the required rate of return, the bond holder takes a loss on the difference between the purchase price of the bond and the face value received at maturity. When the bond's required rate of return is 12 percent, its present value is less than its face value and the bond should sell at a discount. This occurs because the coupon rate on the bond is below the required rate of return. To achieve the required rate of return, the bond holder experiences a gain on the difference between the purchase price of the bond and the face value received at maturity. Finally, when the bond's required rate of return is 10 percent, its present value is equal to its face value and the bond should sell at par. This occurs because the coupon rate on the bond is equal to the required rate of return on the bond. To achieve the required rate of return on the bond, the bond holder experiences neither a gain nor a loss on the difference between the purchase price of the bond and the face value received at maturity. We summarize the scenarios for premium, discount, $^7$  and par bonds in Table 3-3.

# TABLE 3-3 Description of a Premium, Discount, and Par Bond

Premium bond—when the coupon rate on a bond is greater than the required rate of return on the bond, the fair present value is greater than the face value of the bond.

When the coupon rate on a bond is greater than the yield to maturity on the bond, the current market price is greater than the face value of the bond.

Discount bond—when the coupon rate on a bond is less than the required rate of return on the bond, the fair present value is less than the face value of the bond.

When the coupon rate on a bond is less than the yield to maturity on the bond, the current market price is less than the face value of the bond.

Par bond—when the coupon rate on a bond is equal to the required rate of return on the bond, the fair present value is equal to the face value of the bond.

When the coupon rate on a bond is equal to the yield to maturity on the bond, the current market price is equal to the face value of the bond.

The designation as a premium, discount, or par bond does not help in the decision to buy or sell a bond. These terms are simply descriptive designations regarding the relationship between the present value of the bond and its face value. Rather, investors make the decision to buy or sell by comparing the bond's present value to its current market price. As we noted above, the present value of the bond will equal the bond's price only in an efficient market where prices instantaneously adjust to new information about the security's value.

Bond issuers usually set a bond's coupon rate close to the required rate of return at the time of issuance, which forces new bonds to sell close to par. As time goes by, a bond's required rate of return may change due to the arrival of new information (e.g., changes in future expected inflation or the issuer's credit risk). As a result, a bond may become a premium or a discount bond, and its price may oscillate above and below par throughout the bond's life.

# Bond Valuation Formula Used to Calculate Yield to Maturity

The present value formulas can also be used to find the expected rate of return,  $E(r_{b})$ , or, assuming all promised coupon and principal payments are made as promised, what is often called the yield to maturity (ytm) on a bond (i.e., the return the bond holder will earn on the bond if he or she buys the bond at its current market price, receives all coupon and principal payments as promised, and holds the bond until maturity). The yield to maturity calculation implicitly assumes that all coupon payments periodically received by the bond holder can be reinvested at the same rate—that is, reinvested at the calculated yield to maturity.[8]

Rewriting the bond valuation formula, where  $V_{b}$  is the current market price that has to be paid to buy the bond, we can solve for the yield to maturity (ytm) on a bond as follows—where we write  $ytm$  instead of  $E(r_{b})$ :

$$

\begin{array}{l} V_{b} = \frac{I N T / 2}{(1 + y t m / 2)^{1}} + \frac{I N T / 2}{(1 + y t m / 2)^{2}} + \dots + \frac{I N T / 2}{(1 + y t m / 2)^{2 T}} + \frac{M}{(1 + y t m / 2)^{2 T}} \\ = \frac{I N T}{2} \left[ \frac{1 - \frac{1}{(1 + y t m / 2)^{2 T}}}{y t m / 2} \right] + M [ 1 + (y t m / 2) ]^{2 T} \\ \end{array}

$$

# yield to maturity

The return or yield the bond holder will earn on the bond if he or she buys it at its current market price, receives all coupon and principal payments as promised, and holds the bond until maturity.

# CALCULATOR HINTS

$N = 15(2) = 30$

$PV = -931.176$

${PMT} = {110}/2 = {55}$

$FV = 1000$

CPT/6.0@6 MONTHS

$6.0 \times 2 = 12.0$  @ YEAR

# DO YOU UNDERSTAND?

3. The difference between a zero-coupon bond and a coupon bond?
4. What the differences are among a discount bond, a premium bond, and a par bond?
5. How the difference between the yield to maturity on a bond and the coupon rate on the bond will cause the bond to sell at a premium or a discount?

LG 3-3

# EXAMPLE 3-5 Calculation of the Yield to Maturity on a Coupon Bond

You are considering the purchase of a  \$1,000 face value bond that pays 11 percent coupon interest per year, paid semiannually (i.e.,$ 55 [= $1,000(0.11)/2] per semiannual period). The bond matures in 15 years and has a face value of \$1,000. If the current market price of the bond is \$931.176, the yield to maturity, or  $E(r_b)$  is calculated as follows:

$$

9 3 1. 1 7 6 = \frac{1 , 0 0 0 (0 . 1 1)}{2} \left[ \frac{1 - \frac{1}{(1 + y t m / 2)^{2 (1 5)}}}{y t m / 2} \right] + 1, 0 0 0 / (1 + y t m / 2)^{2 (1 5)}

$$

Solving for  $ytm$ , the yield to maturity (or expected rate of return) on the bond is 12 percent. Equivalently, you would be willing to buy the bond only if the required rate of return ( $r$ ) was no more than 12 percent (i.e., the yield to maturity is greater than or equal to the required return on the bond).

# EQUITY VALUATION

The valuation process for an equity instrument (such as preferred or common stock) involves finding the present value of an infinite series of cash flows on the equity discounted at an appropriate interest rate. Cash flows from holding equity come from dividends paid out by the firm over the life of the stock, which in expectation can be viewed as infinite since a firm (and thus the dividends it pays) has no defined maturity or life. Even if an equity holder decides not to hold the stock forever, he or she can sell it to someone else who in a fair and efficient market is willing to pay the present value of the remaining (expected) dividends to the seller at the time of sale. Dividends on equity are that portion of a firm's earnings paid out to the stockholders. Those earnings retained are normally reinvested to produce future income and future dividends for the firm and its stockholders. Thus, conceptually, the fair price paid for investing in stocks is the present value of its current and future dividends.[10] Growth in dividends occurs primarily because of growth in the firm's earnings, which is, in turn, a function of the profitability of the firm's investments and the percentage of these profits paid out as dividends rather than being reinvested in the firm. Thus, earnings growth, dividend growth, and stock value (price) will generally be highly correlated.

We begin by defining the variables we use to value an equity:

$$

D i v_{t} = \text{Di vi de nd pa it o}

$$

$$

P_{t} = \text{Pr ic eo fa fi rm 's co mm on gs to ka tt he en do ft he ye ar} t

$$

$$

P_{0} = \text{Cu rr en tp ri ce of af ir ms}

$$

$$ r_{s} = \text{In te rs tr at e}
$$

As described above, time value of money equations can be used to evaluate a stock from several different perspectives. For example, the realized rate of return  $(\bar{r}_s)$  is the appropriate interest rate (discount rate) to apply to cash flows when evaluating the historical performance of an equity.

9. The yield to maturity is the nominal return on the bond. Its effective annual return is calculated as:

$$
E A R = (1 + y t m / 2)^{2} - 1 = (1 + 0.12 / 2)^{2} - 1 = 12.36 \%
$$

10. Firms that pay no dividends can be valued using a firm's free cash flows (FCF) (cash flows available for distribution to investors after the company has made all the investments in fixed assets and working capital necessary to sustain ongoing operations) discounted at the weighted average cost of capital. Such that the value of the firm is equal to:

$$
V = \sum_{t = 1}^{\infty} \frac{\mathrm{FC F}_{\mathrm{t}}}{(1 + \mathrm{WA CC})^{\mathrm{t}}} = \frac{F C F_{t + 1}}{W A C C - g}
$$

The fair price of each share of stock would then be equal to  $V$  / number of shares of common stock outstanding.

# CALCULATOR HINTS

$N = 2$

$$
\begin{array}{l} P V = - 2 5 \\ P M T = 1 \\ F V = 3 5 \\ CPT / = 22.02 \% \\ \end{array}
$$

# EXAMPLE 3-6 Calculation of Realized Rate of Return on a Stock Investment

Suppose you owned stock in General Monsanto for the last two years. You originally bought the stock two years ago for 25 \left( P_{-2} \right)  and just sold it for 35 \left( P_0 \right). The stock paid an annual dividend of 1(Div) on the last day of each of the past two years. Your realized rate of return on the General Monsanto stock investment can be calculated using the following time value of money equation:

$$
P_{- 2} = D i v \left[ \frac{1 - \frac{1}{\left(1 + \bar {r}_{s}\right)^{2}}}{\bar {r}_{s}} \right] + P_{0} / (1 + \bar {r}_{s})^{2}
$$ or


$$

2 5 = 1 \left[ \frac{1 - \frac{1}{\left(1 + \bar {r}_{s}\right)^{2}}}{\bar {r}_{s}} \right] + 3 5 / \left(1 + \bar {r}_{s}\right)^{2}

$$

Solving for  $\overline{r}_s$  your annual realized rate of return on this investment was 22.02 percent.

$$

2 5 = 1 (1. 4 9 1 2) + 3 5 (0. 6 7 1 6)

$$

The expected rate of return,  $E(r_{s})$ , is the appropriate interest rate when analyzing the expected future return on stocks, assuming the investor buys the stock at its current market price, receives all promised payments, and sells the stock at the end of his or her investment horizon.

# CALCULATOR HINTS

$N = 3$

$$

\begin{array}{l} P V = - 3 2 \\ P M T = 1. 5 0 \\ F V = 4 5 \\ \mathrm{CPT} / = 16.25 \% \\ \end{array}

$$

# EXAMPLE 3-7 Calculation of Expected Rate of Return on a Stock Investment

You are considering the purchase of stock in Hewlett-Packard (HP). You expect to own the stock for the next three years. The current market price of the stock is 32 \left(P_{0}\right) and you expect to sell it for 45 in three years' time (P_{3}). You also expect the stock to pay an annual dividend (Div) of 1.50 on the last day of each of the next three years. Your expected return on the HP stock investment can be calculated using the following time value of money equation:

$$

P_{0} = D i v \left[ \frac{1 - \frac{1}{\left[ 1 + E \left(r_{s}\right) \right]^{3}}}{E \left(r_{s}\right)} \right] + P_{3} / \left[ 1 + E \left(r_{s}\right) \right]^{3}

$$ or


$$

3 2 = 1. 5 0 \left[ \frac{1 - \frac{1}{\left[ 1 + E \left(r_{s}\right) \right]^{3}}}{E \left(r_{s}\right)} \right] + 4 5 / \left[ 1 + E \left(r_{s}\right) \right]^{3}

$$

Solving for  $E(r_{s})$ , your annual expected rate of return on this investment is 16.25 percent.

Finally, the required rate of return  $(r_s)$  is the appropriate interest rate when analyzing the fair value of a stock investment over its whole lifetime. The fair value of a stock reflects the present value of all relevant (but uncertain) cash flows to be received by an investor discounted at the required rate of return  $(r_s)$  —the interest rate or return that should be earned on the investment given its risk.


Present value methodology applies time value of money to evaluate a stock's cash flows over its life as follows:

$$

P_{0} = \frac{D i v_{1}}{(1 + r_{s})^{1}} + \frac{D i v_{2}}{(1 + r_{s})^{2}} + \dots + \frac{D i v_{\infty}}{(1 + r_{s})^{\infty}}

$$

The price or value of a stock is equal to the present value of its future dividends  $(Div_{t})$ , whose values are uncertain. This requires an infinite number of future dividend values to be estimated, which makes the equation above difficult to use for stock valuation and  $r_s$  calculation in practice. Accordingly, assumptions are normally made regarding the expected pattern of the uncertain flow of dividends over the life of the stock. Three assumptions that are commonly used are (1) zero growth in dividends over the (infinite) life of the stock, (2) a constant growth rate in dividends over the (infinite) life of the stock, and (3) nonconstant growth in dividends over the (infinite) life of the stock.

# Zero Growth in Dividends

Zero growth in dividends means that dividends on a stock are expected to remain at a constant level forever. Thus,  $Div_0 = Div_1 = Div_2 = \ldots = Div_\infty = Div$ . Accordingly, the equity valuation formula can be written as follows:

$$

P_{0} = \frac{D i v_{1}}{(1 + r_{s})^{1}} + \frac{D i v_{2}}{(1 + r_{s})^{2}} + \ldots + \frac{D i v_{\infty}}{(1 + r_{s})^{\infty}} = D i v \sum_{t = 1}^{\infty} \left(\frac{1}{1 + r_{s}}\right)^{t}

$$ where


$Div_{0} =$  Current (time 0) value of dividends

Div  $t =$  Value of dividends at time  $t = 1,2,\dots ,\infty$ or11


$$

P_{0} = D i v / r_{s}

$$

This formula can be generalized as follows:

$$

P_{t} = D i v / r_{s}

$$

Companies that issue preferred stock usually pay investors dividends that exhibit zero growth through time. The value of a stock with zero growth in dividends is equal to the (current) dividend divided by the return on the stock. If the required rate of return  $(r_s)$  is applied to the formula, the price we solve for is the fair market price. If the expected return  $E(r_s)$  is applied to the formula, the price we solve for is the current market price. Furthermore, the formula can be rearranged to determine a return on the stock if it were purchased at a price,  $P_0$ .

$$ r_{s} = D i v / P_{0}
$$

If the fair present value is applied to this formula, the return we solve for is the required rate of return  $(r_s)$ . If the current market price is applied to the formula, the return we solve for is the expected return  $E(r_s)$ . Recall from above, in efficient markets the required rate of return equals the expected rate of return. Thus, the current market price on a security equals its fair present value.

11. Remember that, in the limit:

$$
\sum_{t = 1}^{\infty} \left(\frac{1}{1 + x}\right)^{t} = \left(\frac{1}{1 + x}\right)^{1} + \left(\frac{1}{1 + x}\right)^{2} + \dots + \left(\frac{1}{1 + x}\right)^{\infty} = \frac{1}{x}
$$

Thus:

$$
\sum_{t = 1}^{\infty} \left(\frac{1}{1 + r_{s}}\right)^{t} = \frac{1}{r_{s}}
$$

# EXAMPLE 3-8 Calculation of Stock Price with Zero Growth in Dividends

A preferred stock you are evaluating is expected to pay a constant dividend of 5 per year each year into the future. The required rate of return, r_s, on the stock is 12 percent. The fair value (or price) of this stock is calculated as follows:

$$
P_{0} = 5 / 0. 1 2 = \$ 4 1. 6 7
$$

# Constant Growth in Dividends

Constant growth in dividends means that dividends on a stock are expected to grow at a constant rate,  $g$ , each year into the future. Thus,  $Div_{1} = Div_{0}(1 + g)^{1}$ ,  $Div_{2} = Div_{0}(1 + g)^{2}$ ,  $\ldots$ ,  $Div_{\infty} = Div_{0}(1 + g)^{\infty}$ . Accordingly, the equity valuation formula can now be written as follows:

$$
P_{0} = \frac{D i v_{0} (1 + g)^{1}}{(1 + r_{s})^{1}} + \frac{D i v_{0} (1 + g)^{2}}{(1 + r_{s})^{2}} + \dots + \frac{D i v_{0} (1 + g)^{\infty}}{(1 + r_{s})^{\infty}} = D i v_{0} \sum_{t = 1}^{\infty} \left[ \frac{(1 + g)}{(1 + r_{s})} \right]^{t}
$$ or12


$$

P_{0} = \frac{D i v_{0} (1 + g)^{1}}{r_{s} - g} = \frac{D i v_{1}}{r_{s} - g}

$$

This formula can be generalized as follows:

$$

P_{t} = \frac{\operatorname{Di v}_{0} (1 + g)^{t + 1}}{r_{s} - g} = \frac{\operatorname{Di v}_{t + 1}}{r_{s} - g}

$$

If the required rate of return  $(r_s)$  is applied to the formula, the price we solve for is the fair present value. If the expected return,  $E(r_s)$ , is applied to the formula, the price we solve for is the current market price. The equity valuation formula can also be rearranged to determine a rate of return on the stock if it were purchased at a price  $P_0$ :

$$ r_{s} = \frac{D i v_{0} (1 + g)}{P_{0}} + g = \frac{D i v_{1}}{P_{0}} + g
$$

If the fair present value is applied to the formula, the return we solve for is the required rate of return  $(r_s)$ . If the current market price is applied to the formula, the return we solve for is the expected return  $E(r_s)$ .

# EXAMPLE 3-9 Calculation of Stock Price with Constant Growth in Dividends

You are evaluating JPMorgan Chase (JPM) stock. The stock paid a dividend at the end of last year of 3.50. Dividends have grown at a constant rate of 2 percent per year over the last 20 years, and this constant growth rate is expected to continue into the future.

12. Remember that in the limit:

$$
\sum_{t = 1}^{\infty} \left(\frac{1 + g}{1 + r_{s}}\right)^{t} = \sum_{t = 1}^{\infty} \left(\frac{1}{1 + \frac{r_{s} - g}{1 + g}}\right)^{t} = \frac{1 + g}{r_{s} - g}
$$

The required rate of return  $(r_s)$  on the stock is 10 percent. The fair present value (or price) of JPM stock is calculated as follows:

$$
P_{0} = \frac{3 . 5 0 (1 + 0 . 0 2)}{0 . 1 0 - 0 . 0 2} = \$ 4 4. 6 2 5
$$

As an investor, you would be willing to pay no more than 44.625 for this stock.

# EXAMPLE 3-10 Calculation of the Expected Rate of Return,  $E(r_s)$ , on a Stock with Constant Growth in Dividends

You are evaluating Bank of America (BOA) stock. The stock paid a dividend at the end of last year of  \$4.80. Dividends have grown at a constant rate of 1.75 percent per year over the last 15 years, and this constant growth rate is expected to continue into the future. The stock is currently selling at a price of\$ 52 per share. The expected rate of return on BOA stock is calculated as follows:

$$
E \left(r_{s}\right) = \frac{4 . 8 0 (1 + 0 . 0 1 7 5)}{5 2} + 0. 0 1 7 5 = 1 1. 1 4
$$

# Supernormal (or Nonconstant) Growth in Dividends

Firms often experience periods of supernormal or nonconstant dividend growth, after which dividend growth settles at some constant rate. The stock value for a firm experiencing supernormal growth in dividends is, like firms with zero or constant dividend growth, equal to the present value of the firm's expected future dividends. However, in this case, dividends during the period of supernormal (nonconstant) growth must be evaluated individually. The constant growth in dividends model can then be adapted to find the present value of dividends following the supernormal growth period.

To find the present value of a stock experiencing supernormal or nonconstant dividend growth, we calculate the present value of dividends during the two different growth periods. A three-step process is used as follows:

Step 1: Find the present value of the dividends during the period of supernormal (nonconstant) growth.

Step 2: Find the price of the stock at the end of the supernormal (nonconstant) growth period (when constant growth in dividends begins) using the constant growth in dividends model. Then discount this price to a present value.

Step 3: Add the two components of the stock price together.

# EXAMPLE 3-11 Calculation of Stock Price with Supernormal or Nonconstant Growth in Dividends

You are evaluating Home Depot (HD) stock. The stock is expected to experience supernormal growth in dividends of 10 percent,  $g_{s}$ , over the next five years. Following this period, dividends are expected to grow at a constant rate of 4 percent,  $g$ . The stock paid a dividend of 4 last year, and the required rate of return on the stock is 15 percent. The fair present value of HD stock is calculated as follows:

Step 1: Find the present value of the dividends during the period of supernormal growth.

# DO YOU UNDERSTAND?

6. How stock valuation differs from bond valuation?
7. The difference between constant growth in dividends and supernormal growth in dividends?

<table><tr><td>Year</td><td>Dividends [Div0(1 + gs)t]</td><td>1/(1 + 0.15)t</td><td>Present Value</td></tr><tr><td>1</td><td>4(1 + 0.1)1 = 4.400</td><td>0.8696</td><td>3.826</td></tr><tr><td>2</td><td>4(1 + 0.1)2 = 4.840</td><td>0.7561</td><td>3.659</td></tr><tr><td>3</td><td>4(1 + 0.1)3 = 5.324</td><td>0.6575</td><td>3.500</td></tr><tr><td>4</td><td>4(1 + 0.1)4 = 5.856</td><td>0.5718</td><td>3.349</td></tr><tr><td>5</td><td>4(1 + 0.1)5 = 6.442</td><td>0.4972</td><td>3.203</td></tr><tr><td colspan="3">Present value of dividends during supernormal growth period</td><td>17.537</td></tr></table>

Step 2: Find the present value of dividends after the period of supernormal growth.

a. Find stock value at beginning of constant growth period:

$$
P_{5} = \frac{\text{Di v}_{6}}{r_{s} - g} = \frac{\text{Di v}_{0} \left(1 + g_{s}\right)^{5} (1 + g)^{1}}{r_{s} - g} = \frac{4 (1 + 0 . 1)^{5} (1 + 0 . 0 4)^{1}}{0 . 1 5 - 0 . 0 4} = \$ 6 0. 9 0 6
$$ b. Find present value of constant growth dividends:


$$

P_{0} = P_{5} / (1 + 0. 1 5)^{5} = 6 0. 9 0 6 (0. 4 9 7 2) = \$ 3 0. 2 8 3

$$

Step 3: Find present value of the HD stock  $=$  Value during supernormal growth period + Value during normal growth period:

$$

\$ 17.537 + \$ 30.283 = \$ 47.820

$$

# IMPACT OF INTEREST RATE CHANGES ON SECURITY VALUES

# LG 3-4

As already discussed in this chapter and in Chapter 2, the variability of financial security prices depends on interest rates and the characteristics of the security. Specifically, factors that affect financial security prices include interest rate changes, the time remaining to maturity, and the cash flows received prior to and at maturity. We evaluate next the impact of each of these factors as they affect bond prices. In the discussion, the interest rate used in the pricing formula is the required rate of return on a bond, and thus the price we refer to is the fair value of the bond. However, all relations apply equally if the interest rate used in the pricing formula is the expected rate of return on a bond and thus the price is the current market price of the bond. The impact on equity prices is similar. Table 3-4 summarizes the major relationships we will be discussing.

Refer back to Example 3-4. Notice in this example that the present values of the cash flows on bonds decreased as interest rates increased. Specifically, when the required rate of return increased from 8 percent to 10 percent, the fair present value of the bond fell from  $1,152.47 to$ 1,000, or by 13.23 percent [i.e., (1,000 - 1,152.47)/1,152.47 = 0.1323 = 13.23\%]. Similarly, when the required rate of return increased from 10 percent to 12 percent,

# TABLE 3-4 Summary of Factors That Affect Security Prices and Price Volatility when Interest Rates Change

Interest rate—there is a negative relation between interest rate changes and present value (or price) changes on financial securities.

As interest rates increase, security prices decrease at a decreasing rate.

Time remaining to maturity—the shorter the time to maturity for a security, the closer the price is to the face value of the security.

The longer the time to maturity for a security, the larger the price change of the security for a given interest rate change.

The maturity effect described above increases at a decreasing rate.

Coupon rate—the higher a security's coupon rate, the smaller the price change on the security for a given change in interest rates.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/8d04a5ac-85cd-4263-9695-9d761733496f/44c3e81141e646e3a4c1e243ce4ad2bd6d1100af05bf3463ff85f00815913f34.jpg) the fair present value of the bond fell from  $1,000 to$ 874.50, or by 12.55 percent [(874.50 - 1,000)/1,000]. This is the inverse relationship between present values and interest rates we discussed in Chapter 2. While the examples refer to the relation between fair values and required rates of return, the inverse relation also exists between current market prices and expected rates of return—as yields on bonds increase, the current market prices of bonds decrease. We illustrate this inverse relation between interest rates on bonds and the present value of bonds in Figure 3-1.
Figure 3-1 Relation between Interest Rates and Bond Values


Notice too from the earlier example that the inverse relationship between bond prices and the required rate of return is not linear. Rather, the percentage change in the present value of a bond to a given change in the required rate of return is smaller when interest rates are higher. When the required rate of return on the bond increased from 8 percent to 10 percent (a 2 percent increase), the fair present value on the bond decreased by 13.23 percent. However, another 2 percent increase in the required rate of return (from 10 percent to 12 percent) resulted in a fair present value decrease of only 12.55 percent. The same nonlinear relationship exists for current market prices and yields to maturity. Thus, as interest rates increase, present values of bonds (and bond prices) decrease at a decreasing rate. This is illustrated in Figure 3-1.

The relationship between interest rates and security values is important for all types of investors. Financial institutions (FIs) such as commercial banks, thrifts, and insurance companies are affected because the vast majority of the assets and liabilities held by these firms are financial securities (e.g., loans, deposits, investment securities). When required rates of return rise (fall) on these securities, the fair present values of the FI's asset and liability portfolios decrease (increase) by possibly different amounts, which in turn affects the fair present value of the FI's equity (the difference between the fair present value of an FI's assets and liabilities). We examine the measurement and management of an FI's interest rate risk in more detail in Chapter 23.

In the next two sections we look at how the maturity of, and coupon rate on, a security affects the size of the value changes for a given change in interest rates.

# IMPACT OF MATURITY ON SECURITY VALUES

LG 3-5

A bond's price sensitivity is measured by the percentage change in its present value for a given change in interest rates. If interest rate changes are measured using required rates of return, fair present value is the price sensitivity being measured. If interest rate changes are measured using expected rates of return, current market price is the price sensitivity being measured. The larger the percentage change in the bond's value for a given interest

# DO YOU UNDERSTAND?

8. What happens to the fair present value of a bond when the required rate of return on the bond increases?

9. What happens to the fair present value of a bond when the required rate of return on the bond decreases?

# price sensitivity

The percentage change in a bond's present value for a given change in interest rates.

rate change, the larger the bond's price sensitivity. An important factor that affects the degree to which the price of a bond changes (or the price sensitivity of a bond changes) as interest rates change is the time remaining to maturity on the bond. Specifically, as is explained below, the shorter the time remaining to maturity, the closer a bond's price is to its face value. Also, the further a bond is from maturity, the more sensitive the price of the bond as interest rates change. Finally, the relationship between bond price sensitivity and maturity is not linear. As the time remaining to maturity on a bond increases, price sensitivity increases but at a decreasing rate. Table 3-5 presents the bond information we will be using to illustrate these relationships. In Table 3-5, we first list the fair present values of the bonds analyzed in Example 3-4. We then repeat the present value calculations using three bonds with identical characteristics except for the time to maturity: 12 years versus 14 years versus 16 years.

# Maturity and Security Prices

Table 3-5 lists the present values of 10 percent (compounded semiannually) coupon bonds with a 1,000 face value and 12 years, 14 years, and 16 years, respectively, remaining to maturity. We calculate the fair present value of these bonds using an 8 percent, 10 percent, and 12 percent required rate of return. Notice that for each of these bonds, the closer the bond is to maturity, the closer the fair present value of the bond is to the 1,000 face value. This is true regardless of whether the bond is a premium, discount, or par bond. For example, at an 8 percent required rate of return, the 12-year, 14-year, and 16-year bonds have present values of 1,152.47, 1,166.63, and 1,178.74, respectively. The intuition behind this is that nobody would pay much more than the face value of the bond and any remaining (in this case semiannual) coupon payments just prior to maturity since these are the only cash flows left to be paid on the bond. Thus, the time value effect is reduced as the maturity of the bond approaches. Many people call this effect the pull to par—bond prices and fair values approach their par values (e.g., 1,000) as time to maturity declines towards zero.

# Maturity and Security Price Sensitivity to Changes in Interest Rates

The Percentage Price Change columns in Table 3-5 provide data to examine the effect time to maturity has on bond price sensitivity to interest rate changes. From these data we see that the longer the time remaining to maturity on a bond, the more sensitive are bond prices to a given change in interest rates. (Note again that all bonds in Table 3-5 have a 10 percent coupon rate and a  \$1,000 face value.) For example, the fair present value of the 12-year bond falls 13.23 percent [i.e.,$ 1,000 - $1,152.47)/\$1,152.47 = -0.1323 = -13.23\%] as the required rate of return increases from 8 percent to 10 percent. The same 2 percent increase (from 8 percent to 10 percent) in the required rate of return produces

TABLE 3-5 The Impact of Time to Maturity on the Relation between a Bond's Fair Present Value and Its Required Rate of Return

<table><tr><td colspan="4">12 Years to Maturity</td><td colspan="3">14 Years to Maturity</td><td colspan="3">16 Years to Maturity</td></tr><tr><td>Required Rate of Return</td><td>Fair Price*</td><td>Price Change</td><td>Percentage Price Change</td><td>Fair Price*</td><td>Price Change</td><td>Percentage Price Change</td><td>Fair Price*</td><td>Price Change</td><td>Percentage Price Change</td></tr><tr><td>8\%</td><td>$1,152.47</td><td></td><td></td><td>$1,166.63</td><td></td><td></td><td>$1,178.74</td><td></td><td></td></tr><tr><td></td><td></td><td>-$152.47</td><td>-13.23\%</td><td></td><td>-$166.63</td><td>-14.28\%</td><td></td><td>-$178.74</td><td>-15.16\%</td></tr><tr><td>10\%</td><td>1,000.00</td><td></td><td></td><td>1,000.00</td><td></td><td></td><td>1,000.00</td><td></td><td></td></tr><tr><td></td><td></td><td>-125.50</td><td>-12.55</td><td></td><td>-134.06</td><td>-13.41</td><td></td><td>-140.84</td><td>-14.08</td></tr><tr><td>12\%</td><td>874.50</td><td></td><td></td><td>865.94</td><td></td><td></td><td>859.16</td><td></td><td></td></tr></table>

*The bond pays interest semiannually, and has a face value of 1,000.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/8d04a5ac-85cd-4263-9695-9d761733496f/a8bf5b6fa0560018302a229cb77a2d6ff7baa52f08bcab3a1350a54966ff5cb9.jpg) a larger 14.28 percent drop in the fair present value of the 14-year bond, and the 16-year bond's fair present value drops 15.16 percent. This same trend is demonstrated when the required rate of return increases from 10 percent to 12 percent—the longer the bond's maturity, the greater the percentage decrease in the bond's fair present value.
Figure 3-2 The Impact of a Bond's Maturity on Its Price Sensitivity


The same relationship occurs when analyzing expected rates of return (or yields to maturity) and the current market price of the bond—the longer the time to maturity on a bond, the larger the change in the current market price of a bond for a given change in yield to maturity.

# DO YOU UNDERSTAND?

10. What happens to a bond's price as it approaches maturity?
11. What happens to a bond's price sensitivity for a given change in interest rates as its time to maturity increases? decreases?

Incremental Changes in Maturity and Security Price Sensitivity to Changes in Interest Rates. A final relationship we can examine from Table 3-5 is that between incremental changes in time remaining to maturity and incremental changes in security price sensitivity to a given change in interest rates. Specifically, notice that the maturity effect described above is not linear. For example, a 2 percent increase in the required rate of return (from 8 percent to 10 percent) on the 12-year bond produces a 13.23 percent [i.e., (\ 1,000 - \ 1,152.47)/\ 1,152.47 = -0.1323 = -13.23\%] decrease in the bond's fair present value. The same 2 percent increase (from 8 percent to 10 percent) in the required rate of return on the 14-year bond produces a 14.28 percent decrease in the fair present value. The difference, as we move from a 12-year to a 14-year maturity, is 1.05 percent (14.28\% -13.23\%). Increasing the time to maturity two more years (from 14 years to 16 years) produces an increase in price sensitivity of 0.88 percent [-14.28\% -(-15.16\%)]. While price sensitivity for a given increase in interest rates increases with maturity, the increase is nonlinear (decreasing) in maturity. We illustrate this relationship in Figure 3-2, as the required rate of return increases from 8 percent to 10 percent.

# IMPACT OF COUPON RATES ON SECURITY VALUES

LG 3-5

Another factor that affects the degree to which the price sensitivity of a bond changes as interest rates change is the bond's coupon rate. Specifically, the higher the bond's coupon rate, the higher its present value at any given interest rate. Also, the higher the bond's coupon rate, the smaller the price changes on the bond for a given change in interest rates.

TABLE 3-6 The Impact of Coupon Rate on the Relation between a Bond's Fair Present Value and Its Required Rate of Return

<table><tr><td colspan="4">10 Percent Coupon Bond</td><td colspan="3">12 Percent Coupon Bond</td></tr><tr><td>Required Rate of Return</td><td>Fair Price*</td><td>Price Change</td><td>Percentage Price Change</td><td>Fair Price*</td><td>Price Change</td><td>Percentage Price Change</td></tr><tr><td>8\%</td><td>$1,152.47</td><td></td><td></td><td>$1,304.94</td><td></td><td></td></tr><tr><td></td><td></td><td>-$152.47</td><td>-13.23\%</td><td></td><td>-$166.95</td><td>-12.79\%</td></tr><tr><td>10\%</td><td>1,000.00</td><td></td><td></td><td>1,137.99</td><td></td><td></td></tr><tr><td></td><td></td><td>- 125.50</td><td>-12.55</td><td></td><td>- 137.99</td><td>-12.13</td></tr><tr><td>12\%</td><td>874.50</td><td></td><td></td><td>1,000.00</td><td></td><td></td></tr></table>

*The bond pays interest semiannually, has 12 years remaining to maturity, and has a face value of 1,000.

These relationships hold when evaluating either required rates of return and the resulting fair present value of the bond or expected rates of return and the current market price of the bond. To understand these relationships better, consider again the bonds in Example 3-4. Table 3-6 summarizes the bond values and value changes as interest rates change.

# Coupon Rate and Security Price

In Table 3-6, we first list the fair present values of the bonds analyzed in Example 3-4. We then repeat the present value calculations using a bond with identical characteristics except for the coupon rate: 10 percent versus 12 percent. Notice that the fair present value of the 10 percent coupon bond is lower than that of the 12 percent coupon bond at every required rate of return. For example, when the required rate of return is 8 percent, the fair value of the 10 percent coupon bond is  \$1,152.47 and that of the 12 percent coupon bond is\$ 1,304.94.

LG 3-5

# DO YOU UNDERSTAND?

12. Whether a high or low coupon rate bond experiences a larger price change if interest rates increase?
13. Whether a high or low coupon rate bond experiences a larger price change if interest rates decrease?

# Coupon Rate and Security Price Sensitivity to Changes in Interest Rates

Table 3-6 also demonstrates the effect a bond's coupon rate has on its price sensitivity to a given change in the required rate of return. The intuition behind this relation is as follows. The higher (lower) the coupon rate on the bond, the larger (smaller) is the portion of the required rate of return paid to the bond holder in the form of coupon payments. Any security that returns a greater (smaller) proportion of an investment sooner is more (less) valuable and less (more) price volatile.

To see this, notice in Table 3-6 that the higher the bond's coupon rate, the smaller the bond's price sensitivity for any given change in interest rates. For example, for the 10 percent coupon bond, a 2 percent increase in the required rate of return (from 8 percent to 10 percent) results in a 13.23 percent decrease in the bond's fair present value. A further 2 percent increase in the required rate of return (from 10 percent to 12 percent) results in a smaller 12.55 percent decrease in the fair present value.

For the 12 percent coupon bond, notice that the 2 percent increase in the required rate of return (from 8 percent to 10 percent) results in a 12.79 percent decrease in the bond's fair present value, while an increase in the required rate of return from 10 percent to 12 percent results in a lower 12.13 percent decrease in the bond's fair present value. Thus, price sensitivity on a bond is negatively related to the level of the coupon rate on a bond. The higher the coupon rate on the bond, the smaller the decrease in the bond's fair present value for a given increase in the required rate of return on the bond.

We illustrate this relationship in Figure 3-3. The high coupon-paying bond is less susceptible to interest rate changes than the low coupon-paying bond. This is represented in Figure 3-3 by the slope of the line representing the relation between interest rates and bond prices. The sensitivity of bond prices is smaller (the slope of the line is flatter) for high-coupon bonds than for low-coupon bonds.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/8d04a5ac-85cd-4263-9695-9d761733496f/486be0633a28ccfbcebdc7a5201acfe7d7151ae34afd03ccae1082e75f1e8527.jpg)
Figure 3-3 The Impact of a Bond's Coupon Rate on Its Price Sensitivity

# DURATION

LG 3-6

# duration

The weighted-average time to maturity on an investment using the relative present values of the cash flows as weights.

# elasticity

The percentage change in the price of a bond for a given change in interest rates.

The estimation of the effect of maturity and coupon rates on the sensitivity of bond prices to changes in interest rates, as discussed in the previous section, is complex and using these relationships as the basis for decision making is difficult in dealing with multiple bonds. Duration, on the other hand, provides a simple measure that allows for a straightforward calculation of a bond's price sensitivity to changes in interest rates. In this section, we show that the price sensitivity of a bond, or the percentage change in the bond's value, for a given change in interest rates (either required rate of return or yield to maturity) can be more directly measured by a concept called duration (or Macaulay's duration). We also show that duration produces an accurate measure of the price sensitivity of a bond to interest rate changes for relatively small changes in interest rates. The duration measure is a less accurate measure of price sensitivity the larger the change in interest rates. Duration is the weighted-average time to maturity on a financial security using the relative present values of the cash flows as weights. On a time value of money basis, duration measures the weighted average of when cash flows are received on a security. In addition to being a measure of the average life of an asset or liability, duration also has economic meaning as the sensitivity, or elasticity, of that asset or liability's value to small interest rate changes (either required rate of return or yield to maturity). Duration describes the percentage price, or present value, change of a financial security for a given (small) change in interest rates. That is, rather than calculating present value changes resulting from interest rate changes, as we did in the previous sections, the duration of a financial security can be used to directly calculate the price change. Thus, for investors and financial managers duration is a tool that can be used to estimate the change in the value of a portfolio of securities or even firm value for a given change in interest rates.

In this section, we present the basic arithmetic needed to calculate the duration of an asset or liability. Then we analyze the economic meaning of the number we calculate for duration and explain why duration, as a measure of price sensitivity to changes in interest rates, is most accurate only for small changes in interest rates. Appendix 3A to this chapter (available through Connect or your course instructor) looks at how duration can be used to immunize an asset or liability against interest rate risk.

# A Simple Illustration of Duration

Duration is a measure that incorporates the time of arrival of all cash flows on an asset or liability along with the asset or liability's maturity date. To see this, consider a bond with one year remaining to maturity, a 1,000 face value, an 8 percent coupon rate

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/8d04a5ac-85cd-4263-9695-9d761733496f/1314c8ef2528de39babf481b17e68c274ba92ceed744b80cae6235658a29a930.jpg)
Figure 3-4 Promised Cash Flows on the One-Year Bond

(paid semiannually), and an interest rate (either required rate of return or yield to maturity) of 10 percent. The promised cash flows from this bond are illustrated in Figure 3-4. The bond holder receives the promised cash flows  $(CF)$  from the bond issuer at the end of one-half year and at the end of one year.

$CF_{1/2}$  is the  \$40 promised payment of (semiannual) coupon interest (\$ 1,000 × 8\% × 1/2) received after six months.  $CF_1$  is the promised cash flow at the end of year 1; it is equal to the second  \$40 promised (semiannual) coupon payment plus the\$ 1,000 promised payment of face value. To compare the relative sizes of these two cash flow payments—since duration measures the weighted-average time to maturity of a bond—we should put them in the same dimensions, because \$1 of principal or interest received at the end of one year is worth less to an investor in terms of time value of money than is \$1 of principal or interest received at the end of six months. Assuming that the current rate of return (either required or expected) is 10 percent per year, we calculate the present values (PV) of the two cash flows (CF) as:

$$

\begin{array}{l} C F_{1 / 2} = \$ 40 \quad P V_{1 / 2} = \$ 40 / (1. 0 5) = \$ 3 8. 1 0 \\ C F_{1} = \$ 1, 0 4 0 \quad P V_{1} = \$ 1, 0 4 0 / (1. 0 5)^{2} = \$ 9 4 3. 3 1 \\ P V_{1 / 2} + P V_{1} = \$ 981.41 \\ \end{array}

$$

Note that since  $CF_{1/2}$ , the cash flow received at the end of one-half year, is received earlier, it is discounted at  $(1 + R/2)$  (where  $R$  is the current rate of return on the bond); this discount factor is smaller than the discount rate applied to the cash flow received at the end of the year  $(1 + R/2)^2$ . Figure 3-5 summarizes the PVs of the cash flows from the bond.

The bond holder receives some cash flows at one-half year and some at one year (see Figure 3-5). Intuitively, duration is the weighted-average maturity on the portfolio of zero-coupon bonds, one that has payments at one-half year and at the end of the year (year 1) in this example. Specifically, duration analysis weights the time at which cash flows are received by the relative importance in present value terms of the cash flows arriving at each point in time. In present value terms, the relative importance of the cash flows arriving at time  $t = \frac{1}{2}$  year and time  $t = 1$  year are as follows:

<table><tr><td>Time (t)</td><td>Weight (X)</td></tr><tr><td>1/2 year</td><td>X1/2 = PV1/2 / PV1/2 + PV1 = 38.10 / 981.41 = 0.0388 = 3.88\%</td></tr><tr><td>1 year</td><td>X1 = PV1 / PV1/2 + PV1 = 943.31 / 981.41 = 0.9612 / 1.0 = 96.12\%</td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/8d04a5ac-85cd-4263-9695-9d761733496f/332785d137f9eb7c82ba341673fd7b69c576aff27b4fe75bac78fe36ff9c6665.jpg)
Figure 3-5 Present Value of the Cash Flows from the Bond

In present value terms, the bond holder receives 3.88 percent of the cash flows on the bond with the first coupon payment at the end of six months  $(t_{1/2})$  and 96.12 percent with the second payment of coupon plus face value at the end of the year  $(t_1)$ . By definition, the sum of the (present value) cash flow weights must equal 1:

$$

X_{1 / 2} + X_{1} = 1

$$

$$
0. 0 3 8 8 + 0. 9 6 1 2 = 1
$$

We can now calculate the duration  $(D)$ , or the weighted-average time to maturity of the bond, using the present value of its cash flows as weights:

$$

\begin{array}{l} D_{L} = X_{1 / 2} \times \left(t_{1 / 2}\right) + X_{1} \times \left(t_{1}\right) \\ = 0. 0 3 8 8 \times \left(\frac{1}{2}\right) + 0. 9 6 1 2 \times (1) = 0. 9 8 0 6 \text{ye ar s} \\ \end{array}

$$

Thus, although the maturity of the bond is one year, its duration or average life in a cash flow sense is only 0.9806 years. Duration is less than maturity because in present value terms, 3.88 percent of the cash flows are received during the year.

# A General Formula for Duration

You can calculate the duration for any fixed-income security that pays interest annually using the following formula:

$$

D = \frac{\sum_{t = 1}^{N} \frac{C F_{t} \times t}{(1 + r)^{t}}}{\sum_{t = 1}^{N} \frac{C F_{t}}{(1 + r)^{t}}} = \frac{\sum_{t = 1}^{N} P V_{t} \times t}{\sum_{t = 1}^{N} P V_{t}}

$$ where


$D =$  Duration measured in years

$t = 1$  to  $T$ , the period in which a cash flow is received

$N =$  Number of period to maturity

$CF_{t} =$  Cash flow received on the security at end of period  $t$

$r =$  Current required rate of return  $(r)$  or yield to maturity (ytm) on the investment

$PV_{t} =$  Present value of the cash flow received at the end of the period  $t$

For bonds that pay interest semiannually, the duration equation becomes:13

$$

D = \frac{\sum_{t = 1 / 2}^{N} \frac{C F_{t} \times t}{(1 + r / 2)^{2 t}}}{\sum_{t = 1 / 2}^{N} \frac{C F_{t}}{(1 + r / 2)^{2 t}}}

$$ where  $t = \frac{1}{2}, 1, \frac{1}{2}, \dots, N$ .

Notice that the denominator of the duration equation is the present value of the cash flows on the security. The numerator is the present value of each cash flow received on the security multiplied or weighted by the length of time required to receive the cash flow. To help you fully understand this formula, we look at some examples next.

13. In general, the duration equation is written as:

$$
D = \frac{\sum_{t = 1 / m}^{N} \frac{C F_{t} \times t}{(1 + r / m)^{m t}}}{\sum_{t = 1 / m}^{N} \frac{C F_{t}}{(1 + r / m)^{m t}}}
$$ where  $m =$  number of times per year interest is paid.


# EXAMPLE 3-12 The Duration of a Four-Year Bond Paying Annual Interest

Suppose that you have a bond that offers a coupon rate of 10 percent paid annually. The face value of the bond is  \$1,000, it matures in four years, its current yield to maturity (r_b)$  is 8 percent, and its current price is 1,066.24. See Table 3-7 for the calculation of its duration. As the calculation indicates, the duration, or weighted-average time to maturity, on this bond is 3.50 years. In other words, on a time value of money basis, the initial investment of 1,066.24 is recovered after 3.50 years.

Most bonds pay interest semiannually rather than annually as in Example 3-12. Thus, we next look at the duration on a bond that pays interest semiannually.

# EXAMPLE 3-13 The Duration of a Four-Year Bond Paying Semiannual Interest

Suppose that you have a bond that offers a coupon rate of 10 percent paid semiannually (or 5 percent paid every 6 months). The face value of the bond is  $1,000, it matures in four years, its current rate of return \left(r_{b}\right)$  is 8 percent, and its current price is  $\$1,067.34$ . See Table 3-8 for the calculation of its duration. As the calculation indicates, the duration, or weighted-average time to maturity, on this bond is 3.42 years. In other words, on a time value of money basis, the initial investment of  $\$1,067.34$  is recovered after 3.42 years.

Table 3-9 shows that if the annual coupon rate is lowered to 6 percent, the duration of the bond rises to 3.60 years. Since 6 percent annual coupon payments are smaller than 10 percent coupon payments, it takes longer to recover the initial investment with the 6 percent coupon bond. In Table 3-10, duration is calculated for the original 10 percent coupon bond, assuming that its rate of return  $(r_b)$  increases from 8 percent to 10 percent. Now duration falls from 3.42 years (in Table 3-8) to 3.39 years. The higher the rate of return on the bond, the more the investor earns on reinvested coupons and the shorter the time needed to recover his or her initial investment. Finally, as the maturity on a bond decreases, in this case to 3 years in Table 3-11, duration falls to 2.67 years (i.e., the shorter the maturity on the bond, the more quickly the initial investment is recovered).

TABLE 3-7 Duration of a Four-Year Bond with 10 Percent Coupon Paid Annually and 8 Percent Yield

<table><tr><td>t</td><td>CFt</td><td>1/(1+8\%)t</td><td>CFt/(1+8\%)t</td><td>CFt×t/(1+8\%)t</td></tr><tr><td>1</td><td>100</td><td>0.9259</td><td>92.59</td><td>92.59</td></tr><tr><td>2</td><td>100</td><td>0.8573</td><td>85.73</td><td>171.47</td></tr><tr><td>3</td><td>100</td><td>0.7938</td><td>79.38</td><td>238.15</td></tr><tr><td>4</td><td>1,100</td><td>0.7350</td><td>808.53</td><td>3,234.13</td></tr><tr><td></td><td></td><td></td><td>1,066.24</td><td>3,736.34</td></tr><tr><td></td><td></td><td colspan="3">3,736.34/1,066.24 = 3.50 years</td></tr></table>

TABLE 3-8 Duration of a Four-Year Bond with 10 Percent Coupon Paid Semiannually and 8 Percent Rate of Return

<table><tr><td>t</td><td>CFt</td><td>1/(1+4\%)2t</td><td>CFt/(1+4\%)2t</td><td>CFt×t/(1+4\%)2t</td></tr><tr><td>1/2</td><td>50</td><td>0.9615</td><td>48.08</td><td>24.04</td></tr><tr><td>1</td><td>50</td><td>0.9246</td><td>46.23</td><td>46.23</td></tr><tr><td>11/2</td><td>50</td><td>0.8890</td><td>44.45</td><td>66.67</td></tr><tr><td>2</td><td>50</td><td>0.8548</td><td>42.74</td><td>85.48</td></tr><tr><td>21/2</td><td>50</td><td>0.8219</td><td>41.10</td><td>102.75</td></tr><tr><td>3</td><td>50</td><td>0.7903</td><td>39.52</td><td>118.56</td></tr><tr><td>31/2</td><td>50</td><td>0.7599</td><td>38.00</td><td>133.00</td></tr><tr><td>4</td><td>1,050</td><td>0.7307</td><td>767.22</td><td>3,068.88</td></tr><tr><td></td><td></td><td></td><td>1,067.34</td><td>3,645.61</td></tr><tr><td colspan="5">D=3,645.61/1,067.34=3.42 years</td></tr></table>

TABLE 3-9 Duration of a Four-Year Bond with 6 Percent Coupon Paid Semiannually and 8 Percent Rate of Return

<table><tr><td>t</td><td>CFt</td><td>1/(1 + 4\%)2t</td><td>CFt/(1 + 4\%)2t</td><td>CFt×t/(1 + 4\%)2t</td></tr><tr><td>1/2</td><td>30</td><td>0.9615</td><td>28.84</td><td>14.42</td></tr><tr><td>1</td><td>30</td><td>0.9246</td><td>27.74</td><td>27.74</td></tr><tr><td>11/2</td><td>30</td><td>0.8890</td><td>26.67</td><td>40.00</td></tr><tr><td>2</td><td>30</td><td>0.8548</td><td>25.64</td><td>51.28</td></tr><tr><td>21/2</td><td>30</td><td>0.8219</td><td>24.66</td><td>61.65</td></tr><tr><td>3</td><td>30</td><td>0.7903</td><td>23.71</td><td>71.13</td></tr><tr><td>31/2</td><td>30</td><td>0.7599</td><td>22.80</td><td>79.80</td></tr><tr><td>4</td><td>1,030</td><td>0.7307</td><td>752.62</td><td>3,010.48</td></tr><tr><td></td><td></td><td></td><td>932.68</td><td>3,356.50</td></tr><tr><td colspan="5">D=3,356.50/932.62=3.60 years</td></tr></table>

TABLE 3-10 Duration of a Four-Year Bond with 10 Percent Coupon Paid Semiannually and 10 Percent Rate of Return

<table><tr><td>t</td><td>CFt</td><td>1/(1+5\%)2t</td><td>CFt/(1+5\%)2t</td><td>CFt×t/(1+5\%)2t</td></tr><tr><td>1/2</td><td>50</td><td>0.9524</td><td>47.62</td><td>23.81</td></tr><tr><td>1</td><td>50</td><td>0.9070</td><td>45.35</td><td>45.35</td></tr><tr><td>11/2</td><td>50</td><td>0.8638</td><td>43.19</td><td>64.78</td></tr><tr><td>2</td><td>50</td><td>0.8227</td><td>41.14</td><td>82.28</td></tr><tr><td>21/2</td><td>50</td><td>0.7835</td><td>39.18</td><td>97.95</td></tr><tr><td>3</td><td>50</td><td>0.7462</td><td>37.31</td><td>111.93</td></tr><tr><td>31/2</td><td>50</td><td>0.7107</td><td>35.53</td><td>124.36</td></tr><tr><td>4</td><td>1,050</td><td>0.6768</td><td>710.68</td><td>2,842.72</td></tr><tr><td></td><td></td><td></td><td>1,000.00</td><td>3,393.18</td></tr><tr><td colspan="5">D=3,393.18/1,000.00=3.39 years</td></tr></table>

TABLE 3-11 Duration of a Three-Year Bond with 10 Percent Coupon Paid Semiannually and 8 Percent Rate of Return

<table><tr><td>t</td><td>CFt</td><td>1/(1+4\%)2t</td><td>CFt/(1+4\%)2t</td><td>CFt×t/(1+4\%)2t</td></tr><tr><td>1/2</td><td>50</td><td>0.9615</td><td>48.08</td><td>24.04</td></tr><tr><td>1</td><td>50</td><td>0.9246</td><td>46.23</td><td>46.23</td></tr><tr><td>11/2</td><td>50</td><td>0.8890</td><td>44.45</td><td>66.67</td></tr><tr><td>2</td><td>50</td><td>0.8548</td><td>42.74</td><td>85.48</td></tr><tr><td>21/2</td><td>50</td><td>0.8219</td><td>41.10</td><td>102.75</td></tr><tr><td>3</td><td>1,050</td><td>0.7903</td><td>829.82</td><td>2,489.46</td></tr><tr><td></td><td></td><td></td><td>1,052.42</td><td>2,814.63</td></tr><tr><td></td><td></td><td colspan="2">D=2,814.63/1,052.42=2.67 years</td><td></td></tr></table>

The Duration of a Zero-Coupon Bond. Zero-coupon bonds sell at a discount from face value and pay their face value (e.g.,  \$1,000) on maturity. These bonds have no intervening cash flows, such as coupon payments, between issue and maturity. The current price that an investor is willing to pay for such a bond, assuming semiannual compounding of interest, is equal to the present value of the single, fixed (face value) payment on the bond that is received on maturity (here,\$ 1,000):

$$

P = 1, 0 0 0 / (1 + r_{b} / 2)^{2 T_{Z C}}

$$ where


$r_b =$  Required semiannually compounded rate of return or yield

$T_{zc} =$  Number of years to maturity

$P =$  Price

Because the only cash flow received on these securities is the final payment at maturity (time  $T_{zc}$ ), the following must be true:

$$

D_{z c} = T_{z c}

$$

That is, the duration of a zero-coupon bond equals its maturity. Note that it is only for zero-coupon bonds that duration and maturity are equal. Indeed, for any bond that pays some cash flows prior to maturity, its duration will always be less than its maturity.

# EXAMPLE 3-14 The Duration of a Zero-Coupon Bond

Suppose that you have a zero-coupon bond with a face value of 1,000, a maturity of four years, and a current rate of return of 8 percent compounded semiannually. Since the bond pays no interest, the duration equation consists of only one term—cash flow at the end of year 4:

$$

\begin{array}{c c c c c} t & C F_{4} & \frac{1}{(1 + 8 \% / 2)^{2 \times 4}} & \frac{C F_{4}}{(1 + 8 \% / 2)^{2 \times 4}} & \frac{C F_{4} \times 4}{(1 + 8 \% / 2)^{2 \times 4}} \\ \hline 4 & \$ 1,000 & 0.7307 & 730 & 2,923 \end{array}

$$

$$

D = 2, 9 2 3 / 7 3 0 = 4 \text{ye ar s}

$$ or duration equals the maturity of the zero-coupon bond.


# TABLE 3-12 Features of Duration

1. The higher the coupon or promised interest payment on a security, the shorter is its duration.
2. The higher the rate of return on a security, the shorter is its duration.
3. Duration increases with maturity at a decreasing rate.

# LG 3-7

# Features of Duration

The preceding examples suggest several important features of duration relating to the time remaining to maturity, rate of return, and coupon interest of the underlying bond being analyzed. These features are summarized in Table 3-12.

Duration and Coupon Interest. A comparison of Tables 3-8 and 3-9 indicates that the higher the coupon or promised interest payment on the bond, the shorter its duration. This is due to the fact that the larger the coupon or promised interest payment, the more quickly investors receive cash flows on a bond and the higher are the present value weights of those cash flows in the duration calculation. On a time value of money basis, the investor recoups his or her initial investment faster when coupon payments are higher.

Duration and Rate of Return. A comparison of Tables 3-8 and 3-10 also indicates that duration decreases as the rate of return on the bond increases. This makes intuitive sense since the higher the rate of return on the bond, the higher the present value cost of waiting to receive the later cash flows on the bond. Higher rates of return discount later cash flows more heavily, and the relative importance, or weights, of those later cash flows decline when compared to cash flows received earlier.

Duration and Maturity. A comparison of Tables 3-8, 3-11, and 3-13 indicates that duration increases with the maturity of a bond, but at a decreasing rate. As maturity of a 10 percent coupon bond decreases from four years to three years (Tables 3-8 and 3-11), duration decreases by 0.75 year, from 3.42 years to 2.67 years. Decreasing maturity for an additional year, from three years to two years (Tables 3-11 and 3-13), decreases duration by 0.81 year, from 2.67 years to 1.86 years. Notice too that for a coupon bond, the longer the maturity on the bond the larger the discrepancy between maturity and duration. Specifically, the two-year maturity bond has a duration of 1.86 years (0.14 year less than its maturity), while the three-year maturity bond has a duration of 2.67 years (0.33 year less than its maturity), and the four-year maturity bond has a duration of 3.42 years (0.58 year less than its maturity). Figure 3-6 illustrates this relation between duration and maturity for our 10 percent coupon (paid semiannually), 8 percent rate of return bond. The In the News box describes how this relation between maturity and duration can result in potential losses when bonds are purchased during a period of falling interest rates.

TABLE 3-13 Duration of a Two-Year Bond with 10 Percent Coupon Paid Semiannually and 8 Percent Rate of Return

<table><tr><td>t</td><td>CFt</td><td>1/(1+4\%)2t</td><td>CFt/(1+4\%)2t</td><td>CFt×t/(1+4\%)2t</td></tr><tr><td>1/2</td><td>50</td><td>0.9615</td><td>48.08</td><td>24.04</td></tr><tr><td>1</td><td>50</td><td>0.9246</td><td>46.23</td><td>46.23</td></tr><tr><td>11/2</td><td>50</td><td>0.8890</td><td>44.45</td><td>66.67</td></tr><tr><td>2</td><td>1,050</td><td>0.8548</td><td>897.54</td><td>1,795.08</td></tr><tr><td></td><td></td><td></td><td>1,036.30</td><td>1,932.02</td></tr><tr><td></td><td></td><td colspan="2">D=1,932.02/1,036.30=1.86 years</td><td></td></tr></table>

# Duration—What an Interest Rate Hike Could Do to Your Bond Portfolio

If you own bonds or have money in a bond fund, there is a number you should know. It is called duration. Although stated in years, duration is not simply a measure of time. Instead, duration signals how much the price of your bond investment is likely to fluctuate when there is an up or down movement in interest rates. The higher the duration number, the more sensitive your bond investment will be to changes in interest rates.

If you hold outstanding bonds, particularly those with a low interest rate and high duration, you may experience price drops as interest rates rise along the way. If you have money in a bond fund that holds primarily long-term bonds, expect the value of that fund to decline, perhaps significantly, when interest rates rise . . .

The higher a bond's duration, the greater its sensitivity to interest rates changes. This means fluctuations in price—whether positive or negative—will be more pronounced. If you hold a bond to maturity, you can expect to receive the par (or face) value of the bond when your principal is repaid, unless the company goes bankrupt or otherwise fails to pay. If you sell before maturity, the price you receive will be affected by the prevailing interest rates and duration. For instance, if interest rates were to rise by 2 percent from today's low levels, a medium investment grade corporate bond (BBB, Baa rated, or similar) with a duration of 8.4 (10-year maturity, 3.5 percent coupon) could lose 15 percent of its market value. A similar investment grade bond with a duration of 14.5 (30-year maturity, 4.5 percent coupon) might experience a loss in value of 26 percent. The higher level of loss for the longer-term bond happens because its duration number is higher, making it react more dramatically to interest rate changes.


Duration has the same effect on bond funds. For example, a bond fund with 10-year duration will decrease in value by 10 percent if interest rates rise 1 percent. On the other hand, the bond fund will increase in value by 10 percent if interest rates fall 1 percent. If a fund's duration is two years, then a 1 percent rise in interest rates will result in a 2 percent decline in the bond fund's value. A 2 percent increase in the bond's fund value would follow if interest rates fall by 1 percent.

Variables such as how much interest a bond pays during its lifespan as well as the bond's call features and yield, which may be affected by changes in credit quality, play a role in the duration computation. Maturity—the length of time before the bond's principal is repaid—also plays a role.

Source: Financial Industry Regulatory Authority, FINRA, Investor Alerts, October 2019, www.finra.org

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/8d04a5ac-85cd-4263-9695-9d761733496f/273b00d941bb378ec357b56f5d2ff39cc0aa1c494d54a1c1e9aecf1895864ec2.jpg)
Figure 3-6 Discrepancy between Maturity and Duration on a Coupon Bond

LG 3-8

# Economic Meaning of Duration

So far we have calculated duration for a number of different bonds. In addition to being a measure of the average life of a bond, duration is also a direct measure of its price sensitivity to changes in interest rates, or elasticity.[14] In other words, the larger the numerical value of duration  $(D)$ , the more sensitive the price of that bond  $(\Delta P / P)$  to (small) changes or shocks in interest rates  $\Delta r_b / (1 + r_b)$ . The specific relationship between these factors for securities with annual compounding of interest is represented as:[15]

$$

\frac{\Delta P / P}{\Delta r_{b} / \left(1 + r_{b}\right)} = - D

$$

For securities with semiannual receipt (compounding) of interest, it is represented as:

$$

\frac{\Delta P / P}{\Delta r_{b} / (1 + r_{b} / 2)} = - D

$$

The economic interpretation of this equation is that the number  $D$  is the elasticity, or sensitivity, of the bond's price to small interest rate (either required rate of return or yield to maturity) changes. The negative sign in front of the  $D$  indicates the inverse relationship between interest rate changes and price changes. That is,  $-D$  describes the percentage value decrease—capital loss—on the security  $(\Delta P / P)$  for any given (discounted) small increase in interest rates  $[\Delta r_b / (1 + r_b)]$ , where  $\Delta r_b$  is the change in interest rates and  $1 + r_b$  is 1 plus the current (or beginning) level of interest rates.

The definition of duration can be rearranged in another useful way for interpretation regarding price sensitivity:

$$

\frac{\Delta P}{P} = - D \left[ \frac{\Delta r_{b}}{1 + r_{b}} \right]

$$ or


$$

\frac{\Delta P}{P} = - D \left[ \frac{\Delta r_{b}}{1 + r_{b} / 2} \right]

$$ for annual and semiannual compounding of interest, respectively. This equation shows that for small changes in interest rates, bond prices move in an inversely proportional manner according to the size of  $D$ . Clearly, for any given change in interest rates, long duration securities suffer a larger capital loss (or receive a higher capital gain) should interest rates rise (fall) than do short duration securities.[16]

The duration equation can be rearranged, combining  $D$  and  $(1 + r_b)$  into a single variable  $D / (1 + r_b)$ , to produce what practitioners call modified duration (MD). For annual compounding of interest:

$$
\frac{\Delta P}{P} = - M D \times \Delta r_{b}
$$ where


$$

M D = \frac{D}{1 + r_{b}}

$$

14. In Chapter 23, we also make the direct link between duration and the price sensitivity of an asset or liability or of an FI's entire portfolio (i.e., its duration gap). We show how duration can be used to immunize a security or portfolio of securities against interest rate risk.
15. In what follows, we use the  $\Delta$  (change) notation instead of  $d$  (derivative notation) to recognize that interest rate changes tend to be discrete rather than infinitesimally small. For example, in real-world financial markets the smallest observed rate change is usually one basis point, or 1/100 of 1 percent.
16. By implication, gains and losses under the duration model are symmetric. That is, if we repeated the above examples but allowed interest rates to decrease by one basis point annually (or  $\frac{1}{2}$  basis point semiannually), the percentage increase in the price of the bond  $(\Delta P / P)$  would be proportionate with  $D$ . Further, the capital gains would be a mirror image of the capital losses for an equal (small) decrease in interest rates.

# modified duration

Duration divided by 1 plus the initial interest rate.

For semiannual compounding of interest:

$$

\frac{\Delta P}{P} = - M D \times \Delta r_{b}

$$ where


$$

M D = \frac{D}{1 + r_{b} / 2}

$$

This form is more intuitive than the Macaulay's duration because we multiply  $MD$  by the simple change in interest rates rather than the discounted change in interest rates as in the general duration equation. Thus, the modified duration is a more direct measure of bond price elasticity. Next, we use duration to measure the price sensitivity of different bonds to small changes in interest rates.

# EXAMPLE 3-15 Four-Year Bond

Consider a four-year bond with a 10 percent coupon paid semiannually (or 5 percent paid every 6 months) and an 8 percent rate of return  $(r_b)$ . According to calculations in Table 3-8, the bond's duration is  $D = 3.42$  years. Suppose that the rate of return increases by 10 basis points (1/10 of 1 percent) from 8 to 8.10 percent. Then, using the semiannual compounding version of the duration model shown above, the percentage change in the bond's price is:

$$

\begin{array}{l} \frac{\Delta P}{P} = - (3. 4 2) \left[ \frac{0 . 0 0 1}{1 . 0 4} \right] \\ = - 0. 0 0 3 2 9 \\ \end{array}

$$ or


$$

= -0.329\%

$$

The bond price had been 1,067.34, which was the present value of a four-year bond with a 10 percent coupon and an 8 percent rate of return. However, the duration model predicts that the price of this bond will fall by 0.329 percent, or by 3.51, to 1,063.83 after the increase in the rate of return on the bond of 10 basis points.[17]

With a lower coupon rate of 6 percent, as shown in Table 3-8, the bond's duration,  $D$ , is 3.60 and the bond price changes by:

$$

\frac{\Delta P}{P} = - (3. 6 0) \left(\frac{0 . 0 0 1}{1 . 0 4}\right) = - 0. 0 0 3 4 6

$$ or


$$

= -0.346 \%

$$ for a 10-basis-point increase in the rate of return. The bond's price drops by 0.346 percent, or by  \$3.23, from\$ 932.68 (reported in Table 3-8) to 929.45. Notice again that, all else held constant, the higher the coupon rate on the bond, the shorter the duration of the bond and the smaller the percentage decrease in the bond's price for a given increase in interest rates.

# Large Interest Rate Changes and Duration

It needs to be stressed here that duration accurately measures the price sensitivity of financial securities only for small changes in interest rates of the order of one or a few basis points (a basis point is equal to one-hundredth of 1 percent). Suppose, however, that interest rate shocks are much larger, of the order of 2 percent or 200 basis points or more.

# DO YOU UNDERSTAND?

14. When the duration of an asset is equal to its maturity?
15. What the denominator of the duration equation measures?
16. What the numerator of the duration equation measures?
17. What the duration of a zero-coupon bond is?
18. Which has the longest duration: a 30-year, 8 percent yield to maturity, zero-coupon bond, or a 30-year, 8 percent yield to maturity, 5 percent coupon bond?
19. What the relationship is between the duration of a bond and its price elasticity?

# convexity

The degree of curvature of the price-interest rate curve around some interest rate level.

While such large changes in interest rates are not common, this might happen in a financial crisis or if the central bank (see Chapter 4) suddenly changes its monetary policy strategy. In this case, duration becomes a less accurate predictor of how much the prices of bonds will change, and therefore, a less accurate measure of the price sensitivity of a bond to changes in interest rates. Figure 3-7 is a graphic representation of the reason for this. Note the difference in the change in a bond's price due to interest rate changes according to the proportional duration measure  $(D)$ , and the "true relationship," using the time value of money equations of Chapter 2 (and discussed earlier in this chapter) to calculate the exact present value change of a bond's price in response to interest rate changes.

Specifically, duration predicts that the relationship between an interest rate change and a security's price change will be proportional to the security's  $D$  (duration). By precisely calculating the exact or true change in the security's price using time value of money calculations, however, we would find that for large interest rate increases, duration overpredicts the fall in the security's price, and for large interest rate decreases, it underpredicts the increase in the security's price. Thus, duration misestimates the change in the value of a security following a large change (either positive or negative) in interest rates. Further, the duration model predicts symmetric effects for rate increases and decreases on a bond's price. As Figure 3-7 shows, in actuality, the capital loss effect of large rate increases tends to be smaller than the capital gain effect of large rate decreases. This is the result of a bond's price-interest rate relationship exhibiting a property called convexity rather than linearity, as assumed by the simple duration model. Intuitively, this is because the sensitivity of the bond's price to a change in interest rates depends on the level from which interest rates change (i.e., 6 percent, 8 percent, 10 percent, 12 percent). In particular, the higher the level of interest rates, the smaller a bond's price sensitivity to interest rate changes.

# EXAMPLE 3-16

# Calculation of the Change in a Security's Price Using the Duration versus the Time Value of Money Formula

To see the importance of accounting for the effects of convexity in assessing the impact of large interest rate changes, consider the four-year,  \$1,000 face value bond with a 10 percent coupon paid semiannually and an 8 percent rate of return. In Table 3-8 we found this bond has a duration of 3.42 years, and its current price is\$ 1,067.34. We represent this as point A in Figure 3-8. If rates rise from 8 percent to 10 percent, the duration model predicts that the bond price will fall by 6.577 percent; that is:

$$
\frac{\Delta P}{P} = - 3.42 (0.02 / 1.04) = - 6.577 \%
$$ or from a price of  $1,067.34 to$ 997.14 (see point B in Figure 3-8). However, using time value of money formulas to calculate the exact change in the bond's price after a rise in rates to 10 percent, we find its true value is:


$$

V_{b} = 5 0 \left[ \frac{1 - \frac{1}{[ 1 + (0 . 1 0 / 2) ]^{2^{(4)}}}}{0 . 1 0 / 2} \right] + 1, 0 0 0 / [ 1 + (0. 1 0 / 2) ]^{2^{(4)}} = \$ 1, 0 0 0

$$

This is point  $C$  in Figure 3-8. As you can see, the true or actual fall in price is less than the duration predicted fall by  $2.86$ . The reason for this is the natural convexity to the price-interest rate curve as interest rates rise.

Reversing the experiment reveals that the duration model would predict the bond's price to rise by 6.577 percent if yields were to fall from 8 percent to 6 percent, resulting in a predicted price of  \$1,137.54 (see point D in Figure 3-8). By comparison, the true or actual change in price can be computed, using time value of money formulas and a 6 percent rate of return, as\$ 1,140.39 (see point E in Figure 3-8). The duration model has underpredicted the true bond price increase by  $2.85 ($ 1,140.39 - 1,137.54).


![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/8d04a5ac-85cd-4263-9695-9d761733496f/45dffd6381806d6e042f127a417ff739e3832bf6c50ac14d02bd746acc761e58.jpg)
Figure 3-7 Duration Estimated versus True Bond Price

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/8d04a5ac-85cd-4263-9695-9d761733496f/406fc8a3e5012565e99b014d53c5fe252fd2cb73a9f1688300cf5741c548e79d.jpg)
Figure 3-8 Price-Interest Rate Curve for the Four-Year 10 Percent Coupon Bond

An important question for managers of financial institutions and individual savers is whether the error in the duration equation is big enough to be concerned about. This depends on the size of the interest rate change and the size of the portfolio under management. Clearly, for a large portfolio the error will also be large.

Note that convexity is a desirable feature for an investor or FI manager to capture in a portfolio of assets. Buying a bond or a portfolio of assets that exhibits a lot of convexity or curvature in the price-interest rate relationship is similar to buying partial interest rate risk insurance. Specifically, high convexity means that for equally large changes of interest rates up and down (e.g., plus or minus 2 percent), the capital gain effect of a rate decrease more than offsets the capital loss effect of a rate increase.

So far, we have established the following three characteristics of convexity:

1. Convexity is desirable. The greater the convexity of a security or portfolio of securities, the more insurance or interest rate protection an investor or FI manager has against rate increases and the greater the potential gains after interest rate falls.
2. Convexity increases the error in duration as an investment criterion. The larger the interest rate changes and the more convex a fixed-income security or portfolio, the greater the error the investor or FI manager faces in using just duration (and duration matching) to immunize exposure to interest rate shocks.
3. All fixed-income securities are convex. That is, as interest rates change, bond prices change at a nonconstant rate.

To illustrate the third characteristic, we can take the four-year, 10 percent coupon, 8 percent rate of return bond and look at two extreme price-interest rate scenarios. What is the price on the bond if rates fall to zero, and what is its price if rates rise to some very large number such as infinity? Where  $r_b = 0$ :

$$

V_{b} = \frac{5 0}{(1 + 0)^{1}} + \frac{5 0}{(1 + 0)^{2}} + \dots + \frac{1 , 0 5 0}{(1 + 0)^{8}} = \$ 1, 4 0 0

$$

The price is just the simple undiscounted sum of the coupon values and the face value of the bond. Since interest rates can never go below zero, \$1,400 is the maximum possible price for the bond. Where  $r_b = \infty$ :

$$

V_{b} = \frac{5 0}{(1 + \infty)^{1}} + \frac{5 0}{(1 + \infty)^{2}} + \dots + \frac{1 , 0 5 0}{(1 + \infty)^{8}} = \$ 0

$$

As interest rates go to infinity, the bond price falls asymptotically toward zero, but by definition a bond's price can never be negative. Thus, zero must be the minimum bond price (see Figure 3-9). In Appendix 3B to this chapter (available through Connect or your course instructor) we look at how to measure convexity and how this measure of convexity can be incorporated into the duration model to adjust for or offset the error in the prediction of security price changes for a given change in interest rates.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/8d04a5ac-85cd-4263-9695-9d761733496f/36a4b420510d1141b391c08b6c91dd841fa1db752803a0f9de88be73da0292d7.jpg)
Figure 3-9 The Natural Convexity of Bonds

# SUMMARY

This chapter applied the time value of money formulas presented in Chapter 2 to the valuation of financial securities such as bonds and equities. With respect to bonds, we included a detailed examination of how changes in interest rates, coupon rates, and time to maturity affect their price and price sensitivity. We also presented a measure of bond price sensitivity to interest rate changes, called duration. We showed how the value of duration is affected by various bond characteristics, such as coupon rates, interest rates, and time to maturity.

# CHAPTER NOTATION

$r =$  required rate of return

$CF_{t} =$  cash flow received on a security at end of period  $t$

$n =$  number of periods in the investment horizon

$PV =$  present value of a security

$E(r) =$  expected rate of return

$P$  or  $\overline{P} =$  current market price for a security

$RCF_{t} =$  realized cash flow in period  $t$

$\bar{r} =$  realized rate of return

$V_{b} =$  the price on a bond

$M =$  par or face value of a bond

INT = annual interest payment on a bond

$T =$  number of years until a bond matures

$r_b =$  annual interest rate used to discount cash flows on a bond

$r_s =$  interest rate used to discount cash flows on equity

$Div_{t} =$  dividend paid at the end of year  $t$

$g =$  constant growth rate in dividends each year

$D =$  duration on a security measured in years

$N =$  last period in which the cash flow is received or number of periods to maturity

$MD =$  modified duration  $= D / (1 + r)$

# QUESTIONS

1. What is the difference between a required rate of return and an expected rate of return? (LG 3-1)
2. What is the relation between the expected rate of return and the required rate of return as they pertain to the fair market price and the current market price of a security? (LG 3-1)
3. What is the difference between a zero-coupon bond and a coupon bond? (LG 3-2)
4. For each of the following situations, identify whether a bond would be considered a premium bond, a discount bond, or a par bond. (LG 3-2) a. A bond's current market price is greater than its face value.

b. A bond's coupon rate is equal to its yield to maturity.
c. A bond's coupon rate is less than its required rate of return.
d. A bond's coupon rate is less than its yield to maturity.
e. A bond's coupon rate is greater than its yield to maturity.
f. A bond's fair present value is less than its face value.

5. How does equity valuation differ from bond valuation? (LG 3-3)

6. What happens to the fair present value of a bond when the required rate of return on the bond increases? (LG 3-4)
7. All else equal, which bond's price is more affected by a change in interest rates, a short-term bond or a long-term bond? Why? (LG 3-5)
8. All else equal, which bond's price is more affected by a change in interest rates, a bond with a large coupon or a small coupon? Why? (LG 3-5)
9. How is duration related to the price elasticity of a fixed-income security? What is the relationship between duration and the price of a fixed-income security? (LG 3-6)
10. What is the relation between the coupon rate on a bond and its duration? (LG 3-7)
11. Which has the longest duration: a 30-year, 8 percent yield to maturity, 5 percent coupon bond or a 30-year, 10 percent yield to maturity, 5 percent coupon bond? (LG 3-7)
12. What is the economic meaning of duration? (LG 3-8)

# PROBLEMS

1. You bought a bond five years ago for \$935 per bond. The bond is now selling for \$980. It also paid 75 in interest per year, which you reinvested in the bond. Calculate the realized rate of return earned on this bond. (LG 3-1)
2. Refer again to the bond information in Problem 1. You expect to hold the bond for three more years, then sell it for \$990. If the bond is expected to continue paying \$75 per year over the next three years, what is the expected rate of return on the bond during this period? (LG 3-1)

3. Johnson Motors's bonds have 10 years remaining to maturity. Interest is paid annually, the bonds have a 1,000 par value, and the coupon rate is 8 percent. The bonds have a yield to maturity of 9 percent. What is the current market price of these bonds? (LG 3-2)

4. Using a Spreadsheet to Calculate Bond Values. What is the value of a 1,000 bond with a 12-year maturity and an 8 percent coupon rate (paid semiannually) if the required rate of return is 5 percent, 6 percent, 8 percent, and 10 percent? (LG 3-2)

<table><tr><td>Face Value</td><td>Number of Payments</td><td>Periodic Coupon Payment, $</td><td>Required Return</td><td>The Bond Value Will Be</td></tr><tr><td>\$1,000</td><td>12 × 2 = 24</td><td>1,000(0.08)/2 = 40</td><td>5\%</td><td>1,268.27</td></tr><tr><td>1,000</td><td>24</td><td>40</td><td>6</td><td>1,169.36</td></tr><tr><td>1,000</td><td>24</td><td>40</td><td>8</td><td>1,000.00</td></tr><tr><td>1,000</td><td>24</td><td>40</td><td>10</td><td>862.01</td></tr></table>

5. A 10-year, 12 percent semiannual coupon bond, with a par value of \$1,000 sells for \$1,100. What is the bond's yield to maturity? (LG 3-2)

6. Using a Spreadsheet to Calculate Yield to Maturity. What is the yield to maturity on the following bonds; all have a maturity of 10 years, a face value of  \$1,000, and a coupon rate of 9 percent (paid semiannually). The bonds' current market values are$ 945.50, $987.50, \$1,090.00, and 1,225.875, respectively. (LG 3-2)

<table><tr><td>Market Value</td><td>Number of Payments</td><td>Periodic Coupon Payment, $</td><td>Face Value</td><td>The Yield to Maturity Will Be</td></tr><tr><td>945.50</td><td>10 × 2 = 20</td><td>1,000(0.09)/2 = 45</td><td>\$1,000</td><td>9.87\%</td></tr><tr><td>987.50</td><td>20</td><td>45</td><td>1,000</td><td>9.19</td></tr><tr><td>1,090.00</td><td>20</td><td>45</td><td>1,000</td><td>7.69</td></tr><tr><td>1,225.875</td><td>20</td><td>45</td><td>1,000</td><td>5.97</td></tr></table>

7. BSW Corporation has a bond issue outstanding with an annual coupon rate of 7 percent paid quarterly and four years remaining until maturity. The par value of the bond is 1,000. Determine the fair present value of the bond if market conditions justify a 14 percent, compounded quarterly, required rate of return. (LG 3-2)
8. You have just been offered a bond for \$863.73. The coupon rate is 8 percent payable annually, and the yield to maturity on new issues with the same degree of risk are 10 percent. You want to know how many more interest payments you will receive, but the party selling the bond cannot remember. If the par value is \$1,000, how many interest payments remain? (LG 3-2)
9. A bond you are evaluating has a 10 percent coupon rate (compounded semiannually), a 1,000 face value, and is 10 years from maturity. (LG 3-4) a. If the required rate of return on the bond is 6 percent, what is its fair present value?

b. If the required rate of return on the bond is 8 percent, what is its fair present value?
c. What do your answers to parts (a) and (b) say about the relation between required rates of return and fair values of bonds?

10. Calculate the yield to maturity on the following bonds: (LG 3-2) a. A 9 percent coupon (paid semiannually) bond, with a \$1,000 face value and 15 years remaining to maturity. The bond is selling at \$985.


b. An 8 percent coupon (paid quarterly) bond, with a  \$1,000 face value and 10 years remaining to maturity. The bond is selling at\$ 915.
c. An 11 percent coupon (paid annually) bond, with a  \$1,000 face value and 6 years remaining to maturity. The bond is selling at\$ 1,065.

11. Calculate the fair present values of the following bonds, all of which pay interest semiannually, have a face value of 1,000, have 12 years remaining to maturity, and have a required rate of return of 10 percent. (LG 3-5) a. The bond has a 6 percent coupon rate.

b. The bond has a 8 percent coupon rate.
c. The bond has a 10 percent coupon rate.
d. What do your answers to parts (a) through (c) say about the relation between coupon rates and present values?

12. Repeat parts (a) through (c) of Problem 11 using a required rate of return on the bond of 8 percent. What do your calculations imply about the relation between the coupon rates and bond price volatility? (LG 3-5)
13. Calculate the fair present value of the following bonds, all of which have a 10 percent coupon rate (paid semiannually), face value of 1,000, and a required rate of return of 8 percent. (LG 3-5) a. The bond has 10 years remaining to maturity.

b. The bond has 15 years remaining to maturity.
c. The bond has 20 years remaining to maturity.
d. What do your answers to parts (a) through (c) say about the relation between time to maturity and present values?

14. Repeat parts (a) through (c) of Problem 13 using a required rate of return on the bond of 11 percent. What do your calculations imply about the relation between time to maturity and bond price volatility? (LG 3-5)
15. A 1,000 par value bond with five years left to maturity pays an interest payment semiannually with a 6 percent coupon rate and is priced to have a 5 percent yield to maturity. If interest rates surprisingly increase by 0.5 percent, by how much will the bond's price change? (LG 3-4)
16. A \$1,000 par value bond with seven years left to maturity has a 9 percent coupon rate (paid semiannually) and is selling for \$945.80. What is its yield to maturity? (LG 3-2)
17. Calculate the fair present value on a stock that pays 5 in dividends per year (with no growth) and has a required rate of return of 10 percent. (LG 3-3)
18. A preferred stock from Duquesne Light Company (DQU-PRA) pays 2.10 in annual dividends. If the required rate of return on the preferred stock is 5.4 percent, what is the fair present value of the stock? (LG 3-3)
19. A preferred stock from Hecla Mining Co. (HLPRB) pays 3.50 in annual dividends. If the required rate of return on the preferred stock is 6.8 percent, what is the fair present value of the stock? (LG 3-3)
20. Financial analysts forecast Safeco Corp. (SAF) growth for the future to be 10 percent. Safeco's recent dividend was 1.20. What is the fair present value of Safeco stock if the required rate of return is 12 percent? (LG 3-3)
21. Financial analysts forecast L Brands (LB) growth for the future to be 12.5 percent. LB's most recent dividend was

0.60. What is the fair present value of L Brands's stock if the required rate of return is 14.5 percent? (LG 3-3)

22. A stock you are evaluating just paid an annual dividend of 2.50. Dividends have grown at a constant rate of 1.5 percent over the last 15 years and you expect this to continue. (LG 3-3) a. If the required rate of return on the stock is 12 percent, what is its fair present value?

b. If the required rate of return on the stock is 15 percent, what should the fair value be four years from today?

23. You are considering the purchase of a stock that is currently selling at \$64 per share. You expect the stock to pay \$4.50 in dividends next year. (LG 3-3) a. If dividends are expected to grow at a constant rate of 3 percent per year, what is your expected rate of return on this stock?

b. If dividends are expected to grow at a constant rate of 5 percent per year, what is your expected rate of return on this stock?
c. What do your answers to parts (a) and (b) say about the impact of dividend growth rates on the expected rate of return on stocks?

24. A stock you are evaluating is expected to experience supernormal growth in dividends of 8 percent over the next six years. Following this period, dividends are expected to grow at a constant rate of 3 percent. The stock paid a dividend of 5.50 last year and the required rate of return on the stock is 10 percent. Calculate the stock's fair present value. (LG 3-3)

25. Ecolap Inc. (ECL) recently paid a  \$0.46 dividend. The dividend is expected to grow at a 14.5 percent rate. At a current stock price of\$ 44.12, what return are shareholders expecting? (LG 3-3)

26. Paychex Inc. (PAYX) recently paid a \$0.84 dividend. The dividend is expected to grow at a 15 percent rate. At a current stock price of \$40.11, what return are shareholders expecting? (LG 3-3)

27. Consider a firm with a 9.5 percent growth rate of dividends expected in the future. The current year's dividend was 1.32. What is the fair present value of the stock if the required rate of return is 13 percent? (LG 3-3)

28. A company recently paid a \$0.35 dividend. The dividend is expected to grow at a 10.5 percent rate. At a current stock price of \$24.25, what return are shareholders expecting? (LG 3-3)

29. a. What is the duration of a two-year bond that pays an annual coupon of 10 percent and has a current yield to maturity of 12 percent? Use 1,000 as the face value. (LG 3-6) b. What is the duration of a two-year zero-coupon bond that is yielding 11.5 percent? Use 1,000 as the face value.

c. Given these answers, how does duration differ from maturity?

30. Consider the following two banks:

Bank 1 has assets composed solely of a 10-year, 12 percent coupon,  \$1 million loan with a 12 percent yield to maturity. It is financed with a 10-year, 10 percent coupon,\$ 1 million CD with a 10 percent yield to maturity.

Bank 2 has assets composed solely of a 7-year, 12 percent, zero-coupon bond with a current value of

894,006.20 and a maturity value of 1,976,362.88. It is financed with a 10-year, 8.275 percent coupon, 1,000,000 face value CD with a yield to maturity of 10 percent.

All securities except the zero-coupon bond pay interest annually. (LG 3-4) a. If interest rates rise by 1 percent (100 basis points), how do the values of the assets and liabilities of each bank change?

b. What accounts for the differences between the two banks' accounts?

31. Two bonds are available for purchase in the financial markets. The first bond is a two-year,  \$1,000 bond that pays an annual coupon of 10 percent. The second bond is a two-year,\$ 1,000, zero-coupon bond. (LG 3-7) a. What is the duration of the coupon bond if the current yield to maturity is 8 percent? 10 percent? 12 percent?

b. How does the change in the current yield to maturity affect the duration of this coupon bond?
c. Calculate the duration of the zero-coupon bond with a yield to maturity of 8 percent, 10 percent, and 12 percent.
d. How does the change in the yield to maturity affect the duration of the zero-coupon bond?
e. Why does the change in the yield to maturity affect the coupon bond differently than it affects the zero-coupon bond?

32. What is the duration of a five-year, 1,000 Treasury bond with a 10 percent semiannual coupon selling at par? Selling with a yield to maturity of 12 percent? 14 percent?

What can you conclude about the relationship between duration and yield to maturity? Plot the relationship. Why does this relationship exist? (LG 3-7)

33. Consider a 12-year, 12 percent annual coupon bond with a required rate of return of 10 percent. The bond has a face value of 1,000. (LG 3-4) a. What is the fair present value of the bond?

b. If the required rate of return rises to 11 percent, what is the fair present value of the bond?
c. What has been the percentage change in the fair present value?
d. Repeat parts (a), (b), and (c) for a 16-year bond.
e. What do the respective changes in bond values indicate?

34. Consider a five-year, 15 percent annual coupon bond with a face value of 1,000. The bond is trading at a rate of 12 percent. (LG 3-4) a. What is the price of the bond?

b. If the rate of interest increases 1 percent, what will be the bond's new price?
c. Using your answers to parts (a) and (b), what is the percentage change in the bond's price as a result of the 1 percent increase in interest rates?
d. Repeat parts (b) and (c) assuming a 1 percent decrease in interest rates.
e. What do the differences in your answers indicate about the price-interest rate relationships of fixed-rate assets?

35. Consider the following. (LG 3-7) a. What is the duration of a five-year Treasury bond with a 10 percent semiannual coupon selling at par?


b. What is the duration of the above bond if the yield to maturity (ytm) increases to 14 percent? What if the ytm increases to 16 percent?
c. What can you conclude about the relationship between duration and yield to maturity?

36. Consider the following. (LG 3-7) a. What is the duration of a four-year Treasury bond with a 10 percent semiannual coupon selling at par?

b. What is the duration of a three-year Treasury bond with a 10 percent semiannual coupon selling at par?
c. What is the duration of a two-year Treasury bond with a 10 percent semiannual coupon selling at par?
d. Using these results, what conclusions can you draw about the relationship between duration and maturity?

37. What is the duration of a zero-coupon bond that has eight years to maturity? What is the duration if the maturity increases to 10 years? If it increases to 12 years? (LG 3-7)
38. Suppose that you purchase a bond that matures in five years and pays a 13.76 percent annual coupon rate. The bond is priced to yield 10 percent. (LG 3-6) a. Show that the duration is equal to four years.

b. Show that if interest rates rise to 11 percent next year and your investment horizon is four years from today, you will still earn a 10 percent yield on your investment.

39. An insurance company is analyzing the following three bonds, each with five years to maturity, annual interest payments, and is using duration as its measure of interest rate risk: (LG 3-6) a. \$10,000 par value, coupon rate = 8\%,  $r_b = 0.10$

b. \$10,000 par value, coupon rate = 10\%,  $r_b = 0.10$ c. \$10,000 par value, coupon rate = 12\%,  $r_b = 0.10$

What is the duration of each of the three bonds?

40. MLK Bank has an asset portfolio that consists of  \$100 million of 30-year, 8 percent annual coupon,\$ 1,000 bonds that sell at par. (LG 3-4, LG 3-6) a. What will be the bonds' new prices if market yields change immediately by  $\pm 0.10$  percent? What will be the new prices if market yields change immediately by  $\pm 2.00$  percent?

b. The duration of these bonds is 12.1608 years. What are the predicted bond prices in each of the four cases using the duration rule? What is the amount of error between the duration prediction and the actual market values?

41. You have discovered that when the required rate of return on a bond you own fell by 0.50 percent from 9.75 percent to 9.25 percent, the fair present value rose from $975 to $995. The bond pays interest annually. What is the duration of this bond? (LG 3-8)

# APPENDIX 3A: Duration and Immunization

# APPENDIX 3B: More on Convexity

Appendixes 3A and 3B are available through Connect or your course instructor.

# The Federal Reserve System, Monetary Policy, and Interest Rates

Learning Goals

LG 4-1

Understand the major functions of the Federal Reserve System.

LG4-2

Identify the structure of the Federal Reserve System.

LG 4-3

Identify the monetary policy tools used by the Federal Reserve.

LG 4-4

Appreciate how monetary policy changes affect key economic variables.

LG 4-5

Understand how central banks around the world adjusted their monetary policy during the recent financial crisis.

# MAJOR DUTIES AND RESPONSIBILITIES OF THE FEDERAL RESERVE SYSTEM: CHAPTER OVERVIEW

Central banks determine, implement, and control the monetary policy in their home countries. The Federal Reserve (the Fed) is the central bank of the United States. Founded by Congress under the Federal Reserve Act in 1913, the Fed's original duties were to provide the nation with a safer, more flexible, and more stable monetary and financial system. This was needed following a number of banking crises and panics that had occurred in the first decade of the 20th century (particularly  $1907)^{1}$  and the last decades of the 19th century. As time passed, additional legislation, including the Banking Act of 1935, the Full Employment Act of 1946, and the Full Employment and Balanced Growth Act of 1978 (also called the Humphrey-Hawkins Act), revised and supplemented the original purposes and objectives of the Federal Reserve System. These objectives included economic growth chapter


# 4

OUTLINE

Major Duties and

Responsibilities of the Federal

Reserve System: Chapter

Overview

Structure of the Federal

Reserve System

Organization of the

Federal Reserve System

Board of Governors of the

Federal Reserve System

Federal Open Market

Committee

Functions Performed by

Federal Reserve Banks

Balance Sheet of the

Federal Reserve

Monetary Policy Tools

Open Market Operations

The Discount Rate

Reserve Requirements

(Reserve Ratios)

The Federal Reserve, the Money

Supply, and Interest Rates

Effects of Monetary Tools on Various Economic


Variables

Money Supply versus

Interest Rate Targeting

International Monetary Policies and Strategies

Systemwide Rescue

Programs Employed during the Financial Crisis


Challenges Remain after the Crisis


# central banks

Banks that determine, implement, and control the monetary policy in their home countries.

LG 4-1 in line with the economy's potential to expand, a high level of employment, stable prices, and moderate long-term interest rates.


The Federal Reserve System is an independent central bank in that its decisions do not have to be ratified by the president or another member of the executive branch of the U.S. government. The system is, however, subject to oversight by the U.S. Congress under its authority to coin money. Further, the Federal Reserve is required to work within the framework of the overall objectives of economic and financial policies established by the U.S. government.

The Federal Reserve System has evolved into one of the most powerful economic bodies in the world and was critical in implementing policies to address the worldwide financial crisis in 2008-2009. Even the hint of a change in interest rate policy by the Fed can have an impact on markets around the world. Its duties incorporate four major functions: (1) conducting monetary policy; (2) supervising and regulating depository institutions; (3) maintaining the stability of the financial system; and (4) providing payment and other financial services to the U.S. government, the public, financial institutions, and foreign official institutions.

In this chapter, we present an overview of the Federal Reserve System. We start with a basic description, highlighting its organization and structure. We then examine the monetary policy tools available to the Fed and how the Fed uses these tools to influence the U.S. money supply and interest rates both domestically and internationally. As part of the discussion, the chapter highlights actions taken by the Fed during the recent financial crisis (e.g., expanding its role as a lender of last resort and purchaser/guarantor of distressed assets of banks and other FIs). Finally, we look at the independent and coordinated efforts of central banks around the world as they adjusted their international monetary policies during the financial crisis.

# STRUCTURE OF THE FEDERAL RESERVE SYSTEM

LG 4-2

The Federal Reserve System consists of 12 Federal Reserve Banks located in major cities throughout the United States and a seven-member Board of Governors located in Washington, DC. This structure was implemented in 1913 to spread power along regional lines, between the private sector and the government, and among bankers, businesspeople, and the public. Federal Reserve Banks and the Federal Reserve Board of Governors together comprise and operate the Federal Open Market Committee (FOMC), which is responsible for the formulation and implementation of monetary policy.

www.federalreserve.gov

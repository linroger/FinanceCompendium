---
title: "Appendix B: Zero Rates, Forward Rates, and Zero-Coupon Yield Curves"
parent_directory: "Part 8 Appendices"
formatted: "2025-12-21 03:45:00 AM"
formatter_model: "claude-haiku-4-5-20251001"
primary_tags:
  - zero rates
  - forward rates
  - yield curves
  - bond pricing
secondary_tags:
  - treasury rates
  - bootstrap method
  - continuous compounding
  - interest rate calculations
  - zero coupon bonds
cssclasses: academia
---

# Appendix B: Zero Rates, Forward Rates, and Zero-Coupon Yield Curves

The  $n$ -year zero-coupon interest rate is the rate of interest earned on an investment that starts today and lasts for  $n$  years. All the interest and principal is realized at the end of  $n$  years. There are no intermediate payments. The  $n$ -year zero-coupon interest rate is sometimes also referred to as the  $n$ -year spot interest rate, the  $n$ -year zero rate, or just the  $n$ -year zero. The zero rate as a function of maturity is referred to as the zero curve. Suppose a five-year zero rate with continuous compounding is quoted as  $5\%$  per annum. (See Appendix A for a discussion of compounding frequencies.) This means that  $\$ 100$ , if invested for five years, grows to

$$
1 0 0 \times e ^ {0. 0 5 \times 5} = 1 2 8. 4 0
$$

A forward rate is the future zero rate implied by today's zero rates. Consider the zero rates shown in Table B.1. The forward rate for the period between six months and one year is  $6.6\%$ . This is because  $5\%$  for the first six months combined with  $6.6\%$  for the next six months gives an average of  $5.8\%$  for the first year. Similarly, the forward rate for the period between 12 months and 18 months is  $7.6\%$ , because this rate, when combined with  $5.8\%$  for the first 12 months, gives an average of  $6.4\%$  for the 18 months. In general, the forward rate  $F$  for the period between times  $T_{1}$  and  $T_{2}$  is

$$
F = \frac {R _ {2} T _ {2} - R _ {1} T _ {1}}{T _ {2} - T _ {1}} \tag {B.1}
$$

Table B.1 Zero Rates

<table><tr><td>Maturity (years)</td><td>Zero Rate (\%) (cont. comp.)</td></tr><tr><td>0.5</td><td>5.0</td></tr><tr><td>1.0</td><td>5.8</td></tr><tr><td>1.5</td><td>6.4</td></tr><tr><td>2.0</td><td>6.8</td></tr></table> where  $R_{1}$  is the zero rate for maturity  $T_{1}$  and  $R_{2}$  is the zero rate for maturity  $T_{2}$ . This formula is exactly true when rates are measured with continuous compounding and approximately true for other compounding frequencies. The results from using this formula on the rates in Table B.1 are in Table B.2. For example, substituting  $T_{1} = 1.5$ ,  $T_{2} = 2.0$ ,  $R_{1} = 0.064$ , and  $R_{2} = 0.068$  gives  $F = 0.08$  showing that the forward rate for the period between 18 months and 24 months is  $8\%$ .

Investors who think that future interest rates will be markedly different from forward rates have no difficulty in finding trades that reflect their beliefs. Consider an investor who can borrow or lend at the rates in Table B.1. Suppose the investor thinks that the six-month interest rates will not change much over the next two years. The investor can borrow six-month funds and invest for two years. The six-month borrowings can be rolled over at the end of 6, 12, and 18 months. If interest rates do stay about the same, this strategy will yield a profit of about  $1.8\%$  per year because interest will be received at  $6.8\%$  and paid at  $5\%$ . This type of trading strategy is known as a yield curve play. The investor is speculating that rates in the future will be quite different from the forward rates shown in Table B.2.

Robert Citron, the treasurer at Orange County, used yield curve plays similar to the one we have just described very successfully in 1992 and 1993. The profit from Mr. Citron's trades became an important contributor to Orange County's budget and he was re-elected. In 1994, he used the same strategy more aggressively. If short-term interest rates had remained the same or declined, he would have done very well. As it happened, interest rates rose sharply during 1994. On December 1, 1994, Orange County announced that its investment portfolio had lost 1.5 billion and several days later it filed for bankruptcy protection.

Table B.2 Forward Rates for Zero Rates in

Table B.1

<table><tr><td>Period (years)</td><td>Forward Rate (\%) (cont. comp.)</td></tr><tr><td>0.5 to 1.0</td><td>6.6</td></tr><tr><td>1.0 to 1.5</td><td>7.6</td></tr><tr><td>1.5 to 2.0</td><td>8.0</td></tr></table>

# B.1 Bond Pricing

Most bonds provide coupons periodically. The bond's principal (which is also known as its par value or face value) is received at the end of its life. The theoretical price of a bond can be calculated as the present value of all the cash flows that will be received by the owner of the bond. The most accurate approach is to use a different zero rate for each cash flow. To illustrate this, consider the situation where zero rates are as in Table B.1. Suppose that a two-year bond with a principal of 100 provides coupons at the rate of 6\% per annum semiannually. To calculate the present value of the first coupon of \$3, we discount it at 5\% for six months; to calculate the present value of the second coupon of \$3, we discount it at 5.8\% for one year; and so on. The theoretical price of the bond is therefore:

$$
3 e ^ {- 0. 0 5 \times 0. 5} + 3 e ^ {- 0. 0 5 8 \times 1. 0} + 3 e ^ {- 0. 0 6 4 \times 1. 5} + 1 0 3 e ^ {- 0. 0 6 8 \times 2. 0} = 9 8. 3 9
$$ or 98.39.


# B.2 Bond Yields

A bond's yield is the discount rate that, when applied to all cash flows, gives a bond price equal to its market price. Suppose that the theoretical price of the bond we have been considering, 98.39, is also its market value (i.e., the market's price of the bond is in exact agreement with the data in Table B.1). If \gamma is the yield on the bond, expressed with continuous compounding, we must have:

$$

3 e ^ {- \gamma \times 0. 5} + 3 e ^ {- \gamma \times 1. 0} + 3 e ^ {- \gamma \times 1. 5} + 1 0 3 e ^ {- \gamma \times 2. 0} = 9 8. 3 9

$$

This equation can be solved using Excel's Solver or in some other way to give  $\gamma = 6.76\%$ .

# B.3 Treasury Rates

Treasury rates are the rates an investor earns on Treasury bills and Treasury bonds. These are the instruments used by a government to borrow in its own currency. Japanese Treasury rates are the rates at which the Japanese government borrows in yen; U.S. Treasury rates are the rates at which the U.S. government borrows in U.S. dollars; and so on.

# B.4 Determining Treasury Zero Rates

One way of determining Treasury zero rates such as those in Table B.1 is to observe the yields on "strips." These are zero-coupon bonds that are artificially created by traders when they sell the coupons on a Treasury bond separately from the principal.

Table B.3 Rates After Two-Year Rate Has Been Determined Using the Bootstrap Method

<table><tr><td>Maturity (years)</td><td>Zero Rate (\%) (cont. comp.)</td></tr><tr><td>0.5</td><td>5.00</td></tr><tr><td>1.0</td><td>5.80</td></tr><tr><td>1.5</td><td>6.40</td></tr><tr><td>2.0</td><td>6.80</td></tr><tr><td>2.5</td><td>??</td></tr></table>

Another way of determining Treasury zero rates is from regular Treasury bills and bonds. The most popular approach is known as the bootstrap method. This involves working from short maturities to successively longer maturities matching prices. Suppose that Table B.3 gives the Treasury rates determined so far and that a 2.5-year bond providing a coupon of  $8\%$  sells for  $102 per$ 100 of principal. We would determine the 2.5-year zero-coupon interest rate as the rate which, when used in conjunction with the rates in Table B.3, gives the correct price for this bond. This involves solving

$$

4 e ^ {- 0. 0 5 \times 0. 5} + 4 e ^ {- 0. 0 5 8 \times 1. 0} + 4 e ^ {- 0. 0 6 4 \times 1. 5} + 4 e ^ {- 0. 0 6 8 \times 2. 0} + 1 0 4 e ^ {- R \times 2. 5} = 1 0 2

$$ which gives  $R = 7.05\%$ . The zero curve is usually assumed to be linear between the points that are determined by the bootstrap method. (In our example, the 2.25-year zero rate would be  $6.9025\%$ .) It is also assumed to be constant prior to the first point and beyond the last point. The zero curve for our example is shown in Figure B.1.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f92d6a55-cea9-43e0-894c-41ef6fed0a93/68ffa172b2bfb2683ae3e401e90cb993fe249c4c56c1dceed31627a13690ec89.jpg)

Figure B.1 Zero Curve for Data in Table B.3

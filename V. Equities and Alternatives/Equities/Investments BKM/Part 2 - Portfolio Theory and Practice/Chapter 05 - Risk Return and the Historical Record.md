---
aliases:
  - Risk, Return, and the Historical Record
tags:
key_concepts:
parent_directory: V. Equities and Alternatives/Equities/Investments BKM/Part 2 - Portfolio Theory and Practice
cssclasses: academia
title: "Chapter 5: Risk, Return, and the Historical Record"
---

# Risk, Return, and the Historical Record

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/da31ae4406210f7c5bba10f1fd6ab71f904335747be147794b1df3b0455237c9.jpg)

RISK CAN BE as important to investors as the expected return on their portfolios. Unfortunately, while we have theories about the proper relationship between risk and expected return, there is no theory about the levels of risk we should find in the marketplace. We can at best estimate from historical experience the level of risk that investors are likely to confront.

This situation is to be expected because prices of investment assets fluctuate in response to news about the fortunes of corporations, as well as to macroeconomic developments. There is no theory about the frequency and importance of such events; hence, we cannot determine a "natural" level of risk.

Compounding this difficulty is the fact that we can directly observe neither expected return nor risk. We observe only realized rates of return. These provide noisy estimates of the expected returns and risk that investors actually anticipated. Moreover, in learning from a historical record, we face what has become known as the "black swan" problem. No matter how long the historical record, there is never a guarantee that it exhibits the worst (or best) that nature might throw at us in the future.


In this chapter, we present tools for estimating expected returns and risk from the historical record. We begin with interest rates and investments in safe assets and examine the history of risk-free investments in the U.S. over the last 95 years. We also see how nominal interest rates depend on expected inflation rates.

Moving to risky assets, we begin with scenario analysis of risky investments and the data inputs necessary to conduct it. With this in mind, we develop the statistical tools needed to make inferences from historical time series of portfolio returns. We summarize the empirical evidence on the risk-reward trade-off over most of the last century and consider as well the incidence of extreme events confronting investors.

# 5.1 Measuring Returns over Different Holding Periods

Throughout the chapter, we will examine and compare rates of return on various securities. Before we can do this properly, however, we first need to learn how to compare investment returns over different holding periods.

We start with the simplest security, a zero-coupon bond that pays its owner only one cash flow, for example,  \$100, on the maturity date. The investor buys the bond for less than face value (face value is just the terminology for the ultimate payoff value of the bond, in this case,\$ 100), so the total return is the difference between the initial purchase price and the ultimate payment of face value.

If we call  $P(T)$  the price paid today for a zero with maturity date  $T$ , then over the life of the bond, the value of the investment grows by the multiple  $100 / P(T)$ . The percentage increase in the value of the investment is

$$ r (T) = \frac {1 0 0}{P (T)} - 1 \tag {5.1}
$$

We can equivalently write this return over the holding period as

$$
\text {H o l d i n g p e r i o d r e t u r n} = r (T) = \frac {\text {P r i c e i n c r e a s e} + \text {I n c o m e}}{P (T)} = \frac {1 0 0 - P (T) + 0}{P (T)}
$$

It is no surprise that if you are willing to invest your money for longer periods, you should expect to earn higher total returns. The zero-coupon bond with longer maturity will have a lower present value and a lower price, therefore providing a higher total return. But this observation raises the obvious question of how we should compare returns on investments with differing horizons. We must re-express each total return as a rate of return over a common period. We typically express an investment return as an effective annual rate (EAR), defined as the percentage increase in funds per year.

Table 5.1 illustrates. Column 2 presents prices of zero-coupon bonds with  \ {100}  face value and various maturities. The total return on each security is calculated from Equation 5.1 and presented in column 3. The final column re-expresses the total return as an effective annual return.

For the one-year investment, the EAR is simply the total return on the bond, the percentage increase in the value of the investment, which is  $4.69\%$ . For investments that last less than one year, let's say six months, we would compound the half-year return. In the top row of the table (labeled half-year), we see that the semiannual return is  $2.71\%$ , so the EAR, the annual rate at which the investment increases, is found by compounding as follows:  $1 + \mathrm{EAR} = 1.0271^{2} = 1.0549$ , implying that  $\mathrm{EAR} = 5.49\%$ .

<table><tr><td>Horizon, T</td><td>Price, P(T)</td><td>r(T) = 100 / (P(T) - 1)</td><td>EAR over Given Horizon</td></tr><tr><td>Half-year</td><td>\$97.36</td><td>100/97.36 - 1 = 0.0271 = 2.71\%</td><td>(1 + .0271)2 - 1 = .0549</td></tr><tr><td>1 year</td><td>\$95.52</td><td>100/95.52 - 1 = 0.0469 = 4.69\%</td><td>(1 + .0469) - 1 = 0.0469</td></tr><tr><td>25 years</td><td>23.30</td><td>100/23.30 - 1 = 3.2918 = 329.18\%</td><td>(1 + 3.2918)1/25 - 1 = .060</td></tr></table>

# Table 5.1

Annualized rates of return. Prices and returns on zero-coupon bonds with face value of 100 and different maturities.

For investments longer than a year, the convention is to express the EAR as the annual rate that would compound to the same value as the actual investment. For example, the investment in the 25-year bond in Table 5.1 grows by its maturity by a multiple of 4.2918 (i.e.,  $1 + 3.2918$ ), so its EAR is found by solving

$$
(1 + \mathrm {E A R}) ^ {2 5} = 4. 2 9 1 8
$$

$$
1 + \mathrm {E A R} = 4. 2 9 1 8 ^ {1 / 2 5} = 1. 0 6 0 0
$$

Therefore,  $\mathrm{EAR} = 0.06$  or  $6\%$ .

# Annual Percentage Rates

Effective annual rates explicitly account for compound interest. In contrast, rates on short-term investments (by convention, with holding periods less than a year), are in practice often annualized using simple interest that ignores compounding. These are called annual percentage rates, or APRs. For example, the APR reported on your credit card is the monthly interest rate you pay on outstanding balances multiplied by 12.

With  $n$  compounding periods per year, we can find the EAR from the APR by first computing the per-period rate as  $\mathrm{APR} / n$  and then compounding for  $n$  periods:

$$
1 + \mathrm {E A R} = \left(1 + \frac {\mathrm {A P R}}{n}\right) ^ {n} \tag {5.2}
$$

Equivalently, we can find the APR from the EAR by first finding the per-period rate (the term in square brackets in Equation 5.3), and then multiplying by the number of periods in a year:

$$
\mathrm {A P R} = n \times \left[ (1 + \mathrm {E A R}) ^ {1 / n} - 1 \right] \tag {5.3}
$$

To illustrate, in the middle columns of Table 5.2 we use Equation 5.3 to solve for the APR corresponding to an effective annual return of  $5.8\%$  with various compounding periods. Conversely, in the set of columns on the right, we use Equation 5.2 to find the EAR implied by an APR of  $5.8\%$ .

# Example 5.1 EAR versus APR

Suppose you must pay  $1.5\%$  interest per month on your outstanding credit card balance. The APR would be reported as  $1.5\% \times 12 = 18\%$ , but the effective annual rate is higher,  $19.56\%$ , because  $1.015^{12} - 1 = .1956$ . Until you pay off your outstanding balance, it will increase each month by the multiple 1.015, so after 12 months, the balance will increase by  $1.015^{12}$ . This is why we call the EAR an effective rate.

# Continuous Compounding

It is evident from Table 5.2 that the difference between APR and EAR grows with the frequency of compounding. (Why is this not surprising?) This raises the question: How far will these two rates diverge as the compounding frequency continues to grow? As  $n$  gets ever larger in Equation 5.2, we effectively approach continuous compounding (CC), and the relation of EAR to the annual percentage rate, denoted by  $r_{cc}$  for the continuously compounded case, is given by the exponential function

$$
1 + \operatorname {E A R} = \exp \left(r _ {c c}\right) = e ^ {r _ {c c}} \tag {5.4}
$$ where  $e$  is approximately 2.71828.


<table><tr><td rowspan="2">Compounding
Period</td><td rowspan="2">T</td><td colspan="2">EAR = 0.058</td><td colspan="2">APR = 0.058</td></tr><tr><td>r(T)</td><td>APR = n[(1 + EAR)1/n - 1]</td><td>r(T)</td><td>EAR = (1 + APR/n)ⁿ - 1</td></tr><tr><td>1 year</td><td>1.0000</td><td>0.0580</td><td>0.05800</td><td>0.0580</td><td>0.05800</td></tr><tr><td>6 months</td><td>0.5000</td><td>0.0286</td><td>0.05718</td><td>0.0290</td><td>0.05884</td></tr><tr><td>1 quarter</td><td>0.2500</td><td>0.0142</td><td>0.05678</td><td>0.0145</td><td>0.05927</td></tr><tr><td>1 month</td><td>0.0833</td><td>0.0047</td><td>0.05651</td><td>0.0048</td><td>0.05957</td></tr><tr><td>1 week</td><td>0.0192</td><td>0.0011</td><td>0.05641</td><td>0.0011</td><td>0.05968</td></tr><tr><td>1 day</td><td>0.0027</td><td>0.0002</td><td>0.05638</td><td>0.0002</td><td>0.05971</td></tr><tr><td>Continuous</td><td></td><td colspan="2">rcc = ln(1 + EAR) = 0.05638</td><td colspan="2">EAR = exp(rcc) - 1 = 0.05971</td></tr></table>

# Table 5.2

Annual percentage rates (APR) and effective annual rates (EAR). In the first set of columns, we hold the equivalent annual rate (EAR) fixed at  $5.8\%$  and find APR for each holding period. In the second set of columns, we hold APR fixed at  $5.8\%$  and solve for EAR.

eXcel

Please visit us at www.mhhe.com/Bodie13e


To find  $r_{cc}$  from the effective annual rate, we solve Equation 5.4 for  $r_{cc}$  as follows:

$$
\ln (1 + \mathrm {E A R}) = r _ {c c}
$$ where  $\ln (\bullet)$  is the natural logarithm function, the inverse of  $\exp (\bullet)$ . Both the exponential and logarithmic functions are available in Excel and are called  $\mathrm{EXP}(\bullet)$  and  $\mathrm{LN}(\bullet)$ , respectively.


# Example 5.2 Continuously Compounded Rates

The continuously compounded annual percentage rate,  $r_{cc}$ , that provides an EAR of  $5.8\%$  is  $5.638\%$  (see Table 5.2). This is virtually the same as the APR for daily compounding. But for less frequent compounding, for example, semiannually, the APR necessary to provide the same EAR is noticeably higher,  $5.718\%$ . With less frequent compounding, a higher APR is necessary to provide an equivalent effective return.

While continuous compounding may at first seem to be a mathematical nuisance, working with such rates can sometimes simplify calculations of expected return and risk. For example, given a continuously compounded rate, the total return for any period  $T$ ,  $r_{cc}(T)$ , is simply  $\exp (T\times r_{cc})$ . In other words, the total return scales up in direct proportion to the time period,  $T$ . This is far simpler than working with the exponents that arise using discrete period compounding.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/27ab3bc28036da94707ab3b4695e3b405f2451d58d121a8391f0019ff6a7822f.jpg)

# Concept Check 5.1

A bank offers two alternative interest schedules for a savings account of 100,000 locked in for 3 years: (a) a monthly rate of 1\% and (b) an annually, continuously compounded rate, r_{cc}, of 12\%. Which alternative should you choose?

# 5.2 Interest Rates and Inflation Rates

The level of interest rates is among the most important macroeconomic factors guiding one's investment analysis. Interest rates directly determine expected returns in the fixed-income market. If your expectation is that rates will increase by more than the consensus view, you will want to shy away from longer term fixed-income securities. Similarly, increases in interest rates tend to be bad news for the stock market.

Unfortunately, forecasting interest rates is one of the most notoriously difficult parts of applied macroeconomics. Nonetheless, we do have a good understanding of the fundamental factors that determine the level of interest rates:

1. The supply of funds from savers, primarily households.
2. The demand for funds from businesses to be used to finance investments in plant, equipment, and inventories (real assets or capital formation).
3. The government's net demand for funds as modified by actions of the Federal Reserve Bank.
4. The expected rate of inflation.

We begin by distinguishing real from nominal interest rates.

# Real and Nominal Rates of Interest

When prices of goods and services change, we need to distinguish between nominal and real rates of return. When you invest money in a bank account, for example, you are typically quoted a nominal interest rate. This is the rate at which the dollar value of your account grows. In contrast, the real interest rate is the rate at which the goods you can buy with your funds grows.

To illustrate, suppose that one year ago you deposited  \$1,000 in a 1-year bank deposit guaranteeing a rate of interest of 10\%$ . You are about to collect 1,100 in cash. What is the real return on your investment? That depends on what your money can buy today relative to what you could buy a year ago. The consumer price index (CPI) measures purchasing power by averaging the prices of goods and services in the consumption basket of an average urban family of four.

Suppose the rate of inflation (denoted by  $i$ ) is running at  $i = 6\%$ . So a loaf of bread that cost \$1 last year might cost \$1.06 this year. Last year you could buy 1,000 loaves with your funds. After investing for a year, you can buy $1,100/$1.06 = 1,038 loaves. The rate at which your purchasing power has increased is therefore 3.8\%.

Part of your earnings have been offset by the reduction in the purchasing power of the dollars you will receive at the end of the year. With a  $10\%$  interest rate, after you net out the  $6\%$  reduction in the purchasing power of money, you are left with a net increase in purchasing power of almost  $4\%$ .

More generally, we find the proportional increase in purchasing power by dividing the growth of invested funds by the growth of prices. If we call  $r_{\mathrm{nom}}$  the nominal interest rate,  $r_{\mathrm{real}}$  the real rate, and  $i$  the inflation rate, then we conclude

$$
1 + r _ {\text {r e a l}} = \frac {1 + r _ {\text {n o m}}}{1 + i} = \frac {1 . 1 0}{1 . 0 6} = 1. 0 3 8 \tag {5.5}
$$

Equation 5.5 can be rearranged to solve for the real rate as:

$$ r _ {\text {r e a l}} = \frac {r _ {\text {n o m}} - i}{1 + i} \tag {5.6}
$$

A common approximation to this relation is

$$ r _ {\text {r e a l}} \approx r _ {\text {n o m}} - i \tag {5.7}
$$

In words, the real rate of interest is the nominal rate reduced by the loss of purchasing power resulting from inflation. This approximation rule overstates the actual real rate by the multiple  $1 + i$ .

# Example 5.3 Approximating the Real Rate

If the nominal interest rate on a 1-year CD is  $8\%$ , and you expect inflation to be  $5\%$  over the coming year, then using the approximation formula, you expect the real rate of interest to be  $r_{\mathrm{real}} = 8\% - 5\% = 3\%$ . Using the exact formula, the real rate is  $r_{\mathrm{real}} = \frac{.08 - .05}{1 + .05} = .0286$ , or  $2.86\%$ . Therefore, the approximation overstates the expected real rate by  $14\%$  (14 basis points). The approximation is more accurate for small inflation rates and is perfectly exact for continuously compounded rates. $^2$

Conventional fixed income investments, for example, bank certificates of deposit, promise a nominal rate of interest. However, because future inflation is uncertain, the real rate of return that you will earn is risky even if the nominal rate is risk-free. Thus, you can only infer the expected real rate on these investments by adjusting the nominal rate for your expectation of the rate of inflation.

# The Equilibrium Real Rate of Interest

Although there are many different interest rates economywide (as many as there are types of debt securities), these rates tend to move together, so economists frequently talk as if there were a single representative rate. Three basic factors—supply, demand, and government actions—determine the real interest rate. The nominal interest rate is the real rate plus the expected rate of inflation.

Figure 5.1 shows a downward-sloping demand curve and an upward-sloping supply curve. On the horizontal axis, we measure the quantity of funds, and on the vertical axis, we measure the real rate of interest.

The supply curve slopes up from left to right because the higher the real interest rate, the greater the supply of household savings. The assumption is that at higher real interest rates, households will choose to postpone some current consumption and set aside or invest more of their disposable income for future use.

The demand curve slopes down from left to right because businesses will want to invest in more physical capital when the real interest rate on the funds needed to finance those projects is lower. Equivalently, project net present value is higher when the discount rate is lower, so more projects are worth pursuing.

Equilibrium is at the point of intersection of the supply and demand curves, point  $E$  in Figure 5.1.

For continuously compounded rates, Equation 5.7 is perfectly accurate. Because  $\ln (x / y) = \ln (x) - \ln (y)$ , the continuously compounded real rate of return,  $r_{cc}(\mathrm{real})$ , can be derived from the effective annual real rate,  $r_{\mathrm{real}}$ , as

$$ r _ {c c} (\text {r e a l}) = \ln (1 + r _ {\text {r e a l}}) = \ln \left(\frac {1 + r _ {\text {n o m}}}{1 + i}\right) = \ln (1 + r _ {\text {n o m}}) - \ln (1 + i) = r _ {c c} (\text {n o m}) - i _ {c c}
$$

The government and the central bank (the Federal Reserve) can shift these supply and demand curves either to the right or to the left through fiscal and monetary policies. For example, an increase in the government's budget deficit increases the government's borrowing demand and shifts the demand curve to the right, which causes the equilibrium real interest rate to rise to point  $E'$ . The Fed can offset such a rise through an expansionary monetary policy, which will shift the supply curve to the right.

Thus, although the fundamental determinants of the real interest rate are the propensity of households to save and the expected profitability of investment in physical capital, the real rate can be affected as well by government fiscal and monetary policies.


![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/77bff750ded46d01b4cc16b5eafda80992a9124aee3100943ed32200609fc049.jpg)
Figure 5.1 Determination of the equilibrium real rate of interest

# Interest Rates and Inflation

Equation 5.7 tells us that the nominal rate of return on an asset is approximately equal to the real rate plus inflation. Because investors should be concerned with real returns— their increase in purchasing power—they will demand higher nominal interest rates when expected inflation is higher. The nominal rate must rise along with inflation to maintain the expected real return.

Irving Fisher (1930) argued that the nominal rate ought to increase one-for-one with expected inflation,  $E(i)$ . The so-called Fisher hypothesis is

$$ r _ {\text {n o m}} = r _ {\text {r e a l}} + E (i) \tag {5.8}
$$

The Fisher hypothesis implies that when real rates are stable, changes in nominal rates ought to predict changes in inflation rates. Suppose the real rate of interest is  $2\%$ , and expected inflation is  $4\%$ , so that the nominal interest rate is about  $6\%$ . If expected inflation rises to  $5\%$ , the nominal interest rate should climb to roughly  $7\%$ . The increase in the nominal rate offsets the increase in expected inflation, giving investors an unchanged growth rate of purchasing power of  $2\%$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/8191c9e681368fc437f408917f9875ef29b155b805115b34a99dd15020fe9c96.jpg)

# Concept Check 5.2 a. Suppose the real interest rate is  $3\%$  per year and the expected inflation rate is  $8\%$ . According to the Fisher hypothesis, what is the nominal interest rate?

b. Suppose the expected inflation rate rises to  $10\%$ , but the real rate is unchanged. What happens to the nominal interest rate?

# Taxes and the Real Rate of Interest

Tax liabilities are based on nominal income and the tax rate is determined by the investor's tax bracket. Congress recognized the resultant "bracket creep" (when nominal income grows due to inflation and pushes taxpayers into higher brackets) and mandated index-linked tax brackets in the Tax Reform Act of 1986.

However, index-linked tax brackets do not provide relief from the effect of inflation on the taxation of savings. Given a tax rate  $(t)$  and a nominal interest rate,  $r_{\mathrm{nom}}$ , the after-tax interest rate is  $r_{\mathrm{nom}}(1 - t)$ . The real after-tax rate is approximately the after-tax nominal rate minus the inflation rate:

$$ r _ {\text {n o m}} (1 - t) - i = \left(r _ {\text {r e a l}} + i\right) (1 - t) - i = r _ {\text {r e a l}} (1 - t) - i t \tag {5.9}
$$

Equation 5.9 tells us that, because you pay taxes on even the portion of interest earnings that is merely compensation for inflation, your after-tax real return falls by the tax rate times the inflation rate. If, for example, you are in a  $30\%$  tax bracket and your investments provide a nominal return of  $12\%$  while inflation runs at  $8\%$ , your before-tax real rate is approximately  $4\%$ , and you should, in an inflation-protected tax system, net an after-tax real return of  $4\%(1 - .3) = 2.8\%$ . But the tax code does not recognize that the first  $8\%$  of your return is only compensation for inflation—not real income. Your after-tax nominal return is  $12\%(1 - .3) = 8.4\%$ , so your after-tax real interest rate is only  $8.4\% - 8\% = .4\%$ . As predicted by Equation 5.9, your after-tax real return has fallen by  $it = 8\% \times .3 = 2.4\%$ .

# Treasury Bills and Inflation, 1926-2021

The Fisher equation predicts that the nominal rate of interest should track the expected inflation rate, leaving the real rate relatively stable. But both the equilibrium real interest rate and the actual inflation rate evolve with some unpredictability. The nominal rate will inherit the uncertainty of both. What is the historical record?

Table 5.3 summarizes the history of returns on 1-month U.S. Treasury bills, the inflation rate, and the resultant real rate. You can find the entire post-1926 history of the monthly rates of these series in Connect (link to the material for Chapter 5).

The first set of columns of Table 5.3 presents average annual rates for three periods. The average interest rate over the more recent portion of our history, 1952-2021 (essentially the post-war period),  $4.14\%$ , was noticeably higher than in the earlier portion,  $0.95\%$ . The reason is inflation, the main driver of T-bill rates, which also had a noticeably higher average value,  $3.46\%$ , in the later portion of the sample than in the earlier period,  $1.80\%$ . Nevertheless, nominal interest rates in the recent period were still high enough to leave a higher average real rate,  $0.68\%$ , compared with a negative 48 basis points  $(-.48\%)$  for the earlier period.

Table 5.3
Statistics for T-bill rates, inflation rates, and real rates, 1927-2021.

<table><tr><td rowspan="2"></td><td colspan="3">Average Annual Rates</td><td colspan="3">Standard Deviation</td></tr><tr><td>T-Bills</td><td>Inflation</td><td>Real T-Bill</td><td>T-Bills</td><td>Inflation</td><td>Real T-Bill</td></tr><tr><td>Full sample</td><td>3.30</td><td>3.02</td><td>0.38</td><td>3.10</td><td>3.98</td><td>3.78</td></tr><tr><td>1927–1951</td><td>0.95</td><td>1.80</td><td>-0.48</td><td>1.24</td><td>6.06</td><td>6.34</td></tr><tr><td>1952–2021</td><td>4.14</td><td>3.46</td><td>0.68</td><td>3.14</td><td>2.84</td><td>2.27</td></tr></table>

Source: Annual rates of return from rolling over 1-month T-bills: Kenneth French; annual inflation rates: Bureau of Labor Statistics.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/be07c67785f69a4669c7b5d5aa4cace10d3d0693c1bdab9853bf90b23dfccab4.jpg)
Figure 5.2 Interest and inflation rates, 1927-2021.

Figure 5.2 shows why we divide the sample period at 1952. After that year, inflation is far less volatile, and, probably as a result, the nominal interest rate tracks the inflation rate with far greater precision, resulting in a far more stable real interest rate. This shows up as the dramatic reduction in the standard deviation of the real rate documented in the last column of Table 5.3. Whereas the standard deviation is  $6.34\%$  in the early part of the sample, it is only  $2.27\%$  in the later portion. The lower standard deviation of the real rate in the post-1951 period reflects a similar decline in the standard deviation of the inflation rate. We conclude that the Fisher relation appears to work far better when inflation is itself more predictable and investors can more accurately gauge the nominal interest rate they require to provide an acceptable real rate of return.

In that regard, notice the spike in the spread between inflation and the T-bill rate in the last year of our sample, 2021. In the wake of the COVID pandemic, both supply chain disruptions and aggressive government policies to stimulate the economy led to unexpected levels of inflation, the highest since the 1980s. The real rate of return on Treasury bills in 2021 was roughly  $-7\%$ , a historically low and undoubtedly unexpected value.

# 5.3 Risk and Risk Premiums

Any investment involves some uncertainty about future holding-period returns, and in many cases that uncertainty is considerable. Sources of investment risk range from macroeconomic fluctuations, to the changing fortunes of various industries, to firm-specific unexpected developments. In this section, we will begin thinking about how to measure this risk.

# Holding-Period Returns

You are considering investing in a mutual fund. The fund currently sells for 100 per share. With an investment horizon of one year, the realized rate of return on your investment will depend on (a) the price per share at year's end and (b) the dividends you will collect over the year.

Suppose the end-of-year price per share is  \$110 and cash dividends over the year amount to\$ 4. The realized return, called the holding-period return, or HPR (in this case, the holding period is one year), is defined as

$$
\mathrm {H P R} = \frac {\text {E n d i n g p r i c e o f a s h a r e - B e g i n n i n g p r i c e + C a s h d i v i d e n d}}{\text {B e g i n n i n g p r i c e}} \tag {5.10}
$$

Here we have

$$
\mathrm{HPR} = \frac{\mathbb{S}110 - \mathbb{S}100 + \mathbb{S}4}{\mathbb{S}100} = .14,\text{or} 14\%
$$

The percent return from dividends is called the dividend yield, and so dividend yield plus the rate of capital gains equals HPR.

# Expected Return and Standard Deviation

There is considerable uncertainty about share prices one year from now, so you cannot be sure about your eventual HPR. We can organize our beliefs about possible outcomes by positing various economic scenarios as well as their probabilities. Therefore, this approach is called scenario analysis. We present an illustrative scenario analysis in columns A through E of Spreadsheet 5.1. The list of possible HPRs along with their associated probabilities is called the probability distribution of the HPR.

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td><td>H</td><td>I</td></tr><tr><td>1</td><td colspan="9"></td></tr><tr><td>2</td><td rowspan="3" colspan="4">Purchase Price = 100</td><td rowspan="3" colspan="5">T-Bill Rate = 0.04</td></tr><tr><td>3</td></tr><tr><td>4</td></tr><tr><td>5</td><td rowspan="3">State of the Economy</td><td rowspan="3">Probability</td><td rowspan="3">Year-End Price</td><td rowspan="3">Cash Dividends</td><td rowspan="3">HPR</td><td rowspan="3">Deviations from Mean</td><td rowspan="3">Squared Deviations from Mean</td><td rowspan="3">Excess Returns</td><td rowspan="3">Squared Deviations from Mean</td></tr><tr><td>6</td></tr><tr><td>7</td></tr><tr><td>8</td><td>Boom</td><td>0.25</td><td>126.50</td><td>4.50</td><td>0.3100</td><td>0.2124</td><td>0.0451</td><td>0.2700</td><td>0.0451</td></tr><tr><td>9</td><td>Normal growth</td><td>0.45</td><td>110.00</td><td>4.00</td><td>0.1400</td><td>0.0424</td><td>0.0018</td><td>0.1000</td><td>0.0018</td></tr><tr><td>10</td><td>Mild recession</td><td>0.25</td><td>89.75</td><td>3.50</td><td>-0.0675</td><td>-0.1651</td><td>0.0273</td><td>-0.1075</td><td>0.0273</td></tr><tr><td>11</td><td>Severe recession</td><td>0.05</td><td>46.00</td><td>2.00</td><td>-0.5200</td><td>-0.6176</td><td>0.3815</td><td>-0.5600</td><td>0.3815</td></tr><tr><td>12</td><td>Expected Value (mean)</td><td colspan="3">SUMPRODUCT(B8:B11, E8:E11) =</td><td colspan="5">0.0976</td></tr><tr><td>13</td><td>Variance of HPR</td><td colspan="5">SUMPRODUCT(B8:B11, G8:G11) =</td><td colspan="3">0.0380</td></tr><tr><td>14</td><td>Standard Deviation of HPR</td><td colspan="5">SQRT(G13) =</td><td colspan="3">0.1949</td></tr><tr><td>15</td><td>Risk Premium</td><td colspan="5">SUMPRODUCT(B8:B11, H8:H11) =</td><td colspan="3">0.0576</td></tr><tr><td>16</td><td>Standard Deviation of Excess Return</td><td colspan="7">SQRT(SUMPRODUCT(B8:B11, I8:I11)) =</td><td>0.1949</td></tr></table>

# Spreadsheet 5.1

Scenario analysis of holding-period return of the mutual fund

How can we characterize this probability distribution? To start, we measure the expected or mean rate of return,  $E(r)$ , and the standard deviation,  $\sigma$ . The expected rate of return is a probability-weighted average of the rates of return in each scenario. Calling  $p(s)$  the probability of each scenario and  $r(s)$  the HPR in each scenario, where scenarios are labeled or "indexed" by  $s$ , we write the expected return as

$$
E (r) = \sum_ {s} p (s) r (s) \tag {5.11}
$$

Applying this formula to the data in Spreadsheet 5.1, the expected rate of return on the fund is

$$
E (r) = (. 2 5 \times . 3 1) + (. 4 5 \times . 1 4) + [. 2 5 \times (-. 0 6 7 5) ] + [. 0 5 \times (-. 5 2) ] = . 0 9 7 6
$$

Spreadsheet 5.1 shows that this sum can be evaluated easily in Excel, using the SUMPRODUCT function, which first calculates the products of a series of number pairs, and then sums the products. Here, the number pair is the probability of each scenario and the rate of return. For example, SUMPRODUCT(B8:B11,E8:E11) multiplies each element of the first column specified (column B) by the corresponding element of the second column (column E), and then adds up each of those products. In Spreadsheet 5.1, each of these products would be the probability of each scenario times the holding period return in that scenario. The sum of those products is the expected return (see Equation 5.11).

However, the investment in the fund is risky and the actual return may be (a lot) more or less than its mean value. In the best-case boom scenario, the return will be better,  $31\%$ , but in a severe recession, the return will be a disappointing  $-52\%$ . How can we quantify this uncertainty?

The "surprise" return in any scenario is the difference between the actual return and the expected return. For example, in a boom, the surprise is  $31\% - E(r) = 31\% - 9.76\% = 21.24\%$ . In a severe recession, the surprise is  $-52\% - E(r) = -52\% - 9.76\% = -61.76\%$ .

We will measure investment uncertainty using the typical magnitude of deviations of actual returns around the mean return. However, to prevent positive deviations from canceling out with negative ones, we start with squared deviations from the expected return because squared deviations are all positive. The expected value of those squared deviations (the expected squared "surprise" across scenarios) is called variance, which we denote as  $\sigma^2$ , and calculate as:

$$
\operatorname {V a r} (r) = \sigma^ {2} = \sum_ {s} p (s) [ r (s) - E (r) ] ^ {2} \tag {5.12}
$$

Therefore, in our example,

$$
\begin{array}{l} \sigma^ {2} = . 2 5 (. 3 1 -. 0 9 7 6) ^ {2} +. 4 5 (. 1 4 -. 0 9 7 6) ^ {2} +. 2 5 (-. 0 6 7 5 -. 0 9 7 6) ^ {2} \\ + . 0 5 (-. 5 2 -. 0 9 7 6) ^ {2} = . 0 3 8 0 \\ \end{array}
$$

This value is calculated in cell G13 of Spreadsheet 5.1 using the SUMPRODUCT function. Specifically, SUMPRODUCT(B8:B11,G8:G11) multiplies the probability of each scenario by the squared deviation from the mean in that scenario (column G), adds up those terms, and thus provides the variance of returns (Equation 5.12).

When we square deviations from the mean, we change units. To get back to original units, we calculate the standard deviation as the square root of variance. Standard deviation is calculated in cell G14 as

$$
\sigma = \sqrt {.0380} = .1949 = 19.49 \%
$$

Clearly, what would trouble potential investors in the fund is the downside risk of a crash or poor market, not the upside potential of a good or excellent market. The standard deviation of the rate of return does not distinguish between good or bad surprises; it treats both simply as deviations from the mean. Nevertheless, as long as the probability distribution is more or less symmetric about the mean,  $\sigma$  is a reasonable measure of risk. In the special case where we can assume that the probability distribution is normal—represented by the well-known bell-shaped curve— $E(r)$  and  $\sigma$  completely characterize the distribution.


# Excess Returns and Risk Premiums

How much would you invest in the mutual fund? First, you must ask how much of an expected reward is offered for the risk that investment would entail.

We measure the reward as the difference between the expected HPR on the mutual fund and the risk-free rate, that is, the rate you would earn in risk-free assets such as T-bills, money market funds, or the bank. We call this difference the risk premium. The risk-free rate in our example is  $4\%$  per year, and the expected return on the fund is  $9.76\%$ , so the risk premium is  $5.76\%$  per year. The difference in any particular period between the actual rate of return on a risky asset and the risk-free rate is called the excess return. Therefore, the risk premium is the expected value of the excess return, and the standard deviation of the excess return is a measure of its risk.

The degree to which investors are willing to commit funds to stocks depends on their risk aversion. Investors are risk averse in the sense that, if the risk premium were zero, they would be unwilling to invest any money in stocks. In theory, there must always be a positive risk premium on stocks to induce risk-averse investors to hold the existing supply of stocks instead of placing all their money in risk-free assets.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/585e3c1422aa2d08c0694bde213f5ef2964b9abf2a35d4c127cb110a5d145763.jpg)

# Concept Check 5.3

You invest \$27,000 in a corporate bond selling for $900 per $1,000 par value. Over the coming year, the bond will pay interest of \$75 per 1,000 of par value. The price of the bond at the end of the year will depend on the level of interest rates prevailing at that time. You construct the following scenario analysis:

<table><tr><td>Interest Rates</td><td>Probability</td><td>Year-End Bond Price</td></tr><tr><td>Higher</td><td>0.2</td><td>850</td></tr><tr><td>Unchanged</td><td>0.5</td><td>915</td></tr><tr><td>Lower</td><td>0.3</td><td>985</td></tr></table>

Your alternative investment is a T-bill that yields a sure rate of return of  $5\%$ . Calculate the HPR for each scenario, the expected rate of return, and the risk premium on your investment. What is the expected end-of-year dollar value of your investment?

# The Reward-to-Volatility (Sharpe) Ratio

We can now begin to think about how to evaluate the performance of alternative portfolios. Specifically, what risk-return trade-off do they offer?

Investors presumably are interested in the expected excess return they can earn by shifting from T-bills into a risky portfolio, as well as the risk they would thereby incur. Even if the T-bill rate is not constant, we still know with certainty what nominal rate we will earn in any period if we purchase a bill and hold it to maturity. Other investments typically entail accepting some risk in return for the prospect of earning more than the safe T-bill rate. Investors price risky assets so that the risk premium will be commensurate with the risk of that expected excess return, and hence it's best to measure risk by the standard deviation of excess, not total, returns.


The importance of the trade-off between reward (the risk premium) and risk (as measured by standard deviation or SD) suggests that we measure the attraction of a portfolio by the ratio of its risk premium to the SD of its excess returns. This reward-to-volatility measure was first used extensively by William Sharpe and hence is commonly known as the Sharpe ratio. It is widely used to evaluate the performance of investment managers.

$$
\text {S h a r p e} = \frac {\text {R i s k p r e m i u m}}{\text {S D o f e x c e s s r e t u r n}} \tag {5.13}
$$

# Example 5.4 Sharpe Ratio

Take another look at Spreadsheet 5.1. The scenario analysis implied a risk premium of  $5.76\%$  and standard deviation of excess returns of  $19.49\%$ . This results in a Sharpe ratio of .30. (A warning: We will see in Chapter 7 that while the Sharpe ratio is an adequate measure of the risk-return trade-off for diversified portfolios, the subject of this chapter, it is inadequate when applied to individual assets such as shares of stock.)

# 5.4 The Normal Distribution

In Spreadsheet 5.1 we specified several economic scenarios, the likelihood of each, and the portfolio return in each scenario. These assumptions define the probability distribution of the rate of return. But how do evaluate whether our assumptions are reasonable? Surely, historical experience must provide some guidance, so let's start by taking a quick look at that history.

Figure 5.3 is the frequency distribution of monthly returns for the broad market index over the last 95 years, 1927-2021. We will have much to say about the specifics of this distribution shortly, but for now, we simply observe that it seems well described by the familiar bell-shaped curve of the normal distribution. This is one of the reasons that analysts commonly employ the assumption that market returns are at least approximately normally distributed. Let's begin, therefore, with a brief review of that distribution.

The normal distribution is central to the theory and practice of investments. Its plot is symmetric, with identical values for all three standard measures of "typical" results: the mean (the expected value discussed earlier), the median (the value above and below which we expect to observe  $50\%$  of the outcomes), and the mode (the most likely value).

Figure 5.4 illustrates a normal distribution with a mean of  $10\%$  and standard deviation (SD) of  $20\%$ . Notice that the probabilities are highest for outcomes near the mean and are significantly lower for outcomes far from the mean.

But what do we mean by an outcome "far" from the mean? A return  $15\%$  below the mean would hardly be noteworthy if typical volatility were high—for example, if the standard deviation of returns were  $20\%$ —but that same outcome would be highly unusual if the standard deviation were only  $5\%$ . For this reason, it is often useful to think about deviations from the mean in terms of how many standard deviations they represent. If the standard deviation is  $20\%$ , that  $15\%$  negative surprise would be only three-fourths of a standard deviation, unfortunate perhaps, but not uncommon. But if the standard deviation were only  $5\%$ , a  $15\%$  deviation would be a "three-sigma event," and quite rare.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/0460b9b9a3376a2653578b897a1a4a6df9b64dc57b1bd7499379695a8f903ef6.jpg)
Figure 5.3 Frequency distribution of monthly rate of return on the broad market index, 1927-2021.

# Example 5.5 Normal Distribution Function in Excel

Suppose the monthly rate of return on the S&P 500 is approximately normally distributed with a mean of  $1\%$  and standard deviation of  $6\%$ . What is the probability that the return on the index in any month will be negative? We can use Excel's built-in functions to quickly answer this question. The probability of observing an outcome less than some cutoff according to the normal distribution function is given as NORM.DIST(cutoff, mean, standard deviation, TRUE). In this case, we want to know the probability of an outcome below zero when the mean is  $1\%$  and the standard deviation is  $6\%$ , so we compute NORM.DIST(0, 1, 6, TRUE) = .4338. We could also use Excel's built-in standard normal function, NORM.S.DIST, which uses a mean of 0 and a standard deviation of 1, and ask for the probability of an outcome 1/6 of a standard deviation below the mean: NORM.S.DIST(-1/6, TRUE) = .4338.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/71784232497ab98d1f0f382c631a86dc519224cab6c74a8374309293889c2f21.jpg)

# Concept Check 5.4

What is the probability that the return on the index in Example 5.5 will be below  $-15\%$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/e8f0f2c1045f0278a3f8c736661d98e80fee590fa4fa5de4df7aa71874e563dd.jpg)
Figure 5.4 The normal distribution with mean  $10\%$  and standard deviation  $20\%$

Investment management is far more tractable when rates of return can be well approximated by the normal distribution. First, because the distribution is symmetric, the probability of any positive deviation above the mean is equal to that of a negative deviation of the same magnitude. Absent symmetry, the standard deviation would be an incomplete measure of risk. Second, the normal distribution belongs to a special family of distributions characterized as "stable" because of the following property: When assets with normally distributed returns are mixed to construct a portfolio, the portfolio return also is normally distributed. Third, the distribution is fully characterized by only two parameters (mean and SD). This greatly simplifies the task of assigning probabilities to possible scenarios. Fourth, when constructing portfolios of securities, we must account for the statistical dependence of returns across securities. Generally, such dependence is a complex, multilayered relationship. But when securities are normally distributed, the statistical relation between returns can be summarized with a single correlation coefficient.

How closely must actual return distributions fit the normal curve to justify its use in investment management? Clearly, the normal curve cannot be a perfect description of reality. For example, actual returns cannot be less than  $-100\%$ , which the normal distribution would not rule out. But this does not mean that the normal curve cannot still be useful. A similar issue arises in many other contexts. For example, birth weight is typically evaluated in comparison to a normal curve of newborn weights, although no baby is born with a negative weight. The normal distribution still is useful here because the SD of the weight is small relative to its mean, and the predicted likelihood of a negative weight would be too trivial to matter.[6]

In fact, the standard deviation is 511 grams while the mean is 3,958 grams. A negative weight would therefore be 7.74 standard deviations below the mean, and according to the normal distribution would have probability of only  $4.97 \times 10^{-15}$ . The issue of negative birth weight clearly isn't a practical concern.

In a similar spirit, we must identify criteria to determine the adequacy of the normality assumption for rates of return.

# 5.5 Deviations from Normality and Tail Risk

As we already noted (but you can't repeat it too often!), normality of excess returns hugely simplifies portfolio selection. Normality assures us that the standard deviation is a complete measure of risk and, hence, the Sharpe ratio is a complete measure of portfolio performance. Unfortunately, deviations from normality of asset returns are potentially significant and dangerous to ignore.

One potentially important departure from normality relates to any asymmetry in the probability distribution of returns. For example, what if large negative returns are more likely than large positive ones? The standard measure of this sort of asymmetry is called the skew of the distribution.

Just as variance is the average value of squared deviations from the average, skew is the average cubed deviation from the mean, expressed as a multiple of the third power of the standard deviation. (The ^ in the denominator indicates that we are calculating skew using an estimate of standard deviation.)

$$
\operatorname {S k e w} = \text {A v e r a g e} \left[ \frac {\left(R - \bar {R}\right) ^ {3}}{\hat {\sigma} ^ {3}} \right] \tag {5.14}
$$

When negative deviations are raised to an odd power, the result remains negative. Therefore, negative values of skew indicate that extreme bad outcomes are more frequent than extreme positive ones. We call these distributions "skewed to the left." If skew is positive, then extreme positive outcomes dominate, and these distributions are said to be skewed to the right.

Figure 5.5 shows both positively and negatively skewed distributions as well as the symmetric normal. Notice that the negatively skewed distribution has a "fatter" left tail than the normal with higher probabilities of extreme negative outcomes, while the positively skewed distribution has a fatter right tail.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/2ff218c9b4cff36dfce93be6d0a146c13169dab7ac762d85184547f665e7b6a6.jpg)
Figure 5.5 Normal and skewed distributions (mean = 6\%, SD = 17\%)


When the distribution is positively skewed (skewed to the right), the standard deviation overestimates risk because extreme positive surprises (which do not concern investors) nevertheless increase the estimate of volatility. Conversely, and more important, when the distribution is negatively skewed, the SD will underestimate risk.

Another potentially important departure from normality, kurtosis, concerns the likelihood of extreme values on either side of the mean at the expense of a smaller likelihood of moderate deviations. High kurtosis means that there is more probability mass in the tails of the distribution than predicted by the normal distribution. That extra probability is taken at the expense of "slender shoulders," that is, there is less probability mass near the center of the distribution. Figure 5.6 superimposes a "fat-tailed" distribution on a normal distribution with the same mean and SD. Although symmetry is still preserved, the SD will underestimate the likelihood of extreme events: large losses as well as large gains.


Kurtosis measures the degree of fat tails. It is calculated from the average value of deviations raised to the fourth power (expressed as a multiple of the fourth power of the standard deviation). Because the deviations are raised to the fourth power while they are raised only to the second power when calculating variance, kurtosis is much more sensitive to extreme outcomes and therefore is a natural measure of tail risk, that is, the risk of outcomes in the far tails of the probability distribution.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/2535d0bcc2d630cc3588c939995fc59fe1ccd417839ea8d35c4daca6588f4a51.jpg)
Figure 5.6 Normal and fat-tailed distributions (mean = .1, SD = .2)


$$
\text {K u r t o s i s} = \text {A v e r a g e} \left[ \frac {\left(R - \bar {R}\right) ^ {4}}{\hat {\sigma} ^ {4}} \right] - 3 \tag {5.15}
$$

We subtract 3 in Equation 5.15 because the expected value of the ratio for a normal distribution is 3. Thus, this formula for kurtosis uses the normal distribution as a benchmark: The kurtosis for the normal distribution is, in effect, defined as zero, so kurtosis above zero is a sign of fatter tails. The kurtosis of the distribution in Figure 5.6, which has visible fat tails, is .35. The Excel functions for skew and kurtosis are SKEW and KURT respectively.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/ee7714ba7d0f03553482dabdc822f00b3a3a683814e09017aaf1a807014cb152.jpg)

# Concept Check 5.5

Spreadsheet 5.2 (on page 144) presents holding-period returns over a hypothetical five-year period. Calculate the skew and kurtosis of the five holding period returns.

Skew and kurtosis are standard statistical characteristics of distributions. In addition to these formal measures, practitioners, who are especially concerned about vulnerability to large losses, have devised other, perhaps more intuitive, measures of downside risk. We present four of the most frequently used in practice: value at risk, expected shortfall, lower partial standard deviation, and the frequency of extreme (3-sigma) returns.

# Value at Risk

Suppose you worry about worst-case outcomes for your portfolio. You might ask, "How much would I lose in a fairly extreme outcome, for example, if my return were in the 5th or 1st percentile of the distribution?" This loss is called the value at risk (and is denoted VaR to distinguish it from Var, the abbreviation for variance). VaR is the loss corresponding to a very low percentile of the entire return distribution. Therefore, it is another name for the quantile of a distribution. The quantile,  $q$ , of a distribution is the value below which lie  $q\%$  of the possible values. Thus, the median is  $q = 50$ th quantile. Practitioners commonly estimate the  $1\%$  VaR, meaning that  $99\%$  of returns will exceed the VaR, and  $1\%$  of returns will be worse. Therefore, the  $1\%$  VaR may be viewed as the cutoff separating the  $1\%$  worst-case future scenarios from the rest of the distribution.


When portfolio returns are normally distributed, the VaR is fully determined by the mean and SD of the distribution. Recalling that  $-2.33$  is the first percentile of the standard normal distribution (with mean  $= 0$  and  $\mathrm{SD} = 1$ ), the  $1\%$  VaR for a normal distribution is

$$
\mathrm{VaR}(1\%, \text {normal}) = \mathrm{Mean} - 2.33\mathrm{SD}
$$

When returns are not normal, the VaR conveys important additional information beyond mean and standard deviation about exposure to severe losses. Faced with a distribution of actual returns that may not be normally distributed, we must estimate the VaR directly. To do so, we sort the observations from high to low. The VaR is the return at the 1st percentile of the sample distribution.

# Expected Shortfall

When we assess tail risk by looking at the  $1\%$  worst-case scenarios, the VaR is the most optimistic measure of bad-case outcomes as it takes the highest return (smallest loss) of all these cases. In other words, it tells you the investment loss at the first percentile of the return distribution, but it ignores the magnitudes of potential losses even further out in the tail. A more informative view of downside exposure would focus instead on the expected loss given that we find ourselves in one of the worst-case scenarios. This value, unfortunately, has two names: either expected shortfall (ES) or conditional tail expectation (CTE); the latter emphasizes that this expectation is conditioned on being in the left tail of the distribution. ES is the more commonly used terminology. Using a sample of historical returns, we would estimate the  $1\%$  expected shortfall by identifying the worst  $1\%$  of all observations and taking their average. $^7$

# Lower Partial Standard Deviation and the Sortino Ratio

The use of standard deviation as a measure of risk when the return distribution is nonnormal presents two problems: (1) The asymmetry of the distribution suggests we should look at negative outcomes separately and (2) because an alternative to a risky portfolio is a risk-free investment, we should look at deviations of returns from the risk-free rate rather than from the sample average, that is, at negative excess returns.

A risk measure that addresses these issues is the lower partial standard deviation (LPSD) of excess returns, which is computed like the usual standard deviation, but using only "bad" returns. Specifically, it uses only negative deviations from the risk-free rate

(rather than negative deviations from the sample average), squares those deviations to obtain an analog to variance, and then takes the square root to obtain a "left-tail standard deviation." The LPSD is therefore the square root of the average squared deviation, conditional on a negative excess return. Notice that this measure ignores the frequency of negative excess returns; that is, portfolios with the same average squared negative excess returns will yield the same LPSD regardless of the relative frequency of negative excess returns.

Practitioners who replace standard deviation with this LPSD typically also replace the Sharpe ratio (the ratio of average excess return to standard deviation) with the ratio of average excess returns to LPSD. This variant on the Sharpe ratio is called the Sortino ratio.

# Relative Frequency of Large, Negative 3-Sigma Returns

Here we concentrate on the relative frequency of large, negative returns compared with those frequencies in a normal distribution with the same mean and standard deviation. Extreme returns are often called jumps, as the stock price makes a big sudden movement. We compare the fraction of observations with returns 3 or more standard deviations below the mean to the relative frequency of negative 3-sigma returns in the corresponding normal distribution.

This measure can be quite informative about downside risk but, in practice, is most useful for large samples observed at a high frequency. Observe from Figure 5.4 that the relative frequency of returns that are 3 standard deviations or more below the mean in a standard normal distribution is only  $0.13\%$ , that is, 1.3 observations per 1,000. Thus, these returns are rare, but when they occur, they have a large impact on investment performance.

# 5.6 Learning from Historical Returns

# Time Series versus Scenario Analysis

In a forward-looking scenario analysis, we specify a set of relevant scenarios and associated rates of return, assign probabilities to each, and conclude by computing the risk premium (expected reward) and standard deviation (risk) of an investment. In contrast, asset return histories come in the form of time series of actual returns that do not necessarily match investors' original assessments of the probabilities of those returns. We can at most infer the probability distributions from which these returns might have been drawn or, at least, the expected return and standard deviation.

# Expected Returns and the Arithmetic Average

When we use historical data, we treat each observation as an equally likely "scenario." So if there are  $n$  observations, we substitute equal probabilities of  $1/n$  for each  $p(s)$  in Equation 5.11. The expected return,  $E(r)$ , is then estimated by the arithmetic average of the sample rates of return:

$$
E (r) = \sum_ {s = 1} ^ {n} p (s) r (s) = \frac {1}{n} \sum_ {s = 1} ^ {n} r (s) \tag {5.16}
$$

= Arithmetic average of historic rates of return

# Example 5.6 Arithmetic Average and Expected Return

Spreadsheet 5.2 presents a (very short) time series of holding-period returns for a hypothetical portfolio over a 5-year period. We treat each HPR of the  $n = 5$  observations in the time series as an equally likely annual outcome during the sample years and assign it an equal probability of 1/5, or .2. (See Column B.) Column C shows the annual HPRs. Applying Equation 5.16 (using Excel's SUMPRODUCT function) to the time series in Spreadsheet 5.2 demonstrates that adding up the products of probability times HPR amounts to taking the arithmetic average of the HPRs (compare cells C7 and C8).

Example 5.6 illustrates the logic for the wide use of the arithmetic average in investments. If the time series of historical returns fairly represents the true underlying probability distribution, then the arithmetic average return from a historical period provides a reasonable forecast of the investment's expected future HPR.

# The Geometric (Time-Weighted) Average Return

The arithmetic average provides an unbiased estimate of the expected future return. But what does the time series tell us about the actual performance of a portfolio over the past sample period? Let's continue Example 5.6 using its very short sample period just to illustrate.

Column F in Spreadsheet 5.2 shows the investor's "wealth index" from investing  $1 in the portfolio at the beginning of the first year. Wealth in each year increases by the "gross return," that is, by the multiple (1 + \mathrm{HPR})$ , shown in column E. The wealth index is the cumulative value of 1 invested at the beginning of the sample period. The value of the wealth index at the end of the fifth year, \$1.0275, is the terminal value of the \$1 investment, which implies a 5-year cumulative return of 2.75\%.

An intuitive measure of average performance over the sample period is the (fixed) annual HPR that would compound to the same terminal value resulting from the sequence

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td></tr><tr><td>1</td><td>Year</td><td>Implicit Probability</td><td>HPR (decimal)</td><td>Squared Deviation</td><td>Gross Return = 1 + HPR</td><td>Wealth Index*</td></tr><tr><td>2</td><td>1</td><td>0.20</td><td>-0.1189</td><td>0.0196</td><td>0.8811</td><td>0.8811</td></tr><tr><td>3</td><td>2</td><td>0.20</td><td>-0.2210</td><td>0.0586</td><td>0.7790</td><td>0.6864</td></tr><tr><td>4</td><td>3</td><td>0.20</td><td>0.2869</td><td>0.0707</td><td>1.2869</td><td>0.8833</td></tr><tr><td>5</td><td>4</td><td>0.20</td><td>0.1088</td><td>0.0077</td><td>1.1088</td><td>0.9794</td></tr><tr><td>6</td><td>5</td><td>0.20</td><td>0.0491</td><td>0.0008</td><td>1.0491</td><td>1.0275</td></tr><tr><td>7</td><td>Arithmetic average</td><td>= AVERAGE(C2:C6)</td><td>0.0210</td><td></td><td></td><td></td></tr><tr><td>8</td><td>Expected HPR</td><td>SUMPRODUCT(B2:B6, C2:C6)</td><td>0.0210</td><td></td><td></td><td></td></tr><tr><td>9</td><td>Variance</td><td>SUMPRODUCT(B2:B6, D2:D6)</td><td></td><td>0.0315</td><td></td><td></td></tr><tr><td>10</td><td>Standard deviation</td><td>SQRT(D9)</td><td></td><td>0.1774</td><td></td><td></td></tr><tr><td>11</td><td>Standard deviation</td><td>STDEV.P(C2:C6)</td><td></td><td>0.1774</td><td></td><td></td></tr><tr><td>12</td><td>Std dev (df = 4)</td><td>SQRT(D9*5/4)</td><td></td><td>0.1983</td><td></td><td></td></tr><tr><td>13</td><td>Std dev (df = 4)</td><td>STDEV.S(C2:C6)</td><td></td><td>0.1983</td><td></td><td></td></tr><tr><td>14</td><td>Geometric avg return</td><td>F6^(1/5)-1</td><td></td><td></td><td></td><td>0.0054</td></tr><tr><td>15</td><td colspan="6"></td></tr><tr><td>16</td><td colspan="6">* The wealth index is the cumulative value of 1 invested at the beginning of the sample period.</td></tr></table>

# Spreadsheet 5.2

Time series of holding-period returns of actual returns in the time series. This is called the geometric or compound rate of return. Denote the geometric rate by  $g$  so that


$$
\begin{array}{l} \text {T e r m i n a l} = (1 + r _ {1}) \times (1 + r _ {2}) \times \dots \times (1 + r _ {5}) = 1. 0 2 7 5 \\ (1 + g) ^ {n} = \text {T e r m i n a l v a l u e} = 1. 0 2 7 5 (\text {c e l l F 6 i n S p r e a d s h e e t 5 . 2}) \tag {5.17} \\ g = \text {Terminal value} ^ {1 / n} - 1 = 1.0275 ^ {1 / 5} - 1 = .0054 = .54 \% (\text {cell F14}) \\ \end{array}
$$

Practitioners often call  $g$  a time-weighted (as opposed to dollar-weighted) average return to emphasize that each past return receives an equal weight in the process of averaging. This distinction can be important because investment managers may experience significant changes in funds under management as investors purchase or redeem shares. Rates of return obtained during periods when the fund is large have a greater impact on final value than rates obtained when the fund is small. We discuss this distinction in Chapter 24 on portfolio performance evaluation.

Notice that the geometric average return in Spreadsheet 5.2,  $.54\%$ , is less than the arithmetic average,  $2.1\%$ . The greater the volatility in rates of return, the greater the difference between arithmetic and geometric averages. If returns come from a normal distribution, the expected difference is exactly half the variance of the distribution, that is,

$$
E [ \text {G e o m e t r i c a v e a r g e} ] = E [ \text {A r i t h m e t i c a v e a r g e} ] - 1 / 2 \sigma^ {2} \tag {5.18}
$$

(A warning: To use Equation 5.18, you must express returns as decimals, not percentages.) When returns are approximately normal, Equation 5.18 will be a good approximation. $^{8}$

The discrepancy between the geometric and arithmetic averages arises from the asymmetric effect of positive and negative rates of return on the terminal value of the portfolio. Example 5.7 illustrates this effect.

# Example 5.7 Geometric versus Arithmetic Average

Suppose you have a rate of return of  $-20\%$  in year 1 and  $20\%$  in year 2. The arithmetic average is 0. Yet each dollar invested for two years will grow to only  $0.80 \times 1.20 = \$ 96, less than the dollar you started with, implying a negative geometric average return. Your positive HPR in year 2 is applied to a smaller investment base than the negative HPR incurred in year 1. To break even after losing  $20\%$  in year 1, you would have needed a rate of return of  $25\%$  in year 2.

Now suppose that the order of the rates of return were switched, so that your HPRs were  $20\%$  in year 1 and  $-20\%$  in year 2. Again, your arithmetic average return is zero, but you still end up with only  $\$ .96$  ( $= 1.20 \times .80$ ). In this case, the loss in year 2 is applied to a bigger investment base than the gain in year 1, resulting in a larger dollar loss. In either case, the geometric average is less than the arithmetic one.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/0c6bfeeff73434aa362fa85974fba6324acda330a27f4bef191721d397716c45.jpg)

# Concept Check 5.6

You invest 1 million at the beginning of 2028 in a stock-index fund. If the rate of return in 2028 is -40\%, what rate of return in 2029 will be necessary for your portfolio to recover to its original value?

# Estimating Variance and Standard Deviation

When thinking about risk, we are interested in the likelihood of deviations of actual outcomes from the expected return. Given a scenario analysis, we can define variance using squared deviations around the mean outcome, as in Equation 5.12. However, in practice, we rarely observe expectations directly, so we instead calculate variance by averaging squared deviations from our estimate of the expected return, the arithmetic average,  $\overline{r}$ . Adapting Equation 5.12 for historic data, we again use equal probabilities for each observation and use the sample average in place of the unobservable  $E(r)$ . Therefore, using historical data with  $n$  observations, we estimate variance as

$$
\hat {\sigma} ^ {2} = \frac {1}{n} \sum_ {s = 1} ^ {n} [ r (s) - \bar {r} ] ^ {2} \tag {5.19}
$$ where  $\hat{\sigma}$  replaces  $\sigma$  to denote that it is an estimate.


# Example 5.8 Variance and Standard Deviation

Take another look at Spreadsheet 5.2. Column D shows the squared deviation from the arithmetic average, and cell D9 gives the variance as .0315. This is the sum of the product of the probability of each outcome  $(1/n = .20)$  times the squared deviation of that outcome. Finally, the standard deviation given in cell D10, .1774, is the square root of the variance.

The variance estimate from Equation 5.19 is biased downward, however. The reason is that we have taken deviations from the sample arithmetic average,  $\overline{r}$ , instead of the unknown, true expected value,  $E(r)$ , and so have introduced a bit of estimation error. Its effect on the estimated variance is sometimes called a degrees of freedom bias. We can eliminate the bias by multiplying the arithmetic average of squared deviations by the factor  $n / (n - 1)$ . The variance and standard deviation then become

$$
\hat {\sigma} ^ {2} = \left(\frac {n}{n - 1}\right) \times \frac {1}{n} \sum_ {s = 1} ^ {n} [ r (s) - \bar {r} ] ^ {2} = \frac {1}{n - 1} \sum_ {s = 1} ^ {n} [ r (s) - \bar {r} ] ^ {2} \tag {5.20}
$$

$$
\hat {\sigma} = \sqrt {\frac {1}{n - 1} \sum_ {s = 1} ^ {n} [ r (s) - \bar {r} ] ^ {2}}
$$

Cell D13 shows the unbiased estimate of standard deviation, .1983, which is higher than the .1774 value obtained in cell D11. In Excel, the function STDEV.P calculates standard deviation without any correction for degrees of freedom (consistent with Equation 5.19) while the function STDEV.S applies the correction (consistent with Equation 5.20). For large samples, the distinction is usually not important:  $n / (n - 1)$  is close to 1, and the adjustment for degrees of freedom becomes trivially small.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/1e384ace76ab50ff68f0b053ce2e2e366a31a236242ac94ae0e6d18c7604fe07.jpg)

# Concept Check 5.7

Using the annual returns for years 3-5 in Spreadsheet 5.2:

$a$ . Compute the arithmetic average return.
b. Compute the geometric average return.
c. Compute the standard deviation of returns using the correction for degrees of freedom.
d. Compute the Sharpe ratio, assuming the risk-free rate was  $6\%$  per year.

# Mean and Standard Deviation Estimates from Higher-Frequency Observations

Do more frequent observations lead to more accurate estimates? The answer to this question is surprising: Observation frequency has no impact on the accuracy of estimates of expected return. It is the duration of a sample time series (as opposed to the number of observations) that improves accuracy.

Ten annual returns provide as accurate an estimate of the expected rate of return as 120 monthly returns. Because the average monthly return must be consistent with the average annual returns, the additional intra-year observations provide no additional information about mean return. A longer sample, for example, a 100-year return, does provide a more accurate estimate of the mean return than a 10-year return, provided the probability distribution of returns remains unchanged over the 100 years. This suggests a rule: Use the longest sample that you still believe comes from the same return distribution. Unfortunately, in practice, old data may be less informative. Are return data from the 19th century relevant to estimating expected returns in the 21st century? Quite possibly not, implying that we face severe limits to the accuracy of our estimates of mean returns.

In contrast to the mean, the accuracy of estimates of the standard deviation can be made more precise by increasing the number of observations. This is because the more frequent observations give us more information about the distribution of deviations from the average. Thus, we can improve the accuracy of estimates of SD by using more frequent observations.

Estimates of standard deviation begin with the variance. When monthly returns are uncorrelated from one month to another, monthly variances simply add up. Thus, when the variance is the same every month, the variance of annual returns is 12 times the variance of monthly returns: $^9$ $\sigma_A^2 = 12\sigma_M^2$ . In general, the  $T$ -month variance is  $T$  times the 1-month variance. Consequently, standard deviation grows at the rate of  $\sqrt{T}$ ; for example, the standard deviation of annual returns is related to the standard deviation of monthly returns by  $\sigma_A = \sqrt{12}\sigma_M$ . While the mean and variance grow in direct proportion to time, SD grows at the rate of square root of time.

# 5.7 Historic Returns on Risky Portfolios

We can now apply the analytical tools worked out in previous sections to look at the historic performance of several important portfolios.

We begin by comparing the performance of Treasury bills, Treasury bonds, and a diversified portfolio of U.S. stocks. T-bills are widely considered the least risky of all assets. There is essentially no risk that the U.S. government will fail to honor its commitments to these investors, and their short maturities mean that their prices are relatively stable. Long-term U.S. Treasury bonds are also certain to be repaid, but the prices of these bonds fluctuate as interest rates vary, so they impose meaningful risk. Finally, common stocks are the riskiest of the three groups of securities. As a part-owner of the corporation, your return will depend on the success or failure of the firm.

Our benchmark stock portfolio is the broadest possible U.S. equity portfolio, including all stocks listed on the NYSE, AMEX, and NASDAQ. We shall denote it as "the

U.S. market index." Because larger firms play a greater role in the economy, this index is a value-weighted portfolio and therefore dominated by the large-firm corporate sector. The data series include returns on these stocks from 1927 to 2021, a sample period spanning 95 years.

Figure 5.7 is a frequency distribution of annual returns on these three portfolios. The greater volatility of stock returns compared to T-bill or T-bond returns is immediately apparent. Compared to stock returns, the distribution of T-bond returns is far more concentrated in the middle of the distribution, with far fewer outliers. The distribution of T-bill returns is even tighter. More to the point, the spread of the T-bill distribution does not reflect risk but rather changes in the risk-free rate over time.[10] Anyone buying a T-bill knows exactly what the (nominal) return will be when the bill matures, so variation in the return is not a reflection of risk over that short holding period.

While the frequency distribution is a handy visual representation of investment risk, we also need a way to quantify that volatility; this is provided by the standard deviation of returns. Table 5.4 shows that the standard deviation of the return on stocks over this period,  $19.89\%$ , was nearly double that of T-bonds,  $11.58\%$ , and more than 6 times that of T-bills. Of course, that greater risk brought with it greater reward. The excess return on stocks (i.e., the return in excess of the T-bill rate) averaged  $8.87\%$  per year, providing a generous risk premium to equity investors.

Table 5.4 uses a fairly long sample period to estimate the average level of risk and reward. While averages may well be useful indications of what we might expect going forward, we nevertheless should expect both risk and expected return to fluctuate over time. Figure 5.8 plots the "moving" standard deviation of the market's excess return. Each standard deviation is calculated from the 12 most recent monthly returns. Each month, a new observation is added and the oldest one is dropped. While market risk clearly ebbs and flows, aside from its abnormally high values during the Great Depression, there does not seem to be any obvious trend in its level. This gives us more confidence that historical risk estimates provide useful guidance about the future.

Of course, as we emphasized in the previous sections, unless returns are normally distributed, standard deviation is not sufficient to measure risk. We also need to think about "tail risk," that is, our exposure to unlikely but very large outcomes in the left tail of the probability distributions. Figure 5.9 provides some evidence of this exposure. It shows a frequency distribution of monthly excess returns on the market index since 1927. The solid bars show the historical frequency of excess returns falling within each range, while the pattern bars show the frequencies that we would observe if these returns followed a normal distribution with the same mean and variance as the actual empirical distribution. You can see here some evidence of a fat-tailed distribution: The actual frequencies of extreme returns, both high and low, are higher than would be predicted by the normal distribution.

You might wonder about the negative T-bill rates that show up in the frequency distribution in Figure 5.7. T-bills did not make their debut until the 1940s. For earlier dates, commercial paper is used as the closest approximation to short-term risk-free rates. In a few instances, they were issued slightly above par and thus yielded slightly negative rates.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/761b64098881242a01e1c9effa924366d9b8f610f2f86310e76902ac655120f3.jpg)
Panel A: Treasury Bills

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/abd2312243ab030bd61617a0ef6bbdf321fe7f039450fc5462a06e85ee33571e.jpg)
Panel B: 30-Year Treasury Bonds

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/c99f16d4efd25a3be370c660475053bf609085d928ff22858385ded4200babc8.jpg)
Panel C: Common Stocks
Figure 5.7 Frequency distribution of annual returns on U.S. Treasury bills, Treasury bonds, and common stocks.

Table 5.4

<table><tr><td>Risk and return of investments in major asset classes; estimates from annual data, 1927–2021.</td></tr></table>

<table><tr><td></td><td>T-Bills</td><td>T-Bonds</td><td>Stocks</td></tr><tr><td>Average</td><td>3.30\%</td><td>5.96\%</td><td>12.17\%</td></tr><tr><td>Risk premium</td><td>N/A</td><td>2.66</td><td>8.87</td></tr><tr><td>Standard deviation</td><td>3.10</td><td>11.58</td><td>19.89</td></tr><tr><td>Max</td><td>14.71</td><td>41.6803</td><td>57.35</td></tr><tr><td>Min</td><td>-0.02</td><td>-25.96</td><td>-44.04</td></tr></table>

Figure 5.8 Annualized standard deviation of the monthly excess return on the market index portfolio
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/630a0870919f0e280cc77163b91d648aa435b0e5f52d0ccc829a2a4490ff1427.jpg)
Source: Authors' calculations using data from Prof. Kenneth French's Web site: http://mba.tuck.dartmouth.edu/ pages/faculty/ken.french/data_library.html.

Further evidence on the distribution of excess equity returns is given in Table 5.5. Here, we use monthly data on both the market index and, for comparison, several "style" portfolios. You may remember from Chapter 4, Figure 4.5, that the performance of mutual funds is commonly evaluated relative to other funds with similar investment "styles." (See the Morningstar style box in Figure 4.5.) Style is usually defined along two dimensions: size (do the funds invest in large cap or small cap firms?) and value versus growth. Firms with high ratios of market value to book value are viewed as "growth firms" because, to justify their high prices relative to current book values, the market must anticipate rapid growth.

The use of style portfolios as benchmarks for performance evaluation traces back to influential papers by Eugene Fama and Kenneth French, who extensively documented that firm size and the book value-to-market value ratio predict average returns; these patterns have since been corroborated in stock exchanges around the world.11 A high book-to-market (B/M) ratio is interpreted as an indication that the value of the firm is driven primarily by assets already in place, rather than the prospect of high future growth. These are called "value" firms. In contrast, a low book-to-market ratio is typical of firms

Figure 5.9 Frequency distribution of monthly excess returns on the market index (the first, solid bar in each set) versus predicted frequency from a normal distribution with matched mean and standard deviation (the second, pattern bar in each set)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/3a036d3a6962814311f778442e1b11d9bab22cb2d6d77f02a9782c7928cd3c53.jpg)
Source: This frequency distribution is for monthly returns on the market index, obtained from Prof. Kenneth French's Web site, http://mba.tuck.dartmouth.edu/pages/faculty/ken.french/data.library.html. The returns are expressed as continuously compounded rates, as these are most appropriate for comparison with the normal distribution.


<table><tr><td></td><td>Market index</td><td>Big/growth</td><td>Big/value</td><td>Small/growth</td><td>Small/value</td></tr><tr><td colspan="6">A. 1927-2021</td></tr><tr><td>Mean excess return (annualized)</td><td>8.86</td><td>8.79</td><td>12.02</td><td>9.60</td><td>15.54</td></tr><tr><td>Standard deviation (annualized)</td><td>18.52</td><td>18.35</td><td>24.83</td><td>25.97</td><td>28.23</td></tr><tr><td>Sharpe ratio</td><td>0.48</td><td>0.48</td><td>0.48</td><td>0.37</td><td>0.55</td></tr><tr><td>Lower partial SD (annualized)</td><td>19.62</td><td>18.85</td><td>23.61</td><td>25.86</td><td>26.33</td></tr><tr><td>Skew</td><td>0.17</td><td>-0.11</td><td>1.50</td><td>0.59</td><td>2.06</td></tr><tr><td>Kurtosis</td><td>7.61</td><td>5.47</td><td>17.58</td><td>7.10</td><td>21.60</td></tr><tr><td>VaR (1\%) actual (monthly) returns</td><td>-13.58</td><td>-14.40</td><td>-19.93</td><td>-20.10</td><td>-20.68</td></tr><tr><td>VaR(1\%) normal distribution</td><td>-11.75</td><td>-11.64</td><td>-15.75</td><td>-16.69</td><td>-17.78</td></tr><tr><td>\% of monthly returns more than 3 SD below mean</td><td>0.88\%</td><td>0.79\%</td><td>0.88\%</td><td>0.79\%</td><td>0.62\%</td></tr><tr><td>Expected shortfall (monthly)</td><td>-19.60</td><td>-19.86</td><td>-24.61</td><td>-24.64</td><td>-26.00</td></tr><tr><td colspan="6">B. 1952-2021</td></tr><tr><td>Mean excess return (annualized)</td><td>8.40</td><td>8.47</td><td>10.59</td><td>8.21</td><td>13.51</td></tr><tr><td>Standard deviation (annualized)</td><td>14.95</td><td>15.50</td><td>17.08</td><td>22.39</td><td>19.02</td></tr><tr><td>Sharpe ratio</td><td>0.56</td><td>0.55</td><td>0.62</td><td>0.37</td><td>0.71</td></tr><tr><td>Lower partial SD (annualized)</td><td>16.17</td><td>15.78</td><td>17.69</td><td>23.72</td><td>20.23</td></tr><tr><td>Skew</td><td>-0.52</td><td>-0.35</td><td>-0.46</td><td>-0.33</td><td>-0.45</td></tr><tr><td>Kurtosis</td><td>1.90</td><td>1.75</td><td>3.03</td><td>2.17</td><td>3.83</td></tr><tr><td>VaR (1\%) actual (monthly) returns</td><td>-10.89</td><td>-10.84</td><td>-12.48</td><td>-17.22</td><td>-15.24</td></tr><tr><td>VaR(1\%) normal distribution</td><td>-9.39</td><td>-9.75</td><td>-10.66</td><td>-14.40</td><td>-11.75</td></tr><tr><td>\% of monthly returns more than 3 SD below mean</td><td>0.71\%</td><td>0.60\%</td><td>0.83\%</td><td>0.95\%</td><td>1.07\%</td></tr><tr><td>Expected shortfall (monthly)</td><td>-14.47</td><td>-13.96</td><td>-18.08</td><td>-22.76</td><td>-20.27</td></tr></table>

# Table 5.5

Statistics for monthly excess returns on the market index and four "style" portfolios whose market value derives mostly from ample growth opportunities. Realized average returns have been higher for value firms than for growth firms and for small firms than for large ones. The Fama-French database includes returns on portfolios of U.S. stocks sorted by size (Big; Small) and by B/M ratios (High; Medium; Low).

Source: Authors' calculations using data from Prof. Kenneth French's Web site: http://mba.tuck.dartmouth.edu/pages/faculty/ken.french/data.library.html.


Following the Fama-French classifications, we drop the medium B/M portfolios and identify firms ranked in the top  $30\%$  of B/M ratio as "value firms" and firms ranked in the bottom  $30\%$  as "growth firms." We split firms into above and below median levels of market capitalization to establish subsamples of small versus large firms. We thus obtain four comparison portfolios: Big/Growth, Big/Value, Small/Growth, and Small/Value.

Table 5.5, Panel A, presents results using monthly data for the full sample period, 1927-2021. The top two lines show the annualized average excess return and standard deviation of each portfolio. The broad market index outperformed T-bills by an average of  $8.86\%$  per year, $^{13}$  with a standard deviation of  $18.52\%$ , resulting in a Sharpe ratio (third line) of  $8.86 / 18.52 = .48$ . In line with the Fama-French analysis, small/value firms had the highest average excess return and the best risk-return trade-off with a Sharpe ratio of .55. However, Figure 5.7 warns us that actual returns may have fatter tails than the normal distribution, so we need to consider risk measures beyond just the standard deviation. The table therefore also presents several measures of risk that are suited for non-normal distributions.

Several of these other measures actually do not show meaningful departures from the symmetric normal distribution. Skew is generally near zero; if downside risk were substantially greater than upside potential, we would expect skew to be generally negative, which it is not. Along the same lines, the lower partial standard deviation is generally quite close to the conventional standard deviation. Finally, while the actual  $1\%$  VaR of these portfolios are uniformly higher than the  $1\%$  VaR that would be predicted from normal distributions with matched means and standard deviations, the differences between the empirical and predicted VaR statistics are not large. By this metric as well, the normal appears to be a decent approximation to the actual return distribution.

However, there is other evidence suggesting fat tails in the return distributions of these portfolios. To begin, note that kurtosis (the measure of the "fatness" of both tails of the distribution) is uniformly high. Investors are, of course, concerned with the lower (left) tail of the distribution; they do not lose sleep over their exposure to extreme good returns! Unfortunately, these portfolios suggest that the left tail of the return distribution is overrepresented compared to the normal. If excess returns were normally distributed, then only  $.13\%$  of them would fall more than 3 standard deviations below the mean. In fact, the actual incidence of excess returns below that cutoff are several multiples of  $.13\%$  for each portfolio.

The expected shortfall (ES) estimates show why VaR is only an incomplete measure of downside risk. ES in Table 5.5 is the average excess return of those observations that fall in the extreme left tail, specifically, those that fall below the  $1\%$  VaR. By definition, this value must be worse than the VaR, as it averages among all the returns that are below the  $1\%$  cutoff. Because it uses the actual returns of the "worst-case outcomes," ES is by far a better indicator of exposure to extreme events.

Figure 5.2 showed us that the post-war years (more accurately, the years after 1951) have been far more predictable, at least with respect to inflation and interest rates. This suggests that it may be instructive to examine stock returns in the post-1951 period as well to see if risk and return characteristics for equity investments have changed meaningfully in the more recent period. The relevant statistics are given in Panel B of Table 5.5. Perhaps not surprisingly in light of the history of inflation and interest rates, the more recent period is in fact less risky. Standard deviation for all five portfolios is noticeably lower in recent years, and kurtosis, our measure of fat tails, drops dramatically. VaR also falls. While the number of excess returns that are more than 3 SD below the mean changes inconsistently, because SD is lower in this period, those negative returns are also less dramatic: Expected shortfall is lower in the latter period.

To summarize, the frequency distributions in Figure 5.9 and the statistics in Table 5.5 for the market index as well as the style portfolios tell a reasonably consistent story. There is some, admittedly inconsistent, evidence of fat tails, so investors should not take normality for granted. On the other hand, extreme returns are in fact quite uncommon, especially in more recent years. The incidence of returns on the market index in the post-1951 period that are worse than 3 SD below the mean is .71\%, compared to a prediction of .13\% for the normal distribution. The "excess" rate of extreme bad outcomes is thus only .58\%, or about once in 172 months (14.4 years). So it is not unreasonable to accept the simplification offered by normality as an acceptable approximation as we think about constructing and evaluating our portfolios.

# A Global View of the Historical Record

How representative is U.S. history for the risk-return trade-off around the world? Returns in the U.S. in the last century were excellent in comparison to other countries.[14] In the 1900-2020 period, U.S. stocks outperformed bills by  $7.7\%$  per year versus average outperformance of only  $5.3\%$  outside the U.S.[15] On the other hand, Panel A of Figure 5.10 shows that several countries outperformed the United States, so by that standard, the U.S. was not exceptional.

The United States was more impressive in the reward it offered per unit of risk—that is, in its Sharpe ratio. We see in Panel B that the trade-off it offered investors was second only to Australia's. The Sharpe ratio in the U.S. was .40, versus an average non-U.S. ratio of only .29 (see World ex-U.S.). This reward for bearing risk was in fact exceptional.

These results—both its above-average risk premium and, more dramatically, its outstanding Sharpe ratio—raise the question of whether U.S. stock market performance turned out to be better than investors initially anticipated. When we use historical-average excess returns as estimates of risk premia or use historical Sharpe ratios as estimates of the reward investors demanded per unit of risk, we are implicitly treating those historical outcomes as unbiased estimators of investors' expectations. But when we see that the United States actually fared so much better than the rest of the world, we need to ask whether its historical experience was representative of the actual probability distribution that investors envisioned.

Few could have predicted in the early 20th century that the U.S. economy would be as successful as it turned out to be. The surprisingly rapid growth in that century of its real economy mirrors the performance of its financial sector. And the extent of the success of its tech sector (e.g., Apple, Facebook, Google, Microsoft, Amazon, and so on) in the 21st century, which had a major impact on stock index returns in this more recent period, was also probably largely unanticipated two decades ago.

Given this evidence of better-than-expected performance in the U.S. over the last century, we may wish to trim the average excess return in Table 5.4 when we estimate the equity risk premium. Corroborating this view, surveys of businesspeople as well as academics also commonly suggest that the expected risk premium is lower than suggested by historical performance.[16]

International comparisons for a wide range of countries going back for more than a century appear in Elroy Dimson, Paul Marsh, and Mike Staunton, *Triumph of the Optimists*, (Princeton University Press, 2002, updated in *Global Investment Returns Yearbook*, Credit Suisse, 2021). Figure 5.10 is taken from their 2021 yearbook, which was kindly provided by the authors.
These excess returns are lower than those reported in Table 5.4. Much of the difference reflects a different sample period, which in this case begins in 1900 rather than 1927.
See, for example, Pablo Fernandez, Alberto Ortiz, and Isabel Fernandez Acín, "Market Risk Premium Used in 71 Countries in 2016: A Survey with 6,932 Answers," Journal of International Business Research and Marketing 2 (September 2017), pp. 23-31. Updates of their survey are periodically posted on SSRN, the Social Science Research Network, and can be found by searching SSRN by the authors' names.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/904b641182256b05d5e599d9db80fd7ac2024423cc3becffd9585d38dfd2ee8a.jpg)
Panel A: Risk Premia

Panel B: Sharpe Ratios
Figure 5.10 The risk-return trade-off, 1900-2020, international evidence
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/55da4ced7d7c3fe7cf4cdb0579adc7283dd9f35e3f2a16887811d35a52932035.jpg)
Source: Elroy Dimson, Paul Marsh, and Mike Staunton, *Triumph of the Optimists*, (Princeton University Press, 2002, updated in Global Investment Returns Yearbook, Credit Suisse, 2021). This figure is taken from their 2021 yearbook, which was kindly provided by the authors.

# 5.8 Normality and Long-Term Investments*

Figure 5.3 suggested that it may be reasonable to treat short-term (e.g., monthly) stock returns as approximately described by a symmetric normal distribution. But even if that is so, long-term performance cannot be normal. If  $r_1$  and  $r_2$  are the returns in two periods, and each has the same normal distribution, then the sum of the returns,  $r_1 + r_2$ , would be normal. But the two-period compound return is not the sum of the two returns. Instead, invested funds would compound to  $(1 + r_1)(1 + r_2)$ , which is not normal. This is more than a theoretical point. The shape of the distribution changes noticeably as the investment horizon extends.

To illustrate, suppose that you invest 100 in a stock with an expected monthly return of 1\%. But there is dispersion around the expected value: Suppose that with equal probability, the actual return in any month will exceed the mean by 2\% (for a return of 1\% + 2\% = 3\%), or fall short by 2\% (for a return of 1\% - 2\% = -1\%). These two possible monthly returns, -1\% or 3\%, are thus symmetrically distributed around the 1\% mean. Now let's look at the distribution of the portfolio value at the end of several investment horizons. Figure 5.11 shows the results.

After 6 months (Panel A), the distribution of possible values is beginning to take on the shape of the familiar bell-shaped curve. Mid-range values are more likely because there are more paths that take us to these outcomes. (To get into either tail of the distribution would require extreme, and therefore unlikely, good or bad luck, with an unlikely preponderance of either positive or negative outcomes.) After 20 months (Panel B), the bell-shaped distribution is even more obvious, but there is already a hint that extremely good cumulative returns (with possible stock prices extending to  \$180 for a cumulative gain of 80\%$ ) are more prevalent than extremely poor ones (notice that the worst possible outcome is 82, implying a total loss of only  $18\%$ ). After 40 months (Panel C), the asymmetry in the distribution is pronounced.

This pattern emerges because of compounding. The upside potential of the investment is unlimited. But no matter how many months in a row you lose  $1\%$ , your funds cannot drop below zero, so there is a floor on worst-possible performance: You can't lose more than  $100\%$  of your investment. After 40 months, the best possible stock value is  $\$100 \times 1.03^{40} = \$326$ , for a total gain of  $226\%$ , but the worst possible outcome is  $\$100 \times .99^{40} = \$66.90$ , for a cumulative loss of  $33.1\%$ .

While the probability distribution in Figure 5.11, Panel C is bell-shaped, it is a distinctly "asymmetric bell" with a positive skew, and the distribution is clearly not normal. In fact, the actual distribution approaches the lognormal distribution. "Lognormal" means that the log of the final portfolio value,  $\ln (W_T)$ , is normally distributed.

Does this result invalidate the simplifying assumption of normally distributed returns? Fortunately, there is a simple fix to this conundrum. Instead of using effective annual returns, we can use continuously compounded returns.

If the continuously compounded returns in two months are  $r_{cc}(1)$  and  $r_{cc}(2)$ , then invested funds grow by a factor of  $\exp [r_{cc}(1)]$  in the first month and  $\exp [r_{cc}(2)]$  in the second month, where  $\exp (\cdot)$  is the exponential function. The total growth in the investment is thus  $\exp [r_{cc}(1)] \times \exp [r_{cc}(2)] = \exp [r_{cc}(1) + r_{cc}(2)]$ . In other words, the total two-month return expressed as a continuously compounded rate is the sum of the one-month returns.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/bb6fce599fb8a58327c86a58d9d2d1ed1771bdea8652a7fdb3e06fed45b50d94.jpg)
Panel A: 6 months

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/10be4359e789d2fbca7e9407e6cb0c4ca4de0e4b99d3a60bdbc19db4e3b8f60a.jpg)
Panel B: 20 months

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/b6d34ed33c0fb246abf7754f3dc242b2e9e8472f247cb360c470f09ecf8144ea.jpg)
Panel C: 40 months
Figure 5.11 Frequency distribution of final portfolio value after different number of months. Initial investment = 100. In any month, portfolio value will increase by 3\% or fall by 1\% with equal probability.

Therefore, if the monthly returns are normal, then the multi-month returns will also be normal. $^{17}$  Thus, by using continuously compounded rates, even long-term returns can be described by the normal distribution. Moreover, if returns have the same distribution in each month, then the expected two-month return is just twice the expected one-month return, and if returns over time are uncorrelated, then the variance of the two-month return is also twice that of the one-month return. $^{18}$

We can generalize from this example to arbitrary investment horizons, which we will call  $T$ . If the expected per-period continuously compounded return is called  $E(r_{cc})$ , then the expected cumulative return after an investment of  $T$  periods is  $E(r_{cc})T$ , and the expected final value of the portfolio is  $E(W_T) = W_0\exp [E(r_{cc})T]$ . The variance of the cumulative return is also proportional to the time horizon:  $\mathrm{Var}(r_{cc}T) = T\mathrm{Var}(r_{cc})$ . Therefore, the standard deviation grows in proportion to the square root of the time horizon:

$$
S D \left(r _ {c c} T\right) = \sqrt {T \operatorname {V a r} \left(r _ {c c}\right)} = \sigma \sqrt {T}
$$

# Short-Run versus Long-Run Risk

Our results on the risk and return of investments over different time horizons appear to offer a mitigation of investment risk in the long run: Because expected return increases with horizon in proportion to  $T$ , while standard deviation increases in proportion to the square root of  $T$ , the expected return of a long-term risky investment becomes ever larger relative to its standard deviation. Does this mean that investments are less risky when horizons are longer? To see why many people believe so, consider the following example.

# Example 5.9 Investment Risk in the Short Run and the Long Run

Suppose that investment returns are independent from year to year with an expected continuously compounded rate of return of .05 and a standard deviation of  $\sigma = .30$ . Let's look at the properties of the investment at horizons of 1, 10, and 30 years. These are laid out in Table 5.6. The mean average annual return is  $5\%$  regardless of the horizon, but the mean cumulative return rises in direct proportion to  $T$ . The standard deviation of the cumulative return rises in proportion to the square root of  $T$ .

Next, we look at the probability that the cumulative return will be negative, in other words, that the investor will suffer a loss. For the 1-year investor to suffer a loss, the actual return must be .05 below the mean. This implies a return that is .05/.3 = .167 standard deviation below the mean return. Assuming normality, the probability of such an outcome is .434. (See Example 5.8 for an example of how to compute this probability.) For the 10-year investor, the mean cumulative continuously compounded return is .500 and the standard deviation is .949. Therefore, the investor will suffer losses only if the actual 10-year return is .500/.949 = .527 standard deviation below the expected value. The probability of this outcome is only .299. The probability of a loss after 30 years is even lower, .181. As the horizon expands, mean return increases faster than standard deviation and therefore the probability of a loss steadily shrinks.

By the way, notice that if we take the log of the cumulative return, we get  $\ln [\exp [r_{cc}(1) + r_{cc}(2)] = r_{cc}(1) + r_{cc}(2)$ , which is normally distributed. So if the continuously compounded return is normally distributed, the final value of the portfolio will be lognormally distributed.
18A warning: The variance of the effective annual return is not exactly equal to that of the continuously compounded return. If  $\sigma^2$  is the variance of the continuously compounded return and  $\mu$  is its mean, then the variance of the effective annual rate when returns are lognormally distributed is:

$$
\operatorname {V a r} (r) = \exp [ 2 (\mu + \frac {1}{2} \sigma^ {2}) ] \times [ \exp (\sigma^ {2}) - 1 ]
$$

A warning: Example 5.9 is misleading in an important respect. The probability of a shortfall is an incomplete measure of investment risk. This probability does not take into account the size of potential losses, which, for some of the possible outcomes (however unlikely they may be), amount to near ruin. The worst-case scenarios for the 30-year investment are far worse than for the 1-year investment. We can see this point vividly by comparing the VaR of the investment at different horizons.

Table 5.6 shows that the  $1\%$  VaR after one year entails a continuously compounded cumulative loss of .648, implying that each dollar invested will fall almost in half, specifically to  $e^{-.648} = .523$ . This value is called the "wealth relative" of the investment (i.e., it is the final value of the portfolio as a fraction of initially invested funds). The  $1\%$  VaR after 30 years is far worse: It implies a wealth relative of .098, less than one-fifth the value of the 1-year VaR. Thus, while the probability of losses falls as the investment horizon lengthens, the magnitude of potential losses grows. The comparison is even more extreme when we look at the  $0.1\%$  VaR.

Despite this, many observers maintain the view that investment risk is less pertinent to long-term investors. A typical demonstration relies on the fact that the standard deviation (or range of likely outcomes) of annualized returns is lower for longer-term horizons. But that argument is silent on the range of total returns.

# Forecasts for the Long Haul

We use arithmetic averages to forecast future rates of return because they are unbiased estimates of expected rates over equivalent holding periods. But the arithmetic average of short-term returns can be misleading when used to forecast long-term cumulative returns. This is because sampling errors in the estimate of expected return will have asymmetric impact when compounded over long periods. Positive sampling variation will compound to greater upward errors than negative variation.

Jacquier, Kane, and Marcus show that an unbiased forecast of total return over long horizons requires compounding at a weighted average of the arithmetic and geometric historical averages.[19] The proper weight applied to the geometric average equals the ratio of the length of the forecast horizon to the length of the estimation period. For example, if

<table><tr><td rowspan="2"></td><td colspan="3">Investment Horizon</td><td rowspan="2">Comment</td></tr><tr><td>1</td><td>10</td><td>30</td></tr><tr><td>Mean total return</td><td>0.050</td><td>0.500</td><td>1.500</td><td>= 0.05*T</td></tr><tr><td>Mean average return</td><td>0.050</td><td>0.050</td><td>0.050</td><td>= 0.05</td></tr><tr><td>Std dev total return</td><td>0.300</td><td>0.949</td><td>1.643</td><td>= 0.30*√T</td></tr><tr><td>Probability return &lt; 0</td><td>0.434</td><td>0.299</td><td>0.181</td><td>assuming normal distribution</td></tr><tr><td>1\% VaR total return</td><td>-0.648</td><td>-1.707</td><td>-2.323</td><td>continuously compounded return</td></tr><tr><td>Implies final wealth relative of:</td><td>0.523</td><td>0.181</td><td>0.098</td><td>= exp(VaR total return)</td></tr><tr><td>0.1\% VaR total return</td><td>-0.877</td><td>-2.432</td><td>-3.578</td><td>continuously compounded return</td></tr><tr><td>Implies final wealth relative of:</td><td>0.416</td><td>0.088</td><td>0.028</td><td>= exp(VaR total return)</td></tr></table>

Table 5.6

Investment risk at different horizons we wish to forecast the cumulative return for a 25-year horizon from a 90-year history, an unbiased estimate would be to compound at a rate of


$$
\text {G e o m e t r i c a v e r a g e} \times \frac {2 5}{9 0} + \text {A r i t h m e t i c a v e r a g e} \times \frac {(9 0 - 2 5)}{9 0}
$$

This correction would take about  $5\%$  off the historical arithmetic average risk premium on large stocks and almost  $2\%$  off the arithmetic average premium of small stocks. A forecast for the next 90 years would require compounding at only the geometric average, and for longer horizons at an even lower number. The forecast horizons that are relevant for current investors therefore depend on their investment horizons.

# SUMMARY

1. The economy's equilibrium level of real interest rates depends on the willingness of households to save, as reflected in the supply curve of funds, and on the expected profitability of business investment in plant, equipment, and inventories, as reflected in the demand curve for funds. It depends also on government fiscal and monetary policy.
2. The nominal rate of interest is the equilibrium real rate plus the expected rate of inflation. In general, we can directly observe only nominal interest rates; from them, we must infer expected real rates, using inflation forecasts. Assets with guaranteed nominal interest rates are risky in real terms because the future inflation rate is uncertain.
3. The equilibrium expected rate of return on any security is the sum of the equilibrium real rate of interest, the expected rate of inflation, and a security-specific risk premium.
4. Investors face a trade-off between risk and expected return. Historical data confirm our intuition that assets with low degrees of risk should provide lower returns on average than do those of higher risk.
5. Historical rates of return over the last century in other countries suggest the U.S. history of stock returns may be a positive outlier compared to other countries. This would suggest that its historical experience may overstate realistic projections for future performance as well as the risk premium demanded by stock market investors.
6. Historical returns on stocks exhibit somewhat more frequent large deviations from the mean than would be predicted from a normal distribution. However, the discrepancies from the normal distribution tend to be minor and inconsistent across various measures of tail risk, and have declined in recent years. The lower partial standard deviation (LPSD), skew, and kurtosis of the actual distribution quantify the deviation from normality.
7. Widely used measures of tail risk are value at risk (VaR) and expected shortfall or, equivalently, conditional tail expectation. VaR measures the loss that will be exceeded with a specified probability such as  $1\%$  or  $5\%$ . Expected shortfall (ES) measures the expected rate of return conditional on the portfolio falling below a certain value. Thus,  $1\%$  ES is the expected value of the outcomes that lie in the bottom  $1\%$  of the distribution.
8. Investments in risky portfolios do not become safer in the long run. On the contrary, the longer a risky investment is held, the greater the risk. The basis of the argument that stocks are safe in the long run is the fact that the probability of an investment shortfall becomes smaller. However, probability of shortfall is an incomplete measure of the safety of an investment because it ignores the magnitude of possible losses.

<table><tr><td>effective annual rate (EAR)</td><td>risk-free rate</td><td>expected shortfall (ES)</td></tr><tr><td>annual percentage rate (APR)</td><td>risk premium</td><td>conditional tail expectation</td></tr><tr><td>nominal interest rate</td><td>excess return</td><td>(CTE)</td></tr><tr><td>real interest rate</td><td>risk aversion</td><td>lower partial standard</td></tr><tr><td>dividend yield</td><td>normal distribution</td><td>deviation (LPSD)</td></tr><tr><td>scenario analysis</td><td>skew</td><td>Sortino ratio</td></tr><tr><td>mean rate of return</td><td>kurtosis</td><td>lognormal distribution</td></tr><tr><td>variance</td><td>tail risk</td><td></td></tr><tr><td>standard deviation</td><td>value at risk (VaR)</td><td></td></tr></table>

# KEY TERMS

Arithmetic average of  $n$  returns:  $(r_1 + r_2 + \dots + r_n) / n$

Geometric average of  $n$  returns:  $[(1 + r_1)(1 + r_2)\dots (1 + r_n)]^{1 / n} - 1$

Continuously compounded rate of return,  $r_{cc} = \ln (1 +$  Effective annual rate)

Expected return:  $\sum$  [prob(Scenario)  $\times$  Return in scenario]

Variance:  $\sum [\mathrm{prob}(\mathrm{Scenario})\times (\mathrm{Deviation~from~mean~in~scenario})^2 ]$

Standard deviation:  $\sqrt{\text{Variance}}$

Sharpe ratio:  $\frac{\text{Portfolio risk premium}}{\text{Standard deviation of excess return}} = \frac{E(r_P) - r_f}{\sigma_P}$

Real rate of return:  $\frac{1 + \text{Nominal return}}{1 + \text{Inflation rate}} - 1$

Real rate of return (continuous compounding):  $r_{\mathrm{nominal}} -$  Inflation rate

# KEY EQUATIONS

1. The Fisher equation tells us that the real interest rate approximately equals the nominal rate minus the inflation rate. Suppose the inflation rate increases from  $3\%$  to  $5\%$ . Does the Fisher equation imply that this increase will result in a fall in the real rate of interest? Explain.
2. You've just stumbled on a new dataset that enables you to compute historical rates of return on U.S. stocks all the way back to 1880. What are the advantages and disadvantages in using these data to help estimate the expected rate of return on U.S. stocks over the coming year?
3. The Narnian stock market had a rate of return of  $45\%$  last year, but the inflation rate was  $30\%$ . What was the real rate of return to Narnian investors?
4. You have 5,000 to invest for the next year and are considering three alternatives:

$a$ . A money market fund with an average maturity of 30 days offering a current yield of  $3\%$  per year.
b. A 1-year savings deposit at a bank offering an interest rate of  $4\%$ .
c. A 20-year U.S. Treasury bond offering a yield to maturity of  $5\%$  per year.

What role does your forecast of future interest rates play in your decisions?

5. Use Figure 5.1 in the text to analyze the effect of the following on the level of real interest rates: a. Businesses become more pessimistic about future demand for their products and decide to reduce their capital spending.

$b$ . Households are induced to save more because of increased uncertainty about their future Social Security benefits.
c. The Federal Reserve Board undertakes open-market purchases of U.S. Treasury securities in order to increase the supply of money.

# PROBLEM SETS

6. You are considering the choice between investing 50,000 in a conventional 1-year bank CD offering an interest rate of 5\% and a 1-year "Inflation-Plus" CD offering 1.5\% per year plus the rate of inflation.

a. Which is the safer investment?
$b$ . Can you tell which offers the higher expected return?
c. If you expect the rate of inflation to be  $3\%$  over the next year, which is the better investment? Why?
d. If we observe a risk-free nominal interest rate of  $5\%$  per year and a risk-free real rate of  $1.5\%$  on inflation-indexed bonds, what can we infer about the market's expectation of the inflation rate?

7. Suppose your expectations regarding the stock price are as follows:

<table><tr><td>State of the Market</td><td>Probability</td><td>Ending Price</td><td>HPR (including dividends)</td></tr><tr><td>Boom</td><td>0.35</td><td>140</td><td>44.5\%</td></tr><tr><td>Normal growth</td><td>0.30</td><td>110</td><td>14.0</td></tr><tr><td>Recession</td><td>0.35</td><td>80</td><td>-16.5</td></tr></table>

Use Equations 5.11 and 5.12 to compute the mean and standard deviation of the HPR on stocks.

8. Derive the probability distribution of the 1-year HPR on a 30-year U.S. Treasury bond with an  $8\%$  coupon if it is currently selling at par and the probability distribution of its yield to maturity a year from now is as follows:

<table><tr><td>State of the Economy</td><td>Probability</td><td>YTM</td></tr><tr><td>Boom</td><td>0.20</td><td>11.0\%</td></tr><tr><td>Normal growth</td><td>0.50</td><td>8.0</td></tr><tr><td>Recession</td><td>0.30</td><td>7.0</td></tr></table>

For simplicity, assume the entire  $8\%$  coupon is paid at the end of the year rather than every 6 months.

9. Determine the standard deviation of a random variable  $q$  with the following probability distribution:

<table><tr><td>Value of q</td><td>Probability</td></tr><tr><td>0</td><td>0.25</td></tr><tr><td>1</td><td>0.25</td></tr><tr><td>2</td><td>0.50</td></tr></table>

10. The continuously compounded annual return on a stock is normally distributed with a mean of  $20\%$  and standard deviation of  $30\%$ . With  $95.44\%$  confidence, we should expect its actual return in any particular year to be between which pair of values? (Hint: Look again at Figure 5.4.) a.  $-40.0\%$  and  $80.0\%$

b.  $-30.0\%$  and  $80.0\%$ c.  $-20.6\%$  and  $60.6\%$
d.  $-10.4\%$  and  $50.4\%$

11. Using historical risk premiums from Table 5.5 over the 1927-2021 period as your guide, what would be your estimate of the expected annual HPR on the Big/Value portfolio if the current risk-free interest rate is  $3\%$ ?

12. Visit Professor Kenneth French's data library Web site, MBA.tuck.dartmouth.edu/pages/faculty/ken.french/data.library.html, and download the monthly returns of "6 portfolios formed on size and book-to-market  $(2\times 3)$  . Choose the value-weighted series for the period from 1927- 2021. Split the sample in half and compute the average, SD, skew, and kurtosis for each of the six portfolios for the two halves. Do the six split-halves statistics suggest to you that returns come from the same distribution over the entire period?
13. During a period of severe inflation, a bond offered a nominal HPR of  $80\%$  per year. The inflation rate was  $70\%$  per year.

a. What was the real HPR on the bond over the year?
b. Compare this real HPR to the approximation  $r_{\mathrm{real}} \approx r_{\mathrm{nom}} - i$

14. Suppose that the inflation rate is expected to be  $3\%$  in the near future. Using the historical data provided in this chapter, what would be your predictions for: a. The T-bill rate?

b . The expected rate of return on the Big/Value portfolio?
c. The risk premium on the stock market?

15. An economy is making a rapid recovery from steep recession, and businesses foresee a need for large amounts of capital investment. Why would this development affect real interest rates?
 16. You are faced with the probability distribution of the HPR on the stock market index fund given in Spreadsheet 5.1 of the text. Suppose the price of a put option on a share of the index fund with exercise price of \$110 and time to expiration of 1 year is \$12.

a. What is the probability distribution of the HPR on the put option?
b. What is the probability distribution of the HPR on a portfolio consisting of one share of the index fund and a put option?
c . In what sense does buying the put option constitute a purchase of insurance in this case?

17. Suppose the risk-free interest rate is 6\% per year. You are contemplating investing \$107.55 in a 1-year CD and simultaneously buying a call option on the stock market index fund with an exercise price of \$110 and expiration of 1 year. Using the scenario analysis of Spreadsheet 5.1, what is the probability distribution of your dollar return at the end of the year?
18. Consider these long-term investment data:

- The price of a 10-year \$100 face value zero-coupon inflation-indexed bond is \$84.49.
- A real-estate property is expected to yield  $2\%$  per quarter (nominal) with a SD of the (effective) quarterly rate of  $10\%$ .

a . Compute the annual rate of return on the real (i.e., inflation-indexed) bond.
B . Compute the continuously compounded annual risk premium on the real-estate investment.
c. What is the probability of loss on the real estate investment after 10 years?

1. Given 100,000 to invest, what is the expected risk premium in dollars of investing in equities versus risk-free T-bills (U.S. Treasury bills) based on the following table?

<table><tr><td>Action</td><td>Probability</td><td>Expected Return</td></tr><tr><td rowspan="2">Invest in equities</td><td>0.6</td><td>$50,000</td></tr><tr><td>0.4</td><td>-$30,000</td></tr><tr><td>Invest in risk-free T-bill</td><td>1.0</td><td>5,000</td></tr></table> el

at us at e.com/Bodie13e

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/eb66353b000f92390312dd89cbe55758fdd9c2dbfc5421b6ec36edea27532d66.jpg)

2. Based on the scenarios below, what is the expected return for a portfolio with the following return profile?

<table><tr><td></td><td>Bear Market</td><td>Normal Market</td><td>Bull Market</td></tr><tr><td>Probability</td><td>0.2</td><td>0.3</td><td>0.5</td></tr><tr><td>Rate of return</td><td>-25\%</td><td>10\%</td><td>24\%</td></tr></table>

Use the following scenario analysis for Stocks X and Y to answer CFA Problems 3 through 5 (round to the nearest percent).

<table><tr><td></td><td>Bear Market</td><td>Normal Market</td><td>Bull Market</td></tr><tr><td>Probability</td><td>0.2</td><td>0.5</td><td>0.3</td></tr><tr><td>Stock X</td><td>-20\%</td><td>18\%</td><td>50\%</td></tr><tr><td>Stock Y</td><td>-15\%</td><td>20\%</td><td>10\%</td></tr></table>

3. What are the expected rates of return for Stocks X and Y?
4. What are the standard deviations of returns on Stocks X and Y?
 5. Assume that of your \$10,000 portfolio, you invest \$9,000 in Stock X and 1,000 in Stock Y. What is the expected return on your portfolio?
6. Probabilities for three states of the economy and probabilities for the returns on a particular stock in each state are shown in the table below.

<table><tr><td>State of Economy</td><td>Probability of Economic State</td><td>Stock Performance</td><td>Probability of Stock Performance in Given Economic State</td></tr><tr><td rowspan="3">Good</td><td rowspan="3">0.3</td><td>Good</td><td>0.6</td></tr><tr><td>Neutral</td><td>0.3</td></tr><tr><td>Poor</td><td>0.1</td></tr><tr><td rowspan="3">Neutral</td><td rowspan="3">0.5</td><td>Good</td><td>0.4</td></tr><tr><td>Neutral</td><td>0.3</td></tr><tr><td>Poor</td><td>0.3</td></tr><tr><td rowspan="3">Poor</td><td rowspan="3">0.2</td><td>Good</td><td>0.2</td></tr><tr><td>Neutral</td><td>0.3</td></tr><tr><td>Poor</td><td>0.5</td></tr></table>

What is the probability that the economy will be neutral and the stock will experience poor performance?

7. An analyst estimates that a stock has the following probabilities of return depending on the state of the economy:

<table><tr><td>State of Economy</td><td>Probability</td><td>Return</td></tr><tr><td>Good</td><td>0.1</td><td>15\%</td></tr><tr><td>Normal</td><td>0.6</td><td>13</td></tr><tr><td>Poor</td><td>0.3</td><td>7</td></tr></table>

What is the expected return of the stock?

# E-INVESTMENTS EXERCISES

1. The OECD regularly publishes its economic outlook for the G20 countries as well as the world as a whole. You can find a recent report at www.oecd.org/economic-outlook. What is the forecast for U.S. inflation for the next year?
2. What is the one-year nominal interest rate on 1-year Treasury securities? You can find this at the St. Louis Fed data site fred.stlouisfed.org.
3. What is the expected real rate based on your answers to (1) and (2)?
4. What is the real rate of interest on one-year inflation-protected T-bonds (TIPS)? You can also find this at the St. Louis Fed site, or from the online version of The Wall Street Journal, online. wsj.com. Look for the tab for Markets, then Market Data.
5. Is the value for the expected real rate that you found in (3) consistent with the value you found in (4)?
6. How does the current real rate compare to its historical average?

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/169a187eb203efc6c2614b4aa601466bf7e651f5f315ec66dee2a74d472f95af.jpg)

# SOLUTIONS TO CONCEPT CHECKS

1.  $a$ .  $\mathrm{EAR} = (1 + .01)^{12} - 1 = .1268 = 12.68\%$ b. EAR = e $^{-12}$  - 1 = .1275 = 12.75\%


Choose the continuously compounded rate for its higher EAR.

2.  $a$ .  $1 + r_{\mathrm{nom}} = (1 + r_{\mathrm{real}})(1 + i) = (1.03)(1.08) = 1.1124$

$$ r_{\mathrm{nom}} = 11.24\%
$$ b.  $1 + r_{\mathrm{nom}} = (1.03)(1.10) = 1.133$


$$ r_{\mathrm{nom}} = 13.3\%
$$

3. Number of bonds bought is  $27,000 / 900 = 30$

<table><tr><td>Interest Rates</td><td>Probability</td><td>Year-End Bond Price</td><td>HPR</td><td>End-of-Year Value</td></tr><tr><td>Higher</td><td>0.2</td><td>$850</td><td>(75 + 850)/900 - 1 = 0.0278</td><td>(75 + 850)30 = $27,750</td></tr><tr><td>Unchanged</td><td>0.5</td><td>915</td><td>0.1000</td><td>$29,700</td></tr><tr><td>Lower</td><td>0.3</td><td>985</td><td>0.1778</td><td>$31,800</td></tr><tr><td>Expected rate of return</td><td></td><td></td><td>0.1089</td><td></td></tr><tr><td>Expected end-of-year dollar value</td><td></td><td></td><td></td><td>29,940</td></tr><tr><td>Risk premium</td><td></td><td></td><td>0.0589</td><td></td></tr></table>

4. The probability of a more extreme bad month, with return below  $-15\%$ , is much lower: NORM. DIST  $(-15, 1, 6, \text{TRUE}) = .00383$ . Alternatively, we can note that  $-15\%$  is  $16/6$  standard deviations below the mean return, and use the standard normal function to compute NORM.S.DIST  $(-16/6) = .00383$ .
5. If the probabilities in Spreadsheet 5.2 represented the true return distribution, we would use Equations 5.14 and 5.15 to obtain: Skew = 0.0931; Kurtosis = -1.2081. However, in this case, the data in the table represent a (short) historical sample, and correction for degrees-of-freedom bias is required (in a similar manner to our calculations for standard deviation). You can use Excel functions to obtain: SKEW(C2:C6) = 0.1387; KURT(C2:C6) = -0.2832.

6.  $(1 + \text{Required rate})(1 - .40) = 1$

Required rate  $= .667$  or  $66.7\%$

7. a. Arithmetic return  $= (1/3)(.2869) + (1/3)(.1088) + (1/3)(0.0491) = .1483 = 14.83\%$ b. Geometric average  $= (1.2869 \times 1.1088 \times 1.0491)^{1/3} - 1 = .1439 = 14.39\%$
c. Standard deviation  $= {12.37}\%$ d. Sharpe ratio  $= (14.83 - 6.0) / 12.37 = .71$


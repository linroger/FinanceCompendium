# Calculating Investment Returns

Bruce Feibel

Director

Performance Measurement Technology

Eagle Investment Systems

After investment objectives have been set, strategy determined, assets allocated, and trades are made, the next task is to value the portfolio and begin the process of performance measurement. Whether an investor makes his own investing decisions or delegates this duty to advisors, all parties are interested in calculating and weighing the results. The first stage in the performance measurement process is to compute a return, which is the income and profit earned on the capital that the investor places at risk in the investment.

Suppose $100 is invested in a fund and the fund subsequently increases in value such that the investor receives $130 back. What was the return on this investment? The investor gained $30. Taking this dollar return and dividing it by the $100 invested, and multiplying the decimal result 0.3 by 100 gives us the return expressed as a percentage; that is, $30\%$.

A rate of return is the gain received from an investment over a period of time expressed as a percentage. Returns are a ratio relating how much was gained given how much was risked. We interpret a  $30\%$  return as a gain over the period equal to almost 1/3 of the original 100 invested.

Although it appears that no special knowledge of investments is required to calculate and interpret rates of return, several complications make the subject worthy of further investigation:

Selection of the proper inputs to the return calculation
■ Treatment of additional client contributions and withdrawals to and from the investment account

Adjusting the return to reflect the timing of these contributions and withdrawals
Differentiating between the return produced by the investment manager and the return experienced by the investor
Computing returns spanning multiple valuation periods
Averaging periodic rates of return

These are the issues that we will address in this chapter. In it, we summarize what has evolved to be the investment industry standard approach to calculating and reporting portfolio rates of return. Individual and institutional investors, investing via separate and commingled accounts, using a myriad of strategies and asset classes, use the methodology presented in this chapter to calculate the returns earned by their investment portfolios. The tools covered here are relevant whether you are an individual monitoring the performance of your own personal brokerage account, a financial planner providing advice to many individuals, the manager of a mutual fund, or a plan sponsor overseeing dozens of specialist investment managers. In the illustrations that are used to explain the various concepts presented in the chapter, a spreadsheet format is used so that it is easier for the reader to replicate the calculations.

# SINGLE PERIOD RATE OF RETURN

Why do we compute rates of return to describe the performance of an investment when we could simply judge our performance by the absolute dollars gained over time? After all, there is no better judge than money in the bank! There are several reasons that returns have emerged as the preferred statistic for summarizing investment performance:

The rate of return concentrates a lot of information into a single statistic. Individual data points about the beginning and ending market values, income earned, cash contributions and withdrawals, and trades for all of the holdings in the portfolio are compressed into a single number.
This single number, the return, is a ratio. It is faster for an investor to analyze proportions than absolute numbers. For example, if an investor is told she earned an  $8\%$  rate of return, she can instantly begin to judge whether she is happy with this result, compared to the need to pore over valuation and transaction statements first.
- Returns are comparable even if the underlying figures are not. An investor can compare returns even when the portfolios have different base currencies or have different sizes. For example, if an investor puts

$100 to work and gains$ 10, she has earned the same return as an investor who put $1 million to work and ended up with $1.1 million.
- Returns calculated for different periods are comparable; that is, an investor can compare this year's return to last year's.
The interpretation of the rate of return is intuitive. Return is the value reconciling the beginning investment value to the ending value over the time period we are measuring. An investor can take a reported return and use it to determine the amount of money he would have at the end of the period given the amount invested.

$$
\mathrm{MVE} = \mathrm{MVB} \times (1 + \text{DecimalReturn})
$$ where


MVE = market value at the end of the period

MVB = market value at the start of the period

For example, if we were to invest 100 at a return of 40\%, we would have 140 at the end of the period: 100 \times (1.40) = 140. Adding one to the decimal return before multiplying gives a result equal to the beginning value plus the gain/loss over the period. Multiplying by the return of 0.4 gives the gain/loss over the period (40).

Let's look closer at the calculation of return. In our introductory example we earned a  $30 gain on an investment of$ 100. By dividing the gain by the amount invested we derive the 30\% return using

$$
\text{ReturnInPercent} = \left(\frac{\text{GainOrLoss}}{\text{InvestmentMade}}\right) \times 100
$$

Suppose that instead of investing and then getting our money back within a single period, we held an investment worth  $100 at the beginning of the period and continued to hold it at the end of the period when it was valued at$ 130. Multiplying the first ratio by 100 transforms the decimal fraction into a percentage gain; 30\% in our example (0.3 × 100 = 30\%).

The same return can be calculated whether an investor buys and then liquidates an investment within a period or carries it over from a prior period and holds on to it. When we measure the return on an investment that we buy and hold across periods, we treat the beginning market value as if it were a new investment made during the period, and the ending market value as if it were the proceeds from the sale of the investment at the end of the period.

We have used two forms of the return calculation so far. It does not matter which one we use. The two methods are equivalent.

$$
\left(\frac {\text {G a i n o r L o s s}}{\text {I n v e s t m e n t m a d e}}\right) \times 1 0 0 = \left[ \left(\frac {\text {C u r r e n t v a l u e}}{\text {I n v e s t m e n t m a d e}}\right) - 1 \right] \times 1 0 0
$$

We can demonstrate that the two forms are same by deriving the second form of the calculation from the first.

$$
\left(\frac {\mathrm {M V E} - \mathrm {M V B}}{\mathrm {M V B}}\right) \times 1 0 0 \rightarrow \left(\frac {\mathrm {M V E}}{\mathrm {M V B}} - \frac {\mathrm {M V B}}{\mathrm {M V B}}\right) \times 1 0 0 \rightarrow \left(\frac {\mathrm {M V E}}{\mathrm {M V B}} - 1\right) \times 1 0 0
$$

Using the first form, the numerator of the rate of return calculation is the unrealized gain or loss: the difference between the starting and ending market value. If there were income earned during the period, we also add it into the numerator, making the numerator more properly the market value plus accrued income. In either form of the calculation the denominator is the investment made. The number we select for the denominator represents the money at risk during the period. For the first measurement period, the investment made is equal to the amount originally invested in the portfolio. In subsequent periods, it is equal to the ending market value of the previous period. The calculation of a return where we invested  $100 at the end of December and it rises to$ 110 in January and then 120 in February is provided in the following spreadsheet.

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td></tr><tr><td>1</td><td>Month End</td><td>Market Value</td><td>Dollar Return</td><td>Percent Return</td></tr><tr><td>2</td><td>31-Dec-2000</td><td>100</td><td></td><td></td></tr><tr><td>3</td><td>31-Jan-2000</td><td>110</td><td>10</td><td>10.00</td></tr><tr><td>4</td><td>28-Feb-2000</td><td>120</td><td>10</td><td>9.09</td></tr><tr><td>5</td><td></td><td></td><td></td><td></td></tr><tr><td>6</td><td></td><td></td><td>=B4:B3</td><td>=((C4/B3)*100)</td></tr></table>

Notice that even though we earned the same  $10 dollar return in January and February, the percent return is higher in January (10/100 = 10.00\%) than it was in February (10/110 = 9.09\%). The reason for the lower February return is that the money at risk in the fund for February equals not only the original investment of$ 100 but also the 10 gained in January. With more money put at risk, the same dollar gain results in a lower return to the investment.

By using the market value of the investment to calculate returns, we recognize a gain on the investment even though it is not actually realized by selling it at the end of the period. To calculate returns that include unrealized gains, we value the portfolio at the end of each measurement period. These dates are the periodic valuation dates. A return calculated between two valuation dates is called a single period, holding period, or periodic return. The periodicity of single period returns is related to the frequency of portfolio valuation. For example, single period returns can be calculated on a daily basis for mutual funds which are valued at the close of the market each night, but may be calculated only monthly for institutional separate accounts, or quarterly for a share in a real estate partnership, as these types of holdings are not valued as frequently. Valuations are performed at least as often as participants are allowed to move money into or out of a commingled fund.


# Components of Single Period Returns

When there are no transactions into or out of an investment account and no income earned, to calculate a single period return, we simply divide the ending market value by the beginning market value. Total portfolio market values are derived by summing up the values of the underlying investments within the fund. If we are calculating the return earned on our share of a commingled portfolio, such as a mutual fund, the market value equals the sum of the shares we own multiplied by the unit value of each share on the valuation date. Unit values are calculated by dividing the sum of the individual security market values that comprise the fund by the number of shares outstanding. Portfolio holdings are determined on a trade date basis. With trade date accounting we include securities in the portfolio valuation on the day the manager agrees to buy or sell the securities, as opposed to waiting for the day the trades are settled with the broker.

The market value of each security is the amount we would expect to receive if the investment were sold on the valuation date. It is calculated using observed market prices and exchange rates wherever possible. Determining market value is easy for instruments like exchange-traded equities, but we need to estimate the current value of other investment types. For example, bonds that do not trade often are marked to market by reference to the price of similar bonds that did trade that day. Although it is possible, say for liquidity reasons, that we could not actually realize the observed market closing price used in the valuation if we were to actually sell the investment, this method avoids introducing subjective estimates of trading impact into return calculations. If the fund holds cash, it too is included in the valuation of the fund.

The individual security market values include a measure of income earned or accrued income on the investment. Accrued income is income earned but not yet received. For example, if an investor sells a bond between coupon dates, the investor sells the interest accrued from the last payment date to the buyer of the bond. Because the interest sold would be part of the proceeds if the security were sold on the valuation date, we also include it in the calculation of market value. Returns that reflect both the change in market value and the income earned during the period are called total returns. In a similar manner, the total portfolio market value is adjusted for accrued receivables and payables to and from the fund. For example, the accrued management fee payable to the investment manager is subtracted from the total market value.


While it is outside the scope of this chapter to itemize the finer points of valuing every type of security the fund could invest in, the principles of market quote driven, trade date, accrual based valuation are used to judge the worth of each security in the portfolio, which are then summed to the portfolio level and result in the single period return calculation formula:

Percent Rate of Return

$$
= \left[ \left(\frac {\text {E n d i n g M a r k e t V a l u e} + \text {E n d i n g A c c r u e d I n c o m e}}{\text {B e g i n n i n g M a r k e t V a l u e} + \text {B e g i n n i n g A c c r u e d I n c o m e}}\right) - 1 \right] \times 1 0 0
$$

It is worthwhile to note what factors we do not explicitly include in the return calculation. The cost of investments is not considered in performance measurement after the first period's return calculation (except for securities that are valued at their amortized cost). For each subsequent period, the ending market value for the previous period is used as the beginning market value for the next period. The justification for this practice is that we assume that the investment cycle begins afresh with each valuation period, and it is the current market value, and not the original cost, that is invested, or put at risk again, in the next period.

The return calculation makes no reference to gains realized in the course of security sales during the period. In fact the portfolio beginning and ending market values include both unrealized and realized capital appreciation generated by trading within the portfolio during the period. Consider a portfolio with this sequence of activity:

December 31, 2000

■ Holds 100 shares Stock A priced at  $1 per share =$ 100 MVB

January 31, 2001

Stock A valued at 110 for a (10/100 = 10\%) return in January

February 28, 2001

Stock A valued at 115 for a (5/110 = 4.55\%) return in February

March 1, 2001

50 shares of Stock A are sold for $1.15 per share, netting $57.50
The realized gain on the sale is  $\7.50$ \57.50 - \$50 = \$7.5010 Shares of Stock B at 5.75 a share are purchased with the proceeds

March 31, 2001

Stock A valued at (50 shares × $1 = $50)

Stock B valued at (10 shares × $5 = $50)
The total portfolio is worth 100, for a (-15/115 = -13.04\%) loss in March

The spreadsheet below shows that we do not explicitly use the realized gain of 7.50 in the return calculation for March.

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td></tr><tr><td>1</td><td>Date</td><td>MV Stock A</td><td>MV Stock B</td><td>Total MV</td><td>Gain/Loss</td><td>\% Return</td></tr><tr><td>2</td><td>31-Dec-2000</td><td>100.00</td><td>0.00</td><td>100.00</td><td></td><td></td></tr><tr><td>3</td><td>31-Jan-2001</td><td>110.00</td><td>0.00</td><td>110.00</td><td>10.00</td><td>10.00</td></tr><tr><td>4</td><td>28-Feb-2001</td><td>115.00</td><td>0.00</td><td>115.00</td><td>5.00</td><td>4.55</td></tr><tr><td>5</td><td>01-Mar-2001</td><td>57.50</td><td>57.50</td><td>115.00</td><td></td><td></td></tr><tr><td>6</td><td>31-Mar-2001</td><td>50.00</td><td>50.00</td><td>100.00</td><td>-15.00</td><td>-13.04</td></tr><tr><td>7</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>8</td><td></td><td></td><td></td><td></td><td>=D6-D5</td><td>=((E6/D5)*100)</td></tr></table>

The realized gain on the sale of Stock A was committed to the purchase of Stock B, which was then marked to market at the end of the March. We explicitly calculate the unrealized market value change during the period  $(-15.00)$ , and this market value change implicitly includes any realized gains/losses on securities sold during the period.

It is possible that the manager might not reinvest the sale proceeds via the purchase of another security. In this case, we still do not explicitly include the realized gain in the calculation of return. Instead, we include the cash received on the sale in the total fund market value. The following spreadsheet illustrates the fact that we do not need to know about the transactions within the portfolio during the valuation period in order to calculate portfolio level performance.

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td></tr><tr><td>1</td><td>Date</td><td>MV Stock A</td><td>Cash</td><td>Total MV</td><td>Gain/Loss</td><td>\% Return</td></tr><tr><td>2</td><td>31-Dec-2000</td><td>100.00</td><td>0.00</td><td>100.00</td><td></td><td></td></tr><tr><td>3</td><td>31-Jan-2001</td><td>110.00</td><td>0.00</td><td>110.00</td><td>10.00</td><td>10.00</td></tr><tr><td>4</td><td>28-Feb-2001</td><td>115.00</td><td>0.00</td><td>115.00</td><td>5.00</td><td>4.55</td></tr><tr><td>5</td><td>01-Mar-2001</td><td>57.50</td><td>57.50</td><td>115.00</td><td></td><td></td></tr><tr><td>6</td><td>31-Mar-2001</td><td>50.00</td><td>57.90</td><td>107.90</td><td>-7.10</td><td>-6.17</td></tr><tr><td>7</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>8</td><td></td><td></td><td></td><td></td><td>=D6-D5</td><td>=((E6/D5)*100)</td></tr></table>

Transactions within the portfolio during the period do not affect the total fund level return calculation because they have an equal and opposite impact on performance—a purchase of one security is a sale of another (cash). This is also true of income received during the period. Income received on a security is an outflow from that security but an inflow of cash. To calculate portfolio level performance when there are no additional contributions and withdrawals, we only need to calculate the market value of all of the securities in the fund and cash balances at the beginning and end of the holding period.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/7b8dd3a9-2183-4fd3-aa71-37ed7a7fe3b5/769bc9a72def8b561cf6956a44ea4ec841de98a835deccef4d36d6d3412cf356.jpg)
EXHIBIT 3.1 Cash Flows

# Return on Investment (ROI)

So far we have looked at the calculation of a single period return for situations where the market value of our holdings is made available for investment at the start of the next period. Individual and institutional investors also make periodic additional investments, or contributions to, and withdrawals from investment accounts. These net contributions to the fund are not included as a component of investment return; they represent an increase of capital at risk but not a capital gain on our investment. For this reason, when a fund receives new money, it is not possible to measure performance by simply observing the change in market value.

These asset transfers into and out of the fund are sometimes called cash flows. Cash flow is a generic term for different transaction types. For a defined benefit pension plan, the cash flows include periodic corporate contributions to fund the plan and withdrawals to service retirees. For a mutual fund, cash flows include purchases or liquidations of fund shares and exchanges of shares between funds. Exhibit 3.1 shows the generic transactional relationships between the investor, the manager, and the portfolio.

The value of the cash flow is the amount of money deposited or withdrawn. A positive cash flow is a flow into the fund. A negative cash flow is a flow out of the fund. Sometimes contributions are made in securities and not cash; this occurs, for example, when a portfolio is transitioned to a new investment manager. The monetary value of these "in-kind" contributions is measured by the current value of the assets transferred at the time of the contribution. In these situations it is important to use the current market value rather than the original cost.

If the original cost were used, the return calculation for the first period after the contribution would credit the entire return to date as earned in the first period after the transfer.

When there are cash flows, we need to adjust the calculation of gain/ loss in the numerator of the return calculation to account for the fact that the increase in market value was not entirely due to investment earnings. For example, suppose we have a portfolio with an MVB of 100 and a MVE of 130. What is the gain if we invested an additional $10 during the period? We started off with $100 and ended up with 130. We subtract out the additional investment before calculating the gain.

$$
\begin{array}{l} G a i n / L o s s = (C u r r e n t V a l u e - O r i g i n a l I n v e n s t m e n t \\ - \text {N e t C a s h I n f l o w s} + \text {N e t C a s h O u t f l o w s}) \\ \end{array}
$$

The gain in this case is 20 (130 - 100 - 10 + 0). The 20 gain/loss during the period combines two amounts—the gain on the original $100 and the gain on the additional $10 invested. If instead of a net inflow, we had a net outflow because we took money out of the portfolio during the period, the second component would be the gain earned up until the money was withdrawn.

When there are cash flows, in addition to modifying the numerator, we need to modify the denominator of the return calculation to account for additional capital invested or withdrawn during the measurement period. We can modify the rate of return calculation to account for additional investment or withdrawals. The result is the return on investment (ROI) formula. ROI is the gain or loss generated by an investment expressed as a percentage of the amount invested, adjusted for contributions and withdrawals.

$$
\mathrm {R O I i n p e r c e n t} = \left(\frac {\left(\mathrm {E M V} + \mathrm {N O F}\right) - \left(\mathrm {B M V} + \mathrm {N I F}\right)}{\mathrm {B M V} + \mathrm {N I F}}\right) \times 1 0 0
$$ where NIF are the net inflows and NOF are the net outflows. The following spreadsheet shows the calculation of the ROI.


<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td></tr><tr><td>1</td><td>MVB</td><td>In Flows</td><td>Out Flows</td><td>MVE</td><td>Return on Investment \%</td></tr><tr><td>2</td><td>100.00</td><td>10.00</td><td>0.00</td><td>130.00</td><td>18.18</td></tr><tr><td>3</td><td></td><td></td><td colspan="2">=((D2+C2)-(A2+B2)/(A2+B2))*100</td><td></td></tr><tr><td>4</td><td></td><td></td><td></td><td></td><td></td></tr></table>

The first expression in the numerator (EMV + NOF) replaces the EMV used in the ROR calculation. We adjust the ending market value for any withdrawals from the portfolio. Notice that this increases the numerator and the resulting return. Withdrawals are treated as a benefit to per formance. In the second expression, we are subtracting the amount invested in order to calculate the gain. The inflows are treated as an investment, which reduces the gain. Contributions are treated as a cost to performance. The total amount invested (BMV + NIF) is the ROI denominator. By adding the contributions to the BMV we reduce the return, because we are dividing the same gain by a larger number.


Is  $18.18\%$  a fair return to account for the case where  $\mathrm{BMV} = 100$ ,  $\mathrm{EMV} = 130$ , and there was a  $\mathrm{NIF} = 10$ ? The answer is: it depends. Note that there is an implicit assumption that the NIF was available for investing, or at risk, for the complete period. If the additional inflow was put into the fund at the beginning of the period, the investor did not have use of the money for the entire period. The investor would expect a higher fund return to compensate for this as compared to his keeping the money and investing in the fund only at the end of the period. So, returns should take into account the timing of the additional cash flows. If the investment were made sometime during the period, the investor did have use of the capital for some part of the period. For example, if the measurement period was a month and the  $10 contribution came midway through the month, the fund had$ 100 of invested capital for the first half of the month and $110 for the second half. The gain of $20 was made on a smaller invested balance; therefore the return credited to the account should be higher than  $18.18\%$ .

While ROI adjusts for portfolio contributions and withdrawals, it does not adjust for the timing of these cash flows. Because of the assumption that contributions were available for the whole period, ROI will give the same return no matter when in the period the flows occur. Another drawback of the ROI as a measure of investment performance is that it does not adjust for the length of the holding period. The ROI calculation gives the same result whether the gain was earned over a day, a year, or 10 years. For these reasons, we need a measure of return that reflects both the timing of cash flows and the length of the period for which the assets were at risk. Both adjustments are derived from concepts related to the time value of money, which we review next.

# Time Value of Money

Returns can be equated to the interest rates used in the calculation of the future value of a fixed income investment. However, unlike returns, interest rates are known ahead of time, so we can project the future value at the beginning of the period. The future value of an investment equals the present value plus the interest and other gains earned over the period.

$$
\mathrm {F V} = \mathrm {P V} \times (1 + R) ^ {N}
$$ where


$\mathrm{FV} =$  value at end of period

PV = current value of the investment

$R =$  rate of income earned per period

$N =$  number of valuation periods

In return calculations, it is the  $R$  that is unknown. We calculate this rate  $R$  using observations of the beginning and ending market values. To derive the equivalent of the future value, which is the MVE of an investment during a single period, we multiply the MVB by 1 plus the interest rate.

Ending Market Value = Beginning Market Value  $\times$  (1 + Interest Rate)

The difference between the ending and beginning market values is the income earned. Compounding is the reinvestment of income to earn more income in subsequent periods. In a simple interest scenario, the income earned is not reinvested in order for it to compound in the following periods. For example, if a  $\mathrm{MVB} = 1000$  is put to work for a period of 4 months at an interest rate  $= 5\%$  per month, we calculate an ending value of 1200.

Ending market value
= Beginning market value
$\times [1 + (\text{Rate in percent} / 100) \times \text{No. of time periods invested}]$
[ = 1,000 \times \left[1 + \left(5\% / 100\right) \times 4\right] = 1,200 ]

We use the simple interest calculation if the investor withdraws the income earned at the end of each period. In this example, the total gain over the four months is 200. Dividing by the 1,000 invested gives a 20\% return for the four-month period. This equals the monthly periodic dollar return multiplied by four.

If the income and gains are retained within the investment vehicle or reinvested, they will accumulate and increase the starting balance for each subsequent period's income calculation. For example,  $100 invested at 7\%$  for 10 years, assuming yearly compounding, produces an ending value of 196.72.

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td><td>H</td></tr><tr><td>1</td><td>Year</td><td>BMV</td><td>Interest Rate</td><td>EMV</td><td>Principal</td><td>Interest</td><td>Interest on Interest</td><td>\% of Value</td></tr><tr><td>2</td><td>0</td><td></td><td></td><td>100.00</td><td>100.00</td><td></td><td></td><td></td></tr><tr><td>3</td><td>1</td><td>100.00</td><td>0.07</td><td>107.00</td><td>100.00</td><td>7.00</td><td>0.00</td><td></td></tr><tr><td>4</td><td>2</td><td>107.00</td><td>0.07</td><td>114.49</td><td>100.00</td><td>14.00</td><td>0.49</td><td>0\%</td></tr><tr><td>5</td><td>3</td><td>114.49</td><td>0.07</td><td>122.50</td><td>100.00</td><td>21.00</td><td>1.50</td><td>1\%</td></tr><tr><td>6</td><td>4</td><td>122.50</td><td>0.07</td><td>131.08</td><td>100.00</td><td>28.00</td><td>3.08</td><td>2\%</td></tr><tr><td>7</td><td>5</td><td>131.08</td><td>0.07</td><td>140.26</td><td>100.00</td><td>35.00</td><td>5.26</td><td>4\%</td></tr><tr><td>8</td><td>6</td><td>140.26</td><td>0.07</td><td>150.07</td><td>100.00</td><td>42.00</td><td>8.07</td><td>5\%</td></tr><tr><td>9</td><td>7</td><td>150.07</td><td>0.07</td><td>160.58</td><td>100.00</td><td>49.00</td><td>11.58</td><td>7\%</td></tr><tr><td>10</td><td>8</td><td>160.58</td><td>0.07</td><td>171.82</td><td>100.00</td><td>56.00</td><td>15.82</td><td>9\%</td></tr><tr><td>11</td><td>9</td><td>171.82</td><td>0.07</td><td>183.85</td><td>100.00</td><td>63.00</td><td>20.85</td><td>11\%</td></tr><tr><td>12</td><td>10</td><td>183.85</td><td>0.07</td><td>196.72</td><td>100.00</td><td>70.00</td><td>26.72</td><td>14\%</td></tr><tr><td>13</td><td></td><td></td><td></td><td></td><td></td><td>↑</td><td></td><td></td></tr><tr><td>14</td><td></td><td></td><td></td><td>=B12*(1+C12)</td><td></td><td>=C12*EB3+A12</td><td>=D12-(E12+F12)</td><td>=O12/D12</td></tr></table>

Unfortunately, the reinvestment assumption is not realistic for all investors. For example, any taxable investor investing outside a vehicle shielded from taxes, such as a qualified retirement account, will have to pay taxes on income earned. The taxes reduce the income available for reinvestment in the next period. Given this fact, one of the trends in performance measurement is the incorporation of taxes into the return calculation.

The reinvestment assumption is important because the power of investing lies in the compound interest, the interest on the interest earned in prior periods. Given the 10-year investment earning a  $7\%$  yearly return, the interest on interest component comprises  $14\%$  of the terminal value. With a 30-year investment at  $7\%$ , the interest on interest will approach  $60\%$  of the ending value.

When interest earnings are withdrawn after each period, the simple interest calculation is a better measure of the situation. If income is left to earn more income, then compound interest is the better measure. Compound interest is assumed in almost all investment applications. With interest rates, we usually assume that interest is reinvested at the same interest rate for subsequent periods. The difference between working with returns instead of interest rates is that in return calculations, while we also assume that the income is reinvested, we recognize that the periodic returns fluctuate over time.

While we understand that earning a higher return over the holding period will increase the ending investment value, the frequency of compounding also impacts the ending value. As shown in the spreadsheet that follows, an investment that has the same return has a higher value if the income is compounded more frequently

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td></tr><tr><td>1</td><td>Frequency</td><td>MVB</td><td>Periods</td><td>Return</td><td>MVE</td></tr><tr><td>2</td><td>Yearly</td><td>1000.00</td><td>1.00</td><td>0.07</td><td>1070.00</td></tr><tr><td>3</td><td>Monthly</td><td>1000.00</td><td>12.00</td><td>0.07</td><td>1072.29</td></tr><tr><td>4</td><td>Daily</td><td>1000.00</td><td>365.25</td><td>0.07</td><td>1072.50</td></tr><tr><td>5</td><td></td><td></td><td colspan="2">=FV(D4/C4,C4,0,B4*1)</td><td></td></tr><tr><td>6</td><td></td><td></td><td></td><td></td><td></td></tr></table>

Interest rates are usually quoted on a yearly or annual basis. We can adjust the quoted annual interest rate to account for more frequent compounding:

$$
\mathrm {M V E} = \mathrm {M V B} \times \left(1 + \frac {r _ {\text {p e r i o d}} \times m}{m}\right) ^ {m \times \text {p e r i o d s}}
$$ where


$r =$  the periodic interest rate
$m =$  times per period that interest is paid, or compounds

For example, if a  $100 investment yielded 3\%$  for 6 months (i.e.,  $\mathrm{MVB} = 100$  and  $\mathrm{MVE} = 103$ ), the value at the end of one year, assuming semiannual compounding and reinvestment of the interest, is 106.09:

$$
1 0 6. 0 9 = 1 0 0 \times \left(1 + \frac {(0 . 0 3 \times 2)}{2}\right) ^ {2 \times 1 (\text {y e a r})}
$$

# Returns that Take Time Into Account

Given the fact that money has a time value, let's return to a question that we considered earlier: What is the proper holding period return to attribute to a fund where the MVB equals  $100, we invest an additional$ 10 during the period, and the MVE = 130?

No matter when in the period the investment was made, the dollar gain is $20 ($130 - $100 - $10) for the period. The return over the period depends on the timing of the additional investment. The return could be as low as 18.18\% or as high as 20\%. If the $10 were invested at the beginning of the period, capital employed equals the original investment of $100 plus the additional investment of 10.

$$
\left(\frac{130 - 100 - 10}{100 + 10}\right)\times 100\rightarrow \left(\frac{130 - 110}{110}\right)\times 100\rightarrow \left(\frac{20}{110}\right)\times 100 = 18.18\%
$$

If instead the additional investment were made precisely at the end of the period, the capital employed during the period is just 100, so the return is 20\%.

$$
\left(\frac{130 - 100 - 10}{100}\right)\times 100\rightarrow \left(\frac{130 - 110}{100}\right)\times 100\rightarrow \left(\frac{20}{100}\right)\times 100 = 20\%
$$

Given the same dollar gain, we should credit the overall investment with a higher return as the contribution is made closer to the end of the period. If the investment is made at the end of the period, the additional contribution is not included in the denominator. The same numerator divided by a smaller denominator leads to the higher return. The higher return is justified when the contribution is made at the end of the period because the capital at risk during the period was lower yet we earned the same dollar gain.

This example shows that it is important to track the time when contributions or withdrawals are made into an investment account in order to accurately determine returns. We always adjust the numerator for the additional contributions or withdrawals during the period. We either include the full amount of the contribution in the denominator, none of it, or a partial amount, depending on the timing of the cash flow. When the denominator of a return calculation is adjusted for contributions or withdrawals we refer to the denominator as the average capital employed or the average invested balance.


# PERFORMANCE OF AN INVESTMENT: MONEY WEIGHTED RETURNS

In this section we establish the need to recognize the effects of both investor and manager decisions when calculating the return earned by the investor, but isolating the effects of investor decisions when calculating the return to be attributed to the manager. The dollar, or money weighted return (MWR) is the performance of the investment portfolio and incorporates the effects of both decisions.

# Timing of Investor Decisions

In addition to the time value of money, the market timing of the investor contributions and withdrawals will affect realized returns. The capital markets provide us with positive long-term returns but volatile periodic returns. Market timing is a term that relates the time an investor makes his investment to the market cycle—that is, is the investor buying low and selling high.

For example, suppose we are investing via a mutual fund—an investment vehicle described in Chapter 21—and during the month the fund's net asset value per share (NAV) varied between 10.00 and 12.00 and there were no distributions.

<table><tr><td>Date</td><td>NAV per share</td></tr><tr><td>5/31</td><td>10.00</td></tr><tr><td>6/10</td><td>12.00</td></tr><tr><td>6/20</td><td>10.00</td></tr><tr><td>6/30</td><td>11.00</td></tr></table>

The monthly return that will be published for this fund is  $(11 / 10 = 10\%)$ . The following spreadsheet shows the calculation of various holding period returns for the month.

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td></tr><tr><td>1</td><td>Period</td><td>Return From</td><td>Calculated As</td><td>Return</td><td>\% Return</td><td></td></tr><tr><td>2</td><td>1</td><td>5/31 - 6/10</td><td>((12 / 10) - 1) x 100</td><td>0.20</td><td>20.00</td><td></td></tr><tr><td>3</td><td>2</td><td>5/31 - 6/20</td><td>((10 / 10) - 1) x 100</td><td>0.00</td><td>0.00</td><td>Published Return</td></tr><tr><td>4</td><td>3</td><td>5/31 - 6/30</td><td>((11 / 10) - 1) x 100</td><td>0.10</td><td>10.00</td><td></td></tr><tr><td>5</td><td>4</td><td>6/10 - 6/20</td><td>((10 / 12) - 1) x 100</td><td>-0.17</td><td>-16.67</td><td></td></tr><tr><td>6</td><td>5</td><td>6/10 - 6/30</td><td>((11 / 12) - 1) x 100</td><td>0.09</td><td>9.09</td><td></td></tr><tr><td>7</td><td>6</td><td>6/20 - 6/30</td><td>((11 / 10) - 1 x 100</td><td>0.10</td><td>10.00</td><td></td></tr></table>

The investor with perfect foresight, or luck, invested on 5/31 and withdrew on 6/10 to earn a  $20\%$  return. The investor with poor timing, who bought at the high on 6/10 and sold at the bottom on 6/20, had a  $-16.67\%$  return. This spread of  $36.67\%$  represents the return differential due to the timing of the cash flows. The important point for investment performance measurement is that these cash flows were at the discretion of the investor, not the manager. Actions of the investment manager would have had no impact on this differential return; the manager would have put the money to work according to his mandate.

Commingled funds have many investors. Some pursue a buy and hold strategy, some are trading in and out of the fund, and others have a regular program of buying or selling new shares. In a time when the market moved up, down, and back up, the returns earned by different investors could be quite different depending on the cash flows and return volatility. Admittedly, the returns in this example are artificially volatile. The point is that the actual returns experienced by the investor vary depending on their own investment timing decisions.

In the previous example, the advertised return for the period would be the  $10\%$  return, which was measured from the start of the monthly period to the end. Even though different investors experienced different returns, the investment manager for the mutual fund had no control over these timing decisions; therefore  $10\%$  is an accurate representation of his performance. It is the appropriate return to use when comparing the performance to a peer group average or to a benchmark.

# Timing of Investment Manager Decisions

When we calculate returns, we can also consider the timing of decisions that are the responsibility of the manager. Consider two managers starting with the same  $100 portfolio at the beginning of the month. Both receive$ 10 client contributions. Their strategies differ only in that Manager 1 attempts to time the market as shown in this example. Assume that the market moves down 10\% during the month. Manager 1 leaves the contribution in cash. The following spreadsheet shows that Manager 1's return is -9.05\%.

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td></tr><tr><td>1</td><td>Segment</td><td>MVB</td><td>Percent Return</td><td>MVE</td></tr><tr><td>2</td><td>Cash</td><td>10</td><td>0.01</td><td>10.05</td></tr><tr><td>3</td><td>Equity</td><td>100</td><td>-0.10</td><td>90.00</td></tr><tr><td>4</td><td>Total</td><td>110</td><td>-9.05</td><td>100.05</td></tr><tr><td>5</td><td></td><td></td><td>^</td><td></td></tr><tr><td>6</td><td></td><td></td><td>=(D4:B4)-1)*100</td><td></td></tr></table>

The following spreadsheet shows that Manager 2 invests the contribution in equities at the beginning of the month and realizes a  $-10.00\%$  return.

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td></tr><tr><td>1</td><td>Segment</td><td>MVB</td><td>Percent Return</td><td>MVE</td></tr><tr><td>2</td><td>Cash</td><td>0.00</td><td>0.01</td><td>0.00</td></tr><tr><td>3</td><td>Equity</td><td>110.00</td><td>-0.10</td><td>99.00</td></tr><tr><td>4</td><td>Total</td><td>110.00</td><td>-10.00</td><td>99</td></tr><tr><td>5</td><td></td><td></td><td>A</td><td></td></tr><tr><td>6</td><td></td><td></td><td>=(D4:B4)-1)*100</td><td></td></tr></table>

Despite the negative returns, Manager 1 earned 95 basis points  $[-9.05\% - (-10\%)]$  in value added over Manager 2 due to the beneficial decision to leave the contribution in the relatively higher yielding cash segment during the month.

# Segregating Investor and Manager Timing Decisions

It is often the case that the manager and the investor are two different people. The preceding sections illustrate a performance measurement problem: Decisions made by the investor and the investment manager must be segregated in order to properly calculate returns that reflect their respective responsibilities.

The ideal performance statistic for measuring the return experienced by the investor would include effects of both:

The timing of investor decisions to make an investment into the portfolio
The decisions made by the manager to allocate assets and select securities within the portfolio

The first effect is purely attributable to decisions made by the investor. The second also can be considered attributable to the investor because he made the decision to hire the manager. The actual returns experienced by the investor are affected by the combination of the two effects. The ideal statistic for measuring the return produced by the manager neutralizes the timing effect because he (usually) has no control over the timing of external cash flows. Because of this need to isolate the timing of investor decisions, we need two different measures of return.

The money weighted return (MWR) is used when we need to measure the performance as experienced by the investor. MWR is a performance statistic reflecting how much money was earned during the measurement period. This amount is influenced by the timing of decisions to contribute or withdraw money from a portfolio, as well as the decisions made by the manager of the portfolio. The MWR is contrasted with the performance statistic used to measure manager performance, the time weighted returns (TWR), which is discussed later. As we will see, the MWR is important even if we are interested only in evaluating manager performance, because it is sometimes used in the estimation of the TWR.

MWR is the return an investor actually experiences after making an investment. It reconciles the beginning market value and additional cash flows into the portfolio to the ending market value. The timing and size of the cash flows have an impact on the ending market value:

<table><tr><td>Transaction</td><td>Before Market</td><td>Effect on Performance</td></tr><tr><td>Contribute</td><td>Goes Up</td><td>Positive</td></tr><tr><td>Contribute</td><td>Goes Down</td><td>Negative</td></tr><tr><td>Withdraw</td><td>Goes Up</td><td>Negative</td></tr><tr><td>Withdraw</td><td>Goes Down</td><td>Positive</td></tr></table>

To accurately reflect these transactions, the MWR takes into account not only the amount of the flows but also the timing of the cash flows. Different investors into a portfolio will invest different amounts and make their investment on different dates. Because of the differences in cash flow timing and magnitude, it is not appropriate to compare the MWR calculated for two different investors.

When there are no cash flows, the return is calculated as the ending market value over the beginning market value. If there were a cash flow, we need to take into account the amount and the timing of the flow. To account for the timing of the flow, we calculate a weighting adjustment, which will be used to adjust the cash flow for the portion of the period that the cash flow was invested. The spreadsheet below shows that if we are calculating a MWR for a 1-year period and there are two cash flows, the first at the end of January and the second at the end of February, the flows will be weighted by 0.92 for the January month end flow (the flow will be available to be invested for  $92\%$  of the year) and 0.83 for the February month end flow (the flow will be available to be invested for  $83\%$  of the year).

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td></tr><tr><td>1</td><td>Date</td><td>Time into Total Period</td><td>Months Invested</td><td>Period Weight</td></tr><tr><td>2</td><td>31-Dec-2000</td><td>0</td><td>12</td><td>1.00</td></tr><tr><td>3</td><td>31-Jan-2001</td><td>1</td><td>11</td><td>0.92</td></tr><tr><td>4</td><td>28-Feb-2001</td><td>2</td><td>10</td><td>0.83</td></tr><tr><td>5</td><td></td><td></td><td></td><td></td></tr><tr><td>6</td><td></td><td></td><td>=12-B4</td><td>=C4/12</td></tr></table>

# Internal Rate of Return (IRR)

Suppose we invest  $100 at the beginning of the year and end up with$ 140 at the end of the year. We made cash flows of 10 each at the end of January and February. What is the MWR return for this situation? The MWR we are looking for will be the value that solves this equation:

$$
1 0 0 \times (1 + \mathrm {M W R}) + 1 0 \times (1 + \mathrm {M W R}) ^ {0. 9 2} + 1 0 \times (1 + \mathrm {M V R}) ^ {0. 8 3} = 1 4 0
$$

The return that reconciles the beginning value and intermediate cash flows to the ending value is the internal rate of return or IRR. The return is the value that solves for IRR in this equation:

$$
\mathrm {M V E} = \mathrm {M V B} \times (1 + \mathrm {I R R}) + \mathrm {C F} _ {1} \times (1 + \mathrm {I R R}) ^ {1} \dots \mathrm {C F} _ {N} \times (1 + \mathrm {I R R}) ^ {N}
$$ where


CF = amount of the cash flow in or out of the portfolio

$N =$  percentage of the period that the CF was available for investment

The IRR is the rate implied by the observed market values and cash flows. For all but the simplest case, we cannot solve for the IRR directly. Unfortunately, we cannot use algebra to rearrange the terms of the equation to derive the solution. The IRR is calculated using a trial and error process where we make an initial guess and then iteratively try successive values informed by how close we were to the solution in the last try, until we solve the problem.

Techniques have been developed to perform the iteration efficiently and converge on a solution quickly. The following spreadsheet shows the calculation of the IRR using the Excel solver utility:

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td></tr><tr><td>1</td><td>Date</td><td>Months Invested</td><td>Period Weight</td><td>Value</td><td>Future Value of Flow</td><td></td></tr><tr><td>2</td><td>Dec-31-2000</td><td>12</td><td>1.00</td><td>100</td><td>117.05</td><td>=D2*(1+E8)^C2)</td></tr><tr><td>3</td><td>Jan-31-2001</td><td>11</td><td>0.92</td><td>10</td><td>11.55</td><td>=D3*(1+E8)^C3)</td></tr><tr><td>4</td><td>Feb-28-2001</td><td>10</td><td>0.83</td><td>10</td><td>11.40</td><td>=D4*(1+E8)^C4)</td></tr><tr><td>5</td><td>Dec-31-2001</td><td></td><td></td><td>140</td><td>140.00</td><td>=SUM(E2:E4)</td></tr><tr><td>6</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>7</td><td></td><td colspan="2">IRR calculated using solver</td><td>Difference:</td><td>0.00</td><td>=D5-E5</td></tr><tr><td>8</td><td></td><td></td><td></td><td>IRR:</td><td>0.1705</td><td></td></tr><tr><td>9</td><td></td><td></td><td></td><td>Percent Return:</td><td>17.05</td><td>=E8*100</td></tr></table>

Here, we set the difference between the ending market value in cell D5 equal to the sum of the future values in cell E5. We then solved for the IRR in cell E8. The IRR is  $17.05\%$  because, as demonstrated below, it is the interest rate that resolves the flows to the ending market value.

$$
1 0 0 \times (1 + 0. 1 7 0 5) + 1 0 \times (1 + 0. 1 7 0 5) ^ {0. 9 2} + 1 0 \times (1 + 0. 1 7 0 5) ^ {0. 8 3} = 1 4 0
$$

Notice that there is an assumption embedded in the IRR formula: the rate of return is assumed to be constant within the period. In this example, each cash flow is compounded at  $17.05\%$  for the complete portion of the year invested.

We can calculate an IRR for periods that are less than a year. The period weight used for each of the cash flows is the percentage of the total period under consideration. For example, a cash flow on the 10th of a 31-day month would be weighted at  $[31 - 10) / 31] = 0.7097$  of the month. (This assumes that the contribution was made at the beginning of the day on the 10th, subtract a day if we assume cash flows occur at the end of the day.) The results of IRR calculations done for less than a year are interpreted as an IRR over the period measured. The following spreadsheet shows the calculation of the monthly IRR where MVB  $= 1,000$  on December 31, 2000, MVE  $= 1,200$  on January 31, 2001, and there were two cash flows,  $\$400$  into the portfolio on January 10, 2001, and  $\$100$  out of the portfolio on January 20, 2001.

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td></tr><tr><td>1</td><td>Date</td><td>Days Invested</td><td>Period Weight</td><td>Value</td><td>Future Value of Flow</td><td></td></tr><tr><td>2</td><td>31-Dec-2000</td><td>31</td><td>1.00</td><td>1000</td><td>919.85</td><td>=D2*((1+E8)^C2)</td></tr><tr><td>3</td><td>10-Jan-2001</td><td>22</td><td>0.71</td><td>400</td><td>376.97</td><td>=D3*((1+E8)^C3)</td></tr><tr><td>4</td><td>20-Jan-2001</td><td>12</td><td>0.39</td><td>-100</td><td>-96.82</td><td>=D4*(1+E8)^C4)</td></tr><tr><td>5</td><td>31-Jan-2001</td><td></td><td></td><td>1200</td><td>1200.00</td><td>=SUM(E2:E4)</td></tr><tr><td>6</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>7</td><td></td><td></td><td></td><td>Difference:</td><td>0.00</td><td>=D5-E5</td></tr><tr><td>8</td><td></td><td></td><td></td><td>IRR:</td><td>-0.08</td><td></td></tr><tr><td>9</td><td></td><td></td><td></td><td>Percent Return:</td><td>-8.02</td><td>=E8*100</td></tr></table>

When we have withdrawals from the account, we make the cash flow adjustments used in the IRR negative. The one-month IRR for this pattern of cash flows is  $-8.02\%$

# Problems with the IRR

We classify the IRR as a MWR because it takes into account both the timing and size of cash flows into the portfolio. It is an appropriate measure of the performance of the investment as experienced by the investor. The fact that the IRR needs to be calculated via iteration used to make the IRR an expensive calculation, because of the computer time used by the iteration algorithm. This is not a problem today. But, the historical problem led to the development of various creative methods to cheaply estimate the IRR. One of these methods, the Modified Dietz method, is still the most common method used by analysts to compute MWRs and, as we will see, estimate returns between valuation dates when we are calculating a TWR.

# Modified Dietz Return

The Modified Dietz return is a simple interest estimate of the MWR. The Modified Dietz calculation is the same as the ROI calculation, except the cash flows added to the beginning market value are adjusted according to the time they were invested in the portfolio.

$$
\mathrm {M o d i f i e d D i e t z R e t u r n} = \frac {\mathrm {M V E} - \mathrm {M V B} - \mathrm {C F}}{\mathrm {M V B} + \left\{\left[ (\mathrm {C D} - C _ {i}) / \mathrm {C D} \right] \times \mathrm {C F} _ {i} \right\}} \times 1 0 0
$$ where


CF = net amount of the cash flows for the period

CD = total days in the period

$C_i =$  the day of the cash flow

$\mathrm{CF}_i =$  the amount of the net cash flow on  $C_i$

The calculation is named for the developer, Peter Dietz, who was associated with the Frank Russell pension consulting company. The original Dietz method, not currently used, makes the assumption that cash flows occurred midway through the period.

To illustrate the calculation of a Modified Dietz return, consider the following situation.

Begin Market Value + Accrued Income MVB 100

End Market Value + Accrued Income MVE 120

Sum (Client Contribution/Withdrawal) CF 10 on the 20th of a 30-day month

To calculate the Modified Dietz return as shown, first we calculate the adjustment factor, which is 0.33, assuming that the flow occurs at the end of the day on the 20th.

$$
\frac {3 0 - 2 0}{3 0} = 0. 3 3
$$

Then we adjust the cash flow by multiplying the amount by the adjustment factor:  $0.33 \times \$ 10 = \ $3.33$ . We then add the modified flow to the beginning market value in the denominator, and calculate the Modified Dietz return,  $9.68\%$ .

$$
9.68 \% = \frac {120 - 100 - 10}{100 + 3.33} \times 100
$$

Both the IRR and Modified Dietz formulas are money weighted returns. MWR results are affected by the timing and magnitude of the cash flows during the period. The return statistics that completely eliminate the impact of investor cash flows are time weighted returns.

# PERFORMANCE OF THE INVESTMENT MANAGER: TIME WEIGHTED RETURNS

A rate of return is the percentage change in the value of an asset over some period of time. Total returns are calculated by dividing the capital gain/loss and income earned by the value of the investment at the beginning of the period. As we saw earlier in this chapter, investors experience different returns investing in the same fund depending on the timing and magnitude of their cash flows into and out of the portfolio. Returns are used in evaluating the performance of an investment manager, but he or she (usually) has no control over the timing and amount of investor flows, so we need a performance measure that negates the effect of these cash flows. The desired return would judge the manager by the return on money invested over the whole period and eliminate the effect of client cash flows.

# Time Weighted Return

The time weighted return (TWR) is a form of total return that measures the performance of a dollar invested in the fund over the complete measurement period. The TWR eliminates the timing effect that external portfolio cash flows have on performance, leaving only the effects of the market and manager decisions.

To calculate a time weighted return, we break the period of interest into subperiods, calculate the returns earned during the subperiods, and then compound these subperiod returns to derive the TWR for the whole period. The subperiod boundaries are the dates of each cash flow. Specifically, the steps to calculate a TWR are as follows.

1. Begin with the market value at the beginning of the period.
2. Move forward through time toward the end of the period.
3. Note the value of the portfolio immediately before a cash flow into or out of the portfolio.
4. Calculate a subperiod return for the period between the valuation dates.
5. Repeat 3 and 4 for each cash flow encountered.
6. When there are no more cash flows, calculate a subperiod return for the last period using the end of period market value.
7. Compound the subperiod returns by taking the product of (1 + the subperiod returns).

The last step is called geometric linking, or chain linking, of the returns. Chain linking has the same function as compounding in the future value calculation. We employ chain linking instead of the future value formula when the periodic returns change from subperiod to subperiod.


Time Weighted Return  $= [(1 + R_1) \times (1 + R_2) \times \dots (1 + R_N) - 1] \times 100$ where  $R_{N}$  are the subperiod returns.


The TWR assumes compounding and reinvestment of the gains earned in the previous subperiods. The expression (1 + the subperiod return) is called a wealth relative or growth rate, which represents the increase in capital over the subperiod. For example, if a portfolio is worth  $100 at the beginning of the subperiod, and$ 105 at the end of the subperiod before the next cash flow, the subperiod return is 5\% and the growth rate for the subperiod equals 1.05.

Below we will illustrate the steps to calculate a TWR. We calculate the TWR for a month where fund market values were:

<table><tr><td>Date</td><td>End of Day Valuation</td></tr><tr><td>5/31</td><td>1000</td></tr><tr><td>6/9</td><td>1100</td></tr><tr><td>6/19</td><td>1200</td></tr><tr><td>6/30</td><td>1200</td></tr></table>

And there were two cash flows during the month:

<table><tr><td>Date</td><td>Cash Flow</td></tr><tr><td>6/10</td><td>200</td></tr><tr><td>6/20</td><td>-100</td></tr></table>

# Divide the Period into Subperiods

The first step in the TWR calculation is to divide the period we are interested in into subperiods, where the subperiods are segregated by the cash flow dates. The next step is to note the value the portfolio before each cash flow. If we are working with a beginning of day cash flow assumption, we use the valuation performed on the night prior to the cash flow.

<table><tr><td>Date</td><td>Beginning of Day Valuation</td><td>Cash Flow</td><td>End of Day Valuation</td></tr><tr><td>5/31</td><td></td><td></td><td>1000</td></tr><tr><td>6/9</td><td></td><td></td><td>1100</td></tr><tr><td>6/10</td><td>1100</td><td>200</td><td></td></tr><tr><td>6/19</td><td></td><td></td><td>1200</td></tr><tr><td>6/20</td><td>1200</td><td>-100</td><td></td></tr><tr><td>6/30</td><td>1200</td><td></td><td>1200</td></tr></table>

We have two cash flows and three subperiods.

1. 5/31 to the end of day 6/9
2. 6/10 to the end of day 6/19
3. 6/20 to the end of day 6/30

Note that there are  $(1 + \mathrm{the~number~of~cash~flow~dates})$  subperiods.

# Calculate Subperiod Returns

Next we calculate a single period return for each subperiod. The time of day assumption governs the treatment of the cash flows in the subperiod return formula. Here we assume that cash flows occur at the beginning of the day. With a beginning of day assumption, we add the cash flow to the beginning day market value to form the denominator of the return. Cash flows into the portfolio are added to the denominator, cash flows out of the portfolio are subtracted. If there is more than one cash flow during the day we net the flows together.

$$
\begin{array}{l} \text {S u b p e r i o d R e t u r n (s t a r t o f d a y f l o w a s s u m p t i o n)} \\ = \frac {\text {M V E}}{\text {M V B} + \text {N e t C a s h I n f l o w s}} \\ \end{array}
$$

If we are calculating performance for a unitized product such as a mutual fund, the inputs to the subperiod return formula are the net asset value per share and dividend distributions. The effect of the cash flow adjustment is to negate the effect of the contributions/withdrawals from the return calculation. The calculation of the three subperiod returns,  $10.00\%$ ,  $-7.69\%$ , and  $9.09\%$ , is shown in the following spreadsheet.

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td></tr><tr><td>1</td><td>Subperiod</td><td>Return From</td><td>BMW</td><td>CF</td><td>EMV</td><td>Percent Return</td><td>Growth Rate</td></tr><tr><td>2</td><td>1</td><td>5/31-6/10</td><td>1000</td><td>0</td><td>1100</td><td>10.00</td><td>1.10</td></tr><tr><td>3</td><td>2</td><td>6/10-6/20</td><td>1100</td><td>200</td><td>1200</td><td>-7.69</td><td>0.92</td></tr><tr><td>4</td><td>3</td><td>6/20-6/30</td><td>1200</td><td>-100</td><td>1200</td><td>9.09</td><td>1.09</td></tr><tr><td>5</td><td></td><td></td><td></td><td></td><td>=(E4/(C4+D4))-1)*100</td><td>=1+(F4/100)</td><td></td></tr><tr><td>6</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/7b8dd3a9-2183-4fd3-aa71-37ed7a7fe3b5/1c7c2996ec949c6f869c6877cb7fed15e6bc82509b23b17253b894910d592f9d.jpg)
EXHIBIT 3.2 Time Weighted Return

# Calculate Multiple Period Returns

The percentage return for the month is calculated by chain linking the subperiod returns.

$$
[(1.1000) \times (0.9231) \times (1.0909) - 1] \times 100 = 10.77 \%
$$

By calculating the return in this way, we have completely eliminated from the return the impact of the cash flows into and out of the portfolio. Exhibit 3.2 provides a way to visualize how the TWR eliminates cash flow effects from the return calculation.

There are some exceptions to the general rule that TWR is the appropriate measure of manager performance. In some situations, the portfolio manager does have discretion over the timing of cash flows. For example, in the management of private equity funds (an investment vehicle discussed in Chapter 26), the general partner draws down the capital committed when he wants to invest it. However, in most performance measurement applications, the TWR is the appropriate measure of manager performance.

# Estimating the Time Weighted Return

There is a potential hurdle to implementing this methodology. TWR requires a valuation of the portfolio before each cash flow. Unfortunately, these periodic valuations are not always available. For example, many institutional separate accounts are valued on a monthly frequency, but the client may deposit or withdraw from the account at any time during the month. While industry trends lean in the direction of daily valuations, until these are available for all investment vehicles, we need a way of estimating the true TWR when contributions and withdrawals are made in between valuation dates.


We can approximate a TWR by calculating a MWR for each subperiod between valuation dates and compounding them over longer periods using the chain linking method used to link subperiod returns into a TWR. This linked MWR estimate of TWR provides a reliable approximation of the TWR in situations where the cash flows are small relative to the portfolio size and there is low return volatility within the subperiod. If the cash flows are large and the market is volatile during the period, the MWR estimate of TWR will be inaccurate. So it is important to note that the linked MWR is an estimate of the TWR over the longer period. While the cash flows are weighted within the subperiod, the cash flows are still influencing the returns. The linking process does not remove the effect of the cash flows from the cumulative return calculation. A compromise solution to calculating a TWR is to perform a special valuation whenever there are large cash flows and then link the subperiod MWR.

Exhibit 3.3 summarizes the differences between the money and time weighted returns.

EXHIBIT 3.3

<table><tr><td></td><td>Money Weighted Returns</td><td>Time Weighted Returns</td></tr><tr><td>Measures</td><td>The average growth rate of all dollars invested over the period</td><td>The growth rate of a single dollar invested over the period</td></tr><tr><td>Usage in analyzing investment results</td><td>Appropriate measure of investor or fund performance</td><td>Appropriate for measuring performance of vehicle or manager
Appropriate for market comparison
Appropriate for comparing managers</td></tr><tr><td>Effect of external cash flows</td><td>Reflects both the timing and amount of dollars at work over the period</td><td>Eliminates the effect of both timing and amount of money at work</td></tr><tr><td>Statistic represents</td><td>The return that reconciles MVB, CF, and MVE</td><td>The return of 1 invested in the portfolio from beginning to end</td></tr><tr><td>Calculation drawbacks</td><td>Iteration required for IRR calculation</td><td>A valuation is required before each flow.</td></tr></table>

# MULTIPLE PERIOD RETURN CALCULATION

We can compute rates of return over multiple periods by compounding the single period returns. We are often interested in an average of the periodic returns that reflects the compounding function. The average returns are often restated to an annual average basis. These topics are covered in this section.

# Cumulative Returns

We saw the compounding process at work when we employed subperiod returns in the chain linking process to create a multiperiod TWR. In this same way, we can derive cumulative returns for any period of interest, such as month-to-date, year-to-date, first quarter of the year, 1-year, 3-year, and since-account-inception. To compound the returns, we multiply  $(1 + \mathrm{decimal~return})$  for each period.

$$
\text {C u m u l a t i v e R e t u r n} = \left[ \left(\text {G r o w t h R a t e} _ {1}\right) \times \left(\text {G r o w t h R a t e} _ {2}\right) \dots - 1 \right] \times 1 0 0
$$

The following spreadsheet shows the calculation of a cumulative 5-year return given the series of yearly returns  $9\%$ ,  $6\%$ ,  $-2\%$ ,  $8\%$ , and  $-4\%$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/7b8dd3a9-2183-4fd3-aa71-37ed7a7fe3b5/cd0ca01537ad0919dcbc37e1899d253a0dfaba9b869d55c4ff899b847ef01de1.jpg)

By compounding the returns we find that the cumulative 5-year return is  $17.40\%$ .

Since we often are interested in the performance of an investment over time, we can maintain cumulative growth rates. Cumulative growth rates are useful for quickly calculating the cumulative return over multiple periods because we do not need to reference the intermediate returns or growth rates. Cumulative growth rates are calculated by taking the previous period ending cumulative growth rate and multiplying by (1 + current period return). We can use cumulative growth rates to calculate the expected value of an investment by multiplying it by the cumulative growth factor. For example,  $100 invested into a fund with a compound 5-year growth rate of 1.2568 will result in an ending value of$ 125.68.

$$
1 0 0 \times (1. 2 5 6 8) = 1 2 5. 6 8
$$

Growth rates also can be used to derive the return between any two dates.

$$
\text {R e t u r n} = \left[ \left(\frac {\text {E n d P e r i o d G r o w t h R a t e}}{\text {B e g i n P e r i o d G r o w t h R a t e}}\right) - 1 \right] \times 1 0 0
$$

We calculate cumulative returns when we are interested in the performance of investments over long-term periods. Note that cumulative returns incorporate the assumption that investment gains are reinvested into the fund and compounded over time. The appreciation at the end of each period, as measured by the return, is treated as if it is income that is reinvested into the portfolio in the next period.

# Compressing Periods

Single period returns are usually calculated on a daily or monthly periodic frequency. The single period returns can be compressed into longer-term returns by compounding. For example, the daily returns calculated over the course of a month can be compressed, or "rolled up," into a monthly return. Compounding 12 monthly periodic returns will give the same result as if the underlying daily returns were used. In a similar fashion, monthly returns can be compressed into yearly returns for purposes of calculating multiyear returns. In our previous calculation to illustrate cumulative returns, we used five yearly frequency returns to derive the 5-year cumulative return. If the yearly returns were actually calculated using a daily frequency, we could have chain linked the approximately 1,250 (250 trading days  $\times$  5 years) daily returns and derived the same result. It is easier to work with the compressed monthly, quarterly, or yearly returns, even if they were originally calculated on a daily basis.

# Arithmetic Mean Return

Often, we are interested in calculating average, or mean, investment returns. Average returns can be used to compare the performance of investment managers or funds over time. There are two methods for calculating the average of a series of returns: the arithmetic and geometric methods. As a measure of the average return, a mean return can be calculated by adding the periodic returns together and dividing by the number of returns.

$$
\text {A r i t h m e t i c M e a n R e t u r n} = \frac {\text {S u m (P e r i o d i c R e t u r n s)}}{\text {C o u n t o f R e t u r n s}}
$$

The periodicity of the returns must be the same for each of the returns (i.e., all of the returns must be daily, monthly, or yearly returns). The arithmetic mean return cannot be used in all applications. For example, we may want to use an average yearly return to project the future value of an investment. One problem with using arithmetic mean returns is that they do not take into account the compounding of returns over time. For example, if we have two yearly returns:

<table><tr><td>Year</td><td>Return</td></tr><tr><td>1</td><td>10\%</td></tr><tr><td>2</td><td>20\%</td></tr></table>

The arithmetic mean return is  $15\%$ $[(20 + 10) / 2]$ . The compound 2-year return is  $32\%$ .

$$
[(1.10) \times (1.20) - 1] \times 100 = 32.00 \%
$$

If we take the arithmetic mean return and plug it into the compounding formula we will get a higher result than we did using the actual periodic returns.

$$
[(1.15) \times (1.15) - 1] \times 100 = 32.25 \%
$$

Use of the arithmetic mean return to reconcile the beginning to ending investment value overstates the ending value. The average return we use in this application should be lower than the arithmetic mean return in order to account for the compounding process.

# Geometric Mean Return

When we multiply the average yearly return by the total number of years, it does not equal the compounded return because it does not take into account the income earned by reinvesting the prior period income. In the previous example, the  $20\%$  return in Year 2 was earned by reinvesting the  $10\%$  Year 1 return, but that is not accounted for in the arithmetic average. To fix this, instead of taking the arithmetic mean return we calculate the geometric mean return. The geometric mean return is the nth root of the compound return, where  $n$  is the number of periods used to calculate the compound cumulative return. That is:

$$
\text {G e o m e t r i c M e a n R e t u r n} = \left[ N \sqrt {(1 + \text {C u m u l a t i v e R e t u r n})} - 1 \right] \times 1 0 0
$$

(Note that finding the root is the inverse of multiplying the growth rates.)

The following spreadsheet shows that the geometric average yearly return derived from a two-year compound return of  $32\%$  equals  $14.89\%$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/7b8dd3a9-2183-4fd3-aa71-37ed7a7fe3b5/bace5b7d241cd2b68229f248a958e70f843012ec2ddea7d5f8a7af4359bf6eeb.jpg)

In Excel, to take the  $n$ th root, we raise the compound growth rate to the  $(1/N)$  power.

$$
(\sqrt [2]{1.32} - 1) \times 100 \rightarrow (1.1489 - 1) \times 100 = 14.89 \%
$$

Plugging the geometric mean return into the compound growth formula yields the compound return for the period.

Compound Return  $= \{[1 + (\text{Geometric Mean Return} / 100)]^N - 1\} \times 100$

We can back into the  $32\%$  compound return for two months using the geometric average return of  $14.89\%$ .

$$
\begin{array}{l} \left\{\left[ 1 + (1 4. 8 9 / 1 0 0) \right] ^ {2} - 1 \right\} \times 1 0 0 \rightarrow \left[ (1. 1 4 8 9) ^ {2} - 1 \right] \times 1 0 0 \\ \rightarrow (1.32 - 1)\times 100\rightarrow 32\% \\ \end{array}
$$ or


$$
\left\{\left[ (1.1489) \times (1.1489) \right] - 1 \right\} \times 100 = 32 \%
$$

Column C in the spreadsheet that follows shows that one advantage of using average returns is that we do not need to know the actual periodic returns in order to calculate a future value:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/7b8dd3a9-2183-4fd3-aa71-37ed7a7fe3b5/cf6a7e6fac66eb02e11664703e19f9644f80a1c6a84df3427eb7f27bb7f4b846.jpg)

# Annualizing Returns Less than a Year

No matter how short or long the actual investment period, returns are typically presented on a yearly, or annual basis. We do this because it is easier to compare investment returns if the time periods over which each investment has been made are put on an equivalent basis. The geometric mean return when calculated for a 1-year period is called an average annual return, compound annual return, or annualized return.

Interest rates are typically quoted on an annualized basis. If we have a return for a period less than a year and we need to turn it into an annual return, we can compound it by raising the holding period return to the power equal to the number of periods in the year:

$$
\left. \right.\left\{\left[ (1 + \text {P e r i o d} \text {r a t e}) ^ {\# \text {o f p e r i o d s}} \right] - 1 \right\} \times 1 0 0
$$

In this case, we would need to continue to reinvest at the single-period rate to produce the annual return. For this reason, returns that are annualized based on a cumulative period of less than a year are hypothetical projections of the annual return. As an extreme example of the problem of using annual returns calculated in this way, suppose the market had a great month and is up  $20\%$ . Conversion to an annual basis results in a  $792\%$  compounded annual return

An annualized return calculated for a holding period of less than a year would be interpreted as the return for a year if performance for the rest of the year is equal to that actually experienced so far in the year.

# Annualizing Returns Greater than a Year

If the multiperiod compound return that we are annualizing was calculated for a period greater than a year, the rate is restated to an annual basis using the inverse of the compounding formula. The inverse of taking a number and raising it to a power  $n$  is to take the  $n$ th root of the number.

$$
\{\left[ ^ {\#} \text {o f y e a r s} \sqrt {(1 + \text {P e r i o d r a t e})} \right] - 1 \} \times 1 0 0
$$

For example, if an investment earned  $19.1\%$  over a 3-year period, the return can be quoted as an annual average return of  $6\%$  by finding the third root of the cumulative growth rate.

$$
\{[ \sqrt [ 3 ]{(1 . 1 9 1 0 2)} ] - 1 \} \times 1 0 0 = 6. 0 0
$$

Notice that we calculate the annualized return by first taking the root of the cumulative growth rate as opposed to taking the  $n$ th root of the cumulative return. The  $n$ th root of the growth rate is the geometric average growth rate. To transform the average growth rate into a geometric average return we subtract 1 and multiply by 100.

We usually need to calculate an annualized return for cumulative periods that are not exact multiples of a year. To calculate annualized returns for such odd periods, we can calculate the actual number of calendar days in the cumulative period and divide by 365.25 to calculate an annualized equivalent.

$$
\text {A n n u a l i z e d R e t u r n} = \left[ \left(\frac {\text {N u m b e r o f D a y s}}{3 6 5 . 2 5} \sqrt {\text {L i n k e d G r o w t h R a t e s}}\right) - 1 \right] \times 1 0 0
$$

For example, the annualized equivalent of a  $14\%$  return earned over 16 months is equal to  $10.37\%$ .

# Compound Annual Internal Rate of Return

If we are working with a dollar weighted IRR calculated over periods longer than a year, we can also calculate an annual equivalent. To do this, we adjust the weights used to reconcile the cash flows to the ending market value so that they are multiples of a year. The calculation of an annual equivalent of a 5-year IRR equal to  $10.00\%$  is shown in the following spreadsheet:

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td></tr><tr><td>1</td><td>Year</td><td>Days</td><td>Flow</td><td>Value</td><td>Weight</td><td>FV</td><td></td></tr><tr><td>2</td><td>0</td><td>0</td><td>400</td><td>0</td><td>5.00</td><td>440</td><td>=FV(F9,E2,0,-C2,0)</td></tr><tr><td>3</td><td>1</td><td>365</td><td>100</td><td></td><td>4.00</td><td>110</td><td>=FV(F9,$E$2,0,-C3,0)</td></tr><tr><td>4</td><td>2</td><td>730</td><td>100</td><td></td><td>3.00</td><td>110</td><td>=FV(F9,$E$2,0,-C4,0)</td></tr><tr><td>5</td><td>3</td><td>1095</td><td>(50)</td><td></td><td>2.00</td><td>(55)</td><td>=FV(F9,$E$2,0,-C5,0)</td></tr><tr><td>6</td><td>4</td><td>1460</td><td>(50)</td><td></td><td>1.00</td><td>(55)</td><td>=FV(F9,$E$2,0,-C6,0)</td></tr><tr><td>7</td><td>5</td><td>1825</td><td></td><td>550</td><td></td><td>550</td><td></td></tr><tr><td>8</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>9</td><td></td><td></td><td></td><td></td><td>Difference:</td><td>(0)</td><td>=F7-D7</td></tr><tr><td>10</td><td>Total Days:</td><td>1825</td><td></td><td></td><td>*Annual Return:</td><td>0.02</td><td></td></tr><tr><td>11</td><td></td><td></td><td></td><td colspan="2">Annual \% Return:</td><td>1.93</td><td>=F10*100</td></tr><tr><td>12</td><td></td><td></td><td></td><td></td><td>Growth Rate:</td><td>1.01926</td><td>=1+F10</td></tr><tr><td>13</td><td></td><td></td><td></td><td></td><td>Years:</td><td>5.00</td><td>=((B7-0)/365.25)</td></tr><tr><td>14</td><td></td><td></td><td></td><td colspan="2">Compound Return:</td><td>10.00</td><td>=((F12*F13)-1)*100</td></tr></table>

This is equivalent to an annualized IRR of  $1.93\%$ . Notice that we weighted the beginning investment balance by 5 years, the first cash flow by 4 years, and so on.

# SUMMARY

In this chapter we outlined the procedures for calculating and interpreting the meaning of investment returns. Periodic portfolio valuation and cash flow figures are transformed into single period returns. Time weighted returns measure the results attributable to the investment manager. Dollar weighted returns reflect both the performance of the manager and the timing of investor transactions.

Rates of return are a description of one facet of investment performance. Performance measurement is also concerned with measuring the risks taken to earn these returns, and the attribution of returns to market activity and active management. As the investment cycle turns, the return, risk, and attribution statistics we calculate in performance measurement are the inputs to the next round of asset allocation and security selection decisions.


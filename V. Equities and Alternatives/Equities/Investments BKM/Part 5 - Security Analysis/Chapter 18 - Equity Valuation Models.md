# Equity Valuation Models

# 18

AS OUR DISCUSSION of market efficiency indicated, finding undervalued securities will never be easy. Still, there are enough chinks in the armor of the efficient market hypothesis that the search for such securities should not be dismissed out of hand. Moreover, it is the ongoing search for mispriced securities that maintains a nearly efficient market. Even minor mispricing would allow stock market analysts to earn their salary.

This chapter describes the valuation models that stock market analysts use to uncover mispriced securities. The models presented are the go-to tools used by fundamental analysts, those who use information concerning the current and prospective profitability of a company to assess its fair market value. We start with a discussion of alternative measures of the value of a company. From there, we progress to quantitative tools called dividend discount models, used to estimate the value of a firm as an ongoing concern. Next we turn to price-earnings, or P/E, ratios, explaining why they are of such interest to analysts but also highlighting some of their shortcomings. We explain how P/E ratios are tied to dividend valuation models and, more generally, to the growth prospects of the firm.


We close the chapter with a discussion and extended example of free cash flow models used by analysts to value firms based on forecasts of the cash flows that will be generated from the firms' business endeavors. Finally, we apply the several valuation tools covered in the chapter to a real firm and find some disparity in their conclusions—a conundrum that will confront any security analyst—and consider reasons for these discrepancies.

# 18.1 Valuation by Comparables

The purpose of fundamental analysis is to identify stocks that are mispriced relative to some measure of "true" or intrinsic value that can be derived from observable financial data. There are many convenient sources of relevant data. For U.S. companies, the Securities and Exchange Commission provides information at its EDGAR Web site, www.sec.gov/edgar.shtml. The SEC requires all public companies (except foreign companies and companies with less than 10 million in assets and 500 shareholders) to file registration statements, periodic reports, and other forms electronically through EDGAR. Anyone can access and download this information. Many Web sites such as finance.yahoo.com, money.msn.com, or finance.google.com also provide analysis and data derived from the EDGAR reports.


Table 18.1 shows some financial highlights for Microsoft as well as some comparable data for other firms in the software applications industry. The price per share of Microsoft's common stock is  $287.12, and the total market value or capitalization of those shares (called market cap for short) is$ 2,157 billion. Under the heading "Valuation," Table 18.1 shows the ratio of Microsoft's stock price to several benchmarks. Its share price is 35.66 times its (per-share) earnings in the most recent 12 months, 15.20 times its recent book value, and 13 times its sales. The last valuation ratio, PEG, is the P/E ratio divided by the growth rate of earnings. We would expect more rapidly growing firms to sell at higher multiples of current earnings (more on this below), so PEG normalizes the P/E ratio by the growth rate.

These valuation ratios are commonly used to assess the valuation of one firm compared to others in the same industry, and we will consider all of them. The column to the right gives comparable ratios for other firms in the software applications industry. For example, an analyst might note that Microsoft's price/earnings ratio is below the industry average. However, its ratio of market value to book value, the net worth of the company as reported on the balance sheet, as well as its price-to-sales and PEG ratios, are above industry norms. Clearly, rigorous valuation models will be necessary to sort through these conflicting signals of value.

# Limitations of Book Value

Shareholders in a firm are sometimes called "residual claimants," which means that the value of their stake is what is left over when the liabilities of the firm are subtracted

Table 18.1
Financial highlights for Microsoft and software applications industry

<table><tr><td></td><td>Microsoft</td><td>Industry</td></tr><tr><td>Price per share</td><td>287.12</td><td></td></tr><tr><td>Common shares outstanding (billion)</td><td>7.51</td><td></td></tr><tr><td>Market capitalization ($ billion)</td><td>2,157</td><td></td></tr><tr><td>Latest 12 Months</td><td></td><td></td></tr><tr><td>Sales ($ billion)</td><td>168.09</td><td></td></tr><tr><td>EBITDA ($ billion)</td><td>80.82</td><td></td></tr><tr><td>Net income ($ billion)</td><td>61.27</td><td></td></tr><tr><td>Earnings per share</td><td>8.05</td><td></td></tr><tr><td>Valuation</td><td></td><td></td></tr><tr><td>Price/Earnings</td><td>35.66</td><td>59.23</td></tr><tr><td>Price/Book</td><td>15.20</td><td>14.07</td></tr><tr><td>Price/Sales</td><td>13.00</td><td>11.40</td></tr><tr><td>PEG</td><td>2.63</td><td>1.73</td></tr><tr><td>Profitability</td><td></td><td></td></tr><tr><td>ROE (\%)</td><td>47.08</td><td>28.09</td></tr><tr><td>ROC (\%)</td><td>23.94</td><td>6.66</td></tr><tr><td>Operating profit margin (\%)</td><td>41.60</td><td>23.27</td></tr><tr><td>Net profit margin (\%)</td><td>36.45</td><td>19.99</td></tr></table> from its assets. Shareholders' equity is this net worth. However, the values of both assets and liabilities recognized in financial statements are based on historical—not current—values. For example, the book value of an asset equals the original cost of acquisition less some adjustment for depreciation, even if the market price of that asset has changed over time. Moreover, depreciation allowances reflect the original cost of the asset rather than loss of actual value.

Source: Microsoft data from finance.yahoo.com, August 4, 2021; Industry data courtesy of Professor Aswath Damodaran, http://pages.stern.nyu.edu/~adamodar/.


Whereas book values are based on historical cost, market values measure the current values of assets and liabilities. The market value of the shareholders' equity investment equals the difference between the current values of all assets and liabilities. These values generally will not match historical ones. Equally or even more important, many assets, such as the value of a good brand name or specialized expertise developed over many years, may not even be included on the financial statements, but they certainly influence market price. Market prices reflect the value of the firm as a going concern.

Can book value represent a "floor" for the stock's price, below which level the market price can never fall? Although Microsoft's book value per share in 2021 was far less than its market price, other evidence disproves this notion. While it is not common, there are always some firms selling at a market price below book value. In 2022, for example, such unfortunate firms included Honda, Mitsubishi, and Citigroup.

A better measure of a floor for the stock price is the firm's liquidation value per share. This is the amount of money that could be realized by breaking up the firm, selling its assets, repaying its debt, and distributing the remainder to the shareholders. If market capitalization drops below liquidation value, the firm becomes attractive as a takeover target. A corporate raider would find it profitable to buy enough shares to gain control and then liquidate.

Another measure of firm value is the replacement cost of assets less liabilities. Some analysts believe the market value of the firm cannot remain for long too far above its replacement cost (sometimes called reproduction cost) because if it did, competitors would enter the market. The resulting competitive pressure would drive down profits and the market value of all firms until they fell to replacement cost.

This idea is popular among economists, and the ratio of market price to replacement cost is known as Tobin's  $q$ , after the Nobel Prize-winning economist James Tobin. In the long run, according to this view, the ratio of market price to replacement cost will tend toward 1, but the evidence is that this ratio can differ significantly from 1 for very long periods.

Although focusing on the balance sheet can give some useful information about a firm's liquidation value or its replacement cost, the analyst must usually turn to expected future cash flows for a better estimate of the firm's value as a going concern. We therefore turn to the quantitative models that analysts use to value common stock based on forecasts of future earnings and dividends.

# 18.2 Intrinsic Value versus Market Price

The most popular model for assessing the value of a firm as a going concern starts from the observation that an investor in stock expects a return consisting of cash dividends and capital gains or losses. We begin by assuming a 1-year holding period and supposing that ABC stock has an expected dividend per share,  $E(D_1)$ , of $4; the current price of a share,  $P_0$ , is $48; and the expected price at the end of a year,  $E(P_1)$ , is 52. For now, don't worry about how you derive your forecast of next year's price. At this point we ask only whether the stock seems attractively priced today given your forecast of next year's price.

The expected holding-period return is  $E(D_{1})$  plus the expected price appreciation,  $E(P_{1}) - P_{0}$ , all divided by the current price,  $P_{0}$ :

$$
\begin{array}{l} \text {E x p e c t e d H P R} = E (r) = \frac {E \left(D _ {1}\right) + \left[ E \left(P _ {1}\right) - P _ {0} \right]}{P _ {0}} \\ = \frac {4 + (52 - 48)}{48} = . 167, \text {or} 16.7 \% \\ \end{array}
$$

Thus, the stock's expected holding-period return is the sum of the expected dividend yield,  $E(D_1) / P_0$ , and the expected rate of price appreciation, the capital gains yield,  $[E(P_1) - P_0] / P_0$ .

But what rate of return do investors require of ABC stock? The CAPM states that when stock market prices are at equilibrium levels, the expected rate of return is  $r_f + \beta [E(r_M) - r_f]$ . Thus, the CAPM may be viewed as providing an estimate of the rate of return an investor can reasonably expect to earn on a security given its risk as measured by beta. This is the return that investors will require of any other investment with equivalent risk. We will denote this required rate of return as  $k$ . If a stock is priced "correctly," it will offer investors a "fair" return, that is, its expected return will equal its required return. Of course, the goal of a security analyst is to find stocks that are mispriced. An underpriced stock will provide an expected return greater than the required return.

Suppose that  $r_f = 6\%$ ,  $E(r_M) - r_f = 5\%$ , and the beta of ABC is 1.2. Then according to the CAPM, the value of  $k$  is

$$ k = 6 \% +1.2\times 5 \% = 12 \%
$$

The expected holding-period return on ABC,  $16.7\%$ , therefore exceeds the required rate of return by a margin of  $4.7\%$ . Naturally, the investor will want to include more of ABC stock in the portfolio than a passive strategy would indicate.

Another way to see this is to compare the intrinsic value of a share to its market price. The intrinsic value, denoted  $V_{0}$ , is defined as the present value of all the cash flows the investor will receive (on a per-share basis), including dividends as well as the proceeds from the ultimate sale of the stock, discounted at the appropriate risk-adjusted interest rate,  $k$ . If the intrinsic value, or the investor's own estimate of what the stock is really worth, exceeds the market price, the stock is considered undervalued and a good investment.

# Example 18.1 Price versus Intrinsic Value

For ABC, using a 1-year investment horizon and a forecast that the stock can be sold at the end of the year at price P_{1} = \52, the intrinsic value is

$$
V _ {0} = \frac {E (D _ {1}) + E (P _ {1})}{1 + k} = \frac {\mathbb {S} 4 + \mathbb {S} 5 2}{1 . 1 2} = \mathbb {S} 5 0
$$

Equivalently, at a price of 50, the stock would provide the investor a 12 \%expected rate of return—just equal to the required rate of return. However, the actual stock price, \$ 48, is less than intrinsic value. At this price, it provides better than a fair rate of return relative to its risk. Using the terminology of the CAPM, ABC is a positive- alpha stock, and investors will want to buy more of it than they would following a passive strategy.

Symmetrically, if the intrinsic value turns out to be less than the current market price, investors should buy less of it than under the passive strategy. It might even pay to go short on ABC stock, as we discussed in Chapter 3.

In equilibrium, the market price will reflect the intrinsic value estimates of all market participants. This means the individual investor whose  $V_{0}$  estimate differs from the market price,  $P_{0}$ , in effect must disagree with some or all of the consensus estimates of  $E(D_{1})$ ,  $E(P_{1})$ , or  $k$ . A common term for the consensus value of the required rate of return,  $k$ , is the market capitalization rate.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/85cc69d56cdb45927ab579259dd9a24aca5faa1a7db8cf073476640306e78623.jpg)

# Concept Check 18.1

You expect the price of IBX stock to be $59.77 per share a year from now. Its current market price is $50, and you expect it to pay a dividend one year from now of 2.15 per share.

a. What are the stock's expected dividend yield, its rate of price appreciation (the capital gains yield), and the total holding-period return?
b. If the stock has a beta of 1.15, the risk-free rate is  $6\%$  per year, and the expected rate of return on the market portfolio is  $14\%$  per year, what is the required rate of return on IBX stock?
c. What is the intrinsic value of IBX stock, and how does it compare to the current market price?

# 18.3 Dividend Discount Models

Consider an investor who buys a share of Steady State Electronics stock, planning to hold it for one year. The intrinsic value of the share is the present value of the dividend to be received at the end of the first year,  $D_{1}$ , and the expected sales price,  $P_{1}$ . We will henceforth use the simpler notation  $P_{1}$  instead of  $E(P_{1})$  to avoid clutter. Keep in mind, though, that future prices and dividends are unknown, and we are dealing with expected, not certain, values. We've already established

$$
V _ {0} = \frac {D _ {1} + P _ {1}}{1 + k} \tag {18.1}
$$

Although this year's dividends are fairly predictable given a company's history, you might ask how we can estimate  $P_{1}$ , the year-end price. According to Equation 18.1,  $V_{1}$  (the year-end intrinsic value) will be

$$
V _ {1} = \frac {D _ {2} + P _ {2}}{1 + k}
$$

If we assume the stock will be selling for its intrinsic value next year, then  $V_{1} = P_{1}$ , and we can substitute this value for  $P_{1}$  into Equation 18.1 to find

$$
V _ {0} = \frac {D _ {1}}{1 + k} + \frac {D _ {2} + P _ {2}}{(1 + k) ^ {2}}
$$

This equation may be interpreted as the present value of dividends plus sales price for a 2-year holding period. Of course, now we need to come up with a forecast of  $P_{2}$ . Continuing in the same way, we can replace  $P_{2}$  by  $(D_{3} + P_{3}) / (1 + k)$ , which relates  $P_{0}$  to the value of dividends plus the expected sales price for a 3-year holding period.

More generally, for a holding period of  $H$  years, we can write the stock value as the present value of dividends over the  $H$  years, plus the ultimate sale price,  $P_{H}$ :

$$
V _ {0} = \frac {D _ {1}}{1 + k} + \frac {D _ {2}}{(1 + k) ^ {2}} + \dots + \frac {D _ {H} + P _ {H}}{(1 + k) ^ {H}} \tag {18.2}
$$

Notice the similarity between this formula and the bond valuation formula we encountered in Chapter 14. Each relates price to the present value of a stream of payments (coupons in the case of bonds, dividends in the case of stocks) and a final payment (the face value of the bond, or the sales price of the stock). The key differences for stocks are the uncertainty of dividends, the lack of a fixed maturity date, and the unknown sales price at the horizon date. Indeed, one can continue to substitute for price indefinitely, to conclude

$$
V _ {0} = \frac {D _ {1}}{1 + k} + \frac {D _ {2}}{(1 + k) ^ {2}} + \frac {D _ {3}}{(1 + k) ^ {3}} + \dots \tag {18.3}
$$

Equation 18.3 states that the stock price should equal the present value of all expected future dividends into perpetuity. This formula is called the dividend discount model (DDM) of stock prices.

It is tempting, but incorrect, to interpret Equation 18.3 as saying that the DDM focuses exclusively on dividends and ignores capital gains as a motive for investing in stock. Indeed, we assume explicitly in Equation 18.1 that capital gains (as reflected in the expected sales price,  $P_{1}$ ) are part of the stock's value. The reason only dividends appear in Equation 18.3 is not that investors ignore capital gains. It is instead that those capital gains will reflect dividend forecasts at the time the stock is sold. That is why in Equation 18.2 we can write the stock price as the present value of dividends plus sales price for any horizon date.  $P_{H}$  is the present value at time  $H$  of all dividends expected to be paid after the horizon date. That value is then discounted back to today, time 0. The DDM asserts that stock prices are determined ultimately by the cash flows accruing to stockholders, and those are dividends.

# The Constant-Growth DDM

Equation 18.3 as it stands is still not very useful because it requires dividend forecasts for every year into the indefinite future. To make the DDM practical, we need some simplifying assumptions. A useful and common first pass is to assume that dividends are trending upward at a stable growth rate that we will call  $g$ . For example, if  $g = .05$ , and the most recently paid dividend was  $D_0 = 3.81$ , expected future dividends are

$$
\begin{array}{l} D _ {1} = D _ {0} (1 + g) = 3. 8 1 \times 1. 0 5 = 4. 0 0 \\ D _ {2} = D _ {0} (1 + g) ^ {2} = 3. 8 1 \times (1. 0 5) ^ {2} = 4. 2 0 \\ D _ {3} = D _ {0} (1 + g) ^ {3} = 3. 8 1 \times (1. 0 5) ^ {3} = 4. 4 1 \\ \end{array}
$$ and so on. Assuming constant growth in Equation 18.3, we can write intrinsic value as


$$
V _ {0} = \frac {D _ {0} (1 + g)}{1 + k} + \frac {D _ {0} (1 + g) ^ {2}}{(1 + k) ^ {2}} + \frac {D _ {0} (1 + g) ^ {3}}{(1 + k) ^ {3}} + \dots
$$

This equation can be simplified to

$$
V _ {0} = \frac {D _ {0} (1 + g)}{k - g} = \frac {D _ {1}}{k - g} \tag {18.4}
$$

Notice that we calculate intrinsic value by dividing  $D_{1}$  (not  $D_{0}$ ) by  $k - g$ . If the market capitalization rate for Steady State is  $12\%$ , the intrinsic value of a share of Steady State stock is

$$
\frac {\mathbb {S} 3 . 8 1 (1 + . 0 5)}{\cdot 1 2 - . 0 5} = \frac {\mathbb {S} 4 . 0 0}{\cdot 1 2 - . 0 5} = \mathbb {S} 5 7. 1 4
$$

Equation 18.4 is called the constant-growth DDM, or the Gordon model, after Myron Gordon, who popularized it. It should remind you of the formula for the present value of a perpetuity. If dividends were expected not to grow, then the dividend stream would be a simple perpetuity, and the valuation formula would be  $V_{0} = D_{1} / k$ . Equation 18.4 generalizes the perpetuity formula for the case of a growing perpetuity. For any given value of  $D_{1}$ , as  $g$  increases, the stock price also rises.

# Example 18.2 Preferred Stock and the DDM

Preferred stock that pays a fixed dividend can be valued using the constant-growth dividend discount model. The growth rate of dividends is simply zero. For example, to value a preferred stock paying a fixed dividend of 2 per share when the discount rate is 8\%, we compute

$$
V _ {0} = \frac {\mathbb {S} 2}{. 0 8 - 0} = \mathbb {S} 2 5
$$

Here is a proof. By definition,

$$
V _ {0} = \frac {D _ {1}}{1 + k} + \frac {D _ {1} (1 + g)}{(1 + k) ^ {2}} + \frac {D _ {1} (1 + g) ^ {2}}{(1 + k) ^ {3}} + \dots \tag {a}
$$

Multiplying through by  $(1 + k) / (1 + g)$ , we obtain

$$
\frac {(1 + k)}{(1 + g)} V _ {0} = \frac {D _ {1}}{(1 + g)} + \frac {D _ {1}}{(1 + k)} + \frac {D _ {1} (1 + g)}{(1 + k) ^ {2}} + \dots \tag {b}
$$

Subtracting equation (a) from equation (b), we find that

$$
\frac {1 + k}{1 + g} V _ {0} - V _ {0} = \frac {D _ {1}}{(1 + g)}
$$ which implies


$$
\frac {(k - g) V _ {0}}{(1 + g)} = \frac {D _ {1}}{(1 + g)}
$$

$$
V _ {0} = \frac {D _ {1}}{k - g}
$$

Recall from introductory finance that the present value of a $1-per-year perpetuity is 1/k. For example, if k = 10\%, the value of the perpetuity is $1/.10 = 10. Notice that if g = 0 in Equation 18.4, the constant-growth DDM formula is the same as the perpetuity formula.

# Example 18.3 The Constant-Growth DDM

High Flyer Industries has just paid its annual dividend of 3 per share. The dividend is expected to grow at a constant rate of 8 \% indefinitely. The beta of High Flyer stock is 1.0, the risk-free rate is 6 \%, and the market risk premium is 8 \%. What is the intrinsic value of the stock? What would be your estimate of intrinsic value if you believed that the stock was riskier, with a beta of 1.25?

Because a  $3 dividend has just been paid and the growth rate of dividends is 8\%$ , the forecast for the year-end dividend is 3 \times 1.08 = $3.24. The market capitalization rate (using the CAPM) is  $6\% + 1.0 \times 8\% = 14\%$ . Therefore, the value of the stock is

$$
V _ {0} = \frac {D _ {1}}{k - g} = \frac {\mathbb {S} 3 . 2 4}{. 1 4 -. 0 8} = \mathbb {S} 5 4
$$

If the stock is perceived to be riskier, its value must be lower. At the higher beta, the market capitalization rate is  $6\% + 1.25 \times 8\% = 16\%$ , and the stock is worth only

$$
\frac {\mathbb {S} 3 . 2 4}{. 1 6 -. 0 8} = \mathbb {S} 4 0. 5 0
$$

The constant-growth DDM is valid only when  $g$  is less than  $k$ . If dividends were expected to grow forever at a rate faster than  $k$ , the value of the stock would be infinite. If an analyst derives an estimate of  $g$  greater than  $k$ , that growth rate must be unsustainable in the long run. The appropriate valuation model to use in this case is a multistage DDM such as those discussed below.

The constant-growth DDM is so widely used by stock market analysts that it is worth exploring some of its implications and limitations. The constant-growth rate DDM implies that a stock's value will be greater:

1. The larger its expected dividend per share.
2. The lower the market capitalization rate,  $k$ .
3. The higher the expected growth rate of dividends.

Another implication of the constant-growth model is that the stock price is expected to grow at the same rate as dividends. To see this, suppose Steady State stock is selling at its intrinsic value of $57.14, so that  $V_{0} = P_{0}$ . Then

$$
P _ {0} = \frac {D _ {1}}{k - g}
$$

Notice that price is proportional to dividends. Therefore, next year, when the dividends paid to Steady State stockholders are expected to be higher by  $g = 5\%$ , price also should increase by  $5\%$ . To confirm this, we can write

$$
D _ {2} = \ 4 (1. 0 5) = \ 4. 2 0
$$

$$
P _ {1} = \frac {D _ {2}}{k - g} = \frac {\mathbb {S} 4 . 2 0}{. 1 2 -. 0 5} = \mathbb {S} 6 0. 0 0
$$ which is  $5\%$  higher than the current price of 57.14. To generalize,


$$
P _ {1} = \frac {D _ {2}}{k - g} = \frac {D _ {1} (1 + g)}{k - g} = \frac {D _ {1}}{k - g} (1 + g) = P _ {0} (1 + g)
$$

Therefore, the DDM implies that when dividends grow at a constant rate, the rate of price appreciation in any year will equal that growth rate,  $g$ . For a stock whose market price equals its intrinsic value  $(V_0 = P_0)$ , the expected holding-period return will be

$$
\begin{array}{l} E (r) = \text {D i v i d e n d y i e l d} + \text {C a p i t a l g a i n s y i e l d} \\ = \frac {D _ {1}}{P _ {0}} + \frac {P _ {1} - P _ {0}}{P _ {0}} = \frac {D _ {1}}{P _ {0}} + g \tag {18.5} \\ \end{array}
$$

This formula allows us to infer the market capitalization rate, for if the stock is selling at its intrinsic value, then  $E(r) = k$ , implying that  $k = D_{1} / P_{0} + g$ . By observing the dividend yield,  $D_{1} / P_{0}$ , and estimating the (assumed steady) growth rate of dividends, we can compute  $k$ . This equation is also known as the discounted cash flow (DCF) formula.

This approach is often used in rate hearings for regulated public utilities. The regulatory agency responsible for approving utility pricing decisions is mandated to allow the firms to charge just enough to cover costs plus a "fair" profit, that is, one that allows a competitive return on the investment the firm has made in its productive capacity. In turn, that return is taken to be the expected return investors require on the stock of the firm. The  $D_{1} / P_{0} + g$  formula allows us to infer that required return.

# Example 18.4 The Constant-Growth Model

Suppose that Steady State Electronics wins a major contract for its new computer chip. The very profitable contract will enable it to increase the growth rate of dividends from  $5 \%$ to  $6 \%$ without reducing the current dividend from the projected value of 4.00 per share. What will happen to the stock price? What will happen to future expected rates of return on the stock?

The stock price ought to increase in response to the good news about the contract, and indeed it does. The stock price jumps from its original value of 57.14 to a post-announcement price of

$$
\frac {D _ {1}}{k - g} = \frac {\mathbb {S} 4 . 0 0}{. 1 2 -. 0 6} = \mathbb {S} 6 6. 6 7
$$

Investors who are holding the stock when the good news about the contract is announced will receive a substantial windfall.

On the other hand, at the new price, the expected rate of return on the stock is  $12\%$ , just as it was before the new contract was announced:

$$
E (r) = \frac {D _ {1}}{P _ {0}} + g = \frac {\mathbb {S} 4.00}{\mathbb {S} 66.67} + . 06 = . 12, \text {or} 12 \%
$$

This makes sense. Once the news about the contract is reflected in the stock price, the expected rate of return will be consistent with the risk of the stock. Because that risk has not changed, neither should the expected rate of return.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/ade427a3f95bc31be588bda195600d2785246f8ed394e941c9ad13f7c89899f5.jpg)

# Concept Check 18.2 a. IBX's stock dividend at the end of this year is expected to be 2.15, and it is expected to grow at 11.2\% per year forever. If the required rate of return on IBX stock is 15.2\% per year, what is its intrinsic value?

b. If IBX's current market price equals this intrinsic value, what is next year's expected price?
c. If an investor buys IBX stock now and plans to sell it after receiving the 2.15 dividend a year from now, what is the expected capital gain (i.e., price appreciation) in percentage terms? What are the dividend yield and the expected holding-period return?

# Convergence of Price to Intrinsic Value

Suppose that the current market price of ABC stock from Example 18.1 is only  $48 per share and, therefore, that the stock is undervalued by$ 2 per share. In this case, the expected rate of price appreciation depends on an additional assumption about whether the discrepancy between the intrinsic value and the market price will disappear, and if so, when.

One fairly common assumption is that the discrepancy will never disappear and that the market price will trend upward at rate  $g$  forever. This implies that the discrepancy between intrinsic value and market price also will grow at the same rate. In our example:

<table><tr><td>Now</td><td>Next Year</td></tr><tr><td>V0 = $50</td><td>V1 = $50 × 1.04 = $52</td></tr><tr><td>P0 = $48</td><td>P1 = $48 × 1.04 = $49.92</td></tr><tr><td>V0 - P0 = $2</td><td>V1 - P1 = $2 × 1.04 = 2.08</td></tr></table>

Under this assumption, the expected HPR will exceed the required rate because the dividend yield is higher than it would be if  $P_0$  were equal to  $V_0$ . In our example, the dividend yield would be  $8.33\%$  instead of  $8\%$ , so the expected HPR would be  $12.33\%$  rather than  $12\%$ :

$$
E (r) = \frac {D _ {1}}{P _ {0}} + g = \frac {\mathbb {S} 4}{\mathbb {S} 4 8} +. 0 4 = . 0 8 3 3 +. 0 4 = . 1 2 3 3
$$

An investor who identifies this undervalued stock can get an expected dividend that exceeds the required yield by 33 basis points. This excess return is earned each year, and the market price never catches up to intrinsic value.

An alternative assumption is that the gap between market price and intrinsic value will disappear by the end of the year. In that case, we would have  $P_{1} = V_{1} = \$ 52$ , and

$$
E (r) = \frac {D _ {1}}{P _ {0}} + \frac {P _ {1} - P _ {0}}{P _ {0}} = \frac {4}{4 8} + \frac {5 2 - 4 8}{4 8} = . 0 8 3 3 +. 0 8 3 3 =. 1 6 6 7
$$

The assumption of complete catch-up to intrinsic value produces a much larger 1-year HPR. In future years, however, the stock is expected to generate only fair rates of return.

Many stock analysts assume that a stock's price will approach its intrinsic value gradually over time—for example, over a 5-year period. This puts their expected 1-year HPR somewhere between the bounds of  $12.33\%$  and  $16.67\%$ .

# Stock Prices and Investment Opportunities

Consider two companies, Cash Cow, Inc., and Growth Prospects, each with expected earnings in the coming year of  $5 per share. Both companies could, in principle, pay out all of these earnings as dividends, maintaining a perpetual dividend flow of$ 5 per share. If the market capitalization rate were  $k = 12.5\%$ , both companies would then be valued at  $D_{1} / k =$ 5/.125 = 40 per share. Neither firm would grow because, with all earnings paid out as dividends, and none reinvested in the firm, both companies' capital stock and earnings capacity would remain unchanged over time; neither earnings nor dividends would increase.

Now suppose one of the firms, Growth Prospects, engages in projects that generate a return on investment of  $15\%$ , which is greater than the required rate of return,  $k = 12.5\%$ . It would be foolish for such a company to pay out all of its earnings as dividends. If Growth Prospects retains or plows back some of its earnings into its profitable projects, it can earn a  $15\%$  rate of return for its shareholders, whereas if it pays out all earnings as dividends, it forgoes the projects, leaving shareholders to invest the dividends in other opportunities at an expected rate of only  $12.5\%$ . Suppose, therefore, that Growth Prospects chooses a lower dividend payout ratio (the fraction of earnings paid out as dividends), reducing payout from  $100\%$  to  $40\%$ , maintaining a plowback ratio (the fraction of earnings reinvested in the firm) at  $60\%$ . The plowback ratio is also referred to as the earnings retention ratio.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/2f86243ca1717e2be01557a815409468dbe5a5f82c748d20c1812a832526a495.jpg)
Figure 18.1 Dividend growth for two earnings reinvestment policies

The dividend of the company, therefore, will be 2 (40\% of 5 earnings) instead of 5. Will share price fall? No—it will rise! Although dividends initially fall under the earnings reinvestment policy, subsequent growth in the assets of the firm because of reinvested profits will generate growth in future dividends, which will be reflected in today's share price.

Figure 18.1 illustrates the dividend streams generated by Growth Prospects under two dividend policies. A low-reinvestment-rate plan allows the firm to pay higher initial dividends but results in a lower dividend growth rate. Eventually, a high-reinvestment-rate plan will provide higher dividends. If the dividend growth generated by the reinvested earnings is high enough, the stock will be worth more under the high-reinvestment strategy.

How much growth will be generated? Suppose Growth Prospects starts with plant and equipment of 100 million and is all equity financed. With a return on investment or equity (ROE) of 15\%, total earnings are ROE \times 100 million = .15 \times 100 million = $15 million. There are 3 million shares of stock outstanding, so earnings per share are $5, as posited above. If 60\% of the $15 million in this year's earnings is reinvested, then the value of the firm's assets will increase by .60 \times 15 million = $9 million, or by 9\%. The percentage increase in assets is the rate at which income was generated (ROE) times the plowback ratio (the fraction of earnings reinvested in the firm), which we will denote as b.

Now endowed with  $9\%$  more assets, the company earns  $9\%$  more income and pays out  $9\%$  higher dividends. The growth rate of the dividends, therefore, is

$$ g = \mathrm {R O E} \times b = . 1 5 \times . 6 0 = . 0 9
$$

For a given ROE and plowback ratio, the firm can grow at this rate indefinitely, so  $g$  is called the sustainable growth rate.

If the stock price equals its intrinsic value, and the ROE and payout ratios are consistent with the long-run capabilities of the firm, the stock should sell at

$$
P _ {0} = \frac {D _ {1}}{k - g} = \frac {\mathbb {S} 2}{. 1 2 5 -. 0 9} = \mathbb {S} 5 7. 1 4
$$

We can derive this relationship more generally by noting that with a fixed ROE, earnings (which equal ROE × book value) will grow at the same rate as the book value of the firm. Abstracting from issuance of new shares of stock, the growth rate of book value equals reinvested earnings/book value. Therefore,

$$ g = \frac {\text {R e i n v e s t e d e a r n i n g s}}{\text {B o o k v a l u e}} = \frac {\text {R e i n v e s t e d e a r n i n g s}}{\text {T o t a l e a r n i n g s}} \times \frac {\text {T o t a l e a r n i n g s}}{\text {B o o k v a l u e}} = b \times \text {R O E}
$$

When Growth Prospects pursued a no-growth policy and paid out all earnings as dividends, the stock price was only $40. Therefore, you can think of $40 as the value per share of the assets the company already has in place.

When Growth Prospects decided to reduce current dividends and reinvest some of its earnings in new investments, its stock price increased. The increase in the stock price reflects the fact that the planned investments provide an expected rate of return greater than the required rate. In other words, the investment opportunities have positive net present value, and the value of the firm rises by that NPV. This net present value is also called the present value of growth opportunities, or PVGO.

Therefore, we can think of the value of the firm as the sum of the value of assets already in place, or the no-growth value of the firm, plus the net present value of the future investments the firm will make, which is the PVGO. For Growth Prospects, PVGO = 17.14 per share:

$$
\begin{array}{l} \text {P r i c e} = \text {N o - g r o w t h v a l u e p e r s h a r e} + \text {P V G O} \\ P _ {0} = \frac {E _ {1}}{k} + \text {P V G O} \tag {18.6} \\ \end{array}
$$

$$
5 7. 1 4 = 4 0 + 1 7. 1 4
$$

We know that, in reality, dividend cuts almost always are accompanied by drops in stock prices. Does this contradict our analysis? Not necessarily: Dividend cuts are usually taken as bad news about the future prospects of the firm, and it is the new information about the firm—not the reduced dividend per se—that is responsible for the stock price decline.

For example, when J.P. Morgan cut its quarterly dividend from 38 cents to 5 cents a share in 2009, its stock price actually increased by about  $5\%$ . The company was able to convince investors that the cut would conserve cash and prepare the firm to weather the imminent recession. When investors were convinced that the dividend cut made sense, the stock price actually increased. Similarly, when Boeing announced in March 2020 that it would suspend dividends, its stock price barely budged. Investors already knew that the COVID-19 pandemic had severely impaired Boeing's profitability. The cut already had been widely anticipated, so it was not new information. These examples show that stock price declines in response to dividend cuts are really a response to the information conveyed by the cut.

It is important to recognize that growth per se is not what investors desire. Growth enhances value only if it is achieved by investment in projects with attractive profit opportunities (i.e., with ROE > k). To see why, let's now consider Growth Prospects's unfortunate sister company, Cash Cow, Inc. Cash Cow's ROE is only 12.5\%, just equal to the required rate of return, k. Therefore, the net present value of its investment opportunities is zero. We've seen that following a zero-growth strategy with b = 0 and g = 0, the value of Cash Cow will be E₁/k = $5/.125 = $40 per share. Now suppose Cash Cow chooses a plowback ratio of b = .60, the same as Growth Prospects's plowback. Then g would increase to

$$ g = \mathrm {R O E} \times b = . 1 2 5 \times . 6 0 = . 0 7 5
$$

But the stock price is still 40:

$$
P _ {0} = \frac {D _ {1}}{k - g} = \frac {\mathbb {S} 2}{. 1 2 5 -. 0 7 5} = \mathbb {S} 4 0
$$ which is no different from the no-growth strategy.


When Cash Cow reduced dividends to free funds for reinvestment, it generated only enough growth to maintain the stock price at its current level. This makes sense: If the firm's projects yield only what investors can earn on their own, shareholders cannot be made better off by a high-reinvestment-rate policy. This demonstrates that "growth" is not the same as growth opportunities. To justify reinvestment, the firm must engage in projects with better prospective returns than those shareholders can find elsewhere. Notice also that the PVGO of Cash Cow is zero:  $\mathrm{PVGO} = P_0 - E_1 / k = 40 - 40 = 0$ . With ROE = k, there is no gain from plowing funds back into the firm. In fact, this is why firms with considerable cash flow but limited investment prospects are called "cash cows." The cash these firms generate is best taken out of, or "milked from," the firm.


# Example 18.5 Growth Opportunities

Takeover Target is run by entrenched management that stubbornly insists on reinvesting 60\% of its earnings in projects that provide an ROE of 10\%, despite the fact that the firm's capitalization rate is k = 15\%. The firm's year-end dividend will be \$2 per share, paid out of earnings of \$5 per share. At what price will the stock sell? What is the present value of growth opportunities? Why would such a firm be a takeover target for another firm?

Given current management's investment policy, the dividend growth rate will be

$$ g = R O E \times b = 10 \% \times .60 = 6 \%
$$ and the stock price should be


$$
P _ {0} = \frac {\mathbb {S} 2}{. 1 5 -. 0 6} = \mathbb {S} 2 2. 2 2
$$

The present value of growth opportunities is

$$
\begin{array}{l} P V G O = \text {P r i c e p e r s h a r e - N o - g r o w t h v a l u e p e r s h a r e} \\ = \mathbb {S} 2 2. 2 2 - E _ {1} / k = \mathbb {S} 2 2. 2 2 - 5. 1 5 = - \mathbb {S} 1 1. 1 1 \\ \end{array}
$$

PVGO is negative. This is because the net present value of the firm's projects is negative: The rate of return on those assets is less than the opportunity cost of capital.

Such a firm would be vulnerable to takeover because another firm could buy the firm for the market price of 22.22 per share and increase the value of the firm by changing its investment policy. For example, if the new management simply paid out all earnings as dividends, the value of the firm would increase to its no-growth value, E_{1} / k = \5/.15 = \$33.33.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/0e7c505b7b67d78509313c44e2aac3a97e9b06122969996cc143a8b7b1cce256.jpg)

# Concept Check 18.3 a. Calculate the price of a firm with a plowback ratio of .60 if its ROE is  $20\%$ ; the coming year's earnings,  $E_{1}$ , will be $5 per share; and  $k = 12.5\%$ .

b. What if ROE is  $10\%$ , which is less than the market capitalization rate? Compare the firm's price in this instance to that of a firm with the same ROE and  $E_{1}$  but a plowback ratio of  $b = 0$ .

# Life Cycles and Multistage Growth Models

As useful as the constant-growth DDM formula is, you need to remember that it is based on a strong simplifying assumption, namely, that the dividend growth rate will be constant forever. In fact, firms typically pass through life cycles with very different dividend profiles in different phases. In early years, there are ample opportunities for profitable reinvestment in the company. Payout ratios are low, and growth is correspondingly rapid.

Eventually, the firm matures, production capacity is sufficient to meet market demand, competitors enter the market, and attractive opportunities for reinvestment may become harder to find. In this mature phase, with fewer investment opportunities, the firm may choose to pay out a higher fraction of earnings as dividends.

Table 18.2 illustrates this pattern. It gives Value Line's forecasts of return on capital, dividend payout ratio, and 3-year projected growth rate in earnings per share for a sample of the firms included in the computer software industry versus those of East Coast electric utilities. (We compare return on capital rather than return on equity because the latter is affected by leverage, which tends to be far greater in the electric utility industry than in the software industry. Return on capital measures operating income per dollar of total long-term financing, regardless of whether the source of the capital supplied is debt or equity. We will return to this issue in Chapter 19.)

By and large, the software firms have attractive investment opportunities. The median return on capital of these firms is forecast to be  $20.8\%$ , and the firms have responded with high plowback ratios. Some of these firms pay no dividends at all. The high return on capital and high plowback result in rapid growth. The median projected growth rate of earnings per share in this group is  $11.9\%$ .

In contrast, the electric utilities are more representative of mature firms. Their median return on capital is lower,  $6.0\%$ ; dividend payout is higher,  $64\%$ ; and median growth is lower,  $6.0\%$ . We conclude that the higher payouts of the electric utilities reflect their more limited opportunities to reinvest earnings at attractive rates of return.

Table 18.2
Financial ratios in two industries

<table><tr><td></td><td>Ticker</td><td>Return on Capital (\%)</td><td>Payout Ratio (\%)</td><td>Growth Rate 2022–2025 (\%)</td></tr><tr><td colspan="5">Computer Software</td></tr><tr><td>Adobe Systems</td><td>ADBE</td><td>21.0</td><td>0.0</td><td>15.0</td></tr><tr><td>Citrix</td><td>CTXS</td><td>22.0</td><td>22.0</td><td>12.3</td></tr><tr><td>Cognizant</td><td>CTSH</td><td>17.0</td><td>25.0</td><td>9.7</td></tr><tr><td>Intuit</td><td>INTU</td><td>19.5</td><td>25.0</td><td>14.5</td></tr><tr><td>Microsoft</td><td>MSFT</td><td>32.5</td><td>28.0</td><td>11.4</td></tr><tr><td>Oracle</td><td>ORCL</td><td>20.5</td><td>25.0</td><td>12.2</td></tr><tr><td>NortonLifeLock</td><td>NLOK</td><td>24.5</td><td>37.0</td><td>7.9</td></tr><tr><td>SAP</td><td>SAP</td><td>17.0</td><td>32.0</td><td>11.5</td></tr><tr><td>Median</td><td></td><td>20.8</td><td>25.0</td><td>11.9</td></tr><tr><td colspan="5">Electric Utilities (East Coast)</td></tr><tr><td>Dominion Resources</td><td>D</td><td>6.0</td><td>68.0</td><td>5.0</td></tr><tr><td>Consolidated Edison</td><td>ED</td><td>5.0</td><td>64.0</td><td>4.5</td></tr><tr><td>Duke Energy</td><td>DUK</td><td>5.5</td><td>66.0</td><td>6.0</td></tr><tr><td>Eversource</td><td>ES</td><td>5.5</td><td>63.0</td><td>5.8</td></tr><tr><td>FirstEnergy</td><td>FE</td><td>7.0</td><td>57.0</td><td>6.4</td></tr><tr><td>Nextera Energy</td><td>NEE</td><td>6.5</td><td>70.0</td><td>9.7</td></tr><tr><td>Public Service Enterprise</td><td>PEG</td><td>6.0</td><td>57.0</td><td>9.7</td></tr><tr><td>Southern Company</td><td>SO</td><td>6.5</td><td>70.0</td><td>5.2</td></tr><tr><td>Exelon</td><td>EXC</td><td>5.5</td><td>53.0</td><td>6.7</td></tr><tr><td>Median</td><td></td><td>6.0</td><td>64.0</td><td>6.0</td></tr></table>

Source: Value Line Investment Survey, 2021. Reprinted with permission of Value Line Investment Survey. © 2021 Value Line Publishing, Inc. All rights reserved.

To value companies with temporarily high growth, analysts use a multistage version of the dividend discount model. For example, a two-stage dividend discount model allows for an initial high-growth period before the firm settles down to a sustainable growth trajectory. The combined present value of dividends in the initial high-growth period is calculated first. Then, once the firm is projected to settle down to a steady-growth phase, the constant-growth DDM is applied to value the remaining stream of dividends.

Let's try this approach with an actual firm. Figure 18.2 is a Value Line Investment Survey report on Toyota. Even though the firm is based in Japan, U.S. investors can buy and sell American Depositary Receipts (see Chapter 2) on its shares. Some of its relevant information for 2021 is highlighted.

Toyota's beta appears at the circled A, its recent stock price at the B, the per-share dividend payments at the C, the ROE (referred to as return on shareholder equity) at the D, and the dividend payout ratio (referred to as all dividends to net profits) at the E. The rows ending at C, D, and E are historical time series. The boldfaced, italicized entries under 2022 are estimates for that year. Similarly, the entries in the far right column (labeled 24-26) are forecasts for some time between 2024 and 2026, which we will take to be 2025.

Value Line projects fairly rapid growth in the near term, with dividends increasing at about 7.6\% per year, from 4.45 in 2022 to 5.55 in 2025. This growth rate cannot be sustained indefinitely. We can obtain dividend inputs for this initial period by using the explicit forecasts for 2022 and 2025 and linear interpolation for the years between:

<table><tr><td>2022</td><td>$4.45</td><td>2024</td><td>$5.18</td></tr><tr><td>2023</td><td>$4.81</td><td>2025</td><td>$5.55</td></tr></table>

Now let us assume the dividend growth rate levels off in 2025. What is a good guess for that steady-state growth rate? Value Line forecasts a dividend payout ratio of  $34\%$  and an ROE of  $9\%$ , implying long-term growth will be

$$ g = \mathrm {ROE} \times b = 9 \% \times (1 -.34) = 5.94 \%
$$ which Value Line rounds off to  $6\%$ .


Our estimate of Toyota's intrinsic value using an investment horizon of 2025 is therefore obtained from Equation 18.2, which we restate here:

$$
\begin{array}{l} V _ {2 0 2 1} = \frac {D _ {2 0 2 2}}{1 + k} + \frac {D _ {2 0 2 3}}{(1 + k) ^ {2}} + \frac {D _ {2 0 2 4}}{(1 + k) ^ {3}} + \frac {D _ {2 0 2 5} + P _ {2 0 2 5}}{(1 + k) ^ {4}} \\ = \frac {4 . 4 5}{1 + k} + \frac {4 . 8 1}{(1 + k) ^ {2}} + \frac {5 . 1 8}{(1 + k) ^ {3}} + \frac {5 . 5 5 + P _ {2 0 2 5}}{(1 + k) ^ {4}} \\ \end{array}
$$

Here,  $P_{2025}$  represents the forecast price at which we can sell our shares at the end of 2025, when dividends are assumed to enter their constant-growth phase. That price, according to the constant-growth DDM, should be

$$
P _ {2 0 2 5} = \frac {D _ {2 0 2 6}}{k - g} = \frac {D _ {2 0 2 5} (1 + g)}{k - g} = \frac {5 . 5 5 \times 1 . 0 6}{k - . 0 6}
$$

The only variable remaining to be determined to calculate intrinsic value is the market capitalization rate,  $k$ .

One way to obtain  $k$  is from the CAPM. Observe from the Value Line report that Toyota's beta is .80. The risk-free rate on long-term Treasury bonds in 2021 was about  $2\%$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/a56e2983bc830f3b019e71cb6d3257aa43c19d4547c87463a678a88fb7a1bba8.jpg)
B
Figure 18.2 Value Line Investment Survey report on Toyota

Source: Value Line Investment Survey, May 14, 2021. Reprinted with permission of Value Line Investment Survey © 2021 Value Line Publishing, Inc. All rights reserved.

Suppose that the market risk premium was forecast at  $8\%$ , roughly in line with its historical average. This would imply that the forecast for the market return was

$$
\text {Risk - free rate} + \text {Market risk premium} = 2 \% + 8 \% = 10 \%
$$

Therefore, we can solve for the market capitalization rate as

$$ k = r _ {f} + \beta [ E (r _ {M}) - r _ {f} ] = 2 \% + .8 \times (10 \% - 2 \%) = 8.4 \%
$$

Our forecast for the stock price in 2025 is thus

$$
P _ {2 0 2 5} = \frac {\mathbb {S} 5 . 5 5 \times 1 . 0 6}{. 0 8 4 -. 0 6} = \mathbb {S} 2 4 5. 1 3
$$ and today's estimate of intrinsic value is


$$
V _ {2 0 2 1} = \frac {4 . 4 5}{1 . 0 8 4} + \frac {4 . 8 1}{(1 . 0 8 4) ^ {2}} + \frac {5 . 1 8}{(1 . 0 8 4) ^ {3}} + \frac {5 . 5 5 + 2 4 5 . 1 3}{(1 . 0 8 4) ^ {4}} = \$ 1 9 3. 8 1
$$

We know from the Value Line report that Toyota's actual price was 152.23 (at the circled B). Our intrinsic value analysis indicates that the stock was considerably underpriced. Should we increase our holdings?

Perhaps. But before betting the farm, stop to consider how much confidence you should place in this estimate. We've had to guess at dividends in the near future, the appropriate discount rate, and the ultimate growth rate of those dividends. Moreover, we've assumed Toyota will follow a relatively simple two-stage growth process. In practice, the growth of dividends can follow more complicated patterns. Even small errors in these approximations could upset a conclusion.

In particular, it is clear that an overwhelming portion of Toyota's intrinsic value derives from the forecast 2025 sales price of 245.13. If that sales price is overstated, so will be our estimate of intrinsic value. And we have good reason to be skeptical, especially given a forecast terminal growth rate of 6\%. In light of the fact that the long-term real growth rate of the U.S. economy is typically estimated at only 2\% - 3\%, it seems unlikely that any firm can grow indefinitely at such a rate, even in nominal terms. Moreover, even small revisions to this estimate can have large impacts on the estimate of intrinsic value.

For example, suppose the actual growth rate in the post-2025 period will be  $5\%$ , roughly matching the nominal U.S. growth rate assuming a long-term inflation rate of  $2.5\%$ . Using this estimate in the two-stage dividend discount model reduces the estimate of intrinsic value to 140.42. Now Toyota appears a bit overpriced. Would you bet your career on a forecast of the post-2025 growth rate?

The exercise highlights the importance of performing sensitivity analysis. Your valuation can be no better than your assumptions. Sensitivity analysis will highlight the inputs that need to be most carefully examined. For example, even modest changes in the estimated growth rate for the post-2025 period result in big changes in intrinsic value. Similarly, small changes in the assumed capitalization rate would change intrinsic value substantially. On the other hand, reasonable changes in the dividends forecast between 2022 and 2025 would have a small impact on intrinsic value.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/62a58af57b9cb7531b189138e9e417bc78a68b9102e3cc54f854e754d91d0cf4.jpg)

# Concept Check 18.4

Confirm that the intrinsic value of Toyota using  $g = 5 \%$  is  $\$ 140.42$ . (Hint: First calculate the stock price in 2025. Then calculate the present value of all interim dividends plus the present value of the 2025 sales price.)

# Multistage Growth Models

The two-stage growth model that we just considered is a good start toward realism, but clearly we can do even better by allowing our valuation model to accommodate more flexible patterns of growth. Multistage growth models allow dividends to grow at several different rates as the firm matures. Many analysts use three-stage growth models. They may assume an initial period of high dividend growth (or instead make year-by-year forecasts of dividends for the short term), a final period of sustainable growth, and a transition period between, during which dividend growth rates taper off from the initial rapid rate to the ultimate sustainable rate. These models are conceptually no harder to work with than a two-stage model, but they require many more calculations and can be tedious to do by hand. But they are tailor-made for Excel.

Spreadsheet 18.1 is an example of such a model. Column B contains the inputs we have used so far for Toyota. Column E contains dividend forecasts. In cells E2 through E5 we present the Value Line estimates for the next 4 years. Our estimate of Toyota's terminal growth rate from the two-stage model was  $9\% \times (1 - .34) = 5.94\%$ . But we noted that this rate seems too high to be sustained in perpetuity. Suppose again that a more plausible long-run nominal growth rate is  $5\%$ , roughly matching that of the overall economy. But now we assume that dividend growth declines linearly in a transition period from the  $7.6\%$  growth rate in the 3-year period ending in 2025 to an ultimate value of  $5\%$  in 2037 (see Column F).

Each dividend in the transition period is the previous year's dividend times that year's growth rate. Terminal value once the firm finally enters a constant-growth stage (cell G17) is computed from the constant-growth DDM. Investor cash flow in each period (column H) equals dividends in each year plus the terminal value in 2037. The present value of these cash flows is computed in cell H19 as 157.

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td><td>H</td><td>I</td></tr><tr><td>1</td><td colspan="2">Inputs for Toyota</td><td></td><td>Year</td><td>Dividend</td><td>Div growth</td><td>Term value</td><td>Investor CF</td><td></td></tr><tr><td>2</td><td>beta</td><td>0.8</td><td></td><td>2022</td><td>4.45</td><td></td><td></td><td>4.45</td><td></td></tr><tr><td>3</td><td>mkt_prem</td><td>0.08</td><td></td><td>2023</td><td>4.81</td><td></td><td></td><td>4.81</td><td></td></tr><tr><td>4</td><td>rf</td><td>0.02</td><td></td><td>2024</td><td>5.18</td><td></td><td></td><td>5.18</td><td></td></tr><tr><td>5</td><td>k_equity</td><td>0.0840</td><td></td><td>2025</td><td>5.55</td><td></td><td></td><td>5.55</td><td></td></tr><tr><td>6</td><td>term_growth</td><td>0.050</td><td></td><td>2026</td><td>5.97</td><td>0.0764</td><td></td><td>5.97</td><td></td></tr><tr><td>7</td><td></td><td></td><td></td><td>2027</td><td>6.41</td><td>0.0738</td><td></td><td>6.41</td><td></td></tr><tr><td>8</td><td></td><td></td><td></td><td>2028</td><td>6.87</td><td>0.0711</td><td></td><td>6.87</td><td></td></tr><tr><td>9</td><td></td><td></td><td></td><td>2029</td><td>7.34</td><td>0.0685</td><td></td><td>7.34</td><td></td></tr><tr><td>10</td><td></td><td></td><td></td><td>2030</td><td>7.83</td><td>0.0658</td><td></td><td>7.83</td><td></td></tr><tr><td>11</td><td></td><td></td><td></td><td>2031</td><td>8.32</td><td>0.0632</td><td></td><td>8.32</td><td></td></tr><tr><td>12</td><td>Value line</td><td></td><td></td><td>2032</td><td>8.82</td><td>0.0606</td><td></td><td>8.82</td><td></td></tr><tr><td>13</td><td>forecasts of</td><td></td><td></td><td>2033</td><td>9.33</td><td>0.0579</td><td></td><td>9.33</td><td></td></tr><tr><td>14</td><td>annual dividends</td><td></td><td></td><td>2034</td><td>9.85</td><td>0.0553</td><td></td><td>9.85</td><td></td></tr><tr><td>15</td><td></td><td></td><td></td><td>2035</td><td>10.37</td><td>0.0526</td><td></td><td>10.37</td><td></td></tr><tr><td>16</td><td></td><td></td><td></td><td>2036</td><td>10.89</td><td>0.0500</td><td></td><td>10.89</td><td></td></tr><tr><td>17</td><td>Transitional period</td><td></td><td></td><td>2037</td><td>11.43</td><td>0.0500</td><td>353.05</td><td>364.48</td><td></td></tr><tr><td>18</td><td>with slowing dividend</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>19</td><td>growth</td><td></td><td></td><td></td><td></td><td></td><td></td><td>157.00</td><td>= PV of CF</td></tr><tr><td>20</td><td></td><td colspan="3">Beginning of constant</td><td colspan="3">E17 * (1+ F17)/(B5-F17)</td><td></td><td></td></tr><tr><td>21</td><td></td><td colspan="2">growth period</td><td></td><td></td><td></td><td></td><td colspan="2">NPV(B5,H2:H17)</td></tr></table>

# Spreadsheet 18.1

A three-stage growth model for Toyota

# Excel

Please visit us at www.mhhe.com/Bodie13e


# 18.4 The Price-Earnings Ratio

# The Price-Earnings Ratio and Growth Opportunities

Much of the real-world discussion of stock market valuation concentrates on the firm's price-earnings multiple, the ratio of price per share to earnings per share, commonly called the P/E ratio. Our discussion of growth opportunities shows why stock market analysts focus on the P/E ratio. Both Cash Cow and Growth Prospects had earnings per share (EPS) of 5, but Growth Prospects reinvested 60\% of earnings in projects with an ROE of 15\%, whereas Cash Cow paid out all earnings as dividends. Cash Cow had a price of \$40, giving it a P/E multiple of 40/5 = 8.0, whereas Growth Prospects sold for \$57.14, giving it a multiple of 57.14/5 = 11.4. This observation suggests the P/E ratio might reflect expected growth opportunities.

We can see how growth opportunities show up in P/E ratios by rearranging Equation 18.6 to

$$
\frac {P _ {0}}{E _ {1}} = \frac {1}{k} \left(1 + \frac {\text {P V G O}}{E / k}\right) \tag {18.7}
$$

When PVGO = 0, Equation 18.7 shows that  $P_0 = E_1 / k$ . The stock is valued like a non-growing perpetuity of  $E_1$ , and the P/E ratio is just  $1 / k$ . However, as PVGO becomes an increasingly dominant contributor to price, the P/E ratio can rise dramatically.

The ratio of PVGO to  $E / k$  has a straightforward interpretation. It is the ratio of the component of firm value due to growth opportunities to the component reflecting assets already in place (i.e., the no-growth value of the firm,  $E / k$ ). When future growth opportunities dominate the estimate of total value, the firm will command a high price relative to current earnings. Thus a high P/E multiple indicates that a firm enjoys ample growth opportunities.

# Example 18.6 Google's Growth Opportunities

Google (Alphabet) is already a highly profitable firm, but its forward P/E ratio of about 26.4 in early 2022 indicates that it still has substantial growth opportunities. If its market capitalization rate is about  $10\%$ , then we can use Equation 18.7 to infer the ratio of its growth opportunities to assets in place:

$$
\frac {P _ {0}}{E _ {1}} = \frac {1}{k} \left[ 1 + \frac {\mathrm {P V G O}}{E / k} \right] = \frac {1}{. 1 0} \left[ 1 + \frac {\mathrm {P V G O}}{\mathrm {P V (A s s e t s i n p l a c e)}} \right] = 2 6. 4
$$

We solve to show that PVGO/PV(Assets in place) = 1.64. So Google's anticipated future investment opportunities are valued by the market at about two-thirds its existing business.

P/E multiples do vary with growth prospects. Between 2001 and 2020, for example, PepsiCo's P/E ratio averaged about 20.6 while Consolidated Edison's (an electric utility) average P/E was only 15.7. These numbers do not necessarily imply that PepsiCo was overpriced compared to Con Ed. If investors believed PepsiCo would grow faster than Con Ed, the higher price per dollar of earnings would be justified. That is, investors might well pay a higher price per dollar of current earnings if they expect that earnings stream to grow more rapidly. In fact, PepsiCo's growth rate has been consistent with its higher P/E multiple. Over this period, its earnings per share more than tripled while Con Ed's increased by only  $23\%$ . (Later in the chapter, Figure 18.4 presents the EPS history of the two companies.)


We conclude that the P/E ratio reflects the market's optimism concerning a firm's growth prospects. Analysts must decide whether they are more or less optimistic than the belief implied by the market multiple. If they are more optimistic, they will recommend buying the stock.

There is a way to make these insights more precise. Look again at the constant-growth DDM formula,  $P_0 = D_1 / (k - g)$ . Now recall that dividends equal the earnings that are not reinvested in the firm:  $D_1 = E_1(1 - b)$ . Recall also that  $g = \mathrm{ROE} \times b$ . Hence, substituting for  $D_1$  and  $g$ , we find that

$$
P _ {0} = \frac {E _ {1} (1 - b)}{k - \mathrm {R O E} \times b}
$$ implying the P/E ratio is


$$
\frac {P _ {0}}{E _ {1}} = \frac {1 - b}{k - \mathrm {R O E} \times b} \tag {18.8}
$$

It is easy to verify that the P/E ratio increases with ROE. This makes sense because high-ROE projects give the firm good opportunities for growth. We also can verify that the P/E ratio increases for higher plowback,  $b$ , as long as ROE exceeds  $k$ . This too makes sense. When a firm has good investment opportunities, the market will reward it with a higher P/E multiple if it exploits those opportunities more aggressively by plowing back more earnings into those opportunities.

However, growth is not desirable for its own sake. Examine Table 18.3, where we use Equation 18.8 to compute both growth rates and P/E ratios for different combinations of ROE and  $b$ . Although growth always increases with the plowback ratio (move across the rows in Panel A), the P/E ratio does not (move across the rows in Panel B). In the top row of Panel B, the P/E falls as the plowback ratio increases. In the middle row, it is unaffected by plowback. In the third row, it increases.

This pattern has a simple interpretation. When the expected ROE is less than the required return,  $k$ , investors prefer that the firm pay out earnings as dividends rather than reinvest earnings in the firm at an inadequate rate of return. That is, for ROE lower than  $k$ , the value of the firm falls as plowback increases. Conversely, when ROE exceeds  $k$ , the firm offers attractive investment opportunities, so the value of the firm is enhanced as those opportunities are more fully exploited by increasing the plowback ratio.

# Table 18.3

Effect of ROE and plowback on growth and the P/E ratio

<table><tr><td></td><td colspan="4">Plowback Ratio (b)</td></tr><tr><td></td><td>0</td><td>0.25</td><td>0.50</td><td>0.75</td></tr><tr><td>ROE</td><td colspan="4">A. Growth Rate (g)</td></tr><tr><td>10\%</td><td>0</td><td>2.5\%</td><td>5.0\%</td><td>7.5\%</td></tr><tr><td>12</td><td>0</td><td>3.0</td><td>6.0</td><td>9.0</td></tr><tr><td>14</td><td>0</td><td>3.5</td><td>7.0</td><td>10.5</td></tr><tr><td>ROE</td><td colspan="4">B. P/E Ratio</td></tr><tr><td>10\%</td><td>8.33</td><td>7.89</td><td>7.14</td><td>5.56</td></tr><tr><td>12</td><td>8.33</td><td>8.33</td><td>8.33</td><td>8.33</td></tr><tr><td>14</td><td>8.33</td><td>8.82</td><td>10.00</td><td>16.67</td></tr></table>

Assumption:  $k = 12\%$  per year.

Finally, where ROE just equals  $k$ , the firm offers "break-even" investment opportunities with a fair rate of return. In this case, investors are indifferent between reinvestment of earnings in the firm or elsewhere at the market capitalization rate because the rate of return in either case is  $12\%$ . Therefore, the stock price is unaffected by the plowback ratio.

We conclude that the higher the plowback ratio, the higher the growth rate, but a higher plowback ratio does not necessarily mean a higher P/E ratio. Higher plowback increases P/E only if investments undertaken by the firm offer an expected rate of return greater than the market capitalization rate. Otherwise, increasing plowback hurts investors because more money is sunk into projects with inadequate rates of return.

Notwithstanding these fine points, P/E ratios frequently are taken as proxies for the expected growth in dividends or earnings. In fact, a Wall Street rule of thumb is that the growth rate ought to be roughly equal to the P/E ratio. In other words, the ratio of P/E to  $g$ , often called the PEG ratio, should be about 1.0. Peter Lynch, the famous portfolio manager, puts it this way in his book *One Up on Wall Street*:

The p/e ratio of any company that's fairly priced will equal its growth rate. I'm talking here about growth rate of earnings here. . . . If the p/e ratio of Coca Cola is 15, you'd expect the company to be growing at about  $15\%$  per year, etc. But if the p/e ratio is less than the growth rate, you may have found yourself a bargain. $^{8}$

# Example 18.7 P/E Ratio versus Growth Rate

Let's try Lynch's rule of thumb. Assume that

$r_f = 8\%$  (roughly the value when Peter Lynch was writing)

$r_{M} - r_{f} = 8\%$  (about the historical average market risk premium)

$b = .4$  (a typical value for the plowback ratio in the United States)

Therefore,  $r_{M} = r_{f} +$  market risk premium  $= 8\% + 8\% = 16\%$ , and  $k = 16\%$  for an average  $(\beta = 1)$  company. If we approximate ROE by  $16\%$  (the same value as the expected return on the stock), we conclude that

$$ g = \mathrm {ROE} \times b = 16 \% \times .4 = 6.4 \%
$$ and


$$
\frac {P}{E} = \frac {1 - . 4}{. 1 6 -. 0 6 4} = 6. 2 6
$$

Thus, the P/E ratio and  $g$  are about equal using these assumptions, consistent with the rule of thumb.

However, this rule of thumb, like almost all others, will not work in all circumstances. For example, the yield on long-term Treasury bonds today is more like  $2.0\%$ , so a comparable forecast of  $r_M$  would be

$$ r _ {f} + \text {Market risk premium} = 2.0 \% + 8 \% = 10.0 \%
$$

If we continue to focus on a firm with  $\beta = 1$ , and if ROE still is about the same as  $k$ , then

$$ g = 10.0\% \times .4 = 4.0\%
$$ while


$$
\frac {P}{E} = \frac {1 - . 4}{. 1 0 - . 0 4} = 1 0
$$

The P/E ratio and  $g$  now diverge and the PEG ratio is now 2.5. Nevertheless, lower-than-average PEG ratios are still widely seen as signaling potential underpricing.

The importance of growth opportunities is most evident in the valuation of start-up firms. For example, the market value of Tesla stock in 2021 was more than the combined value of Ford, GM, Honda, and Toyota. Yet its net income was less than one-tenth their combined income. The market was placing a huge value on Tesla's growth opportunities, reflecting in large part the competitive advantage it enjoyed from its big head start on electric cars and related battery technology.

Of course, when company valuation is determined primarily by growth opportunities, those values can be very sensitive to reassessments of such prospects. For example, when Meta Platforms (the parent company of Facebook) reduced its forecast of revenue growth and a decline in users on February 3, 2022, its share price dropped by  $26\%$  in one day. The company's market capitalization fell by more than  $\$230$  billion, the largest-ever one-day dollar decline.

As perceptions of future prospects wax and wane, share price can swing wildly, as Facebook illustrates. Growth prospects are intrinsically difficult to tie down; ultimately, however, those prospects drive the value of the most dynamic firms in the economy.

The nearby box contains a simple valuation analysis. Facebook's 2012 IPO was among the most highly anticipated in the decade, and there was widespread speculation (and disagreement) about the price at which it would eventually trade. The points of contention turned on two key questions: First, what was a reasonable projection for the growth rate of Facebook's profits? Second, what multiple of earnings was appropriate to translate an earnings forecast into a price forecast? These are precisely the questions addressed by our stock valuation models.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/b404809e9425371ddd8d10c798adecf30afde470d2b5e377022df51f0c1bfa05.jpg)

# Concept Check 18.5

ABC stock has an expected ROE of  $12\%$  per year, expected earnings per share of  $\$ 2$ , and expected dividends of  $\$ 1.50$  per share. Its market capitalization rate is  $10\%$  per year.

a. What are its expected growth rate, its price, and its P/E ratio?
b. If the plowback ratio were .4, what would be the expected dividend per share, the growth rate, price, and the P/E ratio?

# P/E Ratios and Stock Risk

One important implication of any stock-valuation model is that (holding all else equal) riskier stocks will have lower P/E multiples. We can see this in the context of the constant-growth model by examining the formula for the P/E ratio (Equation 18.8):

$$
\frac {P}{E} = \frac {1 - b}{k - g}
$$

Riskier firms have higher required rates of return, that is, higher values of  $k$ . Therefore, their P/E multiples will be lower. This is true more generally. For any expected earnings and dividend stream, the present value of those cash flows will be lower when the stream is perceived to be riskier. Hence, the stock price and the ratio of price to earnings will be lower.

Of course, you can find many small, risky, start-up companies with very high P/E multiples. This does not contradict our claim that P/E multiples should fall with risk; instead it is evidence of the market's expectations of high growth rates for those companies. This is why we said that high-risk firms will have lower P/E ratios holding all else equal. Given a growth projection, the P/E multiple will be lower when risk is perceived to be higher.

As Facebook's IPO drew near, valuation estimates by professional analysts were surprisingly disparate, ranging from as little as $50 billion to as much as $125 billion.

Disputes over fair value turned on a few key questions: Just how fast would the company be able to grow? How much profit would it be able to derive from advertising? And what earnings multiple would the market be willing to pay for that profit stream?

Everyone believed that Facebook had many years of rapid growth before it, but even so, its recent growth rate was lower than in its early years. While revenue grew  $88\%$  in 2011, and net income grew  $65\%$ , that increase was nevertheless considerably below the  $154\%$  increase in revenue from 2009 to 2010.

The president of IPOdesktop.com, which analyzes IPOs for investors, estimated Facebook's value at no more than $50 billion.* Even that value, at the low end of the range of most analysts, seemed generous in some respects: It would have been 50 times Facebook's 2011 profits of $1 billion, and a P/E multiple of 50 was more than triple the market's average price-to-earnings ratio at the time.


However, much higher estimates also were offered. For example, an analyst at Wedge Partners believed the value could top $100 billion. If Facebook traded at 15 to 18 times next year's EBITDA (expected earnings before interest, taxes, and certain noncash charges), it would result in a stock valuation of around $89 billion. But if Facebook could generate faster growth in ad spending, that could justify a multiple as high as 20 times EBITDA, implying a $110 billion valuation. By comparison, more mature companies such as Microsoft or Google traded at 7-10 times EBITDA. IPOdesktop was unconvinced, pointing out that at a $100 billion valuation, Facebook would be worth about half as much as Google, even though Google's sales and profits were 10 times that of Facebook.

In the end, based on its IPO price, the market valued Facebook at about 90 billion.

*The valuation estimates cited in this box appeared in Randall Smith, "Facebook's 100 Billion Question," *The Wall Street Journal*, February 3, 2012.

# Pitfalls in P/E Analysis

No description of P/E analysis is complete without mentioning some of its pitfalls. First, consider that the denominator in the P/E ratio is accounting earnings, which are influenced by somewhat arbitrary rules such as the use of historical cost in depreciation and inventory valuation. In times of high inflation, historic cost depreciation and inventory costs will tend to underrepresent true economic values because the replacement cost of both goods and capital equipment will rise with the general level of prices. As Figure 18.3 demonstrates, P/E ratios generally have been inversely related to the inflation rate. In part, this reflects the market's assessment that earnings in high inflation periods are of "lower quality," artificially distorted by inflation, and warranting lower P/E ratios.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/75a1de08f5e862d526c54c9ae69e3197701ad8fa996dd558628c3d182e08968f.jpg)
Figure 18.3 P/E ratio of the S&P 500 versus inflation rate, 1955-2020.

Earnings management is the practice of using flexibility in accounting rules to improve the apparent profitability of the firm. We will have much to say on this topic in the next chapter on interpreting financial statements. One version of earnings management is the reporting of "pro forma earnings."

Pro forma earnings are calculated ignoring certain expenses, for example, restructuring charges or write-downs of assets from continuing operations. Firms argue that ignoring these often one-time expenses gives a clearer picture of underlying profitability. Comparisons with earlier periods arguably can make more sense if those costs are excluded.

But when there is too much leeway for choosing what to exclude, it becomes hard to interpret the numbers or to compare them across firms. The lack of standards gives firms considerable leeway to manage earnings.

Even generally accepted accounting principles (GAAP) allow firms considerable discretion to manage earnings. For example, in the late 1990s, Kellogg took restructuring charges, which are supposed to be one-time events, nine quarters in a row. Were these really one-time events, or were they more appropriately treated as ordinary expenses? Given the available leeway in managing earnings, the justified P/E multiple becomes difficult to gauge.

Another confounding factor in the use of P/E ratios is related to the business cycle. We were careful in deriving the DDM to define earnings as being net of economic depreciation, that is, the maximum flow of income that the firm could pay out without depleting its productive capacity. But reported earnings are computed in accordance with GAAP and need not correspond to economic earnings. Beyond this complication, notions of a normal or justified P/E ratio, as in Equation 18.7 or 18.8, assume implicitly that earnings rise at a constant rate, or, put another way, on a smooth trend line. In contrast, reported earnings can fluctuate dramatically around a trend line over the course of the business cycle.

Another way to make this point is to note that the "normal" P/E ratio predicted by Equation 18.8 is the ratio of today's price to the trend value of future earnings,  $E_{1}$ . This is called the forward P/E. The P/E ratio reported in the financial press, by contrast, is the ratio of price to the most recent past accounting earnings and is called the trailing P/E. Current earnings can differ considerably from their trend values. Because ownership of stock conveys the right to future as well as current earnings, the trailing P/E ratio can vary substantially over the business cycle.

Because the market values the entire stream of future dividends, when earnings are temporarily depressed, the P/E ratio should tend to be high—that is, the denominator of the ratio responds more sensitively to the business cycle than the numerator. Conversely, when earnings are temporarily high, the P/E ratio will be depressed, as price increases less dramatically than earnings.

Figure 18.4 graphs the earnings per share of PepsiCo and Consolidated Edison since 2001, and Figure 18.5 plots their P/E ratios. When earnings depart from the trend line, the P/E ratio does in fact move in the opposite direction. For example, when Con Ed's earnings fell in 2001-2003, its P/E ratio rose. Similarly, when Pepsi's earnings per share increased at an above-trend rate of  $17\%$  between 2008 and 2009, its P/E fell.

This example shows why analysts must be careful in using P/E ratios. There is no way to say the P/E ratio is overly high or low without referring to the company's long-run growth prospects, as well as to current earnings per share relative to the long-run trend line.

Nevertheless, Figures 18.4 and 18.5 demonstrate a clear relation between P/E ratios and growth. Despite considerable short-run fluctuations, PepsiCo's EPS clearly trended upward over the period. Con Ed's earnings were nearly flat. PepsiCo's growth prospects are reflected in its consistently higher P/E multiple.

This analysis suggests that P/E ratios should vary across industries, and in fact they do. Figure 18.6 shows P/E ratios for a sample of industries. Notice that some of the industries with the highest multiples—such as online retail or biotech—have attractive investment opportunities and relatively high growth rates, whereas the industries with the lowest ratios—for example, steel, chemicals, or tobacco—are in more mature or less profitable industries with limited growth opportunities. The relationship between P/E and growth is not perfect, which is not surprising in light of the pitfalls discussed in this section, but as a general rule, the P/E multiple does appear to track growth opportunities.

# The Cyclically Adjusted P/E Ratio

To avoid the problems associated with using P/E ratios over different phases of the business cycle, Robert Shiller suggests a "cyclically adjusted" P/E ratio (CAPE). His idea is to divide the stock price by an estimate of sustainable long-term earnings rather than current earnings. He proposes using average inflation-adjusted earnings over an extended period, for example, 10 years.

Figure 18.7 shows both the CAPE and the conventional P/E ratio for the S&P 500. Notice that the plot of CAPE is smoother than that of the conventional P/E, as it abstracts from short-term and presumably temporary economic conditions. Look at the 1980s, for example, where the actual P/E ratio "vibrates" around the CAPE. The difference between them is most acute at the height of the financial crisis of 2008-2009. Earnings fell sharply, bottoming out in March 2009; stock prices also fell, but far less precipitously, as investors forecast that the earnings decline would not be permanent. As a result, the P/E ratio of the S&P 500


![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/3cc9177dcba7bb0d9e8e8e345d06d17a4014c2f0bd9e2812f65127363e4cd461.jpg) skyrocketed. In contrast, the CAPE, which compares prices to a full decade of earnings, initially fell along with stock prices in 2008 and then rose far less dramatically, increasing from 13.3 in March 2009 to 20.3 by the end of the year.
Figure 18.4 Earnings growth for two companies

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/fecd02a1e353d4722b20b51b578b0c35148bac9ce07be180db3235808565ac96.jpg)
Figure 18.5 Price—earnings ratios

Figure 18.6 Forward P/E ratios for different industries
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/8995da204b78448c525dd5f2215a459b25cc85956930d48a11c0a65d7a5c4095.jpg)
Source: Web site of Prof. Aswath Damodaran, pages.stern.nyu.edu/~adamodar/, August 19, 2021.


Because it uses a more reliable estimate of sustainable earnings, Shiller argues that CAPE is a better gauge of potential market mispricing. Consistent with this view, there seems to be a strong inverse correlation between the CAPE and market returns over the following decade, suggesting that a high CAPE may signify an overpriced market.

Figure 18.7 CAPE versus conventional P/E ratio for the S&P 500
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/2c5a532fff49720776212aeff402418bfab63f3e0348674811a5cc504c2393a1.jpg)
Source: Graph constructed using data obtained from Prof. Robert Shiller's Web site, www.econ.yale.edu/~shiller/data.htm

# Combining P/E Analysis and the DDM

Some analysts use P/E ratios in conjunction with earnings forecasts to estimate the price of a stock at an investor's horizon date. The Toyota analysis in Figure 18.2 shows that Value Line forecast a P/E ratio for 2025 of 12. EPS for 2025 was forecast at 16.35, implying a price in 2025 of 12 \times 16.35 = 196.20. Given this estimate for the 2025 sales price, we would compute intrinsic value in 2021 as

$$
V _ {2 0 2 1} = \frac {4 . 4 5}{1 . 0 8 4} + \frac {4 . 8 1}{(1 . 0 8 4) ^ {2}} + \frac {5 . 1 8}{(1 . 0 8 4) ^ {3}} + \frac {5 . 5 5 + 1 9 6 . 2 0}{(1 . 0 8 4) ^ {4}} = \$ 1 5 8. 3 8
$$

# Other Comparative Valuation Ratios

The price-earnings ratio is an example of a comparative valuation ratio. Such ratios are used to assess the valuation of one firm versus another based on a fundamental indicator such as earnings. For example, an analyst might compare the P/E ratios of two firms in the same industry to test whether the market is valuing one firm "more aggressively" than the other. Other comparative ratios that are commonly used include the price-to-book ratio, the price-to-cash-flow ratio, and the price-to-sales ratio.

Price-to-Book Ratio This is the ratio of price per share divided by book value per share. As we noted earlier, some analysts view book value as a useful measure of value and therefore treat the ratio of price to book value as an indicator of how aggressively the market values the firm.

Price-to-Cash-Flow Ratio Earnings as reported on the income statement can be affected by the company's choice of accounting practices and thus are commonly viewed as subject to some imprecision and even manipulation. In contrast, cash flow—which tracks cash actually flowing into or out of the firm—is less affected by accounting decisions. As a result, some analysts prefer to use the ratio of price to cash flow per share rather than price to earnings per share. Some analysts use operating cash flow when calculating this ratio; others prefer "free cash flow," that is, operating cash flow net of new investment.

Price-to-Sales Ratio Many start-up firms have no earnings. As a result, the price-earnings ratio for these firms is meaningless. The price-to-sales ratio (the ratio of stock price to the annual sales per share) may be used as an alternative valuation benchmark for these firms. Of course, price-to-sales ratios can vary markedly across industries because profit margins vary widely.

Be Creative Sometimes a standard valuation ratio simply will not be available, and you will have to devise your own. In the 1990s, some analysts valued retail Internet firms based on the number of hits their Web sites received. As it turns out, they valued these firms using too-generous "price-to-hits" ratios. Nevertheless, in a new investment environment, these analysts used the information available to them to devise the best valuation tools they could.

Figure 18.8 presents the behavior of several valuation measures. While the levels of these ratios differ considerably, for the most part, they are clearly correlated, with upturns and downturns generally occurring at the same times.

Figure 18.8 Valuation ratios for the S&P 500
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/7414449bfbe914a05ce9b395d1250c29b3b24086dd87d9a8c4a9bd0582fe7379.jpg)
Source: Robert J. Shiller, Irrational Exhuberance, 3rd edition, Princeton University Press, 2015, updated data downloaded from www.multpl.com.

# 18.5 Free Cash Flow Valuation Approaches

An alternative approach to the dividend discount model values the firm using free cash flow, that is, cash flow available to the firm or its equityholders net of capital expenditures. This approach is particularly useful for firms that pay no dividends, for which the dividend discount model would be difficult to implement. But free cash flow models may be applied to any firm and can provide useful insights about firm value beyond the DDM.

One approach is to discount the free cash flow for the firm (FCFF) at the weighted-average cost of capital to find the value of the entire firm. Subtracting the value of debt results in the value of equity. Another approach is to focus from the start on the free cash flow to equityholders (FCFE), discounting those directly at the cost of equity to obtain the market value of equity.

The free cash flow to the firm is the after-tax cash flow generated by the firm's operations, net of investments in fixed as well as working capital. It includes cash flows available to both debt- and equityholders and equals:

$\mathrm{FCFF} = \mathrm{EBIT}(1 - t_c) + \mathrm{Depreciation} - \mathrm{Capital expenditures} - \mathrm{Increase in NWC}$  (18.9) where


EBIT = earnings before interest and taxes

$t_c =$  the corporate tax rate

$\mathrm{NWC} =$  net working capital

Alternatively, we can focus on cash flow available to equityholders. This will differ from free cash flow to the firm by after-tax interest expenditures, as well as by cash flow associated with net issuance or repurchase of debt (i.e., principal repayments minus proceeds from issuance of new debt).

$\mathrm{FCFE} = \mathrm{FCFF} - \mathrm{Interest~expense}\times (1 - t_c) + \mathrm{Increases~in~net~debt}$  (18.10)

A free cash flow to the firm valuation model discounts year-by-year cash flows plus an estimate of terminal value,  $V_{T}$ . In Equation 18.11, we use the constant-growth model to estimate terminal value and discount at the weighted-average cost of capital.

Firm value  $= \sum_{t = 1}^{T}\frac{\mathrm{FCFF}_t}{(1 + \mathrm{WACC})^t} +\frac{V_T}{(1 + \mathrm{WACC})^T},$  where  $V_{T} = \frac{\mathrm{FCFF}_{T + 1}}{\mathrm{WACC} - g}$  (18.11)

To find equity value, we subtract the market value of outstanding debt from the derived value of the firm.

Alternatively, we can discount free cash flows to equity (FCFE) at the cost of equity,  $k_{E}$ .

Intrinsic value of equity  $= \sum_{t = 1}^{T}\frac{\mathrm{FCFE}_t}{(1 + k_E)^t} +\frac{E_T}{(1 + k_E)^T},$  where  $E_{T} = \frac{\mathrm{FCFE}_{T + 1}}{k_{E} - g}$  (18.12)

As in the dividend discount model, free cash flow models use a terminal value to avoid adding the present values of an infinite sum of cash flows. That terminal value may be the present value of a constant-growth perpetuity (as in the formulas above) or it may be based

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td><td>H</td><td>I</td><td>J</td><td>K</td><td>L</td><td>M</td></tr><tr><td>1</td><td></td><td></td><td>2021</td><td>2022</td><td>2023</td><td>2024</td><td>2025</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>2</td><td>A. Input Data</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>3</td><td>P/E</td><td></td><td>12.50</td><td>12.38</td><td>12.25</td><td>12.13</td><td>12.00</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>4</td><td>Cap spending/share</td><td></td><td>25.80</td><td>8.50</td><td>14.35</td><td>20.20</td><td>26.05</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>5</td><td>LT Debt ($M)</td><td></td><td>109,000</td><td>26,000</td><td>53,833</td><td>81,667</td><td>109,500</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>6</td><td>Shares (million)</td><td></td><td>1,375</td><td>1,880</td><td>1,707</td><td>1,533</td><td>1,360</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>7</td><td>EPS</td><td></td><td>15.15</td><td>7.60</td><td>10.52</td><td>13.43</td><td>16.35</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>8</td><td>Working capital</td><td></td><td>7,000</td><td>3,000</td><td>5,000</td><td>7,000</td><td>9,000</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>9</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>10</td><td colspan="2">B. Cash Flow Calculations</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>11</td><td>Profits ($M, after tax)</td><td></td><td>21,100</td><td>14,325</td><td>17,083</td><td>19,842</td><td>22,600</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>12</td><td>Interest ($M, after tax)</td><td></td><td>2,153</td><td>514</td><td>1,063</td><td>1,613</td><td>2,163</td><td colspan="6">= (1-tax_rate) × r_debt × LT debt</td></tr><tr><td>13</td><td>Chg working cap ($M)</td><td></td><td></td><td>-4,000</td><td>2,000</td><td>2,000</td><td>2,000</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>14</td><td>Depreciation ($M)</td><td></td><td>16,000</td><td>18,000</td><td>17,833</td><td>17,667</td><td>17,500</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>15</td><td>Cap Spending ($M)</td><td></td><td></td><td>15,980</td><td>22,463</td><td>28,945</td><td>35,428</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>16</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td colspan="6">Terminal value</td></tr><tr><td>17</td><td>FCFF ($M)</td><td></td><td></td><td>20,859</td><td>11,517</td><td>8,176</td><td>4,835</td><td>332,621</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>18</td><td>FCFE ($M)</td><td></td><td></td><td>-62,655</td><td>38,287</td><td>34,396</td><td>30,505</td><td>210,868</td><td colspan="5">assumes fixed debt ratio after 2023</td></tr><tr><td>19</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>20</td><td colspan="2">C. Discount Rate Calculations</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>21</td><td>Current beta</td><td>0.8</td><td></td><td></td><td></td><td></td><td></td><td></td><td colspan="5">from Value Line</td></tr><tr><td>22</td><td>Unlevered beta</td><td>0.603</td><td></td><td></td><td></td><td></td><td></td><td></td><td colspan="5">current beta/[1 + (1-tax)*debt/equity]</td></tr><tr><td>23</td><td>Terminal growth</td><td>0.05</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>24</td><td>tax_rate</td><td>0.21</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>25</td><td>r_debt</td><td>0.025</td><td></td><td></td><td></td><td></td><td></td><td></td><td colspan="5">YTM on LT debt</td></tr><tr><td>26</td><td>Risk-free rate</td><td>0.02</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>27</td><td>Market risk prem</td><td>0.08</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>28</td><td>MV equity</td><td></td><td>263,750</td><td></td><td></td><td></td><td>271,200</td><td></td><td colspan="5">Row 3 × Row 11</td></tr><tr><td>29</td><td>Debt/Value</td><td></td><td>0.2924</td><td>0.2912</td><td>0.2900</td><td>0.2888</td><td>0.2876</td><td></td><td colspan="5">linear trend from initial to final value</td></tr><tr><td>30</td><td>Levered beta</td><td></td><td>0.8000</td><td>0.7989</td><td>0.7977</td><td>0.7966</td><td>0.7955</td><td></td><td colspan="5">unlevered beta × [1 + (1-tax)*debt/equity]</td></tr><tr><td>31</td><td>k_equity</td><td></td><td>0.0840</td><td>0.0839</td><td>0.0838</td><td>0.0837</td><td>0.0836</td><td>0.0836</td><td colspan="5">from CAPM and levered beta</td></tr><tr><td>32</td><td>WACC</td><td></td><td>0.0652</td><td>0.0652</td><td>0.0652</td><td>0.0652</td><td>0.0653</td><td>0.0653</td><td colspan="5">(1-t)*r_debt*D/V + k_equity*(1-D/V)</td></tr><tr><td>33</td><td>PV factor for FCFF</td><td></td><td>1.0000</td><td>0.9388</td><td>0.8813</td><td>0.8273</td><td>0.7766</td><td>0.7766</td><td colspan="5">Discount each year at WACC</td></tr><tr><td>34</td><td>PV factor for FCFE</td><td></td><td>1.0000</td><td>0.9226</td><td>0.8512</td><td>0.7855</td><td>0.7248</td><td>0.7248</td><td colspan="5">Discount each year at k_equity</td></tr><tr><td>35</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>36</td><td>D. Present Values</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>Intrinsic val</td><td>Equity val</td><td colspan="3">Intrin/share</td></tr><tr><td>37</td><td>PV(FCFF)</td><td></td><td></td><td>19,581</td><td>10,150</td><td>6,764</td><td>3,755</td><td>258,318</td><td></td><td>298,568</td><td>189,568</td><td colspan="2">137.87</td></tr><tr><td>38</td><td>PV(FCFE)</td><td></td><td></td><td>-57,805</td><td>32,592</td><td>27,017</td><td>22,112</td><td>152,847</td><td></td><td>176,763</td><td>176,763</td><td colspan="2">128.56</td></tr></table>

# Spreadsheet 18.2

Free cash flow valuation of Toyota on a multiple of EBIT, book value, earnings, or free cash flow. As a general rule, estimates of intrinsic value depend critically on terminal value.


Spreadsheet 18.2 presents a free cash flow valuation of Toyota using the data supplied by Value Line in Figure 18.2. We start with the free cash flow to the firm approach given in Equation 18.9. Panel A of the spreadsheet lays out values supplied by Value Line for 2021, 2022, and 2025. Entries for middle years are interpolated from beginning and final values. Panel B calculates free cash flow. The sum of after-tax profits in row 11 (from Value Line) plus after-tax interest payments in row 12 [i.e., interest expense  $\times (1 - t_c)]$  equals EBIT  $(1 - t_{c})$ . In row 13 we subtract the change in net working capital, in row 14 we add back depreciation, and in row 15 we subtract capital expenditures. The result in row 17 is the free cash flow to the firm, FCFF, for each year between 2022 and 2025.

To find the present value of these cash flows, we discount at WACC, which is calculated in Panel C. WACC is the weighted average of the after-tax cost of debt and the cost of equity in each year. When computing WACC, we must account for the change in leverage forecast by Value Line. To compute the cost of equity, we will use the CAPM as in our earlier (dividend discount model) valuation exercise, but accounting for the fact that equity beta will decline each year as the firm reduces leverage.[11]


To find Toyota's cost of debt, we note that its long-term bonds were rated A1 by Moody's in 2021 and that yields to maturity on this quality debt at the time were about  $2.5\%$ . Toyota's debt-to-value ratio (assuming its debt is selling near par value) is computed in row 29. In 2021, the ratio was .2924. Based on Value Line forecasts, it will fall to .2876 by 2025. We interpolate the debt-to-value ratio for the intermediate years. WACC is computed in row 32. WACC increases very slightly over time as leverage declines between 2021 and 2025. The present value factor for cash flows accruing in each year is the previous year's factor divided by  $(1 + \mathrm{WACC})$  for that year. The present value of each cash flow (row 37) is the free cash flow times the cumulative discount factor.

The terminal value of the firm (cell H17) is computed from the constant-growth model as  $\mathrm{FCFF}_{2025} \times (1 + g) / (\mathrm{WACC}_{2025} - g)$ , where  $g$  (cell B23) is the assumed value for the steady growth rate. We assume in the spreadsheet that  $g = .05$ , in line with the long-run growth rate used in Spreadsheet 18.1. Terminal value is also discounted back to 2021 (cell H37), and the intrinsic value of the firm is thus found as the sum of discounted free cash flows between 2022 and 2025. plus the discounted terminal value. Finally, the value of debt in 2021 is subtracted from firm value to arrive at the intrinsic value of equity (cell K37), and value per share is calculated in cell L37 as equity value divided by number of shares.

The free cash flow to equity approach yields a similar intrinsic value for the stock. Free cash flow to equity (row 18) is obtained from FCFF by subtracting after-tax interest expense and adding net new debt issues.[12] FCFE is discounted at the equity rate. Like WACC, the cost of equity changes each period as leverage changes. Although Value Line forecasts that Toyota will be issuing debt, it also projects a steady increase in the P/E ratio and therefore the market value of equity. Therefore, its forecast of the debt-to-value ratio declines a bit over this period. The present value factor for equity cash flows is presented in row 34. Equity value is reported in cell J38, which is put on a per-share basis in cell L38.

Spreadsheet 18.2 is available in Connect or through your course instructor.

# Comparing the Valuation Models

In principle, the free cash flow approach is fully consistent with the dividend discount model and should provide the same estimate of intrinsic value. This was demonstrated in two famous papers by Modigliani and Miller.[13] However, in practice, you will find that values from these models may differ, sometimes substantially. This is due to the fact that in practice, analysts are always forced to make simplifying assumptions. For example, how long will it

Call  $\beta_{\mathrm{L}}$  the firm's equity beta at the initial level of leverage as provided by Value Line. Equity betas reflect both business risk and financial risk. When a firm changes its capital structure (debt/equity mix), it changes financial risk, and therefore equity beta changes. How should we recognize the change in financial risk? As you may remember from an introductory corporate finance class, you must first unleverage beta. This leaves us with business risk. We use the following formula to find unleveraged beta,  $\beta_{\mathrm{U}}$  (where  $D / E$  is the firm's current debt-equity ratio):

$$
\beta_ {\mathrm {U}} = \frac {\beta_ {\mathrm {L}}}{1 + (D / E) \left(1 - t _ {c}\right)}
$$

Then, we re-leverage beta in any particular year using the forecast capital structure for that year (which reintroduces the financial risk associated with that year's capital structure):

$$
\beta_ {\mathrm {L}} = \beta_ {\mathrm {U}} [ 1 + (D / E) (1 - t _ {c}) ]
$$

We assume that after 2025, as Toyota reinvests earnings and thereby increases equity, it will issue just enough debt to maintain its debt-to-value ratio at a fixed level. This assumption is consistent with the assumption of a stable growth rate and fixed value of WACC after 2025. If leverage were not fixed, then WACC also would be changing. Similarly, the use of the sustainable growth rate,  $g = b \times \mathrm{ROE}$ , in the DDM also implicitly assumes a fixed leverage ratio.
Franco Modigliani and M. Miller, "The Cost of Capital, Corporation Finance, and the Theory of Investment," American Economic Review, June 1958; and Franco Modigliani and M. Miller, "Dividend Policy, Growth, and the Valuation of Shares," Journal of Business, October 1961.

take the firm to enter a constant-growth stage? How should depreciation best be treated? What is the best estimate of ROE? Answers to questions like these can have a big impact on value, and it is not always easy to maintain consistent assumptions across the models.

We have now valued Toyota using several approaches, with estimates of intrinsic value as follows:

<table><tr><td>Model</td><td>Intrinsic Value</td></tr><tr><td>Two-stage dividend discount model</td><td>140.41</td></tr><tr><td>DDM with earnings multiple terminal value</td><td>158.38</td></tr><tr><td>Three-stage DDM</td><td>157.00</td></tr><tr><td>Free cash flow to the firm</td><td>137.87</td></tr><tr><td>Free cash flow to equity</td><td>128.56</td></tr><tr><td>Market price (from Value Line)</td><td>152.23</td></tr></table>

The free cash flow to equity model produces the most conservative estimate in this case, suggesting that intrinsic value is about  $15\%$  below the stock price. The two-stage DDM using an earnings multiple for terminal value produces the most aggressive estimate of intrinsic value, about  $4\%$  above market price. The other estimates are scattered more tightly but still with estimates on either side of market price. So there is considerable disagreement in these signals about whether Toyota's market valuation is too optimistic or pessimistic relative to its intrinsic value.

What should we make of these differences? There is an important lesson here. Models are all unavoidably simplified versions of the real world. The hard part in using them well is not in performing the calculations. The challenge is ensuring that your inputs make sense. We've already mentioned the importance of sensitivity analysis. You also need to think more broadly about reality tests. Is the sustainable growth rate plausible? Is the date at which the firm is assumed to settle down to a trend growth trajectory reasonable? Are the final values for ROE and plowback consistent and credible? These questions require good judgment rather than just technical skills.

On balance, therefore, this valuation exercise suggests that finding bargains is not generally going to be easy. Although applying these models is straightforward, establishing proper inputs is not. This should not be surprising. In even a moderately efficient market, finding profit opportunities will be more involved than analyzing financial data for a few hours. These models are extremely useful to analysts, however, because they provide ballpark estimates of intrinsic value. More than that, they force rigorous thought about underlying assumptions and highlight the variables with the greatest impact on value and the greatest payoff to further analysis.

# The Problem with DCF Models

Our estimates of Toyota's intrinsic value are all based on discounted cash flow (DCF) models, in which we calculate the present value of forecasted cash flows and a terminal sales price at some future date. It is clear from our calculations that most of the action in these models is in the terminal value and that this value can be highly sensitive to even small changes in some input values (see, e.g., Concept Check 18.4). Therefore, you must recognize that DCF valuation estimates are almost always going to be imprecise. Growth opportunities and future growth rates are especially hard to pin down.

For this reason, many value-oriented investors employ a hierarchy of valuation. They view the most reliable components of value as the items on the balance sheet that, in principle, can be sold and for which estimates of market value are readily available. Real estate, plant, and equipment would fall in this category.

A somewhat less reliable component of value is the economic profit on assets already in place. For example, a company like Apple earns a far higher ROE on its investments in new iPhones than its cost of capital. The present value of these "economic profits," or economic value added, $^{14}$  is a major component of Apple's market value. This component of value is less certain than its balance sheet assets, however, because there is always a concern that new competitors will enter the market, force down prices and profit margins, and reduce the return on Apple's investments. Thus, one needs to carefully assess the barriers to entry that protect Apple's pricing and profit margins. We noted some of these barriers in the last chapter, where we discussed the role of industry analysis, market structure, and competitive position (see Section 17.6).


Finally, the least reliable components of value are growth opportunities, the purported ability of firms like Apple to invest in positive-NPV ventures that contribute to high market valuations today. Value investors don't deny that such opportunities exist, but they are skeptical that precise values can be attached to them and, therefore, tend to be less willing to make investment decisions that depend on the value of those opportunities. We saw earlier that a good chunk of the market's assessment of Facebook's growth opportunities disappeared in one day when it reported disappointing earnings growth.

# 18.6 The Aggregate Stock Market

The most popular approach to valuing the overall stock market is the earnings multiplier approach applied at the aggregate level. The first step is to forecast corporate profits for the coming period. Then we derive an estimate of the earnings multiplier, the aggregate P/E ratio, based on a forecast of long-term interest rates. The product of the two forecasts is the estimate of the end-of-period level of the market.

The forecast of the P/E ratio of the market is sometimes derived from a graph similar to that in Figure 18.9, which plots the earnings yield (earnings per share divided by price per share, the reciprocal of the P/E ratio) of the S&P 500 and the yield to maturity on 10-year Treasury bonds. The two series clearly move together over time and suggest that this relationship and the current yield on 10-year Treasury bonds could help in forecasting the earnings yield on the S&P 500. Given the earnings yield, a forecast of earnings could be used to predict the level of the S&P in some future period. Let's illustrate with a simple example.

# Example 18.8 Forecasting the Aggregate Stock Market

In 2021, the forecast for 12-month earnings per share for the S&P 500 portfolio was about 196.36. The 10-year Treasury bond yield was about 1.75\%. As a first approach, we might posit that the spread between the earnings yield and the Treasury yield, which had averaged about 2\% in the previous three years, will remain at that level by the end of the year. Given a Treasury yield of 1.75\%, this would imply an earnings yield for the S&P of 3.75\%, and a P/E ratio of 1/.0375 = 26.67. Our forecast for the level of the S&P index would then be 196.36 \times 26.67 = 5,236. Given a current value for the S&P 500 of 4,420, this would imply a 1-year capital gain on the index of 816/4,420 = 18.5\%.

Of course, there is uncertainty regarding all three inputs into this analysis: the actual earnings on the S&P 500 stocks, the level of Treasury yields at year-end, and the spread between the Treasury yield and the earnings yield. One would wish to perform sensitivity or scenario analysis to examine the impact of changes in all of these variables. To illustrate, consider Table 18.4, which shows the possible effects of variation in the Treasury bond yield. The scenario analysis shows that the forecast level of the stock market varies inversely and with dramatic sensitivity to interest rate changes.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/f8f765c7b9c81291b8ae8419d044f9b2884594c7ffabdb1a92fc477b85e9ab58.jpg)
Figure 18.9 Earnings yield of S&P 500 versus 10-year Treasury-bond yield

Table 18.4
S&P 500 index forecasts under various scenarios

<table><tr><td></td><td>Pessimistic Scenario</td><td>Most Likely Scenario</td><td>Optimistic Scenario</td></tr><tr><td>Treasury bond yield</td><td>2.25\%</td><td>1.75\%</td><td>1.25\%</td></tr><tr><td>Earnings yield</td><td>4.25\%</td><td>3.75\%</td><td>3.25\%</td></tr><tr><td>Resulting P/E ratio</td><td>23.53</td><td>26.67</td><td>30.77</td></tr><tr><td>EPS forecast</td><td>$196.36</td><td>$196.36</td><td>196.36</td></tr><tr><td>Forecast for S&amp;P 500</td><td>4,620</td><td>5,236</td><td>6,042</td></tr></table>

Forecast for the earnings yield on the S&P 500 equals Treasury bond yield plus  $2.0\%$ . The P/E ratio is the reciprocal of the forecast earnings yield.

Some analysts use an aggregate version of the dividend discount model rather than an earnings multiplier approach. All of these models, however, rely heavily on forecasts of such macroeconomic variables as GDP, interest rates, and the rate of inflation, which are difficult to predict accurately.

Because stock prices reflect expectations of future dividends, which are tied to the economic fortunes of firms, it is not surprising that the performance of a broad-based stock index like the S&P 500 is used as a leading economic indicator, that is, a predictor of the performance of the aggregate economy. Stock prices are viewed as embodying consensus forecasts of economic activity and are assumed to move up or down in anticipation of movements in the economy. The government's index of leading economic indicators, which is taken to predict the progress of the business cycle, is made up in part of recent stock market performance. However, the predictive value of the market is far from perfect. A well-known joke, often attributed to Paul Samuelson, is that the market has forecast eight of the last five recessions.

1. One approach to firm valuation is to focus on the firm's book value, either as it appears on the balance sheet or as adjusted to reflect current replacement cost of assets or liquidation value. Another approach is to focus on the present value of expected future dividends.
2. The dividend discount model states that the price of a share of stock should equal the present value of all future dividends per share, discounted at an interest rate commensurate with its risk.
3. Dividend discount models give estimates of the intrinsic value of a stock. If price does not equal intrinsic value, the rate of return will differ from the equilibrium return based on the stock's risk. The forecasted return will depend on the rate at which the stock price is predicted to revert to its intrinsic value.
4. The constant-growth version of the DDM asserts that if dividends are expected to grow at a constant rate forever, the intrinsic value of the stock is determined by the formula

$$
V _ {0} = \frac {D _ {1}}{k - g}
$$

This version of the DDM assumes a constant value for  $g$ . There are more sophisticated multistage versions of the model for more-complex environments. When the constant-growth assumption is reasonably satisfied and the stock is selling for its intrinsic value, the formula can be inverted to infer the market capitalization rate for the stock:

$$ k = \frac {D _ {1}}{P _ {0}} + g
$$

5. The constant-growth dividend discount model is best suited for firms that are expected to exhibit stable growth rates over the foreseeable future. In reality, however, firms progress through life cycles. In early years, attractive investment opportunities are ample and the firm responds with high plowback ratios and rapid dividend growth. Eventually, however, growth rates level off to more sustainable values. Three-stage growth models are well suited to such a pattern. These models allow for an initial period of rapid growth, a final period of steady dividend growth, and a middle, or transition, period in which the dividend growth rate declines from its initial high rate to the lower sustainable rate.
6. Stock market analysts devote considerable attention to a company's price-to-earnings ratio. The P/E ratio reflects the market's assessment of the firm's growth opportunities. Firms with no growth opportunities should have a P/E ratio that is the reciprocal of the capitalization rate,  $k$ . As growth opportunities become a progressively more important component of the total value of the firm, the P/E ratio will increase.
7. The expected growth rate of earnings is related both to the firm's expected profitability and to its dividend policy. The relationship can be expressed as

$$ g = (\text {R O E} \times (1 - \text {D i v i d e n d p a y o u t r a t i o})
$$

8. You can relate any DDM to a simple capitalized earnings model by comparing the expected ROE on future investments to the market capitalization rate,  $k$ . If the two rates are equal, then the stock's intrinsic value equals expected earnings per share (EPS) divided by  $k$ .
9. Many analysts form their estimates of a stock's value by multiplying their forecast of next year's EPS by a predicted P/E multiple. Some analysts mix the P/E approach with the dividend discount model. They use an earnings multiplier to forecast the terminal value of shares at a future date, and add the present value of that terminal value to the present value of all interim dividend payments.
10. The free cash flow approach is the one used most often in corporate finance. The analyst first estimates the value of the firm as the present value of expected future free cash flows to the entire firm and then subtracts the value of all claims other than equity. Alternatively, free cash flows to equity can be discounted at a rate appropriate to the risk of the stock.
11. The models presented in this chapter can be used to explain and forecast the behavior of the aggregate stock market. The key macroeconomic variables that determine the level of stock prices in the aggregate are interest rates and corporate profits.

# SUMMARY

# KEY TERMS book value

liquidation value replacement cost
Tobin's  $q$ intrinsic value (of a share)
market capitalization rate dividend discount model (DDM)

constant-growth DDM dividend payout ratio
plowback ratio earnings retention ratio
sustainable growth rate present value of growth opportunities (PVGO)

two-stage dividend discount model price-earnings multiple
earnings management

# KEY EQUATIONS

Intrinsic value:  $V_{0} = \frac{D_{1}}{1 + k} + \frac{D_{2}}{(1 + k)^{2}} + \dots + \frac{D_{H} + P_{H}}{(1 + k)^{H}}$

Constant-growth DDM:  $V_{0} = \frac{D_{1}}{k - g}$

Growth opportunities: Price  $= \frac{E_1}{k} +$  PVGO

Determinant of  $P / E$  ratio:  $\frac{P_0}{E_1} = \frac{1}{k}\left(1 + \frac{\mathrm{PVGO}}{E_1 / k}\right)$

Free cash flow to the firm:

$\mathrm{FCFF} = \mathrm{EBIT}(1 - t_c) + \mathrm{Depreciation} - \mathrm{Capital~expenditures} - \mathrm{Increases~in~NWC}$

Free cash flow to equity: FCFE = FCFF - Interest expense  $\times (1 - t_{c}) +$  Increases in net debt

# PROBLEM SETS

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/004cea65f06f6785fe10101b1f6984a78378f2866d7d512003e9f319510a891d.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/f7e14e2f5a091781dcd92cf1c7226b4dbcf89dadbd72ba1fe1854fb2c6ffec08.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/5f805bf8c24955fbdc39090abbfd648feccd379a2e289a498c1f2641a1c1ee93.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/ea65b2ff87b3a56b751fa4261bc545987071798bb87e359c7a6bf46ce8b89245.jpg)

1. In what circumstances would you choose to use a dividend discount model rather than a free cash flow model to value a firm?

2. In what circumstances is it most important to use multistage dividend discount models rather than constant-growth models?

3. If a security is underpriced (i.e., intrinsic value  $>$  price), then what is the relationship between its market capitalization rate and its expected rate of return?

4. Deployment Specialists pays a current (annual) dividend of 1.00 and is expected to grow at 20\% for two years and then at 4\% thereafter. If the required return for Deployment Specialists is 8.5\%, what is the intrinsic value of its stock?

5. Jand, Inc., currently pays a dividend of $1.22, which is expected to grow indefinitely at 5\%. If the current value of Jand's shares based on the constant-growth discount model is $32.03, what is the required rate of return?

6. A firm pays a current dividend of $1.00, which is expected to grow at a rate of 5\% indefinitely. If current value of the firm's shares is $35.00, what is the required return based on the constant-growth dividend discount model (DDM)?

7. Tri-coat Paints has a current market value of $41 per share with earnings of $3.64. What is the present value of its growth opportunities (PVGO) if the required return is 9\%?

8. a. Computer stocks currently provide an expected rate of return of 16\%. MBI, a large computer company, will pay a year-end dividend of $2 per share. If the stock is selling at $50 per share, what must be the market's expectation of the dividend growth rate?

b. If dividend growth forecasts for MBI are revised downward to  $5\%$  per year, what will happen to the price of MBI stock?
c. What (qualitatively) will happen to the company's price-earnings ratio?

9. a. MF Corp. has an ROE of 16\% and a plowback ratio of 50\%. If the coming year's earnings are expected to be 2 per share, at what price will the stock sell? The market capitalization rate is 12\%.

$b$ . What price do you expect MF shares to sell for in three years?

10. The market consensus is that Analog Electronic Corporation has an ROE = 9\% and a beta of 1.25 and plans to maintain indefinitely its traditional plowback ratio of 2/3. This year's earnings were 3 per share. The annual dividend was just paid. The consensus estimate of the coming year's market return is 14\%, and T-bills currently offer a 6\% return.

$a$ . Find the price at which Analog stock should sell.
$b$  Calculate the P/E ratio.
$c$ . Calculate the present value of growth opportunities.
d. Suppose your research convinces you Analog will announce momentarily that it will immediately reduce its plowback ratio to  $1/3$ . Find the intrinsic value of the stock.
e. The market is still unaware of this decision. Explain why  $V_{0}$  no longer equals  $P_{0}$  and why  $V_{0}$  is greater or less than  $P_{0}$ .

11. Sisters Corp. expects to earn 6 per share next year. The firm's ROE is 15\% and its plowback ratio is 60\%. If the firm's market capitalization rate is 10\%, what is the present value of its growth opportunities?
 12. Eagle Products' EBIT is $300, its tax rate is 21\%, depreciation is $20, capital expenditures are $60, and the planned increase in net working capital is $30. What is the free cash flow to the firm?
 13. FinCorp's free cash flow to the firm is reported as $205 million. The firm's interest expense is $22 million. Assume the corporate tax rate is 21\% and the net debt of the firm increases by 3 million. What is the market value of equity if the FCFE is projected to grow at 3\% indefinitely and the cost of equity is 12\%?
14. The FI Corporation's dividends per share are expected to grow indefinitely by  $5\%$  per year.

a. If this year's year-end dividend is 8 and the market capitalization rate is 10\% per year, what must the current stock price be according to the DDM?
b. If the expected earnings per share are 12, what is the implied value of the ROE on future investment opportunities?
c. How much is the market paying per share for growth opportunities (i.e., for an ROE on future investments that exceeds the market capitalization rate)?

15. The stock of Nogro Corporation is currently selling for $10 per share. Earnings per share in the coming year are expected to be $2. The company has a policy of paying out 50\% of its earnings each year in dividends. The rest is retained and invested in projects that earn a 20\% rate of return per year. This situation is expected to continue indefinitely.

a. Assuming the current market price of the stock reflects its intrinsic value as computed using the constant-growth DDM, what rate of return do Nogro's investors require?
$b$ . By how much does its value exceed what it would be if all earnings were paid as dividends and nothing were reinvested?
c. If Nogro were to cut its dividend payout ratio to  $25\%$ , what would happen to its stock price?
$d$ . What if Nogro eliminated the dividend?

16. The risk-free rate of return is  $8\%$ , the expected rate of return on the market portfolio is  $15\%$ , and the stock of Xyrong Corporation has a beta coefficient of 1.2. Xyrong pays out  $40\%$  of its earnings in dividends, and the latest earnings announced were $10 per share. Dividends were just paid and are expected to be paid annually. You expect that Xyrong will earn an ROE of  $20\%$  per year on all reinvested earnings forever.

a. What is the intrinsic value of a share of Xyrong stock?
b. If the market price of a share is currently 100, and you expect the market price to be equal to the intrinsic value one year from now, what is your expected 1-year holding-period return on Xyrong stock?

17. The Digital Electronic Quotation System (DEQS) Corporation pays no cash dividends currently and is not expected to for the next five years. Its latest EPS was 10, all of which was reinvested in the company. The firm's expected ROE for the next five years is 20\% per year, and during this time it is expected to continue to reinvest all of its earnings. Starting in year 6, the firm's ROE on new investments is expected to fall to 15\%, and the company is expected to start paying out

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/d33b96491adc14f67b97faafff4075c99e69672c49fcb9dd605cdc23f27f33c7.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/4638748ee4e61d5501c43d940bba0d4a946c87831b6bd83c540fb31244750eaf.jpg)

40\% of its earnings in cash dividends, which it will continue to do forever after. DEQS's market capitalization rate is 15\% per year.

$a$ . What is your estimate of DEQS's intrinsic value per share?
b. Assuming its current market price is equal to its intrinsic value, what do you expect to happen to its price over the next year?
c. What do you expect to happen to price in the following year?
d. What effect would it have on your estimate of DEQS's intrinsic value if you expected DEQS to pay out only  $20\%$  of earnings starting in year 6?

18. Recalculate the intrinsic value of Toyota in each of the following scenarios by using the three-stage growth model of Spreadsheet 18.1 (available in Connect; link to Chapter 18 material). Treat each scenario independently.

$a$ . The terminal growth rate will be  $4.5\%$ .
b. Toyota's beta is .9.
$c$ . The market risk premium is  $7.5\%$ .

19. Recalculate the intrinsic value of Toyota shares using the free cash flow model of Spreadsheet 18.2 (available in Connect; link to Chapter 18 material) under each of the following assumptions. Treat each scenario independently.

a. Toyota's P/E ratio starting in 2025 (cell G3) will be 11.5.
b. Toyota's unlevered beta (cell B22) is .65.
$c$ . The market risk premium (cell B27) is  $7.5\%$ .

20. The Duo Growth Company just paid a dividend of 1 per share. The dividend is expected to grow at a rate of 25\% per year for the next three years and then to level off to 5\% per year forever. You think the appropriate market capitalization rate is 20\% per year.

$a$ . What is your estimate of the intrinsic value of a share of the stock?
$b$ . If the market price of a share is equal to this intrinsic value, what is the expected dividend yield?
c. What do you expect its price to be one year from now?
$d$ . Is the implied capital gain consistent with your estimate of the dividend yield and the market capitalization rate?

21. The Generic Genetic (GG) Corporation pays no cash dividends currently and is not expected to for the next four years. Its latest EPS was 5, all of which was reinvested in the company. The firm's expected ROE for the next four years is 20\% per year, during which time it is expected to continue to reinvest all of its earnings. Starting in year 5, the firm's ROE on new investments is expected to fall to 15\% per year. GG's market capitalization rate is 15\% per year.

$a$ . What is your estimate of GG's intrinsic value per share?
b. Assuming its current market price is equal to its intrinsic value, what do you expect to happen to its price over the next year?

22. The MoMi Corporation's cash flow from operations before interest and taxes was $2 million in the year just ended, and it expects that this will grow by 5\% per year forever. To make this happen, the firm will have to invest an amount equal to 20\% of pretax cash flow each year. The tax rate is 21\%. Depreciation was $200,000 in the year just ended and is expected to grow at the same rate as the operating cash flow. The appropriate market capitalization rate for the unleveraged cash flow is 12\% per year, and the firm currently has debt of 4 million outstanding. Use the free cash flow approach to value the firm's equity.

23. Chiptech, Inc., is an established computer chip firm with several profitable existing products as well as some promising new products in development. The company earned $1 a share last year and just paid out a dividend of $.50 per share. Investors believe the company plans to maintain its dividend payout ratio at 50\%. ROE equals 20\%. Everyone in the market expects this situation to persist indefinitely.

a. What is the market price of Chiptech stock? The required return for the computer chip industry is  $15\%$ , and the company has just gone ex-dividend (i.e., the next dividend will be paid a year from now, at  $t = 1$ ).
b. Suppose you discover that Chiptech's competitor has developed a new chip that will eliminate Chiptech's current technological advantage in this market. This new product, which will be ready to come to the market in two years, will force Chiptech to reduce the prices of its chips starting in year 3 to remain competitive. This will decrease ROE in the third year and beyond to  $15\%$ . Anticipating the reduced profitability of new investments that will take hold beginning in year 3, the firm plows back a lower fraction of earnings starting at the end of the second year; therefore, the plowback ratio in year 2 and beyond will fall to .40. What is your estimate of Chiptech's intrinsic value per share? (Hint: Carefully prepare a table of Chiptech's earnings and dividends for each of the next three years. Pay close attention to the change in the payout ratio at the end of the second year.)


c. No one else in the market perceives the threat to Chiptech's market. In fact, you are confident that no one else will become aware of the change in Chiptech's competitive status until the competitor firm publicly announces its discovery near the end of year 2. What will be the rate of return on Chiptech stock in the coming year (i.e., between  $t = 0$  and  $t = 1$ )? (Hint for parts c through e: Pay attention to when the market catches on to the new situation. A table of dividends and market prices over time might help.)
$d$ . What will be the rate of return on Chiptech stock in the second year (between  $t = 1$  and  $t = 2$ )?
$e$ . What will be the rate of return on Chiptech stock in the third year (between  $t = 2$  and  $t = 3$ )?

1. At Litchfield Chemical Corp. (LCC), a director of the company said that the use of dividend discount models by investors is "proof" that the higher the dividend, the higher the stock price.

a. Using a constant-growth dividend discount model as a basis of reference, evaluate the director's statement.
b. Explain how an increase in dividend payout would affect each of the following (holding all other factors constant): i. Sustainable growth rate.

ii. Growth in book value.

2. Helen Morgan, CFA, has been asked to use the DDM to determine the value of Sundanci, Inc. Morgan anticipates that Sundanci's earnings and dividends will grow at  $32\%$  for two years and  $13\%$  thereafter. Calculate the current value of a share of Sundanci stock by using a two-stage dividend discount model and the data from Tables 18A and 18B.

<table><tr><td>Income Statement</td><td>2020</td><td>2021</td></tr><tr><td>Revenue</td><td>$ 474</td><td>$ 598</td></tr><tr><td>Depreciation</td><td>20</td><td>23</td></tr><tr><td>Other operating costs</td><td>368</td><td>460</td></tr><tr><td>Income before taxes</td><td>86</td><td>115</td></tr><tr><td>Taxes</td><td>26</td><td>35</td></tr><tr><td>Net income</td><td>60</td><td>80</td></tr><tr><td>Dividends</td><td>18</td><td>24</td></tr><tr><td>Earnings per share</td><td>$0.714</td><td>$0.952</td></tr><tr><td>Dividend per share</td><td>$0.214</td><td>$0.286</td></tr><tr><td>Common shares outstanding (millions)</td><td>84.0</td><td>84.0</td></tr><tr><td>Balance Sheet</td><td>2020</td><td>2021</td></tr><tr><td>Current assets</td><td>$ 201</td><td>$ 326</td></tr><tr><td>Net property, plant, and equipment</td><td>474</td><td>489</td></tr><tr><td>Total assets</td><td>$ 675</td><td>$ 815</td></tr><tr><td>Current liabilities</td><td>57</td><td>141</td></tr><tr><td>Long-term debt</td><td>0</td><td>0</td></tr><tr><td>Total liabilities</td><td>$ 57</td><td>$ 141</td></tr><tr><td>Shareholders’ equity</td><td>618</td><td>674</td></tr><tr><td>Total liabilities and equity</td><td>675</td><td>815</td></tr><tr><td>Capital expenditures</td><td>34</td><td>38</td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/514aa2b01ef24d5452e18a72067c8116ee6d6d7a85de1e0dd4c9e590c46a23b2.jpg)

# Table 18A

Sundanci actual 2020 and 2021 financial statements for fiscal years ending May 31 ( million, except per-share data)

# Table 18B

Selected financial information

Required rate of return on equity 14\%

Growth rate of industry 13\%

Industry P/E ratio 26

3. Abbey Naylor, CFA, has been directed to determine the value of Sundanci's stock using the Free Cash Flow to Equity (FCFE) model. Naylor believes that Sundanci's FCFE will grow at  $27\%$  for two years and  $13\%$  thereafter. Capital expenditures, depreciation, and working capital are all expected to increase proportionately with FCFE.

$a$ . Calculate the amount of FCFE per share for the year 2021, using the data from Table 18A.
$b$ . Calculate the current value of a share of Sundanci stock based on the two-stage FCFE model.

c. i. Describe one limitation of the two-stage DDM model that is addressed by using the two-stage FCFE model.
ii. Describe one limitation of the two-stage DDM model that is not addressed by using the two-stage FCFE model.

4. Christie Johnson, CFA, has been assigned to analyze Sundanci using the constant dividend growth price/earnings (P/E) ratio model. Johnson assumes that Sundanci's earnings and dividends will grow at a constant rate of  $13\%$ .

a. Calculate the P/E ratio based on information in Tables 18A and 18B and on Johnson's assumptions for Sundanci.
$b$ . Identify, within the context of the constant dividend growth model, how each of the following factors would affect the P/E ratio:

- Risk (beta) of Sundanci.
- Estimated growth rate of earnings and dividends.
Market risk premium.

5. Dynamic Communication is a U.S. industrial company with several electronics divisions. The company has just released its 2023 annual report. Tables 18C and 18D present a summary of Dynamic's financial statements for the years 2022 and 2023. Selected data from the financial statements for the years 2019 to 2021 are presented in Table 18E.

# Table 18C

Dynamic Communication balance sheets

<table><tr><td></td><td colspan="2">$ Million</td></tr><tr><td></td><td>2023</td><td>2022</td></tr><tr><td>Cash and equivalents</td><td>$ 149</td><td>$ 83</td></tr><tr><td>Accounts receivable</td><td>295</td><td>265</td></tr><tr><td>Inventory</td><td>275</td><td>285</td></tr><tr><td>Total current assets</td><td>$ 719</td><td>$ 633</td></tr><tr><td>Gross fixed assets</td><td>9,350</td><td>8,900</td></tr><tr><td>Accumulated depreciation</td><td>(6,160)</td><td>(5,677)</td></tr><tr><td>Net fixed assets</td><td>$3,190</td><td>$3,223</td></tr><tr><td>Total assets</td><td>$3,909</td><td>$3,856</td></tr><tr><td>Accounts payable</td><td>$ 228</td><td>$ 220</td></tr><tr><td>Notes payable</td><td>0</td><td>0</td></tr><tr><td>Accrued taxes and expenses</td><td>0</td><td>0</td></tr><tr><td>Total current liabilities</td><td>$ 228</td><td>$ 220</td></tr><tr><td>Long-term debt</td><td>$1,650</td><td>$1,800</td></tr><tr><td>Common stock</td><td>50</td><td>50</td></tr><tr><td>Additional paid-in capital</td><td>0</td><td>0</td></tr><tr><td>Retained earnings</td><td>1,981</td><td>1,786</td></tr><tr><td>Total shareholders’ equity</td><td>$2,031</td><td>$1,836</td></tr><tr><td>Total liabilities and shareholders’ equity</td><td>$3,909</td><td>3,856</td></tr></table> a. A group of Dynamic shareholders has expressed concern about the zero growth rate of dividends in the last four years and has asked for information about the growth of the company. Calculate Dynamic's sustainable growth rates in 2020 and 2023. Your calculations should use beginning-of-year balance sheet data.

b. Determine how the change in Dynamic's sustainable growth rate (2023 compared to 2020) was affected by changes in its retention ratio and its financial leverage. (Note: Your calculations should use beginning-of-year balance sheet data.)

<table><tr><td></td><td>2023</td><td>2022</td></tr><tr><td>Total revenues</td><td>$3,425</td><td>$3,300</td></tr><tr><td>Operating costs and expenses</td><td>2,379</td><td>2,319</td></tr><tr><td>Earnings before interest, taxes, depreciation, and amortization (EBITDA)</td><td>$1,046</td><td>$ 981</td></tr><tr><td>Depreciation and amortization</td><td>483</td><td>454</td></tr><tr><td>Operating income (EBIT)</td><td>$ 563</td><td>$ 527</td></tr><tr><td>Interest expense</td><td>104</td><td>107</td></tr><tr><td>Income before taxes</td><td>$ 459</td><td>$ 420</td></tr><tr><td>Taxes (40\%)</td><td>184</td><td>168</td></tr><tr><td>Net income</td><td>$ 275</td><td>$ 252</td></tr><tr><td>Dividends</td><td>$ 80</td><td>$ 80</td></tr><tr><td>Change in retained earnings</td><td>$ 195</td><td>$ 172</td></tr><tr><td>Earnings per share</td><td>$ 2.75</td><td>$ 2.52</td></tr><tr><td>Dividends per share</td><td>$ 0.80</td><td>$ 0.80</td></tr><tr><td>Number of shares outstanding (millions)</td><td>100</td><td>100</td></tr></table>

# Table 18D

Dynamic Communication statements of income (U.S. $ millions except for share data)

<table><tr><td></td><td>2021</td><td>2020</td><td>2019</td></tr><tr><td>Total revenues</td><td>$3,175</td><td>$3,075</td><td>$3,000</td></tr><tr><td>Operating income (EBIT)</td><td>495</td><td>448</td><td>433</td></tr><tr><td>Interest expense</td><td>104</td><td>101</td><td>99</td></tr><tr><td>Net income</td><td>$ 235</td><td>$ 208</td><td>$ 200</td></tr><tr><td>Dividends per share</td><td>$ 0.80</td><td>$ 0.80</td><td>$ 0.80</td></tr><tr><td>Total assets</td><td>$3,625</td><td>$3,414</td><td>$3,230</td></tr><tr><td>Long-term debt</td><td>$1,750</td><td>$1,700</td><td>$1,650</td></tr><tr><td>Total shareholders&#x27; equity</td><td>$1,664</td><td>$1,509</td><td>$1,380</td></tr><tr><td>Number of shares outstanding (millions)</td><td>100</td><td>100</td><td>100</td></tr></table>

# Table 18E

Dynamic Communication selected data from financial statements (U.S. $ millions except for share data)

6. Mike Brandreth, an analyst who specializes in the electronics industry, is preparing a research report on Dynamic Communication. A colleague suggests to Brandreth that he may be able to determine Dynamic's implied dividend growth rate from Dynamic's current common stock price, using the Gordon growth model. Brandreth believes that the appropriate required rate of return for Dynamic's equity is  $8\%$ .

a. Assume that the firm's current stock price of 58.49 equals intrinsic value. What sustained rate of dividend growth as of December 2023 is implied by this value? Use the constant-growth dividend discount model (i.e., the Gordon growth model).
b. The management of Dynamic has indicated to Brandreth and other analysts that the company's current dividend policy will be continued. Is the use of the Gordon growth model to value Dynamic's common stock appropriate or inappropriate? Justify your response based on the assumptions of the Gordon growth model.

7. Peninsular Research is initiating coverage of a mature manufacturing industry. John Jones, CFA, head of the research department, gathered the following fundamental industry and market data to help in his analysis:

<table><tr><td>Forecast industry earnings retention rate</td><td>40\%</td></tr><tr><td>Forecast industry return on equity</td><td>25\%</td></tr><tr><td>Industry beta</td><td>1.2</td></tr><tr><td>Government bond yield</td><td>6\%</td></tr><tr><td>Equity risk premium</td><td>5\%</td></tr></table> a. Compute the price-to-earnings  $(P_0 / E_1)$  ratio for the industry based on these fundamental data.

$b$ . Jones wants to analyze how fundamental P/E ratios might differ among countries. He gathered the following economic and market data:

<table><tr><td>Fundamental Factors</td><td>Country A</td><td>Country B</td></tr><tr><td>Forecast growth in real GDP</td><td>5\%</td><td>2\%</td></tr><tr><td>Government bond yield</td><td>10\%</td><td>6\%</td></tr><tr><td>Equity risk premium</td><td>5\%</td><td>4\%</td></tr></table>

Determine whether each of these fundamental factors would cause P/E ratios to be generally higher for Country A or Country B.

8. Janet Ludlow's firm requires all its analysts to use a two-stage dividend discount model (DDM) and the capital asset pricing model (CAPM) to value stocks. Using the CAPM and DDM, Ludlow has valued QuickBrush Company at 63 per share. She now must value SmileWhite Corporation.

a. Calculate the required rate of return for SmileWhite by using the information in the following table:

<table><tr><td></td><td>QuickBrush</td><td>SmileWhite</td></tr><tr><td>Beta</td><td>1.35</td><td>1.15</td></tr><tr><td>Market price</td><td>$45.00</td><td>$30.00</td></tr><tr><td>Intrinsic value</td><td>63.00</td><td>?</td></tr><tr><td>Notes:</td><td></td><td></td></tr><tr><td>Risk-free rate</td><td>4.50\%</td><td></td></tr><tr><td>Expected market return</td><td>14.50\%</td><td></td></tr></table> b. Ludlow estimates the following EPS and dividend growth rates for SmileWhite:


<table><tr><td>First 3 years</td><td>12\% per year</td></tr><tr><td>Years thereafter</td><td>9\% per year</td></tr></table>

Estimate the intrinsic value of SmileWhite by using the table above and the two-stage DDM. Dividends per share in the most recent year were 1.72.

c. Recommend QuickBrush or SmileWhite stock for purchase by comparing each company's intrinsic value with its current market price.
$d$ . Describe one strength of the two-stage DDM in comparison with the constant-growth DDM. Describe one weakness inherent in all DDMs.

9. Rio National Corp. is a U.S.-based company and the largest competitor in its industry. Tables 18F through 18I present financial statements and related information for the company. Table 18J presents relevant industry and market data.

The portfolio manager of a large mutual fund comments to one of the fund's analysts, Katrina Shaar: "We have been considering the purchase of Rio National Corp. equity shares, so I would like you to analyze the value of the company. To begin, based on Rio National's past performance, you can assume that the company will grow at the same rate as the industry."


a. Calculate the intrinsic value of a share of Rio National equity on December 31, 2023, using the Gordon constant-growth model and the capital asset pricing model.
b. Calculate the sustainable growth rate of Rio National on December 31, 2023. Use 2023 beginning-of-year balance sheet values.

<table><tr><td></td><td>2023</td><td>2022</td></tr><tr><td>Cash</td><td>$ 13.00</td><td>$ 5.87</td></tr><tr><td>Accounts receivable</td><td>30.00</td><td>27.00</td></tr><tr><td>Inventory</td><td>209.06</td><td>189.06</td></tr><tr><td>Current assets</td><td>$252.06</td><td>$221.93</td></tr><tr><td>Gross fixed assets</td><td>474.47</td><td>409.47</td></tr><tr><td>Accumulated depreciation</td><td>(154.17)</td><td>(90.00)</td></tr><tr><td>Net fixed assets</td><td>$320.30</td><td>$319.47</td></tr><tr><td>Total assets</td><td>$572.36</td><td>$541.40</td></tr><tr><td>Accounts payable</td><td>$ 25.05</td><td>$ 26.05</td></tr><tr><td>Notes payable</td><td>0.00</td><td>0.00</td></tr><tr><td>Current portion of long-term debt</td><td>0.00</td><td>0.00</td></tr><tr><td>Current liabilities</td><td>$ 25.05</td><td>$ 26.05</td></tr><tr><td>Long-term debt</td><td>240.00</td><td>245.00</td></tr><tr><td>Total liabilities</td><td>$265.05</td><td>$271.05</td></tr><tr><td>Common stock</td><td>160.00</td><td>150.00</td></tr><tr><td>Retained earnings</td><td>147.31</td><td>120.35</td></tr><tr><td>Total shareholders&#x27; equity</td><td>$307.31</td><td>$270.35</td></tr><tr><td>Total liabilities and shareholders&#x27; equity</td><td>$572.36</td><td>$541.40</td></tr></table>

<table><tr><td>Revenue</td><td>$300.80</td></tr><tr><td>Total operating expenses</td><td>(173.74)</td></tr><tr><td>Operating profit</td><td>$127.06</td></tr><tr><td>Gain on sale</td><td>4.00</td></tr><tr><td>Earnings before interest, taxes, depreciation, &amp; amortization (EBITDA)</td><td>$131.06</td></tr><tr><td>Depreciation and amortization</td><td>(71.17)</td></tr><tr><td>Earnings before interest &amp; taxes (EBIT)</td><td>$59.89</td></tr><tr><td>Interest</td><td>(16.80)</td></tr><tr><td>Income tax expense</td><td>(12.93)</td></tr><tr><td>Net income</td><td>30.16</td></tr></table>

Note 1: Rio National had 75 million in capital expenditures during the year.
 Note 2: A piece of equipment that was originally purchased for $10 million was sold for $7 million at year-end, when it had a net book value of 3 million. Equipment sales are unusual for Rio National.
Note 3: The decrease in long-term debt represents an unscheduled principal repayment; there was no new borrowing during the year.
Note 4: On January 1, 2022, the company received cash from issuing 400,000 shares of common equity at a price of 25.00 per share.
Note 5: A new appraisal during the year increased the estimated market value of land held for investment by 2 million, which was not recognized in 2022 income.

# Table 18F

Rio National Corp. summary year-end balance sheets (U.S. $ millions)

# Table 18G

Rio National Corp. summary income statement for the year ended December 31, 2022 (U.S. $ millions)

# Table 18H

Rio National Corp. supplemental notes for 2022

# Table 18I

Rio National Corp. common equity data for 2022

Dividends paid (U.S. $ millions) $3.20

Weighted-average shares outstanding 16,000,000

Dividend per share 0.20

Earnings per share 1.89

Beta 1.80

Note: The dividend payout ratio is expected to be constant.

# Table 18J

Industry and market data December 31, 2022

Risk-free rate of return 4.00\%

Expected rate of return on market index 9.00\%

Median industry price/earnings (P/E) ratio 19.90

Expected industry earnings growth rate 12.00\%

10. While valuing the equity of Rio National Corp. (see CFA Problem 9), Katrina Shaar is considering the use of either cash flow from operations (CFO) or free cash flow to equity (FCFE) in her valuation process.

a. State two adjustments that Shaar should make to cash flow from operations to obtain free cash flow to equity.
b. Shaar decides to calculate Rio National's FCFE for the year 2022, starting with net income. Determine for each of the five supplemental notes given in Table 18H whether an adjustment should be made to net income to calculate Rio National's free cash flow to equity for the year 2022, and the dollar amount of any adjustment.
c. Calculate Rio National's free cash flow to equity for the year 2022.

11. Shaar (see CFA Problem 10) has revised slightly her estimated earnings growth rate for Rio National and, using normalized (underlying trend) EPS, which is adjusted for temporary impacts on earnings, now wants to compare the current value of Rio National's equity to that of the industry, on a growth-adjusted basis. Selected information about Rio National and the industry is given in Table 18K.

Compared to the industry, is Rio National's equity overvalued or undervalued on a P/E-to-growth (PEG) basis, using normalized (underlying trend) earnings per share? Assume that the risk of Rio National is similar to the risk of the industry.

# Table 18K

Rio National

Corp. vs. industry

<table><tr><td>Rio National</td><td></td></tr><tr><td>Estimated earnings growth rate</td><td>11.00\%</td></tr><tr><td>Current share price</td><td>$25.00</td></tr><tr><td>Normalized (underlying trend) EPS for 2022</td><td>$ 1.71</td></tr><tr><td>Weighted-average shares outstanding during 2022</td><td>16,000,000</td></tr><tr><td>Industry</td><td></td></tr><tr><td>Estimated earnings growth rate</td><td>12.00\%</td></tr><tr><td>Median price/earnings (P/E) ratio</td><td>19.90</td></tr></table>

# E-INVESTMENTS EXERCISES

1. Choose 10 firms that interest you and download their financial statements from any of these Web sites: finance.yahoo.com, finance.google.com, or money.msn.com.

a. For each firm, find the return on equity (ROE), the number of shares outstanding, the dividends per share, and the net income. Record them in a spreadsheet.
b. Calculate the total amount of dividends paid (Dividends per share  $\times$  Number of shares outstanding), the dividend payout ratio (Total dividends paid/Net income), and the plowback ratio (1 - Dividend payout ratio).
c. Compute the sustainable growth rate,  $g = b \times \text{ROE}$ , where  $b$  equals the plowback ratio.
d. Plot the P/E ratios of the firms against the growth rates in a scatter diagram. Is there a relationship between the two?
e. Plot the price-to-book ratios against the price-earnings ratio for your sample of firms. Are the two variables correlated? What about price-to-sales versus price-earnings?
f. For each firm, compare the 3-year growth rate of earnings per share with the growth rate you calculated above. Is the actual rate of earnings growth correlated with the sustainable growth rate you calculated?

2. Now calculate the intrinsic value of three of the firms you selected in the previous question. Make reasonable judgments about the market risk premium and the risk-free rate.

a. What is the required return on each firm based on the CAPM? You can find the beta of each firm from its Statistics page.
b. Try using a two-stage growth model, making reasonable assumptions about how future growth rates will differ from current growth rates. Compare the intrinsic values derived from the two-stage model to the intrinsic values you find assuming a constant-growth rate. Which estimate seems more reasonable for each firm?

3. Now choose one of your firms and look up other firms in the same industry. Perform a "Valuation by Comparables" analysis by looking at the price/earnings, price/book value, price/sales, and price/cash flow ratios of the firms relative to each other and to the industry average. Which of the firms seem to be overvalued? Which seem to be undervalued? Can you think of reasons for any apparent mispricing?
4. The actually expected return on a stock based on estimates of future dividends and future price can be compared to the "required" or equilibrium return given its risk. If the expected return is greater than the required return, the stock may be an attractive investment.

First calculate the expected holding-period return (HPR) on Target Corporation's stock based on its current price, its expected price, and its expected dividend.

a. Go to MSN's money central at www.msn.com/en-us/money. Get information for Target (enter TGT under quote search). Find the range of forecasted year-ahead prices. Find the range for estimated target price for the next fiscal year.
b. Collect information about today's price and the dividend rate. What is the company's expected dividend in dollars for the next fiscal year?
c. Use these inputs to calculate the range of Target's HPRs for the next year.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/9ea9b9657c67ba9cd6c10a0f773baabf6954ab3c97f48f5a98975bb2f8475c87.jpg)

# SOLUTIONS TO CONCEPT CHECKS

1. a. Dividend yield  $= \ 2.15 / \$  50 = 4.3\%

$$
\text{Capital gains yield} = (59.77 - 50) / 50 = 19.54 \%
$$

$$
\text{Total return} = 4.3 \% + 19.54 \% = 23.84 \%
$$ b.  $k = 6\% + 1.15(14\% - 6\%) = 15.2\%$ .

 c. V0 = ($2.15 + $59.77)/1.152 = 53.75, which exceeds the market price. This would indicate a "buy" opportunity.

2. a. D₁/(k - g) = $2.15/(.152 -.112) = $53.75.

b. P_{1} = P_{0}(1 + g) = \53.75(1.112) = \$59.77. c. The expected capital gain equals  $\59.77 - \$ 53.75 = \$6.02 , for a percentage gain of  $11.2\%$ . The dividend yield is  $D_{1} / P_{0} = 2.15 / 53.75 = 4\%$ , for a holding-period return of  $4\% + 11.2\% = 15.2\%$ .

3.  $a$ .  $g = \mathrm{ROE} \times b = 20\% \times .60 = 12\%$ .

$$
D _ {1} = . 4 \times E _ {1} = . 4 \times \$ 5 = \$ 2.
$$

$$
P _ {0} = \$ 2 / (. 1 2 5 -. 1 2) = \$ 4 0 0.
$$ b. When the firm invests in projects with ROE less than  $k$ , its stock price falls. If  $b = .60$ , then  $g = 10\% \times .60 = 6\%$  and  $P_0 = \2 / (.125 - .06) = \$ 30.77 . In contrast, if  $b = 0$ , then  $P_0 = \5 / 125 = \$ 40 .


4.  $V_{2021} = \frac{4.45}{(1.084)} +\frac{4.81}{(1.084)^2} +\frac{5.18}{(1.084)^3} +\frac{5.55 + P_{2025}}{(1.084)^4}$

To estimate  $P_{2025}$  in this equation, use the constant-growth dividend discount model, but assuming the sustainable growth rate will be  $g = 5\%$ .

$$
P _ {2 0 2 5} = \frac {5 . 5 5 \times (1 + g)}{k - g} = \frac {\mathbb {S} 5 . 5 5 \times 1 . 0 5}{. 0 8 4 -. 0 5} = \mathbb {S} 1 7 1. 4 0
$$

Therefore,  $V_{2021} = \$ 140.42$ .

5. a. ROE = 12\%.

$$ b = \mathbb {.} 5 0 / \mathbb {S} 2. 0 0 = \mathbb {.} 2 5.
$$

$$ g = \mathrm {ROE} \times b = 12 \% \times .25 = 3 \%
$$

$$
P _ {0} = D _ {1} / (k - g) = \ 1. 5 0 / (. 1 0 -. 0 3) = \ 2 1. 4 3 .
$$

$$
P _ {0} / E _ {1} = \ 2 1. 4 3 / \ 2. 0 0 = 1 0. 7 1.
$$ b. If  $b = .4$ , then  $.4 \times \2 = \$ 80  would be reinvested and the remainder of earnings, or  $1.20$ , would be paid as dividends.


$$ g = 12 \% \times .4 = 4.8 \%
$$

$$
P _ {0} = D _ {1} / (k - g) = \ 1. 2 0 / (. 1 0 -. 0 4 8) = \ 2 3. 0 8 .
$$

$$
P _ {0} / E _ {1} = \ 23.08 / \ 2.00 = 11.54.
$$


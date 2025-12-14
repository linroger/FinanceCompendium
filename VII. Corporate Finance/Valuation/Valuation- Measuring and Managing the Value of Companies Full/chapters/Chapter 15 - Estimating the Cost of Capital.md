---
aliases:
  - Estimating the Cost of Capital
tags:
key_concepts:
parent_directory: Valuation- Measuring and Managing the Value of Companies Full/chapters
cssclasses: academia
title: Chapter 15 - Estimating the Cost of Capital
linter-yaml-title-alias: Estimating the Cost of Capital
---

# Estimating the Cost of Capital

To value a company using enterprise discounted cash flow (DCF), discount your forecast of free cash flow (FCF) at the weighted average cost of capital (WACC). The WACC represents the returns that all investors in a company—equity and debt—expect to earn for investing their funds in one particular business instead of others with similar risk. The investment return they are forgoing is also referred to as their opportunity cost of capital. Since a company's investors will earn the cost of capital if the company meets expectations, the cost of capital is used interchangeably with expected return.

The WACC has three primary components: the cost of equity, the after-tax cost of debt, and the company's target capital structure. Estimating WACC with precision is difficult because there is no way to directly measure an investor's opportunity cost of capital, especially the cost of equity. Furthermore, many of the traditional approaches that worked for years have been complicated by recent monetary policies that have led to unusually low interest rates on government bonds. To estimate the cost of capital, we employ various models and approximations that are grounded in corporate-finance theory and build on empirical observations about the market value of companies. These models estimate the expected return on alternative investments with similar risk.

This chapter begins with a brief summary of the WACC calculation and then presents detailed sections on how to estimate its components: the cost of equity, the after-tax cost of debt, and the target capital structure, which is used to weight the first two components. The chapter concludes with a discussion of WACC estimation for companies whose capital structure is more complex than just traditional debt and common stock.

# CALCULATING THE WEIGHTED AVERAGE COST OF CAPITAL

In its simplest form, the weighted average cost of capital equals the weighted average of the after-tax cost of debt and cost of equity:

$$
\mathrm {W A C C} = \frac {D}{V} k _ {d} \left(1 - T _ {m}\right) + \frac {E}{V} k _ {e}
$$ where


$D / V =$  target level of debt to value using market-based values

$E / V =$  target level of equity to value using market-based values

$k_{d} = \mathrm{cost}$  of debt

$k_{e} =$  cost of equity

$T_{m} =$  company's marginal tax rate on income

For companies with other securities, such as preferred stock, additional terms must be added to the cost of capital, representing each security's expected rate of return and percentage of total enterprise value. The cost of capital does not include expected returns of operating liabilities, such as accounts payable. Required compensation for capital provided by customers, suppliers, and employees is embedded in operating expenses, so it is already incorporated in free cash flow.

The cost of equity is determined by estimating the expected return on the market portfolio, adjusted for the risk of the company being valued. In this book, we estimate risk by using the capital asset pricing model (CAPM). The CAPM adjusts for company-specific risk using beta, which measures how a company's stock price responds to movements in the overall market. Stocks with high betas have expected returns that exceed the market return; the converse is true for low-beta stocks. Only beta risk is priced. Any remaining risk, which academics call idiosyncratic risk, can be diversified away by holding multiple securities, as explained in Chapter 4. In practice, measurements of individual company betas are highly imprecise. Therefore, use a set of peer company betas to estimate an industry beta.

To approximate the after-tax cost of debt for an investment-grade firm, use the company's after-tax yield to maturity on its long-term debt. For companies whose debt trades infrequently or for nontraded debt, use the company's debt rating to estimate the yield to maturity. Since free cash flow is measured without interest tax shields, use the after-tax cost of debt to incorporate the interest tax shield into the WACC.

Finally, predict the target capital structure, and use the target levels to weight the after-tax cost of debt and cost of equity. For stable companies, the target capital structure is often approximated by the company's current debt-to-value ratio, using market values of debt and equity. As we'll explain later in this chapter, do not use book values.

EXHIBIT 15.1 Costco: Weighted Average Cost of Capital (WACC)

<table><tr><td rowspan="2">\%</td><td colspan="5">Target</td></tr><tr><td>Source of capital</td><td>proportion of total capital</td><td>Cost of capital</td><td>Marginal tax rate</td><td>After-tax cost of capital</td></tr><tr><td>Debt</td><td>10.4</td><td>4.9</td><td>24.6</td><td>3.7</td><td>0.4</td></tr><tr><td>Equity</td><td>89.6</td><td>8.5</td><td></td><td>8.5</td><td>7.6</td></tr><tr><td>WACC</td><td>100.0</td><td></td><td></td><td></td><td>8.0</td></tr></table>

For an example of the WACC calculation, see Exhibit 15.1, which presents the calculation for Costco. We estimate the company's cost of equity at 8.5 percent using the CAPM. To estimate Costco's pretax cost of debt, we add the default premium on Costco debt to a forecast of the risk-free rate, which leads to a cost of debt of 4.9 percent. In Chapter 11, we estimated Costco's marginal tax rate at 24.6 percent, so the company's after-tax cost of debt equals 3.7 percent. To weight the after-tax cost of debt and cost of equity, we set the target capital structure equal to the company's current-debt-to-value, excluding excess cash. Normally, we net excess cash against gross debt to determine the cost of capital, but since Costco has little net debt compared with its peer group, we assume the company will disgorge excess cash to increase leverage. Adding together the weighted contributions from debt and equity, WACC equals 8.0 percent.

Always estimate the WACC in a manner consistent with the principles of free cash flow. For example, since free cash flow is the cash flow available to all financial investors, the company's WACC must also include the expected return for each class of investor. In general, the cost of capital must meet the following criteria:
- It must include the cost of capital for all investors—debt, preferred stock, common stock, and so on—since free cash flow is available to all investors, who expect compensation for the risks they take.
- Any financing-related benefits or costs, such as interest tax shields, not included in free cash flow must be incorporated into the cost of capital or valued separately using adjusted present value.2
- WACC must be computed after corporate income taxes (since free cash flow is calculated in after-tax terms).
- It must be based on the same expectations of inflation as those embedded in forecasts of free cash flow.
- The duration of the securities used to estimate the cost of capital must match the duration of the cash flows.

# ESTIMATING THE COST OF EQUITY

The cost of equity is the central building block of the cost of capital. Unfortunately, it is also extremely difficult to measure. Academics and practitioners have proposed numerous models to estimate the cost of equity, but none have been reliable, especially at the company level. Even if a model could be agreed upon, accurately measuring the required inputs has also proven elusive. Consequently, deriving the cost of equity is far more difficult in practice than many core finance texts imply. With these hurdles in mind, we estimate the cost of equity in two steps:

1. Estimate market return. First, we estimate the expected return on the entire stock market. Although a particular company will not necessarily have the same cost of capital as the market as a whole, the market return provides a critical benchmark for judging how reasonable estimates of cost of equity for individual companies are.
2. Adjust for risk. We next adjust for company risk using one of two well-known models, the capital asset pricing model (CAPM) and the Fama-French three-factor model. Each model measures company risk by measuring the correlation of its stock price to market changes, known as beta. Since estimates of beta are at best imprecise, we rely on peer group betas, rather than individual company betas.

# Estimating the Market Return

Every day, thousands of investors attempt to estimate the market's expected return. Since the future is unobservable, many practitioners use one of two approaches to estimate it.

The first method calculates the cost of equity implied by the relationship between current share prices and future financial performance. By valuing a large sample of companies like the Standard & Poor's (S&P) 500 index, we can reverse engineer the embedded cost of equity. Although the method requires a forecast of future performance, it is quite powerful, since it incorporates up-to-date market prices.

The second method looks backward using historical market returns. However, given that past market returns are heavily influenced by the rate of inflation prevalent at the time, a simple average of past returns isn't helpful in predicting today's market return. Instead, we add a historical market risk premium (stocks minus bonds) to today's interest rate, which incorporates today's expected inflation, rather than past inflation rates.

Using Market Prices to Estimate the Cost of Equity Our first approach—estimating the aggregate cost of equity based on current share prices and expected corporate performance (earnings, return on invested capital [ROIC], and growth expectations) of a large sample of companies—generates striking results. After inflation is stripped out, the expected market return (not excess return) is remarkably constant, averaging 7 percent between 1962 and 2018.


To reverse engineer the expected market return, we start with the value driver formula described in Chapter 3. In this case, we've expressed it in terms of equity value rather than enterprise value (substituting the cost of equity for the weighted average cost of capital, return on equity for ROIC, etc.):

$$

\text {E q u i t y V a l u e} = \frac {\text {E a r n i n g s} \left(1 - \frac {g}{\text {R O E}}\right)}{k _ {e} - g}

$$ where


Earnings = equity earnings

$$

\begin{array}{l} g = \text {e x p e c t e d g r o w t h i n e a c r i n g s} \\ \mathrm {R O E} = \text {e x p e c t e d r e t u r n o n e q u i t y} \\ k _ {e} = \text {c o s t o f e q u i t y} \\ \end{array}

$$

Solving for the cost of equity gives the following equation:

$$ k _ {e} = \frac {\text {E a r n i n g s} \left(1 - \frac {g}{\text {R O E}}\right)}{\text {E q u i t y V a l u e}} + g
$$

Earnings divided by the equity value is the inverse of the price-to-earnings ratio  $(\mathrm{P} / \mathrm{E})$ , so it is possible to further reduce the equation:

$$ k _ {e} = \left(\frac {1}{\mathrm {P} / \mathrm {E}}\right) \left(1 - \frac {g}{\mathrm {R O E}}\right) + g
$$

We apply this formula to the S&P 500 index, using the long-run return on equity of 14.5 percent and the long-run growth in real gross domestic product (GDP) of 3.5 percent to convert a given year's S&P 500 median P/E into the cost of equity. Implementing the model is slightly more complex than implied by the formula, because we also strip out the effects of inflation to arrive at a real cost of equity. Exhibit 15.2 plots the real expected market returns between 1962 and 2018. As the exhibit demonstrates, the nominal return changes substantially over time, but the real expected return hovers quite close to 7 percent. For the United Kingdom, the real market return is slightly more volatile and averages 6 percent.

Techniques similar to this date back to Charles Dow in the 1920s, and many authors have tested the concept. Two studies used analyst forecasts

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/75ea39cc-041a-437e-9d57-dabed85d38b7/e2296b5e0475424508f9e5eba0d44882f296fdaede4194ba0aa8857677b93294.jpg)

EXHIBIT 15.2 S&P 500 Real and Nominal Expected Returns, 1962-2018 to estimate growth,[5] but many argue that analyst forecasts focus on the short term and are upward biased. In 2003, Eugene Fama and Kenneth French used long-term dividend growth rates as a proxy for future growth, but they focus on dividend yields, not on available cash flow.[6] Therefore, we believe this implementation is best.

To convert the real expected return into a nominal return appropriate for discounting, add an estimate of future inflation that is consistent with your cash flow projections. In the United States, the Federal Reserve Bank of Philadelphia provides a long-run forecast of expected inflation. In December 2018, this equaled 2.3 percent. Alternatively, you can estimate expected long-term inflation using the spread between the yield on inflation-protected bonds and regular government bonds. In 2018, this spread was approximately 1.7 percent. When you add inflation in the range of 1.7 to 2.3 percent to a real return of 7 percent, you get an expected market return of 8.7 to 9.3 percent.

Later in this chapter, we use the CAPM to adjust the market return for company risk. The CAPM requires an estimate of the market risk premium, measured as the difference between stock returns and the return on risk-free bonds. Using data from 1962 to 2018, we estimate the average inflation-adjusted stock market return at 7 percent and the average inflation-adjusted U.S. Treasury return at 2 percent. The difference represents a market risk premium of 5 percent.

 J. Clause and J. Thomas, "Equity Premia as Low as Three Percent? Evidence from Analysts' Earnings Forecasts for Domestic and International Stocks," Journal of Finance 56, no. 5 (October 2001): 1629-1666; and W. R. Gebhardt, C. M. C. Lee, and B. Swaminathan, "Toward an Implied Cost of Capital," Journal of Accounting Research 39, no. 1 (2001): 135-176.

$^{6}$  E. F. Fama and K. R. French, "The Equity Premium," Journal of Finance 57, no. 2 (April 2002): 637-659.

 See Federal Reserve Bank of Philadelphia, Survey of Professional Forecasters, www.philadelphiafed.org.

Alternatively, if we expect the market to earn 7 percent in real terms going forward and subtract the December 2018 inflation-adjusted interest rate of 1 percent, this implies a market risk premium going forward of 6 percent. While we are not averse to this larger-than-normal risk premium, our statistical tests do not provide confirming evidence that risk premiums have risen. If this were the case, low-risk stocks should increase in value relative to high-risk stocks, because as the price of risk rises, high-risk stocks require greater returns and consequently have lower valuations. When we examined the trend of P/Es for low-risk stocks versus high-risk stocks, we did not observe any widening of the spread as real interest rates fell, even to historical lows.

Historical Estimates of the Market Risk Premium A second method to estimate the expected market return starts with a historical estimate of the market risk premium and then adds this estimate to today's long-term government bond rate. We add today's rates so the estimate of the expected market return incorporates current interest rates, rather than those in the past.

Estimating the historical risk premium properly requires some statistical sophistication. A full description of the most relevant issues is available in Appendix F; we offer only a summary here. First, use as long a time period as possible. Our work relies on research by Elroy Dimson, Paul Marsh, and Mike Staunton, who provide market returns dating back to 1900. Although some argue that market risk premiums have dropped over time, a simple regression analysis does not support this. Therefore, we believe more data improve the quality of estimation. Second, neither the arithmetic average nor a geometric average of past returns will estimate multiyear discount rates well. The best value falls somewhere between the two averages. While the arithmetic average is best for estimating a one-period return, compounding the average return also compounds any estimation error, causing the compounded number to be too high. To counter this bias, Marshall Blume created an estimator using a combination of the two averages.

Exhibit 15.3 presents the average cumulative returns of the U.S. stock market, the U.S. bond market, and excess returns (stocks minus bonds) between 1900 and 2018. Using fiveto ten-year holding periods, the average annual excess return is 5.5 to 5.7 percent. Blume's estimator for longer-date cash flows is slightly higher, at just above 6 percent. Even with the best statistical techniques, however, this number is probably too high, because the observable sample includes only countries with strong historical returns.[10] Statisticians

$^{8}$  E. Dimson, P. Marsh, and M. Staunton, "The Worldwide Equity Premium: A Smaller Puzzle," in Handbook of Investments: Equity Risk Premium, ed. R. Mehra (Amsterdam: Elsevier Science, 2007).

 D. C. Indro and W. Y. Lee, "Biases in Arithmetic and Geometric Averages as Estimates of Long-Run Expected Returns and Risk Premia," Financial Management 26, no. 4 (Winter 1997): 81–90; and M. E. Blume, "Unbiased Estimators of Long-Run Expected Rates of Return," Journal of the American Statistical Association 69, no. 347 (September 1974): 634–638.

10 S. Brown, W. Goetzmann, and S. Ross, "Survivorship Bias," Journal of Finance (July 1995): 853-873.

EXHIBIT 15.3 Cumulative Returns for Various Intervals, 1900-2018

<table><tr><td colspan="6">Arithmetic mean, \%</td></tr><tr><td rowspan="2">Holding period</td><td colspan="3">Average cumulative returns</td><td colspan="2">Annualized returns</td></tr><tr><td>U.S. stocks</td><td>U.S. government bonds</td><td>U.S. excess returns1</td><td>U.S. excess returns</td><td>Blume estimate of market risk premium</td></tr><tr><td>1 year</td><td>11.3</td><td>5.4</td><td>6.3</td><td>6.3</td><td>6.3</td></tr><tr><td>2 years</td><td>23.8</td><td>11.0</td><td>12.6</td><td>6.1</td><td>6.3</td></tr><tr><td>4 years</td><td>51.2</td><td>23.3</td><td>25.0</td><td>5.7</td><td>6.3</td></tr><tr><td>5 years</td><td>67.4</td><td>30.2</td><td>32.2</td><td>5.7</td><td>6.2</td></tr><tr><td>10 years</td><td>172.6</td><td>72.1</td><td>71.3</td><td>5.5</td><td>6.2</td></tr></table>

1 Measured by averaging year-by-year excess returns, not as the difference between cumulative stock and bond returns.

Source: Data for 1900-2002 from E. Dimson, P. Marsh, and M. Staunton, "The Worldwide Equity Premium: A Smaller Puzzle," in Handbook of Investments: Equity Risk Premium, ed. R. Mehra (Amsterdam: Elsevier Science, 2007); data for 2003-2017 from R. G. Ibbotson, 2018 SBBI Yearbook: Stocks, Bonds, Bills, and Inflation (New York: Duff & Phelps, 2018); data from 2018 from Bloomberg.

refer to this phenomenon as survivorship bias. Zvi Bodie writes, "There were 36 active stock markets in 1900, so why do we only look at two [the UK and U.S. markets]? I can tell you—because many of the others don't have a 100-year history, for a variety of reasons."[11]

Since it is unlikely that the U.S. stock market will replicate its performance over the next century, we adjust downward the historical market risk premium. Dimson, Marsh, and Staunton find that the U.S. arithmetic annual return exceeded a 17-country composite return by 0.8 percent in real terms.[12] If we subtract a 0.8 percent survivorship premium from our range of 5.5 percent to 6.2 percent U.S. excess returns reported in Exhibit 15.2, the difference implies that the U.S. market risk premium, as measured by excess returns, is in the range of 4.7 to 5.4 percent, which we round to 5 percent. It's interesting that this number matches the average risk premium measured by reverse engineering the expected market return using the key value driver formula.

Estimating the Risk-Free Rate With an estimate of the historical market risk premium in hand, it is now possible to estimate the expected market return by adding the market risk premium to the current risk-free rate. Adding the historical risk premium to the current Treasury yield worked well until the financial crisis of 2007-2009. With interest rates at unprecedented lows, however, further analysis is required.

To combat the financial crisis, the U.S. Federal Reserve reduced short-term rates to almost zero, pulling down long-term rates as a by-product. It also began a policy of repurchasing bonds in the open market (known as quantitative easing), further pushing up prices and driving down yields. At the same time, U.S. government bonds became a haven for investors around the world, leading to high prices and lower yields for government bonds. As the crisis and subsequent recession unfolded, the yield on ten-year government bonds began a long and volatile decline, reaching an all-time low of 1.5 percent in July 2016. (Just prior to this book going to press, the U.S. Federal Reserve reduced interest rates in response to the global Coronavirus outbreak. As a result, in March 2020, the 10-year government bond fell below 1 percent for the first time.)

In the period following July 2016, many practitioners realized that valuation models based on these historically low interest rates didn't lead to sensible results. With government bonds at 1.5 percent, a 5 percent market risk premium implies an expected market return of just 6.5 percent. Compared with pre-crisis expected returns, this should have caused a dramatic rise in the market's price relative to earnings. Mathematically, every 1 percent decrease in the cost of equity for the S&P 500 index should increase the P/E of the index by roughly 20 to 25 percent. So a 3 percent drop in cost of equity would have increased the P/E from a typical trading range of 15 times to over 25 times. Yet no rise occurred. Instead, the P/E for the S&P 500 index has recovered to pre-crisis levels of approximately 20 times.

To overcome the inconsistency between low interest rates and the market values of equities, we recommend using a synthetic risk-free rate in both the estimate of the expected market return and for use in the CAPM. To build a synthetic risk-free rate, add the expected inflation rate of 1.7 to 2.3 percent presented in the previous section to the long-run average real interest rate of 2 percent, which leads to a synthetic risk-free rate of between 3.7 and 4.3 percent.[13]

Adding the 5 percent market risk premium estimated earlier leads to an expected market return of 8.7 to 9.3 percent. If market prices eventually rise to incorporate ultralow interest rates (or if interest rates rise to better match market prices), make sure to reevaluate your perspective.

Matching Cash Flow Duration In the preceding analysis, we focused on returns from ten-year bonds. But why ten years and not something longer or shorter? The most theoretically sound approach is to discount a given year's cash flow at a cost of capital that matches the maturity of the cash flow. In other words, year 1 cash flows would be discounted at a cost of capital based on a one-year risk-free rate, while year 10 cash flows would be discounted at a cost of capital based on a ten-year discount rate. To do this, use zero-coupon bonds (known as STRIPS), $^{14}$  rather than Treasury bonds that make interim

13 For ease of implementation, we use a single cost of equity to discount all cash flows. More advanced models split cash flows into two periods: an explicit forecast period and a continuing value. When using two periods, discount the first set of cash flows at observed yields, and create the perpetuity using a synthetic risk-free rate. Although a two-period model uses short-term market data more effectively, the valuation differences between oneand two-period models are relatively small, especially for short forecast windows.

14 Introduced by the U.S. Treasury in 1985, STRIPS stands for "separate trading of registered interest and principal of securities." The STRIPS program enables investors to hold and trade the individual components of Treasury notes and bonds as separate securities.

payments. The interim payments cause their effective maturity to be much shorter than their stated maturity.

Using multiple discount rates is quite cumbersome. Therefore, few practitioners discount each cash flow using its matched bond maturity. Instead, most choose a single rate that best matches the cash flow stream being valued. For U.S.-based corporate valuations, we recommend ten-year government STRIPS (longer-dated bonds such as the 30-year Treasury bond might match the cash flow stream better, but they may not be liquid enough to correctly represent the risk-free rate). When valuing European companies, use ten-year German government bonds, because they trade more frequently and have lower credit risk than bonds of other European countries. Always use government bond yields denominated in the same currency as the company's cash flow to estimate the risk-free rate. Also, make sure the inflation rate embedded in your cash flows is consistent with the inflation rate embedded in the government bond rate you are using.

Do not use a short-term Treasury bill to determine the risk-free rate. When introductory finance textbooks calculate the CAPM, they typically use a short-term Treasury rate because they are estimating expected returns for the next month. Use longer-term bonds; they will be better in line with the time horizon of corporate cash flows.

Closing Thoughts on Expected Market Returns Although many in the finance profession disagree about how to measure the market risk premium, we believe a number around 5 percent is appropriate. Historical estimates found in various textbooks (and locked in the minds of many), which often report numbers near 8 percent, are too high for valuation purposes, because they compare the market risk premium versus Treasury bills (very-short-term bonds) and are biased by the historical strength of the U.S. market.

# Adjust for Industry/Company Risk

Once you've estimated the cost of equity for the market as a whole, adjust it for differences in risk across companies. Keep in mind the discussion from Chapter 4 about the difference between diversifiable and nondiversifiable risk. Only the nondiversifiable risk that investors cannot eliminate by holding a portfolio of stocks is incorporated into the cost of equity.

The most common model used to adjust the cost of equity for differences in risk is the capital asset pricing model (CAPM). Other models include the Fama-French three-factor model and the arbitrage pricing theory (APT). The three models differ primarily in which factors are used to estimate the effect of compensated risk. Despite extensive criticism of the CAPM, we believe that it remains the best model to adjust for risk. Even so, significant judgment is required. A blind application of historical data may result in a cost of equity that is unrealistic.

Capital Asset Pricing Model Because the CAPM is discussed at length in modern finance textbooks,[15] we focus only on the key ideas. The CAPM postulates that the expected rate of return on any security equals the risk-free rate plus the security's beta times the market risk premium:

$$
E (R _ {i}) = r _ {f} + \beta_ {i} [ E (R _ {m}) - r _ {f} ]
$$ where


$$

\begin{array}{l} E \left(R _ {i}\right) = \text {e x p e c t e d} \\ r _ {\mathrm {f}} = \text {r i s k - f r e e r a t e} \\ \beta_ {i} = \text {s e c u r i t y} i ^ {\prime} s \text {s e n s i t i v i t y t o t h e m a r k e t p o r t f i l o} \\ E \left(R _ {m}\right) = \text {e x p e c t e d} \\ \end{array}

$$

In the CAPM, the risk-free rate and the market risk premium, which is defined as the difference between  $E(R_{m})$  and  $r_{f}$ , are common to all companies; only beta varies across companies. Beta represents a stock's incremental risk to a diversified investor, where risk is defined as the extent to which the stock moves up and down in conjunction with the aggregate stock market.

Consider General Mills, a manufacturer of cereals and snack foods, and Micron Technology, a semiconductor manufacturer that produces memory chips. Basic consumer foods purchases are relatively independent of the stock market's value, so the beta for General Mills is low; we estimated it at 0.64.[16] Based on a risk-free rate of 4.3 percent and a market risk premium of 5 percent, the cost of equity for General Mills equals 7.5 percent (see Exhibit 15.4). In contrast, technology companies tend to have high betas. When the economy struggles, the stock market drops, and companies stop purchasing new technology. Thus, the value of Micron Technology is highly correlated with the market's value, and its beta is high. Based on a beta of 1.68, Micron's expected rate of return equals 12.7 percent. Since General Mills offers greater protection against market downturns than Micron Technology does, investors are willing to pay a premium for the stock, driving down the stock's expected return. Conversely, since Micron offers little diversification in relation to the market portfolio, the company must earn a higher return to entice investors.

To apply the CAPM in practice, you must estimate each component. The core question for a particular company's cost of equity is its risk relative to the aggregate market and, consequently, beta. Keep in mind that when you are valuing a company, your objective is not to precisely measure the company's historical beta. Rather, it is to estimate its future beta. Therefore, you must use judgment and common sense, not a purely mechanical approach.

EXHIBIT 15.4 Cost of Equity Using the Capital Asset Pricing Model (CAPM)
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/75ea39cc-041a-437e-9d57-dabed85d38b7/8de8de1fdb8242cca30a9b2ca383bcc8764b592e83de7c8d791e055f31a8922b.jpg)
Source: Refinitiv Thomson One.

We find that individual company betas can be heavily influenced by nonrepeatable events, so we recommend using an industry peer median rather than the historically measured beta for the company in question. Betas can also be affected by unusual events in the stock market, such as the dot-com bubble of the early 2000s or the financial crisis of 2007-2009. By examining how industry betas have changed over time, you can apply judgment about whether betas will revert to their long-term level if they are currently not there.

The remainder of this section describes how to estimate a company's beta step-by-step. First, use regression to estimate the beta for each company in the peer group. Then convert each company's observed beta into an unlevered beta—that is, what the beta would be if the company had no debt. Once you have a collection of betas, examine the sample for a representative beta, such as the median beta. To ensure that the current beta is representative of risk and not an artifact of unusual data, do not rely on a point estimate. Instead, examine the trend over time. We discuss each step next.

Estimating Beta for Each Company in the Industry Sample Set To develop an industry beta, you first need the betas of the company's peer set. Since beta cannot be observed directly, you must estimate its value. The most common regression used to estimate a company's raw beta is the market model:

$$

R _ {i} = \alpha + \beta R _ {m} + \varepsilon

$$

In the market model, the stock's return  $(R_{i})$ , not price, is regressed against the market's return.

Exhibit 15.5 plots 60 months of Costco stock returns versus Morgan Stanley Capital International (MSCI) World Index returns between September 2015

EXHIBIT 15.5 Costco: Stock Returns, 2015-2019 and August 2019. The solid line represents the "best fit" relationship between Costco's stock returns and the stock market. The slope of this line is commonly denoted as beta. For Costco, the company's raw regression beta (slope) is 0.85.
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/75ea39cc-041a-437e-9d57-dabed85d38b7/424059c49268dfeb2f7fbc5405983a5c89fc3f3b10c98e7005d3c2435eeff9f8.jpg)
Source: Refinitiv Thomson One.


But why did we choose to measure Costco returns in months? Why did we use five years of data? And how precise is this measurement? The CAPM is a one-period model and provides little guidance on how to use it for valuation. Yet following certain market characteristics and the results of a variety of empirical tests leads to several guiding conclusions:
- The measurement period for raw regressions should include at least 60 data points (e.g., five years of monthly returns). Rolling betas should be graphed to search for any patterns or systematic changes in a stock's risk.
- Raw regressions should be based on monthly returns. Using more frequent return periods, such as daily and weekly returns, leads to systematic biases.[17]
- Company stock returns should be regressed against a value-weighted, well-diversified market portfolio, such as the MSCI World Index, bearing in mind that this portfolio's value may be distorted if measured during a market bubble.

In the CAPM, the market portfolio equals the portfolio of all assets, both traded (such as stocks and bonds) and untraded (such as private companies and human capital). Since the true market portfolio is unobservable, a proxy is necessary. For U.S. stocks, the most common proxy is the S&P 500, a value-weighted index of large U.S. companies. Outside the United States, financial analysts rely on either a regional index like the MSCI Europe Index or the MSCI World Index, a value-weighted index comprising large stocks from 23 developed countries, including the United States.


Most well-diversified indexes, such as the S&P 500 and MSCI World Index, are highly correlated (the two indexes had a 97 percent correlation between 2000 and 2018). Thus, the choice of index will have only a small effect on beta. Do not, however, use a local market index, which some data services provide. Most countries are heavily weighted in only a few industries and, in some cases, a few companies. Consequently, when measuring beta versus a local index, you are not measuring market-wide systematic risk, but often a company's sensitivity to a particular set of industries.

Beta Smoothing Many academics and beta services also adjust a company's raw beta closer to the mean of all companies, a process called smoothing. Smoothing moves the point estimate of beta toward the overall average. Consider the simple smoothing process used by Bloomberg:

$$

\text {A d j u s t e d B e t a} = 0. 3 3 + 0. 6 7 (\text {R a w B e t a})

$$

This formula smooths raw regression estimates toward 1. For instance, a raw beta of 0.5 leads to an adjusted beta of 0.67, while a raw beta of 1.5 leads to an adjusted beta of 1.34.

Bloomberg's smoothing mechanism dates to Marshall Blume's observation that betas revert to the mean.[18] Today, more advanced smoothing techniques exist.[19] Although the proof is beyond the scope of this book, the following adjustment will reduce beta estimation error:

$$

\beta_ {\mathrm {a d j}} = \left(\frac {\sigma_ {\varepsilon} ^ {2}}{\sigma_ {\varepsilon} ^ {2} + \sigma_ {b} ^ {2}}\right) 1 + \left(1 - \frac {\sigma_ {\varepsilon} ^ {2}}{\sigma_ {\varepsilon} ^ {2} + \sigma_ {b} ^ {2}}\right) \beta_ {\mathrm {r a w}}

$$ where


$\sigma_{\varepsilon} =$  standard error of the regression beta

$\sigma_{b} =$  cross-sectional standard deviation of all betas

The raw regression beta receives the most weight when the standard error of beta from the regression  $(\sigma_{\varepsilon})$  is smallest. In fact, when beta is measured perfectly  $(\sigma_{\varepsilon} = 0)$ , the raw beta receives all the weight. Conversely, if the regression provides no meaningful results ( $\sigma_{\varepsilon}$  is very large), you should set beta equal to 1.0.

Since we are using an industry peer beta for Costco, we did not smooth regression results.

Creating an Industry Beta Estimating beta is an imprecise process. We used historical regression to estimate Costco's beta at 0.85. But the regression's  $R^2$  squared was only 30 percent, and the standard error of the beta estimate was 0.17. Using two standard errors as a guide, a statistician would feel confident Costco's true beta lies between 0.5 and 1.18—hardly a tight range.

To reduce the noise around beta estimates, use industry, rather than company-specific, betas. Companies in the same industry face similar operating risks, so they should have similar operating betas. If estimation errors across companies are uncorrelated, overestimates and underestimates of individual betas will tend to cancel, and an industry median (or average) beta will produce a superior estimate.

Consider two similarly skilled companies competing for a large customer contract. Depending on which company wins the contract, one company's stock price will rise; the other company's stock price will fall. If the market rises during this period, the winning company will have a higher measured beta, and the losing company will have a lower measured beta, even though the contract selection had nothing to do with market performance. Using an industry beta to proxy for company risk lessens the effect of random shocks.

Simply using the median of an industry's raw regression betas overlooks a second important factor: leverage. A company's beta is a function of not only its operating risk, but also the financial risk it takes. Shareholders of a company with more debt face greater risks, and this increase is reflected in beta. Therefore, to compare companies with similar operating risks, you must first strip out the effect of leverage. Only then can you compare betas across an industry.

To undo the effect of leverage (and its tax shield), we rely on the theories of Franco Modigliani and Merton Miller, introduced in Chapter 10. According to Modigliani and Miller, the weighted average risk of a company's financial claims equals the weighted average risk of a company's economic assets. In Appendix C, we present this concept algebraically and rearrange the equation to isolate the risk of equity, as measured by beta. The general equation for the beta of equity is as follows:

$$

\beta_ {e} = \beta_ {u} + \frac {D}{E} (\beta_ {u} - \beta_ {d}) - \frac {V _ {t x a}}{E} (\beta_ {u} - \beta_ {t x a})

$$ where


$\beta_{u} =$  beta of the company's operating assets

$\beta_{d} =$  beta of the company's debt

$\beta_{txa} =$  beta of the company's interest tax shields

$D =$  market value of the company's debt

$E =$  market value of the company's equity

$V_{txa} =$  present value of the company's interest tax shields

To simplify the formula further, if the company maintains a constant ratio of debt to equity, the value of tax shields will fluctuate with the value of operating assets, and the beta of the tax shields  $(\beta_{txa})$  will equal the beta of the unlevered company  $(\beta_u)$ . Setting  $\beta_{txa}$  equal to  $\beta_u$  eliminates the final term:[20]


$$

\beta_ {e} = \beta_ {u} + \frac {D}{E} (\beta_ {u} - \beta_ {d})

$$

Some people further simplify by assuming that the beta of debt is zero. Others use a beta of 0.15 for the debt of investment-grade companies, which is the implied beta based on the spread between investment-grade corporate debt and government debt.

Thus, a company's equity beta equals the company's operating beta (also known as the unlevered beta) times a leverage factor. As leverage rises, so will the company's equity beta. Using this relationship, we can convert equity betas into unlevered betas. Since unlevered betas focus solely on operating risk, they can be averaged across an industry, assuming industry competitors have similar operating characteristics.

To calculate an industry beta, follow these steps. First, calculate the beta for each company in your peer set and unlever each beta at each company's debt-to-equity ratio. Remove any outliers, that is, companies where the beta is unusually far away from those of the other companies; these are typically driven by anomalous events and are unlikely to recur. Calculate a median beta and an average beta of the sample set. Statistically speaking, the sample average will have the smallest estimation error. However, because small-sample averages are heavily influenced by outliers, we prefer the median beta. The final step is to plot the median industry beta over a long period. Look to see if the beta is changing in a predictable way and whether the current beta is the best predictor of future beta for the industry.

Examining the Long-Term Trend To determine the cost of equity for Costco, we create an industry peer beta from a set of discount retailers. We start by estimating the beta for each company using regression analysis (as shown in Exhibit 15.5) and then unlever the results using each company's respective debt-to-equity ratio. Rather than using beta from a single point in time, we look for trends. Unless there is a discernible trend or dramatic change in the industry, we believe the long-run unlevered beta provides a better estimate of future beta than a single point estimate. Therefore, use the long-run mean when relevering the industry beta to the company's target capital structure.

Exhibit 15.6 presents estimates of levered betas for a selection of industries, including retailers. For Costco, we use an unlevered beta of 0.8, at the low end of the historical range. We use this value because discount retailers have been trading recently at a beta well below 1. To estimate the cost of equity for Costco, we lever the unlevered beta to a peer group debt-to-equity ratio. To lever beta, we use the same capital structure that was used to weight debt and equity in the WACC. The levered beta for Costco equals 0.88 (in practice, we often round

EXHIBIT 15.6 Unlevered Beta Estimates by Industry

<table><tr><td>Industry</td><td>Beta range</td></tr><tr><td>Electric utilities</td><td>0.5–0.7</td></tr><tr><td>Healthcare providers</td><td>0.7–0.8</td></tr><tr><td>Integrated oil and gas</td><td>0.7–0.8</td></tr><tr><td>Airlines</td><td>0.7–0.9</td></tr><tr><td>Consumer packaged goods</td><td>0.8–0.9</td></tr><tr><td>Pharmaceuticals</td><td>0.8–1.0</td></tr><tr><td>Retail</td><td>0.8–1.0</td></tr><tr><td>Telecom</td><td>0.8–1.0</td></tr><tr><td>Mining</td><td>0.9–1.0</td></tr><tr><td>Automotive and assemblers</td><td>0.9–1.1</td></tr><tr><td>Chemicals</td><td>0.9–1.1</td></tr><tr><td>IT services, hardware</td><td>0.9–1.1</td></tr><tr><td>Software</td><td>0.9–1.1</td></tr><tr><td>Banking</td><td>1.0–1.1</td></tr><tr><td>Insurance</td><td>1.0–1.1</td></tr><tr><td>Semiconductors</td><td>1.0–1.3</td></tr></table> to one decimal to avoid misleading precision). Using a 4.1 percent risk-free rate and a 5 percent market risk premium, this leads to a cost of equity of 8.5 percent.


In some cases, examining the long-term trend will reveal important insight about beta and market prices. During the dot-com boom of the late 1990s, equity markets rose dramatically, but this increase was confined primarily to extremely-large-capitalization stocks and stocks in the telecommunications, media, and technology (commonly known as TMT) sectors. Historically, TMT stocks contribute approximately 15 percent of the market value of the S&P 500. Between 1998 and 2000, this percentage rose to 40 percent. And as the market portfolio changed, so too did industry betas. Exhibit 15.7 presents the median beta over time for stocks outside TMT, such as food companies, airlines, and pharmaceuticals.[21] The median beta dropped from 1.0 to 0.6 as TMT became a dominant part of the overall market portfolio.

EXHIBIT 15.7 Effect of the Dot-Com Bubble on Beta
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/75ea39cc-041a-437e-9d57-dabed85d38b7/e02f5446c1744bf816801fd20daf5eca6edec13b1138fd5940fa3b2db5c8a640.jpg)
TMT = telecommunications, media, and technology.

With the collapse of the TMT sector in 2001, TMT stocks returned to their original proportion of the overall market. Since beta is computed using 60 months of historical data, however, non-TMT betas still reflected the TMT-heavy market composition. Thus, to value future cash flows after 2001, a more appropriate beta than the 2001 beta would be the one from 1997, when the market composition last matched the post-2001 composition. Remember, the end goal is not to measure beta historically, but rather to use the historical estimate as a predictor of future value. In this case, recent history isn't very useful, so the important lesson is not to overweight it.

Alternatives to CAPM: Fama-French Three-Factor Model In 1992, Eugene Fama and Kenneth French published a paper in the Journal of Finance that received a great deal of attention for its authors' conclusion: "In short, our tests do not support the most basic prediction of the SLB [Sharpe-Lintner-Black] Capital Asset Pricing Model that average stock returns are positively related to market betas."22 Based on prior research and their own comprehensive regressions, Fama and French concluded that equity returns are inversely related to the size of a company (as measured by market capitalization) and positively related to the ratio of a company's book value to its market value of equity.

Given the strength of Fama and French's empirical results, the academic community now measures risk with a model commonly known as the Fama-French three-factor model. With this model, a stock's excess returns are regressed on excess market returns (similar to the CAPM), the excess returns of small stocks over big stocks (commonly referred to as SMB for "small minus big"), and the excess returns of high-book-to-market stocks over low-book-to-market stocks (known as HML for "high minus low").[23] Because the risk premium is determined by a regression on the SMB and HML stock portfolios, a company does not receive a premium for being small. Instead, the company receives a risk premium if its stock returns are correlated with those of small stocks or high-book-to-market companies. The SMB and HML portfolios are meant to replicate unobservable risk factors, factors that cause small companies with high book-to-market values to outperform their CAPM expected returns.

We use the Fama-French three-factor model to estimate Costco's cost of equity in Exhibit 15.8. To determine the company's three betas, we regress Costco's monthly stock returns against the excess market portfolio, SMB, and HML. As the exhibit indicates, the Costco beta on the market portfolio is

21 A. Annema and M. Goedhart, "Better Betas," McKinsey on Finance, no. 6 (Winter 2003): 10-13; and A. Annema and M. Goedhart, "Betas: Back to Normal," McKinsey on Finance, no. 20 (Summer 2006): 14-16.
22 E. Fama and K. French, "The Cross-Section of Expected Stock Returns," Journal of Finance (June 1992): 427-465.
23 For a complete description of the factor returns, see E. Fama and K. French, "Common Risk Factors in the Returns on Stocks and Bonds," Journal of Financial Economics 33 (1993): 3-56.

EXHIBIT 15.8 Costco: Cost of Equity Using the Fama-French Model, August 2019

<table><tr><td>Factor</td><td>Average monthly premium,1\%</td><td>Average annual premium, \%</td><td>Regression coefficient2</td><td>Contribution to expected return, \%</td></tr><tr><td>Market portfolio</td><td></td><td>5.0</td><td>0.90</td><td>4.5</td></tr><tr><td>Small-minus-big (SMB) portfolio</td><td>0.20</td><td>2.4</td><td>(0.33)</td><td>(0.8)</td></tr><tr><td>High-minus-low (HML) portfolio</td><td>0.35</td><td>4.3</td><td>(0.54)</td><td>(2.3)</td></tr><tr><td>Premium over risk-free rate3</td><td></td><td></td><td></td><td>1.4</td></tr><tr><td></td><td></td><td></td><td>Risk-free rate</td><td>4.1</td></tr><tr><td></td><td></td><td></td><td>Cost of equity</td><td>5.5</td></tr></table>

SMB and HML premiums based on average monthly returns data, 1926-2019.
2 Based on monthly returns data, 2014-2019.
3 Summation rounded to one decimal point.

slightly higher in the Fama-French regression than in the market regression presented in Exhibit 15.5, but its levered cost of equity is much lower because Costco is negatively correlated with small companies (remember, small companies outperform big companies on average) and companies with a high book-to-market ratio (high-book-to-market companies outperform low-book-to-market companies on average).

While the Fama-French model outperforms the CAPM in predicting future returns, it is important to use caution when relying on regression results for one company at a point in time. As we discussed earlier in this chapter, regression results for a single company are quite imprecise. To best implement the CAPM, for instance, we recommend using a peer group beta, rather than raw regression results. In the Fama-French model, three beta coefficients exist, and their estimation depends on one another. A set of industry betas cannot be created cleanly. Consequently, the Fama-French model works well for controlling the risk of large historical data sets but may not be appropriate for measuring a single company's cost of equity.

The bottom line? It takes a better theory to kill an existing theory, and we have yet to see the better theory. Therefore, we continue to use the CAPM while keeping a watchful eye on new research in the area.

Alternatives to CAPM: Arbitrage Pricing Theory Another proposed alternative to the CAPM, the arbitrage pricing theory (APT), resembles a generalized version of the Fama-French three-factor model. In the APT, a security's actual returns are generated by  $k$  factors and random noise:

$$

R _ {i} = \alpha + \beta_ {1} F _ {1} + \beta_ {2} F _ {2} + \ldots + \beta_ {k} F _ {k} + \varepsilon

$$ where  $F_{i} =$  return on factor  $i$

Since investors can hold well-diversified factor portfolios, epsilon risk will disappear. In this case, a security's expected return must equal the risk-free rate plus the cumulative sum of its exposure to each factor times the factor's risk premium  $(\lambda)$ :24

$$
E \left(R _ {t}\right) = r _ {f} + \beta_ {1} \lambda + \beta_ {2} \lambda + \ldots + \beta_ {k} \lambda_ {k}
$$

Otherwise, arbitrage (positive return with zero risk) is possible.

On paper, the theory is extremely powerful. Any deviations from the model result in unlimited returns with no risk. In practice, implementation of the model has been tricky, as there is little agreement about how many factors there are, what they represent, and how to measure them. For this reason, use of the APT resides primarily in the classroom.

# ESTIMATING THE AFTER-TAX COST OF DEBT

The weighted average cost of capital blends the cost of equity with the after-tax cost of debt. To estimate the cost of debt for investment-grade companies, use the yield to maturity of the company's long-term, option-free bonds. Multiply your estimate of the cost of debt by 1 minus the marginal tax rate to determine the cost of debt on an after-tax basis.

Technically speaking, yield to maturity is only a proxy for expected return, because the yield is a promised rate of return on a company's debt; it assumes all coupon payments are made on time and the debt is paid in full. An enterprise valuation based on the yield to maturity is therefore theoretically inconsistent, as expected free cash flows should be discounted by an expected return, not a promised yield. For companies with investment-grade debt (debt rated at BBB or better), the probability of default is so low that we believe this inconsistency is immaterial, especially when compared with the estimation error surrounding the cost of equity. Thus, for estimating the cost of debt for a company with investment-grade debt, yield to maturity is a suitable proxy.

For companies with below-investment-grade debt, we recommend one of two methods. If the debt-to-value ratio is uncharacteristically high, estimate the cost of debt using a target capital structure that better reflects the long-term dynamics of the industry. If the company's strategy includes substantial leverage, value the company using adjusted present value (APV) discounted at the unlevered cost of equity, rather than the WACC.

# Yield to Maturity as a Proxy

To solve for yield to maturity (YTM), reverse engineer the discount rate required to set the present value of the bond's promised cash flows equal to its price:

$$
\mathrm {P r i c e} = \frac {\mathrm {C o u p o n}}{(1 + \mathrm {Y T M})} + \frac {\mathrm {C o u p o n}}{(1 + \mathrm {Y T M}) ^ {2}} + \dots + \frac {\mathrm {F a c e} + \mathrm {C o u p o n}}{(1 + \mathrm {Y T M}) ^ {N}}
$$

EXHIBIT 15.9 Costco: Trading Data on Corporate Debt, August 2019

<table><tr><td colspan="6">Bond: 3\% due May 15, 2027</td></tr><tr><td>Trade</td><td>Trade date</td><td>Trade time</td><td>Trade volume, thousands</td><td>Bond price, $</td><td>Yield, \%</td></tr><tr><td>1</td><td>8/30/19</td><td>15:48</td><td>250.0</td><td>106.8</td><td>2.01</td></tr><tr><td>2</td><td>8/30/19</td><td>15:48</td><td>250.0</td><td>106.8</td><td>2.01</td></tr><tr><td>3</td><td>8/30/19</td><td>15:35</td><td>26.0</td><td>107.0</td><td>1.98</td></tr><tr><td>4</td><td>8/30/19</td><td>15:35</td><td>26.0</td><td>107.0</td><td>1.98</td></tr><tr><td>5</td><td>8/30/19</td><td>15:35</td><td>26.0</td><td>107.0</td><td>1.98</td></tr><tr><td>6</td><td>8/30/19</td><td>15:17</td><td>5.0</td><td>106.7</td><td>2.03</td></tr><tr><td>7</td><td>8/30/19</td><td>15:17</td><td>5.0</td><td>106.7</td><td>2.03</td></tr><tr><td>8</td><td>8/30/19</td><td>14:40</td><td>200.0</td><td>106.9</td><td>2.00</td></tr><tr><td>9</td><td>8/30/19</td><td>14:40</td><td>200.0</td><td>106.9</td><td>2.00</td></tr><tr><td>10</td><td>8/30/19</td><td>10:39</td><td>14.0</td><td>106.7</td><td>2.03</td></tr><tr><td></td><td></td><td></td><td>Costco bond yield</td><td>2.0</td><td></td></tr><tr><td></td><td></td><td></td><td>7-year U.S. Treasury yield</td><td>(1.4)</td><td></td></tr><tr><td></td><td></td><td></td><td>Costco default premium</td><td>0.6</td><td></td></tr></table>

Source: Financial Industry Regulatory Authority's Trade Reporting and Compliance Engine (TRACE).

Ideally, yield to maturity should be calculated on liquid, option-free, long-term debt. As discussed earlier in this chapter, short-term bonds do not match the duration of the company's free cash flow. If the bond is rarely traded, the bond price will be outdated, or "stale." Using stale prices will lead to an outdated yield to maturity. Yield to maturity can also be distorted when corporate bonds have attached options, such as callability or convertibility at a fixed price, as their value will affect the bond's price but not its promised cash flows.

In the United States, you can download the yield to maturity for corporate debt free of charge by using the TRACE pricing database.[25] Exhibit 15.9 displays TRACE data for Costco's 3 percent bonds due in May 2027 (the longest duration bond in Costco's capital structure). TRACE reports four data items: when the trade occurred, the size of the trade, the bond price, and the implied yield to maturity. When measuring the yield to maturity, use the largest trades available, as smaller trades are unreliable. The largest trade for Costco's 2027 bond on August 30, 2019, was consummated at 2.01 percent (0.6 percent above the yield for a seven-year U.S. Treasury bond).

For companies with only short-term bonds or bonds that rarely trade, do not use market prices. Instead, use credit ratings to determine yield to maturity. First, determine the company's credit rating on unsecured long-term debt. Next, examine the average yield to maturity on a portfolio of long-term bonds with the same credit rating. Use this yield as a proxy for the company's implied yield on long-term debt.

EXHIBIT 15.10 Yield Spread over U.S. Treasuries by Bond Rating, August 2019

Basis points

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/75ea39cc-041a-437e-9d57-dabed85d38b7/b1d4b1b8fe381d0a3ce95da2366a789458177b3c04dae0b88804bb93f96b6fa3.jpg)

Source: Bloomberg bond portfolio with 10-year maturity.

To determine a company's bond rating, a rating agency like S&P or Moody's will examine the company's most recent financial ratios, analyze the company's competitive environment, and interview senior management. Corporate bond ratings are freely available to the public and can be downloaded from rating-agency websites. For instance, Costco was rated A+ in September 2019 by S&P and Aa3 by Moody's. Once you have a rating, convert the rating into a yield to maturity. Exhibit 15.10 presents the difference in yields between U.S. corporate bonds and U.S. Treasury bonds. The difference is referred to as the yield spread. All quotes are presented in basis points (hundredths of 1 percent).

Because the duration of Costco's longest-maturity debt was less than ten years, we use Costco's rating to determine the cost of debt. To do this, we add the default premium for an  $\mathrm{A + / Aa3}$  bond (0.8 percent) to our estimate of the risk-free rate (4.1 percent), discussed in the previous section. This leads to a pretax cost of debt of 4.9 percent.

Using the company's bond ratings to determine the yield to maturity is a good alternative to calculating the yield to maturity directly from bond prices. Never, however, approximate the yield to maturity using a bond's coupon rate. Coupon rates are set by the company at time of issuance and approximate the yield only if the bond trades near its par value. When valuing a company, you must estimate expected returns relative to today's comparable investments. Thus, when you measure the cost of debt, estimate what a comparable investment would earn if bought or sold today.

# Cost of Below-Investment-Grade Debt

In practice, few financial analysts distinguish between expected and promised returns. But for debt below investment grade, rated BB or below, using the yield to maturity as a proxy for the cost of debt can significantly overestimate the cost of debt.

To understand the difference between expected returns and yield to maturity, consider the following example. You have been asked to value a one-year zero-coupon bond whose face value is 100. The bond is risky; there is a 25 percent chance the bond will default and you will recover only half the final payment. Finally, the cost of debt (not yield to maturity), estimated using the CAPM, equals 6 percent.[26]

Based on this information, you estimate the bond's price by discounting expected cash flows by the cost of debt:

$$
\mathrm {P r i c e} = \frac {E (\mathrm {C a s h F l o w s})}{1 + k _ {d}} = \frac {(. 7 5) (\$ 1 0 0) + (. 2 5) (\$ 5 0)}{1 . 0 6} = \$ 8 2. 5 5
$$

Next, to determine the bond's yield to maturity, place promised cash flows, rather than expected cash flows, into the numerator. Then solve for the yield to maturity:

$$
\text {P r i c e} = \frac {\text {P r o m i s e d C a s h F l o w s}}{1 + \text {Y T M}} = \frac {\mathbb {S} 1 0 0}{1 + \text {Y T M}} = \mathbb {S} 8 2. 5 5
$$

Solving for YTM, the 82.55 price leads to a 21.1 percent yield to maturity—much higher than the 6 percent cost of debt.

Why the large difference between the cost of debt and yield to maturity? Three factors drive the yield to maturity: the cost of debt, the probability of default, and the recovery rate after default. When the probability of default is high and the recovery rate is low, the yield to maturity will deviate significantly from the cost of debt. Thus, for companies with high default risk and low ratings, the yield to maturity is a poor proxy for the cost of debt.

When a company is not investment-grade, start by assessing the company's financial strategy related to capital structure. If the company has uncharacteristically high levels of debt relative to its peers, use the company's stated target or a peer-based capital structure to determine the WACC. Estimate the debt rating your company is likely to generate based on this target capital structure.

If the company purposely maintains a debt rating below investment grade, we do not recommend using the weighted average cost of capital to value the company. Instead, use adjusted present value. The APV model discounts projected free cash flow at the company's industry-based unlevered cost of equity and adds the present value of tax shields. For more on APV valuation, see Chapter 10.

# Incorporating the Interest Tax Shield

To calculate free cash flow (using techniques detailed in Chapters 10 and 11), we compute taxes as if the company were entirely financed by equity. By using all-equity taxes, it is possible to make comparisons across companies and over time, without regard to capital structure. Yet since the tax shield has value, it must be accounted for. In an enterprise DCF using the WACC, the tax shield is valued as part of the cost of capital. To value the tax shield, reduce the cost of debt by the marginal tax rate:

$$
\text {A f t e r - T a x C o s t o f D e b t} = \text {C o s t o f D e b t} \times \left(1 - T _ {m}\right)
$$

Chapters 10 and 11 detail how to calculate the marginal tax rate for historical analysis. For use in the cost of capital, calculate the marginal tax rate in a consistent manner, with one potential modification. Multinational companies often borrow money in high-tax countries to lower their tax burden in those countries. Check the annual report for the location of corporate debt, and, if necessary, use the marginal tax rate where the debt was raised, not the statutory tax rate of the company's home country.

For companies with either low or volatile earnings, the statutory tax rate may overstate the marginal tax rate in future years. According to research by John Graham, the statutory marginal tax rate overstates the future marginal tax rate because of rules related to tax loss carryforwards, tax loss carrybacks, investment tax credits, and alternative minimum taxes.[27] Graham uses simulation to estimate the realizable marginal tax rate on a company-by-company basis. Graham estimates that the marginal tax rate is on average five percentage points below the statutory rate, primarily driven by smaller, less profitable companies.

# FORECASTING TARGET CAPITAL STRUCTURE TO WEIGHT WACC COMPONENTS

With our estimates of the cost of equity and after-tax cost of debt in hand, it is now possible to blend the two expected returns to estimate the WACC. To do this, use the target weights of debt (net of excess cash) and equity to enterprise value (net of excess cash) on a market basis:

$$
\mathrm {W A C C} = \frac {D}{V} k _ {d} (1 - T _ {m}) + \frac {E}{V} k _ {e}
$$

Using market values rather than book values to weight expected returns follows directly from the formula's algebraic derivation (see Appendix B for a derivation of free cash flow and WACC). But consider a more intuitive explanation: the WACC represents the expected return on a different investment with identical risk. Rather than reinvest in the company, management could return capital to investors, who could reinvest elsewhere. To return capital without changing the capital structure, management can repay debt and repurchase shares but must do so at their market value. Conversely, book value represents a sunk cost, so it is no longer relevant.

The cost of capital should rely on a forecast of target weights, rather than current weights, because at any point a company's current capital structure may not reflect the level expected to prevail over the life of the business. The current capital structure may merely reflect a short-term swing in the company's stock price, a swing that has yet to be rebalanced by management. Thus, using today's capital structure may cause you to overestimate (or underestimate) the value of tax shields for companies whose leverage is expected to drop (or rise).

Many companies are already near their target capital structure. If the company you are valuing is not, decide how quickly the company will achieve the target. In the simplest scenario, the company will rebalance immediately and maintain the new capital structure. In this case, using the target weights and a constant WACC (for all future years) will lead to a reasonable valuation. If you expect the rebalancing to happen over a long period of time, then use a different cost of capital each year, reflecting the capital structure at the time. In practice, this procedure is complex; you must correctly model the weights, as well as the changes in the cost of debt and equity (because of increased default risk and higher betas). For extreme changes in capital structure, modeling enterprise DCF using a constant WACC can lead to a substantially erroneous valuation. In this case, do not use WACC. Instead, value the company using adjusted present value.

To estimate the target capital structure from an external perspective, first estimate the company's current market-value-based capital structure. Next, review the capital structure of comparable companies. Finally, examine management's implicit or explicit approach to financing and its implications for the target capital structure. We discuss each step next.

# Current Capital Structure

To determine the company's current capital structure, measure the market value of all claims against enterprise value. For most companies, the claims will consist primarily of traditional debt and equity (this chapter's final section addresses more complex securities). If a company's debt and equity are publicly traded, simply multiply the quantity of each security by its most recent price. Most difficulties arise when securities are not traded and prices cannot be readily observed.

Debt and Debt Equivalents, Net of Excess Cash To value debt and debt equivalents, sum short-term debt, long-term debt, and debt equivalents like unfunded retirement obligations. From this total, subtract excess cash to determine net debt. Debt will be recorded on the balance sheet at book value, which may dif fer from market value. Therefore, use a data service to determine market value when possible. In the case of debt equivalents, the valuation method will depend on the account. We discuss the valuation of debt and debt equivalents next.

Market prices for U.S. corporate debt are reported on the Financial Industry Regulatory Authority (FINRA) TRACE system. As previously shown in Exhibit 15.9, Costco's 2027 bond traded at 106.8, or 106.8 percent of par value, on August 30, 2019. To determine the market value of the bond, multiply 106.8 percent by the bond's book value of 1 billion (found in the Costco annual report); the result is 1.068 billion. Since a bond's price depends on the bond's coupon rate versus its yield, not every Costco bond trades at the same price. For instance, the Costco bond maturing in 2024 closed at 104.0 percent of par on the same day. Consequently, each debt security needs to be valued separately.

If an observable market value is not readily available, value debt securities at book value (referred to as carrying value), or use discounted cash flow. In most cases, the book value reported on the balance sheet reasonably approximates the current market value. This will not be the case, however, if interest rates have changed since the company's last valuation or if the company has entered into financial distress. In these two situations, the current price will differ from carrying value because either expected cash flows have changed or the discount rate has changed from its last valuation.[28] In these situations, value each bond separately by discounting promised cash flows at the appropriate yield to maturity. The size and timing of coupons will be disclosed in the notes of a company's annual report. Determine the appropriate yield to maturity by examining the yields from comparably rated debt with similar maturities.

Next, value debt equivalents, such as operating leases and unfunded retirement obligations. In Chapters 22 and 23, we describe in detail the accounting for operating leases and pensions, including the required adjustments to free cash flow and cost of capital. Consistency between free cash flow and the cost of capital is paramount. Starting in December 2019, the value of operating leases is to be presented directly on the balance sheet; estimation is no longer necessary. To find the value of unfunded retirement obligations, search the pension note for the most recent market value. Although accounting authorities require disclosure of unfunded retirement obligations on the balance sheet, it is often embedded in other accounts.

Equity If the company's common stock is publicly traded, multiply the market price by the number of shares outstanding. The market value of equity should be based on shares outstanding in the capital market. Do not use shares issued, as they may include shares repurchased by the company but not retired. For European companies in particular, you need to be careful in

EXHIBIT 15.11 Median Debt to Value by Industry, 2018 determining the correct amount of shares outstanding because of the way companies sometimes account for treasury shares.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/75ea39cc-041a-437e-9d57-dabed85d38b7/4a82a5fa7a19a8e29d65f5845f62434c0be86ab14dc49000012ec45b31dd4857.jpg)

Note: Calculated using S&P 1500 classified by GICS industry. Market values used when available.

At this point, you may be wondering why you are valuing the company if you are going to rely on the market's value of equity in the cost of capital. Shouldn't you be using the estimated equity value? No. Remember, you are only estimating today's market value to frame management's philosophy concerning capital structure. To value the company, use forward-looking target weights.

For privately held companies, the equity value is unobservable. In this case, you must determine equity value (for the cost of capital) either using a multiples approach or through DCF iteratively. To perform an iterative valuation, assume a reasonable capital structure, and value the enterprise using DCF. Using the estimate of debt-to-enterprise value, repeat the valuation. Continue this process until the valuation no longer materially changes.

# Capital Structure of Peer Companies

To place the company's current capital structure in the proper context, compare its capital structure with those of similar companies. Exhibit 15.11 presents the median debt-to-value levels for ten industries. As the exhibit shows, high-growth industries like software and IT services, especially those with intangible investments, tend to use very little debt. In fact, many companies hold more excess cash than debt, causing the net debt ratio to be negative.[29]

Industries with heavy fixed investment in tangible assets, like mining and utilities, tend to have higher debt levels. In 2018, the median debt-to-value ratio for S&P 1500 nonfinancial companies was 17.6 percent, and the median debt-to-equity ratio was 21.4 percent.

It is perfectly acceptable for a company's capital structure to be different from that of its industry. But you should understand why. For instance, is the company philosophically more aggressive or innovative in the use of debt financing, or is the capital structure only a temporary deviation from a more conservative target? Often, companies finance acquisitions with debt they plan to retire quickly or refinance with a stock offering. Alternatively, is there anything different about the company's cash flow or asset intensity that can explain the difference? Determine the cause for any difference before applying a target capital structure.

# Management's Financing Philosophy

As a final step, review management's historical financing philosophy. Even better, question management outright, if possible. Has the current team been actively managing the company's capital structure? Is the management team aggressive in its use of debt? Or is it overly conservative? Consider Garmin, the personal-technology company that makes GPS devices. Although cash flow is strong and stable, the company rarely issues debt. From a financing perspective, it doesn't need to issue additional securities; investments can be funded with current profits.

# ESTIMATING WACC FOR COMPLEX CAPITAL STRUCTURES

The weighted average cost of capital is determined by weighting each security's expected return by its proportional contribution to total value. For a complex security, such as convertible debt, measuring expected return is challenging. Is a convertible bond similar enough to straight debt, enabling us to use the yield to maturity? Or is it like equity, enabling us to use the CAPM? In actuality, it is neither, so we recommend an alternative method.

If the treatment of hybrid securities will make a material difference in valuation results,[30] we recommend using adjusted present value (APV). In the APV model, enterprise value is determined by discounting free cash flow at the industry-based unlevered cost of equity. The value of incremental cash flows related to financing, such as interest tax shields, is then computed separately.

In some situations, you may still desire an accurate representation of the WACC. In these cases, split hybrid securities into their individual components. For instance, you can replicate a convertible bond by combining a traditional bond with a call option on the company's stock. You can further disaggregate a call option into a portfolio consisting of a risk-free bond and the company's stock. By converting a complex security into a portfolio of debt and equity, you once again have the components required for the traditional cost of capital. The process of using replicating portfolios to value options is discussed in Chapter 39.

# CLOSING THOUGHTS

The cost of capital is one of the most hotly debated topics in the field of finance. While robust statistical techniques have improved our understanding of the issues, a practical measurement of the cost of capital remains elusive. Nonetheless, we believe the steps outlined in this chapter, combined with a healthy perspective of long-term trends, will lead to a cost of capital that is reliable and reasonable. Even so, do not let a lack of precision overwhelm you. A company creates value when ROIC exceeds the cost of capital, and for many of our clients, the variation in ROIC across projects greatly exceeds any variation in the cost of capital. Smart selection of strategies and their corresponding investments based on forward-looking ROIC, not a precise measurement of the cost of capital, often generates most of the impact in day-to-day decision making.

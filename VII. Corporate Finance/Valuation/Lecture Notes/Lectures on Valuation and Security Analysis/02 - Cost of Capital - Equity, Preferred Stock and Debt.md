---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: "Lecture Note 2 Computing Cost of Capital: Cost of Equity, Cost of Preferred Stock and Cost of Debt"
linter-yaml-title-alias: "Lecture Note 2 Computing Cost of Capital: Cost of Equity, Cost of Preferred Stock and Cost of Debt"
---

# Lecture Note 2 Computing Cost of Capital: Cost of Equity, Cost of Preferred Stock and Cost of Debt

# Objective

Introduce students to the mechanics of computing cost of capital.

# Outline
- Define weighted average cost of capital (WACC)
Systematic risk Vs. Idiosyncratic Risk
- Risk-return trade-off among major asset classes
Capital Asset Pricing Model (CAPM)
- Estimating cost of equity: risk-free rate, risk premium, and adjusted beta.
Computing cost of debt
Computing WACC for Smucker.

# Cost of Capital

Cost of capital is also variously referred to as opportunity cost of capital, discount rate, hurdle rate, expected return, and minimum rate of return:

- Cost of debt,  $r_d$ .
- Cost of preferred stock,  $r_p$ .
Cost of equity,  $r_e$ .
- Weighted average cost of capital, WACC, which depends on  $r_d$ ,  $r_p$ , and  $r_e$  in the following manner.

$$
W A C C = r _ {e} \frac {E}{V} + r _ {p} \frac {P}{V} + r _ {d} \left(1 - T _ {c}\right) \frac {D}{V} \tag {1a}
$$ where  $\mathrm{E}$ ,  $\mathrm{P}$ , and  $\mathrm{D}$  are market values of equity, preferred stock, and debt respectively,  $\mathrm{V} = \mathrm{D} + \mathrm{P} + \mathrm{E}$ , and  $\mathrm{T}_{\mathrm{c}}$  is the corporate income tax rate. When there is no preferred stock,  $\mathrm{P} = 0$ , equation (1a) simplifies to the familiar:


$$

W A C C = r _ {e} \frac {E}{V} + r _ {d} \left(1 - T _ {c}\right) \frac {D}{V} \tag {1b}

$$

We will discuss how to estimate each element of the WACC formula.

# Systematic Risk Vs Idiosyncratic Risk

Systematic risk: Risk of a decline in the value of a stock or portfolio due to market-wide movements or general economic conditions.

Example: The decline in NASDAQ and DJIA, increase in energy prices, economic slowdown.

Idiosyncratic Risk: Risk of a decline in the value of a stock or portfolio due to firm-specific events such as (a) accounting irregularities, (b) union problems, (c) product defects, etc.

# Which risk is relevant for cost of capital?
- In perfect markets, theoretically, only systematic risk should matter in computing cost of capital. This is because idiosyncratic risk should be diversifiable.
- Violations of perfect market assumption (E.g.: employees holding too much of their savings in own company stock and not diversifying) could lead idiosyncratic risk to be priced.
- High systematic risk  $\Rightarrow$  High cost of capital.

# Estimating Cost of Equity

There are three approaches to estimating the cost of equity of a firm:

1) The asset pricing approach: The asset pricing approach relies on asset pricing models provided by financial theory. In particular: a) Single factor model: The Capital Asset Pricing Model (CAPM). We will focus only on CAPM.

b) Multi-Factor models.

2) The discounted cash flow (DCF) approach: This approach estimates cost of equity as the internal rate of return that equates the present value of projected free cash flows to equity (FCFE) to current stock price. The cost of equity estimated from the DCF approach is referred to as the implied cost of capital (I will post some of my research in this area).
3) An Integrated approach: This approach uses a DCF model to estimate risk premium on the market and then uses this risk premium along with CAPM to estimate cost of equity of the firm.

We will discuss the asset pricing approach in detail now.

# Major Asset Classes in US: Ibbotson Associates 2012 Yearbook (market results for 1926-2011)

(1) Large company stocks

S&P 500 market index.

(2) Small company stocks

The bottom  $20\%$  of the stocks in NYSE by market capitalization plus AMEX and NASDAQ stocks.

(3) Long-term corporate bonds

High grade AAA corporate bonds.

(4) Long-term and intermediate term US government Bonds (maturity 15 to 30 Years)
(5) US Treasury bills (1 Month maturity)
(6) Inflation.

Note: Including data for 2012-2014 does not change the averages much.

Table 7 Basic Series and Portfolios: Summary Statistics of Annual Total Returns in Percent

<table><tr><td rowspan="2">Asset Class</td><td colspan="3">From 1926 to 2011</td></tr><tr><td>Geometric Mean</td><td>Arithmetic Mean</td><td>Standard Deviation</td></tr><tr><td>Large Company Stocks</td><td>9.8</td><td>11.8</td><td>20.3</td></tr><tr><td>Small Company Stocks</td><td>11.9</td><td>16.5</td><td>32.5</td></tr><tr><td>Long-Term Corporate Bonds</td><td>6.1</td><td>6.4</td><td>8.4</td></tr><tr><td>Long-Term Government Bonds</td><td>5.7</td><td>6.1</td><td>9.8</td></tr><tr><td>Intermediate-Term Government Bonds</td><td>5.4</td><td>5.5</td><td>5.7</td></tr><tr><td>U.S. Treasury Bills</td><td>3.6</td><td>3.6</td><td>3.1</td></tr><tr><td>Inflation</td><td>3.0</td><td>3.1</td><td>4.2</td></tr></table>

Risk-return staircase: Higher systematic risks, higher return in the long-run.

# Real T-Bill return

The real T-bill return is the nominal T-bill return minus the inflation rate. The arithmetic average real T-bill return over the 1926-2011 sample period is  $0.5\%$  per annum. T-bills are good inflation hedge in the long-run!

# Maturity (term) risk premium

(a) Long-term bond prices are more sensitive to interest rate fluctuations than short-term T-bills. This makes long-term bonds more risky for lenders. How?
(b) The term risk premium is the average return on long-term government bonds minus the average return on 1-month US treasury bills. For the 1926-2011 sample period, the term risk premium (arithmetic mean) is  $2.5\%$  per annum.

# Default risk premium

(a) Investors in long-term corporate bonds are subject to default risk.
(b) The default risk premium is the average return on long-term corporate bonds minus the average return on long-term government bonds. For the 1926-2011 sample period, the default risk premium (arithmetic mean) is  $0.3\%$  per annum. Why so low?

# Equity risk premium

(a) The equity risk premium is the average return on large company stocks minus the average return on short-term treasury bills, or long-term government bonds.
(b) For the 1926-2011 sample period, the equity risk premium (arithmetic mean) with respect to short-term treasury bills is  $8.2\%$  per annum. The equity risk premium (arithmetic mean) with respect to long-term government bonds is  $5.7\%$  per annum.
(c) Is  $6 \%$  to  $8 \%$  range appropriate now?

# Small stock premium

(a) The small stock premium is the average return on small company stocks minus the average return on large company stocks.
(b) For the 1926-2011 sample period, the small stock premium (arithmetic mean) is  $4.7\%$  per annum.

# Arithmetic Mean Vs Geometric Mean

Suppose we want to compute the average of annual returns over the last  $T$  years.

# Arithmetic Mean

$$ r _ {A} = \sum_ {t = 1} ^ {T} \frac {r _ {t}}{T} \tag {3}
$$

# Geometric Mean

$$ r _ {G} = \left[ \left(1 + r _ {1}\right) \times \left(1 + r _ {2}\right) \times \dots \times \left(1 + r _ {T}\right) \right] ^ {1 / T} - 1. 0 \tag {4}
$$

# Relation between geometric mean and arithmetic mean

$$
\mathbf {r} _ {\mathrm {G}} \leq \mathbf {r} _ {\mathrm {A}}
$$

$$ r _ {G} \approx r _ {A} - \frac {1}{2} \sigma^ {2} \tag {5}
$$ where  $\sigma$  is the standard deviation of returns.

- Geometric mean is a better measure of past performance.
- Arithmetic mean is a better guide to expected future performance.

# Capital Asset Pricing Model (CAPM) approach

The cost of capital/expected return of an asset ‘i’ is:

$$

\mathrm {E} \left(\mathrm {r} _ {\mathrm {i}}\right) = \mathrm {r} _ {\mathrm {f}} + " \text {R i s k P r e m i u m}"

$$

$r_f$  is the risk-free rate and “Risk Premium” is an appropriate risk premium. CAPM computes the risk premium for the stock/asset as a linear function of the market risk premium:

$$ r _ {e} = r _ {f} + \beta_ {e} \left\lfloor E (r _ {m}) - r _ {f} \right\rfloor \tag {2}
$$

$\mathrm{r_f}$  = The risk-free rate of interest.

$\mathrm{E}(\mathbf{r}_{\mathrm{m}}) - \mathbf{r}_{\mathrm{f}} =$  The risk-premium on the market index,

$\beta_{\mathrm{e}}$  = The beta measures systematic risk.

It measures co-movements between the market and the stock.

$\beta_{\mathrm{e}} > 1$ , riskier than the market portfolio.

$\beta_{\mathrm{e}} < 1$ , less risky than the market portfolio.

$\beta_{\mathrm{e}} = 1$  , as risky as the market portfolio.

$\beta_{\mathrm{e}} = 0$  , risk-free asset.

# Be consistent in choosing risk-free rates and risk premia.

T-bill yield  $\Leftrightarrow$  Risk premium based on T-bill returns.

T-bond yield  $\Leftrightarrow$  Risk premium based on T-bond returns.

# Estimating the risk-free rate
- For long-term projects, it is customary to use the long-term US government bond yield as the risk-free rate.
- You can use maturities ranging from 10 to 30 years. The yield to maturity (YTM) on 10 to 30-Year Treasury bond can be obtained from Yahoo Finance.
- http://finance.yahoo.com/bonds
- July 2015 YTM on the 30-year Treasury bond was  $2.9\%$ .
- July 2015 YTM on the 10-year Treasury bond was  $2.2\%$ .

Risk Premium on the Market,  $E(r_{m} - r_{f})$

<table><tr><td></td><td>Arithmetic Mean</td><td>Geometric Mean</td></tr><tr><td>Risk premium with respect to 1-month T-bills</td><td>8.2\%</td><td>6.2\%</td></tr><tr><td>Risk premium with respect to long-term govt. bonds</td><td>5.7\%</td><td>4.1\%</td></tr></table>

Estimates based on historical data range from  $4.1\%$  to  $8.2\%$ .

# Forward-looking risk premium from a three-stage valuation model

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/589a7289-be2c-43df-a71a-97ca24b50ab2/3d7944685905818eb8c7674b2bef34c7c451f811c2ba9fcc7d0e4bfeaa1f9204.jpg)

Monthly U.S. Market Risk Premium*: Jan 1, 1977 to July 1, 2015

Risk Premium = Implied Cost of Capital - 30-Year Treasury Yield

The monthly risk premium is estimated by first computing an implied cost of capital from a three-stage discounted cash flow model and then subtracting the long-term treasury yield. We will discuss the three-stage valuation model used in this paper in the next Lecture.

# Market Risk Premium - Bottom Line
- An estimate of between 5 and  $6\%$  relative to 30-year bonds seems reasonable.
- For small stocks (less than 1 billion in market cap), we can add an additional risk premium of up to 3\% to the CAPM risk premium.
- Risk premium for small stocks = CAPM risk premium + (a risk premium up to  $3\%$ ).

# Estimating beta from monthly returns

Beta estimates can be obtained from Yahoo Finance. Yahoo uses 24 to 60 months of data to estimate betas.

http://finance.yahoo.com/q/ks?s=SJM+Key+Statistics

The beta-estimation regression is:

$$
\mathbf {R} _ {\mathrm {i t}} = \mathbf {a} + \boldsymbol {\beta} _ {\mathrm {r a w}} \mathbf {R} _ {\mathrm {m t}} + \mathbf {e} _ {\mathrm {t}}
$$

$\mathrm{R}_{\mathrm{it}}$  is a stock's monthly stock return,  $\mathrm{R}_{\mathrm{mt}}$  is the monthly return on S&P 500 index, and  $\mathbf{e}_{\mathrm{t}}$  is the idiosyncratic error.

Beta adjustment formula

$$
\beta_ {\text {a d j u s t e d}} = (1 / 3) + (2 / 3) * \beta_ {\text {r a w}} \tag {6}
$$
- This adjustment takes into account mean-reversion in individual stock betas and the noise in estimating them.
- Raw beta is the historical beta. Adjusted beta is the predicted future beta. Equation (6) is the forecasting equation estimated from past data. Make sure to do the adjustment when using individual stock betas.
- An alternative is to average the betas of similar firms in the industry. If you have more than 10 stocks, no need for the adjustment since portfolio betas are less noisy.

# A checklist for using Beta from online data sources
- Is the Beta computed from monthly returns? Use betas computed from daily returns only as a last resort. How does one estimate betas using daily or weekly returns? We use Dimson beta.
- If it is based on monthly returns, how many months of data were used? At least 24 months of data is preferable.
- Finally, has the Beta been adjusted using the adjustment formula given in equation (6)? If not perform the adjustment.

# Beta sources
- Yahoo Finance, Thomson-Reuters, Compustat, Valueline, Bloomberg all provide betas computed with at least 24 months of data. All these sources use S&P 500 as the market index. Valueline and Bloomberg also provide adjusted betas.

# Computing Cost of Equity for Smucker using CAPM

Smucker is in the Processed & Packaged Goods Industry within the Consumer Goods Sector. The unadjusted beta for SMUCKER is (as of July 8, 2022):

# Source

Yahoo Finance

# Beta

1.21

Adjusted beta:  $1 / 3 + 2 / 3 * 1.21 = 1.14$

Market Risk Premium = 6\%

Yield on 30-Year T-bond = 2.9\%

Using CAPM:

Cost of Equity  $= 2.9 + 1.14^{*}6 = 9.74\%$ .

The market cap for Smucker is 12.98 billion. It is at the higher end of the mid-cap range and lower-end of the large-cap range. It is not a small company. No need to add a small firm premium.

# Cost of Debt

The cost of debt depends on:

- The current level of interest rates.
- The default risk of the company.
- The seniority and maturity of the particular debt issue.

# Long-term debt

Long-term debt is usually in the form of coupon bonds. For traded coupon bonds, the cost of debt is computed as the yield to maturity (IRR) given the current market price.

$$
P _ {B 0} = \sum_ {t = 1} ^ {T} \frac {C _ {t}}{\left(1 + y t m\right) ^ {t}} + \frac {F V}{\left(1 + y t m\right) ^ {T}} \tag {7}
$$ where  $C_t$  is annual or semi-annual coupon payments. If the coupon payments are semi-annual, then  $T$  is 2 times the maturity in years of the bond and  $ytm$  is the semi-annual yield to maturity.


An easier way to obtain yield to maturity for coupon bonds is to use the yield on a portfolio of bonds with the same bond rating (and same maturity) as the issue under consideration. What is yield to worst?

# Cost of debt based on ratings
- Obtain the bond rating for all publicly traded bonds of your company from Moody’s Bond Record or Standard & Poor’s (you can obtain these from BLOOMBERG).
- Also available in the Osiris database (through the online Library link).
- The current yield to maturity for corporate bonds with a given rating and given maturity can be obtained from http://finance.yahoo.com/bonds/composite_bondRates
- Note that the yields reported are promised yields computed based on promised cash flows. However, if the default risk is high, the expected cash flows from the bond will be lower than the promised cash flows. Thus, the expected yield (cost of debt) would be lower than the promised yield for bonds with very high default risk, i.e., junk bonds.
- For most high-grade bonds, the promised yield will be close to the expected yield and, therefore, you can just use the promised yield.
- Note that the coupon rate is not the cost of debt. Coupon rate is a historical rate while cost of debt refers to the current yields.

# Private Placement Debt

The yield on privately placed debt can be based on the ratings of comparable publicly traded bonds (available on Bloomberg).

Note that the yield on privately placed debt should, in general, be higher than comparable publicly traded debt because the privately placed debt is less liquid.

# Bank Debt

For bank debt (which is not usually traded) we can analogously use the yield on comparable publicly traded bonds.

# Short-Term Debt

Permanent short-term debt should be included in computing cost of debt. For short-term debt and floating-rate debt, coupon rates are usually good proxies of yield to maturity.

Note: All permanent interest bearing debt should be included in the cost of debt calculations.

# Weighted Average Cost of Debt

If you have different kinds of debt then you can compute a weighted average cost of debt (for instance) as follows:

$$ r _ {d} = \sum_ {i = 1} ^ {M} \frac {D _ {i}}{D} \times r _ {d i} \tag {2}
$$ where  $D_{i}$  is the market value of the 'i'th debt issue,  $D$  is the sum of market values of all debt,  $M$  is the number of debt issues and  $r_{di}$  is the cost of debt for the 'i'th issue.


Note 1: Debt should include all permanent interest-bearing debt (including long-term lease liabilities), which may include floating rate debt and revolving credit lines.

Note 2: Non-interest bearing current liabilities (accounts payable) and non-interest bearing long-term liabilities (such as deferred taxes) should not be included.

Note 3: Capital Leases (long-term leases that are capitalized on the balance sheet) should be included.

# Cost of Preferred Stock

It is easy to estimate the cost of preferred stock. Preferred stocks have fixed dividend payments with no future growth. Therefore, the cost of preferred stock,  $r_p$ , is given by:

$$ r _ {p} = \frac {D _ {p}}{P _ {p 0}} \tag {3}
$$ where  $D_p$  is the annual fixed preferred dividend and  $P_{p0}$  is the market value of preferred stock (we can approximate this with the book value).


Note that preferred stock is more risky than debt but less risky than equity. Also, note that preferred dividends are not tax-deductible.

The cost of finite-maturity preferred stock can be computed in the same way we compute yield to maturity on a coupon bond.

# Computing weighted average cost of debt for Smucker

<table><tr><td>Year ended April 30, 2015</td><td></td><td></td><td>$MM</td><td colspan="2">As of August 12, 2015</td><td></td><td></td><td></td><td></td></tr><tr><td></td><td>Maturity</td><td>Coupon</td><td>Book Value</td><td>Price</td><td>Market Value</td><td>weight</td><td>Rating</td><td>YTM</td><td>weight*YTM</td></tr><tr><td>1.75\%</td><td>3/15/2018</td><td>1.75\%</td><td>496.9</td><td>100.27</td><td>498.22</td><td>0.082</td><td>A3</td><td>1.64\%</td><td>0.13\%</td></tr><tr><td>2.50\%</td><td>3/15/2020</td><td>2.50\%</td><td>494.3</td><td>99.79</td><td>493.26</td><td>0.081</td><td>A3</td><td>2.55\%</td><td>0.21\%</td></tr><tr><td>3.50\%</td><td>10/15/2021</td><td>3.50\%</td><td>796</td><td>102.78</td><td>818.16</td><td>0.134</td><td>A3</td><td>3.00\%</td><td>0.40\%</td></tr><tr><td>3.00\%</td><td>3/15/2022</td><td>3.00\%</td><td>395.3</td><td>98.21</td><td>388.22</td><td>0.064</td><td>A3</td><td>3.31\%</td><td>0.21\%</td></tr><tr><td>3.50\%</td><td>3/15/2025</td><td>3.50\%</td><td>991.9</td><td>98.41</td><td>976.08</td><td>0.160</td><td>A3</td><td>3.70\%</td><td>0.59\%</td></tr><tr><td>4.25\%</td><td>3/15/2035</td><td>4.25\%</td><td>641.8</td><td>95.13</td><td>610.52</td><td>0.100</td><td>A3</td><td>4.63\%</td><td>0.46\%</td></tr><tr><td>4.38\%</td><td>3/15/2045</td><td>4.38\%</td><td>583.8</td><td>93.30</td><td>544.70</td><td>0.089</td><td>A3</td><td>4.80\%</td><td>0.43\%</td></tr><tr><td>Short-term borrowings</td><td>-----</td><td>0.45\%</td><td>226</td><td>-----</td><td>226.00</td><td>0.037</td><td>A3</td><td>0.45\%</td><td>0.02\%</td></tr><tr><td>Term loan</td><td>3/23/2020</td><td>1.53\%</td><td>1,545</td><td>-----</td><td>1,545</td><td>0.253</td><td>A3</td><td>1.53\%</td><td>0.39\%</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Total</td><td></td><td>2.79\%</td><td>6,170.90</td><td></td><td>6,100.07</td><td>1.00</td><td></td><td></td><td>2.84\%</td></tr><tr><td></td><td></td><td>Wtd. Avg.</td><td></td><td></td><td></td><td></td><td></td><td></td><td>Cost of Debt</td></tr><tr><td></td><td></td><td>Market Value of Debt</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td colspan="3">divided by Book Value of Debt</td><td>1.012</td><td></td><td></td><td></td><td></td><td>*Source Bloomberg</td></tr></table>
- The different maturity debt outstanding can be obtained from the footnotes to the financial statements.
- Market Value = Book Value * Price/100.
- Ratings are from Moody’s where A3 is equivalent to A- by S&P.
- Weighted average cost of debt is  $2.84\%$ .
- The weighted average coupon rate is  $2.79\%$  which is a bit lower than the cost of debt.
- Using coupon interest rate could lead to highly erroneous estimates of cost of debt. The coupon rates reflect historical interest rates that existed at the time the debt was issued.
See Worksheet 12 in Smucker-July 2015 version 7.0.xls.

# Weighted Average Cost of Capital for SMUCKER

From page (18), the cost of equity from CAPM,  $r_e = 9.74\%$ .

Market value of equity as of July 8, 2022 is 12,979 MM.

Book value of interest bearing debt as of July 28, 2014 was about  $6,171 \mathrm{MM}$  with maturities ranging from 1 year to 30 years.

$$

\mathrm {V} = \mathrm {D} + \mathrm {E} = \\ 6, 1 7 1 + \\ 1 2, 9 7 9 = \\ 1 9, 1 5 0 \mathrm {M M}.

$$

$$

\mathrm {D} / \mathrm {V} = 6, 1 7 1 / 1 9, 1 5 0 = 0. 3 2, \mathrm {E} / \mathrm {V} = 0. 6 8.

$$

Weighted average cost of debt is  $2.84\%$

$$

\mathrm{WACC} = 9.74 \% * 0.68 + 2.84 \% *(1 - 0.34)* 0.32 = 7.2 \%

$$

(for tax rate we can use a company’s statutory tax rate inclusive of both state and federal taxes of around  $38\%$  or the effective tax rate of  $34\%$  in 2014).

Note: Book value of debt may not always be a good proxy for market value of debt (even for high grade bonds) since interest rates have fallen drastically in the last 5 years.

For Smucker, however, the ratio of market value of debt to book value of debt is about 1.


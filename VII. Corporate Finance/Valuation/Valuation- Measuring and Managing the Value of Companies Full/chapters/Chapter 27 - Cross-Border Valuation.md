---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Cross-Border Valuation
linter-yaml-title-alias: Cross-Border Valuation
---

# Cross-Border Valuation

To value businesses, subsidiaries, or companies in foreign countries, follow the same principles and methods that we presented in Part Two. Fortunately, accounting issues in cross-border valuations have diminished. Most of the world's major economies have adopted either International Financial Reporting Standards (IFRS) or U.S. Generally Accepted Accounting Principles (GAAP), and these two standards are rapidly converging. Moreover, remember that if you follow Chapter 11's recommendations for rearranging financial statements, you will obtain identical results regardless of which accounting principles you follow in preparing the financial statements.

Nevertheless, the following issues arise in cross-border valuations and still require special attention:

- Forecasting cash flows, whether in foreign currency (the currency of the foreign entity to be valued) or domestic currency (the home currency of the person performing the valuation)
- Estimating the cost of capital
- Applying a domesticor foreign-capital WACC
- Incorporating foreign-currency risk in valuations
- Using translated foreign-currency financial statements

This chapter highlights the steps involved in the special analyses required for each of these issues.

# FORECASTING CASH FLOWS

A company or business unit valuation should always result in the same value regardless of the currency or mix of currencies in which cash flows are projected. To achieve this, you should use consistent monetary assumptions and one of the two following methods for forecasting and discounting cash flows denominated in foreign currency.

1. Spot-rate method. Project foreign cash flows in the foreign currency, and discount them at the foreign cost of capital. Then convert the present value of the cash flows into domestic currency, using the spot exchange rate.
2. Forward-rate method. Project foreign cash flows in the foreign currency, and convert these into the domestic currency, using the relevant forward exchange rates. Then discount the converted cash flows at the cost of capital in domestic currency.

Let's use a simple example to illustrate. Assume you want to estimate the value of a Swiss subsidiary for its German parent company as of January 2020. Exhibit 27.1 shows the cash flow projections for the subsidiary in the foreign currency (Swiss francs).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/69ab1b76-099f-46d2-9341-d47072e8fd93/b02cc60869fd8ba30b9b9d002078b4aa15a0c8c521689e0c1b5eec1dd3a0b17c.jpg)

EXHIBIT 27.1 Cash Flows Projected and Discounted under Consistent Monetary Assumptions

To value the subsidiary using the spot-rate method, simply discount nominal cash flows in Swiss francs (CHF) at the Swiss nominal risk-free interest rates (we assume the subsidiary's beta is zero). The resulting present value is 589.9 Swiss francs. Converting this value at the spot exchange rate of 1.200 Swiss francs per euro results in a discounted-cash-flow (DCF) value of €491.6 million:

<table><tr><td rowspan="2"></td><td rowspan="2"></td><td colspan="6">Year</td></tr><tr><td>2021</td><td>2022</td><td>2023</td><td>2024</td><td>2025</td><td>2026</td></tr><tr><td colspan="8">Spot-rate method</td></tr><tr><td>Cash flow, CHF million</td><td></td><td>103.0</td><td>106.6</td><td>110.9</td><td>115.4</td><td>120.1</td><td>124.9</td></tr><tr><td>Discount factor</td><td></td><td>0.966</td><td>0.929</td><td>0.888</td><td>0.85</td><td>0.813</td><td>0.777</td></tr><tr><td>Present value of cashflow, CHF million</td><td></td><td>99.5</td><td>99.0</td><td>98.6</td><td>98.1</td><td>97.6</td><td>97.1</td></tr><tr><td>DCF value, CHF million</td><td>589.9</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>DCF value, € million</td><td>491.6</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="8">Note: Numbers may not sum due to rounding.</td></tr></table>

The forward-rate method for valuation is more elaborate. The projected nominal cash flows in Swiss francs are now converted to euros on a year-by-year basis, using forward exchange rates and then discounted at nominal euro interest rates. Estimate synthetic forward rates by using interest parity as described in the forward exchange rate section below. You could use market-based forward exchange rates, too, but check for interest-rate parity to ensure consistent valuation results across currencies. We obtain a present value of €491.6 million, exactly the same value as obtained under the spot-rate method:

<table><tr><td rowspan="2"></td><td colspan="6">Year</td></tr><tr><td>2021</td><td>2022</td><td>2023</td><td>2024</td><td>2025</td><td>2026</td></tr><tr><td colspan="7">Forward-rate method</td></tr><tr><td>Cash flow at forward exchange rate, € million</td><td>86.3</td><td>89.8</td><td>94.3</td><td>99.1</td><td>104.1</td><td>109.9</td></tr><tr><td>Discount factor</td><td>0.961</td><td>0.919</td><td>0.871</td><td>0.825</td><td>0.781</td><td>0.737</td></tr><tr><td>Present value of cash flow, € million</td><td>82.9</td><td>82.5</td><td>82.1</td><td>81.7</td><td>81.3</td><td>80.9</td></tr><tr><td>DCF value, € million</td><td>491.6</td><td></td><td></td><td></td><td></td><td></td></tr></table>

Note: Numbers may not sum due to rounding.

The results for the spot-rate and forward-rate valuations are identical because the domestic and foreign cash flows are projected and discounted under consistent monetary assumptions, as shown in Exhibit 27.1. As we explain in more detail in the two following sections, you cannot make independent assumptions for inflation, interest rates, and forward exchange rates across currencies:

- Inflation assumptions underlying cash flow projections in a specific currency must be consistent with inflation assumptions underlying interest rates in that currency.
- Forward exchange rates between two currencies must be consistent with inflation and interest rate differences between those currencies.
- Conversion of cash flow projections from one currency into another should be done at forward exchange rates.

# Inflation and Interest Rates

Inflation and interest rates should be projected in accordance with the Fisher effect. For each currency, the inflation rate  $i_t$  in each year should align with the nominal forward interest rate  $(f_t)$  and real interest rate  $(R_t)$  in that year:

$$
\left(1 + f _ {t}\right) = \left(1 + R _ {t}\right) \times \left(1 + i _ {t}\right)
$$

For example, in Exhibit 27.1, the Swiss forward interest rate in 2022 equals the real interest rate plus the expected inflation rate for that year:

$$
4.03 \% = (1 + 3.00 \%) (1 + 1.00 \%) - 1
$$

The two-year interest rate as of 2020 is the geometric average of the firstand second-year nominal forward interest rates:

$$
3.77 \% = \left[ (1 + 3.52 \%) (1 + 4.03 \%) \right] ^ {1 / 2} - 1
$$

# Forward Exchange Rates

Forward exchange rates should reflect inflation and interest rates following interest rate parity. For currencies with liquid forward markets, arbitrage trading drives forward rates to interest rate parity, but you should always verify that the rates are consistent with inflation and interest rates you are using in your cash flow projections and valuation. The forward foreign-exchange rate in year  $t$ ,  $X_{t}$ , should equal the current spot rate,  $X_{0}$ , multiplied by the ratio of nominal interest rates in the two currencies over the forecast interval,  $t$ :

$$
X _ {t} = X _ {0} \left(\frac {1 + r ^ {\mathrm {F}}}{1 + r ^ {\mathrm {D}}}\right) ^ {t}
$$ where  $r^{\mathrm{F}}$  is the interest rate in foreign currency and  $r^{\mathrm{D}}$  is the interest rate in domestic currency. In our example, the four-year nominal interest rate in Switzerland,  $r^{\mathrm{F}}$ , is 4.16 percent as of January 2020, while the borrowing rate in euros,  $r^{\mathrm{D}}$ , is 4.93 percent for the same period. As the spot exchange rate,  $X_0$ , is 1.200 Swiss francs per euro, the four-year forward rate,  $X_4$ , should be calculated as follows:


$$

X _ {4} = 1.200 \left(\frac {1 + 4.16 \%}{1 + 4.93 \%}\right) ^ {4} = 1.165

$$

The Fisher effect and interest rate parity imply that the ratio of the inflation rates for two currencies over a forecast interval  $t$  should also align with the forward exchange rate in year  $t$ ,  $X_{t}$ , and the current spot rate,  $X_0$ :

$$

X _ {t} = X _ {0} \left[ \frac {\left(1 + i _ {1} ^ {F}\right) \times \left(1 + i _ {2} ^ {F}\right) \times \ldots \times \left(1 + i _ {t} ^ {F}\right)}{\left(1 + i _ {1} ^ {D}\right) \times \left(1 + i _ {2} ^ {D}\right) \times \ldots \times \left(1 + i _ {t} ^ {D}\right)} \right]

$$ where  $i_{t}^{D} =$  inflation rate in year  $t$  in domestic currency

$t_{t}^{F} =$  inflation rate in year  $t$  in foreign currency

In the example from Exhibit 27.1, the four-year forward rate ties not only with the euro and Swiss franc interest rates but also with the inflation rates:

$$
X _ {4} = 1. 2 0 0 \left[ \frac {1 . 0 0 5 \times 1 . 0 1 0 \times 1 . 0 1 5 \times 1 . 0 1 5}{1 . 0 1 0 \times 1 . 0 1 5 \times 1 . 0 2 5 \times 1 . 0 2 5} \right] = 1. 1 6 5
$$

Interest rate parity implies that whether a company borrows in Swiss francs or euros has no impact on value (unless there are any tax implications). You could borrow 1,200 Swiss francs today at 4.16 percent interest per year, totaling 1,412 Swiss francs to repay in 2024. At the four-year forward exchange rate, this amounts to €1,212 (1,412 ÷ 1.165). Alternatively, you could take up a €1,000 loan today at 4.93 percent annual interest in euros, accruing to a total payment of €1,212 in 2024.

# Conversion of Cash Flows

Conversion of future cash flows should be done only at forward exchange rates that are consistent with the interest and inflation rates used in your valuation. Otherwise, valuation results are likely to differ depending on the currency used in the cash flow projections. Do not rely on "forecast" exchange rates for your projections, as these rates could induce a bias in your valuation if they are not consistent with your assumptions on inflation and discount rates.

# ESTIMATING THE COST OF CAPITAL

As when you are forecasting cash flows in different currencies, the most important rule for estimating costs of capital for cross-border valuations is to have consistent monetary assumptions. The expected inflation that determines the foreign-currency cash flows should equal the expected inflation included in the foreign-currency weighted average cost of capital (WACC) through the risk-free rate. Then estimate the cost of capital, depending on the investor's position.

For investors and companies that face little or no restriction on investing outside their home markets, the cost of capital is best estimated following a global capital asset pricing model (CAPM) that applies equally to foreign and domestic investments.

For investors and companies in markets facing capital controls that prevent them from freely investing abroad, we recommend using a so-called local CAPM. Since they can invest in domestic assets only, they should estimate the cost of capital from a domestic perspective, measuring market risk premium and beta versus a (diversified) domestic portfolio.

Many practitioners make ad hoc adjustments to the discount rate to reflect political risk, foreign-investment risk, or foreign-currency risk. We don't recommend this. As the discussion of emerging markets explains in Chapter 35, political or country risk is diversifiable and best handled by using probability-weighted scenarios of future cash flows.

Finally, keep in mind that estimating a cost of capital is not a mechanical exercise with a precise outcome. You should pair the approach outlined in this chapter with sound judgment on long-term trends in interest rates and market risk premiums (see Chapter 15) to obtain a cost of capital estimate that is sufficiently robust for financial decision making. The following sections and Appendix G provide further background for our recommendations and practical guidelines for estimating the cost of capital in foreign currency.

# Global CAPM

For investors and companies able to invest outside their home markets without restrictions, we recommend using a global CAPM. In a global CAPM, there is a single, real-terms risk-free rate, and the market risk premium and beta are measured against a global market portfolio:

$$
E (r _ {j}) = r _ {f} + \beta_ {j, G} [ E (r _ {G}) - r _ {f} ]
$$ where  $r_j =$  return for asset  $j$


$r_f =$  risk-free rate

$\beta_{j,G} =$  beta of asset  $j$  versus global market portfolio  $G$

$r_{G} =$  return for global market portfolio  $G$

Effectively, this means applying the approach described in Chapter 15. The cost of capital for domestic and foreign assets is determined in exactly the same way. What matters is their beta, relative to the global market portfolio, and the market risk premium of that same portfolio, relative to the risk-free rate.

We recommend this approach because capital markets are global. A considerable share of all equity trades is international, and traders, primarily large institutional investors, draw their capital and invest it globally. For example, consider the consumer goods companies Procter & Gamble and Unilever. Both sell their household products around the world and have roughly the same geographic spread. The shares of both are traded in the United States and Europe. The primary difference is that Procter & Gamble is domiciled in the United States, and Unilever is domiciled in the United Kingdom and the Netherlands. With such similar business profiles and investor bases, it would be odd if the two companies had different costs of capital. In general, we find that the domicile of otherwise-comparable companies does not influence their valuation levels. For example, the valuation multiples of U.S. and European pharmaceutical companies are all in a very narrow range around 10 times enterprise value to EBIT, regardless of the company domicile.

As explained in Appendix G, the global CAPM technically holds only if purchasing power parity (PPP) holds, which is the case in the long run.3 Although evidence on PPP has been mixed, academic research has converged around the conclusion that on average, deviations from PPP between currencies are reduced to half their value within three to five years. In other words, exchange rates ultimately adjust for differences in inflation between countries, although not immediately and perfectly.

Estimating Market Risk Premium in Global CAPM In the absence of capital controls for investors, the global market risk premium should be based on a global index that includes most of the world's investment assets. As explained in Chapter 15, the market risk premium for an index can be estimated from its historical returns or from forward-looking models, which by and large lead to similar results. Global indexes rarely go far back in time, so long-term estimates of historical market risk premiums are not readily available. Therefore, we generally resort to specially compiled estimates for the global market or the well-diversified U.S. market as a basis for a global market risk premium. Correlation between the S&P 500 and global market indexes (such as the MSCI World Index) has, so far, been very high, making the S&P 500 a good proxy. Estimates from both sources are typically not far apart, falling in the range of 4.5 to 5.5 percent (also see Chapter 15).


Estimating Beta across Currencies in Global CAPM Since we are using a global market risk premium, a global beta also should be used. Follow the guidelines from Chapter 15 on how to estimate beta. There is one special issue to consider when estimating betas for stocks in international markets: the currency in which returns are measured. For example, should a Swiss investor estimate the beta of IBM based on returns in U.S. dollars or Swiss francs? If you use total returns to estimate beta, the results will be different when returns are expressed in U.S. dollars or Swiss francs, because the dollar-to-franc exchange rate fluctuates over time. But a stock's beta should be the same in all currencies, as any difference would imply differences in the real-terms cost of capital across currencies. The solution is to use excess returns over the risk-free rate, rather than total returns.4 Beta estimates are consistent across currencies when the stock's excess returns are regressed against the excess return of a global market portfolio, as follows for any period ending at time  $t$ :

$$

\left(r _ {j, t} ^ {A} - r _ {f, t} ^ {A}\right) = \beta_ {j} \left(r _ {M, t} ^ {A} - r _ {f, t} ^ {A}\right)

$$ where  $r_{j,t}^{A} =$  realized return for stock  $j$  in currency  $A$

$r_{f,t}^{A} =$  risk-free rate in currency  $A$

$r_{M,t}^{A} =$  realized return for global market portfolio in currency  $A$

If the international Fisher effect and purchasing power parity would hold, differences in international interest rates would reflect differences in inflation across countries, and differences in inflation across countries would also be reflected in changes in exchange rates. In that case, the risk-free rate for each currency should equal the U.S. dollar risk-free return and the change in the exchange rate:

$$
\left(1 + r _ {f, t} ^ {A}\right) = \left(1 + r _ {f, t} ^ {\$}\right) \frac {X _ {t - 1}}{X _ {t}} \tag {27.1}
$$ where  $r_{f,t}^{\S} =$  risk-free rate in U.S. dollars


$X_{t} =$  exchange rate at time  $t$  of currency  $A$  expressed in U.S. dollars

If risk-free rates across currencies are tied to changes in exchange rates in this way, beta estimates based on excess returns will be the same whether we use U.S. dollars, Swiss francs, or any other currency. In practice, the relations will not hold perfectly. To avoid any differences in beta estimates, we recommend using a synthetic risk-free rate for each currency when calculating a stock's excess returns, based on the U.S. risk-free rate and the U.S. dollar exchange rate as defined in Equation 27.1.

Local CAPM We recommend using a local CAPM for investors and companies facing restrictions to investing abroad. In that case, the local market portfolio is the right reference to estimate the cost of capital. As a result, valuations in such restricted markets can be out of line with those in global markets—which is what we have encountered in the past for valuations in, for example, the Indian and some Asian stock markets. The local CAPM is similar to the model described in Chapter 15 but stated in terms of a local risk-free rate, a risk premium of the local market portfolio over that risk-free rate, and a local beta measured against that same local market portfolio:

$$

E \left(r _ {j}\right) = r _ {f, L} + \beta_ {j, L} \left[ E \left(r _ {L}\right) - r _ {f, L} \right]

$$ where  $r_j =$  return for asset  $j$

$r_{f,L} =$  local risk-free rate

$\beta_{j,L} =$  local beta of asset  $j$  versus local market portfolio  $L$

$r_{L} =$  return for local market portfolio  $L$

Some practitioners and academic researchers propose always using a local CAPM, regardless of any investment restrictions for investors and companies.5 Interestingly enough, empirical research finds that the local and global CAPM generate similar results for well-integrated markets (which is in line with theoretical predictions, as explained in Appendix G). For the United States, United Kingdom, Germany, France, and smaller economies such as the Netherlands and Switzerland, cost of capital estimates from a local and a global CAPM are very close to each other.[6]

Nevertheless, we don't recommend the local CAPM approach for integrated markets, for several reasons. When applying the local CAPM for investments in different countries, you need to estimate the local market risk premium and beta for each of these countries instead of only the global market risk premium when applying the global CAPM. Using a local CAPM also means you cannot make a straightforward estimate of a company's beta based on the average of the estimated betas for a sample of industry peers. In Chapter 15, we recommend estimating an industry average beta to reduce its standard error, but if the peers are in different countries, their local betas are not directly comparable. Finally, local risk premiums are typically less stable over time than their aggregate, the global risk premium. See Appendix G for more detail.

# APPLYING A DOMESTICOR FOREIGN-CAPITAL WACC

When cash flows and cost of capital are estimated in a consistent manner, the currency in which the cash flows are denominated will not affect the valuation. This holds regardless of whether you are using the enterprise DCF approach, the adjusted present value (APV) approach, or the cash-flow-to-equity approach.

But you should be aware of some implicit assumptions made when applying the enterprise DCF approach with a weighted average cost of capital (WACC) for cross-border valuations. As explained in Chapter 15, the WACC automatically accounts for the value of interest tax shields in your valuation of free cash flows. When you translate a WACC from one currency into another, you also translate the implied interest tax shields—and the underlying assumptions on debt financing and taxation.[7] As a result, there are two basic choices in applying WACC in cross-border valuations:

1. Domestic-capital WACC. Use a domestic-capital WACC if the cross-border business is financed and taxed at domestic interest and tax rates. As international companies tend to borrow in their parent country at parent company currencies, this is the most common approach. To discount foreign cash flows, convert the domestic-capital WACC into a foreign-currency equivalent WACC by adding the inflation-rate difference between the currencies in each year. $^9$  The valuation result can be converted at the spot rate to obtain a value in domestic currency.
2. Foreign-capital WACC. Use a foreign-capital WACC if cross-border businesses are financed and taxed at foreign rates. Discount the foreign cash flows directly at this WACC, and convert the result into domestic currency at the spot rate. Alternatively, you could convert the foreign-capital WACC and cash flows into domestic currency and value the business using the forward-rate approach, which leads to the same result.

Note that even when converted into the same currency, the domesticand foreign-capital WACCs are not equal and therefore generate different valuation results. For example, consider a WACC estimate for the valuation of a Mexican subsidiary by its German parent company (Exhibit 27.2). For illustration purposes, we assume that the parent and subsidiary have identical business risk ( $k_{u} = 9.0$  percent in euros), tax rates (33 percent), credit quality ( $k_{d} = 5.0$  percent in euros), and target leverage (debt-to-value  $= 33$  percent). The domestic-capital WACC for cash flows in euros is 8.5 percent. When we account for the seven-percentage-point inflation difference between the two currencies, the 8.5 percent WACC is equivalent to 16.0 percent in Mexican pesos. Applying this 16.0 percent WACC assumes that the debt financing and taxation of interest are taking place in euros.

EXHIBIT 27.2 WACC Measures for Mexican Subsidiary of German Parent Company

<table><tr><td colspan="4">Cross-border DCF valuation example, \%</td></tr><tr><td></td><td>Domestic-capital WACC</td><td>Foreign-capital WACC</td><td></td></tr><tr><td>Currency for measuring cash flows</td><td>Euros</td><td>Mexican pesos</td><td></td></tr><tr><td>Cost of debt (kd)</td><td>5.0</td><td>12.3</td><td></td></tr><tr><td>Tax rate on interest</td><td>33.0</td><td>33.0</td><td></td></tr><tr><td>Debt/(debt + equity)</td><td>33.0</td><td>33.0</td><td></td></tr><tr><td>Weighted kd after taxes</td><td>1.1</td><td>2.7</td><td>Difference from tax deduction of interest in foreign versus domestic currency</td></tr><tr><td>Unlevered cost of equity (ku)</td><td>9.0</td><td>16.6</td><td></td></tr><tr><td>Debt/equity</td><td>49.3</td><td>49.3</td><td></td></tr><tr><td>Cost of equity (ke)</td><td>11.0</td><td>18.7</td><td></td></tr><tr><td>Equity/(debt + equity)</td><td>67.0</td><td>67.0</td><td></td></tr><tr><td>Weighted ke</td><td>7.3</td><td>12.5</td><td></td></tr><tr><td>WACC</td><td>8.5</td><td>15.2</td><td></td></tr><tr><td>€ inflation</td><td>1.0</td><td>1.0</td><td></td></tr><tr><td>Peso inflation</td><td>8.0</td><td>8.0</td><td></td></tr><tr><td>Equivalent WACC1</td><td>(in Mex$) 16.0</td><td>(in €) 7.7</td><td></td></tr></table>

${}^{1}$  Equivalent WACC in the other currency after adjusting for the difference in inflation.

9 That is, by adding to the domestic-capital WACC any forward inflation difference between the domestic and foreign currency, as explained in the first section of this chapter.

The foreign-capital WACC is derived by converting the euro-based cost of debt and unlevered cost of equity into pesos ( $k_d = 12.3$  percent, and  $k_u = 16.6$  percent). The foreign-capital WACC based on cash flow in pesos amounts to 15.2 percent, equivalent to 7.7 percent in euros. The difference from the domestic-capital WACC stems from the after-tax cost of debt: tax shields are larger when the debt is financed and taxed in a higher-inflation currency, everything else being equal.

In practice, financing choices for cross-border business operations are far from straightforward, because companies need to take into account many complicating factors. These include differences in international taxation, the cost of local versus international debt funding, the depth of alternative debt markets, the impact on foreign-currency exposure, and others. How to make such international financing choices is beyond the scope of this book. But you should be careful in properly reflecting the outcome of such financing choices via the cost of capital in cross-border valuations. In practice, a domestic-capital WACC is most common—but beware of exceptions.

# INCORPORATING FOREIGN-CURRENCY RISK IN THE VALUATION

Many executives are concerned about the impact that currency fluctuations from foreign investments have on value creation in company results. The analyst community and investors may be wary of the resulting earnings volatility, even though it does not matter for value creation. As a result, many companies still add a premium for currency risk to the cost of capital for foreign investments. This is unnecessary. As we discuss in Appendix G, currency risk premiums in the cost of capital—if any—are likely to be small. There should be no difference between the cost of capital for investments in foreign currency and otherwise identical investments in domestic currency (when you apply consistent monetary assumptions). First, price fluctuations tend to mitigate currency fluctuations because of purchasing power parity. Second, currency risk is largely diversifiable for companies and shareholders. Any remaining risk from currency rate changes is best reflected in the cash flow projections for the investment.

Keep in mind that nominal currency risk is irrelevant if exchange rates immediately adjust to differences in inflation rates. The only relevant currency risk is therefore real currency risk as measured by changes in relative purchasing power. For example, if you held  $100 million of Brazilian currency in 1994, by 2019 it would be worth about$ 25 million in U.S. dollars. Yet if you adjust for purchasing power, the value of the currency has fluctuated around the 100 million mark during the 25-year period. Exhibit 27.3 shows the estimated real effective (inflation-adjusted) exchange rate for the Brazilian currency, which has continued to hover around the 1994 level although the nominal exchange rate to the U.S. dollar plummeted.

EXHIBIT 27.3 Brazilian Inflation-Adjusted Exchange Rate

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/69ab1b76-099f-46d2-9341-d47072e8fd93/441995f273ba762f4d496edd119b3788ade0d6cff0a41bb0709168e8a232bee6.jpg)

Source: Banco Central do Brasil.

Analysis of purchasing power parity (PPP) indicates that, in general, currencies indeed revert to parity levels following changes in relative rates of inflation, albeit not immediately.[10] Short-term deviations from exchange rates at purchasing power parity potentially leave corporations exposed to real-terms currency risk. However, shareholders are typically able to diversify this risk. To see how, consider Exhibit 27.4, which shows the monthly volatility of real exchange rates for a selection of Latin American and Asian currencies, as well as the British pound, and compares them with four currency portfolios. Although some of the currencies are highly volatile, holding a regional portfolio already eliminates a lot of the resulting real currency risk, as shown by the lower volatility of the regional portfolios. Combining a developing-markets portfolio with a British-pounds portfolio diversifies the real risk even further. If shareholders can disperse most real currency risk by diversifying, there is no need for a currency risk premium of any significance in the company's cost of capital.

Sometimes currency exchange rates move fast and far from PPP. As Exhibit 27.3 showed, during a period of just two weeks in 1999, Brazil's currency weakened by more than 50 percent relative to the U.S. dollar in nominal terms. When conducting a valuation in a currency that shows large deviations from PPP, you should account for the risk of a few weeks or even several years passing before the currency moves back toward PPP. Do not adjust the cost of capital, but instead use scenarios to account for this risk, as described in Chapter 4.

10-year monthly real exchange rate  ${}^{1}$  volatility,  $\%$

EXHIBIT 27.4 Diversification of Real Currency Risk

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/69ab1b76-099f-46d2-9341-d47072e8fd93/185854f5f91cf2dbac4acc7c8f75727f719ffc29992b7f5f55e69d350636c69a.jpg)

1 Exchange rates to U.S. dollar.

Source: International Monetary Fund.

If the foreign business being valued has limited international purchases and sales, the impact of any exchange rate convergence toward PPP is likely to be limited as well. In this case, value the business's forecast cash flows using either the spot-rate or forward-rate approach to obtain a valuation in your domestic currency. Apply two different currency scenarios: one using spot and forward rates based on the actual exchange rate, and one based on a deemed convergence of the exchange rate toward PPP. The valuation results in the local currency of the foreign business will be identical for both scenarios. But that won't be the case for the result in your domestic currency, highlighting the exposure to a potential exchange-rate change.

If the business has significant cash flows in international currencies, such as an exporting oil company, exchange-rate adjustments toward PPP will affect cash flows in local currency. Prepare the local cash flow forecasts for the business based on two scenarios: one with convergence of the exchange rate toward PPP, and one without. Then value the cash flows for both currency scenarios using the spot-rate or forward-rate approach. Ensure that the spot and forward rates correctly reflect the assumptions on the convergence of the exchange rate made in your currency scenarios. The result will again be a valuation range in domestic currency, indicating the potential impact of an exchange-rate convergence to PPP.

# USING TRANSLATED FOREIGN-CURRENCY FINANCIAL STATEMENTS

To conduct analysis of the historical performance of foreign businesses, it's best to use the foreign currency. But this is impossible if you are conducting your analysis on an outside-in basis and the business's statements in foreign currency have been translated into its parent company's domestic currency and consolidated in the parent's accounts.

For example, a British subsidiary of a European corporate group will always prepare financial statements in British pounds, and when the European parent company prepares its financial statements, it will translate the British pounds in the statements of the British subsidiary at the current euro-pound exchange rate. However, if the exchange rate fluctuates from year to year, the European parent company will report the same asset at a different euro amount each year, even if the asset's value in British pounds has not changed. This change in the value of the British asset in the parent's reporting currency would suggest a cash expenditure. But no cash has been spent, because the change is solely due to a change in the exchange rate. Therefore, following the guidelines from Chapter 11, you need to make a correction to the cash flow estimated from the financial statements that is equal to the gains or losses from the currency translation.

# Three Approaches

Between them, U.S. GAAP and IFRS sanction three approaches to translating the financial statements of foreign subsidiaries into the parent company's currency: the current method, the temporal method, and the inflation-adjusted current method. Exhibit 27.5 shows the approach recommended by each standard for countries with moderate inflation and for those with hyperinflation.

EXHIBIT 27.5 Currency Translation Approaches

<table><tr><td>Moderate inflation</td><td>Current method</td><td>Current method</td></tr><tr><td>Hyperinflation</td><td>Temporal method</td><td>Inflation-adjusted current method</td></tr><tr><td></td><td>U.S. GAAP</td><td>IFRS</td></tr></table>

Current Method For subsidiaries in moderate-inflation countries, translating the financial statements into the currency of the parent company is straightforward. Both U.S. GAAP and IFRS apply the current method, which requires translating all balance sheet items except equity at the year-end exchange rate. Translation gains and losses on the balance sheet are recognized in the equity account in other comprehensive income (OCI), so they do not affect net income. The average exchange rate for the period is used to translate the income statement.

For subsidiaries in countries with higher inflation rates, IFRS and U.S. GAAP differ in what they define as hyperinflation, whether to adjust statements for inflation, and what approach to use for translating the financial statements. U.S. GAAP defines hyperinflation as cumulative inflation over three years of approximately 100 percent or more. IFRS states that this is one indicator of hyperinflation but suggests considering other factors as well, such as the degree to which local investors prefer to keep wealth in nonmonetary assets or stable foreign currencies.

Temporal Method U.S. GAAP requires companies to use the temporal method for translating financial statements of subsidiaries in hyperinflation countries into the parent's currency. To use this method, you must translate all items in the financial statements at the exchange rate prevailing at the relevant transaction date. This means using historical exchange rates for items carried at historical cost, current exchange rates for monetary items, and year-average or other appropriate exchange rates for other balance sheet items and the income statement. Any resulting currency gains or losses are reported in the equity account of the parent in OCI.

Inflation-Adjusted Current Method The IFRS approach to currency translation for subsidiaries in hyperinflation countries is like that for moderate-inflation countries. The key difference? IFRS requires that the hyperinflation country statements be restated in current (foreign) currency units based on a general price index before they are translated into the parent company's currency. All except some monetary items need to be restated to account for the estimated impact of very high inflation on values over time. The restatement will result in a gain or loss on the subsidiary's income statement. Because the full statements are restated in current (year-end) foreign-currency units, the year-end exchange rate should be used to translate both the balance sheet and the income statement into the parent company's currency. Any translation gains or losses will be included in the equity account of the parent in OCI.

# An Application of the Methods

Exhibit 27.6 shows an example for a U.S. parent company using all three approaches to currency translation. In this example, the exchange rate has changed from 0.95 at the beginning of the year to 0.85 at the end of the year, consistent with 14 percent inflation in the foreign country during the year and U.S. inflation of 2 percent. The average exchange rate for the year is 0.90. As the exhibit illustrates, the three approaches can result in significantly different amounts for net income and equity in the parent company's currency.

Of course, these differences should not affect your estimate of free cash flow for the subsidiary. As a general rule, you should ensure that translation adjustments in components of invested capital are excluded from the investment cash flows. Under IFRS, companies typically specify currency translation adjustments by category of fixed assets, so that you can identify the "cash" investments. Under U.S. GAAP, this information is usually not provided; you will have to add back the translation results to the change in invested capital. For the analysis of historical performance, ratios such as ROIC, operating margin, and capital turnover typically are not significantly distorted under the current method. You do have to adjust growth rates for currency translation effects (see also Chapter 12). For translated financial statements from hyperinflation countries, we recommend you analyze performance based on the original statements or by reversing translations made for the key operating items (following the analysis recommendations found in Chapter 35).

EXHIBIT 27.6 Currency Translation

<table><tr><td rowspan="2"></td><td colspan="3">Current method</td><td colspan="2">Temporal method</td><td colspan="3">Inflation-adjusted currency method</td></tr><tr><td>Local currency</td><td>Foreign-exchange rate</td><td>U.S. $</td><td>Foreign-exchange rate</td><td>U.S. $</td><td>Adjusted</td><td>Foreign-exchange rate</td><td>U.S. $</td></tr><tr><td colspan="9">Balance sheet</td></tr><tr><td>Cash and receivables</td><td>100</td><td>0.85</td><td>85</td><td>0.85</td><td>85</td><td>100</td><td>0.85</td><td>85</td></tr><tr><td>Inventory</td><td>300</td><td>0.85</td><td>255</td><td>0.90</td><td>270</td><td>321</td><td>0.85</td><td>273</td></tr><tr><td>Net fixed assets</td><td>600</td><td>0.85</td><td>510</td><td>0.95</td><td>570</td><td>684</td><td>0.85</td><td>581</td></tr><tr><td></td><td>1,000</td><td>-</td><td>850</td><td>-</td><td>925</td><td>1,105</td><td>-</td><td>939</td></tr><tr><td>Current liabilities</td><td>265</td><td>0.85</td><td>225</td><td>0.85</td><td>225</td><td>265</td><td>0.85</td><td>225</td></tr><tr><td>Long-term debt</td><td>600</td><td>0.85</td><td>510</td><td>0.85</td><td>510</td><td>684</td><td>0.85</td><td>581</td></tr><tr><td colspan="9">Equity</td></tr><tr><td>Common stock</td><td>100</td><td>0.95</td><td>95</td><td>0.95</td><td>95</td><td>100</td><td>0.95</td><td>95</td></tr><tr><td>Retained earnings</td><td>35</td><td>-</td><td>32</td><td>-</td><td>95</td><td>56</td><td>-</td><td>48</td></tr><tr><td>Foreign-currency adjustment</td><td>-</td><td>-</td><td>(12)</td><td>-</td><td>-</td><td>-</td><td>-</td><td>(10)</td></tr><tr><td></td><td>1,000</td><td>-</td><td>850</td><td>-</td><td>925</td><td>1,105</td><td>-</td><td>939</td></tr><tr><td colspan="9">Income statement</td></tr><tr><td>Revenue</td><td>150</td><td>0.90</td><td>135</td><td>0.90</td><td>135</td><td>161</td><td>0.85</td><td>137</td></tr><tr><td>Cost of goods sold</td><td>(70)</td><td>0.90</td><td>(63)</td><td>0.93</td><td>(65)</td><td>(75)</td><td>0.85</td><td>(64)</td></tr><tr><td>Depreciation</td><td>(20)</td><td>0.90</td><td>(18)</td><td>0.95</td><td>(19)</td><td>(23)</td><td>0.85</td><td>(20)</td></tr><tr><td>Other expenses, net</td><td>(10)</td><td>0.90</td><td>(9)</td><td>0.90</td><td>(9)</td><td>(11)</td><td>0.85</td><td>(9)</td></tr><tr><td>Foreign-exchange gain/(loss)</td><td>-</td><td>-</td><td>-</td><td>-</td><td>66</td><td>201</td><td>0.85</td><td>17</td></tr><tr><td>Income before taxes</td><td>50</td><td>-</td><td>45</td><td>-</td><td>108</td><td>72</td><td>-</td><td>61</td></tr><tr><td>Income taxes</td><td>(15)</td><td>0.90</td><td>(13)</td><td>0.90</td><td>(13)</td><td>(16)</td><td>0.85</td><td>(13)</td></tr><tr><td>Net income</td><td>35</td><td>-</td><td>32</td><td>-</td><td>95</td><td>56</td><td>-</td><td>48</td></tr></table>

1 Gain from restatement.

# SUMMARY

In principle, applying the DCF valuation approach to foreign businesses is the same as applying it to domestic companies. But there are some additional issues to consider. You'll want to reflect local accounting in your analysis, following the general guidelines from Chapter 11. Because IFRS and U.S. GAAP are now the dominant standards, accounting issues have become less of a burden.

You can project and discount cash flows for foreign businesses in foreign or domestic currency if you apply consistent assumptions for exchange rates, interest, and inflation and if you correctly apply the spot-rate or forward-rate method of valuation. The approach for estimating the cost of capital should be the same for any company anywhere in the world. With the global integration of capital markets in mind, we recommend using a single real-terms, risk-free rate and market risk premium for companies around the world. For investors and companies facing restrictions on investing abroad, we recommend estimating a local cost of capital. It is not necessary to add separate premiums to the cost of capital to address currency risks. These are best reflected in a scenario-based valuation.

Part Four

# Managing for Value

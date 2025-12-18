---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Investment Valuation
linter-yaml-title-alias: Investment Valuation
---

# Investment Valuation

## III - Valuation Inputs (Chapters 7-12)

---

# Riskless Rates and Risk Premiums

All models of risk and return in finance are built around a rate that investors can make on riskless investments and the risk premium or premiums that investors should charge for investing in the average-risk investment. In the capital asset pricing model (CAPM), where there is only one source of market risk captured in the market portfolio, this risk premium becomes the premium that investors would demand when investing in that portfolio. In multifactor models, there are multiple risk premiums, each one measuring the premium demanded by investors for exposure to a specific market risk factor. This chapter examines how best to measure a riskless rate and to estimate a risk premium or premiums for use in these models.

As noted in Chapter 4, risk is measured in terms of default risk for bonds, and this default risk is captured in a default spread that firms have to pay over and above the riskless rate. This chapter closes by considering how best to estimate these default spreads and the factors that may cause these spreads to change over time.

# THE RISK-FREE RATE

Most risk and return models in finance start off with an asset that is defined as risk free, and use the expected return on that asset as the risk-free rate. The expected returns on risky investments are then measured relative to the risk-free rate, with the risk creating an expected risk premium that is added to the risk-free rate. But what makes an asset risk free? And what do we do when we cannot find such an asset? These are the questions that will be dealt with in this section.

# Requirements for an Asset to Be Risk Free

Chapter 4 considers some of the requirements for an asset to be risk free. In particular, an asset is risk free if we know the expected returns on it with certainty (i.e., the actual return is always equal to the expected return). Under what conditions will the actual returns on an investment be equal to the expected returns? There are two basic conditions that have to be met. The first is that there can be no default risk. Essentially, this rules out any security issued by a private entity, since even the largest and safest ones have some measure of default risk. The only securities that have a chance of being risk free are government securities, not because governments are better run than corporations, but because they usually control the printing of currency. At least in nominal terms, they should be able to fulfill their promises. Even this assumption, straightforward though it might seem, does not always hold up, especially when governments refuse to honor claims made by previous regimes and when they borrow in currencies other than their own.

There is a second condition that riskless securities need to fulfill that is often forgotten. For an investment to have an actual return equal to its expected return, there can be no reinvestment risk. To illustrate this point, assume that you are trying to estimate the expected return over a five-year period and that you want a risk-free rate. A six-month Treasury bill rate, while default free, will not be risk free, because there is the reinvestment risk of not knowing what the Treasury bill rate will be in six months. Even a five-year Treasury bond is not risk free, since the coupons on the bond will be reinvested at rates that cannot be predicted today. The risk-free rate for a five-year time horizon has to be the expected return on a default-free (government) five-year zero coupon bond. This clearly has painful implications for anyone doing corporate finance or valuation, where expected returns often have to be estimated for periods ranging from 1 to 10 years. A purist's view of risk-free rates would then require different risk-free rates for each period, and different expected returns.

As a practical compromise, however, it is worth noting that the present value effect of using year-specific risk-free rates tends to be small for most well-behaved term structures. In these cases, we could use a duration matching strategy, where the duration of the default-free security used as the risk-free asset is matched up to the duration of the cash flows in the analysis. If, however, there are very large differences, in either direction, between short-term and long-term rates, it does pay to stick with year-specific risk-free rates in computing expected returns.

# Practical Implications When a Default-Free Entity EXISTS

In most developed markets, where the government can be viewed as a default-free entity, at least when it comes to borrowing in the local currency, the implications are simple. When doing investment analysis on longer-term projects or valuations, the risk-free rate should be the long-term government bond rate. If the analysis is shorter-term, the short-term government security rate can be used as the risk-free rate. The choice of a risk-free rate also has implications for how risk premiums are estimated. If, as is often the case, historical risk premiums are used, where the excess return earned by stocks over and above a government security rate over a past period is used as the risk premium, the government security chosen has to be the same one as that used for the risk-free rate. Thus, the historical risk premium used in the United States should be the excess return earned by stocks over Treasury bonds, and not Treasury bills, for purposes of long-term analysis.

# Cash Flows and Risk-Free Rates: The Consistency Principle

The risk-free rate used to come up with expected returns should be measured consistently with how the cash flows are measured. Thus, if cash flows are estimated in nominal U.S. dollar terms, the risk-free rate will be the U.S. Treasury bond rate. This also implies that it is not where a firm is domiciled that determines the choice of a risk-free rate, but the currency in which the cash flows on the firm are estimated. Thus, Nestlé can be valued using cash flows estimated in Swiss francs, discounted back at an expected return estimated using a Swiss long-term government bond rate as the riskfree rate, or it can be valued in British pounds, with both the cash flows and the risk-free rate being in British pounds. Given that the same firm can be valued in different currencies, will the final results always be consistent? If we assume purchasing power parity, then differences in interest rates reflect differences in expected inflation. Both the cash flows and the discount rate are affected by expected inflation; thus, a low discount rate arising from a low risk-free rate will be exactly offset by a decline in expected nominal growth rates for cash flows, and the value will remain unchanged.

If the difference in interest rates across two currencies does not adequately reflect the difference in expected inflation in these currencies, the values obtained using the different currencies can be different. In particular, firms will be valued more highly when the currency used is the one with low interest rates relative to inflation. The risk, however, is that the interest rates will have to rise at some point to correct for this divergence, at which point the values will also converge.

# Real versus Nominal Risk-Free Rates

Under conditions of high and unstable inflation, valuation is often done in real terms. Effectively, this means that cash flows are estimated using real growth rates and without allowing for the growth that comes from price inflation. To be consistent, the discount rates used in these cases have to be real discount rates. To get a real expected rate of return, we need to start with a real risk-free rate. While government bills and bonds offer returns that are risk free in nominal terms, they are not risk free in real terms, since expected inflation can be volatile. The standard approach of subtracting an expected inflation rate from the nominal interest rate to arrive at a real risk-free rate provides at best an estimate of the real risk-free rate.

Until recently, there were few traded default-free securities that could be used to estimate real risk-free rates, but the introduction of inflation-indexed Treasuries (TIPs) has filled this void. An inflation-indexed Treasury security does not offer a guaranteed nominal return to buyers, but instead provides a guaranteed real return. Thus, an inflation-indexed Treasury that offers a 3 percent real return will yield approximately 7 percent in nominal terms if inflation is 4 percent and only 5 percent in nominal terms if inflation is only 2 percent.

The only problem is that real valuations are seldom called for or done in the United States, which has historically had stable and low expected inflation. The markets where we would most need to do real valuations, unfortunately, are markets without inflation-indexed default-free securities. The real risk-free rates in these markets can be estimated by using one of two arguments:

1. The first argument is that as long as capital can flow freely to those economies with the highest real returns, there can be no differences in real risk-free rates across markets. Using this argument, the real risk-free rate for the United States, estimated from the inflation-indexed Treasury, can be used as the real risk-free rate in any market.
2. The second argument applies if there are frictions and constraints in capital flowing across markets. In that case, the expected real return on an economy, in the long term, should be equal to the expected real growth rate, again in the long term, of that economy, for equilibrium. Thus, the real risk-free rate for a mature economy like Germany should be much lower than the real risk-free rate for a economy with greater growth potential, such as Hungary's.

# Risk-Free Rates When There Is No Default-Free Entity

Our discussion, hitherto, has been predicated on the assumption that governments do not default, at least on local borrowing. There are many emerging market economies and quite a few developed markets where this assumption might not be viewed as reasonable. Governments in these markets are perceived as capable of defaulting even on local borrowing. When this is coupled with the fact that some governments do not borrow long-term in the local currency, there are scenarios where obtaining a local risk-free rate, especially for the long term, becomes difficult. We consider four alternatives in the section following.

Local Currency Government Bond If the government issues long-term bonds denominated in the local currency and these bonds are traded, you can use the interest rates on these bonds as a starting point for estimating the risk-free rate in that currency. In early 2011, for instance, the Indian government issued 10-year rupee-denominated bonds that were trading at a yield of 8 percent. This rate, though, is not a risk-free rate, because investors perceive default risk in the Indian government. To back out how much of the yield can be attributed to the default risk, we used the local currency sovereign rating of Ba2 assigned to India by Moody's and estimated a default spread of 2.40 percent for that rating.

The resulting risk-free rate in rupees is:

$$
\begin{array}{l} \text {R i s k - f r e e r a t e i n r u p e e s} = \text {G o v e n m e n t b o n d r a t e} - \text {D e f a u l t s p r e a d} \\ = 8.00 \% -2.40 \% = 5.60 \% \\ \end{array}
$$

It is true that this number assumes that the ratings agency is correct in its assessment of sovereign risk and that the default spread based on the rating is correct. An alternative approach to estimating default spreads that has become available in recent years is the credit default swap (CDS) market, where investors can buy insurance against default. While there were no traded CDSs on India in early 2011, there were CDS contracts traded on approximately 60 countries in March 2011. The Brazil CDS in March 2011 was trading at 75 basis points (0.75 percent), which can be used in conjunction with the 10-year Brazilian real-denominated government bond rate of 8.25 percent to compute the risk-free rate in Brazilian real (BR):

$$
\begin{array}{l} \text {R i s k - f r e e r a t e i n B R} = \text {G o v e n m e n t b o n d r a t e i n B R} - \text {D e f a u l t s p r e a d} \\ = 8.25\% -0.75\% \\ \end{array}
$$

The CDS market does provide a more dynamic and updated measure of the default spread but, being a market-traded number, is much more volatile. It also provides a dollar or euro based spread which may not apply to the local currency bonds.

Build-Up Approach There are countries where either the government does not issue bonds denominated in the local currency or these bonds do not trade. In this case, one alternative is to build up to a risk-free rate from fundamentals:

Build-up risk-free rate  $=$  Expected inflation + Expected long-term real growth rate

Since the risk-free rate in any currency can be written as the sum of expected inflation in that currency and the expected real rate, we can try to estimate the two components separately. To estimate expected inflation, we can start with the current inflation rate and extrapolate from that to expected inflation in the future. For the real rate, we can use the rate on the inflation-indexed U.S. Treasury bond rate, with the rationale that real rates should be the same globally. In 2011, for instance, adding the expected inflation rate of 6 percent in India to the interest rate of 1 percent on the inflation-indexed U.S. Treasury would have yielded a risk-free rate of 7 percent in Indian rupees.

Derivatives Markets Forward and futures contracts on exchange rates provide information about interest rates in the currencies involved, since interest rate parity governs the relationship between spot and forward rates. For instance, the forward rate between the Thai baht and the U.S. dollar can be written as follows:

$$
\text {F o r w a r d} \mathrm {r a t e} _ {\mathrm {b a h t}, \mathbb {S}} ^ {\mathrm {t}} = \text {S p o t} \mathrm {r a t e} _ {\mathrm {b a h t}, \mathbb {S}} = \frac {(1 + \text {I n t e r s t} \mathrm {r a t e} _ {\mathrm {T h a i b a h t}}) ^ {\mathrm {t}}}{(1 + \text {I n t e r s t} \mathrm {r a t e} _ {\mathrm {U . S . d o l l a r}}) ^ {\mathrm {t}}}
$$

For example, if the current spot rate is 38.10 Thai baht per U.S. dollar, the 10-year forward rate is 61.36 baht per dollar, and the current 10-year U.S. Treasury bond rate is 5 percent, the 10-year Thai risk-free rate (in nominal baht) can be estimated as follows:

$$
6 1. 3 6 = 3 8. 1 0 \frac {\left(1 + \text {I n t e r e s t r a t e} _ {\text {T h a i b a h t}}\right) ^ {1 0}}{\left(1 . 0 5\right) ^ {1 0}}
$$

Solving for the Thai interest rate yields a 10-year risk-free rate of 10.12 percent. The biggest limitation of this approach, however, is that forward rates are difficult to come by for periods beyond a year for many of the emerging markets, where we would be most interested in using them.

Risk-Free Rate Conversion If the only reason for differences in risk-free rates in different currencies is expected inflation, you can convert the risk-free rate in a mature market currency (U.S. dollars, euros) into a risk-free rate in an emerging market currency, using differences in inflation across currencies.

$$
\mathrm {r} _ {\text {l o c a l c u r r e n c y}} = \left(1 + \mathrm {r} _ {\text {f o r e i g n c u r r e n c y}}\right) \times \frac {1 + \text {E x p e c t e d i n f l a t i o n} _ {\text {l o c a l c u r r e n c y}}}{1 + \text {E x p e c t e d i n f l a t i o n} _ {\text {f o r e i g n c u r r e n c y}}} - 1
$$

For example, assume that the risk-free rate in U.S. dollars is 4 percent and that the expected inflation rate in Indonesian rupiah is 11 percent (compared to the 2 percent inflation rate in U.S. dollars). The Indonesian risk-free rate can be written as follows:

$$
\mathrm {Cost} \text {of} \mathrm {capital} _ {\mathrm {rupiah}} = 1.04 \times \frac {1.11}{1.02} - 1 = 0.131764 \text {or} 13.18 \%
$$

To make this conversion, we still have to estimate the expected inflation in the local currency and the mature market currency.

What if none of these choices listed work? In other words, what if the government has no local currency bonds outstanding, there are no forward or futures contract on the currency, and/or expected inflation in the local currency is difficult to estimate? Faced with these problems, it is best to switch and do your valuation in a different currency. Thus, rather than value a Nigerian or Vietnamese company in the local currency, you would value it in euros or dollars. You will still have to estimate expected exchange rates in the future in order to convert local currency cash flows to foreign currency cash flows, but that may be a more manageable exercise.

# EQUITY RISK PREMIUM

The notion that risk matters, and that riskier investments should have a higher expected return than safer investments to be considered good investments, is intuitive. Thus, the expected return on any investment can be written as the sum of the risk-free rate and an extra return to compensate for the risk. The disagreement, in both theoretical and practical terms, remains on how to measure this risk, and how to convert the risk measure into an expected return that compensates for risk. This section looks at the estimation of an appropriate equity risk premium (ERP) to use in risk and return models, in general, and in the capital asset pricing model, in particular.

# Competing Views on Risk Premiums

In Chapter 4, we considered several competing models of risk ranging from the capital asset pricing model to multifactor models. Notwithstanding their different conclusions, they all share some common views about risk. First, they all define risk in terms of variance in actual returns around an expected return; thus, an investment is riskless when actual returns are always equal to the expected return. Second, they all argue that risk has to be measured from the perspective of the marginal investor in an asset, and that this marginal investor is well diversified. Therefore, the argument goes, it is only the risk that an investment adds on to a diversified portfolio that should be measured and compensated. In fact, it is this view of risk that leads models of risk to break the risk in any investment into two components. There is a firm-specific component that measures risk that relates only to that investment or to a few investments like it, and a market component that contains risk that affects a large subset or all investments. It is the latter risk that is not diversifiable and should be rewarded.

While all risk and return models agree on this fairly crucial distinction, they part ways when it comes to how to measure this market risk. Table 7.1 summarizes four models and the way each model attempts to measure risk.

In the first three models, the expected return on any investment can be written as:

$$
\text {E x p e c t e d} = \text {R i s k - f r e e} + \sum_ {\mathrm {j} = 1} ^ {\mathrm {j} = \mathrm {k}} \beta_ {\mathrm {j}} (\text {R i s k} \text {p r e m i u m} _ {\mathrm {j}})
$$ where  $\beta_{j} =$  Beta of investment relative to factor j Risk premium  $j =$  Risk premium for factor j


TABLE 7.1 Comparing Risk and Return Models

<table><tr><td>Model</td><td>Assumptions</td><td>Measure of Market Risk</td></tr><tr><td>Capital asset pricing model (CAPM)</td><td>There are no transaction costs or private information. Therefore, the diversified portfolio includes all traded investments, held in proportion to their market value.</td><td>Beta measured against this market portfolio</td></tr><tr><td>Arbitrage pricing model (APM)</td><td>Investments with the same exposure to market risk have to trade at the same price (no arbitrage).</td><td>Betas measured against multiple (unspecified) market risk factors</td></tr><tr><td>Multifactor model</td><td>There is the same no-arbitrage assumption as with the APM.</td><td>Betas measured against multiple specified macroeconomic factors</td></tr><tr><td>Proxy model</td><td>Over very long periods, higher returns on investments must be compensation for higher market risk.</td><td>Proxies for market risk, for example, include market capitalization and price-book value ratios.</td></tr></table>

Note that in the special case of a single-factor model, like the CAPM, each investment's expected return will be determined by its beta relative to the risk premium for that factor.

Assuming that the risk-free rate is known, these models all require two inputs. The first is the beta or betas of the investment being analyzed, and the second is the appropriate risk premium(s) for the factor or factors in the model. The issue of beta estimation is examined in the next chapter, this section concentrates on the measurement of the risk premium.

What We Would Like to Measure As far as the risk premium is concerned, we would like to know for each factor what investors, on average, require as a premium over the risk-free rate for an investment with average risk.

Without any loss of generality, let us consider the estimation of the beta and the equity risk premium in the capital asset pricing model. Here, the risk premium should measure what investors, on average, demand as extra return for investing in the market portfolio relative to the risk-free asset.

# Historical Risk Premiums

In practice, we usually estimate the risk premium by looking at the historical premium earned by stocks over default-free securities over long time periods. The historical premium approach is simple. The actual returns earned on stocks over a long time period are estimated, and then compared to the actual returns earned on a default-free (usually government) security. The difference, on an annual basis, between the two returns is computed and represents the historical risk premium. This approach might yield reasonable estimates in markets like the United States, with a large and diversified stock market and a long history of returns on both stocks and government securities. However, they yield meaningless estimates for the risk premiums in other countries, where the equity markets represent a small proportion of the overall economy and the historical returns are available only for short periods.

While users of risk and return models may have developed a consensus that historical premium is, in fact, the best estimate of the risk premium looking forward, there are surprisingly large differences in the actual premiums we observe being used in practice. For instance, the risk premium estimated in the U.S. markets by different investment banks, consultants, and corporations range from 3 percent at the lower end to 12 percent at the upper end. Given that they almost all use the same database of historical returns, provided by Ibbotson Associates,[6] summarizing data from 1926, these differences may seem surprising. There are, however, three reasons for the divergence in risk premiums:

1. Time period used. While there are many who use all the data going back to 1926 (or earlier), there are almost as many using data over shorter time periods, such as 50, 20, or even 10 years, to come up with historical risk premiums. The rationale presented by those who use shorter periods is that the risk aversion of the average investor is likely to change over time, and that using a shorter time period provides a more updated estimate. This has to be offset against a cost associated with using shorter time periods, which is the greater noise in the risk premium estimate. In fact, given the annual standard deviation in stock prices between 1926 and 2010 of 20 percent, the standard error associated with the risk premium estimate can be estimated for different estimation periods in Table 7.2.


Note that to get reasonable standard errors, we need very long time periods of historical returns. Conversely, the standard errors from 10-year and 20-year estimates are likely to be almost as large as or larger than the actual risk premium estimated. This cost of using shorter time periods seems, in our view, to overwhelm any advantages associated with getting a more updated premium.

2. Choice of risk-free security. The Ibbotson database reports returns on both Treasury bills (T-bills) and Treasury bonds (T-bonds), and the risk premium for stocks can be estimated relative to each. Given that the yield curve in the United States has been upward-sloping for most of the past seven decades, the risk premium is larger when estimated relative to shorter-term government securities (such as Treasury bills). The risk-free rate chosen in computing the premium has to be consistent with the risk-free rate used to compute expected returns. Thus, if the Treasury bill rate is used as the risk-free rate, the premium has to be the premium earned by stocks over that rate. If the Treasury bond rate is used as the risk-free rate, the premium has to be estimated relative to that rate. For the most part, in corporate finance and valuation, the risk-free rate will be a long-term default-free Treasury (government) bond rate and not a Treasury bill rate. Thus, the risk premium used should be the premium earned by stocks over Treasury bonds.

3. Arithmetic and geometric averages. The final sticking point when it comes to estimating historical premiums relates to how the average returns on stocks, Treasury bonds, and Treasury bills are computed. The arithmetic average return measures the simple mean of the series of annual returns, whereas the geometric

TABLE 7.2 Standard Errors in Risk Premium Estimates

<table><tr><td>Estimation Period</td><td>Standard Error of Risk Premium Estimate</td></tr><tr><td>5 years</td><td>20\%/√5 = 8.94\%</td></tr><tr><td>10 years</td><td>20\%/√10 = 6.32\%</td></tr><tr><td>25 years</td><td>20\%/√25 = 4.00\%</td></tr><tr><td>50 years</td><td>20\%/√50 = 2.83\%</td></tr></table> average looks at the compounded return. $^9$  Conventional wisdom argues for the use of the arithmetic average. In fact, if annual returns are uncorrelated over time, and our objective were to estimate the risk premium for the next year, the arithmetic average is the best unbiased estimate of the premium. In reality, however, there are strong arguments that can be made for the use of geometric averages. First, empirical studies seem to indicate that returns on stocks are negatively correlated over time. $^{10}$  Consequently, the arithmetic average return is likely to overstate the premium. Second, while asset pricing models may be single-period models, the use of these models to get expected returns over long periods (such as 5 or 10 years) suggests that we are interested in returns over longer periods. In this context, the argument for geometric average premiums becomes even stronger.


In summary, the risk premium estimates vary across users because of differences in time periods used, the choice of Treasury bills or bonds as the risk-free rate and the use of arithmetic averages as opposed to geometric averages. The effect of these choices is summarized in Table 7.3, which uses returns from 1928 to 2010. Note that the premiums can range from  $-4.11$  percent to  $7.62$  percent, depending on the choices made. In fact, these differences are exacerbated by the fact that many risk premiums that are in use today were estimated using historical data three, four, or even 10 years ago. If forced to choose an equity risk premium on this table, we would be inclined to go with 4.31 percent, the geometric average risk premium for stocks over Treasury bonds from 1928 to 2010.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/3bffc0c30768d6671278a36144f9858a783e4a1d6eff458351a0bbf4098dfc5c.jpg)

# histretSP.xls: There is a dataset on the Web that summarizes historical returns on stocks, T-bonds, and T-bills in the United States going back to 1928.

TABLE 7.3 Historical Risk Premiums for the United States

<table><tr><td></td><td colspan="2">ERP: Stocks minus Treasury Bonds</td><td colspan="2">ERP: Stocks minus Treasury Bonds</td></tr><tr><td></td><td>Arithmetic</td><td>Geometric</td><td>Arithmetic</td><td>Geometric</td></tr><tr><td rowspan="2">1928–2010</td><td>7.62\%</td><td>5.67\%</td><td>6.03\%</td><td>4.31\%</td></tr><tr><td>(2.25\%)</td><td></td><td>(2.38\%)</td><td></td></tr><tr><td rowspan="2">1960–2010</td><td>5.83\%</td><td>4.44\%</td><td>4.13\%</td><td>3.09\%</td></tr><tr><td>(2.42\%)</td><td></td><td>(2.69\%)</td><td></td></tr><tr><td rowspan="2">2000–2010</td><td>1.37\%</td><td>-0.79\%</td><td>-2.26\%</td><td>-4.11\%</td></tr><tr><td>(6.73\%)</td><td></td><td>(9.00\%)</td><td></td></tr></table>

Source: S&P and Federal Reserve Bank.

The compounded return is computed by taking the value of the investment at the start of the period  $(\mathrm{Value}_0)$  and the value at the end  $(\mathrm{Value}_{\mathrm{N}})$ , and then computing the following:

$$

\text {G e o m e t r i c a v e a r g e} = \left(\frac {\text {V a l u e} _ {\mathrm {N}}}{\text {V a l u e} _ {0}}\right) ^ {1 / \mathrm {N}} - 1

$$

In other words, good years are more likely to be followed by poor years, and vice versa. The evidence on negative serial correlation in stock returns over time is extensive, and can be found in Fama and French (1988). While they find that the one-year correlations are low, the five-year serial correlations are strongly negative for all size classes.

Historical Risk Premiums: Other Markets If it is difficult to estimate a reliable historical premium for the U.S. market, it becomes doubly so when looking at markets with short and volatile histories. This is clearly true for emerging markets, but it is also true for the European equity markets. While the economies of Germany, Italy, and France may be mature, their equity markets do not share the same characteristic. Until two decades ago, they tend to be dominated by a few large companies; many businesses remain private; and trading was, except on a few stocks.

There are some practitioners who still use historical premiums for these markets. To capture some of the danger in this practice, Table 7.4 summarizes historical risk premiums for major non-U.S. markets for 1970 to 2010.

Note that some of the countries have very low historical risk premiums, and a few others have high risk premiums. Before an attempt is made to come up with a rationale for why this might be so, it is worth noting that the standard error on each and every one of these estimates is high, notwithstanding the fact that the premiums are estimated over a very long time period.

TABLE 7.4 Historical Equity Risk Premiums: Markets outside the United States

<table><tr><td rowspan="2">Country</td><td colspan="4">Stocks minus Long-Term Government Securities</td></tr><tr><td>Geometric Mean</td><td>Arithmetic Mean</td><td>Standard Error</td><td>Standard Deviation</td></tr><tr><td>Australia</td><td>5.9\%</td><td>7.8\%</td><td>1.9\%</td><td>19.8\%</td></tr><tr><td>Belgium</td><td>2.5\%</td><td>4.9\%</td><td>2.0\%</td><td>21.4\%</td></tr><tr><td>Canada</td><td>3.7\%</td><td>5.3\%</td><td>1.7\%</td><td>18.2\%</td></tr><tr><td>Denmark</td><td>2.0\%</td><td>3.4\%</td><td>1.6\%</td><td>17.2\%</td></tr><tr><td>Finland</td><td>5.6\%</td><td>9.2\%</td><td>2.9\%</td><td>30.3\%</td></tr><tr><td>France</td><td>3.2\%</td><td>5.6\%</td><td>2.2\%</td><td>22.9\%</td></tr><tr><td>Germany</td><td>5.4\%</td><td>8.8\%</td><td>2.7\%</td><td>28.4\%</td></tr><tr><td>Ireland</td><td>2.9\%</td><td>4.9\%</td><td>1.9\%</td><td>19.8\%</td></tr><tr><td>Italy</td><td>3.7\%</td><td>7.2\%</td><td>2.8\%</td><td>29.6\%</td></tr><tr><td>Japan</td><td>5.0\%</td><td>9.1\%</td><td>3.1\%</td><td>32.8\%</td></tr><tr><td>Netherlands</td><td>3.5\%</td><td>5.8\%</td><td>2.1\%</td><td>22.2\%</td></tr><tr><td>New Zealand</td><td>3.8\%</td><td>5.4\%</td><td>1.7\%</td><td>18.1\%</td></tr><tr><td>Norway</td><td>2.5\%</td><td>5.5\%</td><td>2.7\%</td><td>28.0\%</td></tr><tr><td>South Africa</td><td>5.5\%</td><td>7.2\%</td><td>1.9\%</td><td>19.6\%</td></tr><tr><td>Spain</td><td>2.3\%</td><td>4.3\%</td><td>2.0\%</td><td>20.8\%</td></tr><tr><td>Sweden</td><td>3.8\%</td><td>6.1\%</td><td>2.1\%</td><td>22.3\%</td></tr><tr><td>Switzerland</td><td>2.1\%</td><td>3.6\%</td><td>1.7\%</td><td>17.6\%</td></tr><tr><td>United Kingdom</td><td>3.9\%</td><td>5.2\%</td><td>1.6\%</td><td>17.0\%</td></tr><tr><td>United States</td><td>4.4\%</td><td>6.4\%</td><td>1.9\%</td><td>20.5\%</td></tr><tr><td>World-ex U.S.</td><td>3.8\%</td><td>5.0\%</td><td>1.5\%</td><td>15.5\%</td></tr><tr><td>World</td><td>3.8\%</td><td>5.0\%</td><td>1.5\%</td><td>15.5\%</td></tr></table>

Source: Dimson, Marsh, and Staunton (2010).

# HISTORICAL RISK PREMIUM APPROACH: SOME CAVEATS

Given how widely the historical risk premium approach is used, it is surprising how flawed it is and how little attention these flaws have attracted. Consider first the underlying assumption that investors' risk premiums have not changed over time and that the average risk investment (in the market portfolio) has remained stable over the period examined. We would be hard-pressed to find anyone who would be willing to sustain this argument with fervor.

The obvious fix for this problem, which is to use a more recent time period, runs directly into a second problem, which is the large standard error associated with risk premium estimates. Though these standard errors may be tolerable for very long time periods, they clearly are unacceptably high when shorter periods are used.

Finally, even if there is a sufficiently long time period of history available and investors' risk aversion has not changed in a systematic way over that period, there is a final problem. Markets that exhibit this characteristic, and let us assume that the U.S. market is one such example, represent so-called survivor markets. In other words, assume that one had invested in the 10 largest equity markets in the world in 1928, of which the United States was one. In the period extending from 1928 to 2010, investments in few of the other equity markets would have earned as large a premium as the U.S. equity market, and some of them (like Austria) would have resulted in investors earning little or even negative returns over the period. Thus, the survivor bias will result in historical premiums that are larger than expected premiums for markets like the United States, even assuming that investors are rational and factor risk into prices.

If the standard errors on these estimates are high, consider how much more noise there is in estimates of historical risk premiums for emerging market equity markets, which often have a reliable history of 10 years or less and very large standard deviations in annual stock returns. Historical risk premiums for emerging markets may provide for interesting anecdotes, but they clearly should not be used in risk and return models.

Modified Historical Risk Premium While historical risk premiums for markets outside the United States cannot be used in risk models, we still need to estimate a risk premium for use in these markets. To approach this estimation question, let us start with the basic proposition that the risk premium in any equity market can be written as:

Equity risk premium  $=$  Base premium for mature equity market + Country premium

The country premium could reflect the extra risk in a specific market. This boils down our estimation to answering two questions:

1. What should the base premium for a mature equity market be?
2. Should there be a country premium, and if so, how do we estimate the premium?

To answer the first question, one can argue that the U.S. equity market is a mature market and that there is sufficient historical data in the United States to make a reasonable estimate of the risk premium. In fact, reverting back to our discussion of historical premiums in the U.S. market, we will use the geometric average premium earned by stocks over Treasury bonds of 4.31 percent between 1928 and 2010. We have chosen the long time period to reduce standard error, the Treasury bond to be consistent with our choice of a risk-free rate, and the geometric averages to reflect our desire for a risk premium that we can use for longer-term expected returns.

On the issue of country premiums, there are some who argue that country risk is diversifiable and that there should be no country risk premium. After looking at the basis for their argument, and then considering the alternative view that there should be a country risk premium, we present approaches for estimating country risk premiums, one based on country bond default spreads and one based on equity market volatility.

Should There Be a Country Risk Premium? Is there more risk in investing in a Malaysian or Brazilian stock than there is in investing in the United States? The answer, to most, seems to be obviously affirmative. That, however, does not answer the question of whether there should be an additional risk premium charged when investing in those markets.

Note that the only risk that is relevant for purposes of estimating a cost of equity is market risk or risk that cannot be diversified away. The key question then becomes whether the risk in an emerging market is diversifiable or nondiversifiable risk. If, in fact, the additional risk of investing in Malaysia or Brazil can be diversified away, then there should be no additional risk premium charged. If it cannot, then it makes sense to think about estimating a country risk premium.

But diversified away by whom? Equity in a Brazilian or Malaysian firm can be held by hundreds or thousands of investors, some of whom may hold only domestic stocks in their portfolio, whereas others may have more global exposure. For purposes of analyzing country risk, we look at the marginal investor—the investor most likely to be trading on the equity. If that marginal investor is globally diversified, there is at least the potential for global diversification. If the marginal investor does not have a global portfolio, the likelihood of diversifying away country risk declines substantially. Stulz (1999) made a similar point using different terminology. He differentiated between segmented markets, where risk premiums can be different in each market because investors cannot or will not invest outside their domestic markets, and open markets, where investors can invest across markets. In a segmented market, the marginal investor will be diversified only across investments in that market, whereas in an open market, the marginal investor has the opportunity (even if he or she does not take it) to invest across markets.

Even if the marginal investor is globally diversified, there is a second test that has to be met for country risk not to matter. All or much of country risk should be country specific. In other words, there should be low correlation across markets. Only then will the risk be diversifiable in a globally diversified portfolio. If, however, the returns across countries have significant positive correlation, country risk has a market risk component, is not diversifiable, and can command a premium. Whether returns across countries are positively correlated is an empirical question. Studies from the 1970s and 1980s suggested that the correlation was low, and this was an impetus for global diversification. Partly because of the success of that sales pitch and partly because economies around the world have become increasingly intertwined over the past decades, more recent studies indicate that the correlation across markets has risen. This is borne out by the speed with which troubles in one market, say Russia, can spread to a market with little or no obvious relationship to it, say Brazil.


So where do we stand? We believe that while the barriers to trading across markets have dropped, investors still have a home bias in their portfolios and that markets remain partially segmented. While globally diversified investors are playing an increasing role in the pricing of equities around the world, the resulting increase in correlation across markets has resulted in a portion of country risk being nondiversifiable or market risk. The next section considers how best to measure this country risk and build it into expected returns.

Measuring Country Risk Premiums If country risk matters and leads to higher premiums for riskier countries, the obvious follow-up question becomes how we measure this additional premium. This section looks at three approaches. The first builds on default spreads on country bonds issued by each country, whereas the second uses equity market volatility as its basis. The third is a melded approach that uses both default spreads and equity market volatility.

Default Risk Spreads While there are several measures of country risk, one of the simplest and most easily accessible is the rating assigned to a country's debt by a ratings agency; Standard & Poor's (S&P), Moody's Investors Service, and Fitch all rate countries. These ratings measure default risk (rather than equity risk), but they are affected by many of the factors that drive equity risk—the stability of a country's currency, its budget and trade balances, and its political stability, for instance.[12] The other advantage of ratings is that they can be used to estimate default spreads over the riskless rate. The default spreads are estimated by comparing the dollar- and euro-denominated bonds issued by governments that share a sovereign rating. For instance, a 10-year dollar-denominated bond issued by the Peruvian government, rated Baa by Moody's, traded at an interest rate of  $5.2\%$  in January 2011—a  $1.7\%$  spread over the U.S. Treasury bond rate of  $3.5\%$  at the time. Since there can be country-specific factors that cause these rates to vary across bonds, we average the spreads within each ratings class to arrive at the average spread for each sovereign rating. Across six countries rated Baa in January 2011, for example, the average default spread was  $2.00\%$ . Thus, any country with a Baa rating would be assigned a spread of  $2.00\%$  in January 2011.

The perils with sovereign ratings have been documented over the past few years. Specifically, ratings agencies seem to lag markets in responding to changes in country risk. An alternative approach to estimating default spreads is the CDS market. As we noted previously in the section on risk-free rates, in early 2011 there were CDS instruments traded in about 60 countries, providing an updated market measure of default risk. In January 2011, for instance, the CDS spread for Peru was 160 basis points (1.6 percent), close to the default spread estimated from the dollar-denominated bond. Table 7.5 summarizes default spreads estimated for selected countries in January 2011, using both the sovereign rating and CDS approaches.

TABLE 7.5 Default Spreads for Selected Countries—January 2011

<table><tr><td>Country</td><td>Sovereign Rating (Moody&#x27;s)</td><td>Default  Spread^a </td><td>10-year CDS  Spread^b </td></tr><tr><td>Argentina</td><td>B3</td><td>6.00\%</td><td>6.62\%</td></tr><tr><td>Brazil</td><td>Baa3</td><td>2.00\%</td><td>1.59\%</td></tr><tr><td>Chile</td><td>Aa3</td><td>0.70\%</td><td>1.00\%</td></tr><tr><td>China</td><td>Aa3</td><td>0.70\%</td><td>0.99\%</td></tr><tr><td>India</td><td>Ba1</td><td>2.40\%</td><td>NA</td></tr><tr><td>Indonesia</td><td>Ba2</td><td>2.75\%</td><td>2.06\%</td></tr><tr><td>Malaysia</td><td>A3</td><td>1.15\%</td><td>0.99\%</td></tr><tr><td>Peru</td><td>Baa3</td><td>2.00\%</td><td>1.52\%</td></tr><tr><td>Poland</td><td>A2</td><td>1.00\%</td><td>1.64\%</td></tr><tr><td>Russia</td><td>Baa1</td><td>1.50\%</td><td>1.78\%</td></tr><tr><td>South Africa</td><td>A3</td><td>1.15\%</td><td>1.65\%</td></tr><tr><td>Turkey</td><td>Ba2</td><td>2.75\%</td><td>2.01\%</td></tr></table>

${}^{a}$  Average default spread across countries with given sovereign rating.
Market price for 10-year CDS.
Source: Bloomberg.

Analysts who use default spreads as measures of country risk typically add them on to the cost of both equity and debt of every company traded in that country. For instance, the cost of equity for a Peruvian company, estimated in U.S. dollars, will be 2.00 percent higher than the cost of equity of an otherwise similar U.S. company. If we assume that the risk premium for the United States and other mature equity markets is 4.31 percent, the cost of equity for a Peruvian company with a beta of 1.2 can be estimated as follows (with a U.S. Treasury bond rate of 3.5 percent).

Cost of equity (in U.S. dollars) = Risk-free rate + Beta × U.S. risk premium

+ Default spread

$$

= 3.5 \% + 1.2 (4.31 \%) + 2.00 \% = 10.67 \%

$$

In some cases, analysts add the default spread to the U.S. risk premium and multiply the total risk premium by the beta. This increases the cost of equity for high-beta companies and lowers it for low-beta firms.

While ratings provide a convenient measure of country risk, there are costs associated with using them as the only measure. First, ratings agencies often lag markets when it comes to responding to changes in the underlying default risk. Second, the ratings agency focus on default risk may obscure other risks that could still affect equity markets. What are the alternatives? There are numerical country risk scores that have been developed by some services as much more comprehensive measures of risk. The Economist, for instance, has a score that runs from 0 to 100 (where 0 is no risk, and 100 is most risky) that it uses to rank emerging markets. Alternatively, country risk can be estimated from the bottom up by looking at economic fundamentals in each country. This, of course, requires significantly more information than the other approaches. Finally, default spreads measure the risk associated with bonds issued by countries and not the equity risk in these countries. Since equities in any market are likely to be more risky than bonds, you could argue that default spreads understate equity risk premiums.

Relative Standard Deviations There are some analysts who believe that investors in equity markets choose among these markets based on their assessed riskiness and that the risk premiums should reflect the differences in equity risk. A conventional measure of equity risk is the standard deviation in stock prices; higher standard deviations are generally associated with more risk. If you scale the standard deviation of one market against another, you obtain a measure of relative risk.

Relative standard deviation  ${}_{\text{country X}} = \frac{\text{Standard deviation}_{\text{U.S.}}}{\text{Standard deviation}_{\text{country X}}}$

This relative standard deviation, when multiplied by the premium used for U.S. stocks, should yield a measure of the total risk premium for any market.

Equity risk premium  $\mathrm{countryX} =$  Risk premium  $\mathrm{U.S.} \times$  Relative standard deviation  $\mathrm{countryX}$

Assume, for the moment, that you are using a mature market premium for the United States of 4.31 percent and that the annual standard deviation of U.S. stocks is 20 percent. If the annual standard deviation of Indonesian stocks is 35 percent, the estimate of a total risk premium for Indonesia would be:

$$

\text {Equity risk premium} _ {\text {Indonesia}} = 4.31 \% \times (35 \% / 20 \%) = 7.54 \%

$$

The country risk premium can be isolated as follows:

$$

\text {Country risk premium} _ {\text {Indonesia}} = 7.54 \% - 4.31 \% = 3.23 \%

$$

While this approach has intuitive appeal, there are problems with using standard deviations computed in markets with widely different market structures and liquidity. There are very risky emerging markets that have low standard deviations for their equity markets because the markets are illiquid. This approach will understate the equity risk premiums in those markets. The second problem is related to currencies, since the standard deviations are usually measured in local currency terms; the standard deviation in the U.S. market is a dollar standard deviation,

# THE DANGER OF DOUBLE COUNTING RISK

When assessing country risk, there is a substantial chance that the same risk may be counted more than once in a valuation. For instance, there are analysts who use the dollar-denominated bonds issued by a country—the Brazilian dollar bond, for instance—as the risk-free rate when estimating cost of equity for Brazilian companies. The interest rate on this bond already incorporates the default spreads discussed in the preceding section. If the risk premium is also adjusted upward to reflect country risk, there has been a double counting of the risk. This effect is made worse when betas are adjusted upward and cash flows are adjusted downward (a process called "haircutting") because of country risk.

whereas the standard deviation in the Indonesian market is a rupiah standard deviation. This is a relatively simple problem to fix, though, since the standard deviations can be measured in the same currency—you could estimate the standard deviation in dollar returns for the Indonesian market.

Default Spreads + Relative Standard Deviations The country default spreads that come with country ratings provide an important first step, but still only measure the premium for default risk. Intuitively, we would expect the country equity risk premium to be larger than the country default risk spread. To address the issue of how much higher, one can look at the volatility of the equity market in a country relative to the volatility of the country bond used to estimate the spread. This yields the following estimate for the country equity risk premium:

$$

\text {C o u n t r y} = \text {C o u n t r y} \times \left(\frac {\sigma_ {\text {e q u i t y}}}{\sigma_ {\text {c o u n t r y b o n d}}}\right)

$$

To illustrate, consider the case of Brazil. In January 2011, Brazil was rated Baa3 by Moody's, resulting in a default spread of 2.00 percent. The annualized standard deviation in the Brazilian equity index over the previous two years was 17.65 percent, while the annualized standard deviation in the Brazilian dollar-denominated bond was 7.32 percent. The resulting country equity risk premium for Brazil is as follows:

$$

\text{Brazil's country risk premium} = 2.00 \% \left(\frac {17.65 \%}{7.32 \%}\right) = 4.82 \%

$$

Note that this country risk premium will increase if the country rating drops or if the relative volatility of the equity market increases. Adding this premium to the mature market (U.S.) premium of 4.31 percent would yield a total equity risk premium for Brazil of 9.13 percent.

Why should equity risk premiums have any relationship to country bond spreads? A simple explanation is that an investor who can make 11 percent on a dollar-denominated Brazilian government bond would not settle for an expected return of 10.5 percent (in dollar terms) on Brazilian equity. Playing devil's advocate, however, a critic could argue that the interest rate on a country bond, from which default spreads are extracted, is not really an expected return since it is based on the promised cash flows (coupon and principal) on the bond rather than the expected cash flows. In fact, if we wanted to estimate a risk premium for bonds, we would need to estimate the expected return based on expected cash flows, allowing for the default risk. This would result in a much lower default spread and equity risk premium.

Both this approach and the previous one use the standard deviation in equity of a market to make a judgment about country risk premium, but they measure it relative to different bases. This approach uses the country bond as a base, whereas the previous one uses the standard deviation in the U.S. market. This approach assumes that investors are more likely to choose between Brazilian bonds and Brazilian equity, whereas the previous approach assumes that the choice is across equity markets.

Choosing among the Approaches The three approaches to estimating country risk premiums will generally give you different estimates, with the bond default spread and relative equity standard deviation approaches yielding lower country risk premiums than the melded approach that uses both the country bond default spread and the equity standard deviation. We believe that the larger country risk premiums that emerge from the last approach are the most realistic for the immediate future, but that country risk premiums will change over time. Just as companies mature and become less risky over time, countries can mature and become less risky as well.


One way to adjust country risk premiums over time is to begin with the premium that emerges from the melded approach and to adjust this premium down toward either the country bond default spread or the country premium estimated from equity standard deviations. Another way of presenting this argument is to note that the differences between standard deviations in equity and bond prices narrow over longer periods, and the resulting relative volatility will generally be smaller.[13] Thus, the equity risk premium will converge on the country bond spread as we look at longer-term expected returns. For example, the country risk premium for Brazil would be 4.82 percent for the next year but decline over time to either the 2.00 percent (country default spread) or even lower.

Estimating Asset Exposure to Country Risk Premiums Once country risk premiums have been estimated, the final question that has to be addressed relates to the exposure of individual companies within that country to country risk. There are three alternative views of country risk:

1. Assume that all companies in a country are equally exposed to country risk. Thus, for Brazil, with its estimated country risk premium of 4.82 percent, each company in the market will have an additional country risk premium of 4.82 percent added to its expected returns. For instance, the cost of equity for Petrobras, an integrated oil company listed in Brazil with a beta of 0.80, in U.S. dollar terms would be (assuming a U.S. Treasury bond rate of 3.50 percent and a mature market [U.S.] risk premium of 4.31 percent):

$$

\text{Expected cost of equity} = 3.50 \% + 0.80(4.31 \%) + 4.82 \% = 11.77 \%

$$

Note that the risk-free rate used is the U.S. Treasury bond rate and that the 4.31 percent is the equity risk premium for a mature equity market (estimated from historical data in the U.S. market). The biggest limitation of this approach is that it assumes that all firms in a country, no matter what their business or size, are equally exposed to country risk. To convert this dollar cost of equity into a cost of equity in the local currency, all that we need to do is to scale the estimate by relative inflation. To illustrate, if the Brazilian inflation rate is 6 percent and the U.S. inflation rate is 2 percent, the cost of equity for Petrobras in Brazilian real (BR) terms can be written as:

$$

\text{Expected cost of equity}_{\mathrm{BR}} = 1.1177(1.06 / 1.02) - 1 = 0.1615 \text{or} 16.15 \%

$$

This will ensure consistency across estimates and valuations in different currencies.

2. Assume that a company's exposure to country risk is proportional to its exposure to all other market risk, which is measured by the beta. For Petrobras, this would lead to a cost of equity estimate of:

$$

\text{Expected cost of equity} = 3.50 \% + 0.80(4.31 \% + 4.82 \%) = 10.80 \%

$$

This approach does differentiate between firms, but it assumes that betas that measure exposure to all other market risk measure exposure to country risk as well. Thus, low-beta companies are less exposed to country risk than high-beta companies.
3. The most general approach, and our preferred approach, is to allow for each company to have an exposure to country risk that is different from its exposure to all other market risk. Measuring this exposure with  $\lambda$ , the cost of equity for any firm is estimated as follows:

$$

\begin{array}{l} \text {E x p e c t e d} = \mathrm {R} _ {\mathrm {f}} + \text {B e t a} (\text {M a t u r e} \\ + \lambda (\text {C o u n t r y} \\ \end{array}

$$

How can we best estimate  $\lambda$ ? This question is considered in far more detail in the next chapter, but we would argue that commodity companies that get most of their revenues in U.S. dollars by selling into a global market should be less exposed than manufacturing companies that service the local market. Using this rationale, Petrobras, which derives most of its revenues in the global oil market in U.S. dollars, should be less exposed than the typical Brazilian firm to country risk. Using a  $\lambda$  of 0.50, for instance, we get a cost of equity in U.S. dollar terms for Petrobras of:

$$

\text{Expected return} = 3.5 \% + 0.80(4.31 \%) + 0.50(4.82 \%) = 9.36 \%

$$ ctryprem.xls: There is a dataset on the Web that contains the updated ratings for countries and the risk premiums associated with each.

Note that the third approach essentially converts our expected return model to a two-factor model, with the second factor being country risk, with  $\lambda$  measuring exposure to country risk. This approach also seems to offer the most promise in analyzing companies with exposures in multiple countries like Coca-Cola and Nestlé. While these firms are ostensibly developed market companies, they have substantial exposure to risk in emerging markets, and their costs of equity should reflect this exposure. We could estimate the country risk premiums for each country in which they operate and a  $\lambda$  relative to each country, and use these to estimate a cost of equity for either company.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/9caaf015c67670112834150c53e063f65a6a43ed4fda9df74078e439900f7e0c.jpg)


# Alternative Approach: Implied Equity Premiums

There is an alternative to estimating risk premiums that does not require historical data or corrections for country risk, but does assume that the market, overall, is correctly priced. Consider, for instance, a very simple valuation model for stocks:


$$

\text {V a l u e} = \frac {\text {E x p e c t e d d i v i d e n d s n e x t p e r i o d}}{\text {R e q u i r e d r e t u r n o n e q u i d y} - \text {E x p e c t e d g r o w t h r a t e}}

$$

This is essentially the present value of dividends growing at a constant rate. Three of the four inputs in this model can be obtained externally—the current level of the market (value), the expected dividends next period, and the expected growth rate in earnings and dividends in the long term. The only unknown is then the required return on equity; when we solve for it, we get an implied expected return on stocks. Subtracting the risk-free rate will yield an implied equity risk premium.

To illustrate, assume that the current level of the S&P 500 index is 900, the expected dividend yield on the index is 2 percent, and the expected growth rate in earnings and dividends in the long term is 7 percent. Solving for the required return on equity yields the following:

$$

9 0 0 = (. 0 2 \times 9 0 0) / (\mathrm {r} -. 0 7)

$$

Solving for  $\mathbf{r}$

$$

\mathrm{r} = (18 + 63) / 900 = 9\%

$$

If the current risk-free rate is 6 percent, this will yield a premium of 3 percent.

This approach can be generalized to allow for high growth for a period, and extended to cover cash flow-based, rather than dividend, models. To illustrate this, consider the S&P 500 index as of January 1, 2011. The index was at 1257.64, and the cash flows from dividends and stock buybacks during the course of 2010 were 53.96. In addition, the consensus estimate of growth in earnings for companies in the index was approximately 6.95 percent for the next five years. Since this is not a growth rate that can be sustained forever, we employ a two-stage valuation model, where we allow growth to continue at 6.95 percent for five years, and then lower the growth rate to the Treasury bond rate of 3.29 percent after that. The following table summarizes the expected cash flows for the next five years of high growth and the first year of stable growth thereafter:

<table><tr><td>Year</td><td>Cash Flow on Index</td></tr><tr><td>1</td><td>53.96(1.0695) = 57.72</td></tr><tr><td>2</td><td>57.72(1.0695) = 61.73</td></tr><tr><td>3</td><td>61.73(1.0695) = 66.02</td></tr><tr><td>4</td><td>66.02(1.0695) = 70.60</td></tr><tr><td>5</td><td>70.60(1.0695) = 75.51</td></tr><tr><td>6</td><td>75.51(1.0329) = 77.99</td></tr></table>

If we assume that these are reasonable estimates of the cash flows and that the index is correctly priced, then:

$$

\begin{array}{l} \text {L e v e l} = 1, 2 5 7. 6 4 = 5 7. 7 2 / (1 + r) + 6 1. 7 3 / (1 + r) ^ {2} + 6 6. 0 2 / (1 + r) ^ {3} \\ + 7 0. 6 0 / (1 + r) ^ {4} + [ 7 5. 5 1 + 7 7. 9 9 / (r -. 0 3 2 9) ] / (1 + r) ^ {5} \\ \end{array}

$$

Note that the last term in the equation is the terminal value of the index, based on the stable growth rate of 3.29 percent, discounted back to the present. Solving for  $r$  in this equation yields us the required return on equity of 8.49 percent. Netting out the Treasury bond rate of 3.29 percent yields an implied equity premium of 5.20 percent.

The advantage of this approach is that it is market-driven and current, and does not require any historical data. Thus, it can be used to estimate implied equity premiums in any market. It is, however, bounded by whether the model used for the valuation is the right one and by the availability and reliability of the inputs to that model. For instance, the equity risk premium for the Brazilian market on September 30, 2009, was estimated from the following inputs. The index (Bovespa) was at 61,172, and the aggregate cash flow yield on the index was 4.95 percent. Earnings in companies in the index are expected to grow 6 percent (in U.S. dollar terms) over the next five years, and 3.45 percent thereafter. These inputs yield a required return on equity of 9.17 percent, which when compared to the U.S. Treasury bond rate of 3.45 percent on that day results in an implied equity premium of 5.72 percent. For simplicity, we have used nominal dollar expected growth rates and Treasury bond rates, but this analysis could have been done entirely in the local currency.

The implied equity premiums change over time as stock prices, earnings, and interest rates change. In fact, the contrast between these premiums and the historical premiums is best illustrated by graphing out the implied premiums in the S&P 500 going back to 1960 in Figure 7.1. In terms of mechanics, smoothed historical growth rates in earnings and dividends were used as projected growth rates, and a two-stage dividend discount model was used. Looking at these numbers, the following conclusions would be drawn:

The arithmetic average historical risk premium, which is used by many practitioners, has been higher than the implied premium over almost the entire 50-year period (with 2009 the only exception). The geometric premium does provide a more interesting mix of results, with implied premiums exceeding historical premiums in the mid-1970s and again following 2008.
The implied equity premium did increase during the 1970s, as inflation increased. This does have interesting implications for risk premium estimation. Instead of assuming that the risk premium is a constant and unaffected by the level of inflation and interest rates, which is what we do with historical risk premiums, it may be more realistic to increase the risk premium if expected inflation and interest rates go up.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/ec243fef076ee4aea8625b4360dfbbd63ebe96a7ca9f3a16e57738b7ca4a3da3.jpg)
FIGURE 7.1 Implied Premiums for U.S. Equity Market (1960 to 2010)

■ While historical risk premiums have generally drifted down for the last few decades, there is a strong tendency toward mean reversion in implied equity premiums. Thus, the premium, which peaked at 6.5 percent in 1978, moved down toward the average in the 1980s. By the same token, the premium of 2 percent that we observed at the end of the dot-com boom in the 1990s quickly reverted back to the average during the market correction from 2000 to 2003. Given this tendency, it is possible that we can end up with a far better estimate of the implied equity premium by looking at not just the current premium, but also at historical trend lines.

Finally, the crisis of 2008 was unprecedented in terms of its impact on equity risk premiums. Implied equity risk premiums rose more during 2008 than in any one of the prior 50 years. Much of that change occurred in the last 15 weeks of the year when the US and other developed markets went through gyrations more typical of emerging markets. A large portion of that increase dissipated in 2009 but returned again in 2010 and 2011.

As a final point, there is a strong tendency toward mean reversion in financial markets. Given this tendency, it is possible that we can end up with a far better estimate of the implied equity premium by looking not just at the current premium but also at historical data. There are two ways in which we can do this:

1. We can use the average implied equity premium over longer periods, say 10 to 15 years. Note that we do not need as many years of data here as we did with the historical premium estimate, because the standard errors tend to be smaller.
2. A more rigorous approach would require relating implied equity risk premiums to fundamental macroeconomic data over the period. For instance, given that implied equity premiums tend to be higher during periods with higher inflation rates (and interest rates), we ran a regression of implied equity premiums against Treasury bond rates between 1960 and 2010:


$$

\text{Implied equity premium} = 2.97\% +0.2903(\text{T - bond rate}) \tag{[2.89]}

$$

The regression has some explanatory power, with an R-squared of 15 percent, and the t statistics (in brackets under the coefficients) indicate the statistical significance of the independent variable used. Substituting the current Treasury bond rate into this equation should yield an updated estimate of the implied equity premium.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/74f8b529fd6355cd0bc38869076f59fe41c4a618b6b9803aac59b3dadbd5a0f9.jpg) histimpl.xls: This dataset on the Web shows the inputs used to calculate the premium in each year for the U.S. market.


# HISTORICAL VERSUS IMPLIED EQUITY PREMIUMS: EFFECT OF MARKET VIEWS

As you can see from the preceding discussion, historical premiums can be very different from implied equity premiums. At the end of 2000, the historical risk premium for stocks over bonds in the United States was 5.51 percent, whereas the implied equity risk premium was 2.87 percent. In contrast, at the end of 2008, the historical risk premium was  $3.88\%$ , whereas the implied premium was  $6.43\%$ . When doing discounted cash flow valuation, you have to decide which risk premium you will use in the valuation, and your choice will be determined by both your market views and your valuation mission.

Market Views: If you believe that the market is right in the aggregate, though it may make mistakes on individual stocks, the risk premium you should use is the current implied equity risk premium. If you believe that the market often makes mistakes in the aggregate and that risk premiums in markets tend to move back to historical norms (mean reversion), you should go with the historical premium (4.31 percent at the end of 2000). A way to split the difference is to assume that markets are right across time, though they may make mistakes at individual points in time. If you make this assumption, you should use an average implied equity risk premium over time. The average implied equity risk premium from 1960 to 2010 is 3.95 percent. While this book uses the historical premium a few times in its valuations, it sticks with the average implied premium in most of the valuations.

Valuation mission: If your valuation requires you to be market neutral, you should use the current implied equity risk premium. This is often the case if you are an equity research analyst or if you have to value a company for an acquisition.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/9c2cc01251ec8bd2e1413a2a7df028e61105d3013e94a239e6b669f628525f0e.jpg) implprem.xls: This spreadsheet allows you to estimate the implied equity premium in a market.


# DEFAULT SPREADS ON BONDS

The interest rates on bonds are determined by the default risk that investors perceive in the issuer of the bonds. This default risk is often measured with a bond rating, and the interest rate that corresponds to the rating is estimated by adding a default spread to the riskless rate. In Chapter 4, we examined the process used by rating agencies to rate firms. This chapter considers how to estimate default spreads for a given ratings class and why these spreads may change over time.

# Estimating Default Spreads

The simplest way to estimate default spreads for each rating class is to find a sampling of bonds within that ratings class and obtain the current market interest rate on these bonds. Why do we need a sampling rather than just one bond? A bond can be mircrated or mispriced. Using a sample reduces or eliminates this problem. In obtaining this sample, you should try to focus on the most liquid bonds with as few special features attached to them as possible. Corporate bonds are often illiquid and the interest rates on such bonds may not reflect current market rates. The presence of special features on bonds such as convertibility can affect the pricing of these bonds and consequently the interest rates estimated on them.

Once a sample of bonds within each ratings class has been identified, you need to estimate the interest rate on these bonds. There are two measures that are widely used. The first is the yield on the bond, which is the coupon rate divided by the market price. The second is the yield to maturity on the bond, which is the interest rate that makes the present value of the coupons and face value of the bond equal to the market price. In general, it is the yield to maturity that better measures the market interest rate on the bond.

Having obtained the interest rates on the bonds in the sample, you have two decisions to make. The first relates to weighting. You could compute a simple average of the interest rates of the bonds in the sample or a weighted average, with the weights based upon the trading volume—more liquid bonds will be weighted more than less liquid bonds. The second relates to the index Treasury rate, since the average interest rate for a ratings class is compared to this rate to arrive at a default spread. In general, the maturity of the Treasury should match the average maturity of the corporate bonds chosen to estimate the average interest rate. Thus, the average interest rate for five-year BBB-rated corporate bonds should be compared to the average interest rate for five-year Treasuries to derive the spread for the BBB-rated bonds.

Publications like Barron's have historically provided interest rates on at least higher-rated bonds (BBB or higher), an increasing number of online services provide the same information today for all rated bonds. Table 7.6 is extracted from one such online service in early 2011 for 10-year bonds using a 10-year T Bond rate of  $3.5\%$  as the riskfree rate.

TABLE 7.6 Default Spreads and Interest Rates — January 2011

<table><tr><td>Bond Rating</td><td>Default Spread</td><td>Interest Rate on Debt</td></tr><tr><td>AAA</td><td>0.50\%</td><td>4.00\%</td></tr><tr><td>AA</td><td>0.65\%</td><td>4.15\%</td></tr><tr><td>A+</td><td>0.85\%</td><td>4.35\%</td></tr><tr><td>A</td><td>1.00\%</td><td>4.50\%</td></tr><tr><td>A-</td><td>1.10\%</td><td>4.60\%</td></tr><tr><td>BBB</td><td>1.60\%</td><td>5.10\%</td></tr><tr><td>BB+</td><td>3.00\%</td><td>6.50\%</td></tr><tr><td>BB</td><td>3.35\%</td><td>6.85\%</td></tr><tr><td>B+</td><td>3.75\%</td><td>7.25\%</td></tr><tr><td>B</td><td>5.00\%</td><td>8.50\%</td></tr><tr><td>B-</td><td>5.25\%</td><td>8.75\%</td></tr><tr><td>CCC</td><td>8.00\%</td><td>11.50\%</td></tr><tr><td>CC</td><td>10.00\%</td><td>13.50\%</td></tr><tr><td>C</td><td>12.00\%</td><td>15.50\%</td></tr><tr><td>D</td><td>15.00\%</td><td>18.50\%</td></tr></table>

Source: BondsOnline.com.

# Determinants of Default Spreads

Table 7.6 provides default spreads at a point in time, but default spreads not only vary across time, but they also can vary for bonds with the same rating but different maturities. This section considers how default spreads vary across time and for bonds with varying maturities.

Default Spreads and Bond Maturity Empirically, the default spread for corporate bonds of a given ratings class seems to increase with the maturity of the bond. Figure 7.2 presents the default spreads estimated for Aaa, Baa, and Caa-rated bonds for maturities ranging from 1 to 30 years in January 2011.

At least there seems to be no perceptible pattern to default spreads over maturity in 2011. Thus, the default spread on the 10-year bond is not noticeably larger than the default spread on a 1-year bond. This has not always been the case. There have been some periods in history where default spreads were an increasing function of maturity and other periods where they were a decreasing function.

Default Spreads over Time The default spreads presented in Table 7.6, after a year of declining markets and a slowing economy, were significantly higher than the default spreads a year earlier. This phenomenon is not new. Historically, default spreads for every ratings class have increased during recessions and decreased during economic booms. Figure 7.3 graphs the spread between 10-year Moody's Baa-rated bonds and the 10-year Treasury bond rate each year from 1960 to 2010 and contrasts it with the implied equity risk premium each year. The default spreads did increase during periods of low economic growth; note the increase during 1973-1974 and 1979-1981 in particular. Although default spreads and equity risk premiums in most periods have generally moved in tandem, there have been exceptional periods when they moved in different directions. In the late 1990s, for instance, the dot-com boom in stock prices resulted in declining equity risk premiums, while default spreads stayed relatively stable. In contrast, the subprime boom in 2004 to 2007 lowered default spreads, while equity risk premiums stayed unchanged.

FIGURE 7.2 Default Spreads by Maturity—January 2011
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/adb50e7e779a04a2abfadb180e89b220c907fd43c1327b9010b6aba7a5528d2a.jpg)
Source: BondsOnline.com.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/b9ffd8ce815fd6a4b2b0321bb3689951f9e87523c00bd711335ee11d99e11976.jpg)
FIGURE 7.3 Baa Bond Default Spread and Implied Equity Risk Premiums: 1960 to 2010


![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/5881c05b63a0ea4a35d9eef2a58dfb5596d44c847156e765cfcd89cf1149f732.jpg) ratings.xls: This dataset on the Web summarizes default spreads by bond rating class for the most recent period.


# CONCLUSION

The risk-free rate is the starting point for all expected return models. For an asset to be risk free, it has to be free of both default and reinvestment risk. Using these criteria, the appropriate risk-free rate to use to obtain expected returns should be a default-free (government) zero coupon rate that is matched up to when the cash flow that is being discounted occurs. In practice, however, it is usually appropriate to match up the duration of the risk-free asset to the duration of the cash flows being analyzed. In valuation, this will lead us toward long-term government bond rates as risk-free rates. It is also important that the risk-free rate be consistent with the cash flows being discounted. In particular, the currency in which the risk-free rate is denominated and whether it is a real or nominal risk-free rate should be determined by the currency in which the cash flows are estimated and whether the estimation is done in real or nominal terms.

The risk premium is a fundamental and critical component in portfolio management, corporate finance, and valuation. Given its importance, it is surprising that more attention has not been paid in practical terms to estimation issues. This chapter considered the conventional approach to estimating risk premiums, which is to use historical returns on equity and government securities, and evaluated some of its weaknesses. It also examined how to extend this approach to emerging markets, where historical data tends to be both limited and volatile. The alternative to historical premiums is to estimate the equity premium implied by equity prices. This approach does require that we start with a valuation model for equities, and estimate the expected growth and cash flows, collectively, on equity investments. It has the advantages of not requiring historical data and of reflecting current market perceptions.

# QUESTIONS AND SHORT PROBLEMS

In the problems following, use an equity risk premium of 5.5 percent if none is specified.

1. Assume that you are valuing an Indonesian firm in U.S. dollars. What would you use as the riskless rate?
2. Explain why a six-month Treasury bill rate is not an appropriate riskless rate in discounting a five-year cash flow.
3. You have been asked to estimate a riskless rate in Indonesian rupiah. The Indonesian government has rupiah-denominated bonds outstanding, with an interest rate of  $17\%$ . S&P has a rating of BB on these bonds, and the typical spread for a BB-rated country is  $5\%$  over a riskless rate. Estimate the rupiah riskless rate.

4. You are valuing an Indian company in rupees. The current exchange rate is Rs 45 per dollar and you have been able to obtain a 10-year forward rate of Rs 70 per dollar. If the U.S. Treasury bond rate is  $5\%$ , estimate the riskless rate in Indian rupees.
5. You are attempting to do a valuation of a Chilean company in real terms. While you have been unable to get a real riskless rate in Latin America, you know that inflation-indexed Treasury bonds in the United States are yielding  $3\%$ . Could you use this as a real riskless rate? Why or why not? What are the alternatives?
6. Assume you have estimated the historical risk premium, based on 50 years of data, to be  $6\%$ . If the annual standard deviation in stock prices is  $30\%$ , estimate the standard error in the risk premium estimate.
7. When you use a historical risk premium as your expected future risk premium, what are the assumptions that you are making about investors and markets? Under what conditions would a historical risk premium give you too high a number (to use as an expected premium)?
8. You are trying to estimate a country equity risk premium for Poland. You find that S&P has assigned an A rating to Poland and that Poland has issued euro-denominated bonds that yield  $7.6\%$  in the market currently. (Germany, a AAA-rated country, has euro-denominated bonds outstanding that yield  $5.1\%$ .) a. Estimate the country risk premium, using the default spread on the country bond as the proxy.

b. If you were told that the standard deviation in the Polish equity market was  $25\%$  and that the standard deviation in the Polish euro bond was  $15\%$ , estimate the country risk premium.

9. The standard deviation in the Mexican Equity Index is  $48\%$ , and the standard deviation in the S&P 500 is  $20\%$ . You use an equity risk premium of  $5.5\%$  for the United States.

a. Estimate the country equity risk premium for Mexico using relative equity standard deviations.
b. Now assume that you are told that Mexico is rated BBB by Standard & Poor's and that it has dollar-denominated bonds outstanding that trade at a spread of about  $3\%$  above the Treasury bond rate. If the standard deviation in these bonds is  $24\%$ , estimate the country risk premium for Mexico.

10. The S&P 500 is at 1,400. The expected dividends and cash flows next year on the stocks in the index are expected to be  $5\%$  of the index. If the expected growth rate in dividends and cash flows over the long term is expected to be  $6\%$  and the riskless rate is  $5.5\%$ , estimate the implied equity risk premium.
11. The Bovespa (Brazilian equity index) is at 15,000. The dividends on the index last year were  $5\%$  of the index value, and analysts expect them to grow  $15\%$  a year in real terms for the next five years. After the fifth year, the growth is expected to drop to  $5\%$  in real terms in perpetuity. If the real riskless rate is  $6\%$ , estimate the implied equity risk premium in this market.
12. As stock prices go up, implied equity risk premiums will go down. Is this statement always true? If not, when is it not true?

# Estimating Risk Parameters and Costs of Financing

The preceding chapter laid the groundwork for estimating the costs of equity and capital for firms by looking at how best to estimate a riskless rate that operates as a base for all costs, an equity risk premium for estimating the cost of equity, and default spreads for estimating the cost of debt. It did not, however, consider how to estimate the risk parameters for individual firms. This chapter examines the process of estimating risk parameters for individual firms, for estimating both the cost of equity and the cost of debt.

For the cost of equity, we look at the standard process of estimating the beta for a firm and consider alternative approaches. For the cost of debt, we examine bond ratings as measures of default risk and the determinants of these ratings.

The chapter closes by bringing together the risk parameter estimates for individual firms and the economy-wide estimates of the risk-free rate and risk premiums to estimate a cost of capital for the firm. To do this, the sources of capital have to be weighted by their relative market values.

# THE COST OF EQUITY AND CAPITAL

Firms raise money from both equity investors and lenders to fund investments. Both groups of investors make their investments expecting to make a return. Chapter 4 argued that the expected return for equity investors would include a premium for the equity risk in the investment. We label this expected return the cost of equity. Similarly, the expected return that lenders hope to make on their investments includes a premium for default risk, and we call that expected return the cost of debt. If we consider all of the financing that the firm takes on, the composite cost of financing will be a weighted average of the costs of equity and debt, and this weighted cost is the cost of capital.

The chapter begins by estimating the equity risk in a firm and using the equity risk to estimate the cost of equity, and follows up by measuring the default risk to estimate a cost of debt. It concludes by determining the weights we should attach to each of these costs to arrive at a cost of capital.

# COST OF EQUITY

The cost of equity is the rate of return investors require on an equity investment in a firm. The risk and return models described in Chapter 4 need a riskless rate and a risk premium (in the CAPM) or premiums (in the APM and multifactor models), which were estimated in the last chapter. They also need measures of a firm's exposure to market risk in the form of betas. These inputs are used to arrive at an expected return on an equity investment:

$$

\text {E x p e c t e d} = \text {R i s k l e s s} + \text {B e t a} (\text {R i s k}

$$

This expected return to equity investors includes compensation for the market risk in the investment and is the cost of equity. This section concentrates on the estimation of the beta of a firm. While much of the discussion is directed at the CAPM, it can be extended to apply to the arbitrage pricing and multifactor models, as well.

# Betas

In the CAPM, the beta of an investment is the risk that the investment adds to a market portfolio. In the APM and multifactor model, the betas of the investment relative to each factor have to be measured. There are three approaches available for estimating these parameters: One is to use historical data on market prices for individual investments; the second is to estimate the betas from the fundamental characteristics of the investment; and the third is to use accounting data. All three approaches are described in this section.

Historical Market Betas The conventional approach for estimating the beta of an investment is a regression of returns on the investment against returns on a market index. For firms that have been publicly traded for a length of time, it is relatively straightforward to estimate returns that an investor would have made on investing in the firms' equity in intervals (such as a week or a month) over that period. In theory, these stock returns on the assets should be related to returns on a market portfolio (i.e., a portfolio that includes all traded assets) to estimate the betas of the assets. In practice, we tend to use a stock index such as the S&P 500 as a proxy for the market portfolio, and we estimate betas for stocks against the index.

Regression Estimates of Betas The standard procedure for estimating betas is to regress stock returns  $(\mathbf{R}_{\mathrm{j}})$  against market returns  $(\mathbf{R}_{\mathrm{m}})$ :

$$

R _ {j} = a + b R _ {m}

$$ where  $a =$  Intercept from the regression

$$ b = \text {S l o p e} = \text {C o v a r i a n c e} \left(R _ {\mathrm {j}}, R _ {\mathrm {m}}\right) / \sigma_ {\mathrm {m}} ^ {2}
$$

The slope of the regression corresponds to the beta of the stock and measures the riskiness of the stock.

The intercept of the regression provides a simple measure of performance of the investment during the period of the regression, when returns are measured against the expected returns from the capital asset pricing model. To see why, consider the following rearrangement of the capital asset pricing model:

$$
\begin{array}{l} R _ {i} = R _ {f} + \beta \left(R _ {m} - R _ {f}\right) \\ = R _ {f} (1 - \beta) + \beta R _ {m} \\ \end{array}
$$

Compare this formulation of the return on an investment to the return equation from the regression:

$$
R _ {j} = a + b R _ {m}
$$

Thus, a comparison of the intercept  $a$  to  $\mathrm{R_f}(1 - \beta)$  should provide a measure of the stock's performance, at least relative to the capital asset pricing model. In summary, then:

If  $a > R_f(1 - \beta) \ldots$  Stock did better than expected during regression period.

$\mathrm{a} = {\mathrm{R}}_{\mathrm{f}}\left( {1 - \beta }\right) \ldots$  Stock did as well as expected during regression period.

$a <   R_{\mathrm{f}}(1 - \beta)$  … Stock did worse than expected during regression period.

The difference between a and  $\mathrm{R_f}(1 - \beta)$  is called Jensen's alpha² and provides a measure of whether the investment in question earned a return greater than or less than its required return, given both market performance and risk. For instance, a firm that earned 15 percent during a period when firms with similar betas earned 12 percent will have earned an excess return of 3 percent; its intercept will also exceed  $\mathrm{R_f}(1 - \beta)$  by 3 percent.

The third statistic that emerges from the regression is the R-squared  $(\mathbb{R}^2)$  of the regression. While the statistical explanation of the R-squared is that it provides a measure of the goodness of fit of the regression, the economic rationale is that it provides an estimate of the proportion of the risk of a firm that can be attributed to market risk; the balance  $(1 - \mathbb{R}^2)$  can then be attributed to firm-specific risk.

The final statistic worth noting is the standard error of the beta estimate. The slope of the regression, like any statistical estimate, may be different from the true value, and the standard error reveals just how much error there could be in the estimate. The standard error can also be used to arrive at confidence intervals for the "true" beta value from the slope estimate.

# ILLUSTRATION 8.1: Estimating a Regression Beta for Boeing

Boeing Company is a firm in both the aerospace and defense businesses, and has been traded on the New York Stock Exchange (NYSE) for decades. In assessing risk parameters for Boeing, we compute the returns on the stock and the market index in two steps:

1. The returns to a stockholder in Boeing are computed month by month from January 1996 to December 2000. These returns include both dividends and price appreciation and are defined as follows:

$$
\text {S t o c k} _ {\text {B o e i n g}, j} = \left(\text {P r i c e} _ {\text {B o e i n g}, j} - \text {P r i c e} _ {\text {B o e i n g}, j - 1} + \text {D i v i d e n d s} _ {j}\right) / \text {P r i c e} _ {\text {B o e i n g}, j - 1}
$$ where Stock return  $\text{return}_{\text{Boeing},j} =$  Returns to a stockholder in Boeing in month  $j$ $\text{Price}_{\text{Boeing},j} =$  Price of Boeing stock at the end of month  $j$ $\text{Dividends}_j =$  Dividends on Boeing stock in month  $j$


Dividends are added to the returns of the month in which stockholders are entitled to the dividend.3 2. The returns on the S&P 500 market index are computed for each month of the period, using the level of the index at the end of each month and the monthly dividend on stocks in the index.

$$

\text {M a r k e t} \quad \text {r e t u r n} _ {\mathrm {j}} = \left(\text {I n d e x} _ {\mathrm {j}} - \text {I n d e x} _ {\mathrm {j - 1}} + \text {D i v i d e n d s} _ {\mathrm {j}}\right) / \text {I n d e x} _ {\mathrm {j - 1}}

$$ where index is the level of the index at the end of month  $j$  and dividends is the dividends paid on the index in month  $j$ . Although the S&P 500 and the NYSE Composite are the most widely used indexes for U.S. stocks, they are, at best, imperfect proxies for the market portfolio in the CAPM, which is supposed to include all assets.

Figure 8.1 graphs monthly returns on Boeing against returns on the S&P 500 index from January 1996 to December 2000.

The regression statistics for Boeing are as follows:

(a) Slope of the regression  $= 0.56$ . This is Boeing's beta, based on monthly returns from 1996 to 2000. Using a different time period for the regression or different return intervals (weekly or daily) for the same period can result in a different beta.

(b) Intercept of the regression  $= 0.54\%$ . This is a measure of Boeing's performance, when it is compared with  $\mathsf{R}_{\mathrm{f}}(1 - \beta)$ . The monthly riskless rate (since the returns used in the regression are monthly returns) between 1996 and 2000 averaged  $0.4\%$ , resulting in the following estimate for the performance:

$$
\mathrm{R}_{\mathrm{f}}(1 - \beta) = 0.4\% (1 - 0.56) = 0.18\%
$$

$$
\operatorname {Intercept} - \mathrm {R} _ {\mathrm {f}} (1 - \beta) = 0.54 \% - 0.18 \% = 0.36 \%
$$

This analysis suggests that Boeing performed  $0.36\%$  better than expected, when expectations are based on the CAPM, on a monthly basis between January 1996 and December 2000. This results in an annualized excess return of approximately  $4.41\%$ .

$$
\begin{array}{l} \text {A n n u a l i z e d e x c e s s r e t u r n} = (1 + \text {M o n t h l y e x c e s s r e t u r n}) ^ {1 2} - 1 \\ = (1 - .0036)^{12} - 1 = 4.41\% \\ \end{array}
$$

Note, however, that this does not imply that Boeing would be a good investment in the future.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/6d7636d27cac6e653299670ab289eb5174892a505d33f56e4bcf799a7745fe0d.jpg)

FIGURE 8.1 Boeing versus S&P 500 from 1996 to 2000

The performance measure also does not provide a breakdown of how much of this excess return can be attributed to the performance of the entire sector (aerospace and defense) and how much is specific to the firm. To make that breakdown, we would need to compute the excess over the same period for other firms in the aerospace and defense industry and compare them with Boeing's excess return. The difference would then be attributable to firm-specific actions. In this case, for instance, the average annualized excess return on other aerospace/defense firms between 1996 and 2000 was  $-0.85\%$ , suggesting that the firm-specific component of performance for Boeing is actually  $5.26\%$  [firm-specific Jensen's alpha =  $4.41\% - (-0.85\%)$ ].

(c)  $R$ -squared of the regression  $= 9.43\%$ . This statistic suggests that  $9.43\%$  of the risk (variance) in Boeing comes from market sources, and that the balance of  $90.57\%$  of the risk comes from firm-specific components. The latter risk should be diversifiable and therefore will not be rewarded with a higher expected return. Boeing's  $R$ -squared is lower than the median  $R$ -squared of companies listed on the New York Stock Exchange, which was approximately  $19\%$  in 2000.

(d) Standard error of beta estimate  $= 0.23$ . This statistic implies that the true beta for Boeing could range from 0.33 to 0.79 (subtracting and adding one standard error to beta estimate of 0.56) with  $67\%$  confidence and from 0.10 to 1.02 (subtracting and adding two standard errors to beta estimate of 0.56) with  $95\%$  confidence. While these ranges may seem large, they are not unusual for most U.S. companies. This suggests that we should consider estimates of betas from regressions with caution.

Using a Service Beta Most of us who use betas obtain them from an estimation service; Merrill Lynch, Barra, Value Line, Standard & Poor's, Morningstar, and Bloomberg are some of the well-known services. All these services begin with the regression beta just described and adjust them to reflect what they feel are better estimates of future risk. Although many of these services do not reveal their estimation procedures, Bloomberg is an exception. Figure 8.2 is the beta calculation page

# HISTORICAL BETA

Number of points may be insufficient for an accurate beta.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/e27f693702d5ca9581ebd7e2bfbf4848882fb3cb2610480dd6b78a471e3008c9.jpg)

BOEING CO

Relative Index

SPX

Period Monthly

Range 1/31/96 To

12/29/00

Market I Trade

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/bd0ea658202be7b627cd47da3ed0ae7d674267c46446ab944bf46d89d42e6119.jpg)

Alpha(Intercept) 0.50

R2 (Correlation) 0.10

Std Dev of Error 8.17

Std Error of Beta 0.23

Number of Points 59

ADJ BETA = (0.67) * RAW BETA

+（0.33）*1.0

Copyright 2001 BLOOMBERG L.P. Frankfurt:69-920410 Hong Kong:207-330-7500 New York:212-318-2000

1153-197-0 17-Apr-01 11:50:53

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/dfe1360cba19155bc020c65cd821448f84116985527c7700fc7889d6eaabb5ad.jpg)

S&P 500 INDEX

*Identifies latest observation

FIGURE 8.2 Beta Estimate for Boeing

Copyright 2001 Bloomberg LP. Reprinted with permission. All rights reserved.

from Bloomberg for Boeing, using the same period as our regression (January 1996 to December 2000).

While the time period used is identical to the one used in our earlier regression, there are subtle differences between this regression and the one in Figure 8.1. First, Bloomberg uses price appreciation in the stock and the market index in estimating betas and ignores dividends. The fact that dividends are ignored does not make much difference for a company like Boeing, but it could make a difference for a company that either pays no dividends or pays significantly higher dividends than the market. This explains the mild differences in the intercept (0.50\% versus 0.54\%) and the beta (0.57 versus 0.56).

Second, Bloomberg also computes what it calls an adjusted beta, which is estimated as follows:

$$
\text {A d j u s t e d} = \text {R a w} (0. 6 7) + 1. 0 0 (0. 3 3)
$$

These weights (0.67 and 0.33) do not vary across stocks, and this process pushes all estimated betas toward 1. Most services employ similar procedures to adjust betas toward 1. In doing so, they are drawing on empirical evidence that suggests that the betas for most companies, over time, tend to move toward the average beta, which is 1. This may be explained by the fact that firms get more diversified in their product mix and client base as they get larger. While we agree with the notion that betas move toward 1 over time, the weighting process used by most services strikes us as arbitrary and not particularly useful.

Estimation Choices for Beta Estimation There are three decisions that must be made in setting up the regression described earlier. The first concerns the length of the estimation period. Most estimates of betas, including those by Value Line and Standard & Poor's, use five years of data, while Bloomberg uses two years of data. The trade-off is simple: A longer estimation period provides more data, but the firm itself might have changed in its risk characteristics over the time period. Boeing, during the period of our analysis, acquired both Rockwell and McDonnell Douglas, changing its business mix and its basic risk characteristics.

The second estimation issue relates to the return interval. Returns on stocks are available on an annual, a monthly, a weekly, a daily, and even an intraday basis. Using daily or intraday returns increases the number of observations in the regression, but it exposes the estimation process to a significant bias in beta estimates related to nontrading.[5] For instance, the betas estimated for small firms, which are more likely to suffer from nontrading, are biased downward when daily returns are used. Using weekly or monthly returns can reduce the nontrading bias significantly.[6] In this case, using weekly returns for two years yields a beta estimate for Boeing of only 0.88, while the monthly beta estimate over the same period is 0.96.

The third estimation issue relates to the choice of a market index to be used in the regression. The standard practice used by most beta estimation services is to estimate the betas of a company relative to the index of the market in which its stock trades. Thus, the betas of German stocks are estimated relative to the Frankfurt DAX, British stocks relative to the FTSE, Japanese stocks relative to the Nikkei, and U.S. stocks relative to the NYSE Composite or the S&P 500. While this practice may yield an estimate that is a reasonable measure of risk for the domestic investor, it may not be the best approach for an international or cross-border investor, who would be better served with a beta estimated relative to an international index. For instance, Boeing's beta between 1996 and 2000 estimated relative to the Morgan Stanley Capital International (MSCI) index that is composed of stocks from different global markets yields a value of 0.82.

To the extent that different services use different estimation periods, use different market indexes, and adjust the regression beta differently, they will often provide different beta estimates for the same firm at the same point in time. While these beta differences are troubling, note that the beta estimate delivered by each of these services comes with a standard error, and it is very likely that all the betas reported for a firm fall within the range of standard errors from the regressions.

Historical Beta Estimation for Companies in Smaller (or Emerging) Markets The process for estimating betas in markets with fewer stocks listed on them is no different from the process described earlier, but the estimation choices on return intervals, the market index, and the return period can make a much bigger difference in the estimate.

# INDEX DOMINATION AND BETA ESTIMATES

There are a number of indexes that are dominated by one or a few stocks. One of the most striking cases was the Helsinki Stock Exchange (HEX) in the late 1990s. Nokia, the telecommunications giant, represented 75 percent of the Helsinki Index in terms of market value. Not surprisingly, a regression of Nokia against the HEX yielded the results shown in Figure 8.3.

The regression looks impeccable. In fact, the noise problem that we noted with Boeing, arising from the high standard errors, disappears. The beta estimate has a standard error of 0.03, but the results are deceptive. The low standard error is the result of a regression of Nokia on itself, since it dominates the index. The beta is meaningless to a typical investor in Nokia, who is likely to be diversified, if not globally, at least across European stocks. Worse still, the betas of all other Finnish stocks against the HEX become betas estimated against Nokia. In fact, the beta of every other Finnish stock at the time of this regression was less than 1. How is this possible, you might ask, if the average beta is 1? It is the weighted average beta that is 1, and if Nokia (which comprises three-quarters of the index) has a beta greater than 1 (which it does), every other stock in the index could well end up with a beta less than 1.

# HISTORICAL BETA

# NOK1V FH Equity

Relative Index

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/d230d87764aa869ae71a51c26deb0f5c4895c44b654105d91d1f4562aac1e5bb.jpg)

Period Weekly

Range 8/14/98 To

Market Trade

NOKIA OYJ

HEXGENERAL INDEX

*Identifies latest observation

FIGURE 8.3 Beta Estimate for Nokia

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/76a73eed8b4222f6f54a880f53d5c4b3e1a09f5b2885eb8297f4a1d2fa5063d1.jpg)

Copyright 2001 Bloomberg LP. Reprinted with permission. All rights reserved.

ADJ BETA 1.18

RAW BETA 1.27

Alpha(Intercept) 0.42

R2 (Correlation) 0.94

Std Dev of Error 1.87

Std Error of Beta 0.03

Number of Points 103

ADJ BETA = (0.67) * RAW BETA

+ (0.33) * 1.0

Copyright 2000 BLOMBERG L.P. Frankfurt:69-920410

Princeton:609-279-3000

Singapore:65-226-3000

Hong Kong:2-977-6000 London:207-330-7500 New York:212-318-2000

Sudebu:2-9772-8696 Tokyo:3-3201-8900 Saoyu:11-3049-4500

1653-197-0 11-Aug-00 14:56:17

■ When liquidity is limited, as it often is in many stocks in emerging markets, the betas estimated using short return intervals tend to be much more biased. In fact, using daily or even weekly returns in these markets will tend to yield betas that are not good measures of the true market risk of the company.

In many emerging markets, both the companies being analyzed and the market itself change significantly over short periods of time. Using five years of returns, as we did for Boeing, for a regression may yield a beta for a company (and market) that bears little resemblance to the company (and market) as it exists today.

■ Finally, the indices that measure market returns in many smaller markets tend to be dominated by a few large companies. For instance, the Bovespa (the Brazilian index) was dominated for several years by Telebras, which represented almost half the index. Nor is this just a problem with emerging markets. The DAX, the equity index for German stocks, is dominated by Allianz, Deutsche Bank, Siemens, and Daimler. When an index is dominated by one or a few companies, the betas estimated against that index are unlikely to be true measures of market risk. In fact, the betas are likely to be close to 1 for the large companies that dominate the index and wildly variable for all other companies.

# ILLUSTRATION 8.2: Estimating a Beta for Titan Cement Company

Titan Cement is a cement and construction company in Greece. Reproduced in Figure 8.4 is the beta estimate for Titan from April 1999 to April 2001 (using weekly returns) obtained from a beta service (Bloomberg). Note that the index used is the Athens Stock Exchange Index. Based on this regression, we arrive at the following equation:

$$
\begin{array}{l} \text {Returns} _ {\text {Titan Cement}} = 0.31 \% + 0.93 \text {Returns} _ {\text {ASE}} \\ [ 0.08] \end{array} \quad \text {R-squared} = 57 \%
$$

# HISTORICAL BETA

# TITK GA Equity

Relative Index

TASE

Period Weekly Range 4/23/99 Market Trade

4/13/01

ADJ BETA 0.95

RAW BETA 0.93

Alpha(Intercept) 0.31

R2 (Correlation) 0.57

Std Dev of Error 3.85

Std Error of Beta 0.08

Number of Points 103

TITAN CEMENT CO. S.A.

FTSE/ASE 20 INDEX

*Identifies latest observation

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/351108ec7ed1660e1e86e3a518efa2febafd8d42054539e64515fee449dbb081.jpg)

FIGURE 8.4 Beta Estimate for Titan Cement: Athens Stock Exchange Index Copyright 2001 Bloomberg LP. Reprinted with permission. All rights reserved.

ADJ BETA = (0.67) * RAW BETA + (0.33) * 1.0

Copyright: 2001 BLOOMBERG L. P. Frankfurt; 69-920410 Hong Kong; 2-372-6000 London; 207-330-7500 New York; 212-318-2000 Princeton; 603-279-3000 Singapore; 63-212-1000 Sydney; 2-977-8586 Tokyo; 3-320-818-1900 Tokyo; 1653-197-0-17 Apr-01-11; 52'55

# HISTORICAL BETA

# TITK GA Equity

Relative Index

MSER

Period Weekly

Range 4/23/99 To Market Trade

4/13/01

ADJ BETA RAW BETA

0.55

Alpha(Intercept)

0.24

R2 (Correlation)

0.03

Std Dev of Error

5.78

Std Error of Beta

0.20

Number of Points

103

ADJ BETA = (0.67) * RAW BETA

+ (0.33) * 1.0

Copyright 2001 BLOOMBERG L.P. Frankfurt:69-920410 Hong Kong:2-977-6000 London:207-330-7500 New York:212-318-2000

Princeton:609-279-3000 Singapore:65-212-1000 Sydney:2-9777-8686 Tokyo:3-3201-8900 São Paulo:11-3048-4500

5003 568 Fua16-11-3048-4500

1653-197-0 17-Apr-01 11:54:21

TITAN CEMENT CO. S.A.

MSCI EURO INDEX

*Identifies latest observation

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/2d561a3bbdd1af009ab00e17a20f88daed06a3c9c9707b65e282dad99a2e0361.jpg)

FIGURE 8.5 Beta Estimate for Titan Cement: MSCI European Index

FIGURE 8.6 Beta Estimate for Titan Cement: MSCI Global Index

Copyright 2001 Bloomberg LP. Reprinted with permission. All rights reserved.

# HISTORICAL BETA

# TITK GA Equity

Relative Index

NFT

Period Weekly

Range 4/23/99 To

4/13/01

Market 1 Trade

DJ BETA

0.55

RAW BETA

Alpha(Intercept) 0.32

R2 (Correlation) 0.03

Std Dev of Error 5.78

Std Error of Beta 0.19

Number of Points 103

ADJ BETA = (0.67) * RAW BETA

+ (0.33) * 1.0

Copyright 2001 BLOOMBERG L.P. Frankfurt:69-920410 Hong Kong:2-977-6000 London:202-330-7500 New York:212-318-2000

Princeton:609-279-3000 Singapore:65-212-1000 Sudan:2-9777-8686 Toku:3-3201-8900 São Paulo:11-3048-4500

1653-197-0 17-Apr-01 11:53:11

Copyright 2001 Bloomberg LP. Reprinted with permission. All rights reserved.

The beta for Titan Cement, based upon this regression, is 0.93. The standard error of the estimate, shown in brackets below, is only 0.08, but the caveats about narrow indexes apply to the Athens Stock Exchange Index.

Drawing on the arguments in the previous section, if the marginal investor in Titan Cement is, in fact, an investor diversified across European companies, the appropriate index would have been a European stock index. The Bloomberg beta calculation with the MSCI European index is reported in Figure 8.5. Note the decline in beta to 0.33 and the increase in the standard error of the beta estimate.

In fact, if the marginal investor is globally diversified, Titan Cement's beta (as well as Boeing's beta in Illustration 8.1) should have been estimated against a global index. Using the Morgan Stanley Capital International (MSCI) global index, we get a regression beta of 0.33 in Figure 8.6. In fact, the beta estimate and the standard error look very similar to the ones estimated against the European index.

Estimating the Historical Beta for Private Firms The historical approach to estimating betas works only for assets that have been traded and have market prices. Private companies do not have a market price history. Consequently, we cannot estimate a regression beta for these companies. Nevertheless, we still need estimates of cost of equity and capital for these companies.

You might argue that this is not an issue if you do not value private companies; but you will still be confronted with this issue even when valuing publicly traded firms. Consider, for instance, the following scenarios:

If you have to value a private firm for an initial public offering, you will need to estimate discount rates for the valuation.

Even after a firm has gone public, there will be a period of time lasting as long as two years when there will be insufficient data for a regression.

If you are called upon to value the division of a publicly traded firm that is up for sale, you will not have past prices to draw on to run a regression.

■ Finally, if the firm has gone through significant restructuring—divestitures or recapitalization—in the recent past, regression betas become meaningless because the company itself has changed its risk characteristics.

Thus regression betas are either unavailable or meaningless in a significant number of valuations.

Some analysts assume that discounted cash flow valuation is not feasible in these scenarios; instead they use multiples. Others make assumptions about discount rates based on rules of thumb. Neither approach is appealing. The next section develops an approach for estimating betas that is general enough to apply to all of these companies.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/d2716d8c7c9c0b97f8725514840831f21c3c7e34646bbca588d0e5e06a99c009.jpg)

# risk.xls. This spreadsheet allows you to run a regression of stock returns against market returns and estimate risk parameters.

The Limitations of Regression Betas Much of what has been presented in this section represents an indictment of regression betas. In the case of Boeing, the biggest problem was that the beta had high standard error. In fact, this is not a problem unique to Boeing. Figure 8.7 presents the distribution of standard errors on beta estimates for U.S. companies.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/9a51be8545d183a50db6b93738e4ac4eeb7ced49a02ff5d90d8f047aae9439dc.jpg)

FIGURE 8.7 Distribution of Standard Errors on Beta—U.S. Firms from 2008 to 2010 Source: Bloomberg.

With the Nokia regression, we seem to cure the standard error problem but at a very large cost. The low standard errors reflect the domination of the index by a stock and result in betas that may be precise but bear no resemblance to true risk.

Changing the market index, the return period, and the return interval offers no respite. If the index becomes a more representative index, the standard errors on betas will increase, reflecting the fact that more of the risk in the stock is firm-specific. If the beta changes as the return period or interval changes, it creates more uncertainty about the true beta of the company.

In short, regression betas will almost always be either too noisy or skewed by estimation choices to be useful measures of the equity risk in a company. The cost of equity is far too important an input into a discounted cash flow valuation to be left to statistical chance.

Fundamental Betas A second way to estimate betas is to look at the fundamentals of the business. The beta for a firm may be estimated from a regression, but it is determined by decisions the firm has made on what business to be in and how much operating leverage to use in the business, and by the degree to which the firm uses financial leverage. This section examines an alternative way of estimating betas, where we are less reliant on historical betas and more cognizant of their fundamental determinants.

Determinants of Betas The beta of a firm is determined by three variables: (1) the type of business or businesses the firm is in, (2) the degree of operating leverage of the firm, and (3) the firm's financial leverage. Although we will use these determinants to find betas in the capital asset pricing model, the same analysis can be used to calculate the betas for the arbitrage pricing and the multifactor models as well.

Type of Business Since betas measure the risk of a firm relative to a market index, the more sensitive a business is to market conditions, the higher its beta. Thus, other things remaining equal, cyclical firms can be expected to have higher betas than noncyclical firms. Companies involved in housing and automobiles, two sectors of the economy that are very sensitive to economic conditions, should have higher betas than companies in food processing and tobacco, which are relatively insensitive to business cycles.

This view can be extended to a company's products. The degree to which a product's purchase is discretionary will affect the beta of the firm manufacturing the product. Firms whose products are much more discretionary to their customers—they can defer or delay buying these products—should have higher betas than firms whose products are viewed as necessary or less discretionary. Thus, the beta of Procter & Gamble, which sells diapers and daily household products, should be lower than the beta of Gucci, which manufactures luxury products.

Degree of Operating Leverage The degree of operating leverage is a function of the cost structure of a firm and is usually defined in terms of the relationship between fixed costs and total costs. A firm that has high fixed costs relative to total costs is said to have high operating leverage. A firm with high operating leverage will also have higher variability in operating income than would a firm producing a similar product with low operating leverage. Other things remaining equal, the higher variance in operating income will lead to a higher beta for the firm with high operating leverage.

Can firms change their operating leverage? While some of a firm's cost structure is determined by the business it is in (an energy utility has to build expensive power plants, and airlines have to buy or lease expensive planes), firms in the United States have become increasingly inventive in lowering the fixed cost component in their total costs. For instance, firms have made cost structures more flexible by:

■ Negotiating labor contracts that emphasize flexibility and allow the firm to make its labor costs more sensitive to its financial success.

■ Entering into joint venture agreements, where the fixed costs are borne by someone else.

Subcontracting manufacturing and outsourcing, which reduce the need for expensive plant and equipment.

While the arguments for such actions may be couched in terms of competitive advantage and flexibility, they do also reduce the operating leverage of the firm and its exposure to market risk.

While operating leverage affects betas, it is difficult to measure the operating leverage of a firm, at least from the outside, since fixed and variable costs are often aggregated in income statements. It is possible to get an approximate measure of the operating leverage of a firm by looking at changes in operating income as a function of changes in sales.

Degree of operating leverage  $= \%$  change in operating profit/\% change in sales

For firms with high operating leverage, operating income should change more than proportionately when sales change.

# SIZE, GROWTH, AND BETAS

Generally, smaller firms with higher growth potential are viewed as riskier than larger, more stable firms. While the rationale for this argument is clear when talking about total risk, it becomes more difficult to see when looking at market risk or betas. Should a smaller software firm have a higher beta than a larger software firm? One reason to believe that it should is operating leverage. If there is a setup cost associated with investing in infrastructure or economies of scale, smaller firms will have higher fixed costs than larger firms, leading in turn to higher betas for these firms.

With growth firms, the argument for higher betas rests on the notion of discretionary versus nondiscretionary purchases. For a high-growth firm to deliver on its growth, new customers have to adopt the product or existing customers have to buy more of the product. Whether they do so will depend, in large part, on how well-off they feel. This, in turn, will make the profits of high-growth firms much more dependent on how well the economy is doing, thus increasing their betas.

Degree of Financial Leverage Other things remaining equal, an increase in financial leverage will increase the beta of the equity in a firm. Intuitively, we would expect that the fixed interest payments on debt result in increasing income in good times and decreasing income in bad times. Higher leverage increases the variance in net income and makes equity investment in the firm riskier. If all the firm's risk is borne by the stockholders (i.e., the beta of debt is zero), and debt has a tax benefit to the firm, then,

$$
\beta_ {\mathrm {L}} = \beta_ {\mathrm {u}} [ 1 + (1 - t) (\mathrm {D} / \mathrm {E}) ]
$$ where  $\beta_{\mathrm{L}} =$  Levered beta for equity in the firm


$\beta_{\mathrm{u}} =$  Unlevered beta of the firm (i.e., the beta of the firm without any debt)  $\mathbf{t} =$  Marginal tax rate

$\mathrm{D / E} =$  Debt-to-equity ratio (market value)

Intuitively, we expect that as leverage increases (as measured by the debt-to-equity ratio), equity investors bear increasing amounts of market risk in the firm, leading to higher betas. The tax factor in the equation captures the tax benefits that accrue from interest payments.

The unlevered beta of a firm is determined by the nature of its products and services (cyclicality, discretionary nature) and its operating leverage. It is often also referred to as the asset beta, since it is determined by the assets owned by the firm. Thus, the levered beta, which is also the beta for an equity investment in a firm, is determined both by the riskiness of the business it operates in and by the amount of financial leverage risk it has taken on.

Since financial leverage multiplies the underlying business risk, it stands to reason that firms that have high business risk should be reluctant to take on financial leverage. It also stands to reason that firms that operate in stable businesses should be much more willing to take on financial leverage. Utilities, for instance, have historically had high debt ratios but have not had high betas, mostly because their underlying businesses have been stable and fairly predictable.

# ILLUSTRATION 8.3: Effects of Leverage on Betas: Boeing

From the regression for the period from 1996 to 2000, Boeing had a historical beta of 0.56. Since this regression uses stock prices of Boeing over this period, we began by estimating the average debt-to-equity ratio between 1996 and 2000, using market values for debt and equity.

$$

\text{Average debt-to-equity ratio between 1996 and} 2000 = 15.56 \%

$$

The beta over the 1996-2000 period reflects this average leverage. To estimate the unlevered beta over the period, a marginal tax rate of  $35\%$  is used:

$$

\begin{array}{l} \text {U n l e v e r e d} \beta a = \text {C u r r e n t} \beta a / [ 1 + (1 - \text {T a x} \text {r a t e}) (\text {A v e r a g e} \text {d e b t} / \text {E q u i t y}) ] \\ = 0. 5 6 / [ 1 + (1 - 0. 3 5) (0. 1 5 5 6) ] = 0. 5 1 \\ \end{array}

$$

The unlevered beta for Boeing over the 1996-2000 period is 0.51. The levered beta at different levels of debt can then be estimated:

$$

\text {L e v e r e d} = \text {U n l e v e r e d} \beta a \times [ 1 + (1 - \text {T a x r a t e}) (\text {D e b t / E q u i t y}) ]

$$

For instance, if Boeing were to increase its debt equity ratio to  $10\%$ , its equity beta will be:

$$

\text {Levered beta} (@ 10 \% \mathrm {D} / \mathrm {E}) = 0.51 \times [ 1 + (1 - 0.35) (0.10) ] = 0.543

$$

If the debt equity ratio were raised to  $25\%$ , the equity beta would be:

$$

\text {L e v e r e d b e t a} (@ 25 \% \mathrm {D} / \mathrm {E}) = 0. 5 1 \times [ 1 + (1 - 0. 3 5) (0. 2 5) ] = 0. 5 9

$$

The following table summarizes the beta estimates for different levels of financial leverage ranging from  $0\%$  to  $90\%$  debt.

<table><tr><td>Debt to Capital</td><td>Debt/Equity Ratio</td><td>Beta</td><td>Effect of Leverage</td></tr><tr><td>0\%</td><td>0.00\%</td><td>0.51</td><td>0.00</td></tr><tr><td>10\%</td><td>11.11\%</td><td>0.55</td><td>0.04</td></tr><tr><td>20\%</td><td>25.00\%</td><td>0.59</td><td>0.08</td></tr><tr><td>30\%</td><td>42.86\%</td><td>0.65</td><td>0.14</td></tr><tr><td>40\%</td><td>66.67\%</td><td>0.73</td><td>0.22</td></tr><tr><td>50\%</td><td>100.00\%</td><td>0.84</td><td>0.33</td></tr><tr><td>60\%</td><td>150.00\%</td><td>1.00</td><td>0.50</td></tr><tr><td>70\%</td><td>233.33\%</td><td>1.28</td><td>0.77</td></tr><tr><td>80\%</td><td>400.00\%</td><td>1.83</td><td>1.32</td></tr><tr><td>90\%</td><td>900.00\%</td><td>3.48</td><td>2.98</td></tr></table>

As Boeing's financial leverage increases, the beta increases concurrently.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/5c7517dc2ed3015f5f2c178c08343e7a3330cfc0cd01a995fad0d3f7ca6ba71a.jpg)

# levbeta.xls. This spreadsheet allows you to estimate the unlevered beta for a firm and compute the betas as a function of the leverage of the firm.

Bottom-Up Betas Breaking down betas into their business risk and financial leverage components provides us with an alternative way of estimating betas, in which we do not need past prices on an individual firm or asset to estimate its beta.

To develop this alternative approach, we need to introduce an additional property of betas that proves invaluable. The beta of two assets put together is a weighted average of the individual asset betas, with the weights based on market value. Consequently, the beta for a firm is a weighted average of the betas of all the different businesses it is in. We can estimate the beta for a firm in five steps:

Step 1: Identify the business or businesses the firm operates in.

Step 2: Find other publicly traded firms in each business and obtain their regression betas, which we use to compute an average beta for the firms.

Step 3: Estimate the average unlevered beta for the business by unlevering the average (or median) beta for the firms by their average (or median) debt-to-equity ratio. Alternatively, we could estimate the unlevered beta for each firm and then compute the average of the unlevered betas. The first approach is preferable because unlevering an erroneous regression beta is likely to compound the error.

$$

\text {U n l e v e r e d b e t a} _ {\text {b u s i n e s s}} = \text {B e t a} _ {\text {c o m p a r a b l e f i r m s}} / [ 1 + (1 - t) (\mathrm {D} / \mathrm {E} \text {r a t i o} _ {\text {c o m p a r a b l e f i r m s}}) ]

$$

Step 4: Estimate an unlevered beta for the firm being analyzed, taking a weighted average of the unlevered betas for the businesses it operates in, using the proportion of firm value derived from each business as the weights. If values are not available, use operating income or revenues as weights. This weighted average is called the bottom-up unlevered beta.

$$

\text {U n l e v e r e d} \quad \text {b e t a} _ {\text {f i r m}} = \sum_ {\mathrm {j} = 1} ^ {\mathrm {j} = \mathrm {k}} \left(\text {U n l e v e r e d} \quad \text {b e t a} _ {\mathrm {j}} \times \text {V a l u e w e i g h t} _ {\mathrm {j}}\right)

$$ where the firm is assumed to operating in  $k$  different businesses.

Step 5: Finally, estimate the current market values of debt and equity at the firm and use this debt-to-equity ratio to estimate a levered beta.

The betas estimated using this process are called bottom-up betas.

The Case for Bottom-Up Betas At first sight, the use of bottom-up betas may seem to leave us exposed to all of the problems noted with regression betas. After all, the betas for other publicly traded firms in the business are obtained from regressions. Notwithstanding this, bottom-up betas represent a significant improvement on regression betas for the following reasons:

Although each regression beta is estimated with standard error, the average across a number of regression betas has much lower standard error. The intuition is simple. A high standard error on a beta estimate indicates that it can be significantly higher or lower than the true beta. Averaging across these individual regression betas results in an average beta that is far more precise than the individual betas that went into it. In fact, if the estimation errors on individual firm betas are uncorrelated across firms, the savings in standard error can be stated as a function of the average standard error or beta estimates and the number of firms in the sample.

$$
\text {S t a n d a r d e r r o r} _ {\text {b o t t o m - u p b e t a}} = \frac {\text {A v e r a g e s t a n d a r d e r r o r} _ {\text {c o m p a r a b l e f i r m s}}}{\sqrt {\mathrm {n}}}
$$ where  $n$  is the number of firms in the sample. Thus, if the average standard error in beta estimates for software firms is 0.50 and the number of software firms is 100, the standard error of the average beta is only 0.05 (0.50/√100).


A bottom-up beta can be adapted to reflect actual changes in a firm's business mix and expected changes in the future. Thus if a firm divested a major portion of its operations last week, the weights on the businesses can be modified to reflect the divestiture. The same can be done with acquisitions. In fact, a firm's strategic plans to enter new businesses in the future can be brought into the beta estimates for future periods.
Firms do change their debt ratios over time. Although regression betas reflect the average debt-to-equity ratio maintained by the firm during the regression period, bottom-up betas use the current debt-to-equity ratio. If a firm plans to change its debt-to-equity ratio in the future, the beta can be adjusted to show these changes.
■ Finally, bottom-up betas wean us from our dependence on historical stock prices. While we do need these prices to get betas for comparable firms, all we need for the firm being analyzed is a breakdown of the businesses it is in. Thus, bottom-up betas can be estimated for private firms, divisions of businesses, and stocks that have just started trading in financial markets.

Computational Details Although the idea behind bottom-up betas is fairly simple, there are several computational details that deserve attention.

Defining comparable firms. First, we have to decide how narrowly we want to define a business. Consider, for instance, a firm that manufactures entertainment software. We could define the business as entertainment software and consider only companies that primarily manufacture entertainment software to be comparable firms. We could go even further and define comparable firms as firms manufacturing entertainment software with revenues similar to that of the company being analyzed. While there are benefits to narrowing the comparable firm definition, there is a cost. Each additional criterion added to the definition of comparable will mean that fewer firms make the list, and the savings in standard error that comprise the biggest benefit to bottom-up betas become smaller. A commonsense principle should therefore come into play. If there are hundreds of firms in a business, as there are in the software sector, you can afford to be more selective. If there are relatively few firms, not only do you have to become less selective, you might have to broaden the definition of comparable to bring other firms into the mix.


Estimating betas. Once the comparable firms in a business have been defined, you have to estimate the betas for these firms. Although it would be best to estimate the beta for each of these firms against a common and well-diversified equity index, it is usually easier to use service betas that are available for each of these firms. These service betas may be estimated against different indexes. For instance, if you define your business to be global telecommunications and obtain betas for global telecom firms from Bloomberg, these betas will be estimated against the local indexes. This is usually not a fatal problem, especially with large samples, since errors in the estimates tend to average out.
- Averaging method. The average beta for the firms in the sector can be computed in one of three ways. We could use market-weighted averages, but the savings in standard error that touted in the earlier section will be muted, especially if there are one or two very large firms in the sample. We could estimate the simple average of the betas of the companies, thus weighting all betas equally. The process weights the smallest firms in the sample disproportionately (to their market value), but the savings in standard error are likely to be maximized. If the data being average (betas, debt to equity ratios) have large outliers, we can use the median values.
- Controlling for differences. In essence, when we use betas from comparable firms, we are assuming that all firms in the business are equally exposed to business risk and have similar operating leverage. Note that the process of leveraging and unlevering of betas allows us to control for differences in financial leverage. If there are significant differences in operating leverage—cost structure—across companies, the differences in operating leverage can be controlled for as well. This would require estimation of a business beta, where the effects of operating leverage are taken out from the unlevered beta:

Business beta = Unlevered beta /[1 + (Fixed costs/Variable costs)]

Note the similarity to the adjustment for financial leverage; the only difference is that both fixed and variable costs are eligible for the tax deduction, and the tax rate is therefore no longer a factor. The business beta can then be levered to reflect the differences in operating leverage across firms.

# CASH AND BETAS

In the process for estimating bottom up betas, we suggested a two step process: getting a weighted average of the betas of the businesses that a firm is in, using the sector-average betas of other publicly traded firms in each business and then adjusting for the debt to equity ratio of the firm in question.

In making these adjustments, though, we have to deal that a firm may have a significant portion of its assets as cash. Since cash is usually invested in close to riskless, liquid investments, it should have a beta of zero. So, how does cash enter the computation? It does so in two places. When we computed the sector-average beta, we suggesting unlevering the average regression beta for the sector, using the average debt to equity ratio and marginal tax rate for the sector. Thus, with an average levered beta of 1.30, an average debt to equity ratio of  $50\%$  and an average tax rate of  $40\%$ , we estimate a sector-average unlevered beta of 1.00 for the entertainment business:

$$

\text {U n l e v e r e d} = 1. 3 0 / (1 + (1 -. 4 0) (. 5 0)) = 1. 0 0

$$

However, this is the unlevered beta for companies in this business and these companies will generally have some of these value in cash balances. Assume, for instance, that the average cash balance of entertainment firms in the sector is  $10\%$ . The unlevered beta for the entertainment business alone can then be computed as follows:

Unlevered beta for entertainment (.90) + Beta for cash (.10) = 1.00

Plugging in a beta of zero for cash, we get a beta for just the entertainment business:

Unlevered beta for entertainment business  $= 1.00 / .90 = 1.11$

We call this the beta for the sector, corrected for cash, and use it in the computation of bottom up betas.

The second place it shows up is when we compute the bottom up beta for a company. To estimate the bottom up beta for just the operating assets of a company like Boeing, we would take a weighted average of the cash corrected unlevered betas of the aerospace and defense businesses. This is the beta we would use to compute the cost of equity and cost of capital. To get a bottom up beta for Boeing as a company, we would then bring in the cash holdings as a separate asset and give it a beta of zero. This beta would then be a beta for all of Boeing's assets and for Boeing's equity in those assets. Each beta has a use in valuation.

# ILLUSTRATION 8.4: Estimating a Bottom-Up Beta for Vans Shoes—January 2001

Vans Shoes is a shoe manufacturing firm with a market capitalization of 191 million. To estimate the bottom-up beta for Vans Shoes, consider the betas of all publicly traded shoe companies in the following table:

<table><tr><td>Company Name</td><td>Beta</td><td>Market D/E</td><td>Tax Rate</td><td>Fixed/Variable</td></tr><tr><td>Barry (R.G.)</td><td>1.00</td><td>40.51\%</td><td>36.89\%</td><td>75.66\%</td></tr><tr><td>Brown Shoe</td><td>0.80</td><td>106.64\%</td><td>37.06\%</td><td>61.41\%</td></tr><tr><td>Candie&#x27;s Inc.</td><td>1.20</td><td>75.86\%</td><td>0.00\%</td><td>29.78\%</td></tr><tr><td>Converse Inc.</td><td>0.60</td><td>653.46\%</td><td>0.00\%</td><td>39.64\%</td></tr><tr><td>Deckers Outdoor Corp.</td><td>0.80</td><td>82.43\%</td><td>0.00\%</td><td>62.52\%</td></tr><tr><td>Florsheim Group Inc.</td><td>0.65</td><td>96.79\%</td><td>32.47\%</td><td>79.03\%</td></tr><tr><td>K-Swiss Inc.</td><td>0.65</td><td>0.69\%</td><td>40.94\%</td><td>56.92\%</td></tr><tr><td>Kenneth Cole ‘A’</td><td>1.05</td><td>0.29\%</td><td>39.50\%</td><td>56.97\%</td></tr><tr><td>LaCrosse Footwear Inc.</td><td>0.55</td><td>81.15\%</td><td>39.25\%</td><td>30.36\%</td></tr><tr><td>Maxwell Shoe Inc.</td><td>0.75</td><td>2.24\%</td><td>33.28\%</td><td>20.97\%</td></tr><tr><td>Nike Inc. ‘B’</td><td>0.90</td><td>9.47\%</td><td>39.50\%</td><td>46.07\%</td></tr><tr><td>Reebok Int&#x27;l.</td><td>1.05</td><td>171.90\%</td><td>32.28\%</td><td>35.03\%</td></tr><tr><td>Rocky Shoes &amp; Boots Inc.</td><td>0.80</td><td>93.51\%</td><td>0.00\%</td><td>26.89\%</td></tr><tr><td>Saucony Inc.</td><td>0.15</td><td>34.93\%</td><td>31.11\%</td><td>49.33\%</td></tr><tr><td>Shoe Carnival</td><td>0.85</td><td>2.18\%</td><td>39.97\%</td><td>35.03\%</td></tr><tr><td>Stride Rite Corp.</td><td>0.80</td><td>0.00\%</td><td>36.80\%</td><td>48.23\%</td></tr><tr><td>Timberland Co. ‘A’</td><td>1.10</td><td>15.23\%</td><td>32.00\%</td><td>49.50\%</td></tr><tr><td>Vulcan Int&#x27;l.</td><td>0.65</td><td>3.38\%</td><td>5.61\%</td><td>11.92\%</td></tr><tr><td>Wellco Enterprises Inc.</td><td>0.60</td><td>48.89\%</td><td>0.00\%</td><td>11.52\%</td></tr><tr><td>Weyco Group</td><td>0.30</td><td>11.91\%</td><td>35.74\%</td><td>24.69\%</td></tr><tr><td>Wolverine World Wide</td><td>1.35</td><td>44.37\%</td><td>32.62\%</td><td>32.31\%</td></tr><tr><td>Average (Simple)</td><td>0.79</td><td>75.04\%</td><td>25.95\%</td><td>42.08\%</td></tr><tr><td>Vans Shoes</td><td></td><td>9.41\%</td><td>34.06\%</td><td>31.16\%</td></tr></table>

In addition to the beta for each firm, the table reports the market debt-to-equity ratio, the effective tax rate, and a measure of operating leverage obtained by dividing selling, general, and administrative (SG&A) expenses (which we consider fixed) by other operating expenses (which we consider variable). We can estimate the unlevered beta for the business using the averages for these values:

Average beta  $= 0.79$

Average debt-to-equity ratio  $= 75.04\%$

Using the average tax rate of  $25.95\%$ , we can estimate the unlevered beta.

$$

\text {U n l e v e r e d} \quad \text {b e t a} = 0. 7 9 / [ 1 + (1 -. 2 5 9 5). 7 5 0 4 ] = . 5 0 8 1

$$

The beta for Vans Shoes can then be obtained using the firm's marginal tax rate of  $34.06\%$  and its market debt-to-equity ratio of  $9.41\%$ .

$$

\text {L e v e r e d b e t a} _ {\text {V a n s}} = 0. 5 0 8 1 [ 1 + (1 - . 3 4 0 6). 0 9 4 1 ] = . 5 3 9 7

$$

This levered beta is based on the implicit assumption that all shoe manufacturers have similar operating leverage. In fact, we could adjust the unlevered beta for the average fixed cost/variable cost ratio for the business and then lever back at the operating leverage for Vans Shoes:

$$

\begin{array}{l} \text{Average fixed cost/Variable cost ratio} = 42.08 \% \\ \text {B u s i n e s s} = \text {U n l e v e r e d} \beta a / (1 + \text {F i x e d c o s t s / V a r i a b l e c o s t s}) \\ = . 5 0 8 1 / 1. 4 2 0 8 = . 3 5 7 6 \\ \end{array}

$$

We can then use Vans' fixed cost/variable cost ratio of  $31.16\%$  to estimate an adjusted unlevered and levered beta.

Unlevered beta $_{\text{vans}} = 0.3576(1 + .3116) = .4691$

Levered beta  $= .4691[1 + (1 - .3406).0941] = .4981$

By having a debt-to-equity ratio, and operating leverage, that is lower than the average for the industry, Vans Shoes ends up with a beta much lower than that of the industry.

# ILLUSTRATION 8.5: Estimating a Bottom-Up Beta for Boeing—September 2000

Boeing has undergone a significant change in both its business mix and its financial leverage over the past five years. Not only did it acquire Rockwell and McDonnell Douglas, giving it a major foothold in the defense business, but it borrowed substantial amounts to make these acquisitions. Since these events have occurred over time, the historical regression beta does not fully reflect the effects of these changes. To estimate Boeing's beta in 2000, we broke its business into two areas:

1. Commercial aircraft, which is Boeing's core business of manufacturing commercial jet aircraft and providing related support services.
2. Information, space, and defense systems (ISDS), which include research, development, production, and support of military aircraft, helicopters, and missile systems.

Each of these areas of business has very different risk characteristics, and the unlevered beta for each business was estimated by looking at comparable firms in each business. The following table summarizes these estimates.

<table><tr><td>Segment</td><td>Revenues</td><td>Value/Sales Ratio for Segment</td><td>Estimated Value</td><td>Unlevered Beta</td><td>Segment Weight</td><td>Weighted Beta</td></tr><tr><td>Commercial aircraft</td><td>$26,929</td><td>1.12</td><td>$30,160</td><td>0.91</td><td>70.39\%</td><td>0.6405</td></tr><tr><td>ISDS</td><td>$18,125</td><td>0.70</td><td>$12,688</td><td>0.80</td><td>29.61\%</td><td>0.2369</td></tr><tr><td>Boeing</td><td>$45,054</td><td></td><td>$42,848</td><td></td><td>100.00\%</td><td>0.8774</td></tr></table>

For commercial aircraft there are no truly comparable firms. We looked at Boeing's own beta prior to its expansion in the defense business and computed the unlevered beta using this estimate. For ISDS, we used 17 firms that derived the bulk of their revenues from defense contracting, and computed the average beta and debt-to-equity ratio for these firms. The unlevered beta was computed using these averages. The values for each of the divisions were estimated using the revenues from each segment and a typical revenue multiple for that type of business. The unlevered beta for Boeing as a company in 2000 can be estimated by taking a value-weighted average of the betas of each of the different business areas. This is reported in the last column to be 0.8774.

The equity beta can then be estimated using the debt-to-equity ratio for Boeing in 2000. Combining the market value of equity of  \$55.20 billion and the value of debt of\$ 7.85 billion, and using a 35\% tax rate for the firm, we arrive at the beta for Boeing.

$$

\text {E q u i t y b e t a f o r B o e i n g} = 0. 8 7 7 4 [ 1 + (1 -. 3 5) (7. 8 5 / 5 5. 2) ] = 0. 9 5 8 5

$$

This is very different from the historical beta of 0.56 that we obtained from the regression, but it is, in our view, a much truer reflection of the risk in Boeing in 2000.

# ILLUSTRATION 8.6: Estimating a Bottom-Up Beta for Titan Cement—January 2000

To estimate a beta for Titan Cement, we began by defining comparable firms as other cement companies in Greece but found only one comparable firm. When we expanded the list to include cement companies across Europe, we increased our sample to nine firms. Since we did not see any reason to restrict our comparison to just European firms, we decided to look at the average beta for cement companies globally. There were 108 firms in this sample, with an average beta of 0.99, an average tax rate of  $34.2\%$ , and an average debt-to-equity ratio of  $27.06\%$ . We used these numbers to arrive at an unlevered beta of 0.84.

$$

\text {U n l e v e r e d b e t a f o r c e m e n t} = 0. 9 9 / [ 1 + (1 - . 3 4 2) (. 2 7 0 6) ] = 0. 8 4

$$

We then used Titan's market values of equity (566.95 million Gdr) and debt (13.38 million Gdr) to estimate a levered beta for its equity:

$$

\text {L e v e r e d} = 0. 8 4 [ 1 + (1 -. 2 4 1 4) (1 3. 3 8 / 5 6 6. 9 5) ] = 0. 8 6

$$

We used Titan's marginal tax rate of  $24.14\%$  in this calculation.

# HOW WELL DO BETAS TRAVEL?

Often, when analyzing firms in small or emerging markets, we have to estimate betas by looking at firms in the same business but traded on other markets. This is what we did when estimating the beta for Titan Cement. Is this appropriate? Should the beta for a steel company in the United States be comparable to that of a steel company in Indonesia? We see no reason why it should not be. But the company in Indonesia has much more risk, you might argue. We do not disagree, but the fact that we use similar betas does not mean that we believe that the costs of equity are identical across all steel companies. In fact, using the approach described in the preceding chapter, the risk premium used to estimate the cost of equity for the Indonesian company will incorporate a country risk premium, whereas the cost of equity for the U.S. company will not. Thus, even if the betas used for the two companies are identical, the cost of equity for the Indonesian company will be much higher.

There are a few exceptions to this proposition. Recall that one of the key determinants of betas is the degree to which a product or service is discretionary. It is entirely possible that products or services that are discretionary in one market (and command high betas) may be nondiscretionary in another market (and have low betas). For instance, phone service is viewed as a nondiscretionary product in most developed markets, but is a discretionary product in emerging markets. Consequently, the average beta estimated by looking at telecom firms in developed markets will understate the true beta of a telecom firm in an emerging market. For the latter beta, the comparable firms should be restricted to include only telecom firms in emerging markets.

Calculating Betas after a Major Restructuring The bottom-up process of estimating betas provides a solution when firms go through major restructurings that change both their business mix and their leverage. In these cases, the regression betas are misleading because they do not reflect fully the effects of these changes. Boeing's beta estimated using the bottom-up approach is likely to provide a more precise estimate than the historical beta from a regression of Boeing's stock prices, given Boeing's acquisitions of Rockwell and McDonnell Douglas and its increase in leverage. In fact, a firm's beta can be estimated using the bottom-up approach even before the restructuring becomes effective. Illustration 8.7, for instance, estimates Boeing's beta just before and after its acquisition of McDonnell Douglas, allowing for the changes in both the business mix and the leverage.

# ILLUSTRATION 8.7: Beta of a Firm after an Acquisition: Boeing and McDonnell Douglas

In 1997, Boeing announced that it was acquiring McDonnell Douglas, another company involved in the aerospace and defense business. At the time of the acquisition, the two firms had the following market values and betas:

<table><tr><td>Company</td><td>Beta</td><td>Debt</td><td>Equity</td><td>Firm Value</td></tr><tr><td>Boeing</td><td>0.95</td><td>$3,980</td><td>$32,438</td><td>\$36,418</td></tr><tr><td>McDonnell Douglas</td><td>0.90</td><td>$2,143</td><td>$12,555</td><td>\$14,698</td></tr></table>

Note that the market values of equity used for the two firms reflect the market values after the acquisition announcement and reflect the acquisition price agreed on for McDonnell Douglas shares.

In order to evaluate the effects of the acquisition on Boeing's beta, we first examine the effects of the merger on the business risk of the combined firm by estimating the unlevered betas of the two companies and calculating the combined firm's unlevered beta. (We used a marginal tax rate of  $35\%$  for both firms.)

$$

\text {B o e i n g s} = 0. 9 5 / [ 1 + (1 - . 3 5) \times (3, 9 8 0 / 3 2, 4 3 8) ] = 0. 8 8

$$

$$

\text {M c D o n n e l l D o u g l a s s} = 0. 9 0 / [ 1 + (1 -. 3 5) \times (2, 1 4 3 / 1 2, 5 5 5) ] = 0. 8 1

$$

The unlevered beta for the combined firm can be calculated as the weighted average of the two unlevered betas, with the weights based on the market values of the two firms.

$$

\begin{array}{l} \text {U n l e v e r e d} = 0. 8 8 (3 6, 4 1 8 / 5 1, 1 1 6) + 0. 8 1 (1 4, 6 9 8 / 5 1, 1 1 6) \\ = 0. 8 6 \\ \end{array}

$$

Boeing's acquisition of McDonnell Douglas was accomplished by issuing new stock in Boeing to cover the value of McDonnell Douglas' equity of 12,555 million. Since no new debt was used to finance the deal, the debt outstanding in the firm after the acquisition is just the sum of the debt outstanding at the two companies before the acquisition.

$$

\begin{array}{l} D e b t = M c d o n n e l l D o u g l a s \text {s} \text {o l d} \text {d e b t} + B o e i n g \text {s} \text {o l d} \text {d e b t} \\ = \3,980 + \2,143 = \$ 6,123 \text{ million} \\ \end{array}

$$

$$

\begin{array}{l} E q u i t y = B o e i n g s \text {o l d} + N e w \\ = \32,438 + \12,555 = \44,993 \text{ million} \\ \end{array}

$$

The debt/equity ratio can then be computed as follows:

$$

\mathrm{D / E ratio} = 6,123 / 44,993 = 13.61 \%

$$

This debt/equity ratio in conjunction with the new unlevered beta for the combined firm yields a new beta of:

$$

\text {N e w} = 0. 8 6 [ 1 + (1 - . 3 5) (. 1 3 6 1) ] = 0. 9 4

$$

Accounting Betas A third approach is to estimate the market risk parameters from accounting earnings rather than from traded prices. Thus, changes in earnings at a division or a firm, on a quarterly or an annual basis, can be related to changes in earnings for the market, in the same periods, to arrive at an estimate of a accounting beta to use in the CAPM. While the approach has some intuitive appeal, it suffers from three potential pitfalls. First, accounting earnings tend to be smoothed out relative to the underlying value of the company, as accountants spread expenses and income over multiple periods. This results in betas that are "biased down," especially for risky firms, or "biased up" for safer firms. In other words, betas are likely to be closer to 1 for all firms using accounting data.

Second, accounting earnings can be influenced by nonoperating factors, such as changes in depreciation or inventory methods, and by allocations of corporate expenses at the divisional level. Finally, accounting earnings are measured, at most, once every quarter, and often only once every year, resulting in regressions with few observations and not much explanatory power (low R-squared, high standard errors).

# ILLUSTRATION 8.8: Estimating Accounting Betas: Defense Division of Boeing—1995

Having operated in the defense business for decades, Boeing has a record of its profitability. These profits are reported in the following table, together with earnings changes for companies in the S&P 500 from 1980 to 1994.

<table><tr><td>Year</td><td>S&amp;P 500</td><td>Boeing&#x27;s Defense Business</td></tr><tr><td>1980</td><td>-2.10\%</td><td>-12.70\%</td></tr><tr><td>1981</td><td>-6.70\%</td><td>-35.56\%</td></tr><tr><td>1982</td><td>-45.50\%</td><td>27.59\%</td></tr><tr><td>1983</td><td>37.00\%</td><td>159.36\%</td></tr><tr><td>1984</td><td>41.80\%</td><td>13.11\%</td></tr><tr><td>1985</td><td>-11.80\%</td><td>-26.81\%</td></tr><tr><td>1986</td><td>7.00\%</td><td>-16.83\%</td></tr><tr><td>1987</td><td>41.50\%</td><td>20.24\%</td></tr><tr><td>1988</td><td>41.80\%</td><td>18.81\%</td></tr><tr><td>1989</td><td>2.60\%</td><td>-29.70\%</td></tr><tr><td>1990</td><td>-18.00\%</td><td>-40.00\%</td></tr><tr><td>1991</td><td>-47.40\%</td><td>-35.00\%</td></tr><tr><td>1992</td><td>64.50\%</td><td>10.00\%</td></tr><tr><td>1993</td><td>20.00\%</td><td>-7.00\%</td></tr><tr><td>1994</td><td>25.30\%</td><td>11.00\%</td></tr></table>

Copyright 2001 Bloomberg LP. Reprinted with permission. All rights reserved.

Regressing the changes in profits in the defense division ( $\Delta$  Earnings $_{\text{defense}}$ ) against changes in profits for the S&P 500 ( $\Delta$  Earnings $_{\text{S&P}}$ ) yields the following:

$$

\Delta E a r n i n g s _ {\text {d e f s e n e}} = - 0. 0 3 + 0. 6 5 \Delta E a r n i n g s _ {\mathrm {S} \& \mathrm {P}}

$$

Based on this regression, the beta for the defense division is 0.65.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/41ba7fe2c5c948cdbabbdfe6306c141d49817d71965b81aca19e2242126a3135.jpg) accbeta.xls: This spreadsheet allows you to estimate the accounting beta on a division or firm.


![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/59d9031675fb8a53495b834e8072e2c29128c8950487904ce258d2a59708c246.jpg) spearn.xls: This dataset on the Web has earnings changes, by year, for the S&P 500 going back to 1960.


Market, Bottom-Up, and Accounting Betas: Which One Do We Use? For most publicly traded firms, betas can be estimated using accounting data or market data or from the bottom-up approach. Since the betas will almost never be the same using these different approaches, the question is, which one do we use? We would almost never use accounting betas, for all the reasons specified earlier. We are almost as reluctant to use historical market betas for individual firms because of the standard errors in beta estimates, the failures of the local indexes (as is the case with most emerging market companies), and the inability of these regressions to reflect the effects of major changes in the business mix and financial risk at the firm. Bottom-up betas, in our view, provide us with the best beta estimates for three reasons:

1. They allow us to consider changes in business and financial mix, even before they occur.
2. They use average betas across large numbers of firms, which tend to be less noisy than individual firm betas.
3. They allow us to calculate betas by area of business for a firm, which is useful both in the context of investment analysis and in valuation.

Measuring Country Risk Exposure (Lambda) Chapter 7 introduced the concept of country risk exposure and the notion of lambda—a measure of a company's exposure to country risk. In this section, we want to consider intuitively what factors determine this exposure and how best to estimate lambda. A company's exposure to country risk is affected by almost every aspect of its operations, beginning with where its factories are located and who its customers are and continuing with what currency its contracts are denominated in and how well it manages its exposure to exchange rate risk. Much of this information, however, is internal information and not available to someone valuing the firm from the outside. As a practical matter, then, we can estimate lambda using one of the following approaches:

■ Revenue breakdown. The simplest way of estimating lambda is to use the proportion of a firm's revenues that are generated in a country and scale this to the proportion of the revenues generated by the average firm in that country.

$$

\lambda = \frac {\text {P r o p o r t i o n o f r e v e n u e s i n c o u n t r y} _ {\text {f i r m}}}{\text {P r o p o r t i o n o f r e v e n u e s i n c o u n t r y} _ {\text {a v e r a g e f i r m}}}

$$

Consider Embraer, a Brazilian aerospace company that in 2008 derived about 9 percent of its revenues from Brazil. If the average Brazilian company generates 60 percent of its revenues in Brazil, this would translate into a lambda of 0.15 (0.09/.060). Note, though, that if Embraer gets any of its remaining revenue in other risky emerging markets, you would have to compute lambdas against these markets as well.

■ Regression versus country bond. A second approach to estimating lambdas would be to run regressions of stock returns for each firm in the emerging market against the returns on the country bond. In effect, we are assuming that returns on the country bond are reflections of changes in country risk: Country bond prices increase when country risk decreases and decrease when country risk increases. When we run this regression, we are measuring how sensitive a company's stock price is to changes in country risk perceptions. To provide an illustration: Regressing the stock prices of Embraer against the dollar-denominated Brazilian government bond from 2006 to 2008 yields a slope (lambda) of 0.27. Put in intuitive terms, Embraer's returns moved 0.27 percent for every 1 percent change in returns on the bond. That would be our estimate of lambda for the company.


# LAMBdas: WORTH THE TROUBLE?

The intuition behind the use of lambdas is that a company's risk exposure should be based on where it does business and not where it is incorporated. Thus, an emerging market company that gets the bulk of its revenues in developed markets should be less exposed to the country risk in that emerging market. By the same token, a developed market company that gets large portions of its revenues in emerging markets should see its cost of equity increase because of that exposure.

Having said this, it is often difficult to obtain the information needed to estimate lambdas. The lambda for a company should depend not only on where it gets its revenues, but where it produces its goods and the degree to which it insures against country risk using derivatives or conventional insurance. For most companies, the information on these inputs is either unavailable or incomplete. Thus, any benefits from estimating lambdas may be drowned out by the estimation error in those lambdas. For firms that have revenue exposures that are similar to those of other firms in the market, it may make sense to stick with the standard approach of using beta to capture company risk. There are two scenarios where it does make sense to estimate lambdas:

1. Emerging market companies with disproportionately large developed market exposures. In almost every emerging market, there are a few companies that are incorporated in that market that derive the bulk of their revenues outside the market: Tata Consulting Services in India and Embraer in Brazil are good examples, deriving less than  $10\%$  of their revenues in the domestic market. For these companies, we would expect low lambdas against their local markets, reflecting their lighter domestic risk exposure.
2. Developed market companies with large revenues from risky emerging markets. Note that it is not revenues from foreign markets per se that create a problem but revenues from markets that have significant political and economic risk. Nestle and Coca-Cola, for instance, are developed market companies that have significant revenues from Asia and Latin America. For these companies, we should be adjusting the cost of equity for the additional risk exposure from emerging market countries.

# From Betas to Cost of Equity

Having estimated the riskless rate and the risk premium(s) in Chapter 7 and the beta(s) in this chapter, we can now estimate the expected return from investing in equity at any firm. In the CAPM, this expected return can be written as:

$$

\text {E x p e c t e d} = \text {R i s k l e s s} + \text {B e t a} \times \text {E x p e c t e d}

$$ where the riskless rate would be the rate on a long-term government bond; the beta would be either the historical, fundamental, or accounting betas described earlier; and the risk premium would be either the historical premium or an implied premium.


In the arbitrage pricing and multifactor model, the expected return would be written as follows:

$$

\text {E x p e c t e d} = \text {R i s k l e s s} + \sum_ {\mathrm {j} - 1} ^ {\mathrm {j} = \mathrm {n}} \beta_ {\mathrm {j}} \times \text {R i s k} \text {p r e m i u m} _ {\mathrm {j}}

$$ where the riskless rate is the long-term government bond rate;  $\beta_{j}$  is the beta relative to factor  $j$ , estimated using historical data or fundamentals; and risk premium  $j$  is the risk premium relative to factor  $j$ , estimated using historical data.

The expected return on an equity investment in a firm, given its risk, has implications for both equity investors in the firm and the managers of the firm. For equity investors, it is the rate they need to earn to be compensated for the risk they have taken in investing in the equity of the firm. If, after analyzing an investment, they conclude they cannot make this return, they would not buy this investment; alternatively, if they decide they can make a higher return, they would make the investment. For managers in the firm, the return investors need to make to break even on their equity investments becomes the return they have to try to deliver to keep these investors from becoming restive and rebellious. Thus, it becomes the rate they have to beat in terms of returns on their equity investments in projects. In other words, this is the cost of equity to the firm.

# ILLUSTRATION 8.9: Estimating the Cost of Equity for Boeing—December 2000

Now that we have an estimate of beta of 0.9585 for Boeing, based on the bottom-up estimates, we can estimate its cost of equity. To make the estimate, we used the prevailing Treasury bond rate of  $5\%$  and a historical risk premium of  $5.51\%$ .

$$
\text {Cost of equity} = 5.00 \% + 0.9585(5.51 \%) = 10.28 \%
$$

There are two points to make about this estimate. The first is that the cost of equity would have been significantly lower if we had chosen to use the implied equity premium on December 31, 2000, which was about  $2.87\%$  (see Chapter 7).

$$
\text{Cost of equity} = 5.00 \% + 0.9585(2.87 \%) = 7.75 \%
$$

The second point is that we are not considering the exposure that Boeing has to emerging market risk from its business. If the exposure is significant, we should be adding a country risk premium to the cost of equity estimate.

# ILLUSTRATION 8.10: Estimating the Cost of Equity for Embraer—March 2008

Embraer is a Brazilian aerospace firm. To estimate its cost of equity, we first estimated the unlevered beta by looking at aerospace firms globally.

Unlevered beta for aerospace firms  $= 0.75$

Embraer's debt-to-equity ratio at the time of this analysis was  $26.84\%$ ,[10] resulting in a levered beta for Embraer (with a marginal tax rate of  $34\%$  for Brazil):

Levered beta for Embraer  $= 0.75[1 + (1 - .34).2684] = 0.88$

To estimate the cost of equity for Embraer in U.S. dollar terms, we began with the Treasury bond rate of  $3.8\%$  at the time of the analysis, but incorporated the country risk associated with Brazil into the risk premium. Using the approach described in Chapter 7, we estimated a country risk premium of  $3.66\%$  in March 2008; the default spread for Brazil at the time was  $2.00\%$  and the Bovespa was approximately 1.83 times more volatile than the Brazilian government bond. In conjunction with a mature market risk premium of  $4\%$  estimated for the United States at the time, this yields a cost of equity of  $10.54\%$ .

Cost of equity for Embraer  $= 3.8\% +0.88(4.00\% +3.66\%) = 10.54\%$

Again, there are several points that are worth making on this estimate. The first is that this cost of equity can be expected to change over time as Brazil matures as a market and country risk declines. The second is that we have assumed that betas measure exposure to country risk. A company like Embraer that derives the bulk of its revenues outside Brazil could argue that it is less exposed to country risk. In the preceding section, we introduced the concept of lambda and came up with two estimates for Embraer: 0.15, using revenue exposure, and 0.27, using the regression of Embraer stock returns against the Brazilian dollar bond. We will use the latter to compute the cost of equity:

$$
\begin{array}{l} \text {C o s t} = \text {R i s k - f r e e r a t e} + \text {B e t a (M u t e r m a r k e t r i s k p r e m i u m)} \\ + \lambda (\text {C o u n t r y} \\ = 3.8\% +0.88(4.00\%) + 0.27(3.66\%) = 8.31\% \\ \end{array}
$$

The final point is that the cost of equity in dollar terms can be converted into a nominal Brazilian real (BR) cost of equity fairly simply by considering the differences in expected inflation rates in Brazil and the United States. For instance, if the expected inflation rate in Brazil is  $6\%$  and the expected inflation rate in the United States is  $2\%$ , the cost of equity in nominal BR is as follows:

$$
\begin{array}{l} \text {C o s t} = \text {e q u i t y} _ {\text {n o m i n a l B R}} = (1 + \text {C o s t} \text {o f e q u i t y} _ {\S}) (\text {I n f l a t i o n r a t e} _ {\text {B r a i z}} / \text {I n f l a t i o n r a t e} _ {\text {U . S .}}) - 1 \\ = (1.0831)(1.06 / 1.02) - 1 = 12.56 \% \\ \end{array}
$$

Implicitly, we assume that BR risk-free rates around the world are the same with this approach and that the risk premium scales up with inflation as well. The alternative is to estimate a cost of equity from scratch, beginning with a nominal BR risk-free rate (which was  $8\%$  at the time of this analysis) and adding the premiums from before:

$$
\begin{array}{l} \text {C o s t} = \text {e q u i t y} _ {\text {n o m i a l B R}} = \text {R i s k - f r e e r a t e} + \text {B e t a} (\text {M a t u r e m a t k e r} \\ + \lambda (\text {C o u n t r y} \\ = 8 \% + 0.88(4.00 \%) + 0.27(3.66\%) = 12.51 \% \\ \end{array}
$$

Substituting a real risk-free rate in the equation would yield a real cost of equity. Thus, if we assume that the real risk-free rate is  $1.5\%$  (the rate on an inflation-adjusted TIPS bond), the real cost of equity would have been:

$$
\text{Cost of equity} = 1.5 \% + 0.88 (4 \%) + 0.27 (3.66 \%) = 6.01 \%
$$

# COST OF EQUITY AND A SMALL FIRM PREMIUM

Chapter 6 presented evidence of a small firm premium—small market-cap stocks earn higher returns than large market-cap stocks with equivalent betas. The magnitude and persistence of the small firm premium can be viewed as evidence that the capital asset pricing model understates the risk of smaller companies, and that a cost of equity based purely on a CAPM beta will therefore yield too low a number for these firms. There are some analysts who argue that you should therefore add a premium to the estimated cost of equity for smaller firms. Since small cap stocks have earned about 4 percent more than large cap stocks over the past few decades, you could consider this a reasonable estimate for the small firm premium. To estimate the cost of equity for a small cap stock with a beta of 1.2 (assuming a risk-free rate of 3.5 percent and a market risk premium of 4 percent), for instance, you would do the following:

Cost of equity for small cap stock  $=$  Risk-free rate + Beta

$$
\begin{array}{l} \times \text {M a r k e t} \\ + \text {S m a l l} \\ = 3.5 \% + 1.2 \times 5 \% + 4 \% \\ = 13.5 \% \\ \end{array}
$$

We would introduce four notes of caution with this approach. First, this opens the door to a series of adjustments that you could make to the cost of equity, reflecting the numerous inefficiencies cited in Chapter 6. For instance, you could estimate a low PE premium, a low price-to-book premium, and a high dividend yield premium and add them all to the cost of equity. If our objective in valuation is to uncover market mistakes, it would be a mistake to start off with the presumption that markets are right in their assessments in the first place. Second, a better way of incorporating the small firm premium would be to identify the reasons for the premium and then develop more direct measures of risk. For instance, assume that the higher risk of small cap stocks comes from the higher operating leverage that these firms have, relative to their larger competitors. You could adjust the betas for operating leverage (as we did a few pages ago for Vans Shoes) and use the higher betas for small firms. Third, the small cap premium of 4 percent that we estimated from historical data comes with a significant standard error (of approximately 2 percent). Thus, the true small cap premium can be 8 percent or 0 percent. Fourth, even if your company is a small company today and deserves a small cap premium, assuming a high growth rate for your firm will make it a large cap firm eventually. It follows that you would expect the small cap premium to fade over time.

# FROM COST OF EQUITY TO COST OF CAPITAL

Although equity is undoubtedly an important and indispensable ingredient of the financing mix for every business, it is but one ingredient. Most businesses finance some or much of their operations using debt or some security that is a combination of equity and debt. The costs of these sources of financing are generally very different from the cost of equity, and the cost of financing for a firm should reflect their costs as well, in proportion to their use in the financing mix. Intuitively, the cost of capital is the weighted average of the costs of the different components of financing—including debt, equity, and hybrid securities—used by a firm to fund its financial requirements. This section examines the process of estimating the cost of financing other than equity, and the weights for computing the cost of capital.

# Calculating the Cost of Debt

The cost of debt measures the current cost to the firm of borrowing funds to finance projects. In general terms, it is determined by the following variables:

■ The riskless rate. As the riskless rate increases, the cost of debt for firms will also increase.

- The default risk (and associated default spread) of the company. As the default risk of a firm increases, the cost of borrowing money will also increase. Chapter 7 looked at how the default spread has varied across time and can vary across maturity.
- The tax advantage associated with debt. Since interest is tax deductible, the after-tax cost of debt is a function of the tax rate. The tax benefit that accrues from paying interest makes the after-tax cost of debt lower than the pretax cost. Furthermore, this benefit increases as the tax rate increases.

$$
A f t e r - t a x \text {c o s t} = \text {P r e t a x c o s t} (1 - \text {T a x r a t e})
$$

This section focuses on how best to estimate the default risk in a firm and to convert that default risk into a default spread that can be used to come up with a cost of debt.

Estimating the Default Risk and Default Spread of a Firm The simplest scenario for estimating the cost of debt occurs when a firm has long-term bonds outstanding that are widely traded. The market price of the bond in conjunction with its coupon and maturity can serve to compute a yield that is used as the cost of debt. For instance, this approach works for a firm that has dozens of outstanding bonds that are liquid and trade frequently.

Some firms have bonds outstanding that do not trade on a regular basis. Since these firms are usually rated, we can estimate their costs of debt by using their ratings and associated default spreads. Thus, a firm with an A rating can be expected to have a cost of debt approximately 1.00 percent higher than the Treasury bond rate, since this is the spread typically paid by AA-rated firms.

Many companies choose not to get rated and smaller firms and most private businesses fall into this category. Although ratings agencies have sprung up in many emerging markets, there are still a number of markets where companies are not rated on the basis of default risk. When there is no rating available to estimate the cost of debt, there are two alternatives:

1. Recent borrowing history. Many firms that are not rated still borrow money from banks and other financial institutions. By looking at the most recent borrowings made by a firm, we can get a sense of the types of default spreads being charged the firm and use these spreads to come up with a cost of debt.
2. Estimate a synthetic rating. An alternative is to play the role of a ratings agency and assign a rating to a firm based on its financial ratios; this rating is called a synthetic rating. To make this assessment, we begin with rated firms and examine the financial characteristics shared by firms within each ratings class. To illustrate, Table 8.1 lists the range of interest coverage ratios for small (less than 5 billion in market cap) nonfinancial service firms in each S&P ratings class.[11]

Now consider a small firm that is not rated but has an interest coverage ratio of 6.15. Based on this ratio, a synthetic rating of A would be assessed for the firm, and a default spread of  $1.00\%$  would be added to the risk-free rate to arrive at the pretax cost of debt.

The interest coverage ratios tend to be lower for larger (market cap greater than 5 billion) firms for any given rating. Table 8.2 summarizes these ratios.

This approach can be expanded to allow for multiple ratios and qualitative variables as well. Once a synthetic rating is assessed, it can be used to estimate a default spread, which when added to the risk-free rate yields a pretax cost of debt for the firm.

TABLE 8.1 Interest Coverage Ratios and Ratings: Low Market Cap Firms

<table><tr><td>Interest Coverage Ratio</td><td>Rating</td><td>Spread</td></tr><tr><td>More than 12.5</td><td>AAA</td><td>0.50\%</td></tr><tr><td>9.5 to 12.5</td><td>AA</td><td>0.65\%</td></tr><tr><td>7.5 to 9.5</td><td>A+</td><td>0.85\%</td></tr><tr><td>6 to 7.5</td><td>A</td><td>1.00\%</td></tr><tr><td>4.5 to 6</td><td>A-</td><td>1.10\%</td></tr><tr><td>3.5 to 4.5</td><td>BBB</td><td>1.60\%</td></tr><tr><td>3 to 3.5</td><td>BB</td><td>3.35\%</td></tr><tr><td>2.5 to 3</td><td>B+</td><td>3.75\%</td></tr><tr><td>2 to 2.5</td><td>B</td><td>5.00\%</td></tr><tr><td>1.5 to 2</td><td>B-</td><td>5.25\%</td></tr><tr><td>1.25 to 1.5</td><td>CCC</td><td>8.00\%</td></tr><tr><td>0.8 to 1.25</td><td>CC</td><td>10.00\%</td></tr><tr><td>0.5 to 0.8</td><td>C</td><td>12.00\%</td></tr><tr><td>Less than 0.5</td><td>D</td><td>15.00\%</td></tr></table>

Source for raw data: Capital IQ, BondsOnline.com.

TABLE 8.2 Interest Coverage Ratios and Ratings: High Market Cap Firms

<table><tr><td>Interest Coverage Ratio</td><td>Rating</td><td>Spread</td></tr><tr><td>More than 8.5</td><td>AAA</td><td>0.50\%</td></tr><tr><td>6.5 to 8.5</td><td>AA</td><td>0.65\%</td></tr><tr><td>5.5 to 6.5</td><td>A+</td><td>0.85\%</td></tr><tr><td>4.25 to 5.5</td><td>A</td><td>1.00\%</td></tr><tr><td>3 to 4.25</td><td>A-</td><td>1.10\%</td></tr><tr><td>2.5 to 3</td><td>BBB</td><td>1.60\%</td></tr><tr><td>2 to 2.5</td><td>BB</td><td>3.35\%</td></tr><tr><td>1.75 to 2</td><td>B+</td><td>3.75\%</td></tr><tr><td>1.5 to 1.75</td><td>B</td><td>5.00\%</td></tr><tr><td>1.25 to 1.5</td><td>B-</td><td>5.25\%</td></tr><tr><td>0.8 to 1.25</td><td>CCC</td><td>8.00\%</td></tr><tr><td>0.65 to 0.8</td><td>CC</td><td>10.00\%</td></tr><tr><td>0.2 to 0.65</td><td>C</td><td>12.00\%</td></tr><tr><td>Less than 0.2</td><td>D</td><td>14.00\%</td></tr></table>

Source: Capital IQ, BondsOnline.com.

# EXTENDING THE SYNTHETIC RATINGS APPROACH

By basing the rating on the interest coverage ratio alone, we run the risk of missing the information that is available in the other financial ratios used by ratings agencies. The approach can be extended to incorporate other ratios. The first step would be to develop a score based on multiple ratios. For instance, the Altman Z score, which is used as a proxy for default risk, is a function of five financial ratios that are weighted to generate a Z score. The ratios used and their relative weights are usually estimated by looking at past defaults. The second step is to relate the level of the score to a bond rating, much as is done in Tables 8.1 and 8.2 with interest coverage ratios.

In making this extension, though, note that complexity comes at a cost. While credit or Z scores may, in fact, yield better estimates of synthetic ratings than those based on interest coverage ratios, changes in ratings arising from these scores are much more difficult to explain than those based on interest coverage ratios. That is a reason to prefer the flawed but simpler ratings derived from interest coverage ratios.

Estimating a Tax Rate To estimate the after-tax cost of debt, consider the fact that interest expenses are tax deductible to the firm. While the computation is fairly simple and requires that the pretax cost be multiplied by (1 - tax rate), the question of what tax rate to use can be a difficult one to answer, because there are so many choices. For instance, firms often report an effective tax rate, estimated by dividing the taxes due by the taxable income. The effective tax rate, though, is usually very different from the marginal or statutory tax rate, which is the rate at which the last dollar of income is taxed. Since interest expenses save you taxes at the margin (they are deducted from your last dollar of income), the right tax rate to use is the marginal tax rate.

The other caveat to keep in mind is that interest creates a tax benefit only if a firm has enough income to cover the interest expenses. Firms that have operating losses will not get a tax benefit from interest expenses, at least in the year of the loss. The after-tax cost of debt will be equal to the pretax cost of debt in that year. If you expect the firm to make money in future years, you would need to adjust the after-tax cost of debt for taxes in those years.

We return to this issue and examine it in more detail in Chapter 10, where we look at the same issue in the context of estimating after-tax cash flows.

# ILLUSTRATION 8.11: Estimating the Cost of Debt: Boeing in December 2000

Boeing was rated AA by S&P. Using the typical default spreads for AA-rated firms in December 2000, we could estimate the pretax cost for Boeing by adding the default spread of  $1.00\%$  to the riskless rate of  $5\%$ .

$$
\text{Pretax cost of debt}_{\text{actual rating}} = 5\% +1\% = 6\%
$$

Boeing has an effective tax rate of  $27\%$ , but we use a marginal tax rate of  $35\%$  to estimate the after-tax cost of debt for Boeing.

$$
\text{After - tax cost of debt} = 6.00 \% (1 - .35) = 3.90 \%
$$

Note that we will attach this after-tax cost of debt to all of Boeing's debt, short-term or long-term. While that may seem unfair, since Boeing could have borrowed short term at lower rates, we are assuming that the rollover cost of short-term debt will approximate to the cost of long term debt. Furthermore, we do not want to systematically reward companies with short-term debt by giving them lower costs of capital.

One final point about ratings. The ratings agencies rate both individual bond issues and entire companies. The rating used for the pretax cost of debt should be the rating for the company and not for an individual bond. Even a risky company can structure and issue a safe bond, and estimating a cost of debt based on that bond's rating will underestimate the overall cost of debt.

Estimating the Cost of Debt for an Emerging Market Firm In general, there are three problems that we run into when assessing the cost of debt for emerging market firms. The first is that most of these firms are not rated, leaving us with no option but to estimate the synthetic rating (and associated costs). The second is that the synthetic ratings may be skewed by differences in interest rates between the emerging market and the United States. Interest coverage ratios will usually decline as interest rates increase, and it may be far more difficult for a company in an emerging market to achieve the interest coverage ratios of companies in developed markets. Finally, the existence of country default risk hangs over the cost of debt of firms in that market.

The second problem can be fixed fairly simply by either modifying the tables developed using U.S. firms or restating the interest expenses (and interest coverage ratios) in dollar terms. The question of country risk is a thornier one. Conservative analysts often assume that companies in a country cannot borrow at a rate lower than the country itself can borrow at. With this reasoning, the cost of debt for an emerging market company will include the country default spread for the country.

$$
\begin{array}{l} \text {C o s t} = \text {R i s k l e s s} \\ + \text {C o m p a n y d e f a u l t s p r e a d} _ {\text {s y n t h e t i c r a t i n g}} \\ \end{array}
$$

The counter to this argument is that companies may be safer than the countries in which they operate, and that they bear only a portion or perhaps even none of the country default spread.

# ILLUSTRATION 8.12: Estimating the Cost of Debt: Embraer in March 2008

To estimate Embraer's cost of debt, we first estimated a synthetic rating for the firm. Based on its operating income of  \$527 million and interest expenses of\$ 176 million in 2007, we arrived at an interest coverage ratio of 2.99 and a BBB rating. While the default spread for BBB rated bonds was only 1.50\% at the time, there is the added consideration that Embraer is a Brazilian firm. Since the Brazilian dollar-denominated government bond had a default spread of 2.00\% at the time of the analysis, you could argue that every Brazilian company should pay this premium in addition to its own default spread. With this reasoning, the pretax cost of debt for Embraer in U.S. dollars (assuming a Treasury bond rate is 3.8\%) can be calculated:

$$
\begin{array}{l} \text {C o s t} = \text {R i s k - f r e e} + \text {D e f a u l t} + \text {D e f a u l t} \\ = 3.8\% +2.00\% +1.50\% = 7.30\% \\ \end{array}
$$

Using a marginal tax rate of  $34\%$ , we can estimate an after-tax cost of debt for Embraer:

$$
\text{After - tax cost of debt} = 7.30 \% (1 - .34) = 4.82 \%
$$

With this approach, the cost of debt for a firm can never be lower than the cost of debt for the country in which it operates. Note, though, that Embraer gets a significant portion of its revenues in dollars from contracts with non-Brazilian airlines. Consequently, it could reasonably argue that it is less exposed to risk than is the Brazilian government and should therefore command a lower cost of debt. Put differently, there are some companies (generally large companies with significant foreign operations) to which, rather than add the entire default spread for the country to the cost of debt, we may add only a portion.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/1ecc04a3d04ac14ba7494ecaf247b22bf9cdb93a3fadb42b012edcd0ea9800bf.jpg) ratings.xls: This spreadsheet allows you to estimate the synthetic rating and cost of debt for any firm.

# Calculating the Cost of Hybrid Securities

While debt and equity represent the fundamental financing choices available for firms, there are some types of financing that share characteristics with both debt and equity. These are called hybrid securities. This section considers how best to estimate the costs of such securities.

Cost of Preferred Stock Preferred stock shares some of the characteristics of debt (the preferred dividend is prespecified at the time of the issue and is paid out before the common dividend) and some of the characteristics of equity (the preferred dividend is not tax deductible). If preferred stock is viewed as perpetual (as it usually is), the cost of preferred stock can be written as follows:

$$ k _ {p s} = \text {P r e f e r e d}
$$

This approach assumes the dividend is constant in dollar terms forever and that the preferred stock has no special features (convertibility, callability, etc.). If such special features exist, they will have to be valued separately to estimate the cost of preferred stock. In terms of risk, preferred stock is safer than common equity, because preferred dividends are paid before dividends on common equity. It is, however, riskier than debt since interest payments are made prior to preferred dividend payments. Consequently, on a pretax basis, it should command a higher cost than debt and a lower cost than equity.

# ILLUSTRATION 8.13: Calculating the Cost of Preferred Stock: Ford in 2011

In April 2011, Ford Motor Company had preferred stock that paid a dividend of  \$1.875 annually and traded at\$ 26.475 per share. The cost of preferred stock can be estimated as follows:

Cost of preferred stock = Preferred dividend per share/Preferred stock price = \$1.875/\$ 26.475 = 7.08\%

At the same time, Ford's cost of equity, using an estimated beta of 1.40, a risk-free rate of  $3.5\%$  and an equity risk premium of  $5\%$ , was  $10.5\%$ ; its pretax cost of debt, based on its S&P rating of  $\mathsf{B}+$ , was  $8.50\%$ , and its after-tax cost of debt was  $5.10\%$ . Not surprisingly, its preferred stock was less expensive than equity, but much more expensive than debt.

Calculating the Cost of Other Hybrid Securities A convertible bond is a bond that can be converted into equity at the option of the bondholder. A convertible bond can be viewed as a combination of a straight bond (debt) and a conversion option (equity). Instead of trying to calculate the cost of these hybrid securities individually, we can break down hybrid securities into their debt and equity components and treat the components separately.

# ILLUSTRATION 8.14: Breaking Down a Convertible Bond into Debt and Equity Components: MGM Resorts

In 2010, MGM Resorts, the casino company, issued 5-year convertible bonds with a coupon rate of  $4.25\%$  and a 10-year maturity. Since the firm was losing money, it was rated  $\mathrm{CCC + }$  by S&P and would have had to pay  $10\%$  if it had issued straight bonds at the same time. A year later, the bonds were trading at a price that was  $112\%$  of par, and the total par value of the convertible bond issue was 1.15 billion. The convertible bond can be broken down into straight bond and conversion option components.

Straight bond = Value of a straight  $4.25\%$  coupon bond due in 4 years with  $10\%$  interest rate

= 818 (assuming annual coupons)

Conversion option = $1,120 - $818 = 302

The straight bond component of  \$818 is treated as debt, and has the same cost as the rest of debt. The conversion option of\$ 302 is treated as equity, with the same cost of equity as other equity issued by the firm. For the entire bond issue of \$1,150 million, with an overall market value of \$1,288 million, the value of debt is \$916 million, and the value of equity is \$372 million.

# Calculating the Weights of Debt and Equity Components

Now that we have the costs of debt, equity, and hybrid securities, we have to estimate the weights that should be attached to each. Before we discuss how best to estimate weights, we define what we include in debt. We then make the argument that weights used should be based on market value and not book value. This is so because the cost of capital measures the cost of issuing securities—stocks as well as bonds—to finance projects, and these securities are issued at market value, not at book value.

What Is Debt? The answer to this question may seem obvious since the balance sheet for a firm shows the outstanding liabilities of the firm. There are, however, limitations with using these liabilities as debt in the cost of capital computation. The first is that some of the liabilities on a firm's balance sheet, such as accounts payable and supplier credit, are not interest-bearing. Consequently, applying an after-tax cost of debt to these items can provide a misleading view of the true cost of capital for a firm. The second is that there are items off the balance sheet that create fixed commitments for the firm and provide the same tax deductions that interest payments on debt do. The most prominent of these off-balance sheet items are operating leases. Chapter 3 contrasted operating and capital leases and noted that operating leases are treated as operating expenses rather than financing expenses. Consider, though, what an operating lease involves. A retail firm leases a store space for 12 years and enters into a lease agreement with the owner of the space agreeing to pay a fixed amount each year for that period. We do not see much difference between this commitment and borrowing money from a bank and agreeing to pay off the bank loan over 12 years in equal annual installments.

There are therefore two adjustments we will make when we estimate how much debt a firm has outstanding.

1. We will consider only interest-bearing debt rather than all liabilities. We would include both short-term and long-term borrowings in debt.
2. We will also capitalize operating leases and treat them as debt.

Capitalizing Operating Leases Converting operating lease expenses into a debt equivalent is straightforward. The operating lease commitments in future years, which are revealed in the footnotes to the financial statements for U.S. firms, should be discounted back at a rate that reflects their status as unsecured and fairly risky debt. As an approximation, using the firm's current pretax cost of borrowing as the discount rate yields a good estimate of the value of operating leases.

There are still some countries where companies do not have to reveal their operating lease commitments to investors. When this is the case, you can get a reasonably close estimate of the debt value of operating leases by estimating the present value of an annuity equal to the current year's payment for a period that reflects a typical lease period (8 to 10 years).

There is one final issue relating to capitalization. Earlier in this chapter it was stated that the interest coverage ratio could be used to estimate a synthetic rating for a firm that is not rated. For firms with little in terms of conventional debt and substantial operating leases, the interest coverage ratio used to estimate a synthetic rating has to be adapted to include operating lease expenses.

$$
\text {M o d i f i e d i n t e r e s t c o v e r a g e r a t i o} = (\text {E B I T} + \text {C u r r e n t y e a r ' s o p e r a t i n g l e a s e x p e n s e}) / (\text {I n t e r e s t e x p e n s e s} + \text {C u r r e n t y e a r ' s} \quad \text {o p e r a t i n g l e a s e x p e n s e})
$$

This ratio can then be used in conjunction with Tables 8.1 and 8.2 to estimate a synthetic rating.

# ILLUSTRATION 8.15: The Debt Value of Operating Leases: Boeing in December 2000

Boeing has both conventional debt and operating lease commitments. This illustration estimates the "debt value" of Boeing's operating leases by taking the present value of operating lease expenses over time. To compute the present value of operating leases in the following table (in $millions), we use the pretax cost of borrowing for the firm, estimated in Illustration 8.11 to be  $6\%$ .

<table><tr><td>Year</td><td>Operating Lease Expense</td><td>Present Value at 6\%</td></tr><tr><td>1</td><td>$205</td><td>$193.40</td></tr><tr><td>2</td><td>$167</td><td>$146.83</td></tr><tr><td>3</td><td>$120</td><td>$100.75</td></tr><tr><td>4</td><td>$86</td><td>$68.12</td></tr><tr><td>5</td><td>$61</td><td>$45.58</td></tr><tr><td>6 to 15</td><td>$—</td><td>$0.00</td></tr><tr><td colspan="2">Present value of operating lease expenses</td><td>556.48</td></tr></table>

Thus, Boeing has 556 million more in debt than is reported in the balance sheet.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/c0917ce9e5dc05bbada827124a8bdfd60dab535bc959c6508656029e19064cab.jpg)

Oplease.xls: This spreadsheet allows you to convert operating lease expenses into debt.

Book Value versus Market Value Debt Ratios There are three standard arguments against using market value, and none of them is convincing. First, there are some financial managers who argue that book value is more reliable than market value because it is not as volatile. While it is true that book value does not change as much as market value, this is more a reflection of book value's weakness rather than its strength, since the true value of the firm changes over time as both firm-specific and market information is revealed. We would argue that market value, with its volatility, is a much better reflection of true value than is book value.[13]

Second, the defenders of book value also suggest that using book value rather than market value is a more conservative approach to estimating debt ratios. This assumes that market value debt ratios are always lower than book value debt ratios, an assumption not based on fact. Furthermore, even if the market value debt ratios are lower than the book value ratios, the cost of capital calculated using book value ratios will be lower than those calculated using market value ratios, making it a less conservative estimate, not more. To illustrate this point, assume that the market value debt ratio is 10 percent, while the book value debt ratio is 30 percent, for a firm with a cost of equity of 15 percent and an after-tax cost of debt of 5 percent. The cost of capital can be calculated as follows:

With market value debt ratios:  $15\%(.9) + 5\%(.1) = 14\%$

With book value debt ratios:  $15\%(.7) + 5\%(.3) = 12\%$

Third, it is claimed that lenders will not lend on the basis of market value, but this claim again seems to be based more on perception than on fact. Any homeowner who has taken a second mortgage on a house that has appreciated in value knows that lenders do lend on the basis of market value. It is true, however, that the greater the perceived volatility in the market value of an asset, the lower the borrowing potential on that asset.

Estimating the Market Values of Equity and Debt The market value of equity is generally the number of shares outstanding times the current stock price. If there are other equity claims in the firm such as warrants and management options, these should also be valued and added to the value of the equity in the firm.

The market value of debt is usually more difficult to obtain directly, since very few firms have all their debt in the form of bonds outstanding trading in the market. Many firms have nontraded debt, such as bank debt, which is specified in book value terms but not market value terms. A simple way to convert book value debt into market value debt is to treat the entire debt on the books as one coupon bond, with a coupon set equal to the interest expenses on all the debt and the maturity set equal to the face-value weighted average maturity of the debt, and then to value this coupon bond at the current cost of debt for the company. Thus, the market value of  \$1 billion in debt, with interest expenses of\$ 60 million (annually) and a maturity of six years, when the current cost of debt is 7.5 percent, can be estimated as follows:

$$
\text {E s t i m a t e d m a r k e t v a l u e o f d e b t} = 6 0 \left(\frac {1 - \frac {1}{1 . 0 7 5 ^ {6}}}{. 0 7 5}\right) + \frac {1 , 0 0 0}{1 . 0 7 5 ^ {6}} = \$ 9 3 0
$$

# ILLUSTRATION 8.16: Difference between Market Value and Book Value Debt Ratios: Boeing in June 2000

This illustration contrasts the book values of debt and equity with the market values. For debt, we estimate the market value of debt using the book value of debt, the interest expense on the debt, the average maturity of the debt, and the pretax cost of debt for each firm. For Boeing, the book value of debt is  \$6,972 million, the interest expense on the debt is\$ 453 million, the average maturity of the debt is 13.76 years, and the pretax cost of debt is 6\%. The estimated market value is:

$$
\text {E s t i m a t e d M V o f B o e i n g d e b t} = 4 5 3 \left(\frac {1 - \frac {1}{1 . 0 6 ^ {1 3 . 7 6}}}{. 0 6}\right) + \frac {6 , 9 7 2}{(1 . 0 6) ^ {1 3 . 7 6}} = \$ 7, 2 9 1
$$

To this, we need to add the present value of operating leases of  \$556 million to arrive at a total market value for debt of\$ 7,847 million.

The book value of equity for Boeing was  \$12,316 million while the market value of equity was\$ 55,197 million. The debt ratios in market value and book value terms are computed as follows:

# Market Value

Debt to equity

7,847/55,197 = 14.22\%

# Book Value

Debt/(Debt + Equity)

$7,847 / (7,847 + 55,197) = 12.45\%$

6,972/12,316 = 56.61\%

6,972/(6,972 + 12,316) = 36.15\%

The market debt ratio is significantly lower than the book debt ratio.

# GROSS DEBT VERSUS NET DEBT

Gross debt refers to all debt outstanding in a firm. Net debt is the difference between gross debt and the cash balance of the firm. For instance, a firm with  \$1.25 billion in interest-bearing debt outstanding and a cash balance of\$ 1 billion has a net debt balance of 250 million. The practice of netting cash against debt is common in both Latin America and Europe, and debt ratios are usually estimated using net debt.

It is generally safer to value a firm based on gross debt outstanding and to add the cash balance outstanding to the value of operating assets to arrive at the firm value. The interest payment on total debt is then entitled to the tax benefits of debt, and we can assess the effect of whether the company invests its cash balances efficiently on value.

In some cases, especially when firms maintain large cash balances as a matter of routine, analysts prefer to work with net debt ratios. If you choose to use net debt ratios, you have to be consistent all the way through the valuation. To begin, the beta for the firm should be estimated using a net debt-to-equity ratio rather than a gross debt-to-equity ratio. The cost of equity that emerges from the beta estimate can be used to estimate a cost of capital, but the market value weight on debt should be based on net debt. Once you discount the cash flows of the firm at the cost of capital, you should not add back cash. Instead, you should subtract the net debt outstanding to arrive at the estimated value of equity.

Implicitly, when you net cash against debt to arrive at net debt ratios, you are assuming that cash and debt have roughly similar risk. While this assumption may not be outlandish when analyzing highly rated firms, it becomes much shakier when debt becomes riskier. For instance, the debt in a BB-rated firm is much riskier than the cash balance in the firm, and netting out one against the other can provide a misleading view of the firm's default risk. In general, using net debt ratios will overstate the value of riskier firms.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/2886a7865cdf87d3c480d907ad41018f7b51d7d26d789355988d0f40c14ed439.jpg) waccalc.xls: This spreadsheet allows you to convert book values of debt into market values.

# Estimating the Cost of Capital

Since a firm can raise its money from three sources—equity, debt, and preferred stock—the cost of capital is defined as the weighted average of each of these costs. The cost of equity  $(\mathrm{k_e})$  reflects the riskiness of the equity investment in the firm, the after-tax cost of debt  $(\mathrm{k_d})$  is a function of the default risk of the firm, and the cost of preferred stock  $(\mathrm{k_{ps}})$  is a function of its intermediate standing in terms of risk between debt and equity. The weights on each of these components should reflect their market value proportions, since these proportions best measure how the existing firm is being financed. Thus if E, D, and PS are the market values of equity, debt, and preferred stock respectively, the cost of capital can be written as follows:

$$
\text {C o s t} = k _ {\mathrm {e}} [ \mathrm {E} / (\mathrm {D} + \mathrm {E} + \mathrm {P S}) ] + k _ {\mathrm {d}} [ \mathrm {D} / (\mathrm {D} + \mathrm {E} + \mathrm {P S}) ] + k _ {\mathrm {p s}} [ \mathrm {P S} / (\mathrm {D} + \mathrm {E} + \mathrm {P S}) ]
$$

# ILLUSTRATION 8.17: Estimating Cost of Capital: Boeing in December 2000

Having estimated the costs of debt and equity in earlier illustrations, and the market value debt ratio in Illustration 8.16, we can put them together to arrive at a cost of capital for Boeing.

Cost of equity  $= 10.28\%$  (from Illustration 8.9)

Cost of debt  $= 3.90\%$  (from Illustration 8.11)

Market value debt ratio  $= 12.45\%$  (from Illustration 8.16)

Cost of capital  $= 10.28\% (.8755) + 3.90\% (.1245) = 9.49\%$

# ILLUSTRATION 8.18: Estimating Cost of Capital: Embraer in March 2008

To estimate a cost of capital for Embraer, we again draw on the estimates of cost of equity and cost of debt we obtained in prior illustrations. The cost of capital will be estimated using gross debt ratios first in U.S. dollars:

Cost of equity  $= 8.31\%$  (from Illustration 8.10)

After-tax cost of debt  $= 4.82\%$  (from Illustration 8.12)

Market value of debt  $= 2,915$  million BR (book value  $= 3,128$  million BR)

Market value of equity  $= 12,729$  million BR

The cost of capital for Embraer is estimated as follows:

Cost of capital  $= 8.31\% [12,729 / (12,729 + 2,915)] + 4.82\% [2,915 / (12,729 + 2,915)] = 7.66\%$

To convert this into a nominal BR cost of capital, we would apply the differential inflation rates (6\% in Brazil and 2\% in the United States).

$$
\begin{array}{c} \text {Cost of capital} _ {\text {nominal BR}} = (1 + \text {Cost of capital}) (\text {Inflation rate} _ {\text {Brazil}} / \text {Inflation rate} _ {\text {U.S.}}) - 1 \\ 1.0766(1.06 / 1.02) - 1 = 11.88 \% \end{array}
$$

To estimate the cost of capital using the net debt ratio, we bring in the cash balance of 4,437 million BR that Embraer had at the time of the analysis:

Net debt = Gross debt - Cash = 2,915 million BR - 4,437 million BR = -1,422 million BR

Net debt/equity ratio  $= -1,422 / 12,729 = -11.17\%$

Net debt to capital ratio  $= -1,422 / (12,729 - 1,422) = -12.58\%$

Unlevered beta  $= 0.75$

Levered beta using net debt-to-equity ratio  $= 0.75[1 + (1 - .34)(-.1117)] = 0.695$

Intuitively, the levered beta here is lower than the unlevered beta because we are incorporating the cash into the beta computation (with the assumption that cash is riskless).

Cost of equity (U.S. $) = 3.8\% + 0.695(4\%) + 0.27(3.66\%) = 7.57\%

Cost of capital  $= 7.57\%$  [12,729/(12,729-1,422)] + 4.82\%[-1,422/(12,729-1,422)]

$$
= 7.91 \%
$$

Note that the weight on equity is greater than  $100\%$ $(112.57\%)$  and the weight on debt is negative  $(-12.57\%)$  because net debt is negative. Notwithstanding these disconcerting inputs, the cost of capital is close to the cost of capital using the standard debt ratio approach, and the difference can be attributed to the fact that the net debt approach nets out the tax benefit of debt against the tax costs of earning interest income on cash.

# BEST PRACTICES AT FIRMS

We have spent this chapter discussing what firms should do when it comes to estimating the cost of capital. What do they actually do? Bruner, Eades, Harris, and Higgins (1998) surveyed 27 well-regarded corporations, and their findings are summarized in Table 8.3.

TABLE 8.3 Current Practices for Estimating Cost of Capital

<table><tr><td>Cost of Capital Item</td><td>Current Practices</td></tr><tr><td>Cost of equity</td><td>81\% of firms used the capital asset pricing model to estimate the cost of equity, 4\% used a modified capital asset pricing model, and 15\% were uncertain about how they estimated the cost of equity.
70\% of firms used 10-year Treasuries or longer as the riskless rate, 7\% used 3to 5-year Treasuries, and 4\% used the Treasury bill rate.
52\% used a published source for a beta estimate, while 30\% estimated it themselves.
There was wide variation in the market risk premium used, with 37\% using a premium between 5\% and 6\%.</td></tr><tr><td>Cost of debt</td><td>52\% of firms used a marginal borrowing rate and a marginal tax rate, while 37\% used the current average borrowing rate and the effective tax rate.</td></tr><tr><td>Weights for debt and equity</td><td>59\% used market value weights for debt and equity in the cost of capital, 15\% used book value weights, and 19\% were uncertain about what weights they used.</td></tr></table>

Source: Bruner, Eades, Harris, and Higgins (1998).

# CONCLUSION

When we analyze the investments of a firm or assess its value, we need to know the cost that the firm faces in raising equity, debt, and capital. The risk and return models described in earlier chapters can be used to estimate the costs of equity and capital for a firm.

Building on the premise that the cost of equity should reflect the riskiness of equity to investors in the firm, there are three basic inputs we need to estimate the cost of equity for any firm. The riskless rate is the expected return on an investment with no default risk and no reinvestment risk. Since much of the analysis in corporate finance is long term, the riskless rate should be the interest rate on a long-term government bond. The risk premium measures what investors demand as a premium for investing in risky investments instead of riskless investments. This risk premium, which can vary across investors, can be estimated either by looking at past returns on stocks and government securities or by looking at how the market prices stocks currently. The beta for a firm is conventionally measured using a regression of returns on the firm's stock against returns on a market index. This approach yields imprecise beta estimates, and we are better off estimating betas by examining the betas of the businesses that the firm operates in.

The cost of capital is a weighted average of the costs of the different components of financing, with the weights based on the market values of each component. The cost of debt is the market rate at which the firm can borrow, adjusted for any tax advantages of borrowing. The cost of preferred stock, however, is the preferred dividend yield.

The cost of capital is useful at two levels. On a composite basis, it is what these firms have to make collectively on their investments to break even. It is also the appropriate discount rate to use to discount expected future cash flows to arrive at an estimate of firm value.

# QUESTIONS AND SHORT PROBLEMS

In the problems following, use an equity risk premium of 5.5 percent if none is specified and a tax rate of 40 percent where no tax rate is provided.

1. In December 1995, Boise Cascade's stock had a beta of 0.95. The Treasury bill rate at the time was 5.8\%, and the Treasury bond rate was 6.4\%. The firm had debt outstanding of \$1.7 billion and a market value of equity of \$1.5 billion; the corporate marginal tax rate was 36\%. (The historical risk premium for stocks over Treasury bills is 8.5\% and the risk premium for stocks over Treasury bonds is 5.5\%).

a. Estimate the expected return on the stock for a short-term investor in the company.

b. Estimate the expected return on the stock for a long-term investor in the company.

c. Estimate the cost of equity for the company.

2. Continuing problem 1, Boise Cascade also had debt outstanding of  \$1.7 billion and a market value of equity of\$ 1.5 billion; the corporate marginal tax rate was 36\%.

a. Assuming that the current beta of 0.95 for the stock is a reasonable one, estimate the unlevered beta for the company.

b. How much of the risk in the company can be attributed to business risk and how much to financial leverage risk?

3. Biogen Inc., a biotechnology firm, had a beta of 1.70 in 1995. It had no debt outstanding at the end of that year.

a. Estimate the cost of equity for Biogen if the Treasury bond rate is  $6.4\%$ .

b. What effect will an increase in long-term bond rates to  $7.5\%$  have on Bio-gen's cost of equity?

c. How much of Biogen's risk can be attributed to business risk?

4. Genting Berhad is a Malaysian conglomerate with holdings in plantations and tourist resorts. The beta estimated for the firm relative to the Malaysian stock exchange is 1.15, and the long-term government borrowing rate in Malaysia is  $11.5\%$ . (The Malaysian risk premium is  $12\%$  and the default spread on Malaysian local currency debt is  $2\%$ .) a. Estimate the expected return on the stock.

b. If you were an international investor, what concerns, if any, would you have about using the beta estimated relative to the Malaysian Index? If you do have concerns, how would you modify the beta?

5. You have just done a regression of monthly stock returns of HeavyTech Inc., a manufacturer of heavy machinery, on monthly market returns over the past five years and have come up with the following regression:

$$
\mathrm{R}_{\text{HeavyTech}} = 0.5\% +1.2 \mathrm{R}_{\mathrm{M}}
$$

The variance of the stock is  $50\%$ , and the variance of the market is  $20\%$ . The current T-bill rate is  $3\%$  (it was  $5\%$  one year ago). The stock is currently selling for  \$50, down\$ 4 over the past year; it has paid a dividend of \$2 during the past year and expects to pay a dividend of \$2.50 over the next year. The NYSE Composite has gone down  $8\%$  over the past year, with a dividend yield of  $3\%$ . HeavyTech Inc. has a tax rate of  $40\%$ .

a. What is the expected return on HeavyTech over the next year?

b. What would you expect HeavyTech's price to be one year from today?

c. What would you have expected HeavyTech's stock returns to be over the past year?

d. What were the actual returns on HeavyTech over the past year?

 e. HeavyTech has \$100 million in equity and \$50 million in debt. It plans to issue \$50 million in new equity and retire \$50 million in debt. Estimate the new beta.

6. Safecorp, which owns and operates grocery stores across the United States, currently has \$50 million in debt and \$100 million in equity outstanding. Its stock has a beta of 1.2. It is planning a leveraged buyout (LBO), where it will increase its debt-to-equity ratio of 8. If the tax rate is 40\%, what will the beta of the equity in the firm be after the LBO?
7. Novell, which had a market value of equity of \$2 billion and a beta of 1.50, announced that it was acquiring WordPerfect, which had a market value of equity of \$1 billion and a beta of 1.30. Neither firm had any debt in its financial structure at the time of the acquisition, and the corporate tax rate was 40\%.

a. Estimate the beta for Novell after the acquisition, assuming that the entire acquisition was financed with equity.

b. Assume that Novell had to borrow the 1 billion to acquire WordPerfect. Estimate the beta after the acquisition.

8. You are analyzing the beta for Hewlett Packard (HP) and have broken down the company into four broad business groups, with market values and betas for each group.

<table><tr><td>Business Group</td><td>Market Value of Equity</td><td>Beta</td></tr><tr><td>Mainframes</td><td>\$2.0 billion</td><td>1.10</td></tr><tr><td>Personal computers</td><td>\$2.0 billion</td><td>1.50</td></tr><tr><td>Software</td><td>\$1.0 billion</td><td>2.00</td></tr><tr><td>Printers</td><td>\$3.0 billion</td><td>1.00</td></tr></table> a. Estimate the beta for Hewlett Packard as a company. Is this beta going to be equal to the beta estimated by regressing past returns on HP stock against a market index? Why or why not?

b. If the Treasury bond rate is  $7.5\%$ , estimate the cost of equity for Hewlett Packard. Estimate the cost of equity for each division. Which cost of equity would you use to value the printer division?

c. Assume that HP divests itself of the mainframe business and pays the cash out as a dividend. Estimate the beta for HP after the divestiture. (HP had 1 billion in debt outstanding.)

9. The following table summarizes the percentage changes in operating income, percentage changes in revenue, and betas for four pharmaceutical firms.

<table><tr><td>Firm</td><td>\% Change in Revenue</td><td>\% Change in Operating Income</td><td>Beta</td></tr><tr><td>PharmaCorp</td><td>27\%</td><td>25\%</td><td>1.00</td></tr><tr><td>SynerCorp</td><td>25\%</td><td>32\%</td><td>1.15</td></tr><tr><td>BioMed</td><td>23\%</td><td>36\%</td><td>1.30</td></tr><tr><td>Safemed</td><td>21\%</td><td>40\%</td><td>1.40</td></tr></table> a. Calculate the degree of operating leverage for each of these firms.

b. Use the operating leverage to explain why these firms have different betas.

10. A prominent beta estimation service reports the beta of Comcast Corporation, a major cable TV operator, to be 1.45. The service claims to use weekly returns on the stock over the prior five years and the NYSE Composite as the market index to estimate betas. You replicate the regression using weekly returns over the same period and arrive at a beta estimate of 1.60. How would you reconcile the two estimates?
11. Battle Mountain is a mining company with gold, silver, and copper in mines in South America, Africa, and Australia. The beta for the stock is estimated to be 0.30. Given the volatility in commodity prices, how would you explain the low beta?
12. You have collected returns on AnaDone Corporation (AD Corp.), a large, diversified manufacturing firm, and the NYSE index for five years:

<table><tr><td>Year</td><td>AD Corp.</td><td>NYSE</td></tr><tr><td>1981</td><td>10\%</td><td>5\%</td></tr><tr><td>1982</td><td>5\%</td><td>15\%</td></tr><tr><td>1983</td><td>-5\%</td><td>8\%</td></tr><tr><td>1984</td><td>20\%</td><td>12\%</td></tr><tr><td>1985</td><td>-5\%</td><td>-5\%</td></tr></table> a. Estimate the intercept (alpha) and slope (beta) of the regression.

b. If you bought stock in AD Corp. today, how much would you expect to make as a return over the next year? (The six-month T-bill rate is  $6\%$ .) c. Looking back over the past five years, how would you evaluate AD Corp.'s performance relative to the market?

d. Assume now that you are an undiversified investor and that you have all of your money invested in AD Corp. What would be a good measure of the risk that you are taking on? How much of this risk would you be able to eliminate if you diversify?

e. AD Corp. is planning to sell off one of its divisions. The division under consideration has assets that comprise half of the book value of AD Corp. and  $20\%$  of the market value. Its beta is twice the average beta for AD Corp. (before divestment). What will the beta of AD Corp. be after divesting this division?

13. You run a regression of monthly returns of Mapco Inc., an oiland gas-producing firm, on the S&P 500 index, and come up with the following output for the period 1991 to 1995:

Intercept of the regression  $= 0.06\%$

Slope of the regression  $= 0.46$

Standard error of X-coefficient  $= 0.20$

R-squared  $= 5\%$

There are 20 million shares outstanding, and the current market price is  \$2 per share. The firm has\$ 20 million in debt outstanding. (The firm has a tax rate of 36\%).

a. What would an investor in Mapco's stock require as a return if the T-bond rate is  $6\%$ ?

b. What proportion of this firm's risk is diversifiable?

c. Assume now that Mapco has three divisions of equal size (in market value terms). It plans to divest itself of one of the divisions for \$20 million in cash and acquire another for \$50 million (it will borrow 30 million to complete this acquisition). The division it is divesting is in a business line where the average unlevered beta is 0.20, and the division it is acquiring is in a business line where the average unlevered beta is 0.80. What will the beta of Mapco be after this acquisition?

14. You have just run a regression of monthly returns of American Airlines (AMR Corporation) against the S&P 500 over the past five years. You have misplaced some of the output and are trying to derive it from what you have.

a. You know the R-squared of the regression is 0.36, and that your stock has a variance of  $67\%$ . The market variance is  $12\%$ . What is the beta of AMR?

b. You also remember that AMR was not a very good investment during the period of the regression and that it did worse than expected (after adjusting for risk) by  $0.39\%$  a month for the five years of the regression. During this period, the average risk-free rate was  $4.84\%$ . What was the intercept on the regression?

c. You are comparing AMR to another firm, which also has an R-squared of 0.48. Will the two firms have the same beta? If not, why not?

15. You have run a regression of monthly returns on Amgen, a large biotechnology firm, against monthly returns on the S&P 500 index, and come up with the following output:

$$
\mathrm{R}_{\text{stock}} = 3.28\% +1.65 \mathrm{R}_{\text{market}}\quad \mathrm{R}^{2} = 0.20
$$

The current one-year Treasury bill rate is  $4.8\%$  and the current 30-year bond rate is  $6.4\%$ . The firm has 265 million shares outstanding, selling for 30 per share.

a. What is the expected return on this stock over the next year?

b. Would your expected return estimate change if the purpose was to get a discount rate to value the company?

c. An analyst has estimated, correctly, that the stock did  $51.1\%$  better than expected, annually, during the period of the regression. Can you estimate the annualized risk-free rate that she used for her estimate?

d. The firm has a debt/equity ratio of  $3\%$  and faces a tax rate of  $40\%$ . It is planning to issue 2 billion in new debt and acquire a new business for that amount, with the same risk level as the firm's existing business. What will the beta be after the acquisition?

16. You have just run a regression of monthly returns on MAD Inc., a newspaper and magazine publisher, against returns on the S&P 500, and arrived at the following result:

$$
\mathrm{R}_{\mathrm{MAD}} = -0.05\% +1.20 \mathrm{R}_{\mathrm{S&P}}
$$

The regression has an R-squared of  $22\%$ . The current T-bill rate is  $5.5\%$ , and the current T-bond rate is  $6.5\%$ . The risk-free rate during the period of the regression was  $6\%$ . Answer the following questions relating to the regression: a. Based on the intercept, how well or badly did MAD do, relative to expectations, during the period of the regression?

b. You now realize that MAD Inc. went through a major restructuring at the end of last month (which was the last month of your regression), and made the following changes:

The firm sold off its magazine division, which had an unlevered beta of 0.6, for 20 million.

■ It borrowed an additional  \$20 million, and bought back stock worth\$ 40 million.

After the sale of the division and the share repurchase, MAD Inc. had  \$40 million in debt and\$ 120 million in equity outstanding. If the firm's tax rate is 40\%, reestimate the beta after these changes.

17. Time Warner Inc., the entertainment conglomerate, had a beta of 1.61 in 1995. Part of the reason for the high beta was the debt left over from the leveraged buyout of Time by Warner in 1989, which amounted to \$10 billion in 1995. The market value of equity at Time Warner in 1995 was also \$10 billion. The marginal tax rate was 40\%.

a. Estimate the unlevered beta for Time Warner.

b. Estimate the effect of reducing the debt ratio by  $10\%$  each year for the next two years on the beta of the stock.

18. Chrysler, the automotive manufacturer, had a beta of 1.05 in 1995. It had \$13 billion in debt outstanding in that year, and 355 million shares trading at \$50 per share. The firm had a cash balance of 8 billion at the end of 1995. The marginal tax rate was 36\%.

a. Estimate the unlevered beta of the firm.

b. Estimate the effect of paying out a special dividend of 5 billion on this unlevered beta.

c. Estimate the beta for Chrysler after the special dividend.

19. You are trying to estimate the beta of a private firm that manufactures home appliances. You have managed to obtain betas for publicly traded firms that also manufacture home appliances.

<table><tr><td>Firm</td><td>Beta</td><td>Debt</td><td>MV of Equity</td></tr><tr><td>Black &amp; Decker</td><td>1.40</td><td>$2,500</td><td>$3,000</td></tr><tr><td>Fedders Corp.</td><td>1.20</td><td>$ 5</td><td>$ 200</td></tr><tr><td>Maytag Corp.</td><td>1.20</td><td>$ 540</td><td>$2,250</td></tr><tr><td>National Presto</td><td>0.70</td><td>$ 8</td><td>$ 300</td></tr><tr><td>Whirlpool</td><td>1.50</td><td>$2,900</td><td>$4,000</td></tr></table>

The private firm has a debt equity ratio of  $25\%$  and faces a tax rate of  $40\%$ . The publicly traded firms all have marginal tax rates of  $40\%$  as well.

a. Estimate the beta for the private firm.

b. What concerns, if any, would you have about using betas of comparable firms?

20. As the result of stockholder pressure, RJR Nabisco is considering spinning off its food division. You have been asked to estimate the beta for the division, and decide to do so by obtaining the beta of comparable publicly traded firms. The average beta of comparable publicly traded firms is 0.95, and the average debt-to-equity ratio of these firms is  $35\%$ . The division is expected to have a debt ratio of  $25\%$ . The marginal corporate tax rate is  $36\%$ .

a. What is the beta for the division?

b. Would it make any difference if you knew that RJR Nabisco had a much higher fixed cost structure than the comparable firms used here?

21. Southwestern Bell, a phone company, is considering expanding its operations into the media business. The beta for the company at the end of 1995 was 0.90, and the debt-to-equity ratio was 1. The media business is expected to be  $30\%$  of the overall firm value in 1999, and the average beta of comparable firms is 1.20; the average debt-to-equity ratio for these firms is  $50\%$ . The marginal corporate tax rate is  $36\%$ .

a. Estimate the beta for Southwestern Bell in 1999, assuming that it maintains its current debt-to-equity ratio.

b. Estimate the beta for Southwestern Bell in 1999, assuming that it decides to finance its media operations with a debt-to-equity ratio of  $50\%$ .

22. The chief financial officer of Adobe Systems, a growing software manufacturing firm, has approached you for some advice regarding the beta of his company. He subscribes to a service that estimates Adobe Systems' beta each year, and he has noticed that the beta estimates have gone down every year since 1991—from 2.35 in 1991 to 1.40 in 1995. He would like the answers to the following questions: a. Is this decline in beta unusual for a growing firm?

b. Why would the beta decline over time?

c. Is the beta likely to keep decreasing over time?

23. You are analyzing Tiffany & Company, an upscale retailer, and find that the regression estimate of the firm's beta is 0.75; the standard error for the beta estimate is 0.50. You also note that the average unlevered beta of comparable specialty retailing firms is 1.15.

a. If Tiffany has a debt/equity ratio of  $20\%$ , estimate the beta for the company based on comparable firms. (The tax rate is  $40\%$ .) b. Estimate a range for the beta from the regression.

c. Assume that Tiffany is rated BBB and that the default spread for BBB-rated firms is  $1\%$  over the Treasury bond rate. If the Treasury bond rate is  $6.5\%$ , estimate the cost of capital for the firm.

24. You have been asked to estimate the cost of capital for NewTel, a telecom firm. The firm has the following characteristics:

There are 100 million shares outstanding, trading at 250 per share.

The firm has a book value of debt with a maturity of six years of \$10 billion, and interest expenses of \$600 million on the debt. The firm is not rated, but it had operating income of 2.5 billion last year. (Firms with an interest coverage ratio of 3.5 to 4.5 were rated BBB, and the default spread was 1\%.)

The tax rate for the firm is  $35\%$ .

The Treasury bond rate is  $6\%$ , and the unlevered beta of other telecom firms is 0.80.

a. Estimate the market value of debt for this firm.

b. Based on the synthetic rating, estimate the cost of debt for this firm.

c. Estimate the cost of capital for this firm.

# Measuring Earnings

To estimate cash flows, we usually begin with a measure of earnings. Free cash flows to the firm, for instance, are based on after-tax operating earnings. Free cash flows to equity estimates, on the other hand, commence with net income. While we obtain measures of operating and net income from accounting statements, the accounting earnings for many firms bear little or no resemblance to the true earnings of the firm.

This chapter begins by considering the philosophical difference between the accounting and financial views of firms. We then consider how the earnings of a firm, at least as measured by accountants, have to be adjusted to get a measure of earnings that is more appropriate for valuation. In particular, we examine how to treat operating lease expenses, which we argue are really financial expenses, and research and development expenses, which we consider to be capital expenses. The adjustments affect not only our measures of earnings but our estimates of book value of capital. We also look at extraordinary items (both income and expenses) and one-time charges, the use of which has expanded significantly in recent years as firms have shifted toward managing earnings more aggressively. The techniques used to smooth earnings over periods and beat analyst estimates can skew reported earnings, and, if we are not careful, the values that emerge from them.

# ACCOUNTING VERSUS FINANCIAL BALANCE SHEETS

When analyzing a firm, what are the questions to which we would like to know the answers? A firm, as defined here, includes both investments already made—assets in place—and investments yet to be made—growth assets. In addition, a firm can either borrow the funds it needs to make these investments, in which case it is using debt, or raise it from its owners in the form of equity. Figure 9.1 summarizes this description of a firm in the form of a financial balance sheet.

Note that while this summary does have some similarities with the accounting balance sheet, there are key differences. The most important one is that here we explicitly consider growth assets when we look at what a firm owns.

When doing a financial analysis of a firm, we would like to be able to answer a number of questions relating to each of these items. Figure 9.2 lists the questions. As we see in this chapter, accounting statements allow us to acquire some information about each of these questions, but they fall short in terms of both the timeliness with which they provide it and the way in which they measure asset value, earnings, and risk.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/9c30097e10099fd9e9afc99e3a81283a39e720ab3e7e050a1c5150ca48383bdf.jpg)

FIGURE 9.1 A Financial Balance Sheet

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/19ee2c0cdd592f2fb45e82a35626452abc98aba3c998f3f7b43724ccc06cb569.jpg)

FIGURE 9.2 Key Financial Questions

# ADJUSTING EARNINGS

The income statement for a firm provides measures of both the operating and equity income of the firm in the form of the earnings before interest and taxes (EBIT) and net income. When valuing firms, there are two important considerations in using these measures. One is to obtain as updated an estimate as possible, given how much firms change over time. The second is that reported earnings at these firms may bear little resemblance to true earnings because of limitations in accounting rules and the firms' own actions.

# Importance of Updating Earnings

Firms reveal their earnings in their financial statements and annual reports to stockholders. Annual reports are released only at the end of a firm's financial year, but you are often required to value firms all through the year. Consequently, the last annual report that is available for a firm being valued can contain information that is several months old. In the case of firms that are changing rapidly over time, it is dangerous to base value estimates on information that is this old. Instead, use more recent information. Since firms in the United States are required to file quarterly reports with the Securities and Exchange Commission (10-Qs) and reveal these reports to the public, a more recent estimate of key items in the financial statements can be obtained by aggregating the numbers over the most recent four quarters. The estimates of revenues and earnings that emerge from this exercise are called trailing 12-month revenues and earnings and can be very different from the values for the same variables in the most recent annual report.

There is a price paid for the updating. Unfortunately, not all items in the annual report are updated in the quarterly reports. You have to either use the numbers in the last annual report (which does lead to inconsistent inputs) or estimate their values at the end of the last quarter (which leads to estimation error). For example, many firms do not reveal details about options outstanding (issued to managers and employees) in quarterly reports, while they do reveal them in annual reports. Since you need to value these options, you can use the options outstanding as of the last annual report, or assume that the options outstanding today have changed to reflect changes in the other variables. (For instance, if revenues have doubled, you can assume that the options have doubled as well.)

For younger firms, it is critical that you stay with the most updated numbers you can find, even if these numbers are estimates. These firms are often growing exponentially, and using numbers from the last financial year will lead to misleading estimates of value. Even firms that are not growing are changing substantially from quarter to quarter, and updated information might give you a chance to capture these changes.

There are several financial markets where firms still file financial reports only once a year, thus denying us the option of using quarterly updates. When valuing firms in these markets, you may have to draw on unofficial sources to update their valuations.

# ILLUSTRATION 9.1: Updated Earnings for Apple—April 2011

Assume that you were valuing Apple in April 2011. The last 10-K was as of September 2010 and the firm had released two quarterly reports (10-Qs), one ending in December 2010 and one ending in March 2011. To illustrate how much the fundamental inputs to the valuation have changed in the six months, the information in the last 10-K is compared to the trailing 12-month information in the latest 10-Q for revenues, operating income, R&D expenses, and net income (in millions of dollars).

<table><tr><td></td><td>Six Months Ending March 2010</td><td>Six Months Ending March 2011</td><td>Annual September 2010</td><td>Trailing 12-Month</td></tr><tr><td>Revenues</td><td>$29,182</td><td>$51,408</td><td>$65,225</td><td>$87,451</td></tr><tr><td>Operating income</td><td>$3,332</td><td>$4,815</td><td>$18,385</td><td>$19,868</td></tr><tr><td>R&amp;D</td><td>$824</td><td>$1,156</td><td>$1,782</td><td>$2,114</td></tr><tr><td>Net income</td><td>$6,452</td><td>$11,191</td><td>$14,013</td><td>$18,752</td></tr></table>

Trailing 12-month = Annual September 2010 - Six-month March 2010 + Six-month March 2011.

The trailing 12-month revenues are 40 percent higher than the revenues reported in the latest 10-K, and the firm's operating income and net income have both increased substantially. Apple in April 2011 was a much more profitable firm than Apple in September 2010. Note that these are not the only inputs that will change. For younger firms, the number of shares outstanding can also change dramatically from period to period. Using the most updated numbers will give you a more realistic valuation.

# Correcting Earnings Misclassification

Companies have three types of expenses:

1. Operating expenses are expenses that generate benefits for the firm only in the current period. For instance, the fuel used by an airline in the course of its flights is an operating expense, as is the labor cost for an automobile company associated with producing vehicles.
2. Capital expenses are expenses that generate benefits over multiple periods. For example, the expense associated with building and outfitting a new factory for an automobile manufacturer is a capital expense, since it will generate several years of revenues.
3. Financial expenses are expenses associated with nonequity capital raised by a firm. Thus, the interest paid on a bank loan would be a financial expense.

The operating income for a firm, measured correctly, should be equal to its revenues less its operating expenses. Neither financial nor capital expenses should be included in the operating expenses in the year that they occur, though capital expenses may be depreciated or amortized over the periods that the firm obtains benefits from the expenses. The net income of a firm should be its revenues less both its operating and financial expenses.

The accounting measures of earnings can be misleading because operating, capital, and financial expenses are sometimes misclassified. This section considers the two most common misclassifications and how to correct for them. The first is the inclusion of capital expenses such as research and development (R&D) in operating expenses, which skews the estimation of both operating and net income. The second adjustment is for financial expenses such as operating lease expenses that are treated as operating expenses. This affects the measurement of operating income and free cash flows to the firm.

The other factor to consider is the effect of the phenomenon of so-called managed earnings at these firms. Firms sometimes use accounting techniques to post earnings that beat analyst estimates, resulting in misleading measures of earnings.

Capital Expenses Treated as Operating Expenses While in theory operating income in after only operating expenses, the reality is that there are a number of capital expenses that are treated as operating expenses. For instance, a significant shortcoming of accounting statements is the way in which they treat research and development expenses. Using the rationale that the products of research are too uncertain and difficult to quantify, accounting standards have generally required that all R&D expenses be expensed in the period in which they occur. This has several consequences, but one of the most profound is that the value of the assets created by research does not show up on the balance sheet as part of the total assets of the firm. This, in turn, creates ripple effects for the measurement of capital and profitability ratios for the firm. We consider how to capitalize R&D expenses in the first part of the section and extend the argument to other capital expenses in the second part of the section.

Capitalizing R&D Expenses Research expenses, notwithstanding the uncertainty about future benefits, should be capitalized. To capitalize and value research assets, we make an assumption about how long it takes for research and development to be converted, on average, into commercial products. This is called the amortizable life of these assets. This life will vary across firms and reflect the time involved in converting research into products. To illustrate, research and development expenses at a pharmaceutical company should have fairly long amortizable lives, since the approval process for new drugs is long. In contrast, research and development expenses at a software firm, where products tend to emerge from research much more quickly, should be amortized over a shorter period.

Once the amortizable life of research and development expenses has been estimated, the next step is to collect data on R&D expenses over past years ranging back over the amortizable life of the research asset. Thus, if the research asset has an amortizable life of five years, the R&D expenses in each of the five years prior to the current one have to be obtained. For simplicity, it can be assumed that the amortization is uniform over time, which leads to the following estimate of the residual value of the research asset today:

$$
\text {V a l u e o f t h e r e s e r c h a s s e t} = \sum_ {\mathrm {t} = - (\mathrm {n} - 1)} ^ {\mathrm {t} = 0} \mathrm {R} \& \mathrm {D} _ {\mathrm {t}} \frac {(\mathrm {n} + \mathrm {t})}{\mathrm {n}}
$$

Thus, in the case of the research asset with a five-year life, you cumulate one-fifth of the R&D expenses from four years ago, two-fifths of the R&D expenses from three years ago, three-fifths of the R&D expenses from two years ago, four-fifths of the R&D expenses from last year, and this year's entire R&D expense to arrive at the value of the research asset. This augments the value of the assets of the firm and, by extension, the book value of equity.

Adjusted book value of equity  $=$  Book value of equity + Value of the research asset

Finally, the operating income is adjusted to reflect the capitalization of R&D expenses. First, the R&D expenses that were subtracted out to arrive at the operating income are added back to the operating income, reflecting their recategorization as capital expenses. Next, the amortization of the research asset is treated the same way that depreciation is and netted out to arrive at the adjusted operating income:

$$
\begin{array}{l} \text {A d j u s t e d} = \text {O p e r a t i n g} + \text {R} \& \text {D} \\ - \text {A m o r t i z a t i o n} \\ \end{array}
$$

This adjustment will generally increase operating income for firms that have R&D expenses that are growing over time. The net income will also be affected by this adjustment:

Adjusted net income  $=$  Net income + R&D expenses - Amortization of research asset

While we would normally consider only the after-tax portion of this amount, the fact that R&D is entirely tax deductible eliminates the need for this adjustment.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/e9fb27820505245085890e4b2a81331874df5073f61501e2e8942c38c45e00c3.jpg)

# R&DConv.xls: This spreadsheet allows you to convert R&D expenses from operating to capital expenses.

# ILLUSTRATION 9.2: Capitalizing R&D Expenses: Amgen in March 2009

Amgen is a biotechnology firm. Like most pharmaceutical firms, it has a substantial amount of R&D expenses, and we attempt to capitalize it in this section. The first step in this conversion is determining an amortizable life for R&D expenses. How long will it take, on an expected basis, for research to pay off at Amgen? Given the length of the approval process for new drugs by the Food and Drug Administration, we assume that this amortizable life is 10 years.

The second step in the analysis is collecting research and development expenses from prior years, with the number of years of historical data being a function of the amortizable life. The following table provides this information (in millions of dollars) for each of the years:

<table><tr><td>Year</td><td>R&amp;D Expenses</td></tr><tr><td>Current (2008)</td><td>$3,030</td></tr><tr><td>-1</td><td>$3,266</td></tr><tr><td>-2</td><td>$3,366</td></tr><tr><td>-3</td><td>$2,314</td></tr><tr><td>-4</td><td>$2,028</td></tr><tr><td>-5</td><td>$1,655</td></tr><tr><td>-6</td><td>$1,117</td></tr><tr><td>-7</td><td>$ 864</td></tr><tr><td>-8</td><td>$ 845</td></tr><tr><td>-9</td><td>$ 823</td></tr><tr><td>-10</td><td>663</td></tr></table>

The current year's information reflects the R&D in the most recent financial year (which was calendar year 2008).

The portion of the expenses in prior years that would have been amortized already and the amortization this year from each of these expenses is considered. To make estimation simpler, these expenses are amortized linearly over time; with a 10-year life,  $10\%$  is amortized each year. This allows you to estimate the value of the research asset created at each of these firms, and the amortization of R&D expenses in the current year. The procedure is illustrated in the following table:

<table><tr><td>Year</td><td>R&amp;D Expense</td><td colspan="2">Unamortized Portion</td><td>Amortization This Year</td></tr><tr><td>Current</td><td>$3,030.00</td><td>100.00\%</td><td>$3,030.00</td><td>0.00</td></tr><tr><td>–1</td><td>$3,266.00</td><td>90.00\%</td><td>$2,939.40</td><td>$326.60</td></tr><tr><td>–2</td><td>$3,366.00</td><td>80.00\%</td><td>$2,692.80</td><td>$336.60</td></tr><tr><td>–3</td><td>$2,314.00</td><td>70.00\%</td><td>$1,619.80</td><td>$231.40</td></tr><tr><td>–4</td><td>$2,028.00</td><td>60.00\%</td><td>$1,216.80</td><td>$202.80</td></tr><tr><td>–5</td><td>$1,655.00</td><td>50.00\%</td><td>$827.50</td><td>$165.50</td></tr><tr><td>–6</td><td>$1,117.00</td><td>40.00\%</td><td>$446.80</td><td>$111.70</td></tr><tr><td>–7</td><td>$864.00</td><td>30.00\%</td><td>$259.20</td><td>$86.40</td></tr><tr><td>–8</td><td>$845.00</td><td>20.00\%</td><td>$169.00</td><td>$84.50</td></tr><tr><td>–9</td><td>$823.00</td><td>10.00\%</td><td>$82.30</td><td>$82.30</td></tr><tr><td>–10</td><td>$663.00</td><td>0.00\%</td><td>$0.00</td><td>$66.30</td></tr><tr><td colspan="2">Value of research asset</td><td></td><td>\$13,283.60</td><td></td></tr><tr><td colspan="2">Amortization of research asset this year</td><td></td><td></td><td>\$1694.10</td></tr></table>

Note that none of the current year's expenditure has been amortized because it is assumed to occur at the end of the year (which is assumed to be right now) but that 50 percent of the expense from five years ago has been amortized. The sum of the dollar values of unamortized R&D from prior years is  \$13,284 billion. This can be viewed as the value of Amgen's research asset and would be also added to the book value of equity for computing return on equity and capital measures. The sum of the amortization in the current year for all prior year expenses is\$ 1,694 million.

The final step in the process is the adjustment of the operating income to reflect the capitalization of research and development expenses. We make the adjustment by adding back current year's R&D expenses to the operating income (to reflect its reclassification as a capital expense) and subtracting out the amortization of the research asset, estimated in the last step. For Amgen, which reported operating income of 5,594 million in its income statement for 2008, the adjusted operating earnings would be:

$$
\begin{array}{l} \text {A d j u s t e d o p e r a t i n g e a n n e i r s} = \text {O p e r a t i n g e a n n e i r s} + \text {C u r r e n t y e a r ' s R & D e x p e n s e} \\ - \text {A m o r t i z a t i o n} \\ = 5, 5 9 4 + 3, 0 3 0 - 1, 6 9 4 = \$ 6, 9 3 0 \\ \end{array}
$$

The stated net income of 4,196 million can be adjusted similarly.

$$
\begin{array}{l} \text {A d j u s t e d n e t i n c o m e} = \text {N e t i n c o m e} + \text {C u r r e n t y e a r s R D} \\ = 4, 1 9 6 + 3, 0 3 0 - 1, 6 9 4 = \$ 5, 5 3 2 \\ \end{array}
$$

In the last section, we explained why there is no tax effect to consider.

Both the book value of equity and capital are augmented by the value of the research asset. Since measures of return on capital and equity are based on the prior year's values, we computed the value of the research asset at the end of 2007, using the same approach that we used in 2008.

$$
\text {V a l u e o f r e s e r c h a s s e t} _ {2 0 0 7} = \$ 1 1, 9 4 8 \text {m i l l i o n}
$$

$$
\begin{array}{l} \text {A d j u s t e d b o k v a l u e o f e q u i t y} _ {2 0 0 7} = \text {B o o k v a l u e o f e q u i t y} _ {2 0 0 7} + \text {V a l u e o f r e s e r c h a s s e t} \\ = 1 7, 8 6 9 \text {m i l l o n} + 1 1, 9 4 8 \text {m i l l o n} = \$ 2 9, 8 1 7 \text {m i l l o n} \\ \end{array}
$$

$$
\begin{array}{l} \text {A d j u s t e d b o o k v a l u e o f c a p i t a l} _ {2 0 0 7} = \text {B o o k v a l u e o f c a p i t a l} _ {2 0 0 7} + \text {V a l u e o f r e s e r c h a s s e t} \\ = 2 1, 9 8 5 \text {m i l l o n} + 1 1, 9 4 8 \text {m i l l o n} = \$ 3 3, 8 4 3 \text {m i l l o n} \\ \end{array}
$$

The returns on equity and capital are reported with both the unadjusted and adjusted numbers:

# Unadjusted

# Adjusted for R&D

Return on equity

4,196/17,869 = 23.48\%

5,532/29,817 = 18.55\%

Pretax return on capital

5,594/21,985 = 25.44\%

6,930/33,843 = 20.48\%

While the profitability ratios for Amgen remain impressive even after the adjustment, they decline from the unadjusted numbers. This is likely to happen for most firms that earn high returns on equity and capital and have substantial R&D expenses.[2]

Capitalizing Other Operating Expenses While R&D expenses are the most prominent example of capital expenses being treated as operating expenses, there are other operating expenses that arguably should be treated as capital expenses. Consumer product companies such as Gillette and Coca-Cola could argue that a portion of advertising expenses should be treated as capital expenses, since they are designed to augment brand name value. For a consulting firm, the cost of recruiting and training its employees could be considered a capital expense, since the consultants who emerge are likely to be the heart of the firm's assets and provide benefits over many years. For some technology firms, including e-tailers such as Amazon.com, the biggest operating expense item is selling, general, and administrative expenses (SG&A). These firms could argue that a portion of these expenses should be treated as capital expenses, since they are designed to increase brand name awareness and bring in new customers.

While this argument has some merit, you should remain wary about using it to justify capitalizing these expenses. For an operating expense to be capitalized, there should be substantial evidence that the benefits from the expense accrue over multiple periods. Does a customer who is enticed to buy from Amazon, based on an advertisement or promotion, continue as a customer for the long term? There are some analysts who claim that this is indeed the case, and attribute significant value added to each new customer. It would be logical, under those circumstances, to capitalize these expenses using a procedure similar to that used to capitalize R&D expenses.

Determine the period over which the benefits from the operating expense (such as SG&A) will flow.

Estimate the value of the asset (similar to the research asset) created by these expenses. If the expenses are SG&A expenses, this would be the SG&A asset.

Adjust the operating income for the expense and the amortization of the created asset.

Adjusted operating income  $=$  Operating income

+ SG&A expenses for the current period
- Amortization of SG&A asset

A similar adjustment has to be made to net income:

Adjusted net income  $=$  Net income + SG&A expenses for the current period

- Amortization of SG&A asset

As with the research asset, the capitalization of these expenses will create an asset that augments the book value of equity (and capital).

# ILLUSTRATION 9.3: Should You Capitalize SG&A Expense? Analyzing Amazon.com

Let us consider SG&A expenses at Amazon. To make a judgment on whether you should capitalize these expenses, you need to get a sense of what these expenses are and how long the benefits accruing from these expenses last. For instance, assume that an Amazon promotion (the expense of which would be included in SG&A) attracts new customers to the web site, and that customers, once they try Amazon, continue, on average, to be customers for three years. You would then use a three year amortizable life for SG&A expenses, and capitalize them the same way you capitalized R&D: by collecting historical information on SG&A expenses, amortizing them each year, estimating the value of the selling asset, and then adjusting operating income.

We do believe, on balance, that selling, general, and administrative expenses should continue to be treated as operating expenses and not capitalized for Amazon for two reasons. First, retail customers are difficult to retain, especially online, and Amazon faces serious competition not only from other online retailers but also from traditional retailers like Wal Mart setting up their online operations. Consequently, the customers that Amazon might attract with its advertising or sales promotions are unlikely to stay for an extended period just because of the initial inducements. Second, as the company has become larger, its selling, general, and administrative expenses seem increasingly directed toward generating revenues in current periods rather than future periods.

# ILLUSTRATION 9.4: Capitalizing Recruitment and Training Expenses: Cyber Health Consulting

Cyber Health Consulting (CHC) is a firm that specializes in offering management consulting services to health-care firms. CHC reported operating income (EBIT) of  \$51.5 million and net income of\$ 23 million in the most recent year. However, the firm's expenses include the cost of recruiting new consultants ( \$5.5 million) and the cost of training (\$ 8.5 million). A consultant who joins CHC stays with the firm, on average, four years.

To capitalize the cost of recruiting and training, we obtained these costs from each of the prior four years. The following table reports on these human capital expenses, and amortizes each of these expenses over four years.

<table><tr><td>Year</td><td>Training and Recruiting Expenses</td><td>Unamortized Portion</td><td>Amortization This Year</td></tr><tr><td>Current</td><td>$14.00</td><td>100\%</td><td>$14.00</td></tr><tr><td>-1</td><td>$12.00</td><td>75\%</td><td>$9.00</td></tr><tr><td>-2</td><td>$10.40</td><td>50\%</td><td>$5.20</td></tr><tr><td>-3</td><td>$9.10</td><td>25\%</td><td>$2.28</td></tr><tr><td>-4</td><td>$8.30</td><td>—</td><td>$0.00</td></tr><tr><td colspan="2">Value of human capital asset =</td><td></td><td>$30.48</td></tr><tr><td></td><td></td><td></td><td>$9.95</td></tr></table>

The adjustments to operating and net income are as follows:

Adjusted operating income  $=$  Operating income + Training and recruiting expenses

- Amortization of expense this year
 = \ 51.5 + \$ 14 - \$ 9.95 = \$ 55.55  million

Net income = Net income + Training and recruiting expenses - Amortization of expense this year

= \$23 million + \$14 million - \$9.95 million = \$27.05 million

As with R&D expenses, the fact that training and recruiting expenses are fully tax deductible dispenses with the need to consider the tax effect when adjusting net income.

Adjustments for Financing Expenses The second adjustment is for financing expenses that accountants treat as operating expenses. The most significant example is operating lease expenses, which are treated as operating expenses, in contrast to capital leases, which are presented as debt.

Converting Operating Leases into Debt In Chapter 8, the basic approach for converting operating leases into debt was presented. You discount future operating lease commitments back at the firm's pretax cost of debt. The present value of the operating lease commitments is then added to the conventional debt of the firm to arrive at the total debt outstanding.

Adjusted debt  $=$  Debt + Present value of lease commitments

Once operating leases are recategorized as debt, the operating incomes can be adjusted in two steps. First, the operating lease expense is added back to the operating income, since it is a financial expense. Next, the depreciation on the leased asset is subtracted out to arrive at adjusted operating income:

Adjusted operating income  $=$  Operating income + Operating lease expenses - Depreciation on leased asset

If you assume that the depreciation on the leased asset approximates the principal portion of the debt being repaid, the adjusted operating income can be computed by adding back the imputed interest expense on the debt value of the operating lease expense:

Adjusted operating income  $=$  Operating income

+ Debt value of operating lease expense
$\times$  Interest rate on debt

# ILLUSTRATION 9.5: Adjusting Operating Income for Operating Leases: The Gap in 2011

As a specialty retailer, the Gap has hundreds of stores that are leased, with the leases being treated as operating leases. For the most recent financial year (2010), the Gap has operating lease expenses of 1,129 million. The following table presents the operating lease commitments for the firm over the next five years and the lump sum of commitments beyond that point in time.

<table><tr><td>Year</td><td>Commitment</td></tr><tr><td>1</td><td>$997</td></tr><tr><td>2</td><td>$841</td></tr><tr><td>3</td><td>$710</td></tr><tr><td>4</td><td>$602</td></tr><tr><td>5</td><td>\$483</td></tr><tr><td>6 and beyond</td><td>\$1,483</td></tr></table>

The Gap, based on its S&P bond rating of BB+, has a pretax cost of debt of 5.5\%. To compute the present value of the commitments, you have to make a judgment on the lump sum commitment in year 6. Based on the average annual lease commitment over the first five years (727 million), we arrive at an annuity of two years:4

Approximate life of annuity (for year 6 lump sum) = 1,483/727 = 2.04

The present values of the commitments at the  $5.5\%$  pretax cost of debt are estimated in the following table:

<table><tr><td>Year</td><td>Commitment</td><td>Present Value</td></tr><tr><td>1</td><td>$997</td><td>$ 945.02</td></tr><tr><td>2</td><td>$841</td><td>$ 755.60</td></tr><tr><td>3</td><td>$710</td><td>$ 604.65</td></tr><tr><td>4</td><td>$602</td><td>$ 485.94</td></tr><tr><td>5</td><td>$483</td><td>$ 369.56</td></tr><tr><td>6 and 7</td><td>$741.40</td><td>$1,047.50</td></tr><tr><td>Debt value of leases</td><td></td><td>4,208.28</td></tr></table>

The present value of operating leases is treated as the equivalent of debt, and is added onto the conventional debt of the firm. The Gap has no interest-bearing debt on its balance sheet. The cumulated debt for the firm is:

Adjusted debt = Interest-bearing debt + Present value of lease commitments

 = \ 0  million +  \ 4,208  million =  \ 4,208  million

To adjust the operating income for the Gap, we first use the full adjustment. To compute depreciation on the leased asset, we assume straight-line depreciation over the lease life $^{5}$  (7 years) on the value of the leased asset, which is equal to the debt value of the lease commitments:

Straight-line depreciation = Value of leased asset/Lease life = 4,208/7 = 601 million

The Gap's stated operating income of 1,968 million is adjusted as follows:

Adjusted operating income  $=$  Operating income + Operating lease expense in current year

Depreciation on leased asset

 = \ 1,968 + 1,129 - 601 = \ 2,496  million

The approximate adjustment is also estimated as follows, where we add the added imputed interest expense using the pretax cost of debt:

Adjusted operating income  $=$  Operating income + Debt value of leases  $\times$  Pretax cost of debt

= \ 1,968 + \ 4,208 \times .055 = \ 2,199 million

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/93b0bbffc0b50b2647c616e084dd69a3ce6fbdd8514e4fd11e248c86f34b9e1f.jpg)

# Oplease.xls: This spreadsheet allows you to convert operating lease expenses into debt.

# WHAT ABOUT OTHER COMMITMENTS?

The argument made about leases can be made about other long-term commitments where a firm has no escape hatches or cancellation options, or where the payment is not connected to performance/earnings. For instance, consider a professional sports team that signs a star player to a 10-year contract, agreeing to pay 5 million a year. If the payment is not contingent on performance, this firm has created the equivalent of debt by signing this contract.

The upshot of this argument is that firms that have no debt on their balance sheet may still be highly levered and subject to default risk as a consequence. For instance, Mario Lemieux, a star player for the Pittsburgh Penguins, the professional ice hockey team, was given partial ownership of the team because of its failure to meet contractual commitments it had made to him.

# Accounting Earnings and True Earnings

Firms have become particularly adept at meeting and beating analyst estimates of earnings each quarter. While beating earnings estimates can be viewed as a positive development, some firms adopt accounting techniques that are questionable to accomplish this objective. When valuing these firms, you have to correct operating income for these accounting manipulations to arrive at the correct operating income.

The Phenomenon of Managed Earnings In the 1990s, firms like Microsoft and Intel set the pattern for technology firms. In fact, Microsoft beat analyst estimates of earnings in 39 of the 40 quarters during the decade, and Intel posted a record almost as impressive. As the market values of these firms skyrocketed, other technology firms followed in their footsteps in trying to deliver earnings that were higher than analyst estimates by at least a few pennies. The evidence is overwhelming that the phenomenon is spreading. For an unprecedented 18 quarters in a row from 1996 to 2000, more firms beat consensus earnings estimates than missed them.[6] In another indication of the management of earnings, the gap between the earnings reported by firms to the Internal Revenue Service and that reported to equity investors has been growing over the past decade.

Given that these analyst estimates are expectations, what does this tell you? One possibility is that analysts consistently underestimate earnings and never learn from their mistakes. While this is a possibility, it seems extremely unlikely to persist over an entire decade. The other is that technology firms particularly have far more discretion in how they measure and report earnings and are using this discretion to beat estimates. In particular, the treatment of research expenses as operating expenses gives these firms an advantage when it comes to managing earnings.

Does managing earnings really increase a firm's stock price? It might be possible to beat analysts quarter after quarter, but are markets as gullible? They are not, and the advent of so-called whispered earnings estimates is in reaction to the consistent delivery of earnings that are above expectations. What are whispered earnings? Whispered earnings are implicit earnings estimates that firms have to beat to surprise the market, and these estimates are usually a few cents higher than analyst estimates. For instance, on April 10, 1997, Intel reported earnings per share of  \$2.10 per share, higher than analyst estimates of\$ 2.06 per share, but saw its stock price drop 5 points because the whispered earnings estimate had been 2.15. In other words, markets had built into expectations the amount by which Intel had beaten earnings estimates historically.

Why Do Firms Manage Earnings? Firms generally manage earnings because they believe that they will be rewarded by markets for delivering earnings that are smoother and come in consistently above analyst estimates. As evidence, they point to the success of firms like Microsoft and Intel, and the brutal punishment meted out for firms that do not meet expectations.

Many financial managers also seem to believe that investors take earnings numbers at face value, and the managers work at delivering bottom lines that reflect this belief. This may explain why any efforts by the Financial Accounting Standards Board (FASB) to change the way earnings are measured are fought with vigor, even when the changes make sense. For instance, any attempts by FASB to value the options granted by firms to their managers at a fair value and charge them against earnings or change the way mergers are accounted for have been consistently opposed by technology firms.

It may also be in the best interests of the managers of firms to manage earnings. Managers know that they are more likely to be fired when earnings drop significantly relative to prior periods. Furthermore, there are firms where managerial compensation is still built around profit targets, and meeting these targets can lead to lucrative bonuses.

Techniques for Managing Earnings How do firms manage earnings? One aspect of good earnings management is the care and nurturing of analyst expectations, a practice that Microsoft perfected during the 1990s. Executives at the firm monitored analyst estimates of earnings, and stepped in to lower expectations when they believed that the estimates were too high.[7] There are several other techniques that are used, and some of the most common are considered in this section. Not all the techniques are hurtful to the firm, and some may indeed be considered prudent management.

■ Planning ahead. Firms can plan investments and asset sales to keep earnings rising smoothly.

Revenue recognition. Firms have some leeway when it comes to when revenues have to be recognized. As an example, Microsoft, in 1995, adopted an extremely conservative approach to accounting for revenues from its sale of Windows 95, and chose not to show large chunks of revenues that it was entitled (though not obligated) to show.[8] In fact, the firm had accumulated 1.1 billion in unearned revenues by the end of 1996 that it could borrow on to supplement earnings in a weaker quarter.

■ Booking revenues early. In an opposite phenomenon, firms sometimes ship products during the final days of a weak quarter to distributors and retailers and record the revenues. Consider the case of MicroStrategy, a technology firm that went public in 1998. In the last two quarters of 1999, the firm reported revenue growth of 20 percent and 27 percent respectively, but much of that growth was attributable to large deals announced just days after each quarter ended, with some revenues attributed to the just-ended quarter. In a more elaborate variant of this strategy, two technology firms, both of which need to boost revenues, can enter into a transaction swapping revenues.

Capitalizing operating expenses. Just as with revenue recognition, firms are given some discretion in whether they classify expenses as operating or capital expenses, especially for items like software R&D. AOL's practice of capitalizing and writing off the cost of the CDs and disks it provided with magazines, for instance, allowed it to report positive earnings through much of the late 1990s.

■ Write-offs. A major restructuring charge can result in lower income in the current period, but it provides two benefits to the firm taking it. Since operating earnings are reported both before and after the restructuring charge, it allows the firm to separate the expense from operations. It also makes beating earnings easier in future quarters. To see how restructuring can boost earnings, consider the case of IBM. By writing off old plants in the year they are closed, IBM was able to drop depreciation expenses to 5 percent of revenue in 1996 from an average of 7 percent in 1990-1994. The difference, in 1996 revenue, was  \$1.64 billion, or 18 percent of the company's\$ 9.02 billion in pretax profit that year. Technology firms have been particularly adept at writing off a large portion of acquisition costs as "in-process R&D" to register increases in earnings in subsequent quarters. Deng and Lev (1998) studied 389 firms that wrote off in-process R&D between 1990 and 1996; these write-offs amounted, on average, to 72 percent of the purchase price on these acquisitions, and increased the acquiring firm's earnings 22 percent in the fourth quarter after the acquisition.

■ Use of reserves. Firms are allowed to build up reserves for bad debts, product returns, and other potential losses. Some firms are conservative in their estimates in good years, and use the excess reserves that they have built up during these years to smooth out earnings in other years.

Income from investments. Firms with substantial holdings of marketable securities or investments in other firms often have these investments recorded on their books at values well below their market values. Thus, liquidating these investments can result in large capital gains, which can boost income in the period.

Adjustments to Income To the extent that firms manage earnings, you have to be cautious about using the current year's earnings as a base for projections. This section considers a series of adjustments that we might need to make to stated earnings before using the number as a basis for projections. We begin by considering the often subtle differences between one-time, recurring, and unusual items. We follow up by examining how best to deal with the debris left over by acquisition accounting. Then we consider how to deal with income from holdings in other companies and investments in marketable securities. Finally, we look at a series of tests that may help us gauge whether the reported earnings of a firm are reliable indicators of its true earnings.

Extraordinary, Recurring, and Unusual Items The rule for estimating both operating and net income is simple. The operating income that is used as a base for projections should reflect continuing operations and should not include any items that are one-time or extraordinary. Putting this statement into practice is often a challenge because there are four types of extraordinary items:

1. One-time expense or income that is truly one-time. A large restructuring charge that has occurred only once in the past 10 years would be a good example. These expenses can be backed out of the analysis and the operating and net income calculated without them.
2. Expenses and income that do not occur every year but seem to recur at regular intervals. Consider, for instance, a firm that has taken a restructuring charge every 3 years for the past 12 years. While not conclusive, this would suggest that the extraordinary expenses are really ordinary expenses that are being bundled by the firm and taken once every three years. Ignoring such an expense would be dangerous because the expected operating income in future years would be overstated. What would make sense would be to take the expense and spread it out on an annual basis. Thus, if the restructuring expense every three years has amounted to  \$1.5 billion, on average, the operating income for the current year should be reduced by\$ 0.5 billion to reflect the annual charge due to this expense.
3. Expenses and income that recur every year but with considerable volatility. The best way to deal with such items is to normalize them by averaging the expenses across time and reducing this year's income by this amount.
4. Items that recur every year that change signs—positive in some years and negative in others. Consider, for instance, the effect of foreign currency translations on income. For a firm in the United States, the effect may be negative in years in which the dollar gets stronger and positive in years in which the dollars get weaker. The most prudent thing to do with these expenses would be to ignore them for cash flow purposes; you may or may not adjust discount rates for the risk created by the variability.

To differentiate between these items requires that you have access to a firm's financial history. For young firms, this may not be available, making it more difficult to draw the line between expenses that should be ignored, expenses that should be normalized, and expenses that should be considered in full.

Adjusting for Acquisitions and Divestitures Acquisition accounting can wreak havoc on reported earnings for years after an acquisition. The most common by-product of acquisitions is the amortization of goodwill. This amortization can reduce reported income in subsequent periods. Should we consider amortization to be an operating expense? We think not, since it is both a noncash and often a non-tax-deductible charge. The safest route to follow with goodwill amortization is to look at earnings prior to the amortization.

Technology companies have used an unusual ploy to get the goodwill created when a premium is paid over book value off their books. Using the argument that the bulk of the market value paid for technology companies comes from the value of the research done by the firm over time, they have written off what they called in-process R&D to preserve consistency. After all, they argue, the R&D they do internally is expensed. As with amortization of goodwill, writing off in-process R&D creates a noncash and non-tax-deductible charge and we should look at earnings prior to their write-off.

When firms divest assets, they can generate income in the form of capital gains. Infrequent divestitures can be treated as one-time items and ignored, but some firms divest assets on a regular basis. For such firms, it is best to ignore the income associated with the divestiture, but to consider the cash flows associated with divestiture, net of capital gains taxes, when estimating net capital expenditures. For instance, a firm with  \$500 million in capital expenditures,\$ 300 million in depreciation, and \$120 million in divestitures every year would have a net capital expenditure of \$80 million.

Net capital expenditures = Capital expenditures - Depreciation - Divestiture proceeds

 = \ 500 - \$ 300 - \$ 120 = \$ 80  million

Income from Investments and Cross Holdings Investments in marketable securities generate two types of income. The first takes the form of interest or dividends and the second is the capital gains (or losses) associated with selling securities at prices that are different from their cost bases. In the 1990s, when the stock market was booming, several technology firms used the latter to augment income and beat analyst estimates. In our view, neither type of income should be considered part of the earnings used in valuation for any firm other than a financial service firm that defines its business as the buying and selling of securities (such as a hedge fund). The interest earned on marketable securities should be ignored when valuing the firm, since it is far easier to add the market value of these securities at the end of the process rather than mingle them with other assets. For instance, assume that you have a firm that generates  \$100 million in after-tax cash flows, but also assume that 20 percent of these cash flows come from holdings of marketable securities with a current market value of\$ 500 million. The remaining 80 percent of the cash flows comes from operating assets; these cash flows are expected to grow at 5 percent a year in perpetuity, and the cost of capital (based on the risk of these assets) is 10 percent. The value of this firm can be most easily estimated as follows:

Value of operating assets of the firm = 80(1.05)/(.10 - .05)

\$1,680 million

Value of marketable securities

500 million

Value of firm

2,180 million

If we had chosen to discount the entire after-tax cash flow of 100 million, we would have had to adjust the cost of capital (to reflect the risk of the marketable securities). The adjustment, done right, should yield the same value as that estimated.[11] The capital gain or loss from the sale of marketable securities should be ignored for a different reason. If you incorporate this gain into your income and use it in your forecasts, not only are you counting on being able to sell your securities for higher prices each period in the future but you risk double counting the value of these securities if you are adding them to the value of the operating assets to arrive at an estimate of value.

Firms that have a substantial number of cross holdings in other firms will often report increases or decreases to earnings reflecting income or losses from these holdings. The effect on earnings will vary depending on how the holding is categorized. Chapter 3 differentiated among three classifications:

1. A minority passive holding, where only the dividends received from the holding are recorded in income.
2. A minority active interest, where the portion of the net income (or loss) from the subsidiary is shown in the income statement as an adjustment to net income (but not to operating income).
3. A majority active interest, where the income statements are consolidated and the entire operating income of the subsidiary (or holding) are shown as part of the operating income of the firm. In such cases, the net income is usually adjusted for the portion of the subsidiary owned by others (minority interests).

The safest route to take with the first two types of holdings is to ignore the income shown from the holding when valuing a firm, to value the holding separately and to add it to the value obtained for the other assets. As a simple example, consider a firm (Holding Inc.) that generates  \$100 million in after-tax cash flows from its operating assets, and assume that these cash flows will grow at 5 percent a year forever. In addition, assume that the firm owns 10 percent of another firm (Subsidiary Inc.) with after-tax cash flows of\$ 50 million growing at 4 percent a year forever. Finally, assume that the cost of capital for both firms is 10 percent. The firm value for Holding Inc. can be estimated as follows:

Value of operating assets of Holding Inc. = 100(1.05)/(.10 - .05) 2,100 million

Value of operating assets of Subsidiary Inc. = 50(1.04)/(.10 - .04) 867 million

Value of Holding Inc. = $2,100 + .10(867) $2,187 million

When earnings are consolidated, you can value the combined firm with the consolidated income statement and then subtract out the value of the minority holdings. To do this, though, you have to assume that the two firms are in the same business and are of equivalent risk since the same cost of capital will be applied to both firm's cash flows. Alternatively, you can strip the entire operating income of the subsidiary from the consolidated operating income and follow the process just laid out to value the holding. We will return to examine this issue is more detail in chapter 16.

# ILLUSTRATION 9.6: Adjusting Earnings for One-Time Charges

Between 1997 and 1999, Xerox's reported earnings included a significant number of one-time, extraordinary, and unusual items. The summary of the earnings is provided in the following table:

<table><tr><td></td><td>1999</td><td>1998</td><td>1997</td></tr><tr><td>Sales</td><td>$10,346</td><td>$10,696</td><td>\$9,881</td></tr><tr><td>Service and rentals</td><td>$7,856</td><td>$7,678</td><td>\$7,257</td></tr><tr><td>Finance income</td><td>$1,026</td><td>$1,073</td><td>\$1,006</td></tr><tr><td>Total revenues</td><td>$19,228</td><td>$19,447</td><td>\$18,144</td></tr><tr><td>Costs and expenses</td><td></td><td></td><td></td></tr><tr><td>Cost of sales</td><td>$5,744</td><td>$5,662</td><td>\$5,330</td></tr><tr><td>Cost of service and rentals</td><td>$4,481</td><td>$4,205</td><td>\$3,778</td></tr><tr><td>Inventory charges</td><td>$0</td><td>$113</td><td>\$0</td></tr><tr><td>Equipment financing interest</td><td>$547</td><td>$570</td><td>\$520</td></tr><tr><td>Research and development expenses</td><td>$979</td><td>$1,040</td><td>\$1,065</td></tr><tr><td>SG&amp;A expenses</td><td>$5,144</td><td>$5,321</td><td>\$5,212</td></tr><tr><td>Restructuring charge and asset impairment</td><td>$0</td><td>$1,531</td><td>\$0</td></tr><tr><td>Other, net</td><td>$297</td><td>$242</td><td>\$98</td></tr><tr><td>Total expenses</td><td>$17,192</td><td>$18,684</td><td>\$16,003</td></tr><tr><td>Earnings before taxes, equity income, and minority interests</td><td>$2,036</td><td>$763</td><td>\$2,141</td></tr><tr><td>– Income taxes</td><td>$631</td><td>$207</td><td>\$728</td></tr><tr><td>+ Equity in net income of unconsolidated affiliates</td><td>$68</td><td>$74</td><td>\$127</td></tr><tr><td>– Minority interests in earnings of subsidiaries</td><td>$49</td><td>$45</td><td>\$88</td></tr><tr><td>Net income from continuing operations</td><td>$1,424</td><td>$585</td><td>\$1,452</td></tr><tr><td>– Discontinued operations</td><td>$0</td><td>$190</td><td>\$0</td></tr><tr><td>Net income</td><td>$1,424</td><td>$395</td><td>\$1,452</td></tr></table>

There are a few obvious adjustments to income that represent one-time charges and a host of other issues. Let us consider first the obvious adjustments:

The inventory charge and restructuring charges seem to represent one-time charges, though there is the possibility that they represent more serious underlying problems that can create charges in future periods. The charge for discontinued operations also affects only one year's income. These expenses should be added back to arrive at adjusted operating income and net income.

The other (net) expenses line item is a recurring but volatile item. We would average this expense when forecasting future income.

To arrive at adjusted net income we would also reverse the last two adjustments by subtracting out the equity in net income of subsidiaries (reflecting Xerox's minority holdings in other firms) and adding back the earnings in minority interests (reflecting minority interests in Xerox's majority holdings).

The following table adjusts the net income in each of the years for the changes suggested:

<table><tr><td></td><td>1999</td><td>1998</td><td>1997</td></tr><tr><td>Net income from continuing operations</td><td>$1,424</td><td>$585</td><td>\$1,452</td></tr><tr><td>– Equity in net income of unconsolidated affiliates</td><td>$68</td><td>$74</td><td>\$127</td></tr><tr><td>+ Minority interests in earnings of subsidiaries</td><td>$49</td><td>$45</td><td>\$88</td></tr><tr><td>+ Restructuring charge (1 – Tax rate)</td><td>$0</td><td>$1,116</td><td>\$0</td></tr><tr><td>+ Inventory charge (1 – Tax rate)</td><td>$0</td><td>$82</td><td>\$0</td></tr><tr><td>+ Other, net (1 – Tax rate)</td><td>$205</td><td>$176</td><td>\$65</td></tr><tr><td>– Normalized other, net (1 – Tax rate)</td><td>$147</td><td>$155</td><td>\$140</td></tr><tr><td>Adjusted net income</td><td>$1,463</td><td>$1,776</td><td>\$1,338</td></tr></table>

The restructuring and inventory charges were tax deductible and the after-tax portion was added back; the tax rate was computed based on taxes paid and taxable income for that year.

Tax rate in 1998 = Taxes paid/Taxable income = 207/763 = 27.13\%

We also add back the after-tax portion of the other expenses (net) and subtract out the average annual expense over the three years:

Average annual other expenses = (297 + 242 + 98) / 3 = \ 212 million

Similar adjustments would need to be made to operating income. Xerox nets out interest expenses against interest income on its Capital subsidiary to report finance income. You would need to separate interest expenses from interest income to arrive at an estimate of operating income for the firm.

What are the other issues? The plethora of one-time charges suggests that there may be ongoing operational problems at Xerox that may cause future charges. In fact, it is not surprising that Xerox had to delay its 10-K filing for 2000 because of accounting issues.

# CONCLUSION

Financial statements remain the primary source of information for most investors and analysts. There are differences, however, in how accounting and financial analysts approach answering a number of key questions about the firm.

This chapter begins our analysis of earnings by looking at the accounting categorization of expenses into operating, financing, and capital expenses. While operating and financing expenses are shown in income statements, capital expenditures are spread over several time periods and take the form of depreciation and amortization. Accounting standards misclassify operating leases and research and development expenses as operating expenses (when the former should be categorized as financing expenses and the latter as capital expenses). We suggest ways in which earnings can be corrected to better measure the impact of these items.

In the second part of the chapter, we consider the effect of one-time, nonrecurring, and unusual items on earnings. While the underlying principle is that earnings should include only normal expenses, this is put to the test by the attempts on the part of companies to move normal operating expenses into the nonrecurring column and nonoperating income into operating earnings.

# WARNING SIGNS IN EARNINGS REPORTS

The most troubling thing about earnings reports is that we are often blind-sided not by the items that get reported (such as extraordinary charges) but by the items that are hidden in other categories. We would suggest the following checklist that should be reviewed about any earnings report to gauge the possibility of such shocks:

- Is earnings growth outstripping revenue growth by a large magnitude year after year? This may well be a sign of increased efficiency, but when the differences are large and continue year after year, you should wonder about the source of these efficiencies.
- Do one-time or nonoperating charges to earnings occur frequently? The charge itself might be categorized differently each year—an inventory charge one year, a restructuring charge the next, and so on. While this may be just bad luck, it may also reflect a conscious effort by a company to move regular operating expenses into these nonoperating items.
- Do any of the operating expenses, as a percent of revenues, swing wildly from year to year? This may suggest that this expense item (say SG&A) includes nonoperating expenses that should really be stripped out and reported separately.
- Does the company manage to beat analyst estimates quarter after quarter by a cent or two? Not every company is a Microsoft. Companies that beat estimates year after year probably are involved in earnings management and are moving earnings across time periods. As growth levels off, this practice can catch up with them.
- Does a substantial proportion of the revenues come from subsidiaries or related holdings? While the sales may be legitimate, the prices set may allow the firm to move earnings from one unit to the other and give a misleading view of true earnings at the firm.
- Are accounting rules for valuing inventory or depreciation changed frequently?
- Are acquisitions followed by miraculous increases in earnings? It is difficult to succeed with an acquisition strategy in the long term. A firm that claims instant success from such as strategy requires scrutiny.
- Is working capital ballooning out as revenues and earning surge? This can sometimes let us pinpoint those firms that generate revenues by lending to their own customers.

None of these factors, by themselves, suggest that we distrust earnings for these firms, but combinations of the factors can be viewed as a warning signal that the earnings statement needs to be held up to higher scrutiny.

# QUESTIONS AND SHORT PROBLEMS

In the problems following, use an equity risk premium of 5.5 percent if none is specified.

1. Derra Foods is a specialty food retailer. In its balance sheet, the firm reports \$1 billion in book value of equity and no debt, but it has operating leases on all its stores. In the most recent year, the firm made \$85 million in operating lease payments, and its commitments to make lease payments for the next five years and beyond are:

<table><tr><td>Year</td><td>Operating Lease Expense</td></tr><tr><td>1</td><td>\$90 million</td></tr><tr><td>2</td><td>\$90 million</td></tr><tr><td>3</td><td>\$85 million</td></tr><tr><td>4</td><td>\$80 million</td></tr><tr><td>5</td><td>\$80 million</td></tr><tr><td>6-10</td><td>\$75 million annually</td></tr></table>

If the firm's current cost of borrowing is  $7\%$ , estimate the debt value of operating leases. Estimate the book value debt-to-equity ratio.

2. Assume that Derra Foods, in the preceding problem, reported earnings before interest and taxes (with operating leases expensed) of 200 million. Estimate the adjusted operating income, assuming that operating leases are capitalized.
3. FoodMarkets Inc. is a grocery chain. It reported a book debt-to-capital ratio of 10\% and a return on capital of 25\% on a book value of capital invested of \$1 billion. Assume that the firm has significant operating leases. If the operating lease expense in the current year is \$100 million and the present value of lease commitments is 750 million, reestimate FoodMarkets' debt to capital and return on capital. (You can assume a pretax cost of debt of 8\%.)
4. Zif Software is a firm with significant research and development expenses. In the most recent year, the firm had 100 million in R&D expenses. R&D expenses are amortizable over five years, and over the past five years they are:

<table><tr><td>Year</td><td>R&amp;D Expenses</td></tr><tr><td>-5</td><td>\$ 50 million</td></tr><tr><td>-4</td><td>\$ 60 million</td></tr><tr><td>-3</td><td>\$ 70 million</td></tr><tr><td>-2</td><td>\$ 80 million</td></tr><tr><td>-1</td><td>\$ 90 million</td></tr><tr><td>Current year</td><td>\$100 million</td></tr></table>

Assuming a linear amortization schedule (over five years), estimate: a. The value of the research asset.

b. The amount of R&D amortization this year.

c. The adjustment to operating income.

5. Stellar Computers has a well-earned reputation for earning a high return on capital. The firm had a return on capital of 100\% on capital invested of \$1.5 billion last year. Assume that you have estimated the value of the research asset to be \$1 billion. In addition, the R&D expense this year is \$250 million, and the amortization of the research asset is \$150 million. Reestimate Stellar Computers' return on capital.

# From Earnings to Cash Flows

The value of an asset comes from its capacity to generate cash flows. When valuing a firm, these cash flows should be after taxes, prior to debt payments, and after reinvestment needs. When valuing equity, the cash flows should be after debt payments. There are thus three basic steps to estimating these cash flows. The first is to estimate the earnings generated by a firm on its existing assets and investments, a process we examined in the preceding chapter. The second step is to estimate the portion of this income that would go toward paying taxes. The third is to develop a measure of how much a firm is reinvesting back for future growth.

This chapter examines the last two steps. It will begin by investigating the difference between effective and marginal taxes, as well as the effects of substantial net operating losses (NOLs) carried forward. To examine how much a firm is reinvesting, we will break it down into reinvestment in tangible and long-lived assets (net capital expenditures) and short-term assets (working capital). We will use a much broader definition of reinvestment to include investments in research and development (R&D) and acquisitions as part of capital expenditures.

# THE TAX EFFECT

To compute the after-tax operating income, you multiply the earnings before interest and taxes by an estimated tax rate. This simple procedure can be complicated by three issues that often arise in valuation. The first is the wide differences you observe between effective and marginal tax rates for these firms, and the choice you face between the two in valuation. The second issue arises usually with firms with large losses, leading to net operating losses that are carried forward and can save taxes in future years. The third issue arises from the capitalizing of research and development and other expenses. The fact that these expenditures can be expensed immediately leads to much higher tax benefits for the firm.

# Effective versus Marginal Tax Rate

You are faced with a choice of several different tax rates. The most widely reported tax rate in financial statements is the effective tax rate, which is computed from the reported income statement as follows:

Effective tax rate  $=$  Taxes due / Taxable income

The second choice on tax rates is the marginal tax rate, which is the tax rate the firm faces on its last dollar of income. This rate depends on the tax code and reflects what firms have to pay as taxes on their marginal income. In the United States, for instance, the federal corporate tax rate on marginal income is 35 percent; with the addition of state and local taxes, most profitable firms face a marginal corporate tax rate of 40 percent or higher.

While the marginal tax rates for most firms in the United States should be fairly similar, there are wide differences in effective tax rates across firms. Figure 10.1 provides a distribution of effective tax rates for moneymaking firms in the United States in January 2011. Note that a number of firms report effective tax rates of less than 10 percent as well as that a few firms have effective tax rates that exceed 50 percent. In addition, it is worth noting that this figure does not include about 2,000 firms that did not pay taxes during the most recent financial year (and most of these are money-losing companies) or that have a negative effective tax rate. $^{1}$

Reasons for Differences between Marginal and Effective Tax Rates Given that most of the taxable income of publicly traded firms is at the highest marginal tax bracket, why would a firm's effective tax rate be different from its marginal tax rate? There are at least four reasons:

1. Many firms, at least in the United States, follow different accounting standards for tax and for reporting purposes. For instance, firms often use straight-line depreciation for reporting purposes and accelerated depreciation for tax purposes. As a consequence, the reported income is significantly higher than the taxable income, on which taxes are based. $^2$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/b3aa0d24f6b3a7222c629521ebdf53abff0049795a2f507c1e41e2b4a332f77c.jpg)

FIGURE 10.1 Effective Tax Rates for U.S. Companies—January 2011 Source: Value Line.

2. Firms sometimes use tax credits to reduce the taxes they pay. These credits, in turn, can reduce the effective tax rate below the marginal tax rate.
3. Firms can sometimes defer taxes on income to future periods. If firms defer taxes, the taxes paid in the current period will be at a rate lower than the marginal tax rate. In a later period, however, when the firm pays the deferred taxes, the effective tax rate will be higher than the marginal tax rate.
4. Firms that generate substantial income for foreign domiciles with lower tax rates do not have to pay domestic taxes until that income is repatriated back to the domestic country.

Marginal Tax Rates for Multinationals When a firm has global operations, its income is taxed at different rates in different locales. When this occurs, what is the marginal tax rate for the firm? There are three ways in which we can deal with different tax rates.

1. The first is to use a weighted average of the marginal tax rates, with the weights based on the income derived by the firm from each of these countries. The problem with this approach is that the weights will change over time, if income is growing at different rates in different countries.
2. The second is to use the marginal tax rate of the country in which the company is incorporated, with the implicit assumption being that the income generated in other countries will eventually have to be repatriated to the country of origin, at which point the firm will have to pay the marginal tax rate.
3. The third approach is to keep the income from each country separate and apply a different marginal tax rate to each income stream.

Effects of Tax Rate on Value In valuing a firm, should you use the marginal or the effective tax rates. If the same tax rate has to be applied to earnings every period, the safer choice is the marginal tax rate, because none of the four reasons noted can be sustained in perpetuity. As new capital expenditures taper off, the difference between reported and tax income will narrow; tax credits are seldom perpetual and firms eventually do have to pay their deferred taxes. There is no reason, however, why the tax rates used to compute the after-tax cash flows cannot change over time. Thus, in valuing a firm with an effective tax rate of 24 percent in the current period and a marginal tax rate of 35 percent, you can estimate the first year's cash flows using the marginal tax rate of 24 percent and then increase the tax rate to 35 percent over time. It is good practice to assume that the tax rate used in perpetuity to compute the terminal value be the marginal tax rate.

When valuing equity, we often start with net income or earnings per share, which are after-tax earnings. Although it looks as though we can avoid dealing with the estimating of tax rates when using after-tax earnings, appearances are deceptive. The current after-tax earnings of a firm reflect the taxes paid this year. To the extent that tax planning or deferral caused this payment to be very low (low effective tax rates) or very high (high effective tax rates), we run the risk of assuming that the firm can continue to do this in the future if we do not adjust the net income for changes in the tax rates in future years.

# ILLUSTRATION 10.1: Effect of Tax Rate Assumptions on Value

Convoy Inc. is a telecommunications firm that generated  \$150 million in pretax operating income and reinvested\$ 30 million in the most recent financial year. As a result of tax deferrals, the firm has an effective tax rate of 20\%, while its marginal tax rate is 40\%. Both the operating income and the reinvestment are expected to grow 10\% a year for five years, and 5\% thereafter. The firm's cost of capital is 9\% and is expected to remain unchanged over time. We will estimate the value of Convoy using three different assumptions about tax rates—the effective tax rate forever, the marginal tax rate forever, and an approach that combines the two rates.

# APPROACH 1: Effective Tax Rate Forever

We first estimate the value of Convoy assuming that the tax rate remains at  $20\%$  forever:

<table><tr><td rowspan="2">Tax Rate</td><td rowspan="2">20\%CurrentYear</td><td rowspan="2">20\%</td><td rowspan="2">20\%</td><td rowspan="2">20\%</td><td rowspan="2">20\%</td><td rowspan="2">20\%</td><td>20\%</td></tr><tr><td>TerminalYear</td></tr><tr><td>EBIT</td><td>$150.00</td><td>$165.00</td><td>$181.50</td><td>$199.65</td><td>$219.62</td><td>$241.58</td><td>\$253.66</td></tr><tr><td>EBIT(1 - t)</td><td>$120.00</td><td>$132.00</td><td>$145.20</td><td>$159.72</td><td>$175.69</td><td>$193.26</td><td>\$202.92</td></tr><tr><td>– Reinvestment</td><td>$ 30.00</td><td>$ 33.00</td><td>$ 36.30</td><td>$ 39.93</td><td>$ 43.92</td><td>$ 48.32</td><td>\$ 50.73</td></tr><tr><td>Free cash flow to firm (FCFF)</td><td>$ 90.00</td><td>$ 99.00</td><td>$108.90</td><td>$119.79</td><td>$131.77</td><td>$144.95</td><td>\$152.19</td></tr><tr><td>Terminal value</td><td></td><td></td><td></td><td></td><td></td><td>\$3,804.83</td><td></td></tr><tr><td>Present value</td><td></td><td>$ 90.83</td><td>$ 91.66</td><td>$ 92.50</td><td>$ 93.35</td><td>\$2,567.08</td><td></td></tr><tr><td>Firm value</td><td>2,935.42</td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table>

This value is based on the implicit assumption that deferred taxes will never have to be paid by the firm.

# APPROACH 2: Marginal Tax Rate Forever

We next estimate the value of Convoy assuming that the tax rate is the marginal tax rate of  $40\%$  forever:

<table><tr><td>Tax Rate</td><td>20\%</td><td>40\%</td><td>40\%</td><td>40\%</td><td>40\%</td><td>40\%</td><td>40\%</td></tr><tr><td></td><td>Current Year</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>Year</td></tr><tr><td>EBIT</td><td>$150.00</td><td>$165.00</td><td>$181.50</td><td>$199.65</td><td>$219.62</td><td>$241.58</td><td>\$253.66</td></tr><tr><td>EBIT(1 - t)</td><td>$120.00</td><td>$99.00</td><td>$108.90</td><td>$119.79</td><td>$131.77</td><td>$144.95</td><td>\$152.19</td></tr><tr><td>– Reinvestment</td><td>$30.00</td><td>$33.00</td><td>$36.30</td><td>$39.93</td><td>$43.92</td><td>$48.32</td><td>$50.73</td></tr><tr><td>FCFF</td><td>$90.00</td><td>$66.00</td><td>$72.60</td><td>$79.86</td><td>$87.85</td><td>$96.63</td><td>$101.46</td></tr><tr><td>Terminal value</td><td></td><td></td><td></td><td></td><td></td><td>\$2,536.55</td><td></td></tr><tr><td>Present value</td><td></td><td>$60.55</td><td>$61.11</td><td>$61.67</td><td>$62.23</td><td>\$1,711.39</td><td></td></tr><tr><td>Firm value</td><td>1,956.94</td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table>

This firm value is based on the implicit assumption that the firm cannot defer taxes from this point on. In fact, an even more conservative reading would suggest that we should reduce this value by the amount of the cumulated deferred taxes from the past. Thus, if the firm has  \$200 million in deferred taxes from prior years, and expects to pay these taxes over the next four years in equal annual installments of\$ 50 million, we would first compute the present value of these tax payments:

Present value of deferred tax payments = \$50 million(PV of annuity, 9\%, 4 years) = \$161.99 million

The value of the firm would then be 1,794.95 million.

# APPROACH 3: Blended Tax Rates

In the final approach, we will assume that the effective tax will remain  $20\%$  for five years and we will use the marginal tax rate to compute the terminal value:

<table><tr><td>Tax Rate</td><td>20\%</td><td>20\%</td><td>20\%</td><td>20\%</td><td>20\%</td><td>20\%</td><td>40\%</td></tr><tr><td></td><td>Current Year</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>Terminal Year</td></tr><tr><td>EBIT</td><td>$150.00</td><td>$165.00</td><td>$181.50</td><td>$199.65</td><td>$219.62</td><td>$241.58</td><td>\$253.66</td></tr><tr><td>EBIT(1 - t)</td><td>$120.00</td><td>$132.00</td><td>$145.20</td><td>$159.72</td><td>$175.69</td><td>$193.26</td><td>\$152.19</td></tr><tr><td>– Reinvestment</td><td>$30.00</td><td>$33.00</td><td>$36.30</td><td>$39.93</td><td>$43.92</td><td>$48.32</td><td>$50.73</td></tr><tr><td>FCFF</td><td>$90.00</td><td>$99.00</td><td>$108.90</td><td>$119.79</td><td>$131.77</td><td>$144.95</td><td>$101.46</td></tr><tr><td>Terminal value</td><td></td><td></td><td></td><td></td><td></td><td>\$2,536.55</td><td></td></tr><tr><td>Present value</td><td></td><td>$90.83</td><td>$91.66</td><td>$92.50</td><td>$93.35</td><td>\$1,742.79</td><td></td></tr><tr><td>Firm value</td><td>2,111.12</td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table>

Note, however, that the use of the effective tax rate for the first five years will increase the deferred tax liability to the firm. Assuming that the firm ended the current year with a cumulated deferred tax liability of 200 million, we can compute the deferred tax liability by the end of the fifth year:

$$
\begin{array}{l} \text {E x p e c t e d} = \ 2 0 0 + (\$ 1 6 5 + \$ 1 8 1. 5 + \$ 1 9 9. 6 5 + \$ 2 1 9. 6 2 + \$ 2 4 1. 5 8) \\ \times (. 4 0 -. 2 0) = \$ 4 0 1. 4 7 \text {m i l l o n} \\ \end{array}
$$

We will assume that the firm will pay this deferred tax liability after year 5, but spread the payments over 10 years, leading to a present value of 167.45 million.

$$
\begin{array}{l} Present value of deferred tax payments = (\$ 401.47 / 10) (PV of annuity, 9 \%, 10 years) / 1.09 ^ {5} \\ = \$ 167.45 \text {m i l l o n} \\ \end{array}
$$

Note that the payments do not start until the sixth year, and hence get discounted back an additional five years. The value of the firm can then be estimated:

$$
\text {V a l u e o f f i r m} = \\mathbb {S} 2, 1 1 1. 1 2 - \mathbb {S} 1 6 7. 4 5 = \mathbb {S} 1, 9 4 3. 6 7 \text {m i l l i o n}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/262362ee6db9adc3e95951a32cfb122f4400c0a6eae49b2091a7669d888d787e.jpg)

# taxrate.xls: This dataset on the Web summarizes average effective tax rates by industry group in the United States for the most recent quarter.

# Effect of Net Operating Losses

For firms with large net operating losses carried forward or continuing operating losses, there is the potential for significant tax savings in the first few years that they generate positive earnings. There are two ways of capturing this effect.

One is to change tax rates over time. In the early years, these firms will have a zero tax rate, as losses carried forward offset income. As the net operating losses decrease, the tax rates will climb toward the marginal tax rate. As the tax rates used to estimate the after-tax operating income change, the rates used to compute the after-tax cost of debt in the cost of capital computation also need to change. Thus, for a firm with net operating losses carried forward, the tax rate used for both the computation of after-tax operating income and cost of capital will be zero during the years when the losses shelter income.

The other approach is often used when valuing firms that already have positive earnings but have a large net operating loss carried forward. Analysts will value the firm ignoring the tax savings generated by net operating losses, and then add to this amount the expected tax savings from net operating losses. Often, the expected tax savings are estimated by multiplying the tax rate by the net operating loss. The limitation of doing this is that it assumes that the tax savings are both guaranteed and instantaneous. To the extent that firms have to generate earnings to create these tax savings and there is uncertainty about earnings, it will overestimate the value of the tax savings.

There are two final points that need to be made about operating losses. To the extent that a potential acquirer can claim the tax savings from net operating losses sooner than the firm generating these losses, there can be potential for tax synergy that we examine in chapter 26, when we look at acquisitions. The other is that there are countries where there are significant limitations on how far forward operating losses can be taken. If this is the case, the value of these net operating losses may be reduced.

# ILLUSTRATION 10.2: The Effect of Net Operating Loss on Value: Tesla Motors

This illustration considers the effect of both net operating losses (NOLs) carried forward and expected losses in future periods on the tax rate for Tesla Motors, the electric car company, in 2011. Tesla reported an operating loss of  \$65.5 million in 2010, on revenues of\$ 116.74 million, and had an accumulated net operating loss of 140.64 million by the end of that year.

While things do look bleak for the firm, we will assume that revenues will grow significantly over the next decade and that the firm's operating margin will converge on the industry average of  $10\%$  for mature and healthy automobile firms. The following table summarizes our projections of revenues and operating income for Tesla for the next 10 years:

<table><tr><td>Year</td><td>Revenues</td><td>Operating Income or Loss</td><td>NOL at End of Year</td><td>Taxable Income</td><td>Taxes</td><td>Tax Rate</td></tr><tr><td>Current</td><td>$ 117</td><td>- $ 81</td><td>$141</td><td>$ 0</td><td>$ 0</td><td>0.00\%</td></tr><tr><td>1</td><td>$ 292</td><td>- $125</td><td>$266</td><td>$ 0</td><td>$ 0</td><td>0.00\%</td></tr><tr><td>2</td><td>$ 584</td><td>- $147</td><td>$413</td><td>$ 0</td><td>$ 0</td><td>0.00\%</td></tr><tr><td>3</td><td>$1,051</td><td>- $142</td><td>$555</td><td>$ 0</td><td>$ 0</td><td>0.00\%</td></tr><tr><td>4</td><td>$1,681</td><td>- $ 95</td><td>$650</td><td>$ 0</td><td>$ 0</td><td>0.00\%</td></tr><tr><td>5</td><td>$2,354</td><td>- $ 10</td><td>$661</td><td>$ 0</td><td>$ 0</td><td>0.00\%</td></tr><tr><td>6</td><td>$3,060</td><td>$ 93</td><td>$568</td><td>$ 0</td><td>$ 0</td><td>0.00\%</td></tr><tr><td>7</td><td>$3,672</td><td>$197</td><td>$371</td><td>$ 0</td><td>$ 0</td><td>0.00\%</td></tr><tr><td>8</td><td>$4,222</td><td>$292</td><td>$ 79</td><td>$ 0</td><td>$ 0</td><td>0.00\%</td></tr><tr><td>9</td><td>$4,645</td><td>$369</td><td>$ -</td><td>$289</td><td>$116</td><td>31.40\%</td></tr><tr><td>10</td><td>$4,877</td><td>$421</td><td>$ -</td><td>$421</td><td>168</td><td>40.00\%</td></tr></table>

Note that Tesla continues to lose money over the next five years, and adds to its net operating losses. In years 6, 7, and 8, its operating income is positive but it still pays no taxes because of its accumulated net operating losses from prior years. In year 9, it is able to reduce its taxable income by the remaining net operating loss (\$79 million), but it begins paying taxes for the first time. We will assume a  $40\%$  tax rate and use this as our marginal tax rate after year 9. The benefits of the net operating losses are thus built into the cash flows and the value of the firm.

# The Tax Benefits of R&D Expensing

The preceding chapter argued that R&D expenses should be capitalized. If we decide to do so, however, there is a tax benefit that we might be missing. Firms are allowed to deduct their entire R&D expense for tax purposes. In contrast, they are allowed to deduct only the depreciation on their capital expenses. To capture the tax benefit, therefore, you would add the tax savings on the difference between the entire R&D expense and the amortized amount of the research asset to the after-tax operating income of the firm:

Additional tax benefit $_{\text{R&D expensing}} =$  (Current year's R&D expense)

- Amortization of research asset)  $\times$  Tax rate

A similar adjustment would need to be made for any other operating expense that you choose to capitalize. In Chapter 9, we noted that the adjustment to pretax operating income from capitalizing R&D is:

Adjusted operating earnings  $=$  Operating earnings + Current year's R&D expense

- Amortization of research asset

To estimate the after-tax operating income, we would multiply this value by (1 - Tax rate) and add on the additional tax benefit from before:

Adjusted after-tax operating earnings  $=$  (Operating earnings

+ Current year's R&D expense
- Amortization of research asset)
$\times (1 - \mathrm{Tax~rate})$
+ (Current year's R&D expense
- Amortization of research asset)  $\times$  Tax rate
= Operating earnings(1 - Tax rate)
+ Current year's R&D expense
- Amortization of research asset

In other words, the tax benefit from R&D expensing allows us to add the difference between R&D expense and amortization directly to the after-tax operating income (and to net income).

# ILLUSTRATION 10.3: Tax Benefit from Expensing: Amgen in 2011

In Chapter 9, we capitalize, R&D expenses for Amgen and estimated the value of the research asset to Amgen and adjusted operating income. Reviewing Illustration 9.2, we see the following adjustments:

Current year's R&D expense = 3,030 million

Amortization of research asset this year = 1,694 million

To estimate the tax benefit from expensing for Amgen, first assume that the tax rate for Amgen is  $35\%$  and note that Amgen can deduct the entire 3,030 million for tax purposes:

Tax deduction from R&D expense = R&D × Tax rate = 3,030 × .35 = 1,060.5 million

If only the amortization had been eligible for a tax deduction in 2010, the tax benefit would have been:

Tax deduction from R&D amortization = \$1,694 million × .35 = \$592.9 million

By expensing instead of capitalizing, Amgen was able to derive a much larger tax benefit. The differential tax benefit can be written as:

Thus, Amgen derives a tax benefit of 468 million because it can expense R&D expenses rather than capitalize them. Completing the analysis, we computed the adjusted after-tax operating income for Amgen. Note that in Illustration 9.2, we estimated the adjusted pretax operating income to be the following:

Adjusted pretax operating earnings = Operating earnings + Current year's R&D expense

- Amortization of research asset
$= 5,594 + 3,030 - 1,694 = \$  6,930$

You could convert this pretax operating income into an after-tax value and add back the tax benefit from R&D:

After-tax operating income = 6,930 (1 - .35) + 468 = \4,972 million

You can also arrive at the same answer by computing the unadjusted after-tax operating income and adjusting it for R&D:

Adjusted after-tax operating earnings  $=$  After-tax operating earnings + Current year's R&D expense

- Amortization of research asset

$= 5,594(1 - .35) + 3,030 - 1694 = \$  4,972$ million

Tax Books and Reporting Books It is no secret that many firms in the United States maintain two sets of books—one for tax purposes and one for reporting purposes—and that this practice not only is legal but is also widely accepted. While the details vary from company to company, the income reported to stockholders generally is much higher than the income reported for tax purposes. When valuing firms, we generally have access to only the former and not the latter, and this can affect our estimates in a number of ways:

- Dividing the taxes payable, which is computed on the taxable income, by the reported income, which is generally much higher, will yield a tax rate that is lower than the true tax rate. If we use this tax rate as the forecasted tax rate, we could over value the company. This is another reason for shifting to marginal tax rates in future periods.
If we base the projections on the reported income, we will overstate expected future income. The effect on cash flows is likely to be muted. To see why, consider one very common difference between reporting and tax income: Straight-line depreciation is used to compute the former and accelerated depreciation is used for the latter. Since we add depreciation back to after-tax income to get to cash flows, the drop in depreciation will offset the increase in earnings. The problem, however, is that we understate the tax benefits from depreciation.
Some companies capitalize expenses for reporting purposes (and for depreciating them in subsequent periods) but expense them for tax purposes. Here again, using the income and the capital expenditures from reporting books will result in an understatement of the tax benefits from the expensing.

Thus the problems created by firms having different standards for tax and accounting purposes are much greater if we focus on reported earnings (as is the case when we use earnings multiples like PE or EBITDA multiples) than when we use cash flows. If we did have a choice, however, we would base our valuations on the tax books rather than the reporting books.

# DEALING WITH TAX SUBSIDIES

Firms sometimes obtain tax subsidies from the government for investing in specified areas or types of businesses. These tax subsidies can take the form of either reduced tax rates or tax credits. Either way, these subsidies should increase the value of the firm. The question, of course, is how best to build in the effects into the cash flows. Perhaps the simplest approach is to first value the firm, ignoring the tax subsidies, and to then add on the value increment from the subsidies.

For instance, assume that you are valuing a pharmaceutical firm with operations in Puerto Rico, which entitle the firm to a tax break in the form of a lower tax rate on the income generated from these operations. You could value the firm using its normal marginal tax rate, and then add to that value the present value of the tax savings that will be generated by the Puerto Rican operations. There are three advantages with this approach:

1. It allows you to isolate the tax subsidy and consider it only for the period over which you are entitled to it. When the effects of these tax breaks are consolidated with other cash flows, there is a danger that they can be viewed as perpetuities.
2. The discount rate used to compute the tax breaks can be different from the discount rate used on the other cash flows of the firm. Thus, if the tax break is a guaranteed tax credit by the government, you could use a much lower discount rate to compute the present value of the cash flows.
3. Building on the theme that there are few free lunches, it can be argued that governments provide tax breaks for investments only because firms are exposed to higher costs or more risk in these investments. By isolating the value of the tax breaks, firms can then consider whether the trade-off operates in their favor. For example, assume that you are a sugar manufacturer that is offered a tax credit by the government for being in the business. In return, the government imposes sugar price controls. The firm can compare the value created by the tax credit with the value lost because of the price controls and decide whether it should fight to preserve its tax credit.

# REINVESTMENT NEEDS

The cash flow to the firm is computed after reinvestments. Two components go into estimating reinvestment. The first is net capital expenditures, which is the difference between capital expenditures and depreciation. The other is investments in non-cash working capital.

# Net Capital Expenditures

In estimating net capital expenditures, we generally deduct depreciation from capital expenditures. The rationale is that the positive cash flows from depreciation pay for at least a portion of capital expenditures, and that it is only the excess that represents a drain on the firm's cash flows. Whereas information on capital spending and depreciation are usually easily accessible in most financial statements, forecasting these expenditures can be difficult for three reasons. The first is that firms often incur capital spending in chunks—a large investment in one year can be followed by small investments in subsequent years. The second is that the accounting definition of capital spending does not incorporate those capital expenses that are treated as operating expenses such as R&D expenses. The third is that acquisitions are not classified by accountants as capital expenditures. For firms that grow primarily through acquisition, this will result in an understatement of the net capital expenditures.

Lumpy Capital Expenditures and the Need for Smoothing Firms seldom have smooth capital expenditure streams. Firms can go through periods when capital expenditures are very high (as is the case when a new product is introduced or a new plant built), followed by periods of relatively light capital expenditures. Consequently, when estimating the capital expenditures to use for forecasting future cash flows, you should normalize capital expenditures. There are at least two ways in which you can accomplish this objective.

The simplest normalization technique is to average capital expenditures over a number of years. For instance, you could estimate the average capital expenditures over the past four or five years for a manufacturing firm and use that number rather than the capital expenditures from the most recent year. By doing so, you could capture the fact that the firm may invest in a new plant every four years. If instead you had used the capital expenditures from the most recent year, you would have either overestimated capital expenditures (if the firm built a new plant that year) or underestimated them (if the plant had been built in an earlier year).

There are two measurement issues that you will need to confront. One relates to the number of years of history that you should use. The answer will vary across firms and will depend on how infrequently the firm makes large investments. The other is on the question of whether averaging capital expenditures over time requires us to average depreciation as well. Since depreciation is already spread out over time, the need for normalization should be much smaller. In addition, the tax benefits received by the firm reflect the actual depreciation in the most recent year, rather than an average depreciation over time. Unless depreciation is as volatile as capital expenditures, it makes more sense to leave depreciation untouched.

For firms with a limited history or firms that have changed their business mix over time, averaging over time either is not an option or will yield numbers that are not indicative of its true capital expenditure needs. For these firms, industry averages for capital expenditures are an alternative. Since the sizes of firms can vary across an industry, the averages are usually computed with capital expenditures as a percent of a base input—revenues and total assets are common choices. We prefer to look at capital expenditures as a percent of depreciation, and to average this statistic for the industry. In fact, if there are enough firms in the sample, you could look at the average for a subset of firms that are at the same stage of the life cycle as the firm being analyzed.

ILLUSTRATION 10.4: Estimating Normalized Net Capital Expenditures: Reliance Industries

<table><tr><td colspan="4">Reliance Industries is one of India&#x27;s largest firms and is involved in a multitude of businesses ranging from chemicals to textiles. The firm makes substantial investments in these businesses, and the following table summarizes the capital expenditures and depreciation for the period 1997 to 2000:</td></tr><tr><td>Year</td><td>Capital Expenditures</td><td>Depreciation</td><td>Net Capital Expenditures</td></tr><tr><td>1997</td><td>INR 24,077</td><td>INR 4,101</td><td>INR 19,976</td></tr><tr><td>1998</td><td>INR 23,247</td><td>INR 6,673</td><td>INR 16,574</td></tr><tr><td>1999</td><td>INR 18,223</td><td>INR 8,550</td><td>INR 9,673</td></tr><tr><td>2000</td><td>INR 21,118</td><td>INR12,784</td><td>INR 8,334</td></tr><tr><td>Average</td><td>INR 21,666</td><td>INR 8,027</td><td>INR 13,639</td></tr></table>

The firm's capital expenditures have been volatile, but its depreciation has been trending upward. There are two ways in which we can normalize the net capital expenditures. One is to take the average net capital expenditure over the four-year period, which would result in net capital expenditures of INR 13,639 million. The problem with doing this, however, is that the depreciation implicitly being used in the calculation is INR 8,027 million, which is well below the actual depreciation of INR 12,784. A better way to normalize capital expenditures is to use the average capital expenditure over the four-year period (INR 21,166) and depreciation from the year 2000 (INR 12,784) to arrive at a normalized net capital expenditure value:

Normalized net capital expenditures  $= 21,666 - 12,784 = \text{INR} 8,382$  million

Note that the normalization did not make much difference in this case because the actual net capital expenditures in 2000 amounted to INR 8,334 million.

Capital Expenses Treated as Operating Expenses In Chapter 9, we discussed the capitalization of expenses such as R&D and personnel training, where the benefits last over multiple periods, and examined the effects on earnings. There should also clearly be an impact on our estimates of capital expenditures, depreciation, and, consequently, net capital expenditures.

If we decide to recategorize some operating expenses as capital expenses, we should treat the current period's value for this item as a capital expenditure. For instance, if we decide to capitalize R&D expenses, the amount spent on R&D in the current period has to be added to capital expenditures.

Adjusted capital expenditures = Capital expenditures

+R&D expenses in current period

Since capitalizing an operating expense creates an asset, the amortization of this asset should be added to depreciation for the current period. Thus, capitalizing R&D creates a research asset, which generates an amortization in the current period.

Adjusted depreciation and amortization  $=$  Depreciation and amortization

+Amortization of the research asset

If we are adding the current period's expense to the capital expenditures and the amortization of the asset to the depreciation, the net capital expenditures of the firm will increase by the difference between the two:

Adjusted net capital expenditure  $=$  Net capital expenditures

+R&D expenses in current period
- Amortization of the research asset

Note that the adjustment that we make to net capital expenditure mirrors the adjustment we make to operating income. Since net capital expenditures are subtracted from after-tax operating income, we are, in a sense, nullifying the impact on cash flows of capitalizing R&D.

# ILLUSTRATION 10.5: Effect of Capitalizing R&D: Amgen in March 2009

In Illustration 9.2 we capitalized Amgen's R&D expense and created a research asset. In Illustration 10.3 we considered the additional tax benefit generated by the fact that a company can expense the entire amount. In this illustration, we complete the analysis by looking at the impact of capitalization on net capital expenditures.

Reviewing the numbers again, Amgen had an R&D expense of  \$3,030 million in 2010. Capitalizing the R&D expenses, using an amortizable life of 10 years, yields a value for the research asset of\$ 13,283 million and an amortization for the current year (2008) of \$1,694 million. In addition, note that Amgen reported capital expenditures of \$1,646 million in 2008 and depreciation and amortization amounting to 1,073 million. The adjustments to capital expenditures, depreciation, and amortization and net capital expenditures are:

Adjusted capital expenditures = Capital expenditures + R&D expenses in current period

= \$1,646 million + \$3,030 million = 4,696 million

Adjusted depreciation and amortization  $=$  Depreciation and amortization

+Amortization of the research asset

= \$1,073 million + \$1,694 million = 2,767 million

Adjusted net capital expenditure  $=$  Net capital expenditures + R&D expenses in current period

- Amortization of the research asset

$$
\begin{array}{l} = \$ 4,696 - \$ 2,767 \\ = \$ 1,929 \text {m i l l o n} \\ \end{array}
$$

Viewed in conjunction with the adjustment to after-tax operating income in Illustration 10.2, the change in net capital expenditure (an increase of  \$1336 million from\$ 573 million to 1,929 million) is exactly equal to the change in after-tax operating income. Capitalizing R&D thus has no effect on the free cash flow to the firm. Though the bottom-line cash flow does not change, the capitalization of R&D significantly changes the estimates of earnings and reinvestment. Thus it helps us better understand how profitable a firm is and how much it is reinvesting for future growth.

Acquisitions In estimating capital expenditures, we should not distinguish between internal investments (which are usually categorized as capital expenditures in cash flow statements) and external investments (which are acquisitions). The capital expenditures of a firm, therefore, need to include acquisitions. Since firms seldom make acquisitions every year, and each acquisition has a different price tag, the point about normalizing capital expenditures applies even more strongly to this item. The capital expenditure projections for a firm that makes an acquisition of  \$100 million approximately every five years should therefore include about\$ 20 million, adjusted for inflation, every year.

Should you distinguish between acquisitions funded with cash versus those funded with stock? We do not believe so. While there may be no cash spent by a firm in the latter case, the firm is increasing the number of shares outstanding. In fact, one way to think about stock-funded acquisitions is that the firm has skipped a step in the funding process. It could have issued the stock to the public, and used the cash to make the acquisitions. Another way of thinking about this issue is that a firm that uses stock to fund acquisitions year after year and is expected to continue to do so in the future will increase the number of shares outstanding. This, in turn, will dilute the value per share to existing stockholders.

# ILLUSTRATION 10.6: Estimating Net Capital Expenditures: Cisco Systems in 1999

Cisco Systems increased its market value a hundredfold during the 1990s, largely based on its capacity to grow revenues and earnings at an annual rate of  $60\%$  to  $70\%$ . Much of this growth was created by acquisitions of small companies with promising technologies and Cisco's ability to convert to them into commercial successes. To estimate net capital expenditures for Cisco in 1999, we begin with the estimates of capital expenditure ( \$584 million) and depreciation (\$ 486 million) in the 10-K. Based on these numbers, we would have concluded that Cisco's net capital expenditures in 1999 were 98 million.

The first adjustment we make to this number is to incorporate the effect of research and development expenses. We use a five-year amortizable life and estimate the value of the research asset and the amortization in 1999 in the following table:

<table><tr><td rowspan="2">Year</td><td rowspan="2">R&amp;D Expense</td><td rowspan="2" colspan="2">Unamortized at Year-End</td><td rowspan="2">Amortization This Year</td></tr><tr></tr><tr><td>Current</td><td>$1,594.00</td><td>100.00\%</td><td>$1,594.00</td><td></td></tr><tr><td>-1</td><td>$1,026.00</td><td>80.00\%</td><td>$820.80</td><td>$205.20</td></tr><tr><td>-2</td><td>$698.00</td><td>60.00\%</td><td>$418.80</td><td>$139.60</td></tr><tr><td>-3</td><td>$399.00</td><td>40.00\%</td><td>$159.60</td><td>$79.80</td></tr><tr><td>-4</td><td>$211.00</td><td>20.00\%</td><td>$42.20</td><td>$42.20</td></tr><tr><td>-5</td><td>$89.00</td><td>0.00\%</td><td>$—</td><td>\$17.80</td></tr><tr><td colspan="3">Value of the research asset</td><td>\$3,035.40</td><td></td></tr><tr><td colspan="4">Amortization this year</td><td>484.60</td></tr></table>

The net capital expenditures for Cisco were adjusted by adding back the R&D expenses in the most recent financial year ( \$1,594 million) and subtracting the amortization of the research asset (\$ 485 million).

The second adjustment is to bring in the effect of acquisitions that Cisco made during the last financial year. The following table summarizes the acquisitions made during the year and the prices paid on these acquisitions:

<table><tr><td>Acquired</td><td>Method of Acquisition</td><td>Price Paid</td></tr><tr><td>GeoTel</td><td>Pooling</td><td>\$1,344</td></tr><tr><td>Fibex</td><td>Pooling</td><td>318</td></tr><tr><td>Sentient</td><td>Pooling</td><td>103</td></tr><tr><td>American Internet Corporation</td><td>Purchase</td><td>58</td></tr><tr><td>Summa Four</td><td>Purchase</td><td>129</td></tr><tr><td>Clarity Wireless</td><td>Purchase</td><td>153</td></tr><tr><td>Selsius Systems</td><td>Purchase</td><td>134</td></tr><tr><td>PipeLinks</td><td>Purchase</td><td>118</td></tr><tr><td>Amteva Technologies</td><td>Purchase</td><td>159</td></tr><tr><td>Total</td><td></td><td>\$2,516</td></tr><tr><td>Dollars in millions.</td><td></td><td></td></tr></table> its acquisitions in 1999 are not unusual and reflect Cisco's reinvestment policy. The amortization associated with these acquisitions is already included as part of depreciation by the firm. The following table summarizes the final net capital expenditures for Cisco in 1999.

Note that both purchase and pooling transactions are included, and that the sum total of these acquisitions is added to net capital expenditures in 1999. We are assuming, given Cisco's track record, that

<table><tr><td>Capital expenditures</td><td>\$ 584.00</td></tr><tr><td>– Depreciation</td><td>\$ 486.00</td></tr><tr><td>Net cap ex (from financials)</td><td>\$ 98.00</td></tr><tr><td>+ R&amp;D expenditures</td><td>\$1,594.00</td></tr><tr><td>– Amortization of R&amp;D</td><td>\$ 484.60</td></tr><tr><td>+ Acquisitions</td><td>\$2,516.00</td></tr><tr><td>Adjusted net cap ex</td><td>3,723.40</td></tr></table>

# IGNORING ACQUISITIONS IN VALUATION: A POSSIBILITY?

Incorporating acquisitions into net capital expenditures and value can be difficult, and especially so for firms that do large acquisitions infrequently. Predicting whether there will be acquisitions, how much they will cost, and what they will deliver in terms of higher growth can be close to impossible. There is one way in which you can ignore acquisitions, but it does come with a cost. If you assume that firms pay a fair price on acquisitions (i.e., a price that reflects the fair value of the target company) and you assume that the target company stockholders claim any or all synergy or control value, acquisitions have no effect on value no matter how large they might be and how much they might seem to deliver in terms of higher growth. The reason is simple: A fair-value acquisition is an investment that earns its required return—a zero net present value investment.

If you choose not to consider acquisitions when valuing a firm, you have to remain internally consistent. The portion of growth that is due to acquisitions should not be considered in the valuation. A common mistake that is made in valuing companies that have posted impressive historic growth numbers from an acquisition-based strategy is to extrapolate from this growth and ignore acquisitions at the same time. This will result in an overvaluation of your firm, since you have counted the benefits of the acquisitions but have not paid for them.

What is the cost of ignoring acquisitions? Not all acquisitions are fairly priced, and not all synergy and control value ends up with the target company stockholders. Ignoring the costs and benefits of acquisitions will result in an misvaluation of a firm that has established a reputation for growing through acquisitions. We undervalue firms that create value by making good acquisitions and overvalue firms that destroy value by overpaying on acquisitions.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/9b6a69752012ebdcf1ae0c6133d929db66b68c4fe004f8003404675be2c2ff16.jpg) capex.xls: This dataset on the Web summarizes capital expenditures, as a percent of revenues and firm value, by industry group in the United States for the most recent quarter.

# Investment in Working Capital

The second component of reinvestment is the cash that needs to be set aside for working capital needs. Increases in working capital tie up more cash and hence generate negative cash flows. Conversely, decreases in working capital release cash and positive cash flows.

Defining Working Capital Working capital is usually defined to be the difference between current assets and current liabilities. However, we will modify that definition when we measure working capital for valuation purposes.

We will back out cash and investments in marketable securities from current assets. This is because cash, especially in large amounts, is invested by firms in Treasury bills, short-term government securities, or commercial paper. Although the return on these investments may be lower than what the firm may make on its real investments, they represent a fair return for riskless investments. Unlike inventory, accounts receivable, and other current assets, cash then earns a fair return and should not be included in measures of working capital. Are there exceptions to this rule? When valuing a firm that has to maintain a large cash balance for day-to-day operations or a firm that operates in a market in a poorly developed banking system, you could consider the cash needed for operations as a part of working capital but only if that cash is wasting cash, i.e., cash that is not earning a fair market return. As we shift from a cash-based economy, this operating cash requirement has become smaller and smaller.

We will also back out all interest-bearing debt—short-term debt and the portion of long-term debt that is due in the current period—from the current liabilities. This debt will be considered when computing cost of capital and it would be inappropriate to count it twice.

The noncash working capital varies widely across firms in different sectors and often across firms in the same sector. Figure 10.2 shows the distribution of noncash working capital as a percent of revenues for U.S. firms in January 2011.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/1b9cd17fcabfc5ac68bc1cf5f21805c9eae0754eaed51f075219490359694060.jpg)

FIGURE 10.2 Noncash Working Capital as Percent of Revenues—U.S. firms in 2011 Source: Value Line.

# ILLUSTRATION 10.7: Working Capital versus Noncash Working Capital: Marks and Spencer

Marks and Spencer operates retail stores in the United Kingdom and has substantial holdings in retail firms in other parts of the world. The following table breaks down the components of working capital for the firm for 1999 and 2000 and reports both the total working capital and noncash working capital in each year:

<table><tr><td></td><td>1999</td><td>2000</td></tr><tr><td>Cash and near cash</td><td>$ 282</td><td>$ 301</td></tr><tr><td>Marketable securities</td><td>$ 204</td><td>$ 386</td></tr><tr><td>Trade debtors (accounts receivable)</td><td>$1,980</td><td>$2,186</td></tr><tr><td>Stocks (inventory)</td><td>$ 515</td><td>$ 475</td></tr><tr><td>Other current assets</td><td>$ 271</td><td>$ 281</td></tr><tr><td>Total current assets</td><td>$3,252</td><td>$3,629</td></tr><tr><td>Noncash current assets</td><td>$2,766</td><td>$2,942</td></tr><tr><td>Trade creditors (accounts payable)</td><td>$ 215</td><td>$ 219</td></tr><tr><td>Short-term debt</td><td>$ 913</td><td>$1,169</td></tr><tr><td>Other short-term liabilities</td><td>$ 903</td><td>$ 774</td></tr><tr><td>Total current liabilities</td><td>$2,031</td><td>$2,162</td></tr><tr><td>Nondebt current liabilities</td><td>$1,118</td><td>$ 993</td></tr><tr><td>Working capital</td><td>$1,221</td><td>$1,467</td></tr><tr><td>Noncash working capital</td><td>$1,648</td><td>$1,949</td></tr></table>

The noncash working capital is substantially higher than the working capital in both years. We would suggest that the former is a much better measure of cash tied up in working capital.

Estimating Expected Changes in Noncash Working Capital While we can estimate the noncash working capital change fairly simply for any year using financial statements, this estimate has to be used with caution. Changes in noncash working capital are unstable, with big increases in some years followed by big decreases in subsequent years. To ensure that the projections are not the result of an unusual base year, you should tie the changes in working capital to expected changes in revenues or costs of goods sold at the firm over time. The noncash working capital as a percent of revenues can be used, in conjunction with expected revenue changes each period, to estimate projected changes in noncash working capital over time. You can obtain the noncash working capital as a percent of revenues by looking at the firm's history or at industry standards.

Should you break working capital down into more detail? In other words, is there a payoff to estimating individual items, such as accounts receivable, inventory, and accounts payable separately? The answer will depend on both the firm being analyzed and how far into the future working capital is being projected. For firms where inventory and accounts receivable behave in very different ways as revenues grow, it clearly makes sense to break working capital down into detail. The cost, of course, is that it increases the number of inputs needed to value a firm. In addition, the payoff to breaking working capital down into individual items will become smaller as we go further into the future. For most firms, estimating a composite number for noncash working capital is easier to do and often more accurate than breaking it down into more detail.

# ILLUSTRATION 10.8: Estimating Noncash Working Capital Needs: The Gap

As a specialty retailer, the Gap has substantial inventory and working capital needs. At the end of the 2000 financial year (which concluded in January 2001), the Gap reported  \$1,904 million in inventory and\$ 335 million in other noncash current assets. At the same time, the accounts payable amounted to \$1,067 million and other non-interest-bearing current liabilities were \$702 million. The noncash working capital for the Gap in January 2001 can be estimated as follows:

Noncash working capital = \ 1,904 + \ 335 - \ 1,067 - \$ 702 = \$ 470 million

The following table reports on the noncash working capital at the end of the previous year and the total revenues in each year:

<table><tr><td></td><td>1999</td><td>2000</td><td>Change</td></tr><tr><td>Inventory</td><td>$1,462</td><td>$1,904</td><td>\$442</td></tr><tr><td>Other noncash current assets</td><td>$285</td><td>$335</td><td>\$50</td></tr><tr><td>Accounts payable</td><td>$806</td><td>$1,067</td><td>\$261</td></tr><tr><td>Other noninterest-bearing current liabilities</td><td>$778</td><td>$702</td><td>-\$76</td></tr><tr><td>Noncash working capital</td><td>$163</td><td>$470</td><td>$307</td></tr><tr><td>Revenues</td><td>$11,635</td><td>$13,673</td><td>$2,038</td></tr><tr><td>Working capital as \% of revenues</td><td>1.40\%</td><td>3.44\%</td><td>15.06\%</td></tr></table>

The noncash working capital increased by 307 million from the preceding year to this one. When forecasting the noncash working capital needs for the Gap, there are five choices:

1. One is to use the change in noncash working capital from the year (307 million) and to grow that change at the same rate as earnings are expected to grow in the future. This is probably the least desirable option because changes in noncash working capital from year to year are extremely volatile, and last year's change may in fact be an outlier.
2. The second is to base our changes on noncash working capital as a percent of revenues in the most recent year and expected revenue growth in future years. In the case of the Gap, that would indicate that noncash working capital changes in future years will be  $3.44\%$  of revenue changes in that year. This is a much better option than the first one, but the noncash working capital as a percent of revenues can also change from one year to the next.
3. The third is to base our changes on the marginal noncash working capital as a percent of revenues in the most recent year, computed by dividing the change in noncash working capital in the most recent year and the change in revenues in the most recent year, by expected revenue growth in future years. In the case of the Gap, this would lead to noncash working capital changes being  $15.06\%$  of revenues in future periods. This approach is best used for firms whose business is changing and where growth is occurring in areas different from the past. For instance, a brick-and-mortar retailer that is growing mostly online may have a very different marginal working capital requirement than the total.
4. The fourth is to base our changes on the noncash working capital as a percent of revenues over a historical period. For instance, noncash working capital as a percent of revenues between 1997 and 2000 averaged out to  $4.5\%$  of revenues. The advantage of this approach is that it smooths out year-to-year shifts, but it may not be appropriate if there is a trend (upward or downward) in working capital.
5. The final approach is to ignore the working capital history of the firm and to base the projections on the industry average for noncash working capital as a percent of revenues. This approach is most appropriate when a firm's history reveals a working capital that is volatile and unpredictable. It is also the best way of estimating noncash working capital for very small firms that may see economies of scale as they grow. While these conditions do not apply for the Gap, we can still estimate noncash working capital requirements using the average noncash working capital as a percent of revenues for specialty retailers which is  $7.54\%$ .

To illustrate how much of a change each of these assumptions can have on working capital requirements, the following table forecasts expected changes in noncash working capital (WC) using each of them. In making these estimates, we have assumed a  $10\%$  growth rate in revenues and earnings for the Gap for the next five years.

<table><tr><td></td><td>Current</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td></tr><tr><td>Revenues</td><td>$13,673.00</td><td>$15,040.30</td><td>$16,544.33</td><td>$18,198.76</td><td>$20,018.64</td><td>$22,020.50</td></tr><tr><td>Change in revenues</td><td></td><td>$1,367.30</td><td>$1,504.03</td><td>$1,654.43</td><td>$1,819.88</td><td>\$2,001.86</td></tr><tr><td>1. Change in noncash WC</td><td>$307.00</td><td>$337.70</td><td>$371.47</td><td>$408.62</td><td>$449.48</td><td>$494.43</td></tr><tr><td>2. Current: WC/revenues</td><td>3.44\%</td><td>$47.00</td><td>$51.70</td><td>$56.87</td><td>$62.56</td><td>\$68.81</td></tr><tr><td>3. Marginal: WC/revenues</td><td>15.06\%</td><td>$205.97</td><td>$226.56</td><td>$249.22</td><td>$274.14</td><td>\$301.56</td></tr><tr><td>4. Historical average</td><td>4.50\%</td><td>$61.53</td><td>$67.68</td><td>$74.45</td><td>$81.89</td><td>\$90.08</td></tr><tr><td>5. Industry average</td><td>7.54\%</td><td>$103.09</td><td>$113.40</td><td>$124.74</td><td>$137.22</td><td>150.94</td></tr></table>

The noncash working capital investment varies widely across the five approaches that have been described here.

Negative Working Capital (or Changes) Can the change in noncash working capital be negative? The answer is clearly yes. Consider, though, the implications of such a change. When noncash working capital decreases, it releases tied-up cash and increases the cash flow of the firm. If a firm has bloated inventory or gives out credit too easily, managing one or both components more efficiently can reduce working capital and be a source of positive cash flows into the immediate future—three, four, or even five years. The question, however, becomes whether it can be a source of cash flows for longer than that. At some point in time, there will be no more inefficiencies left in the system, and any further decreases in working capital can have negative consequences for revenue growth and profits. Therefore, it appears that for firms with positive working capital, decreases in working capital are feasible only for short periods. In fact, once working capital is being managed efficiently, the working capital changes from year to year should be estimated using working capital as a percent of revenues. For example, consider a firm that has noncash working capital that represents 10 percent of revenues and that you believe that better management of working capital could reduce this to 6 percent of revenues. You could allow working capital to decline each year for the next four years from 10 percent to 6 percent, and, once this adjustment is made, begin estimating the working capital requirement each year as 6 percent of additional revenues. The following table provides estimates of the change in noncash working capital on this firm, assuming that current revenues are 1 billion and that revenues are expected to grow 10 percent a year for the next 15 years.

<table><tr><td>Year</td><td>Current</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td></tr><tr><td>Revenues</td><td>$1,000.00</td><td>$1,100.00</td><td>$1,210.00</td><td>$1,331.00</td><td>$1,464.10</td><td>$1,610.51</td></tr><tr><td>Noncash WC as \% of revenues</td><td>10\%</td><td>9\%</td><td>8\%</td><td>7\%</td><td>6\%</td><td>6\%</td></tr><tr><td>Noncash working capital</td><td>$ 100.00</td><td>$ 99.00</td><td>$ 96.80</td><td>$ 93.17</td><td>$ 87.85</td><td>$ 96.63</td></tr><tr><td>Change in noncash WC</td><td></td><td>-$ 1.00</td><td>-$ 2.20</td><td>-$ 0.63</td><td>-$ 5.32</td><td>8.78</td></tr></table>

Can working capital itself be negative? Again, the answer is yes. Firms whose non-debt current liabilities exceed noncash current assets have negative noncash working capital. This is a thornier issue than negative changes in working capital. A firm that has a negative working capital is, in a sense, using supplier credit as a source of capital, especially if the negative working capital becomes larger as the firm becomes larger. A number of firms, with Amazon being the most prominent example, have used this strategy to grow. While this may seem like a cost-efficient strategy, there are potential downsides. The first is that supplier credit is generally not really free. To the extent that delaying paying supplier bills may lead to the loss of cash discounts and other price breaks, firms are paying for the privilege. Thus a firm that decides to adopt this strategy will have to compare the costs of this capital to more traditional forms of borrowing.

The second downside is that a negative noncash working capital has generally been viewed by both accountants and ratings agencies as a source of default risk. To the extent that a firm's rating drops and interest rates paid by the firm increase, there may be costs created for other capital by using supplier credit as a source. As a practical question, you still have an estimation problem on your hands when forecasting working capital requirements for a firm that has negative noncash working capital. As in the previous scenario, with negative changes in noncash working capital, there is no reason why firms cannot continue to use supplier credit as a source of capital in the short term. In the long term, however, we should not assume that noncash working capital will become more and more negative over time. At some point in the future we have to assume either that the change in noncash working capital is zero or that pressure will build for increases in working capital.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/ea2186d77417bad19dfc9e9594dce6250bbb8863edc1996bc3a5c0b134cfb424.jpg) wcdata.xls: This dataset on the Web summarizes noncash working capital needs by industry group in the United States for the most recent quarter.

# CONCLUSION

When valuing a firm, the cash flows that are discounted should be after taxes and reinvestment needs but before debt payments. This chapter considered some of the challenges in coming up with this number for firms.

The chapter began with the corrected and updated version of income described in Chapter 9. To state this income in after-tax terms, you need a tax rate. Firms generally state their effective tax rates in their financial statements, but these effective tax rates can be different from marginal tax rates. Although the effective tax rate can be used to arrive at the after-tax operating income in the early years, the tax rate used should converge on the marginal tax rate in future periods. For firms that are losing money and not paying taxes, the net operating losses that they are accumulating will protect some of their future income from taxation.

The reinvestment that firms make in their own operations is then considered in two parts. The first part is the net capital expenditure of the firm, which is the difference between capital expenditures (a cash outflow) and depreciation (effectively a cash inflow). In this net capital expenditure, we include the capitalized operating expenses (such as R&D) and acquisitions. The second part relates to investments in noncash working capital, mainly inventory and accounts receivable. Increases in noncash working capital represent cash outflows to the firm, while decreases represent cash inflows. Noncash working capital at most firms tends to be volatile and may need to be smoothed out when forecasting future cash flows.

# QUESTIONS AND SHORT PROBLEMS

In the problems following, use an equity risk premium of 5.5 percent if none is specified.

1. You are valuing GenFlex, a small manufacturing firm, which reported paying taxes of \$12.5 million on taxable income of \$50 million and reinvesting 15 million in the most recent year. The firm has no debt outstanding, the cost of capital is 11\%, and the marginal tax rate for the firm is 35\%. Assuming that the firm's earnings and reinvestment are expected to grow 10\% a year for three years and 5\% a year forever after that, estimate the value of this firm: a. Using the effective tax rate to estimate after-tax operating income.

b. Using the marginal tax rate to estimate after-tax operating income.

c. Using the effective tax rate for the next three years and the marginal tax rate in year 4.

2. You are trying to estimate the free cash flow to the firm for RevTech, a technology firm. The firm reported \$80 million in earnings before interest and taxes, capital expenditures of \$30 million, and depreciation of 20 million in the most recent year. There are two additional complications:

The firm had R&D expenses of \$50 million in the most recent year. You believe that a three-year amortizable life is appropriate for this firm and the R&D expenses for the past three years have amounted to \$20 million, \$30 million, and \$40 million respectively.

 The firm also made two acquisitions during the year—a cash-based acquisition for \$45 million and a stock-based acquisition for \$35 million.

If the firm has no working capital requirements and a tax rate of  $40\%$ , estimate the free cash flow to the firm in the most recent year.

3. Lewis Clark, a firm in the travel business, reported earnings before interest and taxes of 60 million last year, but you have uncovered the following additional items of interest:
- The firm had operating lease expenses of 50 million last year and has a commitment to make equivalent payments for the next eight years.
- The firm reported capital expenditures of  \$30 million and depreciation of\$ 50 million last year. However, the firm also made two acquisitions, one funded with cash for \$50 million and another funded with a stock swap for \$30 million. The amortization of these acquisitions is already included in the current year's depreciation.
The total working capital increased from \$180 million at the start of the year to \$200 million at the end of the year. However, the firm's cash balance was a significant portion of this working capital and increased from \$80 million at the start of the year to \$120 million at the end. (The cash is invested in T-bills.)
The tax rate is  $40\%$ , and the firm's pretax cost of debt is  $6\%$ .

Estimate the free cash flows to the firm last year.

4. The following is the balance sheet for Ford Motor Company as of December 31, 1994 (in millions).

<table><tr><td colspan="2">Assets</td><td colspan="2">Liabilities</td></tr><tr><td>Cash</td><td>\$ 19,927</td><td>Accounts payable</td><td>\$ 11,635</td></tr><tr><td>Receivables</td><td>\$132,904</td><td>Debt due within 1 year</td><td>\$ 36,240</td></tr><tr><td>Inventory</td><td>\$ 10,128</td><td>Other current liabilities</td><td>\$ 2,721</td></tr><tr><td>Current assets</td><td>\$ 91,524</td><td>Current liabilities</td><td>\$ 50,596</td></tr><tr><td>Fixed assets</td><td>\$ 45,586</td><td>Short-term debt</td><td>\$ 36,200</td></tr><tr><td></td><td></td><td>Long-term debt</td><td>\$ 37,490</td></tr><tr><td></td><td></td><td>Equity</td><td>\$ 12,824</td></tr><tr><td>Total assets</td><td>\$137,110</td><td>Total liabilities</td><td>\$137,110</td></tr></table>

The firm had revenues of  \$154,951 million in 1994 and cost of goods sold of\$ 103,817 million.

a. Estimate the net working capital.

b. Estimate the noncash working capital.

c. Estimate noncash working capital as a percent of revenues.

5. Continuing problem 4, assume that you expect Ford's revenues to grow  $10\%$  a year for the next five years.

a. Estimate the expected changes in noncash working capital each year, assuming that noncash working capital as a percent of revenues remains at 1994 levels.

b. Estimate the expected changes in noncash working capital each year, assuming that noncash working capital as a percent of revenues will converge on the industry average of  $4.3\%$  of revenues.

6. Newell Stores is a retail firm that reported \$1 billion in revenues, \$80 million in after-tax operating income, and noncash working capital of -50 million last year.

a. Assuming that working capital as a percent of revenues remains unchanged next year and that there are no net capital expenditures, estimate the free cash flow to the firm if revenues are expected to grow  $10\%$ .

b. If you are projecting free cash flows to the firm for the next 10 years, would you make the same assumptions about working capital? Why or why not?

The value of a firm is the present value of expected future cash flows generated by the firm. The most critical input in valuation, especially for high-growth firms, is the growth rate to use to forecast future revenues and earnings. This chapter considers how best to estimate these growth rates for firms, including those with low revenues and negative earnings.

There are three basic ways of estimating growth for any firm. One is to look at the growth in a firm's past earnings—its historical growth rate. While this can be a useful input when valuing stable firms, there are both dangers and limitations in using this growth rate for high-growth firms. The historical growth rate can often not be estimated, and even if it can, it cannot be relied on as an estimate of expected future growth.

The second is to trust the analysts who follow the firm to come up with the right estimate of growth for the firm, and to use that growth rate in valuation. Although many firms are widely followed by analysts, the quality of growth estimates, especially over longer periods, is poor. Relying on these growth estimates in a valuation can lead to erroneous and inconsistent estimates of value.

The third is to estimate the growth from a firm's fundamentals. A firm's growth ultimately is determined by how much is reinvested into new assets and the quality of these investments, with investments widely defined to include acquisitions, building distribution channels, or even expanding marketing capabilities. By estimating these inputs, you are, in a sense, estimating a firm's fundamental growth rate.

# THE IMPORTANCE OF GROWTH

A firm can be valuable because it owns assets that generate cash flows now or because it is expected to acquire such assets in the future. The first group of assets is categorized as assets in place and the second as growth assets. Figure 11.1 presents a financial balance sheet for a firm. Note that an accounting balance sheet can be very different from a financial balance sheet, since accounting for growth assets tends to be both conservative and inconsistent.

For high-growth firms, accounting balance sheets do a poor job of summarizing the values of the assets of the firm because they mostly ignore the largest component of value, which is future growth. The problems are exacerbated for firms that invest in R&D, because the book value will not include the most important asset at these firms—the research asset.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/8a1cb7b77bb4d2b9f669b26e8e336b35591a60ce18cb1f1dce481955e894879d.jpg)

FIGURE 11.1 Financial View of a Firm

# HISTORICAL GROWTH

When estimating the expected growth for a firm, we generally begin by looking at the firm's history. How rapidly have the firm's operations, as measured by revenues or earnings, grown in the recent past? While past growth is not always a good indicator of future growth, it does convey information that can be valuable while making estimates for the future. This section begins by looking at measurement issues that arise when estimating past growth, and then considers how past growth can be used in projections.

# Estimating Historical Growth

Given a firm's earnings history, estimating historical growth rates may seem like a simple exercise but there are several measurement problems that may arise. In particular, you can get very different values for historical growth, depending on how the average is estimated and whether you allow for compounding in values over time. Estimating growth rates can also be complicated by the presence of negative earnings in the past or in the current period.

Arithmetic versus Geometric Averages The average growth rate can vary depending on whether it is an arithmetic average or a geometric average. The arithmetic average is the simple average of past growth rates, while the geometric mean takes into account the compounding that occurs from period to period:

$$
\text {A r i t h m e t i c a v e r a g e} = \frac {\sum_ {\mathrm {t} = - \mathrm {n}} ^ {\mathrm {t} = - 1} \mathrm {g} _ {\mathrm {t}}}{\mathrm {n}}
$$ where  $\mathbf{g}_{\mathrm{t}} =$  Growth rate in year t


$$

\text {G e o m e t r i c a v e r a g e} = \left(\frac {\text {E a r n i n g s} _ {0}}{\text {E a r n i n g s} _ {- n}}\right) ^ {(1 / n)} - 1

$$ where  $\text{Earnings}_{\mathrm{t}} =$  earnings in year t

The two estimates can be very different, especially for firms with volatile earnings. The geometric average is a much more accurate measure of true growth in past earnings, especially when year-to-year growth has been erratic.

In fact, the point about arithmetic and geometric growth rates also applies to revenues, though the difference between the two growth rates tend to be smaller for revenues than for earnings. For firms with volatile earnings and revenues, the caveats about using arithmetic growth carry even more weight.

# ILLUSTRATION 11.1: Differences between Arithmetic and Geometric Averages: Motorola (1994-1999)

The following table reports the revenues, EBITDA, EBIT, and net income for Motorola for each year from 1994 to 1999. The arithmetic and geometric average growth rates in each series are reported at the bottom of the table.

<table><tr><td>Year</td><td>Revenues</td><td>Percent Change</td><td>EBITDA</td><td>Percent Change</td><td>EBIT</td><td>Percent Change</td><td>Net Income</td><td>Percent Change</td></tr><tr><td>1994</td><td>$22,245</td><td></td><td>$4,151</td><td></td><td>$2,604</td><td></td><td>$1,560</td><td></td></tr><tr><td>1995</td><td>$27,037</td><td>21.54\%</td><td>$4,850</td><td>16.84\%</td><td>$2,931</td><td>12.56\%</td><td>$1,781</td><td>14.17\%</td></tr><tr><td>1996</td><td>$27,973</td><td>3.46\%</td><td>$4,268</td><td>-12.00\%</td><td>$1,960</td><td>-33.13\%</td><td>$1,154</td><td>-35.20\%</td></tr><tr><td>1997</td><td>$29,794</td><td>6.51\%</td><td>$4,276</td><td>0.19\%</td><td>$1,947</td><td>-0.66\%</td><td>$1,180</td><td>2.25\%</td></tr><tr><td>1998</td><td>$29,398</td><td>-1.33\%</td><td>$3,019</td><td>-29.40\%</td><td>$ 822</td><td>-57.78\%</td><td>$ 212</td><td>-82.03\%</td></tr><tr><td>1999</td><td>$30,931</td><td>5.21\%</td><td>$5,398</td><td>78.80\%</td><td>$3,216</td><td>291.24\%</td><td>$ 817</td><td>285.38\%</td></tr><tr><td colspan="2">Arithmetic average</td><td>7.08\%</td><td></td><td>10.89\%</td><td></td><td>42.45\%</td><td></td><td>36.91\%</td></tr><tr><td colspan="2">Geometric average</td><td>6.82\%</td><td></td><td>5.39\%</td><td></td><td>4.31\%</td><td></td><td>-12.13\%</td></tr><tr><td colspan="2">Standard deviation</td><td>8.61\%</td><td></td><td>41.56\%</td><td></td><td>141.78\%</td><td></td><td>143.88\%</td></tr><tr><td colspan="9">Geometric average = (Earnings1999/Earnings1994)1/5 - 1</td></tr></table>

The arithmetic average growth rate is higher than the geometric average growth rate for all four items, but the difference is much larger with net income and operating income (EBIT) than it is with revenues and EBITDA. This is because the net and operating income are the most volatile of the numbers, with a standard deviation in year-to-year changes of over  $140\%$ . Looking at the net and operating income in 1994 and 1999, it is also quite clear that the geometric averages are much better indicators of true growth. Motorola's operating income grew only marginally during the period, and this is reflected in its geometric average growth rate, which is  $4.31\%$ , but not in its arithmetic average growth rate, which indicates much faster growth. Motorola's net income dropped by almost  $50\%$  during the period. This is reflected in its negative geometric average growth rate but its arithmetic average growth rate is  $36.91\%$ .

Linear and Log-Linear Regression Models The arithmetic mean weights percentage changes in earnings in each period equally and ignores compounding effects in earnings. The geometric mean considers compounding but focuses on the first and the last earnings observations in the series—it ignores the information in the intermediate observations and any trend in growth rates that may have developed over the period. These problems are at least partially overcome by using ordinary least squares (OLS) regressions of earnings per share (EPS) against time. The linear version of this model is:

$$
\mathrm {E P S} _ {\mathrm {t}} = \mathrm {a} + \mathrm {b t}
$$ where  $\mathrm{EPS}_{\mathrm{t}} =$  Earnings per share in period t


$\mathfrak{t} =$  Time period t

The slope coefficient on the time variable is a measure of earnings change per time period. The problem, however, with the linear model is that it specifies growth in terms of dollar EPS and is not appropriate for projecting future growth, given compounding.

The log-linear version of this model converts the coefficient into a percentage change:

$$

\ln \left(\mathrm {E P S} _ {\mathrm {t}}\right) = a + b t

$$ where  $\ln (\mathrm{EPS}_{\mathrm{t}}) =$  Natural logarithm of earnings per share in period t

$$
\mathrm {t} = \text {T i m e p e r i o d t}
$$

The coefficient  $b$  on the time variable becomes a measure of the percentage change in earnings per unit time.

# ILLUSTRATION 11.2: Linear and Log-Linear Models of Growth: General Electric (1991 to 2000)

The earnings per share from 1991 until 2000 are provided for General Electric (GE) in the following table with the percentage changes and the natural logs of the earnings per share computed each year:

<table><tr><td>Year</td><td>Calendar Year</td><td>EPS</td><td>Percent Change in EPS</td><td>In(EPS)</td></tr><tr><td>1</td><td>1991</td><td>0.42</td><td></td><td>-0.8675</td></tr><tr><td>2</td><td>1992</td><td>0.41</td><td>-2.38\%</td><td>-0.8916</td></tr><tr><td>3</td><td>1993</td><td>0.40</td><td>-2.44\%</td><td>-0.9163</td></tr><tr><td>4</td><td>1994</td><td>0.58</td><td>45.00\%</td><td>-0.5447</td></tr><tr><td>5</td><td>1995</td><td>0.65</td><td>12.07\%</td><td>-0.4308</td></tr><tr><td>6</td><td>1996</td><td>0.72</td><td>10.77\%</td><td>-0.3285</td></tr><tr><td>7</td><td>1997</td><td>0.82</td><td>13.89\%</td><td>-0.1985</td></tr><tr><td>8</td><td>1998</td><td>0.93</td><td>13.41\%</td><td>-0.0726</td></tr><tr><td>9</td><td>1999</td><td>1.07</td><td>15.05\%</td><td>0.0677</td></tr><tr><td>10</td><td>2000</td><td>1.27</td><td>18.69\%</td><td>0.2390</td></tr></table>

There are a number of ways in which we can estimate the growth rate in earnings per share at GE between 1991 and 2000. One is to compute the arithmetic and geometric averages:

Arithmetic average growth rate in earnings per share  $= 13.79\%$

Geometric average growth rate in earnings per share  $= (1.27 / 0.42)^{1 / 9} - 1 = 13.08\%$

The second is to run a linear regression of earnings per share against a time variable (where the earliest year is given a value of 1, the next year a value of 2, and so on):

$$
\text{Linear regression: EPS} = 0.2033 + 0.0952 \text{EPS} \quad R ^ {2} = 94.5 \%
$$

$$
[ 4. 0 3 ] \quad [ 1 1. 0 7 ]
$$

This regression would indicate that the earnings per share increased 9.52 cents a year from 1991 to 2000. We can convert it into a percent growth in earnings per share by dividing this change by the average earnings per share over the period:

Finally, you can regress In(EPS) against the time variable:

$$
\text{Log-linear regression:} \ln (\text{EPS}) = -1.1288 + 0.1335 t \quad R ^ {2} = 95.8 \%
$$

$$
[ 1 9. 5 3 ] [ 1 4. 3 4 ]
$$

The coefficient on the time variable here can be viewed as a measure of compounded percent growth in earnings per share; GE's earnings per share grew at  $13.35\%$  a year based on this regression.

The numbers are close using all the approaches because there is so little variability in the growth rate of earnings per share at GE. For companies with more volatile earnings, the differences will be much larger.

Negative Earnings Measures of historical growth are distorted by the presence of negative earnings numbers. The percentage change in earnings on a year-by-year basis is defined as:

$$
\% \text {change in EPS in period t} = \left(\mathrm{EPS}_{t} - \mathrm{EPS}_{t - 1}\right) / \mathrm{EPS}_{t - 1}
$$

If  $\mathrm{EPS}_{\mathrm{t - 1}}$  is negative, this calculation yields a meaningless number. This extends into the calculation of the geometric mean. If the EPS in the initial time period is negative or zero, the geometric mean is not meaningful.

Similar problems arise in log-linear regressions, since the EPS has to be greater than zero for the log transformation to exist. There are at least two ways of trying to get meaningful estimates of earnings growth for firms with negative earnings. One is to run the linear regression of EPS against time specified in the previous regression:

$$
\mathrm {E P S} = \mathrm {a} + \mathrm {b t}
$$

The growth rate can then be approximated as follows:

Growth rate in  $\mathrm{EPS} = \mathrm{b / Average}$  EPS over the time period of the regression

This assumes that the average EPS over the time period is positive. Another approach to estimating growth for these firms uses the higher of the two numbers  $(\mathrm{EPS}_{t} \text{ or } \mathrm{EPS}_{t-1})$  in the denominator:

$$
\% \text {change in EPS} = \left(\mathrm{EPS}_{t} - \mathrm{EPS}_{t - 1}\right) / \operatorname {Max} \left(\mathrm{EPS}_{t}, \mathrm{EPS}_{t - 1}\right)
$$

Alternatively, you could use the absolute value of EPS in the previous period.

Note that these approaches to estimating historical growth do not provide any information on whether these growth rates are useful in predicting future growth. It is not incorrect, and, in fact, it may be appropriate to conclude that the historical growth rate is not meaningful when earnings are negative and to ignore it in predicting future growth.

# ILLUSTRATION 11.3: Negative Earnings: Tesla Motors and Aracruz Cellulose

The problems with estimating earnings growth when earnings are negative can be seen even for firms that have only negative earnings. For instance, Tesla Motors, the electric automobile company, reported operating earnings (EBIT) of  $-\$ 52$  million in 2009 and  $-\$ 154$  million in 2010. Clearly, the firm's earnings deteriorated, but estimating a standard earnings growth rate would lead us to the following growth rate:

Earnings growth for Tesla Motors in 2010 =  $[-154 - (-52)] / -52 = 1.9615$  or  $196.15\%$

Now consider Aracruz, a Brazilian paper and pulp company, susceptible like other firms in the industry to the ebbs and flows of commodity prices. The following table reports the earnings per share at the firm from 1995 to 2000.

<table><tr><td>Year</td><td>EPS in Brazilian Reals</td></tr><tr><td>1995</td><td>0.302</td></tr><tr><td>1996</td><td>0.041</td></tr><tr><td>1997</td><td>0.017</td></tr><tr><td>1998</td><td>-0.067</td></tr><tr><td>1999</td><td>0.065</td></tr><tr><td>2000</td><td>0.437</td></tr></table>

The negative net income (and earnings per share) numbers in 1998 make the estimation of a growth rate in 1999 problematic. For instance, the firm has a loss per share of 0.067 BR in 1998 and a profit per share of 0.065 BR in 1999. The growth rate in earnings per share estimated using the conventional equation would be:

$$
E a r n e i n g s \text {g r o w t h r a t e i n} 1999 = [ \0.065 - (-\0.067)] / (-\0.067) = -197\%
$$

This growth rate, a negative number, makes no sense given the improvement in earnings during the year. There are two fixes to this problem. One is to replace the actual earnings per share in the denominator with the absolute value:

$$
E a r n e i n g \text {g r o w t h r a t e i n 1 9 9 9} _ {\text {a b s o l u t e v a l u e}} = [ \$ 0. 0 6 5 - (- \$ 0. 0 6 7) ] / (\$ 0. 0 6 7) = 1 9 2
$$

The other is to use the higher of the earnings per share from the two years, yielding:

$$
E a n e i n g s \quad g r o w t h \quad r a t e \quad i n \quad 1 9 9 9 _ {\text {h i g h e r} \quad v a l u e} = [ \\ (\ 0. 0 6 5 - (- \ 0. 0 6 7) ] / (\$ 0. 0 6 5) = 2 0 3
$$

While the growth rate is now positive, as you would expect it to be, the values for the growth rates themselves are not very useful for making estimates for the future.

Time Series Models to Predict Earnings per Share Time series models use the same historical information as the simpler models described in the previous section. They attempt to extract better predictions from this data, however, through the use of sophisticated statistical techniques.

Box-Jenkins Models Box and Jenkins (1976) developed a procedure for analyzing and forecasting univariate time series data using an autoregressive integrated moving average (ARIMA) model. Autoregressive integrated moving average models model a value in a time series as a linear combination of past values and past errors (shocks). Since historical data is used, these models are appropriate as long as the data does not show a time trend or a dependence on outside events or variables. ARIMA models are usually denoted by the notation:

$$
\operatorname {A R I M A} (p, d, q)
$$ where  $\mathfrak{p} =$  Degree of the autoregressive part


$\mathrm{d} =$  Degree of differencing

$\mathbf{q} =$  Degree of the moving average process

The mathematical model can then be written as follows:

$$

\mathrm {w} _ {\mathrm {t}} = \phi_ {1} \mathrm {w} _ {\mathrm {t - 1}} + \phi_ {2} \mathrm {w} _ {\mathrm {t - 2}} + \dots + \phi_ {\mathrm {p}} \mathrm {w} _ {\mathrm {t - p}} + \theta_ {0} - \theta_ {1} \mathrm {a} _ {\mathrm {t - 1}} - \theta_ {2} \mathrm {a} _ {\mathrm {t - 2}} - \dots - \theta_ {\mathrm {q}} \mathrm {a} _ {\mathrm {t - q}} + \varepsilon_ {\mathrm {t}}

$$ where  $\mathrm{w_t} =$  Original data series or difference of degree d of the original data

$\phi_1, \phi_2, \ldots, \phi_p =$  Autoregressive parameters

$\theta_0^{\prime} =$  Constant term

$\theta_{1}, \theta_{2}, \ldots, \theta_{q} =$  Moving average parameters

$\varepsilon_{\mathrm{t}} =$  Independent disturbances, random error

ARIMA models can also adjust for seasonality in the data, in which case the model is denoted by the notation:

$$
\operatorname {S A R I M A} (\mathrm {p}, \mathrm {d}, \mathrm {q}) \times (\mathrm {p}, \mathrm {d}, \mathrm {q}) _ {\mathrm {s} = \mathrm {n}}
$$ where  $\mathrm{s} =$  Seasonal parameter of length n


Time Series Models in Earnings Most time series models used in forecasting earnings are built around quarterly earnings per share. In a survey paper, Bathke and Lorek (1984) point out that three time-series models have been shown to be useful in forecasting quarterly earnings per share. All three models are seasonal autoregressive integrated moving average (SARIMA) models, since quarterly earnings per share have a strong seasonal component. The first model, developed by Foster (1977), allows for seasonality in earnings and is a follows:

Model 1: SARIMA(1,0,0)×(0,1,0)  ${}_{\mathrm{s} = 4}$

$$

\mathrm {E P S} _ {\mathrm {t}} = \phi_ {1} \mathrm {E P S} _ {\mathrm {t - 1}} + \mathrm {E P S} _ {\mathrm {t - 4}} - \phi_ {1} \mathrm {E P S} _ {\mathrm {t - 5}} + \theta_ {0} + \varepsilon_ {\mathrm {t}}

$$

This model was extended by Griffin² and Watts³ to allow for a moving average parameter:

Model 2: SARIMA(0, 1, 1)  $\times$  (0, 1, 1)  $s = 4$

$$

\mathrm {E P S} _ {\mathrm {t}} = \mathrm {E P S} _ {\mathrm {t - 1}} + \mathrm {E P S} _ {\mathrm {t - 4}} - \mathrm {E P S} _ {\mathrm {t - 5}} - \theta_ {1} \varepsilon_ {\mathrm {t - 1}} - \Theta \varepsilon_ {\mathrm {t - 4}} - \Theta \theta_ {1} \varepsilon_ {\mathrm {t - 5}} + \varepsilon_ {\mathrm {t}}

$$ where  $\theta_{1} =$  First-order moving average [MA(1)] parameter

$\Theta =$  First-order seasonal moving average parameter

$\varepsilon_{t} =$  Disturbance realization at the end of quarter t

The third time series model, developed by Brown and Rozeff (1979), is similar in its use of seasonal moving average parameter:

$$
\begin{array}{l} \text {M o d e l 3 : S A R I M A} (1, 0, 0) \times (0, 1, 1) _ {\mathrm {s} = 4} \\ \mathrm {E P S} _ {\mathrm {t}} = \phi_ {1} \mathrm {E P S} _ {\mathrm {t} - 1} + \mathrm {E P S} _ {\mathrm {t} - 4} - \phi_ {1} \mathrm {E P S} _ {\mathrm {t} - 5} + \theta_ {0} - \Theta \varepsilon_ {\mathrm {t} - 4} \\ \end{array}
$$

How Good Are Time Series Models at Predicting Earnings? Time series models do better than naive models (using past earnings) in predicting earnings per share in the next quarter. The forecast error (i.e., the difference between the actual earnings per share and forecasted earnings per share) from the time series models is, on average, smaller than the forecast error from naive models (such as simple averages of past growth). The superiority of the models over naive estimates declines with longer-term forecasts, suggesting that the estimated time series parameters are not stationary.

Among the time series models themselves, there is no evidence that any one model is dominant, in terms of minimizing forecast error, for every firm in the sample. The gain from using the firm-specific best models, rather than using the same model for every firm is relatively small.

Limitations in Using Time Series Models in Valuation There are several concerns in using time series models for forecasting earnings in valuation. First, time series models require a lot of data, which is why most of them are built around quarterly earnings per share. In most valuations, the focus is on predicting annual earnings per share and not on quarterly earnings. Second, even with quarterly earnings per share, the number of observations is limited for most firms to 10 to 15 years of data (40 to 60 quarters of data), leading to large estimation errors in time series model parameters and in the forecasts. Third, the superiority of earnings forecasts from time series models declines as the forecasting period is extended. Given that earnings forecasts in valuation have to be made for several years rather than a few quarters, the value of time series models may be limited. Finally, studies indicate that analyst forecasts dominate even the best time series models in forecasting earnings.

In conclusion, time series models are likely to work best for firms that have a long history of earnings and where the parameters of the models have not shifted significantly over time. For the most part, however, the cost of using these models is likely to exceed their benefits, at least in the context of valuation.

# Usefulness of Historical Growth

Is the growth rate in the past a good indicator of growth in the future? Not necessarily. In this section we consider how good historical growth is as a predictor of future growth for all firms, and why the changing size and volatile businesses of many firms can undercut growth projections.

Higgledy-Piggledy Growth Past growth rates are useful in forecasting future growth, but they have considerable noise associated with them. In a study of the relationship between past growth rates and future growth rates, Little (1960) coined the term "higgledy-piggledy growth" because he found little evidence that firms that grew fast in one period continued to grow fast in the next period. In the process of running a series of correlations between growth rates in consecutive periods of different length, he frequently found negative correlations between growth rates in the two periods, and the average correlation across the two periods was close to zero (0.02).

If past growth is not a reliable indicator of future growth at many firms, it becomes even less so at smaller firms. The growth rates at smaller firms tend to be more volatile than growth rates at other firms in the market. The correlation between growth rates in earnings in consecutive time periods (five-year, three-year, and one-year) for firms in the United States, categorized by market value, is reported in Figure 11.2.

While the correlations tend to be higher across the board for one-year growth rates than for three-year or five-year growth rates in earnings, they are also consistently lower for smaller firms than they are for the rest of the market. This would suggest that you should be more cautious about using past growth, especially in earnings, for forecasting future growth at these firms.

Revenue Growth versus Earnings Growth In general, revenue growth tends to be more persistent and predictable than earnings growth. This is because accounting choices have a far smaller effect on revenues than they do on earnings. Figure 11.3 compares the correlations in revenue and earnings growth over five-year periods at U.S. firms. Revenue growth is consistently more correlated over time than earnings growth. The implication is that historical growth in revenues is a far more useful number when it comes to forecasting than historical growth in earnings.

Effects of Firm Size Since the growth rate is stated in percentage terms, the role of the size of the firm has to be weighed in the analysis. It is easier for a firm with  \$10 million in earnings to generate a 50 percent growth rate than it is for a firm with\$ 500 million in earnings. Since it becomes harder for firms to sustain high growth rates as they become larger, past growth rates for firms that have grown dramatically in size may be difficult to sustain in the future. While this is a problem for all firms, it is a particular problem when analyzing small and growing firms.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/111b71334fb43a5df178fdb32a67015a5410f538e2985086b93287d7fdc9a970.jpg)

FIGURE 11.2 Correlation in Earnings: One-, Three-, and Five-Year Time Periods

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/62bfc43634dd376992bac12dc2e88ea365b0aa2cc1d8ccee8ffc0695443e7e2d.jpg)

FIGURE 11.3 Correlation in Earnings and Revenues—Five-Year Time Periods

While the fundamentals at these firms, in terms of management, products, and underlying markets, may not have changed, it will still be difficult to maintain historical growth rates as the firms double or triple in size.

The true test for a small firm lies in how well it handles growth. Some firms continue to deliver their products and services efficiently as they grow. In other words, they are able to scale up successfully. Other firms have had much more difficulty replicating their success as they become larger. In analyzing small firms, therefore, it is important that you look at plans to increase growth but it is even more critical that you examine the systems in place to handle this growth.

ILLUSTRATION 11.4: Cisco: Earnings Growth and Size of the Firm—The Glory Days (1989 to 1999) and Follow-up

<table><tr><td colspan="7">Cisco&#x27;s evolution from a firm with \$28 million in revenues and net income of about \$4 million in 1989 to revenues in excess of \$12 billion and net income of more than \$2 billion in 1999 is reported in the following table:</td></tr><tr><td>Year</td><td>Revenues</td><td>Percent Change</td><td>EBIT</td><td>Percent Change</td><td>Net Income</td><td>Percent Change</td></tr><tr><td>1989</td><td>$ 28</td><td></td><td>$ 7</td><td></td><td>$ 4</td><td></td></tr><tr><td>1990</td><td>$ 70</td><td>152.28\%</td><td>$ 21</td><td>216.42\%</td><td>$ 14</td><td>232.54\%</td></tr><tr><td>1991</td><td>$ 183</td><td>162.51\%</td><td>$ 66</td><td>209.44\%</td><td>$ 43</td><td>210.72\%</td></tr><tr><td>1992</td><td>$ 340</td><td>85.40\%</td><td>$ 129</td><td>95.48\%</td><td>$ 84</td><td>95.39\%</td></tr><tr><td>1993</td><td>$ 649</td><td>91.10\%</td><td>$ 264</td><td>103.70\%</td><td>$ 172</td><td>103.77\%</td></tr><tr><td>1994</td><td>$ 1,243</td><td>91.51\%</td><td>$ 488</td><td>85.20\%</td><td>$ 315</td><td>83.18\%</td></tr><tr><td>1995</td><td>$ 2,233</td><td>79.62\%</td><td>$ 794</td><td>62.69\%</td><td>$ 457</td><td>45.08\%</td></tr><tr><td>1996</td><td>$ 4,096</td><td>83.46\%</td><td>$1,416</td><td>78.31\%</td><td>$ 913</td><td>99.78\%</td></tr><tr><td>1997</td><td>$ 6,440</td><td>57.23\%</td><td>$2,135</td><td>50.78\%</td><td>$1,049</td><td>14.90\%</td></tr><tr><td>1998</td><td>$ 8,488</td><td>31.80\%</td><td>$2,704</td><td>26.65\%</td><td>$1,355</td><td>29.17\%</td></tr><tr><td>1999</td><td>$12,154</td><td>43.19\%</td><td>$3,455</td><td>27.77\%</td><td>2,096</td><td>54.69\%</td></tr><tr><td colspan="2">Arithmetic average</td><td>87.81\%</td><td></td><td>95.64\%</td><td></td><td>96.92\%</td></tr><tr><td colspan="2">Geometric average</td><td>83.78\%</td><td></td><td>86.57\%</td><td></td><td>86.22\%</td></tr></table>

While this table presents the results of a phenomenally successful decade for Cisco, it does suggest that you should be cautious about assuming that the firm will continue to grow at a similar rate in the future for two reasons. First, the growth rates tapered off as the firm became larger toward the end of the 1990s. Second, if you assume that Cisco will maintain its historic growth of 1990 to 1999 (estimated using the geometric average) for the following five years, the revenue and earnings will be immense. That is to say, if operating income continued to grow at  $86.57\%$  from 2000 to 2005, Cisco's operating income would have been  $\$78$  billion in 2005. Third, Cisco's growth came primarily from acquiring of small firms with promising technologies and using its capabilities to commercially develop these technologies. In 1999, for instance, Cisco acquired 15 firms and these acquisitions accounted for almost  $80\%$  of its reinvestment that year. If you assume that Cisco will continue to grow at historical rates, you are assuming that the number of acquisitions also will grow at the same rate. Thus Cisco would have to acquire almost 80 firms five years later to maintain the growth rate it had between 1990 and 1999.

The difficulties of scaling up growth are clear when we look at Cisco between 2000 and 2010. While Cisco's game plan did not change—it continued to acquire companies and push for higher growth—the aggregate revenues and earnings were not responsive to the company's efforts. The compounded annual growth rate in revenues at Cisco declined to  $7.78\%$  between 2000 and 2010, and the compounded annual growth rate in operating income at Cisco between 2000 and 2010 was only  $7.12\%$ , both steep drop-offs from the growth rate in the prior decade.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/de115af730db1a79f4b813025dbfa476ce5e85cd43beabcd3fd8f38d92e6c66a.jpg) histgr.xls: This dataset on the Web summarizes historical growth rates in earnings and revenues by industry group for the United States.

# HISTORICAL GROWTH AT HIGH-GROWTH AND YOUNGER FIRMS

The presence of negative earnings, volatile growth rates over time, and the rapid changes that high-growth firms go through over time make historical growth rates unreliable indicators of future growth for these firms. Notwithstanding this, you can still find ways to incorporate information from historical growth into estimates of future growth, if you follow these general guidelines:

- Focus on revenue growth, rather than earnings growth, to get a measure of both the pace of growth and the momentum that can be carried forward into future years. Revenue growth is less volatile than earnings growth and is much less likely to be swayed by accounting adjustments and choices.
- Rather than looking at average growth over the past few years, look at growth each year. This can provide information on how the growth is changing as the firm becomes larger, and can help when making projections for the future.
- Use historical growth rates as the basis for projections only in the near future (next year or two), since technologies can change rapidly and undercut future estimates.
- Consider historical growth in the overall market and in other firms that are serving it. This information can be useful in deciding what the growth rates of the firm that you are valuing will converge on over time.

# ANALYST ESTIMATES OF GROWTH

Equity research analysts provide not only recommendations on the firms they follow but also estimates of earnings and earnings growth for the future. How useful are these estimates of expected growth from analysts and how, if at all, can they be used in valuing firms? This section considers the process that analysts follow to estimate expected growth and follows up by examining why such growth rates may not be appropriate when valuing some firms.

# Who Do Analysts Follow?

The number of analysts tracking firms varies widely across firms. At one extreme are firms like Apple, GE, and Microsoft that are followed by dozens of analysts. At the other extreme, there are hundreds of firms that are not followed by any analysts.

Why are some firms more heavily followed than others? These seem to be some of the determinants:

■ Market capitalization. The larger the market capitalization of a firm, the more likely it is to be followed by analysts.

■ Institutional holding. The greater the percent of a firm's stock that is held by institutions, the more likely it is to be followed by analysts. The open question, though, is whether analysts follow institutions or whether institutions follow analysts. Given that institutional investors are the biggest clients of equity research analysts, the causality probably runs both ways.

■ Trading volume. Analysts are more likely to follow liquid stocks. Here again, though, it is worth noting that the presence of analysts and buy (or sell) recommendations on a stock may play a role in increasing trading volume.

# Information in Analyst Forecasts

There is a simple reason to believe that analyst forecasts of growth should be better than using historical growth rates. Analysts, in addition to using historical data, can avail themselves of five other types of information that may be useful in predicting future growth:

1. Firm-specific information that has been made public since the last earnings report. Analysts can use information that has come out about the firm since the last earnings report, to make predictions about future growth. This information can sometimes lead to significant reevaluation of the firm's expected cash flows.
2. Macroeconomic information that may impact future growth. The expected growth rates of all firms are affected by economic news on GNP growth, interest rates, and inflation. Analysts can update their projections of future growth as new information comes out about the overall economy and about changes in fiscal and monetary policy. Information, for instance, that shows the economy growing at a faster rate than forecast will result in analysts increasing their estimates of expected growth for cyclical firms.
3. Information revealed by competitors on future prospects. Analysts can also condition their growth estimates for a firm on information revealed by competitors on pricing policy and future growth. For instance, a negative earnings report by one telecommunications firm can lead to a reassessment of earnings for other telecommunications firms.
4. Private information about the firm. Analysts sometimes have access to private information about the firms they follow that may be relevant in forecasting future growth. This avoids answering the delicate question of when private information becomes illegal inside information. There is no doubt, however, that good private information can lead to significantly better estimates of future growth. In an attempt to restrict this type of information leakage, the SEC issued new regulations preventing firms from selectively revealing information to a few analysts or investors. Outside the United States, however, firms routinely convey private information to analysts following them.
5. Public information other than earnings. Models for forecasting earnings that depend entirely on past earnings data may ignore other publicly available information that is useful in forecasting future earnings. It has been shown, for instance, that other financial variables such as earnings retention, profit margins, and asset turnover are useful in predicting future growth. Analysts can incorporate information from these variables into their forecasts.

# Quality of Earnings Forecasts

If firms are followed by a large number of analysts and these analysts are indeed better informed than the rest of the market, the forecasts of growth that emerge from analysts should be better than estimates based on either historical growth or other publicly available information. But is this presumption justified? Are analyst forecasts of growth superior to other forecasts?

The general consensus from studies that have looked at short-term forecasts (one quarter ahead to four quarters ahead) of earnings is that analysts provide better forecasts of earnings than models that depend purely on historical data. The mean relative absolute error, which measures the absolute difference between the actual earnings and the forecast for the next quarter, in percentage terms, is smaller for analyst forecasts than it is for forecasts based on historical data. Two other studies shed further light on the value of analysts' forecasts. Crichfield, Dyckman, and Lakonishok (1978) examined the relative accuracy of forecasts in the "Earnings Forecaster," a publication from Standard & Poor's that summarizes forecasts of earnings from more than 50 investment firms. They measured the squared forecast errors by month of the year and computed the ratio of analyst forecast error to the forecast error from time series models of earnings. They found that the time series models actually outperform analyst forecasts from April until August, but underperform them from September through January. They hypothesized that this is because there is more firm-specific information available to analysts during the latter part of the year. The other study, by O'Brien (1988), compared consensus analyst forecasts from the

Institutions Brokers Estimate System (I/B/E/S) with time series forecasts from one quarter ahead to four quarters ahead. The analyst forecasts outperformed the time series model for one-quarter-ahead and two-quarters-ahead forecasts, did as well as the time series model for three-quarters-ahead forecasts, and did worse than the time series model for four-quarters-ahead forecasts. Thus, the advantage gained by analysts from firm-specific information seems to deteriorate as the time horizon for forecasting is extended.

In valuation, the focus is more on long-term growth rates in earnings than on next quarter's earnings. There is little evidence to suggest that analysts provide superior forecasts of earnings when the forecasts are over three or five years. An early study by Cragg and Malkiel (1968) compared long-term forecasts by five investment management firms in 1962 and 1963 with actual growth over the following three years to conclude that analysts were poor long-term forecasters. This view is contested by Vander Weide and Carleton (1988), who found that the consensus prediction of five-year growth in the I/B/E/S is superior to historically oriented growth measures in predicting future growth. There is an intuitive basis for arguing that analyst predictions of growth rates must be better than time series or other historical data-based models simply because they use more information. The evidence indicates, however, that this superiority in forecasting is surprisingly small for long-term forecasts and that past growth rates play a significant role in determining analyst forecasts.

There is one final consideration. Analysts generally forecast earnings per share, and most services report these estimates. When valuing a firm, you need forecasts of operating income and the growth in earnings per share will usually not be equal to the growth in operating income. In general, the growth rate in operating income should be lower than the growth rate in earnings per share. Thus, even if you decide to use analyst forecasts, you will have to adjust them if you are trying to forecast growth rates in operating income or revenues.

# How Do You Use Analyst Forecasts in Estimating Future Growth?

The information in the growth rates estimated by other analysts can and should be incorporated into the estimation of expected future growth. There are four factors that determine the weight assigned to analyst forecasts in predicting future growth:

1. Amount of recent firm-specific information. Analyst forecasts have an advantage over historical data-based models because they incorporate more recent information about the firm and its future prospects. This advantage is likely to be greater for firms where there have been significant changes in management or business conditions in the recent past, for example, a restructuring or a shift in government policy relating to the firm's underlying business.
2. Number of analysts following the stock. Generally speaking, the larger the number of analysts following a stock, the more informative is their consensus forecast, and the greater should be the weight assigned to it in analysis. The informational gain from having more analysts is diminished somewhat by the well-established fact that most analysts do not act independently, resulting in a high correlation across analysts' revisions of expected earnings.
3. Extent of disagreement between analysts. While consensus earnings growth rates are useful in valuation, the extent of disagreement between analysts measured by the standard deviation in growth predictions is also a useful measure of the reliability of the consensus forecasts. Givoly and Lakonsihok (1984) found that the dispersion of earnings is correlated with other measures of risk such as beta and is a good predictor of expected returns.
4. Quality of analysts following the stock. This is the hardest of the variables to quantify. One measure of quality is the size of the forecast error made by analysts following a stock, relative to models that use only historical data—the smaller this relative error, the larger the weight that should be attached to analyst forecasts. Another measure is the effect on stock prices of analyst revisions—the more informative the forecasts, the greater the effect on stock prices. There are some who argue that the focus on consensus forecasts misses the point that some analysts are better than others in predicting earnings, and that their forecasts should be isolated from the rest and weighted more.

Analyst forecasts may be useful in coming up with a predicted growth rate for a firm, but there is a danger to blindly following consensus forecasts. Analysts often make significant errors in forecasting earnings, partly because they depend on the same data sources (which might have been erroneous or misleading) and partly because they sometimes overlook significant shifts in the fundamental characteristics of the firm. The secret to successful valuation often lies in discovering inconsistencies between analysts' forecasts of growth and a firm's fundamentals. The next section examines this relationship in more detail.

# FUNDAMENTAL DETERMINANTS OF GROWTH

With both historical and analyst estimates, growth is an exogenous variable that affects value but is divorced from the operating details of the firm. The soundest way of incorporating growth into value is to make it endogenous i.e., tie in more closely to the actions that a business takes to create and sustain that growth. This section begins by considering the relationship between fundamentals and growth in equity income, and then moves on to look at the determinants of growth in operating income.

# Growth in Equity Earnings

When estimating cash flows to equity, we usually begin with estimates of net income, if we are valuing equity in the aggregate, or earnings per share, if we are valuing equity per share. This section begins by presenting the fundamentals that determine expected growth in earnings per share and then move on to consider a more expanded version of the model that looks at growth in net income.

Growth in Earnings per Share The simplest relationship determining growth is one based on the retention ratio (percentage of earnings retained in the firm) and the return on equity on its projects. Firms that have higher retention ratios and earn higher returns on equity should have much higher growth rates in earnings per share than firms that do not share these characteristics. To establish this, note that:

$$
\mathrm {g} _ {\mathrm {t}} = (\mathrm {N I} _ {\mathrm {t}} - \mathrm {N I} _ {\mathrm {t} - 1}) / \mathrm {N I} _ {\mathrm {t} - 1}
$$ where  $\mathrm{g_r} =$  Growth rate in net income


$\mathrm{NI}_{\mathrm{t}} = \mathrm{Net~income~in~year~t}$

Also note that the ROE in period  $t$  can be written as NI in period  $t$  divided by the Book value of equity in period  $t - 1$ . Given the definition of return on equity, the net income in year  $t - 1$  can be written as:

$$

\mathrm {N I} _ {\mathrm {t} - 1} = \text {B o o k v a l u e o f e q u i t y} _ {\mathrm {t} - 2} \times \mathrm {R O E} _ {\mathrm {t} - 1}

$$ where  $\mathrm{ROE}_{\mathrm{t - 1}} =$  Return on equity in year t-1

The net income in year t can be written as:

$$
\mathrm {N I} _ {\mathrm {t}} = \left(\text {B o o k v a l u e o f e q u i t y} _ {\mathrm {t - 2}} + \text {R e t a i n e d e a r n i n g s} _ {\mathrm {t - 1}}\right) \times \mathrm {R O E} _ {\mathrm {t}}
$$

Assuming that the return on equity is unchanged (i.e.,  $\mathrm{ROE}_{\mathrm{t}} = \mathrm{ROE}_{\mathrm{t - 1}} = \mathrm{ROE}$ ):

$$
\begin{array}{l} \mathrm {g} _ {\mathrm {t}} = \text {R e t a i n e d e a r n e i n g s} _ {\mathrm {t} - 1} / \mathrm {N I} _ {\mathrm {t} - 1} \times \mathrm {R O E} \\ = \text {R e t e n t i o n} \\ = b \times R O E \\ \end{array}
$$ where  $b$  is the retention ratio. Note that the firm is not being allowed to raise equity by issuing new shares. Consequently, the growth rate in net income and the growth rate in earnings per share are the same in this formulation.


# ILLUSTRATION 11.5: Growth in Earnings per Share

This illustration considers the expected growth rate in earnings based on the retention ratio and return on equity for three firms—Consolidated Edison, a regulated utility that provides power to New York City and its environs; Procter & Gamble, a leading brand-name consumer product firm; and Intel, the technology giant—in 2010. The following table summarizes the returns on equity, retention ratios, and expected growth rates in earnings for the three firms in 2010:

<table><tr><td></td><td>Return on Equity</td><td>Retention Ratio</td><td>Expected Growth Rate</td></tr><tr><td>Consolidated Edison</td><td>9.79\%</td><td>36.00\%</td><td>3.52\%</td></tr><tr><td>Procter &amp; Gamble</td><td>20.09\%</td><td>50.26\%</td><td>10.10\%</td></tr><tr><td>Intel</td><td>32.00\%</td><td>70.00\%</td><td>22.40\%</td></tr></table>

Intel has the highest expected growth rate in earnings per share, assuming that it can maintain its current return on equity and retention ratio. Procter & Gamble also can be expected to post a healthy growth rate, notwithstanding the fact that it pays out more than  $50\%$  of its earnings as dividends because of its high return on equity. Con Ed, on the other hand, has a very low expected growth rate because its return on equity and retention ratio are anemic.

Growth in Net Income If we relax the assumption that the only source of equity is retained earnings, the growth in net income can be different from the growth in earnings per share. Intuitively, note that a firm can grow net income significantly by issuing new equity to fund new projects, while earnings per share stagnates. To derive the relationship between net income growth and fundamentals, we need a measure of investment that goes beyond retained earnings. One way to obtain such a measure is to estimate how much equity the firm reinvests back into its businesses in the form of net capital expenditures and investments in working capital.

$$

\begin{array}{l} \text {E q u i t y} = \text {C a p i t a l} \\ + \text {C h a n g e i n w o r k i n g c a p i t a l} \\ - (\text {N e w d e b t i s s u e d - D e b t r e p a i d}) \\ \end{array}

$$

Dividing this number by the net income gives us a much broader measure of the equity reinvestment rate:

$$

\text {E q u i t y} = \text {E q u i t y}

$$

Unlike the retention ratio, this number can be well in excess of 100 percent with the excess being funded with new equity. The expected growth in net income can then be written as:

Expected growth in net income  $=$  Equity reinvestment rate  $\times$  Return on equity

# ILLUSTRATION 11.6: Growth in Net Income

To estimate growth in operating income based on fundamentals, we look at three firms—Coca-Cola, Nestlé, and Sony. The following table estimates the components of equity reinvestment and uses it to estimate the reinvestment rate for each of the firms. We also present the return on equity and the expected growth rate in net income at each of these firms in 2010:

<table><tr><td></td><td>Net Income</td><td>Net Cap Ex</td><td>Change in Working Capital</td><td>Net Debt Issued (Paid)</td><td>Equity Reinvestment Rate</td><td>ROE</td><td>Expected Growth Rate</td></tr><tr><td>Coca-Cola</td><td>11,809 m</td><td>3,006</td><td>335</td><td>1,848</td><td>12.64\%</td><td>46.59\%</td><td>5.89\%</td></tr><tr><td>Nestlé</td><td>SFr 34,233 m</td><td>1,394</td><td>828</td><td>292</td><td>5.64\%</td><td>63.83\%</td><td>3.60\%</td></tr><tr><td>Sony</td><td>JY 126.33 b</td><td>-33</td><td>-15</td><td>-14</td><td>-26.91\%</td><td>3.30\%</td><td>-0.89\%</td></tr></table>

The pluses and minuses of this approach are visible in the table. The approach much more accurately captures the true reinvestment in the firm by focusing not on what was retained but on what was reinvested. The limitation of the approach is that the ingredients that go into the reinvestment—capital expenditures, working capital change, and net debt issued—are all volatile numbers. Note that Sony had more depreciation than capital expenditures in 2010 and a decrease in working capital, and paid off debt during the year. The net reinvestment rate is negative. If it continues on this path, it will have negative growth. In fact, it would probably be much more realistic to look at the average reinvestment rate over three or five years, rather than just the current year. We will return to examine this question in more depth when we look at growth in operating income.

Determinants of Return on Equity Both earnings per share and net income growth are affected by the return on equity of a firm. The return on equity is affected by how much debt the firm chooses to use to fund its projects. In the broadest terms, increasing debt will lead to a higher return on equity if the after-tax return on capital exceeds the after-tax interest rate paid on debt. This is captured in the following formulation of return on equity:

$$

\mathrm {R O E} = \mathrm {R O C} + \mathrm {D / E} [ \mathrm {R O C} - \mathrm {i} (1 - \mathrm {t}) ]

$$ where ROC = EBIT(1 - t)/(BV of debt + BV of equity-Cash)


$\mathrm{D / E} = \mathrm{BV}$  of debt/BV of equity i = Interest expense on debt/BV of debt

$t =$  Tax rate on ordinary income

In keeping with the fact that return on equity is based on book value, all of the inputs are also stated in terms of book value. The derivation is simple and is provided in a footnote. Using this expanded version of ROE, the growth rate can be written as:

$$

\mathrm {g} = \mathrm {b} \{\mathrm {R O C} + \mathrm {D / E} [ \mathrm {R O C} - \mathrm {i} (1 - \mathrm {t}) ] \}

$$

The advantage of this formulation is that it allows use to model changes in leverage and evaluate the effects on growth.

# ILLUSTRATION 11.7: Breaking Down Return on Equity

To consider the components of return on equity, the following table looks at Consolidated Edison, Procter & Gamble, and Intel, three firms whose returns on equity were shown in Illustration 11.5:

<table><tr><td></td><td>Return on Capital</td><td>Book D/E</td><td>Book Interest Rate</td><td>Tax Rate</td><td>Return on Equity</td></tr><tr><td>Consolidated Edison</td><td>6.66\%</td><td>103.41\%</td><td>5.75\%</td><td>35.33\%</td><td>9.70\%</td></tr><tr><td>Procter &amp; Gamble</td><td>12.19\%</td><td>58.33\%</td><td>2.56\%</td><td>27.25\%</td><td>18.22\%</td></tr><tr><td>Intel</td><td>27.89\%</td><td>5.32\%</td><td>5.49\%</td><td>28.55\%</td><td>29.16\%</td></tr></table>

Comparing these numbers to those reported in Illustration 11.5, you will note that the return on equity is close to our earlier estimates for Con Ed and P&G. The return on equity computed here is lower than the earlier estimate for Intel because it posted significant non operating profits in its net income. We have chosen to consider only operating income in the return on capital computation. To the extent that firms routinely report nonoperating income (or losses), the return on equity computed using the standard approach (net income divided by book equity) will be different from the return on equity computed herein.

While this is not a serious concern for any of the three firms examined, we should be concerned if a high ROE is caused by a high D/E ratio, a low effective tax rate, or non operating profits. That ROE may not be sustainable. If the firm loses its tax breaks and the sources of nonoperating income dry up, the firm could very easily find itself with a return on capital that is lower than its book interest rate. If this occurs, leverage could bring down the return on equity of the firm.

$^6$ ROC + D/E[ROC - i(1 - t)] = [NI + Int(1 - t)]/(D + E) + D/E{[NI + Int(1 - t)]/(D + E)}
- Int(1 - t)/D}
$= \{[\mathrm{NI} + \mathrm{Int}(1 - t)] / (\mathrm{D} + \mathrm{E})\} (1 + \mathrm{D} / \mathrm{E}) - \mathrm{Int}(1 - t) / \mathrm{E}$
$= \mathrm{NI} / \mathrm{E} + \mathrm{Int}(1 - t) / \mathrm{E} - \mathrm{Int}(1 - t) / \mathrm{E} = \mathrm{NI} / \mathrm{E} = \mathrm{ROE}$

# AVERAGE AND MARGINAL RETURNS

The return on equity is conventionally measured by dividing the net income in the most recent year by the book value of equity at the end of the previous year. Consequently, the return on equity measures the quality of both older projects that have been on the books for a substantial period and new projects from more recent periods. Since older investments represent a significant portion of the earnings, the average returns may not shift substantially for larger firms that are facing a decline in returns on new investments, because either of market saturation or competition. In other words, poor returns on new projects will have a lagged effect on the overall returns for the firm. In valuation, it is the returns that firms are making on their newer investments that convey the most information about a quality of a firm's projects. To measure these returns, we could compute a marginal return on equity by dividing the change in net income in the most recent year by the change in book value of equity in the prior year:

Marginal return on equity  $= \Delta$  Net income  ${}_{\mathrm{t}}/\Delta$  Book value of equity  ${}_{\mathrm{t} - 1}$

For example, Disney reported net income of  \$3.963 million on book value of equity of\$ 35,425 million in 2010, resulting in an aggregate return on equity of 11.87 percent:

Aggregate return on equity  $= 1,963 / 35,425 = 11.87\%$

The marginal return on equity is computed as follows:

Change in net income from 2009 to  $2010 = 3,963 - 3,307$

= 656 million

Change in book value of equity from 2009 to  $2010 = 35,425 - 33,667$

= 1,758 million

Marginal return on equity  $= 656 / 1,758 = 37.32\%$

While we are not suggesting that Disney generated 37.32 percent on its new investments in 2010, it does show the momentum is upward in Disney's return on equity. Thus, a forward-looking estimate greater than 11.87 percent would be merited.

The Effects of Changing Return on Equity So far, this section has operated on the assumption that the overall return on equity remains unchanged over time. If we relax this assumption, we introduce a new component to growth—the effect of changing return on equity on existing investments over time. Consider, for instance, a firm that has a book value of equity of 100 million and a return on equity of 10 percent. If this firm improves its return on equity to 11 percent, it will post an earnings growth rate of 10 percent even if it does not reinvest any money. This additional growth can be written as a function of the change in the return on equity:

Addition to expected growth rate  $= \left( {\mathrm{{ROE}}}_{\mathrm{t}} - {\mathrm{{ROE}}}_{\mathrm{t} - 1}\right) /{\mathrm{{ROE}}}_{\mathrm{t} - 1}$ where  $\mathrm{ROE}_{\mathrm{t}}$  is the return on equity in period t. This will be in addition to the fundamental growth rate computed as the product of the return on equity and the retention ratio.


While increasing return on equity will generate a spurt in the growth rate in the period of the improvement, a decline in the return on equity will create a more than proportional drop in the growth rate in the period of the decline.

It is worth differentiating at this point between returns on equity on new investments and returns on equity on existing investments. The additional growth that we are estimating here comes not from new investments but by changing the return on existing investments. For lack of a better term, you could consider it "efficiency-generated growth."

# ILLUSTRATION 11.8: Effects of Changing Return on Equity: Con Ed

In Illustration 11.5 we looked at Con Ed's expected growth rate based on its return on equity of  $9.79\%$  and its retention ratio of  $36\%$ . Assume that the firm will be able to improve its overall return on equity (on both new and existing investments) to  $11\%$  next year and that the retention ratio remains at  $36\%$ . The expected growth rate in earnings per share next year can then be written as:

$$

\begin{array}{l} \text {E x p e c t e d g r o w t a r t i n} \mathrm {E P S} = \mathrm {R O E} _ {\mathrm {t}} \times \text {R e t e n t i o r a t i o} + (\mathrm {R O E} _ {\mathrm {t}} - \mathrm {R O E} _ {\mathrm {t - 1}}) / \mathrm {R O E} _ {\mathrm {t - 1}} \\ = . 1 1 \times . 3 6 + (. 1 1 - . 0 9 7 9) / . 0 9 7 9 \\ = .1632 \text{or} 16.32 \% \\ \end{array}

$$

After next year, the growth rate will subside to a more sustainable  $3.96\%$  (.11 × .36).

How would the answer be different if the improvement in return on equity were only on new investments but not on existing assets? The expected growth rate in earnings per share can then be written as:

$$

\text {E x p e c t e d g r o w t h r a t e i n} \mathrm {E P S} = \mathrm {R O E} _ {\mathrm {t}} \times \text {R e t i n e t i o r a t i o} = . 1 1 \times . 3 6 = . 0 3 9 6

$$

Thus, there is no additional growth created in this case. What if the improvement had been only on existing assets and not on new investments? Then, the expected growth rate in earnings per share can be written as:

$$

\begin{array}{l} \text {E x p e c t e d g r o w t a r t i n} \mathrm {E P S} = \mathrm {R O E} _ {\mathrm {t}} \times \text {R e t e n t i o n r a t i o} + (\mathrm {R O E} _ {\mathrm {t}} - \mathrm {R O E} _ {\mathrm {t - 1}}) / \mathrm {R O E} _ {\mathrm {t - 1}} \\ = . 0 9 7 9 \times . 3 6 + (. 1 1 -. 0 9 7 9) / . 0 9 7 9 \\ = .1588 \text{or} 15.88 \% \\ \end{array}

$$

# Growth in Operating Income

Just as equity income growth is determined by the equity reinvested back into the business and the return made on that equity investment, you can relate growth in operating income to total reinvestment made into the firm and the return earned on capital invested.

We will consider three separate scenarios, and examine how to estimate growth in each, in this section. The first is when a firm is earning a high return on capital that it expects to sustain over time. The second is when a firm is earning a positive return on capital that is expected to increase over time. The third is the most general scenario, where a firm expects operating margins to change over time, sometimes from negative values to positive levels.

Stable Return on Capital Scenario When a firm has a stable return on capital, its expected growth in operating income is a product of the reinvestment rate (i.e., the proportion of the after-tax operating income that is invested in net capital expenditures and noncash working capital), and the quality of these reinvestments, measured as the return on the capital invested.

Expected growth  $\mathrm{EBIT} =$  Reinvestment rate  $\times$  Return on capital where reinvestment rate  $=$  (Capital expenditure - Depreciation +  $\Delta$  Noncash WC)


$$

/ [ \mathrm {E B I T} (1 - \text {T a x r a t e}) ]

$$ return on capital  $=$  EBIT(1 - t)/(Book value of Equity + Book value of debt

$$
- \text {C a s h}
$$

Both measures—the reinvestment rate and return on capital—should be forward looking, and the return on capital should represent the expected return on capital on future investments. In the rest of this section, we consider how best to estimate the reinvestment rate and the return on capital.

Reinvestment Rate The reinvestment rate measures how much a firm is plowing back to generate future growth. The reinvestment rate is often measured using the most recent financial statements for the firm. Although this is a good place to start, it is not necessarily the best estimate of the future reinvestment rate. A firm's reinvestment rate can ebb and flow, especially in firms that invest in relatively few large projects or acquisitions. For these firms, looking at an average reinvestment rate over time may be a better measure of the future. In addition, as firms grow and mature, their reinvestment needs (and rates) tend to decrease. For firms that have expanded significantly over the last few years, the historical reinvestment rate is likely to be higher than the expected future reinvestment rate. For these firms, industry averages for reinvestment rates may provide a better indication of the future than using numbers from the past. Finally, it is important that we continue treating R&D expenses and operating lease expenses consistently. The R&D expenses, in particular, need to be categorized as part of capital expenditures for purposes of measuring the reinvestment rate.

Return on Capital The return on capital is often based on the firm's return on capital on existing investments, where the book value of capital is assumed to measure the capital invested in these investments. Implicitly, we assume that the current accounting return on capital is a good measure of the true returns earned on existing investments, and that this return is a good proxy for returns that will be made on future investments. This assumption, of course, is open to question for the following reasons:

The book value of capital might not be a good measure of the capital invested in existing investments, since it reflects the historical cost of these assets and accounting decisions on depreciation. When the book value understates the capital invested, the return on capital will be overstated; when book value overstates the capital invested, the return on capital will be understated. This problem is exacerbated if the book value of capital is not adjusted to reflect the value of the research asset or the capital value of operating leases.

The operating income, like the book value of capital, is an accounting measure of the earnings made by a firm during a period. All the problems in using unadjusted operating income described in Chapter 9 continue to apply.

Even if the operating income and book value of capital are measured correctly, the return on capital on existing investments may not be equal to the marginal return on capital that the firm expects to make on new investments, especially as you go further into the future.

Given these concerns, we should consider not only a firm's current return on capital, but any trends in this return as well as the industry average return on capital. If the current return on capital for a firm is significantly higher than the industry average, the forecasted return on capital should be set lower than the current return to reflect the erosion that is likely to occur as competition responds.

Finally, any firm that earns a return on capital greater than its cost of capital is earning an excess return. The excess returns are the result of a firm's competitive advantages or barriers to entry into the industry. High excess returns locked in for very long periods imply that this firm has a permanent competitive advantage.

# ILLUSTRATION 11.9: Measuring the Reinvestment Rate, Return on Capital, and Expected Growth Rate: Tata Motors in 2010

In May 2010, we looked at Tata Motors, an Indian automobile company, which has been aggressive in its pursuit of growth through both internal investments and acquisitions over much of the past decade. Based upon its financial statements of 2009, we estimated a reinvestment rate of  $116.83\%$  and a return on capital of  $11.81\%$ :

$$
\begin{array}{l} \text {R e i n v e s t m e n t r a t e} _ {\text {T a t a M o t o r s}} = \frac {\text {N e t c a p i t a l e x p e d u t u r e s} + \text {C h a n g e i n n o n c a s h W C}}{\text {E B I T} (1 - t)} \\ = \frac {(\mathrm {Rs} 40,291 - \mathrm {Rs} 25,072) + \mathrm {Rs} 957}{\mathrm {Rs} 17,527 (1 - 21)} = 116.83 \% \\ \end{array}
$$

$$
\begin{array}{l} \text {R e t u r n o n c a p i t a l} = \frac {\text {E B I T (1 - t) i n 2 0 0 9}}{(\text {B V o f E q u i t y + B V o f D e b t - c a s h}) _ {\text {E n d o f 2 0 0 8}}} \\ = \frac {\mathrm {Rs} 17,527 (1 - .21)}{\mathrm {Rs} 78.395 + \mathrm {Rs} 62,805 - \mathrm {Rs} 23,973} = 11.81 \% \\ \end{array}
$$

Note that the effective tax rate  $(21\%)$  was used to compute the after-tax operating income for both the reinvestment rate and the return on capital. The capital invested was obtained by summing up the book value of debt and equity at the end of the 2008 fiscal year (the beginning of the 2009 fiscal year) and netting out the cash and marketable securities at that point in time.

If Tata Motors can maintain this return on capital and reinvestment rate going forward, its expected growth rate would be:

$$
\begin{array}{l} \text {E x p e c t e d g r o w t h r a t e} = \text {R e i n v e s t m e n t r a t e} \times \text {R e t u r n o n c a p i t a l} \\ = 116.83\% \times 11.81\% = 13.80\% \\ \end{array}
$$

As we will see in the next illustration, maintaining this reinvestment going forward may be very difficult to do.

# ILLUSTRATION 11.10: Current and Historical Averages: Reinvestment Rate and Return on Capital for Tata Motors

Tata Motors has had a volatile history in terms of both reinvestment and returns on capital. Although the 2009 numbers were computed in the preceding illustration, those values have been in flux over the past five years. We summarize the numbers (in millions of rupees) for 2005 to 2009, with the aggregate in the last column:

<table><tr><td></td><td>2005</td><td>2006</td><td>2007</td><td>2008</td><td>2009</td><td>Aggregate</td></tr><tr><td>EBIT(1 - t)</td><td>$12,197</td><td>$12,322</td><td>$25,203</td><td>$15,160</td><td>$13,846</td><td>$78,728</td></tr><tr><td>Capital Expenditures</td><td>$8,175</td><td>$11,235</td><td>$24,612</td><td>$44,113</td><td>$40,291</td><td>$120,251</td></tr><tr><td>Depreciation</td><td>$5,377</td><td>$6,274</td><td>$6,850</td><td>$7,826</td><td>$25,072</td><td>$46,022</td></tr><tr><td>Change in WC</td><td>$4,410</td><td>$23,191</td><td>$4,520</td><td>-$37,137</td><td>$957</td><td>-$8,469</td></tr><tr><td>Reinvestment</td><td>$7,208</td><td>$28,152</td><td>$22,282</td><td>-$850</td><td>$16,176</td><td>$65,760</td></tr><tr><td>Reinvestment Rate</td><td>59.10\%</td><td>228.46\%</td><td>88.41\%</td><td>-5.61\%</td><td>116.83\%</td><td>83.53\%</td></tr></table>

The reinvestment rate has swung between  $-5.61\%$  and  $228.46\%$  over the period, but the aggregate reinvestment rate over the period was  $83.53\%$ .

We did a similar computation with the return on capital between 2005 and 2009.

<table><tr><td></td><td>2005</td><td>2006</td><td>2007</td><td>2008</td><td>2009</td><td>Aggregate</td></tr><tr><td>EBIT(1 - t)</td><td>$12,197</td><td>$12,322</td><td>$25,203</td><td>$15,160</td><td>$13,846</td><td>$78,728</td></tr><tr><td>BV of debt (start)</td><td>$33,621</td><td>$27,142</td><td>$63,293</td><td>$97,479</td><td>$62,805</td><td>$284,340</td></tr><tr><td>BV of equity (start)</td><td>$37,019</td><td>$44,602</td><td>$63,054</td><td>$79,717</td><td>$78,395</td><td>$302,787</td></tr><tr><td>Cash holdings</td><td>$5,546</td><td>$20,209</td><td>$4,838</td><td>$6,998</td><td>$23,973</td><td>$61,564</td></tr><tr><td>Invested Capital</td><td>$65,094</td><td>$51,535</td><td>$121,509</td><td>$170,198</td><td>$117,227</td><td>$525,563</td></tr><tr><td>ROIC</td><td>18.74\%</td><td>23.91\%</td><td>20.74\%</td><td>8.91\%</td><td>11.81\%</td><td>14.98\%</td></tr></table>

The average return on capital between 2005 and 2009 was  $14.98\%$ .

Using these averages for the reinvestment rate and return on capital generates a growth rate of  $12.51\%$ :

Expected growth rate  $=$  Reinvestment rate  $\times$  Return on capital  $= 83.53\% \times 14.98\% = 12.51\%$

This does seem like a more sustainable value for the future.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/fb57b0a041ad2eca63b4a803bd5e71823e089cfff1862ef973c0c3665fcb6e2f.jpg) fundgrEB.xls: This dataset on the Web summarizes reinvestment rates and return on capital by industry group in the United States for the most recent quarter.

# NEGATIVE REINVESTMENT RATES: CAUSES AND CONSEQUENCES

The reinvestment rate for a firm can be negative if its depreciation exceeds its capital expenditures or if the working capital declines substantially during the course of the year. For most firms, this negative reinvestment rate will be a temporary phenomenon reflecting lumpy capital expenditures or volatile working capital. For these firms, the current year's reinvestment rate (which is negative) can be replaced with an average reinvestment rate over the past few years or an industry average reinvestment rate. For other firms, the negative reinvestment rate may reflect our failure to incorporate acquisitions into capital expenditures (if the firm grows through acquisitions) or to capitalize R&D (or like expenses). For some firms, though, the negative reinvestment rate may be deliberate and how we deal with it will depend on why the firm is embarking on this path:

- Firms that have overinvested in capital equipment or working capital in the past may be able to live off past investment for a number of years, reinvesting little and generating higher cash flows for that period. If this is the case, we should use the negative reinvestment rate in forecasts and estimate growth based on improvements in return on capital. Once the firm has reached the point where it is efficiently using its resources, though, we should change the reinvestment rate to reflect expected growth.
- The more extreme scenario is a firm that has decided to liquidate itself over time, by not replacing assets as they become run-down and by drawing down working capital. In this case, the expected growth should be estimated using the negative reinvestment rate. Not surprisingly, this will lead to a negative expected growth rate and declining earnings over time.

Positive and Changing Return on Capital Scenario The analysis in the preceding section is based on the assumption that the return on capital remains stable over time. If the return on capital changes over time, the expected growth rate for the firm will have a second component, which will increase the growth rate if the return on capital increases and decrease the growth rate if the return on capital decreases.

$$
\text {E x p e c t e d g r o w t h r a t e} = \mathrm {R O C} _ {\mathrm {t}} \times \text {R e i n v e s t m e n t r a t e} + \left(\mathrm {R O C} _ {\mathrm {t}} - \mathrm {R O C} _ {\mathrm {t - 1}}\right) / \mathrm {R O C} _ {\mathrm {t}}
$$

For example, a firm that sees its return on capital improve from 10 to 11 percent while maintaining a reinvestment rate of 40 percent will have an expected growth rate of:

$$
\text{Expected growth rate} = .11\times .40 + (.11 - .10) / .10 = 14.40\%
$$

In effect, the improvement in the return on capital increases the earnings on existing assets and this improvement translates into an additional growth of 10 percent for the firm.

Marginal and Average Returns on Capital So far, we have looked at the return on capital as the measure that determines return. In reality, however, there are two measures of returns on capital. One is the return earned by firm collectively on all of its investments, which we define as the average return on capital. The other is the return earned by a firm on just the new investments it makes in a year, which is the marginal return on capital.

Changes in the marginal return on capital do not create a second-order effect, and the expected growth is a product of the marginal return on capital and the reinvestment rate. Changes in the average return on capital, however, will result in the additional impact on growth chronicled earlier.

Candidates for Changing Average Return on Capital What types of firms are likely to see their return on capital change over time? One category includes firms with poor returns on capital that improve their operating efficiency and margins, and consequently their return on capital. In these firms, the expected growth rate will be much higher than the product of the reinvestment rate and the return on capital. In fact, since the return on capital on these firms is usually low before the turnaround, small changes in the return on capital translate into big changes in the growth rate. Thus, an increase in the return on capital on existing assets from 1 percent to 2 percent doubles the earnings (resulting in a growth rate of 100 percent).

Another category includes firms that have very high returns on capital on their existing investments but are likely to see these returns slip as competition enters the business, not only on new investments but also on existing investments.

# ILLUSTRATION 11.11: Estimating Expected Growth with Changing Return on Capital: Titan Cement and Motorola

In 2000, Titan Cement, a Greek cement company, reported operating income of 55,467 million drachmas on capital invested of 135,376 million drachmas. Using its effective tax rate of  $24.5\%$ , we estimate a return on capital for the firm of  $30.94\%$

$$
\text{Return on capital} = 55,467(1 - .245) / 135,376 = 30.94 \%
$$

Assume that the firm will see its return on capital drop on both its existing assets and its new investments to  $29\%$  next year and that its reinvestment rate will stay at  $35\%$ . The expected growth rate next year can be estimated as follows:

$$
\text{Expected growth rate} = .29\times .35 + (.29 - .3094) / .3094 = 3.88\%
$$

In contrast, consider Motorola in early 2000. The firm had a reinvestment rate of  $52.99\%$  and a return on capital of  $12.18\%$  in 1999. Assume that Motorola's return on capital will increase toward the industry average of  $22.27\%$  as the firm sheds the residue of its ill-fated Iridium investment and returns to its roots. Specifically, assume that Motorola's return on capital will increase from  $12.18\%$  to  $17.22\%$  over the following five years. $^{7}$  For simplicity, also assume that the change occurs linearly over the next five years. The expected growth rate in operating income each year for the next five years can then be estimated as follows: $^{8}$

Expected growth rate  $= \mathrm{ROC}_{\text{marginal}} \times$  Reinvestment rate  $\mathrm{rate}_{\text{current}}$

$$
\begin{array}{l} + \left\{\left[ 1 + \left(\mathrm {R O C} _ {\text {i n 5 y e a r s}} - \mathrm {R O C} _ {\text {c u r r e n t}}\right) / \mathrm {R O C} _ {\text {c u r r e n t}} \right] ^ {1 / 5} - 1 \right\} \\ = . 1 7 2 2 \times . 5 2 9 9 + \left\{\left[ 1 + (. 1 7 2 2 -. 1 2 1 8) / {.} 1 2 1 8 \right] ^ {1 / 5} - 1 \right\} \\ = .1630 \text{or} 16.30 \% \\ \end{array}
$$

The improvement in return on capital over the next five years will result in a higher growth rate in operating earnings at Motorola over that period. Note that this calculation assumes that the return on capital on new investments next year will be  $17.22\%$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/73668367db901965e5c3577e7bbeebdc472b3a1adb54a7d04ed21a64a878dfaa.jpg)

# chgrowth.xls: This spreadsheet allows you to estimate the expected growth rate in operating income for a firm where the return on capital is expected to change over time.

Negative Return on Capital Scenario The third and most difficult scenario for estimating growth is when a firm is losing money and has a negative return on capital. Since the firm is losing money, the reinvestment rate is also likely to be negative. To estimate growth in these firms, we have to move up the income statement and first project growth in revenues. Next, we use the firm's expected operating margin in future years to estimate the operating income in those years. If the expected margin in future years is positive, the expected operating income will also turn positive, allowing us to apply traditional valuation approaches in valuing these firms. We also estimate how much the firm has to reinvest to generate revenue growth growth, by linking revenues to the capital invested in the firm.

Growth in Revenues Many high-growth firms, while reporting losses, also show large increases in revenues from period to period. The first step in forecasting cash flows is forecasting revenues in future years, usually by forecasting a growth rate in revenues each period. In making these estimates, there are five points to keep in mind.

1. The rate of growth in revenues will decrease as the firm's revenues increase. Thus, a tenfold increase in revenues is entirely feasible for a firm with revenues of \$2 million but unlikely for a firm with revenues of \$2 billion.
2. Compounded growth rates in revenues over time can seem low, but appearances are deceptive. A compounded annual growth rate in revenues of 20 percent over ten years will increase revenues about six fold but an increase of 40 percent over 10 years will result in an almost 30-fold increase in revenues over the period.
3. While growth rates in revenues may be the mechanism that you use to forecast future revenues, you do have to keep track of the dollar revenues to ensure that they are reasonable, given the size of the overall market that the firm operates in. If the projected revenues for a firm 10 years out would give it a 90 or 100 percent share (or greater) of the overall market in a competitive marketplace, you clearly should reassess the revenue growth rate.
4. Assumptions about revenue growth and operating margins have to be internally consistent. Firms can post higher growth rates in revenues by adopting more aggressive pricing strategies but the higher revenue growth will then be accompanied by lower margins.
5. In coming up with an estimate of revenue growth, you have to make a number of subjective judgments about the nature of competition, the capacity of the firm that you are valuing to handle the revenue growth and the marketing capabilities of the firm.

# ILLUSTRATION 11.12: Estimating Revenues at Tesla Motors and LinkedIn

This illustration considers two young, high-growth companies: Tesla Motors, the electric automaker, and LinkedIn, a social media firm.

<table><tr><td></td><td colspan="2">Tesla Motors</td><td colspan="2">LinkedIn</td></tr><tr><td></td><td>Growth Rate</td><td>$ Revenues</td><td>Growth Rate</td><td>$ Revenues</td></tr><tr><td>Current</td><td></td><td>$ 117</td><td></td><td>$ 243</td></tr><tr><td>1</td><td>150.00\%</td><td>$ 292</td><td>80.00\%</td><td>$ 437</td></tr><tr><td>2</td><td>100.00\%</td><td>$ 584</td><td>70.00\%</td><td>$ 744</td></tr><tr><td>3</td><td>80.00\%</td><td>$1,051</td><td>60.00\%</td><td>$1,190</td></tr><tr><td>4</td><td>60.00\%</td><td>$1,681</td><td>50.00\%</td><td>$1,785</td></tr><tr><td>5</td><td>40.00\%</td><td>$2,354</td><td>40.00\%</td><td>$2,498</td></tr><tr><td>6</td><td>30.00\%</td><td>$3,060</td><td>32.00\%</td><td>$3,298</td></tr><tr><td>7</td><td>20.00\%</td><td>$3,672</td><td>24.00\%</td><td>$4,089</td></tr><tr><td>8</td><td>15.00\%</td><td>$4,222</td><td>16.00\%</td><td>$4,744</td></tr><tr><td>9</td><td>10.00\%</td><td>$4,645</td><td>8.00\%</td><td>$5,123</td></tr><tr><td>10</td><td>5.00\%</td><td>$4,877</td><td>4.00\%</td><td>$5,328</td></tr><tr><td>Terminal year (11)</td><td>3.50\%</td><td>$5,047</td><td>3.50\%</td><td>$5,515</td></tr></table>

Estimates of growth for the firms in the initial years are based on the growth in revenues over the past year, but those growth rates start declining as the revenues scale up and approach the growth rate of the economy near year 10.

As a check, we also examined how much the revenues at each of these firms would be in 10 years relative to more mature companies in the sector now.

We compared revenues at Tesla Motors in 10 years to those of more established automobile companies such as Ford, Volvo, Toyota, and Fiat. With 5 billion-plus in revenues, Tesla Motors will remain a very small firm in a large market.

It is difficult to find a company directly comparable to LinkedIn, but Yahoo! revenues in 2010 were about  \$6 billion. We are assuming that LinkedIn will have revenues that are close (about\$ 5.5 billion) in 10 years.

Operating Margin Forecasts Before considering how to estimate the operating margins, let us begin with an assessment of where many high-growth firms, early in the life cycle, stand when the valuation begins. They usually have low revenues and negative operating margins. If revenue growth converts low revenues into high revenues and operating margins stay negative, these firms not only will be worth nothing but are unlikely to survive. For firms to be valuable, the higher revenues eventually have to deliver positive earnings. In a valuation model, this translates into positive operating margins in the future. A key input in valuing a high-growth firm then is the operating margin you would expect it to have as it matures.

In estimating this margin, you should begin by looking at the business that the firm is in. While many new firms claim to be pioneers in their businesses and some believe that they have no competitors, it is more likely that they are the first to find a new way of delivering a product or service that was previously delivered through other channels. Thus, Amazon.com might have been one of the first online retailers, but retailing was already an established business with hundreds of players. In fact, one can consider online retailers as logical successors to catalog retailers such as L.L. Bean and Lillian Vernon. Similarly, Yahoo! might have been one of the first Internet portals, but it was following the lead of newspapers that have used content and features to attract readers and used their readership to attract advertising. Using the average operating margin of competitors in the business may strike some as conservative. After all, they would point out, Amazon can hold less inventory and does not have the burden of carrying the operating leases that a brick and mortar retailer does (on its stores) and should, therefore, be more efficient about generating its revenues. This may be true, but it is unlikely that the operating margins for online retailers can be persistently higher than their brick-and-mortar counterparts. If they were, you would expect to see a migration of traditional retailers to online retailing and increased competition among online retailers on price and products, driving the margin down.

While the margin for the business in which a firm operates provides a target value, there are still two other estimation issues that you need to confront. Given that the operating margins in the early stages of the life cycle are negative, you first have to consider how the margin will improve from current levels to the target values. Generally, the improvements in margins will be greatest in the earlier years (at least in percentage terms) and then taper off as the firm approaches maturity. The second issue is one that is linked to revenue growth. Firms may be able to post higher revenue growth with lower margins but the trade-off has to be considered. While firms generally want both higher revenue growth and higher margin, the margin and revenue growth assumptions have to be consistent.

# ILLUSTRATION 11.13: Estimating Operating Margins

To estimate the operating margins for Tesla Motors, we begin by estimating the operating margins of established firms in the automobile sector. In 2010, the average pretax operating margin for firms in this sector was  $10\%$ . For LinkedIn, we will use the average pretax operating margin of firms like Yahoo!, Google and Baidu, which is  $25\%$ .

We will assume that both Tesla Motors and LinkedIn will move toward their target margins, with greater marginal improvements in the earlier years and smaller ones in the later years. The following table summarizes the expected operating margins over time for both firms:

<table><tr><td></td><td>Tesla Motors</td><td>LinkedIn</td></tr><tr><td>Current</td><td>-69.87\%</td><td>8.23\%</td></tr><tr><td>1</td><td>-43.25\%</td><td>11.62\%</td></tr><tr><td>2</td><td>-25.50\%</td><td>13.31\%</td></tr><tr><td>3</td><td>-13.67\%</td><td>14.15\%</td></tr><tr><td>4</td><td>-5.78\%</td><td>14.58\%</td></tr><tr><td>5</td><td>-0.52\%</td><td>14.79\%</td></tr><tr><td>6</td><td>2.99\%</td><td>14.89\%</td></tr><tr><td>7</td><td>5.33\%</td><td>14.95\%</td></tr><tr><td>8</td><td>6.88\%</td><td>14.97\%</td></tr><tr><td>9</td><td>7.92\%</td><td>14.99\%</td></tr><tr><td>10</td><td>8.61\%</td><td>14.99\%</td></tr><tr><td>Terminal year</td><td>10.00\%</td><td>15.00\%</td></tr></table>

Note that while margins improve for both companies, we are assuming that it will happen faster at LinkedIn, a company that is already profitable, than at Tesla Motors, with its more substantial operating challenges. Since we estimated revenue growth in the preceding section and the margins in this one, we can now estimate the pretax operating income at each of the firms over the next 10 years:

<table><tr><td></td><td colspan="3">Tesla Motors</td><td colspan="3">LinkedIn</td></tr><tr><td></td><td>Revenues</td><td>Operating Margin</td><td>EBIT</td><td>Revenues</td><td>Operating Margin</td><td>EBIT</td></tr><tr><td>Current</td><td>$117</td><td>-69.87\%</td><td>-$82</td><td>$243</td><td>8.23\%</td><td>$20</td></tr><tr><td>1</td><td>$292</td><td>-43.25\%</td><td>-$126</td><td>$437</td><td>11.62\%</td><td>$51</td></tr><tr><td>2</td><td>$584</td><td>-25.50\%</td><td>-$149</td><td>$744</td><td>13.31\%</td><td>$99</td></tr><tr><td>3</td><td>$1,051</td><td>-13.67\%</td><td>-$144</td><td>$1,190</td><td>14.15\%</td><td>$168</td></tr><tr><td>4</td><td>$1,681</td><td>-5.78\%</td><td>-$97</td><td>$1,785</td><td>14.58\%</td><td>$260</td></tr><tr><td>5</td><td>$2,354</td><td>-0.52\%</td><td>-$12</td><td>$2,498</td><td>14.79\%</td><td>$369</td></tr><tr><td>6</td><td>$3,060</td><td>2.99\%</td><td>$91</td><td>$3,298</td><td>14.89\%</td><td>$491</td></tr><tr><td>7</td><td>$3,672</td><td>5.33\%</td><td>$196</td><td>$4,089</td><td>14.95\%</td><td>$611</td></tr><tr><td>8</td><td>$4,222</td><td>6.88\%</td><td>$291</td><td>$4,744</td><td>14.97\%</td><td>$710</td></tr><tr><td>9</td><td>$4,645</td><td>7.92\%</td><td>$368</td><td>$5,123</td><td>14.99\%</td><td>$768</td></tr><tr><td>10</td><td>$4,877</td><td>8.61\%</td><td>$420</td><td>$5,328</td><td>14.99\%</td><td>$799</td></tr><tr><td>Terminal year</td><td>$5,047</td><td>10.00\%</td><td>$505</td><td>$5,515</td><td>15.00\%</td><td>$827</td></tr></table>

As the margins move toward target levels and revenues grow, the operating income at each of the firms also increases.

# MARKET SIZE, MARKET SHARE, AND REVENUE GROWTH

Estimating revenue growth rates for a young firm in a new business may seem like an exercise in futility. While it is difficult to do, there are ways in which you can make the process tractable.

One way is to work backward by first considering the share of the overall market that you expect your firm to have once it matures, and then determining the growth rate you would need to arrive at this market share. For instance, assume that you are analyzing an online toy retailer with  \$100 million in revenues currently. Assume also that the entire toy retail market had revenues of\$ 70 billion last year. Assuming a 3 percent growth rate in overall toy market over the next 10 years and a market share of 5 percent for your firm in year 10, you would arrive at expected revenues of 4.703 billion for the firm in 10 years, and a compounded revenue growth rate of 46.98\%.

Expected revenues in 10 years = \$70 billion × 1.03 $^{10}$  × .05 = \$4.703 billion Expected compounded growth rate over next 10 years = (4,703/100) $^{1/10}$  - 1 = 0.4698 or 46.98\%

Another approach is to forecast the expected growth rate in revenues over the next three to five years based on past growth rates. Once you estimate revenues in year 3 or 5, you can then forecast a growth rate based on the rate at which companies with similar revenues grow currently. For instance, assume that the online toy retailer had revenue growth of 200 percent last year (revenues went from  \$33 million to\$ 100 million). You could forecast growth rates of 120 percent, 100 percent, 80 percent, and 60 percent for the next four years, leading to revenues of \$1.267 billion in four years. You could then look at the average growth rate posted by retail firms with revenues between \$1 billion and 1.5 billion last year and use that as the growth rate commencing in year 5.

Sales-to-Capital Ratio High revenue growth is a desirable objective, especially when accompanied by positive operating margins in future years. Firms do, however, have to invest to generate both revenue growth and positive operating margins in future years. This investment can take traditional forms (plant and equipment) but it should also include acquisitions of other firms, partnerships, investments in distribution and marketing capabilities, and research and development.

To link revenue growth with reinvestment needs, we look at the revenue generated by each dollar of capital that we invest. This ratio, called the sales-to-capital ratio, allows us to estimate how much additional investment the firm has to make to generate the projected revenue growth. This investment can be in internal projects, acquisitions, or working capital. To estimate the reinvestment needs in any year then, you divide the revenue growth that you have projected (in dollar terms) by the sales-to-capital ratio. Thus, if you expect revenues to grow by  \$1 billion and you use a sales-to-capital ratio of 2.5, you would estimate a reinvestment need for this firm of\$ 400 million (1 billion/2.5). Lower sales-to-capital ratios increase reinvestment needs (and reduce cash flows) whereas higher sales-to-capital ratios decrease reinvestment needs (and increase cash flows).

To estimate the sales-to-capital ratio, you should look at both a firm's past and the business it operates in. To measure this ratio for a firm, you divide changes in revenue each year by the reinvestment made that year. You should also look at the average ratio of sales to book capital invested in the business in which the firm operates.

Linking operating margins to reinvestment needs is much more difficult to do, since a firm's capacity to earn operating income and sustain high returns comes from the competitive advantages that it acquires, partly through internal investment and partly through acquisitions. Firms that adopt a two-track strategy in investing, where one track focuses on generating higher revenues and the other on building up competitive strengths, should have higher operating margins and values than firms that concentrate on only revenue growth.

Imputed Return on Capital One of the dangers that you face when using a sales-to-capital ratio to generate reinvestment needs is that you might underestimate or overestimate your reinvestment needs. You can keep tabs on whether this is happening and correct it when it does by also estimating the after-tax return on capital of the firm each year through the analysis. To estimate the return on capital in a future year, you divide the estimated after-tax operating income in that year by the total capital invested in that firm in that year. The former number comes from your estimates of revenue growth and operating margins, while the latter can be estimated by aggregating the reinvestment made by the firm all the way through the future year. For instance, a firm that has  \$500 million in capital invested today and is assumed to reinvest\$ 300 million next year and \$400 million the year after will have capital invested of \$1.2 billion at the end of the second year.

For firms losing money today, the return on capital will be a negative number when the estimation begins but improve as margins improve. If you reinvest too little, the return on capital in the later years will be too high, while if you don't reinvest enough, it will be too low. Too low or high relative to what, you ask? There are two comparisons that are worth making. The first is to the average return on capital for mature firms in the business in which your firm operates—mature automobile companies in the case of Tesla Motors. The second is to the firm's own cost of capital. A projected return on capital of 40 percent for a firm with a cost of capital of 10 percent in a sector where returns on capital hover around 15 percent is an indicator that the firm is investing too little for the projected revenue growth and operating margins. Decreasing the sales-to-capital ratio until the return on capital converges on 15 percent would be prudent.

# ILLUSTRATION 11.14: Estimated Sales-to-Capital Ratios and Implied Return on Capital

To estimate how much Tesla Motors and LinkedIn have to invest to generate the expected revenue growth, we estimate the current sales-to-capital ratio for each firm, the marginal sales to capital ratio in the last year, and the average sales-to-capital ratio for the businesses that each operates in:

<table><tr><td></td><td>Tesla Motors</td><td>LinkedIn</td></tr><tr><td>Firm&#x27;s sales to capital</td><td>0.26</td><td>1.93</td></tr><tr><td>Marginal sales to capital: most recent year</td><td>0.31</td><td>2.15</td></tr><tr><td>Industry average sales to capital</td><td>1.69</td><td>2.20</td></tr><tr><td>Sales-to-capital ratio used in valuation</td><td>2.00</td><td>2.20</td></tr></table>

We use the industry average of 2.20 for the sales to capital ratio for LinkedIn, a little higher than its current sales-to-capital ratio and close to the marginal ratio in the most recent year. For Tesla, we use 2.00, a little higher than the industry average of 1.69, and assume that the current numbers are a reflection of its infrastructure investments, its start-up status, and its technology roots.

Based on these estimates of the sales-to-capital ratio for each firm, we can now estimate how much each firm will have to reinvest each year for the next 10 years and the resulting return on capital:

<table><tr><td rowspan="2">Year</td><td colspan="2">Tesla Motors</td><td colspan="2">LinkedIn</td></tr><tr><td>Increase in Revenues</td><td>Reinvestment</td><td>Increase in Revenues</td><td>Reinvestment</td></tr><tr><td>1</td><td>$175</td><td>$88</td><td>$194</td><td>$88</td></tr><tr><td>2</td><td>$292</td><td>$146</td><td>$306</td><td>$139</td></tr><tr><td>3</td><td>$467</td><td>$233</td><td>$446</td><td>$203</td></tr><tr><td>4</td><td>$630</td><td>$315</td><td>$595</td><td>$270</td></tr><tr><td>5</td><td>$672</td><td>$336</td><td>$714</td><td>$324</td></tr><tr><td>6</td><td>$706</td><td>$353</td><td>$799</td><td>$363</td></tr><tr><td>7</td><td>$612</td><td>$306</td><td>$792</td><td>$360</td></tr><tr><td>8</td><td>$551</td><td>$275</td><td>$654</td><td>$297</td></tr><tr><td>9</td><td>$422</td><td>$211</td><td>$379</td><td>$172</td></tr><tr><td>10</td><td>$232</td><td>$116</td><td>$205</td><td>$93</td></tr></table>

<table><tr><td rowspan="2">Year</td><td colspan="3">Tesla Motors</td><td colspan="3">LinkedIn</td></tr><tr><td>Capital Invested at Start of Year</td><td>EBIT (1 - t)</td><td>Return on Capital</td><td>Capital Invested at Start of Year</td><td>EBIT(1 - t)</td><td>Return on Capital</td></tr><tr><td>1</td><td>$ 311</td><td>- $ 126</td><td>-40.64\%</td><td>$ 126</td><td>$ 50</td><td>40.07\%</td></tr><tr><td>2</td><td>$ 398</td><td>- $ 149</td><td>-37.38\%</td><td>$ 214</td><td>$ 59</td><td>27.70\%</td></tr><tr><td>3</td><td>$ 544</td><td>- $ 144</td><td>-26.39\%</td><td>$ 354</td><td>$101</td><td>28.58\%</td></tr><tr><td>4</td><td>$ 778</td><td>- $ 97</td><td>-12.49\%</td><td>$ 556</td><td>$156</td><td>28.06\%</td></tr><tr><td>5</td><td>$1,093</td><td>- $ 12</td><td>-1.12\%</td><td>$ 827</td><td>$222</td><td>26.82\%</td></tr><tr><td>6</td><td>$1,429</td><td>$ 91</td><td>6.40\%</td><td>$1,151</td><td>$295</td><td>25.60\%</td></tr><tr><td>7</td><td>$1,782</td><td>$ 196</td><td>10.97\%</td><td>$1,515</td><td>$367</td><td>24.21\%</td></tr><tr><td>8</td><td>$2,088</td><td>$ 291</td><td>13.92\%</td><td>$1,874</td><td>$426</td><td>22.74\%</td></tr><tr><td>9</td><td>$2,363</td><td>$ 257</td><td>10.89\%</td><td>$2,172</td><td>$461</td><td>21.21\%</td></tr><tr><td>10</td><td>$2,574</td><td>$252.08</td><td>9.79\%</td><td>$2,344</td><td>$479</td><td>20.45\%</td></tr></table>

The returns on capital at both firms converge to sustainable levels, at least relative to industry averages, by the terminal year. This suggests that our estimates of sales-to-capital ratios are reasonable.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/676f862c4ac17d3d0d432eda23c5356649aca0c339a27a2b3ab52ac58d8401c5.jpg) margins.xls: This dataset on the Web summarizes operating and net margins, by industry, for the United States.

# QUALITATIVE ASPECTS OF GROWTH

The emphasis on quantitative elements—return on capital and reinvestment rates for profitable firms, and margins, revenue growth, and sales-to-capital ratios for unprofitable firms—may strike some as skewed. After all, growth is determined by a number of subjective factors—the quality of management, the strength of a firm's marketing, its capacity to form partnerships with other firms, and the management's strategic vision, among many others. Where, you might ask, is there room in the growth equations that have been presented in this chapter for these factors?

The answer is that qualitative factors matter, but that they all ultimately have to show up in one or more of the quantitative inputs that determine growth. Consider the following:

The quality of management plays a significant role in the returns on capital that you assume firms can earn on their new investments and in how long they can sustain these returns. Thus, the fact that a firm has a well-regarded management team may be one reason why you allow a firm's return on capital to remain well above the cost of capital.

The marketing strengths of a firm and its choice of marketing strategy are reflected in the operating margins and turnover ratios that you assume for firms. Thus, it takes faith in a Coca-Cola's capacity to market its products effectively to assume a high turnover ratio and a high target margin. In fact, you can consider various marketing strategies, which trade off lower margins for higher turnover ratios, and consider the implications for value. The brand name of a firm's products and the strength of its distribution system also affect these estimates.

- Defining reinvestment broadly to include acquisitions, research and development, and investments in marketing and distribution allows you to consider different ways in which firms can grow. For some firms, reinvestment and growth come from acquisitions, while for other firms it may take the form of more traditional investments in plant and equipment. The effectiveness of these reinvestment strategies is captured in the return on capital that you assume for the future, with more effective firms having higher returns on capital.
The strength of the competition that firms face is in the background but it does determine how high excess returns (return on capital less cost of capital) will be, and how quickly they fade toward zero.

Thus, qualitative factors are quantified and the growth implications are considered. If you cannot, you should remain skeptical about whether these factors truly affect value.

Why is it necessary to impose this quantitative structure on growth estimate? One of the biggest dangers in valuing technology firms is that story telling can be used to justify growth rates that are neither reasonable nor sustainable. Thus, you might be told that Tesla Motors will grow  $100\%$  a year because the "green" movement is strong or that Coca-Cola will grow 20 percent a year because it has a great brand name. While there is truth in these stories, a consideration of how these qualitative views translate into the quantitative elements of growth is an essential step toward consistent valuations.

Can different investors consider the same qualitative factors and come to different conclusions about the implications for returns on capital, margins, and reinvestment rates, and consequently, about growth? Absolutely. In fact, you would expect differences in opinion about the future and different estimates of value. The payoff to knowing a firm and the sector it operates in better than other investors is that your estimates of growth and value will be better than theirs. Unfortunately, this does not guarantee that your investment returns will be better than theirs.

# CONCLUSION

Growth is the key input in every valuation, and there are three sources for growth rates. One is the past, though both estimating and using historical growth rates can be difficult for most firms with their volatile and sometimes negative earnings. The second source is analyst estimates of growth. Though analysts may be privy to information that is not available to the rest of the market, this information does not result in growth rates that are superior to historical growth estimates. Furthermore, the analyst's emphasis on earnings per share growth can be a problem when forecasting operating income. The third and soundest way of estimating growth is to base it on a firm's fundamentals.

The relationship of growth to fundamentals will depend on what growth rate we are estimating. To estimate growth in earnings per share, we looked at return on equity and retention ratios. To estimate growth in net income, we replaced the retention ratio with the equity reinvestment rate. To evaluate growth in operating income, we used return on capital and reinvestment rate. While the details vary from approach to approach, there are some common themes that emerge from these approaches. The first is that growth and reinvestment are linked, and estimates of one have to be linked with estimates of the other. Firms that want to grow at high rates over long periods have to reinvest to create that growth. The second is that the quality of growth can vary widely across firms, and the best measure of the quality of growth is the returns earned on investments. Firms that earn higher returns on equity and capital not only will generate higher growth, but that growth will add more to their value.

# QUESTIONS AND SHORT PROBLEMS

In the problems following, use an equity risk premium of 5.5 percent if none is specified.

1. Walgreen Company reported the following earnings per share from 1989 to 1994.

<table><tr><td>Year</td><td>EPS</td></tr><tr><td>1989</td><td>$1.28</td></tr><tr><td>1990</td><td>$1.42</td></tr><tr><td>1991</td><td>$1.58</td></tr><tr><td>1992</td><td>$1.78</td></tr><tr><td>1993</td><td>$1.98</td></tr><tr><td>1994</td><td>$2.30</td></tr></table> a. Estimate the arithmetic average and geometric average growth rate in earnings per share between 1989 and 1994. Why are they different? Which is more reliable?

b. Estimate the growth rate using a linear growth model.

c. Estimate the growth rate using a log-linear growth model.

2. BIC Corporation reported a return on equity of  $20\%$  and paid out  $37\%$  of its earnings as dividends in the most recent year.

a. Assuming that these fundamentals do not change, estimate the expected growth rate in earnings per share.

b. Now assume that you expect the return on equity to increase to  $25\%$  on both new and existing investments next year. Estimate the expected growth rate in earnings per share.

3. You are trying to estimate the expected growth in net income at Metallica Corporation, a manufacturing firm that reported \$150 million in net income in the just-completed financial year; the book value of equity at the beginning of the year was \$1 billion. The firm had capital expenditures of \$160 million, depreciation of \$100 million, and an increase in working capital of \$40 million during the year. The debt outstanding increased by \$40 million during the year. Estimate the equity reinvestment rate and expected growth in net income.
4. You are trying to estimate a growth rate for HipHop Inc., a record producer and distributor. The firm earned \$100 million in after-tax operating income on capital invested of \$800 million last year. In addition, the firm reported net capital expenditures of \$25 million and an increase in noncash working capital of \$15 million.

a. Assuming that the firm's return on capital and reinvestment rate remain unchanged, estimate the expected growth in operating income next year.

b. How would your answer to (a) change if you were told that the firm's return on capital next year will increase by  $2.5\%$ ? (Next year's return on capital = This year's return on capital + 2.5\%).

5. InVideo Inc. is an online retailer of videos and DVDs. The firm reported an operating loss of \$10 million on revenues of \$100 million in the most recent financial year. You expect revenue growth to be 100\% next year, 75\% in year 2, 50\% in year 3, and 30\% in years 4 and 5. You also expect the pretax operating margin to improve to 8\% of revenues by year 5. Estimate the expected revenues and operating income (or loss) each year for the next five years.
6. SoftTech Inc. is a small manufacturer of entertainment software that reported revenues of \$25 million in the most recent financial year. You expect the firm to grow significantly over time and capture 8\% of the overall entertainment software market in 10 years. If the total revenues from entertainment software in the most recent year amounted to \$2 billion and you expect an annual growth rate of 6\% in these revenues for the next 10 years, estimate the compounded annual revenue growth rate at SoftTech for the next 10 years.

# Closure in Valuation: Estimating Terminal Value

In the previous chapter, we examined the determinants of expected growth. Firms that reinvest substantial portions of their earnings and earn high returns on these investments should be able to grow at high rates. But for how long? And what happens after that? This chapter looks at two ways of bringing closure to a valuation: a going concern approach, where we assume that the firm continues to deliver cash flows in perpetuity and a liquidation approach, where we assume that the business is shut down and the assets are sold at some point in time.

Consider the going concern approach first. As a firm grows, it becomes more difficult for it to maintain high growth and it eventually will grow at a rate less than or equal to the growth rate of the economy in which it operates. This growth rate, labeled stable growth, can be sustained in perpetuity, allowing us to estimate the value of all cash flows beyond that point as a terminal value for a going concern. The key question that we confront is the estimation of when and how this transition to stable growth will occur for the firm that we are valuing. Will the growth rate drop abruptly at a point in time to a stable growth rate or will it occur more gradually over time? To answer these questions, we will look at a firm's size (relative to the market that it serves), its current growth rate, and its competitive advantages.

We also consider an alternate route, which is that firms do not last forever and that they will be liquidated at some point in the future. We will consider how best to estimate liquidation value and when it makes more sense to use this approach rather than the going concern approach.

# CLOSURE IN VALUATION

Since you cannot estimate cash flows forever, you generally impose closure in discounted cash flow valuation by stopping your estimation of cash flows sometime in the future and then computing a terminal value that reflects the value of the firm at that point.

$$
\text {V a l u e o f a f i r m} = \sum_ {\mathrm {t} = 1} ^ {\mathrm {t} = \mathrm {n}} \frac {\mathrm {C F} _ {\mathrm {t}}}{\left(1 + \mathrm {k} _ {\mathrm {c}}\right) ^ {\mathrm {t}}} + \frac {\text {T e r m i n a l v a l u e} _ {\mathrm {n}}}{\left(1 + \mathrm {k} _ {\mathrm {c}}\right) ^ {\mathrm {n}}}
$$

You can find the terminal value in one of three ways. One is to assume a liquidation of the firm's assets in the terminal year and estimate what others would pay for the assets that the firm has accumulated at that point. The other two approaches value the firm as a going concern at the time of the terminal value estimation. One applies a multiple to earnings, revenues, or book value to estimate the value in the terminal year. The other assumes that the cash flows of the firm will grow at a constant rate forever—a stable growth rate. With stable growth, the terminal value can be estimated using a perpetual growth model.

# Liquidation Value

In some valuations, we can assume that the firm will cease operations at a point in time in the future and sell the assets it has accumulated to the highest bidders. The estimate that emerges is called a liquidation value. There are two ways in which the liquidation value can be estimated. One is to base it on the book value of the assets, adjusted for any inflation during the period. Thus, if the book value of assets 10 years from now is expected to be 2 billion, the average age of the assets at that point is five years and the expected inflation rate is 3 percent, the expected liquidation value can be estimated as:

Expected liquidation value  $=$  Book value of assets  $\mathrm{term}$  year(1 + Inflation rate) $^{\mathrm{average~life~of~assets}}$

$$
= \$ 2 \text {b i l l i o n} (1. 0 3) ^ {5} = \$ 2. 3 1 9 \text {b i l l i o n}
$$

The limitation of this approach is that it is based on accounting book value and does not reflect the earning power of the assets.

The alternative approach is to estimate the value based on the earning power of the assets. To make this estimate, we would first have to estimate the expected cash flows from the assets and then discount these cash flows back to the present, using an appropriate discount rate. In the preceding example, for instance, if we assumed that the assets in question could be expected to generate 400 million in after-tax cash flows for 15 years (after the terminal year) and the cost of capital was 10 percent, our estimate of the expected liquidation value would be:

$$
\begin{array}{l} \text{Expected liquidation value} = \ 400 \text{million(PV of annuity,15 years @} 10\%) \\ = \$ 3. 0 4 2 \text {b i l l o n} \\ \end{array}
$$

When valuing equity, there is one additional step that needs to be taken. The estimated value of debt outstanding in the terminal year has to be subtracted from the liquidation value to arrive at the liquidation proceeds for equity investors.

# Multiple Approach

In this approach, the value of a firm in a future year is estimated by applying a multiple to the firm's earnings or revenues in that year. For instance, a firm with expected revenues of  \$6 billion, 10 years from now will have an estimated terminal value in that year of\$ 12 billion, if a value-to-sales multiple of 2 is used. If valuing equity, we use equity multiples such as price-earnings ratios to arrive at the terminal value.

Although this approach has the virtue of simplicity, the multiple determines the final value and where it is obtained can be critical. If, as is common, the multiple is estimated by looking at how comparable firms in the business today are priced by the market, the valuation becomes a relative valuation, rather than a discounted cash flow valuation. If the multiple is estimated using fundamentals, it converges on the stable growth model that is described in the next section.

All in all, using multiples to estimate terminal value, when those multiples are estimated from comparable firms, results in a dangerous mix of relative and discounted cash flow valuation. While there are advantages to relative valuation, and we consider these in a later chapter, a discounted cash flow valuation should provide you with an estimate of intrinsic value, not relative value. Consequently, the only consistent way of estimating terminal value in a discounted cash flow model is to use either a liquidation value or a stable growth model.

# Stable Growth Model

In the liquidation value approach, you are assuming that your firm has a finite life and that it will be liquidated at the end of that life. Firms, however, can reinvest some of their cash flows back into new assets and extend their lives. If you assume that cash flows, beyond the terminal year, will grow at a constant rate forever, the terminal value can be estimated as follows:

$$
\text {T e r m a l v a l u e} _ {\mathrm {t}} = \text {C a s h f l o w} _ {\mathrm {t + 1}} / (\mathrm {r} - \text {S t a b l e g r o w t h})
$$

The cash flow and the discount rate used will depend on whether you are valuing the firm or valuing equity. If you are valuing equity, the terminal value of equity can be written as:

$$
\text {T e r m a l v a l u e o f e q u i t y} _ {\mathrm {n}} = \text {C a s h f l o w t o e q u i t y} _ {\mathrm {n + 1}} / (\text {C o s t o f e q u i t y} _ {\mathrm {n + 1}} - \mathrm {g} _ {\mathrm {n}})
$$

The cash flow to equity can be defined strictly as dividends (in the dividend discount model) or as free cash flow to equity. If valuing a firm, the terminal value can be written as:

$$
\text {T e r m a l v a l u e} _ {\mathrm {n}} = \text {F r e e c a s h f o w t o f i r m} _ {\mathrm {n + 1}} / (\text {C o s t o f c a p i t a l} _ {\mathrm {n + 1}} - \mathrm {g} _ {\mathrm {n}})
$$ where the cost of capital and the growth rate in the model are sustainable forever.


In this section, we will begin by considering how high a stable growth rate can be, how to best estimate when your firm will be a stable growth firm, and what inputs need to be adjusted as a firm approaches stable growth.

Constraints on Stable Growth Of all the inputs into a discounted cash flow valuation model, none creates as much angst as estimating the stable growth rate. Part of the reason for it is that small changes in the stable growth rate can change the terminal value significantly, and the effect gets larger as the growth rate approaches the discount rate used in the estimation.

The fact that a stable growth rate is constant forever, however, puts strong constraints on how high it can be. Since no firm can grow forever at a rate higher than the growth rate of the economy in which it operates, the constant growth rate cannot be greater than the overall growth rate of the economy. In making a judgment on what the limits on a stable growth rate are, we have to consider the following three questions:


1. Is the company constrained to operate as a domestic company, or does it operate (or have the capacity to operate) multinationally? If a firm is a purely domestic company, either because of internal constraints (such as those imposed by management) or external constraints (such as those imposed by a government), the growth rate in the domestic economy will be the limiting value. If the company is a multinational or has aspirations to be one, the growth rate in the global economy (or at least those parts of the globe that the firm operates in) will be the limiting value.

2. Is the valuation being done in nominal or real terms? If the valuation is a nominal valuation, the stable growth rate should also be a nominal growth rate (i.e., include an expected inflation component). If the valuation is a real valuation, the stable growth rate will be constrained to be lower. Using a U.S. company in 2011 as an example, the stable growth rate can be as high as 2.0 percent if the valuation is done in nominal U.S. dollars but only 1 percent if the valuation is done in real terms.

3. What currency is being used to estimate cash flows and discount rates in the valuation? The limits on stable growth will vary depending on what currency is used in the valuation. If a high-inflation currency is used to estimate cash flows and discount rates, the stable growth rate will be much higher, since the expected inflation rate is added on to real growth. If a low-inflation currency is used to estimate cash flows, the stable growth rate will be much lower. For instance, the stable growth rate that would be used to value Cemex, the Mexican cement company, will be much higher if the valuation is done in Mexican pesos than in U.S. dollars.

Although the stable growth rate cannot exceed the growth rate of the economy in which a firm operates, it can be lower. There is nothing that prevents us from assuming that mature firms will become a smaller part of the economy and it may, in fact, be the more reasonable assumption to make. Note that the growth rate of an economy reflects the contributions of both young, higher-growth firms and mature, stable-growth firms. If the former grow at a rate much higher than the growth rate of the economy, the latter have to grow at a rate that is lower.

Setting the stable growth rate to be less than or equal to the growth rate of the economy not only is the consistent thing to do but it also ensures that the growth rate will be less than the discount rate. This is because there is a link between the riskless rate that goes into the discount rate and the growth rate of the economy. Note that the riskless rate can be written as:

Nominal riskless rate  $=$  Real riskless rate + Expected inflation rate

In the long term, the real riskless rate will converge on the real growth rate of the economy, and the nominal riskless rate will approach the nominal growth rate of the economy. In fact, a simple rule of thumb on the stable growth rate is that it generally should not exceed the riskless rate used in the valuation.

# CAN THE STABLE GROWTH RATE BE NEGATIVE?

The previous section noted that the stable growth rate has to be less than or equal to the growth rate of the economy. But can it be negative? There is no reason why not since the terminal value can still be estimated. For instance, a firm with 100 million in after-tax cash flows growing at -5\% a year forever and a cost of capital of 10 percent has a value of:

$$

\text {V a l u e o f f i r m} = 1 0 0 (1 -. 0 5) / [ . 1 0 - (-. 0 5) ] = \$ 6 3 3 \text {m i l l o n}

$$

Intuitively, though, what does a negative growth rate imply? It essentially allows a firm to partially liquidate itself each year until it just about disappears. Thus, it is an intermediate choice between complete liquidation and the going concern that gets larger each year forever.

This may be the right choice to make when valuing firms in industries that are being phased out because of technological advances (such as the manufacturers of landline phones, with the advent of the cellphones) or where an external and critical customer is scaling back purchases for the long term (as was the case with defense contractors after the end of the cold war).

Key Assumptions about Stable Growth In every discounted cash flow valuation, there are three critical assumptions you need to make on stable growth. The first relates to when the firm that you are valuing will become a stable growth firm, if it is not one already. The second relates to what the characteristics of the firm will be in stable growth, in terms of return on investments and costs of equity and capital. The final assumption relates to how the firm that you are valuing will make the transition from high growth to stable growth.

Length of the High Growth Period The question of how long a firm will be able to sustain high growth is perhaps one of the more difficult questions to answer in a valuation, but two points are worth making. One is that it is not a question of whether but when firms hit the stable growth wall. All firms ultimately become stable growth firms, in the best case, because high growth makes a firm larger, and the firm's size will eventually become a barrier to further high growth. In the worst-case scenario, firms do not survive and will be liquidated. The second is that high growth in valuation, or at least high growth that creates value, $^{1}$  comes from firms earning excess returns on their marginal investments. In other words, increased value comes from firms having a return on capital that is higher than the cost of capital (or a return on equity that exceeds the cost of equity). Thus, when you assume that a firm will experience high growth for the next 5 or 10 years, you are also implicitly assuming that it will earn excess returns (over and above the required return) during that period. In a competitive market, these excess returns will eventually draw in new competitors, and the excess returns will disappear.

You should look at three factors when considering how long a firm will be able to maintain high growth.

1. Size of the firm. Smaller firms are much more likely to earn excess returns and maintain these excess returns than otherwise similar larger firms. This is because they have more room to grow and a larger potential market. Small firms in large markets should have the potential for high growth (at least in revenues) over long periods. When looking at the size of the firm, you should look not only at its current market share, but also at the potential growth in the total market for its products or services. A firm may have a large market share of its current market, but it may be able to grow in spite of this because the entire market is growing rapidly.
2. Existing growth rate and excess returns. Momentum does matter, when it comes to projecting growth. Firms that have been reporting rapidly growing revenues are more likely to see revenues grow rapidly at least in the near future. Firms that are earning high returns on capital and high excess returns in the current period are likely to sustain these excess returns for the next few years.
3. Magnitude and sustainability of competitive advantages. This is perhaps the most critical determinant of the length of the high growth period. If there are significant barriers to entry and sustainable competitive advantages, firms can maintain high growth for longer periods. If, on the other hand, there are no or minor barriers to entry, or if the firm's existing competitive advantages are fading, you should be far more conservative about allowing for long growth periods. The quality of existing management also influences growth. Some top managers have the capacity to make the strategic choices that increase competitive advantages and create new ones.[2]

# COMPETITIVE ADVANTAGE PERIOD (CAP)

The confluence of high growth and excess returns that is the source of value has led to the coining of the term competitive advantage period (CAP) to capture the joint effect. This term, popularized by Michael Mauboussin at Credit Suisse First Boston, measures the period during which a firm can be expected to earn excess returns. The value of such a firm can then be written as the sum of the capital invested today and the present value of the excess returns that the firm will earn over its life. Since there are no excess returns after the competitive advantage period, there is no additional value added.

In an inventive variant, analysts sometimes try to estimate how long the competitive advantage period will have to be to sustain a current market value, assuming that the current return on capital and cost of capital remain unchanged. The resulting market-implied competitive advantage period (MICAP) can then be either compared across firms in a sector or evaluated on a qualitative basis.

# ILLUSTRATION 12.1: Length of High Growth Period

To illustrate the process of estimating the length of the high growth period, we will consider a number of companies and make subjective judgments about how long each one will be able to maintain high growth.

# CONSOLIDATED EDISON

Background: The firm has a near-monopoly in generating and selling power in the environs of New York City. In return for the monopoly, though, the firm is restricted in both its investment and its pricing policy. A regulatory commission determines how much Con Ed can raise prices, and it makes this decision based on the returns made by Con Ed on its investments; if the firm is making high returns on its investments, it is unlikely to be allowed to increase prices. Finally, the demand for power in New York is stable, as the population levels off.

Implication: The firm is already a stable growth firm. There is little potential for either high growth or excess returns.

# PROCTER & GAMBLE

Background: Procter & Gamble comes in with some obvious strengths. Its valuable brand names have allowed it to earn high excess returns (as manifested in its high return on equity of  $20.09\%$  in 2010) and sustain high growth rates in earnings over the past few decades. The firm faces two challenges. One is that it has a significant market share in a mature market in the United States, and its brand names are less recognized and therefore less likely to command premiums abroad. The other is the increasing assault on brand names in general by generic manufacturers.

Implication: Brand name can sustain excess returns and growth higher than the stable growth rate for a short period—we will assume five years. Beyond that, we will assume that the firm will be in stable growth albeit with some residual excess returns. If the firm is able to extend its brand names overseas, its potential for high growth will be higher.

# AMGEN

Background: Amgen has a stable of drugs, on which it has patent protection, that generate cash flows currently, and several drugs in its R&D pipeline. While it is the largest independent biotechnology firm in the world, the market for biotechnology products is expanding significantly and will continue to do so. Finally, Amgen has had a track record of delivering solid earnings growth.

Implication: The patents that Amgen has will protect it from competition, and the long lead time to drug approval will ensure that new products will take a while getting to the market. We will allow for 10 years of growth and excess returns.

There is clearly a strong subjective component to making a judgment on how long high growth will last. Much of what was said about the interrelationships between qualitative variables and growth toward the end of Chapter 11 has relevance for this discussion as well.

Characteristics of Stable Growth Firm As firms move from high growth to stable growth, you need to give them the characteristics of stable growth firms. A firm in stable growth is different from that same firm in high growth on a number of dimensions. In general, you would expect stable growth firms to have average risk, use more debt, have lower (or no) excess returns, and reinvest less than high growth firms. In this section, we will consider how best to adjust each of these variables.

Equity Risk When looking at the cost of equity, high growth firms tend to be more exposed to market risk (and have higher betas) than stable growth firms. Part of the reason for this is that they tend to be niche players supplying discretionary products, and part of the reason is high operating leverage. Thus, young technology or social media firms will have high betas. As these firms mature, you would expect them to have less exposure to market risk and betas that are closer to 1—the average for the market. One option is to set the beta in stable growth to 1 for all firms, arguing that firms in stable growth should all be average risk. Another is to allow for small differences to persist even in stable growth, with firms in more volatile businesses having higher betas than firms in stable businesses. We would recommend that, as a rule of thumb, stable period betas not exceed 1.2.


But what about firms that have betas well below 1, such as commodity companies? If you are assuming that these firms will stay in their existing businesses, there is no harm in assuming that the beta remains at existing levels. However, if your estimates of growth in perpetuity will require them to branch out into other businesses, you should adjust the beta upward toward 1; invoking another rule of thumb, stable period betas should not be lower than 8. betas.xls: This dataset on the Web summarizes the average levered and unlevered betas, by industry group, for firms in the United States.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/f34b509b21a35db7beb3336b7f86e7f43e98debe269989fa7bbbcab0339e5361.jpg)


Project Returns High growth firms tend to have high returns on capital (and equity) and earn excess returns. In stable growth, it becomes much more difficult to sustain excess returns. There are some who believe that the only assumption consistent with stable growth is to assume no excess returns; the return on capital is set equal to the cost of capital. While, in principle, excess returns in perpetuity may not seem reasonable, it is difficult in practice to assume that firms will suddenly lose the capacity to earn excess returns at a point in time (say 5 years or 10 years). To provide a simple example, consider Proctor and Gamble, a company that we estimated a high growth period of 5 years for in illustration 12.1. While the growth rate for P&G may drop to a stable level by year 6, the strong brand name and other competitive advantages are likely to persist for much longer (say 30 to 40 years). Rather than estimate cash flows for 30 to 40 years, we would stop estimating cash flows in year 5 but still allow the company to continue earning more than its cost of capital in perpetuity. Since entire industries often earn excess returns over long periods, assuming a firm's returns on equity and capital will move toward industry averages will yield more reasonable estimates of value.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/13f2e4cfa350be78afa2a36e5be55f80cd3d12728f7a3dfd9975b7814ab581f5.jpg) eva.xls: This dataset on the Web summarizes the returns on capital (equity), costs of capital (equity), and excess returns, by industry group, for firms in the United States.


Debt Ratios and Costs of Debt High growth firms tend to use less debt than stable growth firms. As firms mature, their debt capacity increases. When valuing firms, this will change the debt ratio that we use to compute the cost of capital. When valuing equity, changing the debt ratio will change both the cost of equity and the expected cash flows. The question of whether the debt ratio for a firm should be moved toward a more sustainable level in stable growth cannot be answered without looking at the incumbent managers' views on debt, and how much power stockholders have in these firms. If managers are willing to change their financing policy, and stockholders retain some power, it is reasonable to assume that the debt ratio will move to a higher level in stable growth; if not, it is safer to leave the debt ratio at existing levels.

As earnings and cash flows increase, the perceived default risk in the firm will also change. A firm that is currently losing  \$10 million on revenues of\$ 100 million may be rated B, but its rating should be much better if your forecasts of \$10 billion in revenues and \$1 billion in operating income come to fruition. In fact, internal consistency requires that you reestimate the rating and the cost of debt for a firm as you change its revenues and operating income. As a general rule, stable growth firms should have at least investment grade ratings (Baa or higher).

On the practical question of what debt ratio and cost of debt to use in stable growth, you should look at the financial leverage of larger and more mature firms in the industry. One solution is to use the industry average debt ratio and cost of debt as the debt ratio and cost of debt for the firm in stable growth.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/86cf42306a24c5477df928022a00bd6293a7e97e51dd8ffa48ec7bc420139395.jpg) wacc.xls: This dataset on the Web summarizes the debt ratios and costs of debt, by industry group, for firms in the United States.


Reinvestment and Retention Ratios Stable growth firms tend to reinvest less than high growth firms, and it is critical that we capture the effects of lower growth on reinvestment and that we ensure that the firm reinvests enough to sustain its stable growth rate in the terminal phase. The actual adjustment will vary depending on whether we are discounting dividends, free cash flows to equity, or free cash flows to the firm.

In the dividend discount model, note that the expected growth rate in earnings per share can be written as a function of the retention ratio and the return on equity.

Expected growth rate  $=$  Retention ratio  $\times$  Return on equity

Algebraic manipulation can allow us to state the retention ratio as a function of the expected growth rate and return on equity:

Retention ratio = Expected growth rate/Return on equity

If we assume, for instance, a stable growth rate of 3 percent (based on the growth rate of the economy) for Procter & Gamble (P&G) and a return on equity of 12 percent (based on industry averages), we would be able to compute the retention ratio of the firm in stable growth:

Retention ratio  $= 3\% /12\% = 25\%$

Procter & Gamble will have to retain 25 percent of its earnings to generate its expected growth of 3 percent; it can pay out the remaining 75 percent.

In a free cash flow to equity model, where we are focusing on net income growth, the expected growth rate is a function of the equity reinvestment rate and the return on equity:

Expected growth rate  $=$  Equity reinvestment rate  $\times$  Return on equity

The equity reinvestment rate can then be computed as follows:

Equity reinvestment rate  $=$  Expected growth rate/Return on equity

If, for instance, we assume that Coca-Cola will have a stable growth rate of 3 percent and have a return on equity in stable growth of 15 percent, we can estimate an equity reinvestment rate of  $20\%$ ; the remaining  $80\%$  can be paid out as cash flows to equity investors:

Equity reinvestment rate  $= 3\% / 15\% = 20\%$

Finally, looking at free cash flows to the firm, we estimated the expected growth in operating income as a function of the return on capital (ROC) in stable growth and the reinvestment rate:

Expected growth rate  $=$  Reinvestment rate  $\times$  Return on capital

Again, algebraic manipulation yields the following measure of the reinvestment rate in stable growth:

Reinvestment rate in stable growth  $=$  Stable growth rate/ROC where  $\mathrm{ROC}_{\mathrm{n}}$  is the return on capital that the firm can sustain in stable growth. This reinvestment rate can then be used to generate the free cash flow to the firm in the first year of stable growth.


Linking the reinvestment rate and retention ratio to the stable growth rate also makes the valuation less sensitive to assumptions about the stable growth rate. Whereas increasing the stable growth rate, holding all else constant, can dramatically increase value, changing the reinvestment rate as the growth rate changes will create an offsetting effect. The gains from increasing the growth rate will be partially or completely offset by the loss in cash flows because of the higher reinvestment rate. Whether value increases or decreases as the stable growth increases will entirely depend on what you assume about excess returns. If the return on capital is higher than the cost of capital in the stable growth period, increasing the stable growth rate will increase value. If the return on capital is equal to the stable growth rate, increasing the stable growth rate will have no effect on value. This can be proved quite easily:

$$

\text {T e r m i n a l} = \frac {\mathrm {E B I T} _ {\mathrm {n} + 1} (1 - \mathrm {t}) (1 - \text {R e i n v e s t m e n t r a t e})}{\text {C o s t o f c a p i t a l} _ {\mathrm {n}} - \text {S t a b l e g r o w t h r a t e}}

$$

Substituting in the stable growth rate as a function of the reinvestment rate, from the equation, you get:

$$

\text {T e r m i n a l} = \frac {\mathrm {E B I T} _ {\mathrm {n + 1}} (1 - \mathrm {t}) (1 - \text {R e i n v e s t m e n t r a t e})}{\text {C o s t o f c a p i t a l} _ {\mathrm {n}} - (\text {R e i n v e s t m e n t r a t e} \times \text {R e t u r n o n c a p i t a l})}

$$

Setting the return on capital equal to the cost of capital, you arrive at:

$$

\text {T e r m i n a l} = \frac {\mathrm {E B I T} _ {\mathrm {n + 1}} (1 - \mathrm {t}) (1 - \text {R e i n v e s t m e n t r a t e})}{\text {C o s t o f c a p i t a l} _ {\mathrm {n}} - (\text {R e i n v e s t m e n t r a t e} \times \text {C o s t o f c a p i t a l})}

$$

Simplifying, the terminal value can be stated as:

$$

\text {T e r m i n a l} \quad \mathrm {v a l u e} _ {\mathrm {R O C} = \mathrm {W A C C}} = \frac {\mathrm {E B I T} _ {\mathrm {n} + 1} (1 - \mathrm {t})}{\text {C o s t} \text {o f} \text {c a p i t a l} _ {\mathrm {n}}}

$$

Put simply, when there are no excess returns, your terminal value is unaffected by your assumptions about expected growth. You could establish the same proposition with equity income and cash flows, and show that a return on equity equal to the cost of equity in stable growth nullifies the positive effect of growth.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/7f4a0d23d6a6e99406566067f664f831292436a1e5fbc2c2fc2b5b3341114254.jpg) divfund.xls: This dataset on the Web summarizes retention ratios, by industry group, for firms in the United States.


![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/32ad8a20bd6406b865e16b84017e0b27fcacc4d018612292e9b8182be5470556.jpg) capex.xls: This dataset on the Web summarizes the reinvestment rates, by industry group, for firms in the United States.


# ILLUSTRATION 12.2: Stable Growth Rates and Excess Returns

Alloy Mills is a textile firm that is currently reporting after-tax operating income of \$100 million. The firm has a return on capital currently of  $20\%$  and reinvests  $50\%$  of its earnings back into the firm, giving it an expected growth rate of  $10\%$  for the next five years:

$$

\text{Expected growth rate} = 20 \% \times 50 \% = 10 \%

$$

After year 5 the growth rate is expected to drop to  $5\%$  and the return on capital is expected to stay at  $20\%$ . The terminal value can be estimated as follows:

Expected operating income in year  $6 = 100(1.10)^{5}(1.05) = \$  169.10$ million

Expected reinvestment rate from year  $5 = \mathrm{g} / \mathrm{ROC} = 5\% /20\% = 25\%$

Terminal value in year 5 = \$169.10(1 - .25)/(.10 - .05) = \$ 2,537 million

The value of the firm today would then be:

Value of firm today =  $55 / 1.10 +$ 60.5 / 1.10² + $66.55 / 1.10³ + $73.21 / 1.10⁴

+ $80.53/1.10^5 + $2,537/1.10^5 = 2,075 million

If we did change the return on capital in stable growth to  $10\%$  while keeping the growth rate at  $5\%$ , the effect on value would be dramatic:

Expected operating income in year  $6 = 100(1.10)^{5}(1.05) = \$  169.10$ million

Expected reinvestment rate from year  $5 = \mathrm{g} / \mathrm{ROC} = 5\% /10\% = 50\%$

Terminal value in year 5 =  \ {169.10}\left( {1 - {.5}}\right) /\left( {{.10} - {.05}}\right)  = \$ 1,{691}  million

Value of firm today = $55/1.10 + $60.5/1.10² + $66.55/1.10³ + $73.21/1.10⁴

+ $80.53/1.10^5 + $1,691/1.10^5 = 1,300 million

Now consider the effect of lowering the growth rate to  $4\%$  while keeping the return on capital at  $10\%$  in stable growth:

Expected operating income in year 6 = 100(1.10)^{5}(1.04) = \ 167.49 million

Expected reinvestment rate in year  $6 = \mathrm{g} / \mathrm{ROC} = 4\% /10\% = 40\%$

Terminal value in year 5 =  \ {167.49}\left( {1 - {.4}}\right) /\left( {{.10} - {.04}}\right)  = \$ 1,{675}  million

Value of firm today = $55/1.10 + $60.5/1.10² + $66.55/1.10³ + $73.21/1.10⁴

+ $96.63/1.105 + $1,675/1.105 = 1,300 million

Note that the terminal value decreases by  \$16 million but the cash flow in year 5 also increases by\$ 16 million because the reinvestment rate at the end of year 5 drops to 40\%. The value of the firm remains unchanged at 1,300 million. In fact, changing the stable growth rate to 0\% has no effect on value:

Expected operating income in year 6 = 100(1.10)^{5} = \ 161.05 million

Expected reinvestment rate in year  $6 = \mathrm{g / ROC} = 0\% /10\% = 0\%$

Terminal value in year 5 = \$161.05(1 - .0)/(.10 - .0) = \$ 1,610.5 million

Value of firm today = $55/1.10 + $60.5/1.10² + $66.55/1.10³ + $73.21/1.10⁴

+ $161.05/1.10^5 + $1,610.5/1.10^5 = 1,300 million

# ILLUSTRATION 12.3: Stable Growth Inputs

To illustrate how the inputs to valuation change as we go from high growth to stable growth, we will consider three firms—Procter & Gamble, with the dividend discount model; Coca-Cola, with a free cash flow to equity model; and Amgen with a free cash flow to firm model.

Consider Procter & Gamble first in the context of the dividend discount model. Although we do the valuation in the next chapter, note that there are three key inputs to the dividend discount model—the payout ratio (which determines dividends), the expected return on equity (which determines the expected growth rate), and the beta (which affects the cost of equity). In Illustration 12.1, we argued that Procter & Gamble would have a five-year high-growth period. The following table summarizes the inputs into the dividend discount model for the valuation of Procter & Gamble.

<table><tr><td></td><td>High Growth</td><td>Stable Growth</td></tr><tr><td>Payout ratio</td><td>50.00\%</td><td>75.00\%</td></tr><tr><td>Return on equity</td><td>20.00\%</td><td>12.00\%</td></tr><tr><td>Expected growth rate</td><td>10\%</td><td>3.00\%</td></tr><tr><td>Beta</td><td>0.90</td><td>1.00</td></tr></table> risk-free rate of  $3.5\%$  at the time). We also assume that the return on equity will drop to  $12\%$ , reflecting our assumption that returns on equity will decline for the entire industry as competition from generics eats into profit margins. The retention ratio decreases to  $25\%$ , as both growth and return on equity drop.

Note that the payout ratio, return on equity, and beta for the high growth period are based on the current year's values. The expected growth rate of  $10\%$  for the next five years is the product of the return on equity and retention ratio. In stable growth, we adjust the beta to 1, though the adjustment has little effect on value since the beta is already close to one. We assume that the stable growth rate will be  $3\%$ , just slightly below the nominal growth rate in the global economy (and the


To analyze Coca-Cola in a free cash flow to equity model, the following table summarizes our inputs for high growth and stable growth:

<table><tr><td></td><td>High Growth</td><td>Stable Growth</td></tr><tr><td>Return on equity</td><td>30.00\%</td><td>15.00\%</td></tr><tr><td>Equity reinvestment rate</td><td>25.00\%</td><td>20.00\%</td></tr><tr><td>Expected growth rate</td><td>7.50\%</td><td>3.00\%</td></tr><tr><td>Beta</td><td>0.80</td><td>0.80</td></tr></table>

In high growth, the high return on equity allows the firm to generate an expected growth rate of  $7.50\%$  a year. In stable growth, we reduce the return on equity for Coca-Cola to the industry average for beverage companies and estimate the expected equity reinvestment rate based on a stable growth rate of  $3\%$ . The beta for the firm is left unchanged at its existing level, since Coca-Cola's management has been fairly disciplined in staying focused on the core businesses.

Finally, let us consider a valuation of Amgen beginning in early 2010. The following table reports on the return on capital, reinvestment rate, and debt ratio for the firm in high growth and stable growth periods.

<table><tr><td></td><td>High Growth</td><td>Stable Growth</td></tr><tr><td>Return on capital</td><td>17.41\%</td><td>10.00\%</td></tr><tr><td>Reinvestment rate</td><td>33.23\%</td><td>30.00\%</td></tr><tr><td>Expected growth rate</td><td>5.78\%</td><td>3.00\%</td></tr><tr><td>Beta</td><td>1.65</td><td>1.10</td></tr></table>

Note that the reinvestment rate and return on capital for the firm reflect the decision we made to capitalize R&D and operating leases. The operating income is adjusted for R&D and the book value of equity is augmented by the capitalized value of R&D (see Chapter 9). The firm has a high return on capital currently, and we assume that this return will decrease in stable growth to  $10\%$  as the firm becomes larger and patents expire. Since the stable growth rate drops to  $3\%$ , the resulting reinvestment rate at Amgen will decrease to  $30\%$ . We also assume that the beta for Amgen will converge toward the market average.

For all of the firms, it is worth noting that we are assuming that excess returns continue in perpetuity by setting the return on capital above the cost of capital. While this is potentially troublesome, the competitive advantages that these firms have built up historically or will build up over the high growth phase will not disappear in an instant. The excess returns will fade over time, but moving them to or toward the cost of capital in stable growth seems like a reasonable compromise.

Transition to Stable Growth Once you have decided that a firm will be in stable growth at a point in time in the future, you have to consider how the firm will change as it approaches stable growth. There are three distinct scenarios. In the first, the firm will maintain its high growth rate for a period of time and then become a stable growth firm abruptly; this is a two-stage model. In the second, the firm will maintain its high growth rate for a period and then have a transition period when its characteristics change gradually toward stable growth levels; this is a three-stage model. In the third, the firm's characteristics change each year from the initial period to the stable growth period; this can be considered an n-stage model.


Which of these three scenarios gets chosen depends on the firm being valued. Since the firm goes from high growth to stable growth in one year in the two-stage model, this model is more appropriate for firms with moderate growth rates, where the shift will not be too dramatic. For firms with very high growth rates in operating income, a transition phase allows for a gradual adjustment not just of growth rates but also of risk characteristics, returns on capital and reinvestment rates toward stable growth levels. For very young firms or for firms with negative operating margins, allowing for changes in each year (in an n-stage model) is prudent.

# ILLUSTRATION 12.4: Choosing a Growth Pattern

Consider the three firms analyzed in Illustration 12.3. We assumed a growth rate of  $10\%$  and a high-growth period of five years for P&G, a growth rate of  $7.5\%$  and a high growth period of 10 years for Coca-Cola, and a growth rate of  $5.78\%$  and a high-growth period of 10 years for Amgen. For Procter & Gamble, we will use a two-stage model—growth of  $10\%$  for five years and  $3\%$  thereafter. For both Coca-Cola and Amgen, we will allow for a transition phase between years 6 and 10 in which the inputs will change gradually from high growth to stable growth levels. Figure 12.1 reports on how the equity reinvestment rate and expected growth change at Coca-Cola from years 6 through 10, as well as the change in the expected growth rate and reinvestment rate at Amgen over the same period.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/cbb2977e64f2574974890303dca8f2700af9fdc275559b17723ffdbc9de31fa4.jpg)
FIGURE 12.1 Transition Period Estimates: Coca-Cola and Amgen

# EXTRAORDINARY GROWTH PERIODS WITHOUT A HIGH GROWTH RATE OR A NEGATIVE GROWTH RATE

Can you have extraordinary growth periods for firms that have expected growth rates that are less than or equal to the growth rate of the economy? The answer is yes, for some firms. This is because stable growth requires not just that the growth rate be less than the growth rate of the economy, but that the other inputs into the valuation are also appropriate for a stable growth firm. Consider, for instance, a firm whose operating income is growing at 2 percent a year but whose current return on capital is 20 percent and whose beta is 1.5. You would still need a transition period in which the return on capital declined to more sustainable levels (say 12 percent) and the beta moved toward 1.

By the same token, you can have an extraordinary growth period, where the growth rate is less than the stable growth rate and then moves up to the stable growth rate. For instance, you could have a firm that is expected to see its earnings decline 5 percent a year for the next five years (which would be the extraordinary growth period) and grow 2 percent thereafter.

# THE SURVIVAL ISSUE

Implicit in the use of a terminal value in discounted cash flow valuation is the assumption that the value of a firm comes from it being a going concern with a perpetual life. For many risky firms, there is the very real possibility that they might not be in existence in 5 or 10 years, with volatile earnings and shifting technology. Should the valuation reflect this chance of failure, and, if so, how can the likelihood that a firm will not survive be built into a valuation?

# Life Cycle and Firm Survival

There is a link between where a firm is in the life cycle and survival. Young firms with negative earnings and cash flows can run into serious cash flow problems and end up being acquired by firms with more resources at bargain basement prices. Why are young firms more exposed to this problem? The negative cash flows from operations, when combined with significant reinvestment needs, can result in a rapid depletion of cash reserves. When financial markets are accessible and additional equity (or debt) can be raised at will, raising more funds to meet these funding needs is not a problem. However, when stock prices drop and access to markets becomes more limited, these firms can be in trouble.

A widely used measure of the potential for a cash flow problem for firms with negative earnings is the cash burn ratio, which is estimated as the cash balance of the firm divided by its earnings before interest, taxes, depreciation, and amortization (EBITDA).

where EBITDA is a negative number and the absolute value of EBITDA is used to estimate this ratio. Thus a firm with a cash balance of 1 billion and EBITDA of -\ 1.5 billion will burn through its cash balance in eight months.

# Likelihood of Failure and Valuation

One view of survival is that the expected cash flows that you use in a valuation reflect cash flows under a wide range of scenarios from very good to abysmal and the probabilities of the scenarios occurring. Thus, the expected value already has built into it the likelihood that the firm will not survive. Any market risk associated with survival or failure is assumed to be incorporated into the cost of capital. Firms with a high likelihood of failure will therefore have higher discount rates and lower expected cash flows.

Another view of survival is that discounted cash flow valuations tend to have an optimistic bias and that the likelihood that the firm will not survive is not considered adequately in the value. With this view, the discounted cash flow value that emerges from the analysis in the prior section overstates the value of operating assets and has to be adjusted to reflect the likelihood that the firm will not survive to deliver its terminal value or even the positive cash flows that you have forecast in future years.

# Should You or Should You Not Discount Value for Survival?

For firms that have substantial assets in place and relatively small probabilities of distress, the first view is the more appropriate one. Attaching an extra discount for nonsurvival is double counting risk.

For younger and smaller firms, it is a tougher call and depends on whether expected cash flows incorporate the probability that these firms may not make it past the first few years. If they do, the valuation already reflects the likelihood that the firms will not survive past the first few years. If they do not, you do have to discount the value for the likelihood that the firm will not survive the near future. One way to estimate this discount is to estimate a probability of failure, and adjust the operating asset value for this probability:

$$

\begin{array}{l} \text {A d j u s t e d v a l u e} = \text {D i s c o u n t e d c a s h f l o w v a l u e (1 - P r o b a b i l i t y o f d i s t r e s s)} \\ \quad + \text {D i s t r e s s e d s a l e v a l u e (P r o b a b i l i t y o f d i s t r e s s)} \end{array}

$$

For a firm with a discounted cash flow value of \$1 billion on its assets, a distress sale value of \$500 million and a 20 percent probability of distress, the adjusted value would be 900 million:

$$

\text {A d j u s t e d v a l u e} = \$ 1, 0 0 0 (. 8) + \$ 5 0 0 (. 2) = \$ 9 0 0 \text {m i l l o n}

$$

There are two points worth noting here. It is not the failure to survive per se that causes the loss of value but the fact that the distressed sale value is at a discount on the fair value. The second is that this approach requires estimating the probability of failure. This probability is difficult to estimate because it will depend upon both the magnitude of the cash reserves of the firm (relative to its cash needs) and the state of the market. In buoyant equity markets, even firms with little or no cash can survive because they can access markets for more funds. Under more negative market conditions, even firms with significant cash balances may find themselves under threat.

# ESTIMATING THE PROBABILITY OF DISTRESS

There are two ways in which we can estimate the probability that a firm will not survive. One is to draw on the past, look at firms that have failed, compare them to firms that did not, and look for variables that seem to set them apart. For instance, firms with high debt ratios and negative cash flows from operations may be more likely to fail than firms without these characteristics. In fact, you can use statistical techniques such as probits to estimate the probability that a firm will fail. To run a probit, you would begin, for instance, with all listed firms in 1990 and their financial characteristics, identify the firms that failed during the 1991-1999 time period and then estimate the probability of failure as a function of variables that were observable in 1990. The output, which resembles regression output, will then let you estimate the probability of default for any firm today.

The other way of estimating the probability of default is to use the bond rating for the firm, if it is available. For instance, assume that Tesla Motors has a B rating. An empirical examination of B-rated bonds over the past decade reveals that the likelihood of default with this rating is 36.80 percent. While this approach is simpler, it is limiting insofar as it can be used only for rated firms, and it assumes that the standards used by ratings agencies have not changed significantly over time.

# CLOSING THOUGHTS ON TERMINAL VALUE

The role played by the terminal value in discounted cash flow valuations has often been the source of much of the criticism of the discounted cash flow approach. Critics of the approach argue that too great a proportion of the discounted cash flow value comes from the terminal value and that it is easy to manipulate the terminal value to yield any number you want. They are wrong on both counts.

It is true that a large portion of the value of any stock or equity in a business comes from the terminal value, but it would be surprising if it were not so. When you buy a stock or invest in the equity in a business, consider how you get your returns. Assuming that your investment is a good investment, the bulk of the returns come not while you hold the equity (from dividends or other cash flows) but when you sell it (from price appreciation). The terminal value is designed to capture the latter. Consequently, the greater the growth potential in a business, the higher the proportion of the value that comes from the terminal value.

Is it easy to manipulate the terminal value? We concede that terminal value is manipulated often and easily, but it is because analysts either use multiples to get these values or because they violate one or both of two basic propositions in stable growth models. One is that the growth rate cannot exceed the growth rate of the economy.

The other is that firms have to reinvest enough in stable growth to generate the growth rate. In fact, as we showed earlier in the chapter, it is not the stable growth rate that drives value as much as what we assume about excess returns in perpetuity. When excess returns are zero, changes in the stable growth rate have no impact on value.

# CONCLUSION

The value of a firm is the present value of its expected cash flows over its life. Since firms have infinite lives, you apply closure to a valuation by estimating cash flows for a period and then estimating a value for the firm at the end of the period—a terminal value. Many analysts estimate the terminal value using a multiple of earnings or revenues in the final estimation year. If you assume that firms have infinite lives, an approach that is more consistent with discounted cash flow valuation is to assume that the cash flows of the firm will grow at a constant rate forever beyond a point in time. When the firm that you are valuing will approach this growth rate, which you label a stable growth rate, is a key part of any discounted cash flow valuation. Small firms that are growing fast and have significant competitive advantages should be able to grow at high rates for much longer periods than larger and more mature firms, without these competitive advantages. If you do not want to assume an infinite life for a firm, you can estimate a liquidation value based on what others will pay for the assets that the firm has accumulated during the high-growth phase.

# QUESTIONS AND SHORT PROBLEMS

In the problems following, use an equity risk premium of 5.5 percent if none is specified.

1. Ulysses Inc. is a shipping company with 100 million in earnings before interest and taxes that is expected to have earnings growth of 10\% for the next five years. At the end of the fifth year, you estimate the terminal value using a multiple of 8 times operating income (which is the average for the sector).

a. Estimate the terminal value of the firm.
b. If the cost of capital for Ulysses is  $10\%$ , the tax rate is  $40\%$ , and you expect the stable growth rate to be  $5\%$ , what is the return on capital that you are assuming in perpetuity if you use a multiple of 8 times operating income?

2. Genoa Pasta manufactures Italian food products and currently earns 80 million in earnings before interest and taxes. You expect the firm's earnings to grow 20 percent a year for the next six years and 5\% thereafter. The firm's current after-tax return on capital is 28\%, but you expect it to be halved after the sixth year. If the cost of capital for the firm is expected to be 10\% in perpetuity, estimate the terminal value for the firm. (The tax rate for the firm is 40\%).

3. Lamps Galore Inc. manufactures table lamps and earns an after-tax return on capital of  $15\%$  on its current capital invested (which is \$100 million). You expect the firm to reinvest  $80\%$  of its after-tax operating income back into the business for the next four years and  $30\%$  thereafter (the stable growth period). The cost of capital for the firm is  $9\%$ .

a. Estimate the terminal value for the firm (at the end of the fourth year).
b. If you expect the after-tax return on capital to drop to  $9\%$  after the fourth year, what would your estimate of terminal value be?

4. Bevan Real Estate Inc. is a real estate holding company with four properties. You estimate that the income from these properties, which is currently \$50 million after taxes, will grow 8\% a year for the next 10 years and 3\% thereafter. The current market value of the properties is \$500 million, and you expect this value to appreciate at 3\% a year for the next 10 years.

a. Estimate the terminal value of the properties, based on the current market value and the expected appreciation rate in property values.
b. Assuming that your projections of income growth are right, what is the terminal value as a multiple of after-tax operating income in the tenth year?
c. If you assume that no reinvestment is needed after the tenth year, estimate the cost of capital that you are implicitly assuming with your estimate of the terminal value.

5. Latin Beats Corporation is a firm that specializes in Spanish music and videos. In the current year, the firm reported \$20 million in after-tax operating income, \$15 million in capital expenditures, and 5 million in depreciation. The firm expects all three items to grow at 10\% for the next five years. Beyond the fifth year, the firm expects to be in stable growth and grow at 4\% a year in perpetuity. You assume that earnings, capital expenditures, and depreciation will grow at 4\% in perpetuity and that your cost of capital is 12\%. (There is no working capital.) a. Estimate the terminal value of the firm.

b. What reinvestment rate and return and capital are you implicitly assuming in perpetuity when you do this?
c. What would your terminal value have been if you had assumed that capital expenditures offset depreciation in stable growth?
d. What return on capital are you implicitly assuming in perpetuity when you set capital expenditures equal to depreciation?

6. Crabbe Steel owns a number of steel plants in Pennsylvania. The firm reported after-tax operating income of \$40 million in the most recent year on capital invested of \$400 million. The firm expects operating income to grow 7\% a year for the next three years, and 3\% thereafter.

a. If the firm's cost of capital is  $10\%$  and you expect the firm's current return on capital to continue in perpetuity, estimate the value at the end of the third year.
b. If you expect operating income to stay fixed after year 3 (what you earn in year 3 is what you will earn every year thereafter), estimate the terminal value.
c. If you expect operating income to drop  $5\%$  a year in perpetuity after year 3, estimate the terminal value.

7. How would your answers to the preceding problem change if you were told that the cost of capital for the firm is  $8\%$ ?


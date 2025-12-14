---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Riskless Rates and Risk Premiums
linter-yaml-title-alias: Riskless Rates and Risk Premiums
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


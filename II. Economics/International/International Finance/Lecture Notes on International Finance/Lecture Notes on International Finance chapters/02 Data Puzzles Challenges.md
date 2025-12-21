---
title: Puzzles: Challenges to Making Sense of Data
parent_directory: Lecture Notes on International Finance chapters
formatted: 2025-12-21 12:00:00 PM
formatter_model: grok-code-fast-1
cli_tool: opencode
primary_tags:
  - exchange rate puzzles
  - currency risk premium
  - international imbalances
  - covered interest parity
secondary_tags:
  - volatility puzzle
  - exchange rate disconnect
  - currency comovement
  - exorbitant privilege
  - global financial cycle
  - uncovered interest parity
  - flight to safety
cssclasses: academia
---

# Puzzles: Challenges to Making Sense of Data

## Summary

- The stochastic properties of the exchange rate movement—cyclicality, volatility, expected return, and comovement—exhibit puzzling patterns that are difficult to explain by the complete-market benchmark model.  
- Combining bond and currency forward positions generates non-zero risk-free returns. These near-arbitrage spreads also require significant modifications on the benchmark model.  
- International portfolio quantities and capital flows exhibit strong asymmetry and cyclicality, which also impose important restrictions on how we specify the model.

## 2.A Challenges to Making Sense of Exchange Rates

The two-country economy we derived in the previous chapter is a direct extension of the standard one-country real business cycle model. When pioneers in this field confront the model's implications with the exchange rate data, many puzzles emerge. Each puzzle sheds light on a dimension of the exchange rate data that is at odds with the benchmark model, and serves as a useful landmark to guide us to think about how to make progress in the theoretical literature.

In this section, we build on the complete-market solution derived from the previous chapter. In particular, we are going to focus on Eq. (1.16), reproduced below, which relates the equilibrium exchange rate movement to the SDFs:

$$
\Delta e_{t + 1} = m_{t + 1} - m_{t + 1}^{*}.
$$

As this lecture note focuses on the theoretical foundation, we only provide a brief overview of the empirical puzzles. For more comprehensive reviews of the empirical literature, see the lecture notes by Ralph Koijen and Stijn Van Nieuwerburgh<sup>1</sup> and the lecture notes from Stanford Big-Data Initiative in International Macro-Finance.<sup>2</sup>

[^1]: https://www.koijen.net/phd-notes-empirical-asset-pricing.html  
[^2]: https://www.gsb.stanford.edu/faculty-research/faculty/conferences/big-data-initiative-international-macro-finance/videos-codes

### 2.A.1 Volatility Puzzle

If we take an unconditional variance on both the left- and right-hand sides of Eq. (1.16), we obtain

$$
\operatorname{var}(\Delta e_{t + 1}) = \operatorname{var}(m_{t + 1} - m_{t + 1}^{*}) = \operatorname{var}(m_{t + 1}) + \operatorname{var}(m_{t + 1}^{*}) - 2 \operatorname{cov}(m_{t + 1}, m_{t + 1}^{*}),
$$

which states that the exchange rate variance should be equal to the variance of the SDF differential, which can be decomposed to the sum of SDF variances minus two times the SDF covariance.

By the Hansen and Jagannathan [1991] bound, we can derive a lower bound on the SDF volatility based on the Sharpe ratio of any risky asset with return  $\tilde{r}$ :

$$
\operatorname{st d} \left(m_{t + 1}\right) \geq \exp \left(- r^{f}\right) \left| \frac{\mathbb {E} \left[ \tilde {r} - r^{f} \right]}{\operatorname{st d} (\tilde {r})} \right|.
$$

For example, if the stock market has a Sharpe ratio of 0.6 per annum, then, the SDF's volatility must be at least roughly  $60\%$  per annum. There may be other trading strategies that produce higher Sharpe ratios, implying an even higher SDF volatility.

Brandt, Cochrane, and Santa-Clara [2006] compares the implied SDF volatility with the exchange rate movement's volatility. Between developed economies, the exchange rate movement's volatility is roughly  $10\%$  per annum, which is much lower than the SDF volatility. Then, if markets are complete, either the exchange rate movement's volatility is anomalously low, or the correlation between home and foreign SDFs is incredibly high, which implies a high degree of international risk-sharing.

This puzzle triggers two responses in the subsequent literature. First, many papers stay within the complete-market benchmark but posit mechanisms that generate a high correlation between home and foreign SDFs. Chapter 3 develops this idea in detail. Second, other papers deviate from the complete-market benchmark and study alternative settings in which Eq. (1.16) do not hold. Chapters 4 and 5 develop some of these ideas in detail.

### 2.A.2 Exchange Rate Disconnect

Use the definition of the SDFs in Section 1.A, we can rewrite Eq. (1.16) as

$$
\Delta e_{t + 1} = \Delta \log u^{\prime} (c_{t + 1}) - \Delta \log u^{\prime} (c_{t + 1}^{*}),
$$

which implies that the exchange rate movement should be closely related to the consumption growth or other business cycle variables. For example, if we assume a power utility, i.e.,  $u(c) = c^{1 - \gamma} / (1 - \gamma)$ ,

then, the exchange rate movement should be perfectly correlated with the consumption growth differential between home and foreign countries. In other words, the exchange rate has to be strongly countercyclical with respect to the local consumption growth.

This implication is at odds with the data. Meese and Rogoff [1983], Backus and Smith [1993] are among the earlier papers that observe a lack of correlation between exchange rate movements and economic fundamentals such as the consumption growth<sup>3</sup>. Backus and Smith [1993] directly compare the exchange rate movement and the consumption growth differential between OECD countries, which gives rise to the Backus-Smith regression that is commonly used by subsequent papers:

$$
\Delta e_{t + 1} = \alpha + \beta \Delta (c_{t + 1}^{*} - c_{t + 1}) + \varepsilon_{t + 1}.
$$

While the complete-market benchmark model with power utility predicts a positive regression coefficient  $\beta$ , empirical estimates of  $\beta$  are usually around zero or even negative, which implies that the exchange rate movement is acyclical or even mildly procyclical with respect to the local consumption growth.

In addition to consumption and fundamental variables, the exchange rate movements are not easily spanned by bond returns, either [Chernov and Creal, 2023].

Attempts to theoretically resolve this disconnect between exchange rates and economic fundamentals again fall under the two categories above. First, within the complete-market benchmark, we can posit mechanisms that generate volatile exchange rates while keeping their correlation with economic fundamentals low. This can be done by considering richer preferences or additional (and usually unobservable) drivers of the SDFs, or both. Second, we consider deviations from the complete-market benchmark, which generate wedges in the Euler equations that disentangle the exchange rates from the economic fundamentals that ought to drive the SDFs.

### 2.A.3 Currency Risk Premium in the Cross-section

Besides exchange rate volatility and correlation with economic fundamentals, currency returns also have several salient patterns. Consider first the unconditional expected returns in the cross-section of currencies. According to the derivation in Section 1.B,

$$
\mathbb{E}[rx_{t + 1}] = \mathbb{E}[rp_{t}] \stackrel{\mathrm{def}}{=} \mathbb{E}\left[ - \operatorname{cov}_{t}(m_{t + 1}^{*}, \Delta e_{t + 1}) - \frac{1}{2} \operatorname{var}_{t}(\Delta e_{t + 1}) \right].
$$

Among developed countries, some currencies like Australian dollar and New Zealand dollar have persistently high excess returns

3 Also see Kollmann [1995], Engel and West [2005].

against the U.S. dollar, whereas some currencies like Japanese Yen and Swiss Francs have persistently low excess returns against the U.S. dollar.

Moreover, currencies' average returns are also correlated with their interest rates. Low-return currencies like Japanese Yen and Swiss Francs tend to have low interest rates, while high-return currencies like Australian dollar and New Zealand dollar tend to have high interest rates. Let  $rx_{t+1}^{i}$  denote the log excess return of currency  $i$  against the dollar. Then, if we regress the realized currency return on ex-ante interest rates in the cross-section of currencies:

$$
r x_{t + 1}^{i} = \alpha_{t}^{i} + \beta_{t} (r_{t}^{i} - r_{t}^{\$}) + \varepsilon_{t + 1}^{i},
$$

the slope coefficient  $\beta_{t}$  tends to be positive. As a result, if we sort currencies into portfolios based on their interest rates and buy high interest rate currencies against low interest rate currencies, which may produce more stable differences in currency risk premia [Lustig and Verdelhan, 2007], we obtain a carry trade portfolio that offers high average returns.

### 2.A.4 Currency Risk Premium in the Time Series

The positive association between interest rates and currency returns applies to not only the cross-section of currencies but also the time series of a specific currency pair. Fama [1984] first shows this result using the forward premium, which is the difference between the currency forward rate and the spot exchange rate. A forward contract allows investors to lock in the foreign exchange rate at a fixed rate  $f_{t}^{i}$  in the next period. Fama [1984] regresses the currency excess return on the ex-ante forward premium in the times series of currency  $i$  against the U.S. dollar:

$$
r x_{t + 1}^{i} = \alpha^{i} + \beta (f_{t}^{i} - e_{t}^{i}) + \varepsilon_{t + 1}^{i},
$$

and obtain a positive regression coefficient  $\beta$ . This result is known as the Forward Premium Puzzle, because in models with risk-neutral households, the expected currency excess return should be zero and uncorrelated with the forward premium.

When there is no arbitrage, the covered interest rate parity (CIP) holds (see Section 2.A.6 for more details):

$$
f_{t}^{i} - e_{t}^{i} = r_{t}^{i} - r_{t}^{\S}. \tag {2.1}
$$

As a result, we obtain very similar results if we regress the currency excess return on interest rate differential instead of the forward premium:

$$
r x_{t + 1}^{i} = \alpha^{i} + \beta (r_{t}^{i} - r_{t}^{\$}) + \varepsilon_{t + 1}^{i},
$$

and the slope coefficient  $\beta$  tends to be positive. This result is often framed as the violation of the uncovered interest rate parity (UIP), which holds when the interest rate differential does not predict the currency return:

$$
\mathbb {E}_{t} [ r x_{t + 1}^{i} ] = 0 \cdot (r_{t}^{i} - r_{t}^{\$}).
$$

Equivalently, since the expected excess return is equal to the exchange rate movement plus the interest rate differential, the UIP also implies that the interest rate differential will be exactly offset by the exchange rate movement:

$$
\mathbb {E}_{t} \bigl [ \Delta e_{t + 1}^{i} \bigr ] = - 1 \cdot \bigl (r_{t}^{i} - r_{t}^{\$} \bigr).
$$

As such, it is equivalent to test whether the interest rate differential predicts future exchange rate movement or whether it predicts future currency excess return.

A model that seeks to tackle the risk premium puzzles should be able to explain (1) why there are unconditional differences between currencies such as the Japanese Yen vs. the Australian dollar, and (2) why the interest rates vary over time and are correlated with non-trivial variations in the conditional currency expected returns, in particular in the U.S. dollar. To explore the relation between the currency return predictability in the cross-section and the currency return predictability in the time series, Hassan and Mano [2019] conduct a decomposition of currency risk premia into a cross-currency component, a cross-time component, and a residual component. They show that the cross-sectional and time-series patterns may be driven by different forces:

The simplest model that the data do not reject features a cross-sectional asymmetry that makes some currencies pay permanently higher expected returns than others, and larger time series variation in expected returns on the U.S. dollar than on other currencies.

### 2.A.5 Exchange Rate Comovements

While the exchange rate movements are disconnected from the economic fundamentals, they are highly correlated across countries and exhibit a factor structure. According to Verdelhan [2018], two common factors, carry and dollar, account for  $18\%$  to  $80\%$  of the monthly exchange rate movements.

Moreover, these common factors also price the cross-section of currency risk premia [Lustig, Roussanov, and Verdelhan, 2011]. More precisely, let  $f_{t}$  denote a common factor (which can be easily extended to a vector of factors). We regress the currency excess return

or the exchange rate movement on the common factor:

$$
r x_{t}^{i} = \alpha^{i} + \beta^{i} f_{t} + \varepsilon_{t}^{i}.
$$

The slope coefficient  $\beta^i$  measures the currency's exposure to the factor. To the extent that the factor proxies for systematic risks, investors require a higher compensation if the currency has a higher risk exposure. Then, we expect to find a positive association between the currency's expected excess return and its factor loading:

$$
\mathbb {E} [ r x_{t + 1}^{i} ] \propto \beta^{i}.
$$

This alignment of risk exposures and risk premia, central to all asset pricing, is also confirmed in the currency market.

### 2.A.6 Covered Interest Rate Parity Violation and Convenience Yields

The exchange rate puzzles above are all related to the stochastic properties of exchange rates. A more recent literature examines returns from currency market strategies that have no risks, at least in theory. The fact that these risk-free strategies earn non-zero returns suggests violations of the no-arbitrage condition, and could therefore shed light on the frictions and preferences faced by the investors in the international financial markets.

The covered interest rate parity (CIP) describes the relation between the forward premium and the interest rate differential, which is given by Eq. (2.1), reproduced below,

$$
f_{t}^{i} - e_{t}^{i} = r_{t}^{i} - r_{t}^{\S}.
$$

This parity holds in frictionless markets because the investors can get access to the home risk-free rate by either investing in the home bond with a return of  $r_t^{\mathbb{S}}$ , or investing in the foreign bond and hedging the exchange rate risk using the forward contract, which has a net return of  $r_t^i - f_t^i + e_t^i$ . In the absence of arbitrage, these two risk-free rates in home currency units must be equal.

Traditionally, this is regarded as an identity since its deviation, known as the CIP deviation, will be quickly exploited by the arbitrageurs who actively trade in both the currency forward market and the interest rate market. Indeed, if we use the home and foreign Libor rates as proxies for the home and foreign interest rates  $r_t$  and  $r_t^*$ , this condition holds quite tightly before the Global Financial Crisis. However, Du, Tepper, and Verdelhan [2018b] shows that, after the crisis, this condition breaks down and there is non-trivial variations in both the time series and the cross-section of the Libor CIP deviation.

We use the Libor CIP basis to measure the severity of the Libor CIP deviation, defined as

$$
x_{t}^{L i b o r} \stackrel {\mathrm{de f}} {=} l i b o r_{t}^{\S} - l i b o r_{t}^{i} + (f_{t}^{i} - e_{t}^{i}).
$$

Figure 2.1 plots the Libor CIP basis between the U.S. and the average developed countries, which is very close to o before the Global Financial Crisis, but has been persistently negative since then. A negative Libor CIP basis means that the dollar Libor rate is below the foreign Libor rate after adjusting for the exchange rate risk, which makes the dollar cheaper to borrow.

Similarly, the Treasury CIP basis is defined by using the Treasury yields as proxies for the interest rates  $r_t$  and  $r_t^*$ :

$$
x_{t}^{T r e a s} \stackrel {\mathrm{de f}} {=} r_{t}^{\mathbb {S}} - r_{t}^{i} + (f_{t}^{i} - e_{t}^{i}).
$$

Figure 2.1 also plots the Treasury CIP basis. Unlike the Libor CIP basis, the Treasury CIP basis has been negative both before and after the Global Financial Crisis [Du, Im, and Schreger, 2018a, Jiang, Krishnamurthy, and Lustig, 2018]. In other words, the U.S. government has been able to borrow at a lower interest rate than the foreign governments, after adjusting for the exchange rate risk. The Treasury CIP deviation will play a central role when we discuss bond convenience yields in Chapter 4.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/24bf59715ba3b4713233f953b896e387fb82ff4e78eb3bfb77017f6e05fad443.jpg)  
Figure 2.1: U.S. Treasury and Libor CIP Basis. Data source: Jiang, Krishnamurthy, and Lustig [2021a].

### 2.A.7 Currency Risk Premia across Horizons

We can also consider the currency returns across multiple horizons, which can be achieved by either rolling over short-term debt positions in home and foreign currencies, or by investing in long-term

debt positions. Lustig, Stathopoulos, and Verdelhan [2019] show that the long-run UIP condition, constructed from long-run exchange rate movements and long-term bond yields, holds in complete markets with stationary exchange rates, because the currency risks are correctly priced in the long-term bond yields.

Engel [2016] shows that high interest rate currencies not only have higher expected returns in the short term, but also are stronger than can be accounted for by the path of expected real interest differentials. In other words, high interest rates must predict lower currency returns in the long term. Relatedly, Dahlquist and Pénasse [2022], Chernov and Creal [2023] show that the exchange rate level predicts currency returns. Thus, a coherent account of the multi-horizon currency returns involves the interest rate predicting higher currency returns and higher exchange rate levels in the short term, and the elevated exchange rate levels predicting lower currency returns in the medium-to-long term.

## 2.B Challenges to Making Sense of Quantities and Flows

### 2.B.1 Global Imbalances

We start with the U.S. net external imbalances vis-à-vis the rest of the world. We consider the equity-like, riskier asset classes and the debt-like, safer asset classes separately. Let us define the net risky position as the sum of portfolio equity assets and foreign direct investment (FDI) assets minus portfolio equity liabilities and FDI liabilities, and define the net safe position as the reserve assets plus debt assets minus debt liabilities [Gourinchas, Rey, and Sauzet, 2019].

Figure 2.2 shows the U.S. net risky and safe positions normalized by GDP, from 1970 to 2021. We make three observations. First, on average, the U.S. net risky position is positive and the U.S. net safe position is negative. In other words, the U.S. holds more foreign risky assets than it issues to the rest of the world, which implies that the U.S. is a net lender of risky assets. On the other hand, the U.S. holds less foreign safe assets than it issues, which implies that the U.S. is a net borrower of safe assets.

Second, these net asset positions have notable cyclical properties. Risky assets tend to depreciate during recessions, whereas safe assets tend to appreciate. As a result, during the 2008 Global Financial Crisis and the early-2000 stock market crash, the U.S. net risky position contracted while its net safe position expanded.

Third, the U.S. net safe position has been widening steadily since mid-1980s. Currently (end of 2021), it is about  $50\%$  of the U.S. GDP, with a large fraction attributable to the U.S. government debt. In

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/54e2de7525ade5a9d50fc768a7751fc3afbf51d4a9f5ac44472a3cb6501b7968.jpg)  
Figure 2.2: U.S. Net External Imbalances. The shaded areas represent NBER recessions. Data source: Lane and Milesi-Ferretti [2007].

comparison, the U.S. net risky position widened before 2008, but it has been contracting since 2010. This contraction is driven by a rising foreign demand for the U.S. equity assets.

We also sum up the U.S. net risky and safe positions to obtain the U.S. net foreign assets (NFA). This is equal to the difference between the foreign assets held by the U.S. investors (i.e., the U.S. external assets) and the U.S. assets held by the foreign investors (i.e., the U.S. external liabilities). Figure 2.3 shows that the U.S. NFA has been widening steadily since the 1980s, and the widening tends to accelerate during recessions. The widening in the past decade is also notable: the U.S. NFA expanded from  $-30\%$  in early 2010s to  $-80\%$  right now, at a speed never seen before.

As we will see in Chapter 7, these imbalances reflect a fundamental asymmetry between the U.S. and the rest of the world. They play an important role in our understanding of the international monetary system, as they are closely tied to the global risk-sharing arrangements and the unique position of the U.S. and the dollar.

### 2.B.2 The Exorbitant Privilege and Duty

Changes in the U.S. external imbalances are driven by both the quantity of capital flows into and out of the U.S. and the returns on the existing assets and liabilities. When we examine the latter component, we find that the U.S. tends to earn a higher return on its external assets relative to what it pays to foreigners on its external liabilities. To describe this phenomenon, the French Minister of Finance Valery Giscard d'Estaing coined the term "exorbitant privilege" in 1965 [Gourinchas and Rey, 2007b, Gourinchas, Rey, and Govillot,

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/d37a50994c417b08b57ab4963cb7c0f2d5271650fdf995963c905593c514502b.jpg)  
Figure 2.3: U.S. Net Foreign Assets. The shaded areas represent NBER recessions. Data source: Lane and Milesi-Ferretti [2007].

2010, Gourinchas, Rey, and Truempler, 2012]. This exorbitant privilege has been allowing the U.S. to run persistent current account deficits despite being a net debtor to the rest of the world as we saw in Figure 2.3.

The superior return earned by the U.S. can be attributed to two factors. First, as we noted in the discussion of the global imbalances, the U.S. holds more foreign risky assets that have higher average returns, whereas the foreigners hold more U.S. safe assets that have lower average returns. As a result, despite the fact that the U.S. holdings of foreign assets are lower than the foreign holdings of the U.S. assets, the U.S. manages to earn a risk premium on average because of the return differential between the riskier and the safer assets.

Second, when we compare within the class of safe assets, the U.S. is able to borrow at lower interest rates. The U.S. safe assets earn convenience yields, which are often attributed to the U.S. dollar being the dominant reserve currency.

These two factors both contribute to the U.S. earning a net portfolio income from the foreigners. Figure 2.4 plots the annual valuation change and dividend payouts from the U.S. external assets and liabilities, normalized by the U.S. GDP. These series describe the total amount of investment profits that U.S. investors receive abroad and vice versa. Their difference is the net financial gains or losses between the U.S. and the rest of the world.

We make several observations about the U.S. net financial payoff. First, on average, the payoff that U.S. receives from foreign assets exceeds the payoff that U.S. pays to foreigners on its external liabilities. The payoff includes both the dividend or coupon payments and

the capital gains or losses. The U.S. has been earning consistently positive payoffs from the 1960s to the mid 1990s, in early 2000s, and in some years after 2008. Moreover, these magnitudes have been increasing since the 1960s, possibly reflecting increases in international portfolio positions and developments in international financial assets.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/273a310c5b8c087b2e6091d2ab7787c73c52b1013bd93858576f06e4fe6a3a6e.jpg)  
Figure 2.4: U.S. Exorbitant Privilege. The figure plots the annual valuation change and dividend payouts from the U.S. external assets and liabilities, normalized by the U.S. GDP. The shaded areas represent NBER recessions. Data source: Bureau of Economic Analysis.

Second, the U.S. net financial payoff is pro-cyclical. It tends to be positive during global expansions and negative during global recessions. For example, the U.S. suffered a net loss equal to  $30\%$  of the U.S. GDP on its external assets in 2008, whereas the foreigners suffered a net loss equal to  $13\%$  of the U.S. GDP on their U.S. assets. This cyclical property is again due to the portfolio asymmetry: the U.S. tends to hold more foreign risky assets, whereas the foreigners tend to hold more U.S. safe assets. The risky assets depreciate more during recessions.

Gourinchas and Rey [2022] refer to this cyclical property as the exorbitant duty. As we will see in Section 7.A, we can interpret the asymmetry in portfolio holdings between the U.S. and the rest of the world as a risk-sharing or insurance arrangement, with the U.S. earning higher returns in good times and paying off the foreigners in bad times.

Third, the nature of the exorbitant privilege and duty seems to have changed in the past decade, in which period the U.S. external assets and liabilities earned similar payoffs. In the past two years after the pandemic, the payoff on the U.S. external liabilities surpassed that on the U.S. external assets. This is driven by a significant outperformance of the U.S. equity assets relative to the foreign equity assets, which raised the capital gains that foreigners earned from the

U.S. equity assets they held. As this difference in return is not driven by the U.S. paying off foreign investors in recessions, this potentially represents a loss of exorbitant privilege as opposed to the exorbitant duty [Jiang, Richmond, and Zhang, 2022c, Atkeson, Heathcote, and Perri, 2022].

There is also a trade side that parallels the fluctuations on the portfolio side. As we will see in Section 9.A, the trade balance  $(TB)$  and the portfolio returns from the income balance  $(IB)$  and capital gains  $(CG)$  jointly determine the evolution of the national accounts captured by the net foreign assets (NFA):

$$
\Delta N F A_{t} = T B_{t} + C G_{t} + I B_{t}.
$$

An increase in the U.S. net foreign assets can be attributed to either national saving by running a higher trade surplus and saving the income abroad, or earning a higher capital gains or incomes from foreign financial assets. Conversely, holding the NFA constant, a trade deficit can be financed by profits from the portfolio side.

### 2.B.3 Countercyclical Flight To Safety

There is also a quantity aspect to the exorbitant privilege, which can be illustrated by the following hypothetical example that I considered in Jiang, Krishnamurthy, and Lustig [2022a]. There are two investment periods. In period 1 the U.S. Treasury yield is high at  $5\%$ . In period 2 the U.S. Treasury yield is low at  $1\%$ . Table 2.1 illustrates the returns and the holdings of home and foreign investors. The foreign investors buy more Treasuries when the yield is lower in period 2, whereas the home investors buy more Treasuries when the yield is higher in period 1. In a crude way, this assumption captures the foreigners' countercyclical flight to safety provided by the U.S. Treasury market: they buy U.S. Treasuries when they are expensive and offer low returns, and they exit their positions when Treasury bonds are cheap and offer high returns.

In this example, the time-weighted average as measured by the geometric mean of the returns over the two years is exactly the same  $2.98\%$  for the U.S. and the foreign investors. In other words, the home and the foreign investors hold the same asset and receive the same return from their Treasury portfolios in each period.

In comparison, the dollar-weighted average as measured by the internal rate of return (IRR) is  $1.37\%$  for the foreign investors and  $4.65\%$  for the home investors—leading to a difference of  $3.28\%$  per annum between home and foreign investors. This IRR measure incorporates how well the investors time the market, and suggests that the foreigners earn a much lower return from their dynamic trading

strategy even when the underlying asset offers the same return.

<table><tr><td colspan="5">Panel A: Description of the Example</td></tr><tr><td colspan="3">Foreign Investors</td><td colspan="2">Home Investors</td></tr><tr><td>Year</td><td>Holdings</td><td>Yield</td><td>Holdings</td><td>Yield</td></tr><tr><td>1</td><td>1</td><td>5%</td><td>10</td><td>5%</td></tr><tr><td>2</td><td>10</td><td>1%</td><td>1</td><td>1%</td></tr><tr><td colspan="2">Time-Weighted Return</td><td>2.98%</td><td></td><td>2.98%</td></tr><tr><td colspan="5">Panel B: IRRs of Cash Flows</td></tr><tr><td colspan="3">Foreign Investors</td><td colspan="2">Home Investors</td></tr><tr><td>Year</td><td>Holdings</td><td>Cash Flows</td><td>Holdings</td><td>Cash Flows</td></tr><tr><td>1</td><td>1</td><td>-1</td><td>10</td><td>-10</td></tr><tr><td>2</td><td>10</td><td>-8.95</td><td>1</td><td>9.5</td></tr><tr><td>3</td><td>10.10</td><td>10.10</td><td>1.01</td><td>1.01</td></tr><tr><td colspan="2">Dollar-Weighted Return</td><td>1.37%</td><td></td><td>4.65%</td></tr></table>

Note that this IRR comparison captures a timing dimension of the U.S. funding advantage that is different from the difference in the interest rates as we discussed in the context of CIP deviations. In this example, we can additionally introduce foreign bonds and assume that they are always traded at  $1\%$  higher yields than the U.S. bond, which means their yields are  $6\%$  in year 1 and  $2\%$  in year 2. Then, the U.S. Treasury also enjoys an additional convenience yield regardless of the timing in the bond market. As such, this stylized example illustrates the importance of understanding the U.S. specialness from both the quantity and the pricing sides.

This countercyclical flight to U.S. safe assets benefits their issuers such as the U.S. government. A low dollar-weighted return earned by the foreign investors due to their poor market timing implies a low funding cost faced by the U.S. government due to its great market timing. As a result, in bad times, the U.S. government can borrow not just at a lower interest rate, but the fact that they can borrow a lot is also important. As Gourinchas, Rey, and Sauzet [2019] observe,

In our fiat currency system, being the hegemon confers a specific ability to issue large amounts of nominally safe liabilities (dollar securities), which are happily absorbed by the rest of the world. Thus, the view is that, in case of a deficit, the United States does not have to take restrictive measures, so that the dollar is not an impartial means of international exchange. This is the essence of the exorbitant privilege.

### 2.B.4 Twin Deficits

The U.S. external imbalances are also closely related with the U.S. government budget deficits. Figure 2.5 plots the U.S. government's

Table 2.1: Example of Cash Flows and the IRR Computation

total government debt held by public/GDP ratio and the U.S. external liability/GDP. The first series represents the amount of debt owed by the U.S. government to the U.S. private sector and the rest of the world, whereas the second series represents the amount of debt owed by the U.S. to the rest of the world. Since the 2008 global financial crisis, both the U.S. government and the U.S. as a whole have been borrowing a lot more.

This comovement shows that international finance and government finance are closely intertwined. On the one hand, the foreign investors, private and official, have been financing a large portion of the U.S. external liabilities. To understand why this is the case, it is important to understand why they find the U.S. government debt particularly desirable. On the other hand, a large portion of the U.S. government debt has been financed by foreign investors. To evaluate the U.S. fiscal sustainability, it is also important to take a global perspective. We will consider these issues in detail in Chapters 7 and 8.

### 2.B.5 Other Empirical Patterns

There are many more empirical patterns that this note does not have space to cover. For example, home bias is a salient pattern in international asset allocation. Lewis [1999] provides a summary of the literature. More recently, micro-data shed new light on cross-border portfolio positions and global capital allocations. Florez-Orrego, Maggiori, Schreger, Sun, and Tinda [2023] provide a review of this literature.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/5404766edb96259093701b613bfb7154c53022619918a963e6827cd682642943.jpg)  
Figure 2.5: U.S. Public and External Liabilities. The figure plots the U.S. public liability/GDP ratio and the U.S. external liability/GDP ratio. The shaded areas represent NBER recessions. Data source: FRED and Lane and Milesi-Ferretti [2007].

Miranda-Agrippino and Rey [2022] provide a summary of the literature on the global financial cycle, which refers to the strong comovements between exchange rates, asset prices, capital flows, and the U.S. monetary policy. Du and Schreger [2022a] provide a review of the literature on the CIP deviation and frictions in international capital markets. Hassan and Zhang [2021] provide a review of the literature on currency risks and returns.
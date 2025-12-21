---
title: "03 Risk Premia Factor Structure"
parent_directory: "Lecture Notes on International Finance chapters"
formatted: "2025-12-21 07:35:00 AM"
formatter_model: "claude-3-5-sonnet-20241022"
cli-tool: "claude-code"
primary_tags:
  - currency risk premia
  - factor structure models
  - no arbitrage pricing
  - carry trade strategies
  - forward premium puzzle
secondary_tags:
  - exchange rate dynamics
  - stochastic discount factors
  - interest rate differentials
  - global risk factors
  - currency base factors
  - time series variations
  - cross sectional variations
  - long run risks
  - trade network models
  - consumption based models
cssclasses: academia
---

# Risk Premia and Factor Structure

## Summary

- We first investigate the role of currency risk premium  $rp_{t}$ , which drives both the currency expected return:

$$
\mathbb{E}_{t}[rx_{t+1}] = rp_{t} \stackrel{\mathrm{def}}{=} - \cov_{t}(m_{t+1}^{*}, \Delta e_{t+1}) - \frac{1}{2} \var_{t}(\Delta e_{t+1}),
$$

and the exchange rate level:

$$
e_{t} = \sum_{j=0}^{\infty} \mathbb{E}_{t}[r_{t+j} - r_{t+j}^{*}] - \sum_{j=0}^{\infty} \mathbb{E}_{t}[rp_{t+j}] + \bar{e}.
$$

- The currency risk premium is related to the currency's loadings on the risk factors, which give rise to a factor structure in currency returns:

$$
\Delta e_{t+1}^{i} = \alpha^{i} + \beta^{i} f_{t+1} + \varepsilon_{t+1}^{i},
$$

$$
\mathbb{E}_{t}[rx_{t+1}^{i}] = \beta_{t}^{i} \mathbb{E}_{t}[f_{t+1}].
$$

We first adopt a no-arbitrage approach to organize the currency risk premium and the corresponding factor structure.

- A natural question is what drives the time-series and cross-sectional variations in the currency risk premium, which is to be answered by general equilibrium models.  
- Finally, we consider the long-term currency risk premia. When markets are complete and the exchange rate is stationary, the long-run UIP condition holds:

$$
e_{t} - \bar {e} = \lim_{h \rightarrow \infty} h \left(r_{t} (h) - r_{t}^{*} (h)\right).
$$

To make sense of the exchange rate puzzles and other salient patterns in international financial markets, we first enrich the risk premium in the baseline model. To be clear, as long as the households' utility function $u(c)$ is non-linear, the currency risk premium is already present in the baseline model in Chapter 1. As the exchange rate accounting in Section 1.B shows, the currency risk premium  $rp_{t}$  affects both the currency expected return and the exchange rate level.

In this chapter, we consider specific models that account for the time-series and the cross-sectional variations in the currency risk premium, and understand the properties of the implied exchange rate dynamics. As an initial step, all models presented in this chapter assume complete markets.

Before we start, it is useful to understand what happens in the absence of the risk premium. Then, Eq. (1.13) implies that the exchange rate movement is determined entirely by the current interest rate differential,

$$
\mathbb {E}_{t} \left[ \Delta e_{t + 1} \right] = r_{t}^{*} - r_{t},
$$

and, equivalently, the expected currency excess return is zero,

$$
\mathbb {E}_{t} [ r x_{t + 1} ] = 0.
$$

These conditions are known as the Uncovered Interest Rate Parity. As we discussed in Section 2, these predictions are rejected by the data. Instead, currency expected returns have large variations both in the time series and in the cross-section.

Alvarez, Atkeson, and Kehoe [2007] lay out a related calculation. Eq. (1.13) implies that the interest rate differential is equal to the expected exchange rate movement plus the risk premium term:

$$
r_{t} - r_{t}^{*} = \mathbb {E}_{t} [ - \Delta e_{t + 1} ] + r p_{t},
$$

Empirically, there are large variations in the interest rate differential, but the exchange rate appears to be a near random-walk process, which means the exchange rate movement is largely unexpected. As a result, the risk premium term  $r p_{t}$  must have significant variations. This means, to the extent that monetary policies drive a significant fraction of the variations in the interest rates, it must operate not through the first-order moments (i.e., the expected exchange rate movement), but through the second-order moments (i.e., the risk premium).

## 3.A The No-Arbitrage Approach

Our first approach to modeling the currency risk premia starts directly from the SDFs. Because this approach only relies on investors' ability to correctly price the assets based on the covariances between asset returns and their SDFs, it is known as the no-arbitrage approach. This approach asks the following question: what properties

do the SDFs need to have in order to match the observed exchange rate dynamics, such as the time-series and the cross-sectional variations in the currency risk premia, and the relationship between the interest rates and the currency risk premia? Once we understand the answer to this question, we can then turn to general equilibrium models and figure out the economic primitives and frictions that are necessary to generate such SDF properties.

For example, Lustig, Roussanov, and Verdelhan [2011] consider the following specification. The SDF of country  $i$  is

$$
m_{t + 1}^{i} = - \mu_{t}^{i} - \sqrt{\delta^{i} z_{t}^{w}} \varepsilon_{t + 1}^{w} - \sqrt{\gamma z_{t}^{i}} \dot {\varepsilon}_{t + 1}^{i},
$$

where  $\varepsilon_{t + 1}^{w}$  is a global shock and  $\varepsilon_{t + 1}^{i}$  is a country-specific shock. Both shocks are i.i.d. standard normal. When the number of countries  $N$  is large, the country-specific shocks average to zero:

$$
\sum_{i = 1}^{N} \sqrt{\gamma z_{t}^{i}} \varepsilon_{t + 1}^{i} = 0.
$$

While we take the SDF dynamics as given, it is important to know that the SDFs ultimately arise from the underlying economy. For example, the SDF shocks  $\varepsilon_{t+1}^{w}$  and  $\varepsilon_{t+1}^{i}$  could be mapped to the global and country-specific shocks in the production process. They could also arise from shocks to investor preferences. We will discuss some general equilibrium models in which the SDF dynamics are endogenously determined in the following sections.

For expositional convenience, we regard the U.S., denoted by $, as the home country. Let Δe i / $ denote the value of currency i in the unit of the home country. Then, assuming complete markets, we can write down the exchange rate movement directly from the SDF dynamics:

$$
\begin{array}{l} \Delta e_{t + 1}^{i / \S} = m_{t + 1}^{i} - m_{t + 1}^{\S} \\ = - \left(\mu_{t}^{i} - \mu_{t}^{\$}\right) - \left(\sqrt{\delta^{i}} - \sqrt{\delta^{\$}}\right) \sqrt{z_{t}^{w}} \varepsilon_{t + 1}^{w} - \left(\sqrt{\gamma z_{t}^{i}} \varepsilon_{t + 1}^{i} - \sqrt{\gamma z_{t}^{\$}} \varepsilon_{t + 1}^{\$}\right). \\ \end{array}
$$

Lustig, Roussanov, and Verdelhan [2011] assume that the time-varying volatilities  $z_{t}^{w}$  and  $z_{t}^{i}$  are also driven by the global and the country-specific shocks, and they follow autoregressive square-root processes:

$$
z_{t}^{w} = (1 - \phi) \theta^{w} + \phi z_{t - 1}^{w} + \sigma \sqrt{z_{t - 1}^{w}} \varepsilon_{t}^{w}, \tag {3.1}
$$

$$
z_{t}^{i} = (1 - \phi) \theta + \phi z_{t - 1}^{i} + \sigma \sqrt{z_{t - 1}^{i}} \varepsilon_{t}^{i}. \tag {3.2}
$$

As a result, when either the global shock or the country-specific shock is negative, the SDF becomes not only higher (indicating a higher marginal utility) and drives the exchange rate movement, it also becomes more volatile and affects the currency risk premium.

## 3.A.1 Currency Return Dynamics

Let us characterize the log currency excess return in this set-up, which is defined as

$$
r x_{t + 1}^{i / \S} \stackrel {\mathrm{de f}} {=} \Delta e_{t + 1}^{i / \S} + r_{t}^{i} - r_{t}^{\S}.
$$

First, the innovation in the currency excess return is given by

$$
r x_{t + 1}^{i / \S} - \mathbb {E}_{t} [ r x_{t + 1}^{i / \S} ] = - \left(\sqrt{\delta^{i}} - \sqrt{\delta^{\S}}\right) \sqrt{z_{t}^{w}} \varepsilon_{t + 1}^{w} - \sqrt{\gamma} \left(\sqrt{z_{t}^{i}} \varepsilon_{t + 1}^{i} - \sqrt{z_{t}^{\S}} \varepsilon_{t + 1}^{\S}\right).
$$

Since the currency excess return is equal to the exchange rate movement plus the interest rate differential, which is known ex-ante, the innovation in the currency excess return is also equal to the innovation in the exchange rate movement:

$$
r x_{t + 1}^{i / \S} - \mathbb {E}_{t} [ r x_{t + 1}^{i / \S} ] = \Delta e_{t + 1}^{i / \S} - \mathbb {E}_{t} [ \Delta e_{t + 1}^{i / \S} ].
$$

Thus, the conditional variance of the exchange rate movement in log can be expressed as

$$
\operatorname{va r}_{t} \left(\Delta e_{t + 1}^{i / \mathbb {S}}\right) = \frac{1}{2} \left(\sqrt{\delta^{i}} - \sqrt{\delta^{\mathbb {S}}}\right)^{2} z_{t}^{w} + \frac{1}{2} \gamma \left(z_{t}^{i} + z_{t}^{\mathbb {S}}\right), \tag {3.3}
$$

which shows that the variance  $z_{t}^{w}$  of the global shock and the variances  $z_{t}^{i}$  and  $z_{t}^{s}$  of the country-specific shocks both contribute to the exchange rate variance. Moreover, for two countries whose SDFs have very different loadings on the global shock, their bilateral exchange rate movement loads heavily on the global shock and is therefore more volatile.

Next, we consider the currency risk premium. Plugging the SDF dynamics into Eq. (1.17), we obtain

$$
\begin{array}{l} r p_{t}^{i / \S} \stackrel {\text{de f}} {=} \mathbb {E}_{t} \left[ r x_{t + 1}^{i / \S} \right] = \frac{1}{2} v a r_{t} \left(m_{t + 1}^{\S}\right) - \frac{1}{2} v a r_{t} \left(m_{t + 1}^{i}\right) \tag {3.4} \\ = \frac{1}{2} \left(\delta^{\mathrm{S}} - \delta^{i}\right) z_{t}^{w} + \frac{1}{2} \gamma \left(z_{t}^{\mathrm{S}} - z_{t}^{i}\right). \\ \end{array}
$$

The first term is easy to interpret: if two countries have different loadings on the global shock, i.e.,  $|\delta^{\mathbb{S}} - \delta^{i}| > 0$ , then, their bilateral exchange rate movement is exposed to the global shock and requires a higher magnitude of risk premium.

The second term is increasing in the difference between the volatilities of the two countries' idiosyncratic shocks, i.e.,  $z_{t}^{s} - z_{t}^{i}$ , which is more subtle. The readers might wonder why idiosyncratic risks appear in the risk premium. For example, from the U.S. households' perspective, should they not care about the foreign country's idiosyncratic risk  $z_{t}^{i}$  since it is uncorrelated with the U.S. SDF?

To answer this question, let us first consider the currency risk premium in level:

$$
\mathbb {E}_{t} \left[ \exp \left(r x_{t + 1}^{i / \S}\right) \right] \stackrel {\text{de f}} {=} \mathbb {E}_{t} \left[ 1 + \frac{\exp \left(e_{t + 1}^{i / \S} + r_{t}^{i}\right) - \exp \left(r_{t}^{\S}\right)}{\exp \left(r_{t}^{\S}\right)} \right],
$$

which captures the expected profit of a trading strategy that takes a long position on the foreign bond and a short position on the U.S. bond. By Eq. (1.11),

$$
\begin{array}{l} \mathbb {E}_{t} [ \exp (r x_{t + 1}^{i / \$}) ] = \exp (- c o v_{t} (m_{t + 1}^{\$}, \Delta e_{t + 1}^{i / \$})) \\ = \exp \left(\sqrt{\delta^{\S}} \left(\sqrt{\delta^{\S}} - \sqrt{\bar {\delta}^{i}}\right) z_{t}^{w} + \gamma z_{t}^{\S}\right), \\ \end{array}
$$

which does not contain the  $z_{t}^{i}$  term. The term  $\sqrt{\delta^{\mathbb{S}}} (\sqrt{\delta^{\mathbb{S}}} - \sqrt{\delta^{i}})z_{t}^{w}$  comes from the U.S. SDF's and the exchange rate movement's loadings on the global shock  $\varepsilon_{t + 1}^{w}$ , and the term  $\gamma z_{t}^{\mathbb{S}}$  comes from their loadings on the U.S.-specific shock  $\varepsilon_{t + 1}^{\mathbb{S}}$ . As the global shock and the U.S.-specific shock both affect the U.S. SDF, they are priced risk factors from the U.S. perspective. $^{1}$

Now, let us revisit the currency risk premium in log, which is related to the levels by

$$
r p_{t}^{i / \S} = \log \mathbb {E}_{t} [ \exp (r x_{t + 1}^{i / \S}) ] - \frac{1}{2} v a r_{t} (\Delta e_{t + 1}^{i / \S}).
$$

Similarly, if we take the foreign perspective,

$$
r p_{t}^{\$ / i} = \log \mathbb {E}_{t} [ \exp (r x_{t + 1}^{\$ / i}) ] - \frac{1}{2} v a r_{t} (\Delta e_{t + 1}^{i / \$}).
$$

Combine these two expressions and use the definition that implies the log risk premia are symmetric, i.e.,  $r p_{t}^{i / \mathbb{S}} = -r p_{t}^{\mathbb{S} / i}$ . We have

$$
r p_{t}^{i / \S} = \frac{1}{2} (\log \mathbb {E}_{t} [ \exp (r x_{t + 1}^{i / \S}) ] - \log \mathbb {E}_{t} [ \exp (r x_{t + 1}^{\S / i}) ]).
$$

Therefore, the log risk premium can be thought of as an average between the level risk premia from the U.S. and the foreign perspectives, which care about the U.S.-specific and the foreign-specific risks, respectively.

It is also worth noting that the currency risk premia in level are not symmetric:

$$
\log \mathbb {E}_{t} [ \exp (r x_{t + 1}^{i / \mathbb {S}}) ] \neq - \log \mathbb {E}_{t} [ \exp (r x_{t + 1}^{\mathbb {S} / i}) ],
$$

which leads to the following result commonly known as the Siegel's paradox. For example, assume  $r_t^{\S} = r_t^i = 0$  and  $\mathbb{E}_t[\Delta e_{t+1}^{i/\S}] = 0$ . Then, the currency risk premium in log is zero:  $rp_t^{i/\S} = -rp_t^{\S/i} = 0$ . However, given that the exchange rate is volatile, Jensen's inequality

That said, the bilateral exchange rates between different foreign currencies and the dollar only have heterogeneous loadings on the global shock, but not on the U.S.-specific shock. Therefore, the U.S.-specific shock leads to identical risk premia across all foreign currencies, which is  $\gamma z_{t}^{s}$ .

implies that the expected currency excess return in level is above 1 from both the U.S. and the foreign perspectives:

$$
\mathbb {E}_{t} [ \exp (r x_{t + 1}^{i / \S}) ] > \exp (\mathbb {E}_{t} [ r x_{t + 1}^{i / \S} ]) = 1 \text{an d} \mathbb {E}_{t} [ \exp (r x_{t + 1}^{\S / i}) ] > \exp (\mathbb {E}_{t} [ r x_{t + 1}^{\S / i} ]) = 1.
$$

Because of this property, we use the currency risk premium in log for most parts of this paper.

These results connect currency risk premia and realized currency excess returns to the factor structure of the SDFs. We make three more observations. First, for a country whose loading  $\delta^i$  on the global shock is high, its currency tends to appreciate during global recessions (i.e.,  $rx_{t+1}^{i/\$}$  increases when  $\varepsilon_{t+1}^w$  declines), and have a lower currency risk premium  $rp_t^{i/\$}$ . Therefore, currencies with higher loading  $\delta^i$  are considered as safe currencies, and currencies with lower loading  $\delta^i$  are considered as risky currencies.

Second, as for the country-specific shocks, even though they are idiosyncratic from the aggregate perspective and there is full risk-sharing between countries, they still affect currency returns and risk premia. This feature can arise from general equilibrium models if the local households have a consumption bias towards home goods, so that their consumption allocation and marginal utility tilt towards the local shock despite full risk-sharing. Specifically, when  $z_{t}^{i}$  is high, country  $i$ 's SDF is volatile, and its local households require a higher risk premium to hold foreign currencies.

Third, if two countries have high and identical idiosyncratic volatilities, i.e.,  $z_{t}^{i} = z_{t}^{\S} \gg 0$ , then, their bilateral exchange rate movement is volatile, while the currency risk premium can remain low. Conversely, we can generate a high currency risk premium without a volatile exchange rate movement. To do so, notice that the global risk loadings enter the exchange rate variance expression (3.3) as  $\left(\sqrt{\delta^{i}} - \sqrt{\delta^{\S}}\right)^{2}$ , whereas they enter the currency risk premium expression (3.4) as  $\delta^{\S} - \delta^{i} = \left(\sqrt{\delta^{i}} - \sqrt{\delta^{\S}}\right)\left(\sqrt{\delta^{i}} + \sqrt{\delta^{\S}}\right)$ . Then, high loadings on the global shock, i.e.,  $\delta^{\S} \approx \delta^{i} \gg 0$ , can generate a high currency risk premium without a volatile exchange rate movement. For example, if  $\delta^{\S} = 10$  and  $\delta^{i} = 9$ ,  $\left(\sqrt{\delta^{i}} - \sqrt{\delta^{\S}}\right)^{2} = 0.03$  implies a low exchange rate volatility, whereas  $\delta^{\S} - \delta^{i} = 1$  implies a high currency risk premium. As such, this no-arbitrage framework provides a flexible way to match different patterns in exchange rate volatilities and currency risk premia.

## 3.A.2 Interest Rate Dynamics

This no-arbitrage framework also provides a simple characterization of the interest rate dynamics. From the Euler equation (1.6), repro

duced below,

$$
1 = \mathbb {E}_{t} \left[ \exp (m_{t + 1}^{i} + r_{t}^{i}) \right],
$$

and under joint normality, the interest rate in country  $i$  can be expressed as

$$
r_{t}^{i} = - \mathbb {E}_{t} [ m_{t + 1}^{i} ] - \frac{1}{2} v a r_{t} (m_{t + 1}^{i}) = \mu_{t}^{i} - \frac{1}{2} \delta^{i} z_{t}^{w} - \frac{1}{2} \gamma z_{t}^{i}.
$$

In this expression, the quadratic terms  $-\frac{1}{2}\delta^i z_t^w -\frac{1}{2}\gamma z_t^i$  are decreasing in the volatility of the SDF. In other words, when the households' marginal utility growth is more volatile, they will impute a higher value to the risk-free asset and accept a lower risk-free interest rate. This effect is usually referred to as the precautionary saving motive.

The linear term  $\mu_t^i$  is a free parameter because the no-arbitrage approach does not take a stance on the investors' preferences. In consumption-based models, this term usually reflects the investors' subjective discount rate and the expected growth rate of their consumption. Specifically, if the expected growth rate of consumption is higher, then, investors tend to require a higher risk-free rate to save. This effect is usually referred to as the intertemporal smoothing motive. As we will see in Chapter 6, this linear term also reflects monetary or fiscal policies.

To operationalize this model, we need to take a stance on the  $\mu_t^i$  term. Motivated by the connection between the interest rates with currency risk premia, we further assume

$$
\mu_{t}^{i} = \alpha + \chi z_{t}^{i} + \chi z_{t}^{w}.
$$

Then, the interest rate differential can be expressed as

$$
r_{t}^{i} - r_{t}^{\$} = \frac{1}{2} \left(\delta^{\$} - \delta^{i}\right) z_{t}^{w} - \left(\frac{1}{2} \gamma - \chi\right) \left(z_{t}^{i} - z_{t}^{\$}\right), \tag {3.5}
$$

which implies that the interest rate differential also comoves with the global and country-specific risk premia. A country with a higher loading  $\delta^i$  on the global shock has a lower interest rate, in addition to having a lower risk premium. Moreover, if  $\frac{1}{2}\gamma -\chi >0$ , which means that the interest rate is not set high enough to offset the precautionary saving motive, then, a country with a higher idiosyncratic volatility  $z_{t}^{i}$  also has a lower interest rate, in addition to having a lower risk premium.

This positive relationship between the interest rate differential and the currency risk premium holds both across countries and over time. We next explore these two dimensions in detail.

## 3.A.3 Carry Trade and Cross-Sectional Variations in Currency Risk Premium

To begin with, let us write down the log currency risk premium from Eq. (3.4) and the interest rate differential from Eq. (3.5):

$$
r p_{t}^{i / \mathbb {S}} = \frac{1}{2} \left(\delta^{\mathbb {S}} - \delta^{i}\right) z_{t}^{w} + \frac{1}{2} \gamma \left(z_{t}^{\mathbb {S}} - z_{t}^{i}\right),
$$

$$
r_{t}^{i} - r_{t}^{\S} = \frac{1}{2} (\delta^{\S} - \delta^{i}) z_{t}^{w} - (\frac{1}{2} \gamma - \chi) (z_{t}^{i} - z_{t}^{\S}).
$$

In this subsection, we focus on the cross-country heterogeneity in the parameter  $\delta^i$ , which captures each foreign currency's loading on the global shock. This parameter appears in both expressions with the same sign: if a country has a higher loading  $\delta^i$  on the global shock, then, its currency risk premium and its interest rate are both lower.

Empirically, we need to find a way to estimate the systematic risk loading parameter  $\delta^i$ . To do so, we construct the carry trade. We sort currencies into portfolios based on their interest rates. We use  $H$  to denote the basket of currencies with high interest rates, and  $L$  to denote the basket of currencies with low interest rates. The portfolio composition can change over time. The carry trade factor  $hml$  is defined as

$$
h m l_{t + 1} = \frac{1}{N_{H}} \sum_{i \in H} r x_{t + 1}^{i / \S} - \frac{1}{N_{L}} \sum_{i \in L} r x_{t + 1}^{i / \S},
$$

where  $N_{H}$  and  $N_{L}$  denote the number of currencies in each portfolio. We let  $\sqrt{\delta_t^I}$  denote the equal-weighted average of  $\sqrt{\delta_t^i}$  across all currencies  $i$  in portfolio  $I$ .

This carry trade factor has three notable properties. First, the innovation to the carry trade factor is a scaled version of the global shock:

$$
h m l_{t + 1} - \mathbb {E}_{t} \left[ h m l_{t + 1} \right] = \left(\overline {{\sqrt{\delta_{t}^{L}}}} - \overline {{\sqrt{\delta_{t}^{H}}}}\right) \sqrt{z_{t}^{w}} \varepsilon_{t + 1}^{w}.
$$

If we assume that the idiosyncratic volatility  $z_{t}^{i}$  is independent across countries and has the same time-series dynamics (for example, AR(1)), then, Eq. (3.5) implies that higher interest rate currencies tend to have lower  $\delta^{i}$ , and vice versa. Then,  $\sqrt{\delta_t^L} - \sqrt{\delta_t^H} > 0$ , which implies that the carry trade factor  $hml_{t+1}$  has a positive loading on the global shock.

Second, by being exposed to the global shock, the carry trade factor earns a positive risk premium on average:

$$
\mathbb {E}_{t} \left[ h m l_{t + 1} \right] = \frac{1}{2} \left(\overline {{\delta_{t}^{L}}} - \overline {{\delta_{t}^{H}}}\right) z_{t}^{w} > 0.
$$

In other words, the currency trading strategy that buys high interest rate currencies and sells low interest rate currencies earns a positive risk premium on average.

Third, each currency's loading on the carry trade factor informs us about its systematic risk exposure. Consider the conditional regression

$$
r x_{t + 1}^{i / \S} = \alpha_{t}^{i} + \beta_{t}^{i} \cdot h m l_{t + 1} + \varepsilon_{t + 1}^{i},
$$

with  $\beta_t^i$  defined as

$$
\beta_{t}^{i} \stackrel {\text{de f}} {=} \frac{\operatorname{co v}_{t} (r x_{t + 1}^{i / \mathbb {S}}, h m l_{t + 1})}{v a r_{t} (h m l_{t + 1})}.
$$

We have the following result:

Proposition 3.1. Currency  $i$ 's carry trade beta is

$$
\beta_{t}^{i} = \frac{\sqrt{\delta^{\S}} - \sqrt{\delta^{i}}}{\sqrt{\delta_{t}^{L}} - \sqrt{\delta_{t}^{H}}}.
$$

The proof is presented in Appendix A.3. Since  $\sqrt{\delta_t^L}$  and  $\sqrt{\delta_t^H}$  are common to all currencies, and  $\sqrt{\delta_t^L} > \sqrt{\delta_t^H}$ , then, the carry trade beta  $\beta_t^i$  is decreasing in the country's loading  $\delta^i$  on the global shock.

This proposition connects the currencies' risk exposures to their risk premia, incarnating the standard asset pricing logic that each asset's risk exposure can be measured from its covariance with risk factors, i.e.,

$$
r x_{t + 1}^{i} = \alpha^{i} + \beta_{t}^{i} \cdot f_{t + 1} + \varepsilon_{t + 1}^{i},
$$

and that the risk exposure determines the asset's risk premium, i.e.,

$$
\mathbb {E}_{t} [ r x_{t + 1}^{i} ] = \beta_{t}^{i} \cdot \mathbb {E}_{t} [ f_{t + 1} ],
$$

assuming that the factors are tradable. In the context of the currency market, the carry trade captures a risk factor:  $f_{t + 1} = hml_{t + 1}$ . The carry trade beta  $\beta_t^i$  captures the risk exposure of currency  $i$ , and it relates to the currency's risk premium via Eq. (3.4), which is increasing in  $\beta_t^i$ .

## 3.A.4 Forward Premium Puzzle and Time-Series Variations in Currency Risk Premium

Let us return to the expressions for the log currency risk premium and the interest rate differential between the dollar and a given for-

eign currency  $i$  ..

$$
r p_{t}^{i / \S} = \frac{1}{2} \left(\delta^{\S} - \delta^{i}\right) z_{t}^{w} + \frac{1}{2} \gamma \left(z_{t}^{\S} - z_{t}^{i}\right),
$$

$$
r_{t}^{i} - r_{t}^{\S} = \frac{1}{2} (\delta^{\S} - \delta^{i}) z_{t}^{w} - (\frac{1}{2} \gamma - \chi) (z_{t}^{i} - z_{t}^{\S}).
$$

In this subsection, we turn to the time-series variation in the variances of the SDF shocks  $z_{t}^{w}$  and  $z_{t}^{i}$ , which drive variations in both the currency risk premium and the interest rate differential over time. As we will show in the following proposition, this common variation gives rise to predictive power of the interest rate differential for the currency excess return. Specifically, we compute the slope coefficient in the forecasting regression of the currency excess return on the interest rate differential:

$$
r x_{t + 1}^{i / \$} = \alpha^{i} + \varphi^{i} (r_{t}^{i} - r_{t}^{\$}) + \varepsilon_{t + 1}^{i},
$$

with the Fama regression coefficient  $\varphi^i$  defined as

$$
\varphi^{i} \stackrel {\text{de f}} {=} \frac{\operatorname{co v} (r x_{t + 1}^{i / \mathbb {S}}, r_{t}^{i} - r_{t}^{\mathbb {S}})}{\operatorname{va r} (r_{t}^{i} - r_{t}^{\mathbb {S}})}.
$$

Proposition 3.2. The slope coefficient from the regression of the currency excess return on the interest rate differential is given by

$$
\varphi^{i} = \frac{\frac{1}{2} \gamma (\frac{1}{2} \gamma - \chi) (v a r (z_{t}^{i}) + v a r (z_{t}^{\$})) + \frac{1}{4} (\delta^{\$} - \delta^{i})^{2} v a r (z_{t}^{w})}{(\chi - \frac{1}{2} \gamma)^{2} (v a r (z_{t}^{i}) + v a r (z_{t}^{\$})) + \frac{1}{4} (\delta^{\$} - \delta^{i})^{2} v a r (z_{t}^{w})},
$$

which is positive if  $\frac{1}{2}\gamma -\chi >0$

The proof is presented in Appendix A.4. This proposition shows that the exposures to both the global and the country-specific SDF shocks induce comovements between the interest rate differential and the currency excess return. Specifically, a country's interest rate declines when the global SDF volatility goes up and, if we assume  $\frac{1}{2}\gamma -\chi >0$ , when its idiosyncratic SDF volatility goes up. Both SDF components generate a positive slope coefficient in this regression, which rationalizes the UIP violation in the data.

Similarly, we can replace the currency excess return on the left-hand side of the regression with the exchange rate movement:

$$
\Delta e_{t + 1}^{i / \S} = \alpha^{i} + \psi^{i} (r_{t}^{i} - r_{t}^{\S}) + \varepsilon_{t + 1}^{i}.
$$

Its slope coefficient is given by

$$
\psi^{i} \stackrel {{\text{de f}}} {{=}} \frac{c o v (\Delta e_{t + 1}^{i / \S} , r_{t}^{i} - r_{t}^{\S})}{v a r (r_{t}^{i} - r_{t}^{\S})} = \frac{\chi (\frac{1}{2} \gamma - \chi) (v a r (z_{t}^{i}) + v a r (z_{t}^{\S}))}{(\chi - \frac{1}{2} \gamma)^{2} (v a r (z_{t}^{i}) + v a r (z_{t}^{\S})) + \frac{1}{4} (\delta^{\S} - \delta^{i})^{2} v a r (z_{t}^{w})},
$$

which is also positive if  $\frac{1}{2}\gamma - \chi > 0$  and  $\chi > 0$ . In other words, when  $\chi > 0$ , the interest rate differential does not fully reflect the currency risk premium that is driven by the idiosyncratic SDF volatility in this model, so that the expected exchange rate movement also co-moves with the risk premium.

In models with richer structures, it is possible that the global SDF volatility  $z_{t}^{w}$  also drives the expected exchange rate movement. For example, this happens when the drift term in the SDF is

$$
\mu_{t}^{i} = \alpha + \chi z_{t}^{i} + \zeta \delta^{i} z_{t}^{w},
$$

for  $0 < \zeta < 1/2$ . In this case, while the currency risk premium loads on  $\frac{1}{2}\left(\delta^{\S} - \delta^{i}\right)$  times the global shock's volatility  $z_{t}^{w}$ , i.e.,

$$
r p_{t}^{i / \S} \stackrel {\mathrm{de f}} {=} \mathbb {E}_{t} \left[ r x_{t + 1}^{i / \S} \right] = \frac{1}{2} \left(\delta^{\S} - \delta^{i}\right) z_{t}^{w} + \frac{1}{2} \gamma \left(z_{t}^{\S} - z_{t}^{i}\right),
$$

the interest rate differential only loads on (ζ - 1/2) (δi - δ$) times the global shock's volatility ztw:

$$
r_{t}^{i} - r_{t}^{\S} = \left(\zeta - \frac{1}{2}\right) \left(\delta^{i} - \delta^{\S}\right) z_{t}^{w} + \left(\chi - \frac{1}{2} \gamma\right) \left(z_{t}^{i} - z_{t}^{\S}\right),
$$

which does not fully reflect this global component of the currency risk premium.

As a result, the expected exchange rate movement also loads on the global SDF volatility  $z_{t}^{w}$ . This might be a more realistic specification since the global SDF volatility also induces exchange rate predictability by the interest rate differential:

$$
\psi^{i} = \frac{c o v (\Delta e_{t + 1}^{i / \S} , r_{t}^{i} - r_{t}^{\S})}{v a r (r_{t}^{i} - r_{t}^{\S})} = \frac{\chi \left(\frac{1}{2} \gamma - \chi\right) (v a r (z_{t}^{i}) + v a r (z_{t}^{\S})) + \zeta \left(\frac{1}{2} - \zeta\right) (\delta^{i} - \delta^{\S})^{2} v a r (z_{t}^{w})}{(\chi - \frac{1}{2} \gamma)^{2} (v a r (z_{t}^{i}) + v a r (z_{t}^{\S})) + (\zeta - \frac{1}{2})^{2} (\delta^{i} - \delta^{\S})^{2} v a r (z_{t}^{w})} > 0.
$$

## 3.A.5 Currency Base Factor

Another convenient construct to measure risk exposures and currency risk premia is the currency base factor [Lustig and Richmond, 2020, Aloosh and Bekaert, 2021]. For country  $i$ , its currency base factor is defined as the average of its bilateral exchange rate movement against foreign currencies<sup>2</sup>:

$$
\Delta \bar {e}_{t}^{i} \stackrel {\mathrm{de f}} {=} \frac{1}{N} \sum_{i = 1}^{N} \Delta e_{t}^{i / j}.
$$

This construct conveniently captures a currency's average exchange rate movement. For example, the dollar index is commonly

2 Some authors use an alternative definition  $\Delta \overline{e}_t^i = \frac{1}{N - 1}\sum_{i\neq j}\Delta e_t^{i / j}$ . Since  $\Delta e_t^{i / i} = 0$ , these two definitions of currency base factors only differ by a constant scalar  $N / (N - 1)$ . We use the definition in the main text since it computes simpler averages.

used in practice to reflect the overall strength of the U.S. dollar. The dollar's base factor  $\Delta \overline{e}_t^{\S}$  is the unweighted version of the dollar index.

By the law of large numbers, the SDF structure in Section 3.A implies

$$
\Delta \overline {{e}}_{t + 1}^{i} = m_{t + 1}^{i} - \overline {{m}}_{t + 1} = - \chi \left(z_{t}^{i} - \overline {{z}}_{t}\right) - \left(\sqrt{\delta^{i}} - \sqrt{\delta}\right) \sqrt{z_{t}^{w}} \varepsilon_{t + 1}^{w} - \sqrt{\gamma z_{t}^{i}} \varepsilon_{t + 1}^{i},
$$

which measures currency  $i$ 's exposures to the global shock  $\varepsilon_{t+1}^{w}$  and to its own idiosyncratic shock  $\varepsilon_{t+1}^{i}$ , in a way that is invariant to the choice of the base currency  $j$ . As such, if we want to study the variation in the dollar, the dollar's base factor might be more informative than the dollar's bilateral exchange rate against an individual foreign currency.

For example, the conditional and the unconditional variances of the currency base factor can be expressed as

$$
\begin{array}{l} v a r_{t} (\Delta \bar {e}_{t + 1}^{i}) = \left(\sqrt{\delta^{i}} - \overline {{\sqrt{\delta}}}\right)^{2} z_{t}^{w} + \gamma z_{t}^{i}, \\ v a r (\Delta \overline {{e}}_{t + 1}^{i}) = \chi^{2} v a r (z_{t}^{i}) + \left(\sqrt{\delta^{i}} - \overline {{\sqrt{\delta}}}\right)^{2} \theta^{w} + \gamma \theta , \\ \end{array}
$$

which uncovers this currency's idiosyncratic variance  $z_{t}^{i}$  and its exposure to the global shock  $\delta^i$ .

Moreover, Lustig and Richmond [2020] also consider the following regression:

$$
\Delta e_{t + 1}^{i / j} = \alpha + \varphi^{i / j} \Delta \bar {e}_{t + 1}^{i} + \varepsilon_{t + 1}.
$$

If the idiosyncratic volatility  $z^j$  follows the same distribution specified in Eq. (3.2), then,  $\bar{z}_t = \frac{1}{N}\sum_{i=1}^{N}z_t^i$  is time-invariant, and we have the following result characterizing the slope coefficient  $\varphi^{i/j}$ :

Proposition 3.3. The slope coefficient  $\varphi$  in this regression is given by

$$
\varphi^{i / j} \stackrel {\text{de f}} {=} \frac{\operatorname{co v} \left(\Delta e_{t + 1}^{i / j} , \Delta \bar {e}_{t + 1}^{i}\right)}{\operatorname{va r} \left(\Delta \bar {e}_{t + 1}^{i}\right)} = \frac{\chi^{2} \operatorname{va r} (z_{t}^{i}) + \left(\sqrt{\delta^{i}} - \sqrt{\delta^{j}}\right) \left(\sqrt{\delta^{i}} - \overline {{\sqrt{\delta}}}\right) \theta^{w} + \gamma \theta}{\chi^{2} \operatorname{va r} (z_{t}^{i}) + \left(\sqrt{\delta^{i}} - \overline {{\sqrt{\delta}}}\right)^{2} \theta^{w} + \gamma \theta}.
$$

The proof is presented in Appendix A.5. We note that the only foreign country  $j$ -specific variable in this expression is its exposure to the systematic risk,  $\delta^j$ . In particular, its idiosyncratic risk  $z_t^j$  does not show up in this expression, because the currency base factor  $\Delta \overline{e}_{t+1}^i$  is not exposed to any individual foreign country's idiosyncratic shock. Hence, for a given home currency  $i$ , the regression coefficient  $\varphi^{i/j}$  measures the difference in the systematic risk exposure between countries  $i$  and  $j$ , i.e.,  $\left(\sqrt{\delta^i} - \sqrt{\delta^j}\right)$ .

## 3.A.6 Other Works

This no-arbitrage approach provides a useful framework to account for the time-series and the cross-sectional variations in exchange rate movements and currency risk premia using global and idiosyncratic SDF shocks in complete markets. As such, it could be applied to all complete-market models that we study in this chapter.

We can and should introduce additional systematic risk factors in this no-arbitrage framework. Lustig, Roussanov, and Verdelhan [2014], Verdelhan [2018] study a richer factor model of exchange rates with two common factors, one of which is related to the currency carry trade that we study in this section, and the other is related to the U.S. dollar. To generate this structure, the SDF is exposed to both common factors:

$$
m_{t + 1}^{i} = - \mu_{t}^{i} - \sqrt{\delta^{i} z_{t}^{w}} \varepsilon_{t + 1}^{w} - \sqrt{\kappa^{i} z_{t}^{i}} \varepsilon_{t + 1}^{g} - \sqrt{\gamma z_{t}^{i}} \varepsilon_{t + 1}^{i},
$$

where the common shock  $\varepsilon_{t+1}^{w}$  is tied to the currency carry trade return and the other common shock  $\varepsilon_{t+1}^{g}$  is tied to the U.S. dollar. The loadings are time-varying, with the loadings on the dollar shock and on the idiosyncratic shock both tied to a local state variable  $z_{t}^{i}$  and the loading on the carry trade shock tied to a global state variable  $z_{t}^{w}$ .

We can also bring the SDF dynamics closer to the data. If the global and the country-specific shocks load on a vector of observable variables, we can model the SDF process using a VAR representation. For example, suppose the state vector  $x_{t}^{i}$  follows a VAR(1) process:

$$
x_{t + 1}^{i} = \Psi x_{t}^{i} + \Sigma^{1 / 2} \varepsilon_{t + 1}^{i},
$$

and the SDF innovations depend on the same VAR shocks  $\varepsilon_{t + 1}^{i}$ :

$$
m_{t + 1}^{i} = - r_{t}^{i} - \frac{1}{2} (\lambda_{t}^{i})^{\prime} \lambda_{t}^{i} - (\lambda_{t}^{i})^{\prime} \varepsilon_{t + 1}^{i}.
$$

The vector of loadings  $\lambda_t^i$  generalizes the scalar loadings  $\sqrt{\delta^iz_t^w}$  and  $\sqrt{\gamma z_t^i}$  in the previous case, and, for tractability, they are linear in the state vector  $x_i^i$ :

$$
\lambda_{t}^{i} = \lambda_{0}^{i} + \lambda_{1}^{i} x_{t}^{i}.
$$

This affine structure allows us to derive the asset prices in domestic bond and equity markets in closed form. Assuming complete markets, the exchange rate movement can be expressed as

$$
\Delta e_{t + 1}^{i / \S} = m_{t + 1}^{i} - m_{t + 1}^{\S}.
$$

In this way, we can jointly model exchange rates and asset prices using the same set of observable variables [Chernov and Creal, 2023]. We will discuss this class of affine models in detail in Section 8.E.

## 3.B Currency Risk Premia in the Time Series

The no-arbitrage approach offers us an accounting framework to break down the variations that come from country-specific and global shocks. Using the Euler equations, it imposes discipline on how these shocks give rise to variations in exchange rates and currency risk premia, and helps us organize the exchange rate puzzles. However, it does not answer where these shocks come from. We need additional structures to understand the origins of these shocks. In this section and the next section, we consider two models that offer such structures. One model is based on the long-run risks and focuses on the time-series variations in currency risk premia, and the other model is based on the trade network and focuses on the cross-sectional variations in currency risk premia.

## 3.B.1 Households

There are two countries, home and foreign. The households have the Epstein and Zin [1989] recursive preferences. For the home households,

$$
v_{t} = \left\{(1 - \delta) \left(c_{t}\right)^{1 - \frac{1}{\psi}} + \delta \mathbb {E}_{t} \left[ \left(v_{t + 1}\right)^{1 - \gamma} \right]^{\frac{1 - \frac{1}{\psi}}{1 - \gamma}} \right\}^{\frac{1}{1 - \frac{1}{\psi}}}, \tag {3.6}
$$

where  $\gamma$  is the coefficient of risk aversion and  $\psi$  is the intertemporal elasticity of substitution, and  $\delta$  is the coefficient of time-preference.  $C_t$  is consumption at time  $t$ . It is convenient to define  $\theta = \frac{1 - \gamma}{1 - \frac{1}{\psi}}$  and

simplify Eq. (3.6) as  $v_{t} = \left\{(1 - \delta)c_{t}^{\frac{1 - \gamma}{\theta}} + \mathbb{E}_{t}[(u_{t + 1})^{1 - \gamma}]^{\frac{1}{\theta}}\right\}^{\frac{\theta}{1 - \gamma}}$ .

Consumption growth has a long-run component  $x_{t}$ , which is small, very persistent, and has stochastic volatility:

$$
\begin{array}{l} \Delta c_{t + 1} = \mu_{g} + x_{t} + \sigma_{t} \varepsilon_{g, t + 1}, \\ x_{t + 1} = \rho x_{t} + \varphi_{e} \sigma_{t} \varepsilon_{x, t + 1}, \\ \sigma_{t + 1}^{2} = \sigma^{2} + \phi (\sigma_{t}^{2} - \sigma^{2}) + \omega \varepsilon_{w, t + 1}. \\ \end{array}
$$

The consumption growth shock  $\varepsilon_{g,t + 1}$ , the long-run growth shock  $\varepsilon_{x,t + 1}$ , and the long-run growth volatility shock  $\varepsilon_{w,t + 1}$  are jointly normal. We assume that long-run and short-run consumption shocks are correlated:  $cov_{t}(\varepsilon_{g,t + 1},\varepsilon_{x,t + 1}) = \nu$ . For simplicity, we assume  $cov_{t}(\varepsilon_{x,t + 1},\varepsilon_{w,t + 1}) = 0$ ,  $cov_{t}(\varepsilon_{g,t + 1},\varepsilon_{w,t + 1}) = 0$ .

Let  $w_{t}$  denote the aggregate wealth, which is the claim to current and future consumption. Let  $wc_{t} = w_{t} / c_{t}$  denote the wealth consumption ratio. We can define the cum-dividend return on this

claim as

$$
\exp (r_{t + 1}^{c}) = \frac{w_{t + 1}}{w_{t} - c_{t}} = \frac{c_{t + 1}}{c_{t}} \frac{w c_{t + 1}}{w c_{t} - 1}.
$$

Using the Campbell-Shiller log-linearization of the log total wealth return around the long-run average log wealth consumption ratio  $\mu_{wc} = \mathbb{E}[\log (wc_t)]$ :

$$
r_{t + 1}^{c} = \kappa_{0}^{c} + \Delta c_{t + 1} + \log \left(w c_{t + 1}\right) - \kappa_{1}^{c} \log \left(w c_{t}\right), \tag {3.7}
$$

with  $\kappa_1^c = \frac{e^{\mu wc}}{e^{\mu wc} - 1} > 1$  and  $\kappa_0^c = -\log(e^{\mu wc} - 1) + \frac{e^{\mu wc}}{e^{\mu wc} - 1}\mu_{wc}$ .

Epstein and Zin [1989] show that the log SDF  $m_{t+1}$  can be expressed as

$$
m_{t + 1} = \theta \log \delta - \frac{\theta}{\psi} \Delta c_{t + 1} + (\theta - 1) r_{t + 1}^{c},
$$

which depends on not only the log consumption growth  $\Delta c_{t+1}$ , but also the log return on the wealth portfolio  $r_{t+1}^c$ . The following proposition shows that the log wealth-consumption ratio and the log SDF are linear functions of the state variables after the log-linearization.

Proposition 3.4. The log wealth-consumption ratio  $\log(wc_{t})$  is affine in  $x_{t}$  and  $\sigma_{t}^{2}$ :

$$
\log \left(w c_{t}\right) = \mu_{w c} + W_{x} x_{t} + W_{\sigma} \left(\sigma_{t}^{2} - \sigma^{2}\right), \tag {3.8}
$$

where

$$
W_{x} = \frac{1 - \frac{1}{\psi}}{\kappa_{1}^{c} - \rho},
$$

$$
W_{\sigma} = \frac{(1 - \gamma) \left(1 - \frac{1}{\psi}\right)}{2 (\kappa_{1}^{c} - \phi)} \left(\frac{\varphi_{e}^{2}}{(\kappa_{1}^{c} - \rho)^{2}} + \frac{2 \nu \varphi_{e}}{\kappa_{1}^{c} - \rho} + 1\right),
$$

and the log SDF can be expressed as

$$
\begin{array}{l} m_{t + 1} - \mathbb {E}_{t} [ m_{t + 1} ] = - \gamma \sigma_{t} \varepsilon_{g, t + 1} + (\theta - 1) W_{x} \sigma_{t} \varphi_{e} \varepsilon_{x, t + 1} + (\theta - 1) W_{\sigma} \omega \varepsilon_{w, t + 1}, \\ \mathbb {E}_{t} [ m_{t + 1} ] = \theta \log \delta + (\theta - 1) r_{0}^{c} - \frac{\theta}{\psi} \mu_{g} + \left\{- \frac{\theta}{\psi} + (\theta - 1) [ 1 + W_{x} (\rho - \kappa_{1}^{c}) ] \right\} x_{t} + \{W_{\sigma} (\phi - \kappa_{1}^{c}) (\theta - 1) \} (\sigma_{t}^{2} - \sigma^{2}). \\ \end{array}
$$

The proof is presented in Appendix A.6. To interpret this result, we provide a simple calibration of the model following Bansal and Shaliastovich [2007]. The parameter values are reported in Table 3.1. The only modification is that we assume the correlation between long-run and short-run consumption shocks, i.e.,  $cov_{t}(\varepsilon_{g,t + 1},\varepsilon_{x,t + 1}) = \nu$ , to be negative.

At the bottom of the table, we report the values of the key equilibrium objects in this model. Given that  $W_{x} > 0$  and  $W_{\sigma} < 0$ , the

wealth-consumption ratio is increasing in the long-run growth and decreasing in the volatility. Similarly, we can show that the SDF  $m_{t+1}$  is decreasing in the short-run consumption shock  $\varepsilon_{g,t+1}$ , decreasing in the long-run consumption shock  $\varepsilon_{x,t+1}$ , and increasing in the volatility shock  $\varepsilon_{w,t+1}$ .

<table><tr><td>Parameter</td><td></td><td>Value</td></tr><tr><td colspan="3">Preference Parameters:</td></tr><tr><td>Subjective discount factor</td><td>δ</td><td>0.9987</td></tr><tr><td>Intertemporal elasticity of substitution</td><td>ψ</td><td>1.5</td></tr><tr><td>Risk aversion coefficient</td><td>γ</td><td>8</td></tr><tr><td>Implied theta</td><td>θ</td><td>-21</td></tr><tr><td colspan="3">Consumption Growth Parameters:</td></tr><tr><td>Mean of consumption growth</td><td>μg</td><td>0.0016</td></tr><tr><td>Long-run risks persistence</td><td>ρ</td><td>0.991</td></tr><tr><td>Long-run risks volatility loading</td><td>φe</td><td>0.055</td></tr><tr><td>Long-run and short-run shock correlation</td><td>ν</td><td>-0.25</td></tr><tr><td>Volatility level</td><td>σ</td><td>0.0032</td></tr><tr><td>Volatility persistence</td><td>φ</td><td>0.996</td></tr><tr><td>Volatility of volatility</td><td>ω</td><td>1.15 × 10-6</td></tr><tr><td colspan="3">Implied Values:</td></tr><tr><td>Wealth-cons. loading on long-run growth</td><td>Wx</td><td>31.07</td></tr><tr><td>Wealth-cons. loading on variance</td><td>Wσ</td><td>-5031</td></tr><tr><td>Backus-Smith coefficient</td><td>βBS</td><td>-1.3975</td></tr><tr><td>Mean wealth-cons. ratio</td><td>exp(μwc)</td><td>579.1</td></tr><tr><td>Campbell-Shiller constant</td><td>κ0c</td><td>0.0127</td></tr><tr><td>Campbell-Shiller constant</td><td>κ1c</td><td>1.0017</td></tr><tr><td>SDF loading on short-run growth shock</td><td></td><td>-0.0256</td></tr><tr><td>SDF loading on long-run growth shock</td><td></td><td>-0.1203</td></tr><tr><td>SDF loading on volatility shock</td><td></td><td>0.1273</td></tr></table>

Table 3.1: Model Parameter Values

# 3.B.2 Macro Synthesis

It is worth noting that this model does not start with endowment or production processes and household optimization that generate endogenous consumption processes. Instead, the consumption processes are assumed to be exogenous. Subsequent works such as Colacito and Croce [2013], Colacito, Croce, Ho, and Howard [2018b] embed the long-run risk in the endowment or production processes instead of the consumption processes. While these alternative settings bring the model closer to the baseline model we considered in Section 1.A, it also makes the model more difficult to solve and

requires us to rely on numerical solutions.

In this long-run risk model we considered, the exogenous variables include the short-run consumption growth shocks, the long-run consumption growth shocks, and the variance shocks:

$$
\left(\varepsilon_{g, t}, \varepsilon_{g, t}^{*}, \varepsilon_{x, t}, \varepsilon_{x, t}^{*}, \varepsilon_{w, t}, \varepsilon_{w, t}^{*}\right)_{t = 0}^{\infty}.
$$

There are 7 endogenous variables in each period  $t$ :

$$
\left(m_{t}, r_{t}^{c}, w c_{t}, m_{t}^{*}, r_{t}^{c *}, w c_{t}^{*}, e_{t}\right)_{t = 0}^{\infty}.
$$

The model implies the following 6 equations in each period, including 3 for the home country in period  $t$ ,

$$
r_{t + 1}^{c} = \kappa_{0}^{c} + \Delta c_{t + 1} + \log (w c_{t + 1}) - \kappa_{1}^{c} \log (w c_{t}),
$$

$$
m_{t + 1} = \theta \log \delta - \frac{\theta}{\psi} \Delta c_{t + 1} + (\theta - 1) r_{t + 1}^{c},
$$

$$
1 = \mathbb {E}_{t} [ \exp (m_{t + 1} + r_{t + 1}^{c}) ],
$$

and 3 for the Foreign country in period  $t$

$$
r_{t + 1}^{c *} = \kappa_{0}^{c *} + \Delta c_{t + 1}^{*} + \log \left(w c_{t + 1}^{*}\right) - \kappa_{1}^{c *} \log \left(w c_{t}^{*}\right),
$$

$$
m_{t + 1}^{*} = \theta \log \delta - \frac{\theta}{\psi} \Delta c_{t + 1}^{*} + (\theta - 1) r_{t + 1}^{c *},
$$

$$
1 = \mathbb {E}_{t} \left[ \exp \left(m_{t + 1}^{*} + r_{t + 1}^{c *}\right) \right],
$$

Moreover, we assume that the markets are complete, so we have one more equation that relates the exchange rate movement to the SDFs:

$$
\Delta e_{t + 1} = m_{t + 1} - m_{t + 1}^{*}.
$$

# 3.B.3 Exchange Rate Dynamics

Now that we obtain a simple solution of the SDF, we are ready to characterize the exchange rate dynamics.

Proposition 3.5. Assuming complete markets, the real exchange rate movement is

$$
\begin{array}{l} \Delta e_{t + 1} = \left\{- \frac{\theta}{\psi} + (\theta - 1) [ 1 + W_{x} (\rho - \kappa_{1}^{c}) ] \right\} (x_{t} - x_{t}^{*}) + \left\{W_{\sigma} (\phi - \kappa_{1}^{c}) (\theta - 1) \right\} (\sigma_{t}^{2} - \sigma_{t}^{* 2}) \\ - \gamma (\sigma_{t} \varepsilon_{g, t + 1} - \sigma_{t}^{*} \varepsilon_{g, t + 1}^{*}) + (\theta - 1) W_{x} \varphi_{e} (\sigma_{t} \varepsilon_{x, t + 1} - \sigma_{t}^{*} \varepsilon_{x, t + 1}^{*}) + (\theta - 1) W_{\sigma} \omega (\varepsilon_{w, t + 1} - \varepsilon_{w, t + 1}^{*}), \\ \end{array}
$$

the currency risk premium is

$$
\begin{array}{l} r p_{t} \stackrel {{d e f}} {{=}} \mathbb {E}_{t} [ r x_{t + 1} ] = \frac{1}{2} (v a r_{t} (m_{t + 1}^{*}) - v a r_{t} (m_{t + 1})) \\ = \frac{1}{2} \left[ \gamma^{2} + (\theta - 1)^{2} W_{x}^{2} \varphi_{e}^{2} - 2 \nu \gamma (\theta - 1) W_{x} \varphi_{e} \right] (\sigma_{t}^{* 2} - \sigma_{t}^{2}), \\ \end{array}
$$

the interest rate differential is

$$
\begin{array}{l} r_{t} - r_{t}^{*} = \left(- \mathbb {E}_{t} [ m_{t + 1} ] - \frac{1}{2} v a r_{t} (m_{t + 1})\right) - \left(- \mathbb {E}_{t} [ m_{t + 1}^{*} ] - \frac{1}{2} v a r_{t} (m_{t + 1}^{*})\right) \\ = \left\{- \frac{\theta}{\psi} + (\theta - 1) [ 1 + W_{x} (\rho - \kappa_{1}^{c}) ] \right\} \left(x_{t}^{*} - x_{t}\right) \\ + \left\{W_{\sigma} (\phi - \kappa_{1}^{c}) (\theta - 1) + \frac{1}{2} \gamma^{2} + \frac{1}{2} (\theta - 1)^{2} W_{x}^{2} \varphi^{2} - \nu \gamma (\theta - 1) W_{x} \varphi \right\} (\sigma_{t}^{* 2} - \sigma_{t}^{2}), \\ \end{array}
$$

and the Backus-Smith coefficient is

$$
\begin{array}{l} \beta_{t}^{B S} = \frac{\operatorname{co v}_{t} \left(\Delta e_{t + 1} , \Delta c_{t + 1}^{*} - \Delta c_{t + 1}\right)}{\operatorname{va r}_{t} \left(\Delta c_{t + 1}^{*} - \Delta c_{t + 1}\right)} \\ = \gamma + \nu \frac{\varphi_{e} (1 - \theta) W_{x}}{v a r_{t} \left(\sigma_{t}^{*} \varepsilon_{g , t + 1}^{*} - \sigma_{t} \varepsilon_{g , t + 1}\right)} \left(\sigma_{t}^{2} + \sigma_{t}^{* 2}\right). \\ \end{array}
$$

The proof is presented in Appendix A.7. When the markets are complete, we have a simple mapping from the SDF shocks to exchange rate movements. Specifically, as negative home short-run and long-run consumption shocks and positive home volatility shocks raise the marginal utilities of home households, they lead to home currency appreciation. In comparison, the home currency's risk premium only depends on the second-order moments, and it is decreasing in home consumption volatility and increasing in foreign consumption volatility.

The interest rate differential also loads negatively on home consumption volatility, which is also driven by a higher precautionary saving when home consumption volatility is high. In this way, the stochastic volatility drives common movements in currency risk premia and interest rate differentials, giving rise to an explanation of the forward premium puzzle.

Finally, the correlation between long-run and short-run consumption shocks  $\nu$  plays a key role in the Backus-Smith coefficient. Consider the following benchmark: suppose the consumption growth process has no long-run growth or stochastic volatility:  $\Delta c = \mu_g + \sigma_g\varepsilon_{g,t + 1}$ . Then, the Backus-Smith coefficient is

$$
\beta_{t}^{B S} = \frac{- (\theta (1 - \frac{1}{\psi}) - 1) \sigma_{g}^{2} v a r_{t} ((\varepsilon_{g , t + 1}^{*} - \varepsilon_{g , t + 1})))}{\sigma_{g}^{2} v a r_{t} ((\varepsilon_{g , t + 1}^{*} - \varepsilon_{g , t + 1}))} = \gamma ,
$$

which is always positive.

In our calibration, the term  $\frac{\varphi_e(1 - \theta)W_x}{\text{var}_t(\sigma_t^*e_{g,t + 1}^*) - \sigma_t\varepsilon_{g,t + 1}}$  ( $\sigma_t^2 +\sigma_t^{*2}$ ) is always positive. So, a negative correlation between long-run and short-run consumption shocks  $\nu$  lowers the Backus-Smith coefficient below  $\gamma$ . In fact, this correlation is negative enough in our calibration, which gives rise to a negative Backus-Smith coefficient. In other words,

when the long-run consumption shock goes in the opposite direction than the short-run consumption shock, it disentangles the link between the spot consumption growth and marginal utilities: a higher short-run consumption growth at the expense of lowering long-run growth is bad news. It raises marginal utilities and leads to currency appreciation.

This is the key mechanism emphasized by Colacito and Croce [2013], who also provide a reason for the negative correlation: an increase in the home households' long-run consumption growth leads to an increase in their continuation utility and a decline in their marginal utility. With perfect risk-sharing, the social planner should reduce the spot consumption allocated to the home country, leading to a decline in the home households' short-run consumption growth. At the same time, these resources flow to the foreign country that receives relatively worse news.

# 3.B.4 Other Works

Colacito and Croce [2011], Bansal and Shaliastovich [2013] consider similar settings with exogenously given consumption dynamics. Bansal and Shaliastovich [2013] further consider the inflation dynamics, which allows them to price nominal bonds and exchange rates. Colacito and Croce [2013], Colacito, Croce, Ho, and Howard [2018b] embed this setting in endowment economies with long-run risks and recursive preferences. Colacito, Croce, Gavazzoni, and Ready [2018a] introduce heterogeneity in the risk loadings of different countries' long-run consumption shocks.

Parallel to the long-run risk model, other models have also been proposed to describe the dynamics of currency risk premia, such as habit formation [Verdelhan, 2010, Heyerdahl-Larsen, 2014, Stathopoulos, 2017], demand shocks [Pavlova and Rigobon, 2007], rare disasters [Farhi and Gabaix, 2016].

# 3.C Currency Risk Premia in the Cross-Section

The literature on international finance has also provided several mechanisms that generate persistent differences in currency risk premia across currencies. These mechanisms help explain the carry trade and the factor structure in currency returns. In this section, we consider such a mechanism based on the global trade network [Richmond, 2019] and Jiang and Richmond [2023b] in particular. This approach is based on a large literature in macro that studies production networks [Long Jr and Plosser, 1983, Foerster, Sarte, and Watson, 2011, Gabaix, 2011, Acemoglu, Carvalho, Ozdaglar, and

Tahbaz-Salehi, 2012, Chaney, 2014, Baqaae and Farhi, 2019].

Time is discrete and infinite, indexed by  $t$ . There is no storage technology that allows agents to transfer goods across periods. There are  $N$  countries, each populated by a unit mass of households and indexed by  $i$ .

There are two types of goods: intermediate and final consumption goods. Each country has a distinct intermediate good that is used for the production of other intermediate goods. The active households undertake the production of intermediate goods in each country. Consumption goods are assembled as a basket of intermediate goods. We first turn to the production of intermediate goods.

# 3.C.1 Intermediate Goods and the Production Process

Households in each country produce a distinct intermediate tradable good using labor and tradable intermediate goods from different countries. Each active household in country  $i$  has an identical Cobb-Douglas production function of the form

$$
\bar {x}_{t}^{i} = a_{t}^{i} \left(\ell_{t}^{i}\right)^{\theta^{i}} \left(\prod_{j = 1}^{N} \left(x_{j t}^{i}\right)^{w_{i j}}\right), \tag {3.9}
$$

where  $a_{t}^{i}$  is the productivity level,  $\ell_{t}^{i}$  is the labor input, and  $x_{jt}^{i}$  is the quantity of the intermediate goods produced by country  $j$  that are used as production inputs in country  $i$ . The parameter  $\theta^{i}$  measures the contribution of country  $i$ 's labor, and the parameters  $w_{ij}$  measure the contribution of each country  $j$ 's input. We assume that

$$
\theta^{i} + \sum_{j = 1}^{N} w_{i j} = 1 \text{an d} \theta^{i}, w_{i j} > 0,
$$

so that the production function has constant returns to scale. We collect the production parameters for intermediate goods  $w_{ij}$  into a matrix  $W$ .

# 3.C.2 Final Consumption Goods and Household Preferences

Households in country  $i$  assemble their final consumption good from different countries' intermediate goods. Let  $\bar{c}_{it}$  denote the active households' quantity of the final consumption good, which is derived from a Cobb-Douglas production function:

$$
\bar {c}_{t}^{i} = \prod_{j = 1}^{N} \left(c_{j t}^{i}\right)^{v_{i j}}, \tag {3.10}
$$

where  $c_{jt}^{i}$  is the quantity of the intermediate goods produced by country  $j$  used as the production inputs by  $i$ . The parameters satisfy

$$
\sum_{j = 1}^{N} v_{i j} = 1 \text{an d} v_{i j} > 0.
$$

We collect the production parameters for final goods  $v_{ij}$  into a matrix  $V$ . Along with the intermediate goods' production weights  $W$ , the matrix  $V$  will be a key source of international comovements in the model.

The households have log preferences over their aggregate consumption, and discount future utility at rate  $\beta$ . The utility function is

$$
\sum_{t = 1}^{\infty} \delta^{t} \log \overline {{c}}_{t}^{i}.
$$

The households have access to complete financial markets, where they can trade contingent claims with the households in any country.

# 3.C.3 Market Clearing

We study the competitive equilibrium defined in the usual fashion: All households maximize their utilities taking prices as given, and market clearing conditions for each good and labor are satisfied.

The market clearing condition for country  $i$ 's intermediate good is

$$
\overline {{x}}_{t}^{i} = \sum_{j = 1}^{N} \left(c_{i t}^{j} + x_{i t}^{j}\right) + d_{t}^{i}.
$$

On the left-hand side, we have the total output of country  $i$ 's intermediate good. On the right-hand side, we have the demand for this good from each country's consumption and production sectors. We have an additional term  $d_{it}$  as a reduced-form proxy for demand shocks. This term can represent government taxation and spending as in Acemoglu, Akcigit, and Kerr [2016], or within-country transfer to inactive/hand-to-mouth investors as in Jiang and Richmond [2023b].

Labor supply is fixed. The market clearing condition for country  $i$ 's labor is

$$
\ell_{t}^{i} = \overline {{\ell}}^{i}.
$$

# 3.C.4 Macro Synthesis

The competitive equilibrium solution in complete market is characterized by the solution to a social planner's problem. The Lagrangian is

given by

$$
\sum_{i = 1}^{N} \pi^{i} \log{\overline {{c}}_{t}^{i}} + \varphi_{t}^{i} \left(a_{t}^{i} (\ell_{t}^{i})^{\theta^{i}} \left(\prod_{j = 1}^{N} (x_{j t}^{i})^{w_{i j}}\right) - \sum_{j = 1}^{N} \left(c_{i t}^{j} + x_{i t}^{j}\right) - d_{t}^{i}\right) + \chi^{i} (\overline {{\ell}}^{i} - \ell_{t}^{i}),
$$

The exogenous variables are the productivity shocks and the demand shocks:

$$
\left(a_{t}^{i}, d_{t}^{i}\right)_{t = 0}^{\infty}, \quad i = 1, 2, \ldots , N.
$$

There are  $2N^{2} + 5N$  endogenous variables in each period  $t$ :

$$
(\overline {{c}}_{t}^{i}, c_{j t}^{i}, \overline {{x}}_{t}^{i}, x_{j t}^{i}, \ell_{t}^{i}, \varphi_{t}^{i}, \chi_{t}^{i})_{t = 0}^{\infty}, i, j = 1, 2, \ldots , N.
$$

The model implies the following  $2N^{2} + 5N$  equations in each period, which includes  $N$  consumption aggregation equations

$$
\overline {{c}}_{t}^{i} = \prod_{j = 1}^{N} (c_{j t}^{i})^{v_{i j}},
$$

$N$  production equations

$$
\overline {{x}}_{t}^{i} = a_{t}^{i} (\ell_{t}^{i})^{\theta^{i}} \left(\prod_{j = 1}^{N} (x_{j t}^{i})^{w_{i j}}\right),
$$

$2N^{2} + N$  first-order conditions

w.r.t.  $c_{it}^{j}$  ：  $\pi^j v_{ji}(c_{it}^j)^{-1} = \varphi_t^i,$

w.r.t.  $x_{it}^{j}$ $\varphi_t^j\bar{x}_t^j w_{ji}(x_{it}^j)^{-1} = \varphi_t^i,$

w.r.t.  $\ell_{it}$  :  $\varphi_t^i\bar{x}_t^i\theta^i (\ell_t^i)^{-1} = \chi_t^i,$

$N$  intermediate good market clearing conditions

$$
\overline {{x}}_{t}^{i} = \sum_{j = 1}^{N} \left(c_{i t}^{j} + x_{i t}^{j}\right) + d_{t}^{i},
$$

$N$  labor market clearing conditions

$$
\ell_{t}^{i} = \overline {{\ell}}^{i}.
$$

# 3.C.5 Trade Network and Shock Transmission

We next characterize the equilibrium of the model and show how the structure of global production transmits shocks across countries. A variable with its country index omitted is a vector. For example,  $\overline{c}_t$  is the vector where each element is  $\overline{c}_t^i$ . A capitalized parameter with two country indices omitted is a matrix. For example,  $W$  is the matrix with each element being  $w_{ij}$ .

Since the households have access to the complete markets, the competitive equilibrium can be characterized by the solution to a social planner's problem. Within period  $t$ , the social planner's Lagrangian is

$$
\sum_{i = 1}^{N} \pi^{i} \log{\overline {{c}}_{t}^{i}} + \varphi_{t}^{i} \left(a_{t}^{i} (\ell_{t}^{i})^{\theta^{i}} \left(\prod_{j = 1}^{N} (x_{j t}^{i})^{w_{i j}}\right) - \sum_{j = 1}^{N} \left(c_{i t}^{j} + x_{i t}^{j}\right) - d_{t}^{i}\right) + \chi_{t}^{i} (\overline {{\ell}}^{i} - \ell_{t}^{i}),
$$

where  $\pi^i$  is the Pareto weight that the social planner assigns to country  $i$ . This Pareto weight is determined by the initial level of wealth held by each country's households.

A key variable that emerges from the model is a function of trade network parameters for intermediate usages,  $W$ , and consumption,  $V$ . We define the network profile matrix as:

$$
H \equiv V (I - W)^{- 1}.
$$

Solving the planner's Lagrangian, we derive the following lemma to characterize the real quantities in equilibrium. We omit the time subscript for notational convenience.

Proposition 3.6. In equilibrium, the vector of each country's active households' log consumption is

$$
\log \bar {c} = \kappa^{c} + H \left(\log a - \theta \log \left(H^{\prime} \pi + \left(I - W^{\prime}\right)^{- 1} d\right)\right), \tag {3.11}
$$

for some vector of constants  $\kappa^c$ .

The proof is presented in Appendix A.8. This result shows that the structure of the global trade network, summarized by the network profile matrix  $H = V(I - W)^{-1}$ , plays an important role in transmitting both the supply shocks ( $a$ ) and the demand shocks ( $d$ ). The network profile matrix combines the production trade network  $W$  and the consumption trade network  $V$ . The term  $(I - W)^{-1}$  is commonly known as the Leontief inverse, which summarizes the transmission of the productivity shocks. Loosely speaking,  $(I - W)^{-1} = I + W + W^2 + W^3 + \ldots$ , where  $W$  reflects the transmission from the exporting country to the importing country, and  $W^k$  for  $k > 1$  reflects the transmission of shocks due to higher order linkages.

Moreover, in this model, the supply shocks  $a$  are transmitted via the network matrix  $H = V(I - W)^{-1}$ , whereas the demand shocks  $d$  are first transmitted via the transpose of the production network, i.e.,  $(I - W')^{-1}$ . This is a general feature of network transmission. Intuitively, supply shocks propagate downstream, meaning that a productivity shock in one country impacts the production in other countries which import from this country. In comparison, demand

shocks propagate upstream, meaning that a demand shock in one country impacts the production in other countries which export to this country. The transpose operation reverses the direction of the trade linkages, so that the demand shocks are transmitted in the opposite direction of the production linkages.

Taking a first-order approximation, we can express the active households' log consumption growth as a linear function of the supply shocks  $\Delta \log a$  and the demand shocks  $\Delta d$ :

$$
\Delta \log \bar {c} \approx H \left(\Delta \log a - \frac{\theta}{H^{\prime} \pi} (I - W^{\prime})^{- 1} \Delta d\right), \tag {3.12}
$$

where  $\frac{1}{H^{\prime}\pi}$  is a diagonal matrix whose element  $(i,i)$  is  $\frac{1}{\{H^{\prime}\pi\}_i}$ . This expression shows that each country's consumption growth is driven by a combination of demand and supply shocks of, potentially, all other countries globally. The specific combination of shocks that a country is exposed to is primarily determined by the structure of global trade linkages summarized by the network profile matrix  $H$ . This common exposure to country-level shocks that arises due to trade linkages gives rise to international comovements.

# 3.C.6 Characterizing Consumption and Exchange Rate Comovements

We are interested in characterizing international comovements in consumption growth and exchange rates. We define the bilateral log real exchange rate between countries  $i$  and  $j$ ,  $e_t^{i/j}$ , as the log price of country  $j$ 's consumption bundle per unit of country  $i$ 's consumption bundle. An increase in  $e_t^{i/j}$  implies an appreciation of country  $i$ 's real exchange rate relative to country  $j$ 's. Since markets are complete, the bilateral exchange rate movement is determined by the difference in the growth rates of marginal utilities:

$$
\Delta e_{t}^{i / j} = \Delta \log \bar {c}_{t}^{j} - \Delta \log \bar {c}_{t}^{i}.
$$

We define each country's currency base factor,  $\Delta \bar{e}_{it}$ , as the equal-weighted average log real exchange rate change against all countries, including itself:

$$
\Delta \bar {e}_{t}^{i} = \frac{1}{N} \sum_{j = 1}^{N} \Delta e_{t}^{i / j}.
$$

Let  $Var[z]$  denote the variance-covariance matrix for a vector of stochastic variables  $z$ . We define a general measure of closeness between two countries  $i$  and  $j$  as

$$
\mathcal {C} (i, j) \equiv \left\{H \cdot V a r \left[ \Delta \log a - \frac{\theta}{H^{\prime} \pi} \left(I - W^{\prime}\right)^{- 1} \Delta d \right] \cdot H^{\prime} \right\}_{i j}, \tag {3.13}
$$

which measures the pairwise similarity of the shocks which drive countries' quantities. Then, we obtain the following proposition:

Proposition 3.7. (a) Closer countries have more correlated active household consumption growth:

$$
c o v \left(\Delta \log \bar {c}_{t}^{i}, \Delta \log \bar {c}_{t}^{j}\right) = \mathcal {C} (i, j).
$$

(b) Closer countries have more correlated currency base factors and less volatile bilateral real exchange rate movements:

$$
c o v \left(\Delta \bar {e}_{t}^{i}, \Delta \bar {e}_{t}^{j}\right) = \mathcal {C} (i, j) - \overline {{\mathcal {C}}} (i) - \overline {{\mathcal {C}}} (j) + \kappa^{e},
$$

$$
v a r (\Delta e_{t}^{i / j}) = - 2 \mathcal {C} (i, j) + \mathcal {C} (i, i) + \mathcal {C} (j, j),
$$

where  $\kappa^e$  is a constant:

$$
\kappa^{e} = \frac{1}{N^{2}} \sum_{k = 1}^{N} \sum_{\ell = 1}^{N} \mathcal {C} (k, \ell),
$$

and  $\overline{\mathcal{C}}(i)$  is the average closeness between country  $i$  and all countries:

$$
\overline {{\mathcal {C}}} (i) = \frac{1}{N} \sum_{j = 1}^{N} \mathcal {C} (i, j).
$$

(c) The variance of country  $i$ 's currency base factor is

$$
\operatorname{va r} \left(\Delta \bar {e}_{t}^{i}\right) = - 2 \overline {{\mathcal {C}}} (i) + \mathcal {C} (i, i) + \kappa^{e}.
$$

Fixing its closeness to itself  $\mathcal{C}(i,i)$ , the country's currency base factor is less volatile if it has a higher average closeness.

The proof is presented in Appendix A.9. This proposition shows that the consumption and exchange rate covariance is directly related to the closeness matrix  $\mathcal{C}$ , which depends on both the covariance structures of supply and demand shocks as well as the structure of the trade network that propagates these shocks.

# 3.C.7 Currency Risk Premia and Endogenous Common Factors

We set the U.S. dollar as the base currency.

Proposition 3.8. Currency  $i$ 's expected excess return is

$$
\begin{array}{l} r p_{t}^{i / \$} \stackrel {{d e f}} {{=}} \mathbb {E}_{t} \left[ r x_{t + 1}^{i / \$} \right] = \frac{1}{2} (v a r_{t} (m_{t + 1}^{\$}) - v a r_{t} (m_{t + 1}^{i})) \\ = \frac{1}{2} \left(\mathcal {C} (\mathrm{\$}, \mathrm{\$}) - \mathcal {C} (i, i)\right), \\ \end{array}
$$

and its interest rate is

$$
\begin{array}{l} r_{t}^{i} = - \mathbb {E}_{t} \left[ m_{t + 1}^{i} \right] - \frac{1}{2} v a r_{t} \left(m_{t + 1}^{i}\right) \\ = - \log \delta - \frac{1}{2} \mathcal {C} (i, i) \\ \end{array}
$$

The proof is presented in Appendix A.10. This result shows that, fixing the base currency, a currency  $i$ 's risk premium is decreasing in its closeness to itself, i.e.,  $\mathcal{C}(i,i)$ . Following Richmond [2019], we may call this object country  $i$ 's trade centrality. The trade centrality summarizes how this country's position and relation to other countries in the trade network affects its currency risk premium. A country with a large  $\mathcal{C}(i,i)$  is a central country and has a low currency risk premium, whereas a country with a small  $\mathcal{C}(i,i)$  is a peripheral country and has a high currency risk premium.

We consider the following numerical example to understand what centrality captures. There are 4 countries. We assume the home bias in consumption tends to 1 in the limit, i.e.,  $V \rightarrow I$ , and that the combined supply and demand shocks are i.i.d. across countries,  $Var\left[\varepsilon^{S} - \frac{\theta}{H^{\prime}\pi}(I - W^{\prime})^{-1}\varepsilon^{D}\right] = Var[\varepsilon] = I$ . These simplifying assumptions allow us to focus on the production trade network  $W$ , which is given by

$$
W = (1 - \theta) \left[ \begin{array}{c c c c} 1 & 0 & 0 & 0 \\ 0.25 & 0.75 & 0 & 0 \\ 0.5 & 0 & 0.5 & 0 \\ 0.75 & 0 & 0 & 0.25 \end{array} \right],
$$

with  $\theta = 0.5$

In this trade network, countries 2, 3, and 4 rely on country 1's export as intermediate input. The dependency is increasing from country 2 to 4. The implied centrality measure is

$$
\left[ \begin{array}{c} \mathcal {C} (1, 1) \\ \mathcal {C} (2, 2) \\ \mathcal {C} (3, 3) \\ \mathcal {C} (4, 4) \end{array} \right] = \left[ \begin{array}{c} 4.00 \\ 2.72 \\ 2.22 \\ 2.04 \end{array} \right],
$$

which implies that country 1 is the most central country because it provides essential production input to all other countries, and country 4 is the most peripheral country because it is very reliant on country 1's export. Accordingly, country 1's shock is the most systematic and as a result it has the lowest currency risk premium.

This simple network structure also gives rise to a factor structure in exchange rate movements. Let  $\varepsilon_{t+1}^{(i)}$  denote the combined supply and demand shock in country  $i$ . Then, the bilateral exchange rate movements also load on these shocks:

$$
\begin{array}{l} \Delta e_{t + 1}^{1 / 2} = - 1.60 \varepsilon_{t + 1}^{(1)} + 1.60 \varepsilon_{t + 1}^{(2)}, \\ \Delta e_{t + 1}^{1 / 3} = - 1.33 \varepsilon_{t + 1}^{(1)} + 1.33 \varepsilon_{t + 1}^{(3)}, \\ \Delta e_{t + 1}^{1 / 4} = - 1.14 \varepsilon_{t + 1}^{(1)} + 1.14 \varepsilon_{t + 1}^{(4)}, \\ \end{array}
$$

and the central country's shock  $\varepsilon_{t+1}^{(1)}$  becomes the common factor in the cross-section of exchange rates. In fact, even when we consider the bilateral pair between countries 2 and 3 that does not involve the central country 1,  $\varepsilon_{t+1}^{(1)}$  still shows up:

$$
\Delta e_{t + 1}^{2 / 3} = 0.27 \varepsilon_{t + 1}^{(1)} - 1.60 \varepsilon_{t + 1}^{(2)} + 1.33 \varepsilon_{t + 1}^{(3)}.
$$

In comparison, all other (peripheral) countries' consumption load on this common factor, and have no further pairwise comovements beyond that induced by their exposure to the common factor. The shocks  $\varepsilon_{t+1}^{(2)}, \varepsilon_{t+1}^{(3)}$ , and  $\varepsilon_{t+1}^{(4)}$  are idiosyncratic in the sense that only one country is exposed to each of them.

This expression demonstrates how our general equilibrium model produces exchange rate dynamics like those found in factor models of exchange rates in Section 3.A. Specifically, country 1's shock becomes the global shock  $\varepsilon_{t+1}^{w}$ , and other countries' shocks become country-specific shocks  $\varepsilon_{t+1}^{i}$ . In this way, common factors in exchange rates arise from the network propagation of independent shocks across countries. This example could also be generalized to allow for multiple factors once we impose a richer dependence structure in the consumption and production networks.

In the general model with dense input-output linkages in  $W$  and  $V$ , there are no truly idiosyncratic shocks, but some shocks are more important for the variation of quantities and asset prices, and this information can be summarized by the closeness measure.

# 3.C.8 Other Works

Other works explain cross-country differences in currency risk premia based on different mechanisms, such as size [Martin, 2011, Hassan, 2013], commodity goods [Ready, Roussanov, and Ward, 2017b,a], and financial intermediation and risk-bearing capacity [Maggiori, 2017, Wiriadinata, 2018, Fang, 2021].

# 3.C.9 A Note on Log Preference

In this model, we assume that agents have log preferences:  $u(c) = \log(c)$ . As with all modeling assumptions, this has pros and cons. In this context with Cobb-Douglas aggregation of goods, the key implication of the log preferences is that the households will allocate a constant share of their budget to each consumption goods. That is,

$$
\frac{c_{i t}^{j}}{c^{k} j_{i t}} = \frac{\pi^{j} v_{j i}}{\pi^{k} v_{k i}}
$$

is a constant.

If we aggregate this result across all countries, we can show that the value of a country's aggregate output in the common numétaire is

$$
\varphi_{t} \bar {x}_{t} = H^{\prime} \pi + (I - W^{\prime})^{- 1} d_{t},
$$

where  $\varphi_t\overline{x}_t$  is a vector whose  $i$ -th element is  $\varphi_t^i\overline{x}_t^i$ . That is, supply shocks  $a_{t}$  do not affect the value of a country's aggregate output; only demand shocks do. This is because, while a higher supply shock raises the quantity of a country's output, it proportionally lowers its price, so that the value of the output is unchanged [Cole and Obstfeld, 1991]. In contrast, a higher demand shock raises the price of the local goods while leaving the quantity unchanged, so that the value of the output increases.

While this is a strong assumption, it is technically convenient. From the production equations (3.9) and the social planner's first-order conditions, the country-level production quantities satisfy

$$
\log \bar {x}_{t}^{i} = \log a_{t}^{i} + \theta^{i} \log \ell_{t}^{i} + \sum_{j = 1}^{N} w_{i j} \log \left(\frac{\varphi_{t}^{i} \bar {x}_{t}^{i} w_{i j}}{\varphi_{t}^{j} \bar {x}_{t}^{j} / \bar {x}_{t}^{j}}\right),
$$

which allows us to solve the vector of the production quantity  $\log \overline{x}_t$  as a linear transformation of the vector of the production value  $\log (\varphi_t\bar{x}_t)$ , and obtain a closed-form characterization of the equilibrium allocations.

This discussion centers on the implication of log preferences for the households' within-period choices. Log preferences also have important implications for the households' intertemporal choices. As we will see in Section 9.B, the households with log preferences are "myopic" because they do not pay attention to the time variations in investment opportunities.

# 3.D Currency Risk Premia in the Long Run

So far we have been focusing on the currency risk premium and currency factor structure in one-period returns. In this section, we turn to the long-run currency risk premium and the long-term bond yields. This approach builds on works related to the permanent and the transitory components of the SDFs, such as Alvarez and Jermann [2005], Hansen and Scheinkman [2009], Backus, Boyarchenko, and Chernov [2018], Lustig, Stathopoulos, and Verdelhan [2019]. We start with some additional notations. First, we introduce the multi-period bonds. Let  $r_t(h)$  denote the log yield on the risk-free bond with maturity  $h$ . The bond price is given by

$$
p_{t} (h) = \exp (- r_{t} (h) h).
$$

If we allow the home and foreign households to trade this bond in the baseline economy, we can extend the household budget constraint (1.1) to

$$
p_{t} y_{t} + \sum_{h} b_{H, t - 1} (h) \exp (r_{t - 1} (h)) + \sum_{h} b_{F, t - 1} (h) \exp (r_{t - 1}^{*} (h) - e_{t}) = c_{t} + \sum_{h} b_{H, t} (h) + \sum_{h} b_{F, t} (h) \exp (- e_{t}).
$$

Then, the Lagrangian implies the following Euler equations

$$
\begin{array}{l} 1 = \mathbb {E}_{t} \left[ \delta^{h} \frac{u^{\prime} (c_{t + h})}{u^{\prime} (c_{t})} \exp (r_{t} (h) h) \right], \\ 1 = \mathbb {E}_{t} \left[ \delta^{h} \frac{u^{\prime} (c_{t + h}^{*})}{u^{\prime} (c_{t}^{*})} \exp (- \Delta e_{t, t + h} + r_{t} (h) h) \right], \\ \end{array}
$$

where  $\Delta e_{t,t + h} \stackrel{\mathrm{def}}{=} e_{t + h} - e_t$  denotes the  $h$ -period log exchange rate movement.

If we define the multi-horizon SDFs as

$$
\begin{array}{l} \exp (m_{t, t + h}) \stackrel {\text{de f}} {=} \delta^{h} \frac{u^{\prime} (c_{t + h})}{u^{\prime} (c_{t})}, \\ \exp (m_{t, t + h}^{*}) \stackrel {\mathrm{de f}} {=} \delta^{h} \frac{u^{\prime} (c_{t + h}^{*})}{u^{\prime} (c_{t}^{*})}, \\ \end{array}
$$

then, the Euler equations can be written as

$$
\begin{array}{l} 1 = \mathbb {E}_{t} [ \exp (m_{t, t + h}) \exp (r_{t} (h) h) ], \\ 1 = \mathbb {E}_{t} \left[ \exp \left(m_{t, t + h}^{*}\right) \exp \left(- \Delta e_{t, t + h} + r_{t} (h) h\right) \right]. \\ \end{array}
$$

It is useful to compare two different multi-horizon currency trading strategies from period 0 to period  $h$ . In the first strategy, the home households buy the foreign one-period bond and sell the home one-period bond in each period  $t$ . The cumulative log return from this strategy is

$$
r x_{h}^{(1)} (h) \stackrel {\mathrm{de f}} {=} \sum_{t = 1}^{h} (\Delta e_{t} + r_{t - 1} (1) - r_{t - 1}^{*} (1)) = \Delta e_{0, h} + \sum_{t = 1}^{h} (r_{t - 1} (1) - r_{t - 1}^{*} (1)).
$$

In the second strategy, the home households buy the foreign  $h$ -period bond and sell the home  $h$ -period bond in period 0, and hold both positions until maturity. The cumulative log return from this strategy is

$$
r x_{h}^{(h)} (h) \stackrel {\mathrm{de f}} {=} \Delta e_{0, h} + h \left(r_{0} (h) - r_{0}^{*} (h)\right).
$$

While both strategies are exposed to the same exchange rate risk captured by  $\Delta e_{0,h}$ , the cumulative interest rate differential between one-period bonds, i.e.,  $\sum_{t=1}^{h}(r_{t-1}(1) - r_{t-1}^*(1))$ , can be different from the interest rate differential between  $h$ -period bonds, i.e.,  $h(r_0(h) - r_0^*(h))$ . So, these two strategies generate different returns.

# 3.D.1 Economic Set-up

We begin with an economic set-up to motivate the SDF decomposition that we will consider next. We begin with a one-country endowment economy with CRRA preferences. The endowment  $y_{t}$  has a permanent component  $y_{t}^{P}$  and a transitory component  $y_{t}^{T}$ , which satisfy

$$
\log y_{t} = \log y_{t}^{P} + \log y_{t}^{T},
$$

$$
\log y_{t}^{P} = \log y_{t - 1}^{P} + \mu + v_{P} \varepsilon_{t}^{P},
$$

$$
\log y_{t}^{T} = \phi \log y_{t - 1}^{T} + \nu_{T} \varepsilon_{t}^{T},
$$

where  $0 \leq \phi < 1$  and  $\varepsilon_t^P$  and  $\varepsilon_t^T$  are serially independent and normally distributed random variables with mean zero and standard deviation of one.

The representative households' preference is

$$
u (c_{t}) = \delta^{t} \frac{c_{t}^{1 - \gamma}}{1 - \gamma}.
$$

With market clearing  $y_{t} = c_{t}$ , the log marginal utility can be written as

$$
m c_{t} \stackrel {\mathrm{de f}} {=} \log u^{\prime} (c_{t}) = t \log \delta - \gamma \log y_{t},
$$

which we decompose into a permanent component  $mc_{t}^{P}$  and a transitory component  $mc_{t}^{T}$ :

$$
m c_{t} = m c_{t}^{P} + m c_{t}^{T},
$$

where

$$
m c_{t}^{P} = - \frac{\overline {{m c}}^{T}}{1 - \phi} + \frac{\phi}{1 - \phi} \frac{\log \beta}{1 - \phi} + \left(\log \delta - \frac{\log \beta}{1 - \phi}\right) t - \gamma \log y_{t}^{P},
$$

$$
m c_{t}^{T} = \frac{\overline {{m c}}^{T}}{1 - \phi} - \frac{\phi}{1 - \phi} \frac{\log \beta}{1 - \phi} + \frac{\log \beta}{1 - \phi} t - \gamma \log y_{t}^{T},
$$

where the constant  $\beta$  and  $\overline{mc}^T$  satisfies

$$
\begin{array}{l} \frac{\log \beta}{1 - \phi} = \frac{1}{2} (\gamma \nu_{P})^{2} + \log \delta - \mu \gamma , \\ \overline {{m c}}^{T} = - \frac{1}{2 + 2 \phi} \gamma^{2} \nu_{T}^{2} - \gamma^{2} \nu_{P} \nu_{T} \rho_{T P} + \frac{\phi}{1 - \phi} \log \beta . \\ \end{array}
$$

The permanent component  $mc_{t}^{P}$  contains the shock  $\varepsilon_{t}^{P}$  to the permanent component of the endowment, whereas the transitory component  $mc_{t}^{T}$  contains the shock  $\varepsilon_{t}^{T}$  to the transitory component of the endowment. The two marginal utility components also contain additional constants and time trends, such that the permanent component

of the marginal utility, i.e.,  $\exp (mc_t^P)$ , is a Martingale:

$$
m c_{t}^{P} = m c_{t - 1}^{P} - \frac{1}{2} \sigma_{P}^{2} + \sigma_{P} \varepsilon_{t}^{P}, \tag {3.14}
$$

$$
m c_{t}^{T} = \bar {m c}^{T} + \phi m c_{t - 1}^{T} + t \log \beta + \sigma_{T} \varepsilon_{t}^{T}, \tag {3.15}
$$

where

$$
\sigma_{P} = - \gamma \nu_{P},
$$

$$
\sigma_{T} = - \gamma v_{T}.
$$

In this way, our simple endowment economy motivates a decomposition of the marginal utility into the permanent and transitory components, which we study further in the next subsection.

# 3.D.2 SDF Decomposition

Alvarez and Jermann [2005] propose a general decomposition of the marginal utility:

$$
m c_{t} = m c_{t}^{T} + m c_{t}^{P},
$$

where  $mc_{t}^{T}$  denotes the transitory component of the SDF,

$$
\exp \left(m c_{t}^{T}\right) = \lim_{h \rightarrow \infty} \frac{\tilde {\delta}^{t + h}}{p_{t} (h)}, \tag {3.16}
$$

where the constant  $\tilde{\delta}$  is chosen to satisfy the regularity condition  $0 < \lim_{h\to \infty}p_t(h) / \tilde{\delta}^h < \infty$ . The transitory component is closely related to the return to the infinite-horizon bond:

$$
\lim_{h \rightarrow \infty} \frac{p_{t + 1} (h - 1)}{p_{t} (h)} = \exp \left(m c_{t}^{T} - m c_{t + 1}^{T}\right). \tag {3.17}
$$

The permanent component of the marginal utility is a martingale by construction:

$$
\exp \left(m c_{t}^{P}\right) = \lim_{h \rightarrow \infty} \frac{p_{t} (h)}{\tilde {\delta}^{t + h}} \exp \left(m c_{t}\right) = \lim_{h \rightarrow \infty} \frac{\mathbb {E}_{t} \left[ \exp \left(m c_{t + h}\right)\right]}{\tilde {\delta}^{t + h}},
$$

where we used  $p_t(h) = \mathbb{E}_t[\exp (m_{t,t + h})] = \mathbb{E}_t[\exp (mc_{t + h} - mc_t)]$ .

The marginal utility components  $mc_{t}^{T}$  and  $mc_{t}^{P}$  we considered in Eq. (3.14) and (3.15) provide a concrete example of the decomposition. Let us use  $\rho_{TP}$  to denote the correlation between the permanent shock  $\varepsilon_{t}^{P}$  and the transitory shock  $\varepsilon_{t}^{T}$ . Let  $\sigma_{TP} = \sigma_{T}\sigma_{P}\rho_{TP}$ .

In this economy, the bond price satisfies

$$
1 = \mathbb {E}_{t} [ \exp (m_{t, t + h}) p_{t} (h) ].
$$

Evaluating this conditional expectation and take the horizon  $h$  to infinity, we obtain the following proposition about the long-term yield.

Proposition 3.9. (a) The long term bond price is given by

$$
\begin{array}{l} p_{t} (h) \stackrel {\text{de f}} {=} \exp (- r_{t} (h) h) = \exp \left(\frac{1 - \phi^{h}}{1 - \phi} \overline {{m c}}^{T} + \left(\frac{t + h - \phi^{h} (t + 1)}{1 - \phi} - \frac{\phi - \phi^{h}}{(1 - \phi)^{2}}\right) \log \beta + (\phi^{h} - 1) m c_{t}^{T} \right. \\ \left. + \frac{1 - \phi^{2 h}}{2 - 2 \phi^{2}} \sigma_{T}^{2} + \frac{1 - \phi^{h}}{1 - \phi} \sigma_{T P}\right). \\ \end{array}
$$

(b) Let  $\tilde{\delta} \stackrel{def}{=} \beta^{1/(1-\phi)}$ . Then, the long-term bond yield satisfies

$$
\lim_{h \rightarrow \infty} r_{t} (h) + \log \tilde {\delta} = 0, \tag {3.18}
$$

and

$$
\lim_{h \rightarrow \infty} \left(r_{t} (h) + \log \tilde {\delta}\right) h = \sum_{i = 0}^{\infty} \phi^{i} \sigma_{T} \varepsilon_{t - i}^{T} - \frac{1}{2 - 2 \phi^{2}} \sigma_{T}^{2} - \frac{1}{1 - \phi} \sigma_{T P}. \tag {3.19}
$$

The proof is presented in Appendix A.11. This result offers several insights for thinking about the valuation of the long-term bond. Part (a) of the proposition shows that the variations in the bond yield  $r_t(h)$  only depend on the variations in the transitory SDF component  $mc_t^T$ , both when  $h$  is finite and when we take  $h$  to infinity. This is because movements in the transitory SDF component will mean-revert in the future, which contains information about the future SDF movement  $m_{t,t + h}$  and therefore affects the bond yield. In comparison, the permanent SDF component does not affect the bond yield, because they permanently shift the marginal utility level  $mc_t$ , and contain no information about the future SDF movement  $m_{t,t + h}$  by construction.

While the permanent SDF component does not affect the bond yield, it manifests itself in the exchange rate. When markets are complete, the exchange rate (in log) is equal to the log SDF differential. As a result, a shock to the permanent component of a country's SDF will have a permanent impact on the bilateral exchange rate unless it is offset by a shock to the permanent component of the other country's SDF.

In part (b) of the proposition, Eq. (3.18) shows that the long-term bond yield  $r_t(h)$  converges to

$$
- \log \tilde {\delta} = - \frac{\log \beta}{1 - \phi} = - \frac{1}{2} \sigma_{P}^{2} - \log \delta + \mu \gamma
$$

as the horizon  $h$  approaches infinity. This value depends on the volatility of the permanent SDF shock,  $\sigma_{P}$ , but it does not depend on the volatility of the transitory SDF shock,  $\sigma_{T}$ , or the realization of the transitory SDF shocks,  $\varepsilon_{t}^{T}$ . In particular, this value is equal to the one-period yield in the absence of the transitory endowment shocks. So, while the permanent SDF component does not affect the variations in the bond yield, it affects its unconditional level.

Eq. (3.19) shows that the long-term bond price, after taking out the deterministic trend  $(\log \tilde{\delta})h$ , converges to a function of the past transitory shocks  $\varepsilon_{t - i}^{T}$ . This quantity is closely related to the exchange rate level, as we will see next. Moreover, using the definition of the bond price  $p_t(h)\stackrel {\mathrm{def}}{=}\exp (-r_t(h)h)$ , we can show that the bond price scaled by  $\tilde{\delta}$  is finite:

$$
0 <   \lim_{h \rightarrow \infty} p_{t} (h) / \tilde {\delta}^{h} <   \infty .
$$

Before we move on to the two-country setting, let us consider two special cases. The first special case is one in which the transitory endowment shock  $\varepsilon_t^T$  is always zero. In this case, the SDF is a martingale, and the bond yields are constant across time and across tenors:

$$
r_{t} (h) = - \frac{1}{2} \sigma_{P}^{2} - \log \delta + \mu \gamma .
$$

The second special case is one in which the permanent endowment shock  $\varepsilon_t^P$  is always zero. In this case, according to Eq. (3.17), reproduced below,

$$
\lim_{h \to \infty} \frac{p_{t + 1} (h - 1)}{p_{t} (h)} = \exp \left(m c_{t}^{T} - m c_{t + 1}^{T}\right),
$$

the return to the infinite-horizon bond is exposed to the shock to the transitory component of marginal utility, which contains all the SDF risk there is. As a result, the infinite-horizon bond is the riskiest asset in this economy, and should therefore earn the highest Sharpe ratio. If the 30-year bond is a good proxy for the infinite-horizon bond, its low return in the data suggests that this special case is not a good description of the world.

# 3.D.3 Two Countries

Now, we consider the pair of SDFs between the home and the foreign countries. We also decompose the foreign marginal utility as

$$
m c_{t}^{*} = m c_{t}^{T, *} + m c_{t}^{P, *}.
$$

When markets are complete, the exchange rate is equal to the ratio of the two countries' SDFs:

$$
\Delta e_{t} = \Delta m c_{t} - \Delta m c_{t}^{*} = (\Delta m c_{t}^{P} - \Delta m c_{t}^{P, *}) + (\Delta m c_{t}^{T} - \Delta m c_{t}^{T, *}).
$$

For notational convenience, we define

$$
\Delta e_{t}^{P} \stackrel {\mathrm{de f}} {=} \Delta m c_{t}^{P} - \Delta m c_{t}^{P, *},
$$

$$
\Delta e_{t}^{T} \stackrel {\text{de f}} {=} \Delta m c_{t}^{T} - \Delta m c_{t}^{T, *}.
$$

From the definition of the transitory SDF component in Eq. (3.16), the transitory component of the exchange rate movement is

$$
\begin{array}{l} \Delta e_{t}^{T} \stackrel {\text{de f}} {=} \Delta m c_{t}^{T} - \Delta m c_{t}^{T, *} \\ = \lim_{h \rightarrow \infty} \Delta \log \frac{\tilde {\delta}^{t + h}}{p_{t} (h)} - \Delta \log \frac{\left(\tilde {\delta}^{*}\right)^{t + h}}{p_{t}^{*} (h)} = \log \tilde {\delta} - \log \tilde {\delta}^{*} + \lim_{h \rightarrow \infty} h \left(\Delta r_{t} (h) - \Delta r_{t}^{*} (h)\right). \\ \end{array}
$$

If two countries share the same martingale component of the pricing kernel, then the resulting exchange rate is stationary up to a deterministic time trend. In this case,

$$
\Delta e_{t} = \Delta e_{t}^{T} = \log \tilde {\delta} - \log \tilde {\delta}^{*} + \lim_{h \to \infty} h (\Delta r_{t} (h) - \Delta r_{t}^{*} (h)).
$$

For the exchange rate movement to be finite,  $\lim_{h\to \infty}h(\Delta r_t(h) - \Delta r_t^* (h))$  must be finite, which means that a stationary exchange rate in a complete-market economy requires the home and foreign long-term bond yields to be identical in the limit:

$$
\lim_{h \rightarrow \infty} \left(\Delta r_{t} (h) - \Delta r_{t}^{*} (h)\right) = 0. \tag {3.20}
$$

Finally, assuming  $\log \tilde{\delta} = \log \tilde{\delta}^*$  and iterating this equation forward, we obtain the following result [Lustig, Stathopoulos, and Verdelhan, 2019].

Proposition 3.10. When markets are complete and the two countries' SDFs share the same permanent component, the deviation of the current exchange rate level  $e_t$  from its long-run mean  $\bar{e} = \lim_{j \to \infty} \mathbb{E}_t[e_{t+j}]$  is purely driven by the infinite-horizon bond yield differential:

$$
e_{t} - \bar {e} = \lim_{h \rightarrow \infty} h \left(r_{t} (h) - r_{t}^{*} (h)\right). \tag {3.21}
$$

We can think of Eq. (3.21) as the long-run uncovered interest rate parity (long-run UIP) condition. This condition is related to the one-period UIP condition:

$$
e_{t} - \mathbb {E}_{t} [ e_{t + 1} ] = r_{t} - r_{t}^{*}.
$$

In Section 1.B Eq. (1.13), we show that the one-period UIP condition fails, and an additional risk premium term  $rp_{t}$  is required on the right-hand side. In comparison, Eq. (3.21) shows that, when the exchange rate is stationary, the uncertainty in the exchange rate level over the infinite horizon vanishes from the pricing perspective, leading to zero risk premium. As a result, the exchange rate's deviation from the long-run mean is only determined by the long-term bond yield differential.

Moreover, if we compare this result with the exchange rate accounting formula in Proposition 1.2, reproduced below,

$$
e_{t} - \bar {e} = \sum_{j = 0}^{\infty} \mathbb {E}_{t} [ r_{t + j} - r_{t + j}^{*} ] - \sum_{j = 0}^{\infty} \mathbb {E}_{t} [ r p_{t + j} ],
$$

we can see that the infinite-horizon bond yield incorporates information about both the future short rates and the future currency risk premia, i.e.,

$$
\lim_{h \rightarrow \infty} h \left(r_{t} (h) - r_{t}^{*} (h)\right) = \sum_{j = 0}^{\infty} \mathbb {E}_{t} \left[ r_{t + j} - r_{t + j}^{*} \right] - \sum_{j = 0}^{\infty} \mathbb {E}_{t} \left[ r p_{t + j} \right].
$$

If we further decompose the infinite-horizon bond yield into an expected short rate component and a yield spread component, the bond yield spread differential is related to the currency risk premium:

$$
\lim_{h \to \infty} \left(h r_{t} (h) - \sum_{j = 0}^{h - 1} \mathbb {E}_{t} [ r_{t + j} ]\right) - \lim_{h \to \infty} \left(h r_{t}^{*} (h) - \sum_{j = 0}^{h - 1} \mathbb {E}_{t} [ r_{t + j}^{*} ]\right) = - \sum_{j = 0}^{\infty} \mathbb {E}_{t} [ r p_{t + j} ].
$$

In this equation, the left-hand side is the cumulative excess return of holding the home bond until maturity minus that of holding the foreign bond, and the right-hand side is the currency risk premium derived from rolling over one-period bond positions across countries. This equation shows that these two risk premium measures in the bond market and in the currency market are closely related, provided that markets are complete and the exchange rate is stationary.

Finally, the exchange rate stationarity can be imposed implicitly by monetary policies. Let us consider the following special case.

Suppose the home and foreign SDFs have the following dynamics:

$$
\begin{array}{l} m_{t, t + 1} = - \mu - \sigma \varepsilon_{t + 1}, \\ m_{t, t + 1}^{*} = - \mu + \phi e_{t}. \\ \end{array}
$$

While the home SDF is a random walk (plus a deterministic drift), the foreign SDF is set up so that the foreign short rate responds to the exchange rate level. Assuming  $\phi > 0$ , the foreign central bank lowers the local one-period interest rate  $r_t^*(1) = \mu - \phi e_t$  when the home currency is strong, which creates an expected appreciation of the foreign currency.

In complete markets, the exchange rate movement is

$$
\Delta e_{t + 1} = m_{t, t + 1} - m_{t, t + 1}^{*} = - \phi e_{t} - \sigma \varepsilon_{t + 1},
$$

which is a stationary AR(1) process. In other words, the foreign interest rate's response to the exchange rate level guarantees a stable exchange rate in the long run. The long-run exchange rate is

$$
\bar{e}\stackrel {\mathrm{def}}{=}\lim_{j\to \infty}\mathbb{E}_{t}[e_{t + j}] = 0.
$$

This model allows us to solve the long-term bond yields in closed form. The home country's bond yields have a flat term structure:

$$
r_{t} (h) = \mu - \frac{1}{2} \sigma^{2}.
$$

Conjecture that

$$
\mathbb {E}_{t} [ M_{t, t + h}^{*} ] = \exp (h (a_{h} + b_{h} e_{t}))
$$

with the boundary condition  $a_0 = b_0 = 0$ . By iteration,

$$
\begin{array}{l} \mathbb {E}_{t} \left[ M_{t, t + h}^{*} \right] = \mathbb {E}_{t} \left[ \exp (- \mu + \phi e_{t}) \mathbb {E}_{t + 1} \left[ M_{t + 1, t + h}^{*} \right] \right. \\ = \mathbb {E}_{t} [ \exp (- \mu + \phi e_{t}) \exp ((h - 1) (a_{h - 1} + b_{h - 1} e_{t + 1})) ] \\ \end{array}
$$

$$
\begin{array}{l} \exp \left(h \left(a_{h} + b_{h} e_{t}\right)\right) = \mathbb {E}_{t} \left[ \exp \left(- \mu + \phi e_{t} + (h - 1) a_{h - 1} + (h - 1) b_{h - 1} (1 - \phi) e_{t} - (h - 1) b_{h - 1} \sigma \varepsilon_{t + 1} \right] \right. \\ = \exp (- \mu + (h - 1) a_{h - 1} + \frac{1}{2} (h - 1)^{2} b_{h - 1}^{2} \sigma^{2} + ((h - 1) (1 - \phi) b_{h - 1} + \phi) e_{t}) \\ \end{array}
$$

which implies

$$
a_{h} = - \mu + \frac{\sigma^{2}}{2 h} \left(\frac{1 - (1 - \phi)^{2 h}}{2 \phi - \phi^{2}} - \frac{2 - 2 (1 - \phi)^{h}}{\phi} + h\right)
$$

$$
b_{h} = \frac{1 - (1 - \phi)^{h}}{h}.
$$

As  $h \to \infty$ ,  $b_h$  converges to 0, and  $a_h$  converges to  $-\mu + \sigma^2 / 2$ , which implies

$$
\lim_{h \rightarrow \infty} r_{t}^{*} (h) = \lim_{h \rightarrow \infty} (- a_{h} + b_{h} e_{t}) = \mu - \frac{1}{2} \sigma^{2} = \lim_{h \rightarrow \infty} r_{t} (h).
$$

That is, the foreign long-term yield  $r_t^*(h)$  converges to the home long-term yield  $r_t(h)$  for large  $h$ , even when the next-period marginal utility is stochastic in the home country (i.e.,  $var_t(mc_{t+1}) = \sigma^2$ ) while it is fully predictable in the foreign country (i.e.,  $var_t(mc_{t+1}^*) = 0$ ). This result confirms our earlier result in Eq. (3.20) that a stationary exchange rate implies that the two countries' long-term bond yields converge to the same level.

# 3.D.4 Pricing Permanent Cash Flows

Let us return to the one-country setting with the SDF specification according to Eq. (3.14) and (3.15). Let  $p_t^y(h)$  denote the price of the endowment  $y_{t + h}$  in period  $t$ , which is equal to its present value:

$$
p_{t}^{y} (h) = \mathbb {E}_{t} [ \exp (m_{t, t + h}) y_{t + h} ].
$$

We choose to study the claim to endowment because its cash flow in log is cointegrated with the permanent component of the log SDF after removing a deterministic trend. Note that

$$
m c_{t}^{P} = m c_{t - 1}^{P} - \frac{1}{2} \sigma_{P}^{2} + \sigma_{P} \varepsilon_{t}^{P},
$$

$$
\log y_{t} = \log y_{t - 1}^{P} + \mu + \nu_{P} \varepsilon_{t}^{P} + \log y_{t}^{T};
$$

we can show that  $mc_{t}^{P} / \sigma_{P} - (\log y_{t} - \mu t) / \nu_{P}$  is a stationary process. In comparison, the cash flow of a long-term bond is not cointegrated with the permanent component of the log SDF.

The risk premia of the endowment strip and the long-term bond is defined as the expected excess return of holding the asset for one period. They are characterized by the following proposition.

Proposition 3.11. The risk premium of the  $h$ -period risk-free bond is

$$
\begin{array}{l} r x_{t} (h) \stackrel {\text{de f}} {=} \mathbb {E}_{t} \left[ \log \frac{p_{t - 1} (h - 1)}{p_{t} (h)} - r_{t} \right] \\ = \left(\frac{1}{2} - \frac{1}{2} \phi^{2 (h - 1)}\right) \sigma_{T}^{2} + (1 - \phi^{h - 1}) \sigma_{T P}. \\ \end{array}
$$

The risk premium of the claim to the  $h$ -period endowment claim is

$$
\begin{array}{l} r x_{t}^{y} (h) \stackrel {\text{de f}} {=} \mathbb {E}_{t} \left[ \log \frac{p_{t + 1}^{y} (h - 1)}{p_{t}^{y} (h)} - r_{t} \right] \\ = \frac{2 \gamma - 1}{2 \gamma^{2}} \sigma_{P}^{2} + \left[ \frac{1}{2} - \frac{1}{2} \phi^{2 (h - 1)} \left(\frac{\gamma - 1}{\gamma}\right)^{2} \right] \sigma_{T}^{2} + \left[ 1 - \phi^{h - 1} \left(\frac{\gamma - 1}{\gamma}\right)^{2} \right] \sigma_{T P}. \\ \end{array}
$$

As  $h\to \infty$  , these risk premia converge to

$$
\begin{array}{l} \lim_{h \rightarrow \infty} r x_{t} (h) = \frac{1}{2} \sigma_{T}^{2} + \sigma_{T P}, \\ \lim_{h \rightarrow \infty} r x_{t}^{y} (h) = \frac{2 \gamma - 1}{2 \gamma^{2}} \sigma_{P}^{2} + \frac{1}{2} \sigma_{T}^{2} + \sigma_{T P}. \\ \end{array}
$$

The proof is presented in Appendix A.12. By comparing the infinite-horizon risk premia on the bond and the endowment strip, we can see that the bond risk premium does not load on the quantity of the permanent risk,  $\sigma_{P}$ , in the limit, whereas the endowment risk premium does. In most asset pricing models, the quantity of permanent risk is very large [Alvarez and Jermann, 2005] and the risk aversion parameter  $\gamma$  is above  $1/2$ , which generate a much higher discount rate on the endowment strip than on the bond. As we will see in Section 8.E, if other cash flows (such as the equity dividend or government tax) are cointegrated with the endowment and hence with the permanent component of the SDF, then, their risk premia should converge to that of the endowment strip in the limit as well.

We notice that this risk premium does not depend on the transitory component of the SDF as well as the transitory component of the cash flow. In fact, for any cash flow stream that is cointegrated with the endowment, the risk premium on its infinite-horizon strip is also equal to  $\lim_{h\to \infty}rx_t^y (h)$ . Similarly, for any cash flow stream that is stationary, the risk premium on its infinite-horizon strip is equal to that of the infinite-horizon bond. We will use this result when considering the government's fiscal cash flows in Chapter 8.




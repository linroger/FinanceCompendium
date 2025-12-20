---
aliases: null
tags: null
key_concepts: null
parent_directory: null
cssclasses: academia
title: Global Imbalances and the Exorbitant Privilege
linter-yaml-title-alias: Global Imbalances and the Exorbitant Privilege
primary_tags:
- capital flow dynamics reserve
- asymmetry international financial vs
- accounts open allow risk
secondary_tags:
- global imbalances exorbitant privilege
- global financial markets
- equilibrium allocations exchange rate
- monetary core periphery structure
- exchange rate insurance view
- centrality global financial
tags_extracted: '2025-12-18T01:44:51.673994'
---

# Global Imbalances and the Exorbitant Privilege

# Summary

- The architecture of the international monetary system has important implications for exchange rate and capital flow dynamics, and reserve assets are at its cornerstone.  
- We examine two complementary views of the architecture: the insurance provision view emphasizes the U.S.' role as the world's insurance provider, and the safe asset view emphasizes the foreign demand for dollar safe assets. Both views emphasize the centrality of the U.S. in the global financial markets, but they have different implications for the U.S. external imbalances and the dollar exchange rate.  
- We will also briefly survey topics related to the stability of the international monetary system.

Starting from this chapter, we will shift our focus from the exchange rates to international portfolio positions and capital flows. For this purpose, studying the Euler equations alone is no longer sufficient, and general equilibrium models become necessary to understand the financial quantities. We will begin with the most important asymmetry in the international financial system: the U.S. vs. the rest of the world.

A prototype financial system involves households who save and consume, firms or entrepreneurs who produce, and financiers who intermediate the funds between the households and the firms. These financiers can be the banks or many types of shadow banks. They provide funds to the firms by investing in their risky projects, and they provide saving vehicles to the households by taking safe deposits. In doing so, these financiers engage in the safety, liquidity, and maturity transformations.

This summary of financial system also applies at the global level, with the U.S. playing the central role as the financier who intermediates capital flows to the rest of the world and earns a premium from the intermediation process. Other countries, playing the roles of the households and the firms, invest at and get funding from the inter-

mediary. This core-periphery structure is a key feature of the modern international monetary system.

This core-periphery structure gives rise to two salient patterns in the data: global imbalances and exorbitant privilege. We have had a discussion of these patterns in Chapter 2. In this chapter, we consider two complementary ways to model these patterns.

# 7.A The Insurance Provision View

First, we consider the insurance provision view as in Gourinchas and Rey [2007b, 2022]. We adapt their model to follow the baseline setup in Section 1. A more closely. There are two countries, home and foreign. Each country produces a unique type of good, which is endowed to the domestic households. The home households' utility function is

$$
u (c_{t}) = \frac{1}{1 - \gamma} (c_{t})^{1 - \gamma},
$$

where the consumption  $c_{t}$  is again a Cobb-Douglas aggregation of the home and foreign goods:  $c_{t} = (c_{H,t})^{\alpha}(c_{F,t})^{1 - \alpha}$ .

We deviate from the symmetric baseline case by assuming that the foreign households are more risk-averse. Their utility function is

$$
u^{*} (c_{t}^{*}) = \frac{1}{1 - \gamma^{*}} (c_{t}^{*})^{1 - \gamma^{*}},
$$

with  $\gamma^{*} > \gamma$ . As in Section 4, we interpret the home country as the U.S., and the foreign country as the rest of the world. This difference in risk aversion can be motivated by difference in financial developments. For example, the more developed financial sector in the U.S. may face weaker liquidity or financing constraints and thus have higher risk-taking capacity [Maggiori, 2017]. Similarly, Chien and Nakanoi [2015] develop a model with heterogeneous agents in which the U.S. has a larger mass of sophisticated traders than the foreign countries.

The macro synthesis of this model is nearly identical to the baseline model in Section 1.A with complete markets. The only difference is that the home and foreign households have different risk aversion.

# 7.A.1 Social Planner's Solution

We assume the markets are complete, which allows us to solve the equilibrium using the social planner approach. More precisely, we solve the equilibrium outcome under a social planner, who maxi-

mizes a weighted sum of the households' welfare:

$$
\mathbb {E}_{0} \left[ \sum_{t = 0}^{\infty} \delta^{t} \left(\pi u \left(c_{t}\right) + (1 - \pi) u \left(c_{t}^{*}\right)\right) \right].
$$

The social planner tells the home and foreign households how much to consume, subject to the resource constraints

$$
y_{t} = c_{H, t} + c_{H, t}^{*},
$$

$$
y_{t}^{*} = c_{F, t} + c_{F, t}^{*}.
$$

The social planner's Lagrangian is

$$
\mathbb {E}_{0} \left[ \sum_{t = 1}^{\infty} \delta^{t} \left(\pi \frac{1}{1 - \gamma} (c_{t})^{1 - \gamma} + (1 - \pi) \frac{1}{1 - \gamma^{*}} (c_{t}^{*})^{1 - \gamma^{*}} + \sum_{t = 1}^{\infty} \zeta_{H, t} (y_{t} - c_{H, t} - c_{H, t}^{*}) + \sum_{t = 1}^{\infty} \zeta_{F, t} (y_{t}^{*} - c_{F, t} - c_{F, t}^{*})\right) \right],
$$

which implies the following first-order conditions

$$
\begin{array}{l} \text{w .r .t .} c_{H, t}: \quad \delta^{t} \pi (c_{t})^{- \gamma} \alpha \left(\frac{c_{F , t}}{c_{H , t}}\right)^{1 - \alpha} \\ = \zeta_{H, t}, \end{array}
$$

$$
\begin{array}{l l} \text{w .r .t .} c_{H, t}^{*}: & \delta^{t} (1 - \pi) (c_{t}^{*})^{- \gamma^{*}} (1 - \alpha) \left(\frac{c_{F , t}^{*}}{c_{H , t}^{*}}\right)^{\alpha} \\ & = \zeta_{H, t}, \end{array}
$$

$$
\begin{array}{l l} \text{w .r .t .} c_{F, t}: & \delta^{t} \pi (c_{t})^{- \gamma} (1 - \alpha) \left(\frac{c_{H , t}}{c_{F , t}}\right)^{\alpha} \\ & = \zeta_{F, t}, \end{array}
$$

$$
\begin{array}{l} \text{w .r .t .} c_{F, t}^{*}: \quad \delta^{t} (1 - \pi) (c_{t}^{*})^{- \gamma^{*}} \alpha \left(\frac{c_{H , t}^{*}}{c_{F , t}^{*}}\right)^{1 - \alpha} \\ = \zeta_{F, t}. \end{array}
$$

Let  $tot_{t} = e_{t} / (2\alpha - 1)$  denote the log terms of trade as defined in Section 1.A. Then, we can follow the derivation in Section 1.3 and obtain the following equation system that pins down the equilibrium allocations and exchange rate.

Proposition 7.1. The equilibrium is pinned down by the following simultaneous equations

$$
\begin{array}{l} \left(\frac{1 - \alpha}{\alpha} \exp (t o t_{t})\right)^{\alpha - 1} c_{t} + \left(\frac{\alpha}{1 - \alpha} \exp (t o t_{t})\right)^{- \alpha} c_{t}^{*} = y_{t}, \\ \left(\frac{\alpha}{1 - \alpha} \exp (- t o t_{t})\right)^{- \alpha} c_{t} + \left(\frac{1 - \alpha}{\alpha} \exp (- t o t_{t})\right)^{\alpha - 1} c_{t}^{*} = y_{t}^{*}, \\ \left(\frac{\pi}{1 - \pi} \frac{\left(c_{t}\right)^{- \gamma}}{\left(c_{t}^{*}\right)^{- \gamma^{*}}}\right)^{\frac{1}{2 \alpha - 1}} = \frac{p_{t}}{p_{t}^{*} \exp (- e_{t})} = \exp (t o t_{t}). \\ \end{array}
$$

The proof is presented in Appendix A.28. To illustrate the equilibrium dynamics, let us consider a simple example. Suppose  $\gamma = 2$  and  $\gamma^{*} = 8$ ,  $\alpha = 0.7$ , and  $\pi = 0.5$ . The endowment shocks  $y_{t}$  and  $y_{t}^{*}$  are always equal. Figure 7.1 traces out the equilibrium consumption

allocations  $c_t$  and  $c_t^*$  for home and foreign households as we vary the endowments. We can see that, as the endowments become higher in both countries, the home country's consumption increases faster while the foreign country's consumption increases slower. In other words, the home country takes away a greater share of the endowments in high-endowment states, while the foreign country takes away a greater share of the endowments in low-endowment states. In this way, the home country insures the foreign country in the bad states in exchange for higher pay-off in good states.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/5414711016f2637d28882918734d6a58b3f894806042895a5f3c420bf5373199.jpg)  
Figure 7.1: Equilibrium Consumption Allocation under the Insurance View.

We can frame the same pattern in terms of international transfer, which we plot in Figure 7.2. The home country's net transfer is defined as the value of its endowment minus the value of its consumption, normalized by the value of its endowment. In this model, the only reason why the home households' endowment and consumption are different is because the home households transfer resources to the foreign households according to the risk-sharing agreement. The net home transfer to the foreign country is positive when the endowments are low, and negative when the endowments are high. In other words, the home country earns profits in good times as a compensation for its insurance provision, and bears the losses in bad times as the insurance pays off. The foreign country's net transfer has the opposite pattern, as it is the recipient of the international insurance.

Unconditionally, because the agents are willing to pay more for pay-offs in bad states, the U.S. receives a higher insurance premium in good times than it pays off in bad times, making a net profit from its insurance provision. This profit funds a persistent trade deficit on

average.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/a54817b21f103555949eb067c87477517988e438dbea97ce366d688d63222c1f.jpg)  
Figure 7.2: Equilibrium International Transfer under the Insurance View.  
Figure 7.3 plots the equilibrium real exchange rate  $e_t$ , which measures the strength of the home currency (i.e., the dollar). The dollar is stronger in high-endowment states and weaker in low-endowment states. This is because, due to home bias in consumption, when the home households receive a greater share of the endowments, they prefer to consume more home goods. Their demand bids up the price of the home goods, and generates real dollar appreciation. Conversely, when the aggregate endowment is low, the foreign households receive a wealth transfer from the U.S. and consume more domestic goods, leading to real dollar depreciation.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/ac5c56c33bae1932f587f895e0708302631c3675ad2d41a6f8f2c1f86011387b.jpg)  
Figure 7.3: Equilibrium Exchange Rate under the Insurance View.

# 7.A.2 Decentralized Competitive Equilibrium

The social planner approach allows us to derive the equilibrium allocations and prices in complete markets. We are also interested in how the households trade to implement this equilibrium. In this subsection, we convert the problem to a continuous-time setting in order to derive the portfolio choice in the decentralized competitive equilibrium. Time is finite with horizon  $T$ . The representative home households maximize

$$
\mathbb {E}_{t} \left[ \int_{0}^{T} \delta^{t} \frac{1}{1 - \gamma} (c_{t})^{1 - \gamma} d t \right],
$$

and the representative foreign households maximize

$$
\mathbb {E}_{t} \left[ \int_{0}^{T} \delta^{t} \frac{1}{1 - \gamma^{*}} (c_{t}^{*})^{1 - \gamma^{*}} d t \right].
$$

For simplicity, we assume that the home and foreign endowments are identical, i.e.,  $y_{t} = y_{t}^{*}$ , reflecting a common global cycle. We assume

$$
d \log y_{t} = d \log y_{t}^{*} = \kappa (\log \bar {y} - \log y_{t}) d t + \sigma d W_{t},
$$

which implies

$$
\log y_{t} = e^{- \kappa t} \log y_{0} + (1 - e^{- \kappa t}) \log \bar {y} + \sigma e^{- \kappa t} \int_{0}^{t} e^{\kappa s} d W_{s} \sim \mathcal {N} \left(e^{- \kappa t} \log y_{0} + (1 - e^{- \kappa t}) \log \bar {y}, \frac{\sigma^{2}}{2 \kappa} (1 - e^{- 2 \kappa t})\right).
$$

The social planner's problem in continuous time is

$$
\mathbb {E}_{0} \left[ \int_{0}^{T} \delta^{t} \left(\pi \frac{1}{1 - \gamma} (c_{t})^{1 - \gamma} + (1 - \pi) \frac{1}{1 - \gamma^{*}} (c_{t}^{*})^{1 - \gamma^{*}}\right) d t \right]
$$

subject to  $c_{H,t} + c_{H,t}^{*} = y_{t}$  and  $c_{F,t} + c_{F,t}^{*} = y_{t}^{*}$ . As we discussed in Proposition 1.3 in Section 1.C, we can solve for the consumption  $c_{t}, c_{t}^{*}$  and the exchange rate  $e_{t}$  as functions of  $k_{t}$ , which in turn depends on  $y_{t} = y_{t}^{*}$ .

We define the home and foreign SDFs as

$$
\exp (m_{t}) = \delta^{t} \pi (c_{t})^{- \gamma}, \qquad \exp (m_{t}^{*}) = \delta^{t} (1 - \pi) (c_{t}^{*})^{- \gamma^{*}},
$$

which allows us to evaluate the wealth claims in local numériaires as the present values of the consumption streams

$$
a_{t} = \mathbb {E}_{t} \left[ \int_{t}^{T} \frac{\exp (m_{k})}{\exp (m_{t})} c_{k} d k \right], \quad a_{t}^{*} = \mathbb {E}_{t} \left[ \int_{t}^{T} \frac{\exp (m_{k}^{*})}{\exp (m_{t}^{*})} c_{k}^{*} d k \right]. \tag {7.1}
$$

Similarly, we can evaluate the world equity claim in the home numérique as the present value of the endowment streams

$$
s_{t} = \mathbb {E}_{t} \left[ \int_{t}^{T} \frac{\exp (m_{k})}{\exp (m_{t})} \left(p_{k} y_{k} + \frac{p_{k}^{*}}{\exp (e_{k})} y_{k}^{*}\right) d k \right].
$$

Thanks to our simplifying assumption  $y_{t} = y_{t}^{*}$ , the equilibrium asset prices  $a_{t}, a_{t}^{*}$ , and  $s_{t}$  are all functions of  $y_{t}$ . For example, if  $a_{t} = f(\log y_{t})$ , then, we can express the wealth dynamics as

$$
\begin{array}{l} d a_{t} = \left[ f^{\prime} (\log y_{t}) \kappa (\log \bar {y} - \log y_{t}) + \frac{1}{2} f^{\prime \prime} (\log y_{t}) \sigma^{2} \right] d t + f^{\prime} (\log y_{t}) \sigma d W_{t} \\ \stackrel {\text{de f}} {=} \mu_{a, t} d t + \sigma_{a, t} d W_{t}. \tag {7.2} \\ \end{array}
$$

Likewise, we can derive the world equity price's dynamics and denote it as

$$
d s_{t} = \mu_{s, t} d t + \sigma_{s, t} d W_{t}.
$$

Then, to compute the home and foreign households' portfolio choices, we need to take a stance on the set of assets that we use to replicate the wealth dynamics. Because the markets are complete, there are infinitely many sets of assets that span the endowment shock. We choose the home risk-free bond and the world equity claim to construct the replicating portfolios. Let  $x_{t}$  denote the weight on world equity in home households' portfolio, and let  $x_{t}^{*}$  denote the weight on world equity in foreign households' portfolio.

If we match the home households' wealth dynamics (7.2) with the wealth dynamics implied from consumption and portfolio holdings, i.e.,

$$
d a_{t} = a_{t} \left(x_{t} \frac{d s_{t} + \left(p_{t} y_{t} + p_{t}^{*} \exp (- e_{t}) y_{t}^{*}\right) d t}{s_{t}} + (1 - x_{t}) r_{t} d t\right) - c_{t} d t,
$$

we can use the Martingale representation theorem to obtain the portfolio choice  $x_{t}$  from

$$
\frac{\sigma_{a , t}}{a_{t}} = x_{t} \frac{\sigma_{s , t}}{s_{t}}.
$$

Similarly, we match the foreign households' wealth dynamics, i.e.,

$$
d \left(a_{t}^{*} \exp (- e_{t})\right) = \mu_{a^{*}, t} d t + \sigma_{a^{*}, t} d W_{t},
$$

with the wealth dynamics implied from consumption and the replicating portfolio, i.e.,

$$
a_{t}^{*} \exp (- e_{t}) \left(x_{t}^{*} \frac{d s_{t} + \left(p_{t} y_{t} + p_{t}^{*} \exp (- e_{t}) y_{t}^{*}\right) d t}{s_{t}} + \left(1 - x_{t}^{*}\right) r_{t} d t\right) - c_{t}^{*} d t,
$$

to obtain the portfolio choice  $x_{t}^{*}$

We implement this algorithm with  $\bar{y} = \bar{y}^{*} = 1.84$ ,  $\kappa = 0.1$ ,  $\sigma = 0.05$ ,  $T = 500$  and  $\delta = 0.97$ . We study the equilibrium allocations and asset prices at time  $t = 0$ , as a function of the endowment level  $y_{0} = y_{0}^{*}$ . Conceptually, we can think of the economy as being created

at  $t = -\tau < 0$ , and the endowment shocks from time  $-\tau$  to 0 push the endowment level to  $y_0$  at time 0.

Figure 7.4 plots the equilibrium wealth share of the U.S. households, defined as  $a_0 / (a_0 + a_0^* \exp(-e_0))$ . Consistent with the U.S. earning a risk premium in good times and paying off the insurance in bad times, the U.S. households' wealth share is higher in high-endowment states and lower in low-endowment states. In other words, the U.S. households' financial holdings are more exposed to adverse endowment shocks, leading to a countercyclical wealth share.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/3e54252d2d81b087e86691f92fa4a711582bcfa42c86f3058e5050953a65b1e6.jpg)  
Figure 7.4: Equilibrium Wealth Share of U.S. Households.

Since the U.S. households have lower risk aversion, as their wealth share declines in low endowment states, the wealth-weighted average investor's risk aversion is also countercyclical. As a result, the risk premium on the world equity is higher and the equity return becomes more volatile in bad times. Figure 7.5 shows the overall negative relationship between the endowment level and the equity return volatility.

Perhaps paradoxically, as the equity becomes riskier, it magnifies the difference in risk aversion between the U.S. and foreign households, which leads to further divergence in their portfolio choices. Figure 7.6 reports the equilibrium portfolio allocation towards the world equity by the U.S. and foreign households,  $x_{t}$  and  $x_{t}^{*}$ . The U.S. households' equity share is always above 1, and the foreign households' is always below 1, which is consistent with our intuition that the U.S. takes a more levered position on risky assets while the foreign households seek safety in the U.S. risk-free bond. When the endowment level is lower, the U.S. households take a more levered position on the world equity despite suffering greater wealth losses,

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/3c7f60d59f3db3a524e8248e05d1f2ee368229132d008218419f11e3a9d7a6e5.jpg)  
Figure 7.5: Volatility of World Equity Return in Dollar.

while the foreign households further reduce their equity shares. That said, in the region of very low endowments, the U.S. wealth share can become so small that they offer only tiny amount of risk-free bond despite their highly levered positions. In this case, the foreign households' equity share increases. In the limit, as the U.S. wealth shrinks much faster than the foreign wealth, the foreign households have to hold the entire world equity and no risk-free bond.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/28366538da97ce936c8557087896cf9b28cc0b1b7c4f124ffa5105cc5fb6ba02.jpg)  
Figure 7.6: Equilibrium Equity Allocation by U.S. and Foreign Households,  $x_{t}$  and  $x_{t}^{*}$ .

This countercyclical behavior of asset return volatility and risk premium also provides a motivation for the more reduced-form specification of the SDFs that we considered in Eq. (3.1) and (3.2) in

Section 3.A.

# 7.A.3 The Cyclicality of Bond Holdings

Finally, we plot the equilibrium U.S. bond holdings by foreign households. Unconditionally, the foreign households' holdings are always positive, which again reflects the leveraged nature of the U.S. portfolios. Conditionally, while the foreign households' portfolio share in the U.S. bond increases when the endowment level declines, their dollar-denominated wealth declines even faster. The dollar value of their bond holdings, which are equal to their product, thus decline in bad times under our model specification. In addition to the dollar exchange rate's cyclicality, this procyclical bond holding is another implication that is inconsistent with the flight-to-safety pattern in data.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/dd4d8eaa5be820aa625409de6bd5e630ceaa8b4c243c55e4396debdca2d634f1.jpg)  
Figure 7.7: Equilibrium U.S. Bond Holding by Foreign Households.

This observation opens up a broader discussion of what is so special about reserve assets. If the reserve assets are about providing insurance against risks, then, investors want to hold them before the risks materialize, and in particular when the probabilities of the negative shocks are high. However, what we observe in the data is flight to safety after the negative shocks have already happened, which could have a different motivation than precautionary savings.

One way to generate the countercyclical bond demand under the frictionless model is to assume that the bad states of the world mean not only low endowments, but also greater risk quantities or risk prices, which are consistent with the countercyclical behaviors of the VIX index. For example, in Gourinchas and Rey [2022], the foreign

investors' risk aversion goes up in bad times, which increases the risk price and generates greater demand for safe assets.

An alternative approach is to introduce frictions in the model. In Section 7.C, we will consider a reduced-form way of capturing these frictions by introducing a countercyclical convenience yield for the U.S. bond. In this case, non-pecuniary benefits of safe assets lead to greater demand for the U.S. bond after the negative shocks have already happened.

# 7.B The Reserve Currency Paradox

The insurance provision view provides a powerful tool for understanding the asymmetry in portfolio holdings and asset returns between the U.S. and the rest of the world. It offers a rational, risk-based explanation for why the U.S. enjoys the exorbitant privilege.

However, this view in its most basic form leads to a counterfactual prediction. As we saw in Figure 7.2, the U.S. pays out insurance in bad times by transferring wealth to the foreign country. As such, being the world's insurance provider has a cost: in the language of Gourinchas and Rey [2022], the exorbitant privilege comes with an exorbitant duty. As the foreign households have relatively higher wealth during global downturns, and they have a home bias towards foreign goods, the dollar has to depreciate in real terms as we saw in Figure 7.3.

In the data, the dollar tends to appreciate during global downturns. Maggiori [2017] notes this inconsistency and names it the Reserve Currency Paradox. Below, we provide two complementary ways of thinking about this paradox. In doing so, we set the stage for an alternative view of the global imbalances that we develop in the next section.

# 7.B.1 Demand vs. Supply Shocks

In Maggiori [2017]'s original analysis of the reserve currency paradox, he provides a simple resolution by introducing a state-dependent trade cost. If the cost of shipping goods internationally is higher during recessions, the U.S. economy effectively becomes more closed and the U.S. households' demand for the U.S. goods increases relative to their demand for foreign goods, leading to real dollar appreciation.

We can think of this variation in the trade cost as a demand shock, whereas the baseline setup we considered that gives rise to the reserve currency paradox is only about the supply shock. The U.S. transfer to the rest of the world increases the supply of the U.S. goods in the foreign countries. Given the foreigners' downward-

sloping demand for the U.S. goods, the U.S. goods have to become cheaper and generate real dollar depreciation.

Other types of demand shocks could also reverse the dollar exchange rate's cyclicality. Consider, for example, the bond convenience yields we studied in Chapter 4, which capture demand shocks for assets instead of goods. In particular, the foreigners' demand for U.S. safe assets increases in bad times, which leads to dollar appreciation. Similarly, by introducing time-varying risk aversion as another type of demand shock, Gourinchas and Rey [2022] also generates dollar appreciation in bad times in a slight extension of the baseline model.

# 7.B.2 Net Foreign Assets vs. Total Wealth

The insurance provision view emphasizes the international transfer of wealth from the U.S. to the rest of the world that occurs during global recessions. Figure 7.8 plots the U.S. net foreign assets (NFA) normalized by the U.S. consumption in our model. The U.S. NFA is defined as the U.S. holdings of foreign equity minus foreign holdings of U.S. equity and bond:

$$
n f a_{t} = a_{t} x_{t} \frac{s_{F , t}}{s_{t}} - a_{t}^{*} \exp (- e_{t}) x_{t}^{*} \frac{s_{H , t}}{s_{t}} - a_{t}^{*} \exp (- e_{t}) (1 - x_{t}^{*}),
$$

where  $s_{H,t}$  and  $s_{F,t}$  denote the value of the U.S. and foreign equity in the U.S. numétaire, respectively. In bad times, the U.S. external assets, which are the world equity, depreciate more than the U.S. external liabilities, which include the risk-free bond. As a result, the U.S. NFA deteriorates along with the U.S. wealth share.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/826b233ec63fc9508b9487be4ba75c58f043154542637b8518cd5685ac824ab4.jpg)  
Figure 7.8: Equilibrium U.S. NFA/Consumption Ratio.

In this model, low endowments are associated with low U.S. wealth share and low U.S. NFA. Conceptually, these two quantities

are related by

$$
a_{t} = s_{H, t} + n f a_{t}, \tag {7.3}
$$

which states that the U.S. wealth is equal to the value of U.S.-issued assets adjusted by the U.S. NFA. If the U.S. households hold a lot of foreign assets, the NFA will be positive and the U.S. wealth will be higher than the value of the domestic assets. Conversely, if the foreign households hold a lot of U.S. assets, the NFA will be negative and the U.S. wealth will be lower than the value of the domestic assets. In our model, both the value of the domestic wealth  $s_{H,t}$  and the NFA  $nfa_t$  are procyclical, leading to a procyclical U.S. wealth share that we saw in Figure 7.4. In Section 9.A, we will have a more detailed discussion of the net foreign assets accounting.

One essential feature of this model that leads to the reserve currency paradox is the procyclical U.S. wealth share: as the foreign households are relatively wealthier in bad times, they tend to consume more and tilt their consumption towards the foreign goods, which requires the U.S. goods to become cheaper. However, does the U.S. wealth share have to be procyclical? In the next section, we will examine a complementary view under which the U.S.-issued assets are better hedged against bad states of the world. As a result, while the U.S. NFA  $nfa_{t}$  still declines in bad times, the U.S. domestic assets  $s_{H,t}$  depreciate less and offset the procyclical nature of the U.S. NFA, leading to a countercyclical U.S. wealth share.

# 7.C The Safe Asset View

Next, we consider a complementary safe asset view, which emphasizes the U.S.' role as the sole supplier of the world's safe assets. The key difference from the insurance provision view is that investors derive non-pecuniary benefits from holding dollar safe assets such as the U.S. Treasury bonds, which leads to a convenience yield. This convenience yield enters the standard Euler equation as a wedge, which, as we saw in Chapter 4, makes progress in explaining the exchange rate dynamics. Building on the analysis in Chapter 4, our hypothesis here is that this ingredient also helps us understand the global imbalances and international transfers.

Our derivation loosely follows a simplified version of Jiang [2023a]. Earlier works on safe assets in international macro models include Caballero and Farhi [2018], Farhi and Maggiori [2018], Caballero, Farhi, and Gourinchas [2021], Gopinath and Stein [2021], Jiang, Krishnamurthy, and Lustig [2020a].

We consider an endowment economy that is very similar to the one we considered in Section 4.A. The government in each country

issues an exogenously specified amount of risk-free bond, which is held by the households in both countries. Let  $\bar{b}_t$  and  $\bar{b}_t^*$  denote the quantity of bonds issued by the home and foreign governments. The proceeds from the issuance are transferred to the local households.

The home households' utility is derived over consumption and the market value of home and foreign bond holdings:

$$
\mathbb {E}_{0} \left[ \sum_{t = 0}^{\infty} \delta^{t} \left(\frac{1}{1 - \gamma} c_{t}^{1 - \gamma} + \frac{1}{1 - \sigma} \omega_{H, t} b_{H, t}^{1 - \sigma} + \frac{1}{1 - \sigma} \omega_{F, t} b_{F, t}^{1 - \sigma}\right) \right],
$$

subject to the budget constraint

$$
p_{t} y_{t} + \exp (r_{t - 1}) b_{H, t - 1} + \exp (r_{t - 1}^{*} - e_{t}) b_{F, t - 1} = c_{t} + b_{H, t} + \exp (- e_{t}) b_{F, t} + (\exp (r_{t - 1}) \bar {b}_{t - 1} - \bar {b}_{t}).
$$

The home households' consumption is a basket of home and foreign goods:  $c_{t} = (c_{H,t})^{\alpha}(c_{F,t})^{1 - \alpha}$ . Following the same derivation in Section 4.A, we obtain the following Euler equations:

$$
\begin{array}{l} 1 = \mathbb {E}_{t} \left[ \delta \left(\frac{c_{t + 1}}{c_{t}}\right)^{- \gamma} \exp (r_{t}) + \frac{\omega_{H , t} b_{H , t}^{- \sigma}}{c_{t}^{- \gamma}} \right], \\ 1 = \mathbb {E}_{t} \left[ \delta \left(\frac{c_{t + 1}}{c_{t}}\right)^{- \gamma} \exp (- \Delta e_{t + 1} + r_{t}^{*}) + \frac{\omega_{F , t} b_{F , t}^{- \sigma}}{c_{t}^{- \gamma}} \exp (e_{t}) \right]. \\ \end{array}
$$

Similarly, the foreign households' utility is

$$
\mathbb {E}_{0} \left[ \sum_{t = 0}^{\infty} \delta^{t} \left(\frac{1}{1 - \gamma} \left(c_{t}^{*}\right)^{1 - \gamma} + \frac{1}{1 - \sigma} \omega_{H, t}^{*} \left(b_{H, t}^{*}\right)^{1 - \sigma} + \left(\bar {c}^{*}\right)^{- \gamma} \theta_{H, t}^{*} b_{H, t}^{*} + \frac{1}{1 - \sigma} \omega_{F, t}^{*} \left(b_{F, t}^{*}\right)^{1 - \sigma}\right) \right],
$$

subject to the budget constraint

$$
p_{t}^{*} y_{t}^{*} + \exp (r_{t - 1}^{*}) b_{F, t - 1}^{*} + \exp (r_{t - 1} + e_{t}) b_{H, t - 1}^{*} = c_{t}^{*} + b_{F, t}^{*} + \exp (e_{t}) b_{H, t}^{*} + (\exp (r_{t - 1}^{*}) \bar {b}_{t - 1}^{*} - \bar {b}_{t}^{*}).
$$

Likewise, we obtain the following Euler equations for the foreign households:

$$
\begin{array}{l} 1 = \mathbb {E}_{t} \left[ \delta \left(\frac{c_{t + 1}^{*}}{c_{t}^{*}}\right)^{- \gamma} \exp (r_{t}^{*}) + \frac{\omega_{F}^{*} (b_{F , t}^{*})^{- \sigma}}{(c_{t}^{*})^{- \gamma}} \right], \\ 1 = \mathbb {E}_{t} \left[ \delta \left(\frac{c_{t + 1}^{*}}{c_{t}^{*}}\right)^{- \gamma} \exp (\Delta e_{t + 1} + r_{t}) + \frac{\omega_{H}^{*} (b_{H , t}^{*})^{- \sigma} + (\bar {c}^{*})^{- \gamma} \theta_{H , t}^{*}}{(c_{t}^{*})^{- \gamma}} \exp (- e_{t}) \right]. \\ \end{array}
$$

We have chosen a parsimonious specification of the safe asset demand. The terms  $\omega_{H}^{*}(b_{H,t}^{*})^{-\sigma}$  and  $\omega_{F}^{*}(b_{F,t}^{*})^{-\sigma}$  capture the downward-sloping demand for each type of bonds, which helps us pin down the equilibrium quantities of bonds held by home and foreign households. The additional term  $(\bar{c}^{*})^{-\gamma}\theta_{H,t}^{*}$  captures a demand shifter, which reflects the foreign households' time-varying and countercyclical demand for dollar safe assets. In general, we could have inserted this demand shifter for the home households and for the foreign bond as well, but one demand shifter is sufficient to capture the key features of the model, which we will study in more detail below.

# 7.C.1 Macro Synthesis

We consider a simple case in which the government debt supply is constant and, the bond demand shock  $\theta_{H,t}^{*}$  is exogenous. The exogenous variables are the endowments and the foreign households' dollar asset preferences:

$$
\left(y_{t}, y_{t}^{*}, \theta_{H, t}^{*}\right)_{t = 0}^{\infty}.
$$

There are 15 endogenous variables in each period  $t$ :

$$
(c_{t}, c_{H, t}, c_{F, t}, b_{H, t}, b_{F, t}, p_{t}, c_{t}^{*}, c_{H, t}^{*}, c_{F, t}^{*}, b_{H, t}^{*}, b_{F, t}^{*}, p_{t}^{*}, r_{t}, r_{t}^{*}, e_{t})_{t = 0}^{\infty}.
$$

The model implies the following 16 equations in each period, one of which is redundant. These 16 equations include 2 consumption aggregation equations,

$$
\begin{array}{l} c_{t} = (c_{H, t})^{\alpha} (c_{F, t})^{1 - \alpha}, \\ c_{t}^{*} = (c_{F, t}^{*})^{\alpha} (c_{H, t}^{*})^{1 - \alpha}, \\ \end{array}
$$

4 household budget conditions are

$$
\begin{array}{l} p_{t} y_{t} + \exp (r_{t - 1}) b_{H, t - 1} + \exp (r_{t - 1}^{*} - e_{t}) b_{F, t - 1} = c_{t} + b_{H, t} + \exp (- e_{t}) b_{F, t} + (\exp (r_{t - 1}) \bar {b}_{t - 1} - \bar {b}_{t}), \\ c_{t} = p_{t} c_{H, t} + p_{t}^{*} c_{F, t} \exp (- e_{t}), \\ \end{array}
$$

$$
\begin{array}{l} p_{t}^{*} y_{t}^{*} + \exp (r_{t - 1}^{*}) b_{F, t - 1}^{*} + \exp (r_{t - 1} + e_{t}) b_{H, t - 1}^{*} = c_{t}^{*} + b_{F, t}^{*} + \exp (e_{t}) b_{H, t}^{*} + (\exp (r_{t - 1}^{*}) \bar {b}_{t - 1}^{*} - \bar {b}_{t}^{*}), \\ c_{t}^{*} = p_{t}^{*} c_{F, t}^{*} + p_{t} c_{H, t}^{*} \exp (e_{t}), \\ \end{array}
$$

2 goods market clearing conditions

$$
c_{H, t} + c_{H, t}^{*} = y_{t},
$$

$$
c_{F, t} + c_{F, t}^{*} = y_{t}^{*},
$$

2 bond market clearing conditions

$$
\bar {b}_{t} = b_{H, t} + b_{H, t}^{*},
$$

$$
\bar {b}_{t}^{*} = b_{F, t} + b_{F, t}^{*},
$$

2 within-period consumption choices

$$
\frac{p_{t}}{p_{t}^{*} \exp (- e_{t})} = \frac{\alpha}{1 - \alpha} \frac{c_{F , t}}{c_{H , t}} = \frac{1 - \alpha}{\alpha} \frac{c_{F , t}^{*}}{c_{H , t}^{*}},
$$

and 4 Euler equations

$$
\begin{array}{l} 1 = \mathbb {E}_{t} \left[ \delta \left(\frac{c_{t + 1}}{c_{t}}\right)^{- \gamma} \exp (r_{t}) + \frac{\omega_{H} b_{H , t}^{- \sigma}}{c_{t}^{- \gamma}} \right], \\ 1 = \mathbb {E}_{t} \left[ \delta \left(\frac{c_{t + 1}}{c_{t}}\right)^{- \gamma} \exp (- \Delta e_{t + 1} + r_{t}^{*}) + \frac{\omega_{F} b_{F , t}^{- \sigma}}{c_{t}^{- \gamma}} \exp (e_{t}) \right], \\ 1 = \mathbb {E}_{t} \left[ \delta \left(\frac{c_{t + 1}^{*}}{c_{t}^{*}}\right)^{- \gamma} \exp (r_{t}^{*}) + \frac{\omega_{F}^{*} (b_{F , t}^{*})^{- \sigma}}{(c_{t}^{*})^{- \gamma}} \right], \\ 1 = \mathbb {E}_{t} \left[ \delta \left(\frac{c_{t + 1}^{*}}{c_{t}^{*}}\right)^{- \gamma} \exp (\Delta e_{t + 1} + r_{t}) + \frac{\omega_{H}^{*} (b_{H , t}^{*})^{- \sigma} + (\bar {c}^{*})^{- \gamma} \theta_{H , t}^{*}}{(c_{t}^{*})^{- \gamma}} \exp (- e_{t}) \right]. \\ \end{array}
$$

# 7.C.2 Model Characterization

Log-linearizing the Euler equations yields

$$
- \left(\lambda_{H, t}^{*} - \lambda_{H, t}\right) = \mathbb {E}_{t} \left[ m_{t + 1}^{*} - m_{t + 1} \right] + \mathbb {E}_{t} \left[ \Delta e_{t + 1} \right] = \mathbb {E}_{t} \left[ \gamma \left(\Delta \log c_{t + 1} - \Delta \log c_{t + 1}^{*}\right) \right] + \mathbb {E}_{t} \left[ \Delta e_{t + 1} \right].
$$

Let  $\bar{e} \stackrel{\mathrm{def}}{=} \lim_{t \to \infty} e_t$  denote the long-term exchange rate level, which is well defined in a stationary economy. Iterating this equation forward, we obtain the following result.

Proposition 7.2. The exchange rate level is equal to the expected consumption growth differential and the expected convenience yield differential:

$$
\begin{array}{l} e_{t} - \bar {e} = \sum_{j = 1}^{\infty} \mathbb {E}_{t} \left[ \gamma \left(\Delta \log c_{t + j} - \Delta \log c_{t + j}^{*}\right) \right] + \sum_{j = 0}^{\infty} \mathbb {E}_{t} \left[ \lambda_{H, t + j}^{*} - \lambda_{H, t + j} \right] \\ = - \gamma \left(\log \frac{c_{t}}{\bar {c}} - \log \frac{c_{t}^{*}}{\bar {c}^{*}}\right) + \sum_{j = 0}^{\infty} \mathbb {E}_{t} \left[ \lambda_{H, t + j}^{*} - \lambda_{H, t + j} \right], \tag {7.4} \\ \end{array}
$$

where the convenience yield differential on the U.S. bond is approximately

$$
\lambda_{H, t}^{*} - \lambda_{H, t} \approx \frac{\omega_{H}^{*} \left(b_{H , t}^{*}\right)^{- \sigma}}{\left(c_{t}^{*}\right)^{- \gamma}} \exp (- e_{t}) - \frac{\omega_{H} b_{H , t}^{- \sigma}}{c_{t}^{- \gamma}} - \theta_{H, t}^{*} \exp (- e_{t}). \tag {7.5}
$$

The proof is presented in Appendix A.29. This result extends the exchange rate accounting formula in Proposition 4.2 with additional assumptions about household preferences, which provides the key to understand the exchange rate dynamics in response to different types of shocks. The right-hand side of Eq. (7.4) is a sum of two components. The first component is the marginal utility differential. When markets are complete, as we saw in Section 4.B.4, it is the only determinant of the exchange rate level. The second component is the sum of expected convenience yield differentials. It arises from the Euler equation wedges, and drives additional variations in the exchange rate dynamics. Interestingly, it is not the convenience yield

per se that affects the exchange rate, but the differential between the foreign investors' perspective and the home investors' perspective. To obtain a stronger dollar (i.e., a higher  $e_t$ ), we need the foreign investors' convenience yield on the dollar bond to exceed the home investors' convenience yield.

Eq. (7.5) further connects the convenience yield differential to the quantities of the U.S. bond held by foreign and U.S. households,  $b_{H,t}^{*}$  and  $b_{H,t}$ , and the exogenous demand shifter  $\theta_{H,t}^{*}$ . If the foreign households hold more U.S. bonds, their marginal utility from holding the U.S. bond is lower, which reduces their convenience yield  $\lambda_{H,t}^{*}$  and depreciates the dollar, unless the increase in the foreign households' holding is accompanied by a change in the demand shifter  $\theta_{H,t}^{*}$ .

In this way, the exchange rate dynamics are driven not only by the marginal utility differential, but also by the convenience yield differential. Heuristically, in complete markets, the exchange rate movement is determined by the differential in marginal utilities over consumption:

$$
\Delta e = \left(\Delta u_{c} - \Delta u_{c}^{*}\right).
$$

As recessions lower the local households' consumption, raise their marginal utility, and appreciate the local currency, the exchange rate is always counter-cyclical. However, in the data, exchange rates are acyclical or even procyclical, meaning that currencies tend to depreciate in bad times [Backus and Smith, 1993].

In comparison, after we introduce the non-pecuniary benefits of holding bonds, the exchange rate is determined by not only the differential in marginal utilities over consumption, but also the differential in marginal utilities over bond holding. Heuristically, we have

$$
\Delta e = \left(\Delta u_{c} - \Delta u_{c}^{*}\right) + \left(\Delta u_{b}^{*} - \Delta u_{b}\right),
$$

where  $\Delta u_{b}^{*} - \Delta u_{b}$  captures the marginal utility differentials over bond holding for current and future periods as we specified in Eq. (7.5).

Take the foreign households as an example. Recessions lower their wealth and reduce their holdings of the dollar safe assets. Given their downward-sloping demand curve for dollar safe assets, they impute a higher convenience yield and accept a lower expected return to hold the U.S. bond. To equilibrate their demand with the U.S. households, the dollar has to appreciate to generate an expected depreciation, which leads to a lower expected return to hold the U.S. bond from the foreign perspective. In this way, the demand for safe assets connects wealth decline to local currency depreciation. If the wealth declines more than consumption in recessions, this channel

based on marginal utilities over bonds could overturn the complete-market channel based on marginal utilities over consumption, and generate procyclical exchange rates.

# 7.C.3 Calibration and the Steady State

We log-linearize the model and solve the forward-looking first-order dynamics around a non-stochastic steady state. The details of this technique can be found in Christiano [2002], and Dynare offers a convenient implementation.

We find the non-stochastic steady state by setting all variables to be constant over time. For example, the home goods' market clearing condition becomes

$$
c_{H, S S} + c_{H, S S}^{*} = y_{S S},
$$

and the foreign investors' Euler equation for home bonds becomes

$$
1 = \delta \exp (r_{S S}) + \frac{\omega_{H}^{*} (b_{H , S S}^{*})^{- \sigma} + c_{S S}^{- \gamma} \theta_{H , S S}^{*}}{c_{S S}^{- \gamma}} \exp (- e_{S S}),
$$

which uses  $\Delta e_{SS} = e_{SS} - e_{SS} = 0$  and  $c_{SS}^{*} / c_{SS}^{*} = 1$ .

We pick the following parameter values:  $\gamma = 1$ ,  $\sigma = 3$ ,  $\alpha = 0.85$ ,  $\delta = 0.99$ , and  $\bar{y} = \bar{y}^{*} = 1$ . We calibrate the variables  $\omega_{H} = \omega_{F}^{*}$ ,  $\omega_{H}^{*} = \omega_{F}$ , and  $\bar{\theta}_{H}^{*}$  such that in the non-stochastic steady state, the convenience yield on the home bond  $\lambda_{H,SS}$  is  $1.01\%$ , the convenience yield on the foreign bond  $\lambda_{F,SS}$  is  $0.50\%$ , the U.S. debt/output ratio  $\bar{b} / (p_{SS}y_{SS})$  is  $100\%$ , the foreign debt/output ratio  $\bar{b}^{*} / (p_{SS}^{*}y_{SS}^{*})$  is  $79\%$ ,  $b_{H,SS}^{*} / \bar{b} = 50\%$  of the U.S. bond is held by the foreign households, and  $b_{F,SS} / \bar{b}^{*} = 20\%$  of the foreign bond is held by the U.S. households. This set of targets implies that the U.S. net foreign asset is  $-34\%$  of the U.S. output in the steady state.

Table 7.1 reports the more details about the steady-state values. The U.S. consumption is slightly higher than the foreign consumption and on average the U.S. runs a permanent trade deficit equal to  $-0.08\%$  of the total output. This trade deficit is funded by the fact that the U.S. pays a lower interest rate on its external borrowing than the foreign country—a situation we refer to as the seigniorage revenue. Quantitatively, the U.S. borrows  $50\%$  of its output from the foreign households at an interest rate of  $0\%$ , whereas the foreign country borrows  $16\%$  of its output from the U.S. households at an interest rate of  $0.5\%$ . In the steady state, the foreign country pays the U.S. a net interest equal to  $16\% \times 0.5\% = 0.08\%$  of the foreign output. In reality, this seigniorage revenue could be much bigger if the discount rate on the foreign liabilities is higher than  $0.5\%$  or if the size of the foreign liabilities is greater than  $16\%$  of the foreign output in our calibration.

<table><tr><td>Variable</td><td>Notation</td><td>Value</td></tr><tr><td>Home consumption</td><td>css</td><td>0.656</td></tr><tr><td>Foreign consumption</td><td>c*SS</td><td>0.654</td></tr><tr><td>Home trade balance</td><td>tbss/(pssyyss)</td><td>-0.08%</td></tr><tr><td>Home bond rate</td><td>rss</td><td>0.00%</td></tr><tr><td>Foreign bond rate</td><td>r*SS</td><td>0.50%</td></tr><tr><td>Home bond convenience yield</td><td>λH,SS</td><td>1.01%</td></tr><tr><td>Foreign bond convenience yield</td><td>λF,SS</td><td>0.50%</td></tr><tr><td>Exchange rate</td><td>eSS</td><td>0.0026</td></tr><tr><td>U.S. debt-output ratio</td><td>b/(pssyyss)</td><td>100%</td></tr><tr><td>Foreign debt-output ratio</td><td>b*/(pssyyss)</td><td>79%</td></tr><tr><td>Foreign holding of home bond</td><td>b*H,SS/b</td><td>50%</td></tr><tr><td>Home holding of foreign bond</td><td>bF,SS/b*</td><td>20%</td></tr><tr><td>Home net foreign asset</td><td>nfaH,SS/(pssyyss)</td><td>-34%</td></tr></table>

# 7.C.4 Flight to Safety and International Wealth Transfers

In the model we considered under the insurance provision view, we interpret a global crisis as a low endowment state. In this model, we are going to highlight a different aspect of a global crisis: a flight to safety. In particular, we focus on the foreign households' demand for the U.S. risk-free bond, which is captured by  $\theta_{H,t}^{*}$ . It is likely that an increase in the foreign households' safe asset demand is correlated with declines in home and foreign endowments. However, we first study this shock in isolation to highlight its role in resolving the reserve currency paradox.

Figure 7.9 reports the impulse responses to a shock to  $\theta_{H,t}^{*}$ . We assume that this shock dissipates slowly with an autocorrelation of 0.9. Upon the arrival of the shock, we see an increase in the foreign households' convenience yield  $\lambda_{H,t}^{*}$  on the dollar risk-free bond, defined as

$$
\exp (- \lambda_{H, t}^{*}) = \mathbb {E}_{t} \left[ \delta \left(\frac{c_{t + 1}^{*}}{c_{t}^{*}}\right)^{- \gamma} \exp (\Delta e_{t + 1} + r_{t}) \right].
$$

Through the exchange rate formula we derived in Proposition 4.2, Section 4.B, generalized below,

$$
e_{t} = \sum_{j = 0}^{\infty} \mathbb {E}_{t} [ r_{t + j} - r_{t + j}^{*} ] + \sum_{j = 0}^{\infty} \mathbb {E}_{t} [ \lambda_{H, t + j}^{*} - \lambda_{F, t + j}^{*} ] - \sum_{j = 0}^{\infty} \mathbb {E}_{t} [ r p_{t + j} ] + \bar {e},
$$

the increase in the convenience yield on the dollar bond appreciates the dollar. It is worth noting that the dollar appreciation requires us to break the complete-market condition (1.16), reproduced below,

$$
\Delta e_{t + 1} = m_{t + 1} - m_{t + 1}^{*} = - \Delta c_{t + 1} + \Delta c_{t + 1}^{*},
$$

Table 7.1: Steady-State Values

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/3387071c9567d4c8d14c3323a54e6fecc07d3faefcdc8ac32664ac7b80101594.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/c8da3e3f4506d8af311d6190e1be4f2a0db2c4bcb63ee4e0c420ef39e5b7dd22.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/2edfffbee9dbebd7495d854d4aedabb17f143a8cf81dedc1b013d3a2ab09050b.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/a6746887052d7fc61a13149af25f61dbcc1e85685ab66fdaa7983a7d9b3266b0.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/888ef50341ffe3f72962248a79ce48f9e7cb183c092302ddcf3b56d52fb53a99.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/947653ef888443cebc9e851ca62ed4955d4b4c26711a770a8e1419c546d8fca6.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/979c249219788153c72aa855d0d1ede66b06de0fa746652c608b86ed2d083daf.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/2d2fce90b6db461ca56112ce76aae9fa2c22b4ab9c485101051e51487b31f66d.jpg)  
Figure 7.9: Impulse Responses to Dollar Bond Demand Shock. The variables are the foreign demand for the dollar bond, the foreign convenience yield, the dollar's log exchange rate, the log consumption differential, the log wealth differential, the trade balance/output ratio, the NFA/output ratio, the fraction of dollar bonds held by foreign households, and the fraction of foreign bonds held by U.S. households.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/4e98e9d6f7427478c887abdae3bb4363cc87a29b7bb4ca6ef50f2ee8c6a82165.jpg)

because, as we will see below, the U.S. consumption is relatively higher than the foreign consumption in the flight-to-safety episodes, leading to a lower U.S. households' marginal utilities and hence a weaker dollar under complete markets.

On the quantity side, the foreign households' purchase of the dollar bond is financed by reducing their consumption and their holding of the foreign bond. As a result, the transfer of the dollar bond from the U.S. households to the foreign households is accompanied by a transfer of consumption goods and the foreign bond from the foreign households to the U.S. households. The U.S. households' consumption increases relative to the foreign households' consumption.

This increase in U.S. relative consumption reflects a seigniorage revenue that the U.S. earns from issuing bonds that carry convenience yields. By issuing expensive bonds in high convenience yield states, the U.S. receives real resources from the rest of the world. If the convenience yield shock is persistent, the seigniorage revenue is

also expected to last, leading to an increase in the expected future seigniorage revenues. This increase in the expected future seigniorage revenues is reflected in the U.S. households' wealth  $a_{t}$ , which is defined as the present value of their consumption streams:

$$
a_{t} = \mathbb {E}_{t} \left[ \sum_{s = t}^{\infty} \delta^{s} \frac{c_{s}^{- \gamma}}{c_{t}^{- \gamma}} c_{s} \right].
$$

This wealth effect is the key distinguishing feature of the safe asset view, as it disentangles the response in the U.S. wealth  $a_{t}$  from the response in the U.S. net foreign assets  $nfa_{t}$ . On the one hand, the U.S. buys some foreign bonds from the foreign country and sells some dollar bonds to the foreign country. In a flight-to-dollar episode, the dollar appreciates and the U.S. suffers a loss on its external portfolio, leading to a decline in the U.S. NFA. On the other hand, the U.S. receives a higher seigniorage revenue from issuing the dollar bonds, which increases the U.S. wealth despite its loss on the external portfolio.

In this model, a higher U.S. wealth relative to the foreign wealth leads to a higher U.S. consumption relative to the foreign consumption. In the special case with log preferences, the U.S. households' consumption is proportional to their wealth:

$$
c_{t} = (1 - \delta) a_{t}.
$$

Due to the home bias in the U.S. households' consumption, the U.S. spends more on the U.S. goods, which appreciates the dollar in real terms. In this way, the goods market clearing also implies a stronger dollar that is consistent with the convenience yield channel in the asset market. As such, a decline in the U.S. NFA does not necessarily imply a relative wealth gain for the foreign households and a stronger demand for the foreign goods. The reserve currency paradox is resolved by engineering a countercyclical U.S. wealth share from the seigniorage revenue.

This discussion highlights the countercyclicality of the U.S. wealth share as the key to understand the cyclical properties of international transfers. Jiang, Krishnamurthy, and Lustig [2020a] presents a simple calculation around 2008, and shows that the decline in the market value of the U.S. equities, bonds, and deposits was indeed less than the decline in the market value of the equities, bonds, and deposits in major developed foreign countries after converting to the dollar units. This relative gain in market value was also higher than the loss in the U.S. NFA. Dahlquist, Heyerdahl-Larsen, Pavlova, and Pénasse [2022], Kim [2022] present additional empirical evidence in favor of a countercyclical U.S. wealth share, whereas Sauzet [2022] presents a calculation that suggests the opposite. It is possible that the wealth

calculation includes different types of agents and assets in these studies, and more work is needed to think about the appropriate definition of wealth and reconcile these findings.

Finally, we note that there are alternative approaches to simultaneously address the cyclicality of the dollar and that of the international transfers and resolve the reserve currency paradox. Kekre and Lenel [2021], Sauzet [2022], Devereux, Engel, and Wu [2023] engineer greater recessions in the U.S. relative to the foreign countries during global downturns, which raise the U.S. marginal utility relative to the foreign marginal utility and appreciate the dollar. Dahlquist, Heyerdahl-Larsen, Pavlova, and Pénasse [2022] consider a different mechanism that emphasizes the time-varying demand for the U.S. goods, which also generates a countercyclical U.S. wealth share as in our model. Finally, the demand shift towards the U.S. goods is considered by Maggiori [2017] as a way to engineer a dollar appreciation during global downturns.

All of these resolutions can be framed under the goods market and the asset market views of the exchange rate in Section 1.D. Specifically, Eq. (1.19), reproduced below,

$$
\left(\frac{2 \alpha - 1}{\gamma} + 2 (1 - \alpha) \frac{2 \alpha}{2 \alpha - 1}\right) e_{t} = - \left(\log y_{t} - \log y_{t}^{*} - \frac{2 \alpha - 1}{\gamma} \tau_{t}^{A M} + \tau_{t}^{G M}\right),
$$

shows that both the asset market wedge  $\tau_t^{AM}$  and the goods market wedge  $\tau_t^{GM}$  can impact the exchange rate  $e_t$  and its cyclicality. Each of the above resolutions proposes a specific wedge that deviates from the frictionless benchmark and generates the dollar exchange rate's countercyclicality.

# 7.D The Stability of the International Monetary System

Having presented the two views of the reserve currency paradigm, we briefly survey two important issues related to the stability of the international monetary system. This discussion is based on a large body of literature on the international monetary system.

# 7.D.1 Triffin's Dilemma

In the Bretton-Woods system with a de-jure dollar standard, foreign countries peg their currencies to the U.S. dollar, and the U.S. in turn pegs the dollar to the price of gold. Triffin [1960] foresaw an emerging imbalance. He argued that, as the world demand for dollar reserve assets grew with the world economy, the U.S. will inevitably run out of gold backing for its supply of reserve assets. Eventually, the erosion of backing will lead to a run on the dollar and the collapse of the international monetary system. This is the famous Triffin

dilemma, which highlights the tension between providing liquidity demanded by a growing world economy and maintaining the value of the reserve currency.

In response to Triffin's critique of the Bretton-Woods system, Despres, Kindleberger, and Salant [1966] propose the famous minority view, which holds that the U.S., equipped with the deepest and most liquid financial markets in the world, is a natural world banker which provides liquid assets to the world. Like banks, this intermediation process can be stable for a long period of time. While this U.S.-as-world-banker view survives and exerts a strong influence on the modern literature, Triffin proved to be prescient. The U.S. ran out of its gold backing for its growing dollar liabilities in the early 1970s. As a result, it was forced to devalue the dollar relative to gold in 1971 and eventually abandon convertibility from the dollar to gold in 1973. Exchange rates became free-floating and the Bretton-Woods system collapsed.

In today's world, we live with a de-facto dollar standard. Both the insurance provision view and the safe asset view hold that the world has a strong demand for dollar reserve assets, whose backing is provided by revenue streams of firms and governments instead of gold. One can in fact argue that this is an extraordinary feat of financial engineering, as the U.S. managed to manufacture reserve assets backed by risky (pro-cyclical) cash flows instead of steady collaterals such as gold. In this sense, as Gourinchas, Rey, and Sauzet [2019] point out, "Triffin's analysis, however, was incomplete because, despite the abandonment of the dollar-gold parity, the dominance of the dollar has increased since the collapse of the Bretton Woods system. Paradoxically, once free from the shackle of a fixed gold parity, the use of the US dollar as an international currency soared to unprecedented levels. Yet, as we argue, the financial fragilities inherent in a hegemonic system have not disappeared: The Triffin dilemma is still with us, albeit in a subtly different form."

Indeed, we may expect two new forms of Triffin dilemma in today's world. First, the increasing demand for dollar safe assets may be met with insufficient fiscal backing [Gourinchas and Rey, 2007b, 2022, Farhi, Gourinchas, and Rey, 2011, Obstfeld, 2011, Farhi and Maggiori, 2018, Jiang, Lustig, Van Nieuwerburgh, and Xiaolan, 2019], which makes the U.S. become a more leveraged safe asset supplier. We will discuss this issue in greater details in Chapter 8.

Second, the premium on the dollar debt incentivizes foreign issuers to also dollarize their liabilities, while their revenues are mostly in local currency terms and thus generate a currency mismatch on their balance sheets. As Jiang, Krishnamurthy, and Lustig [2020a] write, "as a result, a different form of instability appears: as the world demand for dollar grows, the incentive for both U.S. and foreign issuers to

supply dollar assets will grow. In particular, if the growth in the world demand for dollar safe assets exceeds the growth in U.S. supply, the result will be growth in currency-mismatched balance sheets around the world. The conclusion is that financial spillovers and the global financial cycle may grow in importance."

This currency mismatch can be incurred by foreign governments, firms, and banks as they take advantage of the convenience yield on dollar funding. A large literature studies this issue from both theoretical and empirical angles. See Caballero and Krishnamurthy [2003], Schneider and Tornell [2004], Bocola and Lorenzoni [2020], Du, Pflueger, and Schreger [2020], Du and Schreger [2022b], Salomao and Varela [2022], Gutierrez, Ivashina, and Salomao [2023].

# 7.D.2 The Global Financial Cycle and the Impossible Duo

Another form of international fluctuations arises in the form of a global financial cycle. Rey [2015], Miranda-Agrippino and Rey [2015] find a strong commonality in the fluctuations in capital flows, asset prices, and credit growth around the world, and this cycle is aligned with the VIX and the dollar. In this sense, we can think of the VIX and the dollar as barometers of global risk appetite. Moreover, the U.S. monetary policy plays a key role in driving this global financial cycle, with a U.S. monetary tightening triggering collapses in asset prices and retrenchment in capital flows. In comparison, other countries' monetary policies appear to be less important [Gerko and Rey, 2017].

This global financial cycle challenges how we think about the independence of monetary policy. The classical Mundell-Flemming model presents the impossible trinity: with free capital mobility, independent monetary policies are feasible if and only if exchange rates are floating. This result is obtained in canonical models that focus on the interest rate channel alone, as the exchange rate can endogenously adjust to make independent interest rate targets possible.

The global financial cycle shows that the policy space is more constrained, leading to an impossible duo [Rey, 2015, Miranda-Agrippino and Rey, 2015]: with free capital mobility, floating exchange rates do not guarantee monetary policy independence because asset prices and capital flows still respond to global factors. In light of our exchange rate accounting formula in Proposition 4.2, reproduced below,

$$
e_{t} = \sum_{j = 0}^{\infty} \mathbb {E}_{t} [ r_{t + j} - r_{t + j}^{*} ] + \sum_{j = 0}^{\infty} \mathbb {E}_{t} [ \lambda_{t + j}^{*} ] - \sum_{j = 0}^{\infty} \mathbb {E}_{t} [ r p_{t + j} ] + \bar {e},
$$

the traditional impossible trinity view can be thought of as focusing on the interest rate term, i.e.,  $r_{t+j} - r_{t+j}^*$ . Ignoring the convenience

yield and the risk premium terms, we can expect the variations in the exchange rate to absorb the shocks to the autonomous interest rate policies. In comparison, the impossible duo view emphasizes the risk premium terms  $rp_{t+j}$  and the convenience yield terms  $\lambda_{t+j}^{*}$ , which affect not only exchange rates but also domestic financial and economic conditions. Even with floating exchange rates, monetary policy responses are needed to address the influences of these external factors. As a result, monetary policies are not truly independent if the capital accounts are open and allow the risk premium and convenience yield shocks to spill over.

# 8


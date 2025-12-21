---
title: "Convenience Yields"
parent_directory: "Lecture Notes on International Finance chapters"
formatted: 2025-12-21 06:35:00 AM
formatter_model: claude-sonnet-4
cli_tool: claude-code
primary_tags:
  - convenience yields
  - bond convenience yields
  - currency risk premium
  - exchange rate determination
secondary_tags:
  - treasury convenience yield
  - uncovered interest parity
  - euler equations
  - synthetic dollar bonds
  - term structure
  - market segmentation
  - long-run UIP condition
cssclasses: academia
---

# Convenience Yields

## Summary

- We deviate from the complete-market benchmark and introduce the bond convenience yield  $\lambda_{t}^{*}$  as a wedge in the households' Euler equations for holding the home bond:

$$
\exp(-\lambda_{t}^{*}) = \mathbb{E}_{t}[\exp(m_{t+1}^{*} + \Delta e_{t+1} + r_{t})].
$$

- This wedge affects both the currency expected return:

$$
\mathbb{E}_{t} \left[ r x_{t + 1} \right] = r p_{t} - \lambda_{t}^{*},
$$

and the exchange rate level:

$$
e_{t} = \sum_{j = 0}^{\infty} \mathbb{E}_{t} [ r_{t + j} - r_{t + j}^{*} ] + \sum_{j = 0}^{\infty} \mathbb{E}_{t} [ \lambda_{t + j}^{*} ] - \sum_{j = 0}^{\infty} \mathbb{E}_{t} [ r p_{t + j} ] + \bar {e}.
$$

- Under additional assumptions about the liquidity benefits of the currency forward, the convenient yield can be measured from the Treasury CIP deviation  $x_{t}^{Treas}$ :

$$
\lambda_{t}^{*} = - \frac{1}{1 - \beta^{*}} x_{t}^{T r e a s}.
$$

In this chapter, we consider an additional ingredient that drives currency returns: the bond convenience yields, which reflect the currencies' non-pecuniary qualities including liquidity, safety, and the ability to pledge as collateral.

This ingredient is motivated by the near-arbitrage spreads observed in the data, which show that certain currencies and assets earn different returns despite having similar payoffs. For example, a large literature has found that the yields on U.S. Treasury debt are traded below other benchmark interest rates [Longstaff, 2004, Krishnamurthy and Vissing-Jorgensen, 2012, Nagel, 2016, Van Binsbergen, Diamond, and Grotteria, 2022]. The U.S. Treasury also appears more expensive than TIPS [Fleckenstein, Longstaff, and Lustig, 2014], corporate bonds [Bai and Collin-Dufresne, 2019], foreign sovereign bonds [Du, Im, and Schreger, 2018a, Jiang, Krishnamurthy, and Lustig, 2018, 2021a, Koijen and Yogo, 2020], and duration-matched stocks [Van Binsbergen, 2020]. We refer to the lower yield earned by the U.S. Treasury as the convenience yield. Moreover, the convenience yield is not specific to the U.S. Treasury, as other safe assets such as high-grade dollar corporate bonds and bank deposits also appear to earn lower yields [Liao, 2020, Gutierrez, Ivashina, and Salomao, 2021].

To model these convenience yields, let  $r_t$  denote the log Treasury yield in the home country, and let  $\rho_t$  denote the log yield of a benchmark risk-free bond that does not contain any non-pecuniary benefits. Both rates are one-period. The benchmark risk-free rate exactly satisfies the households' Euler equation:

$$
1 = \mathbb{E}_{t} \left[ \exp \left(m_{t + 1} + \rho_{t}\right) \right].
$$

As the Treasury is more expensive, the Treasury yield is lower than the benchmark risk-free rate:

$$
r_t < \rho_t,
$$

which implies that the Euler equation fails for the Treasury yield:

$$
1 = \mathbb{E}_{t} \left[ \exp (m_{t + 1} + \rho_{t}) \right] > \mathbb{E}_{t} \left[ \exp (m_{t + 1} + r_{t}) \right].
$$

In other words, the Treasury yield gives rise to a wedge in the Euler equation. To capture this wedge, it is useful to conceptualize a convenience yield  $\lambda_t > 0$ , such that

$$
\exp (- \lambda_{t}) = \mathbb{E}_{t} [ \exp (m_{t + 1} + r_{t}) ]. \tag{4.1}
$$

This convenience yield describes the amount of risk-adjusted expected return that the households are willing to give up in order to hold the Treasury debt. This equation will be central to organize our discussion in this chapter.

What drives this convenience yield or, equivalently, the households' willingness to give up some pecuniary return to hold the convenience asset? In the next section, we consider a setting in which this convenience yield arises because the households derive utility directly from holding the Treasury debt. While this modeling device is still too stylized to shed light on the underlying mechanism, it provides a useful starting point and illustrates some relevant properties of the convenience yield. We discuss more elaborate microfoundations proposed in the literature in Section 4.E.

Before we proceed to set up the model, we note that the convenience yield is conceptually distinct from a risk premium, because a risk premium does not generate a wedge in the Euler equation. Consider, for example, a risky return  $\tilde{r}_{t+1}$  that does not carry a convenience yield. While this asset can earn an expected return that reflects its cyclical properties, it must satisfy the standard Euler equation,

$$
1 = \mathbb{E}_{t} \left[ \exp \big(m_{t + 1} + \tilde{r}_{t + 1} \big) \right].
$$

All models we considered in Chapter 3 fall into this category, although they differ in the specification of the SDF  $m_{t+1}$  that determines the risk premium.

In contrast, a special asset that carries a convenience yield generates a wedge in the Euler equation as in Eq. (4.1). In our analysis below, we will show that the convenience yield and the currency risk premium will drive variations in the exchange rate level and the currency expected return through different channels.

# 4.A An Illustrative Model

We assume that home bond generates non-pecuniary utilities when it is held by either home or foreign households. As a concrete example, we think about the home country as the U.S., the home risk-free bond as the U.S. Treasury, and the home currency as the dollar in this model.

Specifically, recall that  $b_{H,t}$  is the market value of the bond and  $r_t$  is the risk-free rate. The home investors' utility is derived over consumption and the market value of home bond holdings:

$$
\mathbb{E}_{0} \left[ \sum_{t = 0}^{\infty} \delta^{t} (u (c_{t}) + v (b_{H, t}; \theta_{t})) \right],
$$

where  $\theta_{t}$  captures a time-varying demand shifter for U.S. bonds. We assume that the utility is increasing in the consumption and the holding in the U.S. bonds, i.e.  $u'(c_t) > 0$  and  $v'(b_{H,t};\theta_t) > 0$ . In this way, the U.S. risk-free bond carries a convenience yield, which captures its non-pecuniary benefits to U.S. and foreign investors. We assume that the marginal utility for holding U.S. bonds is decreasing in quantity, i.e.,  $v''(b) < 0$ , so that the convenience yield is decreasing in the quantity held.

# 4.A.1 Issuer of the Safe Asset

We assume that households face the same endowment processes and the same financial markets as in Section 1.A. The only difference is the presence of a government in each country, which plays the role of the safe asset issuer. Specifically, we assume that the home country's government borrows a one-period risk-free bond with par value  $\bar{b}_t$  in period  $t$ , and pays it back in period  $t + 1$ . The government pays the proceeds from the bond issuance as a transfer to the domestic households in period  $t$ , and raises tax from the domestic households to pay off the debt in period  $t + 1$ . The household budget in period  $t$  is

$$
p_{t} y_{t} + b_{H, t - 1} \exp (r_{t - 1}) + b_{F, t - 1} \exp (r_{t - 1}^{*} - e_{t}) + \bar{b}_{t} = c_{t} + b_{H, t} + b_{F, t} \exp (- e_{t}) + \bar{b}_{t - 1} \exp (r_{t - 1}),
$$

where  $\bar{b}_t$  on the left-hand side is the proceeds from the home government's debt issuance in period  $t$ , which is transferred to the home households, and  $\bar{b}_{t-1} \exp(r_{t-1})$  on the right-hand side is the home government's debt repayment for its borrowing in period  $t-1$ , which is financed by a tax on the home households.

In this way, we set up a simple structure that generates a positive supply of risk-free debt that home and foreign households can hold. This setting implicitly assumes the government is a natural manufacturer of risk-free debt, a theme that we will return to in this chapter and in Chapters 7 and 8. In our setting, consider any bond utility function  $v$  that satisfies the Inada condition, such that the marginal utility of bond holding approaches infinity when the bond quantity approaches zero, e.g.,  $v(b) = \log (b)$ . Then, we can show that home and foreign households have to hold positive quantities of home risk-free bonds in equilibrium. In this case, the home government is the only provider of safe assets.

# 4.A.2 Intertemporal Solution

The Lagrangian is

$$
\begin{array}{l} \mathbb{E}_{0} \left[ \sum_{t = 1}^{\infty} \delta^{t} (u (c_{t}) + v (b_{H, t}; \theta_{t})) \right. \\ \left. + \sum_{t = 1}^{\infty} \zeta_{t} (p_{t} y_{t} + \bar{b}_{t} + b_{H, t - 1} \exp (r_{t - 1}) + b_{F, t - 1} \exp (r_{t - 1}^{*} - e_{t}) - c_{t} - \bar{b}_{t - 1} \exp (r_{t - 1}) - b_{H, t} - b_{F, t} \exp (- e_{t})) \right]. \\ \end{array}
$$

The first-order conditions w.r.t.  $c_{t}, b_{H,t}$  and  $b_{F,t}$  are

$$
\delta^{t} u^{\prime} \left(c_{t}\right) - \zeta_{t} = 0,
$$

$$
\mathbb{E}_{t} \left[ \delta^{t} v^{\prime} \left(b_{H, t}; \theta_{t}\right) - \zeta_{t} + \zeta_{t + 1} \exp (r_{t}) \right] = 0,
$$

$$
\mathbb{E}_{t} \left[ - \zeta_{t} \exp (- e_{t}) + \zeta_{t + 1} \exp \left(r_{t}^{*} - e_{t + 1}\right) \right] = 0.
$$

The implied Euler equations for home households are

$$
\begin{array}{l} 1 = \mathbb{E}_{t} \left[ \delta \frac{u^{\prime} \left(c_{t + 1}\right)}{u^{\prime} \left(c_{t}\right)} \exp \left(r_{t}\right) + \frac{v^{\prime} \left(b_{H , t} ; \theta_{t}\right)}{u^{\prime} \left(c_{t}\right)} \right], \\ 1 = \mathbb{E}_{t} \left[ \delta \frac{u^{\prime} \left(c_{t + 1}\right)}{u^{\prime} \left(c_{t}\right)} \exp \left(- \Delta e_{t + 1} + r_{t}^{*}\right) \right]. \\ \end{array}
$$

If we define the home households' convenience yield as

$$
\exp \left(- \lambda_{t}\right) \stackrel {\text{de f}} {=} 1 - \frac{v^{\prime} \left(b_{H , t} ; \theta_{t}\right)}{u^{\prime} \left(c_{t}\right)}, \tag{4.2}
$$

which is determined by the ratio between the marginal utility of bond holding and the marginal utility of consumption. This equilibrium convenience yield  $\lambda_{t}$  is driven by both demand shocks captured by  $\theta_{t}$  and supply shocks which affect the equilibrium bond holdings  $b_{H,t}$ .

Then, we can express the Euler equations as

$$
\exp (- \lambda_{t}) = \mathbb{E}_{t} [ \exp (m_{t + 1} + r_{t}) ],
$$

$$
1 = \mathbb{E}_{t} \left[ \exp \left(m_{t + 1} - \Delta e_{t + 1} + r_{t}^{*}\right) \right].
$$

In doing so, we offer a more structural interpretation for the convenience yields that we defined in Eq. (4.1).

Similarly, we modify the foreign utility as

$$
\mathbb{E}_{0} \left[ \sum_{t = 0}^{\infty} \delta^{t} (u^{*} (c_{t}) + v (b_{H, t}^{*}; \theta_{t}^{*})) \right],
$$

where the market value  $b_{H,t}^{*}$  of foreign households' bond holding is also in the home (real) currency units. We define the foreign households' convenience yield as

$$
\exp \left(- \lambda_{t}^{*}\right) = 1 - \frac{v^{\prime} \left(b_{H , t}^{*} ; \theta_{t}^{*}\right) \exp \left(- e_{t}\right)}{u^{\prime} \left(c_{t}^{*}\right)}. \tag{4.3}
$$

Then, the foreign households' Euler equations are

$$
\exp \left(- \lambda_{t}^{*}\right) = \mathbb{E}_{t} \left[ \exp \left(m_{t + 1}^{*} + r_{t} + \Delta e_{t + 1}\right) \right],
$$

$$
1 = \mathbb{E}_{t} \left[ \exp (m_{t + 1}^{*} + r_{t}^{*}) \right].
$$

# 4.A.3 Market Clearing

In goods market, the endowment is equal to the sum of consumption:

$$
y_{t} = c_{H, t} + c_{H, t}^{*},
$$

$$
y_{t}^{*} = c_{F, t} + c_{F, t}^{*}.
$$

In bonds market, the home and foreign bonds are in positive supply that is provided by their governments:

$$
b_{t} = b_{H, t} + b_{H, t}^{*},
$$

$$
b_{t}^{*} = b_{F, t} + b_{F, t}^{*}.
$$

# 4.A.4 Macro Synthesis

The exogenous variables now include the endowments and the safe-asset demand shifters:

$$
\left(y_{t}, y_{t}^{*}, \bar{b}_{t}, \bar{b}_{t}^{*}, \theta_{t}, \theta_{t}^{*}\right)_{t = 0}^{\infty}
$$

There are 13 endogenous variables in each period  $t$ :

$$
(c_{H, t}, c_{F, t}, b_{H, t}, b_{F, t}, p_{t}, c_{H, t}^{*}, c_{F, t}^{*}, b_{H, t}^{*}, b_{F, t}^{*}, p_{t}^{*}, r_{t}, r_{t}^{*}, e_{t})_{t = 0}^{\infty}.
$$

Let  $\exp(m_{t+1}) = \delta \frac{u'(c_{t+1})}{u'(c_t)}$  and  $\exp(m_{t+1}^*) = \delta \frac{u'(c_{t+1}^*)}{u'(c_t^*)}$  denote the home and foreign SDFs. Let

$$
\exp (- \lambda_{t}) = 1 - \frac{v^{\prime} (b_{H , t} ; \theta_{t})}{u^{\prime} (c_{t})},
$$

$$
\exp (- \lambda_{t}^{*}) = 1 - \frac{v^{\prime} (b_{H , t}^{*} ; \theta_{t}^{*}) \exp (- e_{t})}{u^{\prime} (c_{t}^{*})},
$$

denote the convenience yields that home and foreign households impute to the home bond.

The model implies the following 14 equations in each period, one of which is redundant since the market clearing adds up to the sum of households' budget constraints. For the Home country in period  $t$ ,

$$
p_{t} y_{t} + \bar{b}_{t} + b_{H, t - 1} \exp (r_{t}) + b_{F, t - 1} \exp (r_{t - 1}^{*} - e_{t}) = (c_{H, t})^{\alpha} (c_{F, t})^{1 - \alpha} + \bar{b}_{t - 1} \exp (r_{t - 1}) + b_{H, t} + b_{F, t} \exp (- e_{t}),
$$

$$
\left(c_{H, t}\right)^{\alpha} \left(c_{F, t}\right)^{1 - \alpha} = p_{t} c_{H, t} + p_{t}^{*} c_{F, t} \exp \left(- e_{t}\right),
$$

$$
y_{t} = c_{H, t} + c_{H, t^{\prime}}^{*}
$$

$$
\bar{b}_{t} = b_{H, t} + b_{H, t}^{*},
$$

$$
\exp (- \lambda_{t}) = \mathbb{E}_{t} \left[ \exp (m_{t + 1}) \exp (r_{t}) \right],
$$

$$
1 = \mathbb{E}_{t} \left[ \exp \left(m_{t + 1}\right) \exp \left(- \Delta e_{t + 1} + r_{t}^{*}\right) \right],
$$

For the Foreign country in period  $t$ ,

$$
p_{t}^{*} y_{t}^{*} + \bar{b}_{t}^{*} + \exp (r_{t - 1} + e_{t}) b_{H, t - 1}^{*} + b_{F, t - 1}^{*} \exp (r_{t - 1}^{*}) = (c_{F, t}^{*})^{\alpha} (c_{H, t}^{*})^{1 - \alpha} + \bar{b}_{t - 1}^{*} \exp (r_{t - 1}^{*}) + \exp (e_{t}) b_{H, t}^{*} + b_{F, t}^{*},
$$

$$
\left(c_{F, t}^{*}\right)^{\alpha} \left(c_{H, t}^{*}\right)^{1 - \alpha} = p_{t} c_{H, t}^{*} \exp \left(e_{t}\right) + p_{t}^{*} c_{F, t}^{*},
$$

$$
y_{t}^{*} = c_{F, t} + c_{F, t}^{*},
$$

$$
\bar{b}_{t}^{*} = b_{F, t} + b_{F, t}^{*},
$$

$$
1 = \mathbb{E}_{t} \left[ \exp \left(m_{t + 1}^{*}\right) \exp \left(r_{t}^{*}\right) \right],
$$

$$
\exp \left(- \lambda_{t}^{*}\right) = \mathbb{E}_{t} \left[ \exp \left(m_{t + 1}^{*}\right) \exp \left(\Delta e_{t + 1} + r_{t}\right) \right].
$$

The within-period problem is the same as in the benchmark model. The prices and exchange rates can be pinned down by:

$$
\frac{p_{t}}{p_{t}^{*} \exp (- e_{t})} = \frac{\alpha}{1 - \alpha} \frac{c_{F , t}}{c_{H , t}} = \frac{1 - \alpha}{\alpha} \frac{c_{F , t}^{*}}{c_{H , t}^{*}}.
$$

Compared to the macro synthesis in the baseline model in Section 1.A, the main difference is that the convenience yields are introduced in the home and foreign households' Euler equations for the home bond. We also make an auxiliary assumption that the bonds are in positive net supply, so that the utilities that the home and foreign households derive from holding the home bond are well-behaved.

# 4.B Exchange Rate Accounting

Next, we repeat the exchange rate accounting exercise in this model with bond convenience yields. The derivation is taken from Jiang, Krishnamurthy, and Lustig [2021a], Jiang, Krishnamurthy, Lustig, and Sun [2021b]. The model with bond convenience yields shows that the four Euler equations for bond holdings now contain additional convenience yield terms:

$$
\exp (- \lambda_{t}) = \mathbb{E}_{t} \left[ \exp \left(m_{t + 1} + r_{t}\right) \right], \tag{4.4}
$$

$$
1 = \mathbb{E}_{t} \left[ \exp \left(m_{t + 1} - \Delta e_{t + 1} + r_{t}^{*}\right) \right], \tag{4.5}
$$

$$
1 = \mathbb{E}_{t} \left[ \exp \left(m_{t + 1}^{*} + r_{t}^{*}\right) \right], \tag{4.6}
$$

$$
\exp \left(- \lambda_{t}^{*}\right) = \mathbb{E}_{t} \left[ \exp \left(m_{t + 1}^{*} + \Delta e_{t + 1} + r_{t}\right) \right]. \tag{4.7}
$$

We can also express these Euler equations (4.4)-(4.7) as

$$
1 = \mathbb{E}_{t} \left[ \exp \left(m_{t + 1} + \left(r_{t} + \lambda_{t}\right)\right) \right],
$$

$$
1 = \mathbb{E}_{t} \left[ \exp \left(m_{t + 1} - \Delta e_{t + 1} + r_{t}^{*}\right) \right],
$$

$$
1 = \mathbb{E}_{t} \left[ \exp (m_{t + 1}^{*} + r_{t}^{*}) \right],
$$

$$
1 = \mathbb{E}_{t} \left[ \exp \big(m_{t + 1}^{*} + \Delta e_{t + 1} + \big(r_{t} + \lambda_{t}^{*} \big) \big) \right],
$$

which look like the original Euler equations (1.6)-(1.9) that we derived in Section 1.B for risk-free bonds without convenience yields. However, a key difference makes these two cases not observationally equivalent: the home and foreign investors may have different convenience yields  $\lambda_{t}$  and  $\lambda_t^*$ . In this case, the home investors effectively perceive a home risk-free rate without convenience yield equal to  $\rho_{t} = r_{t} + \lambda_{t}$ , whereas the foreign investors effectively perceive a different home risk-free rate without convenience yield equal to  $\tilde{\rho}_{t} = r_{t} + \lambda_{t}^{*}$ . Therefore, we cannot map the setting with bond convenience yields back to the baseline model without bond convenience yields by modifying the bond yields.

# 4.B.1 Equilibrium Forces

Let us first work through a thought experiment that helps elucidate the restrictions these Euler equations impose on equilibrium exchange rates.

Suppose that at time  $t$ , there is an exogenous increase in  $\lambda_t^*$ , i.e., the foreign households' convenience yield on the home safe assets. For the sake of this argument, we will assume the home and foreign SDFs and the home households' convenience yield remain unaffected. Then, this increase in foreign households' convenience yield sets off the following chain of events.

First, consider the home households' Euler equation for holding domestic bonds, Eq. (4.4), reproduced below,

$$
\exp (- \lambda_{t}) = \mathbb{E}_{t} \left[ \exp (m_{t + 1} + r_{t}) \right].
$$

Since the home households' SDF and convenience yield are assumed to be unaffected, this Euler equation implies that the dollar risk-free rate  $r_t$  does not change.

Second, from the foreign households' Euler equation for holding home bonds, Eq. (4.7), reproduced below,

$$
\exp (- \lambda_{t}^{*}) = \mathbb{E}_{t} \left[ \exp (m_{t + 1}^{*} + r_{t} + \Delta e_{t + 1}) \right],
$$

an increase in their convenience yield  $\lambda_t^*$  lowers their risk-neutral expected return on holding home risk-free bonds. Since the dollar risk-free rate does not change, the exchange rate has to adjust to equilibrate this Euler equation. In particular, the dollar needs to appreciate today and create an expected depreciation to generate the lower expected return.

Lastly, if we examine the home households' Euler equation for holding foreign bonds, Eq. (4.5), reproduced below,

$$
1 = \mathbb{E}_{t} \left[ \exp \big(m_{t + 1} + r_{t}^{*} - \Delta e_{t + 1}) \right],
$$

we learn that the dollar exchange rate movement also raises the expected return on purchasing foreign currency bonds from the home perspective. Since the home households do not derive a convenience yield on foreign bonds that can adjust, all adjustment must happen in the dollar's currency risk premium. In our equilibrium, this happens via endogenous changes in the cyclicality and volatility of the dollar. Thus, these four Euler equations require endogenous responses in both first moments (i.e., exchange rate level and expected return) as well as second moments (i.e., currency cyclicality and volatility) in response to the shock to the convenience yield. As such, although the convenience yield and the risk premium are conceptually different, they could be correlated in practice.

# 4.B.2 Accounting for the Currency Expected Return

For the discussion in this section, we assume the random variables are jointly normally distributed. First, we can derive the home interest rate expression:

$$
r_{t} = - \mathbb{E}_{t} [ m_{t + 1} ] - \frac{1}{2} var_{t} (m_{t + 1}) - \lambda_{t},
$$

which now contains the convenience yield term  $\lambda_{t}$ . When the home households' convenience yield is higher, the home bonds' interest rate is lower.

Next, the foreign households' Euler equations can be expressed as

$$
\begin{array}{l} 0 = \mathbb{E}_{t} [ m_{t + 1}^{*} ] + \frac{1}{2} var_{t} (m_{t + 1}^{*}) + r_{t}^{*}, \\ - \lambda_{t}^{*} = \mathbb{E}_{t} [ m_{t + 1}^{*} ] + \frac{1}{2} var_{t} (m_{t + 1}^{*}) + \mathbb{E}_{t} [ \Delta e_{t + 1} ] + \frac{1}{2} var_{t} (\Delta e_{t + 1}) + cov_{t} (m_{t + 1}^{*}, \Delta e_{t + 1}) + r_{t}. \\ \end{array}
$$

Recall that the expected log excess return of the home currency against the foreign currency is defined as

$$
r x_{t + 1} = \Delta e_{t + 1} + r_{t} - r_{t}^{*}.
$$

Then, the Euler equations imply the following result:

Proposition 4.1. The home currency's expected log excess return is determined jointly by the home currency's risk premium and the home bond's convenience yield:

$$
\mathbb{E}_{t} \left[ r x_{t + 1} \right] = r p_{t} - \lambda_{t}^{*}, \tag{4.8}
$$

where  $r p_{t} \stackrel{\text{def}}{=} -\text{cov}_{t}(m_{t+1}^{*}, \Delta e_{t+1}) - \frac{1}{2}\text{var}_{t}(\Delta e_{t+1})$  is the currency risk premium.

If we compare this result to the benchmark case in Proposition 1.10, we note that the currency expected excess return now depends on both the currency risk premium and the convenience yield. These two components of the currency expected excess return are conceptually different: the risk premium is the compensation for the currency's risk exposures, whereas the convenience yield reflects the non-pecuniary benefits that investors derive from holding the bonds issued in this currency. Of course, the currency risk premium and the convenience yield could be correlated, as recessions tend to increase risk premia as well as demand for safe assets. That said, they are two conceptually distinct channels that affect the currency expected return and, as we will see next, the exchange rate level.

Similarly, there is an expression from the home households' perspective:

$$
\mathbb{E}_{t} [ - r x_{t + 1} ] = - cov_{t} (m_{t + 1}, - \Delta e_{t + 1}) - \frac{1}{2} var_{t} (\Delta e_{t + 1}) + \lambda_{t}.
$$

Combined together, these expressions imply that the home and foreign investors need to agree on the combination of the equilibrium currency risk premium and the convenience yield from their different perspectives:

$$
- cov_{t} \left(m_{t + 1}^{*}, \Delta e_{t + 1}\right) - \frac{1}{2} \operatorname{va r}_{t} \left(\Delta e_{t + 1}\right) - \lambda_{t}^{*} = cov_{t} \left(m_{t + 1}, - \Delta e_{t + 1}\right) + \frac{1}{2} \operatorname{va r}_{t} \left(\Delta e_{t + 1}\right) - \lambda_{t}, \tag{4.9}
$$

which is a direct extension of Eq. (1.12) which does not consider convenience yields.

# 4.B.3 Accounting for the Exchange Rate Level

Moreover, assuming the real exchange rate is stationary, then, we obtain a more general decomposition of the exchange rate level that extends Proposition 1.2:

Proposition 4.2. The exchange rate level is equal to the sum of expected future interest rate differentials, the sum of expected future convenience yields, the sum of expected future currency risk premia, and the long-run exchange rate level:

$$
e_{t} = \sum_{j = 0}^{\infty} \mathbb{E}_{t} [ r_{t + j} - r_{t + j}^{*} ] + \sum_{j = 0}^{\infty} \mathbb{E}_{t} [ \lambda_{t + j}^{*} ] - \sum_{j = 0}^{\infty} \mathbb{E}_{t} [ r p_{t + j} ] + \bar {e}.
$$

In other words, if today's home currency is stronger than its long-run mean, it is either because the home currency is offering a higher interest rate than the foreign currency, or it has a higher convenience yield, or because it has a lower risk premium (i.e., a lower discount rate).

Similar to the exchange rate accounting in Section 1.B, we can also use this formula to decompose the exchange rate innovation:

$$
(\mathbb{E}_{t} - \mathbb{E}_{t - 1}) [ e_{t} ] = \sum_{j = 0}^{\infty} (\mathbb{E}_{t} - \mathbb{E}_{t - 1}) [ r_{t + j} - r_{t + j}^{*} ] + \sum_{j = 0}^{\infty} (\mathbb{E}_{t} - \mathbb{E}_{t - 1}) [ \lambda_{t + j}^{*} ] - (\mathbb{E}_{t} - \mathbb{E}_{t - 1}) \sum_{j = 0}^{\infty} \mathbb{E}_{t} [ r p_{t + j} ],
$$

which likewise contains a convenience yield component.

Moreover, consider the risk-free rates  $\rho_{t}$  and  $\rho_{t}^{*}$  without convenience yields, which satisfy the standard Euler equations:

$$
1 = \mathbb{E}_{t} [ \exp (m_{t + 1} + \rho_{t}) ],
$$

$$
1 = \mathbb{E}_{t} \left[ \exp \left(m_{t + 1}^{*} + \rho_{t}^{*}\right) \right].
$$

We can relate these two risk-free rates to the bond yields  $r_t$  and  $r_t^*$  by

$$
\rho_{t} = r_{t} + \lambda_{t},
$$

$$
\rho_{t}^{*} = r_{t}^{*}.
$$

As the home bond carries a convenience yield, the home households' Euler equation implies that it is lower than the home risk-free rate

$\rho_{t}$  by exactly  $\lambda_{t}$ . In comparison, the foreign bond does not carry a convenience yield, so the foreign bond yield  $r_t^*$  is equal to the foreign risk-free rate  $\rho_t^*$ .

Then, we can reorganize the terms in Proposition 4.2 and show

$$
e_{t} = \sum_{j = 0}^{\infty} \mathbb{E}_{t} [ \rho_{t + j} - \rho_{t + j}^{*} ] + \sum_{j = 0}^{\infty} \mathbb{E}_{t} [ \lambda_{t + j}^{*} - \lambda_{t + j} ] - \sum_{j = 0}^{\infty} \mathbb{E}_{t} [ r p_{t + j} ] + \bar {e},
$$

which implies that the variations in the exchange rate level are driven by the variations in the risk-free rate differentials (which carry no convenience yields), in the currency risk premia, and in the difference between the convenience yields that home and foreign households derive from holding the home bond.

This expression shows why it is natural to focus on the case in which home and foreign households derive different convenience yields, i.e.,  $\lambda_t \neq \lambda_t^*$ . If the home and foreign households have the identical convenience yield, i.e.,  $\lambda_t = \lambda_t^*$ , then, the exchange rate level is determined only by the risk-free rate differentials and the currency risk premia, both of which are driven by the SDFs via

$$
\begin{array}{l} \rho_{t} - \rho_{t}^{*} = - \log \mathbb{E}_{t} \left[ \exp \left(m_{t + 1}\right) \right] + \log \mathbb{E}_{t} \left[ \exp \left(m_{t + 1}^{*}\right) \right], \\ r p_{t} = - cov_{t} \left(m_{t + 1}^{*}, \Delta e_{t + 1}\right) - \frac{1}{2} var_{t} \left(\Delta e_{t + 1}\right). \\ \end{array}
$$

In other words, only the home and foreign households' convenience yield differential, rather than their convenience yield levels, matters for the exchange rate level.

# 4.B.4 Comparison with the Complete-Market Case

Building on the discussion of the exchange rate determination, let us consider complete markets as a special case. In the model we specified in Section 4.A, we additionally assume that the home and foreign households can trade the complete set of contingent claims. In the meanwhile, these households still derive non-pecuniary benefits from holding the dollar risk-free bond, so the model is still different from the baseline model in Section 1.C.

In this case, we can solve the model by assuming a social planner who maximizes the sum of home and foreign utilities with weights  $\pi$  and  $1 - \pi$ , subject to the market clearing conditions for goods and bonds. The equilibrium convenience yields satisfy the following relationships [Jiang, 2023a].

Proposition 4.3. When the markets are complete, the home and foreign households derive the same convenience yields from holding the dollar bond:

$$
\lambda_{t} = \lambda_{t}^{*},
$$

and the exchange rate is determined only by the marginal utility differential:

$$
\Delta e_{t}^{c m} = m_{t} - m_{t}^{*}.
$$

The proof is in Appendix A.13. This proposition shows that, while the convenience yields can be nonzero in complete markets, they do not directly affect the equilibrium exchange rate. $^{1}$  More precisely, the convenience yields  $\lambda_{t}$  and  $\lambda_{t}^{*}$  are equalized to generate zero differential. Given the definitions of these convenience yields in Eq. (4.2) and (4.3), this means that the home and foreign households' marginal utilities derived from holding the dollar bond are equalized (after multiplication with the Pareto weights  $\pi$  and  $1 - \pi$ ):

$$
\pi v^{\prime} (b_{H, t}; \theta_{t}) = (1 - \pi) v^{\prime} (b_{H, t}^{*}; \theta_{t}^{*}),
$$

which is similar to the equilibrium condition under complete markets that the home and foreign households' marginal utilities over consumption are also equalized (after unit conversion by the exchange rate  $\exp(e_t)$  and multiplication with the Pareto weights  $\pi$  and  $1 - \pi$ ):

$$
\pi u^{\prime} \left(c_{t}\right) = (1 - \pi) u^{\prime} \left(c_{t}^{*}\right) \exp \left(e_{t}\right).
$$

As such, incomplete markets are an essential ingredient to make the convenience yields matter for exchange rates. We will further explore the interaction between incomplete markets and convenience yields in Section 5.D.

# 4.B.5 The Yield-Exchange Rate Connection

The introduction of the convenience yield also broadens how we think about the relationship between the interest rate in a country and its currency strength. Under the uncovered interest rate parity (UIP) condition, a higher interest rate is associated with a stronger currency. We can see this from Proposition 4.2, which predicts a positive relationship between the currency value  $e_t$  of the home country and its interest rate  $r_t$ , holding other things constant:

$$
e_{t} = \sum_{j = 0}^{\infty} \mathbb{E}_{t} [ r_{t + j} - r_{t + j}^{*} ] + \sum_{j = 0}^{\infty} \mathbb{E}_{t} [ \lambda_{t + j}^{*} ] - \sum_{j = 0}^{\infty} \mathbb{E}_{t} [ r p_{t + j} ] + \bar {e}.
$$

However, when we introduce the convenience yield, the relationship between the interest rate and the currency value becomes more complicated. By the home households' Euler equation, the home interest rate level is determined by the home households' SDF and convenience yield:

$$
r_{t} = - \mathbb{E}_{t} [ m_{t + 1} ] - \frac{1}{2} var_{t} (m_{t + 1}) - \lambda_{t}.
$$

In the complete-market world, convenience yields may still affect exchange rates indirectly via their effect on relative marginal utilities, for example, by affecting the natural rate in the home country [Caballero, Farhi, and Gourinchas, 2021, Kekre and Lenel, 2021].

Holding other things constant, a higher convenience yield  $\lambda_{t}$  lowers the home interest rate  $r_t$ . During global recessions, it is plausible that the flight to safety raises the convenience yields that both home and foreign households impute to the U.S. bond, i.e.,  $\lambda_{t}$  and  $\lambda_{t}^{*}$ . Then, the home interest rate  $r_t$  decreases, while the convenience yield component strengthens the home currency, leading to a negative relationship between the home interest rate and the home currency value.

This discussion shows that the yield-exchange rate relationship depends on the types of shocks we are considering [Jiang, Krishnamurthy, Lustig, and Sun, 2021b]. When we consider a monetary shock  $\varepsilon_t^m$  whose primary effect is to raise the home interest rate, we expect a positive yield-exchange rate relationship:

$$
cov_{t} \left(e_{t}, r_{t} \mid \varepsilon_{t}^{m}\right) \stackrel {\text{de f}} {=} cov_{t} \left(proj \left[ e_{t} \mid \varepsilon_{t}^{m} \right], proj \left[ r_{t} \mid \varepsilon_{t}^{m} \right]\right) > 0.
$$

When we consider a demand shock  $\varepsilon_t^d$  whose primary effect is to raise the convenience yield, which lowers the bond yield while strengthening the currency, we expect a negative yield-exchange rate relationship:

$$
cov_{t} (e_{t}, r_{t} | \varepsilon_{t}^{d}) \stackrel {\mathrm{de f}} {=} cov_{t} (p r o j [ e_{t} | \varepsilon_{t}^{d} ], p r o j [ r_{t} | \varepsilon_{t}^{d} ]) <   0.
$$

The overall relationship between the interest rate and the exchange rate depends on the relative strength of these two effects.

This intuition also carries over to the case of long-term debt, whose yield also depends on the expected interest rates and the convenience yields. In particular, an increase in the expected path of interest rates raises the long-term bond yield and appreciates the currency, whereas a flight-to-safety shock can lower the long-term bond yield if it also carries some convenience benefits, while appreciating the currency. However, as we see in Section 3.D, when markets are complete and exchange rates are stationary, the presence of currency risk premium does not break the long-run UIP condition (3.21). As a result, like interest rate shocks, risk premium shocks affect the long-run bond yield and the exchange rate in the same direction, which also shows a stark difference between currency risk premium and convenience yield.

# 4.C Measuring the Convenience Yields

Having described the role convenience yields play in exchange rate dynamics, we face the obvious question of how they are measured empirically. As indicated in Section 2.A.6, the convenience yields manifest themselves in many interest rate spreads. In this section, we

discuss this issue in the context of the Treasury basis, which follows Jiang, Krishnamurthy, and Lustig [2021a].

Recall that a dollar forward allows investors to lock in the dollar exchange rate at a fixed rate  $f_{t}$  in the next period. Now, consider the following trading strategy. In period  $t$ , an investor converts 1 unit of dollar to  $\exp(e_{t})$  units of the foreign currency, and purchase foreign risk-free bonds. At the same time, the investor enters a currency forward contract to lock in the dollar exchange rate at  $f_{t}$  in period  $t + 1$  for  $\exp(e_{t} + r_{t}^{*})$  units of foreign currency.

Then, in period  $t + 1$ , the investor has  $\exp (e_t + r_t^*)$  units of foreign currency, which are then converted back to  $\exp (-f_t + e_t + r_t^*)$  units of dollar using the forward contract. This strategy generates a return of  $\exp (-f_t + e_t + r_t^*)$  per dollar invested. Since the investor does not hold the actual dollar risk-free bond but still earns a risk-free return in dollar terms, we regard this combination of foreign risk-free bond and currency forward contract as a synthetic dollar bond.

If this synthetic dollar bond does not carry a convenience yield, then, its Euler equation can be expressed as

$$
1 = \mathbb{E}_{t} [ \exp (m_{t + 1} - f_{t} + e_{t} + r_{t}^{*}) ]
$$

from the home households' perspective, and

$$
1 = \mathbb{E}_{t} \left[ \exp \left(m_{t + 1}^{*} + \Delta e_{t + 1} - f_{t} + e_{t} + r_{t}^{*}\right) \right]
$$

from the foreign households' perspective.

Combine with the derivation in Section 4.B. We obtain

$$
\begin{array}{l} - \lambda_{t}^{*} = r_{t} - \left(r_{t}^{*} - f_{t} + e_{t}\right), \\ - \lambda_{t} = r_{t} - \left(r_{t}^{*} - f_{t} + e_{t}\right), \\ \end{array}
$$

which implies that the convenience yields that foreign and home households impute to the dollar risk-free bonds are equal to each other, and equal to the negative of the dollar Treasury basis, defined as

$$
x_{t}^{T r e a s} \stackrel {{\mathrm{de f}}} {{=}} r_{t} - \left(r_{t}^{*} - f_{t} + e_{t}\right).
$$

When the dollar risk-free bond has a convenience yield, its risk-free rate  $r_t$  is lower than the synthetic dollar yield, i.e.,  $(r_t^* - f_t + e_t)$ , leading to a negative dollar Treasury basis:

$$
x_{t}^{\text{Tr ea s}} \stackrel {{\mathrm{de f}}} {{=}} r_{t} - \left(r_{t}^{*} - f_{t} + e_{t}\right) = - \lambda_{t}^{*} <   0.
$$

We obtain a more realistic case by assuming that the synthetic dollar bond also carries a convenience yield, albeit smaller in magnitude than the actual dollar risk-free bond. More precisely, we assume that

the convenience yield derived from the synthetic dollar bond is a fraction  $\beta^{*}$  of the convenience yield derived from the actual dollar bond from foreign households' perspective:

$$
\exp \left(- \beta^{*} \lambda_{t}^{*}\right) = \mathbb{E}_{t} \left[ \exp \left(m_{t + 1}^{*} + \Delta e_{t + 1} - f_{t} + e_{t} + r_{t}^{*}\right) \right].
$$

If this synthetic dollar bond is representative of other non-Treasury dollar safe assets, a point we will next discuss in 4.C.1, then, conceptually we can say that for the convenience yield on the U.S. Treasury,  $\beta^{*}$  of it is about the dollar and  $1 - \beta^{*}$  of it is specifically about the U.S. Treasury. Indeed, combining with the derivation in Section 4.B, we obtain

$$
x_{t}^{T r e a s} \stackrel {\mathrm{de f}} {=} r_{t} - \left(r_{t}^{*} - f_{t} + e_{t}\right) = - (1 - \beta^{*}) \lambda_{t}^{*} <   0,
$$

which states that the Treasury basis captures the fraction of the convenience yield that the U.S. Treasury earns on top of the synthetic dollar bond.

Similarly, from the home households' perspective, we assume that the convenience yield derived from the synthetic dollar bond is a fraction  $\beta$  of the convenience yield derived from the actual dollar bond:

$$
\exp (- \beta \lambda_{t}) = \mathbb{E}_{t} \left[ \exp \left(m_{t + 1} - f_{t} + e_{t} + r_{t}^{*}\right) \right],
$$

which implies

$$
- (1 - \beta) \lambda_{t} = r_{t} - \left(r_{t}^{*} - f_{t} + e_{t}\right) = x_{t}^{\text{Tr ea s}}.
$$

As such, we can express the convenience yield levels  $\lambda_t^*$  and  $\lambda_t$  as functions of the Treasury basis  $x_t^{Treas}$ :

$$
\lambda_{t}^{*} = - \frac{1}{1 - \beta^{*}} x_{t}^{\text{Tr ea s}},
$$

$$
\lambda_{t} = - \frac{1}{1 - \beta} x_{t}^{T r e a s}.
$$

If  $\beta \neq \beta^{*}$ , the foreign and home households' convenience yields on the dollar risk-free bond would be different.

To restore the actual convenience yield level, we need to estimate the scaling coefficients  $\beta$  and  $\beta^{*}$ . Jiang, Krishnamurthy, and Lustig [2021a] provide an estimate based on the implied exchange rate dynamics derived in Section 4.B. Assuming that currency risk premium does not respond to a convenience yield shock, they find that the  $\beta^{*}$  coefficient has to be around 0.9 to match the variations in the Treasury basis with those in the observed exchange rate movement. This parameter estimate means that  $90\%$  of the convenience yield is about the dollar, and  $10\%$  is about the U.S. Treasury. In other words,

the synthetic dollar position contains  $90\%$  of the convenience yield on the dollar risk-free bond, and the Treasury basis only measures  $1 - 0.9 = 10\%$  of the convenience yield. To recover the convenience yield level, we need to lever up the observed Treasury basis by 10 times. As the Treasury basis is on average  $-20$  basis points per annum in the sample, the implied convenience yield has to be  $2\%$  per annum on average, which is much greater than any near-arbitrage interest rate spreads.

# 4.C.1 Treasury CIP vs. Libor CIP

This argument also helps us understand the Libor basis, which is the spread between the dollar Libor rate and the synthetic dollar rate based on the foreign Libor rate and the currency forward:

$$
x_{t}^{\text{Li bo r}} \stackrel {{\text{de f}}} {{=}} \operatorname{li bo r}_{t} - \left(\operatorname{li bo r}_{t}^{*} - f_{t} + e_{t}\right).
$$

Unlike the Treasury basis, the Libor basis was very close to zero before the Global Financial Crisis, and widened afterwards [Du, Tepper, and Verdelhan, 2018b]. This pattern suggests that the dollar Libor and the synthetic position based on the foreign Libor and the currency forward have a similar level of convenience yields before the crisis, i.e.,

$$
\begin{array}{l} \exp (- \beta^{*} \lambda_{t}^{*}) = \mathbb{E}_{t} \left[ \exp (m_{t + 1}^{*} + \Delta e_{t + 1} - l i b o r_{t}) \right], \\ = \mathbb{E}_{t} \left[ \exp \left(m_{t + 1}^{*} + \Delta e_{t + 1} - f_{t} + e_{t} + l i b o r_{t}^{*}\right) \right]. \\ \end{array}
$$

This is not a coincidence if there are investment banks who are indifferent between the two positions and actively arbitrage any spread between the Libor market and the currency forward market. As such, both the dollar Libor and the synthetic dollar bond earn the same, non-zero convenience yield  $\beta^{*}\lambda_{t}^{*}$ , so that their spread, i.e., the Libor basis  $x_{t}^{Libor}$ , is zero.

After the crisis, likely due to regulatory constraints, the dollar Libor now contains a higher level of convenience yield, and banks face higher costs to arbitrage this spread.2 As a result, the dollar Libor has a higher level of convenience yield than the synthetic dollar bond, leading to a negative Libor basis:

$$
\exp (- \gamma^{*} \lambda_{t}^{*}) = \mathbb{E}_{t} \left[ \exp (m_{t + 1}^{*} + \Delta e_{t + 1} - l i b o r_{t}) \right],
$$

$$
\exp \left(- \beta^{*} \lambda_{t}^{*}\right) = \mathbb{E}_{t} \left[ \exp \left(m_{t + 1}^{*} + \Delta e_{t + 1} - f_{t} + e_{t} + l i b o r_{t}^{*}\right) \right];
$$

with  $\gamma^{*} > \beta^{*}$

$$
x_{t}^{\text{Li bo r}} \stackrel {\text{de f}} {=} \operatorname{li bo r}_{t} - \left(\operatorname{li bo r}_{t}^{*} - f_{t} + e_{t}\right) = - \left(\gamma^{*} - \beta^{*}\right) \lambda_{t}^{*} <   0.
$$

There is a debate about whether the post-crisis regulations distort the interest rate market or the currency forward market [Augustin, Chernov, Schmid, and Song, 2020].

Finally, if the same marginal investors trade in the Libor market and the Treasury market, then, we should expect that the Treasury basis and the Libor basis are correlated with each other, with

$$
x_{t}^{T r e a s} = - (1 - \beta^{*}) \lambda_{t}^{*},
$$

$$
x_{t}^{\text{Li bo r}} = - \left(\gamma^{*} - \beta^{*}\right) \lambda_{t}^{*}.
$$

The same argument can be applied to other types of interest rate spreads. The key point is that, when both interest rates contain certain amount of convenience yields, the spread only measures a fraction of the convenience yields. It is useful to think about these bonds as containing different shades of dollarness.

# 4.D Connecting the Short Term with the Long Term

The convenience yields accrue to bonds that are safe and liquid, which is why we begin our analysis with one-period Treasury bill. In this section, we broaden our perspective by considering how the convenience yield on the short-term bond also affects the pricing of the long-term bond. To do so, we first focus on the domestic households' perspective and understand how the convenience yields affect the long-term bond prices. Then, we study how the home and foreign households trade the long-term bonds with each other and understand how the convenience yields and bond risk premia jointly determine the exchange rate level.

# 4.D.1 The Term Structure of Bond Yields with Convenience Yields

We start with the model developed in Section 4.A, and additionally allow the households to trade long-term bonds. Specifically, let  $q_{t}(h)$  denote the book value of the home households' holding of the bond with maturity  $h$  and let  $p_{t}(h)$  denote the price of the bond with maturity  $h$ . All bonds are risk-free. We still assume that the investors derive utility only from holding the 1-period bond:

$$
\mathbb{E}_{0} \left[ \sum_{t = 0}^{\infty} \delta^{t} (u (c_{t}) + v (q_{t} (1) p_{t} (1); \theta_{t})) \right].
$$

However, because the long-term Treasury bonds will eventually become short-term bonds as they mature, if the investors do not differentiate between on-the-run and off-the-run bonds, then, the convenience yield on the short-term bonds will also affect the pricing of the long-term bonds.

Similar to the model in Section 4.A, we can derive the households'

Euler equation for holding the 1-period bond as

$$
\exp (- \lambda_{t}) \stackrel {\mathrm{de f}} {=} 1 - \frac{v^{\prime} (q_{t} (1) ; \theta_{t})}{u^{\prime} (c_{t})} = \mathbb{E}_{t} \left[ \exp (m_{t, t + 1}) \frac{1}{p_{t} (1)} \right],
$$

where the convenience yield  $\lambda_{t}$  reflects the marginal utility derived from the convenience benefits of the 1-period bond. Rearranging terms, we obtain

$$
p_{t} (1) = \mathbb{E}_{t} \left[ \exp \left(m_{t, t + 1}\right) \right] \exp (\lambda_{t}).
$$

Now, consider the 2-period bond. We can write the households' Euler equation for this bond as

$$
p_{t} (2) = \mathbb{E}_{t} \left[ \exp (m_{t, t + 1}) p_{t + 1} (1) \right],
$$

which does not contain a convenience yield term since the 2-period bond does not offer any immediate convenience benefits. However, if we substitute the 1-period bond price into the equation, we obtain

$$
p_{t} (2) = \mathbb{E}_{t} \left[ \exp \left(m_{t, t + 1} + \lambda_{t + 1}\right) \mathbb{E}_{t + 1} \left[ \exp \left(m_{t + 1, t + 2}\right) \right] \right],
$$

which implies that the bond price today reflects the expectation of the bond's convenience yield when it becomes 1-period bond in the next period. In this way, the convenience yield that only accrues to the short-term bond can affect the entire term structure of bond prices.

Moreover, the next period's convenience yield  $\lambda_{t+1}$  is priced by the SDF  $m_{t,t+1}$  in the sense that their covariance also matters. We can rewrite the 2-period bond price as

$$
\begin{array}{l} p_{t} (2) = \mathbb{E}_{t} \left[ \exp \left(m_{t, t + 1}\right) \mathbb{E}_{t + 1} \left[ \exp \left(m_{t + 1, t + 2}\right) \right] \right] \mathbb{E}_{t} \left[ \exp \left(\lambda_{t + 1}\right) \right] \\ + cov_{t} \left(\exp \left(m_{t, t + 1}\right) \mathbb{E}_{t + 1} \left[ \exp \left(m_{t + 1, t + 2}\right) \right], \exp \left(\lambda_{t + 1}\right)\right). \\ \end{array}
$$

On the right-hand side, the first term shows that a higher expected convenience yield increases the price of the 2-period bond today, and the second term shows that a more counter-cyclical convenience yield can additionally raise the bond price by lowering its risk premium.

We can iteratively derive the valuation of the longer-term bonds from that of the nearer-term bonds. Jiang and Richmond [2022] provide a general affine expression for the bond price in this setting under the additional assumption that the SDF volatility and the convenience yield jointly follow an affine process. As we expected, the 1-period bond's convenience yield and its cyclical property affects not only the long-term bonds' expected service flows and prices, but also their cyclical properties and hence risk premia.

More realistically, we can additionally assume that the investors derive utility from holding long-term bonds as well. In this case, we

can generalize the function  $v$  as

$$
\mathbb{E}_{0} \left[ \sum_{t = 0}^{\infty} \delta^{t} (u (c_{t}) + v (\sum_{h = 1}^{H} w_{t} (h) q_{t} (h) p_{t} (h); \theta_{t})) \right],
$$

where the weight  $w_{t}(h)$  describes the relative amount of convenience generated by the bond with maturity  $h$ . For example, if the nonpecuniary utility is generated by the bonds' plegeability in the repo market, then,  $w_{t}(h)$  describes the different hair cuts on the bonds with different maturities.

In this more general setting, the long-term bonds price in both their own convenience yields in the current period and the expected convenience yields of the shorter-term bonds in the future. Interestingly, after the 2008 Global Financial Crisis, the long-term Treasury bonds are traded at a discount relative to other safe assets, reflecting an "inconvenience yield" [Duffie, 2020, He, Nagel, and Song, 2022, Du, Hébert, and Li, 2023]. This negative yield spread can be understood as a negative marginal utility investors derive from holding the long-term Treasury bonds, or, equivalently, a positive balance sheet cost. Moreover, Joslin, Li, and Song [2021] measures the term structure of the convenience yield using the spread between Treasury bonds and Refcorp bonds.

# 4.D.2 Long-Run UIIP Condition

Next, we consider both home and foreign households' perspectives. When there is a convenience yield on the one-period bond and when markets are incomplete, the equilibrium exchange rate movement deviates from complete-market formula we derived in Proposition 4.3, i.e.,

$$
\Delta e_{t + 1}^{c m} = m_{t + 1} - m_{t + 1}^{*}.
$$

As such, we can express the exchange rate movement as

$$
\Delta e_{t + 1} = m_{t + 1} - m_{t + 1}^{*} + \eta_{t + 1},
$$

where the new term  $\eta_{t + 1}$  introduces a wedge in the exchange rate expression. We will discuss this term in greater detail in the next section. For now, it is sufficient to note that this term could be correlated with the convenience yield  $\lambda_t^*$ .

We can express this equation iteratively from period 0:

$$
e_{t} - e_{0} = \sum_{k = 1}^{t} \left(m_{k} - m_{k}^{*}\right) + \sum_{k = 1}^{t} \eta_{k}.
$$

Jiang, Krishnamurthy, Lustig, and Sun [2021b] show that, if the cumulative wedge  $\sum_{k=1}^{t} \eta_k$  is a random walk, the cumulative SDF differential  $\sum_{k=1}^{t} (m_k - m_k^*)$  needs to have a permanent component that

exactly offsets the random walk component in the cumulative wedge in order to guarantee exchange rate stationarity. This means that the home and foreign SDFs will not share the same permanent component. Instead, they have to diverge from each other for the exchange rate to remain stationary.

As a result, the long-term bond yields, which are closely related to the long-run properties of the home and foreign SDFs, no longer converge between the two countries:

$$
\lim_{h \to \infty} \left(r_{t} (h) - r_{t}^{*} (h)\right) \neq 0.
$$

Then, the long-run UIP condition (3.21) that we derived in Proposition 3.10 under the assumption of identical permanent SDF components fails:

$$
e_{t} - \bar {e} \neq \lim_{h \rightarrow \infty} h \left(r_{t} (h) - r_{t}^{*} (h)\right).
$$

In fact, the left-hand side is finite whereas the right-hand side can be infinite in this case. The convenience yield also introduces a wedge in this long-run UIP condition. A full characterization of this wedge remains an open question.

# 4.E Discussions (TODO)

# 5


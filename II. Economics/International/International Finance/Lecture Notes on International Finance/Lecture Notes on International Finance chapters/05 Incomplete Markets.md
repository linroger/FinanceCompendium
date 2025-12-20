---
aliases: null
tags: null
key_concepts: null
parent_directory: null
cssclasses: academia
title: Incomplete Markets
linter-yaml-title-alias: Incomplete Markets
primary_tags:
- markets incomplete countries
- rate dynamics general absence
- yields enrich effects market
secondary_tags:
- market incompleteness exchange rate
- incomplete market wedge eq
- effects market incompleteness exchange
- market incompleteness individual level
- sdf incomplete markets multiple
- incomplete markets vs convenience
tags_extracted: '2025-12-18T01:44:35.430112'
---

# Incomplete Markets

# Summary

- Incomplete markets also lead to a wedge between the exchange rate movement and the SDF differential:

$$
\Delta e _ {t + 1} = m _ {t + 1} - m _ {t + 1} ^ {*} + \eta_ {t + 1}.
$$

- This wedge affects the exchange rate volatility, cyclicality, and currency risk premium.  
- This wedge also gives rise to international spill-over across countries.  
- Market incompleteness is a precondition for convenience yields to impact the exchange rate dynamics, and convenience yields enrich the effects of market incompleteness on the exchange rate dynamics.

In general, the absence of complete spanning in the asset market means that the home and foreign households do not equate their SDFs state by state. So the exchange rate expression (1.16) in the complete-market case is violated:

$$
\Delta e _ {t + 1} \neq m _ {t + 1} - m _ {t + 1} ^ {*}.
$$

Backus, Foresi, and Telmer [2001] introduces a wedge  $\eta$  to describe this violation:

$$
\Delta e _ {t + 1} = m _ {t + 1} - m _ {t + 1} ^ {*} + \eta_ {t + 1}. \tag {5.1}
$$

In this section, we first develop a full general equilibrium model with incomplete markets that gives rise to the above wedge  $\eta_{t+1}$ . We then take a different, no-arbitrage approach that focuses only on the Euler equations. While incomplete spanning leads to deviations from the complete-market characterization of the exchange rate dynamics (1.16), it still respects the Euler equations for the assets that are tradable by both countries' households. For example, if home and foreign

risk-free bonds are tradable, the original Euler equation (1.6) holds, i.e.,

$$
1 = \mathbb {E} _ {t} [ \exp (m _ {t + 1} + r _ {t}) ],
$$

which does not require us to introduce additional Euler equation wedges as we did in our discussion of convenience yields in Chapter 4, i.e.,

$$
\exp (- \lambda_ {t}) = \mathbb {E} _ {t} \left[ \exp \left(m _ {t + 1} + r _ {t}\right) \right].
$$

In this sense, the incomplete-market wedge  $\eta$  in Eq. (5.1) is conceptually distinct from the Euler equation wedge  $\lambda_{t}$ . We will further develop these model ingredients throughout this section.

Conceptually, there are two types of market incompleteness, one at the individual level and one at the country level. Markets can be incomplete at the individual level, which has been studied in a large macro literature starting from Aiyagari-Bewley-Huggett. Markets can also be incomplete between countries, leading to incomplete risk-sharing at the country level. In this section, we will focus on the latter form of market incompleteness. We allow the individual-level risk to be fully shared within countries, and model the representative household in each country. At the same time, the representative households in different countries cannot trade the full set of contingent claims to share risks internationally, leading to richer exchange rate and capital flow dynamics.

# 5.A An Illustrative Model

Again we begin with a fully specified model. This is particularly useful in the context of incomplete markets, as the incomplete-market wedge  $\eta_{t + 1}$  in Eq. (5.1) is particularly difficult to conceptualize in the absence of such a model.

As the discussion of incomplete-market exchange rate dynamics is necessarily abstract, we begin by presenting a concrete general equilibrium model with incomplete markets. This model is a variant of Pavlova and Rigobon [2012], with the key difference being that Pavlova and Rigobon [2012] has one international bond whose payoff is a weighted average of home and foreign goods, whereas our model has a home bond and a foreign bond that we considered in the previous sections.

# 5.A.1 The Economic Setting

For tractability, we now use some continuous-time math. There is a finite horizon  $T$ . The home and foreign endowment processes are

given by

$$
\begin{array}{l} d y _ {t} = \mu_ {v} y _ {t} d t + \sigma_ {y} y _ {t} d Z _ {t} ^ {y}, \\ d y _ {t} ^ {*} = \mu_ {y ^ {*}} y _ {t} ^ {*} d t + \sigma_ {y ^ {*}} y _ {t} ^ {*} d Z _ {t} ^ {y ^ {*}}. \\ \end{array}
$$

The home households' utility is given by

$$
\mathbb {E} \left[ \int_ {0} ^ {T} \exp (- \delta t) u (c _ {t}) d t \right],
$$

where  $u(c_{t}) = \gamma_{t}\log (c_{t})$  and the aggregate consumption is again a Cobb-Douglas aggregation of the home and foreign goods:  $c_{t} = (c_{H,t})^{\alpha}(c_{F,t})^{(1 - \alpha)}$ . Relative to the baseline model, here we additionally have a stochastic term  $\gamma_{t}$  which captures demand shocks. We assume that  $\gamma_{t}$  follows

$$
d \gamma_ {t} = 0 d t + \gamma_ {t} \omega d Z _ {t} ^ {\gamma},
$$

which guarantees that  $\gamma_{t}$  is a strictly positive adapted stochastic process and a martingale.

The foreign households' utility is given by

$$
\mathbb {E} \left[ \int_ {0} ^ {T} \exp (- \delta t) u ^ {*} (c _ {t} ^ {*}) d t \right],
$$

where  $u^{*}(c_{t}^{*}) = \gamma^{*}\log (c_{t}^{*})$  and  $c_{t}^{*} = (c_{F,t}^{*})^{\alpha}(c_{H,t}^{*})^{(1 - \alpha)}$ . We assume that there are no time-varying demand shocks for foreign household, i.e.  $\gamma^{*}$  is constant.

More formally, we fix a probability space  $(\Omega, \mathcal{F}, P)$  and a given filtration  $\mathbb{F} = \{\mathcal{F}_0 : t \geq 0\}$  satisfying the usual conditions. We assume that all stochastic processes are adapted to this filtration. Specifically, uncertainty is represented by a standard three-dimensional Brownian motion  $Z_t = [Z_t^y, Z_t^{y^*}, Z_t^\gamma]$ .

The only tradable assets are the two countries' risk-free bonds, which are denominated in the local consumption bundles and have interest rates  $r_t$  and  $r_t^*$ , respectively. The real exchange rate  $\exp(e_t)$  is the conversion ratio between the home and foreign consumption bundles. 1 unit of the home bundle is worth  $\exp(e_t)$  units of the foreign bundle. Furthermore, assume that the log exchange rate follows

$$
d e _ {t} = \kappa_ {t} d t + \sigma_ {t} d Z _ {t},
$$

where  $\sigma_{t} = [\sigma_{1,t},\sigma_{2,t},\sigma_{3,t}]$  is a 1 by 3 vector. By Ito's lemma, we have

$$
\begin{array}{l} d \exp (e _ {t}) = \exp (e _ {t}) \left[ \kappa_ {t} + \frac {1}{2} \sigma_ {t} \sigma_ {t} ^ {\prime} \right] d t + \exp (e _ {t}) \sigma_ {t} d Z _ {t}, \\ d \exp (- e _ {t}) = \exp (- e _ {t}) \left[ - \kappa_ {t} + \frac {1}{2} \sigma_ {t} \sigma_ {t} ^ {\prime} \right] d t - \exp (- e _ {t}) \sigma_ {t} d Z _ {t}. \\ \end{array}
$$

From the perspective of the home household, the instantaneous return on foreign bonds is:

$$
\left[ r _ {t} ^ {*} - \kappa_ {t} + \frac {1}{2} \sigma_ {t} \sigma_ {t} ^ {\prime} \right] d t - \sigma_ {t} d Z _ {t}.
$$

In addition, from the viewpoint of the foreign household, the instantaneous return on home bonds is:

$$
\left[ r _ {t} + \kappa_ {t} + \frac {1}{2} \sigma_ {t} \sigma_ {t} ^ {\prime} \right] d t + \sigma_ {t} d Z _ {t}.
$$

The derivation of the within-period solution is identical to Section 1.A.3 in the baseline model. Let  $p_t$  denote the price of the home goods in the numérique of the home consumption bundle, and let  $p_t^*$  denote the price of the foreign goods in the numérique of the foreign consumption bundle. As a special case of the baseline model, the home households' within-period allocation satisfies

$$
c _ {H, t} = \frac {\alpha}{p _ {t}} c _ {t}, \quad c _ {F, t} = \frac {(1 - \alpha)}{p _ {t} ^ {*} \exp (- e _ {t})} c _ {t},
$$

and the terms of trade are simply the ratio of prices between home and foreign goods, which is related to the real exchange rate by  $e_t = (2\alpha - 1) \text{tot}_t$ .

Let  $w_{t}$  denote the wealth of the home households in the home numérique. The dynamic budget constraint of the home households is

$$
d w _ {t} = w _ {t} \left[ r _ {t} + x _ {t} \left(r _ {t} ^ {*} - \kappa_ {t} + \frac {1}{2} \sigma_ {t} \sigma_ {t} ^ {\prime} - r _ {t}\right) \right] d t - w _ {t} x _ {t} \sigma_ {t} d Z _ {t} + p _ {t} y _ {t} d t - \left[ p _ {t} c _ {H, t} + p _ {t} ^ {*} \exp (- e _ {t}) c _ {F, t} \right] d t,
$$

where  $x_{t}$  is the fraction of wealth that is invested in foreign bonds.

Similarly, let  $w_{t}^{*}$  denote the wealth of the foreign households in the foreign numérique. The dynamic budget constraint of the foreign households is

$$
d w _ {t} ^ {*} = w _ {t} ^ {*} \left[ r _ {t} ^ {*} + x _ {t} ^ {*} \left(r _ {t} + \kappa_ {t} + \frac {1}{2} \sigma_ {t} \sigma_ {t} ^ {\prime} - r _ {t} ^ {*}\right) \right] d t + w _ {t} ^ {*} x _ {t} ^ {*} \sigma_ {t} d Z _ {t} + p _ {t} ^ {*} y _ {t} ^ {*} d t - \left[ p _ {t} \exp (e _ {t}) c _ {H, t} ^ {*} + p _ {t} ^ {*} c _ {F, t} ^ {*} \right] d t,
$$

where  $x_{t}^{*}$  is the fraction of wealth that is invested in home bonds.

To simplify the derivation, let  $\tilde{w}_t^* \stackrel{\mathrm{def}}{=} w_t^* \exp(-e_t)$  denote the wealth of the foreign households in the home numétaire. Then, we can express foreign household's dynamic budget constraint in the home numétaire as

$$
d \tilde {w} _ {t} ^ {*} = \tilde {w} _ {t} ^ {*} \left[ r _ {t} + (1 - x _ {t} ^ {*}) \left(r _ {t} ^ {*} - \kappa_ {t} + \frac {1}{2} \sigma_ {t} \sigma_ {t} ^ {\prime} - r _ {t}\right) \right] d t - \tilde {w} _ {t} ^ {*} (1 - x _ {t} ^ {*}) \sigma_ {t} d Z _ {t} + p _ {t} ^ {*} \exp (- e _ {t}) y _ {t} ^ {*} d t - \left[ p _ {t} c _ {H, t} ^ {*} + p _ {t} ^ {*} \exp (- e _ {t}) c _ {F, t} ^ {*} \right] d t.
$$

# 5.A.2 Macro Synthesis

There are 3 exogenous processes

$$
(y _ {t}, y _ {t} ^ {*}, \gamma_ {t}) _ {t = 0} ^ {t}
$$

and 15 endogenous processes:

$$
(c _ {t}, c _ {H, t}, c _ {F, t}, w _ {t}, x _ {t}, p _ {t}, c _ {t} ^ {*}, c _ {H, t} ^ {*}, c _ {F, t} ^ {*}, w _ {t} ^ {*}, x _ {t} ^ {*}, p _ {t} ^ {*}, r _ {t}, r _ {t} ^ {*}, e _ {t}) _ {t = 0} ^ {T},
$$

The model implies the following 15 equations in each period  $t$ , which are very similar to the equilibrium conditions in the baseline model listed in Section 1.A.6. They include 2 consumption aggregation equations,

$$
c _ {t} = (c _ {H, t}) ^ {\alpha} (c _ {F, t}) ^ {1 - \alpha},
$$

$$
c _ {t} ^ {*} = (c _ {F, t} ^ {*}) ^ {\alpha} (c _ {H, t} ^ {*}) ^ {1 - \alpha},
$$

4 household budget constraints,

$$
d w _ {t} = w _ {t} \left[ r _ {t} + x _ {t} \left(r _ {t} ^ {*} - \kappa_ {t} + \frac {1}{2} \sigma_ {t} \sigma_ {t} ^ {\prime} - r _ {t}\right) \right] d t - w _ {t} x _ {t} \sigma_ {t} d Z _ {t} + p _ {t} y _ {t} d t - \left[ p _ {t} c _ {H, t} + p _ {t} ^ {*} \exp (- e _ {t}) c _ {F, t} \right] d t,
$$

$$
c _ {t} = p _ {t} c _ {H, t} + p _ {t} ^ {*} c _ {F, t} \exp (- e _ {t}),
$$

$$
d w _ {t} ^ {*} = w _ {t} ^ {*} \left[ r _ {t} ^ {*} + x _ {t} ^ {*} \left(r _ {t} + \kappa_ {t} + \frac {1}{2} \sigma_ {t} \sigma_ {t} ^ {\prime} - r _ {t} ^ {*}\right) \right] d t + w _ {t} ^ {*} x _ {t} ^ {*} \sigma_ {t} d Z _ {t} + p _ {t} ^ {*} y _ {t} ^ {*} d t - \left[ p _ {t} \exp (e _ {t}) c _ {H, t} ^ {*} + p _ {t} ^ {*} c _ {F, t} ^ {*} \right] d t,
$$

$$
c _ {t} ^ {*} = p _ {t} c _ {H, t} ^ {*} \exp (e _ {t}) + p _ {t} ^ {*} c _ {F, t} ^ {*},
$$

2 equations that describe the households' within-period consumption choices,

$$
\frac {p _ {t}}{p _ {t} ^ {*} \exp (- e _ {t})} = \frac {\alpha}{1 - \alpha} \frac {c _ {F , t}}{c _ {H , t}} = \frac {1 - \alpha}{\alpha} \frac {c _ {F , t} ^ {*}}{c _ {H , t} ^ {*}},
$$

2 goods market clearing conditions,

$$
y _ {t} = c _ {H, t} + c _ {H, t} ^ {*},
$$

$$
y _ {t} ^ {*} = c _ {F, t} + c _ {F, t} ^ {*},
$$

1 bond market clearing condition,

$$
w _ {t} x _ {t} = w _ {t} ^ {*} \exp (- e _ {t}) x _ {t} ^ {*},
$$

and 4 Euler equations,

$$
0 = \mathbb {E} _ {t} \left[ d \exp \left(m _ {t} + \int_ {0} ^ {t} r _ {u}\right) \right],
$$

$$
0 = \mathbb {E} _ {t} \left[ d \exp \left(m _ {t} - e _ {t} + \int_ {0} ^ {t} r _ {u} ^ {*}\right) \right],
$$

$$
0 = \mathbb {E} _ {t} \left[ d \exp \left(m _ {t} ^ {*} + \int_ {0} ^ {t} r _ {u} ^ {*}\right) \right],
$$

$$
0 = \mathbb {E} _ {t} \left[ d \exp \left(m _ {t} ^ {*} + e _ {t} + \int_ {0} ^ {t} r _ {u}\right) \right],
$$

where the consumption-based SDFs are defined as

$$
\exp (m _ {t}) \stackrel {\text {d e f}} {=} \exp (- \delta t) \frac {\gamma_ {t} c _ {0}}{\gamma_ {0} c _ {t}},
$$

$$
\exp \left(m _ {t} ^ {*}\right) \stackrel {\text {d e f}} {=} \exp \left(- \delta t\right) \frac {c _ {0} ^ {*}}{c _ {t} ^ {*}}.
$$

# 5.A.3 Portfolio Choices

The home household's portfolio choice problem is

$$
\max  _ {c _ {t}, x _ {t}} \mathbb {E} \left[ \int_ {0} ^ {T} \exp (- \delta t) \gamma_ {t} \log c _ {t} d t \right]
$$

$$
\mathrm {s . t .} d w _ {t} = w _ {t} \left[ r _ {t} + x _ {t} \left(r _ {t} ^ {*} - \kappa_ {t} + \frac {1}{2} \sigma_ {t} \sigma_ {t} ^ {\prime} - r _ {t}\right) \right] d t + (p _ {t} y _ {t} - c _ {t}) d t - w _ {t} x _ {t} \sigma_ {t} d Z _ {t}.
$$

Similarly, noting that the log preference allows separation between the consumption choice and the numétaire, i.e.,

$$
\log c _ {t} ^ {*} = \log \tilde {c} _ {t} ^ {*} + e _ {t},
$$

where the exchange rate  $e_t$  is unaffected by the decision of the competitive households, we can express foreign household's portfolio choice problem as

$$
\max _ {\tilde {c} _ {t} ^ {*}, x _ {t} ^ {*}} \mathbb {E} \left[ \int_ {0} ^ {T} \exp (- \delta t) \gamma^ {*} \log \tilde {c} _ {t} ^ {*} d t \right]
$$

$$
\mathrm {s . t .} d \tilde {w} _ {t} ^ {*} = \tilde {w} _ {t} ^ {*} \left[ r _ {t} + (1 - x _ {t} ^ {*}) \left(r _ {t} ^ {*} - \kappa_ {t} + \frac {1}{2} \sigma_ {t} \sigma_ {t} ^ {\prime} - r _ {t}\right) \right] d t + (p _ {t} ^ {*} \exp (- e _ {t}) y _ {t} ^ {*} - \tilde {c} _ {t} ^ {*}) d t - \tilde {w} _ {t} ^ {*} (1 - x _ {t} ^ {*}) \sigma_ {t} d Z _ {t}.
$$

In this way, under the log preference, the optimization problems are formally equivalent to a familiar single-good consumption-investment problem [Pavlova and Rigobon, 2012].

Next, to deal with the market incompleteness, we follow He and Pearson [1991] to convert the above home household's dynamic portfolio choice problem to a static variational problem:

$$
\max  _ {c _ {t}} \mathbb {E} \left[ \int_ {0} ^ {T} \exp (- \delta t) \gamma_ {t} \log c _ {t} d t \right] \tag {5.2}
$$

$$
\begin{array}{r l} \text {s . t .} & \mathbb {E} \left[ \int_ {0} ^ {T} \exp (m _ {\nu , t}) (c _ {t} - p _ {t} y _ {t}) d t \right] \leq W _ {0}, \end{array}
$$

where  $\exp(m_{\nu,t})$  denotes an appropriate home SDF. In incomplete markets, multiple SDFs are consistent with no arbitrage, giving rise to an infinite number of the static budget constraint. To characterize this family of SDFs, let  $\lambda_t$  denote the home country market price of risk,

$$
\lambda_ {t} = \frac {- \sigma_ {t} ^ {\prime}}{| | \sigma_ {t} | | ^ {2}} \left(r _ {t} ^ {*} - \kappa_ {t} + \frac {1}{2} \sigma_ {t} \sigma_ {t} ^ {\prime} - r _ {t}\right),
$$

which is a 3 by 1 vector. Then, the set of home SDFs can be represented as

$$
d \exp (m _ {\nu , t}) = - r _ {t} \exp (m _ {\nu , t}) d t - \left(\lambda_ {t} + \nu_ {t}\right) ^ {\prime} \exp (m _ {\nu , t}) d Z _ {t},
$$

where  $\nu_{t} \in \mathbb{R}^{3}$  satisfies  $\sigma_{t}\nu_{t} = 0$  for any  $t \in [0,T]$  and  $\int_0^T ||\nu_t||^2 dt < \infty$ .

It is worth noting that this family of SDFs correctly price the home and foreign bonds:

$$
\mathcal {A} \left[ \exp \left(m _ {\nu , t} + \int_ {0} ^ {t} r _ {t} d t\right) \right] = 0,
$$

$$
\mathcal {A} \left[ \exp \left(m _ {\nu , t} - e _ {t} + \int_ {0} ^ {t} r _ {t} ^ {*} d t\right) \right] = 0,
$$

where  $\mathcal{A}[w_t]$  is the infinitesimal generator of the stochastic process  $w_t$ .

When we have three non-redundant risky assets, the markets are complete, and the volatility matrix  $\sigma_t$  is a non-degenerate square matrix. In this case, the equation  $\sigma_t\nu_t = 0$  only has one solution:  $\nu_t = 0$ . In contrast, when the markets are incomplete, the volatility matrix  $\sigma_t$  has fewer rows than the number of uncertainty shocks, and many  $\nu_t$  can satisfy  $\sigma_t\nu_t = 0$ .

Similarly, for foreign households, the static problem is

$$
\max  _ {\tilde {c} _ {t} ^ {*}} \mathbb {E} \left[ \int_ {0} ^ {T} \exp (- \delta t) \gamma^ {*} \log \tilde {c} _ {t} ^ {*} d t \right] \tag {5.3}
$$

$$
\begin{array}{l l} \text {s . t .} & \mathbb {E} \left[ \int_ {0} ^ {T} \exp (m _ {\tilde {\nu}, t}) (\tilde {c} _ {t} ^ {*} - p _ {t} ^ {*} \exp (- e _ {t}) y _ {t} ^ {*}) d t \right] \leq \tilde {W} _ {0} ^ {*}, \end{array}
$$

where

$$
d \exp (m _ {\tilde {v}, t}) = - r _ {t} \exp (m _ {\tilde {v}, t}) d t - \left(\lambda_ {t} + \tilde {v} _ {t}\right) ^ {\prime} \exp (m _ {\tilde {v}, t}) d Z _ {t}.
$$

He and Pearson [1991] prove that there exists a unique individual-specific  $\nu_{t}$ , which we denote by  $\nu_{H,t}$  for home households, that minimizes their maximum expected utility in Eq. (5.2). This  $\nu_{H,t}$  is the one that makes the constraint bind. Pavlova and Rigobon [2012] refer to the home country SDF related to this  $\nu_{H,t}$  as the personalized home country SDF of the home households. Similarly, let the home country SDF related to  $\tilde{\nu}_{F,t}$  denote the personalized home country SDF of the foreign households, which is also in the unit of the home numérique.

It is no coincidence that the home and foreign countries' personalized SDFs are exactly their households' consumption-based SDFs, as we summarize in the following lemma.

Lemma 5.1. (1) The consumption-based SDF of the home households is  $\exp(-\delta t)\frac{\gamma_t c_0}{\gamma_0 c_t}$ , and it is equal to the personalized home country SDF of the home households,  $\exp(m_{\nu_H, t})$ .

(2) The consumption-based SDF of the foreign households is  $\exp (-\delta t)\frac{c_0^*}{c_t^*}$ , and it is equal to the personalized foreign country SDF of the foreign households,  $\exp (m_{\nu_F^*,t}^*)$ .

The proof is presented in Appendix A.14.

We report the portfolios of both home and foreign consumers in the following proposition.

Proposition 5.1. (1) The fraction of wealth  $x_{t}$  invested in the foreign bonds by the home households is given by

$$
x _ {t} = - \frac {w _ {t} + s _ {t}}{w _ {t}} \left(\frac {\omega \sigma_ {3 , t}}{\| \sigma_ {t} \| ^ {2}} - \frac {\left(r _ {t} ^ {*} - \kappa_ {t} + \frac {1}{2} \sigma_ {t} \sigma_ {t} ^ {\prime} - r _ {t}\right)}{\| \sigma_ {t} \| ^ {2}}\right) + \frac {s _ {t}}{w _ {t}} \frac {\sigma_ {t} ^ {s} \sigma_ {t} ^ {\prime}}{\| \sigma_ {t} \| ^ {2}}, \tag {5.4}
$$

and the fraction of wealth  $x_{t}^{*}$  invested in the home bonds by the foreign households is given by

$$
x _ {t} ^ {*} = 1 - \frac {\tilde {w} _ {t} ^ {*} + \tilde {s} _ {t} ^ {*}}{\tilde {w} _ {t} ^ {*}} \frac {\left(r _ {t} ^ {*} - \kappa_ {t} + \frac {1}{2} \sigma_ {t} \sigma_ {t} ^ {\prime} - r _ {t}\right)}{\| \sigma_ {t} \| ^ {2}} - \frac {\tilde {s} _ {t} ^ {*}}{\tilde {w} _ {t} ^ {*}} \frac {\sigma_ {t} ^ {\tilde {s} ^ {*}} \sigma_ {t} ^ {\prime}}{\| \sigma_ {t} \| ^ {2}}. \tag {5.5}
$$

(2) The processes  $\nu_{H}$  and  $\tilde{\nu}_{F}$ , which enter the specification of the home state price densities personalized for the home and foreign households respectively, are given by:

$$
\nu_ {H, t} = \left(I _ {3} - \frac {\sigma_ {t} ^ {\prime} \sigma_ {t}}{\| \sigma_ {t} \| ^ {2}}\right) \left(- \omega i _ {3} ^ {\prime} + \frac {s _ {t}}{w _ {t} + s _ {t}} (\sigma_ {t} ^ {s}) ^ {\prime}\right),
$$

$$
\tilde {v} _ {F, t} = \frac {\tilde {s} _ {t} ^ {*}}{\tilde {w} _ {t} ^ {*} + \tilde {s} _ {t} ^ {*}} \left(I _ {3} - \frac {\sigma_ {t} ^ {\prime} \sigma_ {t}}{\| \sigma_ {t} \| ^ {2}}\right) (\sigma_ {t} ^ {\tilde {s} ^ {*}}) ^ {\prime},
$$

where  $I_{3}$  is a 3-dimensional identity matrix.

The proof is presented in Appendix A.15. The first term on the right-hand side of Eq. (5.4) as is the mean-variance efficient portfolio, because it is the solution of a myopic mean-variance investor. The second term is referred to as the hedging portfolio, because, as we will see in Section 9.B, it hedges the variations in the investment opportunities. Without the demand shock  $\gamma_{t},\sigma_{3,t} = 0$ , and the hedging portfolio is zero as in the standard log cases.

# 5.A.4 Characterization of Equilibrium

An equilibrium in our economy is defined in a standard way: it is a collection of goods and asset prices that satisfy certain conditions

$$
\left(p _ {t}, p _ {t} ^ {*}, e _ {t}, r _ {t}, r _ {t} ^ {*}\right)
$$

and consumption-investment policies

$$
\left(c _ {H, t}, c _ {F, t}, c _ {H, t} ^ {*}, c _ {F, t} ^ {*}, x _ {t}, x _ {t} ^ {*}\right)
$$

such that (i) each consumer-investor maximizes their utility subject to the budget constraint, and (ii) goods and bond markets clear.

In the presence of incomplete markets, the equilibrium allocation is Pareto optimal. We need to employ a fictitious representative agent with stochastic weights [Cuoco and He, 1994], which reflect the effects of market incompleteness. This fictitious representative agent

maximizes its utility subject to the resource constraints:

$$
\begin{array}{l} \max _ {c _ {H, t}, c _ {F, t}, c _ {H, t} ^ {*}, c _ {F, t} ^ {*}} \mathbb {E} \left[ \int_ {0} ^ {T} \exp (- \delta t) (u (c _ {t}) + \pi_ {t} u ^ {*} (c _ {t} ^ {*})) d t \right] \\ \begin{array}{r l} \mathbf {s}. \mathbf {t}. & c _ {H, t} + c _ {H, t} ^ {*} = y _ {t}, c _ {F, t} + c _ {F, t} ^ {*} = y _ {t} ^ {*}, \end{array} \\ \end{array}
$$

where the Pareto weight  $\pi_t$  is stochastic. It can be shown that  $\pi_t$  is simply the ratio of the marginal utilities of either good of the two countries' households, which reflects the relative importance the planner assigns to the foreign households relative to the home households.

The social planner's optimization problem implies

$$
\begin{array}{l} c _ {H, t} = \frac {\gamma_ {t} \alpha}{\gamma_ {t} \alpha + \pi_ {t} \gamma^ {*} (1 - \alpha)} y _ {t}, \quad c _ {F, t} = \frac {\gamma_ {t} (1 - \alpha)}{\gamma_ {t} (1 - \alpha) + \pi_ {t} \gamma^ {*} \alpha} y _ {t} ^ {*}, \tag {5.6} \\ c _ {H, t} ^ {*} = \frac {\pi_ {t} \gamma^ {*} (1 - \alpha)}{\gamma_ {t} \alpha + \pi_ {t} \gamma^ {*} (1 - \alpha)} y _ {t}, c _ {F, t} ^ {*} = \frac {\pi_ {t} \gamma^ {*} \alpha}{\gamma_ {t} (1 - \alpha) + \pi_ {t} \gamma^ {*} \alpha} y _ {t} ^ {*}. \\ \end{array}
$$

The equilibrium terms of trade that arise in the competitive equilibrium is equal to the ratio of the marginal utilities of the home and foreign goods for either country:

$$
\begin{array}{l} \exp (t o t _ {t}) = \left(\frac {\partial u (c _ {H , t} , c _ {F , t})}{\partial c _ {H , t}}\right) / \left(\frac {\partial u (c _ {H , t} , c _ {F , t})}{\partial c _ {F , t}}\right) = \left(\frac {\gamma_ {t} \alpha}{c _ {H , t}}\right) / \left(\frac {\gamma_ {t} (1 - \alpha)}{c _ {F , t}}\right), \\ \exp (t o t _ {t}) = \left(\frac {\partial u ^ {*} (c _ {H , t} ^ {*} , c _ {F , t} ^ {*})}{\partial c _ {H , t} ^ {*}}\right) / \left(\frac {\partial u ^ {*} (c _ {H , t} ^ {*} , c _ {F , t} ^ {*})}{\partial c _ {F , t} ^ {*}}\right) = \left(\frac {\gamma^ {*} (1 - \alpha)}{c _ {H , t} ^ {*}}\right) / \left(\frac {\gamma^ {*} \alpha}{c _ {F , t} ^ {*}}\right). \\ \end{array}
$$

From either equation, plug in Eq. (5.6) and we have:

$$
\exp (t o t _ {t}) = \frac {\gamma_ {t} \alpha + \pi_ {t} \gamma^ {*} (1 - \alpha)}{\gamma_ {t} (1 - \alpha) + \pi_ {t} \gamma^ {*} \alpha} \frac {y _ {t} ^ {*}}{y _ {t}}.
$$

We next use the no-arbitrage valuation principle to obtain the valuation of the untraded stocks and the equilibrium wealth.

Lemma 5.2. Equilibrium home and foreign stock prices in their respective local numériaires are given by

$$
s _ {t} = \frac {1 - \exp (- \delta (T - t))}{\delta} p _ {t} y _ {t}, \quad s _ {t} ^ {*} = \frac {1 - \exp (- \delta (T - t))}{\delta} p _ {t} ^ {*} y _ {t} ^ {*},
$$

and the wealth of the countries in their local numéraires are given by:

$$
w _ {t} + s _ {t} = \frac {\gamma_ {t}}{\gamma_ {t} \alpha + \pi_ {t} \gamma^ {*} (1 - \alpha)} s _ {t}, \quad w _ {t} ^ {*} + s _ {t} ^ {*} = \frac {\pi_ {t} \gamma^ {*}}{\gamma_ {t} (1 - \alpha) + \pi_ {t} \gamma^ {*} \alpha} s _ {t} ^ {*}.
$$

The proof is presented in Appendix A.16. By Lemma 5.2, we can express the home and foreign wealth in the home numétaire as

$$
\begin{array}{l} w _ {t} + s _ {t} = \frac {\gamma_ {t}}{\gamma_ {t} \alpha + \pi_ {t} \gamma^ {*} (1 - \alpha)} \frac {1 - \exp (- \delta (T - t))}{\delta} p _ {t} y _ {t}, \\ \tilde {w} _ {t} ^ {*} + \tilde {s} _ {t} ^ {*} = \frac {\pi_ {t} \gamma^ {*}}{\gamma_ {t} (1 - \alpha) + \pi_ {t} \gamma^ {*} \alpha} \frac {1 - \exp (- \delta (T - t))}{\delta} p _ {t} ^ {*} \exp (- e _ {t}) y _ {t} ^ {*}, \\ \end{array}
$$

which yield a simple interpretation of the stochastic Pareto weight  $\pi_t$ .

Lemma 5.3. The Pareto weight is determined by the relative wealth of the two countries' households, i.e.,  $w_{t} + s_{t}$  and  $\tilde{w}_{t}^{*} + \tilde{s}_{t}^{*}$ , scaled by their discount rates  $\gamma_{t}$  and  $\gamma^{*}$ :

$$
\pi_ {t} = \frac {\tilde {w} _ {t} ^ {*} + \tilde {s} _ {t} ^ {*}}{w _ {t} + s _ {t}} \frac {\gamma_ {t}}{\gamma^ {*}}. \tag {5.7}
$$

As Eq. (5.6) shows, incomplete markets enrich the dynamics of the economy with an additional state variable  $\pi_t$ , which is determined by the wealth distribution and the discount rates. As such, path dependence naturally arises from incomplete-market models, as the wealth distribution is not easily determined by the current state variables, but rather reflects the history of the shocks to the economy.

With these results, we are now ready to characterize the equilibrium dynamics of the economy.

Proposition 5.2. (1) In an equilibrium, the stochastic weight that the fictitious social planner assigns to the Foreign country,  $\pi_t$ , has the following dynamics:

$$
d \pi_ {t} = \pi_ {t} \left(\tilde {\nu} _ {F, t} - \nu_ {H, t}\right) ^ {\prime} d Z _ {t}.
$$

If both countries' households hold their own endowment tree in period 0, we can determine  $\pi_0$  as:

$$
\pi_ {0} = \frac {\gamma_ {0}}{\gamma^ {*}}.
$$

(2) When such equilibrium exists, the log exchange rate dynamics follow

$$
d e _ {t} = \kappa_ {t} d t + \sigma_ {t} d Z _ {t},
$$

where

$$
\frac {1}{2 \alpha - 1} \kappa_ {t} = \mu_ {y ^ {*}} - \mu_ {y} + \frac {1}{2} \sigma_ {y} ^ {2} - \frac {1}{2} \sigma_ {y ^ {*}} ^ {2} - \frac {1}{2} \frac {\| \alpha \gamma_ {t} \omega i _ {3} + \gamma^ {*} (1 - \alpha) \pi_ {t} (\tilde {\nu} _ {F , t} - \nu_ {H , t}) ^ {\prime} \| ^ {2}}{(\gamma_ {t} \alpha + \pi_ {t} \gamma^ {*} (1 - \alpha)) ^ {2}} + \frac {1}{2} \frac {\| (1 - \alpha) \gamma_ {t} \omega i _ {3} + \gamma^ {*} \alpha \pi_ {t} (\tilde {\nu} _ {F , t} - \nu_ {H , t}) ^ {\prime} \| ^ {2}}{(\gamma_ {t} (1 - \alpha) + \pi_ {t} \gamma^ {*} \alpha) ^ {2}}
$$

$$
\frac {1}{2 \alpha - 1} \sigma_ {t} = - \sigma_ {y} i _ {1} + \sigma_ {y ^ {*}} i _ {2} + \frac {\alpha \gamma_ {t} \omega i _ {3} + \gamma^ {*} (1 - \alpha) \pi_ {t} (\tilde {\nu} _ {F , t} - \nu_ {H , t}) ^ {\prime}}{\gamma_ {t} \alpha + \pi_ {t} \gamma^ {*} (1 - \alpha)} - \frac {(1 - \alpha) \gamma_ {t} \omega i _ {3} + \gamma^ {*} \alpha \pi_ {t} (\tilde {\nu} _ {F , t} - \nu_ {H , t}) ^ {\prime}}{\gamma_ {t} (1 - \alpha) + \pi_ {t} \gamma^ {*} \alpha}.
$$

(3) The log home state price density based on the home household's consumption,  $m_{\nu_H,t}$ , follows

$$
d m _ {\nu_ {H}, t} = \mu_ {m, t} d t + \sigma_ {m, t} d Z _ {t},
$$

where

$$
\mu_ {m, t} = - \delta + \frac {\alpha - 1}{2 \alpha - 1} \kappa_ {t} - \mu_ {y} + \frac {1}{2} \sigma_ {y} ^ {2} - \frac {1}{2} \frac {| | \alpha \gamma_ {t} \omega i _ {3} + (1 - \alpha) \gamma^ {*} \pi_ {t} (\tilde {\nu} _ {F , t} - \nu_ {H , t}) ^ {\prime} | | ^ {2}}{(\gamma_ {t} \alpha + \pi_ {t} \gamma^ {*} (1 - \alpha)) ^ {2}},
$$

$$
\sigma_ {m, t} = \frac {\alpha - 1}{2 \alpha - 1} \sigma_ {t} - \sigma_ {y} i _ {1} + \frac {\alpha \gamma_ {t} \omega i _ {3} + (1 - \alpha) \gamma^ {*} \pi_ {t} (\tilde {\nu} _ {F , t} - \nu_ {H , t}) ^ {\prime}}{\gamma_ {t} \alpha + \pi_ {t} \gamma^ {*} (1 - \alpha)},
$$

and the log foreign state price density based on the foreign household's consumption,  $m_{\nu_F^*,t'}^*$  follows

$$
d m _ {\nu_ {F} ^ {*}, t} ^ {*} = \mu_ {m ^ {*}, t} d t + \sigma_ {m ^ {*}, t} d Z _ {t},
$$

where

$$
\begin{array}{l} \mu_ {m ^ {*}, t} = - \delta + \frac {1 - \alpha}{2 \alpha - 1} \kappa_ {t} - \mu_ {y ^ {*}} + \frac {1}{2} \sigma_ {y ^ {*}} ^ {2} + \frac {1}{2} (\| \nu_ {H, t} \| ^ {2} - \| \tilde {\nu} _ {F, t} \| ^ {2}) - \frac {1}{2} \frac {| | (1 - \alpha) \gamma_ {t} \omega i _ {3} + \alpha \gamma^ {*} \pi_ {t} (\tilde {\nu} _ {F , t} - \nu_ {H , t}) ^ {\prime} | | ^ {2}}{(\gamma_ {t} (1 - \alpha) + \pi_ {t} \gamma^ {*} \alpha) ^ {2}}, \\ \sigma_ {m ^ {*}, t} = \frac {1 - \alpha}{2 \alpha - 1} \sigma_ {t} - \sigma_ {y ^ {*}} i _ {2} - (\tilde {\nu} _ {F, t} - \nu_ {H, t}) ^ {\prime} + \frac {(1 - \alpha) \gamma_ {t} \omega i _ {3} + \alpha \gamma^ {*} \pi_ {t} (\tilde {\nu} _ {F , t} - \nu_ {H , t}) ^ {\prime}}{\gamma_ {t} (1 - \alpha) + \pi_ {t} \gamma^ {*} \alpha}. \\ \end{array}
$$

Then, we can introduce a stochastic wedge  $\eta_t$  that reconciles the log exchange rate movement with the domestic and foreign consumption-based SDFs:

$$
d e _ {t} = d m _ {\nu_ {H}, t} - d m _ {\nu_ {F} ^ {*}, t} ^ {*} + d \eta_ {t}, \tag {5.8}
$$

where

$$
d \eta_ {t} = \frac {1}{2} \left(\left\| \nu_ {H, t} \right\| ^ {2} - \left\| \tilde {\nu} _ {F, t} \right\| ^ {2}\right) d t + \left(\nu_ {H, t} - \tilde {\nu} _ {F, t}\right) ^ {\prime} d Z _ {t}.
$$

(4) We can then express the market price of risk  $\lambda_{t}$ , and the interest rates  $r_t$  and  $r_t^*$  as functions of exogenous state variables.

$$
\begin{array}{l} \lambda_ {t} = - \sigma_ {m, t} ^ {\prime} - v _ {H, t}, \\ r _ {t} = - \mu_ {m, t} - \frac {1}{2} \| \sigma_ {m, t} \| ^ {2}, \\ r _ {t} ^ {*} = - \sigma_ {t} \lambda_ {t} + \kappa_ {t} - \frac {1}{2} \sigma_ {t} \sigma_ {t} ^ {\prime} + r _ {t}. \\ \end{array}
$$

The proof is presented in Appendix A.17. This proposition solves the equilibrium exchange rate, SDF, and risk premium dynamics implicitly as functions of  $\nu_{H,t}$  and  $\tilde{\nu}_{F,t}$ , which are themselves functions of the exchange rate dynamics and wealth distribution. The central equation is (5.8), which shows that the exchange rate movement is no longer equal to the SDF differential as we saw in the complete-market model in Section 1.C. Instead, an additional wedge  $d\eta_t$  arises and gives to additional variations in the exchange rate. As such, we refer to the  $d\eta_t$  term as the incomplete-market wedge. However, this wedge is driven by the same fundamental shocks  $dZ_t$  that drive the SDF processes. In this sense, the additional exchange rate variations in incomplete-market models are not necessarily non-fundamental.

# 5.A.5 Comparison with the Complete-Market Case

When the markets are complete, the model we consider reduces to a special case of Pavlova and Rigobon [2007]. The social planner

maximizes the following objective function with a constant Pareto weight:

$$
\max  _ {c _ {H, t}, c _ {F, t}, c _ {H, t} ^ {*}, c _ {F, t} ^ {*}} \quad \mathbb {E} \left[ \int_ {0} ^ {T} \exp (- \delta t) (u (c _ {t}) + \pi u ^ {*} (c _ {t} ^ {*})) d t \right]
$$

$$
\begin{array}{c c} \text {s . t .} & c _ {H, t} + c _ {H, t} ^ {*} = y _ {t}, \quad c _ {F, t} + c _ {F, t} ^ {*} = y _ {t} ^ {*}, \end{array}
$$

which implies

$$
c _ {H, t} = \frac {\gamma_ {t} \alpha}{\gamma_ {t} \alpha + \pi \gamma^ {*} (1 - \alpha)} y _ {t}, \quad c _ {F, t} = \frac {\gamma_ {t} (1 - \alpha)}{\gamma_ {t} (1 - \alpha) + \pi \gamma^ {*} \alpha} y _ {t} ^ {*},
$$

$$
c _ {H, t} ^ {*} = \frac {\pi \gamma^ {*} (1 - \alpha)}{\gamma_ {t} \alpha + \pi \gamma^ {*} (1 - \alpha)} y _ {t}, c _ {F, t} ^ {*} = \frac {\pi \gamma^ {*} \alpha}{\gamma_ {t} (1 - \alpha) + \pi \gamma^ {*} \alpha} y _ {t} ^ {*}.
$$

The equilibrium terms of trade that arise in the competitive equilibrium is equal to the ratio of the marginal utilities of the home and foreign goods for either country:

$$
\exp (t o t _ {t} ^ {c m}) = \left(\frac {\partial u (c _ {H , t} , c _ {F , t})}{\partial c _ {H , t}}\right) / \left(\frac {\partial u (c _ {H , t} , c _ {F , t})}{\partial c _ {F , t}}\right) = \left(\frac {\gamma_ {t} \alpha}{c _ {H , t}}\right) / \left(\frac {\gamma_ {t} (1 - \alpha)}{c _ {F , t}}\right),
$$

$$
\exp (t o t _ {t} ^ {c m}) = \left(\frac {\partial u ^ {*} (c _ {H , t} ^ {*} , c _ {F , t} ^ {*})}{\partial c _ {H , t} ^ {*}}\right) / \left(\frac {\partial u ^ {*} (c _ {H , t} ^ {*} , c _ {F , t} ^ {*})}{\partial c _ {F , t} ^ {*}}\right) = \left(\frac {\gamma^ {*} (1 - \alpha)}{c _ {H , t} ^ {*}}\right) / \left(\frac {\gamma^ {*} \alpha}{c _ {F , t} ^ {*}}\right).
$$

From either equation, plugging in the consumption solutions, we have:

$$
\exp (t o t _ {t} ^ {c m}) = \frac {\gamma_ {t} \alpha + \pi \gamma^ {*} (1 - \alpha)}{\gamma_ {t} (1 - \alpha) + \pi \gamma^ {*} \alpha} \frac {y _ {t} ^ {*}}{y _ {t}}.
$$

Compared to the incomplete-market solution, the Pareto weight  $\pi$  in the complete-market case is a constant. After further simplification, we characterize the exchange rate dynamics in the following proposition.

Proposition 5.3. In the complete-market case, the log exchange rate follows

$$
d e _ {t} ^ {c m} = \kappa_ {t} ^ {c m} d t + \sigma_ {t} ^ {c m} d Z _ {t},
$$

where

$$
\frac {1}{2 \alpha - 1} \kappa_ {t} ^ {c m} = \mu_ {y ^ {*}} - \mu_ {y} + \frac {1}{2} \sigma_ {y} ^ {2} - \frac {1}{2} \sigma_ {y ^ {*}} ^ {2} - \frac {1}{2} \frac {\alpha^ {2} \gamma_ {t} ^ {2} \omega^ {2}}{(\gamma_ {t} \alpha + \pi \gamma^ {*} (1 - \alpha)) ^ {2}} + \frac {1}{2} \frac {(1 - \alpha) ^ {2} \gamma_ {t} ^ {2} \omega^ {2}}{(\gamma_ {t} (1 - \alpha) + \pi \gamma^ {*} \alpha) ^ {2}},
$$

$$
\frac {1}{2 \alpha - 1} \sigma_ {t} ^ {c m} = - \sigma_ {y} i _ {1} + \sigma_ {y ^ {*}} i _ {2} + \left(\frac {\alpha \gamma_ {t} \omega}{\gamma_ {t} \alpha + \pi \gamma^ {*} (1 - \alpha)} - \frac {(1 - \alpha) \gamma_ {t} \omega}{\gamma_ {t} (1 - \alpha) + \pi \gamma^ {*} \alpha}\right) i _ {3}.
$$

Moreover, the SDF dynamics satisfy

$$
d e _ {t} ^ {c m} = d m _ {t} ^ {c m} - d m _ {t} ^ {*}, ^ {c m}.
$$

The proof is presented in Appendix A.18. This complete-market case restores a continuous-time version of our standard risk-sharing condition (1.16) under complete markets, i.e.,  $\Delta e_{t+1} = m_{t+1} - m_{t+1}^*$ , which is in stark contrast to Eq. (5.8) under the incomplete-market case.

Moreover, Eq. (5.7), reproduced below, also holds in the complete-market case:

$$
\pi = \frac {\tilde {w} _ {t} ^ {*}}{w _ {t}} \frac {\gamma_ {t}}{\gamma^ {*}}. \tag {5.9}
$$

With a constant Pareto weight  $\pi$ , the equilibrium wealth distribution is equal to the ratio of the discount rates. As such, when markets are complete, the wealth distribution does not introduce additional state variables.

# 5.B The No-Arbitrage Approach

The general equilibrium model above demonstrates one particular case in which the exchange rate obeys Eq. (5.1), reproduced below,

$$
\Delta e _ {t + 1} = m _ {t + 1} - m _ {t + 1} ^ {*} + \eta_ {t + 1}.
$$

If we relax the assumption of log preference, the model becomes much more difficult to solve in closed form. In this section, we develop an alternative, no-arbitrage approach to study the properties of the exchange rate dynamics under incomplete markets. This approach is based on Backus, Foresi, and Telmer [2001], Brandt, Cochrane, and Santa-Clara [2006], Lustig and Verdelhan [2019].

This approach does not take a stance on the specification of preferences and economic shocks. We only require risk-free bonds to be freely traded across countries, which seems to be a reasonable assumption at least for certain agents in developed economies. We focus on the four Euler equations (1.6)-(1.9) that characterize the home and foreign investors' valuation of the home and foreign risk-free bonds. The financial markets for other assets, such as the equities and long-term bonds, may or may not be traded. In this sense, this no-arbitrage approach provides a general characterization of the exchange rate dynamics under incomplete spanning.

As this approach leaves other markets unspecified, there is a family of exchange rate solutions that are consistent with the Euler equations (1.6)-(1.9). However, this fact does not necessarily imply multiple equilibria. A full specification of goods and asset market clearing usually pins down a unique equilibrium within the family of equilibria that we will study.

Moreover, for any given home SDF  $m_{t + 1}$

$$
m _ {t + 1} ^ {* *} \stackrel {\mathrm {d e f}} {=} m _ {t + 1} - \Delta e _ {t + 1}
$$

is always a valid foreign SDF that is consistent with the asset market equilibrium. While this SDF correctly prices the tradable assets, it does not necessarily coincide with the foreign households' marginal utility growth. To the extent that we are interested in understanding the relationship between the exchange rate dynamics and the macroeconomy, we would like to focus on the home and foreign SDFs that reflect the marginal utility growth, i.e.,

$$
m _ {t + 1} = \delta \frac {u ^ {\prime} (c _ {t + 1})}{u ^ {\prime} (c _ {t})}, \qquad m _ {t + 1} ^ {*} = \delta \frac {u ^ {* ^ {\prime}} (c _ {t + 1} ^ {*})}{u ^ {* ^ {\prime}} (c _ {t} ^ {*})}.
$$

# 5.B.1 The  $\eta$  Algebra

To explain the restrictions implied by the Euler equations, we plug in  $\Delta e_{t + 1} = m_{t + 1} - m_{t + 1}^{*} + \eta_{t + 1}$  to the Euler equation (1.9), reproduced below,

$$
1 = \mathbb {E} _ {t} \left[ \exp (m _ {t + 1} ^ {*} + \Delta e _ {t + 1} + r _ {t}) \right],
$$

to obtain

$$
1 = \mathbb {E} _ {t} \left[ \exp \left(m _ {t + 1} + \eta_ {t + 1} + r _ {t}\right) \right].
$$

In this equation,  $m_{t+1} + \eta_{t+1}$  expresses the foreign households' SDF in the home numétaire, which prices the home risk-free rate.

Together with the Euler equation (1.6), reproduced below,

$$
1 = \mathbb {E} _ {t} \left[ \exp \left(m _ {t + 1} + r _ {t}\right) \right],
$$

and assuming joint normality, they impose a restriction on the joint distribution of  $m_{t+1}$  and  $\eta_{t+1}$ :

$$
\mathbb {E} _ {t} \left[ \eta_ {t + 1} \right] + \frac {1}{2} v a r _ {t} \left(\eta_ {t + 1}\right) + c o v _ {t} \left(m _ {t + 1}, \eta_ {t + 1}\right) = 0. \tag {5.10}
$$

In the language of closed-economy incomplete-market models, we can say that incomplete markets allow multiple SDFs to be consistent with the asset market equilibrium, and  $m_{t+1}$  and  $m_{t+1} + \eta_{t+1}$  are both valid SDFs. However,  $m_{t+1}$  and  $m_{t+1} + \eta_{t+1}$  cannot be arbitrary. The fact that they both price the home risk-free bond implies a restriction, which is what we derived in Eq. (5.10).

Similarly, home and foreign SDFs satisfy the following Euler equations,

$$
\begin{array}{l} 1 = \mathbb {E} _ {t} \left[ \exp (m _ {t + 1} ^ {*} + r _ {t} ^ {*}) \right], \\ 1 = \mathbb {E} _ {t} \left[ \exp \left(m _ {t + 1} ^ {*} - \eta_ {t + 1} + r _ {t} ^ {*}\right) \right], \\ \end{array}
$$

which imply a restriction on the joint distribution of  $m_{t + 1}^{*}$  and  $\eta_{t + 1}$ :

$$
\mathbb {E} _ {t} \left[ \eta_ {t + 1} \right] - \frac {1}{2} \operatorname {v a r} _ {t} \left(\eta_ {t + 1}\right) + \operatorname {c o v} _ {t} \left(m _ {t + 1} ^ {*}, \eta_ {t + 1}\right) = 0. \tag {5.11}
$$

The restrictions (5.10) and (5.11) imply

$$
0 = \operatorname {c o v} _ {t} \left(m _ {t + 1} - m _ {t + 1} ^ {*} + \eta_ {t + 1}, \eta_ {t + 1}\right) = \operatorname {c o v} _ {t} \left(\Delta e _ {t + 1}, \eta_ {t + 1}\right). \tag {5.12}
$$

This is the key implication of the Euler equations. The incomplete-market wedge  $\eta_{t+1}$  has to exist in the space orthogonal to the exchange rate movement  $\Delta e_{t+1}$ . Otherwise, it will affect how the exchange rate is priced, which makes the two SDFs  $m_{t+1}$  and  $m_{t+1} + \eta_{t+1}$  disagree on the pricing of the foreign currency.

Rearranging (5.12), we obtain

$$
c o v _ {t} \left(m _ {t + 1} - m _ {t + 1} ^ {*}, \eta_ {t + 1}\right) = - v a r _ {t} \left(\eta_ {t + 1}\right);
$$

that is, in order for the incomplete-market wedge  $\eta_{t+1}$  to be orthogonal to the exchange rate movement  $\Delta e_{t+1}$ , it has to be negatively correlated with the SDF differential  $m_{t+1} - m_{t+1}^*$ . Then, the exchange rate variance becomes

$$
\begin{array}{l} v a r _ {t} (\Delta e _ {t + 1}) = v a r _ {t} (m _ {t + 1} - m _ {t + 1} ^ {*} + \eta_ {t + 1}) = v a r _ {t} (m _ {t + 1} - m _ {t + 1} ^ {*}) + v a r _ {t} (\eta_ {t + 1}) + 2 c o v _ {t} (m _ {t + 1} - m _ {t + 1} ^ {*}, \eta_ {t + 1}) \\ = v a r _ {t} \left(m _ {t + 1} - m _ {t + 1} ^ {*}\right) - v a r _ {t} \left(\eta_ {t + 1}\right). \\ \end{array}
$$

In other words, since the incomplete-market wedge  $\eta_{t + 1}$  is negatively correlated with the SDF differential  $m_{t + 1} - m_{t + 1}^{*}$ , it reduces the exchange rate volatility relative to the volatility of the SDF differential.

In this way, using this result derived from the Euler equations (1.6)-(1.9), Lustig and Verdelhan [2019] characterize the exchange rate volatility, cyclicality, and risk premium in the presence of the incomplete-market wedge  $\eta_{t+1}$ .

Proposition 5.4. (a) The conditional exchange rate volatility can be expressed as

$$
\operatorname {v a r} _ {t} \left(\Delta e _ {t + 1}\right) = \operatorname {v a r} _ {t} \left(m _ {t + 1} - m _ {t + 1} ^ {*}\right) - \operatorname {v a r} _ {t} \left(\eta_ {t + 1}\right).
$$

(b) The conditional exchange rate cyclicality can be expressed as

$$
\operatorname {c o v} _ {t} \left(m _ {t + 1} - m _ {t + 1} ^ {*}, \Delta e _ {t + 1}\right) = \operatorname {v a r} _ {t} \left(\Delta e _ {t + 1}\right).
$$

(c) The conditional currency risk premium can be expressed as

$$
\mathbb {E} _ {t} [ r x _ {t + 1} ] = \frac {1}{2} (v a r _ {t} (m _ {t + 1} ^ {*}) - v a r _ {t} (m _ {t + 1})) + \mathbb {E} _ {t} [ \eta_ {t + 1} ].
$$

The proof is presented in Appendix A.19. When the markets are complete,  $\eta_{t + 1} = 0$ , and the above results reduce to the complete-market solution we considered in Section 1.C, reproduced below:

$$
v a r _ {t} (\Delta e _ {t + 1}) = v a r _ {t} (m _ {t + 1} - m _ {t + 1} ^ {*}),
$$

$$
\begin{array}{l} c o v _ {t} \left(m _ {t + 1} - m _ {t + 1} ^ {*}, \Delta e _ {t + 1}\right) = \operatorname {v a r} _ {t} \left(\Delta e _ {t + 1}\right), \\ \mathbb {E} _ {t} [ r x _ {t + 1} ] = \frac {1}{2} (v a r _ {t} (m _ {t + 1} ^ {*}) - v a r _ {t} (m _ {t + 1})). \\ \end{array}
$$

Relative to this complete-market benchmark, the presence of the incomplete-market wedge  $\eta_{t+1}$  always reduces the exchange rate volatility  $var_t(\Delta e_{t+1})$  relative to the variance of the SDF differential  $var_t(m_{t+1} - m_{t+1}^*)$ . This result shows that market incompleteness is a useful ingredient for resolving the exchange rate puzzles, as we expect the SDF volatility to be much higher than the exchange rate volatility, while the cross-country SDF correlation is not high enough to reduce  $var_t(m_{t+1} - m_{t+1}^*)$  [Brandt, Cochrane, and Santa-Clara, 2006]. In the presence of a volatile incomplete-market wedge  $\eta_{t+1}$ , the exchange rate volatility can be much lower than the SDF volatility.

Incomplete markets also shift the currency risk premium  $\mathbb{E}_t[rx_{t + 1}]$  by  $\mathbb{E}_t[\eta_{t + 1}]$ . The Euler equations do not rule out the possibility that  $\mathbb{E}_t[\eta_{t + 1}]$  is nonzero, as long as it satisfies Eq. (5.10) and (5.11). Moreover, because  $\mathbb{E}_t[\eta_{t + 1}]$  is known ex-ante in period  $t$ , increasing the currency risk premium comes at the cost of introducing exchange rate predictability.

Finally, in incomplete markets, the exchange rate cyclicality is still equal to the exchange rate variance:  $cov_{t}(m_{t + 1} - m_{t + 1}^{*}, \Delta e_{t + 1}) = var_{t}(\Delta e_{t + 1})$ . However, because the exchange rate variance can be lower, market incompleteness can shrink the exchange rate cyclicality towards zero as well. That said, as the exchange rate cyclicality has to be positive, incomplete markets alone cannot generate a procyclical exchange rate.

Lustig and Verdelhan [2019] further point out a trade-off between resolving the exchange rate volatility puzzle and the currency risk premium puzzle. The Euler equations impose restrictions on the joint dynamics of the exchange rate movement, the SDF, and  $\eta_{t+1}$ . When we rely on a volatile  $\eta_{t+1}$  to reduce the exchange rate volatility and cyclicality, we also shrink the currency risk premium. To see this dilemma, recall from Proposition 1.1, which is valid in complete and incomplete markets, that the currency risk premium can be expressed as

$$
\log \mathbb {E} _ {t} [ \exp (r x _ {t + 1}) ] = - c o v _ {t} \left(m _ {t + 1} ^ {*}, \Delta e _ {t + 1}\right).
$$

When a volatile  $\eta_{t + 1}$  term lowers the exchange rate volatility and the covariance between the SDF and the exchange rate movement, it also

reduces the currency risk premium.

# 5.B.2 Exchange Rate Projection

The  $\eta$  algebra above decomposes the exchange rate movement to the SDF differential and the incomplete-market wedge  $\eta$ . From our discussion above, we know that a volatile  $\eta$  term is required to reduce the exchange rate volatility, and  $\eta$ 's drift modifies the currency risk premium.

In this subsection, we develop a different decomposition of the exchange rate movement that is useful for interpreting the effects of market incompleteness on the exchange rate dynamics, which is based on Jiang [2023b]. For expositional convenience, we again assume that all shocks are jointly normal.

Without loss of generality, we can express the exchange rate movement as

$$
\Delta e _ {t + 1} = x _ {t} + y _ {t} m _ {t + 1} + z _ {t} m _ {t + 1} ^ {*} + w _ {t} \varepsilon_ {t + 1}, \tag {5.13}
$$

where  $\varepsilon_{t + 1}$  is a standard normal variable with a mean of 0 and a volatility of 1. This expression simply rewrites Eq. (5.1), with

$$
\eta_ {t + 1} = x _ {t} + (y _ {t} - 1) m _ {t + 1} + (z _ {t} + 1) m _ {t + 1} ^ {*} + w _ {t} \varepsilon_ {t + 1}.
$$

We identify the coefficients  $x_{t}, y_{t}, z_{t}$ , and  $w_{t}$  by assuming that the covariance between the SDFs and the residual  $\varepsilon_{t+1}$  is zero, i.e.,  $cov_{t}(m_{t+1}, \varepsilon_{t+1}) = cov_{t}(m_{t+1}^{*}, \varepsilon_{t+1}) = 0$ , which uniquely pins down

$$
y _ {t} = \frac {c o v _ {t} (\Delta e _ {t + 1} , m _ {t + 1}) v a r _ {t} (m _ {t + 1} ^ {*}) - c o v _ {t} (\Delta e _ {t + 1} , m _ {t + 1} ^ {*}) c o v _ {t} (m _ {t + 1} , m _ {t + 1} ^ {*})}{v a r _ {t} (m _ {t + 1}) v a r _ {t} (m _ {t + 1} ^ {*}) - c o v _ {t} (m _ {t + 1} , m _ {t + 1} ^ {*}) ^ {2}},
$$

$$
z _ {t} = \frac {c o v _ {t} (\Delta e _ {t + 1} , m _ {t + 1} ^ {*}) v a r _ {t} (m _ {t + 1}) - c o v _ {t} (\Delta e _ {t + 1} , m _ {t + 1}) c o v _ {t} (m _ {t + 1} , m _ {t + 1} ^ {*})}{v a r _ {t} (m _ {t + 1}) v a r _ {t} (m _ {t + 1} ^ {*}) - c o v _ {t} (m _ {t + 1} , m _ {t + 1} ^ {*}) ^ {2}},
$$

$$
x _ {t} = \mathbb {E} _ {t} [ \Delta e _ {t + 1} ] - y _ {t} \mathbb {E} _ {t} [ m _ {t + 1} ] - z _ {t} \mathbb {E} _ {t} [ m _ {t + 1} ^ {*} ],
$$

$$
w _ {t} \varepsilon_ {t + 1} = \Delta e _ {t + 1} - x _ {t} - y _ {t} m _ {t + 1} - z _ {t} m _ {t + 1} ^ {*}.
$$

Intuitively, we can think of this decomposition formula as a projection of the exchange rate movement on the home and foreign SDFs. The terms  $y_{t}m_{t + 1}$  and  $z_{t}m_{t + 1}^{*}$  describe how the bilateral exchange rate loads on the SDFs in the two countries, with the coefficients  $y_{t}$  and  $z_{t}$  interpreted as the SDF-FX pass-through. When the markets are complete, the SDFs comove with the exchange rate movement one-for-one (i.e.,  $\Delta e_{t + 1} = m_{t + 1} - m_{t + 1}^{*}$ ), implying a full pass-through of  $y_{t} = 1$  and  $z_{t} = -1$ . As we will see later, when the markets are incomplete,  $|y_{t}|$  and  $|z_{t}|$  can take values lower than 1, reflecting a partial pass-through from the SDFs to the exchange rate.

The last term  $w_{t}\varepsilon_{t + 1}$  captures the residual in the bilateral exchange rate movement that is not explained by the SDFs. Compared to the  $\eta_{t + 1}$  term in Eq. (5.1), the residual  $w_{t}\varepsilon_{t + 1}$  is orthogonal to the SDFs, whereas  $\eta_{t + 1}$  can have arbitrary correlations with both countries' SDFs.

Under joint normality, the exchange rate dynamics can be represented by  $(x_{t},y_{t},z_{t},w_{t})$ . Alternatively, they can also be represented by the expected exchange rate movement  $\mathbb{E}_t[\Delta e_{t + 1}]$ , the bilateral exchange rate movement's variance  $var_t(\Delta e_{t + 1})$ , and its covariances with the two countries' SDFs  $cov_{t}(\Delta e_{t + 1},m_{t + 1})$  and  $cov_{t}(\Delta e_{t + 1},m_{t + 1}^{*})$ .

Using this exchange rate decomposition, we can provide a different characterization of the exchange rate volatility, cyclicality, and risk premium [Jiang, 2023b].

Proposition 5.5. (a) The conditional exchange rate volatility can be expressed as

$$
\operatorname {v a r} _ {t} \left(\Delta e _ {t + 1}\right) = \operatorname {v a r} _ {t} \left(y _ {t} m _ {t + 1} + z _ {t} m _ {t + 1} ^ {*}\right) + \operatorname {v a r} _ {t} \left(w _ {t} \varepsilon_ {t + 1}\right).
$$

(b) The conditional exchange rate cyclicality can be expressed as

$$
c o v _ {t} (m _ {t + 1} - m _ {t + 1} ^ {*}, \Delta e _ {t + 1}) = c o v _ {t} (y _ {t} m _ {t + 1} + z _ {t} m _ {t + 1} ^ {*}, m _ {t + 1} - m _ {t + 1} ^ {*}).
$$

(c) Using the Euler equations (1.6)-(1.9), the conditional currency risk premium can be expressed as

$$
r p _ {t} \stackrel {{d e f}} {{=}} \mathbb {E} _ {t} [ r x _ {t + 1} ] = - \frac {1}{2} c o v _ {t} \left(y _ {t} m _ {t + 1} + z _ {t} m _ {t + 1} ^ {*}, m _ {t + 1} + m _ {t + 1} ^ {*}\right).
$$

The proof is in Appendix A.20. As a special case, when markets are complete,  $y_{t} = 1$ ,  $z_{t} = -1$  and  $\varepsilon_{t+1} = 0$ . These exchange rate moments simplify to

$$
\operatorname {v a r} _ {t} \left(\Delta e _ {t + 1} ^ {c m}\right) = \operatorname {v a r} _ {t} \left(m _ {t + 1} - m _ {*} ^ {*}\right),
$$

$$
\begin{array}{l} c o v _ {t} \left(m _ {t + 1} - m _ {t + 1} ^ {*}, \Delta e _ {t + 1} ^ {c m}\right) = v a r _ {t} \left(m _ {t + 1} - m _ {t + 1} ^ {*}\right), \\ r p _ {t} ^ {c m} = - \frac {1}{2} c o v _ {t} \left(m _ {t + 1} - m _ {t + 1} ^ {*}, m _ {t + 1} + m _ {t + 1} ^ {*}\right) = \frac {1}{2} v a r _ {t} \left(m _ {t + 1} ^ {*}\right) - \frac {1}{2} v a r _ {t} \left(m _ {t + 1}\right), \\ \end{array}
$$

which recovers the complete-market solution in Section 1.C.

When markets are incomplete, if the magnitudes of the SDF-FX pass-through coefficients  $y_{t}$  and  $z_{t}$  are smaller than 1, then, we obtain a less volatile SDF term  $y_{t}m_{t + 1} + z_{t}m_{t + 1}^{*}$ , which reduces the exchange rate's variance and covariance with the SDF differential towards 0.

At the same time, a smaller SDF term also reduces the currency risk premium. In this way, we recover the dilemma in Lustig and Verdelhan [2019] that, as market incompleteness reduces the exchange rate volatility, it also shrinks the currency risk premium towards zero. By teasing out the SDF term  $y_{t}m_{t + 1} + z_{t}m_{t + 1}^{*}$  from the residual  $w_{t}\varepsilon_{t + 1}$  in

the exchange rate movement, our decomposition formula shows how this SDF term ties together the exchange rate variance, cyclicality, and the currency risk premium in the general incomplete-market setting.

Moreover, the role of the residual term  $w_{t}\varepsilon_{t + 1}$  is also simple to interpret: while a volatile residual increases the exchange rate variance, it has no effect on the exchange rate cyclicality and the currency risk premium. It can be thought of as a truly idiosyncratic term.

Conversely, given the fact that the exchange rate variance is much lower than the variance of the SDF differential [Brandt, Cochrane, and Santa-Clara, 2006], can we derive a bound on the magnitude of the coefficients  $y_{t}$  and  $z_{t}$ ? More specifically, at the annual frequency, the exchange rate volatility between developed countries is in the order of  $10\%$ , implying  $var_{t}\left(\Delta e_{t + 1}\right) = 1\%$ . In comparison, given the existence of financial assets or trading strategies that generate Sharpe ratios above 1, the Hansen and Jagannathan [1991] bound implies  $var_{t}(m_{t + 1}) \geq 1$ . Together, these empirical observations imply the following restriction:

$$
\operatorname{var}_{t}\left(\Delta e_{t + 1}\right)\leq 1\% \cdot \operatorname{var}_{t}(m_{t + 1}). \tag{5.14}
$$

Then, using the Euler equations (1.6)-(1.9), we can derive the following bound on the exchange rate variance.

Proposition 5.6. The Euler equations impose the following constraints on the pass-through coefficients  $y_{t}$  and  $z_{t}$ :

$$
y _ {t} (y _ {t} - 1) v a r _ {t} (m _ {t + 1}) + z _ {t} (z _ {t} + 1) v a r _ {t} (m _ {t + 1} ^ {*}) +
$$

$$
\left[ y _ {t} \left(z _ {t} + 1\right) + z _ {t} \left(y _ {t} - 1\right) \right] \operatorname {c o v} _ {t} \left(m _ {t + 1}, m _ {t + 1} ^ {*}\right) \leq 0 \tag {5.15}
$$

$$
y _ {t} \operatorname {v a r} _ {t} \left(m _ {t + 1}\right) - z _ {t} \operatorname {v a r} _ {t} \left(m _ {t + 1} ^ {*}\right) + \left(z _ {t} - y _ {t}\right) \operatorname {c o v} _ {t} \left(m _ {t + 1}. m _ {t + 1} ^ {*}\right) = \operatorname {v a r} _ {t} \left(\Delta e _ {t + 1}\right) \tag {5.16}
$$

The proof is in Appendix A.21. This result shows that, if we take a stance on the variances of the SDFs, we can reject some values of the pass-through coefficients by noting that they generate too much exchange rate volatility. For example, if  $y_{t} = 1$  and  $z_{t} = -1$  as in the complete-market case, Eq. (5.15) becomes  $0 \geq 0$  and Eq. (5.16) becomes  $var_{t}(m_{t + 1} - m_{t + 1}^{*}) = var_{t}(\Delta e_{t + 1})$ , which recovers the key result in Brandt, Cochrane, and Santa-Clara [2006].

This proposition generalizes Brandt, Cochrane, and Santa-Clara [2006] by asking how much lower the pass-through coefficients  $y_{t}$  and  $z_{t}$  have to be in order to match the exchange rate volatility. If we plug the empirical restriction (5.14) into Eq. (5.16), and additionally assume that the home and foreign SDFs have the same variance, i.e.,  $\sigma_t^2 = var_t(m_{t + 1}) = var_t(m_{t + 1}^*)$ , and that the cross-country SDF correlation is  $corr_t(m_{t + 1},m_{t + 1}^*) = 0.3\$ , which is close to the average cross-country correlation in consumption growth among

developed countries, then, we can graphically represent the two equations in Proposition 5.6 in Figure 5.1. Specifically, Eq. (5.15) requires the coefficients to lie within the red ellipse, and Eq. (5.16) requires the coefficients to lie above the blue line. The intersection of these two regions is very small and close to  $(0,0)$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/727d5c940dd98a408ec9ba2d0be40563e858ba2f2fc35b7ae3587ea7497e4a3a.jpg)  
Figure 5.1: Bounds on the Magnitude of the Pass-Through Coefficients

This discussion shows that the pass-through coefficients  $y_{t}$  and  $z_{t}$  have to be very small in order to produce empirically plausible exchange rate volatility. In the numerical example we consider here, the greatest possible magnitude of either coefficient is 0.068, which is much smaller than the complete-market benchmark of 1. As such, this exchange rate decomposition takes one step further and sheds light on the economic interpretation of the incomplete-market wedge  $\eta_{t+1}$  in relation to the SDFs.

# 5.C Multi-Currency Dynamics and International Spill-Over

Market incompleteness also has implications for multi-currency dynamics. As a benchmark, let us first understand the intuition from complete-market models. It suffices to consider only three countries, which we denote by 0, 1, 2. We refer to country 0 as the home country, and countries 1 and 2 as the two foreign countries. The bilateral exchange rate movements between the home country and the two foreign countries are given by

$$
\Delta e _ {t + 1} ^ {0 / 1} = m _ {t + 1} ^ {(0)} - m _ {t + 1} ^ {(1)},
$$

$$
\Delta e _ {t + 1} ^ {0 / 2} = m _ {t + 1} ^ {(0)} - m _ {t + 1} ^ {(2)}.
$$

First, Triangular arbitrage means that the bilateral exchange rates between two foreign countries are directly implied from their bilat-

eral exchange rates with the home country:

$$
\Delta e _ {t + 1} ^ {1 / 2} = \Delta e _ {t + 1} ^ {0 / 2} - \Delta e _ {t + 1} ^ {0 / 1} = m _ {t + 1} ^ {(1)} - m _ {t + 1} ^ {(2)}. \tag {5.17}
$$

As a result, the three bilateral exchange rates are not mutually independent. Given the simplicity of Eq. (5.17), it suffices to understand the dynamics of the bilateral exchange rates between the home country and each foreign country. The dynamics between the two foreign countries are easily implied.

# 5.C.1 Restrictions from the Euler Equations

When the markets are incomplete, the simple mapping from the SDFs to the bilateral exchange rates no longer holds. It is no longer sufficient to only study the dynamics between the home country and each foreign country. To see this point, consider the Euler equations (1.6)-(1.9) for holding the home and foreign risk-free bonds. Rewriting Eq. (1.12) for countries 0 and 1, we obtain

$$
c o v _ {t} \left(m _ {t + 1} ^ {(0)} - m _ {t + 1} ^ {(1)} - \Delta e _ {t + 1} ^ {0 / 1}, \Delta e _ {t + 1} ^ {0 / 1}\right) = 0. \tag {5.18}
$$

Similarly, for countries 0 and 2, we obtain

$$
c o v _ {t} \left(m _ {t + 1} ^ {(0)} - m _ {t + 1} ^ {(2)} - \Delta e _ {t + 1} ^ {0 / 2}, \Delta e _ {t + 1} ^ {0 / 2}\right) = 0. \tag {5.19}
$$

These equations arise in a large class of two-country models in which risk-free bonds are traded. They are also part of Proposition 5.4 which characterizes the exchange rate cyclicality.

Next, we consider the Euler equations for risk-free bonds between countries 1 and 2, which are

$$
\begin{array}{l} 1 = \mathbb {E} _ {t} \left[ \exp (m _ {t + 1} ^ {(1)} + r _ {t} ^ {(1)}) \right], \\ 1 = \mathbb {E} _ {t} \left[ \exp (m _ {t + 1} ^ {(1)} - \Delta e _ {t + 1} ^ {1 / 2} + r _ {t} ^ {(2)}) \right], \\ 1 = \mathbb {E} _ {t} \left[ \exp (m _ {t + 1} ^ {(2)} + r _ {t} ^ {(2)}) \right], \\ 1 = \mathbb {E} _ {t} \left[ \exp (m _ {t + 1} ^ {(2)} + \Delta e _ {t + 1} ^ {1 / 2} + r _ {t} ^ {(1)}) \right]. \\ \end{array}
$$

The following proposition shows that these equations give rise to additional restrictions on the exchange rate dynamics [Jiang, 2023b].

Proposition 5.7. The Euler equations for risk-free bonds between countries 1 and 2 imply

$$
c o v _ {t} \left(m _ {t + 1} ^ {(0)} - m _ {t + 1} ^ {(1)} - \Delta e _ {t + 1} ^ {0 / 1}, \Delta e _ {t + 1} ^ {0 / 2}\right) + c o v _ {t} \left(m _ {t + 1} ^ {(0)} - m _ {t + 1} ^ {(2)} - \Delta e _ {t + 1} ^ {0 / 2}, \Delta e _ {t + 1} ^ {0 / 1}\right) = 0. \tag {5.20}
$$

The proof is presented in Appendix A.22. This proposition shows that, while the bilateral exchange rate movements  $\Delta e_{t+1}^{0/1}$  and  $\Delta e_{t+1}^{0/2}$

between the home country and each foreign country directly imply the bilateral exchange rate movement  $\Delta e_{t+1}^{2/1}$  between the two foreign countries, the Euler equations (5.18) and (5.19) between the home country and each foreign country do not imply the Euler equations (5.20) between the two foreign countries in the general case. As a result, when we extend our analysis from two to three countries, the number of independent exchange rate movements increases from 1 to 2, while the number of unique sets of Euler equations for cross-country bond holdings increases from 1 to 3. The additional Euler equations impose restrictions on the exchange rate dynamics that are absent in the two-country setting.

The complete-market case is an exception:  $m_{t+1}^{(0)} - m_{t+1}^{(i)} - \Delta e_{t+1}^{0/i} = 0$  satisfies all the conditions above trivially. Perhaps this is why we are used to studying only the bilateral dynamics between the home country and each foreign country in the complete-market setting, which is no longer sufficient when markets are incomplete, as the Euler equations between the two foreign countries impose additional restrictions on the exchange rate dynamics.

What do these additional restrictions imply for the exchange rate dynamics? To answer this question, we first study a specific three-country model, and then we generalize the results using the no-arbitrage approach.

# 5.C.2 Motivating Example for the Spill-Over Effects

Let us consider a three-country extension of the Pavlova and Rigobon [2012] model we considered in Section 5.A. Again, we consider three countries labeled as 0, 1 and 2. Each country  $i$  has a unique variety of local goods, and a representative agent with log preference scaled by a demand shock  $\gamma_t^{(i)}$ :

$$
\mathbb {E} \left[ \int_ {0} ^ {T} \exp (- \rho t) \gamma_ {t} ^ {(i)} \log c _ {t} ^ {(i)} \right],
$$

and the aggregate consumption is a Cobb-Douglas aggregate of the three countries' local goods. Specifically, let  $c_{j,t}^{(i)}$  denote country  $i$ 's agent's consumption of country  $j$ 's goods, then,

$$
\log c _ {t} ^ {(i)} = \alpha \log c _ {i, t} ^ {(i)} + \sum_ {j \neq i} \frac {1 - \alpha}{2} \log c _ {j, t} ^ {(i)}.
$$

Reflecting home bias towards domestic goods,  $\alpha > 1/3$ . Moreover, each country's agent receives a stochastic endowment  $y_{t}^{(i)}$  that follows a simple diffusion process.

The agents in three countries have access to the same asset space. Since the markets are incomplete, the set of tradable assets does

not span the shocks. The risk-free bonds are freely tradable, but the existence of other assets such as equities and long-term bond is not central to our result. For simplicity, we assume that the agents can also trade equities which are claims to the country-level endowment claims.

Let  $\tilde{w}_t^{(i)}$  denote the wealth of country  $i$ 's agent, expressed in a common numérique. We have the following result characterizing the equilibrium exchange rate.

Proposition 5.8. The equilibrium log real exchange rate between the foreign countries 1 and 2 can be expressed as

$$
e _ {t} ^ {1 / 2} = \frac {3 \alpha - 1}{2} \left(\log \frac {\frac {1 - \alpha}{2} + \frac {\bar {w} _ {t} ^ {(1)}}{\bar {w} _ {t} ^ {(0)}} \alpha + \frac {\bar {w} _ {t} ^ {(2)}}{\bar {w} _ {t} ^ {(0)}} \frac {1 - \alpha}{2}}{\frac {1 - \alpha}{2} + \frac {\bar {w} _ {t} ^ {(1)}}{\bar {w} _ {t} ^ {(0)}} \frac {1 - \alpha}{2} + \frac {\bar {w} _ {t} ^ {(2)}}{\bar {w} _ {t} ^ {(0)}} \alpha} + \log \frac {y _ {t} ^ {(2)}}{y _ {t} ^ {(1)}}\right),
$$

which depends not only on the endowments  $y_{t}^{(1)}$  and  $y_{t}^{(2)}$ , but also on the endogenous wealth distribution between agents, i.e.,  $\tilde{w}_{t}^{(1)} / \tilde{w}_{t}^{(0)}$  and  $\tilde{w}_{t}^{(2)} / \tilde{w}_{t}^{(0)}$ .

The proof is presented in Appendix A.23. This expression relates the bilateral exchange rate between the foreign countries 1 and 2 to the wealth of country 0's agent. In particular, a shock to country 0's endowment  $y_{t}^{(0)}$  could directly impact the foreign countries' bilateral exchange rate by affecting the wealth distribution. This can happen when the agents in countries 1 and 2 hold different portfolios according to their heterogeneous wealth and preferences, which expose them differently to country 0's endowment shock. In this way, a shock originating from country 0 affects the bilateral exchange rate between countries 1 and 2, which gives us a concrete example of the spill-over effect.

In stark contrast, when the markets are complete, full risk-sharing implies the following wealth distribution:

$$
\frac {\pi^ {(i)}}{\pi^ {(0)}} = \frac {w _ {t} ^ {(i)} / \gamma_ {t} ^ {(i)}}{w _ {t} ^ {(0)} / \gamma_ {t} ^ {(0)}},
$$

where  $\pi^{(i)}$  is the time-invariant Pareto weight in the social planner's optimization. Then, the log exchange rate can be expressed as

$$
e _ {t} ^ {1 / 2, c m} = \frac {3 \alpha - 1}{2} \left(\log \frac {\frac {1 - \alpha}{2} + \frac {\gamma_ {t} ^ {(1)}}{\gamma_ {t} ^ {(0)}} \frac {\pi^ {(1)}}{\pi^ {(0)}} \alpha + \frac {\gamma_ {t} ^ {(2)}}{\gamma_ {t} ^ {(0)}} \frac {\pi^ {(2)}}{\pi^ {(0)}} \frac {1 - \alpha}{2}}{\frac {1 - \alpha}{2} + \frac {\gamma_ {t} ^ {(1)}}{\gamma_ {t} ^ {(0)}} \frac {\pi^ {(1)}}{\pi^ {(0)}} \frac {1 - \alpha}{2} + \frac {\gamma_ {t} ^ {(2)}}{\gamma_ {t} ^ {(0)}} \frac {\pi^ {(2)}}{\pi^ {(0)}} \alpha} + \log \frac {y _ {t} ^ {(2)}}{y _ {t} ^ {(1)}}\right), \tag {5.21}
$$

which is only a function of the country-specific endowments  $y_{t}^{(1)}$  and  $y_{t}^{(2)}$  and demand shocks  $\gamma_{t}^{(0)}, \gamma_{t}^{(1)}$ , and  $\gamma_{t}^{(2)}$ .

In this way, this specific setting shows a clear distinction between incompleteand complete-market outcomes: while a shock to country 0's endowment  $y_{t}^{(0)}$  has no impact on the bilateral exchange rate between foreign countries 1 and 2 when markets are complete, it can directly affect the bilateral exchange rate between foreign countries when markets are incomplete. In other words, when markets are incomplete, not only does the bilateral exchange rate movement deviate from the two countries' marginal utility growth differential, i.e.,  $\Delta e_{t+1} \neq m_{t+1} - m_{t+1}^{*}$ , but the bilateral exchange rate also depends on shocks to the third country. A natural question is whether this international spill-over effect is a general feature of incomplete markets, which is explored in the next section.

5.C.3 General Characterization of the Spill-Over Effects (TODO)  
5.D Incomplete Markets vs. Convenience Yields (TODO)


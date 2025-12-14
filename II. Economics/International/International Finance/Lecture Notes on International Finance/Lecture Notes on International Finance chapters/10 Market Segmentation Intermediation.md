---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Market Segmentation and Financial Intermediation
linter-yaml-title-alias: Market Segmentation and Financial Intermediation
---

# Market Segmentation and Financial Intermediation

# Summary

- We consider two forms of asset market segmentation and financial intermediation.  
- First, asset markets can be segmented between countries. Local households may not be able to directly hold foreign assets, and they rely on financiers to intermediate the cross-border capital flows. The financiers face financial constraints, which connect the portfolio imbalances they have to absorb to the risk premium they charge on foreign assets and currencies for providing this intermediation service.  
- Second, asset markets can be segmented within a country. Some households may not have access to the financial markets, which disconnects the aggregate consumption from the pricing of financial assets and exchange rates.

# 10.A A Model of International Financial Intermediation

In this section, we consider an international real business cycle (IRBC) model in which home and foreign households cannot trade any assets directly with each other, and specialized financiers are required to intermediate the cross-border capital flows. This model is adapted from Itskhoki and Mukhin [2021], whose key mechanism builds on Jeanne and Rose [2002], Gabaix and Maggiori [2015]. This model extends our baseline model in Chapter 1 in two ways. First, it replaces the endowment economy with a production economy, with standard features such as capital accumulation. Second, and more importantly, it models segmented markets and financial intermediation.

# 10.A.1 Households

The households' preferences are similar to those we considered in Section 6.B. Home and foreign households have preferences over

consumption and work. The home households' expected lifetime utility is

$$
\mathbb {E} _ {0} \left[ \sum_ {t = 0} ^ {\infty} \delta^ {t} \frac {1}{1 - \gamma} c _ {t} ^ {1 - \gamma} - \frac {1}{1 + 1 / \nu} \ell_ {t} ^ {1 + 1 / \nu} \right].
$$

Here we consider a more general aggregation function for consumption goods. The home households' consumption bundle is composed of home and foreign goods:

$$
c _ {t} = \left[ \alpha^ {1 - \eta} c _ {H, t} ^ {\eta} + (1 - \alpha) ^ {1 - \eta} c _ {F, t} ^ {\eta} \right] ^ {1 / \eta}.
$$

The Cobb-Douglas aggregation function we considered in the baseline model is a special case obtained when  $\eta = 0$ . Here we consider a positive  $\eta$  to a more realistic degree of substitutability between home and foreign goods.

We use the home households' consumption bundle as the numétaire. Recall that  $p_t$  is the price of the home good in this numétaire. We use  $k_t$  to denote the capital stock,  $z_t$  to denote the households' gross investment,  $q_t$  to denote the rental rate of capital. The home households' budget constraint is

$$
\left(w _ {t} \ell_ {t} + q _ {t} k _ {t}\right) + \exp \left(r _ {t - 1}\right) b _ {H, t - 1} = c _ {t} + z _ {t} + b _ {H, t},
$$

where the households' labor income  $w_{t}\ell_{t}$  and capital income  $q_{t}k_{t}$  replace their endowment in the baseline model. Moreover, we depart from the baseline model by assuming (1) that the markets are segmented, and the households can only hold their domestic risk-free bond, and (2) that the households can invest in their capital stock.

Capital accumulates according to the standard rule:

$$
k _ {t + 1} = (1 - d) k _ {t} + z _ {t} - \frac {\kappa}{2} \frac {\left(\Delta k _ {t + 1}\right) ^ {2}}{k _ {t}},
$$

where  $d$  denotes the depreciation rate and  $\frac{\kappa}{2}\frac{(\Delta k_{t+1})^2}{k_t}$  denotes the quadratic adjustment cost.

Similarly, the foreign households maximize their expected lifetime utility:

$$
\mathbb {E} _ {0} \left[ \sum_ {t = 0} ^ {\infty} \delta^ {t} \frac {1}{1 - \gamma} \left(c _ {t} ^ {*}\right) ^ {1 - \gamma} - \frac {1}{1 + 1 / \nu} \left(\ell_ {t} ^ {*}\right) ^ {1 + 1 / \nu} \right],
$$

where their consumption bundle is defined as

$$
c _ {t} ^ {*} = \left[ \alpha^ {1 - \eta} (c _ {F, t} ^ {*}) ^ {\eta} + (1 - \alpha) ^ {1 - \eta} (c _ {H, t} ^ {*}) ^ {\eta} \right] ^ {1 / \eta}.
$$

Likewise, the foreign households can only hold their domestic risk-free bond. Their budget constraint is

$$
\left(w _ {t} ^ {*} \ell_ {t} ^ {*} + q _ {t} ^ {*} k _ {t} ^ {*}\right) + \exp \left(r _ {t - 1} ^ {*}\right) b _ {F, t - 1} ^ {*} = c _ {t} ^ {*} + z _ {t} ^ {*} + b _ {F, t} ^ {*}.
$$

# 10.A.2 Firms

We consider very simple firms in this model. In the home country, the firms use capital  $k_{t}$ , labor  $\ell_{t}$ , and intermediate input which is  $x_{t}$  units of the home consumption bundle to produce  $y_{t}$  units of the home goods:

$$
y _ {t} = \left(\exp (a _ {t}) k _ {t} ^ {\vartheta} \ell_ {t} ^ {(1 - \vartheta)}\right) ^ {1 - \phi} x _ {t} ^ {\phi}.
$$

The firms are competitive, unlike the firms with market power that we considered in Section 6. Their revenue  $p_t y_t$  is split among the three factors of production according to their marginal products:

$$
\begin{array}{l} \ell_ {t} w _ {t} = (1 - \vartheta) (1 - \phi) p _ {t} y _ {t}, \\ k _ {t} q _ {t} = \vartheta (1 - \phi) p _ {t} y _ {t}, \\ x _ {t} = \phi p _ {t} y _ {t}. \\ \end{array}
$$

# 10.A.3 Segmented Markets and Financial Intermediation

As noted in the beginning of this section, market segmentation and the financial intermediary are the key departure from the standard IRBC models. Itskhoki and Mukhin [2021] consider two additional classes of agents: the financiers and the noise traders.

The noise traders buy and sell currencies to satisfy their liquidity demand. We assume that there is a measure  $n$  of identical noise traders. In period  $t$ , they hold  $n_t$  units of the home risk-free bond and  $n_t^*$  units of the foreign risk-free bond. They have a zero-cost portfolio, which means their positions in the home and foreign bonds have the same market value with opposite signs:

$$
\exp (- r _ {t}) n _ {t} = - \exp (- e _ {t}) \exp (- r _ {t} ^ {*}) n _ {t} ^ {*}. \tag {10.1}
$$

The size of their position is determined by an exogenous process:

$$
\exp (- r _ {t}) n _ {t} = n \left(\exp \left(\psi_ {t}\right) - 1\right),
$$

where

$$
\psi_ {t + 1} = (1 - \rho_ {\psi}) \bar {\psi} + \rho_ {\psi} \psi_ {t} + \varepsilon_ {\psi , t + 1}.
$$

There is also a measure  $m$  of identical financiers, who absorb the excess demand or supply of bonds from the noise traders and the households and earn a risk premium. They also hold a zero-cost portfolio. In period  $t$ , they hold  $d_t$  units of the home risk-free bond and  $d_t^*$  units of the foreign risk-free bond, which also satisfies the zero-cost constraint:

$$
\exp (- r _ {t}) d _ {t} = - \exp (- e _ {t}) \exp \left(- r _ {t} ^ {*}\right) d _ {t} ^ {*}. \tag {10.2}
$$

The financiers are myopic and maximize the CARA utility of their return:

$$
\mathbb {E} _ {0} \left[ - \frac {1}{\omega} \exp (- \omega (1 - \exp (r x _ {t + 1})) d _ {t} ^ {*}) \right],
$$

where  $rx_{t + 1} \stackrel{\mathrm{def}}{=} \Delta e_{t + 1} + r_t - r_t^*$  is the home currency's expected excess return in log. Itskhoki and Mukhin [2021] consider the continuous-time limit of this problem, in which the optimal solution is given by

$$
d _ {t} ^ {*} = - \frac {\mathbb {E} _ {t} [ r x _ {t + 1} ] + \frac {1}{2} v a r _ {t} (\Delta e _ {t + 1})}{\omega v a r _ {t} (\Delta e _ {t + 1})}, \tag {10.3}
$$

This solution is identical to the myopic investors' optimal portfolio choice we derived in Section 9.3. Eq. (10.3) connects the currency's expected excess return to the financiers' portfolio position. These financiers absorb excess positive or negative positions in the bond market, and they charge a risk premium for providing this service. In particular, if they have a positive position in the home bond and a negative position in the foreign bond (i.e.,  $d_t^* < 0$ ), they demand a higher expected return on the home bond to earn a positive expected return on their portfolio. Conversely, if they have a negative position in the home bond and a positive position in the foreign bond (i.e.,  $d_t^* > 0$ ), they demand a higher expected return on the foreign bond to earn a positive expected return on their portfolio. In this way, their optimality condition (10.3) implies a tight link between their portfolio position and the currency's expected return.

This mechanism of intermediation in the currency market follows from Gabaix and Maggiori [2015], who provide a different microfoundation in which these liquidity traders are risk-neutral but face a financial friction to incur portfolio imbalances, and this friction is greater when the exchange rate is more volatile. This setting gives rise to an expression similar to Eq. (10.3).

Using the financiers' optimality condition and the market clearing conditions that we will next specify, we can derive the currency expected excess return in equilibrium.

Proposition 10.1. After log-linearization, the currency expected excess return is given by

$$
\mathbb {E} _ {t} [ r x _ {t + 1} ] \stackrel {d e f} {=} \mathbb {E} _ {t} [ \Delta e _ {t + 1} + r _ {t} - r _ {t} ^ {*} ] = \chi_ {1} \psi_ {t} - \chi_ {2} \frac {b _ {H , t} \exp (r _ {t})}{\bar {Y}}.
$$

The proof is in Appendix A.42. This proposition relates the required excess return to hold the home currency to the equilibrium quantity of imbalances absorbed that the financiers need to absorb,

which, by market clearing, is further determined by the bond demand of the noise traders  $(\psi_t)$  and that of the local households  $b_{H,t}$ . Specifically, a positive  $\psi_t$  shock means that the financiers have to absorb a large amount of the home bond. They would require a higher compensation to hold the home currency, which increases the home currency's expected excess return. If the home households want to take a large position on the home bond, then, the financiers can offload some of their positions to the home households, which lower the equilibrium position they have to take and thus the risk premium they charge.

Moreover, we can derive an exchange rate accounting formula similar to Proposition 4.2. In this log-linearized model, as we ignore the second-order terms, we effectively attribute all currency expected excess returns to the Euler equation wedge as opposed to the currency risk premium. We obtain

$$
e _ {t} = \sum_ {j = 0} ^ {\infty} \mathbb {E} _ {t} \left[ r _ {t + j} - r _ {t + j} ^ {*} \right] + \sum_ {j = 0} ^ {\infty} \mathbb {E} _ {t} \left[ w _ {t + j} \right] + \bar {e}, \tag {10.4}
$$

where the wedge  $w_{t+j}$  is equal to

$$
w _ {t + j} = \omega \cdot v a r _ {t + j} (\Delta e _ {t + j + 1}) d _ {t + j} ^ {*},
$$

which can be interpreted as the financiers' price of risk,  $\omega$ , multiplied with the quantity of risk they absorb,  $var_{t+j}(\Delta e_{t+j+1}) d_{t+j}^*$ . The home currency is stronger (i.e.,  $e_t$  is higher) when the financiers have to absorb a large amount of the foreign bond (i.e.,  $d_{t+j}^*$  is large) and requires a higher compensation to hold the foreign currency, which can be triggered by a negative  $\psi_t$  shock.

# 10.A.4 Market Clearing Conditions

Since the consumption  $c_{t}$ , the investment  $z_{t}$ , and the intermediate input  $x_{t}$  are all denominated in the home consumption bundle, it is more convenient to first figure out the total amounts of home goods (i.e.,  $y_{H,t}$ ) and foreign goods (i.e.,  $y_{F,t}$ ) that the home households and firms acquire for these objectives. These home and foreign goods are aggregated by the same CES function and satisfy the following resource constraint:

$$
c _ {t} + z _ {t} + x _ {t} = \left[ \alpha^ {1 - \eta} y _ {H, t} ^ {\eta} + (1 - \alpha) ^ {1 - \eta} y _ {F, t} ^ {\eta} \right] ^ {1 / \eta}.
$$

Likewise, we have the following resource constraint for the foreign households and firms:

$$
c _ {t} ^ {*} + z _ {t} ^ {*} + x _ {t} ^ {*} = \left[ \alpha^ {1 - \eta} (y _ {F, t} ^ {*}) ^ {\eta} + (1 - \alpha) ^ {1 - \eta} (y _ {H, t} ^ {*}) ^ {\eta} \right] ^ {1 / \eta},
$$

and the home and foreign goods' market clearing conditions can be expressed as

$$
\begin{array}{l} y _ {t} = y _ {H, t} + y _ {H, t} ^ {*}, \\ y _ {t} ^ {*} = y _ {F, t} + y _ {F, t} ^ {*}. \\ \end{array}
$$

As for the bond market, the home and foreign bonds are in zero net supply. Their market clearing conditions can be expressed as

$$
\begin{array}{l} 0 = b _ {H, t} \exp (r _ {t}) + d _ {t} + n _ {t}, \\ 0 = b _ {F, t} ^ {*} \exp \left(r _ {t} ^ {*}\right) + d _ {t} ^ {*} + n _ {t} ^ {*}, \\ \end{array}
$$

Since the intermediary holds a zero-cost bond portfolio (see Eq. (10.1)), and so does the noise traders (see Eq. (10.2)), and the bonds are in zero supply, then, the market clearing condition implies that the home and foreign households combined must also hold a zero-cost bond portfolio:

$$
b _ {H, t} = - \exp (- e _ {t}) b _ {F, t} ^ {*}.
$$

# 10.A.5 Macro Synthesis

The exogenous variables are the productivity shocks and the noise traders' demand shocks:

$$
(a _ {t}, a _ {t} ^ {*}, \psi_ {t}) _ {t = 0} ^ {\infty}.
$$

There are 27 endogenous variables in each period  $t$ :

$$
(y _ {t}, y _ {H, t}, y _ {F, t}, c _ {t}, k _ {t}, z _ {t}, x _ {t}, \ell_ {t}, b _ {H, t}, q _ {t}, w _ {t}, r _ {t}, p _ {t}, y _ {t} ^ {*}, y _ {H, t} ^ {*}, y _ {F, t} ^ {*}, c _ {t} ^ {*}, k _ {t} ^ {*}, z _ {t} ^ {*}, x _ {t} ^ {*}, \ell_ {t} ^ {*}, b _ {F, t} ^ {*}, q _ {t} ^ {*}, w _ {t} ^ {*}, r _ {t} ^ {*}, p _ {t} ^ {*}, e _ {t}) _ {t = 0} ^ {\infty},
$$

plus two auxiliary variables  $\exp(m_{t+1})$  and  $\exp(m_{t+1}^*)$  that denote the home and foreign SDFs/marginal utility growth:

$$
\begin{array}{l} \exp (m _ {t + 1}) = \delta \frac {u ^ {\prime} (c _ {t + 1})}{u ^ {\prime} (c _ {t})}, \\ \exp (m _ {t + 1} ^ {*}) = \delta \frac {u ^ {\prime} (c _ {t + 1} ^ {*})}{u ^ {\prime} (c _ {t} ^ {*})}. \\ \end{array}
$$

The model implies the following 28 equations in each period, one of which is redundant because the market clearing adds up to the sum of households' budget constraints. These 28 equations include 2 consumption aggregation equations,

$$
\begin{array}{l} c _ {t} + z _ {t} + x _ {t} = \left[ \alpha^ {1 - \eta} y _ {H, t} ^ {\eta} + (1 - \alpha) ^ {1 - \eta} y _ {F, t} ^ {\eta} \right] ^ {1 / \eta}, \\ c _ {t} ^ {*} + z _ {t} ^ {*} + x _ {t} ^ {*} = \left[ \alpha^ {1 - \eta} (y _ {F, t} ^ {*}) ^ {\eta} + (1 - \alpha) ^ {1 - \eta} (y _ {H, t} ^ {*}) ^ {\eta} \right] ^ {1 / \eta}, \\ \end{array}
$$

2 goods market clearing conditions,

$$
y _ {t} = y _ {H, t} + y _ {H, t} ^ {*},
$$

$$
y _ {t} ^ {*} = y _ {F, t} + y _ {F, t} ^ {*},
$$

6 optimality conditions for within-period consumption and labor choices,

$$
\left[ \alpha^ {1 - \eta} y _ {H, t} ^ {\eta} + (1 - \alpha) ^ {1 - \eta} y _ {F, t} ^ {\eta} \right] ^ {1 / \eta - 1} \alpha^ {1 - \eta} y _ {H, t} ^ {\eta - 1} = p _ {t},
$$

$$
\left[ \alpha^ {1 - \eta} y _ {H, t} ^ {\eta} + (1 - \alpha) ^ {1 - \eta} y _ {F, t} ^ {\eta} \right] ^ {1 / \eta - 1} (1 - \alpha) ^ {1 - \eta} y _ {F, t} ^ {\eta - 1} = p _ {t} ^ {*} \exp (- e _ {t}),
$$

$$
\ell_ {t} ^ {1 / \nu} = c _ {t} ^ {- \gamma} w _ {t},
$$

$$
\begin{array}{l} \left[ \alpha^ {1 - \eta} (y _ {F, t} ^ {*}) ^ {\eta} + (1 - \alpha) ^ {1 - \eta} (y _ {H, t} ^ {*}) ^ {\eta} \right] ^ {1 / \eta - 1} \alpha^ {1 - \eta} (y _ {F, t} ^ {*}) ^ {\eta - 1} = p _ {t} ^ {*}, \\ \left[ \alpha^ {1 - \eta} (y _ {F, t} ^ {*}) ^ {\eta} + (1 - \alpha) ^ {1 - \eta} (y _ {H, t} ^ {*}) ^ {\eta} \right] ^ {1 / \eta - 1} (1 - \alpha) ^ {1 - \eta} (y _ {H, t} ^ {*}) ^ {\eta - 1} = p _ {t} \exp (e _ {t}), \\ \left(\ell_ {t} ^ {*}\right) ^ {1 / \nu} = \left(c _ {t} ^ {*}\right) ^ {- \gamma} w _ {t} ^ {*}, \\ \end{array}
$$

8 equations that govern firm production and factor prices,

$$
y _ {t} = \left(\exp \left(a _ {t}\right) k _ {t} ^ {\vartheta} \ell_ {t} ^ {(1 - \vartheta)}\right) ^ {1 - \phi} x _ {t} ^ {\phi},
$$

$$
\ell_ {t} w _ {t} = p _ {t} (1 - \vartheta) (1 - \phi) y _ {t},
$$

$$
k _ {t} q _ {t} = p _ {t} \vartheta (1 - \phi) y _ {t},
$$

$$
x _ {t} = p _ {t} \phi y _ {t},
$$

$$
y _ {t} ^ {*} = \left(\exp \left(a _ {t} ^ {*}\right) \left(k _ {t} ^ {*}\right) ^ {\vartheta} \left(\ell_ {t} ^ {*}\right) ^ {(1 - \vartheta)}\right) ^ {1 - \phi} \left(x _ {t} ^ {*}\right) ^ {\phi},
$$

$$
\ell_ {t} ^ {*} w _ {t} ^ {*} = p _ {t} ^ {*} (1 - \vartheta) (1 - \phi) y _ {t} ^ {*},
$$

$$
k _ {t} ^ {*} q _ {t} ^ {*} = p _ {t} ^ {*} \vartheta (1 - \phi) y _ {t} ^ {*},
$$

$$
x _ {t} ^ {*} = p _ {t} ^ {*} \phi y _ {t} ^ {*},
$$

4 equations that govern capital accumulation,

$$
z _ {t} = k _ {t + 1} - (1 - d) k _ {t} + \frac {\kappa}{2} \frac {(\Delta k _ {t + 1}) ^ {2}}{k _ {t}},
$$

$$
\begin{array}{l} 1 + \kappa \frac {\Delta k _ {t + 1}}{k _ {t}} = \mathbb {E} _ {t} \left[ \delta \left(\frac {c _ {t + 1}}{c _ {t}}\right) ^ {- \gamma} \left(q _ {t + 1} + 1 - d + \kappa \frac {\Delta k _ {t + 2}}{k _ {t + 1}} + \frac {\kappa}{2} \left(\frac {\Delta k _ {t + 2}}{k _ {t + 1}}\right) ^ {2}\right) \right], \\ z _ {t} ^ {*} = k _ {t + 1} ^ {*} - (1 - d) ^ {*} k _ {t} + \frac {\kappa}{2} \frac {(\Delta k _ {t + 1} ^ {*}) ^ {2}}{k _ {t} ^ {*}}, \\ \end{array}
$$

$$
1 + \kappa \frac {\Delta k _ {t + 1} ^ {*}}{k _ {t} ^ {*}} = \mathbb {E} _ {t} \left[ \delta \left(\frac {c _ {t + 1} ^ {*}}{c _ {t} ^ {*}}\right) ^ {- \gamma} \left(q _ {t + 1} ^ {*} + 1 - d + \kappa \frac {\Delta k _ {t + 2} ^ {*}}{k _ {t + 1} ^ {*}} + \frac {\kappa}{2} \left(\frac {\Delta k _ {t + 2} ^ {*}}{k _ {t + 1} ^ {*}}\right) ^ {2}\right) \right],
$$

3 Euler equations for households and the intermediary,

$$
1 = \mathbb {E} _ {t} \left[ \delta \left(\frac {c _ {t + 1}}{c _ {t}}\right) ^ {- \gamma} \exp (r _ {t}) \right], \tag {10.5}
$$

$$
1 = \mathbb {E} _ {t} \left[ \delta \left(\frac {c _ {t + 1} ^ {*}}{c _ {t} ^ {*}}\right) ^ {- \gamma} \exp \left(r _ {t} ^ {*}\right) \right], \tag {10.6}
$$

$$
\mathbb {E} _ {t} \left[ \Delta e _ {t + 1} + r _ {t} - r _ {t} ^ {*} \right] = \chi_ {1} \psi_ {t} - \chi_ {2} \frac {b _ {H , t} \exp \left(r _ {t}\right)}{\bar {Y}}, \tag {10.7}
$$

2 budget constraints for households,

$$
\left(w _ {t} \ell_ {t} + q _ {t} k _ {t}\right) + \exp \left(r _ {t - 1}\right) b _ {H, t - 1} = c _ {t} + z _ {t} + b _ {H, t},
$$

$$
\left(w _ {t} ^ {*} \ell_ {t} ^ {*} + q _ {t} ^ {*} k _ {t} ^ {*}\right) + \exp \left(r _ {t - 1} ^ {*}\right) b _ {F, t - 1} ^ {*} = c _ {t} ^ {*} + z _ {t} ^ {*} + b _ {F, t} ^ {*},
$$

and 1 bond market clearing condition,

$$
b _ {H, t} = - \exp (- e _ {t}) b _ {F, t} ^ {*}. \tag {10.8}
$$

# 10.B Comparing Segmented Markets with Convenience Yields

The market segmentation mechanism we develop in the previous section is in fact very similar to the convenience yield model that we considered in Section 7.C. In the model with market segmentation, the households' and the intermediaries' (log-linearized) Euler equations (10.5)-(10.7) imply the following risk-sharing condition:

$$
\chi_ {1} \psi_ {t} - \chi_ {2} \frac {b _ {H , t} \exp (r _ {t})}{\bar {Y}} = \mathbb {E} _ {t} [ \Delta e _ {t + 1} - \left(m _ {t + 1} - m _ {t + 1} ^ {*}\right) ], \tag {10.9}
$$

which deviates from the complete-market case  $0 = \Delta e_{t + 1} - (m_{t + 1} - m_{t + 1}^{*})$  in Section 1.C by introducing a wedge on the left-hand side and by introducing the expectation operator so that the condition only holds on average.

If we replace these equations with the following Euler equations from the model with convenience yields:

$$
\exp (- \lambda_ {H, t}) = \mathbb {E} _ {t} \left[ \exp (m _ {t + 1} + r _ {t}) \right],
$$

$$
\exp \left(- \lambda_ {F, t}\right) = \mathbb {E} _ {t} \left[ \exp \left(m _ {t + 1} - \Delta e _ {t + 1} + r _ {t} ^ {*}\right) \right], \tag {10.10}
$$

$$
\exp (- \lambda_ {F, t} ^ {*}) = \mathbb {E} _ {t} \left[ \exp \left(m _ {t + 1} ^ {*} + r _ {t} ^ {*}\right) \right],
$$

$$
\exp (- \lambda_ {H, t} ^ {*}) = \mathbb {E} _ {t} \left[ \exp (m _ {t + 1} ^ {*} + \Delta e _ {t + 1} + r _ {t}) \right],
$$

change the bond market clearing condition to include the government's supply:

$$
\bar {b} _ {t} = b _ {H, t} + b _ {H, t} ^ {*},
$$

$$
\bar {b} _ {t} ^ {*} = b _ {F, t} + b _ {F, t} ^ {*},
$$

and modify the households' budget conditions accordingly to include both home and foreign bonds, we are very close to recovering the convenience yield model. More precisely, we can log-linearize the above equations in the convenience yield model, and obtain

$$
- \left(\lambda_ {H, t} ^ {*} - \lambda_ {H, t}\right) = - \left(\lambda_ {F, t} ^ {*} - \lambda_ {F, t}\right) = \mathbb {E} _ {t} \left[ \Delta e _ {t + 1} - \left(m _ {t + 1} - m _ {t + 1} ^ {*}\right) \right]. \tag {10.11}
$$

Both Eq. (10.9) in the segmented market model and Eq. (10.11) in the convenience yield model introduce a wedge to the risk-sharing condition, which breaks the tight link between the exchange rate and the households' marginal utilities. The difference is that, in the model with market segmentation, the wedge is driven by the portfolio imbalances born by the financiers, whereas in the model with convenience yields, the wedge is driven by the households' demand for safe assets.

# 10.B.1 Comparing the Impulse Responses

To facilitate the comparison between the segmented market model and the convenience yield model, we use similar economic set-up and parameter choices. The two models have identical equilibrium conditions characterizing the goods market clearing, consumption and labor choices, production and investment decisions, and factor prices as listed in Section 10.A.5.

Their only difference is in the asset market. The Euler equations (10.5) to (10.7) in the segmented market model, reproduced below,

$$
1 = \mathbb {E} _ {t} \left[ \delta \left(\frac {c _ {t + 1}}{c _ {t}}\right) ^ {- \gamma} \exp (r _ {t}) \right],
$$

$$
1 = \mathbb {E} _ {t} \left[ \delta \left(\frac {c _ {t + 1} ^ {*}}{c _ {t} ^ {*}}\right) ^ {- \gamma} \exp (r _ {t} ^ {*}) \right],
$$

$$
\mathbb {E} _ {t} \big [ \Delta e _ {t + 1} + r _ {t} - r _ {t} ^ {*} \big ] = \chi_ {1} \psi_ {t} - \chi_ {2} \frac {b _ {H , t} \exp (r _ {t})}{\bar {Y}},
$$

are replaced by the Euler equations with convenience yields:

$$
\begin{array}{l} 1 = \mathbb {E} _ {t} \left[ \delta \left(\frac {c _ {t + 1}}{c _ {t}}\right) ^ {- \gamma} \exp (r _ {t}) + \frac {\omega_ {H} b _ {H , t} ^ {- \sigma}}{c _ {t} ^ {- \gamma}} \right], \\ 1 = \mathbb {E} _ {t} \left[ \delta \left(\frac {c _ {t + 1}}{c _ {t}}\right) ^ {- \gamma} \exp \left(- \Delta e _ {t + 1} + r _ {t} ^ {*}\right) + \frac {\omega_ {F} b _ {F , t} ^ {- \sigma}}{c _ {t} ^ {- \gamma}} \exp (e _ {t}) \right], \\ 1 = \mathbb {E} _ {t} \left[ \delta \left(\frac {c _ {t + 1} ^ {*}}{c _ {t} ^ {*}}\right) ^ {- \gamma} \exp (r _ {t} ^ {*}) + \frac {\omega_ {F} ^ {*} (b _ {F , t} ^ {*}) ^ {- \sigma}}{(c _ {t} ^ {*}) ^ {- \gamma}} \right], \\ 1 = \mathbb {E} _ {t} \left[ \delta \left(\frac {c _ {t + 1} ^ {*}}{c _ {t} ^ {*}}\right) ^ {- \gamma} \exp (\Delta e _ {t + 1} + r _ {t}) + \frac {\omega_ {H} ^ {*} (b _ {H , t} ^ {*}) ^ {- \sigma} + (\bar {c} ^ {*}) ^ {- \gamma} \theta_ {H , t} ^ {*}}{(c _ {t} ^ {*}) ^ {- \gamma}} \exp (- e _ {t}) \right]. \\ \end{array}
$$

This set of equations, based on Jiang [2023a] that we discussed in Section 7.C, is a simple specification of the general case described by Eq. (10.10). It allows households to freely trade both home and foreign bonds, but introduces the convenience yield wedges in their bond valuations.

Moreover, the bond market clearing conditions are different: the convenience yield model assumes positive net supplies, and replaces Eq. (10.8) in the segmented market model by

$$
b _ {H, t} + b _ {H, t} ^ {*} = \bar {b},
$$

$$
b _ {F, t} ^ {*} + b _ {F, t} = \bar {b} ^ {*}.
$$

The household budget constraints are also slightly different because households can trade foreign bonds in the convenience yield model, but not in the segmented market model.

Table 10.1 reports our parameter choices in the two models. The common parameters describe the real economy which is common to both models. The segmented market parameters describe the parameters related to the intermediated bond market in the segmented market model. These parameters follow from Itskhoki and Mukhin [2021]. The convenience yield parameters describe the parameters related to the bond demand in the convenience yield model, and follow from Jiang [2023a].

Figure 10.1 reports the impulse responses to the  $\psi_t$  shock in the segmented market model and to the  $\lambda_{H,t}$  shock in the convenience yield model. A period represents a quarter, and we plot the responses in the first 25 years. We calibrate the magnitude of the shocks such that they generate the same amount of dollar appreciation in the first period. We choose a persistence parameter of 0.97 for both the noise trading shock and the convenience yield shock, which will make the exchange rate close to a random walk.

Let us begin with the segmented market model. We consider a negative  $\psi_t$  shock, which increases the amount of foreign bond that the financiers have to hold. As the financiers require a higher compensation to hold the foreign currency, the dollar appreciates and the dollar's expected excess return decreases, which are shown in the first row of Figure 10.1. The U.S. bond also becomes relatively more expensive, which lowers its yield relative to the foreign yield.

This is good news for the U.S. households. The second row of Figure 10.1 reports the impulse responses in consumption and production. Real dollar appreciation increases the U.S. households' purchasing power, which increases their relative consumption while incentivizing the foreign households to supply more labor and produce more. As a result, the U.S. consumption increases relative to the foreign consumption, while the U.S. labor and production decline.

The U.S. trade balance  $tb$  also declines as a result.

The third row of Figure 10.1 reports the impulse responses in bond holdings. Because the households can only hold the domestic bond, the U.S. holdings of the foreign bond  $b_{F}$  and the foreign holdings of the U.S. bond  $b_{H}^{*}$  are zero. The noise trading shock also triggers a persistent increase in the foreign households' savings  $b_{F}^{*}$  in the foreign bond and a persistent decline in the U.S. households' savings  $b_{H}$  in the U.S. bond. This has to be understood in conjunction with the households' investment decisions, which we will discuss in the fifth row of this figure. As the foreign households are investing less in the physical capital, more of their savings are channeled into the local bond market.

We can also back out the implied convenience yields from the segmented market model that satisfy the households' Euler equations, which we report in the fourth row. Specifically, we can define the

<table><tr><td>Parameter</td><td>Notation</td><td>Value</td></tr><tr><td colspan="3">Common parameters</td></tr><tr><td>Subjective discount factor</td><td>δ</td><td>0.99</td></tr><tr><td>Relative risk averse</td><td>γ</td><td>2.0</td></tr><tr><td>Frisch elasticity</td><td>ν</td><td>1</td></tr><tr><td>Intermediate goods share</td><td>φ</td><td>0.5</td></tr><tr><td>Capital share in value added</td><td>θ</td><td>0.3</td></tr><tr><td>Depreciation rate</td><td>d</td><td>0.02</td></tr><tr><td>Capital adjustment cost</td><td>κ</td><td>50</td></tr><tr><td>Trade home bias</td><td>α</td><td>0.93</td></tr><tr><td>Trade elasticity of substitution</td><td>η</td><td>0.33</td></tr><tr><td colspan="3">segmented market parameters</td></tr><tr><td>Transmission from shock to UIP</td><td>χ1</td><td>1</td></tr><tr><td>Coefficient of NFA on UIP</td><td>χ2</td><td>0.001</td></tr><tr><td>Volatility of financial shock</td><td>σψ</td><td>0.01</td></tr><tr><td>Persistence of financial shock</td><td>ρψ</td><td>0.97</td></tr><tr><td colspan="3">Convenience yield parameters</td></tr><tr><td>Bond demand curvature</td><td>σ</td><td>3</td></tr><tr><td>Home investor&#x27;s utility from home bond</td><td>ωH</td><td>0.0658</td></tr><tr><td>Home investor&#x27;s utility from foreign bond</td><td>ωF</td><td>0.000264</td></tr><tr><td>Foreign investor&#x27;s utility from home bond</td><td>ωH*</td><td>0.0667</td></tr><tr><td>Foreign investor&#x27;s utility from foreign bond</td><td>ωF*</td><td>0.0171</td></tr><tr><td>Persistence of bond demand shock</td><td>ρθH*</td><td>0.97</td></tr><tr><td>Volatility of bond demand shock</td><td>σθH*</td><td>0.024</td></tr></table>

Table 10.1: Parameter Values.

wedges  $\lambda_{F,t}^{SM}$  and  $\lambda_{H,t}^{SM,*}$  as

$$
\exp (- \lambda_ {F, t} ^ {S M}) = \mathbb {E} _ {t} \left[ \delta \left(\frac {c _ {t + 1}}{c _ {t}}\right) ^ {- \gamma} \exp (- \Delta e _ {t + 1} + r _ {t} ^ {*}) \right],
$$

$$
\exp (- \lambda_ {H, t} ^ {S M, *}) = \mathbb {E} _ {t} \left[ \delta \left(\frac {c _ {t + 1} ^ {*}}{c _ {t} ^ {*}}\right) ^ {- \gamma} \exp (\Delta e _ {t + 1} + r _ {t}) \right],
$$

and the other two wedges for domestic bond holdings,  $\lambda_{H,t}^{SM}$  and  $\lambda_{F,t}^{SM,*}$ , are always zero because the agents can freely trade their local

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/f166158c40eed7cdd19ead3f92953a36231dc9af3c8c4dadf7a72eebe115246f.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/e5385c9488138e1a4eda1fbfcb7216410022c8172a8fe26c1512573fb58b69dc.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/fc5814e79d538fd58f68f3c04e24f0806c82948305153e48baec665bb748e214.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/15c9508bd4a87b5c4c60a6d61a9d3b16d98b79d08e84498d2f9eda0145ca7e7c.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/5bd292735e753e4e0384c12fa9e477d72d0728e964419d1ab5b271fa46dd419b.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/4704d250661ce9445d3a5f7468672b38ad0039b2730ce7777ef4a4fa922c1855.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/884380ca9e097fc0df79cde214d658a94d306a1b09b59871ac01709d3868b6b5.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/9556b1237f7d6190576a2807f68a10b21611ce592c64f0f27675ccf8fa0c3a99.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/14103c0290798b6eea1a0a4d621b50a2d83578503a8074f02e33a0e1fdc33092.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/c1b1fb69e645eaf79e1d1f08404c798c56870fe441e9ae1034f24d417bb10602.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/96dfb23cfea5102002460f93d8ae072e2800acd5c6c8a068412a47fcb8b465e3.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/bc000ff792c13a99de2eefc71668e93163daf0c71d71beb764c5fe035fb2438e.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/7da966f7e3dbf2ce81c9ac7b2805ea22a45b1aa3f052094cfc53984d9e8fdf12.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/b96f96e8996a6eadbefb56c6ab549d3532edc0bdd701002587b4e54ec7ef2c8e.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/3d8380f448b2185c7868c03c2db549a406f3b3a7f8e124b6d15335f7537f66b8.jpg)  
Figure 10.1: Impulse Responses to Euler Equation Wedges in Segmented Market and Convenience Yield Models.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/5814510890416b1271a85b205206a9175053c656557b8229d7718a85da824de4.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/47f6c99afd8b599400171745d20aefae82fd630222c48147302ecdbb6955851c.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/4f83b19d279b5cfc6179e86896ecf40f4179fb8c79302cdc37e1e83bf1580fb5.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/ebbdb6d6bd0a2ab7164b1af27614b8ab7ef1ae2a90e30653d7982c69862bb9b4.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/80f04aad3f8361443f3c43a55e6cc9456086ce9a95f56c05bc21c0baee276685.jpg)

bonds by construction. A noise trader shock that appreciates the U.S. dollar increases the shadow convenience yield that the foreign households derive from the U.S. bond,  $\lambda_{H,t}^{SM,*}$ , and decreases the shadow convenience yield that the U.S. households derive from the foreign bond,  $\lambda_{F,t}^{SM}$ . These shadow convenience yield adjustments imply that the foreign households must act as if they find it highly desirable to hold the U.S. bond in order to justify why the equilibrium excess return on the dollar is so low.

Finally, in the fifth row of Figure 10.1, we report the impulse responses in the capital, investment, and capital rental price. In response to the noise trading shock, the U.S. households increase their investment in the physical capital relative to the foreign households, which leads to a higher capital stock  $k$  relative to  $k^*$  and a higher investment  $z$  relative to  $z^*$ . As the marginal product of capital is decreasing as the capital stock increases, the capital rental price  $q$  also declines relative to  $q^*$ . These patterns are driven by a discount rate channel: as the U.S. households experience a higher consumption upon the arrival of the noise trading shock, they expect a lower consumption growth rate in the future periods, which lowers their discount rate and makes investment more attractive. As a result, investment and consumption move in tandem.

Now, let us turn to the convenience yield model. We consider a positive  $\theta_{H,t}^{*}$  shock, which increases the foreign households' demand for the U.S. bond. This shock increases the convenience yield that the foreign households derive from the U.S. bond, which also appreciates the dollar, lowers the dollar's expected excess return, and lowers the dollar bond's yield. As we discussed in Section 7.C, this is also good news for the U.S. households, as it increases the U.S. consumption. When we introduce labor and production in this model, dollar appreciation also increases the foreign households' labor supply and production in this model, and decreases the U.S. trade balance. The consumption dynamics also leads the U.S. households to increase investment in the physical capital, and the convenience yield shock also increases the foreign households' convenience yield  $\lambda_{H}^{*}$  on the U.S. bond and decreases the U.S. households' convenience yield  $\lambda_{F}$  on the foreign bond.

In this way, the segmented market model and the convenience yield model generate very similar impulse responses in the exchange rate, interest rate, consumption, production, trade balance, and investment. The main difference lies in the bond market. In the convenience yield model, the foreign households increase their holdings of the U.S. bond  $b_{H}^{*}$ , whereas the U.S. households substitute towards the foreign bond. In the segmented market model, the households do not have access to the bond market in the other country, and the noise

traders instead accumulate a long position on the U.S. bond. So, if we want to distinguish between the two models, it is important to look at the quantities and flows in the bond market, which is a promising direction for future research. For example, do debt holdings by different sectors and by different countries vary systematically with the business cycles? And do they align with the exchange rate movements as predicted by either model?

Moreover, the segmented market model and the convenience yield model also generate different long-run dynamics. For example, while the dollar exchange rate and the U.S.-foreign consumption differential increase persistently upon the shock's arrival in both models, they eventually decline below the steady-state level in the segmented market model, but not in the convenience yield model. To understand this difference, let us recall the net foreign assets (NFA) dynamics (9.4), reproduced below:

$$
n f a _ {t} - n f a _ {t - 1} = t b _ {t} + (i b _ {t} + c g _ {t}).
$$

In both models, the NFA shifts upon the shock's arrival, but it needs to revert to the steady-state level in the long run, which requires adjustments in either the trade balance  $tb$  or the financial flow  $ib + cg$  in subsequent periods. Formally, since  $\lim_{k\to \infty}\mathbb{E}_t[nfa_{t + k}] = \overline{nfa}$ , we can iterate the NFA dynamics (9.4) and obtain

$$
n f a _ {t} = \overline {{n f a}} - \sum_ {k = 1} ^ {\infty} [ t b _ {t + k} + (i b _ {t + k} + c g _ {t + k}) ],
$$

which means that if the U.S. runs a negative NFA today, it has to be offset by positive trade balances or by positive financial gains relative to the foreign country [Gourinchas and Rey, 2007a]. In the segmented market model, this is achieved only by the trade channel: the negative U.S. trade balance in the near term is offset by a positive trade balance in the long term. $^{1}$

In the convenience yield model, the valuation effects matter: the negative U.S. NFA is offset by higher financial gains that the U.S. earn from holding the foreign bond relative to what the foreign country earns from holding the U.S. bond, which is precisely the seigniorage revenue that we characterize in Section 7.C. In this case, the U.S. does not have to run positive trade balances in the long term to pay back their trade deficits in the short term. Another place to see this difference is in the NFA dynamics that we plot in the last panel of Figure 10.1. While the U.S. households run trade deficits in both models, they accumulate negative NFA in the segmented market model, which has to be paid back by trade surpluses in the long term. In comparison, the U.S. households do not accumulate a large negative NFA in the convenience yield model, because the trade

In Itskhoki and Mukhin [2021], the model is linearized around a steady state with zero bond positions, which means that the valuation effects  $ib + cg$  are equal to zero in the first order. In extensions with non-zero NFA or nonzero gross positions in the steady state, the valuation effects can matter in the first order.

deficits are funded by the seigniorage revenue. As such, the segmented market model and the convenience yield model emphasize trade vs. financial drivers of the NFA dynamics.

Finally, different microfoundations of the exchange rate wedge can have different policy implications. Under the segmented market view, the government can stabilize the exchange rate by affecting the financiers' balance sheets or their expectation of the currency risk [Itskhoki and Mukhin, 2023]. Under the convenience yield view, exchange rate intervention can take the form of regulating the supply of safe assets, which can be done by either fiscal or monetary policies [Jiang, Krishnamurthy, and Lustig, 2020a].

# 10.B.2 The Cyclicality of the Wedge

Given the similarity between the segmented market model and the convenience yield model, how do we think about them? We make three points. First, they both suggest that the wedge in the Euler equations for cross-country bond holdings is an important ingredient to understand exchange rate dynamics. This wedge can have different microfoundations, but they have similar effects that disentangle the exchange rate movement from the households' marginal utilities.

Second, the convenience yield mechanism provides an economic interpretation for the cyclicality of the wedge, because it tends to move in the direction that appreciates the dollar in flight-to-safety episodes. As a result, the wedge does not just produce exchange rate disconnect, it also makes the dollar more counter-cyclical to the global business cycles than other currencies. Moreover, the convenience yield interpretation also offers empirical measurement of the wedge, as we discussed in Section 4.C.

Third, is the bond convenience yield on the dollar bond all there is to the wedge-based view of the exchange rate dynamics? Let us return to the Euler equations (10.10) with slightly different labeling:

$$
\begin{array}{l} \exp (- \lambda_ {t}) = \mathbb {E} _ {t} \left[ \exp \left(m _ {t + 1} + r _ {t}\right) \right], \\ \exp (- \xi_ {t}) = \mathbb {E} _ {t} \left[ \exp \left(m _ {t + 1} - \Delta e _ {t + 1} + r _ {t} ^ {*}\right) \right], \\ \exp (- \xi_ {t} ^ {*}) = \mathbb {E} _ {t} \left[ \exp (m _ {t + 1} ^ {*} + r _ {t} ^ {*}) \right], \\ \exp \left(- \lambda_ {t} ^ {*}\right) = \mathbb {E} _ {t} \left[ \exp \left(m _ {t + 1} ^ {*} + \Delta e _ {t + 1} + r _ {t}\right) \right], \\ \end{array}
$$

which emphasizes that  $\lambda_{t}$  and  $\lambda_{t}^{*}$  are the non-pecuniary utilities that home and foreign households derive from the U.S. bond, whereas  $\xi_{t}$  and  $\xi_{t}^{*}$  are the non-pecuniary utilities that home and foreign households derive from the foreign bond. Assuming joint normality, Jiang, Krishnamurthy, and Lustig [2023a] show the following result.

Proposition 10.2. The exchange rate's conditional cyclicality can be expressed as

$$
c o v _ {t} \left(m _ {t + 1} - m _ {t + 1} ^ {*}, \Delta e _ {t + 1}\right) = v a r _ {t} \left(\Delta e _ {t + 1}\right) + \left(\lambda_ {t} ^ {*} - \lambda_ {t}\right) - \left(\xi_ {t} ^ {*} - \xi_ {t}\right). \tag {10.12}
$$

The proof is presented in Appendix A.43. What is remarkable about this result is that the wedges  $\lambda_{t},\lambda_{t}^{*},\xi_{t},\xi_{t}^{*}$  enter the determination of the exchange rate cyclicity in their levels as opposed to their covariances with the SDFs, so that even a constant wedge can affect the exchange rate cyclicity. This is because the presence of the wedges endogenously requires the exchange rate cyclicity to adjust to be consistent with the Euler equations.

If our objective is to generate a zero or negative covariance between the SDF differential and the exchange rate movement, i.e.,  $cov_{t}(m_{t,t+1} - m_{t,t+1}^{*}, \Delta s_{t+1}) \leq 0$ , which is motivated by the finding that the exchange rate is acyclical or even procyclical with respect to the local business cycles [Backus and Smith, 1993], then, our usual specification of the dollar convenience yield, under which the foreign households derive a higher non-pecuniary utility from the U.S. bond than the U.S. investors, i.e.,

$$
\lambda_ {t} ^ {*} - \lambda_ {t} > 0,
$$

will not suffice. In fact, holding the exchange rate variance constant, a higher convenience yield differential would increase the covariance between the SDF differential and the exchange rate movement.

We need the foreign households to also derive higher convenience yield on the foreign bond than the U.S. households, i.e.,

$$
\left. \xi_ {t} ^ {*} - \xi_ {t} > 0, \right.
$$

which could lower the exchange rate cyclicality and even make it negative, so that the foreign currency depreciates when the foreign marginal utility is high. This condition can be interpreted as the U.S. households finding it very undesirable to hold the foreign bond, which can result from a strong home bias. In fact, we can rewrite Eq. (10.12) as

$$
c o v _ {t} \left(m _ {t, t + 1} - m _ {t, t + 1} ^ {*}, \Delta s _ {t + 1}\right) = v a r _ {t} \left(\Delta s _ {t + 1}\right) + \left(\lambda_ {t} ^ {*} + \xi_ {t}\right) - \left(\xi_ {t} ^ {*} + \lambda_ {t}\right),
$$

where  $(\lambda_t^* + \xi_t)$  are the Euler equation wedge for cross-country investments from the perspectives of both households, and  $(\xi_t^* + \lambda_t)$  are the Euler equation wedge for domestic investments from the perspectives of both households. A stronger home bias in the form of a negative convenience yield for cross-country investments in either country can make the exchange rate more pro-cyclical with respect to the local business cycles.

Given this discussion, what should a realistic specification of the Euler equation wedges look like? A positive convenience yield on the U.S. bond is still helpful for generating a countercyclical dollar exchange rate to global business cycles, as well as for matching other stylized facts about the dollar's specialness, but a higher degree of home bias is also needed to capture the cyclicality of foreign currencies with respect to their local business cycles. In other words, not only do we need the foreign households to really like the U.S. bond, but we also need the U.S. households to dislike the foreign bonds.

Of course, home bias is an endogenous outcome, which could be driven by many factors in the underlying economy and financial markets. The segmented market set-up we considered in this chapter is potentially one such factor. Another interpretation of the home bias is finance repression, which could also lead the domestic agents to prefer the home bond to the foreign bond and lower the relative desirability of the cross-country investments. For a concrete example, if a country's regulators change the legal framework to make its local bond a better collateral, or a better asset for meeting liquidity requirements, or an asset with more favorable tax treatments, then, the local bond will become more attractive to the local agents.

# 10.B.3 Segmented Markets vs Incomplete Markets

Segmented markets are related to but different from incomplete markets. The literature on the international asset market is moving towards a more precise and refined definition of what assets are available and which agents can trade them.

Incomplete markets usually refer to the case in which the asset space does not span all the shocks, but all agents can trade the available assets. For this reason, we also use the term incomplete spanning to describe this case. In Section 5.A, we considered one such example in which home and foreign households can only trade risk-free bonds which do not span all the shocks.

In comparison, segmented markets usually refer to the case in which, in addition to the possibility that the asset space does not span all the shocks, not all agents can trade the available assets. In Section 10.A, we considered one such example in which the households can only trade the local bond, whereas the financiers can trade both countries' bonds. In this case, the markets are segmented and intermediated.

Note that these two cases are not mutually exclusive. In reality, markets can be both incomplete and segmented. In the recent literature, Sandulescu, Trojani, and Vedolin [2021], Chernov, Haddad, and Itskhoki [2023] study the implications of market segmentation using

model-free approaches. Both papers show that market segmentation breaks the strong link between exchange rates and SDFs, which helps address salient features of international asset returns. In particular, markets in which trading in various instruments (including bonds) is intermediated by various financial actors are likely to be a very relevant case, a point that is in broad agreement with a large macro-finance literature.

# 10.B.4 Other Works

Bruno and Shin [2015a,b] emphasize the role of global banks, who tap dollar funding from financial centers and lend to local banks in foreign countries. When the dollar appreciates, currency mismatch weakens the local banks' balance sheets and contracts their risk-taking capacity. As a result, the dollar's strength impacts global financial conditions and generates dollar shortage in foreign countries. Greenwood, Hanson, Stein, and Sunderam [2020], Gourinchas, Ray, and Vayanos [2022] develop models with financiers who trade in both the currency market and the home and foreign long-term bond markets. The variation in their risk-taking capacity leads to comovements in exchange rates and bond term premia.

The deviation from covered interest rate parity as we discussed in Section 2.A.6 is also a natural place to consider market segmentation and financial intermediation. The key mechanism usually involves constrained financiers and other sectors' imbalanced hedging demand [Borio, Iqbal, McCauley, McGuire, and Sushko, 2018, Andersen, Duffie, and Song, 2019, Avdjiev, Du, Koch, and Shin, 2019, Liao and Zhang, 2020, Amador, Bianchi, Bocola, and Perri, 2020, Cenedese, Della Corte, and Wang, 2021, Rime, Schrimpf, and Syrstad, 2022]

The presence of financial frictions also makes it possible for the policy interventions to improve outcomes and mitigate frictions. See Fanelli and Straub [2020], Bocola and Lorenzoni [2020], Itskhoki and Mukhin [2022]. In the context of the model in Section 10.A, if the policymaker can lower the exchange rate volatility, or at least convince the financiers that the policymaker is committed to interventions that lower the exchange rate volatility, then, the financiers will require a lower currency risk premium to absorb a given amount of portfolio imbalances, which, by Eq. (10.4), will indeed make the exchange rate less volatile.

Empirically, there is a large literature that shows intermediary balance sheet quantities do matter to asset prices [Adrian, Etula, and Muir, 2014, He, Kelly, and Manela, 2017], which is either loosely or precisely related to the equilibrium conditions in models with financial intermediaries.

# 10.C A Model of Domestic Financial Intermediation

Next, we consider a different type of intermediation, which focuses on the market segmentation within a country. To be clear, the 2008 global financial crisis has spurred a large macro-finance literature on domestic financial intermediation. What we focus on here is only one specific type that is useful for thinking about exchange rate dynamics.

This model is a two-country version of Hassan [2013]. We use country-specific tradable goods instead of non-tradable goods to bring the model closer to the baseline model in Section 1.A. This model can be seen as a simplified way of specifying the monetary model by Alvarez, Atkeson, and Kehoe [2002, 2009].

# 10.C.1 Households

We again consider two countries: home and foreign. There is a unit mass of households in each country. We deviate from the baseline model in Section 1.A by assuming that some households do not have access to the financial markets. Specifically, we assume that each country has two types of households: active and inactive.

Active households can trade a complete set of state-contingent claims in international markets. They behave like the households in the complete-market version of the baseline model in Section 1.C. Let  $\phi \in (0,1)$  denote the fraction of these households in each country. We use  $(a)$  to denote the active households. The active households in the home country maximize their expected lifetime utility

$$
\mathbb {E} _ {0} \left[ \sum_ {t = 0} ^ {\infty} \delta^ {t} u (c _ {t} (a)) \right],
$$

and their consumption is a Cobb-Douglas aggregate of home and foreign goods:

$$
c _ {t} (a) = (c _ {H, t} (a)) ^ {\alpha} (c _ {F, t} (a)) ^ {1 - \alpha}.
$$

Inactive households have identical preferences. We use  $(i)$  to denote the inactive households. They maximize their expected lifetime utility

$$
\mathbb {E} _ {0} \left[ \sum_ {t = 0} ^ {\infty} \delta^ {t} u (c _ {t} (i)) \right],
$$

and their consumption is a Cobb-Douglas aggregate of home and foreign goods:

$$
c _ {t} (i) = \left(c _ {H, t} (i)\right) ^ {\alpha} \left(c _ {F, t} (i)\right) ^ {1 - \alpha}.
$$

They cannot trade any financial claims. Instead, they cede their endowments to the active households and receive a stochastic transfer, which is denoted as  $\tau_{t}$  for each inactive household in the home country and  $\tau_{t}^{*}$  for each inactive household in the foreign country. Inactive households can still participate in the goods market, where they use their transfers to purchase home and foreign goods.

Because the active and inactive households in the home country have identical preferences, they face the same within-period problem and will choose the same consumption bundle, which is again identical to the solution in Section 1.A. Therefore, we can use the home consumption bundle to refer to the numérique shared by both types of households.

Let  $p_t$  denote the price of home goods in the home consumption bundle, let  $a_{t-1}(a)$  denote the financial wealth held by the active households, and let  $\exp(r_t^a)$  denote the gross return on this wealth portfolio. The home active households' budget constraint can be expressed as

$$
p _ {t} y _ {t} + \phi a _ {t - 1} (a) \exp \left(r _ {t} ^ {a}\right) = \phi \left(c _ {t} (a) + a _ {t} (a)\right) + (1 - \phi) \tau_ {t},
$$

and the home inactive households' budget constraint can be expressed as

$$
(1 - \phi) \tau_ {t} = (1 - \phi) c _ {t} (i).
$$

The active and inactive households in the foreign country are similarly specified. This model simplifies to the complete-market version of the baseline model in Section 1.C when the share of active households approaches 1, i.e.,  $\phi \rightarrow 1$ .

# 10.C.2 The Social Planner's Solution

Because the active households have access to the complete markets, the First Welfare Theorem holds for them. We can again use the social planner approach to derive the equilibrium allocation. Specifically, the social planner maximizes a weighted sum of the active households' welfare:

$$
\mathbb {E} _ {0} \left[ \sum_ {t = 0} ^ {\infty} \delta^ {t} (\pi u (c _ {t}) + (1 - \pi) u (c _ {t} ^ {*})) \right].
$$

If we only consider the active agents from home and foreign countries, the transfer to the inactive households takes away resources available to them. Effectively, the resources that the social planner allocates between the active households in home and foreign countries are equal to the total endowment minus the transfer. Thus, we can

write the social planner's resource constraints as

$$
y _ {t} - (1 - \phi) \left(c _ {H, t} (i) + c _ {H, t} ^ {*} (i)\right) = \phi \left(c _ {H, t} (a) + c _ {H, t} ^ {*} (a)\right),
$$

$$
y _ {t} ^ {*} - (1 - \phi) \left(c _ {F, t} (i) + c _ {F, t} ^ {*} (i)\right) = \phi \left(c _ {F, t} (a) + c _ {F, t} ^ {*} (a)\right),
$$

where we moved the inactive households' consumption to the left-hand side in order to emphasize what is available to the active households.

The social planner's Lagrangian is

$$
\begin{array}{l} \mathbb {E} _ {0} \left[ \sum_ {t = 1} ^ {\infty} \delta^ {t} (\pi u (c _ {t} (a)) + (1 - \pi) u (c _ {t} ^ {*} (a))) \right. \\ + \sum_ {t = 1} ^ {\infty} \zeta_ {H, t} \left(y _ {t} - \phi \left(c _ {H, t} (a) + c _ {H, t} ^ {*} (a)\right) - (1 - \phi) \left(c _ {H, t} (i) + c _ {H, t} ^ {*} (i)\right)\right) \\ \left. + \sum_ {t = 1} ^ {\infty} \zeta_ {F, t} (y _ {t} ^ {*} - \phi (c _ {F, t} (a) + c _ {F, t} ^ {*} (a)) - (1 - \phi) (c _ {F, t} (i) + c _ {F, t} ^ {*} (i))) \right], \\ \end{array}
$$

which implies the following standard first-order conditions

$$
\begin{array}{l} \text {w . r . t .} c _ {H, t} (a): \quad \delta^ {t} \pi u ^ {\prime} (c _ {t} (a)) \alpha \left(\frac {c _ {F , t} (a)}{c _ {H , t} (a)}\right) ^ {1 - \alpha} = \phi \zeta_ {H, t}, \\ \text {w . r . t .} c _ {H, t} ^ {*} (a): \quad \delta^ {t} (1 - \pi) u ^ {\prime} (c _ {t} ^ {*} (a)) (1 - \alpha) \left(\frac {c _ {F , t} ^ {*} (a)}{c _ {H , t} ^ {*} (a)}\right) ^ {\alpha} = \phi \zeta_ {H, t}, \\ \begin{array}{l l} \text {w . r . t .} c _ {F, t} (a): & \delta^ {t} \pi u ^ {\prime} (c _ {t} (a)) (1 - \alpha) \left(\frac {c _ {H , t} (a)}{c _ {F , t} (a)}\right) ^ {\alpha} = \phi \zeta_ {F, t}, \end{array} \\ \text {w . r . t .} c _ {F, t} ^ {*} (a): \quad \delta^ {t} (1 - \pi) u ^ {\prime} (c _ {t} ^ {*} (a)) \alpha \left(\frac {c _ {H , t} ^ {*} (a)}{c _ {F , t} ^ {*} (a)}\right) ^ {1 - \alpha} = \phi \zeta_ {F, t}. \\ \end{array}
$$

# 10.C.3 Macro Synthesis

The exogenous variables are the endowment shocks and the transfer shocks:

$$
\left(y _ {t}, y _ {t} ^ {*}, \tau_ {t}, \tau_ {t} ^ {*}\right) _ {t = 0} ^ {\infty}.
$$

There are 14 endogenous variables in each period  $t$ :

$$
\left(c _ {t} (a), c _ {H, t} (a), c _ {F, t} (a), c _ {t} (i), c _ {H, t} (i), c _ {F, t} (i), \zeta_ {H, t}, c _ {t} ^ {*} (a), c _ {H, t} ^ {*} (a), c _ {F, t} ^ {*} (a), c _ {t} ^ {*} (i), c _ {H, t} ^ {*} (i), c _ {F, t} ^ {*} (i), \zeta_ {F, t}\right) _ {t = 0} ^ {\infty}.
$$

The model implies the following 14 equations in each period, which include 4 consumption aggregation equations,

$$
\begin{array}{l} c _ {t} (a) = \left(c _ {H, t} (a)\right) ^ {\alpha} \left(c _ {F, t} (a)\right) ^ {1 - \alpha}, \\ c _ {t} ^ {*} (a) = \left(c _ {F, t} ^ {*} (a)\right) ^ {\alpha} \left(c _ {H, t} ^ {*} (a)\right) ^ {1 - \alpha}, \\ c _ {t} (i) = \left(c _ {H, t} (i)\right) ^ {\alpha} \left(c _ {F, t} (i)\right) ^ {1 - \alpha}, \\ c _ {t} ^ {*} (i) = (c _ {F, t} ^ {*} (i)) ^ {\alpha} (c _ {H, t} ^ {*} (i)) ^ {1 - \alpha}, \\ \end{array}
$$

2 social planner's resource constraints,

$$
y _ {t} = \phi \left(c _ {H, t} (a) + c _ {H, t} ^ {*} (a)\right) + (1 - \phi) \left(c _ {H, t} (i) + c _ {H, t} ^ {*} (i)\right),
$$

$$
y _ {t} ^ {*} = \phi (c _ {F, t} (a) + c _ {F, t} ^ {*} (a)) + (1 - \phi) (c _ {F, t} (i) + c _ {F, t} ^ {*} (i)),
$$

4 active households' first-order conditions,

w.r.t.  $c_{H,t}(a)$  :  $\delta^t\pi u'(c_t(a))\alpha \left(\frac{c_{F,t}(a)}{c_{H,t}(a)}\right)^{1 - \alpha}$  =  $\phi \zeta_{H,t},$  
w.r.t.  $c_{H,t}^{*}(a)$ :  $\delta^t (1 - \pi)u'(c_t^* (a))(1 - \alpha)\left(\frac{c_{F,t}^*(a)}{c_{H,t}^*(a)}\right)^\alpha = \phi \zeta_{H,t},$  
w.r.t.  $c_{F,t}(a)$  ..  $\delta^t\pi u'(c_t(a))(1 - \alpha)\left(\frac{c_{H,t}(a)}{c_{F,t}(a)}\right)^\alpha$  =  $\phi \zeta_{F,t},$  
w.r.t.  $c_{F,t}^{*}(a)$ $\delta^t (1 - \pi)u'(c_t^* (a))\alpha \left(\frac{c_{H,t}^*(a)}{c_{F,t}^*(a)}\right)^{1 - \alpha}$  =  $\phi \zeta_{F,t},$

2 inactive households' budget constraints,

$$
\tau_ {t} = c _ {t} (i),
$$

$$
\tau_ {t} ^ {*} = c _ {t} ^ {*} (i),
$$

2 inactive households' within-period solutions,

$$
\frac {c _ {H , t} (a)}{c _ {F , t} (a)} = \frac {c _ {H , t} (i)}{c _ {F , t} (i)},
$$

$$
\frac {c _ {H , t} ^ {*} (a)}{c _ {F , t} ^ {*} (a)} = \frac {c _ {H , t} ^ {*} (i)}{c _ {F , t} ^ {*} (i)}.
$$

This equation system does not contain equilibrium prices such as goods prices and the exchange rate, because the solution to the social planner's problem directly implies the equilibrium allocation. Once we have the equilibrium allocation, we can then use the within-period solutions to solve for the equilibrium prices. As shown in Section 1.C, the optimality conditions for the active households' optimization problem imply that the goods prices are given by

$$
p _ {t} = \alpha \left(\frac {c _ {F , t} (a)}{c _ {H , t} (a)}\right) ^ {1 - \alpha},
$$

$$
p _ {t} ^ {*} = \alpha \left(\frac {c _ {H , t} ^ {*} (a)}{c _ {F , t} ^ {*} (a)}\right) ^ {1 - \alpha},
$$

and the exchange rate is given by

$$
\pi u ^ {\prime} \left(c _ {t} (a)\right) = (1 - \pi) u ^ {\prime} \left(c _ {t} ^ {*} (a)\right) \exp \left(e _ {t}\right).
$$

# 10.C.4 Linearized Solution

We use  $\hat{x} = \log (x / \bar{x})$  to denote the log deviation of a variable  $x$  from its steady state  $\bar{x}$ . For example,  $\hat{c}_t(a) = \log (c_t(a) / \bar{c}_t(a))$ . The exchange rate  $\hat{e}_t = e_t - \bar{e}$  is an exception, since it is already in log.

Assume the households have CRRA utility with parameter  $\gamma$ . Below, we take the steady state variables as given and log linearize the system, which includes 4 consumption aggregation equations,

$$
\hat {c} _ {t} (a) = \alpha \hat {c} _ {H, t} (a) + (1 - \alpha) \hat {c} _ {F, t} (a),
$$

$$
\hat {c} _ {t} ^ {*} (a) = \alpha \hat {c} _ {F, t} ^ {*} (a) + (1 - \alpha) \hat {c} _ {H, t} ^ {*} (a),
$$

$$
\hat {c} _ {t} (i) = \alpha \hat {c} _ {H, t} (i) + (1 - \alpha) \hat {c} _ {F, t} (i),
$$

$$
\hat {c} _ {t} ^ {*} (i) = \alpha \hat {c} _ {F, t} ^ {*} (i) + (1 - \alpha) \hat {c} _ {H, t} ^ {*} (i),
$$

2 social planner's resource constraints,

$$
\bar {y} \hat {y} _ {t} = \phi (\bar {c} _ {H} (a) \hat {c} _ {H, t} (a) + \bar {c} _ {H} ^ {*} (a) \hat {c} _ {H, t} ^ {*} (a)) + (1 - \phi) (\bar {c} _ {H} (i) \hat {c} _ {H, t} (i) + \bar {c} _ {H} ^ {*} (i) \hat {c} _ {H, t} ^ {*} (i)),
$$

$$
\bar {y} ^ {*} \hat {y} _ {t} ^ {*} = \phi (\bar {c} _ {F} (a) \hat {c} _ {F, t} (a) + \bar {c} _ {F} ^ {*} (a) \hat {c} _ {F, t} ^ {*} (a)) + (1 - \phi) (\bar {c} _ {F} (i) \hat {c} _ {F, t} (i) + \bar {c} _ {F} ^ {*} (i) \hat {c} _ {F, t} ^ {*} (i)),
$$

4 active households' first-order conditions,

$$
w. r. t. c _ {H, t} (a): \quad - \gamma \hat {c} _ {t} (a) + (1 - \alpha) \hat {c} _ {F, t} (a) - (1 - \alpha) \hat {c} _ {H, t} (a) = \hat {\zeta} _ {H, t},
$$

$$
w. r. t. c _ {H, t} ^ {*} (a): - \gamma \hat {c} _ {t} ^ {*} (a) + \alpha \hat {c} _ {F, t} ^ {*} (a) - \alpha \hat {c} _ {H, t} ^ {*} (a) = \hat {\zeta} _ {H, t},
$$

$$
\mathrm {w . r . t .} c _ {F, t} (a): \quad - \gamma \hat {c} _ {t} (a) + \alpha \hat {c} _ {H, t} (a) - \alpha \hat {c} _ {F, t} (a) = \hat {\zeta} _ {F, t},
$$

$$
w. r. t. c _ {F, t} ^ {*} (a): - \gamma \hat {c} _ {t} ^ {*} (a) + (1 - \alpha) \hat {c} _ {H, t} ^ {*} (a) - (1 - \alpha) \hat {c} _ {F, t} ^ {*} (a) = \hat {\zeta} _ {F, t},
$$

2 inactive households' budget constraints,

$$
\hat {\tau} _ {t} = \hat {c} _ {t} (i),
$$

$$
\hat {\tau} _ {t} ^ {*} = \hat {c} _ {t} ^ {*} (i),
$$

2 inactive households' within-period solutions,

$$
\hat {c} _ {H, t} (a) - \hat {c} _ {F, t} (a) = \hat {c} _ {H, t} (i) - \hat {c} _ {F, t} (i),
$$

$$
\hat {c} _ {H, t} ^ {*} (a) - \hat {c} _ {F, t} ^ {*} (a) = \hat {c} _ {H, t} ^ {*} (i) - \hat {c} _ {F, t} ^ {*} (i).
$$

We can easily solve this system of linear equations. The solutions are given by the following proposition. For convenience, we define each country's aggregate consumption as  $c_{t} = \phi c_{t}(a) + (1 - \phi)c_{t}(i)$  and  $c_{t}^{*} = \phi c_{t}^{*}(a) + (1 - \phi)c_{t}^{*}(i)$ .

Proposition 10.3. After the log-linearization, the equilibrium consumption can be expressed as

$$
\left[ \begin{array}{c} \hat {c} _ {H, t} (a) \\ \hat {c} _ {F, t} (a) \\ \hat {c} _ {H, t} ^ {*} (a) \\ \hat {c} _ {F, t} ^ {*} (a) \end{array} \right] = A ^ {- 1} \left[ \begin{array}{c} \bar {y} \hat {y} _ {t} - (1 - \phi) \bar {c} _ {H} (i) \hat {\tau} _ {t} - (1 - \phi) \bar {c} _ {H} ^ {*} (i) \hat {\tau} _ {t} ^ {*} \\ \bar {y} ^ {*} \hat {y} _ {t} ^ {*} - (1 - \phi) \bar {c} _ {F} (i) \hat {\tau} _ {t} - (1 - \phi) \bar {c} _ {F} ^ {*} (i) \hat {\tau} _ {t} ^ {*} \\ 0 \\ 0 \end{array} \right],
$$

where  $A$  is given by

$$
A =
$$

$$
\left[ \begin{array}{c c c c} \phi \bar {c} _ {H} (a) + (1 - \phi) (1 - \alpha) \bar {c} _ {H} (i) & - (1 - \phi) (1 - \alpha) \bar {c} _ {H} (i) & \phi \bar {c} _ {H} ^ {*} (a) + (1 - \phi) \alpha \bar {c} _ {H} ^ {*} (i) & - (1 - \phi) \alpha \bar {c} _ {H} ^ {*} (i) \\ - (1 - \phi) \alpha \bar {c} _ {F} (i) & \phi \bar {c} _ {F} (a) + (1 - \phi) \alpha \bar {c} _ {F} (i) & - (1 - \phi) (1 - \alpha) \bar {c} _ {F} ^ {*} (i) & \phi \bar {c} _ {F} ^ {*} (a) + (1 - \phi) (1 - \alpha) \bar {c} _ {F} ^ {*} (i) \\ \alpha - 1 - \gamma \alpha & (1 - \gamma) (1 - \alpha) & \alpha + \gamma - \gamma \alpha & (\gamma - 1) \alpha \\ (\gamma - 1) \alpha & \alpha + \gamma - \gamma \alpha & (1 - \gamma) (1 - \alpha) & \alpha - 1 - \gamma \alpha \end{array} \right],
$$

and the total consumption is given by

$$
\hat {c} _ {t} = \phi \bar {c} _ {t} (a) \hat {c} _ {t} (a) + (1 - \phi) \bar {c} _ {t} (i) \hat {c} _ {t} (i),
$$

$$
\hat {c} _ {t} ^ {*} = \phi \bar {c} _ {t} ^ {*} (a) \hat {c} _ {t} ^ {*} (a) + (1 - \phi) \bar {c} _ {t} ^ {*} (i) \hat {c} _ {t} ^ {*} (i),
$$

the exchange rate is given by

$$
\hat {e} _ {t} = - \gamma \left(\hat {c} _ {t} (a) - \hat {c} _ {t} ^ {*} (a)\right). \tag {10.13}
$$

The proof is in Appendix A.44. This model separates the exchange rate and the aggregate consumption by introducing market segmentation. On the one hand, as the active households have access to the complete markets, their consumption growth is tightly connected to the exchange rate movement as shown in Eq. (10.13). On the other hand, while the inactive households are insulated from the financial markets, their consumption still accounts for a large share of the aggregate consumption, leading to a disconnect between the aggregate consumption and the exchange rate.

We consider a special case in which  $\pi = 1/2$ ,  $\bar{y} = \bar{y}^* = 1$ ,  $\bar{\tau} = \bar{\tau}^* = \alpha^\alpha (1 - \alpha)^{1 - \alpha}$ . In this case, all active and inactive households' steady-state consumption of domestic goods is  $\alpha$  and that of foreign goods is  $1 - \alpha$ :

$$
\bar {c} _ {H} (a) = \bar {c} _ {H} (i) = \bar {c} _ {F} ^ {*} (a) = \bar {c} _ {F} ^ {*} (i) = \alpha ,
$$

$$
\bar {c} _ {F} (a) = \bar {c} _ {F} (i) = \bar {c} _ {H} ^ {*} (a) = \bar {c} _ {H} ^ {*} (i) = 1 - \alpha .
$$

We further assume almost perfect home bias, i.e.,  $\alpha \rightarrow 1$ , and, for simplicity, the following correlation structure:

$$
\rho \stackrel {\text {d e f}} {=} c o r r _ {t} (\hat {\tau} _ {t + 1}, \hat {y} _ {t + 1}) = c o r r _ {t} (\hat {\tau} _ {t + 1} ^ {*}, \hat {y} _ {t + 1} ^ {*}),
$$

$$
\sigma_ {y} ^ {2} \stackrel {\text {d e f}} {=} v a r _ {t} (\hat {y} _ {t + 1}) = v a r _ {t} (\hat {y} _ {t + 1} ^ {*}),
$$

$$
\sigma_ {\tau} ^ {2} \stackrel {\text {d e f}} {=} v a r _ {t} \left(\hat {\tau} _ {t + 1}\right) = v a r _ {t} \left(\hat {\tau} _ {t + 1} ^ {*}\right).
$$

Then, we obtain the following result:

Proposition 10.4. Under these additional assumptions, the exchange rate and the aggregate consumption growth differential can be expressed as

$$
\hat {e} _ {t} = - \frac {\gamma}{\phi} (\hat {y} _ {t} - \hat {y} _ {t} ^ {*}) + \frac {\gamma}{\phi} (1 - \phi) (\hat {\tau} _ {t} - \hat {\tau} _ {t} ^ {*}),
$$

$$
\hat {c} _ {t} ^ {*} - \hat {c} _ {t} = - \left(\hat {y} _ {t} - \hat {y} _ {t} ^ {*}\right),
$$

which implies

$$
\operatorname {c o r r} _ {t} \left(\hat {e} _ {t + 1}, \hat {c} _ {t + 1} ^ {*} - \hat {c} _ {t + 1}\right) = \frac {1 - (1 - \phi) \rho \frac {\sigma_ {\tau}}{\sigma_ {y}}}{\sqrt {1 + (1 - \phi) ^ {2} \frac {\sigma_ {\tau} ^ {2}}{\sigma_ {y} ^ {2}} - 2 (1 - \phi) \rho \frac {\sigma_ {\tau}}{\sigma_ {y}}}}.
$$

In comparison, the active households' consumption differential can be expressed as

$$
\hat {c} _ {t + 1} ^ {*} (a) - \hat {c} _ {t + 1} (a) = \frac {1}{\phi} [ (\hat {y} _ {t + 1} ^ {*} - \hat {y} _ {t + 1}) - (1 - \phi) (\hat {\tau} _ {t + 1} ^ {*} - \hat {\tau} _ {t + 1}) ],
$$

which leads to a Backus-Smith correlation of 1 between the exchange rate and the active households' consumption differential:

$$
c o r r _ {t} \big (\hat {e} _ {t + 1}, \hat {c} _ {t + 1} ^ {*} (a) - \hat {c} _ {t + 1} (a) \big) = 1.
$$

The proof is in Appendix A.45. If there is no inactive households, i.e.,  $\phi = 1$ , then, the consumption growth and exchange rate are perfectly correlated:  $corr_{t}(\hat{e}_{t + 1},\hat{c}_{t + 1}^{*} - \hat{c}_{t + 1}) = 1$ . We obtain the complete-market benchmark in which a low home consumption growth is associated with a high home marginal utility growth and thus a home currency appreciation.

In contrast, if there is a large share of inactive households, i.e.,  $\phi \ll 1$ , then, the Backus-Smith correlation  $corr_{t}(\hat{e}_{t + 1},\hat{c}_{t + 1}^{*} - \hat{c}_{t + 1})$  may become negative. The precondition is to have a sufficiently high correlation between the transfer shock and the endowment shock, and a sufficiently high variance of the transfer shock relative to the endowment shock. More precisely, we may interpret  $\rho \frac{\sigma_{\tau}}{\sigma_y}$  as the beta of the transfer shock with respect to the local endowment shock. When this beta is large enough, i.e.,  $(1 - \phi)\rho \frac{\sigma_{\tau}}{\sigma_y} > 1$ , we obtain a negative Backus-Smith correlation.

In this case, the model resolves the Backus-Smith puzzle by re-interpreting the cyclicality of the households' marginal utilities: a high endowment shock for the entire country is actually a bad, high marginal utility state for the active households who are the marginal investors in the currency market, even though it is good news for the average household which includes the inactive households. As a result, while the Backus-Smith correlation is still positive for the active households' consumption, it is negative for the aggregate consumption. As this difference in the cyclicality of household marginal utility is central to the model's mechanism, it would be interesting to empirically identify the active and inactive households and examine the properties of their profits, losses, and consumption.

This view also implies that the active households to have the opposite cyclicality in their marginal utility growth relative to the domestic

business cycle. These active households usually represent financial intermediaries who invest in the risky assets on behalf of the inactive households. According to Hassan [2013]'s interpretation, the active households underwrite a nominal risk-free bond denominated in the local currency to the inactive households. In good times, low inflation makes the nominal bond valuable, which benefits the inactive households at the expense of the active households. If the active households are sufficiently levered, then, they could lose wealth in good times, leading to a procyclical marginal utility with respect to the domestic business cycle. Alvarez, Atkeson, and Kehoe [2002, 2009] provide a microfoundation for this dynamics, in which the identities of active and inactive households are endogenously determined by the households' holdings.

# 10.C.5 Other Works

Market segmentation and financial intermediation have been studied extensively in the macro-finance literature. He and Krishnamurthy [2013], Brunnermeier and Sannikov [2014] present two prominent models of financial frictions in closed economies. In the international literature, Chien and Naknoi [2015] propose a segmented market model in which not all households can participate in the equity market, but the participation rate is higher in the U.S. Maggiori [2017] also considers a model with credit constraints for financial intermediaries, in which the U.S. intermediaries are less constrained. In these models, the U.S. as a whole loads up more aggregate risk than the foreign country, which speaks to the asymmetry in global portfolio allocation we discussed in Chapter 7. Chien, Lustig, and Naknoi [2020] use a similar segmented market mechanism to resolve the exchange rate volatility puzzle we discussed in Section 2.A.1, that the exchange rate movement can be smooth even when the SDFs are volatile and the macro fundamentals are only weakly correlated, and Dou and Verdelhan [2015] use segmented markets to explain the volatility of international capital flows. Fang and Liu [2021] also consider a two-country model with within-country financial intermediation, with the key ingredient being the value-at-risk (VaR) constraint. The model speaks quantitatively to the exchange rate volatility, cyclicality, risk premium, and the deviations from the covered interest rate parity.

Jiang and Richmond [2023b] introduce global production network to this model with active and inactive households. The transfer shock from active to inactive households can be interpreted as a demand shock that is transmitted in the global trade network, which, as we saw in Section 3.C, plays an important role in shaping the comove

ments of exchange rates.

# Appendix

# A


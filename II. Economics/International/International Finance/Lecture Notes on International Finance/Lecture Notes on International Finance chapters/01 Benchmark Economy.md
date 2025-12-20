---
aliases: null
tags: null
key_concepts: null
parent_directory: null
cssclasses: academia
title: A Benchmark Economy
linter-yaml-title-alias: A Benchmark Economy
primary_tags:
- joint normality foreign
- implies consumption ratio foreign
- home bias consumption markets
- consumption saving intertemporally example
secondary_tags:
- households optimal international risk
- equilibrium exchange rate economy
- international real business cycles
- benchmark economy summary
- foreign consumption bundles period
- foreign households determined equilibrium
- empirically developed countries currencies
- households implied exchange rate
- euler equations households trade
tags_extracted: '2025-12-18T01:43:52.433987'
---

# A Benchmark Economy

# Summary

- We develop a benchmark two-country model of international real business cycles. Restrictions on the exchange rate  $e_t$  are imposed by both goods market conditions:

$$
\frac {p _ {t}}{p _ {t} ^ {*} \exp (- e _ {t})} = \frac {\alpha}{1 - \alpha} \frac {c _ {F , t}}{c _ {H , t}} = \frac {1 - \alpha}{\alpha} \frac {c _ {F , t} ^ {*}}{c _ {H , t} ^ {*}},
$$

and asset market conditions:

$$
1 = \mathbb {E} _ {t} \left[ \exp \left(m _ {t + 1} - \Delta e _ {t + 1} + r _ {t} ^ {*}\right) \right] = \mathbb {E} _ {t} \left[ \exp \left(m _ {t + 1} ^ {*} + \Delta e _ {t + 1} + r _ {t}\right) \right].
$$

- Trading in the risk-free bond market implies that the currency's expected return is determined by its risk premium:

$$
\mathbb {E} _ {t} \left[ r x _ {t + 1} \right] = - c o v _ {t} \left(m _ {t + 1} ^ {*}, \Delta e _ {t + 1}\right) - \frac {1}{2} v a r _ {t} \left(\Delta e _ {t + 1}\right),
$$

and that the exchange rate level is determined by the expectation of future interest rates and currency risk premia:

$$
e _ {t} = \sum_ {j = 0} ^ {\infty} \mathbb {E} _ {t} \left[ r _ {t + j} - r _ {t + j} ^ {*} \right] - \sum_ {j = 0} ^ {\infty} \mathbb {E} _ {t} \left[ r p _ {t + j} \right] + \bar {e}.
$$

- When markets are complete, we can further simplify the exchange rate movement and currency expected return as

$$
\Delta e _ {t + 1} = m _ {t + 1} - m _ {t + 1} ^ {*},
$$

$$
\mathbb {E} _ {t} [ r x _ {t + 1} ] = \frac {1}{2} v a r _ {t} (m _ {t + 1} ^ {*}) - \frac {1}{2} v a r _ {t} (m _ {t + 1}).
$$

We start with a benchmark economy with international trade in goods and bonds, which is the basis for extensions in later chapters. We characterize the dynamics of the exchange rate and the currency return in this model, and, in doing so, showcase some standard tech-

niques.

# 1.A Model Set-up

# 1.A.1 Households

We consider an endowment economy with two countries, home and foreign. Each country has a continuum of identical households. Equivalently, we can think of a representative household in each country. Each country has a unique type of goods, labeled as home goods and foreign goods. The home households receive an endowment of  $y_{t}$  units of the home goods, and the foreign households receive an endowment of  $y_{t}^{*}$  units of the foreign goods.

Home and foreign households derive utility from consuming both countries' goods. Let  $c_{H}$  denote the home households' consumption of the home goods, and  $c_{F}$  denote the home households' consumption of the foreign goods. The home households' aggregate consumption is a Cobb-Douglas aggregation of the home and foreign goods:

$$
c _ {t} = (c _ {H, t}) ^ {\alpha} (c _ {F, t}) ^ {1 - \alpha},
$$

which means that  $c_{H,t}$  units of the home goods and  $c_{F,t}$  units of the foreign goods can be combined to form  $c_t$  units of the home consumption bundle, which is the unit of account for the home households' aggregate consumption. In our analysis, we carefully distinguish between the home consumption bundle and the home goods. Similarly, foreign households also combine the home and foreign goods into the foreign consumption bundle, which we will specify later. Some papers also refer to the home and foreign goods as the intermediate goods, and the home and foreign consumption bundles as the final goods. These terms will carry more meaning when we discuss the production side of the economy such as in Section 3.C.

The expected lifetime utility for home households is

$$
\mathbb {E} _ {0} \left[ \sum_ {t = 0} ^ {\infty} \delta^ {t} u (c _ {t}) \right],
$$

where  $u(c_{t})$  is a generic utility function that takes the home households' aggregate consumption  $c_{t}$  as the argument, and  $\delta$  is the subjective discount factor. We usually impose some regularity conditions on the utility function, so that it is twice continuously differentiable, increasing in  $c_{t}$ , and concave.

The log real exchange rate  $e_t$  is defined as the log exchange ratio between the home consumption bundle and the foreign consumption bundle. That is, to afford 1 unit of the home consumption, we need to spend  $\exp(e_t)$  units of the foreign consumption. Our convention

is such that  $e_t$  increases when the home currency appreciates in real terms, which means the home consumption bundle becomes more expensive.

The home and foreign risk-free bonds are denominated in the units of their respective consumption bundles. For now, we focus on the one-period bond only: 1 unit of the bond issued in period  $t$  promises to pay out 1 unit of consumption bundle in the next period  $t + 1$ . The home bond's interest rate is  $r_t$ , implying that the price for 1 unit of the bond is  $\exp(-r_t)$  units of home consumption bundles in period  $t$ . Similarly, the foreign bond's interest rate is  $r_t^*$ , implying that the price for 1 unit of the bond is  $\exp(-r_t^*)$  units of foreign consumption bundles in period  $t$ . The home and foreign households can freely trade both types of bonds.

Using the home consumption bundle as the numérique, we can express the home households' budget constraint as

$$
p _ {t} y _ {t} + b _ {H, t - 1} \exp \left(r _ {t - 1}\right) + b _ {F, t - 1} \exp \left(r _ {t - 1} ^ {*} - e _ {t}\right) = c _ {t} + b _ {H, t} + b _ {F, t} \exp (- e _ {t}), \tag {1.1}
$$

where  $y_{t}$  denotes the endowment of the home goods,  $p_{t}$  denotes the price of the home goods in the unit of the home consumption bundle,  $b_{H,t}$  denotes the market value of the home risk-free bond held by the home households, and  $b_{F,t}$  denotes the market value of the foreign risk-free bond held by the home households. In this equation, the left-hand side is the home households' income from the endowment in period  $t$  plus their savings in the bond market from period  $t - 1$ , and the right-hand side is the home households' expenditure for the consumption in period  $t$  and their investments in the bond market for consumption in future periods.

We can introduce other tradable assets such as equities and long-term bonds by extending this budget constraint. A particularly useful case is when the households can trade the complete set of contingent claims. We will consider this complete-market case in Section 1.C.

# 1.A.2 Intertemporal Solution

We write the home households' Lagrangian as

$$
\mathbb {E} _ {0} \left[ \sum_ {t = 1} ^ {\infty} \delta^ {t} u (c _ {t}) + \sum_ {t = 1} ^ {\infty} \zeta_ {t} \left(p _ {t} y _ {t} + b _ {H, t - 1} \exp \left(r _ {t - 1}\right) + b _ {F, t - 1} \exp \left(r _ {t - 1} ^ {*} - e _ {t}\right) - c _ {t} - b _ {H, t} - b _ {F, t} \exp (- e _ {t})\right) \right].
$$

The first-order conditions w.r.t.  $c_{t},b_{H,t}$  , and  $b_{F,t}$  are

$$
\delta^ {t} u ^ {\prime} \left(c _ {t}\right) - \zeta_ {t} = 0,
$$

$$
\mathbb {E} _ {t} \left[ - \zeta_ {t} + \zeta_ {t + 1} \exp (r _ {t}) \right] = 0,
$$

$$
\mathbb {E} _ {t} \left[ - \zeta_ {t} \exp (- e _ {t}) + \zeta_ {t + 1} \exp \left(r _ {t} ^ {*} - e _ {t + 1}\right) \right] = 0.
$$

These equations imply the following Euler equations:

$$
\begin{array}{l} 1 = \mathbb {E} _ {t} \left[ \delta \frac {u ^ {\prime} (c _ {t + 1})}{u ^ {\prime} (c _ {t})} \exp (r _ {t}) \right], \\ 1 = \mathbb {E} _ {t} \left[ \delta \frac {u ^ {\prime} \left(c _ {t + 1}\right)}{u ^ {\prime} \left(c _ {t}\right)} \exp \left(- \Delta e _ {t + 1} + r _ {t} ^ {*}\right) \right], \\ \end{array}
$$

which describe how the households trade off consumption and saving intertemporally. For example, we can express the first Euler equation as

$$
u ^ {\prime} \left(c _ {t}\right) = \mathbb {E} _ {t} \left[ \delta u ^ {\prime} \left(c _ {t + 1}\right) \exp \left(r _ {t}\right) \right].
$$

The left-hand side represents the increase in utility from consuming a small amount of the home consumption bundle in period  $t$ , which is  $u'(c_t)$  in the limit. The right-hand side represents the expected increase in the utility from saving this additional consumption bundle in home bonds, earning interests and receiving  $\exp(r_t)$  in period  $t + 1$ , and deriving  $u'(c_{t+1})$  utils from each additional unit of consumption in period  $t + 1$ . The households discount these future utils by the subjective discount rate  $\delta$ , and equalize the leftand right-hand sides so that they are indifferent between these two options.

We denote the marginal utility growth as

$$
\exp (m _ {t + 1}) \stackrel {\text {d e f}} {=} \delta \frac {u ^ {\prime} (c _ {t + 1})}{u ^ {\prime} (c _ {t})},
$$

which is commonly referred to as the stochastic discount factor (SDF) or the pricing kernel in the asset pricing literature. In this note, we will focus on the relationship between the SDF and the exchange rate. That said, if the same households can also trade the claim to the endowment, then, the same SDF also prices the endowment claim. Let  $m_{t,t+k} \stackrel{\mathrm{def}}{=} \sum_{j=1}^{k} m_{t+j}$  denote the cumulative SDF from period  $t$  to  $t + k$ . Then, the price of the home country's endowment claim is

$$
p _ {t} ^ {m} = \mathbb {E} _ {t} \left[ \sum_ {k = 1} ^ {\infty} \exp (m _ {t, t + k}) p _ {t + k} y _ {t + k} \right].
$$

Similarly, if the claim to the households' consumption stream is tradable, we can also price the households' wealth as

$$
p _ {t} ^ {w} = \mathbb {E} _ {t} \left[ \sum_ {k = 1} ^ {\infty} \exp (m _ {t, t + k}) c _ {t + k} \right].
$$

# 1.A.3 Within-Period Solution

Let  $p_t^*$  denote the price of the foreign goods in the unit of the foreign consumption bundle. Using the home consumption bundle as the

numérique, the price of the home consumption bundle is 1. Then, the law of one price implies

$$
1 \cdot \left(c _ {H, t}\right) ^ {\alpha} \left(c _ {F, t}\right) ^ {1 - \alpha} = 1 \cdot c _ {t} = p _ {t} c _ {H, t} + p _ {t} ^ {*} c _ {F, t} \exp (- e _ {t}). \tag {1.2}
$$

Substitute this equation into the Lagrangian:

$$
\begin{array}{l} \mathbb {E} _ {0} \left[ \sum_ {t = 1} ^ {\infty} \delta^ {t} u \left(\left(c _ {H, t}\right) ^ {\alpha} \left(c _ {F, t}\right) ^ {1 - \alpha}\right) \right. \\ \left. + \sum_ {t = 1} ^ {\infty} \zeta_ {t} (p _ {t} y _ {t} + b _ {H, t - 1} \exp (r _ {t - 1}) + b _ {F, t - 1} \exp (r _ {t - 1} ^ {*} - e _ {t}) - p _ {t} c _ {H, t} - \exp (- e _ {t}) p _ {t} ^ {*} c _ {F, t} - b _ {H, t} - b _ {F, t} \exp (- e _ {t})) \right]. \\ \end{array}
$$

The first-order conditions w.r.t.  $c_{H,t}$ ,  $c_{F,t}$  are

$$
\delta^ {t} u ^ {\prime} (c _ {t}) \alpha (\frac {c _ {F , t}}{c _ {H , t}}) ^ {1 - \alpha} - \zeta_ {t} p _ {t} = 0,
$$

$$
\delta^ {t} u ^ {\prime} (c _ {t}) (1 - \alpha) (\frac {c _ {H , t}}{c _ {F , t}}) ^ {\alpha} - \zeta_ {t} p _ {t} ^ {*} \exp (- e _ {t}) = 0,
$$

which implies that the consumption ratio  $c_{F,t} / c_{H,t}$  between foreign and home goods is a function of the relative prices:

$$
\frac {p _ {t}}{p _ {t} ^ {*} \exp (- e _ {t})} = \frac {\alpha}{1 - \alpha} \frac {c _ {F , t}}{c _ {H , t}}. \tag {1.3}
$$

Moreover, plug this solution into (1.2), we obtain

$$
c _ {t} = p _ {t} c _ {H, t} + \frac {1 - \alpha}{\alpha} p _ {t} c _ {H, t} = \frac {1}{\alpha} p _ {t} c _ {H, t},
$$

$$
c _ {t} = \frac {\alpha}{1 - \alpha} p _ {t} ^ {*} c _ {F, t} \exp (- e _ {t}) + p _ {t} ^ {*} c _ {F, t} \exp (- e _ {t}) = \frac {1}{1 - \alpha} p _ {t} ^ {*} c _ {F, t} \exp (- e _ {t}),
$$

which implies that the expenditure shares for home and foreign goods are constant under the Cobb-Douglas aggregator and a general utility function:

$$
p _ {t} c _ {H, t} = \alpha c _ {t}, \tag {1.4}
$$

$$
p _ {t} ^ {*} c _ {F, t} \exp (- e _ {t}) = (1 - \alpha) c _ {t}. \tag {1.5}
$$

Moreover, plug in  $(c_{H,t})^{\alpha}(c_{F,t})^{1 - \alpha} = c_t$ , we can express the goods' prices (i.e.,  $p_t$  and  $p_t^*\exp (-e_t))$  in the unit of the home consumption bundle as functions of the relative consumption weights:

$$
p _ {t} = \alpha \left(\frac {c _ {F , t}}{c _ {H , t}}\right) ^ {1 - \alpha}, \qquad p _ {t} ^ {*} \exp (- e _ {t}) = (1 - \alpha) \left(\frac {c _ {H , t}}{c _ {F , t}}\right) ^ {\alpha}.
$$

A commonly used notion is the terms of trade, defined as the ratio between the price index of exported goods and the price index of imported goods from the perspective of a given country. In our setting, the home country exports home goods and imports foreign

goods. As such, the terms of trade are simply the ratio of prices between home and foreign goods:

$$
\exp (t o t _ {t}) \stackrel {\text {d e f}} {=} \frac {p _ {t}}{p _ {t} ^ {*} \exp (- e _ {t})},
$$

which allows us to express goods' prices in the unit of the home consumption bundle as

$$
p _ {t} = \alpha \left(\frac {1 - \alpha}{\alpha} \exp (t o t _ {t})\right) ^ {1 - \alpha}, \qquad p _ {t} ^ {*} \exp (- e _ {t}) = (1 - \alpha) \left(\frac {1 - \alpha}{\alpha} \exp (t o t _ {t})\right) ^ {- \alpha}.
$$

Likewise, we can derive the same problem from the foreign households' perspective, and obtain

$$
p _ {t} ^ {*} = \alpha \left(\frac {1 - \alpha}{\alpha} \exp (- t o t _ {t})\right) ^ {1 - \alpha}, \qquad p _ {t} \exp (e _ {t}) = (1 - \alpha) \left(\frac {1 - \alpha}{\alpha} \exp (- t o t _ {t})\right) ^ {- \alpha},
$$

which implies that the real exchange rate and the terms of trade are tightly connected:

$$
e _ {t} = (2 \alpha - 1) t o t _ {t}.
$$

So, we can simplify Eq. (1.3) to

$$
\exp \left(\frac {e _ {t}}{2 \alpha - 1}\right) = \frac {\alpha}{1 - \alpha} \frac {c _ {F , t}}{c _ {H , t}}.
$$

That is, within a period, the households choose between consuming home and foreign goods by comparing the relative prices as captured by the real exchange rate  $e_t$  and the relative consumption weights  $\alpha$  and  $1 - \alpha$ .

# 1.A.4 Foreign Country

For foreign households, symmetrically, we define the foreign consumption bundle as

$$
c _ {t} ^ {*} = (c _ {F} ^ {*}) ^ {\alpha} (c _ {H} ^ {*}) ^ {1 - \alpha}.
$$

Given  $\alpha > 1/2$ , the foreign consumption bundle leans towards the foreign goods, whereas the home consumption bundle leans towards the home goods.

The foreign households' budget constraint is

$$
p _ {t} ^ {*} y _ {t} ^ {*} + b _ {H, t - 1} ^ {*} \exp (r _ {t - 1} + e _ {t}) + b _ {F, t - 1} ^ {*} \exp (r _ {t - 1} ^ {*}) = c _ {t} ^ {*} + b _ {H, t} ^ {*} \exp (e _ {t}) + b _ {F, t} ^ {*}
$$

The Lagrangian is

$$
\mathbb {E} _ {0} \left[ \sum_ {t = 1} ^ {\infty} \delta^ {t} u \left(c _ {t} ^ {*}\right) + \sum_ {t = 1} ^ {\infty} \zeta_ {t} ^ {*} \left(p _ {t} ^ {*} y _ {t} ^ {*} + \exp \left(r _ {t - 1} + e _ {t}\right) b _ {H, t - 1} ^ {*} + b _ {F, t - 1} ^ {*} \exp \left(r _ {t - 1} ^ {*}\right) - c _ {t} ^ {*} - b _ {H, t} ^ {*} \exp (e _ {t}) - b _ {F, t} ^ {*}\right) \right].
$$

The intertemporal solution implies

$$
1 = \mathbb {E} _ {t} \left[ \delta \frac {u ^ {\prime} (c _ {t + 1} ^ {*})}{u ^ {\prime} (c _ {t} ^ {*})} \exp (r _ {t} + \Delta e _ {t + 1}) \right],
$$

$$
1 = \mathbb {E} _ {t} \left[ \delta \frac {u ^ {\prime} (c _ {t + 1} ^ {*})}{u ^ {\prime} (c _ {t} ^ {*})} \exp (r _ {t} ^ {*}) \right],
$$

and the within-period solution implies

$$
\frac {p _ {t} \exp (e _ {t})}{p _ {t} ^ {*}} = \frac {1 - \alpha}{\alpha} \frac {c _ {F , t} ^ {*}}{c _ {H , t} ^ {*}},
$$

$$
p _ {t} \exp (e _ {t}) = (1 - \alpha) \left(\frac {c _ {F , t} ^ {*}}{c _ {H , t} ^ {*}}\right) ^ {\alpha},
$$

$$
p _ {t} ^ {*} = \alpha \left(\frac {c _ {H , t} ^ {*}}{c _ {F , t} ^ {*}}\right) ^ {1 - \alpha}.
$$

# 1.A.5 Market Clearing

In the goods market, the endowment is equal to the sum of home and foreign consumption:

$$
y _ {t} = c _ {H, t} + c _ {H, t} ^ {*},
$$

$$
y _ {t} ^ {*} = c _ {F, t} + c _ {F, t} ^ {*}.
$$

In the bonds market, the bonds are in zero net supply:

$$
0 = b _ {H, t} + b _ {H, t} ^ {*},
$$

$$
0 = b _ {F, t} + b _ {F, t} ^ {*}.
$$

# 1.A.6 Macro Synthesis

Throughout this book, we study the competitive equilibrium defined in the usual fashion: all households maximize their utilities taking goods prices, asset prices, and exchange rates as given, and the markets for goods and assets are cleared.

The only exogenous variables are the endowments:

$$
(y _ {t}, y _ {t} ^ {*}) _ {t = 0} ^ {\infty}.
$$

There are 15 endogenous variables in each period  $t$ :

$$
(c _ {t}, c _ {H, t}, c _ {F, t}, b _ {H, t}, b _ {F, t}, p _ {t}, c _ {t} ^ {*}, c _ {H, t} ^ {*}, c _ {F, t} ^ {*}, b _ {H, t} ^ {*}, b _ {F, t} ^ {*}, p _ {t} ^ {*}, r _ {t}, r _ {t} ^ {*}, e _ {t}) _ {t = 0} ^ {\infty},
$$

plus two auxiliary variables  $\exp(m_{t+1})$  and  $\exp(m_{t+1}^*)$  that denote the home and foreign SDFs:

$$
\exp (m _ {t + 1}) \stackrel {\mathrm {d e f}} {=} \delta \frac {u ^ {\prime} (c _ {t + 1})}{u ^ {\prime} (c _ {t})},
$$

$$
\exp (m _ {t + 1} ^ {*}) \stackrel {\mathrm {d e f}} {=} \delta \frac {u ^ {\prime} (c _ {t + 1} ^ {*})}{u ^ {\prime} (c _ {t} ^ {*})}.
$$

The model implies the following 16 equations in each period, one of which is redundant because the market clearing conditions add up to the sum of households' budget constraints. These 16 equations include 2 consumption aggregation equations,

$$
c _ {t} = (c _ {H, t}) ^ {\alpha} (c _ {F, t}) ^ {1 - \alpha},
$$

$$
c _ {t} ^ {*} = (c _ {F, t} ^ {*}) ^ {\alpha} (c _ {H, t} ^ {*}) ^ {1 - \alpha},
$$

4 household budget constraints,

$$
p _ {t} y _ {t} + b _ {H, t - 1} \exp (r _ {t - 1}) + b _ {F, t - 1} \exp (r _ {t - 1} ^ {*} - e _ {t}) = c _ {t} + b _ {H, t} + b _ {F, t} \exp (- e _ {t}),
$$

$$
c _ {t} = p _ {t} c _ {H, t} + p _ {t} ^ {*} c _ {F, t} \exp (- e _ {t}),
$$

$$
p _ {t} ^ {*} y _ {t} ^ {*} + b _ {H, t - 1} ^ {*} \exp (r _ {t - 1} + e _ {t}) + b _ {F, t - 1} ^ {*} \exp (r _ {t - 1} ^ {*}) = c _ {t} ^ {*} + b _ {H, t} ^ {*} \exp (e _ {t}) + b _ {F, t} ^ {*},
$$

$$
c _ {t} ^ {*} = p _ {t} c _ {H, t} ^ {*} \exp (e _ {t}) + p _ {t} ^ {*} c _ {F, t} ^ {*},
$$

2 equations describing the households' within-period consumption choices,

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

2 bond market clearing conditions,

$$
0 = b _ {H, t} + b _ {H, t} ^ {*},
$$

$$
0 = b _ {F, t} + b _ {F, t} ^ {*},
$$

and 4 Euler equations,

$$
1 = \mathbb {E} _ {t} \left[ \exp \left(m _ {t + 1}\right) \exp \left(r _ {t}\right) \right],
$$

$$
1 = \mathbb {E} _ {t} [ \exp (m _ {t + 1}) \exp (- \Delta e _ {t + 1} + r _ {t} ^ {*}) ],
$$

$$
1 = \mathbb {E} _ {t} \left[ \exp (m _ {t + 1} ^ {*}) \exp (r _ {t} ^ {*}) \right],
$$

$$
1 = \mathbb {E} _ {t} \left[ \exp \left(m _ {t + 1} ^ {*}\right) \exp \left(\Delta e _ {t + 1} + r _ {t}\right) \right].
$$

# 1.B Exchange Rate Accounting

Among the equilibrium conditions we derive in the last section, particularly relevant for asset pricing are the four Euler equations:

$$
1 = \mathbb {E} _ {t} \left[ \exp \left(m _ {t + 1} + r _ {t}\right) \right], \tag {1.6}
$$

$$
1 = \mathbb {E} _ {t} \left[ \exp \left(m _ {t + 1} - \Delta e _ {t + 1} + r _ {t} ^ {*}\right) \right], \tag {1.7}
$$

$$
1 = \mathbb {E} _ {t} \left[ \exp \left(m _ {t + 1} ^ {*} + r _ {t} ^ {*}\right) \right], \tag {1.8}
$$

$$
1 = \mathbb {E} _ {t} \left[ \exp \left(m _ {t + 1} ^ {*} + \Delta e _ {t + 1} + r _ {t}\right) \right]. \tag {1.9}
$$

For the discussion in this section, we assume the random variables are jointly normally distributed. It is possible to extend this analysis to the non-normal case using co-entropy instead of covariance. Under joint normality, the foreign households' Euler equations can be expressed as

$$
\begin{array}{l} 0 = \mathbb {E} _ {t} [ m _ {t + 1} ^ {*} ] + \frac {1}{2} v a r _ {t} (m _ {t + 1} ^ {*}) + r _ {t} ^ {*}, \\ 0 = \mathbb {E} _ {t} [ m _ {t + 1} ^ {*} ] + \frac {1}{2} v a r _ {t} (m _ {t + 1} ^ {*}) + \mathbb {E} _ {t} [ \Delta e _ {t + 1} ] + \frac {1}{2} v a r _ {t} (\Delta e _ {t + 1}) + c o v _ {t} (m _ {t + 1} ^ {*}, \Delta e _ {t + 1}) + r _ {t}. \\ \end{array}
$$

# 1.B.1 Accounting for the Currency Expected Return

To capture the relative performance of the home and foreign currencies, we define the log excess return of the home currency against the foreign currency as

$$
r x _ {t + 1} = \Delta e _ {t + 1} + r _ {t} - r _ {t} ^ {*}.
$$

This excess return captures the return of the strategy that takes a long position on the home bond and a short position on the foreign bond, which is exposed to the bilateral exchange rate movement.

Then, the Euler equations imply the following result:

Proposition 1.1. The home currency's expected log excess return is determined by the covariance between the log foreign SDF and log exchange rate movement minus a Jensen's term:

$$
\mathbb {E} _ {t} \left[ r x _ {t + 1} \right] = - c o v _ {t} \left(m _ {t + 1} ^ {*}, \Delta e _ {t + 1}\right) - \frac {1}{2} \operatorname {v a r} _ {t} \left(\Delta e _ {t + 1}\right). \tag {1.10}
$$

We interpret the right-hand side of Eq. (1.10) as the currency risk premium in log, since the covariance term describes how the exchange rate comoves with the foreign investors' SDF. If the covariance is positive, the home currency tends to appreciate when the foreign households' marginal utility is high. Then, the home currency is a good hedge from the perspective of the foreign households and should earn a low risk premium.

The right-hand side of Eq. (1.10) also has a variance term  $-\frac{1}{2} var_t(\Delta e_{t+1})$  that we refer to as the Jensen's term. To understand this term, it is useful to consider the risk premium expression for the level of the currency return:

$$
\log \mathbb {E} _ {t} [ \exp (r x _ {t + 1}) ] = - c o v _ {t} \left(m _ {t + 1} ^ {*}, \Delta e _ {t + 1}\right). \tag {1.11}
$$

Compared with the currency risk premium in log defined in Eq. (1.10), the currency risk premium in level conveniently has no Jensen's term. Empirically, for developed countries' currencies, the exchange rate volatility is roughly  $10\%$  per annum. This magnitude implies a

Jensen's term of  $-\frac{1}{2} var_t(\Delta e_{t+1}) = -0.5\%$ , which is an order of magnitude smaller than the covariance term for many currency pairs we usually consider.

We can also derive the currency risk premium from the home households' perspective:

$$
\mathbb {E} _ {t} \left[ - r x _ {t + 1} \right] = - c o v _ {t} \left(m _ {t + 1}, - \Delta e _ {t + 1}\right) - \frac {1}{2} v a r _ {t} \left(\Delta e _ {t + 1}\right),
$$

$$
\log \mathbb {E} _ {t} [ \exp (- r x _ {t + 1}) ] = - c o v _ {t} (m _ {t + 1}, - \Delta e _ {t + 1}),
$$

which implies that the foreign currency has to offer a higher risk premium if it tends to depreciate when the home SDF is high.

If we combine the expected return expressions from the home and foreign households' perspectives, we obtain the following expression:

$$
\mathbb {E} _ {t} \left[ r x _ {t + 1} \right] = - \mathbb {E} _ {t} \left[ - r x _ {t + 1} \right]
$$

$$
- \operatorname {c o v} _ {t} \left(m _ {t + 1} ^ {*}, \Delta e _ {t + 1}\right) - \frac {1}{2} \operatorname {v a r} _ {t} \left(\Delta e _ {t + 1}\right) = \operatorname {c o v} _ {t} \left(m _ {t + 1}, - \Delta e _ {t + 1}\right) + \frac {1}{2} \operatorname {v a r} _ {t} \left(\Delta e _ {t + 1}\right). \tag {1.12}
$$

Recall that all these restrictions are derived from the Euler equations for holding the risk-free bonds. So, allowing the households to freely trade in the risk-free bond markets imposes restrictions not only between the currency expected return and the covariance between the SDF and the exchange rate movement from each country's perspective, but also between the home and the foreign perspectives. Specifically, the home and foreign investors need to agree on the equilibrium currency risk premium after the second-order adjustment by the Jensen's term.

# 1.B.2 Accounting for the Exchange Rate Level

Let us denote the home currency's risk premium (including the Jensen's term) as

$$
r p _ {t} \stackrel {\mathrm {d e f}} {=} \mathbb {E} _ {t} [ r x _ {t + 1} ] = - c o v _ {t} (m _ {t + 1} ^ {*}, \Delta e _ {t + 1}) - \frac {1}{2} v a r _ {t} (\Delta e _ {t + 1}),
$$

which implies

$$
e _ {t} - \mathbb {E} _ {t} \left[ e _ {t + 1} \right] = r _ {t} - r _ {t} ^ {*} - r p _ {t}. \tag {1.13}
$$

If we regard the next period's expected exchange rate level  $\mathbb{E}_t[e_{t + 1}]$  as a reference point, then, Eq. (1.13) implies that the deviation of the current exchange rate from this reference point is determined by the interest rate differential and the currency risk premium. The home currency is stronger relative to the reference point if the home interest rate is higher than the foreign interest rate and if the home currency's risk premium is low.

We can generalize this intuition under the assumption that the real exchange rate is stationary. In this case, there exists a long-run exchange rate level,

$$
\bar{e}\stackrel {\mathrm{def}}{=}\lim_{j\to \infty}\mathbb{E}_{t}[e_{t + j}].
$$

Using this as a more natural reference point for the exchange rate level, we can decompose today's exchange rate level in the following way [Campbell and Clarida, 1987, Froot and Ramadorai, 2005]:

Proposition 1.2. The exchange rate level is equal to the sum of expected future interest rate differentials, the sum of expected future currency risk premia, and the long-run exchange rate level:

$$
e _ {t} = \sum_ {j = 0} ^ {\infty} \mathbb {E} _ {t} \left[ r _ {t + j} - r _ {t + j} ^ {*} \right] - \sum_ {j = 0} ^ {\infty} \mathbb {E} _ {t} \left[ r p _ {t + j} \right] + \bar {e}. \tag {1.14}
$$

This formula shows that, if the home currency is currently stronger than its long-run mean, it is either because the home currency is offering a higher interest rate than the foreign currency, or because it has a lower risk premium. This decomposition of the exchange rate level is similar to the Campbell and Shiller [1988] decomposition of the equity price-dividend ratio into a cash flow component, a discount rate component, and a vanishing transversality component, i.e.,

$$
p d _ {t} = \sum_ {j = 1} ^ {\infty} \kappa^ {j - 1} \mathbb {E} _ {t} [ \Delta \log d _ {t + j} ] - \sum_ {j = 1} ^ {\infty} \kappa^ {j - 1} \mathbb {E} _ {t} [ r _ {t + j} ] + \lim _ {j \to \infty} \kappa^ {j} \mathbb {E} _ {t} [ p d _ {t + j} ].
$$

In the exchange rate formula (1.14), the interest rate term  $\sum_{j=0}^{\infty} \mathbb{E}_t[r_{t+j} - r_{t+j}^*]$  can be interpreted as the cash flow component: if the home bond earns a higher interest rate, then, the investors are indeed expecting higher cash flows from holding it, and should therefore impute a higher valuation to the home currency. Since the exchange rate is the relative price between the home and foreign countries, the interest rate differential  $r_{t+j} - r_{t+j}^*$  enters the formula to capture the relative magnitude of the cash flows. Likewise, the risk premium term  $\sum_{j=0}^{\infty} \mathbb{E}_t[rp_{t+j}]$  can be interpreted as the discount rate component: if the home currency is risky and therefore earns a higher risk premium, then, the investors should use a higher discount rate for the home currency and impute a lower valuation. Finally, the long-run exchange rate level  $\bar{e}$  can be interpreted as the transversality component. The key difference between the exchange rate formula (1.14) and the equity pricing formula above is that there is no discounting by  $\kappa$  in the exchange rate formula, which follows from the fact that no approximation was made in deriving the exchange rate formula.

Moreover, it is simple to go one step further to decompose the exchange rate innovation:

$$
(\mathbb {E} _ {t} - \mathbb {E} _ {t - 1}) [ e _ {t} ] = \sum_ {j = 0} ^ {\infty} (\mathbb {E} _ {t} - \mathbb {E} _ {t - 1}) [ r _ {t + j} - r _ {t + j} ^ {*} ] - \sum_ {j = 0} ^ {\infty} (\mathbb {E} _ {t} - \mathbb {E} _ {t - 1}) [ r p _ {t + j} ],
$$

which offers a decomposition formula for the volatility of the unexpected exchange rate movement.

This discussion makes it clear that the exchange rate is a forward-looking variable, which incorporates information about future interest rates and risk premia. As a result, if some macro or financial variables capture variations in interest rates or risk premia, the exchange rate should be able to predict these variables [Engel and West, 2005].

# 1.C Complete-Market Solution

When the markets are complete, households in both countries can trade any Arrow-Debreu securities (a.k.a. contingent claims). Then, the households' budget constraints, such as Eq. (1.1), should be revised to reflect these investment opportunities.

There is a more convenient approach to solving this case. By the First Welfare Theorem, the equilibrium outcome is observationally equivalent to the equilibrium outcome under a social planner, who maximizes a weighted sum of the households' welfare [Negishi, 1960]:

$$
\mathbb {E} _ {0} \left[ \sum_ {t = 0} ^ {\infty} \delta^ {t} (\pi u (c _ {t}) + (1 - \pi) u (c _ {t} ^ {*})) \right],
$$

where the weight  $\pi$  is known as the Pareto weight and is endogenously determined by the households' initial wealth. $^{1}$

The social planner tells the home and foreign households how much to consume, subject to the resource constraints

$$
y _ {t} = c _ {H, t} + c _ {H, t} ^ {*},
$$

$$
y _ {t} ^ {*} = c _ {F, t} + c _ {F, t} ^ {*}.
$$

1 The allocation problem in the competitive economy can be formulated as a fictitious social planner's optimization problem even when the markets are incomplete [Cuoco and He, 1994]. In this case, the Pareto weight  $\pi$  is stochastic and related to different agents' marginal utilities. We will consider one such setting in Chapter 5.

The social planner's Lagrangian is

$$
\mathbb {E} _ {0} \left[ \sum_ {t = 1} ^ {\infty} \delta^ {t} (\pi u (c _ {t}) + (1 - \pi) u (c _ {t} ^ {*})) + \sum_ {t = 1} ^ {\infty} \zeta_ {H, t} (y _ {t} - c _ {H, t} - c _ {H, t} ^ {*}) + \sum_ {t = 1} ^ {\infty} \zeta_ {F, t} (y _ {t} ^ {*} - c _ {F, t} - c _ {F, t} ^ {*}) \right],
$$

which implies the following first-order conditions

$$
\text {w . r . t .} c _ {H, t}: \delta^ {t} \pi u ^ {\prime} (c _ {t}) \alpha \left(\frac {c _ {F , t}}{c _ {H , t}}\right) ^ {1 - \alpha} = \zeta_ {H, t},
$$

$$
\begin{array}{l} \text {w . r . t .} c _ {H, t} ^ {*}: \delta^ {t} (1 - \pi) u ^ {\prime} (c _ {t} ^ {*}) (1 - \alpha) \left(\frac {c _ {F , t} ^ {*}}{c _ {H , t} ^ {*}}\right) ^ {\alpha} \\ = \zeta_ {H, t}, \end{array}
$$

$$
\begin{array}{l} \text {w . r . t .} c _ {F, t}: \quad \delta^ {t} \pi u ^ {\prime} (c _ {t}) (1 - \alpha) \left(\frac {c _ {H , t}}{c _ {F , t}}\right) ^ {\alpha} \\ = \zeta_ {F, t}, \end{array}
$$

$$
\begin{array}{l} \text {w . r . t .} c _ {F, t} ^ {*}: \delta^ {t} (1 - \pi) u ^ {\prime} (c _ {t} ^ {*}) \alpha \left(\frac {c _ {H , t} ^ {*}}{c _ {F , t} ^ {*}}\right) ^ {1 - \alpha} \\ = \zeta_ {F, t}. \end{array}
$$

Plug in the within-period solution in Section 1.A, and we obtain the following equilibrium condition:

$$
\pi u ^ {\prime} \left(c _ {t}\right) = (1 - \pi) u ^ {\prime} \left(c _ {t} ^ {*}\right) \exp \left(e _ {t}\right), \tag {1.15}
$$

which describes the social planner's optimal risk-sharing rule: it sets the allocation so that the home households' marginal utility, weighed by its Pareto weight  $\pi$ , is equal to the foreign households' marginal utility, weighed by its Pareto weight  $(1 - \pi)$  and adjusted by the real exchange rate  $\exp(e_t)$ . The real exchange rate converts the marginal utility from the foreign consumption unit to the home consumption unit.

This equilibrium condition implies a linear allocation rule.

Proposition 1.3. Equilibrium consumption is a linear function of endowments. Specifically, for some value  $k_{t}$ , the consumption of home and foreign goods is

$$
c _ {H, t} = \frac {\alpha k _ {t}}{(1 - \alpha) + \alpha k _ {t}} y _ {t}, \quad c _ {H, t} ^ {*} = \frac {1 - \alpha}{(1 - \alpha) + \alpha k _ {t}} y _ {t},
$$

$$
c _ {F, t} = \frac {(1 - \alpha) k _ {t}}{\alpha + (1 - \alpha) k _ {t}} y _ {t} ^ {*}, \qquad \qquad c _ {F, t} ^ {*} = \frac {\alpha}{\alpha + (1 - \alpha) k _ {t}} y _ {t} ^ {*},
$$

and the aggregate consumption is

$$
c _ {t} = \frac {\alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha}}{((1 - \alpha) + \alpha k _ {t}) ^ {\alpha} (\alpha + (1 - \alpha) k _ {t}) ^ {1 - \alpha}} k _ {t} y _ {t} ^ {\alpha} (y _ {t} ^ {*}) ^ {1 - \alpha},
$$

$$
c _ {t} ^ {*} = \frac {\alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha}}{((1 - \alpha) + \alpha k _ {t}) ^ {1 - \alpha} (\alpha + (1 - \alpha) k _ {t}) ^ {\alpha}} y _ {t} ^ {1 - \alpha} (y _ {t} ^ {*}) ^ {\alpha},
$$

where  $k_{t}$  can be solved via the following implicit equation:

$$
\frac {\pi}{1 - \pi} \frac {u ^ {\prime} (c _ {t})}{u ^ {\prime} (c _ {t} ^ {*})} \frac {\alpha}{1 - \alpha} \left(\frac {c _ {F , t}}{c _ {H , t}}\right) ^ {1 - \alpha} \left(\frac {c _ {H , t} ^ {*}}{c _ {F , t} ^ {*}}\right) ^ {\alpha} = 1.
$$

The proof is presented in Appendix A.1. This optimal risk-sharing rule implies that the equilibrium allocation of home and foreign

goods to home and foreign households is driven by two considerations. First, when the home bias in consumption  $\alpha$  is greater, more home goods are allocated to home households and more foreign goods are allocated to foreign households. Second, an endogenous, stochastic variable  $k_{t}$  further adjusts the shares of the aggregate endowment of home and foreign goods that are allocated to the home households as opposed to the foreign households. When  $k_{t}$  is higher, the home households consume more home and foreign goods relative to the foreign households:

$$
\frac {c _ {H , t}}{c _ {H , t} ^ {*}} = \frac {\alpha}{1 - \alpha} k _ {t}, \qquad \frac {c _ {F , t}}{c _ {F , t} ^ {*}} = \frac {1 - \alpha}{\alpha} k _ {t}.
$$

Once we solve  $k_{t}$ , we can solve the equilibrium allocations without solving for the goods' and the assets' prices in the competitive equilibrium.

We illustrate the equilibrium allocation in a simple numerical example. Suppose the home and foreign households have identical CRRA preferences:  $u(c) = c^{1 - \gamma} / (1 - \gamma)$ , with  $\gamma = 2, \alpha = 0.7$ , and  $\pi = 0.5$ . The endowment  $y_{t}$  is stochastic and  $y_{t}^{*}$  is fixed at 2. Figure 1.1 traces out the equilibrium consumption allocations  $c_{t}$  and  $c_{t}^{*}$  for the home and foreign households as we vary  $y_{t}$ . We can see that, as the home endowments become higher, both countries' consumption increases. The fact that the foreign households' consumption responds to the home endowment shocks reflects international risk-sharing. Moreover, the home country's consumption increases more than the foreign country's consumption: the hypothetical social planner assigns a greater share of the increase in the quantity of home goods to the home households because they derive more utility from consuming home goods due to home bias.

The international risk-sharing can be further illustrated by the international transfer in equilibrium. Figure 1.2 plots the net international transfers of home and foreign households as fractions of their respective endowments. When the home households receive a low endowment  $y_{t}$ , the social planner transfers resources from the foreign country to the home country to balance their marginal utilities. As a result, the home households receive a net transfer paid out by the foreign households.

# 1.C.1 Implied Exchange Rate Dynamics

Using the households' optimality conditions that we derived under the competitive equilibrium, we can back out the prices from quantities. In particular, the optimal risk-sharing rule Eq. (1.15) implies a

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/305ea4c8f3eb67bf8285fb5fa5cfaee1aedfafd5261e58dcebc6fca7a4cfb990.jpg)  
Figure 1.1: Equilibrium Consumption Allocation.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/6430fe20998057eb569efc269abd2ba539d163f39afd1e199be69d08780b647d.jpg)  
Figure 1.2: Equilibrium International Transfer.

relationship between the real exchange rate and marginal utilities:

$$
e _ {t} = \log u ^ {\prime} (c _ {t}) - \log u ^ {\prime} (c _ {t} ^ {*}) + \log \frac {\pi}{1 - \pi},
$$

which can be written as

$$
\Delta e _ {t + 1} = m _ {t + 1} - m _ {t + 1} ^ {*}. \tag {1.16}
$$

This condition indicates that the bilateral exchange rate movement is solely determined by the difference between the two countries' marginal utility growth when the markets are complete. Specifically, when the home households have a higher marginal utility growth  $m_{t+1}$ , which usually indicates a recession in the home country, the

home currency becomes stronger in real terms. Intuitively, this is when the home households become less willing to hold the foreign currency.

Moreover, the expected excess return on the home currency can be expressed as

$$
\mathbb {E} _ {t} \left[ r x _ {t + 1} \right] = - c o v _ {t} \left(m _ {t + 1} ^ {*}, \Delta e _ {t + 1}\right) - \frac {1}{2} v a r _ {t} \left(\Delta e _ {t + 1}\right) = \frac {1}{2} v a r _ {t} \left(m _ {t + 1} ^ {*}\right) - \frac {1}{2} v a r _ {t} \left(m _ {t + 1}\right), \tag {1.17}
$$

which implies that the home currency's risk premium is decreasing in home SDF volatility and increasing in foreign SDF volatility. As a result, to generate reasonable variations in either conditional or unconditional currency expected returns, the variances of the SDFs play a central role.

Figure 1.3 plots the equilibrium real exchange rate  $e_t$ , which measures the strength of the home currency, as we vary the home endowment  $y_t$ . In states with a low home endowment, the home goods are relatively scarce, leading to stronger terms of trade and a real appreciation of the home currency. This expenditure switching effect arises in a large class of international models, which describes how supply shocks affect the exchange rate determination. As we will see in later sections, this supply effect may be offset by demand shocks.

Another way to understand this relationship is via international risk-sharing: because of the home bias in consumption, the home households' consumption loads more on the home endowment. When the home endowment is low, the home households' marginal utility is higher than the foreign households', and, through the optimal international risk-sharing terms described by Eq. (1.16), requires a real appreciation of home currency to equilibrate their demand for financial assets.

# 1.C.2 Special Case: Log Utility

We consider a special case in which home and foreign households have the log utility, i.e.  $u(c) = \log (c)$ . In this case, the parameter  $k$  is a constant,

$$
k _ {t} = k = \frac {\pi}{1 - \pi},
$$

and Proposition 1.3 implies a simple rule for consumption allocations:

$$
c _ {H, t} = \frac {\alpha \pi}{\alpha \pi + (1 - \alpha) (1 - \pi)} y _ {t}, \quad c _ {H, t} ^ {*} = \frac {(1 - \alpha) (1 - \pi)}{\alpha \pi + (1 - \alpha) (1 - \pi)} y _ {t},
$$

$$
c _ {F, t} = \frac {(1 - \alpha) \pi}{(1 - \alpha) \pi + \alpha (1 - \pi)} y _ {t} ^ {*}, \qquad c _ {F, t} ^ {*} = \frac {\alpha (1 - \pi)}{(1 - \alpha) \pi + \alpha (1 - \pi)} y _ {t} ^ {*}.
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/966a235ed2c2ccdd6011a9b8ce7a64282ec95f2c66648adbb358e4834579f1b3.jpg)  
Figure 1.3: Equilibrium Exchange Rate.

This allocation rule has an intuitive interpretation: home and foreign households agree to split the endowments according to their Pareto weights  $\pi$  and  $1 - \pi$  and their home bias  $\alpha$ . If the home households have a higher Pareto weight (i.e.,  $\pi > 0.5$ ), then, the home households always receive more allocations. Moreover, regardless of the Pareto weights, home households always receive more home goods, and foreign households always receive more foreign goods due to their home bias in consumption (i.e.,  $\alpha > 0.5$ ). As such, while this allocation rule allows the households in both countries to share their risks internationally,[2] they may still have different exposures to the home and foreign endowment shocks due to their home bias in consumption.

Since the markets are complete, this allocation can be implemented by a number of financial contracts. For example, the home households hold  $\frac{\alpha\pi}{\alpha\pi + (1 - \alpha)(1 - \pi)}$  unit of the home endowment claim and  $\frac{(1 - \alpha)\pi}{(1 - \alpha)\pi + \alpha(1 - \pi)}$  unit of the foreign endowment claim, and the foreign households hold the remaining fractions. In the symmetric case of  $\pi = 1/2$  and  $\alpha > 1/2$ , the home households hold more than half of the home endowment claim, and less than half of the foreign endowment claim. Therefore, home bias in consumption preference begets home bias in international portfolios. We will discuss the implementation of the complete-market allocation and the corresponding portfolio shares in an example with richer preferences in Section 7.A.

Given these equilibrium consumption allocations, the home and

2 While this statement is true in general, in this case of log preference, the terms-of-trade responses alone provide perfect insurance against output shocks. As a result, the allocation under financial autarky is not far worse off. See [Cole and Obstfeld, 1991] for a detailed discussion.

foreign SDFs can be expressed as

$$
m _ {t + 1} = \log \delta - \Delta \log c _ {t + 1} = \log \delta - \alpha \Delta \log y _ {t + 1} - (1 - \alpha) \Delta \log y _ {t + 1} ^ {*},
$$

$$
m _ {t + 1} ^ {*} = \log \delta - \Delta \log c _ {t + 1} ^ {*} = \log \delta - (1 - \alpha) \Delta \log y _ {t + 1} - \alpha \Delta \log y _ {t + 1} ^ {*},
$$

and the exchange rate movement is driven by the fundamental shocks to the endowments:

$$
\Delta e _ {t + 1} = m _ {t + 1} - m _ {t + 1} ^ {*} = (2 \alpha - 1) (\Delta \log y _ {t + 1} ^ {*} - \Delta \log y _ {t + 1}).
$$

This exchange rate expression again highlights the result in Figure 1.3. Under the social planner's optimal allocation scheme, the home households' allocation is exposed to both home and foreign endowment shocks, with a higher exposure to the home endowment shock. As a result, a negative home endowment shock raises the home households' marginal utility relative to the foreign households', and leads to a real appreciation of the home currency.

# 1.D Asset Market and Goods Market Views of Exchange Rates

In this section, we re-examine the two sets of equilibrium conditions that characterize the exchange rate.

# 1.D.1 The Asset Market View

First, the Euler equations from the intertemporal solutions, reproduced below,

$$
\begin{array}{l} 1 = \mathbb {E} _ {t} \left[ \exp \left(m _ {t + 1} + r _ {t}\right) \right], \\ 1 = \mathbb {E} _ {t} \left[ \exp \left(m _ {t + 1} - \Delta e _ {t + 1} + r _ {t} ^ {*}\right) \right], \\ 1 = \mathbb {E} _ {t} \left[ \exp \left(m _ {t + 1} ^ {*} + r _ {t} ^ {*}\right) \right], \\ 1 = \mathbb {E} _ {t} \left[ \exp \left(m _ {t + 1} ^ {*} + \Delta e _ {t + 1} + r _ {t}\right) \right], \\ \end{array}
$$

impose restrictions on the exchange rate dynamics. By relating the exchange rate movement to the SDFs and interest rates, they represent the asset market view of exchange rates. As we discussed in Section 1.B, these restrictions also characterize the exchange rate level and the currency expected return.

In the complete-market case we discussed in Section 1.C, these restrictions can be further simplified. The exchange rate movement is equal to the SDF differential:

$$
\Delta e _ {t + 1} = m _ {t + 1} - m _ {t + 1} ^ {*} = \Delta \log u ^ {\prime} \left(c _ {t + 1}\right) - \Delta \log u ^ {\prime} \left(c _ {t + 1} ^ {*}\right),
$$

which links the exchange rate movement directly to marginal utility growth. In this case, the real exchange rate movement describes how

the households trade off marginal utilities across time. Specifically, the hypothetical social planner equates the home and foreign households' marginal utility growth rates after converting their numériaires to the same consumption bundle.

Under this view, to make sense of the exchange rate dynamics, our task is to understand the underlying economic structures, preferences, and frictions that give rise to the SDF movements as well as possible deviations from the perfect risk-sharing condition.

# 1.D.2 The Goods Market View

Next, we consider the within-period consumption choices, reproduced below,

$$
\exp (e _ {t}) = \frac {\alpha}{1 - \alpha} \frac {p _ {t} ^ {*} c _ {F , t}}{p _ {t} c _ {H , t}},
$$

$$
\exp (- e _ {t}) = \frac {\alpha}{1 - \alpha} \frac {p _ {t} c _ {H , t} ^ {*}}{p _ {t} ^ {*} c _ {F , t} ^ {*}}.
$$

More generally, if we use  $u(c_{H,t}, c_{F,t})$  and  $u^{*}(c_{F,t}^{*}, c_{H,t}^{*})$  to denote the home and foreign households' utilities as functions of their goods-specific consumption, we can express the within-period solutions as

$$
\exp (e _ {t}) = \left(\frac {\partial u (c _ {H , t} , c _ {F , t}) / \partial c _ {H , t}}{\partial u (c _ {H , t} , c _ {F , t}) / \partial c _ {F , t}}\right) ^ {2 \alpha - 1},
$$

$$
\exp (- e _ {t}) = \left(\frac {\partial u ^ {*} (c _ {F , t} ^ {*} , c _ {H , t}) / \partial c _ {F , t} ^ {*}}{\partial u ^ {*} (c _ {F , t} ^ {*} , c _ {H , t}) / \partial c _ {H , t} ^ {*}}\right) ^ {2 \alpha - 1}.
$$

This set of equations relates the exchange rate level to how the households trade off consumption expenditures between different goods within the same period, which gives rise to the goods market view of exchange rates. Absent frictions in international trade and consumption, a stronger home currency in real terms must correspond to a lower consumption share in the home goods. Conversely, if households experience shocks to how they value home vs. foreign goods, this preference shock also impacts the equilibrium exchange rate.

Moreover, if the economy is stationary and we log-linearize around a symmetric steady state with  $\bar{y} = \bar{y}^*$ ,  $\bar{c} = \bar{c}^*$ , and  $\bar{e} = 0$ , we can combine the within-period solutions with the market clearing conditions in the goods market to obtain the following result:

Proposition 1.4. After a first-order approximation, the relative consumption level between home and foreign households is determined by the equilibrium real exchange rate and the relative endowment level:

$$
(2 \alpha - 1) \left(\log c _ {t} - \log c _ {t} ^ {*}\right) = \left(\log y _ {t} - \log y _ {t} ^ {*}\right) + 2 (1 - \alpha) \frac {2 \alpha}{2 \alpha - 1} e _ {t}. \tag {1.18}
$$

The proof is presented in Appendix A.2. This proposition shows that, holding the endowments fixed, a strong home currency in real terms (i.e., higher  $e_{t}$ ) leads to a higher home consumption relative to foreign consumption, because the home endowment offers the home households stronger purchasing power.

# 1.D.3 Harmonizing the Two Views

These two views play fundamental roles in understanding the exchange rate dynamics. A fully specified model needs to take a stance on both aspects. For example, the model we develop in Section 1.A assumes frictionless trading in both financial assets and goods. A more sophisticated model can enrich the asset markets, by introducing richer preferences and shocks to the SDFs as we will discuss in Chapter 3, by introducing deviations from the Euler equations (1.6) to (1.9) as we will discuss in Chapters 4 and 10, or by introducing incomplete asset market spanning as we will discuss in Chapter 5.

The effects of these additional ingredients in the asset markets can be understood in reduced form as wedges. For example, suppose the households have power utilities with a relative risk aversion of  $\gamma$ . Then, the real exchange rate can be written as its complete-market solution plus an asset market wedge  $\tau_t^{AM}$ :

$$
e _ {t} = - \gamma \left(\log c _ {t} - \log c _ {t} ^ {*}\right) + \tau_ {t} ^ {A M}.
$$

This wedge captures the deviations from this benchmark characterization of the households' intertemporal substitution.

Similarly, a more sophisticated model can enrich the goods market by introducing frictions in the international trade of the goods, such as invoicing frictions and producer mark-ups, by introducing costs in the international transportation of the goods, or by introducing shocks to household preferences over different types of goods.

The real exchange rate can be written as the frictionless goods market solution (1.18) plus a goods market wedge  $\tau_t^{GM}$ :

$$
(2 \alpha - 1) (\log c _ {t} - \log c _ {t} ^ {*}) = (\log y _ {t} - \log y _ {t} ^ {*}) + 2 (1 - \alpha) \frac {2 \alpha}{2 \alpha - 1} e _ {t} + \tau_ {t} ^ {G M}.
$$

This wedge captures the deviations from the within-period consumption allocation in frictionless goods market.

Combining these two equations, we obtain the following approximate expression for the real exchange rate:

$$
\left(\frac {2 \alpha - 1}{\gamma} + 2 (1 - \alpha) \frac {2 \alpha}{2 \alpha - 1}\right) e _ {t} = - \left(\log y _ {t} - \log y _ {t} ^ {*} - \frac {2 \alpha - 1}{\gamma} \tau_ {t} ^ {A M} + \tau_ {t} ^ {G M}\right), \tag {1.19}
$$

which shows that the exchange rate is driven by the benchmark solution in complete financial markets and frictionless goods market,

which depends on the relative endowments  $(\log y_{t} - \log y_{t}^{*})$ , plus the asset market wedge  $\tau_{t}^{AM}$  and the goods market wedge  $\tau_{t}^{GM}$ .

Any model we consider in this note can be characterized by its stance on the supply of consumption goods and the two wedges. While the goods market issues are equally important for understanding the international macro and financial outcomes, we focus more on the asset market view in this note.

# 2


---
aliases: null
tags: null
key_concepts: null
parent_directory: null
cssclasses: academia
title: Monetary and Fiscal Policies
linter-yaml-title-alias: Monetary and Fiscal Policies
primary_tags:
- policies macro monetary literature
- exchange rate monetary fiscal
- real exchange rate equilibrium
- policies affect equilibrium consumption
- equilibrium consumption nominal rates
secondary_tags:
- model monetary fiscal policies
- effects monetary policy let
- nominal rate policy
- real effects fiscal policy
- government surpluses equilibrium consumption
- fiscal policies affect exchange
- consumption dynamics terms fiscal
- expenditures real effects monetary
- effects productivity shocks equilibrium
- exchange rate dynamics channels
- consumption flexible price
- yield monetary policies refer
tags_extracted: '2025-12-18T01:44:49.131655'
---

# Monetary and Fiscal Policies

# Summary

- We develop a stylized model in the New Keynesian tradition. In this model, when prices are flexible, monetary and fiscal policies have no real effects: they do not affect consumption and real exchange rate. They only affect inflation, which affects the nominal interest rate and the nominal exchange rate.  
- When prices are sticky, monetary and fiscal policies have real effects: they influence the real interest rate, which affects consumption and the real exchange rate.  
- Monetary and fiscal policies are not necessarily independent. Taking a strong stance on one policy can affect the other policy.  
- While it is beyond the scope of this chapter, monetary and fiscal policies can affect the exchange rate dynamics through other channels such as the risk premium and the convenience yield as well.

The monetary policies refer to the actions taken by the central bank, which is the Federal Reserve in the U.S. The policy tool includes setting interest rates, controlling the money supply, and conducting other quantity-based operations such as security purchases and sales. The fiscal policies refer to the government's taxation and spending decisions, and the corresponding debt issuance and retirement.

These monetary and fiscal policies play important roles in shaping the exchange rate dynamics. Studying their effects on the exchange rate marks the birthplace of the international macro literature [Mundell, 1963, Fleming, 1962, Dornbusch, 1976, Frankel, 1979]. In this chapter, we develop a stylized but unified model of monetary and fiscal policies to capture the baseline channels, in which monetary and fiscal policies affect the exchange rate dynamics by shaping the real risk-free rates. It represents a standard way of modeling these policies in the macro and monetary literature. However, given

our discussion in the beginning of Chapter 3, it is likely that monetary and fiscal policies also affect the exchange rates through the risk premium and the convenience yield channels. We return to this issue at the end of this chapter.

# 6.A Introducing the Nominal Layer

In this chapter, we will consider a model with the nominal layer for the first time. Let us begin with some basic definitions and characterizations, which apply to not only this model but most models with a nominal layer. In particular, we may introduce home and foreign currencies to the baseline model in Section 1.A and consider it as a special case.

Let  $P_{t}$  denote the price index in the home country, which measures the price of the home consumption bundle in the unit of the local currency. For example, if one unit of the U.S. home consumption bundle costs 100 dollars, then the U.S. price level  $P_{t} = 100$ . Inflation is defined as the change in the price level:

$$
\pi_{t} \stackrel {\text{de f}} {=} \Delta \log P_{t}.
$$

Recall that  $c_{t}$  is the real consumption. We use  $C_{t} = P_{t}c_{t}$  to denote the nominal consumption. In the same example, if the U.S. households consume 10 units of the home consumption bundle, then the real consumption is  $c_{t} = 10$  units of the consumption bundle and the nominal consumption is  $C_{t} = 10 \times 100 = 1000$  dollars. More generally, we use uppercase letters to denote nominal prices and quantities, and we use lowercase letters to denote real prices and quantities. The nominal interest rate  $i_{t}$  and the inflation rate  $\pi_{t}$  are the exceptions to this notation, as it is common to express them in lowercase. $^{1}$

Recall that the log real exchange rate  $e_t$  measures the conversion ratio between the home and foreign countries' consumption baskets, and a higher value means that the home consumption basket is more expensive. We similarly define the nominal exchange rate  $\exp(\mathcal{E}_t)$  as the conversion ratio between the home and foreign currencies. It is related to the real exchange rate  $e_t$  and the price levels  $P_t$  and  $P_t^*$  via

$$
\exp (e_{t}) = \exp (\mathcal {E}_{t}) \frac{P_{t}}{P_{t}^{*}}.
$$

If we fix the real exchange rate  $e_t$ , a higher home inflation  $P_t$  is associated with a lower nominal value of the home currency  $\mathcal{E}_t$ .

Finally, we use the nominal SDF to discount nominal returns and nominal cash flows. The home nominal SDF  $M_{t+1}$  is defined as

$$
M_{t + 1} \stackrel {\text{de f}} {=} m_{t + 1} - \pi_{t + 1}. \tag {6.1}
$$

In our derivation, we will also use the lower case  $p_t(h)$  to denote the price of a specific variety of goods, which helps to distinguish it from the aggregate price index  $P_t$ .

If an asset with real return  $\tilde{r}_{t+1}$ , its nominal return is  $\tilde{r}_{t+1} + \pi_{t+1}$ . We can price this asset either by

$$
1 = \mathbb {E}_{t} [ \exp (m_{t + 1} + \tilde {r}_{t + 1}) ],
$$

or equivalently by

$$
1 = \mathbb {E}_{t} [ \exp (M_{t + 1} + \tilde {r}_{t + 1} + \pi_{t + 1}) ].
$$

# 6.A.1 Exchange Rate Accounting

Next, let us relate these concepts to the exchange rate accounting exercises in Section 1.B and 4.B. Starting from the Euler equation for the nominal bond return, we have

$$
1 = \mathbb {E}_{t} \left[ \exp \left(M_{t + 1} + i_{t}\right) \right],
$$

which implies

$$
\exp (- i_{t}) = \mathbb {E}_{t} \left[ \exp (M_{t + 1}) \right] = \mathbb {E}_{t} \left[ \exp \left(m_{t + 1} - \pi_{t + 1}\right) \right].
$$

Assuming joint normality, we can express the nominal interest rate as

$$
\begin{array}{l} i_{t} = - \mathbb {E}_{t} \left[ m_{t + 1} \right] - \frac{1}{2} v a r_{t} \left(m_{t + 1}\right) + \mathbb {E}_{t} \left[ \pi_{t + 1} \right] - \frac{1}{2} v a r_{t} \left(\pi_{t + 1}\right) + c o v_{t} \left(m_{t + 1}, \pi_{t + 1}\right) \\ = r_{t} + \mathbb {E}_{t} \left[ \pi_{t + 1} \right] + i r p_{t}, \tag {6.2} \\ \end{array}
$$

where

$$
i r p_{t} \stackrel {\text{de f}} {=} c o v_{t} \left(m_{t + 1}, \pi_{t + 1}\right) - \frac{1}{2} v a r_{t} \left(\pi_{t + 1}\right)
$$

denotes the inflation risk premium. This expression shows that the nominal interest rate  $i_t$  can be decomposed into the real interest rate  $r_t$ , the expected inflation rate  $\mathbb{E}_t[\pi_{t+1}]$ , and the inflation risk premium  $irp_t$ .

Define the nominal currency excess return as

$$
R X_{t + 1} = \Delta \mathcal {E}_{t + 1} + i_{t} - i_{t}^{*}.
$$

Then, we obtain the nominal version of Proposition 1.1, which states that, in the absence of bond convenience yields, the home currency's expected nominal excess return is determined by its risk premium captured by its covariance with the SDF plus a Jensen's term.

Proposition 6.1. The home currency's expected log excess return is determined by the covariance between the log foreign SDF and log exchange rate movement minus a Jensen's term:

$$
R P_{t} \stackrel {\text{de f}} {=} \mathbb {E}_{t} [ R X_{t + 1} ] = - c o v_{t} (M_{t + 1}^{*}, \Delta \mathcal {E}_{t + 1}) - \frac{1}{2} v a r_{t} (\Delta \mathcal {E}_{t + 1}).
$$

However, I hesitate to generalize the real exchange rate decomposition in Proposition 1.2 to the nominal case, because it relies on exchange rate stationarity. Specifically, assuming that the nominal exchange rate is stationary, we can express its level as

$$
\mathcal {E}_{t} = \sum_{j = 0}^{\infty} \mathbb {E}_{t} \left[ i_{t + j} - i_{t + j}^{*} \right] - \sum_{j = 0}^{\infty} \mathbb {E}_{t} \left[ R P_{t + j} \right] + \bar {\mathcal {E}}. \tag {6.3}
$$

What prevents this formula from describing a realistic situation is that the price level is usually considered to be non-stationary. For example, suppose the real exchange rate and the foreign inflation are fixed, and the U.S. experiences a persistent increase in inflation, which raises the price level  $P_{t}$  today and increases the expected future inflation. Holding the real rate constant, the latter effect also raises the U.S. nominal interest rate  $i_{t+j}$  in the future. Then, from  $\exp(e_{t}) = \exp(\mathcal{E}_{t})P_{t} / P_{t}^{*}$ , we should expect the home inflation to depreciate the home currency in nominal terms, i.e.,  $\mathcal{E}_{t}$  declines. On the other hand, Eq. (6.3) implies that a higher expected path of the home nominal interest rate  $i_{t+j}$  should imply a stronger home currency in nominal terms, i.e.,  $\mathcal{E}_{t}$  increases, which leads to a contradiction.

The reason we obtain this contradiction is that Eq. (6.3) requires the price level differential to be stationary. If the home price level increases today, it has to decline in the future, so that the home currency's nominal depreciation implied from  $\exp(e_t) = \exp(\mathcal{E}_t)P_t / P_t^*$  and a higher  $P_t$  is consistent with lower expected home nominal interest rates  $i_{t+j}$  due to lower expected inflation.

# 6.B Model Set-Up

We consider a two-country model that incorporates firm mark-up and sticky prices. Most ingredients in the model including the monetary setting follow Corsetti and Pesenti [2007], and the fiscal part follows Jiang [2022]. This model is a simpler variant of the New Keynesian/DSGE models.

In this section, we will first characterize the model under flexible prices, which generates the results that are similar to the model developed in Section 1.A. In the next section, we will characterize the model under sticky prices and explore its implications.

# 6.B.1 Households

There are two countries, home and foreign. Each country contains a unit mass of households, a unit mass of firms, and a government. Home households are indexed by  $j \in [0,1]$ , and home firms are indexed by  $h \in [0,1]$ . Foreign households are indexed by  $j^{*} \in [0,1]$

and foreign firms are indexed by  $f \in [0,1]$ . Each firm produces a unique variety of good, which is an imperfect substitute for other varieties.

The lifetime expected utility of home household  $j$  is

$$
\mathbb {E}_{0} \sum_{t = 0}^{\infty} \delta^{t} u_{t} (j) \stackrel {{\mathrm{de f}}} {{=}} \mathbb {E}_{0} \sum_{t = 0}^{\infty} \delta^{t} \left(\log c_{t} (j) - \kappa \frac{\ell_{t} (j)^{1 + \nu}}{1 + \nu}\right),
$$

where  $\ell_t(j)$  is the labor effort, and  $\nu > 0$  is the labor curvature coefficient.  $c_t(j)$  is the consumption composed of a Cobb-Douglas basket of home and foreign bundles:

$$
c_{t} (j) = c_{H, t} (j)^{\alpha} c_{F, t} (j)^{1 - \alpha},
$$

and  $c_{H,t}(j)$  and  $c_{F,t}(j)$  are constant-elasticity-of-substitution (CES) bundles of home and foreign varieties:

$$
c_{H, t} (j) = \left(\int_{0}^{1} c_{t} (h, j)^{1 - 1 / \rho} d h\right)^{1 / (1 - 1 / \rho)}, \qquad c_{F, t} (j) = \left(\int_{0}^{1} c_{t} (f, j)^{1 - 1 / \rho} d f\right)^{1 / (1 - 1 / \rho)}.
$$

The parameter  $\alpha > 1/2$  measures home bias in consumption, and the parameter  $\rho$  is the elasticity of substitution across varieties.

Let  $p_t(h)$  and  $p_t(f)$  denote the home-currency prices of varieties  $h$  and  $f$ . Let  $P_{H,t}$  and  $P_{F,t}$  denote the home-currency prices of the home and foreign bundles  $c_{H,t}(j)$  and  $c_{F,t}(j)$ , which can be shown to be the CES indices with elasticity  $1 / \rho$ :

$$
P_{H, t} = \left(\int_{0}^{1} p_{t} (h)^{1 - \rho} d h\right)^{1 / (1 - \rho)}, \quad P_{F, t} = \left(\int_{0}^{1} p_{t} (f)^{1 - \rho} d f\right)^{1 / (1 - \rho)}.
$$

Similarly, let  $P_{t}$  denote the home-currency price of the aggregate consumption basket in the home country. This utility-based CPI can be expressed as

$$
P_{t} = \frac{1}{\alpha^{\alpha} (1 - \alpha)^{1 - \alpha}} P_{H, t}^{\alpha} P_{F, t}^{1 - \alpha}.
$$

Moreover, the solution of the within-period problem is similar to that in Section 1.A. The home household makes the following choices for different goods:

$$
c_{t} (h, j) = \left(\frac{p_{t} (h)}{P_{H , t}}\right)^{- \rho} c_{H, t}, \quad c_{t} (f, j) = \left(\frac{p_{t} (f)}{P_{F , t}}\right)^{- \rho} c_{F, t},
$$

and

$$
c_{H, t} = \alpha \frac{P_{t}}{P_{H , t}} c_{t}, \quad c_{F, t} = (1 - \alpha) \frac{P_{t}}{P_{F , t}} c_{t}.
$$

Having specified the household preferences and the within-period solution, we now turn to the households' budget constraint and their

intertemporal solution. Home household  $j$  owns the portfolio of home firms and provides labor to the firms. It earns a nominal wage  $W_{t}$  and receives a nominal dividend  $D_{t}(j)$  from the firms. It also pays tax  $\tau_{t}(j)$  to the government and purchases consumption  $c_{t}(j)$ , both denoted in real terms.

The financial markets are complete. Let  $\sigma_{t}$  denote the state of the economy at time  $t$ . Let  $\Theta (\sigma_{t + 1}|\sigma_t)$  denote the time- $t$  home-currency price for one unit of home currency delivered at time  $t + 1$  contingent on the state being  $\sigma_{t + 1}$ . At time  $t$ , home household  $j$  holds  $\Omega_{t}(\sigma_{t + 1},j)$  unit of the Arrow-Debreu security that pays off in state  $\sigma_{t + 1}$ .  $\Theta^{*}(\sigma_{t + 1}|\sigma_{t})$  is similarly defined as the time- $t$  foreign-currency price for one unit of foreign currency delivered at time  $t + 1$  contingent on the state being  $\sigma_{t + 1}$ , and  $\Omega_{t}^{*}(\sigma_{t + 1},j)$  is the quantity of this security held by home household  $j$ .

Let  $\exp(\mathcal{E}_t)$  denote the nominal exchange rate, in the unit of foreign currency per home currency. A higher nominal exchange rate means a stronger foreign currency. Then, the individual household's budget constraint at time  $t$  and state  $\sigma_t$  is

$$
\begin{array}{l} \sum_{\sigma_{t + 1}} \Omega_{t} (\sigma_{t + 1}, j) \Theta (\sigma_{t + 1} | \sigma_{t}) + \exp (- \mathcal {E}_{t}) \sum_{\sigma_{t + 1}} \Omega_{t}^{*} (\sigma_{t + 1}, j) \Theta^{*} (\sigma_{t + 1} | \sigma_{t}) \\ \leq W_{t} \ell_{t} (j) + D_{t} (j) - P_{t} \tau_{t} (j) - P_{t} c_{t} (j) + \Omega_{t - 1} (\sigma_{t}, j) + \exp (- \mathcal {E}_{t}) \Omega_{t - 1}^{*} (\sigma_{t}, j). \\ \end{array}
$$

The home household's Lagrangian is

$$
\begin{array}{l} \mathcal {L} (j) = \max  \mathbb {E}_{0} \sum_{t = 0}^{\infty} \delta^{t} \left(\log c_{t} (j) - \kappa \frac{\ell_{t} (j)^{1 + \nu}}{1 + \nu}\right) \\ - \mathbb {E}_{0} \sum_{t = 0}^{\infty} \delta^{t} \zeta_{t} (j) \left\{\sum_{\sigma_{t + 1}} \Omega_{t} \left(\sigma_{t + 1}, j\right) \Theta \left(\sigma_{t + 1} \mid \sigma_{t}\right) + \exp \left(- \mathcal {E}_{t}\right) \sum_{\sigma_{t + 1}} \Omega_{t}^{*} \left(\sigma_{t + 1}, j\right) \Theta^{*} \left(\sigma_{t + 1} \mid \sigma_{t}\right) \right. \\ \left. - W_{t} \ell_{t} (j) - D_{t} (j) + P_{t} \tau_{t} (j) + P_{t} c_{t} (j) - \Omega_{t - 1} (\sigma_{t}, j) - \exp \left(- \mathcal {E}_{t}\right) \Omega_{t - 1}^{*} (\sigma_{t}, j) \right\} \\ \end{array}
$$

The first-order conditions imply

$$
\zeta_{t} (j) = \frac{1}{P_{t} c_{t} (j)},
$$

$$
\Theta (\sigma_{t + 1} | \sigma_{t}) = \delta \mathbb {P} (\sigma_{t + 1} | \sigma_{t}) \frac{P_{t} c_{t} (j)}{P_{t + 1} c_{t + 1} (j)},
$$

$$
\kappa \ell_{t} (j)^{\nu} P_{t} c_{t} (j) = W_{t}.
$$

We define the home country's nominal SDF as

$$
\exp \left(M_{t + 1}\right) \stackrel {\text{de f}} {=} \delta \frac{P_{t} c_{t} (j)}{P_{t + 1} c_{t + 1} (j)},
$$

which is related to its real SDF via

$$
\exp (m_{t + 1}) \stackrel {\mathrm{de f}} {=} \delta \frac{c_{t}}{c_{t + 1}} = \exp (M_{t + 1} + \pi_{t + 1}).
$$

Since the markets are complete, we can show that the nominal exchange rate movement equals the ratio between the two countries' nominal SDFs:

$$
\exp (M_{t + 1}) = \exp \left(M_{t + 1}^{*} - \mathcal {E}_{t} + \mathcal {E}_{t + 1}\right),
$$

$$
\frac{P_{t} c_{t} (j)}{P_{t + 1} c_{t + 1} (j)} = \frac{\exp (- \mathcal {E}_{t})}{\exp (- \mathcal {E}_{t + 1})} \frac{P_{t}^{*} c_{t}^{*} (j^{*})}{P_{t + 1}^{*} c_{t + 1}^{*} (j^{*})}.
$$

To keep the algebra simple, we assume the initial nominal exchange rate level is pinned down by  $P_0c_0(j) = \exp(-\mathcal{E}_0)P_0^*c_0^*(j)$  at time 0. Since the market is complete, this assumption amounts to taking a stance on the two countries' wealth distribution at time 0. Then, the nominal exchange rate satisfies

$$
P_{t} c_{t} (j) = \exp (- \mathcal {E}_{t}) P_{t}^{*} c_{t}^{*} (j^{*})
$$

for all time  $t$ .

In this way, we recover the complete-market solution of the exchange rate movement in nominal terms:

$$
\Delta \mathcal {E}_{t + 1} = M_{t + 1} - M_{t + 1}^{*}
$$

By symmetry, all households in each country have the same consumption, saving, and labor decisions. Therefore, we can drop their indices  $j$  and  $j^*$ .

# 6.B.2 Firms

Each home firm produces a variety  $h$  using labor supplied by home households. The production technology is linear in labor input:

$$
y_{t} (h) = z_{t} \ell_{t} (h),
$$

where  $y_{t}(h)$  is the output of firm  $h$ ,  $\ell_t(h)$  is the labor input, and  $z_{t}$  is a productivity process common to all home firms. To produce  $y_{t}(h)$  units of goods, firm  $h$  faces a wage cost of  $W_{t}\ell_{t}(h)$ . Similarly, the foreign firm has a production function linear in labor input with productivity  $z_{t}^{*}$ .

Aggregating across home and foreign households, we obtain the total demand for variety  $h$ :

$$
y_{t} (h) = \int_{0}^{1} c_{t} (h, j) d j + \int_{0}^{1} c_{t}^{*} (h, j) d j.
$$

The firm's nominal dividend is

$$
D_{t} (h) = p_{t} (h) \int_{0}^{1} c_{t} (h, j) d j + \exp (- \mathcal {E}_{t}) p_{t}^{*} (h) \int_{0}^{1} c_{t}^{*} (h, j) d j - W_{t} \ell_{t} (h).
$$

The firm's objective function is to maximize the present value of this dividend stream. Let  $MC_{t}$  denote the nominal marginal cost:

$$
M C_{t} \stackrel {\text{de f}} {=} \frac{W_{t}}{z_{t}}.
$$

Then, plugging in the solution from the households' within-period problem, we obtain

$$
\begin{array}{l} D_{t} (h) = \left(p_{t} (h) - M C_{t}\right) \left(\frac{p_{t} (h)}{P_{H , t}}\right)^{- \rho} c_{H, t} \tag {6.4} \\ + \left(\exp (- \mathcal {E}_{t}) p_{t}^{*} (h) - M C_{t}\right) \left(\frac{p_{t}^{*} (h)}{P_{H , t}^{*}}\right)^{- \rho} c_{H, t}^{*}, \\ \end{array}
$$

which means that the firm's profit is equal to the profit margin times the quantity of goods sold in both countries. Since the firms produce unique goods varieties that are imperfect substitutes, the profit margin and the profit are nonzero.

# 6.B.3 Fiscal Policy

We assume that each country's fiscal authority controls its government tax and spending processes. For tractability, we make the following simplifying assumptions. First, tax and spending fall on the same basket of goods as the households' consumption, which is an aggregate of both home and foreign varieties. For the home government, let  $\tau_{t}$  denote its tax revenue and let  $g_{t}$  denote its spending in real terms.

Second, government spending is not remitted back to domestic households. As will be shown in the next section, under this assumption and flexible prices, government spending reduces the available goods for household consumption and behaves like a positive demand shock in Section 3.C. This standard mechanism will be contrasted with the new effects generated by the intertemporal government budget condition and sticky prices.

Third, governments only issue one-period debt in local currency units. The government debt does not default on its notional value, but its real value can vary due to inflation. It is therefore equivalent to a claim that pays off one unit of local currency in every state. Let  $Q_{t+1}$  denote the quantity of outstanding home government debt that is issued at time  $t$  and due at time  $t+1$ . Let  $i_t$  denote the home nominal interest rate. The government budget condition in nominal terms is

$$
Q_{t} + P_{t} g_{t} = P_{t} \tau_{t} + Q_{t + 1} \exp (- i_{t}). \tag {6.5}
$$

Let  $s_t \stackrel{\mathrm{def}}{=} \tau_t - g_t$  denote the home real government surplus. Similarly, let  $s_t^* \stackrel{\mathrm{def}}{=} \tau_t^* - g_t^*$  denote the foreign real government surplus.

Iterate forward the Home government's intertemporal budget condition,

$$
\frac{Q_{t}}{P_{t}} = \mathbb {E}_{t} \left[ \sum_{k = 0}^{\infty} \exp (m_{t, t + k}) s_{t + k} \right] + \lim_{T \rightarrow \infty} \mathbb {E}_{t} \left[ \exp (m_{t, t + T}) \frac{Q_{t + T}}{P_{t + T}} \right].
$$

The transversality condition requires that the terminal value in the intertemporal budget condition vanishes:

$$
\lim_{T \rightarrow \infty} \mathbb {E}_{t} \left[ \exp (m_{t, t + T}) \frac{Q_{t + T}}{P_{t + T}} \right] = 0,
$$

which is equivalent to requiring that the present value of government surpluses grows slower than the real discount rate:

$$
\lim_{T \to \infty} \mathbb {E}_{t} \left[ \exp (m_{t, t + T}) \left(\sum_{k = 0}^{\infty} \exp (m_{t + T, t + T + k}) s_{t + T + k}\right) \right] = 0.
$$

We will further discuss this transversality condition in Section 8.C.

Under this transversality condition, the government's intertemporal budget condition becomes

$$
\frac{Q_{t}}{P_{t}} = \mathbb {E}_{t} \left[ \sum_{k = 0}^{\infty} \exp \left(m_{t, t + k}\right) s_{t + k} \right]. \tag {6.6}
$$

This equation states that the real value of government debt is equal to the real present value of government surpluses. In particular, if  $Q_{t} / P_{t}$  is greater than or smaller than the present value of government surpluses, an arbitrage opportunity will exist.

# 6.B.4 Monetary Policy

We assume that each country's monetary authority controls its local one-period nominal interest rate  $i_t$ . The monetary authority usually refers to the central bank. Usually, the nominal interest rate is set according to a Taylor rule.

From the intertemporal Euler equation,

$$
\begin{array}{l} 1 = \mathbb {E}_{t} [ \exp (M_{t + 1}) \exp (i_{t}) ] = \mathbb {E}_{t} \left[ \exp (m_{t + 1}) \frac{P_{t}}{P_{t + 1}} \exp (i_{t}) \right] \\ \exp (- i_{t}) = \mathbb {E}_{t} \left[ \exp (m_{t + 1}) \frac{P_{t}}{P_{t + 1}} \right], \\ \end{array}
$$

the nominal interest rate  $i_t$  pins down the expected inflation under the risk-neutral expectation. A higher nominal interest rate generates a higher expected inflation.

How does the monetary authority implement this interest rate target? Recall Eq. (6.5), reproduced below,

$$
Q_{t} + P_{t} g_{t} = P_{t} \tau_{t} + Q_{t + 1} \exp (- i_{t}).
$$

When the monetary authority raises the nominal interest rate  $i_{t}$ , if the fiscal policy  $(\tau_{t}, g_{t})$  and the current price level  $(P_{t})$  remain the same, then, the government has to issue a higher nominal amount of debt  $Q_{t+1}$ . This higher nominal amount of debt then raises the price level  $P_{t+1}$  in the next period via

$$
\frac{Q_{t + 1}}{P_{t + 1}} = \mathbb {E}_{t + 1} \left[ \sum_{k = 0}^{\infty} \exp (m_{t + 1, t + 1 + k}) s_{t + 1 + k} \right].
$$

Equivalently, let  $q_{t} \stackrel{\mathrm{def}}{=} Q_{t} / P_{t}$  and recall  $\pi_{t} \stackrel{\mathrm{def}}{=} \Delta \log P_{t}$ . Then, we can express the government budget condition Eq. (6.5) in real terms as

$$
q_{t} + g_{t} = \tau_{t} + q_{t + 1} \exp \left(\pi_{t + 1} - i_{t}\right).
$$

If the government commits to the same  $\tau_{t}, g_{t}$  and real quantity of debt  $q_{t+1}$ , then, a higher  $i_{t}$  triggers a higher inflation  $\pi_{t+1}$  in the next period.

When prices are sticky, the interest rate policy generates real effects, as we discuss in Section 6.D.

# 6.B.5 Market Clearing Conditions

The market clearing condition for the home consumption good is

$$
y_{t} = \alpha \frac{P_{t}}{P_{H , t}} \left(c_{t} + g_{t}\right) + (1 - \alpha) \frac{P_{t}^{*}}{P_{H , t}^{*}} \left(c_{t}^{*} + g_{t}^{*}\right). \tag {6.7}
$$

The market clearing condition for the home government bond is

$$
\int_{0}^{1} \Omega_{t} \left(\sigma_{t + 1}, j\right) d j + \int_{0}^{1} \Omega_{t} \left(\sigma_{t + 1}, j^{*}\right) d j^{*} = Q_{t + 1}, \quad \forall \sigma_{t + 1}. \tag {6.8}
$$

Note that  $Q_{t + 1}$  denotes the quantity of the home government debt that is due at time  $t + 1$ . The market clearing condition (6.8) requires that the total amount of home currency that both countries' households receive from their holdings of Arrow-Debreu securities in state  $\sigma_{t + 1}$  is equal to the amount of nominal debt the home government pays back at time  $t + 1$ .

# 6.B.6 Macro Synthesis

The exogenous variables include the productivity levels, the interest rates, and the government surpluses:

$$
\left(z_{t}, z_{t}^{*}, i_{t}, i_{t}^{*}, s_{t}, s_{t}^{*}\right)_{t = 0}^{\infty},
$$

which are assumed to be stochastic and i.i.d. For simplicity, we use  $\log \bar{z} = 0$  to denote the mean of the log productivity  $\log z_{t}$  and  $\log z_{t}^{*}$ .

There are 17 endogenous variables in each period  $t$ :

$$
(c_{H, t}, c_{F, t}, c_{t}, P_{H, t}, P_{F, t}, P_{t}, W_{t}, \ell_{t}, c_{H, t}^{*}, c_{F, t}^{*}, c_{t}^{*}, P_{H, t}^{*}, P_{F, t}^{*}, P_{t}^{*}, W_{t}^{*}, \ell_{t}^{*}, \mathcal {E}_{t})_{t = 0}^{\infty},
$$

and we have the following 17 equations, including 5 for the home country,

$$
\kappa P_{t} c_{t} \ell_{t}^{\nu} = W_{t},
$$

$$
P_{t} = \frac{1}{\alpha^{\alpha} (1 - \alpha)^{1 - \alpha}} P_{H, t}^{\alpha} P_{F, t}^{1 - \alpha},
$$

$$
P_{H, t} c_{H, t} = \alpha P_{t} c_{t},
$$

$$
P_{F, t} c_{F, t} = (1 - \alpha) P_{t} c_{t},
$$

$$
z_{t} \ell_{t} = \alpha \frac{P_{t}}{P_{H , t}} (c_{t} + g_{t}) + (1 - \alpha) \frac{P_{t}^{*}}{P_{H , t}^{*}} (c_{t}^{*} + g_{t}^{*}),
$$

5 for the foreign country,

$$
\kappa P_{t}^{*} c_{t}^{*} \left(\ell_{t}^{*}\right)^{\nu} = W_{t}^{*},
$$

$$
P_{t}^{*} = \frac{1}{\alpha^{\alpha} (1 - \alpha)^{1 - \alpha}} (P_{F, t}^{*})^{\alpha} (P_{H, t}^{*})^{1 - \alpha},
$$

$$
P_{H, t}^{*} c_{H, t}^{*} = (1 - \alpha) P_{t}^{*} c_{t}^{*},
$$

$$
P_{F, t}^{*} c_{F, t}^{*} = \alpha P_{t}^{*} c_{t}^{*},
$$

$$
z_{t}^{*} \ell_{t}^{*} = (1 - \alpha) \frac{P_{t}}{P_{F , t}} (c_{t} + g_{t}) + \alpha \frac{P_{t}^{*}}{P_{F , t}^{*}} (c_{t}^{*} + g_{t}^{*}).
$$

2 equations relating the price levels to the government surpluses

$$
\frac{1}{P_{t}} = \frac{1}{Q_{t}} \mathbb {E}_{t} \left[ \sum_{k = 0}^{\infty} \delta^{k} \frac{c_{t}}{c_{t + k}} s_{t + k} \right], \tag {6.9}
$$

$$
\frac{1}{P_{t}^{*}} = \frac{1}{Q_{t}^{*}} \mathbb {E}_{t} \left[ \sum_{k = 0}^{\infty} \delta^{k} \frac{c_{t}^{*}}{c_{t + k}^{*}} s_{t + k}^{*} \right], \tag {6.10}
$$

and 1 equation for the nominal exchange rate,

$$
P_{t} c_{t} = \exp (- \mathcal {E}_{t}) P_{t}^{*} c_{t}^{*}.
$$

There are 4 additional equations governing the law of motion for prices, which depend on the firms' price-setting strategies. They are Eq. (6.11) and Eq. (6.12) for the case of flexible prices that we will consider in Section 6.C, and Eq. (6.13) and Eq. (6.14) for the case of sticky prices that we will consider in Section 6.D.

# 6.C Characterizations under Flexible Prices

# 6.C.1 Optimal Price-Setting

We consider the economy under flexible prices as a useful benchmark. In this case, the firms maximize their dividends period by

period. Take a home firm  $h$  as an example,

$$
\max_{\substack{p_{t}(h),p_{t}^{*}(h)}}D_{t}(h),
$$

where the firm dividend  $D_{t}(h)$  is given by Eq. (6.4). The solution is

$$
p_{t} (h) = \exp (- \mathcal {E}_{t}) p_{t}^{*} (h) = \frac{\rho}{\rho - 1} M C_{t},
$$

which implies that the firm sets the same price in the home and foreign markets, and the price is equal to a constant  $\rho / (\rho - 1)$  times the marginal cost  $MC_{t}$ . If we define the mark-up as the ratio between the price and the marginal cost, the mark-up is a constant in this case. This is a standard result in the oligopoly problem whenever the substitution pattern is modeled by the CES aggregator.

Then, the model is closed by the following equations for prices:

$$
P_{H, t} = \exp (- \mathcal {E}_{t}) P_{H, t}^{*} = \frac{\rho}{\rho - 1} M C_{t}, \tag {6.11}
$$

$$
P_{F, t}^{*} = \exp (\mathcal {E}_{t}) P_{F, t} = \frac{\rho}{\rho - 1} M C_{t}^{*}. \tag {6.12}
$$

Moreover, at the aggregate level, the price level satisfies

$$
P_{t} = \frac{\rho}{\rho - 1} M C_{t},
$$

which implies that the aggregate price level is always set at the markup multiplier times the nominal marginal cost.

# 6.C.2 Equilibrium Consumption and Exchange Rate when  $\nu = 0$

We first consider a simplification of the model by setting  $\nu = 0$ . In this case, the disutility from work is linear in the labor provided:

$$
\mathbb {E}_{0} \sum_{t = 0}^{\infty} \delta^{t} u_{t} (j) \stackrel {{\mathrm{de f}}} {{=}} \mathbb {E}_{0} \sum_{t = 0}^{\infty} \delta^{t} \left(\log c_{t} (j) - \kappa \ell_{t} (j)\right).
$$

As we will see below, this simplifying assumption implies that labor adjusts fully in response to government spending shocks. Let  $\bar{\ell} \stackrel{\mathrm{def}}{=} (\rho - 1) / (\rho \kappa)$  denote the natural rate of employment, which prevails in an economy without nominal rigidities and government spending. The following result characterizes the equilibrium allocation and exchange rate in the model.

Proposition 6.2. If  $\nu = 0$ , the equilibrium labor is

$$
\ell_{t} = \bar {\ell} \left(1 + \alpha \frac{g_{t}}{c_{t}} + (1 - \alpha) \frac{g_{t}^{*}}{c_{t}^{*}}\right), \qquad \ell_{t}^{*} = \bar {\ell} \left(1 + \alpha \frac{g_{t}^{*}}{c_{t}^{*}} + (1 - \alpha) \frac{g_{t}}{c_{t}}\right),
$$

the equilibrium consumption is

$$
\log c_{t} - \log \bar {c} = \alpha \log z_{t} + (1 - \alpha) \log z_{t}^{*}, \quad \log c_{t}^{*} - \log \bar {c} = \alpha \log z_{t}^{*} + (1 - \alpha) \log z_{t},
$$

the equilibrium real exchange rate is

$$
e_{t} = - \log c_{t} + \log c_{t}^{*} = - (2 \alpha - 1) (\log z_{t} - \log z_{t}^{*}),
$$

the equilibrium price level is

$$
P_{t} = \frac{Q_{t}}{\mathbb {E}_{t} \left[ \sum_{k = 0}^{\infty} \exp (m_{t , t + k}) s_{t + k} \right]}, \qquad P_{t}^{*} = \frac{Q_{t}^{*}}{\mathbb {E}_{t} \left[ \sum_{k = 0}^{\infty} \exp (m_{t , t + k}^{*}) s_{t + k}^{*} \right]},
$$

and the (risk-neutral) expected inflation satisfies

$$
\exp (- i_{t}) = \mathbb {E}_{t} \left[ \exp (m_{t + 1}) \frac{P_{t}}{P_{t + 1}} \right].
$$

The proof is presented in Appendix A.24. This proposition shows that, if  $\nu = 0$  and prices are flexible, neither monetary nor fiscal policies affect the equilibrium consumption or the real exchange rate; the price level adjusts to fully absorb the monetary and fiscal shocks. To be more precise, consumption is only determined by the stochastic productivity levels  $z_{t}$  and  $z_{t}^{*}$ . Due to home bias (i.e.,  $\alpha > 1/2$ ), the home households' consumption is more sensitive to the home productivity level and the foreign households' consumption is more sensitive to the foreign productivity level. This result is similar to the result we obtained in the complete-market endowment economy in Section 1.C, which implies that consumption is a linear combination of home and foreign endowments.

In terms of the monetary policy, this proposition shows that a higher nominal interest rate  $i_{t}$  leads to a higher expected inflation  $\pi_{t+1}$ , but it does not affect the real rate  $r_{t}$ , since the real rate only depends on the consumption dynamics:

$$
\exp (- r_{t}) = \mathbb {E}_{t} [ \exp (m_{t + 1}) ] = \mathbb {E}_{t} \left[ \delta \frac{c_{t}}{c_{t + 1}} \right].
$$

In terms of the fiscal policy, this proposition shows that neither tax  $\tau_{t}$  nor spending  $g_{t}$  affect consumption. For given productivity levels, a higher real government spending  $g_{t}$  incentivizes the households to work more and produce just enough goods to fund the government spending, while keeping their consumption level constant. A higher real tax  $\tau_{t}$ , on the other hand, does not affect the equilibrium labor and output—that is, whether the government chooses to fund its spending by raising tax or issuing new debt is irrelevant to real allocations. Both tax and spending do affect the price level, via the intertemporal government budget condition Eq. (6.6):

$$
P_{t} = \frac{Q_{t}}{\mathbb {E}_{t} \left[ \sum_{k = 0}^{\infty} \exp (m_{t , t + k}) s_{t + k} \right]}.
$$

In particular, a higher tax or a lower spending leads to a higher government surplus, which lowers the price level.

Finally, the real exchange rate is determined by the equilibrium consumption, which only depends on the productivity level. Therefore, this model with flexible prices gives rise to a clear distinction between the real variables (i.e., consumption, real exchange rate) that only depends on productivity shocks and the nominal variable (i.e., price level, nominal exchange rate) that also depend on the monetary and policy shocks. In the next section, we will see how this distinction dissolves when prices are sticky.

# 6.C.3 Equilibrium Consumption and Exchange Rate in the General Case

Now, we consider the general case with  $\nu > 0$ . The following result characterizes the equilibrium allocation, exchange rate, and price level in the model.

Proposition 6.3. For a general  $\nu$ , the equilibrium labor is

$$
\ell_{t} = \bar {\ell}^{\frac{1}{1 + \nu}} \left(1 + \alpha \frac{g_{t}}{c_{t}} + (1 - \alpha) \frac{g_{t}^{*}}{c_{t}^{*}}\right)^{\frac{1}{1 + \nu}}, \qquad \ell_{t}^{*} = \bar {\ell}^{\frac{1}{1 + \nu}} \left(1 + \alpha \frac{g_{t}^{*}}{c_{t}^{*}} + (1 - \alpha) \frac{g_{t}}{c_{t}}\right)^{\frac{1}{1 + \nu}},
$$

the equilibrium consumption is

$$
\log c_{t} - \log \bar {c} = \alpha \log z_{t} + (1 - \alpha) \log z_{t}^{*} - \frac{\nu}{1 + \nu} \left((\alpha^{2} + (1 - \alpha)^{2}) \frac{g_{t}}{c_{t}} + 2 (1 - \alpha) \alpha \frac{g_{t}^{*}}{c_{t}^{*}}\right),
$$

$$
\log c_{t}^{*} - \log \bar {c} = \alpha \log z_{t}^{*} + (1 - \alpha) \log z_{t} - \frac{\nu}{1 + \nu} \left((\alpha^{2} + (1 - \alpha)^{2}) \frac{g_{t}^{*}}{c_{t}^{*}} + 2 (1 - \alpha) \alpha \frac{g_{t}}{c_{t}}\right),
$$

the equilibrium foreign real exchange rate is

$$
e_{t} = - \log c_{t} + \log c_{t}^{*} = - (2 \alpha - 1) (\log z_{t} - \log z_{t}^{*}) + \frac{\nu}{1 + \nu} (2 \alpha - 1)^{2} \left(\frac{g_{t}}{c_{t}} - \frac{g_{t}^{*}}{c_{t}^{*}}\right),
$$

the equilibrium price level is

$$
P_{t} = \frac{Q_{t}}{\mathbb {E}_{t} \left[ \sum_{k = 0}^{\infty} \exp (m_{t , t + k}) s_{t + k} \right]}, \qquad P_{t}^{*} = \frac{Q_{t}^{*}}{\mathbb {E}_{t} \left[ \sum_{k = 0}^{\infty} \exp (m_{t , t + k}^{*}) s_{t + k}^{*} \right]}
$$

and the (risk-neutral) expected inflation satisfies

$$
\exp (- i_{t}) = \mathbb {E}_{t} \left[ \exp (m_{t + 1}) \frac{P_{t}}{P_{t + 1}} \right].
$$

The proof is presented in Appendix A.24. This proposition shows that the real consumption and the real exchange rate depend on not only the productivity shocks  $z_{t}$  and  $z_{t}^{*}$ , but also government spending-to-consumption ratios  $g_{t} / c_{t}$  and  $g_{t}^{*} / c_{t}^{*}$ . As such, while the monetary shocks still have no effects on real variables, fiscal spending shocks do.

To understand this result, which is representative of textbook macro models, note that a positive labor curvature coefficient  $\nu$  implies that a higher labor effort drives up the real wage. Under this assumption, a higher government spending requires more labor and makes it more costly. As a result, government spending crowds out the households' private consumption and raises their marginal utility over consumption, which, by the international risk-sharing condition, also appreciates the local currency in real terms.

In this way, the flexible-price model predicts that a higher government spending leads to real depreciation of the local currency. Conversely, holding tax constant, a higher government surplus is associated with a lower government spending and hence real appreciation of the local currency. This prediction is inconsistent with the data, as countries that have worse fiscal conditions tend to have weaker currencies.

# 6.D Characterizations under Sticky Prices

# 6.D.1 Optimal Price-Setting

If prices are sticky, some or all firms cannot adjust their prices after the shocks are realized in each period. In this section, we consider a simple form of nominal rigidities: firms have to set prices one period in advance. Under this assumption, the firms' profit maximization problem only concerns one period. Take the home firm  $h$  as an example,

$$
\max_{p_{t} (h), p_{t}^{*} (h)} \mathbb {E}_{t - 1} [ \exp (M_{t - 1, t}) D_{t} (h) ].
$$

Based on information available at time  $t - 1$ , the price at home  $p_t(h)$  is set to maximize the expected profit from the home market:

$$
\max_{p_{t} (h)} \mathbb {E}_{t - 1} \left[ \exp (M_{t - 1, t}) (p_{t} (h) - M C_{t}) \left(\frac{p_{t} (h)}{P_{H , t}}\right)^{- \rho} c_{H, t} \right].
$$

The future profit is discounted by the domestic households' SDF  $\exp (M_{t - 1,t})$ , as they are the shareholders whose interests the firms maximize.

The first-order condition is

$$
0 = \mathbb {E}_{t - 1} \left[ \delta \frac{P_{t - 1} c_{t - 1}}{P_{t} c_{t}} \left((1 - \rho) p_{t} (h)^{- \rho} + \rho M C_{t} p_{t} (h)^{- \rho - 1}\right) \left(\frac{1}{P_{H , t}}\right)^{- \rho} \alpha \frac{P_{t}}{P_{H , t}} c_{t} \right],
$$

which, under symmetry  $p_t(h) = P_{H,t}$ , implies

$$
P_{H, t} = \frac{\rho}{\rho - 1} \mathbb {E}_{t - 1} \left[ M C_{t} \right].
$$

If we compare this pricing strategy with Eq. (6.11) obtained under flexible prices, we can see that the optimal price is now set to match the expected marginal cost. This is because the firms cannot adjust their prices after the shocks are realized, and the best they can do is to be correct "on average."

The home firms also need to set their sale price in the foreign market. Our derivation below focuses on the case of Producer Currency Pricing, under which case exports are priced and invoiced in the domestic (producer's) currency. Then, the price of the home firms' production sold in the foreign country is set according to

$$
\max_{\exp (- \mathcal {E}_{t}) p_{t}^{*} (h)} \mathbb {E}_{t - 1} \left[ \exp (M_{t - 1, t}) (\exp (- \mathcal {E}_{t}) p_{t}^{*} (h) - M C_{t}) \left(\frac{p_{t}^{*} (h)}{P_{H , t}^{*}}\right)^{- \rho} c_{H, t}^{*} \right],
$$

which implies

$$
\exp (- \mathcal {E}_{t}) P_{H, t}^{*} = \frac{\rho}{\rho - 1} \mathbb {E}_{t - 1} [ M C_{t} ].
$$

So, the entire price block can be described as

$$
P_{H, t} = \exp (- \mathcal {E}_{t}) P_{H, t}^{*} = \frac{\rho}{\rho - 1} \mathbb {E}_{t - 1} [ M C_{t} ], \tag {6.13}
$$

$$
P_{F, t}^{*} = \exp (\mathcal {E}_{t}) P_{F, t} = \frac{\rho}{\rho - 1} \mathbb {E}_{t - 1} \left[ M C_{t}^{*} \right]. \tag {6.14}
$$

In other words, under Producer Currency Pricing, the local-currency price of the local consumption bundle (e.g.,  $P_{H,t}$ ) is fixed and the local-currency price of the foreign consumption bundle (e.g.,  $P_{F,t}$ ) comoves with the exchange rate.

Alternatively, some models assume Local Currency Pricing, under which case exports are priced and invoiced in the foreign (importers') currency. Then, the price of the home firms' production sold in the foreign country is set according to

$$
\max_{p_{t}^{*} (h)} \mathbb {E}_{t - 1} \left[ \exp (M_{t - 1, t}) (\exp (- \mathcal {E}_{t}) p_{t}^{*} (h) - M C_{t}) \left(\frac{p_{t}^{*} (h)}{P_{H , t}^{*}}\right)^{- \rho} c_{H, t}^{*} \right].
$$

The first order condition is

$$
0 = \mathbb {E}_{t - 1} \left[ \delta \frac{P_{t - 1} c_{t - 1}}{P_{t} c_{t}} ((1 - \rho) \exp (- \mathcal {E}_{t}) p_{t} (h)^{- \rho} + \rho M C_{t} p_{t} (h)^{- \rho - 1}) \left(\frac{1}{P_{H , t}}\right)^{- \rho} \alpha \frac{P_{t}^{*}}{P_{H , t}^{*}} c_{t}^{*} \right].
$$

Note that  $P_{t - 1}c_{t - 1} = \exp (-\mathcal{E}_t)P_{H,t}^* c_t^*$ . This implies

$$
P_{H, t}^{*} = \frac{\rho}{\rho - 1} \mathbb {E}_{t - 1} \left[ M C_{t} \exp (\mathcal {E}_{t}) \right].
$$

Compared to the case of Producer Currency Pricing, in this case the exchange rate  $\mathcal{E}_t$  goes into the expectation operator, which is consistent with the assumption that the price is fixed at the consumers' (i.e.

the foreign households') currency unit. As a result, both the local-currency price of the local consumption bundle (e.g.,  $P_{H,t}$ ) and the local-currency price of the foreign consumption bundle (e.g.,  $P_{F,t}$ ) are fixed. The solution in this case is discussed in Jiang [2022].

# 6.D.2 Equilibrium Consumption and Aggregate Demand

The sticky prices imply slow adjustments in the price level. As a result, movements in the nominal exchange rate lead to movements in the real exchange rate. This idea has been central in many international macro models since the seminal work by Mundell-Fleming in the 1960s. In the context of this model, we formalize this idea by first relating the real consumption and the real exchange rate movement to the nominal shocks.

Proposition 6.4. The equilibrium consumption can be solved by

$$
\begin{array}{l} c_{t} = \bar {\ell} \alpha^{\alpha} (1 - \alpha)^{1 - \alpha} \frac{\left(P_{t} c_{t}\right)^{\alpha} \left(P_{t}^{*} c_{t}^{*}\right)^{1 - \alpha}}{\left(\mathbb {E}_{t - 1} \left[ P_{t} c_{t} \ell_{t}^{\nu} / z_{t} \right]\right)^{\alpha} \left(\mathbb {E}_{t - 1} \left[ P_{t}^{*} c_{t}^{*} \left(\ell_{t}^{*}\right)^{\nu} / z_{t}^{*} \right]\right)^{1 - \alpha}}, \\ c_{t}^{*} = \bar {\ell} \alpha^{\alpha} (1 - \alpha)^{1 - \alpha} \frac{(P_{t} c_{t})^{1 - \alpha} (P_{t}^{*} c_{t}^{*})^{\alpha}}{(\mathbb {E}_{t - 1} [ P_{t} c_{t} \ell_{t}^{\nu} / z_{t} ])^{1 - \alpha} (\mathbb {E}_{t - 1} [ P_{t}^{*} c_{t}^{*} (\ell_{t}^{*})^{\nu} / z_{t}^{*} ])^{\alpha}}, \\ \end{array}
$$

which implies

$$
\begin{array}{l} \log c_{t} = \kappa_{t - 1}^{c} + \alpha \log \left(P_{t} c_{t}\right) + (1 - \alpha) \log \left(P_{t}^{*} c_{t}^{*}\right), \\ \log c_{t}^{*} = \kappa_{t - 1}^{c_{t}^{*}} + \alpha \log (P_{t}^{*} c_{t}^{*}) + (1 - \alpha) \log (P_{t} c_{t}), \\ - e_{t} = \kappa_{t - 1}^{e} + (2 \alpha - 1) \log (P_{t} c_{t}) - (2 \alpha - 1) \log (P_{t}^{*} c_{t}^{*}), \\ \end{array}
$$

where the terms  $\kappa_{t - 1}^{c},\kappa_{t - 1}^{c^{*}},\kappa_{t - 1}^{e}$  are known in period  $t - 1$

The proof is presented in Appendix A.25. A useful way to understand the equilibrium outcome under sticky prices is to regard the equilibrium nominal consumption  $P_{t}c_{t}$  and  $P_{t}^{*}c_{t}^{*}$  as the aggregate demand of the home and foreign households, which directly respond to monetary and fiscal policies. In fact, this proposition shows that they are sufficient statistics for determining the real consumption and the real exchange rate.

More concretely, an expansionary monetary or fiscal policy in the home country stimulates the aggregate demand by raising the nominal household expenditure  $P_{t}c_{t}$ . As the price level is slow to adjust, this nominal shock also raises the real household expenditure  $c_{t}$ . Due to the home bias in consumption (i.e.,  $\alpha > 1/2$ ), even though complete markets facilitate full risk-sharing, this proposition shows that the home consumption  $c_{t}$  is more exposed to the home aggregate demand  $P_{t}c_{t}$ , and the foreign consumption  $c_{t}^{*}$  is more exposed to the foreign aggregate demand  $P_{t}^{*}c_{t}^{*}$ . The real exchange rate, determined

by the relative marginal utility of consumption, is also affected by the nominal household expenditures.

Next, we consider monetary and fiscal policies separately and trace out exactly how they impact the aggregate demand as summarized by the nominal household expenditures  $P_{t}c_{t}$  and  $P_{t}^{*}c_{t}^{*}$ .

# 6.D.3 Real Effects of Monetary Policy

Let us first consider the home country's monetary policy. Unlike the case of flexible prices, in which the nominal interest rate policy has no real effects, sticky prices transmit nominal interest rate shocks to real interest rates and affect the households' consumption and investment decisions. Given Eq. (6.2), reproduced below,

$$
i_{t} = r_{t} + \mathbb {E}_{t} [ \pi_{t + 1} ] + i r p_{t},
$$

the nominal interest rate  $i_t$  is equal to the real interest rate plus the expected inflation plus the inflation risk premium. When the prices are sticky, expected inflation and inflation risk premium do not respond fully to an increase in the nominal interest rate. As a result, the real interest rate  $r_t$  responds as well.

Specifically in our setting, the Euler equation

$$
1 = \mathbb {E}_{t} [ \exp (M_{t + 1} + i_{t}) ]
$$

implies the following intertemporal relationship between the nominal interest rate and the current and future aggregate demand:

$$
\frac{1}{P_{t} c_{t}} = \exp \left(i_{t}\right) \mathbb {E}_{t} \left[ \delta \frac{1}{P_{t + 1} c_{t + 1}} \right]. \tag {6.15}
$$

We consider the case in which the expected inverse future aggregate demand  $\mathbb{E}_t\left[\delta \frac{1}{P_{t + 1}c_{t + 1}}\right]$  is constant, which we will show is without loss of generality in this model. Then, Eq. (6.15) implies that the nominal interest rate  $i_t$  directly affects today's aggregate demand  $P_{t}c_{t}$ . If the monetary authority in the home country raises the nominal interest rate by  $1\%$ , today's aggregate demand  $P_{t}c_{t}$  will shrink by  $1\%$ . Similarly, a higher nominal interest rate in the foreign country lowers the foreign aggregate demand. Plugging in this relationship to Proposition 6.4, we obtain the following result [Corsetti and Pesenti, 2007]:

Proposition 6.5. When the monetary authorities set the nominal interest rates in home and foreign countries, the equilibrium consumption is

$$
\begin{array}{l} \log c_{t} = \tilde {\kappa}_{t - 1}^{c} - \alpha i_{t} - (1 - \alpha) i_{t}^{*}, \\ \log c_{t}^{*} = \tilde {\kappa}_{t - 1}^{c^{*}} - \alpha i_{t}^{*} - (1 - \alpha) i_{t}, \\ \end{array}
$$

the equilibrium real interest rate is

$$
r_{t} = \bar {r} + \alpha i_{t} + (1 - \alpha) i_{t}^{*},
$$

the equilibrium real exchange rate is

$$
e_{t} = - \tilde {\kappa}_{t - 1}^{c} + \tilde {\kappa}_{t - 1}^{c *} + (2 \alpha - 1) (i_{t} - i_{t}^{*}),
$$

and the equilibrium price levels are

$$
\log P_{t} = - \tilde {\kappa}_{t - 1}^{c} - \log \mathbb {E}_{t} \left[ \delta \frac{1}{P_{t + 1} c_{t + 1}} \right] + (1 - \alpha) \left(i_{t}^{*} - i_{t}\right).
$$

The proof is presented in Appendix A.26. This proposition has an intuitive interpretation. When the home country's monetary authority raises the nominal interest rate, it depresses the aggregate demand and lowers the equilibrium consumption in the home country. Due to international risk-sharing through complete markets, the consumption loads on both home and foreign nominal interest rates. That said, the effect of the home nominal interest rate on home consumption is still stronger due to the home bias in the goods market (i.e.,  $\alpha > 1/2$ ).

Moreover, since prices are sticky, a higher nominal interest rate also leads to a higher real interest rate. By the following Euler equation,

$$
r_{t} = - \log \delta - \log \mathbb {E}_{t} \left[ c_{t} / c_{t + 1} \right],
$$

the real interest rate is inversely related to the expected consumption growth. So, the increase in the real interest rate is also consistent with an increase in the expected consumption growth, which is made possible by a decline in today's consumption.

Finally, as the home consumption declines when the home country's monetary authority raises the nominal interest rate, the home households' marginal utility increases and appreciates the home currency in both nominal and real terms. In this way, our model reproduces a positive relationship between the local nominal interest rate and the real strength of the currency, which goes back a long way to some of the seminal papers in the international macro literature [Mundell, 1963, Fleming, 1962, Dornbusch, 1976, Frankel, 1979].

Some readers might wonder where the productivity shocks  $z_{t}$  and  $z_{t}^{*}$  go in the equilibrium consumption and the real exchange rate. In this specific model, monetary and fiscal policies are strong enough to fully counter the effects of productivity shocks. Specifically, there exist nominal interest rates

$$
i_{t} = - \log \delta - \left(\log z_{t} - \mathbb {E}_{t - 1} \left[ \log z_{t} \right]\right),
$$

$$
i_{t}^{*} = - \log \delta - (\log z_{t}^{*} - \mathbb {E}_{t - 1} [ \log z_{t}^{*} ]),
$$

such that our sticky-price model replicates the equilibrium consumption and real exchange rate under the flexible-price case. As such, we can think of these nominal interest rates as the natural nominal rates that would prevail in the absence of monetary and fiscal policies. If the monetary authority sets the nominal interest rate above the natural rate, then, they depress the aggregate demand and lower the equilibrium consumption below the flexible-price level, and vice versa.

A similar argument can be applied to the fiscal policy, which we study in the next subsection. In more general models, monetary and fiscal policies might be less effective in fully counteracting the effects of productivity shocks, and the equilibrium consumption and the real exchange rate would depend on the productivity shocks as well.

# 6.D.4 Real Effects of Fiscal Policy

Next, let us shift our focus on the home country's fiscal policy. Given the definition of the real SDF, i.e.,  $\exp(m_{t,t+k}) = \delta^k c_t / c_{t+k}$ , it is useful to express the present value of government surpluses as the current surplus plus the sum of discounted expected future surpluses.

$$
\mathbb {E}_{t} \left[ \sum_{k = 0}^{\infty} \exp (m_{t, t + k}) s_{t + k} \right] = s_{t} + c_{t} \cdot \mathbb {E}_{t} \left[ \sum_{k = 1}^{\infty} \delta^{k} \frac{s_{t + k}}{c_{t + k}} \right].
$$

Note that the  $k$ -period real rate is equal to

$$
r_{t} (k) = - \log \mathbb {E}_{t} \left[ \delta c_{t} / c_{t + k} \right] = - \log \left(c_{t} \mathbb {E}_{t} \left[ \delta / c_{t + k} \right]\right).
$$

All else equal, a higher current consumption  $c_{t}$  implies a lower real discount rate and increases the present value of future government surpluses. As a result, the present value of current and future surpluses  $\mathbb{E}_t\left[\sum_{k = 0}^{\infty}\exp (m_{t,t + k})s_{t + k}\right]$  is increasing in the current consumption  $c_{t}$ .

For tractability, we consider the simple case in which future consumption and surpluses are i.i.d. Then,  $\mathbb{E}_t\left[\sum_{k=1}^{\infty}\delta_k^{\frac{s_{t+k}}{c_{t+k}}}\right]$  is equal to a constant that we denote by  $A$ , which allows us to simplify Eq. (6.6) and express the home country's nominal aggregate demand as

$$
P_{t} c_{t} = \frac{Q_{t} c_{t}}{s_{t} + c_{t} A}. \tag {6.16}
$$

Likewise, we define  $A^{*} \stackrel{\mathrm{def}}{=} \mathbb{E}_{t}\left[\sum_{k=1}^{\infty} \delta^{k} \frac{s_{t+k}^{*}}{c_{t+k}^{*}}\right]$ , and express the foreign country's nominal aggregate demand as

$$
P_{t}^{*} c_{t}^{*} = \frac{Q_{t}^{*} c_{t}^{*}}{s_{t}^{*} + c_{t}^{*} A^{*}}. \tag {6.17}
$$

Plug the expressions (6.16) and (6.17) for the aggregate demand into Proposition 6.4, we obtain

$$
\begin{array}{l} \log c_{t} = \kappa_{t - 1}^{c} + \alpha \log \left(\frac{c_{t}}{s_{t} + c_{t} A}\right) + (1 - \alpha) \log \left(\frac{c_{t}^{*}}{s_{t}^{*} + c_{t}^{*} A^{*}}\right), \\ \log c_{t}^{*} = \kappa_{t - 1}^{c^{*}} + (1 - \alpha) \log \left(\frac{c_{t}}{s_{t} + c_{t} A}\right) + \alpha \log \left(\frac{c_{t}^{*}}{s_{t}^{*} + c_{t}^{*} A^{*}}\right). \\ \end{array}
$$

These equations allow us to solve the equilibrium consumption  $c_{t}$  and  $c_{t}^{*}$  as functions of the government surpluses  $s_{t}$  and  $s_{t}^{*}$ . For expositional convenience, in the proposition below we consider a symmetric distribution for home and foreign variables. Let  $\bar{s}$  denote both countries' mean government surplus in this distribution and let  $\bar{c}$  denote both countries' mean equilibrium consumption. Symmetry also implies  $A = A^{*}$ .

If we take a first-order approximation around  $s_t = s_t^* = \bar{s}$  and  $c_t = c_t^* = \bar{c}$ , then, we obtain a linear equation system with a simple solution [Jiang, 2022]:

Proposition 6.6. Under a first-order approximation, the equilibrium consumption is

$$
\log c_{t} = \kappa_{c} - \frac{\left((1 - \alpha) \bar {s} / A + \alpha \bar {c}\right)}{\bar {c} (A \bar {c} + (1 - \alpha) 2 \bar {s})} s_{t} - \frac{(1 - \alpha) (\bar {c} + \bar {s} / A)}{\bar {c} (A \bar {c} + (1 - \alpha) 2 \bar {s})} s_{t}^{*},
$$

$$
\log c_{t}^{*} = \kappa_{c}^{*} - \frac{(1 - \alpha) (\bar {c} + \bar {s} / A)}{\bar {c} (A \bar {c} + (1 - \alpha) 2 \bar {s})} s_{t} - \frac{\left((1 - \alpha) \bar {s} / A + \alpha \bar {c}\right)}{\bar {c} (A \bar {c} + (1 - \alpha) 2 \bar {s})} s_{t}^{*},
$$

the equilibrium real interest rate is

$$
r_{t} = - \log \delta - \log \mathbb {E}_{t} \left[ 1 / c_{t + 1} \right] - \kappa_{c} + \frac{\left((1 - \alpha) \bar {s} / A + \alpha \bar {c}\right)}{\bar {c} (A \bar {c} + (1 - \alpha) 2 \bar {s})} s_{t} + \frac{(1 - \alpha) (\bar {c} + \bar {s} / A)}{\bar {c} (A \bar {c} + (1 - \alpha) 2 \bar {s})} s_{t}^{*},
$$

the equilibrium real exchange rate is

$$
e_{t} = - \kappa_{c} + \kappa_{c}^{*} + \frac{(2 \alpha - 1) \bar {c}}{A \bar {c} + (1 - \alpha) 2 \bar {s}} \left(s_{t} - s_{t}^{*}\right),
$$

and the equilibrium price levels are

$$
\log P_{t} = \kappa^{P} + \log Q_{t} - \frac{1 - \alpha}{A \bar {c} + (1 - \alpha) \bar {s}} \left(s_{t} - s_{t}^{*}\right).
$$

The proof is presented in Appendix A.27. This proposition shows that the government surplus  $s_t$  also has real effects: by Eq. (6.6), reproduced below,

$$
\frac{Q_{t}}{P_{t}} = \mathbb {E}_{t} \left[ \sum_{k = 0}^{\infty} \exp (m_{t, t + k}) s_{t + k} \right] = s_{t} + \mathbb {E}_{t} \left[ \sum_{k = 1}^{\infty} \exp (m_{t, t + k}) s_{t + k} \right], \tag {6.18}
$$

when the current surplus  $s_t$  increases, the present value of government surpluses on the right-hand side of this equation will increase.

However, on the left-hand side, the debt quantity  $Q_{t}$  is determined in the previous period, and the price index  $P_{t}$  is sticky. Therefore, to equilibrate this intertemporal government budget constraint, the real interest rate captured by  $m_{t,t+k}$  on the right-hand side has to rise to lower the present value of future surpluses and offset the increase in the current surplus.

In this way, a higher U.S. surplus increases the U.S. real interest rate and, by Proposition 1.2, appreciates the dollar's real exchange rate. Similar to the case with monetary shocks, to engineer the increase in the U.S. real interest rate, the U.S. consumption has to decline in this period and create an expected increase in consumption growth. As a result, a fiscal shock that increases the government surplus  $s_t$  in the home country leads to a higher home real interest rate and a stronger home currency in real terms.

We can also think about the exchange rate response to the fiscal shock from the foreign households' perspective. Using the foreign numérique, we can rewrite Eq. (6.18) as

$$
\exp (e_{t}) \frac{Q_{t}}{P_{t}} = \exp (e_{t}) s_{t} + \mathbb {E}_{t} \left[ \sum_{k = 1}^{\infty} \exp (m_{t, t + k}^{*}) \exp (e_{t + k}) s_{t + k} \right].
$$

Rearranging terms, we obtain

$$
\exp (e_{t}) \left(\frac{Q_{t}}{P_{t}} - s_{t}\right) = \mathbb {E}_{t} \left[ \sum_{k = 1}^{\infty} \exp \left(m_{t, t + k}^{*}\right) \exp (e_{t + k}) s_{t + k} \right].
$$

For this thought experiment, let us assume that the home country is very small so that its fiscal shock does not affect the foreign SDF  $m_{t,t+k}^{*}$ , and that the shock is transitory so that the future surpluses  $s_{t+k}$  and the future real exchange rate  $e_{t+k}$  are unaffected. Then, to equilibrate this equation in response to an increase in the current surplus  $s_t$ , the current real exchange rate  $e_t$  has to appreciate. In this sense, the real exchange rate behaves like the asset price for the claim to government surpluses, which has to adjust when the fiscal cash flows change. We can also use this logic to show that the U.S. real exchange rate has to appreciate when the expected future surpluses  $\mathbb{E}_t[s_{t+k}]$  increase [Jiang, 2022].

Notably, this result is opposite to what we obtained under flexible prices. Specifically, Proposition 6.3 shows that, with a positive curvature parameter  $\nu$  for labor, a higher government spending in the home country  $g_{t}$ , which corresponds to a lower government surplus  $s_t$ , crowds out the local households' private consumption, increases their marginal utility, and appreciates the home currency in real terms. Sticky prices overturn this result and generate home currency depreciation through the valuation channel.

This result is also different from the Mundell-Fleming view of the fiscal policy, under which a fiscal expansion in the form of higher government spending shifts up the IS curve, puts an upward pressure on the local interest rate, attracts capital inflows, and appreciates the local currency. In comparison, imposing the intertemporal government budget constraint (6.6) as we do in our sticky-price model generates an opposite valuation effect that depreciates the local currency when the surplus declines or government spending increases.

Our model makes the extreme assumption that prices are fully sticky for one period. It is possible to extend the model to allow for a more realistic form of price stickiness. For example, if some firms' prices are sticky for multiple periods, monetary and fiscal policies could have persistent effects on the real economy.

Moreover, our model assumes that the government only issues one-period debt. If the government issues longer-term debt, as we will see in Chapter 8, the bond quantity  $Q_{t}$  on the left-hand side of Eq. (6.18) becomes the market value of the outstanding debt. Then, when the fiscal shocks impact the government surpluses on the right-hand side of this equation, the bond price can also adjust and absorb some of the shocks, so that the consumption does not need to adjust as much. However, adjustments in the long-term bond price have implications for the discount rates in the future, which also transmits the fiscal shocks to the real economy in future periods. As such, the long-term bond could lower the real response in the current period while magnifying the real responses in future periods. See Cochrane [2023] for detailed discussions.

# 6.E Comparing Monetary and Fiscal Policies

# 6.E.1 Observational Equivalence

Eq. (6.15) can be expressed as

$$
\frac{s_{t} + c_{t} A}{Q_{t} c_{t}} = \exp (i_{t}) \mathbb {E}_{t} \left[ \delta \frac{s_{t + 1} + c_{t + 1} A}{Q_{t + 1} c_{t + 1}} \right].
$$

Note that the nominal quantity of government debt  $Q_{t + 1}$  is chosen by the government in period  $t$ , so it is known in period  $t$ . Then, we can express the home nominal interest rate as

$$
i_{t} = \log \left(\frac{s_{t} + c_{t} A}{c_{t}}\right) - \log \mathbb {E}_{t} \left[ \delta \frac{s_{t + 1} + c_{t + 1} A}{c_{t + 1}} \right] + \Delta \log Q_{t + 1}. \tag {6.19}
$$

Since the consumption and government surplus shocks are i.i.d. across periods,  $\mathbb{E}_t\left[\delta \frac{s_{t + 1} + c_{t + 1}A}{c_{t + 1}}\right]$  is a constant. Then, for any given nominal debt growth  $Q_{t + 1} / Q_t$ , the nominal interest rate  $i_t$  directly affects the real consumption  $c_t$ .

Similarly, we can express the foreign nominal interest rate as

$$
i_{t}^{*} = \log \left(\frac{s_{t}^{*} + c_{t}^{*} A^{*}}{c_{t}^{*}}\right) - \log \mathbb {E}_{t} \left[ \delta \frac{s_{t + 1}^{*} + c_{t + 1}^{*} A^{*}}{c_{t + 1}^{*}} \right] + \Delta \log Q_{t + 1}^{*}.
$$

Along with

$$
\log c_{t} = \kappa_{t - 1}^{c} + \alpha \log \left(\frac{c_{t}}{s_{t} + c_{t} A}\right) + (1 - \alpha) \log \left(\frac{c_{t}^{*}}{s_{t}^{*} + c_{t}^{*} A^{*}}\right),
$$

$$
\log c_{t}^{*} = \kappa_{t - 1}^{c^{*}} + (1 - \alpha) \log \left(\frac{c_{t}}{s_{t} + c_{t} A}\right) + \alpha \log \left(\frac{c_{t}^{*}}{s_{t}^{*} + c_{t}^{*} A^{*}}\right),
$$

we obtain 4 equations with 6 unknowns: the nominal interest rates  $i_{t}$  and  $i_{t}^{*}$ , the government surpluses  $s_{t}$  and  $s_{t}^{*}$ , and the equilibrium consumption  $c_{t}$  and  $c_{t}^{*}$ . So, the monetary policies which set the nominal interest rates and the fiscal policies which set the government surpluses cannot both be exogenous. If they are, then we have 4 equations with only 2 endogenous variables, which makes the equation system overidentified and there might be no equilibrium.

For example, in our discussion of the monetary policy above, the nominal interest rate policy will determine both the equilibrium consumption and the government surpluses that the fiscal authority needs to accommodate. In this case, the monetary authority sets the price level and the aggregate demand, and the fiscal authority implements the corresponding taxation and spending to ensure the government budget constraint is satisfied.

Conversely, in our discussion of the fiscal policy above, the government surplus policy will determine both the equilibrium consumption and the nominal interest rates that the monetary authority needs to accommodate. In this case, the fiscal authority sets the price level and the aggregate demand, and the monetary authority implements the corresponding nominal interest rate to ensure the government budget constraint is satisfied.

Another way to frame this result is to note that the observed macroeconomic data can be mapped to either a model in which the monetary policies are active and determines the path of the nominal interest rates as well as the necessary responses in government surpluses, or a model in which the fiscal policies are active and determines the path of the government surpluses as well as the necessary responses in nominal interest rates. Cochrane [2021] offers a more detailed discussion of this observational equivalence.

Finally, throughout our discussion above, we have left out one degree of freedom, which is the growth rate of the government debt quantity  $\Delta \log Q_{t+1}$ . For given nominal interest rate  $i_t$  and real government surplus  $s_t$ , varying the nominal quantity of government debt

has no real effects. Given Eq. (6.19), reproduced below,

$$
i_{t} = \log \left(\frac{s_{t} + c_{t} A}{c_{t}}\right) - \log \mathbb {E}_{t} \left[ \delta \frac{s_{t + 1} + c_{t + 1} A}{c_{t + 1}} \right] + \Delta \log Q_{t + 1},
$$

and given

$$
\begin{array}{l} \pi_{t + 1} = \log Q_{t + 1} - \log \mathbb {E}_{t + 1} \left[ \sum_{k = 0}^{\infty} \exp (m_{t + 1, t + 1 + k}) s_{t + 1 + k} \right] + \log \mathbb {E}_{t} \left[ \sum_{k = 0}^{\infty} \exp (m_{t, t + k}) s_{t + k} \right] \\ = \log Q_{t + 1} - \log \left(s_{t + 1} + c_{t + 1} A\right) + \log \left(s_{t} + c_{t} A\right), \\ \end{array}
$$

we can see that a higher nominal government debt growth  $\Delta \log Q_{t + 1}$  leads to a higher nominal interest rate by the same magnitude. It does not affect the real consumption  $c_{t}$  and hence the real rate  $r_t$ . Rather, it moves one-to-one with the inflation  $\pi_{t + 1}$ . Since  $\Delta \log Q_{t + 1}$  is known in period  $t$ , a higher nominal debt growth creates expected inflation.

As such, we can think of the nominal quantity of government debt  $Q_{t}$  as another policy instrument separate from the nominal interest rate  $i_{t}$  and the real government surplus  $s_{t}$ . However, this additional instrument does not affect the real economy, but only affects the expected inflation. In comparison, the nominal interest rate  $i_{t}$  and the real government surplus  $s_{t}$  create surprise inflation, which is what is required to deliver real effects in this model.

# 6.E.2 Active vs. Passive Monetary and Fiscal Policies

The sticky-price model above generates a very stark result: in each period, an active monetary policy requires full cooperation from the fiscal side, and an active fiscal policy requires full cooperation from the monetary side. In other words, implementing one policy leaves no room for the other. A natural question is whether this result can be relaxed when we consider more general forms of price stickiness and government policies.

Leeper [1991] provides an answer to this question in a fairly general class of linearized models, which allows less extreme forms of price stickiness. He shows that the policy responses can be characterized by two regions: in the monetary dominance region, the monetary shock is exogenous and requires the fiscal policy to accommodate the shock; in the fiscal dominance region, the fiscal shock is exogenous and requires the monetary policy to adjust to accommodate the shock. As we relax the assumption of full price stickiness for one period, there is some space for the monetary rate to respond to inflation, and some space for the fiscal surplus to respond to the level of outstanding debt. However, a strong monetary response to inflation constrains the extent to which the fiscal authority can respond to the debt level, and vice versa.

In light of this discussion, the standard New Keynesian framework can be understood as assuming that the monetary policy is active and the fiscal authority accommodates the monetary shocks. As Leeper [2010] puts it, "most macroeconomists were raised on the belief that inflation is determined by monetary policy, especially in the long run. Full stop… Central bankers need a broader perspective on price level determination—to at least understand and acknowledge that there is another channel through which inflation can be determined. The broader perspective is important because the new Keynesian/old monetarist view implicitly embeds a dirty little secret: for monetary policy to successfully control inflation, fiscal policy must behave in a particular, circumscribed manner."

In particular, the accommodative fiscal stance can be engineered by the expectation that future government surpluses will adjust to stabilize the debt level, as opposed to requiring today's government surplus to adjust right away in response to monetary shocks. As long as the investors' and households' fiscal expectations are anchored to this expectation, inflation and, by the same argument, the real exchange rate can be understood in terms of the monetary shocks as we have seen in Proposition 6.5. However, when the agents stop believing that the fiscal authority is committed to the accommodative stance, then, its fiscal policy can undermine the ability of monetary policy to control inflation and drive real economic outcomes on its own.

# 6.E.3 Discussions

In this chapter, we have made two extreme assumptions: (1) prices are fully sticky for one period, and (2) monetary and fiscal authorities cannot trade off their policies intertemporally. In exchange, we are able to derive closed-form solutions to characterize the equilibrium responses in consumption and the exchange rate. To consider these issues quantitatively, we may need to relax these assumptions and work with numerical models. For example, we may consider a setting in which prices are only partially sticky, which gives rise to a more realistic Phillips Curve. In addition, the monetary and fiscal responses can have richer time-series patterns. Galí [2015] provides a good reference on the monetary side, and Cochrane [2023] provides a good reference on the fiscal side.

The fiscal-currency linkage can be applied to studying not only the exchange rate variations in normal times, but also currency crashes in crisis times [Burnside, Eichenbaum, and Rebelo, 2006]. Burnside, Eichenbaum, and Rebelo [2001] show that prospective fiscal deficits that drive currency crisis can be in the form of implicit bailout guarantees to failing banking systems. See Burnside, Eichenbaum, and

Rebelo [2016] for a review of the currency crisis models.

Moreover, the model in this chapter only investigates how monetary and fiscal shocks affect the real exchange rate by influencing the real interest rate. It is very likely that monetary and fiscal policies also drive variations in risk premia and convenience yields, which lead to exchange rate variations through different channels. For example, Caramp and Singh [2020] studies how the monetary policy impacts liquidity premia. Croce, Nguyen, and Schmid [2012b], Croce, Kung, Nguyen, and Schmid [2012a], Jiang [2021] study how fiscal policies affect risk premia. Chernov, Schmid, and Schneider [2020], Liu, Schmid, and Yaron [2020] study how fiscal policies affect default premia and liquidity premia.

Finally, these theoretical arguments are also relevant for understanding currency unions such as the Eurozone. In a currency union, as the nominal interest rate and the nominal exchange rate are pegged across the member countries, they can only adjust in response to union-wide monetary or fiscal shocks, but they cannot simultaneously adjust in response to country-specific shocks. As a result, the convenience yields and their cross-country variations thereof have to play an important role as the shock absorber. Jiang, Lustig, Van Nieuwerburgh, and Xiaolan [2020c] provide a detailed theoretical and empirical discussion.

# Part III

# Understanding the Quantities and Flows

# 7


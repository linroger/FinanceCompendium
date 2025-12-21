---
title: "Portfolio Choice and Asset Demand"
parent_directory: "Lecture Notes on International Finance chapters"
formatted: "2025-12-21 07:15:00 AM"
formatter_model: "claude-sonnet-4-5"
cli-tool: "claude-code"
primary_tags:
  - "portfolio choice theory"
  - "asset demand systems"
  - "international portfolio allocation"
  - "net foreign assets dynamics"
secondary_tags:
  - "mean variance optimization"
  - "demand system approach"
  - "portfolio rebalancing"
  - "capital flow determinants"
  - "international wealth transfers"
  - "balance of payments"
  - "financial savings"
  - "asset pricing models"
cssclasses: academia
---

# Portfolio Choice and Asset Demand

## Summary

- International portfolio choices underlie each country's external imbalance and capital flow dynamics. A country's net foreign assets are directly a consequence of portfolio choices:

$$
nfa_{t} \stackrel{\mathrm{def}}{=} a_{t} \sum_{\iota} x_{F,t}(\iota) - a_{t}^{*} \sum_{\iota} x_{H,t}^{*}(\iota)
$$

the capital flows depend on how the portfolio choices evolve:

$$
cf_{t} \stackrel{\mathrm{def}}{=} \sum_{\iota} \left(a_{t} x_{F,t}(\iota) - a_{t-1} x_{F,t-1}(\iota) \frac{p_{t}^{*}(\iota)}{p_{t-1}^{*}(\iota)}\right) - \sum_{\iota} \left(a_{t}^{*} x_{H,t}^{*}(\iota) - a_{t-1}^{*} x_{H,t-1}^{*}(\iota) \frac{p_{t}(\iota)}{p_{t-1}(\iota)}\right)
$$

and the profits from the chosen portfolios determine how a country's external wealth evolves:

$$
nfa_{t} - nfa_{t-1} = tb_{t} + ib_{t} + cg_{t}
$$

- The standard asset pricing literature models portfolio choices as the mean-variance trade-off plus additional dynamic hedging terms:

$$
x_{t} = \gamma^{-1} \Sigma_{t}^{-1} \mathbb{E}_{t} \left[ r_{t+1} \right] + \text{dynamic hedging terms}
$$

- Alternatively, the demand system approach models portfolio choices based on asset prices, characteristics, and latent demand terms:

$$
x_{t} = \frac{\exp(\alpha \log p_{t} + \beta \Xi_{t} + \kappa_{t})}{1 + \sum_{k} \exp(\alpha \log p_{t} + \beta \Xi_{t} + \kappa_{t})}
$$

Central in any account of the international monetary system is how the investors in different countries choose their portfolios, how their portfolios differ in ex-ante characteristics and in ex-post returns, and how the capital flows due to investment rebalancing and pay-outs allocate resources across countries. Answers to these questions inform us about how the international monetary system is organized,

which countries play a central role, and the benefits and costs of being at the central location. In this chapter, we relate the households' equilibrium portfolio choices on the finance side to important quantities on the macro side such as net foreign assets and balance of payments. Then, we discuss two complementary approaches to modeling portfolio choices. One is the traditional mean-variance approach, which is also central in the standard asset pricing literature. The other is the demand system approach, which results from more recent developments. We will also discuss specifications and applications of these approaches adapted for studying international portfolio dynamics.

## 9.A Net Foreign Assets Accounting

To begin with, we relate the portfolio allocation decisions to aggregate international macro variables such as net foreign assets (NFA) and balance of payments. Our setting again nests the benchmark model in Section 1.A with one extension: home and foreign households can trade more assets than just the risk-free bonds. Let  $\iota \in \{1,\dots,I\}$  index the different assets issued by either country, which we refer to asset classes. These asset classes include the risk-free bond, but they may also include typical asset classes such as equity and long-term debt. We work out the NFA accounting between two countries, and our approach follows Jiang, Richmond, and Zhang [2022c] which considers a more general multi-country setting. For discussions and decompositions of the external adjustments, also see Gourinchas and Rey [2007a], Ghironi, Lee, and Rebucci [2015].

### 9.A.1 Household Portfolio and Net Foreign Assets

Let us start with some definitions on the asset pricing side. We use  $x_{H,t}(\iota)$  and  $x_{F,t}(\iota)$  to denote the home households' portfolio shares allocated to home and foreign assets, which satisfy

$$
\sum_{\iota} x_{H, t} (\iota) + \sum_{\iota} x_{F, t} (\iota) = 1.
$$

Similarly, foreign households' portfolio shares satisfy  $\sum_{\iota}x_{H,t}^{*}(\iota) + \sum_{\iota}x_{F,t}^{*}(\iota) = 1$ . For simplicity, we will omit the foreign households' expressions whenever they are symmetric.

We use  $a_{t}$  and  $a_{t}^{*}$  to denote the home and foreign households' wealth. In this case, it is simpler to denote both in home currency units. We define the home households' net foreign assets ( $nfa$ ) as the difference between their holdings of foreign assets (i.e., their external assets) minus the foreigners' holdings of their domestic assets (i.e.,

their external liabilities):

$$
n f a_{t} \stackrel {\text{de f}} {=} a_{t} \sum_{\iota} x_{F, t} (\iota) - a_{t}^{*} \sum_{\iota} x_{H, t}^{*} (\iota). \tag {9.1}
$$

Let  $p_t(\iota)$  and  $p_t^*(\iota)$  denote the asset prices, and let  $div_t(\iota)$  and  $div_t^*(\iota)$  denote the dividend or interest payouts, all in home currency terms. We use  $r_t(\iota)$  to denote the cum-dividend returns in log:

$$
\exp (r_{t} (\iota)) \stackrel {\text{de f}} {=} \frac{p_{t} (\iota) + d i v_{t} (\iota)}{p_{t - 1} (\iota)}.
$$

In this section, we further break down the cum-dividend returns into the ex-dividend component  $\rho_t(\iota)$  (i.e., capital gains) and the dividend yield component  $d_t(\iota)^1$ :

$$
\exp (r_{t} (\iota)) = 1 + \rho_{t} (\iota) + d_{t} (\iota),
$$

$$
\rho_{t} (\iota) \stackrel {\text{de f}} {=} \frac{p_{t} (\iota) - p_{t - 1} (\iota)}{p_{t - 1} (\iota)},
$$

$$
d_{t} (\iota) \stackrel {\text{de f}} {=} \frac{d i v_{t} (\iota)}{p_{t - 1} (\iota)}.
$$

Intuitively, household wealth accumulates as a result of realized financial returns from existing positions as well as additional financial savings deposited to their accounts. Let  $s_t$  denote the financial savings from period  $t - 1$  to  $t$  in home currency terms. Then, we obtain the standard law of motion for home household wealth:

$$
a_{t} = a_{t - 1} \left(\sum_{\iota} x_{H, t - 1} (\iota) \exp \left(r_{t} (\iota)\right) + \sum_{\iota} x_{F, t - 1} (\iota) \exp \left(r_{t}^{*} (\iota)\right)\right) + s_{t}. \tag {9.2}
$$

Finally, let  $q_{t}(\iota)$  denote the notional quantity of the asset, and let  $m_{t}(\iota)$  denote the total market value (i.e., market capitalization). The market clearing condition for each asset can be expressed as

$$
m_{t} (\iota) \stackrel {\text{de f}} {=} p_{t} (\iota) q_{t} (\iota) = a_{t} x_{H, t} (\iota) + a_{t}^{*} x_{H, t}^{*} (\iota). \tag {9.3}
$$

We can relate the market value of all home assets to the home households' wealth by the NFA:

$$
a_{t} = \sum_{\iota} m_{t} (\iota) + n f a_{t},
$$

which generalizes Eq. (7.3) to the multi-asset case.

The NFA definition (9.1), wealth law of motion (9.2), and market clearing (9.3) constitute an equation system that describes the asset market. If we also take a stance on how the households decide their portfolio shares  $x_{H,t}$  and  $x_{F,t}$ , which is to be specified in subsequent sections, then, we can solve the equilibrium asset prices, household wealth dynamics, and international NFA dynamics and capital flows.

1 Throughout the note, we use  $r_t$  to denote returns in log. Here it is easier to deviate from this notational convention and instead use  $\rho_t$  and  $d_t$  to denote components of returns in level.

### 9.A.2 Balance of Payments

Having specified the asset market space, we next turn to its connection to the quantity side. In international macroeconomics, it is common to use the following balance of payments identity to organize the law of motion for the net foreign assets:

$$
n f a_{t} - n f a_{t - 1} = t b_{t} + i b_{t} + c g_{t}, \tag {9.4}
$$

where  $tb$  denotes the trade balance,  $ib$  the income balance, and  $cg$  the capital gains.

The trade balance is defined in the standard way as the value of exports minus the value of imports, expressed in the home currency.

The income balance is defined as the earnings on foreign investments minus the payments made to foreign investors:

$$
i b_{t} = a_{t - 1} \sum_{\iota} x_{F, t - 1} (\iota) d_{t}^{*} (\iota) - a_{t - 1}^{*} \sum_{\iota} x_{H, t - 1}^{*} (\iota) d_{t} (\iota).
$$

The capital gains are defined as the changes in the value of assets that the home households hold abroad minus changes in the value of domestic assets held by foreign investors:

$$
c g_{t} = a_{t - 1} \sum_{\iota} x_{F, t - 1} (\iota) \rho_{t}^{*} (\iota) - a_{t - 1}^{*} \sum_{\iota} x_{H, t - 1}^{*} (\iota) \rho_{t} (\iota).
$$

The sum of income balance and capital gains (i.e.,  $ib_{t} + cg_{t}$ ) captures the overall wealth transfer between home and foreign households due to their holdings of each other's assets. The balance of payments identity (9.4) states that the home country accumulates a higher NFA position when (i) it runs a trade surplus, which results in claims that foreigners owe to the home country, and (ii) it earns a higher financial return than it pays to foreigners, which includes both capital gains and dividend payouts. Conversely, if the NFA remains constant, any trade deficit (i.e., negative  $tb$ ) has to be offset by a positive financial return (i.e., positive  $ib + cg$ ), as we have seen in the case of the U.S. in Chapter 7.

In international macroeconomics, it is also common to bundle together the trade balance and the income balance into the current account:  $ca_{t} \stackrel{\text{def}}{=} tb_{t} + ib_{t}$ , which describes the net earnings of the home country from its international trade and investments. As capital gains  $cg_{t}$  capture important variations in cross-border wealth transfers from financial markets in the data, we find it more convenient to conceptually bundle the income balance and the capital gains as total financial transfers.

### 9.A.3 Capital Flows

Cross-border capital flows are also related to disaggregated bilateral portfolio choices. The market value of net position changes in the

foreign assets held by the home households is

$$
\sum_{\iota} \left(a_{t} x_{F, t} (\iota) - a_{t - 1} x_{F, t - 1} (\iota) \frac{p_{t}^{*} (\iota)}{p_{t - 1}^{*} (\iota)}\right).
$$

Similarly, the market value of net position changes in the home assets held by the foreign households is

$$
\sum_{\iota} \left(a_{t}^{*} x_{H, t}^{*} (\iota) - a_{t - 1}^{*} x_{H, t - 1}^{*} (\iota) \frac{p_{t} (\iota)}{p_{t - 1} (\iota)}\right).
$$

These quantities capture the position changes in cross-border portfolio holdings due to investors' active portfolio rebalancing and trading. Variations in asset prices and hence capital gains do not affect these quantities. The (portfolio-driven) net capital flows are defined as their difference:

$$
c f_{t} \stackrel {\text{de f}} {=} \sum_{\iota} \left(a_{t} x_{F, t} (\iota) - a_{t - 1} x_{F, t - 1} (\iota) \frac{p_{t}^{*} (\iota)}{p_{t - 1}^{*} (\iota)}\right) - \sum_{\iota} \left(a_{t}^{*} x_{H, t}^{*} (\iota) - a_{t - 1}^{*} x_{H, t - 1}^{*} (\iota) \frac{p_{t} (\iota)}{p_{t - 1} (\iota)}\right),
$$

which is increasing in the home households' purchase of foreign assets and decreasing in the foreign households' purchase of home assets.

Using this definition, we can decompose the net foreign assets dynamics as

$$
n f a_{t} - n f a_{t - 1} = c g_{t} + c f_{t}, \tag {9.5}
$$

which clearly separates the valuation effects as captured by the capital gains  $c g_{t}$  from the quantity changes as captured by the net capital flows  $c f_{t}$ .

Moreover, the income balance constitutes another form of cross-border flows, which results from the dividend or coupon payouts to foreign investors. Since  $c f_{t}$  and  $i b_{t}$  denote flows in opposite directions under our notation, the aggregate financial flow is their difference:

$$
f f_{t} \stackrel {\text{de f}} {=} c f_{t} - i b_{t}. \tag {9.6}
$$

Combining Eq. (9.4), (9.5), and (9.6), we obtain an identity between the trade balance and the aggregate financial flow:

$$
t b_{t} = f f_{t} \stackrel {\mathrm{de f}} {=} c f_{t} - i b_{t},
$$

which states another form of the balance of payments identity. This identity again shows that imbalances on the trade side need to be consistent with the adjustments on the financial side. Specifically, a trade surplus corresponds to a net purchase of foreign assets by home households, which results in a financial outflow.

### 9.A.4 Market Clearing and Financial Savings

We next consider market clearing, which connects the assets' market values to the households' financial wealth. In the financial autarky case,  $nfa = tb = ib = cg = 0$ , and we have the domestic market clearing conditions:

$$
a_{t} x_{H, t} (\iota) = m_{t} (\iota),
$$

$$
a_{t} = \sum_{\iota} m_{t} (\iota).
$$

Then, given the definition of financial savings under autarky, i.e.,

$$
a_{t} = \sum_{\iota} m_{t - 1} (\iota) \left(1 + d_{t} (\iota) + \rho_{t} (\iota)\right) + s_{t},
$$

we obtain the following relationship between financial savings and asset market values:

$$
s_{t} = \left(\sum_{\iota} m_{t} (\iota) - \sum_{\iota} m_{t - 1} (\iota) \left(1 + \rho_{t} (\iota)\right)\right) - \sum_{\iota} m_{t - 1} (\iota) d_{t} (\iota). \tag {9.7}
$$

The first term on the right-hand side captures new asset issuances, which channel funds from the households to the corporate sector. The second term captures dividend payouts, which are transfers in the opposite direction from the corporate sector to the households. The households' financial savings are equal to the transfers from households to the corporate sector in the form of asset issuances minus the transfers from the corporate sector to the households in the form of dividend payouts.

Another way to understand this relationship is to realize that not everyone in this economy can reinvest their dividends and hold more shares at the same time. So, by market clearing, absent issuing new assets and financing new projects, dividend payouts have to be taken out of the financial market and consumed, which results in a decrease in the households' financial savings.

With these lessons learned from the autarky economy, we are now ready to consider the more general case with cross-border investments. We can extend Eq. (9.7) and obtain the following result in the open economy.

Proposition 9.1. The home households' financial savings  $s_t$  are equal to the trade balance  $tb_t$  plus the net transfers between investors and the home corporate sector:

$$
s_{t} = t b_{t} + \left(\sum_{\iota} m_{t} (\iota) - \sum_{\iota} m_{t - 1} (\iota) (1 + \rho_{t} (\iota))\right) - \sum_{\iota} m_{t - 1} (\iota) d_{t} (\iota).
$$

The proof is presented in Appendix A.39. This result connects the trade balance on the macro side to net financial savings and asset issuance on the asset market side.

First, consider the case in which asset issuances are exactly equal to the dividend payouts. Then, we obtain a special case:

$$
t b_{t} = s_{t},
$$

which states that the trade balance is equal to the home households' net financial savings. In this case, absent transfers to and from the financial markets, savings can only result from exporting more goods to foreigners and earning their IOUs.

Next, consider the case in which the trade balance is  $tb_{t} = 0$ , and the dividend payouts are  $d_{t}(\iota) = 0$ . Then, we obtain

$$
s_{t} = \left(\sum_{\iota} m_{t} (\iota) - \sum_{\iota} m_{t - 1} (\iota) (1 + \rho_{t} (\iota))\right),
$$

which implies that the asset issuances in the home country are entirely financed by the home households' financial savings. If the foreign households participate in the financing of the new issuances, we should expect to see capital flows which, by the previous section, should result in non-zero trade balance. Thus, the trade balance becomes the sufficient statistics for the foreign households' participation in the home asset issuances and financial savings process.

Finally, we can understand the general case by again understanding that  $(\sum_{t}m_{t}(\iota) - \sum_{t}m_{t - 1}(\iota)(1 + \rho_{t}(\iota))) - \sum_{t}m_{t - 1}(\iota)d_{t}(\iota)$  captures the net transfers between (home and foreign) investors and the home corporate sector. When the home investors contribute funds to the home corporate sector, we expect to see manifestations in the financial savings  $s_t$ . When the foreign investors contribute funds to the home corporate sector, we expect to see manifestations in the trade balance  $tb_t$ .

Conversely, once we understand how the asset market players in different countries make their saving and issuance decisions, we should also expect adjustments on the trade side. In particular, for the U.S. which runs persistent trade deficits, this approach offers an account of the financial drivers that fund the trade deficits.

### 9.A.5 Relation to National Consumption

Finally, we make a connection to consumption decisions in the national accounts. We assume that the aggregate output  $y_{t}$  is split into payoff to the financial assets and labor income  $w_{t}^{\ell}$ , i.e.,

$$
p_{t} y_{t} = \sum_{\iota} m_{t} (\iota) d_{t} (\iota) + w_{t}^{\ell}.
$$

Then, we can rewrite the standard household budget constraint Eq. (1.1) as

$$
a_{t - 1} \left(\sum_{\iota} x_{H, t - 1} (\iota) \exp (r_{t} (\iota)) + \sum_{\iota} x_{F, t - 1} (\iota) \exp (r_{t}^{*} (\iota))\right) + w_{t}^{\ell} = c_{t} + a_{t}.
$$

The left-hand side is the national income for the home households, which consists of financial asset payoff and labor income. The right-hand side contains two types of expenditure: consumption and financial investments.

Using Eq. (9.2), we obtain

$$
c_{t} = w_{t}^{\ell} - s_{t},
$$

which states that consumption is equal to labor income minus financial savings. For example, if the investors experience a high return from the financial assets they hold, they can liquidate some of their financial assets and increase consumption.

In this context, it is more convenient to consider a notion of net financial savings, which includes the dividends households receive:

$$
f_{t} \stackrel {{\text{de f}}} {{=}} s_{t} + a_{t - 1} \left(\sum_{\iota} x_{H, t - 1} (\iota) d_{t} (\iota) + \sum_{\iota} x_{F, t - 1} (\iota) d_{t}^{*} (\iota)\right).
$$

This notion allows us to express the household wealth as the sum of the previous period's wealth, the capital gains, and the net financial savings:

$$
a_{t} = a_{t - 1} \left(1 + \sum_{\iota} x_{H, t - 1} (\iota) \rho_{t} (\iota) + \sum_{\iota} x_{F, t - 1} (\iota) \rho_{t}^{*} (\iota)\right) + f_{t}. \tag {9.8}
$$

For example, if the net financial savings  $f_{t} = 0$ , the households consume all dividend payouts instead of reinvesting them in the financial market. In this case, the households' financial wealth accumulates according to the capital gains from their existing positions.

This expression implies

$$
f_{t} - a_{t - 1} \left(\sum_{\iota} x_{H, t - 1} (\iota) d_{t} (\iota) + \sum_{\iota} x_{F, t - 1} (\iota) d_{t}^{*} (\iota)\right) = s_{t} = w_{t}^{\ell} - c_{t},
$$

or

$$
c_{t} = w_{t}^{\ell} + a_{t - 1} \left(\sum_{\iota} x_{H, t - 1} (\iota) d_{t} (\iota) + \sum_{\iota} x_{F, t - 1} (\iota) d_{t}^{*} (\iota)\right) - f_{t}.
$$

So, the consumption is equal to labor income plus dividend payouts minus net financial savings  $f_{t}$ . Suppose the home households do not buy or sell any of their financial assets, i.e.,  $f_{t} = 0$ , then, the consumption is equal to labor income plus dividend payouts. In contrast, if the home households decide to save more by purchasing additional financial assets, they will have a lower consumption.

## 9.B The Mean-Variance Approach

This set-up follows the standard Merton [1969] portfolio problem with multiple assets. For tractability, we assume households have power utility and a finite horizon  $T$ . This set-up is otherwise similar to the domestic economy considered in Chapter 1, which is populated by a representative household. The household maximizes expected lifetime utility:

$$
\mathbb {E}_{0} \left[ \sum_{t = 0}^{T} \delta^{t} \frac{c_{t}^{1 - \gamma}}{1 - \gamma} \right].
$$

The household can trade a set of financial assets. Let  $w_{t}$  denote the wealth before consumption, and let  $a_{t}$  denote its total asset under management after consumption. Risky assets are indexed by  $\iota \in \{1,2,\dots,N\}$ , and there is an asset that is risk-free in real terms. Let  $x_{t}(\iota)$  denote the households' portfolio share on the asset  $\iota$ , and let  $\exp (r_{t + 1}(\iota))$  denote the asset's real return. Let  $\exp (r_t^f)$  denote the risk-free asset's real return. Then, the portfolio-level return can be expressed as

$$
\exp \left(r_{t + 1}^{p}\right) \stackrel {\text{de f}} {=} \left(1 - \sum_{\iota \geq 1} x_{t - 1} (\iota)\right) \exp \left(r_{t - 1}^{f}\right) + \sum_{\iota \geq 1} x_{t - 1} (\iota) \exp \left(r_{t} (\iota)\right),
$$

which can be expressed more conveniently in vector form:

$$
\exp (r_{t + 1}^{p}) = \exp (r_{t - 1}^{f}) + x_{t - 1}^{\prime} (\exp (r_{t}) - \exp (r_{t - 1}^{f})).
$$

The standard law of motion for home household wealth is

$$
w_{t} = a_{t} + c_{t} = a_{t - 1} \exp \left(r_{t + 1}^{p}\right).
$$

Let  $z_{t}$  denote the vector of state variables that determine the distribution of returns. We define the value function as

$$
\psi_{t} \left(w_{t}, z_{t}\right) \stackrel {{\text{de f}}} {{=}} \max_{\left\{c_{s}, x_{s} \right\}_{s = t}^{T}} \mathbb {E}_{t} \left[ \sum_{s = t}^{T} \delta^{s} \frac{c_{s}^{1 - \gamma}}{1 - \gamma} \right],
$$

which can be expressed in the following recursive form

$$
\psi_{t} \left(w_{t}, z_{t}\right) = \max_{c_{t}, x_{t}} \delta^{t} \frac{c_{t}^{1 - \gamma}}{1 - \gamma} + \mathbb {E}_{t} \left[ \psi_{t + 1} \left(w_{t + 1}, z_{t + 1}\right) \right].
$$

This is a generic set up of a portfolio choice model. See Back [2010] for more details, or Duffie [2010] for a continuous-time formulation. To fully solve this model, we need to rely on specific assumptions of investor preferences and asset return dynamics. When the investors have power utility, we obtain the following characterizations for portfolio demand.

Proposition 9.2. (a) The value function satisfies

$$
\psi_{t} (w_{t}, z_{t}) = \delta^{t} f_{t} (z_{t}) \frac{w_{t}^{1 - \gamma}}{1 - \gamma},
$$

where the function  $f_{t}(z_{t})$  depends on the state variable and satisfies  $f_{t}(z_{t}) = wc_{t}^{\gamma}$  where  $wc_{t} = w_{t} / c_{t}$  denotes the wealth-consumption ratio.

(b) The optimal portfolio allocation satisfies

$$
x_{t} = \arg \max_{x_{t}} \mathbb {E}_{t} \left[ f_{t + 1} \left(z_{t + 1}\right) \frac{\exp \left(\left(1 - \gamma\right) r_{t + 1}^{p}\right)}{1 - \gamma} \right], \tag {9.9}
$$

where the log portfolio return  $r_{t+1}^p$  depends on the portfolio choice  $x_t$ .

The proof is in Appendix A.40. Eq. (9.9) implies that, when the investors maximize their expected portfolio return  $r_{t+1}^p$ , they also pay attention to the expected evolution of the state variable  $z_{t+1}$ . Consequently, the optimal portfolio choice  $x_t$  depends on the expected future state.

### 9.B.1 The Case of Constant Investment Opportunity

To derive closed-form solutions, the literature uses either continuous-time math or linearization to further simplify the problem. A popular choice is to approximate the portfolio return via log-linearization as proposed by Campbell and Viceira [2002], which approximates the log portfolio return by

$$
r_{t + 1}^{p} \approx r_{t}^{f} + x_{t}^{\prime} (r_{t + 1} - r_{t}^{f} + \frac{1}{2} \sigma_{t}^{2}) - \frac{1}{2} x_{t}^{\prime} \Sigma_{t} x_{t},
$$

where  $\Sigma_t$  denotes the conditional variance-covariance matrix of the log returns, and  $\sigma_t^2$  is the vector containing the diagonal elements of  $\Sigma_t$ .

With this approximation formula, we can now solve the portfolio choice problem when the state variable is a constant, i.e.,  $z_{t} = \bar{z}$ , which implies that the asset returns are i.i.d. and  $f_{t + 1}(z_{t + 1})$  is a constant.

Proposition 9.3. When the asset returns are i.i.d. and normally distributed, the optimal portfolio choice is

$$
x_{t} = \gamma^{- 1} \Sigma_{t}^{- 1} \left(\mathbb {E} \left[ r_{t + 1} \right] + \frac{1}{2} \sigma_{t}^{2} - r_{t}^{f}\right). \tag {9.10}
$$

The proof is in Appendix A.41. This formula (9.10) recovers the classical mean-variance trade-off in portfolio choice theory. In the numerator,  $\mathbb{E}[r_{t + 1}] - r_t^f$  denotes the assets' expected excess returns in log, and  $\frac{1}{2}\sigma_t^2$  captures the Jensen's term adjustment, so that the

sum  $\mathbb{E}[r_{t + 1}] + \frac{1}{2}\sigma_t^2 - r_t^f$  captures the assets' expected excess returns in level, which is exact when returns are normally distributed or in continuous time. In the denominator,  $\Sigma_t$  is the covariance matrix of asset returns and  $\gamma$  is the risk aversion coefficient. Therefore, the optimal portfolio favors assets that have high expected excess returns and low variance and covariance with other assets.

### 9.B.2 Special Cases with Time-varying Investment Opportunity

When the state variable  $z_{t}$  is time-varying, the problem becomes more difficult in general. Here we discuss two special cases. First, Campbell and Viceira [2002] consider a case in which the risk-free rate is time-varying but the risky assets' variances and risk premia are constant. In this case, the optimal portfolio choice is

$$
x_{t} = \frac{1}{\gamma} \Sigma_{t}^{- 1} \left(\mathbb {E}_{t} r_{t + 1} - r_{t}^{f} + \frac{1}{2} \sigma_{t}^{2}\right) + \left(1 - \frac{1}{\gamma}\right) \Sigma_{t}^{- 1} c o v_{t} \left(r_{t + 1}, - \left(\mathbb {E}_{t + 1} - \mathbb {E}_{t}\right) \sum_{j = 1}^{\infty} \rho^{j} r_{t + j}^{f}\right). \tag {9.11}
$$

This solution contains two terms. The first term is similar to the solution under i.i.d. returns derived above, which depends on the assets' excess returns and variance-covariance matrix. The second term is commonly known as the hedging term, as the investors buy certain assets to hedge shocks to future investment opportunities. In this case, since risk premia are constant, variations in future investment opportunities are only driven by variations in the risk-free rate. Specifically, a surprise reduction in expected future risk-free rates represents a negative shock to future investment opportunities. When the risk aversion coefficient  $\gamma > 1$ , investors would like to load up more on assets that offer higher returns when expected future risk-free rates go down.

Second, if the investors have log utility, then, Eq. (9.9) can be simplified to

$$
x_{t} = \arg \max_{x_{t}} \mathbb {E}_{t} \left[ r_{t + 1}^{p} \right] \approx \arg \max_{x_{t}} x_{t}^{\prime} \left(\mathbb {E}_{t} \left[ r_{t + 1} \right] - r_{t}^{f} + \frac{1}{2} \sigma_{t}^{2}\right) - \frac{1}{2} x_{t}^{\prime} \Sigma_{t} x_{t},
$$

which does not depend on the state variable. In this sense, investors with log utility are myopic, as they choose portfolios like one-period investors. They do not pay attention to how different assets' returns respond to shocks to future investment opportunities. These investors also have a predetermined wealth-consumption ratio, which is a constant when the horizon  $T$  is infinite.

Moreover, with log utility (i.e.,  $\gamma = 1$ ), Eq. (9.11) in the first special case becomes  $x_{t} = \Sigma_{t}^{-1}\left(\mathbb{E}_{t}[r_{t + 1}] - r_{t}^{f} + \frac{1}{2}\sigma_{t}^{2}\right)$ . The optimal portfolio allocation no longer loads on the term that hedges the variations

in future interest rates, and the myopic investors only focus on the mean-variance trade-off.

## 9.C Applications of the Mean-Variance Approach (TODO)

## 9.D The Demand System Approach

Eq. (9.10) offers an intuitive way to think about the portfolio allocation problem as a mean-variance trade-off. While this approach has been powerful and universal, several challenges stand out. First, estimating the expectation and the variance-covariance matrix of asset returns is empirically challenging. As the assets' risk characteristics and investors' risk appetite are time-varying, the moments estimated from the past return data do not necessarily represent the distribution of future returns.

Second, investor demand for different assets and asset classes appears to be less elastic than what standard models imply. For example, according to Koijen and Yogo [2021], "a calibration of the capital asset pricing model (CAPM) implies a demand elasticity for individual stocks that exceeds 5,000," whereas empirical estimates of the demand elasticity are closer to 1 or lower [Gabaix and Koijen, 2021], which is three orders of magnitude smaller.

In response to these challenges, Koijen and Yogo [2019] turn to a complementary approach based on demand systems. Instead of deriving the optimal portfolio choice from the mean-variance trade-off, their starting point is that the households allocate their wealth based on the assets' characteristics. In this section, we study the most basic demand system model based on logit demand functions.

### 9.D.1 Logit Demand

Let  $\delta_t(i)$  denote the desirability of asset  $i$ :

$$
\delta_{t} (\iota) = \alpha \log p_{t} (\iota) + \beta \Xi_{t} (\iota) + \kappa_{t} (\iota),
$$

where  $\log p_t(\iota)$  denotes the log asset price,  $\Xi_t(\iota)$  denotes the vector of additional observable asset characteristics, and  $\kappa_t(\iota)$  denotes an unobservable latent demand term. We expect  $\alpha < 0$ , in which case the households find an asset more attractive when its price is lower. The asset also becomes more attractive when it has some desirable attributes captured by  $\Xi_t(\iota)$ , which for example could include a lower price volatility, a higher credit rating, or simply a larger asset supply. With heterogeneous investors indexed by  $n$ , the characteristics could also be bilateral, i.e.,  $\Xi_{n,t}(\iota)$ , which could for example capture the investors' home bias towards domestic assets, or their preferences for

foreign assets according to proximity in geographic distance or trade network as we saw in Section 3.C. Finally, the latent demand term allows us to capture the unobservable characteristics of the asset that simultaneously generate a higher market share and a higher asset price by making the asset more attractive [Berry, 1994].

We assume that the households' allocation on this asset follows

$$
x_{t} (\iota) = \frac{\exp \left(\delta_{t} (\iota)\right)}{1 + \sum_{k} \exp \left(\delta_{t} (k)\right)}. \tag {9.12}
$$

We make several observations. First, if  $\alpha < 0$ , the households have a downward-sloping demand curve for this asset. This can be thought of as a generalization of the downward-sloping demand curve for reserve assets that we considered in Section 4.A. In our current setting, all assets face downward-sloping demand curves.

Second, the 1 in the denominator models the existence of an outside asset, which is a benchmark asset whose desirability  $\delta_t(0)$  is normalized to be 0. The choice of this outside asset is usually model-specific. For example, it could be bank deposits when studying the demand system of money market funds, or it could be the assets issued by small countries with missing characteristics when studying the demand system of international portfolio allocation.

Third, the households' allocation to asset  $\iota$  also depends on the desirability of other assets. When some other assets become relatively more desirable, then, the allocation to asset  $\iota$  goes down. Moreover, when all inside assets experience a uniform increase in their desirabilities, the allocations to all inside assets go up relative to the allocation to the outside asset.

Fourth, this set-up could be micro-founded in several ways. The most classical micro-foundation is borrowed from the field of industrial organization [Berry, 1994, Berry, Levinsohn, and Pakes, 1995, Nevo, 2001]. Specifically, the problem of investors choosing which asset to hold is translated to the problem of consumers choosing which product to purchase. Suppose there is a continuum of investors indexed by  $n$ , and each investor has one dollar to invest. If investor  $n$  picks asset  $i$ , he or she has the following utility

$$
u_{n, t} (\iota) = \delta_{t} (\iota) + \varepsilon_{n, t} (\iota).
$$

The outside asset 0 has utility  $u_{n,t}(0) = 0$ .

Investor  $n$  chooses to invest in asset  $\iota$  if  $u_{n,t}(\iota) \geq u_{n,t}(j)$  for all  $j$ . The term  $\varepsilon_{n,t}(\iota)$  captures the investor's personal preference. If this term is i.i.d. and follows the standard logit distribution with a cumulative distribution function  $\Phi(\varepsilon) = \exp(-\exp(-\varepsilon))$ , then, we can aggregate across all investors and derive the amount of funds

invested in asset  $\iota$  to be

$$
a_{t} \frac{\exp (\delta_{t} (t))}{1 + \sum_{k} \exp (\delta_{t} (k))},
$$

where  $a_{t}$  is the aggregate funds of the investors. In this way, we obtain the representative investor's demand function given by Eq. (9.12).

Alternatively, Koijen and Yogo [2019] propose a mapping from the standard mean-variance portfolio allocation problem in Section 9.B to the demand system. They do so by imposing a factor structure to the variance-covariance matrix of asset returns, allowing the factor loadings to depend on the asset characteristics, and adopting a particular form of approximation.

The characteristics-based demand could have other micro-foundations as well, such as private information, heterogeneous beliefs [Pellegrino, Spolaore, and Wacziarg, 2021], institutional constraints, and non-pecuniary preferences for certain traits such as ESG, the demand for reserve assets as we studied in Section 7, and behavioral factors.2

### 9.D.2 Closing the Model with the Supply Side

To close the model, we need to take a stance on the total amount of funds the households have for investments. Let us denote this total asset under management by  $a_{t}$ . In some models,  $a_{t}$  is exogenously determined; in other models,  $a_{t}$  depends on previous investment outcomes. For example, it makes sense to use the same law of motion for the asset under management as in the traditional portfolio model in Section 9.B:

$$
a_{t} = a_{t - 1} \left(\sum_{\iota} x_{t - 1} (\iota) \exp (r_{t} (\iota))\right) + s_{t},
$$

which requires us to model  $s_t$  representing how much the households save into their investment account after consumption. In the case that the households consume more than their income, the flow term  $s_t$  could be negative. Section 9.A discusses these flows in more details.

We also need to specify asset supply and market clearing. Let  $q_{t}(\iota)$  denote asset  $\iota$ 's quantity of shares. The market clearing condition is

$$
p_{t} (\iota) q_{t} (\iota) = a_{t} x_{t} (\iota). \tag {9.13}
$$

In some models, the asset supply  $q_{t}(\iota)$  is assumed to be a constant or exogenously specified. In other models, the asset supply is endogenous, as the issuers maximize their profits while being aware of the

2 For asset-level characteristics, see Daniel and Titman [1997] and the subsequent covariance vs. characteristics debate. Investor-level characteristics such as personalities [Jiang, Peng, and Yan, 2023c] and recall bias [Jiang, Liu, Peng, and Yan, 2022b] could affect portfolio allocations.

downward-sloping demand curve. Specifically, suppose the issuer of asset  $\iota$  maximizes the profit by setting the price:

$$
\max_{p} p q (p) - c (q (p)),
$$

where the issuance cost  $c(q)$  is a function of the quantity  $q$ , and the quantity  $q$  is determined by the demand curve at a given price  $p$ . We drop the period- $t$  subscripts for simplicity. Then, the first-order condition implies that the marginal revenue equals the marginal cost, which implies

$$
p - c^{\prime} (q (p)) = q (p) / q^{\prime} (p).
$$

On the left-hand side,  $p - c'(q(p))$  is the issuer's mark-up defined as the asset price minus the marginal cost. This result implies that the issuer sets the mark-up according to the demand elasticity.

Yet in other cases, the asset supply can be fully elastic, which means that the issuer can supply an arbitrary quantity of the asset at a given price. For example, this could apply to open-end money market funds whose underlying holdings are liquid and safe assets with a deep market. In this case, when there is a shock to investor demand, the market clears by quantity adjustment instead of by price adjustment.

### 9.D.3 Demand Elasticity

This demand system model also has a simple expression for demand elasticity. The log demand by issuer  $\iota$  is given by

$$
\log q_{t}^{\text{demand}}(\iota) = \log \left(a_{t} x_{t}(\iota) / p_{t}(\iota)\right)
$$

which implies that the demand elasticity is<sup>3</sup>

$$
- \frac{\partial \log q_{t}^{\text{demand}}(\iota)}{\partial \log p_{t}(\iota)} = 1 - \frac{\partial \log x_{t}(\iota)}{\partial \log p_{t}(\iota)} = 1 - (1 - x_{t}(\iota)) \alpha
$$

To interpret this result, note that we expect  $\alpha < 0$  as demand is decreasing in price. Then, the demand elasticity is increasing in the magnitude  $|\alpha|$ , a higher value of which means that the households' demand is more sensitive to the price. Magnitude-wise, suppose this asset is only  $1\%$  of the total market cap, and  $\alpha = -1$ , so that a  $1\%$  increase in asset price roughly leads to a  $1\%$  reduction in investor demand. Then, the demand elasticity is 1.99, which is already at the higher end of the distribution of empirical estimates.

The demand elasticity is also decreasing in the portfolio share  $x_{t}(\iota)$ , which means an asset with a larger size has fewer alternatives to substitute with. This is a desirable feature of the asset demand system, because reserve assets in high demand such as the U.S. Treasury

$$
^{3} \text{ The derivation is simple: } \frac{\partial \log x_{t}(i)}{\partial \log p_{t}(i)} =
$$

$$
\frac{\partial \delta_{t} (i)}{\partial \log p_{t} (i)} - \frac{\partial \log \left(1 + \sum_{k} \exp (\delta_{t} (k))\right)}{\partial \log p_{t} (i)} = \alpha -
$$

$$
\alpha \frac{\exp (\delta_{t} (i))}{1 + \sum_{k} \exp (\delta_{t} (k))}.
$$

tend to face a more inelastic demand curve [Choi, Dang, Kirpalani, and Perez, 2023]. If our asset demand system correctly captures the high market share in either the asset characteristics  $\Xi_t(\iota)$  or the latent demand  $\kappa_t(\iota)$ , then, we also make its demand curve more inelastic than other assets.

So far, we have only considered one representative household. It is straightforward to extend the model and allow for multiple investors, which, for example, is a natural case when we consider investments between different countries. Let  $n$  index the investors. Then, the market clearing condition becomes

$$
p_{t} (\iota) q_{t} (\iota) = \sum_{n} a_{n, t} x_{n, t} (\iota),
$$

and the aggregate demand elasticity is simply a weighted average of individual investors' demand elasticities:

$$
- \frac{\partial \log q_{t}^{\text{de ma nd}} (\iota)}{\partial \log p_{t} (\iota)} = \sum_{n} \frac{a_{n , t} x_{n , t} (\iota)}{\sum_{m} a_{m , t} x_{m , t} (\iota)} \left(- \frac{\partial \log q_{n , t}^{\text{de ma nd}} (\iota)}{\partial \log p_{t} (\iota)}\right).
$$

### 9.D.4 What If There Is No Outside Asset?

The outside asset plays an important role in pinning down the equilibrium solution in this asset demand system. While this point is more general, let us consider a simple case in which there is one investor, one inside asset, and no outside asset. Then, regardless of the desirability of the asset, the portfolio share allocated towards this asset is always  $x_{t} = 1$ . We also assume that the asset quantity is  $q_{t} = 1$  and the asset pays no dividend. Then, the market clearing condition implies:

$$
p_{t} = p_{t} q_{t} = a_{t} x_{t} = a_{t},
$$

and the investor's wealth dynamics follows

$$
a_{t} = a_{t - 1} \frac{p_{t}}{p_{t - 1}} + s_{t}.
$$

We assume the wealth  $a_{t-1}$  and the asset price  $p_{t-1}$  in the last period are both 1. In this case, if the saving  $s_t = 0$ , the market clearing condition and the investor's wealth dynamics are consistent with any asset price  $p_t$ . If the saving  $s_t \neq 0$ , then, there will be no asset price that is consistent with the market clearing condition and the investor's wealth dynamics. Both cases are pathological.

In comparison, if we add the outside option, the portfolio choice becomes

$$
x_{t} = \frac{\exp (\alpha \log p_{t})}{1 + \exp (\alpha \log p_{t})},
$$

the market clearing condition for the inside asset is:

$$
p_{t} = p_{t} q_{t} = a_{t} x_{t},
$$

and, assuming that the outside option pays no return, the investor's wealth dynamics follows

$$
a_{t} = a_{t - 1} \left(\left(1 - x_{t - 1}\right) + x_{t - 1} \frac{p_{t}}{p_{t - 1}}\right) + s_{t} = \left(\left(1 - x_{t - 1}\right) + x_{t - 1} p_{t}\right) + s_{t}.
$$

We assume  $\alpha = -1$  and  $x_{t-1} = 1 / \sqrt{2}$ . Then, this system of equations has only one root with a positive asset price, with,

$$
p_{t} = \sqrt{2} - 1, \qquad a_{t} = 2 - \sqrt{2}, \qquad x_{t} = 1 / \sqrt{2},
$$

when  $s_t = 0$ , and, consistent with our intuition, the asset price  $p_t$  is increasing in the saving  $s_t$ . The introduction of the outside asset makes the demand function for the book value of the inside asset downward-sloping in the asset price, i.e.,

$$
q_{t}^{\text{de ma nd}} = a_{t} x_{t} / p_{t} = \frac{1 - x_{t - 1} + x_{t - 1} p_{t} + s_{t}}{p_{t}} \frac{\exp (\alpha \log p_{t})}{1 + \exp (\alpha \log p_{t})},
$$

because the investor can substitute towards the outside asset if the inside asset is too expensive. As we plot in Figure 9.1, this demand function crosses a flat supply curve  $q_{t}^{supply} = 1\$  and determines the unique equilibrium price. In comparison, without the outside asset, the demand function for the book value of the inside asset is flat, and the equilibrium price is not determined.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/b65b63e81e37048ec03bc3614f2b539fc024fe1722276d2918fc3d69c4b37a9d.jpg)  
Figure 9.1: Market Clearing for the Book Quantity of the Asset.

### 9.D.5 Identifying the Elasticity

Finally, while this note deals with the theoretical issues of the asset demand system, it is worth noting that its empirical estimation and identification are also at the forefront of this literature. Here, we provide a brief discussion of the identification strategies used in the literature.

Generally speaking, to identify the shape of the demand curve, which is parameterized using the logit functional form in this section, we need variations in the supply curve. Therefore, the most straightforward instruments are the exogenous shifters of the supply curve. For example, Xiao [2020], Chen and Jiang [2022] use non-interest expenses of banks and funds as exogenous cost shifters to identify the demand for their assets. Diamond, Jiang, and Ma [2020] derive changes in the bank branches' marginal costs due to the shocks originating from other locations transmitted via the banks' internal capital market. In the context of government debt, Choi, Kirpalani, and Perez [2022] directly use plausibly exogenous changes in the debt supply.

Second, the literature has used the non-price characteristics of competing assets, commonly referred to as the BLP instruments [Berry, Levinsohn, and Pakes, 1995]. The identification assumption is that the changes in these exogenous characteristics of other assets affect the residual demand curve for the asset in question. In the same spirit, Koijen and Yogo [2020] propose a model-based procedure to calculate counterfactual asset prices based on exogenous characteristics and use them as instruments. For example, suppose the asset demand is stronger for country pairs which trade a lot with each other. Then, solving the demand system model with the asset demand  $\delta_t(\iota)$  in Eq. (9.12) being a function of the trade relationship alone leads to exogenous variations in asset prices. Implicitly, this procedure uses a non-linear aggregation of all assets' characteristics as the instrument.

Third, Gabaix and Koijen [2020] propose a granular instrumental variable approach that exploits the idiosyncratic shocks from large players, which presents a new strategy for demand system settings.

## 9.E Application to International Portfolio Allocation

In this section, we consider a two-tier demand system that Koijen and Yogo [2020], Jiang, Richmond, and Zhang [2022c,d] use to study the international financial market. We consider a simplified case in which there are only two countries and two asset classes.

In this model, we assume that the investors make two sequential decisions. First, they allocate their wealth across different asset classes indexed by  $\ell$ , which we refer to as short-term bonds ( $\ell = 1$ ) and equities ( $\ell = 2$ ) in this note. Second, within each asset class, they allocate their wealth across different issuer countries indexed by  $\iota$ . As such, investor country  $n$ 's demand for the asset in class  $\ell$ , issuer country  $\iota$  has a nested-logit structure:

$$
x_{n, t} (\iota , \ell) = x_{n, t} (\ell) \cdot x_{n, t} (\iota | \ell),
$$

where  $x_{n,t}(\ell)$  denotes the portfolio share of the entire asset class  $\ell$ , and  $x_{n,t}(\iota|\ell)$  denotes the portfolio share of the issuer country  $\iota$  within asset class  $\ell$ . This two-tier structure offers a richer structure to model the cross-sectional heterogeneity in the demand for different asset classes and countries separately.

The allocation within the asset class is similar to the one we considered in the baseline case:

$$
x_{n,t}(\iota|\ell) = \frac{\exp(\delta_{n,t}(\iota,\ell))}{1 + \sum_{k} \exp(\delta_{n,t}(k,\ell))}
$$

where

$$
\delta_{n,t}(\iota,\ell) = \alpha \log \left(p_{t}(\iota,\ell) \exp(e_{t}(n) - e_{t}(\iota))\right) + \kappa_{n,t}(\iota,\ell)
$$

captures the desirability of this asset  $(\iota, \ell)$ . We refer to the currency of the home country as the dollar. We use  $p_t(\iota, \ell)$  to denote the asset price in the local currency units, and  $e_t(\iota)$  to denote the log exchange rate of the local currency per dollar. Then,  $p_t(\iota, \ell) \exp(e_t(n) - e_t(\iota))$  captures the price of the asset from the issuer country  $\iota$  in the units of the local currency in the investor country  $n$ . For simplicity, we ignore the asset-specific characteristics  $\Xi_t(\iota)$ . We allow the latent demand  $\kappa_{n,t}(\iota, \ell)$  to be specific to the investor  $n$ .

The allocation across asset classes is modeled as

$$
x_{n,t}(\ell) = \frac{\left(1 + \sum_{k} \exp(\delta_{n,t}(k,\ell))\right)^{\lambda} \exp(\psi_{\ell} + \xi_{n,t}(\ell))}{\sum_{m} \left(1 + \sum_{k} \exp(\delta_{n,t}(k,m))\right)^{\lambda} \exp(\psi_{m} + \xi_{n,t}(m))}
$$

where  $\psi_{\ell} + \xi_{n,t}(\ell)$  captures the investor's preference for asset class  $\ell$ , which is similar to the latent demand term  $\kappa_{n,t}(\iota, \ell)$  for a specific issuer country  $\iota$ . In empirical specifications, the  $\kappa_{n,t}(\iota, \ell)$  across the asset classes are identified only up to a constant, which requires us to normalize this term to be zero for one asset class. The other term  $(\sum_{k} \exp(\delta_{n,t}(k, \ell)))^{\lambda}$  is known as the inclusive value, which captures the desirability of the assets within this asset class including their prices and latent demand terms. For microfoundation and more discussions of this inclusive value term, please refer to industrial organization textbooks such as Train [2009].

Let  $a_{n,t}$  denote the wealth of investor country  $n$  in the dollar units. Then, this investor country holds  $a_{n,t}x_{n,t}(\iota ,\ell)$  dollars' worth of the

asset  $(\iota, \ell)$ . Let  $q_{t}(\iota, \ell)$  denote asset  $\iota$ 's quantity of shares. Then, in the presence of multiple investor countries, the market clearing condition (9.13) is generalized to

$$
p_{t} (\iota , \ell) \exp (- e_{t} (\iota)) q_{t} (\iota , \ell) = \sum_{n} a_{n, t} x_{n, t} (\iota , \ell),
$$

for all issuer country  $\iota$  representing the set of insider assets and asset class  $\ell$ . We do not impose a market clearing condition on the outside asset, which is assumed to have an infinitely elastic supply at a fixed local-currency price and desirability.

Finally, as emphasized by Jiang, Richmond, and Zhang [2022c,d], the investor country  $n$ 's wealth responds endogenously to the asset returns. Let  $a_{t}$  denote the dollar value of its wealth, which follows the following law of motion:

$$
a_{n, t} = a_{n, t - 1} \left(\sum_{\ell} \sum_{\iota \geq 0} x_{n, t - 1} (\iota , \ell) \exp (r_{t} (\iota , \ell))\right) + s_{n, t},
$$

where, for simplicity, we assume that the assets pay no dividends, and their dollar-denominated returns are given by their capital gains:

$$
\exp (r_{t} (\iota , \ell)) = \frac{p_{t} (\iota , \ell)}{p_{t - 1} (\iota , \ell)} \exp (- \Delta e_{t} (\iota)).
$$

We take the saving  $s_{n,t}$ , the asset quantity  $q_{t}(\iota, \ell)$ , and the latent demand  $\kappa_{n,t}(\iota, \ell)$  as exogenously given. The portfolio choices  $x_{n,t}(\iota, \ell)$ , the market clearing conditions, and the wealth law of motion jointly determine the equilibrium asset prices, exchange rates, and capital flows.

### 9.E.1 Macro Synthesis

We study the competitive equilibrium in which the portfolio choices follow the logit demand, the wealth follows the given law of motion, and the markets for all inside assets clear.

The exogenous variables are the savings, the latent demand terms, and the asset quantities:

$$
(s_{n, t}, q_{t} (\iota , \ell), \kappa_{n, t} (\iota , \ell), \xi_{n, t} (\ell))_{t = 0}^{\infty}, \quad \mathrm{fo r} \quad n, \iota , \ell = 1, 2.
$$

There are 23 endogenous variables in each period  $t$ :

$$
\left(a_{n, t}, \delta_{n, t} (\iota , \ell), x_{n, t} (\iota , \ell), p_{t} (\iota , \ell), e_{t}\right)_{t = 0}^{\infty}, \quad \text{fo r} \quad n, \iota , \ell = 1, 2.
$$

The model implies the following 22 equations, including 8 for portfolio choices:

$$
x_{n, t} (\iota , \ell) = \frac{\exp \left(\delta_{n , t} (\iota , \ell)\right) \left(1 + \sum_{k} \exp \left(\delta_{n , t} (k , \ell)\right)\right)^{\lambda - 1} \exp \left(\psi_{\ell} + \xi_{n , t} (\ell)\right)}{\sum_{m} \left(1 + \sum_{k} \exp \left(\delta_{n , t} (k , m)\right)\right)^{\lambda} \exp \left(\psi_{m} + \xi_{n , t} (m)\right)}, \quad \text{fo r} \quad n, \iota , \ell = 1, 2,
$$

8 for asset-level desirabilities:

$$
\delta_{n, t} (\iota , \ell) = \alpha \log \left(p_{t} (\iota , \ell) \exp \left(e_{t} (n) - e_{t} (\iota)\right)\right) + \kappa_{n, t} (\iota , \ell), \quad \text{fo r} \quad n, \iota , \ell = 1, 2,
$$

2 for the law of motion of wealth:

$$
a_{n, t} = a_{n, t - 1} \left(\sum_{\ell} \sum_{\iota \geq 0} x_{n, t - 1} (\iota , \ell) \frac{p_{t} (\iota , \ell)}{p_{t - 1} (\iota , \ell)} \exp (- \Delta e_{t} (\iota))\right) + s_{n, t}, \quad \text{fo r} \quad n = 1, 2,
$$

and 4 for market clearing:

$$
p_{t} (\iota , \ell) \exp (- e_{t} (\iota)) q_{t} (\iota , \ell) = \sum_{n} a_{n, t} x_{n, t} (\iota , \ell), \quad \text{fo r} \quad \iota , \ell = 1, 2.
$$

Finally, we define an auxiliary variable representing the U.S. net foreign assets (NFA):

$$
n f a_{t} = \sum_{\ell} a_{1, t} x_{1, t} (2, \ell) - \sum_{\ell} a_{2, t} x_{2, t} (1, \ell).
$$

We can use the portfolio choices, asset-level desirabilities, and the law of motion of wealth to solve for the endogenous variables  $x_{n,t}(\iota ,\ell), \delta_{n,t}(\iota ,\ell)$ , and  $a_{n,t}$ . With  $N = 2$  countries and  $L = 2$  asset classes,  $NL + (N - 1) = 5$  endogenous asset prices and exchange rates remain to be solved, but only  $NL = 4$  market clearing conditions are available. Therefore, our system is underdetermined. In a traditional macro model, we have additional restrictions on the exchange rate from the goods market clearing. While this is an interesting component to incorporate into the asset demand system, here we use different assumptions to close the model. We will consider three different settings in our numeric exercise, highlighting the difference between fixed and flexible exchange rate regimes as well as the difference between symmetric and asymmetric settings between the U.S. and the foreign country. In each of these settings, we have exactly the same number of restrictions as the number of endogenous asset prices and exchange rates.

### 9.E.2 Calibration and Results (TODO)

### 9.E.3 Other Works

In this section, we considered a simple two-country, two-asset class demand system model to study the effects of the demand shocks on the exchange rate and the asset prices. The reality is much richer. For example, one feature we omit in our model is the currency denomination of the assets, which exhibits important heterogeneity across issuers and across investors [Maggiori, Neiman, and Schreger, 2020]. Moreover, the investor base could be further decomposed by different

sectors, such as banks, mutual funds, insurance companies and pension funds, and so on [Fang, Hardy, and Lewis, 2022, Faia, Salomao, and Veghazy, 2022, Bergant, Milesi-Ferretti, and Schmitz, 2023, Zhou, 2023]. For example, our modeling of the bilateral holdings abstracts away from the roles of financial intermediaries, which may act more than just a pass-through.


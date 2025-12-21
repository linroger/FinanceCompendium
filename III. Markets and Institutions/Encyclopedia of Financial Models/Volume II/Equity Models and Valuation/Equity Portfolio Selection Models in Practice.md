
---
title: "Equity Portfolio Selection Models in Practice"
parent_directory: "Equity Models and Valuation"
formatted: "2025-12-21 10:40:00 AM"
formatter_model: "claude-haiku-4-5-20251001"
cli-tool: "claude-code"
primary_tags:
  - "portfolio optimization"
  - "equity portfolio management"
  - "quantitative portfolio allocation"
  - "transaction costs modeling"
  - "tracking error minimization"
secondary_tags:
  - "mean variance framework"
  - "factor models"
  - "portfolio constraints"
  - "tax aware optimization"
  - "robust portfolio optimization"
  - "multi account optimization"
  - "benchmark tracking"
  - "risk factor exposure"
cssclasses: academia
---

# Equity Portfolio Selection Models in Practice

DESSISLAVA A. PACHAMANOVA. PhD

Associate Professor of Operations Research, Babson College

FRANK J. FABOZZI, PhD, CFA, CPA

Professor of Finance, EDHEC Business School

Abstract: Quantitative equity portfolio selection often involves extending the classical mean-variance framework or more advanced tail-risk portfolio allocation frameworks to include different constraints that take specific investment guidelines and institutional features into account. Examples of such constraints are holding constraints that set limits on the total concentration of assets in an industry, sector, or country; turnover constraints that restrict the amount of trading; tracking error constraints that limit the difference between the performance of the portfolio and a benchmark; and risk factor constraints that limit the exposure of the portfolio to a risk factor such as the market. Portfolio allocation models can also account for transaction costs, taxes, and optimization of trades across multiple client accounts. An important practical issue in quantitative equity portfolio selection is how to mitigate the effect of model and estimation errors on the optimal allocation. Techniques that are used to address this issue include robust statistical techniques for parameter estimation, portfolio resampling, and robust optimization.

An integrated investment process generally involves the following activities:

1. An investor's objectives, preferences, and constraints are identified and specified to develop explicit investment policies.

2. Strategies are developed and implemented through the choice of optimal combinations of financial and real assets in the marketplace.

3. Market conditions, relative asset values, and the investor's circumstances are monitored.

4. Portfolio adjustments are made as appropriate to reflect significant changes in any or all of the relevant variables.

In this entry we focus on the second activity of the investment process, developing and implementing a portfolio strategy. The development of the portfolio strategy itself is typically done in two stages: First, funds are allocated among asset classes. Then, they are managed within the asset classes. The mean-variance framework is used at both stages, but in this entry, we discuss the second stage. Specifically, we introduce quantitative formulations of portfolio allocation problems used in equity portfolio management. Quantitative equity portfolio selection often involves extending the classical mean-variance framework or more advanced tail-risk portfolio allocation frameworks to include different constraints that take specific investment guidelines and institutional features into account.
## PORTFOLIO CONSTRAINTS COMMONLY USED IN PRACTICE

Institutional features and investment policy specifications often lead to more complicated requirements than simple minimization of risk (whatever the definition of risk may be) or maximization of expected portfolio return. For instance, there can be constraints that limit the number of trades, the exposure to a specific industry, or the number of stocks to be kept in the portfolio. Some of these constraints are imposed by the clients, while others are imposed by regulators. For example, in the case of regulated investment companies, restrictions on asset allocation are set forth in the prospectus and may be changed only with the approval of the fund's board of directors. Pension funds must comply with Employee Retirement Income Security Act (ERISA) requirements. The objective of the portfolio optimization problem can also be modified to consider specifically the trade-off between risk and return, transactions costs, or taxes.


In this section, we will take a single-period view of investing, in the sense that the goal of the portfolio allocation procedure will be to invest optimally over a single predetermined period of interest, such as one month. We will use  $\mathbf{w}_0$  to denote the vector array of stock weights in the portfolio at the beginning of the period, and  $\mathbf{w}$  to denote the weights at the end of the period (to be determined).

Many investment companies, especially institutional investors, have a long investment horizon. However, in reality, they treat that horizon as a sequence of shorter period horizons. Risk budgets are often stated over a time period of a year, and return performance is monitored quarterly or monthly.

## Long-Only (No-Short-Selling) Constraints

## Holding Constraints

Diversification principles argue against investing a large proportion of the portfolio in a single asset, or having a large concentration of assets in a specific industry, sector, or country. Limits on the holdings of a specific stock can be imposed with the constraints

$$
1 \leq w \leq u
$$ where  $\mathbf{l}$  and  $\mathbf{u}$  are vectors of lower and upper bounds of the holdings of each stock in the portfolio.


Consider now a portfolio of 10 stocks. Suppose that the issuers of assets 1, 3, and 5 are in the same industry, and that we would like to limit the portfolio exposure to that industry to be at least  $20\%$  but at most  $40\%$ . To limit exposure to that industry, we add the constraint


$$
0.20 \leq w_{1} + w_{3} + w_{5} \leq 0.40
$$ to the portfolio allocation optimization problem.


More generally, if we have a specific set of stocks  $I_{j}$  out of the investment universe  $I$  consisting of stocks in the same category (such as industry or country), we can write the constraint

$$
L_{j} \leq \sum_{j \in I_{j}} w_{j} \leq U_{j}
$$

In words, this constraint requires that the sum of all stock weights in the particular category of investments with indexes  $I_{j}$  is greater than or equal to a lower bound  $L_{j}$  and less than or equal to a maximum exposure of  $U_{j}$ .

## Turnover Constraints

## Risk Factor Constraints

In practice, it is very common for quantitatively oriented portfolio managers to use factor models to control for risk exposures to different risk factors. Such risk factors could include the market return, size, and style. Let us assume that the return on stock  $i$  has a factor structure with  $K$  risk factors, that is, it can be expressed through the equality

$$ r_{i} = \alpha_{i} + \sum_{k = 1}^{K} \beta_{i k} \cdot f_{k} + \varepsilon_{i}
$$

The factors  $f_{k}$  are common to all securities. The coefficient  $\beta_{ik}$  in front of each factor  $f_{k}$  shows the sensitivity of the return on stock  $i$  to factor  $k$ . The value of  $\alpha_{i}$  shows the expected excess return of the return on stock  $i$ , and  $\varepsilon_{i}$  is the idiosyncratic (called "nonsystematic") part of the return of stock  $i$ . The coefficients  $\alpha_{i}$  and  $\beta_{ik}$  are typically estimated by multiple regression analysis.

To limit the exposure of a portfolio of  $N$  stocks to the  $k$ th risk factor, we impose the constraint

$$
\sum_{i = 1}^{N} \beta_{i k} \cdot w_{i} \leq U_{k}
$$

To understand this constraint, note that the total return on the portfolio can be written as

$$
\begin{array}{l} \sum_{i = 1}^{N} w_{i} \cdot r_{i} = \sum_{i = 1}^{N} w_{i} \cdot \left(\alpha_{i} + \sum_{k = 1}^{K} \beta_{i k} \cdot f_{k} + \varepsilon_{i}\right) \\ = \sum_{i = 1}^{N} w_{i} \cdot \alpha_{i} + \sum_{i = 1}^{N} \left(w_{i} \cdot \left(\sum_{k = 1}^{K} \beta_{i k} \cdot f_{k}\right)\right) \\ + \sum_{i = 1}^{N} w_{i} \cdot \varepsilon_{i} \\ \end{array}
$$

The sensitivity of the portfolio to the different factors is represented by the second term, which can be also written as

$$
\sum_{k = 1}^{K} \left(\left(\sum_{i = 1}^{N} w_{i} \cdot \beta_{i k}\right) \cdot f_{k}\right)
$$

Therefore, the exposure to a particular factor  $k$  is the coefficient in front of  $f_{k}$ , that is,

$$
\sum_{i = 1}^{N} \boldsymbol {\beta}_{i k} \cdot \boldsymbol {w}_{i}
$$

On an intuitive level, the sensitivity of the portfolio to a factor  $k$  will be larger than the larger the presence of factor  $k$  in the portfolio through the exposure of the individual stocks. Thus, when we compute the total exposure of the portfolio to factor  $k$ , we need to take into consideration both how important this factor is for determining the return on each of the securities in the portfolio, and how much of each security we have in the portfolio.

A commonly used version of the maximum factor exposure constraint is

$$
\sum_{i = 1}^{N} \boldsymbol {\beta}_{i k} \cdot \boldsymbol {w}_{i} = 0
$$

This constraint forces the portfolio optimization algorithm to find portfolio weights so that the overall risk exposure to factor  $k$  is 0, that is, so that the portfolio is neutral with respect to changes in factor  $k$ . Portfolio allocation strategies that claim to be "market-neutral" typically employ this constraint, and the factor is in fact the return on the market.

## Cardinality Constraints

## Minimum Holding and Transaction Size Constraints

Cardinality constraints are often used in conjunction with minimum holding/trading constraints. The latter set a minimum limit on the amount of a stock that can be held in the portfolio, or the amount of a stock that can be traded, effectively eliminating small trades. Both cardinality and minimum holding/trading constraints aim to reduce the amount of transaction costs.

Threshold constraints on the amount of stock  $i$  to be held in the portfolio can be imposed with the constraint

$$
| w_{i} | \geq L_{i} \cdot \delta_{i}
$$ where  $L_{i}$  is the smallest holding size allowed for stock  $i$ , and  $\delta_{i}$  is a binary variable, analogous to the binary variables  $\delta_{i}$  defined in the previous section—it equals 1 if stock  $i$  is included in the portfolio, and 0 otherwise. (All additional constraints relating  $\delta_{i}$  and  $w_{i}$  described in the previous section still apply.)


Similarly, constraints can be imposed on the minimum trading amount for stock  $i$ . As we ex plained earlier in this section, the size of the trade for stock  $i$  is determined by the absolute value of the difference between the current weight of the stock,  $w_{0,i}$ , and the new weight  $w_{i}$  that will be found by the solver:  $|w_{i} - w_{0,i}|$ . The minimum trading size constraint formulation is


$$
\left| w_{i} - w_{0, i} \right| \geq L_{i}^{\text{tr ad e}} \cdot \delta_{i}
$$ where  $L_{i}^{\mathrm{trade}}$  is the smallest trading size allowed for stock  $i$ .


Adding binary variables to an optimization problem makes the problem more difficult for the solver and can increase the computation time substantially. That is why in practice, portfolio managers often omit minimum holding and transaction size constraints from the optimization problem formulation, selecting instead to eliminate weights and/or trades that appear too small manually, after the optimal portfolio is determined by the optimization solver. It is important to realize, however, that modifying the optimal solution for the simpler portfolio allocation problem (the optimal solution in this case is the weights/trades for the different stocks) by eliminating small positions manually does not necessarily produce the optimal solution to an optimization problem that contained the minimum holding and transaction size constraints from the beginning. In fact, there can be pathological cases in which the solution is very different from the true optimal solution. However, for most cases in practice, the small manual adjustments to the optimal portfolio allocation do not cause tremendous discrepancies or inconsistencies.

## Round Lot Constraints

## BENCHMARK EXPOSURE AND TRACKING ERROR MINIMIZATION

Expected portfolio return maximization under the mean-variance framework or other risk measure minimization are examples of active investment strategies, that is, strategies that identify a universe of attractive investments and ignore inferior investments opportunities. A different approach, referred to as a passive investment strategy, argues that in the absence of any superior forecasting ability, investors might as well resign themselves to the fact that they cannot beat the market. From a theoretical perspective, the analytics of portfolio theory tell them to hold a broadly diversified portfolio anyway. Many mutual funds are managed relative to a particular benchmark or stock universe, such as the S&P 500 or the Russell 1000. The portfolio allocation models are then formulated in such a way that the tracking error relative to the benchmark is kept small.


## Standard Definition of Tracking Error

## Alternative Ways of Defining Tracking Error

There are alternative ways in which tracking-error type constraints can be imposed.

For example, we may require that the absolute deviations of the portfolio weights  $(\mathbf{w})$  from the index weights  $(\mathbf{w}_b)$  are less than or equal to a given vector array of upper bounds  $\mathbf{u}$ :


$$
\left| \mathbf {w} - \mathbf {w}_{b} \right| \leq \mathbf {u}
$$ where the absolute values  $|.|$  for the vector differences are taken componentwise, that is, for pairs of corresponding elements from the two vector arrays. These constraints can be stated as linear constraints by rewriting them as


$$
\begin{array}{l} \mathbf {w} - \mathbf {w}_{b} \leq \mathbf {u} \\ - \left(\mathbf {w} - \mathbf {w}_{b}\right) \leq \mathbf {u} \\ \end{array}
$$

Similarly, we can require that for stocks within a specific industry (whose indexes in the portfolio belong to a subset  $I_{j}$  of the investment universe  $I$ ), the total tracking error is less than a given upper bound  $U_{j}$ :

$$
\sum_{j \in I_{j}} \left(w_{j} - w_{b, j}\right) \leq U_{j}
$$

Finally, tracking error can be expressed through risk measures other than the absolute deviations or the variance of the deviations from the benchmark. Rockafellar and Uryasev (2000) suggest using conditional value-at-risk (CVaR) to manage the tracking error. Conditional value-at-risk measures the average loss that can happen with probability less than some small probability, that is, the average loss in the tail of the distribution of portfolio losses. (Using CVaR as a risk measure results in computationally tractable optimization formulations for portfolio allocation, as long as the data are presented in the form of scenarios.) We provide below a formulation that is somewhat different from Rockafellar and Uryasev, but preserves the main idea.

Suppose that we are given  $S$  scenarios for the return of a benchmark portfolio (or an instrument we are trying to replicate),  $b_{s}, s = 1, \ldots, S$ . These scenarios can be generated by simulation or taken from historical data. We also have  $N$  stocks with returns  $r_{i}^{(s)} (i = 1, \ldots, N, s = 1, \ldots, S)$  in each scenario. The value of the portfolio in scenario  $s$  is

$$
\sum_{i = 1}^{N} r_{i}^{(s)} \cdot w_{i}
$$ or, equivalently,  $(\mathbf{r}^{(s)})'\mathbf{w}$ , where  $\mathbf{r}^{(s)}$  is the vector of returns for the  $N$  stocks in scenario  $s$ . Consider the differences between the return on the benchmark and the return on the portfolio,


$$ b_{s} - \left(\mathbf {r}^{(s)}\right)^{\prime} \mathbf {w} = - \left(\left(\mathbf {r}^{(s)}\right)^{\prime} \mathbf {w} - b_{s}\right)
$$

If this difference is positive, we have a loss; if the difference is negative, we have a gain; both gains and losses are computed relative to the benchmark. Rationally, the portfolio manager should not worry about differences that are negative; the only cause for concern would be if the portfolio underperforms the benchmark, which would result in a positive difference. Thus, it is not necessary to limit the variance of the deviations of the portfolio returns from the benchmark, which penalizes for positive and negative deviations equally. Instead, we can impose a limit on the amount of loss we are willing to tolerate in terms of the CVaR of the distribution of losses relative to the benchmark.

The tracking error constraint in terms of the CVaR can be stated as the following set of constraints:

$$
\xi + \frac{1}{\lfloor \varepsilon \cdot S \rfloor} \cdot \sum_{s = 1}^{S} y_{s} \leq U_{\mathrm{TE}}
$$

$$ y_{s} \geq - \left(\left(\mathbf {r}^{(s)}\right)^{\prime} \mathbf {w} - b_{s}\right) - \xi , \quad s = 1, \dots , S
$$

$$ y_{s} \geq 0, s = 1, \dots , S
$$ where  $U_{\mathrm{TE}}$  is the upper bound on the negative deviations.


This formulation of tracking error is appealing in two ways. First, it treats positive and negative deviations relative to the benchmark differently, which agrees with the strategy of an investor seeking to maximize returns overall. Second, it results in a linear set of constraints, which are easy to handle computationally, in contrast to the first formulation of the tracking error constraint in this section, which results in a quadratic constraint.

## Actual Versus Predicted Tracking Error

## INCORPORATING
TRANSACTION COSTS

Transaction costs can be generally divided into two categories: (1) explicit such as bid-ask spreads, commissions, and fees, and (2) implicit such as price movement risk costs and market impact costs. Price movement risk costs are the costs resulting from the potential for a change in market price between the time the decision to trade is made and the time the trade is actually executed. Market impact is the effect a trader has on the market price of an asset when it sells or buys the asset. It is the extent to which the price moves up or down in response to the trader's actions. For example, a trader who tries to sell a large number of shares of a particular stock may drive down the stock's market price.

The typical portfolio allocation models are built on top of one or several forecasting models for expected returns and risk. Small changes in these forecasts can result in reallocations that would not occur if transaction costs are taken into account. In practice, the effect of transaction costs on portfolio performance is far from insignificant. If transaction costs are not taken into consideration in allocation and rebalancing decisions, they can lead to poor portfolio performance.

This section describes some common transaction cost models for portfolio rebalancing. We use the mean-variance framework as the basis for describing the different approaches. However, it is straightforward to extend the transaction cost models into other portfolio allocation frameworks.


The earliest, and most widely used, model for transaction costs is the mean-variance risk-aversion formulation with transaction costs. The optimization problem has the following objective function:

$$
\max_{\mathbf {w}} \mathbf {w}^{\prime} \boldsymbol {\mu} - \lambda \cdot \mathbf {w}^{\prime} \boldsymbol {\Sigma} \mathbf {w} - \lambda_{\mathrm{TC}} \cdot \mathrm{TC}
$$ where TC is a transaction cost penalty function and  $\lambda_{\mathrm{TC}}$  is the transaction cost aversion parameter. In other words, the objective is to maximize the expected portfolio return less the cost of risk and transaction costs. We can imagine that as the transaction costs increase, at some point it becomes optimal to keep the current portfolio rather than to rebalance. Variations of this formulation exist. For example, it is common to maximize expected portfolio return minus transaction costs, and to impose limits on the risk as a constraint (i.e., to move the second term in the objective function to the constraints).


Transaction costs models can involve complicated nonlinear functions. Although software exists for general nonlinear optimization problems, the computational time required for solving such problems is often too long for realistic investment applications, and the quality of the solution is not guaranteed. In practice, an observed complicated nonlinear transaction costs function is often approximated with a computationally tractable function that is assumed to be separable in the portfolio weights, that is, it is often assumed that the transaction costs for each individual stock are independent of the transaction costs for another stock. For the rest of this section, we will denote the individual cost function for stock  $i$  by  $\mathrm{TC}_i$ .

Next, we explain several widely used models for the transaction cost function.

## Linear Transaction Costs

## Piecewise-Linear Transaction Costs

Taking the model in the previous section a step further, we can introduce piecewise-linear approximations to transaction cost function models. This kind of function is more realistic than the linear cost function, especially for large trades. As the trading size increases, it becomes increasingly more costly to trade because of the market impact of the trade.

An example of a piecewise-linear function of transaction costs for a trade of size  $t$  of a particular security is illustrated in Figure 1. The transaction cost function in the graph assumes that the rate of increase of transaction costs (reflected in the slope of the function) changes at certain threshold points. For example, it is smaller in the range 0 to  $15\%$  of daily volume than in the range  $15\%$  to  $40\%$  of daily volume (or some other trading volume index). Mathematically, the transaction cost function in Figure 1 can be expressed as

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/cfb463a1-2282-4dad-842c-22b6b264a8a9/18aeebd490294e48492b2bd91ea118ebe2726248da15320af553a29377e89f40.jpg)
Figure 1 Example of Modeling Transaction Costs (TC) as a Piecewise-Linear Function of Trade Size  $t$


$$
\begin{array}{l} \operatorname{TC} (t) = \\ \left\{ \begin{array}{l l} s_{1} t, & 0 \leq t \leq 0.15 \cdot \operatorname{Vo l} \\ s_{1} (0.15 \cdot \operatorname{Vo l}) + s_{2} (t - 0.15 \cdot \operatorname{Vo l}), & 0.15 \cdot \operatorname{Vo l} \leq t \leq 0.40 \cdot \operatorname{Vo l} \\ s_{1} (0.15 \cdot \operatorname{Vo l}) + s_{2} (0.25 \cdot \operatorname{Vo l}) & 0.40 \cdot \operatorname{Vo l} \leq t \leq 0.50 \cdot \operatorname{Vo l} \\ + s_{3} (t - 0.40 \cdot \operatorname{Vo l}), & \end{array} \right. \\ \end{array}
$$ where  $s_1, s_2, s_3$  are the slopes of the three linear segments on the graph. (They are given data.)


To include piecewise-linear functions for transaction costs in the objective function of a mean-variance (or any general mean-risk) portfolio optimization problem, we need to introduce new decision variables that correspond to the number of pieces in the piecewise-linear approximation of the transaction cost function (in this case, there are three linear segments, so we introduce variables  $z_{1},z_{2},z_{3})$  .We write the penalty term in the objective function for an individual stock as


$$
\lambda_{\mathrm{TC}} \cdot \left(s_{1} \cdot z_{1} + s_{2} \cdot z_{2} + s_{3} \cdot z_{3}\right)
$$

If there are  $N$  stocks in the portfolio, the total transaction cost will be the sum of the transaction costs for each individual stock, that is, the penalty term that involves transaction costs in the objective function becomes

$$
- \lambda_{\mathrm{TC}} \sum_{i = 1}^{N} \left(s_{1, i} \cdot z_{1, i} + s_{2, i} \cdot z_{2, i} + s_{3, i} \cdot z_{3, i}\right)
$$

In addition, we specify the following constraints on the new decision variables:

$$
\begin{array}{l} 0 \leq z_{1, i} \leq 0.15 \cdot \operatorname{Vo l}_{i} \\ 0 \leq z_{2, i} \leq 0.25 \cdot \operatorname{Vo l}_{i} \\ 0 \leq z_{3, i} \leq 0.10 \cdot \operatorname{Vo l}_{i} \\ \end{array}
$$ the optimizer would never set  $z_{3,i}$  to a number greater than 0 unless both  $z_{1,i}$  and  $z_{2,i}$  are at their upper bounds. So, this set of constraints allows us to compute the amount of transaction costs incurred in the trading of stock  $i$  as  $z_{1,i} + z_{2,i} + z_{3,i}$ .

Note that because of the increasing slopes of the linear segments and the goal of making that term as small as possible in the objective function, the optimizer will never set the decision variable corresponding to the second segment,  $z_{2,i}$ , to a number greater than 0 unless the decision variable corresponding to the first segment,  $z_{1,i}$ , is at its upper bound. Similarly,


Of course, we also need to link the amount of transaction costs incurred in the trading of stock  $i$  to the optimal portfolio allocation. This can be done by adding a few more variables and constraints. We introduce variables  $y_{i}$ , one for each stock in the portfolio, that would represent the amount traded (but not the direction of the trade) and would be nonnegative. Then, we require that

$$ y_{i} = z_{1, i} + z_{2, i} + z_{3, i} \quad \text{fo re ac hs to ck} i,
$$ and also that  $y_{i}$  equals the change in the portfolio position of stock  $i$ . The latter condition can be imposed by writing the constraint


$$ y_{i} = \left| w_{i} - w_{0, i} \right|
$$ where  $w_{0,i}$  and  $w_{i}$  are the initial and the final amount of stock  $i$  in the portfolio, respectively.


Despite their apparent complexity, piecewise-linear approximations for transaction costs are very solver-friendly, and save time (relative to nonlinear models) in the actual portfolio optimization. Although modeling transaction costs this way requires introducing new decision variables and constraints, the increase in the dimension of the portfolio optimization problem does not affect significantly the running time or the performance of the optimization solver, because the problem formulation is easy from a computational perspective.

## Quadratic Transaction Costs

## Fixed Transaction Costs

In some cases, we need to model fixed transaction costs. Those are costs that are incurred independently of the amount traded. To include such costs in the portfolio optimization problem, we need to introduce binary variables  $\delta_1,\ldots ,\delta_N$  corresponding to each stock, where  $\delta_{i}$  equals 0 if the amount traded of stock  $i$  is 0, and 1 otherwise. The idea is similar to the idea we used to model the requirement that only a given number of stocks can be included in the portfolio.

Suppose the fixed transaction cost is  $a_{i}$  for stock  $i$ . Then, the transaction cost function is

$$
\mathrm{TC}_{i} = a_{i} \cdot \delta_{i}
$$

The objective function formulation is then

$$
\max_{\mathbf {w}, \delta} \mathbf {w}^{\prime} \boldsymbol {\mu} - \lambda \cdot \mathbf {w}^{\prime} \boldsymbol {\Sigma} \mathbf {w} - \lambda_{\mathrm{TC}} \cdot \sum_{i = 1}^{N} a_{i} \cdot \delta_{i}
$$ and we need to add the following constraints to make sure that the binary variables are linked to the trades  $|w_{i} - w_{0,i}|$ :


$$
\left| w_{i} - w_{0, i} \right| \leq M \cdot \delta_{i}, \quad i = 1, \dots , N,
$$

$\delta_{i}$  binary where  $M$  is a "large" constant. When the trading size  $|w_{i} - w_{0,i}|$  is nonzero,  $\delta_{i}$  will be forced to be 1. When the trading size is 0, then  $\delta_{i}$  can be either 0 or 1, but the optimizer will set it to 0, since it will try to make its value the minimum possible in the objective function.


Of course, combinations of different trading cost models can be used in practice. For example, if the trade involves both a fixed and a variable quadratic transaction cost, then we could use a transaction cost function of the kind


$$
\mathrm{TC}_{i} (t) = a_{i} \cdot \delta_{i} + c_{i} \cdot | t | + d_{i} \cdot | t |^{2}
$$

The important takeaway from this section is that when transaction costs are included in the portfolio rebalancing problem, the result is a reduced amount of trading and rebalancing, and a different portfolio allocation than the one that would be obtained if transaction costs are not taken into consideration.

## INCORPORATING TAXES

## MULTIACCOUNT OPTIMIZATION

Portfolio managers who handle multiple accounts face an important practical issue. When individual clients' portfolios are managed, portfolio managers incorporate their clients' preferences and constraints. However, on any given trading day, the necessary trades for multiple diverse accounts are pooled and executed simultaneously. Moreover, typically trades may not be crossed, that is, it is not simply permissible to transfer an asset that should be sold on behalf of one client into the account of another client for whom the asset should be bought.[16] The trades should be executed in the market. Thus, each client's trades implicitly impact the results for the other clients: The market impact of the combined trades may be such that the benefits sought for individual accounts through trading are lost due to increased overall transaction costs. A robust multiaccount management process should ensure accurate accounting and fair distribution of transaction costs among the individual accounts.

One possibility to handle the effect of trading in multiple accounts is to use an iterative process, in which at each iteration the market impact of the trades in previous iterations is taken into account. $^{17}$  More precisely, single clients' accounts are optimized as usual, and once the optimal allocations are obtained, the portfolio manager aggregates the trades and computes the actual marginal transaction costs based on the aggregate level of trading. The portfolio manager then reoptimizes individual accounts using these marginal transaction costs, and aggregates the resulting trades again to compute new marginal transaction costs, and so on. The advantage of this approach is that little needs to be changed in the way individual accounts are typically handled, so the existing single-account optimization and management infrastructure can be reused. The disadvantage is that most generally, this iterative approach does not guarantee a convergence (or its convergence may be slow) to a "fair equilibrium," in which clients' portfolios receive an unbiased treatment with respect to the size and the constraint structure of their accounts. $^{18}$  The latter equilibrium is the one that would be attained if all clients traded independently and competitively in the market for liquidity, and it is thus the correct and fair solution to the aggregate trading problem.


An alternative, more comprehensive approach is to optimize trades across all accounts simultaneously. O'Cinneide, Scherer, and Xu (2006) describe such a model and show that it attains the fair equilibrium we mentioned above.[19] Assume that client  $k$ 's utility function is given by  $u_{k}$  and is in the form of a dollar return penalized for risk. Assume also that a transaction cost model  $\tau$  gives the cost of trading in dollars, and that  $\tau$  is a convex increasing function.[20] Its exact form will depend on the details of how trading is implemented. Let  $\mathbf{t}$  be the vector of trades. It will typically have the form  $(t_1^+, \dots, t_N^+, t_1^-, \dots, t_N^-)$ , that is, it will specify the aggregate buys  $t_i^+$  and the aggregate sells  $t_i^-$  for each asset  $i = 1, \dots, N$ , but it may also incorporate information about how the trade could be carried out.[21]

The multiaccount optimization problem can be formulated as

$$
\begin{array}{l} \max_{\mathbf {w}_{1}, \dots , \mathbf {w}_{K}, \mathbf {t}} E \left[ u_{1} \left(\mathbf {w}_{1}\right) \right] + \dots + E \left[ u_{K} \left(\mathbf {w}_{K}\right) \right] - \tau (\mathbf {t}) \\ \begin{array}{l} \text{s .t .} \quad \mathbf {w}_{k} \in C_{k}, k = 1, \dots , K \end{array} \\ \end{array}
$$ where  $\mathbf{w}_k$  is the  $N$ -dimensional vector of asset holdings (or weights) of client  $k$ , and  $C_k$  is the collection of constraints on the portfolio structure of client  $k$ . The objective can be interpreted as maximization of net expected utility, that is, as maximization of the expected dollar return penalized for risk and net of transaction costs.


The problem can be simplified by making some reasonable assumptions. For example, it can be assumed that the transaction cost function  $\tau$  is additive across different assets, that is, that trades in one asset do not influence trading costs in another. In such a case, the trading cost function can be split into more manageable terms, that is,

$$
\tau (\mathbf {t}) = \sum_{i = 1}^{N} \tau_{i} \left(t_{i}^{+}, t_{i}^{-}\right)
$$ where  $\tau_{i}(t_{i}^{+},t_{i}^{-})$  is the cost of trading asset  $i$  as a function of the aggregate buys and sells of that asset. Splitting the terms  $\tau_{i}(t_{i}^{+},t_{i}^{-})$  further into separate costs of buying and selling, however, is not a reasonable assumption, because simultaneous buying and selling of an asset tends to have an offsetting effect on its price.


To formulate the problem completely, let  $\mathbf{w}_k^0$  be the vector of original holdings (or weights) of client  $k$ 's portfolio,  $\mathbf{w}_k$  be the vector of decision variables for the optimal holdings (or weights) of client  $k$ 's portfolio, and  $\eta_{k,i}$  be constants that convert the holdings (or weight) of each asset  $i$  in client  $i$ 's portfolio  $w_{k,i}$  to dollars, that is,  $\eta_{k,i}w_{k,i}$  is client  $k$ 's dollar holdings of asset  $i$ .22 We also introduce new variables  $\mathbf{w}_k^+$  to represent the an upper bound on the weight of each asset client  $k$  will buy:

$$ w_{k, i} - w_{k, i}^{0} \leq w_{k, i}^{+}, \quad i = 1, \dots , N, k = 1, \dots , K
$$

The aggregate amount of asset  $i$  bought for all clients can then be computed as

$$ t_{i}^{+} = \sum_{k = 1}^{K} \eta_{k, i} \cdot w_{k, i}^{+}
$$

The aggregate amount of asset  $i$  sold for all clients can be easily expressed by noticing that the difference between the amounts bought and sold of each asset are exactly equal to the total amount of trades needed to get from the original position  $w_{k,i}^{0}$  to the final position  $w_{k,i}$  of that asset.[23]

$$ t_{i}^{+} - t_{i}^{-} = \sum_{k = 1}^{K} \eta_{k, i} \cdot \left(w_{k, i} - w_{k, i}^{0}\right)
$$

Here  $t_i^+$  and  $t_i^-$  are nonnegative variables.

The multiaccount optimization problem then takes the form

$$
\max_{\mathbf {w}_{1}, \dots , \mathbf {w}_{K}, \mathbf {t}^{+}, \mathbf {t}^{-}} E [ u_{1} (\mathbf {w}_{1}) ] + \dots + E [ u_{K} (\mathbf {w}_{K}) ] - \sum_{i = 1}^{N} \tau_{i} (t_{i}^{+}, t_{i}^{-})
$$

$$
\begin{array}{l} s. t. \quad \mathbf {w}_{k} \in C_{k}, k = 1, \dots , K \\ w_{k, i} - w_{k, i}^{0} \leq w_{k, i}^{+}, i = 1, \dots , N, k = 1, \dots , K \\ t_{i}^{+} = \sum_{k = 1}^{K} \eta_{k, i} w_{k, i}^{+}, i = 1, \dots , N \\ t_{i}^{+} - t_{i}^{-} = \sum_{k = 1}^{K} \eta_{k, i} \cdot \left(w_{k, i} - w_{k, i}^{0}\right), i = 1, \dots , N \\ t_{i}^{+} \geq 0, t_{i}^{-} \geq 0, w_{k, i}^{+} \geq 0, i = 1, \dots , N, k = 1, \dots , K \\ \end{array}
$$

O'Cinneide, Scherer, and Xu (2006) studied the behavior of the model in simulated experiments with a simple model for the transaction cost function, namely, one in which

$$
\tau (t) = \theta \cdot t^{\gamma}
$$ where  $t$  is the trade size, and  $\theta$  and  $\gamma$  are constants satisfying  $\theta \geq 0$  and  $\gamma \geq 1$ .  $\theta$  and  $\gamma$  are specified in advance and calibrated to fit observed trading costs in the market. The transaction costs for each client  $k$  can therefore be expressed as


$$
\tau_{k} = \theta \sum_{i = 1}^{N} \left| w_{k, i} - w_{k, i}^{0} \right|^{\gamma}
$$

O'Cinneide, Scherer, and Xu (2006) observed that key portfolio performance measures, such as the information ratio (IR),[25] turnover, and total transaction costs, change under this model relative to the traditional approach. Not surprisingly, the turnover and the net information ratios of the portfolios obtained with multiaccount optimization are lower than those obtained with single-account optimization under the assumption that accounts are traded separately, while transaction costs are higher. These results are in fact more realistic, and they are a better representation of the postoptimization performance of multiple client accounts in practice.


## ROBUST PARAMETER ESTIMATION

## PORTFOLIO RESAMPLING

## ROBUST PORTFOLIO OPTIMIZATION

Another way in which uncertainty about the inputs can be modeled is by incorporating it directly into the optimization process. Robust optimization is an intuitive and efficient way to deal with uncertainty. Robust portfolio optimization does not use the traditional forecasts, such as expected returns and covariances, but rather uncertainty sets containing these point estimates. An example of such an uncertainty set is a confidence interval around the forecast for each expected return ("alpha"). This uncertainty shape looks like a "box" in the space of the input parameters. (See Figure 2(A).) We can also formulate advanced uncertainty sets that incorporate more knowledge about the estimation error. For instance, a widely used uncertainty set is the ellipsoidal uncertainty set, which takes into consideration the covariance structure of the estimation errors. (See Figure 2(B).) We will see examples of both uncertainty sets in this section.

The robust optimization procedure for portfolio allocation is as follows. First, we specify the uncertainty sets around the input parameters in the problem. Then, we ask what the optimal portfolio allocation is when the input parameters take the worst possible value inside these uncertainty sets. In effect, we solve an inner problem that determines the worst possible realization of the uncertain parameters over

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/cfb463a1-2282-4dad-842c-22b6b264a8a9/df4995524704871a6676c519107654e4652ed67201e7232c3d2d42f048f2cb78.jpg)
(A)
Figure 2 (A) Box Uncertainty Set in Three Dimensions; (B) Ellipsoidal Uncertainty Set in Three Dimensions

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/cfb463a1-2282-4dad-842c-22b6b264a8a9/5625d5521c42c18df4ea73670ba2ac56bfdfc96aea468a17209eef6e20ebf201.jpg)
(B) the uncertainty set before we solve the original problem of optimal portfolio allocation.


Let us give a specific example of how the robust optimization framework can be applied in the portfolio optimization context. Consider the utility function formulation of the mean-variance portfolio allocation problem:

$$
\max_{\mathbf {w}} \quad \mathbf {w}^{\prime} \boldsymbol {\mu} - \lambda \cdot \mathbf {w}^{\prime} \boldsymbol {\Sigma} \mathbf {w}
$$

$$
\begin{array}{c c} \text{s .t .} & \mathbf {w}^{\prime} \iota = 1 \end{array}
$$

Suppose that we have estimates  $\hat{\mu}$  and  $\hat{\Sigma}$  of the vector of expected returns and the covariance matrix. Instead of the estimate  $\hat{\mu}$ , however, we will consider a set of vectors  $\mu$  that are "close" to  $\hat{\mu}$ . We define the box uncertainty set

$$
U_{\delta} (\hat {\mu}) = \left\{\mu | \mu_{i} - \hat {\mu}_{i} | \leq \delta_{i}, i = 1, \dots , N \right\}
$$

In words, the set  $U_{\delta}(\hat{\mathbf{u}})$  contains all vectors  $\boldsymbol {\mu} = (\mu_1,\dots ,\mu_N)$  such that each component  $\mu_{i}$  is in the interval  $[\hat{\mu}_i - \delta_i,\hat{\mu}_i + \delta_i]$ . We then solve the following problem:

$$
\max_{\mathbf {w}} \left\{\min_{\mu \in U_{0} (\hat {\boldsymbol {\mu}})} \left\{\boldsymbol {\mu}^{\prime} \mathbf {w} \right\} - \boldsymbol {\lambda} \cdot \mathbf {w}^{\prime} \boldsymbol {\Sigma} \mathbf {w} \right\} \quad \mathrm{s .t .} \quad \mathbf {w}^{\prime} \iota = 1
$$

This is called the robust counterpart of the original problem. It is a max-min problem that searches for the optimal portfolio weights when the estimates of the uncertain returns take their worst-case values within the prespecified uncertainty set in the sense that the value of the objective function is the worst it can be over all possible values for the expected returns in the uncertainty set.

It can be shown that the max-min problem above is equivalent to the following problem

$$
\max_{\mathbf {w}} \quad \mathbf {w}^{\prime} \boldsymbol {\mu} - \delta^{\prime} | \mathbf {w} | - \lambda \cdot \mathbf {w}^{\prime} \boldsymbol {\Sigma} \mathbf {w}
$$

$$
\begin{array}{c c} \text{s .t .} & \mathbf {w}^{\prime} \iota = 1 \end{array}
$$ where  $|\mathbf{w}|$  denotes the absolute value of the entries of the vector of weights  $\mathbf{w}$ . To gain some intuition, notice that if the weight of stock  $i$  in the portfolio is negative, the worst-case expected return for stock  $i$  is  $\mu_{i} + \delta_{i}$  (we lose the largest amount possible). If the weight of stock  $i$  in the portfolio is positive, then the worst-case expected return for stock  $i$  is  $\mu_{i} - \delta_{i}$  (we gain the smallest amount possible). Observe that  $\mu_{i}w_{i} - \delta_{i}|w_{i}|$  equals  $(\mu_{i} - \delta_{i})w_{i}$  if the weight  $w_{i}$  is positive and  $(\mu_{i} + \delta_{i})w_{i}$  if the weight  $w_{i}$  is


negative. Hence, the mathematical expression in the objective agrees with our intuition: It minimizes the worst-case expected portfolio return. In this robust version of the mean-variance formulation, stocks whose mean return estimates are less accurate (i.e., have a larger estimation error  $\delta_{i}$ ) are therefore penalized in the objective function and will tend to have a smaller weight in the optimal portfolio allocation.

This optimization problem has the same computational complexity as the nonrobust mean-variance formulation—namely, it can be stated as a quadratic optimization problem. The latter can be achieved by using a standard trick that allows us to get rid of the absolute values for the weights. The idea is to introduce an  $N$ -dimensional vector of additional variables  $\psi$  to replace the absolute values  $|\mathbf{w}|$ , and to write an equivalent version of the optimization problem,

$$
\max_{\mathbf {w}, \boldsymbol {\psi}} \quad \mathbf {w}^{\prime} \hat {\boldsymbol {\mu}} - \delta^{\prime} \boldsymbol {\psi} - \lambda \cdot \mathbf {w}^{\prime} \boldsymbol {\Sigma} \mathbf {w}
$$

$$
\begin{array}{l l} \text{s .t .} & \mathbf {w}^{\prime} \iota = 1 \end{array}
$$

$$
\psi_{i} \geq w_{i}; \psi_{i} \geq - w_{i}, i = 1, \dots , N
$$

Therefore, incorporating considerations about the uncertainty in the estimates of the expected returns in this example has virtually no computational cost.

We can view the effect of this particular "robustification" of the mean-variance portfolio optimization formulation in two different ways. On the one hand, we can see that the values of the expected returns for the different stocks have been adjusted downward in the objective function of the optimization problem. The robust optimization model "shrinks" the expected return of stocks with large estimation error, that is, in this case the robust formulation is related to statistical shrinkage methods, which we introduced earlier in this entry. On the other hand, we can interpret the additional term in the objective function as a "risk-like" term that represents penalty for estimation error. The size of the penalty is determined by the investor's aversion to estimation risk and is reflected in the magnitude of the deltas.

More complicated specifications for uncertainty sets have more involved mathematical representations, but can still be selected so that they preserve an easy computational structure for the robust optimization problem. For example, we can use the ellipsoidal uncertainty set from Figure 2(B), which can be expressed mathematically as

$$
U_{\delta} (\hat {\mu}) = \left\{\mu | (\mu - \hat {\mu})^{\prime} \Sigma_{\mu}^{- 1} (\mu - \hat {\mu}) \leq \delta^{2} \right\}.
$$

Here  $\Sigma_{\mu}$  is the covariance matrix of estimation errors for the vector of expected returns  $\mu$ . This uncertainty set represents the requirement that the sum of squares (scaled by the inverse of the covariance matrix of estimation errors) between all elements in the set and the point estimates  $\hat{\mu}_1, \hat{\mu}_2, \dots, \hat{\mu}_N$  can be no larger than  $\delta^2$ . We note that this uncertainty set cannot be interpreted as individual confidence intervals around each point estimate. Instead, it captures the idea of a joint confidence region. In practical applications, the covariance matrix of estimation errors is often assumed to be diagonal. In the latter case, the set contains all vectors of expected returns that are within a certain number of standard deviations from the point estimate of the vector of expected returns, and the resulting robust portfolio optimization problem would protect the investor if the vector of expected returns is within that range.

It can be shown that the robust counterpart of the mean-variance portfolio optimization problem with an ellipsoidal uncertainty set for the expected return estimates is the following optimization problem formulation:

$$
\max_{\mathbf {w}} \quad \mathbf {w}^{\prime} \boldsymbol {\mu} - \lambda \cdot \mathbf {w}^{\prime} \boldsymbol {\Sigma} \mathbf {w} - \delta \cdot \sqrt{\mathbf {w}^{\prime} \boldsymbol {\Sigma}_{\boldsymbol {\mu}} \mathbf {w}}
$$

$$
\begin{array}{c c} \text{s .t .} & \mathbf {w}^{\prime} \iota = 1 \end{array}
$$

This is a second-order cone optimization problem and requires specialized software to solve, but the methods for solving it are very efficient.

Similarly to the case of the robust counterpart with a box uncertainty set, we can interpret the extra term in the objective function  $(\delta \cdot \sqrt{\mathbf{w}^{\prime}\Sigma_{\mu}\mathbf{w}})$  as the penalty for estimation risk, where  $\delta$  incorporates the degree of the investor's aversion to estimation risk. Note, by the way, that the covariance matrix in the estimation error penalty term,  $\Sigma_{\mu}$ , is not necessarily the same as the covariance matrix of returns  $\Sigma$ . In fact, it is not immediately obvious how  $\Sigma_{\mu}$  can be estimated from data.  $\Sigma_{\mu}$  is the covariance matrix of the errors in the estimation of the expected (average) returns. Thus, if a portfolio manager forecasts  $5\%$  active return over the next time period, but gets  $1\%$ , the manager cannot argue that there was a  $4\%$  error in the expected return—the actual error would consist of both an estimation error in the expected return and the inherent volatility in actual realized returns. In fact, critics of the approach such as Lee, Stefek, and Zhelenyak (2006) have argued that the realized returns typically have large stochastic components that dwarf the expected returns, and hence estimating  $\Sigma_{\mu}$  from data is very hard, if not impossible.


Several approximate methods for estimating  $\Sigma_{\mu}$  have been found to work well in practice. For example, Stubbs and Vance (2005) observe that simpler estimation approaches, such as using just the diagonal matrix containing the variances of the estimates (as opposed to the complete error covariance matrix), often provide most of the benefit in robust portfolio optimization. In addition, standard approaches for estimating expected returns, such as Bayesian statistics and regression-based methods, can produce estimates for the estimation error covariance matrix in the process of generating the estimates themselves.[34]

Among practitioners, the notion of robust portfolio optimization is often equated with the robust mean-variance model we discussed in this section, with the box or the ellipsoidal uncertainty sets for the expected stock returns. While robust optimization applications often involve one form or another of this model, the actual scope of robust optimization can be much broader. We note that the term robust optimization refers to the technique of incorporating information about uncertainty sets for the pa rameters in the optimization model, and not to the specific definitions of uncertainty sets or the choice of parameters to model as uncertain. For example, we can use the robust optimization methodology to incorporate considerations for uncertainty in the estimate of the covariance matrix in addition to the uncertainty in expected returns, and obtain a different robust portfolio allocation formulation. Robust optimization can be applied also to portfolio allocation models that are different from the mean-variance framework, such as Sharpe ratio optimization and value-at-risk optimization.[35] Finally, robust optimization has the potential to provide a computationally efficient way to handle portfolio optimization over multiple stages—a problem for which so far there have been few satisfactory solutions.[36] There are numerous useful robust formulations, but a complete review is beyond the scope of this entry.[37]


Is implementing robust optimization formulations worthwhile? Some tests with simulated and real market data indicate that robust optimization, when inaccuracy is assumed in the expected return estimates, outperforms classical mean-variance optimization in terms of total excess return a large percentage (70–80\%) of the time (see, for example, Ceria and Stubbs, 2006). Other tests have not been as conclusive (see, for example, Lee, Stefek, and Zhenyak, 2006). The factor that accounts for much of the difference is how the uncertainty in parameters is modeled. Therefore, finding a suitable degree of robustness and appropriate definitions of uncertainty sets can have a significant impact on portfolio performance.

Independent tests by practitioners and academics using both simulated and market data appear to confirm that robust optimization generally results in more stable portfolio weights, that is, that it eliminates the extreme corner solutions resulting from traditional mean-variance optimization. This fact has implications for portfolio rebalancing in the presence of transaction costs and taxes, as transaction costs and taxes can add substantial expenses when the portfolio is rebalanced. Depending on the particular robust formulations employed, robust mean-variance optimization also appears to improve worst-case portfolio performance and results in smoother and more consistent portfolio returns. Finally, by preventing large swings in positions, robust optimization typically makes better use of the turnover budget and risk constraints.


Robust optimization, however, is not a panacea. By using robust portfolio optimization formulations, investors are likely to trade off the optimality of their portfolio allocation in cases in which nature behaves as they predicted for protection against the risk of inaccurate estimation. Therefore, investors using the technique should not expect to do better than classical portfolio optimization when estimation errors have little impact, or when typical scenarios occur. They should, however, expect insurance in scenarios in which their estimates deviate from the actual realized values by up to the amount they have prespecified in the modeling process.

## KEY POINTS

## NOTES

1. See Chapter 1 in Maginn and Tuttle (1990).
2. Multiperiod portfolio optimization models are still rarely used in practice, not because the value of multiperiod modeling is questioned, but because such models are often too intractable from a computational perspective.


3. As the term intuitively implies, the ADV measures the total amount of a given asset traded in a day on average, where the average is taken over a prespecified time period.
4. Another computationally tractable situation for minimizing CVaR is when the data are normally distributed. In that case, minimizing CVaR is equivalent to minimizing the standard deviation of the portfolio.
5. See Chapters 8 and 9 in Pachamanova and Fabozzi (2010) for a more detailed explanation of CVaR and a derivation of the optimization formulation.
6. Versions of this model have been suggested in Pogue (1970), Schreiner (1980), Adcock and Meade (1994), Lobo, Fazel, and Boyd (2000), and Mitchell and Braun (2004).
7. Here we are thinking of  $w_{i}$  as the portfolio weights, but in fact it may be more intuitive to think of the transaction costs as a percentage of amount traded. It is easy to go back and forth between portfolio weights and portfolio amounts by simply multiplying  $w_{i}$  by the total amount in the portfolio. In fact, we can switch the whole portfolio optimization formulation around and write it in terms of allocation of dollars, instead of weights. We just need to replace the vector of weights  $\mathbf{w}$  by a vector  $\mathbf{x}$  of dollar holdings.
8. See, for example, Bertsimas, Darnell, and Soucy (1999).
9. As we explained earlier, this constraint can be written in an equivalent, more optimization solver-friendly form, namely,

$$ y_{i} \geq w_{i} - w_{0, i}
$$

$$ y_{i} \geq - \left(w_{i} - w_{0, i}\right)
$$

10. The computation of the tax basis is different for stocks and bonds. For bonds, there are special tax rules, and the original price is not the tax basis.

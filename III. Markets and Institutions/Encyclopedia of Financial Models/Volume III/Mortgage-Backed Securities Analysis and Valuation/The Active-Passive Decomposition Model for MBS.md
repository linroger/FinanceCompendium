
# The Active-Passive Decomposition Model for MBS

ALEXANDER LEVIN, PhD

Director, Financial Engineering, Andrew Davidson & Co., Inc.

Abstract: Even a simple mortgage pass-through is a path-dependent financial instrument, valuation of which depends on prepayment "burnout." The burnout is caused by observed or unobserved heterogeneity of borrowers; as a result, a mortgage pool's composition changes in the presence of refinancing incentives. An attractive modeling approach for dealing with this is to split a mortgage pool into mutually exclusive "active" and "passive" groups. Not only does such a method explain the burnout, it effectively decomposes the path-dependent valuation problem into two easy-to-solve path-independent ones. The method is faster than the traditional Monte Carlo sampling approach while delivering the full set of interest rate risk measures at no additional cost of computing time. The method can be applied to an attractive prepayment model specification where the speed is a function of the pool's objective price, and not an interest rate. This makes universal refinancing modeling feasible as the same curve or curves can apply to both fixed- and adjustable-rate mortgages.

The active-passive decomposition (APD) method of mortgage-backed securities (MBS) modeling and valuation was introduced in Levin (2001, 2002, 2003). An efficient alternative to brute-force Monte Carlo simulation, the APD method splits a mortgage pass-through into two path-independent components, the active (refinanceable) and the passive (nonrefinanceable). Once this is done, the most time-efficient pricing structures operating backwards on probability trees or finite-difference grids could be employed. This valuation method runs faster than Monte Carlo simulation while deliver- ing a much richer outcome—all stressed values required by mandatory risk assessments—at no additional cost. Risk managers and traders of unstructured mortgage instruments such as agency pass-through MBS, whole loans, stripped (IO/PO) derivatives, and mortgage servicing rights (MSRs) are immediate beneficiaries of the method.


The APD approach simulates the burnout effect in a natural and explicit way through modeling the heterogeneity of the collateral. Hence, it presents an analytical advantage over any other approach that requires ad hoc judgments about the achieved degree of burnout. Structured instruments—such as a collateralized mortgage obligation (CMO) and asset-backed security (ABS)—though they retain heavy sources of path-dependence (other than the burnout) and still rely on Monte Carlo pricing, can benefit from better, more robust prepay modeling.


The multi-population view of mortgage collateral is a known approach used to explain the burnout effect. In one of the earliest modeling attempts, Davidson (1987) and Davidson et al. (1988) proposed the refinancing threshold model, in which collateral is split into three or more American option bonds having differing strikes. A conceptually similar approach proposed by Kalotay and Young (2002) divides collateral into bonds differing by their exercise timing. Such structures naturally call for the backward induction pricing, but they fall short in replicating actually observed, probabilistically smoothed, prepayment behavior—even if many constituent bonds are used. On the other hand, analytical systems used in practice often employ multi-population mortgage models (see Hayre, 1994, 2000), but do not seek any computational benefits as they rely heavily on Monte Carlo simulation pricing anyway.

The APD is a "mortgage-like" model with refinancing S-curve, aging, and other ad hoc features, which are meant to capture nonefficient, empirical option exercise. Therefore, the APD model is capable of generating realistic prepayment behavior with only two constituent components, the active and the passive. This entry introduces an extended APD model and its applications.

# PATH-DEPENDENCE AND PRICING PARTIAL DIFFERENTIAL EQUATION

Let us consider a hypothetical dynamic asset ("mortgage") market price of which  $P(t, x)$  depends on time  $t$  and one market factor  $x$ . The latter can be formally anything and does not necessarily have to be the short market rate or the yield on the security analyzed. We treat  $x(t)$  as a random process having a (generally, variable) drift rate  $\mu$  and a volatility rate  $\sigma$ , and being disturbed by a standard Brownian motion  $z(t)$ , that is,


$$ d x = \mu d t + \sigma d z \tag {1}
$$

We assume further that the asset continuously pays the  $c(t,x)$  coupon rate and its balance  $B$  is amortized at the  $\lambda (t,x)$  rate, that is,  $\partial B / \partial t = -\lambda B$ . Then one can prove that the price function  $P(t,x)$  should solve the following partial differential equation (PDE):

$$
\begin{array}{l} \underbrace {r + O A S}_{\text{ex pe ct ed re tu rn}} = \underbrace {\frac{1}{P} \frac{\partial P}{\partial t} + \frac{1}{P} (c + \lambda) - \lambda}_{\text{ti me re tu rn}} \\ + \underbrace {\frac{1}{P} \frac{\partial P}{\partial x} \mu}_{\text{re tu rn}} + \underbrace {\frac{1}{2 P} \frac{\partial^{2} P}{\partial x^{2}} \sigma^{2}}_{\text{re tu rn}} \tag {2} \\ \end{array}
$$

A derivation of this PDE can be found in Levin (1998), but it goes back at least to Fabozzi and Fong (1994). A notable feature of the above written PDE is that it does not contain the balance variable,  $B$ . The entire effect of possibly random prepayments is represented by the amortization rate function,  $\lambda(t, x)$ . Although the total cash flow observed for each accrual period does depend on the beginning-period balance, construction of a finite-difference scheme and the backward induction will require the knowledge of  $\lambda(t, x)$ , not the balance. This observation agrees with a trivial practical rule stating that the relative price is generally independent of the investment size.

Another interesting observation comes as follows. If we transform the economy having shifted all the rates,  $r(t,x)$  and  $c(t,x)$ , by amortization rate  $\lambda (t,x)$ , then PDE (2) will be reduced to the constant-par asset's pricing PDE. It means that a probability tree or finite difference pricing grid built in the "λ-shifted" economy should, in principle, have as many dimensions as the total number of factors or state variables that affect  $r$ ,  $c$ , and  $\lambda$ . In particular, if the coupon rate is fixed, and the amortization rate  $\lambda$  depends only on current time (loan age) and the immediate market factor  $x$ , the entire valuation problem can be solved backwards on a two-dimensional  $(x, t)$  lattice. To implement this method, we would start our valuation process from maturity  $T$  when we surely know that the price is par,  $P(T, x) = 1$ , regardless the value of factor  $x$ .


Working backwards, we derive prices at age  $t - 1$  from prices already found at age  $t$ . In doing so, we replace derivatives in PDE (2) by finite difference approximations, or weigh branches of the lattice by explicitly computed probabilities. If the market is multifactor, then  $x$  should be considered a vector; the lattice will require more dimensions. Generally, the efficiency of finite-difference methods deteriorates quickly on high-dimensional grids because the number of nodes and cash flows grows geometrically; probability trees may maintain their speed, but at the cost of accuracy, if the same number of emanating nodes is used to capture multifactor dynamics. If we decide to operate on a probability tree instead of employing a finite-difference grid, then, for every branch,

$$
P_{k} = \frac{c_{k} + P_{k + 1} + \lambda_{k} (1 - P_{k + 1})}{1 + r_{k} + O A S} \tag {3}
$$ where  $P_{k}$  is the previous-node value deduced from the next-node value  $P_{k + 1}$ . Of course, probability weighting of thus obtained values applies to all emanating branches.


# EXTENDED ACTIVE-PASSIVE DECOMPOSITION MODEL

Even for a simple fixed-rate mortgage pass-through, total amortization speed  $\lambda$  cannot be modeled as a function of time and the immediate market. Prepayment burnout is a strong source of path-dependence because the future refinancing activity is affected by the past incentives. One can think of a mortgage pool as of a heterogeneous population of participants having different refinancing propensities. Some borrowers have higher rate, better credit, larger loans, or perhaps they face smaller state-enforced transaction costs. Once they leave the pool, the future prepayment activity gradually declines.


Instead of considering pricing PDE for the entire collateral, we propose decomposing it first into two components, "active" and "passive," differing in refinanceability. Under the following two conditions, mortgage path-dependent collateral can be deemed a simple portfolio of two path-independent instruments:

1. Active and passive components prepay differently, but follow the immediate market and loan age.
2. Any migration between components is prohibited.

# The Details

Here is a permissible example:

$$
\begin{array}{l} \text{Ac ti ve SM M} = \text{Re fi SM M} + \text{Tu rn ov er SM M} \\ \text{Pa ss iv eS MM} = \beta^{*} \text{Re fi SM M} + \text{Tu rn ov er SM M} \end{array} \tag {4}
$$ where RefiSMM denotes refinancing speed measured in terms of the single monthly mortality rate (SMM), TurnoverSMM is the turnover speed, and both are assumed to depend on market rates and loan age only. Parameter  $\beta$  quantifies relative refinancing activity for the passive component; it takes values between 0 and 1.


In order to find the total speed, we have to know the collateral composition. Denote  $\psi$  the ratio of active group to total, then

$$
\begin{array}{l} \lambda \equiv \text{To ta lS MM} = \psi^{*} \text{Ac ti ve SM M} \\ + (1 - \psi)^{*} \text{Pa ss iv eS MM} \tag {5} \\ \end{array}
$$

All variables are time-dependent, but we omitted subscript  $t$  for simplicity. The initial value of  $\psi$  describes the composition of collateral at origination; both  $\psi_0$  and  $\beta$  are parameters for the particular prepay model. The dynamic evolution of  $\psi$  from one time moment  $(t)$  to the next  $(t + 1)$  is as follows

$$
\psi_{t + 1} = \psi_{t} \frac{1 - A c t i v e S M M_{t}}{1 - T o t a l S M M_{t}} \tag {6}
$$

It is worth considering a few trivial special cases. First, if  $\psi$  is zero at any instance of time, it will remain zero for life. Second, if  $\psi$  is 1 at any time, then it will retain this value as well because TotalSMM is identical to ActiveSMM from equation (5). Indeed, if the mortgage pool is either totally passive ( $\psi = 0$ ) or totally active ( $\psi = 1$ ), it will retain its status due to the complete absence of migration. In either of these two special cases, variables  $\psi$  and TotalSMM are path-independent, leading us to a key conclusion: The separate consideration of active and passive components avoids the problem of path-dependence altogether.

# How the Model Works Forward

If  $0 < \psi < 1$ , then TotalSMM  $<$  ActiveSMM, the fraction in the right-hand side of formula (6) is less than 1, and  $\psi$  gradually falls. If we employed the APD model for prepay modeling while using Monte Carlo simulation for valuation, we could innovate compositional variable  $\psi$  month after month. First, we would compute refinancing and turnover speeds at time  $t$  from their respective models. Then, we would produce active, passive, and total speeds, all still at time  $t$ , from formulas (4) and (5). This information is not only sufficient to generate the  $t$ -month cash flow, but it also allows for finding the next-month composition,  $\psi_{t+1}$ , from formula (6), and proceeding forward.

Note that prepay speeds RefiSMM and TurnoverSMM depend only on current market rates and time, that is, they are path-independent. Naturally, ActiveSMM and PassiveSMM found from (4) will be path-independent as well. In contrast, variables  $\psi$  and TotalSMM are generally path-dependent except when  $\psi$  is either 0 or 1.

Let us visualize how the APD model works. Suppose we have a pool with  $\psi_0 = 0.8$ , that is, the active part constitutes  $80\%$  of the total at origination. Consider two possible scenarios:

Scenario A: Rates drop and remain low, inducing refinancing activity.

Scenario B: Rates rise and remain high.

Figures 1A and 1B show how the pool composition will evolve in these two cases. For scenario A, pool balance is amortized quickly due to the refinancing wave, but, more importantly, the active group (darker bars) evaporates much faster than the passive group (lighter bars). As the result, variable  $\psi$  drops from the original  $80\%$  to under  $30\%$  and, correspondingly, the total speed (as measured by conditional prepayment rate and denoted by CPR) declines—in the complete absence of any rate dynamics. A sizable speed reduction from 45 CPR to 30 CPR is caused exclusively by the burnout effect and reflected by  $\psi$ . This effect is not seen in scenario B where the active and the passive groups retire at similar rates. Pool composition barely changes, as does the total prepayment speed.

We could give prepayment behaviors depicted in Figures 1A and 1B another interesting practical interpretation. Let us assume that we wish to compare a regular fixed-rate pool (Figure 1A) with a prepayment-penalty pool (Figure 1B) under the same low-rate market conditions. The regular pool burns out—unlike the prepay-penalty one, which faces additional refinancing barriers. At the end of its penalty window (assume 60 months), this pool retains a relatively high level of  $\psi$  ( $71.7\%$ ). Looking at a matching speed level in Figure 1A, we conclude that, once the penalty window is over, the prepay speed will jump above 40 CPR (compared to 29 CPR of the regular pool). Therefore, the APD model naturally explains the "catch-up" effect actually known for prepay-penalty mortgages.

Above, we assumed a newly originated pool, the population of which is determined by parameter  $\psi_0$ . In practice, a pool may be already seasoned, and today's value of  $\psi$ , denote it  $\psi(t_0)$ , needs to be determined first. We will cover this task shortly.

# How the Model Works in Backward Induction

If we decide to employ the APD model for backward valuation, we do not need to innovate path-dependent variables,  $\psi$ , and TotalSMM,

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/76a29b67-ac4d-47f0-86d4-1e10a3a8dda0/a45ed8746e7d15f7ed3e7c7932eed8956fbe806d0af7e0c88c37ba53f14f155e.jpg)
A. Low rates (refinancing wave)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/76a29b67-ac4d-47f0-86d4-1e10a3a8dda0/cdd8f6bd248c79472b00f6acff00ca1495e5592f6a02bade2c4a947f5fa0f755.jpg)
B. High rates or keep track of their dynamics. Here are few simple steps to perform:
Figure 1 Simple APD Model: How It Works Forward


Step 1: Recover today's value of the population variable,  $\psi (t_0)$

Step 2 Active: Generate cash flows on each node of a pricing grid (tree) for the active part only and value it using a backward inducting scheme that solves pricing equation (2).


Step 2 Passive: Do the same for the passive part.

Step 3: Combine thus obtained values as

$$
P = \psi (t_{0}) P_{\text{ac ti ve}} + [ 1 - \psi (t_{0}) ] P_{\text{pa ss iv e}} \tag {7}
$$

Interestingly enough, formula (7) applies to today's prices obtained for all interest rate levels of the pricing grid. As we mentioned above, computing prices on the entire grid is an inseparable part of backward valuation. Therefore, the total price can be also found on the grid, at no additional cost. In particular, the measures representing the sensitivities of an MBS price to the interest rates are found immediately, without any repetitive efforts with a stressed market (compare to Monte Carlo simulation). However, we can't apply formula (7) for future nodes because we know only  $\psi(t_0)$ —today's value of  $\psi$ .


# Initializing the Burnout Factor

If the pool is already seasoned, we have to assess  $\psi(t_0)$  first before we can employ the APD model either for forward simulation or backward induction. There exist two main approaches to solve this problem: an analytical closed-form method and historical simulation.

Suppose that we know the pool's age,  $t_0$ , factor,  $F(t_0)$ , and a constant turnover rate,  $\lambda_{\text{turnover}}$ . Then, we can assess the turnover factor  $F_{\text{turnover}}(t_0) = \exp(-\lambda_{\text{turnover}} t_0)$  along with the scheduled factor,  $F_{\text{scheduled}}(t_0)$ . Since the entire pool's amortization is driven by refinancing, turnover, and the scheduled payoff, the knowledge of two out of three factors along with the total pool's factor is enough to restore the entire time  $t_0$  composition. It is easy to show that unknown  $\psi(t_0)$  satisfies the following, generally transcendent, algebraic equation:

$$ x + \alpha x^{\beta} = 1 \tag {8}
$$ where  $\alpha$  is a known parameter:


$$
\alpha = \frac{1 - \psi_{0}}{\psi_{0}^{\beta}} \left[ \frac{F_{t u r n o v e r} (t_{0}) F_{s c h e d u l e d} (t_{0})}{F (t_{0})} \right]^{1 - \beta}
$$ and  $\beta$  is the same speed-reducing multiplier that enters the APD model (4).


Of course, no numerical iterations are needed if  $\beta$  is 0, 1, or 0.5. For instance,  $\beta = 1$  is a trivial case when the pool is homogeneous and is not subject to burnout,  $\psi(t_0) \equiv \psi_0$ . Case  $\beta = 0$  was considered in Levin (2001, 2002); it leads to

$\psi (t_0) = 1 - (1 - \psi_0)\frac{F_{turnover}(t_0)F_{scheduled}(t_0)}{F(t_0)}$  A simple quadratic equation for  $\psi (t_0)$  arises when  $\beta = 0.5$  with only one meaningful positive solution. For all other values of  $\beta$ , numerical methods will suffice.

Solving equation (8) is an attractive way to initialize the burnout stage, as it does not require historical simulation of past refinancing incentives. However, it is valid only for very specific forms of the APD model, presented by formulas (4) and (5). Any possible extension of the model (such as discussed below) will make it impossible to recover the burnout stage using the pool's factor and age information only. An alternative method to estimate  $\psi(t_0)$  would be a historical simulation of all prepayment components, that is, running the APD model forward from a pool origination until today. A relevant historical interest rate dataset will be required to facilitate this process.

# EXTENSIONS AND NUANCES

In this section, we discuss several possibilities of exploring and extending the APD framework. We complete the section by disclosing its expected accuracy and limitations.

# Computing Interest Rate Sensitivities Directly Off a Pricing Tree

Let us illustrate how interest rate exposures can be efficiently computed using prices produced on a pricing tree. The idea is to augment the tree with "ghost nodes" as shown in Figure 2; for simplicity and clarity, we illustrate the idea with a recombining binomial tree.

The tree contains the usual nodes and links (solid lines) that refer to market conditions (interest rates) and their changes. The root node refers to today's market. We assume application of the pricing formula (3) for every transition. We carry this process from maturity backward until we reach the root. This process is carried out separately for Active and Passive components of the mortgage pool; at the root, we combine prices using formula (7).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/76a29b67-ac4d-47f0-86d4-1e10a3a8dda0/6dad7ddea24e94c86291618b3dbac2d6967edff1c1aa13a632ec0f7e8689fb48.jpg)
Figure 2 Extended Pricing Tree


Let us augment the actual tree with some nodes marked by "Up" and "Down" in Figure 2. Those nodes cannot be reached from the root, but can be perceived theoretically as results of immediate market shocks. We can add as many nodes at time  $t = 0$  as we would like. These nodes and the emanating transitions are marked by dashed lines in Figure 2. If we assign transitional probabilities according to the law of our interest rate models and carry out the backward valuation process, we will end up with prices of Active, Passive, and Total prices at time  $t = 0$ . We can now measure duration and convexity using up and down shifts in the interest rate factor; we can also compile a risk report covering a substantial range on interest rate moves. These calculations will require carrying out the backward induction algorithm on a somewhat expanded tree, but otherwise, no extra computing efforts.

One practical question a user may have is whether interest rate shocks that are reflected in the up, the down, and other nodes are, in fact, parallel moves. In most cases, they are not. Each node of the valuation tree represents the full set of market conditions altered by a single factor (e.g., the short rate). The entire yield curve becomes known via the relevant law of the term structure model. For example, long rates move less than the short rate if the single-factor model is mean reverting; the rate's move may be comparable on a relative, not absolute, basis if the model is lognormal, and so on. These examples illustrate nonparallel moves in the yield curve. In these cases, it would be practically advisable to measure the Greeks with respect to the "most important" rate, such as the MBS current coupon rate or the 10-year reference rate.


Among a vast family of known short-rate models, there exists one special model whose internal law is consistent with the notion of parallel shocks. This is the Hull-White model with a zero mean reversion, also known as the Ho-Lee model (see, for example, Hull, 2005). When the short rate moves by  $x$  basis point, every zero-coupon rate will move by the same amount, regardless of its maturity.

If the Ho-Lee model is not employed and the sensitivity to parallel shocks of interest rates is a must (no approximation accepted), the tree-based valuation will have to be repeated using user-defined parallel moves of the yield curve. Whereas some advantages of the backward induction's superior speed will be forfeited, the method will still stand as a viable alternative to the Monte Carlo method.

# More Components, More Prepay Sources

The APD model given by (4), (5), and (6) is a two-component pool model exposed to two sources of prepayment, refinancing and turnover. Each of these features can be generalized. A mortgage pool can be thought of as a blend of many prepayment patterns (superactive, active, moderately active, and so on). On the other hand, there may exist prepayment sources that contribute to each of the groups, but are distinctly different from refinancing and turnover. Let us briefly discuss both ways to extend the model.


As we already pointed out, even a two-component model ensures smooth prepayment behavior if each component does so. Within the APD framework, a refinancing model may include the traditional S-like curve, aging, and perhaps some other known empirical mortgage effects that can be attributed to a nonoptimal option exercise. The total prepayment speed is proven to be between RefiSMM and TurnoverSMM, being continuously weighted as controlled by variable  $\psi(t)$ . Adding more components into the model does not alter this fact nor does it add any smoothness in the prepay model. It is also more difficult to fit a three-or four-component model than the APD model presented here. We believe that even a simple, but dynamic, APD model captures the main prepayment factors, including burnout.

The APD model (4) assumes that the active and passive components share the same turnover rate, and their refinancing speeds relate to one another as 1 to  $\beta$ . We can consider some other prepayment source that is not propagated to the active and passive components identically, or with the 1 to  $\beta$  ratio. For example, we may introduce both default termination and credit cure prepay sources, additive to refinancing and turnover, but likely having a higher effect on the passive part than on the active part.

Of course, additional prepayment sources can be formally included in the refinancing without assuming any more that active and passive refinancing models relate to one another. We will not be able to initialize  $\psi(t_0)$  by solving equation (8), and we must use historical simulation for this purpose as discussed above. Principally, we may assume unrelated refinancing models built for the active and passive components, gaining generality with little sacrifice of convenience.

# Residual Sources of Path-Dependence

The APD model takes care of the burnout effect, the major source of path-dependence for fixed-rate mortgages. After the decomposition is done, we need to review residual sources of path-dependence and arrange the numerical valuation procedure to reduce or eliminate potential pricing errors.


Prepayment lag, a lookback option feature, is such a source. Applications to obtain a new mortgage replacing an old one enter the origination pipeline 30 to 90 days before the loan is actually closed and the existing debt is paid off. Even if the prepayment model features a lag, but the backward valuation scheme is unaware of its existence, the pricing results can be somewhat inaccurate. This ignorance of the lag by the backward induction scheme usually causes small errors for pass-through securities. However, mortgage strip derivatives are highly prepayment sensitive, and the lag may change their values in a sizable way.

It is generally known that lookbacks with fairly short lag periods can be accounted for in the course of a backward induction process. Let us assume, for example, that, on a trinomial monthly tree, speed  $\lambda_{k}$  actually depends on market rates lagging one month. Hence, the MBS value will also depend on both the current market and 1-month lagged market. This is to say that each valuation node of the tree should be "sliced" into three subnodes keeping track of prices matching three possible historical nodes, one month back. Of course, this costs computational time; efficiency may deteriorate quickly for deeper lags and more complex trees.

Approximate alternatives do exist and it is feasible to reduce pricing errors without much trouble. AD&Co employs a progressively sparse recombining pentagonal tree, which does not branch off every month. Branches of the tree are made from two to 12 months long so that the lagged market rates are explicitly known for most monthly steps. The lookback correction can also be adapted for the "fractional" prepayment lag that almost always exists due to the net payment delay between the accrued-month-end and the actual cash flow date. In such a case,  $\lambda_{k}$  could be interpolated between the current-month and the previous-month values. Thus, the total lag processing should account for both prepay lookback and payment delay.


Another example of path-dependence not cured by pool decomposition is the coupon reset for adjustable-rate mortgages (ARMs). Both reset caps and nonlinear relationships between prepayments and coupons make it difficult for a backward induction scheme to account for this feature. One possible solution is to extend the state space and create an additional dimension that would keep track of the coupon rate for an ARM (Dorigan et al., 2001). This state-space extension will come at a cost of both computational efficiency and memory consumption. Levin (2002) suggests that the reset provisions found in typical ARMs allow for backward valuation with a practically acceptable accuracy, without any special measures on curing this path-dependence.

# Modeling Prepayments Universally: Refinancing Speed as a Function of Price

We finish the entry with a rather interesting, if not unique, application of the APD idea where backward valuation of MBS is not an option, but a necessity. The academic literature contains quite a few works on the rational prepayment exercise models. Our APD model is not of that sort as it is a "mortgage-like" approach that can accommodate empirical features such as an S-curve or aging. Yet, it can address some shortcomings typically known for purely ad hoc empirical models. As we have already asserted, the APD model can value MBS backward provided that its refinancing and turnover constituents depend only on the current market. A likely implementation of this rule would rely on some experimental relationship between the SMMs and a relevant mortgage index. Although this is the way most mortgage practitioners envision prepayment modeling, it is not the only possible approach. In fact, the refinancing be havior of homeowners also depends on the type of mortgage in hand. Given coupon and market, the economic incentive to prepay vanishes when maturity, balloon, or ARM reset date approach. Hence, each type of mortgage and each seasoning stage call for its own refinancing model.


An attractive alternative would be linking the refinancing speed of a mortgage (still measured on the grid nodes, separately for the active and passive pieces) directly to its price appreciation, using path-independent specification RefiSMM(Price) instead of RefiSMM(Rate). This is the same hint as the one used for valuation of American option bonds except the refinancing model can still be an exogenous S-curve, not the "optimal" or "rational" exercise rule. This model would state the refinancing speed, RefiSMM, as a function of the pool's price, for example, 15 CPR if collateral is priced at 102, 30 CPR for 105, and so on, asymptotically approaching its "ultimate" speed. Formulas (4), (5) still allow computing the active, passive, and total speeds. In particular, the passive component will still run off at a betareduced speed for the same price premium as the active component.

In essence, variable  $\lambda$  in the pricing PDE (2) becomes a function of the unknown  $P$ . Such an equation will still be path-independent, presenting no theoretical or computational issues for the backward solution. Moreover, if the refinancing behavior is indeed driven by price appreciation and such a universal relationship can be experimentally established, then the APD modeling approach and its backward implementation becomes a natural, if not the only, way to price an MBS. Any Monte-Carlo-based valuation method simply would not allow assessing future prices and, hence, prepayment speeds.

Arguably, the RefiSMM(Price) function can be viewed as one universal refinancing rule that can serve many collateral types. Furthermore, such a model can directly account for additional loan-specific transaction costs and cost saving opportunities. For example, the knowledge of prepayment penalties, average loan sizes, or state-imposed taxes can easily be used to modify the S-curve.

Furthermore, the RefiSMM(Price) formulation can be used for modeling collateral behavior for CMOs as well. Although a typical CMO is path-dependent well beyond its collateral and necessitates Monte Carlo sampling, it is the prepayment modeling stage that can be done via the APD scheme. We will start with valuing collateral first on the grid or a tree, and then compute and store ActiveSMM and PassiveSMM for every node of the tree as a result of the backward inducting process described in this entry. We then run Monte Carlo simulations for the CMO in question and apply precomputed SMMs. As we pointed out, the key compositional variable  $\psi(t)$  is known going forward (but not backward), thereby enabling construction of the full prepayment rate, hence, the cash flow, for every node and every path.

This approach's details and an illustration of how the same S-curve can "serve" both fixed-rate and adjustable-rate ARMs are given in Levin (2006). Pricing PDE (2) with  $\lambda = \lambda(P)$  has been given mathematical consideration by Goncharov (2003, 2006), who studied the existence and uniqueness of its solution.

# KEY POINTS

- The prices of mortgage-backed securities follow a partial differential equation that includes interest rates, coupon rates, and prepayment rates. Even for a simple mortgage pass-through security, this valuation PDE is path-dependent as it depends on the attained stage of burnout (hence, on past refinancing incentives).
- The active-passive decomposition model splits a pool into two path-independent, mutually exclusive borrower groups. APD naturally simulates the burnout effect.
- For mortgage pass-through securities (and their strip derivatives), APD splits valuation into two quick backward induction steps and produces the entire pricing grid for risk measurement at no additional cost (unlike Monte Carlo simulation).


- Whereas CMOs will still rely on Monte Carlo simulation as being heavily path-dependent beyond the burnout, they will benefit from better prepay modeling.
- The backward induction pricing technique makes future values accessible and new valuation and modeling tasks feasible. For example, one can assume that the refinancing curve is a function of a loan's objective price rather than interest rates. Such an approach can be viewed as a universal model that applies to both fixed and adjustable rate pools.

# NOTES

1. We can relax this condition just assuming that the historical turnover rate is known, not necessarily constant.
2. When using finite difference grids for solving the pricing PDE, the ghost nodes are part of the grid.
3. Historical calibration of the Hull-White model to the swaption volatility surface often reveals a small-to-zero level of the mean reversion constant.
4. One reason a borrower is "passive" can be due to credit-related issues.
5. See Longstaff (2003) and Stanton (1995).

# REFERENCES

Davidson, A. (1987). Understanding premium mortgage-backed securities: Observations and analysis, in F. Fabozzi (ed.), Mortgage-Backed Securities: New Strategies, Applications and Research. Chicago: Probus Publishing, pp. 191-204.

Davidson, A., Herskovitz, M., and Van Drunen, L. (1988). The refinancing threshold model: An economic approach to valuing MBS. Journal of Real Estate Finance and Economics 1, June: 117-130.

Dorigan, M., Fabozzi, F. J., and Kalotay, A. (2001). Valuation of floating-rate bonds, in F. Fabozzi (ed.), Professional Perspectives on Fixed Income Portfolio Management, Volume 2. Hoboken, NJ: John Wiley & Sons.

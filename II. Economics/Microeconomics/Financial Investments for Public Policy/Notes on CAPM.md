---
title: "CAPM Cheatsheet"
parent_directory: "Financial Investments for Public Policy"
formatted: "2025-12-21 10:55:25 AM"
formatter_model: "kimi-k2-turbo"
cli-tool: "claude-code"
primary_tags:
  - capital asset pricing model
  - portfolio theory
  - beta pricing
secondary_tags:
  - mean variance optimization
  - risk free rate
  - market portfolio
  - fama french factors
  - time series regression
  - cross sectional tests
  - arbitrage pricing theory
cssclasses: academia
---

# CAPM Cheatsheet

Charlie Wang

April 29, 2009

## 1 CAPM Background

- Builds on mean-variance model of Markowitz (1959)
- Mean-variance utility Investor chooses portfolio at $t-1$ with stochastic return at $t$.  
- Rational investors choose mean-variance efficient portfolios (p), satisfying the following minimum variance condition:

$$
\mathbb{E}\left(R_{i}\right) = \mathbb{E}\left(R_{ZP}\right) + \beta_{iP} \left[ \mathbb{E}\left(R_{P}\right) - \mathbb{E}\left(R_{ZP}\right) \right] \forall i = 1, \dots , N \tag{1}
$$

where $E(R_{i}) =$ expected return of any asset in the investment opportunity set, $E(R_{P}) =$ expected return of any minimum variance frontier portfolio, $E(R_{ZP}) =$ expected return on an asset with 0 correlation to the portfolio, and $R_{iP} \equiv \Cov(R_{i},R_{P}) / \Var(R_{P})$

- Sharpe (1964) and Lintner (1965) add 2 assumptions
- Complete Agreement: Given market clearing asset prices at  $t - 1$ , investors agree on the joint distribution of asset returns from  $t - 1$  to  $t$ , and this is the true distribution from which returns are drawn.  
- Borrowing and lending at risk-free rate: All investors can borrow/lend unlimited at the risk-free.

## Punchline:

- Complete agreement  $\Rightarrow$  investors see the same opportunity set, and they combine the same risky tangency portfolio with risk-free lending or borrowing.  
- By market clearing of asset market, since everyone holds the same risky asset  $\Rightarrow$  the tangency portfolio must be the value-weight market portfolio of risky assets (i.e. the "Market" portfolio)!  
- Unlimited borrowing and lending at risk-free $\Rightarrow$ that expected return on assets uncorrelated with market return $\mathbb{E}\left(R_{ZM}\right) = R_f$.  
- Thus we obtain the famous equation:

$$
\mathbb{E}\left(R_{i}\right) = R_{f} + \beta_{iM} \left[ \mathbb{E}\left(R_{M}\right) - R_{f} \right] \forall i = 1, \dots , N \tag{2}
$$

$$
\frac{\partial \Var\left(R_{p}\right)}{\partial \omega_{i}} = \Cov\left(R_{i}, R_{p}\right)
$$

So we can think of CAPM in the following way:

$$
\mathbb{E}\left(R_{i}\right) - R_{f} = \underbrace{\Cov\left(R_{i}, R_{m}\right)}_{\text{contribution of ito portfolio risk}} \times \underbrace{\frac{\mathbb{E}\left(R_{m}\right) - R_{f}}{\Var\left(R_{m}\right)}}
$$

risk-return tradeoff in mkt

- Black (1972) develops a version of the CAPM without risk-free borrowing or lending, but rather obtains the same result (market portfolio is MV efficient) by allowing for unrestricted short sales of risky assets.
- Black differs from Sharpe-Lintner in  $\mathbb{E}\left(R_{ZM}\right)$

* Black:  $\mathbb{E}\left( {R}_{M}\right)  - \mathbb{E}\left( {R}_{ZM}\right)  > 0$  
* Sharpe-Lintner:  $\mathbb{E}\left( {R}_{ZM}\right)  = {R}_{f}$  .

- In either case, the Sharpe-Lintner-Black CAPM  $\Rightarrow$  positive premium for  $\beta$ .
- Sharpe-Lintner and Black versions of CAPM share the following predictions

Market portfolio is mean-variance efficient  

- $\beta$  has positive premium

CAPM and SDF

- In general, beta representation with  $f$  as factors (see below)  $\Leftrightarrow$  affine SDF:  $m = a + b^T f$ . (See Cochrane p.106~108) Beta representation takes the following form:

$$
\mathbb{E}\left(\widetilde{R}_{i}\right) = \gamma + \sum_{i = 1}^{K} \underbrace{\beta_{ik}}_{\text{factor sens.}} \times \underbrace{\lambda_{k}}_{\text{factor risk pr}} \quad \forall i \tag{3}
$$

$$
\widetilde{R}_{i} = a_{i} + \sum_{i = 1}^{K} \underbrace{\beta_{ik}}_{\text{factor sens.}} \times \underbrace{\widetilde{f}_{k}}_{\text{risk factor}} + \widetilde{\varepsilon}_{i} \quad \forall i \tag{4}
$$

$$
\text{with} \mathbb{E}(\widetilde{\varepsilon}_{i}) = 0 \text{and} \mathbb{E}\left(\widetilde{f}_{k} \widetilde{\varepsilon}_{i}\right) \equiv \Cov\left(\widetilde{f}_{k}, \widetilde{\varepsilon}_{i}\right) = 0 \tag{5}
$$

- Form of  $\lambda$ : From the above formulation It can be shown that (See Cochrane p.108)…

* if the factor  $f_{k}$  is a gross return on a portfolio (e.g. CAPM), and there exists risk-free asset  $\Rightarrow$  factor risk premium always takes the form of a risk premium on that portfolio, i.e.  $\lambda_{k} = \mathbb{E}\left(\widetilde{R}_{k}\right) - \widetilde{R}_{f}$  
* if the factor  $f_{k}$  is an excess return on a portfolio  $\Rightarrow$  factor risk premium always takes the form of the expected excess return, i.e.  $\lambda_{k} = \mathbb{E}\left(\widetilde{f}_{k}\right)$

- Examples:

* CAPM: $\mathrm{k} = 1$, $\widetilde{f} = \widetilde{R}_m$, $\lambda = \mathbb{E}\left(\widetilde{R}_m - R_f\right)$, $\gamma = R_f$, $\beta_i = \Cov\left(\widetilde{R}_i, \widetilde{R}_m\right) / \Var\left(\widetilde{R}_m\right)$.
* FF3factors: $\widetilde{f}_1 = \widetilde{R}_m - R_f$, $\widetilde{f}_2 = \widetilde{R}_S - \widetilde{R}_B$, $\widetilde{f}_3 = \widetilde{R}_H - \widetilde{R}_L$, $\lambda_k = \mathbb{E}\left(\widetilde{f}_k\right) \forall k$.

- Note on Factor Mimicking Portfolios (See Cochrane p.109)

* When factors are not already returns or excess returns, it is often convenient to express a  $\beta$  pricing model in terms of its factor-mimicking portfolios rather than the factors themselves (FF3Factors).  
* That is, rather than the true factors  $f$ , use one of the following…

$$
\text{factor-mimicking payoffs:} f^{*} = \operatorname{proj}(f | \underline{X}) \tag{6}
$$

$$
\text{factor-mimicking gross returns:} f^{*} = \frac{\operatorname{proj}(f | \underline{X})}{p(\operatorname{proj}(f | \underline{X}))} \tag{7}
$$

$$
\text{factor-mimicking excess returns:} f^{*} = \operatorname{proj}(f | \underline{R}^{e}) \tag{8}
$$

where  $\underline{X}$  is the space of payoffs in the economy and  $\underline{R}^e$  the space of excess returns.

* $m^{*} = b^{T}f^{*}$ is a valid SDF, since

$$
p = \mathbb{E}(m x) = \mathbb{E}\left(\operatorname{proj}(f | \underline{X}) x\right) = \mathbb{E}\left(m^{*} x\right) \tag{9}
$$

## 2 Empirical Tests of CAPM

### 2.1 Methodology

2 Approaches for testing beta models (e.g. CAPM)

1. Time-Series Approach (FF '93)

- When factor is a excess return, then factor risk premium is  $= \mathbb{E}\left(\widetilde{f}\right)$  so that  $\beta$  representation in (3) reduces to

$$
\mathbb{E}\left(\widetilde{R}_{i}\right) - R_{f} = \beta_{i} \mathbb{E}(\widetilde{f}) \tag{10}
$$

where  $\beta_{i}$  defined through he time-series regression

$$
R_{i, t} - R_{f, t} = \alpha_{i} + \beta_{i} \times f_{t} + \varepsilon_{i, t} \tag{11}
$$

- The model has one and only one implication for the data:

$$
\alpha_{i} = 0 \forall i \tag{12}
$$

- To Test: Run time-series regressions (11) for each test asset/portfolio, then test whether all pricing errors  $(\alpha_{i})$  are 0  
- Problems with methodology: Requires the factor to be a return.

2. Cross-Sectional Approach (FF '92)

- Generally, if risk factors are not returns, our  $\beta$  representation model is written as:

$$
\mathbb{E}\left(\widetilde{R}_{i}\right) - R_{f} = \gamma_{i} + \beta_{i} \lambda \tag{13}
$$

We can fit this model as follows:

- 1. Identify  $\beta_{iM}$  from time series regression for each security

$$
\operatorname{regress} R_{it} - R_{ft} = \alpha_{i} + \beta_{iM} \left(R_{M,t} - R_{ft}\right) + \varepsilon_{it} \tag{14}
$$

- 2. Run the following cross sectional regression of (time-series) average asset returns on estimates of asset betas  $\left(\hat{\beta}_{iM}\right)$  for each stock i:

$$
\operatorname{regress} \overline{R}_{i} - \overline{R}_{f} = \gamma + \hat{\beta}_{iM} \lambda + u_{i} \tag{15}
$$

- CAPM Predictions in this model are that:  $\gamma = 0$  and  $\lambda > 0$  (Black) or  $\lambda = \mathbb{E}\left(\widetilde{R}_M - R_f\right)$  (Sharpe-Lintner)
- Problems with above methodology
- 1.  $\beta$  estimates for individual assets are imprecise  $\Rightarrow$  measurement error.

(Solution: Estimate  $\beta$  in portfolios improve precision. Blume (1970), Friend and Blume (1970), Black, Jensen, and Scholes (1972).)

- 2. Cross sectional regression (15) has correlated errors (e.g. common industry effects in average returns)  $\Rightarrow$  standard errors too small!

(Solution: Fama-MacBeth (1973) - estimate month-by-month cross-section regressions of monthly returns on  $\beta s$ , use the time-series means and standard errors of the means for inference. Assuming no time-series correlation, the standard errors of coefficients capture the effects of residual correlations via repeated sampling of the regression coefficients. In other words, we are bootstrapping from the sampling distribution of  $\beta$ 's, where each bootstrap draw comes from a monthly cross-section.)

- 3. Second stage standard errors does not account for first stage estimation  $\Rightarrow$  standard errors too small!

(Solution: Explicitly correct for the first stage estimation in standard error - Shanken (1992))

### 2.2 Findings in Tests of CAPM

3 Testable Predictions of CAPM to test: 1) expected returns on all sets are linearly related to their $\beta$, and no other variables have explanatory power, 2) $\beta$ premium is positive, and 3) asset uncorrelated with market is $R_{f}$ and $\beta$ premium is $\mathbb{E}(R_M) - R_f$ or +.

- Early tests of the CAPM (Fama MacBeth (1973), Gibbons (1982), and Stambaugh (1982)) find…
- $\beta$ appears to suffice in explaining expected returns and premium on $\beta$ is $+
- $\gamma$ too large and $\lambda$ too small (see (15))
- Later tests of the CAPM (Fama French (1992)) reject earlier findings, using cross-sectional Fama-MacBeth approach
- $\beta$ does not explain cross section of average returns. $+\beta$ premium does not exist in the post 1963 period.
- Size and B/M explain cross section of average returns
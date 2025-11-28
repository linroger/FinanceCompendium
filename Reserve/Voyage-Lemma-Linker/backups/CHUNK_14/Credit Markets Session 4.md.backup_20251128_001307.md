---
title: Credit Markets Session 4
tags:
  - credit_markets
  - g_spreads
  - hazard_rate
  - nelson_siegel
  - bond_pricing
  - quant_trading
  - parametric_models
aliases:
  - Calibration
  - Model Prices
  - Verizon Bonds
key_concepts:
  - Hazard Rate Models
  - Parametric IR Models
  - Quant Credit Trading
  - Risk Models
  - Smooth Yield Curve
  - Nelson-Siegel Model
  - Model Calibration
  - G-Spreads
  - I-Spreads
  - Portfolio Optimization
---

# Credit Markets Session 4
## Calibration and Model Prices
<<<<<<< HEAD
1. Recap: Parametric IR Models
=======
1. Recap: Credit Markets Session 4 | Parametric IR Models]]
>>>>>>> d83d5c06204d625fbecfdb77e4d3f37c9c80e27b
	- Smooth yield curve models
	- The Nelson-Siegel model for smooth yield curves
	- The Nelson-Siegel-Svensson extension
<<<<<<< HEAD
2. Parametric Credit Models
	- What problem are we trying to solve?
	- Smooth Hazard Rate models
3. Calibration and Model Prices
	- Calibration results in hazard rate space
	- Model edges and alpha signals
	- Interpreting model results
4. Quant Credit Trading
=======
2. Parametric An Introduction to Credit Risk Modelling | Credit Models]]
	- What problem are we trying to solve?
	- Smooth Hazard Rate models
3. Credit Markets Session 4 | Calibration]] and Credit Markets Session 4 | Model Prices]]
- Credit Markets Session 4 | Calibration]] results in hazard rate space
	- Model edges and alpha signals
	- Interpreting model results
4. Credit Markets Session 4 | Quant Credit Trading]]
>>>>>>> d83d5c06204d625fbecfdb77e4d3f37c9c80e27b
	- Quantitative Trading Approach
	- Searching for alphas
	- Risk models
	- Portfolio construction
	- Strategy Backtesting

## US Treasury Yields as of 2023-05-05

!500

## Motivation for "Smooth" US Treasury Curve

<<<<<<< HEAD
Observation: ~380 US cash treasury instruments (bills, notes and bonds) actively traded in the market, quoted at different prices/yields, based on coupon, maturity and liquidity profile (~380 dimensional problem)

Question: can we compute model prices for all US Treasuries using one sparse parametric model (dimensionality reduction)?
=======
Observation: ~380 US cash treasury instruments (bills, notes and bonds) actively traded in the market, quoted at different prices/yields, based on coupon, maturity and Class Note 10 Liquidity and Class Note 10 Liquidity and Liquidity Managementliquidity management | liquidity]] profile (~380 dimensional problem)

Question: can we compute Credit Markets Session 4 | model prices]] for all Credit Market Homework 1 | US Treasuries]] using one sparse parametric model (dimensionality reduction)?
>>>>>>> d83d5c06204d625fbecfdb77e4d3f37c9c80e27b

Main idea: find a "smooth"/parametric spot/zero rates curve that best fits the market

## The Nelson-Siegel Model for Smooth Yield Curves

The Nelson-Siegel '87 Model

Idea: decompose the spot/zero yield curve $y(T)$ into 3 "basis function shapes":

Level: $$\theta_{1} \cdot 1$$

Slope: $$\theta_{2} \cdot \frac{1-e^{-T/\lambda}}{T/\lambda}$$

Curvature/"hump": $$\theta_{3} \cdot \left(\frac{1-e^{-T/\lambda}}{T/\lambda}-e^{-T/\lambda}\right)$$

- ... and calibrate/control the yield curve shape via
	- "basis loadings" $\theta_1$, $\theta_2$, $\theta_3$ parameters and
	- "curve location" $\lambda$ parameter
- Svensson '94 extension
	- added "second hump" shape: $\theta_4 \cdot \left(\frac{1-e^{-T/\lambda_{2}}}{T/\lambda_{2}}-e^{-T/\lambda_{2}}\right)$

## Nelson-Siegel Basis Functions

!500

The Nelson-Siegel model for smooth yield curves

## Nelson-Siegel Calibration (US Treasuries on 2023-05-05)

!500

## Nelson-Siegel-Svensson Basis Functions

!500

## Nelson-Siegel-Svensson Calibration (US Treasuries on 2023-05-05)

!500

## Verizon Yields vs Treasuries vs SOFR Swaps on 2023-10-30

!500

What problem are we trying to solve?

## Verizon Bond US Treasury G-Spreads on 2023-10-30

!500

## Verizon Bond SOFR I-Spreads on 2023-10-30

!500

What problem are we trying to solve?

## Motivation for "Smooth" Credit Curves
<<<<<<< HEAD
- Verizon has about 60 actively traded USD cash Corporate Bonds
- ... quoted at different prices/yields/spreads, based on coupon, maturity and liquidity profile
- Main idea: find a sparse parametric hazard rates curve model that best fits the market for VZ cash Corporate Bonds
- Reminder: corporate spreads capture the credit default risk only (they "live" on the top of US Treasury or SOFR curve)!
- Comment: corporate credit spread curves have "nice" curve shapes and should be "easier to model"
=======
- Verizon has about 60 actively traded USD cash Class Notes 2 – Corporate Bond Contracts | Corporate Bonds]]
- ... quoted at different prices/yields/spreads, based on coupon, maturity and Class Note 10 Liquidity and Class Note 10 Liquidity and Liquidity Managementliquidity management | liquidity]] profile
- Main idea: find a sparse parametric RISK NEUTRAL VALUATION FRAMEWORK FOR CREDIT DEFAULT SWAPS | hazard rates]] curve model that best fits the market for VZ cash Class Notes 2 – Corporate Bond Contracts | Corporate Bonds]]
- Reminder: corporate spreads capture the Credit Markets Session 5 | credit default risk]] only (they "live" on the top of US Treasury or Credit Markets Homework 3 | SOFR curve]])!
- Comment: corporate Cds-Equivalent Bond Spread | credit spread]] curves have "nice" curve shapes and should be "easier to model"
>>>>>>> d83d5c06204d625fbecfdb77e4d3f37c9c80e27b

## Nelson-Siegel Yield Calibration for Verizon Bonds on 2023-10-30

!500

## Nelson-Siegel G-Spread Calibration for Verizon on 2023-10-30

!500

<<<<<<< HEAD
## Recap: Pricing Risky Instruments (Cash Bonds and CDS)

- For a given issuer and seniority rank, prices for all risky instruments (with known specs) can be computed from
- ... the discount factor curve $DF(0, T), T ≥ t ≥ 0$, calibrated to risk-free rates market (TSY & SOFR) and
- ... the hazard rate curve $h(t, T), T ≥ t ≥ 0$.
- Very useful to think of "average" hazard rates $H(t, T)$
=======
## Recap: Arbitrage Pricing of Derivatives | Pricing]] Risky Instruments (Cash Bonds and CDS)

- For a given issuer and seniority rank, prices for all risky instruments (with known specs) can be computed from
- ... the Credit Markets Session 3 | discount factor curve]] $DF(0, T), T ≥ t ≥ 0$, calibrated to risk-free rates market (TSY & SOFR) and
- ... the hazard rate curve $h(t, T), T ≥ t ≥ 0$.
- Very useful to think of "average" RISK NEUTRAL VALUATION FRAMEWORK FOR CREDIT DEFAULT SWAPS | hazard rates]] $H(t, T)$
>>>>>>> d83d5c06204d625fbecfdb77e4d3f37c9c80e27b
$$H(t, T)=\frac{1}{T-t}\int_{t}^{T}h(t, s)ds\tag{1}$$
$$SP(t, T)=\exp\left[(t-T)\cdot H(t, T)\right]\tag{2}$$

## Implementing a "Smooth" Credit Risk Model

Main idea: use parametric form for average hazard rate curve as of time $t$
$$H(t, T)=H(t, T | \theta_{t})\tag{3}$$
<<<<<<< HEAD

Parameter vector $\theta_{t}$ controls the "shape" (level, slope, convexity, etc) of the credit curve.

The implied parametric form for the survival probability curve is given by
$$\mathcal{S}P(t, T)=\mathcal{S}P(t, T | \theta_{t})=\exp\left[(t-T)\cdot H(t, T | \theta_{t})\right]\tag{4}$$

!500

!500

$\theta_1 = 3\%$, $\theta_2 = -1\%$, $\theta_3 = -0.1\%$, $\lambda = 5$

## Implementation/Calibration of Smooth Credit Risk Model
- For a given issuer and seniority rank, collect market prices for all bonds and CDS at time $t$.
- For each instrument, determine calibration weights based on liquidity and riskiness, e.g. $w_i = \frac{LiqScore_i}{DV01_i}$
- Model calibration consists of minimizing the SSE ("Sum of Squared Errors") between model and market prices:
$$SSE(t, \theta):=\sum_{i=1}^{N}w_{i}\cdot\left | MarketPrice_{t}^{i}-ModelPrice_{t}^{i}(\theta)\right | ^{2} \tag{5}$$
$$\theta_{t}^{*}=\underset{\theta}{\text{argmin}}\left\{SSE(t, \theta)\right\} \tag{6}$$

## Nelson-Siegel Calibration: Verizon G-Spreads

!500

## Nelson-Siegel Calibration: Verizon Yields

!500

## Assessing Model Calibration Results

- Differences between model and market prices are called "model edges"
- "Model edges" can be converted from price into yield or spread space, by using DV01/sensitivities
- Can we think of the calibrated model prices as "fair prices" for the given instruments, at least on a relative basis?
=======

Parameter vector $\theta_{t}$ controls the "shape" (level, slope, PSET II Fixed Income Asset Pricing 1 | convexity]], etc) of the Advanced Usage of QuantLib analytics library | credit curve]].

The implied parametric form for the A Poisson Model of Single Issuer Default | survival probability]] curve is given by
$$\mathcal{S}P(t, T)=\mathcal{S}P(t, T | \theta_{t})=\exp\left[(t-T)\cdot H(t, T | \theta_{t})\right]\tag{4}$$

!500

!500

$\theta_1 = 3\%$, $\theta_2 = -1\%$, $\theta_3 = -0.1\%$, $\lambda = 5$

## Implementation/Calibration of Smooth Credit Risk Model
- For a given issuer and seniority rank, collect market prices for all bonds and CDS at time $t$.
- For each instrument, determine Credit Markets Session 4 | calibration]] weights based on Class Note 10 Liquidity and Class Note 10 Liquidity and Liquidity Managementliquidity management | liquidity]] and Risk Preferences | riskiness]], e.g. $w_i = \frac{LiqScore_i}{DV01_i}$
- Arbitrage-Free Interest Rate Models | Model calibration]] consists of minimizing the SSE ("Sum of Squared Errors") between model and market prices:
$$SSE(t, \theta):=\sum_{i=1}^{N}w_{i}\cdot\left | MarketPrice_{t}^{i}-ModelPrice_{t}^{i}(\theta)\right | ^{2} \tag{5}$$
$$\theta_{t}^{*}=\underset{\theta}{\text{argmin}}\left\{SSE(t, \theta)\right\} \tag{6}$$

## Nelson-Siegel Calibration: Verizon G-Spreads

!500

## Nelson-Siegel Calibration: Verizon Yields

!500

## Assessing Arbitrage-Free Interest Rate Models | Model Calibration]] Results

- Differences between model and market prices are called "model edges"
- "Model edges" can be converted from price into yield or spread space, by using DV01/sensitivities
- Can we think of the calibrated Credit Markets Session 4 | model prices]] as "fair prices" for the given instruments, at least on a relative basis?
>>>>>>> d83d5c06204d625fbecfdb77e4d3f37c9c80e27b
- Is there an "economic interpretation" to our "fair prices" assumption above, outside of our model?

## Nelson-Siegel Calibration: Verizon G-Spread Edges

!500

## Nelson-Siegel: Edge Time Series for Verizon Bond

!500

## Visualizing Smooth Model Curves

<<<<<<< HEAD
- Once the credit curve model is calibrated, we obtain
=======
- Once the Advanced Usage of QuantLib analytics library | credit curve]] model is calibrated, we obtain
>>>>>>> d83d5c06204d625fbecfdb77e4d3f37c9c80e27b
	- the smooth Yield or G-Spread surfaces for the issuer (across coupon and maturities)
	- and model prices of any CDS or bond: existing or "new issue"
- Intuitive way to visualize the dynamics of curve shapes through time
	- create hypothetical/synthetic bond for standardized maturities: 2Y, 3Y, 5Y, 7Y, 10Y, 20Y and 30Y
	- issued at "par price": bond coupon = bond yield
	- Plot yields and g-spreads time series

## Verizon "Smooth"/Model Yield Surface

!500

## Verizon "Smooth"/Model G-Spread Surface

!500

## Verizon "Smooth"/Model I-Spread Surface

!500

## Time Series of Verizon "Smooth" Credit Curves

!500

## From Model Edges to Trading Strategies
- Assuming we do have the "fair price" of securities
<<<<<<< HEAD
	- can we construct a portfolio strategy (e.g. pairs trading) of "edge dislocated" instruments with an "above average" strategy PnL?
- Is this a "pure arbitrage" or a "statistical arbitrage" strategy?
- Is the strategy executable: liquidity, transaction costs, capacity, cost of financing, etc?
- Can we validate via strategy simulation/backtesting?

### Quant Trading
- Use technology + math + automation for investment decisions
=======
- can we construct a An Asset Allocation Primer | portfolio]] strategy (e.g. pairs trading) of "edge dislocated" instruments with an "above average" strategy PnL?
- Is this a "Arbitrage Pure Versus Relative Value | pure arbitrage]]" or a "statistical Arbitrage Pricing of Derivatives | arbitrage]]" strategy?
- Is the strategy executable: Class Note 10 Liquidity and Class Note 10 Liquidity and Liquidity Managementliquidity management | liquidity]], transaction costs, capacity, cost of financing, etc?
- Can we validate via strategy simulation/backtesting?

### Quant Trading
- Use technology + math + automation for An Asset Allocation Primer | investment]] decisions
>>>>>>> d83d5c06204d625fbecfdb77e4d3f37c9c80e27b
- Little human interaction "at run-time"

### Methods
- Calibrate models to identify "edges"/alphas
- Evaluate strategy performance via backtesting
- Select optimal model parameters

### Goals
- Maximizing alpha capture: PnL, Sharpe/Sortino ratios
<<<<<<< HEAD
- While minimizing risk: low factor risks, limited portfolio draw-downs
=======
- While minimizing risk: low factor risks, limited An Asset Allocation Primer | portfolio]] draw-downs
>>>>>>> d83d5c06204d625fbecfdb77e4d3f37c9c80e27b

## IG Bond Market (~15K Bonds): G-Spreads by TTM and Liquidity

!500

## "Fair" Prices, Market Prices and Edges

- Use quant models to estimate "fair" value of securities
- "Edge"/"alpha" = temporary dislocations between fair and market prices
- Alpha raw metrics: current edge dislocation, estimated edge volatility
- Alpha convergence metrics: stationarity, mean-reversion speed and signal half-life

## Risk Models
- Joint securities dynamics decomposed into
	- Factors risks
	- Idiosyncratic risks
<<<<<<< HEAD
- Portfolio factor risks aggregated at portfolio level via "betas"/factor loadings
- Knowledge of factor Co-Variance matrix & individual "idio" vols enables risk predictions on portfolio level

### Risk Model: Examples

#### Market Observable Risk Factors
- Interest Rates: DV01, IR01
- Credit Default: CS01, Gamma, Jump-To-Default
- Liquidity

#### Cross-Sectional Regression Models
- BARRA-style models
- Known factor loadings, regressed returns
=======
- An Asset Allocation Primer | Portfolio]] factor risks aggregated at An Asset Allocation Primer | portfolio]] level via "betas"/factor loadings
- Knowledge of factor Co-Variance matrix & individual "idio" vols enables risk predictions on An Asset Allocation Primer | portfolio]] level

### Risk Model: Examples

#### Market Observable PSET 6- Financial Instruments | Risk Factors]]
- Interest Rate Quotations | Interest Rates]]: DV01, IR01
- Credit Default: CS01, Gamma, Jump-To-Default
- Class Note 10 Liquidity and Class Note 10 Liquidity and Liquidity Managementliquidity management | Liquidity]]

#### Cross-Sectional Regression Models
- BARRA-style models
- Known factor loadings, regressed Assets | returns]]
>>>>>>> d83d5c06204d625fbecfdb77e4d3f37c9c80e27b

#### Statistical Risk Factors
- PCA factor models

## Portfolio Construction: Ingredients
- Alpha signals
	- multiple edges can be "mixed" into aggregated edge
- Risk model(s)
- Transaction costs model
- Portfolio constraints (notional and risk limits)
- Numerical optimizer (linear-quadratic/convex optimization)

## Expected Utility Optimization Formula
- Maximize total alpha capture,
- Penalize risk/variance and "re-balancing volume"
- ... while taking into account position and risk constraints
- ... and transaction costs

## Strategy Backtesting
- For a given set of model parameters, implement a simulator/backtester of the strategy Positions/PnL/Volume metrics on historical data
- Run the strategy backtests on a (multi-dimensional) grid of the model parameter space
- Analyze the results and decide the optimal model parameters, to be used in "production" trading
- Adjust the production/optimal model parameters based on LIVE trading feedback, in order to maximize the strategy performance

## Strategy Backtest Example: 2D Parameter Grid Search

!500

## Q&A

### Parametric Yield Curve Models
- Recap: parametric interest rate models
- Nelson-Siegel models for smooth yield curves
<<<<<<< HEAD
- Parametric models for smooth hazard rate curves

### Quantitative Credit Trading
- Alpha and Risk models
- Portfolio construction
=======
- Parametric models for smooth Advanced Usage of QuantLib analytics library | hazard rate curves]]

### Quantitative Credit Markets Session 1 | Credit Trading]]
- Alpha and Credit Markets Session 4 | Risk models]]
- Exercises | Portfolio construction]]
>>>>>>> d83d5c06204d625fbecfdb77e4d3f37c9c80e27b
- Strategy backtesting

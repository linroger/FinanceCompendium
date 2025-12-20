---
title: "Notation and Formulas"
aliases:
  - Notation and Formulas
tags:
  - finance
  - notation
  - formulas
  - investments
  - bkm
key_concepts:
  - financial notation
  - investment formulas
  - risk measures
  - portfolio theory
  - market equilibrium
  - fixed-income analysis
  - equity analysis
  - derivative assets
  - performance evaluation
parent_directory: V. Equities and Alternatives/Equities/Investments BKM/Back Matter
cssclasses: academia
---

# Commonly Used Notation

$b$ Retention or plowback ratio

$C$ Call option value

$CF$ Cash flow

$\operatorname{Cov}(r_i, r_j)$ Covariance between returns on securities $i$ and $j$

$D$ Duration

$e$ 2.718, the base for the natural logarithm, used for continuous compounding

$e_{it}$ The firm-specific return, also called the residual return, of security $i$ in period $t$

$E$ Exchange rate

$E(x)$ Expected value of random variable $x$

$f$ Forward rate of interest

$F$ Futures price

$g$ Growth rate of dividends

$H$ Hedge ratio for an option, commonly called the option's delta

$i$ Inflation rate

$k$ Market capitalization rate, the required rate of return on a firm's stock

$\ln$ Natural logarithm function

$M$ The market portfolio

$N(d)$ Cumulative normal function, the probability that a standard normal random variable will have value less than $d$

$p$ Probability

$P$ Put value

$P/E$ Price-to-earnings multiple

$PV$ Present value

$r$ Rate of return on a security; for fixed-income securities, $r$ may denote the rate of interest for a particular period

$r_f$ The risk-free rate of interest

$r_M$ The rate of return on the market portfolio

$ROE$ Return on equity, incremental economic earnings per dollar reinvested in the firm

$S_p$ Sharpe ratio, also called the reward-to-volatility ratio; the excess expected return divided by the standard deviation

$t$ Time

$T_p$ Treynor's measure for a portfolio, excess expected return divided by beta

$V$ Intrinsic value of a firm, the present value of future dividends per share

$X$ Exercise price of an option

$y$ Yield to maturity

$\alpha$ Rate of return beyond the value that would be forecast from the market's return and the systematic risk of the security

$\beta$ Systematic or market risk of a security

$\rho_{ij}$ Correlation coefficient between returns on securities $i$ and $j$

$\sigma$ Standard deviation

$\sigma^2$ Variance

## Measures of Risk

Variance of returns: $\sigma^2 = \sum_s p(s)[r(s) - E(r)]^2$

Standard deviation: $\sigma = \sqrt{\sigma^2}$

Covariance between returns: $\operatorname{Cov}(r_i, r_j) = \sum_s p(s) [r_i(s) - E(r_i)] [r_j(s) - E(r_j)]$

Beta of security $i$: $\beta_i = \frac{\operatorname{Cov}(r_i, r_M)}{\operatorname{Var}(r_M)}$

## Portfolio Theory

Expected rate of return on a portfolio with weights $w_i$ in each security: $E(r_p) = \sum_{i=1}^n w_i E(r_i)$

Variance of portfolio rate of return: $\sigma_p^2 = \sum_{j=1}^n \sum_{i=1}^n w_j w_i \operatorname{Cov}(r_i, r_j)$

## Market Equilibrium

The CAPM security market line: $E(r_i) = r_f + \beta_i[E(r_M) - r_f]$

Multifactor security market line (in excess returns): $E(R_i) = \beta_{iM}E(R_M) + \sum_{k=1}^K \beta_{ik}E(R_k)$

## Fixed-Income Analysis

Present value of 1:

Discrete period compounding: $\mathrm{PV} = 1 / (1 + r)^T$

Continuous compounding: $\mathrm{PV} = e^{-r_{\mathrm{cc}}T}$

Forward rate of interest for period $T$: $f_T = \frac{(1 + y_T)^T}{(1 + y_{T-1})^{T-1}} - 1$

Real interest rate: $r_{\mathrm{real}} = \frac{1 + r_{\mathrm{nom}}}{1 + i} - 1$ where $r_{\mathrm{nom}}$ is the nominal interest rate and $i$ is the inflation rate


Duration of a security: $D = \sum_{t=1}^T t \times \frac{CF_t}{(1 + y)^t} / \text{Price}$

Modified duration: $D^* = D / (1 + y)$

## Equity Analysis

Constant growth dividend discount model: $V_0 = \frac{D_1}{k - g}$

Sustainable growth rate of dividends: $g = \mathrm{ROE} \times b$

Price/earnings multiple: $P/E = \frac{1 - b}{k - \mathrm{ROE} \times b}$

$$
\mathrm{ROE} = (1 - \text{Tax rate}) \left[ \mathrm{ROA} + (\mathrm{ROA} - \text{Interest rate}) \frac{\text{Debt}}{\text{Equity}} \right]
$$

## Derivative Assets

Put-call parity: $P = C - S_0 + \mathrm{PV}(X + \mathrm{dividends})$

Black-Scholes formula (with constant dividend yield): $C = Se^{-\delta T}N(d_1) - Xe^{-rT}N(d_2)$

$$
d_1 = \frac{\ln(S/X) + (r - \delta + \sigma^2/2)T}{\sigma\sqrt{T}}
$$

$$
d_2 = d_1 - \sigma\sqrt{T}
$$

Spot-futures parity: $F_0 = S_0(1 + r - d)^T$

Interest rate parity (direct exchange rate quotes): $F_0 = E_0\left(\frac{1 + r_{\mathrm{US}}}{1 + r_{\mathrm{foreign}}}\right)^T$

## Performance Evaluation

Sharpe ratio: $S_p = \frac{\overline{r}_p - \overline{r}_f}{\sigma_p}$

Treynor's measure: $T_p = \frac{\overline{r}_p - \overline{r}_f}{\beta_p}$

Jensen's alpha: $\alpha_p = \overline{r}_p - [\overline{r}_f + \beta_p(\overline{r}_M - \overline{r}_f)]$

Information ratio: $\frac{\alpha_p}{\sigma(e_p)}$

Geometric average return: $r_G = \left[(1 + r_1)(1 + r_2)\dots(1 + r_T)\right]^{1/T} - 1$
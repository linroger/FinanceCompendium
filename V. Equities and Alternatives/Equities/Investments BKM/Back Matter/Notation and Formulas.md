---
aliases:
  - Notation and Formulas
tags:
key_concepts:
parent_directory: V. Equities and Alternatives/Equities/Investments BKM/Back Matter
cssclasses: academia
title: "Notation and Formulas"
---

# Commonly Used Notation

$b$  Retention or plowback ratio

C Call option value

CF Cash flow

$\mathbf{Cov}(\boldsymbol {r}_i,\boldsymbol {r}_j)$  Covariance between returns on securities  $i$  and  $j$

D Duration

$e$  2.718, the base for the natural logarithm, used for continuous compounding

$e_{it}$  The firm-specific return, also called the residual return, of security  $i$  in period  $t$

E Exchange rate

$E(x)$  Expected value of random variable  $x$

$f$  （204 Forward rate of interest

F Futures price

Growth rate of dividends

Hedge ratio for an option, commonly called the option's delta

$\pmb{i}$  Inflation rate

Market capitalization rate, the required rate of return on a firm's stock

In Natural logarithm function

M The market portfolio

$N(d)$  Cumulative normal function, the probability that a standard normal random variable will have value less than  $d$

$\mathbf{p}$  Probability

Put value

P/E Price-to-earnings multiple

PV Present value

Rate of return on a security; for fixed-income securities,  $r$  may denote the rate of interest for a particular period

$r_f$  The risk-free rate of interest

$r_{M}$  The rate of return on the market portfolio

ROE Return on equity, incremental economic earnings per dollar reinvested in the firm

$S_{p}$  Sharpe ratio, also called the reward-to-volatility ratio; the excess expected return divided by the standard deviation

Time

$T_{p}$  Treynor's measure for a portfolio, excess expected return divided by beta

V Intrinsic value of a firm, the present value of future dividends per share

$X$  Exercise price of an option

Yield to maturity

$\alpha$  Rate of return beyond the value that would be forecast from the market's return and the systematic risk of the security

$\pmb{\beta}$  Systematic or market risk of a security

$\pmb{\rho}_{ij}$  Correlation coefficient between returns on securities  $i$  and  $j$

Standard deviation

$\sigma^2$  Variance

# Measures of Risk

Variance of returns:  $\sigma^2 = \sum_s p(s)[r(s) - E(r)]^2$

Standard deviation:  $\sigma = \sqrt{\sigma^2}$

Covariance between returns:  $\operatorname{Cov}(r_i, r_j) = \sum_s p(s) [r_i(s) - E(r_i)] [r_j(s) - E(r_j)]$

Beta of security  $i\colon \beta_{i} = \frac{\operatorname{Cov}(r_{i},r_{M})}{\operatorname{Var}(r_{M})}$

# Portfolio Theory

Expected rate of return on a portfolio with weights  $w_{i}$  in each security:  $E(r_{p}) = \sum_{i = 1}^{n}w_{i}E(r_{i})$

Variance of portfolio rate of return:  $\sigma_p^2 = \sum_{j=1}^{n} \sum_{i=1}^{n} w_j w_i \operatorname{Cov}(r_i, r_j)$

# Market Equilibrium

The CAPM security market line:  $E(r_{i}) = r_{f} + \beta_{i}[E(r_{M}) - r_{f}]$

Multifactor security market line (in excess returns):  $E(R_{i}) = \beta_{iM}E(R_{M}) + \sum_{k = 1}^{K}\beta_{ik}E(R_{k})$

# Fixed-Income Analysis

Present value of 1:

Discrete period compounding:  $\mathrm{PV} = 1 / (1 + r)^T$

Continuous compounding:  $\mathrm{PV} = e^{-r_{\mathrm{cc}}T}$

Forward rate of interest for period  $T$ :  $f_{T} = \frac{(1 + y_{T})^{T}}{(1 + y_{T - 1})^{T - 1}} - 1$

Real interest rate:  $r_{\mathrm{real}} = \frac{1 + r_{\mathrm{nom}}}{1 + i} - 1$ where  $r_{\mathrm{nom}}$  is the nominal interest rate and  $i$  is the inflation rate


Duration of a security:  $D = \sum_{t=1}^{T} t \times \frac{CF_t}{(1 + y)^t} / \text{Price}$

Modified duration:  $D^{*} = D / (1 + y)$

# Equity Analysis

Constant growth dividend discount model:  $V_{0} = \frac{D_{1}}{k - g}$

Sustainable growth rate of dividends:  $g = \mathrm{ROE} \times b$

Price/earnings multiple:  $P / E = \frac{1 - b}{k - \mathrm{ROE} \times b}$

$$
\mathrm {R O E} = (1 - \text {T a x r a t e}) \left[ \mathrm {R O A} + (\mathrm {R O A} - \text {I n t e r s t r a t e}) \frac {\text {D e b t}}{\text {E q u i t y}} \right]
$$

# Derivative Assets

Put-call parity:  $P = C - S_{0} + \mathrm{PV}(X + \mathrm{dividends})$

Black-Scholes formula (with constant dividend yield):  $C = Se^{-\delta T}N(d_1) - Xe^{-rT}N(d_2)$

$$ d _ {1} = \frac {\ln (S / X) + (r - \delta + \sigma^ {2} / 2) T}{\sigma \sqrt {T}}
$$

$$ d _ {2} = d _ {1} - \sigma \sqrt {T}
$$

Spot-futures parity:  $F_{0} = S_{0}(1 + r - d)^{T}$

Interest rate parity (direct exchange rate quotes):  $F_{0} = E_{0}\left(\frac{1 + r_{\mathrm{US}}}{1 + r_{\mathrm{foreign}}}\right)^{T}$

# Performance Evaluation

Sharpe ratio:  $S_{p} = \frac{\overline{r}_{p} - \overline{r}_{f}}{\sigma_{p}}$

Treynor's measure:  $T_{p} = \frac{\overline{r}_{p} - \overline{r}_{f}}{\beta_{p}}$

Jensen's alpha:  $\alpha_{p} = \overline{r}_{p} - [\overline{r}_{f} + \beta_{p}(\overline{r}_{M} - \overline{r}_{f})]$

Information ratio:  $\frac{\alpha_p}{\sigma(e_p)}$

Geometric average return:  $r_{G} = \left[(1 + r_{1})(1 + r_{2})\dots (1 + r_{T})\right]^{1 / T} - 1$
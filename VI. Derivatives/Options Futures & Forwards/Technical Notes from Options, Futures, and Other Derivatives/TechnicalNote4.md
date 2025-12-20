---
cssclasses: academia
title: Technical Note 4 - Exact Procedure for Valuing American Calls on Dividend-Paying Stocks
tags:
  - american_options
  - roll_geske_whaley
  - dividend_paying_stocks
  - option_valuation
  - early_exercise
  - bivariate_normal
parent_directory: Technical Notes from Options, Futures, and Other Derivatives
key_concepts:
  - Roll-Geske-Whaley formula for American call options with dividends
  - Critical stock price calculation for optimal early exercise
---

# Technical Note 4 - Exact Procedure for Valuing American Calls on Dividend-Paying Stocks

The Roll, Geske, and Whaley formula for the value of an American call option on a stock paying a single dividend $D_{1}$ at time $t_{1}$ is

$$
\begin{aligned}
C &= \left(S_{0} - D_{1} e^{-rt_{1}}\right) N\left(b_{1}\right) + \left(S_{0} - D_{1} e^{-rt_{1}}\right) M\left(a_{1}, -b_{1}; -\sqrt{\frac{t_{1}}{T}}\right) \\
&\quad - K e^{-rT} M\left(a_{2}, -b_{2}; -\sqrt{\frac{t_{1}}{T}}\right) - (K - D_{1}) e^{-rt_{1}} N\left(b_{2}\right) \tag{1}
\end{aligned}
$$

where

$$
\begin{aligned}
a_{1} &= \frac{\ln\left[(S_{0} - D_{1} e^{-rt_{1}}) / K\right] + (r + \sigma^{2} / 2) T}{\sigma \sqrt{T}} \\
a_{2} &= a_{1} - \sigma \sqrt{T} \\
b_{1} &= \frac{\ln\left[(S_{0} - D_{1} e^{-rt_{1}}) / S^{*}\right] + (r + \sigma^{2} / 2) t_{1}}{\sigma \sqrt{t_{1}}} \\
b_{2} &= b_{1} - \sigma \sqrt{t_{1}}
\end{aligned}
$$

The variable $\sigma$ is the volatility of the stock price net of the present value of the dividend. The function $M(a,b;\rho)$ is the cumulative probability, in a standardized bivariate normal distribution, that the first variable is less than $a$ and the second variable is less than $b$, when the coefficient of correlation between the variables is $\rho$. A procedure for calculating the $M$ function is given in Technical Note 5. The variable $S^{*}$ is the solution to

$$
c(S^{*}) = S^{*} + D_{1} - K
$$

where $c(S^{*})$ is the Black-Scholes-Merton option price when the stock price is $S^{*}$ and the time to maturity is $T - t_{1}$. When early exercise is never optimal, $S^{*} = \infty$. In this case $b_{1} = b_{2} = -\infty$ and equation (1) reduces to the Black-Scholes-Merton equation with $S_{0}$ replaced by $S_{0} - D_{1}e^{-rt_{1}}$. In other situations, $S^{*} < \infty$ and the option should be exercised at time $t_{1}$ when $S(t_{1}) > S^{*} + D_{1}$.

When several dividends are anticipated, early exercise is normally optimal only on the final ex-dividend date as explained in the text. It follows that the Roll, Geske, and Whaley formula can be used with $S_{0}$ reduced by the present value of all dividends except the final one. The variable $D_{1}$ should be set equal to the final dividend and $t_{1}$ should be set equal to the final ex-dividend date.
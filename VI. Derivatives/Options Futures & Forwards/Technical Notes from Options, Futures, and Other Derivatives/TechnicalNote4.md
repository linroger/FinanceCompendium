---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Technical Note No. 4* Options, Futures, and Other Derivatives John Hull
linter-yaml-title-alias: Technical Note No. 4* Options, Futures, and Other Derivatives John Hull
---

# Technical Note No. 4* Options, Futures, and Other Derivatives John Hull

# Exact Procedure for Valuing American Calls on Dividend-Paying Stocks

The Roll, Geske, and Whaley formula for the value of an American call option on a stock paying a single dividend  $D_{1}$  at time  $t_{1}$  is

$$
\begin{array}{l} C = \left(S _ {0} - D _ {1} e ^ {- r t _ {1}}\right) N \left(b _ {1}\right) + \left(S _ {0} - D _ {1} e ^ {- r t _ {1}}\right) M \left(a _ {1}, - b _ {1}; - \sqrt {\frac {t _ {1}}{T}}\right) \\ - K e ^ {- r T} M \left(a _ {2}, - b _ {2}; - \sqrt {\frac {t _ {1}}{T}}\right) - (K - D _ {1}) e ^ {- r t _ {1}} N \left(b _ {2}\right) \tag {1} \\ \end{array}
$$

where

$$
\begin{array}{l} a _ {1} = \frac {\ln [ (S _ {0} - D _ {1} e ^ {- r t _ {1}}) / K ] + (r + \sigma^ {2} / 2) T}{\sigma \sqrt {T}} \\ a _ {2} = a _ {1} - \sigma \sqrt {T} \\ b _ {1} = \frac {\ln [ (S _ {0} - D _ {1} e ^ {- r t _ {1}}) / S ^ {*} ] + (r + \sigma^ {2} / 2) t _ {1}}{\sigma \sqrt {t _ {1}}} \\ b _ {2} = b _ {1} - \sigma \sqrt {t _ {1}} \\ \end{array}
$$

The variable  $\sigma$  is the volatility of the stock price net of the present value of the dividend. The function,  $M(a,b;\rho)$ , is the cumulative probability, in a standardized bivariate normal distribution, that the first variable is less than  $a$  and the second variable is less than  $b$ , when the coefficient of correlation between the variables is  $\rho$ . A procedure for calculating the  $M$  function is given in Technical Note 5. The variable  $S^{*}$  is the solution to

$$
c (S ^ {*}) = S ^ {*} + D _ {1} - K
$$

where  $c(S^{*})$  is the Black-Scholes-Merton option price when the stock price is  $S^{*}$  and the time to maturity is  $T - t_{1}$ . When early exercise is never optimal,  $S^{*} = \infty$ . In this case  $b_{1} = b_{2} = -\infty$  and equation (1) reduces to the Black-Scholes-Merton equation with  $S_{0}$  replaced by  $S_{0} - D_{1}e^{-rt_{1}}$ . In other situations,  $S^{*} < \infty$  and the option should be exercised at time  $t_{1}$  when  $S(t_{1}) > S^{*} + D_{1}$ .

When several dividends are anticipated, early exercise is normally optimal only on the final ex-dividend date as explained in the text. It follows that the Roll, Geske, and Whaley formula can be used with  $S_0$  reduced by the present value of all dividends except the final one. The variable,  $D_{1}$ , should be set equal to the final dividend and  $t_1$  should be set equal to the final ex-dividend date.
---
title: "Black-Scholes-Merton Model"
parent_directory: Options, Futures, and Other Derivatives
formatted: 2025-12-20 19:00:00 PM
formatter_model: kimi-k2-turbo
cli-tool: opencode
primary_tags:
  - black-scholes model
  - option pricing theory
  - risk neutral valuation
secondary_tags:
  - geometric brownian motion
  - implied volatility
  - lognormal distribution
  - volatility estimation
  - dividend adjustment
  - employee stock options
  - warrants pricing
cssclasses: academia
---

## 15 Black-Scholes-Merton Model

The model of stock price behavior used by Black, Scholes, and Merton is the model we developed in Chapter 14. It assumes that percentage changes in the stock price in a very short period of time are normally distributed. Define

$\mu$ : Expected return in a short period of time (annualized)

$\sigma$  : Volatility of the stock price.

The mean and standard deviation of the return in time  $\Delta t$  are approximately  $\mu \Delta t$  and  $\sigma \sqrt{\Delta t}$ , so that

$$
\frac {\Delta S}{S} \sim \phi (\mu \Delta t, \sigma^ {2} \Delta t) \tag {15.1}
$$ where  $\Delta S$  is the change in the stock price  $S$  in time  $\Delta t$ , and  $\phi(m, \nu)$  denotes a normal distribution with mean  $m$  and variance  $\nu$ . (This is equation (14.9).)


As shown in Section 14.7, the model implies that

$$

\ln S _ {T} - \ln S _ {0} \sim \phi \left[ \left(\mu - \frac {\sigma^ {2}}{2}\right) T, \sigma^ {2} T \right]

$$ so that


$$

\ln \frac {S _ {T}}{S _ {0}} \sim \phi \left[ \left(\mu - \frac {\sigma^ {2}}{2}\right) T, \sigma^ {2} T \right] \tag {15.2}

$$ and


$$

\ln S _ {T} \sim \phi \left[ \ln S _ {0} + \left(\mu - \frac {\sigma^ {2}}{2}\right) T, \sigma^ {2} T \right] \tag {15.3}

$$ where  $S_{T}$  is the stock price at a future time  $T$  and  $S_{0}$  is the stock price at time 0. There is no approximation here. The variable  $\ln S_{T}$  is normally distributed, so that  $S_{T}$  has a lognormal distribution. The mean of  $\ln S_{T}$  is  $\ln S_{0} + (\mu - \sigma^{2}/2)T$  and the standard deviation of  $\ln S_{T}$  is  $\sigma \sqrt{T}$ .

## Example 15.1

Consider a stock with an initial price of 40, an expected return of 16\% per annum, and a volatility of 20\% per annum. From equation (15.3), the probability distribution of the stock price S_{T} in 6 months' time is given by

$$
\begin{array}{l} \ln S _ {T} \sim \phi [ \ln 40 + (0.16 - 0.2 ^ {2} / 2) \times 0.5, 0.2 ^ {2} \times 0.5 ] \\ \ln S _ {T} \sim \phi (3.759, 0.02) \\ \end{array}
$$

There is a  $95\%$  probability that a normally distributed variable has a value within 1.96 standard deviations of its mean. In this case, the standard deviation is  $\sqrt{0.02} = 0.141$ . Hence, with  $95\%$  confidence,

$$
e ^ {3.759 - 1.96 \times 0.141} < S _ {T} < e ^ {3.759 + 1.96 \times 0.141}
$$

This can be written  $b \pm  {2.5}$

$$ e ^ {3. 7 5 9 - 1. 9 6 \times 0. 1 4 1} <   S _ {T} <   e ^ {3. 7 5 9 + 1. 9 6 \times 0. 1 4 1}
$$ or


$$

3 2. 5 5 <   S _ {T} <   5 6. 5 6

$$

Thus, there is a  $95\%$  probability that the stock price in 6 months will lie between 32.55 and 56.56.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/778e60b7b7b82dcc0fd9a05079fffdcc89c5ff999e9793abe3ffc97a967de2d3.jpg)
Figure 15.1 Lognormal distribution.

A variable that has a lognormal distribution can take any value between zero and infinity. Figure 15.1 illustrates the shape of a lognormal distribution. Unlike the normal distribution, it is skewed so that the mean, median, and mode are all different. From equation (15.3) and the properties of the lognormal distribution, it can be shown that the expected value  $E(S_T)$  of  $S_T$  is given by

$$

E \left(S _ {T}\right) = S _ {0} e ^ {\mu T} \tag {15.4}

$$

The variance  $\operatorname{var}(S_T)$  of  $S_{T}$ , can be shown to be given by

$$

\operatorname {v a r} \left(S _ {T}\right) = S _ {0} ^ {2} e ^ {2 \mu T} \left(e ^ {\sigma^ {2} T} - 1\right) \tag {15.5}

$$

# Example 15.2

Consider a stock where the current price is \$20, the expected return is 20\% per annum, and the volatility is 40\% per annum. The expected stock price,  $E(S_{T})$ , and the variance of the stock price,  $\operatorname{var}(S_T)$ , in 1 year are given by

$$

E \left(S _ {T}\right) = 2 0 e ^ {0. 2 \times 1} = 2 4. 4 3 \quad \text {a n d} \quad \operatorname {v a r} \left(S _ {T}\right) = 4 0 0 e ^ {2 \times 0. 2 \times 1} \left(e ^ {0. 4 ^ {2} \times 1} - 1\right) = 1 0 3. 5 4

$$

The standard deviation of the stock price in 1 year is  $\sqrt{103.54}$ , or 10.18.

# 15.2 THE DISTRIBUTION OF THE RATE OF RETURN

The lognormal property of stock prices can be used to provide information on the probability distribution of the continuously compounded rate of return earned on a stock between times 0 and  $T$ . If we define the continuously compounded rate of return per annum realized between times 0 and  $T$  as  $x$ , then

$$

S _ {T} = S _ {0} e ^ {x T}

$$ so that


$$ x = \frac {1}{T} \ln \frac {S _ {T}}{S _ {0}} \tag {15.6}
$$

From equation (15.2), it follows that

$$ x \sim \phi \left(\mu - \frac {\sigma^ {2}}{2}, \frac {\sigma^ {2}}{T}\right) \tag {15.7}
$$

Thus, the continuously compounded rate of return per annum is normally distributed with mean  $\mu - \sigma^2 / 2$  and standard deviation  $\sigma / \sqrt{T}$ . As  $T$  increases, the standard deviation of  $x$  declines. To understand the reason for this, consider two cases:  $T = 1$  and  $T = 20$ . We are more certain about the average return per year over 20 years than we are about the return in any one year.

# Example 15.3

Consider a stock with an expected return of  $17\%$  per annum and a volatility of  $20\%$  per annum. The probability distribution for the average rate of return (continuously compounded) realized over 3 years is normal, with mean

$$
100 \times (1.124) ^ {5} = 179.40
$$

\sqrt {\frac {0 . 2 ^ {2}}{3}} = 0. 1 1 5 5

$$ or  $11.55\%$  per annum. Because there is a  $95\%$  chance that a normally distributed variable will lie within 1.96 standard deviations of its mean, we can be  $95\%$  confident that the average continuously compounded return realized over 3 years will be between  $15 - 1.96 \times 11.55 = -7.6\%$  and  $15 + 1.96 \times 11.55 = +37.6\%$  per annum.

# 15.3 THE EXPECTED RETURN

The expected return,  $\mu$ , required by investors from a stock depends on the riskiness of the stock. The higher the risk, the higher the expected return. It also depends on the level of interest rates in the economy. The higher the level of interest rates, the higher the expected return required on any given stock. Fortunately, we do not have to concern ourselves with the determinants of  $\mu$  in any detail. It turns out that the value of a stock option, when expressed in terms of the value of the underlying stock, does not depend on  $\mu$  at all. Nevertheless, there is one aspect of the expected return from a stock that frequently causes confusion and needs to be explained.

Our model of stock price behavior implies that, in a very short period of time  $\Delta t$ , the mean return is  $\mu \Delta t$ . It is natural to assume from this that  $\mu$  is the expected continuously compounded return on the stock. However, this is not the case. The continuously compounded return,  $x$ , actually realized over a period of time of length  $T$ is given by equation (15.6) as

$$ x = \frac {1}{T} \ln \frac {S _ {T}}{S _ {0}}
$$ and, as indicated in equation (15.7), the expected value  $E(x)$  of  $x$  is  $\mu - \sigma^2 / 2$ .


The reason why the expected continuously compounded return is different from  $\mu$  is subtle, but important. Suppose we consider a very large number of very short periods of time of length  $\Delta t$ . Define  $S_{i}$  as the stock price at the end of the  $i$ th interval and  $\Delta S_{i}$  as  $S_{i+1} - S_{i}$ . Under the assumptions we are making for stock price behavior, the arithmetic average of the returns on the stock in each interval is close to  $\mu$ . In other words,  $\mu \Delta t$  is close to the arithmetic mean of the  $\Delta S_{i} / S_{i}$ . However, the expected return over the whole period covered by the data, expressed with a compounding interval of  $\Delta t$ , is a geometric average and is close to  $\mu - \sigma^{2} / 2$ , not  $\mu$ . Business Snapshot 15.1 provides a numerical example concerning the mutual fund industry to illustrate why this is so.

For another explanation of what is going on, we start with equation (15.4):

$$

E (S _ {T}) = S _ {0} e ^ {\mu T}

$$

Taking logarithms, we get

$$

\ln \left[ E \left(S _ {T}\right) \right] = \ln \left(S _ {0}\right) + \mu T

$$

It is now tempting to set  $\ln [E(S_T)] = E[\ln (S_T)]$ , so that  $E[\ln (S_T)] - \ln (S_0) = \mu T$ , or  $E[\ln (S_T / S_0)] = \mu T$ , which leads to  $E(x) = \mu$ . However, we cannot do this because  $\ln$  is a nonlinear function. In fact,  $\ln [E(S_T)] > E[\ln (S_T)]$ , so that  $E[\ln (S_T / S_0)] < \mu T$ , which leads to  $E(x) < \mu$ . (As shown above,  $E(x) = \mu - \sigma^2 / 2$ .)

# 15.4 VOLATILITY

The volatility,  $\sigma$ , of a stock is a measure of our uncertainty about the returns provided by the stock. Stocks typically have a volatility between  $15\%$  and  $60\%$ .

From equation (15.7), the volatility of a stock price can be defined as the standard deviation of the return provided by the stock in 1 year when the return is expressed using continuous compounding.

When  $\Delta t$  is small, equation (15.1) shows that  $\sigma^2\Delta t$  is approximately equal to the variance of the percentage change in the stock price in time  $\Delta t$ . This means that  $\sigma \sqrt{\Delta t}$  is approximately equal to the standard deviation of the percentage change in the stock price in time  $\Delta t$ . Suppose that  $\sigma = 0.3$ , or  $30\%$ , per annum and the current stock price is 50. The standard deviation of the percentage change in the stock price in 1 week is approximately

$$

30 \times \sqrt {\frac {1}{52}} = 4.16 \%

$$

A 1-standard-deviation move in the stock price in 1 week is therefore  $50 \times 0.0416 = 2.08$ .

Uncertainty about a future stock price, as measured by its standard deviation, increases—at least approximately—with the square root of how far ahead we are looking. For example, the standard deviation of the stock price in 4 weeks is approximately twice the standard deviation in 1 week.

## Business Snapshot 15.1 Mutual Fund Returns Can Be Misleading

The difference between  $\mu$  and  $\mu - \sigma^2 / 2$  is closely related to an issue in the reporting of mutual fund returns. Suppose that the following is a sequence of returns per annum reported by a mutual fund manager over the last five years (measured using annual compounding):  $15\%$ ,  $20\%$ ,  $30\%$ ,  $-20\%$ ,  $25\%$ .

The arithmetic mean of the returns, calculated by taking the sum of the returns and dividing by 5, is  $14\%$ . However, an investor would actually earn less than  $14\%$  per annum by leaving the money invested in the fund for 5 years. The dollar value of 100 at the end of the 5 years would be

$$

1 0 0 \times 1. 1 5 \times 1. 2 0 \times 1. 3 0 \times 0. 8 0 \times 1. 2 5 = \$ 1 7 9. 4 0

$$

By contrast, a  $14\%$  return with annual compounding would give

$$

1 0 0 \times 1. 1 4 ^ {5} = \$ 1 9 2. 5 4

$$

The return that gives 179.40 at the end of five years is 12.4\%. This is because

$$

1 0 0 \times (1. 1 2 4) ^ {5} = 1 7 9. 4 0

$$

What average return should the fund manager report? It is tempting for the manager to make a statement such as: "The average of the returns per year that we have realized in the last 5 years is  $14\%$ ." Although true, this is misleading. It is much less misleading to say: "The average return realized by someone who invested with us for the last 5 years is  $12.4\%$  per year." In some jurisdictions, regulations require fund managers to report returns the second way.

This phenomenon is an example of a result that is well known in mathematics. The geometric mean of a set of numbers is always less than the arithmetic mean. In our example, the return multipliers each year are 1.15, 1.20, 1.30, 0.80, and 1.25. The arithmetic mean of these numbers is 1.140, but the geometric mean is only 1.124 and it is the geometric mean that equals 1 plus the return realized over the 5 years.

# Estimating Volatility from Historical Data

To estimate the volatility of a stock price empirically, the stock price is usually observed at fixed intervals of time (e.g., every day, week, or month). Define:

$n + 1$ : Number of observations

$S_{i}$  : Stock price at end of ith interval, with  $i = 0,1,\dots ,n$

$\tau$  : Length of time interval in years and let


$$ u _ {i} = \ln \left(\frac {S _ {i}}{S _ {i - 1}}\right) \quad \text {f o r} i = 1, 2, \dots , n
$$

The usual estimate,  $s$ , of the standard deviation of the  $u_{i}$  is given by

$$ s = \sqrt {\frac {1}{n - 1} \sum_ {i = 1} ^ {n} \left(u _ {i} - \bar {u}\right) ^ {2}}
$$ or


$$ s = \sqrt {\frac {1}{n - 1} \sum_ {i = 1} ^ {n} u _ {i} ^ {2} - \frac {1}{n (n - 1)} \left(\sum_ {i = 1} ^ {n} u _ {i}\right) ^ {2}}
$$ where  $\overline{u}$  is the mean of the  $u_{i}$ .


From equation (15.2), the standard deviation of the  $u_{i}$  is  $\sigma \sqrt{\tau}$ . The variable  $s$  is therefore an estimate of  $\sigma \sqrt{\tau}$ . It follows that  $\sigma$  itself can be estimated as  $\hat{\sigma}$ , where

$$

\hat {\sigma} = \frac {s}{\sqrt {\tau}}

$$

The standard error of this estimate can be shown to be approximately  $\hat{\sigma} / \sqrt{2n}$ .

The prices of actively traded options are not usually calculated from volatilities based on historical data. As we shall see later in this chapter, implied volatilities are used by traders. However, estimates of volatility based on historical data are used extensively in risk management. Usually risk managers set  $\tau$  equal to one day. A problem that risk managers have to deal with is that volatilities tend to change through time. There are periods of high volatility and periods of low volatility. This affects the amount of data used to estimate volatility (i.e., the choice of  $n$ ). If volatilities were constant, the accuracy of an estimate would increase as  $n$  increased. However, data that is too old may not be relevant to current market conditions. A compromise that seems to work reasonably well is to use 90 to 180 days of data. An alternative rule of thumb is to set  $n$  equal to the number of days to which the volatility is to be applied. If the estimate is to be applied over a two-year future period, two years of historical data would then be used. It is natural to look for a way of giving more weight to recent daily price movements (i.e., values of  $u_{i}$  for recent time periods). An approach known as GARCH, which will be discussed in Chapter 23 does this.

# Example 15.4

Table 15.1 shows a possible sequence of stock prices during 21 consecutive trading days. In this case,  $n = 20$ , so that

$$

\sum_ {i = 1} ^ {n} u _ {i} = 0. 0 9 5 3 1 \quad \text {a n d} \quad \sum_ {i = 1} ^ {n} u _ {i} ^ {2} = 0. 0 0 3 2 6

$$ and the estimate of the standard deviation of the daily return is


$$

\sqrt {\frac {0 . 0 0 3 2 6}{1 9} - \frac {0 . 0 9 5 3 1 ^ {2}}{2 0 \times 1 9}} = 0. 0 1 2 1 6

$$ or  $1.216\%$ . Assuming that there are 252 trading days per year,  $\tau = 1 / 252$  and the data give an estimate for the volatility per annum of  $0.01216\sqrt{252} = 0.193$ , or  $19.3\%$ . The standard error of this estimate is

$$
\frac {0 . 1 9 3}{\sqrt {2 \times 2 0}} = 0. 0 3 1
$$ or  $3.1\%$  per annum.


Table 15.1 Computation of volatility.

<table><tr><td>Day i</td><td>Closing stock price (dollars), Si</td><td>Price relative Si/Si-1</td><td>Daily return ui = ln(Si/Si-1)</td></tr><tr><td>0</td><td>20.00</td><td></td><td></td></tr><tr><td>1</td><td>20.10</td><td>1.00500</td><td>0.00499</td></tr><tr><td>2</td><td>19.90</td><td>0.99005</td><td>-0.01000</td></tr><tr><td>3</td><td>20.00</td><td>1.00503</td><td>0.00501</td></tr><tr><td>4</td><td>20.50</td><td>1.02500</td><td>0.02469</td></tr><tr><td>5</td><td>20.25</td><td>0.98780</td><td>-0.01227</td></tr><tr><td>6</td><td>20.90</td><td>1.03210</td><td>0.03159</td></tr><tr><td>7</td><td>20.90</td><td>1.00000</td><td>0.00000</td></tr><tr><td>8</td><td>20.90</td><td>1.00000</td><td>0.00000</td></tr><tr><td>9</td><td>20.75</td><td>0.99282</td><td>-0.00720</td></tr><tr><td>10</td><td>20.75</td><td>1.00000</td><td>0.00000</td></tr><tr><td>11</td><td>21.00</td><td>1.01205</td><td>0.01198</td></tr><tr><td>12</td><td>21.10</td><td>1.00476</td><td>0.00475</td></tr><tr><td>13</td><td>20.90</td><td>0.99052</td><td>-0.00952</td></tr><tr><td>14</td><td>20.90</td><td>1.00000</td><td>0.00000</td></tr><tr><td>15</td><td>21.25</td><td>1.01675</td><td>0.01661</td></tr><tr><td>16</td><td>21.40</td><td>1.00706</td><td>0.00703</td></tr><tr><td>17</td><td>21.40</td><td>1.00000</td><td>0.00000</td></tr><tr><td>18</td><td>21.25</td><td>0.99299</td><td>-0.00703</td></tr><tr><td>19</td><td>21.75</td><td>1.02353</td><td>0.02326</td></tr><tr><td>20</td><td>22.00</td><td>1.01149</td><td>0.01143</td></tr></table>

The foregoing analysis assumes that the stock pays no dividends, but it can be adapted to accommodate dividend-paying stocks. The return,  $u_{i}$ , during a time interval that includes an ex-dividend day is given by

$$ u _ {i} = \ln \frac {S _ {i} + D}{S _ {i - 1}}
$$ where  $D$  is the amount of the dividend. The return in other time intervals is still


$$ u _ {i} = \ln \frac {S _ {i}}{S _ {i - 1}}
$$

However, as tax factors play a part in determining returns around an ex-dividend date, it is probably best to discard altogether data for intervals that include an ex-dividend date.

# Trading Days vs. Calendar Days

An important issue is whether time should be measured in calendar days or trading days when volatility parameters are being estimated and used. As shown in Business Snapshot 15.2, research shows that volatility is much higher when the exchange is open for trading than when it is closed. As a result, practitioners tend to ignore days when the exchange is closed when estimating volatility from historical data and when calculating the life of an option. The volatility per annum is calculated from the volatility per

# Business Snapshot 15.2 What Causes Volatility?

It is natural to assume that the volatility of a stock is caused by new information reaching the market. This new information causes people to revise their opinions about the value of the stock. The price of the stock changes and volatility results. This view of what causes volatility is not supported by research. With several years of daily stock price data, researchers can calculate:

1. The variance of stock price returns between the close of trading on one day and the close of trading on the next day when there are no intervening nontrading days
2. The variance of the stock price returns between the close of trading on Friday and the close of trading on Monday

The second of these is the variance of returns over a 3-day period. The first is a variance over a 1-day period. We might reasonably expect the second variance to be three times as great as the first variance. Fama (1965), French (1980), and French and Roll (1986) show that this is not the case. These three research studies estimate the second variance to be, respectively,  $22\%$ ,  $19\%$ , and  $10.7\%$  higher than the first variance.

At this stage one might be tempted to argue that these results are explained by more news reaching the market when the market is open for trading. But research by Roll (1984) does not support this explanation. Roll looked at the prices of orange juice futures. By far the most important news for orange juice futures prices is news about the weather and this is equally likely to arrive at any time. When Roll did a similar analysis to that just described for stocks, he found that the second (Friday-to-Monday) variance for orange juice futures is only 1.54 times the first variance.

The only reasonable conclusion from all this is that volatility is to a large extent caused by trading itself. (Traders usually have no difficulty accepting this conclusion!) trading day using the formula

$$
\frac {\text {V o l a t i l i t y}}{\text {p e r a n n u m}} = \frac {\text {V o l a t i l i t y}}{\text {p e r t r a d i n g d a y}} \times \sqrt {\frac {\text {N u m b e r o f t r a d i n g d a y s}}{\text {p e r a n n u m}}}
$$

This is what we did in Example 15.4 when calculating volatility from the data in Table 15.1. The number of trading days in a year is usually assumed to be 252 for stocks.

The life of an option is also usually measured using trading days rather than calendar days. It is calculated as  $T$  years, where

$$
\frac {1,000,000}{1,000,000 + 200,000} \times 7.04 = 5.87
$$

# 15.5 THE IDEA UNDERLYING THE BLACK-SCHOLES-MERTON DIFFERENTIAL EQUATION

The Black-Scholes-Merton differential equation is an equation that must be satisfied by the price of any derivative dependent on a non-dividend-paying stock. The equation is derived in the next section. Here we consider the nature of the arguments we will use.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/93276fa839e4013a56ec3a88801c351d20f6e63459f16963c6a1e01eaf691e4e.jpg)

Figure 15.2 Relationship between call price and stock price. Current stock price is  $S_0$ .

These are similar to the no-arbitrage arguments we used to value stock options in Chapter 13 for the situation where stock price movements were assumed to be binomial. They involve setting up a riskless portfolio consisting of a position in the derivative and a position in the stock. In the absence of arbitrage opportunities, the return from the portfolio must be the risk-free interest rate,  $r$ . This leads to the Black-Scholes-Merton differential equation.

The reason a riskless portfolio can be set up is that the stock price and the derivative price are both affected by the same underlying source of uncertainty: stock price movements. In any short period of time, the price of the derivative is perfectly correlated with the price of the underlying stock. When an appropriate portfolio of the stock and the derivative is established, the gain or loss from the stock position always offsets the gain or loss from the derivative position so that the overall value of the portfolio at the end of the short period of time is known with certainty.

Suppose, for example, that at a particular point in time the relationship between a small change  $\Delta S$  in the stock price and the resultant small change  $\Delta c$  in the price of a European call option is given by

$$
\Delta c = 0. 4 \Delta S
$$

This means that the slope of the line representing the relationship between  $c$  and  $S$  is 0.4, as indicated in Figure 15.2. A riskless portfolio would consist of:

1. A long position in 40 shares
2. A short position in 100 call options.

Suppose, for example, that the stock price increases by 10 cents. The option price will increase by 4 cents and the 4 \times 0.1 = \ 4\$ gain on the shares is equal to the 100 \times 0.04 = \ 4 loss on the short option position.

There is one important difference between the Black-Scholes-Merton analysis and our analysis using a binomial model in Chapter 13. In Black-Scholes-Merton, the position in the stock and the derivative is riskless for only a very short period of time. (Theoretically, it remains riskless only for an instantaneously short period of time.) To remain riskless, it must be adjusted, or rebalanced, frequently. For example, the relationship between  $\Delta c$  and  $\Delta S$  in our example might change from  $\Delta c = 0.4\Delta S$  today to  $\Delta c = 0.5\Delta S$  tomorrow. This would mean that, in order to maintain the riskless position, an extra 10 shares would have to be purchased for each 100 call options sold. It is nevertheless true that the return from the riskless portfolio in any very short period of time must be the risk-free interest rate. This is the key element in the Black-Scholes-Merton analysis and leads to their pricing formulas.

# Assumptions

The assumptions we use to derive the Black-Scholes-Merton differential equation are as follows:

1. The stock price follows the process developed in Chapter 14 with  $\mu$  and  $\sigma$  constant.
2. The short selling of securities with full use of proceeds is permitted.
3. There are no transaction costs or taxes. All securities are perfectly divisible.
4. There are no dividends during the life of the derivative.
5. There are no riskless arbitrage opportunities.
6. Security trading is continuous.
7. The risk-free rate of interest,  $r$ , is constant and the same for all maturities.

As we discuss in later chapters, some of these assumptions can be relaxed. For example,  $\sigma$  and  $r$  can be known functions of  $t$ . We can even allow interest rates to be stochastic provided that the stock price distribution at maturity of the option is still lognormal.

# 15.6 DERIVATION OF THE BLACK-SCHOLES-MERTON DIFFERENTIAL EQUATION

In this section, the notation is different from elsewhere in the book. We consider a derivative's price at a general time  $t$  (not at time zero). If  $T$  is the maturity date, the time to maturity is  $T - t$ .

The stock price process we are assuming is the one we developed in Section 14.3:

$$ d S = \mu S d t + \sigma S d z \tag {15.8}
$$

Suppose that  $f$  is the price of a call option or other derivative contingent on  $S$ . The variable  $f$  must be some function of  $S$  and  $t$ . Hence, from equation (14.14),

$$ d f = \left(\frac {\partial f}{\partial S} \mu S + \frac {\partial f}{\partial t} + \frac {1}{2} \frac {\partial^ {2} f}{\partial S ^ {2}} \sigma^ {2} S ^ {2}\right) d t + \frac {\partial f}{\partial S} \sigma S d z \tag {15.9}
$$

The discrete versions of equations (15.8) and (15.9) are

$$
\Delta S = \mu S \Delta t + \sigma S \Delta z \tag {15.10}
$$ and


$$

\Delta f = \left(\frac {\partial f}{\partial S} \mu S + \frac {\partial f}{\partial t} + \frac {1}{2} \frac {\partial^ {2} f}{\partial S ^ {2}} \sigma^ {2} S ^ {2}\right) \Delta t + \frac {\partial f}{\partial S} \sigma S \Delta z \tag {15.11}

$$ where  $\Delta f$  and  $\Delta S$  are the changes in  $f$  and  $S$  in a small time interval  $\Delta t$ . Recall from

the discussion of Ito's lemma in Section 14.6 that the Wiener processes underlying  $f$  and  $S$  are the same. In other words, the  $\Delta z(= \epsilon \sqrt{\Delta t})$  in equations (15.10) and (15.11) are the same. It follows that a portfolio of the stock and the derivative can be constructed so that the Wiener process is eliminated. The portfolio is

-1: derivative
+∂f/∂S: shares.

The holder of this portfolio is short one derivative and long an amount  $\partial f / \partial S$  of shares. Define  $\Pi$  as the value of the portfolio. By definition

$$
\Pi = - f + \frac {\partial f}{\partial S} S \tag {15.12}
$$

The change  $\Delta \Pi$  in the value of the portfolio in the time interval  $\Delta t$  is given by

$$
\Delta \Pi = - \Delta f + \frac {\partial f}{\partial S} \Delta S \tag {15.13}
$$

Substituting equations (15.10) and (15.11) into equation (15.13) yields

$$
\Delta \Pi = \left(- \frac {\partial f}{\partial t} - \frac {1}{2} \frac {\partial^ {2} f}{\partial S ^ {2}} \sigma^ {2} S ^ {2}\right) \Delta t \tag {15.14}
$$

Because this equation does not involve  $\Delta z$ , the portfolio must be riskless during time  $\Delta t$ . The assumptions listed in the preceding section imply that the portfolio must instantaneously earn the same rate of return as other short-term risk-free securities. If it earned more than this return, arbitrageurs could make a riskless profit by borrowing money to buy the portfolio; if it earned less, they could make a riskless profit by shorting the portfolio and buying risk-free securities. It follows that

$$
\Delta \Pi = r \Pi \Delta t \tag {15.15}
$$ where  $r$  is the risk-free interest rate. Substituting from equations (15.12) and (15.14) into (15.15), we obtain


$$

\left(\frac {\partial f}{\partial t} + \frac {1}{2} \frac {\partial^ {2} f}{\partial S ^ {2}} \sigma^ {2} S ^ {2}\right) \Delta t = r \left(f - \frac {\partial f}{\partial S} S\right) \Delta t

$$ so that


$$

\frac {\partial f}{\partial t} + r S \frac {\partial f}{\partial S} + \frac {1}{2} \sigma^ {2} S ^ {2} \frac {\partial^ {2} f}{\partial S ^ {2}} = r f \tag {15.16}

$$

Equation (15.16) is the Black-Scholes-Merton differential equation. It has many solutions, corresponding to all the different derivatives that can be defined with  $S$  as the underlying variable. The particular derivative that is obtained when the equation is solved depends on the boundary conditions that are used. These specify the values of the derivative at the boundaries of possible values of  $S$  and  $t$ . In the case of a European call option, the key boundary condition is

$$ f = \max  (S - K, 0) \quad \text {w h e n} t = T
$$

In the case of a European put option, it is

$$ f = \max  (K - S, 0) \quad \text {w h e n} t = T
$$

# Example 15.5

A forward contract on a non-dividend-paying stock is a derivative dependent on the stock. As such, it should satisfy equation (15.16). From equation (5.5), we know that the value of the forward contract,  $f$ , at a general time  $t$  is given in terms of the stock price  $S$  at this time by

$$ f = S - K e ^ {- r (T - t)}
$$ where  $K$  is the delivery price. This means that


$$

\frac {\partial f}{\partial t} = - r K e ^ {- r (T - t)}, \quad \frac {\partial f}{\partial S} = 1, \quad \frac {\partial^ {2} f}{\partial S ^ {2}} = 0

$$

When these are substituted into the left-hand side of equation (15.16), we obtain

$$
- r K e ^ {- r (T - t)} + r S
$$

This equals  $rf$ , showing that equation (15.16) is indeed satisfied.

## A Perpetual Derivative

Consider a perpetual derivative that pays off a fixed amount  $Q$  when the stock price equals  $H$  for the first time. In this case, the value of the derivative for a particular  $S$  has no dependence on  $t$ , so the  $\frac{\partial f}{\partial t}$  term vanishes and the partial differential equation (15.16) becomes an ordinary differential equation.

Suppose first that  $S < H$ . The boundary conditions for the derivative are  $f = 0$  when  $S = 0$  and  $f = Q$  when  $S = H$ . The simple solution  $f = QS / H$  satisfies both the boundary conditions and the differential equation. It must therefore be the value of the derivative.

Suppose next that  $S > H$ . The boundary conditions are now  $f = 0$  as  $S$  tends to infinity and  $f = Q$  when  $S = H$ . The derivative price

$$ f = Q \left(\frac {S}{H}\right) ^ {- \alpha}
$$ where  $\alpha$  is positive, satisfies the boundary conditions. It also satisfies the differential equation when


$$
- r \alpha + \frac {1}{2} \sigma^ {2} \alpha (\alpha + 1) - r = 0
$$ or  $\alpha = 2r / \sigma^2$ . The value of the derivative is therefore

$$ f = Q \left(\frac {S}{H}\right) ^ {- 2 r / \sigma^ {2}} \tag {15.17}
$$

Problem 15.31 shows how equation (15.17) can be used to price a perpetual American put option. Section 26.2 extends the analysis to show how perpetual American call and put options can be priced when the underlying asset provides a yield at rate  $q$ .

## The Prices of Tradeable Derivatives

Any function  $f(S, t)$  that is a solution of the differential equation (15.16) is the theoretical price of a derivative that could be traded. If a derivative with that price existed, it would not create any arbitrage opportunities. Conversely, if a function  $f(S, t)$  does not satisfy the differential equation (15.16), it cannot be the price of a derivative without creating arbitrage opportunities for traders.

To illustrate this point, consider first the function  $e^S$ . This does not satisfy the differential equation (15.16). It is therefore not a candidate for being the price of a derivative dependent on the stock price. If an instrument whose price was always  $e^S$  existed, there would be an arbitrage opportunity. As a second example, consider the function  $e^{(\sigma^2 - 2r)(T - t)} / S$ . This does satisfy the differential equation, and so is, in theory, the price of a tradeable security. (It is the price of a derivative that pays off  $1 / S_T$  at time  $T$ .) For other examples of tradeable derivatives, see Problems 15.19, 15.20, and 15.31.

## 15.7 RISK-NEUTRAL VALUATION

We introduced risk-neutral valuation in connection with the binomial model in Chapter 13. It is without doubt the single most important tool for the analysis of derivatives. It arises from one key property of the Black-Scholes-Merton differential equation (15.16). This property is that the equation does not involve any variables that are affected by the risk preferences of investors. The variables that do appear in the equation are the current stock price, time, stock price volatility, and the risk-free rate of interest. All are independent of risk preferences.

The Black-Scholes-Merton differential equation would not be independent of risk preferences if it involved the expected return,  $\mu$ , on the stock. This is because the value of  $\mu$  does depend on risk preferences. The higher the level of risk aversion by investors, the higher  $\mu$  will be for any given stock. It is fortunate that  $\mu$  happens to drop out in the derivation of the differential equation.

Because the Black-Scholes-Merton differential equation is independent of risk preferences, an ingenious argument can be used. If risk preferences do not enter the equation, they cannot affect its solution. Any set of risk preferences can, therefore, be used when evaluating  $f$ . In particular, the very simple assumption that all investors are risk neutral can be made.

In a world where investors are risk neutral, the expected return on all investment assets is the risk-free rate of interest,  $r$ . The reason is that risk-neutral investors do not require a premium to induce them to take risks. It is also true that the present value of any cash flow in a risk-neutral world can be obtained by discounting its expected value at the risk-free rate. The assumption that the world is risk neutral does, therefore, considerably simplify the analysis of derivatives.

Consider a derivative that provides a payoff at one particular time. It can be valued using risk-neutral valuation by using the following procedure:

1. Assume that the expected return from the underlying asset is the risk-free interest rate  $r$  (i.e., assume  $u_{r} = r$ ).
2. Calculate the expected payoff from the derivative.
3. Discount the expected payoff at the risk-free interest rate.

It is important to appreciate that risk-neutral valuation (or the assumption that all investors are risk neutral) is merely an artificial device for obtaining solutions to the Black-Scholes-Merton differential equation. The solutions that are obtained are valid in all worlds, not just those where investors are risk neutral. When we move from a risk-neutral world to a risk-averse world, two things happen. The expected payoff from the derivative changes and the discount rate that must be used for this payoff changes. It happens that these two changes always offset each other exactly.

## Application to Forward Contracts on a Stock

We valued forward contracts on a non-dividend-paying stock in Section 5.7. In Example 15.5, we verified that the pricing formula satisfies the Black-Scholes-Merton differential equation. In this section we derive the pricing formula from risk-neutral valuation. We make the assumption that interest rates are constant and equal to  $r$ . This is somewhat more restrictive than the assumption in Chapter 5.

Consider a long forward contract that matures at time  $T$  with delivery price,  $K$ . As indicated in Figure 1.2, the value of the contract at maturity is

$$
S _ {T} - K
$$ where  $S_{T}$  is the stock price at time  $T$ . From the risk-neutral valuation argument, the value of the forward contract at time 0 is its expected value at time  $T$  in a risk-neutral world discounted at the risk-free rate of interest. Denoting the value of the forward contract at time zero by  $f$ , this means that


$$ f = e ^ {- r T} \hat {E} (S _ {T} - K)
$$ where  $\hat{E}$  denotes the expected value in a risk-neutral world. Since  $K$  is a constant, this equation becomes


$$ f = e ^ {- r T} \hat {E} \left(S _ {T}\right) - K e ^ {- r T} \tag {15.18}
$$

The expected return  $\mu$  on the stock becomes  $r$  in a risk-neutral world. Hence, from equation (15.4), we have

$$
\hat {E} \left(S _ {T}\right) = S _ {0} e ^ {r T} \tag {15.19}
$$

Substituting equation (15.19) into equation (15.18) gives

$$ f = S _ {0} - K e ^ {- r T}
$$

This is in agreement with equation (5.5).

## 15.8 BLACK-SCHOLES-MERTON PRICING FORMULAS

The most famous solutions to the differential equation (15.16) are the Black-Scholes-Merton formulas for the prices of European call and put options. These formulas are:

$$ c = S _ {0} N \left(d _ {1}\right) - K e ^ {- r T} N \left(d _ {2}\right) \tag {15.20}
$$ and


$$ p = K e ^ {- r T} N \left(- d _ {2}\right) - S _ {0} N \left(- d _ {1}\right) \tag {15.21}
$$ where

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/35f4442393050fd8594b9f4cd673758fb53a98c5156c14b4afb88addd9bb50bf.jpg)
Figure 15.3 Shaded area represents  $N(x)$ .


$$

\begin{array}{l} d _ {1} = \frac {\ln \left(S _ {0} / K\right) + (r + \sigma^ {2} / 2) T}{\sigma \sqrt {T}} \\ d _ {2} = \frac {\ln \left(S _ {0} / K\right) + (r - \sigma^ {2} / 2) T}{\sigma \sqrt {T}} = d _ {1} - \sigma \sqrt {T} \\ \end{array}

$$

The function  $N(x)$  is the cumulative probability distribution function for a variable with a standard normal distribution. In other words, it is the probability that a variable with a standard normal distribution will be less than  $x$ . It is illustrated in Figure 15.3. The remaining variables should be familiar. The variables  $c$  and  $p$  are the European call and European put price,  $S_0$  is the stock price at time zero,  $K$  is the strike price,  $r$  is the continuously compounded risk-free rate,  $\sigma$  is the stock price volatility, and  $T$  is the time to maturity of the option.

One way of deriving the Black-Scholes-Merton formulas is by solving the differential equation (15.16) subject to the boundary condition mentioned in Section 15.6. (See Problem 15.25 to prove that the call price in equation (15.20) satisfies the differential equation.) Another approach is to use risk-neutral valuation. Consider a European call option. The expected value of the option at maturity in a risk-neutral world is

$$

\hat {E} [ \max  (S _ {T} - K, 0) ]

$$ where, as before,  $\hat{E}$  denotes the expected value in a risk-neutral world. From the risk-neutral valuation argument, the European call option price  $c$  is this expected value discounted at the risk-free rate of interest, that is,

$$ c = e ^ {- r T} \hat {E} [ \max  (S _ {T} - K, 0) ] \tag {15.22}
$$

The appendix at the end of this chapter shows that this equation leads to the result in equation (15.20).

Since it is never optimal to exercise early an American call option on a non-dividend-paying stock (see Section 11.5), equation (15.20) is the value of an American call option on a non-dividend-paying stock. Unfortunately, no exact analytic formula for the value of an American put option on a non-dividend-paying stock has been produced. Numerical procedures for calculating American put values are discussed in Chapter 21.

When the Black-Scholes-Merton formula is used in practice the interest rate  $r$  is set equal to the zero-coupon risk-free interest rate for a maturity  $T$ . As we show in later chapters, this is theoretically correct when  $r$  is a known function of time. It is also theoretically correct when the interest rate is stochastic provided that the stock price at time  $T$  is lognormal and the volatility parameter is chosen appropriately. As mentioned earlier, time is normally measured as the number of trading days left in the life of the option divided by the number of trading days in 1 year.

## Understanding  $N(d_{1})$  and  $N(d_{2})$

The term  $N(d_{2})$  in equation (15.20) has a fairly simple interpretation. It is the probability that a call option will be exercised in a risk-neutral world. The  $N(d_{1})$  term is not quite so easy to interpret. The expression  $S_{0}N(d_{1})e^{rT}$  is the expected stock price at time  $T$  in a risk-neutral world when stock prices less than the strike price are counted as zero. The strike price is only paid if the stock price is greater than  $K$  and as just mentioned this has a probability of  $N(d_{2})$ . The expected payoff in a risk-neutral world is therefore

$$
S _ {0} N (d _ {1}) e ^ {r T} - K N (d _ {2})
$$

Present-valuing this from time  $T$  to time zero gives the Black-Scholes-Merton equation for a European call option:

$$ c = S _ {0} N \left(d _ {1}\right) - K e ^ {- r T} N \left(d _ {2}\right)
$$

For another way of looking at the Black-Scholes-Merton equation for the value of a European call option, note that it can be written as

$$ c = e ^ {- r T} N \left(d _ {2}\right) \left[ S _ {0} e ^ {r T} N \left(d _ {1}\right) / N \left(d _ {2}\right) - K \right]
$$

The terms here have the following interpretation:

$e^{-rT}$ : Present value factor

$N(d_{2})$  : Probability of exercise

$S_0e^{rT}N(d_1) / N(d_2)$  Expected stock price in a risk-neutral world if option is exercised

$K$ : Strike price paid if option is exercised.

## Properties of the Black-Scholes-Merton Formulas

We now show that the Black-Scholes-Merton formulas have the right general properties by considering what happens when some of the parameters take extreme values.

When the stock price,  $S_0$ , becomes very large, a call option is almost certain to be exercised. It then becomes very similar to a forward contract with delivery price  $K$ .

From equation (5.5), we expect the call price to be

$$
S _ {0} - K e ^ {- r T}
$$

This is, in fact, the call price given by equation (15.20) because, when  $S_0$  becomes very large, both  $d_1$  and  $d_2$  become very large, and  $N(d_1)$  and  $N(d_2)$  become close to 1.0. When the stock price becomes very large, the price of a European put option,  $p$ , approaches zero. This is consistent with equation (15.21) because  $N(-d_1)$  and  $N(-d_2)$  are both close to zero in this case.

Consider next what happens when the volatility  $\sigma$  approaches zero. Because the stock is virtually riskless, its price will grow at rate  $r$  to  $S_0e^{rT}$  at time  $T$  and the payoff from a call option is

$$
\max  (S _ {0} e ^ {r T} - K, 0)
$$

Discounting at rate  $r$ , the value of the call today is

$$ e ^ {- r T} \max  \left(S _ {0} e ^ {r T} - K, 0\right) = \max  \left(S _ {0} - K e ^ {- r T}, 0\right)
$$

To show that this is consistent with equation (15.20), consider first the case where  $S_0 > Ke^{-rT}$ . This implies that  $\ln(S_0 / K) + rT > 0$ . As  $\sigma$  tends to zero,  $d_1$  and  $d_2$  tend to  $+\infty$ , so that  $N(d_1)$  and  $N(d_2)$  tend to 1.0 and equation (15.20) becomes

$$ c = S _ {0} - K e ^ {- r T}
$$

When  $S_0 < Ke^{-rT}$ , it follows that  $\ln(S_0 / K) + rT < 0$ . As  $\sigma$  tends to zero,  $d_1$  and  $d_2$  tend to  $-\infty$ , so that  $N(d_1)$  and  $N(d_2)$  tend to zero and equation (15.20) gives a call price of zero. The call price is therefore always  $\max(S_0 - Ke^{-rT}, 0)$  as  $\sigma$  tends to zero. Similarly, it can be shown that the put price is always  $\max(Ke^{-rT} - S_0, 0)$  as  $\sigma$  tends to zero.

## 15.9 CUMULATIVE NORMAL DISTRIBUTION FUNCTION

When implementing equations (15.20) and (15.21), it is necessary to evaluate the cumulative normal distribution function  $N(x)$ . Tables for  $N(x)$  are provided at the end of this book. The NORMSDIST function in Excel also provides a convenient way of calculating  $N(x)$ .

## Example 15.6

The stock price 6 months from the expiration of an option is  \$42, the exercise price of the option is\$ 40, the risk-free interest rate is 10\% per annum, and the volatility is 20\% per annum. This means that  $S_0 = 42$ ,  $K = 40$ ,  $r = 0.1$ ,  $\sigma = 0.2$ ,  $T = 0.5$ ,

$$ d _ {1} = \frac {\ln (42 / 40) + (0.1 + 0.2 ^ {2} / 2) \times 0.5}{0.2 \sqrt {0.5}} = 0.7693
$$

$$ d _ {2} = \frac {\ln (42 / 40) + (0.1 - 0.2 ^ {2} / 2) \times 0.5}{0.2 \sqrt {0.5}} = 0.6278
$$ and


$$

K e ^ {- r T} = 4 0 e ^ {- 0. 0 5} = 3 8. 0 4 9

$$

Hence, if the option is a European call, its value  $c$  is given by

$$ c = 42 N (0.7693) - 38.049 N (0.6278)
$$

If the option is a European put, its value  $p$  is given by

$$ p = 38.049 N (- 0.6278) - 42 N (- 0.7693)
$$

Using the NORMSDIST function in Excel gives

$$
K e ^ {- r T} = 40 e ^ {- 0.05} = 38.049
$$

$$
c = 4.76, \quad p = 0.81
$$

Ignoring the time value of money, the stock price has to rise by  \$2.76 for the purchaser of the call to break even. Similarly, the stock price has to fall by\$ 2.81 for the purchaser of the put to break even.

## 15.10 WARRANTS AND EMPLOYEE STOCK OPTIONS

The exercise of a regular call option on a company has no effect on the number of the company's shares outstanding. If the writer of the option does not own the company's shares, he or she must buy them in the market in the usual way and then sell them to the option holder for the strike price. As explained in Chapter 10, warrants and employee stock options are different from regular call options in that exercise leads to the company issuing more shares and then selling them to the option holder for the strike price. As the strike price is less than the market price, this dilutes the interest of the existing shareholders.

How should potential dilution affect the way we value outstanding warrants and employee stock options? The answer is that it should not! Assuming markets are efficient the stock price will reflect potential dilution from all outstanding warrants and employee stock options. This is explained in Business Snapshot 15.3.

Consider next the situation a company is in when it is contemplating a new issue of warrants (or employee stock options). We suppose that the company is interested in calculating the cost of the issue assuming that there are no compensating benefits. We assume that the company has  $N$  shares worth  $S_0$  each and the number of new options contemplated is  $M$ , with each option giving the holder the right to buy one share for  $K$ . The value of the company today is  $NS_0$ . This value does not change as a result of the warrant issue. Suppose that without the warrant issue the share price will be  $S_T$  at the warrant's maturity. This means that (with or without the warrant issue) the total value of the equity and the warrants at time  $T$  will  $NS_T$ . If the warrants are exercised, there is a cash inflow from the strike price increasing this to  $NS_T + MK$ . This value is distributed

## Business Snapshot 15.3 Warrants, Employee Stock Options, and Dilution

Consider a company with 100,000 shares each worth \$50. It surprises the market with an announcement that it is granting 100,000 stock options to its employees with a strike price of \$50. If the market sees little benefit to the shareholders from the employee stock options in the form of reduced salaries and more highly motivated managers, the stock price will decline immediately after the announcement of the employee stock options. If the stock price declines to \$45, the dilution cost to the current shareholders is \$5 per share or 500,000 in total.

Suppose that the company does well so that by the end of three years the share price is \$100. Suppose further that all the options are exercised at this point. The payoff to the employees is \$50 per option. It is tempting to argue that there will be further dilution in that 100,000 shares worth \$100 per share are now merged with 100,000 shares for which only \$50 is paid, so that (a) the share price reduces to \$75 and (b) the payoff to the option holders is only \$25 per option. However, this argument is flawed. The exercise of the options is anticipated by the market and already reflected in the share price. The payoff from each option exercised is 50.

This example illustrates the general point that when markets are efficient the impact of dilution from executive stock options or warrants is reflected in the stock price as soon as they are announced and does not need to be taken into account again when the options are valued.

among  $N + M$  shares, so that the share price immediately after exercise becomes

$$
\frac {N S _ {T} + M K}{N + M}
$$

Therefore the payoff to an option holder if the option is exercised is

$$
\frac {N S _ {T} + M K}{N + M} - K
$$ or


$$

\frac {N}{N + M} \left(S _ {T} - K\right)

$$

This shows that the value of each option is the value of

$$

\frac {N}{N + M}

$$ regular call options on the company's stock. Therefore the total cost of the options is  $M$  times this. Since we are assuming that there are no benefits to the company from the warrant issue, the total value of the company's equity will decline by the total cost of the options as soon as the decision to issue the warrants becomes generally known. This means that the reduction in the stock price is

$$
\begin{array}{c} M \\ \hline N + M \end{array}
$$ times the value of a regular call option with strike price  $K$  and maturity  $T$ .


# Example 15.7

A company with 1 million shares worth \$40 each is considering issuing 200,000 warrants each giving the holder the right to buy one share with a strike price of \$60 in 5 years. It wants to know the cost of this. The interest rate is 3\% per annum, and the volatility is 30\% per annum. The company pays no dividends. From equation (15.20), the value of a 5-year European call option on the stock is 7.04. In this case, N = 1,000,000 and M = 200,000, so that the value of each warrant is

$$

\frac {1 , 0 0 0 , 0 0 0}{1 , 0 0 0 , 0 0 0 + 2 0 0 , 0 0 0} \times 7. 0 4 = 5. 8 7

$$ or  $5.87. The total cost of the warrant issue is 200,000 \times 5.87 =$ 1.17 million. Assuming the market perceives no benefits from the warrant issue, we expect the stock price to decline by  $1.17 to$ 38.83.

# 15.11 IMPLIED VOLATILITIES

The one parameter in the Black-Scholes-Merton pricing formulas that cannot be directly observed is the volatility of the stock price. In Section 15.4, we discussed how this can be estimated from a history of the stock price. In practice, traders usually work with what are known as implied volatilities. These are the volatilities implied by option prices observed in the market.[10]

To illustrate how implied volatilities are calculated, suppose that the market price of a European call option on a non-dividend-paying stock is 1.875 when  $S_0 = 21$ ,  $K = 20$ ,  $r = 0.1$ , and  $T = 0.25$ . The implied volatility is the value of  $\sigma$  that, when substituted into equation (15.20), gives  $c = 1.875$ . Unfortunately, it is not possible to invert equation (15.20) so that  $\sigma$  is expressed as a function of  $S_0$ ,  $K$ ,  $r$ ,  $T$ , and  $c$ . However, an iterative search procedure can be used to find the implied  $\sigma$ . For example, we can start by trying  $\sigma = 0.20$ . This gives a value of  $c$  equal to 1.76, which is too low. Because  $c$  is an increasing function of  $\sigma$ , a higher value of  $\sigma$  is required. We can next try a value of 0.30 for  $\sigma$ . This gives a value of  $c$  equal to 2.10, which is too high and means that  $\sigma$  must lie between 0.20 and 0.30. Next, a value of 0.25 can be tried for  $\sigma$ . This also proves to be too high, showing that  $\sigma$  lies between 0.20 and 0.25. Proceeding in this way, we can halve the range for  $\sigma$  at each iteration and the correct value of  $\sigma$  can be calculated to any required accuracy.[11] In this example, the implied volatility is 0.235, or 23.5\%, per annum. A similar procedure can be used in conjunction with binomial trees to find implied volatilities for American options.

Implied volatilities are used to monitor the market's opinion about the volatility of a particular stock. Whereas historical volatilities (see Section 15.4) are backward looking, implied volatilities are forward looking. Traders often quote the implied volatility of an option rather than its price. This is convenient because the implied volatility tends to be less variable than the option price. The implied volatilities of actively traded options on an asset are often used by traders to estimate appropriate implied volatilities for other options on the asset.

# The VIX Index

The CBOE publishes indices of implied volatility. The most popular index, the SPX VIX, is an index of the implied volatility of 30-day options on the S&P 500 calculated from a wide range of calls and puts. It is sometimes referred to as the "fear factor." An index value of 15 indicates that the implied volatility of 30-day options on the S&P 500 is estimated as  $15\%$ . Information on the way the index is calculated is in Section 26.16. Trading in futures on the VIX started in 2004 and trading in options on the VIX started in 2006. One contract is on 1,000 times the index.

# Example 15.8

Suppose that a trader buys an April futures contract on the VIX when the futures price is 18.5 (corresponding to a 30-day S&P 500 volatility of  $18.5\%$ ) and closes out the contract when the futures price is 19.3 (corresponding to an S&P 500 volatility of  $19.3\%$ ). The trader makes a gain of 800.

A trade involving options on the S&P 500 is a bet on the future level of the S&P 500, which depends on the volatility of the S&P 500. By contrast, a futures or options contract on the VIX is a bet only on volatility. Figure 15.4 shows the VIX index between January 2004 and June 2020. Between 2004 and mid-2007 it tended to stay between 10 and 20. It reached 30 during the second half of 2007 and a record 80 in October and November 2008 after Lehman's bankruptcy. By early 2010, it had declined to more normal levels. It has spiked several times since 2010 because of stresses and uncertainties in financial markets. In 2020, there was another big increase because of the COVID-19 pandemic.

VIX monitors the volatility of the S&P 500. The CBOE publishes a range of other volatility indices. These are on other stock indices, commodity indices, interest rates, currencies, and some individual stocks (for example, Amazon and Goldman Sachs). There is even a volatility index of the VIX index (VVIX).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/128aff3e46c36c0b7352e9ac827043c7565e626e259f0cdfd41a2c2fd5ac1db8.jpg)

Figure 15.4 The VIX index, January 2004 to June 2020.

# 15.12 DIVIDENDS

Up to now, we have assumed that the stock on which the option is written pays no dividends. In this section, we modify the Black-Scholes-Merton model to take account of dividends. We assume that the amount and timing of the dividends during the life of an option can be predicted with certainty. When options last for relatively short periods of time, this assumption is not too unreasonable. (For long-life options it is usual to assume that the dividend yield rather than the dollar dividend payments are known. Options can then be valued as will be described in the Chapter 17.) The date on which the dividend is paid should be assumed to be the ex-dividend date. On this date the stock price declines by the amount of the dividend.[12]

# European Options

European options can be analyzed by assuming that the stock price is the sum of two components: a riskless component that corresponds to the known dividends during the life of the option and a risky component. The riskless component, at any given time, is the present value of all the dividends during the life of the option discounted from the ex-dividend dates to the present at the risk-free rate. By the time the option matures, the dividends will have been paid and the riskless component will no longer exist. The Black-Scholes-Merton formula is therefore correct if  $S_0$  is equal to the risky component of the stock price and  $\sigma$  is the volatility of the process followed by the risky component.[13]

Operationally, this means that the Black-Scholes-Merton formulas can be used provided that the stock price is reduced by the present value of all the dividends during the life of the option, the discounting being done from the ex-dividend dates at the risk-free rate. As already mentioned, a dividend is counted as being during the life of the option only if its ex-dividend date occurs during the life of the option.

# Example 15.9

Consider a European call option on a stock when there are ex-dividend dates in two months and five months. The dividend on each ex-dividend date is expected to be  \$0.50. The current share price is\$ 40, the exercise price is 40, the stock price volatility is 30\% per annum, the risk-free rate of interest is 9\% per annum, and the time to maturity is six months. The present value of the dividends is

$$
100 \times 1.15 \times 1.20 \times 1.30 \times 0.80 \times 1.25 = \$179.40
$$

The option price can therefore be calculated from the Black-Scholes-Merton formula, with  $S_0 = 40 - 0.9742 = 39.0258$ ,  $K = 40$ ,  $r = 0.09$ ,  $\sigma = 0.3$ , and  $T = 0.5$ :

$$ d _ {1} = \frac {\ln (3 9 . 0 2 5 8 / 4 0) + (0 . 0 9 + 0 . 3 ^ {2} / 2) \times 0 . 5}{0 . 3 \sqrt {0 . 5}} = 0. 2 0 2 0
$$

$$ d _ {2} = \frac {\ln (3 9 . 0 2 5 8 / 4 0) + (0 . 0 9 - 0 . 3 ^ {2} / 2) \times 0 . 5}{0 . 3 \sqrt {0 . 5}} = - 0. 0 1 0 2
$$

Using the NORMSDIST function in Excel gives

$$
N \left(d _ {1}\right) = 0. 5 8 0 0, \quad N \left(d _ {2}\right) = 0. 4 9 5 9
$$ and, from equation (15.20), the call price is


$$

3 9. 0 2 5 8 \times 0. 5 8 0 0 - 4 0 e ^ {- 0. 0 9 \times 0. 5} \times 0. 4 9 5 9 = 3. 6 7

$$ or 3.67.


Some researchers have criticized the approach just described for calculating the value of a European option on a dividend-paying stock. They argue that volatility should be applied to the stock price, not to the stock price less the present value of dividends. A number of different numerical procedures have been suggested for doing this.[14] When volatility is calculated from historical data, it might make sense to use one of these procedures. However, in practice the volatility used to price an option is nearly always implied from the prices of other options using procedures we will outline in Chapter 20. If an analyst uses the same model for both implying and applying volatilities, the resulting prices should be accurate and not highly model dependent. Another important point is that in practice, as will be explained in Chapter 18, practitioners usually value a European option in terms of the forward price of the underlying asset. This avoids the need to estimate explicitly the income that is expected from the asset. The volatility of the forward stock price is the same as the volatility of a variable equal to the stock price minus the present value of dividends.

The model we have proposed where the stock price is divided into two components is internally consistent and widely used in practice. We will use the same model when valuing American options in Chapter 21.

# American Call Options

Consider next American call options. Chapter 11 showed that in the absence of dividends American options should never be exercised early. An extension to the argument shows that, when there are dividends, it can only be optimal to exercise at a time immediately before the stock goes ex-dividend. We assume that  $n$  ex-dividend dates are anticipated and that they are at times  $t_1, t_2, \ldots, t_n$ , with  $t_1 < t_2 < \ldots < t_n$ . The dividends corresponding to these times will be denoted by  $D_1, D_2, \ldots, D_n$ , respectively.

We start by considering the possibility of early exercise just prior to the final ex-dividend date (i.e., at time  $t_n$ ). If the option is exercised at time  $t_n$ , the investor receives

$$

S (t _ {n}) - K

$$ where  $S(t)$  denotes the stock price at time  $t$ . If the option is not exercised, the stock price drops to  $S(t_{n}) - D_{n}$ . As shown by equation (11.4), the value of the option is then greater than

$$
S \left(t _ {n}\right) - D _ {n} - K e ^ {- r \left(T - t _ {n}\right)}
$$

It follows that, if

$$
S (t _ {n}) - D _ {n} - K e ^ {- r (T - t _ {n})} \geq S (t _ {n}) - K
$$ that is,


$$

D _ {n} \leq K \left[ 1 - e ^ {- r (T - t _ {n})} \right] \tag {15.23}

$$ it cannot be optimal to exercise at time  $t_n$ . On the other hand, if

$$
D _ {n} > K \left[ 1 - e ^ {- r \left(T - t _ {n}\right)} \right] \tag {15.24}
$$ for any reasonable assumption about the stochastic process followed by the stock price, it can be shown that it is always optimal to exercise at time  $t_n$  for a sufficiently high value of  $S(t_n)$ . The inequality in (15.24) will tend to be satisfied when the final ex-dividend date is fairly close to the maturity of the option (i.e.,  $T - t_n$  is small) and the dividend is large.


Consider next time  $t_{n-1}$ , the penultimate ex-dividend date. If the option is exercised immediately prior to time  $t_{n-1}$ , the investor receives  $S(t_{n-1}) - K$ . If the option is not exercised at time  $t_{n-1}$ , the stock price drops to  $S(t_{n-1}) - D_{n-1}$  and the earliest subsequent time at which exercise could take place is  $t_n$ . Hence, from equation (11.4), a lower bound to the option price if it is not exercised at time  $t_{n-1}$  is

$$

S \left(t _ {n - 1}\right) - D _ {n - 1} - K e ^ {- r \left(t _ {n} - t _ {n - 1}\right)}

$$

It follows that if

$$

S \left(t _ {n - 1}\right) - D _ {n - 1} - K e ^ {- r \left(t _ {n} - t _ {n - 1}\right)} \geq S \left(t _ {n - 1}\right) - K

$$ or


$$

D _ {n - 1} \leq K \left[ 1 - e ^ {- r \left(t _ {n} - t _ {n - 1}\right)} \right]

$$ it is not optimal to exercise immediately prior to time  $t_{n-1}$ . Similarly, for any  $i < n$ , if

$$
D _ {i} \leq K \left[ 1 - e ^ {- r \left(t _ {i + 1} - t _ {i}\right)} \right] \tag {15.25}
$$ it is not optimal to exercise immediately prior to time  $t_i$ .


The inequality in (15.25) is approximately equivalent to

$$

D _ {i} \leq K r \left(t _ {i + 1} - t _ {i}\right)

$$

Assuming that  $K$  is fairly close to the current stock price, this inequality is satisfied when the dividend yield on the stock is less than the risk-free rate of interest. This is often not true in low interest environments.

We can conclude from this analysis that, in many circumstances, the most likely time for the early exercise of an American call is immediately before the final ex-dividend date,  $t_n$ . Furthermore, if inequality (15.25) holds for  $i = 1, 2, \ldots, n - 1$  and inequality (15.23) holds, we can be certain that early exercise is never optimal, and the American option can be treated as a European option.

## Black's Approximation

Black suggests an approximate procedure for taking account of early exercise in call options.[15] This involves calculating, as described earlier in this section, the prices of European options that mature at times  $T$  and  $t_n$ , and then setting the American price equal to the greater of the two.[16] This is an approximation because it in effect assumes the option holder has to decide at time zero whether the option will be exercised at time  $T$  or  $t_n$ .

# SUMMARY

We started this chapter by examining the properties of the process for stock prices introduced in Chapter 14. The process implies that the price of a stock at some future time, given its price today, is lognormal. It also implies that the continuously compounded return from the stock in a period of time is normally distributed. Our uncertainty about future stock prices increases as we look further ahead. The standard deviation of the logarithm of the stock price is proportional to the square root of how far ahead we are looking.

To estimate the volatility  $\sigma$  of a stock price empirically, the stock price is observed at fixed intervals of time (e.g., every day, every week, or every month). For each time period, the natural logarithm of the ratio of the stock price at the end of the time period to the stock price at the beginning of the time period is calculated. The volatility is estimated as the standard deviation of these numbers divided by the square root of the length of the time period in years. Usually, days when the exchanges are closed are ignored in measuring time for the purposes of volatility calculations.

The differential equation for the price of any derivative dependent on a stock can be obtained by creating a riskless portfolio of the derivative and the stock. Because the derivative's price and the stock price both depend on the same underlying source of uncertainty, this can always be done. The portfolio that is created remains riskless for only a very short period of time. However, the return on a riskless portfolio must always be the risk-free interest rate if there are to be no arbitrage opportunities.

The expected return on the stock does not enter into the Black-Scholes-Merton differential equation. This leads to an extremely useful result known as risk-neutral valuation. This result states that when valuing a derivative dependent on a stock price, we can assume that the world is risk neutral. This means that we can assume that the expected return from the stock is the risk-free interest rate, and then discount expected payoffs at the risk-free interest rate. The Black-Scholes-Merton equations for European call and put options can be derived by either solving their differential equation or by using risk-neutral valuation.

An implied volatility is the volatility that, when used in conjunction with the Black-Scholes-Merton option pricing formula, gives the market price of the option. Traders monitor implied volatilities. They often quote the implied volatility of an option rather than its price. They have developed procedures for using the volatilities implied by the prices of actively traded options to estimate volatilities for other options on the same asset.


The Black-Scholes-Merton results can be extended to cover European call and put options on dividend-paying stocks. The procedure is to use the Black-Scholes-Merton formula with the stock price reduced by the present value of the dividends anticipated during the life of the option, and the volatility equal to the volatility of the stock price net of the present value of these dividends.

It can be optimal to exercise American call options immediately before any ex-dividend date, but in practice early exercise is most likely on the final ex-dividend date. Fischer Black has suggested an approximation. This involves setting the American call option price equal to the greater of two European call option prices. The first European call option expires at the same time as the American call option; the second expires immediately prior to the final ex-dividend date.

# FURTHER READING

# On the Distribution of Stock Price Changes

Blattberg, R., and N. Gonedes, "A Comparison of the Stable and Student Distributions as Statistical Models for Stock Prices," Journal of Business, 47 (April 1974): 244-80.

Fama, E. F., "The Behavior of Stock Market Prices," Journal of Business, 38 (January 1965): 34-105.

Kon, S. J., "Models of Stock Returns—A Comparison," Journal of Finance, 39 (March 1984): 147-65.

Richardson, M., and T. Smith, "A Test for Multivariate Normality in Stock Returns," Journal of Business, 66 (1993): 295-321.

# On the Black-Scholes-Merton Analysis

Black, F. "Fact and Fantasy in the Use of Options and Corporate Liabilities," *Financial Analysts Journal*, 31 (July/August 1975): 36-41, 61-72.

Black, F. "How We Came Up with the Option Pricing Formula," Journal of Portfolio Management, 15, 2 (1989): 4-8.

Black, F., and M. Scholes, “The Pricing of Options and Corporate Liabilities,” Journal of Political Economy, 81 (May/June 1973): 637-59.

Merton, R. C., "Theory of Rational Option Pricing," Bell Journal of Economics and Management Science, 4 (Spring 1973): 141-83.

# On Risk-Neutral Valuation

Cox, J. C., and S. A. Ross, "The Valuation of Options for Alternative Stochastic Processes," Journal of Financial Economics, 3 (1976): 145-66.

Smith, C. W., "Option Pricing: A Review," Journal of Financial Economics, 3 (1976): 3-54.

# On the Causes of Volatility

Fama, E. F. "The Behavior of Stock Market Prices." Journal of Business, 38 (January 1965): 34-105.
French, K. R. "Stock Returns and the Weekend Effect." Journal of Financial Economics, 8 (March 1980):55-69.
French, K. R., and R. Roll "Stock Return Variances: The Arrival of Information and the Reaction of Traders." Journal of Financial Economics, 17 (September 1986): 5-26.
Roll R. "Orange Juice and Weather," American Economic Review, 74, 5 (December 1984): 861-80.

# Short Concept Questions

15.1. What does the Black-Scholes-Merton model assume about the return on a stock in a short period of time?
15.2. What are the mean and standard deviation of the logarithm of the stock price at time  $T$  in the model assumed by Black-Scholes-Merton?
15.3. In the Black-Scholes-Merton model, what happens to the standard deviation of the continuously compounded rate of return as the length of the time period over which it is measured increases?
15.4. How are weekends and holidays handled when volatility is estimated and used?
15.5. How is a riskless portfolio set up in order to derive the Black-Scholes-Merton differential equation?
15.6. What is the Black-Scholes-Merton price of European call and put options on an asset providing no income?
15.7. Explain the principle of risk-neutral valuation.
15.8. What is the difference between a warrant to purchase a stock and an exchange-traded stock option?
15.9. How is an implied volatility calculated?
15.10. How can the Black-Scholes-Merton formulas be adjusted to take account of known dividends?

# APPENDIX

## PROOF OF THE BLACK-SCHOLES-MERTON FORMULA USING RISK-NEUTRAL VALUATION

We will prove the Black-Scholes result by first proving another key result that will also be useful in future chapters.

## Key Result

If  $V$  is lognormally distributed and the standard deviation of  $\ln V$  is  $w$ , then

$$

E \left[ \max  (V - K, 0) \right] = E (V) N \left(d _ {1}\right) - K N \left(d _ {2}\right) \tag {15A.1}

$$ where


$$ d _ {1} = \frac {\ln [ E (V) / K ] + w ^ {2} / 2}{w}
$$

$$ d _ {2} = \frac {\ln [ E (V) / K ] - w ^ {2} / 2}{w}
$$ and  $E$  denotes the expected value. (See Problem 15.37 for a similar result for puts.)


## Proof of Key Result

Define  $g(V)$  as the probability density function of  $V$ . It follows that

$$

E [ \max  (V - K, 0) ] = \int_ {K} ^ {\infty} (V - K) g (V) d V \tag {15A.2}

$$

The variable  $\ln V$  is normally distributed with standard deviation  $w$ . From the properties of the lognormal distribution, the mean of  $\ln V$  is  $m$ , where

$$ m = \ln [ E (V) ] - w ^ {2} / 2 \tag {15A.3}
$$

Define a new variable

$$
Q = \frac {\ln V - m}{w} \tag {15A.4}
$$

This variable is normally distributed with a mean of zero and a standard deviation of 1.0. Denote the density function for  $Q$  by  $h(Q)$  so that

$$ h (Q) = \frac {1}{\sqrt {2 \pi}} e ^ {- Q ^ {2} / 2}
$$

Using equation (15A.4) to convert the expression on the right-hand side of equation (15A.2) from an integral over  $V$  to an integral over  $Q$ , we get

$$
E \left[ \max  (V - K, 0) \right] = \int_ {(\ln K - m) / w} ^ {\infty} \left(e ^ {Q w + m} - K\right) h (Q) d Q
$$ or


$$

E \left[ \max  (V - K, 0) \right] = \int_ {(\ln K - m) / w} ^ {\infty} e ^ {Q w + m} h (Q) d Q - K \int_ {(\ln K - m) / w} ^ {\infty} h (Q) d Q \tag {15A.5}

$$

Now

$$

\begin{array}{l} e ^ {Q w + m} h (Q) = \frac {1}{\sqrt {2 \pi}} e ^ {(- Q ^ {2} + 2 Q w + 2 m) / 2} = \frac {1}{\sqrt {2 \pi}} e ^ {[ - (Q - w) ^ {2} + 2 m + w ^ {2} ] / 2} \\ = \frac {e ^ {m + w ^ {2} / 2}}{\sqrt {2 \pi}} e ^ {\left[ - (Q - w) ^ {2} \right] / 2} = e ^ {m + w ^ {2} / 2} h (Q - w) \\ \end{array}

$$

This means that equation (15A.5) becomes

$$

E \left[ \max  (V - K, 0) \right] = e ^ {m + w ^ {2} / 2} \int_ {(\ln K - m) / w} ^ {\infty} h (Q - w) d Q - K \int_ {(\ln K - m) / w} ^ {\infty} h (Q) d Q \tag {15A.6}

$$

If we define  $N(x)$  as the probability that a variable with a mean of zero and a standard deviation of 1.0 is less than  $x$ , the first integral in equation (15A.6) is

$$

1 - N [ (\ln K - m) / w - w ] = N [ (- \ln K + m) / w + w ]

$$

Substituting for  $m$  from equation (15A.3) leads to

$$

N \left(\frac {\ln [ E (V) / K ] + w ^ {2} / 2}{w}\right) = N \left(d _ {1}\right)

$$

Similarly the second integral in equation (15A.6) is  $N(d_{2})$ . Equation (15A.6), therefore, becomes

$$

E \left[ \max  (V - K, 0) \right] = e ^ {m + w ^ {2} / 2} N \left(d _ {1}\right) - K N \left(d _ {2}\right)

$$

Substituting for  $m$  from equation (15A.3) gives the key result.

## The Black-Scholes-Merton Result

We now consider a call option on a non-dividend-paying stock maturing at time  $T$ . The strike price is  $K$ , the risk-free rate is  $r$ , the current stock price is  $S_0$ , and the volatility is  $\sigma$ . As shown in equation (15.22), the call price  $c$  is given by

$$ c = e ^ {- r T} \hat {E} [ \max  (S _ {T} - K, 0) ] \tag {15A.7}
$$ where  $S_{T}$  is the stock price at time  $T$  and  $\hat{E}$  denotes the expectation in a risk-neutral world. Under the stochastic process assumed by Black-Scholes-Merton,  $S_{T}$  is lognormal. Also, from equations (15.3) and (15.4),  $\hat{E}(S_{T}) = S_{0}e^{rT}$  and the standard deviation of  $\ln S_{T}$  is  $\sigma \sqrt{T}$ .


From the key result just proved, equation (15A.7) implies

$$ c = e ^ {- r T} \left[ S _ {0} e ^ {r T} N \left(d _ {1}\right) - K N \left(d _ {2}\right) \right] = S _ {0} N \left(d _ {1}\right) - K e ^ {- r T} N \left(d _ {2}\right)
$$ where


$$ d _ {1} = \frac {\ln [ \hat {E} (S _ {T}) / K ] + \sigma^ {2} T / 2}{\sigma \sqrt {T}} = \frac {\ln (S _ {0} / K) + (r + \sigma^ {2} / 2) T}{\sigma \sqrt {T}}
$$

$$ d _ {2} = \frac {\ln [ \hat {E} (S _ {T}) / K ] - \sigma^ {2} T / 2}{\sigma \sqrt {T}} = \frac {\ln (S _ {0} / K) + (r - \sigma^ {2} / 2) T}{\sigma \sqrt {T}}
$$

This is the Black-Scholes-Merton result.



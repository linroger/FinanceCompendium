---
title: "Volatility"
parent_directory: Derivatives Market Complete Full
formatted: 2025-12-21 02:16:00 AM
formatter_model: grok-code-fast-1
cli-tool: opencode
primary_tags:
  - volatility measurement
  - implied volatility
  - stochastic volatility
  - garch models
  - volatility skew
secondary_tags:
  - historical volatility
  - exponentially weighted moving average
  - arch models
  - realized quadratic variation
  - variance swaps
  - volatility hedging
  - black-scholes extensions
  - jump diffusion models
  - heston model
  - constant elasticity variance
cssclasses: academia
---

# Volatility

Volatility is a critical input necessary for pricing options, but it is not directly observable and it is not constant over time. Consequently, both theorists and practitioners are concerned with the behavior of volatility and the construction of option pricing models in which volatility can change. Hedging volatility risk is also an important issue for market-makers.

```d2
volatility_concepts: Key Volatility Concepts {
  direction: right
  implied_volatility: Implied Volatility
  historical_volatility: Historical Volatility
  stochastic_volatility: Stochastic Volatility
  garch_models: GARCH Models
  volatility_skew: Volatility Skew
  variance_swaps: Variance Swaps
  implied_volatility -> volatility_skew: Leads to
  historical_volatility -> garch_models: Modeled with
  garch_models -> stochastic_volatility: Extends to
  variance_swaps -> volatility_skew: Related to
  style.fill: "#fff8dc"
  style.stroke: "#daa520"
}
```

In this chapter we will discuss specific techniques for measuring stock price volatility and also demonstrate how volatility models can be incorporated into the Black-Scholes pricing framework.

The chapter is divided into four general topics:

- Implied volatility: What information do option prices provide about volatility, both at a point in time and over time?
- Volatility estimation: Given the past history of stock returns, what can you say about volatility?
- Volatility hedging: What instruments are available to hedge volatility risk?
- Option pricing: How can we price options when volatility is stochastic?

You should keep in mind when reading this chapter that the distribution of asset prices remains an area in which there is significant ongoing research. Statistical techniques for measuring volatility continue to evolve, and there is a search for pricing models that best explain observed option prices.

# I. IMPLIED VOLATILITY

To provide a context for the discussion in this chapter, we begin by reviewing implied volatility. Figure 1 depicts implied volatilities for exchange-traded IBM and S&P 500 index options on January 18, 2012, an arbitrarily chosen date. The patterns are typical, with in-the-money (low strike) calls having higher implied volatilities than at-the-money and out-of-the-money calls. In addition, the implied volatility curve is flatter for options with longer time to maturity. You may see volatilities such as those in Figure 1 plotted in a three-dimensional graph, with time to maturity on one axis and strike prices on a different axis. Such a plot is called a volatility surface.

The pattern of implied volatilities generally is referred to as the volatility skew. However, specific patterns are frequently observed. If you use your imagination, the implied volatility plot in Figure 1 resembles a lopsided grin or a smirk. The pattern in the figure is sometimes called a volatility smirk. When the plot of implied volatility against strike prices looks like a smile, it is called a volatility smile. Volatility frowns may also be observed.

Implied volatility may seem like a natural way to measure the volatility that is expected to prevail over a future period of time. However, the fact that implied volatilities are not constant across strike prices and over time raises at least two issues. First, it is common to measure implied volatility using the Black-Scholes model, which assumes that volatility is constant. The volatility skew may reflect pricing or specification error in the Black-Scholes

FIGURE I

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/5ec7b5019d5f40ea7fd5314e6a0f7fb8d04fe4dde310e35a7a62e95cb8ff287d.jpg)

Implied volatilities for options on IBM (top panel) and on the S&P 500 index (bottom panel), January 18, 2012. Closing prices for IBM and the S&P 500 index on this day were 181.07 and 1308.04.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/dcd06e59fcf65fa1ad8a43b45f0e9f3d50a5b1b2834308f137e67ad67d9505a1.jpg)

Data from Optionmetrics.

# FIGURE 2

VIX (top panel) and VIX minus VXO (bottom panel), January 1990-March 2012.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/7a4fda743b5142d2a548f4a58a9d24a4efa26f7df7abbca7e4cab9edbe98421c.jpg) model, which raises the question of what implied volatility actually measures. Second, since there is no single measure of implied volatility (for the same asset, implied volatilities differ across strikes and across option maturities), how should we interpret the implied volatility numbers? Should we look at volatility at a particular "moneyness"? Is there some way to average the different volatilities? We will see later in this chapter that some theoretical pricing models are able to account for implied volatility patterns such as those in Figure 1.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/da61cfb45ca1eb32d0c39d8ed2bfdb9e7dec685dda839596201346b047137a1b.jpg)

Source: Yahoo.

In addition to examining the pattern of implied volatilities at a point in time, we can track implied volatilities over time. Since 1993 the Chicago Board Options Exchange (CBOE) has reported an index of implied volatility called the "VIX" (its ticker symbol). Originally, the CBOE reported implied volatility for the S&P 100 index, computed from near-the-money options. This original index is now called the "Old VIX," with ticker symbol VXO. Beginning in 2003, the CBOE began reporting implied volatility for the S&P 500 index, based on a new methodology that we will describe later in this chapter. Both volatility measures have been computed for previous dates.

```d2
vix_evolution: VIX Index Evolution {
  direction: right
  old_vix: Old VIX (S&P 100, 1993-2003)
  new_vix: New VIX (S&P 500, 2003-present)
  methodology: New Methodology (Equation 28)
  old_vix -> new_vix: Replaced by
  new_vix -> methodology: Based on
  style.fill: "#f0f8ff"
  style.stroke: "#4169e1"
}
```

The top panel of Figure 2 plots the new VIX index from 1990 to 2012. The spike in the VIX during Fall 2008 is evident. On November 20, 2008, the VIX reached its post-1990 maximum of  $80.86$ . The bottom panel of Figure 2 shows the difference between the new and old VIX measures. The difference is generally small, but has been large at times, especially for a brief period during the financial crisis in 2008.

Looking at Figures 1 and 2, it is natural to ask whether implied volatility is an accurate forecast of future volatility. It turns out that implied volatility on average exceeds future realized volatility. An interpretation is that there is a negative volatility risk premium (Bakshi and Kapadia, 2003a; Bates, 2003). We discuss this later in the chapter.

# 2. MEASUREMENT AND BEHAVIOR OF VOLATILITY

In this section we examine different ways to characterize and measure the behavior of volatility using only historical information about the asset price. In our examples we will concentrate on stock price volatility.

We take as a starting point the lognormal model of stock prices. Suppose the stock price follows this process:

$$ d S _ {t} / S _ {t} = (\alpha - \delta) d t + \sigma \left(S _ {t}, X _ {t}, t\right) d Z \tag {1}
$$ where  $\alpha$  is the continuously compounded expected return on the stock,  $\delta$  is the continuously compounded dividend yield, and  $\sigma(S_t, X_t, t)$  is the instantaneous volatility. In equation (1), volatility at a point in time can depend on the level of the stock price  $S$ , other variables,  $X$ , and time. By comparison, the standard Black-Scholes assumption is that  $\sigma(S_t, X_t, t) = \sigma_0$ , a constant. Equation (1) is an example of a stock price process with stochastic volatility, in which instantaneous volatility can change randomly. $^3$


Given a series of stock prices that we observe every  $h$  periods, we can compute continuously compounded returns,  $\epsilon$ :

$$

\epsilon_ {t + h} = \ln \left(S _ {t + h} / S _ {t}\right)

$$

We will assume throughout this section that  $h$  is small, and therefore that we can ignore the mean return.

# Historical Volatility

The natural starting point for examining volatility is historical volatility, which we compute using past stock returns. Suppose that we observe  $n$  continuously compounded stock returns over a period of length  $T$ , so that  $h = T / n$ . Under the assumption that volatility is constant, we can estimate the historical annual variance of returns,  $\sigma^2$ , as

$$

\hat {\sigma} _ {\mathrm {H}} ^ {2} = \frac {1}{h} \left[ \frac {1}{(n - 1)} \sum_ {i = 1} ^ {n} \epsilon_ {i} ^ {2} \right] \tag {2}

$$

The multiplication by  $1 / h$  annualizes the variance estimate in square brackets. This calculation differs from the usual formula for variance since it assumes the per-period mean is zero. This assumption makes little difference if  $h$  is small.

It is natural to estimate volatility using daily returns for all trading days. It is important to recognize, however, that not all calendar days, and not even all trading days, exhibit the same volatility. For example, if all days were the same, return volatility over a weekend (from Friday's close of trading to Monday's close of trading) should be  $\sqrt{3}$  times the weekday volatility. However, French and Roll (1986) showed that returns from Friday to Monday were significantly less volatile than returns over three consecutive weekdays. Individual stock price volatilities are also greater on the days when firms make earnings announcements, and this greater volatility affects option prices (Patell and Wolfson, 1979, 1981; Dubinsky and Johannes, 2004). Thus, while equation (2) provides an estimate of annualized volatility, the volatilities on individual days can vary.

# Exponentially Weighted Moving Average

Because volatility appears to be changing over time, it is natural to try to take this variation into account when estimating volatility. We might reason that if volatility is changing, we want to emphasize more recent observations at the expense of more distant observations. One way to do this is to compute an exponentially weighted moving average (EWMA) of the squared stock returns.

The EWMA formula computes volatility at time  $t$  as a weighted average of the time  $t - 1$  EWMA estimate,  $\hat{\sigma}_{\mathrm{EWMA},t-1}^2$ , and the time  $t - 1$  squared stock price change,  $\epsilon_{t-1}^2$ . Thus, we have

$$

\hat {\sigma} _ {\mathrm {E W M A}, t} ^ {2} = (1 - b) \epsilon_ {t - 1} ^ {2} + b \hat {\sigma} _ {\mathrm {E W M A}, t - 1} ^ {2} \tag {3}

$$ where  $b$  is the weight applied to the previous EWMA estimate. We can lag equation (3) and substitute the resulting expression for  $\hat{\sigma}_{\mathrm{EWMA},t - 1}^2$  into the right-hand side of equation (3). Continuing in this way, we obtain the EWMA estimator as a weighted average of past squared returns:

$$
\hat {\sigma} _ {\mathrm {E W M A}, t} ^ {2} = \sum_ {i = 1} ^ {\infty} \left[ (1 - b) b ^ {i - 1} \right] \epsilon_ {t - i} ^ {2} \tag {4}
$$

The term in square brackets in equation (4) is the weight applied to historical returns. The weights decline at the rate  $b$ , with the most recent return receiving the greatest weight. Because  $\sum_{i=1}^{\infty}(1 - b)b^{i-1} = 1$ , the weights on past squared returns sum to 1.

It is also possible to use a moving window when estimating EWMA volatility. For example, we might use only the previous  $n$  days of data. In this case, equation (4) becomes

$$
\begin{array}{l} \hat {\sigma} _ {\mathrm {E W M A}, t} ^ {2} = \sum_ {i = 1} ^ {n} \left[ \frac {(1 - b) b ^ {i - 1}}{\sum_ {j = 1} ^ {n} (1 - b) b ^ {j - 1}} \right] \epsilon_ {t - i} ^ {2} \\ = \sum_ {i = 1} ^ {n} \left[ \frac {(1 - b) b ^ {i - 1}}{1 - b ^ {n}} \right] \epsilon_ {t - i} ^ {2} \tag {5} \\ \end{array}
$$

Because  $\sum_{i=1}^{n}(1 - b)b^{i-1} = 1 - b^{n}$ , the weights again sum to 1.

There is also a simple updating formula, analogous to equation (3), in the case of a moving window estimate. Each period we add the latest observation and drop the oldest observation. Equation (5) is equivalent to

$$
\hat {\sigma} _ {\mathrm {E W M A}, t} ^ {2} = b \hat {\sigma} _ {\mathrm {E W M A}, t - 1} ^ {2} + \frac {1 - b}{1 - b ^ {n}} \left[ \epsilon_ {t - 1} ^ {2} - b ^ {n} \epsilon_ {t - 1 - n} ^ {2} \right] \tag {6}
$$

Example 1. Suppose  $b = 0.94$  and  $n = 60$ . We have  $1 - b^{n} = 0.9756$ . The first term in equation (6) is then

$$
\frac {(1 - 0.94)}{0.9756} = 0.0615
$$

This compares with a weight of  $1 / 60 = 0.0167$  for each observation in the equal-weighted estimator in equation (2). Subsequent (earlier) observations have weights of 0.0578, 0.0543, 0.0511, etc.

Figure 3 illustrates two different historical volatility calculations. The top panel displays the historical 60-day volatility for IBM and the S&P 500 index from 1990 to 2012. Each day, the preceding 60 trading days are used to compute the standard deviation of the continuously compounded daily return. The resulting standard deviation is multiplied by  $\sqrt{252}$  to produce an annualized standard deviation. The use of overlapping 60-day intervals induces smoothness in the series, since each day's return affects the next 60 days of volatility calculations. Even so, there is a great deal of variability in the standard deviation.

The bottom panel in Figure 3 displays the EWMA estimate for  $b = 0.94$  and  $n = 60$  days. Note that the EWMA estimator exhibits more variability than the standard historical volatility estimate. This additional variability occurs because the most recent observation has four times the weight in the EWMA estimator as in the standard estimator. Thus a particularly large return will create a large effect on the estimate. This effect will then decay at the rate  $b$ .

There are two problems with the EWMA estimator, one practical and one conceptual. First, if we use the EWMA estimator in equation (3) to forecast future volatility, we obtain a constant expected volatility at any horizon. The reason is that the forecast of  $\epsilon_t^2$  is  $\hat{\sigma}_{t - 1}^2$ , so that all forecasts of future volatility would equal  $\hat{\sigma}_{t - 1}^2$ . Thus, the EWMA estimator does not forecast patterns in future volatility. Second, the EWMA estimator is not derived from a

# FIGURE 3

Sixty-day volatility estimates for IBM and the S&P 500 index from January 1990 to March 2012. The top panel shows volatility estimates using equation (2), whereas the bottom panel uses equation (5), with  $b = 0.94$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/9b20b8e1d435474d6fc6ac173e4ce72010580dc6d8cd5d84b212e4ca1271a4fb.jpg) formal statistical model in which volatility can vary over time. ARCH and GARCH, which we discuss next, address both problems.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/851cbcc9145ea0db035efcd8fdcf9788ce0c2f62d7da43117a276e40b1b1753e.jpg)

Source: Stock price data from Yahoo.

# Time-Varying Volatility: ARCH

A casual examination of data, such as looking at historical volatilities (Figure 3), or looking at the behavior over time of implied volatilities (Figure 2), suggests that volatilities are not constant. What do we do once we formally accept that volatilities change over time? Ideally we would have a statistical model that permits volatility changes to occur. Such a model could serve both to provide better estimates of volatility and also to provide a building block for better pricing models.

Research on the behavior of volatility shows that for many assets, there are periods of turbulence and periods of calm: high volatility tends to be followed by high volatility and

# FIGURE 4

Squared daily returns on IBM (top panel) and the S&P 500 index (bottom panel) from January 2, 1990, to March 30, 2012.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/bc237cc8a958ac8b5dc82f2f9e808e85b0530622cc60fa16f42ab3a96e739b03.jpg) low volatility by low volatility. Put differently, during a period when measured volatility is high, the typical day tends to exhibit high volatility. (High volatility could in principle also arise from an increased chance of large but infrequent price moves.) Figure 4 displays squared daily returns for the S&P 500 index and IBM. At a casual level, this figure exhibits this effect, with periods in which many of the daily squared returns are large, and periods when many are small. This is called volatility clustering.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/2689b596de56152aef748a771f0f64d85a302679a9f4af2d50849a3ec2b4f7ca.jpg)

Source: Stock price data from Yahoo.

If volatility is persistent, a volatility measure should weight recent returns more heavily than more distant returns. This difference in weighting is exactly how an EWMA volatility estimate differs from the ordinary equally weighted volatility measure. ARCH and GARCH models also give more weight to recent returns.

The ARCH Model. The autoregressive conditional heteroskedasticity (ARCH) model of Engle (1982) and the subsequent GARCH (Generalized ARCH) model of Bollerslev (1986) are important and widely used volatility models that attempt to capture statistically the ebb and flow of volatility. Engle in fact won the 2003 Nobel Prize in economics for his work in this area (see the box on the next page). The basic idea motivating ARCH is that if volatility is high today it is likelier than average to be high tomorrow. Engle (1982) provided a statistical framework for modeling this effect.

# BOX I: A Nobel Prize for Volatility

The 2003 Nobel Prize in economics was awarded to Robert F. Engle and Clive Granger for their work in statistical methods in economics. Engle was cited for his work in studying the behavior of volatility. This quote, from the Royal Swedish Academy of Science press release announcing the award of the 2003 economics prize, describes Engle's contribution:

Random fluctuations over time—volatility—are particularly significant because the value of shares, options and other financial instruments depends on their risk. Fluctuations can vary considerably over time; turbulent periods with large fluctuations are followed by calmer periods with small fluctuations. Despite such time-varying volatility, in want of a better alter native, researchers used to work with statistical methods that presuppose constant volatility. Robert Engle's discovery was therefore a major breakthrough. He found that the concept of autoregressive conditional heteroskedasticity (ARCH) accurately captures the properties of many time series and developed methods for statistical modeling of time-varying volatility. His ARCH models have become indispensable tools not only for researchers, but also for analysts on financial markets, who use them in asset pricing and in evaluating portfolio risk.

Source: Royal Swedish Academy of Science, Press Release, October 2003.

Granger was cited for his work in cointegration, a statistical method important for studying the long-run behavior of economic time series.

A statistical model for asset prices could take the form

$$
\ln \left(S _ {t} / S _ {t - h}\right) = (\alpha - \delta - 0. 5 \sigma^ {2}) h + \epsilon_ {t} \tag {7}
$$

In this specification, the error term would have variance

$$
\operatorname{Var} \left(\epsilon_ {t}\right) = \sigma^ {2} h \tag {8}
$$

If  $\sigma^2$  is constant over time, we say the error term,  $\epsilon_{t}$ , is homoskedastic. Based on Figure 4, however, a more reasonable specification would be to assume that the variance of  $\epsilon_{t}$  varies over time, in which case it is heteroskedastic.

If the time interval in equation (7) is short, then, the mean,  $(\alpha - \delta - 0.5\sigma^2)h$ , is small, and  $\epsilon_t^2$  is essentially the squared return. We will continue to assume that  $h$  is short enough so that we can ignore the drift in equation (7).

Let  $\Psi_t$  denote the information that is available up to and including time  $t$ , and therefore information that we have available at time  $t$ . The idea behind Engle's ARCH model is that squared returns have a variance that changes over time according to a statistical model. Specifically, let  $q_t$  be the conditional (upon information available at time  $t - 1$ ) value of the return variance, i.e.,

$$ q _ {t} \equiv E \left(\epsilon_ {t} ^ {2} | \Psi_ {t - 1}\right)
$$

The ARCH model supposes that we can write

$$ q _ {t} = a _ {0} + \sum_ {i = 1} ^ {m} a _ {i} \epsilon_ {t - i} ^ {2} \tag {9}
$$ where  $a_0 > 0$ ,  $a_i \geq 0$ ,  $i = 1, \dots, m$ . Equation (9) is an ARCH(m) model, signifying that there are  $m$  lagged terms. In order for volatility to be well-behaved, we must have  $\sum_{i=1}^{n} a_i < 1$ . This model states that volatility at a point in time depends upon recent observed volatility.


At this point we can understand the meaning of "autoregressive conditional heteroskedasticity." Autoregressive means that the value at a point in time depends on past values. Heteroskedasticity means that variances are not equal. The unconditional variance is the variance estimated over a long period of time. The conditional variance is the variance estimated at a point in time, taking into account ("conditional upon") recent volatility. Thus, autoregressive conditional heteroskedasticity essentially means that the level of variance depends on recent past levels of variance. This is the behavior captured by equation (9).

ARCH Volatility Forecasts. An important practical question is how many lags we need in order to estimate equation (9). To better understand the behavior of an ARCH model, let's consider a single lag, where we set  $a_1 > 0$  and  $a_i = 0$ ,  $i > 1$ . The volatility equation is then

$$

E (\epsilon_ {t} ^ {2} | \Psi_ {t - 1}) = a _ {0} + a _ {1} \epsilon_ {t - 1} ^ {2} \tag {10}

$$ where  $a_0 > 0$  and  $a_1 < 1$ . Equation (10) is an ARCH(1) model.

Suppose we forecast volatility at time  $t + 1$ ,  $t + 2$ , etc., using only the information we have at time  $t$ . Equation (10) implies that for a one-period-ahead forecast of  $q_{t}$  we have

$$
\begin{array}{l} E (\epsilon_ {t + 1} ^ {2} | \Psi_ {t - 1}) = a _ {0} + a _ {1} E (\epsilon_ {t} ^ {2} | \Psi_ {t - 1}) \\ = a _ {0} + a _ {1} \left(a _ {0} + a _ {1} \epsilon_ {t - 1} ^ {2}\right) \\ \end{array}
$$

Similarly, for a two-period-ahead forecast,

$$
\begin{array}{l} E (\epsilon_ {t + 2} ^ {2} | \Psi_ {t - 1}) = a _ {0} + a _ {1} E (\epsilon_ {t + 1} ^ {2} | \Psi_ {t - 1}) \\ = a _ {0} + a _ {1} \left[ a _ {0} + a _ {1} \left(a _ {0} + a _ {1} \epsilon_ {t - 1} ^ {2}\right) \right] \\ \end{array}
$$

Continuing in this way, for an  $n$ -period-ahead forecast, we have

$$
E \left(\epsilon_ {t + n} ^ {2} \mid \Psi_ {t - 1}\right) = a _ {0} \left(1 + \sum_ {i = 1} ^ {n} a _ {1} ^ {i}\right) + a _ {1} ^ {n} \epsilon_ {t - 1} ^ {2} \tag {11}
$$

This predicted pattern of volatility persistence is very specific and inflexible. A large squared return today implies larger squared returns at all future dates, but the effect decays per period by the factor  $a_1$ . Shocks to volatility are expected to die off at a constant rate.

Equation (11) implies that unconditional volatility (the value we would estimate as a long-run average) is

$$
\bar {\sigma} ^ {2} = a _ {0} \left(1 + a _ {1} + a _ {1} ^ {2} + \dots\right) = \frac {a _ {0}}{1 - a _ {1}} \tag {12}
$$

Thus, with estimates of  $a_0$  and  $a_1$  we can compute the unconditional volatility.

In practice, if markets become more turbulent, they may remain more turbulent for a period of time. Equation (9) with a single lag cannot account for a period of sustained high volatility. As you might guess, more than one lag—generally many lags—are necessary for ARCH to fit the data.

# The GARCH Model

The GARCH model, due to Bollerslev (1986), is a variant of ARCH that allows for infinite lags yet can be estimated with a small number of parameters. The GARCH model has the form

$$ q _ {t} = a _ {0} + \sum_ {i = 1} ^ {m} a _ {i} \epsilon_ {t - i} ^ {2} + \sum_ {j = 1} ^ {n} b _ {i} q _ {t - i} \tag {13}
$$ where  $a_0 > 0, a_i \geq 0, i = 1, \dots, m, b_i \geq 0, i = 1, \dots, n,$  and  $\sum_{i=1}^{m} a_i + \sum_{i=1}^{n} b_i < 1$ . This model states that volatility at a point in time depends upon recent volatility as well as recent squared returns. Equation (13) is a GARCH(m, n) model.


GARCH(1,1) is frequently used in practice. The GARCH(1,1) model is

$$ q _ {t} = a _ {0} + a _ {1} \epsilon_ {t - 1} ^ {2} + b _ {1} q _ {t - 1} \tag {14}
$$

It is instructive to compare the GARCH(1,1) model to the ARCH(1) model, equation (10). To do this, we can rewrite equation (14) to eliminate  $q_{t-1}$  on the right-hand side. Lagging equation (14) and substituting the result for  $q_{t-1}$  on the right-hand side of equation (14), we obtain

$$ q _ {t} = a _ {0} + a _ {1} \epsilon_ {t - 1} ^ {2} + b _ {1} \left(a _ {0} + a _ {1} \epsilon_ {t - 2} ^ {2} + b _ {1} q _ {t - 2}\right)
$$

Continuing in this way, we obtain

$$
\begin{array}{l} q _ {t} = a _ {0} \sum_ {i = 0} ^ {\infty} b _ {1} ^ {i} + a _ {1} \sum_ {i = 0} ^ {\infty} b _ {1} ^ {i} \epsilon_ {t - 1 - i} ^ {2} \\ = \frac {a _ {0}}{1 - b _ {1}} + \frac {a _ {1}}{1 - b _ {1}} \sum_ {i = 0} ^ {\infty} (1 - b _ {1}) b _ {1} ^ {i} \epsilon_ {t - 1 - i} ^ {2} \tag {15} \\ \end{array}
$$

A GARCH(1,1) model is therefore equivalent to an  $\mathrm{ARCH}(\infty)$  model in which the lag coefficients decline at the rate  $b_{1}$ . Notice that the last term in equation (15) can be rewritten in terms of an EWMA volatility estimator (5):

$$ q _ {t} = \frac {a _ {0}}{1 - b _ {1}} + \frac {a _ {1}}{1 - b _ {1}} \hat {\sigma} _ {\mathrm {E W M A}} ^ {2} \tag {16}
$$

It is important to note that the parameter  $b_{1}$  in the EWMA expression in equation (16) is not arbitrarily chosen, as in equation (3), but is estimated as part of the GARCH estimation procedure.

Maximum Likelihood Estimation of a GARCH Model. Given the assumption that continuously compounded returns have a distribution that is conditionally normal, with variance  $q_{t}$  and mean zero, we can estimate a GARCH model using maximum likelihood.

The probability density for  $\epsilon_{t}$ , conditional on  $q_{t}$ , is

$$ f \left(\epsilon_ {t}; q _ {t}\right) = \frac {1}{\sqrt {2 \pi q _ {t}}} e ^ {- 0. 5 \epsilon_ {t} ^ {2} / q _ {t}} \tag {17}
$$

Since the  $\epsilon_{t}$  are conditionally independent, the probability of observing the particular set of  $n$  returns is the product of the probabilities, which gives us the likelihood function:

$$
\prod_ {i = 1} ^ {n} f (\epsilon_ {i} | q _ {i}) = \prod_ {i = 1} ^ {n} \frac {1}{\sqrt {2 \pi q _ {i}}} e ^ {- 0. 5 \epsilon_ {i} ^ {2} / q _ {i}}
$$

For a GARCH(1,1),  $q_{i}$  is a function of  $a_0$ ,  $a_1$ , and  $b_{1}$ . The maximum likelihood estimate is the set of parameters— $a_0$ ,  $a_1$ , and  $b_{1}$ —that maximizes the probability of observing the returns we actually observed. Typically, it is easiest to maximize the log of the likelihood function, in which case maximizing the likelihood is the same as maximizing

$$
\sum_ {i = 1} ^ {n} \left[ - 0. 5 \ln \left(q _ {i}\right) - 0. 5 \epsilon_ {i} ^ {2} / q _ {i} \right] \tag {18}
$$

We omit the term  $-0.5\ln (2\pi)$  since it does not affect the solution. The maximization of equation (18) can be performed in statistical packages or even using Solver in Excel.

Volatility Forecasts. We can forecast volatility in the GARCH(1,1) model as we did in the ARCH(1) model. To understand the calculation, recognize that since  $q_{t} = E(\epsilon_{t}^{2}|\Psi_{t - 1})$ , we then have  $E(q_{t}|\Psi_{t - j}) = E(\epsilon_{t}^{2}|\Psi_{t - j})$  for  $j\geq 1$ . Thus, using equation (14), we have

$$
\begin{array}{l} E \left(q _ {t + 1} \mid \Psi_ {t - 1}\right) = a _ {0} + a _ {1} E \left(\epsilon_ {t} ^ {2} \mid \Psi_ {t - 1}\right) + b _ {1} E \left(q _ {t} \mid \Psi_ {t - 1}\right) \\ = a _ {0} + \left(a _ {1} + b _ {1}\right) E \left(q _ {t} \mid \Psi_ {t - 1}\right) \\ = a _ {0} + \left(a _ {1} + b _ {1}\right) \left(a _ {0} + a _ {1} \epsilon_ {t - 1} ^ {2} + b _ {1} q _ {t - 1}\right) \\ \end{array}
$$

The goal in this calculation is to express the forecasted value of  $q_{t + 1}$  in terms of what we can observe at time  $t$  —namely,  $\epsilon_{t - 1}$  and  $q_{t - 1}$ . Following the same procedure, we obtain

$$
E (q _ {t + 2} | \Psi_ {t - 1}) = a _ {0} + a _ {0} (a _ {1} + b _ {1}) + (a _ {1} + b _ {1}) ^ {2} (a _ {0} + a _ {1} \epsilon_ {t - 1} ^ {2} + b _ {1} q _ {t - 1})
$$

For a  $k$  step-ahead forecast, we have

$$
E (q _ {t + k} | \Psi_ {t - 1}) = a _ {0} + a _ {0} \sum_ {i = 1} ^ {k} (a _ {1} + b _ {1}) ^ {i} + (a _ {1} + b _ {1}) ^ {k} (a _ {1} \epsilon_ {t - 1} ^ {2} + b _ {1} q _ {t - 1})
$$

As we let  $k$  go to infinity, we obtain an estimate of unconditional volatility in the GARCH(1,1) model:

$$
\bar {\sigma} ^ {2} = a _ {0} \sum_ {i = 0} ^ {\infty} \left(a _ {1} + b _ {1}\right) ^ {i} = \frac {a _ {0}}{1 - a _ {1} - b _ {1}} \tag {19}
$$

Using equations (16) and (19), we can express the GARCH(1,1) equation in terms of the EWMA estimate of volatility:

$$ q _ {t} = \alpha \bar {\sigma} ^ {2} + (1 - \alpha) \hat {\sigma} _ {\mathrm {E W M A}} ^ {2} \tag {20}
$$ where  $\alpha = (1 - a_{1} - b_{1}) / (1 - b_{1})$ . Thus, the GARCH(1,1) expected volatility at a point in time is a weighted average of the unconditional variance,  $\bar{\sigma}^2$ , and the current estimated EWMA volatility,  $\hat{\sigma}_{\mathrm{EWMA}}^2$ .


Example 2. Estimating a GARCH(1,1) model for IBM using daily return data from January 1999 to December 2003 yields the GARCH volatility estimate

$$ q _ {t} = 0. 0 0 0 0 0 1 3 0 5 + 0. 0 4 4 6 \epsilon_ {t - 1} ^ {2} + 0. 9 5 5 2 q _ {t - 1}
$$

The implied estimate of the unconditional annualized volatility is

$$
\sqrt {\frac {0.000001305}{1 - 0.0446 - 0.9552} \times 252} = 1.5318
$$

The historical volatility during this period was  $39.85\%$ . An estimated unconditional volatility of  $153\%$  suggests that the GARCH(1,1) model has trouble fitting the data. In this case, it turns out that the problem is caused by large returns on days during which IBM announced earnings.

During the 1999-2003 period there were 4 days on which the absolute 1-day return exceeded  $12\%$ . On each of these days (April 21, 1999; October 20, 1999; July 19, 2000; and October 17, 2000), IBM announced earnings. The  $153\%$  volatility illustrates the GARCH model's difficulty in explaining these large magnitude returns under the assumption that returns are normally distributed. If we omit these 4 days from the sample, the estimated GARCH model is

$$ q _ {t} = 0. 0 0 0 0 0 2 2 0 3 + 0. 0 5 0 7 \epsilon_ {t - 1} ^ {2} + 0. 9 4 6 2 q _ {t - 1}
$$

These parameters imply an unconditional volatility of

$$
\sqrt {\frac {0.000002203}{1 - 0.0507 - 0.9462} \times 252} = 0.4229
$$

The other parameters do not change much, and this unconditional volatility estimate of  $42.29\%$  is more reasonable. This example illustrates that a GARCH model estimated using normally distributed returns can be sensitive to extreme data points. In addition to eliminating earnings announcement days, one could permit a fatter-tailed return distribution (e.g., see Bollerslev, 1987).

# Realized Quadratic Variation

The quadratic variation (the sum of squared increments) of a Brownian motion from  $t$  to  $T$  is  $T - t$ . That is, suppose we frequently sample a diffusion process,  $\sigma Z(t)$ . Letting  $n = (T - t) / h$  and  $Z(i) = Z(t + ih)$ , we have

$$
\sum_ {i = 1} ^ {n} [ \sigma Z (i + 1) - \sigma Z (i) ] ^ {2} \approx \sigma^ {2} (T - t)
$$

Quadratic variation therefore provides an estimate of the total variance of the process over time.

Suppose stock returns are generated by equation (1), in which volatility varies over time. Consider what happens if we compute the quadratic variation of the log stock price. In order to do this, we would need to observe the stock price at a high frequency—for example, using multiple prices over the course of the trading day. Suppose we observe continuously compounded returns from time  $t$  to  $T$  every  $h$  periods. To simplify notation, let  $S(t + ih) = S(i)$ , and  $\sigma(i) = \sigma(S_{t + ih}, X_{t + ih}, t + ih)$ . The realized quadratic variation of the stock price from time  $t$  to time  $T$  is then the sum of squared, continuously compounded returns:

$$
\begin{array}{l} \sum_ {i = 1} ^ {n} \ln [ S (i) / S (i - 1) ] ^ {2} \\ = \sum_ {i = 1} ^ {n} \left\{\left[ \alpha - \delta - 0. 5 \sigma (i - 1) ^ {2} \right] h + \sigma (i - 1) [ Z (i) - Z (i - 1) ] \right\} ^ {2} \tag {21} \\ \approx \sum_ {i = 1} ^ {n} \sigma (i - 1) ^ {2} h \\ \end{array}
$$

When  $h$  is small, the drift term in the summation is small relative to the diffusion term, so that the squared change in  $Z(t)$  dominates the summation. The right-hand side is an estimate of the total stock price variance from time  $t$  to  $T$ .

One well-known difficulty with using high-frequency data is that some observed price movements occur simply because transactions alternate between customer purchases (made at the dealer's offer price) and customer sales (made at the dealer's bid price). The resulting up and down movement in the price is called "bid-ask bounce." Andersen et al. (2003) demonstrate a way to deal with intraday data when they use currency data to compare realized quadratic variation with other variance estimates, such as GARCH(1,1). They calculate realized quadratic variation as follows. At 30-minute intervals, they observe the bid and ask prices immediately preceding and following the 30-minute mark. They interpolate

Apart from the  $n / (n - 1)$  term, this appears to be the same as annualized realized quadratic variation. In practice, the term "historical volatility" usually implies the use of daily or less frequent data over medium to long horizons, while "quadratic variation" implies the use of intraday data over short horizons.

the averaged bid and ask prices to impute a price at 30-minute intervals. They then use this imputed price to measure the 30-minute continuously compounded return, from which they construct realized quadratic variation. In comparing forecasts based on realized quadratic variation with other methods of forecasting volatility, both inand out-of-sample over oneand ten-day horizons, they find that realized quadratic variation is generally at least as good as other estimates.

# 3. HEDGING AND PRICING VOLATILITY

In this section we discuss derivative claims that have volatility as an underlying asset. We begin by discussing volatility and variance swaps (including one contract based on the VIX). We then look at an example of pricing a variance swap. Finally, we discuss the construction of the history of the VIX volatility index reported by the Chicago Board Options Exchange (CBOE). In this section we will let  $V$  denote measured volatility and  $V^2$  measured variance.

# Variance and Volatility Swaps

A variance swap is a forward contract that pays the difference between a forward price,  $F_{0,T}(V^2)$ , and some measure of the realized stock price variance,  $\hat{V}^2$ , over a period of time multiplied by a notional amount. The payoff to a variance swap is

$$
[ \hat {V} ^ {2} - F _ {0, T} (V ^ {2}) ] \times N
$$ where  $N$  is the notional amount of the contract. There are numerous measurement details that we have to specify in order to write the contract for a variance swap:


- How frequently the return is measured.
- Whether returns are continuously compounded or arithmetic.
- Whether the variance is measured by subtracting the mean or by simply squaring the returns.
- The period of time over which variance is measured.
- How to handle days on which, unexpectedly, trading does not occur.

Most of these design issues are straightforward, but the last deserves some comment. Most futures contracts settle based upon a final observable price. A variance contract, by contrast, settles based upon a series of prices. Therefore, failing to observe a price (for example, because the market is unexpectedly closed) creates a problem for measuring the realized variance. If the market is unexpectedly closed on day  $t$ , then the next measured return will be a 2-day return, which will have a greater expected variance than a 1-day return. The following example shows how one contract deals with this issue.

Example 3. Three-month S&P 500 variance futures traded on the Chicago Futures Exchange are an example of a variance swap. The payoff is based on the annualized sum of squared, continuously compounded daily returns over a 3-month period,  $\hat{V}^2$ . The measured price is quoted as  $\hat{V}^2 \times 10,000$ , and by definition a one-unit change in this number (called a variance point) is worth 50.

For simplicity, we treat the payoff as if it were a forward contract, settling on one day. Let  $\epsilon_{i}$  be the continuously compounded return on day  $i$ . The payoff at expiration is

$$

\$ 50 \times \left[ 1 0, 0 0 0 \times 2 5 2 \times \sum_ {i = 1} ^ {n _ {a} - 1} \frac {\epsilon_ {i} ^ {2}}{n _ {e} - 1} - F _ {0, T} (V ^ {2}) \right]

$$

In this formula,  $n_a$  is the actual number of S&P prices used in constructing  $V^2$  (hence there are  $n_a - 1$  returns), and  $n_e$  is the number of expected trading days at the outset of the contract. Thus, in the event of an unexpected trading halt, the sum of squared returns will be divided by a number larger than the number of squared returns. The reason for this is that the trading halt will not necessarily change the total variance over the period (if the trading halt is on a Tuesday, for example, the Monday to Wednesday return will typically reflect 2 days of volatility). Dividing the sum of squared returns by  $n_a$  would mechanically increase the measured variance when there is a trading halt. Dividing by  $n_e$  prevents this.

A volatility swap is like a variance swap except that it pays based on volatility rather than variance. The payoff is

$$

(\hat {V} - F _ {0, T} (V)) \times N

$$ where  $F_{0,T}(V)$  is the forward price for volatility.

Example 4. The Chicago Board Options Exchange volatility index, the VIX, is the basis for a volatility futures contract that trades on the Chicago Futures Exchange. Unlike the variance futures contract, the volatility futures contract settles based upon the VIX index. The payoff is

$$
1 0 0 0 \times [ \mathrm {V I X} _ {T} - F _ {0, T} (V) ]
$$

In comparing the volatility futures contract (Example 4) with the variance futures contract (Example 3), note that the two contracts are based on volatility measured over different periods of time. The variance contract settles based on realized quadratic variation over the period from 0 to  $T$ , and thus the futures price reflects volatility expectations from time 0 to time  $T$ . The VIX contract, since it is based on the VIX index, measures volatility expectations from time  $T$  to time  $T + 30$  days. Thus, the volatility contract measures volatility going forward from the settlement date, while the variance contract looks backward from the settlement date.

There are at least two reasons that the variance contract is in some sense more "natural" than a volatility contract. First, we will see below that it is possible to price and hedge a variance forward contract (given some assumptions) using option prices. The pricing of a volatility forward contract is more complicated due to Jensen's inequality. Because the volatility is the square root of the variance, Jensen's inequality implies that the volatility forward price will be less than the square root of the variance forward price of the variance.

Second, variance swaps arise naturally from dealers hedging their option positions. The profit of a delta-hedging dealer depends on the squared stock price change. Dealers can hedge this risk in realized variance by using variance swaps. For example, a dealer with a negative gamma position could enter a swap that pays the dealer when the stock has a large price change.

# Pricing Volatility

We will see in this section one way to determine the fair price for a forward contract on variance.

Consider a variance contract that pays the sum of squared price changes from time 0 to time  $T$ . If price changes are measured over an interval of length  $h = T / n$ , the contract would have the payoff

$$
\text {P a y o f f} = \sum_ {i = 1} ^ {n} \left(\frac {S _ {(i + 1) h} - S _ {i h}}{S _ {i h}}\right) ^ {2} \tag {22}
$$

Note that, since arithmetic and continuously compounded returns are close over small intervals, this is the same as the realized quadratic variation measure discussed in the previous section. As  $h$  gets small, this equation (22) becomes

$$
\text {P a y o f f} = \int_ {0} ^ {T} \sigma \left(S _ {t}, X _ {t}, t\right) ^ {2} d t \tag {23}
$$ where  $\sigma(S, X, t)$  is the diffusion coefficient in equation (1). We want to answer two closely related questions. First, how is it possible to replicate the payoff to such a contract? Second, how should the contract be priced? As you might suspect, replicating the contract yields a way to price it.


In principle, the price of a forward contract on variance will be the expectation of equation (23) under the risk-neutral measure. In practice, how do we compute such an expectation? The following section will provide one answer.

The Log Contract. Neuberger (1994) pointed out that a forward contract that pays

$$

\ln \left(S _ {T} / S _ {0}\right) \tag {24}

$$ could be used to hedge and speculate on variance. A claim with the payoff in equation (24) is a log contract. As of 2012, there is no exchange-traded log contract in existence, but for the moment, suppose such a contract does exist.


Assuming the stock price follows equation (1), we can use Itô's Lemma to characterize the process followed by the log of the stock price. (Note that we assume that the stock price does not jump.) Equation (1) permits a wide range of processes for the volatility, but the prospective volatility over the next instant is known. Applying Itô's Lemma, we have

$$ d \left[ \ln \left(S _ {t}\right) \right] = \frac {1}{S} d S - 0. 5 \frac {1}{S ^ {2}} d S ^ {2}
$$

Thus,

$$
0. 5 \sigma (t) ^ {2} d t = \frac {1}{S} d S - d [ \ln (S _ {t}) ]
$$

Integrating this equation, we have

$$
0. 5 \int_ {0} ^ {T} \sigma^ {2} (t) d t = \int_ {0} ^ {T} \frac {1}{S} d S - \int_ {0} ^ {T} d [ \ln (S _ {t}) ] d t
$$

The integral on the left-hand side is quadratic variation over 0 to  $T$ . Let  $\hat{\sigma}^2$  denote annualized realized volatility from time 0 to time  $T$ . We can then rewrite this as

$$
0. 5 T \hat {\sigma} ^ {2} = \int_ {0} ^ {T} \frac {1}{S} d S - \ln \left(S _ {T} / S _ {0}\right) \tag {25}
$$

The right-hand side of equation (25) is the cumulative return to an investment in  $1 / S$  shares, less the return on a contract paying the realized continuously compounded return on the stock price from time 0 to time  $T$ . The left-hand side is annualized realized quadratic variation, which from equation (23) is also the payoff on a variance contract. Equation (25) demonstrates the connection between the payoff to the log contract and volatility.

Take expectations of both sides of equation (25) with respect to the risk-neutral stock price distribution. The expectation of  $dS / S$  under the risk-neutral distribution is  $r dt$ . Hence we obtain

$$
\begin{array}{l} 0. 5 T \mathrm {E} _ {0} ^ {*} \left[ \hat {\sigma} ^ {2} \right] = \mathrm {E} ^ {*} \left[ \int_ {0} ^ {T} \frac {1}{S} d S - \ln \left(S _ {T} / S _ {0}\right) \right] \\ = r T - \mathrm {E} _ {0} ^ {*} \left[ \ln \left(S _ {T} / S _ {0}\right) \right] \tag {26} \\ \end{array}
$$

This expression seems to be of little help in pricing volatility. There is a trick, however, for pricing the log contract using other instruments.

Valuing the Log Contract. Demeterfi et al. (1999) and Carr and Madan (1998) independently showed that it is possible to use a portfolio of options to replicate the payoff on the log contract. Note first that

$$
\int_ {a} ^ {b} \frac {1}{K ^ {2}} (K - S _ {T}) d K = \left[ \ln (K) + \frac {S _ {T}}{K} \right] _ {a} ^ {b} = \ln (b) - \ln (a) + \frac {S _ {T}}{b} - \frac {S _ {T}}{a}
$$

Use this to obtain the following identity, for any  $S_T$  (see Demeterfi et al., 1999):

$$
- \ln \left(\frac {S _ {T}}{S _ {*}}\right) = - \frac {S _ {T} - S _ {*}}{S _ {*}} + \int_ {0} ^ {S _ {*}} \frac {1}{K ^ {2}} \max  (K - S _ {T}, 0) d K + \int_ {S _ {*}} ^ {\infty} \frac {1}{K ^ {2}} \max  (S _ {T} - K, 0) d K
$$

Notice that if we take expectations of both sides with respect to the risk-neutral distribution for  $S_{T}$ , the integrals on the right-hand side become undiscounted option prices, and the expected stock price is the forward price. We can add and subtract  $\ln(S_0)$  to the left-hand side and then take expectations, to obtain

$$
\begin{array}{l} - \mathrm {E} ^ {*} \ln \left(\frac {S _ {T}}{S _ {0}}\right) + \ln \left(\frac {S ^ {*}}{S _ {0}}\right) \\ = - \left[ \frac {F _ {0 , T} (S) - S _ {*}}{S _ {*}} \right] + e ^ {r T} \left[ \int_ {0} ^ {S _ {*}} \frac {1}{K ^ {2}} P (K) d K + \int_ {S _ {*}} ^ {\infty} \frac {1}{K ^ {2}} C (K) d K \right] \\ \end{array}
$$

Use this expression to substitute for  $\mathrm{E}^* [\ln (S_T / S_0)]$  in equation (26). The result is

$$
\begin{array}{l} \hat {\sigma} ^ {2} = \frac {2}{T} \left[ r T - \ln \left(\frac {S _ {*}}{S _ {0}}\right) - \frac {F _ {0 , T} (S) - S _ {*}}{S _ {*}} \right. \tag {27} \\ \left. + e ^ {r T} \left(\int_ {0} ^ {S _ {*}} \frac {1}{K ^ {2}} P (K) d K + \int_ {S _ {*}} ^ {\infty} \frac {1}{K ^ {2}} C (K) d K\right) \right] \\ \end{array}
$$

Finally, note that if we set  $S_{*} = F_{0,T}(S)$ , the first three terms on the right-hand side of equation (27) vanish, and we have

$$
\hat {\sigma} ^ {2} = \frac {2 e ^ {r T}}{T} \left[ \int_ {0} ^ {F _ {0, T}} \frac {1}{K ^ {2}} P (K) d K + \int_ {F _ {0, T}} ^ {\infty} \frac {1}{K ^ {2}} C (K) d K \right] \tag {28}
$$

Remarkably, this formula gives us an estimate of expected realized variance that we compute using the observed prices of out-of-the-money puts and calls! ("Out-of-the-money" here is with respect to the forward price rather than the current stock price.) It is important to note that we have not assumed that options are priced using the Black-Scholes formula or any other specific model.

One important characteristic of equation (28) is that the variance estimate can be replicated by trading options. It is possible to buy the strip of out-of-the-money puts and calls, weighted by the inverse squared strike price, to create a portfolio that has the value of  $\hat{\sigma}^2$ .

To get a sense of why equation (28) works, we can examine the vega of a portfolio of options held in proportion to  $1 / K^2$ . Figure 5 graphs vegas for a set of options and also displays the vega of a portfolio where the option holdings are weighted by the inverse squared strike price. The resulting portfolio has a vega that is not zero and is constant over a wide range of stock prices. If you hold such a portfolio, you make or lose money depending on volatility changes.

Computing the VIX. We can now explain the formula used to compute the CBOE's new volatility index. The calculation is based on equation (28). In practice, option strike prices are discrete and there may be no option for which the strike price equals the index forward price. The actual formula used by the CBOE is a discrete approximation to equation (28):

$$
\hat {\sigma} ^ {2} = \frac {2}{T} \sum_ {K _ {i} \leq K _ {0}} \frac {\Delta K _ {i}}{K _ {i} ^ {2}} e ^ {r T} \operatorname {P u t} \left(K _ {i}\right) + \frac {2}{T} \sum_ {K _ {i} > K _ {0}} \frac {\Delta K _ {i}}{K _ {i} ^ {2}} e ^ {r T} \operatorname {C a l l} \left(K _ {i}\right) - \frac {1}{T} \left[ \frac {F _ {0 , T}}{K _ {0}} - 1 \right] ^ {2} \tag {29}
$$

# FIGURE 5

Solid lines depict Vegas of options with (from left to right) strikes of 25, 30, 35, 40, 45, 50, and 55. The dashed line is the weighted sum of the Vegas, with each divided by the squared strike price, times 600. The calculations assume  $\sigma = 0.30$ ,  $r = 0.08$ ,  $T = 0.25$ , and  $\delta = 0$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/98315a388c8dfd0ad4165cfb70425e2013711fde5be86ca590a0939c66b4e0ce.jpg) where  $K_{0}$  is the first strike below the forward price for the index and  $\Delta K_{i} = (K_{i + 1} - K_{i - 1}) / 2$ . The last term is a correction for the fact that there may be no option with a strike equal to the forward price.

# 4. EXTENDING THE BLACK-SCHOLES MODEL

In this section we examine three pricing models that are capable of generating volatility skew patterns resembling those observed in option markets. The goal is both to understand how the Black-Scholes model can be extended and also to gain a sense of how these extensions help us to better understand the data. We consider three models: (1) the Merton jump diffusion model, which relaxes the assumption that stock price moves are continuous; (2) the constant elasticity of variance model, primarily due to Cox, which relaxes the assumption that volatility is constant; and (3) the Heston stochastic volatility model, which allows volatility to follow an Itô process that is correlated with the stock price process. These models have all been significantly generalized, but we can use them as touchstones for better understanding the economics of departures from the Black-Scholes lognormality assumption.

At the outset, note that the Black-Scholes model easily accommodates time-varying volatility if the volatility pattern is deterministic. Specifically, Merton (1973b) showed that if volatility is a deterministic function of time, then it is possible to price a European option with  $T - t$  periods to maturity by substituting  $\int_t^T \sigma^2(s) ds$  for  $\sigma^2(T - t)$  in the Black-Scholes formula. We can think about this result in the context of a delta-hedging market-maker. As long as the market-maker knows the volatility at each point in time, the delta-hedge will work the same as if volatility were constant. What creates a problem is a random change in volatility.

# Jump Risk and Implied Volatility

In this section we see how the jump model can account for the implied volatility patterns like those in Figure 1.

The Merton jump model assumes that stock prices have a different distribution than that assumed by the Black-Scholes model. If prices in the real world were generated by the Merton jump model, and if we then used the Merton jump model to compute implied volatilities, we would find that all options had the same implied volatility.[13] In real life, however, we don't know exactly what distribution generated the observed option prices. Black-Scholes implied volatilities are a way to interpret observed prices, telling us how the distribution implied by option prices differs from the lognormal model in the Black-Scholes formula.

Figure 6 shows Black-Scholes implied volatilities for option prices computed using Merton's jump formula. All of the plots assume that the diffusive standard deviation is  $\sigma = 20\%$  and the mean jump is  $\alpha_{J} = -10\%$ . The jump intensity,  $\lambda$ , and jump volatility,  $\sigma_{J}$ , vary across the panels.

As in Figure 1, the short-term options in Figure 6 have a more pronounced smile than long-term options. In general, smiles are more pronounced when the jump volatility is greater because the chance is greater of a large stock price change that will move an out-of-the-money option into the money. A larger volatility increase is required for out-of-the-money options to account for the resulting option price increase.

In addition to affecting the amount of the smile, jumps also increase the level of implied volatilities. As  $\lambda$  and  $\sigma_{J}$  increase, the total effective stock price volatility increases, which results in a higher implied volatility (for example, the curves in the bottom right panel are higher than curves in other panels). For options with 1 year to maturity, there is more a smirk than a smile. Jumps raise overall volatility, but induce less of a smile for longer-term options.

The calculations here illustrate how a nonlognormally distributed underlying asset can give rise to implied volatility patterns similar to those observed in markets. It is important to keep in mind that the Merton model assumes that jumps are diversifiable, hence there is no risk premium associated with jumps. Also, nonjump volatility is constant. We have seen that volatility changes over time, and the empirical evidence (which we discuss below) is that there are risk premia associated with both volatility and jumps.

# Constant Elasticity of Variance

Cox (1975) proposed the constant elasticity of variance (CEV) model, in which volatility varies with the level of the stock price. Specifically, Cox assumed that the stock follows the process

$$ d S = (\alpha - \delta) S d t + \bar {\sigma} S ^ {\beta / 2} d Z \tag {30}
$$

# FIGURE 6

Implied volatilities computed using the Black-Scholes formula when option prices are computed using the Merton jump formula. Each panel has an implied volatility plot for three different times to expiration. The individual panels show plots for an expected number of jumps per year, \lambda, of 0.5 and 4, and jump volatilities of 0.1 and 0.3. In all cases S_0 = \100, \sigma = 30\%, r = 8\%, \delta = 0, and \alpha_J = -0.10.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/350ac29820c327f9d188d915251354eb7a9ff18353895abdfd34a260a12592b6.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/6ba6815a39dacc7900fd6fc01d8b57c87574e64b8b5b0763fc58cfae4535147b.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/6cd64dca4da05e2793c27396535892bddc4b3ce28fee0423292ae375b829ce27.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/504c7738eab6aa59b2ea91ecd67603c4977043255398ea131b2f21821a8c6684.jpg)

Equation (30) describes the instantaneous dollar return on the stock. The instantaneous rate of return on the stock is

$$
\frac {d S}{S} = (\alpha - \delta) d t + \bar {\sigma} S ^ {(\beta - 2) / 2} d Z \tag {31}
$$

The instantaneous standard deviation of the stock return is therefore

$$
\sigma (S) = \bar {\sigma} S ^ {(\beta - 2) / 2} \tag {32}
$$

When  $\beta < 2$ , the CEV model implies that volatility is decreasing with the stock price. Volatility increases with the stock price when  $\beta > 2$ . When  $\beta = 2$ , the CEV model yields the standard lognormal process.

It is important to be clear that  $\bar{\sigma}$  is a parameter that determines volatility, but the instantaneous rate of return volatility is  $\bar{\sigma} S^{(\beta -2) / 2}$ . Thus, if we want the stock to have a volatility of  $\sigma_0$  at the current stock price,  $S_{0}$ , we must then set  $\bar{\sigma}$  so that  $\sigma_0 = \bar{\sigma} S^{(\beta -2) / 2}$ , or

$$
\bar {\sigma} = \sigma_ {0} S ^ {(2 - \beta) / 2}
$$

From equation (30), the elasticity of the instantaneous stock price variance with respect to the stock price is a constant,  $\beta$ :

$$
\frac {\partial (\bar {\sigma} ^ {2} S ^ {\beta})}{\partial S} \times \frac {S}{\bar {\sigma} ^ {2} S ^ {\beta}} = \beta
$$

This is where the name "constant elasticity of variance" comes from.

One motivation for the CEV model was the finding in Black (1976b) (see also Christie, 1982) that volatility increases when stock prices fall. One potential explanation for this stems from thinking about the effect on equity risk from a fall in leverage. As the stock price decreases, the debt-to-equity ratio rises, and the equity volatility should therefore increase. Thus, the negative correlation between stock prices and volatility is called the leverage effect.

A drawback of the CEV model may already have occurred to you. If the stock price declines and  $\beta < 2$ , the CEV model implies that volatility will increase permanently. In practice and in theory, such a deterministic relationship between volatility and the stock price level seems implausible. However, such a relationship seems more reasonable when modeling interest rates. The interest rate in the CIR model, for example, follows a CEV process.

The CEV Pricing Formula. There is a relatively simple pricing formula for a European call when the stock price follows the CEV process. $^{14}$  Following Schroder (1989), define

$$
\begin{array}{l} \kappa = \frac {2 (r - \delta)}{\bar {\sigma} ^ {2} (2 - \beta) \left(e ^ {(r - \delta) (2 - \beta) T} - 1\right)} \\ x = \kappa S ^ {2 - \beta} e ^ {(r - \delta) (2 - \beta) T} \\ y = \kappa K ^ {2 - \beta} \\ \end{array}
$$

The CEV pricing formula for a European call is different for the cases  $\beta < 2$  and  $\beta > 2$ . Let  $Q(a, b, c)$  denote the noncentral chi-squared distribution function with  $b$  degrees of freedom and noncentrality parameter  $c$ , evaluated at  $a$ . The CEV call price is given by

# FIGURE 7

Implied volatility in the CEV model. Both panels assume that  S = \100 ,  \sigma_0 = 0.30 ,  r = 0.08 , and  T = 1 . In the top panel,  \beta = 1 , while in the bottom panel,  T = 0.5 .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/068bfc88365989b351500be860fb0d9a5c4c9fa2a3233bca391dd00374299813.jpg)

Implied Volatility

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/edecb9ff26fe9efc0b5c33cb6b265a5550b2bebc233ff724038e836cacfe8b3a.jpg)

Implied Volatility

$$
S e ^ {- \delta T} [ 1 - Q (2 y, 2 + 2 / (2 - \beta), 2 x) ] - K e ^ {- r T} Q (2 x, 2 / (2 - \beta), 2 y) \quad \beta <   2 \tag {33}
$$

$$
S e ^ {- \delta T} \left[ 1 - Q (2 x, 2 / (\beta - 2), 2 y) \right] - K e ^ {- r T} Q (2 y, 2 + 2 / (\beta - 2), 2 x) \quad \beta > 2
$$

Implied Volatility in the CEV Model. When  $\beta < 2$ , the CEV model generates a Black-Scholes implied volatility skew curve resembling that in Figure 1: Implied volatility decreases with the option strike price. To understand why the CEV model generates this volatility skew, note from equation (31) that when  $\beta < 2$  and the stock price falls, volatility increases. Thus compared with the case of a constant volatility, an out-of-the-money put option has a greater chance of exercise and is likely to be deeper in-the-money when it is exercised. The only way for the Black-Scholes model to account for this higher price is with a higher volatility. As the strike price increases, less of the option value is due to the stock price behavior at low prices, and volatility therefore need not increase as much.

Figure 7 plots implied volatility curves generated by using the Black-Scholes formula to compute implied volatility for prices generated by the CEV model. The top panel shows that, for the given parameters, the implied volatility curve is unaffected by changing time to maturity.

# The Heston Model

In the CEV model, the instantaneous volatility of the stock evolves stochastically with the stock price, but volatility is a nonstochastic function of the stock price. A more general approach is to permit volatility to follow a stochastic process. The Heston model (Heston,

NaN. allows volatility to vary stochastically but still to be correlated with the stock.[16] This generates a different option pricing model than the CEV process and also implies that market-makers must hedge both stock price and volatility risk. In the CEV model, market-makers need only hedge with the stock since volatility depends on the stock price.

Let  $v(t)$  be the instantaneous stock return variance; hence,  $\sqrt{v(t)}$  is the volatility. Suppose that the stock follows the process

$$
\frac {d S}{S} = (\alpha - \delta) d t + \sqrt {v (t)} d Z _ {1} \tag {34}
$$

Assume that the variance,  $v(t)$ , follows the mean-reverting process

$$ d v (t) = \kappa [ \bar {v} - v (t) ] d t + \sigma_ {v} \sqrt {v (t)} d Z _ {2} \tag {35}
$$

We assume that  $\mathrm{E}(dZ_1dZ_2) = \rho dt$

The equation for volatility, equation (35), has two noteworthy characteristics. First, the instantaneous variance,  $v(t)$ , is mean-reverting, tending toward the value  $\bar{v}$ , with a speed of adjustment given by  $\kappa$ . Second, the volatility of variance,  $\sigma_v\sqrt{v(t)}$ , depends on the square root of  $v(t)$ , and variance is therefore said to follow a square root process.

Suppose that the risk premium for the risk  $\sigma_v\sqrt{v(t)} dZ_2$  can be written as  $v(t)\beta_v$ , where we assume  $\beta_v$  is constant. This assumption that the risk premium is proportional to the level of the variance is analytically convenient. Given this assumption about the risk premium, the risk-neutral variance process is

$$
\begin{array}{l} d v (t) = \left\{\kappa [ \bar {v} - v (t) ] - v (t) \beta_ {v} \right\} d t + \sigma_ {v} \sqrt {v (t)} d Z _ {2} ^ {*} \tag {36} \\ = \kappa^ {*} \left[ \bar {v} ^ {*} - v (t) \right] d t + \sigma_ {v} \sqrt {v (t)} d Z _ {2} ^ {*} \\ \end{array}
$$ where  $\kappa^{*} = \kappa +\beta_{v}$  and  $\bar{v}^{*} = \bar{v}\kappa /(\kappa +\beta_{v})$  . This model of stochastic variance is the Heston model.


Let  $V[S(t), v(t), t]$  represent the price of a derivative on the stock when the stock price and volatility are given by equations (34) and (35). Suppose we proceed with the Black-Scholes derivation, in which we hold the option and try to hedge the resulting risk. We immediately encounter the problem that there are two sources of risk,  $dZ_{1}$  and  $dZ_{2}$ . A position in the stock will hedge  $dZ_{1}$ , but what can we use to hedge risk resulting from stochastic volatility? Apart from other options, there will typically be no asset that is a perfect hedge for volatility.[17] In that case, we rely on the equilibrium approach to pricing the option. The PDE for the derivative  $V[S(t), v(t), t]$  is then

$$

\begin{array}{l} \frac {1}{2} v (t) S ^ {2} V _ {S S} + \frac {1}{2} \sigma_ {v} ^ {2} v (t) V _ {v v} + \rho v (t) \sigma_ {v} S V _ {S v} \tag {37} \\ + (r - \delta) S V _ {S} + \left\{\kappa [ \bar {v} - v (t) ] - v (t) \beta_ {v} \right\} V _ {v} + V _ {t} = r V \\ \end{array}

$$

The third term is due to the covariance between the stock return and variance. Since there is no asset to hedge variance, the coefficient on the  $V_{v}$  term has a correction for the risk premium associated with variance.

Heston (1993) shows that equation (37) has an integral solution that can be evaluated numerically. Given this solution, we can see how implied volatility behaves when volatility is stochastic. We price options for different strikes and expirations under the stochastic volatility model and then use Black-Scholes to compute implied volatilities. We assume that the stock price is  \$100 and compute implied volatilities for options with strike prices ranging from\$ 6 to 140 and with maturities from 1 month to 1 year.

Figure 8 shows the result of this experiment for two different values of  $\sigma_v$  and  $\rho$ . In the figure the long-run volatility,  $\sqrt{\overline{v}^*}$ , is  $25\%$ , less than the current volatility,  $\sqrt{\nu(t)}$ , of  $32\%$ . Because volatility reverts to the mean, implied volatility decreases with time to maturity in every case. In the panel where  $\sigma_v = 0.25$  and  $\rho = 0$ , there is almost no skew, although the mean reversion in volatility is apparent. When  $\sigma_v = 75\%$  and  $\rho = 0$ , the figure exhibits both symmetric skew and mean reversion. The asymmetric skew in both right-hand panels of Figure 8 arises from assuming a negative correlation between volatility and the stock price. In comparing Figures 6 and 8, it is clear that jumps and stochastic volatility affect the implied volatility curve in different ways, with jumps having a greater effect on short-term options and stochastic volatility a similar smile for both long and short maturities.

# Evidence

The main challenge for an option pricing model is to match the observed volatility skew. $^{18}$  The literature investigating ways to do this is too large to adequately summarize here. Instead, we will sketch the nature of findings in the literature and highlight issues that arise when trying to match models to data.

The pricing models in this section illustrate ways in which modifying the Black-Scholes assumptions can enable a pricing model to better fit observed option prices. For example, all the pricing models we have discussed are capable of generating higher implied volatilities for out-of-the-money (low-strike) puts. The Merton jump model and the CEV model in the examples above both generate implied volatility curves that are flatter as time to maturity increases.[19] Combinations of the models, such as a Heston model that also allows jumps, seem able to reproduce qualitative features of Figure 1. However, matching models to data is a more involved exercise than just a visual comparison of implied volatility curves.

# FIGURE 8

Implied volatilities computed using the Black-Scholes formula when option prices are computed using the Heston formula. Each panel has an implied volatility plot for three different times to expiration. The individual panels show plots for a volatility of volatility, \sigma_v, of 0.25 and 0.75, and a correlation between the stock return and volatility of 0 and -0.3. In all cases S_0 = \100, \nu_0 = 0.32^2, \bar{\nu} = 0.25^2, r = 8\%, and \delta = 0.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/86e1a052a0e6ceaa47684316e31d3166363b39d1f27f871bd903258d378facd6.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/0aaf66287392a4bc2f67eaa54fee4c237ebcb4edbe8574dabbc7d2c5288cec01.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/7fdb3ad8cdcb6c81cdd36d0395210eac166e500bd9c1859fb0ae6f3e11bd09cc.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/2cf9b40e7909e804a786f90bbe98d1349a44b992d290c05163a052186bd36b1d.jpg)

To illustrate the issues, suppose you want to match the Heston stochastic volatility model to data. There are a number of ways you might proceed. First, on a given day, you could find a set of model inputs that best matches the volatility curves for that day. This entails finding a return variance  $(v(t))$ , a volatility of volatility  $(\sigma_v)$ , a mean reversion rate  $(\kappa^*)$ , a long-run risk-neutral variance  $(\bar{v}^*)$ , and a correlation between volatility and the stock return  $(\rho)$ , that match the data for a particular day.

Matching implied volatilities across a set of options on a given day is a cross-sectional test of the model. Once you admit multiple days of data, the model has time-series implications as well. Equations (35) and (36) imply that volatility evolves over time in a specific way. If you look at the evolution of volatility over time, does it match equation (35)? Are the parameters that enable the model to fit the cross-section consistent with those implied by the volatility time series? When there is a risk premium in the equilibrium pricing model (as in the Heston model), it is potentially easier to reconcile the behavior of the stock with option prices because there is an additional parameter. However, as Bates (2003) emphasizes, a risk premium must be plausible.

A number of papers have examined implied volatility patterns for options based on the S&P 500 index. Bakshi et al. (1997) and Bates (2000) both asked whether option pricing models incorporating jumps and stochastic volatility can generate realistic volatility skew for options based on the S&P 500.[20] Both studies find greater volatility skew at short maturities than at long maturities. If you compare Figures 6 and 8, you can see that this pattern is generated by the jump model, but not as obviously by the Heston model. This explains why, although Bakshi et al. (1997) found that the stochastic volatility model provided the best overall explanation of prices, they added jumps to account for skew at short maturities.[21] They also found that permitting stochastic interest rates (which can be added in the same fashion as stochastic volatility) helped explain prices at longer maturities.

Bates (2000) found that jump models (as in Figure 6) fit near-term option prices better but found the jump parameters implausible: The stock price does not appear to jump as often as implied by the estimates necessary to explain implied volatility. Bates also concluded that in order for the stochastic volatility model to explain skew, the volatility of volatility had to be implausibly large. However, Duffie et al. (2000) developed a pricing procedure that permitted jumps in both the asset price and the volatility, and noted that allowing jumps in volatility potentially addressed the problem of an implausibly large volatility of volatility. The importance of jumps in prices, jumps in volatility, and stochastic volatility are confirmed by Broadie et al. (2007), who also find a role for volatility jump risk premia. Todorov (2010) also confirms the importance of variance and jump risk premia, and finds that these risk premia rise after big market moves.

It is also possible to measure volatility risk premia directly by looking at the returns on portfolios that are hedged against stock price risk and exposed to volatility. For example, Coval and Shumway (2001) find large negative returns on zero-delta written straddles on the S&P 100 and S&P 500 indexes, a finding confirmed by Bakshi and Kapadia (2003a), who examine delta-hedged portfolios. Because a delta-hedged position loses money when volatility increases, this result is consistent with a negative volatility risk premium. (A negative premium means that investors will pay extra to have a position that hedges against volatility increases.) Bakshi and Kapadia (2003b) find smaller risk premia associated with delta-hedged individual stocks than with index options.

To add one more layer of complication, casual observation suggests that in some cases volatility changes deterministically over time. When a firm announces earnings, for example, volatility will be higher than on ordinary days (Patell and Wolfson, 1979,

1981; Dubinsky and Johannes, 2004). This finding suggests that in addition to the use of increasingly sophisticated mathematical pricing models, careful option pricing requires data sets that identify anticipated days of unusual volatility.[22]

# CHAPTER SUMMARY

For options on a given underlying asset on a given day, implied volatility generally varies across option strikes and maturities. Implied volatility also varies over time. As a result there is great interest in measuring volatilities and in pricing options when volatility can vary.

Methods of measuring volatility using past data include historical volatility, exponentially weighted moving average volatility, ARCH, GARCH, and realized quadratic variation. ARCH and GARCH estimates are based upon a formal statistical model in which volatility is random. Realized quadratic variation exploits high frequency data to obtain a reliable volatility estimate using data from a short time horizon.

Both variance and volatility swaps permit hedging and speculation on volatility. The variance forward price can be obtained as a weighted sum of the prices of traded European options, a calculation that is the basis for the VIX measure of implied volatility.

The Black-Scholes model does not perfectly explain observed option prices; there is volatility skew, which means that implied volatility varies with the strike price and time to expiration. Two modifications to the model are to permit jumps in the stock price and to allow volatility to be stochastic. Both changes generate option prices that exhibit volatility skew and that better fit the data than the unmodified Black-Scholes model.

Attempts to explain prices of traded options suggest that it is important to account for jumps in both the asset price and volatility, and that risk premiums on one or both jumps may be important.

# FURTHER READING

Early studies of stock returns (e.g., Fama, 1965) found that continuously compounded returns exhibit too many large returns to be consistent with normality. In recent years, research has focused on specifying stock price processes that give theoretical option prices consistent with observed prices. Introductions to GARCH models include Royal Swedish Academy of Sciences (2003) and Bollerslev et al. (1994). Alexander (2001) is a readable text for less technical readers. Realized quadratic variation as a measure of volatility is presented and applied in Andersen et al. (2003).

Demeterfi et al. (1999) present a clear and well-written discussion of volatility hedging, and the paper also develops the volatility measure used now to construct the VIX. See also Chicago Board Options Exchange (2003).

The first papers to suggest alternative assumptions about the stock price for option pricing were Cox and Ross (1976), Cox (1996), and Merton (1976). Merton noted in his paper that the jump model had the potential to explain volatility skew patterns noted by practitioners at the time. The first stochastic volatility models were proposed by Hull and White (1987), Scott (1987), and Wiggins (1987). The Heston (1993) model has been generalized by Duffie et al. (2000), who develop a pricing framework that can accommodate jumps in volatility as well as in the stock price.

The empirical literature examining the ability of option pricing models to fit observed prices is rapidly evolving. Well-known papers include Bakshi et al. (1997), Bates (2000), and Pan (2002). Current research (which include citations to numerous other papers) include Andersen et al. (2005) and Broadie et al. (2004). Patell and Wolfson (1979, 1981) and Dubinsky and Johannes (2004) examine deterministic volatility changes, such as those due to earnings announcements.

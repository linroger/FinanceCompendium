---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Option Pricing Theory and Models
linter-yaml-title-alias: Option Pricing Theory and Models
---

# Option Pricing Theory and Models

In general, the value of any asset is the present value of the expected cash flows on that asset. This chapter considers an exception to that rule when it looks at assets with two specific characteristics:

1. The assets derive their value from the values of other assets.
2. The cash flows on the assets are contingent on the occurrence of specific events.

These assets are called options, and the present value of the expected cash flows on these assets will understate their true value. This chapter describes the cash flow characteristics of options, considers the factors that determine their value, and examines how best to value them.

# BASICS OF OPTION PRICING

An option provides the holder with the right to buy or sell a specified quantity of an underlying asset at a fixed price (called a strike price or an exercise price) at or before the expiration date of the option. Since it is a right and not an obligation, the holder can choose not to exercise the right and can allow the option to expire. There are two types of options—call options and put options.

# Call and Put Options: Description and Payoff Diagrams

A call option gives the buyer of the option the right to buy the underlying asset at the strike price or the exercise price at any time prior to the expiration date of the option. The buyer pays a price for this right. If at expiration the value of the asset is less than the strike price, the option is not exercised and expires worthless. If, however, the value of the asset is greater than the strike price, the option is exercised—the buyer of the option buys the stock at the exercise price, and the difference between the asset value and the exercise price comprises the gross profit on the investment. The net profit on the investment is the difference between the gross profit and the price paid for the call initially.

A payoff diagram illustrates the cash payoff on an option at expiration. For a call, the net payoff is negative (and equal to the price paid for the call) if the value of the underlying asset is less than the strike price. If the price of the underlying asset exceeds the strike price, the gross payoff is the difference between the value of the underlying asset and the strike price, and the net payoff is the difference between the gross payoff and the price of the call. This is illustrated in Figure 5.1.

A put option gives the buyer of the option the right to sell the underlying asset at a fixed price, again called the strike or exercise price, at any time prior to the expiration date of the option. The buyer pays a price for this right. If the price of the underlying asset is greater than the strike price, the option will not be exercised and will expire worthless. But if the price of the underlying asset is less than the strike price, the owner of the put option will exercise the option and sell the stock at the strike price, claiming the difference between the strike price and the market value of the asset as the gross profit. Again, netting out the initial cost paid for the put yields the net profit from the transaction.

A put has a negative net payoff if the value of the underlying asset exceeds the strike price, and has a gross payoff equal to the difference between the strike price and the value of the underlying asset if the asset value is less than the strike price. This is summarized in Figure 5.2.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/a6d1688179bbb90e0c9e468ea247d654e369d1affa71d88cd98f32f3de4a8b64.jpg)

FIGURE 5.1 Payoff on Call Option

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/a04fa5237fd8a1aa9f28915edd9a91f7d60256c4ed8548b7a16e3fa85e3179cc.jpg)

FIGURE 5.2 Payoff on Put Option

# DETERMINANTS OF OPTION VALUE

The value of an option is determined by six variables relating to the underlying asset and financial markets.

1. Current value of the underlying asset. Options are assets that derive value from an underlying asset. Consequently, changes in the value of the underlying asset affect the value of the options on that asset. Since calls provide the right to buy the underlying asset at a fixed price, an increase in the value of the asset will increase the value of the calls. Puts, on the other hand, become less valuable as the value of the asset increases.
2. Variance in value of the underlying asset. The buyer of an option acquires the right to buy or sell the underlying asset at a fixed price. The higher the variance in the value of the underlying asset, the greater the value of the option. This is true for both calls and puts. While it may seem counterintuitive that an increase in a risk measure (variance) should increase value, options are different from other securities since buyers of options can never lose more than the price they pay for them; in fact, they have the potential to earn significant returns from large price movements.
3. Dividends paid on the underlying asset. The value of the underlying asset can be expected to decrease if dividend payments are made on the asset during the life of the option. Consequently, the value of a call on the asset is a decreasing function of the size of expected dividend payments, and the value of a put is an increasing function of expected dividend payments. A more intuitive way of thinking about dividend payments, for call options, is as a cost of delaying exercise on in-the-money options. To see why, consider an option on a traded stock. Once a call option is in-the-money (i.e., the holder of the option will make a gross payoff by exercising the option), exercising the call option will provide the holder with the stock and entitle him or her to the dividends on the stock in subsequent periods. Failing to exercise the option will mean that these dividends are forgone.
4. Strike price of the option. A key characteristic used to describe an option is the strike price. In the case of calls, where the holder acquires the right to buy at a fixed price, the value of the call will decline as the strike price increases. In the case of puts, where the holder has the right to sell at a fixed price, the value will increase as the strike price increases.
5. Time to expiration on the option. Both calls and puts are more valuable the greater the time to expiration. This is because the longer time to expiration provides more time for the value of the underlying asset to move, increasing the value of both types of options. Additionally, in the case of a call, where the buyer has the right to pay a fixed price at expiration, the present value of this fixed price decreases as the life of the option increases, increasing the value of the call.
6. Riskless interest rate corresponding to life of the option. Since the buyer of an option pays the price of the option up front, an opportunity cost is involved. This cost will depend on the level of interest rates and the time to expiration of the option. The riskless interest rate also enters into the valuation of options when the present value of the exercise price is calculated, since the exercise price does not have to be paid (received) until expiration on calls (puts). Increases in the interest rate will increase the value of calls and reduce the value of puts.

Table 5.1 summarizes the variables and their predicted effects on call and put prices.

# American versus European Options: Variables Relating to Early Exercise

A primary distinction between American and European options is that an American option can be exercised at any time prior to its expiration, while European options can be exercised only at expiration. The possibility of early exercise makes American options more valuable than otherwise similar European options; it also makes them more difficult to value. There is one compensating factor that enables the former to be valued using models designed for the latter. In most cases, the time premium associated with the remaining life of an option and transaction costs make early exercise suboptimal. In other words, the holders of in-the-money options generally get much more by selling the options to someone else than by exercising the options.

# OPTION PRICING MODELS

Option pricing theory has made vast strides since 1972, when Fischer Black and Myron Scholes published their pathbreaking paper that provided a model for valuing dividend-protected European options. Black and Scholes used a "replicating portfolio"—a portfolio composed of the underlying asset and the risk-free asset that had the same cash flows as the option being valued—and the notion of arbitrage to come up with their final formulation. Although their derivation is mathematically

TABLE 5.1 Summary of Variables Affecting Call and Put Prices

<table><tr><td rowspan="2">Factor</td><td colspan="2">Effect On</td></tr><tr><td>Call Value</td><td>Put Value</td></tr><tr><td>Increase in underlying asset&#x27;s value</td><td>Increases</td><td>Decreases</td></tr><tr><td>Increase in variance of underlying asset</td><td>Increases</td><td>Increases</td></tr><tr><td>Increase in strike price</td><td>Decreases</td><td>Increases</td></tr><tr><td>Increase in dividends paid</td><td>Decreases</td><td>Increases</td></tr><tr><td>Increase in time to expiration</td><td>Increases</td><td>Increases</td></tr><tr><td>Increase in interest rates</td><td>Increases</td><td>Decreases</td></tr></table> complicated, there is a simpler binomial model for valuing options that draws on the same logic.

# Binomial Model

The binomial option pricing model is based on a simple formulation for the asset price process in which the asset, in any time period, can move to one of two possible prices. The general formulation of a stock price process that follows the binomial path is shown in Figure 5.3. In this figure, S is the current stock price; the price moves up to Su with probability p and down to Sd with probability  $1 - \mathfrak{p}$  in any time period.

Creating a Replicating Portfolio The objective in creating a replicating portfolio is to use a combination of risk-free borrowing/lending and the underlying asset to create the same cash flows as the option being valued. The principles of arbitrage apply then, and the value of the option must be equal to the value of the replicating portfolio. In the case of the general formulation shown in Figure 5.3, where stock prices can move either up to Su or down to Sd in any time period, the replicating portfolio for a call with strike price K will involve borrowing $B and acquiring Δ of the underlying asset, where:

$$
\Delta = \text {N u m b e r o f u n i t s o f u n i t y} = \frac {\mathrm {C} _ {\mathrm {u}} - \mathrm {C} _ {\mathrm {d}}}{\mathrm {S u} - \mathrm {S d}}
$$ where  $C_u =$  Value of the call if the stock price is Su  $C_d =$  Value of the call if the stock price is Sd


![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/0764278ccf5910b9f6a85b946fa8d589c6e82c056678613dd1b5c75cec29b09f.jpg)
FIGURE 5.3 General Formulation for Binomial Price Path

In a multiperiod binomial process, the valuation has to proceed iteratively (i.e., starting with the final time period and moving backward in time until the current point in time). The portfolios replicating the option are created at each step and valued, providing the values for the option in that time period. The final output from the binomial option pricing model is a statement of the value of the option in terms of the replicating portfolio, composed of  $\Delta$  shares (option delta) of the underlying asset and risk-free borrowing/lending.

Value of the call  $=$  Current value of underlying asset  $\times$  Option delta - Borrowing needed to replicate the option

# ILLUSTRATION 5.1: Binomial Option Valuation

Assume that the objective is to value a call with a strike price of  \$50, which is expected to expire in two time periods, on an underlying asset whose price currently is\$ 50 and is expected to follow a binomial process:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/493df4ddde502b2d7f547418f22f4719efbd5c2aa49ca1778e85ee21bfcc1c79.jpg)

Now assume that the interest rate is  $11\%$ . In addition, define:

$\Delta =$  Number of shares in the replicating portfolio

B = Dollars of borrowing in replicating portfolio

The objective is to combine  $\Delta$  shares of stock and  $B$  dollars of borrowing to replicate the cash flows from the call with a strike price of 50. This can be done iteratively, starting with the last period and working back through the binomial tree.

STEP 1: Start with the end nodes and work backward:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/c3cc758f16ae98e7f05cdabad26be76cd3b0f1d8fa76ae74b3dfadef48caf707.jpg)

Thus, if the stock price is \$70 at t = 1, borrowing \$45 and buying one share of the stock will give the same cash flows as buying the call. The value of the call at t = 1, if the stock price is 70, is therefore:

Value of call  $=$  Value of replicating position  $= {70\Delta } - \mathrm{B} = {70} - {45} = {25}$

Considering the other leg of the binomial tree at  $t = 1$ ,

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/bb357a36684cdc6d9f889a2d53ab6a138e17b108163b9b140fac69bec699b997.jpg)

If the stock price is 35 at t = 1, then the call is worth nothing.

STEP 2: Move backward to the earlier time period and create a replicating portfolio that will provide the cash flows the option will provide.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/09551c4ab71382c3fd90f83c7cca9646d1dc6d1d75e86d5167649a44e3931585.jpg)

In other words, borrowing \$22.50 and buying five-sevenths of a share will provide the same cash flows as a call with a strike price of \$50 over the call's lifetime. The value of the call therefore has to be the same as the cost of creating this position.

Value of call  $=$  Value of replicating position  $= \left( \frac{5}{7} \right) \times$  Current stock price - Borrowing

$$

= \left(\frac {5}{7}\right) (5 0) - 2 2. 5 = \$ 1 3. 2 1

$$

The Determinants of Value The binomial model provides insight into the determinants of option value. The value of an option is not determined by the expected price of the asset but by its current price, which, of course, reflects expectations about the future. This is a direct consequence of arbitrage. If the option value deviates from the value of the replicating portfolio, investors can create an arbitrage position (i.e., one that requires no investment, involves no risk, and delivers positive returns). To illustrate, if the portfolio that replicates the call costs more than the call does in the market, an investor could buy the call, sell the replicating portfolio, and be guaranteed the difference as a profit. The cash flows on the two positions will offset each other, leading to no cash flows in subsequent periods. The call option value also increases as the time to expiration is extended, as the price movements (u and d) increase, and with increases in the interest rate.

While the binomial model provides an intuitive feel for the determinants of option value, it requires a large number of inputs, in terms of expected future prices at each node. As time periods are made shorter in the binomial model, you can make one of two assumptions about asset prices. You can assume that price changes become smaller as periods get shorter; this leads to price changes becoming infinitesimally small as time periods approach zero, leading to a continuous price process. Alternatively, you can assume that price changes stay large even as the period gets shorter; this leads to a jump price process, where prices can jump in any period. This section considers the option pricing models that emerge with each of these assumptions.


# Black-Scholes Model

When the price process is continuous (i.e., price changes become smaller as time periods get shorter), the binomial model for pricing options converges on the Black-Scholes model. The model, named after its cocreateurs, Fischer Black and Myron Scholes, allows us to estimate the value of any option using a small number of inputs, and has been shown to be robust in valuing many listed options.

The Model While the derivation of the Black-Scholes model is far too complicated to present here, it is based on the idea of creating a portfolio of the underlying asset and the riskless asset with the same cash flows, and hence the same cost, as the option being valued. The value of a call option in the Black-Scholes model can be written as a function of the five variables:

$S =$  Current value of the underlying asset

$\mathrm{K} =$  Strike price of the option

$\mathbf{t} =$  Life to expiration of the option

$\mathrm{r} =$  Riskless interest rate corresponding to the life of the option

$\sigma^2 =$  Variance in the  $\ln (\mathrm{value})$  of the underlying asset

The value of a call is then:

$$

\text {V a l u e o f} \mathrm {c a l l} = \mathrm {S N} \left(\mathrm {d} _ {1}\right) - \mathrm {K} \mathrm {e} ^ {- \mathrm {r t}} \mathrm {N} \left(\mathrm {d} _ {2}\right)

$$

$$

\begin{array}{l} \text {w h e r e} d _ {1} = \frac {\ln \left(\frac {S}{K}\right) + \left(r + \frac {\sigma^ {2}}{2}\right) t}{\sigma \sqrt {t}} \\ d _ {2} = d _ {1} - \sigma \sqrt {t} \\ \end{array}

$$

Note that  $\mathrm{e}^{-\mathrm{rt}}$  is the present value factor, and reflects the fact that the exercise price on the call option does not have to be paid until expiration, since the model values European options.  $\mathrm{N}(\mathrm{d}_1)$  and  $\mathrm{N}(\mathrm{d}_2)$  are probabilities, estimated by using a cumulative standardized normal distribution, and the values of  $\mathrm{d}_1$  and  $\mathrm{d}_2$  obtained for an option. The cumulative distribution is shown in Figure 5.4.

In approximate terms,  $\mathrm{N}(\mathrm{d}_2)$  yields the likelihood that an option will generate positive cash flows for its owner at exercise (i.e., that  $\mathrm{S} > \mathrm{K}$  in the case of a call option and that  $\mathrm{K} > \mathrm{S}$  in the case of a put option). The portfolio that replicates the call option is created by buying  $\mathrm{N}(\mathrm{d}_1)$  units of the underlying asset, and borrowing  $\mathrm{Ke}^{-\mathrm{rt}}\mathrm{N}(\mathrm{d}_2)$ . The portfolio will have the same cash flows as the call option, and thus the same value as the option.  $\mathrm{N}(\mathrm{d}_1)$ , which is the number of units of the underlying asset that are needed to create the replicating portfolio, is called the option delta.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/f19f0df2a0ca366b7fec4d948ffc6cc151166463587884b9f1ee8de38d4eee25.jpg)
FIGURE 5.4 Cumulative Normal Distribution

# A NOTE ON ESTIMATING THE INPUTS TO THE BLACK-SCHOLES MODEL

The Black-Scholes model requires inputs that are consistent on time measurement. There are two places where this affects estimates. The first relates to the fact that the model works in continuous time, rather than discrete time. That is why we use the continuous time version of present value  $(\exp^{-\mathrm{rt}})$  rather than the discrete version,  $(1 + \mathrm{r})^{-\mathrm{t}}$ . It also means that the inputs such as the riskless rate have to be modified to make them continuous time inputs. For instance, if the one-year Treasury bond rate is 6.2 percent, the risk-free rate that is used in the Black-Scholes model should be:

$$

\begin{array}{l} \text {C o n t i n u o u s r i k k l e s s r a t e} = \ln (1 + \text {D i s c r e t e r i k k l e s s r a t e}) \\ = \ln (1.062) = .06015 \text{or} 6.015 \% \\ \end{array}

$$

The second relates to the period over which the inputs are estimated. For instance, the preceding rate is an annual rate. The variance that is entered into the model also has to be an annualized variance. The variance, estimated from  $\ln (\text{asset prices})$ , can be annualized easily because variances are linear in time if the serial correlation is zero. Thus, if monthly or weekly prices are used to estimate variance, the variance is annualized by multiplying by 12 or 52, respectively.

# ILLUSTRATION 5.2: Valuing an Option Using the Black-Scholes Model

On March 6, 2001, Cisco Systems was trading at \$13.62. We will attempt to value a July 2001 call option with a strike price of \$15, trading on the CBOE on the same day for 2. The following are the other parameters of the options:

The annualized standard deviation in Cisco Systems stock price over the previous year was  $81\%$ . This standard deviation is estimated using weekly stock prices over the year, and the resulting number was annualized as follows:

Weekly standard deviation  $= 11.23\%$

Annualized standard deviation  $= 11.23\% \times \sqrt{52} = 81\%$

The option expiration date is Friday, July 20, 2001. There are 103 days to expiration, and the annualized Treasury bill rate corresponding to this option life is  $4.63\%$ .

The inputs for the Black-Scholes model are as follows:

Current stock price (S) = 13.62

Strike price on the option = 15

Option life  $= 103 / 365 = 0.2822$

Standard deviation in In(stock prices) = 81\%

Riskless rate  $= 4.63\%$

Inputting these numbers into the model, we get:

$$

\mathrm {d} _ {1} = \frac {\ln \left(\frac {1 3 . 6 2}{1 5 . 0 0}\right) + \left(. 0 4 6 3 + \frac {. 8 1 ^ {2}}{2}\right) . 2 8 2 2}{. 8 1 \sqrt {. 2 8 2 2}} = . 0 2 1 2

$$

$$

\mathrm {d} _ {2} = . 0 2 1 2 -. 8 1 \sqrt {. 2 8 2 2} = -. 4 0 9 1

$$

Using the normal distribution, we can estimate the  $\mathsf{N}(\mathsf{d}_1)$  and  $\mathsf{N}(\mathsf{d}_2)$ :

$$

N \left(d _ {1}\right) = . 5 0 8 5

$$

$$

N (d _ {2}) = . 3 4 1 2

$$

The value of the call can now be estimated:

$$

\begin{array}{l} \text {V a l u e} = \mathrm {S} \mathrm {N} \left(\mathrm {d} _ {1}\right) - \mathrm {K} \mathrm {e} ^ {- \mathrm {r t}} \mathrm {N} \left(\mathrm {d} _ {2}\right) \\ = 1 3. 6 2 (. 5 0 8 5) - 1 5 \mathrm {e} ^ {- (. 0 4 6 3) (. 2 8 2 2)} (. 3 4 1 2) = \$ 1. 8 7 \\ \end{array}

$$

Since the call is trading at 2, it is slightly overvalued, assuming that the estimate of standard deviation used is correct.

# IMPLIED VOLATILITY

The only input in the Black Scholes on which there can be significant disagreement among investors is the variance. While the variance is often estimated by looking at historical data, the values for options that emerge from using the historical variance can be different from the market prices. For any option, there is some variance at which the estimated value will be equal to the market price. This variance is called an implied variance.

Consider the Cisco option valued in Illustration 5.2. With a standard deviation of 81 percent, the value of the call option with a strike price of 15 was estimated to be 1.87. Since the market price is higher than the calculated value, we tried higher standard deviations, and at a standard deviation 85.40 percent the value of the option is 2 (which is the market price). This is the implied standard deviation or implied volatility.

Model Limitations and Fixes The Black-Scholes model was designed to value European options that can be exercised only at maturity and whose underlying assets do not pay dividends. In addition, options are valued based on the assumption that option exercise does not affect the value of the underlying asset. In practice, assets do pay dividends, options sometimes get exercised early, and exercising an option can affect the value of the underlying asset. Adjustments exist that, while not perfect, provide partial corrections to the Black-Scholes model.

Dividends The payment of a dividend reduces the stock price; note that on the ex-dividend day, the stock price generally declines. Consequently, call options become less valuable and put options more valuable as expected dividend payments increase. There are two ways of dealing with dividends in the Black-Scholes model:

1. Short-term options. One approach to dealing with dividends is to estimate the present value of expected dividends that will be paid by the underlying asset during the option life and subtract it from the current value of the asset to use as S in the model.

Modified stock price  $=$  Current stock price -Present value of expected dividends during the life of the option

2. Long-term options. Since it becomes less practical to estimate the present value of dividends the longer the option life, an alternate approach can be used. If the dividend yield ( $y =$  Dividends/Current value of the asset) on the underlying asset is expected to remain unchanged during the life of the option, the Black-Scholes model can be modified to take dividends into account.

$$

\mathrm {C} = \mathrm {S} e ^ {- \gamma \mathrm {t}} \mathrm {N} \left(\mathrm {d} _ {1}\right) - \mathrm {K} e ^ {- \mathrm {r t}} \mathrm {N} \left(\mathrm {d} _ {2}\right)

$$ where  $\mathrm{d}_1 = \frac{\ln\left(\frac{\mathrm{S}}{\mathrm{K}}\right) + \left(\mathrm{r} - \mathrm{y} + \frac{\sigma^2}{2}\right)\mathrm{t}}{\sigma\sqrt{\mathrm{t}}}$

$$ d _ {2} = d _ {1} - \sigma \sqrt {t}
$$

From an intuitive standpoint, the adjustments have two effects. First, the value of the asset is discounted back to the present at the dividend yield to take into account the expected drop in asset value resulting from dividend payments. Second, the interest rate is offset by the dividend yield to reflect the lower carrying cost from holding the asset (in the replicating portfolio). The net effect will be a reduction in the value of calls estimated using this model.

# ILLUSTRATION 5.3: Valuing a Short-Term Option with Dividend Adjustments—The Black-Scholes Correction

Assume that it is March 6, 2001, and that AT&T is trading at  \$20.50 a share. Consider a call option on the stock with a strike price of\$ 20, expiring on July 20, 2001. Using past stock prices, the annualized standard deviation in the log of stock prices for AT&T is estimated at 60\%. There is one dividend, amounting to 0.15, and it will be paid in 23 days. The riskless rate is 4.63\%.

Present value of expected dividend = $0.15/1.046323/365 = $0.15

Dividend-adjusted stock price = $20.50 - $0.15 = 20.35

Time to expiration  $= 103 / 365 = 0.2822$

Variance in In(stock prices)  $= 0.6^{2} = 0.36$

Riskless rate  $= 4.63\%$

The value from the Black-Scholes model is:

$$
\mathrm {d} _ {1} = 0. 2 5 5 1
$$

$$
N \left(d _ {1}\right) = 0. 6 0 0 7
$$

$$
\mathrm {d} _ {2} = - 0. 0 6 3 6
$$

$$
N \left(d _ {2}\right) = 0. 4 7 4 5
$$

$$
\text {V a l u e o f c a l l} = \\ 2 0. 3 5 (0. 6 0 0 7) - \\ 2 0 \exp^ {- (0. 0 4 6 3) (2 8 2 2)} (0. 4 7 4 6) = \\ 2. 8 6
$$

The call option was trading at 2.60 on that day.

# ILLUSTRATION 5.4: Valuing a Long-Term Option with Dividend Adjustments—Primes and Scores

The CBOE offers longer-term call and put options on some stocks. On March 6, 2001, for instance, you could have purchased an AT&T call expiring on January 17, 2003. The stock price for AT&T is  \$20.50 (as in the previous example). The following is the valuation of a call option with a strike price of\$ 20. Instead of estimating the present value of dividends over the next two years, assume that AT&T's dividend yield will remain 2.51\% over this period and that the risk-free rate for a two-year Treasury bond is 4.85\%. The inputs to the Black-Scholes model are:

$$
S = \text {C u r r e n t} = \$ 2 0. 5 0
$$

$$
K = \text {S t i k e} = \$ 2 0
$$

Time to expiration  $= 1.8333$  years

Standard deviation in In(stock prices) = 60\%

Riskless rate  $= 4.85\%$  Dividend yield  $= 2.51\%$

The value from the Black-Scholes model is:

$$ d _ {1} = \frac {\ln \left(\frac {2 0 . 5 0}{2 0 . 0 0}\right) + \left(. 0 4 8 5 -. 0 2 5 1 + \frac {. 6 ^ {2}}{2}\right) 1 . 8 3 3 3}{. 6 \sqrt {1 . 8 3 3 3}} = 0. 4 8 9 4 \quad N \left(d _ {1}\right) = 0. 6 8 7 7
$$

$$ d _ {2} = . 4 8 9 4 - . 6 \sqrt {1 . 8 3 3 3} = -. 3 2 3 0 \quad N (d _ {2}) = 0. 3 7 3 3
$$

$$
\text {V a l u e o f c a l l} = \$ 20.50 \exp^ {- (\cdot 0 2 5 1) (1. 8 3 3 3)} (0. 6 8 7 7) - \$ 2 0 \exp^ {- (\cdot 0 4 8 5) (1. 8 3 3 3)} (0. 3 7 3 3) = \$ 6. 6 3
$$

The call was trading at 5.80 on March 8, 2001.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/95ec1bfda1f6d80756c4ef6d38810b79ff6683c9ae6da2a208bf8069a901ba06.jpg) optst.xls: This spreadsheet allows you to estimate the value of a short-term option when the expected dividends during the option life can be estimated.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/2a07527a120738d5b3ffae950fce4d7c0ebba06b6e2b2a3d56b4bdc25b3e702f.jpg) optlt.xls: This spreadsheet allows you to estimate the value of an option when the underlying asset has a constant dividend yield.

Early Exercise The Black-Scholes model was designed to value European options that can be exercised only at expiration. In contrast, most options that we encounter in practice are American options and can be exercised at any time until expiration. As mentioned earlier, the possibility of early exercise makes American options more valuable than otherwise similar European options; it also makes them more difficult to value. In general, though, with traded options, it is almost always better to sell the option to someone else rather than exercise early, since options have a time premium (i.e., they sell for more than their exercise value). There are two exceptions. One occurs when the underlying asset pays large dividends, thus reducing the expected value of the asset. In this case, call options may be exercised just before an ex-dividend date, if the time premium on the options is less than the expected decline in asset value as a consequence of the dividend payment. The other exception arises when an investor holds both the underlying asset and deep in-the-money puts (i.e., puts with strike prices well above the current price of the underlying asset) on that asset at a time when interest rates are high. In this case, the time premium on the put may be less than the potential gain from exercising the put early and earning interest on the exercise price.

There are two basic ways of dealing with the possibility of early exercise. One is to continue to use the unadjusted Black-Scholes model and to regard the resulting value as a floor or conservative estimate of the true value. The other is to try to adjust the value of the option for the possibility of early exercise. There are two approaches for doing so. One uses the Black-Scholes model to value the option to each potential exercise date. With options on stocks, this basically requires that the investor values options to each ex-dividend day and chooses the maximum of the estimated call values. The second approach is to use a modified version of the binomial model to consider the possibility of early exercise. In this version, the up and the down movements for asset prices in each period can be estimated from the variance. $^2$

# Approach 1: Pseudo-American Valuation

Step 1: Define when dividends will be paid and how much the dividends will be.

Step 2: Value the call option to each ex-dividend date using the dividend-adjusted approach described earlier, where the stock price is reduced by the present value of expected dividends.

Step 3: Choose the maximum of the call values estimated for each ex-dividend day.

# ILLUSTRATION 5.5: Using Pseudo-American Option Valuation to Adjust for Early Exercise

Consider an option with a strike price of  \$35 on a stock trading at\$ 40. The variance in the ln(stock prices) is 0.05, and the riskless rate is 4\%. The option has a remaining life of eight months, and there are three dividends expected during this period:

<table><tr><td>Expected Dividend</td><td>Ex-Dividend Day</td></tr><tr><td>\$0.80</td><td>In 1 month</td></tr><tr><td>\$0.80</td><td>In 4 months</td></tr><tr><td>0.80</td><td>In 7 months</td></tr></table>

The call option is first valued to just before the first ex-dividend date:

$$
S = \$ 40
$$

$$
K = \$ 35
$$

$$ t = 1 / 1 2
$$

$$
\sigma^ {2} = 0. 0 5
$$

$$ r = 0. 0 4
$$

The value from the Black-Scholes model is:

$$
\text {V a l u e} = \$ 5. 1 3 1
$$

The call option is then valued to before the second ex-dividend date:

$$
\text {A d j u s t e d} = \\ 4 0 - \\ 0. 8 0 / 1. 0 4 ^ {1 / 1 2} = \\ 3 9. 2 0
$$

$$
K = \$ 35
$$

$$ t = 4 / 1 2
$$

$$
\sigma^ {2} = 0. 0 5
$$

$$ r = 0. 0 4
$$

The value of the call based on these parameters is:

$$
\text {V a l u e} = \$ 5. 0 7 3
$$

The call option is then valued to before the third ex-dividend date:

$$
\text {A d j u s t e d} = \$ 4 0 - \$ 0. 8 0 / 1. 0 4 ^ {1 / 1 2} - \$ 0. 8 0 / 1. 0 4 ^ {4 / 1 2} = \$ 3 8. 4 1
$$

$$
K = \$ 35
$$

$$ t = 7 / 1 2
$$

$$
\sigma^ {2} = 0. 0 5
$$

$$ r = 0. 0 4
$$

The value of the call based on these parameters is:

$$
\text {V a l u e} = \$ 5. 1 2 8
$$

The call option is then valued to expiration:

$$
\text {A d j u s t e d} = \\mathbb {S} 4 0 - \mathbb {S} 0. 8 0 / 1. 0 4 ^ {1 / 1 2} - \mathbb {S} 0. 8 0 / 1. 0 4 ^ {4 / 1 2} - \mathbb {S} 0. 8 0 / 1. 0 4 ^ {7 / 1 2} = \mathbb {S} 3 7. 6 3
$$

$$
K = \$ 35
$$

$$ t = 8 / 1 2
$$

$$
\sigma^ {2} = 0. 0 5
$$

$$ r = 0. 0 4
$$

The value of the call based on these parameters is:

$$
\text {V a l u e} = \$ 4. 7 5 7
$$

$$
\text {P s e u d o - A m i r i c a n v a l u e o f c a l l} = \text {M a x u m i m} (\$ 5. 1 3 1, \$ 5. 0 7 3, \$ 5. 1 2 8, \$ 4. 7 5 7) = \$ 5. 1 3 1
$$

Approach 2: Using the Binomial Model The binomial model is much more capable of handling early exercise because it considers the cash flows at each time period, rather than just at expiration. The biggest limitation of the binomial model is determining what stock prices will be at the end of each period, but this can be overcome by using a variant that allows us to estimate the up and the down movements in stock prices from the estimated variance. There are four steps involved:

Step 1: If the variance in  $\ln (\text{stock prices})$  has been estimated for the Black-Scholes valuation, convert these into inputs for the binomial model:

$$ u = e ^ {\sigma \sqrt {d t} + \left(r - \frac {\sigma^ {2}}{2}\right) d t}
$$

$$ d = e ^ {- \sigma \sqrt {d t} + \left(r - \frac {\sigma^ {2}}{2}\right) d t}
$$ where  $u$  and  $d$  are the up and the down movements per unit time for the binomial, and  $dt$  is the number of periods within each year (or unit time).


Step 2: Specify the period in which the dividends will be paid and make the assumption that the price will drop by the amount of the dividend in that period.

Step 3: Value the call at each node of the tree, allowing for the possibility of early exercise just before ex-dividend dates. There will be early exercise if the remaining time premium on the option is less than the expected drop in option value as a consequence of the dividend payment.

Step 4: Value the call at time 0, using the standard binomial approach.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/01369a098ebc80e589911e9a0996994ddf4ca3e71d76f898caa1a8f5832849a8.jpg)

# bstobin.xls: This spreadsheet allows you to estimate the parameters for a binomial model from the inputs to a Black-Scholes model.

Impact of Exercise on Underlying Asset Value The Black-Scholes model is based on the assumption that exercising an option does not affect the value of the underlying asset. This may be true for listed options on stocks, but it is not true for some types of options. For instance, the exercise of warrants increases the number of shares outstanding and brings fresh cash into the firm, both of which will affect the stock price. The expected negative impact (dilution) of exercise will decrease the value of warrants, compared to otherwise similar call options. The adjustment for dilution to the stock price is fairly simple in the Black-Scholes valuation. The stock price is adjusted for the expected dilution from the exercise of the options. In the case of warrants, for instance:

$$

\text {D i l u t i o n - a d j u s t e d} S = \left(S n _ {s} + W n _ {w}\right) / \left(n _ {s} + n _ {w}\right)

$$ where  $S =$  Current value of the stock

$\mathrm{n_w =}$  Number of warrants outstanding

W = Value of warrants outstanding

$\mathrm{n_s =}$  Number of shares outstanding

When the warrants are exercised, the number of shares outstanding will increase, reducing the stock price. The numerator reflects the market value of equity, including both stocks and warrants outstanding. The reduction in S will reduce the value of the call option.

There is an element of circularity in this analysis, since the value of the warrant is needed to estimate the dilution-adjusted S and the dilution-adjusted S is needed to estimate the value of the warrant. This problem can be resolved by starting the process off with an assumed value for the warrant (e.g., the exercise value or the current market price of the warrant). This will yield a value for the warrant, and this estimated value can then be used as an input to reestimate the warrant's value until there is convergence.

# FROM BLACK-SCHOLES TO BINOMIAL

The process of converting the continuous variance in a Black-Scholes model to a binomial tree is a fairly simple one. Assume, for instance, that you have an asset that is trading at 30 currently and that you estimate the annualized standard deviation in the asset value to be 40 percent; the annualized riskless rate is 5 percent. For simplicity, let us assume that the option that you are valuing has a four-year life and that each period is a year. To estimate the prices at the end of each of the four years, we begin by first estimating the up and down movements in the binomial:

$$
\begin{array}{l} \mathrm {u} = \exp^ {. 4 \sqrt {1} + \left(. 0 5 - \frac {. 4 ^ {2}}{2}\right) 1} = 1. 4 4 7 7 \\ \mathrm {d} = \exp^ {- . 4 \sqrt {1} + \left(. 0 5 - \frac {. 4 0 ^ {2}}{2}\right) 1} = 0. 6 5 0 5 \\ \end{array}
$$

Based on these estimates, we can obtain the prices at the end of the first node of the tree (the end of the first year):

$$
\mathrm {U p} \quad \text {p r i c e} = \$ 3 0 (1. 4 4 7 7) = \$ 4 3. 4 3
$$

$$
\text {D o w n p r i c e} = \$ 4 0 (0. 6 5 0 5) = \$ 1 9. 5 2
$$

Progressing through the rest of the tree, we obtain the following numbers:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/032723fa37e9c6bbf65bd2d7edfe20106233becdbe58040e4daed693576cdaec.jpg)

# ILLUSTRATION 5.6: Valuing a Warrant on Avatek Corporation

Avatek Corporation is a real estate firm with 19.637 million shares outstanding, trading at  \$0.38 a share. In March 2001 the company had 1.8 million options outstanding, with four years to expiration and with an exercise price of\$ 2.25. The stock paid no dividends, and the standard deviation in In(stock prices) was 93\%. The four-year Treasury bond rate was 4.9\%. (The options were trading at 0.12 apiece at the time of this analysis.)

The inputs to the warrant valuation model are as follows:

$$
S = (0. 3 8 \times 1 9. 6 3 7 + 0. 1 2 \times 1. 8) / (1 9. 6 3 7 + 1. 8) = 0. 3 5 4 4
$$

$K =$  Exercise price on warrant  $= 2.25$

$t =$  Time to expiration on warrant  $= 4$  years

$r =$  Riskless rate corresponding to life of option  $= 4.9\%$

$\sigma^2 =$  Variance in value of stock  $= 0.93^{2}$

$y =$  Dividend yield on stock  $= 0.0\%$

The results of the Black-Scholes valuation of this option are:

$$
\mathrm {d} _ {1} = 0. 0 4 1 8 \quad \mathrm {N} (\mathrm {d} _ {1}) = 0. 5 1 6 7
$$

$$
\mathrm {d} _ {2} = - 1. 8 1 8 2 \quad \mathrm {N} (\mathrm {d} _ {2}) = 0. 0 3 4 5
$$

Value of option = 0.3544(0.5167) - 2.25 exp $^{-(0.049)(4)}$  (0.0345) = 0.12

The options were trading at 0.12 in March 2001. Since the value was equal to the price, there was no need for further iterations. If there had been a difference, we would have reestimated the adjusted stock price and option value. If the options had been non-traded (as is the case with management options), this calculation would have required an iterative process, where the option value is used to get the adjusted value per share and the value per share to get the option value.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/0edb10887bdb297cd3d65583f65b824e2060d3aec7f3617ef5ae037148f9dc90.jpg)

# warrant.xls: This spreadsheet allows you to estimate the value of an option when there is a potential dilution from exercise.

The Black-Scholes Model for Valuing Puts The value of a put can be derived from the value of a call with the same strike price and the same expiration date:

$$
C - P = S - K e ^ {- r t}
$$ where  $C$  is the value of the call and  $P$  is the value of the put. This relationship between the call and put values is called put-call parity, and any deviations from parity can be used by investors to make riskless profits. To see why put-call parity holds, consider selling a call and buying a put with exercise price  $K$  and expiration date  $t$ , and simultaneously buying the underlying asset at the current price  $S$ . The payoff from this position is riskless and always yields  $K$  at expiration (t). To see this, assume that the stock price at expiration is  $S^*$ . The payoff on each of the positions in the portfolio can be written as follows:


<table><tr><td>Position</td><td>Payoffs at t if S* &gt; K</td><td>Payoffs at t if S* &lt; K</td></tr><tr><td>Sell call</td><td>-(S* - K)</td><td>0</td></tr><tr><td>Buy put</td><td>0</td><td>K - S*</td></tr><tr><td>Buy stock</td><td>S*</td><td>S*</td></tr><tr><td>Total</td><td>K</td><td>K</td></tr></table>

Since this position yields K with certainty, the cost of creating this position must be equal to the present value of K at the riskless rate  $(\mathrm{K} \mathrm{e}^{-\mathrm{rt}})$ .

$$

\mathrm {S} + \mathrm {P} - \mathrm {C} = \mathrm {K e} ^ {- \mathrm {r t}}

$$

$$

C - P = S - K e ^ {- r t}

$$

Substituting the Black-Scholes equation for the value of an equivalent call into this equation, we get:

$$

\text {V a l u e o f p u t} = \mathrm {K} \mathrm {e} ^ {- \mathrm {r t}} [ 1 - \mathrm {N} (\mathrm {d} _ {2}) ] - \mathrm {S} \mathrm {e} ^ {- \mathrm {y t}} [ 1 - \mathrm {N} (\mathrm {d} _ {1}) ]

$$ where  $d_1 = \frac{\ln\left(\frac{S}{K}\right) + \left(r - y + \frac{\sigma^2}{2}\right)t}{\sigma\sqrt{t}}$

$$ d _ {2} = d _ {1} - \sigma \sqrt {t}
$$

Thus, the replicating portfolio for a put is created by selling short  $[1 - \mathrm{N}(\mathrm{d}_1)]$  shares of stock and investing  $\mathrm{K e}^{-\mathrm{rt}}[1 - \mathrm{N}(\mathrm{d}_2)]$  in the riskless asset.

# ILLUSTRATION 5.7: Valuing a Put Using Put-Call Parity: Cisco Systems and AT&T

Consider the call on Cisco Systems that we valued in Illustration 5.2. The call had a strike price of  \$15 on the stock, had 103 days left to expiration, and was valued at\$ 1.87. The stock was trading at 13.62, and the riskless rate was 4.63\%. The put can be valued as follows:

$$
\text {P u t v a l u e} = C - S + K \mathrm {e} ^ {- r t} = \\ 1. 8 7 - \\ 1 3. 6 2 + \\ 1 5 \mathrm {e} ^ {- (0. 0 4 6 3) (2. 8 2 2)} = \\ 3. 0 6
$$

The put was trading at 3.38.

Also, a long-term call on AT&T was valued in Illustration 5.4. The call had a strike price of 20, 1.8333 years left to expiration, and a value of 6.63. The stock was trading at 20.50 and was expected to maintain a dividend yield of 2.51\% over the period. The riskless rate was 4.85\%. The put value can be estimated as follows:

$$
\text {P u t v a l u e} = C - S \mathrm {e} ^ {- y t} + K \mathrm {e} ^ {- r t} = \\ 6. 6 3 - \\ 2 0. 5 \mathrm {e} ^ {- (0. 2 5 1) (1. 8 3 3 3)} + \\ 2 0 \mathrm {e} ^ {- (0. 4 8 5) (1. 8 3 3 3)} = \\ 5. 3 5
$$

The put was trading at 3.80. Both the call and the put were trading at different prices from our estimates, which may indicate that we have not correctly estimated the stock's volatility.

# Jump Process Option Pricing Models

If price changes remain larger as the time periods in the binomial model are shortened, it can no longer be assumed that prices change continuously. When price changes remain large, a price process that allows for price jumps is much more realistic. Cox and Ross (1976) valued options when prices follow a pure jump process, where the jumps can only be positive. Thus, in the next interval, the stock price will either have a large positive jump with a specified probability or drift downward at a given rate.

Merton (1976) considered a distribution where there are price jumps superimposed on a continuous price process. He specified the rate at which jumps occur  $(\lambda)$  and the average jump size  $(k)$ , measured as a percentage of the stock price. The model derived to value options with this process is called a jump diffusion model. In this model, the value of an option is determined by the five variables specified in the Black-Scholes model, and the parameters of the jump process  $(\lambda, k)$ . Unfortunately, the estimates of the jump process parameters are so difficult to make for most firms that they overwhelm any advantages that accrue from using a more realistic model. These models, therefore, have seen limited use in practice.

# EXTENSIONS OF OPTION PRICING

All the option pricing models described so far—the binomial, the Black-Scholes, and the jump process models—are designed to value options with clearly defined exercise prices and maturities on underlying assets that are traded. However, the options we encounter in investment analysis or valuation are often on real assets rather than financial assets. Categorized as real options, they can take much more complicated forms. This section considers some of these variations.

# Capped and Barrier Options

With a simple call option, there is no specified upper limit on the profits that can be made by the buyer of the call. Asset prices, at least in theory, can keep going up, and the payoffs increase proportionately. In some call options, though, the buyer is entitled to profits up to a specified price but not above it. For instance, consider a call option with a strike price of  $\mathrm{K}_1$  on an asset. In an unrestricted call option, the payoff on this option will increase as the underlying asset's price increases above  $\mathrm{K}_1$ . Assume, however, that if the price reaches  $\mathrm{K}_2$ , the payoff is capped at  $(\mathrm{K}_2 - \mathrm{K}_1)$ . The payoff diagram on this option is shown in Figure 5.5.

This option is called a capped call. Notice, also, that once the price reaches  $\mathrm{K}_3$ , there is no longer any time premium associated with the option, and the option will therefore be exercised. Capped calls are part of a family of options called barrier options, where the payoff on and the life of the option are functions of whether the underlying asset price reaches a certain level during a specified period.

The value of a capped call is always lower than the value of the same call without the payoff limit. A simple approximation of this value can be obtained by valuing the call twice, once with the given exercise price and once with the cap, and taking the difference in the two values. In the preceding example, then, the value of the call with an exercise price of  $\mathrm{K}_1$  and a cap at  $\mathrm{K}_2$  can be written as:

Value of capped call  $=$  Value of call  $\left( {\mathrm{K} = {\mathrm{K}}_{1}}\right)  -$  Value of call  $\left( {\mathrm{K} = {\mathrm{K}}_{2}}\right)$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/f633fc036a8d002f569cba79b5660869ef9a181af7bb389b6663afc03e3a9cb9.jpg)

FIGURE 5.5 Payoff on Capped Call

Barrier options can take many forms. In a knockout option, an option ceases to exist if the underlying asset reaches a certain price. In the case of a call option, this knockout price is usually set below the strike price, and this option is called a down-and-out option. In the case of a put option, the knockout price will be set above the exercise price, and this option is called an up-and-out option. Like the capped call, these options are worth less than their unrestricted counterparts. Many real options have limits on potential upside, or knockout provisions, and ignoring these limits can result in the overstatement of the value of these options.

# Compound Options

Some options derive their value not from an underlying asset, but from other options. These options are called compound options. Compound options can take any of four forms—a call on a call, a put on a put, a call on a put, or a put on a call. Geske (1979) developed the analytical formulation for valuing compound options by replacing the standard normal distribution used in a simple option model with a bivariate normal distribution in the calculation.

Consider, for instance, the option to expand a project that is discussed in Chapter 30. While we will value this option using a simple option pricing model, in reality there could be multiple stages in expansion, with each stage representing an option for the following stage. In this case, we will undervalue the option by considering it as a simple rather than a compound option.

Notwithstanding this discussion, the valuation of compound options becomes progressively more difficult as more options are added to the chain. In this case, rather than wreck the valuation on the shoals of estimation error, it may be better to accept the conservative estimate that is provided with a simple valuation model as a floor on the value.

# Rainbow Options

In a simple option, the uncertainty is about the price of the underlying asset. Some options are exposed to two or more sources of uncertainty, and these options are rainbow options. Using the simple option pricing model to value such options can lead to biased estimates of value. As an example, consider an undeveloped oil reserve as an option, where the firm that owns the reserve has the right to develop the reserve. Here there are two sources of uncertainty. The first is obviously the price of oil, and the second is the quantity of oil that is in the reserve. To value this undeveloped reserve, we can make the simplifying assumption that we know the quantity of oil in the reserve with certainty. In reality, however, uncertainty about the quantity will affect the value of this option and make the decision to exercise more difficult.

# CONCLUSION

An option is an asset with payoffs that are contingent on the value of an underlying asset. A call option provides its holder with the right to buy the underlying asset at a fixed price, whereas a put option provides its holder with the right to sell at a fixed price, at any time before the expiration of the option. The value of an option is determined by six variables—the current value of the underlying asset, the variance in this value, the expected dividends on the asset, the strike price and life of the option, and the riskless interest rate. This is illustrated in both the binomial and the Black-Scholes models, which value options by creating replicating portfolios composed of the underlying asset and riskless lending or borrowing. These models can be used to value assets that have option like characteristics.

# QUESTIONS AND SHORT PROBLEMS

In the problems following, use an equity risk premium of 5.5 percent if none is specified.

1. The following are prices of options traded on Microsoft Corporation, which pays no dividends.

<table><tr><td></td><td colspan="2">Call</td><td colspan="2">Put</td></tr><tr><td></td><td>K = 85</td><td>K = 90</td><td>K = 85</td><td>K = 90</td></tr><tr><td>One-month</td><td>$2.75</td><td>$1.00</td><td>$4.50</td><td>$7.50</td></tr><tr><td>Three-month</td><td>$4.00</td><td>$2.75</td><td>$5.75</td><td>$9.00</td></tr><tr><td>Six-month</td><td>$7.75</td><td>$6.00</td><td>$8.00</td><td>$12.00</td></tr></table>

The stock is trading at 83, and the annualized riskless rate is 3.8\%. The standard deviation in \ln (\text{stock prices}) (based on historical data) is 30\%.

a. Estimate the value of a three-month call with a strike price of 85.

b. Using the inputs from the Black-Scholes model, specify how you would replicate this call.

c. What is the implied standard deviation in this call?

 d. Assume now that you buy a call with a strike price of \$85 and sell a call with a strike price of \$90. Draw the payoff diagram on this position.

e. Using put-call parity, estimate the value of a three-month put with a strike price of 85.

2. You are trying to value three-month call and put options on Merck with a strike price of \$30. The stock is trading at \$28.75, and the company expects to pay a quarterly dividend per share of 0.28 in two months. The annualized riskless interest rate is 3.6\%, and the standard deviation in log stock prices is 20\%.

a. Estimate the value of the call and put options, using the Black-Scholes model.

b. What effect does the expected dividend payment have on call values? On put values? Why?

3. There is the possibility that the options on Merck described in the preceding problem could be exercised early.

a. Use the pseudo-American call option technique to determine whether this will affect the value of the call.

b. Why does the possibility of early exercise exist? What types of options are most likely to be exercised early?

4. You have been provided the following information on a three-month call:

$$
\begin{array}{l} S = 9 5 \quad K = 9 0 \quad t = 0. 2 5 \quad r = 0. 0 4 \\ \mathrm {N} \left(\mathrm {d} _ {1}\right) = 0. 5 7 5 0 \quad \mathrm {N} \left(\mathrm {d} _ {2}\right) = 0. 4 5 0 0 \\ \end{array}
$$ a. If you wanted to replicate buying this call, how much money would you need to borrow?

b. If you wanted to replicate buying this call, how many shares of stock would you need to buy?

5. Go Video, a manufacturer of video recorders, was trading at \$4 per share in May 1994. There were 11 million shares outstanding. At the same time, it had 550,000 one-year warrants outstanding, with a strike price of \$4.25. The stock has had a standard deviation of 60\%. The stock does not pay a dividend. The riskless rate is 5\%.

a. Estimate the value of the warrants, ignoring dilution.
b. Estimate the value of the warrants, allowing for dilution.
c. Why does dilution reduce the value of the warrants?

6. You are trying to value a long-term call option on the NYSE Composite index, expiring in five years, with a strike price of 275. The index is currently at 250, and the annualized standard deviation in stock prices is  $15\%$ . The average dividend yield on the index is  $3\%$  and is expected to remain unchanged over the next five years. The five-year Treasury bond rate is  $5\%$ .

a. Estimate the value of the long-term call option.
b. Estimate the value of a put option with the same parameters.
c. What are the implicit assumptions you are making when you use the Black-Scholes model to value this option? Which of these assumptions are likely to be violated? What are the consequences for your valuation?

7. A new security on AT&T will entitle the investor to all dividends on AT&T over the next three years, limiting upside potential to  $20\%$  but also providing downside protection below  $10\%$ . AT&T stock is trading at 50, and three-year call and put options are traded on the exchange at the following prices:

<table><tr><td></td><td colspan="2">Call Options</td><td colspan="2">Put Options</td></tr><tr><td>K</td><td>1-Year</td><td>3-Year</td><td>1-Year</td><td>3-Year</td></tr><tr><td>45</td><td>$8.69</td><td>$13.34</td><td>$1.99</td><td>$ 3.55</td></tr><tr><td>50</td><td>$5.86</td><td>$10.89</td><td>$3.92</td><td>$ 5.40</td></tr><tr><td>55</td><td>$3.78</td><td>$ 8.82</td><td>$6.59</td><td>$ 7.63</td></tr><tr><td>60</td><td>$2.35</td><td>$ 7.11</td><td>$9.92</td><td>$10.23</td></tr></table>

How much would you be willing to pay for this security?


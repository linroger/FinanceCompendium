---
title: "Option Pricing Using the Binomial Model - CRR Derivation"
aliases:
  - Cox-Ross-Rubinstein Model
  - Binomial Option Pricing
  - CRR Model
parent_directory: Options Futures & Forwards
cssclasses: academia
---

# Finance 400

# A. Penati - G. Pennacchi

# Option Pricing Using the Binomial Model

The Cox-Ross-Rubinstein (CRR) technique is useful for valuing relatively complicated options, such as those having American (early exercise) features. In these notes we show how an American put option can be valued. Recall that CRR assume that over each period of length  $\Delta t$ , stock prices follow the process

$$
u S \quad \text {w i t h p r o b a b i l i t y} q
$$

$$
S \begin{array}{c} \nearrow \\ \searrow \end{array} \tag {1}
$$

$$
d S \quad \text {w i t h p r o b a b i l i t y} 1 - q
$$

The results of our earlier analysis showed that the assumption of an absence of arbitrage allowed us to use a risk-neutral valuation method to derive the value of an option. In general, this method of valuing a derivative security can be implemented by:

i) setting the expected rate of return on all securities equal to the risk-free rate  
ii) discounting the expected value of future cashflows generated from i) by this risk-free rate

For example, suppose we examine the value of the stock,  $S$ , in terms of the risk-neutral valuation method. Define  $r$  as the continuously-compounded interest rate (the rate of return on a risk-free asset). Then we have

$$
\begin{array}{l} S = e ^ {- r \Delta t} \hat {E} [ S _ {t + \Delta t} ] \tag {2} \\ = e ^ {- r \Delta t} [ p u S + (1 - p) d S ] \\ \end{array}
$$

where  $\hat{E}[\cdot]$  is the expectations operated under the condition that the expected rate of return on all assets equals the risk-free interest rate, which is not necessarily the assets' true expected rates of return. Re-arranging (2) we obtain

$$
e ^ {r \Delta t} = p u + (1 - p) d \tag {3}
$$

which implies

$$
p = \frac {e ^ {r \Delta t} - d}{u - d} \tag {4}
$$

This is the same formula for  $p$  as was derived earlier (with the risk-free return now in terms of a continuously-compounded interest rate). Hence, risk-neutral valuation is consistent with this simple example.

To use the CRR model to value actual options, the parameters  $u$  and  $d$  must be calibrated to fit the variance of the underlying stock. When estimating a stock's volatility, it is often assumed that stock prices are lognormally distributed. This implies that the continuously-compounded rate of return on the stock over a period of length  $\Delta t$ , given by  $\ln (S_{t + \Delta t}) - \ln (S_t)$ , is normally distributed with a constant per-period variance of  $\Delta t\sigma^2$ . This constant variance assumption is also consistent with the Black-Scholes option pricing model. Thus, the sample standard deviation of a time-series of historical log stock price changes provides us with an estimate of  $\sigma$ . Based on this value of  $\sigma$ , approximate values of  $u$  and  $d$  that result in the same variance for a binomial stock price distribution are<sup>1</sup>

$$
u = e ^ {\sigma \sqrt {\Delta t}} \tag {5}
$$

$$
d = \frac {1}{u} = e ^ {- \sigma \sqrt {\Delta t}}
$$

Hence, condition (5) provides a simple way of calibrating  $u$  and  $d$  to the stock's volatility,  $\sigma$ .

Now consider the path of the stock price. Because we assumed  $u = \frac{1}{d}$ , the binomial process for the stock price has the simplified form:

$$
\begin{array}{c c c c} & & & u ^ {4} S \\ & & u ^ {3} S \nearrow \\ & u ^ {2} S \nearrow & u ^ {2} S \\ S \nearrow & u S \nearrow & u S \nearrow \\ & S \nearrow & S \\ & d S \nearrow & d S \nearrow \\ & d ^ {2} S \nearrow & d ^ {2} S \\ & & d ^ {3} S \nearrow \\ & & d ^ {4} S \end{array} \tag {6}
$$

Given the stock price,  $S$ , and its volatility,  $\sigma$ , the above tree or "lattice" can be calculated for any number of periods using  $u = e^{\sigma \sqrt{\Delta t}}$  and  $d = e^{-\sigma \sqrt{\Delta t}}$ .

Now we can numerically value an option on this stock by starting at the last period and working back toward the first period. Recall that a put option that is not exercised early will have a final period (date  $T$ ) value

$$
P _ {T} = \max  [ 0, X - S _ {T} ] \tag {7}
$$

The value of the put at date  $T - \Delta t$  is then the risk-neutral expected value discounted by  $e^{-r\Delta t}$ .

$$
\begin{array}{l} P _ {T - \Delta t} = e ^ {- r \Delta t} \hat {E} [ P _ {T} ] \tag {8} \\ = e ^ {- r \Delta t} \left[ p P _ {T} ^ {u} + (1 - p) P _ {T} ^ {d} \right] \\ \end{array}
$$

However, with an American put option, we need to check whether this value exceeds the value

of the put if it were exercised early, which is

$$
P _ {T - \Delta t} = \max \left[ X - S _ {T - \Delta t}, e ^ {- r \Delta t} \left[ p P _ {T} ^ {u} + (1 - p) P _ {T} ^ {d} \right] \right] \tag {9}
$$

Let us illustrate this binomial valuation technique with the following example:

A stock has a current price of \( S = \\)80.50 \) and a volatility \( \sigma = 0.33 \). If \( \Delta t = \frac{1}{9} \) year, then \( u = e^{\frac{.33}{\sqrt{9}}} = e^{.11} = 1.1163 \) and \( d = \frac{1}{u} = .8958 \).

Thus the 3-period tree for the stock price is

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/e25f7c97-c6e9-4da4-8fee-070f664817ce/cbc9690e2bc68b65ba6dc6bdf15ab9e1f5442925f6657be607695df98dfd27fc.jpg)

Next, consider valuing an American put option on this stock that matures in  $\tau = \frac{1}{3}$

(4 months) and has an exercise price of \(X = \\)75\). Assume that the risk-free rate is \(r = 9\%\). This implies

$$
p = \frac {e ^ {r \Delta t} - d}{u - d} = \frac {e ^ {\frac {. 0 9}{9}} - . 8 9 5 8}{1 . 1 1 6 3 -. 8 9 5 8} = . 5 1 8 1
$$

We can now start at date 3 and begin filling in the tree for the put option.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/e25f7c97-c6e9-4da4-8fee-070f664817ce/bbececeae1cf9da98ab01d69c646ebc565bfb7300a0ee4421bf048dca68d06ba.jpg)

Using  $P_{3} = \max [0,X - S_{3}]$  , we have

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/e25f7c97-c6e9-4da4-8fee-070f664817ce/8146195a0d6475987b30f695eec02aed56b9f7c0f5384487f4bba7fddc9aa4cf.jpg)

Next, using

$$
P _ {2} = \max \left[ X - S _ {2}, e ^ {- r \Delta t} \left[ p P _ {3} ^ {u} + (1 - p) P _ {3} ^ {d} \right] \right]
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/e25f7c97-c6e9-4da4-8fee-070f664817ce/9d5b6fda1922910ef99f77a4fda756dc732d561bc0acceb2115ad964a7af6c6f.jpg)

*Note that at  $P_{dd}$  the option is exercised early since

$$
\begin{array}{l} P _ {d d} = \max \left[ X - S _ {2}, e ^ {- r \Delta t} \left[ p P _ {3} ^ {u} + (1 - p) P _ {3} ^ {d} \right] \right] \\ = \max  [ 7 5 - 6 4. 6 0, 9. 6 5 ] = \$ 1 0. 4 0 \\ \end{array}
$$

Next, using

$$
P _ {1} = \max \left[ X - S _ {1}, e ^ {- r \Delta t} \left[ p P _ {2} ^ {u} + (1 - p) P _ {2} ^ {d} \right] \right]
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/e25f7c97-c6e9-4da4-8fee-070f664817ce/4424f08a9fcd3e16234f576e7b1fccc402d5e3136e0bf9db2c35eb05c7fefe91.jpg)

Note that the option is not exercised early at  $P_{d}$  since

$$
P _ {d} = \max \left[ X - S _ {1}, e ^ {- r \Delta t} \left[ p P _ {2} ^ {u} + (1 - p) P _ {2} ^ {d} \right] \right]
$$

$$
= \max  [ 7 5 - 7 2. 1 2, 5. 6 6 ] = \$ 5. 6 6
$$

Finally, we calculate the value of the put at date 0 using

$$
P _ {0} = \max \left[ X - S _ {0}, e ^ {- r \Delta t} \left[ p P _ {1} ^ {u} + (1 - p) P _ {1} ^ {d} \right] \right]
$$

$$
= \max  [ - 5. 5, 3. 0 3 ] = \$ 3. 0 3
$$

and the final tree for the put is

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/e25f7c97-c6e9-4da4-8fee-070f664817ce/57e7da7258a3a4faa0e165168daf77796939a712c9970a7e54d81424a97a4365.jpg)

One can generalize the above procedure to allow for the stock (or portfolio of stocks such as a stock index) to continuously pay dividends that have a per unit time yield equal to  $\delta$ , that is, for  $\Delta t$  sufficiently small, the owner of the stock receives a dividend of  $\delta S \Delta t$ . For this case of a dividend-yielding asset, we simply redefine

$$
p = \frac {e ^ {(r - \delta) \Delta t} - d}{u - d} \tag {10}
$$

This is because when the asset pays a dividend yield of  $\delta$ , its expected risk-neutral appreciation is  $e^{(r - \delta)\Delta t}$  rather than  $e^{r\Delta t}$ .

For the case in which a stock is assumed to pay a known dividend yield,  $\delta$ , at a single point in time, then if date  $i\Delta t$  is prior to the stock going ex-dividend, the nodes of the stock price tree equal

$$
u ^ {j} d ^ {i - j} S \quad j = 0, 1, \dots , i. \tag {11a}
$$

If the date  $i\Delta t$  is after the stock goes ex-dividend, the nodes of the stock price tree equal

$$
u ^ {j} d ^ {i - j} S (1 - \delta) \quad j = 0, 1, \dots , i. \tag {11b}
$$

The value of an option is calculated as before. We work backwards and again check for the optimality of early exercise.
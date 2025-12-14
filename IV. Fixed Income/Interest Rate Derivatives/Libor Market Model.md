# The LIBOR Market Model

Master Thesis submitted

to

# Prof. Dr. Wolfgang K. Härdle

# Prof. Dr. Ostap Okhrin

Humboldt-Universität zu Berlin

School of Business and Economics

Ladislaus von Bortkiewicz Chair of Statistics

C.A.S.E.-Centre for Applied Statistics and Economics

C.A.S.E.

CENTER FOR APPLIED STATISTICS AND ECONOMICS

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/02c17963-b213-47e9-b3e1-f36bc5183120/37f5a100b9bee69202f685fb3af979689b222943b989177a6474bff11afaaa03.jpg)

by

Andreas Golle

(542173)

in partial fulfillment of the requirements

for the degree

Master of Science in Business Administration

Berlin, 25th February, 2013

# Acknowledgements

It is a pleasure to thank Prof. Wolfgang Karl Hardle for giving me the initial idea to carry out this study. I am also thankful to Martin Linderström of Danske Bank for helpful comments on the set of calibration instruments used for yield curve construction.

# Contents

1 Introduction 3  
2 Fixed Income Basics and Elements of Arbitrage Theory 4

2.1 Zero Coupon Bonds & Forward Rates 4  
2.2 Yield Curve Calibration 6  
2.3 Arbitrage Theory & Fixed Income Probability Measures 9

3 Fixed Income Derivatives Products 12

3.1 Interest Rate Swaps 12  
3.2 Caps & Caplets 14  
3.3 Digital Caplets 17  
3.4 Swaptions 17

4 The LIBOR Market Model 20

4.1 Theory 20  
4.2 Calibration of Instantaneous Volatilities 22  
4.3 Calibration of Instantaneous Correlations 27  
4.4 Bootstrapping Caplet Volatilities 36  
4.5 Monte Carlo Simulation 39

5 Summary 42  
6 Appendix 43

6.1 A.1 43  
6.2 A.2 43  
6.3 A.3 44  
6.4 A.4 44

# 1 Introduction

The LIBOR Market Model (LMM) has become one of the most important models for pricing fixed income derivatives. It is implemented at every major financial institution. (Huyet, 2007) points out to two observations that underpin its popularity. First, faced with the limitations of the model to account for smiles, the industry invented a stochastic volatility LMM extension instead of abandoning the framework altogether. Second, when dealing with the most important fixed income exotic, the Bermudan swaption, effort is put into improving numerical techniques rather than changing the model. These are signs of the LMM having become the industry standard.

In this thesis, we will present the most important concepts of the original version, namely the lognormal LMM. As such, we assume with a 'smile-less' world. We will thus not cover the sophisticated stochastic volatility extensions which are nowadays the preferred model choice. Furthermore, an overall focus is given on the calibration of the LMM to real market data.

In Section 2 we present fixed income basics with regard to terminology and modeling approaches and also consider the delicate aspect of calibrating a yield curve. Section 3 is entirely devoted to vanilla fixed income derivatives products and their associated pricing formulae. The LIBOR Market Model is covered in Section 4 where we present theoretical aspects but mainly focus on calibrating the model to data. The model parameters, instantaneous volatilities and instantaneous correlations, are explored and their parameterization is justified. A summary of the results is given in Section 5.

# 2 Fixed Income Basics and Elements of Arbitrage Theory

# 2.1 Zero Coupon Bonds & Forward Rates

The most atomic product in the fixed income world is a zero coupon bond (ZCB), an instrument that pays one unit of currency at  $T$  for certain and no intermediate coupons. We will call these zero coupon bonds, discount bonds or ZCB interchangeably. We will restrict ourselves to default-free discount bonds and thus assume a world without credit risk. The discount bond's price for  $t < T$  is denoted by  $P(t,T)$ . Arbitrage arguments necessitate that  $P(t,T) < 1 \forall t < T$  and  $P(t,T) = 1 \forall t \geq T$ . Zero coupon bonds are discount factors, meaning that multiplying any cash flow happening at  $T$  with  $P(t,T)$  gives the time- $t$  present value of such a (certain) commitment. Through the use of a replication argument, we are also able to calculate a forward discount bond  $P(t,T,T + \tau)$ . For this we will consider an increasing sequence of maturities  $t < T < T + \tau$ ,  $\tau > 0$ . A forward discount bond is a contract observed at  $t$  to pay  $P(t,T,T + \tau)$  at  $T$  and be repaid 1 at  $T + \tau$ . Consider the strategy at  $t$  to buy 1 unit of a  $(T + \tau)$ -maturity ZCB and sell short  $P(t,T + \tau) / P(t,T)$  units of a  $T$ -maturity ZCB. The cost incurred at  $t$  is

$$
- 1 \cdot P (t, T + \tau) + \frac {P (t , T + \tau)}{P (t , T)} \cdot P (t, T) = 0.
$$

At  $T$ , the short sale transaction matures and we receive a cash flow of

$$
- \frac {P (t , T + \tau)}{P (t , T)}
$$

and a cash flow of  $+1$  at time  $T + \tau$  from the long position in the  $(T + \tau)$ -maturity ZCB. Since we statically replicated the cash flows associated with the forward discount bond, we see that its price is

$$
P (t, T, T + \tau) = \frac {P (t , T + \tau)}{P (t , T)}.
$$

We introduce the concept of a forward LIBOR rate  $L(t,T,T + \tau)$ , by which we mean the simple rate of interest contracted at time  $t$  to borrow funds between  $T$  and  $T + \tau$ . Simple interest hereby means that if one is to borrow 1 unit of currency at  $t$ , one has to repay  $1 + L \cdot (T - t)$  at time  $T$ . This is called Money Market Convention. We define the simple forward rate  $L(t,T,T + \tau)$  such that

$$
P (t, T, T + \tau) = \frac {1}{1 + \tau L (t , T , T + \tau)}
$$

$$
\Leftrightarrow L (t, T, T + \tau) = \frac {1}{\tau} \Big (\frac {P (t , T)}{P (t , T + \tau)} - 1 \Big).
$$

This simple forward rate also emerges as the equilibrium rate in a forward rate agreement (FRA).<sup>3</sup> Consider a cash flow of 1 unit at  $T$  and a cash flow of  $-(1 + \tau k)$  at  $T + \tau$ , where the rate  $k$  is agreed upon at  $t$ ,  $t < T < T + \tau$ . Taking present values by multiplying with the appropriate discount bond and, since FRAs are traded at zero cost at initiation, equalizing to zero, we have

$$
\begin{array}{l} P (t, T) - P (t, T + \tau) (1 + \tau k) \stackrel {!} {=} 0 \\ \Leftrightarrow k = L (t, T, T + \tau) = \frac {1}{\tau} \Big (\frac {P (t , T)}{P (t , T + \tau)} - 1 \Big). \\ \end{array}
$$

Above we looked at a single forward LIBOR rate  $L(t,T,T + \tau)$ . LIBOR is shorthand for London Interbank Offered Rate. Now we are interested in a collection of forward LIBOR rates associated to a discrete tenor structure  $0\leq T_0 < T_1 < \ldots < T_N$ . Time is discretized into this set of tenor

dates because most fixed income derivatives only depend on events observed at a finite number of dates. The spacings between the tenor dates are called coverages or simply year fractions and they are a sequence  $\tau_{n} = T_{n + 1} - T_{n}$ ,  $n = 0, \dots, N - 1$ . In the EUR market typically  $\tau_{n} \approx 0.5$  because an important benchmark LIBOR rate is the 6M LIBOR rate (see the swap pricing Section 3.1). Thus we define forward LIBOR rates to be<sup>4</sup>

$$
L _ {n} (t) \stackrel {\mathrm {d e f}} {=} L (t, T _ {n}, T _ {n + 1}) = \frac {1}{\tau_ {n}} \Big (\frac {P (t , T _ {n})}{P (t , T _ {n + 1})} - 1 \Big), \quad n = 0, \ldots , N - 1, \quad 0 \leq t \leq T _ {n}. \qquad (1)
$$

The preceding equation shows that forward rates are determined by discount bonds. We can reverse this order and recover discount bonds from forward rates by the following reasoning. From (1) we have

$$
\frac {P (t , T _ {n + 1})}{P (t , T _ {n})} = \frac {1}{1 + \tau_ {n} L (t , T _ {n} , T _ {n + 1})} \qquad n = 0, \ldots , N - 1, \quad 0 \le t \le T _ {n}.
$$

Then

$$
\frac {P (t , T _ {1})}{P (t , T _ {0})} \cdot \frac {P (t , T _ {2})}{P (t , T _ {1})} \dots \frac {P (t , T _ {N})}{P (t , T _ {N - 1})} = \frac {P (t , T _ {N})}{P (t , T _ {0})} = \prod_ {n = 0} ^ {N - 1} \frac {1}{1 + \tau_ {n} L _ {n} (t)}.
$$

This could be evaluated at  $t = T_0$ , i.e. it is evaluated exactly on the tenor date  $T_0$ . Then

$$
P (T _ {0}, T _ {N}) = \prod_ {n = 0} ^ {N - 1} \frac {1}{1 + \tau_ {n} L _ {n} (T _ {0})}.
$$

However, at an arbitrary date  $t$ , knowledge of the forward LIBOR rates is insufficient to uniquely pin down discount bond prices on the entire tenor structure. Suppose that  $T_{j} < t < T_{j + 1}$ ,  $j \in \{0, \dots, N - 1\}$  and we are interested in the discount bond price  $P(t, T_{n})$  for some  $n > j + 1$ . For simplicity, we could take the last tenor date in the tenor structure,  $T_{N}$  so that we would like to have an expression for  $P(t, T_{N})$ . We can determine

$$
P (T _ {j + 1}, T _ {N}) = \prod_ {n = j + 1} ^ {N - 1} \frac {1}{1 + \tau_ {n} L _ {n} (t)},
$$

but this only discounts the discount bond's payment occurring at  $T_{N}$  to time  $T_{j + 1}$ . We however imposed  $t < T_{j + 1}$  so that we additionally need a discount factor from  $T_{j + 1}$  to  $t$ . We therefore define a function  $q(t) = \inf \{k\in \mathbb{Z}:T_k\geq t\}$ , thus,  $q(t)$  is the index of the first rollover date after  $t$ . Having introduced this function,

$$
P (t, T _ {N}) = P (t, T _ {q (t)}) \prod_ {n = j + 1} ^ {N - 1} \frac {1}{1 + \tau_ {n} L _ {n} (t)}.
$$

In general, for  $0 \leq t < T_{n}$ ,

$$
P (t, T _ {n}) = P (t, T _ {q (t)}) \prod_ {j = q (t)} ^ {n - 1} \frac {1}{1 + \tau_ {j} L _ {j} (t)},
$$

and we summarize that forward LIBOR rates do not determine discount bond prices unless one specifies the so called front stub discount bond  $P(t, T_{q(t)})$ . This bond can be thought of as the "current price of the shortest maturity bond" (Glasserman, 2010).

# 2.2 Yield Curve Calibration

Forward LIBOR rates are not traded directly in the market, nor is one to observe a continuum of discount bonds  $P(\cdot)$  for every possible maturity. One may indeed observe prices of actual zero coupon bonds issued by government authorities.<sup>5</sup> It is not advisable though and not done in practice to interpolate these observed prices of zero coupon bonds and use them to calculate forward rates. Instead, one uses market quotes from liquidly traded fixed-income securities as benchmarks and strips a LIBOR curve out of these. Following the convention in the literature, we will simply call this curve yield curve henceforth. Benchmark securities are for instance forward rate agreements (FRAs) and swaps. As shown in Section 3.1 on swap pricing, swap rates can be decomposed into a set of discount bonds and thus, given market quotes of swaps for different maturities (e.g. 2Y, 5Y,...,30Y), one may infer discount bonds from these swap market quotes. The requirement for including a fixed-income instrument into the set of calibration inputs is that it is liquidly traded and thus conveys useful information. Assuming that we have a calibrated yield curve at our disposal, any forward LIBOR rate  $L_{n}(t)$  can thus be calculated via equation (1). Additionally, Andersen & Piterbarg note for the purposes of calibrating a LIBOR curve, parametric methods such as the Nelson-Siegel approach are uncommon in practice, see (Andersen and Piterbarg, 2010a).

The following discussion concerning the construction of a zero coupon curve (yield curve) draws upon (Hagan and West, 2006) and (Hagan and West, 2008). Since the ultimate goal of using a stripped curve is the pricing of derivatives which are modeled by a continuous-time model, it is customary and market-practice to start from the outset utilizing continuous compounding such that

$$
P (t, T) = \exp \left\{- r (t, T) (T - t) \right\}.
$$

Here,  $r(t,T)$  is the continuously compounded rate (zero rate) that describes the accrual of interest from today,  $t$ , to some future point in time,  $T$ .

Suppose we are given some data  $y$ , where  $y_{i}$ ,  $i = 1,2,\ldots,n$  will typically be zero rates associated to several discount bonds. Thus we will write  $y_{i} = r_{i}$ . This data  $y$  is a function of time so that for each  $r_i$  we have calendar dates  $t_1,t_2,\dots ,t_n$ . An interpolation rule specifies the value of  $r(t)$  for a  $t$  that is not one of the given  $t_i$ . Given this rule, we then construct a continuous function  $r(t)$  which satisfies  $r(t_{i}) = r_{i}$ ,  $i = 1,\dots ,n$ , i.e. the given data  $r$  is indeed recovered. Since many interpolation rules exist, one considers several criteria with which to judge their respective performance. We will only discuss one such criterion: the continuity of forward rates. Assuring that forward rates are continuous when calculated off a zero curve is important for the coherence of derivatives pricing. At the extreme, a discontinuous forward curve would assign significantly different values to interest-sensitive derivatives whose maturities only differ by a few days. This is implausible and also undermines consistency in risk-management.

Given a  $t \in \{t_1, t_n\}$  which is not equal to any of the  $t_i$ , we determine the index  $i$  such that  $t_i < t < t_{i+1}$ . We then calculate  $r(t)$  with a version of a cubic spline, only using the contiguous zero rates  $r_i$  and  $r_{i+1}$ . Consider a cubic spline with coefficients  $(a_i, b_i, c_i, d_i)$  for  $1 \leq i \leq n-1$ . The continuous function  $r(t)$  will then be

$$
r (t) = a _ {i} + b _ {i} (t - t _ {i}) + c _ {i} (t - t _ {i}) ^ {2} + d _ {i} (t - t _ {i}) ^ {3} \quad t _ {i} \leq t \leq t _ {i + 1}.
$$

To this end, we will restrict ourselves to a so-called Bessel (Hermite) Cubic Spline. We will not go into the details of the particular expressions for  $a_i, b_i, c_i, d_i$  and refer to (Hagan and West, 2006). Using a Hermite interpolation scheme preserves continuity of the forward rates, as desired.

<table><tr><td>Instrument</td><td>Start</td><td>Tenor</td><td>Mid Quotes (%)</td><td>Knot Points</td><td>Zero rates (%)</td></tr><tr><td>EURIBOR</td><td>2B</td><td>6M</td><td>2.471</td><td>26/09/2003</td><td>2.4896</td></tr><tr><td>FRA 1x7</td><td>1M</td><td>6M</td><td>2.430</td><td>24/10/2003</td><td>2.4546</td></tr><tr><td>FRA 2x8</td><td>2M</td><td>6M</td><td>2.400</td><td>26/11/2003</td><td>2.4367</td></tr><tr><td>FRA 3x9</td><td>3M</td><td>6M</td><td>2.380</td><td>24/12/2003</td><td>2.4290</td></tr><tr><td>FRA 4x10</td><td>4M</td><td>6M</td><td>2.390</td><td>24/01/2004</td><td>2.4409</td></tr><tr><td>FRA 5x11</td><td>5M</td><td>6M</td><td>2.400</td><td>25/02/2004</td><td>2.4509</td></tr><tr><td>FRA 6x12</td><td>6M</td><td>6M</td><td>2.425</td><td>24/03/2004</td><td>2.4668</td></tr><tr><td>FRA 9x15</td><td>9M</td><td>6M</td><td>2.455</td><td>24/06/2004</td><td>2.4849</td></tr><tr><td>FRA 12x18</td><td>12M</td><td>6M</td><td>2.475</td><td>24/09/2004</td><td>2.5678</td></tr><tr><td>IRS</td><td>2B</td><td>2Y</td><td>2.785</td><td>26/03/2005</td><td>2.7463</td></tr><tr><td>IRS</td><td>2B</td><td>3Y</td><td>3.116</td><td>26/03/2006</td><td>3.0741</td></tr><tr><td>IRS</td><td>2B</td><td>4Y</td><td>3.395</td><td>26/03/2007</td><td>3.3601</td></tr><tr><td>IRS</td><td>2B</td><td>5Y</td><td>3.630</td><td>26/03/2008</td><td>3.5992</td></tr><tr><td>IRS</td><td>2B</td><td>6Y</td><td>3.828</td><td>26/03/2009</td><td>3.8050</td></tr><tr><td>IRS</td><td>2B</td><td>7Y</td><td>4.000</td><td>26/03/2010</td><td>3.9878</td></tr><tr><td>IRS</td><td>2B</td><td>8Y</td><td>4.153</td><td>26/03/2011</td><td>4.1522</td></tr><tr><td>IRS</td><td>2B</td><td>9Y</td><td>4.283</td><td>26/03/2012</td><td>4.2934</td></tr><tr><td>IRS</td><td>2B</td><td>10Y</td><td>4.388</td><td>26/03/2013</td><td>4.4098</td></tr><tr><td>IRS</td><td>2B</td><td>15Y</td><td>4.735</td><td>26/03/2018</td><td>4.8102</td></tr><tr><td>IRS</td><td>2B</td><td>20Y</td><td>4.898</td><td>26/03/2023</td><td>5.0046</td></tr><tr><td>IRS</td><td>2B</td><td>30Y</td><td>4.968</td><td>26/03/2033</td><td>5.0388</td></tr></table>

Table 1: Calibration Instruments, Mid Quotes as of 24/03/2003

In the first column of Table 1, we show the set of used market quotes which we will formally denote by

$$
V = \left( \begin{array}{c c c c} V _ {1} & V _ {2} & \ldots & V _ {n} \end{array} \right) ^ {\top}.
$$

These will act as the above mentioned benchmark securities for curve calibration. Thus, our set of calibration targets are EURIBOR (spot) fixings, forward rate agreements and interest-rate swaps. The notation 'FRA 1x7' is market jargon to describe a FRA that starts in 1M and matures in 7M, the tenor then being 6M (B, M and Y refer to business days, months and years, respectively). The set of market quotes could also include Eurodollar Futures contracts. Utilizing the implied rate of a Eurodollar Futures contract would however necessitate a so-called convexity adjustment. The displayed data for 24/03/2003 was obtained via Datastream as part of a historic time-series of mid-quotes from ICAP, one of the largest brokerage firms in fixed income markets. In the fifth column, we depict a set of knot points  $t_i$  on the curve that correspond to the maturity dates of the  $V_i$ ,  $i = 1, \ldots, n$ . Corresponding to each market quote  $V_i$ , let us introduce model rates  $\widetilde{V}_i^7$ , collected as

$$
\widetilde {V} = \left( \begin{array}{c c c} \widetilde {V} _ {1} & \ldots & \widetilde {V} _ {n} \end{array} \right) ^ {\top}.
$$

The spot fixing and the FRA quotes are modeled with the appropriate forward rate whereas the quoted rates of the swaps are modeled with the appropriate swap rates. As explained above in the

case of forward rates and in Section 3.1 in the case of swap rates, these model rates depend on zero rates so that we introduce a set of (model) zero rates

$$
R = \left( \begin{array}{l l l} R _ {1} & \ldots & R _ {n} \end{array} \right) ^ {\top}
$$

so that  $\widetilde{V} = \widetilde{V}(R)$ . The objective function to be minimized in a yield curve calibration routine is then

$$
\min  _ {R} \sum_ {i = 1} ^ {n} \left(V _ {i} - \widetilde {V} _ {i} (R)\right) ^ {2},
$$

where we use numerical optimization techniques to approach this least squares optimization problem. MATLAB's built in function lsqnonlin achieves a single curve calibration within 25 seconds. $^{8}$  The calibrated zero rates for 24/03/2003 are in the last column of Table 1. Given these rates and the Hermite interpolation scheme, we can, using equation (1), calculate any forward rate. Figure 1 shows the 6M EUR forward curve that was calculated using the calibrated zero rates. Had we chosen a simpler interpolation technique such as log-linear interpolation, the forward curve would not display this smooth behaviour as in the figure, but would look "saw-tooth" shaped, see (Andersen and Piterbarg, 2010a) for examples.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/02c17963-b213-47e9-b3e1-f36bc5183120/51712cd5a093d04f7f18b2c370ebce1ef7096e93d9a2e2036a51bdadbc379273.jpg)  
Figure 1: 6M EUR Forward Curve on 24/03/2003 out to 20 years

Calibrating yield curves for weekly data for the period 03/2004-03/2010 and then calculating 6M EUR forward curves out to 20 years, we obtain a time-series of forward rate curves in Figure 2.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/02c17963-b213-47e9-b3e1-f36bc5183120/2cedfd6409d7f9c4d4f86a5088ddc160fc5701a7286908e874b9051d0bde7258.jpg)  
Figure 2: Time Series of 6M EUR Forward Rates, 03/2004 - 03/2010

We end this subsection by noting that no calibration instrument should be perfectly overlapping to another because the modeled zero rates would then exceed the number of knot points on the curve, making the calibration problem overspecified.

# 2.3 Arbitrage Theory & Fixed Income Probability Measures

We give a brief overview of elements of arbitrage pricing theory. The presented theorems here are biased towards those which we will use later on. A detailed account can be found in (Björk, 2009) and (Shreve, 2004).

We state the following theorem as in (Shreve, 2004).

Definition 2.1 (Quadratic Variation of Itô Processes). Let  $(W(t))_{t\geq 0}$  be a Brownian motion, and let  $\mathcal{F}(t)$ ,  $t\geq 0$ , be an associated filtration. An Itô Process is a stochastic process of the form

$$
X (t) = X (0) + \int_ {0} ^ {t} \Theta (u) d u + \int_ {0} ^ {t} \Delta (u) d W (u) \tag {2}
$$

where  $X(0)$  is nonrandom and  $\Theta(t)$  and  $\Delta(t)$  are adapted stochastic processes. The quadratic variation of the Ito process is

$$
\langle X (t), X (t) \rangle = \int_ {0} ^ {t} \Delta^ {2} (u) d u.
$$

Shreve remarks that Definition 2.1 is best remembered by first writing

$$
d X (t) = \Theta (t) d t + \Delta (t) d W (t)
$$

and then computing

$$
d \langle X (t), X (t) \rangle = d X (t) d X (t) = \Delta^ {2} (t) d t.
$$

Theorem 2.2 (Martingale representation, one dimension). Let  $(W(t))_{0\leq t\leq T}$  be a Brownian motion on a probability space  $(\Omega ,\mathcal{F},\mathbb{P})$  , and let  $\mathcal{F}(t)$ $0\leq t\leq T$  , be a filtration generated by this Brownian motion. Let  $(M(t))_{0\leq t\leq T}$  be a martingale with respect to this filtration, i.e. for every  $t$ $M(t)$  is  $\mathcal{F}(t)$  -measurable and for  $0\leq s\leq t\leq T$ $\mathbb{E}[M(t)|\mathcal{F}(s)] = M(s)$  . Then there is an adapted process  $(c(t))_{0\leq t\leq T}$  such that

$$
M (t) = M (0) + \int_ {0} ^ {t} c (u) d W (u), \quad 0 \leq t \leq T. \tag {3}
$$

In diffential form, (3) is

$$
d M (t) = c (t) d W (t), \quad 0 \leq t \leq T.
$$

# Radon-Nikodym Summary

We state the Radon-Nikodym summary as in (Baxter and Rennie, 1996).

Given  $P$  and  $Q$  equivalent measures and a time horizon  $T$ , we can define a random variable  $\frac{dQ}{dP}$  defined on  $P$ -possible paths, taking positive real values, such that

$$
\mathbb {E} ^ {Q} \left(X (T) | \mathcal {F} (t)\right) = \zeta (t) ^ {- 1} \mathbb {E} ^ {P} \left(\zeta (T) X (T) | \mathcal {F} (t)\right)
$$

where  $\zeta(t)$  is the process  $\zeta(t) = \mathbb{E}^P\left(\frac{dQ}{dP}\big|\mathcal{F}(t)\right)$  and  $X(T)$  a  $\mathcal{F}(T)$ -measurable contingent claim.

# Change of Numeraire

The following theorem is from (Andersen and Piterbarg, 2010a).

Theorem 2.3 (Change of numeraire). Consider two numeraires  $N(t)$  and  $M(t)$ , inducing equivalent martingale measures  $Q^{N}$  and  $Q^{M}$ , respectively. If the market is complete, then the density of the Radon-Nikodym derivative relating the two measures is uniquely given by

$$
\zeta (t) = \mathbb {E} ^ {Q ^ {N}} \left(\frac {d Q ^ {M}}{d Q ^ {N}} \mid \mathcal {F} (t)\right) = \frac {M (t) / M (0)}{N (t) / N (0)}.
$$

Any process that is strictly positive qualifies as a numeraire.

# Risk-neutral Measure

The risk-neutral measure  $Q$  is associated with the numeraire  $\beta(t)$  that satisfies the deterministic SDE

$$
d \beta (t) = r (t) \beta (t) d t \qquad \beta (0) = 1.
$$

Solving the preceding equation yields

$$
\beta (t) = e ^ {\int_ {0} ^ {t} r (s) d s}
$$

which may be proofed by differentiation.  $\beta (t)$  can be thought of as a money-market account which continuously accrues interest over time. For an  $\mathcal{F}(T)$ -measurable payoff of  $V(T)$ , it then holds that

$$
\frac {V (t)}{\beta (t)} = \mathbb {E} ^ {Q} \left(\frac {V (T)}{\beta (T)} | \mathcal {F} (t)\right)
$$

$$
V (t) = \mathbb {E} ^ {Q} \Big (e ^ {- \int_ {t} ^ {T} V (T) | \mathcal {F} (t)} \Big).
$$

# T-Forward Measure

In the  $T$ -forward measure, a zero coupon bond with maturity  $T$  is used as the numeraire asset. The derivative security pricing formula then changes to

$$
\frac {V (t)}{P (t , T)} = \mathbb {E} ^ {T} \left(\frac {V (T)}{P (T , T)} | \mathcal {F} (t)\right)
$$

$$
V (t) = P (t, T) \mathbb {E} ^ {T} \Big (V (T) | \mathcal {F} (t) \Big),
$$

since  $P(T, T) = 1$ . "Shifting to the  $T$ -forward measure in a sense decouples the expectation of the terminal payout  $V(T)$  from that of the numeraire", (Andersen and Piterbarg, 2010a). The  $T$ -forward measure has an important application in fixed income derivatives pricing. This is highlighted by the following Lemma.

Lemma 2.4. In a no-arbitrage setting, the forward LIBOR rate  $L(t,T,T + \tau)$  is a martingale under  $Q^{T + \tau}$ , such that

$$
L (t, T, T + \tau) = \mathbb {E} ^ {T + \tau} \left(L (T, T, T + \tau) | \mathcal {F} (t)\right), \quad t \leq T. \tag {4}
$$

Proof: Appendix 6.1.

An often considered special case of the  $T$ -forward measure is the so-called terminal measure, induced by choosing the discount bond maturing at the last date in the tenor structure, i.e.  $P(t,T_N)$ .

# Swap Measure

In the swap pricing Section 3.1, the annuity factor  $A(t,T_S,T_E) \stackrel{\mathrm{def}}{=} \sum_{n=S}^{E-1} \tau_n P(t,T_{n+1})$  is introduced in equation (5). As it consists of multiple discount bonds which are all positive processes,  $A(t,T_S,T_E)$  itself is positive and can be used as a numeraire. Choosing  $A(t,T_S,T_E)$  as a numeraire induces the measure  $Q^A$  which is called swap measure. The derivative security pricing formula then reads

$$
V (t) = A (t, T _ {S}, T _ {E}) \mathbb {E} ^ {A} \Big (\frac {V (T)}{A (T , T _ {S} , T _ {E})} | \mathcal {F} (t) \Big) t \leq T _ {S} \leq T \leq T _ {E}.
$$

# Spot Measure

Since in the LIBOR Market Model a discrete tenor structure is used, a numeraire accruing interest in continuous time would not fit into this setting. Hence, the spot measure was introcued into the literature as a discrete-time equivalent of the money-market account. For this, consider at time 0 the strategy to invest one unit of currency into  $1 / P(0,T_1)$  units of  $T_{1}$ -maturity discount bonds. This comes at a cost of 1 at time 0 and returns

$$
\frac {1}{P (0 , T _ {1})} = 1 + \tau_ {0} L (0, 0, 0 + \tau_ {0})
$$

at time  $T_{1}$ . Reinvesting into  $1 / P(T_{1},T_{2})$  units of  $T_{2}$ -maturity discount bonds, this returns at time  $T_{2}$

$$
\frac {1}{P (0 , T _ {1})} \frac {1}{P (T _ {1} , T _ {2})} = \left(1 + \tau_ {0} L (0, 0, 0 + \tau_ {0})\right) \left(1 + \tau_ {1} L (T _ {1}, T _ {1}, T _ {2})\right).
$$

Proceeding with this strategy for each tenor structure date establishes a positive price process

$$
B (t) = \prod_ {n = 0} ^ {i} (1 + \tau_ {n} L _ {n} (T _ {n})) P (t, T _ {i + 1}), \quad T _ {i} <   t \leq T _ {i + 1},
$$

where  $B(0) = 1$ . The derivatives pricing formula under the spot measure changes to

$$
\frac {V (t)}{B (t)} = \mathbb {E} ^ {B} \bigg (\frac {V (T)}{B (T)} | \mathcal {F} (t) \bigg),
$$

where  $\mathbb{E}^B (\cdot)$  denotes the expectation under measure  $Q^{B}$ .

# 3 Fixed Income Derivatives Products

# 3.1 Interest Rate Swaps

An interest rate swaps (IRS) is an extremely popular and liquidly traded fixed income derivative. It is a bilateral OTC contract to exchange cash flow streams. The streams are referred to as legs of the swap. A vanilla IRS or fixed-for-floating swaps is a contract where one leg is tied to a fixed rate and one leg is tied to a floating rate. The floating leg is typically based on LIBOR.<sup>9</sup> Both legs have the same expiry date  $T_{E}$  and the same currency. One distinguishes payer swaps and receiver swaps. By convention, the attributes 'payer/receiver' refer to the fixed leg of the swap.

To value a swap, we specify a tenor-structure which applies to the rate in the floating leg as

$$
0 \leq T _ {S} <   T _ {S + 1} <   \dots <   T _ {E} \quad \tau_ {n} = T _ {n + 1} - T _ {n} \quad n = S, \dots , E - 1.
$$

Here, we used  $T_{S}$  to denote the start of the swap and  $T_{E}$  to denote the end of the swap. Comparing to the above introduced tenor structure  $\{T_{n}\}_{n = 0}^{N - 1}$ , if  $T_{S}$  is equal to  $T_{0}$ , we can think of the swap as spot-starting, if  $T_{S} > T_{0}$ , it is a forward-starting swap. At the beginning of each period  $[T_{n}, T_{n + 1}]$ , the spot LIBOR rate fixing is observed, the payment however takes place at the end of each period. Thus, at the end of each period, the fixed side pays  $\tau_{n}K$ , where  $K$  is a constant interest rate and the floating side of the swap pays  $\tau_{n}L(T_{n}, T_{n}, T_{n + 1})$ . This assumes that both legs have the same payment frequency and share the same conventions for calculating year fractions  $\tau_{n}$ . In reality however, e.g. in the case of a EUR swap, the rate (6M EURIBOR) associated to the floating leg fixes semi-annually and is also paid semi-annually, whereas the fixed leg pays annually. Thus, we note that in a EUR swap, the floating leg pays at times  $T_{S + 1}, \ldots, T_{E}$ , whereas the fixed leg pays at times  $T_{S + 2}, T_{S + 4}, \ldots, T_{E}$ . Schoenmakers generalizes the tenor structure introduced above to account for these differences, see (Schoenmakers, 2005). A way to formally account for the different payment frequencies is presented below.

In order to value a swap in the absence of arbitrage, we use the martingale result from equation (4). Hence, the present value (PV) of the floating leg is

$$
\begin{array}{l} \mathrm {P V} ^ {\text {f l o a t}} (t) = \sum_ {n = S} ^ {E - 1} \tau_ {n} P (t, T _ {n + 1}) \mathbb {E} ^ {T _ {n + 1}} \left(L \left(T _ {n}, T _ {n}, T _ {n + 1}\right) \mid \mathcal {F} (t)\right) \\ = \sum_ {n = S} ^ {E - 1} \tau_ {n} P (t, T _ {n + 1}) \underbrace {L (t , T _ {n} , T _ {n + 1})} _ {=: L _ {n} (t)}. \\ \end{array}
$$

The present value of the fixed leg is easily valued as

$$
\begin{array}{l} \mathrm {P V} ^ {\text {f i x e d}} (t) = \sum_ {n = S} ^ {E - 1} \tau_ {n} P (t, T _ {n + 1}) \cdot K \\ = A (t, T _ {S}, T _ {E}) \cdot K, \\ \end{array}
$$

where we use  $K$  as some fixed rate in the IRS and also use the definition of the annuity factor

$$
A (t, T _ {S}, T _ {E}) \stackrel {\text {d e f}} {=} \sum_ {n = S} ^ {E - 1} \tau_ {n} P (t, T _ {n + 1}). \tag {5}
$$

For the party paying fixed, the floating leg is an asset and the fixed leg is a liability. Thus the value of a payer swap in net terms is

$$
V _ {\text {P a y e r S w a p}} (t) = \mathrm {P V} ^ {\text {f l o a t}} (t) - \mathrm {P V} ^ {\text {f i x e d}} (t). \tag {6}
$$

As IRS are traded with a net present value of 0 at initiation, we conclude that  $\mathrm{PV}^{\mathrm{float}}(t) = \mathrm{PV}^{\mathrm{fixed}}(t)$  and we define the par swap rate to be the rate which emerges from this condition. We

introduce the notation  $\mathrm{SR}(t,T_S,T_E)$  to represent the par swap rate of a swap starting in  $T_{S}$  and maturing in  $T_{E}$ . Formally, we have

$$
\begin{array}{l} \sum_ {n = S} ^ {E - 1} \tau_ {n} P (t, T _ {n + 1}) L _ {n} (t) = \sum_ {n = S} ^ {E - 1} \tau_ {n} P (t, T _ {n + 1}) \operatorname {S R} (t, T _ {S}, T _ {E}) \\ \Leftrightarrow \qquad \mathrm {S R} (t, T _ {S}, T _ {E}) = \frac {\sum_ {n = S} ^ {E - 1} \tau_ {n} P (t , T _ {n + 1}) L _ {n} (t)}{\sum_ {n = S} ^ {E - 1} \tau_ {n} P (t , T _ {n + 1})} \\ \Leftrightarrow \quad \operatorname {S R} (t, T _ {S}, T _ {E}) = \frac {\sum_ {n = S} ^ {E - 1} \tau_ {n} P (t , T _ {n + 1}) L _ {n} (t)}{A (t , T _ {S} , T _ {E})}. \tag {7} \\ \end{array}
$$

We cannot simply cancel the  $\tau_{n}$  in the above formula because as discussed above, the year fractions of the two swap legs are typically different. One approach which formally includes the different payment frequencies would be to change the  $\tau_{n}$  for each leg, hence equation (7) would change to

$$
\mathrm {S R} (t, T _ {S}, T _ {E}) = \frac {\sum_ {n = S} ^ {E - 1} \tau_ {n} ^ {\mathrm {f l o a t}} P (t , T _ {n + 1}) L _ {n} (t)}{\sum_ {n = S} ^ {E - 1} \tau_ {n} ^ {\mathrm {f i x}} P (t , T _ {n + 1})},
$$

where we note that for EUR swaps,  $\tau_{n}^{\mathrm{float}}\approx 0.5$  and  $\tau_{n}^{\mathrm{fix}}\approx 1$ . Thus, we would define a different schedule of payment dates for the floating and fixed leg. $^{10}$

(Schoenmakers, 2002) utilizes a different approach retaining the definition of the  $\tau_{n}$  as being spacings between tenor dates with regard to the floating leg, i.e.  $\tau_{n} \approx 0.5$  with no superscripts. $^{11}$  He considers a  $\tau$ -period tenor structure  $T_{j} = T_{0} + j\tau$ ,  $j \geq 0$ , and modifies the swap rate definition to accommodate for the fact that the fixed leg settles annually by writing

$$
\operatorname {S R} (t, T _ {S}, T _ {E}) = \frac {\sum_ {n = S} ^ {E - 1} \tau_ {n} P (t , T _ {n + 1}) L _ {n} (t)}{\sum_ {k = 1} ^ {(E - S) / 2} 2 \tau_ {n} P (t , T _ {S + 2 k})}. \tag {8}
$$

for a swap contract over the period  $[T_S, T_E]$  with  $S$  and  $E$  even. We will not follow the notation of (8) and continue using (7), while remembering the different conventions which apply for the fixed and floating leg.

Rearranging equation (7) to

$$
\operatorname {S R} \left(t, T _ {S}, T _ {E}\right) \cdot A \left(t, T _ {S}, T _ {E}\right) = \sum_ {n = S} ^ {E - 1} \tau_ {n} P \left(t, T _ {n + 1}\right) L _ {n} (t) = \operatorname {P V} ^ {\text {f l o a t}} (t)
$$

and inserting into equation (6) yields

$$
\begin{array}{l} V _ {\text {P a y e r S w a p}} (t) = \mathrm {P V} ^ {\text {f l o a t}} (t) - \mathrm {P V} ^ {\text {f i x e d}} (t) \\ = \operatorname {S R} (t, T _ {S}, T _ {E}) \cdot A (t, T _ {S}, T _ {E}) - K A (t, T _ {S}, T _ {E}) \\ = A \left(t, T _ {S}, T _ {E}\right) \left(\operatorname {S R} \left(t, T _ {S}, T _ {E}\right) - K\right). \tag {9} \\ \end{array}
$$

This is the most convenient way of thinking about the time- $t$  value of a payer swap. It is the difference between the prevailing par swap rate and the strike  $K$ , scaled by the annuity factor. The strike  $K$  is the swap rate that the contract was entered into, possibly before  $t$ . Pricing swaps is model-independent.

Clearly then,

$$
V _ {\mathrm {R e c e i v e r S w a p}} (t) = A (t, T _ {S}, T _ {E}) \left(K - \mathrm {S R} (t, T _ {S}, T _ {E})\right).
$$

It is instructive to look at the value of a swap for different levels of rates. $^{12}$  As a payer swap is positioned for higher rates, increasing rates will increase its value. The first order effect for the swap value is coming from the annuity  $A(t,T_S,T_E)$ , which is why this annuity is often called

present value of a basis point (PVBP). However,  $A(t,T_S,T_E)$  itself will decrease slightly as rates increase, thereby reducing the increase in the payer swap.[13] This is causing concavity in the payer swap value. For a receiver swap similar arguments show that the present value of a receiver swap is a convex function of the swap rate.

Upon defining weights

$$
w _ {n} (t) \stackrel {\text {d e f}} {=} \frac {\tau_ {n} P (t , T _ {n + 1})}{\sum_ {k = S} ^ {E - 1} \tau_ {k} P (t , T _ {k + 1})},
$$

the par swap rate can be expressed as

$$
\operatorname {S R} (t, T _ {S}, T _ {E}) = \sum_ {n = S} ^ {E - 1} w _ {n} (t) L _ {n} (t), \tag {10}
$$

and admits the interpretation of a weighted average of forward LIBOR rates, because  $\sum_{n = S}^{E - 1}w_n(t) = 1$ . This result is straightforward as a swap can be replicated by a bundle of forward rate agreements (FRAs) and FRAs are linked to forward rates by the arguments above. We note however, in the case of a EUR swap with different conventions applying to the swap legs, we have  $\sum_{n = S}^{E - 1}w_n(t)\approx 1$ . In Section 2.1 we saw that we are able to express discount bonds in terms of LIBOR rates, albeit only with a choice for the front stub discount bond, $^{14}$

$$
P (t, T _ {n + 1}) = P (t, T _ {q (t)}) \prod_ {i = q (t)} ^ {n} \frac {1}{1 + \tau_ {i} L _ {i} (t)}.
$$

Inserting this expression into (10) and observing that the front stub discount bond cancels, we can also express the par swap rate purely in terms of LIBOR rates:

$$
\operatorname {S R} \left(t, T _ {S}, T _ {E}\right) = \sum_ {n = S} ^ {E - 1} v _ {n} (t) L _ {n} (t) \tag {11}
$$

$$
\text {w h e r e} \quad v _ {n} (t) = \frac {\tau_ {n} \prod_ {i = q (t)} ^ {n} \frac {1}{1 + \tau_ {i} L _ {i} (t)}}{\sum_ {k = S} ^ {E - 1} \tau_ {k} \prod_ {i = q (t)} ^ {k} \frac {1}{1 + \tau_ {i} L _ {i} (t)}}. \tag {12}
$$

The popularity of IRS reflects the fact that almost every corporation, not only a financial institution, bears interest rate risk. IRS allow mitigation of this risk. A corporate that is funded at LIBOR + 50 bps for the next 10 years might enter a 10 year payer IRS and convert its floating obligations into fixed ones. The company would be certain never to pay more than the fixed rate in the swap plus 50 bps in each year for the next 10 years.

# 3.2 Caps & Caplets

# Caplets

A caplet is a call option on a FRA or equivalently a call option on a forward LIBOR rate. The optionality of this derivative allows the holder to benefit from potentially lower rates in the future, while protecting from a rise. The payoff of a caplet at time  $T + \tau$  on a unit notional is

$$
\text {P a y o f f C a p l e t} (T + \tau) = \tau (L (T, T, T + \tau) - K) ^ {+}.
$$

In words, it is the positive part of the difference between the LIBOR rate fixing at time  $T$  and the strike, accrued over the period  $\tau$ . The payoff is fixed in  $T$ , but paid in  $T + \tau$ , corresponding to the standard 'fixed-in-advance/pay-in-arrears' convention of money markets. Thus the value of the caplet at  $T$  is

$$
V _ {\text {C a p l e t}} (T) = P (T, T + \tau) \tau (L (T, T, T + \tau) - K) ^ {+}.
$$

In a similar fashion, at time  $T + \tau$  a floorlet pays on a unit notional

$$
\mathrm {P a y o f f F l o o r l e t} (T + \tau) = \tau (K - L (T, T, T + \tau)) ^ {+},
$$

and its value in  $T$  is

$$
V _ {\mathrm {F l o o r l e t}} (T) = P (T, T + \tau) \tau (K - L (T, T, T + \tau)) ^ {+}.
$$

When discussing the pricing of caplets, we are, as usual, interested in the value at  $t$ . By the risk-neutral pricing formula we can write the value of the caplet at time  $t < T$  as

$$
\begin{array}{l} V _ {\text {C a p l e t}} (t) = \beta (t) \mathbb {E} ^ {Q} \left(\frac {(L (T , T , T + \tau) - K) ^ {+}}{\beta (T + \tau)} \mid \mathcal {F} (t)\right) \\ = \mathbb {E} ^ {Q} \big (e ^ {- \int_ {t} ^ {T + \tau} r (s) d s} (L (T, T, T + \tau) - K) ^ {+} \big | \mathcal {F} (t) \big). \\ \end{array}
$$

This formula is difficult to evaluate as it involves both the stochastic  $L(\cdot)$  as well as the stochastic money market account. Computing this expectation would involve the joint distribution of the former two under  $Q$ . Also, as rates are stochastic,  $e^{-\int_t^{T + \tau}r(s)ds}$  may not be pulled out of the expectation operator. We can remedy this problem by employing the change of numeraire technique and its associated valuation formulae that were introduced in Section 2.3. By switching to the  $Q^{T + \tau}$ -measure, i.e. by using the zero coupon bond maturing at  $T + \tau$  as numeraire, the valuation formula can be significantly simplified to

$$
V _ {\text {C a p l e t}} (t) = P (t, T + \tau) \tau \mathbb {E} ^ {T + \tau} \big ((L (T, T, T + \tau) - K) ^ {+} \big | \mathcal {F} (t) \big).
$$

Now, we are left with one stochastic variable instead of two. The expectation of  $L(T,T,T + \tau)$  under measure  $Q^{T + \tau}$  can now be evaluated. Since the forward LIBOR rate  $L(t,T,T + \tau)$  is a martingale under  $Q^{T + \tau}$  (see equation (4)), we can employ the martingale representation theorem to have

$$
d L (t, T, T + \tau) = c (\cdot) d W ^ {T + \tau}. \tag {13}
$$

In the classical Black model (Black, 1976) the function  $c(\cdot)$  is given by  $c(\cdot) = \sigma L(t,T,T + \tau)$ , i.e. the volatility is proportional to the forward rate level. Given this particular  $c(\cdot)$ , equation (13) can be solved to

$$
L (T, T, T + \tau) = L (t, T, T + \tau) \exp \Bigl \{- \frac {1}{2} \sigma^ {2} (T - t) + \sigma \bigl (W (T) - W (t) \bigr) \Bigr \},
$$

compare to equation (35) in Appendix 6.2.

If  $\sigma$  is deterministic (or even constant as assumed in the Black'76 model), the distribution of  $L(T,T,T + \tau)$  is lognormal and we obtain the famous Black'76 formula for a caplet:

$$
V _ {\mathrm {C a p l e t}} ^ {\mathrm {B l a c k}} (t) = P (t, T + \tau) \tau \left(L (t, T, T + \tau) \Phi (d _ {1}) - K \Phi (d _ {2})\right) \tag {14}
$$

$$
\mathrm {w h e r e} \qquad d _ {1} = \frac {\log \left(\frac {L (t , T , T + \tau)}{K}\right) + \frac {1}{2} \sigma_ {\mathrm {B l a c k}} ^ {2} (T - t)}{\sigma_ {\mathrm {B l a c k}} \sqrt {T - t}}
$$

$$
d _ {2} = \frac {\log \left(\frac {L (t , T , T + \tau)}{K}\right) - \frac {1}{2} \sigma_ {\mathrm {B l a c k}} ^ {2} (T - t)}{\sigma_ {\mathrm {B l a c k}} \sqrt {T - t}} = d _ {1} - \sigma_ {\mathrm {B l a c k}} \sqrt {T - t}.
$$

Proof: See Appendix 6.3.

The floorlet has a Black'76 price of

$$
V _ {\mathrm {F l o o r l e t}} ^ {\mathrm {B l a c k}} (t) = P (t, T + \tau) \tau \left(K \Phi (- d _ {2}) - L (t, T, T + \tau) \Phi (- d _ {1})\right),
$$

where  $d_{1}$  and  $d_{2}$  are defined as in the caplet case.

# Caps

Caplets are not traded in the market, however, caps, which are collections of caplets, are traded liquidly in a number of maturities. A cap is a basket of caplets where for each caplet the same strike  $K$  is applied. We can think of caps as successive calls on forward LIBOR rates. Similarly, floors are traded which are baskets of floorlets. An investor with exposure to floating rate notes in his portfolio is concerned that rates will drop in the future. By entering into a floor the investor can lock in a minimum return while retaining the possibility to benefit from higher LIBOR fixings in the future.

In the EUR market, the market activity is concentrated on caps for which the reference rate is 6M EURIBOR. The specific rate tenor of 6M is in conjunction with the conventions in the EUR swap market (in a EUR plain vanilla swap, the floating leg fixes every 6M). This is because swaps are natural hedging instruments for the delta risk in a cap. Caps are usually spot-starting, i.e. if entered today, the contract starts in two business days.

A ten-year EUR cap has twenty underlying caplets. The market quotes caps in terms of a premium or a single flat volatility. The flat volatility has the property that, when applied to each caplet in the Black'76 pricing formula, it gives the option premium. We give a quote from (Joshi, 2008): "Another curious aspect [...] is that if one calls a market-maker and asks for a price on a cap, he will quote a single vol to be used for all the caplets. However, he will have arrived at this vol, by assigning a different vol to each caplet according to how much he thinks it is worth, converting these individual vols into prices, adding them up, and then converting back into the single constant vol which makes the cap have the summed price."

Being a strip of caplets, a cap is easy to price as it is the sum of the encompassing caplets. We again switch to the forward measure, this time for each caplet individually,

$$
V _ {\mathrm {C a p}} (t) = \sum_ {n = S} ^ {E - 1} \tau_ {n} P (t, T _ {n + 1}) \mathbb {E} ^ {T _ {n + 1}} \big ((L _ {n} (T _ {n}) - K) ^ {+} \big | \mathcal {F} (t) \big).
$$

In the Black model, the cap price reads

$$
V _ {\text {C a p}} ^ {\text {B l a c k}} (t) = \sum_ {n = S} ^ {E - 1} \tau_ {n} P (t, T _ {n + 1}) \left(L _ {n} (t) \Phi \left(d _ {1}\right) - K \Phi \left(d _ {2}\right)\right) \tag {15}
$$

$$
\mathrm {w h e r e} \qquad d _ {1} = \frac {\log \left(\frac {L _ {n} (t)}{K}\right) + \frac {1}{2} \sigma_ {n , \mathrm {B l a c k}} ^ {2} (T _ {n} - t)}{\sigma_ {n , \mathrm {B l a c k}} \sqrt {T _ {n} - t}}
$$

$$
d _ {2} = d _ {1} - \sigma_ {n, \text {B l a c k}} \sqrt {T _ {n} - t}.
$$

Every successive LIBOR rate  $L_{n}(t)$  associated to the  $n$ -th caplet is a martingale under the  $T_{n+1}$  forward measure. Each caplet is thus priced under its 'own measure'. A floor is then valued according to

$$
V _ {\text {F l o o r}} (t) = \sum_ {n = S} ^ {E - 1} \tau_ {n} P (t, T _ {n + 1}) \mathbb {E} ^ {T _ {n + 1}} \left(\left(K - L _ {n} (T _ {n})\right) ^ {+} \mid \mathcal {F} (t)\right),
$$

thus

$$
V _ {\mathrm {F l o o r}} ^ {\mathrm {B l a c k}} (t) = \sum_ {n = S} ^ {E - 1} \tau_ {n} P (t, T _ {n + 1}) \left(K \Phi (- d _ {2}) - L _ {n} (t) \Phi (- d _ {1})\right).
$$

From observing cap quotes for a range of maturities, it is possible to use these quotes to extract the information on caplet volatility and thus forward LIBOR rate volatility. This process called caplet volatility bootstrapping is a non-trivial exercise. Once obtained though, caplet volatilities are fundamental inputs for calibrating an interest rate model such as the LIBOR Market Model (LMM). We will deal with caplet volatility bootstrapping in Section 4.

# 3.3 Digital Caplets

A digital caplet is an option that pays at  $T + \tau$  on a unit notional

$$
\text {P a y o f f D i g i t a l C a p l e t} (T + \tau) = \tau \mathbb {1} _ {\{L (T, T, T + \tau) > K \}}.
$$

Then

$$
V _ {\text {D i g i t a l C a p l e t}} (T) = P (T, T + \tau) \tau \mathbb {1} _ {\{L (T, T, T + \tau) > K \}}.
$$

To find the value at  $t < T$  we again use the  $T$ -forward measure and use the identity

$$
\frac {\partial}{\partial K} (x - K) ^ {+} = - \mathbb {1} _ {\{x > K \}}.
$$

Then,

$$
\begin{array}{l} V _ {\mathrm {D i g i t a l C a p l e t}} (t) = P (t, T + \tau) \tau \mathbb {E} ^ {T + \tau} \Big (\mathbb {1} _ {\{L (T, T, T + \tau) > K \}} | \mathcal {F} (t) \Big) \\ = P (t, T + \tau) \tau \mathbb {E} ^ {T + \tau} \left(- \frac {\partial}{\partial K} \left(L (T, T, T + \tau) - K\right) ^ {+} | \mathcal {F} (t)\right) \\ = - P (t, T + \tau) \tau \frac {\partial}{\partial K} \left(L (t, T, T + \tau) \Phi (d _ {1}) - K \Phi (d _ {2})\right) \\ = - P (t, T + \tau) \tau (- \Phi (d _ {2})) \\ = P (t, T + \tau) \tau \Phi (d _ {2}), \\ \end{array}
$$

where  $d_{2}$  is defined as in the Black'76 formula.

Digital caplets provide more leverage than caplets and are also important building blocks for interest rate exotics. Consider a range accrual note, a product that accrues value if some condition is met. A given rate  $R(t)$ , which could be a fixed rate or a floating rate such as LIBOR, is accrued over the note's lifetime only when a different reference rate is inside a given range (e.g. the reference rate EURIBOR is inside the range [0.01,0.015]). If we let  $R(t)$  be the payment rate associated to the payoff,  $X(t)$  be the rate for which a condition has to be fulfilled and  $l$  and  $u$  are lower and upper bounds, respectively, a range accrual structured note then pays a coupon  $C$  at time  $T + \tau$  according to

$$
C = R (T) \cdot \frac {\sharp \{t \in [ T , T + \tau ] : X (t) \in [ l , u ] \}}{\sharp \{t \in [ T , T + \tau ] \}},
$$

where  $\sharp \{\cdot\}$  denotes the number of days for which the condition is satisfied. Since

$$
\sharp \{t \in [ T, T + \tau ]: X (t) \in [ l, u ] \} = \sum_ {t \in [ T, T + \tau ]} \mathbb {1} _ {\{X (t) \in [ l, u ] \}},
$$

we see that a range accrual note can be decomposed into a series of digital options.

# 3.4 Swaptions

Besides caps/floors, swaptions represent the second class of interest rate options that are liquidly traded and considered vanilla by market participants. As IRS are traded, it is natural that options on them evolved. A swaption is an option to enter an IRS at a future point in time at a prespecified fixed rate (strike). Swaptions are usually of European type; we will drop this attribute in the following. One distinguishes payer swaptions and receiver swaptions. A payer swaption is an option to enter a payer swap, i.e. paying fixed at the prespecified fixed rate and receiving floating (e.g. 6M LIBOR). A receiver swaption in turn is the right but not the obligation to enter a receiver swap, thereby receiving fixed and paying the floating leg. A swaption can be settled physically or in cash, whereby physical settlement means that when the swaption expires (and is ITM), the swap is initiated and thus the buyer and seller of the swaption are now counterparties in the swap. Cash settlement involves the swaption seller to compensate the swaption buyer, given that the payoff is positive.

The underlying swap has to have a finite tenor and thus we need to keep track of both the length of the swaption and the length of the underlying swap. Given our definiton of a tenor structure,

we have swaptions with expires  $\{T_n\}_{n = S}^{E - 1}$  that allow entering a swap starting at  $T_{n}$  and ending at  $T_{E}$ . Notice that with this formulation, the swaption's expiration date coincides with the start of the swap, which is typically the case. The swap tenor is then  $T_{E} - T_{S}$ . Accordingly, a swaption maturing at  $T_{S}$  and the underlying swap ending at  $T_{E}$  is said to be a "  $T_{S}$  into  $T_{E} - T_{S}$ " swaption. Put simpler, a 2 year maturity swaption to enter a 5 year swap, is abbreviated as "2y5y" or "2y-into-5y" swaption.

When the underlying swap is reduced to a single period,  $T_{E} - T_{S} = 1$ , a payer swaption is equivalent to a caplet. We can therefore also think of the above introduced caplets (floorlets) as single-period payer (receiver) swaptions.

The collection of all swaptions with different expiry and swap tenors is called the swaption matrix or swaption grid.

In formalizing swaptions, we will always assume the typical situation in which the expiry time of the swaption is the same time as the start of the swap,  $T_{S}$ . At that time, the payoff in case of a physically settling payer swaption equals

$$
\begin{array}{l} \text {P a y o f f S w a p t i o n} (T _ {S}) = \left(A (T _ {S}, T _ {S}, T _ {E}) (\operatorname {S R} (T _ {S}, T _ {S}, T _ {E}) - K)\right) ^ {+} \\ = A \left(T _ {S}, T _ {S}, T _ {E}\right) \left(\operatorname {S R} \left(T _ {S}, T _ {S}, T _ {E}\right) - K\right) ^ {+}, \tag {16} \\ \end{array}
$$

where we invoked equation (9), evaluated at  $t = T_S$ . From this equation, the interpretation of a payer swaption as a call on the forward swap rate is evident. It is important to note that a swaption payoff is a nonlinear function of the par swap rate (in case of a payer swaption it is concave, in case of a receiver swaption it is convex). This is because the underlying swap exhibits convexity as explained above.

To value a physically settling payer swaption at  $t < T_S$ , we switch to the swap measure introduced in subsection 2.3. Recalling that the forward swap rate is a martingale under this measure denoted by  $Q^A$ , we can price a payer swaption with the change of numeraire technique such that

$$
\frac {V _ {\text {P a y e r S w a p t i o n}} (t)}{A (t , T _ {S} , T _ {E})} = \mathbb {E} ^ {A} \left[ \frac {A \left(T _ {S} , T _ {S} , T _ {E}\right) \left(\operatorname {S R} \left(T _ {S} , T _ {S} , T _ {E}\right) - K\right) ^ {+}}{A \left(T _ {S} , T _ {S} , T _ {E}\right)} \Big | \mathcal {F} (t) \right]
$$

$$
V _ {\text {P a y e r S w a p t i o n}} (t) = A (t, T _ {S}, T _ {E}) \mathbb {E} ^ {A} \left[ \left(\operatorname {S R} \left(T _ {S}, T _ {S}, T _ {E}\right) - K\right) ^ {+} \mid \mathcal {F} (t) \right].
$$

Similar to the case of the Black'76 caplet formula, one may assume the distribution of the forward swap rate to be lognormal. Then we obtain the Black'76 swaption formula

$$
V _ {\text {P a y e r S w a p t i o n}} ^ {\text {B l a c k}} (t) = A \left(t, T _ {S}, T _ {E}\right) \left(\operatorname {S R} \left(t, T _ {S}, T _ {E}\right) \Phi \left(d _ {1}\right) - K \Phi \left(d _ {2}\right)\right) \tag {17}
$$

$$
\mathrm {w h e r e} \qquad d _ {1} = \frac {\log \left(\frac {\mathrm {S R} (t , T _ {S} , T _ {E})}{K}\right) + \frac {1}{2} \sigma_ {\mathrm {S R , B l a c k}} ^ {2} (T - t)}{\sigma_ {\mathrm {S R , B l a c k}} \sqrt {T - t}}
$$

$$
d _ {2} = \frac {\log \left(\frac {\mathrm {S R} (t , T _ {S} , T _ {E})}{K}\right) - \frac {1}{2} \sigma_ {\mathrm {S R , B l a c k}} ^ {2} (T - t)}{\sigma_ {\mathrm {S R , B l a c k}} \sqrt {T - t}} = d _ {1} - \sigma_ {\mathrm {S R , B l a c k}} \sqrt {T - t}.
$$

The proof follows along the lines of the Black'76 caplet formula, so we omit it.

Now, the critical input is the volatility of the forward swap rate,  $\sigma_{\mathrm{SR,Black}}$ . Brokers quote swaption prices in terms of this Black'76 swaption volatility. We introduce the notation  $\sigma_{S,E}^{\mathrm{Black}}\coloneqq \sigma_{\mathrm{SR,Black}}$  to denote the quoted swap rate volatility of a swaption with underlying swap running from  $T_{S}$  to  $T_{E}$ .

Pricing a receiver swaption in the Black'76 framework can be done by invoking the parity result for swaptions,

$$
V _ {\mathrm {P a y e r S w a p t i o n}} (t) \big | _ {K} - V _ {\mathrm {R e c e i v e r S w a p t i o n}} (t) \big | _ {K} = V _ {\mathrm {F o r w a r d S t a r t i n g P a y e r S w a p}} (t) \big | _ {K}.
$$

This means that a forward starting payer swap can be replicated by being long a payer swaption and short a receiver swaption all struck at the same  $K$ , see Table 2.

<table><tr><td rowspan="2">Position</td><td colspan="2">at any payment date</td></tr><tr><td>SR(TS,TS,TE) &gt; K</td><td>SR(TS,TS,TE) &lt; K</td></tr><tr><td>Short Receiver Swaption</td><td>0</td><td>-(τnK - τnLn(t))</td></tr><tr><td>Long Payer Swaption</td><td>τnLn(t) - τnK</td><td>0</td></tr><tr><td>Forward Starting Payer Swap</td><td>τnLn(t) - τnK</td><td>τnLn(t) - τnK</td></tr></table>

Table 2: Parity Result for Swaptions

One subtlety in the preceding table are the different settlement/payment frequencies in a swap. As such, the column header 'at any payment date' is strictly speaking only accurate if both swap legs have the same payment frequency. The general idea is correct though.

Solving the parity equation gives the value of a physically settling receiver swaption as

$$
V _ {\mathrm {R e c e i v e r S w a p t i o n}} ^ {\mathrm {B l a c k}} (t) = A (t, T _ {S}, T _ {E}) \left(K \Phi (- d _ {2}) - \mathrm {S R} (t, T _ {S}, T _ {E}) \Phi (- d _ {1})\right),
$$

where  $d_{1}$  and  $d_{2}$  are defined as above.

In case of a cash-settling payer swaption, the positive part of the present value of the swap at  $T_{S}$  is paid to the swaption buyer. Cash-settling swaptions are often traded to manage vega risk so that market participants are actually not interested in entering a swap at swaption's maturity (Joshi, 2008). Also, since the swaption buyer and seller in a physical setting might end up in a long counterparty relationship, credit risk concerns play a very important role when choosing between the physical and cash variant. If equation (16) is used to determine the cash-settled swaption PV at  $T_{S}$ , this might cause valuation discrepancies between counterparties, because the annuity factor  $A(T_{S},T_{S},T_{E})$  depends on a set of zero coupon bonds, which in turn depend on the stripping algorithm used in yield curve construction. A way out of this settlement problem would be to use a market observable such as the par swap rate itself, i.e.  $\mathrm{SR}(T_S,T_S,T_E)$ , as quoted by a dealer, to discount the swap payments to time  $T_{S}$ . This swap rate is then the argument in the annuity factor and discounts the term  $\left(\mathrm{SR}(T_S,T_S,T_E) - K\right)^+$ . Accordingly, the payoff in case of a cash settling payer swaption reads

$$
\mathrm {P a y o f f S w a p t i o n} ^ {\mathrm {C a s h}} (T _ {S}) = a (\mathrm {S R} (T _ {S})) \Big (\big (\mathrm {S R} (T _ {S}, T _ {S}, T _ {E}) - K) \Big) ^ {+}
$$

$$
\mathrm {w h e r e} \qquad a (x) = \sum_ {n = S} ^ {E - 1} \frac {\tau_ {n}}{\prod_ {i = S} ^ {n} \left(1 + \tau_ {i} x\right)}.
$$

# 4 The LIBOR Market Model

# 4.1 Theory

We are given a tenor structure, i.e. a discretization of time,

$$
0 \leq T _ {0} <   T _ {1} <   \dots <   T _ {N}.
$$

The lognormal LIBOR Market Model assumes a system of stochastic differential equations for the joint evolution of  $N$  forward LIBOR rates under  $\mathbb{P}$  such that<sup>15</sup>

$$
d L _ {i} (t) = \mu_ {i} (t) L _ {i} (t) d t + \sigma_ {i} (t) L _ {i} (t) d W _ {i} (t) \quad i = 0, \dots , N - 1,
$$

where  $W_{i}(t)$  denotes instantaneously correlated Brownian motions with

$$
d W _ {i} (t) d W _ {j} (t) = \rho_ {i j} (t) d t.
$$

We let  $\rho = (\rho_{ij}(t))_{i,j=0,\dots,N-1}$  be the instantaneous correlation matrix. As pointed out by (Fries, 2007), the LMM is a collection of  $N$  Black models which are simultaneously evolved under a unified measure. Compared to the Black model, we have more flexibility since we consider correlated Brownian motions. This correlation will become important when pricing swaptions.

As shown above, the forward LIBOR rate  $L_{i}(t)$  is a martingale in the measure  $Q^{T_{i + 1}}$ , i.e. the measure induced by choosing the numeraire  $P(t,T_{i + 1})$ . Under this  $T_{i + 1}$ -forward measure it holds that

$$
d L _ {i} (t) = \sigma_ {i} (t) L _ {i} (t) d W ^ {i + 1} (t), \tag {18}
$$

where  $W^{i+1} \stackrel{\mathrm{def}}{=} W^{Q_{T_{i+1}}}$  is a Brownian motion which exists in  $Q^{T_{i+1}}$ . Importantly, only one LIBOR rate can be a martingale once we opt for a specific numeraire, while the others are in general not martingales. In order to establish an arbitrage-free framework, we would like all rates to be martingales under a single common measure. We conclude that once a choice for a numeraire is made, the other rates need a drift adjustment to obey the martingale property.

A convenient choice to start with is to choose the discount bond  $P(t,T_N)$  which induces the terminal measure  $Q^{T_N}$ . The arbitrage-free dynamics for the system of LIBOR forward rates then become

$$
d L _ {i} (t) = L _ {i} (t) \left(- \sum_ {j = i + 1} ^ {N - 1} \frac {\tau_ {j} L _ {j} (t)}{1 + \tau_ {j} L _ {j} (t)} \sigma_ {i} (t) \sigma_ {j} (t) \rho_ {i j} (t)\right) d t + \sigma_ {i} (t) L _ {i} (t) d W _ {i} ^ {Q _ {T _ {N}}} (t) \quad i = 0, \dots , N - 1 \tag {19}
$$

so that the drift adjustment is

$$
\mu_ {i} ^ {Q _ {N}} (t) = - \sum_ {j = i + 1} ^ {N - 1} \frac {\tau_ {j} L _ {j} (t)}{1 + \tau_ {j} L _ {j} (t)} \sigma_ {i} (t) \sigma_ {j} (t) \rho_ {i j} (t) \qquad i = 0, \dots , N - 1.
$$

See (Fries, 2007) for a detailed derivation.

We note that for  $i = N - 1$ , the sum  $\sum_{j = i + 1}^{N - 1}(\cdot)$  is empty so that the forward rate  $L_{N - 1}(t)$  has no drift adjustment, thus following the SDE

$$
d L _ {N - 1} (t) = \sigma_ {N - 1} (t) L _ {N - 1} (t) d W ^ {N} (t).
$$

This is consistent with the result that  $L_{i}(t)$  is a martingale under  $Q^{T_{i + 1}}$ ,  $i = 0,\dots ,N - 1$ .

Under the above introduced spot measure  $Q^{B}$ , the arbitrage-free dynamics are

$$
d L _ {i} (t) = L _ {i} (t) \left(\sum_ {j = q (t)} ^ {i} \frac {\tau_ {j} L _ {j} (t)}{1 + \tau_ {j} L _ {j} (t)} \sigma_ {i} (t) \sigma_ {j} (t) \rho_ {i j} (t)\right) d t + \sigma_ {i} (t) L _ {i} (t) d W _ {i} ^ {Q _ {B}} (t) \quad i = 0, \dots , N - 1 \tag {20}
$$

with drift adjustment

$$
\mu_ {i} ^ {Q _ {B}} (t) = \sum_ {j = q (t)} ^ {i} \frac {\tau_ {j} L _ {j} (t)}{1 + \tau_ {j} L _ {j} (t)} \sigma_ {i} (t) \sigma_ {j} (t) \rho_ {i j} (t).
$$

Both under the terminal measure and spot measure, we have forward rate dynamics with correlated Brownian motion

$$
d W _ {i} (t) d W _ {j} (t) = \rho_ {i j} (t) d t.
$$

Introducing this correlation into (19) and (20), we Cholesky-factorize the positive definite instantaneous correlation matrix such that

$$
\rho = A A ^ {\top},
$$

where  $A$  is a lower triangular matrix found with Cholesky. The correlated sample vector

$$
W = \left( \begin{array}{c c c c} W _ {0} & W _ {1} & \ldots & W _ {N - 1} \end{array} \right) ^ {\top}
$$

can be generated by setting

$$
W = A Z
$$

for a vector of independent Gaussian draws  $Z \sim N(0, I)$ . Then for  $i = 0, \dots, N - 1$ , (19) changes to

$$
d L _ {i} (t) = L _ {i} (t) \Bigg (- \sum_ {j = i + 1} ^ {N - 1} \frac {\tau_ {j} L _ {j} (t)}{1 + \tau_ {j} L _ {j} (t)} \sigma_ {i} (t) \sigma_ {j} (t) \rho_ {i j} (t) \Bigg) d t + \sigma_ {i} (t) L _ {i} (t) \sum_ {k = 1} ^ {N - 1} a _ {i k} d Z _ {i} ^ {Q _ {T _ {N}}} (t).
$$

The presentation of the LMM dynamics has been generic so far. Imposing an actual model to this framework is a matter of choosing a functional form for  $\sigma_{i}(t)$  and  $\rho_{ij}(t)$ . Given the high dimensionality of the model (typically  $30 \leq N \leq 60$ ), reasonable specifications have to be made as it is unlikely to obtain, for instance, reliable results for all  $N(N - 1)/2$  correlation parameters simply by calibrating to a finite amount of market prices of liquidly traded derivatives.

Given a specification for the time-dependent instantaneous volatility and correlation of forward rates, the stochastic evolution of all forward rates is completely determined and the LMM is completed, see (Jäckel and Rebonato, 2003).

# 4.2 Calibration of Instantaneous Volatilities

The solution of equation (18) is

$$
L _ {n} (T) = L _ {n} (t) \exp \left\{\int_ {t} ^ {T} \sigma_ {n} (s) d W ^ {T _ {n + 1}} (s) - \frac {1}{2} \int_ {t} ^ {T} \sigma_ {n} ^ {2} (s) d s \right\}.
$$

Proof: See (35).

Carrying out the derivation of the caplet pricing formula under the Black assumption of a lognormally distributed forward rate, however, now in the case of a time-dependent deterministic volatility  $\sigma_{n}(t)$ , the  $n$ -th caplet is then priced according to

$$
V _ {\mathrm {C a p l e t}, \mathrm {L M M}} ^ {\mathrm {B l a c k}} (t) = P (t, T _ {n + 1}) \tau_ {n} \left(L _ {n} (t) \Phi (d _ {1}) - K \Phi (d _ {2})\right) \tag {21}
$$

$$
\mathrm {w h e r e} \qquad d _ {1} = \frac {\log \left(\frac {L _ {n} (t)}{K}\right) + \frac {1}{2} \int_ {t} ^ {T _ {n}} \sigma_ {n} ^ {2} (s) d s}{\sqrt {\int_ {t} ^ {T _ {n}} \sigma_ {n} ^ {2} (s) d s}}
$$

$$
d _ {2} = d _ {1} - \sqrt {\int_ {t} ^ {T _ {n}} \sigma_ {n} ^ {2} (s) d s}.
$$

Comparing (21) to the Black'76 formula (14) we see that the Black volatility and the instantaneous volatility in the LMM framework are related by (here, (14) is evaluated at  $t = 0$  and for a general caplet  $n$ )

$$
\sigma_ {n, \text {B l a c k}} \sqrt {T _ {n}} = \sqrt {\int_ {0} ^ {T _ {n}} \sigma_ {n} ^ {2} (s) d s} \tag {22}
$$

$$
\sigma_ {n, \mathrm {B l a c k}} = \sqrt {\frac {1}{T _ {n}} \int_ {0} ^ {T _ {n}} \sigma_ {n} ^ {2} (s) d s}.
$$

As such, the (observed) Black'76 volatility is the root-mean square of the integrated instantaneous variance.

Given a quote for  $\sigma_{n,\mathrm{Black}}$ , it is not possible to uniquely determine the instantaneous volatility  $\sigma_{n}(t)$ , as there exist plenty functions  $\sigma_{n}(t)$  that would integrate to  $\sigma_{n,\mathrm{Black}}$ . To calibrate a LMM to a caplet market is then a matter of choosing a well-behaved function for the instantaneous volatility. As it turns out below, it is customary to choose a parametric form of  $\sigma_{n}(t)$ .

For the purpose of illustration, assume a given tenor structure,  $0 \leq T_0 < T_1 < \ldots < T_N$ . Since normally in a fixed income derivative, one 'looks' at particular interest rate fixings at a finite amount of times, it is customary to specify  $\sigma_n(t)$  as a piecewise-constant function. Denoting  $\sigma_n(T_n)$  as the instantaneous volatility of the  $n$ -th forward rate  $L_{n}(t)$  that applies to the period  $[T_{n - 1},T_n]$ , we can construct a table displaying the volatility structure of forward rates  $(T_{-1} \stackrel{\mathrm{def}}{=} 0)$  (see Table 3).

<table><tr><td>Vol of \ t ∈</td><td>[0, T0)</td><td>[T0, T1)</td><td>[T1, T2)</td><td>[T2, T3)</td><td>...</td><td>[TN-1, TN)</td></tr><tr><td>L0(t)</td><td>σ0(T0)</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td></tr><tr><td>L1(t)</td><td>σ1(T0)</td><td>σ1(T1)</td><td>0</td><td>0</td><td>0</td><td>0</td></tr><tr><td>L2(t)</td><td>σ2(T0)</td><td>σ2(T1)</td><td>σ2(T2)</td><td>0</td><td>0</td><td>0</td></tr><tr><td>L3(t)</td><td>σ3(T0)</td><td>σ3(T1)</td><td>σ3(T2)</td><td>σ3(T3)</td><td>0</td><td>0</td></tr><tr><td>:</td><td>:</td><td>:</td><td>:</td><td>:</td><td>:</td><td>:</td></tr><tr><td>LN-1(t)</td><td>σN-1(T0)</td><td>σN-1(T1)</td><td>σN-1(T2)</td><td>σN-1(T3)</td><td>...</td><td>σN-1(TN-1)</td></tr></table>

Table 3: Piecewise constant volatility structure

The calibration problem is then overparametrized, because the number of parameters is much bigger than the available number of market quotes at any given point in time.

If we assume stationarity or time-homogeneity of the forward rate volatilites, and introduce  $\sigma(i)$  as the volatility of a forward rate  $i$  periods away from maturity, we can reduce the number of parameters significantly. Under time-homogeneity, Table 3 becomes Table 4, see (Glasserman, 2010).

<table><tr><td>Vol of \ t ∈</td><td>[0, T0)</td><td>[T0, T1)</td><td>[T1, T2)</td><td>[T2, T3)</td><td>...</td><td>[TN-1, TN)</td></tr><tr><td>L0(t)</td><td>σ(1)</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td></tr><tr><td>L1(t)</td><td>σ(2)</td><td>σ(1)</td><td>0</td><td>0</td><td>0</td><td>0</td></tr><tr><td>L2(t)</td><td>σ(3)</td><td>σ(2)</td><td>σ(1)</td><td>0</td><td>0</td><td>0</td></tr><tr><td>L3(t)</td><td>σ(4)</td><td>σ(3)</td><td>σ(2)</td><td>σ(1)</td><td>0</td><td>0</td></tr><tr><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td></tr><tr><td>LN-1(t)</td><td>σ(N-1)</td><td>σ(N-2)</td><td>σ(N-3)</td><td>σ(N-4)</td><td>...</td><td>σ(1)</td></tr></table>

Table 4: Piecewise constant stationary volatility structure

The motivation for imposing time-homogeneity originates from observing term structures of forward rate volatilities as revealed by a cap(let) market. In general, the term structure shape does not change significantly over time. Further, forward rate volatilities are low close to expiry, peak around 1-2 years and then fall off again. The literature summarizes the volatility term-structure as being 'hump-shaped'.

Rebonato gives an explanation of the hump-shape by segmenting the caplet market across three maturities, see (Rebonato, 2002): the first segment is the very short end of the curve, the second is the spectrum ranging from 6M to 12-18M and the third segment is associated with longer maturities. The first segment is directly influenced by monetary policy actions undertaken by central banks. Western central banks nowadays clearly communicate their strategy so that their actions are by and large anticipated, leading to low volatilities at the short end. The second segment is characterized by pronounced hikes relative to the other two. The financial economics explanation centers around the view that market participants continuously assess their expectations of future monetary policy ("How many more rate hikes/cuts are in the pipeline?", "By when will the Fed be done?", (Rebonato, 2002)) and also disagree to a large extent on the monetary course in the intermediate term. Lastly, the third segment is much more affected by structural, long-term changes in expectations related to inflation and real rates/real returns. Thus, these long-term concerns are more or less independent of short-term monetary loosening/tightening and the forward rate volatility is relatively low at the long end of the curve. A good parametric form should then be able to replicate these stylized facts and obey the time-homogeneity restriction.

Rebonato shows that time-homogeneity of the volatility term structure is preserved if  $\sigma_n(t) = g(T_n - t)$  for some function  $g(\cdot)$  so that the volatility is only a function of time to maturity. A widely used parameterization of  $g(\cdot)$  due to Rebonato is

$$
\sigma_ {n} (t) = \left(a + b \left(T _ {n} - t\right)\right) \exp \left\{- c \left(T _ {n} - t\right) \right\} + d. \tag {23}
$$

This specification is sometimes called abcd-formula. Its popularity is amongst other things owed to the fact that it is "sufficiently flexible to allow an initial steep rise followed by a slow decay, and that its square has an analytical integral" (Joshi, 2008). Possessing an analytical integral avoids computationally expensive numerical integration schemes in calibration routines. The relevant analytical integral is in Appendix 6.4.

The reason why an entirely time-homogeneous function might not fit the caplet market perfectly is because a problem such as the following could appear: Since

$$
\sigma_ {n + 1, \text {B l a c k}} ^ {2} T _ {n + 1} = \int_ {t} ^ {T _ {n + 1}} g (u) ^ {2} d u \quad \text {a n d} \quad \sigma_ {n, \text {B l a c k}} ^ {2} T _ {n} = \int_ {t} ^ {T _ {n}} g (u) ^ {2} d u,
$$

then  $\sigma_{n+1,\mathrm{Black}}^2 T_{n+1} - \sigma_{n,\mathrm{Black}}^2 T_n = \int_{T_n}^{T_{n+1}} g(u)^2 du > 0$

must hold because the r.h.s. is a strictly positive quantity, however, this might not be the case for the l.h.s. side for a particular  $n$ .

Let  $\mathcal{A} = \{a,b,c,d\}$ . We choose the abcd-parametric form for the instantaneous forward rate volatility. Calibrating to a caplet market is then a minimization problem of the form

$$
\min  _ {\mathcal {A}} \sum_ {n = 1} ^ {M} \left(\sigma_ {n, \text {B l a c k}} - \sqrt {\frac {1}{T _ {n} - t} \int_ {t} ^ {T _ {n}} \left[ (a + b (T _ {n} - t)) \exp \{- c (T _ {n} - t) \} + d \right] ^ {2} d s}\right) ^ {2}, \tag {24}
$$

where  $M$  is the number of caplets under consideration and optimization is subject to the constraints  $a + d > 0, c > 0, d > 0$ .<sup>16</sup> Fitting all caplet volatilities with the abcd-formula will generally not suffice so that we introduce factors  $k_{n}$  that measure the extent to which time-homogeneity is lost. The  $k_{n}$  are defined such that we amend (23) to hold for

$$
\sigma_ {n} (t) = k _ {n} \left(\left(a + b \left(T _ {n} - t\right)\right) \exp \left\{- c \left(T _ {n} - t\right) \right\} + d\right).
$$

Then, (22) changes to

$$
\sigma_ {n, \mathrm {B l a c k}} \sqrt {T _ {n}} = k _ {n} \sqrt {\int_ {0} ^ {T _ {n}} \sigma_ {n} ^ {2} (s) d s}.
$$

If the time-homogeneous specification is already able to recover market prices really well, then we expect most of the  $k_{n}$  to possess values of approximately 1. Below, we will then attempt to first achieve the best time-homogeneous fit,  $\widehat{\sigma}_n(t)$ , via (24), and then fit perfectly by setting

$$
k _ {n} = \sigma_ {n, \text {B l a c k}} \sqrt {T _ {n}} / \left(\int_ {t} ^ {T _ {n}} \hat {\sigma} _ {n} ^ {2} (s) d s\right) ^ {1 / 2}. \tag {25}
$$

# Calibration Results

As our benchmark dataset we consider the data provided in Table 7.1 in Chapter 7 of (Brigo and Mercurio, 2006) which is repeated in Table 6 and displayed in Figure 3. The data is as of  $16/05/2000$ .  $\sigma_{n,\mathrm{Black}}$  refers to the Black'76 implied volatility of a caplet maturing in  $n$  years,  $n = 1,\ldots ,19$ . The fitted parameters of the abcd-formula are in Table 5.

<table><tr><td>a</td><td>b</td><td>c</td><td>d</td><td>Residual</td></tr><tr><td>0.0065</td><td>0.25</td><td>0.8769</td><td>0.1023</td><td>2.43e-005</td></tr></table>

Table 5: Fitted Parameters of the abcd-formula

We found optimization with lsqnonlin to be the most robust in the sense that the results did not depend on the starting values. MATLAB's fminsearch performed worth in this respect.

<table><tr><td>Caplet</td><td>Volatility</td></tr><tr><td>σ1,Black</td><td>0.1803</td></tr><tr><td>σ2,Black</td><td>0.1915</td></tr><tr><td>σ3,Black</td><td>0.1862</td></tr><tr><td>σ4,Black</td><td>0.1773</td></tr><tr><td>σ5,Black</td><td>0.1679</td></tr><tr><td>σ6,Black</td><td>0.1581</td></tr><tr><td>σ7,Black</td><td>0.1527</td></tr><tr><td>σ8,Black</td><td>0.1487</td></tr><tr><td>σ9,Black</td><td>0.1447</td></tr><tr><td>σ10,Black</td><td>0.1413</td></tr><tr><td>σ11,Black</td><td>0.1380</td></tr><tr><td>σ12,Black</td><td>0.1347</td></tr><tr><td>σ13,Black</td><td>0.1314</td></tr><tr><td>σ14,Black</td><td>0.1281</td></tr><tr><td>σ15,Black</td><td>0.1271</td></tr><tr><td>σ16,Black</td><td>0.1268</td></tr><tr><td>σ17,Black</td><td>0.1265</td></tr><tr><td>σ18,Black</td><td>0.1263</td></tr><tr><td>σ19,Black</td><td>0.1260</td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/02c17963-b213-47e9-b3e1-f36bc5183120/a63d3632b04f100d2a4619ce0061ecc98bdaac94dd64697edc29163e65f262a3.jpg)  
Figure 3: Caplet Volatility Curve

Table 6: Caplet Volatilities

Given the calibrated values for  $a, b, c, d$ , we compare the fit against the market data in Figure 4. Specifically, in this figure we compare the given caplet data against the integrated instantaneous volatility function  $\sqrt{1 / T_n\int_0^{T_n}\hat{\sigma}_n^2(s)ds}$  (with fitted values for  $a, b, c, d$ ). The fit is already good, however not perfect. With the values for  $k_{n}$ , calculated according to (25), the fit is perfect. The

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/02c17963-b213-47e9-b3e1-f36bc5183120/4c8503f3efae5e14dd1c0185fc6f7691e2f177fcd89152ec58ce645e6f086047.jpg)  
Figure 4: Fit of abcd-formula to the caplet market

values for  $k_{n}$  are plotted in Figure 5 and show, as desired, values around 1, indicating that little time-homogeneity is lost. Finally, we plot the instantaneous volatility function  $\widehat{\sigma}_n(t)$  in Figure 6,

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/02c17963-b213-47e9-b3e1-f36bc5183120/4480be9783c2defc406540030ce6f7e019959e7054ece0b526ba6ee5b09c56af.jpg)  
Figure 5: Values of  $k_{n} \forall n$

again, with the fitted values for  $a,b,c,d$ . The pronounced hump-shape motivated above is evident.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/02c17963-b213-47e9-b3e1-f36bc5183120/8f7932f717636bbb7208fa3cd56d10c6a88914fdc8c8d60d612e82eeaf7325a1.jpg)  
Figure 6: Instantaneous Volatility with fitted parameters

Remark: Note that the Black'76 caplet volatilities are for annual data, meaning that they reveal the total volatility of a 12M forward rate. These data have actually been stripped out ouf EUR cap quotes, thus the initially stripped caplet volatility is with respect to 6M forward rates. (Brigo and Mercurio, 2006) apply a procedure to transform 6M forward rate volatility to 12M forward rate volatility which we do not repeat here. We merely note that after transforming the semi-annual caplet volatility to annual caplet volatility, we can use these as if it represents 12M forward rate volatility. As shown in the next section, this will be useful when using Rebonato's swaption volatility formula.

# 4.3 Calibration of Instantaneous Correlations

In Section 4.1, we saw that forward rate correlations are important inputs to the LMM framework. This model feature is included into the LMM because the value of a swaption at maturity is influenced by the joint distribution of forward rates and thus by the correlation amongst them. This can be seen by recalling the swaption payoff in equation (16). Since the underlying in a swaption is a swap rate which in turn is a weighted average of forward rates, we expect the price of a swaption to increase if the forward rates become more correlated. As the swaption market is vanilla, we want to make sure that we use its information and be able to reproduce its prices. To this end, we would also expect that we can imply these correlations out of liquidly traded swaption prices. This approach of implying forward rate correlations is addressed below, but we will first concentrate on the intricacies of obtaining the latter via historical estimation.

# Historical Correlation Estimation

In order to derive historical estimates of the correlation between changes in forward rates, one first needs to derive yield curves for some period of time in the past. Then, forward curves may be calculated off the yield curves and the dependence between forward rate increments may be estimated. In the following, we will present an estimation approach and the obtained numerical results. In terms of notation, we follow (Andersen and Piterbarg, 2010b).

Let  $x$  be a tenor and  $\tau$  some fixed year fraction. Further, let  $l(t,x)$  be a so-called sliding forward rate such that it has a fixed time to maturity as opposed to a fixed time of maturity,

$$
l (t, x) \stackrel {\text {d e f}} {=} L (t, t + x, t + x + \tau).
$$

We define a set of calendar times  $t_0, t_1, \ldots, t_{N_t}$  that will in our application below correspond to weekly dates. For a set of tenors  $x_1, \ldots, x_{N_x}$ , we construct the  $N_x \times N_t$  matrix of observations  $O$  with elements

$$
O _ {i, j} = \frac {l (t _ {j} , x _ {i}) - l (t _ {j - 1} , x _ {i})}{\sqrt {t _ {j} - t _ {j - 1}}}, \qquad i = 1, \ldots , N _ {x}, j = 1, \ldots , N _ {t}.
$$

The denominator  $\sqrt{t_j - t_{j-1}}$  in each element of the observation matrix  $O$  annualizes the variance of forward rate increments. For each date  $t_0, \ldots, t_{N_t}$ , we calibrate a yield curve from (historical) market observable quotes for FRAs, swaps and spot rate fixings. Setting  $\tau = 0.5$ , this allows the computation of sliding forward rates with tenors  $x_1, \ldots, x_{N_x}$  for each calendar date (for the US market  $\tau$  would be chosen 0.25). Specifically, we use  $t_0 = 24/03/2003, \ldots, t_{N_t} = 26/03/2007$  and the set of tenors  $\{x_1, \ldots, x_9\} = \{0.5, 1, 2, 3, 5, 7, 10, 15, 20\}$ . Each column of  $O$  then contains a (sliding) forward rate curve.

If we are willing to ignore small drift terms, the  $N_{x} \times N_{x}$  covariance matrix of  $O$  is equal to

$$
C = N _ {t} ^ {- 1} O O ^ {\top}.
$$

Letting  $c$  be the diagonal matrix defined by

$$
c \stackrel {{\mathrm {d e f}}} {{=}} \left( \begin{array}{c c c c} \sqrt {C _ {1 , 1}} & 0 & \ddots & 0 \\ 0 & \sqrt {C _ {2 , 2}} & \ddots & \ddots \\ \ddots & \ddots & \ddots & 0 \\ 0 & \ddots & 0 & \sqrt {C _ {N _ {x} , N _ {x}}} \end{array} \right),
$$

the standard correlation matrix estimator  $R$  is

$$
R = c ^ {- 1} C c ^ {- 1}.
$$

The  $(i,j)$ -th element of  $R$  is an empirical estimate of the instantaneous LIBOR correlations  $\rho_{ij}$ , given the assumption that the latter are time-homogeneous. The concept of instantaneous correlation is, as any continuous-time model, an idealization of reality so that using weekly sampled data

points is sufficient to be a close proxy. The estimated forward rate correlation matrix is shown in Figure 7.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/02c17963-b213-47e9-b3e1-f36bc5183120/bb9f49e3c9a77b36b6f289a7985a9f288b76c5c775986362ee9faf9ed1fa5f36.jpg)  
Figure 7: Empirical Forward Rate Correlation Matrix

Directly using historically estimated forward LIBOR correlations in a LMM is subject to several problems. We will explain a few of these difficulties. (Lutz, 2011) gives a comprehensive account of all of them. The first problem concerns the estimation period. Obtaining statistically powerful estimates calls for a long estimation horizon, whereas if a LMM is used for pricing and hedging a derivative as of today, then a shorter estimation period would be desirable with little overlay of past market conditions. Second, as the forward curve construction ultimately depends on some curve calibration algorithm with associated interpolation scheme, different interpolation techniques in the yield curve bootstrap cause different correlation estimates. Third, the sample correlation matrix estimator itself has rather poor sampling properties.

Given these arguments, it is common to smooth the empirical correlation matrix by fitting it to a parametric form, usually with the number of effective parameters ranging from 2 to 5. Besides smoothness, opting for a parametric form achieves parsimony by reducing the parameter dimension from  $N_{x}(N_{x} - 1) / 2$  to that of the respective parametric form. Parameterizing a correlation matrix  $\rho$  must ensure that the general properties of correlation matrices are preserved. Following (Lutz, 2011), these are

(A1)  $\rho$  is real and symmetric,  
(A2)  $\rho_{ii} = 1, i = 1, \dots, N_x$  and  $-1 \leq \rho_{ij} \leq 1 \forall i, j$  
(A3)  $\rho$  is positive definite  
(B1)  $i\mapsto \rho_{ij}$ $i\geq j$  is decreasing  
(B2)  $i\mapsto \rho_{i + p,j}$  is increasing for fixed  $p$

While requirements (A1) to (A3) are general, requirements (B1) and (B2) are specific to forward rate correlations in the sense that (B1) requires two forward rates to be more decorrelated as their 'distance' on the curve increases and (B2) specifies that any two forward rates spaced apart by a

fixed integer  $p$  should move more in lockstep at the long end of the curve than at the short end. As such, (B1) and (B2) impose realistic model features that reflect market observations.

We will focus on two parametric forms. The first one is the three-parameter form suggested by (Schoenmakers and Coffey, 2000) and reads

$$
\begin{array}{l} \rho_ {i j} = \exp \left[ - \frac {| j - i |}{N - 1} \left(- \log \rho_ {\infty} + \eta_ {1} \frac {i ^ {2} + j ^ {2} + i j - 3 N i - 3 N j + 3 i + 3 j + 2 N ^ {2} - N - 4}{(N - 2) (N - 3)} \right. \right. \\ \left. - \eta_ {2} \frac {i ^ {2} + j ^ {2} + i j - N i - N j - 3 i - 3 j + 3 N + 2}{(N - 2) (N - 3)} \right], \\ i, j = 1, \dots , N, \quad \eta_ {1} \geq 0, \eta_ {2} \geq 0, 0 \leq \eta_ {1} + \eta_ {2} \leq - \log \rho_ {\infty}, \\ \end{array}
$$

where  $N$  is the number of forward rates under consideration. We will denote this Schoenmakers & Coffey parameterization by SC3 for the fact that it is fully described by the 3 parameters  $\eta_1, \eta_2, \rho_{\infty}$ . The authors show that this form fulfills all of the above mentioned requirements (A1)-(B2).

The second parametric form developed by (Lutz, 2011) depends on five parameters  $\alpha, \beta, \gamma, \delta, \rho_{\infty}$  and is given by

$$
\rho_ {i j} = \rho_ {\infty} + (1 - \rho_ {\infty}) \bigg (\exp \big (- \beta (i ^ {\alpha} + j ^ {\alpha}) \big) + \frac {\vartheta_ {i j}}{\sqrt {\vartheta_ {i i} \vartheta_ {j j}}} \sqrt {\big (1 - \exp \{- 2 \beta i ^ {\alpha} \} \big) \big (1 - \exp \{- 2 \beta j ^ {\alpha} \} \big)} \bigg),
$$

$$
\text {w i t h} \quad \vartheta_ {i j} = \left\{ \begin{array}{l l} 1 & \min  (i, j) = 0, \\ \min  (i, j) & \min  (i, j) > 0,   \xi_ {i} \xi_ {j} = 1, \\ \left(\left(\xi_ {i} \xi_ {j}\right) ^ {\min  (i, j)} - 1\right) / \left(1 - 1 / (\xi_ {i} \xi_ {j})\right) & \min  (i, j) > 0,   \xi_ {i} \xi_ {j} \neq 1, \end{array} \right.
$$

$$
\xi_ {i} = \exp \biggl (- \frac {1}{i} \Bigl (\frac {i - 1}{N - 2} \gamma + \frac {N - 1 - i}{N - 2} \delta \Bigr) \biggr),
$$

$$
\alpha , \beta > 0, \gamma , \delta \in \mathbb {R}, \rho_ {\infty} \in [ 0, 1).
$$

We will denote this form by L5P. (Lutz, 2011) explores the increased flexibility of this form when fitted to historical correlation matrices.

Letting the respective parameter set be  $\mathcal{B}$ , fitting a parametric correlation matrix against an empirical one is a least-squares optimization problem of the form

$$
\min  _ {\mathcal {B}} \sum_ {i = 1} ^ {N _ {x}} \sum_ {j = 1} ^ {N _ {x}} \left(R _ {i j} - \rho_ {i j}\right) ^ {2},
$$

for which Andersen & Piterbarg suggest, for instance, using the Levenberg-Marquardt algorithm (see (Andersen and Piterbarg, 2010b)). In Table 7 we give the results and in Figure 8 and Figure 9 we visualize the resulting smoothed correlation matrices.

<table><tr><td>Form</td><td>α</td><td>β</td><td>γ</td><td>δ</td><td>ρ∞</td><td>η2</td><td>η1</td><td>Residual</td></tr><tr><td>SC3</td><td>-</td><td>-</td><td>-</td><td>-</td><td>0.3058</td><td>0.0264</td><td>0.0244</td><td>0.6553</td></tr><tr><td>L5P</td><td>2.7019</td><td>0.0075</td><td>0.0302</td><td>0.1452</td><td>0.0325</td><td>-</td><td>-</td><td>0.0761</td></tr></table>

Table 7: Fitted Parameters of Smoothed Correlation Matrix

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/02c17963-b213-47e9-b3e1-f36bc5183120/4f6d737ed916acf46c6d1f097e4fef46c865fb8f836d8f519a161774d6cdfa08.jpg)  
Figure 8: SC3-smoothed Empirical Correlation Matrix

The L5P form outperforms the SC3 form, highlighted by lower residual sum of squared errors and a smoothed correlation matrix which looks more reasonable than the one obtained via SC3. In an example given on page 110 in (Lutz, 2011), the SC3 form also cannot adequately control for the 'back end' correlations, a problem that we encounter here as well. The asymptotic correlation parameter  $\rho_{\infty}$  of L5P appears to be quite small though.[17] Further, we note that the results for L5P were sensitive to the starting values. In conclusion however, the fit produced by L5P appears to be very good.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/02c17963-b213-47e9-b3e1-f36bc5183120/bee819129bef76eb56b5558cdf295e7e43153bb3d3b9b82e2944829e78450d66.jpg)  
Figure 9: L5P-smoothed Empirical Correlation Matrix

# Implying Correlation from a Swaption Matrix

The market quotes swaption prices as Black'76 swaption volatilities such that, when inserted into the Black'76 swaption formula, they give the option premium. The assumption of the Black'76 swaption formula was that forward swap rates  $\mathrm{SR}(T_S,T_S,T_E)$  are lognormally distributed. Importantly, forward rates and swap rates cannot be jointly lognormal at the same time.

In essence, the LMM is a forward-rate based model as the underlying state variables are forward LIBOR rates. If we choose one of the discount bonds  $P(t,T_{n + 1})$  as a numeraire, one forward rate will be a martingale, however, the swap rate being a combination of several forward rates, will not be a martingale. Thus in the LMM, formula (17) cannot hold as it was derived assuming

$$
d S R (t, T _ {S}, T _ {E}) = \sigma_ {S, E} (t) S R (t, T _ {S}, T _ {E}) d W ^ {A}, \tag {26}
$$

i.e. that the forward swap rate is a martingale under the measure induced by choosing the annuity factor as numeraire. Here,  $\sigma_{S,E}(t)$  is the instantaneous swap rate volatility and  $dW^{A}$  is a Brownian motion increment in measure  $Q^{A}$ . From equation (26), the lognormal property would follow, but as explained this does not hold. Brigo & Mercurio derive a complex expression for the swap rate dynamics under the  $T$ -forward measure induced by the numeraire  $P(t,T_S)$ , see (Brigo and Mercurio, 2006). We thus conclude that swaption pricing via Black's formula is not possible in the LMM.

Thus, when calibrating to a swaption matrix, we are faced with the problem that there exist no closed form solutions for swaption prices in the LMM. Performing a Monte Carlo simulation to obtain the swaption price is feasible, but for the purposes of calibrating a LMM, doing simulations during a calibration loop is computationally not viable. There exist, however, very good approximate formulae to the swaption volatility which can be directly used to calibrate to a matrix of quoted swaption volatilities.

We will now derive the approximate swaption volatility formula as proposed by Rebonato. As shown above, the swap rate is a linear combination of forward rates,

$$
\operatorname {S R} (t, T _ {S}, T _ {E}) = \sum_ {n = S} ^ {E - 1} w _ {n} (t) L _ {n} (t)
$$

$$
\mathrm {w h e r e} \qquad w _ {n} (t) \stackrel {\mathrm {d e f}} {=} \frac {\tau_ {n} P (t , T _ {n + 1})}{\sum_ {k = S} ^ {E - 1} \tau_ {k} P (t , T _ {k + 1})}.
$$

Applying Itô's product rule, we have

$$
d S R (t, T _ {S}, T _ {E}) = \sum_ {n = S} ^ {E - 1} w _ {n} (t) d L _ {n} (t) + \sum_ {n = S} ^ {E - 1} L _ {n} (t) d w _ {n} (t) + \sum_ {n = S} ^ {E - 1} d w _ {n} (t) d L _ {n} (t).
$$

If we make the assumption that the weights  $w_{n}(t)$  are effectively constant, the swap rate dynamics simplify to

$$
d S R (t, T _ {S}, T _ {E}) = \sum_ {n = S} ^ {E - 1} w _ {n} (t) d L _ {n} (t).
$$

(Jäckel and Rebonato, 2003) give an in-depth treatment of why this simplification is justified. We merely note that this is a very good approximation for parallel moves in the yield curve, which is the prevalent observation when the curve moves.

Given the dynamics of forward rates,  $dL_{i}(t) = \mu_{i}(t)L_{i}(t)dt + \sigma_{i}(t)L_{i}(t)dW_{i}(t)$  with correlated Brownian motion, we compute the quadratic variation of the swap rate as

$$
\begin{array}{l} d \left\langle S R (\cdot), S R (\cdot) \right\rangle = \sum_ {i = S} ^ {E - 1} \sum_ {j = S} ^ {E - 1} w _ {i} (t) w _ {j} (t) d L _ {i} (t) d L _ {j} (t) \\ = \sum_ {i, j = S} ^ {E - 1} w _ {i} (t) w _ {j} (t) L _ {i} (t) L _ {j} (t) \sigma_ {i} (t) \sigma_ {j} (t) \rho_ {i j} d t. \\ \end{array}
$$

In the preceding equation, we used the Brownian motion multiplication rules  $dt \, dt = 0$  and  $dt \, dW(t) = 0$ , both of which are known to be only shorthand expressions for an appropriate sum with limit zero, see (Shreve, 2004).

Here, we also imposed time-homogeneous correlations. If the swap rate follows an Itô diffusion process as in equation (2) with  $\Delta(t) =: SR(t, T_S, T_E) \sigma_{S,E}(t)$ , where  $\sigma_{S,E}(t)$  is the instantaneous swap rate volatility, then we invoke the differential version of Definition 2.1 to have that

$$
\begin{array}{l} d \langle S R (\cdot), S R (\cdot) \rangle = \Delta^ {2} (t) d t = S R (t, T _ {S}, T _ {E}) ^ {2} \sigma_ {S, E} ^ {2} (t) d t \\ \Leftrightarrow \quad \sigma_ {S, E} ^ {2} (t) = \frac {1}{S R \left(t , T _ {S} , T _ {E}\right) ^ {2}} \sum_ {i, j = S} ^ {E - 1} w _ {i} (t) w _ {j} (t) L _ {i} (t) L _ {j} (t) \sigma_ {i} (t) \sigma_ {j} (t) \rho_ {i j} \tag {27} \\ \end{array}
$$

Since the weights  $w_{n}(t)$  and the forward rates  $L_{n}(t)$  are stochastic, we have obtained a stochastic instantaneous swap rate volatility, even if we start with a deterministic forward rate volatility. Assume that we would like to use (27) to obtain the Black'76 swaption price. This necessitates to equate the total Black volatility with its integrated swap-rate instantaneous variance such that

$$
(\sigma_ {S, E} ^ {\mathrm {B l a c k}}) ^ {2} \cdot T _ {S} = \int_ {0} ^ {T _ {S}} \sigma_ {S, E} ^ {2} (s) d s.
$$

(Jäckel and Rebonato, 2003) conclude that for any future realization of forward rates and corresponding weights, there is a different instantaneous swap rate volatility so that the r.h.s. is path-dependent integral that cannot be equated with the path-independent l.h.s.

To proceed, we freeze the stochastic quantities at their time-0 values. This again is a good approximation for parallel yield curve moves. Then,

$$
(\sigma_ {S, E} ^ {\mathrm {B l a c k}}) ^ {2} \cdot T _ {S} = \int_ {0} ^ {T _ {S}} \frac {1}{S R (0 , T _ {S} , T _ {E}) ^ {2}} \sum_ {i, j = S} ^ {E - 1} w _ {i} (0) w _ {j} (0) L _ {i} (0) L _ {j} (0) \sigma_ {i} (s) \sigma_ {j} (s) \rho_ {i j} d s.
$$

Rearranging gives Rebonato's approximated swaption volatility formula:

$$
\sigma_ {S, E} ^ {\text {B l a c k , a p p r o x}} = \sqrt {\sum_ {i , j = S} ^ {E - 1} \frac {w _ {i} (0) w _ {j} (0) L _ {i} (0) L _ {j} (0) \rho_ {i j}}{\operatorname {S R} \left(0 , T _ {S} , T _ {E}\right) ^ {2}} \frac {1}{T _ {S}} \int_ {0} ^ {T _ {S}} \sigma_ {i} (s) \sigma_ {j} (s) d s} \tag {28}
$$

In the literature, this is the most common form of Rebonato's approximated swaption volatility. It assumes however that both legs of the underlying swap share the same conventions. (Schoenmakers, 2002) derives a general form accounting for different swap leg conventions. The expression gets much more convoluted then.

We consider the swaption volatilities from Section 6.17 of (Brigo and Mercurio, 2006) which are displayed in Figure 10 and repeated in Table 8.

<table><tr><td>TS\ (TE-TS)</td><td>1Y</td><td>2Y</td><td>3Y</td><td>4Y</td><td>5Y</td><td>6Y</td><td>7Y</td><td>8Y</td><td>9Y</td><td>10 Y</td></tr><tr><td>1Y</td><td>16.4</td><td>15.8</td><td>14.6</td><td>13.8</td><td>13.3</td><td>12.9</td><td>12.6</td><td>12.3</td><td>12.0</td><td>11.7</td></tr><tr><td>2Y</td><td>17.7</td><td>15.6</td><td>14.1</td><td>13.1</td><td>12.7</td><td>12.4</td><td>12.2</td><td>11.9</td><td>11.7</td><td>11.4</td></tr><tr><td>3Y</td><td>17.6</td><td>15.5</td><td>13.9</td><td>12.7</td><td>12.3</td><td>12.1</td><td>11.9</td><td>11.7</td><td>11.5</td><td>11.3</td></tr><tr><td>4Y</td><td>16.9</td><td>14.6</td><td>12.9</td><td>11.9</td><td>11.6</td><td>11.4</td><td>11.3</td><td>11.1</td><td>11.0</td><td>10.8</td></tr><tr><td>5Y</td><td>15.8</td><td>13.9</td><td>12.4</td><td>11.5</td><td>11.1</td><td>10.9</td><td>10.8</td><td>10.7</td><td>10.5</td><td>10.4</td></tr><tr><td>7Y</td><td>14.5</td><td>12.9</td><td>11.6</td><td>10.8</td><td>10.4</td><td>10.3</td><td>10.1</td><td>9.9</td><td>9.8</td><td>9.6</td></tr><tr><td>10Y</td><td>13.5</td><td>11.5</td><td>10.4</td><td>9.8</td><td>9.4</td><td>9.3</td><td>9.1</td><td>8.8</td><td>8.6</td><td>8.4</td></tr></table>

Table 8: ATM Swaption implied volatilities, mid quotes as of 16/05/2000

In the rows of Table 8, we find the maturities of the swaptions and in the columns the respective tenors of the underlying swaps. We wish to imply the instantaneous forward rate correlation from

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/02c17963-b213-47e9-b3e1-f36bc5183120/4b64b35ce78134ecb5b081f944f664eec9bffa7d0387eae36241bf94a7df2096.jpg)  
Figure 10: ATM Swaption matrix as of 16/05/2000

this swaption matrix. Since (Brigo and Mercurio, 2006) do not provide discount factors for  $16/05/2000$ , we use (11) to compute weights and swap rates. The authors also provide forward rates, which we do not repeat here.

Irrespective of whether instantaneous correlations are estimated from historical data or inferred from market prices, one uses a flexible parametric form which achieves smoothness and parsimony. Based on the above results, we choose Lutz' 5P form.

We calibrate only to the swaption matrix and minimize the objective function

$$
\min _ {\mathcal {A}, \mathcal {B}} \sum_ {i = 1} ^ {M} \left(\sigma_ {i, S, E} ^ {\mathrm {B l a c k}} - \sigma_ {i, S, E} ^ {\mathrm {B l a c k , a p p r o x}}\right) ^ {2}
$$

where

-  $M$  is the number of swaptions in the swaption matrix  
-  $\sigma_{i,S,E}^{\mathrm{Black}}$  is the  $i$ -th quoted implied swaption volatility for a swap from  $T_S$  to  $T_E$  
-  $\sigma_{i,S,E}^{\mathrm{Black, approx}}$  is given by Rebonato's swaption volatility formula.

We obtain the following parameters:

<table><tr><td>a</td><td>b</td><td>c</td><td>d</td><td>α</td><td>β</td><td>γ</td><td>δ</td><td>ρ∞</td></tr><tr><td>0.0917</td><td>0.0834</td><td>0.5903</td><td>0.0772</td><td>2.9851</td><td>0.3294</td><td>-0.4898</td><td>-0.4971</td><td>0.6282</td></tr></table>

Table 9: Calibration to Swaption Matrix: Fitted Parameters

Plotting the instantaneous correlation matrix with the calibrated parameters for  $\alpha$ ,  $\beta$ ,  $\gamma$ ,  $\delta$  and  $\rho_{\infty}$  yields Figure 11.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/02c17963-b213-47e9-b3e1-f36bc5183120/56794351dc4bd1ea7f552854b8059bf6b02fcf5b37edbe1c0be41e78042e38d2.jpg)  
Figure 11: Fitted Instantaneous Forward Rate Correlation Matrix

Interestingly, when plotting the instantaneous volatility function with calibrated parameters  $a, b, c, d$  in Figure 12, we obtain the same hump shape feature that was already present after calibration of the caplet market. In a prototypical example, (Rebonato, 2002) calibrates the parameters  $a, b, c, d$  from a swaption matrix, albeit with fixed correlation parameters, and also obtains the aforementioned hump shape.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/02c17963-b213-47e9-b3e1-f36bc5183120/b4290f61c2f8c65063ba11c069f69fc3848e89d3b8160efd03792330c3f6d3b5.jpg)  
Figure 12: Fitted Instantaneous Volatility Function after Calibration to the Swaption Matrix

We end this subsection with a discussion of possible problems arising from the preceding approach of calibrating instantaneous correlations. Generally, inferring instantaneous correlations from actively traded swaptions is desirable as they reflect current market conditions, thus not suffering

from the backward-looking nature of historically estimated correlations. (Fries, 2007) argues relatively strongly against using historically estimated correlations, noting that, in the context of risk-neutral valuation, "if the model did not replicate current market prices, then it would not be possible to buy the replication portfolio of a derivative at the model price of the derivative. The model price would inevitably be wrong."

There are however, also problems with implying correlations from the market. One such general problem is that swaption prices depend on forward rate correlation and volatility. There is no liquidly traded fixed income derivative that solely depends on correlation, as opposed to caplets, which solely depend on volatility.

Another problem concerns the relationship between instantaneous and terminal correlations. Instantaneous correlations are defined as

$$
\rho_ {i j} = \frac {\langle d L _ {i} (t) , d L _ {j} (t) \rangle}{\sqrt {\langle d L _ {i} (t) \rangle} \sqrt {\langle d L _ {j} (t) \rangle}}.
$$

For terminal correlations, (Rebonato, 1998) shows that the appropriate quantity summarizing the amount of decorrelation between two stochastic variables from time 0 to time  $T$  is

$$
\bar {\rho} _ {i j} = \frac {\int_ {0} ^ {T} \sigma_ {i} (s) \sigma_ {j} (s) \rho_ {i j} (s) d s}{\sqrt {\int_ {0} ^ {T} \sigma_ {i} ^ {2} (s) d s} \sqrt {\int_ {0} ^ {T} \sigma_ {j} ^ {2} (s) d s}}.
$$

or

$$
\bar {\rho} _ {i j} = \rho_ {i j} \frac {\int_ {0} ^ {T} \sigma_ {i} (s) \sigma_ {j} (s) d s}{\sqrt {\int_ {0} ^ {T} \sigma_ {i} ^ {2} (s) d s} \sqrt {\int_ {0} ^ {T} \sigma_ {j} ^ {2} (s) d s}}.
$$

in the case of time-homogeneous instantaneous correlations. From this equation, we see that the terminal correlation not only depends on the instantaneous correlation  $\rho_{ij}$  but also on the instantaneous volatilities. Hence, even for perfectly instantaneously correlated random variables,  $\rho_{ij} = 1$ , terminal decorrelation could be achieved by time-dependent instantaneous volatilities.

Swaption payoffs depend on the terminal correlation between several different forward rates which leads (Brigo and Mercurio, 2006) to the conclusion that swaption volatilities as given by formula (28) are more directly linked with terminal correlations rather than with instantaneous ones. This makes it hard to obtain stable calibration results for instantaneous correlations.

In the same context, for swaption prices (Rebonato, 2002) finds an "almost total lack of dependence on the shape of the correlation function".

We further note that very sophisticated approaches emerged which imply correlation parameters out of CMS spread options, a derivative that has become relatively liquid and shows a much more pronounced sensitivity towards forward rate correlations, see (Lutz, 2011) for details and applications. These methods are beyond the scope of this thesis.

# 4.4 Bootstrapping Caplet Volatilities

We already pointed to the problem that, although caplet quotes reveal the total volatility of forward rates and are fundamental inputs for LMM calibration, in the market only caps, portfolios of caplets, are traded. Thus, we first need to bootstrap the caplet volatilities given the market quotes of caps. For this, consider the cap quotes listed in Table 10 and the associated cap volatility term structure in Figure 13, obtained from ICAP via Bloomberg. These are ATM flat volatility quotes from 21/12/2011. The concept of ATM is subtle here, because each cap is a combination of several caplets with each caplet having a different underlying forward rate. Thus, from the outset, it is unclear which forward rate sets the ATM strike.

The market convention is that a cap is said to be ATM if the strike is equal to the forward swap rate of the maturity-equivalent swap, i.e. a cap starting at  $T_{S}$  and ending at  $T_{E}$  is ATM if

$$
\mathrm {S R} (t, T _ {S}, T _ {E}) = K ^ {A T M}.
$$

We recall that the flat volatility is the single quantity which, when inserted into each Black'76 caplet formula, gives the cap premium (see equation (15)). The cap premia in the third column of Table 10 were calculated in this fashion with each strike  $K_{j}^{ATM}$  set according to be the forward swap rate.

<table><tr><td>Cap Maturity</td><td>Flat Volatility</td><td>Premium (bps)</td><td>Residual (bps)</td><td>kn</td></tr><tr><td>1Y</td><td>0.5401</td><td>16</td><td>2</td><td>0.8334</td></tr><tr><td>18M</td><td>0.5841</td><td>33</td><td>3</td><td>0.6527</td></tr><tr><td>2Y</td><td>0.6433</td><td>56</td><td>8</td><td>0.7886</td></tr><tr><td>3Y</td><td>0.5699</td><td>100</td><td>6</td><td>0.4545</td></tr><tr><td>4Y</td><td>0.5508</td><td>172</td><td>12</td><td>0.7130</td></tr><tr><td>5Y</td><td>0.5127</td><td>266</td><td>14</td><td>0.8391</td></tr><tr><td>6Y</td><td>0.4738</td><td>370</td><td>12</td><td>0.8481</td></tr><tr><td>7Y</td><td>0.4434</td><td>480</td><td>10</td><td>1.0192</td></tr><tr><td>8Y</td><td>0.4186</td><td>581</td><td>7</td><td>0.8483</td></tr><tr><td>9Y</td><td>0.3979</td><td>687</td><td>3</td><td>0.9989</td></tr><tr><td>10Y</td><td>0.3794</td><td>779</td><td>5</td><td>0.8807</td></tr><tr><td>12Y</td><td>0.3508</td><td>961</td><td>19</td><td>-</td></tr><tr><td>15Y</td><td>0.3277</td><td>1227</td><td>28</td><td>-</td></tr><tr><td>20Y</td><td>0.3191</td><td>1617</td><td>21</td><td>-</td></tr></table>

Table 10: ATM EUR Caps, 21/12/2011

We could attempt to back out caplet volatilities from cap quotes and then apply the methods discussed in Section 4.2 to get the optimal parameters  $a, b, c, d$ . (Hull and White, 2000) proposed the following scheme: given a range of flat cap volatilities, one could interpolate them to obtain flat cap volatilities for all maturities. Assuming one is interested in the volatility of the caplet maturing in 2.5 years, one may subtract the calculated 2.5-year cap price from the 3-year cap price. The 2.5-year cap is not traded but could in principle be computed with the interpolated flat volatilities. The resulting price of the 2.5-year caplet can be inverted with Newton-Raphson to get the appropriate volatility. Andersen & Piterbarg discuss possible problems with this approach, especially when this methodology is applied to caps with different expiry which are quoted in a different strike range, see (Andersen and Piterbarg, 2010c) for details.

We will consider a different approach described by (Andersen and Piterbarg, 2010c) and (West, 2010). Let us fix notation by defining the set of cap maturities as

$$
I = \left\{1 Y, 1 8 M, 2 Y, \ldots , 1 0 Y, 1 2 Y, 1 5 Y, 2 0 Y \right\}.
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/02c17963-b213-47e9-b3e1-f36bc5183120/2cc6c4f3d33dd4dcce281fe19dcf5943465ea28a702fe0e3a41f7b197ebc0798.jpg)  
Figure 13: ATM Cap Flat Vols, 21/12/2011

To each  $i\in I$ , we associate an ATM strike  $K_{i}$  (the  $K_{i}$  is the appropriate forward swap rate). The price (premium) of the  $i$ -th cap with strike  $K_{i}$  is denoted by  $V_{i}^{\mathrm{Cap}}$ ,  $i\in I$ . Let us further denote the price of a  $n$ -th caplet with strike  $K$  and volatility parameter  $\sigma_n(t)$  as

$$
V _ {n} ^ {\mathrm {C a p l e t}} (K; \sigma_ {n} (t)).
$$

Let  $n_i$ ,  $n_1 < \ldots < n_I$  be the number of caplets in the  $i$ -th cap. We proceed to define the objective function

$$
\mathcal {I} = \sum_ {i = 1} ^ {I} \left(\underbrace {\sum_ {n = 1} ^ {n _ {i}} V _ {n} ^ {\text {C a p l e t}} \left(K _ {i} ; \sigma_ {n} (t)\right)} _ {\text {C a p m o d e l p r i c e}} - V _ {i} ^ {\text {C a p}}\right) ^ {2}. \tag {29}
$$

For a given set of model parameters  $\mathcal{A} = \{a,b,c,d\}$ ,  $\mathcal{I}$  thus measures the amount of mispricing between cap premia quoted in the market and cap model premia, where the latter are sums of caplet prices calculated in the Black'76 model. In (29),  $\sigma_{n}(t)$  will again obey the abcd-formula. Compared to the approach of Hull & White, we circumvent the caplet volatility bootstrap by directly implying the parameters  $a,b,c,d$  from the cap market. As such, we superimpose the caplet pricing condition

$$
\sigma_ {n, \mathrm {B l a c k}} = \sqrt {\frac {1}{T _ {n}} \int_ {0} ^ {T _ {n}} \sigma_ {n} ^ {2} (s) d s}
$$

to hold equally well if we consider caps as being a sum of caplet prices.

We minimize  $\mathcal{I}$  such that

$$
\min  _ {\mathcal {A}} \mathcal {I} \quad \text {s u b j e c t t o} a + d > 0, c > 0, d > 0.
$$

We summarize the implementation.

# Algorithm

- Determine the caplet volatilities using  $\sqrt{\frac{1}{T_n} \int_0^{T_n} \sigma_n^2(s) ds}$  with Rebonato's abcd-formula for  $\sigma_n(t)$  for some starting values for  $a, b, c, d$

Find the model Black'76 caplet LMM prices using equation (21)  
Find the model Black'76 cap LMM prices by summing up all revelant caplets  
- Minimize objective function (29) by applying this scheme for all caps

We state the calibrated parameters in Table 11 and plot the derived caplet volatilities in Figure 14. We note that it was necessary to enforce the constraints  $a + d > 0, c > 0, d > 0$ .

<table><tr><td>a</td><td>b</td><td>c</td><td>d</td></tr><tr><td>-0.0716</td><td>1.8659</td><td>1.3240</td><td>0.1619</td></tr></table>

Table 11: Fitted Parameters  $a,b,c,d$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/02c17963-b213-47e9-b3e1-f36bc5183120/45d5564e88d91648f79f0e18ff9b599256ea42841c51bfdcf20cfdfc64cb2e84.jpg)  
Figure 14: Calibrated Caplet Volatilities 21/12/2011

The figure again points to the hump-shape in caplet volatilities. The high volatility level reflects the high degree of uncertainty at that time. If we interpret the flat cap volatility as a weighted average of the encompassing caplet volatilities, the observed rise at the short end appears reasonable. In the last column of Table 10 we give the absolute calibration errors between cap market premia and cap model premia in basis points, i.e. in units of  $1 / 100\%$ . Finally, in Figure 15 we present the obtained instantaneous volatility function.

Since the fit to the cap market was not optimal, we now attempt to derive the values for  $k_{n}$  such that we price the caps exactly. This is almost equivalent to the procedure in subsection 4.2, except that we do not have Black'76 caplet volatilities.

We found the optimal parameter set  $\mathcal{A} = \{a, b, c, d\}$  and now re-specify the model to include the factors  $k_{n}$ . Following (West, 2010), we assume  $k_{n}$  to be a piecewise constant function that changes its value for each cap. Under this assumption, the  $k_{n}$  are found uniquely.

Starting with the 1Y-cap, we calculate the prices of the two caplets, sum them to obtain the model price of the cap and vary  $k_{1}$  until model and market prices match. This could be done for all subsequent caps, thus one root search for each cap. We carried this out until the 10Y-cap as we need these values in the subsequent Monte Carlo simulation. The parameters are in Table 10.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/02c17963-b213-47e9-b3e1-f36bc5183120/63b7fdadd04f181a5d99f132ec7524efb09e46e90c47a099fb049146b5e3a58a.jpg)  
Figure 15: Instantaneous Volatility Function, 21/12/2011

# 4.5 Monte Carlo Simulation

In this subsection, we use the calibrated parameters  $a,b,c,d$  from 21/12/2011 in a Monte Carlo simulation. We are given the general dynamics of the LMM under the spot measure

$$
d L _ {i} (t) = L _ {i} (t) \left(\sum_ {j = q (t)} ^ {i} \frac {\tau_ {j} L _ {j} (t)}{1 + \tau_ {j} L _ {j} (t)} \sigma_ {i} (t) \sigma_ {j} (t) \rho_ {i j} (t)\right) d t + \sigma_ {i} (t) L _ {i} (t) d W _ {i} ^ {Q _ {B}} (t) \quad i = 0, \dots , N - 1. \tag {30}
$$

Simulating the vector of forward rates from  $t$  to  $T$  cannot be done in one step because the transition density is unknown. The exception to this assertion is when we only evolve one forward rate. Then we could choose the discount bond maturing at the payment time of the forward rate as numeraire, obtain a lognormal transition density and simulate directly to  $T$ . In the case of simulating the joint evolution of forward rates, we need to discretize time from  $t$  to  $T$  according to the timeline

$$
t = t _ {0} <   t _ {1} <   \dots <   t _ {n} = T.
$$

As pointed out e.g. by (Glasserman, 2010) or (Andersen and Piterbarg, 2010b), quite often one takes  $t_i = T_i$ , so that we evolve the forward rate vector directly from one tenor date to the next. A first-order Euler scheme discretizing (30) and evolving all forward rates a single step  $\Delta$  forward in time is given by

$$
\widehat {L} _ {i} (t + \Delta) = \widehat {L} _ {i} (t) + \mu_ {i} (\cdot) \widehat {L} _ {i} (t) \Delta + \widehat {L} _ {i} (t) \sqrt {\Delta} \sigma_ {i} Z \qquad i = 0, \ldots , N - 1
$$

$$
\mathrm {w i t h} \mu_ {i} (\cdot) = \sum_ {j = q (t)} ^ {i} \frac {\tau_ {j} \widehat {L} _ {j} (t)}{1 + \tau_ {j} \widehat {L} _ {j} (t)} \sigma_ {i} (t) \sigma_ {j} (t) \rho_ {i j} (t) \quad \mathrm {a n d} Z \sim N (0, 1).
$$

We use hats to denote discretized variables. A log Euler scheme which preserves positivity of all rates, after application of Ito's lemma, reads

$$
\widehat {L} _ {i} (t + \Delta) = \widehat {L} _ {i} (t) \cdot \exp \left\{\left(\mu_ {i} (\cdot) - \frac {1}{2} \sigma_ {i} ^ {2}\right) \Delta + \sqrt {\Delta} \sigma_ {i} Z \right\} \quad i = 0, \dots , N - 1. \tag {31}
$$

Repeated application of the single time step gives rise to a particular path of the forward curve evolution. Given that we simulate the dynamics under the spot measure, for pricing purposes we need to evolve the spot numeraire as well.

The initial forward rates are given in Table 12. These were calculated from a stripped yield curve on 21/12/2011.

<table><tr><td colspan="2">Forward Rates</td></tr><tr><td>L(0,0.5,1)</td><td>0.0129</td></tr><tr><td>L(0,1,1.5)</td><td>0.0121</td></tr><tr><td>L(0,1.5,2)</td><td>0.0131</td></tr><tr><td>L(0,2,2.5)</td><td>0.0146</td></tr><tr><td>L(0,2.5,3)</td><td>0.0168</td></tr><tr><td>L(0,3,3.5)</td><td>0.0198</td></tr><tr><td>L(0,3.5,4)</td><td>0.0227</td></tr><tr><td>L(0,4,4.5)</td><td>0.0251</td></tr><tr><td>L(0,4.5,5)</td><td>0.0273</td></tr><tr><td>L(0,5,5.5)</td><td>0.0290</td></tr><tr><td>L(0,5.5,6)</td><td>0.0305</td></tr><tr><td>L(0,6,6.5)</td><td>0.0320</td></tr><tr><td>L(0,6.5,7)</td><td>0.0326</td></tr><tr><td>L(0,7,7.5)</td><td>0.0316</td></tr><tr><td>L(0,7.5,8)</td><td>0.0318</td></tr><tr><td>L(0,8,8.5)</td><td>0.0338</td></tr><tr><td>L(0,8.5,9)</td><td>0.0342</td></tr><tr><td>L(0,9,9.5)</td><td>0.0328</td></tr><tr><td>L(0,9.5,10)</td><td>0.0325</td></tr></table>

Table 12: Initial Forward Rates, 21/12/2011

We use an equidistant time line  $t_0 = 0.5, t_1 = 1, \ldots$  meaning that we choose  $\Delta = 0.5$ , hence simulating from one tenor date to the next. For each time step, one of the forward rates will reset, thus not being 'alive' anymore as time progresses.

If the derivative payoff is fixed at  $T_{n}$  but paid at  $T_{n + 1}$ , we simulate to time  $T_{n}$  and calculate the deflated payoff

$$
g \big (\widehat {L} (T _ {n}) \big) \cdot \prod_ {j = 0} ^ {n} \frac {1}{1 + \tau_ {j} \widehat {L} (T _ {j})}
$$

for some payoff function  $g(\cdot)$  and the simulated spot numeraire process  $B(T_{n}) = \prod_{j = 0}^{n}(1 + \tau_{j}\widehat{L} (T_{j}))$ . A Monte Carlo price at time  $t$  is then given by

$$
V _ {\mathrm {M C}} (T _ {n}) = B (t) \frac {1}{M} \sum_ {k = 1} ^ {M} \frac {g _ {(k)} (\cdot)}{B _ {(k)} (\cdot)}
$$

for sample size  $M$

Below, we priced a 10-year cap as of 21/12/2011, so that each caplet payoff is calculated according to

$$
0. 5 \cdot \left(\widehat {L} _ {i} \left(T _ {i}\right) - K\right) ^ {+} \quad i = 0. 5, 1, \dots , 9. 5.
$$

We omit the first caplet and calculate 19 caplet prices for each iteration.

The simulation is supposed to be illustrative only, as we used a full-blown approach according to equation (31), which is actually not necessarily needed as we could have evolved in a single step as well.

We used the calibrated parameters  $a, b, c, d$  from Table 11 along with the scaling factors  $k_{n}$  from Table 10. In addition, for the correlation parameters, we simply took the historically estimated correlation parameters. Figure 16 gives the result of this Monte Carlo simulation. $^{18}$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/02c17963-b213-47e9-b3e1-f36bc5183120/875ba1d0242c234bcf56126c2e44b519d54782e385aafa8b0f8cfb08fbfba224.jpg)  
Figure 16: Monte Carlo Simulation of 10-yr cap

# 5 Summary

We considered the LMM modeling approach in fixed income derivatives markets. We presented a viable approach to bootstrap a yield curve. (Hagan and West, 2006) remark that the above applied Hermite spline interpolation is frequently supplied by software vendors. The usage of Rebonato's abcd-formula remains very popular and we applied this function to market data from 2000 and, in the process of a caplet volatility calibration, to data from 2011. Furthermore, we justified the usage of Lutz' flexible five parameter correlation parameterization by examining its fitting performance against an empirically estimated forward rate correlation matrix. We derived Rebonato's approximated swaption volatility and applied it to a swaption matrix. Finally, we carried out a Monte Carlo simulation with a log Euler scheme.

Given today's abundance of stochastic volatility LMM extensions, the lognormal approach admittedly lacks sophistication. Also, there exist better simulation schemes such as the Predictor-Corrector method developed by (Hunter et al., 2001). Further, as already mentioned above, calibration approaches of the latest generation include CMS spread options into the set of calibration instruments. We also did not cover rank reductions of correlation matrices, an advanced topic that is discussed in any of (Andersen and Piterbarg, 2010b), (Lutz, 2011) or (Pietersz and Groenen, 2004).

# 6 Appendix

# 6.1 A.1

For the proof that the forward LIBOR rate  $L(t,T,T + \tau)$  is a martingale under  $Q^{T + \tau}$  we need the following Proposition, for which we also provide the proof. We follow (Björk, 2009) while changing his notation to the one we used so far.

Proposition 6.1. Assume that the normalized price process  $\Pi(t) / N(t)$  is a  $Q^{N}$ -martingale. If the density of the Radon-Nikodym derivative (likelihood process) is given by

$$
\zeta (t) = \frac {M (t) / M (0)}{N (t) / N (0)},
$$

then  $M(t)$  is a martingale measure for  $\Pi(t)$ .

Proof:

$$
\begin{array}{l} \mathbb {E} ^ {Q _ {M}} \left(\frac {\Pi (t)}{M (t)} | \mathcal {F} (s)\right) = \zeta (s) ^ {- 1} \mathbb {E} ^ {Q _ {N}} \left(\zeta (t) \frac {\Pi (t)}{M (t)} | \mathcal {F} (s)\right) \tag {32} \\ = \zeta (s) ^ {- 1} \mathbb {E} ^ {Q _ {N}} \left(\frac {M (t) / M (0)}{N (t) / N (0)} \frac {\Pi (t)}{M (t)} \zeta (t) | \mathcal {F} (s)\right) = \zeta (s) ^ {- 1} \frac {N (0)}{M (0)} \mathbb {E} ^ {Q _ {N}} \left(\frac {\Pi (t)}{N (t)} | \mathcal {F} (s)\right) \\ = \zeta (s) ^ {- 1} \frac {N (0)}{M (0)} \frac {\Pi (s)}{N (s)} = \frac {N (s) / N (0)}{M (s) / M (0)} \frac {N (0)}{M (0)} \frac {\Pi (s)}{N (s)} = \frac {\Pi (s)}{M (s)} \\ \end{array}
$$

Returning to the proof of (4), we know that by the risk-neutral pricing formula

$$
\frac {P (t , T)}{\beta (t)} = \mathbb {E} ^ {Q} \Big (\frac {1}{\beta (T)} | \mathcal {F} (t) \Big),
$$

so  $P(t,T)$  is a  $Q$ -martingale. Applying the above Proposition, then  $\frac{P(t,T)}{P(t,T + \tau)}$  is a  $Q^{T + \tau}$ -martingale. Since the forward LIBOR rate is defined by

$$
L (t, T, T + \tau) = \tau^ {- 1} \left(\frac {P (t , T)}{P (t , T + \tau)} - 1\right)
$$

it is a  $Q^{T + \tau}$ -martingale as well.

Remark: In (32) we used  $\frac{\zeta(t)}{\zeta(s)}$  inside  $\mathbb{E}^{Q_N}\Big(\cdot |\mathcal{F}(s)\Big)$ . (Baxter and Rennie, 1996) give the lucid interpretation of this term as being the change of measure up to time  $t$  with the change of measure up to time  $s$  removed.

# 6.2 A.2

Here we closely follow Example 4.4.8 (Generalized geometric Brownian motion) in (Shreve, 2004). Define the Ito process

$$
X (t) = \int_ {0} ^ {t} \sigma (s) d W (s) + \int_ {0} ^ {t} \big (\alpha (s) - \frac {1}{2} \sigma^ {2} (s) \big) d s.
$$

Then

$$
d X (t) = \sigma (t) d W (t) + (\alpha (t) - \frac {1}{2} \sigma^ {2} (t)) d t
$$

and

$$
d X (t) d X (t) = \sigma^ {2} (t) d W (t) d W (t) = \sigma^ {2} (t) d t.
$$

Consider an asset price process given by

$$
\begin{array}{l} S (t) = S (0) \exp \left\{X (t) \right\} \\ = S (0) \exp \left\{\int_ {0} ^ {t} \sigma (s) d W (s) + \int_ {0} ^ {t} (\alpha (s) - \frac {1}{2} \sigma^ {2} (s)) d s \right\}. \tag {33} \\ \end{array}
$$

By Ito's formula with  $f(x) = S(0)e^{x}$ ,  $f^{\prime}(x) = S(0)e^{x}$ ,  $f^{\prime \prime}(x) = S(0)e^{x}$ , we have

$$
\begin{array}{l} d S (t) = d f (X (t)) = f ^ {\prime} (X (t)) d X (t) + \frac {1}{2} f ^ {\prime \prime} (X (t)) d X (t) d X (t) \\ = S (t) d X (t) + \frac {1}{2} S (t) d X (t) d X (t). \\ \end{array}
$$

Inserting the dynamics  $dX(t)$  leads to

$$
d S (t) = \alpha (t) S (t) d t + \sigma (t) S (t) d W (t) \tag {34}
$$

so that (33) is generalized geometric Brownian motion and the solution of (34). In case of constant  $\alpha$  and  $\sigma$ , this becomes GBM as in the classical Black-Scholes analysis,

$$
S (t) = S (0) \exp \Big \{\left(\alpha - \frac {1}{2} \sigma^ {2}\right) t + \sigma W (t) \Big \} \qquad \big (W (0) = 0 \big).
$$

If  $\alpha = 0$ , then  $dS(t) = \sigma (t)S(t)dW(t)$  and

$$
S (t) = S (0) \exp \left\{\int_ {0} ^ {t} \sigma (s) d W (s) - \frac {1}{2} \int_ {0} ^ {t} \sigma^ {2} (s) d s \right\}. \tag {35}
$$

# 6.3 A.3

$$
\begin{array}{l} \mathbb {E} ^ {T + \tau} \left[ (L (T, T, T + \tau) - K) ^ {+} \right] = \mathbb {E} ^ {T + \tau} \left[ \left(L (t, T, T + \tau) \exp \left\{- \frac {1}{2} \sigma^ {2} (T - t) + \sigma (W (T) - W (t)) \right\} - K\right) ^ {+} \right] \\ = \frac {1}{\sqrt {2 \pi}} \int_ {- \infty} ^ {\infty} \Big (L (t, T, T + \tau) \exp \big \{- \frac {1}{2} \sigma^ {2} (T - t) + \sigma \sqrt {T - t} z \big \} - K \Big) ^ {+} e ^ {- \frac {1}{2} z ^ {2}} d z \\ \end{array}
$$

It holds that  $L(T,T,T + \tau) > K$  if  $-d_{2} \stackrel{\mathrm{def}}{=} \frac{\log\left(\frac{K}{L(t,T,T + \tau)}\right) + \frac{1}{2}\sigma^{2}(T - t)}{\sigma\sqrt{T - t}} < Z$ . Then

$$
\begin{array}{l} \mathbb {E} ^ {T + \tau} \left[ (\cdot) ^ {+} \right] = \frac {1}{\sqrt {2 \pi}} \int_ {- d _ {2}} ^ {\infty} \Big (L (t, T, T + \tau) \exp \left\{- \frac {1}{2} \sigma^ {2} (T - t) + \sigma \sqrt {T - t z} - \frac {1}{2} z ^ {2} \right\} - K e ^ {- \frac {1}{2} z ^ {2}} \Big) d z \\ = \frac {1}{\sqrt {2 \pi}} \int_ {- d _ {2}} ^ {\infty} L (t, T, T + \tau) \varphi (z - \sigma \sqrt {T - t}) d z - K \frac {1}{\sqrt {2 \pi}} \int_ {- d _ {2}} ^ {\infty} e ^ {- \frac {1}{2} z ^ {2}} d z \\ = L (t, T, T + \tau) \int_ {- d _ {2} - \sigma \sqrt {T - t}} ^ {\infty} \varphi (y) d y - K \int_ {- d _ {2}} ^ {\infty} \varphi (z) d z \text {c h a n g e o f v a r i a b l e s :} y = z - \sigma \sqrt {T - t} \\ = L (t, T, T + \tau) \int_ {- \infty} ^ {d _ {2} + \sigma \sqrt {T - t}} \varphi (y) d y - K \int_ {- \infty} ^ {d _ {2}} \varphi (z) d z \\ = L (t, T, T + \tau) \Phi (d _ {2} + \sigma \sqrt {T - t}) - K \Phi (d _ {2}) \\ \end{array}
$$

Recognizing that  $d_{1} = d_{2} + \sigma \sqrt{T - t}$ , the result follows.

# 6.4 A.4

We state the integral of the square of  $\lambda_{n}(t) = \big(a + b(T_{n} - t)\big)\exp \big\{-c(T_{n} - t)\big\} +d$  as in (West, 2010).

$$
\begin{array}{l} \int \Big ((a + b (T _ {n} - t)) e ^ {- c (T _ {n} - t)} + d \Big) \Big ((a + b (T _ {m} - t)) e ^ {- c (T _ {m} - t)} + d \Big) d t \\ = \frac {a d}{c} \left(e ^ {c (t - T _ {n})} + e ^ {c (t - T _ {m})}\right) + d ^ {2} t - \frac {b d}{c ^ {2}} \left(e ^ {c (t - T _ {n})} [ c (t - T _ {n}) - 1 ] + e ^ {c (t - T _ {m})} [ c (t - T _ {m}) - 1 ]\right) \\ + \frac {e ^ {c (2 t - T _ {n} - T _ {m})}}{4 c ^ {3}} \left(2 a ^ {2} c ^ {2} + 2 a b c (1 + c (T _ {n} + T _ {m} - 2 t)) + b ^ {2} [ 1 + 2 c ^ {2} (t - T _ {n}) (t - T _ {m}) + c (T _ {n} + T _ {m} - 2 t) ]\right) \\ =: I (t, T _ {n}, T _ {m}) \\ \end{array}
$$

For the purposes of calibrating to a caplet market,  $I(t,T_{n},T_{m})$  needs to be evaluated at  $T_{n} = T_{m}$ .

# References

Andersen, L. B. and Piterbarg, V. V. (2010a). *Interest Rate Modeling Volume I: Foundations and Vanilla Models*. Atlantic Financial Press.  
Andersen, L. B. and Piterbarg, V. V. (2010b). Interest Rate Modeling Volume II: Term Structure Models. Atlantic Financial Press.  
Andersen, L. B. and Piterbarg, V. V. (2010c). *Interest Rate Modeling Volume III: Products and Risk Management*. Atlantic Financial Press.  
Baxter, M. and Rennie, A. (1996). Financial Calculus: An Introduction to Derivative Pricing. Cambridge University Press.  
Björk, T. (2009). Arbitrage Theory in Continuous Time. Oxford University Press.  
Black, F. (1976). The pricing of commodity contracts. Journal of Financial Economics, 3:167-179.  
Brigo, D. and Mercurio, F. (2006). *Interest Rate Models: Theory and Practice*. Springer.  
Fries, C. (2007). Mathematical Finance: Theory, Modeling, Implementation. Wiley.  
Glasserman, P. (2010). Monte Carlo Methods in Financial Engineering. Springer.  
Hagan, P. S. and West, G. (2006). Interpolation methods for curve construction. Applied Mathematical Finance, 13(2):89-129.  
Hagan, P. S. and West, G. (2008). Methods for constructing a yield curve. Wilmott Magazine, May:70-81.  
Higham, D. (2001). An algorithmic introduction to numerical simulation of stochastic differential equations. SIAM Review, 43(3):525-546.  
Hippler, S. (2008). Pricing Bermudan Swaptions in the LIBOR Market Model, Dissertation. Oxford University.  
Hull, J. and White, A. (2000). Forward rate volatilities, swap rate volatilities, and the implementation of the LIBOR Market Model. Journal of Fixed Income, 10(2):46-62.  
Hull, J. C. (2009). Options, Futures und other Derivatives. Pearson.  
Hunter, C., Jäckel, P., and Joshi, M. (2001). Drift approximations in a forward-rate based LIBOR Market Model. *Quarc Working Paper*.  
Huyet, M. (2007). Societe Generale, Libor Market Models: the reasons behind the success. A focus on calibration. URL https://www.rocq.inria.fr/mathfi/LMM-09.01.2007.ppt.  
Jäckel, P. and Rebonato, R. (2003). The link between caplet and swaption volatilities in a Brace Gatarek Musiela Jamshidian framework: Approximate solutions and empirical evidence. Journal of Computational Finance, 6(4):41-59.  
Joshi, M. S. (2008). The Concepts and Practice of Mathematical Finance. Cambridge University Press.  
Joshi, M. S. (2011). More Mathematical Finance. Pilot Whale Press.  
Linderström, M. D. (2011). Fixed Income Derivatives: Financial Institutions and Risk Management: Lecture notes. University of Copenhagen.  
Lutz, M. (2011). Libor Market Models with Stochastic Volatility and CMS Spread Option Pricing, PhD Thesis. Ulm University.  
Pietersz, R. and Groenen, P. (2004). Rank reduction of correlation matrices by majorization. Quantitative Finance, 4:649-662.

Rebonato, R. (1998). *Interest Rate Option Models*. John Wiley & Sons.  
Rebonato, R. (2002). Modern Pricing of Interest Rate Derivatives: The LIBOR Market Model and Beyond. Princeton University Press.  
Schoenmakers, J. (2002). Calibration of LIBOR models to caps and swaptions: A way around intrinsic instabilities via parsimonious structures and a collateral market criterion. WIAS Preprint No. 740.  
Schoenmakers, J. (2005). Robust Libor Modelling and Pricing of Derivative Products. Chapman & Hall/CRC.  
Schoenmakers, J. and Coffey, B. (2000). Stable implied calibration of a multi-factor LIBOR model via a semi-parametric correlation structure. WIAS Preprint No. 611.  
Shreve, S. E. (2004). Stochastic Calculus for Finance II: Continuous-Time Models. Springer.  
West, G. (2010). Interest Rate Derivatives: Lecture notes. Financial Modelling Agency.

# Declaration of Authorship

I hereby confirm that I have authored this thesis independently and without use of any other than the indicated sources. All passages which are literally or in general matter taken out of publications or other sources are marked as such.

Berlin, February 25th, 2013

Andreas Golle
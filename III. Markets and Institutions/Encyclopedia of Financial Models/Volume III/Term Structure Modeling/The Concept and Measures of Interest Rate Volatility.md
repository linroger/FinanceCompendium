---
title: "The Concept and Measures of Interest Rate Volatility"
parent_directory: Term Structure Modeling
formatted: 2025-12-21 10:15:00 AM
formatter_model: claude-sonnet-4-5-20251001
cli_tool: claude-code
primary_tags:
  - interest rate volatility
  - term structure modeling
  - stochastic processes
  - mean reversion
secondary_tags:
  - brownian motion
  - diffusive models
  - volatility measurement
  - risk management
  - yield curve dynamics
  - option pricing
  - fixed income valuation
cssclasses: academia
---

# The Concept and Measures of Interest Rate Volatility

ALEXANDER LEVIN, PhD

Director, Financial Engineering, Andrew Davidson & Co., Inc.

Abstract: The knowledge of interest rates and cash flows represents the basis for valuation of fixed income financial instruments. In reality, not only are future interest rates random, but the future cash flows of many securitized investments are also uncertain, as they depend (are "contingent") on interest rates. Valuation of rate options and embedded option bonds, including MBS and ABS, requires sophisticated models of this randomness.

In this entry, we introduce the concepts of market volatility and discuss how it is measured. The dynamics of rates are subject to market forces, mean reversion, and combinations of diffusions and jumps.

## BASIC DEFINITIONS AND FIRST FINDINGS

We can't tell in advance what interest rates will be. Investors may be either enriched or bankrupted from sudden changes in interest rates. Financial institutions devote considerable resources to risk management and hedging. Yet, if future interest rates were deterministic, there would be no need to hedge. Coping with uncertainty is a central feature of investment markets.

The pricing of options and embedded-options instruments utilizes a statistical concept to describe the magnitude of potential interest rates changes. The key notion is the volatility of interest rates. While this term conjures up images of instability, flares of activity, and unpredictability, it is actually a very specific description of the range of possible outcomes. More precisely, volatility can be defined as the standard deviation of a rate's annualized daily increments. Table 1 provides an example for yields on the 10-year Treasury measured over 10 consecutive business days. As part of the measurement, we will be taking a daily time series and then transforming into "absolute returns" and "relative returns"—much like measuring portfolio performance.

```d2
direction: right

daily_rates: Daily Rate\nMeasurements {
  shape: rectangle
  style.fill: "#e3f2fd"
}

absolute_changes: Absolute\nChanges {
  shape: rectangle
  style.fill: "#f3e5f5"
  style.stroke: "#7b1fa2"
}

relative_changes: Relative\nChanges {
  shape: rectangle
  style.fill: "#e8f5e9"
  style.stroke: "#388e3c"
}

daily_volatility: Daily\nVolatility\n(Standard Deviation) {
  shape: rectangle
  style.fill: "#fff3e0"
  style.stroke: "#f57c00"
}

annual_volatility: Annual\nVolatility\n(×√260) {
  shape: rectangle
  style.fill: "#fce4ec"
  style.stroke: "#c2185b"
}

daily_rates -> absolute_changes: difference
daily_rates -> relative_changes: ratio
absolute_changes -> daily_volatility: std dev
relative_changes -> daily_volatility: std dev
daily_volatility -> annual_volatility: annualize

note: Volatility measures the magnitude of potential interest rate changes, annualized as standard deviation of daily increments. | {
  near: bottom-center
}
```

**Figure 1.1: Interest Rate Volatility Measurement Process** - From daily rate measurements through absolute and relative changes to annualized volatility calculations.


The absolute rate changes are computed by taking the difference between the interest rates on successive days. The relative changes are computed by dividing the absolute change by the starting rate. For example, for the first day the absolute change is  $5.00343 - 5.03234 = -0.0289$ . The relative increment is  $-0.0289 / 5.03234 = -0.0057$ . In order to calculate the daily volatility, we just take the standard deviation of the daily absolute and relative change series. In the example above, the standard deviations are 0.048 (absolute increments) and 0.00966 (relative increments). The former number is the standard deviation for daily absolute increments; the latter number represents that of the daily relative changes. To compute volatility, we place these daily measures on an annual basis scaling by the number of trading days in the year (approximately 260):

<table><tr><td>Date</td><td>Rate</td><td>Absolute Increments</td><td>Relative Increments</td></tr><tr><td>03-Jun-02</td><td>5.03234</td><td></td><td></td></tr><tr><td>04-Jun-02</td><td>5.00343</td><td>-0.0289</td><td>-0.0057</td></tr><tr><td>05-Jun-02</td><td>5.04900</td><td>0.0456</td><td>0.0091</td></tr><tr><td>06-Jun-02</td><td>5.01176</td><td>-0.0372</td><td>-0.0074</td></tr><tr><td>07-Jun-02</td><td>5.06165</td><td>0.0499</td><td>0.0100</td></tr><tr><td>10-Jun-02</td><td>5.03885</td><td>-0.0228</td><td>-0.0045</td></tr><tr><td>11-Jun-02</td><td>4.97500</td><td>-0.0639</td><td>-0.0127</td></tr><tr><td>12-Jun-02</td><td>4.95004</td><td>-0.0250</td><td>-0.0050</td></tr><tr><td>13-Jun-02</td><td>4.90280</td><td>-0.0472</td><td>-0.0095</td></tr><tr><td>14-Jun-02</td><td>4.80276</td><td>-0.1000</td><td>-0.0204</td></tr></table>

The standard deviations are 0.048 (absolute increments) and 0.00966 (relative increments). The former number is the standard deviation for daily absolute increments; the latter number represents that of the daily relative changes. To compute volatility, we place these daily measures on an annual basis scaling by the number of trading days in the year (approximately 260):


Relative Volatility

$$
\begin{array}{l} = \text{Daily Standard Relative Deviation} \times \sqrt{260} \\ = 0.00966 \times \sqrt{260} = 0.1557 \\ \end{array}
$$

Absolute Volatility

$$
\begin{array}{l} = \text{Daily Standard Absolute Deviation} \times \sqrt{260} \\ = 0.0480 \times \sqrt{260} = 0.773 \\ \end{array}
$$

Thus, in our example of the 10-day yield series, we would calculate the annual volatility as 77.3 basis points (absolute) or  $15.57\%$  (relative). The relative volatility times the average yield for the period  $0.1557 \times 4.983 = 0.776$  is close to the absolute yield volatility of 0.773—as one would expect.

The second relevant clarification may damage a naïve understanding of volatility as the annual standard deviation. Volatility measures only the pace of uncertainty; this concept does not assume the daily-measured volatility remains constant over time, just as when driving in traffic with starts and stops there is a difference between instantaneous speed and the average velocity. Third, an important assumption for annualizing the daily volatilities is that the daily increments are serially independent. If there is a relationship between rate changes on one day and another day, then we say there is serial correlation. The "square-root rule" will not be an accurate measure of the annual volatility if there is serial correlation in the random process. Figure 1 illustrates that volatility has been volatile.


In the 1980s, both volatility measures exhibited instability, although the relative one appeared to be much more stable. However, since the 1990s, the absolute volatility measure has become more stable, oscillating around  $1\%$  (100 basis points). Based on these observations, it is not hard to understand why during different time periods, the relative volatility was moving inversely, and the absolute volatility directly, with respect to the rate level. Aside from the explicit level-related effect, both volatility measures seemingly synchronously react to economic disturbances. Pricing in the interest rate options market reflects these important findings.

Different points of the yield curve have differing volatility, too. This observation suggests that not only do the rates have a "term structure," but their volatility has a term structure as well. A hump shape of such a volatility curve is often observed (see Figure 2). It can be attributed to (1) absence of change in the short rates unless regulators take actions and (2) the dampening force of the mean reversion. We will explain both factors further in the entry.

## A DIFFUSIVE MODEL FOR RANDOMNESS

Can we describe the randomness mathematically? It is perhaps simpler than it sounds. In fact, having become acquainted with volatility, we did most of the task. A general diffusive model for an interest rate process that describes how interest rates will vary over time,  $r(t)$ , will have the following form:

$$ d r = (\text{Drift}) dt + (\text{Volatility}) dz \tag {1}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/66256f4b-1176-4bdd-adf3-458dec1636a0/e3b35a807a4204a7bc482b9d6593bc9e9eefd4318a12f6ed015d42c03d281d54.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/66256f4b-1176-4bdd-adf3-458dec1636a0/4af9ceb13001205bfcbaae25bb24988de3740b72bc4e714d89d3aee95af02e9a.jpg)
Figure 1 History of Volatility for the 10-year Treasury Yield

What does this mean? Notations  $dr$  and  $dt$  refer to small increments measured over infinitesimally short time. Variable  $dz$  represents small changes in  $z(t)$  which is called Brownian motion, also known as the Wiener process. It is the source of randomness. We cannot control the exact value of this variable. Drift and volatility describe how the changes in rates are related to changes in time and the random variable  $dz$ . Mathematical model (1) can be thought of in the following way: The change in interest rate over a small time period is the result of a number representing systematic drift times the amount of time change plus a random shock scaled by


![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/66256f4b-1176-4bdd-adf3-458dec1636a0/f1132982de8d2dd361d8a91cffe1f336b2c0ba5cdd617612a48492fffc361063.jpg)
History: 1st quarter of 2002 the amount of volatility.
Figure 2 Historical Volatility Term Structure for the Swap Rates


$$
\begin{array}{l} \Delta r = \left(\text{Drift}\right) \left(\text{Passage of time}\right) + \left(\text{Volatility}\right) \\ \times \text{(Random shock)} \\ \end{array}
$$

## A Brief Excursion to Brownian Motion

Brownian motion:

- Is continuous
- Is normally distributed
- Has a zero mean ("centered")
- Has time increments that are serially independent
- Has its own volatility scaled to 1

Therefore,  $z(t)$  has a standard deviation of  $\sqrt{t}$  (for the same reason that a square root appears in the annualization of daily volatility). Any particular function  $z(t)$  is said to be a "realization" or a "sample path" of the Brownian motion. The Brownian motion, therefore, can be thought of as a container of random paths subject to the conditions described above. Figure 3 depicts a sample path and the single- and double-standard deviation zones.

With the use of volatility multiples, we can scale the rate process to any volatility level. The drift variable simulates a systematic, nonrandom tendency. For example, it can model a central tendency function known as mean reversion. Equation (1) is called the stochastic differential equation. Both multiples, drift and volatility do not have to be constants. They can be functions of time,  $t$ , and rate,  $r$ . Any particular specification of  $\text{drift}(t,r)$  and  $\text{volatility}(t,r)$  leads to a specific rate model, but not necessarily a good one. At this stage, it is enough to understand that a good model can be a strong quantitative pricing tool. Although we cannot know what the random variable  $z(t)$  is going to do, we, at least, can simulate its behavior with a large number of random scenarios. The Monte Carlo method draws on this idea. On the other hand, we may be able to do some intelligent analytical work making the brute-force simulations unnecessary. We could also make sure that the model is consistent with ("calibrated to") prices of widely traded interest rate instruments; then we will feel more confident applying it to the exotic options or the market for mortgage-backed securities (MBSs) and asset-backed securities (ABSs).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/66256f4b-1176-4bdd-adf3-458dec1636a0/4fd2321fc3e12a9060a05236533c599fbe283b4dfd702e896fa28c89444ec935.jpg)
Figure 3 Brownian Motion's Sample Path with Deviation Zones

# MEAN REVERSION AND MARKET STABILITY

Consider the following special form of equation (1):  $dr = 5rdt + \sigma dz$ . Can this equation model an actual interest rate? Since the formula shows that the change in interest rate increases with changes in time, the average rate will continue to grow. Utilizing calculus, we note that the solution to this equation will not only grow with time, but will grow exponentially as it contains an  $e^{5t}$  term. Since interest rates cannot increase exponentially forever (at least, they never have), we need to dismiss this formula as inappropriate for the job.

How about  $dr = \sigma dz$ ? The drift is chosen to be zero, and provided that the initial value  $r(0)$  is known, the process will randomly evolve around this value, on average. Whether the initial rate is high or low, the model will stay centered around it. The standard deviation, as we already know, will grow as  $\sqrt{t}$ . This may not be a very good thing either. A century from now, the magnitude of the standard deviation will be huge, at ten times annual volatility. Figure 1B demonstrated that interest rates tend to stay within a range.

Both models briefly reviewed above suffer with the same disease: They are unstable. Observable objects in economy, finance, engineering, or physics tend to be stable; otherwise, they would not be able to exist long enough to be observed. The feature making financial markets stable is known as mean reversion. It is simply a properly chosen specification of the drift term that would ensure the dampening effect (also known as central tendency). If the rate randomly has grown too high or fallen too low, the drift term will help "return" it back. Here is an example:

$$ d r = a \left(r_{\infty} - r\right) d t + \sigma d z \tag {2}
$$ where mean reversion parameter  $a > 0$ . This time, the solution will contain  $e^{-at}$ , a decaying component that indicates stability. The mean converges to parameter  $r_{\infty}$ , the long-term equilibrium (now we see the point for this strange notation). The standard deviation will grow with time as


$$
\sigma \sqrt{(1 - e^{- 2 a t}) / 2 a}
$$

and converges to

$$
\sigma / \sqrt{2 a}
$$ as the horizon extends. Figure 4 compares the standard deviation (lines launching from the origin) and equivalent ("average") volatility for different levels of mean reversion including the zero one ( $\sigma = 1\%$  was assumed).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/66256f4b-1176-4bdd-adf3-458dec1636a0/7726f33092c41ae3908a2e608c5429424ed8dcfefd750f38bcaf1ea13710813e.jpg)
Figure 4 Standard Deviation and Average Volatility for Different Values of  $a$


Mean reversion, therefore, stabilizes the market. It also explains why volatility is typically measured on a daily basis; in the presence of mean reversion, the average volatility measured over a time horizon generally depends on this horizon. For example, if  $a = 10\%$ , only  $95\%$  of actual volatility is seen in annual increments.

If  $r(t)$  in (2) is the short market rate, then every other rate (the 5-year, the 10-year, etc.) can be derived as a function of it. In particular, for mean-reverting models, volatility of long rates should eventually fade with maturity of the rate, and it does happen as seen in Figure 2. Mathematically, it is a direct consequence of the mean reversion: The short rate's uncertainty gets limited going forward, thereby making long-term bonds less volatile now. Economically, discount rates for very remote cash flows should be almost certain; otherwise their present values would be infinitely risky.

Does it seem that model (2) makes sense? Well, Vasicek (1977) noticed it, as one of the first interest rate models. It is been popular and important since and was a basis for many of the models that are used today.


# THE RATE DISTRIBUTION

Equation (2) is a linear stochastic differential equation disturbed by a Brownian motion. The math tells us that the output of this equation, rate  $r(t)$ , is going to be normally distributed. Although it makes the model tractable, the negative rates are not precluded, which may or may not be a problem. Arguably, the actual rates should stay positive—at least, they almost always have been. When using process (2), odds of negative rates grow with future time, as the present value falls. In addition, mortgages and related securities are amortizing and may have small balances and cash flows years from now. Levin (2004) provided a quantitative support for the use of normal distribution by showing it does not distort options' value materially.

The fact that a Brownian motion is normally distributed does not require that the rate process be such. For example, considering exponential transformation  $R = \exp (r)$  and using  $R$  as the rate, rather than  $r$ , we ensure that the rate remains positive. Such a process is said to have lognormal distribution. The mean and standard deviation for this known distribution is explicitly stated through the mean  $\mu$  and the standard deviation  $\sigma$  of the original variable,  $r(t)$ :

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/66256f4b-1176-4bdd-adf3-458dec1636a0/0d91ac351b3bcac76c4a662779d5ae40c13fff6e9a7240914bfaade6386d17c0.jpg)
Figure 5 Jumpy and Continuous Interest Rates


$$
E (R) = \exp \left(\mu + \frac{1}{2} \sigma^{2}\right)
$$

$$ s t d (R) = \exp \left(\mu + \frac{1}{2} \sigma^{2}\right) \sqrt{\exp (\sigma^{2}) - 1}
$$

Another popular example is the squared transformation,  $R = r^2$ , that also guarantees that rate  $R$  stays positive; the distribution of such defined rate is known as noncentral  $\chi^2$ . For the squared transformation,

$$
E(R) = \mu^{2} + \sigma^{2}
$$

$$
std(R) = \sigma \sqrt{2 \sigma^{2} + 4 \mu^{2}}
$$

# INTEREST RATE JUMPS

Stochastic differential equation (1) is not the most general mathematical form of a random process. It applies only to diffusions, that is, continuous random processes. Stochastic calculus considers many other forms of randomness; an important one is called random jumps or random events. To appreciate this type of random ness, let us consider the history of three rates, the 1-month London Interbank Offered Rate (LIBOR) ("LIBOR 01"), the 2-year swap ("LIBOR 24"), and the 10-year swap rate ("LIBOR 120"), depicted in Figure 5.


Both swap rates change almost continuously, day after day, and little by little, at times randomly oscillating, in response to the market forces. The 1-month rate was changing in a suspiciously smooth fashion between sudden jumps featuring apparent and prolonged plateaus that are not seen for the swap rates. For example, in 2002 to 2004, it had been barely changing for a while, and then plunged responding to the Fed's actions. Furthermore, whereas the visual dynamics for all three rates seem to resemble one another, statistical measurements of correlation between daily increments overwhelmingly reject such a conclusion. For this 18-year-long history (over 4,500 observations) we computed a small  $7\%$  correlation between daily increments of the 1-month and the 2-year rates, and an even smaller  $4\%$  correlation between 1-month and 10-year rates. What if we measure correlations between increments in monthly averages (216 observations), thereby filtering out the disparity between daily dynamics? Then the  $7\%$  goes way up to  $46\%$  and

Table 2 Empirical Correlations between Periodic Increments, 1992-2010 History

<table><tr><td></td><td>Daily</td><td>Monthly</td><td>Quarterly</td><td>Semiannually</td><td>Annually</td></tr><tr><td>2-year to 1-month</td><td>7\%</td><td>46</td><td>65</td><td>81</td><td>90</td></tr><tr><td>10-year to 1-month</td><td>4</td><td>24</td><td>40</td><td>51</td><td>71</td></tr><tr><td>Total observations</td><td>4,527</td><td>216</td><td>71</td><td>35</td><td>17</td></tr></table> the  $4\%$  to  $24\%$ , and the interrate correlations continue to improve steadily as we extend the averaging period (Table 2).


These objective facts suggest that a stochastic diffusive model suitable for swap rates may be not perfectly appropriate for short rates. A random jump component may be necessary to explain the actual short-rate behavior and associated option pricing. One popular mathematical form of jumps is the Poisson process. It is simply a random occurrence of events described by a single parameter  $\lambda$  called frequency or intensity. The average number of events to occur during a time interval of  $t$  is equal to  $\lambda t$ ; curiously enough the variance of this number is equal to  $\lambda t$  too. Probability that we will have exactly  $j$  events during this time interval is equal to  $e^{-\lambda t} (\lambda t)^j / j!$ . It is only the period's length that really matters, not when the period starts—for this reason, the Poisson process can't be used to describe, say, human deaths or bulb failures when the attained age is a strong factor. However, it is plausible to assume that the Poisson jumps describe some events in financial markets.

Aside from the jumps' arrival, the size of jumps can be also random. Merton (1976) introduced an option-pricing model when the underlying process includes Poisson jumps with normally distributed magnitude. Using mathematical notations, we can express the model as

$$
\begin{array}{l} dr = (\text{Drift}) dt + (\text{Volatility}) dz \\ + (\text{Jump Volatility}) dN \tag {3} \\ \end{array}
$$ where $N$ is the Poisson-Merton jump variable. When jump occurs, $dN$ is drawn from the standard normal distribution $N[0,1]$; it stays 0 otherwise. In a less strict notations,

$$
\begin{array}{l} \Delta r = (\text{Drift}) (\text{Passage of time}) \\ + (\text{Volatility}) (\text{Random shock}) \\ + (\text{Jump volatility}) (\text{Random jump}) \\ \end{array}
$$

The practical difference between random shock and random jump is that, for a small time interval, the former is small, but nonzero, whereas the latter is mostly zero and rarely finite. Hence, equation (3) describes a more general stochastic process combining diffusion and jumps ("jump-diffusion"). Notably, mathematical variance of the Poisson process  $N(t)$  is too proportional to the time horizon  $t$ . This fact allows aligning interpretations of  $\sigma_{d} \equiv Volatility$  and  $\sigma_{j} \equiv JumpVolatility$ : for very small  $t$ , the standard deviation of  $r(t)$  is equal to

$$ t \sqrt{\sigma_{d}^{2} + \lambda \sigma_{j}^{2}}
$$ meaning that the mixed volatility will be simply


$$
\sigma = \sqrt{\sigma_{d}^{2} + \lambda \sigma_{j}^{2}}
$$

Furthermore, if we generalize the linear meanreverting Vasicek model given by (2) by adding a jump term, then expressions for the mean and the standard deviation of  $r(t)$  won't change; it will be enough to replace  $\sigma$ .

At first, it is tempting to interpret a jump-diffusion process as diffusion with another volatility scale. In reality, probability distributions of these two stochastic patterns are different. Inclusion of jumps "fattens" the distribution's tail (see Table 3) and is much more suitable for modeling and pricing rare events like a corporation's defaults or credit downgrade, a financial crisis, reaching a very remote option's strike, or change in the short rate over a fairly short horizon.

Table 3 Comparison of Distribution's Tails for Poisson-Merton Jump Processes

<table><tr><td>Value of λt</td><td>Prob(r &lt; μ - 4σ)</td><td>Prob(r &lt; μ - 3σ)</td><td>Prob(r &lt; μ - 2σ)</td><td>Prob(r &lt; μ - 1σ)</td></tr><tr><td>0.2</td><td>0.789\%</td><td>1.777\%</td><td>3.505\%</td><td>6.022\%</td></tr><tr><td>1</td><td>0.158</td><td>0.753</td><td>3.357</td><td>12.568</td></tr><tr><td>5</td><td>0.027</td><td>0.303</td><td>2.559</td><td>14.732</td></tr><tr><td>Infinite (normal)</td><td>0.003</td><td>0.135</td><td>2.275</td><td>15.866</td></tr></table>

Models with Poisson-Merton processes converge to normal when the value of  $\lambda t$  is large (frequent jumps are similar to diffusion), but may produce significantly different results when it is small.

Stochastic differential equations (1) and (3) can be viewed as building blocks for the interest rate modeling. Some models used today in the financial industry are multifactor with the short rate  $r(t)$  defined not as the solution to equations (1) or (3), but as their sum. When modeling LIBOR, neither the jump arrivals have to be Poissonian, nor the magnitude has to be normal. For example, Chan et al. (2003) developed a model with rate jumps timed to periodic Fed meetings, and the magnitude being a random multiple of 25 bps. There exist other modeling views at interest rate dynamics that we don't cover in this entry including continuous randomness with stochastic volatility levels; see James and Webber (2000) for a comprehensive overview.

# KEY POINTS

- The most common way of simulating interest rates' uncertainty is employing stochastic differential equations containing drift and volatility terms.
- In older times, absolute volatility was directionally related to the rate's level; this relationship has gradually disappeared.

- The drift term must contain a mean reversion, that is, stabilization force.
- Actual short rates (LIBOR) have been historically jumpy and require adding random jumps to diffusions.

# ACKNOWLEDGMENTS

The author wishes to thank Andrew Davidson for his help in shaping this material, Will Searle for his comments, and Nancy Davidson for her editorial work.

# REFERENCES

Chan, Y.-K., Bhattacharjee, R., Russell, R., and Teytel, M. (2003). A New Term-Structure Model Based on Federal Funds Target. Citigroup, Mortgage Securities.
James, J. and Webber, N. (2000). Interest Rate Modeling: Financial Engineering. New York: John Wiley & Sons.
Levin, A. (2004). Interest rate model selection. Journal of Portfolio Management 30, 2: 74-86.
Levin, A. (2001). A tractable skew-and-smile model. The Dime Bancorp, Working Paper.
Merton, R. (1976). Option pricing when underlying stock returns are discontinuous. Journal of Financial Economics 3: 125-144.
Vasicek, O. (1977). An equilibrium characterization of the term structure. Journal of Financial Economics 5: 177-188.


# Estimate of Downside Risk with Fat-Tailed and Skewed Models

JAMES X. XIONG, PhD, CFA

Senior Research Consultant, Ibbotson Associates, A Morningstar Company

Abstract: Asset returns are often not normally distributed and exhibit several stylized empirical facts: fat tails, skewness, finite variance, time scaling, and volatility clustering. Modeling the tail distribution of asset returns plays an essential role in downside risk management. The "left tail" of the distribution is where market crashes or crises occur. Downside risk can be measured in terms of conditional value-at-risk and estimated by fat-tailed and skewed models such as Lévy stable, truncated Lévy flight, skewed Student's  $t$ , mixture of normal distributions, and GARCH models. These fat-tailed and skewed models have different characteristics in describing the tail distribution of asset returns. The objective is to select appropriate ones that can accurately model the downside risk.

The financial crisis of 2008 has led many practitioners and academics to reassess the adequacy of the return distribution models, in particular, the left tail. This entry focuses on modeling the left fat tails since they reflect market crashes or crises and play an essential role in downside risk management.

The most common model of asset returns is assumed to be normally or Gaussian distributed (see Bachelier, 1900). In other words, the returns follow a random walk or Brownian motion. This model is natural if one assumes the return over a time interval to be the result of many small independent shocks, which leads to a Gaussian distribution by the central limit theorem. However, empirical studies have observed that the return distributions are more leptokurtic or fat-tailed than Gaussian distributions.


A normal distribution model assumes that an asset return that is three standard deviations below its arithmetic mean (popularity referred to as a "three-sigma event") has a probability of only approximately  $0.13\%$ ; that is, once every 1,000 times. For example, from January 1926 to March 2010, the S&P 500 total return index had a monthly mean return of  $0.93\%$  and a monthly standard deviation of  $5.54\%$ . A negative three-sigma event would be a return lower than  $-15.69\%$ . During this time period of 1,010 months, there were 10 monthly returns worse than  $-15.69\%$  as shown in Table 1 (the three-sigma event), with the most recent loss of  $-16.79\%$  in October 2008 being ranked at ninth.

Table 1 The Worst 10 Monthly Returns for the S&P 500 (from 1/1926 to 3/2010)

<table><tr><td></td><td>S&amp;P 500 (\%)</td></tr><tr><td>Sep 1931</td><td>-29.73</td></tr><tr><td>Mar 1938</td><td>-24.87</td></tr><tr><td>May 1940</td><td>-22.89</td></tr><tr><td>May 1932</td><td>-21.96</td></tr><tr><td>Oct 1987</td><td>-21.52</td></tr><tr><td>Apr 1932</td><td>-19.97</td></tr><tr><td>Oct 1929</td><td>-19.73</td></tr><tr><td>Feb 1933</td><td>-17.72</td></tr><tr><td>Oct 2008</td><td>-16.79</td></tr><tr><td>Jun 1930</td><td>-16.25</td></tr></table>

Many statistical models have been put forth to account for the heavy tails. We discuss several standard and popular fat-tailed models, such as Mandelbrot's Lévy stable hypothesis (see Mandelbrot, 1963), the Student's  $t$ -distribution (see Blattberg and Gonedes, 1974), the mixture of normal distributions (see Clark, 1973), and GARCH (see Bollerslev, 1986) models. There are many other fat-tailed candidates, and this entry does not aim at being exhaustive. Instead, we select representative models and illustrate them through examples so that practitioners may have some intuition about these practically implementable models.

Along the way, we introduce a relatively new fat-tailed and skewed model: the truncated Lévy flight (TLF). Another name for the TLF is the tempered stable distribution. The TLF model has a few interesting properties that we will illustrate later, such as possessing fat tails, skewness, finite moments, and time scaling. Of course, these quantitative models are not the only tool, and they need to be integrated with judgmental analyses and other estimates, but they represent a good starting point for the management of downside risk.


# DOWNSIDE RISK MEASURE

Before we dive into the discussions of fat-tailed models, we need to specify an appropriate downside risk measure. A popular downside risk measure is value-at-risk (VaR), which is an estimate of the loss that we expect to be exceeded with a given level of probability (e.g.,  $5\%$ ) over a specified time period. VaR has been recommended as a way of measuring risk by regulators and various financial industry advisory committees.

Conditional value-at-risk (CVaR), a closely related measure to VaR, is derived by taking a weighted average between the VaR and losses exceeding the VaR. Other terms for CVaR include mean shortfall, tail VaR, and expected tail loss. Studies such as Rockafellar and Uryasev (2000), for example, have shown that CVaR has more attractive properties than VaR. Specifically, CVaR is a coherent measure of risk as proved by Pflug (2000) in the sense of Artzner et al. (1999). One of the coherent measures is subadditivity; that is, the risk of a combination of investments is at most as large as the sum of the individual risks. VaR is not always subadditive, which means that the VaR of a portfolio with two instruments may be greater than the sum of individual VaRs of these two instruments. In contrast, CVaR is subadditive. Therefore, CVaR is a more appropriate measure of downside risk.

# LEVY STABLE DISTRIBUTION

Lévy distributions are stable; that is, the sum of two independent random variables, characterized by the same Lévy distribution of tail index  $\alpha$ , is itself characterized by a Lévy distribution of the same index. In other words, the functional form of the distribution is maintained, if we sum up independent, identically distributed Lévy stable random variables. The characteristic function of the Lévy stable distribution is (Lévy, 1925):


$$
\begin{array}{l} \ln \varphi (q) = i \delta q - \gamma | q | ^ {\alpha} \left[ 1 - i \beta \frac {q}{| q |} \tan \left(\frac {\pi}{2} \alpha\right) \right] f o r \alpha \neq 1 \\ = i \delta q - \gamma | q | \left[ 1 - i \beta \frac {q}{| q |} \frac {2}{\pi} \ln | q | \right] f o r \alpha = 1 \\ \end{array}
$$

The probability density function is obtained by performing the inverse Fourier transform on the characteristic function. The four parameters associated with the Lévy stable distribution are:  $\alpha$  determines the tail weight or the distribution's kurtosis with  $0 < \alpha \leq 2$ ;  $\beta$  determines the distribution's skewness;  $\gamma$  is a scale parameter; and  $\delta$  is a location parameter. One can generate univariate stable distributed returns through a numerical software package, for example, written by John Nolan (2009). In his software, the function "stablernd()" takes four parameters,  $\alpha$ ,  $\beta$ ,  $\gamma$ , and  $\delta$ , and generates random returns that follow a Lévy stable distribution. For empirical analyses, these four parameters can be estimated by the software's function "stablefit().

In 1963, Mandelbrot modeled cotton prices with a Lévy stable process (Mandelbrot, 1963). Mandelbrot observed that in addition to being fat-tailed, the returns show another interest ing property: time scaling. This means that the distributions of returns have similar functional forms for different time intervals, ranging from one day to one month. The time scaling property is very appealing as it allows the sum of two independent Lévy stable distributed variables to be stable distributed, with the same stability index  $\alpha$ . The normal distribution is a special case of the Lévy stable distribution, and it is scaled in the same way that the sum of two normally distributed variables is also normally distributed.


Figure 1 shows the time scaling of the S&P 500 index returns at time intervals of 1, 2, 3, and 5 days. The scaling variable for a Lévy stable process of index  $\alpha$  is  $\tilde{Z} = \frac{Z}{(\Delta t)^{1 / \alpha}}$ . The best fit gives  $\alpha = 1.5$ , and a good data collapse can be observed in Figure 1.

Mandelbrot's finding was later supported by Fama's study on stocks (Fama, 1965). A Lévy stable distribution model has fat tails and obeys scaling properties, but it has an infinite variance, which conflicts with empirical observations that the return variance is finite. For example, extensive analyses on high-frequency data (ranging from 1 minute to 1 day) for the 1,000 largest companies provided evidence that the returns have finite variance (Gopikrishnan et al., 1998). Infinite variance complicates the task of risk estimation, as well as the application of mean-variance portfolio construction.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/93af56dda83630f2000837c0a3853b0fec7c16f12a021370cfa1bbaad047d7f4.jpg)
Figure 1 The Time Scaling of the S&P 500 Index with a Stability Index  $\alpha = 1.5$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/974ebcb8be5a92e3c23ec8bbd207c3452c9768a41eb5df5f12a557b5ed2f2f85.jpg)
Figure 2 The Distributions of S&P 500 Monthly Returns Fitted by the Log-Stable and Lognormal Models


Figure 2 illustrates the log-stable and lognormal distributions in fitting the distribution of monthly S&P 500 returns (also see Martin, Rachev, and Siboulet, 2003). Log-stable distribution applies the stable distribution to logreturns. The vertical axis of Figure 2 is in log scale with a base of 10, and this helps to view the tails of the distribution more clearly. It is clear that the lognormal distribution fails to fit the return distribution below  $-15\%$  (the above-mentioned three-sigma events). The log-stable distribution fits the tail well, but it extends far beyond the historical maximum loss or gain with nonnegligible probabilities, which eventually results in an infinite variance. In other words, the tail for the log-stable distribution is perhaps too fat.

The infinite variance associated with the stable distribution induces a challenging problem in risk estimation. In practice, what is needed is a model with a distribution falling between the normal and stable distributions so that its tail is appropriately fat, but finite. By truncating the extreme tails of the stable distribution, a model named the truncated Lévy flight has such properties.

# Truncated Lévy Flight

The TLF model was first introduced by Mantegna and Stanley (1994) in the physics literature, and it has drawn widespread attention since then. Koponen (1995) modified it in such a way as to allow an analytical calculation of the characteristic function and determination of the complete probability density distribution. Another name for the TLF is the tempered stable distribution—introduced and extended by Boyarchenko and Levendorskii (2000), Carr et al. (2002), Rosinski (2007), and Kim et al. (2008, 2010). Another application is the so-called smoothly truncated stable distribution introduced by Menn and Rachev (2009).

In this entry, we focus on the simplest TLF model by Mantegna and Stanley (1994). The probability density function (PDF) of a simple TLF process is defined as:

$$
P (x) = 0, \quad x <   - l;
$$

$$
P (x) = P _ {L e v y} (x), \quad - l \leq x \leq l;
$$

$$
P (x) = 0, \qquad \qquad x > l
$$ where  $P_{Levy}(x)$  is the PDF of return  $x$  for a Lévy stable distribution and  $l$  is the cutoff length for the truncation. It can be seen that the truncation is abrupt. Alternative TLF models are similar


Table 2 Parameter Estimates with the Log-TLF Model for Monthly S&P 500, Weekly MSCI EM, and Weekly MSCI EAFE Returns

<table><tr><td>Log-TLF</td><td>α</td><td>β</td><td>γ</td><td>δ</td><td>Cutoff Length</td></tr><tr><td>S&amp;P 500 Monthly</td><td>1.42</td><td>-0.12</td><td>0.024</td><td>0.010</td><td>6.8</td></tr><tr><td>MSCI EM Weekly</td><td>1.58</td><td>-0.40</td><td>0.015</td><td>0.0054</td><td>8.0</td></tr><tr><td>MSCI EAFE Weekly</td><td>1.79</td><td>-0.52</td><td>0.014</td><td>0.0033</td><td>10.0</td></tr></table> and have in general smoother truncations in the form of exponential tails.


To simulate a TLF process from a Lévy stable process, we apply a truncation method on the Lévy stable distributed returns generated in the previous section so that the return series follows a TLF model. These truncated returns are then used in the distribution analyses and CVaR estimates, as well as the Monte Carlo simulations.

The truncation is simply implemented, for example, by truncating returns that are beyond 8-sigma for the MSCI Emerging Market index weekly returns or 6.8-sigma for S&P 500 monthly returns. The estimates of the five parameters are shown in Table 2. In the table, we choose the cutoff length in such a way that it is slightly larger than the historical maximum loss (in terms of standard deviation) over the entire historical period. The cutoff length shown in the table is normalized. One can think of a normalized cutoff length of 6 as a six-sigma event.

The other four parameters are estimated by the maximum likelihood method.

An interesting feature of the TLF model is its time scaling behavior. Mantegna and Stanley (1994, 1999) show that for a small time interval (e.g., a minute), the TLF distribution approximates a Lévy stable distribution with Lévy stable scaling; while for a significantly large but finite time interval (e.g., a year), the TLF distribution slowly converges to a Gaussian distribution. In other words, the TLF undergoes a crossover from a Lévy stable distribution to a Gaussian distribution as the time interval increases. This crossover is consistent with an independent empirical study of the distribution of daily, weekly and monthly returns for which a progressive convergence to a Gaussian process is deemed to be observed (Akgiray and Booth, 1988).

Figure 3 shows the convergence of the TLF from the Lévy stable distribution at a small time interval to the Gaussian distribution at a large time interval. It shows that as the time interval increases from one month to one year and finally to five years, the normalized return distribution converges from the approximate Lévy stable distribution (one-month interval) to the normal distribution (five-year interval).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/7c28bbe95cb3b1cfeff14dc8f778f7d11a59609660a2393e85bbd834b059237a.jpg)
Figure 3 Time Scaling of the TLF process


The truncation is able to mathematically solve the infinite variance problem inherent in the stable distribution. In fact, the truncation leads to the advantage that all four moments are finite. An interesting question is whether there are economic rationales for the truncation, even though the empirical evidence of finite variance is convincing. The truncation implies an upside or downside boundary for the returns. For the left tail, it is easy to see that the return is bounded by  $-100\%$  due to limited liability for shareholders for unleveraged indexes or portfolios. However, the existence of the boundary for the upside tail is debatable and it may require extensive separate research. Factors that can limit an infinite positive gain for a large market index such as the S&P 500 may include competitive industries, business cycles, government intervention such as antitrust law and increasing interest rates, contrarian strategies that lead to mean reversion of returns, and so on. Fundamental "intrinsic valuation" indicates that the asset prices should be commensurate with the overall economic growth, which is limited by population growth, labor resources, productivity, and so on.

On the drawback side, like the normal or Lévy stable distribution model, the TLF model assumes an independent and identically distributed process and therefore it cannot describe the time-dependent volatility or volatility clustering observed in market data. Volatility clustering means that a period of high volatility tends to be followed by high volatility and a period of low volatility is likely followed by low volatility.

An attempt to address this drawback is to assume TLF innovations instead of Gaussian innovations in GARCH models. A few stud ies have investigated the option pricing problem with GARCH dynamics and non-Gaussian innovations. For example, Menn and Rachev (2009) considered smoothly truncated stable innovations in order to provide a practical framework to extend option pricing theory to the Lévy stable model. Kim et al. (2010) studied parametric models based on tempered stable innovations, and they showed that the GARCH model with tempered stable innovations explains both asset price behavior and European option prices better than the normal GARCH model.


# STUDENT t-DISTRIBUTION

The Student's  $t$ -distribution is well documented in the literature. Its probability density function is given by:

$$
P (x) = \frac {\Gamma \left(\frac {\nu + 1}{2}\right)}{\sqrt {\pi \nu} \Gamma \left(\frac {\nu}{2}\right)} \left(1 + \frac {x ^ {2}}{\nu}\right) ^ {- \frac {\nu + 1}{2}}
$$ where  $\upsilon$  is the degrees of freedom. The Student's  $t$ -distribution coincides with the Cauchy distribution for  $\upsilon = 1$ , and approaches Gaussian for  $\upsilon \rightarrow \infty$ . Finite variance only exists for  $\upsilon > 2$ .


Blattberg and Gonedes (1974) proposed that the returns are distributed with a Student's  $t$ -distribution. Markowitz and Usmen (1996) found that the daily log-return data of the S&P 500 index can be fitted by the Student's  $t$ -distribution with about 4.5 degrees of freedom. Hurst and Platen (1997) reached a similar conclusion. Platen and Sidorowicz (2007) investigated the log-returns of a variety of diversified world stock indexes in different currency denominations by applying the maximum likelihood ratio test to the large class of generalized hyperbolic distributions, and showed that the Student's  $t$ -distribution with about four degrees of freedom was the best fit among the models they tested.

The Student's  $t$ -distribution is symmetric, thus it cannot model skewness. In order to model negative skewness, Hansen (1994) introduced the skewed Student's  $t$ -distribution, which is able to model skewness, but it requires one more parameter to be estimated.

The Student's  $t$ -distribution has fat tails but does not obey time scaling, which indicates that the sum of two independent Student's  $t$ -distributed variables is not a Student's  $t$ -variable with the same degrees of freedom. It cannot model volatility clustering.

The kurtosis of the Student's t distribution is given by  $\frac{6}{4 - \nu}$ , and it is only defined for  $\nu > 4$ . In other words, the kurtosis is infinite when  $\nu$  is less than or equal to 4, and the skewness tends to be unstable for  $\nu \leq 4$ . In order to avoid an infinite kurtosis, we set the minimum  $\nu$  as 4.1 when the maximum likelihood estimate gives a value of  $\nu$  less than 4 (shown as MLE- $\nu$  in Table 3). Our numerical simulations show that the CVaR estimate is not sensitive to this small change of  $\nu$ .

For the symmetric Student's  $t$ -distribution,  $\upsilon$  is the only parameter that needs to be estimated for normalized returns. For the skewed Student's  $t$ -distribution, we need to add a parameter,  $\lambda$ , to capture the skewness (see Hansen, 1994). These estimated parameters are shown in Table 3.

Table 3 Parameter Estimates with the Log Student's  $t$  and Log Skewed Student's  $t$  Distributions for Monthly S&P 500, Weekly MSCI EM, and Weekly MSCI EAFE Returns

<table><tr><td colspan="3">Log Student&#x27;s t</td></tr><tr><td></td><td>ν</td><td>MLE-ν</td></tr><tr><td>S&amp;P 500 Monthly</td><td>4.1</td><td>3.6</td></tr><tr><td>MSCI EM Weekly</td><td>4.1</td><td>4.0</td></tr><tr><td>MSCI EAFE Weekly</td><td>4.4</td><td>4.4</td></tr><tr><td colspan="3">Log Skewed t</td></tr><tr><td></td><td>ν</td><td>λ</td></tr><tr><td>S&amp;P 500 Monthly</td><td>4.1</td><td>-0.13</td></tr><tr><td>MSCI EM Weekly</td><td>4.1</td><td>-0.25</td></tr><tr><td>MSCI EAFE Weekly</td><td>4.4</td><td>-0.09</td></tr></table>

# MIXTURE OF NORMAL DISTRIBUTIONS

In the mixture of normal distributions model, the fat tails are obtained through subordination. The model considered for the log-returns is:

$$ d \log S (t) = \mu d t + \sigma g (t) d W
$$ where  $\mu$  and  $\sigma$  are associated with the normal process of an individual trade.  $W$  is a standard Brownian motion. This model becomes the standard geometric Brownian motion when  $g(t)$  is constant.  $g(t)$  is a subordinator and positive increasing random process that characterizes the market trading activity time.


If  $g(t)$  is assumed to be lognormally distributed with mean  $\mu_{\mathrm{s}}$  and standard deviation  $\sigma_{\mathrm{s}}$ , this mixture process is also referred to as the normal-lognormal mixture. The probability density function for the normal-lognormal mixture is given in Clark (1973).

Other kinds of mixtures exist in the literature, such as a normal-gamma mixture, also referred to as a variance gamma process (Madan and Seneta, 1990). In this entry, we only illustrate the normal-lognormal mixture, one of the simplest mixture models. The estimated parameters for the normal-lognormal mixture are shown in Table 4.

The mixture of normal distributions utilizes the concept of a subordinated process. Clark (1973) assumes that trading volume is a plausible measure of the evolution of price dynamics. Indeed, a sizeable literature has demonstrated a strong positive contemporaneous correlation between trading volume and return volatility (see, for example, Andersen, 1996). More specifically, the distribution of log-returns occurring

Table 4 Parameter Estimates with the Mixture Distribution for Monthly S&P 500, Weekly MSCI EM, and Weekly MSCI EAFE Returns

<table><tr><td></td><td>μ</td><td>σ</td><td>μs</td><td>σs</td></tr><tr><td>S&amp;P 500 Monthly</td><td>0.0075</td><td>0.0382</td><td>0.0006</td><td>1.193</td></tr><tr><td>MSCI EM Weekly</td><td>0.0019</td><td>0.0206</td><td>0.0002</td><td>1.241</td></tr><tr><td>MSCI EAFE Weekly</td><td>0.0013</td><td>0.0152</td><td>0.0003</td><td>1.280</td></tr></table> from a given level of trading volume is subordinate to the distribution of an individual trade and directed by the distribution of the trading volume. By assuming the normal distribution for the individual trade and finite moments for the distribution of the trading volume, Clark (1973) proves that the mixed distribution has fat tails with all moments finite.


The mixture of normal distributions is intuitively appealing because it is directly linked to market microstructure such as information flow, trading volume, and number of transactions. The subordinated process premise has also evolved into stochastic volatility that now receives vigorous attention in the finance literature (see Andersen, 1996). In general, mixture of normal distributions has fat tails but does not obey time scaling. A generalized mixture of normal distributions, however, can describe volatility clustering.

# GARCH Models

General autoregressive conditional heteroscedasticity (GARCH) models, first introduced by Bollerslev (1986), are now widely employed in financial time-series analyses. In particular, they are used to predict short horizon volatilities (ranging from one day to one month).

The return generating process is based on geometric Brownian motion but with the variance being a time-dependent GARCH(1,1) process, which is defined by the relation:

$$
\sigma_ {t} ^ {2} = \alpha_ {0} + \alpha_ {1} r _ {t - 1} ^ {2} + \beta_ {1} \sigma_ {t - 1} ^ {2}
$$ where  $\alpha_0, \alpha_1,$  and  $\beta_{1}$  are the control parameters of the GARCH(1,1) stochastic process.  $r_t$  is a random variable with zero mean and variance  $\sigma_t^2$ , and is characterized by a conditional probability density function  $f_{t}(x)$ , which is arbitrary but is often chosen to be Gaussian. In this entry, the innovation  $\sigma_t^2$  is assumed to be Gaussian. These three control parameters are estimated by the maximum likelihood method and shown in Table 5.


Table 5 Parameter Estimates with the GARCH(1,1) Model for Monthly S&P 500, Weekly MSCI EM, and Weekly MSCI EAFE Returns

<table><tr><td></td><td>α0</td><td>α1</td><td>β1</td></tr><tr><td>S&amp;P 500 Monthly</td><td>0.00006</td><td>0.1291</td><td>0.8474</td></tr><tr><td>MSCI EM Weekly</td><td>0.00002</td><td>0.1431</td><td>0.8309</td></tr><tr><td>MSCI EAFE Weekly</td><td>0.00002</td><td>0.0897</td><td>0.8815</td></tr></table>

GARCH models assume that volatility changes with time and with past information. Because of the time-dependent volatility, the unconditional distribution of returns exhibit fat tails. GARCH models allow for volatility clustering or autocorrelation in the volatility.

The most popular GARCH model is GARCH (1,1). The scaling properties of GARCH(1,1) are not clear from the theory; however, numerical simulations of GARCH(1,1) with Gaussian innovations show that it fails to describe the scaling properties of high-frequency data (see Mantegna and Stanley, 1999).

GARCH(1,1) processes are unconditionally stationary with finite variance if  $1 - \alpha_{1} - \beta_{1} > 0$ , and have finite kurtosis if  $1 - \beta_{1}^{2} - 2\alpha_{1}\beta_{1} - 3\alpha_{1}^{2} > 0$ .

# MODELING RETURN DISTRIBUTIONS FOR MAJOR INDEXES

Applications of the Lévy stable, Student's  $t$ , and mixture of normal distribution models in modeling market indexes are well documented (see, for example, Mandelbrot [1963], Clark [1973], Blattberg and Gonedes [1974], Markowitz and Usmen [1996], Hurst and Platen [1997], Martin, Rachev and Siboulet [2003], Platen and Sidorowicz [2007], etc.). The literature offered detailed methodology on how the model parameters are estimated. In some cases, they performed comparisons for these models.

Mantegna and Stanley (1999) studied the TLF model and GARCH(1,1) with Gaussian innovations processes. They found that the TLF model well describes the time scaling, while it is not able to properly describe the volatility clustering. The GARCH(1,1) model seems to be complementary to the TLF: It is able to describe the volatility clustering, but it fails to describe the time scaling. As mentioned earlier, however, the GARCH model with TLF innovations might offer a better solution to the TLF model or GARCH with Gaussian innovations.


Many previous studies have focused on high-frequency data such as daily return data. Here, we are interested in weekly or monthly data because investors typically have a relatively long investment horizon and portfolios are often rebalanced monthly. We apply these fact-tailed models to some well-known weekly or monthly returns of equity indexes. Our test assets include the monthly S&P 500 total return index, the weekly MSCI Emerging Market index, and the weekly MSCI EAFE index. One reason to use weekly data is to have more data points in the tails given that the MSCI indexes have relatively short histories. A few other equity and fixed income indexes, such as the MSCI UK, U.S. Long-Term Government Bond, Muni bonds, and some individual stocks were tested with the same methodologies and the results are similar, so they are not reported (e.g., Xiong, 2010).


We apply the maximum likelihood method to calibrate model parameters as previous studies did. The estimated parameters for the TLF, Student's  $t$ , normal-lognormal mixture, and GARCH(1,1) are shown in Tables 2, 3, 4, and 5, respectively. Since we are more interested in modeling downside risk, our goal is to fit the model's tail distribution to the empirical tail distribution in terms of CVaR through Monte Carlo simulations.

Table 6 focuses on nonstable distribution models and presents the empirical statistics as well as the Monte Carlo simulation results for the six models. The statistics for each model

Table 6 Statistics Summary for Historical Returns, as Well as Simulated Returns for Lognormal, Log-TLF, Log Student's  $t$  ,Log Skewed Student’s  $t$  ,Normal-Lognormal Mixture,and GARCH(1,1) Models

<table><tr><td colspan="6">S&amp;P 500 Monthly</td></tr><tr><td></td><td>Mean</td><td>Std Dev</td><td>Skewness</td><td>Kurtosis</td><td>CVaR</td></tr><tr><td>Empirical</td><td>0.93\%</td><td>5.54\%</td><td>0.35</td><td>12.45</td><td>-12.20\%</td></tr><tr><td>Lognormal</td><td>0.93\%</td><td>5.54\%</td><td>0.16</td><td>3.05</td><td>-9.96\%</td></tr><tr><td>log-TLF</td><td>0.93\%</td><td>5.54\%</td><td>0.59</td><td>12.90</td><td>-12.20\%</td></tr><tr><td>log-Student t</td><td>0.93\%</td><td>5.54\%</td><td>1.35</td><td>47.93</td><td>-10.91\%</td></tr><tr><td>log-Skewed t</td><td>0.93\%</td><td>5.54\%</td><td>0.69</td><td>50.70</td><td>-11.91\%</td></tr><tr><td>Mixture</td><td>0.93\%</td><td>5.54\%</td><td>1.02</td><td>18.85</td><td>-11.34\%</td></tr><tr><td>GARCH(1,1)</td><td>0.93\%</td><td>5.54\%</td><td>0.46</td><td>9.50</td><td>-10.77\%</td></tr><tr><td colspan="6">MSCI EM Weekly</td></tr><tr><td>Empirical</td><td>0.25\%</td><td>3.04\%</td><td>-0.52</td><td>8.38</td><td>-7.45\%</td></tr><tr><td>Lognormal</td><td>0.25\%</td><td>3.04\%</td><td>0.09</td><td>3.02</td><td>-5.88\%</td></tr><tr><td>log-TLF</td><td>0.25\%</td><td>3.04\%</td><td>-0.38</td><td>12.29</td><td>-7.45\%</td></tr><tr><td>log-Student t</td><td>0.25\%</td><td>3.04\%</td><td>0.71</td><td>22.90</td><td>-6.49\%</td></tr><tr><td>log-Skewed t</td><td>0.25\%</td><td>3.04\%</td><td>-0.81</td><td>14.23</td><td>-7.45\%</td></tr><tr><td>Mixture</td><td>0.25\%</td><td>3.04\%</td><td>0.62</td><td>16.10</td><td>-6.76\%</td></tr><tr><td>GARCH(1,1)</td><td>0.25\%</td><td>3.04\%</td><td>0.58</td><td>23.91</td><td>-6.47\%</td></tr><tr><td colspan="6">MSCI EAFE Weekly</td></tr><tr><td>Empirical</td><td>0.16\%</td><td>2.29\%</td><td>-0.76</td><td>10.25</td><td>-5.27\%</td></tr><tr><td>Lognormal</td><td>0.16\%</td><td>2.29\%</td><td>0.07</td><td>3.01</td><td>-4.47\%</td></tr><tr><td>log-TLF</td><td>0.16\%</td><td>2.29\%</td><td>-0.47</td><td>9.25</td><td>-5.27\%</td></tr><tr><td>log-Student t</td><td>0.16\%</td><td>2.29\%</td><td>0.46</td><td>16.71</td><td>-4.93\%</td></tr><tr><td>log-Skewed t</td><td>0.16\%</td><td>2.29\%</td><td>-0.18</td><td>13.03</td><td>-5.27\%</td></tr><tr><td>Mixture</td><td>0.16\%</td><td>2.29\%</td><td>0.52</td><td>16.71</td><td>-5.17\%</td></tr><tr><td>GARCH(1,1)</td><td>0.16\%</td><td>2.29\%</td><td>0.10</td><td>4.20</td><td>-4.73\%</td></tr></table> are based on 1,000,000 simulated random returns that follow the corresponding distribution models. It can be seen that the lognormal model underestimates the monthly CVaR by  $2.04\%$  for the S&P 500, the weekly CVaR by  $1.57\%$  for the MSCI EM, and the weekly CVaR by  $0.8\%$  for the MSCI EAFE, respectively. The log Student's  $t$ -distribution, normal-lognormal mixture, and GARCH(1,1) have similar CVaR estimates, and all of them are better than the lognormal model but appear to underestimate the tail risk. On the other hand, both the log-TLF model and the log skewed Student's  $t$ -model provide a good fit for CVaR for all three indexes: S&P 500, MCSI EM, and MSCI EAFE.


Note that the log Student's  $t$ , normal-lognormal mixture, and GARCH(1,1) are positively skewed by design in a way similar to the lognormal distribution because we are working with the log-returns. The positive skewness resulted from taking the exponential function on the log-returns. None of these three models can account for negative skewness without modifications.

Therefore there are two reasons why the log-TLF and the log skewed Student's  $t$ -models do well in fitting the CVaR. First, their tails are appropriately fat, and second, both of them are able to capture negative skewness. For the TLF model, the fatness of the tail is controlled by  $\alpha$  and the cutoff length and the skewness is controlled by  $\beta$  as shown in Table 2. For the skewed Student's  $t$ -distribution, the fatness of the tail is controlled by the degrees of freedom  $\nu$  and the skewness is controlled by  $\lambda$  as shown in Table 3.

Figures 4, 5, and 6 compare the log-TLF model with other models in fitting the historical return distributions for monthly S&P 500 returns, weekly MSCI EM returns, and weekly MSCI EAFE returns, respectively. The figures confirm the results shown in Table 6. It can be seen that the log-TLF provides a good fit for the three indexes. The log skewed Student's  $t$  is almost as effective as the log-TLF model in fitting CVaRs. Compared to the log skewed Student's  $t$ -distribution, the log-TLF has a fatter but shorter tail because of the truncation. On the other hand, the normal-lognormal mixture

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/e7f5b14345a6cce19e731598eef2d1377e439be346011946c7b056d357f9a0c2.jpg)
Figure 4 The Historical Distributions of S&P 500 Monthly Returns Fitted by the Log-TLF, Log Skewed Student's  $t$ , Normal-Lognormal Mixture, GARCH(1,1), and Lognormal Models

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/abec096a54029ad0d26eeab8e7d627e043b94aeb6f41fa22ba43b8fcce9b525d.jpg)
Figure 5 The Historical Distributions of MSCI EM Weekly Returns Fitted by the Log-TLF, Log Skewed Student's  $t$ , Normal-Lognormal Mixture, GARCH(1,1), and Lognormal Models

<table><tr><td>◇ Historical</td><td>log-TLF</td><td>-- log Skewed-t</td></tr><tr><td>Mixture</td><td>--- GARCH</td><td>--- Lognormal</td></tr></table> and GARCH(1,1) model have CVaRs that fall between those of the log-TLF and lognormal models. The finding for the log symmetric Student's  $t$ -distribution, not plotted due to space limitations, is similar to the normal-lognormal mixture and GARCH(1,1) model.


Table 7 summarizes the underestimated CVaRs for the six models that have been applied to the three indexes. The underestimated tails are reported on a relative basis based on CVaR estimates shown in Table 6. For example, the lognormal model underestimates the monthly CVaR by a relative percentage of  $18\%$ $(= \frac{12.2 - 9.96}{12.2})$  for the S&P 500 index.


Averaging over the three indexes, the lognormal model underestimates the CVaR by about  $18\%$  on a relative basis. The normal-lognormal mixture, the log Student's  $t$ -distribution, and

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/4db830f2c433931025d6618109a682c7ca7606e942a8de9194b234d56bed43a7.jpg)
Figure 6 The Historical Distributions of MSCI EAFE Weekly Returns Fitted by the Log-TLF, Log Skewed Student's  $t$ , Normal-Lognormal Mixture, GARCH(1,1), and Lognormal Models

Table 7 Underestimated CVaRs in Relative Percentage for the Six Models

<table><tr><td>Index</td><td>S&amp;P 500</td><td>MSCI EM</td><td>MSCI EAFE</td></tr><tr><td>Data Range</td><td>1926.1–2010.3</td><td>1988.1–2010.4</td><td>1976.1–2010.4</td></tr><tr><td>Number of Periods</td><td>1011 Monthly</td><td>1164 Weekly</td><td>1792 Weekly</td></tr><tr><td>Lognormal</td><td>18\%</td><td>21\%</td><td>15\%</td></tr><tr><td>Log-TLF</td><td>0\%</td><td>0\%</td><td>0\%</td></tr><tr><td>Log Student&#x27;s t</td><td>11\%</td><td>13\%</td><td>6\%</td></tr><tr><td>Log Student&#x27;s Skewed t</td><td>2\%</td><td>0\%</td><td>0\%</td></tr><tr><td>Normal-Lognormal Mixture</td><td>7\%</td><td>9\%</td><td>2\%</td></tr><tr><td>GARCH(1,1)</td><td>12\%</td><td>13\%</td><td>10\%</td></tr></table>

GARCH(1,1) with Gaussian innovations perform better than the lognormal model but appear to underestimate the CVaR by about  $6\%$ ,  $10\%$ , and  $12\%$ , respectively. In contrast, both the log-TLF and log skewed  $t$ -distribution did a better job in modeling the CVaR.

# KEY POINTS

- It is well known that asset returns often exhibit fat tails, negative skewness, time scaling, and volatility clustering. Fat-tailed and skewed models can be used to estimate the downside risk of assets. It is important that the selected models are able to capture fat tails and skewness, among others.
- The lognormal distribution is the fundamental assumption of many important financial models, but it has thin tails and thus can significantly underestimate the downside risk. On the other side, the Lévy stable distribution exhibits time scaling and fat tails, but it tends to overestimate the downside risk due to its infinite variance.
- The Student's  $t$ -distribution can model fat tails but not negative skewness. A modification results in the skewed Student's  $t$ -distribution, which can model both fat tails and negative skewness. However, both of them do not possess time scaling properties and cannot model volatility clustering.
- The normal-lognormal mixture is intuitive as it is directly linked to market microstructure such as information flow and trading volume. It has fat tails but cannot model negative skewness. In general, it does not possess time scaling.


- The truncated Lévy flight model can describe the asymptotic return distributions measured at all frequencies and the scaling properties (self-similarities). More specifically, for a small time interval (e.g., a minute), this distribution approximates a Lévy stable distribution with Lévy stable scaling; while for a significantly large but finite time interval (e.g., a year), the truncated Lévy flight distribution slowly converges to a Gaussian distribution. It has finite four moments and can model both fat tails and negative skewness.
- The truncated Lévy flight or tempered stable distribution model cannot describe volatility clustering. In contrast, GARCH with Gaussian innovations can model volatility clustering but it is often found that the tail is not fat enough. Recent studies show that a GARCH with truncated Lévy flight innovations appears to be able to describe most of the stylized empirical facts: fat tails, skewness, and volatility clustering.

# NOTE

1. For details, see http://academic2.american.edu/\~jpnolan/stable/stable.html/

# REFERENCES

Akgiray, V., and Booth, G. G. (1988). The stable-law model of stock returns. Journal of Business & Economic Statistics 6: 51-57.

Anderson, T. (1996). Return volatility and trading volume: An information flow interpretation of stochastic volatility. Journal of Finance 51, 169-204.

Artzner, P., Delbaen, F., Eber, J. M., and Heath, D. (1999). Coherent measures of risk. Mathematical Finance 9, 3: 203-228.
Bachelier, L. (1900). Théorie de la spéculation. Doctoral dissertation. Annales Scientifiques de l'École Normale Supérieure (ii) 17, 21-86. Trans. P. H. Cootner, ed. (1964). The Random Character of Stock Market Prices. Cambridge, MA: MIT Press.
Blattberg, R. C., and Gonedes, N. J. (1974). A comparison of the stable and Student distributions as statistical models for stock prices. Journal of Business 47, 244-280.
Bollerslev, T. (1986). Generalized autoregressive conditional heteroskedasticity. Journal of Econometrics 31, 3: 307-327.
Boyarchenko, S. I., and Levendorskii, S. Z. (2000). Option pricing for truncated Lévy processes. International Journal of Theoretical and Applied Finance 3.
Carr, P., Geman, H., Madan, D., and Yor, M. (2002). The fine structure of asset returns: An empirical investigation. The Journal of Business 75, 2: 305-332.
Clark, P. K. (1973). A subordinated stochastic process model with finite variance for speculative prices. *Econometrica* 41, 135-155.
Fama, E. F. (1965). The behavior of stock-market prices. The Journal of Business 38, 1: 34-105.
Gopikrishnan, P., Meyer, M., Amaral, L.A.N., and Stanley, H. E. (1998). Inverse cubic law for the distribution of stock price variations. The European Physical Journal B, 3, 2: 139-140.
Hansen, B. E. (1994). Autoregressive conditional density estimation. International Economic Review 35, 705-730.
Hurst, S. R., and Platen, E. (1997). The Marginal Distributions of Returns and Volatility. Lecture Notes—Monograph Series. Vol. 31,  $L_{1}$ -Statistical Procedures and Related Topics, pp. 301-314. Institute of Mathematical Statistics.
Kim, Y., Rachev, S., Bianchi, M., and Fabozzi, F. (2008). A new tempered stable distribution and its application to finance. In G. Bol, S. T. Rachev, and R. Würth, (Eds.), Risk Assessment: Decisions in Banking and Finance, pp. 51-84. Physika Verlag, Springer.
Kim, Y., Rachev, S., Bianchi, M., and Fabozzi, F. (2010). Tempered stable and tempered infinitely divisible GARCH models. Journal of Banking and Finance.

Koponen, I. (1995). Analytic approach to the problem of convergence of truncated Lévy flights towards the Gaussian stochastic process. Physical Review E, 52.

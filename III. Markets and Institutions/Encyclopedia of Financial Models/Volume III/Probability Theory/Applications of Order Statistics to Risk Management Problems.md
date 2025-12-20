
# Applications of Order Statistics to Risk Management Problems

RADU TUNARU, PhD

Professor of Quantitative Finance, Business School, University of Kent

Abstract: Value-at-risk (VaR) calculation based on parametric models is in essence an estimation problem. The point estimates should be interpreted accompanied by their confidence intervals. Risk management for complex portfolios may consider simultaneously two or more VaR confidence levels. The quantiles used for VaR estimation at different orders such as  $1\%$  and  $5\%$  are not independent and therefore should be analyzed jointly. Consequently, it would be useful to establish confidence regions for bivariate VaR estimates that will provide the risk managers with a valuable tool for verifying the accuracy of their estimation process, as requested by external audit. A trade-off between the complexity of probability distribution underlying the model and the degree of robustness achieved is recommended.

While there are many models used for calculations of risk management measures such as value-at-risk (VaR) and expected tail loss (ETL), there are not many tools available to a risk manager to verify whether the models chosen are very good in practice. In this entry, we highlight some practical aspects of VaR and ETL calculus that are underpinned by theoretical results on order statistics. More precisely, we show how to compute VaR and ETL based on quantile sample statistics and how to derive the probability distribution of this estimator. The most important development in this entry is that we illustrate how to control the backtesting of two risk measures, given by different specifications of confidence levels such as  $99\%$  and  $95\%$ . Usually there is a difference between the confidence level that a bank may use internally and the confidence level required by a regulator. Then the risk manager should make sure that the risk models used perform well for both confidence levels.


# PERFORMANCE OF VaR ESTIMATION

VaR is widely used in the financial industry as a measure for market risk in normal conditions. This concept has a strong influence on bank capital, some of the major implications of this estimation process being described in Jackson et al. (1997). The European Capital Adequacy Directive allows internal risk management models. Marshall and Siegel (1997) found great errors in the estimation methods used in the industry. Berkowitz and O'Brien (2002) investigated the accuracy of value-at-risk models used by a sample of large commercial banks and their analysis revealed discrepancies in the performance of their models. Brooks and Persand (2002) analyzed common methodologies for calculating VaR and concluded that simpler models provide better performance than very complex models. In the light of severe market disruptions and appeal for more stringent measures, the issue of how reliable is the model used for market risk is of paramount importance.


The estimation of VaR is a statistical exercise and the risk manager, trader, or quant analyst has to consider the reliability of the estimates proposed, especially when large amounts of money are involved. Although there is a plethora of models for VaR pointwise estimation, reviewed for example in Duffie and Pan (1997) and Jorion (1996, 1997), the literature on the confidence associated with these estimators is sparse. Jorion (1996) was among the first researchers to consider the uncertainty associated with VaR models leading to model risk. Kupiec (1995) suggested that it may be very hard to determine statistically the accuracy of VaR estimates. After his seminal paper, Pritsker (1997) and Dowd (2001) showed how to employ order statistics for assessing the VaR accuracy. Dowd (2000) described how to build confidence intervals for VaR estimates using simulations methods but his technique was illustrated only for some special cases linked to the Gaussian distribution.

Calibrating the models is not always easy and for auditing and backtesting purposes the prespecified level of confidence can play an important role. The nonlinearity in results when calculating VaR at various levels of confidence means that, based on the same model, conclusions obtained in backtesting at one level cannot be extrapolated to other levels. In other words, we can have a model with very good forecasting power at  $5\%$  and quite bad results at  $1\%$ , or vice versa.

# VaR AND DIFFERENT LEVELS OF CONFIDENCE

The starting point of VaR modeling is a time series  $Y_{1}, Y_{2}, \ldots, Y_{n}$  of profit and loss observations (P/L); the time series consists of past returns or simulated returns. If the critical level (of confidence) for VaR is specified as  $\alpha$  (e.g., 10\%, 5\%, 1\%), for a given sample the VaR is determined from the empirical quantile at  $\alpha \%$ , which we shall denote by  $z_{\alpha}$ . This means that, if  $F(y) = \int_{-\infty}^{y} f(u) du$  is the cumulative density function of returns, then  $F(z_{\alpha}) = \alpha$  and the probability area to the right of  $z_{\alpha}$  is equal to 1 —  $\alpha$ . One of the main assumptions made with many models for calculating VaR is that the returns  $Y_{1}, Y_{2}, \ldots, Y_{n}$  are independent and identically distributed (IID). This is extremely important in supporting the idea that VaR (for future returns) can be forecasted based on past data. If the IID assumption is not true, then the empirical quantile cannot be simply calculated from a formula.

Let  $\eta$  be the number of times the realized losses exceed the VaR threshold. The risk manager expects ex ante that  $\mathbb{E}(\eta) = n\alpha$ . However, ex post it is likely that  $\eta \neq n\alpha$ . For backtesting, the daily loss series implies a sequence of success or failure, depending whether the loss is greater than VaR threshold or not. The probability of failure is  $\alpha$  and therefore, with  $n$  datapoints, the probability density function of  $\eta$  is given by the binomial distribution with parameters  $\eta$  and  $\alpha$

$$ p (\eta = x) = \left( \begin{array}{c} n \\ x \end{array} \right) \alpha^{x} (1 - \alpha)^{n - x} \tag {1}
$$ for  $x\in \{0,1,2,\ldots \}$  . If the sample size  $n$  is large enough, the central limit theorem implies that  $\frac{\eta - n\alpha}{\sqrt{n\alpha(1 - \alpha)}}$  follows a standard Gaussian distribution. An asymptotic confidence interval for the number of losses that will be seen  $\eta$  can then be easily calculated. For example, a  $95\%$  asymptotic confidence interval for  $\eta$  is


$$
\begin{array}{l} - 1. 9 6 \sqrt{n \alpha (1 - \alpha)} + n \alpha <   \eta \\ <   1. 9 6 \sqrt{n \alpha (1 - \alpha)} + n \alpha \tag {2} \\ \end{array}
$$

From the probabilistic point of view the  $\mathrm{P /L}$  values constitute a random sample  $\{\Upsilon_1,\Upsilon_2,\dots ,\Upsilon_n\}$  with cumulative distribution function

$$
F \left(y_{1}, y_{2}, \dots , y_{n}; \theta\right) = \prod_{i = 1}^{n} F_{k} \left(y_{k}; \phi_{k}\right) = \prod_{i = 1}^{n} F \left(y; \phi\right)
$$ where the last equality follows from the IID assumptions. For the empirical calculations of VaR the reordered sample  $(Y_{[1]}, Y_{[2]}, \ldots, Y_{[n]})$ , with  $Y_{[1]} \leq Y_{[2]} \leq \ldots \leq Y_{[n]}$  is of interest because the VaR at level  $\alpha$  is equal to the negative of the  $\nu$ -th lowest value, where  $\nu = 100\alpha + 1$ . The statistic  $Y_{[1]}$  is called the first order statistic,  $Y_{[2]}$  is called the second order statistic, and so on.  $Y_{[n]}$  is called the  $n$ -th order statistic, and they are all sample quantiles. The theory of order statistics allows making calculations on sample quantiles. This translates for empirical work based on the sample above into calculating the negative of the  $\nu$ -th lowest value, where  $\nu = n\alpha + 1$ , or  $Y_{[\nu]}$ .


The portfolio losses can be analyzed through the empirical cumulative distribution function

$$
\tilde {F} (y) = \left\{ \begin{array}{l l} 0 & \text{if } y <   Y_{[ 1 ]} \\ \frac{j}{n} & \text{if } Y_{[ j ]} \leq y <   Y_{[ j + 1 ]} \\ 1 & \text{if } y \geq Y_{[ v ]} \end{array} \right. \tag {3}
$$

The inverse of this empirical cdf can be used as an estimator of VaR at  $\alpha$  level. The VaR estimator is the order statistic  $Y_{[j]}$  such that  $\frac{j - 1}{\upsilon} < \alpha \leq \frac{j}{\upsilon}$ , which is slightly different from the upper empirical cumulative distribution function value calculated as the  $Y_{[j]}$  such that  $\frac{j - 1}{\upsilon} \leq \alpha < \frac{j}{\upsilon}$ . Mausser (2001) pointed out that with 100 IID P/L values, the VaR at  $5\%$  level would be estimated by the former estimator as  $Y_{[5]}$  and by the latter as  $Y_{[6]}$ .

One major criticism in using VaR to quantify potential losses is the inability to gauge the size of extreme losses. To overcome this problem another risk measure called expected tail loss (ETL) has been introduced. The ETL is defined as the mean losses that exceed the VaR threshold. Hence, within the same framework proposed to calculate VaR, one can determine ETL by simply estimating the mean of the sam ple censored by the VaR estimate. If  $Y_{[j]}$  is the order statistic estimator representing VaR, ETL can be estimated as the average of  $(Y_{[1]}, Y_{[2]}, \ldots, Y_{[j-1]})$ . It is important to realize that while ETL may be more informative for gauging the potential losses than VaR, from an estimation point of view ETL will always depend on VaR.


The calculation of VaR and expected tail loss (ETL) with the order statistics methodology can be easily implemented in Matlab. Table 1 contains the VaR and ETL as estimated via the order statistics method for simulated samples using the Gaussian distribution and the  $t$  distribution for the series of  $\mathrm{P /L}$ , at various confidence levels and sample sizes. In addition, the confidence intervals determined as the  $0.025\%$  and  $0.975\%$  percentiles of the distribution of each risk measure are also included. For a given sample size, the confidence intervals for both VaR and ETL are widening with the increase in the level of confidence, as shown in Figures 1 and 2. Similar results are obtained for larger sample sizes and other distributions. For a prespecified level of confidence, the confidence intervals tend to go narrower with the increase in the sample size.

# JOINT PROBABILITY DISTRIBUTIONS FOR ORDER STATISTICS

If  $F_{[i]}(u) = P(Y_{[i]}\leq u)$  is the cumulative distribution function of the  $i$ -th order statistic, then it is not difficult to see that  $F_{[1]}(y) = 1 - [1 - F(y;\phi)]^n$  and  $F_{[n]}(y) = F[(y;\phi)]^n$ . Exploiting the fact that we use the quantile as a VaR estimator, Dowd (2001) suggested applying the following known result from order statistics for backtesting purposes

$$
\begin{array}{l} P (\text{ex ac tl y} j \text{va lu es fr om} Y_{1}, Y_{2}, \dots , Y_{n} \text{ar e} \leq y) \\ = \binom {n} {j} F (y; \phi)^{j} [ 1 - F (y; \phi) ]^{n - j} \tag {4} \\ \end{array}
$$ to derive the cumulative distribution function of this estimator


$$
F_{[ j ]} (y) = P \left(Y_{[ j ]} \leq y\right) = \sum_{i = j}^{n} \binom {n} {i} F (y; \phi)^{i} [ 1 - F (y; \phi) ]^{n - i} \tag {5}
$$

Table 1 Order Statistics for VaR and ETL for One-Day Holding Period at  $90\%$ $95\%$  and  $99\%$  Confidence Levels and Various Sample Sizes Using Standard Normal Distribution and t Distribution

<table><tr><td rowspan="2">Sample size</td><td rowspan="2">Level</td><td rowspan="2">Measure</td><td colspan="3">Normal</td><td colspan="3">t</td></tr><tr><td>2.50\%</td><td>Median</td><td>97.5\%</td><td>2.50\%</td><td>Median</td><td>97.5\%</td></tr><tr><td rowspan="6">n = 100</td><td rowspan="2">90\%</td><td>VaR</td><td>0.9299</td><td>1.2816</td><td>1.5874</td><td>0.9247</td><td>1.2770</td><td>1.5854</td></tr><tr><td>ETL</td><td>1.4677</td><td>1.7535</td><td>2.0120</td><td>1.4671</td><td>1.7538</td><td>2.0198</td></tr><tr><td rowspan="2">95\%</td><td>VaR</td><td>1.2116</td><td>1.6449</td><td>2.0078</td><td>1.2068</td><td>1.6435</td><td>2.0130</td></tr><tr><td>ETL</td><td>1.6956</td><td>2.0614</td><td>2.3788</td><td>1.6975</td><td>2.0670</td><td>2.3974</td></tr><tr><td rowspan="2">99\%</td><td>VaR</td><td>1.6031</td><td>2.3263</td><td>2.8160</td><td>1.6012</td><td>2.3407</td><td>2.8520</td></tr><tr><td>ETL</td><td>2.0254</td><td>2.6640</td><td>3.1116</td><td>2.0335</td><td>2.6897</td><td>3.1677</td></tr><tr><td rowspan="6">n = 500</td><td rowspan="2">90\%</td><td>VaR</td><td>1.1278</td><td>1.2816</td><td>1.4263</td><td>1.1268</td><td>1.2807</td><td>1.4256</td></tr><tr><td>ETL</td><td>1.6269</td><td>1.7535</td><td>1.8748</td><td>1.6271</td><td>1.7515</td><td>1.8758</td></tr><tr><td rowspan="2">95\%</td><td>VaR</td><td>1.4543</td><td>1.6449</td><td>1.8218</td><td>1.4537</td><td>1.6446</td><td>1.8220</td></tr><tr><td>ETL</td><td>1.8985</td><td>2.0614</td><td>2.2150</td><td>1.8996</td><td>2.0598</td><td>2.2176</td></tr><tr><td rowspan="2">99\%</td><td>VaR</td><td>1.9921</td><td>2.3263</td><td>2.6185</td><td>1.9930</td><td>2.3292</td><td>2.6236</td></tr><tr><td>ETL</td><td>2.3650</td><td>2.6640</td><td>2.9299</td><td>2.3685</td><td>2.6653</td><td>2.9385</td></tr><tr><td rowspan="6">n = 1000</td><td rowspan="2">90\%</td><td>VaR</td><td>1.1735</td><td>1.2816</td><td>1.3850</td><td>1.1731</td><td>1.2811</td><td>1.3847</td></tr><tr><td>ETL</td><td>1.6644</td><td>1.7535</td><td>1.8401</td><td>1.6645</td><td>1.7513</td><td>1.8405</td></tr><tr><td rowspan="2">95\%</td><td>VaR</td><td>1.5110</td><td>1.6449</td><td>1.7719</td><td>1.5108</td><td>1.6447</td><td>1.7720</td></tr><tr><td>ETL</td><td>1.9467</td><td>2.0614</td><td>2.1715</td><td>1.9473</td><td>2.0590</td><td>2.1727</td></tr><tr><td rowspan="2">99\%</td><td>VaR</td><td>2.0899</td><td>2.3263</td><td>2.5425</td><td>2.0906</td><td>2.3278</td><td>2.5447</td></tr><tr><td>ETL</td><td>2.4519</td><td>2.6640</td><td>2.8604</td><td>2.4539</td><td>2.6623</td><td>2.8643</td></tr><tr><td rowspan="6">n = 5000</td><td rowspan="2">90\%</td><td>VaR</td><td>1.2337</td><td>1.2816</td><td>1.3285</td><td>1.236</td><td>1.2815</td><td>1.3284</td></tr><tr><td>ETL</td><td>1.7139</td><td>1.7535</td><td>1.7926</td><td>1.7140</td><td>1.7510</td><td>1.7927</td></tr><tr><td rowspan="2">95\%</td><td>VaR</td><td>1.5857</td><td>1.6449</td><td>1.7027</td><td>1.5856</td><td>1.6448</td><td>1.7027</td></tr><tr><td>ETL</td><td>2.0105</td><td>2.0614</td><td>2.1114</td><td>2.0106</td><td>2.0583</td><td>2.1116</td></tr><tr><td rowspan="2">99\%</td><td>VaR</td><td>2.2214</td><td>2.3263</td><td>2.4274</td><td>2.2216</td><td>2.3266</td><td>2.4278</td></tr><tr><td>ETL</td><td>2.5695</td><td>2.6640</td><td>2.7556</td><td>2.5700</td><td>2.6600</td><td>2.7562</td></tr><tr><td rowspan="6">n = 10000</td><td rowspan="2">90\%</td><td>VaR</td><td>1.2478</td><td>1.2816</td><td>1.3148</td><td>1.2478</td><td>1.2815</td><td>1.3148</td></tr><tr><td>ETL</td><td>1.7256</td><td>1.7535</td><td>1.7813</td><td>1.7256</td><td>1.7510</td><td>1.7813</td></tr><tr><td rowspan="2">95\%</td><td>VaR</td><td>1.6031</td><td>1.6449</td><td>1.6859</td><td>1.6031</td><td>1.6448</td><td>1.6859</td></tr><tr><td>ETL</td><td>2.0256</td><td>2.0614</td><td>2.0968</td><td>2.0255</td><td>2.0582</td><td>2.0969</td></tr><tr><td rowspan="2">99\%</td><td>VaR</td><td>2.2524</td><td>2.3263</td><td>2.3984</td><td>2.2525</td><td>2.3265</td><td>2.3985</td></tr><tr><td>ETL</td><td>2.5974</td><td>2.6640</td><td>2.7292</td><td>2.5976</td><td>2.6597</td><td>2.7296</td></tr></table>

Note: The number of degrees of freedom for  $t$  is chosen as the sample size minus 2.

In the following we shall denote  $F(y; \phi)$  by  $F(y)$ , for simplicity. David (1981) pointed to the following useful result giving an analytical formula for the distribution function of the order statistic of order  $j$ .

$$
F_{[ j ]} (y) = \mathcal {B}_{F (y)} (j, n - j + 1) \tag {6}
$$ where  $\mathcal{B}_U(a,b) = \frac{\int_0^U t^{a - 1}(1 - t)^{b - 1}dt}{\mathrm{B}(a,b)}$  is the incomplete beta function and  $B(a,b)$  is the beta function. This helps to calculate the pdf function for those distributions that are absolute continuous with respect to a dominant probability measure. The probability density function of


the  $j$ -th order statistics is

$$ q_{[ j ]} (y) = \frac{1}{B (j , n - j + 1)} F^{j - 1} (y) [ 1 - F (y) ]^{n - j} f (y) \tag {7}
$$ where  $f(y) = \frac{dF}{dy}(y)$ .


# DISTRIBUTION-FREE CONFIDENCE INTERVALS FOR VaR

From a practical point of view, without any loss of generality, it is safe to assume that the cumulative distribution function  $F$  is strictly increasing. Then, for any  $\alpha \in (0,1)$  the equation

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/e3300afbe7b455c90d1d01221783fe4f744eb1a5fd8544b4792ac69217409688.jpg)
Figure 1 Expected Tail Loss for Normal P/L versus Level of Confidence When the Sample Size Is 100; Calculations Are Done with Order Statistics


$$
F (y) = \alpha \tag {8}
$$ has a unique solution. This solution refers to the entire population and it is called the quantile of order  $\alpha$ , denoted by  $z_{\alpha}$ . The  $95\%$  VaR is  $z_{0.05}$ .


The order statistics can provide a distribution-free confidence interval for the population quantiles. Thompson (1936) showed that

$$
P \left(Y_{[ i ]} \leq z_{\alpha} \leq Y_{[ j ]}\right) = \sum_{k = i}^{j - 1} \binom {n} {k} \alpha^{k} (1 - \alpha)^{n - k} \tag {9}
$$

This powerful result allows the construction of distribution-free confidence intervals for VaR. For given sample size  $n$  and VaR level  $\alpha$ , there are many combinations of  $i$  and  $j$  that make the quantity in (9) larger or equal to  $1 - a$ , the confidence level desired. There may be several combinations of order statistics  $Y_{[i]}$ ,  $Y_{[j]}$  that satisfy the relationship (9) and the risk manager may decide to select the combination leading to the shortest confidence interval. Remark that choosing the degree of confidence  $1 - a$  is independent of the level of confidence  $\alpha$  for VaR point-estimation. In other words, a  $95\%$  confidence interval for the population quantile  $z_{\alpha}$  can be calculated for  $95\%$  VaR or for  $99\%$  VaR.


# BIVARIATE ORDER STATISTICS

The risk manager is faced with a dilemma. On one hand the regulators are asking usually for  $99\%$  VaR calculation so that the banks are requested to set aside sufficient capital in order to absorb  $99\%$  of all losses. On the other hand, internal models may be used for day-to-day operations to forecast  $95\%$  Var. As explained by Brooks and Persand (2002) using an example from Kupiec (1995), the standard error of the

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/bab83360b40f66090af9a1340a3f244fac64e84cc5e7ed27e0d44b0b3e1aae8c.jpg)
Normal VaR against confidence level
Figure 2 VaR for Normal P/L versus Level of Confidence When the Sample Size Is 100; Calculations Are Done with Order Statistics

$99\%$  VaR can be more than  $50\%$  larger than the corresponding standard error for the  $95\%$  VaR. This is the case for a model using the Gaussian distribution and it can be even worse for fat tail distributions, with the confidence intervals for the first percentile four times wider than confidence intervals for the fifth percentile. For backtesting purposes it would be ideal to do a joint analysis. Thus, the bivariate joint distribution of two order statistics will provide the confidence regions (two-dimensional sets) for pairs of VaR estimates. For example, the confidence regions for  $1\%$  VaR and  $5\%$  VaR are recovered from the bivariate joint distribution of  $\Upsilon_{[v1]}$ ,  $\Upsilon_{[v2]}$  where  $\upsilon_{1} = n\times 1 / 100 + 1$  and  $\upsilon_{2} = n\times 5 / 100 + 1$ , respectively. This distribution is fully characterized by

$$
F_{[ i, j ]} (x, y) = P \left(Y_{[ i ]} \leq x, Y_{[ j ]} \leq y\right) \tag {10}
$$ with  $1 \leq i < j \leq n$ . The probability on the right side of equation (10) can be interpreted as the


probability that at least  $i$  values from the entire sample  $Y_{1}, Y_{2}, \ldots, Y_{n}$  are not greater than  $x$  and at least  $j$  values from the same sample  $Y_{1}, Y_{2}, \ldots, Y_{n}$  are not greater than  $y$ . Hence

$$
\begin{array}{l} F_{[i,j]}(x,y) = \sum_{k = j}^{n}\sum_{s = i}^{k}P(\text{exactly} i\text{of} Y_{1},Y_{2},\ldots ,Y_{n}\\ \text{are} <  x\text{and} \\ \text{ex ac tl y} j \text{of} Y_{1}, Y_{2}, \dots , Y_{n} \text{ar e} \leq y) \tag {11} \\ \end{array}
$$

As in the univariate case, see David (1981), it follows that

$$
\begin{array}{l} F_{[ i, j ]} (x, y) = \sum_{k = j}^{n} \sum_{s = i}^{k} \frac{n !}{s ! (k - s) ! (n - k) !} \\ \times [ F (x) ]^{s} [ F (y) - F (x) ]^{k - s} [ 1 - F (y) ]^{n - k} \tag {12} \\ \end{array}
$$ for any  $x < y$ . Since for  $x \geq y$  the event  $\{Y_{[j]} \leq y\}$  implies  $Y_{[i]} \leq x$  then  $F_{[i,j]}(x,y) = F_{[j]}(y)$ .


An interesting corollary following from this result is that any two order statistics, and therefore VaR estimates at different levels, are not independent. This follows because the joint distribution in (12) cannot be factorized as a product of two factors, one depending only on  $x$  and the other only on  $y$ , up to a proportionality constant. In other words, if both 1\% VaR and 5\% VaR, for example, are needed for risk management purposes, then the quality of the VaR estimates should be investigated looking at the joint bivariate distribution like that in (12) rather than separate distributions of the type given in (5).

# KEY POINTS

- Order statistics can be used as estimators of VaR and ETL and they are easy to compute.
- Banks may have to work with VaR measures at several levels of confidence because of regulatory requirements that may not coincide exactly with internal risk management decisions.
ETL can be estimated easily with the framework based on order statistics, as the mean of the sample censored by the VaR threshold.
- For a given sample size, the confidence intervals for both VaR and ETL are widening with the increase in the level of confidence. For a prespecified level of confidence, the confidence intervals tend to go narrower with the increase in the sample size.
- There is a closed form solution for the density of any order statistic, which has been advocated here as a VaR estimator. Therefore, it would be easy to perform backtesting of VaR in this setup.
- The bivariate distribution of any two order statistics is known in closed form and therefore could be used for backtesting when banks have to work with two VaR measures simultaneously.

# NOTE

1. For practical cases such as those encountered in finance we can safely assume that the random variables describing P/L series are continuous and they have probability density functions.

# REFERENCES

Berkowitz, J., and O'Brien, J. (2002). How accurate are value-at-risk models at commercial banks. Journal of Finance 57, 3: 1093-1111.
Brooks, C., and Persand, G. (2002). Model choice and value-at-risk performance. *Financial Analysts Journal* 58, 5: 87-97.
David, H. (1981). Order Statistics, 2nd ed. New York: Wiley.
Dowd, K. (2000). Assessing VaR accuracy. Derivatives Quarterly 6, 3: 61-63.
Dowd, K. (2001). Estimating VaR with order statistics. Journal of Derivatives 8, 3: 23-30.
Duffie, D., and Pan, J. (1997). An overview of value-at-risk. Journal of Derivatives 4, 3: 7-49.
Jackson, P., Maude, D. J., and Perraudin, W. (1997). Bank capital and value-at-risk. Journal of Derivatives 4: 73-90.
Jorion, P. (1996). Risk2: Measuring the risk in value-at-risk. Financial Analysts Journal 52: 47-56.
Jorion, P. (1997). Value-at-Risk: The New Benchmark for Controlling Market Risk. Burr Ridge, IL: Irwin.
Kupiec, P. (1995). Techniques for verifying the accuracy of risk measurement models. Journal of Derivatives 3: 73-84.
Marshall, C., and Siegel, M. (1997). Value-at-risk: Implementing a risk measurement standard. Journal of Derivatives 4: 91-110.
Mausser, H. (2001). Calculating quantile-based risk analytics with l-estimators. ALGO Research Quarterly 4, 4: 33-47.
Pritsker, M. (1997). Evaluating VaR methodologies: Accuracy versus computational time. Journal of Financial Services Research 12: 201-241.
Thompson, W. (1936). On confidence ranges for the median and other expectation distributions for populations of unknown distribution form. Annals of Mathematical Statistics 42: 268-269.

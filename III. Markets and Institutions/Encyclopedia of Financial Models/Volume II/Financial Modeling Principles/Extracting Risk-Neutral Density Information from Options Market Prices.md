
# Extracting Risk-Neutral Density Information from Options Market Prices

ARTURO LECCADITO, PhD

Business Administration Department, Università della Calabria

RADU TUNARU, PhD

Professor of Quantitative Finance, Business School, University of Kent

Abstract: Information on risk-neutral density is valuable in financial markets for a wide range of participants. This density can be used to mark-to-market exotic options that are not very liquid on the market, for anticipation of effects determined by new policy or possible extreme events such as crashes, and even for designing new trading strategies. There are many models that have been proposed in the past for estimating the risk-neutral density, each with their pros and cons.

The concept of risk-neutral density (RND) plays an important theoretical role in asset pricing as outlined in Cox and Ross (1976), published very shortly after the publication of the Black-Scholes model. Since then, the estimation of RND has become an essential tool for central banks in monitoring the stability of the financial system and for measuring the impact of new policies. Investment banks also rely on the RND calibrated from liquid European vanilla options to determine the price of more exotic positions on their balance sheet that are not very liquid. Moreover, the first moments of the RND, such as implied volatility and skewness, can be used to design trading strategies.

One may argue that the information contained in option prices is redundant to the information provided by historical prices of the underlying asset. However, based on the 1987 stock market crash, Jackwerth and Rubinstein (1996) demonstrated that this is not the case. Prior to the crash, the RND estimated at one-month horizon had been close to lognormal but subsequently the shape of the RND changed considerably. At the same time, they also revealed that the historical distribution had been lognormal and it remained like that after the crash. In other words, the option prices in the equity market contain different information from the historical equity prices.


In this entry we highlight the main steps for estimating the RND associated with an equity index. We exemplify the estimation procedure by applying a model based on both the generalized inverse Gaussian distribution that has been advocated in the literature for financial modeling and the well-known lognormal mixture model that has been widely used by investment houses and central banks. These two models are straightforward and easy to apply since the option pricing formulas can be derived in closed form.


# AN APPROPRIATE PARAMETRIC MODEL

The RND is recovered from a bundle of European vanilla call and put option prices on the same underlying asset  $X$  and with the same maturity  $T$ . The options differ in the exercise price  $K$ . Denoting with  $f(\cdot)$  the probability density function of the underlying asset  $X$  under the risk-neutral probability measure  $\mathbb{Q}$ , the European vanilla call price for strike  $K$  is

$$
C (K) = e ^ {- r T} \int_ {K} ^ {\infty} \left(X _ {T} - K\right) f \left(X _ {T}\right) d X _ {T} \tag {1}
$$ where  $r$  is the continuous compounding risk-free rate.


The partial derivative of 1 with respect to the strike price  $K$

$$
\begin{array}{l} \frac {\partial C}{\partial K} = e ^ {- r T} \frac {\partial}{\partial k} \left[ \int_ {K} ^ {\infty} (X _ {T} - K) f (X _ {T}) d X _ {T} \right] \\ = - e ^ {- r T} \int_ {K} ^ {\infty} f (X _ {T}) d X _ {T} = - e ^ {- r T} [ 1 - F (K) ] \\ \end{array}
$$ where  $F(\cdot)$  is the cumulative distribution function under the risk-neutral measure. Thus


$$
F (K) = e ^ {r T} \frac {\partial C}{\partial K} + 1 \tag {2}
$$

The RND probability function  $f$  can be obtained by derivation of the cumulative function  $F$

$$ f (K) = e ^ {r T} \frac {\partial^ {2} C}{\partial K ^ {2}} \tag {3}
$$

One could then try to reconstruct either  $F$  or  $f$  from a grid of option prices using finite difference schemes. However, such numerical methods are notoriously unreliable and very sensitive to the sample of option prices available.

Over the years, two main classes of methods have emerged. First, parametric methods are underpinned by univariate distributions such as the Weibull distribution (see Savickas, 2002, 2005), the generalized beta distribution (see McDonald and Xu, 1995; Anagnou et al., 2005), the generalized lambda distribution (see Corrado, 2001), the generalized gamma distribution (see Albota et al., 2009), the g-and-h distribution as proposed by Dutta and Babbel (2005); and a mixture of univariate distributions such as that proposed by Gemmill and Saflekos (2000) for two lognormals, and Melick and Thomas (1997) for three lognormals.


The second class is defined by semiparametric and nonparametric methods such as (1) expansion methods as used by Jarrow and Rudd (1982) and Corrado and Su (1997), (2) direct fitting of the implied volatility curve with splines or other interpolation methods as described by Shimko (1993), Anagnou et al. (2003), and Brunner and Hafner (2003), (3) kernel methods developed in Ait-Sahalia and Lo (1998) and Ait-Sahalia and Duarte (2003), and (4) maximum entropy methods as applied by Buchen and Kelly (1996) and Avellaneda (1998).

The nonparametric approach usually requires a large sample of data in order to achieve a good fit. In financial markets, for many asset classes, large samples may simply not be available. In this entry, we focus on the fully parametric approach.

The strategy for parametric models represented by a vector of parameters  $\theta$  is to minimize some type of discrepancy measure between the theoretical options prices and the observed market prices.

Given the availability of  $N$  European call options  $\{C(K_{i_j})\}_{j = 1,\dots,N}$  and  $M$  put options  $\{P(K_{s_j})\}_{j = i,\dots,M}$ , all with the same maturity  $T$ , the problem that must be solved is the minimization of the function

$$
\begin{array}{l} H _ {1} (\theta) = \sum_ {j = 1} ^ {N} \left[ C \left(K _ {i _ {j}}\right) - C ^ {m k t} \left(K _ {i _ {j}}\right) \right] ^ {2} \\ + \sum_ {j = 1} ^ {M} \left[ P \left(K _ {s _ {j}}\right) - P ^ {m k t} \left(K _ {s _ {j}}\right) \right] ^ {2} \tag {4} \\ \end{array}
$$ subject to the forward constraint  $\mathbb{E}^{\mathbb{Q}}[X_T] = F_0$  where  $F_{0}$  is the forward price on the same underlying asset  $X$  and the last term of the sum accounts for the forward martingale condition that must be satisfied for any parametric model. The notation  $C^{mkt}$ , and  $P^{mkt}$ , relates, respectively, to the actual option prices from the market. The function  $H$  is a discrepancy measure between the theoretical prices obtained under the chosen parametric RND  $f(\cdot ;\theta)$  and the market prices.


While the  $H$  in (4) is widely used in practice, it is sometimes useful to consider other potential discrepancy measures such as

$$
\begin{array}{l} H _ {2} (\theta) = \sum_ {j = 1} ^ {N} \frac {\left[ C \left(K _ {i _ {j}}\right) - C ^ {m k t} \left(K _ {i _ {j}}\right) \right] ^ {2}}{C ^ {m k t} \left(K _ {i _ {j}}\right)} \\ + \sum_ {j = 1} ^ {M} \frac {\left[ P \left(K _ {s _ {j}}\right) - P ^ {m k t} \left(K _ {s _ {j}}\right) \right] ^ {2}}{P ^ {m k t} \left(K _ {s _ {j}}\right)} \\ \end{array}
$$

$$
\begin{array}{l} H _ {3} (\theta) = \sum_ {j = 1} ^ {N} \frac {\left[ C \left(K _ {i _ {j}}\right) - C ^ {m k t} \left(K _ {i _ {j}}\right) \right] ^ {2}}{C \left(K _ {i _ {j}}\right)} \\ + \sum_ {j = 1} ^ {M} \frac {\left[ P \left(K _ {s _ {j}}\right) - P ^ {m k t} \left(K _ {s _ {j}}\right) \right] ^ {2}}{P \left(K _ {s _ {j}}\right)} \\ \end{array}
$$

$$
\begin{array}{l} H _ {4} (\theta) = \sum_ {j = 1} ^ {N} \left| \left[ C \left(K _ {i _ {j}}\right) - C ^ {m k t} \left(K _ {i _ {j}}\right) \right] \right| \\ + \sum_ {j = 1} ^ {M} \left| \left[ P \left(K _ {s _ {j}}\right) - P ^ {m k t} \left(K _ {s _ {j}}\right) \right] \right| \\ \end{array}
$$

Since the market option prices that do not satisfy put-call parity are filtered out of the data used for calibration, it is possible to work with call prices only or with put prices only, if that is more convenient numerically.

# TWO PARAMETRIC MODELS FOR RND ESTIMATION

In order to be able to reverse engineer the RND from options prices, a pricing formula for European vanilla options under the chosen distribution is needed. There is a great advantage in having the pricing formulas in closed form, oth erwise numerical integral approximation methods must be employed and this means that there is a risk of introducing errors in the estimation procedure.


Here we illustrate the RND estimation procedure for two special cases, the general inverse Gaussian (GIG) distribution and the lognormal mixture (LnMix) distribution. For both models, closed-form solutions for pricing European options are available.

# Pricing Options with the GIG Distribution

The GIG distribution has been advocated for applications in financial modeling due to its flexibility to fit heavy tails (see Bibby and Sorensen, 2003). The probability density function of the GIG distribution is

$$
\begin{array}{l} f _ {\mathrm {G I G}} (x; \lambda , \chi , \psi) = \frac {x ^ {\lambda - 1} \exp \left[ - \frac {1}{2} \left(\chi x ^ {- 1} + \psi x\right) \right]}{k _ {\lambda} (\chi , \psi)} \\ \times I _ {(0, \infty)} (x) \tag {5} \\ \end{array}
$$ where


$$ k _ {\lambda} (\chi , \psi) = \int_ {0} ^ {\infty} x ^ {\lambda - 1} \exp \left[ - \frac {1}{2} \left(\chi x ^ {- 1} + \psi x\right) \right] d x
$$ is a normalizing constant that is related to the modified Bessel function of the third kind,


$$
K _ {v} (z) = \frac {1}{2} \int_ {0} ^ {\infty} t ^ {v - 1} \exp \left[ - \frac {z}{2} \left(t ^ {- 1} + t\right) \right] d t \tag {6}
$$ via


$$
\mathrm {k} _ {\lambda} (\chi , \psi) = 2 \left(\frac {\chi}{\psi}\right) ^ {\lambda / 2} K _ {\lambda} (\sqrt {\chi \psi}) \tag {7}
$$

Further technical details on this distribution can be found in Paolella (2007).

The GIG distribution is well defined, or "proper," for the parameter domain

$$
\left\{\left(\lambda , \chi , \psi\right) \in \mathbb {R} \times (0, \infty) \times (0, \infty) \right\}
$$

There are also two boundary cases possible: (1)  $\lambda > 0$ ,  $\chi = 0$  and  $\psi > 0$  and (2)  $\lambda < 0$ ,  $\chi > 0$ and  $\psi = 0$ . Applying some standard algebraic routine leads to


$$
\begin{array}{l} P (K) = K e ^ {- r T} F _ {G I G} (K; \lambda , \chi , \psi) \\ - e ^ {- r T} \int_ {0} ^ {K} x F _ {\mathrm {G I G}} (x; \lambda , \chi , \psi) \mathrm {d} x \\ = K e ^ {- r T} F _ {\mathrm {G I G}} (K; \lambda , \chi , \psi) \\ - e ^ {- r T} \frac {k _ {\lambda + 1} (\chi , \psi)}{k _ {\lambda} (\chi , \psi)} \\ \times \int_ {0} ^ {K} f _ {\mathrm {G I G}} (x; \lambda + 1, \chi , \psi) \mathrm {d} x \\ = K e ^ {- r T} F _ {\mathrm {G I G}} (K; \lambda , \chi , \psi) \\ - e ^ {- r T} \sqrt {\frac {\chi}{\psi}} \frac {K _ {\lambda + 1} (\sqrt {\chi \psi})}{K _ {\lambda} (\sqrt {\chi \psi})} \\ \times F _ {\mathrm {G I G}} (K; \lambda + 1, \chi , \psi) \\ \end{array}
$$

This formula can be rewritten in terms of the forward price  $F_0 = \mathbb{E}^Q (X_T)$  as

$$
\begin{array}{l} P (K) = K e ^ {- r T} F _ {\mathrm {G I G}} (K; \lambda , \chi , \psi) \\ - F _ {0} e ^ {- r T} F _ {\mathrm {G I G}} (K; \lambda + 1, \chi , \psi) \tag {8} \\ \end{array}
$$

# RND Estimation with the LnMix Distribution

The importance of fat tails and non-normal distributions in modeling equity stock and vanilla options has become prominent in the aftermath of the Black Monday 1987 crisis. The LnMix model is a convex combination of several lognormal individual models. Bahra (1997) was the first to propose using the LnMix model for RND estimation. An exact solution for options pricing of vanilla European call and put options can be derived as a weighted sum of standard Black-Scholes prices. In practice, the preferred mixture model is the one based on two individual lognormal models.


If  $LN(x;\alpha ,\beta)$  is the lognormal distribution with parameters  $\alpha$  and  $\beta$ , then the LnMix distribution is given by the following probability density function

$$
\begin{array}{l} f _ {L N} (x; \alpha_ {1}, \beta_ {1}, \alpha_ {2}, \beta_ {2}, \eta) = \eta L N (x; \alpha_ {1}, \beta_ {1}) \\ + (1 - \eta) L N (x; \alpha_ {2}, \beta_ {2}) \tag {9} \\ \end{array}
$$

Bahra (1997) described the formulas for pricing European vanilla call and put options

$$
\begin{array}{l} C (K) = e ^ {- r T} \left\{\eta \left[ e ^ {\left(\alpha_ {1} + 0. 5 \beta_ {1} ^ {2}\right)} N (d _ {1}) - K N (d _ {2}) \right] \right. \\ + (1 - \eta) \left[ e ^ {\left(\alpha_ {2} + 0. 5 \beta_ {2} ^ {2}\right)} N \left(d _ {3}\right) - K N \left(d _ {4}\right) \right] \} \\ \end{array}
$$

$$
\begin{array}{l} P (K) = e ^ {- r T} \left\{\eta \left[ e ^ {\left(\alpha_ {1} + 0. 5 \beta_ {1} ^ {2}\right)} N \left(d _ {1}\right) - K N \left(d _ {2}\right) \right] \right. \\ + (1 - \eta) \left[ e ^ {\left(\alpha_ {2} + 0. 5 \beta_ {2} ^ {2}\right)} N \left(d _ {3}\right) - K N \left(d _ {4}\right) \right] \} \\ \end{array}
$$ where


$$ d _ {1} = \frac {\alpha_ {1} + \beta_ {1} ^ {2} - \log (K)}{\beta_ {1}}, \quad d _ {2} = d _ {1} - \beta_ {1}
$$

$$ d _ {3} = \frac {\alpha_ {2} + \beta_ {2} ^ {2} - \log (K)}{\beta_ {2}}, d _ {4} = d _ {3} - \beta_ {2}
$$ and  $N$  is the standard normal cumulative distribution function.


This model has five parameters  $\alpha_{1},\beta_{1},\alpha_{2},\beta_{2}$  and  $\eta$  and one should expect a better fit of data with this model compared to the GIG model that has only three parameters. If the calibration goodness-of-fit results are very similar between the two models, then the model with fewer parameters should be preferred based on the principle of parsimony.

Table 1 Call Option Prices on May 29, 1998, on the FTSE100 Index

<table><tr><td>T</td><td>F0</td><td>DF</td><td>5700</td><td>5750</td><td>5800</td><td>5850</td><td>5900</td><td>5950</td><td>6000</td><td>6050</td></tr><tr><td>Sep-98</td><td>5915.50</td><td>0.98</td><td>418.81</td><td>385.79</td><td>354.00</td><td>323.51</td><td>294.41</td><td>266.76</td><td>240.62</td><td>216.06</td></tr><tr><td>Dec-98</td><td>6000.11</td><td>0.96</td><td>586.56</td><td>553.83</td><td>521.93</td><td>490.86</td><td>460.62</td><td>431.28</td><td>402.89</td><td>375.54</td></tr><tr><td>Mar-99</td><td>6079.46</td><td>0.95</td><td>727.12</td><td>694.31</td><td>662.15</td><td>630.57</td><td>599.56</td><td>569.19</td><td>539.56</td><td>510.77</td></tr><tr><td>Jun-99</td><td>6128.55</td><td>0.93</td><td>837.32</td><td>804.79</td><td>772.79</td><td>741.21</td><td>710.02</td><td>679.35</td><td>649.34</td><td>620.15</td></tr><tr><td>Sep-99</td><td>6195.66</td><td>0.91</td><td>950.32</td><td>917.58</td><td>885.27</td><td>853.33</td><td>821.71</td><td>790.54</td><td>759.96</td><td>730.09</td></tr><tr><td>Dec-99</td><td>6269.07</td><td>0.90</td><td>1061.20</td><td>1028.20</td><td>995.70</td><td>963.43</td><td>931.46</td><td>899.9</td><td>868.85</td><td>838.46</td></tr><tr><td>Mar-00</td><td>6341.98</td><td>0.88</td><td>1167.80</td><td>1134.70</td><td>1001.90</td><td>1069.40</td><td>1037.2</td><td>1005.40</td><td>974.12</td><td>943.36</td></tr><tr><td>Jun-00</td><td>6383.58</td><td>0.87</td><td>1250.20</td><td>1217.30</td><td>1184.70</td><td>1152.30</td><td>1120.30</td><td>1088.60</td><td>1057.40</td><td>1026.70</td></tr></table>

Note: Initial value  $X_0 = 5843.32$ . In the second column the forward prices are reported. The third column reports the discount factors. Strike prices range from 5700 to 6050.

Table 2 Discrepancy Measures across Maturities for the Data in Table 1

<table><tr><td></td><td>Sep-98</td><td>Dec-98</td><td>Mar-99</td><td>Jun-99</td><td>Sep-99</td><td>Dec-99</td><td>Mar-00</td><td>Jun-00</td></tr><tr><td>H1GIG</td><td>2.66E-05</td><td>3.21E-05</td><td>4.97E-05</td><td>5.32E-05</td><td>6.98E-05</td><td>8.03E-05</td><td>2.87E-04</td><td>1.41E-04</td></tr><tr><td>H1LnMix</td><td>2.64E-05</td><td>3.96E-05</td><td>5.12E-05</td><td>6.75E-05</td><td>8.85E-05</td><td>1.03E-04</td><td>2.90E-04</td><td>1.36E-04</td></tr><tr><td>H2GIG</td><td>5.26E-04</td><td>4.04E-04</td><td>4.82E-04</td><td>4.33E-04</td><td>4.91E-04</td><td>4.99E-04</td><td>1.58E-03</td><td>7.30E-04</td></tr><tr><td>H2LnMix</td><td>5.23E-04</td><td>4.98E-04</td><td>4.94E-04</td><td>5.50E-04</td><td>6.23E-04</td><td>6.37E-04</td><td>1.61E-03</td><td>7.00E-04</td></tr><tr><td>H3GIG</td><td>5.12E-04</td><td>4.93E-04</td><td>4.90E-04</td><td>5.46E-04</td><td>6.19E-04</td><td>6.34E-04</td><td>1.57E-03</td><td>6.98E-04</td></tr><tr><td>H3LnMix</td><td>5.15E-04</td><td>4.00E-04</td><td>4.78E-04</td><td>4.31E-04</td><td>4.89E-04</td><td>4.97E-04</td><td>1.55E-03</td><td>7.27E-04</td></tr><tr><td>H4GIG</td><td>0.0128</td><td>0.0140</td><td>0.0176</td><td>0.0181</td><td>0.0207</td><td>0.0222</td><td>0.0374</td><td>0.0294</td></tr><tr><td>H4LnMix</td><td>0.0127</td><td>0.0156</td><td>0.0177</td><td>0.0203</td><td>0.0233</td><td>0.0251</td><td>0.0376</td><td>0.0288</td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/76a29b67-ac4d-47f0-86d4-1e10a3a8dda0/a20fd787fc2fe47267df9afbe1e4d093dee970613abaa3b5cbb2471f3dbfe49c.jpg)
(a) Sep 98

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/76a29b67-ac4d-47f0-86d4-1e10a3a8dda0/faa40a13b35ebebf5a2b7ecc8844fd5946b5cc12be999bb9f6130e05bf1378fc.jpg)
(b) Dec 98

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/76a29b67-ac4d-47f0-86d4-1e10a3a8dda0/06941d30c6f35d66d7a4c781ce1c18baa0d3e651d3328f47a21a03869304adea.jpg)
(c) Mar 99

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/76a29b67-ac4d-47f0-86d4-1e10a3a8dda0/33fa4324c51abf83d591d3b03864a8a46558e7049865f027a59c4e55f21fb8e0.jpg)
(d) Jun 99
Figure 1 Absolute Percentage Errors for the First Four Maturities

# FITTING THE MODELS TO DATA

For the RND estimation with a parametric model, the main elements are (1) formulas for pricing either European call or European put options, together with a formula for the forward price, (2) a minimization procedure for a nonlinear function such as  $H_{1}$  in the function given by (4), and (3) a set of market option prices.

Here we illustrate the calibration of the GIG and LnMix models using a dataset reported in Table 1, which is described in Rebonato (2004, pp. 290-291), and it is a typical example for the UK equity market.

The goodness of fit of the two models can be assessed to some extent from the results in Table 2, which reports the values obtained for the sum of squared residual  $H_{1}(\hat{\theta};m)$ , where  $\hat{\theta} = \arg \min_{\theta}H_{1}(\theta ;m)$  and  $m$  is the vector with

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/76a29b67-ac4d-47f0-86d4-1e10a3a8dda0/e4c28cddb1153da513974ebbfb678a5d063b91456cfd3876189da956899f0df5.jpg)
(a) Sep 99

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/76a29b67-ac4d-47f0-86d4-1e10a3a8dda0/a10e7259e62d91e417b0dde105667adf2b87d67f98489963736dce26377308a7.jpg)
(b) Dec 99

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/76a29b67-ac4d-47f0-86d4-1e10a3a8dda0/9091130cc999f26e467953d552ffb13bef9578b3d5603243976d0713730bfbeb.jpg)
(c) Mar 00

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/76a29b67-ac4d-47f0-86d4-1e10a3a8dda0/741b23390c6d3fe25b5efebb7b55aa2d10170a9775145afd37fdc0d50fc13b52.jpg)
(d) Jun 00 components  $K_{j} / X_{0}$  reflecting moneyness. The smaller the value, the better is the fit. It is interesting that the GIG distribution, having three parameters, seems to calibrate across maturities very closely and is even a superior fit than the lognormal mixture (LnMix) model that uses five parameters.
Figure 2 Absolute Percentage Errors for the Last Four Maturities


A more informative comparison can be done by looking at the error structure versus moneyness. The fitting error for the two models and for each maturity are plotted in Figures 1 and 2 as the absolute percentage errors, defined for the European call option prices as  $100 \times |C(\hat{\theta};m) - C^{mkt}(m)| / C^{mkt}(m)$ , where  $C(\hat{\theta};m)$  is the same as the theoretical prices established in equation (1), which is calculated for the estimated parameter vector  $\hat{\theta}$  following the minimization procedure focused on the function given in (4). In the neighborhood of at-themoney prices, the absolute percentage error is less than  $1\%$ , while out-of-the-money or in-themoney, it may go even higher.

Which parametric model to use depends on the task at hand. It is possible that some parametric models perform better for some asset classes (such as foreign exchange), while other models perform better for different asset classes (such as equity). Some models may have a superior fit in the tails.

# KEY POINTS

- The information contained in the risk-neutral density is useful to many participants in financial markets. Central banks use this information in monitoring the stability of the financial system and for assessing the impact of new policies, and banks use it for marking positions in exotic derivatives that they hold.
To recover the RND, a bundle of market prices for European vanilla call and put options on the same underlying asset and with the same maturity is used.
- Parametric and nonparametric models have been proposed for estimating the RND. For several reasons, in practice, parametric models are better to employ. The main elements of a parametric model to estimate RND are an option pricing formula combined with a forward price formula, a minimization procedure, and a database of observed option prices.


- RND estimation can be done easily with parametric models for which pricing formulas are available for European vanilla options. The generalized inverse Gaussian model and the lognormal mixture model are examples of such models.
- The calibration is done by minimizing a discrepancy measure between the theoretical model prices and the observed option market prices.

# NOTE

1.  $I_A(x)$  is the indicator function being equal to 1 when  $x \in A$  and zero otherwise.

# REFERENCES

Ait-Sahalia, Y., and J. Duarte. (2003). Nonparametric option pricing under shape restrictions. Journal of Econometrics 116:9-47.
Ait-Sahalia, Y., and Lo, A. W. (1998). Nonparametric estimation of state-price densities implicit in financial asset prices. Journal of Finance 53: 499-547.
Albota, G., Fabozzi, F., and Tunaru, R. (2009). Estimating risk-neutral density with parametric models in interest rate markets. Quantitative Finance 9: 55-70.
Anagnou, I., Bedendo, M., Hodges, S., and Tompkins, R. (2005). The relation between implied and realized probability density functions. Review of Futures Markets 11: 41-66.
Avellaneda, M. (1998). Minimum-relative-entropy calibration of asset-pricing models. International Journal of Theoretical & Applied Finance 1: 447-472.
Bahra, B. (2007). Implied risk-neutral probability density functions from option prices: Theory and application. Report ISSN 1368-5562, Bank of England, London, EC2R 8AH.
Bibby, B. M., and Sorensen, M. (2003). Hyperbolic processes in finance. In Handbook of Heavy-Tailed

Distributions in Finance, ed. S. T. Rachev. Chichester: Elsevier-North Holland, pp. 211-244.
Brunner, B., and Hafner, R. (2003). Arbitrage-free estimation of the risk-neutral density from the implied volatility smile. Journal of Computational Finance 7: 75-106.
Buchen, P. W., and Kelly, M. (1996). The maximum entropy distribution of an asset inferred from option prices. Journal of Financial & Quantitative Analysis 31: 143-159.
Corrado, C. J. (2001). Option pricing based on the generalized lambda distribution. Journal of Futures Markets 21: 213-236.
Corrado, C. J., and Su, T. (1997). Implied volatility skews and stock index skewness and kurtosis implied by S&P 500 index option prices. Journal of Derivatives 4: 8-19.
Cox, J., and Ross, S. (1976). The valuation of options for alternative stochastic processes. Journal of Financial Economics 3: 145-166.
Dutta, K. K., and Babbel, D. F. (2005). Extracting probabilistic information from the prices of interest rate options: Tests of distributional assumptions. Journal of Business 78: 841-870.

Gemmill, G., and Saflekos, G. (2000). How useful are implied distributions? Evidence from stock-index options. Journal of Derivatives 7: 83-98.

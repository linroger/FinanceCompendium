
---
title: "Stable and Tempered Stable Distributions"
parent_directory: "Probability Theory"
formatted: "2025-12-21 11:30:00 AM"
formatter_model: "kimi-k2-turbo"
cli-tool: "claude-code"
primary_tags:
  - stable distributions
  - tempered stable distributions
  - infinitely divisible distributions
  - levy processes
cssclasses: academia
---

# Stable and Tempered Stable Distributions

SVETLOZAR T. RACHEV, PhD, Dr Sci

Frey Family Foundation Chair-Professor, Department of Applied Mathematics and Statistics, Stony Brook University, and Chief Scientist, FinAnalytica


YOUNG SHIN KIM, PhD

Research Assistant Professor, School of Economics and Business Engineering, University of Karlsruhe and KIT

MICHELE LEONARDO BIANCHI, PhD

Research Analyst, Specialized Intermediaries Supervision Department, Bank of Italy

FRANK J. FABOZZI, PhD, CFA, CPA

Professor of Finance, EDHEC Business School

Abstract: In financial models for asset pricing and asset allocation, asset returns and prices are assumed to follow a normal or Gaussian distribution. However, the properties of the normal distribution are not consistent with the observed behavior found for real-world asset returns. More specifically, the symmetric and rapidly decreasing tail properties of asset return distributions cannot describe the skewed and fat-tailed properties of the empirical distribution of asset returns. The alpha-stable distribution or $\alpha$-stable distribution has been proposed as an alternative to the normal distribution for modeling asset returns because it allows for skewness and fat tails. Recent research since the turn of the century has introduced alternative distributions such as the tempered stable distributions to better describe asset returns.

In finance, the normal or Gaussian distribution has been the underlying assumption in describing asset returns in major financial theories such as the capital asset pricing theory and option pricing theory. In the early 1960s, Benoit Mandelbrot, a mathematician at

IBM's Thomas J. Watson Research Center, presented empirical evidence regarding returns on commodity prices and interest rate movements that strongly rejected the assumption that asset returns are normally distributed (see Mandelbrot, 1963). The mainstream financial models at the time relied on the work of Louis Bachelier, a French mathematician who at the beginning of the 20th century was the first to formulate random walk models for stock prices (see Bachelier, 1900). Bachelier's work assumed that relative price changes followed a normal distribution. Mandelbrot's findings led a leading financial economist, Paul Cootner of MIT, to warn the academic community that Mandelbrot's finding may mean that "past econometric work is meaningless" (see Cootner, 1964).


In Mandelbrot's attack on the normal distribution, he suggested that asset returns are more appropriately described by a non-normal stable distribution referred to as a stable Paretian distribution or alpha-stable distribution ( $\alpha$ -stable distribution), so named because the tails of this distribution have Pareto power-type decay. The reason for describing this distribution as "non-normal stable" is because the normal distribution is a special case of the stable distribution. Because of the work by Paul Lévy, a French mathematician who introduced and characterized the non-normal stable distribution, this distribution is also referred to as the Lévy stable distribution and the Pareto-Lévy stable distribution.

There are two other facts about asset return distributions that have been supported by empirical evidence. First, distributions have been observed to be skewed or nonsymmetric. That is, unlike in the case of the normal distribution where there is a mirror imaging of the two sides of the probability distribution, typically in a skewed distribution one tail of the distribution is much longer (i.e., has greater probability of extreme values occurring) than the other tail of the probability distribution. Probability distributions with this attribute are referred to as having fat tails or heavy tails. The second finding is the tendency of large changes in asset prices (either positive or negative) to be followed by large changes, and small changes to be followed by small changes. This attribute of asset return distributions is referred to as volatility clustering. In contrast to the normal distribution, the $\alpha$-stable distribution allows for skewness and fat tails.

# $\alpha$-STABLE DISTRIBUTION

In this section, we discuss a wide class of $\alpha$-stable distributions. We review the definition and the basic properties of the $\alpha$-stable distribution. We further present the class of smoothly truncated stable distributions which has been proposed by Menn and Rachev (2009) for dealing with the drawbacks of the $\alpha$-stable distribution.

# Definition of an  $\alpha$ -Stable Random Variable

We begin with a definition of an $\alpha$-stable random variable. Suppose that $X_{1}, X_{2}, \ldots, X_{n}$ are independent and identically distributed (IID) random variables, independent copies of $X$.

Then a random variable $X$ is said to follow an $\alpha$-stable distribution if there exist a positive constant $C_n$ and a real number $D_n$ such that the following relation holds:

$$
X_{1} + X_{2} + \dots + X_{n} \stackrel {{\mathrm{d}}} {{=}} C_{n} X + D_{n}
$$

The notation  $\stackrel{\mathrm{d}}{=}$  denotes equality in distribution. The constant  $C_n = n^{\frac{1}{\alpha}}$  dictates the stability property, which we will discuss later. When  $\alpha = 2$ , we have the Gaussian (normal) case. In subsequent discussions of the  $\alpha$ -stable distributions in this entry, we restrict ourselves to the non-Gaussian case in which  $0 < \alpha < 2$ .

For the general case, the density of the  $\alpha$ -stable distribution does not have a closed-form solution. The distribution is expressed by its characteristic function:

$$
\begin{array}{l} \phi_{\text{stable}} (\mu ; \alpha , \beta , \mu) = E \left[ e^{i u X} \right] \\ \left\{ \begin{array}{l l} \exp (i \mu u - | \sigma u |^{\alpha} (1 - i \beta (\text{si gn} u) \tan \frac{\pi \alpha}{2})), & \alpha \neq 1 \\ \exp (i \mu u - \sigma | u | (1 - i \beta \frac{2}{\pi} (\text{si gn} u) \ln | u |)), & \alpha = 1 \end{array} \right. \tag {1} \\ \end{array}
$$ where


$$
\operatorname{si gn} t = \left\{ \begin{array}{l l} 1, & t > 0 \\ 0, & t = 0 \\ - 1, & t <   0 \end{array} \right.
$$

The distribution is characterized by four parameters:

- $\alpha$: the index of stability or the shape parameter, $\alpha \in (0,2)$.
- $\beta$: the skewness parameter, $\beta \in [-1, +1]$.
- $\sigma$: the scale parameter, $\sigma \in (0, +\infty)$.
- $\mu$: the location parameter, $\mu \in (-\infty, +\infty)$.

When a random variable $X$ follows the $\alpha$-stable distribution characterized by those parameters, then we denote it by $X \sim S_{\alpha}(\sigma, \beta, \mu)$.

The three special cases where there is a closed-form solution for the densities are (1) the Gaussian case $(\alpha = 2)$, (2) the Cauchy case $(\alpha = 1, \beta = 0)$, and (3) the Lévy case $(\alpha = 1/2, \beta = \pm 1)$ with the following respective densities:

Gaussian: $f(x) = \frac{1}{2\sigma\sqrt{\pi}} e^{-\frac{(x - \mu)^2}{4\sigma^2}}$, $-\infty < x < \infty$

Cauchy: $f(x) = \frac{\sigma}{\pi((x - \mu)^2 + \sigma^2)}$, $-\infty < x < \infty$

Lévy: $f(x) = \frac{\sqrt{\sigma}}{\sqrt{2\pi}(x - \mu)^{3/2}} e^{-\frac{\sigma}{2(x - \mu)}}$, $\mu < x < \infty$

Because of the four parameters, the $\alpha$-stable distribution is highly flexible and suitable for modeling nonsymmetric, highly kurtotic, and heavy-tailed data. Figures 1 and 2 illustrate the effects of the shape and skewness parameters, respectively, on the shape of the distribution, with other parameters kept constant. As is evident from Figure 1, a lower value for $\alpha$ is attributed to heavier tails and higher kurtosis.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/868547f272fc2f31080490e22f1d0aa6b6b66315f342c128871fe6348a7296d0.jpg)
Figure 1 Illustration of  $\alpha$ -Stable Densities for Varying  $\alpha$ 's, with  $\beta = 0, \sigma = 1$ , and  $\mu = 0$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/218bb79e9f0316997dbc14337c69e5e4079c90b23b05bf1c89f0baa7126166b3.jpg)
Figure 2 Illustration of  $\alpha$ -stable Densities for Varying  $\beta$ 's, with  $\alpha = 1.25$ ,  $\sigma = 0.5$ , and  $\mu = 0$

# Useful Properties of an  $\alpha$ -Stable Random Variable

The four basic properties of the  $\alpha$ -stable distribution:

- Property 1. The power tail decay property means that the tail of the density function decays like a power function (slower than the exponential decay), which is what allows the distribution to capture extreme events in the tails:

$$
\mathbf {P} (| X | > x) \propto C \cdot x^{- \alpha}, x \rightarrow \infty
$$ for some constant  $C$ . More precisely, if  $X \sim S_{\alpha}(\sigma, \beta, \mu)$  with  $0 < \alpha < 2$  then


$$
\left\{ \begin{array}{l} \lim_{\lambda \to \infty} \lambda^{\alpha} \mathbf {P} (X > \lambda) = C_{\alpha} \frac{1 + \beta}{2} \sigma^{\alpha} \\ \lim_{\lambda \to \infty} \lambda^{\alpha} \mathbf {P} (X > - \lambda) = C_{\alpha} \frac{1 - \beta}{2} \sigma^{\alpha} \end{array} \right.
$$ where


$$
C_{\alpha} = \left\{ \begin{array}{l l} \frac{1 - \alpha}{\Gamma (2 - \alpha) \cos (\pi \alpha / 2)} & \mathrm{if} \alpha \neq 1 \\ \frac{2}{\pi} & \mathrm{if} \alpha \neq 1 \end{array} \right.
$$

- Property 2. Raw moments satisfy the property:

$$
E | X |^{p} <   \infty \text{for any} 0 <   p <   \alpha
$$

$$
E | X |^{p} = \infty \text{for any} p \geq \alpha
$$

- Property 3. Because of Property 2, the mean is finite only for  $\alpha > 1$ :

$$
E [ X ] = \mu \quad \text{for} \alpha > 1
$$

$$
E [ X ] = \infty \quad \mathrm{fo r} 0 <   \alpha \leq 1
$$

The second and higher moments are infinite, leading to infinite variance together with the skewness and kurtosis coefficients.

- Property 4. The stability property is a useful and convenient property and dictates that the distributional form of the variable is preserved under linear transformations. The stability property is governed by the stability parameter  $\alpha$  in the constant  $C_n$  (which appeared earlier in the definition of an  $\alpha$ -stable random variable):  $C_n = n^{1/\alpha}$ . As was stated earlier, smaller values of  $\alpha$  refer to a heavier-tailed distribution. The standard central limit theorem does not apply to the non-Gaussian case: An appropriately standardized large sum of IID random variables converges to an  $\alpha$ -stable random variable instead of a normal random variable.

The following examples illustrate the stability property. Suppose that  $X_1, X_2, \ldots, X_n$  are IID random variables with  $X_{i}\sim S_{\alpha}(\sigma_{i},\beta_{i},\mu_{i}),i = 1,2,\ldots ,n$  and a fixed  $\alpha$ . Then:


- The distribution of  $Y = \sum_{i}^{n} X_{i}$  is  $\alpha$ -stable with the index of stability  $\alpha$  and parameters:

$$
\beta = \frac{\sum_{i}^{n} \beta_{i} \sigma_{i}^{\alpha}}{\sum_{i}^{n} \sigma_{i}^{\alpha}}, \sigma = \left(\sum_{i}^{n} \sigma_{i}^{\alpha}\right)^{1 / \alpha}, \mu = \sum_{i}^{n} \mu_{i}
$$

- The distribution of  $Y = X_{1} + a$  for some real constant  $a$  is  $\alpha$ -stable with the index of stability  $\alpha$  and parameters:

$$
\beta = \beta_{1}, \sigma = \sigma_{1} \quad \mu = \mu_{1} + a
$$

- The distribution of  $Y = aX_{1}$  for some real constant  $a(a \neq 0)$  is  $\alpha$ -stable with the index of stability  $\alpha$  and parameters:

$$
\beta = (\operatorname{si gn} a) \beta_{1}
$$

$$
\sigma = | a | \sigma_{1}
$$

$$
\mu = \left\{ \begin{array}{l l} a \mu_{1} & \text{for} \alpha \neq 1 \\ a \mu_{1} - \frac{2}{\pi} a (\operatorname{In} a) \sigma_{1} \beta_{1} & \text{for} \alpha = 1 \end{array} \right.
$$

- The distribution of  $Y = -X_{1}$  is  $\alpha$ -stable with the index of stability  $\alpha$  and parameters:

$$
\beta = - \beta_{1}, \quad \sigma = \sigma_{1} \quad \mu = \mu_{1}
$$

# Smoothly Truncated Stable Distribution

In some special cases of financial modeling it might occur that the infinite variance of stable distributions make their application impossible. In many cases, the infinite variance of the return might lead to an infinite price for derivative instruments such as options, clearly contradicting reality and intuition. The modeler is confronted with a dilemma. On the one hand, the skewed and heavy-tailed return distribution disqualifies the normal distribution as a suitable candidate; on the other hand, theoretical restrictions in option pricing do not allow the application of the stable distribution due to its infinite moments of order higher than  $\alpha$ . For this reason, Menn and Rachev (2009) have sug gusted the use of appropriately truncated stable distributions.


The exact definition of truncated stable distributions is not that important at this point; that is why we restrict ourselves to a brief description of the idea. The density function of a smoothly truncated stable distribution (STS distribution) is obtained by replacing the heavy tails of the density function  $g$  of some stable distribution with parameters  $(\alpha, \beta, \sigma, \mu)$  by the thin tails of two appropriately chosen normal distributions  $h_1$  and  $h_2$ :

$$ f (x) = \left\{ \begin{array}{l l} h_{1} (x), & x <   a \\ g (x), & a \leq x \leq b \\ h_{2} (x),   x > b \end{array} \right.
$$

The parameters of the normal distributions are chosen such that the resulting function is the continuous density function of a probability measure on the real line. If it is possible to choose the cutting points  $a$  and  $b$  in a way that the resulting distribution possesses zero mean and unit variance, then we have found an easy way to characterize standardized STS distributions. In Figure 3, the influence of the stable parameters on the appropriate cutting points is examined. As  $\alpha$  approaches 2 (i.e., when the stable distribution approaches the normal distribution), we observe that the cutting points move to infinity. For small values of  $\alpha$ , in contrast, the interval  $[a, b]$  shrinks, reflecting the increasing heaviness of the tails of the stable distribution in the center.

Due to the thin tails of the normal density functions, the STS distributions admit finite moments of arbitrary order but nevertheless are able to explain extreme observations. Table 1 provides a comparison of tail probabilities for an arbitrarily chosen STS distribution with zero mean and unit variance and the standard normal distribution. As can be seen from the table, the probability of extreme events is much higher under the assumption of an STS distribution. STS distributions allow for skewness in the returns. Moreover, the tails behave like fat

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/a5674a0a82763a387bdec9e2b22499b1069406cf0852ee9e540d43de8f74e3a2.jpg)
Figure 3 Influence of the Stable Parameters on the Cutting Points  $a$  and  $b$

Table 1 Comparison of Tail Probabilities for a Standard Normal and a Standardized STS Distribution

<table><tr><td>x</td><td>P(X1 ≤ x) with X1 ~ N(0,1)</td><td>P(X2 ≤ x) with X2 ~ STS</td></tr><tr><td>-1</td><td>15.866\%</td><td>11.794\%</td></tr><tr><td>-2</td><td>2.275\%</td><td>2.014\%</td></tr><tr><td>-3</td><td>0.135\%</td><td>0.670\%</td></tr><tr><td>-4</td><td>0.003\%</td><td>0.356\%</td></tr><tr><td>-5</td><td>≈ 10-5\%</td><td>0.210\%</td></tr><tr><td>-6</td><td>≈ 10-8\%</td><td>0.120\%</td></tr><tr><td>-7</td><td>≈ 10-10\%</td><td>0.067\%</td></tr><tr><td>-8</td><td>≈ 10-14\%</td><td>0.036\%</td></tr><tr><td>-9</td><td>≈ 10-17\%</td><td>0.019\%</td></tr><tr><td>-10</td><td>≈ 10-22\%</td><td>0.010\%</td></tr></table> tails but are light tails in the mathematical sense. Hence, all moments of arbitrary order exist and are finite. For this reason, advocates of the class of STS distribution argue that it is an appropriate class for modeling the return distribution of various financial assets.


# TEMPERED STABLE DISTRIBUTIONS

In this section, we discuss six types of tempered stable distributions.

# Classical Tempered Stable Distribution

Let $\alpha \in (0,1) \cup (1,2)$, $C, \lambda_{+}, \lambda_{-} > 0$, and $m \in \mathbb{R}$. $X$ is said to follow the classical tempered stable (CTS) distribution if the characteristic function of $X$ is given by

$$
\begin{array}{l} \phi_{X} (u) = \phi_{C T S} (u; \alpha , C, \lambda_{+}, \lambda_{-}, m) \\ = \exp (i u m - i u C \Gamma (1 - \alpha) \left(\lambda_{+}^{\alpha - 1} - \lambda_{-}^{\alpha - 1}\right) \\ + C \Gamma (- \alpha) ((\lambda_{+} - i u)^{\alpha} - \lambda_{+}^{\alpha} \\ + \left(\lambda_{-} + i u\right)^{\alpha} - \lambda_{-}^{\alpha})) \tag {2} \\ \end{array}
$$ and we denote it by $X\sim \mathrm{CTS}(\alpha ,C,\lambda_{+},\lambda_{-},m)$


Using the nth derivative of $\psi (u) = \log \phi_X(u)$ evaluated around zero, the cumulants $c_{n}(X) = \frac{1}{i^n}\frac{\partial^n\psi}{\partial_u} (0)$ of $X$ are obtained by

$$
\begin{array}{l} c_{1} (X) = m \\ c_{n} (X) = C \Gamma (n - \alpha) \left(\lambda_{+}^{\alpha - n}\right) \\ + (- 1)^{n} \lambda_{-}^{\alpha - n}), \text{for} n = 2, 3, \dots \\ \end{array}
$$

The role of the parameters is as follows:

- The parameter  $m$  determines the location of the distribution.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/7219246f2ead3bb0d9a1e6fa05e01e1a6065ec2b7d214f51db18f199e10b47fc.jpg)
Figure 4 Probability Density of the CTS Distributions' Dependence on $C$ Note: $C\in \{0.25,0.5,1,2\}$ $\alpha = 1.4,\lambda_{+} = 50,\lambda_{-} = 50,m = 0.$

- The parameter $C$ is the scale parameter. Figure 4 shows the density function of the CTS distributions' dependence on $C$.
- The parameters  $\lambda_{+}$  and  $\lambda_{-}$  control the rate of decay on the positive and negative tails, respectively. If  $\lambda_{+} > \lambda_{-}$ $(\lambda_{+} < \lambda_{-})$  , then the distribution is skewed to the left (right), and if  $\lambda_{+} = \lambda_{-}$  , then it is symmetric. Figure 5 illustrates left and right skewed density functions of the CTS distribution, as well as the symmetric case.


![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/81466223c780c4afd8a03082ae66248a6445eb5320c0561e5b2ca9c50b888240.jpg)
Figure 5 Probability Density of the CTS Distributions: Dependence on $\lambda_{+}$ and $\lambda_{-}$ Note: $(\lambda_{+},\lambda_{-})\in \{(1,70),(3,3),(70,1)\} ,\alpha = 0.8,C = 1,m = 0.$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/e2e340b42fe24b84af0f05d9436632a3bd59ee11e4a9f56abf0489a8e41a1e59.jpg)
Figure 6 Probability Density of the Symmetric CTS Distributions' Dependence on Parameters $\lambda_{+},\lambda_{-}$ Note: $\lambda_{+} = \lambda_{-}\in \{10,20,30,40\} ,\alpha = 1.1,C = 1,m = 0.$

- The parameters $\lambda_{+}, \lambda_{-}$, and $\alpha$ are related to tail weights. Figures 6 and 7 illustrate this fact. We will discuss another role of $\alpha$ later.
- If $\alpha$ approaches to 0, the CTS distribution converges to the variance-gamma distribution (discussed later in this entry) in distribution sense.

If we take a special parameter  $C$  defined by

$$
C = \left(\Gamma (2 - \alpha) \left(\lambda_{+}^{\alpha - 2} + \lambda_{-}^{\alpha - 2}\right)\right)^{- 1} \tag {3}
$$ then $X \sim \mathrm{CTS}(\alpha, \mathsf{C}, \lambda_{+}, \lambda_{-}, 0)$ has zero mean and unit variance. In this case, $X$ is called the standard CTS distribution with parameters $(\alpha, \lambda_{+}, \lambda_{-})$ and denoted by $X \sim \mathrm{stdCTS}(\alpha, \lambda_{+}, \lambda_{-})$.


![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/7f6433859a2a971b7d224ca44fe39f82a07c9ae6fbc7d56b6659a8b5d1c1d3fe.jpg)
Figure 7 Probability Density of the CTS Distributions: Dependence on $\alpha$ Note: $\alpha \in \{0.5,0.8,1.1,1.4\}$ $C = 1,\lambda_{+} = 50,\lambda_{-} = 50,m = 0.$

Let $m$ be a real number, $\sigma$ be a positive real number, and $X\sim \mathrm{stdCTS}(\alpha ,\lambda_{+},\lambda_{-})$. Then

$$
\begin{array}{l} Y = \sigma X + m \approx C T S \\ x \left(\alpha , \frac{\sigma^{\alpha}}{\Gamma (2 - \alpha) \left(\lambda_{+}^{\alpha - 2} + \lambda_{-}^{\alpha - 2}\right)}, \frac{\lambda_{+}}{\sigma}, \frac{\lambda_{-}}{\sigma}, m\right) \\ \end{array}
$$

The random variable  $Y$  is the CTS distributed, and its mean and variance are  $m$  and  $\sigma^2$ , respectively.

# Generalized Classical Tempered Stable Distribution

A more general form of the characteristic function for the CTS distribution is

$$
\begin{array}{l} \phi_{X} (u) = \exp (i u m - i u \Gamma (1 - \alpha) (C + \lambda_{+}^{\alpha + - 1} - C_{-} \lambda_{-}^{\alpha_{-} - 1}) \\ + C_{+} \Gamma (- \alpha_{+}) ((\lambda_{+} - i u)^{\alpha_{+}} - \lambda_{+}^{\alpha_{+}}) \\ + C_{-} \Gamma (- \alpha_{-}) \left(\left(\lambda_{-} + i u\right)^{\alpha_{-}} - \lambda_{-}^{\alpha_{-}}\right)) \tag {4} \\ \end{array}
$$ where $\alpha_{+},\alpha_{-}\in (0,1)\cup (1,2),C_{+},C_{-},\lambda_{+},\lambda_{-} > 0,$ and $m\in \mathbb{R}$. This distribution has been referred to as the generalized classical tempered stable (GTS) distribution and we denote it by $X\sim \mathrm{GTS}(\alpha_{+},\alpha_{-},C_{+},C_{-},\lambda_{+},\lambda_{-},m).^{2}$


The cumulants of $X$ are $c_{1}(X) = m$ and

$$
\begin{array}{l} c_{n} (X) = C_{+} \Gamma (n - \alpha_{+}) \lambda_{+}^{\alpha + - n} \\ + (- 1)^{n} C_{-} \Gamma (n - \alpha_{-}) \lambda_{-}^{\alpha_{-} - n} \\ \end{array}
$$ for $n = 2,3,\dots$. If we substitute


$$
C_{+} = \frac{p \lambda_{+}^{2 - \alpha_{+}}}{\Gamma (2 - \alpha_{+})}, \quad C_{-} = \frac{(1 - p) \lambda_{-}^{2 - \alpha_{-}}}{\Gamma (2 - \alpha_{-})} \tag {5}
$$ where $p\in (0,1)$, then $X\sim \mathrm{GTS}(\alpha_{+},\alpha_{-},C_{+},C_{-},\lambda_{+},\lambda_{-},0)$ has zero mean and unit variance. In this case, $X$ is called the standard GTS distribution with parameters $(\alpha_{+},\alpha_{-},\lambda_{+},\lambda_{-},p)$ and denoted by $X\sim \mathrm{stdGTS}(\alpha_{+},\alpha_{-},\lambda_{+},\lambda_{-},p)$


# Modified Tempered Stable Distribution

Let  $\alpha \in (0,1)\cup (1,2),C,\lambda_{+},\lambda_{-} > 0$  , and  $m\in \mathbb{R}$ $X$  is said to follow the modified tempered stable

(MTS) distribution (see Kim et al., 2009) if the characteristic function of  $X$  is given by

$$
\begin{array}{l} \phi_{X} (u) = \phi_{M T S} (u; \alpha , C, \lambda_{+}, \lambda_{-}, m) \\ = \exp (i u m + C \left(G_{R} (u; \alpha , \lambda_{+}) + G_{R} (u; \alpha , \lambda_{-})\right) \\ + i u C \left(G_{I} (u; \alpha , \lambda_{+}) - G_{I} (u; \alpha , \lambda_{-}))\right) \tag {6} \\ \end{array}
$$ where for  $u\in \mathbb{R}$


$$
G_{R} (x; \alpha , \lambda) = 2^{\frac{- \alpha + 3}{2}} \sqrt{\pi \Gamma} \left(- \frac{\alpha}{2}\right) \left(\left(\lambda^{2} + x^{2}\right)^{\frac{\alpha}{2}} - \lambda^{\alpha}\right)
$$ and


$$
\begin{array}{l} G_{I} (x; \alpha , \lambda) = 2^{\frac{- \alpha + 1}{2}} \Gamma \left(\frac{1 - \alpha}{2}\right) \lambda^{\alpha - 1} \\ \times \left[ _ 2 F_{1} \left(1, \frac{1 - \alpha}{2}; \frac{3}{2}; - \frac{x^{2}}{\lambda^{2}}\right) - 1 \right] \\ \end{array}
$$ where  ${}_{2}F_{1}$  is the hypergeometric function. We denote an MTS distributed random variable  $X$  by  $X \sim \mathrm{MTS}(\alpha, C, \lambda_{+}, \lambda_{-}, m)$ .


The role of the parameters of the MTS distribution is same as in the case of the CTS distribution. For example, the parameters  $\lambda_{+}$  and  $\lambda_{-}$  control the rate of decay on the positive and negative tails, respectively, and if  $\lambda_{+} = \lambda_{-}$ , then it is symmetric. The characteristic function of the symmetric MTS distribution is defined not only for the case  $\alpha \in (0,1) \cup (1,2)$  but also for the case  $\alpha = 1$ . The form of the characteristic function for the symmetric case is given by

$$
\begin{array}{l} \phi_{X} (u) = \phi_{M T S} (u; \alpha , C, \lambda , \lambda , m) \\ = \exp \left(i u m + C 2^{- \frac{\alpha + 1}{2}} \sqrt{\pi \Gamma} \left(- \frac{\alpha}{2}\right) \right. \\ \times \left(\left(\lambda^{2} + x^{2}\right)^{\frac{\alpha}{2}} - \lambda^{\alpha}\right)\left. \right) \\ \end{array}
$$

The mean of  $X$  is  $m$ , and the cumulants of  $X$  are equal to

$$
\begin{array}{l} c_{n} (X) = 2^{n - \frac{\alpha + 3}{2}} C \Gamma \left(\frac{n + 1}{2}\right) \Gamma \left(\frac{n - \alpha}{2}\right) \\ \times \left(\lambda_{+}^{\alpha - n} + (- 1)^{n} \lambda_{-}^{\alpha - n}\right) \\ \end{array}
$$ for  $n = 2,3,\dots$


If we substitute

$$
C = 2^{\frac{\alpha + 1}{2}} \left(\sqrt{\pi} \Gamma \left(1 - \frac{\alpha}{2}\right) \left(\lambda_{+}^{\alpha - 2} + \lambda_{-}^{\alpha - 2}\right)\right)^{- 1} \tag {7}
$$ then  $X\sim \mathrm{MTS}(\alpha ,\mathsf{C},\lambda_{+},\lambda_{-},0)$  has zero mean and unit variance. In this case, the random variable  $X$  is called the standard MTS distribution and


![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/add269b75e276d30b8651d4e245419df04bdb0b64de7aa813553f17564f2ad75.jpg) denoted by  $X\sim \mathrm{stdMTS}(\alpha ,\lambda_{+},\lambda_{-})$  .Let  $m$  be a real number,  $\sigma$  be a positive real number,and  $X$ $\sim$  stdMTS  $(\alpha ,\lambda_{+},\lambda_{-})$  .Then
Figure 8 Probability Density of the NTS Distributions' Dependence on  $\beta$  Note:  $\beta \in \{-2.5,0,2.5\}$ $\alpha = 0.8$ $C = 1$ $\lambda = 4$ $m = 0$


$$
Y = \sigma X + m \sim \operatorname{MT S} (\alpha , \sigma^{\alpha} C, \lambda_{+} / \sigma , \lambda_{-} / \sigma , m)
$$ where  $C$  is equal to (7). The random variable  $Y$  is MTS distributed, and its mean and variance are  $m$  and  $\sigma^2$ , respectively.


# Normal Tempered Stable Distribution

Let  $\alpha \in (0,2), C, \lambda > 0, |\beta| < \lambda,$  and  $m \in \mathbb{R}$ .  $X$  is said to follow the normal tempered stable (NTS) distribution. If the characteristic function of  $X$  is given by

$$
\begin{array}{l} \phi_{X} (u) = \phi_{N T S} (u; \alpha , C, \lambda , \beta , m) \\ = \exp (i u m - i u 2^{- \frac{\alpha - 1}{2}} \sqrt{\pi} C \Gamma \left(1 - \frac{\alpha}{2}\right) \\ \times \beta (\lambda^{2} - \beta^{2})^{\frac{\alpha}{2} - 1} + 2^{- \frac{\alpha + 1}{2}} C \sqrt{\pi} \Gamma \left(- \frac{\alpha}{2}\right) \\ \left. \times \left(\left(\lambda^{2} - (\beta + i u)^{2}\right)^{\frac{\alpha}{2}} - \left(\lambda^{2} - \beta^{2}\right)^{\frac{\alpha}{2}}\right)\right) \tag {8} \\ \end{array}
$$

We denote an NTS distributed random variable  $X$  by  $X\sim \mathrm{NTS}(\alpha ,C,\lambda ,\beta ,m)$

The mean of  $X$  is  $m$ . The general expressions for cumulants of  $X$  are omitted since they are rather complicated. Instead of the general form, we present three cumulants


$$ c_{2} (X) = \bar {C} (\lambda^{2} - \beta^{2})^{\frac{\alpha}{2} - 2} \alpha (\alpha \beta^{2} - \lambda^{2} - \beta^{2})
$$

$$ c_{3} (X) = - \bar {C} \alpha \beta (\lambda^{2} - \beta^{2})^{\frac{\alpha}{2} - 3} (\alpha^{2} \beta^{2} - 3 \alpha \lambda^{2} - 3 \alpha \beta^{2} + 6 \lambda^{2} + 2 \beta^{2})
$$

$$
\begin{array}{l} c_{4} (X) = \bar {C} \alpha (\alpha - 2) \left(\lambda^{2} - \beta^{2}\right)^{\frac{\alpha}{2} - 4} \\ \times \left(\alpha^{2} \beta^{4}\right) - 6 \alpha \lambda^{2} \beta^{2} - 4 \alpha \beta^{4} + 3 \beta^{4} + 1 8 \lambda^{2} \beta^{2} + 3 \lambda^{4}) \\ \end{array}
$$ where  $\bar{C} = 2^{-\frac{\alpha + 1}{2}}C\sqrt{\pi}\Gamma \left(-\frac{\alpha}{2}\right)$


The roles of parameters  $\alpha, C,$  and  $\lambda$  are same as in the case of the symmetric MTS distribution. The parameter  $\beta$  is related to the distribution's skewness. If  $\beta < 0 (\beta > 0)$ , then the distribution is skewed to the left (right). Moreover, if  $\beta = 0$ , then it is symmetric. This fact is illustrated in Figure 8.

If we substitute

$$
\begin{array}{l} C = 2^{\frac{\alpha + 1}{2}} \\ \times \left(\sqrt{\pi} \Gamma \left(- \frac{\alpha}{2}\right) \alpha \left(\lambda^{2} - \beta^{2}\right)^{\frac{\alpha}{2} - 2} \left(\alpha \beta^{2} - \lambda^{2} - \beta^{2}\right)\right)^{- 1} \tag {9} \\ \end{array}
$$ then  $X\sim \mathrm{NTS}(\alpha ,C,\lambda ,\beta ,0)$  has zero mean and unit variance. In this case,  $X$  is called the standard NTS distribution and denoted by  $X\sim$  stdNTS(  $\alpha ,\lambda ,\beta)$  .Let  $m$  be a real number,  $\sigma$  be a


positive real number, and  $X\sim \mathrm{stdNTS}(\alpha ,\lambda ,\beta)$  Then

$$
Y = \sigma X + m \sim \mathrm{NT S} (\alpha , \sigma^{\alpha} C, \lambda / \sigma , \beta / \sigma , m)
$$ where  $C$  is equal to (9). The random variable  $Y$  is NTS distributed, and its mean and variance are  $m$  and  $\sigma^2$ , respectively.


If we substitute  $\alpha = 1$  and  $C = \frac{c}{\pi}$  into the definition of the NTS distribution, we obtain the normal inverse Gaussian (NIG) distribution.4 That is, if random variable  $X\sim \mathrm{NTS}(1,c / \pi ,$ $\lambda ,\beta ,m)$  , then  $X$  becomes an NIG distributed random variable. In this case, we denote  $X\sim$ $\mathrm{NIG}(c,\lambda ,\beta ,m)$

By substituting  $\alpha = 1$  and  $C = \frac{c}{\pi}$  into (8), we obtain the characteristic function of the NIG distributed  $X$  as

$$
\begin{array}{l} \phi_{X} (u) = \phi_{N I G} (u; c, \lambda , \beta , m) \\ = \exp \left(i u m - \frac{i u c \beta}{\sqrt{\lambda^{2} - \beta^{2}}} - c \right. \\ \left. \times \left(\sqrt{\lambda^{2} - (\beta + i u)^{2}} - \sqrt{\lambda^{2} - \beta^{2}}\right)\right) \tag {10} \\ \end{array}
$$

If we substitute

$$ c = \frac{\left(\lambda^{2} - \beta^{2}\right)^{\frac{3}{2}}}{\lambda^{2}} \tag {11}
$$ then  $X\sim \mathrm{NIG}(\mathsf{c},\lambda ,\beta ,0)$  has zero mean and unit variance. In this case,  $X$  is called the standard NIG distribution and denoted by  $X\sim \mathrm{stdNIG}(\lambda ,\beta)$


# Kim-Rachev Tempered Stable Distribution

Let  $\alpha \in (0,1)\cup (1,2),$ $k_{+},k_{-},r_{+},r_{-} > 0,p_{+}$ $p_{-}\in \{p > - \alpha \mid p\neq -1,p\neq 0\}$  , and  $m\in \mathbb{R}$  .  $X$  is said to follow the Kim-Rachev tempered stable (KRTS) distribution (see Kim et al., 2008b) if the characteristic function of  $X$  is given by

$$
\begin{array}{l} \phi_{X} (u) = \phi_{K R T S} (u; \alpha , k_{+}, k_{-}, r_{+}, r_{-}, p_{+}, p_{-}, m) \\ = \exp (i u m - i u \Gamma (1 - \alpha) \left(\frac{k_{+} r_{+}}{p_{+} + 1} - \frac{k_{-} r_{-}}{p_{-} + 1}\right) \\ + k_{+} H (i u; \alpha , r_{+}, p_{+}) + k_{-} H (- i u; \alpha , r_{-}, p_{-})) \tag {12} \\ \end{array}
$$ where


$$
H (x; \alpha , r, p) = \frac{\Gamma (- \alpha)}{p} (_ {2} F_{1} (p, - \alpha ; 1 + p; r x) - 1)
$$

We denote a KRTS distributed random variable  $X$  by  $X \sim \mathrm{KRTS}(\alpha, k_{+}, k_{-}, r_{+}, r_{-}, p_{+}, p_{-}, p_{-}, m)$ .

The KRTS distribution is an extension of the CTS distribution. Indeed, the distribution  $\mathrm{KRTS}(\alpha, k_{+}, k_{-}, r_{+}, r_{-}, p_{+}, p_{-}, m)$  converges weakly to the CTS distribution as  $p_{\pm} \to \infty$  provided that  $C_{\pm} = c(\alpha + p_{\pm})r_{\pm}^{-\alpha}$  where  $c > 0$  (see Kim et al., 2008a). Figure 9 shows that the KRTS distribution converges to the CTS distribution when parameter  $p = p_{+} = p_{-}$  increases to infinity.

The cumulants of the KRTS distributed random variable  $X$  are  $c_{1}(X) = m$  and

$$
\begin{array}{l} c_{n} (X) = \Gamma (n - \alpha) \left(\frac{k_{+} r_{+}^{n}}{p_{+} + n} + (- 1)^{n} \frac{k_{-} r_{-}^{n}}{p_{-} + n}\right), \\ \text{for} n = 2, 3, \dots . \\ \end{array}
$$

If we substitute

$$
\begin{array}{l} k_{+} = C \frac{\alpha + p_{+}}{r_{+}^{\alpha}} \\ k_{-} = C \frac{\alpha + p_{-}}{r_{-}^{\alpha}} \\ \end{array}
$$ where


$$
C = \frac{1}{\Gamma (2 - \alpha)} \left(\frac{\alpha + p_{+}}{2 + p_{+}} r_{+}^{2 - \alpha} + \frac{\alpha + p_{-}}{2 + p_{-}} r_{-}^{2 - \alpha}\right)^{- 1} \tag {13}
$$ then $X \sim \mathrm{KRTS}(\alpha, k_{+}, k_{-}, r_{+}, r_{-}, p_{+}, p_{-}, 0)$ has zero mean and unit variance. In this case, $X$ is said to be standard KRTS distributed and denoted by $X \sim \mathrm{stdKRTS}(\alpha, r_{+}, r_{-}, p_{+}, p_{-})$. Let $m$ be a real number, $\sigma$ be a positive real number, and $X \sim \mathrm{stdKRTS}(\alpha, r_{+}, r_{-}, p_{+}, p_{-})$. Then


$$
\begin{array}{l} Y = \sigma X + m \\ \sim \operatorname{KR TS} (\alpha , C (\alpha + p_{+}) (\sigma r_{+})^{- \alpha}, C (\alpha + p_{-}) \\ (\sigma r_{-})^{- \alpha}, \sigma r_{+}, \sigma_{r}^{-}, p_{+}, p_{-}, m) \\ \end{array}
$$ where  $C$  is equal to (13). The random variable  $Y$  is KRTS distributed, and its mean and variance are  $m$  and  $\sigma^2$ , respectively.


![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/3033aed2c7d0bd11ea2c0dab8e335742614348f33ac52391c0e4c70b3afbad4e.jpg)
Figure 9 Probability Density of the CTS Distribution with Parameters $C = 1, \lambda_{+} = 10, \lambda_{-} = 2, \alpha = 1.25$, and the KRTS Distributions with $k_{\pm} = C(\alpha + p)_{\pm}^{r^{-a}}$, $r_{+} = 1 / \lambda_{+}$, $r_{-} = 1 / \lambda_{-}$, where $p = p_{+} = p_{-} \in \{-0.25, 1, 10\}$

# Rapidly Decreasing Tempered Stable Distribution

Let $\alpha \in (0,1)\cup (1,2),C,\lambda_{+},\lambda_{-} > 0$, and $m\in \mathbb{R}$. A random variable $X$ is said to follow the rapidly decreasing tempered stable (RDTS) distribution (see Bianchi et al., 2010 and Kim et al., 2010) if the characteristic function of $X$ is given by

$$
\begin{array}{l} \phi_{X} (u) = \phi_{R D T S} (u; \alpha , C, \lambda_{+}, \lambda_{-}, m) \\ \exp (i u m + C \left(G (i u; \alpha , \lambda_{+}) + G (- i u; \alpha , \lambda_{-}))\right) \tag {14} \\ \end{array}
$$ where


$$
\begin{array}{l} G (x; \alpha , \lambda) = 2^{- \frac{\alpha}{2} - 1} \lambda^{\alpha} \Gamma \left(- \frac{\alpha}{2}\right) \left(M \left(- \frac{\alpha}{2}, \frac{1}{2}; \frac{x^{2}}{2 \lambda^{2}}\right) - 1\right) \\ + 2^{- \frac{\alpha}{2} - \frac{1}{2}} \lambda^{\alpha - 1} x \Gamma \left(\frac{1 - \alpha}{2}\right) \\ \times \left(M \left(\frac{1 - \alpha}{2}, \frac{3}{2}; \frac{x^{2}}{2 \lambda^{2}}\right) - 1\right) \\ \end{array}
$$ and $M$ is the confluent hypergeometric function. Further details of the confluent hypergeometric function are presented at the end of this entry. In this case, we denote $X \sim \mathrm{RDTS}(\alpha, C, \lambda_{+}, \lambda_{-}, m)$. The role of the parameters are the same as for the case of the CTS distribution.


The mean of $X$ is $m$, and the cumulants of $X$ are

$$
\begin{array}{l} c_{n} (X) = 2^{\frac{n - \alpha - 2}{2}} C \Gamma \left(\frac{n - \alpha}{2}\right) \\ \times \left(\lambda_{+}^{\alpha - n} + (- 1)^{n} \lambda_{-}^{\alpha - n}\right), \text{for} n = 2, 3, \dots . \\ \end{array}
$$

If we substitute

$$
C = 2^{\frac{\alpha}{2}} \left(\Gamma \left(1 - \frac{\alpha}{2}\right) \left(\lambda_{+}^{\alpha - 2} + \lambda_{-}^{\alpha - 2}\right)\right)^{- 1} \tag {15}
$$ then $X \sim \mathrm{RDTS}(\alpha, C, \lambda_{+}, \lambda_{-}, 0)$ has zero mean and unit variance, and $X$ is called the standard RDTS distribution and denoted by $X \sim \mathrm{stdRDTS}(\alpha, \lambda_{+}, \lambda_{-})$. Let $m$ be a real number, $\sigma$ be a positive real number, and $X \sim \mathrm{stdRDTS}(\alpha, \lambda_{+}, \lambda_{-})$. Then


$$
\sigma X + m \sim \mathrm{RD TS} (\alpha , \sigma^{\alpha} C, \lambda_{+} / \sigma , \lambda_{-} / \sigma , m)
$$ where  $C$  is equal to (15). The random variable  $Y$  is RDTS distributed, and its mean and variance are  $m$  and  $\sigma^2$ , respectively.


# INFINITELY DIVISIBLE DISTRIBUTIONS

A random variable $Y$ is referred to as infinitely divisible if for each positive integer $n$, there are IID random variables $Y_{i}, Y_{2}, \dots, Y_{n}$ such that $Y \stackrel{\mathrm{d}}{=} \sum_{k=1}^{n} Y_{k}$ that is, the distribution of $Y$ is the same as the distribution of $\sum_{k=1}^{n} Y_{k}$

For example, the normal distribution is infinitely divisible. Using the characteristic function for the normal distribution, we can easily check the property. Suppose $Y \sim N(\mu, \sigma^2)$. For any positive integer $n$, consider a sequence of IID random variables $Y_1, Y_2, \ldots, Y_n$ such that $Y_k \sim N(\mu/n, \sigma^2/n)$. Since $Y_k$'s are independent we have

$$
E \left[ \exp \left(i u \sum_{k = 1}^{n} Y_{k}\right) \right] = \prod_{k = 1}^{n} E \left[ i u Y_{k} \right]
$$

The characteristic function of  $Y_{k}$  is given by

$$
E \left[ i u Y_{k} \right] = \exp \left(\frac{i u \mu}{n} - \frac{\sigma^{2} u^{2}}{2 n}\right)
$$

Hence, the characteristic function of  $\sum_{k=1}^{n} Y_k$  is

$$
E \left[ \exp \left(i u \sum_{k = 1}^{n} Y_{k}\right) \right] = \exp \left(i u \mu - \frac{\sigma^{2} u^{2}}{2}\right)
$$ which is the same as the characteristic function of  $Y$ . Therefore,  $Y \stackrel{\mathrm{d}}{=} \sum_{k=1}^{n} Y_k$ .


Using similar arguments, we can show that the Poisson, gamma, variance-gamma (VG), inverse Gaussian (IG), $\alpha$-stable, CTS, GTS, MTS, NTS(NIG), RDTS, and KRTS distributions are infinitely divisible. The relations of $Y$ and $Y_{k}, k = 1,\dots n$ for those distributions are presented in Table 2. We can show that the sum of infinitely divisible random variables is again infinitely divisible.

In the literature, the characteristic function of the one-dimensional infinitely divisible distribution is generalized by the Lévy-Khinchine formula:

$$
\exp \left(i \gamma u - \frac{1}{2} \alpha^{2} u^{2} + \int_{- \infty}^{\infty} \left(e^{i u x} - 1 - i u x 1_{| x | \leq 1}\right) v (d x)\right) \tag {16}
$$

Table 2 Infinitely Divisible Distributions

<table><tr><td>Distribution</td><td>Y ∼ Distribution</td><td>Yk ∼ Distribution</td></tr><tr><td>Poisson</td><td>Poiss(λ)</td><td>Poiss(λ/n)</td></tr><tr><td>Gamma</td><td>Gamma(c, λ)</td><td>Gamma(c/n, λ)</td></tr><tr><td>Variance gamma</td><td>VG(C, λ+, λ-)</td><td>VG(C/n, λ+, λ-)</td></tr><tr><td>Inverse Gaussian</td><td>IG(c, λ)</td><td>IG(c/n, λ)</td></tr><tr><td>Normal</td><td>N(μ, σ²)</td><td>N(μ/n, σ²/n)</td></tr><tr><td>α-stable</td><td>Sα(σ, β, μ)</td><td>Sα(σ/n, β, μ/n)</td></tr><tr><td>CTS</td><td>CTS(α, C, λ+, λ-, m)</td><td>CTS(α, C/n, λ+, λ-, m/n)</td></tr><tr><td>GTS</td><td>GTS(α+, α-, C+, C-, λ+, λ-, m)</td><td>GTS(α+, α-, C+/n, C-/n, λ+, λ-, m/n)</td></tr><tr><td>MTS</td><td>MTS(α, C, λ+, λ-, m)</td><td>MTS(α, C/n, λ+, λ-, m/n)</td></tr><tr><td>NTS</td><td>NTS(α, C, λ, β, m)</td><td>NTS(α, C/n, λ, β, m/n)</td></tr><tr><td>KRTS</td><td>KRTS(α, k+, k-, r+, r-, p+, p-, m)</td><td>KRTS(α, k+/n, k-/n, r+, r-, p+, p-, m/n)</td></tr><tr><td>RDTS</td><td>RDTS(α, C, λ+, λ-, m)</td><td>RDTS(α, C/n, λ+, λ-, m/n)</td></tr></table>

Table 3 Lévy Measures

<table><tr><td>Distributions</td><td>Lévy Measure</td></tr><tr><td>Poisson</td><td>νPoisson(dx) = λδλ(dx)5</td></tr><tr><td>Gamma</td><td>νgamma(dx) = ce-λx/x 1x&gt;0dx</td></tr><tr><td>Variance gamma</td><td>νVG(dx) = (Ce-λ+x/x 1x&gt;0 + Ce-λ-[x/x] 1x&lt;0)dx</td></tr><tr><td>Inverse Gaussian</td><td>νIG(dx) = ce-λ2/x/√2πx3/2 1x&gt;0dx</td></tr></table>

In the formula, the measure  $v$  is referred to as the Lévy measure. The measure is a Borel measure satisfying the conditions that  $v(0) = 0$  and  $\int_{\mathbb{R}} (1 \wedge |x^2|) v(dx) < \infty$ . The parameters  $\gamma$  and  $\sigma$  are real numbers. The variable  $\gamma$  is referred to as the center or drift and determines the location. This triplet  $(\sigma^2, \nu, \gamma)$  is uniquely defined for each infinitely divisible distribution and called a Lévy triplet.

If  $\nu(dx) = 0$ , then the characteristic function equals the characteristic function of the normal distribution. That is, the infinitely divisible distribution with  $\nu(dx) = 0$  becomes the normal distribution with mean  $\gamma$  and variance  $\sigma^2$ .

If  $\sigma = 0$ , then the distribution is referred to as a purely non-Gaussian distribution. The characteristic functions of purely non-Gaussian distributions are computed by

$$
\exp \left(i \gamma u + \int_{- \infty}^{\infty} (e^{i u x} - 1 - i u x 1_{| x | \leq 1}) v (d x)\right)
$$

Hence, except for the location determined by  $\gamma$ , all the properties of the distribution are characterized by the Lévy measure  $v(dx)$ . The Poisson, gamma, VG, IG,  $\alpha$ -stable, CTS, GTS, MTS, NTS, RDTS, and KRTS distributions are purely non-Gaussian distributions. The Lévy measure of the Poisson, gamma, VG, and IG distributions are given in Table 3.

The Lévy measure of the  $\alpha$ -stable distribution is given by

$$ v_{\text{st ab le}} (d x) = \left(\frac{C_{+}}{x^{1 + \alpha}} 1_{x > 0} + \frac{C_{-}}{| x |^{1 + \alpha}} 1_{x <   0}\right) d x \tag {17}
$$

Using the Lévy Khinchine formula we can obtain the characteristic function in (1).

The Lévy measure of the CTS, MTS, NTS, KRTS, and RDTS distributions can be obtained by multiplying the tempering function by the Lévy measure of  $\alpha$ -stable distribution. For example, if we take  $q(x) = e^{-\lambda_{+}x}1_{x > o} + e^{-\lambda_{-}|x|}1_{x < o}$  as the tempering function, then we obtain the Lévy measure of the CTS distribution as

$$
\begin{array}{l} \nu (d x) = q (x) \nu_{\text{st ab le}} (d x) \\ = \left(\frac{C + e^{- \lambda_{+} x}}{x^{1 + \alpha}} 1_{x > 0} + \frac{C_{-} e^{- \lambda_{-} | x |}}{| x |^{1 + \alpha}} 1_{x <   0}\right) d x \\ \end{array}
$$

Tempering functions of the other distributions are presented in Table 4. For this reason, they are referred to as the tempered stable distributions. The GTS distribution is also a purely non-Gaussian distribution, but not a tempered stable distribution in this sense. Indeed, its Lévy measure is given by

$$
\nu (d x) = \left(\frac{C + e^{- \lambda_{+} x}}{x^{1 + \alpha_{+}}} 1_{x > 0} + \frac{C_{-} e^{- \lambda_{-} | x |}}{| x |^{1 + \alpha_{-}}} 1_{x <   0}\right) d x
$$

However, we will refer to the GTS distribution as a tempered stable distribution for convenience. Using the Lévy measures and the Lévy-Khinchine formula, we can obtain the characteristic functions (1), (2), (4), (6), (8), (12), and (14).

Generalizations of the tempering function and the tempered stable distribution have been studied in the literature.6

Table 4 Tempering Functions

<table><tr><td colspan="2">Tempering Function q(x)</td></tr><tr><td>CTS</td><td>e-λ+x1x&gt;0 + e-λ-|x|1x&lt;0</td></tr><tr><td>MTS</td><td>(λ+x)α+1/2Kα+1/2(λ+x)1x&gt;0 + (λ-|x|)α+1/2Kα+1/2(λ-|x|)1x&lt;0</td></tr><tr><td>NTS</td><td>eβx(λ|x|)α+1/2Kα+1/2(λ|x|)</td></tr><tr><td>KRTS</td><td>r-p+ ∫0r+ e-x/sα+p+1ds 1x&gt;0 + r-p- ∫0r- e-x/sα+p-1ds 1x&lt;0</td></tr><tr><td>RDTS</td><td>e-λ+x2/21x&gt;0 + e-λ-|x|2/21x&lt;0</td></tr></table>

# Exponential Moments

The exponential moment of a random variable  $X$  is defined by  $E[e^{uX}]$  for some real number  $u$ . Existence of the exponential moment is important for modeling an asset price process in option pricing theory.

The exponential moment of the normal distribution is given by

$$
E \left[ e^{u X} \right] = \exp \left(\mu u + \frac{\sigma^{2} u^{2}}{2}\right)
$$ where  $X\sim N(\mu ,\sigma)$


Using the Lévy measure we can check the existence of the exponential moment for an infinitely divisible random variable. The following theorem (see Sato, 1999) provides a useful tool to verify the existence of an exponential moment of an infinitely divisible distribution.

Theorem Let  $X$  be an infinitely divisible random variable with the Lévy triplet  $(\sigma^2, \nu, \gamma)$  and let  $u \in \mathbb{R}$ . Then  $E[e^{uX}] < \infty$  if and only if

$$
\int_{| x | > 1} e^{u x} v (d x) <   \infty \tag {18}
$$

In this case,

$$
E [ e^{u X} ] = \phi_{X} (- i u)
$$ where  $\phi$  is the characteristic function of  $X$  and  $i = \sqrt{-1}$ .


The existence of exponential moments in the tempered stable distributions is as following:

- For the  $\alpha$ -stable random variable  $X$ , the exponential moment of  $X$  generally does not exist.

However, if  $X \sim S_{\alpha}(\sigma, 1, 0)$ , then  $E[e^{uX}] < \infty$  for  $u < 0$ . In this case,

$$
E \left[ e^{u X} \right] = \left\{ \begin{array}{l l} \exp \left(- \frac{\sigma^{\alpha}}{\cos \frac{\pi \alpha}{2}} \mu \alpha\right), & \alpha \neq 1 \\ \exp \left(\frac{2 \sigma}{\pi} u \ln u\right), & \alpha = 1 \end{array} \right.
$$

- For the CTS, GTS, and MTS distributions, the condition (18) is satisfied if and only if  $-\lambda_{-} \leq u \leq \lambda_{+}$ . Hence,  $E[e^{uX}] < \infty$  for  $u \in [-\lambda_{-}, \lambda_{+}]$ .
- For the KRTS distribution,  $E[e^{uX}] < \infty$  for  $u \in [-1 / r_{-}, 1 / r_{+}]$ .
- For the NTS and the NIG distributions,  $E[e^{uX}] < \infty$  for  $u \in [-\lambda - \beta, \lambda - \beta]$ .
- For the RDTS distribution, (18) is satisfied for the entire real number  $u$ . Hence,  $E[e^{uX}] < \infty$  for all  $u \in \mathbb{R}$ .

If  $E[e^{uX}] < \infty$ , then we can define the log-Laplace transform for the random variable  $X$ . The log-Laplace transform is given by

$$
L (u) = \log E [ e^{u X} ] = \log \phi (- i u)
$$ if (18) is satisfied.


For example, let  $X \sim \mathrm{stdCTS}(\alpha, \lambda_{+}, \lambda_{-})$ . The log-Laplace transform  $L_{CTS}$  of  $X$  is defined on  $u \in [-\lambda_{-}, \lambda_{+}]$ , and is given by

$$
\begin{array}{l} L_{C T S} (u; a, \lambda_{+}, \lambda_{-}) = \log \phi C T S (- i u; \alpha , C, \lambda +, \lambda_{-}, 0) \\ = \frac{(\lambda_{+} - u)^{\alpha} - \lambda_{+}^{\alpha} + (\lambda_{-} + u)^{\alpha} - \lambda_{-}^{\alpha}}{\alpha (\alpha - 1) (\lambda_{+}^{\alpha - 2} + \lambda_{-}^{\alpha - 2})} \\ - \frac{u \left(\lambda_{+}^{\alpha - 1} - \lambda_{-}^{\alpha - 1}\right)}{\left(1 - \alpha\right) \left(\lambda_{+}^{\alpha - 2} + \lambda_{-}^{\alpha - 2}\right)} \\ \end{array}
$$ where  $C$  is satisfied (3). Using the same method, we can obtain the log-Laplace transform of the other standard tempered stable distributions as follows:


- Standard GTS distribution:

$$
\begin{array}{l} L_{G T S} \left(u; \alpha_{+}, \alpha_{-}, \lambda_{+}, \lambda_{-}\right) \\ = \log \phi_{G T S} (- i u; \alpha_{+}, \alpha_{-}, C_{+}, C_{-}, \lambda_{+}, \lambda_{-}, 0) \\ \end{array}
$$ on  $\mathfrak{u}\in [-\lambda_{-},\lambda_{+}]$  where  $C_+$  and  $C_-$  satisfy (5).


- Standard MTS distribution:

$$
\begin{array}{l} L_{M T S} (u; \alpha , \lambda_{+}, \lambda_{-}) \\ = \log \phi_{M T S} (- i u; \alpha , C, \lambda_{+}, \lambda_{-}, 0) \\ \end{array}
$$ on  $u\in [-\lambda_{-},\lambda_{+}]$  where  $C$  satisfies (7).


- Standard NTS distribution:

$$
L_{N T S} (u; \alpha , \lambda , \beta) = \log \phi_{N T S} (- i u; \alpha , C, \lambda , \beta , 0)
$$ on  $u\in [-\lambda -\beta ,\lambda -\beta ]$  where  $C$  satisfies (9).


- Standard NIG distribution:

$$
L_{N I G} (u; \lambda , \beta) = \log \phi_{N I G} (- i u; C, \lambda , \beta , 0)
$$ on  $u\in [-\lambda -\beta ,\lambda -\beta ]$  where  $C$  satisfies (11).


- Standard KRTS distribution:

$$
\begin{array}{l} L_{K R T S} (u; \alpha , r_{+}, r_{-}, p_{+}, p_{-}) \\ = \log \phi_{K R T S} (- i u; \alpha , k_{+}, k_{-}, r_{+}, r_{-}, p_{+}, p_{-}, 0) \\ \end{array}
$$ on  $u\in [-\lambda_{-},\lambda_{+}]$  where  $k_{+}$  and  $k_{-}$  satisfy (13).


- Standard RDTS distribution:

$$
\begin{array}{l} L_{R D T S} (u; \alpha , \lambda_{+}, \lambda_{-}) \\ = \log \phi_{R D T S} (- i u; \alpha , C, \lambda_{+}, \lambda_{-}, 0) \\ \end{array}
$$ on  $u\in \mathbb{R}$  where  $C$  satisfies (15).


# HYPERGEOMETRIC FUNCTION AND CONFLUENT HYPERGEOMETRIC FUNCTION

In this entry, we referred to the hypergeometric function and the confluent hypergeometric function. Here we describe these two special functions. (For more details, see Andrews,

1998.) We begin by introducing the following notation

$$
(a)_{0} = 1, \quad (a)_{n} = a (a + 1) \dots (a + n - 1)
$$

$$ n = 1, 2, 3, \dots , a \in \mathbb {R} \tag {19}
$$ and we refer to the notation as the Pochhammer symbol. By properties of the gamma function, the Pochhammer symbol can also be defined by


$$
(a)_{n} = \frac{\Gamma (a + n)}{\Gamma (a)}, \quad n = 0, 1, 2, 3, \dots .
$$

From (19), we obtain

$$
(2 n + 1)! = 2^{2 n} n! \left(\frac{3}{2}\right)_{n} \tag {20}
$$

# The Hypergeometric Function

The function

$$
{ }_{ 2 } F_{ 1 } ( a , b ; c ; x ) = \sum_{ n = 0 }^{ \infty } \frac{ ( a )_{ n } ( b )_{ n } } { ( c )_{ n } } \frac{ x^{ n } } { n ! } , \quad | x | <   1 \tag {21}
$$ is called the hypergeometric function. If  $c \neq 0, -1, -2, \dots$ , the function  $F(a, b; c; x)$  is a solution to the linear second-order differential equation


$$ x (1 - x) y^{\prime \prime} + (c - (a + b + 1) x) y^{\prime} - a b y = 0 \tag {22}
$$ referred to as the hypergeometric equation. Moreover, if  $c\neq 0,\pm 1,\pm 2,\dots$


$$
\begin{array}{l} y = C_{1} F_{1} (a, b; c; x) \\ + C_{2} x^{1 - c}_{2} F_{1} (1 + a - c, 1 + b - c; 2 - c; x) \\ \end{array}
$$ for any constants  $C_1$  and  $C_2$ , is a general solution to equation (22). For  $k = 1, 2, 3 \dots, k$ th derivatives are obtained from the following equation:


$$
\frac{d^{k}}{d x^{k}}_{2} F_{1} (a, b; c; x) = \frac{(a)_{k} (b)_{k}}{(c)_{k}}_{2} F_{1} (a + k, b + k; c + k; x) \tag {23}
$$

# The Confluent Hypergeometric Function

The function

$$
M (a; c; x) = \sum_{n = 0}^{\infty} \frac{(a)_{n} x^{n}}{(c)_{n} n !}, - \infty <   x <   \infty \tag {24}
$$ is called the confluent hypergeometric function and is obtained by the limit of the hypergeometric function as follows:


$$
M (a; c; x) = \lim_{b \rightarrow \infty} F (a, b; c; x / b)
$$

The function  $M(a; c; x)$  is a solution of the linear second-order differential equation

$$ x y^{\prime \prime} + (c - x) y^{\prime} - a y = 0 \tag {25}
$$ referred to as the confluent hypergeometric equation. Moreover, if  $c \neq 0, \pm 1, \pm 2, \dots$ ,


$$ y = C_{1} M (a; c; x) + C_{2} x^{1 - c} F (1 + a - c; 2 - c; x)
$$ for any constants  $C_1$  and  $C_2$ , is a general solution of equation (25). For  $k = 1, 2, 3 \dots$ ,  $k$ th derivatives are obtained by the following equation:


$$
\frac{d^{k}}{d x^{k}} M (a; c; x) = \frac{(a)_{k}}{(c)_{k}} M (a + k; c + k; x) \tag {26}
$$

# KEY POINTS

- The distribution assumed in financial models for asset returns is the normal or Gaussian distribution. Real-world asset returns, however, have been observed to be skewed and nonsymmetric, two features that are inconsistent with the normal distribution.
- Although the non-Gaussian alpha-stable distribution is superior to the normal distribution because it allows for skewness and fat tails, it is not suitable in certain modeling applications such as in modeling option prices. This is because the mean, variance, and exponential moments of the return distribution have to exist. The smoothly truncated sta ble distribution, obtained by tempering the tail properties of the alpha-stable distribution, have been proposed for modeling in such instances.


- There are six tempered stable distributions: classical tempered stable distribution, generalized classical tempered stable distribution, modified tempered stable distribution, normal tempered stable distribution, Kim-Rachev tempered stable distribution, and rapidly decreasing tempered stable distribution. All six tempered stable distributions and the alpha-stable distribution are defined by their characteristic functions.
- The infinitely divisible distribution is characterized by the Lévy-Khinchine formula and contains the alpha-stable and the tempered stable distributions as special cases.

# NOTES

1. Extensive analysis of  $\alpha$ -stable distributions and their properties can be found in Samorodnitsky and Taqqu (1994), Rachev and Mittnik (2000), and Stoyanov and Racheva-Iotova (2004a, 2004b).
2. The KoBoL distribution (see Boyarchenko and Levendorskii, 2000) is obtained by substituting  $\alpha = \alpha_{+} = \alpha_{-}$ , the truncated Lévy flight is obtained by substituting  $\lambda = \lambda_{+} = \lambda_{-}$  and  $\alpha = \alpha_{+} = \alpha_{-}$ , while the CGMY distribution (see Carr et al., 2002) is obtained by substituting  $C = C_{+} = C_{-}$ ,  $G = \lambda_{-}$ ,  $M = X_{+}$  and  $Y = \alpha_{+} = \alpha_{-}$ .
3. The NTS distribution was originally obtained using a time-changed Brownian motion with a tempered stable subordinator by Barndorff-Nielsen and Levendorskii (2001). Later, Kim, Rachev, Chung, and Bianchi (2008c) define the NTS distribution by the exponential tilting for the symmetric MTS distribution.
4. The NIG distribution has been used for financial modeling by Barndorff-Nielsen (1998, 1997) and Rydberg (1997).

5. More details about the calculation can be found in Samorodnitsky and Taqqu (1994) and Sato (1999).
6. The tempered stable distribution has been generalized by Rosinski (2007) and Bianchi et al. (2010). Rosinski (2007) defined the tempering function as the completely monotone function. The complete monotonicity of the tempering function  $q(x)$  means that  $(-1)^n\frac{d^n}{dx^n} q(x) > 0$  for all  $n = 0, 1, 2, \ldots$  and  $x \in \mathbb{R}$  with  $x \neq 0$ . The CTS and the KRTS distributions are included in Rosinski's generalization. In Bianchi et al. (2010), the tempering function is defined by the positive definite radial function. The RDTS and the MTS distributions are subclasses of the class of the TID distributions.

# REFERENCES

Barndorff-Nielsen, O. E. (1997). Normal inverse Gaussian distributions and stochastic volatility modelling. Scandinavian Journal of Statistics 24: 1-13.
Barndorff-Nielsen, O. E. (1998). Processes of normal inverse Gaussian type. Finance and Stochastics 41-68.
Barndorff-Nielsen, O. E., and Levendorskii, S. (2001). Feller processes of normal inverse Gaussian type. Quantitative Finance 1: 318-331.
Bianchi, M. L., Rachev, S. T., Kim, Y. S., and Fabozzi, F. J. (2010). Tempered infinitely divisible distributions and processes. Theory of Probability and Its Applications (TVP), Society for Industrial and Applied Mathematics (SIAM) 55, 1: 58-86.
Boyarchenko, S. I., and Levendorskii, S. Z. (2000). Option pricing for truncated Lévy processes. International Journal of Theoretical and Applied Finance 3.
Carr, P., Geman, H., Madan, D., and Yor, M. (2002). The fine structure of asset returns: An empirical investigation. Journal of Business 75, 2: 305-332.
Cootner, P. (1964). The Random Character of Stock Market Prices. Cambridge, MA: The MIT Press.
Kim, Y. S., Rachev, S. T., Bianchi, M. L., and Fabozzi, F. (2008a). Financial market models with Lévy processes and time-varying volatility. Journal of Banking and Finance 32, 7: 1363-1378.

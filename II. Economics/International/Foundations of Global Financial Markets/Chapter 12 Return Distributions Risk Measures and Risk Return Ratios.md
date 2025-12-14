---
aliases:
  - Return Distributions Risk Measures and Risk Return Ratios
tags:
key_concepts:
parent_directory: "[[II. Economics/International/Foundations of Global Financial Markets]]"
cssclasses: academia
title: "Chapter 12: Return Distributions, Risk Measures, and Risk-Return Ratios"
linter-yaml-title-alias: "Chapter 12: Return Distributions, Risk Measures, and Risk-Return Ratios"
---

# 12

Return Distributions, Risk Measures, and Risk-Return Ratios

# CONTENTS

Learning Objectives

Measuring the Rate of Return

Return Distributions

Describing a Probability Distribution

Continuous Probability Distributions Used to Describe Returns

Normal distribution

Stability property

Attacks on the normal distribution

Family of stable distributions

Some Stylized Facts about Stock Returns

Joint Probability Distributions

Covariance and Correlations

Portfolio Risk Measures

Value-at-Risk Measure

Conditional Value-at-Risk Measure

Reward-Risk Ratios

Reward Measures

Risk Measure

Key Points

Questions

Learning Objectives

After reading this chapter, you will understand:

- how an asset's rate of return is calculated;
- what is meant by a random variable;
- what a probability distribution is, and the difference between a discrete and a continuous probability distribution;
- the four moments that are used to describe a probability distribution;
- why it is important to understand the distribution of asset returns;
- what information is contained in the tails of a probability distribution;
- the stability property of a probability distribution, and why it is important for portfolio management and risk management;
- the statistical properties of the normal distribution;
- why the normal distribution has been criticized as a probability distribution for asset return distributions;
- why nonnormal stable distributions are favored over the normal distribution for describing asset return distributions;
- stylized facts about asset return distributions;
- what joint probability distributions are and why they are needed in portfolio management and risk management;
- the use of covariance/correlation to measure the joint randomness of random variables;
- the three basic features that an investment risk measure should be able to take into consideration: (1) relativity of risk, (2) multidimensionality of risk, and (3) asymmetry of risk;
- the difference between an arithmetic average return and a geometric average return;
- what a reward-risk ratio is, and the different types of such ratios that can be calculated.

In the chapters 13 and 14, we discuss two important theories: the theory of portfolio selection and asset pricing theories. These theories are based on assumptions regarding the probability distribution for asset returns, a measure of risk, and a reward-risk ratio for constructing and selecting among alternative portfolios. For example, chapter 13 discusses the theory of portfolio selection assuming that the probability distribution of returns is normally distributed and that the measure of risk is the variance. If investors construct portfolio as the theory suggests, using the Sharpe ratio (one type of reward-risk ratio explained in this chapter), then one theory of asset pricing can be derived.

The purpose of this chapter is not only to explain the statistical concepts needed to understand the theories covered in the next chapter but also to briefly review alternative probability distributions for returns, alternative risk measures, and alternative reward-risk ratios that have been used by practitioners to overcome the drawbacks of the theories explained in the next two chapters. The coverage here is at a basic level. Courses in financial theory and risk management provide a more extensive discussion of these concepts.

What is critical to understand is that the quantitative measures of risk described here are driven by assumptions and by the estimation of parameters required to calculate the selected risk measure. Therefore, a major risk associated with measuring risk is model risk, or the risk that the models are subject to forecasting errors.

# Measuring the Rate of Return

An asset's rate of return (or simply, "return") over a given time interval is equal to the change in the asset's price plus any distributions received from holding the asset, expressed as a fraction of the asset's price at the beginning of the time interval. When computing the asset's return, it is important to include any income distributions made to the investor, or the measure of return will be deficient. The income distribution can be interest income in the case of a debt obligation or dividend income in the case of a stock.

An asset's return, designated by  $R$ , is given by:

$$
R = \frac {p _ {1} - p _ {0} + C}{p _ {0}},
$$ where


$p_0 = \text{price at the beginning of the time interval},$

$p_{1} = \text{price at the end of the time interval, and}$

$C =$  cash distribution.

For example, if an asset's price increased from $100 on January 1 to $105 by December 31 of the same year, and on December 31 a cash distribution of 1 was made, then the asset's return for the year would be

$$

R = \frac {\mathrm {\ 105 - \ 100 + \$ 1}}{\mathrm {\ 100}} = 0.06 = 6 \%

$$

# Return Distributions

When studying financial markets, it is critical to understand the distribution of the returns of an asset. Moreover, it is necessary to make some assumption about asset return distributions when building models for selecting assets to be included in a portfolio. With the exception of a risk-free asset, the return on an asset is a random variable.

A random variable is a function that assigns a numerical value to the potential outcomes of an experiment. For example, in the experiment of tossing a die, we could define the random variable  $x$  as the number of dots on the face of the die that shows. The possible outcomes (i.e., the numerical values) are 1, 2, 3, 4, 5, and 6. When tossing a coin, there are two possible outcomes: head and tail. The numerical value of 1 can be assigned to the outcome of a head occurring and a numerical value of 2 can be assigned to the outcome of a tail occurring. A random variable can be discrete or continuous. As the name suggests, a discrete random variable limits the outcomes so that the random variable can only take on discrete values. A continuous random variable can take on any possible value in the range of possible outcomes. When a random variable is the return on an asset, the random variable is assumed to be continuous. Our focus in this chapter is on continuous random variables.

# Describing a Probability Distribution

A probability distribution assigns a probability to each numerical value of a random variable. For example, in the tossing of a die, each numerical value of this random variable is assigned a probability of  $1/6$ . For the coin tossing, the numerical value for a 1 occurring (an outcome of a head) is  $1/2$ , and the numerical value for a 2 occurring (an outcome of a tail) is also  $1/2$ .

Throughout most of this book, we will use probability distributions to describe the probability distribution for asset returns.

There are discrete and continuous probability distributions. Because our focus is on continuous random variables, we will look at the properties of various continuous probability distributions.

The information that can be obtained from the continuous probability distribution of an asset's expected return is critical when pricing assets (explained in chapter 14) and when constructing portfolios (described in chapter 13). Four measures are commonly used to describe a probability distribution: location, dispersion, asymmetry, and concentration in tails. In statistical terminology, these measures are referred to as the statistical moments (or simply, "moments") of a probability distribution.

The location of a probability distribution is a measure of its central value. The three measures used to describe central value are the mean (or average), the median, and the mode. There is a relationship among these three measures that depends on the skewness of a probability distribution, to be described later. The most commonly used measure of location in finance is the mean, which is typically denoted by the Greek letter  $\mu$  ("mu"). The mean is the first moment of a probability distribution and is also referred to as the expected value. In practice, when computing the central measure for a random variable from a sample of size  $n$ , the sample mean is used and is computed as:

$$

\bar {x} = \left(\frac {1}{n}\right) \sum_ {i = 1} ^ {n} x _ {i}, \tag {12.1}

$$ where  $\overline{x}$  is equal to the mean of the sample, and  $x_{i}$  is the ith observation.

Dispersion is a measure of how spread out the potential outcomes are that can be realized. Although there are various measures of dispersion—variance, mean absolute deviation, and range—the most commonly used measure in finance is the variance. The variance measures the dispersion of the outcomes that can be realized relative to the mean and is referred to as the second moment of a probability distribution. For a sample of size  $n$  ( $i = 1, 2, \ldots, n$ ) for random variable  $x$ , the variance, denoted by  $\operatorname{var}(x)$ , is computed as follows:

$$
\operatorname {v a r} (x) = \left(\frac {1}{n}\right) \sum_ {i = 1} ^ {n} x _ {i} \left(x _ {i} = \bar {x}\right) ^ {2}.
$$

Basically, the variance is the average of the squared deviations from the mean. Because the variance is in squared units, the standard root of the variance is typically used. The square root of the variance is called the standard deviation.

In statistics, the lowercased letter  $\sigma$  ("sigma") of the Greek alphabet is used to denote the standard deviation, and  $\sigma^2$  is used to denote the variance. The same notation is also used in finance.

When we discuss portfolio selection theory in chapter 13, we will see how, according to this theory, investors who select assets for inclusion in a portfolio take into consideration only the first two moments of the probability distribution of return on assets: the mean and variance. For this reason, portfolio theory is often referred to as mean-variance analysis or mean-variance optimization. The other measures or statistical moments described below are ignored. More recent approaches to portfolio theory seek to include moments higher than the second moment.

A probability distribution can be symmetric or asymmetric around its mean. A commonly used measure for the asymmetry of a distribution is its skewness, which is the third moment of a probability distribution. An asymmetric distribution can exhibit either negative or positive skewness. Negative skewness indicates that the distribution is skewed to the left; that is, compared to the right tail, the left tail is elongated (see figure 12.1, top panel). Positive skewness indicates that the distribution is skewed to the right; that is, compared to the left tail, the right tail is elongated (see figure 12.1, bottom panel).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/23669622-4e61-4759-9866-61562641cd84/9ececb8ecff8d2082b2ad15acd5f93e85f3841c8940820d4dddcc743266ba032.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/23669622-4e61-4759-9866-61562641cd84/47a84d834a10a5a5f6c9ceb9c45935a5b97e0fb2eccd6c25969e18ae0d4b0437.jpg)

Figure 12.1 Negative (top panel) and positive (bottom panel) skewed probability distributions.

A probability distribution's skewness measure is denoted by  $\beta$  ("beta") and ranges from  $-1$  to  $+1$ . A probability distribution that is symmetric around its mean has a  $\beta$  equal to zero. Nonsymmetric probability distributions (i.e., skewed distributions) have a nonzero  $\beta$ . The value of  $\beta$  can range from  $-1$  to  $+1$ . A positive  $\beta$  means that the probability distribution is skewed to the right; a negative  $\beta$  means that the probability distribution is skewed to the left. Unlike the calculation of the mean and the variance, which have a uniform formula for calculating the value of the moment of a probability distribution, the definition of skewness does not. The two most common measures of skewness used are Fisher's skewness and Pearson's skewness, the latter being equal to the square of the Fisher's skewness.

The tails of a probability distribution contain important information about potential outcomes. The tails of a probability distribution are the portion of the distribution that holds information about extreme outcomes that may arise for the random variable. The "fatness" of the tails of a probability distribution is related to the peakedness of the distribution around its mean. The joint measure of peakedness and tail fatness is called kurtosis. Kurtosis, denoted by  $\alpha$ , is the fourth moment of a probability distribution and determines the tail weight. As for skewness, there is no standard measure for kurtosis. Fisher's kurtosis and Pearson's kurtosis are two commonly used measures. Fisher's kurtosis, also referred to as excess kurtosis, is found by subtracting three from Pearson's kurtosis.

In addition to the four commonly used moments just explained for describing a probability distribution, a concept called an  $\alpha$ -quantile is also used. The  $\alpha$ -quantile provides information about where the first  $\alpha\%$  of the probability distribution is located. Given an arbitrary observation of some probability distribution, this observation will be less than the  $\alpha$ -quantile, denoted by  $q_{\alpha}$ , in  $\alpha\%$  of the cases and will exceed it in  $(100 - \alpha)\%$  of the cases. There are special names given to some quantiles: quartiles and percentiles. The  $25\%$ ,  $50\%$ , and  $75\%$  quantiles are referred to as quartiles, with the  $25\%$  quantile being the first quartile, the  $50\%$  quantile being the second quartile, and the  $75\%$  quantile being the third quartile. The  $1\%$ ,  $2\%$ , …,  $98\%$ , and  $99\%$  quantiles are called percentiles.

Continuous Probability Distributions Used to Describe Returns

Numerous probability distributions have been used to describe asset returns. We limit our discussion to distributions that have a specific desirable property for the purpose of portfolio theory, the stability property. The family of probability distributions that possess the stability property is the stable distribution. A special case of the stable distribution is the normal distribution, the distribution that dominates portfolio theory and much of financial theory. We first describe the normal distribution and then discuss the family of stable distributions.

Normal distribution The normal distribution, also referred to as the Gaussian distribution, is a bell-shaped distribution (see figure 12.2). The normal distribution is symmetric around the mean. This means that half of the probability distribution is below the mean (i.e., to the left of the mean in figure 12.2) and half is above the mean (i.e., to the right of the mean in figure 12.2). Another well-known characteristic of the normal distribution is that approximately  $68\%$  of the probability is given to values that lie in an interval of one standard deviation around the mean, and the probability is about  $95\%$  when the interval is two standard deviations around the mean. Nearly all the probability is assigned to values within three standard deviations around the mean  $(99\%)$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/23669622-4e61-4759-9866-61562641cd84/4df5ce633a2b840088d98f44d60c8702852be71493894cec594292e5c5d46efa.jpg)

Figure 12.2 Normal (Gaussian) probability distribution;  $\sigma$  denotes the standard deviation.

In terms of the four moments of a continuous probability distribution, the normal distribution can be described as follows. First, the measure of central value, the location parameter, equals the mean of the distribution  $(\mu)$ , and the measure of dispersion is the variance  $(\sigma^2)$ . Because the normal distribution is symmetric, the skewness measure  $(\beta)$  is equal to zero. The Fisher kurtosis (excess kurtosis) measure for the normal distribution is 3.

With respect to kurtosis, figure 12.3 shows the difference between a normal probability distribution and a probability distribution that is symmetric but not normally distributed. For both distributions, the mean is zero and the variance is equal to 1. As can be seen, the symmetric nonnormal distribution is characterized by a higher peak at the mean (i.e., zero is the mean) than the normal distribution. A probability distribution with this characteristic is said to be a leptokurtic distribution.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/23669622-4e61-4759-9866-61562641cd84/01ca7b9d955a04e0d2e1243e4c1e18c41509360b6f91fb0d3b90c400a22fdc4a.jpg)

Figure 12.3 Difference between a standard normal distribution and a distribution with high excess kurtosis.

Figure 12.3 shows the implications for the tails of the distribution for the nonnormal symmetric distribution compared to the normal distribution as a result of the former's greater peakedness. The greater peakedness causes the tails of the symmetric nonnormal distribution to be fatter than those for the normal distribution. When a probability distribution has this characteristic, it is said to be a "fat-tailed distribution" or a "heavy-tailed distribution." Because the Fisher (excess) kurtosis measure for a normal distribution is 3, the same measure for a fat-tailed distribution will be greater than 3. If instead of having greater peakedness than a normal distribution, a probability has less peakedness, the probability distribution is said to be a platykurtic distribution. For such probability distributions, there is less probability in the tails than in the normal distribution, and they will have a Fisher kurtosis measure that is less than 3.

Let's look at actual returns distributions for the major stock market indices of several countries: the United States in figure 12.4 (Standard & Poor's 500, S&P 500), Germany in figure 12.5 (Deutscher Aktienindex, DAX), Japan in figure 12.6 (Nihon Keizai Shinbun, Nikkei 225), and the United Kingdom in figure 12.7 (Financial Times Stock Exchange 100, FTSE 100). Although a visualization of the figures for all indices and all periods suggests that the distributions are not normal, a more rigorous analysis is required to make that determination. Statistical tests are used to determine whether a distribution is normal. We will not discuss these tests here, but they are the Jacque-Bera test, the Anderson-Darling test, and the Kolmogorov-Smirnov test. In general, these tests reject the hypothesis that the distributions are drawn from a normal distribution.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/23669622-4e61-4759-9866-61562641cd84/f036f90ec7c4012f49ee9a54d5947e7c28acdfdb2fa4cb1aedf7ae445b42b8da.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/23669622-4e61-4759-9866-61562641cd84/a0b4fc20ed1937d7192993ef7f89e95640de555ff472239eb6dd57bddc30e1d4.jpg)

Figure 12.4

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/23669622-4e61-4759-9866-61562641cd84/03f61645e4d60e3460f45edb2dcb1de8e8a37233982d27ee5835417afff0bd45.jpg)

S&P 500 monthly returns plotted against a normal distribution: (a) S&P 500 monthly returns from 1970 to 2015; (b) S&P 500 monthly returns from 1980 to 2015; (c) S&P 500 monthly returns from 1990 to 2015.

Source: This figure was created for the authors by Jang Ho Kim of Kyung Hee University using CRSP data.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/23669622-4e61-4759-9866-61562641cd84/502054d61853c0b55ee1cf733c69419858cd12adbf6b4934f3f49ac9b04bd24b.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/23669622-4e61-4759-9866-61562641cd84/427b0b62d5b3ebe494af1ff2968a90b255746534a103224d5119f95891bad4ff.jpg)

Figure 12.5

DAX returns plotted against a normal distribution, 1991-2015: (a) DAX monthly returns; (b) DAX daily returns.

Source: This figure was created for the authors by Jang Ho Kim of Kyung Hee University using data from Yahoo! Finance.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/23669622-4e61-4759-9866-61562641cd84/98c5ccb3afc8b5adc95e2196d5870ac138eccc05421bf6dc9750ef8dd6cd10b9.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/23669622-4e61-4759-9866-61562641cd84/aee072e1774c031796d25c5c7f380b2f3daa4d84da107d3158e7bd37d0b768e1.jpg)

Figure 12.6

Nikkei 225 returns plotted against a normal distribution, 1990-2015: (a) Nikkei 225 monthly returns; (b) Nikkei 225 daily returns.

Source: This figure was created for the authors by Jang Ho Kim of Kyung Hee University using data from Yahoo! Finance.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/23669622-4e61-4759-9866-61562641cd84/2eda6b2c44b3cd1d77d1316af82b47b97ac437bf9d1eb23c0f39bf673e0fae45.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/23669622-4e61-4759-9866-61562641cd84/2efdbcccae252bfde9c4e189b16d917739007dac8884f6d6281610dca0f57d4c.jpg)

Figure 12.7

FTSE 100 returns plotted against a normal distribution, 1990-2015: (a) FTSE 100 monthly returns; (b) FTSE 100 daily returns.

Source: This figure was created for the authors by Jang Ho Kim of Kyung Hee University using data from Yahoo! Finance.

Stability property There is a highly desirable property of the normal distribution that makes it attractive in dealing with asset returns for the purpose of portfolio theory as well as risk management. The property, referred to as the "stability property," states that the sum of a number of  $N$  random variables that follow a normal distribution will again be a normal distribution, provided that the random variables behave independently of one another.

The stability property is important for two reasons in portfolio theory and risk management. First, suppose that an investor has a portfolio of 80 stocks, and each of those 80 stocks is assumed to follow a normal distribution and behave independently of every other one. The stability property of the normal distribution means that the portfolio return (where the portfolio is composed of those 80 stocks) will follow a normal distribution. In our discussion of probability distributions below, the discussion is restricted to those distributions that satisfy the stability property. The second reason is that the stability property allows aggregation of asset returns over time. An example is the daily returns of some stock. If the daily return for the stock is assumed to be normally distributed, and if an investor aggregates the daily returns to obtain a weekly return for that stock, then by the stability property, the weekly return is also normally distributed.

Attacks on the normal distribution The use of the normal distribution has been criticized on empirical grounds. According to the normal distribution, holding an asset will expose an investor to small-percentage daily losses and small-percentage daily gains much more often than it will expose the investor to negligible or extreme fluctuations. However, a preponderance of empirical evidence based on observed returns for various asset classes and for different countries leads to rejection of the hypothesis that return distributions are normally distributed. The empirical evidence from many countries has shown that asset returns exhibit fat tails relative to the normal distribution. The implication is that the extreme values (i.e., the values found in the tails of a distribution) are more likely to occur (i.e., have a higher probability of occurrence) than predicted by the normal distribution. This means that between periods in which the market for an asset exhibits relatively modest changes in price, there will be periods in which the changes are much greater (i.e., market crashes and market booms) than predicted by the normal distribution. In the case of stocks, the presence of fat tails can help explain larger price fluctuations for stocks over short periods than can be explained by changes in fundamental economic variables, as Robert Shiller has observed.

The extreme losses that occurred during the financial crisis of 2008-2009 raised the question of whether existing models and practices, largely based on the normal distribution, represent an adequate and reliable framework for portfolio management and risk management. However, empirical attacks on the use of the normal distribution are not solely of recent vintage. Empirical studies on the properties of asset return distributions date back to the pioneering work of Benoit Mandelbrot and Eugene Fama. Shortly after the publication of their research rejecting the normal distribution, Paul Cootner expressed his concern regarding the implications of that finding for their statistical tests, stating:

Almost without exception, past econometric work is meaningless. Surely, before consigning centuries of work to the ash pile, we should like to have some assurance that all our work is truly useless. If we have permitted ourselves to be fooled for as long as this into believing that the Gaussian assumption is a workable one, is it not possible that the Paretian revolution is similarly illusory?11

Despite the Mandelbrot-Fama findings, as well as numerous other studies, the "normality" assumption remains the cornerstone of many leading theories used in finance.

Family of stable distributions Alternative probability distributions to describe asset returns have been proposed and empirically tested. Testing of these alternative probability distributions is necessary, because there is no fundamental theory that can suggest a distributional model for asset returns, and hence the problem remains largely a statistical one. Our focus here is on the class of probability distributions known as the stable distribution.

Mandelbrot and Fama not only rejected the assumption of normality based on their empirical work, they also proposed an alternative probability distribution to replace the normal distribution, the stable Paretian distribution. A major drawback to all the alternative probability distribution models tested is their failure to satisfy the stability property, which is a highly desirable property for asset returns in the context of portfolio management. Only for the class of stable distributions does one obtain the property that portfolio returns follow a stable distribution. By "class" of a probability distribution, we mean that there are probability distributions that fall into the category of the distribution (i.e., they have the general statistical properties of the distribution).

The class of stable distributions is a large and flexible class of probability distributions that also allows skewness and heavy tails for asset returns. The normal distribution turns out to be one particular case of the class of stable distributions that is symmetric. To distinguish between the normal distribution and nonnormal distributions that are in the class of stable distributions, Mandelbrot referred to nonnormal stable distributions as stable Paretian distributions or Lévy stable distributions.

A stable distribution is described by four parameters:

1. a location parameter  $(\mu)$ ,
2. a scale parameter  $(\sigma)$ ,
3. a skewness parameter  $(\beta)$ , and
4. a kurtosis parameter  $(\alpha)$ .

When  $\beta \neq 0$ , the stable distribution is skewed and is characterized by fat tails. That is, there is a high probability that an extreme outcome may occur relative to what could occur for a normal distribution when the kurtosis parameter  $(\alpha)$  has a value that is less than 2. The value for  $\alpha$ , also referred to as the index of stability, is positive but cannot exceed 2. The range for the skewness parameter,  $\beta$ , is from  $-1$  to  $+1$ . The stable distribution is skewed to the right if  $\beta$  is positive and skewed to the left if  $\beta$  is negative.

The normal distribution and the Lévy distribution are special cases of the stable distribution. $^{12}$

From a computational perspective, the major drawback to the stable nonnormal distributions (i.e., stable Paretian distributions) is that the variance equals infinity because of the tail behavior of the stable nonnormal distribution. The implication for portfolio theory will be clear when we discuss the theory in chapter 13, where we explain the critical role of the variance. A second problem involves another technical point regarding the ability to estimate the probability function. Basically, with the exception of the normal distribution and Lévy distribution,[13] there is no closed-form expression (i.e., analytical solution) for a stable Paretian distribution. Although this may have been a valid problem with the use of stable distributions at one time, that is no longer the case, because significant advances in computational finance over the past 25 years have made it fairly straightforward to fit observed returns to determine a stable Paretian distribution's parameters.

Although observed stock returns exhibit tails thicker than those of the normal distribution, they are still inconsistent with the size of the tails predicted by the stable Paretian distribution. More recently, tempered stable distributions have been suggested for modeling the distribution of stock returns; such distributions address not only the issue of tail thickness being more consistent with observed stock returns but also the problem of infinite variance. The mathematics of the tempered stable distribution is beyond the scope of this chapter, but the basic idea is simple. Tempered stable distributions are obtained from the class of stable distributions through a process called "tail tempering." Tail tempering is accomplished by modifying only the tails of stable distributions so that they remain thicker than the tails of the normal distribution but do not lead to an infinite volatility.[14]

Some Stylized Facts about Stock Returns

An extensive body of empirical research on stock returns in the stock markets of many countries has accumulated since the early 1960s. A fair conclusion from these studies leads to several stylized facts. As used here, the expression "stylized facts" refers to empirical findings that are consistent for different times and different country stock markets investigated. They are (1) skewness, (2) fat tails, (3) volatility clustering, (4) autoregressive behavior, and (5) the temporal behavior of tail thickness.[15]

The first two stylized facts were discussed earlier. Skewness of stock returns means that asymmetry exists in the upside and downside potential of price changes. There can be negative or positive skewness. Negative (positive) skewness means that price behavior is such that more negative (positive) stock price changes are exhibited than would be suggested by a symmetric distribution. Fat tails means that the probability of extreme price movements (up and down) is much larger than predicted by the normal distribution. Volatility clustering means that large price changes tend to be followed by large price changes, and small price changes tend to be followed by small price changes. Autoregressive behavior means that price changes depend on price changes in the past (e.g., positive price changes tend to be followed by positive price changes). Finally, the temporal behavior of tail thickness means that the probability of extreme price changes through time is smaller in normal markets and much larger in turbulent markets.

# Joint Probability Distributions

Thus far we have discussed the probability distribution of a single random variable, the return on an asset. A probability distribution that involves only a single random variable is referred to as a univariate probability distribution and helps us understand the attributes of the returns for an individual asset. However, in chapters 13 and 14, we will be considering a portfolio of assets and therefore will be interested in the probability distribution for multiple assets. This requires that we expand our understanding of probability distributions from univariate probability distributions to multivariate probability distributions, or what is referred to as joint probability distributions.

To understand the concept of a joint probability distribution using asset returns, suppose that an investor has constructed a portfolio consisting of the common stock of two companies, company ABC and company XYZ. There is a univariate probability distribution for the return on the common stock of company ABC and a univariate probability distribution for the return on the common stock of company XYZ. The return distribution for the common stock of each company is called the marginal probability distribution. Suppose an investor is interested in the return on a portfolio consisting of the common stock of these two companies. The portfolio return of interest is known as a joint probability distribution.

When dealing with joint probability distributions, an investor is faced with the interdependence between the two return distributions. For example, in the case of the returns for the common stock of companies ABC and XYX, do large returns for company ABC imply large returns for the stock of company XYZ or small returns for the common stock of company XYZ? This property is referred to as the dependence of random variables. When there is no dependence between two random variables, the two random variables are said to be independently distributed. Although there is a technical definition of what is meant by independently distributed, the basic idea is simple in the special case of only two random variables. The two random variables are said to be independently distributed if the value of one random variable does not provide any information about the value of the other random variable.

Although the field of statistics offers several ways to measure the dependence between two random variables, the measure used in finance is the covariance or equivalently, correlation.

# Covariance and Correlations

The covariance of two random variables is a measure of the joint variation of the random variables, where the association is assumed to be a linear one. In the case of two random variables, the covariance is calculated with sample data as follows. Let  $x$  and  $y$  be two random variables, and denote their sample means by  $\overline{x}$  and  $\overline{y}$ , respectively. Assuming that there are  $n$  observations for the two random variables, then the covariance between the two random variables  $x$  and  $y$ , denoted by  $\operatorname{cov}(x, y)$ , is

$$
\operatorname {c o v} (x, y) = \left(\frac {1}{n}\right) \sum_ {i = 1} ^ {n} \left(x _ {i} - \bar {x}\right) \left(y - \bar {y}\right). \tag {12.2}
$$

In words, the covariance is calculated by (1) calculating for all observations for each random variable the deviation from its respective mean, (2) multiplying for each observation the deviation for each random variable, (3) summing the product of the deviations, and (4) dividing by the number of observations. The sample covariance is then the average of all joint deviations.

A problem with the covariance is that it is affected by the scale of the random variables. In other words, the covariance is scaling variant. As a result, it is not possible to compare any pair of covariances, and it is difficult to interpret their values. For example, suppose that for our two random variables,  $x$  and  $y$ , the computed covariance is 30. Suppose that  $x$  is measured in a different way, such as  $20 + 10x$ . A mathematical property of the covariance is that the covariance would be 10 times the original covariance. That is, the covariance would be 300.

To deal with this problem, an alternative but related measure can be developed by dividing the covariance by the variance of the two random variables. The resulting measure is called the Pearson correlation coefficient, or simply the correlation coefficient. That is, the correlation coefficient, denoted by  $\operatorname{cor}(x,y)$ , is

$$
\operatorname {c o r} (x, y) = \frac {\operatorname {c o v} (x , y)}{\operatorname {v a r} (x) \operatorname {v a r} (y)}, \tag {12.3}
$$ where  $\operatorname{var}(x)$  and  $\operatorname{var}(y)$  are the sample variances as computed using equation (12.2).


The correlation coefficient can then be shown to have a value between  $-1$  and  $1$ , where  $-1$  means the two random variables are perfectly negatively correlated, and  $1$  means they are perfectly positively correlated. Unlike the covariance, the correlation coefficient is not affected by the scale of the two random variables and is therefore said to be scale invariant.

# Portfolio Risk Measures

In portfolio theory, which we describe in chapter 13, the variance of a portfolio's return has historically been the most commonly used measure of investment risk. However, investors have developed different investment strategies in their attempt to realize their investment objectives. Consequently, financial theorists, practitioners, and regulators have come to believe that it is difficult to accept the view that there is only one definition of investment risk. Moreover, the variance or standard deviation as a risk measure may no longer be suitable if returns are not normally distributed.

Before exploring alternative measures of risk, let us discuss the basic features of investment risk measures. Leslie A. Balzer has argued that a risk measure is investor specific, and therefore there is "no single universally acceptable risk measure."16 He proposed three basic features that an investment risk measure should be able to take into consideration: (1) relativity of risk, (2) multidimensionality of risk, and (3) asymmetry of risk.

Relativity of risk means that the risk should be related to performing worse than some alternative investment or benchmark. Several proposals in the literature have suggested that investment risk be measured by the probability of the investment realizing a return that is less than an investor's designated risk benchmark.[17] In addition, an investor could have multiple investment objectives, which would call for multiple risk benchmarks. This is what Balzer means by multidimensionality of risk. The key is identifying a suitable benchmark that reflects an investor's investment objectives. Finally, asymmetry of risk means that it is reasonable to expect that risk is an asymmetric concept related to downside outcomes. Consequently, any realistic candidate for an investment risk measure should value upside and downside differently. Although the standard deviation considers positive and negative deviations from the mean as a potential risk, for this measure, outperforming relative to the mean is penalized just as much as underperforming.


# Value-at-Risk Measure

The value-at-risk (VaR) measure is defined as the minimum level of loss at a given, sufficiently high, confidence level for a predefined time horizon. Figure 12.8 illustrates the VaR measure graphically.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/23669622-4e61-4759-9866-61562641cd84/bb9e87727cd3f96850d7cf123abc2c6126ba780ddc3d309e3961a0e82539b86e.jpg)
Figure 12.8 Illustration of the value-at-risk (VaR) measure.

A VaR's predefined time horizon could be a time period of any length. The confidence level that is often used in practice is either  $95\%$  or  $99\%$ . Banks, for example, calculate a daily VaR. For example, suppose a portfolio has a one-week  $95\%$  VaR equal to $10 million. This means that over the horizon of one week, the portfolio may lose more than $10 million with probability equal to 1 minus the confidence interval,  $5\%$  in our example. The probability of 1 minus the confidence level is called the tail probability. Although this example is in terms of a portfolio's dollar loss, the VaR for a portfolio can be calculated in terms of percentage returns. Suppose that the market value for a portfolio is $100 million. If the one-week  $95\%$  VaR of the return distribution is  $2\%$ , then over the time horizon of one week, the portfolio may lose more than  $2\%$  ($2 million) of the portfolio's market value with probability equal to  $5\%$ .

As with all quantitative risk measures described here, VaR is heavily dependent on the probability distribution assumed for the returns. A VaR can be computed assuming a normal distribution, a  $t$ -distribution, or a stable distribution, for example. VaR varies with the assumed distribution, because the tails of the distribution are different. An assumption about the return distribution that does not reflect the true distribution can lead to an under- or overestimation of VaR for a given confidence level. As we discuss in chapter 13, where we cover portfolio theory, if VaR is used as the measure of the risk that is to be minimized in selecting an optimal portfolio, then the portfolio constructed based on the optimization process will not in fact be optimal, because the risk measure fails to reflect the true portfolio risk.

The calculation of VaR is not as simple as calculating the dispersion measures discussed earlier. Various methods have been employed to calculate VaR. The three most common methods in practice are the RiskMetrics method, the historical method, and the Monte Carlo method. An explanation of these methods and their underlying principles is beyond the scope of this chapter. What is important to understand now is that the VaR is more complex to calculate than the dispersion measures, but because of the importance of identifying the true risk of a portfolio, computational complexity is not a reason to shy away from difficult calculations of a risk measure.

Bank regulators throughout the world have adopted VaR as a measure of risk for banks. One of the advantages of VaR is that it is easily understood. However, that does not mean that it is the risk measure of choice for all market participants. VaR has a well-known deficiency because it fails to satisfy one of the theoretical properties of what is referred to as a "coherent" risk measure. The four properties of a coherent risk measure are monotonicity, positive homogeneity, subadditivity, and translation invariance. The problem with the VaR is that it does not always satisfy the subadditivity property (i.e., the property dealing with diversification). It turns out that the VaR for a portfolio may be greater than the sum of the VaRs of the assets composing the portfolio. Thus, the VaR could show more risk if assets were combined into a portfolio than if the assets were held in isolation.

VaR provides a good opportunity to illustrate the notion of model risk that we discussed in the introduction to this chapter. JPMorgan Chase developed its own VaR for measurement of firmwide risk and risk for its trading operations. In its filings with the SEC, it reports daily VaR, using a  $95\%$  confidence interval. In April 2012, JPMorgan Chase reported that the bank changed the model it was using to compute VaR. According to the new model, the VaR was  $115 million, an amount 24\%$  less than under the previous VaR model used at the beginning of 2012. This was the first of several changes to JPMorgan Chase's VaR model beginning in January 2012 that significantly changed the bank's VaR.[18] These changes to JPMorgan Chase's VaR model and the impact on the daily VaR came to light as a result of the bank's trading loss of more than 6.2 billion in 2012, a number inconsistent with a daily VaR of anything in the range of 100 million. In testimony before the U.S. Senate Banking Committee, it was alleged by JPMorgan Chase's chief executive officer, Jamie Dimon, that the trading loss was attributable to the adoption of a new VaR that understated risks. The key takeaway from JPMorgan Chase's use of its VaR model is that these models are far from perfect.

There is another limitation to the use of VaR as a measure of risk, which brings us to our next related risk measure: conditional value-at-risk (CVaR). For a given tail probability, CVaR is defined as the average of the VaRs that are larger than the VaR at that tail probability. Therefore, CVaR focuses on the losses in the tail that are larger than the corresponding VaR level. Because CVaR indicates the magnitude of such losses, it is also referred to as the average value-at-risk (AvaR) measure.[19]

Like the VaR, the CVaR has an intuitive interpretation. Unlike the VaR, however, the CVaR is a coherent risk measure: It satisfies all four required properties discussed earlier. Moreover, it overcomes one other drawback of the VaR: It is not informative about the magnitude of the losses larger than the VaR level.

There are convenient ways for computing and estimating CVaR that permit its application to optimal portfolio design and risk management. However, a discussion of these methods is beyond the scope of this chapter.

# Reward-Risk Ratios

In portfolio theory, an important metric is a measure of the return realized relative to the risk accepted. Typically, these metrics are referred to as reward-risk ratios and are widely used as a criterion for selection among alternative portfolios and as metrics for evaluating the performance of a portfolio manager or the performance of an asset class. The higher the ratio is, the better the performance will be. The numerator of the ratio is some measure of return, and the denominator is some measure of risk.

# Reward Measures

For applications in finance where the reward-risk ratio is presented in terms of the return on an asset or the return on a portfolio, the reward is the realized return. The realized return is an average return realized over a time interval. For example, if the time interval is a month and there are five years of monthly returns, then the realized return is the average monthly return. The average return can be computed in one of two ways: as an arithmetic average return or as a geometric average.

The arithmetic average return is an unweighted average of the returns achieved during a series of such measurement intervals. The general formula is

$$

R _ {A} = \left(R _ {P _ {1}} + R _ {P _ {2}} + \ldots + R _ {P T}\right) / T,

$$ where


$R_{A} =$  the arithmetic average return,

$R_{Pk} =$  return in period  $k$ $(k = 1,\dots,T)$  , and

$T =$  number of time periods.

For example, let's consider an investor who realized the following portfolio returns:  $-10\%$ ,  $20\%$ , and  $5\%$  in July, August, and September, respectively. The arithmetic average monthly return is  $5\%$ .

The arithmetic average return for a portfolio can be thought of as the mean value of the withdrawals (expressed as a fraction of the initial portfolio value) that can be made at the end of each interval while maintaining the initial portfolio value intact. In the preceding example, the investor must add  $10\%$  of the initial portfolio value at the end of the first month, can withdraw  $20\%$  of the initial portfolio value at the end of the second month, and then can withdraw  $5\%$  of the initial portfolio value at the end of the third month.

The geometric average return, also referred to as the time-weighted average return, measures the compounded rate of growth of the initial value, assuming that all cash distributions are reinvested. The general formula is

$$

R _ {G} = \left[ \left(1 + R _ {P _ {1}}\right) \left(1 + R _ {P _ {2}}\right) \dots \left(1 + R _ {P T}\right) \right] ^ {1 / T} - 1,

$$ where  $R_{G}$  is the geometric average return and  $R_{Pk}$  and  $N$  are as defined for the arithmetic average return.

For example, if the portfolio returns were  $-10\%$ ,  $20\%$ , and  $5\%$  in July, August, and September, as in the preceding example, then the geometric average return would be

$$
R _ {G} = [ (1 + (- 0. 1 0)) (1 + 0. 2 0) \dots (1 + 0. 0 5) ] ^ {1 / 3} - 1 = 0. 0 4 3.
$$

As the geometric average return is  $4.3\%$  per month,  $\$ 1$ invested in the portfolio at the end of June would have grown at a rate of  $4.3\%$  per month during the three-month period.

In general, the arithmetic average and geometric average returns do not provide the same answers, because computation of the arithmetic average return assumes the initial amount invested is maintained (through additions or withdrawals) at its initial portfolio value. In contrast, the geometric average return is the return on a portfolio that varies in size because of the assumption that all proceeds are reinvested.

An example shows how the two averages fail to coincide. Consider a portfolio with a  $100 million market value at the beginning of 2017, a$ 200 million value at the end of 2017, and a $100 million value at the end of 2018. The annual returns are 100\% and -50\%. The arithmetic average return is 25\%, whereas the geometric average return is 0\%. The arithmetic average return consists of the average of the $100 million withdrawn at the end of 2017 and the 50 million replaced at the end of 2018. The rate of return is clearly zero; however, the 100\% return in 2017 is exactly offset by the 50\% loss in 2018 on the larger investment base. In this example, the arithmetic average return exceeds the geometric average return. This outcome always proves to be true, except in the special situation where the returns in each interval are the same, in which case the averages are identical

Now that we know that the realized return should be computed using the geometric average return, let's look at how the reward (i.e., numerator) is calculated for a reward-risk ratio. The reward can be measured on an absolute or relative basis. Reward-risk ratios that use absolute rewards use in the numerator the difference between the realized return and the risk-free rate, or zero. When the reward is measured on a relative basis, it is the difference between the realized return and a benchmark selected by a client.

The most popular reward-risk ratio that measures the reward on an absolute basis is the Sharpe ratio.[20] The risk-free return is used to reduce the realized return in this reward-risk ratio:

$$
\text {S h a r p e} = \frac {\text {R e a l i z e d r e t u r n - R i s k - f r e e r a t e o f r e t u r n}}{\text {S t a n d a r d d e v i a t i o n o f t h e r e a l i z e d r e t u r n s}}.
$$

Two well-known reward-risk ratios that measure reward on a relative return basis (i.e., a return in excess of the benchmark) are the Sortino ratio and the information ratio:

$$
\begin{array}{l} \text {S o r t i n o} = \frac {\text {R e a l i z e d r e t u r n - M i n i m u m a c c e p t a b l e r e t u r n}}{\text {S t a n d a r d d e v i a t i o n o f r e t u r n s b e l o w t h e m i n i m u m a c c e p t a b l e r e t u r n}}. \\ \text {I n f o r m a t i o n} = \frac {\text {R e a l i z e d r e t u r n - R e t u r n o n t h e b e n c h m a r k}}{\text {S t a n d a r d d e v i a t i o n o f t h e e x c e s s r e t u r n r e t u r n s}}. \\ \end{array}
$$

# Risk Measure

The denominators of these three ratios all represent a different measure of risk. The Sharpe ratio has come under attack by researchers and practitioners because of its use of the standard deviation (variance) as a measure of risk, which fails to recognize that the return distribution is likely to be skewed. The Sortino ratio addresses this criticism of the Sharpe ratio by using the standard deviation of only the realized returns that are less than the minimum acceptable return. The information ratio uses a risk measure that is calculated by first computing the realized return minus the benchmark return and using those observations to compute the standard deviation. This standard deviation measure is more popularly referred to in the investment management community as "tracking error."

# Key Points
- An asset's return over a given time interval is equal to the change in the asset's price plus any distributions received from holding the asset, expressed as a fraction of the asset's price at the beginning of the time interval.
- With the exception of a risk-free asset, the return on an asset is a random variable.
- When constructing a portfolio of assets, it is necessary to make some assumption about asset return distributions.
- A random variable is a function that assigns a numerical value to the potential outcomes of an experiment.
- A discrete random variable limits the outcomes such that the random variable can only take on discrete values. When the random variable can take on any possible value within the range of possible outcomes, it is a continuous random variable.
- When the random variable of interest is the return on an asset, the random variable is assumed to be continuous.
- Probability distributions are used to describe the potential outcomes of a random variable.
- Four commonly used measures to describe a probability distribution (and referred to as the "statistical moments" of a distribution) are location, dispersion, asymmetry, and concentration in tails.
- A probability distribution's location is a measure of its central value (the first moment), and the measures used to describe this moment are the mean (or average), the median, and the mode.
- The most commonly used measure of location in finance is the mean or value.
- A measure of the variability of the outcomes that can be realized is the second moment of a probability distribution: dispersion. The three most commonly used measures of dispersion are the variance, mean absolute deviation, and range.
- Variance is a measure of the dispersion of the outcome that can be realized relative to the mean and is basically the average of the squared deviations from the mean. The square root of the variance is the standard deviation.
- The asymmetry of a probability distribution around its mean is its skewness and is the third moment of a probability distribution. An asymmetric distribution can exhibit either negative skewness (skewed to the left) or positive skewness (skewed to the right).
- The two most commonly used measures of skewness are Fisher's skewness and Pearson's skewness, the latter being equal to the square of Fisher's skewness.
- The tail of a probability distribution is the portion of the distribution that contains information about extreme outcomes that may arise for the random variable.
- The peakedness of a probability distribution affects how fat the tails are.
- The fourth moment of a probability distribution is measured by its kurtosis, which is the joint measure of peakedness and tail fatness.
- Two measures of kurtosis are Fisher's kurtosis (also referred to as excess kurtosis) and Pearson's kurtosis.
- The  $\alpha$ -quantile of a probability distribution provides information about where the first  $\alpha\%$  of the probability distribution is located.
- A desirable property that a probability distribution should possess when used in portfolio and risk management is the stability property. The class of probability distributions that have this property is known as the stable distribution.
- The normal distribution or Gaussian distribution is a bell-shaped distribution that is symmetric around the mean. It is a special case of a stable distribution.
- Only the first two moments, mean and variance, are needed to describe a normal distribution. A symmetric nonnormal distribution characterized by a higher (lower) peak at the mean than the normal distribution is said to be a leptokurtic (platykurtic) distribution and has a fatter (thinner) tail than the normal distribution.
- The stability property that a normal distribution satisfies is that the sum of  $N$  random variables that follow a normal distribution will again be a normal distribution, provided that the random variables behave independently of one another.
- The stability property is important in portfolio theory and risk management. The stability property means that (1) the portfolio returns (where the portfolio is composed of assets whose returns are normally distributed) will follow a normal distribution and (2) its use allows the aggregation of asset returns over time.
- Empirical evidence does not support the assumption that real-world asset return distributions are best described by a normal distribution; instead, they exhibit fatter tails than predicted by the normal distribution.
- Because there is no fundamental theory that can suggest a distributional model for asset returns, alternative distributions must be empirically tested.
- Because of its desirable characteristics with respect to the stability property, the stable distribution has been suggested to describe asset return distributions.
- The class of stable distributions is a large and flexible class of probability distributions, which also allows for skewness and heavy-tailedness for asset returns. Because this class includes as a special case the normal distribution, a nonnormal stable distribution is referred to as a "Paretian stable distribution."
- A stable distribution is described by four parameters: a location parameter, scale parameter, skewness parameter, and kurtosis parameter (called the "index of stability").
- In the past, certain computational aspects made it difficult to use the Paretian stable distribution for portfolio management (e.g., an infinite variance), but advances in computational finance and modeling (i.e., the tempered stable distribution) have eliminated those problems.
- Five stylized facts have been observed for asset return distributions: (1) skewness, (2) fat tails, (3) volatility clustering, (4) autoregressive behavior, and (5) temporal behavior of tail thickness.
- In portfolio management and risk management, the probability distribution of interest is the joint probability distribution.
- Covariance/correlation is the commonly used way to measure the dependence between two random variables.
- A measure of the joint variation of two random variables that are assumed to be in a linear association is the covariance and its related measure, the correlation.
- The correlation measure overcomes the limitation of the covariance measure, which depends on the scale used to measure the random variable. The range of the correlation is  $-1$  to  $1$ .
- The three basic features that an investment risk measure should be able to take into consideration are (1) relativity of risk, (2) multidimensionality of risk, and (3) asymmetry of risk.
- Relativity of risk means that risk should be related to an asset's performing worse than some alternative investment or benchmark.
- Because an investor could have multiple investment objectives, multiple risk benchmarks are necessary, which underscores what is meant by the multidimensionality of risk.
- Asymmetry of risk means that because it is reasonable to expect that risk is an asymmetric concept related to the downside outcome, any realistic candidate for an investment risk measure has to value upside and downside outcomes differently.
- Two alternative risk measures proposed are value-at-risk (VaR) and conditional value-at-risk (CvaR).
- VaR is defined as the minimum level of loss at a given, sufficiently high confidence level for a predefined time horizon.
- A limitation of the use of VaR as a measure of risk is that it ignores the amount of losses larger than the VaR at that tail probability.
- CVaR (also called "average value at risk") for a given tail probability is defined as the average of the VaRs and hence focuses on the losses in the tail that are larger than the corresponding VaR level.
- An average return can be calculated as either an arithmetic average return or a geometric average return, with the latter being the preferred method.
- Reward-risk ratios measure the reward on a relative or absolute basis.
- The best-known and most commonly applied reward-risk ratio in finance is the Sharpe ratio, but because of the Sharpe ratio's drawbacks, the Sortino ratio is preferred.
- Reward-risk ratios can be calculated based on different reward measures and different risk measures.

# Questions

1. Suppose an investor acquires an asset for $20 and sells that asset for $22 one year later. During that period, a cash distribution of 1 was received by the investor just prior to the sale of the asset. What is the investor's one-year rate of return?
2. Explain why the return on an asset that does not pay a cash distribution over the time interval it is held is equal to the ratio of its selling price to its purchase price, then subtracting 1 from the computed ratio.
3. Why are measures of risk dependent on the probability distribution assumed for returns or profits and losses?
4. A portfolio manager is working with the firm's quantitative team to develop a risk model for the firm. The portfolio manager suggests (based on experience) building the model based on a certain probability distribution of returns. A member of the quantitative team points out that the problem with the probability distribution proposed is that it does not satisfy the stability property. The portfolio manager does not understand the objection. Explain the issue to the portfolio manager.
5. Some practitioners and researchers believe that risk cannot be captured in a single number. How does this statement relate to one of the three features of a risk measure as suggested by Leslie Balzer?
6. When a normal distribution is assumed for the return distribution, why are observations three standard deviations above the mean viewed as representing "tail risk"?
7. A study of daily returns for the S&P 500 by Cook Pine Capital LLC investigated returns from December 30, 1927, through November 21, 2008.[21] For the 20,319 daily returns, the following information was reported:

Mean:  $0.026\%$ ,

Standard deviation:  $1.182\%$ ,

Kurtosis: 18.347,

Skewness: -0.098,

Maximum daily return:  $16.61\%$ , and

Minimum daily return:  $-20.47\%$ .

The table below shows the daily return distribution as observed over the period and what the normal distribution would predict. The distribution is in terms of the number of standard distributions above the mean.

<table><tr><td rowspan="2">Number of Standard Deviations from Mean</td><td colspan="2">Actual Distribution</td><td colspan="2">Normal Distribution</td></tr><tr><td>Observed</td><td>Percentage</td><td>Predicted</td><td>Percentage</td></tr><tr><td>+6σ</td><td>26</td><td>0.13</td><td>0</td><td>0.00</td></tr><tr><td>+5σ</td><td>13</td><td>0.06</td><td>0</td><td>0.00</td></tr><tr><td>+4σ</td><td>34</td><td>0.17</td><td>1</td><td>0.00</td></tr><tr><td>+3σ</td><td>89</td><td>0.44</td><td>27</td><td>0.13</td></tr><tr><td>+2σ</td><td>276</td><td>1.36</td><td>435</td><td>2.14</td></tr><tr><td>+1σ</td><td>1,393</td><td>6.86</td><td>2,761</td><td>13.59</td></tr><tr><td>0σ</td><td>16,603</td><td>81.71</td><td>13,872</td><td>68.27</td></tr><tr><td>-1σ</td><td>1,377</td><td>6.78</td><td>2,761</td><td>13.59</td></tr><tr><td>-2σ</td><td>325</td><td>1.60</td><td>435</td><td>2.14</td></tr><tr><td>-3σ</td><td>100</td><td>0.49</td><td>27</td><td>0.13</td></tr><tr><td>-4σ</td><td>43</td><td>0.21</td><td>1</td><td>0.00</td></tr><tr><td>-5σ</td><td>19</td><td>0.09</td><td>0</td><td>0.00</td></tr><tr><td>-6σ</td><td>21</td><td>0.10</td><td>0</td><td>0.00</td></tr><tr><td>Total</td><td>20,319</td><td>100</td><td>20,319</td><td>100</td></tr></table>

What does the information in the table suggest about the daily return distribution for the S&P 500?

8. One vendor of risk models, FinAnalytica, publishes daily risk measures. The following extracts are from the company's website:[22]

As an industry standard, Value at Risk (VaR) measures the worst expected loss of a portfolio over a specific time interval at a given confidence level. Most commercial risk analytics products today measure VaR based on the thin-tailed and symmetric normal, "bell-shaped" distribution curve. As demonstrated by the current crisis, these normal distribution assumptions result in overly optimistic VaR estimates and they inadequately account for extreme events.

a. Explain what is meant by the above excerpt.

FinAnalytica's Cognity risk management software platform uses fat-tailed, asymmetrical distributions throughout, and incorporates the most advanced statistical methods to model extreme events, volatility clustering, regime switching and correlation shifts in times of market crisis.

b. In the above excerpt, what is meant by "extreme events"?

c. What is meant by "volatility clustering"?

d. Why do you think it is important to model "correlation shifts in times of market crisis"?

Cognity risk analytics provide more accurate fat-tailed VaR estimates that do not suffer from the overoptimism of normal distributions.

e. In the above excerpt, what is meant by "the over-optimism of normal distributions"?

But Cognition goes beyond VaR and also provides the downside Expected Tail Loss (ETL) measure—the average or expected loss beyond VaR. As compared with volatility and VaR, ETL, also known as Conditional Value at Risk (CVaR) and Expected Shortfall (ES), is a highly informative and intuitive measure of extreme downside losses.

f. In the above excerpt, explain what each of the concepts of risk means.

9. Nicholas Taleb, a trader and the author of a body of work attacking risk measures used by financial institutions, wrote an article titled "Ten Principles for a Black Swan–Proof World." One of the principles listed in the article is the following:

Do not let someone making an "incentive" bonus manage a nuclear plant—or your financial risks. Odds are he would cut every corner on safety to show "profits" while claiming to be "conservative." Bonuses do not accommodate the hidden risks of blow-ups. It is the asymmetry of the bonus system that got us here. No incentives without disincentives: capitalism is about rewards and punishments, not just rewards.[23] a. How does this principle apply to the issue of measuring risks that banks must report to regulators?

b. How does this principle relate to the 2012 trading loss of 6.2 billion by JPMorgan Chase bank?

10. Suppose that the monthly returns for two investors is as follows:

<table><tr><td>Month</td><td>Investor 1 (\%)</td><td>Investor 2 (\%)</td></tr><tr><td>1</td><td>9</td><td>25</td></tr><tr><td>2</td><td>13</td><td>13</td></tr><tr><td>3</td><td>22</td><td>22</td></tr><tr><td>4</td><td>-18</td><td>-24</td></tr></table> a. What is the arithmetic average monthly return for the two investors?

b. What is the geometric average monthly return for the two investors?

c. Why does the arithmetic average monthly return diverge more from the geometric monthly return for investor 2 than for investor 1?

11. The following statements appeared in an article by James Picerno:[24]

It's easier to identify weak points in a given risk metric than to offer solutions. So, fairly or not, the Sharpe ratio's various flaws have been dissected in numerous studies over the years. Its leading drawback is arguably the fact that financial market returns don't follow a normal statistical distribution.

a. In the above excerpt, why is the drawback related to the use of the normal distribution?

Standard deviation can be used to analyze data for any distribution curve, but it's not particularly well suited for profiling the nonnormality of investment returns.

b. Explain why.

Those who assume that returns are normally distributed, then, run the risk of underestimating the potential for big losses, particularly over short periods of time. That's because financial markets exhibit what are known as fat tails.

c. Explain why.

12. Explain each of the measures of reward that can be used in a reward-risk ratio.
13. How does the Sortino ratio overcome the limitations of the Sharpe ratio?
14. If the minimum acceptable return that is established by a client is the risk-free rate of return, is the Sortino ratio equivalent to the Sharpe ratio?
15. Why is it important to understand the tails of an asset return distribution?
16. The problem with the normal distribution is that it does not satisfy the stability property. Explain whether you agree or disagree with this statement.
17. In terms of the four moments of a continuous probability distribution, what is the measure of a. central value

b. dispersion c. skewness

d. kurtosis

18 a. If the asset return distribution for a stock has excess kurtosis, are the tails of this distribution more or less than the normal distribution?

b. What is the name of an asset return distribution for a stock that has excess kurtosis?

19. a. What is meant by a stable Paretian distribution?

b. What is meant by the index of stability for a stable Paretian distribution?

20. What are the four stylized facts that have been observed for asset return distributions?
21. What does tail probability mean?
22. Why is conditional value-at-risk a superior risk measure than value-at-risk?
23. In studies of asset return distributions, one often sees information about the Jarque-Bera test, the Anderson-Darling test, and the Kolmogorov-Smirnov test. What is the purpose of these tests?
24. Given the following information:

Realized return  $= 8.5\%$

Risk-free rate of return  $= 3.2\%$

Standard deviation of realized returns  $= 5\%$

Minimum acceptable return  $= 4.2\%$

Standard deviation of below the minimum acceptable return  $= 3\%$

Calculate the following ratios: a. Sharpe ratio

b. Sortino ratio c. Information ratio

This chapter was coauthored with Francesco A. Fabozzi.

1. Also considered is the correlation of returns between assets, which we describe later in this chapter.
2. We will use the Greek letter  $\beta$  in a different way in the chapters that follow. The notation here is just to describe the moments of a probability distribution.
3. Extreme events are referred to as "black swan events" by Nassim Taleb, an options trader, in his book The Black Swan: The Impact of the Highly Improbable (London: Penguin, 2007).
4. When a normal distribution has a mean of 0 and a variance of 1, it is referred to as a "standard" normal distribution.
5. We discuss each of these stock market indexes in chapter 22.
6. See Svetlozar T. Rachev and Stefan Mittnik, Stable Paretian Models in Finance (Chichester, UK: John Wiley & Sons, 2000).
7. See Svetlozar T. Rachev, Christian Menn, and Frank J. Fabozzi, Fat-Tailed and Skewed Asset Return Distributions: Implications for Risk Management, Portfolio Selection, and Option Pricing (Hoboken, NJ: John Wiley & Sons, 2005), chapter 5.
8. Robert Shiller, "Do Stock Prices Move Too Much to Be Justified by Subsequent Changes in Dividends?" American Economic Review 71 (1981): 421-436.
9. Benoit Mandelbrot, "The Variation of Certain Speculative Prices," Journal of Business 26 (1963): 394-419.
10. Eugene F. Fama, "Mandelbrot and the Stable Paretian Hypothesis," Journal of Business 36 (1963): 420-429; Eugene F. Fama, "The Behavior of Stock Market Prices," Journal of Business 38 (1965): 34-105.
11. Paul H. Cootner, The Random Character of Stock Market Prices (Cambridge, MA: MIT Press, 1964), 337.
12. The only other special case of the stable distribution is the Cauchy distribution, which has much fatter tails than the normal distribution.
13. This is also true for the Cauchy distribution.
14. The technique is described in Michele Leonardo Bianchi, Svetlozar T. Rachev, Young Shin Kim, and Frank J. Fabozzi, "Tempered Infinitely Divisible Distributions and Processes," SIAM: Theory of Probability and Its Applications 55 (2010): 59-86.
15. Stoyan V. Stoyanov, Svetlozar T. Rachev, Boryana Racheva-Yotova, and Frank J. Fabozzi, "Fat-Tailed Models for Risk Estimation," Journal of Portfolio Management 37, no. 2 (2011): 107-117.
16. Leslie A. Balzer, "Investment Risk: A Unified Approach to Upside and Downside Returns," in Managing Downside Risk in Financial Markets: Theory, Practice and Implementation, ed. Frank Sortino and Stephen Satchell (Oxford: Butterworth-Heinemann, 2001), 103-156.
17. See, for example, Balzer, "Investment Risk."
18. Dawn Kopecki and Michael J. Moore, "JPMorgan Switches Risk Model Again after Whale Loss," Bloomberg.com, April 12, 2013, http://www.bloomberg.com/news/2013-04-12/jpmorgan-switches-risk-model-again-after-whale-loss.html.
19. A related measure also used to refer to CvaR: "expected tail shortfall" (ETL). There are slight technical differences between CVaR and ETL.
20. William F. Sharpe, "Mutual Fund Performance," Journal of Business 39 (suppl.) (1966): 119-138.
21. Cook Pine Capital LLC, "Study of Fat-Tail Risk," November 26, 2008, http://www.cookpinecapital.com/pdf/Study\%20of\%20Fat-tail\%20Risk.pdf.
22. FinAnalytica, http://www.finanalytica.com/daily-risk-statistics.
23. Nicholas Taleb, "Ten Principles for a Black Swan-Proof World," *Financial Times*, April 7, 2009, FT.com.
24. James Picerno, "Building a Better Sharpe Ratio," *Financial Advisor Magazine*, March 30, 2012, http://www.fa-mag.com/news/building-a-better-sharpe-ratio-10199.html.


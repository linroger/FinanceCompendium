---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Financial Applications of Probability Distributions
linter-yaml-title-alias: Financial Applications of Probability Distributions
---

# Financial Applications of Probability Distributions

In Chapter 4, we took a look at the fundamentals of probability theory and introduced some distributions. Option theory and indeed much of finance theory is based on the normal distribution as well as the related lognormal distribution; hence, we devote a full chapter to these distributions. In the limit, discrete distributions such as the binomial can be structured to converge to either the normal or lognormal distributions. The reasons for this extensive use of the normal and lognormal distributions are twofold. First, these distributions have only two parameters, because they are completely characterized by the expected value and variance. Second, financial utility is often based on two characteristics: non-satiation and risk aversion. Non-satiation is the notion that people always prefer more money to less. As such, they prefer a higher expected return, so they have a preference for the first moment of the distribution. Risk aversion is the notion that people do not like risk. Hence, they dislike the second moment of the distribution. If people care about only the first two moments, then the normal distribution is appropriate.

Of course, people may indeed care about higher-order moments. For example, positive skewness is generally a desirable feature of investments. Some financial models are based on skewness preference and skewed distributions. In the first part of the chapter, we will introduce the normal and lognormal distributions. The second part of the chapter refers to a related distribution called the bivariate normal and lognormal. As such, it might be more appropriate to call the single variable versions the univariate normal and lognormal distribution, but this is typically not done. Usually when one uses the phrase normal distribution, one means the univariate normal. This case is the one involving only a single variable. In the second case, the bivariate normal or lognormal, there are two normally distributed variables and they may be correlated.

# 5.1 THE UNIVARIATE NORMAL PROBABILITY DISTRIBUTION

The normal probability distribution, known commonly to the layperson as the bell-shaped curve or bell curve, was first identified in the 18th century by Abraham de Moivre (1667-1754). Its mathematical structure was developed by Carl Frederick Gauss (1777-1855) and the curve is often referred to as the Gaussian distribution. Recall the

mathematical function that plots the normal curve, called the probability density function or density function for short, is

$$
n (x) = \frac {1}{\sigma \sqrt {2 \pi}} e ^ {- \left(\frac {x - \mu}{\sigma}\right) ^ {2} / 2}, \tag {5.1}
$$

where  $x$  is the value of the random variable,  $\mu$  is its expected value, and  $\sigma$  is its standard deviation. We use the lowercase  $n(\cdot)$  for the density function to remind us that it is the normal distribution. The variable has values that range from  $-\infty$  to  $+\infty$ .

Any normally distributed random variable can be expressed as a standard normal random variable by subtracting its expected value and dividing by its standard deviation. This standardized normal variable is often referred to with the letter  $z$  and its density is written as

$$
n (z) = \frac {1}{\sqrt {2 \pi}} e ^ {- z ^ {2} / 2}. \tag {5.2}
$$

A normal distribution can apply to any random variable, but this is a special case that we often use that is called the standard normal, which has an expected value of zero and a variance of 1. For example, a normally distributed random variable with an expected value of 6 and a standard deviation of 3 can be modeled with a standard normal random variable with an expected value of 0 and a standard deviation of 1. If one observed a value of the random variable of 8, we would convert it to a standard normal by subtracting the expected value of 6 and dividing by the standard deviation of 3 to obtain  $(8 - 6) / 3 = 2 / 3$ . Alternatively, if we generate a standard normal random variable with value  $2 / 3$ , we can convert it to the random variable we seek to model by multiplying by 3 and adding 6 to obtain  $(2 / 3)^{*}3 + 6 = 8$ .

The density function gives only the height of the curve. The actual probability of a random variable lying within a particular range is provided by the distribution function, which is the cumulative density. The mathematical specification for the cumulative density function for a standard normal is

$$
N (z) = \int_ {- \infty} ^ {z} \frac {1}{\sqrt {2 \pi}} e ^ {- x ^ {2} / 2} d x. \tag {5.3}
$$

This equation is interpreted as the probability that a standard normal variable will be less than  $z$ . It is sometimes written as  $\operatorname*{Pr}(x \leq z)$  or simply  $N(z)$ . The probability is the area under the curve. The total area under the curve, that is, the integral from  $-\infty$  to  $+\infty$ , is 1.0. Thus  $N(\infty) = 1$  and  $N(-\infty) = 0$ . The probability that a standard normal variable will lie between  $a$  and  $b$  ( $a < b$ ) is given as  $N(b) - N(a)$ . With any continuous variable, it is impossible to speak of the probability of obtaining a specific value such as the probability that  $z = a$ . The probability of observing any one value in a continuous distribution is zero. Only the probability over a range can be determined. Thus, the expressions  $\operatorname*{Pr}(z \leq a)$  and  $\operatorname*{Pr}(z < a)$  are equivalent.

Calculation of the probability for a particular range involves the evaluation of the previous integral. It is well known that the distribution function for the normal probability cannot be integrated by standard mathematical means. Instead, estimation techniques

must be used. Tables for the function are widely available and found in nearly every statistics book. Fortunately, there are several other excellent and simple means of computing the normal probability.

It is a general rule that any well-behaved mathematical function with derivatives that exist up to a given order can be approximated by a polynomial function of that order. There are many such approximations of the normal probability, most of which are provided in Abramowitz and Stegun (1972). Probably the most widely used is the following:

$$
N (z) = 1 - n (z) \binom {0. 3 1 9 3 8 1 5 3 k - 0. 3 5 6 5 6 3 7 8 2 k ^ {2} + 1. 7 8 1 4 7 7 9 3 7 k ^ {3}} {- 1. 8 2 1 2 5 5 9 7 8 k ^ {4} + 1. 3 3 0 2 7 4 4 2 9 k ^ {5}}, \tag {5.4}
$$

where  $k = 1 / (1 + 0.2316419z)$  and  $n(z) = \left( \frac{1}{\sqrt{2\pi}} \right) \exp \left( -\frac{z^2}{2} \right)$ . If  $z < 0$ , the fact that the curve is symmetric enables us to obtain  $N(z)$  as  $1 - N(z)$ . This function is known to be accurate to at least four digits.

In addition, the Excel function "=normsdist(x)" where x is a value or cell reference can be used with reasonable accuracy. Table 5.1 provides a detailed table created with this Excel function and is useful when manually estimating values from a standard normal cumulative distribution function.

To use this table, suppose we wish to find the probability of observing a value less than 1.3520. This value is found by looking up 1.3 in the left column and moving over to the 0.05 column. We see that  $N(1.35) = 0.911492$ . This table provides values to six decimal places. We simply round at the 0.0025 and 0.0075. Thus, in this case, 1.352 rounds down to 1.35. Now suppose we wish to find  $N(-0.5230)$ . Because this table provides negative values, we simply find  $N(-0.525)$  as we round up in absolute value to the next 0.005 increment. Thus,  $N(-0.525) = 0.299792$ . Table 5.1 is useful for classroom work as the chance for serious rounding errors is minimal. Note that  $N(0.0) = 0.5$ , meaning that half of the area under the curve is to the left of zero. In this table, however, there are two cells with 0.5 [N(0.0) and  $N(-0.0)$ ]. In the row with -0.0, the values are moving more negative, whereas in the row with 0.0, the values are moving more positive.

In finance, one of our primary interests is in the distribution of financial market returns. When a variable is normally distributed, statistical analysis and testing is much easier. The distribution of daily returns on the S&P 500 from a recent 66-year period is depicted in Figure 5.1. There are 16,858 returns, so the breakdowns are relatively dense.

The figure does give a modest appearance of a normal distribution, but there are some troubling factors. There are two returns of more than  $10\%$  and one of less than  $-20\%$ . Let us try to determine the likelihood that such returns would occur on a given day in a normal distribution.

The average daily return is 0.000338, and the standard deviation is 0.009666. For a return of  $-20\%$ , the  $z$ -statistic is  $(-0.2 - 0.000338) / 0.009666 = -21.2099$ . Thus, a return of  $-20\%$  in a day is more than 21 standard deviations to the left. The probability of this occurring is  $3.8724e - 100$ , which is about  $1.03295e + 97$  years of trading. On the upside, the highest return is more than 11 standard deviations above the mean, a probability also extremely small. These returns are so extreme that they cast doubt about whether the normal distribution is appropriate.

Normal probability theory also says that only about  $0.3\%$  of all returns should be more than  $+ / -$  three standard deviations of the mean. With 16,858 S&P 500 returns, we should expect that  $0.003(16,858) = 50.57$ , or about 51 returns above and below three standard deviations. In fact, there are 112 returns above and 123 below, for a total of 235.

TABLE 5.1 Standard Normal Cumulative Distribution Function Table  
Values for  $N(d)$  given  $d$ : Rows give first decimal of  $d$  and columns give second and third decimals  

<table><tr><td>d</td><td>0.000</td><td>0.005</td><td>0.0107</td><td>0.020</td><td>0.025</td><td>0.030</td><td>0.035</td><td>0.040</td><td>0.045</td><td>0.050</td><td>0.055</td><td>0.060</td><td>0.065</td><td>0.070</td><td>0.075</td><td>0.080</td><td>0.085</td><td>0.090</td><td>0.095</td><td></td></tr><tr><td>-2.9</td><td>0.001866</td><td>0.001836</td><td>0.001807</td><td>0.001778</td><td>0.001750</td><td>0.001722</td><td>0.001695</td><td>0.001668</td><td>0.001641</td><td>0.001615</td><td>0.001589</td><td>0.001513</td><td>0.001489</td><td>0.001465</td><td>0.001441</td><td>0.001395</td><td>0.001372</td><td></td><td></td><td></td></tr><tr><td>-2.8</td><td>0.002555</td><td>0.002516</td><td>0.002437</td><td>0.002439</td><td>0.002340</td><td>0.002364</td><td>0.002327</td><td>0.002291</td><td>0.002256</td><td>0.002221</td><td>0.002186</td><td>0.002152</td><td>0.002085</td><td>0.002052</td><td>0.002020</td><td>0.001988</td><td>0.001957</td><td>0.001926</td><td>0.001896</td><td></td></tr><tr><td>-2.7</td><td>0.003467</td><td>0.003415</td><td>0.003364</td><td>0.003314</td><td>0.003264</td><td>0.003215</td><td>0.003137</td><td>0.003119</td><td>0.003072</td><td>0.003026</td><td>0.002980</td><td>0.002935</td><td>0.002890</td><td>0.002846</td><td>0.002803</td><td>0.002718</td><td>0.002676</td><td>0.002635</td><td>0.002595</td><td></td></tr><tr><td>-2.6</td><td>0.004661</td><td>0.004594</td><td>0.004527</td><td>0.004461</td><td>0.004396</td><td>0.004332</td><td>0.004269</td><td>0.004207</td><td>0.004145</td><td>0.004085</td><td>0.004255</td><td>0.003965</td><td>0.003987</td><td>0.003793</td><td>0.003736</td><td>0.003681</td><td>0.003626</td><td>0.003573</td><td>0.003519</td><td></td></tr><tr><td>-2.5</td><td>0.006210</td><td>0.006123</td><td>0.006067</td><td>0.005952</td><td>0.005876</td><td>0.005854</td><td>0.005785</td><td>0.005627</td><td>0.005562</td><td>0.005464</td><td>0.005386</td><td>0.005309</td><td>0.005234</td><td>0.005159</td><td>0.005085</td><td>0.004940</td><td>0.004689</td><td>0.004799</td><td>0.004730</td><td></td></tr><tr><td>-2.4</td><td>0.008198</td><td>0.008086</td><td>0.007976</td><td>0.007868</td><td>0.007760</td><td>0.007764</td><td>0.007549</td><td>0.007446</td><td>0.007344</td><td>0.007243</td><td>0.007143</td><td>0.00744</td><td>0.006947</td><td>0.006851</td><td>0.006662</td><td>0.006569</td><td>0.006478</td><td>0.006387</td><td>0.006298</td><td></td></tr><tr><td>-2.3</td><td>0.010724</td><td>0.010583</td><td>0.010444</td><td>0.010306</td><td>0.010170</td><td>0.010363</td><td>0.009903</td><td>0.009772</td><td>0.009642</td><td>0.009514</td><td>0.009387</td><td>0.009261</td><td>0.009137</td><td>0.009015</td><td>0.008894</td><td>0.008774</td><td>0.008636</td><td>0.008540</td><td>0.008424</td><td>0.008310</td></tr><tr><td>-2.2</td><td>0.013930</td><td>0.013727</td><td>0.013553</td><td>0.013389</td><td>0.013299</td><td>0.013041</td><td>0.012874</td><td>0.012709</td><td>0.012545</td><td>0.012384</td><td>0.012224</td><td>0.012067</td><td>0.011911</td><td>0.011756</td><td>0.011604</td><td>0.011453</td><td>0.011304</td><td>0.011156</td><td>0.011011</td><td>0.010867</td></tr><tr><td>-2.1</td><td>0.017864</td><td>0.017646</td><td>0.017429</td><td>0.017215</td><td>0.017003</td><td>0.016793</td><td>0.016586</td><td>0.016381</td><td>0.016177</td><td>0.015976</td><td>0.015778</td><td>0.015581</td><td>0.015386</td><td>0.015194</td><td>0.014815</td><td>0.014629</td><td>0.014444</td><td>0.014262</td><td>0.014082</td><td></td></tr><tr><td>-2.0</td><td>0.022750</td><td>0.022482</td><td>0.022216</td><td>0.021952</td><td>0.021692</td><td>0.021434</td><td>0.021178</td><td>0.020925</td><td>0.020675</td><td>0.020427</td><td>0.021812</td><td>0.019699</td><td>0.016942</td><td>0.019226</td><td>0.018993</td><td>0.018763</td><td>0.018535</td><td>0.018359</td><td>0.018085</td><td></td></tr><tr><td>-1.9</td><td>-0.028717</td><td>-0.028390</td><td>-0.028087</td><td>-0.02746</td><td>-0.027429</td><td>-0.027115</td><td>-0.026803</td><td>-0.026495</td><td>-0.026190</td><td>-0.025887</td><td>-0.025588</td><td>-0.024996</td><td>-0.024986</td><td>-0.024710</td><td>-0.024134</td><td>-0.023852</td><td>-0.023572</td><td>-0.023295</td><td>-0.023021</td><td></td></tr><tr><td>-1.8</td><td>-0.035930</td><td>-0.035537</td><td>-0.035148</td><td>-0.034762</td><td>-0.034380</td><td>-0.034010</td><td>-0.033625</td><td>-0.033235</td><td>-0.032884</td><td>-0.032519</td><td>-0.031798</td><td>-0.031443</td><td>-0.031397</td><td>-0.030396</td><td>-0.030354</td><td>-0.029715</td><td>-0.029379</td><td>-0.029464</td><td></td><td></td></tr><tr><td>-1.7</td><td>-0.044565</td><td>-0.044097</td><td>-0.043633</td><td>-0.043173</td><td>-0.042716</td><td>-0.042264</td><td>-0.041815</td><td>-0.041370</td><td>-0.040940</td><td>-0.040949</td><td>-0.040536</td><td>-0.039630</td><td>-0.039248</td><td>-0.038364</td><td>-0.037949</td><td>-0.037538</td><td>-0.037131</td><td>-0.036727</td><td></td><td></td></tr><tr><td>-1.6</td><td>-0.054799</td><td>-0.054247</td><td>-0.053699</td><td>-0.053155</td><td>-0.052616</td><td>-0.052081</td><td>-0.051551</td><td>-0.051025</td><td>-0.050503</td><td>-0.049985</td><td>-0.049741</td><td>-0.048962</td><td>-0.048547</td><td>-0.047956</td><td>-0.046967</td><td>-0.046479</td><td>-0.045994</td><td>-0.045534</td><td>-0.045308</td><td></td></tr><tr><td>-1.5</td><td>-0.066807</td><td>-0.066162</td><td>-0.065252</td><td>-0.064886</td><td>-0.064255</td><td>-0.063630</td><td>-0.063069</td><td>-0.062392</td><td>-0.061780</td><td>-0.061773</td><td>-0.060571</td><td>-0.059973</td><td>-0.053890</td><td>-0.058781</td><td>-0.052682</td><td>-0.057503</td><td>-0.056483</td><td>-0.055917</td><td></td><td></td></tr><tr><td>-1.4</td><td>-0.080757</td><td>-0.080111</td><td>-0.079270</td><td>-0.078534</td><td>-0.077874</td><td>-0.077679</td><td>-0.076574</td><td>-0.074934</td><td>-0.074279</td><td>-0.073259</td><td>-0.072835</td><td>-0.071245</td><td>-0.071460</td><td>-0.070781</td><td>-0.070106</td><td>-0.069437</td><td>-0.068727</td><td>-0.068112</td><td></td><td></td></tr><tr><td>-1.3</td><td>-0.096808</td><td>-0.095496</td><td>-0.094595</td><td>-0.094225</td><td>-0.093418</td><td>-0.092586</td><td>-0.091759</td><td>-0.090913</td><td>-0.089313</td><td>-0.088588</td><td>-0.087798</td><td>-0.086915</td><td>-0.086127</td><td>-0.085466</td><td>-0.083793</td><td>-0.082382</td><td>-0.082264</td><td></td><td></td><td></td></tr><tr><td>-1.2</td><td>-0.115707</td><td>-0.114121</td><td>-0.113139</td><td>-0.112183</td><td>-0.111232</td><td>-0.111288</td><td>-0.109349</td><td>-0.108415</td><td>-0.107488</td><td>-0.106566</td><td>-0.104739</td><td>-0.103835</td><td>-0.102936</td><td>-0.102042</td><td>-0.110515</td><td>-0.1100273</td><td>-0.109873</td><td></td><td></td><td></td></tr><tr><td>-1.1</td><td>-0.135666</td><td>-0.134580</td><td>-0.133350</td><td>-0.133245</td><td>-0.132957</td><td>-0.129285</td><td>-0.121882</td><td>-0.121743</td><td>-0.121635</td><td>-0.125072</td><td>-0.124045</td><td>-0.123024</td><td>-0.122009</td><td>-0.121000</td><td>-0.119997</td><td>-0.118099</td><td>-0.117023</td><td>-0.116644</td><td></td><td></td></tr><tr><td>-1.0</td><td>-0.158655</td><td>-0.157448</td><td>-0.156248</td><td>-0.153503</td><td>-0.153864</td><td>-0.152682</td><td>-0.151505</td><td>-0.150334</td><td>-0.149170</td><td>-0.148111</td><td>-0.146859</td><td>-0.145713</td><td>-0.144572</td><td>-0.143348</td><td>-0.142137</td><td>-0.141887</td><td>-0.139637</td><td>-0.138757</td><td></td><td></td></tr><tr><td>-0.9</td><td>-0.184606</td><td>-0.182733</td><td>-0.181411</td><td>-0.181896</td><td>-0.178786</td><td>-0.174816</td><td>-0.174894</td><td>-0.2647214</td><td>-0.261086</td><td>-0.254674</td><td>-0.256234</td><td>-0.254627</td><td>-0.253025</td><td>-0.251429</td><td>-0.249838</td><td>-0.248252</td><td>-0.246777</td><td>-0.245328</td><td></td><td></td></tr><tr><td>-0.8</td><td>-0.211855</td><td>-0.210410</td><td>-0.208970</td><td>-0.207536</td><td>-0.206108</td><td>-0.204686</td><td>-0.203699</td><td>-0.201859</td><td>-0.204543</td><td>-0.199763</td><td>-0.196276</td><td>-0.196495</td><td>-0.198395</td><td>-0.195219</td><td>-0.190787</td><td>-0.189430</td><td>-0.188787</td><td>-0.183539</td><td></td><td></td></tr><tr><td>-0.7</td><td>-0.241946</td><td>-0.240348</td><td>-0.238532</td><td>-0.237335</td><td>-0.237334</td><td>-0.2335418</td><td>-0.233598</td><td>-0.233178</td><td>-0.229650</td><td>-0.223862</td><td>-0.226627</td><td>-0.225124</td><td>-0.226227</td><td>-0.223656</td><td>-0.219710</td><td>-0.217695</td><td>-0.216746</td><td>-0.213337</td><td></td><td></td></tr><tr><td>-0.6</td><td>-0.274253</td><td>-0.272589</td><td>-0.270931</td><td>-0.269277</td><td>-0.267629</td><td>-0.265986</td><td>-0.264347</td><td>-0.262714</td><td>-0.261086</td><td>-0.254674</td><td>-0.256234</td><td>-0.256427</td><td>-0.253205</td><td>-0.251429</td><td>-0.246983</td><td>-0.248832</td><td>-0.246757</td><td>-0.246295</td><td>-0.243528</td><td></td></tr><tr><td>-0.5</td><td>-0.308538</td><td>-0.306797</td><td>-0.305276</td><td>-0.303277</td><td>-0.303152</td><td>-0.301532</td><td>-0.299726</td><td>-0.298635</td><td>-0.296325</td><td>-0.295499</td><td>-0.297867</td><td>-0.298740</td><td>-0.287463</td><td>-0.283439</td><td>-0.282646</td><td>-0.28957</td><td>-0.277954</td><td></td><td></td><td></td></tr><tr><td>-0.4</td><td>-0.344578</td><td>-0.342739</td><td>-0.340933</td><td>-0.339701</td><td>-0.337243</td><td>-0.3335418</td><td>-0.333598</td><td>-0.331781</td><td>-0.329699</td><td>-0.328610</td><td>-0.326355</td><td>-0.324555</td><td>-0.322758</td><td>-0.317938</td><td>-0.315614</td><td>-0.313838</td><td>-0.312617</td><td></td><td></td><td></td></tr><tr><td>-0.3</td><td>-0.382809</td><td>-0.381838</td><td>-0.378283</td><td>-0.376381</td><td>-0.374484</td><td>-0.375971</td><td>-0.370888</td><td>-0.366982</td><td>-0.365639</td><td>-0.361295</td><td>-0.354924</td><td>-0.355756</td><td>-0.355691</td><td>-0.353833</td><td>-0.351973</td><td>-0.351939</td><td>-0.348268</td><td>-0.346421</td><td></td><td></td></tr><tr><td>-0.2</td><td>-0.427407</td><td>-0.418866</td><td>-0.414884</td><td>-0.414296</td><td>-0.413964</td><td>-0.410996</td><td>-0.401704</td><td>-0.401565</td><td>-0.402328</td><td>-0.401294</td><td>-0.401294</td><td>-0.396342</td><td>-0.393550</td><td>-0.393589</td><td>-0.387939</td><td>-0.387399</td><td>-0.388728</td><td>-0.383999</td><td></td><td></td></tr><tr><td>-0.1</td><td>-0.46172</td><td>-0.458188</td><td>-0.456265</td><td>-0.454223</td><td>-0.452242</td><td>-0.446283</td><td>-0.446346</td><td>-0.443330</td><td>-0.443235</td><td>-0.4438411</td><td>-0.4436411</td><td>-0.443441</td><td>-0.443255</td><td>-0.443546</td><td>-0.442756</td><td>-0.4426756</td><td>-0.442665</td><td>-0.442635</td><td></td><td></td></tr><tr><td>-0.0</td><td>-0.500000</td><td>-0.498061</td><td>-0.496611</td><td>-0.4949202</td><td>-0.498027</td><td>-0.488434</td><td>-0.484847</td><td>-0.484047</td><td>-0.488061</td><td>-0.4786978</td><td>-0.4767087</td><td>-0.474877</td><td>-0.470107</td><td>-0.468119</td><td>-0.466119</td><td>-0.466119</td><td>-0.466119</td><td></td><td></td><td></td></tr><tr><td>0.0</td><td>0.500000</td><td>0.501995</td><td>0.503984</td><td>0.507987</td><td>0.509973</td><td>0.511966</td><td>0.513960</td><td>0.515953</td><td>0.517946</td><td>0.519939</td><td>0.521931</td><td>0.522992</td><td>0.525913</td><td>0.527903</td><td>0.529893</td><td>0.531881</td><td>0.533869</td><td>0.535856</td><td>0.537843</td><td></td></tr><tr><td>0.1</td><td>0.53982</td><td>0.541812</td><td>0.543795</td><td>0.545797</td><td>0.547758</td><td>0.554938</td><td>0.551717</td><td>0.553694</td><td>0.555670</td><td>0.557645</td><td>0.559618</td><td>0.561589</td><td>0.563559</td><td>0.566528</td><td>0.567495</td><td>0.569465</td><td>0.571424</td><td>0.573385</td><td>0.575304</td><td>0.577304</td></tr><tr><td>0.2</td><td>0.579260</td><td>0.581214</td><td>0.583166</td><td>0.585116</td><td>0.587064</td><td>0.589090</td><td>0.590954</td><td>0.592896</td><td>0.594835</td><td>0.596772</td><td>0.598706</td><td>0.6060638</td><td>0.602568</td><td>0.604405</td><td>0.608342</td><td>0.608204</td><td>0.610261</td><td>0.612178</td><td>0.614092</td><td>0.616003</td></tr><tr><td>0.3</td><td>0.617911</td><td>0.619817</td><td>0.621720</td><td>0.623619</td><td>0.625516</td><td>0.627409</td><td>0.629300</td><td>0.631187</td><td>0.633072</td><td>0.634953</td><td>0.636831</td><td>0.638705</td><td>0.640576</td><td>0.642444</td><td>0.644309</td><td>0.646170</td><td>0.648027</td><td>0.649881</td><td>0.651732</td><td>0.653579</td></tr><tr><td>0.4</td><td>0.655422</td><td>0.657261</td><td>0.659097</td><td>0.660929</td><td>0.666752</td><td>0.666402</td><td>0.668612</td><td>0.668021</td><td>0.676031</td><td>0.671840</td><td>0.673645</td><td>0.675445</td><td>0.677242</td><td>0.679034</td><td>0.68022</td><td>0.682607</td><td>0.684386</td><td>0.686162</td><td>0.687933</td><td>0.689700</td></tr><tr><td>0.5</td><td>0.691462</td><td>0.693221</td><td>0.694974</td><td>0.698648</td><td>0.700208</td><td>0.701944</td><td>0.703075</td><td>0.707365</td><td>0.705401</td><td>0.707123</td><td>0.708840</td><td>0.710553</td><td>0.712260</td><td>0.713963</td><td>0.715661</td><td>0.717354</td><td>0.719043</td><td>0.720726</td><td>0.722405</td><td>0.724078</td></tr><tr><td>0.6</td><td>0.725747</td><td>0.727411</td><td>0.729069</td><td>0.730723</td><td>0.732371</td><td>0.734014</td><td>0.735653</td><td>0.737286</td><td>0.738914</td><td>0.740536</td><td>0.743766</td><td>0.745373</td><td>0.746975</td><td>0.748571</td><td>0.751062</td><td>0.751748</td><td>0.753328</td><td>0.754903</td><td>0.756472</td><td></td></tr><tr><td>0.7</td><td>0.758036</td><td>0.759595</td><td>0.761148</td><td>0.762695</td><td>0.764238</td><td>0.765774</td><td>0.767305</td><td>0.768830</td><td>0.770350</td><td>0.771864</td><td>0.773373</td><td>0.774876</td><td>0.776373</td><td>0.777864</td><td>0.779330</td><td>0.780830</td><td>0.782305</td><td>0.783773</td><td>0.783236</td><td>0.786693</td></tr><tr><td>0.8</td><td>0.788145</td><td>0.789590</td><td>0.791030</td><td>0.792464</td><td>0.793892</td><td>0.795314</td><td>0.796731</td><td>0.799814</td><td>0.799546</td><td>0.800945</td><td>0.802337</td><td>0.803724</td><td>0.806481</td><td>0.807850</td><td>0.809213</td><td>0.810570</td><td>0.811922</td><td>0.813267</td><td>0.814606</td><td></td></tr><tr><td>0.9</td><td>0.815940</td><td>0.817267</td><td>0.818589</td><td>0.819924</td><td>0.821124</td><td>0.822517</td><td>0.823106</td><td>0.825106</td><td>0.826391</td><td>0.827671</td><td>0.828944</td><td>0.832011</td><td>0.834172</td><td>0.837228</td><td>0.838357</td><td>0.837228</td><td>0.838532</td><td>0.837668</td><td>0.838913</td><td>0.841032</td></tr><tr><td>1.0</td><td>0.841345</td><td>0.842352</td><td>0.843752</td><td>0.844947</td><td>0.846136</td><td>0.847318</td><td>0.848496</td><td>0.849666</td><td>0.853083</td><td>0.853141</td><td>0.854287</td><td>0.855428</td><td>0.856562</td><td>0.857690</td><td>0.858183</td><td>0.859329</td><td>0.861039</td><td>0.862143</td><td>0.863242</td><td></td></tr><tr><td>1.1</td><td>0.864334</td><td>0.864320</td><td>0.866500</td><td>0.867563</td><td>0.868763</td><td>0.870762</td><td>0.871812</td><td>0.872857</td><td>0.873895</td><td>0.874928</td><td>0.875955</td><td>0.876976</td><td>0.877991</td><td>0.879091</td><td>0.880000</td><td>0.881180</td><td>0.880111</td><td>0.889277</td><td>0.889396</td><td></td></tr><tr><td>1.2</td><td>0.884930</td><td>0.885898</td><td>0.888661</td><td>0.888717</td><td>0.888768</td><td>0.889172</td><td>0.890651</td><td>0.891585</td><td>0.893434</td><td>0.894350</td><td>0.895261</td><td>0.896165</td><td>0.897064</td><td>0.898945</td><td>0.898895</td><td>0.897277</td><td>0.900604</td><td>0.901475</td><td>0.902340</td><td></td></tr><tr><td>1.3</td><td>0.903200</td><td>0.904054</td><td>0.904902</td><td>0.905745</td><td>0.906582</td><td>0.907414</td><td>0.908241</td><td>0.909067</td><td>0.909877</td><td>0.911492</td><td>0.912291</td><td>0.913085</td><td>0.913873</td><td>0.914547</td><td>0.916343</td><td>0.916207</td><td>0.916974</td><td>0.917736</td><td>0.918492</td><td></td></tr><tr><td>1.4</td><td>0.919243</td><td>0.919899</td><td>0.920730</td><td>0.921466</td><td>0.922196</td><td>0.922912</td><td>0.923641</td><td>0.924536</td><td>0.925066</td><td>0.925771</td><td>0.926471</td><td>0.927165</td><td>0.928755</td><td>0.928540</td><td>0.929219</td><td>0.929894</td><td>0.930563</td><td>0.931228</td><td>0.931888</td><td>0.932543</td></tr><tr><td>1.5</td><td>0.933193</td><td>0.933383</td><td>0.934478</td><td>0.935114</td><td>0.935745</td><td>0.936370</td><td>0.936992</td><td>0.937608</td><td>0.938220</td><td>0.939429</td><td>0.940027</td><td>0.940620</td><td>0.941209</td><td>0.942972</td><td>0.944747</td><td>0.945137</td><td>0.946043</td><td>0.946444</td><td></td><td></td></tr><tr><td>1.6</td><td>0.942501</td><td>0.945753</td><td>0.946301</td><td>0.946845</td><td>0.947384</td><td>0.947919</td><td>0.948449</td><td>0.949475</td><td>0.950015</td><td>0.950529</td><td>0.951038</td><td>0.951543</td><td>0.952044</td><td>0.952533</td><td>0.953231</td><td>0.954040</td><td>0.954486</td><td>0.954846</td><td></td><td></td></tr><tr><td>1.7</td><td>0.955435</td><td>0.955903</td><td>0.956367</td><td>0.956827</td><td>0.957824</td><td>0.957536</td><td>0.958583</td><td>0.9595070</td><td>0.9599041</td><td>0.959941</td><td>0.959947</td><td>0.960370</td><td>0.967969</td><td>0.961218</td><td>0.9636251</td><td>0.962462</td><td>0.962863</td><td>0.963673</td><td></td><td></td></tr><tr><td>1.8</td><td>0.964070</td><td>0.964463</td><td>0.964852</td><td>0.965238</td><td>0.965620</td><td>0.965999</td><td>0.966375</td><td>0.967116</td><td>0.967481</td><td>0.967843</td><td>0.968202</td><td>0.968567</td><td>0.968598</td><td>0.969258</td><td>0.969604</td><td>0.969946</td><td>0.970285</td><td>0.970954</td><td></td><td></td></tr><tr><td>1.9</td><td>0.971283</td><td>0.971610</td><td>0.971933</td><td>0.972254</td><td>0.972571</td><td>0.972855</td><td>0.973750</td><td>0.973501</td><td>0.974113</td><td>0.974412</td><td>0.974708</td><td>0.975002</td><td>0.975293</td><td>0.975881</td><td>0.976586</td><td>0.976148</td><td>0.976428</td><td>0.976705</td><td></td><td></td></tr><tr><td>2.0</td><td>0.977250</td><td>0.977718</td><td>0.978774</td><td>0.980748</td><td>0.983086</td><td>0.987822</td><td>0.989755</td><td>0.997325</td><td>0.997573</td><td>0.998181</td><td>0.998060</td><td>0.998301</td><td>0.998358</td><td>0.998704</td><td>0.998714</td><td>0.998237</td><td>0.998619</td><td>0.998195</td><td></td><td></td></tr><tr><td>2.1</td><td>0.982136</td><td>0.982354</td><td>0.982571</td><td>0.982785</td><td>0.982997</td><td>0.9832107</td><td>0.983414</td><td>0.983619</td><td>0.9843823</td><td>0.9844222</td><td>0.984422</td><td>0.984419</td><td>0.984614</td><td>0.984846</td><td>0.985185</td><td>0.985371</td><td>0.985536</td><td>0.985738</td><td></td><td></td></tr><tr><td>2.2</td><td>0.986097</td><td>0.986273</td><td>0.986447</td><td>0.986620</td><td>0.986969</td><td>0.987192</td><td>0.988291</td><td>0.988756</td><td>0.988716</td><td>0.988776</td><td>0.989733</td><td>0.989809</td><td>0.990883</td><td>0.990985</td><td>0.991106</td><td>0.991226</td><td>0.991344</td><td>0.991769</td><td></td><td></td></tr><tr><td>2.3</td><td>0.989276</td><td>0.989417</td><td>0.989556</td><td>0.989694</td><td>0.989894</td><td>0.990908</td><td>0.990228</td><td>0.990358</td><td>0.990486</td><td>0.990413</td><td>0.990518</td><td>0.990713</td><td>0.991106</td><td>0.991226</td><td>0.991344</td><td>0.991423</td><td>0.991631</td><td>0.991732</td><td></td><td></td></tr><tr><td>2.4</td><td>0.991184</td><td>0.991294</td><td>0.992132</td><td>0.992240</td><td>0.992346</td><td>0.992451</td><td>0.992554</td><td>0.992656</td><td>0.992757</td><td>0.992857</td><td>0.992956</td><td>0.993053</td><td>0.993149</td><td>0.993244</td><td>0.993333</td><td>0.993411</td><td>0.993522</td><td>0.993613</td><td></td><td></td></tr><tr><td>2.5</td><td>0.993790</td><td>0.993877</td><td>0.993963</td><td>0.994048</td><td>0.994132</td><td>0.994215</td><td>0.994478</td><td>0.994456</td><td>0.994614</td><td>0.994619</td><td>0.994691</td><td>0.994766</td><td>0.994841</td><td>0.995498</td><td>0.995560</td><td>0.995131</td><td>0.9952501</td><td>0.995252</td><td></td><td></td></tr><tr><td>2.6</td><td>0.995339</td><td>0.995406</td><td>0.995539</td><td>0.995654</td><td>0.9965604</td><td>0.997531</td><td>0.997593</td><td>0.998555</td><td>0.999515</td><td>0.999575</td><td>0.999635</td><td>0.999603</td><td>0.999615</td><td>0.999627</td><td>0.996639</td><td>0.996374</td><td>0.996427</td><td></td><td></td><td></td></tr><tr><td>2.7</td><td>0.996533</td><td>0.996585</td><td>0.9966636</td><td>0.996686</td><td>0.996736</td><td>0.996865</td><td>0.996983</td><td>0.996928</td><td>0.997821</td><td>0.997705</td><td>0.997744</td><td>0.997814</td><td>0.997925</td><td>0.997948</td><td>0.998012</td><td>0.998403</td><td>0.998874</td><td></td><td></td><td></td></tr><tr><td>2.8</td><td>0.997445</td><td>0.997844</td><td>0.998123</td><td>0.998222</td><td>0.9988250</td><td>0.9988278</td><td>0.998359</td><td>0.998835</td><td>0.998841</td><td>0.998437</td><td>0.998482</td><td>0.998487</td><td>0.998511</td><td>0.998555</td><td>0.998855</td><td>0.998852</td><td>0.998862</td><td></td><td></td><td></td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/8c7b17bb4dcdfb91df9c5b068a223f791c983fa9188610c2dece3e5d25d340b2.jpg)  
FIGURE 5.1 S&P 500 Daily Returns

So indeed, the normal distribution is not a perfect fit. We should not have expected as much, but that does not mean that it cannot serve as a useful approximation. Now, however, let us consider a closely related alternative.

Recall the discretely compounded rate of return,  $R_{t}^{d}$ , expresses the relationship between asset prices at  $t - 1$  and  $t$  is

$$
S _ {t - 1} \left(1 + R _ {t} ^ {d}\right) = S _ {t}. \tag {5.5}
$$

Hence, the return is calculated as

$$
R _ {t} ^ {d} = \left(\frac {S _ {t}}{S _ {t - 1}}\right) - 1. (5. 6)
$$

Some researchers have argued that the use of log or continuously compounded returns can reduce the nonnormality. The log return,  $R_{t}^{c}$ , expresses the relationship between a variable at two points in time as it grows continuously:

$$
S _ {t - 1} e ^ {R _ {t} ^ {c}} = S _ {t}. \tag {5.7}
$$

Hence, it is calculated as

$$
R _ {t} ^ {c} = \ln \left(\frac {S _ {t}}{S _ {t - 1}}\right). \tag {5.8}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/b5f412cea7f6bd809c25fa4aa1fc718bb8d1ce692f1c776921cb52e5f4864bce.jpg)  
FIGURE 5.2 S&P 500 Log Returns

Some researchers believe that log returns are closer to being normally distributed. This point is partially true but only by a small amount. Log returns are slightly smaller than regular returns, thereby pulling in the largest positive returns but by reducing returns, they lower the largest negative returns. For example, the largest positive return of  $11.58\%$  (October 13, 2008) has a log equivalent of  $10.96\%$ . The largest negative return,  $-20.47\%$  (October 19, 1987), has a log equivalent of  $-22.90\%$ . Both returns are lower and not enough to eliminate the simple fact that there are far too many extreme returns for a normal distribution. Figure 5.2 illustrates the same data using log returns. As you can see, there is not much difference.

# 5.2 CONTRASTING THE NORMAL WITH THE LOGNORMAL PROBABILITY DISTRIBUTION

Based on properties of the lognormal distribution, if  $S_{t} = S_{t - 1}e^{R_{t}^{c}}$  and  $R_{t}^{c}$  is normally distributed, then we know  $S_{t}$  is lognormally distributed. Recall if  $x$  has a lognormal distribution, then the PDF is

$$
\lambda (x) = \frac {1}{x \sigma \sqrt {2 \pi}} e ^ {- \left(\frac {\left[ \ln (x) - \mu \right] ^ {2}}{2 \sigma^ {2}}\right)}. \tag {5.9}
$$

Again, the range of a lognormally distributed variable is  $0 < x < +\infty$ . Importantly, zero is not included.

Recall from Chapter 4, the  $n^{th}$  noncentral moment is defined as  $\mu_n'(x) = E(x^n)$  and the  $n^{th}$  central moment is defined as  $\mu_n(x) = E[(x - \mu)^n]$ . Thus, subtracting a constant term from a random variable affects only the mean, not the higher central moments, such as variance, skewness, and kurtosis. We denote the first difference or dollar profit and loss as

$$
\Delta S _ {t} = S _ {t} - S _ {t - 1}. \tag {5.10}
$$

There are many finance applications where we are interested in dollar gains and losses. For example, company earnings are simply revenues less expenses. Because earnings can be zero or negative, we do not want model earnings with a distribution that does not admit zero or negative numbers. Because the uncertainty at time  $t - 1$  is solely the instrument price or value at time  $t$ , the expected value is

$$
E \left(\Delta S _ {t}\right) = E \left(S _ {t}\right) - S _ {t - 1}. \tag {5.11}
$$

The higher central moments are simply

$$
\operatorname {v a r} \left(\Delta S _ {t}\right) = \operatorname {v a r} \left(S _ {t}\right), \tag {5.12}
$$

$$
\operatorname {S k e w} \left(\Delta S _ {t}\right) = \operatorname {S k e w} \left(S _ {t}\right), \text {a n d} \tag {5.13}
$$

$$
\text {K u r t o s i s} \left(\Delta S _ {t}\right) = \text {K u r t o s i s} \left(S _ {t}\right). \tag {5.14}
$$

Several important insights can be gained when we assume a lognormal distribution. First, the continuously compounded rate of return follows a normal distribution. Second, the normalized skewness of the rate of return should be zero, but the normalized skewness of the first difference should be positive. Third, the normalized kurtosis of the rate of return should be 3, but the normalized kurtosis of the first difference should be greater than 3.5

When building quality valuation models, it is important to understand empirical properties of financial data. Here we briefly review empirical data related to two exchange-traded funds (ETFs), the S&P 500 ETF (SPY) and the Technology Sector ETF (XLK), as well as Apple stock (AAPL). We explore five years of daily data. Figure 5.3 provides plots of the time series rates of return and first differences. To facilitate comparison, the first differences are based on an assumed \(1 investment at the beginning of the period. For ease of comparison, we set the y-axis to be the same for all the return plots. Likewise, we set the y-axis to be the same for all the first difference plots. Intuitively, we would expect that an individual stock would be more risky than a portfolio of stocks within its sector. Further, we would expect the technology sector ETF would be more risky than a broad-based index such as SPY. The pattern of standard deviations is consistent with our intuition. Outside of basic distributional properties, it is unclear how skewness and kurtosis would behave. Interestingly, all skewness measures are negative rather than zero or positive as the distributional assumptions would imply. Further, the skewness measures are similar between returns and first differences. We would have expected the first difference skewness to be positive or at least less negative than returns. All kurtosis measures are greater than three with daily first differences being slightly lower.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/72f38405cfc5a45e113f680765c107a281b8c323784eb950842a126bf0f5a032.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/fc03f6ade8bdab46f7b12393fdb533ef90f3845dac93eb01c3d394330f5cc1b8.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/e5c4405571d40e6603e2e3997c2755680b3a8ed79c7c9e346eb784d8bd1cc117.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/2d856f6f1836177c76fe75663eb7becc0f4190bc8a6803782c6d51b040af4da4.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/e543f176a9be569195f79a24d01cbb35ee859fb881ba2c55dc649cc6851edb39.jpg)  
FIGURE 5.3 Time Series of Daily Returns and First Differences

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/11e8bcc33af785793f1fce996b0e35fadfe6c78c07750fd4ab4e46ea6ae65afd.jpg)

Figure 5.4 provides histograms of this same data along with the corresponding normal distribution probability density function. The histograms are more spread out as we move from SPY to XLK to AAPL. The patterns are very similar when comparing returns and first differences as well as consistent with the previous univariate analysis.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/fbfbf37a227ed4d56b89c33ea6c69e70a72296bf356dc13f4c55e6dcb97f0675.jpg)  
Benchmark: S&P 500 ETF (SPY) Daily Rates of Return

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/395eee70bc47b6ef2b121b97ae4a1752909ee075eb9ff167ad9f92f8f8d6acfd.jpg)  
Benchmark: S&P 500 ETF (SPY) Daily First Differences

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/a160f9a9092962e324af903acb24a8011deb7761305c4e253a440894a58b17fc.jpg)  
Sector: XLK ETF (Technology) Daily Rates of Return

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/cb7f44fa7596cf6c3e7f28cdb35f157a70e93f2d81bd2f35d5f4abbcdb376829.jpg)  
Sector: XLK ETF (Technology) Daily First Differences

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/26298838cca55dba63018752063a8a8e259ba15bc87f4a9cf9b84f90d6e5baf4.jpg)  
Stock:AAPL(Apple,Inc.) Daily Rates of Return  
FIGURE 5.4 Histogram of Daily Returns and First Differences

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/c5703976308c1728e516f30cc9589510e8bbb9840e528ead57c3dba1dba31705.jpg)  
Stock:AAPL(Apple,Inc.) Daily First Differences

# 5.3 BIVARIATE NORMAL PROBABILITY DISTRIBUTION

Suppose now that we have two normally distributed random variables,  $x$  and  $y$ . The expected values are  $\mu_x$  and  $\mu_y$  and the standard deviations are  $\sigma_x$  and  $\sigma_y$ . For bivariate normally distributed random variables, the conditional expected values of  $y$  and  $x$  are linearly related, as indicated by the following:

$$
E (y \mid x _ {a}) = \mu_ {y} + \rho \left(\frac {\sigma_ {y}}{\sigma_ {x}}\right) \left(x _ {a} - \mu_ {x}\right), \tag {5.15}
$$

where  $\rho$  is the correlation between  $y$  and  $x$ . This statement says that if the value of  $x$  is known, the expected value of  $y$  is given by the right-hand-side expression. This expectation of  $y$  is called the conditional expected value of  $y$ , given  $x_{a}$ . The terms  $\mu_y$  and  $\mu_x$  are the unconditional expected values. They are our best estimates of the expected values of  $y$  or  $x$ , given that we know nothing about the value of the other. If  $x$  and  $y$  are linearly related, then the correlation between  $x$  and  $y$  can be used to make a better prediction of  $y$ , given that we know the current value of  $x$ , which is  $x_{a}$ . If  $y$  and  $x$  are related in this manner, then the joint distribution of  $y$  and  $x$  is bivariate normal. The conditional variance of  $y$  is related to its unconditional variance by the formula

$$
\sigma_ {y \mid x} ^ {2} = \sigma_ {y} ^ {2} \left(1 - \rho^ {2}\right). \tag {5.16}
$$

The probability density function for the bivariate normal is

$$
\begin{array}{l} f (x, y, \rho) = \frac {1}{2 \pi \sigma_ {x} \sigma_ {y} \sqrt {1 - \rho^ {2}}} \\ \exp \left[ - \frac {1}{2} \left(\frac {\left(\left(x - \mu_ {x}\right) / \sigma_ {x}\right) ^ {2} - 2 \rho \left(\left(x - \mu_ {x}\right) / \sigma_ {x}\right) \left(\left(y - \mu_ {y}\right) / \sigma_ {y}\right) + \left(\left(y - \mu_ {y}\right) / \sigma_ {y}\right) ^ {2}}{1 - \rho^ {2}}\right) \right]. \tag {5.17} \\ \end{array}
$$

The distribution function or cumulative bivariate normal probability is

$$
\begin{array}{l} \operatorname * {P r} (x \leq x _ {a}, y \leq y _ {b} | \rho) = \frac {1}{\sigma_ {x} \sigma_ {y}} \int_ {- \infty} ^ {\frac {x _ {a} - \mu_ {x}}{\sigma_ {x}}} \int_ {- \infty} ^ {\frac {y _ {b} - \mu_ {y}}{\sigma_ {y}}} \frac {1}{2 \pi \sqrt {1 - \rho^ {2}}} \\ \exp \left[ - \frac {1}{2} \left(\frac {k ^ {2} - 2 \rho k j + j ^ {2}}{1 - \rho^ {2}}\right) \right] d k d j. (5. 1 8) \\ \end{array}
$$

Because each variable  $x$  and  $y$  is individually normally distributed, each can be transformed or normalized into a standard normal random variable, which we shall call  $z_{1}$  and  $z_{2}$ , by the relationships,

$$
z _ {1} = \frac {x - \mu_ {x}}{\sigma_ {x}}, \quad z _ {2} = \frac {y - \mu_ {y}}{\sigma_ {y}}. \tag {5.19}
$$

The standard normal bivariate density is then

$$
f (z _ {1}, z _ {2}, \rho) = \frac {1}{2 \pi \sqrt {1 - \rho^ {2}}} \exp \left[ - \frac {1}{2} \left(\frac {z _ {1} ^ {2} - 2 \rho z _ {1} z _ {2} + z _ {2} ^ {2}}{1 - \rho^ {2}}\right) \right]. \tag {5.20}
$$

Figure 5.5 illustrates the standard normal bivariate density in three-dimensional space.

The following relationships are useful when dealing with the bivariate normal probability distribution. Let  $N(x)$  be the (univariate) normal probability for a variable  $x$  and  $N_2(x, y; \rho)$  be the bivariate normal probability for the variables  $x$  and  $y$ , which can be normalized or not, with correlation  $\rho$ . Then, the following are a handful of useful rules.

$$
N _ {2} (x, y; \rho) = N _ {2} (y, x; \rho)
$$

$$
N _ {2} (- x, y; \rho) + N _ {2} (x, y; - \rho) = N (y) \tag {5.21}
$$

$$
N _ {2} (x, y; \rho) - N _ {2} (- x, - y; \rho) = N (x) + N (y) - 1. 0.
$$

Computation of the bivariate normal probability is quite challenging, but an analytic approximation developed by Drezner (1978) is often used and gives a high degree of accuracy. Using that approximation, let us work a problem involving bivariate standard normal random variables. An Excel routine based on this technique is in Appendix 5A. Let  $x = 0.74$ ,  $y = -1.13$ , and  $\rho = 0.32$ . We wish to know  $\operatorname{Pr}(x \leq 0.74$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/e4a419da6c0caa224cfff38298e8e7ef3def570c805647faea54fbe09f01fd66.jpg)  
FIGURE 5.5 Bivariate Normal Density

$y \leq -1.13|0.32)$ . The univariate probabilities as obtained from Excel's =normsdist() function are  $N(0.74) = 0.7704$  and  $N(-1.13) = 0.1292$ . The bivariate normal probability is  $N_2(0.74, -1.13; 0.32) = 0.1171$ . Let us check out the above relationships:

$$
\begin{array}{l} N _ {2} (0. 7 4, - 1. 1 3, 0. 3 2) = 0. 1 1 7 1 = N (- 1. 1 3, 0. 7 4, 0. 3 2) = 0. 1 1 7 1 \\ N _ {2} (- 0. 7 4, - 1. 1 3, 0. 3 2) = 0. 0 5 2 9, N _ {2} (0. 7 4, - 1. 1 3, - 0. 3 2) = 0. 0 7 6 3 \\ 0. 0 5 2 9 + 0. 0 7 6 3 = 0. 1 2 9 2 = N (- 1. 1 3) \\ N _ {2} (0. 7 4, - 1. 1 3, 0. 3 2) = 0. 1 1 7 1, N _ {2} (- 0. 7 4, 1. 1 3, 0. 3 2) = 0. 2 1 7 5 \\ 0. 1 1 7 1 - 0. 2 1 7 5 = - 0. 1 0 0 4 \\ N (0. 7 4) = 0. 7 7 0 4, N (- 1. 1 3) = 0. 1 2 9 2 \\ 0. 7 7 0 4 + 0. 1 2 9 2 - 1 = - 0. 1 0 0 4. \\ \end{array}
$$

Some special cases are worth noting. If either of the values  $x$  or  $y$  is infinite, then the bivariate probability reverts to the univariate probability. For example,  $\operatorname{Pr}(x \leq a, y \leq \infty | \rho) = \operatorname{Pr}(x \leq a)$ . This is because of the condition that  $y \leq \infty$  has no effect because its probability is 1.0. This fact, of course, also holds if the variables are reversed. If  $\rho = 0$ , then the bivariate probability is the product of the two univariate probabilities of  $x$  and  $y$ , that is,  $\operatorname{Pr}(x \leq a, y \leq b | \rho = 0) = N(a)N(b)$ . This result reflects the fact that the joint probability of two independent random variables is the product of the marginal probabilities. A few other special relationships hold when  $\rho = 1$ , but these conditions are rarely observed. You can look these up in Abramowitz and Stegun (1972).

The bivariate normal probability generalizes into a multivariate normal probability. In finance, one occasionally sees the trivariate normal probability and there are techniques for estimating it, which involve simplification of the relationships among univariate, bivariate, and trivariate densities. For the most part, however, computation of these high-order integrals is extremely time-consuming. Monte Carlo simulation is a good way of getting these results.

# 5.4 THE BIVARIATE LOGNORMAL PROBABILITY DISTRIBUTION

Again if  $S_{t} = S_{t - 1}e^{R_{t}^{c}}$  and  $R_{t}^{c}$  is normally distributed, then we know  $S_{t}$  is lognormally distributed. In finance, we are often interested in a portfolio of instruments such as stock holdings. Unfortunately, the sum of lognormally distributed random variables does not follow any known distribution. One important property of the normal distribution is that the sum of normally distributed random variables is itself normally distributed. Thus, in practice, it is dramatically easier to assume the underlying instrument prices are normally distributed, an issue we address in Chapter 12.

Figure 5.6 illustrates a simulation of 1,000 draws from a bivariate lognormal distribution, with normal mean 0, variance 1, and correlation 0. Note that the bivariate lognormal lower bound is zero for both  $x$  and  $y$ , but it is non-inclusive. Specifically, an outcome of zero did not occur because it is not possible with the lognormal distribution. Therefore, one advantage of the lognormal distribution is that negative values are not possible. Closely related, one disadvantage of the lognormal distribution is that zero values are also not possible.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/d39e097df8cecabdf69e13942cfdf27ceddfb2aaacbdb71277334ce1326467a9.jpg)  
FIGURE 5.6 Bivariate Lognormal Simulation

# 5.5 RECAP AND PREVIEW

In this chapter, we reviewed the univariate normal probability distribution and took a look at the historical returns on the S&P 500 to see how well the distribution fits the data. We also examined the bivariate normal probability distribution, which can apply when there are two random variables.

In Chapter 6, we take a brief review of the basic concepts in valuing risky assets and derivatives.

# APPENDIX 5A

# An Excel Routine for the Bivariate Normal Probability

The two variables are identified as  $a$  and  $b$  and the correlation is rho. Enter them into three cells, which for the sake of illustration will be A1, B1, and C1. Then in a separate cell, type the function = bivar(A1, B1, C1). The code, which is presented next, should be entered using the Visual Basic for Applications feature of Excel. Choose the Developer tab. Then choose Visual Basic. Then Insert, then Module. You will then have a blank space on which to enter the following code.

If you wish to receive an electronic copy of this code, please email your request to Don Chance, dchance@lsu.edu.

VB Code:  

```vba
Sub biv1(az, bz, rhoz, bprob)  
'Subroutine used to compute bivariate normal probability  
Dim bp1, bp2, bp3, bp4, prob  
bp1 = phiz(az, bz, rhoz)  
bp2 = Application.NormSDist(az) - phiz(az, -bz, -rhoz)  
bp3 = Application.NormSDist(bz) - phiz(-az, bz, -rhoz)  
bp4 = Application.NormSDist(az) + Application. NormSDist(bz) - 1 + phiz(-az, -bz, rhoz)  
bprob = 0!  
11 If rhoz = 0 Then bprob = Application.NormSDist(az) * Application. NormSDist(bz) Else GoTo 12  
GoTo 55  
12 If az <= 0! And bz <= 0! And rhoz <= 0 Then bprob = bp1 Else GoTo 13  
GoTo 55  
13 If az <= 0! And bz >= 0 And rhoz >= 0 Then bprob = bp2 Else GoTo 14  
GoTo 55  
14 If az >= 0 And bz <= 0 And rhoz >= 0 Then bprob = bp3 Else GoTo 15  
GoTo 55  
15 If az >= 0 And bz >= 0 And rhoz <= 0 Then bprob = bp4 Else GoTo 16  
16 GoTo 55  
55 End Sub  
Sub biv2(az, bz, rhoz, bprob)  
'Subroutine used to compute bivariate normal probability  
Dim signa, signb, rhoab, rhoba, Delta, probab, probba  
If az >= 0 Then signa = 1 Else signa = -1  
If bz >= 0 Then signb = 1 Else signb = -1  
rhoab = (rhoz * az - bz) * sigma / Sgr(az ^ 2 - 2 * rhoz * az * bz + bz ^ 2)  
rhoba = (rhoz * bz - az) * signb / Sgr(az ^ 2 - 2 * rhoz * az * bz + bz ^ 2)  
Delta = (1 - sigma * signb) / 4  
Call biv1(az, 0, rhoab, probab)  
Call biv1(bz, 0, rhoba, probba)  
bprob = probab + probba - Delta  
End Sub  
Function bivar(az, bz, rhoz)  
'Function to compute bivariate normal probability  
Dim bprob  
If az * bz * rhoz > 0 Then GoTo 20  
Call biv1(az, bz, rhoz, bprob)  
GoTo 56  
20 Call biv2(az, bz, rhoz, bprob)  
56 bivar = bprob  
End Function  
Function phiz(aa, bb, rhoo)  
'Sub-function to compute bivariate normal probability  
Dim a1, b1, fsum, i, j, f, phizz  
Static w(5), x(5)  
w(1) = 0.24840615: x(1) = 0.10024215  
w(2) = 0.39233107: x(2) = 0.48281397  
w(3) = 0.21141819: x(3) = 1.0609498  
w(4) = 0.03324666: x(4) = 1.7797294  
w(5) = 0.00082485334: x(5) = 2.6697604  
a1 = aa / Sqr(2 * (1 - rhoo ^ 2))  
b1 = bb / Sqr(2 * (1 - rhoo ^ 2))
```

```txt
fsum  $= 0$    
For  $\mathrm{i} = 1$  To5 For  $\mathrm{j} = 1$  To5 f  $=$  Exp(a1 \* (2 \* x(i)- a1)+ b1 \* (2 \* x(j)- b1) + 2 \* rhoo \* (x(i)- a1) \* (x(j)- b1)) fsum  $=$  fsum  $^+$  w(i) \* w(j) \* f Next j   
Next i   
phizz  $= 0.31830989$  \* Sqr(1 - rhoo ^2) \* fsum   
phiz  $=$  phizz   
End Function
```

# QUESTIONS AND PROBLEMS

1 Based on Table 5.1, identify the following standard normal cumulative distribution values: 0.0, 0.58, -0.58, 1.65, and -1.65. Explain your results.  
2 Based on Figure 5.2 and subsequent analysis, identify the key insight that is revealed.  
Suppose a stock trading at 75 is estimated to have an annualized, continuously compounded mean rate of return of  $12\%$  and a corresponding standard deviation of  $45\%$ . Assume these returns are normally distributed. Estimate the expected change in the stock price in one year as well as the stock price standard deviation, normalized skewness, and normalized kurtosis.  
4 Based solely on visual inspection of Figure 5.3, what conclusion can be drawn from comparing the time series of daily rates of return with daily first differences for the broad index ETF (SPY), the technology sector ETF (XLK), and Apple (AAPL)?  
5 Based solely on visual inspection of Figure 5.4, what conclusion can be drawn from comparing the frequency distribution of daily rates of return with daily first differences for the broad index ETF (SPY), the technology sector ETF (XLK), and Apple (AAPL)?

# NOTES

1. Prior to the introduction of the euro in 1999, the German currency was called the *deutschemark*. A 10-deutschemark note contained a picture of Gauss and his famous curve as well as the formula. It is likely the only piece of currency in history to contain an equation.  
2. This value was calculated on a spreadsheet and is more precise than if you did it by hand.  
3. By comparison, astronomers estimate the age of the universe at about 4.5 billion years, or much shorter than the expected frequency of a one-day return of less than  $-20\%$  under a normal distribution of asset returns.  
4. There are many other examples, such as dollar differences between purchases and sales, spreads between commodities, as well as spreads across different contract expirations.  
5. Recall from Chapter 4 that the normalization process converts the skewness and kurtosis to unitless numbers by dividing by functions of variance or  $\mathrm{var}^{2/3}$  and  $\mathrm{var}^2$ , respectively. The normal distribution has normalized skewness of 0 and normalized kurtosis of 3.  
6. See Chance and Agca (2003) for an examination of the speed and accuracy of bivariate normal approximation routines for option pricing.


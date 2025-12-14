---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: 2 Risk versus return
linter-yaml-title-alias: 2 Risk versus return
---

Chapter Title: Risk versus return

Book Title: Essentials of Financial Management

Book Author(s): Jason Laws

Published by: Liverpool University Press

Stable URL: https://www.jstor.org/stable/j.ctvt6rjjs.5

JSTOR is a not-for-profit service that helps scholars, researchers, and students discover, use, and build upon a wide range of content in a trusted digital archive. We use information technology and tools to increase productivity and facilitate new forms of scholarship. For more information about JSTOR, please contact support@jstor.org.

Your use of the JSTOR archive indicates your acceptance of the Terms & Conditions of Use, available at https://about.jstor.org/terms

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/77ee4b34-7484-412c-abe2-870c68f2f83a/76c3b0ed064ce0f3604471ec168136e94a843a9d19d0e8bf8728610ff43fcb79.jpg)

This content is licensed under a Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License (CC BY-NC-ND 4.0). To view a copy of this license, visit https://creativecommons.org/licenses/by-nc-nd/4.0/.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/77ee4b34-7484-412c-abe2-870c68f2f83a/9b717642bd21d0f322059ec9fdcc3a1d20906b876fe2a0073ee321884899601a.jpg)  
JSTOR

Liverpool University Press is collaborating with JSTOR to digitize, preserve and extend access to Essentials of Financial Management

# 2 Risk versus return

# 2.1 A primer on the variance of an asset and covariance of a pair of assets

One of the basic pillars of finance is "the greater the risk, the greater the return". In finance, risk is measured by dispersion from the mean. Consider the following two assets, both of which have an average return of  $10\%$  over the past twelve months.

<table><tr><td>Month</td><td>Stock A</td><td>Stock B</td></tr><tr><td>1</td><td>5</td><td>0</td></tr><tr><td>2</td><td>15</td><td>20</td></tr><tr><td>3</td><td>10</td><td>10</td></tr><tr><td>4</td><td>5</td><td>0</td></tr><tr><td>5</td><td>15</td><td>20</td></tr><tr><td>6</td><td>10</td><td>10</td></tr><tr><td>7</td><td>5</td><td>0</td></tr><tr><td>8</td><td>15</td><td>20</td></tr><tr><td>9</td><td>10</td><td>10</td></tr><tr><td>10</td><td>5</td><td>0</td></tr><tr><td>11</td><td>15</td><td>20</td></tr><tr><td>12</td><td>10</td><td>10</td></tr><tr><td>Average</td><td>10</td><td>10</td></tr></table>

If we analyse the data it appears evident that stock B's returns are more erratic than stock A's. In order to quantify this variability we need to find the variance of each stock's returns. This is found using a population variance:

$$
\sigma_ {i} ^ {2} = \frac {1}{n} \sum_ {i = 1} ^ {n} (R _ {i} - \overline {{R}} _ {\iota}) ^ {2}
$$

Applying this to stock prices, we need to find the deviation of each period's return  $(\mathsf{R}_i)$  from the average return over the period  $(\overline{R}_l)$ .

<table><tr><td>Stock A - ave(A)</td><td>Stock B - ave(B)</td></tr><tr><td>-5</td><td>-10</td></tr><tr><td>5</td><td>10</td></tr><tr><td>0</td><td>0</td></tr><tr><td>-5</td><td>-10</td></tr><tr><td>5</td><td>10</td></tr><tr><td>0</td><td>0</td></tr><tr><td>-5</td><td>-10</td></tr><tr><td>5</td><td>10</td></tr><tr><td>0</td><td>0</td></tr><tr><td>-5</td><td>-10</td></tr><tr><td>5</td><td>10</td></tr><tr><td>0</td><td>0</td></tr></table>

It is clear that the stock which we view to be more erratic has greater deviations from the mean. The next step is to square these deviations from the mean and sum them together as follows:

<table><tr><td>[Stock A - ave(A)]2</td><td>[Stock B - ave(B)]2</td></tr><tr><td>25</td><td>100</td></tr><tr><td>25</td><td>100</td></tr><tr><td>0</td><td>0</td></tr><tr><td>25</td><td>100</td></tr><tr><td>25</td><td>100</td></tr><tr><td>0</td><td>0</td></tr><tr><td>25</td><td>100</td></tr><tr><td>25</td><td>100</td></tr><tr><td>0</td><td>0</td></tr><tr><td>25</td><td>100</td></tr><tr><td>25</td><td>100</td></tr><tr><td>0</td><td>0</td></tr><tr><td>Sum</td><td>200</td></tr></table>

It is evident from the table above that larger deviations from the mean contribute to a greater sum total. If we divided these figures of 200 and 800 respectively by N, which in this case is 12, we arrive at the variance of each asset:

variance of asset  $A = 200 / 12 = 16.67$

variance of asset  $\mathrm{B} = {800}/{12} = {66.67}$

The units of variance are rather unusual, as for stock return data they would be considered as percentages squared. If we take the square root of the variance, we obtain the standard deviation, which is expressed in percentages, making it a more attractive measure, since percentages are a familiar metric in finance, being used in interest rates, growth rates, inflation etc.

standard deviation of asset A =  $\sqrt{16.67} = 4.08\%$

standard deviation of asset  $\mathrm{B} = \sqrt{66.67} = 8.16\%$

The interpretation of the standard deviation of stock returns is: the higher the number, the more variable the return and the greater the risk. At the absolute limit, if a stock did not deviate from its average return, the standard deviation would be zero.

Applying the above approach to twelve months' stock data for MGM we find the following:

<table><tr><td>Date</td><td>MGM</td><td>MGM</td><td>MGM-average</td><td>(MGM-average)2</td></tr><tr><td>01/11/2016</td><td>28.71</td><td></td><td></td><td></td></tr><tr><td>01/12/2016</td><td>28.83</td><td>0.42%</td><td>-0.0042</td><td>0.0000</td></tr><tr><td>01/01/2017</td><td>28.8</td><td>-0.10%</td><td>-0.0095</td><td>0.0001</td></tr><tr><td>01/02/2017</td><td>26.29</td><td>-8.72%</td><td>-0.0956</td><td>0.0091</td></tr><tr><td>01/03/2017</td><td>27.4</td><td>4.22%</td><td>0.0338</td><td>0.0011</td></tr><tr><td>01/04/2017</td><td>30.71</td><td>12.08%</td><td>0.1124</td><td>0.0126</td></tr><tr><td>01/05/2017</td><td>31.72</td><td>3.29%</td><td>0.0245</td><td>0.0006</td></tr><tr><td>01/06/2017</td><td>31.29</td><td>-1.36%</td><td>-0.0220</td><td>0.0005</td></tr><tr><td>01/07/2017</td><td>32.93</td><td>5.24%</td><td>0.0440</td><td>0.0019</td></tr><tr><td>01/08/2017</td><td>32.96</td><td>0.09%</td><td>-0.0075</td><td>0.0001</td></tr><tr><td>01/09/2017</td><td>32.59</td><td>-1.12%</td><td>-0.0196</td><td>0.0004</td></tr><tr><td>01/10/2017</td><td>31.03</td><td>-4.79%</td><td>-0.0563</td><td>0.0032</td></tr><tr><td></td><td>Average</td><td>0.84%</td><td>Sum</td><td>0.0296</td></tr><tr><td></td><td></td><td></td><td>Variance = sum/N</td><td>0.0027</td></tr><tr><td></td><td></td><td></td><td>Standard deviation = sqrt</td><td>5.19%</td></tr></table>

This is a monthly standard deviation. In order to convert this to an annualised value, we would multiply by the square root of 12 to get  $17.98\%$ .

Obtaining the covariance is similar:

$$
\sigma_ {i j} = \frac {1}{n} \sum_ {i = 1} ^ {n} (R _ {i} - \overline {{R}} _ {\iota}) (R _ {j} - \overline {{R}} _ {J})
$$

However, here, rather than squaring the deviations from the mean, we multiply the deviation from the mean, for stock i, by the deviation from the mean, for stock j. Returning to our stocks A and B from earlier:

<table><tr><td>Month</td><td>Stock A</td><td>Stock B</td><td>Stock A - ave(A)</td><td>Stock B - ave(B)</td><td>[Stock A - ave(A)] *[Stock B - ave(B)]</td></tr><tr><td>1</td><td>5</td><td>0</td><td>-5</td><td>-10</td><td>50</td></tr><tr><td>2</td><td>15</td><td>20</td><td>5</td><td>10</td><td>50</td></tr><tr><td>3</td><td>10</td><td>10</td><td>0</td><td>0</td><td>0</td></tr><tr><td>4</td><td>5</td><td>0</td><td>-5</td><td>-10</td><td>50</td></tr><tr><td>5</td><td>15</td><td>20</td><td>5</td><td>10</td><td>50</td></tr><tr><td>6</td><td>10</td><td>10</td><td>0</td><td>0</td><td>0</td></tr><tr><td>7</td><td>5</td><td>0</td><td>-5</td><td>-10</td><td>50</td></tr><tr><td>8</td><td>15</td><td>20</td><td>5</td><td>10</td><td>50</td></tr><tr><td>9</td><td>10</td><td>10</td><td>0</td><td>0</td><td>0</td></tr><tr><td>10</td><td>5</td><td>0</td><td>-5</td><td>-10</td><td>50</td></tr><tr><td>11</td><td>15</td><td>20</td><td>5</td><td>10</td><td>50</td></tr><tr><td>12</td><td>10</td><td>10</td><td>0</td><td>0</td><td>0</td></tr><tr><td>Average</td><td>10</td><td>10</td><td></td><td>Sum</td><td>400</td></tr><tr><td>s.d.</td><td>4.08</td><td>8.16</td><td></td><td>Covariance</td><td>33.33</td></tr></table>

Stocks A and B have a tendency to move in the same direction as one another, the only difference being that when stock A is  $5\%$  below (above) its mean, stock B is  $10\%$  below (above) its mean. The resultant covariance is therefore positive. Unfortunately, aside from the sign  $(+)$ , a covariance does not convey any further information. However, there is a relationship that links covariance and correlation together:

$$
\rho_ {A B} = \frac {\sigma_ {A B}}{\sigma_ {A} \sigma_ {B}}
$$

Applying this to the data above:

$$
\rho_ {A B} = \frac {\sigma_ {A B}}{\sigma_ {A} \sigma_ {B}} = \frac {3 3 . 3 3}{4 . 0 8 \times 8 . 1 6} = 1
$$

This confirms that the correlation between the returns of stocks A and B is  $+1$ , otherwise known as perfectly positively correlated.

Applying this approach to twelve months' data for MGM and Wynn Resorts, we find:

<table><tr><td>Date</td><td>MGM</td><td>Wynn</td><td>MGM</td><td>Wynn</td><td>Wynn-average</td><td>(Wynn-average)2</td><td>(MGM-average)x (Wynn-average)</td></tr><tr><td>01/11/2016</td><td>28.71</td><td>101.99</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>01/12/2016</td><td>28.83</td><td>91.88</td><td>0.42%</td><td>-9.91%</td><td>-0.1343</td><td>0.0180</td><td>0.0006</td></tr><tr><td>01/01/2017</td><td>28.8</td><td>101.43</td><td>-0.10%</td><td>10.39%</td><td>0.0688</td><td>0.0047</td><td>-0.0007</td></tr><tr><td>01/02/2017</td><td>26.29</td><td>96.15</td><td>-8.72%</td><td>-5.21%</td><td>-0.0872</td><td>0.0076</td><td>0.0083</td></tr><tr><td>01/03/2017</td><td>27.4</td><td>114.61</td><td>4.22%</td><td>19.20%</td><td>0.1568</td><td>0.0246</td><td>0.0053</td></tr><tr><td>01/04/2017</td><td>30.71</td><td>123.01</td><td>12.08%</td><td>7.33%</td><td>0.0381</td><td>0.0015</td><td>0.0043</td></tr><tr><td>01/05/2017</td><td>31.72</td><td>128.7</td><td>3.29%</td><td>4.63%</td><td>0.0111</td><td>0.0001</td><td>0.0003</td></tr><tr><td>01/06/2017</td><td>31.29</td><td>134.12</td><td>-1.36%</td><td>4.21%</td><td>0.0070</td><td>0.0000</td><td>-0.0002</td></tr><tr><td>01/07/2017</td><td>32.93</td><td>129.34</td><td>5.24%</td><td>-3.56%</td><td>-0.0708</td><td>0.0050</td><td>-0.0031</td></tr><tr><td>01/08/2017</td><td>32.96</td><td>138.99</td><td>0.09%</td><td>7.46%</td><td>0.0395</td><td>0.0016</td><td>-0.0003</td></tr><tr><td>01/09/2017</td><td>32.59</td><td>148.92</td><td>-1.12%</td><td>7.14%</td><td>0.0363</td><td>0.0013</td><td>-0.0007</td></tr><tr><td>01/10/2017</td><td>31.03</td><td>144.44</td><td>-4.79%</td><td>-3.01%</td><td>-0.0652</td><td>0.0043</td><td>0.0037</td></tr><tr><td></td><td></td><td>Average</td><td>0.84%</td><td>3.52%</td><td>Sum</td><td>0.0687</td><td>0.0175</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td>Sum/N</td><td>0.0062</td><td>0.0016</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td>sqrt</td><td>7.9%</td><td></td></tr></table>

Therefore, we find that stock returns of Wynn Resorts are more volatile, with a standard deviation of  $7.9\%$ . Applying the covariance formula, from above, we find the covariance to be 0.0016. As the two standard deviations are 0.0519 and 0.0790, we can then use:

$$
\rho_ {i j} = \frac {\sigma_ {i j}}{\sigma_ {i} \sigma_ {j}}
$$

to find the correlation:

$$
\rho_ {i j} = \frac {0 . 0 0 1 6}{0 . 0 5 1 9 \times 0 . 0 7 9 0} = 0. 3 9
$$

As both MGM and Wynn Resorts are casino stocks, we would expect them to be positively correlated.

# Activity 2.1

Calculate the correlation between United Continental Airlines and crude oil using monthly data from July 2011 to September 2017.

The spreadsheet for this exercise can be found here. Please ensure you click on Section 2 and the 2.1a and 2.1b tabs at the bottom of the spreadsheet.

# 2.2 The mean and variance of a portfolio

In this section we introduce the Markowitz approach to portfolio theory. This seminal piece of work on portfolio allocation under uncertainty was published by Harry Markowitz in the Journal of Finance in 1952. Activity 2.1 illustrated that two assets, the stock returns of United Continental Airlines and of crude oil, have a tendency to move in opposite directions. Hence, if we had a portfolio with some of our wealth invested in the stock of United Continental Airlines and some in crude oil, what we might experience is that on days when our airline stock fell, the price of crude oil would rise; alternatively, on days when the airline stock rose, the price of crude oil fell. The net effect is that the overall variability of our portfolio, as measured by the standard deviation, would be lower than if we simply held the airline stock or the crude oil in isolation. Hence, when computing the variance of a portfolio we also have to concern ourselves with how the asset returns vary together – the covariance. In Chapter 1, we used the term "correlation", since correlation is on a scale from  $-1$  to  $+1$ , which makes it much easier to determine "weak" and "strong" correlation. When correlation between two assets is  $-1$ , you have the ultimate in diversification benefits, as the returns from one asset will be offset by the

returns of the other, hence creating a risk-free portfolio. The graph below illustrates such an outcome. Perfect negative correlation gives a mean combined return for two securities over time equal to the mean for each of them, so the returns for the portfolio show no variability. Any returns above and below the mean for each of the assets are completely offset by the return for the other asset, so there is no variability in total returns, that is, no risk for the portfolio.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/77ee4b34-7484-412c-abe2-870c68f2f83a/c0f01d2f5b6264375ba04d0101163304c343a108df0d8c5e7fef6a2055e1eecf.jpg)  
Time series of returns for two assets with perfect negative correlation

Note that correlation and covariance are linked together via the following equation:

$$
\rho_ {i j} = \frac {\sigma_ {i j}}{\sigma_ {i} \sigma_ {j}}
$$

where:

$$
\sigma_ {i j} = \text {c o v a r i a n c e b e t w e e n a s s e t s} i \text {a n d} j
$$

$$
\sigma_ {i} = \text {s t a n d a r d}
$$

$$
\sigma_ {j} = \text {s t a n d a r d}
$$

$$
\rho_ {i j} = \text {c o r r e l a t i o n b e t w e e n a s s e t s} i \text {a n d} j
$$

Below we present a series of scatter diagrams between simulated returns, using three assumptions of correlation,  $+0.8$ , 0 and  $-0.8$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/77ee4b34-7484-412c-abe2-870c68f2f83a/13860c36fad21d0596a9a36e93efa7f51187775c6cb2733f726866e9df884dbb.jpg)  
Simulated relationship between two assets with correlation equal to  $+0.8$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/77ee4b34-7484-412c-abe2-870c68f2f83a/b28e693988962c6eaba429a9af91e52fcf446fc4d6c182eb5ced544308346e9c.jpg)  
Simulated relationship between two assets with correlation equal to -0.8

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/77ee4b34-7484-412c-abe2-870c68f2f83a/c38465b81cf03cc48927ddaa24d791cbcce41c4e09a5759e2dfeccb2df81820e.jpg)  
Simulated relationship between two assets with correlation equal to 0

In the analysis that follows,  $\sigma_{12}$  refers to the covariance between assets 1 and 2. If  $\sigma_{12}$  is positive, when the return on the first asset is greater than the mean value, then the return on the second asset is also, on average, greater than its mean value; and vice versa, when the return on the first asset is less than the mean value. If  $\sigma_{12}$  is negative, the returns on assets 1 and 2 tend to move in opposite directions and offset each other. If the return on one asset is above the mean, the return on the second will, on average, be below the mean. The fact that the returns on the assets move in opposite directions reduces the variability of the portfolio.

In general, the variance of a portfolio of assets is given by:

$$
\sigma_ {p} ^ {2} = \sum_ {i = 1} ^ {N} X _ {i} ^ {2} \sigma_ {i} ^ {2} + \sum_ {i = 1} ^ {N} \sum_ {\stackrel {k = 1} {k \neq i}} ^ {N} X _ {i} X _ {k} \sigma_ {i k}
$$

and its standard deviation is:

$$
\sigma_ {p} = \sqrt {\sigma_ {p} ^ {2}}
$$

Consider a two-asset portfolio with proportion  $X_{1}$  invested in asset 1, and  $X_{2}(1 - X_{2})$  invested in asset 2, i.e.  $100\%$  invested and no short selling. The expected return of such a portfolio is:

$$
R _ {p} = X _ {1} R _ {1} + X _ {2} R _ {2}
$$

The variance is then:

$$
\sigma_ {p} ^ {2} = X _ {1} ^ {2} \sigma_ {1} ^ {2} + X _ {2} ^ {2} \sigma_ {2} ^ {2} + 2 X _ {1} X _ {2} \sigma_ {1 2}
$$

Or using correlation:

$$
\sigma_ {p} ^ {2} = X _ {1} ^ {2} \sigma_ {1} ^ {2} + X _ {2} ^ {2} \sigma_ {2} ^ {2} + 2 X _ {1} X _ {2} \rho_ {1 2} \sigma_ {1} \sigma_ {2}
$$

# Example

Consider two stocks, Wynn Resorts and Kellogg. The expected return (\% p.a.), standard deviation (\% p.a.) and correlation calculated using five years of weekly data is detailed below:

<table><tr><td></td><td>Wynn</td><td>Kelloggs</td></tr><tr><td>Expected return</td><td>14.5%</td><td>5.2%</td></tr><tr><td>Standard deviation</td><td>36.6%</td><td>14.6%</td></tr><tr><td>Correlation</td><td>0.07</td><td></td></tr></table>

Using:

$$
\sigma_ {p} ^ {2} = X _ {1} ^ {2} \sigma_ {1} ^ {2} + X _ {2} ^ {2} \sigma_ {2} ^ {2} + 2 X _ {1} X _ {2} \rho_ {1 2} \sigma_ {1} \sigma_ {2}
$$

and:

$$
R _ {p} = X _ {1} R _ {1} + X _ {2} R _ {2}
$$

respectively to find the risk and return of portfolios with varying weights generates the following results:

<table><tr><td>W_Wynn</td><td>W_Kelloggs</td><td>Variance</td><td>s.d.</td><td>ER</td></tr><tr><td>0.00%</td><td>100.00%</td><td>0.0213</td><td>14.6%</td><td>5.2%</td></tr><tr><td>10.00%</td><td>90.00%</td><td>0.0193</td><td>13.9%</td><td>6.1%</td></tr><tr><td>20.00%</td><td>80.00%</td><td>0.0202</td><td>14.2%</td><td>7.1%</td></tr><tr><td>30.00%</td><td>70.00%</td><td>0.0241</td><td>15.5%</td><td>8.0%</td></tr><tr><td>40.00%</td><td>60.00%</td><td>0.0309</td><td>17.6%</td><td>8.9%</td></tr><tr><td>50.00%</td><td>50.00%</td><td>0.0407</td><td>20.2%</td><td>9.9%</td></tr><tr><td>60.00%</td><td>40.00%</td><td>0.0534</td><td>23.1%</td><td>10.8%</td></tr><tr><td>70.00%</td><td>30.00%</td><td>0.0691</td><td>26.3%</td><td>11.7%</td></tr><tr><td>80.00%</td><td>20.00%</td><td>0.0878</td><td>29.6%</td><td>12.6%</td></tr><tr><td>90.00%</td><td>10.00%</td><td>0.1094</td><td>33.1%</td><td>13.6%</td></tr><tr><td>100.00%</td><td>0.00%</td><td>0.1340</td><td>36.6%</td><td>14.5%</td></tr></table>

This can be represented graphically as:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/77ee4b34-7484-412c-abe2-870c68f2f83a/dedc3f14bd44b3cd0f2c0c676f2dcb537d035e25dc25848ffb738c285f2f8d90.jpg)

This line is referred to as the mean-standard deviation frontier. The points on the line to the right of the minimum variance portfolio are part of the efficient frontier, while points on the line to the left of the minimum variance portfolio are part of the inefficient frontier. No rational investor would select any point on the inefficient frontier, as for the same level of risk there are alternative portfolios with higher returns. Despite correlation between the two assets being positive, diversification can still reduce the risk of the portfolio.

It is evident from this graph that investors have the opportunity to reduce the risk of the portfolio, yet still increase returns, by reducing the investment in the low-risk asset (Kelloggs) and increasing the investment in the higher-risk asset (Wynn Resorts). There is one combination between the two assets whereby the risk of the portfolio, standard deviation, is minimised. In order to find this weight we need to use a little calculus:

$$
\sigma_ {p} ^ {2} = X _ {1} ^ {2} \sigma_ {1} ^ {2} + X _ {2} ^ {2} \sigma_ {2} ^ {2} + 2 X _ {1} X _ {2} \rho_ {1 2} \sigma_ {1} \sigma_ {2}
$$

If we are fully invested then:

$$
X _ {1} + X _ {2} = 1
$$

and:

$$
X _ {2} = 1 - X _ {1}
$$

Therefore:

$$
\sigma_ {p} ^ {2} = X _ {1} ^ {2} \sigma_ {1} ^ {2} + (1 - X _ {1}) ^ {2} \sigma_ {2} ^ {2} + 2 X _ {1} (1 - X _ {1}) \rho_ {1 2} \sigma_ {1} \sigma_ {2}
$$

Multiplying out the brackets:

$$
\sigma_ {p} ^ {2} = X _ {1} ^ {2} \sigma_ {1} ^ {2} + \sigma_ {2} ^ {2} - 2 X _ {1} \sigma_ {2} ^ {2} + X _ {1} ^ {2} \sigma_ {2} ^ {2} + 2 X _ {1} \rho_ {1 2} \sigma_ {1} \sigma_ {2} - 2 X _ {1} ^ {2} \rho_ {1 2} \sigma_ {1} \sigma_ {2}
$$

We should now differentiate  $\sigma_{\mathfrak{p}}^{2}$  with respect to  $X_{1}$ :

$$
\frac {\delta \sigma_ {p} ^ {2}}{\delta X _ {1}} = 2 X _ {1} \sigma_ {1} ^ {2} - 2 \sigma_ {2} ^ {2} + 2 X _ {1} \sigma_ {2} ^ {2} + 2 \rho_ {1 2} \sigma_ {1} \sigma_ {2} - 4 X _ {1} \rho_ {1 2} \sigma_ {1} \sigma_ {2}
$$

Setting this equal to zero and dividing through by 2.

$$
\begin{array}{l} \frac {\delta \sigma_ {p} ^ {2}}{\delta X _ {1}} = 0 \longrightarrow X _ {1} \sigma_ {1} ^ {2} + X _ {1} \sigma_ {2} ^ {2} - 2 X _ {1} \rho_ {1 2} \sigma_ {1} \sigma_ {2} = \sigma_ {2} ^ {2} - \rho_ {1 2} \sigma_ {1} \sigma_ {2} \\ X _ {1} \left(\sigma_ {1} ^ {2} + \sigma_ {2} ^ {2} - 2 \rho_ {1 2} \sigma_ {1} \sigma_ {2}\right) = \sigma_ {2} ^ {2} - \rho_ {1 2} \sigma_ {1} \sigma_ {2} \\ \end{array}
$$

Hence:

$$
X _ {1} = \frac {\sigma_ {2} ^ {2} - \rho_ {1 2} \sigma_ {1} \sigma_ {2}}{(\sigma_ {1} ^ {2} + \sigma_ {2} ^ {2} - 2 \rho_ {1 2} \sigma_ {1} \sigma_ {2})}
$$

and  $X_{2} = 1 - X_{1}$

$$
X _ {2} = \frac {\sigma_ {1} ^ {2} - \rho_ {1 2} \sigma_ {1} \sigma_ {2}}{(\sigma_ {1} ^ {2} + \sigma_ {2} ^ {2} - 2 \rho_ {1 2} \sigma_ {1} \sigma_ {2})}
$$

Applying this to our Wynn and Kelloggs example

$$
X _ {1} = \frac {\sigma_ {2} ^ {2} - \rho_ {1 2} \sigma_ {1} \sigma_ {2}}{\sigma_ {1} ^ {2} + \sigma_ {2} ^ {2} - 2 \rho_ {1 2} \sigma_ {1} \sigma_ {2}} = \frac {0.366 ^ {2} - 0.07 \times .366 \times .146}{0.366 ^ {2} + 0.146 ^ {2} - 0.07 \times .366 \times .146} = 11.89 \%
$$

$$
\mathrm{X}_{2} = 88.11\%
$$

The risk of this portfolio is then  $13.9\%$ .

A special case exists when correlation equals  $-1$ :

$$
X _ {1} = \frac {\sigma_ {2} ^ {2} - \rho_ {1 2} \sigma_ {1} \sigma_ {2}}{\sigma_ {1} ^ {2} + \sigma_ {2} ^ {2} - 2 \rho_ {1 2} \sigma_ {1} \sigma_ {2}} = \frac {\sigma_ {2} ^ {2} + \sigma_ {1} \sigma_ {2}}{\sigma_ {1} ^ {2} + \sigma_ {2} ^ {2} + 2 \rho_ {1 2} \sigma_ {1} \sigma_ {2}} = \frac {\sigma_ {2} (\sigma_ {1} + \sigma_ {2})}{(\sigma_ {1} + \sigma_ {2}) ^ {2}} = \frac {\sigma_ {2}}{(\sigma_ {1} + \sigma_ {2}) ^ {3}}
$$

In the previous diagram the correlation between the two assets was close to zero, at 0.07. This determined the shape of the mean-standard deviation frontier. The diagrams below illustrate what happens to the shape of the mean-standard deviation frontier when correlation takes the following values: (i) 1, (ii) 0.25, (iii) 0, (iv) -0.5, (v), -1.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/77ee4b34-7484-412c-abe2-870c68f2f83a/0932f50acc13718c313c1f207c04193a8f9f51f84664a9b1353000deffe9a774.jpg)

Correlation = +1

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/77ee4b34-7484-412c-abe2-870c68f2f83a/4993bfaa31f915d8d2c79701471867fc1a97e36e9f9fed17dd1dd8fa3bada817.jpg)  
Correlation = 0.25

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/77ee4b34-7484-412c-abe2-870c68f2f83a/eb463cc1ae278ffabc514eb226d36d58dbd63186cd9e9d96b28452ec995b2cac.jpg)  
Correlation  $= 0$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/77ee4b34-7484-412c-abe2-870c68f2f83a/0bc90c159aac13a3d551a77717a7031e3a4eecd779cf99159e33c2fb2da188cf.jpg)  
Correlation = -0.5

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/77ee4b34-7484-412c-abe2-870c68f2f83a/1c858537ff426c75b8ef9c87c2b24a92951f79d207a7faf4093b075741225d12.jpg)  
Correlation  $= -1$

As correlation reduces, the mean-standard deviation frontier becomes more convex and the minimum variance portfolio gets closer and closer to the horizontal axis.

The spreadsheet for this exercise can be found here. Please ensure you click on Section 2 and the 2.2 tab at the bottom of the spreadsheet.

The diagram above shows that there exists one portfolio with zero risk.

This can be found using:

$$
X _ {1} = \frac {\sigma_ {2}}{\left(\sigma_ {1} + \sigma_ {2}\right)} = \frac {14.60}{36.60 + 14.60} = 28.52 \%
$$

# 2.3 Finding the risk of a threeor more asset portfolio

Earlier we noted that the number of covariance terms (and hence correlations) required to find the risk of a N asset portfolio is  $\mathrm{N}(\mathrm{N} - 1)/2$ . In addition to this we require the individual variances. Therefore, to find the risk of a four-asset portfolio, the appropriate equation would be:

$$
\begin{array}{l} \sigma_ {p} ^ {2} = X _ {1} ^ {2} \sigma_ {1} ^ {2} + X _ {2} ^ {2} \sigma_ {2} ^ {2} + + X _ {3} ^ {2} \sigma_ {3} ^ {2} + X _ {4} ^ {2} \sigma_ {4} ^ {2} + 2 X _ {1} X _ {2} \sigma_ {1 2} + 2 X _ {1} X _ {3} \sigma_ {1 3} \\ + 2 X _ {1} X _ {4} \sigma_ {1 4} + 2 X _ {2} X _ {3} \sigma_ {2 3} + 2 X _ {2} X _ {4} \sigma_ {2 4} + 2 X _ {3} X _ {4} \sigma_ {3 4} \\ \end{array}
$$

Note the inclusion of six covariance terms i.e.  $(4\times 3) / 2 = 6)$

This can be written in matrix notation as:

$$
\sigma_ {p} ^ {2} = X ^ {\prime} \Sigma X
$$

where  $X$  is a  $(N \times 1)$  column vector of portfolio weights,  $\Sigma$  is a  $(N \times N)$  covariance matrix and  $X'$  is the transpose of  $X$  and has the dimensions  $1 \times N$ . If we multiply  $X' \Sigma$  we multiply a  $(1 \times N)$  vector by a  $N \times N$  matrix and the result will be a  $1 \times N$  vector. We can then multiply this result by the  $N \times 1$  vector,  $X$ , and the result will be  $1 \times 1$ , i.e., a single number and this will represent the variance.

Excel has two useful functions for matrix operations, MMULT and TRANSPOSE, which make matrix operations extremely easy.

Applying this approach to a four-asset portfolio comprising United Continental Airlines and Exxon Mobil together with Wynn Resorts and Kelloggs from earlier, we find the following results using inputs calculated using five years of weekly data:

<table><tr><td colspan="7">Covariance matrix</td></tr><tr><td></td><td></td><td>UAL</td><td>Exxon</td><td>Wynn</td><td>Kelloggs</td><td></td></tr><tr><td>Sigma</td><td>UAL</td><td>0.00266330</td><td>0.00014188</td><td>0.00048791</td><td>0.00015992</td><td></td></tr><tr><td></td><td>Exxon</td><td>0.00014188</td><td>0.00045895</td><td>0.00024267</td><td>0.00011834</td><td></td></tr><tr><td></td><td>WYNN</td><td>0.00048791</td><td>0.00024267</td><td>0.00257027</td><td>0.00007148</td><td></td></tr><tr><td></td><td>K</td><td>0.00015992</td><td>0.00011834</td><td>0.00007148</td><td>0.00041109</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td>UAL</td><td>Exxon</td><td>Wynn</td><td>Kelloggs</td><td></td><td></td></tr><tr><td>Average return</td><td>0.46%</td><td>0.01%</td><td>0.28%</td><td>0.10%</td><td></td><td></td></tr><tr><td>s.d.</td><td>5.16%</td><td>2.14%</td><td>5.07%</td><td>2.03%</td><td></td><td></td></tr><tr><td>s.d. (per annum)</td><td>37.2%</td><td>15.4%</td><td>36.6%</td><td>14.6%</td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>X</td><td>0.25</td><td>X&#x27;</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td></tr><tr><td></td><td>0.25</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td>0.25</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td>0.25</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>X&#x27;S</td><td>0.0008633</td><td>0.0002405</td><td>0.0008431</td><td>0.0001902</td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>X&#x27;SX</td><td>0.000534</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>s.d.</td><td>2.31%</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>s.d. (per annum)</td><td>16.67%</td><td></td><td></td><td></td><td></td><td></td></tr></table>

This approach is scalable, and using matrix notation it is a trivial exercise to find the risk of large asset portfolios.

The spreadsheet for this exercise can be found here. Please ensure you click on Section 2 and the 2.3 tab at the bottom of the spreadsheet.

# 2.4 Choosing the optimal portfolio

Each of us has different preferences regarding the decisions we make in life. This includes the selection of risk and return combinations from a large pool of choices. The previous section introduced the mean-standard deviation function, and while it is evident that no rational

individual would choose a point on the inefficient frontier, how do we determine what point an individual investor will choose on the efficient frontier? The answer is found by finding the tangency point between the efficient frontier and an investor's indifference curve. The shape of an investor's indifference curve will depend on how much compensation they require in return for bearing risk. An investor with a very steep indifference curve requires a large increase in return for small increases in risk, whereas an investor with very flat indifference curve requires a small increase in return for small increases in risk.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/77ee4b34-7484-412c-abe2-870c68f2f83a/7050987fe7185d38d71bb82e65216ea2d8e4ca849ee990464358217dc524b0b2.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/77ee4b34-7484-412c-abe2-870c68f2f83a/102b8a4ae227d012f4f2ebe2fc5bc798bdedcc0808a6a0ace214a12ba8b8839d.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/77ee4b34-7484-412c-abe2-870c68f2f83a/e26e1629528e933c955ffa034379b31339b16ff8d3cd1371c59fed366fa0bb29.jpg)

The diagram below shows the portfolio selected by a risk-averse investor (investor A) who has steep preferences and a risk-seeking investor (investor B) who has flatter preferences. In order to determine which portfolio is optimal for a given investor, we need to find the point of tangency between the mean-standard deviation frontier and the investor's indifference curve.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/77ee4b34-7484-412c-abe2-870c68f2f83a/5aeaedb0c90e5e973041eec65914711703b63dde9d3824af93c4220666458c5b.jpg)

In the diagram above, investor A's optimal portfolio is on the efficient frontier, a little way along from the minimum variance portfolio. Investor B, who has flatter preferences, would select a portfolio further along the efficient frontier and select a portfolio with higher risk and higher return. As indifference curves for all investors are upward sloping, it is impossible to find a tangency point on the inefficient part of the mean-standard deviation frontier. In order for an investor to select the minimum variance portfolio, their indifference curves would need to be extremely steep to achieve the tangency condition at that point.

# 2.5 The risk of large portfolios

What happens to the variance of a portfolio as the number of assets increases? Recall again the formula for calculating the variance of a portfolio:

$$
\sigma_ {p} ^ {2} = \sum_ {i = 1} ^ {N} X _ {i} ^ {2} \sigma_ {i} ^ {2} + \sum_ {i = 1} ^ {N} \sum_ {\stackrel {k = 1} {k \neq i}} ^ {N} X _ {i} X _ {k} \sigma_ {i k}
$$

Note there are  $N(N - 1)$  elements inside the double summation signs since each of the  $N$  assets can be combined with any of the remaining  $N - 1$  assets. Assume further that all assets are held in equal proportions such that  $X_{i} = X_{k} = 1 / N$ .

$$
\sigma_ {p} ^ {2} = \sum_ {i = 1} ^ {N} \left(\frac {1}{N}\right) ^ {2} \sigma_ {i} ^ {2} + \sum_ {i = 1} ^ {N} \sum_ {\stackrel {k = 1} {k \neq i}} ^ {N} \left(\frac {1}{N}\right) \left(\frac {1}{N}\right) \sigma_ {i k}
$$

$$
\sigma_ {p} ^ {2} = \frac {1}{N} \frac {1}{N} \sum_ {i = 1} ^ {N} \sigma_ {i} ^ {2} + \frac {1}{N} \frac {1}{N} \sum_ {i = 1} ^ {N} \sum_ {\stackrel {k = 1} {k \neq i}} ^ {N} \sigma_ {i k}
$$

$$
\sigma_ {p} ^ {2} = \frac {1}{N} \frac {1}{N} \sum_ {i = 1} ^ {N} \sigma_ {i} ^ {2} + \frac {1}{N} \frac {1}{N} \left(\frac {N - 1}{N - 1}\right) \sum_ {i = 1} ^ {N} \sum_ {\stackrel {k = 1} {k \neq i}} ^ {N} \sigma_ {i k}
$$

Note that the inclusion of the term  $(N - 1) / (N - 1)$  (i.e. 1) is simply to help us find the final result later.

We could write expressions for the average covariance and variances as:

$$
\overline {{\sigma_ {p} ^ {2}}} = \frac {1}{N} \sum_ {i = 1} ^ {N} \sigma_ {i} ^ {2}
$$

and

$$
\overline {{\sigma_ {\iota k}}} = \frac {1}{N (N - 1)} \sum_ {i = 1} ^ {N} \sum_ {\stackrel {k = 1} {k \neq i}} ^ {N} \sigma_ {i k}
$$

Thus we can replace the first term with (1/N) multiplied by the average variance, and the second term with (N-1)/N multiplied by the average covariance:

$$
\sigma_ {p} ^ {2} = \frac {1}{N} \sigma_ {p} ^ {2} + \frac {N - 1}{N} \overline {{\sigma_ {\iota k}}}
$$

It is evident that as N gets large, 1/N tends towards zero, hence the first term will become less significant. With regard to the second term, as N gets large, (N - 1)/N tends towards 1. Therefore,

for large, equally weighted portfolios, the portfolio risk is equal to the average covariance. An important conclusion from this is that individual risks of securities can be diversified away but contribution to total risk from the covariance cannot.

Graphically, this outcome can be represented as follows:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/77ee4b34-7484-412c-abe2-870c68f2f83a/d1a8883367603db3506fc76732dd42a84887d658055769293b322e76e6b00054.jpg)

A common misconception is that if an investor adds more and more stocks to a portfolio, the portfolio risk will eventually become zero. The diagram above shows that this is not the case, since the portfolio risk tends towards the average covariance, which we refer to as "market risk". Note further that adding stocks to a portfolio will incur transaction costs, and as we add more and more stocks to the portfolio ultimately the benefits from diversification (i.e. risk reduction) will be offset by the costs of diversification (i.e. transaction costs). It is often argued that risk reduction can best be achieved using 25-30 stocks.

# 2.6 Market risk

As noted in section 1.6, a stock market can be considered as a barometer of economic activity. Moreover, a company's stock price reflects the value of its assets plus the present value of future opportunities. It follows that the majority of companies will benefit in an economy that

is doing well but will be disadvantaged in a struggling economy. This explains why stocks have a tendency to move together and, regardless of the number of stocks an investor holds, investors are exposed to changes in the stock market. This is referred to as market risk and cannot be diversified away.

The risk that can be diversified away is called "unique risk". A unique risk is one that is particular to just that stock. For example, in April 2010, an explosion on board the drilling rig Deepwater Horizon caused the share price of BP to fall from approximately 650 pence to 300 pence by the end of June. This risk was unique to BP and independent of how the market moved over this period.

Following the mass shooting in Las Vegas in October 2017, casino stocks such as MGM Resorts (which owns the Mandalay Bay Hotel from where the gunman opened fire), Melco Resorts and Entertainment, Wynn Resorts and Las Vegas Sands Corp all fell. Over the period 29 September 2017 to 20 October 2017 all four casino stocks have fallen:

MGM:  $-4.8\%$ , LVS:  $-2.3\%$ , Wynn:  $-3.0\%$ , MLCO:  $-0.9\%$ .

Meanwhile, the S&P500 index has risen  $2.2\%$ . Therefore an investor with a diversified portfolio would not have been impacted by these falls, as they would have been mitigated by rises elsewhere in the portfolio.

In section 2.4 it was demonstrated that for large portfolios we require  $N \times (N - 1)$  different covariance terms. Thus, to undertake this type of portfolio analysis on a 100-asset portfolio we would require 9,900 different covariance terms (although covariance is symmetric, so we would actually "only" need 4,450). If we didn't consider how assets moved against each other but instead asked how they moved relative to one factor, such as the stock market, this would reduce the number of parameters required. The beta,  $\beta$ , of an asset measures how sensitive it is to movements in the market. Stocks with betas greater than 1 tend to amplify the overall movements of the market. Stocks with betas between 0 and 1 tend to move in the same direction as the market, but not as far. The market is the portfolio of all stocks and so has a beta of 1.

Some sample betas for S&P 500 companies are given here from 20 October 2017:

Kelloggs1 0.21

WAL-MART Stores2 0.09

Walt Disney3 1.34

Wynn Resorts4

2.22

If the stock market rose or fell by  $10\%$ , then Kellogg's would rise/fall by  $2.1\%$ ; Wal-Mart would rise/fall by  $0.9\%$ ; Walt Disney would rise/fall by  $13.4\%$ ; and Wynn Resorts would rise/fall by  $22.2\%$ .

If an investor expected the stock market to rise they would probably form a portfolio of high-beta (or aggressive) stocks. If on the other hand an investor expected the stock market to fall, they would be more likely to hold low-beta (or defensive) stocks.

The variance (and standard deviation) of a large asset portfolio is given by:

$$
\sigma_ {p} ^ {2} = \beta_ {p} ^ {2} \sigma_ {m} ^ {2} \Rightarrow \sigma_ {p} = \beta_ {p} \sigma_ {m}
$$

It follows that the risk of a large, diversified portfolio is directly proportional to the beta of the portfolio. For example, if we formed a large, diversified portfolio with a beta of 1, the standard deviation of the portfolio would be directly proportional to the standard deviation of the market. If, however, we formed a large portfolio with a beta of 1.5, the standard deviation would be  $50\%$  higher than the standard deviation of the market.

Betas can be estimated by drawing a scatter diagram, with returns on the stock on the vertical axis and returns on the stock market on the horizontal axis. If we fit a trendline to this scatter diagram, the slope of the line will indicate by what proportion a stock's return changes in response to a given change in the market. When calculating betas it is common practice to use five years of weekly data.

Betas can also be found using the following equation:

$$
B e t a = \frac {C o v a r i a n c e b e t w e e n t h e s t o c k a n d t h e m a r k e t}{V a r i a n c e o f t h e m a r k e t}
$$

# Example

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/77ee4b34-7484-412c-abe2-870c68f2f83a/27c969cab49a399f8f801e6916312eda96c0245c21cbc92e32f306738cf32e60.jpg)

The fitted trendline has an equation of:

$$
R _ {B P} = - 0. 0 0 0 5 9 8 + 1. 2 4 R _ {m}
$$

Therefore, the beta of BP is 1.24, so a  $5\%$  fall in the FTSE100 will lead to a  $6.2\%$  fall in the price of BP (1.24 x  $-5\%$ ). The r-squared value indicates that the market risk of BP is  $53.6\%$ , with the balance of  $46.4\%$  representing unique risk.

# Activity 2.2

The spreadsheet available here contains stock price data on Tesla and the S&P500. Please ensure you click on Section 2 and the 2.6 tab at the bottom of the spreadsheet.

Draw a scatter diagram and fit a trendline to fit the beta and market risk for Tesla.

# 2.7 The capital asset pricing model

The capital asset pricing model (CAPM) was developed by William Sharpe as part of his PhD thesis. He worked partly under the guidance of Harry Markowitz on the topic of "Portfolio Analysis Based on a Simplified Model of the Relationships Among Securities". Important concepts such as the one-factor model and the security market line were developed in this thesis.

The major factor that allowed Markowitz's portfolio theory to develop into capital market theory is the concept of the risk-free asset. A risk-free asset is one with zero variance. By comparison, a risky asset is one for which future returns are uncertain. Recall that covariance between two sets of returns is:

$$
\sigma_ {i j} = \frac {1}{n} \sum_ {i = 1} ^ {n} (R _ {i} - \overline {{R}} _ {\iota}) (R _ {j} - \overline {{R}} _ {J})
$$

where the line (or bar) above  $R_i$  and  $R_j$  denoted average. It follows that, because the returns for the risk-free asset are certain,  $R_i - E(R_i) = 0$ , the covariance (and hence correlation) will also be zero.

Once a risk-free rate is introduced, and assuming that "investors are able to borrow or lend funds on equal terms" at the risk-free rate, then we can modify the Markowitz approach as illustrated below:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/77ee4b34-7484-412c-abe2-870c68f2f83a/61cc25b214fd451855af088db8df7766831b6bb7b8142320bf8f49b2d8d22176.jpg)

Every combination of the risk-free asset  $R_{f}$  and the market portfolio  $M$  is shown on the capital market line (CML). The line is drawn from the vertical axis at the risk-free rate tangential to the Markowitz efficient frontier.

Portfolios to the left of M represent combinations of risky assets and the risk-free asset. Portfolios to the right of M include purchases of risky assets made with funds borrowed at the risk-free rate. Such a portfolio is called a leveraged portfolio.

Compare portfolio  $\mathsf{P}_1$  on the Markowitz efficient frontier with portfolio  $\mathsf{P}_2$ , which is on the CML. Note that for the same level of risk, the expected return is greater for  $\mathsf{P}_2$  than for  $\mathsf{P}_1$ . This is true for all points on the line AB, except portfolio M.

In section 2.4 we concluded that investors will select a portfolio where their indifference curves are tangential to the mean-standard deviation frontier. With the introduction of the risk-free asset, we must now modify this conclusion, such that we now say that an investor will select a portfolio on the line representing a combination of borrowing or lending at the risk-free rate and purchases of the market portfolio, M. The particular efficient portfolio that the investor will select on the line will once again depend on the investor's risk preferences.

The CML is drawn in (total risk, expected return) space. An alternative representation of the CAPM, which recognises that the market only rewards investors for holding market risk, is the security market line (SML). This is drawn in (beta, expected return) space.

# Security Market Line

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/77ee4b34-7484-412c-abe2-870c68f2f83a/b04f168ccf443e992b6a4d59bedd7fe5b90a5d44edb676eeee92865403cd29fc.jpg)

The SML indicates that if your stock (or portfolio) beta is 0, then you will earn the risk-free rate of return. If your stock (or portfolio) beta is 1, then you will earn the same return as the market. If your stock (or portfolio) beta is greater than 1, then you will earn a return in excess of the market.

This SML equation can be expressed algebraically as:

$$
E (R _ {i}) = R _ {f} + \beta_ {i} \big [ E (R _ {m}) - R _ {f} \big ]
$$

where

$\mathrm{E}(\mathrm{Ri}) =$  expected return on asset I

$R_{f} =$  the risk-free rate

$\mathrm{E}(\mathsf{R}_{\mathfrak{m}}) =$  expected return on the market

$\mathsf{E}(\mathsf{R}_{\mathsf{m}}) - \mathsf{R}_{\mathsf{f}} =$  market-risk premium

The SML equation states that the expected return on an asset is equal to the risk-free rate plus compensation for market risk represented by the product of the asset's beta and the market-risk premium. The diagram and the algebraic representation confirm that the relationship

between expected returns is a linear one, and the higher the level of systematic risk, the greater the expected return.

When beta  $= 0$  ..

$$
E (R _ {i}) = R _ {f} + 0 \times [ E (R _ {m}) - R _ {f} ] = R _ {f}
$$

When beta = 1:

$$
E (R _ {i}) = R _ {f} + 1 \times \left[ E (R _ {m}) - R _ {f} \right] = E (R _ {m})
$$

# Example

Let the risk-free rate be  $2\%$ . Suppose the rate of return of the market has an expected value of  $12\%$  and a standard deviation of  $15\%$ . Now consider an asset that has a covariance of 0.045 with the market. What is the expected return of the asset?

First of all we need to find the beta:

$$
\beta = 0. 0 4 5 /. 1 5 ^ {2} = 0. 0 4 5 / 0. 0 2 2 5 = 2
$$

Now plug the values into the SML equation:

$$
\mathrm{E}(\mathrm{R}_{\mathrm{i}}) = 0.02 + 2[0.12 - 0.02] = 0.02 + 2\times 0.1 = 0.12 = 12\%
$$

In equilibrium, we assume that all stocks lie on the SML and that any temporary deviations will be exploited through the activities of arbitrageurs whose actions will return the stock to the SML.

Consider two securities, HSL and PJL, which lie on the security market line.

<table><tr><td>Security</td><td>HSL</td><td>PJL</td></tr><tr><td>Beta</td><td>1</td><td>1.5</td></tr><tr><td>Expected return</td><td>14%</td><td>18%</td></tr></table>

As we have two points on the SML we can obtain its equation. Using the standard form of the equation of a straight line,  $y = ax + b$ , and inserting the coordinates (1, 14) and (1.5, 18):

$$
1 4 = a \times 1 + b
$$

$$
1 8 = a \times 1. 5 + b
$$

Subtracting the first equation from the second:

$$
4 = a (0. 5) \text {t h e r e f o r e} a = 8
$$

In this context, a represents the risk-free rate.

Substituting in the first equation:

$$
b = 1 4 - 8 \times 1 = 6
$$

In this context,  $b$  represents the market-risk premium. As HSL has a beta of 1 and a return of  $14\%$ , then given that the risk-free rate was found to be  $8\%$ , we could immediately infer that the market risk premium was  $6\%$  (i.e.  $14\% - 8\%$ ).

The equation of the SML is then:

$$
E (R _ {i}) = 8 + 6 \beta_ {i}
$$

Consider now the security MGL, which has a beta of 1.8 and is priced to give an expected return of  $24\%$ . According to the SML, the expected return should be:

$$
E \left(R _ {i}\right) = 8 + 6 \beta_ {i} = 8 + 6 \times 1.8 = 20.4 \%
$$

Therefore MGL is priced to give an expected return that is higher than that predicted by the SML. This is represented by the red dot on the diagram below.

The security KAL, which has a beta of 0.5, is priced to give an expected return of  $8\%$ . According to the SML, the expected return should be:

$$
E (R _ {i}) = 8 + 6 \beta_ {i} = 8 + 6 \times 0.5 = 11 \%
$$

Therefore KAL is priced to give an expected return that is lower than that predicted by the SML. This is represented by the yellow dot on the diagram below.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/77ee4b34-7484-412c-abe2-870c68f2f83a/dd45d71c2b924a028ade37ee78cea2d7ed58d5ed7758c781297eea355e57ef6c.jpg)  
Security Market Line

Is MGL over-priced or under-priced? The temptation is to say over-priced, as it lies above the SML. However, the SML is drawn in (beta, expected return) space not (beta, price) space, and in fact MGL is under-priced. As arbitrageurs realise this and buy the asset, market forces will force the price up, and as investors are now buying the asset at a higher price, the expected return will fall. It will continue to fall until it is commensurate with the degree of market risk.

In comparison, KAL lies below the SML and is over-priced. The actions of arbitrageurs selling this security will force the price down, and hence the expected return will rise until KAL lies on the SML.

A key feature of the CAPM is beta, which can be found using:

$$
B e t a = \frac {C o v a r i a n c e b e t w e e n t h e s t o c k a n d t h e m a r k e t}{V a r i a n c e o f t h e m a r k e t}
$$

Therefore in order to calculate beta we need to identify the market portfolio. It is commonly accepted that "the market portfolio is defined as a value-weighted combination of all assets".<sup>6</sup> In practice no such portfolio exists that represents all potential assets. To circumvent this problem many researchers use share indices, such as the S&P500 or the FTSE100, as a proxy for the market portfolio. In fact, in example 2.2 above, we have also used a proxy in order to calculate the beta. Roll argues that "[CAPM] theory is not testable unless the exact composition of the true market portfolio is known and used in the tests. This implies that the theory is not testable unless all individual assets are included in the sample."<sup>7</sup> This is known as "Roll's critique".

# 2.8 The beta of a portfolio

For a portfolio of N assets, the portfolio beta is found using:

$$
\beta_ {p} = \sum_ {i = 1} ^ {N} \omega_ {i} \beta_ {i}
$$

i.e. a weighted average of all of the betas in the portfolio. For example, if I held  $50\%$  of my wealth in stock A, and  $50\%$  of my wealth in stock B, which have betas of 1.5 and 2 respectively, then the beta of my portfolio would be:

$$
0. 5 \times 1. 5 + 0. 5 \times 2 = 1. 7 5
$$

Hence, if the market rose by  $10\%$  then stock A would rise by  $15\%$  and stock B by  $20\%$ . The net effect on the portfolio would be a rise of  $17.5\%$ .

# Activity 2.3

You own 10,000 shares in Ford (beta = 1.31, price = US$12.10), 10,000 in Verizon (beta = 0.71, price = US$49.53) and 10,000 in Proctor and Gamble (beta = 0.52, price = US$88.55).

What is the beta of your portfolio?

Harry Markowitz, William Sharpe and Merton Miller received the Nobel Prize for Economics in 1990 for their contributions to portfolio theory. A discussion of their contribution can be found on the Nobel Prize website.<sup>8</sup>
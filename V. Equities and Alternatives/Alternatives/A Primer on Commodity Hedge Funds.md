---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Original Article
linter-yaml-title-alias: Original Article
---

# Original Article

# A primer on commodity hedge funds

Received (in revised form): 3rd June 2012

# Christopher Bauer

is an Analyst in the structured equity derivatives division of Barclays Capital in London. He holds a Bachelor of Arts in Business Administration from the Baden-Wuerttemberg Cooperative State University Heidenheim, and a Master of Finance from the Frankfurt School of Finance and Management.

# Thomas Heidorn

is a Professor of Banking at the Frankfurt School of Finance and Management and the Managing Director of its Centre for Practical Quantitative Finance. He holds a Master of Arts in Economics and obtained his doctoral degree from the Christian-Albrechts-University in Kiel, Germany. He holds lectures and seminars on Financial Mathematics, Risk Management, Derivatives and Treasury.

# Dieter Kaiser

is Managing Director of Robus Capital Management Limited in London. From 2007 to 2011, he was Director Hedge Funds at Feri AG in Bad Homburg, Germany, where he was portfolio manager of several funds of funds and responsible for hedge fund selection. He holds a Bachelor of Arts in Business Administration, a Master of Arts in Banking and Finance from the Frankfurt School of Finance and Management and a PhD in Finance from the Chemnitz University of Technology. On the academic side, he is a Research Fellow at the Centre for Practical Quantitative Finance of the Frankfurt School of Finance and Management.

Correspondence: Dieter Kaiser, Robus Capital Management Limited, Marble Arch Tower, 55 Bryanston Street, London W1H 7AA, UK

E-mail: dk@robuscap.com

ABSTRACT This article aims to describe the universe of long-short commodity funds and to identify the style that generates the highest  $\alpha$ . We construct an extensive database of 683 active commodity hedge funds, covering the January 2000 - December 2010 observation period. Each fund is allocated to one of three styles: long-short futures, long-short equities or funds of funds. Overall, we show that all commodity styles generate  $\alpha$ s against the investigated commodity benchmarks. Furthermore, long-short futures managers show the highest  $\alpha$ s and Sharpe ratios and the lowest volatility relative to the other styles.

Journal of Derivatives & Hedge Funds (2012) 18, 223-235. doi:10.1057/jdhf.2012.10

Keywords: commodity futures; active management; long-short strategies;  $\alpha$ ; hedge funds

# INTRODUCTION

Investor interest in commodities markets has exploded over the past decade, as demand from emerging markets such as China and India has driven up prices dramatically. This increased

demand has been paralleled by a growth in new investment vehicles. As Stoll and Whaley (2010) note, before the development of investment instruments in commodities and liquid exchange-traded futures markets, investors were

limited to participating in natural resources markets only via physical investments, which were inconvenient and not particularly attractive. In fact, until the early 2000s, commodities were largely a niche market for institutional and private investors.

The limited commodity investment choices resulted from the fact that commodities were not typically included in traditional investment portfolios. According to Jeanneret et al (2011), the introduction of investable commodity indices and commodity-linked products such as exchange-traded products led to the increased investor interest in commodity investing. These products feature lower entry barriers, reduced complexity and higher liquidity. In addition, academic papers provided empirical evidence of how beneficial commodity investments can be diversifiers of traditional portfolios (see, for example, Jensen et al, 2000; Georgiev, 2001 and Jensen et al, 2002). Other articles highlighted their strong performance in inflation-driven environments (for example, Greer, 2000 and Erb and Harvey, 2006) and during financial crises (for example, Chow et al, 1999) the comparability of their risk/return profiles to stocks over the long term (for example, Gorton and Rouwenhorst, 2006), and their potential to generate excess returns (for example, Akey, 2005).

To bet directly on particular commodities through futures contracts, however, requires excellent market and product knowledge on a continuous basis. Furthermore, there are often substantial minimum investments per single commodity, as well as initial and variation margins. Investors need expensive valuation and risk models and deep expertise in order to determine which commodity to buy or sell, or on which to go short. Therefore, most investors

can decide between active or passive investment vehicles.

Historically, commodity investments in terms of assets under management (AuM) were dominated by passive commodity investments. Such products are generally linked or benchmarked to the performance of a commodity index (for example, Dow Jones UBS (DJUBS), S&P Goldman Sachs Commodity Total Return Index (GSCI)), and they aim to replicate the performance of the index. Investors in passive investment products desire commodity exposure, or the so-called 'commodity  $\beta$ . According to Georgiev (2004), this is because a simple long exposure to natural resources is often less expensive and is in line with most investment restrictions, and thus there is no short-selling or leverage involved. In addition to the standard passive investment products, today there are many passive-enhanced products available as well, including, for example, simple roll yield optimization algorithms. Passive commodity investments are available mainly through structured products and mutual funds, and they tend to carry very low tracking error targets.

Investors have thus begun to seek an additional return driver over the commonplace  $\beta$ , the so-called  $\alpha$ , which is defined as the excess return of a product over its benchmark, adjusted by its  $\beta$  component. The low efficiency of commodity markets makes them more attractive in terms of  $\alpha$  potential than traditional asset classes like stocks or fixed-income products. Investment choices for active commodity products include long-only commodity funds, which aim to outperform the benchmark by means of (i) overor underweighting the commodities in their portfolios relative to the benchmark, (ii) roll yield optimization

techniques, (iii) replacement trades (for example, replacing the West Texas Intermediate (WTI) crude oil contract of the benchmark with Brent) and (iv) investing in commodities that are not part of the benchmark.

Long-only commodity funds are also managed with extremely tight tracking error targets of between 3 and 5 per cent. Long-only commodity investments are volatile, subject to large drawdowns, and have generally exhibited a high correlation to risky assets since the financial crisis (correlation risk). Furthermore, they can be exposed to roll losses (Akey, 2006). In addition to low-tracking error products, investors today can also invest in actively managed absolute return products (which basically implies that these funds do not replicate a benchmark). These products take long and short positions in commodities and related instruments.

An actively managed commodity long-short fund is flexible enough to respond to and take advantage of rapidly changing market conditions. It can also reduce volatility and actively control risk. Consequently, active management can potentially generate  $\alpha$  for commodity investors. However, most long-short commodity funds are unregulated investment vehicles (for example, offshore hedge funds), and hence do not report monthly risk, performance or AuM data. Thus, it can be difficult for investors to compare individual active long-short strategies in the form of consolidated quantitative and qualitative data.

In this article, we focus on this type of active long-short commodity fund, which does not try to replicate a benchmark and hence cannot be easily evaluated relative to its benchmark. Our purpose is to describe the universe of long-short commodity funds and the differences in risk and

return of the various investment choices available to investors. By merging several commercial and private databases, we construct an extensive data set of 683 long-short commodity funds covering the January 2000 – December 2010 observation period. The data set is then divided into three styles: long-short futures, long-short equities and funds of funds.

Our article adds to the existing literature on commodity hedge funds because our calculations are made on the most extensive data set thus far. For example, Akey (2005) uses a data set of 128 funds, and Jeanneret et al (2011) use a 92-fund sample. Because of the size of our sample, we are able to differentiate between three distinct groups of commodity hedge funds. Thus, our results are more granular. Although Jeanneret et al (2011) have already shown that commodity hedge funds yield higher returns and better downside risk control than commodity indices, we show that managers who focus on long-short futures strategies exhibit the highest  $\alpha$ s and Sharpe ratios and the lowest volatility over commodity hedge funds that focus on equities and over funds of commodity hedge funds.

The remainder of this article is structured as follows: The next section describes the three commodity hedge fund styles in more detail. The section after that discusses the data set creation and provides a description of the data set. It also describes our cleansing steps for the sample. The penultimate section presents our empirical results. The final section summarizes our findings and draws conclusions.

# INVESTMENT CHOICES IN LONG-SHORT COMMODITIES

Investments in long-short commodities strategies can be through futures-focused

managers, equities-focused managers or through funds of funds that allocate opportunistically to the other two styles. However, the most common approach to a commodity exposure is through commodity futures.

In comparison with passive long-only index investments, where an expiring commodity contract is rolled into the next available futures contract with the same maturity, active long-short managers must consider circumstances such as timing and the prevailing market environment. In a backwardation market, for example, a manager would not purchase the nearest-dated contract, but rather a longer-maturity one, because it is associated with lower costs. And with the additional technique of going short, a fund manager can generate returns in both rising and falling commodity price environments. With this investment style, funds can take advantage of market inefficiencies such as location spreads, $^{1}$  crack spreads $^{2}$  or time spreads. $^{3}$  Furthermore, they can trade based on price differences between grades (such as soft or hard wheat) or between substitutes (such as platinum and palladium). Long-short commodity funds use either systematic or fundamental techniques in order to analyze a particular commodity and forecast price movements in future commodity markets.

Another common way to actively participate in commodity markets is to buy stocks from companies that are directly or indirectly engaged in the distribution, exploration, production or any other activity associated with commodities. Examples are coffee producers, oil or mining companies, steel producers, power and electricity providers and so on. Commodity equity investors will retain a leverage component as long as rising commodity prices exceed any cost increases experienced by the company in

which the investment is made. Nevertheless, these advantages may also be considered disadvantages, because investors are exposed not only to commodity price risk, but also to idiosyncratic risks such as customer demand, management capability and earnings. And a commodity-based equity investment always bears the systematic risk of the overall stock market (Engelke and Yuen, 2008). Active long-short commodity equities funds seek to achieve capital appreciation through investments in a universe of commodity-related securities, using a combination of proprietary price forecasts and company valuation models.

Funds of hedge funds bundle all the previously mentioned strategies into one vehicle. The most obvious reason to use this type of vehicle is the inherent enhanced diversification. Furthermore, several studies have found that funds of hedge funds can compete with their single fund equivalents with regard to risk/return profile (see, for example, Ang et al, 2008). Critics, however, note that, despite the potential benefits, funds of hedge funds also impose substantial management and performance fees (for example, Brown et al, 2004; Gregoriou et al, 2007). Moreover, empirical evidence shows that funds of hedge funds yield lower Sharpe ratios than single manager funds (for example, Brown and Goetzmann, 2003; Malkiel and Saha, 2005).

# DATA SET

An extensive database has been created to capture the entire commodity hedge fund universe. This database merged several commercial hedge fund database vendors, such as EurekaHedge, Hedgefund.net and Lipper TASS, with several private databases. To obtain a representative and clean data set, our next step is

to use each hedge fund's strategy description to classify it, first as a commodity-focused fund, and second into one of the three primary long-short commodity styles: long-short futures, long-short equities, or funds of funds. Our second step is to cleanse the database rigorously. We included only the following time series in our study:

- The USD share class, for funds that report different currency classes, and  
- Offshore funds, for funds that report both onshore and offshore fund structures.

After the cleansing procedure, our fund universe consisted of 683 active commodity funds (430 live and 253 graveyard).

Because of the voluntary nature of hedge fund performance reporting, hedge fund databases and the indices calculated on them are prone to numerous biases, such as self-selection, backfilling, survivorship and the liquidation bias (Kaiser and Haberfelner, 2011). These biases can overor understate 'true' market performance (see Ackermann et al, 1999).

To overcome the effects of these biases, we take several steps. First, we include both live and dead funds in our data set, and thus we do not believe that survivorship will significantly distort our results. Selection bias should further be mitigated because we include a variety of databases, including private databases. To account for the backfilling bias, we use a procedure based on Fung and Hsieh (2000) that deletes the first 12 months of performance from the data histories. We minimize the impact of the liquidation bias by retrieving the performance of funds that have dropped out of commercial databases, and then making sure they are included in our data set. Hence, our data set includes monthly

performance information about known frauds (for example, Juno Mother Earth), and blow-ups (for example, MotherRock). In aggregate, we observe a substantial overlap in the commodity funds that report to commercial databases, where approximately 72 per cent that reported to one database also reported to the others. However, if we did not include private databases in our data set, our sample size would have been cut nearly in half.

The consecutive data on historical performance and AuM date back to July 1984. Performance is stated on a net basis, including the calculation of all fees and any hurdle rates or high watermarks. As per Schneeweis et al (2006), hedge fund indices must contain at least five index components to be considered representative of the overall strategy. Therefore, we begin our index series in January 2000, when all three indices had at least five index components available. We conduct a comparative statistical analysis covering the 11-year period from January 2000 through December 2010.

The number of index constituents varies over time, in accordance with other hedge fund index construction methodologies, but in contrast with traditional equity and fixed income indices. The maximum number of funds in a given month is 492. As of December 2010, the size of each style sample was: 342 long-short futures (219 live, 123 graveyard), 268 long-short equities (219 live, 49 graveyard) and 73 funds of funds (46 live and 27 graveyard). The change in index value for each month represents the equally weighted median of the monthly rate of return at that time for each index component. We use the median rather than the arithmetic or geometric mean because hedge fund returns exhibit negative skewness and positive excess kurtosis.

Table 1 gives a detailed overview of the average commodity hedge fund investment

Table 1: Descriptive statistics  

<table><tr><td></td><td>Maximum</td><td>Minimum</td><td>Mean</td><td>Median</td><td>SD</td></tr><tr><td colspan="6">Panel A: All funds</td></tr><tr><td>Age of IA (in years)</td><td>211</td><td>1</td><td>12.69</td><td>9</td><td>16.11</td></tr><tr><td>Number of employees in the IA</td><td>11541</td><td>1</td><td>151.22</td><td>11</td><td>763.00</td></tr><tr><td>Firm AuM (in $ million)</td><td>$3480489.00</td><td>$0.15</td><td>$24881.30</td><td>$388.00</td><td>$194213.73</td></tr><tr><td>Number of funds managed by the IA</td><td>674</td><td>1</td><td>11.11</td><td>3</td><td>48.92</td></tr><tr><td>Number of commodity funds managed by the IA</td><td>55</td><td>1</td><td>2.65</td><td>2</td><td>3.59</td></tr><tr><td>AuM in commodity funds (in $ million)</td><td>$30638.00</td><td>$0.15</td><td>$796.22</td><td>$70.50</td><td>$2493.36</td></tr><tr><td>Management fee</td><td>5.00%</td><td>0.25%</td><td>1.68%</td><td>2.00%</td><td>0.47%</td></tr><tr><td>Performance fee</td><td>30.00%</td><td>5.00%</td><td>18.70%</td><td>20.00%</td><td>4.24%</td></tr><tr><td>Redemption fee*</td><td>15.00%</td><td>0.50%</td><td>3.12%</td><td>3.00%</td><td>1.61%</td></tr><tr><td>Notice period (in days)</td><td>180</td><td>0</td><td>38.76</td><td>30</td><td>31.68</td></tr><tr><td>Soft lockup (in months)*</td><td>36</td><td>1</td><td>12.25</td><td>12</td><td>4.14</td></tr><tr><td>Hard lockup (in months)*</td><td>36</td><td>3</td><td>13.32</td><td>12</td><td>7.88</td></tr><tr><td colspan="6">Panel B: Long-short futures</td></tr><tr><td>Age of IA (in years)</td><td>106</td><td>1</td><td>10.37</td><td>8</td><td>9.55</td></tr><tr><td>Number of employees in the IA</td><td>5500</td><td>1</td><td>120.36</td><td>8</td><td>567.29</td></tr><tr><td>Firm AuM (in $ million)</td><td>$1360000.00</td><td>$1.00</td><td>$16813.75</td><td>$180.00</td><td>$121922.57</td></tr><tr><td>Number of funds managed by the IA</td><td>674</td><td>1</td><td>14.05</td><td>3</td><td>67.39</td></tr><tr><td>Number of commodity funds managed by the IA</td><td>55</td><td>1</td><td>2.64</td><td>2</td><td>4.32</td></tr><tr><td>AuM in commodity funds (in $ million)</td><td>$5000.00</td><td>$1.00</td><td>$479.09</td><td>$60.80</td><td>$1032.89</td></tr><tr><td>Management fee</td><td>3.00%</td><td>0.40%</td><td>1.77%</td><td>2.00%</td><td>0.46%</td></tr><tr><td>Performance fee</td><td>30.00%</td><td>5.00%</td><td>19.82%</td><td>20.00%</td><td>3.47%</td></tr><tr><td>Redemption fee*</td><td>15.00%</td><td>0.50%</td><td>3.29%</td><td>3.00%</td><td>1.99%</td></tr><tr><td>Notice period (in days)</td><td>180</td><td>1.00</td><td>33.51</td><td>30.00</td><td>30.36</td></tr><tr><td>Soft lockup (in months)*</td><td>24</td><td>3.00</td><td>12.20</td><td>12.00</td><td>3.67</td></tr><tr><td>Hard lockup (in months)*</td><td>36</td><td>3.00</td><td>13.76</td><td>12.00</td><td>12.55</td></tr></table>

Table 1 continued  

<table><tr><td></td><td>Maximum</td><td>Minimum</td><td>Mean</td><td>Median</td><td>SD</td></tr><tr><td colspan="6">Panel C: Long-short equities</td></tr><tr><td>Age of IA (in years)</td><td>206</td><td>1</td><td>14.43</td><td>11</td><td>18.73</td></tr><tr><td>Number of employees in the IA</td><td>11541</td><td>1</td><td>204.33</td><td>13</td><td>1015.74</td></tr><tr><td>Firm AuM (in $ million)</td><td>$3480489.00</td><td>$0.15</td><td>$39577.34</td><td>$520.00</td><td>$277874.71</td></tr><tr><td>Number of funds managed by the IA</td><td>67</td><td>1</td><td>6.23</td><td>4</td><td>8.72</td></tr><tr><td>Number of commodity funds managed by the IA</td><td>25</td><td>1</td><td>2.95</td><td>2</td><td>2.94</td></tr><tr><td>AuM in commodity funds (in $ million)</td><td>$30638.00</td><td>$0.15</td><td>$1073.56</td><td>$104.60</td><td>$2923.10</td></tr><tr><td>Management fee</td><td>3.00%</td><td>0.40%</td><td>1.63%</td><td>1.50%</td><td>0.43%</td></tr><tr><td>Performance fee</td><td>30.00%</td><td>5.00%</td><td>19.25%</td><td>20.00%</td><td>2.97%</td></tr><tr><td>Redemption fee*</td><td>8.00%</td><td>0.50%</td><td>3.04%</td><td>3.00%</td><td>1.35%</td></tr><tr><td>Notice period (in days)</td><td>180</td><td>1</td><td>46.31</td><td>30</td><td>29.36</td></tr><tr><td>Soft lockup (in months)*</td><td>36</td><td>1</td><td>12.56</td><td>12</td><td>4.48</td></tr><tr><td>Hard lockup (in months)*</td><td>36</td><td>6</td><td>13.33</td><td>12</td><td>6.53</td></tr><tr><td colspan="6">Panel D: Fund of funds</td></tr><tr><td>Age of IA (in years)</td><td>211</td><td>2</td><td>16.99</td><td>11</td><td>25.70</td></tr><tr><td>Number of employees in the IA</td><td>1839</td><td>3</td><td>91.98</td><td>22</td><td>264.74</td></tr><tr><td>Firm AuM (in $ million)</td><td>$286989.40</td><td>$1.00</td><td>$9577.14</td><td>$1200.00</td><td>$35440.51</td></tr><tr><td>Number of funds managed by the IA</td><td>193</td><td>1</td><td>15.91</td><td>7</td><td>33.53</td></tr><tr><td>Number of commodity funds managed by the IA</td><td>5</td><td>1</td><td>1.63</td><td>1</td><td>1.00</td></tr><tr><td>AuM in commodity funds (in $ million)</td><td>$26100.00</td><td>$1.00</td><td>$1206.12</td><td>$50.00</td><td>$4473.26</td></tr><tr><td>Management fee</td><td>5.00%</td><td>0.25%</td><td>1.44%</td><td>1.50%</td><td>0.56%</td></tr><tr><td>Performance fee</td><td>20.00%</td><td>5.00%</td><td>11.17%</td><td>10.00%</td><td>4.32%</td></tr><tr><td>Redemption fee*</td><td>5.55%</td><td>2.00%</td><td>2.93%</td><td>2.00%</td><td>1.34%</td></tr><tr><td>Notice period (in days)</td><td>120</td><td>5</td><td>56.20</td><td>45</td><td>31.08</td></tr><tr><td>Soft lockup (in months)*</td><td>12</td><td>3</td><td>10.09</td><td>12</td><td>3.36</td></tr><tr><td>Hard lockup (in months)*</td><td>12</td><td>12</td><td>12.00</td><td>12</td><td>0.00</td></tr></table>

$\star$  If applicable.  
IA=investment advisor, AuM=assets under management, Max=maximum, Min=minimum, SD=standard deviation.

advisor by age, size, AuM and fee structure.4 Commodity hedge funds were actually rare before 2000, and thus most investment advisors did not focus on that asset class. Nevertheless, the average length of experience of nearly 10 years is quite high.

Panel A in Table 1 shows the median of total funds managed by investment advisor and the number of commodity funds. We can infer that advisors within the commodity hedge fund section concentrate predominantly on commodities instead of advising or managing additional hedge funds with a different investment focus.

Surprisingly, however, we find the opposite picture for AuM. Owing to the very large (outlier) maximum AuM, the simple average is not meaningful. The median is more realistic, and implies that approximately 18 per cent of the total AuM of an investment advisor is dedicated to commodity hedge funds. This means that other hedge funds managed by the advisor will be substantially larger than those managed within the commodity strategy.

The average commodity hedge fund charges a 2 per cent management fee and a supplementary 20 per cent performance fee, which is subject to a high watermark in 80 per cent of all cases. A hurdle rate is applied in about 15 per cent of cases. Furthermore, roughly 28 per cent of commodity hedge funds are subject to an additional 3 per cent redemption fee, mostly because of soft lockup agreements, which usually last for up to 12 months and require a 30-day redemption notice. Twelve per cent of commodity hedge funds are subject to a hard lockup of approximately 12 months.

For redemption frequency, besides soft or hard lockups, most commodity hedge funds tend to

favor a monthly arrangement, but around 28 per cent follow quarterly redemptions.

When comparing long-short futures funds with the entire universe, we note that the investment advisory firms within this universe (Panel B of Table 1) tend to be approximately 1 year younger than the average commodity hedge fund (Panel A of Table 1), and up to 3 years younger than long-short equities advisors (Panel C of Table 1). We find a similar picture for total AuM, with about US\(200 million less in capital allocated, on average, in the long-short futures universe than for the median of the entire commodity hedge fund universe.

The long-short equities investment advisors have an average track record of 11 years, which is 2 years longer than other investment advisors (and 3 years longer than long-short futures). The median number of people employed by advisors is 13, but the real average is heavily skewed because of a high maximum. Furthermore, the high average amount of $520 million of total AuM is quite striking compared with the universe. Accordingly, the number of total funds managed by long-short equities advisors is higher than average. The average AuM in commodities is ~50 per cent higher than the average of all funds, and it is over 70 per cent higher than that for the long-short futures strategy.

In contrast to the results for the total universe, only the management fee for long-short equities funds is less on average, by about 0.5 per cent (2 per cent for all funds). Nevertheless, the ratio of long-short equities funds imposing redemption fees and lockup periods is substantially higher (18 per cent higher) than in long-short futures. Thirty-nine per cent have implemented a redemption fee, 34 per cent include a soft lockup and 22 per cent also require a hard lockup. The

use of a high watermark, however, is in line with the average, with just 9 per cent using a hurdle rate (15 per cent for all commodity hedge funds).

Although the age of fund of funds investment advisors (Panel D of Table 1) is roughly in line with the other styles, the number of employees tends to be considerably higher. Total AuM also exceeds the results for the other styles. Obviously, the fee structure in this style is lower than that associated with the other styles. Lockup periods are less likely to be instituted within funds of commodity hedge funds, but their redemption frequency and the corresponding notice period is somewhat higher than for single managers.

The funds' strategies have different options within the commodity sector as a whole, either through specialization in particular commodity subsectors, or through a diversified approach (see Table 2). There is an obvious trend toward a more diversified commodity allocation, which accounts for approximately 50 per cent of the funds we evaluate here. Owing to its size and liquidity, the energy market represents the second largest focus of commodity hedge funds. Metals and agriculture are equally distributed, but each account for only about 10 per cent of all commodity hedge funds. Furthermore, few funds

Table 2: Distribution of sector focus  

<table><tr><td></td><td>All funds</td><td>Long-short futures</td><td>Long-short equities</td><td>Funds of funds</td></tr><tr><td>Energy</td><td>192</td><td>65</td><td>118</td><td>9</td></tr><tr><td>Metals</td><td>64</td><td>36</td><td>28</td><td>0</td></tr><tr><td>Agriculture</td><td>66</td><td>52</td><td>10</td><td>4</td></tr><tr><td>Diversified</td><td>341</td><td>183</td><td>98</td><td>60</td></tr><tr><td>Other</td><td>27</td><td>10</td><td>17</td><td>0</td></tr></table>

concentrate on other sectors such as shipping or carbon trading. Most of the funds that focus on equities strategies concentrate on energy markets and do not follow the diversified approach.

We use three benchmarks here, and we compare their performance with the performance of the three long-short commodity styles. Our observation period is January 2000 - December 2010, and we use the DJUBS Commodity Total Return Index and the S&P GSCI as proxies for the commodity market. We also evaluate the long-short equities strategy against a Commodities Equity Index (CEI) comprising 50 per cent MSCI World Energy and 50 per cent MSCI Metals and Mining stock indices.

To ensure the comparability of the three longshort commodity styles with the traditional benchmarks, we construct them as an index. Obviously, there are different performance data available for each fund, because of differences in, for example, inception dates or liquidation dates. All components are equally weighted. We use the monthly median net performance of each strategy to create the performance data for the corresponding style. This implies a monthly rebalancing of all the strategy's components.

# EMPIRICAL RESULTS

All 683 commodity hedge funds are allocated to one of the three styles. In order to compare the three strategies with each other and with commodity benchmarks, we must first use the median monthly return (on a net of fee basis) to replicate the performance of the particular strategy. When looking solely at average yearly returns, long-short futures and funds of hedge funds seem to be the least attractive investment strategies (see Table 3). Furthermore, during the bullish 2009 market, they achieved poor results

Table 3: Empirical results  

<table><tr><td>Strategy</td><td>Long-short futures</td><td>Long-short equities</td><td>Funds of hedge funds</td></tr><tr><td colspan="4">Risk/performance measures</td></tr><tr><td>RoR (p.a.)</td><td>10.58%</td><td>12.40%</td><td>10.28%</td></tr><tr><td>Return (2007)</td><td>13.84%</td><td>16.87%</td><td>10.81%</td></tr><tr><td>Return (2008)</td><td>7.22%</td><td>-29.64%</td><td>-5.32%</td></tr><tr><td>Return (2009)</td><td>4.74%</td><td>23.79%</td><td>4.81%</td></tr><tr><td>Return (2010)</td><td>10.48%</td><td>10.47%</td><td>5.14%</td></tr><tr><td>Percentage of positive days</td><td>70.45%</td><td>68.18%</td><td>68.94%</td></tr><tr><td>Average Gain (p.m.)</td><td>1.51%</td><td>2.74%</td><td>1.68%</td></tr><tr><td>Average Loss (p.m.)</td><td>-0.71%</td><td>-2.60%</td><td>-1.07%</td></tr><tr><td>Volatility</td><td>5.34%</td><td>11.88%</td><td>6.12%</td></tr><tr><td>Maximum drawdown</td><td>-5.32%</td><td>-33.04%</td><td>-11.37%</td></tr><tr><td>VaR (99%; 1 m)</td><td>2.73%</td><td>6.94%</td><td>3.28%</td></tr><tr><td>3 M US LIBOR Average (p.a.)</td><td>2.98%</td><td>2.98%</td><td>2.98%</td></tr><tr><td>Sharpe (3 M LIB)</td><td>1.425</td><td>0.793</td><td>1.192</td></tr><tr><td>Treynor Ratio (GSCI)</td><td>0.573</td><td>0.313</td><td>0.627</td></tr><tr><td>Treynor Ratio (DJ/UBS)</td><td>0.346</td><td>0.193</td><td>0.355</td></tr><tr><td>Treynor Ratio (Commodity Equity Index)</td><td>0.665</td><td>0.219</td><td>0.475</td></tr><tr><td colspan="4">Independent regression</td></tr><tr><td>R2(GSCI)</td><td>0.388</td><td>0.403</td><td>0.227</td></tr><tr><td>R2(DJUBS)</td><td>0.521</td><td>0.517</td><td>0.347</td></tr><tr><td>R2(Commodity Equity Index)</td><td>0.241</td><td>0.687</td><td>0.330</td></tr><tr><td>α (GSCI)</td><td>0.76%</td><td>0.83%</td><td>0.75%</td></tr><tr><td>α (DJUBS)</td><td>0.68%</td><td>0.66%</td><td>0.68%</td></tr><tr><td>α (Commodity Equity Index)</td><td>0.74%</td><td>0.60%</td><td>0.68%</td></tr><tr><td>β (GSCI)</td><td>0.133</td><td>0.301</td><td>0.116</td></tr><tr><td>β (DJUBS)</td><td>0.220</td><td>0.487</td><td>0.206</td></tr><tr><td>β (Commodity Equity Index)</td><td>0.114</td><td>0.430</td><td>0.154</td></tr><tr><td colspan="4">Descriptive statistics</td></tr><tr><td>Mean (p.m.)</td><td>0.85%</td><td>1.04%</td><td>0.83%</td></tr><tr><td>Median (p.m.)</td><td>0.51%</td><td>0.92%</td><td>0.72%</td></tr><tr><td>Maximum (p.m.)</td><td>5.19%</td><td>9.68%</td><td>6.95%</td></tr><tr><td>Minimum (p.m.)</td><td>-3.39%</td><td>-13.53%</td><td>-5.21%</td></tr><tr><td>Skewness</td><td>0.49</td><td>-0.83</td><td>0.02</td></tr><tr><td>Kurtosis</td><td>0.48</td><td>3.21</td><td>1.56</td></tr></table>

compared with other strategies that yielded up to five times higher results. Nevertheless, they account for the lowest volatility, the best gain and loss ratio, and the best Sharpe and Treynor ratios.

This ambiguity of the risk and return figures means that the determination of a profound investment decision is not particularly straightforward. Hence, we investigate the  $\alpha$  against three commodity market benchmarks. For the  $\alpha$  over the GSCI, long-short equities yielded the highest monthly outperformance, followed by long-short futures. Even though the GSCI is approximately 70 per cent allocated to energy stocks, and long-short equities have a major focus on energy as well, the strategy has a very low  $\beta$  to the GSCI.

The most diversified benchmark is the DJUBS Commodity Index, which has been outperformed by 0.68 per cent on a monthly basis by funds of hedge funds and long-short futures. Both strategies concentrate on a diversified investment allocation. When measuring the  $\alpha$  against the CEI, long-short futures is again the most attractive strategy, exceeding the benchmark by 0.74 per cent on a monthly basis.

Examining the major performance figures more closely, we note that long-short futures are ahead of the other strategies. They account for the highest  $\alpha$ s against two out of the three benchmarks. They also have the lowest volatility, the highest number of days of positive performance, the smallest value at risk, positive skewness and a low kurtosis.

Another side effect of this analysis is the comparison between single hedge funds and funds of hedge funds. The results imply that single funds should be preferred over funds of funds from a statistical viewpoint, if we do not

consider fund of funds advantages such as manager diversification, monitoring and so on.

With regard to all the risk and performance figures, we believe that potential commodity investors who are seeking investments that will outperform comparable benchmarks should consider long-short futures commodity funds.

# CONCLUSIONS

Our purpose here was to describe the universe of commodity hedge funds and to identify the style that generates the highest  $\alpha$  compared with a representative benchmark of the commodity universe. We thus first constructed an extensive database of 683 commodity hedge funds. We then allocated each fund to one of three styles: long-short futures, long-short equities or funds of funds. We found that most active managers in the commodities space follow a diversified approach that basically covers all commodity sectors. Capital is deployed rather opportunistically. The second largest group of funds focuses on the energy sector. Only a small number of funds focus on agriculture, metals or other sectors such as freight derivatives or carbon trading.

Overall, we find that all active commodity styles yield a positive  $\alpha$  against commodity benchmarks. Although long-short futures yields the second lowest rate of return over the observation period, it also yields the highest  $\alpha$  and the lowest  $\beta$  against the DJUBS commodity index and the self-constructed commodity equity index (CEI), which makes it the most attractive. However, the long-short futures strategy also charges the highest management and performance fees (2 per cent/20 per cent) compared with the other strategies.

The 30-day average redemption policy of long-short futures funds is a reflection of the high liquidity of the markets traded by those managers, and is more advantageous than long-short equities or funds of funds.<sup>6</sup> Furthermore, long-short futures managers exhibit the highest Sharpe ratios and the lowest volatility over the other styles. It is also the only style that yielded positive performance in 2008. However, long-short futures advisory firms are on average younger and smaller than long-short equities firms, and they have shorter track records and lower levels of AuM. In addition, analyzing long-short futures managers is more complex than for the other commodity hedge fund styles, because of the leverage used by the funds. The main leverage metric used by commodity hedge funds is the margin to equity, which depends on the type of commodities traded and the fund's strategy focus (relative value versus directional). Thus, the margin to equity numbers shown to investors can substantially underestimate the gross leverage used by these funds.

Nevertheless, we find that long-short commodity futures funds are the best choice to achieve high  $\alpha$ s. In addition, the return differences between long-short futures and funds of funds are rather minimal. Thus, funds of funds focused on long-short commodity strategies appear to justify their additional fee levels through either superior fund selection, or style and strategy allocations better than multi-strategy funds of funds.

# ACKNOWLEDGEMENTS

The authors thank Greg N. Gregoriou and Florian Haberfelner for helpful comments on earlier versions of this article. Any remaining errors are those of the authors. The views and

opinions presented in this article are not necessarily those of Barclays Capital or Robus Capital Management Limited.

# NOTES

1. Location spreads are the price differences between the same commodities on different exchanges.  
2. Crack spreads refer to buying a crude oil futures contract and then offsetting the position by selling gasoline and heating oil futures, because both are output products of actual crude oil.  
3. Time spreads refer to buying and selling the same commodity futures contract at different maturities.  
4. To conserve space, we only report the most important results in Table 1. Additional empirical results like distribution of various commodity hedge fund characteristics (for example, high watermarks, hurdle rates and redemption frequency) are only reported in the text.  
5. Due to heteroscedasticity among the time series we perform three single-factor regressions instead of one multi-factor regression.  
6. However, monthly dealings are still less liquid than passive commodity investment products, which normally allow daily dealings.

# REFERENCES

Ackermann, C., McEnally, R. and Ravenscraft, D. (1999) The performance of hedge funds: Risk, return, and incentives. Journal of Finance 54(3): 833-874.  
Akey, R.P. (2005) Commodities: A case for active management. Journal of Alternative Investments 8(2): 8-29.  
Akey, R.P. (2006) Alpha, beta and commodities: Can a commodities investment be both a high risk-adjusted return source, and a portfolio hedge? Journal of Wealth Management 9(2): 63-84.

Ang, A., Rhodes-Kropf, M. and Zhao, R. (2008) Do funds-of-funds deserve their fees-on-fees. Journal of Investment Management 6(4): 34-58.  
Brown, S.J. and Goetzmann, W.N. (2003) Hedge funds with style. Journal of Portfolio Management 29(2): 101-112.  
Brown, S.J., Goetzmann, W.N. and Liang, B. (2004) Fees on fees in funds of funds. Journal of Investment Management 2(4): 39-56.  
Chow, G., Jacquier, E., Kitzman, M. and Lowry, K. (1999) Optimal portfolios in good times and bad. Financial Analysts Journal 55(3): 65-73.  
Engelke, L. and Yuen, J.C. (2008) Types of commodity investments. In: FJ. Fabozzi, R. Füss and D.G. Kaiser (eds.) The Handbook of Commodity Investing. Hoboken, NJ: Wiley, pp. 549-569.  
Erb, C.B. and Harvey, C.R. (2006) The tactical and strategic value of commodity futures. *Financial Analysts Journal* 62(2): 69-97.  
Fung, W. and Hsieh, D.A. (2000) Performance characteristics of hedge funds and commodity funds: Natural versus spurious biases. Journal of Financial and Quantitative Analysis 35(3): 291-307.  
Georgiev, G. (2001) Benefits of commodity investment. Journal of Alternative Investments 4(1): 40-48.  
Georgiev, G. (2004) Active long-only investment in energy futures. Journal of Alternative Investments 7(2): 32-43.  
Gorton, G. and Rouwenhorst, K.G. (2006) Facts and fantasies about commodity futures. *Financial Analysts Journal* 62(6): 47-68.

Greer, R.J. (2000) The nature of commodity index returns. Journal of Alternative Investments 3(1): 45-52.  
Gregoriou, G.N., Hübner, G., Papageorgiou, N. and Rouah, F.D. (2007) Funds of funds versus simple portfolios of hedge funds: A comparative study of persistence in performance. Journal of Derivatives & Hedge Funds 13(3): 88-106.  
Jeanneret, P., Monnin, P. and Scholz, S. (2011) Protection potential of commodity hedge funds. Journal of Alternative Investments 13(3): 43-52.  
Jensen, G.R., Johnson, R.R. and Mercer, J.M. (2000) Efficient use of commodity futures in diversified portfolio. Journal of Futures Markets 20(5): 489-506.  
Jensen, G.R., Johnson, R.R. and Mercer, J.M. (2002) Tactical asset allocation and commodity futures. Journal of Portfolio Management 28(4): 100-111.  
Kaiser, D. and Haberfelner, F. (2011) Hedge fund biases after the financial crisis. Managerial Finance 38(1): 27-43.  
Malkiel, B.G. and Saha, A. (2005) Hedge funds: Risk and return. Financial Analysts Journal 61(6): 80-88.  
Schneeweis, T., Spurgin, R. and Waksman, S. (2006) Early reporting effects on hedge fund and CTA returns. Journal of Alternative Investments 9(2): 30-45.  
Stoll, H.R. and Whaley, R.E. (2010) Commodity index investing and commodity futures prices. Journal of Applied Finance 20(1): 7-46.
---
title: "Quantifying Credit Risk I: Default Prediction"
parent_directory: "Week 3"
formatted: "2025-12-21 12:45:00 PM"
formatter_model: "kimi-k2-turbo"
cli-tool: "claude-code"
primary_tags:
  - "credit risk measurement"
  - "merton model implementation"
  - "default prediction models"
  - "kmv edf methodology"
secondary_tags:
  - "contingent claims valuation"
  - "equity option pricing"
  - "corporate debt valuation"
  - "risk neutral probabilities"
  - "distance to default"
  - "expected default frequency"
  - "agency debt ratings"
  - "intracohort analysis"
  - "power curve testing"
  - "rating migration matrices"
  - "structural credit models"
  - "empirical default studies"
cssclasses: academia
---

# Quantifying Credit Risk I: Default Prediction

Stephen Kealhofer

Until the 1990s, corporate credit analysis was viewed as an art rather than a science because analysts lacked a way to adequately quantify absolute levels of default risk. In the past decade, however, a revolution in credit-risk measurement has taken place. The evidence from this research presents a compelling case that the conceptual approach pioneered by Fischer Black, Robert Merton, and Myron Scholes provides a powerful practical basis for measuring credit risk.

One of the major frontiers in modern finance is the quantification of credit risk. More than 25 years ago, Black and Scholes (1973) proposed that one could view the equity of a company as a call option. This insight provided a coherent framework for the objective measurement of credit risk. As subsequently elaborated by Merton (1973, 1974), Black and Cox (1976), and Ingersoll (1977a), this approach has come to be called "the Merton model."

Initially, empirical research to implement the Merton model (notably, Jones, Mason, and Rosenfeld 1984 and Ogden 1987) produced discouraging results, and even today, researchers continue to reproduce the original negative results (e.g., Jarrow and Van Deventer 1999). In 1984, however, Vasicek took a novel approach to implementation of the Merton model that has proven to have considerable success in measuring credit risk. This version of the Merton model has been extended by KMV Corporation to become a de facto standard for default-risk measurement in the world of credit risk.

This first of two companion articles on the empirical research on the KMV model in the past decade explains the differences in implementation between the KMV and Merton models and reviews studies comparing the performance of the KMV model against agency debt ratings in predicting default.2 Part II will present results on the use of the model to value corporate debt relative to alternative approaches.

The thesis of the articles is that the Black-Scholes-Merton approach, appropriately executed, represents the long-sought quantification of credit risk. It is an objective cause-and-effect model that provides analytical insight into corporate behavior. Driven by information in a company's public equity prices, it produces empirical estimates of default probability that outperform well-accepted public benchmarks, such as agency debt ratings, in predicting default. Finally, in contrast to earlier findings, this study finds that the Black-Scholes-Merton approach provides a better empirical fit to the value of corporate bonds than more conventional approaches that use agency bond ratings.

# The KMV and Merton Models

The approach Black and Scholes developed can be illustrated in a simplified case. Suppose a company has a single asset consisting of 1 million shares of Microsoft stock. Furthermore, it has a single fixed liability—a one-year discount note with a par amount of \$100 million—and is otherwise funded by equity. In one year's time, the market value of the company's business will either be sufficient to pay off the note or it will not, in which case the company will default. One can observe that the equity of the company is logically equivalent to 1 million call options on Microsoft stock, each with an exercise price of \$100 and a maturity of one year.

The implication of this illustration is that the equity of a company is like a call option on the company's underlying assets. The value of the equity thus depends on, among other things, the market value of the company's assets, their volatility, and the payment terms of the liabilities. Implicit in the value of the option is a measure of the probability of the option being exercised; for equity, it is the probability of not defaulting on the company's liability.<sup>3</sup>

Figure 1 provides an illustration of these concepts. The horizontal axis represents time, beginning with the current period ("Today") and looking into the future. The vertical axis depicts the market value of the company's assets. As of the current period, the assets have a single, determinable value, as shown on the vertical axis, but one year from now, a range of asset values is possible, and their frequency distribution (shown in Figure 1 on its side) gives the likelihood of various asset values one year in the future. The most likely outcomes are nearest to the starting value, with much larger or smaller values less likely. The mean is shown by the dashed line. The likelihood of extreme outcomes depends on the volatility of the assets—the more volatile, the greater the probability of extreme outcomes. The dotted horizontal line shows the par amount of the liability due in one year. If the company's asset value in one year is less than the amount of the liability, the company will default. Note that this decision is an economic decision: The equity owners could put additional money into the company, but that decision would be irrational because the money would go to pay creditors; if the owners defaulted, they would not be required to put in additional money and they could use this money for their own benefit rather than giving it to the creditors. The probability of default is thus given by the area under the frequency distribution below the default point, which represents the likelihood of the market value of the company's assets in one year being less than what the company owes. It is immediately obvious that the probability of default will increase if the company's market value of assets today decreases, if the amount of liabilities

increases, or if the volatility of the assets' market value increases. These three variables are the main determinants of the company's default probability.

What Black, Scholes, and Merton actually proposed is a general framework for valuing contingent claims. There is no single Merton model; indeed, the KMV model is largely a variant of Merton models. The KMV model differs from the standard variants in some significant ways, however, and it also includes a scheme for empirical default-probability measurement that lies outside the standard approach. To appreciate these differences, one must begin with the canonical Merton model.

The classic exposition of the Merton model is Merton (1974). This model has the following characteristics:

- The company has a single debt liability, has equity, and has no other obligations.  
- The liability promises a continuous fixed coupon flow and has an infinite maturity.  
- The company makes no other cash payouts (e.g., equity dividends).

Under the assumption that the market value of the company's assets evolves as a lognormal process, Merton showed that this model can be solved for a closed-form solution for the value of the company's debt. The aim of the model, and much

subsequent work based on this model, is to obtain a valuation equation for the company's debt.

The KMV model, building on previous work by Black and Cox and by Ingersoll (1977a) begins with a somewhat more general characterization of the company's capital structure. The most important distinction between the models, however, is the KMV model's primary focus on the probability of default of the company as a whole, rather than valuation of the debt. The KMV model has the following characteristics:4

- The company may have, in addition to common equity and possibly preferred stock, any number of debt and nondebt fixed liabilities.  
- The company may have warrants, convertible debt, and/or convertible preferred stock.  
- Obligations may be short term, in which case they are treated as demandable by creditors, or long term, in which case they are treated as perpetuities.  
- Any and all classes of liability, including equity, may make fixed cash payouts.  
- If the market value of the company's assets falls below a certain value (the default point), the company will default on its obligations; this default point depends on the nature and extent of the company's fixed obligations.  
- Default is a company-wide event, not an obligation-specific event.

Whereas the objective in the Merton model is the valuation of the company's debt based on the company's asset value and volatility, the focus in the KMV model is on the relationship between the company's equity characteristics and its asset characteristics. Given the asset characteristics (i.e., value and volatility) and given the company's default point, one can use the KMV model to immediately calculate a simple, robust measure of the company's default risk—the number of standard deviation moves required to bring the company to the default point within a specified time horizon.[5]

Distance to default,  $DD(h)$ , or the number of standard deviations to the default point by horizon  $h$ , is an ordinal measure of the company's default risk. As such, it provides a simple and robust measure of default risk. Mathematically, it is calculated as

$$
DD(h) = \frac{\ln(A) - \ln(DPT) + (\mu_A - 1/2 \sigma_A^2) h}{\sigma_A \sqrt{h}}, \tag{1}
$$

where

$A$  = current market value of the company's assets

$DPT =$  the company's default point

$\mu_{A} =$  expected market return to the assets per unit of time

$\sigma_{A} =$  volatility of the market value of the company's assets per unit of time

From a certain standpoint, these model differences are not significant. In terms of practical implementation, however, they are critical. Researchers using the Merton model to investigate the pricing of corporate debt obtained poor results. Research based on the distance to default as the measure of default risk has yielded excellent results.

Why focus on default-risk measurement rather than debt valuation? The answer is that debt valuation should implicitly contain default-risk measurement. Thus, if the default-risk measurement is verified as correct, the subsequent debt valuation should also be correct. Because earlier efforts at valuation had failed, a focus on default-risk measurement made sense because it could be independently tested. Any insights garnered from that testing could then be used to diagnose and, potentially, resolve the valuation problems.

The KMV model focus on default-risk measurement leads to another important aspect of the model. As noted previously, the distance-to-default measure is an ordinal measure. For valuation purposes, however, one needs an absolute measure, an explicit probability of default. To date, other researchers have obtained default probabilities by using the assumed lognormal asset-value distribution of the Merton approach.

The assumption of log-normality cannot be evaluated without determining the actual default experience of a large, well-defined population of companies. KMV has been tracking the default experience of all publicly traded companies in the United States since 1973. These data made possible a comparison of the default probabilities calculated from the lognormal distribution with actual realized default rates. This comparison established that small but important differences exist between the theoretical and actual default rates. For instance, under the normality assumption, any company more than about four standard deviations from its default point would have essentially zero probability of default. In actuality, the default probability for such companies is meaningfully higher, about 0.5 percent. These small numeric deviations in tail probabilities between the normal distribution and the empirical distribution translate into economically significant differences in terms of default risk. For instance, a company that is four standard deviations from the default point as measured by the normal density would be better than AAA in quality, whereas with an actual 0.5 percent default probability, it would not even be investment grade.<sup>8</sup>

With the use of the KMV default database, we found that we could measure the empirical distribution with sufficient accuracy that the empirical probabilities could be substituted for the theoretical probabilities. This measurement relies on the distance to default as a "sufficient statistic" for the default risk, so all the default data for companies with similar  $DDs$  can be pooled. Put differently, the differences between individual companies are expected to be reflected in their asset values, their volatilities, and their capital structures, all of which are accounted for in their  $DDs$ . The estimation need not be performed on separate subsamples—for instance, by industry or size. Where feasible, results for subsamples have been compared with the overall pooled results, and no statistically significant differences have been observed.[9]

The result of this process is the KMV EDF $^{\text{TM}}$  (expected default frequency) credit measure. The EDF is the probability of default within a given time period. It is a monotone function of the distance to default, so it preserves the ordinal properties of the  $DD$  measure while providing a cardinal measure of default probability.

# KMV Model Default-Predictive Power

Two types of tests on the predictive power of the Merton approach (as implemented in the KMV model) have been carried out. The first type, "power tests," characterizes the relative ability of a default-risk measure to correctly identify companies that subsequently default versus incorrectly identifying companies as being likely defaulters that do not default. The second type of test, "intra-cohort analysis," provides a method for evaluating whether the differences between two measures are the result of additional information or are simply noise.

Power Tests. Default is a binary event; it either occurs or it does not. Most measures of default risk—for instance, agency debt ratings—are indexes that indicate relative likelihood of default. One can translate ordinal measures, such as indexes, into binary choices for purposes of testing by interpreting them as an acceptance/rejection criterion. To do so, one determines a cutoff value,  $v$ , and accepts as "good" all companies with an index value above  $v$ .<sup>10</sup>

Given a cutoff value  $v$ , two types of errors can be made. A Type I error is identifying a company as good (because it has a value above the cutoff) but

it subsequently defaults. A Type II error is identifying a company as bad (because it has a value at or below the cutoff) but it subsequently does not default.

Three aspects of testing default-risk measures deserve special attention. They concern arbitrary metrics, error trade-off, and sample dependence.

- Arbitrary metrics. Almost by definition, different default-risk measures are based on different metrics. Thus, cutoff values are unrelated from one metric to another. Comparing different indexes at arbitrary cutoff values is generally meaningless.  
- Error trade-off. The levels of Type I and Type II errors are related to each other and to the level of the cutoff. Using a very high cutoff minimizes Type I error, $t1$, but maximizes Type II error, $t2$. Thus,

$t1(v)$ is decreasing in $v$;

$t2(v)$ is increasing in $v$

- Sample dependence. The levels of error depend on the particular sample tested. In general, one cannot compare errors from one sample with errors from another sample. For instance, one sample may consist of the larger companies or the companies with longer histories. Differences of this type almost invariably translate into different average default rates and different levels of error.

These three observations have a number of implications. For instance, because of error tradeoff and sample dependence, stating the amount of Type I error in isolation, as in "our internal risk ratings are 99 percent accurate," is meaningless. If the underlying sample had only a 1 percent default rate, then a measure that passed the entire sample as good would be 99 percent accurate and also have zero Type II errors!

A less obvious but equally fallacious result occurs when default-risk measures are tested on different samples but the results are reported as comparable. For instance, suppose an analyst tests two models on the same sample of companies; one model calls for three years of financial data, and the other, for only the current financial data. Because some companies will drop out of the database in a three-year period, fewer companies will have three years of financial data. The data for these survivors will be somewhat less volatile, on average, and the sample will have a lower average default rate. Rather than testing each model on the subset of companies with data available for that particular model, one must test the two models on exactly the same set of companies—in this case, the subset of

companies with both historical and current data available.

The problem of arbitrary metrics can be overcome by comparing the Type I error rates of the models for which the cutoffs have been set to produce the same levels of Type II error. (Equivalently, one could compare Type II errors holding Type I errors constant.) Because, in practice, one is interested only in errors, not arbitrary cutoff values, the relevant issue is how much error of one type exists for a given amount of the other type of error.

Mathematically, the "power curve" for index $i$, $p_i(x)$, is graphed as

$$
p_i(x) = 1 - t1_i[t2_i^{-1}(x)] \tag{2}
$$

that is, the percentage of defaults forecasted correctly given the percentage of nondefaults forecasted incorrectly  $(t2_{i}^{-1}$  denotes the inverse of function  $t2_{i})$

Power curves for different default predictors can be compared with each other, which leads to the following definitions:

One measure is more powerful than another at $x$ if it produces less Type I error than the other when both produce Type II errors equal to $x$;

$$
p_i(x) > p_j(x). \tag{3a}
$$

One measure is uniformly more powerful than another if it is more powerful for all admissible levels of Type II error;

$$
p_i(x) \geq p_j(x) \text{ for all values of } x \tag{3b}
$$

and

$$
p_i(x) > p_j(x) \text{ for some } x. \tag{3c}
$$

The purpose of the power curve is to fully characterize both types of errors that a default-prediction model makes—namely, failing to predict a company that does default and predicting a default that does not occur. One economic interpretation of the power curve can be understood by thinking about the cutoff value as representing the value a company must have to be approved for a loan. A uniformly more powerful measure is the one that results in a lower default rate for approved loans for any given refusal rate.

Another important economic interpretation is that a uniformly more powerful predictor of default results is one that results in more accurate predicted default rates. Consider the following example of two measures compared at any given level of Type II error, say, 20 percent. Assume that the first measure rejects 60 percent of the defaults at that cutoff and the second measure rejects 70 percent. For the first measure, the default rate of the rejected group is 60 percent of the total number of

subsequent defaults divided by 20 percent of the total number of subsequent nondefaults. For the second measure, it is 70 percent of the total number of subsequent defaults divided by 20 percent of the total number of subsequent nondefaults. Because the total number of subsequent defaults and non-defaults is the same for both measures by construction, the second measure, the more powerful one, produces a higher default rate in the rejected group. It follows that it must produce a lower default rate in the "accepted" group.

In other words, a uniformly more powerful measure results in a greater range of variation in predicted default rates across the population. For example, imagine a very poor measure that has no predictive power. Regardless of the cutoff value used, it will always predict the same default rate—namely, the population average. In contrast, a perfect measure will predict a 100 percent default rate for the companies that subsequently default and a 0 percent default rate for the rest. The poor measure has no cross-sectional variation in predicted default rate; the perfect measure has maximal cross-sectional variation—0 to 100 percent.

Why is having more cross-sectional variation in predicted default rates good? For most applications, the issue is not setting a cutoff value for acceptance but, rather, valuation and pricing. For any group of companies that has been determined to have the same default rate by the less powerful measure, the more powerful measure can actually determine differences between their predicted default rates. In other words, one can determine price or value more accurately by using the more powerful measure. It "sees" differences in future default rates that are invisible to the less powerful measure.

Empirical results of power tests. As noted, only relative default-predictive power can be determined because absolute default-predictive power is sample dependent. In evaluating the default-predictive power of the KMV model, a natural point of comparison is agency debt ratings. Debtrating agencies, such as Standard & Poor's, Fitch IBCA, and Moody's, provide ordinal rankings of companies that embody their respective estimates of default probability.[11]

Figure 2 shows power curves based on all identified defaults of nonfinancial companies with public debt ratings from 1979 to 1990. (The power curve values are indicated by the tops of the bars). To be included, the company had to have, as well as an expected default frequency, a rating 12 months prior to the event of default. An event of default was defined as a failure to pay any scheduled liability on time because of financial condition

Figure 2. S&P versus KMV EDF, 1979-90  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/ef6af2b3-647b-421a-ac59-6eaab1cc3df4/aa85a4f5af89fea2f2f8ffc381dd7405ebf82404acf8ceab0b950062e2088640.jpg)  
Source: KMV database.

or an exchange of securities in which the new securities exacted a meaningfully reduced claim (a "distressed exchange"). The defaults were generally but not invariably reflected in the agency debt ratings changing to a D.

The S&P debt ratings were adjusted to reduce the effect of issue specifics. Because the objective was to measure company default probability, rather than the treatment of the issue in bankruptcy, subordinated and secured issues ratings had to be adjusted to create a uniform, non-issuespecific measure. Both the written statements of S&P (see Standard & Poor's 1991) and a statistical analysis of their ratings suggested the following adjustment. When the rating was BB or worse, the rating of subordinated debt of all types would be raised two fine grades (for example, from Bto  $\mathbf{B} +$  ); otherwise, the debt rating would be raised one fine grade. The rating of secured debt would be reduced one fine grade. The result of the adjustment was an approximate measure of how the agency would have rated the senior, unsecured debt of each company.12 The final sample included 93 defaulted companies.

The nondefault sample was based on the rated, nonfinancial, public companies with expected default frequencies from data from 30 June for each year. For the entire time period, this sample consisted of 1,066 unique companies, or approximately 657 companies a year.

Note that if either the KMV EDF or the S&P rating had no default-predictive power, the result

would be a power curve along the 45-degree line of Figure 2. Both measures clearly have default predictive power.

The point of greatest interest is that the KMV model is uniformly more powerful than the agency debt ratings. For instance, using a cutoff value for each measure that results in equal Type II errors of 20 percent, EDFs successfully identified 72 percent of the defaults whereas the agency ratings identified about 61 percent. Such a difference is highly significant, both economically and statistically.[14]

Figure 3 shows power curves for S&P implied ratings and "company" (i.e., unadjusted by the researchers) ratings, Moody's implied ratings, and EDFs for publicly rated defaults from 1990 through 1999 (Lim 1999; Kealhofer and Kurbat 2001). This sample was constructed in the same fashion as just described, with the adjustments to the S&P and Moody's ratings. The number of rated defaults is 121; the average number of nondefaults is 1,347 a year, or 1,579 unique companies.[15] Consistent with the results from the earlier period, the KMV model substantially outperforms the rating agencies in terms of default-predictive power. As the graph shows, the default-predictive power for implied Moody's and implied S&P ratings is virtually identical and is slightly below the power of S&P company ratings.[16]

These findings reinforce the previous finding that EDFs are uniformly more powerful than agency debt ratings in predicting default. On the one hand, these results, given the widely held view

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/ef6af2b3-647b-421a-ac59-6eaab1cc3df4/a10c818b522d1b9b9cbb0dd093df9a73e2b04e339fc2184e7591b0f3096052c0.jpg)  
Figure 3. Power Curves for Four Measures, 1990-99

that the Merton approach does not work well empirically, should perhaps be a surprise. Not only does the Merton approach work well in predicting default, it meaningfully outperforms commercial benchmark measures that are well accepted by practitioners. On the other hand, because the Merton approach is harnessing the information in public equity prices to predict default, perhaps the superiority of such an approach is not surprising.

Example. A specific example should help illustrate these results. Figure 4 shows the EDF and the S&P debt rating for Harnischfeger Industries, which defaulted in the summer of 1999. The S&P rating is shown as the stepped line, with default probability on the vertical axis.[17] Although Harnischfeger defaulted in June that year, it had been rated investment grade as late as March. The EDF for Harnischfeger indicated that it was no longer investment grade as of October 1997, however, and in fact, by October 1998, there was an enormous disparity between the agency rating and the EDF. The rating was BBB-; the EDF was more typical of companies then rated Bby the agencies.

If one looks at companies with a given letter rating, one can almost invariably find a significant group of companies with EDFs that are both significantly higher and lower than what is typical for that rating. These companies are usually corporations whose credit quality has changed signifi

cantly in the previous year to two years but whose ratings have not changed. For Harnischfeger, its EDF was approximately consistent with its rating as late as mid-1997, two years before it defaulted.

To understand what caused its EDF to change, Figure 5 presents the market value of Harnischfeger's assets and equity and its total book liabilities for the period shown in Figure 4. Figure 5 shows a significant decline in the value of the business beginning in October 1997. Within a year, Harnischfeger had lost almost half of the value in its business and three-fourths of the value of its equity. Over this same period, liabilities experienced little change, resulting in a substantial increase in Harnischfeger's actual financial leverage and a substantial decrease in its distance to default.

Intracohort Analysis. The previous example illustrated a case in which the KMV approach did a better job of predicting a single default than agency debt ratings. The power curve analysis showed that the KMV approach consistently outperforms the agency ratings. Power curve analysis, however, does not rule out that in some cases, the agency debt ratings may do a better job of predicting default than the KMV analysis. If so, the implication would be that some combination of the approaches might be superior to either alone, so

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/ef6af2b3-647b-421a-ac59-6eaab1cc3df4/55b664e15617a552356263586df4b7d1cbad37236eda509b72db878c0188f3f9.jpg)  
Figure 4. EDF versus S&P Rating for Harnischfeger Industries, November 1994-October 1999

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/ef6af2b3-647b-421a-ac59-6eaab1cc3df4/6036a7fabb0fa59cefed94531bba1e16071dcc3630936959bdc167efdd08074e.jpg)  
Figure 5. Market Value of Assets and Equity and Total Book Liabilities for Harnischfeger Industries, November 1994-October 1999

the KMV model (and, by implication, the Merton approach) would be only a partial or incomplete specification.

To discover whether the agency rating is right some of the time and the EDF is right some of the time, the use of intracohort analysis is called for.18 Intracohort analysis is a powerful technique for evaluating the "overlap" in the information from two different measures. Its power results from its generality; if one measure contains useful information not contained in the other measure, intracohort analysis will identify it. Coupled with power curves, intracohort analysis provides a complete characterization of the relationship between two default-prediction measures. The only requirement for intracohort analysis is that one measure combine with the other measure in a consistent direction (but not magnitude) across different credit-quality ranges.

Given two default-prediction measures, intracohort analysis examines the subsequent default experience of a cohort of companies constructed to have the same default probability when the first measure is used but different default probabilities as measured by the second measure. If the differences resulting from the second measure are information (not noise), then the subsequent default experience of the cohort should align with the second measure. If the differences are noise, one should find no systematic differences in subsequent default experience within the cohort because

every company in the cohort is predicted to have the same default probability by the first measure.

A broad intracohort analysis of EDFs and agency debt ratings was reported by Miller in 1998. Using data on rated nonfinancial issuers for every month end between June 1986 and November 1996 and all rating grades from AAA to B-, Miller studied the subsequent occurrences of default based on the original percentile ranking of the issuer within its fine rating group. Panel A of Figure 6 reproduces the findings from his study for the default results one year later by KMV EDF percentile rank within the S&P rating cohort.

The evidence from the chart in Panel A is striking: The defaults occur predominantly among companies that were ranked in the lower half of the rating grades by EDF; they are ordered approximately with their percentile ranking; and there is an enormous range of difference in realized default rates between the low-ranked and the high-ranked companies. For instance, 41 defaults occurred in the worst quartile, and 2 defaults occurred in the best quartile, a difference in default rate of 20:1.

The power of intracohort analysis is that it does not rely on specifying anything restrictive about the nature of the relationship between the two measures, such as a linear relationship. It simply tests whether the ranking of one variable has information that is not contained in the ranking of the other variable. It is difficult to imagine any mathematical specification of the two variables that would be practically better than the first variable alone if the

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/ef6af2b3-647b-421a-ac59-6eaab1cc3df4/73b7fd5634f660b6a92cb78c9504f3a02f75c41b62fff5158b75032ca9dcceec.jpg)  
Figure 6. Intracohort Analysis: Twelve Months before Default

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/ef6af2b3-647b-421a-ac59-6eaab1cc3df4/8af025e4c8ca2b982dcdde9b6f4644812917517d641cc4c49da0c1ee7c13938f.jpg)

second variable failed to have additional predictive power by this test. For this reason, the test is considered a nonparametric test (i.e., one that does not rely on a particular parameterization of the relationship between the two variables but considers all reasonable alternatives simultaneously).

Miller did not conduct the reverse comparison—that is, constructing EDF cohorts and testing whether the agency rating differences corresponded to different realized default rates. His results show that a large amount of the variation of EDFs within a given rating grade reflects real information. The results do not rule out, however, that there may be some information in agency ratings that is not contained within EDFs.

To address this point, Kurbat and I (2001) conducted the reverse analysis using the same data

that was used for the power test for the 1990-99 period. In this case, companies were put into one of 60 cohorts based on their EDFs. Each cohort was sorted by agency debt rating from high to low and given a percentile score. The subsequent defaults were then determined and compared with their percentile scores.

Under the hypothesis that agency debt ratings contain information that is not contained in EDFs, the high and low percentile groups resulting from this test should reflect a marked difference. The results shown in Panel B of Figure 6 indicate, however, that there is virtually no difference in default rate between the highand low-rated companies within EDF cohorts. For instance, comparing the bottom half of the rated companies to the top half of rated companies yields almost exactly the same

default rate. Unlike the case of the EDF percentiles Miller found, in which the hypothesis of no additional EDF information could be easily rejected at high levels of statistical significance, the results shown in Panel B are statistically and economically insignificant.[19]

What the power curve and the intracohort analyses demonstrate is that not only is the KMV model a more accurate predictor of default than are agency debt ratings (be they Moody's or S&P ratings) but also that EDFs contain all the information in ratings and more. Put differently, if one tried to combine agency debt ratings with EDFs to obtain a better predictor, one would find that the optimal predictor puts a zero weight on ratings. The output of the KMV model cannot be improved by mixing it with debt ratings. Although this result might seem surprising, it is consistent with much empirical research on the quality of the information contained in equity prices (see Fama 1970, 1991).

If the errors in agency debt ratings are the result of staleness, one should be able to use the KMV model to predict rating upgrades and downgrades. To test this hypothesis, Bohn and Korablev (2000) constructed a sample of companies using all companies that had both EDFs and S&P debt ratings at some time during the period September 1993 through August 1998. This sample contained 1,639 observations distributed over essentially all industry groups. They used fine grades to put the agency debt ratings onto a linear scale with AAA = 1 and D = 22. For each fine grade, they iden

tified the overall median EDF for the five-year time period and established the upper and lower bound for each fine grade as the geometric average of the median for the fine grade and the median of the neighboring fine grade. They considered that the EDF had predicted an upgrade (or downgrade) if it was less than the lower bound (or greater than the upper bound) at a given horizon before the actual event of agency upgrade or downgrade. The patterns of upgrades and downgrades as predicted by EDF are shown in Figure 7.

Figure 7 shows that the KMV model's EDF correctly predicted nearly 80 percent (averaging the upgrades and downgrades) of the sub-investment-grade rating changes six months in advance and approximately 65 percent of the investment-grade rating changes. A careful examination of the cases revealed that a high proportion of the investment-grade downgrades were linked to "announcement" events, mostly announcements of mergers, acquisitions, or significant restructurings. If these events had been excluded (because they are not very predictable by any model), the fraction of correctly predicted investment-grade rating changes would have been closer to 70 percent and would be above 75 percent at some time prior to the actual rating change.

This analysis provides additional evidence that at least a portion of the error in agency ratings is a result of lack of timeliness. EDFs, because they are based partly on equity prices, move in advance of agency ratings.

Figure 7. Correct Predictions of Upgrades and Downgrades by EDF, September 1993–August 1998  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/ef6af2b3-647b-421a-ac59-6eaab1cc3df4/a7f246c5b4d6a9f7f746e8794c01c8a02534c444ee8913bce950208e8984806c.jpg)  
Note: North American companies.

Using Rating Changes to Measure Credit Risk. Because EDFs provide a more accurate measure of current default probability than agency ratings, they can be used to examine the properties of measurement schemes based on agency ratings. For example, consider the following approach that has been popularized in recent years (Gupton, Finger, and Bhatia 1997). One begins by assuming that companies' default probabilities change through time according to a Markov process. One then makes the further assumption that the states of the process are represented by agency debt ratings (including default as a terminal state). On that basis, one then substitutes an empirically measured rating transition matrix to make the model operational.

The key problem with using such matrixes is the implicit assumption that ratings change whenever credit quality changes and credit quality changes whenever ratings change. As should be clear from the preceding section, this assumption is not even approximately satisfied.

Kealhofer, Kwok, and Weng (1998) explored the empirical implications of using rating transition matrixes by comparing EDF-based migration probabilities with rating transitions. Using as a selection criterion all U.S. companies with at least two monthly EDFs available between February 1990 and June 1997, they identified a sample of 11,397 unique companies, averaging around 6,000 companies a year. Next, they determined ranges for rating grades by taking the geometric average of the median EDFs associated with S&P debt rating

grades over this period. A company was assumed to "migrate" from one grade to another when its EDF moved from one range to another. By construction, these ranges were nonoverlapping. EDFs were bounded above by 20 percent. All companies that had maximum EDF values but were not actually in default were treated as belonging to the CCC range. Some companies disappeared within the measurement horizon without defaulting, but including them as an additional migration category did not materially alter the results, so they were dropped in the reported results. The fraction of companies migrating to each range within one year was aggregated over each initial month date to produce the final transition matrix.

The matrix based on agency ratings and the matrix based on nonoverlapping EDF ranges are shown in Table 1. The differences between the two matrixes are striking. With EDFs, the actual probability that a company will remain within a credit quality range typical of a given rating is about 45 percent; for rating transitions, the probability reported is 85 percent. The ratings approach overestimates the probability of unchanged credit quality by a factor of about 2. The cause appears to be, at least in part, the lack of timeliness in agency rating changes. Ratings are "sticky"; they do not change enough and thus significantly overstate the probability of credit quality not changing. This stickiness is reflected also in the enormous range of EDFs that can be found within any given letter grade.

Table 1. Credit-Quality Transition Matrices, February 1990-June 1997  

<table><tr><td rowspan="2">Initial Rating</td><td colspan="8">Rating at Year-End</td></tr><tr><td>AAA</td><td>AA</td><td>A</td><td>BBB</td><td>BB</td><td>B</td><td>CCC</td><td>Default</td></tr><tr><td colspan="9">A. Based on agency ratings</td></tr><tr><td>AAA</td><td>90.81%</td><td>8.33%</td><td>0.68%</td><td>0.06%</td><td>0.12%</td><td>0.00%</td><td>0.00%</td><td>0.00%</td></tr><tr><td>AA</td><td>0.70</td><td>90.65</td><td>7.79</td><td>0.64</td><td>0.06</td><td>0.14</td><td>0.02</td><td>0.00</td></tr><tr><td>A</td><td>0.09</td><td>2.27</td><td>91.05</td><td>5.52</td><td>0.74</td><td>0.26</td><td>0.01</td><td>0.06</td></tr><tr><td>BBB</td><td>0.02</td><td>0.33</td><td>5.95</td><td>86.93</td><td>5.30</td><td>1.17</td><td>0.12</td><td>0.18</td></tr><tr><td>BB</td><td>0.03</td><td>0.14</td><td>0.67</td><td>7.73</td><td>80.53</td><td>8.84</td><td>1.00</td><td>1.06</td></tr><tr><td>B</td><td>0.00</td><td>0.11</td><td>0.24</td><td>0.43</td><td>6.48</td><td>83.46</td><td>4.07</td><td>5.20</td></tr><tr><td>CCC</td><td>0.22</td><td>0.00</td><td>0.22</td><td>1.30</td><td>2.38</td><td>11.24</td><td>64.86</td><td>19.79</td></tr><tr><td colspan="9">B. Based on nonoverlapping EDF ranges</td></tr><tr><td>AAA</td><td>66.26%</td><td>22.22%</td><td>7.37%</td><td>2.45%</td><td>0.86%</td><td>0.67%</td><td>0.14%</td><td>0.02%</td></tr><tr><td>AA</td><td>21.66</td><td>43.04</td><td>25.83</td><td>6.56</td><td>1.99</td><td>0.68</td><td>0.20</td><td>0.04</td></tr><tr><td>A</td><td>2.76</td><td>20.34</td><td>44.19</td><td>22.94</td><td>7.42</td><td>1.97</td><td>0.28</td><td>0.10</td></tr><tr><td>BBB</td><td>0.30</td><td>2.80</td><td>22.63</td><td>42.54</td><td>23.52</td><td>6.95</td><td>1.00</td><td>0.26</td></tr><tr><td>BB</td><td>0.08</td><td>0.24</td><td>3.69</td><td>22.93</td><td>44.41</td><td>24.53</td><td>3.41</td><td>0.71</td></tr><tr><td>B</td><td>0.01</td><td>0.05</td><td>0.39</td><td>3.48</td><td>20.47</td><td>53.00</td><td>20.58</td><td>2.01</td></tr><tr><td>CCC</td><td>0.00</td><td>0.01</td><td>0.09</td><td>0.26</td><td>1.79</td><td>17.77</td><td>69.94</td><td>10.13</td></tr></table>

Sources: For Panel A, Standard & Poor's CreditWeek (15 April 1996); for Panel B, KMV Corporation (January 1990-September 1995).

Not surprisingly, using rating transitions to proxy for credit-quality changes will result in substantial errors in any applications. Panel A in Table 2 shows a calculation from the CreditMetrics documentation based on a rating transition matrix; Panel B shows a recalculation based on applying the EDF-based transition matrix. These calculations are to determine the standard deviation of the bond's value arising from credit risk at a horizon of one year—that is, to measure the risk of the bond. Because the bond's future value (and thus its risk) will have little variation if credit quality is believed to have not changed, the use of the matrix based on agency rating transitions results in a significant understatement of risk. In this case, the EDF-based matrix results in a standard deviation of 4.86 percent versus the rating-transition-based value of 2.99 percent, a 60 percent error. This same criticism applies to transition-matrix-based valuation approaches to credit risk, such as that of Jarrow, Lando, and Turnbull (1997), when they are implemented by using ratings data to estimate the transition matrix.

# Statistical Methods for Estimating Default Risk

An alternative approach to Merton for estimating default risk is the use of statistical methods to determine the relationship between realized defaults and their characteristics prior to default. This article does not have space to address the performance of Merton versus such a statistical scoring model, but two points are worth noting. First, in our research, we have not been able to identify statistical models that perform as well as the Merton approach empirically.[20] Second, statistical models measure correlation, not causation. The confusion between these concepts can be illustrated by considering the problem of predicting whether someone is overweight by examining the contents of that person's shopping basket. In doing so, we might observe a correlation between people being overweight and buying diet food, but we would not want to jump to the (causation) conclusion that "eating diet food makes you fat."

Table 2. Bond Standard Deviation Calculation: CreditMetrics Example  

<table><tr><td>Year-End Rating</td><td>Probability of State</td><td>New Bond Value plus Coupon</td><td>Probability-Weighted Value</td><td>Deviation of Bond Value from Mean Value</td><td>Probability-Weighted Squared Deviation</td></tr><tr><td colspan="6">A. Based on rating changes</td></tr><tr><td>AAA</td><td>0.02%</td><td>$109.37</td><td>$0.02</td><td>\$2.28</td><td>0.0010</td></tr><tr><td>AA</td><td>0.33</td><td>109.19</td><td>0.36</td><td>2.10</td><td>0.0146</td></tr><tr><td>A</td><td>5.95</td><td>108.66</td><td>6.47</td><td>1.57</td><td>0.1474</td></tr><tr><td>BBB</td><td>86.93</td><td>107.55</td><td>93.49</td><td>0.46</td><td>0.1853</td></tr><tr><td>BB</td><td>5.30</td><td>102.02</td><td>5.41</td><td>-5.06</td><td>1.3592</td></tr><tr><td>B</td><td>1.17</td><td>98.10</td><td>1.15</td><td>-8.99</td><td>0.9446</td></tr><tr><td>CCC</td><td>0.12</td><td>83.64</td><td>0.10</td><td>-23.45</td><td>0.6598</td></tr><tr><td>Default</td><td>0.18</td><td>51.13</td><td>0.09</td><td>-55.96</td><td>5.6363</td></tr><tr><td></td><td></td><td></td><td>Mean = \$107.09</td><td></td><td>Variance = 8.9477</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td>Standard deviation = 2.99%</td></tr><tr><td colspan="6">B. Based on nonoverlapping EDF ranges</td></tr><tr><td>AAA</td><td>0.30%</td><td>$109.37</td><td>$0.33</td><td>\$3.86</td><td>0.0447</td></tr><tr><td>AA</td><td>2.80</td><td>109.19</td><td>3.06</td><td>3.68</td><td>0.3793</td></tr><tr><td>A</td><td>22.63</td><td>108.66</td><td>24.59</td><td>3.15</td><td>2.2464</td></tr><tr><td>BBB</td><td>42.54</td><td>107.55</td><td>45.75</td><td>2.04</td><td>1.7715</td></tr><tr><td>BB</td><td>23.52</td><td>102.02</td><td>24.00</td><td>-3.49</td><td>2.8637</td></tr><tr><td>B</td><td>6.95</td><td>98.10</td><td>6.82</td><td>-7.41</td><td>3.8154</td></tr><tr><td>CCC</td><td>1.00</td><td>83.64</td><td>0.84</td><td>-21.87</td><td>4.7827</td></tr><tr><td>Default</td><td>0.26</td><td>51.13</td><td>0.13</td><td>-54.38</td><td>7.6885</td></tr><tr><td></td><td></td><td></td><td>Mean = \$105.51</td><td></td><td>Variance = 23.5922</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td>Standard deviation = 4.86%</td></tr></table>

Note: Calculations of volatility in value due to possible credit-quality changes for a single bond. Sources: For Panel A, Gupton et al.; for Panel B, KMV Corporation.

This point is not a hypothetical criticism, as is illustrated by the effect of leverage on a company's default risk. Leverage by itself has little default-predictive power. The reason is straightforward. Generally, lenders provide the most leverage to the safest companies—in other words, the ones with the least business risk. This fact can be seen in the cross-sectional relationship between company asset volatility and leverage. On average, leverage goes up as volatility goes down.

A statistical model cannot completely separate these two effects. In essence, if a statistical model is asked to report the effect on default risk of raising a given company's leverage, it will say that the risk has gone up because of greater leverage but also that the risk has fallen because the company is now less volatile. This answer seems patently silly, but it arises because the model has gotten the causation reversed: Lending more to a company does not make it less volatile; rather, on average, the less volatile companies use more leverage.

Most model users are interested in causation rather than correlation because they need to determine the effect of their or other's actions on a company's capital structure. For example, if an analyst changes the inputs to a statistical model to determine the effect of, say, making a loan, the analyst is using the model to make a causal inference. The inference will be correct only if the statistical model happens to correspond to the true underlying structural model and is complete, in the sense of correctly capturing the effect of all relevant variables. Few statistical modelers would be willing to make such an assertion.

In contrast, the Merton approach can be adapted to include relevant variables within a causal framework. Thus, Merton models can be used to determine the effect of increasing dividends, shortening debt maturity, adding leverage, issuing convertible rather than straight debt, and so forth. In practice, the KMV model has been extensively used by banks to analyze complex corporate finance transactions, such as mergers, acquisitions, and divestitures.

In summary, empirical studies of the KMV model show that it works better than agency ratings as a predictor of default. Intracohort analysis shows that EDFs contain default-predictive information that is not in agency ratings but that agency ratings appear to contain no default-predictive information that is not in EDFs. Analysis of agency debt ratings suggests the source of these results, namely, that there is strong evidence that the

default rate within agency rating groups is actually highly diverse. Furthermore, these differences can be accurately detected in a timely way by the KMV model.

Cumulatively, this research constitutes strong evidence in favor of the generalized Black-Scholes-Merton approach to credit risk, as exemplified by the KMV model. Contrary to previous studies that were unsuccessful in implementing the Merton model, this body of work shows that a variant of the Merton model does a superior job of predicting and measuring default risk when compared with conventional credit measures.

# Conclusion

Twenty-five years ago, the work of Black, Scholes, and Merton held out the hope of objectively quantifying credit risk. From a conceptual standpoint, the Merton model has come to dominate the viewpoint of academic finance on credit risk. But implementing the model in practice has proven to be more difficult than originally anticipated.

Building on the original insights of Black-Scholes-Merton, Vasicek and Kealhofer developed a straightforward variant of the Merton model. During the past decade, the probabilities of default determined from the KMV model, expected default frequencies or EDFs, have become a major tool of credit-risk transactors (lenders, borrowers, traders, etc.) and portfolio managers.[21]

Cumulatively, the research described here provides strong support for the generalized Black-Scholes-Merton approach to credit risk, as exemplified by the KMV model. Because the Merton approach provides a logically complete and coherent framework for understanding corporate risk, a successful practical implementation of the approach provides a powerful tool for examining the valuation consequences of corporate behavior.

Many more companies have equity that is traded than debt that is traded. Equity markets are more continuous and more transparent than debt markets. Therefore, by providing a blueprint for using information from the price of a company's equity to determine the default risk of any of the company's liabilities, a practical Black-Scholes-Merton approach is a crucial analytical tool. The workable integration of corporate equity and fixed-income valuation creates the potential for a deeper understanding of corporate finance, greater debt-market liquidity, and new paradigms for managing investments in corporate obligations.

# Notes

1. For instance, Moody's Investors Service has decided to use a Merton approach to predict default (see Cass 2000).  
2. For a description of theoretical issues underlying the implementation of the KMV model, see Crouhy, Galai, and Mark (2001).  
3. The implicit probability is the so-called risk-neutral probability (i.e., the one that would obtain if the underlying asset value process had a mean return equal to the risk-free return rather than its actual mean return). This point is discussed further in Part II.  
4. More complete treatment of the KMV model from a theoretical perspective can be found in Caouette, Altman, and Narayanan (1998), Crouhy et al., and Vasicek (1984).  
5. Part II will provide a discussion of the "horizon" versus "absorbing barrier" versions of this calculation.  
6. The expected return or "asset drift rate" is a required input for the model. Part II will address the method used and the implications for empirical estimates of default probabilities and secondary-market credit spreads.  
7. For estimating asset volatility, one uses a procedure similar to that explained in Jones et al.  
8. From the standpoint of logical consistency, one would want to have agreement between the distributional assumption used to estimate the asset value and the distributional form used to obtain the default probabilities. KMV's practical experience has been that the empirical deviations, although important for default estimation, do not have substantial effects on the estimated asset values or volatilities. As a result, we have simply accepted the logical inconsistency as a practical expedient, and we look to future work to find its resolution.  
9. The comparison is not always feasible because some industries have numerous defaults but many industries do not. For instance, utilities may have a different experience from that of other companies for any number of postulated ex ante reasons. The default data on utilities are statistically consistent with the pooled results, but the number of defaults is so low that the data would also be consistent with many other alternatives.  
10. A "higher" index value is defined as a lower probability of default.  
11. S&P states that its measures actually represent default probability, but it adjusts ratings for subordination and to some extent for security, which is not consistent with this premise. Moody's, presenting a similar rating approach, interprets its ratings as representing expected loss (i.e., the product of default probability and expected loss given default). Thus, in both cases, the ratings need to be modified by eliminating the effect of subordination and security. I do not address Fitch IBCA ratings in this article.
12. The agencies themselves have used similar procedures when performing historical statistical studies (see, for example, Carty and Fons 1993).  
13. Because the nondefaulted companies did not have a default date, of course, there is no specific date to measure their default risk. Several approaches were used, including matching dates and scoring percentiles by year. The various approaches yielded virtually identical results.  
14. If  $p$  is the probability of default, the variance of an observation is given by  $p(1 - p)$  and the standard deviation by  $\sqrt{[p(1 - p)] / n}$ , where  $n$  is the number of total observations corresponding to  $p$ , under the assumption of independence of defaults. Independence is a reasonable assumption in this case because the defaults occur primarily at different times throughout the sample period. For the example here, with a Type II error rate of 20 percent in which EDF excludes 72 percent of defaults versus only 61 percent for the agency ratings (for a difference of  $0.72 - 0.61 = 0.11$ ), EDF is 2.4, so  $p = 0.024$  and  $\sqrt{p(1 - p)} = 0.153$ . Given the large sample sizes involved (respectively, 7,320 and 13,591), the standard errors are, respectively, approximately 0.0018 and 0.0013. Thus, the difference in power between the EDFs and the ratings is significant, with  $t$ -values of, respectively, approximately 63 and 85.  
15. Note that the studies being described were carried out with the total population excluded on the  $x$ -axis rather than nondefaults excluded on the  $x$ -axis. This distinction is of no practical importance, however, because the number of companies defaulting a year is approximately 1 percent of the number of nondefaulting companies a year.  
16. The slight superiority of the actual S&P company ratings to the implied senior unsecured ratings is plausible, given that the algorithm discussed previously for implying ratings is presented by the rating agencies as an approximation to what they use to imply ratings in practice, and it produces a mild degradation in the power curve results.  
17. For purposes of graphing, the agency debt ratings are depicted at the level of default risk consistent with the median EDF of all companies with the given rating over the five-year period.  
18. The idea of intracohort analysis was suggested by Miller (1998).  
19. In addition to agency ratings, we also tested various accounting variables for marginal default-predictive power. In all cases, marginal default-predictive power was decisively rejected.  
20. See, for instance, Kealhofer and Kurbat.  
21. Smithson (2001) reported a survey of banks' use of default models.

# References

Altman, Edward I. 1968. "Financial Ratios, Discriminant Analysis and the Prediction of Corporate Bankruptcy." Journal of Finance, vol. 23, no. 4 (September):589-609.

Altman, Edward I., and Vellore M. Kishore. 1996. "Almost Everything You Wanted to Know about Recoveries on Defaulted Bonds." Financial Analysts Journal, vol. 52, no. 6 (November/December):57-64.

Altman, Edward I., R. Haldeman, and P. Narayanan. 1977. "ZETA™ Analysis: A New Model for Bankruptcy Classification." Journal of Banking and Finance, vol. 1, no. 1 (June):29-54.

Black, Fischer, and John Cox. 1976. "Valuing Corporate Securities: Some Effects of Bond Indenture Provisions." Journal of Finance, vol. 31, no. 2 (May):351-367.

Black, Fischer, and Myron Scholes. 1973. "The Pricing of Options and Corporate Liabilities." Journal of Political Economy, vol. 81, no. 3 (May/June):637-659.

Bohn, Jeffrey R. 2000a. "A Survey of Contingent-Claims Approaches to Risky Debt Valuation." Journal of Risk Finance, vol. 1, no. 3 (Spring):53-78.

2000b. "An Empirical Assessment of a Simple Contingent-Claims Model for the Valuation of Risky Debt." Journal of Risk Finance, vol. 1, no. 4 (Summer):55-77.  
Bohn, Jeffrey R., and Irina Korablev. 2000. "Predicting Agency Rating Upgrades and Downgrades with KMV's Expected Default Frequency (EDF)." KMV Corporation.  
Carty, Lea V. 1997. "Moody's Rating Migration and Credit Quality Correlation, 1920-1996." Moody's Investors Service.  
Carty, Lea V., and Jerome S. Fons. 1993. "Measuring Changes in Corporate Credit Quality." Moody's Special Report (November).  
Carty, Lea V., and Dana Lieberman. 1996. "Corporate Bond Defaults and Default Rates 1938-1995." Moody's Investors Service, Global Credit Research (January).  
Cass, Dwight. 2000. "Moody's Launches Risk Model." Risk, vol. 13, no. 6 (June):14-15.  
Caouette, John B., Edward I. Altman, and Paul Narayanan. 1998. Managing Credit Risk: The Next Great Financial Challenge. New York: Wiley.  
Collin-Dufresne, Pierre, and Bruno Solnik. 2001. "On the Term Structure of Default Premia in the Swap and LIBOR Markets." Journal of Finance, vol. 56, no. 3 (June):1095-1115.  
Crouhy, Michel, Dan Galai, and Robert Mark. 2001. Risk Management. New York: McGraw-Hill.  
Delianedis, Gordon, and Robert Geske. 1998. "Credit Risk and Risk Neutral Default Probabilities: Information about Rating Migrations and Defaults." Working Paper 19-98, University of California at Los Angeles.  
Demchak, Bill. 2000. "Modelling Credit Migration." Risk, vol. 13, no. 2 (February):99-102.  
Eom, Young Ho, Jean Helwege, and Jing-Zhi Huang. 2000. "Structural Models of Corporate Bond Pricing: An Empirical Analysis." Working paper, Yonsei University.  
Fama, Eugene F. 1970. "Efficient Capital Markets: A Review of Theory and Empirical Work." Journal of Finance, vol. 25, no. 2 (May):383-417.  
——. 1991. "Efficient Capital Markets: II." Journal of Finance, vol. 46, no. 5 (December):1575-1617.  
Gupton, Greg M., Christopher C. Finger, and Mickey Bhatia. 1997. "CreditMetricsTM—Technical Document." J.P. Morgan (www.defaultrisk.com/pp_model_20.htm).  
Gurnaney, Anil. 1998. "Empirical Test of EDF, 1990-1996." KMV Corporation.  
Ingersoll, Jonathon. 1977a. "A Contingent-Claims Valuation of Convertible Securities." Journal of Financial Economics, vol. 4, no. 3 (May):289-321.  
——. 1977b. "An Examination of Corporate Call Policies on Convertible Securities." Journal of Finance, vol. 32, no. 2 (May):463-478.  
Jarrow, Robert A., and Donald R. van Deventer. 1999. "Practical Usage of Credit Risk Models in Loan Portfolio and Counterparty Exposure Management." In Credit Risk: Models and Management. Edited by David Shimko. London: Risk Books.  
Jarrow, Robert A., D. Lando, and S. Turnbull. 1997. "A Markov Model for the Term Structure of Credit Risk Spreads." Review of Financial Studies, vol. 10, no. 2 (Summer):481-523.

Jones, P., S. Mason, and E. Rosenfeld. 1984. "Contingent Claims Analysis of Corporate Capital Structures: An Empirical Investigation." Journal of Finance, vol. 39, no. 3 (July):611-625.  
Kao, Duen-Li. 2000. "Estimating and Pricing Credit Risk: An Overview." Financial Analysts Journal, vol. 56, no. 4 (July/ August):50-66.  
Kealhofer, Stephen. 1991. "Credit Monitor Overview." Unpublished. KMV Corporation.  
Kealhofer, Stephen, and Matthew Kurbat. 2001. "The Default Prediction Power of the Merton Approach, Relative to Debt Ratings and Accounting Variables." Unpublished paper, KMV Corporation (www.kmv.com/Knowledge_Base/public/general/white/Merton_Prediction_Power.PDF).  
Kealhofer, Stephen, Sherry Kwok, and Wenlong Weng. 1998. "Uses and Abuses of Bond Default Rates." CreditMetrics Monitor (First Quarter):37-55  
Lim, Francis. 1999. "Comparative Default Predictive Power of EDFs and Agency Debt Ratings." Unpublished paper, KMV Corporation (December).  
Merton, Robert C. 1973. "Theory of Rational Option Pricing." Bell Journal of Economics, vol. 4, no. 1 (Spring):141-183.  
1974. "On the Pricing of Corporate Debt: The Risk Structure of Interest Rates." Journal of Finance, vol. 29, no. 2 (May):449-470.  
Miller, Ross. 1998. "Refining Ratings." Risk, vol. 11, no. 8 (August):97-99.  
Ogden, Joseph P. 1987. "Determinants of the Ratings and Yields on Corporate Bonds: Tests of the Contingent Claims Model." Journal of Financial Research, vol. 10, no. 4 (Winter):329-339.  
Pitts, C.G., and M.J. Selby. 1983. "The Pricing of Corporate Debt: A Further Note." Journal of Finance, vol. 38, no. 4 (September):1311-13.  
Sarig, Oded, and Arthur Warga. 1989. "Some Empirical Estimates of the Risk Structure of Interest Rates." Journal of Finance, vol. 44, no. 4 (December):1351-60.  
Smithson, Charles W. 2001. "Managing Loans: The State of Play." Credit (December/January):26-31  
Sobehart, J., and S. Keenan. 1999. "Equity Market Value and Its Importance for Credit Analysis: Facts and Fiction." Working paper, Moody's Investor Services.  
Standard & Poor's. 1991. "S&P's Corporate Finance Criteria."  
Vasicek, Oldrich A. 1984. "Credit Valuation." Unpublished paper, KMV Corporation.  
1995. "EDFs and Corporate Bond Pricing." Unpublished paper, KMV Corporation.  
1997. "Credit Valuation." Net Exposure, vol. 1 (October); reprinted in 1998 on CD in Derivatives: Theory and Practice of Financial Engineering. Edited by P. Wilmott. London: J. Wiley & Sons.  
2001. "Actual and Risk-Neutral Probabilities of Default." Unpublished paper, KMV Corporation.  
Wei, David Guoming, and Dajiang Guo. 1997. "Pricing Risky Debt: An Empirical Comparison of the Longstaff and Schwartz and Merton Models." Journal of Fixed Income, vol. 7, no. 2 (September):8-28.
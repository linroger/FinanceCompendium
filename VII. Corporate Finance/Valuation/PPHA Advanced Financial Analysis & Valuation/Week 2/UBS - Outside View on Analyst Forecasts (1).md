---
title: "Fundamental Analytics Base Rates: an Outside View on Analyst Forecasts"
parent_directory: PPHA Advanced Financial Analysis & Valuation
formatted: 2025-12-21 12:35:00 AM
formatter_model: claude-sonnet-4
cli-tool: claude-code
primary_tags:
  - analyst forecasts
  - base rates
  - forecasting bias
  - quant fundamental integration
secondary_tags:
  - outside view
  - inside view
  - reversion to mean
  - profitability analysis
  - return on capital
  - equity valuation
  - financial modeling
  - analyst superiority
  - mean reversion
cssclasses: academia
---

# Fundamental Analytics Base Rates: an Outside View on Analyst Forecasts

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/8bc390e3-b2d5-4db7-a81a-c2da367580c1/110a7cd5759143816e32320070f1c4cf93799b4367d08bc920156179ec5f945d.jpg)

# Active equity investing relies on forecasts

Fundamental equity analysis requires forecasts. The short-term "trading" approach requires accurate non-consensus forecasts of EPS or other near-term catalysts. The longer-term "investing" approach requires forecasts of the entire growth path of the drivers of intrinsic value. Company and industry expertise are essential for both.

# Even forecasts made by industry experts are prone to bias

Over the years, leading psychologists have documented with remarkable consistency a number of biases to which human-made forecasts are prone. One of these is the tendency of forecasters to ignore the a priori likelihood of outcomes based on simple statistics – the so-called "base rates". Another is to overlook the statistical reality that many of the metrics we need to forecast "revert to the mean" over time.

# Quant augments Fundamental

We argue that the forecast accuracy of fundamental analysts can benefit greatly from a modest injection of quant perspective. We introduce the concept of base rates and discuss how a context-agnostic, data-driven "outside view" can act as a simple sanity check on the industry expert's situation-specific "inside view". Quant and Fundamental don't have to be two completely separate paradigms - they can augment each other.

# What we cover in this report

After discussing some prominent examples of forecast bias, we revisit the framework that governs fundamental value creation to identify the value drivers of interest. We then illustrate the calculation of various base rates for these drivers and offer guidance on how analysts can combine the inside and outside views. We conclude with a brief discussion of the research that shows analysts still dominate algorithms when it comes to forecasting, arguing nonetheless that they should pay more attention to base rates.

## UBS Research Team

**Global Equity Research - Valuation, Modelling & Accounting**

- **Guy Weyns, PhD** (Analyst) - guy.weyns@ubs.com, +852 2971 6712
- **Geoff Robinson, CA FCA** (Analyst) - geoff.robinson@ubs.com, +44-20-7567 1706
- **Renier Swanepoel** (Analyst) - renier.swanepoel@ubs.com, +44-20-7568 9025

*www.ubs.com/investmentresearch*

## Contents

### How to make money from statistics and biased forecasts
### What about sell-side analysts' forecasts?
### What is this report about?
### Back to basics: active investing and the need for forecasts
- Forecasting the near term: EPS and other catalysts
- Forecasting the long term: Intrinsic value
### The Psychology of Forecasting
- The Inside vs. the Outside View
- What are Base Rates?
### Base Rates: which value drivers should we focus on?
- What is the point of Profitability Analysis?
- Taking apart returns on equity
- The profitability of a company's operations

- Which base rates should we look at?
  - Cross-sectional base rates
  - Time-series base rates
  - Reversion to the mean
- Combining the inside and outside views
- Rise of the robo-forecaster? Not anytime soon

# How to make money from statistics and biased forecasts

In 1996 Richard Sloan, then a professor at the University of Pennsylvania's Wharton School, documented one of the most enduring investable market anomalies that ended up being widely referred to as the "accrual anomaly". Sloan demonstrated that company earnings that contain a high proportion of accounting accruals tend to be much less sustainable than earnings that consist primarily of cash. More importantly, he showed that investors did not fully incorporate this publicly available information in their investment decisions: By myopically focusing on aggregate earnings and ignoring the extent to which these earnings were made up of accruals or cash, investors systematically overestimated the persistence of earnings with a high accrual component, and vice versa (Figure 1). As a result, a hedge portfolio that was short the most accrual-rich earnings and long the most cash-rich earnings yielded a return of $10.4\%$ on average, before transaction costs. In an important 2013 follow-up study, Allen, Larson and $\mathit{Sloan}^3$ explained why this was happening from a fundamentals perspective. They showed that "extreme" accruals tend to revert strongly in subsequent periods, dragging down earnings – for example, through write-downs of overvalued inventories – and causing negative earnings surprises in the process.

Needless to say, this arbitrage opportunity would not exist if equity markets were fully efficient: If investors paid attention to this clear statistical pattern, they would revise downward their earnings forecasts for companies whose most recent earnings contained a high accrual component, and vice versa.

The "accrual anomaly", an arbitrage opportunity that persisted for years, was essentially based on the fact that analysts and investors failed to adjust their forecasts for the predictable mean reversion of high-accrual earnings.

Figure 1: The "Accrual Anomaly": predictable mean reversion of earnings  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/8bc390e3-b2d5-4db7-a81a-c2da367580c1/6de4ff31e415ec47640cf7e8c3ffae7ecf34d4b4ff0e7caf4cae0df990b9f391.jpg)  
Source: Sloan (1996). Year 0 is the year in which all stocks in the sample are ranked according to the proportion of accruals in their earnings. Based on this ranking, the stocks are divided into decile portfolios. This graph tracks the average scaled earnings of the top and bottom decile portfolios in the years before and after year 0.

# What about sell-side analysts' forecasts?

In 2011, Bradshaw, Richardson and $\mathsf{Sloan}^4$ took the analysis of the accrual anomaly a step further, by specifically focusing on the forecasts made by sell-side analysts. They investigated in particular whether analysts' earnings forecasts reflected the statistically predictable mean reversion of earnings that contain a high accrual component. In addition to showing that the accrual anomaly was still alive and well, their results showed that sell-side analysts' forecast errors – defined as actual EPS minus consensus EPS – were systematically large and negative for firms with unusually high accruals, which is consistent with analysts failing to anticipate the subsequent earnings declines.

# What is this report about?

Sloan's work on the accrual anomaly is a beautiful early example of "quant meets fundamental". On the one hand it does not treat earnings and EPS forecasts as mere data points in a factor model, but instead delves into the more detailed mechanics of company fundamentals and GAAP financial statements, as fundamental analysts do. On the other, it uses data and statistics to make fundamental analysis more systematic, mitigating some of the well-documented biases to which human-made forecasts are prone.

This report is about augmenting the "inside view" of the industry expert analyst with simple statistics – "base rates" – that can provide a sanity check or "outside view" on our forecasts. In many instances the uniqueness of the situation will absolutely demand an expert's inside view. On the whole, however, adopting the discipline of systematically sense-checking forecasts against the corresponding base rates will lead to a better forecasting record.

The report starts with a brief review of the need for forecasts in active equity investing, as well as the nature of the forecasts required by the two main investment approaches. After setting the stage, we proceed to highlight the most impactful findings of leading psychologists' applied research on human forecast bias, defining the concept of base rates in the process. The rest of the report zooms in on which value drivers we should care about most, how to go about calculating base rates for those value drivers, and how to combine the base rate information with a situation-specific, inside view.

We conclude with a section on "man vs. machine", in which we briefly discuss academic research that confirms human analysts' superiority over algorithms when it comes to forecasting. We argue nonetheless that in order to maintain their lead, analysts should be open to injecting a modest dose of quant into their forecasting work.

# Back to basics: active investing and the need for forecasts

Sell-side analysts play a multi-faceted role in the capital markets. In addition to providing investment advice, they act as information aggregators, industry sector experts and educators to the buy-side community. For the purpose of this report, however, our focus will be on the analyst's primary role as a source of well-researched, focused stock recommendations.

The spectrum of approaches to active fundamental equity investing is bounded by two pure-play extremes. On one side of the spectrum the focus is on getting an edge on near-term catalysts like earnings announcements or FDA drug approvals. On the other, the focus is on identifying discrepancies between a stock's current share price and its fundamental or intrinsic value. The former is associated with more of a trading mindset, the latter with more of an investing mindset. The work of most sell-side equity analysts combines ingredients of both pure-play approaches. This is a reflection of their typical client mix, which tends to range from the purely event-driven hedge funds to the purely long-term-oriented value investors. As a result, a multi-purpose sell-side equity research report contains short-term earnings forecasts, long-term intrinsic value estimates, and a 12-months-forward price target bridging the two investment horizons.

Either way, the work requires making forecasts. In the next two sections we briefly discuss the types of forecast that are needed for each of the pure-play approaches.

# Forecasting the near term: EPS and other catalysts

Although "Consensus EPS" has some widely acknowledged shortcomings – for example, the fact that a group of sell-side analysts may not always be the greatest proxy for the market as a whole, or that individual analysts tend to make a variety of idiosyncratic adjustments to their EPS forecasts – during earnings season the investment community tends to follow very attentively whether companies meet, beat or miss Consensus. A company that beats or misses Consensus EPS is said to have an "earnings surprise". Because earnings surprises are often associated with a move in the stock price – as the market adjusts its expectations of the company's future growth path – one approach to making investment recommendations simply consists of trying to make accurate, "non-consensus" near-term EPS forecasts. This approach has no need for intrinsic value estimates or price targets, the main focus being on the direction and magnitude of the earnings surprise or other catalyst outcome.

# Forecasting the long term: Intrinsic value

Estimating intrinsic value requires the analyst to forecast not only the near-term realisations of a company's EPS, but all subsequent realisations as well. In other words, intrinsic value needs a forecast of the entire future earnings growth path, including the long-term, steady-state to which that path is likely to converge. To keep the earnings forecasts honest, the model also requires multi-period forecasts for non-EPS value drivers like cash flow from operations, capital expenditures, and dividend payments.

Whereas the short-term, non-consensus EPS forecast approach has a very clear catalyst event – the company's next earnings announcement – in the intrinsic value approach the catalyst tends to be much fuzzier. The speed with which the company's share price moves towards the analyst's estimate of intrinsic value will depend on how sharply subsequent realisations of the various value drivers update market expectations. Here, the focus is not on short-term noise but on getting the long-term growth path right.

Approaches to active equity investing range from short-term catalyst forecasting to long-term intrinsic value estimation, with various hybrid approaches in between. Either way, industry expert forecasts are needed.

# Scenario forecasting, testable propositions and Bayesian updating

Getting the long-term growth path of a business right cannot possibly be a question of coming up with the right sequence of single-point estimates. The further we go out, the less adequate extrapolations of the past become and the greater the need to model the future as a set of alternative scenarios.

Although this topic is outside the scope of our present discussion, it is related in the sense that mainstream statistical methods can greatly enhance the often intuitive approach we take to forecasting alternative outcomes. Bayesian inference in particular is a formal way of updating our prior beliefs about which scenarios are more likely to play out, with new information as it becomes available. To implement this idea in practice, forecasters need to link the relative likelihood of alternative scenarios to testable propositions: Forecasts of which we can all say, without any ambiguity, whether they actually materialised or not. This is yet another example of a context in which quant methods can augment fundamental analysis, which we will save for a separate report.

# The Psychology of Forecasting

In 2002, the psychologist Daniel Kahneman was awarded the Nobel Prize in Economics for his ground-breaking work in applying psychology research to economics and finance, with a particular focus on how humans make decisions and judgments under uncertainty. This, of course, includes the task of making forecasts.

In their seminal 1973 article "On the Psychology of Prediction", Kahneman and Tversky first presented compelling evidence of forecasters' over-reliance on judgmental heuristics and intuition, even in the presence of relevant statistical information<sup>5</sup>. They highlighted two biases in particular. One was the tendency of forecasters to ignore available information on the a priori likelihoods or "base rates" of the possible outcomes of certain events. The other was a general misunderstanding of the statistical phenomenon of "reversion to the mean". These two concepts – base rates and reversion to the mean – are central to this report and will be discussed in greater detail later on.

# The Inside vs. the Outside View

When a particular forecasting problem is approached from an inside view, the forecaster tends to emphasize the specifics of the situation, use information that is close at hand and recent, and extrapolate primarily based on his or her own experience, anecdotal evidence and intuition. The inside view is highly susceptible to the forecasting biases documented by the work of Kahneman and Tversky.

The outside view, on the other hand, approaches a forecasting problem by examining a set of similar situations – a "reference class" – that can provide some baseline statistical guidance for the forecast. This data-driven approach ignores the specific details of the situation at hand and focuses exclusively on the statistical distribution of the known outcomes of similar situations. What is interesting about this outside view is that the human brain really does not seem to be wired for sound statistical reasoning. Researchers have shown that taking an outside view does not come naturally to experts because it forces them to dismiss, or at a minimum seriously question, the knowledge and intuition they have built up over years of working in a specific field.

To be fair, in many real-life forecasting challenges it is very difficult for forecasters to find an appropriate reference class. How large is the potential market for AI technology? What will be the implications of Facebook or Google entering the financial services industry? While Kahneman and Tversky don't dispute the uniqueness of many situations, one of their most important findings is that forecasters tend to ignore the data even when it is available<sup>6</sup>:

"Many prediction problems are essentially unique, in the sense that little, if any, distributional information is available. Examples are the forecast of demand for nuclear energy in the year 2000, or the date by which an effective cure for leukaemia will be found. In such problems, the expert must rely exclusively on singular information. However, the evidence suggests that people are insufficiently sensitive to distributional data even when such data are available".

The two most prominent forecast biases documented by Nobel prize winning psychology research are i) a neglect of statistical information on the a priori likelihood of events and ii) failure to take into account reversion to the mean.

# What are Base Rates?

In the field of probability and statistics, the term "base rate" generally refers to the unconditional - also known as prior - probability of a particular occurrence or event. For example, the prevalence of achalasia, a rare disorder of the esophagus, is of the order of 10 out of 100,000 people. Armed with only this information, what would be our best guess of the number of people in Manhattan (population of approximately 1.7 million) suffering from achalasia? In the absence of additional information, the answer would be 170.

# Base rates and Fermi problems

Enrico Fermi, winner of the 1938 Nobel Prize in physics and creator of the world's first nuclear reactor, was famous for his ability to produce reasonable estimates based only on educated guesses of base rates – the ultimate "back-of-the-envelope calculation" as it were. A typical example of a "Fermi Problem" would be: "How many piano tuners are there in Chicago?" when the only available information is the size of the population of Chicago. Fermi would approach this problem with educated guesses about base rates for factors like the typical family size in Chicago, the percentage of families likely to possess a piano, and how many pianos a piano tuner could reasonably service in one year.

In an equity analysis context, Fermi's approach can be extremely useful for reverse-engineering revenue forecasts as part of a "What's priced in?" estimation. The trick is to break price-implied aggregate revenue projections up into lower-level components for which we feel more confident making informed or even common-sense judgments regarding the plausibility of the implied base rates.

So how can the concept of base rates be extended to the forecasting task of a fundamental equity analyst? Suppose we need to forecast the profit margin of a particular company, and all we have at our disposal is the reference class consisting of that same company's profit margins for the last 20 years. If the profit margin has exceeded  $25\%$  in only two out of the 20 years, then – in the absence of additional information – it does not seem like a great idea to forecast it at  $30\%$ . Without incremental information, the best we can actually do is to forecast next year's profit margin at its historical average over the last 20 years. This time-series base rate of the company's profit margin provides a non-contextual, data-driven outside view on the forecast. Another relevant reference class could consist of a set of industry peers – ideally companies that not only have a very similar business model, but also a very similar product, client and geographical mix. Here, a potentially useful base rate for the company's profit margin would be the average profit margin of its peer group.

The analyst may be completely justified in deviating significantly from the outside view, based on his or her expert knowledge of the specific context: Maybe the analyst learned that the company's product mix is shifting to higher-margin items, or that it has recently launched a major cost control drive. The point is not that the outside view should dominate the forecast at the expense of the expert's inside view. The point is that authoritative research has demonstrated, time and again, that over-reliance on the bias-prone inside view while ignoring the bias-free outside views, tends to lead to a poor forecasting record.

Base rates are simple statistics about the likelihood of certain events, for example the likelihood of snowfall in Tanzania in the month of February.

The main theme of this report is perhaps best captured by this quote from Kahneman and Tversky's work for the Defense Advanced Research Projects Agency (DARPA) of the U.S.<sup>7</sup>:

"The prevalent tendency to underweight, or ignore, distributional information is perhaps the major error of intuitive prediction. The consideration of distributional information, of course, does not guarantee the accuracy of forecasts. It does, however, provide some protection against completely unrealistic outcomes. The analyst should therefore make every effort to facilitate the utilization of all the distributional information that is available …"

# Base Rates: which value drivers should we focus on?

It may come as a surprise, even for experienced analysts, that it does not make much difference which particular valuation method we use to estimate a company's intrinsic value. In fact, it is not difficult to show that the most commonly used valuation methods - Discounted Cash Flows (DCF), Economic Value Added (EVA), Dividend Discount Model (DDM) and Residual Income (RI) - all yield the same numerical result as long as the underlying company model is internally consistent, and the discount factors are calculated with care. Put differently: if an analyst obtains one answer using a DCF valuation and another using a RI valuation, it is highly likely that the model does not fully reflect the company's value creation dynamics, or that some pragmatic shortcuts were taken in calculating, for example, the weighted average cost of capital (WACC).

What connects all these valuation methods, however – either explicitly or implicitly – is that a company creates value if and only if it succeeds in generating returns on capital that exceed the cost of that capital. In combination with existing and new capital investment, these returns will drive both intrinsic value and growth. Why is this worth pointing out? Because it means that the real focus of the exercise should be not on forecasting income growth per se, but on analysing and forecasting returns on capital. It also means that if we are going to look at base rates to help us calibrate our forecasts, those base rates should relate primarily to the components of return on capital.

# What is the point of Profitability Analysis?

From a pure forecasting perspective, it may seem counterintuitive at first to focus on the components of profitability. Why not forecast directly the line items that make up operating income or earnings? The big risk of the latter approach is that it makes the forecaster lose sight of the structural regularities proper to a company or an industry. For example, the laws of physics and micro-economics will place bounds on the possible range of asset turnovers of companies in a specific industry: there is only so much revenue Walmart or Ikea can generate with a fixed number of stores. If we ignore this reality and forecast revenue growth independently from the operating asset base that is needed to support that growth, at some point our forecasts of free cash flow and cash flow available to equity holders will be considerably out of kilter. Profitability analysis guides the forecasting task in two ways:

Companies create intrinsic value when their return on capital exceeds the cost of that capital. To use base rates to maximum effect, they should be focused on the drivers of return on capital.

(1) rather than focusing on revenue and earnings growth in isolation, it keeps track of the interconnections between the generation of income, the asset base, the generation of cash flow and the external funding side, ensuring that the main driver of intrinsic value – return on capital – does not become unrealistically high or low;  
(2) it decomposes the forecasting exercise into a number of intuitive ratios for which we can document base rates and other useful empirical regularities.

# Taking apart returns on equity

Figures 2 and 3 show that not all returns are created equal. A company's Return on Equity (ROE) contains both an operating component and a financing component or "leverage effect". The operating component reflects the profitability of the company's operations - the actual "business" it is engaged in - independently of how that business is funded. The financing component, on the other hand, reflects the extent to which the company's ROE received a boost from the use of financial leverage. Either or both components can drive a change in ROE from one period to another, and they may have different implications for the sustainability of ROE and growth going forward. Our primary focus in this report will be on the operating component. The main reason for this is that we expect the drivers of operating profitability to have the most useful base rates, because they actually derive from structural properties of a company or an industry, not from idiosyncratic financing choices.

Return on Equity contains both an operating component and a leverage effect. Our primary focus will be on operating returns, as they are more structural and therefore more likely to have useful base rates.

Figure 2: Lower return on capital, higher leverage effect  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/8bc390e3-b2d5-4db7-a81a-c2da367580c1/3b7be6141754ef022861d73ce1f479d72ce39291b1b98378a010b953b83aa2a8.jpg)  
Source: UBS Research.

Figure 3: Higher return on capital, lower leverage effect  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/8bc390e3-b2d5-4db7-a81a-c2da367580c1/16bbde5c16df506023b0d11c205fd5974ef3dfc42711e863ad2a57722ceb2c7d.jpg)  
Source: UBS Research.

# The profitability of a company's operations

Let's forget for a moment how exactly a particular business is financed. All we have to know for now is that an amount of capital was invested in a number of income-generating assets. How much income is generated by those assets per unit of capital invested, determines the company's operating profitability. A simple example would be the rental yield of two condominiums that are near-identical in terms of size, location and other relevant attributes. It does not matter that one of the condos is financed entirely with cash, while the other is financed for  $90\%$  with

a residential mortgage loan: The rental yield – the operating profitability of the asset – is the same for both.

Before we can start calculating the base rates of the key drivers of operating profitability, we need to define those drivers with greater precision. To begin with, what do we mean by "capital"? Two very commonly used terms in financial analysis are capital employed (CE, as in ROCE) and invested capital (IC, as in ROIC). Both of these are intended to be agnostic of the financing mix – equity, debt, and all their hybrid forms – and simply measure the total amount of capital invested at the enterprise level. But because there can be quite a bit of variation in how CE and IC are defined in practice, in this report we will use the closely related but conceptually more rigorous measure of Net Operating Assets (NOA). NOA corresponds to the asset base we typically associate with a company's operations – e.g., PP&E, receivables and inventory – but subtracts from that asset base operating liabilities like accounts payable, effectively giving companies credit for good working capital management.

Next, we need a more precise measure of operating income. In this report we will use Net Operating Income After Tax (NOPAT), which broadly corresponds to EBIT adjusted for a statutory tax rate.

We can now combine our metrics for invested capital and operating income and define Return on Net Operating Assets (RNOA), the most important overall driver of operating profitability and therefore intrinsic value:

$$
RNOA = \frac{NOPAT}{NOA}
$$

There are a number of ways in which a company can achieve a high return on its operating assets. It can generate lots of revenue per unit of operating asset but at low profit margins, it can generate little revenue per unit of operating asset but at high profit margins, or it can operate anywhere in between. That is why, from a forecasting perspective, it is both intuitive and useful to decompose RNOA into Operating Profit Margin (OPM) on the one hand, and Operating Asset Turnover (OpATO) on the other:

$$
RNOA = OPM \times OpATO
$$

where:

$$
OPM = \frac{NOPAT}{Sales}
$$

and:

$$
OpATO = \frac{Sales}{NOA}
$$

This decomposition of the return on capital illustrates a powerful general principle of profitability analysis. Starting at the top level, we can:

(1) drill down further by decomposing each value driver into its component ratios or sub-drivers that a) make intuitive economic sense and b) clarify what, in turn, drives the higher-level value drivers;  
(2) examine, for each sub-driver, the extent to which base rates can inform our forecasts, and whether there are any sustainability issues we should take into account.

Profitability analysis allows us to decompose the drivers of value to the level at which we feel most comfortable making a forecast guided by base rates.

As an additional example of this principle, we can also analyse OPM at a more granular level by further decomposing it into the Gross Margin (GM) and the Other Operating Expenses Ratio (OOER):

$$
OPM = GM - OOER
$$

where:

$$
GM = \frac{Sales - COGS}{Sales}
$$

and:

$$
OOER = \frac{\text{Other Operating Expenses}}{Sales}
$$

The point of this further decomposition is that Cost of Goods Sold (COGS) and Selling, General and Administrative expenses (SG&A), for example, may behave differently from a statistical perspective. Examining the base rates for each ratio separately may be more informative for our forecasts than looking only at their combined impact on OPM.

Similarly, OpATO can be further decomposed into the various turnover – or asset efficiency ratios – that are staples of every standard ratio analysis: PP&E turnover, accounts receivable turnover (equivalent to "days in accounts receivable"), inventory turnover ("days in inventory") and accounts payable turnover ("days in accounts payable").

To some extent, the focus on turnover ratios obscures the reality that the assets don't drive revenue by themselves. The ultimate driver of revenue is client demand, which is why sales growth should be considered a key value driver in its own right, in addition to the drivers that define the profitability tree.

Figure 4 shows an example of a fully expanded profitability tree. The main takeaway is that we can continue to dig deeper into the drivers of profitability until we hit the levels at which we are most comfortable making forecasts. At every level of the tree, base rates, reversion to the mean and potentially other statistical patterns can provide a data-driven outside view on our forecasts.

Figure 4: Profitability Analysis: dissecting the drivers of fundamental value  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/8bc390e3-b2d5-4db7-a81a-c2da367580c1/d965b2b363d8e0905393648324988d2bd9bae8d4240d7e4a310a69e71e0d8a0f.jpg)  
Source: UBS Research.

Having discussed which value drivers make most sense for the forecaster to focus on, we can now turn to the actual calculation of base rates.

# Which base rates should we look at?

As we pointed out earlier in this report, the most straightforward base rates are derived from one or more reference classes, i.e. sets of realised outcomes of events that can be considered "sufficiently similar" to the event for which we are trying to estimate the outcome. Simply put: can we say something about the future by looking at what happened in the past, in sufficiently similar situations? Apart from containing the outcomes of sufficiently similar events, the reference class will also have to be sufficiently large to be meaningful from a statistical perspective.

Base rates are derived from a reference class: a set of previous outcomes of events that are sufficiently similar to the event we are trying to forecast.

# Cross-sectional base rates

One way to implement the reference class idea is to construct a peer universe of companies that are sufficiently similar to the company for which we need to construct forecasts. Ideally these companies not only have very similar operating models, but also very similar product, client and geographical segments. In the absence of a careful matching exercise based on the most relevant attributes, a reference class consisting simply of the company's industry peers is usually not a bad place to start.

As an example, Figures 5 and 6 show how sales growth and operating profit margins were distributed for North American utility companies over the 25-year period from 1993 through 2017.

Figure 5: 3y Sales Growth, NA utilities  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/8bc390e3-b2d5-4db7-a81a-c2da367580c1/19de47f6e0cb0ce1183851385e070ecd90a78b9a31caf05f4b8aa818f8e41708.jpg)  
Source: UBS Research, FactSet.

Figure 6: Operating Profit Margin, NA utilities  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/8bc390e3-b2d5-4db7-a81a-c2da367580c1/16a0ab06572658553befcf7a6d7cc548e649fe0c964d405d2c9ba7cf79fa35dd.jpg)  
Source: UBS Research, FactSet.

How should we use these base rates? Given that we will rarely succeed in creating a perfect reference class from industry peers, the base rates will be useful not so much for telling us what the forecast should be, as for telling us what it is unlikely to be. For example, how comfortable would we be with forecasting a 3-year compound annual sales growth of  $35\%$  for a North American utility company, knowing from the frequency table in Figure 7 that an equal or higher number was achieved in only  $6\%$  of all instances over the period from 1993 through 2017 (top decile)?

Again, let's not forget that this is an entirely context-agnostic, data-driven outside view. The experienced analyst's inside view will be informed by a mosaic of incremental contextual information that may well lead her to deviate significantly from the base rates. This is not an either-or, but rather a both-and argument: given what we know about forecasting bias, it is simply good mental discipline to consider the inside view together with the outside view. More often than not, base rate outlier red flags will turn out to be "false positives": While the base rates may suggest that a gross margin forecast is highly unlikely based on an industry peer comparison, the analyst's inside view is likely to be informed by detailed contextual information about the company's different operating model, strategy, cost management, operating leverage, product mix, etc.

# Time-series base rates

Another logical candidate for a reference class is the company's own history. At first glance it would seem that this class perfectly addresses the "sufficiently similar" criterion: after all, we are looking at the exact same company. Or are we? Unfortunately – for the purpose of establishing base rates at least – business models evolve over time, as does the economic environment in which companies operate. Here again, the analyst will be best placed to evaluate how comparable the historical context is to the present and near future. Nonetheless, if the time-series base rate flags the analyst's forecast of a particular value driver as an outlier vs. the company's own history, it is simply good discipline to go over the logic again in order to dismiss the flag as a false positive with some confidence.

Figures 8 and 9 combine the cross-sectional and time-series dimensions for the asset turnover ratios in the North America oil and gas exploration and production and semiconductor industries respectively. The graphs show the evolution of the industry mean and median over time, while the range bounded by the upper (median + 1 standard deviation) and lower (median - 1 standard deviation) dotted lines gives a sense of the variability within the industry peer universe in any given year.

Figure 8: Asset Turnover, NA oil & gas e&p  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/8bc390e3-b2d5-4db7-a81a-c2da367580c1/cecb7f122bc810d1bd9d47163fbcb4269902bb886bf21d077e68922df5fc5823.jpg)  
Source: UBS Research, FactSet.

Figure 7: Base Rates 3y Sales CAGR  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/8bc390e3-b2d5-4db7-a81a-c2da367580c1/60ae544bb2ca2482f02ed92743b30595a465758e19281a2c6d9f924b25c184c9.jpg)  
Source: UBS Research, FactSet.

Figure 9: Asset Turnover, NA semiconductors  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/8bc390e3-b2d5-4db7-a81a-c2da367580c1/dd98a541a0db572cbded91b870e5d29a69692e19e4b52864069d87ddf3a8d42f.jpg)  
Source: UBS Research, FactSet.

# Reversion to the mean

The time-series and cross-sectional base rates give us an indication of how plausible – or rather, implausible – a particular forecast is, in light of what is typical for the company or its industry peers. But what if we could tease out of the data some extra information about the direction a value driver is most likely to take in the near future, based on where it is today?

The drivers we have to forecast to estimate the intrinsic value of equities are more than mere accounting constructs. They reflect an underlying economic reality of financing, investing, manufacturing, marketing, and – in most industries at least – relentless competition. As a result, in many industries key value drivers tend to converge to a long-term average over time. This phenomenon is loosely called "reversion to the mean". Simply put: over time, high values tend to feel the pull of gravity, while low values tend to recover. Needless to say, from a forecasting perspective it is extremely useful to be aware of the extent to which a company's key value drivers exhibit mean-reverting behaviour. Also, in any multi-period intrinsic value calculation, decent estimates of the long-term sector averages as well as the speed of decline – typically implemented as "fade rates" in company models – are far more credible and defensible valuation inputs than the customary abrupt  $3\%$  terminal growth rate.

In their 2001 study of the distributional properties of the principal drivers of intrinsic value, Nissim and Penman clearly demonstrate reversion to the mean for a number of ratios, including RNOA. Their results are more marked than what we can show at the industry sector level, because their much larger sample includes all NYSEand AMEX-listed companies with COMPUSTAT data over the 37-year period from 1963 to 1999.

In Figures 10 and 11, we demonstrate the mean-reverting behaviour of Return on Net Operating Assets in the North America materials and consumer staples industry sectors, respectively.

In many industries, key value drivers show a tendency to converge to long-term industry averages over time. High values tend to feel the pull of gravity while low values tend to recover. Forecasters often fail to take this phenomenon into account.

Figure 10: Mean reversion of RNOA, NA materials  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/8bc390e3-b2d5-4db7-a81a-c2da367580c1/5deafa05da1f70e60d4c4f9d76acd8e52338705e58ce787f74a6e9c9b2d36bdf.jpg)  
Source: UBS Research, FactSet.

Figure 11: Mean reversion of RNOA, NA consumer staples  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/8bc390e3-b2d5-4db7-a81a-c2da367580c1/fed9db63be93af10f12ecfc88d14d4d7a13ab2a3243a85f783fc7567f3ef6115.jpg)  
Source: UBS Research, FactSet.

How do these graphs work? We start by picking a base year – year 0 – in which we rank all companies in the sample by Return on Net Operating Assets (RNOA) and form 5 (quintile) portfolios. Then we calculate the median RNOA for each portfolio and track it over the following 9 years (years 1, 2, 3, 4, 5, 6, 7, 8 and 9 on the x-axis). To make sure that the mean reversion pattern is not a fluke that is unique to the base year we happened to choose, we repeat this exercise for 16

different base years. The graph displays the mean of the medians for these 16 sets of calculations.

There is a connection between reversion to the mean and the extent to which the values of the metric in question are correlated period by period. If it were the case that profit margins strongly persist over time, then the ranking of the companies would hardly change from one period to another: High-margin companies would simply continue to be high-margin companies, and vice versa. In other words, there would be a high correlation between the way the companies are ranked in one period and the way they are ranked in the next. For there to be reversion to the mean, the correlation between current and future values of the metric must be less than perfect. In fact, the lower the correlation, the faster the metric will converge to the long-term average (Figures 12 and 13).

Figure 12: Serial correlation of RNOA, NA materials  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/8bc390e3-b2d5-4db7-a81a-c2da367580c1/34be4ea58f0c1c1c8cbc38a4c8dcb5ea8020e6ea2bb20d771eedf05758d1a794.jpg)  
Source: UBS Research, FactSet.

Figure 13: Serial correlation of RNOA, NA consumer staples  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/8bc390e3-b2d5-4db7-a81a-c2da367580c1/2e6e7c9f4ea19af3c166e4253dec6e1da8da5e52ee4599bcd093c8cd99c5c363.jpg)  
Source: UBS Research, FactSet.

# Correcting forecasts for mean reversion

When a metric shows reversion to the mean, high realisations are more likely to be followed by lower realisations and vice versa. The speed at which the metric is pulled back to the long-term average is inversely related to how persistent – or, alternatively, how reliable or predictable – it is from period to period. Using operating profit margin as an example, the dynamics can be described by this simple equation:

$$
R N O A _ {\text {n e x t}} = \text {A v e r a g e} + \text {P e r s i s t e n c e} \times \left(R N O A _ {\text {c u r r e n t}} - \text {A v e r a g e}\right)
$$

where Persistence is a factor that only takes on values between 0 and 1.

When the metric is very persistent from period to period, subsequent realisations will tend to remain closer to the current value and decay more slowly. When the metric is not very persistent, subsequent realisations will tend to converge more quickly to the long-term average.

As it turns out, a rough approximation of the persistence factor is provided by the extent to which the metric is correlated from period to period – in other words, by the metric's serial correlation coefficient(s), examples of which are shown in Figures 12 and 13 above.

# An example

The industrial coatings company PPG (PPG-US) had a RNOA of  $19.4\%$  in the most recent fiscal year, 2017. The average RNOA for the North America materials sector over the period from 1993 to 2017 is  $14\%$ , and the 5-year correlation coefficient for the sector is  $24\%$ . Using the expression above, the outside view on PPG's projected RNOA in 5 years is:

$$
15.3 \% = 14.0 \% + 0.24 \times (19.4 \% - 14.0 \%)
$$

# More on Reference Classes

Going back to Sloan's Accrual Anomaly, it is worth thinking a bit more about the choice of reference class. The strong earnings reversion pattern only became apparent when companies were matched on the basis of the accrual content of their earnings. In other words: To optimally exploit the information in this pattern in a forecast of next-period earnings for a particular company, the appropriate reference class would have to consist of companies that all have earnings with similar accrual content.

Similarly, if we wanted an outside view on the future financial performance of an M&A transaction, choosing too broad a reference class – for example, all M&A transactions in the sector over the last ten years – may obscure the information we need. Maybe we should exclude all "merger-of equals" and cross-border deals and only consider domestic cash acquisitions?

The reference class trade-off is clear: On the one hand we would like to condition the class on all the relevant attributes of the company we are trying to forecast. On the other hand, the more closely we match the reference class with the company, the smaller the former becomes and the lower the statistical significance of the observed patterns.

# Combining the inside and outside views

To visualise the ideas in this section as completely realistic as opposed to academic, simply keep in mind the accrual anomaly arbitrage opportunity discussed in the first section of this report. How could analysts have adjusted their earnings forecasts to take into account the strongly mean-reverting behaviour of earnings with very high or very low accrual content?

In their work for DARPA, Kahneman and Tversky recommend a series of steps analysts can take to incorporate – at a minimum qualitatively – the outside view provided by the relevant base rates. We outline these steps below, adapting them to our own specific context of equity analysis.

# Step 1: Select the appropriate reference class

A reference class is a set of realised outcomes of events that are sufficiently similar to the one we are trying to forecast. In the area of equity analysis, two logical and practical reference classes for a company are a) a set of closely comparable industry sector peers, and b) the company's own history. Depending on the situation, a more careful matching of attributes may be necessary. Taking the accrual anomaly as an example, the accrual content of earnings was the key attribute driving the strong reversion to the mean. On the other hand, a reference class must be large enough to be statistically meaningful.

# Step 2: Document the relevant base rates for the chosen reference class

Whereas in many non-finance forecasting situations it can be quite difficult to gather sufficient data to document the base rates of a reference class in a statistically meaningful way, fortunately this is rarely our problem in finance. Using a combination of cross-section and time-series financial statement and price data, we can document the mean, median, standard deviation and mean reversion behaviour of key value drivers like return on capital, profit margin, asset turnover, as well as various valuation multiples.

# Step 3: Make an inside view forecast

The industry expert is ideally placed to judge the importance of the specific context of the company as it relates to the forecast. Not only will the analyst have a considerable amount of recent and incremental information, he or she will also know to what extent the company's industry peers or its own history are comparable to the situation at hand. Experience and intuition also come into play.

# Step 4: Adjust the inside view for potential reversion to the mean

This step does not have to be purely mechanistic. At a minimum, the analyst should take an active interest in where his or her forecast lies on the corresponding distribution for the reference class. Although outliers can be perfectly justified based on the specifics of the situation – the inside view – they are still outliers and as such deserve extra thought before the base rates are dismissed.

A more quantitative approach would be to adjust the inside view forecast for reversion to the mean as we illustrated earlier, using the base rates for the long-run average and the serial correlation coefficient as inputs:

$$
F o r e c a s t _ {a d j u s t e d} = A v e r a g e + P e r s i s t e n c e \times \left(F o r e c a s t _ {u n a d j u s t e d} - A v e r a g e\right)
$$

# Rise of the robo-forecaster? Not anytime soon

Considering that the inside view is prone to human bias, that a base-rates-driven outside view can help correct that bias, that the range of value-relevant alternative data sources is expanding, and that broad access to state-of-the-art machine learning technology is no longer an issue, could we be moving towards a quant-only world in which the best possible forecasts will be made by some form of AI? Until today, the extensive body of academic research that focuses on the relative accuracy of sell-side analysts' forecasts vs. that of statistical models has been able to pour cold water over that vision. Two notable milestones of this research were:

- Fried and Givoly (1982): Using a large sample of panel data, analysts' forecasts were shown to be more accurate than the forecasts made by a variety of time-series models<sup>8</sup>;  
- Brown, Griffin, Hagerman, and Zmijewski (1987): Analysts' forecast superiority over time-series models is shown to be due to (i) a timing advantage and (ii) an information advantage $^9$. The former derives from the fact that analysts can keep adjusting their earnings forecasts all the way up to the next announcement. The latter points to the fact that they process and combine more information sources – many of them unstructured – than the time series.

The Brown et al. (1987) study in particular was widely considered as having definitively settled the question of sell-side analysts' superiority over time-series models. As new statistical learning techniques become available, however, the temptation to restart the contest between man and machine seems too strong to resist. A more recent study by Ball and Ghysels (2017)<sup>10</sup> attempts to mimic the analyst's timing and information advantage by augmenting the time series of prior quarterly earnings data with higher-frequency industry and macro data, using a new estimation method (MIDAS) to combine the various information sources. Our Quant colleagues discuss this and other algorithmic earnings forecasting approaches in their report on EPS Forecasting.

The algorithms may be getting better, but it will be a while still before they can replace the industry expert analyst's inside view. Econometrics and machine learning methods are at their best when the reference classes they learn from are indeed sufficiently representative of the future. In these situations, analysts ignore the base rates information at their own peril. But when it comes to the analysis of new regimes, complex emerging themes, and certainly the "unknown unknowns", the sell-side analyst's inside view is – for now at least – still the only game in town.

Until now, academic research on the relative forecast accuracy of sell-side analysts vs. algorithms has come out in favour of the analysts. To maintain their lead, however, analysts would do well to pay more attention to the power of statistics.

# Valuation Method and Risk Statement

The immediate risk in relation to the subject matter covered by the UBS Fundamental Analytics team arises from the existence of accounting standard, valuation and modelling techniques that are open to interpretation and differing methods of application. In addition, our analysis tends to rely on reported financial statement information, consensus earnings forecasts and stock prices. Errors in these numbers are sometimes impossible to prevent (as when an item is misstated by a company or a data vendor).

At the time of writing, we believe the issues raised in this research to be relevant to investors, but this may change. Additionally, this research should not be read as a complete or definitive account of all relevant issues. Although we attempt to address all significant or nascent issues, these may not always be apparent, and may change over time.

Finally, this document should not be interpreted to mean that all the issues addressed in our research have a financial impact.

# Required Disclosures

This report has been prepared by UBS AG Hong Kong Branch, an affiliate of UBS AG. UBS AG, its subsidiaries, branches and affiliates are referred to herein as UBS.

For information on the ways in which UBS manages conflicts and maintains independence of its research product; historical performance information; and certain additional disclosures concerning UBS research recommendations, please visit www.ubs.com/disclosures. The figures contained in performance charts refer to the past; past performance is not a reliable indicator of future results. Additional information will be made available upon request. UBS Securities Co. Limited is licensed to conduct securities investment consultancy businesses by the China Securities Regulatory Commission. UBS acts or may act as principal in the debt securities (or in related derivatives) that may be the subject of this report. This recommendation was finalized on: 29 April 2019 12:25 PM GMT. UBS has designated certain Research department members as Derivatives Research Analysts where those department members publish research principally on the analysis of the price or market for a derivative, and provide information reasonably sufficient upon which to base a decision to enter into a derivatives transaction. Where Derivatives Research Analysts co-author research reports with Equity Research Analysts or Economists, the Derivatives Research Analyst is responsible for the derivatives investment views, forecasts, and/or recommendations.

Analyst Certification:Each research analyst primarily responsible for the content of this research report, in whole or in part, certifies that with respect to each security or issuer that the analyst covered in this report: (1) all of the views expressed accurately reflect his or her personal views about those securities or issuers and were prepared in an independent manner, including with respect to UBS, and (2) no part of his or her compensation was, is, or will be, directly or indirectly, related to the specific recommendations or views expressed by that research analyst in the research report.

UBS Investment Research: Global Equity Rating Definitions  

<table><tr><td>12-Month Rating</td><td>Definition</td><td>Coverage¹</td><td>IB Services²</td></tr><tr><td>Buy</td><td>FSR is &gt; 6% above the MRA.</td><td>47%</td><td>25%</td></tr><tr><td>Neutral</td><td>FSR is between -6% and 6% of the MRA.</td><td>39%</td><td>22%</td></tr><tr><td>Sell</td><td>FSR is &gt; 6% below the MRA.</td><td>14%</td><td>19%</td></tr><tr><td>Short-Term Rating</td><td>Definition</td><td>Coverage³</td><td>IB Services⁴</td></tr><tr><td>Buy</td><td>Stock price expected to rise within three months from the time the rating was assigned because of a specific catalyst or event.</td><td>&lt;1%</td><td>&lt;1%</td></tr><tr><td>Sell</td><td>Stock price expected to fall within three months from the time the rating was assigned because of a specific catalyst or event.</td><td>&lt;1%</td><td>&lt;1%</td></tr></table>

Source: UBS. Rating allocations are as of 31 March 2019.  
1:Percentage of companies under coverage globally within the 12-month rating category.  
2:Percentage of companies within the 12-month rating category for which investment banking (IB) services were provided within the past 12 months.  
3:Percentage of companies under coverage globally within the Short-Term rating category.  
4:Percentage of companies within the Short-Term rating category for which investment banking (IB) services were provided within the past 12 months.

KEY DEFINITIONS: Forecast Stock Return (FSR) is defined as expected percentage price appreciation plus gross dividend yield over the next 12 months. In some cases, this yield may be based on accrued dividends. Market Return Assumption (MRA) is defined as the one-year local market interest rate plus $5\%$ (a proxy for, and not a forecast of, the equity risk premium). Under Review (UR) Stocks may be flagged as UR by the analyst, indicating that the stock's price target and/or rating are subject to possible change in the near term, usually in response to an event that may affect the investment case or valuation. Short-Term Ratings reflect the expected near-term (up to three months) performance of the stock and do not reflect any change in the fundamental view or investment case. Equity Price Targets have an investment horizon of 12 months.

EXCEPTIONS AND SPECIAL CASES:UK and European Investment Fund ratings and definitions are: Buy: Positive on factors such as structure, management, performance record, discount; Neutral: Neutral on factors such as structure, management, performance record, discount; Sell: Negative on factors such as structure, management, performance record, discount. Core Banding Exceptions (CBE): Exceptions to the standard  $+ / - 6\%$  bands may be granted by the Investment Review Committee (IRC). Factors considered by the IRC include the stock's volatility and the credit spread of the respective company's debt. As a result, stocks deemed to be very high or low risk may be subject to higher or lower bands as they relate to the rating. When such exceptions apply, they will be identified in the Company Disclosures table in the relevant research piece.

Research analysts contributing to this report who are employed by any non-US affiliate of UBS Securities LLC are not registered/qualified as research analysts with FINRA. Such analysts may not be associated persons of UBS Securities LLC and therefore are not subject to the FINRA restrictions on communications with a subject company, public appearances, and trading securities held by a research analyst account. The name of each affiliate and analyst employed by that affiliate contributing to this report, if any, follows.

UBS AG Hong Kong Branch: Guy Weyns, PhD. UBS AG London Branch: Geoff Robinson, CA FCA; Renier Swanepoel.

Company Disclosures  

<table><tr><td>Company Name</td><td>Reuters</td><td>12-month rating</td><td>Short-term rating</td><td>Price</td><td>Price date</td></tr><tr><td>PPG Industries Inc.8, 16</td><td>PPG.N</td><td>Buy</td><td>N/A</td><td>US\$117.81</td><td>26 Apr 2019</td></tr></table>

Source: UBS. All prices as of local market close.  
Ratings in this table are the most current published ratings prior to this report. They may be more recent than the stock pricing date  
8. The equity analyst covering this company, a member of his or her team, or one of their household members has a long common stock position in this company.  
16. UBS Securities LLC makes a market in the securities and/or ADRs of this company.

Unless otherwise indicated, please refer to the Valuation and Risk sections within the body of this report. For a complete set of disclosure statements associated with the companies discussed in this report, including information on valuation and risk, please contact UBS Securities LLC, 1285 Avenue of Americas, New York, NY 10019, USA, Attention: Investment Research.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/8bc390e3-b2d5-4db7-a81a-c2da367580c1/b5d5a8e0e9aabd53509579820fa5c69901bc5035dbc51b8d3c068f85dcb1e685.jpg)  
PPG Industries Inc. (US$)

<table><tr><td>Date</td><td>Stock Price (US$)</td><td>Price Target (US$)</td><td>Rating</td></tr><tr><td>2016-01-26</td><td>92.58</td><td>110.0</td><td>Buy</td></tr><tr><td>2016-04-21</td><td>110.26</td><td>130.0</td><td>Buy</td></tr><tr><td>2016-10-07</td><td>93.73</td><td>120.0</td><td>Buy</td></tr><tr><td>2016-10-20</td><td>92.66</td><td>115.0</td><td>Buy</td></tr><tr><td>2017-04-20</td><td>106.37</td><td>118.0</td><td>Buy</td></tr><tr><td>2017-07-20</td><td>106.72</td><td>127.0</td><td>Buy</td></tr><tr><td>2017-10-19</td><td>114.31</td><td>128.0</td><td>Buy</td></tr><tr><td>2018-01-16</td><td>116.64</td><td>130.0</td><td>Buy</td></tr><tr><td>2018-01-18</td><td>118.41</td><td>132.0</td><td>Buy</td></tr><tr><td>2018-04-19</td><td>109.64</td><td>135.0</td><td>Buy</td></tr><tr><td>2018-06-14</td><td>103.96</td><td>131.0</td><td>Buy</td></tr><tr><td>2018-10-08</td><td>109.58</td><td>123.0</td><td>Buy</td></tr><tr><td>2019-01-17</td><td>107.36</td><td>120.0</td><td>Buy</td></tr><tr><td>2019-04-11</td><td>114.52</td><td>130.0</td><td>Buy</td></tr><tr><td>2019-04-18</td><td>119.86</td><td>135.0</td><td>Buy</td></tr></table>

Source: UBS; as of 26 Apr 2019

# Global Disclaimer

This document has been prepared by UBS AG Hong Kong Branch, an affiliate of UBS AG. UBS AG, its subsidiaries, branches and affiliates are referred to herein as UBS.

This Document is provided solely to recipients who are expressly authorized by UBS to receive it. If you are not so authorized you must immediately destroy the Document.

Global Research is provided to our clients through UBS Neo, and in certain instances, UBS.com and any other system or distribution method specifically identified in one or more communications distributed through UBS Neo or UBS.com (each a system) as an approved means for distributing Global Research. It may also be made available through third party vendors and distributed by UBS and/or third parties via e-mail or alternative electronic means. The level and types of services provided by Global Research to a client may vary depending upon various factors such as a client's individual preferences as to the frequency and manner of receiving communications, a client's risk profile and investment focus and perspective (e.g., market wide, sector specific, long-term, short-term, etc.), the size and scope of the overall client relationship with UBS and legal and regulatory constraints.

All Global Research is available on UBS Neo. Please contact your UBS sales representative if you wish to discuss your access to UBS Neo.

When you receive Global Research through a System, your access and/or use of such Global Research is subject to this Global Research Disclaimer and to the UBS Neo Platform Use Agreement (the "Neo Terms") together with any other relevant terms of use governing the applicable System.

When you receive Global Research via a third party vendor, e-mail or other electronic means, you agree that use shall be subject to this Global Research Disclaimer, the Neo Terms and where applicable the UBS Investment Bank terms of business (https://www.ubs.com/global/en/investment-bank/regulatory.html) and to UBS's Terms of Use/Disclaimer (http://www.ubs.com/global/en/legalinfo2/disclaimer.html). In addition, you consent to UBS processing your personal data and using cookies in accordance with our Privacy Statement (http://www.ubs.com/global/en/legalinfo2/privacy.html) and cookie notice (http://www.ubs.com/global/en/homepage/cookies/cookie-management.html).

If you receive Global Research, whether through a System or by any other means, you agree that you shall not copy, revise, amend, create a derivative work, provide to any third party, or in any way commercially exploit any UBS research provided via Global Research or otherwise, and that you shall not extract data from any research or estimates provided to you via Global Research or otherwise, without the prior written consent of UBS.

This document is for distribution only as may be permitted by law. It is not directed to, or intended for distribution to or use by, any person or entity who is a citizen or resident of or located in any locality, state, country or other jurisdiction where such distribution, publication, availability or use would be contrary to law or regulation or would subject UBS to any registration or licensing requirement within such jurisdiction.

This document is a general communication and is educational in nature; it is not an advertisement nor is it a solicitation or an offer to buy or sell any financial instruments or to participate in any particular trading strategy. Nothing in this document constitutes a representation that any investment strategy or recommendation is suitable or appropriate to an investor's individual circumstances or otherwise constitutes a personal recommendation. By providing this document, none of UBS or its representatives has any responsibility or authority to provide or have provided investment advice in a fiduciary capacity or otherwise. Investments involve risks, and investors should exercise prudence and their own judgment in making their investment decisions. None of UBS or its representatives is suggesting that the recipient or any other person take a specific course of action or any action at all. By receiving this document, the recipient acknowledges and agrees with the intended purpose described above and further disclaims any expectation or belief that the information constitutes investment advice to the recipient or otherwise purports to meet the investment objectives of the recipient. The financial instruments described in the document may not be eligible for sale in all jurisdictions or to certain categories of investors.

Options, structured derivative products and futures (including OTC derivatives) are not suitable for all investors. Trading in these instruments is considered risky and may be appropriate only for sophisticated investors. Prior to buying or selling an option, and for the complete risks relating to options, you must receive a copy of "The Characteristics and Risks of Standardized Options." You may read the document at http://www.theoCC.com/publications/risks/riskchap1.jsp or ask your salesperson for a copy. Various theoretical explanations of the risks associated with these instruments have been published. Supporting documentation for any claims, comparisons, recommendations, statistics or other technical data will be supplied upon request. Past performance is not necessarily indicative of future results. Transaction costs may be significant in option strategies calling for multiple purchases and sales of options, such as spreads and straddles. Because of the importance of tax considerations to many options transactions, the investor considering options should consult with his/her tax advisor as to how taxes affect the outcome of contemplated options transactions.

Mortgage and asset-backed securities may involve a high degree of risk and may be highly volatile in response to fluctuations in interest rates or other market conditions. Foreign currency rates of exchange may adversely affect the value, price or income of any security or related instrument referred to in the document. For investment advice, trade execution or other enquiries, clients should contact their local sales representative.

The value of any investment or income may go down as well as up, and investors may not get back the full (or any) amount invested. Past performance is not necessarily a guide to future performance. Neither UBS nor any of its directors, employees or agents accepts any liability for any loss (including investment loss) or damage arising out of the use of all or any of the Information.

Prior to making any investment or financial decisions, any recipient of this document or the information should take steps to understand the risk and return of the investment and seek individualized advice from his or her personal financial, legal, tax and other professional advisors that takes into account all the particular facts and circumstances of his or her investment objectives.

Any prices stated in this document are for information purposes only and do not represent valuations for individual securities or other financial instruments. There is no representation that any transaction can or could have been effected at those prices, and any prices do not necessarily reflect UBS's internal books and records or theoretical model-based valuations and may be based on certain assumptions. Different assumptions by UBS or any other source may yield substantially different results.

No representation or warranty, either expressed or implied, is provided in relation to the accuracy, completeness or reliability of the information contained in any materials to which this document relates (the "Information"), except with respect to Information concerning UBS. The Information is not intended to be a complete statement or summary of the securities, markets or developments referred to in the document. UBS does not undertake to update or keep current the Information. Any opinions expressed in this document may change without notice and may differ or be contrary to opinions expressed by other business areas or groups, personnel or other representative of UBS. Any statements contained in this report attributed to a third party represent UBS's interpretation of the data, information and/or opinions provided by that third party either publicly or through a subscription service, and such use and interpretation have not been reviewed by the third party. In no circumstances may this document or any of the Information (including any forecast, value, index or other calculated amount ("Values")) be used for any of the following purposes:

(i) valuation or accounting purposes;

(ii) to determine the amounts due or payable, the price or the value of any financial instrument or financial contract; or

(iii) to measure the performance of any financial instrument including, without limitation, for the purpose of tracking the return or performance of any Value or of defining the asset allocation of portfolio or of computing performance fees.

By receiving this document and the Information you will be deemed to represent and warrant to UBS that you will not use this document or any of the Information for any of the above purposes or otherwise rely upon this document or any of the Information.

UBS has policies and procedures, which include, without limitation, independence policies and permanent information barriers, that are intended, and upon which UBS relies, to manage potential conflicts of interest and control the flow of information within divisions of UBS and among its subsidiaries, branches and affiliates. For further information on the ways in which UBS manages conflicts and maintains independence of its research products, historical performance information and certain additional disclosures concerning UBS research recommendations, please visit www.ubs.com/disclosures.

Research will initiate, update and cease coverage solely at the discretion of UBS Research Management, which will also have sole discretion on the timing and frequency of any published research product. The analysis contained in this document is based on numerous assumptions. All material information in relation to published research reports, such as valuation methodology, risk statements, underlying assumptions (including sensitivity analysis of those assumptions), ratings history etc. as required by the Market Abuse Regulation, can be found on UBS Neo. Different assumptions could result in materially different results.

The analyst(s) responsible for the preparation of this document may interact with trading desk personnel, sales personnel and other parties for the purpose of gathering, applying and interpreting market information. UBS relies on information barriers to control the flow of information contained in one or more areas within UBS into other

are, units, groups or affiliates of UBS. The compensation of the analyst who prepared this document is determined exclusively by research management and senior management (not including investment banking). Analyst compensation is not based on investment banking revenues; however, compensation may relate to the revenues of UBS and/or its divisions as a whole, of which investment banking, sales and trading are a part, and UBS's subsidiaries, branches and affiliates as a whole.

For financial instruments admitted to trading on an EU regulated market: UBS AG, its affiliates or subsidiaries (excluding UBS Securities LLC) acts as a market maker or liquidity provider (in accordance with the interpretation of these terms under English law or, if not carried out by UBS in the UK the law of the relevant jurisdiction in which UBS determines it carries out the activity) in the financial instruments of the issuer save that where the activity of liquidity provider is carried out in accordance with the definition given to it by the laws and regulations of any other EU jurisdictions, such information is separately disclosed in this document. For financial instruments admitted to trading on a non-EU regulated market: UBS may act as a market maker save that where this activity is carried out in the US in accordance with the definition given to it by the relevant laws and regulations, such activity will be specifically disclosed in this document. UBS may have issued a warrant the value of which is based on one or more of the financial instruments referred to in the document. UBS and its affiliates and employees may have long or short positions, trade as principal and buy and sell in instruments or derivatives identified herein; such transactions or positions may be inconsistent with the opinions expressed in this document.

Within the past 12 months UBS AG, its affiliates or subsidiaries may have received or provided investment services and activities or ancillary services as per MiFID II which may have given rise to a payment or promise of a payment in relation to these services from or to this company.

Where Global Research refers to "UBS Evidence Lab Inside" or has made use of data provided by UBS Evidence Lab you understand that UBS Evidence Lab is a separate department to Global Research and that UBS Evidence Lab does not provide research, investment recommendations or advice.

United Kingdom: This material is distributed by UBS AG, London Branch to persons who are eligible counterparties or professional clients. UBS AG, London Branch is authorised by the Prudential Regulation Authority and subject to regulation by the Financial Conduct Authority and limited regulation by the Prudential Regulation Authority. Europe: Except as otherwise specified herein, these materials are distributed by UBS Europe SE, a subsidiary of UBS AG, to persons who are eligible counterparties or professional clients (as detailed in the Bundesanstalt für Finanzdienstleistungsaufsicht (BaFin)Rules and according to MIFID) and are only available to such persons. The information does not apply to, and should not be relied upon by, retail clients. UBS Europe SE is authorised by the [European Central Bank (ECB)] and regulated by the BaFin and the ECB. France: Prepared by UBS Europe SE and distributed by UBS Europe SE and UBS Securities France S.A. UBS Securities France S.A. is regulated by the ACPR (Autorité de Contrôle Prudentiel et de Résolution) and the Autorité des Marchés Financiers (AMF). Where an analyst of UBS Securities France S.A. has contributed to this document, the document is also deemed to have been prepared by UBS Securities France S.A. Germany, Luxembourg, the Netherlands, Belgium and Ireland: Prepared by UBS AG, London Branch and distributed by UBS AG, London Branch and UBS Europe SE. Spain: Prepared by UBS Europe SE and distributed by UBS Europe SE and UBS Securities España SV, SA. UBS Securities España SV, SA is regulated by the Comisión Nacional del Mercado de Valores (CNMV).

Turkey: Distributed by UBS AG, London Branch. No information in this document is provided for the purpose of offering, marketing and sale by any means of any capital market instruments and services in the Republic of Turkey. Therefore, this document may not be considered as an offer made or to be made to residents of the Republic of Turkey. UBS AG, London Branch is not licensed by the Turkish Capital Market Board under the provisions of the Capital Market Law (Law No. 6362). Accordingly, neither this document nor any other offering material related to the instruments/services may be utilized in connection with providing any capital market services to persons within the Republic of Turkey without the prior approval of the Capital Market Board. However, according to article 15 (d) (ii) of the Decree No. 32, there is no restriction on the purchase or sale of the securities abroad by residents of the Republic of Turkey. Poland: Distributed by UBS Europe SE (spolka z ograniczona odpwiedzialnoscia) Oddzial w Polsc regulated by the Polish Financial Supervision Authority. Where an analyst of UBS Europe SE (spolka z ograniczona odpwiedzialnoscia) Oddzial w Polsc has contributed to this document, the document is also deemed to have been prepared by UBS Europe SE (spolka z ograniczona odpwiedzialnoscia) Oddzial w Polsc. Russia: Prepared and distributed by UBS Bank (OOO). Switzerland: Distributed by UBS AG to persons who are institutional investors only. UBS AG is regulated by the Swiss Financial Market Supervisory Authority (FINMA). Italy: Prepared by UBS Europe SE and distributed by UBS Europe SE and UBS Europe SE, Italy Branch. Where an analyst of UBS Europe SE, Italy Branch has contributed to this document, the document is also deemed to have been prepared by UBS Europe SE, Italy Branch. South Africa: Distributed by UBS South Africa (Pty) Limited (Registration No. 1995/011140/07), an authorised user of the JSE and an authorised Financial Services Provider (FSP 7328). Israel: This material is distributed by UBS AG, London Branch. UBS Securities Israel Ltd is a licensed Investment Marketer that is supervised by the Israel Securities Authority (ISA). UBS AG, London Branch and its affiliates incorporated outside Israel are not licensed under the Israeli Advisory Law. UBS AG, London Branch is not covered by insurance as required from a licensee under the Israeli Advisory Law. UBS may engage among others in issuance of Financial Assets or in distribution of Financial Assets of other issuers for fees or other benefits. UBS AG, London Branch and its affiliates may prefer various Financial Assets to which they have or may have Affiliation (as such term is defined under the Israeli Advisory Law). Nothing in this Material should be considered as investment advice under the Israeli Advisory Law. This Material is being issued only to and/or is directed only at persons who are Eligible Clients within the meaning of the Israeli Advisory Law, and this material must not be relied on or acted upon by any other persons. Saudi Arabia: This document has been issued by UBS AG (and/or any of its subsidiaries, branches or affiliates), a public company limited by shares, incorporated in Switzerland with its registered offices at Aeschenvorstadt 1, CH-4051 Basel and Bahnhofstrasse 45, CH-8001 Zurich. This publication has been approved by UBS Saudi Arabia (a subsidiary of UBS AG), a Saudi closed joint stock company incorporated in the Kingdom of Saudi Arabia under commercial register number 1010257812 having its registered office at Tatweer Towers, P.O. Box 75724, Riyadh 11588, Kingdom of Saudi Arabia. UBS Saudi Arabia is authorized and regulated by the Capital Market Authority to conduct securities business under license number 08113-37. UAE /

Dubai: The information distributed by UBS AG Dubai Branch is only intended for Professional Clients and/or Market Counterparties, as classified under the DFSA rulebook. No other person should act upon this material/communication. The information is not for further distribution within the United Arab Emirates. UBS AG Dubai Branch is regulated by the DFSA in the DIFC. UBS is not licensed to provide banking services in the UAE by the Central Bank of the UAE, nor is it licensed by the UAE Securities and Commodities Authority. United States: Distributed to US persons by either UBS Securities LLC or by UBS Financial Services Inc., subsidiaries of UBS AG; or by a group, subsidiary or affiliate of UBS AG that is not registered as a US broker-dealer (a 'non-US affiliate') to major US institutional investors only. UBS Securities LLC or UBS Financial Services Inc. accepts responsibility for the content of a document prepared by another non-US affiliate when distributed to US persons by UBS Securities LLC or UBS Financial Services Inc. All transactions by a US person in the securities mentioned in this document must be effected through UBS Securities LLC or UBS Financial Services Inc., and not through a non-US affiliate. UBS Securities LLC is not acting as a municipal advisor to any municipal entity or obligated person within the meaning of Section 1SB of the Securities Exchange Act (the "Municipal Advisor Rule"), and the opinions or views contained herein are not intended to be, and do not constitute, advice within the meaning of the Municipal Advisor Rule. Canada: Distributed by UBS Securities Canada Inc., a registered investment dealer in Canada and a Member-Canadian Investor Protection Fund, or by another affiliate of UBS AG that is registered to conduct business in Canada or is otherwise exempt from registration. Mexico: This report has been distributed and prepared by UBS Casa de Bolsa, S.A. de C.V., UBS Grupo Financiero, an entity that is part of UBS Grupo Financiero, S.A. de C.V. and is a subsidiary of UBS AG. This document is intended for distribution to institutional or sophisticated investors only. Research reports only reflect the views of the analysts responsible for the reports. Analysts do not receive any compensation from persons or entities different from UBS Casa de Bolsa, S.A. de C.V., UBS Grupo Financiero, or different from entities belonging to the same financial group or business group of such. For Spanish translations of applicable disclosures, please go to www.ubs.com/disclosures. Brazil: Except as otherwise specified herein, this material is prepared by UBS Brasil CCTVM S.A. to persons who are eligible investors residing in Brazil, which are considered to be Investidos Professionais, as designated by the applicable regulation, mainly the CVM Instruction No. 539 from the 13th of November 2013 (determines the duty to verify the suitability of products, services and transactions with regards to the client's profile). Hong Kong: Distributed by UBS Securities Asia Limited and/or UBS AG, Hong Kong Branch. Please contact local licensed/registered representatives of UBS Securities Asia Limited and/or UBS AG, Hong Kong Branch in respect of any matters arising from, or in connection with, the analysis or document. Singapore: Distributed by UBS Securities Pte. Ltd. [MCI (P) 009/09/2018 and Co. Reg. No.: 198500648C] or UBS AG, Singapore Branch. Please contact UBS Securities Pte. Ltd., an exempt financial adviser under the Singapore Financial Advisers Act (Cap. 110); or UBS AG, Singapore Branch, an exempt financial adviser under the Singapore Financial Advisers Act (Cap. 110) and a wholesale bank licensed under the Singapore Banking Act (Cap. 19) regulated by the Monetary Authority of Singapore, in respect of any matters arising from, or in connection with, the analysis or document. The recipients of this document represent and warrant that they are accredited and institutional investors as defined in the Securities and Futures Act (Cap. 289). Japan: Distributed by UBS Securities Japan Co., Ltd. to professional investors (except as otherwise permitted). Where this document has been prepared by UBS Securities Japan Co., Ltd., UBS Securities Japan Co., Ltd. is the author, publisher and distributor of the document. Distributed by UBS AG, Tokyo Branch to Professional Investors (except as otherwise permitted) in relation to foreign exchange and other banking businesses when relevant. Australia: Clients of UBS AG: Distributed by UBS AG (ABN 47 088 129 613 and holder of Australian Financial Services License No. 231087). Clients of UBS Securities Australia Ltd: Distributed by UBS Securities Australia Ltd (ABN 62 008 586 481 and holder of Australian Financial Services License No. 231098). This Document contains general information and/or general advice only and does not constitute personal financial product advice. As such, the Information in this document has been prepared without taking into account any investor's objectives, financial situation or needs, and investors should, before acting on the Information, consider the appropriateness of the Information, having regard to their objectives, financial situation and needs. If the Information contained in this document relates to the acquisition, or potential acquisition of a particular financial product by a 'Retail' client as defined by section 761G of the Corporations Act 2001 where a Product Disclosure Statement would be required, the retail client should obtain and consider the Product Disclosure Statement relating to the product before making any decision about whether to acquire the product. The UBS Securities Australia Limited Financial Services Guide is available at: www.ubs.com/ecs-research-fsq. New Zealand: Distributed by UBS New Zealand Ltd. UBS New Zealand Ltd is not a registered bank in New Zealand. You are being provided with this UBS publication or material because you have indicated to UBS that you are a "wholesale client" within the meaning of section 5C of the Financial Advisers Act 2008 of New Zealand (Permitted Client). This publication or material is not intended for clients who are not Permitted Clients (non-permitted Clients). If you are a non-permitted Client you must not rely on this publication or material. If despite this

warning you nevertheless rely on this publication or material, you hereby (i) acknowledge that you may not rely on the content of this publication or material and that any recommendations or opinions in such this publication or material are not made or provided to you, and (ii) to the maximum extent permitted by law (a) indemnify UBS and its associates or related entities (and their respective Directors, officers, agents and Advisors) (each a 'Relevant Person') for any loss, damage, liability or claim any of them may incur or suffer as a result of, or in connection with, your unauthorised reliance on this publication or material and (b) waive any rights or remedies you may have against any Relevant Person for (or in respect of) any loss, damage, liability or claim you may incur or suffer as a result of, or in connection with, your unauthorised reliance on this publication or material. Korea: Distributed in Korea by UBS Securities Pte. Ltd., Seoul Branch. This document may have been edited or contributed to from time to time by affiliates of UBS Securities Pte. Ltd., Seoul Branch. This material is intended for professional/institutional clients only and not for distribution to any retail clients. Malaysia: This material is authorized to be distributed in Malaysia by UBS Securities Malaysia Sdn. Bhd (Capital Markets Services License No.: CMSL/A0063/2007). This material is intended for professional/institutional clients only and not for distribution to any retail clients. India: Distributed by UBS Securities India Private Ltd. (Corporate Identity Number U67120MH1996PTC097299) 2/F, 2 North Avenue, Maker Maxity, Bandra Kurla Complex, Bandra (East), Mumbai (India) 400051. Phone: +912261556000. It provides brokerage services bearing SEBI Registration Numbers: NSE (Capital Market Segment): INB230951431, NSE (F&O Segment) INF230951431, NSE (Currency Derivatives Segment) INE230951431, BSE (Capital Market Segment) INB010951437; merchant banking services bearing SEBI Registration Number: INM000010809 and Research Analyst services bearing SEBI Registration Number: INH000001204. UBS AG, its affiliates or subsidiaries may have debt holdings or positions in the subject Indian company/companies. Within the past 12 months, UBS AG, its affiliates or subsidiaries may have received compensation for non-investment banking securities-related services and/or non-securities services from the subject Indian company/companies. The subject company/companies may have been a client/client of UBS AG, its affiliates or subsidiaries during the 12 months preceding the date of distribution of the research report with respect to investment banking and/or non-investment banking securities-related services and/or non-securities services. With regard to information on associates, please refer to the Annual Report at: http://www.ubs.com/global/en/about_ubs/investor Relations/annualreporting.htmlTaiwan: Distributed by UBS Securities Pte. Ltd., Taipei Branch which is regulated by the Taiwan Securities and Futures Bureau. Indonesia: This report is being distributed by PT UBS Sekuritas Indonesia and is delivered by its licensed employee(s), including marketing/sales person, to its client. PT UBS Sekuritas Indonesia, having its registered office at Wisma GKBI, 22nd floor, JL. Jend. Sudirman, kav.28, Jakarta 10210, Indonesia, is a subsidiary company of UBS AG and licensed under Capital Market Law no. 8 year 1995, a holder of broker-dealer and underwriter licenses issued by the Capital Market and Financial Institution Supervisory Agency (now Otoritas Jasa Keuangan/OJK). PT UBS Sekuritas Indonesia is also a member of Indonesia Stock Exchange and supervised by Otoritas Jasa Keuangan (OJK). Neither this report nor any copy hereof may be distributed in Indonesia or to any Indonesian citizens except in compliance with applicable Indonesian capital market laws and regulations. This report is not an offer of securities in Indonesia and may not be distributed within the territory of the Republic of Indonesia or to Indonesian citizens in circumstance which constitutes an offering within the meaning of Indonesian capital market laws and regulations.

The disclosures contained in research documents produced by UBS AG, London Branch or UBS Europe SE shall be governed by and construed in accordance with English law.

UBS specifically prohibits the redistribution of this document in whole or in part without the written permission of UBS and in any event UBS accepts no liability whatsoever for any redistribution of this document or its contents or the actions of third parties in this respect. Images may depict objects or elements that are protected by third party copyright, trademarks and other intellectual property rights. © UBS 2019. The key symbol and UBS are among the registered and unregistered trademarks of UBS. All rights reserved.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/8bc390e3-b2d5-4db7-a81a-c2da367580c1/257d5f8223460becf1805b6d0f01975cb6325c1a8257cf27881e7355a7651efc.jpg)
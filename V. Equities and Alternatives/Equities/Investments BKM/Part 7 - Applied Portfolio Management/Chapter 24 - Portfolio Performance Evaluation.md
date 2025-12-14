---
title: "Chapter 24 - Portfolio Performance Evaluation"
aliases:
  - Portfolio Performance Evaluation
parent_directory: Part 7 - Applied Portfolio Management
cssclasses: academia
---

# Portfolio Performance Evaluation

# 24

MOST FINANCIAL ASSETS are managed by professional investors, who thus at least indirectly allocate the lion's share of capital across firms. Efficient allocation therefore depends on the quality of these professionals and the ability of financial markets to identify and direct capital to the best stewards. Therefore, if capital markets are to be reasonably efficient, investors must be able to measure the performance of their asset managers.

How can we evaluate investment performance? It turns out that even an average portfolio return is not as straightforward to measure as it might seem. In addition, adjusting average returns for risk presents a host of other problems. In the end, performance evaluation is far from trivial.

We begin this chapter with the measurement of portfolio returns. From there we move on to conventional approaches to risk adjustment. We consider the situations in which each of the standard risk-adjusted performance measures will be of most interest to investors and show how style analysis may be viewed as a generalization of the index model and the alpha statistic that it generates.


Performance measurement becomes far more difficult when managers change portfolio composition during the measurement period, so we also examine the complications posed by changes in the risk characteristics of the portfolio. One particular way in which this may occur is when managers attempt to time the broad market and adjust portfolio beta in anticipation of market movements. Market timing raises a wide range of issues in performance evaluation.

We close the chapter with a look at performance attribution techniques. These are tools used to decompose managers' performance into results that can be attributed to security selection, sector selection, and asset allocation decisions.

# 24.1 The Conventional Theory of Performance Evaluation

# Average Rates of Return

We defined the holding-period return (HPR) in Section 5.1 of Chapter 5 and explained the difference between the arithmetic and geometric average. We begin with a brief review.

Suppose we evaluate the performance of a portfolio over a period of 20 years. The arithmetic average return is the sum of the 20 annual returns divided by 20. In contrast, the geometric average is the constant annual return over the 20 years that would provide the same total cumulative return over the entire investment period. Therefore, the geometric average,  $r_{G}$ , is defined by


$$
(1 + r _ {G}) ^ {2 0} = (1 + r _ {1}) (1 + r _ {2}) \dots (1 + r _ {2 0})
$$

The right-hand side of this equation is the compounded final value of a  $1 investment earning the 20 annual rates of return. The left-hand side is the compounded value of a$ 1 investment earning  $r_G$  each year. We solve for  $1 + r_G$  as

$$
1 + r _ {G} = \left[ (1 + r _ {1}) (1 + r _ {2}) \dots (1 + r _ {2 0}) \right] ^ {1 / 2 0}
$$

Each return has an equal weight in the geometric average. For this reason, the geometric average is referred to as a time-weighted average.

# Time-Weighted Returns versus Dollar-Weighted Returns

To set the stage for the more subtle issues that follow, let's start with a trivial example. Consider a stock paying a dividend of  $2 annually that currently sells for$ 50. You purchase the stock today, collect the $2 dividend, and then sell the stock for $53 at year-end. Your rate of return is

$$
\frac{\text{Total proceeds}}{\text{Initial investment}} = \frac{\text{Income} + \text{Capital gain}}{50} = \frac{2 + 3}{50} = .10, \text{or} 10\%
$$

Another way to derive the rate of return that is useful in the more difficult multiperiod case is to set up the investment as a discounted cash flow problem. Call  $r$  the rate of return that equates the present value of all cash flows from the investment with the initial outlay. In our example, the stock is purchased for  $50 and generates cash flows at year-end of$ 2 (dividend) plus $53 (sale of stock). Therefore, we solve  $50 = (2 + 53) / (1 + r)$  to find again that  $r = .10$ , or  $10\%$ .

When we consider investments over a period during which cash was added to or withdrawn from the portfolio, measuring the rate of return becomes more difficult. To continue our example, suppose that you purchase a second share of the same stock at the end of the first year and hold both shares until the end of year 2, at which point you sell each share for 54.

Total cash outlays and inflows are as follows:

<table><tr><td>Time</td><td>Outlay</td></tr><tr><td>0</td><td>$50 to purchase first share</td></tr><tr><td>1</td><td>$53 to purchase second share a year later</td></tr><tr><td></td><td>Proceeds</td></tr><tr><td>1</td><td>$2 dividend from initially purchased share</td></tr><tr><td>2</td><td>$4 dividend from the 2 shares held in the second year, plus $108 received from selling both shares at $54 each</td></tr></table>

Using the discounted cash flow (DCF) approach, we can solve for average return by equating the present values of the cash inflows and outflows:

$$
5 0 + \frac {5 3}{1 + r} = \frac {2}{1 + r} + \frac {1 1 2}{(1 + r) ^ {2}}
$$ resulting in  $r = 7.117\%$ . This is the internal rate of return on the investment.


The internal rate of return is called the dollar-weighted rate of return. It is "dollar weighted" because the stock's performance in the second year, when two shares of stock are held, has a greater influence on the average overall return than the first-year return, when only one share is held.

The time-weighted (geometric average) return is  $7.81\%$

$$
\begin{array}{l} r _ {1} = \frac {53 + 2 - 50}{50} = . 10 = 10 \% \quad r _ {2} = \frac {54 + 2 - 53}{53} = 0.566 = 5.66 \% \\ r _ {G} = (1. 1 0 \times 1. 0 5 6 6) ^ {1 / 2} - 1 = . 0 7 8 1 = 7. 8 1 \\ \end{array}
$$

The dollar-weighted average is less than the time-weighted average in this example because the return in the second year, when more money was invested, is lower.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/5b255b7be21814949d2b46b448fe1da6f7c4b7fc0c74733b68483d42187cd7ce.jpg)

# Concept Check 24.1

Shares of XYZ Corp. pay a $2 dividend at the end of every year on December 31. An investor buys two shares of the stock on January 1 at a price of $20 each, sells one of those shares for $22 a year later on the next January 1, and sells the second share an additional year later for $19. Find the dollar- and time-weighted rates of return on the 2-year investment.

# Adjusting Returns for Risk

Evaluating performance based on average return alone is not very useful because returns must be adjusted for risk before they can be compared meaningfully. The simplest and most popular way to make the adjustment is to compare rates of return with those of portfolios with similar risk characteristics. For example, high-yield bond portfolios are grouped into one comparison universe, growth stock equity funds are grouped into another, and so on. Then the (usually time-weighted) average returns of each fund within the universe are ordered, and each portfolio manager receives a percentile ranking of relative performance within the comparison group. For example, the manager with the ninth-best performance in a universe of 100 funds would be the 90th percentile manager: That performance was better than  $90\%$  of all competing funds over the evaluation period.


These relative rankings are usually displayed in a chart such as that in Figure 24.1. The chart summarizes performance rankings over four periods: one quarter, one year, three years, and five years. The top and bottom lines of each box are drawn at the rate of return of the 95th and 5th percentile managers. The three dashed lines correspond to the rates of return of the 75th, 50th (median), and 25th percentile managers. The diamond is drawn at the average return of a particular fund and the square is drawn at the return of a benchmark index, such as the S&P 500. The placement of the diamond within the box is an easy-to-read representation of the performance of the fund relative to the comparison universe.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/2a68f2f9cbc1032cf0874f3e8a4bd70d0ebb902e4a2f4fb66be0781019228f55.jpg)
Figure 24.1 Universe comparison, periods ending December 31, 2028

This comparison of performance with other managers of similar investment style is a useful first step in evaluating performance. However, such rankings can be misleading. Within a particular universe, some managers may concentrate on particular subgroups, so portfolio characteristics are not truly comparable. For example, within the equity universe, one manager may concentrate on high-beta or aggressive growth stocks. Similarly, within fixed-income universes, durations can vary across managers.

A more fundamental problem with the comparison universe methodology is that the benchmark performance is not an investable strategy. When we evaluate the performance of investment professionals and implicitly ask if they have justified their expenses, we would like to compare their performance to what would have been available to a passive investor. Market index portfolios, many of which are available as mutual funds or ETFs, are natural benchmarks because investors can use these products to match the return on the index. In contrast, the median fund in Figure 24.1 cannot be known in advance. Because passive investors cannot reliably lock in the median return, it is an unsatisfactory benchmark.

These considerations suggest that a more precise means for risk adjustment is desirable.

# Risk-Adjusted Performance Measures

Methods of risk-adjusted performance evaluation using mean-variance criteria came on stage simultaneously with the capital asset pricing model. Jack Treynor, $^{2}$  William Sharpe, $^{3}$  and Michael Jensen $^{4}$  recognized immediately the implications of the CAPM for rating the performance of managers. Within a short time, academicians were in command of a battery of performance measures, and a bounty of scholarly investigation of mutual fund performance was pouring from ivory towers. Shortly thereafter, agents emerged who were willing to supply rating services to portfolio managers and their clients.

But while widely used, risk-adjusted performance measures each have their own limitations. Moreover, their reliability requires a long history of consistent management with a steady level of performance and a representative sample of investment environments: bull as well as bear markets.

We start by cataloging some common risk-adjusted performance measures for a portfolio,  $P$ , and examine the circumstances in which each might be most relevant.

1. Sharpe ratio:  $(\overline{r}_P - \overline{r}_f) / \sigma_P$

The Sharpe ratio divides average portfolio excess return over the sample period by the standard deviation of returns over that period. It measures the reward to (total) volatility trade-off.

2. Treynor measure:  $(\overline{r}_P - \overline{r}_f) / \beta_P$

Like the Sharpe ratio, Treynor's measure gives excess return per unit of risk, but it uses systematic risk instead of total risk.

3. Jensen's alpha:  $\alpha_{P} = \overline{r}_{P} - \left[\overline{r}_{f} + \beta_{P}(\overline{r}_{M} - \overline{r}_{f})\right]$

Jensen's alpha is the average return on the portfolio over and above that predicted by the CAPM, given the portfolio's beta and the average market return.

2Jack L. Treynor, "How to Rate Management Investment Funds," Harvard Business Review 43 (January-February 1966).

William F. Sharpe, "Mutual Fund Performance," Journal of Business 39 (January 1966).

Michael C. Jensen, “The Performance of Mutual Funds in the Period 1945–1964,” Journal of Finance, May 1968; and Michael C. Jensen, “Risk, the Pricing of Capital Assets, and the Evaluation of Investment Portfolios,” Journal of Business, April 1969.

We place bars over  $r_f$  as well as  $r_P$  to denote the fact that because the risk-free rate may not be constant over the measurement period, we are taking a sample average, just as we do for  $r_P$ . Equivalently, we may simply compute sample average excess returns.

# 4. Information ratio:  $\alpha_{P} / \sigma (e_{P})$

The information ratio divides the alpha of the portfolio by nonsystematic risk, called "tracking error" in the industry. It measures abnormal return per unit of risk that in principle could be diversified away by holding a market index portfolio. (We should note that industry jargon tends to be a little loose concerning this topic. Some define the information ratio as excess return—rather than alpha—per unit of nonsystematic risk, using appraisal ratio to refer to the ratio of alpha to nonsystematic risk. Unfortunately, terminology is not fully uniform, and you may well encounter both of these definitions. We will consistently define the information ratio as we have done here, specifically as the ratio of alpha to the standard deviation of residual returns.)

Each performance measure has some appeal. But as Concept Check 24.2 shows, these competing measures do not necessarily provide consistent assessments of performance because the risk measures used to adjust returns differ substantially. Therefore, we need to consider the circumstances in which each of these measures is appropriate.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/afd2e5831d238b1b38c4281f098dcc46ee7bbf92d9e41c244dd86b6bcfb87eda.jpg)

# Concept Check 24.2

Consider the following data for a particular sample period:

<table><tr><td></td><td>Portfolio P</td><td>Market M</td></tr><tr><td>Average return</td><td>35\%</td><td>28\%</td></tr><tr><td>Beta</td><td>1.20</td><td>1.00</td></tr><tr><td>Standard deviation</td><td>42\%</td><td>30\%</td></tr><tr><td>Tracking error (nonsystematic risk), σ(e)</td><td>18\%</td><td>0</td></tr></table>

Calculate the following performance measures for portfolio  $P$  and the market: Sharpe, Jensen (alpha), Treynor, information ratio. The T-bill rate during the period was  $6\%$ . By which measures did portfolio  $P$  outperform the market?

# The Sharpe Ratio for Overall Portfolios

In Chapter 6, we introduced criteria for the investor's optimal risky portfolio. If investor preferences can be summarized by a mean-variance utility function, the criterion becomes particularly straightforward. In this case, the investor wants to maximize the Sharpe ratio  $\left[E(r_{P}) - r_{f}\right] / \sigma_{P}$ . Recall that this criterion led to the selection of the tangency portfolio in Chapter 7. The problem reduces to the search for the portfolio with the highest possible Sharpe ratio. The Sharpe ratio is the slope of the capital allocation line, and investors will naturally seek the portfolio that provides the greatest slope, that is, the greatest increase in expected return for each unit increase in volatility.

We focus here on total volatility rather than systematic risk because we are looking at the entire risky portfolio rather than a small component of it. The benchmark for acceptable performance is the Sharpe ratio of the market index because the investor can easily achieve that performance by investing in an indexed equity mutual fund. To be considered attractive, the actively managed portfolio must offer a higher Sharpe ratio than that of the market index.

The  $M^2$  Measure and the Sharpe Ratio While the Sharpe ratio can be used to rank portfolio performance, its numerical value is not easy to interpret. Comparing the ratios for portfolios  $M$  and  $P$  in Concept Check 24.2, you should have found that  $S_P = .69$  and  $S_M = .73$ . This suggests that portfolio  $P$  underperformed the market index. But is a difference of .04 in the Sharpe ratio economically meaningful? We often compare rates of return, but these values are difficult to interpret.

An equivalent representation of Sharpe's ratio was proposed by Graham and Harvey, and later popularized by Leah Modigliani of Morgan Stanley and her grandfather Franco Modigliani, past winner of the Nobel Prize in Economics. Their approach has been dubbed the  $M^2$  measure (for Modigliani-squared). Like the Sharpe ratio,  $M^2$  focuses on total volatility as a measure of risk, but its risk adjustment leads to an easy-to-interpret differential return relative to the benchmark index.

To compute  $M^2$ , we imagine that an active portfolio,  $P$ , is mixed with a position in T-bills so that the resulting "adjusted" portfolio matches the volatility of a passive market index such as the S&P 500. For example, if the active portfolio has 1.5 times the standard deviation of the index, you would mix it with T-bills using proportions of 1/3 in bills and 2/3 in the active portfolio. The resulting adjusted portfolio, which we call  $P^*$ , would then have the same standard deviation as the index. (If the active portfolio had lower standard deviation than the index, it would be leveraged by borrowing money and investing the proceeds in the portfolio.) Because the market index and portfolio  $P^*$  have the same standard deviation, we may compare their performance simply by comparing returns. This is the  $M^2$  measure for portfolio  $P$ :

$$
M _ {P} ^ {2} = r _ {P *} - r _ {M} \tag {24.1}
$$

# Example 24.1  $M^2$  Measure

Consider the performance of portfolio  $P$  and the market index portfolio  $M$  from Concept Check 24.2. Portfolio  $P$  had the higher return, but it also had higher risk, with the result that its Sharpe ratio was less than the market's. In Figure 24.2, we plot the average return and volatility of each portfolio and draw the capital allocation line for each. Portfolio  $P$ 's CAL is less steep than the CML, consistent with its lower Sharpe ratio.

The adjusted portfolio  $P^*$  is formed by mixing bills with portfolio  $P$ . We use weights  $30 / 42 = .714$  in  $P$  and  $1 - .714 = .286$  in T-bills. By construction, the adjusted portfolio has exactly the same standard deviation as the market index:  $30 / 42 \times 42\% = 30\%$ . Despite its equal volatility, its return would be only  $(.286 \times 6\%) + (.714 \times 35\%) = 26.7\%$ , which is less than that of the market index.

You can see in Figure 24.2 that portfolio  $P^{*}$  is formed by moving down portfolio  $P$ 's capital allocation line (by mixing  $P$  with T-bills) until we reduce the standard deviation by just enough to match that of the market index.  $M^2$  is the vertical distance between points  $M$  and  $P^{*}$ . The  $M^2$  of portfolio  $P$  is therefore  $26.7\% - 28\% = -1.3\%$ ; the negative  $M^2$  is consistent with the inferior Sharpe ratio.

# The Treynor Ratio

In many circumstances, you may have to select funds or portfolios that will be mixed together to form the investor's overall risky portfolio. For example, the manager in charge of a large pension plan might parcel out the total assets to several portfolio managers. Consider CalPERS (the California Public Employee Retirement System), which had a portfolio of about 456 billion in mid-2022. Like many large plans, it uses a fund of funds approach, allocating the endowment among a number of professional managers (funds). How should you compare performance across candidate managers in this context?

When employing a number of managers, the nonsystematic risk of each will be largely diversified away, so only systematic risk is relevant. The appropriate performance metric when evaluating components of the full risky portfolio is now the Treynor measure: This reward-to-risk ratio divides expected excess return by systematic risk (i.e., by beta).

John R. Graham and Campbell R. Harvey, "Grading the Performance of Market Timing Newsletters," Financial Analysts Journal 53 (November/December 1997), pp. 54-66; and Franco Modigliani and Leah Modigliani, "Risk-Adjusted Performance," Journal of Portfolio Management, Winter 1997, pp. 45-54.

Suppose the relevant data for two portfolios and the market index are given in Table 24.1. Portfolio  $Q$  has an alpha of  $3.5\%$ , while that of portfolio  $U$  is  $3\%$ . It might appear that you would prefer portfolio  $Q$ , but this turns out not to be the case. To see why, turn to Figure 24.3. As in Figure 24.2, we plot portfolios on a return-risk graph, but now measure risk using beta.

The SML is the lower line from the risk-free rate on the vertical axis through point  $M$ . Its slope is the market's Treynor ratio, the increase in return per increase in beta offered by portfolios formed by mixing the market index with T-bills.

The middle line through point  $Q$  shows us all the beta-return combinations that can be achieved by mixing bills with portfolio  $Q$ . The slope of this line is portfolio  $Q$ 's Treynor ratio, so we call it the  $T_{Q}$ -line. Similarly, the  $T_{U}$ -line goes from the risk-free rate through point  $U$ .

As always, the investor wants the portfolio that provides the best risk-return trade-off. When we measure risk using beta, that will be the portfolio with the steepest  $T$ -line, or, equivalently, the portfolio with the highest Treynor ratio. Therefore, we see that despite its lower alpha, portfolio  $U$  actually will be preferred to portfolio  $Q$ . For any level of risk (beta), it provides the higher return.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/86c30735f9be5b4a76cc502a0fbed343325a908b2ae46774b8b6d33b861f2ae1.jpg)
Figure 24.2 The  $M^2$  of portfolio  $P$  is negative even though its average return was greater than that of the market index,  $M$

We can compare the performance of each portfolio to the market index using a measure similar to  $M^2$ . We will again combine portfolios with T-bills to match market risk so that we can directly compare rates of return. Here, however, because we use beta to measure risk, we will form adjusted portfolios designed to match the beta of the market index (which, of course, is 1). We form the adjusted portfolio  $Q^*$  by mixing  $Q$  with T-bills. We seek portfolio proportions that will make the beta of  $Q^*$  equal to 1. Therefore, we choose the weight in portfolio  $Q$ ,  $w_Q$ , to satisfy

$$
\beta_ {Q ^ {*}} = w _ {Q} \times \beta_ {Q} + (1 - w _ {Q}) \times \beta_ {\text {b i l l s}} = w _ {Q} \times 1. 2 5 + (1 - w _ {Q}) \times 0 = 1. 0
$$ which implies that  $w_{Q} = .8$ .


<table><tr><td></td><td>Risk-free Asset</td><td>Portfolio Q</td><td>Portfolio U</td><td>Market Index, M</td></tr><tr><td>Beta</td><td>0</td><td>1.3</td><td>0.8</td><td>1.0</td></tr><tr><td>Average return</td><td>6</td><td>22.0</td><td>17.0</td><td>16.0</td></tr><tr><td>Excess return (\%)</td><td>0</td><td>16.0</td><td>11.0</td><td>10.0</td></tr><tr><td>Alpha (\%)</td><td>0</td><td>3.5</td><td>3.0</td><td>0.0</td></tr></table>

Notes: Excess return = Average return - Risk-free rate Alpha = Average return - Beta  $\times$  (Market return - Risk-free rate)

Table 24.1 Portfolio performance

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/56372574472c312c0ff66ad48546237f30398ed21cca79d59cc6e68748c62cf8.jpg)
Figure 24.3 Treynor measures of two portfolios and the market index

Because the systematic risk of the adjusted portfolio is constructed to match the market's, we can meaningfully compare their returns. The return on  $Q^*$  is  $.8 \times 22 + .2 \times 6 = 18.8\%$ , which beats the market return by  $2.8\%$ . This measure is analogous to the  $M^2$  measure, but it extends the Treynor rather than the Sharpe measure. Therefore, we will call it the  $T$ -square or  $T^2$  measure. The following example computes the  $T^2$  measure for portfolio  $U$ .

# Example 24.2 Equalizing Beta and the  $T^2$  Measure

Portfolio  $U$  has a beta of .8, which is less than the market beta of 1. Therefore, we will need to use leverage to increase systematic risk to match that of the market index. We choose  $w_{U}$  to satisfy:

$$
\beta_ {U ^ {*}} = w _ {U} \times \beta_ {U} + (1 - w _ {U}) \times \beta_ {\text {b i l l s}} = w _ {U} \times . 8 + (1 - w _ {U}) \times 0 = 1. 0
$$ which implies that  $w_U = 1.25$ . So the adjusted portfolio  $U^*$  entails borrowing at the risk-free rate, with all proceeds invested in portfolio  $U$ .


The return on the adjusted portfolio  $U^{*}$  is  $1.25 \times 17 - .25 \times 6 = 19.75\%$ , which beats the market's return by  $3.75\%$ . Portfolio  $U$ 's higher  $T^2$  measure compared to portfolio  $Q$  is consistent with the steeper slope it displayed in Figure 24.3. We can use either the  $T^2$  or the Treynor measure to rank portfolios when beta is the relevant measure of risk.

# The Information Ratio

Here is another situation that calls for yet another performance criterion. Consider a pension fund with a largely passive and well-diversified position—for example, a portfolio that resembles an indexed equity fund. Now the fund decides to add a position in an active portfolio to its current position. For example, a university might employ a hedge fund as a possible addition to its core positions in more traditional portfolios.


As we saw in Chapter 8, when the hedge fund (or another active position) is optimally combined with the baseline indexed portfolio, the improvement in the Sharpe measure will be determined by its information ratio  $\alpha_{H} / \sigma(e_{H})$ , according to

$$
S _ {P} ^ {2} = S _ {M} ^ {2} + \left[ \frac {\alpha_ {H}}{\sigma \left(e _ {H}\right)} \right] ^ {2} \tag {24.2}
$$

Equation 24.2 tells us that if you are looking for active portfolios to add to a currently indexed position, you will want to select candidates with the best information ratios.

The information ratio is yet another version of a reward-to-risk ratio. In this context, the reward is the alpha of the active position. It is the expected return on that incremental portfolio over and above the risk premium that would normally correspond to its systematic risk. On the other hand, the incremental position tilts the total risky portfolio away from the passive index, and therefore exposes it to risk that could, in principle, be diversified. The information ratio quantifies the trade-off between alpha and diversifiable risk.

We can summarize the preceding discussion with the following table, which shows the definition of the various performance measures and the situations in which each is the relevant performance measure.

<table><tr><td>Performance Measure</td><td>Definition</td><td>Application</td></tr><tr><td rowspan="2">Sharpe</td><td>Excess return</td><td rowspan="2">When choosing among portfolios competing for the overall risky portfolio</td></tr><tr><td>Standard deviation</td></tr><tr><td rowspan="2">Treynor</td><td>Excess return</td><td rowspan="2">When ranking many portfolios that will be mixed to form the overall risky portfolio</td></tr><tr><td>Beta</td></tr><tr><td rowspan="2">Information ratio</td><td>Alpha</td><td rowspan="2">When evaluating a portfolio to be mixed with a diversified benchmark portfolio</td></tr><tr><td>Residual standard deviation</td></tr></table>

# The Role of Alpha in Performance Measures

Given the central role of alpha in the index model, the CAPM, and other models of risk versus return, you may be surprised that we have not encountered a situation in which alpha is the criterion used to choose one fund over another. But don't conclude from this that alpha does not matter! With some algebra, we can derive the relationship between the performance measures discussed so far and the alpha of the portfolio. The following table shows these relationships. In all cases, you can see that a positive alpha is necessary to outperform the passive market index. Because superior performance requires positive alpha, it is the most widely used performance measure.

<table><tr><td></td><td>Treynor (Tp)</td><td>Sharpe* (Sp)</td><td>Information Ratio</td></tr><tr><td>Relation to alpha</td><td>E(rp)-rf/βp= αp/βp+TM</td><td>E(rp)-rf/σp= αp/σp+ρSM</td><td>αp/σ(ep)</td></tr><tr><td>Improvement compared to market index</td><td>Tp-TM= αp/βp</td><td>Sp-SM= αp/σp-(1-ρ)SM</td><td>αp/σ(ep)</td></tr></table>

*  $\rho$  denotes the correlation coefficient between portfolio  $P$  and the market, and is less than 1.

The following performance measurement spreadsheet computes all the performance measures discussed in this section. You can see how relative ranking differs according to the criterion selected. This Excel model is available in Connect or through your course instructor.

# Excel Questions

1. Examine the performance measures of the funds included in the spreadsheet. Rank performance and determine whether the rankings are consistent using each measure. What explains these results?


2. Which fund would you choose if you were considering investing the entire risky portion of your portfolio? What if you were considering adding a small position in one of these funds to a portfolio currently invested in the market index?

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td><td>H</td><td>I</td><td>J</td><td>K</td></tr><tr><td>1</td><td colspan="2">Performance Measurement</td><td></td><td></td><td></td><td></td><td></td><td colspan="2">LEGEND</td><td></td><td></td></tr><tr><td>2</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td colspan="2">Enter data</td><td></td><td></td></tr><tr><td>3</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td colspan="2">Value calculated</td><td></td><td></td></tr><tr><td>4</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td colspan="2">See comment</td><td></td><td></td></tr><tr><td>5</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>6</td><td></td><td></td><td></td><td></td><td>Non-</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>7</td><td></td><td>Average</td><td>Standard</td><td>Beta</td><td>systematic</td><td>Sharpe&#x27;s</td><td>Treynor&#x27;s</td><td>Jensen&#x27;s</td><td>M2</td><td>T2</td><td>Information</td></tr><tr><td>8</td><td>Fund</td><td>Return</td><td>Deviation</td><td>Coefficient</td><td>Risk</td><td>Measure</td><td>Measure</td><td>Measure</td><td>Measure</td><td>Measure</td><td>Ratio</td></tr><tr><td>9</td><td>Alpha</td><td>28.00\%</td><td>27.00\%</td><td>1.7000</td><td>5.00\%</td><td>0.8148</td><td>0.1294</td><td>-0.0180</td><td>-0.0015</td><td>-0.0106</td><td>-0.3600</td></tr><tr><td>10</td><td>Omega</td><td>31.00\%</td><td>26.00\%</td><td>1.6200</td><td>6.00\%</td><td>0.9615</td><td>0.1543</td><td>0.0232</td><td>0.0235</td><td>0.0143</td><td>0.3867</td></tr><tr><td>11</td><td>Omicron</td><td>22.00\%</td><td>21.00\%</td><td>0.8500</td><td>2.00\%</td><td>0.7619</td><td>0.1882</td><td>0.0410</td><td>-0.0105</td><td>0.0482</td><td>2.0500</td></tr><tr><td>12</td><td>Millennium</td><td>40.00\%</td><td>33.00\%</td><td>2.5000</td><td>27.00\%</td><td>1.0303</td><td>0.1360</td><td>-0.0100</td><td>0.0352</td><td>-0.0040</td><td>-0.0370</td></tr><tr><td>13</td><td>Big Value</td><td>15.00\%</td><td>13.00\%</td><td>0.9000</td><td>3.00\%</td><td>0.6923</td><td>0.1000</td><td>-0.0360</td><td>-0.0223</td><td>-0.0400</td><td>-1.2000</td></tr><tr><td>14</td><td>Momentum Watcher</td><td>29.00\%</td><td>24.00\%</td><td>1.4000</td><td>16.00\%</td><td>0.9583</td><td>0.1643</td><td>0.0340</td><td>0.0229</td><td>0.0243</td><td>0.2125</td></tr><tr><td>15</td><td>Big Potential</td><td>15.00\%</td><td>11.00\%</td><td>0.5500</td><td>1.50\%</td><td>0.8182</td><td>0.1636</td><td>0.0130</td><td>-0.0009</td><td>0.0236</td><td>0.8667</td></tr><tr><td>16</td><td>S &amp; P Index Return</td><td>20.00\%</td><td>17.00\%</td><td>1.0000</td><td>0.00\%</td><td>0.8235</td><td>0.1400</td><td>0.0000</td><td>0.0000</td><td>0.0000</td><td>0.0000</td></tr><tr><td>17</td><td>T-Bill Return</td><td>6.00\%</td><td></td><td>0.0000</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>18</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>19</td><td colspan="2">Ranking By Sharpe&#x27;s Measure</td><td></td><td></td><td>Non-</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>20</td><td></td><td>Average</td><td>Standard</td><td>Beta</td><td>systematic</td><td>Sharpe&#x27;s</td><td>Treynor&#x27;s</td><td>Jensen&#x27;s</td><td>M2</td><td>T2</td><td>Information</td></tr><tr><td>21</td><td>Fund</td><td>Return</td><td>Deviation</td><td>Coefficient</td><td>Risk</td><td>Measure</td><td>Measure</td><td>Measure</td><td>Measure</td><td>Measure</td><td>Ratio</td></tr></table>

However, while positive alpha is necessary, it is not sufficient to guarantee that a portfolio will outperform the index: Taking advantage of mispricing means departing from full diversification, which entails a cost in terms of nonsystematic risk. A portfolio can achieve a positive alpha, yet, at the same time, its volatility may increase to a level at which its Sharpe ratio will actually fall.

# Implementing Performance Measurement: An Example

To illustrate some of the calculations underlying portfolio evaluation, let's look at the performance of portfolio  $P$  over the last 12 months. Table 24.2 shows its excess return in each month as well as those of an alternative portfolio  $Q$  and the market index portfolio  $M$ . The bottom two rows in Table 24.2 provide the sample average and standard deviation of each portfolio. From these, and regressions of  $P$  and  $Q$  on  $M$ , we can compute the necessary performance statistics. These appear in Table 24.3.

Table 24.3 shows that portfolio  $Q$  is more aggressive than  $P$ , in the sense that its beta is significantly higher (1.40 versus .70). At the same time,  $P$ 's lower residual standard deviation indicates that it is better diversified than  $Q$  (2.02\% versus 9.81\%). Both portfolios outperformed the benchmark market index, as is evident from their higher Sharpe ratios (and thus positive  $M^2$ ) and their positive alphas.

Which portfolio is more attractive based on reported performance? If  $P$  or  $Q$  represents the entire investment fund,  $Q$  would be preferable on the basis of its higher Sharpe measure (.49 vs. .43) and better  $M^2$  (2.66\% vs. 2.16\%). For the second scenario, where  $P$  and  $Q$  are competing for a role as one of a number of subportfolios,  $Q$  also dominates because

<table><tr><td>Month</td><td>Portfolio P</td><td>Alternative Q</td><td>Index M</td></tr><tr><td>1</td><td>3.58\%</td><td>2.81\%</td><td>2.20\%</td></tr><tr><td>2</td><td>-4.91</td><td>-1.15</td><td>-8.41</td></tr><tr><td>3</td><td>6.51</td><td>2.53</td><td>3.27</td></tr><tr><td>4</td><td>11.13</td><td>37.09</td><td>14.41</td></tr><tr><td>5</td><td>8.78</td><td>12.88</td><td>7.71</td></tr><tr><td>6</td><td>9.38</td><td>39.08</td><td>14.36</td></tr><tr><td>7</td><td>-3.66</td><td>-8.84</td><td>-6.15</td></tr><tr><td>8</td><td>5.56</td><td>0.83</td><td>2.74</td></tr><tr><td>9</td><td>-7.72</td><td>0.85</td><td>-15.27</td></tr><tr><td>10</td><td>7.76</td><td>12.09</td><td>6.49</td></tr><tr><td>11</td><td>-4.01</td><td>-5.68</td><td>-3.13</td></tr><tr><td>12</td><td>0.78</td><td>-1.77</td><td>1.41</td></tr><tr><td>Average</td><td>2.77</td><td>7.56</td><td>1.64</td></tr><tr><td>Standard deviation</td><td>6.45</td><td>15.55</td><td>8.84</td></tr></table>

# Table 24.2

Excess returns for portfolios  $P$  and  $Q$  and the market index  $M$  over 12 months

<table><tr><td></td><td>Portfolio P</td><td>Portfolio Q</td><td>Portfolio M</td></tr><tr><td>Sharpe ratio</td><td>0.43</td><td>0.49</td><td>0.19</td></tr><tr><td>M2</td><td>2.16</td><td>2.66</td><td>0.00</td></tr><tr><td colspan="4">SCL regression statistics</td></tr><tr><td>Alpha</td><td>1.63</td><td>5.26</td><td>0.00</td></tr><tr><td>Beta</td><td>0.70</td><td>1.40</td><td>1.00</td></tr><tr><td>Treynor</td><td>3.97</td><td>5.38</td><td>1.64</td></tr><tr><td>T2</td><td>2.34</td><td>3.74</td><td>0.00</td></tr><tr><td>σ(e)</td><td>2.02</td><td>9.81</td><td>0.00</td></tr><tr><td>Information ratio</td><td>0.81</td><td>0.54</td><td>0.00</td></tr><tr><td>R-square</td><td>0.91</td><td>0.64</td><td>1.00</td></tr></table>

# Table 24.3

Performance statistics its Treynor measure is higher (5.38 vs. 3.97). However, as an active portfolio to be mixed with the index portfolio,  $P$  is preferred because its information ratio  $[\mathrm{IR} = \alpha / \sigma(e)]$  is higher (.81 vs. .54). Thus, the example illustrates that the appropriate way to evaluate a portfolio depends in large part on how the portfolio fits into the investor's overall investment plan.


This analysis is based on only 12 months of data, a period too short to lend statistical significance to the conclusions. Nevertheless, the analysis illustrates what one might wish to do with more extensive data. A model that calculates these performance measures is available in Connect.

# Realized Returns versus Expected Returns

When evaluating a portfolio, the evaluator knows neither the portfolio manager's original expectations nor whether those expectations made sense. One can only observe performance after the fact and hope that the inherent "noise" in investment outcomes does not obscure true underlying ability. To avoid mistaken inferences, we have to determine the "significance level" of a performance measure to know whether it reliably indicates ability.

To illustrate, consider portfolio manager Joe Dart. Suppose that his portfolio has provided an alpha of 20 basis points per month, an impressive  $2.4\%$  per year before compounding. Let us assume that the return distribution of Joe's portfolio has constant mean, beta, and alpha, a heroic assumption, but one that is in line with the usual treatment of performance measurement. Suppose that for the measurement period, Joe's portfolio beta is 1.2 and the monthly standard deviation of the residual (nonsystematic risk) is  $\sigma(e) = .02$  (i.e.,  $2\%$  per month).

To estimate Joe's portfolio alpha from the security characteristic line (SCL), we regress portfolio excess returns on the market index. Suppose that we are in luck and (despite the underlying noise in investment returns) our regression estimates precisely match Joe's true parameters. That means that our SCL estimates for the  $N$  months are

$$
\hat {\alpha} = . 2 \%, \quad \hat {\beta} = 1. 2, \quad \hat {\sigma} (e) = 2 \%
$$

As outside evaluators who run such a regression, however, we do not know the true values. To assess whether the alpha estimate reflects true skill and not just luck due to statistical chance, we compute the  $t$ -statistic of the alpha estimate to determine whether we are justified in rejecting the hypothesis that Joe's true alpha is zero, that is, that he has no superior ability.

The standard error of the alpha estimate in the SCL regression is approximately

$$
\hat {\sigma} (\alpha) = \frac {\hat {\sigma} (e)}{\sqrt {N}}
$$ where  $N$  is the number of observations and  $\hat{\sigma}(e)$  is the sample estimate of nonsystematic risk. The  $t$ -statistic for the estimate of alpha is therefore


$$ t (\hat {\alpha}) = \frac {\hat {\alpha}}{\hat {\sigma} (\alpha)} = \frac {\hat {\alpha} \sqrt {N}}{\hat {\sigma} (e)} \tag {24.3}
$$

Suppose that we require a significance level of  $5\%$  to reject the null hypothesis. With a large number of observations, this requires a  $t(\hat{\alpha})$  value of at least 1.96. With  $\hat{\alpha} = .2$  and  $\hat{\sigma}(e) = 2$ , we solve Equation 24.3 for  $N$  and find that

$$
1. 9 6 = \frac {. 2 \sqrt {N}}{2}
$$

$$
N = 3 8 4 \text {m o n t h s}
$$ or 32 years!


What have we shown? Here is an analyst who has very substantial ability. The example is biased in his favor in the sense that we have assumed away statistical complications. Nothing changes in the parameters over a long period of time. Furthermore, the sample period "behaves" perfectly. Regression estimates are all perfect. Still, it will take Joe's entire working career to get to the point where statistics will confirm his true ability. We have to conclude that even moderate levels of statistical noise make performance evaluation extremely difficult in practice.

Now add to the imprecision of performance estimates the fact that the typical tenure of a fund manager is generally less than five years. By the time you are lucky enough to find a fund whose historic superior performance you are confident of, its manager is likely ready to move, or has already moved elsewhere. The nearby box explores this topic further.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/95dbc24eb1dbe578aea29e0b1a7271a209da8fc6ef08d24280776101e66286e4.jpg)

# Concept Check 24.3

Suppose an analyst has a measured alpha of .2\% with a standard error of 2\%, as in our example. What is the probability that the positive alpha is due to luck of the draw and that true ability is zero?

# Should You Follow Your Fund Manager?

The whole idea of investing in a mutual fund is to leave the stock and bond picking to the professionals. But frequently, events don't turn out quite as expected—the manager resigns, gets transferred, or dies. A big part of the investor's decision to buy a managed fund is based on the manager's record, so changes like these can come as an unsettling surprise. However, a manager's real contribution to fund performance is highly overrated.

Funds are promoted on their managers' track records, which normally span a 3- to 5-year period. But performance data that go back only a few years are hardly a valid measure of talent. To be statistically sound, evidence of a manager's track record needs to span, at a minimum, 10 years or more.

The mutual fund industry may look like a merry-go-round of managers, but that shouldn't worry most investors. Many mutual funds are designed to go through little or no change when a manager leaves. That is because, according to a strategy designed to reduce volatility and succession worries, mutual funds are managed by teams of stock pickers, who each runs a portion of the assets, rather than by a solo manager with co-captains. Meanwhile, even so-called star managers are nearly always surrounded by researchers and analysts, who can play as much of a role in performance as the manager who gets the headlines.


Don't underestimate the breadth and depth of a fund company's "managerial bench." The larger, established investment companies generally have a large pool of talent to draw on. They are also well aware that investors are prone to depart from a fund when a managerial change occurs.

Lastly, for investors who worry about management changes, there is a solution: index funds. These mutual funds buy stocks and bonds that track a benchmark index like the S&P 500 rather than relying on star managers to actively pick securities. In this case, it doesn't really matter if the manager leaves. Most importantly, index fund investors are not charged the steep fees that are needed to pay star management salaries.

Source: Shauna Carther, "Should You Follow Your Fund Manager?", Investopedia.com, March 3, 2010. Provided by Forbes.

# Selection Bias and Portfolio Evaluation

A warning: Regardless of the performance criterion, some funds will outperform their benchmarks in any year and some will underperform. The good performers are likely to attract more interest from the financial press and potential investors. But beware of focusing on these above-average performers and extrapolating track records into the future. As we saw in Chapter 11, performance in one period is not predictive of future performance.

When we address the performance of mutual funds selected because they have been successful, we need to be even more cautious in evaluating their track records. In particular, we need to recognize that even if all managers were equally skilled, a few "winners" would emerge by sheer chance each period. With thousands of funds in operation, the best-performing funds will have been wildly successful, even if these results reflect luck rather than skill.

Another manifestation of this sort of selection bias (i.e., a focus on nonrepresentative funds) arises when we limit a sample of funds to those for which returns are available over an entire sample period. This practice implies that we exclude from consideration all funds that were closed down over the sample period. The ensuing bias is called survivorship bias. It turns out that when even a small number of funds have failed, the upward bias in the performance of surviving funds can be substantial. Most mutual fund databases now include failed funds so that samples can be protected from survivorship bias.

# 24.2 Style Analysis

The index model regression can be viewed as a way to characterize a portfolio manager's investment style. Portfolios with high betas are called cyclical or aggressive because they are more responsive to economywide developments. Low-beta portfolios are described as defensive. Multifactor models generalize this idea, describing the portfolio's exposure to several risk factors or segments of the market. Each of these exposures can be viewed as an implicit sort of asset allocation decision.

Style analysis was introduced by William Sharpe as a tool to systematically measure the exposures of managed portfolios. The popularity of the concept was aided by a well-known study concluding that most of the variation in returns of 82 mutual funds could be explained by the funds' asset allocation to bills, bonds, and stocks. While later studies have taken issue with the exact interpretation of these results (see footnote 2 of Chapter 6), there is widespread agreement that asset allocation is responsible for a high proportion of the variation across funds in investment performance.

Sharpe's idea was to regress fund returns on indexes representing a range of asset classes. The regression coefficient on each index would then measure the fund's implicit allocation to that "style." Because funds are barred from short positions, the regression coefficients are constrained to be either zero or positive and to sum to  $100\%$  so as to represent a complete asset allocation. The  $R$ -square of the regression would then measure the percentage of return variability attributable to style choice rather than security selection. The intercept measures the average contribution of security selection to portfolio returns.

To illustrate Sharpe's approach, we use monthly returns on Fidelity's Magellan Fund during the famous manager Peter Lynch's tenure between October 1986 and September 1991, with results shown in Table 24.4. While seven asset classes are included in this analysis (of which six are represented by stock indexes and one is the T-bill alternative), the regression coefficients are positive for only three, namely, large capitalization stocks, medium cap stocks, and high P/E (growth) stocks. These portfolios alone explain  $97.5\%$  of the variance of Magellan's returns. In other words, a tracking portfolio made up of the three style portfolios, with weights as given in Table 24.4, would explain the vast majority of Magellan's variation in monthly performance. We conclude that the fund returns are well represented by three style portfolios.

The proportion of return variability not explained by asset allocation can be attributed to security selection within asset classes, as well as timing that shows up as periodic changes

# Table 24.4

Style analysis for Fidelity's Magellan Fund

<table><tr><td>Style Portfolio</td><td>Regression Coefficient</td></tr><tr><td>T-bill</td><td>0</td></tr><tr><td>Small cap</td><td>0</td></tr><tr><td>Medium cap</td><td>35</td></tr><tr><td>Large cap</td><td>61</td></tr><tr><td>High P/E (growth)</td><td>5</td></tr><tr><td>Medium P/E</td><td>0</td></tr><tr><td>Low P/E (value)</td><td>0</td></tr><tr><td>Total</td><td>100</td></tr><tr><td>R-square</td><td>97.5</td></tr></table> in allocation. For Magellan, residual variability was  $100 - 97.5 = 2.5\%$ . This sort of result is commonly interpreted as evidence against the importance of security selection, but such a conclusion misses the important role of the intercept in this regression. (The  $R$ -square of the regression can be  $100\%$ , and yet the intercept can be positive due to consistently superior stock selection.) For Magellan, the intercept was 32 basis points per month, providing a cumulative abnormal return over the 5-year period of  $19.19\%$ . The superior performance of Magellan in this period is displayed in Figure 24.4, which plots the combined impact of the intercept plus monthly residuals relative to both the tracking portfolio composed of the individual style portfolios, as well as the CAPM benchmark provided by the SML.

Source: Authors' calculations. Return data for Magellan obtained from finance.yahoo.com/funds and return data for style portfolios obtained from the Web page of Professor Kenneth French: MBA.tuck .dartmouth.edu/pages/faculty/ken.french/data_library.html.

Figure 24.4 Fidelity Magellan Fund cumulative return difference: Fund versus style benchmark and fund versus SML benchmark
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/ec90290107615d6c6fd75413caee7b5ce9e9121d6befb3d7b8635b1387964c77.jpg)
Source: Authors' calculations.


Of course, Magellan's consistently positive residual return (reflected in the steadily increasing plot of cumulative return difference) is hardly common. Figure 24.5 shows the frequency distribution of average residuals across 636 mutual funds. The distribution has the familiar bell shape, but with a slightly negative mean of  $-0.74\%$  per month.

Style analysis has become very popular in the investment management industry and has spawned quite a few variations on Sharpe's methodology. Several Web sites can help investors identify managers' style and stock selection performance.

# 24.3 Performance Measurement with Changing Portfolio Composition

One potential problem with risk-adjustment techniques is that they all assume that portfolio risk, whether measured by standard deviation or beta, is constant over the relevant time period. This isn't necessarily so. If a manager attempts to increase portfolio beta when that manager thinks the market is about to go up and to decrease beta when pessimistic, both the standard deviation and the beta of the portfolio will change over time. This can wreak havoc with our performance measures, as illustrated by the following example.

Figure 24.5 Average tracking error for 636 mutual funds, 1985-1989
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/a46340abf120a0e711dcab5bc43a97e2d271471fe5d250b67e20cbf9c20520b6.jpg)
Source: William F. Sharpe, "Asset Allocation: Management Style and Performance Evaluation," Journal of Portfolio Management, Winter 1992, pp. 7-19.

# Example 24.3 Changing Portfolio Risk

Suppose that the Sharpe measure of the market index is .4. In the first year, the portfolio manager executes a low-risk strategy and realizes an (annualized) mean excess return of  $1\%$  and standard deviation of  $2\%$ . This makes for a Sharpe ratio of .5, which beats the passive strategy. Over the next year, the manager decides that a high-risk strategy is optimal and achieves an annual mean excess return of  $9\%$  and standard deviation of  $18\%$ . Here, again, the Sharpe ratio is .5. Over the 2-year period, our manager consistently maintains a better-than-passive Sharpe measure.

Figure 24.6 shows a pattern of (annualized) quarterly returns that are consistent with our description of the manager's strategy of two years. In the first four quarters, the excess returns are  $-1\%$ ,  $3\%$ ,  $-1\%$ , and  $3\%$ , making for an average of  $1\%$  and standard deviation of  $2\%$ . In the next four quarters, the excess returns are  $-9\%$ ,  $27\%$ ,  $-9\%$ , and  $27\%$ , making for an average of  $9\%$  and standard deviation of  $18\%$ . Thus, both years exhibit a Sharpe measure of .5. However, the mean and standard deviation of the eight quarterly returns are  $5\%$  and  $13.42\%$ , respectively, making for a Sharpe measure of only .37, apparently inferior to the passive strategy!

What happened in Example 24.3? The shift of the mean from the first four quarters to the next was not recognized as a shift in strategy. Instead, the difference in mean returns in the two years added to the appearance of volatility in portfolio returns. The active strategy with shifting means appears riskier than it really is and biases the estimate of the Sharpe measure downward. We conclude that for actively managed portfolios, it is necessary to keep track of portfolio composition and changes in portfolio mean and risk. We will see another example of this problem in Section 24.4, which deals with market timing.


# Performance Manipulation and the Morningstar Risk-Adjusted Rating

We just saw how time-varying risk and return can distort conventional performance evaluation. The problem can be worse when managers, whose compensation depends on performance, try to game the system. Managers observe how returns unfold over the course of the evaluation period and can adjust portfolio strategies (e.g., either increasing or decreasing risk) in an attempt to manipulate performance measures. If they do, portfolio strategy in the latter part of the evaluation period will depend on performance in the beginning of the period.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/36a07d10d8ff7c99eee3078865156cc6f9fdfa16538afcff8135b214e24caecf.jpg)
Figure 24.6 Portfolio returns: Returns in last four quarters are more variable than in the first four

Ingersoll, Spiegel, Goetzmann, and Welch show how the conventional performance measures covered in this chapter can be manipulated. While the details of their model are challenging, the logic is straightforward, and we can illustrate using the Sharpe ratio.

As we saw when analyzing capital allocation (Chapter 6), investment in the risk-free asset (lending or borrowing) does not affect the Sharpe ratio of the portfolio. Put differently, the Sharpe ratio is invariant to the fraction  $y$  invested in the risky portfolio rather than in the risk-free asset. The reason is that realized excess returns are proportional to  $y$  and therefore so are both the risk premium and standard deviation, leaving the Sharpe ratio unchanged. But what if  $y$  changes during a period?

Imagine a manager already partway into an evaluation period. While realized excess returns (average return, standard deviation, and Sharpe ratio) are now known for the first part of the evaluation period, the distribution of the remaining future returns is still not determined. The overall Sharpe ratio will be some (complicated) average of the known Sharpe ratio in the first leg and the yet-unknown ratio in the second leg of the evaluation period. Increasing leverage during the second leg will increase the influence of the second period on the full-period average performance because leverage will amplify returns, both good and bad. Therefore, managers will wish to increase leverage in the latter part of the period if early returns are poor. Conversely, good first-part performance calls for deleveraging to increase the weight on the initial period. With an extremely good first leg, a manager will shift almost the entire portfolio to the risk-free asset. This strategy induces a (negative) correlation between returns in the first and second legs of the evaluation period.

Investors lose, on average, from this strategy. Arbitrary variation in leverage (and therefore risk) is utility-reducing. It benefits managers only because it allows them to adjust the implicit weighting scheme of the two subperiods over the full evaluation period after observing their initial performance. Hence, investors would like to eliminate the incentive to pursue this strategy.

Unfortunately, as Ingersoll et al.12 show, only one performance measure is impossible to manipulate. This is the Morningstar Risk-Adjusted Rating (MRAR). Amazingly, Morningstar was not even aiming at a manipulation-proof performance measure when it developed its MRAR—it was simply attempting to accommodate investors who wanted a performance measure consistent with constant relative risk aversion. Its measure is defined as follows:

$$
\text {M o r n i n g s t a r R i s k - A d j u s t e d R a t i n g : M R A R} (\gamma) = \left[ \frac {1}{T} \sum_ {t = 1} ^ {T} \left(\frac {1 + r _ {t}}{1 + r _ {f t}}\right) ^ {- \gamma} \right] ^ {\frac {1 2}{\gamma}} - 1
$$

The rating is a sort of harmonic average of excess returns, where  $t = 1,\dots ,T$  are monthly observations and  $\gamma$  measures investor risk aversion. For mutual funds, Morningstar uses  $\gamma = 2$ , which it considers a reasonable value for an average retail client. The MRAR can be interpreted as the risk-free equivalent excess return of the portfolio for an investor with risk aversion measured by  $\gamma$ .

The Morningstar RAR method produces results that are similar but not identical to those of the mean/variance-based Sharpe ratio. Figure 24.7 demonstrates the fit between ranking by MRAR and by Sharpe ratios from the performance of 1,286 diversified equity funds over the period 1994-1996. Sharpe notes that this period is characterized by high returns that contribute to a good fit.

Morningstar also computes fund returns adjusted for both loads as well as a risk measure based on fund performance in its worst years. Morningstar ranks risk-adjusted performance

Figure 24.7 Rankings based on Morningstar's RAR versus Sharpe ratio
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/48f28268339e9f42c98a60330b0a5772c793856cdc90d604af9061873964d502.jpg)
Source: William F. Sharpe, "Morningstar Performance Measures" (1997), www.stanford.edu/-wfsharpe/art/ stars/stars0.htm.

12 Ibid.

The MRAR measure is the certainty-equivalent geometric average excess return derived from a utility function consistent with constant relative risk aversion (CRRA). Under CRRA, capital allocation (the fraction of the portfolio placed in risk-free versus risky assets) does not change with wealth. The coefficient of risk aversion is  $A = 1 + \gamma$ . When  $\gamma = 0$  (equivalently,  $A = 1$ ), the utility function is just the geometric average of gross excess returns:

$$
\operatorname {M R A R} (0) = \left[ \prod_ {t = 1} ^ {T} \left(1 + R _ {t}\right) \right] ^ {\frac {1 2}{T}} - 1
$$ across funds in a similar style group. The peer group for each fund is selected on the basis of the fund's investment universe (e.g., international, growth versus value, fixed-income) as well as portfolio characteristics such as average price-to-book ratio, price-earnings ratio, and market capitalization, and stars are awarded based on the following table:


<table><tr><td>Percentile</td><td>Stars</td></tr><tr><td>0–10</td><td>1</td></tr><tr><td>10–32.5</td><td>2</td></tr><tr><td>32.5–67.5</td><td>3</td></tr><tr><td>67.5–90</td><td>4</td></tr><tr><td>90–100</td><td>5</td></tr></table>

The Morningstar five-star rating is coveted by the managers of the thousands of funds covered by the service.

# 24.4 Market Timing

Another source of variation in portfolio risk is market timing. In its pure form, market timing involves shifting funds between a market-index portfolio and a safe asset, depending on whether the index is expected to outperform the safe asset. In practice, most managers do not shift fully between T-bills and the market. How can we account for partial shifts into the market when it is expected to perform well?

To simplify, suppose that an investor holds only the market-index portfolio and T-bills. If the weight of the market were constant, say, .6, then portfolio beta would also be constant, and the SCL would plot as a straight line with slope .6, as in Figure 24.8, Panel A. If, however, the investor could correctly time the market and shift funds into it in periods when the market does well, the SCL would plot as in Figure 24.8, Panel B. If bull and bear markets can be (at least partially) predicted, the investor will shift more into the market when it is more likely to go up. The portfolio beta and the slope of the SCL therefore will be higher when  $r_M$  is higher, resulting in the curved line that appears in Figure 24.8, Panel B.

Treynor and Mazuy were the first to propose estimating such a line by adding a squared term to the usual linear index model:

$$ r _ {P} - r _ {f} = a + b \left(r _ {M} - r _ {f}\right) + c \left(r _ {M} - r _ {f}\right) ^ {2} + e _ {P}
$$ where  $r_P$  is the portfolio return and  $a, b,$  and  $c$  are estimated by regression analysis. If  $c$  turns out to be positive, we have evidence of timing ability because this last term will make the characteristic line steeper as  $r_M - r_f$  is larger. Treynor and Mazuy estimated this equation for a number of mutual funds but found little evidence of timing ability.


A similar but simpler methodology was proposed by Henriksson and Merton.[15] They assume that the beta of the portfolio takes only two values: a large value if the market is expected to do well and a small value otherwise. Under this scheme, the portfolio characteristic line appears as shown in Figure 24.8, Panel C. Such a line appears in regression form as

$$ r _ {P} - r _ {f} = a + b (r _ {M} - r _ {f}) + c (r _ {M} - r _ {f}) D + e _ {P}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/d221a1f17f02c22529394f9a0364db5bf3e91df765eedfea544e14be57b7383b.jpg)
A

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/1251039e9bb9645f4d5bec12fd1d85a6158fb5a146fc6dacfb9935af2e06626c.jpg)
B

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/eca3009b063d4266da5940db00f0790f38d6d8252fb9b9e91770aa7f068e6403.jpg)
C
Figure 24.8 Characteristic lines. Panel A: No market timing, beta is constant.
Panel B: Market timing, beta increases with expected market excess return.
Panel C: Market timing with only two values of beta where  $D$  is a dummy variable that equals 1 when  $r_M > r_f$  and zero otherwise. Hence, the beta of the portfolio is  $b$  in bear markets and  $b + c$  in bull markets. Again, a positive value of  $c$  implies market timing ability. They also found little evidence of market timing ability.


To illustrate how you might implement a test for market timing, return to Table 24.2, which contains 12 months of excess returns for two managed portfolios,  $P$  and  $Q$ , and the market index,  $M$ . Regress the excess returns of each portfolio on the excess returns of  $M$  and the square of these excess returns as in the following specifications:

$$ r _ {P} - r _ {f} = a _ {P} + b _ {P} \left(r _ {M} - r _ {f}\right) + c _ {P} \left(r _ {M} - r _ {f}\right) ^ {2} + e _ {P}
$$

$$ r _ {Q} - r _ {f} = a _ {Q} + b _ {Q} (r _ {M} - r _ {f}) + c _ {Q} (r _ {M} - r _ {f}) ^ {2} + e _ {Q}
$$

You will derive the following statistics. The numbers in parentheses are included for comparison: They are the regression estimates from the single-variable regression reported in Table 24.3.

<table><tr><td rowspan="2">Estimate</td><td colspan="2">Portfolio</td></tr><tr><td>P</td><td>Q</td></tr><tr><td>Alpha (a)</td><td>1.77 (1.63)</td><td>-2.29 (5.26)</td></tr><tr><td>Beta (b)</td><td>0.70 (0.70)</td><td>1.10 (1.40)</td></tr><tr><td>Timing (c)</td><td>0.00</td><td>0.10</td></tr><tr><td>R-square</td><td>0.91 (0.91)</td><td>0.98 (0.64)</td></tr></table>

Portfolio  $P$  shows no evidence of attempted timing: Its timing coefficient,  $c$ , is estimated to be zero. It is not clear whether this is because no attempt was made at timing or because any effort to time the market was in vain and served only to increase portfolio variance unnecessarily.

The results for portfolio  $Q$ , however, reveal that timing has, in all likelihood, been attempted. Here the coefficient,  $c$ , is positive, with an estimated value of .10. The evidence thus suggests successful timing, offset by unsuccessful stock selection (negative  $a$ ). Notice that the estimate of alpha,  $a$ , is now  $-2.29\%$ , as opposed to the 5.26\% estimate derived from the regression equation that did not account for the potential impact of timing.

This example illustrates the inadequacy of conventional performance evaluation techniques that assume constant mean returns and constant risk. The market timer constantly shifts beta and mean return, moving into and out of the market. So market timing presents another instance in which portfolio composition and risk change over time, complicating the effort to evaluate performance. Whereas the expanded regression captures this possibility, the simple SCL does not. The important point for performance evaluation is that failing to account for variation in portfolio composition can confound more conventional mean-variance measures.

# The Potential Value of Market Timing

Suppose we define perfect market timing as the ability to tell (with certainty) at the beginning of each year whether the S&P 500 portfolio will outperform Treasury bills. Accordingly, at the beginning of each year, the market timer shifts all funds into either cash equivalents (T-bills) or equities (the S&P portfolio), whichever is predicted to do better. Beginning with 1 on December 31, 1926, how would the perfect timer end a 95-year experiment on December 31, 2021, in comparison with investors who kept their funds in either equity or T-bills for the entire period?

Table 24.5 presents summary statistics for each of the three passive strategies, computed from the historical annual returns of bills and equities. From the returns on stocks and bills, we calculate wealth indexes of the all-bills and all-equity investments and show terminal values for these investors at the end of 2021. The return for the perfect timer in each year is the maximum of the return on stocks and the return on bills.

<table><tr><td></td><td>Bills</td><td>Equities</td><td>Perfect timer</td></tr><tr><td>Terminal value</td><td>$21</td><td>$10,546</td><td>1,512,355</td></tr><tr><td>Arithmetic average</td><td>3.31\%</td><td>11.96\%</td><td>16.72\%</td></tr><tr><td>Standard deviation</td><td>3.12\%</td><td>19.89\%</td><td>13.34\%</td></tr><tr><td>Geometric average</td><td>3.26\%</td><td>10.24\%</td><td>16.16\%</td></tr><tr><td>Maximum</td><td>14.71\%</td><td>57.35\%</td><td>57.35\%</td></tr><tr><td>Minimum*</td><td>-0.02\%</td><td>-44.04\%</td><td>0.00\%</td></tr><tr><td>Skew</td><td>1.08</td><td>-0.45</td><td>0.69</td></tr><tr><td>Kurtosis</td><td>1.09</td><td>0.11</td><td>-0.14</td></tr><tr><td>LPSD</td><td>0</td><td>12.80\%</td><td>0</td></tr></table>

*A negative rate on "bills" was observed in 1940. The Treasury security used in the data series in these early years was actually not a T-bill but a T-bond with 30 days to maturity.

# Table 24.5

Performance of bills, equities, and perfect (annual) market timers. Initial investment  $= \$  1$

The first row in Table 24.5 shows the terminal value of investing  $1 in bills over the 95 years (1927-2021) is$ 21, while the terminal value of the same initial investment in equities is 10,546. We pointed out in Chapter 5 that as impressive as the difference in terminal values is, it is best interpreted as no more than compensation for the risk borne by equity investors. As we've already seen, the annual difference in returns is just about 8.6\%, which doesn't seem as dramatic. Notice that the standard deviation of the all-equity investor was a hefty 19.89\%.

Now observe that the terminal value of the perfect timer is 1.51 million, a 143-fold increase over the already large terminal value of the all-equity strategy! In fact, this result is even better than it looks because the return to the market timer is truly risk-free. This is the classic case where a large standard deviation (13.34\%) has nothing to do with risk. Because the timer never delivers a return below the risk-free rate, the standard deviation is a measure of good surprises only.

The positive skew of the timer's distribution (.69, compared with the negative skew of equities) is a manifestation of the fact that the extreme values are all positive. Other indications of this stellar performance are the minimum and maximum returns—the minimum return for the timer equals zero (in 1940) and the maximum return,  $57.35\%$ , is that of equities (in 1933). All negative returns on equities (as low as  $-44\%$  in 1931) were avoided by the timer. Finally, another clear indication of the advantage of the perfect timer compared to the all-equity portfolio is provided by the lower partial standard deviation, LPSD. $^{16}$  The LPSD, which is a measure of the typical amplitude of any return shortfall compared to T-bills, is  $12.8\%$  for the all-equity portfolio, but it is necessarily zero for the perfect timer (who always performs at least as well as bills).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/393376cffebd9d6a56e0fa4e7f132a2ae9075c003dd01799562a0c02c7be79b9.jpg)
Figure 24.9 Rate of return of a perfect market timer as a function of the rate of return on the market index

# Valuing Market Timing as a Call Option

The key to valuing market timing ability is to recognize that perfect foresight is equivalent to holding a call option on the equity portfolio—but without having to pay for it! The perfect timer invests  $100\%$  in either the safe asset or the equity portfolio, whichever will provide the higher return. The rate of return is at least the risk-free rate. This is shown in Figure 24.9.

To see how timing skill can be viewed as a free option, suppose that the market index currently is at  $S_0$  and that a call option on the index has an exercise price of  $X = S_0(1 + r_f)$ . If the market outperforms bills over the coming period,  $S_T$  will exceed  $X$ ; otherwise it will be less than  $X$ . Now look at the payoff to a portfolio consisting of this option and  $S_0$  dollars invested in bills:

<table><tr><td></td><td>ST&lt;X</td><td>ST≥X</td></tr><tr><td>Bills</td><td>SO(1 + r_f)</td><td>SO(1 + r_f)</td></tr><tr><td>Call</td><td>0</td><td>ST-X</td></tr><tr><td>Total</td><td>SO(1 + r_f)</td><td>ST</td></tr></table>

The portfolio pays the risk-free return when the market is bearish (i.e., the market return is less than the risk-free rate), and it pays the market return when the market is bullish and outperforms bills. Such a portfolio is a perfect market timer.[17]

Because the ability to predict the better-performing investment is equivalent to acquiring a (free) call option on the market, we can use option-pricing models to value it. This value would constitute the fee that a perfect timer could charge investors for its services. Placing a value on perfect timing will also allow us to assign value to less-than-perfect timers.

The exercise price of the perfect-timer call option on  $1 of the equity portfolio is the final value of the T-bill investment. Using continuous compounding, this is$ 1 × e $^{rT}$ . When you use this exercise price in the Black-Scholes formula for the value of the call option, the formula simplifies considerably to $^{18}$

$$
\operatorname {M V} (\text {P e r f e c t t i m e r p e r $}  of assets) = C = 2 N \left(1 / 2 \sigma_ {M} \sqrt {T}\right) - 1 \tag{24.4}
$$

We have so far assumed annual forecasts, that is,  $T = 1$  year. Using  $T = 1$ , and the standard deviation of stocks from Table 24.5,  $19.89\%$ , we compute the value of this call option as 7.92 cents, or  $7.92\%$  of the value of the equity portfolio.[19]

# The Value of Imperfect Forecasting

A weather forecaster in Tucson, Arizona, who always predicts no rain may be right more than  $90\%$  of the time. But a high success rate for a "stopped-clock" strategy is not evidence of forecasting ability. Similarly, the appropriate measure of market forecasting ability is not the overall proportion of correct forecasts. If the market is up two days out of three and a forecaster always predicts market advance, the resulting two-thirds success rate does not imply forecasting ability. We need to examine the proportion of bull markets  $(r_M > r_f)$  correctly forecast and the proportion of bear markets  $(r_M < r_f)$  correctly forecast.

If we call  $P_{1}$  the proportion of the correct forecasts of bull markets and  $P_{2}$  the proportion for bear markets, then  $P_{1} + P_{2} - 1$  is the correct measure of timing ability. For example, a forecaster who always guesses correctly will have  $P_{1} = P_{2} = 1$ , and will show ability of  $P_{1} + P_{2} - 1 = 1$  (100\%). An analyst who always bets on a bear market will mispredict all bull markets ( $P_{1} = 0$ ), will correctly "predict" all bear markets ( $P_{2} = 1$ ), and will end up with timing ability of  $P_{1} + P_{2} - 1 = 0$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/2a173e98c3af02f627a407bce3ce4e5df66396c3e67dfa2f856f225fa5be23e5.jpg)

# Concept Check 24.4

What is the market timing score of someone who flips a fair coin to predict the market?

Merton shows that the value of imperfect market timing equals the value of the perfect-timing call option times our measure of timing ability,  $P_{1} + P_{2} - 1$ .

$\mathrm{MV}(\text{Imperfect timer}) = (P_1 + P_2 - 1) \times C = (P_1 + P_2 - 1)[2N(\frac{1}{2}\sigma_M\sqrt{T}) - 1]$  (24.5)

The incredible potential payoff to accurate timing versus the relative scarcity of billionaires suggests that market timing is far from a trivial exercise and that very imperfect timing is the most that we can hope for.

# 24.5 Performance Attribution Procedures

Rather than focus on risk-adjusted returns, practitioners often want simply to ascertain which decisions resulted in superior or inferior performance. Superior investment performance depends on an ability to be in the "right" securities at the right time. Such timing and selection ability may be considered broadly, such as being in equities as opposed to fixed-income securities when the stock market is performing well. Or it may be defined at a more detailed level, such as choosing the relatively better-performing stocks within a particular industry.

Portfolio managers continually make broad-brush asset allocation decisions as well as more detailed sector and security allocation decisions within asset classes. Performance attribution studies attempt to decompose overall performance into discrete components that may be identified with a particular level of the portfolio selection process.

Attribution analysis starts from the broadest asset allocation choices and progressively focuses on ever-finer details of portfolio choice. The difference between a managed portfolio's performance and that of a benchmark portfolio then may be expressed as the sum of the contributions to performance of a series of decisions made at the various levels of the portfolio construction process. For example, one common attribution system decomposes performance into three components: (1) broad asset market allocation choices across equity, fixed-income, and money markets; (2) industry (sector) choice within each market; and (3) security choice within each sector.

The attribution method explains the difference in returns between a managed portfolio,  $P$ , and a selected benchmark portfolio,  $B$ , called the bogey. The bogey measures the returns the portfolio manager would earn following a completely passive strategy. "Passive" in this context has two attributes. First, it means that the allocation of funds across broad asset classes is consistent with the "usual," or neutral, allocation across sectors. This would be considered a passive asset-market allocation. Second, it means that within each asset class, the portfolio manager holds an indexed portfolio, such as the S&P 500 index for the equity sector. In such a manner, the passive strategy used as a performance benchmark rules out asset allocation as well as security selection decisions. Any departure of the manager's return from the passive benchmark must be due to either asset allocation bets (departures from the neutral allocation across markets) or security selection bets (departures from the passive index within asset classes).


While we have discussed in earlier chapters the justification for indexing within sectors, it is worth briefly explaining the determination of the neutral allocation of funds across the broad asset classes. Weights that are designated as "neutral" will depend on the risk tolerance of the investor and must be determined in consultation with the client. For example, risk-tolerant clients may place a large fraction of their portfolio in the equity market, perhaps directing the fund manager to set neutral weights of  $75\%$  equity,  $15\%$  bonds, and  $10\%$  cash equivalents. Any deviation from these weights must be justified by a belief that one or another market will either over- or underperform its usual risk-return profile. In contrast, more risk-averse clients may set neutral weights of  $45\%/35\%/20\%$  for the three markets. Therefore, their portfolios in normal circumstances will be exposed to less risk than that of the risk-tolerant client. Only intentional bets on market performance will result in departures from this profile.

To illustrate, consider the attribution results for a hypothetical portfolio. The portfolio invests in stocks, bonds, and money market securities. An attribution analysis appears in Tables 24.6 through 24.9. The portfolio return over the month is  $5.34\%$ .

In Table 24.6, the neutral weights have been set at  $60\%$  equity,  $30\%$  fixed income, and  $10\%$  cash (money market securities). The bogey portfolio, comprised of investments in each index with the  $60/30/10$  weights, returned  $3.97\%$ . The managed portfolio's measure of performance is positive and equal to its actual return less the return of the bogey:  $5.34 - 3.97 = 1.37\%$ . The next step is to allocate the  $1.37\%$  excess return to the separate decisions that contributed to it.

# Asset Allocation Decisions

Table 24.7 shows that in this month, the manager established asset allocation weights of  $70\%$  in equity,  $7\%$  in fixed income, and  $23\%$  in cash equivalents. To isolate the effect of this departure from neutral asset allocation, we compare the performance of a hypothetical portfolio that would have been invested in a passive index for each market with weights 70/7/23 versus one invested in each index using the benchmark 60/30/10 weights. This

<table><tr><td rowspan="2">Component</td><td colspan="2">Bogey Performance and Excess Return</td></tr><tr><td>Benchmark Weight</td><td>Return of Index during Month (\%)</td></tr><tr><td>Equity (S&amp;P 500)</td><td>0.60</td><td>5.81</td></tr><tr><td>Bonds (Barclays Aggregate Index)</td><td>0.30</td><td>1.45</td></tr><tr><td>Cash (money market)</td><td>0.10</td><td>0.48</td></tr><tr><td colspan="3">Bogey = (0.60 × 5.81) + (0.30 × 1.45) + (0.10 × 0.48) = 3.97\%</td></tr><tr><td colspan="2">Return of managed portfolio</td><td>5.34\%</td></tr><tr><td colspan="2">– Return of bogey portfolio</td><td>3.97</td></tr><tr><td colspan="2">Excess return of managed portfolio</td><td>1.37\%</td></tr></table>

Table 24.6

Performance of the managed portfolio

Performance attribution

Table 24.7

<table><tr><td colspan="6">A. Contribution of asset allocation to performance</td></tr><tr><td>Market</td><td>(1)Actual Weight in Market</td><td>(2)Benchmark Weight in Market</td><td>(3)Active or Excess Weight</td><td>(4)Index Return (\%)</td><td>(5)=(3)×(4)Contribution to Performance (\%)</td></tr><tr><td>Equity</td><td>0.70</td><td>0.60</td><td>0.10</td><td>5.81</td><td>0.5810</td></tr><tr><td>Fixed-income</td><td>0.07</td><td>0.30</td><td>-0.23</td><td>1.45</td><td>-0.3335</td></tr><tr><td>Cash</td><td>0.23</td><td>0.10</td><td>0.13</td><td>0.48</td><td>0.0624</td></tr><tr><td colspan="5">Contribution of asset allocation</td><td>0.3099</td></tr><tr><td colspan="6">B. Contribution of selection to total performance</td></tr><tr><td>Market</td><td>(1)Portfolio Performance (\%)</td><td>(2)Index Performance (\%)</td><td>(3)Excess Performance (\%)</td><td>(4)Portfolio Weight</td><td>(5)=(3)×(4)Contribution (\%)</td></tr><tr><td>Equity</td><td>7.28</td><td>5.81</td><td>1.47</td><td>0.70</td><td>1.03</td></tr><tr><td>Fixed-income</td><td>1.89</td><td>1.45</td><td>0.44</td><td>0.07</td><td>0.03</td></tr><tr><td colspan="5">Contribution of selection within markets</td><td>1.06</td></tr></table> return difference measures the effect of the shift away from the benchmark weights without allowing for any effects due to active management of the securities selected within each market.


Superior performance relative to the bogey is achieved by weighting investments in markets that turn out to perform well and by underweighting those in poorly performing markets. The contribution of asset allocation to superior performance equals the sum over all markets of the excess weight (sometimes called the active weight in the industry) in each market times the return of the index for that market.

Panel A of Table 24.7 demonstrates that asset allocation contributed 31 basis points to the portfolio's overall excess return of 137 basis points. The major factor contributing to superior performance in this month is the heavy weighting of the equity market in a month when it had an excellent return of  $5.81\%$ .

# Sector and Security Selection Decisions

If .31\% of the excess performance (Table 24.7, Panel A) can be attributed to advantageous asset allocation across markets, the remaining 1.06\% must be attributable to sector selection and security selection within each market. Table 24.7, Panel B, details the contribution of the managed portfolio's sector and security selection to total performance.

Panel B shows that the equity component of the managed portfolio has a return of  $7.28\%$  versus a return of  $5.81\%$  for the S&P 500. The fixed-income return is  $1.89\%$  versus  $1.45\%$  for the Barclays Aggregate Bond Index. The superior performance in both equity and fixed-income markets weighted by the portfolio proportions invested in each market sums to the  $1.06\%$  contribution to performance attributable to sector and security selection.

Table 24.8 documents the decisions that led to the superior equity market performance. The first three columns detail the allocation of funds within the equity market compared

The performance attribution spreadsheet develops the attribution analysis presented in this section. The model can be used to analyze the performance of mutual funds and other managed portfolios.

You can find this Excel model in Connect.

2. What would happen to the contribution of security selection to overall performance if the actual return on the equity portfolio had been  $6.81\%$  instead of  $5.81\%$  and the return on the bond portfolio had been  $0.45\%$  instead of  $1.45\%$ ? Explain your result.

# Excel Questions

1. What would happen to the contribution of asset allocation to overall performance if the actual weights had been 75/12/13 instead of 70/7/23? Explain your result.

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td></tr><tr><td>1</td><td colspan="2">Performance Attribution</td><td></td><td></td><td></td><td></td></tr><tr><td>2</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>3</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>4</td><td>Bogey</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>5</td><td>Portfolio</td><td></td><td>Benchmark</td><td>Return on</td><td>Portfolio</td><td></td></tr><tr><td>6</td><td>Component</td><td>Index</td><td>Weight</td><td>Index</td><td>Return</td><td></td></tr><tr><td>7</td><td>Equity</td><td>S&amp;P 500</td><td>0.60</td><td>5.8100\%</td><td>3.4860\%</td><td></td></tr><tr><td>8</td><td>Bonds</td><td>Barclays Index</td><td>0.30</td><td>1.4500\%</td><td>0.4350\%</td><td></td></tr><tr><td>9</td><td>Cash</td><td>Money Market</td><td>0.10</td><td>0.4800\%</td><td>0.0480\%</td><td></td></tr><tr><td>10</td><td></td><td></td><td colspan="2">Return on Bogey</td><td>3.9690\%</td><td></td></tr><tr><td>11</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>12</td><td></td><td>Managed</td><td></td><td></td><td></td><td></td></tr><tr><td>13</td><td></td><td>Portfolio</td><td>Portfolio</td><td>Actual</td><td>Portfolio</td><td></td></tr><tr><td>14</td><td></td><td>Component</td><td>Weight</td><td>Return</td><td>Return</td><td></td></tr><tr><td>15</td><td></td><td>Equity</td><td>0.70</td><td>5.8100\%</td><td>5.0960\%</td><td></td></tr><tr><td>16</td><td></td><td>Bonds</td><td>0.07</td><td>1.4500\%</td><td>0.1323\%</td><td></td></tr><tr><td>17</td><td></td><td>Cash</td><td>0.23</td><td>0.4800\%</td><td>0.1104\%</td><td></td></tr><tr><td>18</td><td></td><td></td><td colspan="2">Return on Managed</td><td>5.3387\%</td><td></td></tr><tr><td>19</td><td></td><td></td><td colspan="2">Excess Return</td><td>1.3697\%</td><td></td></tr></table>

<table><tr><td rowspan="3">Sector</td><td>(1)</td><td>(2)</td><td>(3)</td><td>(4)</td><td>(5) = (3) × (4)</td></tr><tr><td colspan="2">Beginning-of-MonthWeights (\%)</td><td rowspan="2">ActiveWeight(\%)</td><td rowspan="2">SectorReturn(\%)</td><td rowspan="2">SectorAllocationContribution</td></tr><tr><td>Portfolio</td><td>S&amp;P 500</td></tr><tr><td>Basic materials</td><td>1.96</td><td>8.3</td><td>-6.34</td><td>6.9</td><td>-0.4375</td></tr><tr><td>Business services</td><td>7.84</td><td>4.1</td><td>3.74</td><td>7.0</td><td>0.2618</td></tr><tr><td>Capital goods</td><td>1.87</td><td>7.8</td><td>-5.93</td><td>4.1</td><td>-0.2431</td></tr><tr><td>Consumer cyclical</td><td>8.47</td><td>12.5</td><td>-4.03</td><td>8.8</td><td>0.3546</td></tr><tr><td>Consumer noncyclical</td><td>40.37</td><td>20.4</td><td>19.97</td><td>10.0</td><td>1.9970</td></tr><tr><td>Credit sensitive</td><td>24.01</td><td>21.8</td><td>2.21</td><td>5.0</td><td>0.1105</td></tr><tr><td>Energy</td><td>13.53</td><td>14.2</td><td>-0.67</td><td>2.6</td><td>-0.0174</td></tr><tr><td>Technology</td><td>1.95</td><td>10.9</td><td>-8.95</td><td>0.3</td><td>-0.0269</td></tr><tr><td>Total</td><td></td><td></td><td></td><td></td><td>1.2898</td></tr></table>

# Table 24.8

Sector selection within the equity market to their representation in the S&P 500. Column (4) shows the rate of return of each sector. The contribution of each sector's allocation presented in column (5) equals the product of the difference in the sector weight and the sector's performance.


Good performance (a positive contribution) derives from overweighting well-performing sectors such as consumer noncyclicals. The excess return of the equity component of the portfolio attributable to sector allocation alone is  $1.29\%$ . Table 24.7, Panel B, column (3), shows that the equity component of the portfolio outperformed the S&P 500 by  $1.47\%$ . We conclude that the effect of security selection within sectors must have contributed an additional  $1.47\% - 1.29\%$ , or  $0.18\%$ , to the performance of the equity component of the portfolio.

A similar sector analysis can be applied to the fixed-income portion of the portfolio, but we do not show those results here.

# Summing Up Component Contributions

In this particular month, all facets of the portfolio selection process were successful. Table 24.9 details the contribution of each aspect of performance. Asset allocation across the major security markets contributes 31 basis points. Sector and security allocation within those markets contributes 106 basis points, for total excess portfolio performance of 137 basis points.

The sector and security allocation of 106 basis points can be partitioned further. Sector allocation within the equity market results in excess performance of 129 basis points, and security selection within sectors contributes 18 basis points. (The total equity excess performance of 147 basis points is multiplied by the  $70\%$  weight in equity to obtain contribution to portfolio performance.) Similar partitioning could be done for the fixed-income sector.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/ade5c19cd91a71af6076e6189cd4c17ba2dd0f366f12324aad15975fabdc856c.jpg)

# Concept Check 24.5 a. Suppose the benchmark weights in Table 24.7 had been set at  $70\%$  equity,  $25\%$  fixed-income, and  $5\%$  cash equivalents. What would have been the contributions of the manager's asset allocation choices?

b. Suppose the S&P 500 return is  $5\%$ . Compute the new value of the manager's security selection choices.

Portfolio attribution: summary

Table 24.9

<table><tr><td></td><td></td><td>Contribution
(basis points)</td></tr><tr><td>1. Asset allocation</td><td></td><td>31</td></tr><tr><td>2. Selection</td><td></td><td></td></tr><tr><td>a. Equity excess return (basis points)</td><td></td><td></td></tr><tr><td>i. Sector allocation</td><td>129</td><td></td></tr><tr><td>ii. Security selection</td><td>18</td><td></td></tr><tr><td></td><td>147 × 0.70 (portfolio weight) =</td><td>102.9</td></tr><tr><td>b. Fixed-income excess return</td><td>44 × 0.07 (portfolio weight) =</td><td>3.1</td></tr><tr><td>Total excess return of portfolio</td><td></td><td>137.0</td></tr></table>

1. The simplest performance measure compares average return to that on a benchmark such as an appropriate market index or even the median return of funds in a comparison universe. Alternative measures of the average return include the arithmetic and geometric average and time-weighted versus dollar-weighted returns.
2. The appropriate performance measure depends on the role of the portfolio to be evaluated. Appropriate performance measures are as follows: a. Sharpe: When the portfolio represents the entire investment fund.

$b$ . Information ratio: When the portfolio is an active portfolio to be optimally mixed with the passive portfolio.
c. Treynor: When the portfolio is one subportfolio of many.
d. Jensen (alpha): All of these measures require a positive alpha for the portfolio to be considered attractive.

3. Many observations and long sample periods are required to eliminate the effect of the "luck of the draw" from the evaluation process because portfolio returns commonly are very noisy.
4. Style analysis uses a multiple regression model where the factors are category (style) portfolios such as bills, bonds, and stocks. The coefficients on the style portfolios indicate a passive strategy that would match the risk exposures of the managed portfolio. The return difference between the managed portfolio and the matching portfolio measures performance relative to similar-style funds.
5. Shifting mean and risk of actively managed portfolios makes it difficult to assess performance. An important example of this problem arises when portfolio managers attempt to time the market, resulting in ever-changing portfolio betas.
6. One way to measure timing and selection success simultaneously is to estimate an expanded security characteristic line, for which the slope (beta) coefficient is allowed to increase as the market return increases. Another way to evaluate timers is based on the implicit call option embedded in their performance.
7. Common attribution procedures decompose portfolio performance to asset allocation, sector selection, and security selection decisions. Performance is assessed by calculating departures of portfolio composition from a benchmark or neutral portfolio.

# SUMMARY time-weighted average


dollar-weighted rate of return comparison universe

Sharpe ratio

Treynor's measure

Jensen's alpha information ratio survivorship bias


market timing bogey


# KEY TERMS

Geometric time-weighted return:  $1 + r_{G} = \left[(1 + r_{1})(1 + r_{2})\cdot \cdot \cdot (1 + r_{n})\right]^{1 / n}$

# KEY EQUATIONS

Sharpe ratio:  $S_P = \frac{r_P - r_f}{\sigma_P}$

$M^2$  of portfolio  $P$  given its Sharpe ratio:  $M^2 = \sigma_M(S_P - S_M)$

Treynor measure:  $T_{P} = \frac{r_{P} - r_{f}}{\beta_{P}}$

Jensen's alpha:  $\alpha_{P} = \overline{r}_{P} - \left[\overline{r}_{f} + \beta_{P}(\overline{r}_{M} - \overline{r}_{f})\right]$

Information ratio:  $\frac{\alpha_P}{\sigma(e_P)}$

Morningstar risk-adjusted return: MRAR(γ) =  $\left[\frac{1}{T}\sum_{t=1}^{T}\left(\frac{1 + r_t}{1 + r_{ft}}\right)^{-\gamma}\right]^{\frac{12}{\gamma}} - 1$

# PROBLEM SETS

1. A household savings-account spreadsheet shows the following entries:

# Excel

Please visit us at www.mhhe.com/Bodie13e


<table><tr><td>Date</td><td>Additions</td><td>Withdrawals</td><td>Value</td></tr><tr><td>1/1/2022</td><td></td><td></td><td>148,000</td></tr><tr><td>1/3/2022</td><td>2,500</td><td></td><td></td></tr><tr><td>3/20/2022</td><td>4,000</td><td></td><td></td></tr><tr><td>7/5/2022</td><td>1,500</td><td></td><td></td></tr><tr><td>12/2/2022</td><td>13,460</td><td></td><td></td></tr><tr><td>3/10/2023</td><td></td><td>23,000</td><td></td></tr><tr><td>4/7/2023</td><td>3,000</td><td></td><td></td></tr><tr><td>5/3/2023</td><td></td><td></td><td>198,000</td></tr></table>

Use the Excel function XIRR to calculate the dollar-weighted average return between the first and final dates.

2. Is it possible for a positive alpha to be associated with inferior performance? Explain.
3. When will the dollar-weighted return on a risky investment exceed the geometric return? When will it be lower?
4. We have seen that market timing has tremendous potential value. Would it therefore be wise to shift resources to timing at the expense of security selection?
5. Consider the rate of return of stocks ABC and XYZ.

<table><tr><td>Year</td><td>rABC</td><td>rXYZ</td></tr><tr><td>1</td><td>20\%</td><td>30\%</td></tr><tr><td>2</td><td>12</td><td>12</td></tr><tr><td>3</td><td>14</td><td>18</td></tr><tr><td>4</td><td>3</td><td>0</td></tr><tr><td>5</td><td>1</td><td>-10</td></tr></table>

$a$ . Calculate the arithmetic average return on these stocks over the sample period.
$b$ . Which stock has greater dispersion around the mean return?
c. Calculate the geometric average returns of each stock. What do you conclude?
d. If you were equally likely to earn a return of  $20\%$ ,  $12\%$ ,  $14\%$ ,  $3\%$ , or  $1\%$  in each year (these are the five annual returns for stock ABC), what would be your expected rate of return?
e. What if the five possible outcomes were those of stock XYZ?
$f$ . Given your answers to parts  $(d)$  and  $(e)$ , which measure of average return, arithmetic or geometric, appears more useful for predicting future performance?

6. XYZ's stock price and dividend history are as follows:

# eXceI

Please visit us at www.mhhe.com/Bodie13e


<table><tr><td>Year</td><td>Beginning-of-Year Price</td><td>Dividend Paid at Year-End</td></tr><tr><td>2020</td><td>$100</td><td>$4</td></tr><tr><td>2021</td><td>120</td><td>4</td></tr><tr><td>2022</td><td>90</td><td>4</td></tr><tr><td>2023</td><td>100</td><td>4</td></tr></table>

An investor buys three shares of XYZ at the beginning of 2020, buys another two shares at the beginning of 2021, sells one share at the beginning of 2022, and sells all four remaining shares at the beginning of 2023.

a. What are the arithmetic and geometric average time-weighted rates of return for the investor?
b. What is the dollar-weighted rate of return? (Hint: Carefully prepare a chart of cash flows for the four dates corresponding to the turns of the year for January 1, 2020, to January 1, 2023. If your calculator cannot calculate internal rate of return, you will have to use trial and error.)

7. A manager buys three shares of stock today and then sells one of those shares each year for the next three years. His actions and the price history of the stock are summarized below. The stock pays no dividends.

<table><tr><td>Time</td><td>Price</td><td>Action</td></tr><tr><td>0</td><td>90</td><td>Buy 3 shares</td></tr><tr><td>1</td><td>100</td><td>Sell 1 share</td></tr><tr><td>2</td><td>100</td><td>Sell 1 share</td></tr><tr><td>3</td><td>100</td><td>Sell 1 share</td></tr></table> a. Calculate the time-weighted geometric average return on this "portfolio."

$b$ . Calculate the time-weighted arithmetic average return on this portfolio.
$c$ . Calculate the dollar-weighted average return on this portfolio.

8. The expected rates of return and risk measures for two portfolios as well as the market index are given in the following table. The T-bill rate is currently  $5\%$ .

<table><tr><td></td><td>Portfolio A</td><td>Portfolio B</td><td>Market Index</td></tr><tr><td>Expected return</td><td>12\%</td><td>16\%</td><td>13\%</td></tr><tr><td>Beta</td><td>0.7</td><td>1.4</td><td>1.0</td></tr><tr><td>Standard deviation</td><td>12\%</td><td>31\%</td><td>18\%</td></tr></table> a. If you currently hold a market-index portfolio, would you choose to add either of these portfolios to your holdings? Explain.

b. If instead you could invest only in T-bills and one of these portfolios, which would you choose?

9. Consider the two (excess return) index-model regression results for stocks  $A$  and  $B$ . The risk-free rate over the period was  $6\%$ , and the market's average return was  $14\%$ . Performance is measured using an index model regression on excess returns.

<table><tr><td></td><td>Stock A</td><td>Stock B</td></tr><tr><td>Index model regression estimates</td><td>1\% + 1.2(rM - rI)</td><td>2\% + 0.8(rM - rI)</td></tr><tr><td>R-square</td><td>0.576</td><td>0.436</td></tr><tr><td>Residual standard deviation, σ(e)</td><td>10.3\%</td><td>19.1\%</td></tr><tr><td>Standard deviation of excess returns</td><td>21.6\%</td><td>24.9\%</td></tr></table>

$a$ . Calculate the following statistics for each stock: i. Alpha

ii. Information ratio iii. Sharpe ratio
iv. Treynor measure

$b$ . Which stock is the best choice under the following circumstances?

i. This is the only risky asset to be held by the investor.
ii. This stock will be mixed with the rest of the investor's portfolio, currently composed solely of holdings in the market-index fund.
iii. This is one of many stocks that the investor is analyzing to form an actively managed stock portfolio.

Excel

Please visit us at www.mhhe.com/Bodie13e


10. Evaluate the market timing and security selection abilities of four managers whose performances are plotted in the accompanying diagrams.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/033a8e894d7e93d8f8166b76d5a329752c5777d051e1aa6ac7596f6636633c2f.jpg)

11. Consider the following information regarding the performance of a money manager in a recent month. The table represents the actual return of each sector of the manager's portfolio in column 1, the fraction of the portfolio allocated to each sector in column 2, the benchmark or neutral sector allocations in column 3, and the returns of sector indices in column 4.

<table><tr><td></td><td>Actual Return</td><td>Actual Weight</td><td>Benchmark Weight</td><td>Index Return</td></tr><tr><td>Equity</td><td>2\%</td><td>0.70</td><td>0.60</td><td>2.5\%</td></tr><tr><td>Bonds</td><td>1</td><td>0.20</td><td>0.30</td><td>1.2</td></tr><tr><td>Cash</td><td>0.5</td><td>0.10</td><td>0.10</td><td>0.5</td></tr></table> a. What was the manager's return in the month? What was her overperformance or underperformance?

$b$ . What was the contribution of security selection to relative performance?
c. What was the contribution of asset allocation to relative performance?
d. Confirm that the sum of selection and allocation contributions equals her total "excess" return relative to the bogey.

12. A global equity manager is assigned to select stocks from a universe of large stocks throughout the world. The manager will be evaluated by comparing her returns to the return on the MSCI World Market Portfolio, but she is free to hold stocks from various countries in whatever proportions she finds desirable. Results for a given month are contained in the following table:

<table><tr><td>Country</td><td>Weight in MSCI Index</td><td>Manager&#x27;s Weight</td><td>Manager&#x27;s Return in Country</td><td>Return of Stock Index for That Country</td></tr><tr><td>U.K.</td><td>0.15</td><td>0.30</td><td>20\%</td><td>12\%</td></tr><tr><td>Japan</td><td>0.30</td><td>0.10</td><td>15</td><td>15</td></tr><tr><td>U.S.</td><td>0.45</td><td>0.40</td><td>10</td><td>14</td></tr><tr><td>Germany</td><td>0.10</td><td>0.20</td><td>5</td><td>12</td></tr></table>

$a$ . Calculate the total value added of all the manager's decisions this period.
$b$ . Calculate the value added (or subtracted) by her country allocation decisions.
c. Calculate the value added from her stock selection ability within countries.
d. Confirm that the sum of the contributions to value added from her country allocation plus security selection decisions equals total over- or underperformance.

13. Conventional wisdom says that one should measure a manager's investment performance over an entire market cycle. What arguments support this convention? What arguments contradict it?
14. Does the use of universes of managers with similar investment styles to evaluate relative investment performance overcome the statistical problems associated with instability of beta or total variability?
15. During a particular year, the T-bill rate was  $6\%$ , the market return was  $14\%$ , and a portfolio manager with beta of .5 realized a return of  $10\%$ . What was the manager's alpha?
16. Bill Smith is evaluating the performance of four large-cap equity portfolios: Funds  $A$ ,  $B$ ,  $C$ , and  $D$ . As part of his analysis, Smith computed the Sharpe ratio and the Treynor measure for all four funds. Based on his finding, the ranks assigned to the four funds are as follows:

<table><tr><td>Fund</td><td>Treynor Measure Rank</td><td>Sharpe Ratio Rank</td></tr><tr><td>A</td><td>1</td><td>4</td></tr><tr><td>B</td><td>2</td><td>3</td></tr><tr><td>C</td><td>3</td><td>2</td></tr><tr><td>D</td><td>4</td><td>1</td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/3dec43b4811cdc9a708c3bde0ba6df097ab3e34c6c85f590412e4e7797cb671f.jpg)
SCHWESER

The difference in rankings for Funds  $A$  and  $D$  is most likely due to:

$a$ . A lack of diversification in Fund  $A$  as compared to Fund  $D$ .
$b$ . Different benchmarks used to evaluate each fund's performance.
c. A difference in risk premiums.

Use the following information to answer Problems 17 through 20: Primo Management Co. is looking at how best to use benchmarks to evaluate the performance of its managers. The company has hired Sally Jones, CFA, to educate the managers on the best methods for constructing a benchmark portfolio, how to choose the best benchmark, whether the style of the fund under management matters, and what they should do with their global funds in terms of benchmarking.

Jones put together some 2-year performance numbers comparing Primo's current domestic funds to a potential benchmark.

<table><tr><td rowspan="2">Style Category</td><td colspan="2">Weight</td><td colspan="2">Return</td></tr><tr><td>Primo</td><td>Benchmark</td><td>Primo</td><td>Benchmark</td></tr><tr><td>Large-cap growth</td><td>0.60</td><td>0.50</td><td>17\%</td><td>16\%</td></tr><tr><td>Mid-cap growth</td><td>0.15</td><td>0.40</td><td>24</td><td>26</td></tr><tr><td>Small-cap growth</td><td>0.25</td><td>0.10</td><td>20</td><td>18</td></tr></table>

As part of her analysis, Jones also takes a look at one of Primo's global funds. In this particular portfolio, Primo is invested  $75\%$  in Dutch stocks and  $25\%$  in British stocks. The benchmark is invested  $50\%$  in Dutch stocks and  $50\%$  in British stocks. On average, the British stocks outperformed the Dutch stocks. The euro appreciated  $6\%$  versus the U.S. dollar over the holding period while the pound depreciated  $2\%$  versus the dollar. In terms of the local return, Primo outperformed the benchmark with the Dutch investments but underperformed the index with respect to the British stocks.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/93ee87b9d0a9e6d46a73d1cb6d73e0f15d5ad4905b8aed65226a58d184138ef1.jpg)

SCHWESER

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/53e730f7ea7be3287400062e2abd741d4500948aedfdf31be4e519e061c60898.jpg)

SCHWESER

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/614d3342d2c7f2f451d3c13cdfef4fa19331986bcadcc2671c7c85ab4a0b2814.jpg)

SCHWESER

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/8291b13ce544bd34ace2240ca75c7fe6c2f139ec136df4ff7c1f7e1bd3668914.jpg)

SCHWESER

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/55e72f727168ff03fc2269f407578cd12d0495c757d680235c8ef0880342239c.jpg)

SCHWESER

17. What is the within-sector selection effect for each individual sector?
18. Calculate the amount by which the Primo portfolio out-(under-)performed the market over the period, as well as the contribution to performance of the pure sector allocation and security selection decisions.
19. If Primo decides to use return-based style analysis, will the  $R^2$  of the regression equation of a passively managed fund be higher or lower than that of an actively managed fund?
20. Which of the following statements about Primo's global fund is most correct? Primo appears to have a positive currency allocation effect as well as

$a$ . A negative market allocation effect and a positive security allocation effect.
$b$ . A negative market allocation effect and a negative security allocation effect.
$c$ . A positive market allocation effect and a negative security allocation effect.

21. Kelli Blakely is a portfolio manager for the Miranda Fund, a core large-cap equity fund. The benchmark for performance measurement purposes is the S&P 500. Although the Miranda portfolio generally mirrors the asset class and sector weightings of the S&P, Blakely is allowed a significant amount of leeway in managing the fund.

Blakely was able to produce exceptional returns last year (as outlined in the table below) through her market timing and security selection skills. At the outset of the year, she became extremely concerned that the combination of a weak economy and geopolitical uncertainties would negatively impact the market. Taking a bold step, she changed her market allocation. For the entire year her asset class exposures averaged  $50\%$  in stocks and  $50\%$  in cash. The S&P's allocation between stocks and cash during the period was a constant  $97\%$  and  $3\%$ , respectively. The risk-free rate of return was  $2\%$ .

One-Year Trailing Returns

<table><tr><td></td><td>Miranda Fund</td><td>S&amp;P 500</td></tr><tr><td>Return</td><td>10.2\%</td><td>-22.5\%</td></tr><tr><td>Standard deviation</td><td>37\%</td><td>44\%</td></tr><tr><td>Beta</td><td>1.10</td><td>1.00</td></tr></table> a. What are the Sharpe ratios for the Miranda Fund and the S&P 500?

$b$ . What are the  $M^2$  measures for the Miranda Fund and the S&P 500?
c. What is the Treynor measure for the Miranda Fund and the S&P 500?
$d$ . What is the Jensen measure for the Miranda Fund?

22. Go to Kenneth French's data library site at mba.tuck.dartmouth.edu/pages/faculty/ken.french/data_library.html. Select two industry portfolios of your choice and download 36 months of data. Download other data from the site as needed to perform the following tasks.

a. Compare the portfolio's performance to that of the market index on the basis of the Sharpe, Jensen, and Treynor measures as well as the information ratio. Plot the monthly values of alpha plus residual return.
b. Now use the Fama-French three-factor model (see Section 13.3) as the return benchmark. Compute plots of alpha plus residual return using the FF model. How does performance change using this benchmark instead of the market index?

Excel

Please visit us at www.mhhe.com/Bodie13e


![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/a2d0091f02423157ec7094ad308b8c11726d376b4478493d15ee7bdf6f40ba1b.jpg)

1. You and a prospective client are considering the measurement of investment performance, particularly with respect to international portfolios for the past five years. The data you discussed are presented in the following table:

<table><tr><td>International Manager or Index</td><td>Total Return</td><td>Country and Security Return</td><td>Currency Return</td></tr><tr><td>Manager A</td><td>-6.0\%</td><td>2.0\%</td><td>-8.0\%</td></tr><tr><td>Manager B</td><td>-2.0</td><td>-1.0</td><td>-1.0</td></tr><tr><td>International Index</td><td>-5.0</td><td>0.2</td><td>-5.2</td></tr></table> a. Assume that the sample results for manager A and manager B accurately reflect their investment skills and that both managers actively manage currency exposure. Briefly describe one strength and one weakness for each manager.

b. Recommend and justify a strategy that would enable your fund to take advantage of the strengths of each of the two managers while minimizing their weaknesses.

2. Carl Karl, a portfolio manager for the Alpine Trust Company, has been responsible since 2025 for the City of Alpine's Employee Retirement Plan, a municipal pension fund. Alpine is a growing community, and city services and employee payrolls have expanded in each of the past 10 years. Contributions to the plan in fiscal 2030 exceeded benefit payments by a three-to-one ratio.

The plan board of trustees directed Karl five years ago to invest for total return over the long term. However, as trustees of this highly visible public fund, they cautioned him that volatile or erratic results could cause them embarrassment. They also noted a state statute that mandated that not more than  $25\%$  of the plan's assets (at cost) be invested in common stocks.

At the annual meeting of the trustees in November 2030, Karl presented the following portfolio and performance report to the board:

Alpine Employee Retirement Plan

<table><tr><td>Asset Mix as of 9/30/2030</td><td colspan="2">At Cost (millions)</td><td colspan="2">At Market (millions)</td></tr><tr><td>Fixed-income assets:</td><td></td><td></td><td></td><td></td></tr><tr><td>Short-term securities</td><td>$ 4.5</td><td>11.0\%</td><td>$ 4.5</td><td>11.4\%</td></tr><tr><td>Long-term bonds and mortgages</td><td>26.5</td><td>64.7</td><td>23.5</td><td>59.5</td></tr><tr><td>Common stocks</td><td>10.0</td><td>24.3</td><td>11.5</td><td>29.1</td></tr><tr><td></td><td>$41.0</td><td>100.0\%</td><td>$39.5</td><td>100.0\%</td></tr></table>

Investment Performance

<table><tr><td></td><td colspan="2">Annual Rates of Return for Periods Ending 9/30/2030</td></tr><tr><td></td><td>5 Years</td><td>1 Year</td></tr><tr><td>Total Alpine Fund:</td><td></td><td></td></tr><tr><td>Time-weighted</td><td>8.2\%</td><td>5.2\%</td></tr><tr><td>Dollar-weighted (internal)</td><td>7.7\%</td><td>4.8\%</td></tr><tr><td>Assumed actuarial return</td><td>6.0\%</td><td>6.0\%</td></tr><tr><td>U.S. Treasury bills</td><td>7.5\%</td><td>11.3\%</td></tr><tr><td>Large sample of pension funds (average 60\% equities, 40\% fixed income)</td><td>10.1\%</td><td>14.3\%</td></tr><tr><td>Common stocks—Alpine Fund</td><td>13.3\%</td><td>14.3\%</td></tr><tr><td>Alpine portfolio beta coefficient</td><td>0.90</td><td>0.89</td></tr><tr><td>Standard &amp; Poor&#x27;s 500 stock index</td><td>13.8\%</td><td>21.1\%</td></tr><tr><td>Fixed-income securities—Alpine Fund</td><td>6.7\%</td><td>1.0\%</td></tr><tr><td>Broad Investment Grade bond index</td><td>4.0\%</td><td>-11.4\%</td></tr></table>

Karl was proud of his performance and was chagrined when a trustee made the following critical observations: a. "Our 1-year results were terrible, and it's what you've done for us lately that counts most."

b. "Our total fund performance was clearly inferior compared to the large sample of other pension funds for the last five years. What else could this reflect except poor management judgment?"
c. "Our common stock performance was especially poor for the 5-year period."
d. "Why bother to compare your returns to the return from Treasury bills and the actuarial assumption rate? What your competition could have earned for us or how we would have fared if invested in a passive index (which doesn't charge a fee) are the only relevant measures of performance."
e. "Who cares about time-weighted return? If it can't pay pensions, what good is it?"

Appraise the merits of each of these statements and give counterarguments that Mr. Karl can use.

3. The Retired Fund is an open-ended mutual fund composed of 500 million in U.S. bonds and U.S. Treasury bills. This fund has had a portfolio duration (including T-bills) of between three and nine years. Retired has shown first-quartile performance over the past five years, as measured by an independent fixed-income measurement service. However, the directors of the fund would like to measure the market timing skill of the fund's sole bond investor manager. An external consulting firm has suggested the following three methods: a. Method I examines the value of the bond portfolio at the beginning of every year, then calculates the return that would have been achieved had that same portfolio been held throughout the year. This return would then be compared with the return actually obtained by the fund.

b. Method II calculates the average weighting of the portfolio in bonds and T-bills for each year. Instead of using the actual bond portfolio, the return on a long-bond market index and T-bill index would be used. For example, if the portfolio on average was  $65\%$  in bonds and  $35\%$  in T-bills, the annual return on a portfolio invested  $65\%$  in a long-bond index and  $35\%$  in T-bills would be calculated. This return is compared with the annual return that would have been generated using the indexes and the manager's actual bond/T-bill weighting for each quarter of the year.
c. Method III examines the net bond purchase activity (market value of purchases less sales) for each quarter of the year. If net purchases were positive (negative) in any quarter, the performance of the bonds would be evaluated until the net purchase activity became negative (positive). Positive (negative) net purchases would be viewed as a bullish (bearish) view taken by the manager. The correctness of this view would be measured.

Critique each method with regard to market timing measurement problems.

Use the following data to solve CFA Problems 4 and 5: The administrator of a large pension fund wants to evaluate the performance of four portfolio managers. Each portfolio manager invests only in U.S. common stocks. Assume that during the most recent 5-year period, the average annual total rate of return including dividends on the S&P 500 was  $8\%$ , and the average nominal rate of return on government Treasury bills was  $2\%$ . The following table shows risk and return measures for each portfolio:

<table><tr><td>Portfolio</td><td>Average Annual Rate of Return</td><td>Standard Deviation</td><td>Beta</td></tr><tr><td>P</td><td>11\%</td><td>20\%</td><td>1.1</td></tr><tr><td>Q</td><td>18</td><td>18</td><td>2.1</td></tr><tr><td>R</td><td>5</td><td>10</td><td>0.5</td></tr><tr><td>S</td><td>10</td><td>14</td><td>1.5</td></tr><tr><td>S&amp;P 500</td><td>8</td><td>12</td><td>1.0</td></tr></table>

4. What is the Treynor performance measure for portfolio  $P$ ?
5. What is the Sharpe performance measure for portfolio  $Q$ ?
6. An analyst wants to evaluate portfolio  $X$ , consisting entirely of U.S. common stocks, using both the Treynor and Sharpe measures of portfolio performance. The following table provides the average annual rate of return for portfolio  $X$ , the market portfolio (as measured by the S&P 500), and U.S. Treasury bills during the past eight years:

<table><tr><td></td><td>Average Annual Rate of Return</td><td>Standard Deviation of Return</td><td>Beta</td></tr><tr><td>Portfolio X</td><td>6\%</td><td>18\%</td><td>0.60</td></tr><tr><td>S&amp;P 500</td><td>8</td><td>13</td><td>1.00</td></tr><tr><td>T-bills</td><td>2</td><td>N/A</td><td>N/A</td></tr></table> a. Calculate the Treynor and Sharpe measures for both portfolio  $X$  and the S&P 500. Briefly explain whether portfolio  $X$  underperformed, equaled, or outperformed the S&P 500 on a risk-adjusted basis using both the Treynor measure and the Sharpe ratio.

b. On the basis of the performance of portfolio  $X$  relative to the S&P 500 calculated in part (a), briefly explain the reason for the conflicting results when using the Treynor measure versus the Sharpe ratio.

7. Assume you invested in an asset for two years. The first year you earned a  $15\%$  return, and the second year you earned a negative  $10\%$  return. What was your annual geometric return?
8. A portfolio of stocks generates a  $-9\%$  return in 2020, a  $23\%$  return in 2021, and a  $17\%$  return in 2022. What was the annualized return (geometric mean) for the entire period?
 9. A 2-year investment of $2,000 results in a cash flow of $150 at the end of the first year and another cash flow of 150 at the end of the second year, in addition to the return of the original investment. What is the dollar-weighted (internal) rate of return on the investment?
10. In measuring the performance of a portfolio, the time-weighted rate of return may be preferred to the dollar-weighted rate of return because:

$a$ . When the rate of return varies, the time-weighted return is higher.
$b$ . The dollar-weighted return assumes all portfolio deposits are made on day 1.
$c$ . The dollar-weighted return can only be estimated.
$d$ . The time-weighted return is unaffected by the timing of portfolio contributions and withdrawals.

11. A pension fund portfolio begins with $500,000 and earns 15\% the first year and 10\% the second year. At the beginning of the second year, the sponsor contributes another $500,000. What were the time-weighted and dollar-weighted rates of return?
12. During the annual review of Acme's pension plan, several trustees questioned their investment consultant about various aspects of performance measurement and risk assessment.

a. Comment on the appropriateness of using each of the following benchmarks for performance evaluation:

Market index.
Benchmark normal portfolio.
- Median of the manager universe.

b. Distinguish among the following performance measures:

The Sharpe ratio.
- The Treynor measure.
Jensen's alpha.

i. Describe how each of the three performance measures is calculated.
ii. State whether each measure assumes that the relevant risk is systematic, unsystematic, or total. Explain how each measure relates excess return and the relevant risk.

13. Trustees of the Pallor Corp. pension plan ask consultant Donald Millip to comment on the following statements. What should his response be?

a. Median manager benchmarks are statistically unbiased measures of performance over long periods of time.
b. Median manager benchmarks are unambiguous and are therefore easily replicated by managers wishing to adopt a passive/indexed approach.
c. Median manager benchmarks are not appropriate in all circumstances because the median manager universe encompasses non-uniform investment styles.

14. James Chan is reviewing the performance of the global equity managers of the Jarvis University endowment fund. Williamson Capital is currently the endowment fund's only large-capitalization global equity manager. Performance data for Williamson Capital are shown in Table 24A.


Chan also presents the endowment fund's investment committee with performance information for Joyner Asset Management, which is another large-capitalization global equity manager. Performance data for Joyner Asset Management are shown in Table 24B. Performance data for the relevant risk-free asset and market index are shown in Table 24C.

a. Calculate the Sharpe ratio and Treynor measure for both Williamson Capital and Joyner Asset Management.
$b$ . The investment committee notices that using the Sharpe ratio versus the Treynor measure produces different performance rankings of Williamson and Joyner. Explain why these criteria may result in different rankings.

Average annual rate of return 22.1\%

Beta 1.2

Standard deviation of returns 16.8\%

Average annual rate of return 24.2\%

Beta 0.8

Standard deviation of returns 20.2\%

# Table 24A

Williamson Capital performance data, 2023-2028


# Table 24B

Joyner Asset Management performance data, 2023-2028


# Risk-Free Asset

Average annual rate of return 5.0\%

# Market Index

Average annual rate of return 18.9\%

Standard deviation of returns 13.8\%

# Table 24C

Risk-free asset and market index performance data, 2023-2028


# E-INVESTMENTS EXERCISES

Morningstar has an extensive ranking system for mutual funds, including a screening program that allows you to select funds based on a number of factors. Open the Morningstar Web site at www.morningstar.com and click on the Mutual Funds link. Select the Fund Quickrank link in the Tools section. (Free registration is required to access the site.) Use the Quickrank screener to find a list of large growth stock funds with the highest 1-year returns. Repeat the process to find the funds with the highest 3-year returns. What fraction of funds appear on both lists?

Select three of the funds that appear on both lists. For each fund, click on the ticker symbol to get its Morningstar report and look in the Ratings & Risk section.

1. What is the fund's standard deviation?

2. What is the fund's Sharpe ratio?

3. What is the fund's Treynor ratio?

4. What is the standard index? What is the best-fit index?

5. What are the beta and alpha coefficients using both the standard index and the best-fit index? How do these compare to the fund's parameters?

6. Look at the Management section of the report. Was the same manager in place for the entire 10-year period?

7. Are any of these funds of interest to you? How might your screening choices differ if you were choosing funds for various clients?

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/00c02e3dd0df60f729224e4e70b5db85962c8e9a85f71274efe887c3f05ccd6c.jpg)

# SOLUTIONS TO CONCEPT CHECKS

1. Time

Action

Cash Flow

0 Buy two shares -40

1 Collect dividends; then sell one of the shares  $4 + 22$

2 Collect dividend on remaining share, then sell it  $2 + 19$ a. Dollar-weighted return:


$$
\begin{array}{l} - 4 0 + \frac {2 6}{1 + r} + \frac {2 1}{(1 + r) ^ {2}} = 0 \\ r = .1191, \text{or} 11.91\% \\ \end{array}
$$

$b$ . Time-weighted return:

The rates of return on the stock in the two years were:

$$
\begin{array}{l} r _ {1} = \frac {2 + (2 2 - 2 0)}{2 0} = . 2 0 \\ r _ {2} = \frac {2 + (1 9 - 2 2)}{2 2} = -. 0 4 5 5 \\ \end{array}
$$

Arithmetic time-weighted return:  $(r_1 + r_2) / 2 = .0773$ , or  $7.73\%$

Geometric time-weighted return:  $\left[(1 + r_1)(1 + r_2)\right]^{1 / 2} - 1 = .0702 = 7.02\%$

2. Sharpe:  $(\overline{r} -\overline{r}_f) / \sigma$

$$
\begin{array}{l} S _ {P} = (3 5 - 6) / 4 2 = . 6 9 \\ S _ {M} = (2 8 - 6) / 3 0 = . 7 3 3 \\ \end{array}
$$

Alpha:  $\overline{r} - [\overline{r}_f + \beta (r_M - r_f)]$

$$
\begin{array}{l} \alpha_ {P} = 3 5 - [ 6 + 1. 2 (2 8 - 6) ] = 2. 6 \\ \alpha_ {M} = 0 \\ \end{array}
$$

Treynor:  $(\overline{r} -\overline{r}_f) / \beta$

$$
\begin{array}{l} T _ {P} = (3 5 - 6) / 1. 2 = 2 4. 2 \\ T _ {M} = (2 8 - 6) / 1. 0 = 2 2 \\ \end{array}
$$

Information ratio:  $\alpha / \sigma(e)$

$$
\begin{array}{l} I _ {P} = 2. 6 / 1 8 = . 1 4 4 \\ I _ {M} = 0 \\ \end{array}
$$

Therefore, portfolio  $P$  outperformed the market according to the Jensen, Treynor, and information measures but had an inferior Sharpe measure.

3. The alpha exceeds zero by  $.2 / 2 = .1$  standard deviation. A table of the normal distribution (or, somewhat more appropriately, the distribution of the  $t$ -statistic) indicates that the probability of such an event, if the analyst actually has no skill, is approximately  $46\%$ .
4. The timer will guess bear or bull markets completely randomly. One-half of all bull markets will be preceded by a correct forecast, and similarly for bear markets. Hence,  $P_{1} + P_{2} - 1 = \frac{1}{2} + \frac{1}{2} - 1 = 0$ .

5. First compute the new bogey performance as  $(.70\times 5.81) + (.25\times 1.45) + (.05\times .48) = 4.45$ a. Contribution of asset allocation to performance:


<table><tr><td>Market</td><td>(1)
Actual
Weight in
Market</td><td>(2)
Benchmark
Weight in
Market</td><td>(3)
Active or Excess
Weight</td><td>(4)
Market
Return</td><td>(5) = (3) × (4)
Contribution to
Performance (\%)</td></tr><tr><td>Equity</td><td>0.70</td><td>0.70</td><td>0.00</td><td>5.81</td><td>0.00</td></tr><tr><td>Fixed-income</td><td>0.07</td><td>0.25</td><td>-0.18</td><td>1.45</td><td>-0.26</td></tr><tr><td>Cash</td><td>0.23</td><td>0.05</td><td>0.18</td><td>0.48</td><td>0.09</td></tr><tr><td colspan="5">Contribution of asset allocation</td><td>-0.17</td></tr></table>

$b$ . Contribution of selection to total performance:

<table><tr><td>Market</td><td>(1) Portfolio Performance (\%)</td><td>(2) Index Performance (\%)</td><td>(3) Excess Performance (\%)</td><td>(4) Portfolio Weight</td><td>(5) = (3) × (4) Contribution (\%)</td></tr><tr><td>Equity</td><td>7.28</td><td>5.00</td><td>2.28</td><td>0.70</td><td>1.60</td></tr><tr><td>Fixed-income</td><td>1.89</td><td>1.45</td><td>0.44</td><td>0.07</td><td>0.03</td></tr><tr><td colspan="5">Contribution of selection within markets</td><td>1.63</td></tr></table>


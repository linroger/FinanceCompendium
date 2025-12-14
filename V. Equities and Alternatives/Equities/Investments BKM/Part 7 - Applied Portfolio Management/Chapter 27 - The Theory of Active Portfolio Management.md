---
title: "Chapter 27 - The Theory of Active Portfolio Management"
aliases:
  - The Theory of Active Portfolio Management
parent_directory: Part 7 - Applied Portfolio Management
cssclasses: academia
---

# The Theory of Active Portfolio Management

# 27

THIS CHAPTER CONSIDERS practical complexities in the process of constructing optimal portfolios. We've already devoted considerable attention to the principles of portfolio construction, particularly in Chapters 7 and 8. But the execution of these portfolio models presents several problems in implementation. Chief among them is the input list of expected returns (or, almost equivalently, of security alphas) and covariances. Expected returns are especially difficult to estimate from historical data. Security alphas are highly inconsistent from one period to the next. Moreover, as we will see, portfolio weights are exceedingly sensitive to assumed values of alpha. Even apparently reasonable forecasts of alpha can result in optimal risky portfolios calling for extreme long positions or, alternatively (if alpha is negative), short positions in several component securities. These portfolios will be deemed unacceptable by most traders.

Therefore, we need additional guidance as to how to put our models to work in a more realistic setting. Fortunately, theory can provide guidance even for these practical problems. We begin with the Treynor-Black model that we first encountered in Chapter 8, now showing how to handle limited precision in the forecasts of alpha values and the extreme portfolio positions often prescribed by the model. Armed with these insights, we present a prototype organizational chart and discuss the efficacy of adapting the organization to the theoretical underpinning of portfolio management.

In the next section, we present the Black-Litterman model, which allows flexible views about the expected returns of major asset classes to improve asset allocation. Then we look into the potential value of security analysis and end with concluding remarks. An appendix to the chapter presents the mathematics underlying the Black-Litterman model.

# 27.1 Optimal Portfolios and Alpha Values

In Chapter 8, we showed how to form an optimal risky portfolio with a single-index model. Table 27.1 summarizes the steps in this optimization, commonly known as the Treynor-Black model. This procedure uses the index model that ignores potential correlation of residual returns.

Table 27.1

Construction and properties of the optimal risky portfolio

1. Initial position of security  $i$  in the active portfolio
2. Scaled initial positions

$$ w _ {i} ^ {0} = \frac {\alpha_ {i}}{\sigma^ {2} (e _ {i})}
$$

3. Alpha of the active portfolio

$$ w _ {i} = \frac {w _ {i} ^ {0}}{\sum_ {i = 1} ^ {n} \frac {\alpha_ {i}}{\sigma^ {2} (e _ {i})}}
$$

4. Residual variance of the active portfolio

$$
\alpha_ {A} = \sum_ {i = 1} ^ {n} W _ {i} \alpha_ {i}
$$

5. Initial position in the active portfolio

$$
\pmb {\sigma} ^ {2} (\pmb {e} _ {A}) = \sum_ {i = 1} ^ {n} w _ {i} ^ {2} \pmb {\sigma} ^ {2} (\pmb {e} _ {i})
$$

6. Beta of the active portfolio

$$ w _ {A} ^ {0} = \frac {\frac {\alpha_ {A}}{\sigma^ {2} (e _ {A})}}{\frac {E (R _ {M})}{\sigma_ {M} ^ {2}}}
$$

7. Adjusted (for beta) position in the active portfolio

$$
\beta_ {A} = \sum_ {i = 1} ^ {n} w _ {i} \beta_ {i}
$$

8. Final weights in passive portfolio and in security  $i$

$$ w _ {A} ^ {*} = \frac {w _ {A} ^ {0}}{1 + (1 - \beta_ {A}) w _ {A} ^ {0}}
$$

9. The beta of the optimal risky portfolio and its risk premium

$$ w _ {M} ^ {*} = 1 - w _ {A} ^ {*}; \qquad w _ {i} ^ {*} = w _ {A} ^ {*} w _ {i}
$$

10. The variance of the optimal risky portfolio

$$
\beta_ {P} = W _ {M} ^ {*} + W _ {A} ^ {*} \beta_ {A} = 1 - W _ {A} ^ {*} (1 - \beta_ {A})
$$

11. Sharpe ratio of the risky portfolio

$$
E (R _ {P}) = \beta_ {P} E (R _ {M}) + w _ {A} ^ {*} \alpha_ {A}
$$

$$
\sigma_ {P} ^ {2} = \beta_ {P} ^ {2} \sigma_ {M} ^ {2} + [ w _ {A} ^ {*} \overline {{\sigma}} (e _ {A}) ] ^ {2}
$$

$$
S _ {P} ^ {2} = S _ {M} ^ {2} + \sum_ {i = 1} ^ {n} \left(\frac {\alpha_ {i}}{\sigma (e _ {i})}\right) ^ {2}
$$

For illustration, Spreadsheet 27.1 summarizes the input data we use in this exercise as well as the resulting optimal portfolio. Panel D shows the resulting optimal risky portfolio and the improvement in the Sharpe ratio over the passive market-index portfolio offered by adding the active portfolio to the mix. To better appreciate this improvement, we have included the  $M$ -square measure of performance.  $M$ -square is the incremental expected return of the optimized portfolio compared to the passive alternative once the active portfolio is mixed with bills to provide the same total volatility as the index portfolio (for a review, see Chapter 24).

# Forecasts of Alpha Values and Extreme Portfolio Weights

The overriding impression from Spreadsheet 27.1 is the apparently meager improvement in performance: Panel D shows that  $M$ -square increases by only 19 basis points (equivalent to an improvement of .0136 in the Sharpe ratio). Notice that the Sharpe ratio of the active portfolio is inferior to that of the passive portfolio (due to its large standard deviation), and hence its  $M$ -square is actually negative. But because the active portfolio is mixed with the passive portfolio, total volatility is not the appropriate measure of risk. When combined

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td><td>H</td><td>I</td><td>J</td></tr><tr><td>1</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>2</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>3</td><td colspan="6">Panel A: Risk Parameters of the Investable Universe (annualized)</td><td></td><td></td><td></td><td></td></tr><tr><td>4</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>5</td><td></td><td>SD of Excess Return</td><td>Beta</td><td>SD of Systematic Component</td><td>SD of Residual</td><td>Correlation with the S&amp;P 500</td><td></td><td></td><td></td><td></td></tr><tr><td>6</td><td>S&amp;P 500</td><td>0.1358</td><td>1.00</td><td>0.1358</td><td>0</td><td>1</td><td></td><td></td><td></td><td></td></tr><tr><td>7</td><td>HP</td><td>0.3817</td><td>2.03</td><td>0.2762</td><td>0.2656</td><td>0.72</td><td></td><td></td><td></td><td></td></tr><tr><td>8</td><td>DELL</td><td>0.2901</td><td>1.23</td><td>0.1672</td><td>0.2392</td><td>0.58</td><td></td><td></td><td></td><td></td></tr><tr><td>9</td><td>WMT</td><td>0.1935</td><td>0.62</td><td>0.0841</td><td>0.1757</td><td>0.43</td><td></td><td></td><td></td><td></td></tr><tr><td>10</td><td>TARGET</td><td>0.2611</td><td>1.27</td><td>0.1720</td><td>0.1981</td><td>0.66</td><td></td><td></td><td></td><td></td></tr><tr><td>11</td><td>BP</td><td>0.1822</td><td>0.47</td><td>0.0634</td><td>0.1722</td><td>0.35</td><td></td><td></td><td></td><td></td></tr><tr><td>12</td><td>SHELL</td><td>0.1988</td><td>0.67</td><td>0.0914</td><td>0.1780</td><td>0.46</td><td></td><td></td><td></td><td></td></tr><tr><td>13</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>14</td><td colspan="6">Panel B: The Index Model Covariance Matrix</td><td></td><td></td><td></td><td></td></tr><tr><td>15</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>16</td><td></td><td></td><td>SP 500</td><td>HP</td><td>DELL</td><td>WMT</td><td>TARGET</td><td>BP</td><td>SHELL</td><td></td></tr><tr><td>17</td><td></td><td>Beta</td><td>1.00</td><td>2.03</td><td>1.23</td><td>0.62</td><td>1.27</td><td>0.47</td><td>0.67</td><td></td></tr><tr><td>18</td><td>S&amp;P 500</td><td>1.00</td><td>0.0184</td><td>0.0375</td><td>0.0227</td><td>0.0114</td><td>0.0234</td><td>0.0086</td><td>0.0124</td><td></td></tr><tr><td>19</td><td>HP</td><td>2.03</td><td>0.0375</td><td>0.1457</td><td>0.0462</td><td>0.0232</td><td>0.0475</td><td>0.0175</td><td>0.0253</td><td></td></tr><tr><td>20</td><td>DELL</td><td>1.23</td><td>0.0227</td><td>0.0462</td><td>0.0842</td><td>0.0141</td><td>0.0288</td><td>0.0106</td><td>0.0153</td><td></td></tr><tr><td>21</td><td>WMT</td><td>0.62</td><td>0.0114</td><td>0.0232</td><td>0.0141</td><td>0.0374</td><td>0.0145</td><td>0.0053</td><td>0.0077</td><td></td></tr><tr><td>22</td><td>TARGET</td><td>1.27</td><td>0.0234</td><td>0.0475</td><td>0.0288</td><td>0.0145</td><td>0.0682</td><td>0.0109</td><td>0.0157</td><td></td></tr><tr><td>23</td><td>BP</td><td>0.47</td><td>0.0086</td><td>0.0175</td><td>0.0106</td><td>0.0053</td><td>0.0109</td><td>0.0332</td><td>0.0058</td><td></td></tr><tr><td>24</td><td>SHELL</td><td>0.67</td><td>0.0124</td><td>0.0253</td><td>0.0153</td><td>0.0077</td><td>0.0157</td><td>0.0058</td><td>0.0395</td><td></td></tr><tr><td>25</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>26</td><td colspan="6">Panel C: Macro Forecast (S&amp;P 500) and Forecasts of Alpha Values</td><td></td><td></td><td></td><td></td></tr><tr><td>27</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>28</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>29</td><td></td><td>SP 500</td><td>HP</td><td>DELL</td><td>WMT</td><td>TARGET</td><td>BP</td><td>SHELL</td><td></td><td></td></tr><tr><td>30</td><td>Alpha</td><td>0</td><td>0.0150</td><td>-0.0100</td><td>-0.0050</td><td>0.0075</td><td>0.012</td><td>0.0025</td><td></td><td></td></tr><tr><td>31</td><td>Risk premium</td><td>0.0600</td><td>0.1371</td><td>0.0639</td><td>0.0322</td><td>0.0835</td><td>0.0400</td><td>0.0429</td><td></td><td></td></tr><tr><td>32</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>33</td><td colspan="6">Panel D: Computation of the Optimal Risky Portfolio</td><td></td><td></td><td></td><td></td></tr><tr><td>34</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>35</td><td></td><td>S&amp;P 500</td><td>Active Pf A</td><td></td><td>HP</td><td>DELL</td><td>WMT</td><td>TARGET</td><td>BP</td><td>SHELL</td></tr><tr><td>36</td><td></td><td></td><td></td><td>σ2(e)</td><td>0.0705</td><td>0.0572</td><td>0.0309</td><td>0.0392</td><td>0.0297</td><td>0.0317</td></tr><tr><td>37</td><td></td><td></td><td>0.5505</td><td>α/σ2(e)</td><td>0.2126</td><td>-0.1748</td><td>-0.1619</td><td>0.1911</td><td>0.4045</td><td>0.0789</td></tr><tr><td>38</td><td></td><td></td><td>1.0000</td><td>w0(i)</td><td>0.3863</td><td>-0.3176</td><td>-0.2941</td><td>0.3472</td><td>0.7349</td><td>0.1433</td></tr><tr><td>39</td><td></td><td></td><td></td><td>[w0(i)]2</td><td>0.1492</td><td>0.1009</td><td>0.0865</td><td>0.1205</td><td>0.5400</td><td>0.0205</td></tr><tr><td>40</td><td>αA</td><td></td><td>0.0222</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>41</td><td>σ2(eA)</td><td></td><td>0.0404</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>42</td><td>w0</td><td></td><td>0.1691</td><td rowspan="2">Overall Portfolio</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>43</td><td>w*</td><td>0.8282</td><td>0.1718</td><td>0.0663</td><td>-0.0546</td><td>-0.0505</td><td>0.0596</td><td>0.1262</td><td>0.0246</td></tr><tr><td>44</td><td>Beta</td><td>1</td><td>1.0922</td><td>1.0158</td><td>0.0663</td><td>-0.0546</td><td>-0.0505</td><td>0.0596</td><td>0.1262</td><td>0.0246</td></tr><tr><td>45</td><td>Risk premium</td><td>0.06</td><td>0.0878</td><td>0.0648</td><td>0.0750</td><td>0.1121</td><td>0.0689</td><td>0.0447</td><td>0.0880</td><td>0.0305</td></tr><tr><td>46</td><td>SD</td><td>0.1358</td><td>0.2497</td><td>0.1422</td><td>0.3817</td><td>0.2901</td><td>0.1935</td><td>0.2611</td><td>0.1822</td><td>0.1988</td></tr><tr><td>47</td><td>Sharpe ratio</td><td>0.44</td><td>0.35</td><td>0.4556</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>48</td><td>M-square</td><td>0</td><td>-0.0123</td><td>0.0019</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>49</td><td>Tracking risk</td><td></td><td></td><td>0.0346</td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table>

# Spreadsheet 27.1

Active portfolio management with a universe of six stocks

Source: Microsoft Corporation.

# excel

Please visit us at www.mhhe.com/Bodie13e


with the passive portfolio, it does offer some improvement in performance, albeit quite modest. This is the best that can be had given the alpha values uncovered by the security analysts (see Panel C). Notice that the position in the active portfolio amounts to  $17\%$  (cell C43), financed in part by a combined short position in Dell and Walmart of about  $10\%$ . Because the figures in Spreadsheet 27.1 are annualized, this performance is equivalent to a 1-year holding-period return (HPR).

The alpha values we use in Spreadsheet 27.1 are quite modest by the standard of typical analysts' forecasts. Alphas inferred from 1-year-ahead "target" (i.e., forecasted) prices of security analysts are commonly far larger than the values in Panel C. To see how sensitive the optimal risky portfolio can be to assumed alpha, we recompute its composition in

Table 27.2, but with a new set of assumed values of alpha (in the top row of the table) that are more representative of the magnitudes that one might encounter in practice.

Table 27.2 shows the optimal portfolio using these forecasts rather than the original alpha values shown in Panel C in Spreadsheet 27.1. The difference in performance is striking. The Sharpe ratio of the new optimal portfolio has increased from the benchmark's .44 to 2.32, amounting to a huge risk-adjusted return advantage. This shows up in an  $M$ -square of  $25.53\%$

However, these results also expose a potential major problem with the Treynor-Black model. The optimal portfolio now calls for extreme long/short positions that may be infeasible for a real-world portfolio manager. For example, the model calls for a position of 5.79 (579\%) in the active portfolio (see the bottom row of the top panel), largely financed by a short position of  $-4.79$  in the S&P 500 index. Moreover, the standard deviation of this optimal portfolio is  $52.24\%$ , a level of risk that only extremely aggressive hedge funds would be willing to bear. It is important to notice that this risk is largely nonsystematic because the beta of the active portfolio, at .95, is less than 1.0, and the beta of the overall risky portfolio is even lower, only .73, because of the short position in the passive portfolio. Only hedge funds may be interested in this portfolio.

One approach to this problem is to restrict extreme portfolio positions, beginning with short sales. We can rule out short positions in the passive index portfolio (in this example, the S&P 500) by requiring that the weight in the active portfolio cannot exceed  $100\%$ . Imposing this constraint, the active portfolio now comprises the entire risky position and the weight of the S&P 500 is zero. Table 27.3 shows that the optimal portfolio now has a standard deviation of  $15.68\%$ , not overwhelmingly greater than the SD of the passive portfolio  $(13.58\%)$ . The beta of the overall risky portfolio is now that of the active portfolio (.95). Despite this severe restriction, the optimization procedure is still powerful, and the  $M$ -square of the optimal risky portfolio (now the active portfolio) is a very large  $16.42\%$ .

Is this a satisfactory solution? This would depend on the organization. For hedge funds, this may be a dream portfolio (assuming, of course, that the alpha estimates are accurate). For most mutual funds, however, the lack of diversification would rule it out. Notice the positions in the six stocks: Walmart, Target, and British Petroleum alone account for  $76\%$  of the portfolio.

Here we have to acknowledge the limitations of our example. Surely, you may be thinking, when the investment company covers more securities, the problem of lack of diversification will largely vanish. But it turns out that the problem with extreme long/short positions typically persists even when we consider a larger number of firms, and this can gut the practical value of the optimization model. Consider this conclusion from an important article by Black and Litterman:

[T]he mean-variance optimization used in standard asset allocation models is extremely sensitive to expected return assumptions the investor must provide. . . . The optimal portfolio, given its sensitivity to the expected returns, often appears to bear little or no relation to the views the investor wishes to express. In practice, therefore, despite obvious conceptual attractions of a quantitative approach, few global investment managers regularly allow quantitative models to play a major role in their asset allocation decisions.

Clearly, the Markowitz mean-variance portfolio selection model (and the Treynor-Black model, which is just a special case of the Markowitz model) must be modified before it can be put into practical use. One approach that has garnered considerable attention is

<table><tr><td rowspan="2"></td><td colspan="9">Active</td></tr><tr><td>S&amp;P 500</td><td>Portfolio A</td><td>HP</td><td>DELL</td><td>WMT</td><td>TGT</td><td>BP</td><td colspan="2">SHELL</td></tr><tr><td></td><td></td><td></td><td>α</td><td>0.1471</td><td>0.1753</td><td>0.1932</td><td>0.2814</td><td>0.1797</td><td>0.0357</td></tr><tr><td></td><td></td><td></td><td>σ2(e)</td><td>0.0705</td><td>0.0572</td><td>0.0309</td><td>0.0392</td><td>0.0297</td><td>0.0317</td></tr><tr><td></td><td></td><td>25.7562</td><td>α/σ2(e)</td><td>2.0855</td><td>3.0641</td><td>6.2544</td><td>7.1701</td><td>6.0566</td><td>1.1255</td></tr><tr><td></td><td></td><td>1.0000</td><td>w0(i)</td><td>0.0810</td><td>0.1190</td><td>0.2428</td><td>0.2784</td><td>0.2352</td><td>0.0437</td></tr><tr><td></td><td></td><td></td><td>[w0(i)]2</td><td>0.0066</td><td>0.0142</td><td>0.0590</td><td>0.0775</td><td>0.0553</td><td>0.0019</td></tr><tr><td>αA</td><td></td><td>0.2018</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>σ2(εA)</td><td></td><td>0.0078</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>w0</td><td></td><td>7.9116</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>w*</td><td>-4.7937</td><td>5.7937</td><td></td><td>0.4691163</td><td>0.6892459</td><td>1.4069035</td><td>1.6128803</td><td>1.3624061</td><td>0.2531855</td></tr><tr><td></td><td></td><td></td><td>Overall Portfolio</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Beta</td><td>1</td><td>0.9538</td><td>0.7323</td><td>0.4691</td><td>0.6892</td><td>1.4069</td><td>1.6129</td><td>1.3624</td><td>0.2532</td></tr><tr><td>Risk premium</td><td>0.06</td><td>0.2590</td><td>1.2132</td><td>0.2692</td><td>0.2492</td><td>0.2304</td><td>0.3574</td><td>0.2077</td><td>0.0761</td></tr><tr><td>SD</td><td>0.1358</td><td>0.1568</td><td>0.5224</td><td>0.3817</td><td>0.2901</td><td>0.1935</td><td>0.2611</td><td>0.1822</td><td>0.1988</td></tr><tr><td>Sharpe ratio</td><td>0.44</td><td>1.65</td><td>2.3223</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>M-square</td><td>0</td><td>0.1642</td><td>0.2553</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Tracking risk</td><td></td><td></td><td>0.5146</td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table>

The optimal risky portfolio with the analysts' new forecasts of alpha

Table 27.2

<table><tr><td></td><td>S&amp;P 500</td><td>Active Portfolio A</td><td>HP</td><td>DELL</td><td>WMT</td><td>TGT</td><td>BP</td><td>SHELL</td></tr><tr><td></td><td></td><td></td><td>α</td><td>0.1471</td><td>0.1753</td><td>0.1932</td><td>0.2814</td><td>0.1797</td></tr><tr><td></td><td></td><td></td><td>σ2(e)</td><td>0.0705</td><td>0.0572</td><td>0.0309</td><td>0.0392</td><td>0.0297</td></tr><tr><td></td><td></td><td>25.7562</td><td>α/σ2(e)</td><td>2.0855</td><td>3.0641</td><td>6.2544</td><td>7.1701</td><td>6.0566</td></tr><tr><td></td><td></td><td>1.0000</td><td>w0(i)</td><td>0.0810</td><td>0.1190</td><td>0.2428</td><td>0.2784</td><td>0.2352</td></tr><tr><td></td><td></td><td></td><td>[w0(i)]2</td><td>0.0066</td><td>0.0142</td><td>0.0590</td><td>0.0775</td><td>0.0553</td></tr><tr><td>αA</td><td></td><td>0.2018</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>σ2(eA)</td><td></td><td>0.0078</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>w0</td><td></td><td>7.9116</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>w*</td><td>0.0000</td><td>1.0000</td><td></td><td>0.0810</td><td>0.1190</td><td>0.2428</td><td>0.2784</td><td>0.2352</td></tr><tr><td></td><td></td><td></td><td>Overall Portfolio</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Beta</td><td>1</td><td>0.9538</td><td>0.9538</td><td>0.0810</td><td>0.1190</td><td>0.2428</td><td>0.2784</td><td>0.2352</td></tr><tr><td>Risk premium</td><td>0.06</td><td>0.2590</td><td>0.2590</td><td>0.2692</td><td>0.2492</td><td>0.2304</td><td>0.3574</td><td>0.2077</td></tr><tr><td>SD</td><td>0.1358</td><td>0.1568</td><td>0.1568</td><td>0.3817</td><td>0.2901</td><td>0.1935</td><td>0.2611</td><td>0.1822</td></tr><tr><td>Sharpe ratio</td><td>0.44</td><td>1.65</td><td>1.6515</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>M-square</td><td>0</td><td>0.1642</td><td>0.1642</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Tracking risk</td><td></td><td></td><td>0.0887</td><td></td><td></td><td></td><td></td><td></td></tr></table>

Table 27.3

The optimal risky portfolio with constraint on the active portfolio  $(w_{A} \leq 1)$ the Black-Litterman model, which we will address in Section 27.3. But even the Treynor-Black model can be made far more palatable to practitioners with some straightforward modifications.


# Restriction of Tracking Risk

Black and Litterman point out a related important practical issue. Most investment managers are judged not on their absolute performance, but on performance compared to that of a benchmark portfolio. This practice raises the importance of tracking error. Tracking error is estimated from the time series of differences between the returns on the overall risky portfolio and the benchmark return, that is,  $T_{E} = R_{P} - R_{M}$ . The portfolio manager must be mindful of tracking risk, which we measure as the standard deviation of the tracking error.

The tracking error of the optimized risky portfolio can be expressed in terms of the beta of the portfolio and thus reveals the tracking risk:

Tracking error  $= T_{E} = R_{P} - R_{M}$

$$
R _ {P} = w _ {A} ^ {*} \alpha_ {A} + \left[ 1 - w _ {A} ^ {*} (1 - \beta_ {A}) \right] R _ {M} + w _ {A} ^ {*} e _ {A}
$$

$$
T _ {E} = w _ {A} ^ {*} \alpha_ {A} - w _ {A} ^ {*} (1 - \beta_ {A}) R _ {M} + w _ {A} ^ {*} e _ {A} \tag {27.1}
$$

$$
\operatorname {V a r} \left(T _ {E}\right) = \left[ w _ {A} ^ {*} \left(1 - \beta_ {A}\right) \right] ^ {2} \operatorname {V a r} \left(R _ {M}\right) + \operatorname {V a r} \left(w _ {A} ^ {*} e _ {A}\right) = \left[ w _ {A} ^ {*} \left(1 - \beta_ {A}\right) \right] ^ {2} \sigma_ {M} ^ {2} + \left[ w _ {A} ^ {*} \sigma \left(e _ {A}\right) \right] ^ {2}
$$

Tracking risk  $= \sigma (T_{E}) = w_{A}^{*}\sqrt{(1 - \beta_{A})^{2}\sigma_{M}^{2} + [\sigma(e_{A})]^{2}}$

Equation 27.1 shows us how to calculate the volatility of tracking error and how to set the position in the active portfolio,  $w_{A}^{*}$ , to restrict tracking risk to any desired level. For a unit investment in the active portfolio, that is, for  $w_{A}^{*} = 1$ , tracking risk is

$$
\sigma \left(T _ {E}; w _ {A} ^ {*} = 1\right) = \sqrt {\left(1 - \beta_ {A}\right) ^ {2} \sigma_ {M} ^ {2} + \left[ \sigma \left(e _ {A}\right) \right] ^ {2}} \tag {27.2}
$$

To limit tracking risk to a value of  $\sigma_0(T_E)$ , we would restrict the weight of the active portfolio to

$$ w _ {A} \left(T _ {E}\right) = \frac {\sigma_ {0} \left(T _ {E}\right)}{\sigma \left(T _ {E} ; w _ {A} ^ {*} = 1\right)} \tag {27.3}
$$

Introducing a constraint on tracking risk necessarily entails a cost. To limit tracking error, we shift weight from the active to the passive portfolio. Figure 27.1 illustrates the cost of this response. Ignoring tracking error, the portfolio optimization would lead us to portfolio  $T$ , the tangency of the capital allocation line (CAL), which is the ray from the risk-free rate to the efficient frontier formed from  $A$  and  $M$ . Reducing tracking risk by shifting weight from  $T$  to  $M$  takes us down the efficient frontier, instead of along the CAL, to a lower risk position, reducing the Sharpe ratio and  $M$ -square of the constrained portfolio.

Notice that the standard deviation of tracking error using the "meager" alpha forecasts in Spreadsheet 27.1 is only  $3.46\%$  because the weight in the active portfolio is only  $17\%$ . Using the larger alphas of Table 27.3 with no restriction on portfolio weights, the standard deviation of tracking error is  $51.46\%$ , more than any real-life manager who is evaluated against a benchmark would be willing to bear. However, with a weight of 1.0 on the active portfolio, tracking risk falls to  $8.87\%$  (Table 27.3).

Finally, suppose a manager wishes to restrict tracking risk to the same level as it was using the original forecasts, that is, to  $3.46\%$ . Equations 27.2 and 27.3 instruct us to invest  $w_{A} = .43$  in the active portfolio. We would then obtain the results in Table 27.4. This portfolio is moderate, yet superior in performance: (1) its standard deviation is only slightly higher than that of the passive portfolio,  $13.85\%$ ; (2) its beta is .98; (3) the standard deviation of tracking error that we specified is extremely low,  $3.85\%$ ; (4) given that we have only six securities, the largest position of  $12\%$  (in Target, TGT) is quite low and would be lower still if more securities were covered; yet (5) the Sharpe ratio is a whopping 1.06, and the  $M$ -square is an impressive  $8.35\%$ . Thus, by imposing limits on tracking risk, we can avoid the flaws of the unconstrained portfolio and still maintain superior performance.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/c186b67331f928112088ee8c618710594e3d8ee7849d77c37f0f242bc9ab7762.jpg)
Figure 27.1 Reduced efficiency when benchmark risk is lowered. Reducing tracking error risk results in a shift from the tangency portfolio,  $T$ , toward the benchmark portfolio,  $M$ .


<table><tr><td></td><td>S&amp;P 500</td><td>Active Portfolio A</td><td>HP</td><td>DELL</td><td>WMT</td><td>TGT</td><td>BP</td><td>SHELL</td></tr><tr><td></td><td></td><td></td><td>σ2(e)</td><td>0.0705</td><td>0.0572</td><td>0.0309</td><td>0.0392</td><td>0.0297</td></tr><tr><td></td><td></td><td>25.7562</td><td>α/σ2(e)</td><td>2.0855</td><td>3.0641</td><td>6.2544</td><td>7.1701</td><td>6.0566</td></tr><tr><td></td><td></td><td>1.0000</td><td>w0(i)</td><td>0.0810</td><td>0.1190</td><td>0.2428</td><td>0.2784</td><td>0.2352</td></tr><tr><td></td><td></td><td></td><td>[w0(i)]2</td><td>0.0066</td><td>0.0142</td><td>0.0590</td><td>0.0775</td><td>0.0553</td></tr><tr><td>αA</td><td></td><td>0.2018</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>σ2(eA)</td><td></td><td>0.0078</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>w0</td><td></td><td>7.9116</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>w*</td><td>0.5661</td><td>0.4339</td><td></td><td>0.0351</td><td>0.0516</td><td>0.1054</td><td>0.1208</td><td>0.1020</td></tr><tr><td></td><td></td><td></td><td>Overall Portfolio</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Beta</td><td>1</td><td>0.9538</td><td>0.9800</td><td>0.0351</td><td>0.0516</td><td>0.1054</td><td>0.1208</td><td>0.1020</td></tr><tr><td>Risk premium</td><td>0.06</td><td>0.2590</td><td>0.1464</td><td>0.0750</td><td>0.1121</td><td>0.0689</td><td>0.0447</td><td>0.0880</td></tr><tr><td>Standard deviation</td><td>0.1358</td><td>0.1568</td><td>0.1385</td><td>0.3817</td><td>0.2901</td><td>0.1935</td><td>0.2611</td><td>0.1822</td></tr><tr><td>Sharpe ratio</td><td>0.44</td><td>1.65</td><td>1.0569</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>M-square</td><td>0</td><td>0.1642</td><td>0.0835</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Tracking risk</td><td></td><td></td><td>0.0385</td><td></td><td></td><td></td><td></td><td></td></tr></table>

Table 27.4

The optimal risky portfolio with the analysts' new forecasts (tracking risk constrained to  $3.85\%$ )

# 27.2 The Treynor-Black Model and Forecast Precision

Suppose the risky portfolio of your  $401(\mathrm{k})$  retirement fund is currently in an S&P 500 index fund, and you are pondering whether you should take some extra risk and allocate some funds to Target's stock. You know that, absent research analysis, you should assume the alpha of any stock is zero. Hence, the mean of your prior distribution of Target's alpha is zero. Downloading return data for Target and the S&P 500 reveals a residual standard deviation of  $19.8\%$ . Given this volatility, the prior mean of zero, and an assumption of normality, you now have the entire prior distribution of Target's alpha.

One can make a decision using a prior distribution, or refine that distribution by expending effort to obtain additional data. In statistical jargon, this effort is called the experiment. The experiment as a stand-alone venture would yield a probability distribution of possible outcomes. The optimal statistical procedure is to combine one's prior distribution for alpha with the information derived from the experiment to form a posterior distribution that reflects both. This posterior distribution is then used for decision making.

A "tight" prior, that is, a distribution with a small standard deviation, implies a high degree of confidence in the likely range of possible alpha values even before looking at the data. In this case, the experiment may not be sufficiently convincing to affect your beliefs, meaning that the posterior will be little changed from the prior. In the context of the present discussion, constructing an estimate of alpha and its precision is the experiment that may induce you to update your prior beliefs about its value. The role of the portfolio manager is to form a posterior distribution of alpha that aids portfolio construction.

# Adjusting Forecasts for the Precision of Alpha

Imagine that you have just compiled the forecasts we used in Table 27.2, implying that Target's alpha is  $28.1\%$ . Should you conclude that the optimal position in Target, before adjusting for beta, is  $\alpha / \sigma^2(e) = .281 / .198^2 = 7.17$  ( $717\%$ )? Naturally, before committing to such an extreme position, any reasonable manager would first ask: "How accurate is this forecast?" and "How should I adjust my position to take account of forecast imprecision?"

Treynor and Black asked this question and supplied an answer. The logic of the answer is quite straightforward; you must quantify the uncertainty about this forecast, just as you would the risk of the underlying asset or portfolio. A Web surfer may not have a way to assess the precision of a downloaded forecast, but the employer of the analyst who issued the forecast does. How? By examining the forecasting record of previous forecasts issued by the same forecaster.

Suppose that a security analyst provides the portfolio manager with forecasts of alpha at regular intervals, say, the beginning of each month. The portfolio is updated using the forecast and held until the update of next month's forecast. At the end of each month,  $T$ , the realized abnormal return of Target's stock, is the sum of alpha plus an error term, or "residual":

$$ u (T) = R _ {\mathrm {T G T}} (T) - \beta_ {\mathrm {T G T}} R _ {M} (T) = \alpha (T) + e (T) \tag {27.4}
$$ where beta is estimated from Target's security characteristic line (SCL) using data for periods prior to  $T$ ,


$$
\text {S C L}: \quad R _ {\mathrm {T G T}} (t) = \alpha + \beta_ {\mathrm {T G T}} R _ {M} (t) + e (t), \quad t <   T \tag {27.5}
$$

The 1-month, forward-looking forecast  $\alpha^f (T)$  issued by the analyst at the beginning of month  $T$  is aimed at the abnormal return,  $u(T)$ , in Equation 27.4. In order to decide how much credence to place in the forecast for month  $T$ , the portfolio manager uses the analyst's forecasting record. The analyst's record comprises all past forecasts,  $\alpha^f (t)$ , paired with the realizations,  $u(t)$ . To assess forecast accuracy, that is, the relationship between forecast and realized alphas, the manager uses this record to estimate the regression:

$$ u (t) = a _ {0} + a _ {1} \alpha^ {f} (t) + \varepsilon (t) \tag {27.6}
$$

Our goal is to adjust alpha forecasts to properly account for their imprecision. We form an adjusted alpha forecast  $\alpha (T)$  for the coming month by using the original forecasts  $\alpha^f (T)$  and applying the estimates from the regression Equation 27.6, that is,

$$
\alpha (T) = a _ {0} + a _ {1} \alpha^ {f} (T) \tag {27.7}
$$

The properties of the regression estimates assure us that the adjusted forecast is the "best linear unbiased estimator" of the abnormal return on Target in the coming month,  $T$ . "Best" in this context means it has the lowest possible variance among unbiased forecasts that are linear functions of the original forecast. We show in Appendix A that the value we should use for  $a_1$  in Equation 27.7 is the  $R$ -square of the regression Equation 27.6. Because  $R$ -square is necessarily less than 1, this implies that we "shrink" the forecast toward zero. The lower the precision of the original forecast (the lower its  $R$ -square), the more we shrink the adjusted alpha back toward zero. In other words, we pay less attention to noisier forecasts. The coefficient  $a_0$  adjusts the forecast upward if the forecaster has been consistently pessimistic, and downward for consistent optimism.

# Distribution of Alpha Values

Equation 27.7 implies that the quality of security analysts' forecasts, as measured by the  $R$ -square in regressions of realized abnormal returns on their forecasts, is a critical issue for construction of optimal portfolios and resultant performance. Unfortunately, these numbers are usually impossible to come by.

One exception is Kane, Kim, and White, who obtained a unique database of analysts' forecasts from an investment company specializing in large stocks with the S&P 500 used as the benchmark portfolio. Their database includes a set of 37 monthly pairs of forecasts of alpha and beta values for between 646 and 771 stocks over the period December 1992 to December 1995—in all, 23,902 forecasts. The investment company policy was to truncate alpha forecasts at  $+14\%$  and  $-12\%$  per month. The histogram of these forecasts is shown in Figure 27.2.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/75c00cfcc2b8476da6c31e6f001b24eadab3abf4edc985c44558615bfabfd352.jpg)
Figure 27.2 Histogram of alpha forecast

Returns of large stocks over these years were about average, as shown in the following table, including one average year (1993), one bad year (1994), and one good year (1995):

<table><tr><td></td><td>1993</td><td>1994</td><td>1995</td><td>1926–1999
Average</td><td>SD (\%)</td></tr><tr><td>Rate of return (\%)</td><td>9.87</td><td>1.29</td><td>37.71</td><td>12.50</td><td>20.39</td></tr></table>

The histogram shows that the distribution of alpha forecasts was positively skewed, with a larger number of pessimistic forecasts. The adjusted  $R$ -square in a regression of these forecasts with actual alphas was .001134, implying a tiny correlation coefficient of .0337.

These results contain "good" and "bad" news. The good news is that after adjusting even the wildest forecast, say, an alpha of  $12\%$  for the next month, the value to be used by a forecaster when  $R$ -square is .001 would be  $0.12\%$ , just 1.2 basis points per month. On an annual basis, this would amount to  $0.14\%$ , which is of the order of the alpha forecasts of the example in Spreadsheet 27.1. With forecasts of this small magnitude, the problem of extreme portfolio weights would never arise. The bad news arises from the same data: The performance of the active portfolio will be no better than in our example—implying an  $M$ -square of only 19 basis points.

However, this limited performance is based on an active portfolio that includes only six stocks. As we show in Section 27.5, even small information ratios of individual stocks can add up (see line 11 in Table 27.1). Thus, when many forecasts of even low precision are used to form a large active portfolio, large profits can be made.

# Organizational Structure and Performance

The mathematical properties of the optimal risky portfolio reveal a central feature of investment companies, namely, economies of scale. From the Sharpe measure of the optimized portfolio shown in Table 27.1, it is evident that performance as measured by the Sharpe ratio and  $M$ -square grows steadily with the squared information ratio of the active portfolio (see Chapter 8, Equation 8.26, for a review), which in turn is the sum of the squared information ratios of the covered securities (see Equation 8.28). Hence, a larger force of security analysts is sure to improve portfolio performance. Moreover, a larger universe will also improve the diversification of the active portfolio and mitigate the need to hold positions in the neutral passive portfolio. Finally, as we will show in some detail in Section 27.5, increasing the universe of securities creates another diversification effect, that of forecasting errors by analysts.

Increases in the universe of the active portfolio in pursuit of better performance come at a cost because security analysts of quality do not come cheap. However, the other units of the organization can handle increased activity with little increase in cost. All this suggests economies of scale for larger investment companies provided the organizational structure is efficient.

Figure 27.3 Organizational chart for portfolio management
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/04f3c33a2f2ab318a4ad43825e4643fcff2b3bfdeaceb12d1fd19a454c59ffa9.jpg)
Source: Adapted from Robert C. Merton, Finance Theory, Chapter 12, Harvard Business School.

Optimizing the risky portfolio entails a number of tasks of different nature in terms of expertise and need for independence. As a result, the organizational chart of the portfolio management outfit requires a degree of decentralization and proper controls. Figure 27.3 shows an organizational chart designed to achieve these goals. The figure is largely self-explanatory and the structure is consistent with the theoretical considerations worked out in previous chapters. It can go a long way in forging sound underpinnings to the daily work of portfolio management. A few comments are in order, though.

The control units responsible for forecasting records and determining forecast adjustments will directly affect the advancement and bonuses of security analysts and estimation experts. This implies that these units must be independent and insulated from organizational pressures.

An important issue is the conflict between independence of security analysts' opinions versus the need for cooperation and coordination in the use of resources as well as contacts with corporate and government overseers. In contrast, the macro forecast unit might become too insulated from the security analysis unit. An effort to create an interface and channels of communications between these units is warranted.

# 27.3 The Black-Litterman Model

Fischer Black, famous for the Black-Scholes option-pricing formula as well as the Treynor-Black model, teamed up with Robert Litterman to produce another useful model of portfolio construction. The Black-Litterman (BL) model allows portfolio managers to quantify complex forecasts (which they call views) and apply these views to portfolio construction. We begin the discussion of the BL model with an illustration of a simple problem of asset allocation. Although we devote the next section to a comparison of the two models, some comments on commonalities of the models will help us better understand the BL model.

# Black-Litterman Asset Allocation Decision

Consider a portfolio manager laboring over asset allocation to bills, bonds, and stocks for the next month. The risky portfolio will be constructed from bonds and stocks so as to maximize the Sharpe ratio. So far this is no more than the problem described in Section 7.3 of Chapter 7. There, we were concerned with optimizing the portfolio given a set of data inputs. In real life, however, optimization using a given dataset is the least of the manager's problems. The real challenge is how to come by the necessary input data. Black and Litterman propose an approach that uses past data, equilibrium considerations, and the private views of the portfolio manager about the near future.

Data enter the BL model from two sources: history and forecasts, called views, about the future. The historical sample is used to estimate the covariance matrix of the asset classes involved in the asset allocation decision. The estimated covariance matrix, combined with a model of equilibrium returns (e.g., the CAPM), is used to produce baseline forecasts that would be the basis of a passive strategy. In the next step, views are introduced and quantified. The views represent a departure from the baseline forecast and result in a revised set of expected returns. With the new set of inputs (just as with alpha forecasts in the Treynor-Black model), an optimal risky portfolio is designed to replace the (no-longer-efficient) passive portfolio.

# Step 1: The Covariance Matrix from Historical Data

This straightforward task is the first in the chain that makes up the BL model. Suppose step 1 results in the following annualized covariance matrix, estimated from recent historical excess returns:

<table><tr><td></td><td>Bonds (B)</td><td></td><td>Stocks (S)</td></tr><tr><td>Standard deviation</td><td>0.08</td><td></td><td>0.17</td></tr><tr><td>Correlation (bonds/stocks)</td><td></td><td>0.3</td><td></td></tr><tr><td>Covariance</td><td></td><td></td><td></td></tr><tr><td>Bonds</td><td>0.0064</td><td></td><td>0.00408</td></tr><tr><td>Stocks</td><td>0.00408</td><td></td><td>0.0289</td></tr></table>

Notice that step 1 is common to both the BL and the Treynor-Black (TB) models. This activity appears in the organizational chart in Figure 27.3.

# Step 2: Determination of a Baseline Forecast

Because past data are of such limited use in inferring expected returns for the next month, BL propose an alternative approach. They start with a baseline forecast derived from the assumption that the market is in equilibrium, with current prices of stocks and bonds reflecting all available information. As a result, the theoretical market portfolio with weights equal to market-value proportions is efficient. Suppose that current market values of outstanding bonds and stocks imply that the weight of bonds in the baseline portfolio is  $w_{B} = .25$ , and the weight of stocks is  $w_{S} = .75$ . When we apply these portfolio weights to the covariance matrix from step 1, the variance of the baseline portfolio emerges as

$$
\begin{array}{l} \operatorname {V a r} \left(R _ {M}\right) = w _ {B} ^ {2} \operatorname {V a r} \left(R _ {B}\right) + w _ {S} ^ {2} \operatorname {V a r} \left(R _ {S}\right) + 2 w _ {B} w _ {S} \operatorname {C o v} \left(R _ {B}, R _ {S}\right) \\ = . 2 5 ^ {2} \times . 0 0 6 4 +. 7 5 ^ {2} \times . 0 2 8 9 + 2 \times . 2 5 \times . 7 5 \times . 0 0 4 0 8 = . 0 1 8 1 8 6 \tag {27.8} \\ \end{array}
$$

The CAPM equation (Equation 9.2 in Chapter 9) gives the relationship between the market portfolio risk (variance) and its risk premium (expected excess return) as

$$
E \left(R _ {M}\right) = \bar {A} \times \operatorname {V a r} \left(R _ {M}\right) \tag {27.9}
$$ where  $\overline{A}$  is the average coefficient of risk aversion. Assuming  $\overline{A} = 3$  yields the equilibrium risk premium of the baseline portfolio as  $E(R_M) = 3 \times .018186 = .0546 = 5.46\%$ . The equilibrium risk premiums on bonds and stocks can be inferred from their betas on the baseline portfolio:


$$
E \left(R _ {B}\right) = \frac {\operatorname {C o v} \left(R _ {B} , R _ {M}\right)}{\operatorname {V a r} \left(R _ {M}\right)} E \left(R _ {M}\right)
$$

$$
\operatorname {C o v} \left(R _ {B}, R _ {M}\right) = \operatorname {C o v} \left(R _ {B}, w _ {B} R _ {B} + w _ {S} R _ {S}\right) = . 2 5 \times . 0 0 6 4 +. 7 5 \times . 0 0 4 0 8 = . 0 0 4 6 6
$$

$$
E \left(R _ {B}\right) = \frac {.00466}{.018186} \times 5.46 \% = 1.40 \% (\text {bond beta} = .26) \tag{27.10}
$$

$$
E \left(R _ {S}\right) = \frac {. 75 \times . 0289 + . 25 \times . 00408}{. 018186} \times 5.46 \% = 6.81 \% (\text {stock beta} = 1.25)
$$

Thus, step 2 ends up with baseline forecasts of a risk premium for bonds of  $1.40\%$  and for stocks of  $6.81\%$ .

The final element in step 2 is to determine the covariance matrix of the baseline forecasts. This is a statement about the precision of these forecasts, which is different from the covariance matrix of realized excess returns on the bond and stock portfolios. We are looking for the precision of the estimate of expected return, as opposed to the volatility of actual returns. A rule of thumb in this application is to use a standard deviation that is  $10\%$  of the standard deviation of returns (or, equivalently, a variance that is  $1\%$  of the return variance). To illustrate, imagine that the covariance matrix of actual return was estimated from the returns of the last 100 months. The variance of the average return (which is the forecast of the expected return) would then be  $1\%$  of the variance of the actual return. Hence, in this case, one would use .01 times the covariance matrix of returns for the expected return. Thus, step 2 ends with a forecast and covariance matrix:

<table><tr><td></td><td>Bonds (B)</td><td>Stocks (S)</td></tr><tr><td>Expected return (\%)</td><td>0.0140</td><td>0.0681</td></tr><tr><td colspan="3">Covariance matrix of baseline forecasts</td></tr><tr><td>Bonds</td><td>0.000064</td><td>0.0000408</td></tr><tr><td>Stocks</td><td>0.0000408</td><td>0.000289</td></tr></table>

Now that we have backed out market expectations, it is time to integrate the manager's private views into our analysis.

# Step 3: Integrating the Manager's Private Views

The BL model allows the manager to introduce any number of views about the baseline forecasts into the optimization process. Appended to the views, the manager's degree of confidence in them must be specified. Views in the BL model are expressed as values of various linear combinations of excess returns, and confidence in them is expressed as a covariance matrix of errors in these values.

# Example 27.1 Views in the Black-Litterman Model

Suppose the manager takes a contrarian's view concerning the baseline forecasts, that is, he believes that in the next month bonds will outperform stocks by  $.5\%$ . The following equation expresses this view:

$$
1 \times R _ {B} + (- 1) \times R _ {S} = . 5
$$

More generally, any view that is a linear combination of the relevant excess returns can be presented as an array (in Excel, an array would be a column of numbers) that multiplies another array (column) of excess returns. In this case, the array of weights is  $P = (1, -1)$  and the array of excess returns is  $(R_{B}, R_{S})$ . The value of this linear combination, denoted  $Q$ , reflects the manager's view. In this case,  $Q = .5\%$  must be taken into account in optimizing the portfolio.

A view must come with a degree of confidence, that is, a standard deviation to measure the precision of  $Q$ . The manager's view is really  $Q + \varepsilon$ , where  $\varepsilon$  represents zero-mean error in the view with a standard deviation that reflects the manager's less-than-perfect confidence. Noticing that the standard deviation of the difference between the expected rates on stocks and bonds is  $1.65\%$  (calculated in Equation 27.13), suppose that the manager assigns a value of  $\sigma(\varepsilon) = 1.73\%$ . To summarize, if we denote the array of returns by  $R = (R_{B}, R_{S})$ , then the manager's view,  $P$ , applied to these returns is

$$
P R ^ {T} = Q + \varepsilon
$$

$$
P = (1, - 1)
$$

$$
R = \left(R _ {B}, R _ {S}\right) \tag {27.11}
$$

$$
Q = .5\% = .005
$$

$$
\sigma^ {2} (\varepsilon) = . 0 1 7 3 ^ {2} = . 0 0 0 3
$$

# Step 4: Revised (Posterior) Expectations

The baseline forecasts of expected returns derived from market values and their covariance matrix comprise the prior distribution of the rates of return on bonds and stocks.

The manager's view, together with its confidence measure, provides the probability distribution arising from the "experiment," that is, the additional information that must be optimally integrated with the prior distribution. The result is the posterior: a new set of expected returns, conditioned on the manager's views.

To acquire intuition about the solution, consider what the baseline expected returns imply about the view. The expectations derived from market data are that the expected return on bonds is  $1.40\%$  and the expected return on stocks is  $6.81\%$ . Therefore, the baseline view is that  $E(R_{B}) - E(R_{S}) = -5.41\%$ . In contrast, the manager thinks this difference is  $Q = R_{B} - R_{S} = .5\%$ . Using the BL linear-equation notation for market expectations:

$$
Q ^ {E} = P R _ {E} ^ {T}
$$

$$
P = (1, - 1) \tag {27.12}
$$

$$
R _ {E} = \left[ E \left(R _ {B}\right), E \left(R _ {S}\right) \right] = (1.40 \%, 6.81 \%)
$$

$$
Q ^ {E} = 1.40 - 6.81 = - 5.41 \%
$$

The baseline "view" of  $-5.41\%$  (i.e., that stocks will outperform bonds by  $5.41\%$ ) is vastly different from the manager's view. The difference,  $D$ , and its variance are

$$
D = Q - Q ^ {E} = . 0 0 5 - (-. 0 5 4 1) = . 0 5 9 1 \tag {27.13}
$$

Therefore, the variance of  $D$  equals:

$$
\sigma^ {2} (D) = \sigma^ {2} (\varepsilon) + \sigma^ {2} (Q ^ {E}) = . 0 0 0 3 + \sigma^ {2} (Q ^ {E})
$$

Next, we solve for the variance of  $Q^{E}$  and substitute back into our expression for the variance of  $D$ :

$$
\begin{array}{l} \sigma^ {2} (Q ^ {E}) = \operatorname {V a r} \left[ E \left(R _ {B}\right) - E \left(R _ {S}\right) \right] = \sigma_ {E \left(R _ {B}\right)} ^ {2} + \sigma_ {E \left(R _ {S}\right)} ^ {2} - 2 \operatorname {C o v} \left[ E \left(R _ {B}\right), E \left(R _ {S}\right) \right] \\ = . 0 0 0 0 6 4 +. 0 0 0 2 8 9 - 2 \times . 0 0 0 0 4 0 8 = . 0 0 0 2 7 1 4 \\ \end{array}
$$

$$
\sigma^ {2} (D) = . 0 0 0 3 +. 0 0 0 2 7 1 4 = . 0 0 0 5 7 1 4
$$

Given the large difference between the manager's and the baseline views, we would expect a significant change in the conditional expected returns from those of the baseline and, as a result, a very different optimal portfolio.

The expected returns conditional on the view is a function of four elements: the baseline expectations,  $E(R)$ ; the difference,  $D$ , between the manager's view and the baseline view (see Equation 27.13); the contribution of the asset return to the variance of  $D$ ; and the total variance of  $D$ . The result is:

$$
E (R | \text {v i e w}) = R + D \frac {\text {C o n t r i b u t i o n o f a s s e t t o} \sigma_ {D} ^ {2}}{\sigma_ {D} ^ {2}}
$$

$$
\begin{array}{l} E \left(R _ {B} | P\right) = E \left(R _ {B}\right) + \frac {D \left\{\sigma_ {E \left(R _ {B}\right)} ^ {2} - \operatorname {C o v} \left[ E \left(R _ {B}\right) , E \left(R _ {S}\right) \right] \right\}}{\sigma_ {D} ^ {2}} \\ = . 0 1 4 0 + \frac {. 0 5 9 1 (\cdot 0 0 0 0 6 4 - . 0 0 0 0 4 0 8)}{. 0 0 0 5 7 1 4} = . 0 1 4 0 +. 0 0 2 4 = . 0 1 6 4 \tag {27.14} \\ \end{array}
$$

$$
\begin{array}{l} E (R _ {S} | P) = E (R _ {S}) + \frac {D \left\{\operatorname {C o v} \left[ E (R _ {B}) , E (R _ {S}) \right] - \sigma_ {E (R _ {S})} ^ {2} \right\}}{\sigma_ {D} ^ {2}} \\ = . 0 6 8 1 + \frac {. 0 5 9 1 (. 0 0 0 0 4 0 8 - . 0 0 0 2 8 9)}{. 0 0 0 5 7 1 4} = . 0 6 8 1 - . 0 2 5 7 = . 0 4 2 4 \\ \end{array}
$$

We see that the manager increases the expected returns on bonds by  $24\%$  to  $1.64\%$ , and reduces the expected return on stocks by  $2.57\%$  to  $4.24\%$ . The difference between the expected returns on stocks and bonds is reduced from  $5.41\%$  to  $2.60\%$ . While this is a very large change, we also realize that the manager's private view that  $Q = .5\%$  has been greatly tempered by the prior distribution to a value roughly halfway between the private view and the baseline view. In general, more precise views will have greater impact on the ultimate (i.e., "posterior") distribution.


The example we have described contains only two assets and one view. It can easily be generalized to any number of assets with any number of views about future returns. The views can be more complex than a simple difference between a pair of returns. Views can assign a value to any linear combination of the assets in the universe, and the confidence level (the covariance matrix of the set of  $\varepsilon$  values of the views) can allow for dependence across views. Thus, the model has great flexibility in quantifying a rich set of information. Appendix B to the chapter presents the general BL model.

# Step 5: Portfolio Optimization

At this point, the portfolio optimization follows the Markowitz procedure of Chapter 7, with an input list that replaces baseline expectations with the conditional expectations arising from the manager's view.

Spreadsheet 27.2 presents the calculations of the BL model. Panel A shows the calculation of the benchmark forecasts and Panel B incorporates a view to arrive at

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td><td>H</td><td>I</td></tr><tr><td>1</td><td colspan="2"></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>2</td><td colspan="7"></td><td></td><td></td></tr><tr><td>3</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>4</td><td colspan="7">Panel A: Bordered Covariance Matrix from Historical Excess Returns</td><td></td><td></td></tr><tr><td>5</td><td colspan="7">and Market-Value Weights and Calculation of Baseline Forecasts</td><td></td><td></td></tr><tr><td>6</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>7</td><td></td><td></td><td>Bonds</td><td>Stocks</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>8</td><td></td><td>Weights</td><td>0.25</td><td>0.75</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>9</td><td>Bonds</td><td>0.25</td><td>64</td><td>40.8</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>10</td><td>Stocks</td><td>0.75</td><td>40.8</td><td>289</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>11</td><td></td><td>sumproduct</td><td>11.65</td><td>170.21</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>12</td><td colspan="5">Market portfolio variance V(M) = sum(c11,d11) =</td><td>181.86</td><td></td><td></td><td></td></tr><tr><td>13</td><td colspan="5">Coefficient of risk aversion of representative investor =</td><td>3</td><td></td><td></td><td></td></tr><tr><td>14</td><td colspan="5">Baseline market portfolio risk premium = 0.01A*V(M) =</td><td>5.46</td><td></td><td></td><td></td></tr><tr><td>15</td><td>Covariance with RM</td><td>46.6</td><td>226.95</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>16</td><td>Baseline risk premiums</td><td>1.40</td><td>6.81</td><td></td><td>0.256237542</td><td></td><td></td><td></td><td></td></tr><tr><td>17</td><td></td><td></td><td></td><td></td><td>1.247920819</td><td></td><td></td><td></td><td></td></tr><tr><td>18</td><td colspan="5">Proportion of covariance attributed to expected returns</td><td>0.01</td><td></td><td></td><td></td></tr><tr><td>19</td><td colspan="4">Covariance matrix of expected returns</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>20</td><td></td><td>Bonds</td><td>Stocks</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>21</td><td></td><td>Bonds</td><td>0.64</td><td>0.408</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>22</td><td></td><td>Bonds</td><td>0.408</td><td>2.89</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>23</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>24</td><td colspan="7">Panel B: Views, Confidence, and Revised (Posterior) Expectations</td><td></td><td></td></tr><tr><td>25</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>26</td><td colspan="5">View: Difference between returns on bonds and stocks, Q =</td><td>0.5</td><td></td><td></td><td></td></tr><tr><td>27</td><td colspan="5">View embedded in baseline forecasts Q^E =</td><td>-5.41</td><td></td><td></td><td></td></tr><tr><td>28</td><td colspan="3">Variance of Q^E = Var(R_B - R_S)</td><td></td><td></td><td>2.71</td><td></td><td></td><td></td></tr><tr><td>29</td><td colspan="3">Var[E(R_B)] - Cov[E(R_B),E(R_S)] =</td><td></td><td></td><td>0.23</td><td></td><td></td><td></td></tr><tr><td>30</td><td colspan="3">Cov[E(RB),E(RS)] - Var[E(RB)] =</td><td></td><td></td><td>-2.48</td><td></td><td></td><td></td></tr><tr><td>31</td><td colspan="5">Difference between view and baseline data, D =</td><td>5.91</td><td></td><td></td><td></td></tr><tr><td>32</td><td colspan="5">Confidence measured by standard deviation of view Q</td><td></td><td></td><td></td><td></td></tr><tr><td>33</td><td>Possible SD</td><td>0</td><td>1</td><td>1.73</td><td>3.00</td><td>6.00</td><td></td><td></td><td></td></tr><tr><td>34</td><td>Variance</td><td>0</td><td>1.5</td><td>3</td><td>9</td><td>36</td><td>Baseline</td><td></td><td></td></tr><tr><td>35</td><td>E(R_B|P)</td><td>1.90</td><td>1.72</td><td>1.64</td><td>1.52</td><td>1.43</td><td>1.40</td><td></td><td></td></tr><tr><td>36</td><td>E(R_S|P)</td><td>1.40</td><td>3.33</td><td>4.24</td><td>5.56</td><td>6.43</td><td>6.81</td><td></td><td></td></tr></table>

# Spreadsheet 27.2

Sensitivity of the Black-Litterman portfolio to confidence in views the revised (conditional) expectations. Figure 27.4 shows portfolio performance measured by  $M$ -square for various levels of confidence in the view when the view is correct and incorrect. The weight in bonds declines as the confidence in the view falls (the standard deviation of the view increases). With no confidence in the view (standard deviation very large), the weight in bonds falls to .3, determined by the baseline forecast. At this point, the portfolio is passive; its  $M$ -square is zero.

Source: Microsoft Corporation.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/61634e1210d40ac9c0e998f345a44b378e444ea05ac4d57eb7af35539c05e4b4.jpg)
Figure 27.4 Sensitivity of Black-Litterman portfolio performance to confidence level


Notice that the  $M$ -square profile is asymmetric. With great confidence in the view and the resultant large position in bonds, the gain in  $M$ -square when the view is correct is smaller than the loss in  $M$ -square when the view is incorrect. With less confidence and therefore a smaller position in bonds, the "game" becomes more symmetric between a correct and incorrect view. Because determination of the confidence of a view is quite abstract, the graph tells us that to err on the side of skepticism may well be the prudent choice.

# 27.4 Treynor-Black versus Black-Litterman: Complements, Not Substitutes

Treynor, Black, and Litterman have earned a place among the important innovators of the investments industry. Wide implementation of their models could contribute much to the industry. The comparative analysis of their models presented here is not aimed at elevating one at the expense of the other—in any case, we find them complementary—but rather to clarify the relative merits of each.

First and foremost, once you reach the optimization stage, the models are identical. Put differently, if users of either model arrive at identical input lists, they will choose identical portfolios and realize identical performance measures. In Section 27.6, we show that these levels of performance potentially can be far superior to passive strategies, as well as to active strategies that do not take advantage of the quantitative techniques of these models. The models differ primarily in the way they arrive at the input list, and analysis of these differences shows that the models are true complements and are best used in tandem.

# The BL Model as Icing on the TB Cake

The Treynor-Black (TB) model is really oriented to individual security analysis. This can be seen from the way the active portfolio is constructed. The alpha values assigned to securities must be determined relative to the passive portfolio. This portfolio is the one that would be held if all alpha values turned out to be zero.

Now suppose an investment company prospectus mandates a portfolio invested  $70\%$  in a U.S. universe of large stocks, say, the S&P 500, and  $30\%$  in a well-defined universe of large European stocks. In that case, the macro analysis of the organization would have to be split, and the TB model would have to be run as two separate divisions. In each division, security analysts would compile values of alpha relative to their own passive portfolio. The product of this organization would thus include four portfolios, two passive and two active. This scheme is workable only when the portfolios are optimized separately. That is, the parameters (alpha, beta, and residual variance) of U.S. securities are estimated relative to the U.S. benchmark, while the parameters of European stocks are estimated relative to the European benchmark. Then the final portfolio would be constructed as a standard problem in asset allocation.

The resulting portfolio could be improved using the BL approach. First, views about the relative performance of the U.S. and European markets can be expected to add information to the independent macro forecasts for the two economies. For reasons of specialization, the U.S. and European macro analysts must focus on their respective economies. Obviously, when more country or regional portfolios are added to the company's universe, the need for decentralization becomes more compelling, and the potential of applying the BL model to the TB product greater. Moreover, the foreign-stock portfolios will result in various positions in local currencies. This is a clear area of international finance, and the only way to import forecasts from this analysis is with the BL technique.[9]

# Why Not Replace the Entire TB Cake with the BL Icing?

This question is raised by the need to use the BL technique if the overall portfolio is to include forecasts from comparative economic and international finance analyses. It is indeed possible to use the BL model for the entire process of constructing the efficient portfolio. The reason is that the alpha compiled for the TB model can be replaced with BL views. To take a simple example, suppose only one security makes up the active portfolio. With the TB model, we have macro forecasts,  $E(R_{M})$  and  $\sigma_{M}$ , as well as alpha, beta, and residual variance for the active portfolio. This input list also can be represented in the following form, along the lines of the BL framework:

$$
R = \left[ E \left(R _ {M}\right), E \left(R _ {A}\right) = \beta_ {A} E \left(R _ {M}\right) \right]
$$

$$
P = \left(0, 1 + \frac {\alpha_ {A}}{\beta_ {A} E (R _ {M})}\right)
$$

$$
P R _ {T} ^ {T} = Q + \varepsilon = \alpha_ {A} + \varepsilon \tag {27.15}
$$

$$
Q ^ {E} = 0
$$

$$
D = \alpha_ {A}
$$

$$
\sigma^ {2} (\varepsilon) = \operatorname {V a r} (\text {f o r e c a s t i n g e r r o r}) \text {i n} \tag {27.6}
$$

$$
\sigma^ {2} (D) = \sigma^ {2} (\varepsilon) + \sigma^ {2} (e)
$$ where  $e$  is the residual in the SCL regression of Equation 27.5. Calculation of the conditional expectations from Equation 27.15 as in Equation 27.13 will bring us to the same adjusted alpha as in Equation 27.7 of the TB model.


In this light, the BL model can be viewed as a generalization of the TB model. The BL model allows you to adjust expected return from views about alpha values as in the TB model, but it also allows you to express views about relative performance that cannot be incorporated in the TB model.

However, this conclusion might produce a false impression that is consequential to investment management. To understand the point, we first discuss the degree of confidence, which is essential to fully represent a view in the BL model. Spreadsheet 27.2 and Figure 27.4 illustrate that the optimal portfolio weights and performance are highly sensitive to the degree of confidence in the BL views. Thus, the validity of the model rests in large part on the way the confidence about views is arrived at.

When a BL view is structured to replace a direct alpha estimate in a TB framework, we must use the variance of the forecasting error taken from Equation 27.7 and applied to Equation 27.15. This is how "confidence" is quantified in the BL model. Whereas in the TB framework one can measure forecast accuracy by computing the correlation between analysts' alpha forecasts and subsequent realizations, such a procedure is not as easily applied to BL views about relative performance. Managers' views may be expressed about different quantities in different time periods, and, therefore, we will not have long forecast histories on a particular variable with which to assess accuracy. To our knowledge, no promotion of how to quantify "confidence" appears in academic or industry publications about the BL model.

This raises the issue of adjusting forecasts in the TB model. We are not aware of actual results where analysts' track records are systematically compiled and used to adjust alpha forecasts, although we cannot assert that such effort is nowhere expended. However, indirect evidence suggests that alphas are usually not adjusted, leading to the common "complaint" that the TB model is not applied in the field because it results in "wild" portfolio weights. Yet, as we saw in Section 27.3, those wild portfolio weights are a consequence of failing to adjust alpha values to reflect forecast precision. Any realistic  $R$ -square that can be obtained even by excellent forecasters will result in moderate portfolio weights. Even when "wild" weights do occasionally materialize, they can be "tamed" by a straightforward restriction on the variance of the tracking error.

It is therefore useful to keep the two models separate and distinct: the TB model for the management of security analysis with proper adjustment of forecasts and the BL model for asset allocation where views about relative performance are useful despite the fact that the degree of confidence must in practice be acknowledged as speculative.

# 27.5 The Value of Active Management

We showed in Chapter 24 that the value of successful market timing is enormous. Even a forecaster with far-from-perfect predictive power would contribute significant value. Nevertheless, active portfolio management based on security analysis has even greater potential. Even if each individual security analyst has only modest forecasting power, the power of a portfolio of analysts is potentially unbounded.

# A Model for the Estimation of Potential Fees

The value of market timing was derived from the value of an equivalent number of call options that mimic the return to the timer's portfolio. Thus, we were able to derive an unambiguous market value to timing ability, that is, we could price the implicit call in the timer's services. We cannot get quite that far with valuation of active portfolio management, but we can do the next best thing, namely, we can calculate what a representative investor would pay for such services.


Kane, Marcus, and Trippi derive an annuitized value of portfolio performance measured as a percentage of funds under management. The percentage fee,  $f$ , that investors would be willing to pay for active services can be related to the difference between the square of the portfolio Sharpe ratio and that of the passive portfolio as

$$ f = \left(S _ {P} ^ {2} - S _ {M} ^ {2}\right) / 2 A \tag {27.16}
$$ where  $A$  is the coefficient of the investor's risk aversion.


The source of the power of the active portfolio is the additive value of the squared information ratios  $\left(\frac{\alpha_i}{\sigma(e_i)}\right)$  and the precision of individual analysts. Recall the expression for the square of the Sharpe ratio of the optimized risky portfolio:

$$
S _ {P} ^ {2} = S _ {M} ^ {2} + \sum_ {i = 1} ^ {n} \left[ \frac {\alpha_ {i}}{\sigma (e _ {i})} \right] ^ {2}
$$

Therefore,

$$ f = \frac {1}{2 A} \sum_ {i = 1} ^ {n} \left[ \frac {\alpha_ {i}}{\sigma \left(e _ {i}\right)} \right] ^ {2} \tag {27.17}
$$

Thus, the fee that can be charged,  $f$ , depends on three factors: (1) the coefficient of risk aversion, (2) the distribution of the squared information ratio in the universe of securities, and (3) the precision of the security analysts. Notice that this fee is in excess of what an index fund would charge. If an index fund charges about 10 basis points, the active manager could charge incremental fees above that level by the percentage given in Equation 27.17.

# Results from the Distribution of Actual Information Ratios

Kane, Marcus, and Trippi investigated the distribution of the squared information ratio, IR, for all S&P 500 stocks over two 5-year periods and estimated that this (annualized) expectation,  $E(\mathrm{IR}^2)$ , is in the range of .845 to 1.122. With client risk coefficient of risk aversion of 3, a portfolio manager who covers 100 stocks with security analysts whose  $R$ -square of forecasts with realized alpha is only .001 would still be able to charge an annual fee  $4.88\%$  higher than that of an index fund. This fee is based on the lower end of the range of the expected squared information ratio.

One limitation of this study is that it assumes that the portfolio manager knows the quality of the forecasts, however low they may be. As we have seen, portfolio weights are sensitive to forecast quality, and when that quality is estimated with error, performance will be further reduced.

# Results from Distribution of Actual Forecasts

A study of actual forecasts by Kane, Kim, and White (see footnote 3) found the distribution of over 11,000 alpha forecasts for over 600 stocks over 37 months presented in Figure 27.2. The average forecast precision from this database of forecasts provided an  $R$ -square of .00108. Despite this very low precision, when used to adjust forecasts and form optimal portfolios from 105 stocks, the annualized  $M$ -square measures of performance are quite impressive,  $2.67\%$  for the index model assuming no correlation across residuals, or  $3.01\%$  allowing for correlation. The conclusion is that even the smallest forecast ability can result in greatly improved performance.


# 27.6 Concluding Remarks on Active Management

A common concern of students of finance who encounter a heavy dose of theory laced with math and statistics is whether the analytical approach is necessary or even useful in practice. Here are some observations that should allay any such concern. Investment theory has developed in recent decades at a galloping pace. Yet, perhaps surprisingly, the distance between the basic science of investments and industry practice, one that exists in any field, has actually narrowed in recent years.

Yet there is one area in which practice still lags far behind theory, and that is the subject of this chapter—this despite the fact that TB and BL models have been around since 1973 and 1992, respectively. Yet, these models have so far failed to materially penetrate the industry. We hope that this situation will be remedied during your career!

1. Treynor-Black portfolio weights are sensitive to large alpha values, which can result in practically infeasible long/short portfolio positions. The full-blown Markowitz optimal risky portfolio is also extremely sensitive to assumptions for expected return.
2. Constraining tracking risk (i.e., the variance of the return difference between the managed and the benchmark portfolio) acts to keep the Treynor-Black portfolio within reasonable weights.
3. Alpha forecasts must be shrunk (adjusted toward zero) to account for less-than-perfect forecasting quality. Compiling past analyst forecasts and subsequent realizations allows one to estimate the correlation between realizations and forecasts. Regression analysis can be used to measure the forecast quality and guide the proper adjustment of future forecasts. When alpha forecasts are scaled back to account for forecast imprecision, the resulting portfolio positions become far more moderate.
4. The Black-Litterman model allows the private views of the portfolio manager to be incorporated with market data in the optimization procedure.
5. The Treynor-Black and Black-Litterman models are complementary tools. Both should be used: The TB model is more geared toward security analysis, while the BL model more naturally fits asset allocation problems.
6. Even low-quality forecasts are valuable. Almost imperceptible  $R$ -squares of only .001 in regressions of realizations on analysts' forecasts nevertheless can substantially improve portfolio performance when they are applied to large sets of securities.

# SUMMARY passive market-index portfolio

active portfolio alpha values
benchmark portfolio tracking error

prior distribution posterior distribution forecasting record adjusted alphas views asset allocation baseline forecasts information ratio


# KEY TERMS

# PROBLEM SETS eXceI Please visit us at www.mhhe.com/Bodie13e


1. How would the application of the BL model to a stock and bond portfolio (per the example in the text) affect security analysis? What does this suggest about the hierarchy of use of the BL and TB models?
2. Figure 27.3 includes a box for the econometrics unit. Item (3) is to "help other units." What sorts of specific tasks might this entail?
3. Make up new alpha forecasts and replace those in Spreadsheet 27.1. Find the optimal portfolio and its expected performance.
4. Make up a view and replace the one in Spreadsheet 27.2 in Section 27.3. Recalculate the optimal asset allocation and portfolio expected performance.
5. Suppose that sending an analyst to an executive education program will raise the precision of the analyst's forecasts as measured by  $R$ -square by .01. How might you put a dollar value on this improvement? Provide a numerical example.

# E-INVESTMENTS EXERCISES

You can find an interactive Black-Litterman model at www.portfoliovisualizer.com. Look for the link to Black-Litterman under Portfolio Optimization.

1. Specify an initial portfolio using the asset classes provided in the drop-down menus. What are the equilibrium returns implied by your allocation?
2. Now express some views about either absolute return or over/underperformance. Given those views, find the adjusted return of each asset class and the recommended portfolio allocation.
3. Experiment with both the size of your views as well as the confidence you assign to them to see how they affect portfolio allocation and adjusted return.

# APPENDIX A: Forecasts and Realizations of Alpha

A linear representation of the process that generates forecasts from the (yet unknown) future values of alpha would be

$$
\alpha^ {f} (t) = b _ {0} + b _ {1} u (t) + \eta (t) \tag {27A.1}
$$ where  $\eta(t)$  is the forecasting error and is uncorrelated with the actual  $u(t)$ . Notice that when the forecast is optimized as in Equation 27.7, the error of the adjusted forecast,  $\varepsilon(t)$  in Equation 27.6, is uncorrelated with the optimally adjusted forecast  $\alpha(T)$ . The coefficients  $b_0$  and  $b_1$  are shift and scale biases in the forecast. Unbiased forecasts would result in  $b_0 = 0$  (no shift) and  $b_1 = 1$  (no scale bias).


We can derive both the variance of the forecast and the covariance between the forecast and realization from Equation 27A.1:

$$
\sigma^ {2} \left(\alpha^ {f}\right) = b _ {1} ^ {2} \times \sigma^ {2} (u) + \sigma^ {2} (\eta) \tag {27A.2}
$$

$$
\operatorname {C o v} \left(\alpha^ {f}, u\right) = b _ {1} \times \sigma^ {2} (u)
$$

Therefore, the slope coefficient,  $a_1$ , in Equation 27.6 is

$$ a _ {1} = \frac {\operatorname {C o v} \left(u , \alpha^ {f}\right)}{\sigma^ {2} \left(\alpha^ {f}\right)} = \frac {b _ {1} \times \sigma^ {2} (u)}{b _ {1} ^ {2} \times \sigma^ {2} (u) + \sigma^ {2} (\eta)} \tag {27A.3}
$$

When the forecast has no scale bias, that is, when  $b_{1} = 1$ ,  $a_{1}$  equals the  $R$ -square of the regression of forecasts on realizations in Equation 27A.1, which also equals the  $R$ -square of the regression of realizations on forecasts in Equation 27.6. When  $b_{1}$  is different from 1.0, we must adjust the coefficient  $a_{1}$  to account for the scale bias. Notice also that with this adjustment,  $a_{0} = -b_{0}$ .

# APPENDIX B: The General Black-Litterman Model

The BL model is easiest to write using matrix notation. We describe the model according to the steps in Section 27.3.

# Steps 1 and 2: The Covariance Matrix and Baseline Forecasts

A sample of past excess returns of the universe of  $n$  assets is used to estimate the  $n \times n$  covariance matrix, denoted by  $\Sigma$ . It is assumed that the excess returns are normally distributed.

Market values of the universe assets are obtained and used to compute the  $1 \times n$  vector of weights  $w_{M}$  in the baseline equilibrium portfolio. The variance of the baseline portfolio is calculated from

$$
\sigma_ {M} ^ {2} = w _ {M} \sum w _ {M} ^ {T} \tag {27B.1}
$$

A coefficient of risk aversion for the representative investor in the economy,  $\overline{A}$ , is applied to the CAPM equation to obtain the baseline macro forecast for the market portfolio risk premium,

$$
E \left(R _ {M}\right) = \bar {A} \sigma_ {M} ^ {2} \tag {27B.2}
$$

The  $1 \times n$  vector of baseline forecasts for risk premiums of each security,  $E(R)$ , is computed from the macro forecast and the covariance matrix by

$$
E \left(R ^ {\prime}\right) = E \left(R _ {M}\right) \sum w _ {M} ^ {T} \tag {27B.3}
$$

The data so far describe the prior (baseline) distribution of the excess rates of return of the asset universe by

$$
\widetilde {R} \sim N [ E (R), \sum ] \tag {27B.4}
$$

The  $n \times n$  covariance matrix of the baseline expected excess returns,  $\tau \Sigma$ , is assumed proportional to the covariance matrix,  $\Sigma$ , by the scalar  $\tau$ .

# Step 3: The Manager's Private Views

The  $k \times n$  matrix of views,  $P$ , includes  $k$  views. The  $i$ th view is a  $1 \times k$  vector that multiplies the  $1 \times n$  vector of excess returns,  $\widetilde{R}$ , to obtain the value of the view,  $Q_{i}$  with forecasting error  $\varepsilon_{i}$ . The entire vector of view values and their forecasting errors is given by

$$
R P = Q + \varepsilon \tag {27B.5}
$$

The confidence of the manager in the views is given by the  $k \times k$  covariance matrix,  $\Omega$ , of the vector of errors in views,  $\varepsilon$ . The views embedded in the baseline forecast,  $R$ , are given by  $Q^{E}$

$$
R P = Q ^ {E}
$$

Thus, the  $1 \times k$  vector of deviation of the view from the baseline view (forecasts) and its covariance matrix  $S_{D}$  are

$$
D = Q ^ {E} - Q \tag {27B.6}
$$

$$
S _ {D} = \tau P \sum P ^ {T} + \Omega
$$

# Step 4: Revised (Posterior) Expectations

The  $1 \times n$  vector of posterior (revised) expectations conditional on the views, as well as the revised covariance matrix, is given by

$$
R ^ {*} = R | P = R + \tau D S _ {D} ^ {- 1} \sum P ^ {T}
$$

$$
\sum^ {*} = \sum + M \tag {27B.7}
$$

$$
M = \tau \sum - \tau \sum P ^ {T} S _ {D} ^ {- 1} P \tau \sum
$$

# Step 5: Portfolio Optimization

The vector of revised expectations is used in conjunction with the covariance matrix of excess returns to produce the optimal portfolio weights with the Markowitz algorithm.


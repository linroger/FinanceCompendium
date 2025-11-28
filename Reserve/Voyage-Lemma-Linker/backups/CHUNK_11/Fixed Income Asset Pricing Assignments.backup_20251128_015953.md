---
tags:
  - fixed_income_securities
  - interest_rate_modeling
  - bond_pricing_methodologies
  - derivative_securities_fixed_income
  - mortgage_backed_securities
  - term_structure_estimation
key_concepts:
  - ar1_interest_rate_forecasting
  - bootstrap_yield_curve_extraction
  - duration_convexity_analysis
  - black_derman_toy_model
  - ho_lee_interest_rate_tree
  - swap_spread_arbitrage
  - callable_bond_valuation
  - mbs_prepayment_modeling
aliases: []
cssclasses: academia
---

# Fixed Income Asset Pricing Assignments

Bus 35130 Spring 2024
John Heaton

March 18, 2024

Homework 1 Due before 6pm on Monday March 25 central time.

You have been retained by the JCH Fixed Income Group to provide a forecast about future short term interest rates, namely, the 3 month t-bill rate. You decide to use two sources of data: historical interest rate data and current forward rates. The data necessary for this forecasting exercise are contained in the Excel file DTB3_2024.XLS, which you can find on Canvas. This dataset contains daily observations of the 3 month t-bill rate from April 4, 1954 until March 14, 2024 (sheet "DTB3") as well as the Treasury Strip Price on March 08, 2024 (sheet "Strip Prices"). You are to write a report including all relevant information and computations, and provide a forecast for $n$ horizons ranging between 6 months and 5 years. Please, follow the steps below.

Note 1: For each section below, there are questions that require a "pencil and paper" $(PP)$ answer, and questions that require actual computations using data and computer programs $(CP)$. You are supposed to do both. For the computer based questions you may used any software you like. There are guides however for Matlab, Excel and Python. You are, however, not required to use any of these pieces of code!

Note 2: Some code you might use:

- For Matlab users, we made available the Matlab code "HW1_2024_Guide.m". This code provides a start to the solutions. You will need to fill in the parts of the code that are missing. For example you will need to fill in some formulas and or inputs. The code won't run until you fix those spots. Look for the spots marked by "???". 
- For Excel users, we made available the spreadsheet "HW1_2024_Guide.xlsx". This Excel spreadsheet contains instructions to use the XLSTAT functions answer the CP questions below. Inputs though are required to complete some formulas or to produce some of the results. The Excel spreadsheet is supposed to facilitate the computations for the homework.
- For Python users, we made available the Python code "HW1_2024_Guide.py". This code provides a start to the solutions. You will need to fill in the parts of the code that are missing. For example you will need to fill in some formulas and or inputs. The code won't run until you fix those spots. Look for the spots marked by “??”

# Estimation And Forecast

1. Let us denote by $r_t$ the Bond Equivalent Yield (TN 1, page 22) on day $t$.

$(PP)$ Below are Treasury Bill quotes from the Wall Street Journal from a few years ago. Please, explain why the rates in "Ask" differ from those in "Asked Yield". Use the quoted rates with maturity 6/11/2020 and 3/25/2021 to explain the point in detail (i.e. show that the "Ask" quotes indeed implies "Asked yield").

$(CP)$ The data in DTB3_2024.XLS are quoted on a discount basis $d_t$. Please determine a time series of BEY and provide the appropriate plot (note that here $n = 91$).

2. The $AR(1)$ process for interest rates is the following:

$$
r_{t+1} = \alpha + \beta r_t + \varepsilon_{t+1} \tag{1}
$$

where $\varepsilon_{t+1} \sim N(0,\sigma^2)$

$(PP)$ Show OLS based formulas for determining $\hat{\alpha}$, $\hat{\beta}$ and $\sigma$.

$(PP)$ Demonstrate why and how "mean reversion" of interest rates can be modeled with $AR(1)$ process.

$(CP)$ Estimate the AR(1) process for interest rates.

3. Let $\hat{\alpha}$, $\hat{\beta}$ and $\sigma$ be the estimated parameters from (1). Use (1) together with the most recent interest rate available on DTB3.XLS, call it $r_{TODAY}$, to make a forecast of future interest rates $r_{TODAY+T}$.

$(PP)$ Carry the daily interest rate forecast for the following three days, i.e. calculate $r_{TODAY+1day}$, $r_{TODAY+2days}$, $\ldots$, $r_{TODAY+3days}$. Show all work, including all the formulas used.

$(CP)$ Forecast interest rates for horizons $T = 6$ months, and 1, 2, ..., 5 years (a plot would suffice). Explain how you make the forecasts. (Tip: When you make the forecasts, assume there are 252 (business) days in one year).

4. The Treasury Strip Prices are contained in DTB3_2024.xls.

$(PP)$ Compute both the current yield curve and forward rates for the first three maturities. Show all work, including all the formulas used. Discuss what a "forward rate" is.

$(CP)$ Compute both the current yield curve and forward rates for all maturities and compare the forecasts of future interest rates that are implicit in the forward rates to those obtained in point (3) above. Plot the forecasts and the corresponding forward rates. Discuss your findings.

## U.S. Treasury Quotes

Monday, April 06, 2020

Treasury Notes & Bonds Treasury Bills Maturity And Based On The Asked Quote.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
MATURITY & BID & ASKED & CHG & ASKED YIELD \\ \hline
4/9/2020 & 0.018 & 0.008 & -0.023 & 0.008 \\ \hline
4/14/2020 & 0.043 & 0.033 & unch. & 0.033 \\ \hline
4/16/2020 & 0.043 & 0.033 & +0.035 & 0.033 \\ \hline
4/21/2020 & 0.048 & 0.038 & +0.008 & 0.038 \\ \hline
4/23/2020 & 0.035 & 0.025 & -0.010 & 0.025 \\ \hline
4/28/2020 & 0.055 & 0.045 & +0.010 & 0.046 \\ \hline
4/30/2020 & 0.058 & 0.048 & +0.013 & 0.048 \\ \hline
5/5/2020 & 0.085 & 0.075 & +0.003 & 0.076 \\ \hline
5/7/2020 & 0.055 & 0.045 & -0.003 & 0.046 \\ \hline
5/12/2020 & 0.085 & 0.075 & +0.013 & 0.076 \\ \hline
5/14/2020 & 0.090 & 0.080 & +0.023 & 0.081 \\ \hline
5/19/2020 & 0.058 & 0.048 & -0.015 & 0.048 \\ \hline
5/21/2020 & 0.095 & 0.085 & +0.038 & 0.086 \\ \hline
5/26/2020 & 0.060 & 0.050 & +0.013 & 0.051 \\ \hline
5/28/2020 & 0.075 & 0.065 & +0.003 & 0.066 \\ \hline
6/2/2020 & 0.113 & 0.103 & +0.015 & 0.104 \\ \hline
6/4/2020 & 0.078 & 0.068 & +0.018 & 0.069 \\ \hline
6/11/2020 & 0.103 & 0.093 & +0.023 & 0.094 \\ \hline
6/18/2020 & 0.110 & 0.100 & +0.025 & 0.102 \\ \hline
6/25/2020 & 0.088 & 0.078 & +0.030 & 0.079 \\ \hline
7/2/2020 & 0.098 & 0.088 & +0.013 & 0.089 \\ \hline
7/9/2020 & 0.125 & 0.115 & +0.030 & 0.117 \\ \hline
7/16/2020 & 0.145 & 0.135 & +0.038 & 0.137 \\ \hline
7/23/2020 & 0.143 & 0.133 & +0.025 & 0.135 \\ \hline
7/30/2020 & 0.150 & 0.140 & +0.020 & 0.142 \\ \hline
8/6/2020 & 0.148 & 0.138 & +0.030 & 0.140 \\ \hline
8/13/2020 & 0.150 & 0.140 & +0.038 & 0.142 \\ \hline
8/20/2020 & 0.150 & 0.140 & +0.023 & 0.142 \\ \hline
8/27/2020 & 0.145 & 0.135 & +0.025 & 0.137 \\ \hline
9/3/2020 & 0.143 & 0.133 & +0.025 & 0.134 \\ \hline
9/10/2020 & 0.155 & 0.145 & +0.020 & 0.148 \\ \hline
9/17/2020 & 0.093 & 0.083 & +0.007 & 0.084 \\ \hline
9/24/2020 & 0.165 & 0.155 & +0.018 & 0.157 \\ \hline
10/1/2020 & 0.165 & 0.155 & +0.018 & 0.157 \\ \hline
10/8/2020 & 0.168 & 0.158 & +0.015 & 0.160 \\ \hline
11/5/2020 & 0.155 & 0.145 & +0.035 & 0.148 \\ \hline
12/3/2020 & 0.133 & 0.123 & +0.013 & 0.125 \\ \hline
12/31/2020 & 0.138 & 0.128 & +0.008 & 0.130 \\ \hline
1/28/2021 & 0.150 & 0.140 & +0.030 & 0.143 \\ \hline
2/25/2021 & 0.153 & 0.143 & +0.018 & 0.145 \\ \hline
3/25/2021 & 0.170 & 0.160 & +0.020 & 0.163 \\ \hline
\end{tabular}
\end{document}
```

Source: Tullett Prebon

Source: Wall Street Journal Web Site https://www.wsj.com/market-data/bonds/treasuries

## Homework 2

March 25, 2024

Due at the beginning of class 3

This homework is on the pricing and risk assessment of Leveraged Inverse Floaters. Please, write the solution to the homework as a clean report addressed to the principals of the fixed income group at JCH Fixed Income Group, LLP. The principals of JCH Fixed Income Group are very demanding, so make sure to describe exactly the source of your results. However, the report must be clean and concise. An appendix to the report may contain any additional material.

The data for this homework are collected in the data file HW2_Data.xls available on canvas.

Note 1: For each section below, there are questions that require pencil and paper $(PP)$ answers, and questions that require actual computation using data and computer programs $(CP)$. You are to do both.

Note 2: As with previous homework assignments there are "guides" for doing the homework in Excel, Matlab and Python. Each code provides partial solutions to the questions. To make the code run you are required to complete some formulas or to produce some of the results yourself. You are not required to use any of the guides, but use of one of them is recommended.

### Leverage Inverse Floaters

Recommended Reading: Veronesi's Book, Chapter 2 (esp. 2.8); Chapter 3 (esp. 3.7)

In an environment of low interest rates, inverse floaters are popular investment vehicles that allow a fund manager to obtain a higher yield, by betting on the direction of the movement in interest rates. In particular, consider the following term sheet for a Leveraged Inverse Floater.

Leveraged Inverse Floater Term Sheet: 

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Date & February 17, 2009 \\ \hline
Maturity & February 17, 2014 (5 year) \\ \hline
Payments Frequency & Semi-annual \\ \hline
Interest Payment & Base Interest Rate minus 2 times Reference Interest Rate \\ \hline
Base Interest Rate & 10\% \\ \hline
Reference Interest Rate & 6 month T-bill rate with standard 6 month lag \\ \hline
\end{tabular}
\end{document}
```

Do the following:

### 1. Bootstrap Methodology

$(PP)$ Describe bootstrap methodology for extracting the term structure of interest rates.

$(PP)$ The AllBondQuotes_20090217 tab of the data file provided contains Treasury Bills, Notes and Bonds on February 17, 2009. Use these data to manually compute the spot rates for maturity 0.5, 1, and 1.5. Show your work. TIP: Maturity 0.4999 can be considered 0.5, and so on.

$(CP)$ The AllBondQuotes_20090217 tab of the data file provided contains Treasury Bills, Notes and Bonds on February 17, 2009. 
(i) Use these data to bootstrap the term structure of interest rates for as long a maturity as possible, and obtain the discount function. In particular, you will see that for several maturities, you will have a choice of which bonds to use in your bootstrap. Compute two discount curves, $(a)$ one that uses the most recently issued bonds (as of 02/19/2009), and $(b)$ one that uses the oldest bonds. Discuss the differences. Make sure to report what data you actually use for the bootstrap as well as any approximation you have to carry out. [Note: The bonds with highest coupon are the oldest ones].

(ii) Plot the resulting term structure of interest rates (i.e. the spot rate function) for both cases $(a)$ and $(b)$. Discuss the difference and any other visible feature of the yield curve.

### 2. Leverage Inverse Floater Pricing

(PP) Describe the cash flows of the Leverage Inverse Floater provided in Term Sheet. How can we decompose the Leverage Inverse Floater into simpler securities?

(PP) Discuss intuitively the benefits from investing in the Leverage Inverse Floaters as compared to an existing, traded, regular fixed rate note with the same maturity.

(CP) Use the results in Point 1 to compute the price of Leverage Inverse Floater described in the Term Sheet (which term structure do you use? Remember you have to come up with one price and not two. Explain your choice).

### 3. Duration And Convexity

(PP) Describe the duration of a fixed income security and how it is calculated in general. How is the duration of the Leverage Inverse Floater calculated? What are its components?

(CP) Calculate the duration of the Leverage Inverse Floater. Plot the value of the Leverage Inverse Floater against a hypothetical parallel shift in the term structure of interest rates.

(PP) Discuss your finding regarding the duration of the Leverage Inverse Floater and discuss the risk that an investor may face by investing in the Leverage Inverse Floater. In particular, compare the duration (and risk) of the Leverage Inverse Floater to that of a regular existing traded fixed-rate note with the same maturity.

(PP) Describe the convexity of a fixed income security and how it is calculated in general. How is the convexity of the Leverage Inverse Floater calculated? What are its components?

(CP) What is the value of the convexity of the Leverage Inverse Floater? Discuss.

### 4. This Is An Optional Question For Those That Are Interested! Value-At-Risk Calculations

(PP) Describe the Value-at-Risk concept and how it can be applied to fixed income securities, including Leverage Inverse Floaters.

(CP) Use the Duration and Convexity computed in Part 3 along with the data in DBT6 tab of the data file provided to assess the risk of the Leverage Inverse Floater. In particular, compute the 1-day, $95\%$ and $99\%$ Value-at-Risk of the Leverage Inverse Floater, by using both the "historical approach," and the "normal distribution." Compare the result Value-at-Risk with the one of a regular 5-year bond. Comment.

Tip: See Veronesi's Book, Ch. 3.2.8 and 3.8. In particular, the $100 - \alpha\%$ Value-at-Risk is the value VaR such that $Pr(L < VaR) = \alpha$ where $L$ is the portfolio dollar loss over one day.

## Homework 3

Due At The Beginning Of Class 4

Note 1: For each section below, there are questions that require a "pencil and paper" $(PP)$ answer, and questions that require actual computations using data and computer programs $(CP)$. You are supposed to do both.

Note 2: As with Homework 1 there are "guides" for doing the homework in Excel, Matlab and Python. Each code provides partial solutions to the questions. To make the code run you are required to complete some formulas or to produce some of the results yourself. You are not required to use any of the guides, but use of one of them is recommended.

### Part I. Duration Hedging And Factor Neutrality

Consider the Leverage Inverse Floater discussed in HW 2. The data set FBYields_2024_v2.xlsx contains monthly data on continuously compounded zero coupon yields (1 months - 5 years) from June 1952 to December 2023.

1. $(PP)$ Describe the Principal Component methodology, and what "Level," "Slope," and "Curvature" mean? Are these assumptions or results of the analysis? Why the names?

2. $(CP)$ Use this zero-coupon bond term structure to compute the value of the LIF on March 31, 2009 as well as on April 30, 2009. Compare the change in value of LIF with the one predicted by the duration computation performed in HW 2 (for the latter computation, you have to compute the average change in the term structure over the two dates (why?)). Discuss your results, also in view of the actual change of the term structure of interest rates over the two dates. (Tip: It is OK for this exercise to keep the maturity of LIF to 5 years on both dates. Tip 2: It helps to actually plot the term structures on the dates on the same graph.)

3. $(CP)$ Use the time series of the data to compute the Principal Component betas for level and slope. Plot the beta coefficients as well as the level and slope factors (Tip: See the Guide files for matlab or excel).

4. $(CP)$ Compute the factor durations against level and slope. (Tip: This is a small modification from the solution to HW 2)

5. $(CP)$ Compare the variation in LIF (in point (A)) with the one predicted from the factor duration in point (B). Discuss. (To compute the actual change in Factor 1 (level) and 2 (slope), you just have to multiply the betas in point $(B)$ by the actual change in the yields over the two days.)

### Part II: Predicting Zero-Coupon Bond Returns

Recommended readings:
- Book, Chapter 7.3
- Cochrane and Piazzesi (2005) "Bond Risk Premia" American Economic Review. http://www.stanford.edu/~piazzesi/cp.pdf

1. $(PP)$ Explain the logic behind Fama-Bliss regressions. According to the Expectation Hypothesis, what should be the regression coefficients of the regression?

2. $(CP)$ Use the data FByields_2024_v2.xlsx and run Fama-Bliss and Cochrane-Piazzesi annual predictive regressions of zero coupon bonds with time to maturity $T = 2, 3, 4, 5$. Please, only use annual data for this exercise, so as to avoid econometric problems (overlapping samples).

- $(CP)$ Plot the expected excess return for the 5-year bond over time using both Fama-Bliss and Cochrane-Piazzesi methodologies. As of the last day in the sample (December 2023), what is the 1-year forecast of the 5-year bond excess return? Compare the difference in prediction about the 2022-2023 excess bond returns between Fama and Bliss and Cochrane and Piazzesi.
- $(PP)$ What do your results imply about time varying risk premia? Interpret in light of your knowledge of macro-economic events (inflation, growth, etc).
- $(PP)$ How well can you predict future bond returns? Do your results differ from those illustrated in the teaching notes? Discuss.

## Homework 4

Due at the beginning of Class 5

Note 1: For each section below, there are questions that require a "pencil and paper" $(PP)$ answer, and questions that require actual computations using data and computer programs $(CP)$. You are supposed to do both.

Note 2: As with Homework 1 there are "guides" for doing the homework in Excel, Matlab and Python. Each code provides partial solutions to the questions. To make the code run you are required to complete some formulas or to produce some of the results yourself. You are not required to use any of the guides, but use of one of them is recommended.

### Part I: Real And Nominal Bonds

The dataset "DataTIPS.xlsx" contains data on nominal bonds and Treasury Inflation Protected Securities (TIPS) on Jan 15, 2013.

1. $(PP)$ Write down the relation between nominal rates and real rates. Interpret each term economically.

2. $(PP)$ What does a negative real rate may imply? Provide an intuition about negative real rates using more than one potential explanation.

3. $(PP)$ In the first quarter of 2013, the median forecast of professional forecaster about the average three month rate for the next 10 years was $2.4\%$. Compare this average with your estimated nominal 10-year rate. Is it higher? Is it lower? Explain the difference, if any, in economic terms.

4. $(CP)$ Fit the Nelson Siegel model to the TIPS on Jan 15, 2013. Plot the resulting term structure of real rates. Interpret in light of your answer to point 2.

5. $(CP)$ Fit the Nelson Siegel model to the nominal bonds. Plot the resulting term structure of nominal rates. Interpret in light of your answer to point 3.

6. $(CP)$ Compute breakeven inflation rate, that is, those rate $\pi(\tau)$ such that $r_{nominal}(0,\tau) = r_{real}(0,\tau) + \pi(\tau)$. Interpret your results. What does the break-even rate really capture?

### Part II. Swap Spread Trades

Recommended readings:
1. Book, Chapter 5.2. Harvard Business School Case: "Fixed Income Arbitrage in a Financial Crisis (C): TED Spread and Swap Spread in November 2008"
2. Duarte, Longstaff and Yu, "Risk and Return in Fixed-Income Arbitrage: Nickels in Front of a Steamroller?" Review of Financial Studies, 2006. (http://www.owlnet.rice.edu/~jd10/nickelsRFS.pdf)

Today is February 17, 2009 and you are evaluating the Swap / Treasury curve. You decide to set up \$100 million swap spread trade on the thirty year T-Bond / Swap. Daily quote on the 30-year bond, maturing on February 15, 2039, are contained in spreadsheet Daily_Bond_Swaps in HW4_Data.xls. The spreadsheet also contains daily data on the 30-year swap, three month LIBOR and three month Repo rate. You have access to some past data, such as the ones in the H15_Swap.txt, which contains daily data on swap rates, LIBOR and Repo, but for a longer sample, as well as Treasury constant maturity rates. (All these data are also collected in the Excel guide 35130_HW4-2022_Guide.xlsx for Excel users).

1. $(PP)$ Look at the data and decide which direction to set up a swap spread trade. Is there an arbitrage? If so, why do you think there is one? Discuss.

2. $(PP)$ What do you do? Describe the working of the swap spread trade. How do you take positions in the Treasury Bond? What about the swap?

3. $(CP)$ Consider now one quarter after the initiation of the trade (May 18, 2009). Suppose JCH Capital Management needs to liquidate the position immediately, due to large unexpected redemptions from investors. What is the value of the swap-spread trade positions? In particular, the trade has two parts: the T-Bond trade and the Swap trade. Compute the fair valuation of the two parts as follows:

A. The value of the T-bond part is just the value of the bond, multiplied by its position. You can read it right from the data. Recall though the overall position of the bond trade.

B. The value of the swap part should use the standard valuation formula of swaps, as a fixed rate bond minus a floating rate bond (see Teaching Note 4, page 11, Eq.(8)). The floating rate leg should be "easy" (what is the value of floating rate bond at reset dates?). For the fixed leg, proceed as follows:

(a) Determine what is the appropriate "coupon rate" for the fixed leg of the swap in the valuation.

(b) Determine how many "coupon" periods there are left.

(c) To compute the present value of future coupons, you need an appropriate discount function $Z(T)$. Extract the LIBOR curve from current swap rates as of May 18, 2009, using the procedure on TN3, page 11. Because for maturity less than one year there are no swap quotes, you can use LIBOR rates themselves in the computation.
- Note that you need an interpolation of maturities, as data only come on fixed maturities, but you need specific quarters to compute the present value.

(d) Plot the estimated zero-coupon LIBOR curve.

(e) Use the estimated $Z(T)$ to compute the value of the fixed leg of the swap.

C. Given your results in [A] and [B], did the trade (so far) made money or lost money? Can you reconcile it with your answer to point 1? What happened to the swap spread between Feb 9 and May 18, 2009?

4. $(CP)$ (Optional: No Grade Given. No hint in the code.) Follow the trading strategy cash flows. What is the sequence of cash flows? Consider only quarterly frequency.

5. $(CP)$ (Optional: No Grade Given. No hint in the code.) Follow also the value of the trade over time. Consider only quarterly frequency.

## Homework 5

Due at the beginning of Class 6

Note 1: For each section below, there are questions that require a pencil and paper $(PP)$ answer, and questions that require actual computations using data and computer programs $(CP)$. You are supposed to do both.

Note 2: As with past homework assignments there are "guides" for doing the homework in Excel, Matlab and Python. Each code provides partial solutions to the questions. To make the code run you are required to complete some formulas or to produce some of the results yourself. You are not required to use any of the guides, but use of one of them is recommended.

### Part I. Using Black's Formula For Caps, Floors, And Swaptions

1. $(CP)$ Attached are two data screens from Bloomberg. Figure 1 quotes out to 30 years. In using this data use the mid-point quotes. The second, Figure 2, provides data on implied flat Black forward-volatility for Caps and Floors and implied Black volatility for Swaptions. This screen also provides the 1-month LIBOR rate needed for the exercise. (There may be some slight inconsistency in the quotes in the figures because they were not extracted from Bloomberg at exactly the same time.) Compute:

- The dollar value of a two-year Cap (quoted caps are at-the-money, and therefore the strike rate equals the current swap rate). The only thing you need to enter in the code is the proper volatility and swap rates (along with 3 month LIBOR) to produce this price and the swaption price below.
- The dollar value of a 1-year swaption to enter into a 5-year swap.

2. $(PP)$ In the exercise above, make sure to illustrate the option-pricing formulas used for (a) the first caplet in the cap (i.e. the one with 6-months to maturity); and (b) the swaption. Show your work. (Look at the code and match it to the notation from the notes class).

### Part II. Interest Rate Trees

1. $(PP)$ Consider the following interest rate tree, where each time interval is 1-year (that is, $\Delta = 1$).

$$
i = 0 \qquad i = 1 \qquad i = 2
$$

$$
\begin{array}{cc} & \boxed{r_{2,uu} = 0.05} \\ \hline r_{1,u} = 0.04 & \end{array}
$$

$$
\boxed{r_0 = 0.03} \qquad \qquad \boxed{\begin{array}{c} r_{2,ud} \\ r_{2,du} \end{array}} = 0.03
$$

$$
\begin{array}{cc} \hline r_{1,d} = 0.02 \\ \hline \hline r_{2,dd} = 0.01 \\ \hline \end{array}
$$

The probability of an "up" movement can either be

$$
p = 40\% \quad \text{or} \quad p = 70\%
$$

You also know the current value of a 2-period zero coupon bond is

$$
Z_0(2) = 0.94
$$

(a) Find the risk neutral probability $\pi^*$ (see TN4, page 21) at time 0.

(b) You have to compute the value of a one-year call option on the interest rate $r_1$ at the strike rate $r_K = 3\%$ and notional $N = 1000$, that is, with payoff

$$
\text{payoff}_{1u} = 1000 \times \max(r_{1u} - r_K, 0) \text{ in the "up" node; and}
$$

$$
\text{payoff}_{1d} = 1000 \times \max(r_{1d} - r_K, 0) \text{ in the "down" node}
$$

Use the risk-neutral probability $\pi^*$ in previous point to compute the price for this option.

(c) Does it matter which probability $p$ is the true one (i.e. whether $p = 40\%$ or $p = 70\%$)? Why?

(d) Find the portfolio of securities that replicates the payoff of the option in point (b). What is the value of this portfolio at time 0? How does it compare with the value of the option computed in point (b)? Show your work and comment.

(e) Assume the risk neutral probability $\pi^*$ computed in point (a) is constant throughout the binomial tree. Use the risk neutral methodology to compute i. the value of a 3-year zero-coupon bond ii. the value of a 3-year coupon bond with annual coupon equal to $3\%$. iii. Compute a replicating portfolio at time 0 that replicates the payoff of the coupon bond at time $i = 1$. That is:

- Define a portfolio with $N_0$ units of the 3-period zero-coupon bond $Z_0(3)$ and $N_1$ units of the 1-period zero $Z_0(1)$

$$
P_0 = N_0 Z_0(3) + N_1 Z_0(2)
$$

so that $P_{1,u}$ and $P_{1,d}$ corresponds to the total value of an investor in the coupon bond would receive (remember that such an investor is entitled to the coupon at time $i = 1$ in both nodes).

- Check that the replicating portfolio "replicates", that is, that indeed $P_{1,u}$ and $P_{1,d}$ corresponds to the payoffs of the coupon bond.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|c|c|c|c|c|c|}
\hline
97) Regions & 98) Settings & 20:22:59 & Swaps Markets: United States & & & & & & & & & & \\ \hline
GV Ask/Chg & Swp/Govt & Swap Mid & FNMA & FN/GV & FN/SW & FHLMC & FH/GV & FH/SW & & & & & \\ \hline
2Y & 0.182 & -0.001 & 13.00 & -0.05 & 0.323 & +0.007 & 0.237 & 2.0 & -1.6 & -8.8 & -0.1 & 0.221 & 5.1 \\ \hline
3Y & 0.242 & +0.000 & 8.01 & +0.13 & 0.321 & +0.001 & 0.247 & -5.8 & -0.1 & 0.289 & 9.1 & & \\ \hline
4Y & 0.314 & +0.001 & 5.33 & +0.05 & 0.357 & +0.001 & 0.529 & 17.0 & -0.8 & 14.2 & +0.0 & 0.545 & 19.8 \\ \hline
5Y & 0.364 & +0.001 & 4.25 & -0.13 & 0.408 & +0.001 & 0.799 & 28.8 & -0.8 & 33.5 & -0.3 & 1.100 & 44.6 \\ \hline
7Y & 0.525 & +0.002 & -1.74 & -0.05 & 0.516 & +0.005 & 1.065 & 41.9 & -0.8 & 45.6 & -0.1 & 1.176 & -11.2 \\ \hline
10Y & 0.634 & +0.001 & -0.50 & -0.05 & 0.631 & +0.001 & 1.488 & & & 72.7 & -0.1 & 1.176 & -11.2 \\ \hline
30Y & 1.277 & -0.001 & -46.75 & -0.05 & 0.813 & +0.001 & +12.03 & & & & & & \\ \hline
\end{tabular}
\end{document}
```

## Homework 6

Due At The Beginning Of Class 8

Note: As with past homeworks there are "guides" for doing the homework in Excel, Matlab and Python. Each code provides partial solutions to the questions. To make the code run you are required to complete some formulas or to produce some of the results yourself. You are not required to use any of the guides, but use of one of them is recommended.

### Pricing The Freddie Mac 6% Callable Bond

Attached below you will find the prospectus of Freddie Mac 6%, 20-year callable bond, issued on June 7, 2007. Your task in this homework is to obtain its fair valuation, using both the Ho-Lee model and the Simple BDT model. Proceed as follows:

1. $(CP)$ Use the data in "HW6_Data_Bonds.xls" and extract the discount curve $Z(0,T)$ from the Treasuries using Nelson-Siegel model.

2. $(CP)$ Build the Ho-Lee tree, given by

$$
r_{i+1,j} = r_{i,j} + \theta(i) \times \Delta + \sigma \times \sqrt{\Delta} \times \epsilon_{i+1}
$$

where $\sigma$ is the volatility of interest rates, $\theta(i)$ are chosen to fit the term structure of interest rates exactly, and

$$
\epsilon(i) = \left\{ \begin{array}{ll} +1 & \text{with probability } 1/2 \\ -1 & \text{with probability } 1/2 \end{array} \right.
$$

Let $r_0$ match the first zero-coupon bond $Z_0(0.5)$ from Nelson Siegel model. The methodology to fit the model to the term structure of interest rates is explained in TN4. Both the matlab file and the guide spreadsheet that are available contain the routine to build it. You need a value of $\sigma$. Use the data on six-months rates available in the dataset (HW6_FRB_H15.csv) to estimate $\sigma$ (this can be done by taking the standard deviation of first differences in interest rates, over six-month periods, which is one time step). Remember to annualize the volatility estimates, as $\sigma$ in Ho-Lee and BDT are annualized.

3. $(CP)$ After fitting the tree to the data, please plot the zero-coupon bond yields from the tree and from the original zero-coupon bonds $Z(T)$ obtained from Nelson and Siegel (and used as inputs for the tree). Are they the same? Show also the first 10 time-steps of the interest rate tree (table $10 \times 10$).

4. $(CP)$ Use the tree to price the Freddie Mac Callable bond. Recall from the teaching notes that a callable bond can be decomposed in a non-callable bond minus a call option. Therefore

- Obtain the price of the non-callable bond
- Obtain the price of the call option written on the non-callable bond
- Obtain the price of the callable bond as the difference.

Please, make sure to incorporate the fact that the callable bond becomes callable only after the first-call-date.

(Matlab users: please see below for a generic algorithm to compute prices through backward calculation)

5. $(CP)$ Show the first 10 nodes of the non-callable bond, the option to call, and the callable security.

6. $(CP)$ Plot the price of the non-callable and of the callable security against interest rates at call time, as well as 1, 2, 3 semesters before. How does the callable and non-callable bonds compare? Comment and discuss.

7. $(CP)$ Compute the duration and convexity of callable and non-callable bond at time 0. Comment on the difference between the two securities.

8. $(CP)$ Ho Lee versus Simple BDT. Redo all of the points above for the Simple BDT model (note: in both the matlab file and the spreadsheet, this amounts to change BDT_Flag from 0 to 1 and re-run the routine to build the tree. Everything else should be automatic, except for the estimate of $\sigma$ which now should use log differences in rates). Comment on the difference in price, if any, from the two methodologies.

#### Additional Notes For Matlab Users:

Note 1: Below you will find a generic backward algorithm for any security $P$ with periodic cash flows $c$, maturity at time $n$, and generic payoff $gg = [g_1, \ldots, g_n]$.

$$
PP(:,:) = zeros(n,n); \quad \% \text{initialize matrix for security}
$$

$$
PP(1:n,n) = gg; \quad \% \text{set final payoff of bond i equal to 1 for all nodes}
$$

$$
\text{for } j = n-1:-1:1 \quad \% \text{move backward on the tree, from i-1, back to 1}
$$

$$
PP(1:j,j) = \exp(-ImTree(1:j,j) \times dt) \times (0.5 \times PP(1:j,j+1) + 0.5 \times PP(2:j+1,j+1) + c \times dt);
$$

$$
\text{end}
$$

(Note: The recursive formula above computes at time $j$ the whole vector of zeros for all nodes, from $1:j$. Using vectors as opposed to loops speeds up computations)

Note 2: To plot bond prices against interest rates at a given time $j$, you just need to use the following command: plot(ImTree(1:j, j), PP(1:j, j))

### Freddie Mac 6.00% Fixed Rate Medium-Term Notes

\$100,000,000

Due June 7, 2027 Redeemable Periodically, Beginning June 7, 2011

- Issue Date: June 7, 2007
- Maturity Date: June 7, 2027
- Subject to Redemption: Yes. The Medium-Term Notes are redeemable at our option, in whole only, upon notice of not less than 5 Business Days, at a price of $100\%$ of the principal amount, plus accrued interest to the Redemption Date.
- Redemption Date(s): Semiannually, on June 7 and December 7, commencing June 7, 2011
- Interest Rate Per Annum: $6.00\%$
- Frequency of Interest Payments: Semiannually, in arrears, commencing December 7, 2007
- Interest Payment Dates: June 7 and December 7
- Principal Payment: At maturity, or upon redemption
- CUSIP Number: 3128X6AT3

You should read this Pricing Supplement together with Freddie Mac's Global Debt Facility Offering Circular, dated July 28,2006 (the "Offering Circular"), and all documents that are incorporated by reference in the Offering Circular, which contain important detailed information about the Medium-Term Notes and Freddie Mac. See "Available Information" in the Offering Circular. Capitalized terms used in this Pricing Supplement have the meanings we gave them in the Offering Circular, unless we specify otherwise.

The Medium-Term Notes may not be suitable investments for you. You should not purchase the Medium-Term Notes unless you understand and are able to bear the redemption, yield, market, liquidity and other possible risks associated with the Medium-Term Notes. You should read and evaluate the discussion of risk factors (especially those risk factors that may be particularly relevant to this security) that appears in the Offering Circular under "Risk Factors" before purchasing any of the Medium-Term Notes.

The Medium-Term Notes, including any interest or return of discount on the Medium-Term Notes, are not guaranteed by and are not debts or obligations of the United States or any federal agency or instrumentality other than Freddie Mac.

Any discussion of tax issues set forth in this Pricing Supplement and the related Offering Circular was written to support the promotion and marketing of the transactions described in this Pricing Supplement. Such discussion was not intended or written to be used, and it cannot be used, by any person for the purpose of avoiding any tax penalties that may be imposed on such person. Each investor should seek advice based on its particular circumstances from an independent tax advisor.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
 & Price to Public (1)(2) & Underwriting Discount (2) & Proceeds to Freddie Mac (1)(3) \\ \hline
Per Medium-Term Note & 100% & 0.415% & 99.585% \\ \hline
Total & $100,000,000 & $415,000 & $99,585,000 \\ \hline
\end{tabular}
\end{document}
```

(1) Plus accrued interest, if any, from June 7, 2007.
(2) See "Distribution Arrangements" in the Offering Circular.
(3) Before deducting expenses payable by Freddie Mac estimated at \$1,000.

Offering:
1. Pricing date: May 22, 2007
2. Method of Distribution: x Principal Agent
3. Concession: N/A
4. Reallowance: N/A
5. Underwriter: Goldman, Sachs & Co.
6. Underwriter's Counsel: Sidley Austin LLP

## Homework 7

Relative Value Trades And Mortgage Back Securities

Due at the beginning of class 9

Note 1: The first part of this assignment is about a simple relative value trade on Trees. The others parts of assignment are on Mortgage Backed Securities, and valuation using both trees and Monte Carlo simulations. It appears long as we describe all of the steps, but the guide matlab and excel codes performs automatically large parts of the exercise. Available on Canvas are guideline files in Excel, Matlab and Python that implement many of the steps.

Note 2: Parts I and II are "pencil and paper" $(PP)$ questions. The other parts use data and computer programs $(CP)$. You are supposed to do both.

### Part I: Relative Value Trades on Binomial Trees

$(PP)$ Consider the following binomial tree. Each time interval is 1-year (that is, $\Delta = 1$).

The 2-period bond is $Z_0(2) = 0.94$, which implies a risk neutral probability $\pi^* = 0.59618073$. The true probability to move up the tree is $p = 0.5$.

The three period, fixed-coupon bond with coupon rate $c = 3\%$ is trading at par 100. Your model, instead, prescribes it should trade at $P_0(3) = 99.34716$. The three-period zero coupon bonds $Z_0(3) = 90.88915$ seems to be trading at the proper price.

1. Design a relative value trading strategy to take advantage of the miss-pricing (according to your model). Please, be clear on what you sell and what you buy. Recall that the only traded securities are the coupon bond (which is miss-priced) and the 3-period zero-coupon bond (which is correctly price). In addition, you can buy and sell 1-period bonds (i.e. borrow and lend at the rates on the tree).

2. Make a binomial tree with the trading strategy up to maturity: Indicate the positions in traded securities at any point. (You can use excel for this. But make sure to report the trees in the assignment).

3. What is the total profit and loss?

### Part II. Interest Rate Trees And MBS

1. $(PP)$ Consider the interest rate tree examined in HW5, reported below. Recall that each time interval is 1-year (that is, $\Delta = 1$).

The probability of an "up" movement is $p = 40\%$, and the risk neutral probability $\pi^*$ is in the solution to HW5 (or recompute it for this homework). You also know the current value of a 2-period zero coupon bond is $Z_0(2) = 0.94$.

(a) Compute the value of a $3\%$ Pass-Through MBS with maturity $i = 3$. The underlying pool has a coupon rate of $r^m = 3.469\%$, principal value $N = 100$, and maturity $i = 3$. Follow the steps in TN 5 (but recall the risk neutral probability is not 0.5).

### Part III. Pricing MBS On Trees

On November 1, 2014, the Ginnie Mae Pass-Through security GNSF 4 was trading at \$106.5781. This pass-through security was collateralized by a pool of mortgages with a weighted average coupon (WAC) = 4.492%, and a weighted average maturity (WAM) = 311 (months). As a junior analyst at the JCH Investment Group, you are examining the value of the GNSF 4 and trying to assess whether this price is in line with current interest rates and option prices.

You decide to use caps and floors to assess whether all of the interest rate optionality implicit in mortgage backed securities is taken into account in the current price of MBS. You decide to proceed as follows:

#### 1. Compute Forward Volatilities From Cap Volatility Quotes

(a) Compute the zero-coupon LIBOR curve implicit in the swap curve, as usual (Note: This part is automatically done by the guide codes available on Canvas);

(b) Compute the forward volatilities, also up to maturity of 30 years. Cap volatility quotes are available up to 30-years as well (Note: This part is automatically done by the guide code).

(c) Plot the forward and the flat volatilities.
- Comment on your findings. Discuss.
- Provide an intuition about the relation between forward and flat volatilities.

#### 2. Fit the BDT model to the discount curve and forward volatilities.

Use the algorithm in TN 4 to fit the Black-Derman-Toy model (Note: automatically done by the guides, once fitted LIBOR curves and forward volatilities are carried over. Note that we fit the model at quarterly intervals instead of monthly intervals to keep the computational exercises simpler.).

#### 3. Use the BDT model to value GNSF4.

To obtain the price of the pass-through security GNSF 4, recall you must first do the following steps:

(a) Compute the dollar coupon and the scheduled interest and principal payments. These calculations allow you to compute the scheduled outstanding principal balance. You can do these computations assuming outstanding principal of 100 (so that, the price will be also in percentage of 100, like the quoted value of the security).

Note that the coupon must satisfy the equation

$$
P_0 = C \sum_{j=1}^n \left(\frac{1}{1 + r_m \times dt}\right)^j
$$

where $n$ is the number of coupon payments and $dt$ is the time step. A useful formula is the following: define $a = \left(\frac{1}{1 + r_m \times dt}\right)$, then we have the result that

$$
\sum_{j=1}^n a^j = \frac{a - a^{n+1}}{1 - a}
$$

so that

$$
C = P_0 \frac{(1 - a)}{a - a^{n+1}}
$$

Given $C$, you can compute the scheduled principal and interest payment and remaining principal over time.

(b) Compute the value of the non-callable mortgage on the tree (i.e. present value of future coupons. This part is identical to previous cases, except that there is no bullet capital payment at maturity).

(c) Compute the value of the American call option from homeowner perspective, and thus the optimal time of prepayment. (This part again is identical to the previous homework, except that you must compare the present value of future payment at every node $(i,j)$ to the outstanding principal at time $i$.) What is the value of the pool of mortgages as of time zero? (I.e. what is the present value of future payments that takes into account the American option?)

(d) Use the GNSF coupon rate (4%) and the optimal prepayment time computed in the previous point to compute the cash flows of the pass-through security and thus its value at time 0. Is the price that you obtained close to the quoted one? If not, explain why not intuitively. What may be going on to explain the discrepancy, if any?

### Part IV. Use Monte Carlo Simulations On Trees

From the tree estimated in Part III, do the following:

1. Use Monte Carlo simulations on the tree to price an 30-year cap and a 30-year Asian cap with strike rate $r_k = 2\%$. (Note: This is identical to the example in Chapter 13 in the book.)

2. Use Monte Carlo simulations and the prepayment function

$$
p_t = c_1 \times \max(r_m - sp - r_t, c_2)
$$

to do the following:
- Compute the value of the pass-through, interest-only and principal-only mortgage-backed securities discussed above. Note that both the guide files are already set up to do these calculation for given parameters of the prepayment function. Choose the parameters of the prepayment function to obtain a value of the PT security that is similar to the quoted one. (This can be done by trial and error).
- Vary the parameters of the prepayment functions and compute the values of IO and PO. Discuss your findings intuitively.
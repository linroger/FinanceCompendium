---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Homework 2
linter-yaml-title-alias: Homework 2
---

# Homework 2
## Markets
### FINM September Launch

Mark Hendricks

hendricks@uchicago.edu

Maneet Singh - TA

maneetsingh@uchicago.edu

## Data
- This homework uses the file, "inflation_data.xlsx".
- Find the data in the Github repo associated with the module, (link on Canvas.)

The data file contains…

- Macroeconomic Data
	- Core CPI price index, denoted as p.
	- M2 Money Supply, denoted as m.
- Financial data
- Returns on the S&P 500, (via the SPY ETF)

See the "build data" folder for the details on how the data was constructed.

## 1. Assessing the OLS Model

This problem considers the predictability of inflation over various horizons. To do so, note the following:

- $i_{t,t+h}$: Inflation is the h-period growth rate of CPI:

$$
i_{t,t+h} ≡ \frac{p_{t+h}}{p_t} − 1
$$

- $g_{t,t+h}$: Money growth considered below is the growth rate of M2 Money supply:

$$
g_{t,t+h} ≡ \frac{m_{t+h}}{m_t}− 1
$$

1. Estimate an OLS regression to see if CPI and Money are contemporaneously correlated:

$$
p_t = \alpha + \beta m_t + \epsilon_t
$$

    - Note that this is not a lagged regression, but rather a regular time-series regression.
    - Answer the questions below for a one-year horizon: h = 12.
    
    (a) Report the estimated R-squared.
    (b) Report the point-estimate of β.

2. This time, examine a regression of growth rates. Specifically, estimate an OLS regression to see if inflation and money growth are contemporaneously correlated:

$$
i_{t,t+h} = \alpha + \beta g_{t,t+h} + \epsilon_{t,t+h}
$$

    • Note that this is not a lagged regression, but rather a regular time-series regression.
    • Answer the questions below for a one-year horizon: h = 12.

    (a) Report the estimated R-squared.
    (b) Report the point-estimate of β.

3. The result of regressing inflation on money growth is very different from regressing CPI on Money. What do you conclude? Does it seem that variation in money contemporaneously explains variation in inflation? 

    In particular, what is wrong with one of the two regression models? Consider plotting the raw dependent and independent variable of each.

4. Answer the remaining questions regarding the estimation of inflation on money growth in part 2 above.

    Do the residuals seem to be iid? That is,
    
    (a) do they seem to be drawn from a constant variance?
    
    (b) do they have serial correlation?
    
    Assess this informally by plotting the time-series of estimated sample residuals, e.

5. Suppose that the residuals are heteroskedastic and have serial correlation.
	
    (a) Report whether the estimates for α or β are statistically significant relative to 0, for a
    significance level of 5%.$^1$
    
    (b) Do you have concerns about the accuracy of the reported p-values?
    
    (c) Do you have concerns about the estimated beta? For small samples, for large samples?

6. OPTIONAL

    (a) Assess the residuals with the Durbin-Watson test for serial correlation. $^2$
    
    (b) Formally assess heteroskedasticity of the residuals with White’s test. $^3$

## 2. Forecasting via Regressions

Consider a forecasting (lagged) regression for inflation at horizon h:

$$
            i_{t,t+h} = \alpha + \beta x_{t−h,t} + \epsilon_{t,t+h}
$$

- Note that the regressor is lagged relative to the dependent variable.

1. Forecast using lagged inflation. Namely, estimate the above for
	
	- h = 1, 12, 24, 36
	- inflation as the regressor

	For each horizon regression, report the R-squared.

2. Redo the previous problem, but this time with (lagged) money growth as the regressor instead of (lagged) inflation.
3. Redo the previous problem, this time using both (lagged) inflation and (lagged) money growth as the regressors.
4. Does either regressor seem to have forecasting power? Does combining them improve the forecast?
5. Validity of the results

	(a) Plot the estimated residual for the forecasting regression at horizon h = 12 which uses both

	inflation and money growth as regressors.

	(b) Does it seem to have serial correlation?

	(c) Supposing the residual has serial correlation, does this give you concern for the betas above,

	or just the p-values?

### Footnotes:

<font size="3">
	
    1. Check the reported p-value for each of the estimates, perhaps using stats-models OLS function.
    2. This is reported by default in the stats-models OLS estimation summary. A value less than 2 would indicate potential issues with serial correlation.
    3. See the documentation for the stats-model package.  

</font>

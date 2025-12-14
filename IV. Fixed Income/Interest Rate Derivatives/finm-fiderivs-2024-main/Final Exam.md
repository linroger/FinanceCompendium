---
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Final Exam
---

# Final Exam

## FINM 37500 - 2024

### UChicago Financial Mathematics

* Mark Hendricks
* hendricks@uchicago.edu

***

# Instructions

## Please note the following:

Points

* You have **180 minutes** to complete the exam.
* For every minute late you submit the exam, you will lose one point.
Final Exam

Submission

* You will upload your solution to the Final Exam assignment on Canvas, where you downloaded this.
* Your submission should be readable, (the graders can understand your answers,) and it should include all code used in your analysis in a file format that the code can be executed. (ie. .ipynb preferred, .pdf is unacceptable.)

Rules

* The exam is open-material, closed-communication.
* You do not need to cite material from the course github repo--you are welcome to use the code posted there without citation, (only for this exam.)

Advice

* If you find any question to be unclear, state your interpretation and proceed. We will only answer questions of interpretation if there is a typo, error, etc.
* The exam will be graded for partial credit.

Answer Quality

* For conceptual questions, note that we will grade your answer for its relevance to our course focus and discussion. 
* Making points that are irrelevant, out-of-context, or overly general will may not help and could hurt your score for the question.
* This may be particularly relevant for answers which are copied from LLMs such as ChatGPT, but do not get at the heart of our contextual course learning.

## Scoring

| Problem | Points |
|---------|--------|
| 1       | 20     |
| 2       | 25     |
| 3       | 50     |
| 4       | 55     |
| **Total**   | **150**|

### Each numbered question is worth 5pts unless otherwise noted.

***

## Data

**All data files are found in the class github repo, in the `data` folder.**

This exam makes use of the following data files:

* `exam_data_2024-03-05.xlsx`

This file has sheets for…

* curve data - discount factors and forward volatilities
* BDT tree of rates (continuously compounded, as usual)
* vol quotes (across strikes) on swaptions for a particular expiry and tenor
* SABR parameters for a vol skew of the expiry and tenor associated with the vol quotes on the previous sheet.

Note

* the curve data is given at quarterly frequency
* all rates reported in the curve data are quarterly compounded, which is conveneint for the study of quarterly products in this exam (whether caps, floors, swaps, etc.)

### Load Data

If useful, the following code loads the data:

```python
import numpy as np
import pandas as pd
```

```python
DATE = '2024-03-05'

FILEIN = f'../data/exam_data_{DATE}.xlsx'

sheet_curves = 'rate curves'
sheet_tree = 'rate tree'
sheet_volskew = 'bloomberg vcub'
sheet_sabrparams = 'sabr params'

curves = pd.read_excel(FILEIN, sheet_name=sheet_curves).set_index('tenor')

ratetree = pd.read_excel(FILEIN, sheet_name=sheet_tree).set_index('state')
ratetree.columns.name = 'time'

volskew = pd.read_excel(FILEIN, sheet_name=sheet_volskew)

sabrparams = pd.read_excel(FILEIN, sheet_name=sheet_sabrparams).set_index('parameter')
```

***

# 1. Models

## 1.1. (10pts)

Be specific as to which type of data is used to estimate a binomial rate tree. Or, if the feature is assumed rather than estimated, make that clear.

How do we estimate the rate tree's…

* drift
* distribution (Ho-Lee vs Black-Derman-Toy)
* nodes
* probabilities

## 1.2.

Consider an interest-rate cap with only a single caplet. Which of the following could we use as an underlying binomial tree to price this cap?

* interest-rate tree
* bond tree
* swap tree
* floor tree

## 1.3.

True or False: SABR is used to have structure in modeling implied volatilities across strikes, tenors, and expirations.

***

# 2. Pricing with BDT and Black

Use `rate curves` for market data.

## 2.1.

Recall that a floor is a portfolio of floorlets which

* depend on the realized interest rate one quarter before the expiration.
* each have the same strike interest rate.

Use Black's formula to price **just one floorlet**

* expiring at `T=3`
* struck at the `T=3` swap rate
* notional of `100`

## 2.2.

Use Black's formula to price the entire floor with expiration of `T=3`.

The floor has floorlets at `quarterly` frequency, except the first quarter.

## 2.3.

Use `rate tree` for a BDT binomial tree fit to market data for your convenience.

Use this binomial tree to price the floor described above.

Display the binomial tree of prices.

## 2.4.

What do you think is the most relevant reason for the difference in pricing between Black's formula and BDT?

## 2.5.

Use the BDT tree to price a swap…

* `receiving-fixed` 
* swap rate of `3.65%`
* tenor `T=3`
* notional `N=100`.
* frequency quarterly (`n=4`)

Display the pricing tree.

***

# 3. Callable Bond

## Note:

Continue with the rate curves and BDT model provided in `rate curves` and `rate tree` in the provided spreadsheet.

# 3.1.

Consider a bond with:

* `T=3`
* face value of `N=100`
* coupons at `quarterly` frequency
* annualized coupon rate of `cpn=6%`.

Use your BDT tree to price this bond and display the pricing tree.

# 3.2. (7pts)

Suppose the bond is callable by the issuer.

* `European` style
* expiration of `Topt=1.5`
* (clean) `strike=100`

What is the value of the issuer's call option?

*Note that there is no difference between clean or dirty strike given that the bond pays coupons quarterly, and we are looking at quarterly steps in the tree.*

# 3.3. (3pts)

What is the value of the callable bond?

# 3.4.

We found that the Freddie Mac callable bonds often have negative option-adjusted spreads (OAS). 

Why was this? Do you expect that the european callable bond would be less prone to this phenomenon?

# 3.5.

We found that the Freddie Mac american callable bond never priced above 100.

Does this bond ever price above 100? Explain why this is possible when it was not for the Freddie Mac callable.

# 3.6.

Price the callable bond without using binomial trees.

* Use standard closed-form pricing for the vanilla bond, given the rate curve data.
* Use Black's formula to price the callable option.

Report this newly modeled price.

*Note: In Black's formula, use the flat volatility for the option term.*

# 3.7.

Which assumptions of Black's formula do we prefer to Black-Scholes for this problem?

# 3.8.

Which aspects of the calculation in `3.6` differ because we are using Black's formula, not Black-Scholes? 

*Note: Unlike `3.7`, we're asking about the differences of implementing the calculation, not the differences in the assumptions of the models.

# 3.9. 

Suppose that we buy the callable bond, but we want to hedge against it being called by the issuer. That is to say, we want to retain upside exposure to rates decreasing while otherwise keeping the nature of the position the same.

Explain specifically how you would use caps, floors, or swaptions to achieve this. 

No need to calculate the value; rather, just describe the specific product you would go long (or short) and how it would transform your exposure.

# 3.10.

How would your answer to `3.9` change if it were a callable bond with **american** exercise by the issuer?

***

# 4. Swaptions and SABR

## 4.1.

Use the market data in `rate curves` to calculate the relevant forward swap rate for an at-the-money (ATM) swaption with…

* `expiration=1`
* `tenor=2`

Report this forward swap rate.

## 4.2.

### Note

Regardless of what you calculated in the previous problem **use a forward swap rate of `.0365` for the rest of this section**, not just this specific question.

Don't worry that the forward swap rate provided here may not match your answer from the previous section. We are using it to ensure all solutions below are based on the same forward swap rate.

### Continuing…

Use the data in `volskew` which gives market quotes (in terms of Black vol) on swaptions across various strikes. 

* The strikes listed are relative to the ATM strike, which equals the forward swap rate given to you in the previous paragraph.
* All these quotes are for the same expiration and tenor considered in `4.1`.

Report the price of the swaption with specification of…

* struck at the money
* notional of `100`
* a `receiver` swaption

## 4.3. (10pts)

Use SABR to consider pricing for strikes which are not listed. Specifically,

* Input the SABR parameters given in `sabrparams` in the exam data sheet to get the implied volatility for any strike.
* To do this, choose the `SLIM` SABR model, where $\alpha$ (also called $\sigma_0$) is a function of the other SABR parameters. Thus, you won't make use of the estimated $\alpha$ parameter; rather, you'll make use of the other parameters in conjunction with the ATM market quoted vol.

Consider a `STRIKE=.03`.

Report

* the SABR-implied vol for this strike, (and the provided forward swap rate.) 
* the price for this swaption given by Black's formula.

## 4.4. 

Suppose the forward swap rate changes by `+10bps`.

(We are considering an instantaneous change, so no need to change the time-to-expiration.)

Report

* the new price, assuming vol stays constant
* the new vol and the new price, assuming vol responds according to the SABR specification of part `4.3`.

## 4.5.

Use these new prices to calculate and report the approximate delta, for both a static and dynamic vol.

Specifically, calculate the numerical change in price per change in forward rate when…

* holding vol constant
* modeling vol changing according to SABR

How much does the "augmented" delta differ from the classic delta?

## 4.6.

Without doing any new calculation, what do you think the effect of a SABR model would be on delta for a payer-swaption in response to a decrease in interest rates?

* Would the delta be positive or negative?
* Would the "augmented" effects of SABR cause the price to be larger or smaller than what the classic delta would imply? 

## 4.7.

Consider again the given forward swap rate provided in `4.2` (without the shift considered in part `4.4`.)

Use the SABR vol skew to price the swaption (same expiry and tenor) struck `-300bps` OTM. 

* Report this model price and compare it to the market quote at -300bps.
* Why might we trust the model price more than the provided market quote here?

## 4.8.

What advantage does SABR have over local vol models? 

Be specific.

## 4.9.

For the estimated SABR model in the picture, is ATM implied volatility higher or lower as the interest rate goes higher?

In a sentence, describe specifically what vol path indicates to us about this option market.

(If the figure is not rendering in this cell, find it in `../data/volpath_example.png`.

![title](../data/volpath_example.png)

## 4.10.

How do we quantify the **vol path** in SABR? Is it estimated or assumed? Be specific.

***

---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Final Exam Solution
linter-yaml-title-alias: Final Exam Solution
---

# Final Exam Solution

## FINM 37500 - 2023

### UChicago Financial Mathematics

* Mark Hendricks
* hendricks@uchicago.edu

# Instructions

## Please note the following:

Points

* The exam is 150 points.
* You have 180 minutes to complete the exam.
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

## Data

**All data files are found in the class github repo, in the `data` folder.**

This exam makes use of the following data files:

* `exam_data_2023-05-05.xlsx`

This file has sheets for…

* curve data - discount factors and forward volatilities
* BDT tree of rates (continuously compounded, as usual)

If useful, the following code loads the two sheets:

```
FILEIN = '../data/exam_data_2023-05-05.xlsx'
sheet_curves = 'rate curves'
sheet_tree = 'rate tree'

curves = pd.read_excel(FILEIN, sheet_name=sheet_curves).set_index('tenor')
ratetree = pd.read_excel(FILEIN, sheet_name=sheet_tree).set_index('state')
ratetree.columns.name = 'time'
```

## Scoring

| Problem | Points |
|---------|--------|
| 1       | 50     |
| 2       | 30     |
| 3       | 20     |
| 4       | 15     |
| 5       | 25     |
| 6       | 10     |

### Each numbered question is worth 5pts unless otherwise noted.

# 1. Short Answer

## No Data Needed

These problem does not require any data file. Rather, analyze the situation conceptually, based on the information below. 

A few questions may require simple arithmetic.

# 1.1

Consider a future on a 5-year treasury. If the exchange changes the treasury futures conversion factor to use a 3\% discount instead of 6\%, would you expect substantial changes to the…

* the futures price?
* the forward price of the underlying CTD treasury?

Explain.

# **<span style="color:red">Solution 1</span>**

## **<span style="color:red">1.1</span>**

We should expect

* the futures price to adjust almost immediately to offset the change in the conversion factor. (Conversion factor is getting bigger, so futures price will decrease accordingly, such that the converted futures price remains about the same.)
* the forward price to stay the same. Arbitrage will keep it in alignment with the bond price and carry, which is not impacted here. Or equivalently, it will be in line with the converted futures price, not the conversion factor alone.

## 1.2

Explain how SABR allows for an extra "channel" of delta hedging.

## **<span style="color:red">1.2</span>**

When the underlying changes, it has a direct impact on the Black valuation of the derivative. This is the classic "delta". 

However, changes to the underlying often correspond to changes in the implied volatility. Black's model does not model this directly, but rather assumes a constant volatility. 

SABR's stochastic volatility models changes to volatility due to changes in the underlying. Accordingly, there is an extra channel of the derivative price changing with vol ("vega") scaled by changes of vol due to shifts in the underlying.

## 1.3

Local volatility fits quoted volatilities exactly, whereas SABR does not.

What advantage does SABR have over local volatility? How does it relate to the fact above?

## **<span style="color:red">1.3</span>**

Local volatility is, in a sense, overfit to the current observed quotes, (which is why it fits them exactly.) As usual, we see that overfit models due worse out of sample.

Empirically, the structured approach of SABR (with fewer parameters) fits out of sample much better. That is, it does a better job of modeling the vol-underlying relationship mentioned above.

## 1.4

Relative to three years ago, do you think BDT or Ho-Lee is better suited to today's interest rates?

Explain.

## **<span style="color:red">1.4</span>**

BDT uses a log-normal model which ensures rates do not go negative, nor have as much flexibility for near-zero values. Ho-Lee is a normal model which allows both.

Accordingly, with rates having risen substantially in the past three years, (no longer near zero,) BDT is more appealing.

## 1.5

True or False: To value a caplet in Black's formula, we input the spot interest rate as the underlying.

Explain.

## **<span style="color:red">1.5</span>**

False. Black's formula, (unlike Black-Scholes,) uses the **forward** as the underlying, not the spot. This is one of the operational differences with Black's formula relative to Black Scholes. 

## 1.6

Should we expect a delta-hedged callable bond to underperform or overperform a delta-hedged vanilla bond? Explain.

## **<span style="color:red">1.6</span>**

We saw that the callable bond is short a call option (from the holder's perspective,) and thus has negative convexity. Accordingly, it will underperform the usual positive convexity of a vanilla bond.

## 1.7

True or False: In a frictionless market, gross basis and net basis are nonzero before maturity, but they converge to zero for the CTD bond at maturity.

## **<span style="color:red">1.7</span>**

False. For the CTD, the net basis should (in a frictionless market) be zero at every point in time. And the gross basis will be non-zero at $t<T$, but it will converge to zero at $T$.

## 1.8

True or False: Bonds with higher coupons have larger "forward drops".

## **<span style="color:red">1.8</span>**

True, if by larger we mean a more positive difference of spot minus forward.

The forward drop refers to the frequent situation where the forward price of the bond is lower than the spot price of the bond. However, we saw the opposite can be true, (a negative forward drop.)

In any case, the difference between spot and forward will roughly equal the coupon rate minus the repo rate. Thus, the larger the coupon, the larger this spread, (though it may still be negative.)

In Solution 3 we saw the calculation is a bit more tedious to account for accrued interest and day-count.

## 1.9

Which, if either, of the following statements are true?

1. The CTD bond is the bond with lowest price.
2. The CTD bond is the bond with the lowest duration.

## **<span style="color:red">1.9</span>**

Neither.

* CTD is the bond with the lowest **conversion-adjusted** price at the time of delivery.
* CTD is often the extreme duration bond, but even in those corner solutions, it could be the max or min duration based on whether rates are above or below 6\%.

## 1.10

True or False: If forward volatility is decreasing over maturity then flat volatility is also decreasing over maturity.

## **<span style="color:red">1.10</span>**

False. Flat volatility is a (type of) average of forward volatility up to that maturity. (Consider the process of extracting forward volatility.) 

Rather, if forward volatility is **less than** flat volatility, then flat volatility is decreasing.

## 1.11

True or False: From fed funds futures prices, we can extract the probability of interest rate movements for any meeting date.

## **<span style="color:red">1.11</span>**

False. We found that we can use FF futures prices to extract expected rates for any meeting date. This gave us no information about the probability distribution for the potential rates of any given date.

## 1.12

How is Black's model useful---and necessary--- in fixed income derivatives, even if we choose to use a more complex, proprietary model.

## **<span style="color:red">1.12</span>**

Black's model is the standard manner in which many vanilla derivatives are quoted. Swaptions, caps, etc quote a Black implied vol rather than a price.

Thus, even if one had no intention of modeling with Black's formula, it would still be useful for interpreting market quotes.

***

# 2. Bond Pricing

## 2.1

Use the BDT tree to price a bond.

* Time-to-maturity is 3 years
* Coupon rate is 1\%.

As usual, 

* coupons are paid semiannually.
* face value is $N=100$.

Display the tree of the bond's value, where each node is **as usual** the ex-coupon dirty price. 

* Thus, the value at node 0.5 is just after the coupon was paid.
* The value at node 0.25 includes accrued interest.

## 2.2

Display the tree of the bond's **clean price** (still ex-coupon, as usual.)

## 2.3

Consider a European **put** option on the bond.

* Expiration of the option is 1 year.
* Strike is equal to face value, $100$.
* At exercise, the option holder receives the strike plus accrued interest.

Display the tree of the option price.

## 2.4

Consider the same option, but this time **American**.

Display the tree of the option price.

## 2.5

Is there a node where the option is in-the-money, yet it is not optimal to exercise? 

Briefly explain, and if so, give an example.

## 2.6 

Consider an **amortizing bond** with 

* maturity 2.5 years.
* coupon rate of 40\%.
* Notional of \$100.

Unlike a typical bond, it pays a coupon semiannually, but it does not ever pay the face value. In that sense, one could view the coupons as amortized payments of the face value.

Value the amortizing bond and display the valuation tree.

***

# **<span style="color:red">Solution 2</span>**

## Load Packages and Data

```python
import numpy as np
import pandas as pd

from datetime import date
from datetime import datetime

import sys
sys.path.insert(0, '../cmds')
from ficcvol import *
from binomial import *
from ratecurves import *
#from treasury_cmds import compound_rate
```

```python
import datetime
import warnings
warnings.filterwarnings('ignore',category=FutureWarning)

import matplotlib.pyplot as plt
import seaborn as sns
%matplotlib inline
plt.rcParams['figure.figsize'] = (12,6)
plt.rcParams['font.size'] = 15
plt.rcParams['legend.fontsize'] = 13

import matplotlib.ticker as mtick
from matplotlib.ticker import (MultipleLocator,
                               FormatStrFormatter,
                               AutoMinorLocator)
```

```python
FILEIN = '../data/exam_data_2023-05-05.xlsx'
sheet_curves = 'rate curves'
sheet_tree = 'rate tree'

curves = pd.read_excel(FILEIN, sheet_name=sheet_curves).set_index('tenor')
ratetree = pd.read_excel(FILEIN, sheet_name=sheet_tree).set_index('state')
ratetree.columns.name = 'time'
```

```python
FREQTREE = 4
dt = 1/FREQTREE
```

```python
format_bintree(ratetree,'{:.2%}')
```

<style type="text/css">
</style>
<table id="T_93c98">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_93c98_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_93c98_level0_col1" class="col_heading level0 col1" >0.25</th>
	  <th id="T_93c98_level0_col2" class="col_heading level0 col2" >0.50</th>
	  <th id="T_93c98_level0_col3" class="col_heading level0 col3" >0.75</th>
	  <th id="T_93c98_level0_col4" class="col_heading level0 col4" >1.00</th>
	  <th id="T_93c98_level0_col5" class="col_heading level0 col5" >1.25</th>
	  <th id="T_93c98_level0_col6" class="col_heading level0 col6" >1.50</th>
	  <th id="T_93c98_level0_col7" class="col_heading level0 col7" >1.75</th>
	  <th id="T_93c98_level0_col8" class="col_heading level0 col8" >2.00</th>
	  <th id="T_93c98_level0_col9" class="col_heading level0 col9" >2.25</th>
	  <th id="T_93c98_level0_col10" class="col_heading level0 col10" >2.50</th>
	  <th id="T_93c98_level0_col11" class="col_heading level0 col11" >2.75</th>
	  <th id="T_93c98_level0_col12" class="col_heading level0 col12" >3.00</th>
	</tr>
	<tr>
	  <th class="index_name level0" >state</th>
	  <th class="blank col0" >&nbsp;</th>
	  <th class="blank col1" >&nbsp;</th>
	  <th class="blank col2" >&nbsp;</th>
	  <th class="blank col3" >&nbsp;</th>
	  <th class="blank col4" >&nbsp;</th>
	  <th class="blank col5" >&nbsp;</th>
	  <th class="blank col6" >&nbsp;</th>
	  <th class="blank col7" >&nbsp;</th>
	  <th class="blank col8" >&nbsp;</th>
	  <th class="blank col9" >&nbsp;</th>
	  <th class="blank col10" >&nbsp;</th>
	  <th class="blank col11" >&nbsp;</th>
	  <th class="blank col12" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_93c98_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_93c98_row0_col0" class="data row0 col0" >5.04%</td>
	  <td id="T_93c98_row0_col1" class="data row0 col1" >5.69%</td>
	  <td id="T_93c98_row0_col2" class="data row0 col2" >6.11%</td>
	  <td id="T_93c98_row0_col3" class="data row0 col3" >6.49%</td>
	  <td id="T_93c98_row0_col4" class="data row0 col4" >6.50%</td>
	  <td id="T_93c98_row0_col5" class="data row0 col5" >7.13%</td>
	  <td id="T_93c98_row0_col6" class="data row0 col6" >8.56%</td>
	  <td id="T_93c98_row0_col7" class="data row0 col7" >10.37%</td>
	  <td id="T_93c98_row0_col8" class="data row0 col8" >12.12%</td>
	  <td id="T_93c98_row0_col9" class="data row0 col9" >16.07%</td>
	  <td id="T_93c98_row0_col10" class="data row0 col10" >21.02%</td>
	  <td id="T_93c98_row0_col11" class="data row0 col11" >27.78%</td>
	  <td id="T_93c98_row0_col12" class="data row0 col12" >35.66%</td>
	</tr>
	<tr>
	  <th id="T_93c98_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_93c98_row1_col0" class="data row1 col0" ></td>
	  <td id="T_93c98_row1_col1" class="data row1 col1" >4.15%</td>
	  <td id="T_93c98_row1_col2" class="data row1 col2" >4.45%</td>
	  <td id="T_93c98_row1_col3" class="data row1 col3" >4.73%</td>
	  <td id="T_93c98_row1_col4" class="data row1 col4" >4.74%</td>
	  <td id="T_93c98_row1_col5" class="data row1 col5" >5.20%</td>
	  <td id="T_93c98_row1_col6" class="data row1 col6" >6.24%</td>
	  <td id="T_93c98_row1_col7" class="data row1 col7" >7.56%</td>
	  <td id="T_93c98_row1_col8" class="data row1 col8" >8.84%</td>
	  <td id="T_93c98_row1_col9" class="data row1 col9" >11.71%</td>
	  <td id="T_93c98_row1_col10" class="data row1 col10" >15.33%</td>
	  <td id="T_93c98_row1_col11" class="data row1 col11" >20.25%</td>
	  <td id="T_93c98_row1_col12" class="data row1 col12" >25.99%</td>
	</tr>
	<tr>
	  <th id="T_93c98_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_93c98_row2_col0" class="data row2 col0" ></td>
	  <td id="T_93c98_row2_col1" class="data row2 col1" ></td>
	  <td id="T_93c98_row2_col2" class="data row2 col2" >3.07%</td>
	  <td id="T_93c98_row2_col3" class="data row2 col3" >3.26%</td>
	  <td id="T_93c98_row2_col4" class="data row2 col4" >3.26%</td>
	  <td id="T_93c98_row2_col5" class="data row2 col5" >3.58%</td>
	  <td id="T_93c98_row2_col6" class="data row2 col6" >4.30%</td>
	  <td id="T_93c98_row2_col7" class="data row2 col7" >5.21%</td>
	  <td id="T_93c98_row2_col8" class="data row2 col8" >6.09%</td>
	  <td id="T_93c98_row2_col9" class="data row2 col9" >8.07%</td>
	  <td id="T_93c98_row2_col10" class="data row2 col10" >10.56%</td>
	  <td id="T_93c98_row2_col11" class="data row2 col11" >13.96%</td>
	  <td id="T_93c98_row2_col12" class="data row2 col12" >17.92%</td>
	</tr>
	<tr>
	  <th id="T_93c98_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_93c98_row3_col0" class="data row3 col0" ></td>
	  <td id="T_93c98_row3_col1" class="data row3 col1" ></td>
	  <td id="T_93c98_row3_col2" class="data row3 col2" ></td>
	  <td id="T_93c98_row3_col3" class="data row3 col3" >2.12%</td>
	  <td id="T_93c98_row3_col4" class="data row3 col4" >2.13%</td>
	  <td id="T_93c98_row3_col5" class="data row3 col5" >2.33%</td>
	  <td id="T_93c98_row3_col6" class="data row3 col6" >2.80%</td>
	  <td id="T_93c98_row3_col7" class="data row3 col7" >3.39%</td>
	  <td id="T_93c98_row3_col8" class="data row3 col8" >3.97%</td>
	  <td id="T_93c98_row3_col9" class="data row3 col9" >5.26%</td>
	  <td id="T_93c98_row3_col10" class="data row3 col10" >6.88%</td>
	  <td id="T_93c98_row3_col11" class="data row3 col11" >9.10%</td>
	  <td id="T_93c98_row3_col12" class="data row3 col12" >11.68%</td>
	</tr>
	<tr>
	  <th id="T_93c98_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_93c98_row4_col0" class="data row4 col0" ></td>
	  <td id="T_93c98_row4_col1" class="data row4 col1" ></td>
	  <td id="T_93c98_row4_col2" class="data row4 col2" ></td>
	  <td id="T_93c98_row4_col3" class="data row4 col3" ></td>
	  <td id="T_93c98_row4_col4" class="data row4 col4" >1.09%</td>
	  <td id="T_93c98_row4_col5" class="data row4 col5" >1.20%</td>
	  <td id="T_93c98_row4_col6" class="data row4 col6" >1.44%</td>
	  <td id="T_93c98_row4_col7" class="data row4 col7" >1.74%</td>
	  <td id="T_93c98_row4_col8" class="data row4 col8" >2.03%</td>
	  <td id="T_93c98_row4_col9" class="data row4 col9" >2.70%</td>
	  <td id="T_93c98_row4_col10" class="data row4 col10" >3.53%</td>
	  <td id="T_93c98_row4_col11" class="data row4 col11" >4.66%</td>
	  <td id="T_93c98_row4_col12" class="data row4 col12" >5.99%</td>
	</tr>
	<tr>
	  <th id="T_93c98_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_93c98_row5_col0" class="data row5 col0" ></td>
	  <td id="T_93c98_row5_col1" class="data row5 col1" ></td>
	  <td id="T_93c98_row5_col2" class="data row5 col2" ></td>
	  <td id="T_93c98_row5_col3" class="data row5 col3" ></td>
	  <td id="T_93c98_row5_col4" class="data row5 col4" ></td>
	  <td id="T_93c98_row5_col5" class="data row5 col5" >0.60%</td>
	  <td id="T_93c98_row5_col6" class="data row5 col6" >0.71%</td>
	  <td id="T_93c98_row5_col7" class="data row5 col7" >0.87%</td>
	  <td id="T_93c98_row5_col8" class="data row5 col8" >1.01%</td>
	  <td id="T_93c98_row5_col9" class="data row5 col9" >1.34%</td>
	  <td id="T_93c98_row5_col10" class="data row5 col10" >1.76%</td>
	  <td id="T_93c98_row5_col11" class="data row5 col11" >2.32%</td>
	  <td id="T_93c98_row5_col12" class="data row5 col12" >2.98%</td>
	</tr>
	<tr>
	  <th id="T_93c98_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_93c98_row6_col0" class="data row6 col0" ></td>
	  <td id="T_93c98_row6_col1" class="data row6 col1" ></td>
	  <td id="T_93c98_row6_col2" class="data row6 col2" ></td>
	  <td id="T_93c98_row6_col3" class="data row6 col3" ></td>
	  <td id="T_93c98_row6_col4" class="data row6 col4" ></td>
	  <td id="T_93c98_row6_col5" class="data row6 col5" ></td>
	  <td id="T_93c98_row6_col6" class="data row6 col6" >0.36%</td>
	  <td id="T_93c98_row6_col7" class="data row6 col7" >0.43%</td>
	  <td id="T_93c98_row6_col8" class="data row6 col8" >0.51%</td>
	  <td id="T_93c98_row6_col9" class="data row6 col9" >0.67%</td>
	  <td id="T_93c98_row6_col10" class="data row6 col10" >0.88%</td>
	  <td id="T_93c98_row6_col11" class="data row6 col11" >1.16%</td>
	  <td id="T_93c98_row6_col12" class="data row6 col12" >1.50%</td>
	</tr>
	<tr>
	  <th id="T_93c98_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_93c98_row7_col0" class="data row7 col0" ></td>
	  <td id="T_93c98_row7_col1" class="data row7 col1" ></td>
	  <td id="T_93c98_row7_col2" class="data row7 col2" ></td>
	  <td id="T_93c98_row7_col3" class="data row7 col3" ></td>
	  <td id="T_93c98_row7_col4" class="data row7 col4" ></td>
	  <td id="T_93c98_row7_col5" class="data row7 col5" ></td>
	  <td id="T_93c98_row7_col6" class="data row7 col6" ></td>
	  <td id="T_93c98_row7_col7" class="data row7 col7" >0.22%</td>
	  <td id="T_93c98_row7_col8" class="data row7 col8" >0.26%</td>
	  <td id="T_93c98_row7_col9" class="data row7 col9" >0.35%</td>
	  <td id="T_93c98_row7_col10" class="data row7 col10" >0.46%</td>
	  <td id="T_93c98_row7_col11" class="data row7 col11" >0.60%</td>
	  <td id="T_93c98_row7_col12" class="data row7 col12" >0.77%</td>
	</tr>
	<tr>
	  <th id="T_93c98_level0_row8" class="row_heading level0 row8" >8</th>
	  <td id="T_93c98_row8_col0" class="data row8 col0" ></td>
	  <td id="T_93c98_row8_col1" class="data row8 col1" ></td>
	  <td id="T_93c98_row8_col2" class="data row8 col2" ></td>
	  <td id="T_93c98_row8_col3" class="data row8 col3" ></td>
	  <td id="T_93c98_row8_col4" class="data row8 col4" ></td>
	  <td id="T_93c98_row8_col5" class="data row8 col5" ></td>
	  <td id="T_93c98_row8_col6" class="data row8 col6" ></td>
	  <td id="T_93c98_row8_col7" class="data row8 col7" ></td>
	  <td id="T_93c98_row8_col8" class="data row8 col8" >0.14%</td>
	  <td id="T_93c98_row8_col9" class="data row8 col9" >0.19%</td>
	  <td id="T_93c98_row8_col10" class="data row8 col10" >0.25%</td>
	  <td id="T_93c98_row8_col11" class="data row8 col11" >0.33%</td>
	  <td id="T_93c98_row8_col12" class="data row8 col12" >0.42%</td>
	</tr>
	<tr>
	  <th id="T_93c98_level0_row9" class="row_heading level0 row9" >9</th>
	  <td id="T_93c98_row9_col0" class="data row9 col0" ></td>
	  <td id="T_93c98_row9_col1" class="data row9 col1" ></td>
	  <td id="T_93c98_row9_col2" class="data row9 col2" ></td>
	  <td id="T_93c98_row9_col3" class="data row9 col3" ></td>
	  <td id="T_93c98_row9_col4" class="data row9 col4" ></td>
	  <td id="T_93c98_row9_col5" class="data row9 col5" ></td>
	  <td id="T_93c98_row9_col6" class="data row9 col6" ></td>
	  <td id="T_93c98_row9_col7" class="data row9 col7" ></td>
	  <td id="T_93c98_row9_col8" class="data row9 col8" ></td>
	  <td id="T_93c98_row9_col9" class="data row9 col9" >0.11%</td>
	  <td id="T_93c98_row9_col10" class="data row9 col10" >0.14%</td>
	  <td id="T_93c98_row9_col11" class="data row9 col11" >0.19%</td>
	  <td id="T_93c98_row9_col12" class="data row9 col12" >0.24%</td>
	</tr>
	<tr>
	  <th id="T_93c98_level0_row10" class="row_heading level0 row10" >10</th>
	  <td id="T_93c98_row10_col0" class="data row10 col0" ></td>
	  <td id="T_93c98_row10_col1" class="data row10 col1" ></td>
	  <td id="T_93c98_row10_col2" class="data row10 col2" ></td>
	  <td id="T_93c98_row10_col3" class="data row10 col3" ></td>
	  <td id="T_93c98_row10_col4" class="data row10 col4" ></td>
	  <td id="T_93c98_row10_col5" class="data row10 col5" ></td>
	  <td id="T_93c98_row10_col6" class="data row10 col6" ></td>
	  <td id="T_93c98_row10_col7" class="data row10 col7" ></td>
	  <td id="T_93c98_row10_col8" class="data row10 col8" ></td>
	  <td id="T_93c98_row10_col9" class="data row10 col9" ></td>
	  <td id="T_93c98_row10_col10" class="data row10 col10" >0.08%</td>
	  <td id="T_93c98_row10_col11" class="data row10 col11" >0.11%</td>
	  <td id="T_93c98_row10_col12" class="data row10 col12" >0.14%</td>
	</tr>
	<tr>
	  <th id="T_93c98_level0_row11" class="row_heading level0 row11" >11</th>
	  <td id="T_93c98_row11_col0" class="data row11 col0" ></td>
	  <td id="T_93c98_row11_col1" class="data row11 col1" ></td>
	  <td id="T_93c98_row11_col2" class="data row11 col2" ></td>
	  <td id="T_93c98_row11_col3" class="data row11 col3" ></td>
	  <td id="T_93c98_row11_col4" class="data row11 col4" ></td>
	  <td id="T_93c98_row11_col5" class="data row11 col5" ></td>
	  <td id="T_93c98_row11_col6" class="data row11 col6" ></td>
	  <td id="T_93c98_row11_col7" class="data row11 col7" ></td>
	  <td id="T_93c98_row11_col8" class="data row11 col8" ></td>
	  <td id="T_93c98_row11_col9" class="data row11 col9" ></td>
	  <td id="T_93c98_row11_col10" class="data row11 col10" ></td>
	  <td id="T_93c98_row11_col11" class="data row11 col11" >0.07%</td>
	  <td id="T_93c98_row11_col12" class="data row11 col12" >0.09%</td>
	</tr>
	<tr>
	  <th id="T_93c98_level0_row12" class="row_heading level0 row12" >12</th>
	  <td id="T_93c98_row12_col0" class="data row12 col0" ></td>
	  <td id="T_93c98_row12_col1" class="data row12 col1" ></td>
	  <td id="T_93c98_row12_col2" class="data row12 col2" ></td>
	  <td id="T_93c98_row12_col3" class="data row12 col3" ></td>
	  <td id="T_93c98_row12_col4" class="data row12 col4" ></td>
	  <td id="T_93c98_row12_col5" class="data row12 col5" ></td>
	  <td id="T_93c98_row12_col6" class="data row12 col6" ></td>
	  <td id="T_93c98_row12_col7" class="data row12 col7" ></td>
	  <td id="T_93c98_row12_col8" class="data row12 col8" ></td>
	  <td id="T_93c98_row12_col9" class="data row12 col9" ></td>
	  <td id="T_93c98_row12_col10" class="data row12 col10" ></td>
	  <td id="T_93c98_row12_col11" class="data row12 col11" ></td>
	  <td id="T_93c98_row12_col12" class="data row12 col12" >0.05%</td>
	</tr>
  </tbody>
</table>

## **<span style="color:red">2.1</span>**

```python
N = 100
T=3
cpn = .01
cpn_freq = 2

wrapper_bond = lambda r: payoff_bond(r, dt, facevalue=N * (1+cpn/cpn_freq))
```

```python
tsteps = int(T/dt)
ratetreeT = ratetree.iloc[:tsteps,:tsteps]

cftree = construct_bond_cftree(T, FREQTREE, cpn)

bondtree = bintree_pricing(payoff=wrapper_bond, ratetree=ratetreeT, cftree=cftree)
format_bintree(bondtree)
```

<style type="text/css">
</style>
<table id="T_9bf2f">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_9bf2f_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_9bf2f_level0_col1" class="col_heading level0 col1" >0.25</th>
	  <th id="T_9bf2f_level0_col2" class="col_heading level0 col2" >0.50</th>
	  <th id="T_9bf2f_level0_col3" class="col_heading level0 col3" >0.75</th>
	  <th id="T_9bf2f_level0_col4" class="col_heading level0 col4" >1.00</th>
	  <th id="T_9bf2f_level0_col5" class="col_heading level0 col5" >1.25</th>
	  <th id="T_9bf2f_level0_col6" class="col_heading level0 col6" >1.50</th>
	  <th id="T_9bf2f_level0_col7" class="col_heading level0 col7" >1.75</th>
	  <th id="T_9bf2f_level0_col8" class="col_heading level0 col8" >2.00</th>
	  <th id="T_9bf2f_level0_col9" class="col_heading level0 col9" >2.25</th>
	  <th id="T_9bf2f_level0_col10" class="col_heading level0 col10" >2.50</th>
	  <th id="T_9bf2f_level0_col11" class="col_heading level0 col11" >2.75</th>
	</tr>
	<tr>
	  <th class="index_name level0" >state</th>
	  <th class="blank col0" >&nbsp;</th>
	  <th class="blank col1" >&nbsp;</th>
	  <th class="blank col2" >&nbsp;</th>
	  <th class="blank col3" >&nbsp;</th>
	  <th class="blank col4" >&nbsp;</th>
	  <th class="blank col5" >&nbsp;</th>
	  <th class="blank col6" >&nbsp;</th>
	  <th class="blank col7" >&nbsp;</th>
	  <th class="blank col8" >&nbsp;</th>
	  <th class="blank col9" >&nbsp;</th>
	  <th class="blank col10" >&nbsp;</th>
	  <th class="blank col11" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_9bf2f_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_9bf2f_row0_col0" class="data row0 col0" >92.87</td>
	  <td id="T_9bf2f_row0_col1" class="data row0 col1" >92.18</td>
	  <td id="T_9bf2f_row0_col2" class="data row0 col2" >91.04</td>
	  <td id="T_9bf2f_row0_col3" class="data row0 col3" >90.40</td>
	  <td id="T_9bf2f_row0_col4" class="data row0 col4" >89.29</td>
	  <td id="T_9bf2f_row0_col5" class="data row0 col5" >88.62</td>
	  <td id="T_9bf2f_row0_col6" class="data row0 col6" >87.57</td>
	  <td id="T_9bf2f_row0_col7" class="data row0 col7" >87.38</td>
	  <td id="T_9bf2f_row0_col8" class="data row0 col8" >87.21</td>
	  <td id="T_9bf2f_row0_col9" class="data row0 col9" >88.13</td>
	  <td id="T_9bf2f_row0_col10" class="data row0 col10" >89.80</td>
	  <td id="T_9bf2f_row0_col11" class="data row0 col11" >93.76</td>
	</tr>
	<tr>
	  <th id="T_9bf2f_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_9bf2f_row1_col0" class="data row1 col0" ></td>
	  <td id="T_9bf2f_row1_col1" class="data row1 col1" >95.92</td>
	  <td id="T_9bf2f_row1_col2" class="data row1 col2" >94.96</td>
	  <td id="T_9bf2f_row1_col3" class="data row1 col3" >94.47</td>
	  <td id="T_9bf2f_row1_col4" class="data row1 col4" >93.47</td>
	  <td id="T_9bf2f_row1_col5" class="data row1 col5" >92.89</td>
	  <td id="T_9bf2f_row1_col6" class="data row1 col6" >91.85</td>
	  <td id="T_9bf2f_row1_col7" class="data row1 col7" >91.55</td>
	  <td id="T_9bf2f_row1_col8" class="data row1 col8" >91.13</td>
	  <td id="T_9bf2f_row1_col9" class="data row1 col9" >91.66</td>
	  <td id="T_9bf2f_row1_col10" class="data row1 col10" >92.68</td>
	  <td id="T_9bf2f_row1_col11" class="data row1 col11" >95.54</td>
	</tr>
	<tr>
	  <th id="T_9bf2f_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_9bf2f_row2_col0" class="data row2 col0" ></td>
	  <td id="T_9bf2f_row2_col1" class="data row2 col1" ></td>
	  <td id="T_9bf2f_row2_col2" class="data row2 col2" >97.88</td>
	  <td id="T_9bf2f_row2_col3" class="data row2 col3" >97.57</td>
	  <td id="T_9bf2f_row2_col4" class="data row2 col4" >96.72</td>
	  <td id="T_9bf2f_row2_col5" class="data row2 col5" >96.29</td>
	  <td id="T_9bf2f_row2_col6" class="data row2 col6" >95.35</td>
	  <td id="T_9bf2f_row2_col7" class="data row2 col7" >95.04</td>
	  <td id="T_9bf2f_row2_col8" class="data row2 col8" >94.46</td>
	  <td id="T_9bf2f_row2_col9" class="data row2 col9" >94.67</td>
	  <td id="T_9bf2f_row2_col10" class="data row2 col10" >95.10</td>
	  <td id="T_9bf2f_row2_col11" class="data row2 col11" >97.05</td>
	</tr>
	<tr>
	  <th id="T_9bf2f_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_9bf2f_row3_col0" class="data row3 col0" ></td>
	  <td id="T_9bf2f_row3_col1" class="data row3 col1" ></td>
	  <td id="T_9bf2f_row3_col2" class="data row3 col2" ></td>
	  <td id="T_9bf2f_row3_col3" class="data row3 col3" >99.71</td>
	  <td id="T_9bf2f_row3_col4" class="data row3 col4" >99.01</td>
	  <td id="T_9bf2f_row3_col5" class="data row3 col5" >98.74</td>
	  <td id="T_9bf2f_row3_col6" class="data row3 col6" >97.96</td>
	  <td id="T_9bf2f_row3_col7" class="data row3 col7" >97.73</td>
	  <td id="T_9bf2f_row3_col8" class="data row3 col8" >97.11</td>
	  <td id="T_9bf2f_row3_col9" class="data row3 col9" >97.14</td>
	  <td id="T_9bf2f_row3_col10" class="data row3 col10" >97.10</td>
	  <td id="T_9bf2f_row3_col11" class="data row3 col11" >98.24</td>
	</tr>
	<tr>
	  <th id="T_9bf2f_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_9bf2f_row4_col0" class="data row4 col0" ></td>
	  <td id="T_9bf2f_row4_col1" class="data row4 col1" ></td>
	  <td id="T_9bf2f_row4_col2" class="data row4 col2" ></td>
	  <td id="T_9bf2f_row4_col3" class="data row4 col3" ></td>
	  <td id="T_9bf2f_row4_col4" class="data row4 col4" >100.47</td>
	  <td id="T_9bf2f_row4_col5" class="data row4 col5" >100.33</td>
	  <td id="T_9bf2f_row4_col6" class="data row4 col6" >99.69</td>
	  <td id="T_9bf2f_row4_col7" class="data row4 col7" >99.57</td>
	  <td id="T_9bf2f_row4_col8" class="data row4 col8" >99.01</td>
	  <td id="T_9bf2f_row4_col9" class="data row4 col9" >99.02</td>
	  <td id="T_9bf2f_row4_col10" class="data row4 col10" >98.75</td>
	  <td id="T_9bf2f_row4_col11" class="data row4 col11" >99.33</td>
	</tr>
	<tr>
	  <th id="T_9bf2f_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_9bf2f_row5_col0" class="data row5 col0" ></td>
	  <td id="T_9bf2f_row5_col1" class="data row5 col1" ></td>
	  <td id="T_9bf2f_row5_col2" class="data row5 col2" ></td>
	  <td id="T_9bf2f_row5_col3" class="data row5 col3" ></td>
	  <td id="T_9bf2f_row5_col4" class="data row5 col4" ></td>
	  <td id="T_9bf2f_row5_col5" class="data row5 col5" >101.15</td>
	  <td id="T_9bf2f_row5_col6" class="data row5 col6" >100.58</td>
	  <td id="T_9bf2f_row5_col7" class="data row5 col7" >100.52</td>
	  <td id="T_9bf2f_row5_col8" class="data row5 col8" >100.00</td>
	  <td id="T_9bf2f_row5_col9" class="data row5 col9" >100.01</td>
	  <td id="T_9bf2f_row5_col10" class="data row5 col10" >99.63</td>
	  <td id="T_9bf2f_row5_col11" class="data row5 col11" >99.92</td>
	</tr>
	<tr>
	  <th id="T_9bf2f_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_9bf2f_row6_col0" class="data row6 col0" ></td>
	  <td id="T_9bf2f_row6_col1" class="data row6 col1" ></td>
	  <td id="T_9bf2f_row6_col2" class="data row6 col2" ></td>
	  <td id="T_9bf2f_row6_col3" class="data row6 col3" ></td>
	  <td id="T_9bf2f_row6_col4" class="data row6 col4" ></td>
	  <td id="T_9bf2f_row6_col5" class="data row6 col5" ></td>
	  <td id="T_9bf2f_row6_col6" class="data row6 col6" >101.02</td>
	  <td id="T_9bf2f_row6_col7" class="data row6 col7" >101.00</td>
	  <td id="T_9bf2f_row6_col8" class="data row6 col8" >100.49</td>
	  <td id="T_9bf2f_row6_col9" class="data row6 col9" >100.49</td>
	  <td id="T_9bf2f_row6_col10" class="data row6 col10" >100.06</td>
	  <td id="T_9bf2f_row6_col11" class="data row6 col11" >100.21</td>
	</tr>
	<tr>
	  <th id="T_9bf2f_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_9bf2f_row7_col0" class="data row7 col0" ></td>
	  <td id="T_9bf2f_row7_col1" class="data row7 col1" ></td>
	  <td id="T_9bf2f_row7_col2" class="data row7 col2" ></td>
	  <td id="T_9bf2f_row7_col3" class="data row7 col3" ></td>
	  <td id="T_9bf2f_row7_col4" class="data row7 col4" ></td>
	  <td id="T_9bf2f_row7_col5" class="data row7 col5" ></td>
	  <td id="T_9bf2f_row7_col6" class="data row7 col6" ></td>
	  <td id="T_9bf2f_row7_col7" class="data row7 col7" >101.23</td>
	  <td id="T_9bf2f_row7_col8" class="data row7 col8" >100.73</td>
	  <td id="T_9bf2f_row7_col9" class="data row7 col9" >100.73</td>
	  <td id="T_9bf2f_row7_col10" class="data row7 col10" >100.27</td>
	  <td id="T_9bf2f_row7_col11" class="data row7 col11" >100.35</td>
	</tr>
	<tr>
	  <th id="T_9bf2f_level0_row8" class="row_heading level0 row8" >8</th>
	  <td id="T_9bf2f_row8_col0" class="data row8 col0" ></td>
	  <td id="T_9bf2f_row8_col1" class="data row8 col1" ></td>
	  <td id="T_9bf2f_row8_col2" class="data row8 col2" ></td>
	  <td id="T_9bf2f_row8_col3" class="data row8 col3" ></td>
	  <td id="T_9bf2f_row8_col4" class="data row8 col4" ></td>
	  <td id="T_9bf2f_row8_col5" class="data row8 col5" ></td>
	  <td id="T_9bf2f_row8_col6" class="data row8 col6" ></td>
	  <td id="T_9bf2f_row8_col7" class="data row8 col7" ></td>
	  <td id="T_9bf2f_row8_col8" class="data row8 col8" >100.85</td>
	  <td id="T_9bf2f_row8_col9" class="data row8 col9" >100.85</td>
	  <td id="T_9bf2f_row8_col10" class="data row8 col10" >100.37</td>
	  <td id="T_9bf2f_row8_col11" class="data row8 col11" >100.42</td>
	</tr>
	<tr>
	  <th id="T_9bf2f_level0_row9" class="row_heading level0 row9" >9</th>
	  <td id="T_9bf2f_row9_col0" class="data row9 col0" ></td>
	  <td id="T_9bf2f_row9_col1" class="data row9 col1" ></td>
	  <td id="T_9bf2f_row9_col2" class="data row9 col2" ></td>
	  <td id="T_9bf2f_row9_col3" class="data row9 col3" ></td>
	  <td id="T_9bf2f_row9_col4" class="data row9 col4" ></td>
	  <td id="T_9bf2f_row9_col5" class="data row9 col5" ></td>
	  <td id="T_9bf2f_row9_col6" class="data row9 col6" ></td>
	  <td id="T_9bf2f_row9_col7" class="data row9 col7" ></td>
	  <td id="T_9bf2f_row9_col8" class="data row9 col8" ></td>
	  <td id="T_9bf2f_row9_col9" class="data row9 col9" >100.91</td>
	  <td id="T_9bf2f_row9_col10" class="data row9 col10" >100.43</td>
	  <td id="T_9bf2f_row9_col11" class="data row9 col11" >100.45</td>
	</tr>
	<tr>
	  <th id="T_9bf2f_level0_row10" class="row_heading level0 row10" >10</th>
	  <td id="T_9bf2f_row10_col0" class="data row10 col0" ></td>
	  <td id="T_9bf2f_row10_col1" class="data row10 col1" ></td>
	  <td id="T_9bf2f_row10_col2" class="data row10 col2" ></td>
	  <td id="T_9bf2f_row10_col3" class="data row10 col3" ></td>
	  <td id="T_9bf2f_row10_col4" class="data row10 col4" ></td>
	  <td id="T_9bf2f_row10_col5" class="data row10 col5" ></td>
	  <td id="T_9bf2f_row10_col6" class="data row10 col6" ></td>
	  <td id="T_9bf2f_row10_col7" class="data row10 col7" ></td>
	  <td id="T_9bf2f_row10_col8" class="data row10 col8" ></td>
	  <td id="T_9bf2f_row10_col9" class="data row10 col9" ></td>
	  <td id="T_9bf2f_row10_col10" class="data row10 col10" >100.46</td>
	  <td id="T_9bf2f_row10_col11" class="data row10 col11" >100.47</td>
	</tr>
	<tr>
	  <th id="T_9bf2f_level0_row11" class="row_heading level0 row11" >11</th>
	  <td id="T_9bf2f_row11_col0" class="data row11 col0" ></td>
	  <td id="T_9bf2f_row11_col1" class="data row11 col1" ></td>
	  <td id="T_9bf2f_row11_col2" class="data row11 col2" ></td>
	  <td id="T_9bf2f_row11_col3" class="data row11 col3" ></td>
	  <td id="T_9bf2f_row11_col4" class="data row11 col4" ></td>
	  <td id="T_9bf2f_row11_col5" class="data row11 col5" ></td>
	  <td id="T_9bf2f_row11_col6" class="data row11 col6" ></td>
	  <td id="T_9bf2f_row11_col7" class="data row11 col7" ></td>
	  <td id="T_9bf2f_row11_col8" class="data row11 col8" ></td>
	  <td id="T_9bf2f_row11_col9" class="data row11 col9" ></td>
	  <td id="T_9bf2f_row11_col10" class="data row11 col10" ></td>
	  <td id="T_9bf2f_row11_col11" class="data row11 col11" >100.48</td>
	</tr>
  </tbody>
</table>

## **<span style="color:red">2.2</span>**

```python
accint = construct_accint(bondtree.columns.values, FREQTREE, cpn)
cleantree = np.maximum(bondtree.subtract(accint,axis=1),0)
format_bintree(cleantree)
```

<style type="text/css">
</style>
<table id="T_1ef3e">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_1ef3e_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_1ef3e_level0_col1" class="col_heading level0 col1" >0.25</th>
	  <th id="T_1ef3e_level0_col2" class="col_heading level0 col2" >0.50</th>
	  <th id="T_1ef3e_level0_col3" class="col_heading level0 col3" >0.75</th>
	  <th id="T_1ef3e_level0_col4" class="col_heading level0 col4" >1.00</th>
	  <th id="T_1ef3e_level0_col5" class="col_heading level0 col5" >1.25</th>
	  <th id="T_1ef3e_level0_col6" class="col_heading level0 col6" >1.50</th>
	  <th id="T_1ef3e_level0_col7" class="col_heading level0 col7" >1.75</th>
	  <th id="T_1ef3e_level0_col8" class="col_heading level0 col8" >2.00</th>
	  <th id="T_1ef3e_level0_col9" class="col_heading level0 col9" >2.25</th>
	  <th id="T_1ef3e_level0_col10" class="col_heading level0 col10" >2.50</th>
	  <th id="T_1ef3e_level0_col11" class="col_heading level0 col11" >2.75</th>
	</tr>
	<tr>
	  <th class="index_name level0" >state</th>
	  <th class="blank col0" >&nbsp;</th>
	  <th class="blank col1" >&nbsp;</th>
	  <th class="blank col2" >&nbsp;</th>
	  <th class="blank col3" >&nbsp;</th>
	  <th class="blank col4" >&nbsp;</th>
	  <th class="blank col5" >&nbsp;</th>
	  <th class="blank col6" >&nbsp;</th>
	  <th class="blank col7" >&nbsp;</th>
	  <th class="blank col8" >&nbsp;</th>
	  <th class="blank col9" >&nbsp;</th>
	  <th class="blank col10" >&nbsp;</th>
	  <th class="blank col11" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_1ef3e_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_1ef3e_row0_col0" class="data row0 col0" >92.87</td>
	  <td id="T_1ef3e_row0_col1" class="data row0 col1" >91.93</td>
	  <td id="T_1ef3e_row0_col2" class="data row0 col2" >91.04</td>
	  <td id="T_1ef3e_row0_col3" class="data row0 col3" >90.15</td>
	  <td id="T_1ef3e_row0_col4" class="data row0 col4" >89.29</td>
	  <td id="T_1ef3e_row0_col5" class="data row0 col5" >88.37</td>
	  <td id="T_1ef3e_row0_col6" class="data row0 col6" >87.57</td>
	  <td id="T_1ef3e_row0_col7" class="data row0 col7" >87.13</td>
	  <td id="T_1ef3e_row0_col8" class="data row0 col8" >87.21</td>
	  <td id="T_1ef3e_row0_col9" class="data row0 col9" >87.88</td>
	  <td id="T_1ef3e_row0_col10" class="data row0 col10" >89.80</td>
	  <td id="T_1ef3e_row0_col11" class="data row0 col11" >93.51</td>
	</tr>
	<tr>
	  <th id="T_1ef3e_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_1ef3e_row1_col0" class="data row1 col0" ></td>
	  <td id="T_1ef3e_row1_col1" class="data row1 col1" >95.67</td>
	  <td id="T_1ef3e_row1_col2" class="data row1 col2" >94.96</td>
	  <td id="T_1ef3e_row1_col3" class="data row1 col3" >94.22</td>
	  <td id="T_1ef3e_row1_col4" class="data row1 col4" >93.47</td>
	  <td id="T_1ef3e_row1_col5" class="data row1 col5" >92.64</td>
	  <td id="T_1ef3e_row1_col6" class="data row1 col6" >91.85</td>
	  <td id="T_1ef3e_row1_col7" class="data row1 col7" >91.30</td>
	  <td id="T_1ef3e_row1_col8" class="data row1 col8" >91.13</td>
	  <td id="T_1ef3e_row1_col9" class="data row1 col9" >91.41</td>
	  <td id="T_1ef3e_row1_col10" class="data row1 col10" >92.68</td>
	  <td id="T_1ef3e_row1_col11" class="data row1 col11" >95.29</td>
	</tr>
	<tr>
	  <th id="T_1ef3e_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_1ef3e_row2_col0" class="data row2 col0" ></td>
	  <td id="T_1ef3e_row2_col1" class="data row2 col1" ></td>
	  <td id="T_1ef3e_row2_col2" class="data row2 col2" >97.88</td>
	  <td id="T_1ef3e_row2_col3" class="data row2 col3" >97.32</td>
	  <td id="T_1ef3e_row2_col4" class="data row2 col4" >96.72</td>
	  <td id="T_1ef3e_row2_col5" class="data row2 col5" >96.04</td>
	  <td id="T_1ef3e_row2_col6" class="data row2 col6" >95.35</td>
	  <td id="T_1ef3e_row2_col7" class="data row2 col7" >94.79</td>
	  <td id="T_1ef3e_row2_col8" class="data row2 col8" >94.46</td>
	  <td id="T_1ef3e_row2_col9" class="data row2 col9" >94.42</td>
	  <td id="T_1ef3e_row2_col10" class="data row2 col10" >95.10</td>
	  <td id="T_1ef3e_row2_col11" class="data row2 col11" >96.80</td>
	</tr>
	<tr>
	  <th id="T_1ef3e_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_1ef3e_row3_col0" class="data row3 col0" ></td>
	  <td id="T_1ef3e_row3_col1" class="data row3 col1" ></td>
	  <td id="T_1ef3e_row3_col2" class="data row3 col2" ></td>
	  <td id="T_1ef3e_row3_col3" class="data row3 col3" >99.46</td>
	  <td id="T_1ef3e_row3_col4" class="data row3 col4" >99.01</td>
	  <td id="T_1ef3e_row3_col5" class="data row3 col5" >98.49</td>
	  <td id="T_1ef3e_row3_col6" class="data row3 col6" >97.96</td>
	  <td id="T_1ef3e_row3_col7" class="data row3 col7" >97.48</td>
	  <td id="T_1ef3e_row3_col8" class="data row3 col8" >97.11</td>
	  <td id="T_1ef3e_row3_col9" class="data row3 col9" >96.89</td>
	  <td id="T_1ef3e_row3_col10" class="data row3 col10" >97.10</td>
	  <td id="T_1ef3e_row3_col11" class="data row3 col11" >97.99</td>
	</tr>
	<tr>
	  <th id="T_1ef3e_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_1ef3e_row4_col0" class="data row4 col0" ></td>
	  <td id="T_1ef3e_row4_col1" class="data row4 col1" ></td>
	  <td id="T_1ef3e_row4_col2" class="data row4 col2" ></td>
	  <td id="T_1ef3e_row4_col3" class="data row4 col3" ></td>
	  <td id="T_1ef3e_row4_col4" class="data row4 col4" >100.47</td>
	  <td id="T_1ef3e_row4_col5" class="data row4 col5" >100.08</td>
	  <td id="T_1ef3e_row4_col6" class="data row4 col6" >99.69</td>
	  <td id="T_1ef3e_row4_col7" class="data row4 col7" >99.32</td>
	  <td id="T_1ef3e_row4_col8" class="data row4 col8" >99.01</td>
	  <td id="T_1ef3e_row4_col9" class="data row4 col9" >98.77</td>
	  <td id="T_1ef3e_row4_col10" class="data row4 col10" >98.75</td>
	  <td id="T_1ef3e_row4_col11" class="data row4 col11" >99.08</td>
	</tr>
	<tr>
	  <th id="T_1ef3e_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_1ef3e_row5_col0" class="data row5 col0" ></td>
	  <td id="T_1ef3e_row5_col1" class="data row5 col1" ></td>
	  <td id="T_1ef3e_row5_col2" class="data row5 col2" ></td>
	  <td id="T_1ef3e_row5_col3" class="data row5 col3" ></td>
	  <td id="T_1ef3e_row5_col4" class="data row5 col4" ></td>
	  <td id="T_1ef3e_row5_col5" class="data row5 col5" >100.90</td>
	  <td id="T_1ef3e_row5_col6" class="data row5 col6" >100.58</td>
	  <td id="T_1ef3e_row5_col7" class="data row5 col7" >100.27</td>
	  <td id="T_1ef3e_row5_col8" class="data row5 col8" >100.00</td>
	  <td id="T_1ef3e_row5_col9" class="data row5 col9" >99.76</td>
	  <td id="T_1ef3e_row5_col10" class="data row5 col10" >99.63</td>
	  <td id="T_1ef3e_row5_col11" class="data row5 col11" >99.67</td>
	</tr>
	<tr>
	  <th id="T_1ef3e_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_1ef3e_row6_col0" class="data row6 col0" ></td>
	  <td id="T_1ef3e_row6_col1" class="data row6 col1" ></td>
	  <td id="T_1ef3e_row6_col2" class="data row6 col2" ></td>
	  <td id="T_1ef3e_row6_col3" class="data row6 col3" ></td>
	  <td id="T_1ef3e_row6_col4" class="data row6 col4" ></td>
	  <td id="T_1ef3e_row6_col5" class="data row6 col5" ></td>
	  <td id="T_1ef3e_row6_col6" class="data row6 col6" >101.02</td>
	  <td id="T_1ef3e_row6_col7" class="data row6 col7" >100.75</td>
	  <td id="T_1ef3e_row6_col8" class="data row6 col8" >100.49</td>
	  <td id="T_1ef3e_row6_col9" class="data row6 col9" >100.24</td>
	  <td id="T_1ef3e_row6_col10" class="data row6 col10" >100.06</td>
	  <td id="T_1ef3e_row6_col11" class="data row6 col11" >99.96</td>
	</tr>
	<tr>
	  <th id="T_1ef3e_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_1ef3e_row7_col0" class="data row7 col0" ></td>
	  <td id="T_1ef3e_row7_col1" class="data row7 col1" ></td>
	  <td id="T_1ef3e_row7_col2" class="data row7 col2" ></td>
	  <td id="T_1ef3e_row7_col3" class="data row7 col3" ></td>
	  <td id="T_1ef3e_row7_col4" class="data row7 col4" ></td>
	  <td id="T_1ef3e_row7_col5" class="data row7 col5" ></td>
	  <td id="T_1ef3e_row7_col6" class="data row7 col6" ></td>
	  <td id="T_1ef3e_row7_col7" class="data row7 col7" >100.98</td>
	  <td id="T_1ef3e_row7_col8" class="data row7 col8" >100.73</td>
	  <td id="T_1ef3e_row7_col9" class="data row7 col9" >100.48</td>
	  <td id="T_1ef3e_row7_col10" class="data row7 col10" >100.27</td>
	  <td id="T_1ef3e_row7_col11" class="data row7 col11" >100.10</td>
	</tr>
	<tr>
	  <th id="T_1ef3e_level0_row8" class="row_heading level0 row8" >8</th>
	  <td id="T_1ef3e_row8_col0" class="data row8 col0" ></td>
	  <td id="T_1ef3e_row8_col1" class="data row8 col1" ></td>
	  <td id="T_1ef3e_row8_col2" class="data row8 col2" ></td>
	  <td id="T_1ef3e_row8_col3" class="data row8 col3" ></td>
	  <td id="T_1ef3e_row8_col4" class="data row8 col4" ></td>
	  <td id="T_1ef3e_row8_col5" class="data row8 col5" ></td>
	  <td id="T_1ef3e_row8_col6" class="data row8 col6" ></td>
	  <td id="T_1ef3e_row8_col7" class="data row8 col7" ></td>
	  <td id="T_1ef3e_row8_col8" class="data row8 col8" >100.85</td>
	  <td id="T_1ef3e_row8_col9" class="data row8 col9" >100.60</td>
	  <td id="T_1ef3e_row8_col10" class="data row8 col10" >100.37</td>
	  <td id="T_1ef3e_row8_col11" class="data row8 col11" >100.17</td>
	</tr>
	<tr>
	  <th id="T_1ef3e_level0_row9" class="row_heading level0 row9" >9</th>
	  <td id="T_1ef3e_row9_col0" class="data row9 col0" ></td>
	  <td id="T_1ef3e_row9_col1" class="data row9 col1" ></td>
	  <td id="T_1ef3e_row9_col2" class="data row9 col2" ></td>
	  <td id="T_1ef3e_row9_col3" class="data row9 col3" ></td>
	  <td id="T_1ef3e_row9_col4" class="data row9 col4" ></td>
	  <td id="T_1ef3e_row9_col5" class="data row9 col5" ></td>
	  <td id="T_1ef3e_row9_col6" class="data row9 col6" ></td>
	  <td id="T_1ef3e_row9_col7" class="data row9 col7" ></td>
	  <td id="T_1ef3e_row9_col8" class="data row9 col8" ></td>
	  <td id="T_1ef3e_row9_col9" class="data row9 col9" >100.66</td>
	  <td id="T_1ef3e_row9_col10" class="data row9 col10" >100.43</td>
	  <td id="T_1ef3e_row9_col11" class="data row9 col11" >100.20</td>
	</tr>
	<tr>
	  <th id="T_1ef3e_level0_row10" class="row_heading level0 row10" >10</th>
	  <td id="T_1ef3e_row10_col0" class="data row10 col0" ></td>
	  <td id="T_1ef3e_row10_col1" class="data row10 col1" ></td>
	  <td id="T_1ef3e_row10_col2" class="data row10 col2" ></td>
	  <td id="T_1ef3e_row10_col3" class="data row10 col3" ></td>
	  <td id="T_1ef3e_row10_col4" class="data row10 col4" ></td>
	  <td id="T_1ef3e_row10_col5" class="data row10 col5" ></td>
	  <td id="T_1ef3e_row10_col6" class="data row10 col6" ></td>
	  <td id="T_1ef3e_row10_col7" class="data row10 col7" ></td>
	  <td id="T_1ef3e_row10_col8" class="data row10 col8" ></td>
	  <td id="T_1ef3e_row10_col9" class="data row10 col9" ></td>
	  <td id="T_1ef3e_row10_col10" class="data row10 col10" >100.46</td>
	  <td id="T_1ef3e_row10_col11" class="data row10 col11" >100.22</td>
	</tr>
	<tr>
	  <th id="T_1ef3e_level0_row11" class="row_heading level0 row11" >11</th>
	  <td id="T_1ef3e_row11_col0" class="data row11 col0" ></td>
	  <td id="T_1ef3e_row11_col1" class="data row11 col1" ></td>
	  <td id="T_1ef3e_row11_col2" class="data row11 col2" ></td>
	  <td id="T_1ef3e_row11_col3" class="data row11 col3" ></td>
	  <td id="T_1ef3e_row11_col4" class="data row11 col4" ></td>
	  <td id="T_1ef3e_row11_col5" class="data row11 col5" ></td>
	  <td id="T_1ef3e_row11_col6" class="data row11 col6" ></td>
	  <td id="T_1ef3e_row11_col7" class="data row11 col7" ></td>
	  <td id="T_1ef3e_row11_col8" class="data row11 col8" ></td>
	  <td id="T_1ef3e_row11_col9" class="data row11 col9" ></td>
	  <td id="T_1ef3e_row11_col10" class="data row11 col10" ></td>
	  <td id="T_1ef3e_row11_col11" class="data row11 col11" >100.23</td>
	</tr>
  </tbody>
</table>

## **<span style="color:red">2.3</span>**

```python
STRIKE = 100

payoff = lambda p: np.maximum(STRIKE-p,0)
puttree = bintree_pricing(payoff=payoff, ratetree=ratetreeT, undertree=bondtree)
format_bintree(puttree)
```

<style type="text/css">
</style>
<table id="T_0e4e9">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_0e4e9_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_0e4e9_level0_col1" class="col_heading level0 col1" >0.25</th>
	  <th id="T_0e4e9_level0_col2" class="col_heading level0 col2" >0.50</th>
	  <th id="T_0e4e9_level0_col3" class="col_heading level0 col3" >0.75</th>
	  <th id="T_0e4e9_level0_col4" class="col_heading level0 col4" >1.00</th>
	  <th id="T_0e4e9_level0_col5" class="col_heading level0 col5" >1.25</th>
	  <th id="T_0e4e9_level0_col6" class="col_heading level0 col6" >1.50</th>
	  <th id="T_0e4e9_level0_col7" class="col_heading level0 col7" >1.75</th>
	  <th id="T_0e4e9_level0_col8" class="col_heading level0 col8" >2.00</th>
	  <th id="T_0e4e9_level0_col9" class="col_heading level0 col9" >2.25</th>
	  <th id="T_0e4e9_level0_col10" class="col_heading level0 col10" >2.50</th>
	  <th id="T_0e4e9_level0_col11" class="col_heading level0 col11" >2.75</th>
	</tr>
	<tr>
	  <th class="index_name level0" >state</th>
	  <th class="blank col0" >&nbsp;</th>
	  <th class="blank col1" >&nbsp;</th>
	  <th class="blank col2" >&nbsp;</th>
	  <th class="blank col3" >&nbsp;</th>
	  <th class="blank col4" >&nbsp;</th>
	  <th class="blank col5" >&nbsp;</th>
	  <th class="blank col6" >&nbsp;</th>
	  <th class="blank col7" >&nbsp;</th>
	  <th class="blank col8" >&nbsp;</th>
	  <th class="blank col9" >&nbsp;</th>
	  <th class="blank col10" >&nbsp;</th>
	  <th class="blank col11" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_0e4e9_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_0e4e9_row0_col0" class="data row0 col0" >0.32</td>
	  <td id="T_0e4e9_row0_col1" class="data row0 col1" >0.47</td>
	  <td id="T_0e4e9_row0_col2" class="data row0 col2" >0.66</td>
	  <td id="T_0e4e9_row0_col3" class="data row0 col3" >0.93</td>
	  <td id="T_0e4e9_row0_col4" class="data row0 col4" >1.26</td>
	  <td id="T_0e4e9_row0_col5" class="data row0 col5" >1.68</td>
	  <td id="T_0e4e9_row0_col6" class="data row0 col6" >2.17</td>
	  <td id="T_0e4e9_row0_col7" class="data row0 col7" >2.74</td>
	  <td id="T_0e4e9_row0_col8" class="data row0 col8" >3.39</td>
	  <td id="T_0e4e9_row0_col9" class="data row0 col9" >4.15</td>
	  <td id="T_0e4e9_row0_col10" class="data row0 col10" >5.08</td>
	  <td id="T_0e4e9_row0_col11" class="data row0 col11" >6.24</td>
	</tr>
	<tr>
	  <th id="T_0e4e9_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_0e4e9_row1_col0" class="data row1 col0" ></td>
	  <td id="T_0e4e9_row1_col1" class="data row1 col1" >0.18</td>
	  <td id="T_0e4e9_row1_col2" class="data row1 col2" >0.28</td>
	  <td id="T_0e4e9_row1_col3" class="data row1 col3" >0.42</td>
	  <td id="T_0e4e9_row1_col4" class="data row1 col4" >0.62</td>
	  <td id="T_0e4e9_row1_col5" class="data row1 col5" >0.89</td>
	  <td id="T_0e4e9_row1_col6" class="data row1 col6" >1.25</td>
	  <td id="T_0e4e9_row1_col7" class="data row1 col7" >1.69</td>
	  <td id="T_0e4e9_row1_col8" class="data row1 col8" >2.23</td>
	  <td id="T_0e4e9_row1_col9" class="data row1 col9" >2.84</td>
	  <td id="T_0e4e9_row1_col10" class="data row1 col10" >3.56</td>
	  <td id="T_0e4e9_row1_col11" class="data row1 col11" >4.46</td>
	</tr>
	<tr>
	  <th id="T_0e4e9_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_0e4e9_row2_col0" class="data row2 col0" ></td>
	  <td id="T_0e4e9_row2_col1" class="data row2 col1" ></td>
	  <td id="T_0e4e9_row2_col2" class="data row2 col2" >0.09</td>
	  <td id="T_0e4e9_row2_col3" class="data row2 col3" >0.15</td>
	  <td id="T_0e4e9_row2_col4" class="data row2 col4" >0.23</td>
	  <td id="T_0e4e9_row2_col5" class="data row2 col5" >0.37</td>
	  <td id="T_0e4e9_row2_col6" class="data row2 col6" >0.56</td>
	  <td id="T_0e4e9_row2_col7" class="data row2 col7" >0.84</td>
	  <td id="T_0e4e9_row2_col8" class="data row2 col8" >1.22</td>
	  <td id="T_0e4e9_row2_col9" class="data row2 col9" >1.71</td>
	  <td id="T_0e4e9_row2_col10" class="data row2 col10" >2.29</td>
	  <td id="T_0e4e9_row2_col11" class="data row2 col11" >2.95</td>
	</tr>
	<tr>
	  <th id="T_0e4e9_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_0e4e9_row3_col0" class="data row3 col0" ></td>
	  <td id="T_0e4e9_row3_col1" class="data row3 col1" ></td>
	  <td id="T_0e4e9_row3_col2" class="data row3 col2" ></td>
	  <td id="T_0e4e9_row3_col3" class="data row3 col3" >0.03</td>
	  <td id="T_0e4e9_row3_col4" class="data row3 col4" >0.06</td>
	  <td id="T_0e4e9_row3_col5" class="data row3 col5" >0.10</td>
	  <td id="T_0e4e9_row3_col6" class="data row3 col6" >0.18</td>
	  <td id="T_0e4e9_row3_col7" class="data row3 col7" >0.29</td>
	  <td id="T_0e4e9_row3_col8" class="data row3 col8" >0.48</td>
	  <td id="T_0e4e9_row3_col9" class="data row3 col9" >0.77</td>
	  <td id="T_0e4e9_row3_col10" class="data row3 col10" >1.19</td>
	  <td id="T_0e4e9_row3_col11" class="data row3 col11" >1.76</td>
	</tr>
	<tr>
	  <th id="T_0e4e9_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_0e4e9_row4_col0" class="data row4 col0" ></td>
	  <td id="T_0e4e9_row4_col1" class="data row4 col1" ></td>
	  <td id="T_0e4e9_row4_col2" class="data row4 col2" ></td>
	  <td id="T_0e4e9_row4_col3" class="data row4 col3" ></td>
	  <td id="T_0e4e9_row4_col4" class="data row4 col4" >0.01</td>
	  <td id="T_0e4e9_row4_col5" class="data row4 col5" >0.02</td>
	  <td id="T_0e4e9_row4_col6" class="data row4 col6" >0.03</td>
	  <td id="T_0e4e9_row4_col7" class="data row4 col7" >0.06</td>
	  <td id="T_0e4e9_row4_col8" class="data row4 col8" >0.11</td>
	  <td id="T_0e4e9_row4_col9" class="data row4 col9" >0.20</td>
	  <td id="T_0e4e9_row4_col10" class="data row4 col10" >0.37</td>
	  <td id="T_0e4e9_row4_col11" class="data row4 col11" >0.67</td>
	</tr>
	<tr>
	  <th id="T_0e4e9_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_0e4e9_row5_col0" class="data row5 col0" ></td>
	  <td id="T_0e4e9_row5_col1" class="data row5 col1" ></td>
	  <td id="T_0e4e9_row5_col2" class="data row5 col2" ></td>
	  <td id="T_0e4e9_row5_col3" class="data row5 col3" ></td>
	  <td id="T_0e4e9_row5_col4" class="data row5 col4" ></td>
	  <td id="T_0e4e9_row5_col5" class="data row5 col5" >0.00</td>
	  <td id="T_0e4e9_row5_col6" class="data row5 col6" >0.00</td>
	  <td id="T_0e4e9_row5_col7" class="data row5 col7" >0.01</td>
	  <td id="T_0e4e9_row5_col8" class="data row5 col8" >0.01</td>
	  <td id="T_0e4e9_row5_col9" class="data row5 col9" >0.02</td>
	  <td id="T_0e4e9_row5_col10" class="data row5 col10" >0.04</td>
	  <td id="T_0e4e9_row5_col11" class="data row5 col11" >0.08</td>
	</tr>
	<tr>
	  <th id="T_0e4e9_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_0e4e9_row6_col0" class="data row6 col0" ></td>
	  <td id="T_0e4e9_row6_col1" class="data row6 col1" ></td>
	  <td id="T_0e4e9_row6_col2" class="data row6 col2" ></td>
	  <td id="T_0e4e9_row6_col3" class="data row6 col3" ></td>
	  <td id="T_0e4e9_row6_col4" class="data row6 col4" ></td>
	  <td id="T_0e4e9_row6_col5" class="data row6 col5" ></td>
	  <td id="T_0e4e9_row6_col6" class="data row6 col6" >0.00</td>
	  <td id="T_0e4e9_row6_col7" class="data row6 col7" >0.00</td>
	  <td id="T_0e4e9_row6_col8" class="data row6 col8" >0.00</td>
	  <td id="T_0e4e9_row6_col9" class="data row6 col9" >0.00</td>
	  <td id="T_0e4e9_row6_col10" class="data row6 col10" >0.00</td>
	  <td id="T_0e4e9_row6_col11" class="data row6 col11" >0.00</td>
	</tr>
	<tr>
	  <th id="T_0e4e9_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_0e4e9_row7_col0" class="data row7 col0" ></td>
	  <td id="T_0e4e9_row7_col1" class="data row7 col1" ></td>
	  <td id="T_0e4e9_row7_col2" class="data row7 col2" ></td>
	  <td id="T_0e4e9_row7_col3" class="data row7 col3" ></td>
	  <td id="T_0e4e9_row7_col4" class="data row7 col4" ></td>
	  <td id="T_0e4e9_row7_col5" class="data row7 col5" ></td>
	  <td id="T_0e4e9_row7_col6" class="data row7 col6" ></td>
	  <td id="T_0e4e9_row7_col7" class="data row7 col7" >0.00</td>
	  <td id="T_0e4e9_row7_col8" class="data row7 col8" >0.00</td>
	  <td id="T_0e4e9_row7_col9" class="data row7 col9" >0.00</td>
	  <td id="T_0e4e9_row7_col10" class="data row7 col10" >0.00</td>
	  <td id="T_0e4e9_row7_col11" class="data row7 col11" >0.00</td>
	</tr>
	<tr>
	  <th id="T_0e4e9_level0_row8" class="row_heading level0 row8" >8</th>
	  <td id="T_0e4e9_row8_col0" class="data row8 col0" ></td>
	  <td id="T_0e4e9_row8_col1" class="data row8 col1" ></td>
	  <td id="T_0e4e9_row8_col2" class="data row8 col2" ></td>
	  <td id="T_0e4e9_row8_col3" class="data row8 col3" ></td>
	  <td id="T_0e4e9_row8_col4" class="data row8 col4" ></td>
	  <td id="T_0e4e9_row8_col5" class="data row8 col5" ></td>
	  <td id="T_0e4e9_row8_col6" class="data row8 col6" ></td>
	  <td id="T_0e4e9_row8_col7" class="data row8 col7" ></td>
	  <td id="T_0e4e9_row8_col8" class="data row8 col8" >0.00</td>
	  <td id="T_0e4e9_row8_col9" class="data row8 col9" >0.00</td>
	  <td id="T_0e4e9_row8_col10" class="data row8 col10" >0.00</td>
	  <td id="T_0e4e9_row8_col11" class="data row8 col11" >0.00</td>
	</tr>
	<tr>
	  <th id="T_0e4e9_level0_row9" class="row_heading level0 row9" >9</th>
	  <td id="T_0e4e9_row9_col0" class="data row9 col0" ></td>
	  <td id="T_0e4e9_row9_col1" class="data row9 col1" ></td>
	  <td id="T_0e4e9_row9_col2" class="data row9 col2" ></td>
	  <td id="T_0e4e9_row9_col3" class="data row9 col3" ></td>
	  <td id="T_0e4e9_row9_col4" class="data row9 col4" ></td>
	  <td id="T_0e4e9_row9_col5" class="data row9 col5" ></td>
	  <td id="T_0e4e9_row9_col6" class="data row9 col6" ></td>
	  <td id="T_0e4e9_row9_col7" class="data row9 col7" ></td>
	  <td id="T_0e4e9_row9_col8" class="data row9 col8" ></td>
	  <td id="T_0e4e9_row9_col9" class="data row9 col9" >0.00</td>
	  <td id="T_0e4e9_row9_col10" class="data row9 col10" >0.00</td>
	  <td id="T_0e4e9_row9_col11" class="data row9 col11" >0.00</td>
	</tr>
	<tr>
	  <th id="T_0e4e9_level0_row10" class="row_heading level0 row10" >10</th>
	  <td id="T_0e4e9_row10_col0" class="data row10 col0" ></td>
	  <td id="T_0e4e9_row10_col1" class="data row10 col1" ></td>
	  <td id="T_0e4e9_row10_col2" class="data row10 col2" ></td>
	  <td id="T_0e4e9_row10_col3" class="data row10 col3" ></td>
	  <td id="T_0e4e9_row10_col4" class="data row10 col4" ></td>
	  <td id="T_0e4e9_row10_col5" class="data row10 col5" ></td>
	  <td id="T_0e4e9_row10_col6" class="data row10 col6" ></td>
	  <td id="T_0e4e9_row10_col7" class="data row10 col7" ></td>
	  <td id="T_0e4e9_row10_col8" class="data row10 col8" ></td>
	  <td id="T_0e4e9_row10_col9" class="data row10 col9" ></td>
	  <td id="T_0e4e9_row10_col10" class="data row10 col10" >0.00</td>
	  <td id="T_0e4e9_row10_col11" class="data row10 col11" >0.00</td>
	</tr>
	<tr>
	  <th id="T_0e4e9_level0_row11" class="row_heading level0 row11" >11</th>
	  <td id="T_0e4e9_row11_col0" class="data row11 col0" ></td>
	  <td id="T_0e4e9_row11_col1" class="data row11 col1" ></td>
	  <td id="T_0e4e9_row11_col2" class="data row11 col2" ></td>
	  <td id="T_0e4e9_row11_col3" class="data row11 col3" ></td>
	  <td id="T_0e4e9_row11_col4" class="data row11 col4" ></td>
	  <td id="T_0e4e9_row11_col5" class="data row11 col5" ></td>
	  <td id="T_0e4e9_row11_col6" class="data row11 col6" ></td>
	  <td id="T_0e4e9_row11_col7" class="data row11 col7" ></td>
	  <td id="T_0e4e9_row11_col8" class="data row11 col8" ></td>
	  <td id="T_0e4e9_row11_col9" class="data row11 col9" ></td>
	  <td id="T_0e4e9_row11_col10" class="data row11 col10" ></td>
	  <td id="T_0e4e9_row11_col11" class="data row11 col11" >0.00</td>
	</tr>
  </tbody>
</table>

## **<span style="color:red">2.4</span>**

```python
undertree = cleantree
puttreeAmer = bintree_pricing(payoff=payoff, ratetree=ratetreeT, undertree=undertree, style='american')
format_bintree(puttreeAmer)
```

<style type="text/css">
</style>
<table id="T_2e019">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_2e019_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_2e019_level0_col1" class="col_heading level0 col1" >0.25</th>
	  <th id="T_2e019_level0_col2" class="col_heading level0 col2" >0.50</th>
	  <th id="T_2e019_level0_col3" class="col_heading level0 col3" >0.75</th>
	  <th id="T_2e019_level0_col4" class="col_heading level0 col4" >1.00</th>
	  <th id="T_2e019_level0_col5" class="col_heading level0 col5" >1.25</th>
	  <th id="T_2e019_level0_col6" class="col_heading level0 col6" >1.50</th>
	  <th id="T_2e019_level0_col7" class="col_heading level0 col7" >1.75</th>
	  <th id="T_2e019_level0_col8" class="col_heading level0 col8" >2.00</th>
	  <th id="T_2e019_level0_col9" class="col_heading level0 col9" >2.25</th>
	  <th id="T_2e019_level0_col10" class="col_heading level0 col10" >2.50</th>
	  <th id="T_2e019_level0_col11" class="col_heading level0 col11" >2.75</th>
	</tr>
	<tr>
	  <th class="index_name level0" >state</th>
	  <th class="blank col0" >&nbsp;</th>
	  <th class="blank col1" >&nbsp;</th>
	  <th class="blank col2" >&nbsp;</th>
	  <th class="blank col3" >&nbsp;</th>
	  <th class="blank col4" >&nbsp;</th>
	  <th class="blank col5" >&nbsp;</th>
	  <th class="blank col6" >&nbsp;</th>
	  <th class="blank col7" >&nbsp;</th>
	  <th class="blank col8" >&nbsp;</th>
	  <th class="blank col9" >&nbsp;</th>
	  <th class="blank col10" >&nbsp;</th>
	  <th class="blank col11" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_2e019_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_2e019_row0_col0" class="data row0 col0" >7.13</td>
	  <td id="T_2e019_row0_col1" class="data row0 col1" >8.07</td>
	  <td id="T_2e019_row0_col2" class="data row0 col2" >8.96</td>
	  <td id="T_2e019_row0_col3" class="data row0 col3" >9.85</td>
	  <td id="T_2e019_row0_col4" class="data row0 col4" >10.71</td>
	  <td id="T_2e019_row0_col5" class="data row0 col5" >11.63</td>
	  <td id="T_2e019_row0_col6" class="data row0 col6" >12.43</td>
	  <td id="T_2e019_row0_col7" class="data row0 col7" >12.87</td>
	  <td id="T_2e019_row0_col8" class="data row0 col8" >12.79</td>
	  <td id="T_2e019_row0_col9" class="data row0 col9" >12.12</td>
	  <td id="T_2e019_row0_col10" class="data row0 col10" >10.20</td>
	  <td id="T_2e019_row0_col11" class="data row0 col11" >6.49</td>
	</tr>
	<tr>
	  <th id="T_2e019_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_2e019_row1_col0" class="data row1 col0" ></td>
	  <td id="T_2e019_row1_col1" class="data row1 col1" >4.33</td>
	  <td id="T_2e019_row1_col2" class="data row1 col2" >5.04</td>
	  <td id="T_2e019_row1_col3" class="data row1 col3" >5.78</td>
	  <td id="T_2e019_row1_col4" class="data row1 col4" >6.53</td>
	  <td id="T_2e019_row1_col5" class="data row1 col5" >7.36</td>
	  <td id="T_2e019_row1_col6" class="data row1 col6" >8.15</td>
	  <td id="T_2e019_row1_col7" class="data row1 col7" >8.70</td>
	  <td id="T_2e019_row1_col8" class="data row1 col8" >8.87</td>
	  <td id="T_2e019_row1_col9" class="data row1 col9" >8.59</td>
	  <td id="T_2e019_row1_col10" class="data row1 col10" >7.32</td>
	  <td id="T_2e019_row1_col11" class="data row1 col11" >4.71</td>
	</tr>
	<tr>
	  <th id="T_2e019_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_2e019_row2_col0" class="data row2 col0" ></td>
	  <td id="T_2e019_row2_col1" class="data row2 col1" ></td>
	  <td id="T_2e019_row2_col2" class="data row2 col2" >2.12</td>
	  <td id="T_2e019_row2_col3" class="data row2 col3" >2.68</td>
	  <td id="T_2e019_row2_col4" class="data row2 col4" >3.28</td>
	  <td id="T_2e019_row2_col5" class="data row2 col5" >3.96</td>
	  <td id="T_2e019_row2_col6" class="data row2 col6" >4.65</td>
	  <td id="T_2e019_row2_col7" class="data row2 col7" >5.21</td>
	  <td id="T_2e019_row2_col8" class="data row2 col8" >5.54</td>
	  <td id="T_2e019_row2_col9" class="data row2 col9" >5.58</td>
	  <td id="T_2e019_row2_col10" class="data row2 col10" >4.90</td>
	  <td id="T_2e019_row2_col11" class="data row2 col11" >3.20</td>
	</tr>
	<tr>
	  <th id="T_2e019_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_2e019_row3_col0" class="data row3 col0" ></td>
	  <td id="T_2e019_row3_col1" class="data row3 col1" ></td>
	  <td id="T_2e019_row3_col2" class="data row3 col2" ></td>
	  <td id="T_2e019_row3_col3" class="data row3 col3" >0.55</td>
	  <td id="T_2e019_row3_col4" class="data row3 col4" >0.99</td>
	  <td id="T_2e019_row3_col5" class="data row3 col5" >1.51</td>
	  <td id="T_2e019_row3_col6" class="data row3 col6" >2.04</td>
	  <td id="T_2e019_row3_col7" class="data row3 col7" >2.52</td>
	  <td id="T_2e019_row3_col8" class="data row3 col8" >2.89</td>
	  <td id="T_2e019_row3_col9" class="data row3 col9" >3.11</td>
	  <td id="T_2e019_row3_col10" class="data row3 col10" >2.90</td>
	  <td id="T_2e019_row3_col11" class="data row3 col11" >2.01</td>
	</tr>
	<tr>
	  <th id="T_2e019_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_2e019_row4_col0" class="data row4 col0" ></td>
	  <td id="T_2e019_row4_col1" class="data row4 col1" ></td>
	  <td id="T_2e019_row4_col2" class="data row4 col2" ></td>
	  <td id="T_2e019_row4_col3" class="data row4 col3" ></td>
	  <td id="T_2e019_row4_col4" class="data row4 col4" >0.11</td>
	  <td id="T_2e019_row4_col5" class="data row4 col5" >0.20</td>
	  <td id="T_2e019_row4_col6" class="data row4 col6" >0.37</td>
	  <td id="T_2e019_row4_col7" class="data row4 col7" >0.68</td>
	  <td id="T_2e019_row4_col8" class="data row4 col8" >0.99</td>
	  <td id="T_2e019_row4_col9" class="data row4 col9" >1.23</td>
	  <td id="T_2e019_row4_col10" class="data row4 col10" >1.25</td>
	  <td id="T_2e019_row4_col11" class="data row4 col11" >0.92</td>
	</tr>
	<tr>
	  <th id="T_2e019_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_2e019_row5_col0" class="data row5 col0" ></td>
	  <td id="T_2e019_row5_col1" class="data row5 col1" ></td>
	  <td id="T_2e019_row5_col2" class="data row5 col2" ></td>
	  <td id="T_2e019_row5_col3" class="data row5 col3" ></td>
	  <td id="T_2e019_row5_col4" class="data row5 col4" ></td>
	  <td id="T_2e019_row5_col5" class="data row5 col5" >0.02</td>
	  <td id="T_2e019_row5_col6" class="data row5 col6" >0.03</td>
	  <td id="T_2e019_row5_col7" class="data row5 col7" >0.07</td>
	  <td id="T_2e019_row5_col8" class="data row5 col8" >0.13</td>
	  <td id="T_2e019_row5_col9" class="data row5 col9" >0.24</td>
	  <td id="T_2e019_row5_col10" class="data row5 col10" >0.37</td>
	  <td id="T_2e019_row5_col11" class="data row5 col11" >0.33</td>
	</tr>
	<tr>
	  <th id="T_2e019_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_2e019_row6_col0" class="data row6 col0" ></td>
	  <td id="T_2e019_row6_col1" class="data row6 col1" ></td>
	  <td id="T_2e019_row6_col2" class="data row6 col2" ></td>
	  <td id="T_2e019_row6_col3" class="data row6 col3" ></td>
	  <td id="T_2e019_row6_col4" class="data row6 col4" ></td>
	  <td id="T_2e019_row6_col5" class="data row6 col5" ></td>
	  <td id="T_2e019_row6_col6" class="data row6 col6" >0.00</td>
	  <td id="T_2e019_row6_col7" class="data row6 col7" >0.00</td>
	  <td id="T_2e019_row6_col8" class="data row6 col8" >0.01</td>
	  <td id="T_2e019_row6_col9" class="data row6 col9" >0.01</td>
	  <td id="T_2e019_row6_col10" class="data row6 col10" >0.02</td>
	  <td id="T_2e019_row6_col11" class="data row6 col11" >0.04</td>
	</tr>
	<tr>
	  <th id="T_2e019_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_2e019_row7_col0" class="data row7 col0" ></td>
	  <td id="T_2e019_row7_col1" class="data row7 col1" ></td>
	  <td id="T_2e019_row7_col2" class="data row7 col2" ></td>
	  <td id="T_2e019_row7_col3" class="data row7 col3" ></td>
	  <td id="T_2e019_row7_col4" class="data row7 col4" ></td>
	  <td id="T_2e019_row7_col5" class="data row7 col5" ></td>
	  <td id="T_2e019_row7_col6" class="data row7 col6" ></td>
	  <td id="T_2e019_row7_col7" class="data row7 col7" >0.00</td>
	  <td id="T_2e019_row7_col8" class="data row7 col8" >0.00</td>
	  <td id="T_2e019_row7_col9" class="data row7 col9" >0.00</td>
	  <td id="T_2e019_row7_col10" class="data row7 col10" >0.00</td>
	  <td id="T_2e019_row7_col11" class="data row7 col11" >0.00</td>
	</tr>
	<tr>
	  <th id="T_2e019_level0_row8" class="row_heading level0 row8" >8</th>
	  <td id="T_2e019_row8_col0" class="data row8 col0" ></td>
	  <td id="T_2e019_row8_col1" class="data row8 col1" ></td>
	  <td id="T_2e019_row8_col2" class="data row8 col2" ></td>
	  <td id="T_2e019_row8_col3" class="data row8 col3" ></td>
	  <td id="T_2e019_row8_col4" class="data row8 col4" ></td>
	  <td id="T_2e019_row8_col5" class="data row8 col5" ></td>
	  <td id="T_2e019_row8_col6" class="data row8 col6" ></td>
	  <td id="T_2e019_row8_col7" class="data row8 col7" ></td>
	  <td id="T_2e019_row8_col8" class="data row8 col8" >0.00</td>
	  <td id="T_2e019_row8_col9" class="data row8 col9" >0.00</td>
	  <td id="T_2e019_row8_col10" class="data row8 col10" >0.00</td>
	  <td id="T_2e019_row8_col11" class="data row8 col11" >0.00</td>
	</tr>
	<tr>
	  <th id="T_2e019_level0_row9" class="row_heading level0 row9" >9</th>
	  <td id="T_2e019_row9_col0" class="data row9 col0" ></td>
	  <td id="T_2e019_row9_col1" class="data row9 col1" ></td>
	  <td id="T_2e019_row9_col2" class="data row9 col2" ></td>
	  <td id="T_2e019_row9_col3" class="data row9 col3" ></td>
	  <td id="T_2e019_row9_col4" class="data row9 col4" ></td>
	  <td id="T_2e019_row9_col5" class="data row9 col5" ></td>
	  <td id="T_2e019_row9_col6" class="data row9 col6" ></td>
	  <td id="T_2e019_row9_col7" class="data row9 col7" ></td>
	  <td id="T_2e019_row9_col8" class="data row9 col8" ></td>
	  <td id="T_2e019_row9_col9" class="data row9 col9" >0.00</td>
	  <td id="T_2e019_row9_col10" class="data row9 col10" >0.00</td>
	  <td id="T_2e019_row9_col11" class="data row9 col11" >0.00</td>
	</tr>
	<tr>
	  <th id="T_2e019_level0_row10" class="row_heading level0 row10" >10</th>
	  <td id="T_2e019_row10_col0" class="data row10 col0" ></td>
	  <td id="T_2e019_row10_col1" class="data row10 col1" ></td>
	  <td id="T_2e019_row10_col2" class="data row10 col2" ></td>
	  <td id="T_2e019_row10_col3" class="data row10 col3" ></td>
	  <td id="T_2e019_row10_col4" class="data row10 col4" ></td>
	  <td id="T_2e019_row10_col5" class="data row10 col5" ></td>
	  <td id="T_2e019_row10_col6" class="data row10 col6" ></td>
	  <td id="T_2e019_row10_col7" class="data row10 col7" ></td>
	  <td id="T_2e019_row10_col8" class="data row10 col8" ></td>
	  <td id="T_2e019_row10_col9" class="data row10 col9" ></td>
	  <td id="T_2e019_row10_col10" class="data row10 col10" >0.00</td>
	  <td id="T_2e019_row10_col11" class="data row10 col11" >0.00</td>
	</tr>
	<tr>
	  <th id="T_2e019_level0_row11" class="row_heading level0 row11" >11</th>
	  <td id="T_2e019_row11_col0" class="data row11 col0" ></td>
	  <td id="T_2e019_row11_col1" class="data row11 col1" ></td>
	  <td id="T_2e019_row11_col2" class="data row11 col2" ></td>
	  <td id="T_2e019_row11_col3" class="data row11 col3" ></td>
	  <td id="T_2e019_row11_col4" class="data row11 col4" ></td>
	  <td id="T_2e019_row11_col5" class="data row11 col5" ></td>
	  <td id="T_2e019_row11_col6" class="data row11 col6" ></td>
	  <td id="T_2e019_row11_col7" class="data row11 col7" ></td>
	  <td id="T_2e019_row11_col8" class="data row11 col8" ></td>
	  <td id="T_2e019_row11_col9" class="data row11 col9" ></td>
	  <td id="T_2e019_row11_col10" class="data row11 col10" ></td>
	  <td id="T_2e019_row11_col11" class="data row11 col11" >0.00</td>
	</tr>
  </tbody>
</table>

There may be ambiguity as to whether one could exercise at $t=0$, or whether it is assumed that the transaction is the end of $t=0$. 

Either interpretation is okay. Here is the version where exercise cannot happen until $t>0$.

```python
undertree = cleantree
puttreeAmer = bintree_pricing(payoff=payoff, ratetree=ratetreeT, undertree=undertree, style='american',Tamerican=dt)
format_bintree(puttreeAmer)
```

<style type="text/css">
</style>
<table id="T_ea150">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_ea150_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_ea150_level0_col1" class="col_heading level0 col1" >0.25</th>
	  <th id="T_ea150_level0_col2" class="col_heading level0 col2" >0.50</th>
	  <th id="T_ea150_level0_col3" class="col_heading level0 col3" >0.75</th>
	  <th id="T_ea150_level0_col4" class="col_heading level0 col4" >1.00</th>
	  <th id="T_ea150_level0_col5" class="col_heading level0 col5" >1.25</th>
	  <th id="T_ea150_level0_col6" class="col_heading level0 col6" >1.50</th>
	  <th id="T_ea150_level0_col7" class="col_heading level0 col7" >1.75</th>
	  <th id="T_ea150_level0_col8" class="col_heading level0 col8" >2.00</th>
	  <th id="T_ea150_level0_col9" class="col_heading level0 col9" >2.25</th>
	  <th id="T_ea150_level0_col10" class="col_heading level0 col10" >2.50</th>
	  <th id="T_ea150_level0_col11" class="col_heading level0 col11" >2.75</th>
	</tr>
	<tr>
	  <th class="index_name level0" >state</th>
	  <th class="blank col0" >&nbsp;</th>
	  <th class="blank col1" >&nbsp;</th>
	  <th class="blank col2" >&nbsp;</th>
	  <th class="blank col3" >&nbsp;</th>
	  <th class="blank col4" >&nbsp;</th>
	  <th class="blank col5" >&nbsp;</th>
	  <th class="blank col6" >&nbsp;</th>
	  <th class="blank col7" >&nbsp;</th>
	  <th class="blank col8" >&nbsp;</th>
	  <th class="blank col9" >&nbsp;</th>
	  <th class="blank col10" >&nbsp;</th>
	  <th class="blank col11" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_ea150_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_ea150_row0_col0" class="data row0 col0" >6.12</td>
	  <td id="T_ea150_row0_col1" class="data row0 col1" >8.07</td>
	  <td id="T_ea150_row0_col2" class="data row0 col2" >8.96</td>
	  <td id="T_ea150_row0_col3" class="data row0 col3" >9.85</td>
	  <td id="T_ea150_row0_col4" class="data row0 col4" >10.71</td>
	  <td id="T_ea150_row0_col5" class="data row0 col5" >11.63</td>
	  <td id="T_ea150_row0_col6" class="data row0 col6" >12.43</td>
	  <td id="T_ea150_row0_col7" class="data row0 col7" >12.87</td>
	  <td id="T_ea150_row0_col8" class="data row0 col8" >12.79</td>
	  <td id="T_ea150_row0_col9" class="data row0 col9" >12.12</td>
	  <td id="T_ea150_row0_col10" class="data row0 col10" >10.20</td>
	  <td id="T_ea150_row0_col11" class="data row0 col11" >6.49</td>
	</tr>
	<tr>
	  <th id="T_ea150_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_ea150_row1_col0" class="data row1 col0" ></td>
	  <td id="T_ea150_row1_col1" class="data row1 col1" >4.33</td>
	  <td id="T_ea150_row1_col2" class="data row1 col2" >5.04</td>
	  <td id="T_ea150_row1_col3" class="data row1 col3" >5.78</td>
	  <td id="T_ea150_row1_col4" class="data row1 col4" >6.53</td>
	  <td id="T_ea150_row1_col5" class="data row1 col5" >7.36</td>
	  <td id="T_ea150_row1_col6" class="data row1 col6" >8.15</td>
	  <td id="T_ea150_row1_col7" class="data row1 col7" >8.70</td>
	  <td id="T_ea150_row1_col8" class="data row1 col8" >8.87</td>
	  <td id="T_ea150_row1_col9" class="data row1 col9" >8.59</td>
	  <td id="T_ea150_row1_col10" class="data row1 col10" >7.32</td>
	  <td id="T_ea150_row1_col11" class="data row1 col11" >4.71</td>
	</tr>
	<tr>
	  <th id="T_ea150_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_ea150_row2_col0" class="data row2 col0" ></td>
	  <td id="T_ea150_row2_col1" class="data row2 col1" ></td>
	  <td id="T_ea150_row2_col2" class="data row2 col2" >2.12</td>
	  <td id="T_ea150_row2_col3" class="data row2 col3" >2.68</td>
	  <td id="T_ea150_row2_col4" class="data row2 col4" >3.28</td>
	  <td id="T_ea150_row2_col5" class="data row2 col5" >3.96</td>
	  <td id="T_ea150_row2_col6" class="data row2 col6" >4.65</td>
	  <td id="T_ea150_row2_col7" class="data row2 col7" >5.21</td>
	  <td id="T_ea150_row2_col8" class="data row2 col8" >5.54</td>
	  <td id="T_ea150_row2_col9" class="data row2 col9" >5.58</td>
	  <td id="T_ea150_row2_col10" class="data row2 col10" >4.90</td>
	  <td id="T_ea150_row2_col11" class="data row2 col11" >3.20</td>
	</tr>
	<tr>
	  <th id="T_ea150_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_ea150_row3_col0" class="data row3 col0" ></td>
	  <td id="T_ea150_row3_col1" class="data row3 col1" ></td>
	  <td id="T_ea150_row3_col2" class="data row3 col2" ></td>
	  <td id="T_ea150_row3_col3" class="data row3 col3" >0.55</td>
	  <td id="T_ea150_row3_col4" class="data row3 col4" >0.99</td>
	  <td id="T_ea150_row3_col5" class="data row3 col5" >1.51</td>
	  <td id="T_ea150_row3_col6" class="data row3 col6" >2.04</td>
	  <td id="T_ea150_row3_col7" class="data row3 col7" >2.52</td>
	  <td id="T_ea150_row3_col8" class="data row3 col8" >2.89</td>
	  <td id="T_ea150_row3_col9" class="data row3 col9" >3.11</td>
	  <td id="T_ea150_row3_col10" class="data row3 col10" >2.90</td>
	  <td id="T_ea150_row3_col11" class="data row3 col11" >2.01</td>
	</tr>
	<tr>
	  <th id="T_ea150_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_ea150_row4_col0" class="data row4 col0" ></td>
	  <td id="T_ea150_row4_col1" class="data row4 col1" ></td>
	  <td id="T_ea150_row4_col2" class="data row4 col2" ></td>
	  <td id="T_ea150_row4_col3" class="data row4 col3" ></td>
	  <td id="T_ea150_row4_col4" class="data row4 col4" >0.11</td>
	  <td id="T_ea150_row4_col5" class="data row4 col5" >0.20</td>
	  <td id="T_ea150_row4_col6" class="data row4 col6" >0.37</td>
	  <td id="T_ea150_row4_col7" class="data row4 col7" >0.68</td>
	  <td id="T_ea150_row4_col8" class="data row4 col8" >0.99</td>
	  <td id="T_ea150_row4_col9" class="data row4 col9" >1.23</td>
	  <td id="T_ea150_row4_col10" class="data row4 col10" >1.25</td>
	  <td id="T_ea150_row4_col11" class="data row4 col11" >0.92</td>
	</tr>
	<tr>
	  <th id="T_ea150_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_ea150_row5_col0" class="data row5 col0" ></td>
	  <td id="T_ea150_row5_col1" class="data row5 col1" ></td>
	  <td id="T_ea150_row5_col2" class="data row5 col2" ></td>
	  <td id="T_ea150_row5_col3" class="data row5 col3" ></td>
	  <td id="T_ea150_row5_col4" class="data row5 col4" ></td>
	  <td id="T_ea150_row5_col5" class="data row5 col5" >0.02</td>
	  <td id="T_ea150_row5_col6" class="data row5 col6" >0.03</td>
	  <td id="T_ea150_row5_col7" class="data row5 col7" >0.07</td>
	  <td id="T_ea150_row5_col8" class="data row5 col8" >0.13</td>
	  <td id="T_ea150_row5_col9" class="data row5 col9" >0.24</td>
	  <td id="T_ea150_row5_col10" class="data row5 col10" >0.37</td>
	  <td id="T_ea150_row5_col11" class="data row5 col11" >0.33</td>
	</tr>
	<tr>
	  <th id="T_ea150_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_ea150_row6_col0" class="data row6 col0" ></td>
	  <td id="T_ea150_row6_col1" class="data row6 col1" ></td>
	  <td id="T_ea150_row6_col2" class="data row6 col2" ></td>
	  <td id="T_ea150_row6_col3" class="data row6 col3" ></td>
	  <td id="T_ea150_row6_col4" class="data row6 col4" ></td>
	  <td id="T_ea150_row6_col5" class="data row6 col5" ></td>
	  <td id="T_ea150_row6_col6" class="data row6 col6" >0.00</td>
	  <td id="T_ea150_row6_col7" class="data row6 col7" >0.00</td>
	  <td id="T_ea150_row6_col8" class="data row6 col8" >0.01</td>
	  <td id="T_ea150_row6_col9" class="data row6 col9" >0.01</td>
	  <td id="T_ea150_row6_col10" class="data row6 col10" >0.02</td>
	  <td id="T_ea150_row6_col11" class="data row6 col11" >0.04</td>
	</tr>
	<tr>
	  <th id="T_ea150_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_ea150_row7_col0" class="data row7 col0" ></td>
	  <td id="T_ea150_row7_col1" class="data row7 col1" ></td>
	  <td id="T_ea150_row7_col2" class="data row7 col2" ></td>
	  <td id="T_ea150_row7_col3" class="data row7 col3" ></td>
	  <td id="T_ea150_row7_col4" class="data row7 col4" ></td>
	  <td id="T_ea150_row7_col5" class="data row7 col5" ></td>
	  <td id="T_ea150_row7_col6" class="data row7 col6" ></td>
	  <td id="T_ea150_row7_col7" class="data row7 col7" >0.00</td>
	  <td id="T_ea150_row7_col8" class="data row7 col8" >0.00</td>
	  <td id="T_ea150_row7_col9" class="data row7 col9" >0.00</td>
	  <td id="T_ea150_row7_col10" class="data row7 col10" >0.00</td>
	  <td id="T_ea150_row7_col11" class="data row7 col11" >0.00</td>
	</tr>
	<tr>
	  <th id="T_ea150_level0_row8" class="row_heading level0 row8" >8</th>
	  <td id="T_ea150_row8_col0" class="data row8 col0" ></td>
	  <td id="T_ea150_row8_col1" class="data row8 col1" ></td>
	  <td id="T_ea150_row8_col2" class="data row8 col2" ></td>
	  <td id="T_ea150_row8_col3" class="data row8 col3" ></td>
	  <td id="T_ea150_row8_col4" class="data row8 col4" ></td>
	  <td id="T_ea150_row8_col5" class="data row8 col5" ></td>
	  <td id="T_ea150_row8_col6" class="data row8 col6" ></td>
	  <td id="T_ea150_row8_col7" class="data row8 col7" ></td>
	  <td id="T_ea150_row8_col8" class="data row8 col8" >0.00</td>
	  <td id="T_ea150_row8_col9" class="data row8 col9" >0.00</td>
	  <td id="T_ea150_row8_col10" class="data row8 col10" >0.00</td>
	  <td id="T_ea150_row8_col11" class="data row8 col11" >0.00</td>
	</tr>
	<tr>
	  <th id="T_ea150_level0_row9" class="row_heading level0 row9" >9</th>
	  <td id="T_ea150_row9_col0" class="data row9 col0" ></td>
	  <td id="T_ea150_row9_col1" class="data row9 col1" ></td>
	  <td id="T_ea150_row9_col2" class="data row9 col2" ></td>
	  <td id="T_ea150_row9_col3" class="data row9 col3" ></td>
	  <td id="T_ea150_row9_col4" class="data row9 col4" ></td>
	  <td id="T_ea150_row9_col5" class="data row9 col5" ></td>
	  <td id="T_ea150_row9_col6" class="data row9 col6" ></td>
	  <td id="T_ea150_row9_col7" class="data row9 col7" ></td>
	  <td id="T_ea150_row9_col8" class="data row9 col8" ></td>
	  <td id="T_ea150_row9_col9" class="data row9 col9" >0.00</td>
	  <td id="T_ea150_row9_col10" class="data row9 col10" >0.00</td>
	  <td id="T_ea150_row9_col11" class="data row9 col11" >0.00</td>
	</tr>
	<tr>
	  <th id="T_ea150_level0_row10" class="row_heading level0 row10" >10</th>
	  <td id="T_ea150_row10_col0" class="data row10 col0" ></td>
	  <td id="T_ea150_row10_col1" class="data row10 col1" ></td>
	  <td id="T_ea150_row10_col2" class="data row10 col2" ></td>
	  <td id="T_ea150_row10_col3" class="data row10 col3" ></td>
	  <td id="T_ea150_row10_col4" class="data row10 col4" ></td>
	  <td id="T_ea150_row10_col5" class="data row10 col5" ></td>
	  <td id="T_ea150_row10_col6" class="data row10 col6" ></td>
	  <td id="T_ea150_row10_col7" class="data row10 col7" ></td>
	  <td id="T_ea150_row10_col8" class="data row10 col8" ></td>
	  <td id="T_ea150_row10_col9" class="data row10 col9" ></td>
	  <td id="T_ea150_row10_col10" class="data row10 col10" >0.00</td>
	  <td id="T_ea150_row10_col11" class="data row10 col11" >0.00</td>
	</tr>
	<tr>
	  <th id="T_ea150_level0_row11" class="row_heading level0 row11" >11</th>
	  <td id="T_ea150_row11_col0" class="data row11 col0" ></td>
	  <td id="T_ea150_row11_col1" class="data row11 col1" ></td>
	  <td id="T_ea150_row11_col2" class="data row11 col2" ></td>
	  <td id="T_ea150_row11_col3" class="data row11 col3" ></td>
	  <td id="T_ea150_row11_col4" class="data row11 col4" ></td>
	  <td id="T_ea150_row11_col5" class="data row11 col5" ></td>
	  <td id="T_ea150_row11_col6" class="data row11 col6" ></td>
	  <td id="T_ea150_row11_col7" class="data row11 col7" ></td>
	  <td id="T_ea150_row11_col8" class="data row11 col8" ></td>
	  <td id="T_ea150_row11_col9" class="data row11 col9" ></td>
	  <td id="T_ea150_row11_col10" class="data row11 col10" ></td>
	  <td id="T_ea150_row11_col11" class="data row11 col11" >0.00</td>
	</tr>
  </tbody>
</table>

## **<span style="color:red">2.5</span>**

The table below shows nodes that are in-the-money yet not exercises. For example, state 3, time 0.75.

There is implicit option value, so using up the optionality must be worth, and if in-the-money by a little while high optionality remains, we may be better off not exercising. 

### **<span style="color:blue">Pedagogical Point</span>**

This came up with regard to whether we would always deliver early if short a treasury futures in a time where carry is negative. For this same concept, we argued that it would depend on the specifics.

```python
inmoney = payoff(undertree)>0
exer = exercise_decisions(payoff,undertree,puttreeAmer)
sns.heatmap(inmoney*1 - exer*1,square=True);
```

![png](output_64_0.png)

## **<span style="color:red">2.6</span>**

```python
N = 100
T=2.5
cpn_freq = 2
cpn = 1/(T)

tsteps = int(T/dt)
ratetreeT = ratetree.iloc[:tsteps,:tsteps]

wrapper_bond = lambda r: payoff_bond(r, dt, facevalue= N * (cpn/cpn_freq))
```

```python
cftree = construct_bond_cftree(T, FREQTREE, cpn)
format_bintree(cftree)
```

<style type="text/css">
</style>
<table id="T_b6da8">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_b6da8_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_b6da8_level0_col1" class="col_heading level0 col1" >0.25</th>
	  <th id="T_b6da8_level0_col2" class="col_heading level0 col2" >0.50</th>
	  <th id="T_b6da8_level0_col3" class="col_heading level0 col3" >0.75</th>
	  <th id="T_b6da8_level0_col4" class="col_heading level0 col4" >1.00</th>
	  <th id="T_b6da8_level0_col5" class="col_heading level0 col5" >1.25</th>
	  <th id="T_b6da8_level0_col6" class="col_heading level0 col6" >1.50</th>
	  <th id="T_b6da8_level0_col7" class="col_heading level0 col7" >1.75</th>
	  <th id="T_b6da8_level0_col8" class="col_heading level0 col8" >2.00</th>
	  <th id="T_b6da8_level0_col9" class="col_heading level0 col9" >2.25</th>
	</tr>
	<tr>
	  <th class="index_name level0" >state</th>
	  <th class="blank col0" >&nbsp;</th>
	  <th class="blank col1" >&nbsp;</th>
	  <th class="blank col2" >&nbsp;</th>
	  <th class="blank col3" >&nbsp;</th>
	  <th class="blank col4" >&nbsp;</th>
	  <th class="blank col5" >&nbsp;</th>
	  <th class="blank col6" >&nbsp;</th>
	  <th class="blank col7" >&nbsp;</th>
	  <th class="blank col8" >&nbsp;</th>
	  <th class="blank col9" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_b6da8_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_b6da8_row0_col0" class="data row0 col0" >0.00</td>
	  <td id="T_b6da8_row0_col1" class="data row0 col1" >0.00</td>
	  <td id="T_b6da8_row0_col2" class="data row0 col2" >20.00</td>
	  <td id="T_b6da8_row0_col3" class="data row0 col3" >0.00</td>
	  <td id="T_b6da8_row0_col4" class="data row0 col4" >20.00</td>
	  <td id="T_b6da8_row0_col5" class="data row0 col5" >0.00</td>
	  <td id="T_b6da8_row0_col6" class="data row0 col6" >20.00</td>
	  <td id="T_b6da8_row0_col7" class="data row0 col7" >0.00</td>
	  <td id="T_b6da8_row0_col8" class="data row0 col8" >20.00</td>
	  <td id="T_b6da8_row0_col9" class="data row0 col9" >0.00</td>
	</tr>
	<tr>
	  <th id="T_b6da8_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_b6da8_row1_col0" class="data row1 col0" >0.00</td>
	  <td id="T_b6da8_row1_col1" class="data row1 col1" >0.00</td>
	  <td id="T_b6da8_row1_col2" class="data row1 col2" >20.00</td>
	  <td id="T_b6da8_row1_col3" class="data row1 col3" >0.00</td>
	  <td id="T_b6da8_row1_col4" class="data row1 col4" >20.00</td>
	  <td id="T_b6da8_row1_col5" class="data row1 col5" >0.00</td>
	  <td id="T_b6da8_row1_col6" class="data row1 col6" >20.00</td>
	  <td id="T_b6da8_row1_col7" class="data row1 col7" >0.00</td>
	  <td id="T_b6da8_row1_col8" class="data row1 col8" >20.00</td>
	  <td id="T_b6da8_row1_col9" class="data row1 col9" >0.00</td>
	</tr>
	<tr>
	  <th id="T_b6da8_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_b6da8_row2_col0" class="data row2 col0" >0.00</td>
	  <td id="T_b6da8_row2_col1" class="data row2 col1" >0.00</td>
	  <td id="T_b6da8_row2_col2" class="data row2 col2" >20.00</td>
	  <td id="T_b6da8_row2_col3" class="data row2 col3" >0.00</td>
	  <td id="T_b6da8_row2_col4" class="data row2 col4" >20.00</td>
	  <td id="T_b6da8_row2_col5" class="data row2 col5" >0.00</td>
	  <td id="T_b6da8_row2_col6" class="data row2 col6" >20.00</td>
	  <td id="T_b6da8_row2_col7" class="data row2 col7" >0.00</td>
	  <td id="T_b6da8_row2_col8" class="data row2 col8" >20.00</td>
	  <td id="T_b6da8_row2_col9" class="data row2 col9" >0.00</td>
	</tr>
	<tr>
	  <th id="T_b6da8_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_b6da8_row3_col0" class="data row3 col0" >0.00</td>
	  <td id="T_b6da8_row3_col1" class="data row3 col1" >0.00</td>
	  <td id="T_b6da8_row3_col2" class="data row3 col2" >20.00</td>
	  <td id="T_b6da8_row3_col3" class="data row3 col3" >0.00</td>
	  <td id="T_b6da8_row3_col4" class="data row3 col4" >20.00</td>
	  <td id="T_b6da8_row3_col5" class="data row3 col5" >0.00</td>
	  <td id="T_b6da8_row3_col6" class="data row3 col6" >20.00</td>
	  <td id="T_b6da8_row3_col7" class="data row3 col7" >0.00</td>
	  <td id="T_b6da8_row3_col8" class="data row3 col8" >20.00</td>
	  <td id="T_b6da8_row3_col9" class="data row3 col9" >0.00</td>
	</tr>
	<tr>
	  <th id="T_b6da8_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_b6da8_row4_col0" class="data row4 col0" >0.00</td>
	  <td id="T_b6da8_row4_col1" class="data row4 col1" >0.00</td>
	  <td id="T_b6da8_row4_col2" class="data row4 col2" >20.00</td>
	  <td id="T_b6da8_row4_col3" class="data row4 col3" >0.00</td>
	  <td id="T_b6da8_row4_col4" class="data row4 col4" >20.00</td>
	  <td id="T_b6da8_row4_col5" class="data row4 col5" >0.00</td>
	  <td id="T_b6da8_row4_col6" class="data row4 col6" >20.00</td>
	  <td id="T_b6da8_row4_col7" class="data row4 col7" >0.00</td>
	  <td id="T_b6da8_row4_col8" class="data row4 col8" >20.00</td>
	  <td id="T_b6da8_row4_col9" class="data row4 col9" >0.00</td>
	</tr>
	<tr>
	  <th id="T_b6da8_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_b6da8_row5_col0" class="data row5 col0" >0.00</td>
	  <td id="T_b6da8_row5_col1" class="data row5 col1" >0.00</td>
	  <td id="T_b6da8_row5_col2" class="data row5 col2" >20.00</td>
	  <td id="T_b6da8_row5_col3" class="data row5 col3" >0.00</td>
	  <td id="T_b6da8_row5_col4" class="data row5 col4" >20.00</td>
	  <td id="T_b6da8_row5_col5" class="data row5 col5" >0.00</td>
	  <td id="T_b6da8_row5_col6" class="data row5 col6" >20.00</td>
	  <td id="T_b6da8_row5_col7" class="data row5 col7" >0.00</td>
	  <td id="T_b6da8_row5_col8" class="data row5 col8" >20.00</td>
	  <td id="T_b6da8_row5_col9" class="data row5 col9" >0.00</td>
	</tr>
	<tr>
	  <th id="T_b6da8_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_b6da8_row6_col0" class="data row6 col0" >0.00</td>
	  <td id="T_b6da8_row6_col1" class="data row6 col1" >0.00</td>
	  <td id="T_b6da8_row6_col2" class="data row6 col2" >20.00</td>
	  <td id="T_b6da8_row6_col3" class="data row6 col3" >0.00</td>
	  <td id="T_b6da8_row6_col4" class="data row6 col4" >20.00</td>
	  <td id="T_b6da8_row6_col5" class="data row6 col5" >0.00</td>
	  <td id="T_b6da8_row6_col6" class="data row6 col6" >20.00</td>
	  <td id="T_b6da8_row6_col7" class="data row6 col7" >0.00</td>
	  <td id="T_b6da8_row6_col8" class="data row6 col8" >20.00</td>
	  <td id="T_b6da8_row6_col9" class="data row6 col9" >0.00</td>
	</tr>
	<tr>
	  <th id="T_b6da8_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_b6da8_row7_col0" class="data row7 col0" >0.00</td>
	  <td id="T_b6da8_row7_col1" class="data row7 col1" >0.00</td>
	  <td id="T_b6da8_row7_col2" class="data row7 col2" >20.00</td>
	  <td id="T_b6da8_row7_col3" class="data row7 col3" >0.00</td>
	  <td id="T_b6da8_row7_col4" class="data row7 col4" >20.00</td>
	  <td id="T_b6da8_row7_col5" class="data row7 col5" >0.00</td>
	  <td id="T_b6da8_row7_col6" class="data row7 col6" >20.00</td>
	  <td id="T_b6da8_row7_col7" class="data row7 col7" >0.00</td>
	  <td id="T_b6da8_row7_col8" class="data row7 col8" >20.00</td>
	  <td id="T_b6da8_row7_col9" class="data row7 col9" >0.00</td>
	</tr>
	<tr>
	  <th id="T_b6da8_level0_row8" class="row_heading level0 row8" >8</th>
	  <td id="T_b6da8_row8_col0" class="data row8 col0" >0.00</td>
	  <td id="T_b6da8_row8_col1" class="data row8 col1" >0.00</td>
	  <td id="T_b6da8_row8_col2" class="data row8 col2" >20.00</td>
	  <td id="T_b6da8_row8_col3" class="data row8 col3" >0.00</td>
	  <td id="T_b6da8_row8_col4" class="data row8 col4" >20.00</td>
	  <td id="T_b6da8_row8_col5" class="data row8 col5" >0.00</td>
	  <td id="T_b6da8_row8_col6" class="data row8 col6" >20.00</td>
	  <td id="T_b6da8_row8_col7" class="data row8 col7" >0.00</td>
	  <td id="T_b6da8_row8_col8" class="data row8 col8" >20.00</td>
	  <td id="T_b6da8_row8_col9" class="data row8 col9" >0.00</td>
	</tr>
	<tr>
	  <th id="T_b6da8_level0_row9" class="row_heading level0 row9" >9</th>
	  <td id="T_b6da8_row9_col0" class="data row9 col0" >0.00</td>
	  <td id="T_b6da8_row9_col1" class="data row9 col1" >0.00</td>
	  <td id="T_b6da8_row9_col2" class="data row9 col2" >20.00</td>
	  <td id="T_b6da8_row9_col3" class="data row9 col3" >0.00</td>
	  <td id="T_b6da8_row9_col4" class="data row9 col4" >20.00</td>
	  <td id="T_b6da8_row9_col5" class="data row9 col5" >0.00</td>
	  <td id="T_b6da8_row9_col6" class="data row9 col6" >20.00</td>
	  <td id="T_b6da8_row9_col7" class="data row9 col7" >0.00</td>
	  <td id="T_b6da8_row9_col8" class="data row9 col8" >20.00</td>
	  <td id="T_b6da8_row9_col9" class="data row9 col9" >0.00</td>
	</tr>
  </tbody>
</table>

```python
bondtree = bintree_pricing(payoff=wrapper_bond, ratetree=ratetreeT, cftree=cftree)
format_bintree(bondtree)
```

<style type="text/css">
</style>
<table id="T_7026d">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_7026d_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_7026d_level0_col1" class="col_heading level0 col1" >0.25</th>
	  <th id="T_7026d_level0_col2" class="col_heading level0 col2" >0.50</th>
	  <th id="T_7026d_level0_col3" class="col_heading level0 col3" >0.75</th>
	  <th id="T_7026d_level0_col4" class="col_heading level0 col4" >1.00</th>
	  <th id="T_7026d_level0_col5" class="col_heading level0 col5" >1.25</th>
	  <th id="T_7026d_level0_col6" class="col_heading level0 col6" >1.50</th>
	  <th id="T_7026d_level0_col7" class="col_heading level0 col7" >1.75</th>
	  <th id="T_7026d_level0_col8" class="col_heading level0 col8" >2.00</th>
	  <th id="T_7026d_level0_col9" class="col_heading level0 col9" >2.25</th>
	</tr>
	<tr>
	  <th class="index_name level0" >state</th>
	  <th class="blank col0" >&nbsp;</th>
	  <th class="blank col1" >&nbsp;</th>
	  <th class="blank col2" >&nbsp;</th>
	  <th class="blank col3" >&nbsp;</th>
	  <th class="blank col4" >&nbsp;</th>
	  <th class="blank col5" >&nbsp;</th>
	  <th class="blank col6" >&nbsp;</th>
	  <th class="blank col7" >&nbsp;</th>
	  <th class="blank col8" >&nbsp;</th>
	  <th class="blank col9" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_7026d_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_7026d_row0_col0" class="data row0 col0" >94.17</td>
	  <td id="T_7026d_row0_col1" class="data row0 col1" >94.51</td>
	  <td id="T_7026d_row0_col2" class="data row0 col2" >75.12</td>
	  <td id="T_7026d_row0_col3" class="data row0 col3" >75.61</td>
	  <td id="T_7026d_row0_col4" class="data row0 col4" >56.30</td>
	  <td id="T_7026d_row0_col5" class="data row0 col5" >56.75</td>
	  <td id="T_7026d_row0_col6" class="data row0 col6" >37.40</td>
	  <td id="T_7026d_row0_col7" class="data row0 col7" >37.92</td>
	  <td id="T_7026d_row0_col8" class="data row0 col8" >18.74</td>
	  <td id="T_7026d_row0_col9" class="data row0 col9" >19.21</td>
	</tr>
	<tr>
	  <th id="T_7026d_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_7026d_row1_col0" class="data row1 col0" ></td>
	  <td id="T_7026d_row1_col1" class="data row1 col1" >96.21</td>
	  <td id="T_7026d_row1_col2" class="data row1 col2" >76.61</td>
	  <td id="T_7026d_row1_col3" class="data row1 col3" >76.93</td>
	  <td id="T_7026d_row1_col4" class="data row1 col4" >57.40</td>
	  <td id="T_7026d_row1_col5" class="data row1 col5" >57.69</td>
	  <td id="T_7026d_row1_col6" class="data row1 col6" >38.14</td>
	  <td id="T_7026d_row1_col7" class="data row1 col7" >38.49</td>
	  <td id="T_7026d_row1_col8" class="data row1 col8" >19.09</td>
	  <td id="T_7026d_row1_col9" class="data row1 col9" >19.42</td>
	</tr>
	<tr>
	  <th id="T_7026d_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_7026d_row2_col0" class="data row2 col0" ></td>
	  <td id="T_7026d_row2_col1" class="data row2 col1" ></td>
	  <td id="T_7026d_row2_col2" class="data row2 col2" >77.82</td>
	  <td id="T_7026d_row2_col3" class="data row2 col3" >78.01</td>
	  <td id="T_7026d_row2_col4" class="data row2 col4" >58.30</td>
	  <td id="T_7026d_row2_col5" class="data row2 col5" >58.47</td>
	  <td id="T_7026d_row2_col6" class="data row2 col6" >38.75</td>
	  <td id="T_7026d_row2_col7" class="data row2 col7" >38.98</td>
	  <td id="T_7026d_row2_col8" class="data row2 col8" >19.37</td>
	  <td id="T_7026d_row2_col9" class="data row2 col9" >19.60</td>
	</tr>
	<tr>
	  <th id="T_7026d_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_7026d_row3_col0" class="data row3 col0" ></td>
	  <td id="T_7026d_row3_col1" class="data row3 col1" ></td>
	  <td id="T_7026d_row3_col2" class="data row3 col2" ></td>
	  <td id="T_7026d_row3_col3" class="data row3 col3" >78.82</td>
	  <td id="T_7026d_row3_col4" class="data row3 col4" >58.99</td>
	  <td id="T_7026d_row3_col5" class="data row3 col5" >59.08</td>
	  <td id="T_7026d_row3_col6" class="data row3 col6" >39.25</td>
	  <td id="T_7026d_row3_col7" class="data row3 col7" >39.37</td>
	  <td id="T_7026d_row3_col8" class="data row3 col8" >19.61</td>
	  <td id="T_7026d_row3_col9" class="data row3 col9" >19.74</td>
	</tr>
	<tr>
	  <th id="T_7026d_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_7026d_row4_col0" class="data row4 col0" ></td>
	  <td id="T_7026d_row4_col1" class="data row4 col1" ></td>
	  <td id="T_7026d_row4_col2" class="data row4 col2" ></td>
	  <td id="T_7026d_row4_col3" class="data row4 col3" ></td>
	  <td id="T_7026d_row4_col4" class="data row4 col4" >59.49</td>
	  <td id="T_7026d_row4_col5" class="data row4 col5" >59.53</td>
	  <td id="T_7026d_row4_col6" class="data row4 col6" >39.61</td>
	  <td id="T_7026d_row4_col7" class="data row4 col7" >39.68</td>
	  <td id="T_7026d_row4_col8" class="data row4 col8" >19.80</td>
	  <td id="T_7026d_row4_col9" class="data row4 col9" >19.87</td>
	</tr>
	<tr>
	  <th id="T_7026d_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_7026d_row5_col0" class="data row5 col0" ></td>
	  <td id="T_7026d_row5_col1" class="data row5 col1" ></td>
	  <td id="T_7026d_row5_col2" class="data row5 col2" ></td>
	  <td id="T_7026d_row5_col3" class="data row5 col3" ></td>
	  <td id="T_7026d_row5_col4" class="data row5 col4" ></td>
	  <td id="T_7026d_row5_col5" class="data row5 col5" >59.77</td>
	  <td id="T_7026d_row5_col6" class="data row5 col6" >39.81</td>
	  <td id="T_7026d_row5_col7" class="data row5 col7" >39.84</td>
	  <td id="T_7026d_row5_col8" class="data row5 col8" >19.90</td>
	  <td id="T_7026d_row5_col9" class="data row5 col9" >19.93</td>
	</tr>
	<tr>
	  <th id="T_7026d_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_7026d_row6_col0" class="data row6 col0" ></td>
	  <td id="T_7026d_row6_col1" class="data row6 col1" ></td>
	  <td id="T_7026d_row6_col2" class="data row6 col2" ></td>
	  <td id="T_7026d_row6_col3" class="data row6 col3" ></td>
	  <td id="T_7026d_row6_col4" class="data row6 col4" ></td>
	  <td id="T_7026d_row6_col5" class="data row6 col5" ></td>
	  <td id="T_7026d_row6_col6" class="data row6 col6" >39.90</td>
	  <td id="T_7026d_row6_col7" class="data row6 col7" >39.92</td>
	  <td id="T_7026d_row6_col8" class="data row6 col8" >19.95</td>
	  <td id="T_7026d_row6_col9" class="data row6 col9" >19.97</td>
	</tr>
	<tr>
	  <th id="T_7026d_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_7026d_row7_col0" class="data row7 col0" ></td>
	  <td id="T_7026d_row7_col1" class="data row7 col1" ></td>
	  <td id="T_7026d_row7_col2" class="data row7 col2" ></td>
	  <td id="T_7026d_row7_col3" class="data row7 col3" ></td>
	  <td id="T_7026d_row7_col4" class="data row7 col4" ></td>
	  <td id="T_7026d_row7_col5" class="data row7 col5" ></td>
	  <td id="T_7026d_row7_col6" class="data row7 col6" ></td>
	  <td id="T_7026d_row7_col7" class="data row7 col7" >39.96</td>
	  <td id="T_7026d_row7_col8" class="data row7 col8" >19.97</td>
	  <td id="T_7026d_row7_col9" class="data row7 col9" >19.98</td>
	</tr>
	<tr>
	  <th id="T_7026d_level0_row8" class="row_heading level0 row8" >8</th>
	  <td id="T_7026d_row8_col0" class="data row8 col0" ></td>
	  <td id="T_7026d_row8_col1" class="data row8 col1" ></td>
	  <td id="T_7026d_row8_col2" class="data row8 col2" ></td>
	  <td id="T_7026d_row8_col3" class="data row8 col3" ></td>
	  <td id="T_7026d_row8_col4" class="data row8 col4" ></td>
	  <td id="T_7026d_row8_col5" class="data row8 col5" ></td>
	  <td id="T_7026d_row8_col6" class="data row8 col6" ></td>
	  <td id="T_7026d_row8_col7" class="data row8 col7" ></td>
	  <td id="T_7026d_row8_col8" class="data row8 col8" >19.99</td>
	  <td id="T_7026d_row8_col9" class="data row8 col9" >19.99</td>
	</tr>
	<tr>
	  <th id="T_7026d_level0_row9" class="row_heading level0 row9" >9</th>
	  <td id="T_7026d_row9_col0" class="data row9 col0" ></td>
	  <td id="T_7026d_row9_col1" class="data row9 col1" ></td>
	  <td id="T_7026d_row9_col2" class="data row9 col2" ></td>
	  <td id="T_7026d_row9_col3" class="data row9 col3" ></td>
	  <td id="T_7026d_row9_col4" class="data row9 col4" ></td>
	  <td id="T_7026d_row9_col5" class="data row9 col5" ></td>
	  <td id="T_7026d_row9_col6" class="data row9 col6" ></td>
	  <td id="T_7026d_row9_col7" class="data row9 col7" ></td>
	  <td id="T_7026d_row9_col8" class="data row9 col8" ></td>
	  <td id="T_7026d_row9_col9" class="data row9 col9" >19.99</td>
	</tr>
  </tbody>
</table>

### **<span style="color:blue">Pedagogical Point</span>**

Verify final answer using approach from FINM 37400 Final Exam

```python
tcpn = 0.5
idT1 = curves.index.get_loc(tcpn)
idT = curves.index.get_loc(T)

p_amort = (curves['discounts'].iloc[idT1:idT+1:2] * N * cpn/cpn_freq).sum()
display(f'Price of amortized bond: ${p_amort:.2f}')
```

    'Price of amortized bond: \$94.17'

***

# 3 Floorlet

## 3.1 (5pts)

Consider a **floorlet** with

* Strike is $0.06$
* Notional $N=100$

As usual, the floorlet has a one-quarter lag between when the payoff is determined and when it is received.

* determined at $T=2$
* payoff at $T=2.25$.

Use the BDT tree of rates to value the floorlet. Display the valuation tree.

## 3.2 (5pts)

Regardless of your price above, assume the market is quoting the floorlet at a price of \$0.80.

Use Black's formula to calculate the implied volatility of this floorlet, supposing the underlying is currently 3.5\%.

## 3.3 (5pts)

Based on your answers to 3.1 and 3.2, is the OAS positive or negative? Explain.

## 3.4 (5pts)

Consider a floorlet which pays immediately upon the payoff being determined rather than having the one-quarter lag.

Price this alternate floorlet and display the valuation tree.

***

# **<span style="color:red">Solution 3</span>**

## **<span style="color:red">3.1</span>**

```python
freqcap = 4
STRIKE = .06
N = 100
Tset = 2
Tpay = Tset + 1/freqcap
```

```python
tsteps = int(Tset/dt)
ratetreeT = ratetree.iloc[:tsteps,:tsteps]
refratetree = compound_rate(ratetreeT,None,freqcap)
format_bintree(refratetree,style='{:.2%}')
```

<style type="text/css">
</style>
<table id="T_a36d8">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_a36d8_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_a36d8_level0_col1" class="col_heading level0 col1" >0.25</th>
	  <th id="T_a36d8_level0_col2" class="col_heading level0 col2" >0.50</th>
	  <th id="T_a36d8_level0_col3" class="col_heading level0 col3" >0.75</th>
	  <th id="T_a36d8_level0_col4" class="col_heading level0 col4" >1.00</th>
	  <th id="T_a36d8_level0_col5" class="col_heading level0 col5" >1.25</th>
	  <th id="T_a36d8_level0_col6" class="col_heading level0 col6" >1.50</th>
	  <th id="T_a36d8_level0_col7" class="col_heading level0 col7" >1.75</th>
	</tr>
	<tr>
	  <th class="index_name level0" >state</th>
	  <th class="blank col0" >&nbsp;</th>
	  <th class="blank col1" >&nbsp;</th>
	  <th class="blank col2" >&nbsp;</th>
	  <th class="blank col3" >&nbsp;</th>
	  <th class="blank col4" >&nbsp;</th>
	  <th class="blank col5" >&nbsp;</th>
	  <th class="blank col6" >&nbsp;</th>
	  <th class="blank col7" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_a36d8_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_a36d8_row0_col0" class="data row0 col0" >5.07%</td>
	  <td id="T_a36d8_row0_col1" class="data row0 col1" >5.74%</td>
	  <td id="T_a36d8_row0_col2" class="data row0 col2" >6.16%</td>
	  <td id="T_a36d8_row0_col3" class="data row0 col3" >6.54%</td>
	  <td id="T_a36d8_row0_col4" class="data row0 col4" >6.55%</td>
	  <td id="T_a36d8_row0_col5" class="data row0 col5" >7.20%</td>
	  <td id="T_a36d8_row0_col6" class="data row0 col6" >8.65%</td>
	  <td id="T_a36d8_row0_col7" class="data row0 col7" >10.50%</td>
	</tr>
	<tr>
	  <th id="T_a36d8_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_a36d8_row1_col0" class="data row1 col0" ></td>
	  <td id="T_a36d8_row1_col1" class="data row1 col1" >4.17%</td>
	  <td id="T_a36d8_row1_col2" class="data row1 col2" >4.48%</td>
	  <td id="T_a36d8_row1_col3" class="data row1 col3" >4.76%</td>
	  <td id="T_a36d8_row1_col4" class="data row1 col4" >4.76%</td>
	  <td id="T_a36d8_row1_col5" class="data row1 col5" >5.23%</td>
	  <td id="T_a36d8_row1_col6" class="data row1 col6" >6.29%</td>
	  <td id="T_a36d8_row1_col7" class="data row1 col7" >7.63%</td>
	</tr>
	<tr>
	  <th id="T_a36d8_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_a36d8_row2_col0" class="data row2 col0" ></td>
	  <td id="T_a36d8_row2_col1" class="data row2 col1" ></td>
	  <td id="T_a36d8_row2_col2" class="data row2 col2" >3.08%</td>
	  <td id="T_a36d8_row2_col3" class="data row2 col3" >3.27%</td>
	  <td id="T_a36d8_row2_col4" class="data row2 col4" >3.28%</td>
	  <td id="T_a36d8_row2_col5" class="data row2 col5" >3.60%</td>
	  <td id="T_a36d8_row2_col6" class="data row2 col6" >4.32%</td>
	  <td id="T_a36d8_row2_col7" class="data row2 col7" >5.24%</td>
	</tr>
	<tr>
	  <th id="T_a36d8_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_a36d8_row3_col0" class="data row3 col0" ></td>
	  <td id="T_a36d8_row3_col1" class="data row3 col1" ></td>
	  <td id="T_a36d8_row3_col2" class="data row3 col2" ></td>
	  <td id="T_a36d8_row3_col3" class="data row3 col3" >2.13%</td>
	  <td id="T_a36d8_row3_col4" class="data row3 col4" >2.13%</td>
	  <td id="T_a36d8_row3_col5" class="data row3 col5" >2.34%</td>
	  <td id="T_a36d8_row3_col6" class="data row3 col6" >2.81%</td>
	  <td id="T_a36d8_row3_col7" class="data row3 col7" >3.41%</td>
	</tr>
	<tr>
	  <th id="T_a36d8_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_a36d8_row4_col0" class="data row4 col0" ></td>
	  <td id="T_a36d8_row4_col1" class="data row4 col1" ></td>
	  <td id="T_a36d8_row4_col2" class="data row4 col2" ></td>
	  <td id="T_a36d8_row4_col3" class="data row4 col3" ></td>
	  <td id="T_a36d8_row4_col4" class="data row4 col4" >1.09%</td>
	  <td id="T_a36d8_row4_col5" class="data row4 col5" >1.20%</td>
	  <td id="T_a36d8_row4_col6" class="data row4 col6" >1.44%</td>
	  <td id="T_a36d8_row4_col7" class="data row4 col7" >1.74%</td>
	</tr>
	<tr>
	  <th id="T_a36d8_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_a36d8_row5_col0" class="data row5 col0" ></td>
	  <td id="T_a36d8_row5_col1" class="data row5 col1" ></td>
	  <td id="T_a36d8_row5_col2" class="data row5 col2" ></td>
	  <td id="T_a36d8_row5_col3" class="data row5 col3" ></td>
	  <td id="T_a36d8_row5_col4" class="data row5 col4" ></td>
	  <td id="T_a36d8_row5_col5" class="data row5 col5" >0.60%</td>
	  <td id="T_a36d8_row5_col6" class="data row5 col6" >0.72%</td>
	  <td id="T_a36d8_row5_col7" class="data row5 col7" >0.87%</td>
	</tr>
	<tr>
	  <th id="T_a36d8_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_a36d8_row6_col0" class="data row6 col0" ></td>
	  <td id="T_a36d8_row6_col1" class="data row6 col1" ></td>
	  <td id="T_a36d8_row6_col2" class="data row6 col2" ></td>
	  <td id="T_a36d8_row6_col3" class="data row6 col3" ></td>
	  <td id="T_a36d8_row6_col4" class="data row6 col4" ></td>
	  <td id="T_a36d8_row6_col5" class="data row6 col5" ></td>
	  <td id="T_a36d8_row6_col6" class="data row6 col6" >0.36%</td>
	  <td id="T_a36d8_row6_col7" class="data row6 col7" >0.43%</td>
	</tr>
	<tr>
	  <th id="T_a36d8_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_a36d8_row7_col0" class="data row7 col0" ></td>
	  <td id="T_a36d8_row7_col1" class="data row7 col1" ></td>
	  <td id="T_a36d8_row7_col2" class="data row7 col2" ></td>
	  <td id="T_a36d8_row7_col3" class="data row7 col3" ></td>
	  <td id="T_a36d8_row7_col4" class="data row7 col4" ></td>
	  <td id="T_a36d8_row7_col5" class="data row7 col5" ></td>
	  <td id="T_a36d8_row7_col6" class="data row7 col6" ></td>
	  <td id="T_a36d8_row7_col7" class="data row7 col7" >0.22%</td>
	</tr>
  </tbody>
</table>

```python
payoff = lambda r: N * dt * np.maximum(STRIKE-r,0)
floorlettree = bintree_pricing(payoff=payoff, ratetree=ratetreeT, undertree= refratetree, cfdelay=True)
format_bintree(floorlettree,style='{:.3f}')
```

<style type="text/css">
</style>
<table id="T_a74bb">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_a74bb_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_a74bb_level0_col1" class="col_heading level0 col1" >0.25</th>
	  <th id="T_a74bb_level0_col2" class="col_heading level0 col2" >0.50</th>
	  <th id="T_a74bb_level0_col3" class="col_heading level0 col3" >0.75</th>
	  <th id="T_a74bb_level0_col4" class="col_heading level0 col4" >1.00</th>
	  <th id="T_a74bb_level0_col5" class="col_heading level0 col5" >1.25</th>
	  <th id="T_a74bb_level0_col6" class="col_heading level0 col6" >1.50</th>
	  <th id="T_a74bb_level0_col7" class="col_heading level0 col7" >1.75</th>
	</tr>
	<tr>
	  <th class="index_name level0" >state</th>
	  <th class="blank col0" >&nbsp;</th>
	  <th class="blank col1" >&nbsp;</th>
	  <th class="blank col2" >&nbsp;</th>
	  <th class="blank col3" >&nbsp;</th>
	  <th class="blank col4" >&nbsp;</th>
	  <th class="blank col5" >&nbsp;</th>
	  <th class="blank col6" >&nbsp;</th>
	  <th class="blank col7" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_a74bb_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_a74bb_row0_col0" class="data row0 col0" >0.745</td>
	  <td id="T_a74bb_row0_col1" class="data row0 col1" >0.597</td>
	  <td id="T_a74bb_row0_col2" class="data row0 col2" >0.439</td>
	  <td id="T_a74bb_row0_col3" class="data row0 col3" >0.282</td>
	  <td id="T_a74bb_row0_col4" class="data row0 col4" >0.144</td>
	  <td id="T_a74bb_row0_col5" class="data row0 col5" >0.045</td>
	  <td id="T_a74bb_row0_col6" class="data row0 col6" >0.000</td>
	  <td id="T_a74bb_row0_col7" class="data row0 col7" >0.000</td>
	</tr>
	<tr>
	  <th id="T_a74bb_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_a74bb_row1_col0" class="data row1 col0" ></td>
	  <td id="T_a74bb_row1_col1" class="data row1 col1" >0.912</td>
	  <td id="T_a74bb_row1_col2" class="data row1 col2" >0.772</td>
	  <td id="T_a74bb_row1_col3" class="data row1 col3" >0.610</td>
	  <td id="T_a74bb_row1_col4" class="data row1 col4" >0.430</td>
	  <td id="T_a74bb_row1_col5" class="data row1 col5" >0.248</td>
	  <td id="T_a74bb_row1_col6" class="data row1 col6" >0.092</td>
	  <td id="T_a74bb_row1_col7" class="data row1 col7" >0.000</td>
	</tr>
	<tr>
	  <th id="T_a74bb_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_a74bb_row2_col0" class="data row2 col0" ></td>
	  <td id="T_a74bb_row2_col1" class="data row2 col1" ></td>
	  <td id="T_a74bb_row2_col2" class="data row2 col2" >1.070</td>
	  <td id="T_a74bb_row2_col3" class="data row2 col3" >0.953</td>
	  <td id="T_a74bb_row2_col4" class="data row2 col4" >0.804</td>
	  <td id="T_a74bb_row2_col5" class="data row2 col5" >0.622</td>
	  <td id="T_a74bb_row2_col6" class="data row2 col6" >0.410</td>
	  <td id="T_a74bb_row2_col7" class="data row2 col7" >0.187</td>
	</tr>
	<tr>
	  <th id="T_a74bb_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_a74bb_row3_col0" class="data row3 col0" ></td>
	  <td id="T_a74bb_row3_col1" class="data row3 col1" ></td>
	  <td id="T_a74bb_row3_col2" class="data row3 col2" ></td>
	  <td id="T_a74bb_row3_col3" class="data row3 col3" >1.204</td>
	  <td id="T_a74bb_row3_col4" class="data row3 col4" >1.117</td>
	  <td id="T_a74bb_row3_col5" class="data row3 col5" >0.999</td>
	  <td id="T_a74bb_row3_col6" class="data row3 col6" >0.845</td>
	  <td id="T_a74bb_row3_col7" class="data row3 col7" >0.642</td>
	</tr>
	<tr>
	  <th id="T_a74bb_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_a74bb_row4_col0" class="data row4 col0" ></td>
	  <td id="T_a74bb_row4_col1" class="data row4 col1" ></td>
	  <td id="T_a74bb_row4_col2" class="data row4 col2" ></td>
	  <td id="T_a74bb_row4_col3" class="data row4 col3" ></td>
	  <td id="T_a74bb_row4_col4" class="data row4 col4" >1.305</td>
	  <td id="T_a74bb_row4_col5" class="data row4 col5" >1.246</td>
	  <td id="T_a74bb_row4_col6" class="data row4 col6" >1.166</td>
	  <td id="T_a74bb_row4_col7" class="data row4 col7" >1.059</td>
	</tr>
	<tr>
	  <th id="T_a74bb_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_a74bb_row5_col0" class="data row5 col0" ></td>
	  <td id="T_a74bb_row5_col1" class="data row5 col1" ></td>
	  <td id="T_a74bb_row5_col2" class="data row5 col2" ></td>
	  <td id="T_a74bb_row5_col3" class="data row5 col3" ></td>
	  <td id="T_a74bb_row5_col4" class="data row5 col4" ></td>
	  <td id="T_a74bb_row5_col5" class="data row5 col5" >1.372</td>
	  <td id="T_a74bb_row5_col6" class="data row5 col6" >1.333</td>
	  <td id="T_a74bb_row5_col7" class="data row5 col7" >1.281</td>
	</tr>
	<tr>
	  <th id="T_a74bb_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_a74bb_row6_col0" class="data row6 col0" ></td>
	  <td id="T_a74bb_row6_col1" class="data row6 col1" ></td>
	  <td id="T_a74bb_row6_col2" class="data row6 col2" ></td>
	  <td id="T_a74bb_row6_col3" class="data row6 col3" ></td>
	  <td id="T_a74bb_row6_col4" class="data row6 col4" ></td>
	  <td id="T_a74bb_row6_col5" class="data row6 col5" ></td>
	  <td id="T_a74bb_row6_col6" class="data row6 col6" >1.415</td>
	  <td id="T_a74bb_row6_col7" class="data row6 col7" >1.390</td>
	</tr>
	<tr>
	  <th id="T_a74bb_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_a74bb_row7_col0" class="data row7 col0" ></td>
	  <td id="T_a74bb_row7_col1" class="data row7 col1" ></td>
	  <td id="T_a74bb_row7_col2" class="data row7 col2" ></td>
	  <td id="T_a74bb_row7_col3" class="data row7 col3" ></td>
	  <td id="T_a74bb_row7_col4" class="data row7 col4" ></td>
	  <td id="T_a74bb_row7_col5" class="data row7 col5" ></td>
	  <td id="T_a74bb_row7_col6" class="data row7 col6" ></td>
	  <td id="T_a74bb_row7_col7" class="data row7 col7" >1.443</td>
	</tr>
  </tbody>
</table>

## **<span style="color:red">3.2</span>**

```python
PX_FLOORLET = .80
F = .035

wrapper = lambda vol: (N * freqcap * blacks_formula(T,vol,STRIKE,F,discount=curves.loc[T,'discounts']) - PX_FLOORLET)**2
ivol = fsolve(wrapper,.3)[0]
display(f'Implied volatility for price of {PX_FLOORLET:.2f} is {ivol:.2%}')
```

    'Implied volatility for price of 0.80 is 35.13%'

## **<span style="color:red">3.3</span>**

The modeled price in 3.1 is below the quoted price in 3.2. This implies a **negative OAS**. That is, if our model is correct, this market quote would yield a worse rate than can be achieved in the market otherwise.

## **<span style="color:red">3.4</span>**

```python
payoff = lambda r: N * dt * np.maximum(STRIKE-r,0)
floorlettree = bintree_pricing(payoff=payoff, ratetree=ratetreeT, undertree= refratetree, cfdelay=False)
format_bintree(floorlettree,style='{:.3f}')
```

<style type="text/css">
</style>
<table id="T_5553a">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_5553a_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_5553a_level0_col1" class="col_heading level0 col1" >0.25</th>
	  <th id="T_5553a_level0_col2" class="col_heading level0 col2" >0.50</th>
	  <th id="T_5553a_level0_col3" class="col_heading level0 col3" >0.75</th>
	  <th id="T_5553a_level0_col4" class="col_heading level0 col4" >1.00</th>
	  <th id="T_5553a_level0_col5" class="col_heading level0 col5" >1.25</th>
	  <th id="T_5553a_level0_col6" class="col_heading level0 col6" >1.50</th>
	  <th id="T_5553a_level0_col7" class="col_heading level0 col7" >1.75</th>
	</tr>
	<tr>
	  <th class="index_name level0" >state</th>
	  <th class="blank col0" >&nbsp;</th>
	  <th class="blank col1" >&nbsp;</th>
	  <th class="blank col2" >&nbsp;</th>
	  <th class="blank col3" >&nbsp;</th>
	  <th class="blank col4" >&nbsp;</th>
	  <th class="blank col5" >&nbsp;</th>
	  <th class="blank col6" >&nbsp;</th>
	  <th class="blank col7" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_5553a_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_5553a_row0_col0" class="data row0 col0" >0.749</td>
	  <td id="T_5553a_row0_col1" class="data row0 col1" >0.601</td>
	  <td id="T_5553a_row0_col2" class="data row0 col2" >0.442</td>
	  <td id="T_5553a_row0_col3" class="data row0 col3" >0.285</td>
	  <td id="T_5553a_row0_col4" class="data row0 col4" >0.146</td>
	  <td id="T_5553a_row0_col5" class="data row0 col5" >0.046</td>
	  <td id="T_5553a_row0_col6" class="data row0 col6" >0.000</td>
	  <td id="T_5553a_row0_col7" class="data row0 col7" >0.000</td>
	</tr>
	<tr>
	  <th id="T_5553a_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_5553a_row1_col0" class="data row1 col0" ></td>
	  <td id="T_5553a_row1_col1" class="data row1 col1" >0.915</td>
	  <td id="T_5553a_row1_col2" class="data row1 col2" >0.776</td>
	  <td id="T_5553a_row1_col3" class="data row1 col3" >0.614</td>
	  <td id="T_5553a_row1_col4" class="data row1 col4" >0.433</td>
	  <td id="T_5553a_row1_col5" class="data row1 col5" >0.250</td>
	  <td id="T_5553a_row1_col6" class="data row1 col6" >0.093</td>
	  <td id="T_5553a_row1_col7" class="data row1 col7" >0.000</td>
	</tr>
	<tr>
	  <th id="T_5553a_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_5553a_row2_col0" class="data row2 col0" ></td>
	  <td id="T_5553a_row2_col1" class="data row2 col1" ></td>
	  <td id="T_5553a_row2_col2" class="data row2 col2" >1.074</td>
	  <td id="T_5553a_row2_col3" class="data row2 col3" >0.956</td>
	  <td id="T_5553a_row2_col4" class="data row2 col4" >0.808</td>
	  <td id="T_5553a_row2_col5" class="data row2 col5" >0.626</td>
	  <td id="T_5553a_row2_col6" class="data row2 col6" >0.414</td>
	  <td id="T_5553a_row2_col7" class="data row2 col7" >0.189</td>
	</tr>
	<tr>
	  <th id="T_5553a_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_5553a_row3_col0" class="data row3 col0" ></td>
	  <td id="T_5553a_row3_col1" class="data row3 col1" ></td>
	  <td id="T_5553a_row3_col2" class="data row3 col2" ></td>
	  <td id="T_5553a_row3_col3" class="data row3 col3" >1.207</td>
	  <td id="T_5553a_row3_col4" class="data row3 col4" >1.120</td>
	  <td id="T_5553a_row3_col5" class="data row3 col5" >1.004</td>
	  <td id="T_5553a_row3_col6" class="data row3 col6" >0.850</td>
	  <td id="T_5553a_row3_col7" class="data row3 col7" >0.648</td>
	</tr>
	<tr>
	  <th id="T_5553a_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_5553a_row4_col0" class="data row4 col0" ></td>
	  <td id="T_5553a_row4_col1" class="data row4 col1" ></td>
	  <td id="T_5553a_row4_col2" class="data row4 col2" ></td>
	  <td id="T_5553a_row4_col3" class="data row4 col3" ></td>
	  <td id="T_5553a_row4_col4" class="data row4 col4" >1.307</td>
	  <td id="T_5553a_row4_col5" class="data row4 col5" >1.248</td>
	  <td id="T_5553a_row4_col6" class="data row4 col6" >1.169</td>
	  <td id="T_5553a_row4_col7" class="data row4 col7" >1.064</td>
	</tr>
	<tr>
	  <th id="T_5553a_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_5553a_row5_col0" class="data row5 col0" ></td>
	  <td id="T_5553a_row5_col1" class="data row5 col1" ></td>
	  <td id="T_5553a_row5_col2" class="data row5 col2" ></td>
	  <td id="T_5553a_row5_col3" class="data row5 col3" ></td>
	  <td id="T_5553a_row5_col4" class="data row5 col4" ></td>
	  <td id="T_5553a_row5_col5" class="data row5 col5" >1.374</td>
	  <td id="T_5553a_row5_col6" class="data row5 col6" >1.335</td>
	  <td id="T_5553a_row5_col7" class="data row5 col7" >1.283</td>
	</tr>
	<tr>
	  <th id="T_5553a_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_5553a_row6_col0" class="data row6 col0" ></td>
	  <td id="T_5553a_row6_col1" class="data row6 col1" ></td>
	  <td id="T_5553a_row6_col2" class="data row6 col2" ></td>
	  <td id="T_5553a_row6_col3" class="data row6 col3" ></td>
	  <td id="T_5553a_row6_col4" class="data row6 col4" ></td>
	  <td id="T_5553a_row6_col5" class="data row6 col5" ></td>
	  <td id="T_5553a_row6_col6" class="data row6 col6" >1.416</td>
	  <td id="T_5553a_row6_col7" class="data row6 col7" >1.391</td>
	</tr>
	<tr>
	  <th id="T_5553a_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_5553a_row7_col0" class="data row7 col0" ></td>
	  <td id="T_5553a_row7_col1" class="data row7 col1" ></td>
	  <td id="T_5553a_row7_col2" class="data row7 col2" ></td>
	  <td id="T_5553a_row7_col3" class="data row7 col3" ></td>
	  <td id="T_5553a_row7_col4" class="data row7 col4" ></td>
	  <td id="T_5553a_row7_col5" class="data row7 col5" ></td>
	  <td id="T_5553a_row7_col6" class="data row7 col6" ></td>
	  <td id="T_5553a_row7_col7" class="data row7 col7" >1.444</td>
	</tr>
  </tbody>
</table>

As expected, getting the payoff sooner leads to a higher valuation at every node.

### **<span style="color:blue">Pedagogical Point</span>**

One interesting thing about this contemporaneous-floorlet is that it can be used to model a call option on a STIR futures contract, (ignoring daily settlement.)

Suppose we are at time $0$, the option expires at $t$, and the underlying future expires at $T$. Let $\Pi_t$ denote the payoff of the call on the STIR future at time $t$:

$$\begin{align*}
\Pi_t &= \max(F_{t\to T} - K,0)\\
&= 100\max\left((1-f_{t\to T}) - (1-r_K), 0\right)\\
&= 100\max(r_K-f_{t\to T},0)\\
\end{align*}$$

where $r_K$ is the strike quoted as a rate and $f_{t\to T}$ here denotes the futures rate rather than price.

This is a contemporaneous floorlet where the underlying is the futures rate rather than the spot rate.

***

# 4. Swaps

## 4.1 

Consider a **paying-fixed** swap which resets (and make payments) **quarterly**.
* Maturity is $T=3$
* Notional is $N=100$.
* Swap rate is 3.53\%.
* The floating rate is the quarterly compounded interest rate.

(Recall that paying-fixed means you pay the swap rate and receive the floating rate.)

Display the cashflow tree.

## 4.2

Display the value tree.

## 4.3

Consider a **european** swaption, (option to enter into the paying-fixed swap).
* expiration is $T=1$
* there is no strike at exercise.
    - could think of this as a strike of 0
    - but often referred to as a strike of 3.53\%, the fixed rate on the underlying swap
    
Display the swaption valuation tree.

***

# **<span style="color:red">Solution 4</span>**

## **<span style="color:red">4.1</span>**


```python
freqswap = 4
T=3
N = 100

STRIKE = .0353
payoff = lambda r: N * dt * (r-STRIKE)
```


```python
tsteps = int(T/dt)
ratetreeT = ratetree.iloc[:tsteps,:tsteps]
refratetree = freqcap * (np.exp(ratetreeT / FREQTREE)-1)
```


```python
cftree = payoff(refratetree)
format_bintree(cftree)
```




<style type="text/css">
</style>
<table id="T_5f88b">
  <thead>
    <tr>
      <th class="index_name level0" >time</th>
      <th id="T_5f88b_level0_col0" class="col_heading level0 col0" >0.00</th>
      <th id="T_5f88b_level0_col1" class="col_heading level0 col1" >0.25</th>
      <th id="T_5f88b_level0_col2" class="col_heading level0 col2" >0.50</th>
      <th id="T_5f88b_level0_col3" class="col_heading level0 col3" >0.75</th>
      <th id="T_5f88b_level0_col4" class="col_heading level0 col4" >1.00</th>
      <th id="T_5f88b_level0_col5" class="col_heading level0 col5" >1.25</th>
      <th id="T_5f88b_level0_col6" class="col_heading level0 col6" >1.50</th>
      <th id="T_5f88b_level0_col7" class="col_heading level0 col7" >1.75</th>
      <th id="T_5f88b_level0_col8" class="col_heading level0 col8" >2.00</th>
      <th id="T_5f88b_level0_col9" class="col_heading level0 col9" >2.25</th>
      <th id="T_5f88b_level0_col10" class="col_heading level0 col10" >2.50</th>
      <th id="T_5f88b_level0_col11" class="col_heading level0 col11" >2.75</th>
    </tr>
    <tr>
      <th class="index_name level0" >state</th>
      <th class="blank col0" >&nbsp;</th>
      <th class="blank col1" >&nbsp;</th>
      <th class="blank col2" >&nbsp;</th>
      <th class="blank col3" >&nbsp;</th>
      <th class="blank col4" >&nbsp;</th>
      <th class="blank col5" >&nbsp;</th>
      <th class="blank col6" >&nbsp;</th>
      <th class="blank col7" >&nbsp;</th>
      <th class="blank col8" >&nbsp;</th>
      <th class="blank col9" >&nbsp;</th>
      <th class="blank col10" >&nbsp;</th>
      <th class="blank col11" >&nbsp;</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th id="T_5f88b_level0_row0" class="row_heading level0 row0" >0</th>
      <td id="T_5f88b_row0_col0" class="data row0 col0" >0.39</td>
      <td id="T_5f88b_row0_col1" class="data row0 col1" >0.55</td>
      <td id="T_5f88b_row0_col2" class="data row0 col2" >0.66</td>
      <td id="T_5f88b_row0_col3" class="data row0 col3" >0.75</td>
      <td id="T_5f88b_row0_col4" class="data row0 col4" >0.75</td>
      <td id="T_5f88b_row0_col5" class="data row0 col5" >0.92</td>
      <td id="T_5f88b_row0_col6" class="data row0 col6" >1.28</td>
      <td id="T_5f88b_row0_col7" class="data row0 col7" >1.74</td>
      <td id="T_5f88b_row0_col8" class="data row0 col8" >2.19</td>
      <td id="T_5f88b_row0_col9" class="data row0 col9" >3.22</td>
      <td id="T_5f88b_row0_col10" class="data row0 col10" >4.51</td>
      <td id="T_5f88b_row0_col11" class="data row0 col11" >6.31</td>
    </tr>
    <tr>
      <th id="T_5f88b_level0_row1" class="row_heading level0 row1" >1</th>
      <td id="T_5f88b_row1_col0" class="data row1 col0" ></td>
      <td id="T_5f88b_row1_col1" class="data row1 col1" >0.16</td>
      <td id="T_5f88b_row1_col2" class="data row1 col2" >0.24</td>
      <td id="T_5f88b_row1_col3" class="data row1 col3" >0.31</td>
      <td id="T_5f88b_row1_col4" class="data row1 col4" >0.31</td>
      <td id="T_5f88b_row1_col5" class="data row1 col5" >0.43</td>
      <td id="T_5f88b_row1_col6" class="data row1 col6" >0.69</td>
      <td id="T_5f88b_row1_col7" class="data row1 col7" >1.02</td>
      <td id="T_5f88b_row1_col8" class="data row1 col8" >1.35</td>
      <td id="T_5f88b_row1_col9" class="data row1 col9" >2.09</td>
      <td id="T_5f88b_row1_col10" class="data row1 col10" >3.02</td>
      <td id="T_5f88b_row1_col11" class="data row1 col11" >4.31</td>
    </tr>
    <tr>
      <th id="T_5f88b_level0_row2" class="row_heading level0 row2" >2</th>
      <td id="T_5f88b_row2_col0" class="data row2 col0" ></td>
      <td id="T_5f88b_row2_col1" class="data row2 col1" ></td>
      <td id="T_5f88b_row2_col2" class="data row2 col2" >-0.11</td>
      <td id="T_5f88b_row2_col3" class="data row2 col3" >-0.06</td>
      <td id="T_5f88b_row2_col4" class="data row2 col4" >-0.06</td>
      <td id="T_5f88b_row2_col5" class="data row2 col5" >0.02</td>
      <td id="T_5f88b_row2_col6" class="data row2 col6" >0.20</td>
      <td id="T_5f88b_row2_col7" class="data row2 col7" >0.43</td>
      <td id="T_5f88b_row2_col8" class="data row2 col8" >0.65</td>
      <td id="T_5f88b_row2_col9" class="data row2 col9" >1.16</td>
      <td id="T_5f88b_row2_col10" class="data row2 col10" >1.79</td>
      <td id="T_5f88b_row2_col11" class="data row2 col11" >2.67</td>
    </tr>
    <tr>
      <th id="T_5f88b_level0_row3" class="row_heading level0 row3" >3</th>
      <td id="T_5f88b_row3_col0" class="data row3 col0" ></td>
      <td id="T_5f88b_row3_col1" class="data row3 col1" ></td>
      <td id="T_5f88b_row3_col2" class="data row3 col2" ></td>
      <td id="T_5f88b_row3_col3" class="data row3 col3" >-0.35</td>
      <td id="T_5f88b_row3_col4" class="data row3 col4" >-0.35</td>
      <td id="T_5f88b_row3_col5" class="data row3 col5" >-0.30</td>
      <td id="T_5f88b_row3_col6" class="data row3 col6" >-0.18</td>
      <td id="T_5f88b_row3_col7" class="data row3 col7" >-0.03</td>
      <td id="T_5f88b_row3_col8" class="data row3 col8" >0.11</td>
      <td id="T_5f88b_row3_col9" class="data row3 col9" >0.44</td>
      <td id="T_5f88b_row3_col10" class="data row3 col10" >0.85</td>
      <td id="T_5f88b_row3_col11" class="data row3 col11" >1.42</td>
    </tr>
    <tr>
      <th id="T_5f88b_level0_row4" class="row_heading level0 row4" >4</th>
      <td id="T_5f88b_row4_col0" class="data row4 col0" ></td>
      <td id="T_5f88b_row4_col1" class="data row4 col1" ></td>
      <td id="T_5f88b_row4_col2" class="data row4 col2" ></td>
      <td id="T_5f88b_row4_col3" class="data row4 col3" ></td>
      <td id="T_5f88b_row4_col4" class="data row4 col4" >-0.61</td>
      <td id="T_5f88b_row4_col5" class="data row4 col5" >-0.58</td>
      <td id="T_5f88b_row4_col6" class="data row4 col6" >-0.52</td>
      <td id="T_5f88b_row4_col7" class="data row4 col7" >-0.45</td>
      <td id="T_5f88b_row4_col8" class="data row4 col8" >-0.37</td>
      <td id="T_5f88b_row4_col9" class="data row4 col9" >-0.21</td>
      <td id="T_5f88b_row4_col10" class="data row4 col10" >0.00</td>
      <td id="T_5f88b_row4_col11" class="data row4 col11" >0.29</td>
    </tr>
    <tr>
      <th id="T_5f88b_level0_row5" class="row_heading level0 row5" >5</th>
      <td id="T_5f88b_row5_col0" class="data row5 col0" ></td>
      <td id="T_5f88b_row5_col1" class="data row5 col1" ></td>
      <td id="T_5f88b_row5_col2" class="data row5 col2" ></td>
      <td id="T_5f88b_row5_col3" class="data row5 col3" ></td>
      <td id="T_5f88b_row5_col4" class="data row5 col4" ></td>
      <td id="T_5f88b_row5_col5" class="data row5 col5" >-0.73</td>
      <td id="T_5f88b_row5_col6" class="data row5 col6" >-0.70</td>
      <td id="T_5f88b_row5_col7" class="data row5 col7" >-0.67</td>
      <td id="T_5f88b_row5_col8" class="data row5 col8" >-0.63</td>
      <td id="T_5f88b_row5_col9" class="data row5 col9" >-0.55</td>
      <td id="T_5f88b_row5_col10" class="data row5 col10" >-0.44</td>
      <td id="T_5f88b_row5_col11" class="data row5 col11" >-0.30</td>
    </tr>
    <tr>
      <th id="T_5f88b_level0_row6" class="row_heading level0 row6" >6</th>
      <td id="T_5f88b_row6_col0" class="data row6 col0" ></td>
      <td id="T_5f88b_row6_col1" class="data row6 col1" ></td>
      <td id="T_5f88b_row6_col2" class="data row6 col2" ></td>
      <td id="T_5f88b_row6_col3" class="data row6 col3" ></td>
      <td id="T_5f88b_row6_col4" class="data row6 col4" ></td>
      <td id="T_5f88b_row6_col5" class="data row6 col5" ></td>
      <td id="T_5f88b_row6_col6" class="data row6 col6" >-0.79</td>
      <td id="T_5f88b_row6_col7" class="data row6 col7" >-0.77</td>
      <td id="T_5f88b_row6_col8" class="data row6 col8" >-0.76</td>
      <td id="T_5f88b_row6_col9" class="data row6 col9" >-0.71</td>
      <td id="T_5f88b_row6_col10" class="data row6 col10" >-0.66</td>
      <td id="T_5f88b_row6_col11" class="data row6 col11" >-0.59</td>
    </tr>
    <tr>
      <th id="T_5f88b_level0_row7" class="row_heading level0 row7" >7</th>
      <td id="T_5f88b_row7_col0" class="data row7 col0" ></td>
      <td id="T_5f88b_row7_col1" class="data row7 col1" ></td>
      <td id="T_5f88b_row7_col2" class="data row7 col2" ></td>
      <td id="T_5f88b_row7_col3" class="data row7 col3" ></td>
      <td id="T_5f88b_row7_col4" class="data row7 col4" ></td>
      <td id="T_5f88b_row7_col5" class="data row7 col5" ></td>
      <td id="T_5f88b_row7_col6" class="data row7 col6" ></td>
      <td id="T_5f88b_row7_col7" class="data row7 col7" >-0.83</td>
      <td id="T_5f88b_row7_col8" class="data row7 col8" >-0.82</td>
      <td id="T_5f88b_row7_col9" class="data row7 col9" >-0.80</td>
      <td id="T_5f88b_row7_col10" class="data row7 col10" >-0.77</td>
      <td id="T_5f88b_row7_col11" class="data row7 col11" >-0.73</td>
    </tr>
    <tr>
      <th id="T_5f88b_level0_row8" class="row_heading level0 row8" >8</th>
      <td id="T_5f88b_row8_col0" class="data row8 col0" ></td>
      <td id="T_5f88b_row8_col1" class="data row8 col1" ></td>
      <td id="T_5f88b_row8_col2" class="data row8 col2" ></td>
      <td id="T_5f88b_row8_col3" class="data row8 col3" ></td>
      <td id="T_5f88b_row8_col4" class="data row8 col4" ></td>
      <td id="T_5f88b_row8_col5" class="data row8 col5" ></td>
      <td id="T_5f88b_row8_col6" class="data row8 col6" ></td>
      <td id="T_5f88b_row8_col7" class="data row8 col7" ></td>
      <td id="T_5f88b_row8_col8" class="data row8 col8" >-0.85</td>
      <td id="T_5f88b_row8_col9" class="data row8 col9" >-0.84</td>
      <td id="T_5f88b_row8_col10" class="data row8 col10" >-0.82</td>
      <td id="T_5f88b_row8_col11" class="data row8 col11" >-0.80</td>
    </tr>
    <tr>
      <th id="T_5f88b_level0_row9" class="row_heading level0 row9" >9</th>
      <td id="T_5f88b_row9_col0" class="data row9 col0" ></td>
      <td id="T_5f88b_row9_col1" class="data row9 col1" ></td>
      <td id="T_5f88b_row9_col2" class="data row9 col2" ></td>
      <td id="T_5f88b_row9_col3" class="data row9 col3" ></td>
      <td id="T_5f88b_row9_col4" class="data row9 col4" ></td>
      <td id="T_5f88b_row9_col5" class="data row9 col5" ></td>
      <td id="T_5f88b_row9_col6" class="data row9 col6" ></td>
      <td id="T_5f88b_row9_col7" class="data row9 col7" ></td>
      <td id="T_5f88b_row9_col8" class="data row9 col8" ></td>
      <td id="T_5f88b_row9_col9" class="data row9 col9" >-0.86</td>
      <td id="T_5f88b_row9_col10" class="data row9 col10" >-0.85</td>
      <td id="T_5f88b_row9_col11" class="data row9 col11" >-0.84</td>
    </tr>
    <tr>
      <th id="T_5f88b_level0_row10" class="row_heading level0 row10" >10</th>
      <td id="T_5f88b_row10_col0" class="data row10 col0" ></td>
      <td id="T_5f88b_row10_col1" class="data row10 col1" ></td>
      <td id="T_5f88b_row10_col2" class="data row10 col2" ></td>
      <td id="T_5f88b_row10_col3" class="data row10 col3" ></td>
      <td id="T_5f88b_row10_col4" class="data row10 col4" ></td>
      <td id="T_5f88b_row10_col5" class="data row10 col5" ></td>
      <td id="T_5f88b_row10_col6" class="data row10 col6" ></td>
      <td id="T_5f88b_row10_col7" class="data row10 col7" ></td>
      <td id="T_5f88b_row10_col8" class="data row10 col8" ></td>
      <td id="T_5f88b_row10_col9" class="data row10 col9" ></td>
      <td id="T_5f88b_row10_col10" class="data row10 col10" >-0.86</td>
      <td id="T_5f88b_row10_col11" class="data row10 col11" >-0.85</td>
    </tr>
    <tr>
      <th id="T_5f88b_level0_row11" class="row_heading level0 row11" >11</th>
      <td id="T_5f88b_row11_col0" class="data row11 col0" ></td>
      <td id="T_5f88b_row11_col1" class="data row11 col1" ></td>
      <td id="T_5f88b_row11_col2" class="data row11 col2" ></td>
      <td id="T_5f88b_row11_col3" class="data row11 col3" ></td>
      <td id="T_5f88b_row11_col4" class="data row11 col4" ></td>
      <td id="T_5f88b_row11_col5" class="data row11 col5" ></td>
      <td id="T_5f88b_row11_col6" class="data row11 col6" ></td>
      <td id="T_5f88b_row11_col7" class="data row11 col7" ></td>
      <td id="T_5f88b_row11_col8" class="data row11 col8" ></td>
      <td id="T_5f88b_row11_col9" class="data row11 col9" ></td>
      <td id="T_5f88b_row11_col10" class="data row11 col10" ></td>
      <td id="T_5f88b_row11_col11" class="data row11 col11" >-0.87</td>
    </tr>
  </tbody>
</table>




## **<span style="color:red">4.2</span>**


```python
swaptree = bintree_pricing(payoff=payoff, ratetree=ratetreeT, undertree= refratetree, cftree=cftree, cfdelay=True)
format_bintree(swaptree)
```




<style type="text/css">
</style>
<table id="T_b8a7b">
  <thead>
    <tr>
      <th class="index_name level0" >time</th>
      <th id="T_b8a7b_level0_col0" class="col_heading level0 col0" >0.00</th>
      <th id="T_b8a7b_level0_col1" class="col_heading level0 col1" >0.25</th>
      <th id="T_b8a7b_level0_col2" class="col_heading level0 col2" >0.50</th>
      <th id="T_b8a7b_level0_col3" class="col_heading level0 col3" >0.75</th>
      <th id="T_b8a7b_level0_col4" class="col_heading level0 col4" >1.00</th>
      <th id="T_b8a7b_level0_col5" class="col_heading level0 col5" >1.25</th>
      <th id="T_b8a7b_level0_col6" class="col_heading level0 col6" >1.50</th>
      <th id="T_b8a7b_level0_col7" class="col_heading level0 col7" >1.75</th>
      <th id="T_b8a7b_level0_col8" class="col_heading level0 col8" >2.00</th>
      <th id="T_b8a7b_level0_col9" class="col_heading level0 col9" >2.25</th>
      <th id="T_b8a7b_level0_col10" class="col_heading level0 col10" >2.50</th>
      <th id="T_b8a7b_level0_col11" class="col_heading level0 col11" >2.75</th>
    </tr>
    <tr>
      <th class="index_name level0" >state</th>
      <th class="blank col0" >&nbsp;</th>
      <th class="blank col1" >&nbsp;</th>
      <th class="blank col2" >&nbsp;</th>
      <th class="blank col3" >&nbsp;</th>
      <th class="blank col4" >&nbsp;</th>
      <th class="blank col5" >&nbsp;</th>
      <th class="blank col6" >&nbsp;</th>
      <th class="blank col7" >&nbsp;</th>
      <th class="blank col8" >&nbsp;</th>
      <th class="blank col9" >&nbsp;</th>
      <th class="blank col10" >&nbsp;</th>
      <th class="blank col11" >&nbsp;</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th id="T_b8a7b_level0_row0" class="row_heading level0 row0" >0</th>
      <td id="T_b8a7b_row0_col0" class="data row0 col0" >-0.01</td>
      <td id="T_b8a7b_row0_col1" class="data row0 col1" >1.55</td>
      <td id="T_b8a7b_row0_col2" class="data row0 col2" >3.04</td>
      <td id="T_b8a7b_row0_col3" class="data row0 col3" >4.52</td>
      <td id="T_b8a7b_row0_col4" class="data row0 col4" >5.99</td>
      <td id="T_b8a7b_row0_col5" class="data row0 col5" >7.51</td>
      <td id="T_b8a7b_row0_col6" class="data row0 col6" >8.91</td>
      <td id="T_b8a7b_row0_col7" class="data row0 col7" >9.94</td>
      <td id="T_b8a7b_row0_col8" class="data row0 col8" >10.45</td>
      <td id="T_b8a7b_row0_col9" class="data row0 col9" >10.36</td>
      <td id="T_b8a7b_row0_col10" class="data row0 col10" >9.02</td>
      <td id="T_b8a7b_row0_col11" class="data row0 col11" >5.89</td>
    </tr>
    <tr>
      <th id="T_b8a7b_level0_row1" class="row_heading level0 row1" >1</th>
      <td id="T_b8a7b_row1_col0" class="data row1 col0" ></td>
      <td id="T_b8a7b_row1_col1" class="data row1 col1" >-2.34</td>
      <td id="T_b8a7b_row1_col2" class="data row1 col2" >-1.01</td>
      <td id="T_b8a7b_row1_col3" class="data row1 col3" >0.34</td>
      <td id="T_b8a7b_row1_col4" class="data row1 col4" >1.70</td>
      <td id="T_b8a7b_row1_col5" class="data row1 col5" >3.15</td>
      <td id="T_b8a7b_row1_col6" class="data row1 col6" >4.55</td>
      <td id="T_b8a7b_row1_col7" class="data row1 col7" >5.71</td>
      <td id="T_b8a7b_row1_col8" class="data row1 col8" >6.47</td>
      <td id="T_b8a7b_row1_col9" class="data row1 col9" >6.79</td>
      <td id="T_b8a7b_row1_col10" class="data row1 col10" >6.12</td>
      <td id="T_b8a7b_row1_col11" class="data row1 col11" >4.10</td>
    </tr>
    <tr>
      <th id="T_b8a7b_level0_row2" class="row_heading level0 row2" >2</th>
      <td id="T_b8a7b_row2_col0" class="data row2 col0" ></td>
      <td id="T_b8a7b_row2_col1" class="data row2 col1" ></td>
      <td id="T_b8a7b_row2_col2" class="data row2 col2" >-4.03</td>
      <td id="T_b8a7b_row2_col3" class="data row2 col3" >-2.85</td>
      <td id="T_b8a7b_row2_col4" class="data row2 col4" >-1.63</td>
      <td id="T_b8a7b_row2_col5" class="data row2 col5" >-0.33</td>
      <td id="T_b8a7b_row2_col6" class="data row2 col6" >0.98</td>
      <td id="T_b8a7b_row2_col7" class="data row2 col7" >2.16</td>
      <td id="T_b8a7b_row2_col8" class="data row2 col8" >3.11</td>
      <td id="T_b8a7b_row2_col9" class="data row2 col9" >3.75</td>
      <td id="T_b8a7b_row2_col10" class="data row2 col10" >3.68</td>
      <td id="T_b8a7b_row2_col11" class="data row2 col11" >2.58</td>
    </tr>
    <tr>
      <th id="T_b8a7b_level0_row3" class="row_heading level0 row3" >3</th>
      <td id="T_b8a7b_row3_col0" class="data row3 col0" ></td>
      <td id="T_b8a7b_row3_col1" class="data row3 col1" ></td>
      <td id="T_b8a7b_row3_col2" class="data row3 col2" ></td>
      <td id="T_b8a7b_row3_col3" class="data row3 col3" >-5.06</td>
      <td id="T_b8a7b_row3_col4" class="data row3 col4" >-3.98</td>
      <td id="T_b8a7b_row3_col5" class="data row3 col5" >-2.84</td>
      <td id="T_b8a7b_row3_col6" class="data row3 col6" >-1.68</td>
      <td id="T_b8a7b_row3_col7" class="data row3 col7" >-0.57</td>
      <td id="T_b8a7b_row3_col8" class="data row3 col8" >0.42</td>
      <td id="T_b8a7b_row3_col9" class="data row3 col9" >1.25</td>
      <td id="T_b8a7b_row3_col10" class="data row3 col10" >1.66</td>
      <td id="T_b8a7b_row3_col11" class="data row3 col11" >1.39</td>
    </tr>
    <tr>
      <th id="T_b8a7b_level0_row4" class="row_heading level0 row4" >4</th>
      <td id="T_b8a7b_row4_col0" class="data row4 col0" ></td>
      <td id="T_b8a7b_row4_col1" class="data row4 col1" ></td>
      <td id="T_b8a7b_row4_col2" class="data row4 col2" ></td>
      <td id="T_b8a7b_row4_col3" class="data row4 col3" ></td>
      <td id="T_b8a7b_row4_col4" class="data row4 col4" >-5.48</td>
      <td id="T_b8a7b_row4_col5" class="data row4 col5" >-4.47</td>
      <td id="T_b8a7b_row4_col6" class="data row4 col6" >-3.44</td>
      <td id="T_b8a7b_row4_col7" class="data row4 col7" >-2.45</td>
      <td id="T_b8a7b_row4_col8" class="data row4 col8" >-1.51</td>
      <td id="T_b8a7b_row4_col9" class="data row4 col9" >-0.64</td>
      <td id="T_b8a7b_row4_col10" class="data row4 col10" >-0.00</td>
      <td id="T_b8a7b_row4_col11" class="data row4 col11" >0.29</td>
    </tr>
    <tr>
      <th id="T_b8a7b_level0_row5" class="row_heading level0 row5" >5</th>
      <td id="T_b8a7b_row5_col0" class="data row5 col0" ></td>
      <td id="T_b8a7b_row5_col1" class="data row5 col1" ></td>
      <td id="T_b8a7b_row5_col2" class="data row5 col2" ></td>
      <td id="T_b8a7b_row5_col3" class="data row5 col3" ></td>
      <td id="T_b8a7b_row5_col4" class="data row5 col4" ></td>
      <td id="T_b8a7b_row5_col5" class="data row5 col5" >-5.31</td>
      <td id="T_b8a7b_row5_col6" class="data row5 col6" >-4.36</td>
      <td id="T_b8a7b_row5_col7" class="data row5 col7" >-3.42</td>
      <td id="T_b8a7b_row5_col8" class="data row5 col8" >-2.51</td>
      <td id="T_b8a7b_row5_col9" class="data row5 col9" >-1.64</td>
      <td id="T_b8a7b_row5_col10" class="data row5 col10" >-0.88</td>
      <td id="T_b8a7b_row5_col11" class="data row5 col11" >-0.30</td>
    </tr>
    <tr>
      <th id="T_b8a7b_level0_row6" class="row_heading level0 row6" >6</th>
      <td id="T_b8a7b_row6_col0" class="data row6 col0" ></td>
      <td id="T_b8a7b_row6_col1" class="data row6 col1" ></td>
      <td id="T_b8a7b_row6_col2" class="data row6 col2" ></td>
      <td id="T_b8a7b_row6_col3" class="data row6 col3" ></td>
      <td id="T_b8a7b_row6_col4" class="data row6 col4" ></td>
      <td id="T_b8a7b_row6_col5" class="data row6 col5" ></td>
      <td id="T_b8a7b_row6_col6" class="data row6 col6" >-4.81</td>
      <td id="T_b8a7b_row6_col7" class="data row6 col7" >-3.90</td>
      <td id="T_b8a7b_row6_col8" class="data row6 col8" >-3.01</td>
      <td id="T_b8a7b_row6_col9" class="data row6 col9" >-2.14</td>
      <td id="T_b8a7b_row6_col10" class="data row6 col10" >-1.32</td>
      <td id="T_b8a7b_row6_col11" class="data row6 col11" >-0.59</td>
    </tr>
    <tr>
      <th id="T_b8a7b_level0_row7" class="row_heading level0 row7" >7</th>
      <td id="T_b8a7b_row7_col0" class="data row7 col0" ></td>
      <td id="T_b8a7b_row7_col1" class="data row7 col1" ></td>
      <td id="T_b8a7b_row7_col2" class="data row7 col2" ></td>
      <td id="T_b8a7b_row7_col3" class="data row7 col3" ></td>
      <td id="T_b8a7b_row7_col4" class="data row7 col4" ></td>
      <td id="T_b8a7b_row7_col5" class="data row7 col5" ></td>
      <td id="T_b8a7b_row7_col6" class="data row7 col6" ></td>
      <td id="T_b8a7b_row7_col7" class="data row7 col7" >-4.14</td>
      <td id="T_b8a7b_row7_col8" class="data row7 col8" >-3.25</td>
      <td id="T_b8a7b_row7_col9" class="data row7 col9" >-2.38</td>
      <td id="T_b8a7b_row7_col10" class="data row7 col10" >-1.53</td>
      <td id="T_b8a7b_row7_col11" class="data row7 col11" >-0.73</td>
    </tr>
    <tr>
      <th id="T_b8a7b_level0_row8" class="row_heading level0 row8" >8</th>
      <td id="T_b8a7b_row8_col0" class="data row8 col0" ></td>
      <td id="T_b8a7b_row8_col1" class="data row8 col1" ></td>
      <td id="T_b8a7b_row8_col2" class="data row8 col2" ></td>
      <td id="T_b8a7b_row8_col3" class="data row8 col3" ></td>
      <td id="T_b8a7b_row8_col4" class="data row8 col4" ></td>
      <td id="T_b8a7b_row8_col5" class="data row8 col5" ></td>
      <td id="T_b8a7b_row8_col6" class="data row8 col6" ></td>
      <td id="T_b8a7b_row8_col7" class="data row8 col7" ></td>
      <td id="T_b8a7b_row8_col8" class="data row8 col8" >-3.38</td>
      <td id="T_b8a7b_row8_col9" class="data row8 col9" >-2.50</td>
      <td id="T_b8a7b_row8_col10" class="data row8 col10" >-1.64</td>
      <td id="T_b8a7b_row8_col11" class="data row8 col11" >-0.80</td>
    </tr>
    <tr>
      <th id="T_b8a7b_level0_row9" class="row_heading level0 row9" >9</th>
      <td id="T_b8a7b_row9_col0" class="data row9 col0" ></td>
      <td id="T_b8a7b_row9_col1" class="data row9 col1" ></td>
      <td id="T_b8a7b_row9_col2" class="data row9 col2" ></td>
      <td id="T_b8a7b_row9_col3" class="data row9 col3" ></td>
      <td id="T_b8a7b_row9_col4" class="data row9 col4" ></td>
      <td id="T_b8a7b_row9_col5" class="data row9 col5" ></td>
      <td id="T_b8a7b_row9_col6" class="data row9 col6" ></td>
      <td id="T_b8a7b_row9_col7" class="data row9 col7" ></td>
      <td id="T_b8a7b_row9_col8" class="data row9 col8" ></td>
      <td id="T_b8a7b_row9_col9" class="data row9 col9" >-2.56</td>
      <td id="T_b8a7b_row9_col10" class="data row9 col10" >-1.69</td>
      <td id="T_b8a7b_row9_col11" class="data row9 col11" >-0.84</td>
    </tr>
    <tr>
      <th id="T_b8a7b_level0_row10" class="row_heading level0 row10" >10</th>
      <td id="T_b8a7b_row10_col0" class="data row10 col0" ></td>
      <td id="T_b8a7b_row10_col1" class="data row10 col1" ></td>
      <td id="T_b8a7b_row10_col2" class="data row10 col2" ></td>
      <td id="T_b8a7b_row10_col3" class="data row10 col3" ></td>
      <td id="T_b8a7b_row10_col4" class="data row10 col4" ></td>
      <td id="T_b8a7b_row10_col5" class="data row10 col5" ></td>
      <td id="T_b8a7b_row10_col6" class="data row10 col6" ></td>
      <td id="T_b8a7b_row10_col7" class="data row10 col7" ></td>
      <td id="T_b8a7b_row10_col8" class="data row10 col8" ></td>
      <td id="T_b8a7b_row10_col9" class="data row10 col9" ></td>
      <td id="T_b8a7b_row10_col10" class="data row10 col10" >-1.72</td>
      <td id="T_b8a7b_row10_col11" class="data row10 col11" >-0.85</td>
    </tr>
    <tr>
      <th id="T_b8a7b_level0_row11" class="row_heading level0 row11" >11</th>
      <td id="T_b8a7b_row11_col0" class="data row11 col0" ></td>
      <td id="T_b8a7b_row11_col1" class="data row11 col1" ></td>
      <td id="T_b8a7b_row11_col2" class="data row11 col2" ></td>
      <td id="T_b8a7b_row11_col3" class="data row11 col3" ></td>
      <td id="T_b8a7b_row11_col4" class="data row11 col4" ></td>
      <td id="T_b8a7b_row11_col5" class="data row11 col5" ></td>
      <td id="T_b8a7b_row11_col6" class="data row11 col6" ></td>
      <td id="T_b8a7b_row11_col7" class="data row11 col7" ></td>
      <td id="T_b8a7b_row11_col8" class="data row11 col8" ></td>
      <td id="T_b8a7b_row11_col9" class="data row11 col9" ></td>
      <td id="T_b8a7b_row11_col10" class="data row11 col10" ></td>
      <td id="T_b8a7b_row11_col11" class="data row11 col11" >-0.87</td>
    </tr>
  </tbody>
</table>




#### **<span style="color:blue">Pedagogical Point</span>**

Note that the swap value is (approximately) zero. That is because the strike was chosen to be the (rounded) swap rate implicit in the discount factors. 

## **<span style="color:red">4.3</span>**


```python
T = 1
tsteps = int(T/dt)+1

payoff = lambda v: np.maximum(v,0)

swaptreeT = swaptree.iloc[:tsteps,:tsteps]

swaption_tree = bintree_pricing(payoff=payoff,  ratetree=ratetree, undertree= swaptreeT)
format_bintree(swaption_tree)
```




<style type="text/css">
</style>
<table id="T_570ac">
  <thead>
    <tr>
      <th class="index_name level0" >time</th>
      <th id="T_570ac_level0_col0" class="col_heading level0 col0" >0.00</th>
      <th id="T_570ac_level0_col1" class="col_heading level0 col1" >0.25</th>
      <th id="T_570ac_level0_col2" class="col_heading level0 col2" >0.50</th>
      <th id="T_570ac_level0_col3" class="col_heading level0 col3" >0.75</th>
      <th id="T_570ac_level0_col4" class="col_heading level0 col4" >1.00</th>
    </tr>
    <tr>
      <th class="index_name level0" >state</th>
      <th class="blank col0" >&nbsp;</th>
      <th class="blank col1" >&nbsp;</th>
      <th class="blank col2" >&nbsp;</th>
      <th class="blank col3" >&nbsp;</th>
      <th class="blank col4" >&nbsp;</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th id="T_570ac_level0_row0" class="row_heading level0 row0" >0</th>
      <td id="T_570ac_row0_col0" class="data row0 col0" >0.76</td>
      <td id="T_570ac_row0_col1" class="data row0 col1" >1.33</td>
      <td id="T_570ac_row0_col2" class="data row0 col2" >2.28</td>
      <td id="T_570ac_row0_col3" class="data row0 col3" >3.78</td>
      <td id="T_570ac_row0_col4" class="data row0 col4" >5.99</td>
    </tr>
    <tr>
      <th id="T_570ac_level0_row1" class="row_heading level0 row1" >1</th>
      <td id="T_570ac_row1_col0" class="data row1 col0" ></td>
      <td id="T_570ac_row1_col1" class="data row1 col1" >0.21</td>
      <td id="T_570ac_row1_col2" class="data row1 col2" >0.42</td>
      <td id="T_570ac_row1_col3" class="data row1 col3" >0.84</td>
      <td id="T_570ac_row1_col4" class="data row1 col4" >1.70</td>
    </tr>
    <tr>
      <th id="T_570ac_level0_row2" class="row_heading level0 row2" >2</th>
      <td id="T_570ac_row2_col0" class="data row2 col0" ></td>
      <td id="T_570ac_row2_col1" class="data row2 col1" ></td>
      <td id="T_570ac_row2_col2" class="data row2 col2" >0.00</td>
      <td id="T_570ac_row2_col3" class="data row2 col3" >0.00</td>
      <td id="T_570ac_row2_col4" class="data row2 col4" >0.00</td>
    </tr>
    <tr>
      <th id="T_570ac_level0_row3" class="row_heading level0 row3" >3</th>
      <td id="T_570ac_row3_col0" class="data row3 col0" ></td>
      <td id="T_570ac_row3_col1" class="data row3 col1" ></td>
      <td id="T_570ac_row3_col2" class="data row3 col2" ></td>
      <td id="T_570ac_row3_col3" class="data row3 col3" >0.00</td>
      <td id="T_570ac_row3_col4" class="data row3 col4" >0.00</td>
    </tr>
    <tr>
      <th id="T_570ac_level0_row4" class="row_heading level0 row4" >4</th>
      <td id="T_570ac_row4_col0" class="data row4 col0" ></td>
      <td id="T_570ac_row4_col1" class="data row4 col1" ></td>
      <td id="T_570ac_row4_col2" class="data row4 col2" ></td>
      <td id="T_570ac_row4_col3" class="data row4 col3" ></td>
      <td id="T_570ac_row4_col4" class="data row4 col4" >0.00</td>
    </tr>
  </tbody>
</table>




Note that though the swap is priced correctly, (~0), the swaption has substantial value given the optionality.

## **<span style="color:blue">Pedagogical Point</span>**

We know a paying-fixed swap is equivalent to a long-short position in a floating-fixed bond.

We could thus value the swap, (though 4.1 specifically asked for the cashflow tree, so this would only help for 4.2.) To do so, we must consider a bond that pays coupons at the same frequency that the swap resets/pays. Thus, we need to value a quarterly-paying bond.


```python
N = 100
T=3
cpn = STRIKE
cpn_freq = freqswap

wrapper_bond = lambda r: payoff_bond(r, dt, facevalue=N * (1+cpn/cpn_freq))
```


```python
tsteps = int(T/dt)
ratetreeT = ratetree.iloc[:tsteps,:tsteps]

cftree = construct_bond_cftree(T, FREQTREE, cpn, cpn_freq=cpn_freq)
format_bintree(cftree)
```




<style type="text/css">
</style>
<table id="T_1e574">
  <thead>
    <tr>
      <th class="index_name level0" >time</th>
      <th id="T_1e574_level0_col0" class="col_heading level0 col0" >0.00</th>
      <th id="T_1e574_level0_col1" class="col_heading level0 col1" >0.25</th>
      <th id="T_1e574_level0_col2" class="col_heading level0 col2" >0.50</th>
      <th id="T_1e574_level0_col3" class="col_heading level0 col3" >0.75</th>
      <th id="T_1e574_level0_col4" class="col_heading level0 col4" >1.00</th>
      <th id="T_1e574_level0_col5" class="col_heading level0 col5" >1.25</th>
      <th id="T_1e574_level0_col6" class="col_heading level0 col6" >1.50</th>
      <th id="T_1e574_level0_col7" class="col_heading level0 col7" >1.75</th>
      <th id="T_1e574_level0_col8" class="col_heading level0 col8" >2.00</th>
      <th id="T_1e574_level0_col9" class="col_heading level0 col9" >2.25</th>
      <th id="T_1e574_level0_col10" class="col_heading level0 col10" >2.50</th>
      <th id="T_1e574_level0_col11" class="col_heading level0 col11" >2.75</th>
    </tr>
    <tr>
      <th class="index_name level0" >state</th>
      <th class="blank col0" >&nbsp;</th>
      <th class="blank col1" >&nbsp;</th>
      <th class="blank col2" >&nbsp;</th>
      <th class="blank col3" >&nbsp;</th>
      <th class="blank col4" >&nbsp;</th>
      <th class="blank col5" >&nbsp;</th>
      <th class="blank col6" >&nbsp;</th>
      <th class="blank col7" >&nbsp;</th>
      <th class="blank col8" >&nbsp;</th>
      <th class="blank col9" >&nbsp;</th>
      <th class="blank col10" >&nbsp;</th>
      <th class="blank col11" >&nbsp;</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th id="T_1e574_level0_row0" class="row_heading level0 row0" >0</th>
      <td id="T_1e574_row0_col0" class="data row0 col0" >0.00</td>
      <td id="T_1e574_row0_col1" class="data row0 col1" >0.88</td>
      <td id="T_1e574_row0_col2" class="data row0 col2" >0.88</td>
      <td id="T_1e574_row0_col3" class="data row0 col3" >0.88</td>
      <td id="T_1e574_row0_col4" class="data row0 col4" >0.88</td>
      <td id="T_1e574_row0_col5" class="data row0 col5" >0.88</td>
      <td id="T_1e574_row0_col6" class="data row0 col6" >0.88</td>
      <td id="T_1e574_row0_col7" class="data row0 col7" >0.88</td>
      <td id="T_1e574_row0_col8" class="data row0 col8" >0.88</td>
      <td id="T_1e574_row0_col9" class="data row0 col9" >0.88</td>
      <td id="T_1e574_row0_col10" class="data row0 col10" >0.88</td>
      <td id="T_1e574_row0_col11" class="data row0 col11" >0.88</td>
    </tr>
    <tr>
      <th id="T_1e574_level0_row1" class="row_heading level0 row1" >1</th>
      <td id="T_1e574_row1_col0" class="data row1 col0" >0.00</td>
      <td id="T_1e574_row1_col1" class="data row1 col1" >0.88</td>
      <td id="T_1e574_row1_col2" class="data row1 col2" >0.88</td>
      <td id="T_1e574_row1_col3" class="data row1 col3" >0.88</td>
      <td id="T_1e574_row1_col4" class="data row1 col4" >0.88</td>
      <td id="T_1e574_row1_col5" class="data row1 col5" >0.88</td>
      <td id="T_1e574_row1_col6" class="data row1 col6" >0.88</td>
      <td id="T_1e574_row1_col7" class="data row1 col7" >0.88</td>
      <td id="T_1e574_row1_col8" class="data row1 col8" >0.88</td>
      <td id="T_1e574_row1_col9" class="data row1 col9" >0.88</td>
      <td id="T_1e574_row1_col10" class="data row1 col10" >0.88</td>
      <td id="T_1e574_row1_col11" class="data row1 col11" >0.88</td>
    </tr>
    <tr>
      <th id="T_1e574_level0_row2" class="row_heading level0 row2" >2</th>
      <td id="T_1e574_row2_col0" class="data row2 col0" >0.00</td>
      <td id="T_1e574_row2_col1" class="data row2 col1" >0.88</td>
      <td id="T_1e574_row2_col2" class="data row2 col2" >0.88</td>
      <td id="T_1e574_row2_col3" class="data row2 col3" >0.88</td>
      <td id="T_1e574_row2_col4" class="data row2 col4" >0.88</td>
      <td id="T_1e574_row2_col5" class="data row2 col5" >0.88</td>
      <td id="T_1e574_row2_col6" class="data row2 col6" >0.88</td>
      <td id="T_1e574_row2_col7" class="data row2 col7" >0.88</td>
      <td id="T_1e574_row2_col8" class="data row2 col8" >0.88</td>
      <td id="T_1e574_row2_col9" class="data row2 col9" >0.88</td>
      <td id="T_1e574_row2_col10" class="data row2 col10" >0.88</td>
      <td id="T_1e574_row2_col11" class="data row2 col11" >0.88</td>
    </tr>
    <tr>
      <th id="T_1e574_level0_row3" class="row_heading level0 row3" >3</th>
      <td id="T_1e574_row3_col0" class="data row3 col0" >0.00</td>
      <td id="T_1e574_row3_col1" class="data row3 col1" >0.88</td>
      <td id="T_1e574_row3_col2" class="data row3 col2" >0.88</td>
      <td id="T_1e574_row3_col3" class="data row3 col3" >0.88</td>
      <td id="T_1e574_row3_col4" class="data row3 col4" >0.88</td>
      <td id="T_1e574_row3_col5" class="data row3 col5" >0.88</td>
      <td id="T_1e574_row3_col6" class="data row3 col6" >0.88</td>
      <td id="T_1e574_row3_col7" class="data row3 col7" >0.88</td>
      <td id="T_1e574_row3_col8" class="data row3 col8" >0.88</td>
      <td id="T_1e574_row3_col9" class="data row3 col9" >0.88</td>
      <td id="T_1e574_row3_col10" class="data row3 col10" >0.88</td>
      <td id="T_1e574_row3_col11" class="data row3 col11" >0.88</td>
    </tr>
    <tr>
      <th id="T_1e574_level0_row4" class="row_heading level0 row4" >4</th>
      <td id="T_1e574_row4_col0" class="data row4 col0" >0.00</td>
      <td id="T_1e574_row4_col1" class="data row4 col1" >0.88</td>
      <td id="T_1e574_row4_col2" class="data row4 col2" >0.88</td>
      <td id="T_1e574_row4_col3" class="data row4 col3" >0.88</td>
      <td id="T_1e574_row4_col4" class="data row4 col4" >0.88</td>
      <td id="T_1e574_row4_col5" class="data row4 col5" >0.88</td>
      <td id="T_1e574_row4_col6" class="data row4 col6" >0.88</td>
      <td id="T_1e574_row4_col7" class="data row4 col7" >0.88</td>
      <td id="T_1e574_row4_col8" class="data row4 col8" >0.88</td>
      <td id="T_1e574_row4_col9" class="data row4 col9" >0.88</td>
      <td id="T_1e574_row4_col10" class="data row4 col10" >0.88</td>
      <td id="T_1e574_row4_col11" class="data row4 col11" >0.88</td>
    </tr>
    <tr>
      <th id="T_1e574_level0_row5" class="row_heading level0 row5" >5</th>
      <td id="T_1e574_row5_col0" class="data row5 col0" >0.00</td>
      <td id="T_1e574_row5_col1" class="data row5 col1" >0.88</td>
      <td id="T_1e574_row5_col2" class="data row5 col2" >0.88</td>
      <td id="T_1e574_row5_col3" class="data row5 col3" >0.88</td>
      <td id="T_1e574_row5_col4" class="data row5 col4" >0.88</td>
      <td id="T_1e574_row5_col5" class="data row5 col5" >0.88</td>
      <td id="T_1e574_row5_col6" class="data row5 col6" >0.88</td>
      <td id="T_1e574_row5_col7" class="data row5 col7" >0.88</td>
      <td id="T_1e574_row5_col8" class="data row5 col8" >0.88</td>
      <td id="T_1e574_row5_col9" class="data row5 col9" >0.88</td>
      <td id="T_1e574_row5_col10" class="data row5 col10" >0.88</td>
      <td id="T_1e574_row5_col11" class="data row5 col11" >0.88</td>
    </tr>
    <tr>
      <th id="T_1e574_level0_row6" class="row_heading level0 row6" >6</th>
      <td id="T_1e574_row6_col0" class="data row6 col0" >0.00</td>
      <td id="T_1e574_row6_col1" class="data row6 col1" >0.88</td>
      <td id="T_1e574_row6_col2" class="data row6 col2" >0.88</td>
      <td id="T_1e574_row6_col3" class="data row6 col3" >0.88</td>
      <td id="T_1e574_row6_col4" class="data row6 col4" >0.88</td>
      <td id="T_1e574_row6_col5" class="data row6 col5" >0.88</td>
      <td id="T_1e574_row6_col6" class="data row6 col6" >0.88</td>
      <td id="T_1e574_row6_col7" class="data row6 col7" >0.88</td>
      <td id="T_1e574_row6_col8" class="data row6 col8" >0.88</td>
      <td id="T_1e574_row6_col9" class="data row6 col9" >0.88</td>
      <td id="T_1e574_row6_col10" class="data row6 col10" >0.88</td>
      <td id="T_1e574_row6_col11" class="data row6 col11" >0.88</td>
    </tr>
    <tr>
      <th id="T_1e574_level0_row7" class="row_heading level0 row7" >7</th>
      <td id="T_1e574_row7_col0" class="data row7 col0" >0.00</td>
      <td id="T_1e574_row7_col1" class="data row7 col1" >0.88</td>
      <td id="T_1e574_row7_col2" class="data row7 col2" >0.88</td>
      <td id="T_1e574_row7_col3" class="data row7 col3" >0.88</td>
      <td id="T_1e574_row7_col4" class="data row7 col4" >0.88</td>
      <td id="T_1e574_row7_col5" class="data row7 col5" >0.88</td>
      <td id="T_1e574_row7_col6" class="data row7 col6" >0.88</td>
      <td id="T_1e574_row7_col7" class="data row7 col7" >0.88</td>
      <td id="T_1e574_row7_col8" class="data row7 col8" >0.88</td>
      <td id="T_1e574_row7_col9" class="data row7 col9" >0.88</td>
      <td id="T_1e574_row7_col10" class="data row7 col10" >0.88</td>
      <td id="T_1e574_row7_col11" class="data row7 col11" >0.88</td>
    </tr>
    <tr>
      <th id="T_1e574_level0_row8" class="row_heading level0 row8" >8</th>
      <td id="T_1e574_row8_col0" class="data row8 col0" >0.00</td>
      <td id="T_1e574_row8_col1" class="data row8 col1" >0.88</td>
      <td id="T_1e574_row8_col2" class="data row8 col2" >0.88</td>
      <td id="T_1e574_row8_col3" class="data row8 col3" >0.88</td>
      <td id="T_1e574_row8_col4" class="data row8 col4" >0.88</td>
      <td id="T_1e574_row8_col5" class="data row8 col5" >0.88</td>
      <td id="T_1e574_row8_col6" class="data row8 col6" >0.88</td>
      <td id="T_1e574_row8_col7" class="data row8 col7" >0.88</td>
      <td id="T_1e574_row8_col8" class="data row8 col8" >0.88</td>
      <td id="T_1e574_row8_col9" class="data row8 col9" >0.88</td>
      <td id="T_1e574_row8_col10" class="data row8 col10" >0.88</td>
      <td id="T_1e574_row8_col11" class="data row8 col11" >0.88</td>
    </tr>
    <tr>
      <th id="T_1e574_level0_row9" class="row_heading level0 row9" >9</th>
      <td id="T_1e574_row9_col0" class="data row9 col0" >0.00</td>
      <td id="T_1e574_row9_col1" class="data row9 col1" >0.88</td>
      <td id="T_1e574_row9_col2" class="data row9 col2" >0.88</td>
      <td id="T_1e574_row9_col3" class="data row9 col3" >0.88</td>
      <td id="T_1e574_row9_col4" class="data row9 col4" >0.88</td>
      <td id="T_1e574_row9_col5" class="data row9 col5" >0.88</td>
      <td id="T_1e574_row9_col6" class="data row9 col6" >0.88</td>
      <td id="T_1e574_row9_col7" class="data row9 col7" >0.88</td>
      <td id="T_1e574_row9_col8" class="data row9 col8" >0.88</td>
      <td id="T_1e574_row9_col9" class="data row9 col9" >0.88</td>
      <td id="T_1e574_row9_col10" class="data row9 col10" >0.88</td>
      <td id="T_1e574_row9_col11" class="data row9 col11" >0.88</td>
    </tr>
    <tr>
      <th id="T_1e574_level0_row10" class="row_heading level0 row10" >10</th>
      <td id="T_1e574_row10_col0" class="data row10 col0" >0.00</td>
      <td id="T_1e574_row10_col1" class="data row10 col1" >0.88</td>
      <td id="T_1e574_row10_col2" class="data row10 col2" >0.88</td>
      <td id="T_1e574_row10_col3" class="data row10 col3" >0.88</td>
      <td id="T_1e574_row10_col4" class="data row10 col4" >0.88</td>
      <td id="T_1e574_row10_col5" class="data row10 col5" >0.88</td>
      <td id="T_1e574_row10_col6" class="data row10 col6" >0.88</td>
      <td id="T_1e574_row10_col7" class="data row10 col7" >0.88</td>
      <td id="T_1e574_row10_col8" class="data row10 col8" >0.88</td>
      <td id="T_1e574_row10_col9" class="data row10 col9" >0.88</td>
      <td id="T_1e574_row10_col10" class="data row10 col10" >0.88</td>
      <td id="T_1e574_row10_col11" class="data row10 col11" >0.88</td>
    </tr>
    <tr>
      <th id="T_1e574_level0_row11" class="row_heading level0 row11" >11</th>
      <td id="T_1e574_row11_col0" class="data row11 col0" >0.00</td>
      <td id="T_1e574_row11_col1" class="data row11 col1" >0.88</td>
      <td id="T_1e574_row11_col2" class="data row11 col2" >0.88</td>
      <td id="T_1e574_row11_col3" class="data row11 col3" >0.88</td>
      <td id="T_1e574_row11_col4" class="data row11 col4" >0.88</td>
      <td id="T_1e574_row11_col5" class="data row11 col5" >0.88</td>
      <td id="T_1e574_row11_col6" class="data row11 col6" >0.88</td>
      <td id="T_1e574_row11_col7" class="data row11 col7" >0.88</td>
      <td id="T_1e574_row11_col8" class="data row11 col8" >0.88</td>
      <td id="T_1e574_row11_col9" class="data row11 col9" >0.88</td>
      <td id="T_1e574_row11_col10" class="data row11 col10" >0.88</td>
      <td id="T_1e574_row11_col11" class="data row11 col11" >0.88</td>
    </tr>
  </tbody>
</table>





```python
bondtree = bintree_pricing(payoff=wrapper_bond, ratetree=ratetreeT, cftree=cftree)
swaptree_alt = N - bondtree
format_bintree(swaptree_alt)
```




<style type="text/css">
</style>
<table id="T_1ae99">
  <thead>
    <tr>
      <th class="index_name level0" >time</th>
      <th id="T_1ae99_level0_col0" class="col_heading level0 col0" >0.00</th>
      <th id="T_1ae99_level0_col1" class="col_heading level0 col1" >0.25</th>
      <th id="T_1ae99_level0_col2" class="col_heading level0 col2" >0.50</th>
      <th id="T_1ae99_level0_col3" class="col_heading level0 col3" >0.75</th>
      <th id="T_1ae99_level0_col4" class="col_heading level0 col4" >1.00</th>
      <th id="T_1ae99_level0_col5" class="col_heading level0 col5" >1.25</th>
      <th id="T_1ae99_level0_col6" class="col_heading level0 col6" >1.50</th>
      <th id="T_1ae99_level0_col7" class="col_heading level0 col7" >1.75</th>
      <th id="T_1ae99_level0_col8" class="col_heading level0 col8" >2.00</th>
      <th id="T_1ae99_level0_col9" class="col_heading level0 col9" >2.25</th>
      <th id="T_1ae99_level0_col10" class="col_heading level0 col10" >2.50</th>
      <th id="T_1ae99_level0_col11" class="col_heading level0 col11" >2.75</th>
    </tr>
    <tr>
      <th class="index_name level0" >state</th>
      <th class="blank col0" >&nbsp;</th>
      <th class="blank col1" >&nbsp;</th>
      <th class="blank col2" >&nbsp;</th>
      <th class="blank col3" >&nbsp;</th>
      <th class="blank col4" >&nbsp;</th>
      <th class="blank col5" >&nbsp;</th>
      <th class="blank col6" >&nbsp;</th>
      <th class="blank col7" >&nbsp;</th>
      <th class="blank col8" >&nbsp;</th>
      <th class="blank col9" >&nbsp;</th>
      <th class="blank col10" >&nbsp;</th>
      <th class="blank col11" >&nbsp;</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th id="T_1ae99_level0_row0" class="row_heading level0 row0" >0</th>
      <td id="T_1ae99_row0_col0" class="data row0 col0" >-0.01</td>
      <td id="T_1ae99_row0_col1" class="data row0 col1" >1.55</td>
      <td id="T_1ae99_row0_col2" class="data row0 col2" >3.04</td>
      <td id="T_1ae99_row0_col3" class="data row0 col3" >4.52</td>
      <td id="T_1ae99_row0_col4" class="data row0 col4" >5.99</td>
      <td id="T_1ae99_row0_col5" class="data row0 col5" >7.51</td>
      <td id="T_1ae99_row0_col6" class="data row0 col6" >8.91</td>
      <td id="T_1ae99_row0_col7" class="data row0 col7" >9.94</td>
      <td id="T_1ae99_row0_col8" class="data row0 col8" >10.45</td>
      <td id="T_1ae99_row0_col9" class="data row0 col9" >10.36</td>
      <td id="T_1ae99_row0_col10" class="data row0 col10" >9.02</td>
      <td id="T_1ae99_row0_col11" class="data row0 col11" >5.89</td>
    </tr>
    <tr>
      <th id="T_1ae99_level0_row1" class="row_heading level0 row1" >1</th>
      <td id="T_1ae99_row1_col0" class="data row1 col0" ></td>
      <td id="T_1ae99_row1_col1" class="data row1 col1" >-2.34</td>
      <td id="T_1ae99_row1_col2" class="data row1 col2" >-1.01</td>
      <td id="T_1ae99_row1_col3" class="data row1 col3" >0.34</td>
      <td id="T_1ae99_row1_col4" class="data row1 col4" >1.70</td>
      <td id="T_1ae99_row1_col5" class="data row1 col5" >3.15</td>
      <td id="T_1ae99_row1_col6" class="data row1 col6" >4.55</td>
      <td id="T_1ae99_row1_col7" class="data row1 col7" >5.71</td>
      <td id="T_1ae99_row1_col8" class="data row1 col8" >6.47</td>
      <td id="T_1ae99_row1_col9" class="data row1 col9" >6.79</td>
      <td id="T_1ae99_row1_col10" class="data row1 col10" >6.12</td>
      <td id="T_1ae99_row1_col11" class="data row1 col11" >4.10</td>
    </tr>
    <tr>
      <th id="T_1ae99_level0_row2" class="row_heading level0 row2" >2</th>
      <td id="T_1ae99_row2_col0" class="data row2 col0" ></td>
      <td id="T_1ae99_row2_col1" class="data row2 col1" ></td>
      <td id="T_1ae99_row2_col2" class="data row2 col2" >-4.03</td>
      <td id="T_1ae99_row2_col3" class="data row2 col3" >-2.85</td>
      <td id="T_1ae99_row2_col4" class="data row2 col4" >-1.63</td>
      <td id="T_1ae99_row2_col5" class="data row2 col5" >-0.33</td>
      <td id="T_1ae99_row2_col6" class="data row2 col6" >0.98</td>
      <td id="T_1ae99_row2_col7" class="data row2 col7" >2.16</td>
      <td id="T_1ae99_row2_col8" class="data row2 col8" >3.11</td>
      <td id="T_1ae99_row2_col9" class="data row2 col9" >3.75</td>
      <td id="T_1ae99_row2_col10" class="data row2 col10" >3.68</td>
      <td id="T_1ae99_row2_col11" class="data row2 col11" >2.58</td>
    </tr>
    <tr>
      <th id="T_1ae99_level0_row3" class="row_heading level0 row3" >3</th>
      <td id="T_1ae99_row3_col0" class="data row3 col0" ></td>
      <td id="T_1ae99_row3_col1" class="data row3 col1" ></td>
      <td id="T_1ae99_row3_col2" class="data row3 col2" ></td>
      <td id="T_1ae99_row3_col3" class="data row3 col3" >-5.06</td>
      <td id="T_1ae99_row3_col4" class="data row3 col4" >-3.98</td>
      <td id="T_1ae99_row3_col5" class="data row3 col5" >-2.84</td>
      <td id="T_1ae99_row3_col6" class="data row3 col6" >-1.68</td>
      <td id="T_1ae99_row3_col7" class="data row3 col7" >-0.57</td>
      <td id="T_1ae99_row3_col8" class="data row3 col8" >0.42</td>
      <td id="T_1ae99_row3_col9" class="data row3 col9" >1.25</td>
      <td id="T_1ae99_row3_col10" class="data row3 col10" >1.66</td>
      <td id="T_1ae99_row3_col11" class="data row3 col11" >1.39</td>
    </tr>
    <tr>
      <th id="T_1ae99_level0_row4" class="row_heading level0 row4" >4</th>
      <td id="T_1ae99_row4_col0" class="data row4 col0" ></td>
      <td id="T_1ae99_row4_col1" class="data row4 col1" ></td>
      <td id="T_1ae99_row4_col2" class="data row4 col2" ></td>
      <td id="T_1ae99_row4_col3" class="data row4 col3" ></td>
      <td id="T_1ae99_row4_col4" class="data row4 col4" >-5.48</td>
      <td id="T_1ae99_row4_col5" class="data row4 col5" >-4.47</td>
      <td id="T_1ae99_row4_col6" class="data row4 col6" >-3.44</td>
      <td id="T_1ae99_row4_col7" class="data row4 col7" >-2.45</td>
      <td id="T_1ae99_row4_col8" class="data row4 col8" >-1.51</td>
      <td id="T_1ae99_row4_col9" class="data row4 col9" >-0.64</td>
      <td id="T_1ae99_row4_col10" class="data row4 col10" >-0.00</td>
      <td id="T_1ae99_row4_col11" class="data row4 col11" >0.29</td>
    </tr>
    <tr>
      <th id="T_1ae99_level0_row5" class="row_heading level0 row5" >5</th>
      <td id="T_1ae99_row5_col0" class="data row5 col0" ></td>
      <td id="T_1ae99_row5_col1" class="data row5 col1" ></td>
      <td id="T_1ae99_row5_col2" class="data row5 col2" ></td>
      <td id="T_1ae99_row5_col3" class="data row5 col3" ></td>
      <td id="T_1ae99_row5_col4" class="data row5 col4" ></td>
      <td id="T_1ae99_row5_col5" class="data row5 col5" >-5.31</td>
      <td id="T_1ae99_row5_col6" class="data row5 col6" >-4.36</td>
      <td id="T_1ae99_row5_col7" class="data row5 col7" >-3.42</td>
      <td id="T_1ae99_row5_col8" class="data row5 col8" >-2.51</td>
      <td id="T_1ae99_row5_col9" class="data row5 col9" >-1.64</td>
      <td id="T_1ae99_row5_col10" class="data row5 col10" >-0.88</td>
      <td id="T_1ae99_row5_col11" class="data row5 col11" >-0.30</td>
    </tr>
    <tr>
      <th id="T_1ae99_level0_row6" class="row_heading level0 row6" >6</th>
      <td id="T_1ae99_row6_col0" class="data row6 col0" ></td>
      <td id="T_1ae99_row6_col1" class="data row6 col1" ></td>
      <td id="T_1ae99_row6_col2" class="data row6 col2" ></td>
      <td id="T_1ae99_row6_col3" class="data row6 col3" ></td>
      <td id="T_1ae99_row6_col4" class="data row6 col4" ></td>
      <td id="T_1ae99_row6_col5" class="data row6 col5" ></td>
      <td id="T_1ae99_row6_col6" class="data row6 col6" >-4.81</td>
      <td id="T_1ae99_row6_col7" class="data row6 col7" >-3.90</td>
      <td id="T_1ae99_row6_col8" class="data row6 col8" >-3.01</td>
      <td id="T_1ae99_row6_col9" class="data row6 col9" >-2.14</td>
      <td id="T_1ae99_row6_col10" class="data row6 col10" >-1.32</td>
      <td id="T_1ae99_row6_col11" class="data row6 col11" >-0.59</td>
    </tr>
    <tr>
      <th id="T_1ae99_level0_row7" class="row_heading level0 row7" >7</th>
      <td id="T_1ae99_row7_col0" class="data row7 col0" ></td>
      <td id="T_1ae99_row7_col1" class="data row7 col1" ></td>
      <td id="T_1ae99_row7_col2" class="data row7 col2" ></td>
      <td id="T_1ae99_row7_col3" class="data row7 col3" ></td>
      <td id="T_1ae99_row7_col4" class="data row7 col4" ></td>
      <td id="T_1ae99_row7_col5" class="data row7 col5" ></td>
      <td id="T_1ae99_row7_col6" class="data row7 col6" ></td>
      <td id="T_1ae99_row7_col7" class="data row7 col7" >-4.14</td>
      <td id="T_1ae99_row7_col8" class="data row7 col8" >-3.25</td>
      <td id="T_1ae99_row7_col9" class="data row7 col9" >-2.38</td>
      <td id="T_1ae99_row7_col10" class="data row7 col10" >-1.53</td>
      <td id="T_1ae99_row7_col11" class="data row7 col11" >-0.73</td>
    </tr>
    <tr>
      <th id="T_1ae99_level0_row8" class="row_heading level0 row8" >8</th>
      <td id="T_1ae99_row8_col0" class="data row8 col0" ></td>
      <td id="T_1ae99_row8_col1" class="data row8 col1" ></td>
      <td id="T_1ae99_row8_col2" class="data row8 col2" ></td>
      <td id="T_1ae99_row8_col3" class="data row8 col3" ></td>
      <td id="T_1ae99_row8_col4" class="data row8 col4" ></td>
      <td id="T_1ae99_row8_col5" class="data row8 col5" ></td>
      <td id="T_1ae99_row8_col6" class="data row8 col6" ></td>
      <td id="T_1ae99_row8_col7" class="data row8 col7" ></td>
      <td id="T_1ae99_row8_col8" class="data row8 col8" >-3.38</td>
      <td id="T_1ae99_row8_col9" class="data row8 col9" >-2.50</td>
      <td id="T_1ae99_row8_col10" class="data row8 col10" >-1.64</td>
      <td id="T_1ae99_row8_col11" class="data row8 col11" >-0.80</td>
    </tr>
    <tr>
      <th id="T_1ae99_level0_row9" class="row_heading level0 row9" >9</th>
      <td id="T_1ae99_row9_col0" class="data row9 col0" ></td>
      <td id="T_1ae99_row9_col1" class="data row9 col1" ></td>
      <td id="T_1ae99_row9_col2" class="data row9 col2" ></td>
      <td id="T_1ae99_row9_col3" class="data row9 col3" ></td>
      <td id="T_1ae99_row9_col4" class="data row9 col4" ></td>
      <td id="T_1ae99_row9_col5" class="data row9 col5" ></td>
      <td id="T_1ae99_row9_col6" class="data row9 col6" ></td>
      <td id="T_1ae99_row9_col7" class="data row9 col7" ></td>
      <td id="T_1ae99_row9_col8" class="data row9 col8" ></td>
      <td id="T_1ae99_row9_col9" class="data row9 col9" >-2.56</td>
      <td id="T_1ae99_row9_col10" class="data row9 col10" >-1.69</td>
      <td id="T_1ae99_row9_col11" class="data row9 col11" >-0.84</td>
    </tr>
    <tr>
      <th id="T_1ae99_level0_row10" class="row_heading level0 row10" >10</th>
      <td id="T_1ae99_row10_col0" class="data row10 col0" ></td>
      <td id="T_1ae99_row10_col1" class="data row10 col1" ></td>
      <td id="T_1ae99_row10_col2" class="data row10 col2" ></td>
      <td id="T_1ae99_row10_col3" class="data row10 col3" ></td>
      <td id="T_1ae99_row10_col4" class="data row10 col4" ></td>
      <td id="T_1ae99_row10_col5" class="data row10 col5" ></td>
      <td id="T_1ae99_row10_col6" class="data row10 col6" ></td>
      <td id="T_1ae99_row10_col7" class="data row10 col7" ></td>
      <td id="T_1ae99_row10_col8" class="data row10 col8" ></td>
      <td id="T_1ae99_row10_col9" class="data row10 col9" ></td>
      <td id="T_1ae99_row10_col10" class="data row10 col10" >-1.72</td>
      <td id="T_1ae99_row10_col11" class="data row10 col11" >-0.85</td>
    </tr>
    <tr>
      <th id="T_1ae99_level0_row11" class="row_heading level0 row11" >11</th>
      <td id="T_1ae99_row11_col0" class="data row11 col0" ></td>
      <td id="T_1ae99_row11_col1" class="data row11 col1" ></td>
      <td id="T_1ae99_row11_col2" class="data row11 col2" ></td>
      <td id="T_1ae99_row11_col3" class="data row11 col3" ></td>
      <td id="T_1ae99_row11_col4" class="data row11 col4" ></td>
      <td id="T_1ae99_row11_col5" class="data row11 col5" ></td>
      <td id="T_1ae99_row11_col6" class="data row11 col6" ></td>
      <td id="T_1ae99_row11_col7" class="data row11 col7" ></td>
      <td id="T_1ae99_row11_col8" class="data row11 col8" ></td>
      <td id="T_1ae99_row11_col9" class="data row11 col9" ></td>
      <td id="T_1ae99_row11_col10" class="data row11 col10" ></td>
      <td id="T_1ae99_row11_col11" class="data row11 col11" >-0.87</td>
    </tr>
  </tbody>
</table>




As expected, we have matched the value of the swap tree.

This method of valuing the swap is quite useful, as the first method can only be done via binomial tree if the frequency of the tree matches the frequency of the swap payments. Contrast that with the bond replication approach which can be done for any granularity of time grid.

***

# 5. Treasury Futures

## 5.1

Consider a bond with
* Market (clean) price of 97.50
* Futures conversion ratio of 0.95
* Futures price is 103.

It has
* Coupon rate of 1\% 
* face value of 100.

As for the coupon timing,
* The bond paid a coupon 38 days ago.
* It will pay another coupon in 144 days.
* The repo rate over the next 90 days is (annualized in the usual way) 5\%.

Calculate the forward price of the bond for delivery in 90 days. 

## 5.2

Calculate the gross and net basis of the bond.

## 5.3

*Unrelated to 5.1 and 5.2...*

Suppose you are pricing a futures contract on the 5-year treasury. The contract expires in 1 year, $T=1$.

Based on the deliverable bonds, we find the CTD prices at expiration as listed in the table for each state.

| state |CTD Converted Clean Price at $T=1$ |
|--------|--------|
|0   | 99.05|
|1       |102.47 |
|2       | 105.31|
|3       |107.62 |
| 4      |109.79|

Using the table, calculate the price of the futures contract.

*Note that there is no need to build trees of the underlying bonds and figure out the CTD for each state. All that has been done, and you have the table above.*

***

# **<span style="color:red">Solution 5</span>**

#### Provided Data


```python
N = 100
spot = 97.50
cpn = .01
repo = .25*.05

fut = 103
convert = .95
```

## **<span style="color:red">5.1</span>**

Note that there is no interim coupon happening during the forward interval.

Thus, the calculation is quite simple, as discussed in Solution 3.


```python
acc0 = N * cpn * 38/(38+144)
acc1 = N * cpn * 144/(38+144)

fwd = (spot + acc0) * (1+repo) - acc1

tab = pd.DataFrame(spot,index=['bond metrics'],columns=['spot price'])
tab['forward price'] = fwd
tab['converted futures price'] = fut * convert
tab.style.format('{:.2f}')
```




<style type="text/css">
</style>
<table id="T_ef053">
  <thead>
    <tr>
      <th class="blank level0" >&nbsp;</th>
      <th id="T_ef053_level0_col0" class="col_heading level0 col0" >spot price</th>
      <th id="T_ef053_level0_col1" class="col_heading level0 col1" >forward price</th>
      <th id="T_ef053_level0_col2" class="col_heading level0 col2" >converted futures price</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th id="T_ef053_level0_row0" class="row_heading level0 row0" >bond metrics</th>
      <td id="T_ef053_row0_col0" class="data row0 col0" >97.50</td>
      <td id="T_ef053_row0_col1" class="data row0 col1" >98.14</td>
      <td id="T_ef053_row0_col2" class="data row0 col2" >97.85</td>
    </tr>
  </tbody>
</table>




## **<span style="color:red">5.2</span>**


```python
tab[['gross basis','net basis']] = np.array([spot, fwd]) - fut * convert
tab.style.format('{:.2f}')
```




<style type="text/css">
</style>
<table id="T_2702f">
  <thead>
    <tr>
      <th class="blank level0" >&nbsp;</th>
      <th id="T_2702f_level0_col0" class="col_heading level0 col0" >spot price</th>
      <th id="T_2702f_level0_col1" class="col_heading level0 col1" >forward price</th>
      <th id="T_2702f_level0_col2" class="col_heading level0 col2" >converted futures price</th>
      <th id="T_2702f_level0_col3" class="col_heading level0 col3" >gross basis</th>
      <th id="T_2702f_level0_col4" class="col_heading level0 col4" >net basis</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th id="T_2702f_level0_row0" class="row_heading level0 row0" >bond metrics</th>
      <td id="T_2702f_row0_col0" class="data row0 col0" >97.50</td>
      <td id="T_2702f_row0_col1" class="data row0 col1" >98.14</td>
      <td id="T_2702f_row0_col2" class="data row0 col2" >97.85</td>
      <td id="T_2702f_row0_col3" class="data row0 col3" >-0.35</td>
      <td id="T_2702f_row0_col4" class="data row0 col4" >0.29</td>
    </tr>
  </tbody>
</table>




## **<span style="color:red">5.3</span>**

Recall that for a tree of futures prices, there is no discounting as we move back through the tree.

Thus, in the function below, we set the rate tree to zero.


```python
T = 1

terminal_values = pd.Series([
    99.05,
    102.47,
    105.31,
    107.62,
    109.79
], index=ratetree[T].dropna().index)

payoff = lambda r: terminal_values
```


```python
tsteps = int(T/dt)+1
ratetreeT = ratetree.replace(0).iloc[:tsteps,:tsteps]
ratetreeT[~ratetreeT.isna()] = 0
```


```python
futtree = bintree_pricing(payoff,ratetreeT)
format_bintree(futtree)
```




<style type="text/css">
</style>
<table id="T_f207c">
  <thead>
    <tr>
      <th class="index_name level0" >time</th>
      <th id="T_f207c_level0_col0" class="col_heading level0 col0" >0.00</th>
      <th id="T_f207c_level0_col1" class="col_heading level0 col1" >0.25</th>
      <th id="T_f207c_level0_col2" class="col_heading level0 col2" >0.50</th>
      <th id="T_f207c_level0_col3" class="col_heading level0 col3" >0.75</th>
      <th id="T_f207c_level0_col4" class="col_heading level0 col4" >1.00</th>
    </tr>
    <tr>
      <th class="index_name level0" >state</th>
      <th class="blank col0" >&nbsp;</th>
      <th class="blank col1" >&nbsp;</th>
      <th class="blank col2" >&nbsp;</th>
      <th class="blank col3" >&nbsp;</th>
      <th class="blank col4" >&nbsp;</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th id="T_f207c_level0_row0" class="row_heading level0 row0" >0</th>
      <td id="T_f207c_row0_col0" class="data row0 col0" >105.07</td>
      <td id="T_f207c_row0_col1" class="data row0 col1" >103.75</td>
      <td id="T_f207c_row0_col2" class="data row0 col2" >102.32</td>
      <td id="T_f207c_row0_col3" class="data row0 col3" >100.76</td>
      <td id="T_f207c_row0_col4" class="data row0 col4" >99.05</td>
    </tr>
    <tr>
      <th id="T_f207c_level0_row1" class="row_heading level0 row1" >1</th>
      <td id="T_f207c_row1_col0" class="data row1 col0" ></td>
      <td id="T_f207c_row1_col1" class="data row1 col1" >106.38</td>
      <td id="T_f207c_row1_col2" class="data row1 col2" >105.18</td>
      <td id="T_f207c_row1_col3" class="data row1 col3" >103.89</td>
      <td id="T_f207c_row1_col4" class="data row1 col4" >102.47</td>
    </tr>
    <tr>
      <th id="T_f207c_level0_row2" class="row_heading level0 row2" >2</th>
      <td id="T_f207c_row2_col0" class="data row2 col0" ></td>
      <td id="T_f207c_row2_col1" class="data row2 col1" ></td>
      <td id="T_f207c_row2_col2" class="data row2 col2" >107.59</td>
      <td id="T_f207c_row2_col3" class="data row2 col3" >106.47</td>
      <td id="T_f207c_row2_col4" class="data row2 col4" >105.31</td>
    </tr>
    <tr>
      <th id="T_f207c_level0_row3" class="row_heading level0 row3" >3</th>
      <td id="T_f207c_row3_col0" class="data row3 col0" ></td>
      <td id="T_f207c_row3_col1" class="data row3 col1" ></td>
      <td id="T_f207c_row3_col2" class="data row3 col2" ></td>
      <td id="T_f207c_row3_col3" class="data row3 col3" >108.71</td>
      <td id="T_f207c_row3_col4" class="data row3 col4" >107.62</td>
    </tr>
    <tr>
      <th id="T_f207c_level0_row4" class="row_heading level0 row4" >4</th>
      <td id="T_f207c_row4_col0" class="data row4 col0" ></td>
      <td id="T_f207c_row4_col1" class="data row4 col1" ></td>
      <td id="T_f207c_row4_col2" class="data row4 col2" ></td>
      <td id="T_f207c_row4_col3" class="data row4 col3" ></td>
      <td id="T_f207c_row4_col4" class="data row4 col4" >109.79</td>
    </tr>
  </tbody>
</table>




***

# 6. Fitting the BDT Tree

Fit a BDT Tree. We will not use it for any other questions on the exam. 


## 1
Use the discount rates provided in the data file.

Instead of using the forward volatilities, use a constant $\sigma=0.50$ at every step.

Report the estimated thetas.

## 2
Regardless of your previous answer, suppose your estimated thetas are all equal to 0.5.

Display the interest-rate tree.

***

# **<span style="color:red">Solution 6</span>**

## **<span style="color:red">6.1</span>**


```python
sigma = .50
thetas, ratetree = estimate_theta(sigma,curves['discounts'])
thetas.to_frame().T.style.format('{:.2%}',na_rep='').format_index('{:.2f}',axis=1)
```




<style type="text/css">
</style>
<table id="T_85d08">
  <thead>
    <tr>
      <th class="index_name level0" >time</th>
      <th id="T_85d08_level0_col0" class="col_heading level0 col0" >0.00</th>
      <th id="T_85d08_level0_col1" class="col_heading level0 col1" >0.25</th>
      <th id="T_85d08_level0_col2" class="col_heading level0 col2" >0.50</th>
      <th id="T_85d08_level0_col3" class="col_heading level0 col3" >0.75</th>
      <th id="T_85d08_level0_col4" class="col_heading level0 col4" >1.00</th>
      <th id="T_85d08_level0_col5" class="col_heading level0 col5" >1.25</th>
      <th id="T_85d08_level0_col6" class="col_heading level0 col6" >1.50</th>
      <th id="T_85d08_level0_col7" class="col_heading level0 col7" >1.75</th>
      <th id="T_85d08_level0_col8" class="col_heading level0 col8" >2.00</th>
      <th id="T_85d08_level0_col9" class="col_heading level0 col9" >2.25</th>
      <th id="T_85d08_level0_col10" class="col_heading level0 col10" >2.50</th>
      <th id="T_85d08_level0_col11" class="col_heading level0 col11" >2.75</th>
      <th id="T_85d08_level0_col12" class="col_heading level0 col12" >3.00</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th id="T_85d08_level0_row0" class="row_heading level0 row0" >theta</th>
      <td id="T_85d08_row0_col0" class="data row0 col0" ></td>
      <td id="T_85d08_row0_col1" class="data row0 col1" >-21.68%</td>
      <td id="T_85d08_row0_col2" class="data row0 col2" >-46.23%</td>
      <td id="T_85d08_row0_col3" class="data row0 col3" >-53.73%</td>
      <td id="T_85d08_row0_col4" class="data row0 col4" >-82.74%</td>
      <td id="T_85d08_row0_col5" class="data row0 col5" >-52.01%</td>
      <td id="T_85d08_row0_col6" class="data row0 col6" >-22.63%</td>
      <td id="T_85d08_row0_col7" class="data row0 col7" >-24.76%</td>
      <td id="T_85d08_row0_col8" class="data row0 col8" >-44.13%</td>
      <td id="T_85d08_row0_col9" class="data row0 col9" >1.63%</td>
      <td id="T_85d08_row0_col10" class="data row0 col10" >-7.46%</td>
      <td id="T_85d08_row0_col11" class="data row0 col11" >-6.54%</td>
      <td id="T_85d08_row0_col12" class="data row0 col12" >-20.62%</td>
    </tr>
  </tbody>
</table>




#### Note
Note that in the table above, the theta value at $t$ is used to determine the tree values at $t$. This is different than how it is sometimes described in the notes, where $\theta_t$ determines values at $t+1$. The table lables things this way for convenience, but it doesn't matter if they are labeled at a shifted index.

## **<span style="color:red">6.2</span>**


```python
format_bintree(ratetree,'{:.2%}')
```




<style type="text/css">
</style>
<table id="T_fd6ad">
  <thead>
    <tr>
      <th class="index_name level0" >time</th>
      <th id="T_fd6ad_level0_col0" class="col_heading level0 col0" >0.00</th>
      <th id="T_fd6ad_level0_col1" class="col_heading level0 col1" >0.25</th>
      <th id="T_fd6ad_level0_col2" class="col_heading level0 col2" >0.50</th>
      <th id="T_fd6ad_level0_col3" class="col_heading level0 col3" >0.75</th>
      <th id="T_fd6ad_level0_col4" class="col_heading level0 col4" >1.00</th>
      <th id="T_fd6ad_level0_col5" class="col_heading level0 col5" >1.25</th>
      <th id="T_fd6ad_level0_col6" class="col_heading level0 col6" >1.50</th>
      <th id="T_fd6ad_level0_col7" class="col_heading level0 col7" >1.75</th>
      <th id="T_fd6ad_level0_col8" class="col_heading level0 col8" >2.00</th>
      <th id="T_fd6ad_level0_col9" class="col_heading level0 col9" >2.25</th>
      <th id="T_fd6ad_level0_col10" class="col_heading level0 col10" >2.50</th>
      <th id="T_fd6ad_level0_col11" class="col_heading level0 col11" >2.75</th>
      <th id="T_fd6ad_level0_col12" class="col_heading level0 col12" >3.00</th>
    </tr>
    <tr>
      <th class="index_name level0" >state</th>
      <th class="blank col0" >&nbsp;</th>
      <th class="blank col1" >&nbsp;</th>
      <th class="blank col2" >&nbsp;</th>
      <th class="blank col3" >&nbsp;</th>
      <th class="blank col4" >&nbsp;</th>
      <th class="blank col5" >&nbsp;</th>
      <th class="blank col6" >&nbsp;</th>
      <th class="blank col7" >&nbsp;</th>
      <th class="blank col8" >&nbsp;</th>
      <th class="blank col9" >&nbsp;</th>
      <th class="blank col10" >&nbsp;</th>
      <th class="blank col11" >&nbsp;</th>
      <th class="blank col12" >&nbsp;</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th id="T_fd6ad_level0_row0" class="row_heading level0 row0" >0</th>
      <td id="T_fd6ad_row0_col0" class="data row0 col0" >5.04%</td>
      <td id="T_fd6ad_row0_col1" class="data row0 col1" >6.13%</td>
      <td id="T_fd6ad_row0_col2" class="data row0 col2" >7.01%</td>
      <td id="T_fd6ad_row0_col3" class="data row0 col3" >7.87%</td>
      <td id="T_fd6ad_row0_col4" class="data row0 col4" >8.22%</td>
      <td id="T_fd6ad_row0_col5" class="data row0 col5" >9.27%</td>
      <td id="T_fd6ad_row0_col6" class="data row0 col6" >11.24%</td>
      <td id="T_fd6ad_row0_col7" class="data row0 col7" >13.57%</td>
      <td id="T_fd6ad_row0_col8" class="data row0 col8" >15.61%</td>
      <td id="T_fd6ad_row0_col9" class="data row0 col9" >20.12%</td>
      <td id="T_fd6ad_row0_col10" class="data row0 col10" >25.36%</td>
      <td id="T_fd6ad_row0_col11" class="data row0 col11" >32.03%</td>
      <td id="T_fd6ad_row0_col12" class="data row0 col12" >39.06%</td>
    </tr>
    <tr>
      <th id="T_fd6ad_level0_row1" class="row_heading level0 row1" >1</th>
      <td id="T_fd6ad_row1_col0" class="data row1 col0" ></td>
      <td id="T_fd6ad_row1_col1" class="data row1 col1" >3.72%</td>
      <td id="T_fd6ad_row1_col2" class="data row1 col2" >4.25%</td>
      <td id="T_fd6ad_row1_col3" class="data row1 col3" >4.77%</td>
      <td id="T_fd6ad_row1_col4" class="data row1 col4" >4.99%</td>
      <td id="T_fd6ad_row1_col5" class="data row1 col5" >5.62%</td>
      <td id="T_fd6ad_row1_col6" class="data row1 col6" >6.82%</td>
      <td id="T_fd6ad_row1_col7" class="data row1 col7" >8.23%</td>
      <td id="T_fd6ad_row1_col8" class="data row1 col8" >9.47%</td>
      <td id="T_fd6ad_row1_col9" class="data row1 col9" >12.20%</td>
      <td id="T_fd6ad_row1_col10" class="data row1 col10" >15.38%</td>
      <td id="T_fd6ad_row1_col11" class="data row1 col11" >19.43%</td>
      <td id="T_fd6ad_row1_col12" class="data row1 col12" >23.69%</td>
    </tr>
    <tr>
      <th id="T_fd6ad_level0_row2" class="row_heading level0 row2" >2</th>
      <td id="T_fd6ad_row2_col0" class="data row2 col0" ></td>
      <td id="T_fd6ad_row2_col1" class="data row2 col1" ></td>
      <td id="T_fd6ad_row2_col2" class="data row2 col2" >2.58%</td>
      <td id="T_fd6ad_row2_col3" class="data row2 col3" >2.90%</td>
      <td id="T_fd6ad_row2_col4" class="data row2 col4" >3.02%</td>
      <td id="T_fd6ad_row2_col5" class="data row2 col5" >3.41%</td>
      <td id="T_fd6ad_row2_col6" class="data row2 col6" >4.14%</td>
      <td id="T_fd6ad_row2_col7" class="data row2 col7" >4.99%</td>
      <td id="T_fd6ad_row2_col8" class="data row2 col8" >5.74%</td>
      <td id="T_fd6ad_row2_col9" class="data row2 col9" >7.40%</td>
      <td id="T_fd6ad_row2_col10" class="data row2 col10" >9.33%</td>
      <td id="T_fd6ad_row2_col11" class="data row2 col11" >11.78%</td>
      <td id="T_fd6ad_row2_col12" class="data row2 col12" >14.37%</td>
    </tr>
    <tr>
      <th id="T_fd6ad_level0_row3" class="row_heading level0 row3" >3</th>
      <td id="T_fd6ad_row3_col0" class="data row3 col0" ></td>
      <td id="T_fd6ad_row3_col1" class="data row3 col1" ></td>
      <td id="T_fd6ad_row3_col2" class="data row3 col2" ></td>
      <td id="T_fd6ad_row3_col3" class="data row3 col3" >1.76%</td>
      <td id="T_fd6ad_row3_col4" class="data row3 col4" >1.83%</td>
      <td id="T_fd6ad_row3_col5" class="data row3 col5" >2.07%</td>
      <td id="T_fd6ad_row3_col6" class="data row3 col6" >2.51%</td>
      <td id="T_fd6ad_row3_col7" class="data row3 col7" >3.03%</td>
      <td id="T_fd6ad_row3_col8" class="data row3 col8" >3.48%</td>
      <td id="T_fd6ad_row3_col9" class="data row3 col9" >4.49%</td>
      <td id="T_fd6ad_row3_col10" class="data row3 col10" >5.66%</td>
      <td id="T_fd6ad_row3_col11" class="data row3 col11" >7.15%</td>
      <td id="T_fd6ad_row3_col12" class="data row3 col12" >8.72%</td>
    </tr>
    <tr>
      <th id="T_fd6ad_level0_row4" class="row_heading level0 row4" >4</th>
      <td id="T_fd6ad_row4_col0" class="data row4 col0" ></td>
      <td id="T_fd6ad_row4_col1" class="data row4 col1" ></td>
      <td id="T_fd6ad_row4_col2" class="data row4 col2" ></td>
      <td id="T_fd6ad_row4_col3" class="data row4 col3" ></td>
      <td id="T_fd6ad_row4_col4" class="data row4 col4" >1.11%</td>
      <td id="T_fd6ad_row4_col5" class="data row4 col5" >1.25%</td>
      <td id="T_fd6ad_row4_col6" class="data row4 col6" >1.52%</td>
      <td id="T_fd6ad_row4_col7" class="data row4 col7" >1.84%</td>
      <td id="T_fd6ad_row4_col8" class="data row4 col8" >2.11%</td>
      <td id="T_fd6ad_row4_col9" class="data row4 col9" >2.72%</td>
      <td id="T_fd6ad_row4_col10" class="data row4 col10" >3.43%</td>
      <td id="T_fd6ad_row4_col11" class="data row4 col11" >4.33%</td>
      <td id="T_fd6ad_row4_col12" class="data row4 col12" >5.29%</td>
    </tr>
    <tr>
      <th id="T_fd6ad_level0_row5" class="row_heading level0 row5" >5</th>
      <td id="T_fd6ad_row5_col0" class="data row5 col0" ></td>
      <td id="T_fd6ad_row5_col1" class="data row5 col1" ></td>
      <td id="T_fd6ad_row5_col2" class="data row5 col2" ></td>
      <td id="T_fd6ad_row5_col3" class="data row5 col3" ></td>
      <td id="T_fd6ad_row5_col4" class="data row5 col4" ></td>
      <td id="T_fd6ad_row5_col5" class="data row5 col5" >0.76%</td>
      <td id="T_fd6ad_row5_col6" class="data row5 col6" >0.92%</td>
      <td id="T_fd6ad_row5_col7" class="data row5 col7" >1.11%</td>
      <td id="T_fd6ad_row5_col8" class="data row5 col8" >1.28%</td>
      <td id="T_fd6ad_row5_col9" class="data row5 col9" >1.65%</td>
      <td id="T_fd6ad_row5_col10" class="data row5 col10" >2.08%</td>
      <td id="T_fd6ad_row5_col11" class="data row5 col11" >2.63%</td>
      <td id="T_fd6ad_row5_col12" class="data row5 col12" >3.21%</td>
    </tr>
    <tr>
      <th id="T_fd6ad_level0_row6" class="row_heading level0 row6" >6</th>
      <td id="T_fd6ad_row6_col0" class="data row6 col0" ></td>
      <td id="T_fd6ad_row6_col1" class="data row6 col1" ></td>
      <td id="T_fd6ad_row6_col2" class="data row6 col2" ></td>
      <td id="T_fd6ad_row6_col3" class="data row6 col3" ></td>
      <td id="T_fd6ad_row6_col4" class="data row6 col4" ></td>
      <td id="T_fd6ad_row6_col5" class="data row6 col5" ></td>
      <td id="T_fd6ad_row6_col6" class="data row6 col6" >0.56%</td>
      <td id="T_fd6ad_row6_col7" class="data row6 col7" >0.68%</td>
      <td id="T_fd6ad_row6_col8" class="data row6 col8" >0.78%</td>
      <td id="T_fd6ad_row6_col9" class="data row6 col9" >1.00%</td>
      <td id="T_fd6ad_row6_col10" class="data row6 col10" >1.26%</td>
      <td id="T_fd6ad_row6_col11" class="data row6 col11" >1.59%</td>
      <td id="T_fd6ad_row6_col12" class="data row6 col12" >1.94%</td>
    </tr>
    <tr>
      <th id="T_fd6ad_level0_row7" class="row_heading level0 row7" >7</th>
      <td id="T_fd6ad_row7_col0" class="data row7 col0" ></td>
      <td id="T_fd6ad_row7_col1" class="data row7 col1" ></td>
      <td id="T_fd6ad_row7_col2" class="data row7 col2" ></td>
      <td id="T_fd6ad_row7_col3" class="data row7 col3" ></td>
      <td id="T_fd6ad_row7_col4" class="data row7 col4" ></td>
      <td id="T_fd6ad_row7_col5" class="data row7 col5" ></td>
      <td id="T_fd6ad_row7_col6" class="data row7 col6" ></td>
      <td id="T_fd6ad_row7_col7" class="data row7 col7" >0.41%</td>
      <td id="T_fd6ad_row7_col8" class="data row7 col8" >0.47%</td>
      <td id="T_fd6ad_row7_col9" class="data row7 col9" >0.61%</td>
      <td id="T_fd6ad_row7_col10" class="data row7 col10" >0.77%</td>
      <td id="T_fd6ad_row7_col11" class="data row7 col11" >0.97%</td>
      <td id="T_fd6ad_row7_col12" class="data row7 col12" >1.18%</td>
    </tr>
    <tr>
      <th id="T_fd6ad_level0_row8" class="row_heading level0 row8" >8</th>
      <td id="T_fd6ad_row8_col0" class="data row8 col0" ></td>
      <td id="T_fd6ad_row8_col1" class="data row8 col1" ></td>
      <td id="T_fd6ad_row8_col2" class="data row8 col2" ></td>
      <td id="T_fd6ad_row8_col3" class="data row8 col3" ></td>
      <td id="T_fd6ad_row8_col4" class="data row8 col4" ></td>
      <td id="T_fd6ad_row8_col5" class="data row8 col5" ></td>
      <td id="T_fd6ad_row8_col6" class="data row8 col6" ></td>
      <td id="T_fd6ad_row8_col7" class="data row8 col7" ></td>
      <td id="T_fd6ad_row8_col8" class="data row8 col8" >0.29%</td>
      <td id="T_fd6ad_row8_col9" class="data row8 col9" >0.37%</td>
      <td id="T_fd6ad_row8_col10" class="data row8 col10" >0.46%</td>
      <td id="T_fd6ad_row8_col11" class="data row8 col11" >0.59%</td>
      <td id="T_fd6ad_row8_col12" class="data row8 col12" >0.72%</td>
    </tr>
    <tr>
      <th id="T_fd6ad_level0_row9" class="row_heading level0 row9" >9</th>
      <td id="T_fd6ad_row9_col0" class="data row9 col0" ></td>
      <td id="T_fd6ad_row9_col1" class="data row9 col1" ></td>
      <td id="T_fd6ad_row9_col2" class="data row9 col2" ></td>
      <td id="T_fd6ad_row9_col3" class="data row9 col3" ></td>
      <td id="T_fd6ad_row9_col4" class="data row9 col4" ></td>
      <td id="T_fd6ad_row9_col5" class="data row9 col5" ></td>
      <td id="T_fd6ad_row9_col6" class="data row9 col6" ></td>
      <td id="T_fd6ad_row9_col7" class="data row9 col7" ></td>
      <td id="T_fd6ad_row9_col8" class="data row9 col8" ></td>
      <td id="T_fd6ad_row9_col9" class="data row9 col9" >0.22%</td>
      <td id="T_fd6ad_row9_col10" class="data row9 col10" >0.28%</td>
      <td id="T_fd6ad_row9_col11" class="data row9 col11" >0.36%</td>
      <td id="T_fd6ad_row9_col12" class="data row9 col12" >0.43%</td>
    </tr>
    <tr>
      <th id="T_fd6ad_level0_row10" class="row_heading level0 row10" >10</th>
      <td id="T_fd6ad_row10_col0" class="data row10 col0" ></td>
      <td id="T_fd6ad_row10_col1" class="data row10 col1" ></td>
      <td id="T_fd6ad_row10_col2" class="data row10 col2" ></td>
      <td id="T_fd6ad_row10_col3" class="data row10 col3" ></td>
      <td id="T_fd6ad_row10_col4" class="data row10 col4" ></td>
      <td id="T_fd6ad_row10_col5" class="data row10 col5" ></td>
      <td id="T_fd6ad_row10_col6" class="data row10 col6" ></td>
      <td id="T_fd6ad_row10_col7" class="data row10 col7" ></td>
      <td id="T_fd6ad_row10_col8" class="data row10 col8" ></td>
      <td id="T_fd6ad_row10_col9" class="data row10 col9" ></td>
      <td id="T_fd6ad_row10_col10" class="data row10 col10" >0.17%</td>
      <td id="T_fd6ad_row10_col11" class="data row10 col11" >0.22%</td>
      <td id="T_fd6ad_row10_col12" class="data row10 col12" >0.26%</td>
    </tr>
    <tr>
      <th id="T_fd6ad_level0_row11" class="row_heading level0 row11" >11</th>
      <td id="T_fd6ad_row11_col0" class="data row11 col0" ></td>
      <td id="T_fd6ad_row11_col1" class="data row11 col1" ></td>
      <td id="T_fd6ad_row11_col2" class="data row11 col2" ></td>
      <td id="T_fd6ad_row11_col3" class="data row11 col3" ></td>
      <td id="T_fd6ad_row11_col4" class="data row11 col4" ></td>
      <td id="T_fd6ad_row11_col5" class="data row11 col5" ></td>
      <td id="T_fd6ad_row11_col6" class="data row11 col6" ></td>
      <td id="T_fd6ad_row11_col7" class="data row11 col7" ></td>
      <td id="T_fd6ad_row11_col8" class="data row11 col8" ></td>
      <td id="T_fd6ad_row11_col9" class="data row11 col9" ></td>
      <td id="T_fd6ad_row11_col10" class="data row11 col10" ></td>
      <td id="T_fd6ad_row11_col11" class="data row11 col11" >0.13%</td>
      <td id="T_fd6ad_row11_col12" class="data row11 col12" >0.16%</td>
    </tr>
    <tr>
      <th id="T_fd6ad_level0_row12" class="row_heading level0 row12" >12</th>
      <td id="T_fd6ad_row12_col0" class="data row12 col0" ></td>
      <td id="T_fd6ad_row12_col1" class="data row12 col1" ></td>
      <td id="T_fd6ad_row12_col2" class="data row12 col2" ></td>
      <td id="T_fd6ad_row12_col3" class="data row12 col3" ></td>
      <td id="T_fd6ad_row12_col4" class="data row12 col4" ></td>
      <td id="T_fd6ad_row12_col5" class="data row12 col5" ></td>
      <td id="T_fd6ad_row12_col6" class="data row12 col6" ></td>
      <td id="T_fd6ad_row12_col7" class="data row12 col7" ></td>
      <td id="T_fd6ad_row12_col8" class="data row12 col8" ></td>
      <td id="T_fd6ad_row12_col9" class="data row12 col9" ></td>
      <td id="T_fd6ad_row12_col10" class="data row12 col10" ></td>
      <td id="T_fd6ad_row12_col11" class="data row12 col11" ></td>
      <td id="T_fd6ad_row12_col12" class="data row12 col12" >0.10%</td>
    </tr>
  </tbody>
</table>




***

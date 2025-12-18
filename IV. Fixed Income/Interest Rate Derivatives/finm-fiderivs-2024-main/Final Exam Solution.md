---
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Final Exam Solution
---

# Final Exam Solution

## FINM 37500 - 2024

### UChicago Financial Mathematics

* Mark Hendricks
* hendricks@uchicago.edu

Thanks to

* Younghun Lee
* Jordan Sacks
* Burak Sekerci

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

# **<span style="color:red">Solution </span>**

## **<span style="color:red">1.1 </span>**

* drift - term structure of spot rates, or more specifically, discount factors.
* distribution - assumption. We assumed log-normal (BDT) in the course but mentioned that we could easily substitute Ho-Lee.
* nodes - fit these to implied-volatilities fit to caps. These vols set the nodes, given that probabilities were set without loss of generality.
* probabilities - assumed to be .5, with nodes then restricted such that term structure and vols fit.

## **<span style="color:red">1.2 </span>**

Any of these will work as a one-period underlying tree for the cap. Anything with differential values across the two interest rates will work, as seen in Homework 1.

## **<span style="color:red">1.3 </span>**

False. SABR is used to model implied volatilities across strikes. The model implications are not used to understand volatilities across expirys or tenors--rather, SABR is fit to each expiry-tenor combination.

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

# **<span style="color:red">Solution </span>**

```python
import warnings
warnings.filterwarnings('ignore',category=FutureWarning)

from datetime import date
from datetime import datetime

import sys
sys.path.insert(0, '../cmds')
from ficcvol import *
from binomial import *
from ratecurves import *
from treasury_cmds import compound_rate
from volskew import *
```

```python
# import matplotlib.pyplot as plt
# import seaborn as sns
# %matplotlib inline
# plt.rcParams['figure.figsize'] = (12,6)
# plt.rcParams['font.size'] = 15
# plt.rcParams['legend.fontsize'] = 13

# import matplotlib.ticker as mtick
# from matplotlib.ticker import (MultipleLocator,
#                                FormatStrFormatter,
#                                AutoMinorLocator)
```

## **<span style="color:red">2.1. </span>**

In using Black's formula for the caplet, be careful to use 

* $T-dt$ for the time-to-expiration, as the uncertainty of the floorlet is resolved one period early.
* the **forward vol** as a given caplet is priced correctly with forward vol.

### Note

Though the problem did not explicitly say the floorlet is quarterly (that is not said until `2.2`, it should be inferred given the curve data. Still, if one used a different frequency, that is fine. 

```python
N = 100
Tfloor = 3
isPayer=False
strikefloor = curves['swap rates'][Tfloor]
freqfloor = 4

fwdrate = curves.loc[Tfloor,'forwards']
fwdvol = curves.loc[Tfloor,'fwd vols']

Z = curves.loc[Tfloor,'discounts']
```

```python
floorlet_value = N * (1/freqfloor) * blacks_formula(Tfloor-1/freqfloor,fwdvol,strikefloor,fwdrate,Z,isCall=isPayer)
display(f'Floorlet value at T={Tfloor} is ${floorlet_value:.4f}.')
```

    'Floorlet value at T=3 is \$0.2749.'

## **<span style="color:red">2.2. </span>**

We use the same procedure as pricing the individual floorlet, but for all floorlets in the floor. Two considerations:

1. There is no floorlet expiring at $T=0.25$.
2. The **flat vol** at $T=3$ can be used in every floorlet to price the overall floor. Equivalently can use the forward vol at the expiration of each floorlet.

```python
maturities = np.arange(1/freqfloor,Tfloor+1/freqfloor,1/freqfloor)
floorlets = pd.DataFrame(index=maturities,columns=['price'])

for i,Tval in enumerate(floorlets.index):
    if i==0:
        floorlets.loc[Tval] = 0
    else:
        floorlets.loc[Tval] = N * (1/freqfloor) * blacks_formula(Tval-1/freqfloor,curves.loc[Tval,'fwd vols'],strikefloor,curves.loc[Tval,'forwards'],curves.loc[Tval,'discounts'],isCall=isPayer)                        
```

```python
floorlets.style.format('${:.6f}').format_index('{:.2f}')
```

<style type="text/css">
</style>
<table id="T_35195">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_35195_level0_col0" class="col_heading level0 col0" >price</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_35195_level0_row0" class="row_heading level0 row0" >0.25</th>
	  <td id="T_35195_row0_col0" class="data row0 col0" >\$0.000000</td>
	</tr>
	<tr>
	  <th id="T_35195_level0_row1" class="row_heading level0 row1" >0.50</th>
	  <td id="T_35195_row1_col0" class="data row1 col0" >\$0.000028</td>
	</tr>
	<tr>
	  <th id="T_35195_level0_row2" class="row_heading level0 row2" >0.75</th>
	  <td id="T_35195_row2_col0" class="data row2 col0" >\$0.006225</td>
	</tr>
	<tr>
	  <th id="T_35195_level0_row3" class="row_heading level0 row3" >1.00</th>
	  <td id="T_35195_row3_col0" class="data row3 col0" >\$0.033980</td>
	</tr>
	<tr>
	  <th id="T_35195_level0_row4" class="row_heading level0 row4" >1.25</th>
	  <td id="T_35195_row4_col0" class="data row4 col0" >\$0.141022</td>
	</tr>
	<tr>
	  <th id="T_35195_level0_row5" class="row_heading level0 row5" >1.50</th>
	  <td id="T_35195_row5_col0" class="data row5 col0" >\$0.183306</td>
	</tr>
	<tr>
	  <th id="T_35195_level0_row6" class="row_heading level0 row6" >1.75</th>
	  <td id="T_35195_row6_col0" class="data row6 col0" >\$0.216918</td>
	</tr>
	<tr>
	  <th id="T_35195_level0_row7" class="row_heading level0 row7" >2.00</th>
	  <td id="T_35195_row7_col0" class="data row7 col0" >\$0.239634</td>
	</tr>
	<tr>
	  <th id="T_35195_level0_row8" class="row_heading level0 row8" >2.25</th>
	  <td id="T_35195_row8_col0" class="data row8 col0" >\$0.272579</td>
	</tr>
	<tr>
	  <th id="T_35195_level0_row9" class="row_heading level0 row9" >2.50</th>
	  <td id="T_35195_row9_col0" class="data row9 col0" >\$0.273936</td>
	</tr>
	<tr>
	  <th id="T_35195_level0_row10" class="row_heading level0 row10" >2.75</th>
	  <td id="T_35195_row10_col0" class="data row10 col0" >\$0.272237</td>
	</tr>
	<tr>
	  <th id="T_35195_level0_row11" class="row_heading level0 row11" >3.00</th>
	  <td id="T_35195_row11_col0" class="data row11 col0" >\$0.274916</td>
	</tr>
  </tbody>
</table>

```python
floor = floorlets.sum().to_frame().rename(columns={0:'floor'})
floor.style.format('${:.4f}')
```

<style type="text/css">
</style>
<table id="T_a711b">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_a711b_level0_col0" class="col_heading level0 col0" >floor</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_a711b_level0_row0" class="row_heading level0 row0" >price</th>
	  <td id="T_a711b_row0_col0" class="data row0 col0" >\$1.9148</td>
	</tr>
  </tbody>
</table>

## **<span style="color:red">2.3. </span>**

```python
freqcurve = 4
dt = 1/freqcurve
compound = freqfloor
tsteps = int(Tfloor/dt)
```

```python
refratetree = compound * (np.exp(ratetree / compound)-1)

if isPayer:
    payoff = lambda r: N * dt * np.maximum(r-strikefloor,0)
else:
    payoff = lambda r: N * dt * np.maximum(strikefloor-r,0)

cftree = payoff(refratetree.iloc[:tsteps,:tsteps])
### no caplet until second step, so ensure 0 until then
cftree.loc[0,0] = 0

#format_bintree(refratetree.iloc[:tsteps,:tsteps],style='{:.2%}')
#format_bintree(cftree)
```

```python
floortree = bintree_pricing(payoff=payoff, ratetree=ratetree.iloc[:tsteps,:tsteps], undertree= refratetree.iloc[:tsteps,:tsteps], cftree=cftree, timing='deferred')
format_bintree(floortree,style='{:.2f}')
```

<style type="text/css">
</style>
<table id="T_7a62a">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_7a62a_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_7a62a_level0_col1" class="col_heading level0 col1" >0.25</th>
	  <th id="T_7a62a_level0_col2" class="col_heading level0 col2" >0.50</th>
	  <th id="T_7a62a_level0_col3" class="col_heading level0 col3" >0.75</th>
	  <th id="T_7a62a_level0_col4" class="col_heading level0 col4" >1.00</th>
	  <th id="T_7a62a_level0_col5" class="col_heading level0 col5" >1.25</th>
	  <th id="T_7a62a_level0_col6" class="col_heading level0 col6" >1.50</th>
	  <th id="T_7a62a_level0_col7" class="col_heading level0 col7" >1.75</th>
	  <th id="T_7a62a_level0_col8" class="col_heading level0 col8" >2.00</th>
	  <th id="T_7a62a_level0_col9" class="col_heading level0 col9" >2.25</th>
	  <th id="T_7a62a_level0_col10" class="col_heading level0 col10" >2.50</th>
	  <th id="T_7a62a_level0_col11" class="col_heading level0 col11" >2.75</th>
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
	  <th id="T_7a62a_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_7a62a_row0_col0" class="data row0 col0" >1.60</td>
	  <td id="T_7a62a_row0_col1" class="data row0 col1" >1.02</td>
	  <td id="T_7a62a_row0_col2" class="data row0 col2" >0.58</td>
	  <td id="T_7a62a_row0_col3" class="data row0 col3" >0.27</td>
	  <td id="T_7a62a_row0_col4" class="data row0 col4" >0.10</td>
	  <td id="T_7a62a_row0_col5" class="data row0 col5" >0.03</td>
	  <td id="T_7a62a_row0_col6" class="data row0 col6" >0.00</td>
	  <td id="T_7a62a_row0_col7" class="data row0 col7" >0.00</td>
	  <td id="T_7a62a_row0_col8" class="data row0 col8" >0.00</td>
	  <td id="T_7a62a_row0_col9" class="data row0 col9" >0.00</td>
	  <td id="T_7a62a_row0_col10" class="data row0 col10" >0.00</td>
	  <td id="T_7a62a_row0_col11" class="data row0 col11" >0.00</td>
	</tr>
	<tr>
	  <th id="T_7a62a_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_7a62a_row1_col0" class="data row1 col0" ></td>
	  <td id="T_7a62a_row1_col1" class="data row1 col1" >2.21</td>
	  <td id="T_7a62a_row1_col2" class="data row1 col2" >1.49</td>
	  <td id="T_7a62a_row1_col3" class="data row1 col3" >0.90</td>
	  <td id="T_7a62a_row1_col4" class="data row1 col4" >0.46</td>
	  <td id="T_7a62a_row1_col5" class="data row1 col5" >0.18</td>
	  <td id="T_7a62a_row1_col6" class="data row1 col6" >0.05</td>
	  <td id="T_7a62a_row1_col7" class="data row1 col7" >0.01</td>
	  <td id="T_7a62a_row1_col8" class="data row1 col8" >0.00</td>
	  <td id="T_7a62a_row1_col9" class="data row1 col9" >0.00</td>
	  <td id="T_7a62a_row1_col10" class="data row1 col10" >0.00</td>
	  <td id="T_7a62a_row1_col11" class="data row1 col11" >0.00</td>
	</tr>
	<tr>
	  <th id="T_7a62a_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_7a62a_row2_col0" class="data row2 col0" ></td>
	  <td id="T_7a62a_row2_col1" class="data row2 col1" ></td>
	  <td id="T_7a62a_row2_col2" class="data row2 col2" >2.99</td>
	  <td id="T_7a62a_row2_col3" class="data row2 col3" >2.13</td>
	  <td id="T_7a62a_row2_col4" class="data row2 col4" >1.36</td>
	  <td id="T_7a62a_row2_col5" class="data row2 col5" >0.74</td>
	  <td id="T_7a62a_row2_col6" class="data row2 col6" >0.32</td>
	  <td id="T_7a62a_row2_col7" class="data row2 col7" >0.10</td>
	  <td id="T_7a62a_row2_col8" class="data row2 col8" >0.01</td>
	  <td id="T_7a62a_row2_col9" class="data row2 col9" >0.00</td>
	  <td id="T_7a62a_row2_col10" class="data row2 col10" >0.00</td>
	  <td id="T_7a62a_row2_col11" class="data row2 col11" >0.00</td>
	</tr>
	<tr>
	  <th id="T_7a62a_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_7a62a_row3_col0" class="data row3 col0" ></td>
	  <td id="T_7a62a_row3_col1" class="data row3 col1" ></td>
	  <td id="T_7a62a_row3_col2" class="data row3 col2" ></td>
	  <td id="T_7a62a_row3_col3" class="data row3 col3" >3.88</td>
	  <td id="T_7a62a_row3_col4" class="data row3 col4" >2.94</td>
	  <td id="T_7a62a_row3_col5" class="data row3 col5" >2.00</td>
	  <td id="T_7a62a_row3_col6" class="data row3 col6" >1.17</td>
	  <td id="T_7a62a_row3_col7" class="data row3 col7" >0.55</td>
	  <td id="T_7a62a_row3_col8" class="data row3 col8" >0.18</td>
	  <td id="T_7a62a_row3_col9" class="data row3 col9" >0.02</td>
	  <td id="T_7a62a_row3_col10" class="data row3 col10" >0.00</td>
	  <td id="T_7a62a_row3_col11" class="data row3 col11" >0.00</td>
	</tr>
	<tr>
	  <th id="T_7a62a_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_7a62a_row4_col0" class="data row4 col0" ></td>
	  <td id="T_7a62a_row4_col1" class="data row4 col1" ></td>
	  <td id="T_7a62a_row4_col2" class="data row4 col2" ></td>
	  <td id="T_7a62a_row4_col3" class="data row4 col3" ></td>
	  <td id="T_7a62a_row4_col4" class="data row4 col4" >4.51</td>
	  <td id="T_7a62a_row4_col5" class="data row4 col5" >3.51</td>
	  <td id="T_7a62a_row4_col6" class="data row4 col6" >2.55</td>
	  <td id="T_7a62a_row4_col7" class="data row4 col7" >1.68</td>
	  <td id="T_7a62a_row4_col8" class="data row4 col8" >0.93</td>
	  <td id="T_7a62a_row4_col9" class="data row4 col9" >0.34</td>
	  <td id="T_7a62a_row4_col10" class="data row4 col10" >0.05</td>
	  <td id="T_7a62a_row4_col11" class="data row4 col11" >0.00</td>
	</tr>
	<tr>
	  <th id="T_7a62a_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_7a62a_row5_col0" class="data row5 col0" ></td>
	  <td id="T_7a62a_row5_col1" class="data row5 col1" ></td>
	  <td id="T_7a62a_row5_col2" class="data row5 col2" ></td>
	  <td id="T_7a62a_row5_col3" class="data row5 col3" ></td>
	  <td id="T_7a62a_row5_col4" class="data row5 col4" ></td>
	  <td id="T_7a62a_row5_col5" class="data row5 col5" >4.67</td>
	  <td id="T_7a62a_row5_col6" class="data row5 col6" >3.68</td>
	  <td id="T_7a62a_row5_col7" class="data row5 col7" >2.75</td>
	  <td id="T_7a62a_row5_col8" class="data row5 col8" >1.89</td>
	  <td id="T_7a62a_row5_col9" class="data row5 col9" >1.11</td>
	  <td id="T_7a62a_row5_col10" class="data row5 col10" >0.50</td>
	  <td id="T_7a62a_row5_col11" class="data row5 col11" >0.10</td>
	</tr>
	<tr>
	  <th id="T_7a62a_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_7a62a_row6_col0" class="data row6 col0" ></td>
	  <td id="T_7a62a_row6_col1" class="data row6 col1" ></td>
	  <td id="T_7a62a_row6_col2" class="data row6 col2" ></td>
	  <td id="T_7a62a_row6_col3" class="data row6 col3" ></td>
	  <td id="T_7a62a_row6_col4" class="data row6 col4" ></td>
	  <td id="T_7a62a_row6_col5" class="data row6 col5" ></td>
	  <td id="T_7a62a_row6_col6" class="data row6 col6" >4.48</td>
	  <td id="T_7a62a_row6_col7" class="data row6 col7" >3.52</td>
	  <td id="T_7a62a_row6_col8" class="data row6 col8" >2.61</td>
	  <td id="T_7a62a_row6_col9" class="data row6 col9" >1.75</td>
	  <td id="T_7a62a_row6_col10" class="data row6 col10" >1.00</td>
	  <td id="T_7a62a_row6_col11" class="data row6 col11" >0.40</td>
	</tr>
	<tr>
	  <th id="T_7a62a_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_7a62a_row7_col0" class="data row7 col0" ></td>
	  <td id="T_7a62a_row7_col1" class="data row7 col1" ></td>
	  <td id="T_7a62a_row7_col2" class="data row7 col2" ></td>
	  <td id="T_7a62a_row7_col3" class="data row7 col3" ></td>
	  <td id="T_7a62a_row7_col4" class="data row7 col4" ></td>
	  <td id="T_7a62a_row7_col5" class="data row7 col5" ></td>
	  <td id="T_7a62a_row7_col6" class="data row7 col6" ></td>
	  <td id="T_7a62a_row7_col7" class="data row7 col7" >4.04</td>
	  <td id="T_7a62a_row7_col8" class="data row7 col8" >3.09</td>
	  <td id="T_7a62a_row7_col9" class="data row7 col9" >2.18</td>
	  <td id="T_7a62a_row7_col10" class="data row7 col10" >1.34</td>
	  <td id="T_7a62a_row7_col11" class="data row7 col11" >0.61</td>
	</tr>
	<tr>
	  <th id="T_7a62a_level0_row8" class="row_heading level0 row8" >8</th>
	  <td id="T_7a62a_row8_col0" class="data row8 col0" ></td>
	  <td id="T_7a62a_row8_col1" class="data row8 col1" ></td>
	  <td id="T_7a62a_row8_col2" class="data row8 col2" ></td>
	  <td id="T_7a62a_row8_col3" class="data row8 col3" ></td>
	  <td id="T_7a62a_row8_col4" class="data row8 col4" ></td>
	  <td id="T_7a62a_row8_col5" class="data row8 col5" ></td>
	  <td id="T_7a62a_row8_col6" class="data row8 col6" ></td>
	  <td id="T_7a62a_row8_col7" class="data row8 col7" ></td>
	  <td id="T_7a62a_row8_col8" class="data row8 col8" >3.42</td>
	  <td id="T_7a62a_row8_col9" class="data row8 col9" >2.47</td>
	  <td id="T_7a62a_row8_col10" class="data row8 col10" >1.57</td>
	  <td id="T_7a62a_row8_col11" class="data row8 col11" >0.74</td>
	</tr>
	<tr>
	  <th id="T_7a62a_level0_row9" class="row_heading level0 row9" >9</th>
	  <td id="T_7a62a_row9_col0" class="data row9 col0" ></td>
	  <td id="T_7a62a_row9_col1" class="data row9 col1" ></td>
	  <td id="T_7a62a_row9_col2" class="data row9 col2" ></td>
	  <td id="T_7a62a_row9_col3" class="data row9 col3" ></td>
	  <td id="T_7a62a_row9_col4" class="data row9 col4" ></td>
	  <td id="T_7a62a_row9_col5" class="data row9 col5" ></td>
	  <td id="T_7a62a_row9_col6" class="data row9 col6" ></td>
	  <td id="T_7a62a_row9_col7" class="data row9 col7" ></td>
	  <td id="T_7a62a_row9_col8" class="data row9 col8" ></td>
	  <td id="T_7a62a_row9_col9" class="data row9 col9" >2.66</td>
	  <td id="T_7a62a_row9_col10" class="data row9 col10" >1.73</td>
	  <td id="T_7a62a_row9_col11" class="data row9 col11" >0.83</td>
	</tr>
	<tr>
	  <th id="T_7a62a_level0_row10" class="row_heading level0 row10" >10</th>
	  <td id="T_7a62a_row10_col0" class="data row10 col0" ></td>
	  <td id="T_7a62a_row10_col1" class="data row10 col1" ></td>
	  <td id="T_7a62a_row10_col2" class="data row10 col2" ></td>
	  <td id="T_7a62a_row10_col3" class="data row10 col3" ></td>
	  <td id="T_7a62a_row10_col4" class="data row10 col4" ></td>
	  <td id="T_7a62a_row10_col5" class="data row10 col5" ></td>
	  <td id="T_7a62a_row10_col6" class="data row10 col6" ></td>
	  <td id="T_7a62a_row10_col7" class="data row10 col7" ></td>
	  <td id="T_7a62a_row10_col8" class="data row10 col8" ></td>
	  <td id="T_7a62a_row10_col9" class="data row10 col9" ></td>
	  <td id="T_7a62a_row10_col10" class="data row10 col10" >1.83</td>
	  <td id="T_7a62a_row10_col11" class="data row10 col11" >0.89</td>
	</tr>
	<tr>
	  <th id="T_7a62a_level0_row11" class="row_heading level0 row11" >11</th>
	  <td id="T_7a62a_row11_col0" class="data row11 col0" ></td>
	  <td id="T_7a62a_row11_col1" class="data row11 col1" ></td>
	  <td id="T_7a62a_row11_col2" class="data row11 col2" ></td>
	  <td id="T_7a62a_row11_col3" class="data row11 col3" ></td>
	  <td id="T_7a62a_row11_col4" class="data row11 col4" ></td>
	  <td id="T_7a62a_row11_col5" class="data row11 col5" ></td>
	  <td id="T_7a62a_row11_col6" class="data row11 col6" ></td>
	  <td id="T_7a62a_row11_col7" class="data row11 col7" ></td>
	  <td id="T_7a62a_row11_col8" class="data row11 col8" ></td>
	  <td id="T_7a62a_row11_col9" class="data row11 col9" ></td>
	  <td id="T_7a62a_row11_col10" class="data row11 col10" ></td>
	  <td id="T_7a62a_row11_col11" class="data row11 col11" >0.94</td>
	</tr>
  </tbody>
</table>

## **<span style="color:red">2.4. </span>**

There are multiple reasons the prices differ. Answers here should focus on the biggest differences.

* The tree discretization: the dynamic of the quarterly floorlet is modeled in a single step in the tree.
* Related to the point above, the volatility operates differently in the tree than in Black's formula.

Other answers could be reasonable here.

## **<span style="color:red">2.5. </span>**

We can reuse…

* rate tree (continuously compounded) for discounting
* reference rate tree (quarterly compounded) for cashflows
* notional

```python
strikeswap = .0365
isPayer = False

if isPayer:
    payoff = lambda r: N * dt * (r-strikeswap)
else:
    payoff = lambda r: N * dt * (strikeswap-r)

cftree = payoff(refratetree.iloc[:tsteps,:tsteps])
```

```python
swaptree = bintree_pricing(payoff=payoff, ratetree=ratetree.iloc[:tsteps,:tsteps], undertree= refratetree.iloc[:tsteps,:tsteps], cftree=cftree, timing='deferred')
format_bintree(swaptree,style='{:.2f}')
```

<style type="text/css">
</style>
<table id="T_f940c">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_f940c_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_f940c_level0_col1" class="col_heading level0 col1" >0.25</th>
	  <th id="T_f940c_level0_col2" class="col_heading level0 col2" >0.50</th>
	  <th id="T_f940c_level0_col3" class="col_heading level0 col3" >0.75</th>
	  <th id="T_f940c_level0_col4" class="col_heading level0 col4" >1.00</th>
	  <th id="T_f940c_level0_col5" class="col_heading level0 col5" >1.25</th>
	  <th id="T_f940c_level0_col6" class="col_heading level0 col6" >1.50</th>
	  <th id="T_f940c_level0_col7" class="col_heading level0 col7" >1.75</th>
	  <th id="T_f940c_level0_col8" class="col_heading level0 col8" >2.00</th>
	  <th id="T_f940c_level0_col9" class="col_heading level0 col9" >2.25</th>
	  <th id="T_f940c_level0_col10" class="col_heading level0 col10" >2.50</th>
	  <th id="T_f940c_level0_col11" class="col_heading level0 col11" >2.75</th>
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
	  <th id="T_f940c_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_f940c_row0_col0" class="data row0 col0" >-1.26</td>
	  <td id="T_f940c_row0_col1" class="data row0 col1" >-2.13</td>
	  <td id="T_f940c_row0_col2" class="data row0 col2" >-2.92</td>
	  <td id="T_f940c_row0_col3" class="data row0 col3" >-3.63</td>
	  <td id="T_f940c_row0_col4" class="data row0 col4" >-4.25</td>
	  <td id="T_f940c_row0_col5" class="data row0 col5" >-4.82</td>
	  <td id="T_f940c_row0_col6" class="data row0 col6" >-5.22</td>
	  <td id="T_f940c_row0_col7" class="data row0 col7" >-5.38</td>
	  <td id="T_f940c_row0_col8" class="data row0 col8" >-5.23</td>
	  <td id="T_f940c_row0_col9" class="data row0 col9" >-4.80</td>
	  <td id="T_f940c_row0_col10" class="data row0 col10" >-3.88</td>
	  <td id="T_f940c_row0_col11" class="data row0 col11" >-2.32</td>
	</tr>
	<tr>
	  <th id="T_f940c_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_f940c_row1_col0" class="data row1 col0" ></td>
	  <td id="T_f940c_row1_col1" class="data row1 col1" >0.36</td>
	  <td id="T_f940c_row1_col2" class="data row1 col2" >-0.51</td>
	  <td id="T_f940c_row1_col3" class="data row1 col3" >-1.32</td>
	  <td id="T_f940c_row1_col4" class="data row1 col4" >-2.07</td>
	  <td id="T_f940c_row1_col5" class="data row1 col5" >-2.81</td>
	  <td id="T_f940c_row1_col6" class="data row1 col6" >-3.40</td>
	  <td id="T_f940c_row1_col7" class="data row1 col7" >-3.79</td>
	  <td id="T_f940c_row1_col8" class="data row1 col8" >-3.89</td>
	  <td id="T_f940c_row1_col9" class="data row1 col9" >-3.73</td>
	  <td id="T_f940c_row1_col10" class="data row1 col10" >-3.10</td>
	  <td id="T_f940c_row1_col11" class="data row1 col11" >-1.90</td>
	</tr>
	<tr>
	  <th id="T_f940c_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_f940c_row2_col0" class="data row2 col0" ></td>
	  <td id="T_f940c_row2_col1" class="data row2 col1" ></td>
	  <td id="T_f940c_row2_col2" class="data row2 col2" >1.76</td>
	  <td id="T_f940c_row2_col3" class="data row2 col3" >0.89</td>
	  <td id="T_f940c_row2_col4" class="data row2 col4" >0.06</td>
	  <td id="T_f940c_row2_col5" class="data row2 col5" >-0.78</td>
	  <td id="T_f940c_row2_col6" class="data row2 col6" >-1.52</td>
	  <td id="T_f940c_row2_col7" class="data row2 col7" >-2.10</td>
	  <td id="T_f940c_row2_col8" class="data row2 col8" >-2.45</td>
	  <td id="T_f940c_row2_col9" class="data row2 col9" >-2.57</td>
	  <td id="T_f940c_row2_col10" class="data row2 col10" >-2.28</td>
	  <td id="T_f940c_row2_col11" class="data row2 col11" >-1.45</td>
	</tr>
	<tr>
	  <th id="T_f940c_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_f940c_row3_col0" class="data row3 col0" ></td>
	  <td id="T_f940c_row3_col1" class="data row3 col1" ></td>
	  <td id="T_f940c_row3_col2" class="data row3 col2" ></td>
	  <td id="T_f940c_row3_col3" class="data row3 col3" >2.86</td>
	  <td id="T_f940c_row3_col4" class="data row3 col4" >2.00</td>
	  <td id="T_f940c_row3_col5" class="data row3 col5" >1.11</td>
	  <td id="T_f940c_row3_col6" class="data row3 col6" >0.29</td>
	  <td id="T_f940c_row3_col7" class="data row3 col7" >-0.42</td>
	  <td id="T_f940c_row3_col8" class="data row3 col8" >-0.97</td>
	  <td id="T_f940c_row3_col9" class="data row3 col9" >-1.35</td>
	  <td id="T_f940c_row3_col10" class="data row3 col10" >-1.40</td>
	  <td id="T_f940c_row3_col11" class="data row3 col11" >-1.00</td>
	</tr>
	<tr>
	  <th id="T_f940c_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_f940c_row4_col0" class="data row4 col0" ></td>
	  <td id="T_f940c_row4_col1" class="data row4 col1" ></td>
	  <td id="T_f940c_row4_col2" class="data row4 col2" ></td>
	  <td id="T_f940c_row4_col3" class="data row4 col3" ></td>
	  <td id="T_f940c_row4_col4" class="data row4 col4" >3.63</td>
	  <td id="T_f940c_row4_col5" class="data row4 col5" >2.73</td>
	  <td id="T_f940c_row4_col6" class="data row4 col6" >1.87</td>
	  <td id="T_f940c_row4_col7" class="data row4 col7" >1.09</td>
	  <td id="T_f940c_row4_col8" class="data row4 col8" >0.43</td>
	  <td id="T_f940c_row4_col9" class="data row4 col9" >-0.12</td>
	  <td id="T_f940c_row4_col10" class="data row4 col10" >-0.44</td>
	  <td id="T_f940c_row4_col11" class="data row4 col11" >-0.43</td>
	</tr>
	<tr>
	  <th id="T_f940c_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_f940c_row5_col0" class="data row5 col0" ></td>
	  <td id="T_f940c_row5_col1" class="data row5 col1" ></td>
	  <td id="T_f940c_row5_col2" class="data row5 col2" ></td>
	  <td id="T_f940c_row5_col3" class="data row5 col3" ></td>
	  <td id="T_f940c_row5_col4" class="data row5 col4" ></td>
	  <td id="T_f940c_row5_col5" class="data row5 col5" >3.89</td>
	  <td id="T_f940c_row5_col6" class="data row5 col6" >3.02</td>
	  <td id="T_f940c_row5_col7" class="data row5 col7" >2.19</td>
	  <td id="T_f940c_row5_col8" class="data row5 col8" >1.45</td>
	  <td id="T_f940c_row5_col9" class="data row5 col9" >0.78</td>
	  <td id="T_f940c_row5_col10" class="data row5 col10" >0.27</td>
	  <td id="T_f940c_row5_col11" class="data row5 col11" >-0.01</td>
	</tr>
	<tr>
	  <th id="T_f940c_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_f940c_row6_col0" class="data row6 col0" ></td>
	  <td id="T_f940c_row6_col1" class="data row6 col1" ></td>
	  <td id="T_f940c_row6_col2" class="data row6 col2" ></td>
	  <td id="T_f940c_row6_col3" class="data row6 col3" ></td>
	  <td id="T_f940c_row6_col4" class="data row6 col4" ></td>
	  <td id="T_f940c_row6_col5" class="data row6 col5" ></td>
	  <td id="T_f940c_row6_col6" class="data row6 col6" >3.81</td>
	  <td id="T_f940c_row6_col7" class="data row6 col7" >2.96</td>
	  <td id="T_f940c_row6_col8" class="data row6 col8" >2.16</td>
	  <td id="T_f940c_row6_col9" class="data row6 col9" >1.41</td>
	  <td id="T_f940c_row6_col10" class="data row6 col10" >0.78</td>
	  <td id="T_f940c_row6_col11" class="data row6 col11" >0.29</td>
	</tr>
	<tr>
	  <th id="T_f940c_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_f940c_row7_col0" class="data row7 col0" ></td>
	  <td id="T_f940c_row7_col1" class="data row7 col1" ></td>
	  <td id="T_f940c_row7_col2" class="data row7 col2" ></td>
	  <td id="T_f940c_row7_col3" class="data row7 col3" ></td>
	  <td id="T_f940c_row7_col4" class="data row7 col4" ></td>
	  <td id="T_f940c_row7_col5" class="data row7 col5" ></td>
	  <td id="T_f940c_row7_col6" class="data row7 col6" ></td>
	  <td id="T_f940c_row7_col7" class="data row7 col7" >3.48</td>
	  <td id="T_f940c_row7_col8" class="data row7 col8" >2.64</td>
	  <td id="T_f940c_row7_col9" class="data row7 col9" >1.85</td>
	  <td id="T_f940c_row7_col10" class="data row7 col10" >1.12</td>
	  <td id="T_f940c_row7_col11" class="data row7 col11" >0.49</td>
	</tr>
	<tr>
	  <th id="T_f940c_level0_row8" class="row_heading level0 row8" >8</th>
	  <td id="T_f940c_row8_col0" class="data row8 col0" ></td>
	  <td id="T_f940c_row8_col1" class="data row8 col1" ></td>
	  <td id="T_f940c_row8_col2" class="data row8 col2" ></td>
	  <td id="T_f940c_row8_col3" class="data row8 col3" ></td>
	  <td id="T_f940c_row8_col4" class="data row8 col4" ></td>
	  <td id="T_f940c_row8_col5" class="data row8 col5" ></td>
	  <td id="T_f940c_row8_col6" class="data row8 col6" ></td>
	  <td id="T_f940c_row8_col7" class="data row8 col7" ></td>
	  <td id="T_f940c_row8_col8" class="data row8 col8" >2.97</td>
	  <td id="T_f940c_row8_col9" class="data row8 col9" >2.13</td>
	  <td id="T_f940c_row8_col10" class="data row8 col10" >1.35</td>
	  <td id="T_f940c_row8_col11" class="data row8 col11" >0.63</td>
	</tr>
	<tr>
	  <th id="T_f940c_level0_row9" class="row_heading level0 row9" >9</th>
	  <td id="T_f940c_row9_col0" class="data row9 col0" ></td>
	  <td id="T_f940c_row9_col1" class="data row9 col1" ></td>
	  <td id="T_f940c_row9_col2" class="data row9 col2" ></td>
	  <td id="T_f940c_row9_col3" class="data row9 col3" ></td>
	  <td id="T_f940c_row9_col4" class="data row9 col4" ></td>
	  <td id="T_f940c_row9_col5" class="data row9 col5" ></td>
	  <td id="T_f940c_row9_col6" class="data row9 col6" ></td>
	  <td id="T_f940c_row9_col7" class="data row9 col7" ></td>
	  <td id="T_f940c_row9_col8" class="data row9 col8" ></td>
	  <td id="T_f940c_row9_col9" class="data row9 col9" >2.33</td>
	  <td id="T_f940c_row9_col10" class="data row9 col10" >1.50</td>
	  <td id="T_f940c_row9_col11" class="data row9 col11" >0.72</td>
	</tr>
	<tr>
	  <th id="T_f940c_level0_row10" class="row_heading level0 row10" >10</th>
	  <td id="T_f940c_row10_col0" class="data row10 col0" ></td>
	  <td id="T_f940c_row10_col1" class="data row10 col1" ></td>
	  <td id="T_f940c_row10_col2" class="data row10 col2" ></td>
	  <td id="T_f940c_row10_col3" class="data row10 col3" ></td>
	  <td id="T_f940c_row10_col4" class="data row10 col4" ></td>
	  <td id="T_f940c_row10_col5" class="data row10 col5" ></td>
	  <td id="T_f940c_row10_col6" class="data row10 col6" ></td>
	  <td id="T_f940c_row10_col7" class="data row10 col7" ></td>
	  <td id="T_f940c_row10_col8" class="data row10 col8" ></td>
	  <td id="T_f940c_row10_col9" class="data row10 col9" ></td>
	  <td id="T_f940c_row10_col10" class="data row10 col10" >1.60</td>
	  <td id="T_f940c_row10_col11" class="data row10 col11" >0.78</td>
	</tr>
	<tr>
	  <th id="T_f940c_level0_row11" class="row_heading level0 row11" >11</th>
	  <td id="T_f940c_row11_col0" class="data row11 col0" ></td>
	  <td id="T_f940c_row11_col1" class="data row11 col1" ></td>
	  <td id="T_f940c_row11_col2" class="data row11 col2" ></td>
	  <td id="T_f940c_row11_col3" class="data row11 col3" ></td>
	  <td id="T_f940c_row11_col4" class="data row11 col4" ></td>
	  <td id="T_f940c_row11_col5" class="data row11 col5" ></td>
	  <td id="T_f940c_row11_col6" class="data row11 col6" ></td>
	  <td id="T_f940c_row11_col7" class="data row11 col7" ></td>
	  <td id="T_f940c_row11_col8" class="data row11 col8" ></td>
	  <td id="T_f940c_row11_col9" class="data row11 col9" ></td>
	  <td id="T_f940c_row11_col10" class="data row11 col10" ></td>
	  <td id="T_f940c_row11_col11" class="data row11 col11" >0.82</td>
	</tr>
  </tbody>
</table>

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

# **<span style="color:red">Solution </span>**

## **<span style="color:red">3.1 </span>**

```python
T=3
FACE=100
cpn_freq = 4
cpn = .06
```

```python
wrapper_bond = lambda r: payoff_bond(r, dt, facevalue=FACE * (1+cpn/cpn_freq))
payoff_call = lambda p: np.maximum(p-STRIKE,0)
```

```python
cftree = construct_bond_cftree(T, compound, cpn, cpn_freq)
```

```python
def highlight_values(val,thresh=100):
    if pd.isna(val):
        color = '#d3d3d3'  # Light grey for NaN values
    elif val < thresh:
        color = '#ffcccc'  # Light red
    else:
        color = '#ccffcc'  # Light green
    return f'background-color: {color}'
```

```python
bondtree = bintree_pricing(payoff=wrapper_bond, ratetree=ratetree, cftree=cftree)
bondtree.style.format('{:.2f}',na_rep='').applymap(highlight_values).format_index('{:.2f}',axis=1)
```

<style type="text/css">
#T_a6903_row0_col0, #T_a6903_row0_col1, #T_a6903_row0_col2, #T_a6903_row0_col3, #T_a6903_row0_col4, #T_a6903_row1_col1, #T_a6903_row1_col2, #T_a6903_row1_col3, #T_a6903_row1_col4, #T_a6903_row1_col5, #T_a6903_row2_col2, #T_a6903_row2_col3, #T_a6903_row2_col4, #T_a6903_row2_col5, #T_a6903_row2_col6, #T_a6903_row2_col7, #T_a6903_row3_col3, #T_a6903_row3_col4, #T_a6903_row3_col5, #T_a6903_row3_col6, #T_a6903_row3_col7, #T_a6903_row3_col8, #T_a6903_row3_col9, #T_a6903_row4_col4, #T_a6903_row4_col5, #T_a6903_row4_col6, #T_a6903_row4_col7, #T_a6903_row4_col8, #T_a6903_row4_col9, #T_a6903_row4_col10, #T_a6903_row4_col11, #T_a6903_row5_col5, #T_a6903_row5_col6, #T_a6903_row5_col7, #T_a6903_row5_col8, #T_a6903_row5_col9, #T_a6903_row5_col10, #T_a6903_row5_col11, #T_a6903_row6_col6, #T_a6903_row6_col7, #T_a6903_row6_col8, #T_a6903_row6_col9, #T_a6903_row6_col10, #T_a6903_row6_col11, #T_a6903_row7_col7, #T_a6903_row7_col8, #T_a6903_row7_col9, #T_a6903_row7_col10, #T_a6903_row7_col11, #T_a6903_row8_col8, #T_a6903_row8_col9, #T_a6903_row8_col10, #T_a6903_row8_col11, #T_a6903_row9_col9, #T_a6903_row9_col10, #T_a6903_row9_col11, #T_a6903_row10_col10, #T_a6903_row10_col11, #T_a6903_row11_col11 {
  background-color: #ccffcc;
}
#T_a6903_row0_col5, #T_a6903_row0_col6, #T_a6903_row0_col7, #T_a6903_row0_col8, #T_a6903_row0_col9, #T_a6903_row0_col10, #T_a6903_row0_col11, #T_a6903_row1_col6, #T_a6903_row1_col7, #T_a6903_row1_col8, #T_a6903_row1_col9, #T_a6903_row1_col10, #T_a6903_row1_col11, #T_a6903_row2_col8, #T_a6903_row2_col9, #T_a6903_row2_col10, #T_a6903_row2_col11, #T_a6903_row3_col10, #T_a6903_row3_col11 {
  background-color: #ffcccc;
}
#T_a6903_row1_col0, #T_a6903_row2_col0, #T_a6903_row2_col1, #T_a6903_row3_col0, #T_a6903_row3_col1, #T_a6903_row3_col2, #T_a6903_row4_col0, #T_a6903_row4_col1, #T_a6903_row4_col2, #T_a6903_row4_col3, #T_a6903_row5_col0, #T_a6903_row5_col1, #T_a6903_row5_col2, #T_a6903_row5_col3, #T_a6903_row5_col4, #T_a6903_row6_col0, #T_a6903_row6_col1, #T_a6903_row6_col2, #T_a6903_row6_col3, #T_a6903_row6_col4, #T_a6903_row6_col5, #T_a6903_row7_col0, #T_a6903_row7_col1, #T_a6903_row7_col2, #T_a6903_row7_col3, #T_a6903_row7_col4, #T_a6903_row7_col5, #T_a6903_row7_col6, #T_a6903_row8_col0, #T_a6903_row8_col1, #T_a6903_row8_col2, #T_a6903_row8_col3, #T_a6903_row8_col4, #T_a6903_row8_col5, #T_a6903_row8_col6, #T_a6903_row8_col7, #T_a6903_row9_col0, #T_a6903_row9_col1, #T_a6903_row9_col2, #T_a6903_row9_col3, #T_a6903_row9_col4, #T_a6903_row9_col5, #T_a6903_row9_col6, #T_a6903_row9_col7, #T_a6903_row9_col8, #T_a6903_row10_col0, #T_a6903_row10_col1, #T_a6903_row10_col2, #T_a6903_row10_col3, #T_a6903_row10_col4, #T_a6903_row10_col5, #T_a6903_row10_col6, #T_a6903_row10_col7, #T_a6903_row10_col8, #T_a6903_row10_col9, #T_a6903_row11_col0, #T_a6903_row11_col1, #T_a6903_row11_col2, #T_a6903_row11_col3, #T_a6903_row11_col4, #T_a6903_row11_col5, #T_a6903_row11_col6, #T_a6903_row11_col7, #T_a6903_row11_col8, #T_a6903_row11_col9, #T_a6903_row11_col10 {
  background-color: #d3d3d3;
}
</style>
<table id="T_a6903">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_a6903_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_a6903_level0_col1" class="col_heading level0 col1" >0.25</th>
	  <th id="T_a6903_level0_col2" class="col_heading level0 col2" >0.50</th>
	  <th id="T_a6903_level0_col3" class="col_heading level0 col3" >0.75</th>
	  <th id="T_a6903_level0_col4" class="col_heading level0 col4" >1.00</th>
	  <th id="T_a6903_level0_col5" class="col_heading level0 col5" >1.25</th>
	  <th id="T_a6903_level0_col6" class="col_heading level0 col6" >1.50</th>
	  <th id="T_a6903_level0_col7" class="col_heading level0 col7" >1.75</th>
	  <th id="T_a6903_level0_col8" class="col_heading level0 col8" >2.00</th>
	  <th id="T_a6903_level0_col9" class="col_heading level0 col9" >2.25</th>
	  <th id="T_a6903_level0_col10" class="col_heading level0 col10" >2.50</th>
	  <th id="T_a6903_level0_col11" class="col_heading level0 col11" >2.75</th>
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
	  <th id="T_a6903_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_a6903_row0_col0" class="data row0 col0" >105.31</td>
	  <td id="T_a6903_row0_col1" class="data row0 col1" >103.90</td>
	  <td id="T_a6903_row0_col2" class="data row0 col2" >102.57</td>
	  <td id="T_a6903_row0_col3" class="data row0 col3" >101.32</td>
	  <td id="T_a6903_row0_col4" class="data row0 col4" >100.16</td>
	  <td id="T_a6903_row0_col5" class="data row0 col5" >99.04</td>
	  <td id="T_a6903_row0_col6" class="data row0 col6" >98.10</td>
	  <td id="T_a6903_row0_col7" class="data row0 col7" >97.39</td>
	  <td id="T_a6903_row0_col8" class="data row0 col8" >96.99</td>
	  <td id="T_a6903_row0_col9" class="data row0 col9" >96.88</td>
	  <td id="T_a6903_row0_col10" class="data row0 col10" >97.25</td>
	  <td id="T_a6903_row0_col11" class="data row0 col11" >98.25</td>
	</tr>
	<tr>
	  <th id="T_a6903_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_a6903_row1_col0" class="data row1 col0" ></td>
	  <td id="T_a6903_row1_col1" class="data row1 col1" >106.46</td>
	  <td id="T_a6903_row1_col2" class="data row1 col2" >105.05</td>
	  <td id="T_a6903_row1_col3" class="data row1 col3" >103.69</td>
	  <td id="T_a6903_row1_col4" class="data row1 col4" >102.39</td>
	  <td id="T_a6903_row1_col5" class="data row1 col5" >101.10</td>
	  <td id="T_a6903_row1_col6" class="data row1 col6" >99.95</td>
	  <td id="T_a6903_row1_col7" class="data row1 col7" >99.01</td>
	  <td id="T_a6903_row1_col8" class="data row1 col8" >98.35</td>
	  <td id="T_a6903_row1_col9" class="data row1 col9" >97.96</td>
	  <td id="T_a6903_row1_col10" class="data row1 col10" >98.03</td>
	  <td id="T_a6903_row1_col11" class="data row1 col11" >98.67</td>
	</tr>
	<tr>
	  <th id="T_a6903_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_a6903_row2_col0" class="data row2 col0" ></td>
	  <td id="T_a6903_row2_col1" class="data row2 col1" ></td>
	  <td id="T_a6903_row2_col2" class="data row2 col2" >107.38</td>
	  <td id="T_a6903_row2_col3" class="data row2 col3" >105.96</td>
	  <td id="T_a6903_row2_col4" class="data row2 col4" >104.57</td>
	  <td id="T_a6903_row2_col5" class="data row2 col5" >103.17</td>
	  <td id="T_a6903_row2_col6" class="data row2 col6" >101.87</td>
	  <td id="T_a6903_row2_col7" class="data row2 col7" >100.73</td>
	  <td id="T_a6903_row2_col8" class="data row2 col8" >99.81</td>
	  <td id="T_a6903_row2_col9" class="data row2 col9" >99.13</td>
	  <td id="T_a6903_row2_col10" class="data row2 col10" >98.86</td>
	  <td id="T_a6903_row2_col11" class="data row2 col11" >99.12</td>
	</tr>
	<tr>
	  <th id="T_a6903_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_a6903_row3_col0" class="data row3 col0" ></td>
	  <td id="T_a6903_row3_col1" class="data row3 col1" ></td>
	  <td id="T_a6903_row3_col2" class="data row3 col2" ></td>
	  <td id="T_a6903_row3_col3" class="data row3 col3" >107.98</td>
	  <td id="T_a6903_row3_col4" class="data row3 col4" >106.55</td>
	  <td id="T_a6903_row3_col5" class="data row3 col5" >105.10</td>
	  <td id="T_a6903_row3_col6" class="data row3 col6" >103.71</td>
	  <td id="T_a6903_row3_col7" class="data row3 col7" >102.43</td>
	  <td id="T_a6903_row3_col8" class="data row3 col8" >101.31</td>
	  <td id="T_a6903_row3_col9" class="data row3 col9" >100.37</td>
	  <td id="T_a6903_row3_col10" class="data row3 col10" >99.75</td>
	  <td id="T_a6903_row3_col11" class="data row3 col11" >99.58</td>
	</tr>
	<tr>
	  <th id="T_a6903_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_a6903_row4_col0" class="data row4 col0" ></td>
	  <td id="T_a6903_row4_col1" class="data row4 col1" ></td>
	  <td id="T_a6903_row4_col2" class="data row4 col2" ></td>
	  <td id="T_a6903_row4_col3" class="data row4 col3" ></td>
	  <td id="T_a6903_row4_col4" class="data row4 col4" >108.23</td>
	  <td id="T_a6903_row4_col5" class="data row4 col5" >106.75</td>
	  <td id="T_a6903_row4_col6" class="data row4 col6" >105.32</td>
	  <td id="T_a6903_row4_col7" class="data row4 col7" >103.97</td>
	  <td id="T_a6903_row4_col8" class="data row4 col8" >102.73</td>
	  <td id="T_a6903_row4_col9" class="data row4 col9" >101.61</td>
	  <td id="T_a6903_row4_col10" class="data row4 col10" >100.72</td>
	  <td id="T_a6903_row4_col11" class="data row4 col11" >100.15</td>
	</tr>
	<tr>
	  <th id="T_a6903_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_a6903_row5_col0" class="data row5 col0" ></td>
	  <td id="T_a6903_row5_col1" class="data row5 col1" ></td>
	  <td id="T_a6903_row5_col2" class="data row5 col2" ></td>
	  <td id="T_a6903_row5_col3" class="data row5 col3" ></td>
	  <td id="T_a6903_row5_col4" class="data row5 col4" ></td>
	  <td id="T_a6903_row5_col5" class="data row5 col5" >107.94</td>
	  <td id="T_a6903_row5_col6" class="data row5 col6" >106.49</td>
	  <td id="T_a6903_row5_col7" class="data row5 col7" >105.09</td>
	  <td id="T_a6903_row5_col8" class="data row5 col8" >103.76</td>
	  <td id="T_a6903_row5_col9" class="data row5 col9" >102.52</td>
	  <td id="T_a6903_row5_col10" class="data row5 col10" >101.43</td>
	  <td id="T_a6903_row5_col11" class="data row5 col11" >100.57</td>
	</tr>
	<tr>
	  <th id="T_a6903_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_a6903_row6_col0" class="data row6 col0" ></td>
	  <td id="T_a6903_row6_col1" class="data row6 col1" ></td>
	  <td id="T_a6903_row6_col2" class="data row6 col2" ></td>
	  <td id="T_a6903_row6_col3" class="data row6 col3" ></td>
	  <td id="T_a6903_row6_col4" class="data row6 col4" ></td>
	  <td id="T_a6903_row6_col5" class="data row6 col5" ></td>
	  <td id="T_a6903_row6_col6" class="data row6 col6" >107.30</td>
	  <td id="T_a6903_row6_col7" class="data row6 col7" >105.87</td>
	  <td id="T_a6903_row6_col8" class="data row6 col8" >104.49</td>
	  <td id="T_a6903_row6_col9" class="data row6 col9" >103.16</td>
	  <td id="T_a6903_row6_col10" class="data row6 col10" >101.94</td>
	  <td id="T_a6903_row6_col11" class="data row6 col11" >100.87</td>
	</tr>
	<tr>
	  <th id="T_a6903_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_a6903_row7_col0" class="data row7 col0" ></td>
	  <td id="T_a6903_row7_col1" class="data row7 col1" ></td>
	  <td id="T_a6903_row7_col2" class="data row7 col2" ></td>
	  <td id="T_a6903_row7_col3" class="data row7 col3" ></td>
	  <td id="T_a6903_row7_col4" class="data row7 col4" ></td>
	  <td id="T_a6903_row7_col5" class="data row7 col5" ></td>
	  <td id="T_a6903_row7_col6" class="data row7 col6" ></td>
	  <td id="T_a6903_row7_col7" class="data row7 col7" >106.40</td>
	  <td id="T_a6903_row7_col8" class="data row7 col8" >104.98</td>
	  <td id="T_a6903_row7_col9" class="data row7 col9" >103.60</td>
	  <td id="T_a6903_row7_col10" class="data row7 col10" >102.29</td>
	  <td id="T_a6903_row7_col11" class="data row7 col11" >101.08</td>
	</tr>
	<tr>
	  <th id="T_a6903_level0_row8" class="row_heading level0 row8" >8</th>
	  <td id="T_a6903_row8_col0" class="data row8 col0" ></td>
	  <td id="T_a6903_row8_col1" class="data row8 col1" ></td>
	  <td id="T_a6903_row8_col2" class="data row8 col2" ></td>
	  <td id="T_a6903_row8_col3" class="data row8 col3" ></td>
	  <td id="T_a6903_row8_col4" class="data row8 col4" ></td>
	  <td id="T_a6903_row8_col5" class="data row8 col5" ></td>
	  <td id="T_a6903_row8_col6" class="data row8 col6" ></td>
	  <td id="T_a6903_row8_col7" class="data row8 col7" ></td>
	  <td id="T_a6903_row8_col8" class="data row8 col8" >105.31</td>
	  <td id="T_a6903_row8_col9" class="data row8 col9" >103.89</td>
	  <td id="T_a6903_row8_col10" class="data row8 col10" >102.52</td>
	  <td id="T_a6903_row8_col11" class="data row8 col11" >101.22</td>
	</tr>
	<tr>
	  <th id="T_a6903_level0_row9" class="row_heading level0 row9" >9</th>
	  <td id="T_a6903_row9_col0" class="data row9 col0" ></td>
	  <td id="T_a6903_row9_col1" class="data row9 col1" ></td>
	  <td id="T_a6903_row9_col2" class="data row9 col2" ></td>
	  <td id="T_a6903_row9_col3" class="data row9 col3" ></td>
	  <td id="T_a6903_row9_col4" class="data row9 col4" ></td>
	  <td id="T_a6903_row9_col5" class="data row9 col5" ></td>
	  <td id="T_a6903_row9_col6" class="data row9 col6" ></td>
	  <td id="T_a6903_row9_col7" class="data row9 col7" ></td>
	  <td id="T_a6903_row9_col8" class="data row9 col8" ></td>
	  <td id="T_a6903_row9_col9" class="data row9 col9" >104.08</td>
	  <td id="T_a6903_row9_col10" class="data row9 col10" >102.67</td>
	  <td id="T_a6903_row9_col11" class="data row9 col11" >101.31</td>
	</tr>
	<tr>
	  <th id="T_a6903_level0_row10" class="row_heading level0 row10" >10</th>
	  <td id="T_a6903_row10_col0" class="data row10 col0" ></td>
	  <td id="T_a6903_row10_col1" class="data row10 col1" ></td>
	  <td id="T_a6903_row10_col2" class="data row10 col2" ></td>
	  <td id="T_a6903_row10_col3" class="data row10 col3" ></td>
	  <td id="T_a6903_row10_col4" class="data row10 col4" ></td>
	  <td id="T_a6903_row10_col5" class="data row10 col5" ></td>
	  <td id="T_a6903_row10_col6" class="data row10 col6" ></td>
	  <td id="T_a6903_row10_col7" class="data row10 col7" ></td>
	  <td id="T_a6903_row10_col8" class="data row10 col8" ></td>
	  <td id="T_a6903_row10_col9" class="data row10 col9" ></td>
	  <td id="T_a6903_row10_col10" class="data row10 col10" >102.78</td>
	  <td id="T_a6903_row10_col11" class="data row10 col11" >101.37</td>
	</tr>
	<tr>
	  <th id="T_a6903_level0_row11" class="row_heading level0 row11" >11</th>
	  <td id="T_a6903_row11_col0" class="data row11 col0" ></td>
	  <td id="T_a6903_row11_col1" class="data row11 col1" ></td>
	  <td id="T_a6903_row11_col2" class="data row11 col2" ></td>
	  <td id="T_a6903_row11_col3" class="data row11 col3" ></td>
	  <td id="T_a6903_row11_col4" class="data row11 col4" ></td>
	  <td id="T_a6903_row11_col5" class="data row11 col5" ></td>
	  <td id="T_a6903_row11_col6" class="data row11 col6" ></td>
	  <td id="T_a6903_row11_col7" class="data row11 col7" ></td>
	  <td id="T_a6903_row11_col8" class="data row11 col8" ></td>
	  <td id="T_a6903_row11_col9" class="data row11 col9" ></td>
	  <td id="T_a6903_row11_col10" class="data row11 col10" ></td>
	  <td id="T_a6903_row11_col11" class="data row11 col11" >101.41</td>
	</tr>
  </tbody>
</table>

```python
accint = construct_accint(bondtree.columns.values, compound, cpn)
cleantree = np.maximum(bondtree.subtract(accint,axis=1),0)

cleantree.style.format('{:.2f}',na_rep='').applymap(highlight_values).format_index('{:.2f}',axis=1)
```

<style type="text/css">
#T_f4a17_row0_col0, #T_f4a17_row0_col1, #T_f4a17_row0_col2, #T_f4a17_row0_col4, #T_f4a17_row1_col1, #T_f4a17_row1_col2, #T_f4a17_row1_col3, #T_f4a17_row1_col4, #T_f4a17_row2_col2, #T_f4a17_row2_col3, #T_f4a17_row2_col4, #T_f4a17_row2_col5, #T_f4a17_row2_col6, #T_f4a17_row3_col3, #T_f4a17_row3_col4, #T_f4a17_row3_col5, #T_f4a17_row3_col6, #T_f4a17_row3_col7, #T_f4a17_row3_col8, #T_f4a17_row4_col4, #T_f4a17_row4_col5, #T_f4a17_row4_col6, #T_f4a17_row4_col7, #T_f4a17_row4_col8, #T_f4a17_row4_col9, #T_f4a17_row4_col10, #T_f4a17_row5_col5, #T_f4a17_row5_col6, #T_f4a17_row5_col7, #T_f4a17_row5_col8, #T_f4a17_row5_col9, #T_f4a17_row5_col10, #T_f4a17_row6_col6, #T_f4a17_row6_col7, #T_f4a17_row6_col8, #T_f4a17_row6_col9, #T_f4a17_row6_col10, #T_f4a17_row7_col7, #T_f4a17_row7_col8, #T_f4a17_row7_col9, #T_f4a17_row7_col10, #T_f4a17_row8_col8, #T_f4a17_row8_col9, #T_f4a17_row8_col10, #T_f4a17_row9_col9, #T_f4a17_row9_col10, #T_f4a17_row10_col10 {
  background-color: #ccffcc;
}
#T_f4a17_row0_col3, #T_f4a17_row0_col5, #T_f4a17_row0_col6, #T_f4a17_row0_col7, #T_f4a17_row0_col8, #T_f4a17_row0_col9, #T_f4a17_row0_col10, #T_f4a17_row0_col11, #T_f4a17_row1_col5, #T_f4a17_row1_col6, #T_f4a17_row1_col7, #T_f4a17_row1_col8, #T_f4a17_row1_col9, #T_f4a17_row1_col10, #T_f4a17_row1_col11, #T_f4a17_row2_col7, #T_f4a17_row2_col8, #T_f4a17_row2_col9, #T_f4a17_row2_col10, #T_f4a17_row2_col11, #T_f4a17_row3_col9, #T_f4a17_row3_col10, #T_f4a17_row3_col11, #T_f4a17_row4_col11, #T_f4a17_row5_col11, #T_f4a17_row6_col11, #T_f4a17_row7_col11, #T_f4a17_row8_col11, #T_f4a17_row9_col11, #T_f4a17_row10_col11, #T_f4a17_row11_col11 {
  background-color: #ffcccc;
}
#T_f4a17_row1_col0, #T_f4a17_row2_col0, #T_f4a17_row2_col1, #T_f4a17_row3_col0, #T_f4a17_row3_col1, #T_f4a17_row3_col2, #T_f4a17_row4_col0, #T_f4a17_row4_col1, #T_f4a17_row4_col2, #T_f4a17_row4_col3, #T_f4a17_row5_col0, #T_f4a17_row5_col1, #T_f4a17_row5_col2, #T_f4a17_row5_col3, #T_f4a17_row5_col4, #T_f4a17_row6_col0, #T_f4a17_row6_col1, #T_f4a17_row6_col2, #T_f4a17_row6_col3, #T_f4a17_row6_col4, #T_f4a17_row6_col5, #T_f4a17_row7_col0, #T_f4a17_row7_col1, #T_f4a17_row7_col2, #T_f4a17_row7_col3, #T_f4a17_row7_col4, #T_f4a17_row7_col5, #T_f4a17_row7_col6, #T_f4a17_row8_col0, #T_f4a17_row8_col1, #T_f4a17_row8_col2, #T_f4a17_row8_col3, #T_f4a17_row8_col4, #T_f4a17_row8_col5, #T_f4a17_row8_col6, #T_f4a17_row8_col7, #T_f4a17_row9_col0, #T_f4a17_row9_col1, #T_f4a17_row9_col2, #T_f4a17_row9_col3, #T_f4a17_row9_col4, #T_f4a17_row9_col5, #T_f4a17_row9_col6, #T_f4a17_row9_col7, #T_f4a17_row9_col8, #T_f4a17_row10_col0, #T_f4a17_row10_col1, #T_f4a17_row10_col2, #T_f4a17_row10_col3, #T_f4a17_row10_col4, #T_f4a17_row10_col5, #T_f4a17_row10_col6, #T_f4a17_row10_col7, #T_f4a17_row10_col8, #T_f4a17_row10_col9, #T_f4a17_row11_col0, #T_f4a17_row11_col1, #T_f4a17_row11_col2, #T_f4a17_row11_col3, #T_f4a17_row11_col4, #T_f4a17_row11_col5, #T_f4a17_row11_col6, #T_f4a17_row11_col7, #T_f4a17_row11_col8, #T_f4a17_row11_col9, #T_f4a17_row11_col10 {
  background-color: #d3d3d3;
}
</style>
<table id="T_f4a17">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_f4a17_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_f4a17_level0_col1" class="col_heading level0 col1" >0.25</th>
	  <th id="T_f4a17_level0_col2" class="col_heading level0 col2" >0.50</th>
	  <th id="T_f4a17_level0_col3" class="col_heading level0 col3" >0.75</th>
	  <th id="T_f4a17_level0_col4" class="col_heading level0 col4" >1.00</th>
	  <th id="T_f4a17_level0_col5" class="col_heading level0 col5" >1.25</th>
	  <th id="T_f4a17_level0_col6" class="col_heading level0 col6" >1.50</th>
	  <th id="T_f4a17_level0_col7" class="col_heading level0 col7" >1.75</th>
	  <th id="T_f4a17_level0_col8" class="col_heading level0 col8" >2.00</th>
	  <th id="T_f4a17_level0_col9" class="col_heading level0 col9" >2.25</th>
	  <th id="T_f4a17_level0_col10" class="col_heading level0 col10" >2.50</th>
	  <th id="T_f4a17_level0_col11" class="col_heading level0 col11" >2.75</th>
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
	  <th id="T_f4a17_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_f4a17_row0_col0" class="data row0 col0" >105.31</td>
	  <td id="T_f4a17_row0_col1" class="data row0 col1" >102.40</td>
	  <td id="T_f4a17_row0_col2" class="data row0 col2" >102.57</td>
	  <td id="T_f4a17_row0_col3" class="data row0 col3" >99.82</td>
	  <td id="T_f4a17_row0_col4" class="data row0 col4" >100.16</td>
	  <td id="T_f4a17_row0_col5" class="data row0 col5" >97.54</td>
	  <td id="T_f4a17_row0_col6" class="data row0 col6" >98.10</td>
	  <td id="T_f4a17_row0_col7" class="data row0 col7" >95.89</td>
	  <td id="T_f4a17_row0_col8" class="data row0 col8" >96.99</td>
	  <td id="T_f4a17_row0_col9" class="data row0 col9" >95.38</td>
	  <td id="T_f4a17_row0_col10" class="data row0 col10" >97.25</td>
	  <td id="T_f4a17_row0_col11" class="data row0 col11" >96.75</td>
	</tr>
	<tr>
	  <th id="T_f4a17_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_f4a17_row1_col0" class="data row1 col0" ></td>
	  <td id="T_f4a17_row1_col1" class="data row1 col1" >104.96</td>
	  <td id="T_f4a17_row1_col2" class="data row1 col2" >105.05</td>
	  <td id="T_f4a17_row1_col3" class="data row1 col3" >102.19</td>
	  <td id="T_f4a17_row1_col4" class="data row1 col4" >102.39</td>
	  <td id="T_f4a17_row1_col5" class="data row1 col5" >99.60</td>
	  <td id="T_f4a17_row1_col6" class="data row1 col6" >99.95</td>
	  <td id="T_f4a17_row1_col7" class="data row1 col7" >97.51</td>
	  <td id="T_f4a17_row1_col8" class="data row1 col8" >98.35</td>
	  <td id="T_f4a17_row1_col9" class="data row1 col9" >96.46</td>
	  <td id="T_f4a17_row1_col10" class="data row1 col10" >98.03</td>
	  <td id="T_f4a17_row1_col11" class="data row1 col11" >97.17</td>
	</tr>
	<tr>
	  <th id="T_f4a17_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_f4a17_row2_col0" class="data row2 col0" ></td>
	  <td id="T_f4a17_row2_col1" class="data row2 col1" ></td>
	  <td id="T_f4a17_row2_col2" class="data row2 col2" >107.38</td>
	  <td id="T_f4a17_row2_col3" class="data row2 col3" >104.46</td>
	  <td id="T_f4a17_row2_col4" class="data row2 col4" >104.57</td>
	  <td id="T_f4a17_row2_col5" class="data row2 col5" >101.67</td>
	  <td id="T_f4a17_row2_col6" class="data row2 col6" >101.87</td>
	  <td id="T_f4a17_row2_col7" class="data row2 col7" >99.23</td>
	  <td id="T_f4a17_row2_col8" class="data row2 col8" >99.81</td>
	  <td id="T_f4a17_row2_col9" class="data row2 col9" >97.63</td>
	  <td id="T_f4a17_row2_col10" class="data row2 col10" >98.86</td>
	  <td id="T_f4a17_row2_col11" class="data row2 col11" >97.62</td>
	</tr>
	<tr>
	  <th id="T_f4a17_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_f4a17_row3_col0" class="data row3 col0" ></td>
	  <td id="T_f4a17_row3_col1" class="data row3 col1" ></td>
	  <td id="T_f4a17_row3_col2" class="data row3 col2" ></td>
	  <td id="T_f4a17_row3_col3" class="data row3 col3" >106.48</td>
	  <td id="T_f4a17_row3_col4" class="data row3 col4" >106.55</td>
	  <td id="T_f4a17_row3_col5" class="data row3 col5" >103.60</td>
	  <td id="T_f4a17_row3_col6" class="data row3 col6" >103.71</td>
	  <td id="T_f4a17_row3_col7" class="data row3 col7" >100.93</td>
	  <td id="T_f4a17_row3_col8" class="data row3 col8" >101.31</td>
	  <td id="T_f4a17_row3_col9" class="data row3 col9" >98.87</td>
	  <td id="T_f4a17_row3_col10" class="data row3 col10" >99.75</td>
	  <td id="T_f4a17_row3_col11" class="data row3 col11" >98.08</td>
	</tr>
	<tr>
	  <th id="T_f4a17_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_f4a17_row4_col0" class="data row4 col0" ></td>
	  <td id="T_f4a17_row4_col1" class="data row4 col1" ></td>
	  <td id="T_f4a17_row4_col2" class="data row4 col2" ></td>
	  <td id="T_f4a17_row4_col3" class="data row4 col3" ></td>
	  <td id="T_f4a17_row4_col4" class="data row4 col4" >108.23</td>
	  <td id="T_f4a17_row4_col5" class="data row4 col5" >105.25</td>
	  <td id="T_f4a17_row4_col6" class="data row4 col6" >105.32</td>
	  <td id="T_f4a17_row4_col7" class="data row4 col7" >102.47</td>
	  <td id="T_f4a17_row4_col8" class="data row4 col8" >102.73</td>
	  <td id="T_f4a17_row4_col9" class="data row4 col9" >100.11</td>
	  <td id="T_f4a17_row4_col10" class="data row4 col10" >100.72</td>
	  <td id="T_f4a17_row4_col11" class="data row4 col11" >98.65</td>
	</tr>
	<tr>
	  <th id="T_f4a17_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_f4a17_row5_col0" class="data row5 col0" ></td>
	  <td id="T_f4a17_row5_col1" class="data row5 col1" ></td>
	  <td id="T_f4a17_row5_col2" class="data row5 col2" ></td>
	  <td id="T_f4a17_row5_col3" class="data row5 col3" ></td>
	  <td id="T_f4a17_row5_col4" class="data row5 col4" ></td>
	  <td id="T_f4a17_row5_col5" class="data row5 col5" >106.44</td>
	  <td id="T_f4a17_row5_col6" class="data row5 col6" >106.49</td>
	  <td id="T_f4a17_row5_col7" class="data row5 col7" >103.59</td>
	  <td id="T_f4a17_row5_col8" class="data row5 col8" >103.76</td>
	  <td id="T_f4a17_row5_col9" class="data row5 col9" >101.02</td>
	  <td id="T_f4a17_row5_col10" class="data row5 col10" >101.43</td>
	  <td id="T_f4a17_row5_col11" class="data row5 col11" >99.07</td>
	</tr>
	<tr>
	  <th id="T_f4a17_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_f4a17_row6_col0" class="data row6 col0" ></td>
	  <td id="T_f4a17_row6_col1" class="data row6 col1" ></td>
	  <td id="T_f4a17_row6_col2" class="data row6 col2" ></td>
	  <td id="T_f4a17_row6_col3" class="data row6 col3" ></td>
	  <td id="T_f4a17_row6_col4" class="data row6 col4" ></td>
	  <td id="T_f4a17_row6_col5" class="data row6 col5" ></td>
	  <td id="T_f4a17_row6_col6" class="data row6 col6" >107.30</td>
	  <td id="T_f4a17_row6_col7" class="data row6 col7" >104.37</td>
	  <td id="T_f4a17_row6_col8" class="data row6 col8" >104.49</td>
	  <td id="T_f4a17_row6_col9" class="data row6 col9" >101.66</td>
	  <td id="T_f4a17_row6_col10" class="data row6 col10" >101.94</td>
	  <td id="T_f4a17_row6_col11" class="data row6 col11" >99.37</td>
	</tr>
	<tr>
	  <th id="T_f4a17_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_f4a17_row7_col0" class="data row7 col0" ></td>
	  <td id="T_f4a17_row7_col1" class="data row7 col1" ></td>
	  <td id="T_f4a17_row7_col2" class="data row7 col2" ></td>
	  <td id="T_f4a17_row7_col3" class="data row7 col3" ></td>
	  <td id="T_f4a17_row7_col4" class="data row7 col4" ></td>
	  <td id="T_f4a17_row7_col5" class="data row7 col5" ></td>
	  <td id="T_f4a17_row7_col6" class="data row7 col6" ></td>
	  <td id="T_f4a17_row7_col7" class="data row7 col7" >104.90</td>
	  <td id="T_f4a17_row7_col8" class="data row7 col8" >104.98</td>
	  <td id="T_f4a17_row7_col9" class="data row7 col9" >102.10</td>
	  <td id="T_f4a17_row7_col10" class="data row7 col10" >102.29</td>
	  <td id="T_f4a17_row7_col11" class="data row7 col11" >99.58</td>
	</tr>
	<tr>
	  <th id="T_f4a17_level0_row8" class="row_heading level0 row8" >8</th>
	  <td id="T_f4a17_row8_col0" class="data row8 col0" ></td>
	  <td id="T_f4a17_row8_col1" class="data row8 col1" ></td>
	  <td id="T_f4a17_row8_col2" class="data row8 col2" ></td>
	  <td id="T_f4a17_row8_col3" class="data row8 col3" ></td>
	  <td id="T_f4a17_row8_col4" class="data row8 col4" ></td>
	  <td id="T_f4a17_row8_col5" class="data row8 col5" ></td>
	  <td id="T_f4a17_row8_col6" class="data row8 col6" ></td>
	  <td id="T_f4a17_row8_col7" class="data row8 col7" ></td>
	  <td id="T_f4a17_row8_col8" class="data row8 col8" >105.31</td>
	  <td id="T_f4a17_row8_col9" class="data row8 col9" >102.39</td>
	  <td id="T_f4a17_row8_col10" class="data row8 col10" >102.52</td>
	  <td id="T_f4a17_row8_col11" class="data row8 col11" >99.72</td>
	</tr>
	<tr>
	  <th id="T_f4a17_level0_row9" class="row_heading level0 row9" >9</th>
	  <td id="T_f4a17_row9_col0" class="data row9 col0" ></td>
	  <td id="T_f4a17_row9_col1" class="data row9 col1" ></td>
	  <td id="T_f4a17_row9_col2" class="data row9 col2" ></td>
	  <td id="T_f4a17_row9_col3" class="data row9 col3" ></td>
	  <td id="T_f4a17_row9_col4" class="data row9 col4" ></td>
	  <td id="T_f4a17_row9_col5" class="data row9 col5" ></td>
	  <td id="T_f4a17_row9_col6" class="data row9 col6" ></td>
	  <td id="T_f4a17_row9_col7" class="data row9 col7" ></td>
	  <td id="T_f4a17_row9_col8" class="data row9 col8" ></td>
	  <td id="T_f4a17_row9_col9" class="data row9 col9" >102.58</td>
	  <td id="T_f4a17_row9_col10" class="data row9 col10" >102.67</td>
	  <td id="T_f4a17_row9_col11" class="data row9 col11" >99.81</td>
	</tr>
	<tr>
	  <th id="T_f4a17_level0_row10" class="row_heading level0 row10" >10</th>
	  <td id="T_f4a17_row10_col0" class="data row10 col0" ></td>
	  <td id="T_f4a17_row10_col1" class="data row10 col1" ></td>
	  <td id="T_f4a17_row10_col2" class="data row10 col2" ></td>
	  <td id="T_f4a17_row10_col3" class="data row10 col3" ></td>
	  <td id="T_f4a17_row10_col4" class="data row10 col4" ></td>
	  <td id="T_f4a17_row10_col5" class="data row10 col5" ></td>
	  <td id="T_f4a17_row10_col6" class="data row10 col6" ></td>
	  <td id="T_f4a17_row10_col7" class="data row10 col7" ></td>
	  <td id="T_f4a17_row10_col8" class="data row10 col8" ></td>
	  <td id="T_f4a17_row10_col9" class="data row10 col9" ></td>
	  <td id="T_f4a17_row10_col10" class="data row10 col10" >102.78</td>
	  <td id="T_f4a17_row10_col11" class="data row10 col11" >99.87</td>
	</tr>
	<tr>
	  <th id="T_f4a17_level0_row11" class="row_heading level0 row11" >11</th>
	  <td id="T_f4a17_row11_col0" class="data row11 col0" ></td>
	  <td id="T_f4a17_row11_col1" class="data row11 col1" ></td>
	  <td id="T_f4a17_row11_col2" class="data row11 col2" ></td>
	  <td id="T_f4a17_row11_col3" class="data row11 col3" ></td>
	  <td id="T_f4a17_row11_col4" class="data row11 col4" ></td>
	  <td id="T_f4a17_row11_col5" class="data row11 col5" ></td>
	  <td id="T_f4a17_row11_col6" class="data row11 col6" ></td>
	  <td id="T_f4a17_row11_col7" class="data row11 col7" ></td>
	  <td id="T_f4a17_row11_col8" class="data row11 col8" ></td>
	  <td id="T_f4a17_row11_col9" class="data row11 col9" ></td>
	  <td id="T_f4a17_row11_col10" class="data row11 col10" ></td>
	  <td id="T_f4a17_row11_col11" class="data row11 col11" >99.91</td>
	</tr>
  </tbody>
</table>

## **<span style="color:red">3.2 </span>**

```python
Topt = 1.5
STRIKE = 100
CLEANCALL = True
```

```python
tsteps = int(Topt/dt)

if CLEANCALL:
    undertree = cleantree
else:
    undertree = bondtree
    
calltree = bintree_pricing(payoff=payoff_call, ratetree=ratetree.iloc[:tsteps+1,:tsteps+1], undertree= undertree.iloc[:tsteps+1,:tsteps+1])
format_bintree(calltree)
```

<style type="text/css">
</style>
<table id="T_881b2">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_881b2_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_881b2_level0_col1" class="col_heading level0 col1" >0.25</th>
	  <th id="T_881b2_level0_col2" class="col_heading level0 col2" >0.50</th>
	  <th id="T_881b2_level0_col3" class="col_heading level0 col3" >0.75</th>
	  <th id="T_881b2_level0_col4" class="col_heading level0 col4" >1.00</th>
	  <th id="T_881b2_level0_col5" class="col_heading level0 col5" >1.25</th>
	  <th id="T_881b2_level0_col6" class="col_heading level0 col6" >1.50</th>
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
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_881b2_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_881b2_row0_col0" class="data row0 col0" >3.34</td>
	  <td id="T_881b2_row0_col1" class="data row0 col1" >2.62</td>
	  <td id="T_881b2_row0_col2" class="data row0 col2" >1.87</td>
	  <td id="T_881b2_row0_col3" class="data row0 col3" >1.12</td>
	  <td id="T_881b2_row0_col4" class="data row0 col4" >0.45</td>
	  <td id="T_881b2_row0_col5" class="data row0 col5" >0.00</td>
	  <td id="T_881b2_row0_col6" class="data row0 col6" >0.00</td>
	</tr>
	<tr>
	  <th id="T_881b2_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_881b2_row1_col0" class="data row1 col0" ></td>
	  <td id="T_881b2_row1_col1" class="data row1 col1" >4.15</td>
	  <td id="T_881b2_row1_col2" class="data row1 col2" >3.45</td>
	  <td id="T_881b2_row1_col3" class="data row1 col3" >2.67</td>
	  <td id="T_881b2_row1_col4" class="data row1 col4" >1.82</td>
	  <td id="T_881b2_row1_col5" class="data row1 col5" >0.92</td>
	  <td id="T_881b2_row1_col6" class="data row1 col6" >0.00</td>
	</tr>
	<tr>
	  <th id="T_881b2_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_881b2_row2_col0" class="data row2 col0" ></td>
	  <td id="T_881b2_row2_col1" class="data row2 col1" ></td>
	  <td id="T_881b2_row2_col2" class="data row2 col2" >4.95</td>
	  <td id="T_881b2_row2_col3" class="data row2 col3" >4.31</td>
	  <td id="T_881b2_row2_col4" class="data row2 col4" >3.58</td>
	  <td id="T_881b2_row2_col5" class="data row2 col5" >2.76</td>
	  <td id="T_881b2_row2_col6" class="data row2 col6" >1.87</td>
	</tr>
	<tr>
	  <th id="T_881b2_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_881b2_row3_col0" class="data row3 col0" ></td>
	  <td id="T_881b2_row3_col1" class="data row3 col1" ></td>
	  <td id="T_881b2_row3_col2" class="data row3 col2" ></td>
	  <td id="T_881b2_row3_col3" class="data row3 col3" >5.68</td>
	  <td id="T_881b2_row3_col4" class="data row3 col4" >5.13</td>
	  <td id="T_881b2_row3_col5" class="data row3 col5" >4.48</td>
	  <td id="T_881b2_row3_col6" class="data row3 col6" >3.71</td>
	</tr>
	<tr>
	  <th id="T_881b2_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_881b2_row4_col0" class="data row4 col0" ></td>
	  <td id="T_881b2_row4_col1" class="data row4 col1" ></td>
	  <td id="T_881b2_row4_col2" class="data row4 col2" ></td>
	  <td id="T_881b2_row4_col3" class="data row4 col3" ></td>
	  <td id="T_881b2_row4_col4" class="data row4 col4" >6.33</td>
	  <td id="T_881b2_row4_col5" class="data row4 col5" >5.87</td>
	  <td id="T_881b2_row4_col6" class="data row4 col6" >5.32</td>
	</tr>
	<tr>
	  <th id="T_881b2_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_881b2_row5_col0" class="data row5 col0" ></td>
	  <td id="T_881b2_row5_col1" class="data row5 col1" ></td>
	  <td id="T_881b2_row5_col2" class="data row5 col2" ></td>
	  <td id="T_881b2_row5_col3" class="data row5 col3" ></td>
	  <td id="T_881b2_row5_col4" class="data row5 col4" ></td>
	  <td id="T_881b2_row5_col5" class="data row5 col5" >6.87</td>
	  <td id="T_881b2_row5_col6" class="data row5 col6" >6.49</td>
	</tr>
	<tr>
	  <th id="T_881b2_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_881b2_row6_col0" class="data row6 col0" ></td>
	  <td id="T_881b2_row6_col1" class="data row6 col1" ></td>
	  <td id="T_881b2_row6_col2" class="data row6 col2" ></td>
	  <td id="T_881b2_row6_col3" class="data row6 col3" ></td>
	  <td id="T_881b2_row6_col4" class="data row6 col4" ></td>
	  <td id="T_881b2_row6_col5" class="data row6 col5" ></td>
	  <td id="T_881b2_row6_col6" class="data row6 col6" >7.30</td>
	</tr>
  </tbody>
</table>

## **<span style="color:red">3.3 </span>**

```python
callabletree_clean = cleantree - calltree
callabletree_dirty = bondtree - calltree

format_bintree(callabletree_clean)
```

<style type="text/css">
</style>
<table id="T_d66b2">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_d66b2_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_d66b2_level0_col1" class="col_heading level0 col1" >0.25</th>
	  <th id="T_d66b2_level0_col2" class="col_heading level0 col2" >0.50</th>
	  <th id="T_d66b2_level0_col3" class="col_heading level0 col3" >0.75</th>
	  <th id="T_d66b2_level0_col4" class="col_heading level0 col4" >1.00</th>
	  <th id="T_d66b2_level0_col5" class="col_heading level0 col5" >1.25</th>
	  <th id="T_d66b2_level0_col6" class="col_heading level0 col6" >1.50</th>
	  <th id="T_d66b2_level0_col7" class="col_heading level0 col7" >1.75</th>
	  <th id="T_d66b2_level0_col8" class="col_heading level0 col8" >2.00</th>
	  <th id="T_d66b2_level0_col9" class="col_heading level0 col9" >2.25</th>
	  <th id="T_d66b2_level0_col10" class="col_heading level0 col10" >2.50</th>
	  <th id="T_d66b2_level0_col11" class="col_heading level0 col11" >2.75</th>
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
	  <th id="T_d66b2_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_d66b2_row0_col0" class="data row0 col0" >101.97</td>
	  <td id="T_d66b2_row0_col1" class="data row0 col1" >99.78</td>
	  <td id="T_d66b2_row0_col2" class="data row0 col2" >100.71</td>
	  <td id="T_d66b2_row0_col3" class="data row0 col3" >98.70</td>
	  <td id="T_d66b2_row0_col4" class="data row0 col4" >99.71</td>
	  <td id="T_d66b2_row0_col5" class="data row0 col5" >97.54</td>
	  <td id="T_d66b2_row0_col6" class="data row0 col6" >98.10</td>
	  <td id="T_d66b2_row0_col7" class="data row0 col7" ></td>
	  <td id="T_d66b2_row0_col8" class="data row0 col8" ></td>
	  <td id="T_d66b2_row0_col9" class="data row0 col9" ></td>
	  <td id="T_d66b2_row0_col10" class="data row0 col10" ></td>
	  <td id="T_d66b2_row0_col11" class="data row0 col11" ></td>
	</tr>
	<tr>
	  <th id="T_d66b2_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_d66b2_row1_col0" class="data row1 col0" ></td>
	  <td id="T_d66b2_row1_col1" class="data row1 col1" >100.81</td>
	  <td id="T_d66b2_row1_col2" class="data row1 col2" >101.60</td>
	  <td id="T_d66b2_row1_col3" class="data row1 col3" >99.52</td>
	  <td id="T_d66b2_row1_col4" class="data row1 col4" >100.57</td>
	  <td id="T_d66b2_row1_col5" class="data row1 col5" >98.67</td>
	  <td id="T_d66b2_row1_col6" class="data row1 col6" >99.95</td>
	  <td id="T_d66b2_row1_col7" class="data row1 col7" ></td>
	  <td id="T_d66b2_row1_col8" class="data row1 col8" ></td>
	  <td id="T_d66b2_row1_col9" class="data row1 col9" ></td>
	  <td id="T_d66b2_row1_col10" class="data row1 col10" ></td>
	  <td id="T_d66b2_row1_col11" class="data row1 col11" ></td>
	</tr>
	<tr>
	  <th id="T_d66b2_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_d66b2_row2_col0" class="data row2 col0" ></td>
	  <td id="T_d66b2_row2_col1" class="data row2 col1" ></td>
	  <td id="T_d66b2_row2_col2" class="data row2 col2" >102.44</td>
	  <td id="T_d66b2_row2_col3" class="data row2 col3" >100.15</td>
	  <td id="T_d66b2_row2_col4" class="data row2 col4" >100.99</td>
	  <td id="T_d66b2_row2_col5" class="data row2 col5" >98.91</td>
	  <td id="T_d66b2_row2_col6" class="data row2 col6" >100.00</td>
	  <td id="T_d66b2_row2_col7" class="data row2 col7" ></td>
	  <td id="T_d66b2_row2_col8" class="data row2 col8" ></td>
	  <td id="T_d66b2_row2_col9" class="data row2 col9" ></td>
	  <td id="T_d66b2_row2_col10" class="data row2 col10" ></td>
	  <td id="T_d66b2_row2_col11" class="data row2 col11" ></td>
	</tr>
	<tr>
	  <th id="T_d66b2_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_d66b2_row3_col0" class="data row3 col0" ></td>
	  <td id="T_d66b2_row3_col1" class="data row3 col1" ></td>
	  <td id="T_d66b2_row3_col2" class="data row3 col2" ></td>
	  <td id="T_d66b2_row3_col3" class="data row3 col3" >100.80</td>
	  <td id="T_d66b2_row3_col4" class="data row3 col4" >101.42</td>
	  <td id="T_d66b2_row3_col5" class="data row3 col5" >99.12</td>
	  <td id="T_d66b2_row3_col6" class="data row3 col6" >100.00</td>
	  <td id="T_d66b2_row3_col7" class="data row3 col7" ></td>
	  <td id="T_d66b2_row3_col8" class="data row3 col8" ></td>
	  <td id="T_d66b2_row3_col9" class="data row3 col9" ></td>
	  <td id="T_d66b2_row3_col10" class="data row3 col10" ></td>
	  <td id="T_d66b2_row3_col11" class="data row3 col11" ></td>
	</tr>
	<tr>
	  <th id="T_d66b2_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_d66b2_row4_col0" class="data row4 col0" ></td>
	  <td id="T_d66b2_row4_col1" class="data row4 col1" ></td>
	  <td id="T_d66b2_row4_col2" class="data row4 col2" ></td>
	  <td id="T_d66b2_row4_col3" class="data row4 col3" ></td>
	  <td id="T_d66b2_row4_col4" class="data row4 col4" >101.89</td>
	  <td id="T_d66b2_row4_col5" class="data row4 col5" >99.38</td>
	  <td id="T_d66b2_row4_col6" class="data row4 col6" >100.00</td>
	  <td id="T_d66b2_row4_col7" class="data row4 col7" ></td>
	  <td id="T_d66b2_row4_col8" class="data row4 col8" ></td>
	  <td id="T_d66b2_row4_col9" class="data row4 col9" ></td>
	  <td id="T_d66b2_row4_col10" class="data row4 col10" ></td>
	  <td id="T_d66b2_row4_col11" class="data row4 col11" ></td>
	</tr>
	<tr>
	  <th id="T_d66b2_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_d66b2_row5_col0" class="data row5 col0" ></td>
	  <td id="T_d66b2_row5_col1" class="data row5 col1" ></td>
	  <td id="T_d66b2_row5_col2" class="data row5 col2" ></td>
	  <td id="T_d66b2_row5_col3" class="data row5 col3" ></td>
	  <td id="T_d66b2_row5_col4" class="data row5 col4" ></td>
	  <td id="T_d66b2_row5_col5" class="data row5 col5" >99.58</td>
	  <td id="T_d66b2_row5_col6" class="data row5 col6" >100.00</td>
	  <td id="T_d66b2_row5_col7" class="data row5 col7" ></td>
	  <td id="T_d66b2_row5_col8" class="data row5 col8" ></td>
	  <td id="T_d66b2_row5_col9" class="data row5 col9" ></td>
	  <td id="T_d66b2_row5_col10" class="data row5 col10" ></td>
	  <td id="T_d66b2_row5_col11" class="data row5 col11" ></td>
	</tr>
	<tr>
	  <th id="T_d66b2_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_d66b2_row6_col0" class="data row6 col0" ></td>
	  <td id="T_d66b2_row6_col1" class="data row6 col1" ></td>
	  <td id="T_d66b2_row6_col2" class="data row6 col2" ></td>
	  <td id="T_d66b2_row6_col3" class="data row6 col3" ></td>
	  <td id="T_d66b2_row6_col4" class="data row6 col4" ></td>
	  <td id="T_d66b2_row6_col5" class="data row6 col5" ></td>
	  <td id="T_d66b2_row6_col6" class="data row6 col6" >100.00</td>
	  <td id="T_d66b2_row6_col7" class="data row6 col7" ></td>
	  <td id="T_d66b2_row6_col8" class="data row6 col8" ></td>
	  <td id="T_d66b2_row6_col9" class="data row6 col9" ></td>
	  <td id="T_d66b2_row6_col10" class="data row6 col10" ></td>
	  <td id="T_d66b2_row6_col11" class="data row6 col11" ></td>
	</tr>
	<tr>
	  <th id="T_d66b2_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_d66b2_row7_col0" class="data row7 col0" ></td>
	  <td id="T_d66b2_row7_col1" class="data row7 col1" ></td>
	  <td id="T_d66b2_row7_col2" class="data row7 col2" ></td>
	  <td id="T_d66b2_row7_col3" class="data row7 col3" ></td>
	  <td id="T_d66b2_row7_col4" class="data row7 col4" ></td>
	  <td id="T_d66b2_row7_col5" class="data row7 col5" ></td>
	  <td id="T_d66b2_row7_col6" class="data row7 col6" ></td>
	  <td id="T_d66b2_row7_col7" class="data row7 col7" ></td>
	  <td id="T_d66b2_row7_col8" class="data row7 col8" ></td>
	  <td id="T_d66b2_row7_col9" class="data row7 col9" ></td>
	  <td id="T_d66b2_row7_col10" class="data row7 col10" ></td>
	  <td id="T_d66b2_row7_col11" class="data row7 col11" ></td>
	</tr>
	<tr>
	  <th id="T_d66b2_level0_row8" class="row_heading level0 row8" >8</th>
	  <td id="T_d66b2_row8_col0" class="data row8 col0" ></td>
	  <td id="T_d66b2_row8_col1" class="data row8 col1" ></td>
	  <td id="T_d66b2_row8_col2" class="data row8 col2" ></td>
	  <td id="T_d66b2_row8_col3" class="data row8 col3" ></td>
	  <td id="T_d66b2_row8_col4" class="data row8 col4" ></td>
	  <td id="T_d66b2_row8_col5" class="data row8 col5" ></td>
	  <td id="T_d66b2_row8_col6" class="data row8 col6" ></td>
	  <td id="T_d66b2_row8_col7" class="data row8 col7" ></td>
	  <td id="T_d66b2_row8_col8" class="data row8 col8" ></td>
	  <td id="T_d66b2_row8_col9" class="data row8 col9" ></td>
	  <td id="T_d66b2_row8_col10" class="data row8 col10" ></td>
	  <td id="T_d66b2_row8_col11" class="data row8 col11" ></td>
	</tr>
	<tr>
	  <th id="T_d66b2_level0_row9" class="row_heading level0 row9" >9</th>
	  <td id="T_d66b2_row9_col0" class="data row9 col0" ></td>
	  <td id="T_d66b2_row9_col1" class="data row9 col1" ></td>
	  <td id="T_d66b2_row9_col2" class="data row9 col2" ></td>
	  <td id="T_d66b2_row9_col3" class="data row9 col3" ></td>
	  <td id="T_d66b2_row9_col4" class="data row9 col4" ></td>
	  <td id="T_d66b2_row9_col5" class="data row9 col5" ></td>
	  <td id="T_d66b2_row9_col6" class="data row9 col6" ></td>
	  <td id="T_d66b2_row9_col7" class="data row9 col7" ></td>
	  <td id="T_d66b2_row9_col8" class="data row9 col8" ></td>
	  <td id="T_d66b2_row9_col9" class="data row9 col9" ></td>
	  <td id="T_d66b2_row9_col10" class="data row9 col10" ></td>
	  <td id="T_d66b2_row9_col11" class="data row9 col11" ></td>
	</tr>
	<tr>
	  <th id="T_d66b2_level0_row10" class="row_heading level0 row10" >10</th>
	  <td id="T_d66b2_row10_col0" class="data row10 col0" ></td>
	  <td id="T_d66b2_row10_col1" class="data row10 col1" ></td>
	  <td id="T_d66b2_row10_col2" class="data row10 col2" ></td>
	  <td id="T_d66b2_row10_col3" class="data row10 col3" ></td>
	  <td id="T_d66b2_row10_col4" class="data row10 col4" ></td>
	  <td id="T_d66b2_row10_col5" class="data row10 col5" ></td>
	  <td id="T_d66b2_row10_col6" class="data row10 col6" ></td>
	  <td id="T_d66b2_row10_col7" class="data row10 col7" ></td>
	  <td id="T_d66b2_row10_col8" class="data row10 col8" ></td>
	  <td id="T_d66b2_row10_col9" class="data row10 col9" ></td>
	  <td id="T_d66b2_row10_col10" class="data row10 col10" ></td>
	  <td id="T_d66b2_row10_col11" class="data row10 col11" ></td>
	</tr>
	<tr>
	  <th id="T_d66b2_level0_row11" class="row_heading level0 row11" >11</th>
	  <td id="T_d66b2_row11_col0" class="data row11 col0" ></td>
	  <td id="T_d66b2_row11_col1" class="data row11 col1" ></td>
	  <td id="T_d66b2_row11_col2" class="data row11 col2" ></td>
	  <td id="T_d66b2_row11_col3" class="data row11 col3" ></td>
	  <td id="T_d66b2_row11_col4" class="data row11 col4" ></td>
	  <td id="T_d66b2_row11_col5" class="data row11 col5" ></td>
	  <td id="T_d66b2_row11_col6" class="data row11 col6" ></td>
	  <td id="T_d66b2_row11_col7" class="data row11 col7" ></td>
	  <td id="T_d66b2_row11_col8" class="data row11 col8" ></td>
	  <td id="T_d66b2_row11_col9" class="data row11 col9" ></td>
	  <td id="T_d66b2_row11_col10" class="data row11 col10" ></td>
	  <td id="T_d66b2_row11_col11" class="data row11 col11" ></td>
	</tr>
  </tbody>
</table>

```python
format_bintree(callabletree_dirty)
```

<style type="text/css">
</style>
<table id="T_22586">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_22586_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_22586_level0_col1" class="col_heading level0 col1" >0.25</th>
	  <th id="T_22586_level0_col2" class="col_heading level0 col2" >0.50</th>
	  <th id="T_22586_level0_col3" class="col_heading level0 col3" >0.75</th>
	  <th id="T_22586_level0_col4" class="col_heading level0 col4" >1.00</th>
	  <th id="T_22586_level0_col5" class="col_heading level0 col5" >1.25</th>
	  <th id="T_22586_level0_col6" class="col_heading level0 col6" >1.50</th>
	  <th id="T_22586_level0_col7" class="col_heading level0 col7" >1.75</th>
	  <th id="T_22586_level0_col8" class="col_heading level0 col8" >2.00</th>
	  <th id="T_22586_level0_col9" class="col_heading level0 col9" >2.25</th>
	  <th id="T_22586_level0_col10" class="col_heading level0 col10" >2.50</th>
	  <th id="T_22586_level0_col11" class="col_heading level0 col11" >2.75</th>
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
	  <th id="T_22586_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_22586_row0_col0" class="data row0 col0" >101.97</td>
	  <td id="T_22586_row0_col1" class="data row0 col1" >101.28</td>
	  <td id="T_22586_row0_col2" class="data row0 col2" >100.71</td>
	  <td id="T_22586_row0_col3" class="data row0 col3" >100.20</td>
	  <td id="T_22586_row0_col4" class="data row0 col4" >99.71</td>
	  <td id="T_22586_row0_col5" class="data row0 col5" >99.04</td>
	  <td id="T_22586_row0_col6" class="data row0 col6" >98.10</td>
	  <td id="T_22586_row0_col7" class="data row0 col7" ></td>
	  <td id="T_22586_row0_col8" class="data row0 col8" ></td>
	  <td id="T_22586_row0_col9" class="data row0 col9" ></td>
	  <td id="T_22586_row0_col10" class="data row0 col10" ></td>
	  <td id="T_22586_row0_col11" class="data row0 col11" ></td>
	</tr>
	<tr>
	  <th id="T_22586_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_22586_row1_col0" class="data row1 col0" ></td>
	  <td id="T_22586_row1_col1" class="data row1 col1" >102.31</td>
	  <td id="T_22586_row1_col2" class="data row1 col2" >101.60</td>
	  <td id="T_22586_row1_col3" class="data row1 col3" >101.02</td>
	  <td id="T_22586_row1_col4" class="data row1 col4" >100.57</td>
	  <td id="T_22586_row1_col5" class="data row1 col5" >100.17</td>
	  <td id="T_22586_row1_col6" class="data row1 col6" >99.95</td>
	  <td id="T_22586_row1_col7" class="data row1 col7" ></td>
	  <td id="T_22586_row1_col8" class="data row1 col8" ></td>
	  <td id="T_22586_row1_col9" class="data row1 col9" ></td>
	  <td id="T_22586_row1_col10" class="data row1 col10" ></td>
	  <td id="T_22586_row1_col11" class="data row1 col11" ></td>
	</tr>
	<tr>
	  <th id="T_22586_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_22586_row2_col0" class="data row2 col0" ></td>
	  <td id="T_22586_row2_col1" class="data row2 col1" ></td>
	  <td id="T_22586_row2_col2" class="data row2 col2" >102.44</td>
	  <td id="T_22586_row2_col3" class="data row2 col3" >101.65</td>
	  <td id="T_22586_row2_col4" class="data row2 col4" >100.99</td>
	  <td id="T_22586_row2_col5" class="data row2 col5" >100.41</td>
	  <td id="T_22586_row2_col6" class="data row2 col6" >100.00</td>
	  <td id="T_22586_row2_col7" class="data row2 col7" ></td>
	  <td id="T_22586_row2_col8" class="data row2 col8" ></td>
	  <td id="T_22586_row2_col9" class="data row2 col9" ></td>
	  <td id="T_22586_row2_col10" class="data row2 col10" ></td>
	  <td id="T_22586_row2_col11" class="data row2 col11" ></td>
	</tr>
	<tr>
	  <th id="T_22586_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_22586_row3_col0" class="data row3 col0" ></td>
	  <td id="T_22586_row3_col1" class="data row3 col1" ></td>
	  <td id="T_22586_row3_col2" class="data row3 col2" ></td>
	  <td id="T_22586_row3_col3" class="data row3 col3" >102.30</td>
	  <td id="T_22586_row3_col4" class="data row3 col4" >101.42</td>
	  <td id="T_22586_row3_col5" class="data row3 col5" >100.62</td>
	  <td id="T_22586_row3_col6" class="data row3 col6" >100.00</td>
	  <td id="T_22586_row3_col7" class="data row3 col7" ></td>
	  <td id="T_22586_row3_col8" class="data row3 col8" ></td>
	  <td id="T_22586_row3_col9" class="data row3 col9" ></td>
	  <td id="T_22586_row3_col10" class="data row3 col10" ></td>
	  <td id="T_22586_row3_col11" class="data row3 col11" ></td>
	</tr>
	<tr>
	  <th id="T_22586_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_22586_row4_col0" class="data row4 col0" ></td>
	  <td id="T_22586_row4_col1" class="data row4 col1" ></td>
	  <td id="T_22586_row4_col2" class="data row4 col2" ></td>
	  <td id="T_22586_row4_col3" class="data row4 col3" ></td>
	  <td id="T_22586_row4_col4" class="data row4 col4" >101.89</td>
	  <td id="T_22586_row4_col5" class="data row4 col5" >100.88</td>
	  <td id="T_22586_row4_col6" class="data row4 col6" >100.00</td>
	  <td id="T_22586_row4_col7" class="data row4 col7" ></td>
	  <td id="T_22586_row4_col8" class="data row4 col8" ></td>
	  <td id="T_22586_row4_col9" class="data row4 col9" ></td>
	  <td id="T_22586_row4_col10" class="data row4 col10" ></td>
	  <td id="T_22586_row4_col11" class="data row4 col11" ></td>
	</tr>
	<tr>
	  <th id="T_22586_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_22586_row5_col0" class="data row5 col0" ></td>
	  <td id="T_22586_row5_col1" class="data row5 col1" ></td>
	  <td id="T_22586_row5_col2" class="data row5 col2" ></td>
	  <td id="T_22586_row5_col3" class="data row5 col3" ></td>
	  <td id="T_22586_row5_col4" class="data row5 col4" ></td>
	  <td id="T_22586_row5_col5" class="data row5 col5" >101.08</td>
	  <td id="T_22586_row5_col6" class="data row5 col6" >100.00</td>
	  <td id="T_22586_row5_col7" class="data row5 col7" ></td>
	  <td id="T_22586_row5_col8" class="data row5 col8" ></td>
	  <td id="T_22586_row5_col9" class="data row5 col9" ></td>
	  <td id="T_22586_row5_col10" class="data row5 col10" ></td>
	  <td id="T_22586_row5_col11" class="data row5 col11" ></td>
	</tr>
	<tr>
	  <th id="T_22586_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_22586_row6_col0" class="data row6 col0" ></td>
	  <td id="T_22586_row6_col1" class="data row6 col1" ></td>
	  <td id="T_22586_row6_col2" class="data row6 col2" ></td>
	  <td id="T_22586_row6_col3" class="data row6 col3" ></td>
	  <td id="T_22586_row6_col4" class="data row6 col4" ></td>
	  <td id="T_22586_row6_col5" class="data row6 col5" ></td>
	  <td id="T_22586_row6_col6" class="data row6 col6" >100.00</td>
	  <td id="T_22586_row6_col7" class="data row6 col7" ></td>
	  <td id="T_22586_row6_col8" class="data row6 col8" ></td>
	  <td id="T_22586_row6_col9" class="data row6 col9" ></td>
	  <td id="T_22586_row6_col10" class="data row6 col10" ></td>
	  <td id="T_22586_row6_col11" class="data row6 col11" ></td>
	</tr>
	<tr>
	  <th id="T_22586_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_22586_row7_col0" class="data row7 col0" ></td>
	  <td id="T_22586_row7_col1" class="data row7 col1" ></td>
	  <td id="T_22586_row7_col2" class="data row7 col2" ></td>
	  <td id="T_22586_row7_col3" class="data row7 col3" ></td>
	  <td id="T_22586_row7_col4" class="data row7 col4" ></td>
	  <td id="T_22586_row7_col5" class="data row7 col5" ></td>
	  <td id="T_22586_row7_col6" class="data row7 col6" ></td>
	  <td id="T_22586_row7_col7" class="data row7 col7" ></td>
	  <td id="T_22586_row7_col8" class="data row7 col8" ></td>
	  <td id="T_22586_row7_col9" class="data row7 col9" ></td>
	  <td id="T_22586_row7_col10" class="data row7 col10" ></td>
	  <td id="T_22586_row7_col11" class="data row7 col11" ></td>
	</tr>
	<tr>
	  <th id="T_22586_level0_row8" class="row_heading level0 row8" >8</th>
	  <td id="T_22586_row8_col0" class="data row8 col0" ></td>
	  <td id="T_22586_row8_col1" class="data row8 col1" ></td>
	  <td id="T_22586_row8_col2" class="data row8 col2" ></td>
	  <td id="T_22586_row8_col3" class="data row8 col3" ></td>
	  <td id="T_22586_row8_col4" class="data row8 col4" ></td>
	  <td id="T_22586_row8_col5" class="data row8 col5" ></td>
	  <td id="T_22586_row8_col6" class="data row8 col6" ></td>
	  <td id="T_22586_row8_col7" class="data row8 col7" ></td>
	  <td id="T_22586_row8_col8" class="data row8 col8" ></td>
	  <td id="T_22586_row8_col9" class="data row8 col9" ></td>
	  <td id="T_22586_row8_col10" class="data row8 col10" ></td>
	  <td id="T_22586_row8_col11" class="data row8 col11" ></td>
	</tr>
	<tr>
	  <th id="T_22586_level0_row9" class="row_heading level0 row9" >9</th>
	  <td id="T_22586_row9_col0" class="data row9 col0" ></td>
	  <td id="T_22586_row9_col1" class="data row9 col1" ></td>
	  <td id="T_22586_row9_col2" class="data row9 col2" ></td>
	  <td id="T_22586_row9_col3" class="data row9 col3" ></td>
	  <td id="T_22586_row9_col4" class="data row9 col4" ></td>
	  <td id="T_22586_row9_col5" class="data row9 col5" ></td>
	  <td id="T_22586_row9_col6" class="data row9 col6" ></td>
	  <td id="T_22586_row9_col7" class="data row9 col7" ></td>
	  <td id="T_22586_row9_col8" class="data row9 col8" ></td>
	  <td id="T_22586_row9_col9" class="data row9 col9" ></td>
	  <td id="T_22586_row9_col10" class="data row9 col10" ></td>
	  <td id="T_22586_row9_col11" class="data row9 col11" ></td>
	</tr>
	<tr>
	  <th id="T_22586_level0_row10" class="row_heading level0 row10" >10</th>
	  <td id="T_22586_row10_col0" class="data row10 col0" ></td>
	  <td id="T_22586_row10_col1" class="data row10 col1" ></td>
	  <td id="T_22586_row10_col2" class="data row10 col2" ></td>
	  <td id="T_22586_row10_col3" class="data row10 col3" ></td>
	  <td id="T_22586_row10_col4" class="data row10 col4" ></td>
	  <td id="T_22586_row10_col5" class="data row10 col5" ></td>
	  <td id="T_22586_row10_col6" class="data row10 col6" ></td>
	  <td id="T_22586_row10_col7" class="data row10 col7" ></td>
	  <td id="T_22586_row10_col8" class="data row10 col8" ></td>
	  <td id="T_22586_row10_col9" class="data row10 col9" ></td>
	  <td id="T_22586_row10_col10" class="data row10 col10" ></td>
	  <td id="T_22586_row10_col11" class="data row10 col11" ></td>
	</tr>
	<tr>
	  <th id="T_22586_level0_row11" class="row_heading level0 row11" >11</th>
	  <td id="T_22586_row11_col0" class="data row11 col0" ></td>
	  <td id="T_22586_row11_col1" class="data row11 col1" ></td>
	  <td id="T_22586_row11_col2" class="data row11 col2" ></td>
	  <td id="T_22586_row11_col3" class="data row11 col3" ></td>
	  <td id="T_22586_row11_col4" class="data row11 col4" ></td>
	  <td id="T_22586_row11_col5" class="data row11 col5" ></td>
	  <td id="T_22586_row11_col6" class="data row11 col6" ></td>
	  <td id="T_22586_row11_col7" class="data row11 col7" ></td>
	  <td id="T_22586_row11_col8" class="data row11 col8" ></td>
	  <td id="T_22586_row11_col9" class="data row11 col9" ></td>
	  <td id="T_22586_row11_col10" class="data row11 col10" ></td>
	  <td id="T_22586_row11_col11" class="data row11 col11" ></td>
	</tr>
  </tbody>
</table>

## **<span style="color:red">3.4 </span>**

There are multiple potential causes to the underpricing of callable Freddie Mac bonds via our models.

But we focused most on the idea that those bonds were **american** style, and our model assumed optimal exercise.

In reality, research shows the issuer (Freddie Mac) does not exercise optimally, which means the embedded short call option is not as costly to investors as it would seem to be, leaving the market price higher.

Given that this is **european**, the exercise decision is less complicated. Thus, we might expect less of an increase in market value due to the issuer's suboptimal exercise, meaning we'd expect the negative OAS to be moderated.

## **<span style="color:red">3.5 </span>**

Yes, this bond prices over 100 in most nodes, including the present value.

The Freddie Mac bond was American, so any excess value could be taken by the issuer via calling the bond. Here, any excess value up until the option expiration accrues to the investor, (via the larger-than-market-value coupons.)

## **<span style="color:red">3.6 </span>**

For the price of the vanilla bond, just use the present-value formula. 

```python
from bondmath import bond_pricer_formula
px_vanilla = bond_pricer_formula(T,curves.loc[T,'spot rates'],cpn=cpn,freq=cpn_freq)

pd.DataFrame([px_vanilla,cleantree.iloc[0,0]],index=['bond formula','tree'],columns=['clean price']).style.format('${:.2f}')
```

<style type="text/css">
</style>
<table id="T_0e42c">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_0e42c_level0_col0" class="col_heading level0 col0" >clean price</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_0e42c_level0_row0" class="row_heading level0 row0" >bond formula</th>
	  <td id="T_0e42c_row0_col0" class="data row0 col0" >\$105.39</td>
	</tr>
	<tr>
	  <th id="T_0e42c_level0_row1" class="row_heading level0 row1" >tree</th>
	  <td id="T_0e42c_row1_col0" class="data row1 col0" >\$105.31</td>
	</tr>
  </tbody>
</table>

### Complication: Forward Price of Bond

For Black's formula, we need the *forward* bond price. 

From FINM 37400, this is straightforward to calculate, though it requires a few assumptions. 

#### Details

To get the forward price, we assume

* the market price of treasuries matches the price we model with the closed-form solution for vanilla bonds (rather than the tree).
* the bond with maturity at the option term has a coupon rate equal to that of the bond in which we are interested.

Procedure:

* calculate the formulaic (assumed market) price of bonds with maturities at the option term and the vanilla bond term.
* calculate them as both having the same coupon
* via shorting the bond with maturity equal to the option, we can mimic a forward contract on the bond
* this requires the forward ratio to establish the long-short position.
* we are designing it such that the coupons offset, so the forward price is just the ratio of these prices.

$$P_{\text{forward}}(T_\text{option}\to T) = 100\frac{P(T)}{P(T_\text{option})}$$

where $P(\tau)$ denotes the price of a bond with maturity at $\tau$.

```python
px_vanilla_Topt = bond_pricer_formula(Topt,curves.loc[Topt,'spot rates'],cpn=cpn,freq=cpn_freq)
px_fwd = FACE * px_vanilla / px_vanilla_Topt

pd.DataFrame([px_vanilla,px_vanilla_Topt,px_fwd],index=[f'maturity {T:.1f}',f'maturity {Topt:.1f}',f'forward from {Topt:.1f} to {T:.1f}'],columns=['price']).style.format('${:.2f}')
```

<style type="text/css">
</style>
<table id="T_7f86d">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_7f86d_level0_col0" class="col_heading level0 col0" >price</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_7f86d_level0_row0" class="row_heading level0 row0" >maturity 3.0</th>
	  <td id="T_7f86d_row0_col0" class="data row0 col0" >\$105.39</td>
	</tr>
	<tr>
	  <th id="T_7f86d_level0_row1" class="row_heading level0 row1" >maturity 1.5</th>
	  <td id="T_7f86d_row1_col0" class="data row1 col0" >\$102.02</td>
	</tr>
	<tr>
	  <th id="T_7f86d_level0_row2" class="row_heading level0 row2" >forward from 1.5 to 3.0</th>
	  <td id="T_7f86d_row2_col0" class="data row2 col0" >\$103.31</td>
	</tr>
  </tbody>
</table>

### Complication: Bond volatility

The problem already simplified by having you use the flat volatility.

However, this is the volatility of interest rates, not bond prices.

From FINM 37400, we know that up to a linear approximation, the vol of rates will scale to the vol of bonds via the duration of the bond.

Thus, we can approximate…

$$\sigma_{\text{bond}} \approx D \times \sigma_{\text{rate}}\times r$$

where again, we're abstracting from forward vol and forward price vol.

```python
from bondmath import duration_closed_formula

duration = duration_closed_formula(T,curves.loc[T,'spot rates'],cpn,freq=cpn_freq)
vol_bond = duration * curves.loc[Topt,'flat vols'] * curves.loc[T,'forwards']

pd.DataFrame([curves.loc[Topt,'flat vols'], duration, vol_bond],index=['rate vol (flat)','bond duration','bond vol'],columns=['estimates']).style.format('{:.2%}')
```

<style type="text/css">
</style>
<table id="T_d9f31">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_d9f31_level0_col0" class="col_heading level0 col0" >estimates</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_d9f31_level0_row0" class="row_heading level0 row0" >rate vol (flat)</th>
	  <td id="T_d9f31_row0_col0" class="data row0 col0" >27.29%</td>
	</tr>
	<tr>
	  <th id="T_d9f31_level0_row1" class="row_heading level0 row1" >bond duration</th>
	  <td id="T_d9f31_row1_col0" class="data row1 col0" >277.52%</td>
	</tr>
	<tr>
	  <th id="T_d9f31_level0_row2" class="row_heading level0 row2" >bond vol</th>
	  <td id="T_d9f31_row2_col0" class="data row2 col0" >2.68%</td>
	</tr>
  </tbody>
</table>

#### Putting it together

```python
px_calloption = blacks_formula(Topt,vol_bond,STRIKE,px_fwd,discount=curves.loc[Topt,'discounts'])
px_callable_bond = px_vanilla - px_calloption

tab = pd.DataFrame([px_vanilla,px_calloption,px_callable_bond],index=['vanilla bond','call option','callable bond'],columns=['formulaic prices'])
tab['tree'] = [bondtree.iloc[0,0], calltree.iloc[0,0],callabletree_dirty.iloc[0,0]]
tab.style.format('{:.2f}')
```

<style type="text/css">
</style>
<table id="T_681e7">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_681e7_level0_col0" class="col_heading level0 col0" >formulaic prices</th>
	  <th id="T_681e7_level0_col1" class="col_heading level0 col1" >tree</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_681e7_level0_row0" class="row_heading level0 row0" >vanilla bond</th>
	  <td id="T_681e7_row0_col0" class="data row0 col0" >105.39</td>
	  <td id="T_681e7_row0_col1" class="data row0 col1" >105.31</td>
	</tr>
	<tr>
	  <th id="T_681e7_level0_row1" class="row_heading level0 row1" >call option</th>
	  <td id="T_681e7_row1_col0" class="data row1 col0" >3.35</td>
	  <td id="T_681e7_row1_col1" class="data row1 col1" >3.34</td>
	</tr>
	<tr>
	  <th id="T_681e7_level0_row2" class="row_heading level0 row2" >callable bond</th>
	  <td id="T_681e7_row2_col0" class="data row2 col0" >102.04</td>
	  <td id="T_681e7_row2_col1" class="data row2 col1" >101.97</td>
	</tr>
  </tbody>
</table>

## **<span style="color:red">3.7 </span>**

We prefer that Black's formula models the forward price, as we know the bond's spot price can't follow the geometric brownian motion of Black-Scholes. (As discussed in Week 1, bond prices have autocorrelation and other issues.)

More obviously, we prefer that Black's formula allows for time-varying interest rates.

## **<span style="color:red">3.8 </span>**

Given the assumptions above, using Black's formula requires that as inputs we use…

* the forward, not the spot. (In this example forward price, but could be a forward rate for a swaption.)
* the discount factor, not $e^{-rT_{\text{opt}}}$

## **<span style="color:red">3.9 </span>**

There are a few ways to construct this.

* receiver swaption or long a floor are the obvious approaches.

1. 1.5y $\rightarrow$ 1.5y receiver-swaption, with strike of 6%
	* If bond is called, you use the money received for the bond (the strike) to invest in a new par bond, which will pay a coupon at the prevailing interest rate. Simultaneously exercise the swaption to swap a floating rate (hopefully close to your new bond's coupon) and instead receive the 6% that you were originally getting.
	* Benefit here is that you retain the 6% rate, and you don't pay for more optionality than is needed. You are subject to a single call date, and you have a single option to offset that.
	* Only problem is that the floating rate paid in the swaption may not equal the coupon being received on the new bond.

2. Buying a floor
	* Similar to above, but you have optionality at each payment date, which is more optionality than you need given that the bond will or will not be called at one particular date. 
	* Thus, may be paying for more optionality than is needed.

3. Buying a cap or selling a floor
	* This wouldn't make sense, as it wouldn't offset the option exposure which you are short.

## **<span style="color:red">3.10 </span>**

1. Make the answer above an American swaption. But these are not typical.
2. With the bond being an American callable bond, now it is useful to have the additional opitonality in buying the floor described above. Still not a great match in that you pay for optionality beyond what is needed.

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

# **<span style="color:red">Solution </span>**

## **<span style="color:red">4.1 </span>**

```python
SWAP_TYPE = 'SOFR'
QUOTE_STYLE = 'black'
RELATIVE_STRIKE = 0

expry = 1
tenor = 2
```

```python
freqswap = 4

Topt = expry
Tswap = Topt+tenor

fwdswap_calc = calc_fwdswaprate(curves['discounts'], Topt, Tswap, freqswap=freqswap)
```

```python
pd.DataFrame([fwdswap_calc],index=[f'forward swap rate {Topt:.1f} to {Tswap:.1f}'],columns=['']).style.format('{:.4%}')
```

<style type="text/css">
</style>
<table id="T_5639c">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_5639c_level0_col0" class="col_heading level0 col0" ></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_5639c_level0_row0" class="row_heading level0 row0" >forward swap rate 1.0 to 3.0</th>
	  <td id="T_5639c_row0_col0" class="data row0 col0" >3.6651%</td>
	</tr>
  </tbody>
</table>

## **<span style="color:red">4.2 </span>**

Given that we are calculating the ATM swaption, it doesn't matter that it is the **receiver** swaption vs the **payer** swaption.

```python
F = .0365
isPayer = False
N = 100

# asking ATM
SKEW = 0
volATM = volskew.loc[0,SKEW]/100
```

Get the sum of discount factors, noting the spacing.

```python
period_fwd = curves.index.get_loc(Topt)
period_swap = curves.index.get_loc(Tswap)+1
step = round(freqcurve/freqswap)

discount_swaption = curves['discounts'].iloc[period_fwd+step : period_swap : step].sum()/freqswap
```

Then by Black,

```python
px_swaptionATM = N * blacks_formula(Topt,volATM,F,F,discount_swaption,isCall=isPayer)

tab_swaption = pd.DataFrame([px_swaptionATM],index=['ATM'],columns = ['price'])
tab_swaption.style.format('${:.4f}')
```

<style type="text/css">
</style>
<table id="T_70208">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_70208_level0_col0" class="col_heading level0 col0" >price</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_70208_level0_row0" class="row_heading level0 row0" >ATM</th>
	  <td id="T_70208_row0_col0" class="data row0 col0" >\$0.9209</td>
	</tr>
  </tbody>
</table>

## **<span style="color:red">4.3 </span>**

```python
STRIKE = .03
doSLIM = True

# unpack the parameters in the data
beta,alpha,nu,rho = sabrparams.iloc[:,0]

volOTM = sabr_slim(beta,nu,rho,F,STRIKE,Topt,volATM)

px_swaptionOTM = N * blacks_formula(Topt,volOTM,STRIKE,F,discount_swaption,isCall=isPayer)
```

```python
tab_swaption.loc['OTM'] = px_swaptionOTM
tab_swaption['vol'] = [volATM,volOTM]
tab_swaption['strike'] = [F,STRIKE]
tab_swaption['forward'] = F
tab_swaption.style.format({'vol':'{:.2%}','price':'{:.4f}','strike':'{:.2%}','forward':'{:.2%}'})
```

<style type="text/css">
</style>
<table id="T_84424">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_84424_level0_col0" class="col_heading level0 col0" >price</th>
	  <th id="T_84424_level0_col1" class="col_heading level0 col1" >vol</th>
	  <th id="T_84424_level0_col2" class="col_heading level0 col2" >strike</th>
	  <th id="T_84424_level0_col3" class="col_heading level0 col3" >forward</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_84424_level0_row0" class="row_heading level0 row0" >ATM</th>
	  <td id="T_84424_row0_col0" class="data row0 col0" >0.9209</td>
	  <td id="T_84424_row0_col1" class="data row0 col1" >34.80%</td>
	  <td id="T_84424_row0_col2" class="data row0 col2" >3.65%</td>
	  <td id="T_84424_row0_col3" class="data row0 col3" >3.65%</td>
	</tr>
	<tr>
	  <th id="T_84424_level0_row1" class="row_heading level0 row1" >OTM</th>
	  <td id="T_84424_row1_col0" class="data row1 col0" >0.4662</td>
	  <td id="T_84424_row1_col1" class="data row1 col1" >39.31%</td>
	  <td id="T_84424_row1_col2" class="data row1 col2" >3.00%</td>
	  <td id="T_84424_row1_col3" class="data row1 col3" >3.65%</td>
	</tr>
  </tbody>
</table>

## **<span style="color:red">4.4 </span>**

The problem intends for you to recompute the OTM swaption price given the shift in rates.

This is considered as an instant shift, so there is no need to adjust time-to-expiration and time-to-maturity.

```python
SHIFT = 10/100/100

volOTMshift = sabr_slim(beta,nu,rho,F+SHIFT,STRIKE,Topt,volATM)
px_swaptionOTMshift_static = N * blacks_formula(Topt,volOTM,STRIKE,F+SHIFT,discount_swaption,isCall=isPayer)
px_swaptionOTMshift_dynamic = N * blacks_formula(Topt,volOTMshift,STRIKE,F+SHIFT,discount_swaption,isCall=isPayer)

tab_swaption.loc['OTM shift static'] = [px_swaptionOTMshift_static, volOTM, STRIKE, F+SHIFT]
tab_swaption.loc['OTM shift dynamic'] = [px_swaptionOTMshift_dynamic, volOTMshift, STRIKE, F+SHIFT]

tab_swaption.style.format({'vol':'{:.2%}','price':'{:.4f}','strike':'{:.2%}','forward':'{:.2%}'})
```

<style type="text/css">
</style>
<table id="T_42228">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_42228_level0_col0" class="col_heading level0 col0" >price</th>
	  <th id="T_42228_level0_col1" class="col_heading level0 col1" >vol</th>
	  <th id="T_42228_level0_col2" class="col_heading level0 col2" >strike</th>
	  <th id="T_42228_level0_col3" class="col_heading level0 col3" >forward</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_42228_level0_row0" class="row_heading level0 row0" >ATM</th>
	  <td id="T_42228_row0_col0" class="data row0 col0" >0.9209</td>
	  <td id="T_42228_row0_col1" class="data row0 col1" >34.80%</td>
	  <td id="T_42228_row0_col2" class="data row0 col2" >3.65%</td>
	  <td id="T_42228_row0_col3" class="data row0 col3" >3.65%</td>
	</tr>
	<tr>
	  <th id="T_42228_level0_row1" class="row_heading level0 row1" >OTM</th>
	  <td id="T_42228_row1_col0" class="data row1 col0" >0.4662</td>
	  <td id="T_42228_row1_col1" class="data row1 col1" >39.31%</td>
	  <td id="T_42228_row1_col2" class="data row1 col2" >3.00%</td>
	  <td id="T_42228_row1_col3" class="data row1 col3" >3.65%</td>
	</tr>
	<tr>
	  <th id="T_42228_level0_row2" class="row_heading level0 row2" >OTM shift static</th>
	  <td id="T_42228_row2_col0" class="data row2 col0" >0.4237</td>
	  <td id="T_42228_row2_col1" class="data row2 col1" >39.31%</td>
	  <td id="T_42228_row2_col2" class="data row2 col2" >3.00%</td>
	  <td id="T_42228_row2_col3" class="data row2 col3" >3.75%</td>
	</tr>
	<tr>
	  <th id="T_42228_level0_row3" class="row_heading level0 row3" >OTM shift dynamic</th>
	  <td id="T_42228_row3_col0" class="data row3 col0" >0.4385</td>
	  <td id="T_42228_row3_col1" class="data row3 col1" >40.04%</td>
	  <td id="T_42228_row3_col2" class="data row3 col2" >3.00%</td>
	  <td id="T_42228_row3_col3" class="data row3 col3" >3.75%</td>
	</tr>
  </tbody>
</table>

We see that given a shift in rates, the swaption price drops less due to a rise in vol.

## **<span style="color:red">4.5 </span>**

```python
tab_delta = tab_swaption[['price']].drop(index=['ATM']).copy()
tab_delta['diff'] = tab_delta - tab_swaption.loc['OTM','price']
tab_delta['delta'] = tab_delta['diff'] / SHIFT
tab_delta.style.format({'diff':'{:.4f}','delta':'{:.2f}','price':'{:.4f}'})
```

<style type="text/css">
</style>
<table id="T_ebee7">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_ebee7_level0_col0" class="col_heading level0 col0" >price</th>
	  <th id="T_ebee7_level0_col1" class="col_heading level0 col1" >diff</th>
	  <th id="T_ebee7_level0_col2" class="col_heading level0 col2" >delta</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_ebee7_level0_row0" class="row_heading level0 row0" >OTM</th>
	  <td id="T_ebee7_row0_col0" class="data row0 col0" >0.4662</td>
	  <td id="T_ebee7_row0_col1" class="data row0 col1" >0.0000</td>
	  <td id="T_ebee7_row0_col2" class="data row0 col2" >0.00</td>
	</tr>
	<tr>
	  <th id="T_ebee7_level0_row1" class="row_heading level0 row1" >OTM shift static</th>
	  <td id="T_ebee7_row1_col0" class="data row1 col0" >0.4237</td>
	  <td id="T_ebee7_row1_col1" class="data row1 col1" >-0.0425</td>
	  <td id="T_ebee7_row1_col2" class="data row1 col2" >-42.51</td>
	</tr>
	<tr>
	  <th id="T_ebee7_level0_row2" class="row_heading level0 row2" >OTM shift dynamic</th>
	  <td id="T_ebee7_row2_col0" class="data row2 col0" >0.4385</td>
	  <td id="T_ebee7_row2_col1" class="data row2 col1" >-0.0277</td>
	  <td id="T_ebee7_row2_col2" class="data row2 col2" >-27.70</td>
	</tr>
  </tbody>
</table>

## **<span style="color:red">4.6 </span>**

For **payer** swaption, the delta is positive.

Given the **decreased** rate, the swaption is less in-the-money, and price goes down.

As for the SABR vol effect, it could go either way. 

* Possible SABR implies decrease rate will once again increase vol (as did the increased rate) above. This will increase the price, which will attenuate the positive delta to be a smaller "augmented" delta.
* Also possible SABR implies decrease in rate will lower vol, further lowering swaption price. This would mean the "augmented" delta is even more positive than the classic delta.

Fine if assumed SABR would increase or decrease vol (no way to know without calculating). Graded for logic of that implication.

## **<span style="color:red">4.7 </span>**

```python
SWAP_TYPE = 'SOFR'
QUOTE_STYLE = 'black'
RELATIVE_STRIKE = 0

expry = 1
tenor = 2

freqswap = 4

Topt = expry
Tswap = Topt+tenor

F = .0365
isPayer = False
N = 100

# asking ATM
SKEW = -300
volATM = volskew.loc[0,SKEW]/100

period_fwd = curves.index.get_loc(Topt)
period_swap = curves.index.get_loc(Tswap)+1
step = round(freqcurve/freqswap)

discount_swaption = curves['discounts'].iloc[period_fwd+step : period_swap : step].sum()/freqswap

px_swaption = N * blacks_formula(Topt,volATM,F + SKEW/100/100,F,discount_swaption,isCall=isPayer)

tab_swaption_market = pd.DataFrame([px_swaption],index=['-300'],columns = ['Market Price'])
tab_swaption_market.style.format('${:.4f}')
```

<style type="text/css">
</style>
<table id="T_c961d">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_c961d_level0_col0" class="col_heading level0 col0" >Market Price</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_c961d_level0_row0" class="row_heading level0 row0" >-300</th>
	  <td id="T_c961d_row0_col0" class="data row0 col0" >\$0.0448</td>
	</tr>
  </tbody>
</table>

```python
STRIKE = F + SKEW/100/100
volATM = volskew.loc[0,0]/100
volOTM = sabr_slim(beta,nu,rho,F,STRIKE,Topt,volATM)
px_swaptionOTM = N * blacks_formula(Topt,volOTM,STRIKE,F,discount_swaption,isCall=isPayer)
tab_swaption_SABR = pd.DataFrame([px_swaptionOTM],index=['-300'],columns = ['SABR Price'])
tab_swaption_SABR.style.format('${:.4f}')
```

<style type="text/css">
</style>
<table id="T_bd264">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_bd264_level0_col0" class="col_heading level0 col0" >SABR Price</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_bd264_level0_row0" class="row_heading level0 row0" >-300</th>
	  <td id="T_bd264_row0_col0" class="data row0 col0" >\$0.0231</td>
	</tr>
  </tbody>
</table>

We can trust the SABR model more because market dynamics and liquidity issues may change the price of a security drastically compared to it's modeled fair value. In this example, a deep OTM option would likely be illiquid, causing it's market price to deviate from the modeled fair value. 

## **<span style="color:red">4.8 </span>**

Local vol models can perfectly fit the quoted options while still modeling the skew. However, they may be **overfitting** and do worse out of sample.

SABR and other stochastic vol models retain no-arbitrage implications (unlike splines, etc.) while giving structure that may be useful in modeling other empirical facts, such as the vol path.

## **<span style="color:red">4.9 </span>**

Be careful that you do not answer about the **strike** increasing, which is the x-axis.

Then, the answer hinges on which we are considering…

* keeping strike ATM, we are looking along the vol path, and the implied vol is getting lower.
* keeping strike fixed, we are looking at a vertical slice of the figure. We see 
	* vol goes up with rate if strike is low
	* vol goes down with rate if strike is high.

Again, any response consistent with these facts is fine. No need to explain all contingencies.

## **<span style="color:red">4.10 </span>**

The vol paths are estimated using the ATM strike implied volatilities of the given options. 

***

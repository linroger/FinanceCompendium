---
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: W.2. Multiperiod Trees and Caps
---

# W.2. Multiperiod Trees and Caps

## FINM 37500: Fixed Income Derivatives

### Mark Hendricks

#### Winter 2024

# Modeling the Rate

We need a model for interest rate.

* It is not a traded security.
* Should we allow the model to be negative?

Without a model, we run into problems with our binomial tree:

* How do we build the nodes for $r$?
* Matching volatility and using up/down factors leads to problems.
* In particular, the $p^*$ required to fit the current market price may be outside $(0,1)$.

## Dynamics of the Interest Rate

In theory, we could estimate a regression of interest rate data to better understand its evolution in terms of 

* drift
* volatility

But this would not be enough to price derivatives.

Valuation depends on 

* **natural** expected cashflows discounted by risk premia and time
* **risk-neutral** expected cashflows discounted by time

With the natural dynamics of interest rates, we would still be left to estimate risk premia used in discounting cashflows.

Rather, we want to directly model the **risk-neutral** dynamics of the interest-rate process, with little reference to the natural dynamics.

## Twisting the State Space

Earlier, we have seen binomial trees with given states and a derived (fitted) risk-neutral probability, $p^*_t$.

Equivalently, we can set the risk-neutral probabilities to all be constant at a convenient number, $p^*_t=0.5$, and then derive (fit) the state space.

Most modern binomial tree approaches in fixed-income take this approach.

Thus, in the models below, we use $p^*=0.5$.

## Two Common Paths

1. Normal models
2. Lognormal models

Though we are using a discrete-time binomial tree, we'll see that these approaches arise in a discretization of popular models for $r$ as a stochastic processes.

# Risk-Neutral Interest-Rate Dynamics

## Ho-Lee

In the Ho-Lee model, the (short) interest rate evolves along the tree as follows:

$$
\begin{align*}
r_{s,t+1} =& r_{s,t} + \theta_t\Delta_t + \sigma\sqrt{\Delta_t}\\
r_{s+1,t+1} =& r_{s,t} + \theta_t\Delta_t - \sigma\sqrt{\Delta_t}\\
\end{align*}
$$

## (Constant Vol) Black-Derman-Toy

In the Black-Derman-Toy model, the **logarithim** of the (short) interest rate evolves along the tree as follows:

$$
\begin{align*}
z_{s,t+1} =& z_{s,t} + \theta_t\Delta_t + \sigma\sqrt{\Delta_t}\\
z_{s+1,t+1} =& z_{s,t} + \theta_t\Delta_t - \sigma\sqrt{\Delta_t}\\
r_{s,t} = & \frac{1}{100}e^{z_{s,t}}
\end{align*}
$$

## Time-varying Drift

Note that the drift of the rate is controlled by the parameter, $\theta_t$.

* These are the risk-neutral dynamics. Shouldn't the drift equal zero?

How do we set this parameter?

* Set each $\theta_t$ such that it correctly fits the discount rates extracted from a base asset, (usually Treasury bonds, swaps, etc.)

## Volatility

We return to this parameter $\sigma$ with regard to how we might fit it and generalize it.

## Pricing

Once we have the interest-rate tree, pricing proceeds as usual with binomial trees.

* But we have the nodes of the interest rate modeled.
* And we have $p^*=0.5$ at all nodes.

# Example

```python
import numpy as np
import pandas as pd

import sys
sys.path.insert(0, '../cmds')
from binomial import *
```

```python
import datetime
import warnings

import matplotlib.pyplot as plt
import seaborn as sns
%matplotlib inline
plt.rcParams['figure.figsize'] = (12,6)
plt.rcParams['font.size'] = 15
plt.rcParams['legend.fontsize'] = 13

from matplotlib.ticker import (MultipleLocator,
                               FormatStrFormatter,
                               AutoMinorLocator)
```

## Data on zero-coupon bonds

Maturities out to 5.5 years.

```python
dt = .5
T = 5
sigmaval = .2142


rawdata = np.array([99.1338,
         97.8925,
         96.1462,
         94.1011,
         91.7136,
         89.2258,
         86.8142,
         84.5016,
         82.1848,
         79.7718,
         77.4339])

quotes = pd.Series(rawdata, index=np.arange(dt,T+2*dt,dt))
quotes.to_frame().T
```

<div>
<style scoped>
	.dataframe tbody tr th:only-of-type {
		vertical-align: middle;
	}

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
	<tr style="text-align: right;">
	  <th></th>
	  <th>0.5</th>
	  <th>1.0</th>
	  <th>1.5</th>
	  <th>2.0</th>
	  <th>2.5</th>
	  <th>3.0</th>
	  <th>3.5</th>
	  <th>4.0</th>
	  <th>4.5</th>
	  <th>5.0</th>
	  <th>5.5</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>99.1338</td>
	  <td>97.8925</td>
	  <td>96.1462</td>
	  <td>94.1011</td>
	  <td>91.7136</td>
	  <td>89.2258</td>
	  <td>86.8142</td>
	  <td>84.5016</td>
	  <td>82.1848</td>
	  <td>79.7718</td>
	  <td>77.4339</td>
	</tr>
  </tbody>
</table>
</div>

```python
theta, ratetree = estimate_theta(sigmaval,quotes)
format_bintree(theta.to_frame().T, style='{:.2%}')
```

<style type="text/css">
</style>
<table id="T_aeaa7">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_aeaa7_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_aeaa7_level0_col1" class="col_heading level0 col1" >0.50</th>
	  <th id="T_aeaa7_level0_col2" class="col_heading level0 col2" >1.00</th>
	  <th id="T_aeaa7_level0_col3" class="col_heading level0 col3" >1.50</th>
	  <th id="T_aeaa7_level0_col4" class="col_heading level0 col4" >2.00</th>
	  <th id="T_aeaa7_level0_col5" class="col_heading level0 col5" >2.50</th>
	  <th id="T_aeaa7_level0_col6" class="col_heading level0 col6" >3.00</th>
	  <th id="T_aeaa7_level0_col7" class="col_heading level0 col7" >3.50</th>
	  <th id="T_aeaa7_level0_col8" class="col_heading level0 col8" >4.00</th>
	  <th id="T_aeaa7_level0_col9" class="col_heading level0 col9" >4.50</th>
	  <th id="T_aeaa7_level0_col10" class="col_heading level0 col10" >5.00</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_aeaa7_level0_row0" class="row_heading level0 row0" >theta</th>
	  <td id="T_aeaa7_row0_col0" class="data row0 col0" ></td>
	  <td id="T_aeaa7_row0_col1" class="data row0 col1" >71.83%</td>
	  <td id="T_aeaa7_row0_col2" class="data row0 col2" >69.15%</td>
	  <td id="T_aeaa7_row0_col3" class="data row0 col3" >33.48%</td>
	  <td id="T_aeaa7_row0_col4" class="data row0 col4" >33.78%</td>
	  <td id="T_aeaa7_row0_col5" class="data row0 col5" >11.83%</td>
	  <td id="T_aeaa7_row0_col6" class="data row0 col6" >-2.30%</td>
	  <td id="T_aeaa7_row0_col7" class="data row0 col7" >-4.38%</td>
	  <td id="T_aeaa7_row0_col8" class="data row0 col8" >4.55%</td>
	  <td id="T_aeaa7_row0_col9" class="data row0 col9" >12.81%</td>
	  <td id="T_aeaa7_row0_col10" class="data row0 col10" >-1.26%</td>
	</tr>
  </tbody>
</table>

```python
format_bintree(ratetree,style='{:.2%}')
```

<style type="text/css">
</style>
<table id="T_2b0b5">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_2b0b5_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_2b0b5_level0_col1" class="col_heading level0 col1" >0.50</th>
	  <th id="T_2b0b5_level0_col2" class="col_heading level0 col2" >1.00</th>
	  <th id="T_2b0b5_level0_col3" class="col_heading level0 col3" >1.50</th>
	  <th id="T_2b0b5_level0_col4" class="col_heading level0 col4" >2.00</th>
	  <th id="T_2b0b5_level0_col5" class="col_heading level0 col5" >2.50</th>
	  <th id="T_2b0b5_level0_col6" class="col_heading level0 col6" >3.00</th>
	  <th id="T_2b0b5_level0_col7" class="col_heading level0 col7" >3.50</th>
	  <th id="T_2b0b5_level0_col8" class="col_heading level0 col8" >4.00</th>
	  <th id="T_2b0b5_level0_col9" class="col_heading level0 col9" >4.50</th>
	  <th id="T_2b0b5_level0_col10" class="col_heading level0 col10" >5.00</th>
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
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_2b0b5_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_2b0b5_row0_col0" class="data row0 col0" >1.74%</td>
	  <td id="T_2b0b5_row0_col1" class="data row0 col1" >2.90%</td>
	  <td id="T_2b0b5_row0_col2" class="data row0 col2" >4.77%</td>
	  <td id="T_2b0b5_row0_col3" class="data row0 col3" >6.56%</td>
	  <td id="T_2b0b5_row0_col4" class="data row0 col4" >9.03%</td>
	  <td id="T_2b0b5_row0_col5" class="data row0 col5" >11.15%</td>
	  <td id="T_2b0b5_row0_col6" class="data row0 col6" >12.83%</td>
	  <td id="T_2b0b5_row0_col7" class="data row0 col7" >14.60%</td>
	  <td id="T_2b0b5_row0_col8" class="data row0 col8" >17.38%</td>
	  <td id="T_2b0b5_row0_col9" class="data row0 col9" >21.56%</td>
	  <td id="T_2b0b5_row0_col10" class="data row0 col10" >24.93%</td>
	</tr>
	<tr>
	  <th id="T_2b0b5_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_2b0b5_row1_col0" class="data row1 col0" ></td>
	  <td id="T_2b0b5_row1_col1" class="data row1 col1" >2.14%</td>
	  <td id="T_2b0b5_row1_col2" class="data row1 col2" >3.52%</td>
	  <td id="T_2b0b5_row1_col3" class="data row1 col3" >4.84%</td>
	  <td id="T_2b0b5_row1_col4" class="data row1 col4" >6.67%</td>
	  <td id="T_2b0b5_row1_col5" class="data row1 col5" >8.24%</td>
	  <td id="T_2b0b5_row1_col6" class="data row1 col6" >9.47%</td>
	  <td id="T_2b0b5_row1_col7" class="data row1 col7" >10.79%</td>
	  <td id="T_2b0b5_row1_col8" class="data row1 col8" >12.84%</td>
	  <td id="T_2b0b5_row1_col9" class="data row1 col9" >15.92%</td>
	  <td id="T_2b0b5_row1_col10" class="data row1 col10" >18.41%</td>
	</tr>
	<tr>
	  <th id="T_2b0b5_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_2b0b5_row2_col0" class="data row2 col0" ></td>
	  <td id="T_2b0b5_row2_col1" class="data row2 col1" ></td>
	  <td id="T_2b0b5_row2_col2" class="data row2 col2" >2.60%</td>
	  <td id="T_2b0b5_row2_col3" class="data row2 col3" >3.58%</td>
	  <td id="T_2b0b5_row2_col4" class="data row2 col4" >4.93%</td>
	  <td id="T_2b0b5_row2_col5" class="data row2 col5" >6.08%</td>
	  <td id="T_2b0b5_row2_col6" class="data row2 col6" >7.00%</td>
	  <td id="T_2b0b5_row2_col7" class="data row2 col7" >7.97%</td>
	  <td id="T_2b0b5_row2_col8" class="data row2 col8" >9.48%</td>
	  <td id="T_2b0b5_row2_col9" class="data row2 col9" >11.76%</td>
	  <td id="T_2b0b5_row2_col10" class="data row2 col10" >13.60%</td>
	</tr>
	<tr>
	  <th id="T_2b0b5_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_2b0b5_row3_col0" class="data row3 col0" ></td>
	  <td id="T_2b0b5_row3_col1" class="data row3 col1" ></td>
	  <td id="T_2b0b5_row3_col2" class="data row3 col2" ></td>
	  <td id="T_2b0b5_row3_col3" class="data row3 col3" >2.64%</td>
	  <td id="T_2b0b5_row3_col4" class="data row3 col4" >3.64%</td>
	  <td id="T_2b0b5_row3_col5" class="data row3 col5" >4.49%</td>
	  <td id="T_2b0b5_row3_col6" class="data row3 col6" >5.17%</td>
	  <td id="T_2b0b5_row3_col7" class="data row3 col7" >5.88%</td>
	  <td id="T_2b0b5_row3_col8" class="data row3 col8" >7.00%</td>
	  <td id="T_2b0b5_row3_col9" class="data row3 col9" >8.69%</td>
	  <td id="T_2b0b5_row3_col10" class="data row3 col10" >10.05%</td>
	</tr>
	<tr>
	  <th id="T_2b0b5_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_2b0b5_row4_col0" class="data row4 col0" ></td>
	  <td id="T_2b0b5_row4_col1" class="data row4 col1" ></td>
	  <td id="T_2b0b5_row4_col2" class="data row4 col2" ></td>
	  <td id="T_2b0b5_row4_col3" class="data row4 col3" ></td>
	  <td id="T_2b0b5_row4_col4" class="data row4 col4" >2.69%</td>
	  <td id="T_2b0b5_row4_col5" class="data row4 col5" >3.32%</td>
	  <td id="T_2b0b5_row4_col6" class="data row4 col6" >3.82%</td>
	  <td id="T_2b0b5_row4_col7" class="data row4 col7" >4.35%</td>
	  <td id="T_2b0b5_row4_col8" class="data row4 col8" >5.17%</td>
	  <td id="T_2b0b5_row4_col9" class="data row4 col9" >6.42%</td>
	  <td id="T_2b0b5_row4_col10" class="data row4 col10" >7.42%</td>
	</tr>
	<tr>
	  <th id="T_2b0b5_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_2b0b5_row5_col0" class="data row5 col0" ></td>
	  <td id="T_2b0b5_row5_col1" class="data row5 col1" ></td>
	  <td id="T_2b0b5_row5_col2" class="data row5 col2" ></td>
	  <td id="T_2b0b5_row5_col3" class="data row5 col3" ></td>
	  <td id="T_2b0b5_row5_col4" class="data row5 col4" ></td>
	  <td id="T_2b0b5_row5_col5" class="data row5 col5" >2.45%</td>
	  <td id="T_2b0b5_row5_col6" class="data row5 col6" >2.82%</td>
	  <td id="T_2b0b5_row5_col7" class="data row5 col7" >3.21%</td>
	  <td id="T_2b0b5_row5_col8" class="data row5 col8" >3.82%</td>
	  <td id="T_2b0b5_row5_col9" class="data row5 col9" >4.74%</td>
	  <td id="T_2b0b5_row5_col10" class="data row5 col10" >5.48%</td>
	</tr>
	<tr>
	  <th id="T_2b0b5_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_2b0b5_row6_col0" class="data row6 col0" ></td>
	  <td id="T_2b0b5_row6_col1" class="data row6 col1" ></td>
	  <td id="T_2b0b5_row6_col2" class="data row6 col2" ></td>
	  <td id="T_2b0b5_row6_col3" class="data row6 col3" ></td>
	  <td id="T_2b0b5_row6_col4" class="data row6 col4" ></td>
	  <td id="T_2b0b5_row6_col5" class="data row6 col5" ></td>
	  <td id="T_2b0b5_row6_col6" class="data row6 col6" >2.08%</td>
	  <td id="T_2b0b5_row6_col7" class="data row6 col7" >2.37%</td>
	  <td id="T_2b0b5_row6_col8" class="data row6 col8" >2.82%</td>
	  <td id="T_2b0b5_row6_col9" class="data row6 col9" >3.50%</td>
	  <td id="T_2b0b5_row6_col10" class="data row6 col10" >4.05%</td>
	</tr>
	<tr>
	  <th id="T_2b0b5_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_2b0b5_row7_col0" class="data row7 col0" ></td>
	  <td id="T_2b0b5_row7_col1" class="data row7 col1" ></td>
	  <td id="T_2b0b5_row7_col2" class="data row7 col2" ></td>
	  <td id="T_2b0b5_row7_col3" class="data row7 col3" ></td>
	  <td id="T_2b0b5_row7_col4" class="data row7 col4" ></td>
	  <td id="T_2b0b5_row7_col5" class="data row7 col5" ></td>
	  <td id="T_2b0b5_row7_col6" class="data row7 col6" ></td>
	  <td id="T_2b0b5_row7_col7" class="data row7 col7" >1.75%</td>
	  <td id="T_2b0b5_row7_col8" class="data row7 col8" >2.09%</td>
	  <td id="T_2b0b5_row7_col9" class="data row7 col9" >2.59%</td>
	  <td id="T_2b0b5_row7_col10" class="data row7 col10" >2.99%</td>
	</tr>
	<tr>
	  <th id="T_2b0b5_level0_row8" class="row_heading level0 row8" >8</th>
	  <td id="T_2b0b5_row8_col0" class="data row8 col0" ></td>
	  <td id="T_2b0b5_row8_col1" class="data row8 col1" ></td>
	  <td id="T_2b0b5_row8_col2" class="data row8 col2" ></td>
	  <td id="T_2b0b5_row8_col3" class="data row8 col3" ></td>
	  <td id="T_2b0b5_row8_col4" class="data row8 col4" ></td>
	  <td id="T_2b0b5_row8_col5" class="data row8 col5" ></td>
	  <td id="T_2b0b5_row8_col6" class="data row8 col6" ></td>
	  <td id="T_2b0b5_row8_col7" class="data row8 col7" ></td>
	  <td id="T_2b0b5_row8_col8" class="data row8 col8" >1.54%</td>
	  <td id="T_2b0b5_row8_col9" class="data row8 col9" >1.91%</td>
	  <td id="T_2b0b5_row8_col10" class="data row8 col10" >2.21%</td>
	</tr>
	<tr>
	  <th id="T_2b0b5_level0_row9" class="row_heading level0 row9" >9</th>
	  <td id="T_2b0b5_row9_col0" class="data row9 col0" ></td>
	  <td id="T_2b0b5_row9_col1" class="data row9 col1" ></td>
	  <td id="T_2b0b5_row9_col2" class="data row9 col2" ></td>
	  <td id="T_2b0b5_row9_col3" class="data row9 col3" ></td>
	  <td id="T_2b0b5_row9_col4" class="data row9 col4" ></td>
	  <td id="T_2b0b5_row9_col5" class="data row9 col5" ></td>
	  <td id="T_2b0b5_row9_col6" class="data row9 col6" ></td>
	  <td id="T_2b0b5_row9_col7" class="data row9 col7" ></td>
	  <td id="T_2b0b5_row9_col8" class="data row9 col8" ></td>
	  <td id="T_2b0b5_row9_col9" class="data row9 col9" >1.41%</td>
	  <td id="T_2b0b5_row9_col10" class="data row9 col10" >1.63%</td>
	</tr>
	<tr>
	  <th id="T_2b0b5_level0_row10" class="row_heading level0 row10" >10</th>
	  <td id="T_2b0b5_row10_col0" class="data row10 col0" ></td>
	  <td id="T_2b0b5_row10_col1" class="data row10 col1" ></td>
	  <td id="T_2b0b5_row10_col2" class="data row10 col2" ></td>
	  <td id="T_2b0b5_row10_col3" class="data row10 col3" ></td>
	  <td id="T_2b0b5_row10_col4" class="data row10 col4" ></td>
	  <td id="T_2b0b5_row10_col5" class="data row10 col5" ></td>
	  <td id="T_2b0b5_row10_col6" class="data row10 col6" ></td>
	  <td id="T_2b0b5_row10_col7" class="data row10 col7" ></td>
	  <td id="T_2b0b5_row10_col8" class="data row10 col8" ></td>
	  <td id="T_2b0b5_row10_col9" class="data row10 col9" ></td>
	  <td id="T_2b0b5_row10_col10" class="data row10 col10" >1.21%</td>
	</tr>
  </tbody>
</table>

# Pricing Derivatives

## Caplets and Floorlets

A **caplet** is a derivative with the following payoff:

$$ N\Delta_t\max(r_n-K,0)$$

where

* $N$ is the notional
* $K$ is the strike, which is an interest rate.
* $r_n$ is the $n$-times compounded interest rate.
* $\Delta_t$ is the frequency of the payments, $\Delta_t = \frac{1}{n}$

A **floorlet** is a derivative with the following payoff:

$$ N\Delta_t\max(K-r_n,0)$$

One could think of the caplet as a *call* option on an interest rate and the floorlet as a *put*.

* Like a vanilla call option in equities, a caplet is a benchmark derivative for fixed income.
* We will see that it is the basis of many model parameterizations.

## Example

In Homework \#1 you priced a caplet. 

Try this pricing with the BDT model…

* $N=100$
* $K=.02$
* $T=1.5$
* $n=2$
* $dt=.5$

```python
STRIKE = .02
N = 100
T = 1.5

tsteps = int(T/dt) + 1
compound = int(1/dt)
```

## Careful

The underlying for the derivative may differ from the continuously-compounded rate modeled in the tree.

For this cap:

* BDT models continuously-compounded rate, $r$
* Derivative depends on the semiannually compounded rate.

Build the tree of reference rates:

```python
refratetree = compound * (np.exp(ratetree / compound)-1)
format_bintree(refratetree.iloc[:tsteps,:tsteps], style='{:.2%}')
```

<style type="text/css">
</style>
<table id="T_cfbae">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_cfbae_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_cfbae_level0_col1" class="col_heading level0 col1" >0.50</th>
	  <th id="T_cfbae_level0_col2" class="col_heading level0 col2" >1.00</th>
	  <th id="T_cfbae_level0_col3" class="col_heading level0 col3" >1.50</th>
	</tr>
	<tr>
	  <th class="index_name level0" >state</th>
	  <th class="blank col0" >&nbsp;</th>
	  <th class="blank col1" >&nbsp;</th>
	  <th class="blank col2" >&nbsp;</th>
	  <th class="blank col3" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_cfbae_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_cfbae_row0_col0" class="data row0 col0" >1.75%</td>
	  <td id="T_cfbae_row0_col1" class="data row0 col1" >2.92%</td>
	  <td id="T_cfbae_row0_col2" class="data row0 col2" >4.82%</td>
	  <td id="T_cfbae_row0_col3" class="data row0 col3" >6.67%</td>
	</tr>
	<tr>
	  <th id="T_cfbae_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_cfbae_row1_col0" class="data row1 col0" ></td>
	  <td id="T_cfbae_row1_col1" class="data row1 col1" >2.15%</td>
	  <td id="T_cfbae_row1_col2" class="data row1 col2" >3.55%</td>
	  <td id="T_cfbae_row1_col3" class="data row1 col3" >4.90%</td>
	</tr>
	<tr>
	  <th id="T_cfbae_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_cfbae_row2_col0" class="data row2 col0" ></td>
	  <td id="T_cfbae_row2_col1" class="data row2 col1" ></td>
	  <td id="T_cfbae_row2_col2" class="data row2 col2" >2.62%</td>
	  <td id="T_cfbae_row2_col3" class="data row2 col3" >3.61%</td>
	</tr>
	<tr>
	  <th id="T_cfbae_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_cfbae_row3_col0" class="data row3 col0" ></td>
	  <td id="T_cfbae_row3_col1" class="data row3 col1" ></td>
	  <td id="T_cfbae_row3_col2" class="data row3 col2" ></td>
	  <td id="T_cfbae_row3_col3" class="data row3 col3" >2.66%</td>
	</tr>
  </tbody>
</table>

Below, we 

* build cashflows with the referenced rate
* discount with the continuously compounded rates

We could discount with the (equivalent) referenced, compounded rate.

* but easier to have the code / procedure always discount with the modeled continuously-compounded rate.

```python
payoff = lambda r: N * dt * np.maximum(r-STRIKE,0)
bintree_pricing(payoff=payoff, ratetree=ratetree.iloc[:tsteps,:tsteps], undertree=refratetree.iloc[:tsteps,:tsteps]).style.format('{:.2f}',na_rep='').format_index('{:.2f}',axis=1)
```

<style type="text/css">
</style>
<table id="T_2e4e2">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_2e4e2_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_2e4e2_level0_col1" class="col_heading level0 col1" >0.50</th>
	  <th id="T_2e4e2_level0_col2" class="col_heading level0 col2" >1.00</th>
	  <th id="T_2e4e2_level0_col3" class="col_heading level0 col3" >1.50</th>
	</tr>
	<tr>
	  <th class="index_name level0" >state</th>
	  <th class="blank col0" >&nbsp;</th>
	  <th class="blank col1" >&nbsp;</th>
	  <th class="blank col2" >&nbsp;</th>
	  <th class="blank col3" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_2e4e2_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_2e4e2_row0_col0" class="data row0 col0" >1.13</td>
	  <td id="T_2e4e2_row0_col1" class="data row0 col1" >1.46</td>
	  <td id="T_2e4e2_row0_col2" class="data row0 col2" >1.85</td>
	  <td id="T_2e4e2_row0_col3" class="data row0 col3" >2.33</td>
	</tr>
	<tr>
	  <th id="T_2e4e2_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_2e4e2_row1_col0" class="data row1 col0" ></td>
	  <td id="T_2e4e2_row1_col1" class="data row1 col1" >0.83</td>
	  <td id="T_2e4e2_row1_col2" class="data row1 col2" >1.11</td>
	  <td id="T_2e4e2_row1_col3" class="data row1 col3" >1.45</td>
	</tr>
	<tr>
	  <th id="T_2e4e2_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_2e4e2_row2_col0" class="data row2 col0" ></td>
	  <td id="T_2e4e2_row2_col1" class="data row2 col1" ></td>
	  <td id="T_2e4e2_row2_col2" class="data row2 col2" >0.56</td>
	  <td id="T_2e4e2_row2_col3" class="data row2 col3" >0.80</td>
	</tr>
	<tr>
	  <th id="T_2e4e2_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_2e4e2_row3_col0" class="data row3 col0" ></td>
	  <td id="T_2e4e2_row3_col1" class="data row3 col1" ></td>
	  <td id="T_2e4e2_row3_col2" class="data row3 col2" ></td>
	  <td id="T_2e4e2_row3_col3" class="data row3 col3" >0.33</td>
	</tr>
  </tbody>
</table>

## A floorlet

Continue with the same parameters, but this time for a floorlet.

```python
payoff = lambda r: N * dt * np.maximum(STRIKE-r,0)
format_bintree(bintree_pricing(payoff=payoff, ratetree=ratetree.iloc[:tsteps,:tsteps], undertree=refratetree.iloc[:tsteps,:tsteps]))
```

<style type="text/css">
</style>
<table id="T_c457d">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_c457d_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_c457d_level0_col1" class="col_heading level0 col1" >0.50</th>
	  <th id="T_c457d_level0_col2" class="col_heading level0 col2" >1.00</th>
	  <th id="T_c457d_level0_col3" class="col_heading level0 col3" >1.50</th>
	</tr>
	<tr>
	  <th class="index_name level0" >state</th>
	  <th class="blank col0" >&nbsp;</th>
	  <th class="blank col1" >&nbsp;</th>
	  <th class="blank col2" >&nbsp;</th>
	  <th class="blank col3" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_c457d_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_c457d_row0_col0" class="data row0 col0" >0.00</td>
	  <td id="T_c457d_row0_col1" class="data row0 col1" >0.00</td>
	  <td id="T_c457d_row0_col2" class="data row0 col2" >0.00</td>
	  <td id="T_c457d_row0_col3" class="data row0 col3" >0.00</td>
	</tr>
	<tr>
	  <th id="T_c457d_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_c457d_row1_col0" class="data row1 col0" ></td>
	  <td id="T_c457d_row1_col1" class="data row1 col1" >0.00</td>
	  <td id="T_c457d_row1_col2" class="data row1 col2" >0.00</td>
	  <td id="T_c457d_row1_col3" class="data row1 col3" >0.00</td>
	</tr>
	<tr>
	  <th id="T_c457d_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_c457d_row2_col0" class="data row2 col0" ></td>
	  <td id="T_c457d_row2_col1" class="data row2 col1" ></td>
	  <td id="T_c457d_row2_col2" class="data row2 col2" >0.00</td>
	  <td id="T_c457d_row2_col3" class="data row2 col3" >0.00</td>
	</tr>
	<tr>
	  <th id="T_c457d_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_c457d_row3_col0" class="data row3 col0" ></td>
	  <td id="T_c457d_row3_col1" class="data row3 col1" ></td>
	  <td id="T_c457d_row3_col2" class="data row3 col2" ></td>
	  <td id="T_c457d_row3_col3" class="data row3 col3" >0.00</td>
	</tr>
  </tbody>
</table>

# Caps and Floors

The most frequent way to encounter caplets and floorlets is as the components of **caps** and **floors**. (Thus the name.)

A **cap** is a portfolio of caplets

* each with the same strike, $K$
* at a sequence of caplet maturities

Similarly for a **floor**.

Markets trade and price these *portfolios* such that we must consider them in a bit more detail.

## Payment in Arrears

It is important to note that *in contrast to our simple caplet/floorlet example above*, the cap and floor make payments on a reference rate in arrears:

$$C_{i+1} = N\Delta_t\max(r_{n,i}-K)$$

where 

* $r_{n,i}$ denotes the $n$-compounded rate as of period $i$. 
* $C_{i+1}$ denotes the cashflow paid/received in period $i+1$.

This means that each payoff determined at time $t$ pays out one period later, (whether that period is a quarter, half-year, or year.)

This has two important implications:

1. The first caplet is missing from the cap! A semiannually-paying cap with expiration at $T=3$ will not include a caplet expiring at $T=.5$. The first caplet will expire at $T=1$.
2. When pricing the cap, one must be careful to discount the final payoff by the risk-free rate.

And similarly for floors.

# Example

Consider the following example of a cap with:

* $K=.04$
* $T=5$
* $n=2, \Delta_t=.5$
* $N=100$

```python
STRIKE = .04
N = 100
T=5

tsteps = int(T/dt)
```

```python
refratetree = compound * (np.exp(ratetree / compound)-1)
format_bintree(refratetree.iloc[:tsteps,:tsteps],style='{:.2%}')
```

<style type="text/css">
</style>
<table id="T_c2383">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_c2383_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_c2383_level0_col1" class="col_heading level0 col1" >0.50</th>
	  <th id="T_c2383_level0_col2" class="col_heading level0 col2" >1.00</th>
	  <th id="T_c2383_level0_col3" class="col_heading level0 col3" >1.50</th>
	  <th id="T_c2383_level0_col4" class="col_heading level0 col4" >2.00</th>
	  <th id="T_c2383_level0_col5" class="col_heading level0 col5" >2.50</th>
	  <th id="T_c2383_level0_col6" class="col_heading level0 col6" >3.00</th>
	  <th id="T_c2383_level0_col7" class="col_heading level0 col7" >3.50</th>
	  <th id="T_c2383_level0_col8" class="col_heading level0 col8" >4.00</th>
	  <th id="T_c2383_level0_col9" class="col_heading level0 col9" >4.50</th>
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
	  <th id="T_c2383_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_c2383_row0_col0" class="data row0 col0" >1.75%</td>
	  <td id="T_c2383_row0_col1" class="data row0 col1" >2.92%</td>
	  <td id="T_c2383_row0_col2" class="data row0 col2" >4.82%</td>
	  <td id="T_c2383_row0_col3" class="data row0 col3" >6.67%</td>
	  <td id="T_c2383_row0_col4" class="data row0 col4" >9.24%</td>
	  <td id="T_c2383_row0_col5" class="data row0 col5" >11.47%</td>
	  <td id="T_c2383_row0_col6" class="data row0 col6" >13.25%</td>
	  <td id="T_c2383_row0_col7" class="data row0 col7" >15.15%</td>
	  <td id="T_c2383_row0_col8" class="data row0 col8" >18.16%</td>
	  <td id="T_c2383_row0_col9" class="data row0 col9" >22.76%</td>
	</tr>
	<tr>
	  <th id="T_c2383_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_c2383_row1_col0" class="data row1 col0" ></td>
	  <td id="T_c2383_row1_col1" class="data row1 col1" >2.15%</td>
	  <td id="T_c2383_row1_col2" class="data row1 col2" >3.55%</td>
	  <td id="T_c2383_row1_col3" class="data row1 col3" >4.90%</td>
	  <td id="T_c2383_row1_col4" class="data row1 col4" >6.79%</td>
	  <td id="T_c2383_row1_col5" class="data row1 col5" >8.41%</td>
	  <td id="T_c2383_row1_col6" class="data row1 col6" >9.70%</td>
	  <td id="T_c2383_row1_col7" class="data row1 col7" >11.08%</td>
	  <td id="T_c2383_row1_col8" class="data row1 col8" >13.26%</td>
	  <td id="T_c2383_row1_col9" class="data row1 col9" >16.58%</td>
	</tr>
	<tr>
	  <th id="T_c2383_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_c2383_row2_col0" class="data row2 col0" ></td>
	  <td id="T_c2383_row2_col1" class="data row2 col1" ></td>
	  <td id="T_c2383_row2_col2" class="data row2 col2" >2.62%</td>
	  <td id="T_c2383_row2_col3" class="data row2 col3" >3.61%</td>
	  <td id="T_c2383_row2_col4" class="data row2 col4" >4.99%</td>
	  <td id="T_c2383_row2_col5" class="data row2 col5" >6.18%</td>
	  <td id="T_c2383_row2_col6" class="data row2 col6" >7.12%</td>
	  <td id="T_c2383_row2_col7" class="data row2 col7" >8.13%</td>
	  <td id="T_c2383_row2_col8" class="data row2 col8" >9.71%</td>
	  <td id="T_c2383_row2_col9" class="data row2 col9" >12.12%</td>
	</tr>
	<tr>
	  <th id="T_c2383_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_c2383_row3_col0" class="data row3 col0" ></td>
	  <td id="T_c2383_row3_col1" class="data row3 col1" ></td>
	  <td id="T_c2383_row3_col2" class="data row3 col2" ></td>
	  <td id="T_c2383_row3_col3" class="data row3 col3" >2.66%</td>
	  <td id="T_c2383_row3_col4" class="data row3 col4" >3.67%</td>
	  <td id="T_c2383_row3_col5" class="data row3 col5" >4.55%</td>
	  <td id="T_c2383_row3_col6" class="data row3 col6" >5.24%</td>
	  <td id="T_c2383_row3_col7" class="data row3 col7" >5.97%</td>
	  <td id="T_c2383_row3_col8" class="data row3 col8" >7.13%</td>
	  <td id="T_c2383_row3_col9" class="data row3 col9" >8.88%</td>
	</tr>
	<tr>
	  <th id="T_c2383_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_c2383_row4_col0" class="data row4 col0" ></td>
	  <td id="T_c2383_row4_col1" class="data row4 col1" ></td>
	  <td id="T_c2383_row4_col2" class="data row4 col2" ></td>
	  <td id="T_c2383_row4_col3" class="data row4 col3" ></td>
	  <td id="T_c2383_row4_col4" class="data row4 col4" >2.71%</td>
	  <td id="T_c2383_row4_col5" class="data row4 col5" >3.35%</td>
	  <td id="T_c2383_row4_col6" class="data row4 col6" >3.86%</td>
	  <td id="T_c2383_row4_col7" class="data row4 col7" >4.39%</td>
	  <td id="T_c2383_row4_col8" class="data row4 col8" >5.24%</td>
	  <td id="T_c2383_row4_col9" class="data row4 col9" >6.52%</td>
	</tr>
	<tr>
	  <th id="T_c2383_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_c2383_row5_col0" class="data row5 col0" ></td>
	  <td id="T_c2383_row5_col1" class="data row5 col1" ></td>
	  <td id="T_c2383_row5_col2" class="data row5 col2" ></td>
	  <td id="T_c2383_row5_col3" class="data row5 col3" ></td>
	  <td id="T_c2383_row5_col4" class="data row5 col4" ></td>
	  <td id="T_c2383_row5_col5" class="data row5 col5" >2.47%</td>
	  <td id="T_c2383_row5_col6" class="data row5 col6" >2.84%</td>
	  <td id="T_c2383_row5_col7" class="data row5 col7" >3.24%</td>
	  <td id="T_c2383_row5_col8" class="data row5 col8" >3.86%</td>
	  <td id="T_c2383_row5_col9" class="data row5 col9" >4.80%</td>
	</tr>
	<tr>
	  <th id="T_c2383_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_c2383_row6_col0" class="data row6 col0" ></td>
	  <td id="T_c2383_row6_col1" class="data row6 col1" ></td>
	  <td id="T_c2383_row6_col2" class="data row6 col2" ></td>
	  <td id="T_c2383_row6_col3" class="data row6 col3" ></td>
	  <td id="T_c2383_row6_col4" class="data row6 col4" ></td>
	  <td id="T_c2383_row6_col5" class="data row6 col5" ></td>
	  <td id="T_c2383_row6_col6" class="data row6 col6" >2.09%</td>
	  <td id="T_c2383_row6_col7" class="data row6 col7" >2.39%</td>
	  <td id="T_c2383_row6_col8" class="data row6 col8" >2.84%</td>
	  <td id="T_c2383_row6_col9" class="data row6 col9" >3.53%</td>
	</tr>
	<tr>
	  <th id="T_c2383_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_c2383_row7_col0" class="data row7 col0" ></td>
	  <td id="T_c2383_row7_col1" class="data row7 col1" ></td>
	  <td id="T_c2383_row7_col2" class="data row7 col2" ></td>
	  <td id="T_c2383_row7_col3" class="data row7 col3" ></td>
	  <td id="T_c2383_row7_col4" class="data row7 col4" ></td>
	  <td id="T_c2383_row7_col5" class="data row7 col5" ></td>
	  <td id="T_c2383_row7_col6" class="data row7 col6" ></td>
	  <td id="T_c2383_row7_col7" class="data row7 col7" >1.76%</td>
	  <td id="T_c2383_row7_col8" class="data row7 col8" >2.10%</td>
	  <td id="T_c2383_row7_col9" class="data row7 col9" >2.60%</td>
	</tr>
	<tr>
	  <th id="T_c2383_level0_row8" class="row_heading level0 row8" >8</th>
	  <td id="T_c2383_row8_col0" class="data row8 col0" ></td>
	  <td id="T_c2383_row8_col1" class="data row8 col1" ></td>
	  <td id="T_c2383_row8_col2" class="data row8 col2" ></td>
	  <td id="T_c2383_row8_col3" class="data row8 col3" ></td>
	  <td id="T_c2383_row8_col4" class="data row8 col4" ></td>
	  <td id="T_c2383_row8_col5" class="data row8 col5" ></td>
	  <td id="T_c2383_row8_col6" class="data row8 col6" ></td>
	  <td id="T_c2383_row8_col7" class="data row8 col7" ></td>
	  <td id="T_c2383_row8_col8" class="data row8 col8" >1.55%</td>
	  <td id="T_c2383_row8_col9" class="data row8 col9" >1.92%</td>
	</tr>
	<tr>
	  <th id="T_c2383_level0_row9" class="row_heading level0 row9" >9</th>
	  <td id="T_c2383_row9_col0" class="data row9 col0" ></td>
	  <td id="T_c2383_row9_col1" class="data row9 col1" ></td>
	  <td id="T_c2383_row9_col2" class="data row9 col2" ></td>
	  <td id="T_c2383_row9_col3" class="data row9 col3" ></td>
	  <td id="T_c2383_row9_col4" class="data row9 col4" ></td>
	  <td id="T_c2383_row9_col5" class="data row9 col5" ></td>
	  <td id="T_c2383_row9_col6" class="data row9 col6" ></td>
	  <td id="T_c2383_row9_col7" class="data row9 col7" ></td>
	  <td id="T_c2383_row9_col8" class="data row9 col8" ></td>
	  <td id="T_c2383_row9_col9" class="data row9 col9" >1.42%</td>
	</tr>
  </tbody>
</table>

```python
payoff = lambda r: N * dt * np.maximum(r-STRIKE,0)

cftree = payoff(refratetree.iloc[:tsteps,:tsteps])

### no caplet until T=1, so ensure 0 until then
cftree.loc[0,0] = 0

format_bintree(cftree)
```

<style type="text/css">
</style>
<table id="T_11c0a">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_11c0a_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_11c0a_level0_col1" class="col_heading level0 col1" >0.50</th>
	  <th id="T_11c0a_level0_col2" class="col_heading level0 col2" >1.00</th>
	  <th id="T_11c0a_level0_col3" class="col_heading level0 col3" >1.50</th>
	  <th id="T_11c0a_level0_col4" class="col_heading level0 col4" >2.00</th>
	  <th id="T_11c0a_level0_col5" class="col_heading level0 col5" >2.50</th>
	  <th id="T_11c0a_level0_col6" class="col_heading level0 col6" >3.00</th>
	  <th id="T_11c0a_level0_col7" class="col_heading level0 col7" >3.50</th>
	  <th id="T_11c0a_level0_col8" class="col_heading level0 col8" >4.00</th>
	  <th id="T_11c0a_level0_col9" class="col_heading level0 col9" >4.50</th>
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
	  <th id="T_11c0a_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_11c0a_row0_col0" class="data row0 col0" >0.00</td>
	  <td id="T_11c0a_row0_col1" class="data row0 col1" >0.00</td>
	  <td id="T_11c0a_row0_col2" class="data row0 col2" >0.41</td>
	  <td id="T_11c0a_row0_col3" class="data row0 col3" >1.33</td>
	  <td id="T_11c0a_row0_col4" class="data row0 col4" >2.62</td>
	  <td id="T_11c0a_row0_col5" class="data row0 col5" >3.73</td>
	  <td id="T_11c0a_row0_col6" class="data row0 col6" >4.62</td>
	  <td id="T_11c0a_row0_col7" class="data row0 col7" >5.57</td>
	  <td id="T_11c0a_row0_col8" class="data row0 col8" >7.08</td>
	  <td id="T_11c0a_row0_col9" class="data row0 col9" >9.38</td>
	</tr>
	<tr>
	  <th id="T_11c0a_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_11c0a_row1_col0" class="data row1 col0" ></td>
	  <td id="T_11c0a_row1_col1" class="data row1 col1" >0.00</td>
	  <td id="T_11c0a_row1_col2" class="data row1 col2" >0.00</td>
	  <td id="T_11c0a_row1_col3" class="data row1 col3" >0.45</td>
	  <td id="T_11c0a_row1_col4" class="data row1 col4" >1.39</td>
	  <td id="T_11c0a_row1_col5" class="data row1 col5" >2.20</td>
	  <td id="T_11c0a_row1_col6" class="data row1 col6" >2.85</td>
	  <td id="T_11c0a_row1_col7" class="data row1 col7" >3.54</td>
	  <td id="T_11c0a_row1_col8" class="data row1 col8" >4.63</td>
	  <td id="T_11c0a_row1_col9" class="data row1 col9" >6.29</td>
	</tr>
	<tr>
	  <th id="T_11c0a_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_11c0a_row2_col0" class="data row2 col0" ></td>
	  <td id="T_11c0a_row2_col1" class="data row2 col1" ></td>
	  <td id="T_11c0a_row2_col2" class="data row2 col2" >0.00</td>
	  <td id="T_11c0a_row2_col3" class="data row2 col3" >0.00</td>
	  <td id="T_11c0a_row2_col4" class="data row2 col4" >0.50</td>
	  <td id="T_11c0a_row2_col5" class="data row2 col5" >1.09</td>
	  <td id="T_11c0a_row2_col6" class="data row2 col6" >1.56</td>
	  <td id="T_11c0a_row2_col7" class="data row2 col7" >2.06</td>
	  <td id="T_11c0a_row2_col8" class="data row2 col8" >2.86</td>
	  <td id="T_11c0a_row2_col9" class="data row2 col9" >4.06</td>
	</tr>
	<tr>
	  <th id="T_11c0a_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_11c0a_row3_col0" class="data row3 col0" ></td>
	  <td id="T_11c0a_row3_col1" class="data row3 col1" ></td>
	  <td id="T_11c0a_row3_col2" class="data row3 col2" ></td>
	  <td id="T_11c0a_row3_col3" class="data row3 col3" >0.00</td>
	  <td id="T_11c0a_row3_col4" class="data row3 col4" >0.00</td>
	  <td id="T_11c0a_row3_col5" class="data row3 col5" >0.27</td>
	  <td id="T_11c0a_row3_col6" class="data row3 col6" >0.62</td>
	  <td id="T_11c0a_row3_col7" class="data row3 col7" >0.99</td>
	  <td id="T_11c0a_row3_col8" class="data row3 col8" >1.56</td>
	  <td id="T_11c0a_row3_col9" class="data row3 col9" >2.44</td>
	</tr>
	<tr>
	  <th id="T_11c0a_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_11c0a_row4_col0" class="data row4 col0" ></td>
	  <td id="T_11c0a_row4_col1" class="data row4 col1" ></td>
	  <td id="T_11c0a_row4_col2" class="data row4 col2" ></td>
	  <td id="T_11c0a_row4_col3" class="data row4 col3" ></td>
	  <td id="T_11c0a_row4_col4" class="data row4 col4" >0.00</td>
	  <td id="T_11c0a_row4_col5" class="data row4 col5" >0.00</td>
	  <td id="T_11c0a_row4_col6" class="data row4 col6" >0.00</td>
	  <td id="T_11c0a_row4_col7" class="data row4 col7" >0.20</td>
	  <td id="T_11c0a_row4_col8" class="data row4 col8" >0.62</td>
	  <td id="T_11c0a_row4_col9" class="data row4 col9" >1.26</td>
	</tr>
	<tr>
	  <th id="T_11c0a_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_11c0a_row5_col0" class="data row5 col0" ></td>
	  <td id="T_11c0a_row5_col1" class="data row5 col1" ></td>
	  <td id="T_11c0a_row5_col2" class="data row5 col2" ></td>
	  <td id="T_11c0a_row5_col3" class="data row5 col3" ></td>
	  <td id="T_11c0a_row5_col4" class="data row5 col4" ></td>
	  <td id="T_11c0a_row5_col5" class="data row5 col5" >0.00</td>
	  <td id="T_11c0a_row5_col6" class="data row5 col6" >0.00</td>
	  <td id="T_11c0a_row5_col7" class="data row5 col7" >0.00</td>
	  <td id="T_11c0a_row5_col8" class="data row5 col8" >0.00</td>
	  <td id="T_11c0a_row5_col9" class="data row5 col9" >0.40</td>
	</tr>
	<tr>
	  <th id="T_11c0a_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_11c0a_row6_col0" class="data row6 col0" ></td>
	  <td id="T_11c0a_row6_col1" class="data row6 col1" ></td>
	  <td id="T_11c0a_row6_col2" class="data row6 col2" ></td>
	  <td id="T_11c0a_row6_col3" class="data row6 col3" ></td>
	  <td id="T_11c0a_row6_col4" class="data row6 col4" ></td>
	  <td id="T_11c0a_row6_col5" class="data row6 col5" ></td>
	  <td id="T_11c0a_row6_col6" class="data row6 col6" >0.00</td>
	  <td id="T_11c0a_row6_col7" class="data row6 col7" >0.00</td>
	  <td id="T_11c0a_row6_col8" class="data row6 col8" >0.00</td>
	  <td id="T_11c0a_row6_col9" class="data row6 col9" >0.00</td>
	</tr>
	<tr>
	  <th id="T_11c0a_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_11c0a_row7_col0" class="data row7 col0" ></td>
	  <td id="T_11c0a_row7_col1" class="data row7 col1" ></td>
	  <td id="T_11c0a_row7_col2" class="data row7 col2" ></td>
	  <td id="T_11c0a_row7_col3" class="data row7 col3" ></td>
	  <td id="T_11c0a_row7_col4" class="data row7 col4" ></td>
	  <td id="T_11c0a_row7_col5" class="data row7 col5" ></td>
	  <td id="T_11c0a_row7_col6" class="data row7 col6" ></td>
	  <td id="T_11c0a_row7_col7" class="data row7 col7" >0.00</td>
	  <td id="T_11c0a_row7_col8" class="data row7 col8" >0.00</td>
	  <td id="T_11c0a_row7_col9" class="data row7 col9" >0.00</td>
	</tr>
	<tr>
	  <th id="T_11c0a_level0_row8" class="row_heading level0 row8" >8</th>
	  <td id="T_11c0a_row8_col0" class="data row8 col0" ></td>
	  <td id="T_11c0a_row8_col1" class="data row8 col1" ></td>
	  <td id="T_11c0a_row8_col2" class="data row8 col2" ></td>
	  <td id="T_11c0a_row8_col3" class="data row8 col3" ></td>
	  <td id="T_11c0a_row8_col4" class="data row8 col4" ></td>
	  <td id="T_11c0a_row8_col5" class="data row8 col5" ></td>
	  <td id="T_11c0a_row8_col6" class="data row8 col6" ></td>
	  <td id="T_11c0a_row8_col7" class="data row8 col7" ></td>
	  <td id="T_11c0a_row8_col8" class="data row8 col8" >0.00</td>
	  <td id="T_11c0a_row8_col9" class="data row8 col9" >0.00</td>
	</tr>
	<tr>
	  <th id="T_11c0a_level0_row9" class="row_heading level0 row9" >9</th>
	  <td id="T_11c0a_row9_col0" class="data row9 col0" ></td>
	  <td id="T_11c0a_row9_col1" class="data row9 col1" ></td>
	  <td id="T_11c0a_row9_col2" class="data row9 col2" ></td>
	  <td id="T_11c0a_row9_col3" class="data row9 col3" ></td>
	  <td id="T_11c0a_row9_col4" class="data row9 col4" ></td>
	  <td id="T_11c0a_row9_col5" class="data row9 col5" ></td>
	  <td id="T_11c0a_row9_col6" class="data row9 col6" ></td>
	  <td id="T_11c0a_row9_col7" class="data row9 col7" ></td>
	  <td id="T_11c0a_row9_col8" class="data row9 col8" ></td>
	  <td id="T_11c0a_row9_col9" class="data row9 col9" >0.00</td>
	</tr>
  </tbody>
</table>

```python
format_bintree(bintree_pricing(payoff=payoff, ratetree=ratetree.iloc[:tsteps,:tsteps], undertree= refratetree.iloc[:tsteps,:tsteps], cftree=cftree, timing='deferred'),style='{:.3f}')
```

<style type="text/css">
</style>
<table id="T_4fb59">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_4fb59_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_4fb59_level0_col1" class="col_heading level0 col1" >0.50</th>
	  <th id="T_4fb59_level0_col2" class="col_heading level0 col2" >1.00</th>
	  <th id="T_4fb59_level0_col3" class="col_heading level0 col3" >1.50</th>
	  <th id="T_4fb59_level0_col4" class="col_heading level0 col4" >2.00</th>
	  <th id="T_4fb59_level0_col5" class="col_heading level0 col5" >2.50</th>
	  <th id="T_4fb59_level0_col6" class="col_heading level0 col6" >3.00</th>
	  <th id="T_4fb59_level0_col7" class="col_heading level0 col7" >3.50</th>
	  <th id="T_4fb59_level0_col8" class="col_heading level0 col8" >4.00</th>
	  <th id="T_4fb59_level0_col9" class="col_heading level0 col9" >4.50</th>
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
	  <th id="T_4fb59_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_4fb59_row0_col0" class="data row0 col0" >4.975</td>
	  <td id="T_4fb59_row0_col1" class="data row0 col1" >7.091</td>
	  <td id="T_4fb59_row0_col2" class="data row0 col2" >9.924</td>
	  <td id="T_4fb59_row0_col3" class="data row0 col3" >12.851</td>
	  <td id="T_4fb59_row0_col4" class="data row0 col4" >15.105</td>
	  <td id="T_4fb59_row0_col5" class="data row0 col5" >16.259</td>
	  <td id="T_4fb59_row0_col6" class="data row0 col6" >16.332</td>
	  <td id="T_4fb59_row0_col7" class="data row0 col7" >15.347</td>
	  <td id="T_4fb59_row0_col8" class="data row0 col8" >13.012</td>
	  <td id="T_4fb59_row0_col9" class="data row0 col9" >8.423</td>
	</tr>
	<tr>
	  <th id="T_4fb59_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_4fb59_row1_col0" class="data row1 col0" ></td>
	  <td id="T_4fb59_row1_col1" class="data row1 col1" >2.945</td>
	  <td id="T_4fb59_row1_col2" class="data row1 col2" >4.465</td>
	  <td id="T_4fb59_row1_col3" class="data row1 col3" >6.651</td>
	  <td id="T_4fb59_row1_col4" class="data row1 col4" >8.787</td>
	  <td id="T_4fb59_row1_col5" class="data row1 col5" >10.106</td>
	  <td id="T_4fb59_row1_col6" class="data row1 col6" >10.582</td>
	  <td id="T_4fb59_row1_col7" class="data row1 col7" >10.234</td>
	  <td id="T_4fb59_row1_col8" class="data row1 col8" >8.859</td>
	  <td id="T_4fb59_row1_col9" class="data row1 col9" >5.807</td>
	</tr>
	<tr>
	  <th id="T_4fb59_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_4fb59_row2_col0" class="data row2 col0" ></td>
	  <td id="T_4fb59_row2_col1" class="data row2 col1" ></td>
	  <td id="T_4fb59_row2_col2" class="data row2 col2" >1.489</td>
	  <td id="T_4fb59_row2_col3" class="data row2 col3" >2.438</td>
	  <td id="T_4fb59_row2_col4" class="data row2 col4" >3.939</td>
	  <td id="T_4fb59_row2_col5" class="data row2 col5" >5.278</td>
	  <td id="T_4fb59_row2_col6" class="data row2 col6" >6.072</td>
	  <td id="T_4fb59_row2_col7" class="data row2 col7" >6.254</td>
	  <td id="T_4fb59_row2_col8" class="data row2 col8" >5.662</td>
	  <td id="T_4fb59_row2_col9" class="data row2 col9" >3.826</td>
	</tr>
	<tr>
	  <th id="T_4fb59_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_4fb59_row3_col0" class="data row3 col0" ></td>
	  <td id="T_4fb59_row3_col1" class="data row3 col1" ></td>
	  <td id="T_4fb59_row3_col2" class="data row3 col2" ></td>
	  <td id="T_4fb59_row3_col3" class="data row3 col3" >0.579</td>
	  <td id="T_4fb59_row3_col4" class="data row3 col4" >1.024</td>
	  <td id="T_4fb59_row3_col5" class="data row3 col5" >1.808</td>
	  <td id="T_4fb59_row3_col6" class="data row3 col6" >2.632</td>
	  <td id="T_4fb59_row3_col7" class="data row3 col7" >3.199</td>
	  <td id="T_4fb59_row3_col8" class="data row3 col8" >3.228</td>
	  <td id="T_4fb59_row3_col9" class="data row3 col9" >2.336</td>
	</tr>
	<tr>
	  <th id="T_4fb59_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_4fb59_row4_col0" class="data row4 col0" ></td>
	  <td id="T_4fb59_row4_col1" class="data row4 col1" ></td>
	  <td id="T_4fb59_row4_col2" class="data row4 col2" ></td>
	  <td id="T_4fb59_row4_col3" class="data row4 col3" ></td>
	  <td id="T_4fb59_row4_col4" class="data row4 col4" >0.149</td>
	  <td id="T_4fb59_row4_col5" class="data row4 col5" >0.279</td>
	  <td id="T_4fb59_row4_col6" class="data row4 col6" >0.520</td>
	  <td id="T_4fb59_row4_col7" class="data row4 col7" >0.966</td>
	  <td id="T_4fb59_row4_col8" class="data row4 col8" >1.390</td>
	  <td id="T_4fb59_row4_col9" class="data row4 col9" >1.221</td>
	</tr>
	<tr>
	  <th id="T_4fb59_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_4fb59_row5_col0" class="data row5 col0" ></td>
	  <td id="T_4fb59_row5_col1" class="data row5 col1" ></td>
	  <td id="T_4fb59_row5_col2" class="data row5 col2" ></td>
	  <td id="T_4fb59_row5_col3" class="data row5 col3" ></td>
	  <td id="T_4fb59_row5_col4" class="data row5 col4" ></td>
	  <td id="T_4fb59_row5_col5" class="data row5 col5" >0.023</td>
	  <td id="T_4fb59_row5_col6" class="data row5 col6" >0.046</td>
	  <td id="T_4fb59_row5_col7" class="data row5 col7" >0.094</td>
	  <td id="T_4fb59_row5_col8" class="data row5 col8" >0.191</td>
	  <td id="T_4fb59_row5_col9" class="data row5 col9" >0.389</td>
	</tr>
	<tr>
	  <th id="T_4fb59_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_4fb59_row6_col0" class="data row6 col0" ></td>
	  <td id="T_4fb59_row6_col1" class="data row6 col1" ></td>
	  <td id="T_4fb59_row6_col2" class="data row6 col2" ></td>
	  <td id="T_4fb59_row6_col3" class="data row6 col3" ></td>
	  <td id="T_4fb59_row6_col4" class="data row6 col4" ></td>
	  <td id="T_4fb59_row6_col5" class="data row6 col5" ></td>
	  <td id="T_4fb59_row6_col6" class="data row6 col6" >0.000</td>
	  <td id="T_4fb59_row6_col7" class="data row6 col7" >0.000</td>
	  <td id="T_4fb59_row6_col8" class="data row6 col8" >0.000</td>
	  <td id="T_4fb59_row6_col9" class="data row6 col9" >0.000</td>
	</tr>
	<tr>
	  <th id="T_4fb59_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_4fb59_row7_col0" class="data row7 col0" ></td>
	  <td id="T_4fb59_row7_col1" class="data row7 col1" ></td>
	  <td id="T_4fb59_row7_col2" class="data row7 col2" ></td>
	  <td id="T_4fb59_row7_col3" class="data row7 col3" ></td>
	  <td id="T_4fb59_row7_col4" class="data row7 col4" ></td>
	  <td id="T_4fb59_row7_col5" class="data row7 col5" ></td>
	  <td id="T_4fb59_row7_col6" class="data row7 col6" ></td>
	  <td id="T_4fb59_row7_col7" class="data row7 col7" >0.000</td>
	  <td id="T_4fb59_row7_col8" class="data row7 col8" >0.000</td>
	  <td id="T_4fb59_row7_col9" class="data row7 col9" >0.000</td>
	</tr>
	<tr>
	  <th id="T_4fb59_level0_row8" class="row_heading level0 row8" >8</th>
	  <td id="T_4fb59_row8_col0" class="data row8 col0" ></td>
	  <td id="T_4fb59_row8_col1" class="data row8 col1" ></td>
	  <td id="T_4fb59_row8_col2" class="data row8 col2" ></td>
	  <td id="T_4fb59_row8_col3" class="data row8 col3" ></td>
	  <td id="T_4fb59_row8_col4" class="data row8 col4" ></td>
	  <td id="T_4fb59_row8_col5" class="data row8 col5" ></td>
	  <td id="T_4fb59_row8_col6" class="data row8 col6" ></td>
	  <td id="T_4fb59_row8_col7" class="data row8 col7" ></td>
	  <td id="T_4fb59_row8_col8" class="data row8 col8" >0.000</td>
	  <td id="T_4fb59_row8_col9" class="data row8 col9" >0.000</td>
	</tr>
	<tr>
	  <th id="T_4fb59_level0_row9" class="row_heading level0 row9" >9</th>
	  <td id="T_4fb59_row9_col0" class="data row9 col0" ></td>
	  <td id="T_4fb59_row9_col1" class="data row9 col1" ></td>
	  <td id="T_4fb59_row9_col2" class="data row9 col2" ></td>
	  <td id="T_4fb59_row9_col3" class="data row9 col3" ></td>
	  <td id="T_4fb59_row9_col4" class="data row9 col4" ></td>
	  <td id="T_4fb59_row9_col5" class="data row9 col5" ></td>
	  <td id="T_4fb59_row9_col6" class="data row9 col6" ></td>
	  <td id="T_4fb59_row9_col7" class="data row9 col7" ></td>
	  <td id="T_4fb59_row9_col8" class="data row9 col8" ></td>
	  <td id="T_4fb59_row9_col9" class="data row9 col9" >0.000</td>
	</tr>
  </tbody>
</table>

## Floor

Try a floor with the same parameters.

```python
payoff = lambda r: N * dt * np.maximum(STRIKE-r,0)

cftree = payoff(refratetree.iloc[:tsteps,:tsteps])

### no floorlet until T=1, so ensure 0 until then
cftree.loc[0,0] = 0

format_bintree(cftree)
```

<style type="text/css">
</style>
<table id="T_cd967">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_cd967_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_cd967_level0_col1" class="col_heading level0 col1" >0.50</th>
	  <th id="T_cd967_level0_col2" class="col_heading level0 col2" >1.00</th>
	  <th id="T_cd967_level0_col3" class="col_heading level0 col3" >1.50</th>
	  <th id="T_cd967_level0_col4" class="col_heading level0 col4" >2.00</th>
	  <th id="T_cd967_level0_col5" class="col_heading level0 col5" >2.50</th>
	  <th id="T_cd967_level0_col6" class="col_heading level0 col6" >3.00</th>
	  <th id="T_cd967_level0_col7" class="col_heading level0 col7" >3.50</th>
	  <th id="T_cd967_level0_col8" class="col_heading level0 col8" >4.00</th>
	  <th id="T_cd967_level0_col9" class="col_heading level0 col9" >4.50</th>
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
	  <th id="T_cd967_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_cd967_row0_col0" class="data row0 col0" >0.00</td>
	  <td id="T_cd967_row0_col1" class="data row0 col1" >0.54</td>
	  <td id="T_cd967_row0_col2" class="data row0 col2" >0.00</td>
	  <td id="T_cd967_row0_col3" class="data row0 col3" >0.00</td>
	  <td id="T_cd967_row0_col4" class="data row0 col4" >0.00</td>
	  <td id="T_cd967_row0_col5" class="data row0 col5" >0.00</td>
	  <td id="T_cd967_row0_col6" class="data row0 col6" >0.00</td>
	  <td id="T_cd967_row0_col7" class="data row0 col7" >0.00</td>
	  <td id="T_cd967_row0_col8" class="data row0 col8" >0.00</td>
	  <td id="T_cd967_row0_col9" class="data row0 col9" >0.00</td>
	</tr>
	<tr>
	  <th id="T_cd967_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_cd967_row1_col0" class="data row1 col0" ></td>
	  <td id="T_cd967_row1_col1" class="data row1 col1" >0.92</td>
	  <td id="T_cd967_row1_col2" class="data row1 col2" >0.22</td>
	  <td id="T_cd967_row1_col3" class="data row1 col3" >0.00</td>
	  <td id="T_cd967_row1_col4" class="data row1 col4" >0.00</td>
	  <td id="T_cd967_row1_col5" class="data row1 col5" >0.00</td>
	  <td id="T_cd967_row1_col6" class="data row1 col6" >0.00</td>
	  <td id="T_cd967_row1_col7" class="data row1 col7" >0.00</td>
	  <td id="T_cd967_row1_col8" class="data row1 col8" >0.00</td>
	  <td id="T_cd967_row1_col9" class="data row1 col9" >0.00</td>
	</tr>
	<tr>
	  <th id="T_cd967_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_cd967_row2_col0" class="data row2 col0" ></td>
	  <td id="T_cd967_row2_col1" class="data row2 col1" ></td>
	  <td id="T_cd967_row2_col2" class="data row2 col2" >0.69</td>
	  <td id="T_cd967_row2_col3" class="data row2 col3" >0.20</td>
	  <td id="T_cd967_row2_col4" class="data row2 col4" >0.00</td>
	  <td id="T_cd967_row2_col5" class="data row2 col5" >0.00</td>
	  <td id="T_cd967_row2_col6" class="data row2 col6" >0.00</td>
	  <td id="T_cd967_row2_col7" class="data row2 col7" >0.00</td>
	  <td id="T_cd967_row2_col8" class="data row2 col8" >0.00</td>
	  <td id="T_cd967_row2_col9" class="data row2 col9" >0.00</td>
	</tr>
	<tr>
	  <th id="T_cd967_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_cd967_row3_col0" class="data row3 col0" ></td>
	  <td id="T_cd967_row3_col1" class="data row3 col1" ></td>
	  <td id="T_cd967_row3_col2" class="data row3 col2" ></td>
	  <td id="T_cd967_row3_col3" class="data row3 col3" >0.67</td>
	  <td id="T_cd967_row3_col4" class="data row3 col4" >0.16</td>
	  <td id="T_cd967_row3_col5" class="data row3 col5" >0.00</td>
	  <td id="T_cd967_row3_col6" class="data row3 col6" >0.00</td>
	  <td id="T_cd967_row3_col7" class="data row3 col7" >0.00</td>
	  <td id="T_cd967_row3_col8" class="data row3 col8" >0.00</td>
	  <td id="T_cd967_row3_col9" class="data row3 col9" >0.00</td>
	</tr>
	<tr>
	  <th id="T_cd967_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_cd967_row4_col0" class="data row4 col0" ></td>
	  <td id="T_cd967_row4_col1" class="data row4 col1" ></td>
	  <td id="T_cd967_row4_col2" class="data row4 col2" ></td>
	  <td id="T_cd967_row4_col3" class="data row4 col3" ></td>
	  <td id="T_cd967_row4_col4" class="data row4 col4" >0.65</td>
	  <td id="T_cd967_row4_col5" class="data row4 col5" >0.33</td>
	  <td id="T_cd967_row4_col6" class="data row4 col6" >0.07</td>
	  <td id="T_cd967_row4_col7" class="data row4 col7" >0.00</td>
	  <td id="T_cd967_row4_col8" class="data row4 col8" >0.00</td>
	  <td id="T_cd967_row4_col9" class="data row4 col9" >0.00</td>
	</tr>
	<tr>
	  <th id="T_cd967_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_cd967_row5_col0" class="data row5 col0" ></td>
	  <td id="T_cd967_row5_col1" class="data row5 col1" ></td>
	  <td id="T_cd967_row5_col2" class="data row5 col2" ></td>
	  <td id="T_cd967_row5_col3" class="data row5 col3" ></td>
	  <td id="T_cd967_row5_col4" class="data row5 col4" ></td>
	  <td id="T_cd967_row5_col5" class="data row5 col5" >0.77</td>
	  <td id="T_cd967_row5_col6" class="data row5 col6" >0.58</td>
	  <td id="T_cd967_row5_col7" class="data row5 col7" >0.38</td>
	  <td id="T_cd967_row5_col8" class="data row5 col8" >0.07</td>
	  <td id="T_cd967_row5_col9" class="data row5 col9" >0.00</td>
	</tr>
	<tr>
	  <th id="T_cd967_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_cd967_row6_col0" class="data row6 col0" ></td>
	  <td id="T_cd967_row6_col1" class="data row6 col1" ></td>
	  <td id="T_cd967_row6_col2" class="data row6 col2" ></td>
	  <td id="T_cd967_row6_col3" class="data row6 col3" ></td>
	  <td id="T_cd967_row6_col4" class="data row6 col4" ></td>
	  <td id="T_cd967_row6_col5" class="data row6 col5" ></td>
	  <td id="T_cd967_row6_col6" class="data row6 col6" >0.95</td>
	  <td id="T_cd967_row6_col7" class="data row6 col7" >0.81</td>
	  <td id="T_cd967_row6_col8" class="data row6 col8" >0.58</td>
	  <td id="T_cd967_row6_col9" class="data row6 col9" >0.23</td>
	</tr>
	<tr>
	  <th id="T_cd967_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_cd967_row7_col0" class="data row7 col0" ></td>
	  <td id="T_cd967_row7_col1" class="data row7 col1" ></td>
	  <td id="T_cd967_row7_col2" class="data row7 col2" ></td>
	  <td id="T_cd967_row7_col3" class="data row7 col3" ></td>
	  <td id="T_cd967_row7_col4" class="data row7 col4" ></td>
	  <td id="T_cd967_row7_col5" class="data row7 col5" ></td>
	  <td id="T_cd967_row7_col6" class="data row7 col6" ></td>
	  <td id="T_cd967_row7_col7" class="data row7 col7" >1.12</td>
	  <td id="T_cd967_row7_col8" class="data row7 col8" >0.95</td>
	  <td id="T_cd967_row7_col9" class="data row7 col9" >0.70</td>
	</tr>
	<tr>
	  <th id="T_cd967_level0_row8" class="row_heading level0 row8" >8</th>
	  <td id="T_cd967_row8_col0" class="data row8 col0" ></td>
	  <td id="T_cd967_row8_col1" class="data row8 col1" ></td>
	  <td id="T_cd967_row8_col2" class="data row8 col2" ></td>
	  <td id="T_cd967_row8_col3" class="data row8 col3" ></td>
	  <td id="T_cd967_row8_col4" class="data row8 col4" ></td>
	  <td id="T_cd967_row8_col5" class="data row8 col5" ></td>
	  <td id="T_cd967_row8_col6" class="data row8 col6" ></td>
	  <td id="T_cd967_row8_col7" class="data row8 col7" ></td>
	  <td id="T_cd967_row8_col8" class="data row8 col8" >1.23</td>
	  <td id="T_cd967_row8_col9" class="data row8 col9" >1.04</td>
	</tr>
	<tr>
	  <th id="T_cd967_level0_row9" class="row_heading level0 row9" >9</th>
	  <td id="T_cd967_row9_col0" class="data row9 col0" ></td>
	  <td id="T_cd967_row9_col1" class="data row9 col1" ></td>
	  <td id="T_cd967_row9_col2" class="data row9 col2" ></td>
	  <td id="T_cd967_row9_col3" class="data row9 col3" ></td>
	  <td id="T_cd967_row9_col4" class="data row9 col4" ></td>
	  <td id="T_cd967_row9_col5" class="data row9 col5" ></td>
	  <td id="T_cd967_row9_col6" class="data row9 col6" ></td>
	  <td id="T_cd967_row9_col7" class="data row9 col7" ></td>
	  <td id="T_cd967_row9_col8" class="data row9 col8" ></td>
	  <td id="T_cd967_row9_col9" class="data row9 col9" >1.29</td>
	</tr>
  </tbody>
</table>

```python
format_bintree(bintree_pricing(payoff=payoff, ratetree=ratetree.iloc[:tsteps,:tsteps], undertree= refratetree.iloc[:tsteps,:tsteps], cftree=cftree, timing='deferred'),style='{:.3f}')
```

<style type="text/css">
</style>
<table id="T_c41e7">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th id="T_c41e7_level0_col0" class="col_heading level0 col0" >0.00</th>
	  <th id="T_c41e7_level0_col1" class="col_heading level0 col1" >0.50</th>
	  <th id="T_c41e7_level0_col2" class="col_heading level0 col2" >1.00</th>
	  <th id="T_c41e7_level0_col3" class="col_heading level0 col3" >1.50</th>
	  <th id="T_c41e7_level0_col4" class="col_heading level0 col4" >2.00</th>
	  <th id="T_c41e7_level0_col5" class="col_heading level0 col5" >2.50</th>
	  <th id="T_c41e7_level0_col6" class="col_heading level0 col6" >3.00</th>
	  <th id="T_c41e7_level0_col7" class="col_heading level0 col7" >3.50</th>
	  <th id="T_c41e7_level0_col8" class="col_heading level0 col8" >4.00</th>
	  <th id="T_c41e7_level0_col9" class="col_heading level0 col9" >4.50</th>
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
	  <th id="T_c41e7_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_c41e7_row0_col0" class="data row0 col0" >1.660</td>
	  <td id="T_c41e7_row0_col1" class="data row0 col1" >0.881</td>
	  <td id="T_c41e7_row0_col2" class="data row0 col2" >0.043</td>
	  <td id="T_c41e7_row0_col3" class="data row0 col3" >0.005</td>
	  <td id="T_c41e7_row0_col4" class="data row0 col4" >0.000</td>
	  <td id="T_c41e7_row0_col5" class="data row0 col5" >0.000</td>
	  <td id="T_c41e7_row0_col6" class="data row0 col6" >0.000</td>
	  <td id="T_c41e7_row0_col7" class="data row0 col7" >0.000</td>
	  <td id="T_c41e7_row0_col8" class="data row0 col8" >0.000</td>
	  <td id="T_c41e7_row0_col9" class="data row0 col9" >0.000</td>
	</tr>
	<tr>
	  <th id="T_c41e7_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_c41e7_row1_col0" class="data row1 col0" ></td>
	  <td id="T_c41e7_row1_col1" class="data row1 col1" >2.467</td>
	  <td id="T_c41e7_row1_col2" class="data row1 col2" >0.666</td>
	  <td id="T_c41e7_row1_col3" class="data row1 col3" >0.084</td>
	  <td id="T_c41e7_row1_col4" class="data row1 col4" >0.010</td>
	  <td id="T_c41e7_row1_col5" class="data row1 col5" >0.000</td>
	  <td id="T_c41e7_row1_col6" class="data row1 col6" >0.000</td>
	  <td id="T_c41e7_row1_col7" class="data row1 col7" >0.000</td>
	  <td id="T_c41e7_row1_col8" class="data row1 col8" >0.000</td>
	  <td id="T_c41e7_row1_col9" class="data row1 col9" >0.000</td>
	</tr>
	<tr>
	  <th id="T_c41e7_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_c41e7_row2_col0" class="data row2 col0" ></td>
	  <td id="T_c41e7_row2_col1" class="data row2 col1" ></td>
	  <td id="T_c41e7_row2_col2" class="data row2 col2" >2.474</td>
	  <td id="T_c41e7_row2_col3" class="data row2 col3" >0.824</td>
	  <td id="T_c41e7_row2_col4" class="data row2 col4" >0.161</td>
	  <td id="T_c41e7_row2_col5" class="data row2 col5" >0.021</td>
	  <td id="T_c41e7_row2_col6" class="data row2 col6" >0.000</td>
	  <td id="T_c41e7_row2_col7" class="data row2 col7" >0.000</td>
	  <td id="T_c41e7_row2_col8" class="data row2 col8" >0.000</td>
	  <td id="T_c41e7_row2_col9" class="data row2 col9" >0.000</td>
	</tr>
	<tr>
	  <th id="T_c41e7_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_c41e7_row3_col0" class="data row3 col0" ></td>
	  <td id="T_c41e7_row3_col1" class="data row3 col1" ></td>
	  <td id="T_c41e7_row3_col2" class="data row3 col2" ></td>
	  <td id="T_c41e7_row3_col3" class="data row3 col3" >2.807</td>
	  <td id="T_c41e7_row3_col4" class="data row3 col4" >1.126</td>
	  <td id="T_c41e7_row3_col5" class="data row3 col5" >0.310</td>
	  <td id="T_c41e7_row3_col6" class="data row3 col6" >0.043</td>
	  <td id="T_c41e7_row3_col7" class="data row3 col7" >0.000</td>
	  <td id="T_c41e7_row3_col8" class="data row3 col8" >0.000</td>
	  <td id="T_c41e7_row3_col9" class="data row3 col9" >0.000</td>
	</tr>
	<tr>
	  <th id="T_c41e7_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_c41e7_row4_col0" class="data row4 col0" ></td>
	  <td id="T_c41e7_row4_col1" class="data row4 col1" ></td>
	  <td id="T_c41e7_row4_col2" class="data row4 col2" ></td>
	  <td id="T_c41e7_row4_col3" class="data row4 col3" ></td>
	  <td id="T_c41e7_row4_col4" class="data row4 col4" >3.224</td>
	  <td id="T_c41e7_row4_col5" class="data row4 col5" >1.658</td>
	  <td id="T_c41e7_row4_col6" class="data row4 col6" >0.590</td>
	  <td id="T_c41e7_row4_col7" class="data row4 col7" >0.089</td>
	  <td id="T_c41e7_row4_col8" class="data row4 col8" >0.000</td>
	  <td id="T_c41e7_row4_col9" class="data row4 col9" >0.000</td>
	</tr>
	<tr>
	  <th id="T_c41e7_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_c41e7_row5_col0" class="data row5 col0" ></td>
	  <td id="T_c41e7_row5_col1" class="data row5 col1" ></td>
	  <td id="T_c41e7_row5_col2" class="data row5 col2" ></td>
	  <td id="T_c41e7_row5_col3" class="data row5 col3" ></td>
	  <td id="T_c41e7_row5_col4" class="data row5 col4" ></td>
	  <td id="T_c41e7_row5_col5" class="data row5 col5" >3.584</td>
	  <td id="T_c41e7_row5_col6" class="data row5 col6" >2.129</td>
	  <td id="T_c41e7_row5_col7" class="data row5 col7" >0.969</td>
	  <td id="T_c41e7_row5_col8" class="data row5 col8" >0.182</td>
	  <td id="T_c41e7_row5_col9" class="data row5 col9" >0.000</td>
	</tr>
	<tr>
	  <th id="T_c41e7_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_c41e7_row6_col0" class="data row6 col0" ></td>
	  <td id="T_c41e7_row6_col1" class="data row6 col1" ></td>
	  <td id="T_c41e7_row6_col2" class="data row6 col2" ></td>
	  <td id="T_c41e7_row6_col3" class="data row6 col3" ></td>
	  <td id="T_c41e7_row6_col4" class="data row6 col4" ></td>
	  <td id="T_c41e7_row6_col5" class="data row6 col5" ></td>
	  <td id="T_c41e7_row6_col6" class="data row6 col6" >3.596</td>
	  <td id="T_c41e7_row6_col7" class="data row6 col7" >2.189</td>
	  <td id="T_c41e7_row6_col8" class="data row6 col8" >1.023</td>
	  <td id="T_c41e7_row6_col9" class="data row6 col9" >0.230</td>
	</tr>
	<tr>
	  <th id="T_c41e7_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_c41e7_row7_col0" class="data row7 col0" ></td>
	  <td id="T_c41e7_row7_col1" class="data row7 col1" ></td>
	  <td id="T_c41e7_row7_col2" class="data row7 col2" ></td>
	  <td id="T_c41e7_row7_col3" class="data row7 col3" ></td>
	  <td id="T_c41e7_row7_col4" class="data row7 col4" ></td>
	  <td id="T_c41e7_row7_col5" class="data row7 col5" ></td>
	  <td id="T_c41e7_row7_col6" class="data row7 col6" ></td>
	  <td id="T_c41e7_row7_col7" class="data row7 col7" >3.171</td>
	  <td id="T_c41e7_row7_col8" class="data row7 col8" >1.793</td>
	  <td id="T_c41e7_row7_col9" class="data row7 col9" >0.689</td>
	</tr>
	<tr>
	  <th id="T_c41e7_level0_row8" class="row_heading level0 row8" >8</th>
	  <td id="T_c41e7_row8_col0" class="data row8 col0" ></td>
	  <td id="T_c41e7_row8_col1" class="data row8 col1" ></td>
	  <td id="T_c41e7_row8_col2" class="data row8 col2" ></td>
	  <td id="T_c41e7_row8_col3" class="data row8 col3" ></td>
	  <td id="T_c41e7_row8_col4" class="data row8 col4" ></td>
	  <td id="T_c41e7_row8_col5" class="data row8 col5" ></td>
	  <td id="T_c41e7_row8_col6" class="data row8 col6" ></td>
	  <td id="T_c41e7_row8_col7" class="data row8 col7" ></td>
	  <td id="T_c41e7_row8_col8" class="data row8 col8" >2.365</td>
	  <td id="T_c41e7_row8_col9" class="data row8 col9" >1.030</td>
	</tr>
	<tr>
	  <th id="T_c41e7_level0_row9" class="row_heading level0 row9" >9</th>
	  <td id="T_c41e7_row9_col0" class="data row9 col0" ></td>
	  <td id="T_c41e7_row9_col1" class="data row9 col1" ></td>
	  <td id="T_c41e7_row9_col2" class="data row9 col2" ></td>
	  <td id="T_c41e7_row9_col3" class="data row9 col3" ></td>
	  <td id="T_c41e7_row9_col4" class="data row9 col4" ></td>
	  <td id="T_c41e7_row9_col5" class="data row9 col5" ></td>
	  <td id="T_c41e7_row9_col6" class="data row9 col6" ></td>
	  <td id="T_c41e7_row9_col7" class="data row9 col7" ></td>
	  <td id="T_c41e7_row9_col8" class="data row9 col8" ></td>
	  <td id="T_c41e7_row9_col9" class="data row9 col9" >1.283</td>
	</tr>
  </tbody>
</table>

***

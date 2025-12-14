---
aliases: [Flat and Forward Volatility]
tags:
key_concepts:
parent_directory: FINM Fixed Income Derivatives/Lecture Notes
cssclasses: academia
title: "W.2. Flat and Forward Volatility"
---

# W.2. Flat and Forward Volatility

## FINM 37500: Fixed Income Derivatives

### Mark Hendricks

#### Winter 2024

#### Updated March 4

The stripping of the caps utilizes `flat_to_forward_vol`. Before the update, this function was calling an incorrect version of the function.

With the update, the forward volatilities are corrected, which impacts the pricing info below.

LaTeX notation

$$\newcommand{\floorlet}{c}$$

$$\newcommand{\dt}{dt}$$

$$\newcommand{\flatvol}{\overline{\sigma}}$$

$$\newcommand{\flatvolT}{\overline{\sigma_{T}}}$$

$$\newcommand{\fwdvol}{\overrightarrow{\sigma}}$$

$$\newcommand{\fwdvolTi}{\overrightarrow{\sigma_{T_i}}}$$

$$\newcommand{\Efwd}{\tilde{E}}$$

$\newcommand{\strike}{K}$

$\newcommand{\nargcond}{d_{1}}$

$\newcommand{\nargexer}{d_{2}}$

$\newcommand{\EcondS}{\hat{S}_{\text{conditional}}}$

$\newcommand{\probexer}{\hat{\mathcal{P}}_{\text{exercise}}}$

$\newcommand{\Black}{\mathcal{B}}$

$\newcommand{\Blackcall}{\Black_{\text{call}}}$

$\newcommand{\Blackput}{\Black_{\text{put}}}$

### Arbitrary parameterization

* We chose an arbitrary value in our binomial tree (Black-Derman-Toy) for $\sigma$.
* While we could parameterize $\sigma$ for the natural-measure vol, this will not lead to satisfactory pricing.
* Rather, we fit $\sigma$ to the implied volatility of a benchmark derivative.

### Caps and Floors

The largest OTC rate derivatives are caps, floors, and swaptions.

Caps and floors thus are a liquid benchmark for this parameterization.

But how do we pick which cap or floor to use? 

## Flat Volatility

The **flat** volatility is the **implied** volatility that matches the market price of a given **cap** or **floor**.

### A single implied vol for the bundle!

Note that a cap (floor) is a portfolio of various options.

Yet the **flat** volatility is quoting a single implied volatility to price each caplet (floorlet), even though it contains options at different maturities.

$$p_{\text{cap}}(T) = \sum_{i=1}^n p_{\text{caplet}}(T_i,\flatvolT)$$

In this sense, the **flat** volatility is a quoting convention.

* It quotes the price of the bundle of caplets (floorlets) for a given maturity.
* It is inconsistent: it prices the caplets (floorlets) based on which bundle they are in instead of which maturity they have.
* The $T=.5$ and $T=1$ cap both have a caplet at $T=.5$, yet the **flat** volatility assigns them different vols, due to being in different bundles (caps).

### Sound Familiar?

This is **exactly** the issue with **yield-to-maturity**!

* YTM is a useful way to quote bond prices to account for differing maturities / coupouns.
* Flat vol is a useful way to quote cap/floor prices to account for differing expirations / strikes.

## Forward Volatility

For pricing, we need an implied volatility that is applicable to every **caplet** (floorlet) of a given maturity, $T_i$.

Then, pricing a **cap**, which is a bundle of **caplets** would be done with…

$$p_{\text{cap}}(T) = \sum_{i=1}^n p_{\text{caplet}}(T_i,\fwdvolTi)$$

### Pricing

Neither YTM nor flat volatility is appropriate to use for discounted cashflow pricing!

Forward volatilities are appropriate--exactly as the **discount (spot) rate** is for bonds.

I'll bet you can guess what we need to do…

### Extracting Forward Volatilites from Flat Volatilities

We can **bootstrap** the forward volatilities.

1. Get a set of caps with expirations on a grid of dates, $T_i$, starting with $i=1$. Make sure there is a cap expiring on each $T_i$.
2. Uncover $\fwdvol$ for $i=1$ by noting it equals the flat vol.
3. For $i=2$, use the $\fwdvol$ for $i=1$ and $\flatvol$ for $i=1$ to uncover $\fwdvol$ for $i=2$.

This is also referred to as *stripping* the forward volatilities.

## Volatility of the Forward Measure

Consider using Black's model and forward-measure pricing to…

* extract the forward measure (similar to the risk neutral measure) from caps
* apply the measure to swaptions

We can extract what we need from caps with the…

* quoted cap prices 
* forward rates
* discount factors

With the **forward volatilities**…

* convert them to forward-measure volatility
* price interest-rate derivatives using this forward measure in…
	- Black's model
	- extensions or relatives of Black's model
	- monte carlo simulation

# Parameterizing BDT

## Two quotes and two parameters

The **forward volatilites** can be used as $\sigma_t$ in BDT.

* That is, we are now allowing time-varying vol in the BDT dynamics.
* By using these forward vols, the BDT model will fit the term structure of rates **and** of cap/floors.

### Solution?

You'll recall that we can recursively solve for the drifts, $\theta_i$ for each period $i$ by fitting the term structure of rates, (using zero-coupon bonds or a similar discount-curve set of securities.)

With a term structure of caps/floors, we can strip out the caplets/floorlets.

* Recursively solve for $\sigma_i$ in each period simultaneously with $\theta_i$ to fit both the discount rates and the caplet/floorlet rates.

Is there a solution?

* Yes. Each period two unknowns: $\theta_i, \sigma_i$ and two market quotes, (zero coupon bond and cap/floor.)
* But this procedure relies on having a complete set of market quotes from $0\le t\le T$. 
* Often some maturities are missing, and the user interpolates a discount rate and a cap/floor rate.

## Black's Formula

In practice, there is a more common approach to parameterizing the tree than the two-variable optimization above of simultaneously solving $\theta_i$ and $\sigma_i$ at each step.

Recall the continuous-time **Black's Formula**.

Any derivative of a forward is a martingale:

$$f(F,t) = Z(t,T)\Efwd\left[f(F,T)\right]$$

where 

* $F$ denotes the forward of an arbitrary asset.
* and $\Efwd$ denotes the expectation under the **forward measure**

$$\begin{align}
\Blackcall(t)\; =&\; Z(t,T)\left[F_t\mathcal{N}(\nargcond) - \strike \mathcal{N}\left(\nargexer\right)\right]\\
\Blackput(t)\; =&\; Z(t,T)\left[\strike\mathcal{N}(-\nargexer) - F_t \mathcal{N}\left(-\nargcond\right)\right]
\end{align}$$

where $\nargcond$ and $\nargexer$ are

$\begin{align}
\nargcond = \frac{\ln\left(\frac{F_t}{\strike}\right) + \frac{\sigma^2}{2}T}{\sigma\sqrt{T}} \hspace{1cm} 
\nargexer = \nargcond -\sigma\sqrt{T}
\end{align}$

## Implied vol (Black)

1. Use the caps / floors to strip out caplets / floorlets in a term structure for maturities $0\le t \le T$.
2. Solve Black's formula for $\sigma_t$ for each maturity such that Black's formula matches the market price.
3. Use this set of implied forward volatilities in the BDT model.

This is considerably faster than solving $\theta, \sigma$ jointly at each step. 

### Theoretically Consistent?

Are we haphazardly sticking two models together: BDT (discrete time) and Black (continuous time)?
* No. It can be shown that BDT works as a discretization of Black.
* For small time steps in BDT, the implied vols from the direct estimation will converge to the implied vols from Black's formula.

## Market Quoting Convention

In fact, this implied Black's volatility is not just handy for working with the BDT model.

**It is the market convention for quoting cap and floor prices.**

A cap will be quoted with a flat vol.
* To determine the actual market price, plug this flat vol into Black's formula for each corresponding caplet.

Questions:
* What if you do not want to model with Black's formula? Is this a problem?
* Why are caps, floors, and swaptions quoted in terms of implied vol?

### "Normal" quotes

In recent years, it is common to see a "normal" quote for implied volatilities.
* In recent years, the issue of negative rates / prices has become relevant.
* Thus, "normal" models such as Bachelier are standard.
* (Black's formula relies on lognormal dynamics.)
* These normal vol quotes can be converted to Black vols and vice-versa.
* Bloomberg displays quotes in both measures, for instance.

$$\sigma_B = \frac{\sigma_N}{f}$$

where 
* $f$ is the forward rate.
* $\sigma_B$ is the "Black" vol
* $\sigma_N$ is the "normal" vol

The formula holds for **ATM** (at-the-money) options. 
* For OTM (out-of-the-money) options, some further adjustment is needed.
* See Hagan's SABR paper and related papers for details.

#### Note on Bloomberg Quotes

Cap quotes in Bloomberg are downloaded in **normal** vol.
* The terminal allows user to view lognormal (Black) vol, but when using the API, seemingly restricts to normal.

The normal vols are reported in basis points.
* divide by $100$ to get to percent
* divide by $100$ to convert from percent to decimal.

***

# Example of Stripping Caps

We consider **quarterly** caps.
* they have caplets expiring each quarter, with $.5\le \tau \le T$.
* the flat volatility at $T$ is input for every caplet corresponding to the cap of $T$.

#### Careful!
* in Black's formula, use $T-0.25$ as the rate for the caplet is determined one period before it is paid.

### Payoff and Valuation
The payoff of each caplet is
$$\frac{100}{4}\max(r-K,0)$$

Thus, the corresponding value in Black's fomula for a caplet is
$$P_{\text{cap}}(t,T,K) = \frac{100}{4} \sum_{\tau}^T \Blackcall(\overline{\sigma}_T, \tau-1/4, K, f_{\tau}, Z_\tau)$$

where $\tau$ equals $\frac{j}{4}$ over the range of integers $j$, $2\le j \le 4T$.

Note here that for every caplet in cap $T$, we plug in the same 
* flat vol with tenor $T$.
* strike, which in this example is ATM and thus equals the time-$t$ swap rate of maturity $T$.

#### Notation
To simplify the notation inside the arguments of Black's formula, we denote

$
\begin{align}
Z_\tau & \equiv Z(t,t+\tau)\\
f_\tau & \equiv f(t,t+\tau-1/4, t+\tau)
\end{align}
$

## Cap parameters
Consider the ATM (at-the-money) cap:
* the cap's strike is the swap rate with the same tenor. 
* cap has expiration $T=2$.
* the notional of the cap is \$100.

## Getting Caplet Prices and Forward Vols

We can use the flat volatility to get the price of the caps.

Using the cap prices, we strip out the
* caplet prices
* forward volatility at $\tau$ which properly prices caplet $\tau$ using Black's formula.


```python
import numpy as np
import pandas as pdf

import sys
sys.path.insert(0, '../cmds')
from ficcvol import *
from binomial import *
from ratecurves import *
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


```python
DATE = '2023-03-31'
curves = pd.read_excel(f'../data/cap_curves_{DATE}.xlsx', sheet_name=f'rate curves {DATE}').set_index('tenor')
```


```python
capcurves = flat_to_forward_vol(curves)

capcurves[['flat vols','fwd vols']].plot();
```


    
![png](output_24_0.png)
    



```python
capcurves[['flat vols','cap prices','fwd vols']].style.format({'flat vols':'{:.2%}','caplet prices':'{:.2f}','fwd vols':'{:.2%}','cap prices':'{:.2f}'})
```




<style type="text/css">
</style>
<table id="T_8e922">
  <thead>
    <tr>
      <th class="blank level0" >&nbsp;</th>
      <th id="T_8e922_level0_col0" class="col_heading level0 col0" >flat vols</th>
      <th id="T_8e922_level0_col1" class="col_heading level0 col1" >cap prices</th>
      <th id="T_8e922_level0_col2" class="col_heading level0 col2" >fwd vols</th>
    </tr>
    <tr>
      <th class="index_name level0" >tenor</th>
      <th class="blank col0" >&nbsp;</th>
      <th class="blank col1" >&nbsp;</th>
      <th class="blank col2" >&nbsp;</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th id="T_8e922_level0_row0" class="row_heading level0 row0" >0.250000</th>
      <td id="T_8e922_row0_col0" class="data row0 col0" >nan%</td>
      <td id="T_8e922_row0_col1" class="data row0 col1" >nan</td>
      <td id="T_8e922_row0_col2" class="data row0 col2" >nan%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row1" class="row_heading level0 row1" >0.500000</th>
      <td id="T_8e922_row1_col0" class="data row1 col0" >21.95%</td>
      <td id="T_8e922_row1_col1" class="data row1 col1" >0.05</td>
      <td id="T_8e922_row1_col2" class="data row1 col2" >21.95%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row2" class="row_heading level0 row2" >0.750000</th>
      <td id="T_8e922_row2_col0" class="data row2 col0" >30.31%</td>
      <td id="T_8e922_row2_col1" class="data row2 col1" >0.16</td>
      <td id="T_8e922_row2_col2" class="data row2 col2" >36.48%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row3" class="row_heading level0 row3" >1.000000</th>
      <td id="T_8e922_row3_col0" class="data row3 col0" >36.95%</td>
      <td id="T_8e922_row3_col1" class="data row3 col1" >0.32</td>
      <td id="T_8e922_row3_col2" class="data row3 col2" >46.71%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row4" class="row_heading level0 row4" >1.250000</th>
      <td id="T_8e922_row4_col0" class="data row4 col0" >42.07%</td>
      <td id="T_8e922_row4_col1" class="data row4 col1" >0.52</td>
      <td id="T_8e922_row4_col2" class="data row4 col2" >53.65%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row5" class="row_heading level0 row5" >1.500000</th>
      <td id="T_8e922_row5_col0" class="data row5 col0" >45.87%</td>
      <td id="T_8e922_row5_col1" class="data row5 col1" >0.75</td>
      <td id="T_8e922_row5_col2" class="data row5 col2" >56.28%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row6" class="row_heading level0 row6" >1.750000</th>
      <td id="T_8e922_row6_col0" class="data row6 col0" >48.54%</td>
      <td id="T_8e922_row6_col1" class="data row6 col1" >0.98</td>
      <td id="T_8e922_row6_col2" class="data row6 col2" >57.06%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row7" class="row_heading level0 row7" >2.000000</th>
      <td id="T_8e922_row7_col0" class="data row7 col0" >50.28%</td>
      <td id="T_8e922_row7_col1" class="data row7 col1" >1.22</td>
      <td id="T_8e922_row7_col2" class="data row7 col2" >56.37%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row8" class="row_heading level0 row8" >2.250000</th>
      <td id="T_8e922_row8_col0" class="data row8 col0" >51.30%</td>
      <td id="T_8e922_row8_col1" class="data row8 col1" >1.46</td>
      <td id="T_8e922_row8_col2" class="data row8 col2" >54.68%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row9" class="row_heading level0 row9" >2.500000</th>
      <td id="T_8e922_row9_col0" class="data row9 col0" >51.77%</td>
      <td id="T_8e922_row9_col1" class="data row9 col1" >1.69</td>
      <td id="T_8e922_row9_col2" class="data row9 col2" >52.96%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row10" class="row_heading level0 row10" >2.750000</th>
      <td id="T_8e922_row10_col0" class="data row10 col0" >51.92%</td>
      <td id="T_8e922_row10_col1" class="data row10 col1" >1.93</td>
      <td id="T_8e922_row10_col2" class="data row10 col2" >51.51%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row11" class="row_heading level0 row11" >3.000000</th>
      <td id="T_8e922_row11_col0" class="data row11 col0" >51.92%</td>
      <td id="T_8e922_row11_col1" class="data row11 col1" >2.16</td>
      <td id="T_8e922_row11_col2" class="data row11 col2" >50.91%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row12" class="row_heading level0 row12" >3.250000</th>
      <td id="T_8e922_row12_col0" class="data row12 col0" >51.93%</td>
      <td id="T_8e922_row12_col1" class="data row12 col1" >2.40</td>
      <td id="T_8e922_row12_col2" class="data row12 col2" >50.98%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row13" class="row_heading level0 row13" >3.500000</th>
      <td id="T_8e922_row13_col0" class="data row13 col0" >51.84%</td>
      <td id="T_8e922_row13_col1" class="data row13 col1" >2.64</td>
      <td id="T_8e922_row13_col2" class="data row13 col2" >50.15%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row14" class="row_heading level0 row14" >3.750000</th>
      <td id="T_8e922_row14_col0" class="data row14 col0" >51.50%</td>
      <td id="T_8e922_row14_col1" class="data row14 col1" >2.87</td>
      <td id="T_8e922_row14_col2" class="data row14 col2" >47.60%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row15" class="row_heading level0 row15" >4.000000</th>
      <td id="T_8e922_row15_col0" class="data row15 col0" >50.76%</td>
      <td id="T_8e922_row15_col1" class="data row15 col1" >3.09</td>
      <td id="T_8e922_row15_col2" class="data row15 col2" >42.58%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row16" class="row_heading level0 row16" >4.250000</th>
      <td id="T_8e922_row16_col0" class="data row16 col0" >49.54%</td>
      <td id="T_8e922_row16_col1" class="data row16 col1" >3.27</td>
      <td id="T_8e922_row16_col2" class="data row16 col2" >35.25%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row17" class="row_heading level0 row17" >4.500000</th>
      <td id="T_8e922_row17_col0" class="data row17 col0" >48.07%</td>
      <td id="T_8e922_row17_col1" class="data row17 col1" >3.42</td>
      <td id="T_8e922_row17_col2" class="data row17 col2" >30.26%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row18" class="row_heading level0 row18" >4.750000</th>
      <td id="T_8e922_row18_col0" class="data row18 col0" >46.66%</td>
      <td id="T_8e922_row18_col1" class="data row18 col1" >3.58</td>
      <td id="T_8e922_row18_col2" class="data row18 col2" >29.62%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row19" class="row_heading level0 row19" >5.000000</th>
      <td id="T_8e922_row19_col0" class="data row19 col0" >45.63%</td>
      <td id="T_8e922_row19_col1" class="data row19 col1" >3.77</td>
      <td id="T_8e922_row19_col2" class="data row19 col2" >32.59%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row20" class="row_heading level0 row20" >5.250000</th>
      <td id="T_8e922_row20_col0" class="data row20 col0" >45.18%</td>
      <td id="T_8e922_row20_col1" class="data row20 col1" >3.98</td>
      <td id="T_8e922_row20_col2" class="data row20 col2" >38.99%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row21" class="row_heading level0 row21" >5.500000</th>
      <td id="T_8e922_row21_col0" class="data row21 col0" >45.13%</td>
      <td id="T_8e922_row21_col1" class="data row21 col1" >4.23</td>
      <td id="T_8e922_row21_col2" class="data row21 col2" >44.33%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row22" class="row_heading level0 row22" >5.750000</th>
      <td id="T_8e922_row22_col0" class="data row22 col0" >45.20%</td>
      <td id="T_8e922_row22_col1" class="data row22 col1" >4.49</td>
      <td id="T_8e922_row22_col2" class="data row22 col2" >46.19%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row23" class="row_heading level0 row23" >6.000000</th>
      <td id="T_8e922_row23_col0" class="data row23 col0" >45.09%</td>
      <td id="T_8e922_row23_col1" class="data row23 col1" >4.73</td>
      <td id="T_8e922_row23_col2" class="data row23 col2" >43.39%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row24" class="row_heading level0 row24" >6.250000</th>
      <td id="T_8e922_row24_col0" class="data row24 col0" >44.62%</td>
      <td id="T_8e922_row24_col1" class="data row24 col1" >4.95</td>
      <td id="T_8e922_row24_col2" class="data row24 col2" >36.59%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row25" class="row_heading level0 row25" >6.500000</th>
      <td id="T_8e922_row25_col0" class="data row25 col0" >43.87%</td>
      <td id="T_8e922_row25_col1" class="data row25 col1" >5.13</td>
      <td id="T_8e922_row25_col2" class="data row25 col2" >30.91%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row26" class="row_heading level0 row26" >6.750000</th>
      <td id="T_8e922_row26_col0" class="data row26 col0" >43.03%</td>
      <td id="T_8e922_row26_col1" class="data row26 col1" >5.30</td>
      <td id="T_8e922_row26_col2" class="data row26 col2" >27.89%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row27" class="row_heading level0 row27" >7.000000</th>
      <td id="T_8e922_row27_col0" class="data row27 col0" >42.26%</td>
      <td id="T_8e922_row27_col1" class="data row27 col1" >5.47</td>
      <td id="T_8e922_row27_col2" class="data row27 col2" >27.92%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row28" class="row_heading level0 row28" >7.250000</th>
      <td id="T_8e922_row28_col0" class="data row28 col0" >41.70%</td>
      <td id="T_8e922_row28_col1" class="data row28 col1" >5.66</td>
      <td id="T_8e922_row28_col2" class="data row28 col2" >30.68%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row29" class="row_heading level0 row29" >7.500000</th>
      <td id="T_8e922_row29_col0" class="data row29 col0" >41.29%</td>
      <td id="T_8e922_row29_col1" class="data row29 col1" >5.86</td>
      <td id="T_8e922_row29_col2" class="data row29 col2" >32.85%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row30" class="row_heading level0 row30" >7.750000</th>
      <td id="T_8e922_row30_col0" class="data row30 col0" >40.93%</td>
      <td id="T_8e922_row30_col1" class="data row30 col1" >6.07</td>
      <td id="T_8e922_row30_col2" class="data row30 col2" >33.21%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row31" class="row_heading level0 row31" >8.000000</th>
      <td id="T_8e922_row31_col0" class="data row31 col0" >40.52%</td>
      <td id="T_8e922_row31_col1" class="data row31 col1" >6.27</td>
      <td id="T_8e922_row31_col2" class="data row31 col2" >31.42%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row32" class="row_heading level0 row32" >8.250000</th>
      <td id="T_8e922_row32_col0" class="data row32 col0" >39.98%</td>
      <td id="T_8e922_row32_col1" class="data row32 col1" >6.45</td>
      <td id="T_8e922_row32_col2" class="data row32 col2" >27.85%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row33" class="row_heading level0 row33" >8.500000</th>
      <td id="T_8e922_row33_col0" class="data row33 col0" >39.35%</td>
      <td id="T_8e922_row33_col1" class="data row33 col1" >6.62</td>
      <td id="T_8e922_row33_col2" class="data row33 col2" >24.86%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row34" class="row_heading level0 row34" >8.750000</th>
      <td id="T_8e922_row34_col0" class="data row34 col0" >38.69%</td>
      <td id="T_8e922_row34_col1" class="data row34 col1" >6.77</td>
      <td id="T_8e922_row34_col2" class="data row34 col2" >23.17%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row35" class="row_heading level0 row35" >9.000000</th>
      <td id="T_8e922_row35_col0" class="data row35 col0" >38.07%</td>
      <td id="T_8e922_row35_col1" class="data row35 col1" >6.93</td>
      <td id="T_8e922_row35_col2" class="data row35 col2" >22.93%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row36" class="row_heading level0 row36" >9.250000</th>
      <td id="T_8e922_row36_col0" class="data row36 col0" >37.55%</td>
      <td id="T_8e922_row36_col1" class="data row36 col1" >7.10</td>
      <td id="T_8e922_row36_col2" class="data row36 col2" >24.35%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row37" class="row_heading level0 row37" >9.500000</th>
      <td id="T_8e922_row37_col0" class="data row37 col0" >37.19%</td>
      <td id="T_8e922_row37_col1" class="data row37 col1" >7.29</td>
      <td id="T_8e922_row37_col2" class="data row37 col2" >27.69%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row38" class="row_heading level0 row38" >9.750000</th>
      <td id="T_8e922_row38_col0" class="data row38 col0" >37.06%</td>
      <td id="T_8e922_row38_col1" class="data row38 col1" >7.51</td>
      <td id="T_8e922_row38_col2" class="data row38 col2" >33.34%</td>
    </tr>
    <tr>
      <th id="T_8e922_level0_row39" class="row_heading level0 row39" >10.000000</th>
      <td id="T_8e922_row39_col0" class="data row39 col0" >37.21%</td>
      <td id="T_8e922_row39_col1" class="data row39 col1" >7.79</td>
      <td id="T_8e922_row39_col2" class="data row39 col2" >41.96%</td>
    </tr>
  </tbody>
</table>




***

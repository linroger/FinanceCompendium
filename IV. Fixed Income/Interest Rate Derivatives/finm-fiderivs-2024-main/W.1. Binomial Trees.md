---
aliases:
  - Binomial Trees
tags:
key_concepts:
parent_directory: IV. Fixed Income/Interest Rate Derivatives/finm-fiderivs-2024-main
cssclasses: academia
title: Week 1 - Binomial Trees
---

# Week 1 - Binomial Trees

## FINM 37500: Fixed Income Derivatives

### Mark Hendricks

#### Winter 2024

### Notation

$$\newcommand{\Ern}{E^*}$$

$$\newcommand{\hedge}{\beta}$$

$$\newcommand{\dt}{\Delta t}$$

## Setup

Consider the one-period problem:

* By one period, we mean one period of uncertainty.
* So two periods to notate: $t=0$ and $t=T$.
* No trading or action in between the discrete period.

For now, assume

* the interest rate is zero.
* the stock does not pay a dividend

## Introduction via an Example

Suppose we want to price a **european call** option, $C$, with 

* strike = 105.

![image](../refs/options/tree_equity_simple.png)

Denote

* stock price, $S$
* call price, $C$
* strike $K$
* expiration $T$

In this tree,

* $S_u$ = 110
* $S_d$ = 90
* $S_0$ = 100

Thus, for the call with strike $K=105$,

* $C_u$ = 5
* $C_d$ = 0
* $C_0$ = ???

How could we **replicate the…**

1. Call
	- stock
	- cash

2. Cash
	- call
	- stock

Consider the hedge ratio:

<img src="../refs/options/one-period-payoff.png" width="500" />

## Answer

### Hedge Ratio

The key is the hedge ratio, or delta of the option over the discretized state:

$$\hedge = \frac{C_u - C_d}{S_u-S_d}$$

$$\hedge = \frac{5-0}{110-90} = 0.25$$

### Replicating the Call
* Long $\hedge=0.25$ shares of the stock
* Short \$??? of cash

We need to shift the stock payoff to the correct level of the call.

$\begin{align}

\alpha =& C_u - \beta S_u\\

=& 5 - 0.25 (110)\\

=& -\$22.50

\end{align}

$

If we are

* long 0.25 shares of stock
* short \$22.50 of cash

Payoff is

* UP: .25(110) - 22.5 = \$5
* DOWN: .25(90) - 22.5 = \$0 

### Replicating Cash
* Long $\hedge=0.25$ shares of the stock
* Short the call

This will lead to an identical payoff in either state of $T=1$

* UP: (.25)(110) - 5 = 22.50
* DOWN: (.25)(90) - 0 = 22.50

## Pricing

If two positions have identical cashflows at $T$ with 100\% probability, then there prices must be the same at $t=0$.

### Notation
* $N_S$: shares of stock
* $N_B$: units of cash
* $N_C$: units of call option

### Pricing the replicated call

$\begin{align}

C_0 =& N_S S_0 + N_B\\

=& 0.25(100) - 22.50\\

=& 2.50

\end{align}$

### Pricing the replicated cash

$\begin{align}

22.50 =& N_S S_0 + N_C C_0\\

=& 0.25(100) - C_0\\

=& 25 - C_0

\end{align}$

Thus, we again see $C_0= 2.50$

## Pricing Formula

If we construct a riskless portfolio as above, the cost of setting it up is

$$S_0\hedge - C_0$$

The present value of the guaranteed payoff is

$$S_u\hedge - C_u$$

Thus, these must be equal. A little algebra yields,

$$C_0 = C_u\underbrace{\frac{S_0 - S_d}{S_u-S_d}}_{p^*} + C_d\underbrace{\frac{S_u - S_0}{S_u-S_d}}_{1-p}$$

$$C_0 = C_u p^* + C_d(1-p^*)$$

Trying this formula with the parameters above, we can confirm:

$\begin{align}

C_0 =& 5\frac{100-90}{110-90} - 0\frac{110-100}{110-90}\\[5pt]

=& 2.50

\end{align}$

## Interpreting the term $p^*$

There are a few ways to interpret the term $p^*$ above.

### State-contingent payoffs

First, consider the option as a bundle of state-space contracts.

* $U$ pays \\\$1 in the event that the "up" space is realized, \$0 otherwise.
* Similarly for $D$
* $P_u$ and $P_d$ denote the time-zero price of these state-space contracts.

Then, 

$$C_T = 5U + 0D$$

and thus,

$$C_0 = 5 P_u + 0 P_d$$

### Probability

Alternatively, consider $p$ to be the probability of realizing the "up" state. Then,

$$C_0 = \Ern\left[C_T\right]$$

where $\Ern[]$ is formed over the probabilities, $p^*$ and $1-p^*$.

## Key Features of this solution

We have much more to say about this interpretation of $p^*$ as we continue. For now, consider

* We priced the call without ever knowing actual tree probabilities.

In this simple tree is equivalent to not knowing

* the trend (mean return) of the stock.

How is this possible?

# Generalizing the Binomial Tree

Consider a generalization of

1. contract
2. interest rates being non-zero
3. notation

General notation:

* derivative price is $f$, and may be a call, put, or other derivative contract.
* time interval is $\dt$
* up movement and down movement of stock are multiplicative factors
$$S_u = S_0 u, \hspace{1cm} S_d = S_0 d$$

Notate the relevant interest rate and discount factor as

* discounting rate, $r$, continuously compounded
* discount factor, $Z$, denoting $e^{-r\dt}$
* growth factor, $A$, denoting $e^{r\dt}$.

## The general formulas

$$p=\frac{A-d}{u-d}$$

$$f_0 = Z\left[pf_u + (1-p)f_d\right]$$

$$f_0 = Z\, \Ern[f]$$

### Setting $u$ and $d$

$u$ and $d$ are parameters of the model.

How should we set them?

#### Answer

Set them to match volatility. 

* We have the variance of the step given a bernoulli distributino
* We want it to match a stochastic process volatility: $\sigma\sqrt{\dt}$

This yields

$$u = e^{\sigma\sqrt{\dt}}, \hspace{1cm} d = e^{-\sigma\sqrt{\dt}}$$

### Other settings

This methodology, (and the formulas above,) can easily incorporate…

* dividend-paying stock
* underlying is an index
* futures contracts

In each case, change $A$ to correspond to the expected growth rate.

## Concerns

1. Discretization of space (market incompleteness)
2. Discretization of time (approximating time dynamics)

To understand the concern of market incompleteness, reconsider the one-period tree above. But now,

* There are three states: up, down, and center.
* Suppose $S_c = 100$.

Can we perfectly replicate as above?

Why not?

* We will have two different slopes (option deltas!)
* In a one-period model with just a stock and cash, we cannot replicate both slopes.

This is what is meant by the market being "incomplete". Certain securities cannot be replicated.

* We will deal with this by making the time grid finer. With two periods, we could do some intermediate trading and recover our earlier results.

# Binomial Trees and Fixed Income

Apply the same principles to a case where the underlying tree is not a traded security, but rather interest rates.

* continuously compounded rates
* $\dt=0.5$ years
* modeling the 6-month rate at each step

These are (equivalently)

* discount rates
* YTM on a zero-coupon bond

```python
import numpy as np
import pandas as pd
import warnings
warnings.filterwarnings('ignore',category=FutureWarning)
```

```python
t_grid = [.5,1,1.5]
p_grid = [99.1338, 97.8925, 96.1531]
y_grid = [1.74, 2.13, 2.62]
quotes = pd.DataFrame({'price':p_grid, 'yield':y_grid},index=t_grid)
quotes.index.name = 'time'
quotes
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
	  <th>price</th>
	  <th>yield</th>
	</tr>
	<tr>
	  <th>time</th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0.5</th>
	  <td>99.1338</td>
	  <td>1.74</td>
	</tr>
	<tr>
	  <th>1.0</th>
	  <td>97.8925</td>
	  <td>2.13</td>
	</tr>
	<tr>
	  <th>1.5</th>
	  <td>96.1531</td>
	  <td>2.62</td>
	</tr>
  </tbody>
</table>
</div>

<img src="../refs/options/tree_rates/ex_1_rates.png" width="500" />

## Why continuously compounded?

Our tree is a six-month interval, so why not a semiannual compounding?

* This is miles vs kilometers, not a modeling choice. (There is a one-to-one mapping.)
* As we change the time-step of the tree, we don't want to change all the compounding rates.
* This will converge to continuous time models.

Recall we can always convert between continuous and discrete compounding with:

$$e^{r\dt} = 1+r_n \dt$$

# Pricing Bonds

Price zero-coupon treasury bonds with the rate tree above.

Denote, $P_{\text{period},\text{state}|\text{maturity}}$, for the bond 

Thus, $P_{i,j|k}$ says…

* in period $i$
* node $j$
* maturity in period $k$

Then using the rate tree, we can calculate the **tradeable security tree**,

* $P_{0|2} = 97.8925$
* $P_{1,u|2} = e^{-r_{1,u}0.5}100 = \$98.3193$
* $P_{1,d|2} = e^{-r_{1,d}0.5}100 = \$99.5261$
* $P_{2,\cdot|2} = \$100$

<img src="../refs/options/tree_rates/ex_1_bond.png" width="700" />

Source: Table 9.3, Veronesi, Pietro. Fixed Income Securities.

# Pricing an interest-rate option

Consider pricing an interest-rate derivative,

* analogous to a put option on interest rates
* payoff at period 1, ($t=0.5$) 
* strike is $r_K$ is 2\%
* Payoff is $100\max(r_K-r_1,0)$

How would you price this with the information above using a

* 2-period bond
* 1-period bond

This problem seems more complicated than the equity example, but note that

* There is only one period of uncertainty.
* The one-period bond is acting as "cash" with an interest rate.

## Answer

$$\beta = \frac{f_u-f_d}{P_{1u|2}-P_{1d|2}}$$

$$\alpha = \frac{f_{u} - \beta P_{1u|2}}{100}$$

$$p^* = \frac{A P_{0|2} - P_{1d|2}}{P_{1u|2}-P_{1d|2}}$$

where $A = e^{r_0\dt}$.

```python
FACE = 100
r0 = .0174
r1 = np.array([.0339, .0095])
rK = .02
fud = FACE * (rK-r1)
fud[fud<0] = 0

P1_2 = [98.3193, 99.5261]

beta = (fud[0] - fud[1]) / (P1_2[0] - P1_2[1])
alpha = (fud[0] - beta * P1_2[0])/FACE
```

```python
position = pd.DataFrame(index=['1-period bond','2-period bond'],columns=['price','position','$ holding'],dtype=float)
position['price'] = quotes.iloc[0:2,0].values
position['position'] = [alpha,beta]
position['$ holding'] = position['price'] * position['position']
position.loc['net','$ holding'] = position['$ holding'].sum()
position.style.format('${:,.4f}')
```

<style type="text/css">
</style>
<table id="T_52d22">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_52d22_level0_col0" class="col_heading level0 col0" >price</th>
	  <th id="T_52d22_level0_col1" class="col_heading level0 col1" >position</th>
	  <th id="T_52d22_level0_col2" class="col_heading level0 col2" >$ holding</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_52d22_level0_row0" class="row_heading level0 row0" >1-period bond</th>
	  <td id="T_52d22_row0_col0" class="data row0 col0" >\$99.1338</td>
	  <td id="T_52d22_row0_col1" class="data row0 col1" >$-0.8554</td>
	  <td id="T_52d22_row0_col2" class="data row0 col2" >$-84.8036</td>
	</tr>
	<tr>
	  <th id="T_52d22_level0_row1" class="row_heading level0 row1" >2-period bond</th>
	  <td id="T_52d22_row1_col0" class="data row1 col0" >\$97.8925</td>
	  <td id="T_52d22_row1_col1" class="data row1 col1" >\$0.8701</td>
	  <td id="T_52d22_row1_col2" class="data row1 col2" >\$85.1733</td>
	</tr>
	<tr>
	  <th id="T_52d22_level0_row2" class="row_heading level0 row2" >net</th>
	  <td id="T_52d22_row2_col0" class="data row2 col0" >$nan</td>
	  <td id="T_52d22_row2_col1" class="data row2 col1" >$nan</td>
	  <td id="T_52d22_row2_col2" class="data row2 col2" >\$0.3696</td>
	</tr>
  </tbody>
</table>

Confirm that this holding perfectly replicates the payoff of the rate option in both the UP and DOWN states.

## Risk-neutral pricing

Show that we get the same price via risk-neutral pricing.

```python
dt = 0.5
A = np.exp(dt * r0)
Z = np.exp(-dt*r0)
pstar = (A*quotes.loc[1,'price'] - P1_2[1])/(P1_2[0]-P1_2[1])

rnpricing = pd.DataFrame(columns=['probability','cashflows'],index=['up','down'],dtype=float)
rnpricing.loc['up','probability'] = pstar
rnpricing.loc['down','probability'] = 1-pstar
rnpricing['cashflows'] = fud
rnpricing['probability weighted cashflows'] = rnpricing['probability'] * rnpricing['cashflows']
rnpricing.loc['net','probability weighted cashflows'] = rnpricing['probability weighted cashflows'].sum()
rnpricing.loc['price'] = Z * rnpricing.loc['net','probability weighted cashflows']
rnpricing.style.format({'probability':'{:.2%}', 'probability weighted cashflows':'{:.4f}','cashflows':'{:.4f}'})
```

<style type="text/css">
</style>
<table id="T_2c665">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_2c665_level0_col0" class="col_heading level0 col0" >probability</th>
	  <th id="T_2c665_level0_col1" class="col_heading level0 col1" >cashflows</th>
	  <th id="T_2c665_level0_col2" class="col_heading level0 col2" >probability weighted cashflows</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_2c665_level0_row0" class="row_heading level0 row0" >up</th>
	  <td id="T_2c665_row0_col0" class="data row0 col0" >64.49%</td>
	  <td id="T_2c665_row0_col1" class="data row0 col1" >0.0000</td>
	  <td id="T_2c665_row0_col2" class="data row0 col2" >0.0000</td>
	</tr>
	<tr>
	  <th id="T_2c665_level0_row1" class="row_heading level0 row1" >down</th>
	  <td id="T_2c665_row1_col0" class="data row1 col0" >35.51%</td>
	  <td id="T_2c665_row1_col1" class="data row1 col1" >1.0500</td>
	  <td id="T_2c665_row1_col2" class="data row1 col2" >0.3729</td>
	</tr>
	<tr>
	  <th id="T_2c665_level0_row2" class="row_heading level0 row2" >net</th>
	  <td id="T_2c665_row2_col0" class="data row2 col0" >nan%</td>
	  <td id="T_2c665_row2_col1" class="data row2 col1" >nan</td>
	  <td id="T_2c665_row2_col2" class="data row2 col2" >0.3729</td>
	</tr>
	<tr>
	  <th id="T_2c665_level0_row3" class="row_heading level0 row3" >price</th>
	  <td id="T_2c665_row3_col0" class="data row3 col0" >36.97%</td>
	  <td id="T_2c665_row3_col1" class="data row3 col1" >0.3697</td>
	  <td id="T_2c665_row3_col2" class="data row3 col2" >0.3697</td>
	</tr>
  </tbody>
</table>

***

# More Applications

Use these trees to price swaps, calls on bonds, etc.

See Homework 1.

***

# A Multiperiod Tree

## Reminder on the One-period Tree

We have focused on a one-period (of uncertainty) tree for

* equities
* rates

We saw that the same computational approach applied to both, and it priced the option via

* no-arbitrage replication
* no-arbitrage risk-adjusted (risk-neutral) discounted expected values.

# Multiperiod Equity Tree

Continue the logic of the equity tree, and extend it to a second period.

* Continue to use $u$ and $d$ to denote multiplicative "up" and "down" factors.
* Fill out the underlying tree with $u$ and $d$ factors to match the volatility of the underlying.

See the figure below.

<img src="../refs/options/tree_multiperiod/two_period_form.png" width="700" />
Reference: John Hull, Chapter 13.

# Solution Method

## Boundary (Terminal) Conditions

The contract determines the payoff at expiration as a known function of the underlying.

* This gives us the option value at the final nodes.

## Moving Backward

From there, go backward in time one node.

* We have two separate, one-period trees.

The solution procedure works exactly as discussed before--same formulas, with the obvious adaptations.

* $f_{uu}$ and $f_{ud}$ instead of $f_u$ and $f_d$.
* $S_0uu$ and $S_0ud$ instead of $S_0u$ and $S_0d$.

# The Multiperiod Tree

## Iterate
* Continue at each state of $T-i\dt$.
* Move back a time step, $\dt$, and continue.

## Choosing a time-grid

The time-grid must be chosen fine enough to get convergence.

* Common to see $\dt$ chosen such that there are around 30 steps for a vanilla American option.
* Exotic options (barrier, knock-in, etc) may need many more steps.

If the time grid is chosen too coarsely, the solution will not converge to a reasonable solution.

* Furthermore, there may be issues of negative risk-neutral probabilities.
* If the variance in any given step is too large, the probabilities become extreme to try to match it.
* Small time-steps keep this from happening.

## Specific underlying values

In the tree, we do not get to set the exact price values.

* We have been setting $u$ and $d$ to match volatility.
* For some options, specific underlying values are of importance.

For this flexibility, we would need to take a different approach which will lead to **trinomial trees.**

```python
import sys
sys.path.insert(0, '../cmds')
from options import *
```

# Inputs

```python
## Market variables
r = .05
sigma = .25
So = 50

## Contract
T = 2
K = 55
funPayoff = lambda x: np.maximum(K-x,0)

## Solving variable
Nt = 2
uset = 1.2
dset = .8

dt = T/Nt
```

# Underlying Tree

```python
tree, treeinfo = treeUnder(So,T,Nt,sigma=sigma)

tree.style.format('{:.2f}')
```

<style type="text/css">
</style>
<table id="T_d6964">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_d6964_level0_col0" class="col_heading level0 col0" >0</th>
	  <th id="T_d6964_level0_col1" class="col_heading level0 col1" >1</th>
	  <th id="T_d6964_level0_col2" class="col_heading level0 col2" >2</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_d6964_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_d6964_row0_col0" class="data row0 col0" >50.00</td>
	  <td id="T_d6964_row0_col1" class="data row0 col1" >64.20</td>
	  <td id="T_d6964_row0_col2" class="data row0 col2" >82.44</td>
	</tr>
	<tr>
	  <th id="T_d6964_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_d6964_row1_col0" class="data row1 col0" >nan</td>
	  <td id="T_d6964_row1_col1" class="data row1 col1" >38.94</td>
	  <td id="T_d6964_row1_col2" class="data row1 col2" >50.00</td>
	</tr>
	<tr>
	  <th id="T_d6964_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_d6964_row2_col0" class="data row2 col0" >nan</td>
	  <td id="T_d6964_row2_col1" class="data row2 col1" >nan</td>
	  <td id="T_d6964_row2_col2" class="data row2 col2" >30.33</td>
	</tr>
  </tbody>
</table>

# Tree Rates

```python
rates = r * np.ones(Nt)

Z = np.exp(-rates*dt)
A = np.exp(rates * dt)

pstar = (A - treeinfo.d)/(treeinfo.u-treeinfo.d)

print(f'Risk-neutral probability: {pstar[0]:.2%}')
```

    Risk-neutral probability: 53.93%

# Solving the European Tree

```python
treeV = treeAsset(funPayoff,tree,treeinfo,Z=Z,pstar=pstar)
treeV.style.format('{:.2f}')
```

<style type="text/css">
</style>
<table id="T_b8022">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_b8022_level0_col0" class="col_heading level0 col0" >0</th>
	  <th id="T_b8022_level0_col1" class="col_heading level0 col1" >1</th>
	  <th id="T_b8022_level0_col2" class="col_heading level0 col2" >2</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_b8022_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_b8022_row0_col0" class="data row0 col0" >6.99</td>
	  <td id="T_b8022_row0_col1" class="data row0 col1" >2.19</td>
	  <td id="T_b8022_row0_col2" class="data row0 col2" >0.00</td>
	</tr>
	<tr>
	  <th id="T_b8022_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_b8022_row1_col0" class="data row1 col0" >nan</td>
	  <td id="T_b8022_row1_col1" class="data row1 col1" >13.38</td>
	  <td id="T_b8022_row1_col2" class="data row1 col2" >5.00</td>
	</tr>
	<tr>
	  <th id="T_b8022_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_b8022_row2_col0" class="data row2 col0" >nan</td>
	  <td id="T_b8022_row2_col1" class="data row2 col1" >nan</td>
	  <td id="T_b8022_row2_col2" class="data row2 col2" >24.67</td>
	</tr>
  </tbody>
</table>

# Compare to Black-Scholes

```python
f0BS = bs_price(under=So,strike=K,T=T,rf=r,vol=sigma,option='put')
f0BS
```

    6.8830357011256

# American Option

```python
STYLE = 'american'
treeVamer, treeExer = treeAsset(funPayoff,tree,treeinfo,Z=Z,pstar=pstar,style='american')
treeVamer.style.format('{:.2f}')
```

<style type="text/css">
</style>
<table id="T_a84a8">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_a84a8_level0_col0" class="col_heading level0 col0" >0</th>
	  <th id="T_a84a8_level0_col1" class="col_heading level0 col1" >1</th>
	  <th id="T_a84a8_level0_col2" class="col_heading level0 col2" >2</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_a84a8_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_a84a8_row0_col0" class="data row0 col0" >8.16</td>
	  <td id="T_a84a8_row0_col1" class="data row0 col1" >2.19</td>
	  <td id="T_a84a8_row0_col2" class="data row0 col2" >0.00</td>
	</tr>
	<tr>
	  <th id="T_a84a8_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_a84a8_row1_col0" class="data row1 col0" >nan</td>
	  <td id="T_a84a8_row1_col1" class="data row1 col1" >16.06</td>
	  <td id="T_a84a8_row1_col2" class="data row1 col2" >5.00</td>
	</tr>
	<tr>
	  <th id="T_a84a8_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_a84a8_row2_col0" class="data row2 col0" >nan</td>
	  <td id="T_a84a8_row2_col1" class="data row2 col1" >nan</td>
	  <td id="T_a84a8_row2_col2" class="data row2 col2" >24.67</td>
	</tr>
  </tbody>
</table>

```python
treeExer
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
	  <th>0</th>
	  <th>1</th>
	  <th>2</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>False</td>
	  <td>False</td>
	  <td>False</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>False</td>
	  <td>True</td>
	  <td>True</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>True</td>
	</tr>
  </tbody>
</table>
</div>

# Compare all three

```python
pd.DataFrame([f0BS,treeV.iloc[0,0],treeVamer.iloc[0,0]],columns=['value'],index=['BS value','tree value','American']).style.format('{:.4f}')
```

<style type="text/css">
</style>
<table id="T_7e4ee">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_7e4ee_level0_col0" class="col_heading level0 col0" >value</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_7e4ee_level0_row0" class="row_heading level0 row0" >BS value</th>
	  <td id="T_7e4ee_row0_col0" class="data row0 col0" >6.8830</td>
	</tr>
	<tr>
	  <th id="T_7e4ee_level0_row1" class="row_heading level0 row1" >tree value</th>
	  <td id="T_7e4ee_row1_col0" class="data row1 col0" >6.9865</td>
	</tr>
	<tr>
	  <th id="T_7e4ee_level0_row2" class="row_heading level0 row2" >American</th>
	  <td id="T_7e4ee_row2_col0" class="data row2 col0" >8.1620</td>
	</tr>
  </tbody>
</table>


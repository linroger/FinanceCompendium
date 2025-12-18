---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: TA Review 1
linter-yaml-title-alias: TA Review 1
---

# TA Review 1
*2/13/2024*

## FINM 37500 - 2024

### UChicago Financial Mathematics

* Jordan Sacks
* jordansacks@uchicago.edu

### Agenda
**Lecture 1 Topics**
- Binomial Trees
- Black's Formulas (Black's Model 76, General Model with time-varying interest rates)
 <br>

### Libraries

```python
import numpy as np
import pandas as pd

import sys
sys.path.insert(0, '../cmds')
from binomial import *
from options import *
```

$$\newcommand{\Ern}{E^*}$$

$$\newcommand{\Efwd}{\tilde{E}}$$

$$\newcommand{\hedge}{\beta}$$

$$\newcommand{\dt}{\Delta t}$$

$\newcommand{\dvd}{D}$

$\newcommand{\pvdvd}{D^*}$

$\newcommand{\pvstrike}{K^*}$

$\newcommand{\strike}{K}$

$\newcommand{\nargcond}{d_{1}}$

$\newcommand{\nargexer}{d_{2}}$

$\newcommand{\EcondS}{\hat{S}_{\text{conditional}}}$

$\newcommand{\probexer}{\hat{\mathcal{P}}_{\text{exercise}}}$

# Simple Stock Example for Inspiration

## Setup from Lecture

Suppose we want to price a **european call** option, $C$, with 

* strike = 105.
* interest rate = 0
* No dividends
* 1 period of uncertainty and nothing happends in between (i.e., no trading/news as its a discrete time step)

![image](../refs/options/tree_equity_simple.png)

**What do we know?** <br>
- Stock price assumptions are symmetric. 
- Payoffs are asymmetric
- Conceptually: The sum of the probabilities = 1. The probabilities are reflected in the current present value of the stock price. This is enougn because the call is a deterministic function of the stock. Therefore we can create a linear function relating the stock price and up-move stock price and down-move stock price. 

**What do we need to do?** <br>
- Since it is never stated that the probability of going to P=110 or P=90 are equal, we need to identify the ***risk-neutral measure*** to get the expected value at t=T
- Conceptually: Risk aversion will impact the market implied probability and that is why we need the ***risk-neutral measure***

## Hedge Ratio
- Calculate the slope of the payoff based on how the underlying moves. This is the delta

$$ \beta = \frac{C_u - C_d}{S_u-S_d}$$

$$ \beta = \frac{5-0}{110-90} = 0.25$$ 

**What does this mean?** <br>
- For every dollar the stock ends up higher, the payoff increases by 0.25
- Position size of the underlying stock

## Pricing via Replication using underlying stock and cash

Payoff is

* UP: .25(110) - X = \$5
* DOWN: .25(90) - X = \$0 

X = 22.5 = Units of Cash

- When replicating with the actual stock, you need to match the level so the payoff matches
- If the stock goes to 110 and you buy .25 shares of the stock, then the value is 27.5 vs if stock goes to 90 then the value is 22.5. However, from the call payoff, the value should equal 5 or 0 so you need to subtract the cost to finance this

Notation

* $N_S$: shares of stock
* $N_B$: units of cash
* $N_C$: units of call option

Formula <br>
$\begin{align}

C_0 =& N_S S_0 + N_B\\

=& 0.25(100) - 22.50\\

=& 2.50

\end{align}$

## Pricing via Formula

$$C_0 = C_u\underbrace{\frac{S_0 - S_d}{S_u-S_d}}_{p^*} + C_d\underbrace{\frac{S_u - S_0}{S_u-S_d}}_{1-p}$$

$$C_0 = C_u p^* + C_d(1-p^*)$$

$$\begin{align}
C_0 =& 5\frac{100-90}{110-90} - 0\frac{110-100}{110-90}\\[5pt]
=& 2.50
\end{align}$$

- No discounting because we assumed rate = 0
- Assumptions are that there is no arbitrage, and frictionless markets

### Takeaways

**What is P*?** <br>
- Interpret as the probability of realizing the up-state
$$C_0 = \Ern\left[C_T\right]$$
where $\Ern[]$ is formed over the probabilities, $p^*$ and $1-p^*$.

**Key Features of the Solution**
- Dont need to model the drift of the stock or the probability of the up/down price
- Because this result requires no arbitrage, then without this solution, we could arb it back to this price
- Why does it not matter if the probabilities of the up move are 99% or 1%: If the probability was 99% then it would be baked into the price of the stock today. Alternatively, if the probability is actually 99% of an upmove and the current stock price is 100, then investors must be incredibly risk averse and scared of the 90 outcome. If the probability is 50% then investors have no risk aversion.

# Generalized Binomial Tree

### Formulas
General notation:
* derivative price is $f$, and may be a call, put, or other derivative contract.
* time interval is $\dt$
* up movement and down movement of stock are multiplicative factors
$$S_u = S_0 u, \hspace{1cm} S_d = S_0 d$$


$$u = e^{\sigma\sqrt{\dt}}, \hspace{1cm} d = e^{-\sigma\sqrt{\dt}}$$

* discounting rate, $r$, continuously compounded
* discount factor, $Z$, denoting $e^{-r\dt}$
* growth factor, $A$, denoting $e^{r\dt}$.

$$p=\frac{A-d}{u-d}$$

$$f_0 = Z\left[pf_u + (1-p)f_d\right]$$

$$f_0 = Z\, \Ern[f]$$

- The same slope as above but adjusted for time value of money
- Todays value of the derivative is the discounted value of the expected value of the payoff
- Sigma is the annualized vol and when we multiply by the sqrt of the time horizon, it becomes the cumulative vol

### Takeaways
**Why this is helpful?**
- General methodology can handle dividend paying stocks, underlying is an index, futures contracts

**Why is this not complete?**
- We are suggesting there are only 2 states that the underlying can move to at each time step which is not realistic. For example, what if the underlying didnt change value? 
- We are simplifying the time intervals to discrete moments which is also not realistic as the underlyings move continously during market hours (this is more unrealistic with american options when you could exercise at any point)

**How does this relate to fixed-income?**
- Fundamental differences between stock option pricing and fixed income options are that we know what the final price of the underlying is going to be at maturity. The bond's price is serially correlated and has to end at 100
- This impacts how we model it since the simple model above wouldnt force the price to 100 at maturity
- Therefore, we use interest rates in the model. However, since the interest rates, (i.e., the underlying) isnt a tradable product, we can use the rates in the model to price the bond at each time step

### Bond Example from Lecture

The tree will represent the:
* continuously compounded rates
* $\dt=0.5$ years
* modeling the 6-month rate at each step

These are (equivalently)
* discount rates
* YTM on a zero-coupon bond


```python
# Set our inputs for the problem.
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



- Instead of modeling the entire yield curve at each time step, we model the short interest rate (now till next period) and apply it at each time step
- Based on the above, we see that 1.74% is the first rate. Note this corresponds to a 6mo treasury
- You can choose any compounding but usually its continously compounded for mathematical simplicity


```python
# Set inputs for the final rate (Like we did above with the stocks assuming the final state was $110 or $90)
r_u = .0339
r_d = 0.0095
delta_t = quotes.index.to_series().diff().mean()
NOTIONAL = 100
```


```python
delta_t
```




    0.5



Price zero-coupon treasury bonds with the rate tree above.

Denote, $P_{\text{period},\text{state}|\text{maturity}}$, for the bond  <br>

Then using the rate tree, we can calculate the **tradeable security tree**,


```python
# 1 year bond price from above input at period=0
p0_2 = quotes.iloc[1]['price']

# Price of same bond assuming moved 1 period forward (0.5 years) and resulting rate from tree
p1u2 = np.exp(-r_u*delta_t)*NOTIONAL
p1d2 = np.exp(-r_d*delta_t)*NOTIONAL

# Ending price is known for all bonds
p2_2 = 100

print(f"P_0_2 = ${p0_2:.04f}")
print(f"P_1_u_2 = ${p1u2:.04f}")
print(f"P_1_d_2 = ${p1d2:.04f}")
print(f"P_2_2 = ${p2_2:.04f}")
```

    P_0_2 = \$97.8925
    P_1_u_2 = \$98.3193
    P_1_d_2 = \$99.5261
    P_2_2 = \$100.0000


<img src="../refs/options/tree_rates/ex_1_bond.png" width="700" />

### Pricing the Option
* analogous to a put option on interest rates
* payoff at period 1, ($t=0.5$) 
* strike is $r_K$ = 2\%
* Payoff is $100\max(r_K-r_1,0)$

This problem seems more complicated than the equity example, but note that
* There is only one period of uncertainty.
* The one-period bond is acting as "cash" with an interest rate. This component is equal to the 6mo T-Bill

#### Pricing Via Replication
Size the position of the underlying and the cash-equivalent

$$\beta = \frac{f_u-f_d}{P_{1u|2}-P_{1d|2}}$$

$$\alpha = \frac{f_{u} - \beta P_{1u|2}}{100}$$




```python
# Short rate is based on the nearest term short rate we defined above
r0 = quotes.iloc[0]["yield"]/100

# Define the rate at period = 1 to be either up-state rate or down-state rate
r1 = np.array([r_u, r_d])

# Strike
rK = .02

# Payoff of Put
fud = NOTIONAL * (rK-r1)
fud[fud<0] = 0

# Define the prices at period=1 using the prices we calculated above
P1_2 = [p1u2, p1d2]

# Plug into formulas to get position sizing of the bond and the cash-equivalent (i.e., 6mo treasury)
beta = (fud[0] - fud[1]) / (P1_2[0] - P1_2[1])
alpha = (fud[0] - beta * P1_2[0])/NOTIONAL

print(f"Beta (Position size of the underlying): {beta:.02f}")
print(f"Alpha (Position size of the money market treasury): {alpha:.02f}")
```

    Beta (Position size of the underlying): 0.87
    Alpha (Position size of the money market treasury): -0.86



```python
# Note that the 1-period bond is the 6mo treasury that will get us to T=0.5. 
# The 2-period bond is the 1yr treasury that will get us to T=1

# Create dataframe to track the price, position of the 6mo (i.e., 1-period) and 1yr (i.e., 2-period) treasuries
position = pd.DataFrame(index=['1-period bond','2-period bond'],columns=['price','position','$ holding'],dtype=float)

# Set the prices based on the inputs defined above
position['price'] = quotes.iloc[0:2,0].values

# Set the positions based on the above calculated values
position['position'] = [alpha,beta]

# Value is the price * position
position['$ holding'] = position['price'] * position['position']

# Difference is the price of the option
position.loc['net','$ holding'] = position['$ holding'].sum()
position.style.format('${:,.4f}')
```




<style type="text/css">
</style>
<table id="T_0feda_">
  <thead>
    <tr>
      <th class="blank level0" >&nbsp;</th>
      <th class="col_heading level0 col0" >price</th>
      <th class="col_heading level0 col1" >position</th>
      <th class="col_heading level0 col2" >$ holding</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th id="T_0feda_level0_row0" class="row_heading level0 row0" >1-period bond</th>
      <td id="T_0feda_row0_col0" class="data row0 col0" >\$99.1338</td>
      <td id="T_0feda_row0_col1" class="data row0 col1" >$-0.8554</td>
      <td id="T_0feda_row0_col2" class="data row0 col2" >$-84.8007</td>
    </tr>
    <tr>
      <th id="T_0feda_level0_row1" class="row_heading level0 row1" >2-period bond</th>
      <td id="T_0feda_row1_col0" class="data row1 col0" >\$97.8925</td>
      <td id="T_0feda_row1_col1" class="data row1 col1" >\$0.8700</td>
      <td id="T_0feda_row1_col2" class="data row1 col2" >\$85.1703</td>
    </tr>
    <tr>
      <th id="T_0feda_level0_row2" class="row_heading level0 row2" >net</th>
      <td id="T_0feda_row2_col0" class="data row2 col0" >$nan</td>
      <td id="T_0feda_row2_col1" class="data row2 col1" >$nan</td>
      <td id="T_0feda_row2_col2" class="data row2 col2" >\$0.3696</td>
    </tr>
  </tbody>
</table>




#### Pricing via Risk-Neutral Formula
$$p^* = \frac{A P_{0|2} - P_{1d|2}}{P_{1u|2}-P_{1d|2}}$$

where $A = e^{r_0\dt}$.


```python
dt = 0.5
# Growth rate
A = np.exp(dt * r0)
# Discount Rate
Z = np.exp(-dt*r0)
# Plug into formula for p*
pstar = (A*quotes.loc[1,'price'] - P1_2[1])/(P1_2[0]-P1_2[1])

# Setup result dataframe
rnpricing = pd.DataFrame(columns=['probability','cashflows'],index=['up','down'],dtype=float)

# Define Probability space using pstar above
rnpricing.loc['up','probability'] = pstar
rnpricing.loc['down','probability'] = 1-pstar

# Define payoffs
rnpricing['cashflows'] = fud

# Define expected payoffs
rnpricing['probability weighted cashflows'] = rnpricing['probability'] * rnpricing['cashflows']
rnpricing.loc['net','probability weighted cashflows'] = rnpricing['probability weighted cashflows'].sum()

# Discount expected payoffs to present value
rnpricing.loc['price'] = Z * rnpricing.loc['net','probability weighted cashflows']

# Show results
rnpricing.style.format({'probability':'{:.2%}', 'probability weighted cashflows':'{:.4f}','cashflows':'{:.4f}'})
```




<style type="text/css">
</style>
<table id="T_45e0c_">
  <thead>
    <tr>
      <th class="blank level0" >&nbsp;</th>
      <th class="col_heading level0 col0" >probability</th>
      <th class="col_heading level0 col1" >cashflows</th>
      <th class="col_heading level0 col2" >probability weighted cashflows</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th id="T_45e0c_level0_row0" class="row_heading level0 row0" >up</th>
      <td id="T_45e0c_row0_col0" class="data row0 col0" >64.49%</td>
      <td id="T_45e0c_row0_col1" class="data row0 col1" >0.0000</td>
      <td id="T_45e0c_row0_col2" class="data row0 col2" >0.0000</td>
    </tr>
    <tr>
      <th id="T_45e0c_level0_row1" class="row_heading level0 row1" >down</th>
      <td id="T_45e0c_row1_col0" class="data row1 col0" >35.51%</td>
      <td id="T_45e0c_row1_col1" class="data row1 col1" >1.0500</td>
      <td id="T_45e0c_row1_col2" class="data row1 col2" >0.3729</td>
    </tr>
    <tr>
      <th id="T_45e0c_level0_row2" class="row_heading level0 row2" >net</th>
      <td id="T_45e0c_row2_col0" class="data row2 col0" >nan%</td>
      <td id="T_45e0c_row2_col1" class="data row2 col1" >nan</td>
      <td id="T_45e0c_row2_col2" class="data row2 col2" >0.3729</td>
    </tr>
    <tr>
      <th id="T_45e0c_level0_row3" class="row_heading level0 row3" >price</th>
      <td id="T_45e0c_row3_col0" class="data row3 col0" >36.97%</td>
      <td id="T_45e0c_row3_col1" class="data row3 col1" >0.3697</td>
      <td id="T_45e0c_row3_col2" class="data row3 col2" >0.3697</td>
    </tr>
  </tbody>
</table>




# Multiperiod Trees
<img src="../refs/options/tree_multiperiod/two_period_form.png" width="700" />

#### Boundary (Terminal) Conditions

The contract determines the payoff at expiration as a known function of the underlying.
* This gives us the option value at the final nodes.

#### Moving Backward
From there, go backward in time one node.
* We have two separate, one-period trees.
* The key is to assume you start and the end of the tree and work backwards (right to left)

#### Iterate
* Continue at each state of $T-i\dt$.
* Move back a time step, $\dt$, and continue.

#### Choosing a time-grid
The time-grid must be chosen fine enough to get convergence.
* Common to see $\dt$ chosen such that there are around 30 steps for a vanilla American option.
* Exotic options (barrier, knock-in, etc) may need many more steps.

If the time grid is chosen too coarsely, the solution will not converge to a reasonable solution.
* Furthermore, there may be issues of negative risk-neutral probabilities.
* If the variance in any given step is too large, the probabilities become extreme to try to match it.
* Small time-steps keep this from happening.

#### Specific underlying values
In the tree, we do not get to set the exact price values.
* We have been setting $u$ and $d$ to match volatility.
* For some options, specific underlying values are of importance.



### Example
#### Inputs


```python
## Market variables
r = .05
sigma = .25
So = 50

## Contract Details
T = 2
K = 55

# Define the payoff function
funPayoff = lambda x: np.maximum(K-x,0)

# Number of time steps
Nt = 2

# Time in between steps
dt = T/Nt
```

#### Underlying Tree Set-Up
The function used below does the following:
1. Defines the up/down steps using the inputted sigma (or can input as parameter)
2. Creates the tree grid based on the contract T and Nt parameters
3. Calculates the tree values at each step similar to how the plot above represents it (e.g., $S_{0}d^{2}$ for 2 down steps)


```python
tree, treeinfo = treeUnder(So,T,Nt,sigma=sigma)

tree.style.format('{:.2f}')
```




<style type="text/css">
</style>
<table id="T_8c5ba_">
  <thead>
    <tr>
      <th class="blank level0" >&nbsp;</th>
      <th class="col_heading level0 col0" >0</th>
      <th class="col_heading level0 col1" >1</th>
      <th class="col_heading level0 col2" >2</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th id="T_8c5ba_level0_row0" class="row_heading level0 row0" >0</th>
      <td id="T_8c5ba_row0_col0" class="data row0 col0" >50.00</td>
      <td id="T_8c5ba_row0_col1" class="data row0 col1" >64.20</td>
      <td id="T_8c5ba_row0_col2" class="data row0 col2" >82.44</td>
    </tr>
    <tr>
      <th id="T_8c5ba_level0_row1" class="row_heading level0 row1" >1</th>
      <td id="T_8c5ba_row1_col0" class="data row1 col0" >nan</td>
      <td id="T_8c5ba_row1_col1" class="data row1 col1" >38.94</td>
      <td id="T_8c5ba_row1_col2" class="data row1 col2" >50.00</td>
    </tr>
    <tr>
      <th id="T_8c5ba_level0_row2" class="row_heading level0 row2" >2</th>
      <td id="T_8c5ba_row2_col0" class="data row2 col0" >nan</td>
      <td id="T_8c5ba_row2_col1" class="data row2 col1" >nan</td>
      <td id="T_8c5ba_row2_col2" class="data row2 col2" >30.33</td>
    </tr>
  </tbody>
</table>





```python
treeinfo
```




    u     1.284025
    d     0.778801
    Nt    2.000000
    dt    1.000000
    dtype: float64



#### Tree Rates


```python
# Set-up array for the rates at each interval. Assuming constant interest rates below
rates = r * np.ones(Nt)

# Calculate discount factor and growth rate
Z = np.exp(-rates*dt)
A = np.exp(rates * dt)

# Solve for P* using formulas from earlier
pstar = (A - treeinfo.d)/(treeinfo.u-treeinfo.d)

print(f'Risk-neutral probability: {pstar[0]:.2%}')
```

    Risk-neutral probability: 53.93%


#### European Option Solution


```python
treeV = treeAsset(funPayoff,tree,treeinfo,Z=Z,pstar=pstar)
treeV.style.format('{:.2f}')
```




<style type="text/css">
</style>
<table id="T_d4258_">
  <thead>
    <tr>
      <th class="blank level0" >&nbsp;</th>
      <th class="col_heading level0 col0" >0</th>
      <th class="col_heading level0 col1" >1</th>
      <th class="col_heading level0 col2" >2</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th id="T_d4258_level0_row0" class="row_heading level0 row0" >0</th>
      <td id="T_d4258_row0_col0" class="data row0 col0" >6.99</td>
      <td id="T_d4258_row0_col1" class="data row0 col1" >2.19</td>
      <td id="T_d4258_row0_col2" class="data row0 col2" >0.00</td>
    </tr>
    <tr>
      <th id="T_d4258_level0_row1" class="row_heading level0 row1" >1</th>
      <td id="T_d4258_row1_col0" class="data row1 col0" >nan</td>
      <td id="T_d4258_row1_col1" class="data row1 col1" >13.38</td>
      <td id="T_d4258_row1_col2" class="data row1 col2" >5.00</td>
    </tr>
    <tr>
      <th id="T_d4258_level0_row2" class="row_heading level0 row2" >2</th>
      <td id="T_d4258_row2_col0" class="data row2 col0" >nan</td>
      <td id="T_d4258_row2_col1" class="data row2 col1" >nan</td>
      <td id="T_d4258_row2_col2" class="data row2 col2" >24.67</td>
    </tr>
  </tbody>
</table>




#### American Option Solution


```python
STYLE = 'american'
treeVamer, treeExer = treeAsset(funPayoff,tree,treeinfo,Z=Z,pstar=pstar,style='american')
treeVamer.style.format('{:.2f}')
```




<style type="text/css">
</style>
<table id="T_208e3_">
  <thead>
    <tr>
      <th class="blank level0" >&nbsp;</th>
      <th class="col_heading level0 col0" >0</th>
      <th class="col_heading level0 col1" >1</th>
      <th class="col_heading level0 col2" >2</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th id="T_208e3_level0_row0" class="row_heading level0 row0" >0</th>
      <td id="T_208e3_row0_col0" class="data row0 col0" >8.16</td>
      <td id="T_208e3_row0_col1" class="data row0 col1" >2.19</td>
      <td id="T_208e3_row0_col2" class="data row0 col2" >0.00</td>
    </tr>
    <tr>
      <th id="T_208e3_level0_row1" class="row_heading level0 row1" >1</th>
      <td id="T_208e3_row1_col0" class="data row1 col0" >nan</td>
      <td id="T_208e3_row1_col1" class="data row1 col1" >16.06</td>
      <td id="T_208e3_row1_col2" class="data row1 col2" >5.00</td>
    </tr>
    <tr>
      <th id="T_208e3_level0_row2" class="row_heading level0 row2" >2</th>
      <td id="T_208e3_row2_col0" class="data row2 col0" >nan</td>
      <td id="T_208e3_row2_col1" class="data row2 col1" >nan</td>
      <td id="T_208e3_row2_col2" class="data row2 col2" >24.67</td>
    </tr>
  </tbody>
</table>




#### Black-Scholes Solution


```python
f0BS = bs_price(under=So,strike=K,T=T,rf=r,vol=sigma,option='put')
f0BS
```




    6.883035701125603



#### Comparison


```python
pd.DataFrame([f0BS,treeV.iloc[0,0],treeVamer.iloc[0,0]],
             columns=['value'],
             index=['BS value','tree value','American']).style.format('{:.4f}')
```




<style type="text/css">
</style>
<table id="T_46eb9_">
  <thead>
    <tr>
      <th class="blank level0" >&nbsp;</th>
      <th class="col_heading level0 col0" >value</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th id="T_46eb9_level0_row0" class="row_heading level0 row0" >BS value</th>
      <td id="T_46eb9_row0_col0" class="data row0 col0" >6.8830</td>
    </tr>
    <tr>
      <th id="T_46eb9_level0_row1" class="row_heading level0 row1" >tree value</th>
      <td id="T_46eb9_row1_col0" class="data row1 col0" >6.9865</td>
    </tr>
    <tr>
      <th id="T_46eb9_level0_row2" class="row_heading level0 row2" >American</th>
      <td id="T_46eb9_row2_col0" class="data row2 col0" >8.1620</td>
    </tr>
  </tbody>
</table>




# Classic Black Scholes Model for Inspiration

### Concerns and Why We Need Something Else

**Problems**: 
- No dividends, 
- only European calls/puts, 
- Requires that the underlying has a geometric brownian motion (GBM). Treasuries are no GBM; they cant go negative, theres influence from the Fed so its not completely random. etc

**Assumptions Required**:
- frictionless markets, 
- volatility of the underlying is constant
- constant interest rate
- constant volatility

# Black's Model (76)

### Formula & Assumptions

The model assumes 
* a lognormal distribution of future (forward) prices
* constant interest rates

It can be derived from the martingale equation
$$\frac{f(F,t)}{B(t)} = \Ern\left[\frac{f(F,T)}{B(T)}\right]$$


$\begin{align}
c_t\; =&\; e^{-r(T-t)}\left[F_t\mathcal{N}(\nargcond) - \strike \mathcal{N}\left(\nargexer\right)\right]\\
p_t\; =&\; e^{-r(T-t)}\left[\strike\mathcal{N}(-\nargexer) - F_t \mathcal{N}\left(-\nargcond\right)\right]
\end{align}$

where $\nargcond$ and $\nargexer$ are

$\begin{align}
\nargcond = \frac{\ln\left(\frac{F_t}{\strike}\right) + \frac{\sigma^2}{2}T}{\sigma\sqrt{T}} \hspace{1cm} 
\nargexer = \nargcond -\sigma\sqrt{T}
\end{align}$

**Whats the difference from the classical model?** <br>
- The forward/future prices that we are using is being discounted back to present value whereas the stock didnt need to be
- Futures and forwards do not pay dividends which helps when using this formula

### Takeaways

* It assumes constant interest rates.
* Clearly this would be an absurd assumption for interest-rate derivatives!
* Logical next step from the classical model is to use the present value of forward prices or futures prices in replace of a spot price
* No need to model dividends! They are already priced into the forward / future. Thus, the forward/future price still obeys our model above.
* Can handle situations where the security does not have a total return process that is a GBM (e.g., currency options). 
* Can handle situations where the security has storage costs, convenience yields, carry, etc because that is baked into the futures price already

# General Black's Model

### Forward Measure & Formula

Since the time varying interest rate is correlated with the present value discounting of the future/forward prices, the expectation of the product is not as simple as the product of the expectation. Therefore, we need to introduce a ***forward measure*** and change the numeraire. 

#### We choose the zero-coupon bond as the numeraire

Thus, we rebase by $Z(t,T)$.

Under the **forward measure**, any derivative of a forward is a martingale:
$$\frac{f(F,t)}{Z(t,T)} = \Efwd\left[\frac{f(F,T)}{Z(T,T)}\right]$$

where $F$ denotes the forward of an arbitrary asset.

That is, we have the price as 
$$f(F,t) = Z(t,T)\Efwd\left[f(F,T)\right]$$

Thus, we can discount just with today's discount factor rather than the stochastic interest rate.

#### Formula
$\begin{align}
c_t\; =&\; Z(t,T)\left[F_t\mathcal{N}(\nargcond) - \strike \mathcal{N}\left(\nargexer\right)\right]\\
p_t\; =&\; Z(t,T)\left[\strike\mathcal{N}(-\nargexer) - F_t \mathcal{N}\left(-\nargcond\right)\right]
\end{align}$

where $\nargcond$ and $\nargexer$ are

$\begin{align}
\nargcond = \frac{\ln\left(\frac{F_t}{\strike}\right) + \frac{\sigma^2}{2}T}{\sigma\sqrt{T}} \hspace{1cm} 
\nargexer = \nargcond -\sigma\sqrt{T}
\end{align}$

### Takeaways

- The derivative price scaled by the discount factor is equal to the expectation of the payoff also scaled by the discount factor
- Use treasury bonds as the numeraire instead of the bank account
- Discount by the spot discount factor instead of discounting by a constant interest rate
- This equation will price caps, floors, and swaptions
- They will be priced at a volatility measure, sigma instead of dollars

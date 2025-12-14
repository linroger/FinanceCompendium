---
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Homework 1
---

# Homework 1

## FINM 37500: Fixed Income Derivatives

### Mark Hendricks

#### Winter 2024

# Context

For use in these problems, consider the data below, discussed in Veronesi's *Fixed Income Securities* Chapters 9, 10.

* interest-rate tree
* current term structure

```python
import numpy as np
import pandas as pd
```

```python
rate_tree = pd.DataFrame({'0':[.0174,np.nan],'0.5':[.0339,.0095]})
rate_tree.columns.name = 'time $t$'
rate_tree.index.name = 'node'
rate_tree.style.format('{:.2%}',na_rep='')
```

<style type="text/css">
</style>
<table id="T_aa9e7">
  <thead>
	<tr>
	  <th class="index_name level0" >time $t$</th>
	  <th id="T_aa9e7_level0_col0" class="col_heading level0 col0" >0</th>
	  <th id="T_aa9e7_level0_col1" class="col_heading level0 col1" >0.5</th>
	</tr>
	<tr>
	  <th class="index_name level0" >node</th>
	  <th class="blank col0" >&nbsp;</th>
	  <th class="blank col1" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_aa9e7_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_aa9e7_row0_col0" class="data row0 col0" >1.74%</td>
	  <td id="T_aa9e7_row0_col1" class="data row0 col1" >3.39%</td>
	</tr>
	<tr>
	  <th id="T_aa9e7_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_aa9e7_row1_col0" class="data row1 col0" ></td>
	  <td id="T_aa9e7_row1_col1" class="data row1 col1" >0.95%</td>
	</tr>
  </tbody>
</table>

The "tree" is displayed as a pandas dataframe, so it does not list "up" and "down" for the rows but rather an index of nodes. The meaning should be clear.

```python
term_struct = pd.DataFrame({'maturity':[.5,1,1.5],'price':[99.1338,97.8925,96.1462]})
term_struct['continuous ytm'] = -np.log(term_struct['price']/100) / term_struct['maturity']
term_struct.set_index('maturity',inplace=True)
term_struct.style.format({'price':'{:.4f}','continuous ytm':'{:.2%}'}).format_index('{:.1f}')
```

<style type="text/css">
</style>
<table id="T_7d414">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th id="T_7d414_level0_col0" class="col_heading level0 col0" >price</th>
	  <th id="T_7d414_level0_col1" class="col_heading level0 col1" >continuous ytm</th>
	</tr>
	<tr>
	  <th class="index_name level0" >maturity</th>
	  <th class="blank col0" >&nbsp;</th>
	  <th class="blank col1" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_7d414_level0_row0" class="row_heading level0 row0" >0.5</th>
	  <td id="T_7d414_row0_col0" class="data row0 col0" >99.1338</td>
	  <td id="T_7d414_row0_col1" class="data row0 col1" >1.74%</td>
	</tr>
	<tr>
	  <th id="T_7d414_level0_row1" class="row_heading level0 row1" >1.0</th>
	  <td id="T_7d414_row1_col0" class="data row1 col0" >97.8925</td>
	  <td id="T_7d414_row1_col1" class="data row1 col1" >2.13%</td>
	</tr>
	<tr>
	  <th id="T_7d414_level0_row2" class="row_heading level0 row2" >1.5</th>
	  <td id="T_7d414_row2_col0" class="data row2 col0" >96.1462</td>
	  <td id="T_7d414_row2_col1" class="data row2 col1" >2.62%</td>
	</tr>
  </tbody>
</table>

This is the current term-structure observed at $t=0$.

# 1. Pricing a Swap

## 1.1 

Calculate the tree of bond prices for the 2-period, $T=1$, bond.

## 1.2 

What is the risk-neutral probability of an upward movement of interest rates at $t=.5$?

# The option contract

Consider a single-period swap that pays at time period 1 ($t=0.5$), the expiration payoff (and thus terminal value) is

* Payoff = $\frac{100}{2}(r_1 −c)$
* with $c=2\%$
* payments are semiannual

Take the viewpoint of a fixed-rate payer, floating rate receiver.

## 1.3 

What is the replicating trade using the two bonds (period 1 and period 2)?

## 1.4 

What is the price of the swap?

# 2. Using the Swap as the Underlying

As in the note, W.1, consider pricing the following interest-rate option,

* Payoff is $100\max(r_K-r_1,0)$
* strike is $r_K$ is 2\%
* expires at period 1, ($t=0.5$) 

Unlike the note, price it with the swap used as the underlying, not the two-period ($t=1$) bond. You will once again use the period-1 ($t=0.5$) bond as the cash account for the no-arbitrage pricing.

So instead of replicating the option with the two treasuries, now you're replicating/pricing it with a one-period bond and two-period swap.

## 2.1

Display the tree of swap prices.

## 2.2

What is the risk-neutral probability of an upward movement at $t=.5$ implied by the underlying swap tree? 

Is this the same as the risk-neutral probability we found when the bond was used as the underlying?

## 2.3

What is the price of the rate option? Is it the same as we calculated in the note, W.1.?

# 3. Pricing a Call on a Bond

Try using the same tree to price a call on the period-2 bond, (1-year), at period 1 (6-months).

* Payoff = $\max(P_{1|2}-K,0)$
* Strike = \$99.00

## 3.1 

What is the replicating trade using the two bonds (period 1 and period 2) as above? (That is, we are no longer using the swap as the underlying.)

## 3.2 

What is the price of the European call option? 

* expiring at $T=.5$ 
* written on the bond maturing in 2 periods, ($t=1$)

# 4 Two-Period Tree

Consider an expanded, **2 period** tree. (Two periods of uncertainty, so with the starting point, three periods total.)

```python
new_col = pd.Series([.05,.0256,.0011],name='1')
rate_tree_multi = pd.concat([rate_tree,new_col],ignore_index=True,axis=1)
rate_tree_multi.columns = pd.Series(['0','0.5','1'],name='time $t$')
rate_tree_multi.index.name = 'node'
rate_tree_multi.style.format('{:.2%}',na_rep='')
```

<style type="text/css">
</style>
<table id="T_f374c">
  <thead>
	<tr>
	  <th class="index_name level0" >time $t$</th>
	  <th id="T_f374c_level0_col0" class="col_heading level0 col0" >0</th>
	  <th id="T_f374c_level0_col1" class="col_heading level0 col1" >0.5</th>
	  <th id="T_f374c_level0_col2" class="col_heading level0 col2" >1</th>
	</tr>
	<tr>
	  <th class="index_name level0" >node</th>
	  <th class="blank col0" >&nbsp;</th>
	  <th class="blank col1" >&nbsp;</th>
	  <th class="blank col2" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_f374c_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_f374c_row0_col0" class="data row0 col0" >1.74%</td>
	  <td id="T_f374c_row0_col1" class="data row0 col1" >3.39%</td>
	  <td id="T_f374c_row0_col2" class="data row0 col2" >5.00%</td>
	</tr>
	<tr>
	  <th id="T_f374c_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_f374c_row1_col0" class="data row1 col0" ></td>
	  <td id="T_f374c_row1_col1" class="data row1 col1" >0.95%</td>
	  <td id="T_f374c_row1_col2" class="data row1 col2" >2.56%</td>
	</tr>
	<tr>
	  <th id="T_f374c_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_f374c_row2_col0" class="data row2 col0" ></td>
	  <td id="T_f374c_row2_col1" class="data row2 col1" ></td>
	  <td id="T_f374c_row2_col2" class="data row2 col2" >0.11%</td>
	</tr>
  </tbody>
</table>

## 4.1

Calculate and show the tree of prices for the 3-period bond, $T=1.5$.

## 4.2

Report the risk-neutral probability of an up movement at $t=1$.

(The risk-neutral probability of an up movement at $t=0.5$ continues to be as you calculated in 2.3.

## 4.3

Calculate the price of the European **call** option?

* expiring at $T=1$ 
* written on the bond maturing in 3 periods, ($t=1.5$)
* strike is 99

## 4.4

Consider a finer time grid. Let $dt$ in the tree now be 1/30 instead of 0.5.

Using this smaller time step, compute the $t=0$ price of the following option:

* option expires at $T_{\text{opt}}=1$
* written on bond maturing at $T_{\text{bond}}=1.5$

# 5 American Style
## 5.1

Use the two-period tree from part 4, but this time to price an American-style **put** option.

Use a grid of $dt=.5$.

* What is its value at $t=0$?
* Which nodes would you exercise it early?

## 5.2

Change the grid to $dt=1/30$, as in 4.4. 

* What is its value at $t=0$?
* Make a visualization showing which nodes have early exercise. (I suggest using a dataframe and the `heatmap` from `seaborn`.

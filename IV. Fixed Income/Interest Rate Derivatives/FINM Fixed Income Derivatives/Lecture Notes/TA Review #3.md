---
aliases: [Swaptions]
tags:
key_concepts:
parent_directory: FINM Fixed Income Derivatives/Lecture Notes
cssclasses: academia
title: "TA Review #3: Swaptions"
---

# TA Review 3
*2/27/2024*

## FINM 37500 - 2024

### UChicago Financial Mathematics

* Jordan Sacks
* jordansacks@uchicago.edu

### Agenda
**Homework 2 Topics**
- Caps/Floors: Definitions, Uses, Notes
- Calculating Forward Volatilities from Flat Volatilites
- Calibrating the BDT Model
- Using the BDT Model to Price a Callable Bond
 <br>

### Libraries

```python
import numpy as np
import pandas as pd

import sys
sys.path.insert(0, '../cmds')
from ficcvol import *
from binomial import *
from ratecurves import *
from bondmath import bootstrap_discounts_clean
```

# Caps & Floors

## What are they?

A ***cap*** creates a ceiling on a floating interest rate. If the market rates move above the cap rate, the buyer will receive the difference between the strike rate of the cap and the underlying index rate, acrrued over the corresponding period

- This option can only be exercised on specific settlement dates agreed between the buyer and the seller.
- A cap is actually a portfolio of **caplets**; a collection of sequentially maturing options with the same strike

A ***floor*** is the opposite of a cap. If market rates move below the floor rate, the buyer receives the difference between the floors strike and the underlying rate. 

- For example, Treasurers and Asset Managers can buy floors as a way of locking in a minimum rate of return on floating rate assets. 
- A floor is actually a portfolio of **floorlets**; a collection of sequentially maturing options with the same strike

## Uses
- **Hedging of Options Embedded in Assets/Liabilities**: It is common for insurance companies and pension funds to use caps/floors to hedge the risk arising from guaranteed payoff annuity products
- **Hedging Floating Rate Assets/Liabilities**: Debt managers can buy floors to protect against potential losses on outstanding fixed-rate debt when rates fall
- **Create Synthetic Positions**: Using caps and floors alone or in combination with other derivatives, investors can achieve a wide variety of payoff profiles
- **Enhance Returns**: Hedge funds frequently use caps/floors to express views on the level of interest rates at different points in time. By purchasing options, they have a limited downside (the paid premium) but a virtually unlimited upside. Also, sometimes funds sell caps/floors to enhance returns

## Market Quoting
- The market, generally, quotes caps/floors in terms of volatility. 
- The market convention is to quote using Black's formula (log-normal), however in recent times with the possibility of negative rates, markets have also started quoting volatility using the normal model (such as Bachelier)

## Important Notes
- Payoffs of the caps/floors is based on the interest rate observed the period before (i.e., payment in arrears). This impacts the design of the underlying rate tree and the payoffs determined from it. Specifically, the 1st node of our tree at T=1 is 0 because at initiation (T=0), we know the spot rate and thus the option is useless. 

## Process for Pricing 

Below we will go through these steps in more detail. I will assume we are working with caps but the process is the same for floors:

1. Download (or identify) feed of cap prices (note these prices are in terms of **flat volatility**). Data should consist of prices across tenors at the same strike (At-the-Money (ATM) quotes are the most liquid source of this info)
2. Strip the forward volatility from the quoted flat volatility.
3. Create a binomial tree representing the underlying rate
4. Use the tree to calculate the discounted payoffs at the different time steps and interest rate nodes
5. The first node is equal to the price

## 1. Get Data

Let's use the data from homework 2. Note that Mark already preprocessed the quotes into the cap_curves file but lets back-up a step and review what he did.

The file `data/cap_quotes_2024-02-16.xlsx` has market data on the following curves:

* swap rates (SOFR). Need this to build out discount curves and forward curves
* cap quotes. Need this to strip the flat volatilities and build forward volatilities

The file `data/cap_curves_2024-02-16.xlsx` is based on the data prep done on the quote file above. 

* swap rates (SOFR)
* discount factors
* forward rates 
* flat volatilites

A few details

* the swap and forward rates are quarterly compounded.
* the flat volatilites are (Black) quotes on caps containing caplets ranging from expiration of $\tau=.5$ to $\tau=T$.

### Start with Downloading SOFR Market Rates from Bloomberg (data provided by Mark)

```python
### File Params
DATE = '2024-02-16'
FILEDATE = '2024-02-16'
FILEIN = f'../data/cap_quotes_{FILEDATE}'
BB_COMPOUND = 1 #compounding of quoted SOFR swaps
freqcap = 4
# can adjust frequency for binomial tree later, but keep quarterly to properly get caps

### SOFR Quotes
SHEET = 'sofr'
sofrdata_raw = pd.read_excel(f'{FILEIN}.xlsx', sheet_name=SHEET).set_index('date')
sofrdata_raw.columns = sofrdata_raw.loc['maturity'] 
sofrdata_raw.drop(index=['maturity'],inplace=True)
sofrdata_raw.index = pd.to_datetime(sofrdata_raw.index)

sofrdata_raw.columns.name ='maturity'
sofrdata_raw /= 100 # Convert from percentage to decimal

# Remove redudant columns from Bloomberg
sofrdata_raw = sofrdata_raw.T.drop_duplicates().T
```

```python
sofrdata_raw.head()
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
	  <th>maturity</th>
	  <th>0.246407</th>
	  <th>0.498289</th>
	  <th>0.750171</th>
	  <th>1.002053</th>
	  <th>1.245722</th>
	  <th>1.497604</th>
	  <th>1.749487</th>
	  <th>2.001369</th>
	  <th>2.245038</th>
	  <th>2.496920</th>
	  <th>…</th>
	  <th>3.000684</th>
	  <th>3.496235</th>
	  <th>4.000000</th>
	  <th>4.498289</th>
	  <th>5.002053</th>
	  <th>6.001369</th>
	  <th>7.000684</th>
	  <th>8.000000</th>
	  <th>9.002053</th>
	  <th>10.001369</th>
	</tr>
	<tr>
	  <th>date</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2022-01-03</th>
	  <td>0.000907</td>
	  <td>0.002000</td>
	  <td>0.003067</td>
	  <td>0.004060</td>
	  <td>0.004970</td>
	  <td>0.005920</td>
	  <td>0.006795</td>
	  <td>0.007629</td>
	  <td>0.008325</td>
	  <td>0.008910</td>
	  <td>…</td>
	  <td>0.009914</td>
	  <td>0.010610</td>
	  <td>0.011171</td>
	  <td>0.011550</td>
	  <td>0.012022</td>
	  <td>0.012636</td>
	  <td>0.013149</td>
	  <td>0.013568</td>
	  <td>0.013909</td>
	  <td>0.014237</td>
	</tr>
	<tr>
	  <th>2022-01-04</th>
	  <td>0.000908</td>
	  <td>0.001974</td>
	  <td>0.002981</td>
	  <td>0.003949</td>
	  <td>0.004875</td>
	  <td>0.005807</td>
	  <td>0.006670</td>
	  <td>0.007515</td>
	  <td>0.008215</td>
	  <td>0.008820</td>
	  <td>…</td>
	  <td>0.009822</td>
	  <td>0.010515</td>
	  <td>0.011107</td>
	  <td>0.011560</td>
	  <td>0.011996</td>
	  <td>0.012663</td>
	  <td>0.013227</td>
	  <td>0.013668</td>
	  <td>0.014028</td>
	  <td>0.014370</td>
	</tr>
	<tr>
	  <th>2022-01-05</th>
	  <td>0.000982</td>
	  <td>0.002180</td>
	  <td>0.003313</td>
	  <td>0.004400</td>
	  <td>0.005390</td>
	  <td>0.006395</td>
	  <td>0.007355</td>
	  <td>0.008203</td>
	  <td>0.008930</td>
	  <td>0.009525</td>
	  <td>…</td>
	  <td>0.010561</td>
	  <td>0.011245</td>
	  <td>0.011849</td>
	  <td>0.012295</td>
	  <td>0.012746</td>
	  <td>0.013410</td>
	  <td>0.013943</td>
	  <td>0.014348</td>
	  <td>0.014678</td>
	  <td>0.014994</td>
	</tr>
	<tr>
	  <th>2022-01-06</th>
	  <td>0.001117</td>
	  <td>0.002390</td>
	  <td>0.003569</td>
	  <td>0.004630</td>
	  <td>0.005655</td>
	  <td>0.006670</td>
	  <td>0.007650</td>
	  <td>0.008530</td>
	  <td>0.009270</td>
	  <td>0.009930</td>
	  <td>…</td>
	  <td>0.010961</td>
	  <td>0.011705</td>
	  <td>0.012288</td>
	  <td>0.012745</td>
	  <td>0.013161</td>
	  <td>0.013794</td>
	  <td>0.014286</td>
	  <td>0.014654</td>
	  <td>0.014946</td>
	  <td>0.015240</td>
	</tr>
	<tr>
	  <th>2022-01-07</th>
	  <td>0.001143</td>
	  <td>0.002373</td>
	  <td>0.003505</td>
	  <td>0.004584</td>
	  <td>0.005625</td>
	  <td>0.006660</td>
	  <td>0.007665</td>
	  <td>0.008598</td>
	  <td>0.009365</td>
	  <td>0.010090</td>
	  <td>…</td>
	  <td>0.011206</td>
	  <td>0.011925</td>
	  <td>0.012571</td>
	  <td>0.013020</td>
	  <td>0.013440</td>
	  <td>0.014133</td>
	  <td>0.014665</td>
	  <td>0.015058</td>
	  <td>0.015354</td>
	  <td>0.015647</td>
	</tr>
  </tbody>
</table>
<p>5 rows × 21 columns</p>
</div>

### Compounding

Bloomberg is quoting the swap rates per the swap frequency.

SOFR swaps are listed as annual frequency.

For convenience of our `freqcap` grid, convert this compounding.

```python
sofrdata = sofrdata_raw.copy()
sofrdata = compound_rate(sofrdata,BB_COMPOUND,freqcap)
sofrdata.tail().style.format('{:.2%}')
```

<style type="text/css">
</style>
<table id="T_a96e5_">
  <thead>
	<tr>
	  <th class="index_name level0" >maturity</th>
	  <th class="col_heading level0 col0" >0.2464065708418891</th>
	  <th class="col_heading level0 col1" >0.4982888432580425</th>
	  <th class="col_heading level0 col2" >0.7501711156741958</th>
	  <th class="col_heading level0 col3" >1.002053388090349</th>
	  <th class="col_heading level0 col4" >1.245722108145106</th>
	  <th class="col_heading level0 col5" >1.497604380561259</th>
	  <th class="col_heading level0 col6" >1.749486652977413</th>
	  <th class="col_heading level0 col7" >2.001368925393566</th>
	  <th class="col_heading level0 col8" >2.245037645448323</th>
	  <th class="col_heading level0 col9" >2.496919917864477</th>
	  <th class="col_heading level0 col10" >2.74880219028063</th>
	  <th class="col_heading level0 col11" >3.000684462696783</th>
	  <th class="col_heading level0 col12" >3.496235455167693</th>
	  <th class="col_heading level0 col13" >4.0</th>
	  <th class="col_heading level0 col14" >4.498288843258043</th>
	  <th class="col_heading level0 col15" >5.002053388090349</th>
	  <th class="col_heading level0 col16" >6.001368925393566</th>
	  <th class="col_heading level0 col17" >7.000684462696783</th>
	  <th class="col_heading level0 col18" >8.0</th>
	  <th class="col_heading level0 col19" >9.00205338809035</th>
	  <th class="col_heading level0 col20" >10.00136892539357</th>
	</tr>
	<tr>
	  <th class="index_name level0" >date</th>
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
	  <th class="blank col13" >&nbsp;</th>
	  <th class="blank col14" >&nbsp;</th>
	  <th class="blank col15" >&nbsp;</th>
	  <th class="blank col16" >&nbsp;</th>
	  <th class="blank col17" >&nbsp;</th>
	  <th class="blank col18" >&nbsp;</th>
	  <th class="blank col19" >&nbsp;</th>
	  <th class="blank col20" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_a96e5_level0_row0" class="row_heading level0 row0" >2024-02-12 00:00:00</th>
	  <td id="T_a96e5_row0_col0" class="data row0 col0" >5.21%</td>
	  <td id="T_a96e5_row0_col1" class="data row0 col1" >5.10%</td>
	  <td id="T_a96e5_row0_col2" class="data row0 col2" >4.97%</td>
	  <td id="T_a96e5_row0_col3" class="data row0 col3" >4.82%</td>
	  <td id="T_a96e5_row0_col4" class="data row0 col4" >4.64%</td>
	  <td id="T_a96e5_row0_col5" class="data row0 col5" >4.49%</td>
	  <td id="T_a96e5_row0_col6" class="data row0 col6" >4.37%</td>
	  <td id="T_a96e5_row0_col7" class="data row0 col7" >4.27%</td>
	  <td id="T_a96e5_row0_col8" class="data row0 col8" >4.18%</td>
	  <td id="T_a96e5_row0_col9" class="data row0 col9" >4.11%</td>
	  <td id="T_a96e5_row0_col10" class="data row0 col10" >4.05%</td>
	  <td id="T_a96e5_row0_col11" class="data row0 col11" >4.01%</td>
	  <td id="T_a96e5_row0_col12" class="data row0 col12" >3.93%</td>
	  <td id="T_a96e5_row0_col13" class="data row0 col13" >3.89%</td>
	  <td id="T_a96e5_row0_col14" class="data row0 col14" >3.84%</td>
	  <td id="T_a96e5_row0_col15" class="data row0 col15" >3.82%</td>
	  <td id="T_a96e5_row0_col16" class="data row0 col16" >3.79%</td>
	  <td id="T_a96e5_row0_col17" class="data row0 col17" >3.77%</td>
	  <td id="T_a96e5_row0_col18" class="data row0 col18" >3.76%</td>
	  <td id="T_a96e5_row0_col19" class="data row0 col19" >3.76%</td>
	  <td id="T_a96e5_row0_col20" class="data row0 col20" >3.76%</td>
	</tr>
	<tr>
	  <th id="T_a96e5_level0_row1" class="row_heading level0 row1" >2024-02-13 00:00:00</th>
	  <td id="T_a96e5_row1_col0" class="data row1 col0" >5.23%</td>
	  <td id="T_a96e5_row1_col1" class="data row1 col1" >5.17%</td>
	  <td id="T_a96e5_row1_col2" class="data row1 col2" >5.08%</td>
	  <td id="T_a96e5_row1_col3" class="data row1 col3" >4.96%</td>
	  <td id="T_a96e5_row1_col4" class="data row1 col4" >4.81%</td>
	  <td id="T_a96e5_row1_col5" class="data row1 col5" >4.67%</td>
	  <td id="T_a96e5_row1_col6" class="data row1 col6" >4.55%</td>
	  <td id="T_a96e5_row1_col7" class="data row1 col7" >4.47%</td>
	  <td id="T_a96e5_row1_col8" class="data row1 col8" >4.38%</td>
	  <td id="T_a96e5_row1_col9" class="data row1 col9" >4.31%</td>
	  <td id="T_a96e5_row1_col10" class="data row1 col10" >4.25%</td>
	  <td id="T_a96e5_row1_col11" class="data row1 col11" >4.21%</td>
	  <td id="T_a96e5_row1_col12" class="data row1 col12" >4.13%</td>
	  <td id="T_a96e5_row1_col13" class="data row1 col13" >4.08%</td>
	  <td id="T_a96e5_row1_col14" class="data row1 col14" >4.03%</td>
	  <td id="T_a96e5_row1_col15" class="data row1 col15" >4.00%</td>
	  <td id="T_a96e5_row1_col16" class="data row1 col16" >3.96%</td>
	  <td id="T_a96e5_row1_col17" class="data row1 col17" >3.93%</td>
	  <td id="T_a96e5_row1_col18" class="data row1 col18" >3.91%</td>
	  <td id="T_a96e5_row1_col19" class="data row1 col19" >3.90%</td>
	  <td id="T_a96e5_row1_col20" class="data row1 col20" >3.90%</td>
	</tr>
	<tr>
	  <th id="T_a96e5_level0_row2" class="row_heading level0 row2" >2024-02-14 00:00:00</th>
	  <td id="T_a96e5_row2_col0" class="data row2 col0" >5.22%</td>
	  <td id="T_a96e5_row2_col1" class="data row2 col1" >5.15%</td>
	  <td id="T_a96e5_row2_col2" class="data row2 col2" >5.04%</td>
	  <td id="T_a96e5_row2_col3" class="data row2 col3" >4.91%</td>
	  <td id="T_a96e5_row2_col4" class="data row2 col4" >4.75%</td>
	  <td id="T_a96e5_row2_col5" class="data row2 col5" >4.60%</td>
	  <td id="T_a96e5_row2_col6" class="data row2 col6" >4.49%</td>
	  <td id="T_a96e5_row2_col7" class="data row2 col7" >4.40%</td>
	  <td id="T_a96e5_row2_col8" class="data row2 col8" >4.30%</td>
	  <td id="T_a96e5_row2_col9" class="data row2 col9" >4.23%</td>
	  <td id="T_a96e5_row2_col10" class="data row2 col10" >4.18%</td>
	  <td id="T_a96e5_row2_col11" class="data row2 col11" >4.14%</td>
	  <td id="T_a96e5_row2_col12" class="data row2 col12" >4.06%</td>
	  <td id="T_a96e5_row2_col13" class="data row2 col13" >4.01%</td>
	  <td id="T_a96e5_row2_col14" class="data row2 col14" >3.96%</td>
	  <td id="T_a96e5_row2_col15" class="data row2 col15" >3.93%</td>
	  <td id="T_a96e5_row2_col16" class="data row2 col16" >3.89%</td>
	  <td id="T_a96e5_row2_col17" class="data row2 col17" >3.87%</td>
	  <td id="T_a96e5_row2_col18" class="data row2 col18" >3.85%</td>
	  <td id="T_a96e5_row2_col19" class="data row2 col19" >3.85%</td>
	  <td id="T_a96e5_row2_col20" class="data row2 col20" >3.84%</td>
	</tr>
	<tr>
	  <th id="T_a96e5_level0_row3" class="row_heading level0 row3" >2024-02-15 00:00:00</th>
	  <td id="T_a96e5_row3_col0" class="data row3 col0" >5.21%</td>
	  <td id="T_a96e5_row3_col1" class="data row3 col1" >5.14%</td>
	  <td id="T_a96e5_row3_col2" class="data row3 col2" >5.03%</td>
	  <td id="T_a96e5_row3_col3" class="data row3 col3" >4.91%</td>
	  <td id="T_a96e5_row3_col4" class="data row3 col4" >4.74%</td>
	  <td id="T_a96e5_row3_col5" class="data row3 col5" >4.60%</td>
	  <td id="T_a96e5_row3_col6" class="data row3 col6" >4.48%</td>
	  <td id="T_a96e5_row3_col7" class="data row3 col7" >4.38%</td>
	  <td id="T_a96e5_row3_col8" class="data row3 col8" >4.29%</td>
	  <td id="T_a96e5_row3_col9" class="data row3 col9" >4.22%</td>
	  <td id="T_a96e5_row3_col10" class="data row3 col10" >4.16%</td>
	  <td id="T_a96e5_row3_col11" class="data row3 col11" >4.12%</td>
	  <td id="T_a96e5_row3_col12" class="data row3 col12" >4.04%</td>
	  <td id="T_a96e5_row3_col13" class="data row3 col13" >3.99%</td>
	  <td id="T_a96e5_row3_col14" class="data row3 col14" >3.94%</td>
	  <td id="T_a96e5_row3_col15" class="data row3 col15" >3.91%</td>
	  <td id="T_a96e5_row3_col16" class="data row3 col16" >3.87%</td>
	  <td id="T_a96e5_row3_col17" class="data row3 col17" >3.84%</td>
	  <td id="T_a96e5_row3_col18" class="data row3 col18" >3.83%</td>
	  <td id="T_a96e5_row3_col19" class="data row3 col19" >3.82%</td>
	  <td id="T_a96e5_row3_col20" class="data row3 col20" >3.82%</td>
	</tr>
	<tr>
	  <th id="T_a96e5_level0_row4" class="row_heading level0 row4" >2024-02-16 00:00:00</th>
	  <td id="T_a96e5_row4_col0" class="data row4 col0" >5.22%</td>
	  <td id="T_a96e5_row4_col1" class="data row4 col1" >5.16%</td>
	  <td id="T_a96e5_row4_col2" class="data row4 col2" >5.06%</td>
	  <td id="T_a96e5_row4_col3" class="data row4 col3" >4.94%</td>
	  <td id="T_a96e5_row4_col4" class="data row4 col4" >4.78%</td>
	  <td id="T_a96e5_row4_col5" class="data row4 col5" >4.64%</td>
	  <td id="T_a96e5_row4_col6" class="data row4 col6" >4.53%</td>
	  <td id="T_a96e5_row4_col7" class="data row4 col7" >4.43%</td>
	  <td id="T_a96e5_row4_col8" class="data row4 col8" >4.34%</td>
	  <td id="T_a96e5_row4_col9" class="data row4 col9" >4.27%</td>
	  <td id="T_a96e5_row4_col10" class="data row4 col10" >4.22%</td>
	  <td id="T_a96e5_row4_col11" class="data row4 col11" >4.18%</td>
	  <td id="T_a96e5_row4_col12" class="data row4 col12" >4.09%</td>
	  <td id="T_a96e5_row4_col13" class="data row4 col13" >4.04%</td>
	  <td id="T_a96e5_row4_col14" class="data row4 col14" >3.99%</td>
	  <td id="T_a96e5_row4_col15" class="data row4 col15" >3.96%</td>
	  <td id="T_a96e5_row4_col16" class="data row4 col16" >3.92%</td>
	  <td id="T_a96e5_row4_col17" class="data row4 col17" >3.89%</td>
	  <td id="T_a96e5_row4_col18" class="data row4 col18" >3.87%</td>
	  <td id="T_a96e5_row4_col19" class="data row4 col19" >3.87%</td>
	  <td id="T_a96e5_row4_col20" class="data row4 col20" >3.86%</td>
	</tr>
  </tbody>
</table>

### Get Curves (Discount & Forward Curves)

Need to interpolate swap rates for quarterly frequency beyond $T=3$ (which is where Bloomberg moves from monthly to semiannual tenors.)

Many reasonable methods, try `cubicspline`.

```python
sofrcurves = interp_curves(sofrdata, dt = 1/freqcap, date=DATE, interp_method='cubicspline').rename(columns={'interp':'swap rates'})
sofrquotes = sofrdata.loc[DATE,:].rename('quotes')

### Plot the Curve
fig, ax = plt.subplots()
sofrquotes.plot.line(ax=ax, linestyle='None',marker='*')
sofrcurves['swap rates'].plot.line(ax=ax, linestyle='--',marker='')
plt.legend();
plt.title('Swap Curve');
```

![png](output%2017%200.png.md)

```python
sofrcurves['spot rates'] = bootstrap_discounts_clean(sofrcurves[['swap rates']],compounding=4,key='swap rates')
sofrcurves['discounts'] = ratecurve_to_discountcurve(sofrcurves['spot rates'],n_compound=freqcap)
sofrcurves['forwards'] = ratecurve_to_forwardcurve(sofrcurves['spot rates'],n_compound=freqcap)
sofrcurves[['spot rates','forwards']].plot(title='Forward Rates');
```

![png](output_18_0.png)

```python
sofrcurves.head()
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
	  <th>quotes</th>
	  <th>swap rates</th>
	  <th>spot rates</th>
	  <th>discounts</th>
	  <th>forwards</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0.25</th>
	  <td>NaN</td>
	  <td>0.052190</td>
	  <td>0.052190</td>
	  <td>0.987121</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>0.50</th>
	  <td>NaN</td>
	  <td>0.051563</td>
	  <td>0.051559</td>
	  <td>0.974710</td>
	  <td>0.050928</td>
	</tr>
	<tr>
	  <th>0.75</th>
	  <td>NaN</td>
	  <td>0.050579</td>
	  <td>0.050564</td>
	  <td>0.963016</td>
	  <td>0.048575</td>
	</tr>
	<tr>
	  <th>1.00</th>
	  <td>NaN</td>
	  <td>0.049411</td>
	  <td>0.049378</td>
	  <td>0.952109</td>
	  <td>0.045823</td>
	</tr>
	<tr>
	  <th>1.25</th>
	  <td>NaN</td>
	  <td>0.047764</td>
	  <td>0.047698</td>
	  <td>0.942452</td>
	  <td>0.040985</td>
	</tr>
  </tbody>
</table>
</div>

### Process the Cap quote data

```python
# Import data
SHEET = 'cap'
capdata = pd.read_excel(f'{FILEIN}.xlsx', sheet_name=SHEET).set_index('date')
capdata.columns = capdata.loc['maturity'] 
capdata.drop(index=['maturity'],inplace=True)
capdata.index = pd.to_datetime(capdata.index)

# Adjust the maturity frequency to nearest dt for better column headers as Bloomberg reports maturity as a precise decimal
capdata.columns = (freqcap * capdata.columns.values).round(0)/freqcap
capdata.columns.name ='maturity'
capdata = capdata.T.drop_duplicates().T
capdata.head()
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
	  <th>maturity</th>
	  <th>1.0</th>
	  <th>2.0</th>
	  <th>3.0</th>
	  <th>4.0</th>
	  <th>5.0</th>
	  <th>6.0</th>
	  <th>7.0</th>
	  <th>8.0</th>
	  <th>9.0</th>
	  <th>10.0</th>
	</tr>
	<tr>
	  <th>date</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2022-03-17</th>
	  <td>127.3</td>
	  <td>108.5</td>
	  <td>109.9</td>
	  <td>108.5</td>
	  <td>107.3</td>
	  <td>104.3</td>
	  <td>101.0</td>
	  <td>97.7</td>
	  <td>95.2</td>
	  <td>93.2</td>
	</tr>
	<tr>
	  <th>2022-03-18</th>
	  <td>96.2</td>
	  <td>104.9</td>
	  <td>108.0</td>
	  <td>108.5</td>
	  <td>108.0</td>
	  <td>105.0</td>
	  <td>101.8</td>
	  <td>98.3</td>
	  <td>95.4</td>
	  <td>93.4</td>
	</tr>
	<tr>
	  <th>2022-03-21</th>
	  <td>96.2</td>
	  <td>105.0</td>
	  <td>108.1</td>
	  <td>108.5</td>
	  <td>107.9</td>
	  <td>105.0</td>
	  <td>101.7</td>
	  <td>98.2</td>
	  <td>95.4</td>
	  <td>93.4</td>
	</tr>
	<tr>
	  <th>2022-03-22</th>
	  <td>75.1</td>
	  <td>108.3</td>
	  <td>115.2</td>
	  <td>115.3</td>
	  <td>113.6</td>
	  <td>109.9</td>
	  <td>106.3</td>
	  <td>102.8</td>
	  <td>99.9</td>
	  <td>97.5</td>
	</tr>
	<tr>
	  <th>2022-03-23</th>
	  <td>94.1</td>
	  <td>111.0</td>
	  <td>117.9</td>
	  <td>117.1</td>
	  <td>114.6</td>
	  <td>110.7</td>
	  <td>107.2</td>
	  <td>103.5</td>
	  <td>100.5</td>
	  <td>98.1</td>
	</tr>
  </tbody>
</table>
</div>

### Adjust to Log-Normal Vols

Cap quotes in Bloomberg are downloaded in

* normal vol

The normal vols are reported in basis points.

* divide out by $100^2$

Converting between normal and lognormal vol is given by a simple formula for ATM options, (according to SABR, etc.)

$$\sigma_B = \frac{\sigma_N}{f}$$

where $f$ is the forward rate.

```python
capquotes = capdata.loc[DATE,:].to_frame()
capquotes.columns = ['normal']
capquotes[DATE] = capquotes['normal'] / sofrcurves['forwards'] / 100**2
capquotes[DATE]
```

    maturity
    1.0     0.218665
    2.0     0.331934
    3.0     0.345800
    4.0     0.346049
    5.0     0.336056
    6.0     0.336327
    7.0     0.322801
    8.0     0.315311
    9.0     0.305981
    10.0    0.298674
    Name: 2024-02-16, dtype: float64

### Interpolate or Extrapolate

Interpolate/extrapolate just to get to quarterly frequency needed for forward vol extraction.

After extracting forward vol, can interpolate/extrapolate further for matching timegrid of binomial trees.

Need to interpolate cap rates for quarterly frequency as Bloomberg reports only at annual tenors.

Try `cubicspline`.

Also need to extrapolate the short end of the curve, $t<1$.

* This can lead to negative values w/ cubic spline and others.
* Here, ad hoc set front to `FRONT_RATIO` the first quote and linearly extrapolate

```python
LIN_EXTRAP = True
FRONT_RATIO = .65

capcurves = interp_curves(capquotes[[DATE]].T,dt=1/freqcap, date=DATE,interp_method='cubicspline').rename(columns={'interp':'flat vols'})

if LIN_EXTRAP:
    fix_short = capcurves.loc[:1,'flat vols']
    fix_short.iloc[:-1] = np.nan
    fix_short.iloc[0] = capcurves.loc[1,'flat vols'] * FRONT_RATIO
    capcurves.loc[:1,'flat vols'] = fix_short.interpolate(limit_direction='both', fill_value = 'extrapolate')

# drop extrapolated value at first period as there is no caplet for the first period.
capcurves['flat vols'].iloc[0] = np.nan

### Plot the Curve
fig, ax = plt.subplots()
capquotes[[DATE]].rename(columns={'black':'quotes'}).plot.line(ax=ax, linestyle='None',marker='*')
capcurves['flat vols'].plot.line(ax=ax, linestyle='--',marker='')
plt.legend();
plt.title('Cap Flat Curve');
```

![png](output_25_0.png)

```python
capcurves.head()
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
	  <th>quotes</th>
	  <th>flat vols</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0.25</th>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>0.50</th>
	  <td>NaN</td>
	  <td>0.167643</td>
	</tr>
	<tr>
	  <th>0.75</th>
	  <td>NaN</td>
	  <td>0.193154</td>
	</tr>
	<tr>
	  <th>1.00</th>
	  <td>0.218665</td>
	  <td>0.218665</td>
	</tr>
	<tr>
	  <th>1.25</th>
	  <td>NaN</td>
	  <td>0.262330</td>
	</tr>
  </tbody>
</table>
</div>

## 2. Strip Forward Volatility from Flat Volatility

`Flat To Forward Vol`

Inputs:

- flat volatilities at each tenor
- discount rates
- swap rates
- forward rates
- dt=.25 (default value)
- notional=100 (default value)

Outputs:

- forward volatilities at each tenor

Steps (Imagine you are working sequentially through the caplets at t=0 -> T=T):

1. Calculate the cap price using the  `Cap Vol To Price` function
		Inputs:
		- flat volatilities
		- strike, 
		- forwards, 
		- discount rates, 
		- dt=.25
		- notional=100
		Outputs:
		- cap price
		Process:
		1. For each tenor, compute the cap price using Black's Formula
		2. Plug in the discount rate and forward rate at that T=t tenor
		3. Remember that the volatility is constant at the flat volatility value
		4. Total cap price is equal to the sum of prices found above
2. Calculate the most recent caplet price by subtracting the sum of previous caplet prices found prior
3. Create a wrapper function that plugs in different levels of volatility and returns a caplet price
4. Use a solver to identify the volatility that is used to price the caplet price

Generally, we have a list of cap quotes that have sequentially increasing tenors. For each quote, there is an associated flat volatility that applies to the entire timeframe. Our goal is to identify the forward volatility in between each tenor. To do this, we need to work forwards 1 time step at a time to find a volatility that prices the caplet during the same time period

```python
# Add in the required inputs to the dataframe 
capcurves['discounts'] = sofrcurves["discounts"]
capcurves['swap rates'] = sofrcurves["swap rates"]
capcurves['forwards'] = sofrcurves["forwards"]
```

```python
capcurves = flat_to_forward_vol(capcurves)

capcurves[['flat vols','fwd vols']].plot();
```

![png](output_30_0.png)

```python
capcurves.head()
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
	  <th>flat vols</th>
	  <th>caplet prices</th>
	  <th>fwd vols</th>
	  <th>cap prices</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0.25</th>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	  <td>NaN</td>
	</tr>
	<tr>
	  <th>0.50</th>
	  <td>0.167643</td>
	  <td>0.034466</td>
	  <td>0.167643</td>
	  <td>0.034466</td>
	</tr>
	<tr>
	  <th>0.75</th>
	  <td>0.193154</td>
	  <td>0.061220</td>
	  <td>0.247237</td>
	  <td>0.095686</td>
	</tr>
	<tr>
	  <th>1.00</th>
	  <td>0.218665</td>
	  <td>0.090638</td>
	  <td>0.330350</td>
	  <td>0.186325</td>
	</tr>
	<tr>
	  <th>1.25</th>
	  <td>0.262330</td>
	  <td>0.144760</td>
	  <td>0.522971</td>
	  <td>0.331084</td>
	</tr>
  </tbody>
</table>
</div>

## 3. Create Binomial Tree Using Black-Dermon-Toy (BDT) Model

### Calibrate Theta

`Estimate Theta`

Inputs:

- forward volatilities
- discount factors
- dt=None (default value: Uses the difference between T=1 and T=0
- T=None (default value at T=T-1 which is the last value that needs to be calculated)

Outputs:

- underlying rate tree
- theta

Steps (Imagine you are working sequentially through the caplets at t=0 -> T=T):

1. Create the rate tree template based on dt and T using the  `construct_rate_tree` function

For each time step in the tree:

2. If its the first time step then initialize the first node by converting the discount factor at T=0 into a rate
3. Use a wrapper function that plugs in different values of theta into `incremental_BDT_pricing` function
4. Use the wrapper function to identify the theta that returns a model price (discount factor) less the quoted price (current discount factor) of 0
5. Increment the tree using the newfound theta

`incremental_BDT_pricing` inputs:

- rate tree
- theta
- sigma
- dt = None

`incremental_BDT_pricing` process:

- Create a lambda function that uses the `payoff_bond` function. This function returns the discount factor associated with the bond and time to maturity (payoff assumes zero-coupon bond)
- Increment the size of the tree by 1 time step using the `incrementBDTtree` function which adds 2 additional nodes using the BDT formula below:
$$
\begin{align*}
z_{s,t+1} =& z_{s,t} + \theta_t\Delta_t + \sigma\sqrt{\Delta_t}\\
z_{s+1,t+1} =& z_{s,t} + \theta_t\Delta_t - \sigma\sqrt{\Delta_t}\\
\end{align*}
$$
- Returns the model price by discounting the cashflows of the new BDT tree increased by 1 time step

Generally, the process is: we input discount factors and forward volatilities. The code will sequentially move through time as T=0 -> T=T identifying the theta that allows the tree to increase by 1 time step by trying out many iterations of the BDT formula by changing theta to find the resulting discount factor that matches the quoted discount factor

```python
# Prepare the inputs for the function
quotes = sofrcurves['discounts']*100
sigmas = capcurves['fwd vols']
# Assume the sigma is the same at T=0 as it is at T=1 since we dont have an initial caplet price from T=0 -> T=1
sigmas.iloc[0] = sigmas.iloc[1]

# Plug into function
theta, ratetree = estimate_theta(sigmas,quotes)
format_bintree(theta.to_frame().T, style='{:.2%}')
```

<style type="text/css">
</style>
<table id="T_cb74e_">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th class="col_heading level0 col0" >0.0</th>
	  <th class="col_heading level0 col1" >0.25</th>
	  <th class="col_heading level0 col2" >0.5</th>
	  <th class="col_heading level0 col3" >0.75</th>
	  <th class="col_heading level0 col4" >1.0</th>
	  <th class="col_heading level0 col5" >1.25</th>
	  <th class="col_heading level0 col6" >1.5</th>
	  <th class="col_heading level0 col7" >1.75</th>
	  <th class="col_heading level0 col8" >2.0</th>
	  <th class="col_heading level0 col9" >2.25</th>
	  <th class="col_heading level0 col10" >2.5</th>
	  <th class="col_heading level0 col11" >2.75</th>
	  <th class="col_heading level0 col12" >3.0</th>
	  <th class="col_heading level0 col13" >3.25</th>
	  <th class="col_heading level0 col14" >3.5</th>
	  <th class="col_heading level0 col15" >3.75</th>
	  <th class="col_heading level0 col16" >4.0</th>
	  <th class="col_heading level0 col17" >4.25</th>
	  <th class="col_heading level0 col18" >4.5</th>
	  <th class="col_heading level0 col19" >4.75</th>
	  <th class="col_heading level0 col20" >5.0</th>
	  <th class="col_heading level0 col21" >5.25</th>
	  <th class="col_heading level0 col22" >5.5</th>
	  <th class="col_heading level0 col23" >5.75</th>
	  <th class="col_heading level0 col24" >6.0</th>
	  <th class="col_heading level0 col25" >6.25</th>
	  <th class="col_heading level0 col26" >6.5</th>
	  <th class="col_heading level0 col27" >6.75</th>
	  <th class="col_heading level0 col28" >7.0</th>
	  <th class="col_heading level0 col29" >7.25</th>
	  <th class="col_heading level0 col30" >7.5</th>
	  <th class="col_heading level0 col31" >7.75</th>
	  <th class="col_heading level0 col32" >8.0</th>
	  <th class="col_heading level0 col33" >8.25</th>
	  <th class="col_heading level0 col34" >8.5</th>
	  <th class="col_heading level0 col35" >8.75</th>
	  <th class="col_heading level0 col36" >9.0</th>
	  <th class="col_heading level0 col37" >9.25</th>
	  <th class="col_heading level0 col38" >9.5</th>
	  <th class="col_heading level0 col39" >9.75</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_cb74e_level0_row0" class="row_heading level0 row0" >theta</th>
	  <td id="T_cb74e_row0_col0" class="data row0 col0" ></td>
	  <td id="T_cb74e_row0_col1" class="data row0 col1" >-11.11%</td>
	  <td id="T_cb74e_row0_col2" class="data row0 col2" >-29.58%</td>
	  <td id="T_cb74e_row0_col3" class="data row0 col3" >-44.26%</td>
	  <td id="T_cb74e_row0_col4" class="data row0 col4" >-96.69%</td>
	  <td id="T_cb74e_row0_col5" class="data row0 col5" >-65.08%</td>
	  <td id="T_cb74e_row0_col6" class="data row0 col6" >-55.22%</td>
	  <td id="T_cb74e_row0_col7" class="data row0 col7" >-39.14%</td>
	  <td id="T_cb74e_row0_col8" class="data row0 col8" >-50.56%</td>
	  <td id="T_cb74e_row0_col9" class="data row0 col9" >-9.15%</td>
	  <td id="T_cb74e_row0_col10" class="data row0 col10" >-0.02%</td>
	  <td id="T_cb74e_row0_col11" class="data row0 col11" >11.80%</td>
	  <td id="T_cb74e_row0_col12" class="data row0 col12" >-13.35%</td>
	  <td id="T_cb74e_row0_col13" class="data row0 col13" >-1.57%</td>
	  <td id="T_cb74e_row0_col14" class="data row0 col14" >27.41%</td>
	  <td id="T_cb74e_row0_col15" class="data row0 col15" >20.99%</td>
	  <td id="T_cb74e_row0_col16" class="data row0 col16" >4.85%</td>
	  <td id="T_cb74e_row0_col17" class="data row0 col17" >19.26%</td>
	  <td id="T_cb74e_row0_col18" class="data row0 col18" >41.30%</td>
	  <td id="T_cb74e_row0_col19" class="data row0 col19" >35.61%</td>
	  <td id="T_cb74e_row0_col20" class="data row0 col20" >19.42%</td>
	  <td id="T_cb74e_row0_col21" class="data row0 col21" >13.79%</td>
	  <td id="T_cb74e_row0_col22" class="data row0 col22" >14.51%</td>
	  <td id="T_cb74e_row0_col23" class="data row0 col23" >19.68%</td>
	  <td id="T_cb74e_row0_col24" class="data row0 col24" >28.10%</td>
	  <td id="T_cb74e_row0_col25" class="data row0 col25" >33.12%</td>
	  <td id="T_cb74e_row0_col26" class="data row0 col26" >34.66%</td>
	  <td id="T_cb74e_row0_col27" class="data row0 col27" >32.79%</td>
	  <td id="T_cb74e_row0_col28" class="data row0 col28" >28.10%</td>
	  <td id="T_cb74e_row0_col29" class="data row0 col29" >24.76%</td>
	  <td id="T_cb74e_row0_col30" class="data row0 col30" >23.30%</td>
	  <td id="T_cb74e_row0_col31" class="data row0 col31" >23.78%</td>
	  <td id="T_cb74e_row0_col32" class="data row0 col32" >25.91%</td>
	  <td id="T_cb74e_row0_col33" class="data row0 col33" >27.67%</td>
	  <td id="T_cb74e_row0_col34" class="data row0 col34" >28.67%</td>
	  <td id="T_cb74e_row0_col35" class="data row0 col35" >28.90%</td>
	  <td id="T_cb74e_row0_col36" class="data row0 col36" >28.26%</td>
	  <td id="T_cb74e_row0_col37" class="data row0 col37" >26.65%</td>
	  <td id="T_cb74e_row0_col38" class="data row0 col38" >23.97%</td>
	  <td id="T_cb74e_row0_col39" class="data row0 col39" >20.07%</td>
	</tr>
  </tbody>
</table>

```python
format_bintree(ratetree,style='{:.2%}')
```

<style type="text/css">
</style>
<table id="T_3eef8_">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th class="col_heading level0 col0" >0.0</th>
	  <th class="col_heading level0 col1" >0.25</th>
	  <th class="col_heading level0 col2" >0.5</th>
	  <th class="col_heading level0 col3" >0.75</th>
	  <th class="col_heading level0 col4" >1.0</th>
	  <th class="col_heading level0 col5" >1.25</th>
	  <th class="col_heading level0 col6" >1.5</th>
	  <th class="col_heading level0 col7" >1.75</th>
	  <th class="col_heading level0 col8" >2.0</th>
	  <th class="col_heading level0 col9" >2.25</th>
	  <th class="col_heading level0 col10" >2.5</th>
	  <th class="col_heading level0 col11" >2.75</th>
	  <th class="col_heading level0 col12" >3.0</th>
	  <th class="col_heading level0 col13" >3.25</th>
	  <th class="col_heading level0 col14" >3.5</th>
	  <th class="col_heading level0 col15" >3.75</th>
	  <th class="col_heading level0 col16" >4.0</th>
	  <th class="col_heading level0 col17" >4.25</th>
	  <th class="col_heading level0 col18" >4.5</th>
	  <th class="col_heading level0 col19" >4.75</th>
	  <th class="col_heading level0 col20" >5.0</th>
	  <th class="col_heading level0 col21" >5.25</th>
	  <th class="col_heading level0 col22" >5.5</th>
	  <th class="col_heading level0 col23" >5.75</th>
	  <th class="col_heading level0 col24" >6.0</th>
	  <th class="col_heading level0 col25" >6.25</th>
	  <th class="col_heading level0 col26" >6.5</th>
	  <th class="col_heading level0 col27" >6.75</th>
	  <th class="col_heading level0 col28" >7.0</th>
	  <th class="col_heading level0 col29" >7.25</th>
	  <th class="col_heading level0 col30" >7.5</th>
	  <th class="col_heading level0 col31" >7.75</th>
	  <th class="col_heading level0 col32" >8.0</th>
	  <th class="col_heading level0 col33" >8.25</th>
	  <th class="col_heading level0 col34" >8.5</th>
	  <th class="col_heading level0 col35" >8.75</th>
	  <th class="col_heading level0 col36" >9.0</th>
	  <th class="col_heading level0 col37" >9.25</th>
	  <th class="col_heading level0 col38" >9.5</th>
	  <th class="col_heading level0 col39" >9.75</th>
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
	  <th class="blank col13" >&nbsp;</th>
	  <th class="blank col14" >&nbsp;</th>
	  <th class="blank col15" >&nbsp;</th>
	  <th class="blank col16" >&nbsp;</th>
	  <th class="blank col17" >&nbsp;</th>
	  <th class="blank col18" >&nbsp;</th>
	  <th class="blank col19" >&nbsp;</th>
	  <th class="blank col20" >&nbsp;</th>
	  <th class="blank col21" >&nbsp;</th>
	  <th class="blank col22" >&nbsp;</th>
	  <th class="blank col23" >&nbsp;</th>
	  <th class="blank col24" >&nbsp;</th>
	  <th class="blank col25" >&nbsp;</th>
	  <th class="blank col26" >&nbsp;</th>
	  <th class="blank col27" >&nbsp;</th>
	  <th class="blank col28" >&nbsp;</th>
	  <th class="blank col29" >&nbsp;</th>
	  <th class="blank col30" >&nbsp;</th>
	  <th class="blank col31" >&nbsp;</th>
	  <th class="blank col32" >&nbsp;</th>
	  <th class="blank col33" >&nbsp;</th>
	  <th class="blank col34" >&nbsp;</th>
	  <th class="blank col35" >&nbsp;</th>
	  <th class="blank col36" >&nbsp;</th>
	  <th class="blank col37" >&nbsp;</th>
	  <th class="blank col38" >&nbsp;</th>
	  <th class="blank col39" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_3eef8_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_3eef8_row0_col0" class="data row0 col0" >5.19%</td>
	  <td id="T_3eef8_row0_col1" class="data row0 col1" >5.48%</td>
	  <td id="T_3eef8_row0_col2" class="data row0 col2" >5.76%</td>
	  <td id="T_3eef8_row0_col3" class="data row0 col3" >6.09%</td>
	  <td id="T_3eef8_row0_col4" class="data row0 col4" >6.21%</td>
	  <td id="T_3eef8_row0_col5" class="data row0 col5" >6.93%</td>
	  <td id="T_3eef8_row0_col6" class="data row0 col6" >7.95%</td>
	  <td id="T_3eef8_row0_col7" class="data row0 col7" >9.40%</td>
	  <td id="T_3eef8_row0_col8" class="data row0 col8" >10.85%</td>
	  <td id="T_3eef8_row0_col9" class="data row0 col9" >13.54%</td>
	  <td id="T_3eef8_row0_col10" class="data row0 col10" >16.98%</td>
	  <td id="T_3eef8_row0_col11" class="data row0 col11" >21.60%</td>
	  <td id="T_3eef8_row0_col12" class="data row0 col12" >26.09%</td>
	  <td id="T_3eef8_row0_col13" class="data row0 col13" >32.47%</td>
	  <td id="T_3eef8_row0_col14" class="data row0 col14" >42.71%</td>
	  <td id="T_3eef8_row0_col15" class="data row0 col15" >54.71%</td>
	  <td id="T_3eef8_row0_col16" class="data row0 col16" >67.18%</td>
	  <td id="T_3eef8_row0_col17" class="data row0 col17" >84.87%</td>
	  <td id="T_3eef8_row0_col18" class="data row0 col18" >111.85%</td>
	  <td id="T_3eef8_row0_col19" class="data row0 col19" >145.07%</td>
	  <td id="T_3eef8_row0_col20" class="data row0 col20" >182.59%</td>
	  <td id="T_3eef8_row0_col21" class="data row0 col21" >228.47%</td>
	  <td id="T_3eef8_row0_col22" class="data row0 col22" >286.34%</td>
	  <td id="T_3eef8_row0_col23" class="data row0 col23" >359.81%</td>
	  <td id="T_3eef8_row0_col24" class="data row0 col24" >453.11%</td>
	  <td id="T_3eef8_row0_col25" class="data row0 col25" >568.75%</td>
	  <td id="T_3eef8_row0_col26" class="data row0 col26" >710.37%</td>
	  <td id="T_3eef8_row0_col27" class="data row0 col27" >882.52%</td>
	  <td id="T_3eef8_row0_col28" class="data row0 col28" >1090.86%</td>
	  <td id="T_3eef8_row0_col29" class="data row0 col29" >1344.72%</td>
	  <td id="T_3eef8_row0_col30" class="data row0 col30" >1654.43%</td>
	  <td id="T_3eef8_row0_col31" class="data row0 col31" >2031.77%</td>
	  <td id="T_3eef8_row0_col32" class="data row0 col32" >2490.49%</td>
	  <td id="T_3eef8_row0_col33" class="data row0 col33" >3045.01%</td>
	  <td id="T_3eef8_row0_col34" class="data row0 col34" >3712.85%</td>
	  <td id="T_3eef8_row0_col35" class="data row0 col35" >4514.82%</td>
	  <td id="T_3eef8_row0_col36" class="data row0 col36" >5475.26%</td>
	  <td id="T_3eef8_row0_col37" class="data row0 col37" >6622.73%</td>
	  <td id="T_3eef8_row0_col38" class="data row0 col38" >7990.70%</td>
	  <td id="T_3eef8_row0_col39" class="data row0 col39" >9618.41%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_3eef8_row1_col0" class="data row1 col0" ></td>
	  <td id="T_3eef8_row1_col1" class="data row1 col1" >4.64%</td>
	  <td id="T_3eef8_row1_col2" class="data row1 col2" >4.87%</td>
	  <td id="T_3eef8_row1_col3" class="data row1 col3" >5.15%</td>
	  <td id="T_3eef8_row1_col4" class="data row1 col4" >5.25%</td>
	  <td id="T_3eef8_row1_col5" class="data row1 col5" >5.86%</td>
	  <td id="T_3eef8_row1_col6" class="data row1 col6" >6.72%</td>
	  <td id="T_3eef8_row1_col7" class="data row1 col7" >7.95%</td>
	  <td id="T_3eef8_row1_col8" class="data row1 col8" >9.18%</td>
	  <td id="T_3eef8_row1_col9" class="data row1 col9" >11.45%</td>
	  <td id="T_3eef8_row1_col10" class="data row1 col10" >14.36%</td>
	  <td id="T_3eef8_row1_col11" class="data row1 col11" >18.27%</td>
	  <td id="T_3eef8_row1_col12" class="data row1 col12" >22.06%</td>
	  <td id="T_3eef8_row1_col13" class="data row1 col13" >27.46%</td>
	  <td id="T_3eef8_row1_col14" class="data row1 col14" >36.12%</td>
	  <td id="T_3eef8_row1_col15" class="data row1 col15" >46.27%</td>
	  <td id="T_3eef8_row1_col16" class="data row1 col16" >56.81%</td>
	  <td id="T_3eef8_row1_col17" class="data row1 col17" >71.77%</td>
	  <td id="T_3eef8_row1_col18" class="data row1 col18" >94.59%</td>
	  <td id="T_3eef8_row1_col19" class="data row1 col19" >122.68%</td>
	  <td id="T_3eef8_row1_col20" class="data row1 col20" >154.41%</td>
	  <td id="T_3eef8_row1_col21" class="data row1 col21" >193.21%</td>
	  <td id="T_3eef8_row1_col22" class="data row1 col22" >242.15%</td>
	  <td id="T_3eef8_row1_col23" class="data row1 col23" >304.28%</td>
	  <td id="T_3eef8_row1_col24" class="data row1 col24" >383.17%</td>
	  <td id="T_3eef8_row1_col25" class="data row1 col25" >480.97%</td>
	  <td id="T_3eef8_row1_col26" class="data row1 col26" >600.73%</td>
	  <td id="T_3eef8_row1_col27" class="data row1 col27" >746.31%</td>
	  <td id="T_3eef8_row1_col28" class="data row1 col28" >922.49%</td>
	  <td id="T_3eef8_row1_col29" class="data row1 col29" >1137.17%</td>
	  <td id="T_3eef8_row1_col30" class="data row1 col30" >1399.08%</td>
	  <td id="T_3eef8_row1_col31" class="data row1 col31" >1718.18%</td>
	  <td id="T_3eef8_row1_col32" class="data row1 col32" >2106.09%</td>
	  <td id="T_3eef8_row1_col33" class="data row1 col33" >2575.03%</td>
	  <td id="T_3eef8_row1_col34" class="data row1 col34" >3139.79%</td>
	  <td id="T_3eef8_row1_col35" class="data row1 col35" >3817.98%</td>
	  <td id="T_3eef8_row1_col36" class="data row1 col36" >4630.18%</td>
	  <td id="T_3eef8_row1_col37" class="data row1 col37" >5600.54%</td>
	  <td id="T_3eef8_row1_col38" class="data row1 col38" >6757.37%</td>
	  <td id="T_3eef8_row1_col39" class="data row1 col39" >8133.86%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_3eef8_row2_col0" class="data row2 col0" ></td>
	  <td id="T_3eef8_row2_col1" class="data row2 col1" ></td>
	  <td id="T_3eef8_row2_col2" class="data row2 col2" >3.81%</td>
	  <td id="T_3eef8_row2_col3" class="data row2 col3" >4.02%</td>
	  <td id="T_3eef8_row2_col4" class="data row2 col4" >4.10%</td>
	  <td id="T_3eef8_row2_col5" class="data row2 col5" >4.58%</td>
	  <td id="T_3eef8_row2_col6" class="data row2 col6" >5.25%</td>
	  <td id="T_3eef8_row2_col7" class="data row2 col7" >6.21%</td>
	  <td id="T_3eef8_row2_col8" class="data row2 col8" >7.17%</td>
	  <td id="T_3eef8_row2_col9" class="data row2 col9" >8.94%</td>
	  <td id="T_3eef8_row2_col10" class="data row2 col10" >11.21%</td>
	  <td id="T_3eef8_row2_col11" class="data row2 col11" >14.27%</td>
	  <td id="T_3eef8_row2_col12" class="data row2 col12" >17.23%</td>
	  <td id="T_3eef8_row2_col13" class="data row2 col13" >21.44%</td>
	  <td id="T_3eef8_row2_col14" class="data row2 col14" >28.21%</td>
	  <td id="T_3eef8_row2_col15" class="data row2 col15" >36.13%</td>
	  <td id="T_3eef8_row2_col16" class="data row2 col16" >44.37%</td>
	  <td id="T_3eef8_row2_col17" class="data row2 col17" >56.05%</td>
	  <td id="T_3eef8_row2_col18" class="data row2 col18" >73.87%</td>
	  <td id="T_3eef8_row2_col19" class="data row2 col19" >95.80%</td>
	  <td id="T_3eef8_row2_col20" class="data row2 col20" >120.59%</td>
	  <td id="T_3eef8_row2_col21" class="data row2 col21" >150.89%</td>
	  <td id="T_3eef8_row2_col22" class="data row2 col22" >189.11%</td>
	  <td id="T_3eef8_row2_col23" class="data row2 col23" >237.63%</td>
	  <td id="T_3eef8_row2_col24" class="data row2 col24" >299.24%</td>
	  <td id="T_3eef8_row2_col25" class="data row2 col25" >375.62%</td>
	  <td id="T_3eef8_row2_col26" class="data row2 col26" >469.14%</td>
	  <td id="T_3eef8_row2_col27" class="data row2 col27" >582.83%</td>
	  <td id="T_3eef8_row2_col28" class="data row2 col28" >720.42%</td>
	  <td id="T_3eef8_row2_col29" class="data row2 col29" >888.08%</td>
	  <td id="T_3eef8_row2_col30" class="data row2 col30" >1092.62%</td>
	  <td id="T_3eef8_row2_col31" class="data row2 col31" >1341.82%</td>
	  <td id="T_3eef8_row2_col32" class="data row2 col32" >1644.76%</td>
	  <td id="T_3eef8_row2_col33" class="data row2 col33" >2010.98%</td>
	  <td id="T_3eef8_row2_col34" class="data row2 col34" >2452.04%</td>
	  <td id="T_3eef8_row2_col35" class="data row2 col35" >2981.67%</td>
	  <td id="T_3eef8_row2_col36" class="data row2 col36" >3615.97%</td>
	  <td id="T_3eef8_row2_col37" class="data row2 col37" >4373.77%</td>
	  <td id="T_3eef8_row2_col38" class="data row2 col38" >5277.21%</td>
	  <td id="T_3eef8_row2_col39" class="data row2 col39" >6352.18%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_3eef8_row3_col0" class="data row3 col0" ></td>
	  <td id="T_3eef8_row3_col1" class="data row3 col1" ></td>
	  <td id="T_3eef8_row3_col2" class="data row3 col2" ></td>
	  <td id="T_3eef8_row3_col3" class="data row3 col3" >2.89%</td>
	  <td id="T_3eef8_row3_col4" class="data row3 col4" >2.95%</td>
	  <td id="T_3eef8_row3_col5" class="data row3 col5" >3.29%</td>
	  <td id="T_3eef8_row3_col6" class="data row3 col6" >3.77%</td>
	  <td id="T_3eef8_row3_col7" class="data row3 col7" >4.46%</td>
	  <td id="T_3eef8_row3_col8" class="data row3 col8" >5.15%</td>
	  <td id="T_3eef8_row3_col9" class="data row3 col9" >6.43%</td>
	  <td id="T_3eef8_row3_col10" class="data row3 col10" >8.06%</td>
	  <td id="T_3eef8_row3_col11" class="data row3 col11" >10.25%</td>
	  <td id="T_3eef8_row3_col12" class="data row3 col12" >12.38%</td>
	  <td id="T_3eef8_row3_col13" class="data row3 col13" >15.41%</td>
	  <td id="T_3eef8_row3_col14" class="data row3 col14" >20.27%</td>
	  <td id="T_3eef8_row3_col15" class="data row3 col15" >25.97%</td>
	  <td id="T_3eef8_row3_col16" class="data row3 col16" >31.89%</td>
	  <td id="T_3eef8_row3_col17" class="data row3 col17" >40.28%</td>
	  <td id="T_3eef8_row3_col18" class="data row3 col18" >53.09%</td>
	  <td id="T_3eef8_row3_col19" class="data row3 col19" >68.85%</td>
	  <td id="T_3eef8_row3_col20" class="data row3 col20" >86.66%</td>
	  <td id="T_3eef8_row3_col21" class="data row3 col21" >108.44%</td>
	  <td id="T_3eef8_row3_col22" class="data row3 col22" >135.91%</td>
	  <td id="T_3eef8_row3_col23" class="data row3 col23" >170.77%</td>
	  <td id="T_3eef8_row3_col24" class="data row3 col24" >215.06%</td>
	  <td id="T_3eef8_row3_col25" class="data row3 col25" >269.94%</td>
	  <td id="T_3eef8_row3_col26" class="data row3 col26" >337.16%</td>
	  <td id="T_3eef8_row3_col27" class="data row3 col27" >418.87%</td>
	  <td id="T_3eef8_row3_col28" class="data row3 col28" >517.75%</td>
	  <td id="T_3eef8_row3_col29" class="data row3 col29" >638.24%</td>
	  <td id="T_3eef8_row3_col30" class="data row3 col30" >785.23%</td>
	  <td id="T_3eef8_row3_col31" class="data row3 col31" >964.33%</td>
	  <td id="T_3eef8_row3_col32" class="data row3 col32" >1182.05%</td>
	  <td id="T_3eef8_row3_col33" class="data row3 col33" >1445.24%</td>
	  <td id="T_3eef8_row3_col34" class="data row3 col34" >1762.21%</td>
	  <td id="T_3eef8_row3_col35" class="data row3 col35" >2142.84%</td>
	  <td id="T_3eef8_row3_col36" class="data row3 col36" >2598.70%</td>
	  <td id="T_3eef8_row3_col37" class="data row3 col37" >3143.31%</td>
	  <td id="T_3eef8_row3_col38" class="data row3 col38" >3792.58%</td>
	  <td id="T_3eef8_row3_col39" class="data row3 col39" >4565.14%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_3eef8_row4_col0" class="data row4 col0" ></td>
	  <td id="T_3eef8_row4_col1" class="data row4 col1" ></td>
	  <td id="T_3eef8_row4_col2" class="data row4 col2" ></td>
	  <td id="T_3eef8_row4_col3" class="data row4 col3" ></td>
	  <td id="T_3eef8_row4_col4" class="data row4 col4" >1.75%</td>
	  <td id="T_3eef8_row4_col5" class="data row4 col5" >1.95%</td>
	  <td id="T_3eef8_row4_col6" class="data row4 col6" >2.24%</td>
	  <td id="T_3eef8_row4_col7" class="data row4 col7" >2.64%</td>
	  <td id="T_3eef8_row4_col8" class="data row4 col8" >3.05%</td>
	  <td id="T_3eef8_row4_col9" class="data row4 col9" >3.81%</td>
	  <td id="T_3eef8_row4_col10" class="data row4 col10" >4.78%</td>
	  <td id="T_3eef8_row4_col11" class="data row4 col11" >6.08%</td>
	  <td id="T_3eef8_row4_col12" class="data row4 col12" >7.34%</td>
	  <td id="T_3eef8_row4_col13" class="data row4 col13" >9.13%</td>
	  <td id="T_3eef8_row4_col14" class="data row4 col14" >12.02%</td>
	  <td id="T_3eef8_row4_col15" class="data row4 col15" >15.39%</td>
	  <td id="T_3eef8_row4_col16" class="data row4 col16" >18.90%</td>
	  <td id="T_3eef8_row4_col17" class="data row4 col17" >23.88%</td>
	  <td id="T_3eef8_row4_col18" class="data row4 col18" >31.47%</td>
	  <td id="T_3eef8_row4_col19" class="data row4 col19" >40.81%</td>
	  <td id="T_3eef8_row4_col20" class="data row4 col20" >51.37%</td>
	  <td id="T_3eef8_row4_col21" class="data row4 col21" >64.28%</td>
	  <td id="T_3eef8_row4_col22" class="data row4 col22" >80.56%</td>
	  <td id="T_3eef8_row4_col23" class="data row4 col23" >101.23%</td>
	  <td id="T_3eef8_row4_col24" class="data row4 col24" >127.48%</td>
	  <td id="T_3eef8_row4_col25" class="data row4 col25" >160.01%</td>
	  <td id="T_3eef8_row4_col26" class="data row4 col26" >199.85%</td>
	  <td id="T_3eef8_row4_col27" class="data row4 col27" >248.29%</td>
	  <td id="T_3eef8_row4_col28" class="data row4 col28" >306.90%</td>
	  <td id="T_3eef8_row4_col29" class="data row4 col29" >378.32%</td>
	  <td id="T_3eef8_row4_col30" class="data row4 col30" >465.45%</td>
	  <td id="T_3eef8_row4_col31" class="data row4 col31" >571.61%</td>
	  <td id="T_3eef8_row4_col32" class="data row4 col32" >700.67%</td>
	  <td id="T_3eef8_row4_col33" class="data row4 col33" >856.68%</td>
	  <td id="T_3eef8_row4_col34" class="data row4 col34" >1044.56%</td>
	  <td id="T_3eef8_row4_col35" class="data row4 col35" >1270.19%</td>
	  <td id="T_3eef8_row4_col36" class="data row4 col36" >1540.39%</td>
	  <td id="T_3eef8_row4_col37" class="data row4 col37" >1863.22%</td>
	  <td id="T_3eef8_row4_col38" class="data row4 col38" >2248.08%</td>
	  <td id="T_3eef8_row4_col39" class="data row4 col39" >2706.02%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_3eef8_row5_col0" class="data row5 col0" ></td>
	  <td id="T_3eef8_row5_col1" class="data row5 col1" ></td>
	  <td id="T_3eef8_row5_col2" class="data row5 col2" ></td>
	  <td id="T_3eef8_row5_col3" class="data row5 col3" ></td>
	  <td id="T_3eef8_row5_col4" class="data row5 col4" ></td>
	  <td id="T_3eef8_row5_col5" class="data row5 col5" >1.13%</td>
	  <td id="T_3eef8_row5_col6" class="data row5 col6" >1.30%</td>
	  <td id="T_3eef8_row5_col7" class="data row5 col7" >1.53%</td>
	  <td id="T_3eef8_row5_col8" class="data row5 col8" >1.77%</td>
	  <td id="T_3eef8_row5_col9" class="data row5 col9" >2.21%</td>
	  <td id="T_3eef8_row5_col10" class="data row5 col10" >2.77%</td>
	  <td id="T_3eef8_row5_col11" class="data row5 col11" >3.52%</td>
	  <td id="T_3eef8_row5_col12" class="data row5 col12" >4.25%</td>
	  <td id="T_3eef8_row5_col13" class="data row5 col13" >5.29%</td>
	  <td id="T_3eef8_row5_col14" class="data row5 col14" >6.96%</td>
	  <td id="T_3eef8_row5_col15" class="data row5 col15" >8.91%</td>
	  <td id="T_3eef8_row5_col16" class="data row5 col16" >10.94%</td>
	  <td id="T_3eef8_row5_col17" class="data row5 col17" >13.82%</td>
	  <td id="T_3eef8_row5_col18" class="data row5 col18" >18.22%</td>
	  <td id="T_3eef8_row5_col19" class="data row5 col19" >23.63%</td>
	  <td id="T_3eef8_row5_col20" class="data row5 col20" >29.74%</td>
	  <td id="T_3eef8_row5_col21" class="data row5 col21" >37.21%</td>
	  <td id="T_3eef8_row5_col22" class="data row5 col22" >46.64%</td>
	  <td id="T_3eef8_row5_col23" class="data row5 col23" >58.61%</td>
	  <td id="T_3eef8_row5_col24" class="data row5 col24" >73.80%</td>
	  <td id="T_3eef8_row5_col25" class="data row5 col25" >92.64%</td>
	  <td id="T_3eef8_row5_col26" class="data row5 col26" >115.71%</td>
	  <td id="T_3eef8_row5_col27" class="data row5 col27" >143.75%</td>
	  <td id="T_3eef8_row5_col28" class="data row5 col28" >177.68%</td>
	  <td id="T_3eef8_row5_col29" class="data row5 col29" >219.03%</td>
	  <td id="T_3eef8_row5_col30" class="data row5 col30" >269.48%</td>
	  <td id="T_3eef8_row5_col31" class="data row5 col31" >330.94%</td>
	  <td id="T_3eef8_row5_col32" class="data row5 col32" >405.66%</td>
	  <td id="T_3eef8_row5_col33" class="data row5 col33" >495.98%</td>
	  <td id="T_3eef8_row5_col34" class="data row5 col34" >604.76%</td>
	  <td id="T_3eef8_row5_col35" class="data row5 col35" >735.38%</td>
	  <td id="T_3eef8_row5_col36" class="data row5 col36" >891.82%</td>
	  <td id="T_3eef8_row5_col37" class="data row5 col37" >1078.73%</td>
	  <td id="T_3eef8_row5_col38" class="data row5 col38" >1301.54%</td>
	  <td id="T_3eef8_row5_col39" class="data row5 col39" >1566.67%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_3eef8_row6_col0" class="data row6 col0" ></td>
	  <td id="T_3eef8_row6_col1" class="data row6 col1" ></td>
	  <td id="T_3eef8_row6_col2" class="data row6 col2" ></td>
	  <td id="T_3eef8_row6_col3" class="data row6 col3" ></td>
	  <td id="T_3eef8_row6_col4" class="data row6 col4" ></td>
	  <td id="T_3eef8_row6_col5" class="data row6 col5" ></td>
	  <td id="T_3eef8_row6_col6" class="data row6 col6" >0.75%</td>
	  <td id="T_3eef8_row6_col7" class="data row6 col7" >0.88%</td>
	  <td id="T_3eef8_row6_col8" class="data row6 col8" >1.02%</td>
	  <td id="T_3eef8_row6_col9" class="data row6 col9" >1.27%</td>
	  <td id="T_3eef8_row6_col10" class="data row6 col10" >1.60%</td>
	  <td id="T_3eef8_row6_col11" class="data row6 col11" >2.03%</td>
	  <td id="T_3eef8_row6_col12" class="data row6 col12" >2.45%</td>
	  <td id="T_3eef8_row6_col13" class="data row6 col13" >3.05%</td>
	  <td id="T_3eef8_row6_col14" class="data row6 col14" >4.01%</td>
	  <td id="T_3eef8_row6_col15" class="data row6 col15" >5.14%</td>
	  <td id="T_3eef8_row6_col16" class="data row6 col16" >6.31%</td>
	  <td id="T_3eef8_row6_col17" class="data row6 col17" >7.98%</td>
	  <td id="T_3eef8_row6_col18" class="data row6 col18" >10.51%</td>
	  <td id="T_3eef8_row6_col19" class="data row6 col19" >13.63%</td>
	  <td id="T_3eef8_row6_col20" class="data row6 col20" >17.16%</td>
	  <td id="T_3eef8_row6_col21" class="data row6 col21" >21.47%</td>
	  <td id="T_3eef8_row6_col22" class="data row6 col22" >26.91%</td>
	  <td id="T_3eef8_row6_col23" class="data row6 col23" >33.82%</td>
	  <td id="T_3eef8_row6_col24" class="data row6 col24" >42.58%</td>
	  <td id="T_3eef8_row6_col25" class="data row6 col25" >53.45%</td>
	  <td id="T_3eef8_row6_col26" class="data row6 col26" >66.76%</td>
	  <td id="T_3eef8_row6_col27" class="data row6 col27" >82.94%</td>
	  <td id="T_3eef8_row6_col28" class="data row6 col28" >102.52%</td>
	  <td id="T_3eef8_row6_col29" class="data row6 col29" >126.38%</td>
	  <td id="T_3eef8_row6_col30" class="data row6 col30" >155.49%</td>
	  <td id="T_3eef8_row6_col31" class="data row6 col31" >190.95%</td>
	  <td id="T_3eef8_row6_col32" class="data row6 col32" >234.06%</td>
	  <td id="T_3eef8_row6_col33" class="data row6 col33" >286.18%</td>
	  <td id="T_3eef8_row6_col34" class="data row6 col34" >348.94%</td>
	  <td id="T_3eef8_row6_col35" class="data row6 col35" >424.31%</td>
	  <td id="T_3eef8_row6_col36" class="data row6 col36" >514.58%</td>
	  <td id="T_3eef8_row6_col37" class="data row6 col37" >622.42%</td>
	  <td id="T_3eef8_row6_col38" class="data row6 col38" >750.98%</td>
	  <td id="T_3eef8_row6_col39" class="data row6 col39" >903.96%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_3eef8_row7_col0" class="data row7 col0" ></td>
	  <td id="T_3eef8_row7_col1" class="data row7 col1" ></td>
	  <td id="T_3eef8_row7_col2" class="data row7 col2" ></td>
	  <td id="T_3eef8_row7_col3" class="data row7 col3" ></td>
	  <td id="T_3eef8_row7_col4" class="data row7 col4" ></td>
	  <td id="T_3eef8_row7_col5" class="data row7 col5" ></td>
	  <td id="T_3eef8_row7_col6" class="data row7 col6" ></td>
	  <td id="T_3eef8_row7_col7" class="data row7 col7" >0.52%</td>
	  <td id="T_3eef8_row7_col8" class="data row7 col8" >0.60%</td>
	  <td id="T_3eef8_row7_col9" class="data row7 col9" >0.75%</td>
	  <td id="T_3eef8_row7_col10" class="data row7 col10" >0.94%</td>
	  <td id="T_3eef8_row7_col11" class="data row7 col11" >1.19%</td>
	  <td id="T_3eef8_row7_col12" class="data row7 col12" >1.44%</td>
	  <td id="T_3eef8_row7_col13" class="data row7 col13" >1.79%</td>
	  <td id="T_3eef8_row7_col14" class="data row7 col14" >2.36%</td>
	  <td id="T_3eef8_row7_col15" class="data row7 col15" >3.02%</td>
	  <td id="T_3eef8_row7_col16" class="data row7 col16" >3.71%</td>
	  <td id="T_3eef8_row7_col17" class="data row7 col17" >4.69%</td>
	  <td id="T_3eef8_row7_col18" class="data row7 col18" >6.18%</td>
	  <td id="T_3eef8_row7_col19" class="data row7 col19" >8.02%</td>
	  <td id="T_3eef8_row7_col20" class="data row7 col20" >10.09%</td>
	  <td id="T_3eef8_row7_col21" class="data row7 col21" >12.63%</td>
	  <td id="T_3eef8_row7_col22" class="data row7 col22" >15.83%</td>
	  <td id="T_3eef8_row7_col23" class="data row7 col23" >19.89%</td>
	  <td id="T_3eef8_row7_col24" class="data row7 col24" >25.05%</td>
	  <td id="T_3eef8_row7_col25" class="data row7 col25" >31.44%</td>
	  <td id="T_3eef8_row7_col26" class="data row7 col26" >39.27%</td>
	  <td id="T_3eef8_row7_col27" class="data row7 col27" >48.78%</td>
	  <td id="T_3eef8_row7_col28" class="data row7 col28" >60.30%</td>
	  <td id="T_3eef8_row7_col29" class="data row7 col29" >74.33%</td>
	  <td id="T_3eef8_row7_col30" class="data row7 col30" >91.45%</td>
	  <td id="T_3eef8_row7_col31" class="data row7 col31" >112.31%</td>
	  <td id="T_3eef8_row7_col32" class="data row7 col32" >137.67%</td>
	  <td id="T_3eef8_row7_col33" class="data row7 col33" >168.32%</td>
	  <td id="T_3eef8_row7_col34" class="data row7 col34" >205.23%</td>
	  <td id="T_3eef8_row7_col35" class="data row7 col35" >249.56%</td>
	  <td id="T_3eef8_row7_col36" class="data row7 col36" >302.65%</td>
	  <td id="T_3eef8_row7_col37" class="data row7 col37" >366.08%</td>
	  <td id="T_3eef8_row7_col38" class="data row7 col38" >441.70%</td>
	  <td id="T_3eef8_row7_col39" class="data row7 col39" >531.67%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row8" class="row_heading level0 row8" >8</th>
	  <td id="T_3eef8_row8_col0" class="data row8 col0" ></td>
	  <td id="T_3eef8_row8_col1" class="data row8 col1" ></td>
	  <td id="T_3eef8_row8_col2" class="data row8 col2" ></td>
	  <td id="T_3eef8_row8_col3" class="data row8 col3" ></td>
	  <td id="T_3eef8_row8_col4" class="data row8 col4" ></td>
	  <td id="T_3eef8_row8_col5" class="data row8 col5" ></td>
	  <td id="T_3eef8_row8_col6" class="data row8 col6" ></td>
	  <td id="T_3eef8_row8_col7" class="data row8 col7" ></td>
	  <td id="T_3eef8_row8_col8" class="data row8 col8" >0.35%</td>
	  <td id="T_3eef8_row8_col9" class="data row8 col9" >0.44%</td>
	  <td id="T_3eef8_row8_col10" class="data row8 col10" >0.55%</td>
	  <td id="T_3eef8_row8_col11" class="data row8 col11" >0.70%</td>
	  <td id="T_3eef8_row8_col12" class="data row8 col12" >0.84%</td>
	  <td id="T_3eef8_row8_col13" class="data row8 col13" >1.05%</td>
	  <td id="T_3eef8_row8_col14" class="data row8 col14" >1.38%</td>
	  <td id="T_3eef8_row8_col15" class="data row8 col15" >1.76%</td>
	  <td id="T_3eef8_row8_col16" class="data row8 col16" >2.17%</td>
	  <td id="T_3eef8_row8_col17" class="data row8 col17" >2.74%</td>
	  <td id="T_3eef8_row8_col18" class="data row8 col18" >3.60%</td>
	  <td id="T_3eef8_row8_col19" class="data row8 col19" >4.68%</td>
	  <td id="T_3eef8_row8_col20" class="data row8 col20" >5.88%</td>
	  <td id="T_3eef8_row8_col21" class="data row8 col21" >7.36%</td>
	  <td id="T_3eef8_row8_col22" class="data row8 col22" >9.23%</td>
	  <td id="T_3eef8_row8_col23" class="data row8 col23" >11.60%</td>
	  <td id="T_3eef8_row8_col24" class="data row8 col24" >14.60%</td>
	  <td id="T_3eef8_row8_col25" class="data row8 col25" >18.33%</td>
	  <td id="T_3eef8_row8_col26" class="data row8 col26" >22.89%</td>
	  <td id="T_3eef8_row8_col27" class="data row8 col27" >28.44%</td>
	  <td id="T_3eef8_row8_col28" class="data row8 col28" >35.16%</td>
	  <td id="T_3eef8_row8_col29" class="data row8 col29" >43.34%</td>
	  <td id="T_3eef8_row8_col30" class="data row8 col30" >53.32%</td>
	  <td id="T_3eef8_row8_col31" class="data row8 col31" >65.48%</td>
	  <td id="T_3eef8_row8_col32" class="data row8 col32" >80.27%</td>
	  <td id="T_3eef8_row8_col33" class="data row8 col33" >98.14%</td>
	  <td id="T_3eef8_row8_col34" class="data row8 col34" >119.66%</td>
	  <td id="T_3eef8_row8_col35" class="data row8 col35" >145.51%</td>
	  <td id="T_3eef8_row8_col36" class="data row8 col36" >176.46%</td>
	  <td id="T_3eef8_row8_col37" class="data row8 col37" >213.44%</td>
	  <td id="T_3eef8_row8_col38" class="data row8 col38" >257.53%</td>
	  <td id="T_3eef8_row8_col39" class="data row8 col39" >309.99%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row9" class="row_heading level0 row9" >9</th>
	  <td id="T_3eef8_row9_col0" class="data row9 col0" ></td>
	  <td id="T_3eef8_row9_col1" class="data row9 col1" ></td>
	  <td id="T_3eef8_row9_col2" class="data row9 col2" ></td>
	  <td id="T_3eef8_row9_col3" class="data row9 col3" ></td>
	  <td id="T_3eef8_row9_col4" class="data row9 col4" ></td>
	  <td id="T_3eef8_row9_col5" class="data row9 col5" ></td>
	  <td id="T_3eef8_row9_col6" class="data row9 col6" ></td>
	  <td id="T_3eef8_row9_col7" class="data row9 col7" ></td>
	  <td id="T_3eef8_row9_col8" class="data row9 col8" ></td>
	  <td id="T_3eef8_row9_col9" class="data row9 col9" >0.27%</td>
	  <td id="T_3eef8_row9_col10" class="data row9 col10" >0.34%</td>
	  <td id="T_3eef8_row9_col11" class="data row9 col11" >0.43%</td>
	  <td id="T_3eef8_row9_col12" class="data row9 col12" >0.52%</td>
	  <td id="T_3eef8_row9_col13" class="data row9 col13" >0.64%</td>
	  <td id="T_3eef8_row9_col14" class="data row9 col14" >0.84%</td>
	  <td id="T_3eef8_row9_col15" class="data row9 col15" >1.08%</td>
	  <td id="T_3eef8_row9_col16" class="data row9 col16" >1.33%</td>
	  <td id="T_3eef8_row9_col17" class="data row9 col17" >1.68%</td>
	  <td id="T_3eef8_row9_col18" class="data row9 col18" >2.21%</td>
	  <td id="T_3eef8_row9_col19" class="data row9 col19" >2.87%</td>
	  <td id="T_3eef8_row9_col20" class="data row9 col20" >3.61%</td>
	  <td id="T_3eef8_row9_col21" class="data row9 col21" >4.52%</td>
	  <td id="T_3eef8_row9_col22" class="data row9 col22" >5.66%</td>
	  <td id="T_3eef8_row9_col23" class="data row9 col23" >7.11%</td>
	  <td id="T_3eef8_row9_col24" class="data row9 col24" >8.96%</td>
	  <td id="T_3eef8_row9_col25" class="data row9 col25" >11.24%</td>
	  <td id="T_3eef8_row9_col26" class="data row9 col26" >14.04%</td>
	  <td id="T_3eef8_row9_col27" class="data row9 col27" >17.44%</td>
	  <td id="T_3eef8_row9_col28" class="data row9 col28" >21.56%</td>
	  <td id="T_3eef8_row9_col29" class="data row9 col29" >26.58%</td>
	  <td id="T_3eef8_row9_col30" class="data row9 col30" >32.70%</td>
	  <td id="T_3eef8_row9_col31" class="data row9 col31" >40.16%</td>
	  <td id="T_3eef8_row9_col32" class="data row9 col32" >49.23%</td>
	  <td id="T_3eef8_row9_col33" class="data row9 col33" >60.19%</td>
	  <td id="T_3eef8_row9_col34" class="data row9 col34" >73.39%</td>
	  <td id="T_3eef8_row9_col35" class="data row9 col35" >89.24%</td>
	  <td id="T_3eef8_row9_col36" class="data row9 col36" >108.23%</td>
	  <td id="T_3eef8_row9_col37" class="data row9 col37" >130.91%</td>
	  <td id="T_3eef8_row9_col38" class="data row9 col38" >157.95%</td>
	  <td id="T_3eef8_row9_col39" class="data row9 col39" >190.13%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row10" class="row_heading level0 row10" >10</th>
	  <td id="T_3eef8_row10_col0" class="data row10 col0" ></td>
	  <td id="T_3eef8_row10_col1" class="data row10 col1" ></td>
	  <td id="T_3eef8_row10_col2" class="data row10 col2" ></td>
	  <td id="T_3eef8_row10_col3" class="data row10 col3" ></td>
	  <td id="T_3eef8_row10_col4" class="data row10 col4" ></td>
	  <td id="T_3eef8_row10_col5" class="data row10 col5" ></td>
	  <td id="T_3eef8_row10_col6" class="data row10 col6" ></td>
	  <td id="T_3eef8_row10_col7" class="data row10 col7" ></td>
	  <td id="T_3eef8_row10_col8" class="data row10 col8" ></td>
	  <td id="T_3eef8_row10_col9" class="data row10 col9" ></td>
	  <td id="T_3eef8_row10_col10" class="data row10 col10" >0.21%</td>
	  <td id="T_3eef8_row10_col11" class="data row10 col11" >0.27%</td>
	  <td id="T_3eef8_row10_col12" class="data row10 col12" >0.33%</td>
	  <td id="T_3eef8_row10_col13" class="data row10 col13" >0.41%</td>
	  <td id="T_3eef8_row10_col14" class="data row10 col14" >0.54%</td>
	  <td id="T_3eef8_row10_col15" class="data row10 col15" >0.69%</td>
	  <td id="T_3eef8_row10_col16" class="data row10 col16" >0.84%</td>
	  <td id="T_3eef8_row10_col17" class="data row10 col17" >1.07%</td>
	  <td id="T_3eef8_row10_col18" class="data row10 col18" >1.41%</td>
	  <td id="T_3eef8_row10_col19" class="data row10 col19" >1.82%</td>
	  <td id="T_3eef8_row10_col20" class="data row10 col20" >2.30%</td>
	  <td id="T_3eef8_row10_col21" class="data row10 col21" >2.87%</td>
	  <td id="T_3eef8_row10_col22" class="data row10 col22" >3.60%</td>
	  <td id="T_3eef8_row10_col23" class="data row10 col23" >4.52%</td>
	  <td id="T_3eef8_row10_col24" class="data row10 col24" >5.70%</td>
	  <td id="T_3eef8_row10_col25" class="data row10 col25" >7.15%</td>
	  <td id="T_3eef8_row10_col26" class="data row10 col26" >8.93%</td>
	  <td id="T_3eef8_row10_col27" class="data row10 col27" >11.10%</td>
	  <td id="T_3eef8_row10_col28" class="data row10 col28" >13.72%</td>
	  <td id="T_3eef8_row10_col29" class="data row10 col29" >16.91%</td>
	  <td id="T_3eef8_row10_col30" class="data row10 col30" >20.81%</td>
	  <td id="T_3eef8_row10_col31" class="data row10 col31" >25.55%</td>
	  <td id="T_3eef8_row10_col32" class="data row10 col32" >31.32%</td>
	  <td id="T_3eef8_row10_col33" class="data row10 col33" >38.29%</td>
	  <td id="T_3eef8_row10_col34" class="data row10 col34" >46.69%</td>
	  <td id="T_3eef8_row10_col35" class="data row10 col35" >56.78%</td>
	  <td id="T_3eef8_row10_col36" class="data row10 col36" >68.85%</td>
	  <td id="T_3eef8_row10_col37" class="data row10 col37" >83.28%</td>
	  <td id="T_3eef8_row10_col38" class="data row10 col38" >100.49%</td>
	  <td id="T_3eef8_row10_col39" class="data row10 col39" >120.96%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row11" class="row_heading level0 row11" >11</th>
	  <td id="T_3eef8_row11_col0" class="data row11 col0" ></td>
	  <td id="T_3eef8_row11_col1" class="data row11 col1" ></td>
	  <td id="T_3eef8_row11_col2" class="data row11 col2" ></td>
	  <td id="T_3eef8_row11_col3" class="data row11 col3" ></td>
	  <td id="T_3eef8_row11_col4" class="data row11 col4" ></td>
	  <td id="T_3eef8_row11_col5" class="data row11 col5" ></td>
	  <td id="T_3eef8_row11_col6" class="data row11 col6" ></td>
	  <td id="T_3eef8_row11_col7" class="data row11 col7" ></td>
	  <td id="T_3eef8_row11_col8" class="data row11 col8" ></td>
	  <td id="T_3eef8_row11_col9" class="data row11 col9" ></td>
	  <td id="T_3eef8_row11_col10" class="data row11 col10" ></td>
	  <td id="T_3eef8_row11_col11" class="data row11 col11" >0.18%</td>
	  <td id="T_3eef8_row11_col12" class="data row11 col12" >0.21%</td>
	  <td id="T_3eef8_row11_col13" class="data row11 col13" >0.27%</td>
	  <td id="T_3eef8_row11_col14" class="data row11 col14" >0.35%</td>
	  <td id="T_3eef8_row11_col15" class="data row11 col15" >0.45%</td>
	  <td id="T_3eef8_row11_col16" class="data row11 col16" >0.55%</td>
	  <td id="T_3eef8_row11_col17" class="data row11 col17" >0.70%</td>
	  <td id="T_3eef8_row11_col18" class="data row11 col18" >0.92%</td>
	  <td id="T_3eef8_row11_col19" class="data row11 col19" >1.19%</td>
	  <td id="T_3eef8_row11_col20" class="data row11 col20" >1.50%</td>
	  <td id="T_3eef8_row11_col21" class="data row11 col21" >1.88%</td>
	  <td id="T_3eef8_row11_col22" class="data row11 col22" >2.36%</td>
	  <td id="T_3eef8_row11_col23" class="data row11 col23" >2.96%</td>
	  <td id="T_3eef8_row11_col24" class="data row11 col24" >3.73%</td>
	  <td id="T_3eef8_row11_col25" class="data row11 col25" >4.68%</td>
	  <td id="T_3eef8_row11_col26" class="data row11 col26" >5.85%</td>
	  <td id="T_3eef8_row11_col27" class="data row11 col27" >7.27%</td>
	  <td id="T_3eef8_row11_col28" class="data row11 col28" >8.98%</td>
	  <td id="T_3eef8_row11_col29" class="data row11 col29" >11.08%</td>
	  <td id="T_3eef8_row11_col30" class="data row11 col30" >13.63%</td>
	  <td id="T_3eef8_row11_col31" class="data row11 col31" >16.73%</td>
	  <td id="T_3eef8_row11_col32" class="data row11 col32" >20.51%</td>
	  <td id="T_3eef8_row11_col33" class="data row11 col33" >25.08%</td>
	  <td id="T_3eef8_row11_col34" class="data row11 col34" >30.58%</td>
	  <td id="T_3eef8_row11_col35" class="data row11 col35" >37.19%</td>
	  <td id="T_3eef8_row11_col36" class="data row11 col36" >45.10%</td>
	  <td id="T_3eef8_row11_col37" class="data row11 col37" >54.55%</td>
	  <td id="T_3eef8_row11_col38" class="data row11 col38" >65.82%</td>
	  <td id="T_3eef8_row11_col39" class="data row11 col39" >79.22%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row12" class="row_heading level0 row12" >12</th>
	  <td id="T_3eef8_row12_col0" class="data row12 col0" ></td>
	  <td id="T_3eef8_row12_col1" class="data row12 col1" ></td>
	  <td id="T_3eef8_row12_col2" class="data row12 col2" ></td>
	  <td id="T_3eef8_row12_col3" class="data row12 col3" ></td>
	  <td id="T_3eef8_row12_col4" class="data row12 col4" ></td>
	  <td id="T_3eef8_row12_col5" class="data row12 col5" ></td>
	  <td id="T_3eef8_row12_col6" class="data row12 col6" ></td>
	  <td id="T_3eef8_row12_col7" class="data row12 col7" ></td>
	  <td id="T_3eef8_row12_col8" class="data row12 col8" ></td>
	  <td id="T_3eef8_row12_col9" class="data row12 col9" ></td>
	  <td id="T_3eef8_row12_col10" class="data row12 col10" ></td>
	  <td id="T_3eef8_row12_col11" class="data row12 col11" ></td>
	  <td id="T_3eef8_row12_col12" class="data row12 col12" >0.14%</td>
	  <td id="T_3eef8_row12_col13" class="data row12 col13" >0.17%</td>
	  <td id="T_3eef8_row12_col14" class="data row12 col14" >0.23%</td>
	  <td id="T_3eef8_row12_col15" class="data row12 col15" >0.29%</td>
	  <td id="T_3eef8_row12_col16" class="data row12 col16" >0.36%</td>
	  <td id="T_3eef8_row12_col17" class="data row12 col17" >0.45%</td>
	  <td id="T_3eef8_row12_col18" class="data row12 col18" >0.59%</td>
	  <td id="T_3eef8_row12_col19" class="data row12 col19" >0.77%</td>
	  <td id="T_3eef8_row12_col20" class="data row12 col20" >0.96%</td>
	  <td id="T_3eef8_row12_col21" class="data row12 col21" >1.21%</td>
	  <td id="T_3eef8_row12_col22" class="data row12 col22" >1.51%</td>
	  <td id="T_3eef8_row12_col23" class="data row12 col23" >1.90%</td>
	  <td id="T_3eef8_row12_col24" class="data row12 col24" >2.39%</td>
	  <td id="T_3eef8_row12_col25" class="data row12 col25" >3.01%</td>
	  <td id="T_3eef8_row12_col26" class="data row12 col26" >3.75%</td>
	  <td id="T_3eef8_row12_col27" class="data row12 col27" >4.66%</td>
	  <td id="T_3eef8_row12_col28" class="data row12 col28" >5.76%</td>
	  <td id="T_3eef8_row12_col29" class="data row12 col29" >7.11%</td>
	  <td id="T_3eef8_row12_col30" class="data row12 col30" >8.74%</td>
	  <td id="T_3eef8_row12_col31" class="data row12 col31" >10.74%</td>
	  <td id="T_3eef8_row12_col32" class="data row12 col32" >13.16%</td>
	  <td id="T_3eef8_row12_col33" class="data row12 col33" >16.09%</td>
	  <td id="T_3eef8_row12_col34" class="data row12 col34" >19.62%</td>
	  <td id="T_3eef8_row12_col35" class="data row12 col35" >23.86%</td>
	  <td id="T_3eef8_row12_col36" class="data row12 col36" >28.94%</td>
	  <td id="T_3eef8_row12_col37" class="data row12 col37" >35.00%</td>
	  <td id="T_3eef8_row12_col38" class="data row12 col38" >42.23%</td>
	  <td id="T_3eef8_row12_col39" class="data row12 col39" >50.83%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row13" class="row_heading level0 row13" >13</th>
	  <td id="T_3eef8_row13_col0" class="data row13 col0" ></td>
	  <td id="T_3eef8_row13_col1" class="data row13 col1" ></td>
	  <td id="T_3eef8_row13_col2" class="data row13 col2" ></td>
	  <td id="T_3eef8_row13_col3" class="data row13 col3" ></td>
	  <td id="T_3eef8_row13_col4" class="data row13 col4" ></td>
	  <td id="T_3eef8_row13_col5" class="data row13 col5" ></td>
	  <td id="T_3eef8_row13_col6" class="data row13 col6" ></td>
	  <td id="T_3eef8_row13_col7" class="data row13 col7" ></td>
	  <td id="T_3eef8_row13_col8" class="data row13 col8" ></td>
	  <td id="T_3eef8_row13_col9" class="data row13 col9" ></td>
	  <td id="T_3eef8_row13_col10" class="data row13 col10" ></td>
	  <td id="T_3eef8_row13_col11" class="data row13 col11" ></td>
	  <td id="T_3eef8_row13_col12" class="data row13 col12" ></td>
	  <td id="T_3eef8_row13_col13" class="data row13 col13" >0.11%</td>
	  <td id="T_3eef8_row13_col14" class="data row13 col14" >0.14%</td>
	  <td id="T_3eef8_row13_col15" class="data row13 col15" >0.19%</td>
	  <td id="T_3eef8_row13_col16" class="data row13 col16" >0.23%</td>
	  <td id="T_3eef8_row13_col17" class="data row13 col17" >0.29%</td>
	  <td id="T_3eef8_row13_col18" class="data row13 col18" >0.38%</td>
	  <td id="T_3eef8_row13_col19" class="data row13 col19" >0.49%</td>
	  <td id="T_3eef8_row13_col20" class="data row13 col20" >0.62%</td>
	  <td id="T_3eef8_row13_col21" class="data row13 col21" >0.77%</td>
	  <td id="T_3eef8_row13_col22" class="data row13 col22" >0.97%</td>
	  <td id="T_3eef8_row13_col23" class="data row13 col23" >1.22%</td>
	  <td id="T_3eef8_row13_col24" class="data row13 col24" >1.53%</td>
	  <td id="T_3eef8_row13_col25" class="data row13 col25" >1.92%</td>
	  <td id="T_3eef8_row13_col26" class="data row13 col26" >2.40%</td>
	  <td id="T_3eef8_row13_col27" class="data row13 col27" >2.99%</td>
	  <td id="T_3eef8_row13_col28" class="data row13 col28" >3.69%</td>
	  <td id="T_3eef8_row13_col29" class="data row13 col29" >4.55%</td>
	  <td id="T_3eef8_row13_col30" class="data row13 col30" >5.60%</td>
	  <td id="T_3eef8_row13_col31" class="data row13 col31" >6.88%</td>
	  <td id="T_3eef8_row13_col32" class="data row13 col32" >8.43%</td>
	  <td id="T_3eef8_row13_col33" class="data row13 col33" >10.31%</td>
	  <td id="T_3eef8_row13_col34" class="data row13 col34" >12.57%</td>
	  <td id="T_3eef8_row13_col35" class="data row13 col35" >15.28%</td>
	  <td id="T_3eef8_row13_col36" class="data row13 col36" >18.53%</td>
	  <td id="T_3eef8_row13_col37" class="data row13 col37" >22.41%</td>
	  <td id="T_3eef8_row13_col38" class="data row13 col38" >27.04%</td>
	  <td id="T_3eef8_row13_col39" class="data row13 col39" >32.55%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row14" class="row_heading level0 row14" >14</th>
	  <td id="T_3eef8_row14_col0" class="data row14 col0" ></td>
	  <td id="T_3eef8_row14_col1" class="data row14 col1" ></td>
	  <td id="T_3eef8_row14_col2" class="data row14 col2" ></td>
	  <td id="T_3eef8_row14_col3" class="data row14 col3" ></td>
	  <td id="T_3eef8_row14_col4" class="data row14 col4" ></td>
	  <td id="T_3eef8_row14_col5" class="data row14 col5" ></td>
	  <td id="T_3eef8_row14_col6" class="data row14 col6" ></td>
	  <td id="T_3eef8_row14_col7" class="data row14 col7" ></td>
	  <td id="T_3eef8_row14_col8" class="data row14 col8" ></td>
	  <td id="T_3eef8_row14_col9" class="data row14 col9" ></td>
	  <td id="T_3eef8_row14_col10" class="data row14 col10" ></td>
	  <td id="T_3eef8_row14_col11" class="data row14 col11" ></td>
	  <td id="T_3eef8_row14_col12" class="data row14 col12" ></td>
	  <td id="T_3eef8_row14_col13" class="data row14 col13" ></td>
	  <td id="T_3eef8_row14_col14" class="data row14 col14" >0.10%</td>
	  <td id="T_3eef8_row14_col15" class="data row14 col15" >0.12%</td>
	  <td id="T_3eef8_row14_col16" class="data row14 col16" >0.15%</td>
	  <td id="T_3eef8_row14_col17" class="data row14 col17" >0.19%</td>
	  <td id="T_3eef8_row14_col18" class="data row14 col18" >0.25%</td>
	  <td id="T_3eef8_row14_col19" class="data row14 col19" >0.33%</td>
	  <td id="T_3eef8_row14_col20" class="data row14 col20" >0.41%</td>
	  <td id="T_3eef8_row14_col21" class="data row14 col21" >0.51%</td>
	  <td id="T_3eef8_row14_col22" class="data row14 col22" >0.64%</td>
	  <td id="T_3eef8_row14_col23" class="data row14 col23" >0.81%</td>
	  <td id="T_3eef8_row14_col24" class="data row14 col24" >1.02%</td>
	  <td id="T_3eef8_row14_col25" class="data row14 col25" >1.28%</td>
	  <td id="T_3eef8_row14_col26" class="data row14 col26" >1.59%</td>
	  <td id="T_3eef8_row14_col27" class="data row14 col27" >1.98%</td>
	  <td id="T_3eef8_row14_col28" class="data row14 col28" >2.45%</td>
	  <td id="T_3eef8_row14_col29" class="data row14 col29" >3.02%</td>
	  <td id="T_3eef8_row14_col30" class="data row14 col30" >3.71%</td>
	  <td id="T_3eef8_row14_col31" class="data row14 col31" >4.56%</td>
	  <td id="T_3eef8_row14_col32" class="data row14 col32" >5.59%</td>
	  <td id="T_3eef8_row14_col33" class="data row14 col33" >6.83%</td>
	  <td id="T_3eef8_row14_col34" class="data row14 col34" >8.33%</td>
	  <td id="T_3eef8_row14_col35" class="data row14 col35" >10.13%</td>
	  <td id="T_3eef8_row14_col36" class="data row14 col36" >12.28%</td>
	  <td id="T_3eef8_row14_col37" class="data row14 col37" >14.85%</td>
	  <td id="T_3eef8_row14_col38" class="data row14 col38" >17.92%</td>
	  <td id="T_3eef8_row14_col39" class="data row14 col39" >21.57%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row15" class="row_heading level0 row15" >15</th>
	  <td id="T_3eef8_row15_col0" class="data row15 col0" ></td>
	  <td id="T_3eef8_row15_col1" class="data row15 col1" ></td>
	  <td id="T_3eef8_row15_col2" class="data row15 col2" ></td>
	  <td id="T_3eef8_row15_col3" class="data row15 col3" ></td>
	  <td id="T_3eef8_row15_col4" class="data row15 col4" ></td>
	  <td id="T_3eef8_row15_col5" class="data row15 col5" ></td>
	  <td id="T_3eef8_row15_col6" class="data row15 col6" ></td>
	  <td id="T_3eef8_row15_col7" class="data row15 col7" ></td>
	  <td id="T_3eef8_row15_col8" class="data row15 col8" ></td>
	  <td id="T_3eef8_row15_col9" class="data row15 col9" ></td>
	  <td id="T_3eef8_row15_col10" class="data row15 col10" ></td>
	  <td id="T_3eef8_row15_col11" class="data row15 col11" ></td>
	  <td id="T_3eef8_row15_col12" class="data row15 col12" ></td>
	  <td id="T_3eef8_row15_col13" class="data row15 col13" ></td>
	  <td id="T_3eef8_row15_col14" class="data row15 col14" ></td>
	  <td id="T_3eef8_row15_col15" class="data row15 col15" >0.08%</td>
	  <td id="T_3eef8_row15_col16" class="data row15 col16" >0.10%</td>
	  <td id="T_3eef8_row15_col17" class="data row15 col17" >0.13%</td>
	  <td id="T_3eef8_row15_col18" class="data row15 col18" >0.17%</td>
	  <td id="T_3eef8_row15_col19" class="data row15 col19" >0.22%</td>
	  <td id="T_3eef8_row15_col20" class="data row15 col20" >0.28%</td>
	  <td id="T_3eef8_row15_col21" class="data row15 col21" >0.35%</td>
	  <td id="T_3eef8_row15_col22" class="data row15 col22" >0.43%</td>
	  <td id="T_3eef8_row15_col23" class="data row15 col23" >0.55%</td>
	  <td id="T_3eef8_row15_col24" class="data row15 col24" >0.69%</td>
	  <td id="T_3eef8_row15_col25" class="data row15 col25" >0.86%</td>
	  <td id="T_3eef8_row15_col26" class="data row15 col26" >1.08%</td>
	  <td id="T_3eef8_row15_col27" class="data row15 col27" >1.34%</td>
	  <td id="T_3eef8_row15_col28" class="data row15 col28" >1.66%</td>
	  <td id="T_3eef8_row15_col29" class="data row15 col29" >2.04%</td>
	  <td id="T_3eef8_row15_col30" class="data row15 col30" >2.51%</td>
	  <td id="T_3eef8_row15_col31" class="data row15 col31" >3.08%</td>
	  <td id="T_3eef8_row15_col32" class="data row15 col32" >3.78%</td>
	  <td id="T_3eef8_row15_col33" class="data row15 col33" >4.62%</td>
	  <td id="T_3eef8_row15_col34" class="data row15 col34" >5.64%</td>
	  <td id="T_3eef8_row15_col35" class="data row15 col35" >6.85%</td>
	  <td id="T_3eef8_row15_col36" class="data row15 col36" >8.31%</td>
	  <td id="T_3eef8_row15_col37" class="data row15 col37" >10.05%</td>
	  <td id="T_3eef8_row15_col38" class="data row15 col38" >12.13%</td>
	  <td id="T_3eef8_row15_col39" class="data row15 col39" >14.60%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row16" class="row_heading level0 row16" >16</th>
	  <td id="T_3eef8_row16_col0" class="data row16 col0" ></td>
	  <td id="T_3eef8_row16_col1" class="data row16 col1" ></td>
	  <td id="T_3eef8_row16_col2" class="data row16 col2" ></td>
	  <td id="T_3eef8_row16_col3" class="data row16 col3" ></td>
	  <td id="T_3eef8_row16_col4" class="data row16 col4" ></td>
	  <td id="T_3eef8_row16_col5" class="data row16 col5" ></td>
	  <td id="T_3eef8_row16_col6" class="data row16 col6" ></td>
	  <td id="T_3eef8_row16_col7" class="data row16 col7" ></td>
	  <td id="T_3eef8_row16_col8" class="data row16 col8" ></td>
	  <td id="T_3eef8_row16_col9" class="data row16 col9" ></td>
	  <td id="T_3eef8_row16_col10" class="data row16 col10" ></td>
	  <td id="T_3eef8_row16_col11" class="data row16 col11" ></td>
	  <td id="T_3eef8_row16_col12" class="data row16 col12" ></td>
	  <td id="T_3eef8_row16_col13" class="data row16 col13" ></td>
	  <td id="T_3eef8_row16_col14" class="data row16 col14" ></td>
	  <td id="T_3eef8_row16_col15" class="data row16 col15" ></td>
	  <td id="T_3eef8_row16_col16" class="data row16 col16" >0.07%</td>
	  <td id="T_3eef8_row16_col17" class="data row16 col17" >0.09%</td>
	  <td id="T_3eef8_row16_col18" class="data row16 col18" >0.12%</td>
	  <td id="T_3eef8_row16_col19" class="data row16 col19" >0.15%</td>
	  <td id="T_3eef8_row16_col20" class="data row16 col20" >0.19%</td>
	  <td id="T_3eef8_row16_col21" class="data row16 col21" >0.24%</td>
	  <td id="T_3eef8_row16_col22" class="data row16 col22" >0.30%</td>
	  <td id="T_3eef8_row16_col23" class="data row16 col23" >0.37%</td>
	  <td id="T_3eef8_row16_col24" class="data row16 col24" >0.47%</td>
	  <td id="T_3eef8_row16_col25" class="data row16 col25" >0.59%</td>
	  <td id="T_3eef8_row16_col26" class="data row16 col26" >0.73%</td>
	  <td id="T_3eef8_row16_col27" class="data row16 col27" >0.91%</td>
	  <td id="T_3eef8_row16_col28" class="data row16 col28" >1.13%</td>
	  <td id="T_3eef8_row16_col29" class="data row16 col29" >1.39%</td>
	  <td id="T_3eef8_row16_col30" class="data row16 col30" >1.71%</td>
	  <td id="T_3eef8_row16_col31" class="data row16 col31" >2.10%</td>
	  <td id="T_3eef8_row16_col32" class="data row16 col32" >2.57%</td>
	  <td id="T_3eef8_row16_col33" class="data row16 col33" >3.14%</td>
	  <td id="T_3eef8_row16_col34" class="data row16 col34" >3.83%</td>
	  <td id="T_3eef8_row16_col35" class="data row16 col35" >4.66%</td>
	  <td id="T_3eef8_row16_col36" class="data row16 col36" >5.65%</td>
	  <td id="T_3eef8_row16_col37" class="data row16 col37" >6.83%</td>
	  <td id="T_3eef8_row16_col38" class="data row16 col38" >8.24%</td>
	  <td id="T_3eef8_row16_col39" class="data row16 col39" >9.92%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row17" class="row_heading level0 row17" >17</th>
	  <td id="T_3eef8_row17_col0" class="data row17 col0" ></td>
	  <td id="T_3eef8_row17_col1" class="data row17 col1" ></td>
	  <td id="T_3eef8_row17_col2" class="data row17 col2" ></td>
	  <td id="T_3eef8_row17_col3" class="data row17 col3" ></td>
	  <td id="T_3eef8_row17_col4" class="data row17 col4" ></td>
	  <td id="T_3eef8_row17_col5" class="data row17 col5" ></td>
	  <td id="T_3eef8_row17_col6" class="data row17 col6" ></td>
	  <td id="T_3eef8_row17_col7" class="data row17 col7" ></td>
	  <td id="T_3eef8_row17_col8" class="data row17 col8" ></td>
	  <td id="T_3eef8_row17_col9" class="data row17 col9" ></td>
	  <td id="T_3eef8_row17_col10" class="data row17 col10" ></td>
	  <td id="T_3eef8_row17_col11" class="data row17 col11" ></td>
	  <td id="T_3eef8_row17_col12" class="data row17 col12" ></td>
	  <td id="T_3eef8_row17_col13" class="data row17 col13" ></td>
	  <td id="T_3eef8_row17_col14" class="data row17 col14" ></td>
	  <td id="T_3eef8_row17_col15" class="data row17 col15" ></td>
	  <td id="T_3eef8_row17_col16" class="data row17 col16" ></td>
	  <td id="T_3eef8_row17_col17" class="data row17 col17" >0.06%</td>
	  <td id="T_3eef8_row17_col18" class="data row17 col18" >0.08%</td>
	  <td id="T_3eef8_row17_col19" class="data row17 col19" >0.10%</td>
	  <td id="T_3eef8_row17_col20" class="data row17 col20" >0.13%</td>
	  <td id="T_3eef8_row17_col21" class="data row17 col21" >0.16%</td>
	  <td id="T_3eef8_row17_col22" class="data row17 col22" >0.20%</td>
	  <td id="T_3eef8_row17_col23" class="data row17 col23" >0.26%</td>
	  <td id="T_3eef8_row17_col24" class="data row17 col24" >0.32%</td>
	  <td id="T_3eef8_row17_col25" class="data row17 col25" >0.40%</td>
	  <td id="T_3eef8_row17_col26" class="data row17 col26" >0.51%</td>
	  <td id="T_3eef8_row17_col27" class="data row17 col27" >0.63%</td>
	  <td id="T_3eef8_row17_col28" class="data row17 col28" >0.78%</td>
	  <td id="T_3eef8_row17_col29" class="data row17 col29" >0.96%</td>
	  <td id="T_3eef8_row17_col30" class="data row17 col30" >1.18%</td>
	  <td id="T_3eef8_row17_col31" class="data row17 col31" >1.45%</td>
	  <td id="T_3eef8_row17_col32" class="data row17 col32" >1.77%</td>
	  <td id="T_3eef8_row17_col33" class="data row17 col33" >2.17%</td>
	  <td id="T_3eef8_row17_col34" class="data row17 col34" >2.64%</td>
	  <td id="T_3eef8_row17_col35" class="data row17 col35" >3.21%</td>
	  <td id="T_3eef8_row17_col36" class="data row17 col36" >3.90%</td>
	  <td id="T_3eef8_row17_col37" class="data row17 col37" >4.71%</td>
	  <td id="T_3eef8_row17_col38" class="data row17 col38" >5.69%</td>
	  <td id="T_3eef8_row17_col39" class="data row17 col39" >6.85%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row18" class="row_heading level0 row18" >18</th>
	  <td id="T_3eef8_row18_col0" class="data row18 col0" ></td>
	  <td id="T_3eef8_row18_col1" class="data row18 col1" ></td>
	  <td id="T_3eef8_row18_col2" class="data row18 col2" ></td>
	  <td id="T_3eef8_row18_col3" class="data row18 col3" ></td>
	  <td id="T_3eef8_row18_col4" class="data row18 col4" ></td>
	  <td id="T_3eef8_row18_col5" class="data row18 col5" ></td>
	  <td id="T_3eef8_row18_col6" class="data row18 col6" ></td>
	  <td id="T_3eef8_row18_col7" class="data row18 col7" ></td>
	  <td id="T_3eef8_row18_col8" class="data row18 col8" ></td>
	  <td id="T_3eef8_row18_col9" class="data row18 col9" ></td>
	  <td id="T_3eef8_row18_col10" class="data row18 col10" ></td>
	  <td id="T_3eef8_row18_col11" class="data row18 col11" ></td>
	  <td id="T_3eef8_row18_col12" class="data row18 col12" ></td>
	  <td id="T_3eef8_row18_col13" class="data row18 col13" ></td>
	  <td id="T_3eef8_row18_col14" class="data row18 col14" ></td>
	  <td id="T_3eef8_row18_col15" class="data row18 col15" ></td>
	  <td id="T_3eef8_row18_col16" class="data row18 col16" ></td>
	  <td id="T_3eef8_row18_col17" class="data row18 col17" ></td>
	  <td id="T_3eef8_row18_col18" class="data row18 col18" >0.06%</td>
	  <td id="T_3eef8_row18_col19" class="data row18 col19" >0.07%</td>
	  <td id="T_3eef8_row18_col20" class="data row18 col20" >0.09%</td>
	  <td id="T_3eef8_row18_col21" class="data row18 col21" >0.12%</td>
	  <td id="T_3eef8_row18_col22" class="data row18 col22" >0.14%</td>
	  <td id="T_3eef8_row18_col23" class="data row18 col23" >0.18%</td>
	  <td id="T_3eef8_row18_col24" class="data row18 col24" >0.23%</td>
	  <td id="T_3eef8_row18_col25" class="data row18 col25" >0.29%</td>
	  <td id="T_3eef8_row18_col26" class="data row18 col26" >0.36%</td>
	  <td id="T_3eef8_row18_col27" class="data row18 col27" >0.44%</td>
	  <td id="T_3eef8_row18_col28" class="data row18 col28" >0.55%</td>
	  <td id="T_3eef8_row18_col29" class="data row18 col29" >0.68%</td>
	  <td id="T_3eef8_row18_col30" class="data row18 col30" >0.83%</td>
	  <td id="T_3eef8_row18_col31" class="data row18 col31" >1.02%</td>
	  <td id="T_3eef8_row18_col32" class="data row18 col32" >1.25%</td>
	  <td id="T_3eef8_row18_col33" class="data row18 col33" >1.53%</td>
	  <td id="T_3eef8_row18_col34" class="data row18 col34" >1.87%</td>
	  <td id="T_3eef8_row18_col35" class="data row18 col35" >2.27%</td>
	  <td id="T_3eef8_row18_col36" class="data row18 col36" >2.76%</td>
	  <td id="T_3eef8_row18_col37" class="data row18 col37" >3.34%</td>
	  <td id="T_3eef8_row18_col38" class="data row18 col38" >4.03%</td>
	  <td id="T_3eef8_row18_col39" class="data row18 col39" >4.85%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row19" class="row_heading level0 row19" >19</th>
	  <td id="T_3eef8_row19_col0" class="data row19 col0" ></td>
	  <td id="T_3eef8_row19_col1" class="data row19 col1" ></td>
	  <td id="T_3eef8_row19_col2" class="data row19 col2" ></td>
	  <td id="T_3eef8_row19_col3" class="data row19 col3" ></td>
	  <td id="T_3eef8_row19_col4" class="data row19 col4" ></td>
	  <td id="T_3eef8_row19_col5" class="data row19 col5" ></td>
	  <td id="T_3eef8_row19_col6" class="data row19 col6" ></td>
	  <td id="T_3eef8_row19_col7" class="data row19 col7" ></td>
	  <td id="T_3eef8_row19_col8" class="data row19 col8" ></td>
	  <td id="T_3eef8_row19_col9" class="data row19 col9" ></td>
	  <td id="T_3eef8_row19_col10" class="data row19 col10" ></td>
	  <td id="T_3eef8_row19_col11" class="data row19 col11" ></td>
	  <td id="T_3eef8_row19_col12" class="data row19 col12" ></td>
	  <td id="T_3eef8_row19_col13" class="data row19 col13" ></td>
	  <td id="T_3eef8_row19_col14" class="data row19 col14" ></td>
	  <td id="T_3eef8_row19_col15" class="data row19 col15" ></td>
	  <td id="T_3eef8_row19_col16" class="data row19 col16" ></td>
	  <td id="T_3eef8_row19_col17" class="data row19 col17" ></td>
	  <td id="T_3eef8_row19_col18" class="data row19 col18" ></td>
	  <td id="T_3eef8_row19_col19" class="data row19 col19" >0.05%</td>
	  <td id="T_3eef8_row19_col20" class="data row19 col20" >0.07%</td>
	  <td id="T_3eef8_row19_col21" class="data row19 col21" >0.08%</td>
	  <td id="T_3eef8_row19_col22" class="data row19 col22" >0.10%</td>
	  <td id="T_3eef8_row19_col23" class="data row19 col23" >0.13%</td>
	  <td id="T_3eef8_row19_col24" class="data row19 col24" >0.16%</td>
	  <td id="T_3eef8_row19_col25" class="data row19 col25" >0.20%</td>
	  <td id="T_3eef8_row19_col26" class="data row19 col26" >0.25%</td>
	  <td id="T_3eef8_row19_col27" class="data row19 col27" >0.32%</td>
	  <td id="T_3eef8_row19_col28" class="data row19 col28" >0.39%</td>
	  <td id="T_3eef8_row19_col29" class="data row19 col29" >0.48%</td>
	  <td id="T_3eef8_row19_col30" class="data row19 col30" >0.59%</td>
	  <td id="T_3eef8_row19_col31" class="data row19 col31" >0.73%</td>
	  <td id="T_3eef8_row19_col32" class="data row19 col32" >0.89%</td>
	  <td id="T_3eef8_row19_col33" class="data row19 col33" >1.09%</td>
	  <td id="T_3eef8_row19_col34" class="data row19 col34" >1.33%</td>
	  <td id="T_3eef8_row19_col35" class="data row19 col35" >1.62%</td>
	  <td id="T_3eef8_row19_col36" class="data row19 col36" >1.96%</td>
	  <td id="T_3eef8_row19_col37" class="data row19 col37" >2.37%</td>
	  <td id="T_3eef8_row19_col38" class="data row19 col38" >2.86%</td>
	  <td id="T_3eef8_row19_col39" class="data row19 col39" >3.44%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row20" class="row_heading level0 row20" >20</th>
	  <td id="T_3eef8_row20_col0" class="data row20 col0" ></td>
	  <td id="T_3eef8_row20_col1" class="data row20 col1" ></td>
	  <td id="T_3eef8_row20_col2" class="data row20 col2" ></td>
	  <td id="T_3eef8_row20_col3" class="data row20 col3" ></td>
	  <td id="T_3eef8_row20_col4" class="data row20 col4" ></td>
	  <td id="T_3eef8_row20_col5" class="data row20 col5" ></td>
	  <td id="T_3eef8_row20_col6" class="data row20 col6" ></td>
	  <td id="T_3eef8_row20_col7" class="data row20 col7" ></td>
	  <td id="T_3eef8_row20_col8" class="data row20 col8" ></td>
	  <td id="T_3eef8_row20_col9" class="data row20 col9" ></td>
	  <td id="T_3eef8_row20_col10" class="data row20 col10" ></td>
	  <td id="T_3eef8_row20_col11" class="data row20 col11" ></td>
	  <td id="T_3eef8_row20_col12" class="data row20 col12" ></td>
	  <td id="T_3eef8_row20_col13" class="data row20 col13" ></td>
	  <td id="T_3eef8_row20_col14" class="data row20 col14" ></td>
	  <td id="T_3eef8_row20_col15" class="data row20 col15" ></td>
	  <td id="T_3eef8_row20_col16" class="data row20 col16" ></td>
	  <td id="T_3eef8_row20_col17" class="data row20 col17" ></td>
	  <td id="T_3eef8_row20_col18" class="data row20 col18" ></td>
	  <td id="T_3eef8_row20_col19" class="data row20 col19" ></td>
	  <td id="T_3eef8_row20_col20" class="data row20 col20" >0.05%</td>
	  <td id="T_3eef8_row20_col21" class="data row20 col21" >0.06%</td>
	  <td id="T_3eef8_row20_col22" class="data row20 col22" >0.07%</td>
	  <td id="T_3eef8_row20_col23" class="data row20 col23" >0.09%</td>
	  <td id="T_3eef8_row20_col24" class="data row20 col24" >0.11%</td>
	  <td id="T_3eef8_row20_col25" class="data row20 col25" >0.14%</td>
	  <td id="T_3eef8_row20_col26" class="data row20 col26" >0.18%</td>
	  <td id="T_3eef8_row20_col27" class="data row20 col27" >0.22%</td>
	  <td id="T_3eef8_row20_col28" class="data row20 col28" >0.27%</td>
	  <td id="T_3eef8_row20_col29" class="data row20 col29" >0.33%</td>
	  <td id="T_3eef8_row20_col30" class="data row20 col30" >0.41%</td>
	  <td id="T_3eef8_row20_col31" class="data row20 col31" >0.51%</td>
	  <td id="T_3eef8_row20_col32" class="data row20 col32" >0.62%</td>
	  <td id="T_3eef8_row20_col33" class="data row20 col33" >0.76%</td>
	  <td id="T_3eef8_row20_col34" class="data row20 col34" >0.92%</td>
	  <td id="T_3eef8_row20_col35" class="data row20 col35" >1.12%</td>
	  <td id="T_3eef8_row20_col36" class="data row20 col36" >1.36%</td>
	  <td id="T_3eef8_row20_col37" class="data row20 col37" >1.65%</td>
	  <td id="T_3eef8_row20_col38" class="data row20 col38" >1.99%</td>
	  <td id="T_3eef8_row20_col39" class="data row20 col39" >2.39%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row21" class="row_heading level0 row21" >21</th>
	  <td id="T_3eef8_row21_col0" class="data row21 col0" ></td>
	  <td id="T_3eef8_row21_col1" class="data row21 col1" ></td>
	  <td id="T_3eef8_row21_col2" class="data row21 col2" ></td>
	  <td id="T_3eef8_row21_col3" class="data row21 col3" ></td>
	  <td id="T_3eef8_row21_col4" class="data row21 col4" ></td>
	  <td id="T_3eef8_row21_col5" class="data row21 col5" ></td>
	  <td id="T_3eef8_row21_col6" class="data row21 col6" ></td>
	  <td id="T_3eef8_row21_col7" class="data row21 col7" ></td>
	  <td id="T_3eef8_row21_col8" class="data row21 col8" ></td>
	  <td id="T_3eef8_row21_col9" class="data row21 col9" ></td>
	  <td id="T_3eef8_row21_col10" class="data row21 col10" ></td>
	  <td id="T_3eef8_row21_col11" class="data row21 col11" ></td>
	  <td id="T_3eef8_row21_col12" class="data row21 col12" ></td>
	  <td id="T_3eef8_row21_col13" class="data row21 col13" ></td>
	  <td id="T_3eef8_row21_col14" class="data row21 col14" ></td>
	  <td id="T_3eef8_row21_col15" class="data row21 col15" ></td>
	  <td id="T_3eef8_row21_col16" class="data row21 col16" ></td>
	  <td id="T_3eef8_row21_col17" class="data row21 col17" ></td>
	  <td id="T_3eef8_row21_col18" class="data row21 col18" ></td>
	  <td id="T_3eef8_row21_col19" class="data row21 col19" ></td>
	  <td id="T_3eef8_row21_col20" class="data row21 col20" ></td>
	  <td id="T_3eef8_row21_col21" class="data row21 col21" >0.04%</td>
	  <td id="T_3eef8_row21_col22" class="data row21 col22" >0.05%</td>
	  <td id="T_3eef8_row21_col23" class="data row21 col23" >0.06%</td>
	  <td id="T_3eef8_row21_col24" class="data row21 col24" >0.08%</td>
	  <td id="T_3eef8_row21_col25" class="data row21 col25" >0.10%</td>
	  <td id="T_3eef8_row21_col26" class="data row21 col26" >0.12%</td>
	  <td id="T_3eef8_row21_col27" class="data row21 col27" >0.15%</td>
	  <td id="T_3eef8_row21_col28" class="data row21 col28" >0.19%</td>
	  <td id="T_3eef8_row21_col29" class="data row21 col29" >0.23%</td>
	  <td id="T_3eef8_row21_col30" class="data row21 col30" >0.28%</td>
	  <td id="T_3eef8_row21_col31" class="data row21 col31" >0.35%</td>
	  <td id="T_3eef8_row21_col32" class="data row21 col32" >0.42%</td>
	  <td id="T_3eef8_row21_col33" class="data row21 col33" >0.52%</td>
	  <td id="T_3eef8_row21_col34" class="data row21 col34" >0.63%</td>
	  <td id="T_3eef8_row21_col35" class="data row21 col35" >0.77%</td>
	  <td id="T_3eef8_row21_col36" class="data row21 col36" >0.93%</td>
	  <td id="T_3eef8_row21_col37" class="data row21 col37" >1.13%</td>
	  <td id="T_3eef8_row21_col38" class="data row21 col38" >1.36%</td>
	  <td id="T_3eef8_row21_col39" class="data row21 col39" >1.64%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row22" class="row_heading level0 row22" >22</th>
	  <td id="T_3eef8_row22_col0" class="data row22 col0" ></td>
	  <td id="T_3eef8_row22_col1" class="data row22 col1" ></td>
	  <td id="T_3eef8_row22_col2" class="data row22 col2" ></td>
	  <td id="T_3eef8_row22_col3" class="data row22 col3" ></td>
	  <td id="T_3eef8_row22_col4" class="data row22 col4" ></td>
	  <td id="T_3eef8_row22_col5" class="data row22 col5" ></td>
	  <td id="T_3eef8_row22_col6" class="data row22 col6" ></td>
	  <td id="T_3eef8_row22_col7" class="data row22 col7" ></td>
	  <td id="T_3eef8_row22_col8" class="data row22 col8" ></td>
	  <td id="T_3eef8_row22_col9" class="data row22 col9" ></td>
	  <td id="T_3eef8_row22_col10" class="data row22 col10" ></td>
	  <td id="T_3eef8_row22_col11" class="data row22 col11" ></td>
	  <td id="T_3eef8_row22_col12" class="data row22 col12" ></td>
	  <td id="T_3eef8_row22_col13" class="data row22 col13" ></td>
	  <td id="T_3eef8_row22_col14" class="data row22 col14" ></td>
	  <td id="T_3eef8_row22_col15" class="data row22 col15" ></td>
	  <td id="T_3eef8_row22_col16" class="data row22 col16" ></td>
	  <td id="T_3eef8_row22_col17" class="data row22 col17" ></td>
	  <td id="T_3eef8_row22_col18" class="data row22 col18" ></td>
	  <td id="T_3eef8_row22_col19" class="data row22 col19" ></td>
	  <td id="T_3eef8_row22_col20" class="data row22 col20" ></td>
	  <td id="T_3eef8_row22_col21" class="data row22 col21" ></td>
	  <td id="T_3eef8_row22_col22" class="data row22 col22" >0.03%</td>
	  <td id="T_3eef8_row22_col23" class="data row22 col23" >0.04%</td>
	  <td id="T_3eef8_row22_col24" class="data row22 col24" >0.05%</td>
	  <td id="T_3eef8_row22_col25" class="data row22 col25" >0.07%</td>
	  <td id="T_3eef8_row22_col26" class="data row22 col26" >0.08%</td>
	  <td id="T_3eef8_row22_col27" class="data row22 col27" >0.10%</td>
	  <td id="T_3eef8_row22_col28" class="data row22 col28" >0.13%</td>
	  <td id="T_3eef8_row22_col29" class="data row22 col29" >0.16%</td>
	  <td id="T_3eef8_row22_col30" class="data row22 col30" >0.19%</td>
	  <td id="T_3eef8_row22_col31" class="data row22 col31" >0.24%</td>
	  <td id="T_3eef8_row22_col32" class="data row22 col32" >0.29%</td>
	  <td id="T_3eef8_row22_col33" class="data row22 col33" >0.36%</td>
	  <td id="T_3eef8_row22_col34" class="data row22 col34" >0.43%</td>
	  <td id="T_3eef8_row22_col35" class="data row22 col35" >0.53%</td>
	  <td id="T_3eef8_row22_col36" class="data row22 col36" >0.64%</td>
	  <td id="T_3eef8_row22_col37" class="data row22 col37" >0.77%</td>
	  <td id="T_3eef8_row22_col38" class="data row22 col38" >0.93%</td>
	  <td id="T_3eef8_row22_col39" class="data row22 col39" >1.12%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row23" class="row_heading level0 row23" >23</th>
	  <td id="T_3eef8_row23_col0" class="data row23 col0" ></td>
	  <td id="T_3eef8_row23_col1" class="data row23 col1" ></td>
	  <td id="T_3eef8_row23_col2" class="data row23 col2" ></td>
	  <td id="T_3eef8_row23_col3" class="data row23 col3" ></td>
	  <td id="T_3eef8_row23_col4" class="data row23 col4" ></td>
	  <td id="T_3eef8_row23_col5" class="data row23 col5" ></td>
	  <td id="T_3eef8_row23_col6" class="data row23 col6" ></td>
	  <td id="T_3eef8_row23_col7" class="data row23 col7" ></td>
	  <td id="T_3eef8_row23_col8" class="data row23 col8" ></td>
	  <td id="T_3eef8_row23_col9" class="data row23 col9" ></td>
	  <td id="T_3eef8_row23_col10" class="data row23 col10" ></td>
	  <td id="T_3eef8_row23_col11" class="data row23 col11" ></td>
	  <td id="T_3eef8_row23_col12" class="data row23 col12" ></td>
	  <td id="T_3eef8_row23_col13" class="data row23 col13" ></td>
	  <td id="T_3eef8_row23_col14" class="data row23 col14" ></td>
	  <td id="T_3eef8_row23_col15" class="data row23 col15" ></td>
	  <td id="T_3eef8_row23_col16" class="data row23 col16" ></td>
	  <td id="T_3eef8_row23_col17" class="data row23 col17" ></td>
	  <td id="T_3eef8_row23_col18" class="data row23 col18" ></td>
	  <td id="T_3eef8_row23_col19" class="data row23 col19" ></td>
	  <td id="T_3eef8_row23_col20" class="data row23 col20" ></td>
	  <td id="T_3eef8_row23_col21" class="data row23 col21" ></td>
	  <td id="T_3eef8_row23_col22" class="data row23 col22" ></td>
	  <td id="T_3eef8_row23_col23" class="data row23 col23" >0.03%</td>
	  <td id="T_3eef8_row23_col24" class="data row23 col24" >0.04%</td>
	  <td id="T_3eef8_row23_col25" class="data row23 col25" >0.05%</td>
	  <td id="T_3eef8_row23_col26" class="data row23 col26" >0.06%</td>
	  <td id="T_3eef8_row23_col27" class="data row23 col27" >0.07%</td>
	  <td id="T_3eef8_row23_col28" class="data row23 col28" >0.09%</td>
	  <td id="T_3eef8_row23_col29" class="data row23 col29" >0.11%</td>
	  <td id="T_3eef8_row23_col30" class="data row23 col30" >0.13%</td>
	  <td id="T_3eef8_row23_col31" class="data row23 col31" >0.17%</td>
	  <td id="T_3eef8_row23_col32" class="data row23 col32" >0.20%</td>
	  <td id="T_3eef8_row23_col33" class="data row23 col33" >0.25%</td>
	  <td id="T_3eef8_row23_col34" class="data row23 col34" >0.30%</td>
	  <td id="T_3eef8_row23_col35" class="data row23 col35" >0.37%</td>
	  <td id="T_3eef8_row23_col36" class="data row23 col36" >0.45%</td>
	  <td id="T_3eef8_row23_col37" class="data row23 col37" >0.54%</td>
	  <td id="T_3eef8_row23_col38" class="data row23 col38" >0.65%</td>
	  <td id="T_3eef8_row23_col39" class="data row23 col39" >0.78%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row24" class="row_heading level0 row24" >24</th>
	  <td id="T_3eef8_row24_col0" class="data row24 col0" ></td>
	  <td id="T_3eef8_row24_col1" class="data row24 col1" ></td>
	  <td id="T_3eef8_row24_col2" class="data row24 col2" ></td>
	  <td id="T_3eef8_row24_col3" class="data row24 col3" ></td>
	  <td id="T_3eef8_row24_col4" class="data row24 col4" ></td>
	  <td id="T_3eef8_row24_col5" class="data row24 col5" ></td>
	  <td id="T_3eef8_row24_col6" class="data row24 col6" ></td>
	  <td id="T_3eef8_row24_col7" class="data row24 col7" ></td>
	  <td id="T_3eef8_row24_col8" class="data row24 col8" ></td>
	  <td id="T_3eef8_row24_col9" class="data row24 col9" ></td>
	  <td id="T_3eef8_row24_col10" class="data row24 col10" ></td>
	  <td id="T_3eef8_row24_col11" class="data row24 col11" ></td>
	  <td id="T_3eef8_row24_col12" class="data row24 col12" ></td>
	  <td id="T_3eef8_row24_col13" class="data row24 col13" ></td>
	  <td id="T_3eef8_row24_col14" class="data row24 col14" ></td>
	  <td id="T_3eef8_row24_col15" class="data row24 col15" ></td>
	  <td id="T_3eef8_row24_col16" class="data row24 col16" ></td>
	  <td id="T_3eef8_row24_col17" class="data row24 col17" ></td>
	  <td id="T_3eef8_row24_col18" class="data row24 col18" ></td>
	  <td id="T_3eef8_row24_col19" class="data row24 col19" ></td>
	  <td id="T_3eef8_row24_col20" class="data row24 col20" ></td>
	  <td id="T_3eef8_row24_col21" class="data row24 col21" ></td>
	  <td id="T_3eef8_row24_col22" class="data row24 col22" ></td>
	  <td id="T_3eef8_row24_col23" class="data row24 col23" ></td>
	  <td id="T_3eef8_row24_col24" class="data row24 col24" >0.03%</td>
	  <td id="T_3eef8_row24_col25" class="data row24 col25" >0.03%</td>
	  <td id="T_3eef8_row24_col26" class="data row24 col26" >0.04%</td>
	  <td id="T_3eef8_row24_col27" class="data row24 col27" >0.05%</td>
	  <td id="T_3eef8_row24_col28" class="data row24 col28" >0.06%</td>
	  <td id="T_3eef8_row24_col29" class="data row24 col29" >0.08%</td>
	  <td id="T_3eef8_row24_col30" class="data row24 col30" >0.10%</td>
	  <td id="T_3eef8_row24_col31" class="data row24 col31" >0.12%</td>
	  <td id="T_3eef8_row24_col32" class="data row24 col32" >0.15%</td>
	  <td id="T_3eef8_row24_col33" class="data row24 col33" >0.18%</td>
	  <td id="T_3eef8_row24_col34" class="data row24 col34" >0.22%</td>
	  <td id="T_3eef8_row24_col35" class="data row24 col35" >0.27%</td>
	  <td id="T_3eef8_row24_col36" class="data row24 col36" >0.32%</td>
	  <td id="T_3eef8_row24_col37" class="data row24 col37" >0.39%</td>
	  <td id="T_3eef8_row24_col38" class="data row24 col38" >0.47%</td>
	  <td id="T_3eef8_row24_col39" class="data row24 col39" >0.57%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row25" class="row_heading level0 row25" >25</th>
	  <td id="T_3eef8_row25_col0" class="data row25 col0" ></td>
	  <td id="T_3eef8_row25_col1" class="data row25 col1" ></td>
	  <td id="T_3eef8_row25_col2" class="data row25 col2" ></td>
	  <td id="T_3eef8_row25_col3" class="data row25 col3" ></td>
	  <td id="T_3eef8_row25_col4" class="data row25 col4" ></td>
	  <td id="T_3eef8_row25_col5" class="data row25 col5" ></td>
	  <td id="T_3eef8_row25_col6" class="data row25 col6" ></td>
	  <td id="T_3eef8_row25_col7" class="data row25 col7" ></td>
	  <td id="T_3eef8_row25_col8" class="data row25 col8" ></td>
	  <td id="T_3eef8_row25_col9" class="data row25 col9" ></td>
	  <td id="T_3eef8_row25_col10" class="data row25 col10" ></td>
	  <td id="T_3eef8_row25_col11" class="data row25 col11" ></td>
	  <td id="T_3eef8_row25_col12" class="data row25 col12" ></td>
	  <td id="T_3eef8_row25_col13" class="data row25 col13" ></td>
	  <td id="T_3eef8_row25_col14" class="data row25 col14" ></td>
	  <td id="T_3eef8_row25_col15" class="data row25 col15" ></td>
	  <td id="T_3eef8_row25_col16" class="data row25 col16" ></td>
	  <td id="T_3eef8_row25_col17" class="data row25 col17" ></td>
	  <td id="T_3eef8_row25_col18" class="data row25 col18" ></td>
	  <td id="T_3eef8_row25_col19" class="data row25 col19" ></td>
	  <td id="T_3eef8_row25_col20" class="data row25 col20" ></td>
	  <td id="T_3eef8_row25_col21" class="data row25 col21" ></td>
	  <td id="T_3eef8_row25_col22" class="data row25 col22" ></td>
	  <td id="T_3eef8_row25_col23" class="data row25 col23" ></td>
	  <td id="T_3eef8_row25_col24" class="data row25 col24" ></td>
	  <td id="T_3eef8_row25_col25" class="data row25 col25" >0.03%</td>
	  <td id="T_3eef8_row25_col26" class="data row25 col26" >0.03%</td>
	  <td id="T_3eef8_row25_col27" class="data row25 col27" >0.04%</td>
	  <td id="T_3eef8_row25_col28" class="data row25 col28" >0.05%</td>
	  <td id="T_3eef8_row25_col29" class="data row25 col29" >0.06%</td>
	  <td id="T_3eef8_row25_col30" class="data row25 col30" >0.07%</td>
	  <td id="T_3eef8_row25_col31" class="data row25 col31" >0.09%</td>
	  <td id="T_3eef8_row25_col32" class="data row25 col32" >0.11%</td>
	  <td id="T_3eef8_row25_col33" class="data row25 col33" >0.13%</td>
	  <td id="T_3eef8_row25_col34" class="data row25 col34" >0.16%</td>
	  <td id="T_3eef8_row25_col35" class="data row25 col35" >0.20%</td>
	  <td id="T_3eef8_row25_col36" class="data row25 col36" >0.24%</td>
	  <td id="T_3eef8_row25_col37" class="data row25 col37" >0.29%</td>
	  <td id="T_3eef8_row25_col38" class="data row25 col38" >0.35%</td>
	  <td id="T_3eef8_row25_col39" class="data row25 col39" >0.43%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row26" class="row_heading level0 row26" >26</th>
	  <td id="T_3eef8_row26_col0" class="data row26 col0" ></td>
	  <td id="T_3eef8_row26_col1" class="data row26 col1" ></td>
	  <td id="T_3eef8_row26_col2" class="data row26 col2" ></td>
	  <td id="T_3eef8_row26_col3" class="data row26 col3" ></td>
	  <td id="T_3eef8_row26_col4" class="data row26 col4" ></td>
	  <td id="T_3eef8_row26_col5" class="data row26 col5" ></td>
	  <td id="T_3eef8_row26_col6" class="data row26 col6" ></td>
	  <td id="T_3eef8_row26_col7" class="data row26 col7" ></td>
	  <td id="T_3eef8_row26_col8" class="data row26 col8" ></td>
	  <td id="T_3eef8_row26_col9" class="data row26 col9" ></td>
	  <td id="T_3eef8_row26_col10" class="data row26 col10" ></td>
	  <td id="T_3eef8_row26_col11" class="data row26 col11" ></td>
	  <td id="T_3eef8_row26_col12" class="data row26 col12" ></td>
	  <td id="T_3eef8_row26_col13" class="data row26 col13" ></td>
	  <td id="T_3eef8_row26_col14" class="data row26 col14" ></td>
	  <td id="T_3eef8_row26_col15" class="data row26 col15" ></td>
	  <td id="T_3eef8_row26_col16" class="data row26 col16" ></td>
	  <td id="T_3eef8_row26_col17" class="data row26 col17" ></td>
	  <td id="T_3eef8_row26_col18" class="data row26 col18" ></td>
	  <td id="T_3eef8_row26_col19" class="data row26 col19" ></td>
	  <td id="T_3eef8_row26_col20" class="data row26 col20" ></td>
	  <td id="T_3eef8_row26_col21" class="data row26 col21" ></td>
	  <td id="T_3eef8_row26_col22" class="data row26 col22" ></td>
	  <td id="T_3eef8_row26_col23" class="data row26 col23" ></td>
	  <td id="T_3eef8_row26_col24" class="data row26 col24" ></td>
	  <td id="T_3eef8_row26_col25" class="data row26 col25" ></td>
	  <td id="T_3eef8_row26_col26" class="data row26 col26" >0.02%</td>
	  <td id="T_3eef8_row26_col27" class="data row26 col27" >0.03%</td>
	  <td id="T_3eef8_row26_col28" class="data row26 col28" >0.04%</td>
	  <td id="T_3eef8_row26_col29" class="data row26 col29" >0.05%</td>
	  <td id="T_3eef8_row26_col30" class="data row26 col30" >0.06%</td>
	  <td id="T_3eef8_row26_col31" class="data row26 col31" >0.07%</td>
	  <td id="T_3eef8_row26_col32" class="data row26 col32" >0.08%</td>
	  <td id="T_3eef8_row26_col33" class="data row26 col33" >0.10%</td>
	  <td id="T_3eef8_row26_col34" class="data row26 col34" >0.13%</td>
	  <td id="T_3eef8_row26_col35" class="data row26 col35" >0.15%</td>
	  <td id="T_3eef8_row26_col36" class="data row26 col36" >0.18%</td>
	  <td id="T_3eef8_row26_col37" class="data row26 col37" >0.22%</td>
	  <td id="T_3eef8_row26_col38" class="data row26 col38" >0.27%</td>
	  <td id="T_3eef8_row26_col39" class="data row26 col39" >0.32%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row27" class="row_heading level0 row27" >27</th>
	  <td id="T_3eef8_row27_col0" class="data row27 col0" ></td>
	  <td id="T_3eef8_row27_col1" class="data row27 col1" ></td>
	  <td id="T_3eef8_row27_col2" class="data row27 col2" ></td>
	  <td id="T_3eef8_row27_col3" class="data row27 col3" ></td>
	  <td id="T_3eef8_row27_col4" class="data row27 col4" ></td>
	  <td id="T_3eef8_row27_col5" class="data row27 col5" ></td>
	  <td id="T_3eef8_row27_col6" class="data row27 col6" ></td>
	  <td id="T_3eef8_row27_col7" class="data row27 col7" ></td>
	  <td id="T_3eef8_row27_col8" class="data row27 col8" ></td>
	  <td id="T_3eef8_row27_col9" class="data row27 col9" ></td>
	  <td id="T_3eef8_row27_col10" class="data row27 col10" ></td>
	  <td id="T_3eef8_row27_col11" class="data row27 col11" ></td>
	  <td id="T_3eef8_row27_col12" class="data row27 col12" ></td>
	  <td id="T_3eef8_row27_col13" class="data row27 col13" ></td>
	  <td id="T_3eef8_row27_col14" class="data row27 col14" ></td>
	  <td id="T_3eef8_row27_col15" class="data row27 col15" ></td>
	  <td id="T_3eef8_row27_col16" class="data row27 col16" ></td>
	  <td id="T_3eef8_row27_col17" class="data row27 col17" ></td>
	  <td id="T_3eef8_row27_col18" class="data row27 col18" ></td>
	  <td id="T_3eef8_row27_col19" class="data row27 col19" ></td>
	  <td id="T_3eef8_row27_col20" class="data row27 col20" ></td>
	  <td id="T_3eef8_row27_col21" class="data row27 col21" ></td>
	  <td id="T_3eef8_row27_col22" class="data row27 col22" ></td>
	  <td id="T_3eef8_row27_col23" class="data row27 col23" ></td>
	  <td id="T_3eef8_row27_col24" class="data row27 col24" ></td>
	  <td id="T_3eef8_row27_col25" class="data row27 col25" ></td>
	  <td id="T_3eef8_row27_col26" class="data row27 col26" ></td>
	  <td id="T_3eef8_row27_col27" class="data row27 col27" >0.02%</td>
	  <td id="T_3eef8_row27_col28" class="data row27 col28" >0.03%</td>
	  <td id="T_3eef8_row27_col29" class="data row27 col29" >0.03%</td>
	  <td id="T_3eef8_row27_col30" class="data row27 col30" >0.04%</td>
	  <td id="T_3eef8_row27_col31" class="data row27 col31" >0.05%</td>
	  <td id="T_3eef8_row27_col32" class="data row27 col32" >0.06%</td>
	  <td id="T_3eef8_row27_col33" class="data row27 col33" >0.08%</td>
	  <td id="T_3eef8_row27_col34" class="data row27 col34" >0.10%</td>
	  <td id="T_3eef8_row27_col35" class="data row27 col35" >0.12%</td>
	  <td id="T_3eef8_row27_col36" class="data row27 col36" >0.14%</td>
	  <td id="T_3eef8_row27_col37" class="data row27 col37" >0.17%</td>
	  <td id="T_3eef8_row27_col38" class="data row27 col38" >0.21%</td>
	  <td id="T_3eef8_row27_col39" class="data row27 col39" >0.25%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row28" class="row_heading level0 row28" >28</th>
	  <td id="T_3eef8_row28_col0" class="data row28 col0" ></td>
	  <td id="T_3eef8_row28_col1" class="data row28 col1" ></td>
	  <td id="T_3eef8_row28_col2" class="data row28 col2" ></td>
	  <td id="T_3eef8_row28_col3" class="data row28 col3" ></td>
	  <td id="T_3eef8_row28_col4" class="data row28 col4" ></td>
	  <td id="T_3eef8_row28_col5" class="data row28 col5" ></td>
	  <td id="T_3eef8_row28_col6" class="data row28 col6" ></td>
	  <td id="T_3eef8_row28_col7" class="data row28 col7" ></td>
	  <td id="T_3eef8_row28_col8" class="data row28 col8" ></td>
	  <td id="T_3eef8_row28_col9" class="data row28 col9" ></td>
	  <td id="T_3eef8_row28_col10" class="data row28 col10" ></td>
	  <td id="T_3eef8_row28_col11" class="data row28 col11" ></td>
	  <td id="T_3eef8_row28_col12" class="data row28 col12" ></td>
	  <td id="T_3eef8_row28_col13" class="data row28 col13" ></td>
	  <td id="T_3eef8_row28_col14" class="data row28 col14" ></td>
	  <td id="T_3eef8_row28_col15" class="data row28 col15" ></td>
	  <td id="T_3eef8_row28_col16" class="data row28 col16" ></td>
	  <td id="T_3eef8_row28_col17" class="data row28 col17" ></td>
	  <td id="T_3eef8_row28_col18" class="data row28 col18" ></td>
	  <td id="T_3eef8_row28_col19" class="data row28 col19" ></td>
	  <td id="T_3eef8_row28_col20" class="data row28 col20" ></td>
	  <td id="T_3eef8_row28_col21" class="data row28 col21" ></td>
	  <td id="T_3eef8_row28_col22" class="data row28 col22" ></td>
	  <td id="T_3eef8_row28_col23" class="data row28 col23" ></td>
	  <td id="T_3eef8_row28_col24" class="data row28 col24" ></td>
	  <td id="T_3eef8_row28_col25" class="data row28 col25" ></td>
	  <td id="T_3eef8_row28_col26" class="data row28 col26" ></td>
	  <td id="T_3eef8_row28_col27" class="data row28 col27" ></td>
	  <td id="T_3eef8_row28_col28" class="data row28 col28" >0.02%</td>
	  <td id="T_3eef8_row28_col29" class="data row28 col29" >0.03%</td>
	  <td id="T_3eef8_row28_col30" class="data row28 col30" >0.03%</td>
	  <td id="T_3eef8_row28_col31" class="data row28 col31" >0.04%</td>
	  <td id="T_3eef8_row28_col32" class="data row28 col32" >0.05%</td>
	  <td id="T_3eef8_row28_col33" class="data row28 col33" >0.06%</td>
	  <td id="T_3eef8_row28_col34" class="data row28 col34" >0.07%</td>
	  <td id="T_3eef8_row28_col35" class="data row28 col35" >0.09%</td>
	  <td id="T_3eef8_row28_col36" class="data row28 col36" >0.11%</td>
	  <td id="T_3eef8_row28_col37" class="data row28 col37" >0.13%</td>
	  <td id="T_3eef8_row28_col38" class="data row28 col38" >0.16%</td>
	  <td id="T_3eef8_row28_col39" class="data row28 col39" >0.19%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row29" class="row_heading level0 row29" >29</th>
	  <td id="T_3eef8_row29_col0" class="data row29 col0" ></td>
	  <td id="T_3eef8_row29_col1" class="data row29 col1" ></td>
	  <td id="T_3eef8_row29_col2" class="data row29 col2" ></td>
	  <td id="T_3eef8_row29_col3" class="data row29 col3" ></td>
	  <td id="T_3eef8_row29_col4" class="data row29 col4" ></td>
	  <td id="T_3eef8_row29_col5" class="data row29 col5" ></td>
	  <td id="T_3eef8_row29_col6" class="data row29 col6" ></td>
	  <td id="T_3eef8_row29_col7" class="data row29 col7" ></td>
	  <td id="T_3eef8_row29_col8" class="data row29 col8" ></td>
	  <td id="T_3eef8_row29_col9" class="data row29 col9" ></td>
	  <td id="T_3eef8_row29_col10" class="data row29 col10" ></td>
	  <td id="T_3eef8_row29_col11" class="data row29 col11" ></td>
	  <td id="T_3eef8_row29_col12" class="data row29 col12" ></td>
	  <td id="T_3eef8_row29_col13" class="data row29 col13" ></td>
	  <td id="T_3eef8_row29_col14" class="data row29 col14" ></td>
	  <td id="T_3eef8_row29_col15" class="data row29 col15" ></td>
	  <td id="T_3eef8_row29_col16" class="data row29 col16" ></td>
	  <td id="T_3eef8_row29_col17" class="data row29 col17" ></td>
	  <td id="T_3eef8_row29_col18" class="data row29 col18" ></td>
	  <td id="T_3eef8_row29_col19" class="data row29 col19" ></td>
	  <td id="T_3eef8_row29_col20" class="data row29 col20" ></td>
	  <td id="T_3eef8_row29_col21" class="data row29 col21" ></td>
	  <td id="T_3eef8_row29_col22" class="data row29 col22" ></td>
	  <td id="T_3eef8_row29_col23" class="data row29 col23" ></td>
	  <td id="T_3eef8_row29_col24" class="data row29 col24" ></td>
	  <td id="T_3eef8_row29_col25" class="data row29 col25" ></td>
	  <td id="T_3eef8_row29_col26" class="data row29 col26" ></td>
	  <td id="T_3eef8_row29_col27" class="data row29 col27" ></td>
	  <td id="T_3eef8_row29_col28" class="data row29 col28" ></td>
	  <td id="T_3eef8_row29_col29" class="data row29 col29" >0.02%</td>
	  <td id="T_3eef8_row29_col30" class="data row29 col30" >0.02%</td>
	  <td id="T_3eef8_row29_col31" class="data row29 col31" >0.03%</td>
	  <td id="T_3eef8_row29_col32" class="data row29 col32" >0.04%</td>
	  <td id="T_3eef8_row29_col33" class="data row29 col33" >0.04%</td>
	  <td id="T_3eef8_row29_col34" class="data row29 col34" >0.05%</td>
	  <td id="T_3eef8_row29_col35" class="data row29 col35" >0.07%</td>
	  <td id="T_3eef8_row29_col36" class="data row29 col36" >0.08%</td>
	  <td id="T_3eef8_row29_col37" class="data row29 col37" >0.10%</td>
	  <td id="T_3eef8_row29_col38" class="data row29 col38" >0.12%</td>
	  <td id="T_3eef8_row29_col39" class="data row29 col39" >0.14%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row30" class="row_heading level0 row30" >30</th>
	  <td id="T_3eef8_row30_col0" class="data row30 col0" ></td>
	  <td id="T_3eef8_row30_col1" class="data row30 col1" ></td>
	  <td id="T_3eef8_row30_col2" class="data row30 col2" ></td>
	  <td id="T_3eef8_row30_col3" class="data row30 col3" ></td>
	  <td id="T_3eef8_row30_col4" class="data row30 col4" ></td>
	  <td id="T_3eef8_row30_col5" class="data row30 col5" ></td>
	  <td id="T_3eef8_row30_col6" class="data row30 col6" ></td>
	  <td id="T_3eef8_row30_col7" class="data row30 col7" ></td>
	  <td id="T_3eef8_row30_col8" class="data row30 col8" ></td>
	  <td id="T_3eef8_row30_col9" class="data row30 col9" ></td>
	  <td id="T_3eef8_row30_col10" class="data row30 col10" ></td>
	  <td id="T_3eef8_row30_col11" class="data row30 col11" ></td>
	  <td id="T_3eef8_row30_col12" class="data row30 col12" ></td>
	  <td id="T_3eef8_row30_col13" class="data row30 col13" ></td>
	  <td id="T_3eef8_row30_col14" class="data row30 col14" ></td>
	  <td id="T_3eef8_row30_col15" class="data row30 col15" ></td>
	  <td id="T_3eef8_row30_col16" class="data row30 col16" ></td>
	  <td id="T_3eef8_row30_col17" class="data row30 col17" ></td>
	  <td id="T_3eef8_row30_col18" class="data row30 col18" ></td>
	  <td id="T_3eef8_row30_col19" class="data row30 col19" ></td>
	  <td id="T_3eef8_row30_col20" class="data row30 col20" ></td>
	  <td id="T_3eef8_row30_col21" class="data row30 col21" ></td>
	  <td id="T_3eef8_row30_col22" class="data row30 col22" ></td>
	  <td id="T_3eef8_row30_col23" class="data row30 col23" ></td>
	  <td id="T_3eef8_row30_col24" class="data row30 col24" ></td>
	  <td id="T_3eef8_row30_col25" class="data row30 col25" ></td>
	  <td id="T_3eef8_row30_col26" class="data row30 col26" ></td>
	  <td id="T_3eef8_row30_col27" class="data row30 col27" ></td>
	  <td id="T_3eef8_row30_col28" class="data row30 col28" ></td>
	  <td id="T_3eef8_row30_col29" class="data row30 col29" ></td>
	  <td id="T_3eef8_row30_col30" class="data row30 col30" >0.02%</td>
	  <td id="T_3eef8_row30_col31" class="data row30 col31" >0.02%</td>
	  <td id="T_3eef8_row30_col32" class="data row30 col32" >0.03%</td>
	  <td id="T_3eef8_row30_col33" class="data row30 col33" >0.03%</td>
	  <td id="T_3eef8_row30_col34" class="data row30 col34" >0.04%</td>
	  <td id="T_3eef8_row30_col35" class="data row30 col35" >0.05%</td>
	  <td id="T_3eef8_row30_col36" class="data row30 col36" >0.06%</td>
	  <td id="T_3eef8_row30_col37" class="data row30 col37" >0.07%</td>
	  <td id="T_3eef8_row30_col38" class="data row30 col38" >0.09%</td>
	  <td id="T_3eef8_row30_col39" class="data row30 col39" >0.10%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row31" class="row_heading level0 row31" >31</th>
	  <td id="T_3eef8_row31_col0" class="data row31 col0" ></td>
	  <td id="T_3eef8_row31_col1" class="data row31 col1" ></td>
	  <td id="T_3eef8_row31_col2" class="data row31 col2" ></td>
	  <td id="T_3eef8_row31_col3" class="data row31 col3" ></td>
	  <td id="T_3eef8_row31_col4" class="data row31 col4" ></td>
	  <td id="T_3eef8_row31_col5" class="data row31 col5" ></td>
	  <td id="T_3eef8_row31_col6" class="data row31 col6" ></td>
	  <td id="T_3eef8_row31_col7" class="data row31 col7" ></td>
	  <td id="T_3eef8_row31_col8" class="data row31 col8" ></td>
	  <td id="T_3eef8_row31_col9" class="data row31 col9" ></td>
	  <td id="T_3eef8_row31_col10" class="data row31 col10" ></td>
	  <td id="T_3eef8_row31_col11" class="data row31 col11" ></td>
	  <td id="T_3eef8_row31_col12" class="data row31 col12" ></td>
	  <td id="T_3eef8_row31_col13" class="data row31 col13" ></td>
	  <td id="T_3eef8_row31_col14" class="data row31 col14" ></td>
	  <td id="T_3eef8_row31_col15" class="data row31 col15" ></td>
	  <td id="T_3eef8_row31_col16" class="data row31 col16" ></td>
	  <td id="T_3eef8_row31_col17" class="data row31 col17" ></td>
	  <td id="T_3eef8_row31_col18" class="data row31 col18" ></td>
	  <td id="T_3eef8_row31_col19" class="data row31 col19" ></td>
	  <td id="T_3eef8_row31_col20" class="data row31 col20" ></td>
	  <td id="T_3eef8_row31_col21" class="data row31 col21" ></td>
	  <td id="T_3eef8_row31_col22" class="data row31 col22" ></td>
	  <td id="T_3eef8_row31_col23" class="data row31 col23" ></td>
	  <td id="T_3eef8_row31_col24" class="data row31 col24" ></td>
	  <td id="T_3eef8_row31_col25" class="data row31 col25" ></td>
	  <td id="T_3eef8_row31_col26" class="data row31 col26" ></td>
	  <td id="T_3eef8_row31_col27" class="data row31 col27" ></td>
	  <td id="T_3eef8_row31_col28" class="data row31 col28" ></td>
	  <td id="T_3eef8_row31_col29" class="data row31 col29" ></td>
	  <td id="T_3eef8_row31_col30" class="data row31 col30" ></td>
	  <td id="T_3eef8_row31_col31" class="data row31 col31" >0.02%</td>
	  <td id="T_3eef8_row31_col32" class="data row31 col32" >0.02%</td>
	  <td id="T_3eef8_row31_col33" class="data row31 col33" >0.02%</td>
	  <td id="T_3eef8_row31_col34" class="data row31 col34" >0.03%</td>
	  <td id="T_3eef8_row31_col35" class="data row31 col35" >0.04%</td>
	  <td id="T_3eef8_row31_col36" class="data row31 col36" >0.04%</td>
	  <td id="T_3eef8_row31_col37" class="data row31 col37" >0.05%</td>
	  <td id="T_3eef8_row31_col38" class="data row31 col38" >0.06%</td>
	  <td id="T_3eef8_row31_col39" class="data row31 col39" >0.08%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row32" class="row_heading level0 row32" >32</th>
	  <td id="T_3eef8_row32_col0" class="data row32 col0" ></td>
	  <td id="T_3eef8_row32_col1" class="data row32 col1" ></td>
	  <td id="T_3eef8_row32_col2" class="data row32 col2" ></td>
	  <td id="T_3eef8_row32_col3" class="data row32 col3" ></td>
	  <td id="T_3eef8_row32_col4" class="data row32 col4" ></td>
	  <td id="T_3eef8_row32_col5" class="data row32 col5" ></td>
	  <td id="T_3eef8_row32_col6" class="data row32 col6" ></td>
	  <td id="T_3eef8_row32_col7" class="data row32 col7" ></td>
	  <td id="T_3eef8_row32_col8" class="data row32 col8" ></td>
	  <td id="T_3eef8_row32_col9" class="data row32 col9" ></td>
	  <td id="T_3eef8_row32_col10" class="data row32 col10" ></td>
	  <td id="T_3eef8_row32_col11" class="data row32 col11" ></td>
	  <td id="T_3eef8_row32_col12" class="data row32 col12" ></td>
	  <td id="T_3eef8_row32_col13" class="data row32 col13" ></td>
	  <td id="T_3eef8_row32_col14" class="data row32 col14" ></td>
	  <td id="T_3eef8_row32_col15" class="data row32 col15" ></td>
	  <td id="T_3eef8_row32_col16" class="data row32 col16" ></td>
	  <td id="T_3eef8_row32_col17" class="data row32 col17" ></td>
	  <td id="T_3eef8_row32_col18" class="data row32 col18" ></td>
	  <td id="T_3eef8_row32_col19" class="data row32 col19" ></td>
	  <td id="T_3eef8_row32_col20" class="data row32 col20" ></td>
	  <td id="T_3eef8_row32_col21" class="data row32 col21" ></td>
	  <td id="T_3eef8_row32_col22" class="data row32 col22" ></td>
	  <td id="T_3eef8_row32_col23" class="data row32 col23" ></td>
	  <td id="T_3eef8_row32_col24" class="data row32 col24" ></td>
	  <td id="T_3eef8_row32_col25" class="data row32 col25" ></td>
	  <td id="T_3eef8_row32_col26" class="data row32 col26" ></td>
	  <td id="T_3eef8_row32_col27" class="data row32 col27" ></td>
	  <td id="T_3eef8_row32_col28" class="data row32 col28" ></td>
	  <td id="T_3eef8_row32_col29" class="data row32 col29" ></td>
	  <td id="T_3eef8_row32_col30" class="data row32 col30" ></td>
	  <td id="T_3eef8_row32_col31" class="data row32 col31" ></td>
	  <td id="T_3eef8_row32_col32" class="data row32 col32" >0.02%</td>
	  <td id="T_3eef8_row32_col33" class="data row32 col33" >0.02%</td>
	  <td id="T_3eef8_row32_col34" class="data row32 col34" >0.02%</td>
	  <td id="T_3eef8_row32_col35" class="data row32 col35" >0.03%</td>
	  <td id="T_3eef8_row32_col36" class="data row32 col36" >0.03%</td>
	  <td id="T_3eef8_row32_col37" class="data row32 col37" >0.04%</td>
	  <td id="T_3eef8_row32_col38" class="data row32 col38" >0.05%</td>
	  <td id="T_3eef8_row32_col39" class="data row32 col39" >0.06%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row33" class="row_heading level0 row33" >33</th>
	  <td id="T_3eef8_row33_col0" class="data row33 col0" ></td>
	  <td id="T_3eef8_row33_col1" class="data row33 col1" ></td>
	  <td id="T_3eef8_row33_col2" class="data row33 col2" ></td>
	  <td id="T_3eef8_row33_col3" class="data row33 col3" ></td>
	  <td id="T_3eef8_row33_col4" class="data row33 col4" ></td>
	  <td id="T_3eef8_row33_col5" class="data row33 col5" ></td>
	  <td id="T_3eef8_row33_col6" class="data row33 col6" ></td>
	  <td id="T_3eef8_row33_col7" class="data row33 col7" ></td>
	  <td id="T_3eef8_row33_col8" class="data row33 col8" ></td>
	  <td id="T_3eef8_row33_col9" class="data row33 col9" ></td>
	  <td id="T_3eef8_row33_col10" class="data row33 col10" ></td>
	  <td id="T_3eef8_row33_col11" class="data row33 col11" ></td>
	  <td id="T_3eef8_row33_col12" class="data row33 col12" ></td>
	  <td id="T_3eef8_row33_col13" class="data row33 col13" ></td>
	  <td id="T_3eef8_row33_col14" class="data row33 col14" ></td>
	  <td id="T_3eef8_row33_col15" class="data row33 col15" ></td>
	  <td id="T_3eef8_row33_col16" class="data row33 col16" ></td>
	  <td id="T_3eef8_row33_col17" class="data row33 col17" ></td>
	  <td id="T_3eef8_row33_col18" class="data row33 col18" ></td>
	  <td id="T_3eef8_row33_col19" class="data row33 col19" ></td>
	  <td id="T_3eef8_row33_col20" class="data row33 col20" ></td>
	  <td id="T_3eef8_row33_col21" class="data row33 col21" ></td>
	  <td id="T_3eef8_row33_col22" class="data row33 col22" ></td>
	  <td id="T_3eef8_row33_col23" class="data row33 col23" ></td>
	  <td id="T_3eef8_row33_col24" class="data row33 col24" ></td>
	  <td id="T_3eef8_row33_col25" class="data row33 col25" ></td>
	  <td id="T_3eef8_row33_col26" class="data row33 col26" ></td>
	  <td id="T_3eef8_row33_col27" class="data row33 col27" ></td>
	  <td id="T_3eef8_row33_col28" class="data row33 col28" ></td>
	  <td id="T_3eef8_row33_col29" class="data row33 col29" ></td>
	  <td id="T_3eef8_row33_col30" class="data row33 col30" ></td>
	  <td id="T_3eef8_row33_col31" class="data row33 col31" ></td>
	  <td id="T_3eef8_row33_col32" class="data row33 col32" ></td>
	  <td id="T_3eef8_row33_col33" class="data row33 col33" >0.01%</td>
	  <td id="T_3eef8_row33_col34" class="data row33 col34" >0.02%</td>
	  <td id="T_3eef8_row33_col35" class="data row33 col35" >0.02%</td>
	  <td id="T_3eef8_row33_col36" class="data row33 col36" >0.03%</td>
	  <td id="T_3eef8_row33_col37" class="data row33 col37" >0.03%</td>
	  <td id="T_3eef8_row33_col38" class="data row33 col38" >0.04%</td>
	  <td id="T_3eef8_row33_col39" class="data row33 col39" >0.04%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row34" class="row_heading level0 row34" >34</th>
	  <td id="T_3eef8_row34_col0" class="data row34 col0" ></td>
	  <td id="T_3eef8_row34_col1" class="data row34 col1" ></td>
	  <td id="T_3eef8_row34_col2" class="data row34 col2" ></td>
	  <td id="T_3eef8_row34_col3" class="data row34 col3" ></td>
	  <td id="T_3eef8_row34_col4" class="data row34 col4" ></td>
	  <td id="T_3eef8_row34_col5" class="data row34 col5" ></td>
	  <td id="T_3eef8_row34_col6" class="data row34 col6" ></td>
	  <td id="T_3eef8_row34_col7" class="data row34 col7" ></td>
	  <td id="T_3eef8_row34_col8" class="data row34 col8" ></td>
	  <td id="T_3eef8_row34_col9" class="data row34 col9" ></td>
	  <td id="T_3eef8_row34_col10" class="data row34 col10" ></td>
	  <td id="T_3eef8_row34_col11" class="data row34 col11" ></td>
	  <td id="T_3eef8_row34_col12" class="data row34 col12" ></td>
	  <td id="T_3eef8_row34_col13" class="data row34 col13" ></td>
	  <td id="T_3eef8_row34_col14" class="data row34 col14" ></td>
	  <td id="T_3eef8_row34_col15" class="data row34 col15" ></td>
	  <td id="T_3eef8_row34_col16" class="data row34 col16" ></td>
	  <td id="T_3eef8_row34_col17" class="data row34 col17" ></td>
	  <td id="T_3eef8_row34_col18" class="data row34 col18" ></td>
	  <td id="T_3eef8_row34_col19" class="data row34 col19" ></td>
	  <td id="T_3eef8_row34_col20" class="data row34 col20" ></td>
	  <td id="T_3eef8_row34_col21" class="data row34 col21" ></td>
	  <td id="T_3eef8_row34_col22" class="data row34 col22" ></td>
	  <td id="T_3eef8_row34_col23" class="data row34 col23" ></td>
	  <td id="T_3eef8_row34_col24" class="data row34 col24" ></td>
	  <td id="T_3eef8_row34_col25" class="data row34 col25" ></td>
	  <td id="T_3eef8_row34_col26" class="data row34 col26" ></td>
	  <td id="T_3eef8_row34_col27" class="data row34 col27" ></td>
	  <td id="T_3eef8_row34_col28" class="data row34 col28" ></td>
	  <td id="T_3eef8_row34_col29" class="data row34 col29" ></td>
	  <td id="T_3eef8_row34_col30" class="data row34 col30" ></td>
	  <td id="T_3eef8_row34_col31" class="data row34 col31" ></td>
	  <td id="T_3eef8_row34_col32" class="data row34 col32" ></td>
	  <td id="T_3eef8_row34_col33" class="data row34 col33" ></td>
	  <td id="T_3eef8_row34_col34" class="data row34 col34" >0.01%</td>
	  <td id="T_3eef8_row34_col35" class="data row34 col35" >0.02%</td>
	  <td id="T_3eef8_row34_col36" class="data row34 col36" >0.02%</td>
	  <td id="T_3eef8_row34_col37" class="data row34 col37" >0.02%</td>
	  <td id="T_3eef8_row34_col38" class="data row34 col38" >0.03%</td>
	  <td id="T_3eef8_row34_col39" class="data row34 col39" >0.03%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row35" class="row_heading level0 row35" >35</th>
	  <td id="T_3eef8_row35_col0" class="data row35 col0" ></td>
	  <td id="T_3eef8_row35_col1" class="data row35 col1" ></td>
	  <td id="T_3eef8_row35_col2" class="data row35 col2" ></td>
	  <td id="T_3eef8_row35_col3" class="data row35 col3" ></td>
	  <td id="T_3eef8_row35_col4" class="data row35 col4" ></td>
	  <td id="T_3eef8_row35_col5" class="data row35 col5" ></td>
	  <td id="T_3eef8_row35_col6" class="data row35 col6" ></td>
	  <td id="T_3eef8_row35_col7" class="data row35 col7" ></td>
	  <td id="T_3eef8_row35_col8" class="data row35 col8" ></td>
	  <td id="T_3eef8_row35_col9" class="data row35 col9" ></td>
	  <td id="T_3eef8_row35_col10" class="data row35 col10" ></td>
	  <td id="T_3eef8_row35_col11" class="data row35 col11" ></td>
	  <td id="T_3eef8_row35_col12" class="data row35 col12" ></td>
	  <td id="T_3eef8_row35_col13" class="data row35 col13" ></td>
	  <td id="T_3eef8_row35_col14" class="data row35 col14" ></td>
	  <td id="T_3eef8_row35_col15" class="data row35 col15" ></td>
	  <td id="T_3eef8_row35_col16" class="data row35 col16" ></td>
	  <td id="T_3eef8_row35_col17" class="data row35 col17" ></td>
	  <td id="T_3eef8_row35_col18" class="data row35 col18" ></td>
	  <td id="T_3eef8_row35_col19" class="data row35 col19" ></td>
	  <td id="T_3eef8_row35_col20" class="data row35 col20" ></td>
	  <td id="T_3eef8_row35_col21" class="data row35 col21" ></td>
	  <td id="T_3eef8_row35_col22" class="data row35 col22" ></td>
	  <td id="T_3eef8_row35_col23" class="data row35 col23" ></td>
	  <td id="T_3eef8_row35_col24" class="data row35 col24" ></td>
	  <td id="T_3eef8_row35_col25" class="data row35 col25" ></td>
	  <td id="T_3eef8_row35_col26" class="data row35 col26" ></td>
	  <td id="T_3eef8_row35_col27" class="data row35 col27" ></td>
	  <td id="T_3eef8_row35_col28" class="data row35 col28" ></td>
	  <td id="T_3eef8_row35_col29" class="data row35 col29" ></td>
	  <td id="T_3eef8_row35_col30" class="data row35 col30" ></td>
	  <td id="T_3eef8_row35_col31" class="data row35 col31" ></td>
	  <td id="T_3eef8_row35_col32" class="data row35 col32" ></td>
	  <td id="T_3eef8_row35_col33" class="data row35 col33" ></td>
	  <td id="T_3eef8_row35_col34" class="data row35 col34" ></td>
	  <td id="T_3eef8_row35_col35" class="data row35 col35" >0.01%</td>
	  <td id="T_3eef8_row35_col36" class="data row35 col36" >0.02%</td>
	  <td id="T_3eef8_row35_col37" class="data row35 col37" >0.02%</td>
	  <td id="T_3eef8_row35_col38" class="data row35 col38" >0.02%</td>
	  <td id="T_3eef8_row35_col39" class="data row35 col39" >0.03%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row36" class="row_heading level0 row36" >36</th>
	  <td id="T_3eef8_row36_col0" class="data row36 col0" ></td>
	  <td id="T_3eef8_row36_col1" class="data row36 col1" ></td>
	  <td id="T_3eef8_row36_col2" class="data row36 col2" ></td>
	  <td id="T_3eef8_row36_col3" class="data row36 col3" ></td>
	  <td id="T_3eef8_row36_col4" class="data row36 col4" ></td>
	  <td id="T_3eef8_row36_col5" class="data row36 col5" ></td>
	  <td id="T_3eef8_row36_col6" class="data row36 col6" ></td>
	  <td id="T_3eef8_row36_col7" class="data row36 col7" ></td>
	  <td id="T_3eef8_row36_col8" class="data row36 col8" ></td>
	  <td id="T_3eef8_row36_col9" class="data row36 col9" ></td>
	  <td id="T_3eef8_row36_col10" class="data row36 col10" ></td>
	  <td id="T_3eef8_row36_col11" class="data row36 col11" ></td>
	  <td id="T_3eef8_row36_col12" class="data row36 col12" ></td>
	  <td id="T_3eef8_row36_col13" class="data row36 col13" ></td>
	  <td id="T_3eef8_row36_col14" class="data row36 col14" ></td>
	  <td id="T_3eef8_row36_col15" class="data row36 col15" ></td>
	  <td id="T_3eef8_row36_col16" class="data row36 col16" ></td>
	  <td id="T_3eef8_row36_col17" class="data row36 col17" ></td>
	  <td id="T_3eef8_row36_col18" class="data row36 col18" ></td>
	  <td id="T_3eef8_row36_col19" class="data row36 col19" ></td>
	  <td id="T_3eef8_row36_col20" class="data row36 col20" ></td>
	  <td id="T_3eef8_row36_col21" class="data row36 col21" ></td>
	  <td id="T_3eef8_row36_col22" class="data row36 col22" ></td>
	  <td id="T_3eef8_row36_col23" class="data row36 col23" ></td>
	  <td id="T_3eef8_row36_col24" class="data row36 col24" ></td>
	  <td id="T_3eef8_row36_col25" class="data row36 col25" ></td>
	  <td id="T_3eef8_row36_col26" class="data row36 col26" ></td>
	  <td id="T_3eef8_row36_col27" class="data row36 col27" ></td>
	  <td id="T_3eef8_row36_col28" class="data row36 col28" ></td>
	  <td id="T_3eef8_row36_col29" class="data row36 col29" ></td>
	  <td id="T_3eef8_row36_col30" class="data row36 col30" ></td>
	  <td id="T_3eef8_row36_col31" class="data row36 col31" ></td>
	  <td id="T_3eef8_row36_col32" class="data row36 col32" ></td>
	  <td id="T_3eef8_row36_col33" class="data row36 col33" ></td>
	  <td id="T_3eef8_row36_col34" class="data row36 col34" ></td>
	  <td id="T_3eef8_row36_col35" class="data row36 col35" ></td>
	  <td id="T_3eef8_row36_col36" class="data row36 col36" >0.01%</td>
	  <td id="T_3eef8_row36_col37" class="data row36 col37" >0.01%</td>
	  <td id="T_3eef8_row36_col38" class="data row36 col38" >0.02%</td>
	  <td id="T_3eef8_row36_col39" class="data row36 col39" >0.02%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row37" class="row_heading level0 row37" >37</th>
	  <td id="T_3eef8_row37_col0" class="data row37 col0" ></td>
	  <td id="T_3eef8_row37_col1" class="data row37 col1" ></td>
	  <td id="T_3eef8_row37_col2" class="data row37 col2" ></td>
	  <td id="T_3eef8_row37_col3" class="data row37 col3" ></td>
	  <td id="T_3eef8_row37_col4" class="data row37 col4" ></td>
	  <td id="T_3eef8_row37_col5" class="data row37 col5" ></td>
	  <td id="T_3eef8_row37_col6" class="data row37 col6" ></td>
	  <td id="T_3eef8_row37_col7" class="data row37 col7" ></td>
	  <td id="T_3eef8_row37_col8" class="data row37 col8" ></td>
	  <td id="T_3eef8_row37_col9" class="data row37 col9" ></td>
	  <td id="T_3eef8_row37_col10" class="data row37 col10" ></td>
	  <td id="T_3eef8_row37_col11" class="data row37 col11" ></td>
	  <td id="T_3eef8_row37_col12" class="data row37 col12" ></td>
	  <td id="T_3eef8_row37_col13" class="data row37 col13" ></td>
	  <td id="T_3eef8_row37_col14" class="data row37 col14" ></td>
	  <td id="T_3eef8_row37_col15" class="data row37 col15" ></td>
	  <td id="T_3eef8_row37_col16" class="data row37 col16" ></td>
	  <td id="T_3eef8_row37_col17" class="data row37 col17" ></td>
	  <td id="T_3eef8_row37_col18" class="data row37 col18" ></td>
	  <td id="T_3eef8_row37_col19" class="data row37 col19" ></td>
	  <td id="T_3eef8_row37_col20" class="data row37 col20" ></td>
	  <td id="T_3eef8_row37_col21" class="data row37 col21" ></td>
	  <td id="T_3eef8_row37_col22" class="data row37 col22" ></td>
	  <td id="T_3eef8_row37_col23" class="data row37 col23" ></td>
	  <td id="T_3eef8_row37_col24" class="data row37 col24" ></td>
	  <td id="T_3eef8_row37_col25" class="data row37 col25" ></td>
	  <td id="T_3eef8_row37_col26" class="data row37 col26" ></td>
	  <td id="T_3eef8_row37_col27" class="data row37 col27" ></td>
	  <td id="T_3eef8_row37_col28" class="data row37 col28" ></td>
	  <td id="T_3eef8_row37_col29" class="data row37 col29" ></td>
	  <td id="T_3eef8_row37_col30" class="data row37 col30" ></td>
	  <td id="T_3eef8_row37_col31" class="data row37 col31" ></td>
	  <td id="T_3eef8_row37_col32" class="data row37 col32" ></td>
	  <td id="T_3eef8_row37_col33" class="data row37 col33" ></td>
	  <td id="T_3eef8_row37_col34" class="data row37 col34" ></td>
	  <td id="T_3eef8_row37_col35" class="data row37 col35" ></td>
	  <td id="T_3eef8_row37_col36" class="data row37 col36" ></td>
	  <td id="T_3eef8_row37_col37" class="data row37 col37" >0.01%</td>
	  <td id="T_3eef8_row37_col38" class="data row37 col38" >0.01%</td>
	  <td id="T_3eef8_row37_col39" class="data row37 col39" >0.02%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row38" class="row_heading level0 row38" >38</th>
	  <td id="T_3eef8_row38_col0" class="data row38 col0" ></td>
	  <td id="T_3eef8_row38_col1" class="data row38 col1" ></td>
	  <td id="T_3eef8_row38_col2" class="data row38 col2" ></td>
	  <td id="T_3eef8_row38_col3" class="data row38 col3" ></td>
	  <td id="T_3eef8_row38_col4" class="data row38 col4" ></td>
	  <td id="T_3eef8_row38_col5" class="data row38 col5" ></td>
	  <td id="T_3eef8_row38_col6" class="data row38 col6" ></td>
	  <td id="T_3eef8_row38_col7" class="data row38 col7" ></td>
	  <td id="T_3eef8_row38_col8" class="data row38 col8" ></td>
	  <td id="T_3eef8_row38_col9" class="data row38 col9" ></td>
	  <td id="T_3eef8_row38_col10" class="data row38 col10" ></td>
	  <td id="T_3eef8_row38_col11" class="data row38 col11" ></td>
	  <td id="T_3eef8_row38_col12" class="data row38 col12" ></td>
	  <td id="T_3eef8_row38_col13" class="data row38 col13" ></td>
	  <td id="T_3eef8_row38_col14" class="data row38 col14" ></td>
	  <td id="T_3eef8_row38_col15" class="data row38 col15" ></td>
	  <td id="T_3eef8_row38_col16" class="data row38 col16" ></td>
	  <td id="T_3eef8_row38_col17" class="data row38 col17" ></td>
	  <td id="T_3eef8_row38_col18" class="data row38 col18" ></td>
	  <td id="T_3eef8_row38_col19" class="data row38 col19" ></td>
	  <td id="T_3eef8_row38_col20" class="data row38 col20" ></td>
	  <td id="T_3eef8_row38_col21" class="data row38 col21" ></td>
	  <td id="T_3eef8_row38_col22" class="data row38 col22" ></td>
	  <td id="T_3eef8_row38_col23" class="data row38 col23" ></td>
	  <td id="T_3eef8_row38_col24" class="data row38 col24" ></td>
	  <td id="T_3eef8_row38_col25" class="data row38 col25" ></td>
	  <td id="T_3eef8_row38_col26" class="data row38 col26" ></td>
	  <td id="T_3eef8_row38_col27" class="data row38 col27" ></td>
	  <td id="T_3eef8_row38_col28" class="data row38 col28" ></td>
	  <td id="T_3eef8_row38_col29" class="data row38 col29" ></td>
	  <td id="T_3eef8_row38_col30" class="data row38 col30" ></td>
	  <td id="T_3eef8_row38_col31" class="data row38 col31" ></td>
	  <td id="T_3eef8_row38_col32" class="data row38 col32" ></td>
	  <td id="T_3eef8_row38_col33" class="data row38 col33" ></td>
	  <td id="T_3eef8_row38_col34" class="data row38 col34" ></td>
	  <td id="T_3eef8_row38_col35" class="data row38 col35" ></td>
	  <td id="T_3eef8_row38_col36" class="data row38 col36" ></td>
	  <td id="T_3eef8_row38_col37" class="data row38 col37" ></td>
	  <td id="T_3eef8_row38_col38" class="data row38 col38" >0.01%</td>
	  <td id="T_3eef8_row38_col39" class="data row38 col39" >0.01%</td>
	</tr>
	<tr>
	  <th id="T_3eef8_level0_row39" class="row_heading level0 row39" >39</th>
	  <td id="T_3eef8_row39_col0" class="data row39 col0" ></td>
	  <td id="T_3eef8_row39_col1" class="data row39 col1" ></td>
	  <td id="T_3eef8_row39_col2" class="data row39 col2" ></td>
	  <td id="T_3eef8_row39_col3" class="data row39 col3" ></td>
	  <td id="T_3eef8_row39_col4" class="data row39 col4" ></td>
	  <td id="T_3eef8_row39_col5" class="data row39 col5" ></td>
	  <td id="T_3eef8_row39_col6" class="data row39 col6" ></td>
	  <td id="T_3eef8_row39_col7" class="data row39 col7" ></td>
	  <td id="T_3eef8_row39_col8" class="data row39 col8" ></td>
	  <td id="T_3eef8_row39_col9" class="data row39 col9" ></td>
	  <td id="T_3eef8_row39_col10" class="data row39 col10" ></td>
	  <td id="T_3eef8_row39_col11" class="data row39 col11" ></td>
	  <td id="T_3eef8_row39_col12" class="data row39 col12" ></td>
	  <td id="T_3eef8_row39_col13" class="data row39 col13" ></td>
	  <td id="T_3eef8_row39_col14" class="data row39 col14" ></td>
	  <td id="T_3eef8_row39_col15" class="data row39 col15" ></td>
	  <td id="T_3eef8_row39_col16" class="data row39 col16" ></td>
	  <td id="T_3eef8_row39_col17" class="data row39 col17" ></td>
	  <td id="T_3eef8_row39_col18" class="data row39 col18" ></td>
	  <td id="T_3eef8_row39_col19" class="data row39 col19" ></td>
	  <td id="T_3eef8_row39_col20" class="data row39 col20" ></td>
	  <td id="T_3eef8_row39_col21" class="data row39 col21" ></td>
	  <td id="T_3eef8_row39_col22" class="data row39 col22" ></td>
	  <td id="T_3eef8_row39_col23" class="data row39 col23" ></td>
	  <td id="T_3eef8_row39_col24" class="data row39 col24" ></td>
	  <td id="T_3eef8_row39_col25" class="data row39 col25" ></td>
	  <td id="T_3eef8_row39_col26" class="data row39 col26" ></td>
	  <td id="T_3eef8_row39_col27" class="data row39 col27" ></td>
	  <td id="T_3eef8_row39_col28" class="data row39 col28" ></td>
	  <td id="T_3eef8_row39_col29" class="data row39 col29" ></td>
	  <td id="T_3eef8_row39_col30" class="data row39 col30" ></td>
	  <td id="T_3eef8_row39_col31" class="data row39 col31" ></td>
	  <td id="T_3eef8_row39_col32" class="data row39 col32" ></td>
	  <td id="T_3eef8_row39_col33" class="data row39 col33" ></td>
	  <td id="T_3eef8_row39_col34" class="data row39 col34" ></td>
	  <td id="T_3eef8_row39_col35" class="data row39 col35" ></td>
	  <td id="T_3eef8_row39_col36" class="data row39 col36" ></td>
	  <td id="T_3eef8_row39_col37" class="data row39 col37" ></td>
	  <td id="T_3eef8_row39_col38" class="data row39 col38" ></td>
	  <td id="T_3eef8_row39_col39" class="data row39 col39" >0.01%</td>
	</tr>
  </tbody>
</table>

## 4. Price a Callable Bond

### Bond Parameters

```python
FACE = 100
T=10
compound = 4
cpn = .06
cpn_freq = 2

STRIKE = 100
CLEANCALL = True

MKTPRICE = 99.953

dt = 1/compound
tsteps = int(T/dt)
```

### Create Cashflow Tree

```python
cftree = construct_bond_cftree(T, compound, cpn)
cftree.head()
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
	  <th>time</th>
	  <th>0.00</th>
	  <th>0.25</th>
	  <th>0.50</th>
	  <th>0.75</th>
	  <th>1.00</th>
	  <th>1.25</th>
	  <th>1.50</th>
	  <th>1.75</th>
	  <th>2.00</th>
	  <th>2.25</th>
	  <th>…</th>
	  <th>7.50</th>
	  <th>7.75</th>
	  <th>8.00</th>
	  <th>8.25</th>
	  <th>8.50</th>
	  <th>8.75</th>
	  <th>9.00</th>
	  <th>9.25</th>
	  <th>9.50</th>
	  <th>9.75</th>
	</tr>
	<tr>
	  <th>state</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>0.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>…</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>0.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>…</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>0.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>…</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>0.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>…</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>0.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>…</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	  <td>3.0</td>
	  <td>0.0</td>
	</tr>
  </tbody>
</table>
<p>5 rows × 40 columns</p>
</div>

### Create lambda functions that calculate the payoff of the bond and the payoff of the option

```python
wrapper_bond = lambda r: payoff_bond(r, dt, facevalue=FACE * (1+cpn/cpn_freq))
payoff_call = lambda p: np.maximum(p-STRIKE,0)
```

### Calculate the Vanilla Bond Payoff Tree 

Inputs:

- payoff function
- rate tree
- cashflows from the bond

Process:

- Same process as lecture 1 where we discount the cashflows at each underlying rate

```python
bondtree = bintree_pricing(payoff=wrapper_bond, ratetree=ratetree.iloc[:tsteps,:tsteps], cftree=cftree)
bondtree.style.format('{:.2f}',na_rep='')
```

<style type="text/css">
</style>
<table id="T_24da6_">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th class="col_heading level0 col0" >0.0</th>
	  <th class="col_heading level0 col1" >0.25</th>
	  <th class="col_heading level0 col2" >0.5</th>
	  <th class="col_heading level0 col3" >0.75</th>
	  <th class="col_heading level0 col4" >1.0</th>
	  <th class="col_heading level0 col5" >1.25</th>
	  <th class="col_heading level0 col6" >1.5</th>
	  <th class="col_heading level0 col7" >1.75</th>
	  <th class="col_heading level0 col8" >2.0</th>
	  <th class="col_heading level0 col9" >2.25</th>
	  <th class="col_heading level0 col10" >2.5</th>
	  <th class="col_heading level0 col11" >2.75</th>
	  <th class="col_heading level0 col12" >3.0</th>
	  <th class="col_heading level0 col13" >3.25</th>
	  <th class="col_heading level0 col14" >3.5</th>
	  <th class="col_heading level0 col15" >3.75</th>
	  <th class="col_heading level0 col16" >4.0</th>
	  <th class="col_heading level0 col17" >4.25</th>
	  <th class="col_heading level0 col18" >4.5</th>
	  <th class="col_heading level0 col19" >4.75</th>
	  <th class="col_heading level0 col20" >5.0</th>
	  <th class="col_heading level0 col21" >5.25</th>
	  <th class="col_heading level0 col22" >5.5</th>
	  <th class="col_heading level0 col23" >5.75</th>
	  <th class="col_heading level0 col24" >6.0</th>
	  <th class="col_heading level0 col25" >6.25</th>
	  <th class="col_heading level0 col26" >6.5</th>
	  <th class="col_heading level0 col27" >6.75</th>
	  <th class="col_heading level0 col28" >7.0</th>
	  <th class="col_heading level0 col29" >7.25</th>
	  <th class="col_heading level0 col30" >7.5</th>
	  <th class="col_heading level0 col31" >7.75</th>
	  <th class="col_heading level0 col32" >8.0</th>
	  <th class="col_heading level0 col33" >8.25</th>
	  <th class="col_heading level0 col34" >8.5</th>
	  <th class="col_heading level0 col35" >8.75</th>
	  <th class="col_heading level0 col36" >9.0</th>
	  <th class="col_heading level0 col37" >9.25</th>
	  <th class="col_heading level0 col38" >9.5</th>
	  <th class="col_heading level0 col39" >9.75</th>
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
	  <th class="blank col13" >&nbsp;</th>
	  <th class="blank col14" >&nbsp;</th>
	  <th class="blank col15" >&nbsp;</th>
	  <th class="blank col16" >&nbsp;</th>
	  <th class="blank col17" >&nbsp;</th>
	  <th class="blank col18" >&nbsp;</th>
	  <th class="blank col19" >&nbsp;</th>
	  <th class="blank col20" >&nbsp;</th>
	  <th class="blank col21" >&nbsp;</th>
	  <th class="blank col22" >&nbsp;</th>
	  <th class="blank col23" >&nbsp;</th>
	  <th class="blank col24" >&nbsp;</th>
	  <th class="blank col25" >&nbsp;</th>
	  <th class="blank col26" >&nbsp;</th>
	  <th class="blank col27" >&nbsp;</th>
	  <th class="blank col28" >&nbsp;</th>
	  <th class="blank col29" >&nbsp;</th>
	  <th class="blank col30" >&nbsp;</th>
	  <th class="blank col31" >&nbsp;</th>
	  <th class="blank col32" >&nbsp;</th>
	  <th class="blank col33" >&nbsp;</th>
	  <th class="blank col34" >&nbsp;</th>
	  <th class="blank col35" >&nbsp;</th>
	  <th class="blank col36" >&nbsp;</th>
	  <th class="blank col37" >&nbsp;</th>
	  <th class="blank col38" >&nbsp;</th>
	  <th class="blank col39" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_24da6_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_24da6_row0_col0" class="data row0 col0" >117.36</td>
	  <td id="T_24da6_row0_col1" class="data row0 col1" >112.58</td>
	  <td id="T_24da6_row0_col2" class="data row0 col2" >104.29</td>
	  <td id="T_24da6_row0_col3" class="data row0 col3" >98.41</td>
	  <td id="T_24da6_row0_col4" class="data row0 col4" >89.03</td>
	  <td id="T_24da6_row0_col5" class="data row0 col5" >82.09</td>
	  <td id="T_24da6_row0_col6" class="data row0 col6" >71.88</td>
	  <td id="T_24da6_row0_col7" class="data row0 col7" >64.51</td>
	  <td id="T_24da6_row0_col8" class="data row0 col8" >54.23</td>
	  <td id="T_24da6_row0_col9" class="data row0 col9" >47.13</td>
	  <td id="T_24da6_row0_col10" class="data row0 col10" >37.60</td>
	  <td id="T_24da6_row0_col11" class="data row0 col11" >31.71</td>
	  <td id="T_24da6_row0_col12" class="data row0 col12" >23.76</td>
	  <td id="T_24da6_row0_col13" class="data row0 col13" >19.60</td>
	  <td id="T_24da6_row0_col14" class="data row0 col14" >13.51</td>
	  <td id="T_24da6_row0_col15" class="data row0 col15" >11.27</td>
	  <td id="T_24da6_row0_col16" class="data row0 col16" >7.10</td>
	  <td id="T_24da6_row0_col17" class="data row0 col17" >6.35</td>
	  <td id="T_24da6_row0_col18" class="data row0 col18" >3.47</td>
	  <td id="T_24da6_row0_col19" class="data row0 col19" >3.66</td>
	  <td id="T_24da6_row0_col20" class="data row0 col20" >1.68</td>
	  <td id="T_24da6_row0_col21" class="data row0 col21" >2.26</td>
	  <td id="T_24da6_row0_col22" class="data row0 col22" >0.76</td>
	  <td id="T_24da6_row0_col23" class="data row0 col23" >1.37</td>
	  <td id="T_24da6_row0_col24" class="data row0 col24" >0.28</td>
	  <td id="T_24da6_row0_col25" class="data row0 col25" >0.75</td>
	  <td id="T_24da6_row0_col26" class="data row0 col26" >0.07</td>
	  <td id="T_24da6_row0_col27" class="data row0 col27" >0.33</td>
	  <td id="T_24da6_row0_col28" class="data row0 col28" >0.01</td>
	  <td id="T_24da6_row0_col29" class="data row0 col29" >0.10</td>
	  <td id="T_24da6_row0_col30" class="data row0 col30" >0.00</td>
	  <td id="T_24da6_row0_col31" class="data row0 col31" >0.02</td>
	  <td id="T_24da6_row0_col32" class="data row0 col32" >0.00</td>
	  <td id="T_24da6_row0_col33" class="data row0 col33" >0.00</td>
	  <td id="T_24da6_row0_col34" class="data row0 col34" >0.00</td>
	  <td id="T_24da6_row0_col35" class="data row0 col35" >0.00</td>
	  <td id="T_24da6_row0_col36" class="data row0 col36" >0.00</td>
	  <td id="T_24da6_row0_col37" class="data row0 col37" >0.00</td>
	  <td id="T_24da6_row0_col38" class="data row0 col38" >0.00</td>
	  <td id="T_24da6_row0_col39" class="data row0 col39" >0.00</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_24da6_row1_col0" class="data row1 col0" ></td>
	  <td id="T_24da6_row1_col1" class="data row1 col1" >125.20</td>
	  <td id="T_24da6_row1_col2" class="data row1 col2" >117.99</td>
	  <td id="T_24da6_row1_col3" class="data row1 col3" >113.19</td>
	  <td id="T_24da6_row1_col4" class="data row1 col4" >104.81</td>
	  <td id="T_24da6_row1_col5" class="data row1 col5" >98.74</td>
	  <td id="T_24da6_row1_col6" class="data row1 col6" >89.17</td>
	  <td id="T_24da6_row1_col7" class="data row1 col7" >82.15</td>
	  <td id="T_24da6_row1_col8" class="data row1 col8" >71.85</td>
	  <td id="T_24da6_row1_col9" class="data row1 col9" >64.32</td>
	  <td id="T_24da6_row1_col10" class="data row1 col10" >53.91</td>
	  <td id="T_24da6_row1_col11" class="data row1 col11" >46.75</td>
	  <td id="T_24da6_row1_col12" class="data row1 col12" >37.18</td>
	  <td id="T_24da6_row1_col13" class="data row1 col13" >31.13</td>
	  <td id="T_24da6_row1_col14" class="data row1 col14" >23.00</td>
	  <td id="T_24da6_row1_col15" class="data row1 col15" >18.79</td>
	  <td id="T_24da6_row1_col16" class="data row1 col16" >12.76</td>
	  <td id="T_24da6_row1_col17" class="data row1 col17" >10.43</td>
	  <td id="T_24da6_row1_col18" class="data row1 col18" >6.24</td>
	  <td id="T_24da6_row1_col19" class="data row1 col19" >5.52</td>
	  <td id="T_24da6_row1_col20" class="data row1 col20" >2.85</td>
	  <td id="T_24da6_row1_col21" class="data row1 col21" >3.05</td>
	  <td id="T_24da6_row1_col22" class="data row1 col22" >1.23</td>
	  <td id="T_24da6_row1_col23" class="data row1 col23" >1.75</td>
	  <td id="T_24da6_row1_col24" class="data row1 col24" >0.46</td>
	  <td id="T_24da6_row1_col25" class="data row1 col25" >0.97</td>
	  <td id="T_24da6_row1_col26" class="data row1 col26" >0.14</td>
	  <td id="T_24da6_row1_col27" class="data row1 col27" >0.47</td>
	  <td id="T_24da6_row1_col28" class="data row1 col28" >0.03</td>
	  <td id="T_24da6_row1_col29" class="data row1 col29" >0.18</td>
	  <td id="T_24da6_row1_col30" class="data row1 col30" >0.00</td>
	  <td id="T_24da6_row1_col31" class="data row1 col31" >0.04</td>
	  <td id="T_24da6_row1_col32" class="data row1 col32" >0.00</td>
	  <td id="T_24da6_row1_col33" class="data row1 col33" >0.00</td>
	  <td id="T_24da6_row1_col34" class="data row1 col34" >0.00</td>
	  <td id="T_24da6_row1_col35" class="data row1 col35" >0.00</td>
	  <td id="T_24da6_row1_col36" class="data row1 col36" >0.00</td>
	  <td id="T_24da6_row1_col37" class="data row1 col37" >0.00</td>
	  <td id="T_24da6_row1_col38" class="data row1 col38" >0.00</td>
	  <td id="T_24da6_row1_col39" class="data row1 col39" >0.00</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_24da6_row2_col0" class="data row2 col0" ></td>
	  <td id="T_24da6_row2_col1" class="data row2 col1" ></td>
	  <td id="T_24da6_row2_col2" class="data row2 col2" >129.33</td>
	  <td id="T_24da6_row2_col3" class="data row2 col3" >125.68</td>
	  <td id="T_24da6_row2_col4" class="data row2 col4" >118.50</td>
	  <td id="T_24da6_row2_col5" class="data row2 col5" >113.65</td>
	  <td id="T_24da6_row2_col6" class="data row2 col6" >105.23</td>
	  <td id="T_24da6_row2_col7" class="data row2 col7" >99.23</td>
	  <td id="T_24da6_row2_col8" class="data row2 col8" >89.74</td>
	  <td id="T_24da6_row2_col9" class="data row2 col9" >82.72</td>
	  <td id="T_24da6_row2_col10" class="data row2 col10" >72.46</td>
	  <td id="T_24da6_row2_col11" class="data row2 col11" >65.02</td>
	  <td id="T_24da6_row2_col12" class="data row2 col12" >54.69</td>
	  <td id="T_24da6_row2_col13" class="data row2 col13" >47.44</td>
	  <td id="T_24da6_row2_col14" class="data row2 col14" >37.68</td>
	  <td id="T_24da6_row2_col15" class="data row2 col15" >31.56</td>
	  <td id="T_24da6_row2_col16" class="data row2 col16" >23.43</td>
	  <td id="T_24da6_row2_col17" class="data row2 col17" >18.98</td>
	  <td id="T_24da6_row2_col18" class="data row2 col18" >12.73</td>
	  <td id="T_24da6_row2_col19" class="data row2 col19" >10.29</td>
	  <td id="T_24da6_row2_col20" class="data row2 col20" >6.15</td>
	  <td id="T_24da6_row2_col21" class="data row2 col21" >5.33</td>
	  <td id="T_24da6_row2_col22" class="data row2 col22" >2.65</td>
	  <td id="T_24da6_row2_col23" class="data row2 col23" >2.74</td>
	  <td id="T_24da6_row2_col24" class="data row2 col24" >1.01</td>
	  <td id="T_24da6_row2_col25" class="data row2 col25" >1.45</td>
	  <td id="T_24da6_row2_col26" class="data row2 col26" >0.33</td>
	  <td id="T_24da6_row2_col27" class="data row2 col27" >0.75</td>
	  <td id="T_24da6_row2_col28" class="data row2 col28" >0.08</td>
	  <td id="T_24da6_row2_col29" class="data row2 col29" >0.33</td>
	  <td id="T_24da6_row2_col30" class="data row2 col30" >0.01</td>
	  <td id="T_24da6_row2_col31" class="data row2 col31" >0.10</td>
	  <td id="T_24da6_row2_col32" class="data row2 col32" >0.00</td>
	  <td id="T_24da6_row2_col33" class="data row2 col33" >0.02</td>
	  <td id="T_24da6_row2_col34" class="data row2 col34" >0.00</td>
	  <td id="T_24da6_row2_col35" class="data row2 col35" >0.00</td>
	  <td id="T_24da6_row2_col36" class="data row2 col36" >0.00</td>
	  <td id="T_24da6_row2_col37" class="data row2 col37" >0.00</td>
	  <td id="T_24da6_row2_col38" class="data row2 col38" >0.00</td>
	  <td id="T_24da6_row2_col39" class="data row2 col39" >0.00</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_24da6_row3_col0" class="data row3 col0" ></td>
	  <td id="T_24da6_row3_col1" class="data row3 col1" ></td>
	  <td id="T_24da6_row3_col2" class="data row3 col2" ></td>
	  <td id="T_24da6_row3_col3" class="data row3 col3" >135.45</td>
	  <td id="T_24da6_row3_col4" class="data row3 col4" >129.40</td>
	  <td id="T_24da6_row3_col5" class="data row3 col5" >125.80</td>
	  <td id="T_24da6_row3_col6" class="data row3 col6" >118.68</td>
	  <td id="T_24da6_row3_col7" class="data row3 col7" >114.01</td>
	  <td id="T_24da6_row3_col8" class="data row3 col8" >105.82</td>
	  <td id="T_24da6_row3_col9" class="data row3 col9" >100.00</td>
	  <td id="T_24da6_row3_col10" class="data row3 col10" >90.73</td>
	  <td id="T_24da6_row3_col11" class="data row3 col11" >84.02</td>
	  <td id="T_24da6_row3_col12" class="data row3 col12" >74.06</td>
	  <td id="T_24da6_row3_col13" class="data row3 col13" >66.76</td>
	  <td id="T_24da6_row3_col14" class="data row3 col14" >56.43</td>
	  <td id="T_24da6_row3_col15" class="data row3 col15" >49.30</td>
	  <td id="T_24da6_row3_col16" class="data row3 col16" >39.67</td>
	  <td id="T_24da6_row3_col17" class="data row3 col17" >33.37</td>
	  <td id="T_24da6_row3_col18" class="data row3 col18" >24.94</td>
	  <td id="T_24da6_row3_col19" class="data row3 col19" >20.32</td>
	  <td id="T_24da6_row3_col20" class="data row3 col20" >14.00</td>
	  <td id="T_24da6_row3_col21" class="data row3 col21" >11.31</td>
	  <td id="T_24da6_row3_col22" class="data row3 col22" >6.90</td>
	  <td id="T_24da6_row3_col23" class="data row3 col23" >5.76</td>
	  <td id="T_24da6_row3_col24" class="data row3 col24" >2.92</td>
	  <td id="T_24da6_row3_col25" class="data row3 col25" >2.82</td>
	  <td id="T_24da6_row3_col26" class="data row3 col26" >1.07</td>
	  <td id="T_24da6_row3_col27" class="data row3 col27" >1.39</td>
	  <td id="T_24da6_row3_col28" class="data row3 col28" >0.34</td>
	  <td id="T_24da6_row3_col29" class="data row3 col29" >0.67</td>
	  <td id="T_24da6_row3_col30" class="data row3 col30" >0.08</td>
	  <td id="T_24da6_row3_col31" class="data row3 col31" >0.28</td>
	  <td id="T_24da6_row3_col32" class="data row3 col32" >0.01</td>
	  <td id="T_24da6_row3_col33" class="data row3 col33" >0.08</td>
	  <td id="T_24da6_row3_col34" class="data row3 col34" >0.00</td>
	  <td id="T_24da6_row3_col35" class="data row3 col35" >0.01</td>
	  <td id="T_24da6_row3_col36" class="data row3 col36" >0.00</td>
	  <td id="T_24da6_row3_col37" class="data row3 col37" >0.00</td>
	  <td id="T_24da6_row3_col38" class="data row3 col38" >0.00</td>
	  <td id="T_24da6_row3_col39" class="data row3 col39" >0.00</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_24da6_row4_col0" class="data row4 col0" ></td>
	  <td id="T_24da6_row4_col1" class="data row4 col1" ></td>
	  <td id="T_24da6_row4_col2" class="data row4 col2" ></td>
	  <td id="T_24da6_row4_col3" class="data row4 col3" ></td>
	  <td id="T_24da6_row4_col4" class="data row4 col4" >137.46</td>
	  <td id="T_24da6_row4_col5" class="data row4 col5" >134.92</td>
	  <td id="T_24da6_row4_col6" class="data row4 col6" >128.99</td>
	  <td id="T_24da6_row4_col7" class="data row4 col7" >125.61</td>
	  <td id="T_24da6_row4_col8" class="data row4 col8" >118.77</td>
	  <td id="T_24da6_row4_col9" class="data row4 col9" >114.38</td>
	  <td id="T_24da6_row4_col10" class="data row4 col10" >106.51</td>
	  <td id="T_24da6_row4_col11" class="data row4 col11" >101.13</td>
	  <td id="T_24da6_row4_col12" class="data row4 col12" >92.34</td>
	  <td id="T_24da6_row4_col13" class="data row4 col13" >86.01</td>
	  <td id="T_24da6_row4_col14" class="data row4 col14" >76.33</td>
	  <td id="T_24da6_row4_col15" class="data row4 col15" >69.44</td>
	  <td id="T_24da6_row4_col16" class="data row4 col16" >59.54</td>
	  <td id="T_24da6_row4_col17" class="data row4 col17" >52.55</td>
	  <td id="T_24da6_row4_col18" class="data row4 col18" >42.87</td>
	  <td id="T_24da6_row4_col19" class="data row4 col19" >36.64</td>
	  <td id="T_24da6_row4_col20" class="data row4 col20" >28.28</td>
	  <td id="T_24da6_row4_col21" class="data row4 col21" >23.48</td>
	  <td id="T_24da6_row4_col22" class="data row4 col22" >16.76</td>
	  <td id="T_24da6_row4_col23" class="data row4 col23" >13.61</td>
	  <td id="T_24da6_row4_col24" class="data row4 col24" >8.73</td>
	  <td id="T_24da6_row4_col25" class="data row4 col25" >7.20</td>
	  <td id="T_24da6_row4_col26" class="data row4 col26" >3.98</td>
	  <td id="T_24da6_row4_col27" class="data row4 col27" >3.60</td>
	  <td id="T_24da6_row4_col28" class="data row4 col28" >1.59</td>
	  <td id="T_24da6_row4_col29" class="data row4 col29" >1.78</td>
	  <td id="T_24da6_row4_col30" class="data row4 col30" >0.54</td>
	  <td id="T_24da6_row4_col31" class="data row4 col31" >0.86</td>
	  <td id="T_24da6_row4_col32" class="data row4 col32" >0.14</td>
	  <td id="T_24da6_row4_col33" class="data row4 col33" >0.38</td>
	  <td id="T_24da6_row4_col34" class="data row4 col34" >0.03</td>
	  <td id="T_24da6_row4_col35" class="data row4 col35" >0.13</td>
	  <td id="T_24da6_row4_col36" class="data row4 col36" >0.00</td>
	  <td id="T_24da6_row4_col37" class="data row4 col37" >0.03</td>
	  <td id="T_24da6_row4_col38" class="data row4 col38" >0.00</td>
	  <td id="T_24da6_row4_col39" class="data row4 col39" >0.12</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_24da6_row5_col0" class="data row5 col0" ></td>
	  <td id="T_24da6_row5_col1" class="data row5 col1" ></td>
	  <td id="T_24da6_row5_col2" class="data row5 col2" ></td>
	  <td id="T_24da6_row5_col3" class="data row5 col3" ></td>
	  <td id="T_24da6_row5_col4" class="data row5 col4" ></td>
	  <td id="T_24da6_row5_col5" class="data row5 col5" >141.20</td>
	  <td id="T_24da6_row5_col6" class="data row5 col6" >136.18</td>
	  <td id="T_24da6_row5_col7" class="data row5 col7" >133.82</td>
	  <td id="T_24da6_row5_col8" class="data row5 col8" >128.11</td>
	  <td id="T_24da6_row5_col9" class="data row5 col9" >124.98</td>
	  <td id="T_24da6_row5_col10" class="data row5 col10" >118.44</td>
	  <td id="T_24da6_row5_col11" class="data row5 col11" >114.44</td>
	  <td id="T_24da6_row5_col12" class="data row5 col12" >107.03</td>
	  <td id="T_24da6_row5_col13" class="data row5 col13" >102.08</td>
	  <td id="T_24da6_row5_col14" class="data row5 col14" >93.67</td>
	  <td id="T_24da6_row5_col15" class="data row5 col15" >87.87</td>
	  <td id="T_24da6_row5_col16" class="data row5 col16" >78.78</td>
	  <td id="T_24da6_row5_col17" class="data row5 col17" >72.30</td>
	  <td id="T_24da6_row5_col18" class="data row5 col18" >62.70</td>
	  <td id="T_24da6_row5_col19" class="data row5 col19" >56.12</td>
	  <td id="T_24da6_row5_col20" class="data row5 col20" >46.87</td>
	  <td id="T_24da6_row5_col21" class="data row5 col21" >40.83</td>
	  <td id="T_24da6_row5_col22" class="data row5 col22" >32.39</td>
	  <td id="T_24da6_row5_col23" class="data row5 col23" >27.38</td>
	  <td id="T_24da6_row5_col24" class="data row5 col24" >20.33</td>
	  <td id="T_24da6_row5_col25" class="data row5 col25" >16.82</td>
	  <td id="T_24da6_row5_col26" class="data row5 col26" >11.49</td>
	  <td id="T_24da6_row5_col27" class="data row5 col27" >9.53</td>
	  <td id="T_24da6_row5_col28" class="data row5 col28" >5.82</td>
	  <td id="T_24da6_row5_col29" class="data row5 col29" >5.06</td>
	  <td id="T_24da6_row5_col30" class="data row5 col30" >2.62</td>
	  <td id="T_24da6_row5_col31" class="data row5 col31" >2.58</td>
	  <td id="T_24da6_row5_col32" class="data row5 col32" >1.04</td>
	  <td id="T_24da6_row5_col33" class="data row5 col33" >1.29</td>
	  <td id="T_24da6_row5_col34" class="data row5 col34" >0.36</td>
	  <td id="T_24da6_row5_col35" class="data row5 col35" >0.62</td>
	  <td id="T_24da6_row5_col36" class="data row5 col36" >0.14</td>
	  <td id="T_24da6_row5_col37" class="data row5 col37" >0.31</td>
	  <td id="T_24da6_row5_col38" class="data row5 col38" >0.25</td>
	  <td id="T_24da6_row5_col39" class="data row5 col39" >2.05</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_24da6_row6_col0" class="data row6 col0" ></td>
	  <td id="T_24da6_row6_col1" class="data row6 col1" ></td>
	  <td id="T_24da6_row6_col2" class="data row6 col2" ></td>
	  <td id="T_24da6_row6_col3" class="data row6 col3" ></td>
	  <td id="T_24da6_row6_col4" class="data row6 col4" ></td>
	  <td id="T_24da6_row6_col5" class="data row6 col5" ></td>
	  <td id="T_24da6_row6_col6" class="data row6 col6" >141.03</td>
	  <td id="T_24da6_row6_col7" class="data row6 col7" >139.42</td>
	  <td id="T_24da6_row6_col8" class="data row6 col8" >134.55</td>
	  <td id="T_24da6_row6_col9" class="data row6 col9" >132.38</td>
	  <td id="T_24da6_row6_col10" class="data row6 col10" >126.90</td>
	  <td id="T_24da6_row6_col11" class="data row6 col11" >124.07</td>
	  <td id="T_24da6_row6_col12" class="data row6 col12" >117.88</td>
	  <td id="T_24da6_row6_col13" class="data row6 col13" >114.26</td>
	  <td id="T_24da6_row6_col14" class="data row6 col14" >107.21</td>
	  <td id="T_24da6_row6_col15" class="data row6 col15" >102.76</td>
	  <td id="T_24da6_row6_col16" class="data row6 col16" >94.92</td>
	  <td id="T_24da6_row6_col17" class="data row6 col17" >89.63</td>
	  <td id="T_24da6_row6_col18" class="data row6 col18" >80.99</td>
	  <td id="T_24da6_row6_col19" class="data row6 col19" >75.12</td>
	  <td id="T_24da6_row6_col20" class="data row6 col20" >66.19</td>
	  <td id="T_24da6_row6_col21" class="data row6 col21" >60.14</td>
	  <td id="T_24da6_row6_col22" class="data row6 col22" >51.23</td>
	  <td id="T_24da6_row6_col23" class="data row6 col23" >45.41</td>
	  <td id="T_24da6_row6_col24" class="data row6 col24" >37.07</td>
	  <td id="T_24da6_row6_col25" class="data row6 col25" >32.08</td>
	  <td id="T_24da6_row6_col26" class="data row6 col26" >24.91</td>
	  <td id="T_24da6_row6_col27" class="data row6 col27" >21.17</td>
	  <td id="T_24da6_row6_col28" class="data row6 col28" >15.47</td>
	  <td id="T_24da6_row6_col29" class="data row6 col29" >13.09</td>
	  <td id="T_24da6_row6_col30" class="data row6 col30" >8.87</td>
	  <td id="T_24da6_row6_col31" class="data row6 col31" >7.69</td>
	  <td id="T_24da6_row6_col32" class="data row6 col32" >4.76</td>
	  <td id="T_24da6_row6_col33" class="data row6 col33" >4.43</td>
	  <td id="T_24da6_row6_col34" class="data row6 col34" >2.53</td>
	  <td id="T_24da6_row6_col35" class="data row6 col35" >2.69</td>
	  <td id="T_24da6_row6_col36" class="data row6 col36" >1.63</td>
	  <td id="T_24da6_row6_col37" class="data row6 col37" >2.25</td>
	  <td id="T_24da6_row6_col38" class="data row6 col38" >2.91</td>
	  <td id="T_24da6_row6_col39" class="data row6 col39" >10.75</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_24da6_row7_col0" class="data row7 col0" ></td>
	  <td id="T_24da6_row7_col1" class="data row7 col1" ></td>
	  <td id="T_24da6_row7_col2" class="data row7 col2" ></td>
	  <td id="T_24da6_row7_col3" class="data row7 col3" ></td>
	  <td id="T_24da6_row7_col4" class="data row7 col4" ></td>
	  <td id="T_24da6_row7_col5" class="data row7 col5" ></td>
	  <td id="T_24da6_row7_col6" class="data row7 col6" ></td>
	  <td id="T_24da6_row7_col7" class="data row7 col7" >143.17</td>
	  <td id="T_24da6_row7_col8" class="data row7 col8" >138.90</td>
	  <td id="T_24da6_row7_col9" class="data row7 col9" >137.41</td>
	  <td id="T_24da6_row7_col10" class="data row7 col10" >132.70</td>
	  <td id="T_24da6_row7_col11" class="data row7 col11" >130.74</td>
	  <td id="T_24da6_row7_col12" class="data row7 col12" >125.52</td>
	  <td id="T_24da6_row7_col13" class="data row7 col13" >122.96</td>
	  <td id="T_24da6_row7_col14" class="data row7 col14" >117.06</td>
	  <td id="T_24da6_row7_col15" class="data row7 col15" >113.83</td>
	  <td id="T_24da6_row7_col16" class="data row7 col16" >107.25</td>
	  <td id="T_24da6_row7_col17" class="data row7 col17" >103.24</td>
	  <td id="T_24da6_row7_col18" class="data row7 col18" >95.87</td>
	  <td id="T_24da6_row7_col19" class="data row7 col19" >91.18</td>
	  <td id="T_24da6_row7_col20" class="data row7 col20" >83.26</td>
	  <td id="T_24da6_row7_col21" class="data row7 col21" >78.05</td>
	  <td id="T_24da6_row7_col22" class="data row7 col22" >69.69</td>
	  <td id="T_24da6_row7_col23" class="data row7 col23" >64.18</td>
	  <td id="T_24da6_row7_col24" class="data row7 col24" >55.76</td>
	  <td id="T_24da6_row7_col25" class="data row7 col25" >50.39</td>
	  <td id="T_24da6_row7_col26" class="data row7 col26" >42.42</td>
	  <td id="T_24da6_row7_col27" class="data row7 col27" >37.69</td>
	  <td id="T_24da6_row7_col28" class="data row7 col28" >30.63</td>
	  <td id="T_24da6_row7_col29" class="data row7 col29" >26.89</td>
	  <td id="T_24da6_row7_col30" class="data row7 col30" >21.04</td>
	  <td id="T_24da6_row7_col31" class="data row7 col31" >18.49</td>
	  <td id="T_24da6_row7_col32" class="data row7 col32" >14.02</td>
	  <td id="T_24da6_row7_col33" class="data row7 col33" >12.67</td>
	  <td id="T_24da6_row7_col34" class="data row7 col34" >9.60</td>
	  <td id="T_24da6_row7_col35" class="data row7 col35" >9.41</td>
	  <td id="T_24da6_row7_col36" class="data row7 col36" >7.91</td>
	  <td id="T_24da6_row7_col37" class="data row7 col37" >9.54</td>
	  <td id="T_24da6_row7_col38" class="data row7 col38" >12.38</td>
	  <td id="T_24da6_row7_col39" class="data row7 col39" >27.26</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row8" class="row_heading level0 row8" >8</th>
	  <td id="T_24da6_row8_col0" class="data row8 col0" ></td>
	  <td id="T_24da6_row8_col1" class="data row8 col1" ></td>
	  <td id="T_24da6_row8_col2" class="data row8 col2" ></td>
	  <td id="T_24da6_row8_col3" class="data row8 col3" ></td>
	  <td id="T_24da6_row8_col4" class="data row8 col4" ></td>
	  <td id="T_24da6_row8_col5" class="data row8 col5" ></td>
	  <td id="T_24da6_row8_col6" class="data row8 col6" ></td>
	  <td id="T_24da6_row8_col7" class="data row8 col7" ></td>
	  <td id="T_24da6_row8_col8" class="data row8 col8" >141.81</td>
	  <td id="T_24da6_row8_col9" class="data row8 col9" >140.80</td>
	  <td id="T_24da6_row8_col10" class="data row8 col10" >136.63</td>
	  <td id="T_24da6_row8_col11" class="data row8 col11" >135.29</td>
	  <td id="T_24da6_row8_col12" class="data row8 col12" >130.75</td>
	  <td id="T_24da6_row8_col13" class="data row8 col13" >128.98</td>
	  <td id="T_24da6_row8_col14" class="data row8 col14" >123.96</td>
	  <td id="T_24da6_row8_col15" class="data row8 col15" >121.68</td>
	  <td id="T_24da6_row8_col16" class="data row8 col16" >116.13</td>
	  <td id="T_24da6_row8_col17" class="data row8 col17" >113.25</td>
	  <td id="T_24da6_row8_col18" class="data row8 col18" >107.05</td>
	  <td id="T_24da6_row8_col19" class="data row8 col19" >103.55</td>
	  <td id="T_24da6_row8_col20" class="data row8 col20" >96.79</td>
	  <td id="T_24da6_row8_col21" class="data row8 col21" >92.72</td>
	  <td id="T_24da6_row8_col22" class="data row8 col22" >85.41</td>
	  <td id="T_24da6_row8_col23" class="data row8 col23" >80.83</td>
	  <td id="T_24da6_row8_col24" class="data row8 col24" >73.14</td>
	  <td id="T_24da6_row8_col25" class="data row8 col25" >68.32</td>
	  <td id="T_24da6_row8_col26" class="data row8 col26" >60.60</td>
	  <td id="T_24da6_row8_col27" class="data row8 col27" >55.91</td>
	  <td id="T_24da6_row8_col28" class="data row8 col28" >48.53</td>
	  <td id="T_24da6_row8_col29" class="data row8 col29" >44.34</td>
	  <td id="T_24da6_row8_col30" class="data row8 col30" >37.72</td>
	  <td id="T_24da6_row8_col31" class="data row8 col31" >34.41</td>
	  <td id="T_24da6_row8_col32" class="data row8 col32" >28.95</td>
	  <td id="T_24da6_row8_col33" class="data row8 col33" >26.89</td>
	  <td id="T_24da6_row8_col34" class="data row8 col34" >23.01</td>
	  <td id="T_24da6_row8_col35" class="data row8 col35" >22.66</td>
	  <td id="T_24da6_row8_col36" class="data row8 col36" >21.19</td>
	  <td id="T_24da6_row8_col37" class="data row8 col37" >24.19</td>
	  <td id="T_24da6_row8_col38" class="data row8 col38" >29.28</td>
	  <td id="T_24da6_row8_col39" class="data row8 col39" >47.45</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row9" class="row_heading level0 row9" >9</th>
	  <td id="T_24da6_row9_col0" class="data row9 col0" ></td>
	  <td id="T_24da6_row9_col1" class="data row9 col1" ></td>
	  <td id="T_24da6_row9_col2" class="data row9 col2" ></td>
	  <td id="T_24da6_row9_col3" class="data row9 col3" ></td>
	  <td id="T_24da6_row9_col4" class="data row9 col4" ></td>
	  <td id="T_24da6_row9_col5" class="data row9 col5" ></td>
	  <td id="T_24da6_row9_col6" class="data row9 col6" ></td>
	  <td id="T_24da6_row9_col7" class="data row9 col7" ></td>
	  <td id="T_24da6_row9_col8" class="data row9 col8" ></td>
	  <td id="T_24da6_row9_col9" class="data row9 col9" >143.07</td>
	  <td id="T_24da6_row9_col10" class="data row9 col10" >139.27</td>
	  <td id="T_24da6_row9_col11" class="data row9 col11" >138.35</td>
	  <td id="T_24da6_row9_col12" class="data row9 col12" >134.30</td>
	  <td id="T_24da6_row9_col13" class="data row9 col13" >133.08</td>
	  <td id="T_24da6_row9_col14" class="data row9 col14" >128.68</td>
	  <td id="T_24da6_row9_col15" class="data row9 col15" >127.09</td>
	  <td id="T_24da6_row9_col16" class="data row9 col16" >122.31</td>
	  <td id="T_24da6_row9_col17" class="data row9 col17" >120.28</td>
	  <td id="T_24da6_row9_col18" class="data row9 col18" >115.00</td>
	  <td id="T_24da6_row9_col19" class="data row9 col19" >112.49</td>
	  <td id="T_24da6_row9_col20" class="data row9 col20" >106.75</td>
	  <td id="T_24da6_row9_col21" class="data row9 col21" >103.73</td>
	  <td id="T_24da6_row9_col22" class="data row9 col22" >97.48</td>
	  <td id="T_24da6_row9_col23" class="data row9 col23" >93.97</td>
	  <td id="T_24da6_row9_col24" class="data row9 col24" >87.28</td>
	  <td id="T_24da6_row9_col25" class="data row9 col25" >83.40</td>
	  <td id="T_24da6_row9_col26" class="data row9 col26" >76.46</td>
	  <td id="T_24da6_row9_col27" class="data row9 col27" >72.43</td>
	  <td id="T_24da6_row9_col28" class="data row9 col28" >65.52</td>
	  <td id="T_24da6_row9_col29" class="data row9 col29" >61.65</td>
	  <td id="T_24da6_row9_col30" class="data row9 col30" >55.11</td>
	  <td id="T_24da6_row9_col31" class="data row9 col31" >51.79</td>
	  <td id="T_24da6_row9_col32" class="data row9 col32" >46.11</td>
	  <td id="T_24da6_row9_col33" class="data row9 col33" >43.88</td>
	  <td id="T_24da6_row9_col34" class="data row9 col34" >39.72</td>
	  <td id="T_24da6_row9_col35" class="data row9 col35" >39.40</td>
	  <td id="T_24da6_row9_col36" class="data row9 col36" >38.02</td>
	  <td id="T_24da6_row9_col37" class="data row9 col37" >41.70</td>
	  <td id="T_24da6_row9_col38" class="data row9 col38" >47.22</td>
	  <td id="T_24da6_row9_col39" class="data row9 col39" >64.03</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row10" class="row_heading level0 row10" >10</th>
	  <td id="T_24da6_row10_col0" class="data row10 col0" ></td>
	  <td id="T_24da6_row10_col1" class="data row10 col1" ></td>
	  <td id="T_24da6_row10_col2" class="data row10 col2" ></td>
	  <td id="T_24da6_row10_col3" class="data row10 col3" ></td>
	  <td id="T_24da6_row10_col4" class="data row10 col4" ></td>
	  <td id="T_24da6_row10_col5" class="data row10 col5" ></td>
	  <td id="T_24da6_row10_col6" class="data row10 col6" ></td>
	  <td id="T_24da6_row10_col7" class="data row10 col7" ></td>
	  <td id="T_24da6_row10_col8" class="data row10 col8" ></td>
	  <td id="T_24da6_row10_col9" class="data row10 col9" ></td>
	  <td id="T_24da6_row10_col10" class="data row10 col10" >141.05</td>
	  <td id="T_24da6_row10_col11" class="data row10 col11" >140.42</td>
	  <td id="T_24da6_row10_col12" class="data row10 col12" >136.70</td>
	  <td id="T_24da6_row10_col13" class="data row10 col13" >135.86</td>
	  <td id="T_24da6_row10_col14" class="data row10 col14" >131.90</td>
	  <td id="T_24da6_row10_col15" class="data row10 col15" >130.81</td>
	  <td id="T_24da6_row10_col16" class="data row10 col16" >126.57</td>
	  <td id="T_24da6_row10_col17" class="data row10 col17" >125.15</td>
	  <td id="T_24da6_row10_col18" class="data row10 col18" >120.56</td>
	  <td id="T_24da6_row10_col19" class="data row10 col19" >118.79</td>
	  <td id="T_24da6_row10_col20" class="data row10 col20" >113.85</td>
	  <td id="T_24da6_row10_col21" class="data row10 col21" >111.69</td>
	  <td id="T_24da6_row10_col22" class="data row10 col22" >106.34</td>
	  <td id="T_24da6_row10_col23" class="data row10 col23" >103.77</td>
	  <td id="T_24da6_row10_col24" class="data row10 col24" >98.03</td>
	  <td id="T_24da6_row10_col25" class="data row10 col25" >95.11</td>
	  <td id="T_24da6_row10_col26" class="data row10 col26" >89.09</td>
	  <td id="T_24da6_row10_col27" class="data row10 col27" >85.94</td>
	  <td id="T_24da6_row10_col28" class="data row10 col28" >79.81</td>
	  <td id="T_24da6_row10_col29" class="data row10 col29" >76.65</td>
	  <td id="T_24da6_row10_col30" class="data row10 col30" >70.66</td>
	  <td id="T_24da6_row10_col31" class="data row10 col31" >67.81</td>
	  <td id="T_24da6_row10_col32" class="data row10 col32" >62.41</td>
	  <td id="T_24da6_row10_col33" class="data row10 col33" >60.41</td>
	  <td id="T_24da6_row10_col34" class="data row10 col34" >56.29</td>
	  <td id="T_24da6_row10_col35" class="data row10 col35" >56.03</td>
	  <td id="T_24da6_row10_col36" class="data row10 col36" >54.49</td>
	  <td id="T_24da6_row10_col37" class="data row10 col37" >57.97</td>
	  <td id="T_24da6_row10_col38" class="data row10 col38" >62.47</td>
	  <td id="T_24da6_row10_col39" class="data row10 col39" >76.12</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row11" class="row_heading level0 row11" >11</th>
	  <td id="T_24da6_row11_col0" class="data row11 col0" ></td>
	  <td id="T_24da6_row11_col1" class="data row11 col1" ></td>
	  <td id="T_24da6_row11_col2" class="data row11 col2" ></td>
	  <td id="T_24da6_row11_col3" class="data row11 col3" ></td>
	  <td id="T_24da6_row11_col4" class="data row11 col4" ></td>
	  <td id="T_24da6_row11_col5" class="data row11 col5" ></td>
	  <td id="T_24da6_row11_col6" class="data row11 col6" ></td>
	  <td id="T_24da6_row11_col7" class="data row11 col7" ></td>
	  <td id="T_24da6_row11_col8" class="data row11 col8" ></td>
	  <td id="T_24da6_row11_col9" class="data row11 col9" ></td>
	  <td id="T_24da6_row11_col10" class="data row11 col10" ></td>
	  <td id="T_24da6_row11_col11" class="data row11 col11" >141.84</td>
	  <td id="T_24da6_row11_col12" class="data row11 col12" >138.34</td>
	  <td id="T_24da6_row11_col13" class="data row11 col13" >137.76</td>
	  <td id="T_24da6_row11_col14" class="data row11 col14" >134.10</td>
	  <td id="T_24da6_row11_col15" class="data row11 col15" >133.35</td>
	  <td id="T_24da6_row11_col16" class="data row11 col16" >129.49</td>
	  <td id="T_24da6_row11_col17" class="data row11 col17" >128.52</td>
	  <td id="T_24da6_row11_col18" class="data row11 col18" >124.41</td>
	  <td id="T_24da6_row11_col19" class="data row11 col19" >123.18</td>
	  <td id="T_24da6_row11_col20" class="data row11 col20" >118.82</td>
	  <td id="T_24da6_row11_col21" class="data row11 col21" >117.31</td>
	  <td id="T_24da6_row11_col22" class="data row11 col22" >112.65</td>
	  <td id="T_24da6_row11_col23" class="data row11 col23" >110.83</td>
	  <td id="T_24da6_row11_col24" class="data row11 col24" >105.87</td>
	  <td id="T_24da6_row11_col25" class="data row11 col25" >103.77</td>
	  <td id="T_24da6_row11_col26" class="data row11 col26" >98.57</td>
	  <td id="T_24da6_row11_col27" class="data row11 col27" >96.26</td>
	  <td id="T_24da6_row11_col28" class="data row11 col28" >90.92</td>
	  <td id="T_24da6_row11_col29" class="data row11 col29" >88.54</td>
	  <td id="T_24da6_row11_col30" class="data row11 col30" >83.25</td>
	  <td id="T_24da6_row11_col31" class="data row11 col31" >81.05</td>
	  <td id="T_24da6_row11_col32" class="data row11 col32" >76.16</td>
	  <td id="T_24da6_row11_col33" class="data row11 col33" >74.58</td>
	  <td id="T_24da6_row11_col34" class="data row11 col34" >70.67</td>
	  <td id="T_24da6_row11_col35" class="data row11 col35" >70.49</td>
	  <td id="T_24da6_row11_col36" class="data row11 col36" >68.66</td>
	  <td id="T_24da6_row11_col37" class="data row11 col37" >71.48</td>
	  <td id="T_24da6_row11_col38" class="data row11 col38" >74.31</td>
	  <td id="T_24da6_row11_col39" class="data row11 col39" >84.49</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row12" class="row_heading level0 row12" >12</th>
	  <td id="T_24da6_row12_col0" class="data row12 col0" ></td>
	  <td id="T_24da6_row12_col1" class="data row12 col1" ></td>
	  <td id="T_24da6_row12_col2" class="data row12 col2" ></td>
	  <td id="T_24da6_row12_col3" class="data row12 col3" ></td>
	  <td id="T_24da6_row12_col4" class="data row12 col4" ></td>
	  <td id="T_24da6_row12_col5" class="data row12 col5" ></td>
	  <td id="T_24da6_row12_col6" class="data row12 col6" ></td>
	  <td id="T_24da6_row12_col7" class="data row12 col7" ></td>
	  <td id="T_24da6_row12_col8" class="data row12 col8" ></td>
	  <td id="T_24da6_row12_col9" class="data row12 col9" ></td>
	  <td id="T_24da6_row12_col10" class="data row12 col10" ></td>
	  <td id="T_24da6_row12_col11" class="data row12 col11" ></td>
	  <td id="T_24da6_row12_col12" class="data row12 col12" >139.46</td>
	  <td id="T_24da6_row12_col13" class="data row12 col13" >139.06</td>
	  <td id="T_24da6_row12_col14" class="data row12 col14" >135.61</td>
	  <td id="T_24da6_row12_col15" class="data row12 col15" >135.09</td>
	  <td id="T_24da6_row12_col16" class="data row12 col16" >131.50</td>
	  <td id="T_24da6_row12_col17" class="data row12 col17" >130.83</td>
	  <td id="T_24da6_row12_col18" class="data row12 col18" >127.07</td>
	  <td id="T_24da6_row12_col19" class="data row12 col19" >126.22</td>
	  <td id="T_24da6_row12_col20" class="data row12 col20" >122.28</td>
	  <td id="T_24da6_row12_col21" class="data row12 col21" >121.23</td>
	  <td id="T_24da6_row12_col22" class="data row12 col22" >117.08</td>
	  <td id="T_24da6_row12_col23" class="data row12 col23" >115.81</td>
	  <td id="T_24da6_row12_col24" class="data row12 col24" >111.44</td>
	  <td id="T_24da6_row12_col25" class="data row12 col25" >109.96</td>
	  <td id="T_24da6_row12_col26" class="data row12 col26" >105.42</td>
	  <td id="T_24da6_row12_col27" class="data row12 col27" >103.78</td>
	  <td id="T_24da6_row12_col28" class="data row12 col28" >99.13</td>
	  <td id="T_24da6_row12_col29" class="data row12 col29" >97.43</td>
	  <td id="T_24da6_row12_col30" class="data row12 col30" >92.79</td>
	  <td id="T_24da6_row12_col31" class="data row12 col31" >91.22</td>
	  <td id="T_24da6_row12_col32" class="data row12 col32" >86.87</td>
	  <td id="T_24da6_row12_col33" class="data row12 col33" >85.75</td>
	  <td id="T_24da6_row12_col34" class="data row12 col34" >82.14</td>
	  <td id="T_24da6_row12_col35" class="data row12 col35" >82.09</td>
	  <td id="T_24da6_row12_col36" class="data row12 col36" >80.05</td>
	  <td id="T_24da6_row12_col37" class="data row12 col37" >82.23</td>
	  <td id="T_24da6_row12_col38" class="data row12 col38" >83.53</td>
	  <td id="T_24da6_row12_col39" class="data row12 col39" >90.71</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row13" class="row_heading level0 row13" >13</th>
	  <td id="T_24da6_row13_col0" class="data row13 col0" ></td>
	  <td id="T_24da6_row13_col1" class="data row13 col1" ></td>
	  <td id="T_24da6_row13_col2" class="data row13 col2" ></td>
	  <td id="T_24da6_row13_col3" class="data row13 col3" ></td>
	  <td id="T_24da6_row13_col4" class="data row13 col4" ></td>
	  <td id="T_24da6_row13_col5" class="data row13 col5" ></td>
	  <td id="T_24da6_row13_col6" class="data row13 col6" ></td>
	  <td id="T_24da6_row13_col7" class="data row13 col7" ></td>
	  <td id="T_24da6_row13_col8" class="data row13 col8" ></td>
	  <td id="T_24da6_row13_col9" class="data row13 col9" ></td>
	  <td id="T_24da6_row13_col10" class="data row13 col10" ></td>
	  <td id="T_24da6_row13_col11" class="data row13 col11" ></td>
	  <td id="T_24da6_row13_col12" class="data row13 col12" ></td>
	  <td id="T_24da6_row13_col13" class="data row13 col13" >139.95</td>
	  <td id="T_24da6_row13_col14" class="data row13 col14" >136.64</td>
	  <td id="T_24da6_row13_col15" class="data row13 col15" >136.28</td>
	  <td id="T_24da6_row13_col16" class="data row13 col16" >132.87</td>
	  <td id="T_24da6_row13_col17" class="data row13 col17" >132.41</td>
	  <td id="T_24da6_row13_col18" class="data row13 col18" >128.89</td>
	  <td id="T_24da6_row13_col19" class="data row13 col19" >128.30</td>
	  <td id="T_24da6_row13_col20" class="data row13 col20" >124.64</td>
	  <td id="T_24da6_row13_col21" class="data row13 col21" >123.92</td>
	  <td id="T_24da6_row13_col22" class="data row13 col22" >120.12</td>
	  <td id="T_24da6_row13_col23" class="data row13 col23" >119.23</td>
	  <td id="T_24da6_row13_col24" class="data row13 col24" >115.28</td>
	  <td id="T_24da6_row13_col25" class="data row13 col25" >114.25</td>
	  <td id="T_24da6_row13_col26" class="data row13 col26" >110.17</td>
	  <td id="T_24da6_row13_col27" class="data row13 col27" >109.03</td>
	  <td id="T_24da6_row13_col28" class="data row13 col28" >104.88</td>
	  <td id="T_24da6_row13_col29" class="data row13 col29" >103.70</td>
	  <td id="T_24da6_row13_col30" class="data row13 col30" >99.56</td>
	  <td id="T_24da6_row13_col31" class="data row13 col31" >98.47</td>
	  <td id="T_24da6_row13_col32" class="data row13 col32" >94.54</td>
	  <td id="T_24da6_row13_col33" class="data row13 col33" >93.79</td>
	  <td id="T_24da6_row13_col34" class="data row13 col34" >90.41</td>
	  <td id="T_24da6_row13_col35" class="data row13 col35" >90.45</td>
	  <td id="T_24da6_row13_col36" class="data row13 col36" >88.22</td>
	  <td id="T_24da6_row13_col37" class="data row13 col37" >89.88</td>
	  <td id="T_24da6_row13_col38" class="data row13 col38" >89.98</td>
	  <td id="T_24da6_row13_col39" class="data row13 col39" >94.95</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row14" class="row_heading level0 row14" >14</th>
	  <td id="T_24da6_row14_col0" class="data row14 col0" ></td>
	  <td id="T_24da6_row14_col1" class="data row14 col1" ></td>
	  <td id="T_24da6_row14_col2" class="data row14 col2" ></td>
	  <td id="T_24da6_row14_col3" class="data row14 col3" ></td>
	  <td id="T_24da6_row14_col4" class="data row14 col4" ></td>
	  <td id="T_24da6_row14_col5" class="data row14 col5" ></td>
	  <td id="T_24da6_row14_col6" class="data row14 col6" ></td>
	  <td id="T_24da6_row14_col7" class="data row14 col7" ></td>
	  <td id="T_24da6_row14_col8" class="data row14 col8" ></td>
	  <td id="T_24da6_row14_col9" class="data row14 col9" ></td>
	  <td id="T_24da6_row14_col10" class="data row14 col10" ></td>
	  <td id="T_24da6_row14_col11" class="data row14 col11" ></td>
	  <td id="T_24da6_row14_col12" class="data row14 col12" ></td>
	  <td id="T_24da6_row14_col13" class="data row14 col13" ></td>
	  <td id="T_24da6_row14_col14" class="data row14 col14" >137.34</td>
	  <td id="T_24da6_row14_col15" class="data row14 col15" >137.09</td>
	  <td id="T_24da6_row14_col16" class="data row14 col16" >133.81</td>
	  <td id="T_24da6_row14_col17" class="data row14 col17" >133.49</td>
	  <td id="T_24da6_row14_col18" class="data row14 col18" >130.13</td>
	  <td id="T_24da6_row14_col19" class="data row14 col19" >129.72</td>
	  <td id="T_24da6_row14_col20" class="data row14 col20" >126.26</td>
	  <td id="T_24da6_row14_col21" class="data row14 col21" >125.76</td>
	  <td id="T_24da6_row14_col22" class="data row14 col22" >122.20</td>
	  <td id="T_24da6_row14_col23" class="data row14 col23" >121.58</td>
	  <td id="T_24da6_row14_col24" class="data row14 col24" >117.91</td>
	  <td id="T_24da6_row14_col25" class="data row14 col25" >117.19</td>
	  <td id="T_24da6_row14_col26" class="data row14 col26" >113.43</td>
	  <td id="T_24da6_row14_col27" class="data row14 col27" >112.64</td>
	  <td id="T_24da6_row14_col28" class="data row14 col28" >108.83</td>
	  <td id="T_24da6_row14_col29" class="data row14 col29" >108.00</td>
	  <td id="T_24da6_row14_col30" class="data row14 col30" >104.21</td>
	  <td id="T_24da6_row14_col31" class="data row14 col31" >103.46</td>
	  <td id="T_24da6_row14_col32" class="data row14 col32" >99.82</td>
	  <td id="T_24da6_row14_col33" class="data row14 col33" >99.31</td>
	  <td id="T_24da6_row14_col34" class="data row14 col34" >96.07</td>
	  <td id="T_24da6_row14_col35" class="data row14 col35" >96.14</td>
	  <td id="T_24da6_row14_col36" class="data row14 col36" >93.72</td>
	  <td id="T_24da6_row14_col37" class="data row14 col37" >94.93</td>
	  <td id="T_24da6_row14_col38" class="data row14 col38" >94.14</td>
	  <td id="T_24da6_row14_col39" class="data row14 col39" >97.59</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row15" class="row_heading level0 row15" >15</th>
	  <td id="T_24da6_row15_col0" class="data row15 col0" ></td>
	  <td id="T_24da6_row15_col1" class="data row15 col1" ></td>
	  <td id="T_24da6_row15_col2" class="data row15 col2" ></td>
	  <td id="T_24da6_row15_col3" class="data row15 col3" ></td>
	  <td id="T_24da6_row15_col4" class="data row15 col4" ></td>
	  <td id="T_24da6_row15_col5" class="data row15 col5" ></td>
	  <td id="T_24da6_row15_col6" class="data row15 col6" ></td>
	  <td id="T_24da6_row15_col7" class="data row15 col7" ></td>
	  <td id="T_24da6_row15_col8" class="data row15 col8" ></td>
	  <td id="T_24da6_row15_col9" class="data row15 col9" ></td>
	  <td id="T_24da6_row15_col10" class="data row15 col10" ></td>
	  <td id="T_24da6_row15_col11" class="data row15 col11" ></td>
	  <td id="T_24da6_row15_col12" class="data row15 col12" ></td>
	  <td id="T_24da6_row15_col13" class="data row15 col13" ></td>
	  <td id="T_24da6_row15_col14" class="data row15 col14" ></td>
	  <td id="T_24da6_row15_col15" class="data row15 col15" >137.65</td>
	  <td id="T_24da6_row15_col16" class="data row15 col16" >134.46</td>
	  <td id="T_24da6_row15_col17" class="data row15 col17" >134.23</td>
	  <td id="T_24da6_row15_col18" class="data row15 col18" >130.98</td>
	  <td id="T_24da6_row15_col19" class="data row15 col19" >130.70</td>
	  <td id="T_24da6_row15_col20" class="data row15 col20" >127.38</td>
	  <td id="T_24da6_row15_col21" class="data row15 col21" >127.03</td>
	  <td id="T_24da6_row15_col22" class="data row15 col22" >123.64</td>
	  <td id="T_24da6_row15_col23" class="data row15 col23" >123.21</td>
	  <td id="T_24da6_row15_col24" class="data row15 col24" >119.74</td>
	  <td id="T_24da6_row15_col25" class="data row15 col25" >119.23</td>
	  <td id="T_24da6_row15_col26" class="data row15 col26" >115.70</td>
	  <td id="T_24da6_row15_col27" class="data row15 col27" >115.14</td>
	  <td id="T_24da6_row15_col28" class="data row15 col28" >111.57</td>
	  <td id="T_24da6_row15_col29" class="data row15 col29" >110.99</td>
	  <td id="T_24da6_row15_col30" class="data row15 col30" >107.43</td>
	  <td id="T_24da6_row15_col31" class="data row15 col31" >106.90</td>
	  <td id="T_24da6_row15_col32" class="data row15 col32" >103.46</td>
	  <td id="T_24da6_row15_col33" class="data row15 col33" >103.13</td>
	  <td id="T_24da6_row15_col34" class="data row15 col34" >99.98</td>
	  <td id="T_24da6_row15_col35" class="data row15 col35" >100.05</td>
	  <td id="T_24da6_row15_col36" class="data row15 col36" >97.48</td>
	  <td id="T_24da6_row15_col37" class="data row15 col37" >98.35</td>
	  <td id="T_24da6_row15_col38" class="data row15 col38" >96.91</td>
	  <td id="T_24da6_row15_col39" class="data row15 col39" >99.31</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row16" class="row_heading level0 row16" >16</th>
	  <td id="T_24da6_row16_col0" class="data row16 col0" ></td>
	  <td id="T_24da6_row16_col1" class="data row16 col1" ></td>
	  <td id="T_24da6_row16_col2" class="data row16 col2" ></td>
	  <td id="T_24da6_row16_col3" class="data row16 col3" ></td>
	  <td id="T_24da6_row16_col4" class="data row16 col4" ></td>
	  <td id="T_24da6_row16_col5" class="data row16 col5" ></td>
	  <td id="T_24da6_row16_col6" class="data row16 col6" ></td>
	  <td id="T_24da6_row16_col7" class="data row16 col7" ></td>
	  <td id="T_24da6_row16_col8" class="data row16 col8" ></td>
	  <td id="T_24da6_row16_col9" class="data row16 col9" ></td>
	  <td id="T_24da6_row16_col10" class="data row16 col10" ></td>
	  <td id="T_24da6_row16_col11" class="data row16 col11" ></td>
	  <td id="T_24da6_row16_col12" class="data row16 col12" ></td>
	  <td id="T_24da6_row16_col13" class="data row16 col13" ></td>
	  <td id="T_24da6_row16_col14" class="data row16 col14" ></td>
	  <td id="T_24da6_row16_col15" class="data row16 col15" ></td>
	  <td id="T_24da6_row16_col16" class="data row16 col16" >134.90</td>
	  <td id="T_24da6_row16_col17" class="data row16 col17" >134.75</td>
	  <td id="T_24da6_row16_col18" class="data row16 col18" >131.57</td>
	  <td id="T_24da6_row16_col19" class="data row16 col19" >131.38</td>
	  <td id="T_24da6_row16_col20" class="data row16 col20" >128.16</td>
	  <td id="T_24da6_row16_col21" class="data row16 col21" >127.91</td>
	  <td id="T_24da6_row16_col22" class="data row16 col22" >124.64</td>
	  <td id="T_24da6_row16_col23" class="data row16 col23" >124.34</td>
	  <td id="T_24da6_row16_col24" class="data row16 col24" >121.01</td>
	  <td id="T_24da6_row16_col25" class="data row16 col25" >120.66</td>
	  <td id="T_24da6_row16_col26" class="data row16 col26" >117.28</td>
	  <td id="T_24da6_row16_col27" class="data row16 col27" >116.89</td>
	  <td id="T_24da6_row16_col28" class="data row16 col28" >113.48</td>
	  <td id="T_24da6_row16_col29" class="data row16 col29" >113.07</td>
	  <td id="T_24da6_row16_col30" class="data row16 col30" >109.68</td>
	  <td id="T_24da6_row16_col31" class="data row16 col31" >109.31</td>
	  <td id="T_24da6_row16_col32" class="data row16 col32" >106.00</td>
	  <td id="T_24da6_row16_col33" class="data row16 col33" >105.77</td>
	  <td id="T_24da6_row16_col34" class="data row16 col34" >102.67</td>
	  <td id="T_24da6_row16_col35" class="data row16 col35" >102.74</td>
	  <td id="T_24da6_row16_col36" class="data row16 col36" >100.07</td>
	  <td id="T_24da6_row16_col37" class="data row16 col37" >100.70</td>
	  <td id="T_24da6_row16_col38" class="data row16 col38" >98.81</td>
	  <td id="T_24da6_row16_col39" class="data row16 col39" >100.48</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row17" class="row_heading level0 row17" >17</th>
	  <td id="T_24da6_row17_col0" class="data row17 col0" ></td>
	  <td id="T_24da6_row17_col1" class="data row17 col1" ></td>
	  <td id="T_24da6_row17_col2" class="data row17 col2" ></td>
	  <td id="T_24da6_row17_col3" class="data row17 col3" ></td>
	  <td id="T_24da6_row17_col4" class="data row17 col4" ></td>
	  <td id="T_24da6_row17_col5" class="data row17 col5" ></td>
	  <td id="T_24da6_row17_col6" class="data row17 col6" ></td>
	  <td id="T_24da6_row17_col7" class="data row17 col7" ></td>
	  <td id="T_24da6_row17_col8" class="data row17 col8" ></td>
	  <td id="T_24da6_row17_col9" class="data row17 col9" ></td>
	  <td id="T_24da6_row17_col10" class="data row17 col10" ></td>
	  <td id="T_24da6_row17_col11" class="data row17 col11" ></td>
	  <td id="T_24da6_row17_col12" class="data row17 col12" ></td>
	  <td id="T_24da6_row17_col13" class="data row17 col13" ></td>
	  <td id="T_24da6_row17_col14" class="data row17 col14" ></td>
	  <td id="T_24da6_row17_col15" class="data row17 col15" ></td>
	  <td id="T_24da6_row17_col16" class="data row17 col16" ></td>
	  <td id="T_24da6_row17_col17" class="data row17 col17" >135.10</td>
	  <td id="T_24da6_row17_col18" class="data row17 col18" >131.98</td>
	  <td id="T_24da6_row17_col19" class="data row17 col19" >131.84</td>
	  <td id="T_24da6_row17_col20" class="data row17 col20" >128.69</td>
	  <td id="T_24da6_row17_col21" class="data row17 col21" >128.52</td>
	  <td id="T_24da6_row17_col22" class="data row17 col22" >125.33</td>
	  <td id="T_24da6_row17_col23" class="data row17 col23" >125.12</td>
	  <td id="T_24da6_row17_col24" class="data row17 col24" >121.90</td>
	  <td id="T_24da6_row17_col25" class="data row17 col25" >121.65</td>
	  <td id="T_24da6_row17_col26" class="data row17 col26" >118.39</td>
	  <td id="T_24da6_row17_col27" class="data row17 col27" >118.11</td>
	  <td id="T_24da6_row17_col28" class="data row17 col28" >114.82</td>
	  <td id="T_24da6_row17_col29" class="data row17 col29" >114.53</td>
	  <td id="T_24da6_row17_col30" class="data row17 col30" >111.25</td>
	  <td id="T_24da6_row17_col31" class="data row17 col31" >110.99</td>
	  <td id="T_24da6_row17_col32" class="data row17 col32" >107.76</td>
	  <td id="T_24da6_row17_col33" class="data row17 col33" >107.60</td>
	  <td id="T_24da6_row17_col34" class="data row17 col34" >104.53</td>
	  <td id="T_24da6_row17_col35" class="data row17 col35" >104.58</td>
	  <td id="T_24da6_row17_col36" class="data row17 col36" >101.82</td>
	  <td id="T_24da6_row17_col37" class="data row17 col37" >102.28</td>
	  <td id="T_24da6_row17_col38" class="data row17 col38" >100.07</td>
	  <td id="T_24da6_row17_col39" class="data row17 col39" >101.25</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row18" class="row_heading level0 row18" >18</th>
	  <td id="T_24da6_row18_col0" class="data row18 col0" ></td>
	  <td id="T_24da6_row18_col1" class="data row18 col1" ></td>
	  <td id="T_24da6_row18_col2" class="data row18 col2" ></td>
	  <td id="T_24da6_row18_col3" class="data row18 col3" ></td>
	  <td id="T_24da6_row18_col4" class="data row18 col4" ></td>
	  <td id="T_24da6_row18_col5" class="data row18 col5" ></td>
	  <td id="T_24da6_row18_col6" class="data row18 col6" ></td>
	  <td id="T_24da6_row18_col7" class="data row18 col7" ></td>
	  <td id="T_24da6_row18_col8" class="data row18 col8" ></td>
	  <td id="T_24da6_row18_col9" class="data row18 col9" ></td>
	  <td id="T_24da6_row18_col10" class="data row18 col10" ></td>
	  <td id="T_24da6_row18_col11" class="data row18 col11" ></td>
	  <td id="T_24da6_row18_col12" class="data row18 col12" ></td>
	  <td id="T_24da6_row18_col13" class="data row18 col13" ></td>
	  <td id="T_24da6_row18_col14" class="data row18 col14" ></td>
	  <td id="T_24da6_row18_col15" class="data row18 col15" ></td>
	  <td id="T_24da6_row18_col16" class="data row18 col16" ></td>
	  <td id="T_24da6_row18_col17" class="data row18 col17" ></td>
	  <td id="T_24da6_row18_col18" class="data row18 col18" >132.27</td>
	  <td id="T_24da6_row18_col19" class="data row18 col19" >132.17</td>
	  <td id="T_24da6_row18_col20" class="data row18 col20" >129.06</td>
	  <td id="T_24da6_row18_col21" class="data row18 col21" >128.95</td>
	  <td id="T_24da6_row18_col22" class="data row18 col22" >125.81</td>
	  <td id="T_24da6_row18_col23" class="data row18 col23" >125.67</td>
	  <td id="T_24da6_row18_col24" class="data row18 col24" >122.51</td>
	  <td id="T_24da6_row18_col25" class="data row18 col25" >122.34</td>
	  <td id="T_24da6_row18_col26" class="data row18 col26" >119.16</td>
	  <td id="T_24da6_row18_col27" class="data row18 col27" >118.97</td>
	  <td id="T_24da6_row18_col28" class="data row18 col28" >115.77</td>
	  <td id="T_24da6_row18_col29" class="data row18 col29" >115.56</td>
	  <td id="T_24da6_row18_col30" class="data row18 col30" >112.36</td>
	  <td id="T_24da6_row18_col31" class="data row18 col31" >112.17</td>
	  <td id="T_24da6_row18_col32" class="data row18 col32" >109.01</td>
	  <td id="T_24da6_row18_col33" class="data row18 col33" >108.89</td>
	  <td id="T_24da6_row18_col34" class="data row18 col34" >105.83</td>
	  <td id="T_24da6_row18_col35" class="data row18 col35" >105.86</td>
	  <td id="T_24da6_row18_col36" class="data row18 col36" >103.03</td>
	  <td id="T_24da6_row18_col37" class="data row18 col37" >103.35</td>
	  <td id="T_24da6_row18_col38" class="data row18 col38" >100.92</td>
	  <td id="T_24da6_row18_col39" class="data row18 col39" >101.76</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row19" class="row_heading level0 row19" >19</th>
	  <td id="T_24da6_row19_col0" class="data row19 col0" ></td>
	  <td id="T_24da6_row19_col1" class="data row19 col1" ></td>
	  <td id="T_24da6_row19_col2" class="data row19 col2" ></td>
	  <td id="T_24da6_row19_col3" class="data row19 col3" ></td>
	  <td id="T_24da6_row19_col4" class="data row19 col4" ></td>
	  <td id="T_24da6_row19_col5" class="data row19 col5" ></td>
	  <td id="T_24da6_row19_col6" class="data row19 col6" ></td>
	  <td id="T_24da6_row19_col7" class="data row19 col7" ></td>
	  <td id="T_24da6_row19_col8" class="data row19 col8" ></td>
	  <td id="T_24da6_row19_col9" class="data row19 col9" ></td>
	  <td id="T_24da6_row19_col10" class="data row19 col10" ></td>
	  <td id="T_24da6_row19_col11" class="data row19 col11" ></td>
	  <td id="T_24da6_row19_col12" class="data row19 col12" ></td>
	  <td id="T_24da6_row19_col13" class="data row19 col13" ></td>
	  <td id="T_24da6_row19_col14" class="data row19 col14" ></td>
	  <td id="T_24da6_row19_col15" class="data row19 col15" ></td>
	  <td id="T_24da6_row19_col16" class="data row19 col16" ></td>
	  <td id="T_24da6_row19_col17" class="data row19 col17" ></td>
	  <td id="T_24da6_row19_col18" class="data row19 col18" ></td>
	  <td id="T_24da6_row19_col19" class="data row19 col19" >132.40</td>
	  <td id="T_24da6_row19_col20" class="data row19 col20" >129.32</td>
	  <td id="T_24da6_row19_col21" class="data row19 col21" >129.24</td>
	  <td id="T_24da6_row19_col22" class="data row19 col22" >126.15</td>
	  <td id="T_24da6_row19_col23" class="data row19 col23" >126.05</td>
	  <td id="T_24da6_row19_col24" class="data row19 col24" >122.94</td>
	  <td id="T_24da6_row19_col25" class="data row19 col25" >122.82</td>
	  <td id="T_24da6_row19_col26" class="data row19 col26" >119.70</td>
	  <td id="T_24da6_row19_col27" class="data row19 col27" >119.57</td>
	  <td id="T_24da6_row19_col28" class="data row19 col28" >116.43</td>
	  <td id="T_24da6_row19_col29" class="data row19 col29" >116.29</td>
	  <td id="T_24da6_row19_col30" class="data row19 col30" >113.15</td>
	  <td id="T_24da6_row19_col31" class="data row19 col31" >113.02</td>
	  <td id="T_24da6_row19_col32" class="data row19 col32" >109.91</td>
	  <td id="T_24da6_row19_col33" class="data row19 col33" >109.82</td>
	  <td id="T_24da6_row19_col34" class="data row19 col34" >106.78</td>
	  <td id="T_24da6_row19_col35" class="data row19 col35" >106.80</td>
	  <td id="T_24da6_row19_col36" class="data row19 col36" >103.91</td>
	  <td id="T_24da6_row19_col37" class="data row19 col37" >104.13</td>
	  <td id="T_24da6_row19_col38" class="data row19 col38" >101.52</td>
	  <td id="T_24da6_row19_col39" class="data row19 col39" >102.12</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row20" class="row_heading level0 row20" >20</th>
	  <td id="T_24da6_row20_col0" class="data row20 col0" ></td>
	  <td id="T_24da6_row20_col1" class="data row20 col1" ></td>
	  <td id="T_24da6_row20_col2" class="data row20 col2" ></td>
	  <td id="T_24da6_row20_col3" class="data row20 col3" ></td>
	  <td id="T_24da6_row20_col4" class="data row20 col4" ></td>
	  <td id="T_24da6_row20_col5" class="data row20 col5" ></td>
	  <td id="T_24da6_row20_col6" class="data row20 col6" ></td>
	  <td id="T_24da6_row20_col7" class="data row20 col7" ></td>
	  <td id="T_24da6_row20_col8" class="data row20 col8" ></td>
	  <td id="T_24da6_row20_col9" class="data row20 col9" ></td>
	  <td id="T_24da6_row20_col10" class="data row20 col10" ></td>
	  <td id="T_24da6_row20_col11" class="data row20 col11" ></td>
	  <td id="T_24da6_row20_col12" class="data row20 col12" ></td>
	  <td id="T_24da6_row20_col13" class="data row20 col13" ></td>
	  <td id="T_24da6_row20_col14" class="data row20 col14" ></td>
	  <td id="T_24da6_row20_col15" class="data row20 col15" ></td>
	  <td id="T_24da6_row20_col16" class="data row20 col16" ></td>
	  <td id="T_24da6_row20_col17" class="data row20 col17" ></td>
	  <td id="T_24da6_row20_col18" class="data row20 col18" ></td>
	  <td id="T_24da6_row20_col19" class="data row20 col19" ></td>
	  <td id="T_24da6_row20_col20" class="data row20 col20" >129.51</td>
	  <td id="T_24da6_row20_col21" class="data row20 col21" >129.45</td>
	  <td id="T_24da6_row20_col22" class="data row20 col22" >126.39</td>
	  <td id="T_24da6_row20_col23" class="data row20 col23" >126.32</td>
	  <td id="T_24da6_row20_col24" class="data row20 col24" >123.24</td>
	  <td id="T_24da6_row20_col25" class="data row20 col25" >123.16</td>
	  <td id="T_24da6_row20_col26" class="data row20 col26" >120.07</td>
	  <td id="T_24da6_row20_col27" class="data row20 col27" >119.98</td>
	  <td id="T_24da6_row20_col28" class="data row20 col28" >116.89</td>
	  <td id="T_24da6_row20_col29" class="data row20 col29" >116.80</td>
	  <td id="T_24da6_row20_col30" class="data row20 col30" >113.71</td>
	  <td id="T_24da6_row20_col31" class="data row20 col31" >113.62</td>
	  <td id="T_24da6_row20_col32" class="data row20 col32" >110.54</td>
	  <td id="T_24da6_row20_col33" class="data row20 col33" >110.49</td>
	  <td id="T_24da6_row20_col34" class="data row20 col34" >107.46</td>
	  <td id="T_24da6_row20_col35" class="data row20 col35" >107.47</td>
	  <td id="T_24da6_row20_col36" class="data row20 col36" >104.55</td>
	  <td id="T_24da6_row20_col37" class="data row20 col37" >104.70</td>
	  <td id="T_24da6_row20_col38" class="data row20 col38" >101.97</td>
	  <td id="T_24da6_row20_col39" class="data row20 col39" >102.39</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row21" class="row_heading level0 row21" >21</th>
	  <td id="T_24da6_row21_col0" class="data row21 col0" ></td>
	  <td id="T_24da6_row21_col1" class="data row21 col1" ></td>
	  <td id="T_24da6_row21_col2" class="data row21 col2" ></td>
	  <td id="T_24da6_row21_col3" class="data row21 col3" ></td>
	  <td id="T_24da6_row21_col4" class="data row21 col4" ></td>
	  <td id="T_24da6_row21_col5" class="data row21 col5" ></td>
	  <td id="T_24da6_row21_col6" class="data row21 col6" ></td>
	  <td id="T_24da6_row21_col7" class="data row21 col7" ></td>
	  <td id="T_24da6_row21_col8" class="data row21 col8" ></td>
	  <td id="T_24da6_row21_col9" class="data row21 col9" ></td>
	  <td id="T_24da6_row21_col10" class="data row21 col10" ></td>
	  <td id="T_24da6_row21_col11" class="data row21 col11" ></td>
	  <td id="T_24da6_row21_col12" class="data row21 col12" ></td>
	  <td id="T_24da6_row21_col13" class="data row21 col13" ></td>
	  <td id="T_24da6_row21_col14" class="data row21 col14" ></td>
	  <td id="T_24da6_row21_col15" class="data row21 col15" ></td>
	  <td id="T_24da6_row21_col16" class="data row21 col16" ></td>
	  <td id="T_24da6_row21_col17" class="data row21 col17" ></td>
	  <td id="T_24da6_row21_col18" class="data row21 col18" ></td>
	  <td id="T_24da6_row21_col19" class="data row21 col19" ></td>
	  <td id="T_24da6_row21_col20" class="data row21 col20" ></td>
	  <td id="T_24da6_row21_col21" class="data row21 col21" >129.60</td>
	  <td id="T_24da6_row21_col22" class="data row21 col22" >126.55</td>
	  <td id="T_24da6_row21_col23" class="data row21 col23" >126.50</td>
	  <td id="T_24da6_row21_col24" class="data row21 col24" >123.45</td>
	  <td id="T_24da6_row21_col25" class="data row21 col25" >123.39</td>
	  <td id="T_24da6_row21_col26" class="data row21 col26" >120.33</td>
	  <td id="T_24da6_row21_col27" class="data row21 col27" >120.27</td>
	  <td id="T_24da6_row21_col28" class="data row21 col28" >117.21</td>
	  <td id="T_24da6_row21_col29" class="data row21 col29" >117.14</td>
	  <td id="T_24da6_row21_col30" class="data row21 col30" >114.08</td>
	  <td id="T_24da6_row21_col31" class="data row21 col31" >114.03</td>
	  <td id="T_24da6_row21_col32" class="data row21 col32" >110.98</td>
	  <td id="T_24da6_row21_col33" class="data row21 col33" >110.95</td>
	  <td id="T_24da6_row21_col34" class="data row21 col34" >107.93</td>
	  <td id="T_24da6_row21_col35" class="data row21 col35" >107.95</td>
	  <td id="T_24da6_row21_col36" class="data row21 col36" >105.00</td>
	  <td id="T_24da6_row21_col37" class="data row21 col37" >105.11</td>
	  <td id="T_24da6_row21_col38" class="data row21 col38" >102.30</td>
	  <td id="T_24da6_row21_col39" class="data row21 col39" >102.58</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row22" class="row_heading level0 row22" >22</th>
	  <td id="T_24da6_row22_col0" class="data row22 col0" ></td>
	  <td id="T_24da6_row22_col1" class="data row22 col1" ></td>
	  <td id="T_24da6_row22_col2" class="data row22 col2" ></td>
	  <td id="T_24da6_row22_col3" class="data row22 col3" ></td>
	  <td id="T_24da6_row22_col4" class="data row22 col4" ></td>
	  <td id="T_24da6_row22_col5" class="data row22 col5" ></td>
	  <td id="T_24da6_row22_col6" class="data row22 col6" ></td>
	  <td id="T_24da6_row22_col7" class="data row22 col7" ></td>
	  <td id="T_24da6_row22_col8" class="data row22 col8" ></td>
	  <td id="T_24da6_row22_col9" class="data row22 col9" ></td>
	  <td id="T_24da6_row22_col10" class="data row22 col10" ></td>
	  <td id="T_24da6_row22_col11" class="data row22 col11" ></td>
	  <td id="T_24da6_row22_col12" class="data row22 col12" ></td>
	  <td id="T_24da6_row22_col13" class="data row22 col13" ></td>
	  <td id="T_24da6_row22_col14" class="data row22 col14" ></td>
	  <td id="T_24da6_row22_col15" class="data row22 col15" ></td>
	  <td id="T_24da6_row22_col16" class="data row22 col16" ></td>
	  <td id="T_24da6_row22_col17" class="data row22 col17" ></td>
	  <td id="T_24da6_row22_col18" class="data row22 col18" ></td>
	  <td id="T_24da6_row22_col19" class="data row22 col19" ></td>
	  <td id="T_24da6_row22_col20" class="data row22 col20" ></td>
	  <td id="T_24da6_row22_col21" class="data row22 col21" ></td>
	  <td id="T_24da6_row22_col22" class="data row22 col22" >126.67</td>
	  <td id="T_24da6_row22_col23" class="data row22 col23" >126.63</td>
	  <td id="T_24da6_row22_col24" class="data row22 col24" >123.59</td>
	  <td id="T_24da6_row22_col25" class="data row22 col25" >123.55</td>
	  <td id="T_24da6_row22_col26" class="data row22 col26" >120.51</td>
	  <td id="T_24da6_row22_col27" class="data row22 col27" >120.47</td>
	  <td id="T_24da6_row22_col28" class="data row22 col28" >117.42</td>
	  <td id="T_24da6_row22_col29" class="data row22 col29" >117.38</td>
	  <td id="T_24da6_row22_col30" class="data row22 col30" >114.34</td>
	  <td id="T_24da6_row22_col31" class="data row22 col31" >114.30</td>
	  <td id="T_24da6_row22_col32" class="data row22 col32" >111.27</td>
	  <td id="T_24da6_row22_col33" class="data row22 col33" >111.25</td>
	  <td id="T_24da6_row22_col34" class="data row22 col34" >108.25</td>
	  <td id="T_24da6_row22_col35" class="data row22 col35" >108.26</td>
	  <td id="T_24da6_row22_col36" class="data row22 col36" >105.30</td>
	  <td id="T_24da6_row22_col37" class="data row22 col37" >105.38</td>
	  <td id="T_24da6_row22_col38" class="data row22 col38" >102.52</td>
	  <td id="T_24da6_row22_col39" class="data row22 col39" >102.71</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row23" class="row_heading level0 row23" >23</th>
	  <td id="T_24da6_row23_col0" class="data row23 col0" ></td>
	  <td id="T_24da6_row23_col1" class="data row23 col1" ></td>
	  <td id="T_24da6_row23_col2" class="data row23 col2" ></td>
	  <td id="T_24da6_row23_col3" class="data row23 col3" ></td>
	  <td id="T_24da6_row23_col4" class="data row23 col4" ></td>
	  <td id="T_24da6_row23_col5" class="data row23 col5" ></td>
	  <td id="T_24da6_row23_col6" class="data row23 col6" ></td>
	  <td id="T_24da6_row23_col7" class="data row23 col7" ></td>
	  <td id="T_24da6_row23_col8" class="data row23 col8" ></td>
	  <td id="T_24da6_row23_col9" class="data row23 col9" ></td>
	  <td id="T_24da6_row23_col10" class="data row23 col10" ></td>
	  <td id="T_24da6_row23_col11" class="data row23 col11" ></td>
	  <td id="T_24da6_row23_col12" class="data row23 col12" ></td>
	  <td id="T_24da6_row23_col13" class="data row23 col13" ></td>
	  <td id="T_24da6_row23_col14" class="data row23 col14" ></td>
	  <td id="T_24da6_row23_col15" class="data row23 col15" ></td>
	  <td id="T_24da6_row23_col16" class="data row23 col16" ></td>
	  <td id="T_24da6_row23_col17" class="data row23 col17" ></td>
	  <td id="T_24da6_row23_col18" class="data row23 col18" ></td>
	  <td id="T_24da6_row23_col19" class="data row23 col19" ></td>
	  <td id="T_24da6_row23_col20" class="data row23 col20" ></td>
	  <td id="T_24da6_row23_col21" class="data row23 col21" ></td>
	  <td id="T_24da6_row23_col22" class="data row23 col22" ></td>
	  <td id="T_24da6_row23_col23" class="data row23 col23" >126.73</td>
	  <td id="T_24da6_row23_col24" class="data row23 col24" >123.70</td>
	  <td id="T_24da6_row23_col25" class="data row23 col25" >123.67</td>
	  <td id="T_24da6_row23_col26" class="data row23 col26" >120.64</td>
	  <td id="T_24da6_row23_col27" class="data row23 col27" >120.60</td>
	  <td id="T_24da6_row23_col28" class="data row23 col28" >117.57</td>
	  <td id="T_24da6_row23_col29" class="data row23 col29" >117.54</td>
	  <td id="T_24da6_row23_col30" class="data row23 col30" >114.51</td>
	  <td id="T_24da6_row23_col31" class="data row23 col31" >114.49</td>
	  <td id="T_24da6_row23_col32" class="data row23 col32" >111.47</td>
	  <td id="T_24da6_row23_col33" class="data row23 col33" >111.45</td>
	  <td id="T_24da6_row23_col34" class="data row23 col34" >108.45</td>
	  <td id="T_24da6_row23_col35" class="data row23 col35" >108.47</td>
	  <td id="T_24da6_row23_col36" class="data row23 col36" >105.50</td>
	  <td id="T_24da6_row23_col37" class="data row23 col37" >105.56</td>
	  <td id="T_24da6_row23_col38" class="data row23 col38" >102.66</td>
	  <td id="T_24da6_row23_col39" class="data row23 col39" >102.80</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row24" class="row_heading level0 row24" >24</th>
	  <td id="T_24da6_row24_col0" class="data row24 col0" ></td>
	  <td id="T_24da6_row24_col1" class="data row24 col1" ></td>
	  <td id="T_24da6_row24_col2" class="data row24 col2" ></td>
	  <td id="T_24da6_row24_col3" class="data row24 col3" ></td>
	  <td id="T_24da6_row24_col4" class="data row24 col4" ></td>
	  <td id="T_24da6_row24_col5" class="data row24 col5" ></td>
	  <td id="T_24da6_row24_col6" class="data row24 col6" ></td>
	  <td id="T_24da6_row24_col7" class="data row24 col7" ></td>
	  <td id="T_24da6_row24_col8" class="data row24 col8" ></td>
	  <td id="T_24da6_row24_col9" class="data row24 col9" ></td>
	  <td id="T_24da6_row24_col10" class="data row24 col10" ></td>
	  <td id="T_24da6_row24_col11" class="data row24 col11" ></td>
	  <td id="T_24da6_row24_col12" class="data row24 col12" ></td>
	  <td id="T_24da6_row24_col13" class="data row24 col13" ></td>
	  <td id="T_24da6_row24_col14" class="data row24 col14" ></td>
	  <td id="T_24da6_row24_col15" class="data row24 col15" ></td>
	  <td id="T_24da6_row24_col16" class="data row24 col16" ></td>
	  <td id="T_24da6_row24_col17" class="data row24 col17" ></td>
	  <td id="T_24da6_row24_col18" class="data row24 col18" ></td>
	  <td id="T_24da6_row24_col19" class="data row24 col19" ></td>
	  <td id="T_24da6_row24_col20" class="data row24 col20" ></td>
	  <td id="T_24da6_row24_col21" class="data row24 col21" ></td>
	  <td id="T_24da6_row24_col22" class="data row24 col22" ></td>
	  <td id="T_24da6_row24_col23" class="data row24 col23" ></td>
	  <td id="T_24da6_row24_col24" class="data row24 col24" >123.77</td>
	  <td id="T_24da6_row24_col25" class="data row24 col25" >123.75</td>
	  <td id="T_24da6_row24_col26" class="data row24 col26" >120.73</td>
	  <td id="T_24da6_row24_col27" class="data row24 col27" >120.70</td>
	  <td id="T_24da6_row24_col28" class="data row24 col28" >117.68</td>
	  <td id="T_24da6_row24_col29" class="data row24 col29" >117.66</td>
	  <td id="T_24da6_row24_col30" class="data row24 col30" >114.63</td>
	  <td id="T_24da6_row24_col31" class="data row24 col31" >114.61</td>
	  <td id="T_24da6_row24_col32" class="data row24 col32" >111.60</td>
	  <td id="T_24da6_row24_col33" class="data row24 col33" >111.59</td>
	  <td id="T_24da6_row24_col34" class="data row24 col34" >108.59</td>
	  <td id="T_24da6_row24_col35" class="data row24 col35" >108.60</td>
	  <td id="T_24da6_row24_col36" class="data row24 col36" >105.63</td>
	  <td id="T_24da6_row24_col37" class="data row24 col37" >105.68</td>
	  <td id="T_24da6_row24_col38" class="data row24 col38" >102.75</td>
	  <td id="T_24da6_row24_col39" class="data row24 col39" >102.85</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row25" class="row_heading level0 row25" >25</th>
	  <td id="T_24da6_row25_col0" class="data row25 col0" ></td>
	  <td id="T_24da6_row25_col1" class="data row25 col1" ></td>
	  <td id="T_24da6_row25_col2" class="data row25 col2" ></td>
	  <td id="T_24da6_row25_col3" class="data row25 col3" ></td>
	  <td id="T_24da6_row25_col4" class="data row25 col4" ></td>
	  <td id="T_24da6_row25_col5" class="data row25 col5" ></td>
	  <td id="T_24da6_row25_col6" class="data row25 col6" ></td>
	  <td id="T_24da6_row25_col7" class="data row25 col7" ></td>
	  <td id="T_24da6_row25_col8" class="data row25 col8" ></td>
	  <td id="T_24da6_row25_col9" class="data row25 col9" ></td>
	  <td id="T_24da6_row25_col10" class="data row25 col10" ></td>
	  <td id="T_24da6_row25_col11" class="data row25 col11" ></td>
	  <td id="T_24da6_row25_col12" class="data row25 col12" ></td>
	  <td id="T_24da6_row25_col13" class="data row25 col13" ></td>
	  <td id="T_24da6_row25_col14" class="data row25 col14" ></td>
	  <td id="T_24da6_row25_col15" class="data row25 col15" ></td>
	  <td id="T_24da6_row25_col16" class="data row25 col16" ></td>
	  <td id="T_24da6_row25_col17" class="data row25 col17" ></td>
	  <td id="T_24da6_row25_col18" class="data row25 col18" ></td>
	  <td id="T_24da6_row25_col19" class="data row25 col19" ></td>
	  <td id="T_24da6_row25_col20" class="data row25 col20" ></td>
	  <td id="T_24da6_row25_col21" class="data row25 col21" ></td>
	  <td id="T_24da6_row25_col22" class="data row25 col22" ></td>
	  <td id="T_24da6_row25_col23" class="data row25 col23" ></td>
	  <td id="T_24da6_row25_col24" class="data row25 col24" ></td>
	  <td id="T_24da6_row25_col25" class="data row25 col25" >123.81</td>
	  <td id="T_24da6_row25_col26" class="data row25 col26" >120.79</td>
	  <td id="T_24da6_row25_col27" class="data row25 col27" >120.78</td>
	  <td id="T_24da6_row25_col28" class="data row25 col28" >117.76</td>
	  <td id="T_24da6_row25_col29" class="data row25 col29" >117.74</td>
	  <td id="T_24da6_row25_col30" class="data row25 col30" >114.72</td>
	  <td id="T_24da6_row25_col31" class="data row25 col31" >114.71</td>
	  <td id="T_24da6_row25_col32" class="data row25 col32" >111.70</td>
	  <td id="T_24da6_row25_col33" class="data row25 col33" >111.69</td>
	  <td id="T_24da6_row25_col34" class="data row25 col34" >108.69</td>
	  <td id="T_24da6_row25_col35" class="data row25 col35" >108.70</td>
	  <td id="T_24da6_row25_col36" class="data row25 col36" >105.72</td>
	  <td id="T_24da6_row25_col37" class="data row25 col37" >105.76</td>
	  <td id="T_24da6_row25_col38" class="data row25 col38" >102.81</td>
	  <td id="T_24da6_row25_col39" class="data row25 col39" >102.89</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row26" class="row_heading level0 row26" >26</th>
	  <td id="T_24da6_row26_col0" class="data row26 col0" ></td>
	  <td id="T_24da6_row26_col1" class="data row26 col1" ></td>
	  <td id="T_24da6_row26_col2" class="data row26 col2" ></td>
	  <td id="T_24da6_row26_col3" class="data row26 col3" ></td>
	  <td id="T_24da6_row26_col4" class="data row26 col4" ></td>
	  <td id="T_24da6_row26_col5" class="data row26 col5" ></td>
	  <td id="T_24da6_row26_col6" class="data row26 col6" ></td>
	  <td id="T_24da6_row26_col7" class="data row26 col7" ></td>
	  <td id="T_24da6_row26_col8" class="data row26 col8" ></td>
	  <td id="T_24da6_row26_col9" class="data row26 col9" ></td>
	  <td id="T_24da6_row26_col10" class="data row26 col10" ></td>
	  <td id="T_24da6_row26_col11" class="data row26 col11" ></td>
	  <td id="T_24da6_row26_col12" class="data row26 col12" ></td>
	  <td id="T_24da6_row26_col13" class="data row26 col13" ></td>
	  <td id="T_24da6_row26_col14" class="data row26 col14" ></td>
	  <td id="T_24da6_row26_col15" class="data row26 col15" ></td>
	  <td id="T_24da6_row26_col16" class="data row26 col16" ></td>
	  <td id="T_24da6_row26_col17" class="data row26 col17" ></td>
	  <td id="T_24da6_row26_col18" class="data row26 col18" ></td>
	  <td id="T_24da6_row26_col19" class="data row26 col19" ></td>
	  <td id="T_24da6_row26_col20" class="data row26 col20" ></td>
	  <td id="T_24da6_row26_col21" class="data row26 col21" ></td>
	  <td id="T_24da6_row26_col22" class="data row26 col22" ></td>
	  <td id="T_24da6_row26_col23" class="data row26 col23" ></td>
	  <td id="T_24da6_row26_col24" class="data row26 col24" ></td>
	  <td id="T_24da6_row26_col25" class="data row26 col25" ></td>
	  <td id="T_24da6_row26_col26" class="data row26 col26" >120.84</td>
	  <td id="T_24da6_row26_col27" class="data row26 col27" >120.83</td>
	  <td id="T_24da6_row26_col28" class="data row26 col28" >117.82</td>
	  <td id="T_24da6_row26_col29" class="data row26 col29" >117.80</td>
	  <td id="T_24da6_row26_col30" class="data row26 col30" >114.79</td>
	  <td id="T_24da6_row26_col31" class="data row26 col31" >114.78</td>
	  <td id="T_24da6_row26_col32" class="data row26 col32" >111.77</td>
	  <td id="T_24da6_row26_col33" class="data row26 col33" >111.77</td>
	  <td id="T_24da6_row26_col34" class="data row26 col34" >108.77</td>
	  <td id="T_24da6_row26_col35" class="data row26 col35" >108.77</td>
	  <td id="T_24da6_row26_col36" class="data row26 col36" >105.79</td>
	  <td id="T_24da6_row26_col37" class="data row26 col37" >105.81</td>
	  <td id="T_24da6_row26_col38" class="data row26 col38" >102.86</td>
	  <td id="T_24da6_row26_col39" class="data row26 col39" >102.92</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row27" class="row_heading level0 row27" >27</th>
	  <td id="T_24da6_row27_col0" class="data row27 col0" ></td>
	  <td id="T_24da6_row27_col1" class="data row27 col1" ></td>
	  <td id="T_24da6_row27_col2" class="data row27 col2" ></td>
	  <td id="T_24da6_row27_col3" class="data row27 col3" ></td>
	  <td id="T_24da6_row27_col4" class="data row27 col4" ></td>
	  <td id="T_24da6_row27_col5" class="data row27 col5" ></td>
	  <td id="T_24da6_row27_col6" class="data row27 col6" ></td>
	  <td id="T_24da6_row27_col7" class="data row27 col7" ></td>
	  <td id="T_24da6_row27_col8" class="data row27 col8" ></td>
	  <td id="T_24da6_row27_col9" class="data row27 col9" ></td>
	  <td id="T_24da6_row27_col10" class="data row27 col10" ></td>
	  <td id="T_24da6_row27_col11" class="data row27 col11" ></td>
	  <td id="T_24da6_row27_col12" class="data row27 col12" ></td>
	  <td id="T_24da6_row27_col13" class="data row27 col13" ></td>
	  <td id="T_24da6_row27_col14" class="data row27 col14" ></td>
	  <td id="T_24da6_row27_col15" class="data row27 col15" ></td>
	  <td id="T_24da6_row27_col16" class="data row27 col16" ></td>
	  <td id="T_24da6_row27_col17" class="data row27 col17" ></td>
	  <td id="T_24da6_row27_col18" class="data row27 col18" ></td>
	  <td id="T_24da6_row27_col19" class="data row27 col19" ></td>
	  <td id="T_24da6_row27_col20" class="data row27 col20" ></td>
	  <td id="T_24da6_row27_col21" class="data row27 col21" ></td>
	  <td id="T_24da6_row27_col22" class="data row27 col22" ></td>
	  <td id="T_24da6_row27_col23" class="data row27 col23" ></td>
	  <td id="T_24da6_row27_col24" class="data row27 col24" ></td>
	  <td id="T_24da6_row27_col25" class="data row27 col25" ></td>
	  <td id="T_24da6_row27_col26" class="data row27 col26" ></td>
	  <td id="T_24da6_row27_col27" class="data row27 col27" >120.87</td>
	  <td id="T_24da6_row27_col28" class="data row27 col28" >117.86</td>
	  <td id="T_24da6_row27_col29" class="data row27 col29" >117.85</td>
	  <td id="T_24da6_row27_col30" class="data row27 col30" >114.84</td>
	  <td id="T_24da6_row27_col31" class="data row27 col31" >114.83</td>
	  <td id="T_24da6_row27_col32" class="data row27 col32" >111.83</td>
	  <td id="T_24da6_row27_col33" class="data row27 col33" >111.82</td>
	  <td id="T_24da6_row27_col34" class="data row27 col34" >108.82</td>
	  <td id="T_24da6_row27_col35" class="data row27 col35" >108.83</td>
	  <td id="T_24da6_row27_col36" class="data row27 col36" >105.84</td>
	  <td id="T_24da6_row27_col37" class="data row27 col37" >105.86</td>
	  <td id="T_24da6_row27_col38" class="data row27 col38" >102.89</td>
	  <td id="T_24da6_row27_col39" class="data row27 col39" >102.94</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row28" class="row_heading level0 row28" >28</th>
	  <td id="T_24da6_row28_col0" class="data row28 col0" ></td>
	  <td id="T_24da6_row28_col1" class="data row28 col1" ></td>
	  <td id="T_24da6_row28_col2" class="data row28 col2" ></td>
	  <td id="T_24da6_row28_col3" class="data row28 col3" ></td>
	  <td id="T_24da6_row28_col4" class="data row28 col4" ></td>
	  <td id="T_24da6_row28_col5" class="data row28 col5" ></td>
	  <td id="T_24da6_row28_col6" class="data row28 col6" ></td>
	  <td id="T_24da6_row28_col7" class="data row28 col7" ></td>
	  <td id="T_24da6_row28_col8" class="data row28 col8" ></td>
	  <td id="T_24da6_row28_col9" class="data row28 col9" ></td>
	  <td id="T_24da6_row28_col10" class="data row28 col10" ></td>
	  <td id="T_24da6_row28_col11" class="data row28 col11" ></td>
	  <td id="T_24da6_row28_col12" class="data row28 col12" ></td>
	  <td id="T_24da6_row28_col13" class="data row28 col13" ></td>
	  <td id="T_24da6_row28_col14" class="data row28 col14" ></td>
	  <td id="T_24da6_row28_col15" class="data row28 col15" ></td>
	  <td id="T_24da6_row28_col16" class="data row28 col16" ></td>
	  <td id="T_24da6_row28_col17" class="data row28 col17" ></td>
	  <td id="T_24da6_row28_col18" class="data row28 col18" ></td>
	  <td id="T_24da6_row28_col19" class="data row28 col19" ></td>
	  <td id="T_24da6_row28_col20" class="data row28 col20" ></td>
	  <td id="T_24da6_row28_col21" class="data row28 col21" ></td>
	  <td id="T_24da6_row28_col22" class="data row28 col22" ></td>
	  <td id="T_24da6_row28_col23" class="data row28 col23" ></td>
	  <td id="T_24da6_row28_col24" class="data row28 col24" ></td>
	  <td id="T_24da6_row28_col25" class="data row28 col25" ></td>
	  <td id="T_24da6_row28_col26" class="data row28 col26" ></td>
	  <td id="T_24da6_row28_col27" class="data row28 col27" ></td>
	  <td id="T_24da6_row28_col28" class="data row28 col28" >117.90</td>
	  <td id="T_24da6_row28_col29" class="data row28 col29" >117.89</td>
	  <td id="T_24da6_row28_col30" class="data row28 col30" >114.88</td>
	  <td id="T_24da6_row28_col31" class="data row28 col31" >114.88</td>
	  <td id="T_24da6_row28_col32" class="data row28 col32" >111.87</td>
	  <td id="T_24da6_row28_col33" class="data row28 col33" >111.87</td>
	  <td id="T_24da6_row28_col34" class="data row28 col34" >108.87</td>
	  <td id="T_24da6_row28_col35" class="data row28 col35" >108.87</td>
	  <td id="T_24da6_row28_col36" class="data row28 col36" >105.88</td>
	  <td id="T_24da6_row28_col37" class="data row28 col37" >105.89</td>
	  <td id="T_24da6_row28_col38" class="data row28 col38" >102.92</td>
	  <td id="T_24da6_row28_col39" class="data row28 col39" >102.95</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row29" class="row_heading level0 row29" >29</th>
	  <td id="T_24da6_row29_col0" class="data row29 col0" ></td>
	  <td id="T_24da6_row29_col1" class="data row29 col1" ></td>
	  <td id="T_24da6_row29_col2" class="data row29 col2" ></td>
	  <td id="T_24da6_row29_col3" class="data row29 col3" ></td>
	  <td id="T_24da6_row29_col4" class="data row29 col4" ></td>
	  <td id="T_24da6_row29_col5" class="data row29 col5" ></td>
	  <td id="T_24da6_row29_col6" class="data row29 col6" ></td>
	  <td id="T_24da6_row29_col7" class="data row29 col7" ></td>
	  <td id="T_24da6_row29_col8" class="data row29 col8" ></td>
	  <td id="T_24da6_row29_col9" class="data row29 col9" ></td>
	  <td id="T_24da6_row29_col10" class="data row29 col10" ></td>
	  <td id="T_24da6_row29_col11" class="data row29 col11" ></td>
	  <td id="T_24da6_row29_col12" class="data row29 col12" ></td>
	  <td id="T_24da6_row29_col13" class="data row29 col13" ></td>
	  <td id="T_24da6_row29_col14" class="data row29 col14" ></td>
	  <td id="T_24da6_row29_col15" class="data row29 col15" ></td>
	  <td id="T_24da6_row29_col16" class="data row29 col16" ></td>
	  <td id="T_24da6_row29_col17" class="data row29 col17" ></td>
	  <td id="T_24da6_row29_col18" class="data row29 col18" ></td>
	  <td id="T_24da6_row29_col19" class="data row29 col19" ></td>
	  <td id="T_24da6_row29_col20" class="data row29 col20" ></td>
	  <td id="T_24da6_row29_col21" class="data row29 col21" ></td>
	  <td id="T_24da6_row29_col22" class="data row29 col22" ></td>
	  <td id="T_24da6_row29_col23" class="data row29 col23" ></td>
	  <td id="T_24da6_row29_col24" class="data row29 col24" ></td>
	  <td id="T_24da6_row29_col25" class="data row29 col25" ></td>
	  <td id="T_24da6_row29_col26" class="data row29 col26" ></td>
	  <td id="T_24da6_row29_col27" class="data row29 col27" ></td>
	  <td id="T_24da6_row29_col28" class="data row29 col28" ></td>
	  <td id="T_24da6_row29_col29" class="data row29 col29" >117.92</td>
	  <td id="T_24da6_row29_col30" class="data row29 col30" >114.91</td>
	  <td id="T_24da6_row29_col31" class="data row29 col31" >114.91</td>
	  <td id="T_24da6_row29_col32" class="data row29 col32" >111.90</td>
	  <td id="T_24da6_row29_col33" class="data row29 col33" >111.90</td>
	  <td id="T_24da6_row29_col34" class="data row29 col34" >108.90</td>
	  <td id="T_24da6_row29_col35" class="data row29 col35" >108.90</td>
	  <td id="T_24da6_row29_col36" class="data row29 col36" >105.91</td>
	  <td id="T_24da6_row29_col37" class="data row29 col37" >105.92</td>
	  <td id="T_24da6_row29_col38" class="data row29 col38" >102.94</td>
	  <td id="T_24da6_row29_col39" class="data row29 col39" >102.96</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row30" class="row_heading level0 row30" >30</th>
	  <td id="T_24da6_row30_col0" class="data row30 col0" ></td>
	  <td id="T_24da6_row30_col1" class="data row30 col1" ></td>
	  <td id="T_24da6_row30_col2" class="data row30 col2" ></td>
	  <td id="T_24da6_row30_col3" class="data row30 col3" ></td>
	  <td id="T_24da6_row30_col4" class="data row30 col4" ></td>
	  <td id="T_24da6_row30_col5" class="data row30 col5" ></td>
	  <td id="T_24da6_row30_col6" class="data row30 col6" ></td>
	  <td id="T_24da6_row30_col7" class="data row30 col7" ></td>
	  <td id="T_24da6_row30_col8" class="data row30 col8" ></td>
	  <td id="T_24da6_row30_col9" class="data row30 col9" ></td>
	  <td id="T_24da6_row30_col10" class="data row30 col10" ></td>
	  <td id="T_24da6_row30_col11" class="data row30 col11" ></td>
	  <td id="T_24da6_row30_col12" class="data row30 col12" ></td>
	  <td id="T_24da6_row30_col13" class="data row30 col13" ></td>
	  <td id="T_24da6_row30_col14" class="data row30 col14" ></td>
	  <td id="T_24da6_row30_col15" class="data row30 col15" ></td>
	  <td id="T_24da6_row30_col16" class="data row30 col16" ></td>
	  <td id="T_24da6_row30_col17" class="data row30 col17" ></td>
	  <td id="T_24da6_row30_col18" class="data row30 col18" ></td>
	  <td id="T_24da6_row30_col19" class="data row30 col19" ></td>
	  <td id="T_24da6_row30_col20" class="data row30 col20" ></td>
	  <td id="T_24da6_row30_col21" class="data row30 col21" ></td>
	  <td id="T_24da6_row30_col22" class="data row30 col22" ></td>
	  <td id="T_24da6_row30_col23" class="data row30 col23" ></td>
	  <td id="T_24da6_row30_col24" class="data row30 col24" ></td>
	  <td id="T_24da6_row30_col25" class="data row30 col25" ></td>
	  <td id="T_24da6_row30_col26" class="data row30 col26" ></td>
	  <td id="T_24da6_row30_col27" class="data row30 col27" ></td>
	  <td id="T_24da6_row30_col28" class="data row30 col28" ></td>
	  <td id="T_24da6_row30_col29" class="data row30 col29" ></td>
	  <td id="T_24da6_row30_col30" class="data row30 col30" >114.93</td>
	  <td id="T_24da6_row30_col31" class="data row30 col31" >114.93</td>
	  <td id="T_24da6_row30_col32" class="data row30 col32" >111.93</td>
	  <td id="T_24da6_row30_col33" class="data row30 col33" >111.93</td>
	  <td id="T_24da6_row30_col34" class="data row30 col34" >108.93</td>
	  <td id="T_24da6_row30_col35" class="data row30 col35" >108.93</td>
	  <td id="T_24da6_row30_col36" class="data row30 col36" >105.93</td>
	  <td id="T_24da6_row30_col37" class="data row30 col37" >105.94</td>
	  <td id="T_24da6_row30_col38" class="data row30 col38" >102.95</td>
	  <td id="T_24da6_row30_col39" class="data row30 col39" >102.97</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row31" class="row_heading level0 row31" >31</th>
	  <td id="T_24da6_row31_col0" class="data row31 col0" ></td>
	  <td id="T_24da6_row31_col1" class="data row31 col1" ></td>
	  <td id="T_24da6_row31_col2" class="data row31 col2" ></td>
	  <td id="T_24da6_row31_col3" class="data row31 col3" ></td>
	  <td id="T_24da6_row31_col4" class="data row31 col4" ></td>
	  <td id="T_24da6_row31_col5" class="data row31 col5" ></td>
	  <td id="T_24da6_row31_col6" class="data row31 col6" ></td>
	  <td id="T_24da6_row31_col7" class="data row31 col7" ></td>
	  <td id="T_24da6_row31_col8" class="data row31 col8" ></td>
	  <td id="T_24da6_row31_col9" class="data row31 col9" ></td>
	  <td id="T_24da6_row31_col10" class="data row31 col10" ></td>
	  <td id="T_24da6_row31_col11" class="data row31 col11" ></td>
	  <td id="T_24da6_row31_col12" class="data row31 col12" ></td>
	  <td id="T_24da6_row31_col13" class="data row31 col13" ></td>
	  <td id="T_24da6_row31_col14" class="data row31 col14" ></td>
	  <td id="T_24da6_row31_col15" class="data row31 col15" ></td>
	  <td id="T_24da6_row31_col16" class="data row31 col16" ></td>
	  <td id="T_24da6_row31_col17" class="data row31 col17" ></td>
	  <td id="T_24da6_row31_col18" class="data row31 col18" ></td>
	  <td id="T_24da6_row31_col19" class="data row31 col19" ></td>
	  <td id="T_24da6_row31_col20" class="data row31 col20" ></td>
	  <td id="T_24da6_row31_col21" class="data row31 col21" ></td>
	  <td id="T_24da6_row31_col22" class="data row31 col22" ></td>
	  <td id="T_24da6_row31_col23" class="data row31 col23" ></td>
	  <td id="T_24da6_row31_col24" class="data row31 col24" ></td>
	  <td id="T_24da6_row31_col25" class="data row31 col25" ></td>
	  <td id="T_24da6_row31_col26" class="data row31 col26" ></td>
	  <td id="T_24da6_row31_col27" class="data row31 col27" ></td>
	  <td id="T_24da6_row31_col28" class="data row31 col28" ></td>
	  <td id="T_24da6_row31_col29" class="data row31 col29" ></td>
	  <td id="T_24da6_row31_col30" class="data row31 col30" ></td>
	  <td id="T_24da6_row31_col31" class="data row31 col31" >114.95</td>
	  <td id="T_24da6_row31_col32" class="data row31 col32" >111.94</td>
	  <td id="T_24da6_row31_col33" class="data row31 col33" >111.94</td>
	  <td id="T_24da6_row31_col34" class="data row31 col34" >108.94</td>
	  <td id="T_24da6_row31_col35" class="data row31 col35" >108.95</td>
	  <td id="T_24da6_row31_col36" class="data row31 col36" >105.95</td>
	  <td id="T_24da6_row31_col37" class="data row31 col37" >105.96</td>
	  <td id="T_24da6_row31_col38" class="data row31 col38" >102.97</td>
	  <td id="T_24da6_row31_col39" class="data row31 col39" >102.98</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row32" class="row_heading level0 row32" >32</th>
	  <td id="T_24da6_row32_col0" class="data row32 col0" ></td>
	  <td id="T_24da6_row32_col1" class="data row32 col1" ></td>
	  <td id="T_24da6_row32_col2" class="data row32 col2" ></td>
	  <td id="T_24da6_row32_col3" class="data row32 col3" ></td>
	  <td id="T_24da6_row32_col4" class="data row32 col4" ></td>
	  <td id="T_24da6_row32_col5" class="data row32 col5" ></td>
	  <td id="T_24da6_row32_col6" class="data row32 col6" ></td>
	  <td id="T_24da6_row32_col7" class="data row32 col7" ></td>
	  <td id="T_24da6_row32_col8" class="data row32 col8" ></td>
	  <td id="T_24da6_row32_col9" class="data row32 col9" ></td>
	  <td id="T_24da6_row32_col10" class="data row32 col10" ></td>
	  <td id="T_24da6_row32_col11" class="data row32 col11" ></td>
	  <td id="T_24da6_row32_col12" class="data row32 col12" ></td>
	  <td id="T_24da6_row32_col13" class="data row32 col13" ></td>
	  <td id="T_24da6_row32_col14" class="data row32 col14" ></td>
	  <td id="T_24da6_row32_col15" class="data row32 col15" ></td>
	  <td id="T_24da6_row32_col16" class="data row32 col16" ></td>
	  <td id="T_24da6_row32_col17" class="data row32 col17" ></td>
	  <td id="T_24da6_row32_col18" class="data row32 col18" ></td>
	  <td id="T_24da6_row32_col19" class="data row32 col19" ></td>
	  <td id="T_24da6_row32_col20" class="data row32 col20" ></td>
	  <td id="T_24da6_row32_col21" class="data row32 col21" ></td>
	  <td id="T_24da6_row32_col22" class="data row32 col22" ></td>
	  <td id="T_24da6_row32_col23" class="data row32 col23" ></td>
	  <td id="T_24da6_row32_col24" class="data row32 col24" ></td>
	  <td id="T_24da6_row32_col25" class="data row32 col25" ></td>
	  <td id="T_24da6_row32_col26" class="data row32 col26" ></td>
	  <td id="T_24da6_row32_col27" class="data row32 col27" ></td>
	  <td id="T_24da6_row32_col28" class="data row32 col28" ></td>
	  <td id="T_24da6_row32_col29" class="data row32 col29" ></td>
	  <td id="T_24da6_row32_col30" class="data row32 col30" ></td>
	  <td id="T_24da6_row32_col31" class="data row32 col31" ></td>
	  <td id="T_24da6_row32_col32" class="data row32 col32" >111.96</td>
	  <td id="T_24da6_row32_col33" class="data row32 col33" >111.96</td>
	  <td id="T_24da6_row32_col34" class="data row32 col34" >108.96</td>
	  <td id="T_24da6_row32_col35" class="data row32 col35" >108.96</td>
	  <td id="T_24da6_row32_col36" class="data row32 col36" >105.96</td>
	  <td id="T_24da6_row32_col37" class="data row32 col37" >105.97</td>
	  <td id="T_24da6_row32_col38" class="data row32 col38" >102.97</td>
	  <td id="T_24da6_row32_col39" class="data row32 col39" >102.98</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row33" class="row_heading level0 row33" >33</th>
	  <td id="T_24da6_row33_col0" class="data row33 col0" ></td>
	  <td id="T_24da6_row33_col1" class="data row33 col1" ></td>
	  <td id="T_24da6_row33_col2" class="data row33 col2" ></td>
	  <td id="T_24da6_row33_col3" class="data row33 col3" ></td>
	  <td id="T_24da6_row33_col4" class="data row33 col4" ></td>
	  <td id="T_24da6_row33_col5" class="data row33 col5" ></td>
	  <td id="T_24da6_row33_col6" class="data row33 col6" ></td>
	  <td id="T_24da6_row33_col7" class="data row33 col7" ></td>
	  <td id="T_24da6_row33_col8" class="data row33 col8" ></td>
	  <td id="T_24da6_row33_col9" class="data row33 col9" ></td>
	  <td id="T_24da6_row33_col10" class="data row33 col10" ></td>
	  <td id="T_24da6_row33_col11" class="data row33 col11" ></td>
	  <td id="T_24da6_row33_col12" class="data row33 col12" ></td>
	  <td id="T_24da6_row33_col13" class="data row33 col13" ></td>
	  <td id="T_24da6_row33_col14" class="data row33 col14" ></td>
	  <td id="T_24da6_row33_col15" class="data row33 col15" ></td>
	  <td id="T_24da6_row33_col16" class="data row33 col16" ></td>
	  <td id="T_24da6_row33_col17" class="data row33 col17" ></td>
	  <td id="T_24da6_row33_col18" class="data row33 col18" ></td>
	  <td id="T_24da6_row33_col19" class="data row33 col19" ></td>
	  <td id="T_24da6_row33_col20" class="data row33 col20" ></td>
	  <td id="T_24da6_row33_col21" class="data row33 col21" ></td>
	  <td id="T_24da6_row33_col22" class="data row33 col22" ></td>
	  <td id="T_24da6_row33_col23" class="data row33 col23" ></td>
	  <td id="T_24da6_row33_col24" class="data row33 col24" ></td>
	  <td id="T_24da6_row33_col25" class="data row33 col25" ></td>
	  <td id="T_24da6_row33_col26" class="data row33 col26" ></td>
	  <td id="T_24da6_row33_col27" class="data row33 col27" ></td>
	  <td id="T_24da6_row33_col28" class="data row33 col28" ></td>
	  <td id="T_24da6_row33_col29" class="data row33 col29" ></td>
	  <td id="T_24da6_row33_col30" class="data row33 col30" ></td>
	  <td id="T_24da6_row33_col31" class="data row33 col31" ></td>
	  <td id="T_24da6_row33_col32" class="data row33 col32" ></td>
	  <td id="T_24da6_row33_col33" class="data row33 col33" >111.97</td>
	  <td id="T_24da6_row33_col34" class="data row33 col34" >108.97</td>
	  <td id="T_24da6_row33_col35" class="data row33 col35" >108.97</td>
	  <td id="T_24da6_row33_col36" class="data row33 col36" >105.97</td>
	  <td id="T_24da6_row33_col37" class="data row33 col37" >105.97</td>
	  <td id="T_24da6_row33_col38" class="data row33 col38" >102.98</td>
	  <td id="T_24da6_row33_col39" class="data row33 col39" >102.99</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row34" class="row_heading level0 row34" >34</th>
	  <td id="T_24da6_row34_col0" class="data row34 col0" ></td>
	  <td id="T_24da6_row34_col1" class="data row34 col1" ></td>
	  <td id="T_24da6_row34_col2" class="data row34 col2" ></td>
	  <td id="T_24da6_row34_col3" class="data row34 col3" ></td>
	  <td id="T_24da6_row34_col4" class="data row34 col4" ></td>
	  <td id="T_24da6_row34_col5" class="data row34 col5" ></td>
	  <td id="T_24da6_row34_col6" class="data row34 col6" ></td>
	  <td id="T_24da6_row34_col7" class="data row34 col7" ></td>
	  <td id="T_24da6_row34_col8" class="data row34 col8" ></td>
	  <td id="T_24da6_row34_col9" class="data row34 col9" ></td>
	  <td id="T_24da6_row34_col10" class="data row34 col10" ></td>
	  <td id="T_24da6_row34_col11" class="data row34 col11" ></td>
	  <td id="T_24da6_row34_col12" class="data row34 col12" ></td>
	  <td id="T_24da6_row34_col13" class="data row34 col13" ></td>
	  <td id="T_24da6_row34_col14" class="data row34 col14" ></td>
	  <td id="T_24da6_row34_col15" class="data row34 col15" ></td>
	  <td id="T_24da6_row34_col16" class="data row34 col16" ></td>
	  <td id="T_24da6_row34_col17" class="data row34 col17" ></td>
	  <td id="T_24da6_row34_col18" class="data row34 col18" ></td>
	  <td id="T_24da6_row34_col19" class="data row34 col19" ></td>
	  <td id="T_24da6_row34_col20" class="data row34 col20" ></td>
	  <td id="T_24da6_row34_col21" class="data row34 col21" ></td>
	  <td id="T_24da6_row34_col22" class="data row34 col22" ></td>
	  <td id="T_24da6_row34_col23" class="data row34 col23" ></td>
	  <td id="T_24da6_row34_col24" class="data row34 col24" ></td>
	  <td id="T_24da6_row34_col25" class="data row34 col25" ></td>
	  <td id="T_24da6_row34_col26" class="data row34 col26" ></td>
	  <td id="T_24da6_row34_col27" class="data row34 col27" ></td>
	  <td id="T_24da6_row34_col28" class="data row34 col28" ></td>
	  <td id="T_24da6_row34_col29" class="data row34 col29" ></td>
	  <td id="T_24da6_row34_col30" class="data row34 col30" ></td>
	  <td id="T_24da6_row34_col31" class="data row34 col31" ></td>
	  <td id="T_24da6_row34_col32" class="data row34 col32" ></td>
	  <td id="T_24da6_row34_col33" class="data row34 col33" ></td>
	  <td id="T_24da6_row34_col34" class="data row34 col34" >108.97</td>
	  <td id="T_24da6_row34_col35" class="data row34 col35" >108.97</td>
	  <td id="T_24da6_row34_col36" class="data row34 col36" >105.98</td>
	  <td id="T_24da6_row34_col37" class="data row34 col37" >105.98</td>
	  <td id="T_24da6_row34_col38" class="data row34 col38" >102.98</td>
	  <td id="T_24da6_row34_col39" class="data row34 col39" >102.99</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row35" class="row_heading level0 row35" >35</th>
	  <td id="T_24da6_row35_col0" class="data row35 col0" ></td>
	  <td id="T_24da6_row35_col1" class="data row35 col1" ></td>
	  <td id="T_24da6_row35_col2" class="data row35 col2" ></td>
	  <td id="T_24da6_row35_col3" class="data row35 col3" ></td>
	  <td id="T_24da6_row35_col4" class="data row35 col4" ></td>
	  <td id="T_24da6_row35_col5" class="data row35 col5" ></td>
	  <td id="T_24da6_row35_col6" class="data row35 col6" ></td>
	  <td id="T_24da6_row35_col7" class="data row35 col7" ></td>
	  <td id="T_24da6_row35_col8" class="data row35 col8" ></td>
	  <td id="T_24da6_row35_col9" class="data row35 col9" ></td>
	  <td id="T_24da6_row35_col10" class="data row35 col10" ></td>
	  <td id="T_24da6_row35_col11" class="data row35 col11" ></td>
	  <td id="T_24da6_row35_col12" class="data row35 col12" ></td>
	  <td id="T_24da6_row35_col13" class="data row35 col13" ></td>
	  <td id="T_24da6_row35_col14" class="data row35 col14" ></td>
	  <td id="T_24da6_row35_col15" class="data row35 col15" ></td>
	  <td id="T_24da6_row35_col16" class="data row35 col16" ></td>
	  <td id="T_24da6_row35_col17" class="data row35 col17" ></td>
	  <td id="T_24da6_row35_col18" class="data row35 col18" ></td>
	  <td id="T_24da6_row35_col19" class="data row35 col19" ></td>
	  <td id="T_24da6_row35_col20" class="data row35 col20" ></td>
	  <td id="T_24da6_row35_col21" class="data row35 col21" ></td>
	  <td id="T_24da6_row35_col22" class="data row35 col22" ></td>
	  <td id="T_24da6_row35_col23" class="data row35 col23" ></td>
	  <td id="T_24da6_row35_col24" class="data row35 col24" ></td>
	  <td id="T_24da6_row35_col25" class="data row35 col25" ></td>
	  <td id="T_24da6_row35_col26" class="data row35 col26" ></td>
	  <td id="T_24da6_row35_col27" class="data row35 col27" ></td>
	  <td id="T_24da6_row35_col28" class="data row35 col28" ></td>
	  <td id="T_24da6_row35_col29" class="data row35 col29" ></td>
	  <td id="T_24da6_row35_col30" class="data row35 col30" ></td>
	  <td id="T_24da6_row35_col31" class="data row35 col31" ></td>
	  <td id="T_24da6_row35_col32" class="data row35 col32" ></td>
	  <td id="T_24da6_row35_col33" class="data row35 col33" ></td>
	  <td id="T_24da6_row35_col34" class="data row35 col34" ></td>
	  <td id="T_24da6_row35_col35" class="data row35 col35" >108.98</td>
	  <td id="T_24da6_row35_col36" class="data row35 col36" >105.98</td>
	  <td id="T_24da6_row35_col37" class="data row35 col37" >105.98</td>
	  <td id="T_24da6_row35_col38" class="data row35 col38" >102.99</td>
	  <td id="T_24da6_row35_col39" class="data row35 col39" >102.99</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row36" class="row_heading level0 row36" >36</th>
	  <td id="T_24da6_row36_col0" class="data row36 col0" ></td>
	  <td id="T_24da6_row36_col1" class="data row36 col1" ></td>
	  <td id="T_24da6_row36_col2" class="data row36 col2" ></td>
	  <td id="T_24da6_row36_col3" class="data row36 col3" ></td>
	  <td id="T_24da6_row36_col4" class="data row36 col4" ></td>
	  <td id="T_24da6_row36_col5" class="data row36 col5" ></td>
	  <td id="T_24da6_row36_col6" class="data row36 col6" ></td>
	  <td id="T_24da6_row36_col7" class="data row36 col7" ></td>
	  <td id="T_24da6_row36_col8" class="data row36 col8" ></td>
	  <td id="T_24da6_row36_col9" class="data row36 col9" ></td>
	  <td id="T_24da6_row36_col10" class="data row36 col10" ></td>
	  <td id="T_24da6_row36_col11" class="data row36 col11" ></td>
	  <td id="T_24da6_row36_col12" class="data row36 col12" ></td>
	  <td id="T_24da6_row36_col13" class="data row36 col13" ></td>
	  <td id="T_24da6_row36_col14" class="data row36 col14" ></td>
	  <td id="T_24da6_row36_col15" class="data row36 col15" ></td>
	  <td id="T_24da6_row36_col16" class="data row36 col16" ></td>
	  <td id="T_24da6_row36_col17" class="data row36 col17" ></td>
	  <td id="T_24da6_row36_col18" class="data row36 col18" ></td>
	  <td id="T_24da6_row36_col19" class="data row36 col19" ></td>
	  <td id="T_24da6_row36_col20" class="data row36 col20" ></td>
	  <td id="T_24da6_row36_col21" class="data row36 col21" ></td>
	  <td id="T_24da6_row36_col22" class="data row36 col22" ></td>
	  <td id="T_24da6_row36_col23" class="data row36 col23" ></td>
	  <td id="T_24da6_row36_col24" class="data row36 col24" ></td>
	  <td id="T_24da6_row36_col25" class="data row36 col25" ></td>
	  <td id="T_24da6_row36_col26" class="data row36 col26" ></td>
	  <td id="T_24da6_row36_col27" class="data row36 col27" ></td>
	  <td id="T_24da6_row36_col28" class="data row36 col28" ></td>
	  <td id="T_24da6_row36_col29" class="data row36 col29" ></td>
	  <td id="T_24da6_row36_col30" class="data row36 col30" ></td>
	  <td id="T_24da6_row36_col31" class="data row36 col31" ></td>
	  <td id="T_24da6_row36_col32" class="data row36 col32" ></td>
	  <td id="T_24da6_row36_col33" class="data row36 col33" ></td>
	  <td id="T_24da6_row36_col34" class="data row36 col34" ></td>
	  <td id="T_24da6_row36_col35" class="data row36 col35" ></td>
	  <td id="T_24da6_row36_col36" class="data row36 col36" >105.99</td>
	  <td id="T_24da6_row36_col37" class="data row36 col37" >105.99</td>
	  <td id="T_24da6_row36_col38" class="data row36 col38" >102.99</td>
	  <td id="T_24da6_row36_col39" class="data row36 col39" >102.99</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row37" class="row_heading level0 row37" >37</th>
	  <td id="T_24da6_row37_col0" class="data row37 col0" ></td>
	  <td id="T_24da6_row37_col1" class="data row37 col1" ></td>
	  <td id="T_24da6_row37_col2" class="data row37 col2" ></td>
	  <td id="T_24da6_row37_col3" class="data row37 col3" ></td>
	  <td id="T_24da6_row37_col4" class="data row37 col4" ></td>
	  <td id="T_24da6_row37_col5" class="data row37 col5" ></td>
	  <td id="T_24da6_row37_col6" class="data row37 col6" ></td>
	  <td id="T_24da6_row37_col7" class="data row37 col7" ></td>
	  <td id="T_24da6_row37_col8" class="data row37 col8" ></td>
	  <td id="T_24da6_row37_col9" class="data row37 col9" ></td>
	  <td id="T_24da6_row37_col10" class="data row37 col10" ></td>
	  <td id="T_24da6_row37_col11" class="data row37 col11" ></td>
	  <td id="T_24da6_row37_col12" class="data row37 col12" ></td>
	  <td id="T_24da6_row37_col13" class="data row37 col13" ></td>
	  <td id="T_24da6_row37_col14" class="data row37 col14" ></td>
	  <td id="T_24da6_row37_col15" class="data row37 col15" ></td>
	  <td id="T_24da6_row37_col16" class="data row37 col16" ></td>
	  <td id="T_24da6_row37_col17" class="data row37 col17" ></td>
	  <td id="T_24da6_row37_col18" class="data row37 col18" ></td>
	  <td id="T_24da6_row37_col19" class="data row37 col19" ></td>
	  <td id="T_24da6_row37_col20" class="data row37 col20" ></td>
	  <td id="T_24da6_row37_col21" class="data row37 col21" ></td>
	  <td id="T_24da6_row37_col22" class="data row37 col22" ></td>
	  <td id="T_24da6_row37_col23" class="data row37 col23" ></td>
	  <td id="T_24da6_row37_col24" class="data row37 col24" ></td>
	  <td id="T_24da6_row37_col25" class="data row37 col25" ></td>
	  <td id="T_24da6_row37_col26" class="data row37 col26" ></td>
	  <td id="T_24da6_row37_col27" class="data row37 col27" ></td>
	  <td id="T_24da6_row37_col28" class="data row37 col28" ></td>
	  <td id="T_24da6_row37_col29" class="data row37 col29" ></td>
	  <td id="T_24da6_row37_col30" class="data row37 col30" ></td>
	  <td id="T_24da6_row37_col31" class="data row37 col31" ></td>
	  <td id="T_24da6_row37_col32" class="data row37 col32" ></td>
	  <td id="T_24da6_row37_col33" class="data row37 col33" ></td>
	  <td id="T_24da6_row37_col34" class="data row37 col34" ></td>
	  <td id="T_24da6_row37_col35" class="data row37 col35" ></td>
	  <td id="T_24da6_row37_col36" class="data row37 col36" ></td>
	  <td id="T_24da6_row37_col37" class="data row37 col37" >105.99</td>
	  <td id="T_24da6_row37_col38" class="data row37 col38" >102.99</td>
	  <td id="T_24da6_row37_col39" class="data row37 col39" >103.00</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row38" class="row_heading level0 row38" >38</th>
	  <td id="T_24da6_row38_col0" class="data row38 col0" ></td>
	  <td id="T_24da6_row38_col1" class="data row38 col1" ></td>
	  <td id="T_24da6_row38_col2" class="data row38 col2" ></td>
	  <td id="T_24da6_row38_col3" class="data row38 col3" ></td>
	  <td id="T_24da6_row38_col4" class="data row38 col4" ></td>
	  <td id="T_24da6_row38_col5" class="data row38 col5" ></td>
	  <td id="T_24da6_row38_col6" class="data row38 col6" ></td>
	  <td id="T_24da6_row38_col7" class="data row38 col7" ></td>
	  <td id="T_24da6_row38_col8" class="data row38 col8" ></td>
	  <td id="T_24da6_row38_col9" class="data row38 col9" ></td>
	  <td id="T_24da6_row38_col10" class="data row38 col10" ></td>
	  <td id="T_24da6_row38_col11" class="data row38 col11" ></td>
	  <td id="T_24da6_row38_col12" class="data row38 col12" ></td>
	  <td id="T_24da6_row38_col13" class="data row38 col13" ></td>
	  <td id="T_24da6_row38_col14" class="data row38 col14" ></td>
	  <td id="T_24da6_row38_col15" class="data row38 col15" ></td>
	  <td id="T_24da6_row38_col16" class="data row38 col16" ></td>
	  <td id="T_24da6_row38_col17" class="data row38 col17" ></td>
	  <td id="T_24da6_row38_col18" class="data row38 col18" ></td>
	  <td id="T_24da6_row38_col19" class="data row38 col19" ></td>
	  <td id="T_24da6_row38_col20" class="data row38 col20" ></td>
	  <td id="T_24da6_row38_col21" class="data row38 col21" ></td>
	  <td id="T_24da6_row38_col22" class="data row38 col22" ></td>
	  <td id="T_24da6_row38_col23" class="data row38 col23" ></td>
	  <td id="T_24da6_row38_col24" class="data row38 col24" ></td>
	  <td id="T_24da6_row38_col25" class="data row38 col25" ></td>
	  <td id="T_24da6_row38_col26" class="data row38 col26" ></td>
	  <td id="T_24da6_row38_col27" class="data row38 col27" ></td>
	  <td id="T_24da6_row38_col28" class="data row38 col28" ></td>
	  <td id="T_24da6_row38_col29" class="data row38 col29" ></td>
	  <td id="T_24da6_row38_col30" class="data row38 col30" ></td>
	  <td id="T_24da6_row38_col31" class="data row38 col31" ></td>
	  <td id="T_24da6_row38_col32" class="data row38 col32" ></td>
	  <td id="T_24da6_row38_col33" class="data row38 col33" ></td>
	  <td id="T_24da6_row38_col34" class="data row38 col34" ></td>
	  <td id="T_24da6_row38_col35" class="data row38 col35" ></td>
	  <td id="T_24da6_row38_col36" class="data row38 col36" ></td>
	  <td id="T_24da6_row38_col37" class="data row38 col37" ></td>
	  <td id="T_24da6_row38_col38" class="data row38 col38" >102.99</td>
	  <td id="T_24da6_row38_col39" class="data row38 col39" >103.00</td>
	</tr>
	<tr>
	  <th id="T_24da6_level0_row39" class="row_heading level0 row39" >39</th>
	  <td id="T_24da6_row39_col0" class="data row39 col0" ></td>
	  <td id="T_24da6_row39_col1" class="data row39 col1" ></td>
	  <td id="T_24da6_row39_col2" class="data row39 col2" ></td>
	  <td id="T_24da6_row39_col3" class="data row39 col3" ></td>
	  <td id="T_24da6_row39_col4" class="data row39 col4" ></td>
	  <td id="T_24da6_row39_col5" class="data row39 col5" ></td>
	  <td id="T_24da6_row39_col6" class="data row39 col6" ></td>
	  <td id="T_24da6_row39_col7" class="data row39 col7" ></td>
	  <td id="T_24da6_row39_col8" class="data row39 col8" ></td>
	  <td id="T_24da6_row39_col9" class="data row39 col9" ></td>
	  <td id="T_24da6_row39_col10" class="data row39 col10" ></td>
	  <td id="T_24da6_row39_col11" class="data row39 col11" ></td>
	  <td id="T_24da6_row39_col12" class="data row39 col12" ></td>
	  <td id="T_24da6_row39_col13" class="data row39 col13" ></td>
	  <td id="T_24da6_row39_col14" class="data row39 col14" ></td>
	  <td id="T_24da6_row39_col15" class="data row39 col15" ></td>
	  <td id="T_24da6_row39_col16" class="data row39 col16" ></td>
	  <td id="T_24da6_row39_col17" class="data row39 col17" ></td>
	  <td id="T_24da6_row39_col18" class="data row39 col18" ></td>
	  <td id="T_24da6_row39_col19" class="data row39 col19" ></td>
	  <td id="T_24da6_row39_col20" class="data row39 col20" ></td>
	  <td id="T_24da6_row39_col21" class="data row39 col21" ></td>
	  <td id="T_24da6_row39_col22" class="data row39 col22" ></td>
	  <td id="T_24da6_row39_col23" class="data row39 col23" ></td>
	  <td id="T_24da6_row39_col24" class="data row39 col24" ></td>
	  <td id="T_24da6_row39_col25" class="data row39 col25" ></td>
	  <td id="T_24da6_row39_col26" class="data row39 col26" ></td>
	  <td id="T_24da6_row39_col27" class="data row39 col27" ></td>
	  <td id="T_24da6_row39_col28" class="data row39 col28" ></td>
	  <td id="T_24da6_row39_col29" class="data row39 col29" ></td>
	  <td id="T_24da6_row39_col30" class="data row39 col30" ></td>
	  <td id="T_24da6_row39_col31" class="data row39 col31" ></td>
	  <td id="T_24da6_row39_col32" class="data row39 col32" ></td>
	  <td id="T_24da6_row39_col33" class="data row39 col33" ></td>
	  <td id="T_24da6_row39_col34" class="data row39 col34" ></td>
	  <td id="T_24da6_row39_col35" class="data row39 col35" ></td>
	  <td id="T_24da6_row39_col36" class="data row39 col36" ></td>
	  <td id="T_24da6_row39_col37" class="data row39 col37" ></td>
	  <td id="T_24da6_row39_col38" class="data row39 col38" ></td>
	  <td id="T_24da6_row39_col39" class="data row39 col39" >103.00</td>
	</tr>
  </tbody>
</table>

## 5. Get Price

### Convert from Dirty Price to Clean Price

We want to compare the (clean) strike to the **clean** bond price. Thus, we need to subtract accrued interest and coupons from the bond value tree.

$$P_{\text{clean}} = P_{\text{dirty}} - C_{\text{accrued int or coupon}}$$

Then, we will use this clean bond price tree as the underlying.

```python
accint = construct_accint(bondtree.columns.values, compound, cpn)
cleantree = np.maximum(bondtree.subtract(accint,axis=1),0)

cleantree.style.format('{:.2f}',na_rep='')
```

<style type="text/css">
</style>
<table id="T_a4274_">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th class="col_heading level0 col0" >0.0</th>
	  <th class="col_heading level0 col1" >0.25</th>
	  <th class="col_heading level0 col2" >0.5</th>
	  <th class="col_heading level0 col3" >0.75</th>
	  <th class="col_heading level0 col4" >1.0</th>
	  <th class="col_heading level0 col5" >1.25</th>
	  <th class="col_heading level0 col6" >1.5</th>
	  <th class="col_heading level0 col7" >1.75</th>
	  <th class="col_heading level0 col8" >2.0</th>
	  <th class="col_heading level0 col9" >2.25</th>
	  <th class="col_heading level0 col10" >2.5</th>
	  <th class="col_heading level0 col11" >2.75</th>
	  <th class="col_heading level0 col12" >3.0</th>
	  <th class="col_heading level0 col13" >3.25</th>
	  <th class="col_heading level0 col14" >3.5</th>
	  <th class="col_heading level0 col15" >3.75</th>
	  <th class="col_heading level0 col16" >4.0</th>
	  <th class="col_heading level0 col17" >4.25</th>
	  <th class="col_heading level0 col18" >4.5</th>
	  <th class="col_heading level0 col19" >4.75</th>
	  <th class="col_heading level0 col20" >5.0</th>
	  <th class="col_heading level0 col21" >5.25</th>
	  <th class="col_heading level0 col22" >5.5</th>
	  <th class="col_heading level0 col23" >5.75</th>
	  <th class="col_heading level0 col24" >6.0</th>
	  <th class="col_heading level0 col25" >6.25</th>
	  <th class="col_heading level0 col26" >6.5</th>
	  <th class="col_heading level0 col27" >6.75</th>
	  <th class="col_heading level0 col28" >7.0</th>
	  <th class="col_heading level0 col29" >7.25</th>
	  <th class="col_heading level0 col30" >7.5</th>
	  <th class="col_heading level0 col31" >7.75</th>
	  <th class="col_heading level0 col32" >8.0</th>
	  <th class="col_heading level0 col33" >8.25</th>
	  <th class="col_heading level0 col34" >8.5</th>
	  <th class="col_heading level0 col35" >8.75</th>
	  <th class="col_heading level0 col36" >9.0</th>
	  <th class="col_heading level0 col37" >9.25</th>
	  <th class="col_heading level0 col38" >9.5</th>
	  <th class="col_heading level0 col39" >9.75</th>
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
	  <th class="blank col13" >&nbsp;</th>
	  <th class="blank col14" >&nbsp;</th>
	  <th class="blank col15" >&nbsp;</th>
	  <th class="blank col16" >&nbsp;</th>
	  <th class="blank col17" >&nbsp;</th>
	  <th class="blank col18" >&nbsp;</th>
	  <th class="blank col19" >&nbsp;</th>
	  <th class="blank col20" >&nbsp;</th>
	  <th class="blank col21" >&nbsp;</th>
	  <th class="blank col22" >&nbsp;</th>
	  <th class="blank col23" >&nbsp;</th>
	  <th class="blank col24" >&nbsp;</th>
	  <th class="blank col25" >&nbsp;</th>
	  <th class="blank col26" >&nbsp;</th>
	  <th class="blank col27" >&nbsp;</th>
	  <th class="blank col28" >&nbsp;</th>
	  <th class="blank col29" >&nbsp;</th>
	  <th class="blank col30" >&nbsp;</th>
	  <th class="blank col31" >&nbsp;</th>
	  <th class="blank col32" >&nbsp;</th>
	  <th class="blank col33" >&nbsp;</th>
	  <th class="blank col34" >&nbsp;</th>
	  <th class="blank col35" >&nbsp;</th>
	  <th class="blank col36" >&nbsp;</th>
	  <th class="blank col37" >&nbsp;</th>
	  <th class="blank col38" >&nbsp;</th>
	  <th class="blank col39" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_a4274_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_a4274_row0_col0" class="data row0 col0" >117.36</td>
	  <td id="T_a4274_row0_col1" class="data row0 col1" >111.08</td>
	  <td id="T_a4274_row0_col2" class="data row0 col2" >104.29</td>
	  <td id="T_a4274_row0_col3" class="data row0 col3" >96.91</td>
	  <td id="T_a4274_row0_col4" class="data row0 col4" >89.03</td>
	  <td id="T_a4274_row0_col5" class="data row0 col5" >80.59</td>
	  <td id="T_a4274_row0_col6" class="data row0 col6" >71.88</td>
	  <td id="T_a4274_row0_col7" class="data row0 col7" >63.01</td>
	  <td id="T_a4274_row0_col8" class="data row0 col8" >54.23</td>
	  <td id="T_a4274_row0_col9" class="data row0 col9" >45.63</td>
	  <td id="T_a4274_row0_col10" class="data row0 col10" >37.60</td>
	  <td id="T_a4274_row0_col11" class="data row0 col11" >30.21</td>
	  <td id="T_a4274_row0_col12" class="data row0 col12" >23.76</td>
	  <td id="T_a4274_row0_col13" class="data row0 col13" >18.10</td>
	  <td id="T_a4274_row0_col14" class="data row0 col14" >13.51</td>
	  <td id="T_a4274_row0_col15" class="data row0 col15" >9.77</td>
	  <td id="T_a4274_row0_col16" class="data row0 col16" >7.10</td>
	  <td id="T_a4274_row0_col17" class="data row0 col17" >4.85</td>
	  <td id="T_a4274_row0_col18" class="data row0 col18" >3.47</td>
	  <td id="T_a4274_row0_col19" class="data row0 col19" >2.16</td>
	  <td id="T_a4274_row0_col20" class="data row0 col20" >1.68</td>
	  <td id="T_a4274_row0_col21" class="data row0 col21" >0.76</td>
	  <td id="T_a4274_row0_col22" class="data row0 col22" >0.76</td>
	  <td id="T_a4274_row0_col23" class="data row0 col23" >0.00</td>
	  <td id="T_a4274_row0_col24" class="data row0 col24" >0.28</td>
	  <td id="T_a4274_row0_col25" class="data row0 col25" >0.00</td>
	  <td id="T_a4274_row0_col26" class="data row0 col26" >0.07</td>
	  <td id="T_a4274_row0_col27" class="data row0 col27" >0.00</td>
	  <td id="T_a4274_row0_col28" class="data row0 col28" >0.01</td>
	  <td id="T_a4274_row0_col29" class="data row0 col29" >0.00</td>
	  <td id="T_a4274_row0_col30" class="data row0 col30" >0.00</td>
	  <td id="T_a4274_row0_col31" class="data row0 col31" >0.00</td>
	  <td id="T_a4274_row0_col32" class="data row0 col32" >0.00</td>
	  <td id="T_a4274_row0_col33" class="data row0 col33" >0.00</td>
	  <td id="T_a4274_row0_col34" class="data row0 col34" >0.00</td>
	  <td id="T_a4274_row0_col35" class="data row0 col35" >0.00</td>
	  <td id="T_a4274_row0_col36" class="data row0 col36" >0.00</td>
	  <td id="T_a4274_row0_col37" class="data row0 col37" >0.00</td>
	  <td id="T_a4274_row0_col38" class="data row0 col38" >0.00</td>
	  <td id="T_a4274_row0_col39" class="data row0 col39" >0.00</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_a4274_row1_col0" class="data row1 col0" ></td>
	  <td id="T_a4274_row1_col1" class="data row1 col1" >123.70</td>
	  <td id="T_a4274_row1_col2" class="data row1 col2" >117.99</td>
	  <td id="T_a4274_row1_col3" class="data row1 col3" >111.69</td>
	  <td id="T_a4274_row1_col4" class="data row1 col4" >104.81</td>
	  <td id="T_a4274_row1_col5" class="data row1 col5" >97.24</td>
	  <td id="T_a4274_row1_col6" class="data row1 col6" >89.17</td>
	  <td id="T_a4274_row1_col7" class="data row1 col7" >80.65</td>
	  <td id="T_a4274_row1_col8" class="data row1 col8" >71.85</td>
	  <td id="T_a4274_row1_col9" class="data row1 col9" >62.82</td>
	  <td id="T_a4274_row1_col10" class="data row1 col10" >53.91</td>
	  <td id="T_a4274_row1_col11" class="data row1 col11" >45.25</td>
	  <td id="T_a4274_row1_col12" class="data row1 col12" >37.18</td>
	  <td id="T_a4274_row1_col13" class="data row1 col13" >29.63</td>
	  <td id="T_a4274_row1_col14" class="data row1 col14" >23.00</td>
	  <td id="T_a4274_row1_col15" class="data row1 col15" >17.29</td>
	  <td id="T_a4274_row1_col16" class="data row1 col16" >12.76</td>
	  <td id="T_a4274_row1_col17" class="data row1 col17" >8.93</td>
	  <td id="T_a4274_row1_col18" class="data row1 col18" >6.24</td>
	  <td id="T_a4274_row1_col19" class="data row1 col19" >4.02</td>
	  <td id="T_a4274_row1_col20" class="data row1 col20" >2.85</td>
	  <td id="T_a4274_row1_col21" class="data row1 col21" >1.55</td>
	  <td id="T_a4274_row1_col22" class="data row1 col22" >1.23</td>
	  <td id="T_a4274_row1_col23" class="data row1 col23" >0.25</td>
	  <td id="T_a4274_row1_col24" class="data row1 col24" >0.46</td>
	  <td id="T_a4274_row1_col25" class="data row1 col25" >0.00</td>
	  <td id="T_a4274_row1_col26" class="data row1 col26" >0.14</td>
	  <td id="T_a4274_row1_col27" class="data row1 col27" >0.00</td>
	  <td id="T_a4274_row1_col28" class="data row1 col28" >0.03</td>
	  <td id="T_a4274_row1_col29" class="data row1 col29" >0.00</td>
	  <td id="T_a4274_row1_col30" class="data row1 col30" >0.00</td>
	  <td id="T_a4274_row1_col31" class="data row1 col31" >0.00</td>
	  <td id="T_a4274_row1_col32" class="data row1 col32" >0.00</td>
	  <td id="T_a4274_row1_col33" class="data row1 col33" >0.00</td>
	  <td id="T_a4274_row1_col34" class="data row1 col34" >0.00</td>
	  <td id="T_a4274_row1_col35" class="data row1 col35" >0.00</td>
	  <td id="T_a4274_row1_col36" class="data row1 col36" >0.00</td>
	  <td id="T_a4274_row1_col37" class="data row1 col37" >0.00</td>
	  <td id="T_a4274_row1_col38" class="data row1 col38" >0.00</td>
	  <td id="T_a4274_row1_col39" class="data row1 col39" >0.00</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_a4274_row2_col0" class="data row2 col0" ></td>
	  <td id="T_a4274_row2_col1" class="data row2 col1" ></td>
	  <td id="T_a4274_row2_col2" class="data row2 col2" >129.33</td>
	  <td id="T_a4274_row2_col3" class="data row2 col3" >124.18</td>
	  <td id="T_a4274_row2_col4" class="data row2 col4" >118.50</td>
	  <td id="T_a4274_row2_col5" class="data row2 col5" >112.15</td>
	  <td id="T_a4274_row2_col6" class="data row2 col6" >105.23</td>
	  <td id="T_a4274_row2_col7" class="data row2 col7" >97.73</td>
	  <td id="T_a4274_row2_col8" class="data row2 col8" >89.74</td>
	  <td id="T_a4274_row2_col9" class="data row2 col9" >81.22</td>
	  <td id="T_a4274_row2_col10" class="data row2 col10" >72.46</td>
	  <td id="T_a4274_row2_col11" class="data row2 col11" >63.52</td>
	  <td id="T_a4274_row2_col12" class="data row2 col12" >54.69</td>
	  <td id="T_a4274_row2_col13" class="data row2 col13" >45.94</td>
	  <td id="T_a4274_row2_col14" class="data row2 col14" >37.68</td>
	  <td id="T_a4274_row2_col15" class="data row2 col15" >30.06</td>
	  <td id="T_a4274_row2_col16" class="data row2 col16" >23.43</td>
	  <td id="T_a4274_row2_col17" class="data row2 col17" >17.48</td>
	  <td id="T_a4274_row2_col18" class="data row2 col18" >12.73</td>
	  <td id="T_a4274_row2_col19" class="data row2 col19" >8.79</td>
	  <td id="T_a4274_row2_col20" class="data row2 col20" >6.15</td>
	  <td id="T_a4274_row2_col21" class="data row2 col21" >3.83</td>
	  <td id="T_a4274_row2_col22" class="data row2 col22" >2.65</td>
	  <td id="T_a4274_row2_col23" class="data row2 col23" >1.24</td>
	  <td id="T_a4274_row2_col24" class="data row2 col24" >1.01</td>
	  <td id="T_a4274_row2_col25" class="data row2 col25" >0.00</td>
	  <td id="T_a4274_row2_col26" class="data row2 col26" >0.33</td>
	  <td id="T_a4274_row2_col27" class="data row2 col27" >0.00</td>
	  <td id="T_a4274_row2_col28" class="data row2 col28" >0.08</td>
	  <td id="T_a4274_row2_col29" class="data row2 col29" >0.00</td>
	  <td id="T_a4274_row2_col30" class="data row2 col30" >0.01</td>
	  <td id="T_a4274_row2_col31" class="data row2 col31" >0.00</td>
	  <td id="T_a4274_row2_col32" class="data row2 col32" >0.00</td>
	  <td id="T_a4274_row2_col33" class="data row2 col33" >0.00</td>
	  <td id="T_a4274_row2_col34" class="data row2 col34" >0.00</td>
	  <td id="T_a4274_row2_col35" class="data row2 col35" >0.00</td>
	  <td id="T_a4274_row2_col36" class="data row2 col36" >0.00</td>
	  <td id="T_a4274_row2_col37" class="data row2 col37" >0.00</td>
	  <td id="T_a4274_row2_col38" class="data row2 col38" >0.00</td>
	  <td id="T_a4274_row2_col39" class="data row2 col39" >0.00</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_a4274_row3_col0" class="data row3 col0" ></td>
	  <td id="T_a4274_row3_col1" class="data row3 col1" ></td>
	  <td id="T_a4274_row3_col2" class="data row3 col2" ></td>
	  <td id="T_a4274_row3_col3" class="data row3 col3" >133.95</td>
	  <td id="T_a4274_row3_col4" class="data row3 col4" >129.40</td>
	  <td id="T_a4274_row3_col5" class="data row3 col5" >124.30</td>
	  <td id="T_a4274_row3_col6" class="data row3 col6" >118.68</td>
	  <td id="T_a4274_row3_col7" class="data row3 col7" >112.51</td>
	  <td id="T_a4274_row3_col8" class="data row3 col8" >105.82</td>
	  <td id="T_a4274_row3_col9" class="data row3 col9" >98.50</td>
	  <td id="T_a4274_row3_col10" class="data row3 col10" >90.73</td>
	  <td id="T_a4274_row3_col11" class="data row3 col11" >82.52</td>
	  <td id="T_a4274_row3_col12" class="data row3 col12" >74.06</td>
	  <td id="T_a4274_row3_col13" class="data row3 col13" >65.26</td>
	  <td id="T_a4274_row3_col14" class="data row3 col14" >56.43</td>
	  <td id="T_a4274_row3_col15" class="data row3 col15" >47.80</td>
	  <td id="T_a4274_row3_col16" class="data row3 col16" >39.67</td>
	  <td id="T_a4274_row3_col17" class="data row3 col17" >31.87</td>
	  <td id="T_a4274_row3_col18" class="data row3 col18" >24.94</td>
	  <td id="T_a4274_row3_col19" class="data row3 col19" >18.82</td>
	  <td id="T_a4274_row3_col20" class="data row3 col20" >14.00</td>
	  <td id="T_a4274_row3_col21" class="data row3 col21" >9.81</td>
	  <td id="T_a4274_row3_col22" class="data row3 col22" >6.90</td>
	  <td id="T_a4274_row3_col23" class="data row3 col23" >4.26</td>
	  <td id="T_a4274_row3_col24" class="data row3 col24" >2.92</td>
	  <td id="T_a4274_row3_col25" class="data row3 col25" >1.32</td>
	  <td id="T_a4274_row3_col26" class="data row3 col26" >1.07</td>
	  <td id="T_a4274_row3_col27" class="data row3 col27" >0.00</td>
	  <td id="T_a4274_row3_col28" class="data row3 col28" >0.34</td>
	  <td id="T_a4274_row3_col29" class="data row3 col29" >0.00</td>
	  <td id="T_a4274_row3_col30" class="data row3 col30" >0.08</td>
	  <td id="T_a4274_row3_col31" class="data row3 col31" >0.00</td>
	  <td id="T_a4274_row3_col32" class="data row3 col32" >0.01</td>
	  <td id="T_a4274_row3_col33" class="data row3 col33" >0.00</td>
	  <td id="T_a4274_row3_col34" class="data row3 col34" >0.00</td>
	  <td id="T_a4274_row3_col35" class="data row3 col35" >0.00</td>
	  <td id="T_a4274_row3_col36" class="data row3 col36" >0.00</td>
	  <td id="T_a4274_row3_col37" class="data row3 col37" >0.00</td>
	  <td id="T_a4274_row3_col38" class="data row3 col38" >0.00</td>
	  <td id="T_a4274_row3_col39" class="data row3 col39" >0.00</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_a4274_row4_col0" class="data row4 col0" ></td>
	  <td id="T_a4274_row4_col1" class="data row4 col1" ></td>
	  <td id="T_a4274_row4_col2" class="data row4 col2" ></td>
	  <td id="T_a4274_row4_col3" class="data row4 col3" ></td>
	  <td id="T_a4274_row4_col4" class="data row4 col4" >137.46</td>
	  <td id="T_a4274_row4_col5" class="data row4 col5" >133.42</td>
	  <td id="T_a4274_row4_col6" class="data row4 col6" >128.99</td>
	  <td id="T_a4274_row4_col7" class="data row4 col7" >124.11</td>
	  <td id="T_a4274_row4_col8" class="data row4 col8" >118.77</td>
	  <td id="T_a4274_row4_col9" class="data row4 col9" >112.88</td>
	  <td id="T_a4274_row4_col10" class="data row4 col10" >106.51</td>
	  <td id="T_a4274_row4_col11" class="data row4 col11" >99.63</td>
	  <td id="T_a4274_row4_col12" class="data row4 col12" >92.34</td>
	  <td id="T_a4274_row4_col13" class="data row4 col13" >84.51</td>
	  <td id="T_a4274_row4_col14" class="data row4 col14" >76.33</td>
	  <td id="T_a4274_row4_col15" class="data row4 col15" >67.94</td>
	  <td id="T_a4274_row4_col16" class="data row4 col16" >59.54</td>
	  <td id="T_a4274_row4_col17" class="data row4 col17" >51.05</td>
	  <td id="T_a4274_row4_col18" class="data row4 col18" >42.87</td>
	  <td id="T_a4274_row4_col19" class="data row4 col19" >35.14</td>
	  <td id="T_a4274_row4_col20" class="data row4 col20" >28.28</td>
	  <td id="T_a4274_row4_col21" class="data row4 col21" >21.98</td>
	  <td id="T_a4274_row4_col22" class="data row4 col22" >16.76</td>
	  <td id="T_a4274_row4_col23" class="data row4 col23" >12.11</td>
	  <td id="T_a4274_row4_col24" class="data row4 col24" >8.73</td>
	  <td id="T_a4274_row4_col25" class="data row4 col25" >5.70</td>
	  <td id="T_a4274_row4_col26" class="data row4 col26" >3.98</td>
	  <td id="T_a4274_row4_col27" class="data row4 col27" >2.10</td>
	  <td id="T_a4274_row4_col28" class="data row4 col28" >1.59</td>
	  <td id="T_a4274_row4_col29" class="data row4 col29" >0.28</td>
	  <td id="T_a4274_row4_col30" class="data row4 col30" >0.54</td>
	  <td id="T_a4274_row4_col31" class="data row4 col31" >0.00</td>
	  <td id="T_a4274_row4_col32" class="data row4 col32" >0.14</td>
	  <td id="T_a4274_row4_col33" class="data row4 col33" >0.00</td>
	  <td id="T_a4274_row4_col34" class="data row4 col34" >0.03</td>
	  <td id="T_a4274_row4_col35" class="data row4 col35" >0.00</td>
	  <td id="T_a4274_row4_col36" class="data row4 col36" >0.00</td>
	  <td id="T_a4274_row4_col37" class="data row4 col37" >0.00</td>
	  <td id="T_a4274_row4_col38" class="data row4 col38" >0.00</td>
	  <td id="T_a4274_row4_col39" class="data row4 col39" >0.00</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_a4274_row5_col0" class="data row5 col0" ></td>
	  <td id="T_a4274_row5_col1" class="data row5 col1" ></td>
	  <td id="T_a4274_row5_col2" class="data row5 col2" ></td>
	  <td id="T_a4274_row5_col3" class="data row5 col3" ></td>
	  <td id="T_a4274_row5_col4" class="data row5 col4" ></td>
	  <td id="T_a4274_row5_col5" class="data row5 col5" >139.70</td>
	  <td id="T_a4274_row5_col6" class="data row5 col6" >136.18</td>
	  <td id="T_a4274_row5_col7" class="data row5 col7" >132.32</td>
	  <td id="T_a4274_row5_col8" class="data row5 col8" >128.11</td>
	  <td id="T_a4274_row5_col9" class="data row5 col9" >123.48</td>
	  <td id="T_a4274_row5_col10" class="data row5 col10" >118.44</td>
	  <td id="T_a4274_row5_col11" class="data row5 col11" >112.94</td>
	  <td id="T_a4274_row5_col12" class="data row5 col12" >107.03</td>
	  <td id="T_a4274_row5_col13" class="data row5 col13" >100.58</td>
	  <td id="T_a4274_row5_col14" class="data row5 col14" >93.67</td>
	  <td id="T_a4274_row5_col15" class="data row5 col15" >86.37</td>
	  <td id="T_a4274_row5_col16" class="data row5 col16" >78.78</td>
	  <td id="T_a4274_row5_col17" class="data row5 col17" >70.80</td>
	  <td id="T_a4274_row5_col18" class="data row5 col18" >62.70</td>
	  <td id="T_a4274_row5_col19" class="data row5 col19" >54.62</td>
	  <td id="T_a4274_row5_col20" class="data row5 col20" >46.87</td>
	  <td id="T_a4274_row5_col21" class="data row5 col21" >39.33</td>
	  <td id="T_a4274_row5_col22" class="data row5 col22" >32.39</td>
	  <td id="T_a4274_row5_col23" class="data row5 col23" >25.88</td>
	  <td id="T_a4274_row5_col24" class="data row5 col24" >20.33</td>
	  <td id="T_a4274_row5_col25" class="data row5 col25" >15.32</td>
	  <td id="T_a4274_row5_col26" class="data row5 col26" >11.49</td>
	  <td id="T_a4274_row5_col27" class="data row5 col27" >8.03</td>
	  <td id="T_a4274_row5_col28" class="data row5 col28" >5.82</td>
	  <td id="T_a4274_row5_col29" class="data row5 col29" >3.56</td>
	  <td id="T_a4274_row5_col30" class="data row5 col30" >2.62</td>
	  <td id="T_a4274_row5_col31" class="data row5 col31" >1.08</td>
	  <td id="T_a4274_row5_col32" class="data row5 col32" >1.04</td>
	  <td id="T_a4274_row5_col33" class="data row5 col33" >0.00</td>
	  <td id="T_a4274_row5_col34" class="data row5 col34" >0.36</td>
	  <td id="T_a4274_row5_col35" class="data row5 col35" >0.00</td>
	  <td id="T_a4274_row5_col36" class="data row5 col36" >0.14</td>
	  <td id="T_a4274_row5_col37" class="data row5 col37" >0.00</td>
	  <td id="T_a4274_row5_col38" class="data row5 col38" >0.25</td>
	  <td id="T_a4274_row5_col39" class="data row5 col39" >0.55</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_a4274_row6_col0" class="data row6 col0" ></td>
	  <td id="T_a4274_row6_col1" class="data row6 col1" ></td>
	  <td id="T_a4274_row6_col2" class="data row6 col2" ></td>
	  <td id="T_a4274_row6_col3" class="data row6 col3" ></td>
	  <td id="T_a4274_row6_col4" class="data row6 col4" ></td>
	  <td id="T_a4274_row6_col5" class="data row6 col5" ></td>
	  <td id="T_a4274_row6_col6" class="data row6 col6" >141.03</td>
	  <td id="T_a4274_row6_col7" class="data row6 col7" >137.92</td>
	  <td id="T_a4274_row6_col8" class="data row6 col8" >134.55</td>
	  <td id="T_a4274_row6_col9" class="data row6 col9" >130.88</td>
	  <td id="T_a4274_row6_col10" class="data row6 col10" >126.90</td>
	  <td id="T_a4274_row6_col11" class="data row6 col11" >122.57</td>
	  <td id="T_a4274_row6_col12" class="data row6 col12" >117.88</td>
	  <td id="T_a4274_row6_col13" class="data row6 col13" >112.76</td>
	  <td id="T_a4274_row6_col14" class="data row6 col14" >107.21</td>
	  <td id="T_a4274_row6_col15" class="data row6 col15" >101.26</td>
	  <td id="T_a4274_row6_col16" class="data row6 col16" >94.92</td>
	  <td id="T_a4274_row6_col17" class="data row6 col17" >88.13</td>
	  <td id="T_a4274_row6_col18" class="data row6 col18" >80.99</td>
	  <td id="T_a4274_row6_col19" class="data row6 col19" >73.62</td>
	  <td id="T_a4274_row6_col20" class="data row6 col20" >66.19</td>
	  <td id="T_a4274_row6_col21" class="data row6 col21" >58.64</td>
	  <td id="T_a4274_row6_col22" class="data row6 col22" >51.23</td>
	  <td id="T_a4274_row6_col23" class="data row6 col23" >43.91</td>
	  <td id="T_a4274_row6_col24" class="data row6 col24" >37.07</td>
	  <td id="T_a4274_row6_col25" class="data row6 col25" >30.58</td>
	  <td id="T_a4274_row6_col26" class="data row6 col26" >24.91</td>
	  <td id="T_a4274_row6_col27" class="data row6 col27" >19.67</td>
	  <td id="T_a4274_row6_col28" class="data row6 col28" >15.47</td>
	  <td id="T_a4274_row6_col29" class="data row6 col29" >11.59</td>
	  <td id="T_a4274_row6_col30" class="data row6 col30" >8.87</td>
	  <td id="T_a4274_row6_col31" class="data row6 col31" >6.19</td>
	  <td id="T_a4274_row6_col32" class="data row6 col32" >4.76</td>
	  <td id="T_a4274_row6_col33" class="data row6 col33" >2.93</td>
	  <td id="T_a4274_row6_col34" class="data row6 col34" >2.53</td>
	  <td id="T_a4274_row6_col35" class="data row6 col35" >1.19</td>
	  <td id="T_a4274_row6_col36" class="data row6 col36" >1.63</td>
	  <td id="T_a4274_row6_col37" class="data row6 col37" >0.75</td>
	  <td id="T_a4274_row6_col38" class="data row6 col38" >2.91</td>
	  <td id="T_a4274_row6_col39" class="data row6 col39" >9.25</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_a4274_row7_col0" class="data row7 col0" ></td>
	  <td id="T_a4274_row7_col1" class="data row7 col1" ></td>
	  <td id="T_a4274_row7_col2" class="data row7 col2" ></td>
	  <td id="T_a4274_row7_col3" class="data row7 col3" ></td>
	  <td id="T_a4274_row7_col4" class="data row7 col4" ></td>
	  <td id="T_a4274_row7_col5" class="data row7 col5" ></td>
	  <td id="T_a4274_row7_col6" class="data row7 col6" ></td>
	  <td id="T_a4274_row7_col7" class="data row7 col7" >141.67</td>
	  <td id="T_a4274_row7_col8" class="data row7 col8" >138.90</td>
	  <td id="T_a4274_row7_col9" class="data row7 col9" >135.91</td>
	  <td id="T_a4274_row7_col10" class="data row7 col10" >132.70</td>
	  <td id="T_a4274_row7_col11" class="data row7 col11" >129.24</td>
	  <td id="T_a4274_row7_col12" class="data row7 col12" >125.52</td>
	  <td id="T_a4274_row7_col13" class="data row7 col13" >121.46</td>
	  <td id="T_a4274_row7_col14" class="data row7 col14" >117.06</td>
	  <td id="T_a4274_row7_col15" class="data row7 col15" >112.33</td>
	  <td id="T_a4274_row7_col16" class="data row7 col16" >107.25</td>
	  <td id="T_a4274_row7_col17" class="data row7 col17" >101.74</td>
	  <td id="T_a4274_row7_col18" class="data row7 col18" >95.87</td>
	  <td id="T_a4274_row7_col19" class="data row7 col19" >89.68</td>
	  <td id="T_a4274_row7_col20" class="data row7 col20" >83.26</td>
	  <td id="T_a4274_row7_col21" class="data row7 col21" >76.55</td>
	  <td id="T_a4274_row7_col22" class="data row7 col22" >69.69</td>
	  <td id="T_a4274_row7_col23" class="data row7 col23" >62.68</td>
	  <td id="T_a4274_row7_col24" class="data row7 col24" >55.76</td>
	  <td id="T_a4274_row7_col25" class="data row7 col25" >48.89</td>
	  <td id="T_a4274_row7_col26" class="data row7 col26" >42.42</td>
	  <td id="T_a4274_row7_col27" class="data row7 col27" >36.19</td>
	  <td id="T_a4274_row7_col28" class="data row7 col28" >30.63</td>
	  <td id="T_a4274_row7_col29" class="data row7 col29" >25.39</td>
	  <td id="T_a4274_row7_col30" class="data row7 col30" >21.04</td>
	  <td id="T_a4274_row7_col31" class="data row7 col31" >16.99</td>
	  <td id="T_a4274_row7_col32" class="data row7 col32" >14.02</td>
	  <td id="T_a4274_row7_col33" class="data row7 col33" >11.17</td>
	  <td id="T_a4274_row7_col34" class="data row7 col34" >9.60</td>
	  <td id="T_a4274_row7_col35" class="data row7 col35" >7.91</td>
	  <td id="T_a4274_row7_col36" class="data row7 col36" >7.91</td>
	  <td id="T_a4274_row7_col37" class="data row7 col37" >8.04</td>
	  <td id="T_a4274_row7_col38" class="data row7 col38" >12.38</td>
	  <td id="T_a4274_row7_col39" class="data row7 col39" >25.76</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row8" class="row_heading level0 row8" >8</th>
	  <td id="T_a4274_row8_col0" class="data row8 col0" ></td>
	  <td id="T_a4274_row8_col1" class="data row8 col1" ></td>
	  <td id="T_a4274_row8_col2" class="data row8 col2" ></td>
	  <td id="T_a4274_row8_col3" class="data row8 col3" ></td>
	  <td id="T_a4274_row8_col4" class="data row8 col4" ></td>
	  <td id="T_a4274_row8_col5" class="data row8 col5" ></td>
	  <td id="T_a4274_row8_col6" class="data row8 col6" ></td>
	  <td id="T_a4274_row8_col7" class="data row8 col7" ></td>
	  <td id="T_a4274_row8_col8" class="data row8 col8" >141.81</td>
	  <td id="T_a4274_row8_col9" class="data row8 col9" >139.30</td>
	  <td id="T_a4274_row8_col10" class="data row8 col10" >136.63</td>
	  <td id="T_a4274_row8_col11" class="data row8 col11" >133.79</td>
	  <td id="T_a4274_row8_col12" class="data row8 col12" >130.75</td>
	  <td id="T_a4274_row8_col13" class="data row8 col13" >127.48</td>
	  <td id="T_a4274_row8_col14" class="data row8 col14" >123.96</td>
	  <td id="T_a4274_row8_col15" class="data row8 col15" >120.18</td>
	  <td id="T_a4274_row8_col16" class="data row8 col16" >116.13</td>
	  <td id="T_a4274_row8_col17" class="data row8 col17" >111.75</td>
	  <td id="T_a4274_row8_col18" class="data row8 col18" >107.05</td>
	  <td id="T_a4274_row8_col19" class="data row8 col19" >102.05</td>
	  <td id="T_a4274_row8_col20" class="data row8 col20" >96.79</td>
	  <td id="T_a4274_row8_col21" class="data row8 col21" >91.22</td>
	  <td id="T_a4274_row8_col22" class="data row8 col22" >85.41</td>
	  <td id="T_a4274_row8_col23" class="data row8 col23" >79.33</td>
	  <td id="T_a4274_row8_col24" class="data row8 col24" >73.14</td>
	  <td id="T_a4274_row8_col25" class="data row8 col25" >66.82</td>
	  <td id="T_a4274_row8_col26" class="data row8 col26" >60.60</td>
	  <td id="T_a4274_row8_col27" class="data row8 col27" >54.41</td>
	  <td id="T_a4274_row8_col28" class="data row8 col28" >48.53</td>
	  <td id="T_a4274_row8_col29" class="data row8 col29" >42.84</td>
	  <td id="T_a4274_row8_col30" class="data row8 col30" >37.72</td>
	  <td id="T_a4274_row8_col31" class="data row8 col31" >32.91</td>
	  <td id="T_a4274_row8_col32" class="data row8 col32" >28.95</td>
	  <td id="T_a4274_row8_col33" class="data row8 col33" >25.39</td>
	  <td id="T_a4274_row8_col34" class="data row8 col34" >23.01</td>
	  <td id="T_a4274_row8_col35" class="data row8 col35" >21.16</td>
	  <td id="T_a4274_row8_col36" class="data row8 col36" >21.19</td>
	  <td id="T_a4274_row8_col37" class="data row8 col37" >22.69</td>
	  <td id="T_a4274_row8_col38" class="data row8 col38" >29.28</td>
	  <td id="T_a4274_row8_col39" class="data row8 col39" >45.95</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row9" class="row_heading level0 row9" >9</th>
	  <td id="T_a4274_row9_col0" class="data row9 col0" ></td>
	  <td id="T_a4274_row9_col1" class="data row9 col1" ></td>
	  <td id="T_a4274_row9_col2" class="data row9 col2" ></td>
	  <td id="T_a4274_row9_col3" class="data row9 col3" ></td>
	  <td id="T_a4274_row9_col4" class="data row9 col4" ></td>
	  <td id="T_a4274_row9_col5" class="data row9 col5" ></td>
	  <td id="T_a4274_row9_col6" class="data row9 col6" ></td>
	  <td id="T_a4274_row9_col7" class="data row9 col7" ></td>
	  <td id="T_a4274_row9_col8" class="data row9 col8" ></td>
	  <td id="T_a4274_row9_col9" class="data row9 col9" >141.57</td>
	  <td id="T_a4274_row9_col10" class="data row9 col10" >139.27</td>
	  <td id="T_a4274_row9_col11" class="data row9 col11" >136.85</td>
	  <td id="T_a4274_row9_col12" class="data row9 col12" >134.30</td>
	  <td id="T_a4274_row9_col13" class="data row9 col13" >131.58</td>
	  <td id="T_a4274_row9_col14" class="data row9 col14" >128.68</td>
	  <td id="T_a4274_row9_col15" class="data row9 col15" >125.59</td>
	  <td id="T_a4274_row9_col16" class="data row9 col16" >122.31</td>
	  <td id="T_a4274_row9_col17" class="data row9 col17" >118.78</td>
	  <td id="T_a4274_row9_col18" class="data row9 col18" >115.00</td>
	  <td id="T_a4274_row9_col19" class="data row9 col19" >110.99</td>
	  <td id="T_a4274_row9_col20" class="data row9 col20" >106.75</td>
	  <td id="T_a4274_row9_col21" class="data row9 col21" >102.23</td>
	  <td id="T_a4274_row9_col22" class="data row9 col22" >97.48</td>
	  <td id="T_a4274_row9_col23" class="data row9 col23" >92.47</td>
	  <td id="T_a4274_row9_col24" class="data row9 col24" >87.28</td>
	  <td id="T_a4274_row9_col25" class="data row9 col25" >81.90</td>
	  <td id="T_a4274_row9_col26" class="data row9 col26" >76.46</td>
	  <td id="T_a4274_row9_col27" class="data row9 col27" >70.93</td>
	  <td id="T_a4274_row9_col28" class="data row9 col28" >65.52</td>
	  <td id="T_a4274_row9_col29" class="data row9 col29" >60.15</td>
	  <td id="T_a4274_row9_col30" class="data row9 col30" >55.11</td>
	  <td id="T_a4274_row9_col31" class="data row9 col31" >50.29</td>
	  <td id="T_a4274_row9_col32" class="data row9 col32" >46.11</td>
	  <td id="T_a4274_row9_col33" class="data row9 col33" >42.38</td>
	  <td id="T_a4274_row9_col34" class="data row9 col34" >39.72</td>
	  <td id="T_a4274_row9_col35" class="data row9 col35" >37.90</td>
	  <td id="T_a4274_row9_col36" class="data row9 col36" >38.02</td>
	  <td id="T_a4274_row9_col37" class="data row9 col37" >40.20</td>
	  <td id="T_a4274_row9_col38" class="data row9 col38" >47.22</td>
	  <td id="T_a4274_row9_col39" class="data row9 col39" >62.53</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row10" class="row_heading level0 row10" >10</th>
	  <td id="T_a4274_row10_col0" class="data row10 col0" ></td>
	  <td id="T_a4274_row10_col1" class="data row10 col1" ></td>
	  <td id="T_a4274_row10_col2" class="data row10 col2" ></td>
	  <td id="T_a4274_row10_col3" class="data row10 col3" ></td>
	  <td id="T_a4274_row10_col4" class="data row10 col4" ></td>
	  <td id="T_a4274_row10_col5" class="data row10 col5" ></td>
	  <td id="T_a4274_row10_col6" class="data row10 col6" ></td>
	  <td id="T_a4274_row10_col7" class="data row10 col7" ></td>
	  <td id="T_a4274_row10_col8" class="data row10 col8" ></td>
	  <td id="T_a4274_row10_col9" class="data row10 col9" ></td>
	  <td id="T_a4274_row10_col10" class="data row10 col10" >141.05</td>
	  <td id="T_a4274_row10_col11" class="data row10 col11" >138.92</td>
	  <td id="T_a4274_row10_col12" class="data row10 col12" >136.70</td>
	  <td id="T_a4274_row10_col13" class="data row10 col13" >134.36</td>
	  <td id="T_a4274_row10_col14" class="data row10 col14" >131.90</td>
	  <td id="T_a4274_row10_col15" class="data row10 col15" >129.31</td>
	  <td id="T_a4274_row10_col16" class="data row10 col16" >126.57</td>
	  <td id="T_a4274_row10_col17" class="data row10 col17" >123.65</td>
	  <td id="T_a4274_row10_col18" class="data row10 col18" >120.56</td>
	  <td id="T_a4274_row10_col19" class="data row10 col19" >117.29</td>
	  <td id="T_a4274_row10_col20" class="data row10 col20" >113.85</td>
	  <td id="T_a4274_row10_col21" class="data row10 col21" >110.19</td>
	  <td id="T_a4274_row10_col22" class="data row10 col22" >106.34</td>
	  <td id="T_a4274_row10_col23" class="data row10 col23" >102.27</td>
	  <td id="T_a4274_row10_col24" class="data row10 col24" >98.03</td>
	  <td id="T_a4274_row10_col25" class="data row10 col25" >93.61</td>
	  <td id="T_a4274_row10_col26" class="data row10 col26" >89.09</td>
	  <td id="T_a4274_row10_col27" class="data row10 col27" >84.44</td>
	  <td id="T_a4274_row10_col28" class="data row10 col28" >79.81</td>
	  <td id="T_a4274_row10_col29" class="data row10 col29" >75.15</td>
	  <td id="T_a4274_row10_col30" class="data row10 col30" >70.66</td>
	  <td id="T_a4274_row10_col31" class="data row10 col31" >66.31</td>
	  <td id="T_a4274_row10_col32" class="data row10 col32" >62.41</td>
	  <td id="T_a4274_row10_col33" class="data row10 col33" >58.91</td>
	  <td id="T_a4274_row10_col34" class="data row10 col34" >56.29</td>
	  <td id="T_a4274_row10_col35" class="data row10 col35" >54.53</td>
	  <td id="T_a4274_row10_col36" class="data row10 col36" >54.49</td>
	  <td id="T_a4274_row10_col37" class="data row10 col37" >56.47</td>
	  <td id="T_a4274_row10_col38" class="data row10 col38" >62.47</td>
	  <td id="T_a4274_row10_col39" class="data row10 col39" >74.62</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row11" class="row_heading level0 row11" >11</th>
	  <td id="T_a4274_row11_col0" class="data row11 col0" ></td>
	  <td id="T_a4274_row11_col1" class="data row11 col1" ></td>
	  <td id="T_a4274_row11_col2" class="data row11 col2" ></td>
	  <td id="T_a4274_row11_col3" class="data row11 col3" ></td>
	  <td id="T_a4274_row11_col4" class="data row11 col4" ></td>
	  <td id="T_a4274_row11_col5" class="data row11 col5" ></td>
	  <td id="T_a4274_row11_col6" class="data row11 col6" ></td>
	  <td id="T_a4274_row11_col7" class="data row11 col7" ></td>
	  <td id="T_a4274_row11_col8" class="data row11 col8" ></td>
	  <td id="T_a4274_row11_col9" class="data row11 col9" ></td>
	  <td id="T_a4274_row11_col10" class="data row11 col10" ></td>
	  <td id="T_a4274_row11_col11" class="data row11 col11" >140.34</td>
	  <td id="T_a4274_row11_col12" class="data row11 col12" >138.34</td>
	  <td id="T_a4274_row11_col13" class="data row11 col13" >136.26</td>
	  <td id="T_a4274_row11_col14" class="data row11 col14" >134.10</td>
	  <td id="T_a4274_row11_col15" class="data row11 col15" >131.85</td>
	  <td id="T_a4274_row11_col16" class="data row11 col16" >129.49</td>
	  <td id="T_a4274_row11_col17" class="data row11 col17" >127.02</td>
	  <td id="T_a4274_row11_col18" class="data row11 col18" >124.41</td>
	  <td id="T_a4274_row11_col19" class="data row11 col19" >121.68</td>
	  <td id="T_a4274_row11_col20" class="data row11 col20" >118.82</td>
	  <td id="T_a4274_row11_col21" class="data row11 col21" >115.81</td>
	  <td id="T_a4274_row11_col22" class="data row11 col22" >112.65</td>
	  <td id="T_a4274_row11_col23" class="data row11 col23" >109.33</td>
	  <td id="T_a4274_row11_col24" class="data row11 col24" >105.87</td>
	  <td id="T_a4274_row11_col25" class="data row11 col25" >102.27</td>
	  <td id="T_a4274_row11_col26" class="data row11 col26" >98.57</td>
	  <td id="T_a4274_row11_col27" class="data row11 col27" >94.76</td>
	  <td id="T_a4274_row11_col28" class="data row11 col28" >90.92</td>
	  <td id="T_a4274_row11_col29" class="data row11 col29" >87.04</td>
	  <td id="T_a4274_row11_col30" class="data row11 col30" >83.25</td>
	  <td id="T_a4274_row11_col31" class="data row11 col31" >79.55</td>
	  <td id="T_a4274_row11_col32" class="data row11 col32" >76.16</td>
	  <td id="T_a4274_row11_col33" class="data row11 col33" >73.08</td>
	  <td id="T_a4274_row11_col34" class="data row11 col34" >70.67</td>
	  <td id="T_a4274_row11_col35" class="data row11 col35" >68.99</td>
	  <td id="T_a4274_row11_col36" class="data row11 col36" >68.66</td>
	  <td id="T_a4274_row11_col37" class="data row11 col37" >69.98</td>
	  <td id="T_a4274_row11_col38" class="data row11 col38" >74.31</td>
	  <td id="T_a4274_row11_col39" class="data row11 col39" >82.99</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row12" class="row_heading level0 row12" >12</th>
	  <td id="T_a4274_row12_col0" class="data row12 col0" ></td>
	  <td id="T_a4274_row12_col1" class="data row12 col1" ></td>
	  <td id="T_a4274_row12_col2" class="data row12 col2" ></td>
	  <td id="T_a4274_row12_col3" class="data row12 col3" ></td>
	  <td id="T_a4274_row12_col4" class="data row12 col4" ></td>
	  <td id="T_a4274_row12_col5" class="data row12 col5" ></td>
	  <td id="T_a4274_row12_col6" class="data row12 col6" ></td>
	  <td id="T_a4274_row12_col7" class="data row12 col7" ></td>
	  <td id="T_a4274_row12_col8" class="data row12 col8" ></td>
	  <td id="T_a4274_row12_col9" class="data row12 col9" ></td>
	  <td id="T_a4274_row12_col10" class="data row12 col10" ></td>
	  <td id="T_a4274_row12_col11" class="data row12 col11" ></td>
	  <td id="T_a4274_row12_col12" class="data row12 col12" >139.46</td>
	  <td id="T_a4274_row12_col13" class="data row12 col13" >137.56</td>
	  <td id="T_a4274_row12_col14" class="data row12 col14" >135.61</td>
	  <td id="T_a4274_row12_col15" class="data row12 col15" >133.59</td>
	  <td id="T_a4274_row12_col16" class="data row12 col16" >131.50</td>
	  <td id="T_a4274_row12_col17" class="data row12 col17" >129.33</td>
	  <td id="T_a4274_row12_col18" class="data row12 col18" >127.07</td>
	  <td id="T_a4274_row12_col19" class="data row12 col19" >124.72</td>
	  <td id="T_a4274_row12_col20" class="data row12 col20" >122.28</td>
	  <td id="T_a4274_row12_col21" class="data row12 col21" >119.73</td>
	  <td id="T_a4274_row12_col22" class="data row12 col22" >117.08</td>
	  <td id="T_a4274_row12_col23" class="data row12 col23" >114.31</td>
	  <td id="T_a4274_row12_col24" class="data row12 col24" >111.44</td>
	  <td id="T_a4274_row12_col25" class="data row12 col25" >108.46</td>
	  <td id="T_a4274_row12_col26" class="data row12 col26" >105.42</td>
	  <td id="T_a4274_row12_col27" class="data row12 col27" >102.28</td>
	  <td id="T_a4274_row12_col28" class="data row12 col28" >99.13</td>
	  <td id="T_a4274_row12_col29" class="data row12 col29" >95.93</td>
	  <td id="T_a4274_row12_col30" class="data row12 col30" >92.79</td>
	  <td id="T_a4274_row12_col31" class="data row12 col31" >89.72</td>
	  <td id="T_a4274_row12_col32" class="data row12 col32" >86.87</td>
	  <td id="T_a4274_row12_col33" class="data row12 col33" >84.25</td>
	  <td id="T_a4274_row12_col34" class="data row12 col34" >82.14</td>
	  <td id="T_a4274_row12_col35" class="data row12 col35" >80.59</td>
	  <td id="T_a4274_row12_col36" class="data row12 col36" >80.05</td>
	  <td id="T_a4274_row12_col37" class="data row12 col37" >80.73</td>
	  <td id="T_a4274_row12_col38" class="data row12 col38" >83.53</td>
	  <td id="T_a4274_row12_col39" class="data row12 col39" >89.21</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row13" class="row_heading level0 row13" >13</th>
	  <td id="T_a4274_row13_col0" class="data row13 col0" ></td>
	  <td id="T_a4274_row13_col1" class="data row13 col1" ></td>
	  <td id="T_a4274_row13_col2" class="data row13 col2" ></td>
	  <td id="T_a4274_row13_col3" class="data row13 col3" ></td>
	  <td id="T_a4274_row13_col4" class="data row13 col4" ></td>
	  <td id="T_a4274_row13_col5" class="data row13 col5" ></td>
	  <td id="T_a4274_row13_col6" class="data row13 col6" ></td>
	  <td id="T_a4274_row13_col7" class="data row13 col7" ></td>
	  <td id="T_a4274_row13_col8" class="data row13 col8" ></td>
	  <td id="T_a4274_row13_col9" class="data row13 col9" ></td>
	  <td id="T_a4274_row13_col10" class="data row13 col10" ></td>
	  <td id="T_a4274_row13_col11" class="data row13 col11" ></td>
	  <td id="T_a4274_row13_col12" class="data row13 col12" ></td>
	  <td id="T_a4274_row13_col13" class="data row13 col13" >138.45</td>
	  <td id="T_a4274_row13_col14" class="data row13 col14" >136.64</td>
	  <td id="T_a4274_row13_col15" class="data row13 col15" >134.78</td>
	  <td id="T_a4274_row13_col16" class="data row13 col16" >132.87</td>
	  <td id="T_a4274_row13_col17" class="data row13 col17" >130.91</td>
	  <td id="T_a4274_row13_col18" class="data row13 col18" >128.89</td>
	  <td id="T_a4274_row13_col19" class="data row13 col19" >126.80</td>
	  <td id="T_a4274_row13_col20" class="data row13 col20" >124.64</td>
	  <td id="T_a4274_row13_col21" class="data row13 col21" >122.42</td>
	  <td id="T_a4274_row13_col22" class="data row13 col22" >120.12</td>
	  <td id="T_a4274_row13_col23" class="data row13 col23" >117.73</td>
	  <td id="T_a4274_row13_col24" class="data row13 col24" >115.28</td>
	  <td id="T_a4274_row13_col25" class="data row13 col25" >112.75</td>
	  <td id="T_a4274_row13_col26" class="data row13 col26" >110.17</td>
	  <td id="T_a4274_row13_col27" class="data row13 col27" >107.53</td>
	  <td id="T_a4274_row13_col28" class="data row13 col28" >104.88</td>
	  <td id="T_a4274_row13_col29" class="data row13 col29" >102.20</td>
	  <td id="T_a4274_row13_col30" class="data row13 col30" >99.56</td>
	  <td id="T_a4274_row13_col31" class="data row13 col31" >96.97</td>
	  <td id="T_a4274_row13_col32" class="data row13 col32" >94.54</td>
	  <td id="T_a4274_row13_col33" class="data row13 col33" >92.29</td>
	  <td id="T_a4274_row13_col34" class="data row13 col34" >90.41</td>
	  <td id="T_a4274_row13_col35" class="data row13 col35" >88.95</td>
	  <td id="T_a4274_row13_col36" class="data row13 col36" >88.22</td>
	  <td id="T_a4274_row13_col37" class="data row13 col37" >88.38</td>
	  <td id="T_a4274_row13_col38" class="data row13 col38" >89.98</td>
	  <td id="T_a4274_row13_col39" class="data row13 col39" >93.45</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row14" class="row_heading level0 row14" >14</th>
	  <td id="T_a4274_row14_col0" class="data row14 col0" ></td>
	  <td id="T_a4274_row14_col1" class="data row14 col1" ></td>
	  <td id="T_a4274_row14_col2" class="data row14 col2" ></td>
	  <td id="T_a4274_row14_col3" class="data row14 col3" ></td>
	  <td id="T_a4274_row14_col4" class="data row14 col4" ></td>
	  <td id="T_a4274_row14_col5" class="data row14 col5" ></td>
	  <td id="T_a4274_row14_col6" class="data row14 col6" ></td>
	  <td id="T_a4274_row14_col7" class="data row14 col7" ></td>
	  <td id="T_a4274_row14_col8" class="data row14 col8" ></td>
	  <td id="T_a4274_row14_col9" class="data row14 col9" ></td>
	  <td id="T_a4274_row14_col10" class="data row14 col10" ></td>
	  <td id="T_a4274_row14_col11" class="data row14 col11" ></td>
	  <td id="T_a4274_row14_col12" class="data row14 col12" ></td>
	  <td id="T_a4274_row14_col13" class="data row14 col13" ></td>
	  <td id="T_a4274_row14_col14" class="data row14 col14" >137.34</td>
	  <td id="T_a4274_row14_col15" class="data row14 col15" >135.59</td>
	  <td id="T_a4274_row14_col16" class="data row14 col16" >133.81</td>
	  <td id="T_a4274_row14_col17" class="data row14 col17" >131.99</td>
	  <td id="T_a4274_row14_col18" class="data row14 col18" >130.13</td>
	  <td id="T_a4274_row14_col19" class="data row14 col19" >128.22</td>
	  <td id="T_a4274_row14_col20" class="data row14 col20" >126.26</td>
	  <td id="T_a4274_row14_col21" class="data row14 col21" >124.26</td>
	  <td id="T_a4274_row14_col22" class="data row14 col22" >122.20</td>
	  <td id="T_a4274_row14_col23" class="data row14 col23" >120.08</td>
	  <td id="T_a4274_row14_col24" class="data row14 col24" >117.91</td>
	  <td id="T_a4274_row14_col25" class="data row14 col25" >115.69</td>
	  <td id="T_a4274_row14_col26" class="data row14 col26" >113.43</td>
	  <td id="T_a4274_row14_col27" class="data row14 col27" >111.14</td>
	  <td id="T_a4274_row14_col28" class="data row14 col28" >108.83</td>
	  <td id="T_a4274_row14_col29" class="data row14 col29" >106.50</td>
	  <td id="T_a4274_row14_col30" class="data row14 col30" >104.21</td>
	  <td id="T_a4274_row14_col31" class="data row14 col31" >101.96</td>
	  <td id="T_a4274_row14_col32" class="data row14 col32" >99.82</td>
	  <td id="T_a4274_row14_col33" class="data row14 col33" >97.81</td>
	  <td id="T_a4274_row14_col34" class="data row14 col34" >96.07</td>
	  <td id="T_a4274_row14_col35" class="data row14 col35" >94.64</td>
	  <td id="T_a4274_row14_col36" class="data row14 col36" >93.72</td>
	  <td id="T_a4274_row14_col37" class="data row14 col37" >93.43</td>
	  <td id="T_a4274_row14_col38" class="data row14 col38" >94.14</td>
	  <td id="T_a4274_row14_col39" class="data row14 col39" >96.09</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row15" class="row_heading level0 row15" >15</th>
	  <td id="T_a4274_row15_col0" class="data row15 col0" ></td>
	  <td id="T_a4274_row15_col1" class="data row15 col1" ></td>
	  <td id="T_a4274_row15_col2" class="data row15 col2" ></td>
	  <td id="T_a4274_row15_col3" class="data row15 col3" ></td>
	  <td id="T_a4274_row15_col4" class="data row15 col4" ></td>
	  <td id="T_a4274_row15_col5" class="data row15 col5" ></td>
	  <td id="T_a4274_row15_col6" class="data row15 col6" ></td>
	  <td id="T_a4274_row15_col7" class="data row15 col7" ></td>
	  <td id="T_a4274_row15_col8" class="data row15 col8" ></td>
	  <td id="T_a4274_row15_col9" class="data row15 col9" ></td>
	  <td id="T_a4274_row15_col10" class="data row15 col10" ></td>
	  <td id="T_a4274_row15_col11" class="data row15 col11" ></td>
	  <td id="T_a4274_row15_col12" class="data row15 col12" ></td>
	  <td id="T_a4274_row15_col13" class="data row15 col13" ></td>
	  <td id="T_a4274_row15_col14" class="data row15 col14" ></td>
	  <td id="T_a4274_row15_col15" class="data row15 col15" >136.15</td>
	  <td id="T_a4274_row15_col16" class="data row15 col16" >134.46</td>
	  <td id="T_a4274_row15_col17" class="data row15 col17" >132.73</td>
	  <td id="T_a4274_row15_col18" class="data row15 col18" >130.98</td>
	  <td id="T_a4274_row15_col19" class="data row15 col19" >129.20</td>
	  <td id="T_a4274_row15_col20" class="data row15 col20" >127.38</td>
	  <td id="T_a4274_row15_col21" class="data row15 col21" >125.53</td>
	  <td id="T_a4274_row15_col22" class="data row15 col22" >123.64</td>
	  <td id="T_a4274_row15_col23" class="data row15 col23" >121.71</td>
	  <td id="T_a4274_row15_col24" class="data row15 col24" >119.74</td>
	  <td id="T_a4274_row15_col25" class="data row15 col25" >117.73</td>
	  <td id="T_a4274_row15_col26" class="data row15 col26" >115.70</td>
	  <td id="T_a4274_row15_col27" class="data row15 col27" >113.64</td>
	  <td id="T_a4274_row15_col28" class="data row15 col28" >111.57</td>
	  <td id="T_a4274_row15_col29" class="data row15 col29" >109.49</td>
	  <td id="T_a4274_row15_col30" class="data row15 col30" >107.43</td>
	  <td id="T_a4274_row15_col31" class="data row15 col31" >105.40</td>
	  <td id="T_a4274_row15_col32" class="data row15 col32" >103.46</td>
	  <td id="T_a4274_row15_col33" class="data row15 col33" >101.63</td>
	  <td id="T_a4274_row15_col34" class="data row15 col34" >99.98</td>
	  <td id="T_a4274_row15_col35" class="data row15 col35" >98.55</td>
	  <td id="T_a4274_row15_col36" class="data row15 col36" >97.48</td>
	  <td id="T_a4274_row15_col37" class="data row15 col37" >96.85</td>
	  <td id="T_a4274_row15_col38" class="data row15 col38" >96.91</td>
	  <td id="T_a4274_row15_col39" class="data row15 col39" >97.81</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row16" class="row_heading level0 row16" >16</th>
	  <td id="T_a4274_row16_col0" class="data row16 col0" ></td>
	  <td id="T_a4274_row16_col1" class="data row16 col1" ></td>
	  <td id="T_a4274_row16_col2" class="data row16 col2" ></td>
	  <td id="T_a4274_row16_col3" class="data row16 col3" ></td>
	  <td id="T_a4274_row16_col4" class="data row16 col4" ></td>
	  <td id="T_a4274_row16_col5" class="data row16 col5" ></td>
	  <td id="T_a4274_row16_col6" class="data row16 col6" ></td>
	  <td id="T_a4274_row16_col7" class="data row16 col7" ></td>
	  <td id="T_a4274_row16_col8" class="data row16 col8" ></td>
	  <td id="T_a4274_row16_col9" class="data row16 col9" ></td>
	  <td id="T_a4274_row16_col10" class="data row16 col10" ></td>
	  <td id="T_a4274_row16_col11" class="data row16 col11" ></td>
	  <td id="T_a4274_row16_col12" class="data row16 col12" ></td>
	  <td id="T_a4274_row16_col13" class="data row16 col13" ></td>
	  <td id="T_a4274_row16_col14" class="data row16 col14" ></td>
	  <td id="T_a4274_row16_col15" class="data row16 col15" ></td>
	  <td id="T_a4274_row16_col16" class="data row16 col16" >134.90</td>
	  <td id="T_a4274_row16_col17" class="data row16 col17" >133.25</td>
	  <td id="T_a4274_row16_col18" class="data row16 col18" >131.57</td>
	  <td id="T_a4274_row16_col19" class="data row16 col19" >129.88</td>
	  <td id="T_a4274_row16_col20" class="data row16 col20" >128.16</td>
	  <td id="T_a4274_row16_col21" class="data row16 col21" >126.41</td>
	  <td id="T_a4274_row16_col22" class="data row16 col22" >124.64</td>
	  <td id="T_a4274_row16_col23" class="data row16 col23" >122.84</td>
	  <td id="T_a4274_row16_col24" class="data row16 col24" >121.01</td>
	  <td id="T_a4274_row16_col25" class="data row16 col25" >119.16</td>
	  <td id="T_a4274_row16_col26" class="data row16 col26" >117.28</td>
	  <td id="T_a4274_row16_col27" class="data row16 col27" >115.39</td>
	  <td id="T_a4274_row16_col28" class="data row16 col28" >113.48</td>
	  <td id="T_a4274_row16_col29" class="data row16 col29" >111.57</td>
	  <td id="T_a4274_row16_col30" class="data row16 col30" >109.68</td>
	  <td id="T_a4274_row16_col31" class="data row16 col31" >107.81</td>
	  <td id="T_a4274_row16_col32" class="data row16 col32" >106.00</td>
	  <td id="T_a4274_row16_col33" class="data row16 col33" >104.27</td>
	  <td id="T_a4274_row16_col34" class="data row16 col34" >102.67</td>
	  <td id="T_a4274_row16_col35" class="data row16 col35" >101.24</td>
	  <td id="T_a4274_row16_col36" class="data row16 col36" >100.07</td>
	  <td id="T_a4274_row16_col37" class="data row16 col37" >99.20</td>
	  <td id="T_a4274_row16_col38" class="data row16 col38" >98.81</td>
	  <td id="T_a4274_row16_col39" class="data row16 col39" >98.98</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row17" class="row_heading level0 row17" >17</th>
	  <td id="T_a4274_row17_col0" class="data row17 col0" ></td>
	  <td id="T_a4274_row17_col1" class="data row17 col1" ></td>
	  <td id="T_a4274_row17_col2" class="data row17 col2" ></td>
	  <td id="T_a4274_row17_col3" class="data row17 col3" ></td>
	  <td id="T_a4274_row17_col4" class="data row17 col4" ></td>
	  <td id="T_a4274_row17_col5" class="data row17 col5" ></td>
	  <td id="T_a4274_row17_col6" class="data row17 col6" ></td>
	  <td id="T_a4274_row17_col7" class="data row17 col7" ></td>
	  <td id="T_a4274_row17_col8" class="data row17 col8" ></td>
	  <td id="T_a4274_row17_col9" class="data row17 col9" ></td>
	  <td id="T_a4274_row17_col10" class="data row17 col10" ></td>
	  <td id="T_a4274_row17_col11" class="data row17 col11" ></td>
	  <td id="T_a4274_row17_col12" class="data row17 col12" ></td>
	  <td id="T_a4274_row17_col13" class="data row17 col13" ></td>
	  <td id="T_a4274_row17_col14" class="data row17 col14" ></td>
	  <td id="T_a4274_row17_col15" class="data row17 col15" ></td>
	  <td id="T_a4274_row17_col16" class="data row17 col16" ></td>
	  <td id="T_a4274_row17_col17" class="data row17 col17" >133.60</td>
	  <td id="T_a4274_row17_col18" class="data row17 col18" >131.98</td>
	  <td id="T_a4274_row17_col19" class="data row17 col19" >130.34</td>
	  <td id="T_a4274_row17_col20" class="data row17 col20" >128.69</td>
	  <td id="T_a4274_row17_col21" class="data row17 col21" >127.02</td>
	  <td id="T_a4274_row17_col22" class="data row17 col22" >125.33</td>
	  <td id="T_a4274_row17_col23" class="data row17 col23" >123.62</td>
	  <td id="T_a4274_row17_col24" class="data row17 col24" >121.90</td>
	  <td id="T_a4274_row17_col25" class="data row17 col25" >120.15</td>
	  <td id="T_a4274_row17_col26" class="data row17 col26" >118.39</td>
	  <td id="T_a4274_row17_col27" class="data row17 col27" >116.61</td>
	  <td id="T_a4274_row17_col28" class="data row17 col28" >114.82</td>
	  <td id="T_a4274_row17_col29" class="data row17 col29" >113.03</td>
	  <td id="T_a4274_row17_col30" class="data row17 col30" >111.25</td>
	  <td id="T_a4274_row17_col31" class="data row17 col31" >109.49</td>
	  <td id="T_a4274_row17_col32" class="data row17 col32" >107.76</td>
	  <td id="T_a4274_row17_col33" class="data row17 col33" >106.10</td>
	  <td id="T_a4274_row17_col34" class="data row17 col34" >104.53</td>
	  <td id="T_a4274_row17_col35" class="data row17 col35" >103.08</td>
	  <td id="T_a4274_row17_col36" class="data row17 col36" >101.82</td>
	  <td id="T_a4274_row17_col37" class="data row17 col37" >100.78</td>
	  <td id="T_a4274_row17_col38" class="data row17 col38" >100.07</td>
	  <td id="T_a4274_row17_col39" class="data row17 col39" >99.75</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row18" class="row_heading level0 row18" >18</th>
	  <td id="T_a4274_row18_col0" class="data row18 col0" ></td>
	  <td id="T_a4274_row18_col1" class="data row18 col1" ></td>
	  <td id="T_a4274_row18_col2" class="data row18 col2" ></td>
	  <td id="T_a4274_row18_col3" class="data row18 col3" ></td>
	  <td id="T_a4274_row18_col4" class="data row18 col4" ></td>
	  <td id="T_a4274_row18_col5" class="data row18 col5" ></td>
	  <td id="T_a4274_row18_col6" class="data row18 col6" ></td>
	  <td id="T_a4274_row18_col7" class="data row18 col7" ></td>
	  <td id="T_a4274_row18_col8" class="data row18 col8" ></td>
	  <td id="T_a4274_row18_col9" class="data row18 col9" ></td>
	  <td id="T_a4274_row18_col10" class="data row18 col10" ></td>
	  <td id="T_a4274_row18_col11" class="data row18 col11" ></td>
	  <td id="T_a4274_row18_col12" class="data row18 col12" ></td>
	  <td id="T_a4274_row18_col13" class="data row18 col13" ></td>
	  <td id="T_a4274_row18_col14" class="data row18 col14" ></td>
	  <td id="T_a4274_row18_col15" class="data row18 col15" ></td>
	  <td id="T_a4274_row18_col16" class="data row18 col16" ></td>
	  <td id="T_a4274_row18_col17" class="data row18 col17" ></td>
	  <td id="T_a4274_row18_col18" class="data row18 col18" >132.27</td>
	  <td id="T_a4274_row18_col19" class="data row18 col19" >130.67</td>
	  <td id="T_a4274_row18_col20" class="data row18 col20" >129.06</td>
	  <td id="T_a4274_row18_col21" class="data row18 col21" >127.45</td>
	  <td id="T_a4274_row18_col22" class="data row18 col22" >125.81</td>
	  <td id="T_a4274_row18_col23" class="data row18 col23" >124.17</td>
	  <td id="T_a4274_row18_col24" class="data row18 col24" >122.51</td>
	  <td id="T_a4274_row18_col25" class="data row18 col25" >120.84</td>
	  <td id="T_a4274_row18_col26" class="data row18 col26" >119.16</td>
	  <td id="T_a4274_row18_col27" class="data row18 col27" >117.47</td>
	  <td id="T_a4274_row18_col28" class="data row18 col28" >115.77</td>
	  <td id="T_a4274_row18_col29" class="data row18 col29" >114.06</td>
	  <td id="T_a4274_row18_col30" class="data row18 col30" >112.36</td>
	  <td id="T_a4274_row18_col31" class="data row18 col31" >110.67</td>
	  <td id="T_a4274_row18_col32" class="data row18 col32" >109.01</td>
	  <td id="T_a4274_row18_col33" class="data row18 col33" >107.39</td>
	  <td id="T_a4274_row18_col34" class="data row18 col34" >105.83</td>
	  <td id="T_a4274_row18_col35" class="data row18 col35" >104.36</td>
	  <td id="T_a4274_row18_col36" class="data row18 col36" >103.03</td>
	  <td id="T_a4274_row18_col37" class="data row18 col37" >101.85</td>
	  <td id="T_a4274_row18_col38" class="data row18 col38" >100.92</td>
	  <td id="T_a4274_row18_col39" class="data row18 col39" >100.26</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row19" class="row_heading level0 row19" >19</th>
	  <td id="T_a4274_row19_col0" class="data row19 col0" ></td>
	  <td id="T_a4274_row19_col1" class="data row19 col1" ></td>
	  <td id="T_a4274_row19_col2" class="data row19 col2" ></td>
	  <td id="T_a4274_row19_col3" class="data row19 col3" ></td>
	  <td id="T_a4274_row19_col4" class="data row19 col4" ></td>
	  <td id="T_a4274_row19_col5" class="data row19 col5" ></td>
	  <td id="T_a4274_row19_col6" class="data row19 col6" ></td>
	  <td id="T_a4274_row19_col7" class="data row19 col7" ></td>
	  <td id="T_a4274_row19_col8" class="data row19 col8" ></td>
	  <td id="T_a4274_row19_col9" class="data row19 col9" ></td>
	  <td id="T_a4274_row19_col10" class="data row19 col10" ></td>
	  <td id="T_a4274_row19_col11" class="data row19 col11" ></td>
	  <td id="T_a4274_row19_col12" class="data row19 col12" ></td>
	  <td id="T_a4274_row19_col13" class="data row19 col13" ></td>
	  <td id="T_a4274_row19_col14" class="data row19 col14" ></td>
	  <td id="T_a4274_row19_col15" class="data row19 col15" ></td>
	  <td id="T_a4274_row19_col16" class="data row19 col16" ></td>
	  <td id="T_a4274_row19_col17" class="data row19 col17" ></td>
	  <td id="T_a4274_row19_col18" class="data row19 col18" ></td>
	  <td id="T_a4274_row19_col19" class="data row19 col19" >130.90</td>
	  <td id="T_a4274_row19_col20" class="data row19 col20" >129.32</td>
	  <td id="T_a4274_row19_col21" class="data row19 col21" >127.74</td>
	  <td id="T_a4274_row19_col22" class="data row19 col22" >126.15</td>
	  <td id="T_a4274_row19_col23" class="data row19 col23" >124.55</td>
	  <td id="T_a4274_row19_col24" class="data row19 col24" >122.94</td>
	  <td id="T_a4274_row19_col25" class="data row19 col25" >121.32</td>
	  <td id="T_a4274_row19_col26" class="data row19 col26" >119.70</td>
	  <td id="T_a4274_row19_col27" class="data row19 col27" >118.07</td>
	  <td id="T_a4274_row19_col28" class="data row19 col28" >116.43</td>
	  <td id="T_a4274_row19_col29" class="data row19 col29" >114.79</td>
	  <td id="T_a4274_row19_col30" class="data row19 col30" >113.15</td>
	  <td id="T_a4274_row19_col31" class="data row19 col31" >111.52</td>
	  <td id="T_a4274_row19_col32" class="data row19 col32" >109.91</td>
	  <td id="T_a4274_row19_col33" class="data row19 col33" >108.32</td>
	  <td id="T_a4274_row19_col34" class="data row19 col34" >106.78</td>
	  <td id="T_a4274_row19_col35" class="data row19 col35" >105.30</td>
	  <td id="T_a4274_row19_col36" class="data row19 col36" >103.91</td>
	  <td id="T_a4274_row19_col37" class="data row19 col37" >102.63</td>
	  <td id="T_a4274_row19_col38" class="data row19 col38" >101.52</td>
	  <td id="T_a4274_row19_col39" class="data row19 col39" >100.62</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row20" class="row_heading level0 row20" >20</th>
	  <td id="T_a4274_row20_col0" class="data row20 col0" ></td>
	  <td id="T_a4274_row20_col1" class="data row20 col1" ></td>
	  <td id="T_a4274_row20_col2" class="data row20 col2" ></td>
	  <td id="T_a4274_row20_col3" class="data row20 col3" ></td>
	  <td id="T_a4274_row20_col4" class="data row20 col4" ></td>
	  <td id="T_a4274_row20_col5" class="data row20 col5" ></td>
	  <td id="T_a4274_row20_col6" class="data row20 col6" ></td>
	  <td id="T_a4274_row20_col7" class="data row20 col7" ></td>
	  <td id="T_a4274_row20_col8" class="data row20 col8" ></td>
	  <td id="T_a4274_row20_col9" class="data row20 col9" ></td>
	  <td id="T_a4274_row20_col10" class="data row20 col10" ></td>
	  <td id="T_a4274_row20_col11" class="data row20 col11" ></td>
	  <td id="T_a4274_row20_col12" class="data row20 col12" ></td>
	  <td id="T_a4274_row20_col13" class="data row20 col13" ></td>
	  <td id="T_a4274_row20_col14" class="data row20 col14" ></td>
	  <td id="T_a4274_row20_col15" class="data row20 col15" ></td>
	  <td id="T_a4274_row20_col16" class="data row20 col16" ></td>
	  <td id="T_a4274_row20_col17" class="data row20 col17" ></td>
	  <td id="T_a4274_row20_col18" class="data row20 col18" ></td>
	  <td id="T_a4274_row20_col19" class="data row20 col19" ></td>
	  <td id="T_a4274_row20_col20" class="data row20 col20" >129.51</td>
	  <td id="T_a4274_row20_col21" class="data row20 col21" >127.95</td>
	  <td id="T_a4274_row20_col22" class="data row20 col22" >126.39</td>
	  <td id="T_a4274_row20_col23" class="data row20 col23" >124.82</td>
	  <td id="T_a4274_row20_col24" class="data row20 col24" >123.24</td>
	  <td id="T_a4274_row20_col25" class="data row20 col25" >121.66</td>
	  <td id="T_a4274_row20_col26" class="data row20 col26" >120.07</td>
	  <td id="T_a4274_row20_col27" class="data row20 col27" >118.48</td>
	  <td id="T_a4274_row20_col28" class="data row20 col28" >116.89</td>
	  <td id="T_a4274_row20_col29" class="data row20 col29" >115.30</td>
	  <td id="T_a4274_row20_col30" class="data row20 col30" >113.71</td>
	  <td id="T_a4274_row20_col31" class="data row20 col31" >112.12</td>
	  <td id="T_a4274_row20_col32" class="data row20 col32" >110.54</td>
	  <td id="T_a4274_row20_col33" class="data row20 col33" >108.99</td>
	  <td id="T_a4274_row20_col34" class="data row20 col34" >107.46</td>
	  <td id="T_a4274_row20_col35" class="data row20 col35" >105.97</td>
	  <td id="T_a4274_row20_col36" class="data row20 col36" >104.55</td>
	  <td id="T_a4274_row20_col37" class="data row20 col37" >103.20</td>
	  <td id="T_a4274_row20_col38" class="data row20 col38" >101.97</td>
	  <td id="T_a4274_row20_col39" class="data row20 col39" >100.89</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row21" class="row_heading level0 row21" >21</th>
	  <td id="T_a4274_row21_col0" class="data row21 col0" ></td>
	  <td id="T_a4274_row21_col1" class="data row21 col1" ></td>
	  <td id="T_a4274_row21_col2" class="data row21 col2" ></td>
	  <td id="T_a4274_row21_col3" class="data row21 col3" ></td>
	  <td id="T_a4274_row21_col4" class="data row21 col4" ></td>
	  <td id="T_a4274_row21_col5" class="data row21 col5" ></td>
	  <td id="T_a4274_row21_col6" class="data row21 col6" ></td>
	  <td id="T_a4274_row21_col7" class="data row21 col7" ></td>
	  <td id="T_a4274_row21_col8" class="data row21 col8" ></td>
	  <td id="T_a4274_row21_col9" class="data row21 col9" ></td>
	  <td id="T_a4274_row21_col10" class="data row21 col10" ></td>
	  <td id="T_a4274_row21_col11" class="data row21 col11" ></td>
	  <td id="T_a4274_row21_col12" class="data row21 col12" ></td>
	  <td id="T_a4274_row21_col13" class="data row21 col13" ></td>
	  <td id="T_a4274_row21_col14" class="data row21 col14" ></td>
	  <td id="T_a4274_row21_col15" class="data row21 col15" ></td>
	  <td id="T_a4274_row21_col16" class="data row21 col16" ></td>
	  <td id="T_a4274_row21_col17" class="data row21 col17" ></td>
	  <td id="T_a4274_row21_col18" class="data row21 col18" ></td>
	  <td id="T_a4274_row21_col19" class="data row21 col19" ></td>
	  <td id="T_a4274_row21_col20" class="data row21 col20" ></td>
	  <td id="T_a4274_row21_col21" class="data row21 col21" >128.10</td>
	  <td id="T_a4274_row21_col22" class="data row21 col22" >126.55</td>
	  <td id="T_a4274_row21_col23" class="data row21 col23" >125.00</td>
	  <td id="T_a4274_row21_col24" class="data row21 col24" >123.45</td>
	  <td id="T_a4274_row21_col25" class="data row21 col25" >121.89</td>
	  <td id="T_a4274_row21_col26" class="data row21 col26" >120.33</td>
	  <td id="T_a4274_row21_col27" class="data row21 col27" >118.77</td>
	  <td id="T_a4274_row21_col28" class="data row21 col28" >117.21</td>
	  <td id="T_a4274_row21_col29" class="data row21 col29" >115.64</td>
	  <td id="T_a4274_row21_col30" class="data row21 col30" >114.08</td>
	  <td id="T_a4274_row21_col31" class="data row21 col31" >112.53</td>
	  <td id="T_a4274_row21_col32" class="data row21 col32" >110.98</td>
	  <td id="T_a4274_row21_col33" class="data row21 col33" >109.45</td>
	  <td id="T_a4274_row21_col34" class="data row21 col34" >107.93</td>
	  <td id="T_a4274_row21_col35" class="data row21 col35" >106.45</td>
	  <td id="T_a4274_row21_col36" class="data row21 col36" >105.00</td>
	  <td id="T_a4274_row21_col37" class="data row21 col37" >103.61</td>
	  <td id="T_a4274_row21_col38" class="data row21 col38" >102.30</td>
	  <td id="T_a4274_row21_col39" class="data row21 col39" >101.08</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row22" class="row_heading level0 row22" >22</th>
	  <td id="T_a4274_row22_col0" class="data row22 col0" ></td>
	  <td id="T_a4274_row22_col1" class="data row22 col1" ></td>
	  <td id="T_a4274_row22_col2" class="data row22 col2" ></td>
	  <td id="T_a4274_row22_col3" class="data row22 col3" ></td>
	  <td id="T_a4274_row22_col4" class="data row22 col4" ></td>
	  <td id="T_a4274_row22_col5" class="data row22 col5" ></td>
	  <td id="T_a4274_row22_col6" class="data row22 col6" ></td>
	  <td id="T_a4274_row22_col7" class="data row22 col7" ></td>
	  <td id="T_a4274_row22_col8" class="data row22 col8" ></td>
	  <td id="T_a4274_row22_col9" class="data row22 col9" ></td>
	  <td id="T_a4274_row22_col10" class="data row22 col10" ></td>
	  <td id="T_a4274_row22_col11" class="data row22 col11" ></td>
	  <td id="T_a4274_row22_col12" class="data row22 col12" ></td>
	  <td id="T_a4274_row22_col13" class="data row22 col13" ></td>
	  <td id="T_a4274_row22_col14" class="data row22 col14" ></td>
	  <td id="T_a4274_row22_col15" class="data row22 col15" ></td>
	  <td id="T_a4274_row22_col16" class="data row22 col16" ></td>
	  <td id="T_a4274_row22_col17" class="data row22 col17" ></td>
	  <td id="T_a4274_row22_col18" class="data row22 col18" ></td>
	  <td id="T_a4274_row22_col19" class="data row22 col19" ></td>
	  <td id="T_a4274_row22_col20" class="data row22 col20" ></td>
	  <td id="T_a4274_row22_col21" class="data row22 col21" ></td>
	  <td id="T_a4274_row22_col22" class="data row22 col22" >126.67</td>
	  <td id="T_a4274_row22_col23" class="data row22 col23" >125.13</td>
	  <td id="T_a4274_row22_col24" class="data row22 col24" >123.59</td>
	  <td id="T_a4274_row22_col25" class="data row22 col25" >122.05</td>
	  <td id="T_a4274_row22_col26" class="data row22 col26" >120.51</td>
	  <td id="T_a4274_row22_col27" class="data row22 col27" >118.97</td>
	  <td id="T_a4274_row22_col28" class="data row22 col28" >117.42</td>
	  <td id="T_a4274_row22_col29" class="data row22 col29" >115.88</td>
	  <td id="T_a4274_row22_col30" class="data row22 col30" >114.34</td>
	  <td id="T_a4274_row22_col31" class="data row22 col31" >112.80</td>
	  <td id="T_a4274_row22_col32" class="data row22 col32" >111.27</td>
	  <td id="T_a4274_row22_col33" class="data row22 col33" >109.75</td>
	  <td id="T_a4274_row22_col34" class="data row22 col34" >108.25</td>
	  <td id="T_a4274_row22_col35" class="data row22 col35" >106.76</td>
	  <td id="T_a4274_row22_col36" class="data row22 col36" >105.30</td>
	  <td id="T_a4274_row22_col37" class="data row22 col37" >103.88</td>
	  <td id="T_a4274_row22_col38" class="data row22 col38" >102.52</td>
	  <td id="T_a4274_row22_col39" class="data row22 col39" >101.21</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row23" class="row_heading level0 row23" >23</th>
	  <td id="T_a4274_row23_col0" class="data row23 col0" ></td>
	  <td id="T_a4274_row23_col1" class="data row23 col1" ></td>
	  <td id="T_a4274_row23_col2" class="data row23 col2" ></td>
	  <td id="T_a4274_row23_col3" class="data row23 col3" ></td>
	  <td id="T_a4274_row23_col4" class="data row23 col4" ></td>
	  <td id="T_a4274_row23_col5" class="data row23 col5" ></td>
	  <td id="T_a4274_row23_col6" class="data row23 col6" ></td>
	  <td id="T_a4274_row23_col7" class="data row23 col7" ></td>
	  <td id="T_a4274_row23_col8" class="data row23 col8" ></td>
	  <td id="T_a4274_row23_col9" class="data row23 col9" ></td>
	  <td id="T_a4274_row23_col10" class="data row23 col10" ></td>
	  <td id="T_a4274_row23_col11" class="data row23 col11" ></td>
	  <td id="T_a4274_row23_col12" class="data row23 col12" ></td>
	  <td id="T_a4274_row23_col13" class="data row23 col13" ></td>
	  <td id="T_a4274_row23_col14" class="data row23 col14" ></td>
	  <td id="T_a4274_row23_col15" class="data row23 col15" ></td>
	  <td id="T_a4274_row23_col16" class="data row23 col16" ></td>
	  <td id="T_a4274_row23_col17" class="data row23 col17" ></td>
	  <td id="T_a4274_row23_col18" class="data row23 col18" ></td>
	  <td id="T_a4274_row23_col19" class="data row23 col19" ></td>
	  <td id="T_a4274_row23_col20" class="data row23 col20" ></td>
	  <td id="T_a4274_row23_col21" class="data row23 col21" ></td>
	  <td id="T_a4274_row23_col22" class="data row23 col22" ></td>
	  <td id="T_a4274_row23_col23" class="data row23 col23" >125.23</td>
	  <td id="T_a4274_row23_col24" class="data row23 col24" >123.70</td>
	  <td id="T_a4274_row23_col25" class="data row23 col25" >122.17</td>
	  <td id="T_a4274_row23_col26" class="data row23 col26" >120.64</td>
	  <td id="T_a4274_row23_col27" class="data row23 col27" >119.10</td>
	  <td id="T_a4274_row23_col28" class="data row23 col28" >117.57</td>
	  <td id="T_a4274_row23_col29" class="data row23 col29" >116.04</td>
	  <td id="T_a4274_row23_col30" class="data row23 col30" >114.51</td>
	  <td id="T_a4274_row23_col31" class="data row23 col31" >112.99</td>
	  <td id="T_a4274_row23_col32" class="data row23 col32" >111.47</td>
	  <td id="T_a4274_row23_col33" class="data row23 col33" >109.95</td>
	  <td id="T_a4274_row23_col34" class="data row23 col34" >108.45</td>
	  <td id="T_a4274_row23_col35" class="data row23 col35" >106.97</td>
	  <td id="T_a4274_row23_col36" class="data row23 col36" >105.50</td>
	  <td id="T_a4274_row23_col37" class="data row23 col37" >104.06</td>
	  <td id="T_a4274_row23_col38" class="data row23 col38" >102.66</td>
	  <td id="T_a4274_row23_col39" class="data row23 col39" >101.30</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row24" class="row_heading level0 row24" >24</th>
	  <td id="T_a4274_row24_col0" class="data row24 col0" ></td>
	  <td id="T_a4274_row24_col1" class="data row24 col1" ></td>
	  <td id="T_a4274_row24_col2" class="data row24 col2" ></td>
	  <td id="T_a4274_row24_col3" class="data row24 col3" ></td>
	  <td id="T_a4274_row24_col4" class="data row24 col4" ></td>
	  <td id="T_a4274_row24_col5" class="data row24 col5" ></td>
	  <td id="T_a4274_row24_col6" class="data row24 col6" ></td>
	  <td id="T_a4274_row24_col7" class="data row24 col7" ></td>
	  <td id="T_a4274_row24_col8" class="data row24 col8" ></td>
	  <td id="T_a4274_row24_col9" class="data row24 col9" ></td>
	  <td id="T_a4274_row24_col10" class="data row24 col10" ></td>
	  <td id="T_a4274_row24_col11" class="data row24 col11" ></td>
	  <td id="T_a4274_row24_col12" class="data row24 col12" ></td>
	  <td id="T_a4274_row24_col13" class="data row24 col13" ></td>
	  <td id="T_a4274_row24_col14" class="data row24 col14" ></td>
	  <td id="T_a4274_row24_col15" class="data row24 col15" ></td>
	  <td id="T_a4274_row24_col16" class="data row24 col16" ></td>
	  <td id="T_a4274_row24_col17" class="data row24 col17" ></td>
	  <td id="T_a4274_row24_col18" class="data row24 col18" ></td>
	  <td id="T_a4274_row24_col19" class="data row24 col19" ></td>
	  <td id="T_a4274_row24_col20" class="data row24 col20" ></td>
	  <td id="T_a4274_row24_col21" class="data row24 col21" ></td>
	  <td id="T_a4274_row24_col22" class="data row24 col22" ></td>
	  <td id="T_a4274_row24_col23" class="data row24 col23" ></td>
	  <td id="T_a4274_row24_col24" class="data row24 col24" >123.77</td>
	  <td id="T_a4274_row24_col25" class="data row24 col25" >122.25</td>
	  <td id="T_a4274_row24_col26" class="data row24 col26" >120.73</td>
	  <td id="T_a4274_row24_col27" class="data row24 col27" >119.20</td>
	  <td id="T_a4274_row24_col28" class="data row24 col28" >117.68</td>
	  <td id="T_a4274_row24_col29" class="data row24 col29" >116.16</td>
	  <td id="T_a4274_row24_col30" class="data row24 col30" >114.63</td>
	  <td id="T_a4274_row24_col31" class="data row24 col31" >113.11</td>
	  <td id="T_a4274_row24_col32" class="data row24 col32" >111.60</td>
	  <td id="T_a4274_row24_col33" class="data row24 col33" >110.09</td>
	  <td id="T_a4274_row24_col34" class="data row24 col34" >108.59</td>
	  <td id="T_a4274_row24_col35" class="data row24 col35" >107.10</td>
	  <td id="T_a4274_row24_col36" class="data row24 col36" >105.63</td>
	  <td id="T_a4274_row24_col37" class="data row24 col37" >104.18</td>
	  <td id="T_a4274_row24_col38" class="data row24 col38" >102.75</td>
	  <td id="T_a4274_row24_col39" class="data row24 col39" >101.35</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row25" class="row_heading level0 row25" >25</th>
	  <td id="T_a4274_row25_col0" class="data row25 col0" ></td>
	  <td id="T_a4274_row25_col1" class="data row25 col1" ></td>
	  <td id="T_a4274_row25_col2" class="data row25 col2" ></td>
	  <td id="T_a4274_row25_col3" class="data row25 col3" ></td>
	  <td id="T_a4274_row25_col4" class="data row25 col4" ></td>
	  <td id="T_a4274_row25_col5" class="data row25 col5" ></td>
	  <td id="T_a4274_row25_col6" class="data row25 col6" ></td>
	  <td id="T_a4274_row25_col7" class="data row25 col7" ></td>
	  <td id="T_a4274_row25_col8" class="data row25 col8" ></td>
	  <td id="T_a4274_row25_col9" class="data row25 col9" ></td>
	  <td id="T_a4274_row25_col10" class="data row25 col10" ></td>
	  <td id="T_a4274_row25_col11" class="data row25 col11" ></td>
	  <td id="T_a4274_row25_col12" class="data row25 col12" ></td>
	  <td id="T_a4274_row25_col13" class="data row25 col13" ></td>
	  <td id="T_a4274_row25_col14" class="data row25 col14" ></td>
	  <td id="T_a4274_row25_col15" class="data row25 col15" ></td>
	  <td id="T_a4274_row25_col16" class="data row25 col16" ></td>
	  <td id="T_a4274_row25_col17" class="data row25 col17" ></td>
	  <td id="T_a4274_row25_col18" class="data row25 col18" ></td>
	  <td id="T_a4274_row25_col19" class="data row25 col19" ></td>
	  <td id="T_a4274_row25_col20" class="data row25 col20" ></td>
	  <td id="T_a4274_row25_col21" class="data row25 col21" ></td>
	  <td id="T_a4274_row25_col22" class="data row25 col22" ></td>
	  <td id="T_a4274_row25_col23" class="data row25 col23" ></td>
	  <td id="T_a4274_row25_col24" class="data row25 col24" ></td>
	  <td id="T_a4274_row25_col25" class="data row25 col25" >122.31</td>
	  <td id="T_a4274_row25_col26" class="data row25 col26" >120.79</td>
	  <td id="T_a4274_row25_col27" class="data row25 col27" >119.28</td>
	  <td id="T_a4274_row25_col28" class="data row25 col28" >117.76</td>
	  <td id="T_a4274_row25_col29" class="data row25 col29" >116.24</td>
	  <td id="T_a4274_row25_col30" class="data row25 col30" >114.72</td>
	  <td id="T_a4274_row25_col31" class="data row25 col31" >113.21</td>
	  <td id="T_a4274_row25_col32" class="data row25 col32" >111.70</td>
	  <td id="T_a4274_row25_col33" class="data row25 col33" >110.19</td>
	  <td id="T_a4274_row25_col34" class="data row25 col34" >108.69</td>
	  <td id="T_a4274_row25_col35" class="data row25 col35" >107.20</td>
	  <td id="T_a4274_row25_col36" class="data row25 col36" >105.72</td>
	  <td id="T_a4274_row25_col37" class="data row25 col37" >104.26</td>
	  <td id="T_a4274_row25_col38" class="data row25 col38" >102.81</td>
	  <td id="T_a4274_row25_col39" class="data row25 col39" >101.39</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row26" class="row_heading level0 row26" >26</th>
	  <td id="T_a4274_row26_col0" class="data row26 col0" ></td>
	  <td id="T_a4274_row26_col1" class="data row26 col1" ></td>
	  <td id="T_a4274_row26_col2" class="data row26 col2" ></td>
	  <td id="T_a4274_row26_col3" class="data row26 col3" ></td>
	  <td id="T_a4274_row26_col4" class="data row26 col4" ></td>
	  <td id="T_a4274_row26_col5" class="data row26 col5" ></td>
	  <td id="T_a4274_row26_col6" class="data row26 col6" ></td>
	  <td id="T_a4274_row26_col7" class="data row26 col7" ></td>
	  <td id="T_a4274_row26_col8" class="data row26 col8" ></td>
	  <td id="T_a4274_row26_col9" class="data row26 col9" ></td>
	  <td id="T_a4274_row26_col10" class="data row26 col10" ></td>
	  <td id="T_a4274_row26_col11" class="data row26 col11" ></td>
	  <td id="T_a4274_row26_col12" class="data row26 col12" ></td>
	  <td id="T_a4274_row26_col13" class="data row26 col13" ></td>
	  <td id="T_a4274_row26_col14" class="data row26 col14" ></td>
	  <td id="T_a4274_row26_col15" class="data row26 col15" ></td>
	  <td id="T_a4274_row26_col16" class="data row26 col16" ></td>
	  <td id="T_a4274_row26_col17" class="data row26 col17" ></td>
	  <td id="T_a4274_row26_col18" class="data row26 col18" ></td>
	  <td id="T_a4274_row26_col19" class="data row26 col19" ></td>
	  <td id="T_a4274_row26_col20" class="data row26 col20" ></td>
	  <td id="T_a4274_row26_col21" class="data row26 col21" ></td>
	  <td id="T_a4274_row26_col22" class="data row26 col22" ></td>
	  <td id="T_a4274_row26_col23" class="data row26 col23" ></td>
	  <td id="T_a4274_row26_col24" class="data row26 col24" ></td>
	  <td id="T_a4274_row26_col25" class="data row26 col25" ></td>
	  <td id="T_a4274_row26_col26" class="data row26 col26" >120.84</td>
	  <td id="T_a4274_row26_col27" class="data row26 col27" >119.33</td>
	  <td id="T_a4274_row26_col28" class="data row26 col28" >117.82</td>
	  <td id="T_a4274_row26_col29" class="data row26 col29" >116.30</td>
	  <td id="T_a4274_row26_col30" class="data row26 col30" >114.79</td>
	  <td id="T_a4274_row26_col31" class="data row26 col31" >113.28</td>
	  <td id="T_a4274_row26_col32" class="data row26 col32" >111.77</td>
	  <td id="T_a4274_row26_col33" class="data row26 col33" >110.27</td>
	  <td id="T_a4274_row26_col34" class="data row26 col34" >108.77</td>
	  <td id="T_a4274_row26_col35" class="data row26 col35" >107.27</td>
	  <td id="T_a4274_row26_col36" class="data row26 col36" >105.79</td>
	  <td id="T_a4274_row26_col37" class="data row26 col37" >104.31</td>
	  <td id="T_a4274_row26_col38" class="data row26 col38" >102.86</td>
	  <td id="T_a4274_row26_col39" class="data row26 col39" >101.42</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row27" class="row_heading level0 row27" >27</th>
	  <td id="T_a4274_row27_col0" class="data row27 col0" ></td>
	  <td id="T_a4274_row27_col1" class="data row27 col1" ></td>
	  <td id="T_a4274_row27_col2" class="data row27 col2" ></td>
	  <td id="T_a4274_row27_col3" class="data row27 col3" ></td>
	  <td id="T_a4274_row27_col4" class="data row27 col4" ></td>
	  <td id="T_a4274_row27_col5" class="data row27 col5" ></td>
	  <td id="T_a4274_row27_col6" class="data row27 col6" ></td>
	  <td id="T_a4274_row27_col7" class="data row27 col7" ></td>
	  <td id="T_a4274_row27_col8" class="data row27 col8" ></td>
	  <td id="T_a4274_row27_col9" class="data row27 col9" ></td>
	  <td id="T_a4274_row27_col10" class="data row27 col10" ></td>
	  <td id="T_a4274_row27_col11" class="data row27 col11" ></td>
	  <td id="T_a4274_row27_col12" class="data row27 col12" ></td>
	  <td id="T_a4274_row27_col13" class="data row27 col13" ></td>
	  <td id="T_a4274_row27_col14" class="data row27 col14" ></td>
	  <td id="T_a4274_row27_col15" class="data row27 col15" ></td>
	  <td id="T_a4274_row27_col16" class="data row27 col16" ></td>
	  <td id="T_a4274_row27_col17" class="data row27 col17" ></td>
	  <td id="T_a4274_row27_col18" class="data row27 col18" ></td>
	  <td id="T_a4274_row27_col19" class="data row27 col19" ></td>
	  <td id="T_a4274_row27_col20" class="data row27 col20" ></td>
	  <td id="T_a4274_row27_col21" class="data row27 col21" ></td>
	  <td id="T_a4274_row27_col22" class="data row27 col22" ></td>
	  <td id="T_a4274_row27_col23" class="data row27 col23" ></td>
	  <td id="T_a4274_row27_col24" class="data row27 col24" ></td>
	  <td id="T_a4274_row27_col25" class="data row27 col25" ></td>
	  <td id="T_a4274_row27_col26" class="data row27 col26" ></td>
	  <td id="T_a4274_row27_col27" class="data row27 col27" >119.37</td>
	  <td id="T_a4274_row27_col28" class="data row27 col28" >117.86</td>
	  <td id="T_a4274_row27_col29" class="data row27 col29" >116.35</td>
	  <td id="T_a4274_row27_col30" class="data row27 col30" >114.84</td>
	  <td id="T_a4274_row27_col31" class="data row27 col31" >113.33</td>
	  <td id="T_a4274_row27_col32" class="data row27 col32" >111.83</td>
	  <td id="T_a4274_row27_col33" class="data row27 col33" >110.32</td>
	  <td id="T_a4274_row27_col34" class="data row27 col34" >108.82</td>
	  <td id="T_a4274_row27_col35" class="data row27 col35" >107.33</td>
	  <td id="T_a4274_row27_col36" class="data row27 col36" >105.84</td>
	  <td id="T_a4274_row27_col37" class="data row27 col37" >104.36</td>
	  <td id="T_a4274_row27_col38" class="data row27 col38" >102.89</td>
	  <td id="T_a4274_row27_col39" class="data row27 col39" >101.44</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row28" class="row_heading level0 row28" >28</th>
	  <td id="T_a4274_row28_col0" class="data row28 col0" ></td>
	  <td id="T_a4274_row28_col1" class="data row28 col1" ></td>
	  <td id="T_a4274_row28_col2" class="data row28 col2" ></td>
	  <td id="T_a4274_row28_col3" class="data row28 col3" ></td>
	  <td id="T_a4274_row28_col4" class="data row28 col4" ></td>
	  <td id="T_a4274_row28_col5" class="data row28 col5" ></td>
	  <td id="T_a4274_row28_col6" class="data row28 col6" ></td>
	  <td id="T_a4274_row28_col7" class="data row28 col7" ></td>
	  <td id="T_a4274_row28_col8" class="data row28 col8" ></td>
	  <td id="T_a4274_row28_col9" class="data row28 col9" ></td>
	  <td id="T_a4274_row28_col10" class="data row28 col10" ></td>
	  <td id="T_a4274_row28_col11" class="data row28 col11" ></td>
	  <td id="T_a4274_row28_col12" class="data row28 col12" ></td>
	  <td id="T_a4274_row28_col13" class="data row28 col13" ></td>
	  <td id="T_a4274_row28_col14" class="data row28 col14" ></td>
	  <td id="T_a4274_row28_col15" class="data row28 col15" ></td>
	  <td id="T_a4274_row28_col16" class="data row28 col16" ></td>
	  <td id="T_a4274_row28_col17" class="data row28 col17" ></td>
	  <td id="T_a4274_row28_col18" class="data row28 col18" ></td>
	  <td id="T_a4274_row28_col19" class="data row28 col19" ></td>
	  <td id="T_a4274_row28_col20" class="data row28 col20" ></td>
	  <td id="T_a4274_row28_col21" class="data row28 col21" ></td>
	  <td id="T_a4274_row28_col22" class="data row28 col22" ></td>
	  <td id="T_a4274_row28_col23" class="data row28 col23" ></td>
	  <td id="T_a4274_row28_col24" class="data row28 col24" ></td>
	  <td id="T_a4274_row28_col25" class="data row28 col25" ></td>
	  <td id="T_a4274_row28_col26" class="data row28 col26" ></td>
	  <td id="T_a4274_row28_col27" class="data row28 col27" ></td>
	  <td id="T_a4274_row28_col28" class="data row28 col28" >117.90</td>
	  <td id="T_a4274_row28_col29" class="data row28 col29" >116.39</td>
	  <td id="T_a4274_row28_col30" class="data row28 col30" >114.88</td>
	  <td id="T_a4274_row28_col31" class="data row28 col31" >113.38</td>
	  <td id="T_a4274_row28_col32" class="data row28 col32" >111.87</td>
	  <td id="T_a4274_row28_col33" class="data row28 col33" >110.37</td>
	  <td id="T_a4274_row28_col34" class="data row28 col34" >108.87</td>
	  <td id="T_a4274_row28_col35" class="data row28 col35" >107.37</td>
	  <td id="T_a4274_row28_col36" class="data row28 col36" >105.88</td>
	  <td id="T_a4274_row28_col37" class="data row28 col37" >104.39</td>
	  <td id="T_a4274_row28_col38" class="data row28 col38" >102.92</td>
	  <td id="T_a4274_row28_col39" class="data row28 col39" >101.45</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row29" class="row_heading level0 row29" >29</th>
	  <td id="T_a4274_row29_col0" class="data row29 col0" ></td>
	  <td id="T_a4274_row29_col1" class="data row29 col1" ></td>
	  <td id="T_a4274_row29_col2" class="data row29 col2" ></td>
	  <td id="T_a4274_row29_col3" class="data row29 col3" ></td>
	  <td id="T_a4274_row29_col4" class="data row29 col4" ></td>
	  <td id="T_a4274_row29_col5" class="data row29 col5" ></td>
	  <td id="T_a4274_row29_col6" class="data row29 col6" ></td>
	  <td id="T_a4274_row29_col7" class="data row29 col7" ></td>
	  <td id="T_a4274_row29_col8" class="data row29 col8" ></td>
	  <td id="T_a4274_row29_col9" class="data row29 col9" ></td>
	  <td id="T_a4274_row29_col10" class="data row29 col10" ></td>
	  <td id="T_a4274_row29_col11" class="data row29 col11" ></td>
	  <td id="T_a4274_row29_col12" class="data row29 col12" ></td>
	  <td id="T_a4274_row29_col13" class="data row29 col13" ></td>
	  <td id="T_a4274_row29_col14" class="data row29 col14" ></td>
	  <td id="T_a4274_row29_col15" class="data row29 col15" ></td>
	  <td id="T_a4274_row29_col16" class="data row29 col16" ></td>
	  <td id="T_a4274_row29_col17" class="data row29 col17" ></td>
	  <td id="T_a4274_row29_col18" class="data row29 col18" ></td>
	  <td id="T_a4274_row29_col19" class="data row29 col19" ></td>
	  <td id="T_a4274_row29_col20" class="data row29 col20" ></td>
	  <td id="T_a4274_row29_col21" class="data row29 col21" ></td>
	  <td id="T_a4274_row29_col22" class="data row29 col22" ></td>
	  <td id="T_a4274_row29_col23" class="data row29 col23" ></td>
	  <td id="T_a4274_row29_col24" class="data row29 col24" ></td>
	  <td id="T_a4274_row29_col25" class="data row29 col25" ></td>
	  <td id="T_a4274_row29_col26" class="data row29 col26" ></td>
	  <td id="T_a4274_row29_col27" class="data row29 col27" ></td>
	  <td id="T_a4274_row29_col28" class="data row29 col28" ></td>
	  <td id="T_a4274_row29_col29" class="data row29 col29" >116.42</td>
	  <td id="T_a4274_row29_col30" class="data row29 col30" >114.91</td>
	  <td id="T_a4274_row29_col31" class="data row29 col31" >113.41</td>
	  <td id="T_a4274_row29_col32" class="data row29 col32" >111.90</td>
	  <td id="T_a4274_row29_col33" class="data row29 col33" >110.40</td>
	  <td id="T_a4274_row29_col34" class="data row29 col34" >108.90</td>
	  <td id="T_a4274_row29_col35" class="data row29 col35" >107.40</td>
	  <td id="T_a4274_row29_col36" class="data row29 col36" >105.91</td>
	  <td id="T_a4274_row29_col37" class="data row29 col37" >104.42</td>
	  <td id="T_a4274_row29_col38" class="data row29 col38" >102.94</td>
	  <td id="T_a4274_row29_col39" class="data row29 col39" >101.46</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row30" class="row_heading level0 row30" >30</th>
	  <td id="T_a4274_row30_col0" class="data row30 col0" ></td>
	  <td id="T_a4274_row30_col1" class="data row30 col1" ></td>
	  <td id="T_a4274_row30_col2" class="data row30 col2" ></td>
	  <td id="T_a4274_row30_col3" class="data row30 col3" ></td>
	  <td id="T_a4274_row30_col4" class="data row30 col4" ></td>
	  <td id="T_a4274_row30_col5" class="data row30 col5" ></td>
	  <td id="T_a4274_row30_col6" class="data row30 col6" ></td>
	  <td id="T_a4274_row30_col7" class="data row30 col7" ></td>
	  <td id="T_a4274_row30_col8" class="data row30 col8" ></td>
	  <td id="T_a4274_row30_col9" class="data row30 col9" ></td>
	  <td id="T_a4274_row30_col10" class="data row30 col10" ></td>
	  <td id="T_a4274_row30_col11" class="data row30 col11" ></td>
	  <td id="T_a4274_row30_col12" class="data row30 col12" ></td>
	  <td id="T_a4274_row30_col13" class="data row30 col13" ></td>
	  <td id="T_a4274_row30_col14" class="data row30 col14" ></td>
	  <td id="T_a4274_row30_col15" class="data row30 col15" ></td>
	  <td id="T_a4274_row30_col16" class="data row30 col16" ></td>
	  <td id="T_a4274_row30_col17" class="data row30 col17" ></td>
	  <td id="T_a4274_row30_col18" class="data row30 col18" ></td>
	  <td id="T_a4274_row30_col19" class="data row30 col19" ></td>
	  <td id="T_a4274_row30_col20" class="data row30 col20" ></td>
	  <td id="T_a4274_row30_col21" class="data row30 col21" ></td>
	  <td id="T_a4274_row30_col22" class="data row30 col22" ></td>
	  <td id="T_a4274_row30_col23" class="data row30 col23" ></td>
	  <td id="T_a4274_row30_col24" class="data row30 col24" ></td>
	  <td id="T_a4274_row30_col25" class="data row30 col25" ></td>
	  <td id="T_a4274_row30_col26" class="data row30 col26" ></td>
	  <td id="T_a4274_row30_col27" class="data row30 col27" ></td>
	  <td id="T_a4274_row30_col28" class="data row30 col28" ></td>
	  <td id="T_a4274_row30_col29" class="data row30 col29" ></td>
	  <td id="T_a4274_row30_col30" class="data row30 col30" >114.93</td>
	  <td id="T_a4274_row30_col31" class="data row30 col31" >113.43</td>
	  <td id="T_a4274_row30_col32" class="data row30 col32" >111.93</td>
	  <td id="T_a4274_row30_col33" class="data row30 col33" >110.43</td>
	  <td id="T_a4274_row30_col34" class="data row30 col34" >108.93</td>
	  <td id="T_a4274_row30_col35" class="data row30 col35" >107.43</td>
	  <td id="T_a4274_row30_col36" class="data row30 col36" >105.93</td>
	  <td id="T_a4274_row30_col37" class="data row30 col37" >104.44</td>
	  <td id="T_a4274_row30_col38" class="data row30 col38" >102.95</td>
	  <td id="T_a4274_row30_col39" class="data row30 col39" >101.47</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row31" class="row_heading level0 row31" >31</th>
	  <td id="T_a4274_row31_col0" class="data row31 col0" ></td>
	  <td id="T_a4274_row31_col1" class="data row31 col1" ></td>
	  <td id="T_a4274_row31_col2" class="data row31 col2" ></td>
	  <td id="T_a4274_row31_col3" class="data row31 col3" ></td>
	  <td id="T_a4274_row31_col4" class="data row31 col4" ></td>
	  <td id="T_a4274_row31_col5" class="data row31 col5" ></td>
	  <td id="T_a4274_row31_col6" class="data row31 col6" ></td>
	  <td id="T_a4274_row31_col7" class="data row31 col7" ></td>
	  <td id="T_a4274_row31_col8" class="data row31 col8" ></td>
	  <td id="T_a4274_row31_col9" class="data row31 col9" ></td>
	  <td id="T_a4274_row31_col10" class="data row31 col10" ></td>
	  <td id="T_a4274_row31_col11" class="data row31 col11" ></td>
	  <td id="T_a4274_row31_col12" class="data row31 col12" ></td>
	  <td id="T_a4274_row31_col13" class="data row31 col13" ></td>
	  <td id="T_a4274_row31_col14" class="data row31 col14" ></td>
	  <td id="T_a4274_row31_col15" class="data row31 col15" ></td>
	  <td id="T_a4274_row31_col16" class="data row31 col16" ></td>
	  <td id="T_a4274_row31_col17" class="data row31 col17" ></td>
	  <td id="T_a4274_row31_col18" class="data row31 col18" ></td>
	  <td id="T_a4274_row31_col19" class="data row31 col19" ></td>
	  <td id="T_a4274_row31_col20" class="data row31 col20" ></td>
	  <td id="T_a4274_row31_col21" class="data row31 col21" ></td>
	  <td id="T_a4274_row31_col22" class="data row31 col22" ></td>
	  <td id="T_a4274_row31_col23" class="data row31 col23" ></td>
	  <td id="T_a4274_row31_col24" class="data row31 col24" ></td>
	  <td id="T_a4274_row31_col25" class="data row31 col25" ></td>
	  <td id="T_a4274_row31_col26" class="data row31 col26" ></td>
	  <td id="T_a4274_row31_col27" class="data row31 col27" ></td>
	  <td id="T_a4274_row31_col28" class="data row31 col28" ></td>
	  <td id="T_a4274_row31_col29" class="data row31 col29" ></td>
	  <td id="T_a4274_row31_col30" class="data row31 col30" ></td>
	  <td id="T_a4274_row31_col31" class="data row31 col31" >113.45</td>
	  <td id="T_a4274_row31_col32" class="data row31 col32" >111.94</td>
	  <td id="T_a4274_row31_col33" class="data row31 col33" >110.44</td>
	  <td id="T_a4274_row31_col34" class="data row31 col34" >108.94</td>
	  <td id="T_a4274_row31_col35" class="data row31 col35" >107.45</td>
	  <td id="T_a4274_row31_col36" class="data row31 col36" >105.95</td>
	  <td id="T_a4274_row31_col37" class="data row31 col37" >104.46</td>
	  <td id="T_a4274_row31_col38" class="data row31 col38" >102.97</td>
	  <td id="T_a4274_row31_col39" class="data row31 col39" >101.48</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row32" class="row_heading level0 row32" >32</th>
	  <td id="T_a4274_row32_col0" class="data row32 col0" ></td>
	  <td id="T_a4274_row32_col1" class="data row32 col1" ></td>
	  <td id="T_a4274_row32_col2" class="data row32 col2" ></td>
	  <td id="T_a4274_row32_col3" class="data row32 col3" ></td>
	  <td id="T_a4274_row32_col4" class="data row32 col4" ></td>
	  <td id="T_a4274_row32_col5" class="data row32 col5" ></td>
	  <td id="T_a4274_row32_col6" class="data row32 col6" ></td>
	  <td id="T_a4274_row32_col7" class="data row32 col7" ></td>
	  <td id="T_a4274_row32_col8" class="data row32 col8" ></td>
	  <td id="T_a4274_row32_col9" class="data row32 col9" ></td>
	  <td id="T_a4274_row32_col10" class="data row32 col10" ></td>
	  <td id="T_a4274_row32_col11" class="data row32 col11" ></td>
	  <td id="T_a4274_row32_col12" class="data row32 col12" ></td>
	  <td id="T_a4274_row32_col13" class="data row32 col13" ></td>
	  <td id="T_a4274_row32_col14" class="data row32 col14" ></td>
	  <td id="T_a4274_row32_col15" class="data row32 col15" ></td>
	  <td id="T_a4274_row32_col16" class="data row32 col16" ></td>
	  <td id="T_a4274_row32_col17" class="data row32 col17" ></td>
	  <td id="T_a4274_row32_col18" class="data row32 col18" ></td>
	  <td id="T_a4274_row32_col19" class="data row32 col19" ></td>
	  <td id="T_a4274_row32_col20" class="data row32 col20" ></td>
	  <td id="T_a4274_row32_col21" class="data row32 col21" ></td>
	  <td id="T_a4274_row32_col22" class="data row32 col22" ></td>
	  <td id="T_a4274_row32_col23" class="data row32 col23" ></td>
	  <td id="T_a4274_row32_col24" class="data row32 col24" ></td>
	  <td id="T_a4274_row32_col25" class="data row32 col25" ></td>
	  <td id="T_a4274_row32_col26" class="data row32 col26" ></td>
	  <td id="T_a4274_row32_col27" class="data row32 col27" ></td>
	  <td id="T_a4274_row32_col28" class="data row32 col28" ></td>
	  <td id="T_a4274_row32_col29" class="data row32 col29" ></td>
	  <td id="T_a4274_row32_col30" class="data row32 col30" ></td>
	  <td id="T_a4274_row32_col31" class="data row32 col31" ></td>
	  <td id="T_a4274_row32_col32" class="data row32 col32" >111.96</td>
	  <td id="T_a4274_row32_col33" class="data row32 col33" >110.46</td>
	  <td id="T_a4274_row32_col34" class="data row32 col34" >108.96</td>
	  <td id="T_a4274_row32_col35" class="data row32 col35" >107.46</td>
	  <td id="T_a4274_row32_col36" class="data row32 col36" >105.96</td>
	  <td id="T_a4274_row32_col37" class="data row32 col37" >104.47</td>
	  <td id="T_a4274_row32_col38" class="data row32 col38" >102.97</td>
	  <td id="T_a4274_row32_col39" class="data row32 col39" >101.48</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row33" class="row_heading level0 row33" >33</th>
	  <td id="T_a4274_row33_col0" class="data row33 col0" ></td>
	  <td id="T_a4274_row33_col1" class="data row33 col1" ></td>
	  <td id="T_a4274_row33_col2" class="data row33 col2" ></td>
	  <td id="T_a4274_row33_col3" class="data row33 col3" ></td>
	  <td id="T_a4274_row33_col4" class="data row33 col4" ></td>
	  <td id="T_a4274_row33_col5" class="data row33 col5" ></td>
	  <td id="T_a4274_row33_col6" class="data row33 col6" ></td>
	  <td id="T_a4274_row33_col7" class="data row33 col7" ></td>
	  <td id="T_a4274_row33_col8" class="data row33 col8" ></td>
	  <td id="T_a4274_row33_col9" class="data row33 col9" ></td>
	  <td id="T_a4274_row33_col10" class="data row33 col10" ></td>
	  <td id="T_a4274_row33_col11" class="data row33 col11" ></td>
	  <td id="T_a4274_row33_col12" class="data row33 col12" ></td>
	  <td id="T_a4274_row33_col13" class="data row33 col13" ></td>
	  <td id="T_a4274_row33_col14" class="data row33 col14" ></td>
	  <td id="T_a4274_row33_col15" class="data row33 col15" ></td>
	  <td id="T_a4274_row33_col16" class="data row33 col16" ></td>
	  <td id="T_a4274_row33_col17" class="data row33 col17" ></td>
	  <td id="T_a4274_row33_col18" class="data row33 col18" ></td>
	  <td id="T_a4274_row33_col19" class="data row33 col19" ></td>
	  <td id="T_a4274_row33_col20" class="data row33 col20" ></td>
	  <td id="T_a4274_row33_col21" class="data row33 col21" ></td>
	  <td id="T_a4274_row33_col22" class="data row33 col22" ></td>
	  <td id="T_a4274_row33_col23" class="data row33 col23" ></td>
	  <td id="T_a4274_row33_col24" class="data row33 col24" ></td>
	  <td id="T_a4274_row33_col25" class="data row33 col25" ></td>
	  <td id="T_a4274_row33_col26" class="data row33 col26" ></td>
	  <td id="T_a4274_row33_col27" class="data row33 col27" ></td>
	  <td id="T_a4274_row33_col28" class="data row33 col28" ></td>
	  <td id="T_a4274_row33_col29" class="data row33 col29" ></td>
	  <td id="T_a4274_row33_col30" class="data row33 col30" ></td>
	  <td id="T_a4274_row33_col31" class="data row33 col31" ></td>
	  <td id="T_a4274_row33_col32" class="data row33 col32" ></td>
	  <td id="T_a4274_row33_col33" class="data row33 col33" >110.47</td>
	  <td id="T_a4274_row33_col34" class="data row33 col34" >108.97</td>
	  <td id="T_a4274_row33_col35" class="data row33 col35" >107.47</td>
	  <td id="T_a4274_row33_col36" class="data row33 col36" >105.97</td>
	  <td id="T_a4274_row33_col37" class="data row33 col37" >104.47</td>
	  <td id="T_a4274_row33_col38" class="data row33 col38" >102.98</td>
	  <td id="T_a4274_row33_col39" class="data row33 col39" >101.49</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row34" class="row_heading level0 row34" >34</th>
	  <td id="T_a4274_row34_col0" class="data row34 col0" ></td>
	  <td id="T_a4274_row34_col1" class="data row34 col1" ></td>
	  <td id="T_a4274_row34_col2" class="data row34 col2" ></td>
	  <td id="T_a4274_row34_col3" class="data row34 col3" ></td>
	  <td id="T_a4274_row34_col4" class="data row34 col4" ></td>
	  <td id="T_a4274_row34_col5" class="data row34 col5" ></td>
	  <td id="T_a4274_row34_col6" class="data row34 col6" ></td>
	  <td id="T_a4274_row34_col7" class="data row34 col7" ></td>
	  <td id="T_a4274_row34_col8" class="data row34 col8" ></td>
	  <td id="T_a4274_row34_col9" class="data row34 col9" ></td>
	  <td id="T_a4274_row34_col10" class="data row34 col10" ></td>
	  <td id="T_a4274_row34_col11" class="data row34 col11" ></td>
	  <td id="T_a4274_row34_col12" class="data row34 col12" ></td>
	  <td id="T_a4274_row34_col13" class="data row34 col13" ></td>
	  <td id="T_a4274_row34_col14" class="data row34 col14" ></td>
	  <td id="T_a4274_row34_col15" class="data row34 col15" ></td>
	  <td id="T_a4274_row34_col16" class="data row34 col16" ></td>
	  <td id="T_a4274_row34_col17" class="data row34 col17" ></td>
	  <td id="T_a4274_row34_col18" class="data row34 col18" ></td>
	  <td id="T_a4274_row34_col19" class="data row34 col19" ></td>
	  <td id="T_a4274_row34_col20" class="data row34 col20" ></td>
	  <td id="T_a4274_row34_col21" class="data row34 col21" ></td>
	  <td id="T_a4274_row34_col22" class="data row34 col22" ></td>
	  <td id="T_a4274_row34_col23" class="data row34 col23" ></td>
	  <td id="T_a4274_row34_col24" class="data row34 col24" ></td>
	  <td id="T_a4274_row34_col25" class="data row34 col25" ></td>
	  <td id="T_a4274_row34_col26" class="data row34 col26" ></td>
	  <td id="T_a4274_row34_col27" class="data row34 col27" ></td>
	  <td id="T_a4274_row34_col28" class="data row34 col28" ></td>
	  <td id="T_a4274_row34_col29" class="data row34 col29" ></td>
	  <td id="T_a4274_row34_col30" class="data row34 col30" ></td>
	  <td id="T_a4274_row34_col31" class="data row34 col31" ></td>
	  <td id="T_a4274_row34_col32" class="data row34 col32" ></td>
	  <td id="T_a4274_row34_col33" class="data row34 col33" ></td>
	  <td id="T_a4274_row34_col34" class="data row34 col34" >108.97</td>
	  <td id="T_a4274_row34_col35" class="data row34 col35" >107.47</td>
	  <td id="T_a4274_row34_col36" class="data row34 col36" >105.98</td>
	  <td id="T_a4274_row34_col37" class="data row34 col37" >104.48</td>
	  <td id="T_a4274_row34_col38" class="data row34 col38" >102.98</td>
	  <td id="T_a4274_row34_col39" class="data row34 col39" >101.49</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row35" class="row_heading level0 row35" >35</th>
	  <td id="T_a4274_row35_col0" class="data row35 col0" ></td>
	  <td id="T_a4274_row35_col1" class="data row35 col1" ></td>
	  <td id="T_a4274_row35_col2" class="data row35 col2" ></td>
	  <td id="T_a4274_row35_col3" class="data row35 col3" ></td>
	  <td id="T_a4274_row35_col4" class="data row35 col4" ></td>
	  <td id="T_a4274_row35_col5" class="data row35 col5" ></td>
	  <td id="T_a4274_row35_col6" class="data row35 col6" ></td>
	  <td id="T_a4274_row35_col7" class="data row35 col7" ></td>
	  <td id="T_a4274_row35_col8" class="data row35 col8" ></td>
	  <td id="T_a4274_row35_col9" class="data row35 col9" ></td>
	  <td id="T_a4274_row35_col10" class="data row35 col10" ></td>
	  <td id="T_a4274_row35_col11" class="data row35 col11" ></td>
	  <td id="T_a4274_row35_col12" class="data row35 col12" ></td>
	  <td id="T_a4274_row35_col13" class="data row35 col13" ></td>
	  <td id="T_a4274_row35_col14" class="data row35 col14" ></td>
	  <td id="T_a4274_row35_col15" class="data row35 col15" ></td>
	  <td id="T_a4274_row35_col16" class="data row35 col16" ></td>
	  <td id="T_a4274_row35_col17" class="data row35 col17" ></td>
	  <td id="T_a4274_row35_col18" class="data row35 col18" ></td>
	  <td id="T_a4274_row35_col19" class="data row35 col19" ></td>
	  <td id="T_a4274_row35_col20" class="data row35 col20" ></td>
	  <td id="T_a4274_row35_col21" class="data row35 col21" ></td>
	  <td id="T_a4274_row35_col22" class="data row35 col22" ></td>
	  <td id="T_a4274_row35_col23" class="data row35 col23" ></td>
	  <td id="T_a4274_row35_col24" class="data row35 col24" ></td>
	  <td id="T_a4274_row35_col25" class="data row35 col25" ></td>
	  <td id="T_a4274_row35_col26" class="data row35 col26" ></td>
	  <td id="T_a4274_row35_col27" class="data row35 col27" ></td>
	  <td id="T_a4274_row35_col28" class="data row35 col28" ></td>
	  <td id="T_a4274_row35_col29" class="data row35 col29" ></td>
	  <td id="T_a4274_row35_col30" class="data row35 col30" ></td>
	  <td id="T_a4274_row35_col31" class="data row35 col31" ></td>
	  <td id="T_a4274_row35_col32" class="data row35 col32" ></td>
	  <td id="T_a4274_row35_col33" class="data row35 col33" ></td>
	  <td id="T_a4274_row35_col34" class="data row35 col34" ></td>
	  <td id="T_a4274_row35_col35" class="data row35 col35" >107.48</td>
	  <td id="T_a4274_row35_col36" class="data row35 col36" >105.98</td>
	  <td id="T_a4274_row35_col37" class="data row35 col37" >104.48</td>
	  <td id="T_a4274_row35_col38" class="data row35 col38" >102.99</td>
	  <td id="T_a4274_row35_col39" class="data row35 col39" >101.49</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row36" class="row_heading level0 row36" >36</th>
	  <td id="T_a4274_row36_col0" class="data row36 col0" ></td>
	  <td id="T_a4274_row36_col1" class="data row36 col1" ></td>
	  <td id="T_a4274_row36_col2" class="data row36 col2" ></td>
	  <td id="T_a4274_row36_col3" class="data row36 col3" ></td>
	  <td id="T_a4274_row36_col4" class="data row36 col4" ></td>
	  <td id="T_a4274_row36_col5" class="data row36 col5" ></td>
	  <td id="T_a4274_row36_col6" class="data row36 col6" ></td>
	  <td id="T_a4274_row36_col7" class="data row36 col7" ></td>
	  <td id="T_a4274_row36_col8" class="data row36 col8" ></td>
	  <td id="T_a4274_row36_col9" class="data row36 col9" ></td>
	  <td id="T_a4274_row36_col10" class="data row36 col10" ></td>
	  <td id="T_a4274_row36_col11" class="data row36 col11" ></td>
	  <td id="T_a4274_row36_col12" class="data row36 col12" ></td>
	  <td id="T_a4274_row36_col13" class="data row36 col13" ></td>
	  <td id="T_a4274_row36_col14" class="data row36 col14" ></td>
	  <td id="T_a4274_row36_col15" class="data row36 col15" ></td>
	  <td id="T_a4274_row36_col16" class="data row36 col16" ></td>
	  <td id="T_a4274_row36_col17" class="data row36 col17" ></td>
	  <td id="T_a4274_row36_col18" class="data row36 col18" ></td>
	  <td id="T_a4274_row36_col19" class="data row36 col19" ></td>
	  <td id="T_a4274_row36_col20" class="data row36 col20" ></td>
	  <td id="T_a4274_row36_col21" class="data row36 col21" ></td>
	  <td id="T_a4274_row36_col22" class="data row36 col22" ></td>
	  <td id="T_a4274_row36_col23" class="data row36 col23" ></td>
	  <td id="T_a4274_row36_col24" class="data row36 col24" ></td>
	  <td id="T_a4274_row36_col25" class="data row36 col25" ></td>
	  <td id="T_a4274_row36_col26" class="data row36 col26" ></td>
	  <td id="T_a4274_row36_col27" class="data row36 col27" ></td>
	  <td id="T_a4274_row36_col28" class="data row36 col28" ></td>
	  <td id="T_a4274_row36_col29" class="data row36 col29" ></td>
	  <td id="T_a4274_row36_col30" class="data row36 col30" ></td>
	  <td id="T_a4274_row36_col31" class="data row36 col31" ></td>
	  <td id="T_a4274_row36_col32" class="data row36 col32" ></td>
	  <td id="T_a4274_row36_col33" class="data row36 col33" ></td>
	  <td id="T_a4274_row36_col34" class="data row36 col34" ></td>
	  <td id="T_a4274_row36_col35" class="data row36 col35" ></td>
	  <td id="T_a4274_row36_col36" class="data row36 col36" >105.99</td>
	  <td id="T_a4274_row36_col37" class="data row36 col37" >104.49</td>
	  <td id="T_a4274_row36_col38" class="data row36 col38" >102.99</td>
	  <td id="T_a4274_row36_col39" class="data row36 col39" >101.49</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row37" class="row_heading level0 row37" >37</th>
	  <td id="T_a4274_row37_col0" class="data row37 col0" ></td>
	  <td id="T_a4274_row37_col1" class="data row37 col1" ></td>
	  <td id="T_a4274_row37_col2" class="data row37 col2" ></td>
	  <td id="T_a4274_row37_col3" class="data row37 col3" ></td>
	  <td id="T_a4274_row37_col4" class="data row37 col4" ></td>
	  <td id="T_a4274_row37_col5" class="data row37 col5" ></td>
	  <td id="T_a4274_row37_col6" class="data row37 col6" ></td>
	  <td id="T_a4274_row37_col7" class="data row37 col7" ></td>
	  <td id="T_a4274_row37_col8" class="data row37 col8" ></td>
	  <td id="T_a4274_row37_col9" class="data row37 col9" ></td>
	  <td id="T_a4274_row37_col10" class="data row37 col10" ></td>
	  <td id="T_a4274_row37_col11" class="data row37 col11" ></td>
	  <td id="T_a4274_row37_col12" class="data row37 col12" ></td>
	  <td id="T_a4274_row37_col13" class="data row37 col13" ></td>
	  <td id="T_a4274_row37_col14" class="data row37 col14" ></td>
	  <td id="T_a4274_row37_col15" class="data row37 col15" ></td>
	  <td id="T_a4274_row37_col16" class="data row37 col16" ></td>
	  <td id="T_a4274_row37_col17" class="data row37 col17" ></td>
	  <td id="T_a4274_row37_col18" class="data row37 col18" ></td>
	  <td id="T_a4274_row37_col19" class="data row37 col19" ></td>
	  <td id="T_a4274_row37_col20" class="data row37 col20" ></td>
	  <td id="T_a4274_row37_col21" class="data row37 col21" ></td>
	  <td id="T_a4274_row37_col22" class="data row37 col22" ></td>
	  <td id="T_a4274_row37_col23" class="data row37 col23" ></td>
	  <td id="T_a4274_row37_col24" class="data row37 col24" ></td>
	  <td id="T_a4274_row37_col25" class="data row37 col25" ></td>
	  <td id="T_a4274_row37_col26" class="data row37 col26" ></td>
	  <td id="T_a4274_row37_col27" class="data row37 col27" ></td>
	  <td id="T_a4274_row37_col28" class="data row37 col28" ></td>
	  <td id="T_a4274_row37_col29" class="data row37 col29" ></td>
	  <td id="T_a4274_row37_col30" class="data row37 col30" ></td>
	  <td id="T_a4274_row37_col31" class="data row37 col31" ></td>
	  <td id="T_a4274_row37_col32" class="data row37 col32" ></td>
	  <td id="T_a4274_row37_col33" class="data row37 col33" ></td>
	  <td id="T_a4274_row37_col34" class="data row37 col34" ></td>
	  <td id="T_a4274_row37_col35" class="data row37 col35" ></td>
	  <td id="T_a4274_row37_col36" class="data row37 col36" ></td>
	  <td id="T_a4274_row37_col37" class="data row37 col37" >104.49</td>
	  <td id="T_a4274_row37_col38" class="data row37 col38" >102.99</td>
	  <td id="T_a4274_row37_col39" class="data row37 col39" >101.50</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row38" class="row_heading level0 row38" >38</th>
	  <td id="T_a4274_row38_col0" class="data row38 col0" ></td>
	  <td id="T_a4274_row38_col1" class="data row38 col1" ></td>
	  <td id="T_a4274_row38_col2" class="data row38 col2" ></td>
	  <td id="T_a4274_row38_col3" class="data row38 col3" ></td>
	  <td id="T_a4274_row38_col4" class="data row38 col4" ></td>
	  <td id="T_a4274_row38_col5" class="data row38 col5" ></td>
	  <td id="T_a4274_row38_col6" class="data row38 col6" ></td>
	  <td id="T_a4274_row38_col7" class="data row38 col7" ></td>
	  <td id="T_a4274_row38_col8" class="data row38 col8" ></td>
	  <td id="T_a4274_row38_col9" class="data row38 col9" ></td>
	  <td id="T_a4274_row38_col10" class="data row38 col10" ></td>
	  <td id="T_a4274_row38_col11" class="data row38 col11" ></td>
	  <td id="T_a4274_row38_col12" class="data row38 col12" ></td>
	  <td id="T_a4274_row38_col13" class="data row38 col13" ></td>
	  <td id="T_a4274_row38_col14" class="data row38 col14" ></td>
	  <td id="T_a4274_row38_col15" class="data row38 col15" ></td>
	  <td id="T_a4274_row38_col16" class="data row38 col16" ></td>
	  <td id="T_a4274_row38_col17" class="data row38 col17" ></td>
	  <td id="T_a4274_row38_col18" class="data row38 col18" ></td>
	  <td id="T_a4274_row38_col19" class="data row38 col19" ></td>
	  <td id="T_a4274_row38_col20" class="data row38 col20" ></td>
	  <td id="T_a4274_row38_col21" class="data row38 col21" ></td>
	  <td id="T_a4274_row38_col22" class="data row38 col22" ></td>
	  <td id="T_a4274_row38_col23" class="data row38 col23" ></td>
	  <td id="T_a4274_row38_col24" class="data row38 col24" ></td>
	  <td id="T_a4274_row38_col25" class="data row38 col25" ></td>
	  <td id="T_a4274_row38_col26" class="data row38 col26" ></td>
	  <td id="T_a4274_row38_col27" class="data row38 col27" ></td>
	  <td id="T_a4274_row38_col28" class="data row38 col28" ></td>
	  <td id="T_a4274_row38_col29" class="data row38 col29" ></td>
	  <td id="T_a4274_row38_col30" class="data row38 col30" ></td>
	  <td id="T_a4274_row38_col31" class="data row38 col31" ></td>
	  <td id="T_a4274_row38_col32" class="data row38 col32" ></td>
	  <td id="T_a4274_row38_col33" class="data row38 col33" ></td>
	  <td id="T_a4274_row38_col34" class="data row38 col34" ></td>
	  <td id="T_a4274_row38_col35" class="data row38 col35" ></td>
	  <td id="T_a4274_row38_col36" class="data row38 col36" ></td>
	  <td id="T_a4274_row38_col37" class="data row38 col37" ></td>
	  <td id="T_a4274_row38_col38" class="data row38 col38" >102.99</td>
	  <td id="T_a4274_row38_col39" class="data row38 col39" >101.50</td>
	</tr>
	<tr>
	  <th id="T_a4274_level0_row39" class="row_heading level0 row39" >39</th>
	  <td id="T_a4274_row39_col0" class="data row39 col0" ></td>
	  <td id="T_a4274_row39_col1" class="data row39 col1" ></td>
	  <td id="T_a4274_row39_col2" class="data row39 col2" ></td>
	  <td id="T_a4274_row39_col3" class="data row39 col3" ></td>
	  <td id="T_a4274_row39_col4" class="data row39 col4" ></td>
	  <td id="T_a4274_row39_col5" class="data row39 col5" ></td>
	  <td id="T_a4274_row39_col6" class="data row39 col6" ></td>
	  <td id="T_a4274_row39_col7" class="data row39 col7" ></td>
	  <td id="T_a4274_row39_col8" class="data row39 col8" ></td>
	  <td id="T_a4274_row39_col9" class="data row39 col9" ></td>
	  <td id="T_a4274_row39_col10" class="data row39 col10" ></td>
	  <td id="T_a4274_row39_col11" class="data row39 col11" ></td>
	  <td id="T_a4274_row39_col12" class="data row39 col12" ></td>
	  <td id="T_a4274_row39_col13" class="data row39 col13" ></td>
	  <td id="T_a4274_row39_col14" class="data row39 col14" ></td>
	  <td id="T_a4274_row39_col15" class="data row39 col15" ></td>
	  <td id="T_a4274_row39_col16" class="data row39 col16" ></td>
	  <td id="T_a4274_row39_col17" class="data row39 col17" ></td>
	  <td id="T_a4274_row39_col18" class="data row39 col18" ></td>
	  <td id="T_a4274_row39_col19" class="data row39 col19" ></td>
	  <td id="T_a4274_row39_col20" class="data row39 col20" ></td>
	  <td id="T_a4274_row39_col21" class="data row39 col21" ></td>
	  <td id="T_a4274_row39_col22" class="data row39 col22" ></td>
	  <td id="T_a4274_row39_col23" class="data row39 col23" ></td>
	  <td id="T_a4274_row39_col24" class="data row39 col24" ></td>
	  <td id="T_a4274_row39_col25" class="data row39 col25" ></td>
	  <td id="T_a4274_row39_col26" class="data row39 col26" ></td>
	  <td id="T_a4274_row39_col27" class="data row39 col27" ></td>
	  <td id="T_a4274_row39_col28" class="data row39 col28" ></td>
	  <td id="T_a4274_row39_col29" class="data row39 col29" ></td>
	  <td id="T_a4274_row39_col30" class="data row39 col30" ></td>
	  <td id="T_a4274_row39_col31" class="data row39 col31" ></td>
	  <td id="T_a4274_row39_col32" class="data row39 col32" ></td>
	  <td id="T_a4274_row39_col33" class="data row39 col33" ></td>
	  <td id="T_a4274_row39_col34" class="data row39 col34" ></td>
	  <td id="T_a4274_row39_col35" class="data row39 col35" ></td>
	  <td id="T_a4274_row39_col36" class="data row39 col36" ></td>
	  <td id="T_a4274_row39_col37" class="data row39 col37" ></td>
	  <td id="T_a4274_row39_col38" class="data row39 col38" ></td>
	  <td id="T_a4274_row39_col39" class="data row39 col39" >101.50</td>
	</tr>
  </tbody>
</table>

### Calculate the Callable Portion of the Bond

This is where we introduce the payoff function of the call

```python
if CLEANCALL:
    undertree = cleantree
else:
    undertree = bondtree
    
calltree = bintree_pricing(payoff=payoff_call, ratetree=ratetree.iloc[:tsteps,:tsteps], undertree= undertree, style='american')
format_bintree(calltree)
```

<style type="text/css">
</style>
<table id="T_e2a0b_">
  <thead>
	<tr>
	  <th class="index_name level0" >time</th>
	  <th class="col_heading level0 col0" >0.0</th>
	  <th class="col_heading level0 col1" >0.25</th>
	  <th class="col_heading level0 col2" >0.5</th>
	  <th class="col_heading level0 col3" >0.75</th>
	  <th class="col_heading level0 col4" >1.0</th>
	  <th class="col_heading level0 col5" >1.25</th>
	  <th class="col_heading level0 col6" >1.5</th>
	  <th class="col_heading level0 col7" >1.75</th>
	  <th class="col_heading level0 col8" >2.0</th>
	  <th class="col_heading level0 col9" >2.25</th>
	  <th class="col_heading level0 col10" >2.5</th>
	  <th class="col_heading level0 col11" >2.75</th>
	  <th class="col_heading level0 col12" >3.0</th>
	  <th class="col_heading level0 col13" >3.25</th>
	  <th class="col_heading level0 col14" >3.5</th>
	  <th class="col_heading level0 col15" >3.75</th>
	  <th class="col_heading level0 col16" >4.0</th>
	  <th class="col_heading level0 col17" >4.25</th>
	  <th class="col_heading level0 col18" >4.5</th>
	  <th class="col_heading level0 col19" >4.75</th>
	  <th class="col_heading level0 col20" >5.0</th>
	  <th class="col_heading level0 col21" >5.25</th>
	  <th class="col_heading level0 col22" >5.5</th>
	  <th class="col_heading level0 col23" >5.75</th>
	  <th class="col_heading level0 col24" >6.0</th>
	  <th class="col_heading level0 col25" >6.25</th>
	  <th class="col_heading level0 col26" >6.5</th>
	  <th class="col_heading level0 col27" >6.75</th>
	  <th class="col_heading level0 col28" >7.0</th>
	  <th class="col_heading level0 col29" >7.25</th>
	  <th class="col_heading level0 col30" >7.5</th>
	  <th class="col_heading level0 col31" >7.75</th>
	  <th class="col_heading level0 col32" >8.0</th>
	  <th class="col_heading level0 col33" >8.25</th>
	  <th class="col_heading level0 col34" >8.5</th>
	  <th class="col_heading level0 col35" >8.75</th>
	  <th class="col_heading level0 col36" >9.0</th>
	  <th class="col_heading level0 col37" >9.25</th>
	  <th class="col_heading level0 col38" >9.5</th>
	  <th class="col_heading level0 col39" >9.75</th>
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
	  <th class="blank col13" >&nbsp;</th>
	  <th class="blank col14" >&nbsp;</th>
	  <th class="blank col15" >&nbsp;</th>
	  <th class="blank col16" >&nbsp;</th>
	  <th class="blank col17" >&nbsp;</th>
	  <th class="blank col18" >&nbsp;</th>
	  <th class="blank col19" >&nbsp;</th>
	  <th class="blank col20" >&nbsp;</th>
	  <th class="blank col21" >&nbsp;</th>
	  <th class="blank col22" >&nbsp;</th>
	  <th class="blank col23" >&nbsp;</th>
	  <th class="blank col24" >&nbsp;</th>
	  <th class="blank col25" >&nbsp;</th>
	  <th class="blank col26" >&nbsp;</th>
	  <th class="blank col27" >&nbsp;</th>
	  <th class="blank col28" >&nbsp;</th>
	  <th class="blank col29" >&nbsp;</th>
	  <th class="blank col30" >&nbsp;</th>
	  <th class="blank col31" >&nbsp;</th>
	  <th class="blank col32" >&nbsp;</th>
	  <th class="blank col33" >&nbsp;</th>
	  <th class="blank col34" >&nbsp;</th>
	  <th class="blank col35" >&nbsp;</th>
	  <th class="blank col36" >&nbsp;</th>
	  <th class="blank col37" >&nbsp;</th>
	  <th class="blank col38" >&nbsp;</th>
	  <th class="blank col39" >&nbsp;</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_e2a0b_level0_row0" class="row_heading level0 row0" >0</th>
	  <td id="T_e2a0b_row0_col0" class="data row0 col0" >19.56</td>
	  <td id="T_e2a0b_row0_col1" class="data row0 col1" >15.49</td>
	  <td id="T_e2a0b_row0_col2" class="data row0 col2" >11.89</td>
	  <td id="T_e2a0b_row0_col3" class="data row0 col3" >8.80</td>
	  <td id="T_e2a0b_row0_col4" class="data row0 col4" >6.29</td>
	  <td id="T_e2a0b_row0_col5" class="data row0 col5" >4.33</td>
	  <td id="T_e2a0b_row0_col6" class="data row0 col6" >2.85</td>
	  <td id="T_e2a0b_row0_col7" class="data row0 col7" >1.80</td>
	  <td id="T_e2a0b_row0_col8" class="data row0 col8" >1.09</td>
	  <td id="T_e2a0b_row0_col9" class="data row0 col9" >0.62</td>
	  <td id="T_e2a0b_row0_col10" class="data row0 col10" >0.33</td>
	  <td id="T_e2a0b_row0_col11" class="data row0 col11" >0.17</td>
	  <td id="T_e2a0b_row0_col12" class="data row0 col12" >0.08</td>
	  <td id="T_e2a0b_row0_col13" class="data row0 col13" >0.03</td>
	  <td id="T_e2a0b_row0_col14" class="data row0 col14" >0.01</td>
	  <td id="T_e2a0b_row0_col15" class="data row0 col15" >0.00</td>
	  <td id="T_e2a0b_row0_col16" class="data row0 col16" >0.00</td>
	  <td id="T_e2a0b_row0_col17" class="data row0 col17" >0.00</td>
	  <td id="T_e2a0b_row0_col18" class="data row0 col18" >0.00</td>
	  <td id="T_e2a0b_row0_col19" class="data row0 col19" >0.00</td>
	  <td id="T_e2a0b_row0_col20" class="data row0 col20" >0.00</td>
	  <td id="T_e2a0b_row0_col21" class="data row0 col21" >0.00</td>
	  <td id="T_e2a0b_row0_col22" class="data row0 col22" >0.00</td>
	  <td id="T_e2a0b_row0_col23" class="data row0 col23" >0.00</td>
	  <td id="T_e2a0b_row0_col24" class="data row0 col24" >0.00</td>
	  <td id="T_e2a0b_row0_col25" class="data row0 col25" >0.00</td>
	  <td id="T_e2a0b_row0_col26" class="data row0 col26" >0.00</td>
	  <td id="T_e2a0b_row0_col27" class="data row0 col27" >0.00</td>
	  <td id="T_e2a0b_row0_col28" class="data row0 col28" >0.00</td>
	  <td id="T_e2a0b_row0_col29" class="data row0 col29" >0.00</td>
	  <td id="T_e2a0b_row0_col30" class="data row0 col30" >0.00</td>
	  <td id="T_e2a0b_row0_col31" class="data row0 col31" >0.00</td>
	  <td id="T_e2a0b_row0_col32" class="data row0 col32" >0.00</td>
	  <td id="T_e2a0b_row0_col33" class="data row0 col33" >0.00</td>
	  <td id="T_e2a0b_row0_col34" class="data row0 col34" >0.00</td>
	  <td id="T_e2a0b_row0_col35" class="data row0 col35" >0.00</td>
	  <td id="T_e2a0b_row0_col36" class="data row0 col36" >0.00</td>
	  <td id="T_e2a0b_row0_col37" class="data row0 col37" >0.00</td>
	  <td id="T_e2a0b_row0_col38" class="data row0 col38" >0.00</td>
	  <td id="T_e2a0b_row0_col39" class="data row0 col39" >0.00</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row1" class="row_heading level0 row1" >1</th>
	  <td id="T_e2a0b_row1_col0" class="data row1 col0" ></td>
	  <td id="T_e2a0b_row1_col1" class="data row1 col1" >24.14</td>
	  <td id="T_e2a0b_row1_col2" class="data row1 col2" >19.52</td>
	  <td id="T_e2a0b_row1_col3" class="data row1 col3" >15.33</td>
	  <td id="T_e2a0b_row1_col4" class="data row1 col4" >11.59</td>
	  <td id="T_e2a0b_row1_col5" class="data row1 col5" >8.46</td>
	  <td id="T_e2a0b_row1_col6" class="data row1 col6" >5.95</td>
	  <td id="T_e2a0b_row1_col7" class="data row1 col7" >4.02</td>
	  <td id="T_e2a0b_row1_col8" class="data row1 col8" >2.60</td>
	  <td id="T_e2a0b_row1_col9" class="data row1 col9" >1.61</td>
	  <td id="T_e2a0b_row1_col10" class="data row1 col10" >0.95</td>
	  <td id="T_e2a0b_row1_col11" class="data row1 col11" >0.53</td>
	  <td id="T_e2a0b_row1_col12" class="data row1 col12" >0.27</td>
	  <td id="T_e2a0b_row1_col13" class="data row1 col13" >0.13</td>
	  <td id="T_e2a0b_row1_col14" class="data row1 col14" >0.06</td>
	  <td id="T_e2a0b_row1_col15" class="data row1 col15" >0.02</td>
	  <td id="T_e2a0b_row1_col16" class="data row1 col16" >0.01</td>
	  <td id="T_e2a0b_row1_col17" class="data row1 col17" >0.00</td>
	  <td id="T_e2a0b_row1_col18" class="data row1 col18" >0.00</td>
	  <td id="T_e2a0b_row1_col19" class="data row1 col19" >0.00</td>
	  <td id="T_e2a0b_row1_col20" class="data row1 col20" >0.00</td>
	  <td id="T_e2a0b_row1_col21" class="data row1 col21" >0.00</td>
	  <td id="T_e2a0b_row1_col22" class="data row1 col22" >0.00</td>
	  <td id="T_e2a0b_row1_col23" class="data row1 col23" >0.00</td>
	  <td id="T_e2a0b_row1_col24" class="data row1 col24" >0.00</td>
	  <td id="T_e2a0b_row1_col25" class="data row1 col25" >0.00</td>
	  <td id="T_e2a0b_row1_col26" class="data row1 col26" >0.00</td>
	  <td id="T_e2a0b_row1_col27" class="data row1 col27" >0.00</td>
	  <td id="T_e2a0b_row1_col28" class="data row1 col28" >0.00</td>
	  <td id="T_e2a0b_row1_col29" class="data row1 col29" >0.00</td>
	  <td id="T_e2a0b_row1_col30" class="data row1 col30" >0.00</td>
	  <td id="T_e2a0b_row1_col31" class="data row1 col31" >0.00</td>
	  <td id="T_e2a0b_row1_col32" class="data row1 col32" >0.00</td>
	  <td id="T_e2a0b_row1_col33" class="data row1 col33" >0.00</td>
	  <td id="T_e2a0b_row1_col34" class="data row1 col34" >0.00</td>
	  <td id="T_e2a0b_row1_col35" class="data row1 col35" >0.00</td>
	  <td id="T_e2a0b_row1_col36" class="data row1 col36" >0.00</td>
	  <td id="T_e2a0b_row1_col37" class="data row1 col37" >0.00</td>
	  <td id="T_e2a0b_row1_col38" class="data row1 col38" >0.00</td>
	  <td id="T_e2a0b_row1_col39" class="data row1 col39" >0.00</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row2" class="row_heading level0 row2" >2</th>
	  <td id="T_e2a0b_row2_col0" class="data row2 col0" ></td>
	  <td id="T_e2a0b_row2_col1" class="data row2 col1" ></td>
	  <td id="T_e2a0b_row2_col2" class="data row2 col2" >29.33</td>
	  <td id="T_e2a0b_row2_col3" class="data row2 col3" >24.19</td>
	  <td id="T_e2a0b_row2_col4" class="data row2 col4" >19.46</td>
	  <td id="T_e2a0b_row2_col5" class="data row2 col5" >15.03</td>
	  <td id="T_e2a0b_row2_col6" class="data row2 col6" >11.21</td>
	  <td id="T_e2a0b_row2_col7" class="data row2 col7" >8.08</td>
	  <td id="T_e2a0b_row2_col8" class="data row2 col8" >5.59</td>
	  <td id="T_e2a0b_row2_col9" class="data row2 col9" >3.72</td>
	  <td id="T_e2a0b_row2_col10" class="data row2 col10" >2.37</td>
	  <td id="T_e2a0b_row2_col11" class="data row2 col11" >1.44</td>
	  <td id="T_e2a0b_row2_col12" class="data row2 col12" >0.83</td>
	  <td id="T_e2a0b_row2_col13" class="data row2 col13" >0.45</td>
	  <td id="T_e2a0b_row2_col14" class="data row2 col14" >0.23</td>
	  <td id="T_e2a0b_row2_col15" class="data row2 col15" >0.10</td>
	  <td id="T_e2a0b_row2_col16" class="data row2 col16" >0.04</td>
	  <td id="T_e2a0b_row2_col17" class="data row2 col17" >0.02</td>
	  <td id="T_e2a0b_row2_col18" class="data row2 col18" >0.01</td>
	  <td id="T_e2a0b_row2_col19" class="data row2 col19" >0.00</td>
	  <td id="T_e2a0b_row2_col20" class="data row2 col20" >0.00</td>
	  <td id="T_e2a0b_row2_col21" class="data row2 col21" >0.00</td>
	  <td id="T_e2a0b_row2_col22" class="data row2 col22" >0.00</td>
	  <td id="T_e2a0b_row2_col23" class="data row2 col23" >0.00</td>
	  <td id="T_e2a0b_row2_col24" class="data row2 col24" >0.00</td>
	  <td id="T_e2a0b_row2_col25" class="data row2 col25" >0.00</td>
	  <td id="T_e2a0b_row2_col26" class="data row2 col26" >0.00</td>
	  <td id="T_e2a0b_row2_col27" class="data row2 col27" >0.00</td>
	  <td id="T_e2a0b_row2_col28" class="data row2 col28" >0.00</td>
	  <td id="T_e2a0b_row2_col29" class="data row2 col29" >0.00</td>
	  <td id="T_e2a0b_row2_col30" class="data row2 col30" >0.00</td>
	  <td id="T_e2a0b_row2_col31" class="data row2 col31" >0.00</td>
	  <td id="T_e2a0b_row2_col32" class="data row2 col32" >0.00</td>
	  <td id="T_e2a0b_row2_col33" class="data row2 col33" >0.00</td>
	  <td id="T_e2a0b_row2_col34" class="data row2 col34" >0.00</td>
	  <td id="T_e2a0b_row2_col35" class="data row2 col35" >0.00</td>
	  <td id="T_e2a0b_row2_col36" class="data row2 col36" >0.00</td>
	  <td id="T_e2a0b_row2_col37" class="data row2 col37" >0.00</td>
	  <td id="T_e2a0b_row2_col38" class="data row2 col38" >0.00</td>
	  <td id="T_e2a0b_row2_col39" class="data row2 col39" >0.00</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row3" class="row_heading level0 row3" >3</th>
	  <td id="T_e2a0b_row3_col0" class="data row3 col0" ></td>
	  <td id="T_e2a0b_row3_col1" class="data row3 col1" ></td>
	  <td id="T_e2a0b_row3_col2" class="data row3 col2" ></td>
	  <td id="T_e2a0b_row3_col3" class="data row3 col3" >33.95</td>
	  <td id="T_e2a0b_row3_col4" class="data row3 col4" >29.40</td>
	  <td id="T_e2a0b_row3_col5" class="data row3 col5" >24.30</td>
	  <td id="T_e2a0b_row3_col6" class="data row3 col6" >19.19</td>
	  <td id="T_e2a0b_row3_col7" class="data row3 col7" >14.63</td>
	  <td id="T_e2a0b_row3_col8" class="data row3 col8" >10.83</td>
	  <td id="T_e2a0b_row3_col9" class="data row3 col9" >7.67</td>
	  <td id="T_e2a0b_row3_col10" class="data row3 col10" >5.23</td>
	  <td id="T_e2a0b_row3_col11" class="data row3 col11" >3.43</td>
	  <td id="T_e2a0b_row3_col12" class="data row3 col12" >2.15</td>
	  <td id="T_e2a0b_row3_col13" class="data row3 col13" >1.28</td>
	  <td id="T_e2a0b_row3_col14" class="data row3 col14" >0.72</td>
	  <td id="T_e2a0b_row3_col15" class="data row3 col15" >0.38</td>
	  <td id="T_e2a0b_row3_col16" class="data row3 col16" >0.19</td>
	  <td id="T_e2a0b_row3_col17" class="data row3 col17" >0.08</td>
	  <td id="T_e2a0b_row3_col18" class="data row3 col18" >0.03</td>
	  <td id="T_e2a0b_row3_col19" class="data row3 col19" >0.01</td>
	  <td id="T_e2a0b_row3_col20" class="data row3 col20" >0.00</td>
	  <td id="T_e2a0b_row3_col21" class="data row3 col21" >0.00</td>
	  <td id="T_e2a0b_row3_col22" class="data row3 col22" >0.00</td>
	  <td id="T_e2a0b_row3_col23" class="data row3 col23" >0.00</td>
	  <td id="T_e2a0b_row3_col24" class="data row3 col24" >0.00</td>
	  <td id="T_e2a0b_row3_col25" class="data row3 col25" >0.00</td>
	  <td id="T_e2a0b_row3_col26" class="data row3 col26" >0.00</td>
	  <td id="T_e2a0b_row3_col27" class="data row3 col27" >0.00</td>
	  <td id="T_e2a0b_row3_col28" class="data row3 col28" >0.00</td>
	  <td id="T_e2a0b_row3_col29" class="data row3 col29" >0.00</td>
	  <td id="T_e2a0b_row3_col30" class="data row3 col30" >0.00</td>
	  <td id="T_e2a0b_row3_col31" class="data row3 col31" >0.00</td>
	  <td id="T_e2a0b_row3_col32" class="data row3 col32" >0.00</td>
	  <td id="T_e2a0b_row3_col33" class="data row3 col33" >0.00</td>
	  <td id="T_e2a0b_row3_col34" class="data row3 col34" >0.00</td>
	  <td id="T_e2a0b_row3_col35" class="data row3 col35" >0.00</td>
	  <td id="T_e2a0b_row3_col36" class="data row3 col36" >0.00</td>
	  <td id="T_e2a0b_row3_col37" class="data row3 col37" >0.00</td>
	  <td id="T_e2a0b_row3_col38" class="data row3 col38" >0.00</td>
	  <td id="T_e2a0b_row3_col39" class="data row3 col39" >0.00</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row4" class="row_heading level0 row4" >4</th>
	  <td id="T_e2a0b_row4_col0" class="data row4 col0" ></td>
	  <td id="T_e2a0b_row4_col1" class="data row4 col1" ></td>
	  <td id="T_e2a0b_row4_col2" class="data row4 col2" ></td>
	  <td id="T_e2a0b_row4_col3" class="data row4 col3" ></td>
	  <td id="T_e2a0b_row4_col4" class="data row4 col4" >37.46</td>
	  <td id="T_e2a0b_row4_col5" class="data row4 col5" >33.42</td>
	  <td id="T_e2a0b_row4_col6" class="data row4 col6" >28.99</td>
	  <td id="T_e2a0b_row4_col7" class="data row4 col7" >24.11</td>
	  <td id="T_e2a0b_row4_col8" class="data row4 col8" >18.77</td>
	  <td id="T_e2a0b_row4_col9" class="data row4 col9" >14.26</td>
	  <td id="T_e2a0b_row4_col10" class="data row4 col10" >10.36</td>
	  <td id="T_e2a0b_row4_col11" class="data row4 col11" >7.24</td>
	  <td id="T_e2a0b_row4_col12" class="data row4 col12" >4.89</td>
	  <td id="T_e2a0b_row4_col13" class="data row4 col13" >3.16</td>
	  <td id="T_e2a0b_row4_col14" class="data row4 col14" >1.94</td>
	  <td id="T_e2a0b_row4_col15" class="data row4 col15" >1.13</td>
	  <td id="T_e2a0b_row4_col16" class="data row4 col16" >0.62</td>
	  <td id="T_e2a0b_row4_col17" class="data row4 col17" >0.32</td>
	  <td id="T_e2a0b_row4_col18" class="data row4 col18" >0.15</td>
	  <td id="T_e2a0b_row4_col19" class="data row4 col19" >0.06</td>
	  <td id="T_e2a0b_row4_col20" class="data row4 col20" >0.02</td>
	  <td id="T_e2a0b_row4_col21" class="data row4 col21" >0.01</td>
	  <td id="T_e2a0b_row4_col22" class="data row4 col22" >0.00</td>
	  <td id="T_e2a0b_row4_col23" class="data row4 col23" >0.00</td>
	  <td id="T_e2a0b_row4_col24" class="data row4 col24" >0.00</td>
	  <td id="T_e2a0b_row4_col25" class="data row4 col25" >0.00</td>
	  <td id="T_e2a0b_row4_col26" class="data row4 col26" >0.00</td>
	  <td id="T_e2a0b_row4_col27" class="data row4 col27" >0.00</td>
	  <td id="T_e2a0b_row4_col28" class="data row4 col28" >0.00</td>
	  <td id="T_e2a0b_row4_col29" class="data row4 col29" >0.00</td>
	  <td id="T_e2a0b_row4_col30" class="data row4 col30" >0.00</td>
	  <td id="T_e2a0b_row4_col31" class="data row4 col31" >0.00</td>
	  <td id="T_e2a0b_row4_col32" class="data row4 col32" >0.00</td>
	  <td id="T_e2a0b_row4_col33" class="data row4 col33" >0.00</td>
	  <td id="T_e2a0b_row4_col34" class="data row4 col34" >0.00</td>
	  <td id="T_e2a0b_row4_col35" class="data row4 col35" >0.00</td>
	  <td id="T_e2a0b_row4_col36" class="data row4 col36" >0.00</td>
	  <td id="T_e2a0b_row4_col37" class="data row4 col37" >0.00</td>
	  <td id="T_e2a0b_row4_col38" class="data row4 col38" >0.00</td>
	  <td id="T_e2a0b_row4_col39" class="data row4 col39" >0.00</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row5" class="row_heading level0 row5" >5</th>
	  <td id="T_e2a0b_row5_col0" class="data row5 col0" ></td>
	  <td id="T_e2a0b_row5_col1" class="data row5 col1" ></td>
	  <td id="T_e2a0b_row5_col2" class="data row5 col2" ></td>
	  <td id="T_e2a0b_row5_col3" class="data row5 col3" ></td>
	  <td id="T_e2a0b_row5_col4" class="data row5 col4" ></td>
	  <td id="T_e2a0b_row5_col5" class="data row5 col5" >39.70</td>
	  <td id="T_e2a0b_row5_col6" class="data row5 col6" >36.18</td>
	  <td id="T_e2a0b_row5_col7" class="data row5 col7" >32.32</td>
	  <td id="T_e2a0b_row5_col8" class="data row5 col8" >28.11</td>
	  <td id="T_e2a0b_row5_col9" class="data row5 col9" >23.48</td>
	  <td id="T_e2a0b_row5_col10" class="data row5 col10" >18.44</td>
	  <td id="T_e2a0b_row5_col11" class="data row5 col11" >13.73</td>
	  <td id="T_e2a0b_row5_col12" class="data row5 col12" >9.82</td>
	  <td id="T_e2a0b_row5_col13" class="data row5 col13" >6.80</td>
	  <td id="T_e2a0b_row5_col14" class="data row5 col14" >4.53</td>
	  <td id="T_e2a0b_row5_col15" class="data row5 col15" >2.87</td>
	  <td id="T_e2a0b_row5_col16" class="data row5 col16" >1.73</td>
	  <td id="T_e2a0b_row5_col17" class="data row5 col17" >0.99</td>
	  <td id="T_e2a0b_row5_col18" class="data row5 col18" >0.53</td>
	  <td id="T_e2a0b_row5_col19" class="data row5 col19" >0.26</td>
	  <td id="T_e2a0b_row5_col20" class="data row5 col20" >0.12</td>
	  <td id="T_e2a0b_row5_col21" class="data row5 col21" >0.05</td>
	  <td id="T_e2a0b_row5_col22" class="data row5 col22" >0.02</td>
	  <td id="T_e2a0b_row5_col23" class="data row5 col23" >0.00</td>
	  <td id="T_e2a0b_row5_col24" class="data row5 col24" >0.00</td>
	  <td id="T_e2a0b_row5_col25" class="data row5 col25" >0.00</td>
	  <td id="T_e2a0b_row5_col26" class="data row5 col26" >0.00</td>
	  <td id="T_e2a0b_row5_col27" class="data row5 col27" >0.00</td>
	  <td id="T_e2a0b_row5_col28" class="data row5 col28" >0.00</td>
	  <td id="T_e2a0b_row5_col29" class="data row5 col29" >0.00</td>
	  <td id="T_e2a0b_row5_col30" class="data row5 col30" >0.00</td>
	  <td id="T_e2a0b_row5_col31" class="data row5 col31" >0.00</td>
	  <td id="T_e2a0b_row5_col32" class="data row5 col32" >0.00</td>
	  <td id="T_e2a0b_row5_col33" class="data row5 col33" >0.00</td>
	  <td id="T_e2a0b_row5_col34" class="data row5 col34" >0.00</td>
	  <td id="T_e2a0b_row5_col35" class="data row5 col35" >0.00</td>
	  <td id="T_e2a0b_row5_col36" class="data row5 col36" >0.00</td>
	  <td id="T_e2a0b_row5_col37" class="data row5 col37" >0.00</td>
	  <td id="T_e2a0b_row5_col38" class="data row5 col38" >0.00</td>
	  <td id="T_e2a0b_row5_col39" class="data row5 col39" >0.00</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row6" class="row_heading level0 row6" >6</th>
	  <td id="T_e2a0b_row6_col0" class="data row6 col0" ></td>
	  <td id="T_e2a0b_row6_col1" class="data row6 col1" ></td>
	  <td id="T_e2a0b_row6_col2" class="data row6 col2" ></td>
	  <td id="T_e2a0b_row6_col3" class="data row6 col3" ></td>
	  <td id="T_e2a0b_row6_col4" class="data row6 col4" ></td>
	  <td id="T_e2a0b_row6_col5" class="data row6 col5" ></td>
	  <td id="T_e2a0b_row6_col6" class="data row6 col6" >41.03</td>
	  <td id="T_e2a0b_row6_col7" class="data row6 col7" >37.92</td>
	  <td id="T_e2a0b_row6_col8" class="data row6 col8" >34.55</td>
	  <td id="T_e2a0b_row6_col9" class="data row6 col9" >30.88</td>
	  <td id="T_e2a0b_row6_col10" class="data row6 col10" >26.90</td>
	  <td id="T_e2a0b_row6_col11" class="data row6 col11" >22.57</td>
	  <td id="T_e2a0b_row6_col12" class="data row6 col12" >17.88</td>
	  <td id="T_e2a0b_row6_col13" class="data row6 col13" >13.05</td>
	  <td id="T_e2a0b_row6_col14" class="data row6 col14" >9.24</td>
	  <td id="T_e2a0b_row6_col15" class="data row6 col15" >6.34</td>
	  <td id="T_e2a0b_row6_col16" class="data row6 col16" >4.14</td>
	  <td id="T_e2a0b_row6_col17" class="data row6 col17" >2.58</td>
	  <td id="T_e2a0b_row6_col18" class="data row6 col18" >1.52</td>
	  <td id="T_e2a0b_row6_col19" class="data row6 col19" >0.84</td>
	  <td id="T_e2a0b_row6_col20" class="data row6 col20" >0.44</td>
	  <td id="T_e2a0b_row6_col21" class="data row6 col21" >0.20</td>
	  <td id="T_e2a0b_row6_col22" class="data row6 col22" >0.09</td>
	  <td id="T_e2a0b_row6_col23" class="data row6 col23" >0.03</td>
	  <td id="T_e2a0b_row6_col24" class="data row6 col24" >0.01</td>
	  <td id="T_e2a0b_row6_col25" class="data row6 col25" >0.00</td>
	  <td id="T_e2a0b_row6_col26" class="data row6 col26" >0.00</td>
	  <td id="T_e2a0b_row6_col27" class="data row6 col27" >0.00</td>
	  <td id="T_e2a0b_row6_col28" class="data row6 col28" >0.00</td>
	  <td id="T_e2a0b_row6_col29" class="data row6 col29" >0.00</td>
	  <td id="T_e2a0b_row6_col30" class="data row6 col30" >0.00</td>
	  <td id="T_e2a0b_row6_col31" class="data row6 col31" >0.00</td>
	  <td id="T_e2a0b_row6_col32" class="data row6 col32" >0.00</td>
	  <td id="T_e2a0b_row6_col33" class="data row6 col33" >0.00</td>
	  <td id="T_e2a0b_row6_col34" class="data row6 col34" >0.00</td>
	  <td id="T_e2a0b_row6_col35" class="data row6 col35" >0.00</td>
	  <td id="T_e2a0b_row6_col36" class="data row6 col36" >0.00</td>
	  <td id="T_e2a0b_row6_col37" class="data row6 col37" >0.00</td>
	  <td id="T_e2a0b_row6_col38" class="data row6 col38" >0.00</td>
	  <td id="T_e2a0b_row6_col39" class="data row6 col39" >0.00</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row7" class="row_heading level0 row7" >7</th>
	  <td id="T_e2a0b_row7_col0" class="data row7 col0" ></td>
	  <td id="T_e2a0b_row7_col1" class="data row7 col1" ></td>
	  <td id="T_e2a0b_row7_col2" class="data row7 col2" ></td>
	  <td id="T_e2a0b_row7_col3" class="data row7 col3" ></td>
	  <td id="T_e2a0b_row7_col4" class="data row7 col4" ></td>
	  <td id="T_e2a0b_row7_col5" class="data row7 col5" ></td>
	  <td id="T_e2a0b_row7_col6" class="data row7 col6" ></td>
	  <td id="T_e2a0b_row7_col7" class="data row7 col7" >41.67</td>
	  <td id="T_e2a0b_row7_col8" class="data row7 col8" >38.90</td>
	  <td id="T_e2a0b_row7_col9" class="data row7 col9" >35.91</td>
	  <td id="T_e2a0b_row7_col10" class="data row7 col10" >32.70</td>
	  <td id="T_e2a0b_row7_col11" class="data row7 col11" >29.24</td>
	  <td id="T_e2a0b_row7_col12" class="data row7 col12" >25.52</td>
	  <td id="T_e2a0b_row7_col13" class="data row7 col13" >21.46</td>
	  <td id="T_e2a0b_row7_col14" class="data row7 col14" >17.06</td>
	  <td id="T_e2a0b_row7_col15" class="data row7 col15" >12.33</td>
	  <td id="T_e2a0b_row7_col16" class="data row7 col16" >8.71</td>
	  <td id="T_e2a0b_row7_col17" class="data row7 col17" >5.84</td>
	  <td id="T_e2a0b_row7_col18" class="data row7 col18" >3.74</td>
	  <td id="T_e2a0b_row7_col19" class="data row7 col19" >2.28</td>
	  <td id="T_e2a0b_row7_col20" class="data row7 col20" >1.31</td>
	  <td id="T_e2a0b_row7_col21" class="data row7 col21" >0.70</td>
	  <td id="T_e2a0b_row7_col22" class="data row7 col22" >0.35</td>
	  <td id="T_e2a0b_row7_col23" class="data row7 col23" >0.15</td>
	  <td id="T_e2a0b_row7_col24" class="data row7 col24" >0.06</td>
	  <td id="T_e2a0b_row7_col25" class="data row7 col25" >0.02</td>
	  <td id="T_e2a0b_row7_col26" class="data row7 col26" >0.00</td>
	  <td id="T_e2a0b_row7_col27" class="data row7 col27" >0.00</td>
	  <td id="T_e2a0b_row7_col28" class="data row7 col28" >0.00</td>
	  <td id="T_e2a0b_row7_col29" class="data row7 col29" >0.00</td>
	  <td id="T_e2a0b_row7_col30" class="data row7 col30" >0.00</td>
	  <td id="T_e2a0b_row7_col31" class="data row7 col31" >0.00</td>
	  <td id="T_e2a0b_row7_col32" class="data row7 col32" >0.00</td>
	  <td id="T_e2a0b_row7_col33" class="data row7 col33" >0.00</td>
	  <td id="T_e2a0b_row7_col34" class="data row7 col34" >0.00</td>
	  <td id="T_e2a0b_row7_col35" class="data row7 col35" >0.00</td>
	  <td id="T_e2a0b_row7_col36" class="data row7 col36" >0.00</td>
	  <td id="T_e2a0b_row7_col37" class="data row7 col37" >0.00</td>
	  <td id="T_e2a0b_row7_col38" class="data row7 col38" >0.00</td>
	  <td id="T_e2a0b_row7_col39" class="data row7 col39" >0.00</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row8" class="row_heading level0 row8" >8</th>
	  <td id="T_e2a0b_row8_col0" class="data row8 col0" ></td>
	  <td id="T_e2a0b_row8_col1" class="data row8 col1" ></td>
	  <td id="T_e2a0b_row8_col2" class="data row8 col2" ></td>
	  <td id="T_e2a0b_row8_col3" class="data row8 col3" ></td>
	  <td id="T_e2a0b_row8_col4" class="data row8 col4" ></td>
	  <td id="T_e2a0b_row8_col5" class="data row8 col5" ></td>
	  <td id="T_e2a0b_row8_col6" class="data row8 col6" ></td>
	  <td id="T_e2a0b_row8_col7" class="data row8 col7" ></td>
	  <td id="T_e2a0b_row8_col8" class="data row8 col8" >41.81</td>
	  <td id="T_e2a0b_row8_col9" class="data row8 col9" >39.30</td>
	  <td id="T_e2a0b_row8_col10" class="data row8 col10" >36.63</td>
	  <td id="T_e2a0b_row8_col11" class="data row8 col11" >33.79</td>
	  <td id="T_e2a0b_row8_col12" class="data row8 col12" >30.75</td>
	  <td id="T_e2a0b_row8_col13" class="data row8 col13" >27.48</td>
	  <td id="T_e2a0b_row8_col14" class="data row8 col14" >23.96</td>
	  <td id="T_e2a0b_row8_col15" class="data row8 col15" >20.18</td>
	  <td id="T_e2a0b_row8_col16" class="data row8 col16" >16.13</td>
	  <td id="T_e2a0b_row8_col17" class="data row8 col17" >11.75</td>
	  <td id="T_e2a0b_row8_col18" class="data row8 col18" >8.08</td>
	  <td id="T_e2a0b_row8_col19" class="data row8 col19" >5.31</td>
	  <td id="T_e2a0b_row8_col20" class="data row8 col20" >3.33</td>
	  <td id="T_e2a0b_row8_col21" class="data row8 col21" >1.99</td>
	  <td id="T_e2a0b_row8_col22" class="data row8 col22" >1.11</td>
	  <td id="T_e2a0b_row8_col23" class="data row8 col23" >0.57</td>
	  <td id="T_e2a0b_row8_col24" class="data row8 col24" >0.26</td>
	  <td id="T_e2a0b_row8_col25" class="data row8 col25" >0.11</td>
	  <td id="T_e2a0b_row8_col26" class="data row8 col26" >0.04</td>
	  <td id="T_e2a0b_row8_col27" class="data row8 col27" >0.01</td>
	  <td id="T_e2a0b_row8_col28" class="data row8 col28" >0.00</td>
	  <td id="T_e2a0b_row8_col29" class="data row8 col29" >0.00</td>
	  <td id="T_e2a0b_row8_col30" class="data row8 col30" >0.00</td>
	  <td id="T_e2a0b_row8_col31" class="data row8 col31" >0.00</td>
	  <td id="T_e2a0b_row8_col32" class="data row8 col32" >0.00</td>
	  <td id="T_e2a0b_row8_col33" class="data row8 col33" >0.00</td>
	  <td id="T_e2a0b_row8_col34" class="data row8 col34" >0.00</td>
	  <td id="T_e2a0b_row8_col35" class="data row8 col35" >0.00</td>
	  <td id="T_e2a0b_row8_col36" class="data row8 col36" >0.00</td>
	  <td id="T_e2a0b_row8_col37" class="data row8 col37" >0.00</td>
	  <td id="T_e2a0b_row8_col38" class="data row8 col38" >0.00</td>
	  <td id="T_e2a0b_row8_col39" class="data row8 col39" >0.00</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row9" class="row_heading level0 row9" >9</th>
	  <td id="T_e2a0b_row9_col0" class="data row9 col0" ></td>
	  <td id="T_e2a0b_row9_col1" class="data row9 col1" ></td>
	  <td id="T_e2a0b_row9_col2" class="data row9 col2" ></td>
	  <td id="T_e2a0b_row9_col3" class="data row9 col3" ></td>
	  <td id="T_e2a0b_row9_col4" class="data row9 col4" ></td>
	  <td id="T_e2a0b_row9_col5" class="data row9 col5" ></td>
	  <td id="T_e2a0b_row9_col6" class="data row9 col6" ></td>
	  <td id="T_e2a0b_row9_col7" class="data row9 col7" ></td>
	  <td id="T_e2a0b_row9_col8" class="data row9 col8" ></td>
	  <td id="T_e2a0b_row9_col9" class="data row9 col9" >41.57</td>
	  <td id="T_e2a0b_row9_col10" class="data row9 col10" >39.27</td>
	  <td id="T_e2a0b_row9_col11" class="data row9 col11" >36.85</td>
	  <td id="T_e2a0b_row9_col12" class="data row9 col12" >34.30</td>
	  <td id="T_e2a0b_row9_col13" class="data row9 col13" >31.58</td>
	  <td id="T_e2a0b_row9_col14" class="data row9 col14" >28.68</td>
	  <td id="T_e2a0b_row9_col15" class="data row9 col15" >25.59</td>
	  <td id="T_e2a0b_row9_col16" class="data row9 col16" >22.31</td>
	  <td id="T_e2a0b_row9_col17" class="data row9 col17" >18.78</td>
	  <td id="T_e2a0b_row9_col18" class="data row9 col18" >15.00</td>
	  <td id="T_e2a0b_row9_col19" class="data row9 col19" >10.99</td>
	  <td id="T_e2a0b_row9_col20" class="data row9 col20" >7.42</td>
	  <td id="T_e2a0b_row9_col21" class="data row9 col21" >4.78</td>
	  <td id="T_e2a0b_row9_col22" class="data row9 col22" >2.94</td>
	  <td id="T_e2a0b_row9_col23" class="data row9 col23" >1.70</td>
	  <td id="T_e2a0b_row9_col24" class="data row9 col24" >0.91</td>
	  <td id="T_e2a0b_row9_col25" class="data row9 col25" >0.44</td>
	  <td id="T_e2a0b_row9_col26" class="data row9 col26" >0.18</td>
	  <td id="T_e2a0b_row9_col27" class="data row9 col27" >0.07</td>
	  <td id="T_e2a0b_row9_col28" class="data row9 col28" >0.02</td>
	  <td id="T_e2a0b_row9_col29" class="data row9 col29" >0.00</td>
	  <td id="T_e2a0b_row9_col30" class="data row9 col30" >0.00</td>
	  <td id="T_e2a0b_row9_col31" class="data row9 col31" >0.00</td>
	  <td id="T_e2a0b_row9_col32" class="data row9 col32" >0.00</td>
	  <td id="T_e2a0b_row9_col33" class="data row9 col33" >0.00</td>
	  <td id="T_e2a0b_row9_col34" class="data row9 col34" >0.00</td>
	  <td id="T_e2a0b_row9_col35" class="data row9 col35" >0.00</td>
	  <td id="T_e2a0b_row9_col36" class="data row9 col36" >0.00</td>
	  <td id="T_e2a0b_row9_col37" class="data row9 col37" >0.00</td>
	  <td id="T_e2a0b_row9_col38" class="data row9 col38" >0.00</td>
	  <td id="T_e2a0b_row9_col39" class="data row9 col39" >0.00</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row10" class="row_heading level0 row10" >10</th>
	  <td id="T_e2a0b_row10_col0" class="data row10 col0" ></td>
	  <td id="T_e2a0b_row10_col1" class="data row10 col1" ></td>
	  <td id="T_e2a0b_row10_col2" class="data row10 col2" ></td>
	  <td id="T_e2a0b_row10_col3" class="data row10 col3" ></td>
	  <td id="T_e2a0b_row10_col4" class="data row10 col4" ></td>
	  <td id="T_e2a0b_row10_col5" class="data row10 col5" ></td>
	  <td id="T_e2a0b_row10_col6" class="data row10 col6" ></td>
	  <td id="T_e2a0b_row10_col7" class="data row10 col7" ></td>
	  <td id="T_e2a0b_row10_col8" class="data row10 col8" ></td>
	  <td id="T_e2a0b_row10_col9" class="data row10 col9" ></td>
	  <td id="T_e2a0b_row10_col10" class="data row10 col10" >41.05</td>
	  <td id="T_e2a0b_row10_col11" class="data row10 col11" >38.92</td>
	  <td id="T_e2a0b_row10_col12" class="data row10 col12" >36.70</td>
	  <td id="T_e2a0b_row10_col13" class="data row10 col13" >34.36</td>
	  <td id="T_e2a0b_row10_col14" class="data row10 col14" >31.90</td>
	  <td id="T_e2a0b_row10_col15" class="data row10 col15" >29.31</td>
	  <td id="T_e2a0b_row10_col16" class="data row10 col16" >26.57</td>
	  <td id="T_e2a0b_row10_col17" class="data row10 col17" >23.65</td>
	  <td id="T_e2a0b_row10_col18" class="data row10 col18" >20.56</td>
	  <td id="T_e2a0b_row10_col19" class="data row10 col19" >17.29</td>
	  <td id="T_e2a0b_row10_col20" class="data row10 col20" >13.85</td>
	  <td id="T_e2a0b_row10_col21" class="data row10 col21" >10.19</td>
	  <td id="T_e2a0b_row10_col22" class="data row10 col22" >6.73</td>
	  <td id="T_e2a0b_row10_col23" class="data row10 col23" >4.25</td>
	  <td id="T_e2a0b_row10_col24" class="data row10 col24" >2.55</td>
	  <td id="T_e2a0b_row10_col25" class="data row10 col25" >1.42</td>
	  <td id="T_e2a0b_row10_col26" class="data row10 col26" >0.71</td>
	  <td id="T_e2a0b_row10_col27" class="data row10 col27" >0.31</td>
	  <td id="T_e2a0b_row10_col28" class="data row10 col28" >0.12</td>
	  <td id="T_e2a0b_row10_col29" class="data row10 col29" >0.04</td>
	  <td id="T_e2a0b_row10_col30" class="data row10 col30" >0.01</td>
	  <td id="T_e2a0b_row10_col31" class="data row10 col31" >0.00</td>
	  <td id="T_e2a0b_row10_col32" class="data row10 col32" >0.00</td>
	  <td id="T_e2a0b_row10_col33" class="data row10 col33" >0.00</td>
	  <td id="T_e2a0b_row10_col34" class="data row10 col34" >0.00</td>
	  <td id="T_e2a0b_row10_col35" class="data row10 col35" >0.00</td>
	  <td id="T_e2a0b_row10_col36" class="data row10 col36" >0.00</td>
	  <td id="T_e2a0b_row10_col37" class="data row10 col37" >0.00</td>
	  <td id="T_e2a0b_row10_col38" class="data row10 col38" >0.00</td>
	  <td id="T_e2a0b_row10_col39" class="data row10 col39" >0.00</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row11" class="row_heading level0 row11" >11</th>
	  <td id="T_e2a0b_row11_col0" class="data row11 col0" ></td>
	  <td id="T_e2a0b_row11_col1" class="data row11 col1" ></td>
	  <td id="T_e2a0b_row11_col2" class="data row11 col2" ></td>
	  <td id="T_e2a0b_row11_col3" class="data row11 col3" ></td>
	  <td id="T_e2a0b_row11_col4" class="data row11 col4" ></td>
	  <td id="T_e2a0b_row11_col5" class="data row11 col5" ></td>
	  <td id="T_e2a0b_row11_col6" class="data row11 col6" ></td>
	  <td id="T_e2a0b_row11_col7" class="data row11 col7" ></td>
	  <td id="T_e2a0b_row11_col8" class="data row11 col8" ></td>
	  <td id="T_e2a0b_row11_col9" class="data row11 col9" ></td>
	  <td id="T_e2a0b_row11_col10" class="data row11 col10" ></td>
	  <td id="T_e2a0b_row11_col11" class="data row11 col11" >40.34</td>
	  <td id="T_e2a0b_row11_col12" class="data row11 col12" >38.34</td>
	  <td id="T_e2a0b_row11_col13" class="data row11 col13" >36.26</td>
	  <td id="T_e2a0b_row11_col14" class="data row11 col14" >34.10</td>
	  <td id="T_e2a0b_row11_col15" class="data row11 col15" >31.85</td>
	  <td id="T_e2a0b_row11_col16" class="data row11 col16" >29.49</td>
	  <td id="T_e2a0b_row11_col17" class="data row11 col17" >27.02</td>
	  <td id="T_e2a0b_row11_col18" class="data row11 col18" >24.41</td>
	  <td id="T_e2a0b_row11_col19" class="data row11 col19" >21.68</td>
	  <td id="T_e2a0b_row11_col20" class="data row11 col20" >18.82</td>
	  <td id="T_e2a0b_row11_col21" class="data row11 col21" >15.81</td>
	  <td id="T_e2a0b_row11_col22" class="data row11 col22" >12.65</td>
	  <td id="T_e2a0b_row11_col23" class="data row11 col23" >9.33</td>
	  <td id="T_e2a0b_row11_col24" class="data row11 col24" >6.05</td>
	  <td id="T_e2a0b_row11_col25" class="data row11 col25" >3.76</td>
	  <td id="T_e2a0b_row11_col26" class="data row11 col26" >2.19</td>
	  <td id="T_e2a0b_row11_col27" class="data row11 col27" >1.14</td>
	  <td id="T_e2a0b_row11_col28" class="data row11 col28" >0.53</td>
	  <td id="T_e2a0b_row11_col29" class="data row11 col29" >0.21</td>
	  <td id="T_e2a0b_row11_col30" class="data row11 col30" >0.07</td>
	  <td id="T_e2a0b_row11_col31" class="data row11 col31" >0.02</td>
	  <td id="T_e2a0b_row11_col32" class="data row11 col32" >0.00</td>
	  <td id="T_e2a0b_row11_col33" class="data row11 col33" >0.00</td>
	  <td id="T_e2a0b_row11_col34" class="data row11 col34" >0.00</td>
	  <td id="T_e2a0b_row11_col35" class="data row11 col35" >0.00</td>
	  <td id="T_e2a0b_row11_col36" class="data row11 col36" >0.00</td>
	  <td id="T_e2a0b_row11_col37" class="data row11 col37" >0.00</td>
	  <td id="T_e2a0b_row11_col38" class="data row11 col38" >0.00</td>
	  <td id="T_e2a0b_row11_col39" class="data row11 col39" >0.00</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row12" class="row_heading level0 row12" >12</th>
	  <td id="T_e2a0b_row12_col0" class="data row12 col0" ></td>
	  <td id="T_e2a0b_row12_col1" class="data row12 col1" ></td>
	  <td id="T_e2a0b_row12_col2" class="data row12 col2" ></td>
	  <td id="T_e2a0b_row12_col3" class="data row12 col3" ></td>
	  <td id="T_e2a0b_row12_col4" class="data row12 col4" ></td>
	  <td id="T_e2a0b_row12_col5" class="data row12 col5" ></td>
	  <td id="T_e2a0b_row12_col6" class="data row12 col6" ></td>
	  <td id="T_e2a0b_row12_col7" class="data row12 col7" ></td>
	  <td id="T_e2a0b_row12_col8" class="data row12 col8" ></td>
	  <td id="T_e2a0b_row12_col9" class="data row12 col9" ></td>
	  <td id="T_e2a0b_row12_col10" class="data row12 col10" ></td>
	  <td id="T_e2a0b_row12_col11" class="data row12 col11" ></td>
	  <td id="T_e2a0b_row12_col12" class="data row12 col12" >39.46</td>
	  <td id="T_e2a0b_row12_col13" class="data row12 col13" >37.56</td>
	  <td id="T_e2a0b_row12_col14" class="data row12 col14" >35.61</td>
	  <td id="T_e2a0b_row12_col15" class="data row12 col15" >33.59</td>
	  <td id="T_e2a0b_row12_col16" class="data row12 col16" >31.50</td>
	  <td id="T_e2a0b_row12_col17" class="data row12 col17" >29.33</td>
	  <td id="T_e2a0b_row12_col18" class="data row12 col18" >27.07</td>
	  <td id="T_e2a0b_row12_col19" class="data row12 col19" >24.72</td>
	  <td id="T_e2a0b_row12_col20" class="data row12 col20" >22.28</td>
	  <td id="T_e2a0b_row12_col21" class="data row12 col21" >19.73</td>
	  <td id="T_e2a0b_row12_col22" class="data row12 col22" >17.08</td>
	  <td id="T_e2a0b_row12_col23" class="data row12 col23" >14.31</td>
	  <td id="T_e2a0b_row12_col24" class="data row12 col24" >11.44</td>
	  <td id="T_e2a0b_row12_col25" class="data row12 col25" >8.46</td>
	  <td id="T_e2a0b_row12_col26" class="data row12 col26" >5.42</td>
	  <td id="T_e2a0b_row12_col27" class="data row12 col27" >3.30</td>
	  <td id="T_e2a0b_row12_col28" class="data row12 col28" >1.79</td>
	  <td id="T_e2a0b_row12_col29" class="data row12 col29" >0.87</td>
	  <td id="T_e2a0b_row12_col30" class="data row12 col30" >0.37</td>
	  <td id="T_e2a0b_row12_col31" class="data row12 col31" >0.13</td>
	  <td id="T_e2a0b_row12_col32" class="data row12 col32" >0.03</td>
	  <td id="T_e2a0b_row12_col33" class="data row12 col33" >0.00</td>
	  <td id="T_e2a0b_row12_col34" class="data row12 col34" >0.00</td>
	  <td id="T_e2a0b_row12_col35" class="data row12 col35" >0.00</td>
	  <td id="T_e2a0b_row12_col36" class="data row12 col36" >0.00</td>
	  <td id="T_e2a0b_row12_col37" class="data row12 col37" >0.00</td>
	  <td id="T_e2a0b_row12_col38" class="data row12 col38" >0.00</td>
	  <td id="T_e2a0b_row12_col39" class="data row12 col39" >0.00</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row13" class="row_heading level0 row13" >13</th>
	  <td id="T_e2a0b_row13_col0" class="data row13 col0" ></td>
	  <td id="T_e2a0b_row13_col1" class="data row13 col1" ></td>
	  <td id="T_e2a0b_row13_col2" class="data row13 col2" ></td>
	  <td id="T_e2a0b_row13_col3" class="data row13 col3" ></td>
	  <td id="T_e2a0b_row13_col4" class="data row13 col4" ></td>
	  <td id="T_e2a0b_row13_col5" class="data row13 col5" ></td>
	  <td id="T_e2a0b_row13_col6" class="data row13 col6" ></td>
	  <td id="T_e2a0b_row13_col7" class="data row13 col7" ></td>
	  <td id="T_e2a0b_row13_col8" class="data row13 col8" ></td>
	  <td id="T_e2a0b_row13_col9" class="data row13 col9" ></td>
	  <td id="T_e2a0b_row13_col10" class="data row13 col10" ></td>
	  <td id="T_e2a0b_row13_col11" class="data row13 col11" ></td>
	  <td id="T_e2a0b_row13_col12" class="data row13 col12" ></td>
	  <td id="T_e2a0b_row13_col13" class="data row13 col13" >38.45</td>
	  <td id="T_e2a0b_row13_col14" class="data row13 col14" >36.64</td>
	  <td id="T_e2a0b_row13_col15" class="data row13 col15" >34.78</td>
	  <td id="T_e2a0b_row13_col16" class="data row13 col16" >32.87</td>
	  <td id="T_e2a0b_row13_col17" class="data row13 col17" >30.91</td>
	  <td id="T_e2a0b_row13_col18" class="data row13 col18" >28.89</td>
	  <td id="T_e2a0b_row13_col19" class="data row13 col19" >26.80</td>
	  <td id="T_e2a0b_row13_col20" class="data row13 col20" >24.64</td>
	  <td id="T_e2a0b_row13_col21" class="data row13 col21" >22.42</td>
	  <td id="T_e2a0b_row13_col22" class="data row13 col22" >20.12</td>
	  <td id="T_e2a0b_row13_col23" class="data row13 col23" >17.73</td>
	  <td id="T_e2a0b_row13_col24" class="data row13 col24" >15.28</td>
	  <td id="T_e2a0b_row13_col25" class="data row13 col25" >12.75</td>
	  <td id="T_e2a0b_row13_col26" class="data row13 col26" >10.17</td>
	  <td id="T_e2a0b_row13_col27" class="data row13 col27" >7.53</td>
	  <td id="T_e2a0b_row13_col28" class="data row13 col28" >4.88</td>
	  <td id="T_e2a0b_row13_col29" class="data row13 col29" >2.77</td>
	  <td id="T_e2a0b_row13_col30" class="data row13 col30" >1.40</td>
	  <td id="T_e2a0b_row13_col31" class="data row13 col31" >0.62</td>
	  <td id="T_e2a0b_row13_col32" class="data row13 col32" >0.23</td>
	  <td id="T_e2a0b_row13_col33" class="data row13 col33" >0.06</td>
	  <td id="T_e2a0b_row13_col34" class="data row13 col34" >0.01</td>
	  <td id="T_e2a0b_row13_col35" class="data row13 col35" >0.00</td>
	  <td id="T_e2a0b_row13_col36" class="data row13 col36" >0.00</td>
	  <td id="T_e2a0b_row13_col37" class="data row13 col37" >0.00</td>
	  <td id="T_e2a0b_row13_col38" class="data row13 col38" >0.00</td>
	  <td id="T_e2a0b_row13_col39" class="data row13 col39" >0.00</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row14" class="row_heading level0 row14" >14</th>
	  <td id="T_e2a0b_row14_col0" class="data row14 col0" ></td>
	  <td id="T_e2a0b_row14_col1" class="data row14 col1" ></td>
	  <td id="T_e2a0b_row14_col2" class="data row14 col2" ></td>
	  <td id="T_e2a0b_row14_col3" class="data row14 col3" ></td>
	  <td id="T_e2a0b_row14_col4" class="data row14 col4" ></td>
	  <td id="T_e2a0b_row14_col5" class="data row14 col5" ></td>
	  <td id="T_e2a0b_row14_col6" class="data row14 col6" ></td>
	  <td id="T_e2a0b_row14_col7" class="data row14 col7" ></td>
	  <td id="T_e2a0b_row14_col8" class="data row14 col8" ></td>
	  <td id="T_e2a0b_row14_col9" class="data row14 col9" ></td>
	  <td id="T_e2a0b_row14_col10" class="data row14 col10" ></td>
	  <td id="T_e2a0b_row14_col11" class="data row14 col11" ></td>
	  <td id="T_e2a0b_row14_col12" class="data row14 col12" ></td>
	  <td id="T_e2a0b_row14_col13" class="data row14 col13" ></td>
	  <td id="T_e2a0b_row14_col14" class="data row14 col14" >37.34</td>
	  <td id="T_e2a0b_row14_col15" class="data row14 col15" >35.59</td>
	  <td id="T_e2a0b_row14_col16" class="data row14 col16" >33.81</td>
	  <td id="T_e2a0b_row14_col17" class="data row14 col17" >31.99</td>
	  <td id="T_e2a0b_row14_col18" class="data row14 col18" >30.13</td>
	  <td id="T_e2a0b_row14_col19" class="data row14 col19" >28.22</td>
	  <td id="T_e2a0b_row14_col20" class="data row14 col20" >26.26</td>
	  <td id="T_e2a0b_row14_col21" class="data row14 col21" >24.26</td>
	  <td id="T_e2a0b_row14_col22" class="data row14 col22" >22.20</td>
	  <td id="T_e2a0b_row14_col23" class="data row14 col23" >20.08</td>
	  <td id="T_e2a0b_row14_col24" class="data row14 col24" >17.91</td>
	  <td id="T_e2a0b_row14_col25" class="data row14 col25" >15.69</td>
	  <td id="T_e2a0b_row14_col26" class="data row14 col26" >13.43</td>
	  <td id="T_e2a0b_row14_col27" class="data row14 col27" >11.14</td>
	  <td id="T_e2a0b_row14_col28" class="data row14 col28" >8.83</td>
	  <td id="T_e2a0b_row14_col29" class="data row14 col29" >6.50</td>
	  <td id="T_e2a0b_row14_col30" class="data row14 col30" >4.21</td>
	  <td id="T_e2a0b_row14_col31" class="data row14 col31" >2.22</td>
	  <td id="T_e2a0b_row14_col32" class="data row14 col32" >1.03</td>
	  <td id="T_e2a0b_row14_col33" class="data row14 col33" >0.41</td>
	  <td id="T_e2a0b_row14_col34" class="data row14 col34" >0.12</td>
	  <td id="T_e2a0b_row14_col35" class="data row14 col35" >0.02</td>
	  <td id="T_e2a0b_row14_col36" class="data row14 col36" >0.00</td>
	  <td id="T_e2a0b_row14_col37" class="data row14 col37" >0.00</td>
	  <td id="T_e2a0b_row14_col38" class="data row14 col38" >0.00</td>
	  <td id="T_e2a0b_row14_col39" class="data row14 col39" >0.00</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row15" class="row_heading level0 row15" >15</th>
	  <td id="T_e2a0b_row15_col0" class="data row15 col0" ></td>
	  <td id="T_e2a0b_row15_col1" class="data row15 col1" ></td>
	  <td id="T_e2a0b_row15_col2" class="data row15 col2" ></td>
	  <td id="T_e2a0b_row15_col3" class="data row15 col3" ></td>
	  <td id="T_e2a0b_row15_col4" class="data row15 col4" ></td>
	  <td id="T_e2a0b_row15_col5" class="data row15 col5" ></td>
	  <td id="T_e2a0b_row15_col6" class="data row15 col6" ></td>
	  <td id="T_e2a0b_row15_col7" class="data row15 col7" ></td>
	  <td id="T_e2a0b_row15_col8" class="data row15 col8" ></td>
	  <td id="T_e2a0b_row15_col9" class="data row15 col9" ></td>
	  <td id="T_e2a0b_row15_col10" class="data row15 col10" ></td>
	  <td id="T_e2a0b_row15_col11" class="data row15 col11" ></td>
	  <td id="T_e2a0b_row15_col12" class="data row15 col12" ></td>
	  <td id="T_e2a0b_row15_col13" class="data row15 col13" ></td>
	  <td id="T_e2a0b_row15_col14" class="data row15 col14" ></td>
	  <td id="T_e2a0b_row15_col15" class="data row15 col15" >36.15</td>
	  <td id="T_e2a0b_row15_col16" class="data row15 col16" >34.46</td>
	  <td id="T_e2a0b_row15_col17" class="data row15 col17" >32.73</td>
	  <td id="T_e2a0b_row15_col18" class="data row15 col18" >30.98</td>
	  <td id="T_e2a0b_row15_col19" class="data row15 col19" >29.20</td>
	  <td id="T_e2a0b_row15_col20" class="data row15 col20" >27.38</td>
	  <td id="T_e2a0b_row15_col21" class="data row15 col21" >25.53</td>
	  <td id="T_e2a0b_row15_col22" class="data row15 col22" >23.64</td>
	  <td id="T_e2a0b_row15_col23" class="data row15 col23" >21.71</td>
	  <td id="T_e2a0b_row15_col24" class="data row15 col24" >19.74</td>
	  <td id="T_e2a0b_row15_col25" class="data row15 col25" >17.73</td>
	  <td id="T_e2a0b_row15_col26" class="data row15 col26" >15.70</td>
	  <td id="T_e2a0b_row15_col27" class="data row15 col27" >13.64</td>
	  <td id="T_e2a0b_row15_col28" class="data row15 col28" >11.57</td>
	  <td id="T_e2a0b_row15_col29" class="data row15 col29" >9.49</td>
	  <td id="T_e2a0b_row15_col30" class="data row15 col30" >7.43</td>
	  <td id="T_e2a0b_row15_col31" class="data row15 col31" >5.40</td>
	  <td id="T_e2a0b_row15_col32" class="data row15 col32" >3.46</td>
	  <td id="T_e2a0b_row15_col33" class="data row15 col33" >1.68</td>
	  <td id="T_e2a0b_row15_col34" class="data row15 col34" >0.72</td>
	  <td id="T_e2a0b_row15_col35" class="data row15 col35" >0.22</td>
	  <td id="T_e2a0b_row15_col36" class="data row15 col36" >0.03</td>
	  <td id="T_e2a0b_row15_col37" class="data row15 col37" >0.00</td>
	  <td id="T_e2a0b_row15_col38" class="data row15 col38" >0.00</td>
	  <td id="T_e2a0b_row15_col39" class="data row15 col39" >0.00</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row16" class="row_heading level0 row16" >16</th>
	  <td id="T_e2a0b_row16_col0" class="data row16 col0" ></td>
	  <td id="T_e2a0b_row16_col1" class="data row16 col1" ></td>
	  <td id="T_e2a0b_row16_col2" class="data row16 col2" ></td>
	  <td id="T_e2a0b_row16_col3" class="data row16 col3" ></td>
	  <td id="T_e2a0b_row16_col4" class="data row16 col4" ></td>
	  <td id="T_e2a0b_row16_col5" class="data row16 col5" ></td>
	  <td id="T_e2a0b_row16_col6" class="data row16 col6" ></td>
	  <td id="T_e2a0b_row16_col7" class="data row16 col7" ></td>
	  <td id="T_e2a0b_row16_col8" class="data row16 col8" ></td>
	  <td id="T_e2a0b_row16_col9" class="data row16 col9" ></td>
	  <td id="T_e2a0b_row16_col10" class="data row16 col10" ></td>
	  <td id="T_e2a0b_row16_col11" class="data row16 col11" ></td>
	  <td id="T_e2a0b_row16_col12" class="data row16 col12" ></td>
	  <td id="T_e2a0b_row16_col13" class="data row16 col13" ></td>
	  <td id="T_e2a0b_row16_col14" class="data row16 col14" ></td>
	  <td id="T_e2a0b_row16_col15" class="data row16 col15" ></td>
	  <td id="T_e2a0b_row16_col16" class="data row16 col16" >34.90</td>
	  <td id="T_e2a0b_row16_col17" class="data row16 col17" >33.25</td>
	  <td id="T_e2a0b_row16_col18" class="data row16 col18" >31.57</td>
	  <td id="T_e2a0b_row16_col19" class="data row16 col19" >29.88</td>
	  <td id="T_e2a0b_row16_col20" class="data row16 col20" >28.16</td>
	  <td id="T_e2a0b_row16_col21" class="data row16 col21" >26.41</td>
	  <td id="T_e2a0b_row16_col22" class="data row16 col22" >24.64</td>
	  <td id="T_e2a0b_row16_col23" class="data row16 col23" >22.84</td>
	  <td id="T_e2a0b_row16_col24" class="data row16 col24" >21.01</td>
	  <td id="T_e2a0b_row16_col25" class="data row16 col25" >19.16</td>
	  <td id="T_e2a0b_row16_col26" class="data row16 col26" >17.28</td>
	  <td id="T_e2a0b_row16_col27" class="data row16 col27" >15.39</td>
	  <td id="T_e2a0b_row16_col28" class="data row16 col28" >13.48</td>
	  <td id="T_e2a0b_row16_col29" class="data row16 col29" >11.57</td>
	  <td id="T_e2a0b_row16_col30" class="data row16 col30" >9.68</td>
	  <td id="T_e2a0b_row16_col31" class="data row16 col31" >7.81</td>
	  <td id="T_e2a0b_row16_col32" class="data row16 col32" >6.00</td>
	  <td id="T_e2a0b_row16_col33" class="data row16 col33" >4.27</td>
	  <td id="T_e2a0b_row16_col34" class="data row16 col34" >2.67</td>
	  <td id="T_e2a0b_row16_col35" class="data row16 col35" >1.24</td>
	  <td id="T_e2a0b_row16_col36" class="data row16 col36" >0.42</td>
	  <td id="T_e2a0b_row16_col37" class="data row16 col37" >0.06</td>
	  <td id="T_e2a0b_row16_col38" class="data row16 col38" >0.00</td>
	  <td id="T_e2a0b_row16_col39" class="data row16 col39" >0.00</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row17" class="row_heading level0 row17" >17</th>
	  <td id="T_e2a0b_row17_col0" class="data row17 col0" ></td>
	  <td id="T_e2a0b_row17_col1" class="data row17 col1" ></td>
	  <td id="T_e2a0b_row17_col2" class="data row17 col2" ></td>
	  <td id="T_e2a0b_row17_col3" class="data row17 col3" ></td>
	  <td id="T_e2a0b_row17_col4" class="data row17 col4" ></td>
	  <td id="T_e2a0b_row17_col5" class="data row17 col5" ></td>
	  <td id="T_e2a0b_row17_col6" class="data row17 col6" ></td>
	  <td id="T_e2a0b_row17_col7" class="data row17 col7" ></td>
	  <td id="T_e2a0b_row17_col8" class="data row17 col8" ></td>
	  <td id="T_e2a0b_row17_col9" class="data row17 col9" ></td>
	  <td id="T_e2a0b_row17_col10" class="data row17 col10" ></td>
	  <td id="T_e2a0b_row17_col11" class="data row17 col11" ></td>
	  <td id="T_e2a0b_row17_col12" class="data row17 col12" ></td>
	  <td id="T_e2a0b_row17_col13" class="data row17 col13" ></td>
	  <td id="T_e2a0b_row17_col14" class="data row17 col14" ></td>
	  <td id="T_e2a0b_row17_col15" class="data row17 col15" ></td>
	  <td id="T_e2a0b_row17_col16" class="data row17 col16" ></td>
	  <td id="T_e2a0b_row17_col17" class="data row17 col17" >33.60</td>
	  <td id="T_e2a0b_row17_col18" class="data row17 col18" >31.98</td>
	  <td id="T_e2a0b_row17_col19" class="data row17 col19" >30.34</td>
	  <td id="T_e2a0b_row17_col20" class="data row17 col20" >28.69</td>
	  <td id="T_e2a0b_row17_col21" class="data row17 col21" >27.02</td>
	  <td id="T_e2a0b_row17_col22" class="data row17 col22" >25.33</td>
	  <td id="T_e2a0b_row17_col23" class="data row17 col23" >23.62</td>
	  <td id="T_e2a0b_row17_col24" class="data row17 col24" >21.90</td>
	  <td id="T_e2a0b_row17_col25" class="data row17 col25" >20.15</td>
	  <td id="T_e2a0b_row17_col26" class="data row17 col26" >18.39</td>
	  <td id="T_e2a0b_row17_col27" class="data row17 col27" >16.61</td>
	  <td id="T_e2a0b_row17_col28" class="data row17 col28" >14.82</td>
	  <td id="T_e2a0b_row17_col29" class="data row17 col29" >13.03</td>
	  <td id="T_e2a0b_row17_col30" class="data row17 col30" >11.25</td>
	  <td id="T_e2a0b_row17_col31" class="data row17 col31" >9.49</td>
	  <td id="T_e2a0b_row17_col32" class="data row17 col32" >7.76</td>
	  <td id="T_e2a0b_row17_col33" class="data row17 col33" >6.10</td>
	  <td id="T_e2a0b_row17_col34" class="data row17 col34" >4.53</td>
	  <td id="T_e2a0b_row17_col35" class="data row17 col35" >3.08</td>
	  <td id="T_e2a0b_row17_col36" class="data row17 col36" >1.82</td>
	  <td id="T_e2a0b_row17_col37" class="data row17 col37" >0.78</td>
	  <td id="T_e2a0b_row17_col38" class="data row17 col38" >0.13</td>
	  <td id="T_e2a0b_row17_col39" class="data row17 col39" >0.00</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row18" class="row_heading level0 row18" >18</th>
	  <td id="T_e2a0b_row18_col0" class="data row18 col0" ></td>
	  <td id="T_e2a0b_row18_col1" class="data row18 col1" ></td>
	  <td id="T_e2a0b_row18_col2" class="data row18 col2" ></td>
	  <td id="T_e2a0b_row18_col3" class="data row18 col3" ></td>
	  <td id="T_e2a0b_row18_col4" class="data row18 col4" ></td>
	  <td id="T_e2a0b_row18_col5" class="data row18 col5" ></td>
	  <td id="T_e2a0b_row18_col6" class="data row18 col6" ></td>
	  <td id="T_e2a0b_row18_col7" class="data row18 col7" ></td>
	  <td id="T_e2a0b_row18_col8" class="data row18 col8" ></td>
	  <td id="T_e2a0b_row18_col9" class="data row18 col9" ></td>
	  <td id="T_e2a0b_row18_col10" class="data row18 col10" ></td>
	  <td id="T_e2a0b_row18_col11" class="data row18 col11" ></td>
	  <td id="T_e2a0b_row18_col12" class="data row18 col12" ></td>
	  <td id="T_e2a0b_row18_col13" class="data row18 col13" ></td>
	  <td id="T_e2a0b_row18_col14" class="data row18 col14" ></td>
	  <td id="T_e2a0b_row18_col15" class="data row18 col15" ></td>
	  <td id="T_e2a0b_row18_col16" class="data row18 col16" ></td>
	  <td id="T_e2a0b_row18_col17" class="data row18 col17" ></td>
	  <td id="T_e2a0b_row18_col18" class="data row18 col18" >32.27</td>
	  <td id="T_e2a0b_row18_col19" class="data row18 col19" >30.67</td>
	  <td id="T_e2a0b_row18_col20" class="data row18 col20" >29.06</td>
	  <td id="T_e2a0b_row18_col21" class="data row18 col21" >27.45</td>
	  <td id="T_e2a0b_row18_col22" class="data row18 col22" >25.81</td>
	  <td id="T_e2a0b_row18_col23" class="data row18 col23" >24.17</td>
	  <td id="T_e2a0b_row18_col24" class="data row18 col24" >22.51</td>
	  <td id="T_e2a0b_row18_col25" class="data row18 col25" >20.84</td>
	  <td id="T_e2a0b_row18_col26" class="data row18 col26" >19.16</td>
	  <td id="T_e2a0b_row18_col27" class="data row18 col27" >17.47</td>
	  <td id="T_e2a0b_row18_col28" class="data row18 col28" >15.77</td>
	  <td id="T_e2a0b_row18_col29" class="data row18 col29" >14.06</td>
	  <td id="T_e2a0b_row18_col30" class="data row18 col30" >12.36</td>
	  <td id="T_e2a0b_row18_col31" class="data row18 col31" >10.67</td>
	  <td id="T_e2a0b_row18_col32" class="data row18 col32" >9.01</td>
	  <td id="T_e2a0b_row18_col33" class="data row18 col33" >7.39</td>
	  <td id="T_e2a0b_row18_col34" class="data row18 col34" >5.83</td>
	  <td id="T_e2a0b_row18_col35" class="data row18 col35" >4.36</td>
	  <td id="T_e2a0b_row18_col36" class="data row18 col36" >3.03</td>
	  <td id="T_e2a0b_row18_col37" class="data row18 col37" >1.85</td>
	  <td id="T_e2a0b_row18_col38" class="data row18 col38" >0.92</td>
	  <td id="T_e2a0b_row18_col39" class="data row18 col39" >0.26</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row19" class="row_heading level0 row19" >19</th>
	  <td id="T_e2a0b_row19_col0" class="data row19 col0" ></td>
	  <td id="T_e2a0b_row19_col1" class="data row19 col1" ></td>
	  <td id="T_e2a0b_row19_col2" class="data row19 col2" ></td>
	  <td id="T_e2a0b_row19_col3" class="data row19 col3" ></td>
	  <td id="T_e2a0b_row19_col4" class="data row19 col4" ></td>
	  <td id="T_e2a0b_row19_col5" class="data row19 col5" ></td>
	  <td id="T_e2a0b_row19_col6" class="data row19 col6" ></td>
	  <td id="T_e2a0b_row19_col7" class="data row19 col7" ></td>
	  <td id="T_e2a0b_row19_col8" class="data row19 col8" ></td>
	  <td id="T_e2a0b_row19_col9" class="data row19 col9" ></td>
	  <td id="T_e2a0b_row19_col10" class="data row19 col10" ></td>
	  <td id="T_e2a0b_row19_col11" class="data row19 col11" ></td>
	  <td id="T_e2a0b_row19_col12" class="data row19 col12" ></td>
	  <td id="T_e2a0b_row19_col13" class="data row19 col13" ></td>
	  <td id="T_e2a0b_row19_col14" class="data row19 col14" ></td>
	  <td id="T_e2a0b_row19_col15" class="data row19 col15" ></td>
	  <td id="T_e2a0b_row19_col16" class="data row19 col16" ></td>
	  <td id="T_e2a0b_row19_col17" class="data row19 col17" ></td>
	  <td id="T_e2a0b_row19_col18" class="data row19 col18" ></td>
	  <td id="T_e2a0b_row19_col19" class="data row19 col19" >30.90</td>
	  <td id="T_e2a0b_row19_col20" class="data row19 col20" >29.32</td>
	  <td id="T_e2a0b_row19_col21" class="data row19 col21" >27.74</td>
	  <td id="T_e2a0b_row19_col22" class="data row19 col22" >26.15</td>
	  <td id="T_e2a0b_row19_col23" class="data row19 col23" >24.55</td>
	  <td id="T_e2a0b_row19_col24" class="data row19 col24" >22.94</td>
	  <td id="T_e2a0b_row19_col25" class="data row19 col25" >21.32</td>
	  <td id="T_e2a0b_row19_col26" class="data row19 col26" >19.70</td>
	  <td id="T_e2a0b_row19_col27" class="data row19 col27" >18.07</td>
	  <td id="T_e2a0b_row19_col28" class="data row19 col28" >16.43</td>
	  <td id="T_e2a0b_row19_col29" class="data row19 col29" >14.79</td>
	  <td id="T_e2a0b_row19_col30" class="data row19 col30" >13.15</td>
	  <td id="T_e2a0b_row19_col31" class="data row19 col31" >11.52</td>
	  <td id="T_e2a0b_row19_col32" class="data row19 col32" >9.91</td>
	  <td id="T_e2a0b_row19_col33" class="data row19 col33" >8.32</td>
	  <td id="T_e2a0b_row19_col34" class="data row19 col34" >6.78</td>
	  <td id="T_e2a0b_row19_col35" class="data row19 col35" >5.30</td>
	  <td id="T_e2a0b_row19_col36" class="data row19 col36" >3.91</td>
	  <td id="T_e2a0b_row19_col37" class="data row19 col37" >2.63</td>
	  <td id="T_e2a0b_row19_col38" class="data row19 col38" >1.52</td>
	  <td id="T_e2a0b_row19_col39" class="data row19 col39" >0.62</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row20" class="row_heading level0 row20" >20</th>
	  <td id="T_e2a0b_row20_col0" class="data row20 col0" ></td>
	  <td id="T_e2a0b_row20_col1" class="data row20 col1" ></td>
	  <td id="T_e2a0b_row20_col2" class="data row20 col2" ></td>
	  <td id="T_e2a0b_row20_col3" class="data row20 col3" ></td>
	  <td id="T_e2a0b_row20_col4" class="data row20 col4" ></td>
	  <td id="T_e2a0b_row20_col5" class="data row20 col5" ></td>
	  <td id="T_e2a0b_row20_col6" class="data row20 col6" ></td>
	  <td id="T_e2a0b_row20_col7" class="data row20 col7" ></td>
	  <td id="T_e2a0b_row20_col8" class="data row20 col8" ></td>
	  <td id="T_e2a0b_row20_col9" class="data row20 col9" ></td>
	  <td id="T_e2a0b_row20_col10" class="data row20 col10" ></td>
	  <td id="T_e2a0b_row20_col11" class="data row20 col11" ></td>
	  <td id="T_e2a0b_row20_col12" class="data row20 col12" ></td>
	  <td id="T_e2a0b_row20_col13" class="data row20 col13" ></td>
	  <td id="T_e2a0b_row20_col14" class="data row20 col14" ></td>
	  <td id="T_e2a0b_row20_col15" class="data row20 col15" ></td>
	  <td id="T_e2a0b_row20_col16" class="data row20 col16" ></td>
	  <td id="T_e2a0b_row20_col17" class="data row20 col17" ></td>
	  <td id="T_e2a0b_row20_col18" class="data row20 col18" ></td>
	  <td id="T_e2a0b_row20_col19" class="data row20 col19" ></td>
	  <td id="T_e2a0b_row20_col20" class="data row20 col20" >29.51</td>
	  <td id="T_e2a0b_row20_col21" class="data row20 col21" >27.95</td>
	  <td id="T_e2a0b_row20_col22" class="data row20 col22" >26.39</td>
	  <td id="T_e2a0b_row20_col23" class="data row20 col23" >24.82</td>
	  <td id="T_e2a0b_row20_col24" class="data row20 col24" >23.24</td>
	  <td id="T_e2a0b_row20_col25" class="data row20 col25" >21.66</td>
	  <td id="T_e2a0b_row20_col26" class="data row20 col26" >20.07</td>
	  <td id="T_e2a0b_row20_col27" class="data row20 col27" >18.48</td>
	  <td id="T_e2a0b_row20_col28" class="data row20 col28" >16.89</td>
	  <td id="T_e2a0b_row20_col29" class="data row20 col29" >15.30</td>
	  <td id="T_e2a0b_row20_col30" class="data row20 col30" >13.71</td>
	  <td id="T_e2a0b_row20_col31" class="data row20 col31" >12.12</td>
	  <td id="T_e2a0b_row20_col32" class="data row20 col32" >10.54</td>
	  <td id="T_e2a0b_row20_col33" class="data row20 col33" >8.99</td>
	  <td id="T_e2a0b_row20_col34" class="data row20 col34" >7.46</td>
	  <td id="T_e2a0b_row20_col35" class="data row20 col35" >5.97</td>
	  <td id="T_e2a0b_row20_col36" class="data row20 col36" >4.55</td>
	  <td id="T_e2a0b_row20_col37" class="data row20 col37" >3.20</td>
	  <td id="T_e2a0b_row20_col38" class="data row20 col38" >1.97</td>
	  <td id="T_e2a0b_row20_col39" class="data row20 col39" >0.89</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row21" class="row_heading level0 row21" >21</th>
	  <td id="T_e2a0b_row21_col0" class="data row21 col0" ></td>
	  <td id="T_e2a0b_row21_col1" class="data row21 col1" ></td>
	  <td id="T_e2a0b_row21_col2" class="data row21 col2" ></td>
	  <td id="T_e2a0b_row21_col3" class="data row21 col3" ></td>
	  <td id="T_e2a0b_row21_col4" class="data row21 col4" ></td>
	  <td id="T_e2a0b_row21_col5" class="data row21 col5" ></td>
	  <td id="T_e2a0b_row21_col6" class="data row21 col6" ></td>
	  <td id="T_e2a0b_row21_col7" class="data row21 col7" ></td>
	  <td id="T_e2a0b_row21_col8" class="data row21 col8" ></td>
	  <td id="T_e2a0b_row21_col9" class="data row21 col9" ></td>
	  <td id="T_e2a0b_row21_col10" class="data row21 col10" ></td>
	  <td id="T_e2a0b_row21_col11" class="data row21 col11" ></td>
	  <td id="T_e2a0b_row21_col12" class="data row21 col12" ></td>
	  <td id="T_e2a0b_row21_col13" class="data row21 col13" ></td>
	  <td id="T_e2a0b_row21_col14" class="data row21 col14" ></td>
	  <td id="T_e2a0b_row21_col15" class="data row21 col15" ></td>
	  <td id="T_e2a0b_row21_col16" class="data row21 col16" ></td>
	  <td id="T_e2a0b_row21_col17" class="data row21 col17" ></td>
	  <td id="T_e2a0b_row21_col18" class="data row21 col18" ></td>
	  <td id="T_e2a0b_row21_col19" class="data row21 col19" ></td>
	  <td id="T_e2a0b_row21_col20" class="data row21 col20" ></td>
	  <td id="T_e2a0b_row21_col21" class="data row21 col21" >28.10</td>
	  <td id="T_e2a0b_row21_col22" class="data row21 col22" >26.55</td>
	  <td id="T_e2a0b_row21_col23" class="data row21 col23" >25.00</td>
	  <td id="T_e2a0b_row21_col24" class="data row21 col24" >23.45</td>
	  <td id="T_e2a0b_row21_col25" class="data row21 col25" >21.89</td>
	  <td id="T_e2a0b_row21_col26" class="data row21 col26" >20.33</td>
	  <td id="T_e2a0b_row21_col27" class="data row21 col27" >18.77</td>
	  <td id="T_e2a0b_row21_col28" class="data row21 col28" >17.21</td>
	  <td id="T_e2a0b_row21_col29" class="data row21 col29" >15.64</td>
	  <td id="T_e2a0b_row21_col30" class="data row21 col30" >14.08</td>
	  <td id="T_e2a0b_row21_col31" class="data row21 col31" >12.53</td>
	  <td id="T_e2a0b_row21_col32" class="data row21 col32" >10.98</td>
	  <td id="T_e2a0b_row21_col33" class="data row21 col33" >9.45</td>
	  <td id="T_e2a0b_row21_col34" class="data row21 col34" >7.93</td>
	  <td id="T_e2a0b_row21_col35" class="data row21 col35" >6.45</td>
	  <td id="T_e2a0b_row21_col36" class="data row21 col36" >5.00</td>
	  <td id="T_e2a0b_row21_col37" class="data row21 col37" >3.61</td>
	  <td id="T_e2a0b_row21_col38" class="data row21 col38" >2.30</td>
	  <td id="T_e2a0b_row21_col39" class="data row21 col39" >1.08</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row22" class="row_heading level0 row22" >22</th>
	  <td id="T_e2a0b_row22_col0" class="data row22 col0" ></td>
	  <td id="T_e2a0b_row22_col1" class="data row22 col1" ></td>
	  <td id="T_e2a0b_row22_col2" class="data row22 col2" ></td>
	  <td id="T_e2a0b_row22_col3" class="data row22 col3" ></td>
	  <td id="T_e2a0b_row22_col4" class="data row22 col4" ></td>
	  <td id="T_e2a0b_row22_col5" class="data row22 col5" ></td>
	  <td id="T_e2a0b_row22_col6" class="data row22 col6" ></td>
	  <td id="T_e2a0b_row22_col7" class="data row22 col7" ></td>
	  <td id="T_e2a0b_row22_col8" class="data row22 col8" ></td>
	  <td id="T_e2a0b_row22_col9" class="data row22 col9" ></td>
	  <td id="T_e2a0b_row22_col10" class="data row22 col10" ></td>
	  <td id="T_e2a0b_row22_col11" class="data row22 col11" ></td>
	  <td id="T_e2a0b_row22_col12" class="data row22 col12" ></td>
	  <td id="T_e2a0b_row22_col13" class="data row22 col13" ></td>
	  <td id="T_e2a0b_row22_col14" class="data row22 col14" ></td>
	  <td id="T_e2a0b_row22_col15" class="data row22 col15" ></td>
	  <td id="T_e2a0b_row22_col16" class="data row22 col16" ></td>
	  <td id="T_e2a0b_row22_col17" class="data row22 col17" ></td>
	  <td id="T_e2a0b_row22_col18" class="data row22 col18" ></td>
	  <td id="T_e2a0b_row22_col19" class="data row22 col19" ></td>
	  <td id="T_e2a0b_row22_col20" class="data row22 col20" ></td>
	  <td id="T_e2a0b_row22_col21" class="data row22 col21" ></td>
	  <td id="T_e2a0b_row22_col22" class="data row22 col22" >26.67</td>
	  <td id="T_e2a0b_row22_col23" class="data row22 col23" >25.13</td>
	  <td id="T_e2a0b_row22_col24" class="data row22 col24" >23.59</td>
	  <td id="T_e2a0b_row22_col25" class="data row22 col25" >22.05</td>
	  <td id="T_e2a0b_row22_col26" class="data row22 col26" >20.51</td>
	  <td id="T_e2a0b_row22_col27" class="data row22 col27" >18.97</td>
	  <td id="T_e2a0b_row22_col28" class="data row22 col28" >17.42</td>
	  <td id="T_e2a0b_row22_col29" class="data row22 col29" >15.88</td>
	  <td id="T_e2a0b_row22_col30" class="data row22 col30" >14.34</td>
	  <td id="T_e2a0b_row22_col31" class="data row22 col31" >12.80</td>
	  <td id="T_e2a0b_row22_col32" class="data row22 col32" >11.27</td>
	  <td id="T_e2a0b_row22_col33" class="data row22 col33" >9.75</td>
	  <td id="T_e2a0b_row22_col34" class="data row22 col34" >8.25</td>
	  <td id="T_e2a0b_row22_col35" class="data row22 col35" >6.76</td>
	  <td id="T_e2a0b_row22_col36" class="data row22 col36" >5.30</td>
	  <td id="T_e2a0b_row22_col37" class="data row22 col37" >3.88</td>
	  <td id="T_e2a0b_row22_col38" class="data row22 col38" >2.52</td>
	  <td id="T_e2a0b_row22_col39" class="data row22 col39" >1.21</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row23" class="row_heading level0 row23" >23</th>
	  <td id="T_e2a0b_row23_col0" class="data row23 col0" ></td>
	  <td id="T_e2a0b_row23_col1" class="data row23 col1" ></td>
	  <td id="T_e2a0b_row23_col2" class="data row23 col2" ></td>
	  <td id="T_e2a0b_row23_col3" class="data row23 col3" ></td>
	  <td id="T_e2a0b_row23_col4" class="data row23 col4" ></td>
	  <td id="T_e2a0b_row23_col5" class="data row23 col5" ></td>
	  <td id="T_e2a0b_row23_col6" class="data row23 col6" ></td>
	  <td id="T_e2a0b_row23_col7" class="data row23 col7" ></td>
	  <td id="T_e2a0b_row23_col8" class="data row23 col8" ></td>
	  <td id="T_e2a0b_row23_col9" class="data row23 col9" ></td>
	  <td id="T_e2a0b_row23_col10" class="data row23 col10" ></td>
	  <td id="T_e2a0b_row23_col11" class="data row23 col11" ></td>
	  <td id="T_e2a0b_row23_col12" class="data row23 col12" ></td>
	  <td id="T_e2a0b_row23_col13" class="data row23 col13" ></td>
	  <td id="T_e2a0b_row23_col14" class="data row23 col14" ></td>
	  <td id="T_e2a0b_row23_col15" class="data row23 col15" ></td>
	  <td id="T_e2a0b_row23_col16" class="data row23 col16" ></td>
	  <td id="T_e2a0b_row23_col17" class="data row23 col17" ></td>
	  <td id="T_e2a0b_row23_col18" class="data row23 col18" ></td>
	  <td id="T_e2a0b_row23_col19" class="data row23 col19" ></td>
	  <td id="T_e2a0b_row23_col20" class="data row23 col20" ></td>
	  <td id="T_e2a0b_row23_col21" class="data row23 col21" ></td>
	  <td id="T_e2a0b_row23_col22" class="data row23 col22" ></td>
	  <td id="T_e2a0b_row23_col23" class="data row23 col23" >25.23</td>
	  <td id="T_e2a0b_row23_col24" class="data row23 col24" >23.70</td>
	  <td id="T_e2a0b_row23_col25" class="data row23 col25" >22.17</td>
	  <td id="T_e2a0b_row23_col26" class="data row23 col26" >20.64</td>
	  <td id="T_e2a0b_row23_col27" class="data row23 col27" >19.10</td>
	  <td id="T_e2a0b_row23_col28" class="data row23 col28" >17.57</td>
	  <td id="T_e2a0b_row23_col29" class="data row23 col29" >16.04</td>
	  <td id="T_e2a0b_row23_col30" class="data row23 col30" >14.51</td>
	  <td id="T_e2a0b_row23_col31" class="data row23 col31" >12.99</td>
	  <td id="T_e2a0b_row23_col32" class="data row23 col32" >11.47</td>
	  <td id="T_e2a0b_row23_col33" class="data row23 col33" >9.95</td>
	  <td id="T_e2a0b_row23_col34" class="data row23 col34" >8.45</td>
	  <td id="T_e2a0b_row23_col35" class="data row23 col35" >6.97</td>
	  <td id="T_e2a0b_row23_col36" class="data row23 col36" >5.50</td>
	  <td id="T_e2a0b_row23_col37" class="data row23 col37" >4.06</td>
	  <td id="T_e2a0b_row23_col38" class="data row23 col38" >2.66</td>
	  <td id="T_e2a0b_row23_col39" class="data row23 col39" >1.30</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row24" class="row_heading level0 row24" >24</th>
	  <td id="T_e2a0b_row24_col0" class="data row24 col0" ></td>
	  <td id="T_e2a0b_row24_col1" class="data row24 col1" ></td>
	  <td id="T_e2a0b_row24_col2" class="data row24 col2" ></td>
	  <td id="T_e2a0b_row24_col3" class="data row24 col3" ></td>
	  <td id="T_e2a0b_row24_col4" class="data row24 col4" ></td>
	  <td id="T_e2a0b_row24_col5" class="data row24 col5" ></td>
	  <td id="T_e2a0b_row24_col6" class="data row24 col6" ></td>
	  <td id="T_e2a0b_row24_col7" class="data row24 col7" ></td>
	  <td id="T_e2a0b_row24_col8" class="data row24 col8" ></td>
	  <td id="T_e2a0b_row24_col9" class="data row24 col9" ></td>
	  <td id="T_e2a0b_row24_col10" class="data row24 col10" ></td>
	  <td id="T_e2a0b_row24_col11" class="data row24 col11" ></td>
	  <td id="T_e2a0b_row24_col12" class="data row24 col12" ></td>
	  <td id="T_e2a0b_row24_col13" class="data row24 col13" ></td>
	  <td id="T_e2a0b_row24_col14" class="data row24 col14" ></td>
	  <td id="T_e2a0b_row24_col15" class="data row24 col15" ></td>
	  <td id="T_e2a0b_row24_col16" class="data row24 col16" ></td>
	  <td id="T_e2a0b_row24_col17" class="data row24 col17" ></td>
	  <td id="T_e2a0b_row24_col18" class="data row24 col18" ></td>
	  <td id="T_e2a0b_row24_col19" class="data row24 col19" ></td>
	  <td id="T_e2a0b_row24_col20" class="data row24 col20" ></td>
	  <td id="T_e2a0b_row24_col21" class="data row24 col21" ></td>
	  <td id="T_e2a0b_row24_col22" class="data row24 col22" ></td>
	  <td id="T_e2a0b_row24_col23" class="data row24 col23" ></td>
	  <td id="T_e2a0b_row24_col24" class="data row24 col24" >23.77</td>
	  <td id="T_e2a0b_row24_col25" class="data row24 col25" >22.25</td>
	  <td id="T_e2a0b_row24_col26" class="data row24 col26" >20.73</td>
	  <td id="T_e2a0b_row24_col27" class="data row24 col27" >19.20</td>
	  <td id="T_e2a0b_row24_col28" class="data row24 col28" >17.68</td>
	  <td id="T_e2a0b_row24_col29" class="data row24 col29" >16.16</td>
	  <td id="T_e2a0b_row24_col30" class="data row24 col30" >14.63</td>
	  <td id="T_e2a0b_row24_col31" class="data row24 col31" >13.11</td>
	  <td id="T_e2a0b_row24_col32" class="data row24 col32" >11.60</td>
	  <td id="T_e2a0b_row24_col33" class="data row24 col33" >10.09</td>
	  <td id="T_e2a0b_row24_col34" class="data row24 col34" >8.59</td>
	  <td id="T_e2a0b_row24_col35" class="data row24 col35" >7.10</td>
	  <td id="T_e2a0b_row24_col36" class="data row24 col36" >5.63</td>
	  <td id="T_e2a0b_row24_col37" class="data row24 col37" >4.18</td>
	  <td id="T_e2a0b_row24_col38" class="data row24 col38" >2.75</td>
	  <td id="T_e2a0b_row24_col39" class="data row24 col39" >1.35</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row25" class="row_heading level0 row25" >25</th>
	  <td id="T_e2a0b_row25_col0" class="data row25 col0" ></td>
	  <td id="T_e2a0b_row25_col1" class="data row25 col1" ></td>
	  <td id="T_e2a0b_row25_col2" class="data row25 col2" ></td>
	  <td id="T_e2a0b_row25_col3" class="data row25 col3" ></td>
	  <td id="T_e2a0b_row25_col4" class="data row25 col4" ></td>
	  <td id="T_e2a0b_row25_col5" class="data row25 col5" ></td>
	  <td id="T_e2a0b_row25_col6" class="data row25 col6" ></td>
	  <td id="T_e2a0b_row25_col7" class="data row25 col7" ></td>
	  <td id="T_e2a0b_row25_col8" class="data row25 col8" ></td>
	  <td id="T_e2a0b_row25_col9" class="data row25 col9" ></td>
	  <td id="T_e2a0b_row25_col10" class="data row25 col10" ></td>
	  <td id="T_e2a0b_row25_col11" class="data row25 col11" ></td>
	  <td id="T_e2a0b_row25_col12" class="data row25 col12" ></td>
	  <td id="T_e2a0b_row25_col13" class="data row25 col13" ></td>
	  <td id="T_e2a0b_row25_col14" class="data row25 col14" ></td>
	  <td id="T_e2a0b_row25_col15" class="data row25 col15" ></td>
	  <td id="T_e2a0b_row25_col16" class="data row25 col16" ></td>
	  <td id="T_e2a0b_row25_col17" class="data row25 col17" ></td>
	  <td id="T_e2a0b_row25_col18" class="data row25 col18" ></td>
	  <td id="T_e2a0b_row25_col19" class="data row25 col19" ></td>
	  <td id="T_e2a0b_row25_col20" class="data row25 col20" ></td>
	  <td id="T_e2a0b_row25_col21" class="data row25 col21" ></td>
	  <td id="T_e2a0b_row25_col22" class="data row25 col22" ></td>
	  <td id="T_e2a0b_row25_col23" class="data row25 col23" ></td>
	  <td id="T_e2a0b_row25_col24" class="data row25 col24" ></td>
	  <td id="T_e2a0b_row25_col25" class="data row25 col25" >22.31</td>
	  <td id="T_e2a0b_row25_col26" class="data row25 col26" >20.79</td>
	  <td id="T_e2a0b_row25_col27" class="data row25 col27" >19.28</td>
	  <td id="T_e2a0b_row25_col28" class="data row25 col28" >17.76</td>
	  <td id="T_e2a0b_row25_col29" class="data row25 col29" >16.24</td>
	  <td id="T_e2a0b_row25_col30" class="data row25 col30" >14.72</td>
	  <td id="T_e2a0b_row25_col31" class="data row25 col31" >13.21</td>
	  <td id="T_e2a0b_row25_col32" class="data row25 col32" >11.70</td>
	  <td id="T_e2a0b_row25_col33" class="data row25 col33" >10.19</td>
	  <td id="T_e2a0b_row25_col34" class="data row25 col34" >8.69</td>
	  <td id="T_e2a0b_row25_col35" class="data row25 col35" >7.20</td>
	  <td id="T_e2a0b_row25_col36" class="data row25 col36" >5.72</td>
	  <td id="T_e2a0b_row25_col37" class="data row25 col37" >4.26</td>
	  <td id="T_e2a0b_row25_col38" class="data row25 col38" >2.81</td>
	  <td id="T_e2a0b_row25_col39" class="data row25 col39" >1.39</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row26" class="row_heading level0 row26" >26</th>
	  <td id="T_e2a0b_row26_col0" class="data row26 col0" ></td>
	  <td id="T_e2a0b_row26_col1" class="data row26 col1" ></td>
	  <td id="T_e2a0b_row26_col2" class="data row26 col2" ></td>
	  <td id="T_e2a0b_row26_col3" class="data row26 col3" ></td>
	  <td id="T_e2a0b_row26_col4" class="data row26 col4" ></td>
	  <td id="T_e2a0b_row26_col5" class="data row26 col5" ></td>
	  <td id="T_e2a0b_row26_col6" class="data row26 col6" ></td>
	  <td id="T_e2a0b_row26_col7" class="data row26 col7" ></td>
	  <td id="T_e2a0b_row26_col8" class="data row26 col8" ></td>
	  <td id="T_e2a0b_row26_col9" class="data row26 col9" ></td>
	  <td id="T_e2a0b_row26_col10" class="data row26 col10" ></td>
	  <td id="T_e2a0b_row26_col11" class="data row26 col11" ></td>
	  <td id="T_e2a0b_row26_col12" class="data row26 col12" ></td>
	  <td id="T_e2a0b_row26_col13" class="data row26 col13" ></td>
	  <td id="T_e2a0b_row26_col14" class="data row26 col14" ></td>
	  <td id="T_e2a0b_row26_col15" class="data row26 col15" ></td>
	  <td id="T_e2a0b_row26_col16" class="data row26 col16" ></td>
	  <td id="T_e2a0b_row26_col17" class="data row26 col17" ></td>
	  <td id="T_e2a0b_row26_col18" class="data row26 col18" ></td>
	  <td id="T_e2a0b_row26_col19" class="data row26 col19" ></td>
	  <td id="T_e2a0b_row26_col20" class="data row26 col20" ></td>
	  <td id="T_e2a0b_row26_col21" class="data row26 col21" ></td>
	  <td id="T_e2a0b_row26_col22" class="data row26 col22" ></td>
	  <td id="T_e2a0b_row26_col23" class="data row26 col23" ></td>
	  <td id="T_e2a0b_row26_col24" class="data row26 col24" ></td>
	  <td id="T_e2a0b_row26_col25" class="data row26 col25" ></td>
	  <td id="T_e2a0b_row26_col26" class="data row26 col26" >20.84</td>
	  <td id="T_e2a0b_row26_col27" class="data row26 col27" >19.33</td>
	  <td id="T_e2a0b_row26_col28" class="data row26 col28" >17.82</td>
	  <td id="T_e2a0b_row26_col29" class="data row26 col29" >16.30</td>
	  <td id="T_e2a0b_row26_col30" class="data row26 col30" >14.79</td>
	  <td id="T_e2a0b_row26_col31" class="data row26 col31" >13.28</td>
	  <td id="T_e2a0b_row26_col32" class="data row26 col32" >11.77</td>
	  <td id="T_e2a0b_row26_col33" class="data row26 col33" >10.27</td>
	  <td id="T_e2a0b_row26_col34" class="data row26 col34" >8.77</td>
	  <td id="T_e2a0b_row26_col35" class="data row26 col35" >7.27</td>
	  <td id="T_e2a0b_row26_col36" class="data row26 col36" >5.79</td>
	  <td id="T_e2a0b_row26_col37" class="data row26 col37" >4.31</td>
	  <td id="T_e2a0b_row26_col38" class="data row26 col38" >2.86</td>
	  <td id="T_e2a0b_row26_col39" class="data row26 col39" >1.42</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row27" class="row_heading level0 row27" >27</th>
	  <td id="T_e2a0b_row27_col0" class="data row27 col0" ></td>
	  <td id="T_e2a0b_row27_col1" class="data row27 col1" ></td>
	  <td id="T_e2a0b_row27_col2" class="data row27 col2" ></td>
	  <td id="T_e2a0b_row27_col3" class="data row27 col3" ></td>
	  <td id="T_e2a0b_row27_col4" class="data row27 col4" ></td>
	  <td id="T_e2a0b_row27_col5" class="data row27 col5" ></td>
	  <td id="T_e2a0b_row27_col6" class="data row27 col6" ></td>
	  <td id="T_e2a0b_row27_col7" class="data row27 col7" ></td>
	  <td id="T_e2a0b_row27_col8" class="data row27 col8" ></td>
	  <td id="T_e2a0b_row27_col9" class="data row27 col9" ></td>
	  <td id="T_e2a0b_row27_col10" class="data row27 col10" ></td>
	  <td id="T_e2a0b_row27_col11" class="data row27 col11" ></td>
	  <td id="T_e2a0b_row27_col12" class="data row27 col12" ></td>
	  <td id="T_e2a0b_row27_col13" class="data row27 col13" ></td>
	  <td id="T_e2a0b_row27_col14" class="data row27 col14" ></td>
	  <td id="T_e2a0b_row27_col15" class="data row27 col15" ></td>
	  <td id="T_e2a0b_row27_col16" class="data row27 col16" ></td>
	  <td id="T_e2a0b_row27_col17" class="data row27 col17" ></td>
	  <td id="T_e2a0b_row27_col18" class="data row27 col18" ></td>
	  <td id="T_e2a0b_row27_col19" class="data row27 col19" ></td>
	  <td id="T_e2a0b_row27_col20" class="data row27 col20" ></td>
	  <td id="T_e2a0b_row27_col21" class="data row27 col21" ></td>
	  <td id="T_e2a0b_row27_col22" class="data row27 col22" ></td>
	  <td id="T_e2a0b_row27_col23" class="data row27 col23" ></td>
	  <td id="T_e2a0b_row27_col24" class="data row27 col24" ></td>
	  <td id="T_e2a0b_row27_col25" class="data row27 col25" ></td>
	  <td id="T_e2a0b_row27_col26" class="data row27 col26" ></td>
	  <td id="T_e2a0b_row27_col27" class="data row27 col27" >19.37</td>
	  <td id="T_e2a0b_row27_col28" class="data row27 col28" >17.86</td>
	  <td id="T_e2a0b_row27_col29" class="data row27 col29" >16.35</td>
	  <td id="T_e2a0b_row27_col30" class="data row27 col30" >14.84</td>
	  <td id="T_e2a0b_row27_col31" class="data row27 col31" >13.33</td>
	  <td id="T_e2a0b_row27_col32" class="data row27 col32" >11.83</td>
	  <td id="T_e2a0b_row27_col33" class="data row27 col33" >10.32</td>
	  <td id="T_e2a0b_row27_col34" class="data row27 col34" >8.82</td>
	  <td id="T_e2a0b_row27_col35" class="data row27 col35" >7.33</td>
	  <td id="T_e2a0b_row27_col36" class="data row27 col36" >5.84</td>
	  <td id="T_e2a0b_row27_col37" class="data row27 col37" >4.36</td>
	  <td id="T_e2a0b_row27_col38" class="data row27 col38" >2.89</td>
	  <td id="T_e2a0b_row27_col39" class="data row27 col39" >1.44</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row28" class="row_heading level0 row28" >28</th>
	  <td id="T_e2a0b_row28_col0" class="data row28 col0" ></td>
	  <td id="T_e2a0b_row28_col1" class="data row28 col1" ></td>
	  <td id="T_e2a0b_row28_col2" class="data row28 col2" ></td>
	  <td id="T_e2a0b_row28_col3" class="data row28 col3" ></td>
	  <td id="T_e2a0b_row28_col4" class="data row28 col4" ></td>
	  <td id="T_e2a0b_row28_col5" class="data row28 col5" ></td>
	  <td id="T_e2a0b_row28_col6" class="data row28 col6" ></td>
	  <td id="T_e2a0b_row28_col7" class="data row28 col7" ></td>
	  <td id="T_e2a0b_row28_col8" class="data row28 col8" ></td>
	  <td id="T_e2a0b_row28_col9" class="data row28 col9" ></td>
	  <td id="T_e2a0b_row28_col10" class="data row28 col10" ></td>
	  <td id="T_e2a0b_row28_col11" class="data row28 col11" ></td>
	  <td id="T_e2a0b_row28_col12" class="data row28 col12" ></td>
	  <td id="T_e2a0b_row28_col13" class="data row28 col13" ></td>
	  <td id="T_e2a0b_row28_col14" class="data row28 col14" ></td>
	  <td id="T_e2a0b_row28_col15" class="data row28 col15" ></td>
	  <td id="T_e2a0b_row28_col16" class="data row28 col16" ></td>
	  <td id="T_e2a0b_row28_col17" class="data row28 col17" ></td>
	  <td id="T_e2a0b_row28_col18" class="data row28 col18" ></td>
	  <td id="T_e2a0b_row28_col19" class="data row28 col19" ></td>
	  <td id="T_e2a0b_row28_col20" class="data row28 col20" ></td>
	  <td id="T_e2a0b_row28_col21" class="data row28 col21" ></td>
	  <td id="T_e2a0b_row28_col22" class="data row28 col22" ></td>
	  <td id="T_e2a0b_row28_col23" class="data row28 col23" ></td>
	  <td id="T_e2a0b_row28_col24" class="data row28 col24" ></td>
	  <td id="T_e2a0b_row28_col25" class="data row28 col25" ></td>
	  <td id="T_e2a0b_row28_col26" class="data row28 col26" ></td>
	  <td id="T_e2a0b_row28_col27" class="data row28 col27" ></td>
	  <td id="T_e2a0b_row28_col28" class="data row28 col28" >17.90</td>
	  <td id="T_e2a0b_row28_col29" class="data row28 col29" >16.39</td>
	  <td id="T_e2a0b_row28_col30" class="data row28 col30" >14.88</td>
	  <td id="T_e2a0b_row28_col31" class="data row28 col31" >13.38</td>
	  <td id="T_e2a0b_row28_col32" class="data row28 col32" >11.87</td>
	  <td id="T_e2a0b_row28_col33" class="data row28 col33" >10.37</td>
	  <td id="T_e2a0b_row28_col34" class="data row28 col34" >8.87</td>
	  <td id="T_e2a0b_row28_col35" class="data row28 col35" >7.37</td>
	  <td id="T_e2a0b_row28_col36" class="data row28 col36" >5.88</td>
	  <td id="T_e2a0b_row28_col37" class="data row28 col37" >4.39</td>
	  <td id="T_e2a0b_row28_col38" class="data row28 col38" >2.92</td>
	  <td id="T_e2a0b_row28_col39" class="data row28 col39" >1.45</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row29" class="row_heading level0 row29" >29</th>
	  <td id="T_e2a0b_row29_col0" class="data row29 col0" ></td>
	  <td id="T_e2a0b_row29_col1" class="data row29 col1" ></td>
	  <td id="T_e2a0b_row29_col2" class="data row29 col2" ></td>
	  <td id="T_e2a0b_row29_col3" class="data row29 col3" ></td>
	  <td id="T_e2a0b_row29_col4" class="data row29 col4" ></td>
	  <td id="T_e2a0b_row29_col5" class="data row29 col5" ></td>
	  <td id="T_e2a0b_row29_col6" class="data row29 col6" ></td>
	  <td id="T_e2a0b_row29_col7" class="data row29 col7" ></td>
	  <td id="T_e2a0b_row29_col8" class="data row29 col8" ></td>
	  <td id="T_e2a0b_row29_col9" class="data row29 col9" ></td>
	  <td id="T_e2a0b_row29_col10" class="data row29 col10" ></td>
	  <td id="T_e2a0b_row29_col11" class="data row29 col11" ></td>
	  <td id="T_e2a0b_row29_col12" class="data row29 col12" ></td>
	  <td id="T_e2a0b_row29_col13" class="data row29 col13" ></td>
	  <td id="T_e2a0b_row29_col14" class="data row29 col14" ></td>
	  <td id="T_e2a0b_row29_col15" class="data row29 col15" ></td>
	  <td id="T_e2a0b_row29_col16" class="data row29 col16" ></td>
	  <td id="T_e2a0b_row29_col17" class="data row29 col17" ></td>
	  <td id="T_e2a0b_row29_col18" class="data row29 col18" ></td>
	  <td id="T_e2a0b_row29_col19" class="data row29 col19" ></td>
	  <td id="T_e2a0b_row29_col20" class="data row29 col20" ></td>
	  <td id="T_e2a0b_row29_col21" class="data row29 col21" ></td>
	  <td id="T_e2a0b_row29_col22" class="data row29 col22" ></td>
	  <td id="T_e2a0b_row29_col23" class="data row29 col23" ></td>
	  <td id="T_e2a0b_row29_col24" class="data row29 col24" ></td>
	  <td id="T_e2a0b_row29_col25" class="data row29 col25" ></td>
	  <td id="T_e2a0b_row29_col26" class="data row29 col26" ></td>
	  <td id="T_e2a0b_row29_col27" class="data row29 col27" ></td>
	  <td id="T_e2a0b_row29_col28" class="data row29 col28" ></td>
	  <td id="T_e2a0b_row29_col29" class="data row29 col29" >16.42</td>
	  <td id="T_e2a0b_row29_col30" class="data row29 col30" >14.91</td>
	  <td id="T_e2a0b_row29_col31" class="data row29 col31" >13.41</td>
	  <td id="T_e2a0b_row29_col32" class="data row29 col32" >11.90</td>
	  <td id="T_e2a0b_row29_col33" class="data row29 col33" >10.40</td>
	  <td id="T_e2a0b_row29_col34" class="data row29 col34" >8.90</td>
	  <td id="T_e2a0b_row29_col35" class="data row29 col35" >7.40</td>
	  <td id="T_e2a0b_row29_col36" class="data row29 col36" >5.91</td>
	  <td id="T_e2a0b_row29_col37" class="data row29 col37" >4.42</td>
	  <td id="T_e2a0b_row29_col38" class="data row29 col38" >2.94</td>
	  <td id="T_e2a0b_row29_col39" class="data row29 col39" >1.46</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row30" class="row_heading level0 row30" >30</th>
	  <td id="T_e2a0b_row30_col0" class="data row30 col0" ></td>
	  <td id="T_e2a0b_row30_col1" class="data row30 col1" ></td>
	  <td id="T_e2a0b_row30_col2" class="data row30 col2" ></td>
	  <td id="T_e2a0b_row30_col3" class="data row30 col3" ></td>
	  <td id="T_e2a0b_row30_col4" class="data row30 col4" ></td>
	  <td id="T_e2a0b_row30_col5" class="data row30 col5" ></td>
	  <td id="T_e2a0b_row30_col6" class="data row30 col6" ></td>
	  <td id="T_e2a0b_row30_col7" class="data row30 col7" ></td>
	  <td id="T_e2a0b_row30_col8" class="data row30 col8" ></td>
	  <td id="T_e2a0b_row30_col9" class="data row30 col9" ></td>
	  <td id="T_e2a0b_row30_col10" class="data row30 col10" ></td>
	  <td id="T_e2a0b_row30_col11" class="data row30 col11" ></td>
	  <td id="T_e2a0b_row30_col12" class="data row30 col12" ></td>
	  <td id="T_e2a0b_row30_col13" class="data row30 col13" ></td>
	  <td id="T_e2a0b_row30_col14" class="data row30 col14" ></td>
	  <td id="T_e2a0b_row30_col15" class="data row30 col15" ></td>
	  <td id="T_e2a0b_row30_col16" class="data row30 col16" ></td>
	  <td id="T_e2a0b_row30_col17" class="data row30 col17" ></td>
	  <td id="T_e2a0b_row30_col18" class="data row30 col18" ></td>
	  <td id="T_e2a0b_row30_col19" class="data row30 col19" ></td>
	  <td id="T_e2a0b_row30_col20" class="data row30 col20" ></td>
	  <td id="T_e2a0b_row30_col21" class="data row30 col21" ></td>
	  <td id="T_e2a0b_row30_col22" class="data row30 col22" ></td>
	  <td id="T_e2a0b_row30_col23" class="data row30 col23" ></td>
	  <td id="T_e2a0b_row30_col24" class="data row30 col24" ></td>
	  <td id="T_e2a0b_row30_col25" class="data row30 col25" ></td>
	  <td id="T_e2a0b_row30_col26" class="data row30 col26" ></td>
	  <td id="T_e2a0b_row30_col27" class="data row30 col27" ></td>
	  <td id="T_e2a0b_row30_col28" class="data row30 col28" ></td>
	  <td id="T_e2a0b_row30_col29" class="data row30 col29" ></td>
	  <td id="T_e2a0b_row30_col30" class="data row30 col30" >14.93</td>
	  <td id="T_e2a0b_row30_col31" class="data row30 col31" >13.43</td>
	  <td id="T_e2a0b_row30_col32" class="data row30 col32" >11.93</td>
	  <td id="T_e2a0b_row30_col33" class="data row30 col33" >10.43</td>
	  <td id="T_e2a0b_row30_col34" class="data row30 col34" >8.93</td>
	  <td id="T_e2a0b_row30_col35" class="data row30 col35" >7.43</td>
	  <td id="T_e2a0b_row30_col36" class="data row30 col36" >5.93</td>
	  <td id="T_e2a0b_row30_col37" class="data row30 col37" >4.44</td>
	  <td id="T_e2a0b_row30_col38" class="data row30 col38" >2.95</td>
	  <td id="T_e2a0b_row30_col39" class="data row30 col39" >1.47</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row31" class="row_heading level0 row31" >31</th>
	  <td id="T_e2a0b_row31_col0" class="data row31 col0" ></td>
	  <td id="T_e2a0b_row31_col1" class="data row31 col1" ></td>
	  <td id="T_e2a0b_row31_col2" class="data row31 col2" ></td>
	  <td id="T_e2a0b_row31_col3" class="data row31 col3" ></td>
	  <td id="T_e2a0b_row31_col4" class="data row31 col4" ></td>
	  <td id="T_e2a0b_row31_col5" class="data row31 col5" ></td>
	  <td id="T_e2a0b_row31_col6" class="data row31 col6" ></td>
	  <td id="T_e2a0b_row31_col7" class="data row31 col7" ></td>
	  <td id="T_e2a0b_row31_col8" class="data row31 col8" ></td>
	  <td id="T_e2a0b_row31_col9" class="data row31 col9" ></td>
	  <td id="T_e2a0b_row31_col10" class="data row31 col10" ></td>
	  <td id="T_e2a0b_row31_col11" class="data row31 col11" ></td>
	  <td id="T_e2a0b_row31_col12" class="data row31 col12" ></td>
	  <td id="T_e2a0b_row31_col13" class="data row31 col13" ></td>
	  <td id="T_e2a0b_row31_col14" class="data row31 col14" ></td>
	  <td id="T_e2a0b_row31_col15" class="data row31 col15" ></td>
	  <td id="T_e2a0b_row31_col16" class="data row31 col16" ></td>
	  <td id="T_e2a0b_row31_col17" class="data row31 col17" ></td>
	  <td id="T_e2a0b_row31_col18" class="data row31 col18" ></td>
	  <td id="T_e2a0b_row31_col19" class="data row31 col19" ></td>
	  <td id="T_e2a0b_row31_col20" class="data row31 col20" ></td>
	  <td id="T_e2a0b_row31_col21" class="data row31 col21" ></td>
	  <td id="T_e2a0b_row31_col22" class="data row31 col22" ></td>
	  <td id="T_e2a0b_row31_col23" class="data row31 col23" ></td>
	  <td id="T_e2a0b_row31_col24" class="data row31 col24" ></td>
	  <td id="T_e2a0b_row31_col25" class="data row31 col25" ></td>
	  <td id="T_e2a0b_row31_col26" class="data row31 col26" ></td>
	  <td id="T_e2a0b_row31_col27" class="data row31 col27" ></td>
	  <td id="T_e2a0b_row31_col28" class="data row31 col28" ></td>
	  <td id="T_e2a0b_row31_col29" class="data row31 col29" ></td>
	  <td id="T_e2a0b_row31_col30" class="data row31 col30" ></td>
	  <td id="T_e2a0b_row31_col31" class="data row31 col31" >13.45</td>
	  <td id="T_e2a0b_row31_col32" class="data row31 col32" >11.94</td>
	  <td id="T_e2a0b_row31_col33" class="data row31 col33" >10.44</td>
	  <td id="T_e2a0b_row31_col34" class="data row31 col34" >8.94</td>
	  <td id="T_e2a0b_row31_col35" class="data row31 col35" >7.45</td>
	  <td id="T_e2a0b_row31_col36" class="data row31 col36" >5.95</td>
	  <td id="T_e2a0b_row31_col37" class="data row31 col37" >4.46</td>
	  <td id="T_e2a0b_row31_col38" class="data row31 col38" >2.97</td>
	  <td id="T_e2a0b_row31_col39" class="data row31 col39" >1.48</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row32" class="row_heading level0 row32" >32</th>
	  <td id="T_e2a0b_row32_col0" class="data row32 col0" ></td>
	  <td id="T_e2a0b_row32_col1" class="data row32 col1" ></td>
	  <td id="T_e2a0b_row32_col2" class="data row32 col2" ></td>
	  <td id="T_e2a0b_row32_col3" class="data row32 col3" ></td>
	  <td id="T_e2a0b_row32_col4" class="data row32 col4" ></td>
	  <td id="T_e2a0b_row32_col5" class="data row32 col5" ></td>
	  <td id="T_e2a0b_row32_col6" class="data row32 col6" ></td>
	  <td id="T_e2a0b_row32_col7" class="data row32 col7" ></td>
	  <td id="T_e2a0b_row32_col8" class="data row32 col8" ></td>
	  <td id="T_e2a0b_row32_col9" class="data row32 col9" ></td>
	  <td id="T_e2a0b_row32_col10" class="data row32 col10" ></td>
	  <td id="T_e2a0b_row32_col11" class="data row32 col11" ></td>
	  <td id="T_e2a0b_row32_col12" class="data row32 col12" ></td>
	  <td id="T_e2a0b_row32_col13" class="data row32 col13" ></td>
	  <td id="T_e2a0b_row32_col14" class="data row32 col14" ></td>
	  <td id="T_e2a0b_row32_col15" class="data row32 col15" ></td>
	  <td id="T_e2a0b_row32_col16" class="data row32 col16" ></td>
	  <td id="T_e2a0b_row32_col17" class="data row32 col17" ></td>
	  <td id="T_e2a0b_row32_col18" class="data row32 col18" ></td>
	  <td id="T_e2a0b_row32_col19" class="data row32 col19" ></td>
	  <td id="T_e2a0b_row32_col20" class="data row32 col20" ></td>
	  <td id="T_e2a0b_row32_col21" class="data row32 col21" ></td>
	  <td id="T_e2a0b_row32_col22" class="data row32 col22" ></td>
	  <td id="T_e2a0b_row32_col23" class="data row32 col23" ></td>
	  <td id="T_e2a0b_row32_col24" class="data row32 col24" ></td>
	  <td id="T_e2a0b_row32_col25" class="data row32 col25" ></td>
	  <td id="T_e2a0b_row32_col26" class="data row32 col26" ></td>
	  <td id="T_e2a0b_row32_col27" class="data row32 col27" ></td>
	  <td id="T_e2a0b_row32_col28" class="data row32 col28" ></td>
	  <td id="T_e2a0b_row32_col29" class="data row32 col29" ></td>
	  <td id="T_e2a0b_row32_col30" class="data row32 col30" ></td>
	  <td id="T_e2a0b_row32_col31" class="data row32 col31" ></td>
	  <td id="T_e2a0b_row32_col32" class="data row32 col32" >11.96</td>
	  <td id="T_e2a0b_row32_col33" class="data row32 col33" >10.46</td>
	  <td id="T_e2a0b_row32_col34" class="data row32 col34" >8.96</td>
	  <td id="T_e2a0b_row32_col35" class="data row32 col35" >7.46</td>
	  <td id="T_e2a0b_row32_col36" class="data row32 col36" >5.96</td>
	  <td id="T_e2a0b_row32_col37" class="data row32 col37" >4.47</td>
	  <td id="T_e2a0b_row32_col38" class="data row32 col38" >2.97</td>
	  <td id="T_e2a0b_row32_col39" class="data row32 col39" >1.48</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row33" class="row_heading level0 row33" >33</th>
	  <td id="T_e2a0b_row33_col0" class="data row33 col0" ></td>
	  <td id="T_e2a0b_row33_col1" class="data row33 col1" ></td>
	  <td id="T_e2a0b_row33_col2" class="data row33 col2" ></td>
	  <td id="T_e2a0b_row33_col3" class="data row33 col3" ></td>
	  <td id="T_e2a0b_row33_col4" class="data row33 col4" ></td>
	  <td id="T_e2a0b_row33_col5" class="data row33 col5" ></td>
	  <td id="T_e2a0b_row33_col6" class="data row33 col6" ></td>
	  <td id="T_e2a0b_row33_col7" class="data row33 col7" ></td>
	  <td id="T_e2a0b_row33_col8" class="data row33 col8" ></td>
	  <td id="T_e2a0b_row33_col9" class="data row33 col9" ></td>
	  <td id="T_e2a0b_row33_col10" class="data row33 col10" ></td>
	  <td id="T_e2a0b_row33_col11" class="data row33 col11" ></td>
	  <td id="T_e2a0b_row33_col12" class="data row33 col12" ></td>
	  <td id="T_e2a0b_row33_col13" class="data row33 col13" ></td>
	  <td id="T_e2a0b_row33_col14" class="data row33 col14" ></td>
	  <td id="T_e2a0b_row33_col15" class="data row33 col15" ></td>
	  <td id="T_e2a0b_row33_col16" class="data row33 col16" ></td>
	  <td id="T_e2a0b_row33_col17" class="data row33 col17" ></td>
	  <td id="T_e2a0b_row33_col18" class="data row33 col18" ></td>
	  <td id="T_e2a0b_row33_col19" class="data row33 col19" ></td>
	  <td id="T_e2a0b_row33_col20" class="data row33 col20" ></td>
	  <td id="T_e2a0b_row33_col21" class="data row33 col21" ></td>
	  <td id="T_e2a0b_row33_col22" class="data row33 col22" ></td>
	  <td id="T_e2a0b_row33_col23" class="data row33 col23" ></td>
	  <td id="T_e2a0b_row33_col24" class="data row33 col24" ></td>
	  <td id="T_e2a0b_row33_col25" class="data row33 col25" ></td>
	  <td id="T_e2a0b_row33_col26" class="data row33 col26" ></td>
	  <td id="T_e2a0b_row33_col27" class="data row33 col27" ></td>
	  <td id="T_e2a0b_row33_col28" class="data row33 col28" ></td>
	  <td id="T_e2a0b_row33_col29" class="data row33 col29" ></td>
	  <td id="T_e2a0b_row33_col30" class="data row33 col30" ></td>
	  <td id="T_e2a0b_row33_col31" class="data row33 col31" ></td>
	  <td id="T_e2a0b_row33_col32" class="data row33 col32" ></td>
	  <td id="T_e2a0b_row33_col33" class="data row33 col33" >10.47</td>
	  <td id="T_e2a0b_row33_col34" class="data row33 col34" >8.97</td>
	  <td id="T_e2a0b_row33_col35" class="data row33 col35" >7.47</td>
	  <td id="T_e2a0b_row33_col36" class="data row33 col36" >5.97</td>
	  <td id="T_e2a0b_row33_col37" class="data row33 col37" >4.47</td>
	  <td id="T_e2a0b_row33_col38" class="data row33 col38" >2.98</td>
	  <td id="T_e2a0b_row33_col39" class="data row33 col39" >1.49</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row34" class="row_heading level0 row34" >34</th>
	  <td id="T_e2a0b_row34_col0" class="data row34 col0" ></td>
	  <td id="T_e2a0b_row34_col1" class="data row34 col1" ></td>
	  <td id="T_e2a0b_row34_col2" class="data row34 col2" ></td>
	  <td id="T_e2a0b_row34_col3" class="data row34 col3" ></td>
	  <td id="T_e2a0b_row34_col4" class="data row34 col4" ></td>
	  <td id="T_e2a0b_row34_col5" class="data row34 col5" ></td>
	  <td id="T_e2a0b_row34_col6" class="data row34 col6" ></td>
	  <td id="T_e2a0b_row34_col7" class="data row34 col7" ></td>
	  <td id="T_e2a0b_row34_col8" class="data row34 col8" ></td>
	  <td id="T_e2a0b_row34_col9" class="data row34 col9" ></td>
	  <td id="T_e2a0b_row34_col10" class="data row34 col10" ></td>
	  <td id="T_e2a0b_row34_col11" class="data row34 col11" ></td>
	  <td id="T_e2a0b_row34_col12" class="data row34 col12" ></td>
	  <td id="T_e2a0b_row34_col13" class="data row34 col13" ></td>
	  <td id="T_e2a0b_row34_col14" class="data row34 col14" ></td>
	  <td id="T_e2a0b_row34_col15" class="data row34 col15" ></td>
	  <td id="T_e2a0b_row34_col16" class="data row34 col16" ></td>
	  <td id="T_e2a0b_row34_col17" class="data row34 col17" ></td>
	  <td id="T_e2a0b_row34_col18" class="data row34 col18" ></td>
	  <td id="T_e2a0b_row34_col19" class="data row34 col19" ></td>
	  <td id="T_e2a0b_row34_col20" class="data row34 col20" ></td>
	  <td id="T_e2a0b_row34_col21" class="data row34 col21" ></td>
	  <td id="T_e2a0b_row34_col22" class="data row34 col22" ></td>
	  <td id="T_e2a0b_row34_col23" class="data row34 col23" ></td>
	  <td id="T_e2a0b_row34_col24" class="data row34 col24" ></td>
	  <td id="T_e2a0b_row34_col25" class="data row34 col25" ></td>
	  <td id="T_e2a0b_row34_col26" class="data row34 col26" ></td>
	  <td id="T_e2a0b_row34_col27" class="data row34 col27" ></td>
	  <td id="T_e2a0b_row34_col28" class="data row34 col28" ></td>
	  <td id="T_e2a0b_row34_col29" class="data row34 col29" ></td>
	  <td id="T_e2a0b_row34_col30" class="data row34 col30" ></td>
	  <td id="T_e2a0b_row34_col31" class="data row34 col31" ></td>
	  <td id="T_e2a0b_row34_col32" class="data row34 col32" ></td>
	  <td id="T_e2a0b_row34_col33" class="data row34 col33" ></td>
	  <td id="T_e2a0b_row34_col34" class="data row34 col34" >8.97</td>
	  <td id="T_e2a0b_row34_col35" class="data row34 col35" >7.47</td>
	  <td id="T_e2a0b_row34_col36" class="data row34 col36" >5.98</td>
	  <td id="T_e2a0b_row34_col37" class="data row34 col37" >4.48</td>
	  <td id="T_e2a0b_row34_col38" class="data row34 col38" >2.98</td>
	  <td id="T_e2a0b_row34_col39" class="data row34 col39" >1.49</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row35" class="row_heading level0 row35" >35</th>
	  <td id="T_e2a0b_row35_col0" class="data row35 col0" ></td>
	  <td id="T_e2a0b_row35_col1" class="data row35 col1" ></td>
	  <td id="T_e2a0b_row35_col2" class="data row35 col2" ></td>
	  <td id="T_e2a0b_row35_col3" class="data row35 col3" ></td>
	  <td id="T_e2a0b_row35_col4" class="data row35 col4" ></td>
	  <td id="T_e2a0b_row35_col5" class="data row35 col5" ></td>
	  <td id="T_e2a0b_row35_col6" class="data row35 col6" ></td>
	  <td id="T_e2a0b_row35_col7" class="data row35 col7" ></td>
	  <td id="T_e2a0b_row35_col8" class="data row35 col8" ></td>
	  <td id="T_e2a0b_row35_col9" class="data row35 col9" ></td>
	  <td id="T_e2a0b_row35_col10" class="data row35 col10" ></td>
	  <td id="T_e2a0b_row35_col11" class="data row35 col11" ></td>
	  <td id="T_e2a0b_row35_col12" class="data row35 col12" ></td>
	  <td id="T_e2a0b_row35_col13" class="data row35 col13" ></td>
	  <td id="T_e2a0b_row35_col14" class="data row35 col14" ></td>
	  <td id="T_e2a0b_row35_col15" class="data row35 col15" ></td>
	  <td id="T_e2a0b_row35_col16" class="data row35 col16" ></td>
	  <td id="T_e2a0b_row35_col17" class="data row35 col17" ></td>
	  <td id="T_e2a0b_row35_col18" class="data row35 col18" ></td>
	  <td id="T_e2a0b_row35_col19" class="data row35 col19" ></td>
	  <td id="T_e2a0b_row35_col20" class="data row35 col20" ></td>
	  <td id="T_e2a0b_row35_col21" class="data row35 col21" ></td>
	  <td id="T_e2a0b_row35_col22" class="data row35 col22" ></td>
	  <td id="T_e2a0b_row35_col23" class="data row35 col23" ></td>
	  <td id="T_e2a0b_row35_col24" class="data row35 col24" ></td>
	  <td id="T_e2a0b_row35_col25" class="data row35 col25" ></td>
	  <td id="T_e2a0b_row35_col26" class="data row35 col26" ></td>
	  <td id="T_e2a0b_row35_col27" class="data row35 col27" ></td>
	  <td id="T_e2a0b_row35_col28" class="data row35 col28" ></td>
	  <td id="T_e2a0b_row35_col29" class="data row35 col29" ></td>
	  <td id="T_e2a0b_row35_col30" class="data row35 col30" ></td>
	  <td id="T_e2a0b_row35_col31" class="data row35 col31" ></td>
	  <td id="T_e2a0b_row35_col32" class="data row35 col32" ></td>
	  <td id="T_e2a0b_row35_col33" class="data row35 col33" ></td>
	  <td id="T_e2a0b_row35_col34" class="data row35 col34" ></td>
	  <td id="T_e2a0b_row35_col35" class="data row35 col35" >7.48</td>
	  <td id="T_e2a0b_row35_col36" class="data row35 col36" >5.98</td>
	  <td id="T_e2a0b_row35_col37" class="data row35 col37" >4.48</td>
	  <td id="T_e2a0b_row35_col38" class="data row35 col38" >2.99</td>
	  <td id="T_e2a0b_row35_col39" class="data row35 col39" >1.49</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row36" class="row_heading level0 row36" >36</th>
	  <td id="T_e2a0b_row36_col0" class="data row36 col0" ></td>
	  <td id="T_e2a0b_row36_col1" class="data row36 col1" ></td>
	  <td id="T_e2a0b_row36_col2" class="data row36 col2" ></td>
	  <td id="T_e2a0b_row36_col3" class="data row36 col3" ></td>
	  <td id="T_e2a0b_row36_col4" class="data row36 col4" ></td>
	  <td id="T_e2a0b_row36_col5" class="data row36 col5" ></td>
	  <td id="T_e2a0b_row36_col6" class="data row36 col6" ></td>
	  <td id="T_e2a0b_row36_col7" class="data row36 col7" ></td>
	  <td id="T_e2a0b_row36_col8" class="data row36 col8" ></td>
	  <td id="T_e2a0b_row36_col9" class="data row36 col9" ></td>
	  <td id="T_e2a0b_row36_col10" class="data row36 col10" ></td>
	  <td id="T_e2a0b_row36_col11" class="data row36 col11" ></td>
	  <td id="T_e2a0b_row36_col12" class="data row36 col12" ></td>
	  <td id="T_e2a0b_row36_col13" class="data row36 col13" ></td>
	  <td id="T_e2a0b_row36_col14" class="data row36 col14" ></td>
	  <td id="T_e2a0b_row36_col15" class="data row36 col15" ></td>
	  <td id="T_e2a0b_row36_col16" class="data row36 col16" ></td>
	  <td id="T_e2a0b_row36_col17" class="data row36 col17" ></td>
	  <td id="T_e2a0b_row36_col18" class="data row36 col18" ></td>
	  <td id="T_e2a0b_row36_col19" class="data row36 col19" ></td>
	  <td id="T_e2a0b_row36_col20" class="data row36 col20" ></td>
	  <td id="T_e2a0b_row36_col21" class="data row36 col21" ></td>
	  <td id="T_e2a0b_row36_col22" class="data row36 col22" ></td>
	  <td id="T_e2a0b_row36_col23" class="data row36 col23" ></td>
	  <td id="T_e2a0b_row36_col24" class="data row36 col24" ></td>
	  <td id="T_e2a0b_row36_col25" class="data row36 col25" ></td>
	  <td id="T_e2a0b_row36_col26" class="data row36 col26" ></td>
	  <td id="T_e2a0b_row36_col27" class="data row36 col27" ></td>
	  <td id="T_e2a0b_row36_col28" class="data row36 col28" ></td>
	  <td id="T_e2a0b_row36_col29" class="data row36 col29" ></td>
	  <td id="T_e2a0b_row36_col30" class="data row36 col30" ></td>
	  <td id="T_e2a0b_row36_col31" class="data row36 col31" ></td>
	  <td id="T_e2a0b_row36_col32" class="data row36 col32" ></td>
	  <td id="T_e2a0b_row36_col33" class="data row36 col33" ></td>
	  <td id="T_e2a0b_row36_col34" class="data row36 col34" ></td>
	  <td id="T_e2a0b_row36_col35" class="data row36 col35" ></td>
	  <td id="T_e2a0b_row36_col36" class="data row36 col36" >5.99</td>
	  <td id="T_e2a0b_row36_col37" class="data row36 col37" >4.49</td>
	  <td id="T_e2a0b_row36_col38" class="data row36 col38" >2.99</td>
	  <td id="T_e2a0b_row36_col39" class="data row36 col39" >1.49</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row37" class="row_heading level0 row37" >37</th>
	  <td id="T_e2a0b_row37_col0" class="data row37 col0" ></td>
	  <td id="T_e2a0b_row37_col1" class="data row37 col1" ></td>
	  <td id="T_e2a0b_row37_col2" class="data row37 col2" ></td>
	  <td id="T_e2a0b_row37_col3" class="data row37 col3" ></td>
	  <td id="T_e2a0b_row37_col4" class="data row37 col4" ></td>
	  <td id="T_e2a0b_row37_col5" class="data row37 col5" ></td>
	  <td id="T_e2a0b_row37_col6" class="data row37 col6" ></td>
	  <td id="T_e2a0b_row37_col7" class="data row37 col7" ></td>
	  <td id="T_e2a0b_row37_col8" class="data row37 col8" ></td>
	  <td id="T_e2a0b_row37_col9" class="data row37 col9" ></td>
	  <td id="T_e2a0b_row37_col10" class="data row37 col10" ></td>
	  <td id="T_e2a0b_row37_col11" class="data row37 col11" ></td>
	  <td id="T_e2a0b_row37_col12" class="data row37 col12" ></td>
	  <td id="T_e2a0b_row37_col13" class="data row37 col13" ></td>
	  <td id="T_e2a0b_row37_col14" class="data row37 col14" ></td>
	  <td id="T_e2a0b_row37_col15" class="data row37 col15" ></td>
	  <td id="T_e2a0b_row37_col16" class="data row37 col16" ></td>
	  <td id="T_e2a0b_row37_col17" class="data row37 col17" ></td>
	  <td id="T_e2a0b_row37_col18" class="data row37 col18" ></td>
	  <td id="T_e2a0b_row37_col19" class="data row37 col19" ></td>
	  <td id="T_e2a0b_row37_col20" class="data row37 col20" ></td>
	  <td id="T_e2a0b_row37_col21" class="data row37 col21" ></td>
	  <td id="T_e2a0b_row37_col22" class="data row37 col22" ></td>
	  <td id="T_e2a0b_row37_col23" class="data row37 col23" ></td>
	  <td id="T_e2a0b_row37_col24" class="data row37 col24" ></td>
	  <td id="T_e2a0b_row37_col25" class="data row37 col25" ></td>
	  <td id="T_e2a0b_row37_col26" class="data row37 col26" ></td>
	  <td id="T_e2a0b_row37_col27" class="data row37 col27" ></td>
	  <td id="T_e2a0b_row37_col28" class="data row37 col28" ></td>
	  <td id="T_e2a0b_row37_col29" class="data row37 col29" ></td>
	  <td id="T_e2a0b_row37_col30" class="data row37 col30" ></td>
	  <td id="T_e2a0b_row37_col31" class="data row37 col31" ></td>
	  <td id="T_e2a0b_row37_col32" class="data row37 col32" ></td>
	  <td id="T_e2a0b_row37_col33" class="data row37 col33" ></td>
	  <td id="T_e2a0b_row37_col34" class="data row37 col34" ></td>
	  <td id="T_e2a0b_row37_col35" class="data row37 col35" ></td>
	  <td id="T_e2a0b_row37_col36" class="data row37 col36" ></td>
	  <td id="T_e2a0b_row37_col37" class="data row37 col37" >4.49</td>
	  <td id="T_e2a0b_row37_col38" class="data row37 col38" >2.99</td>
	  <td id="T_e2a0b_row37_col39" class="data row37 col39" >1.50</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row38" class="row_heading level0 row38" >38</th>
	  <td id="T_e2a0b_row38_col0" class="data row38 col0" ></td>
	  <td id="T_e2a0b_row38_col1" class="data row38 col1" ></td>
	  <td id="T_e2a0b_row38_col2" class="data row38 col2" ></td>
	  <td id="T_e2a0b_row38_col3" class="data row38 col3" ></td>
	  <td id="T_e2a0b_row38_col4" class="data row38 col4" ></td>
	  <td id="T_e2a0b_row38_col5" class="data row38 col5" ></td>
	  <td id="T_e2a0b_row38_col6" class="data row38 col6" ></td>
	  <td id="T_e2a0b_row38_col7" class="data row38 col7" ></td>
	  <td id="T_e2a0b_row38_col8" class="data row38 col8" ></td>
	  <td id="T_e2a0b_row38_col9" class="data row38 col9" ></td>
	  <td id="T_e2a0b_row38_col10" class="data row38 col10" ></td>
	  <td id="T_e2a0b_row38_col11" class="data row38 col11" ></td>
	  <td id="T_e2a0b_row38_col12" class="data row38 col12" ></td>
	  <td id="T_e2a0b_row38_col13" class="data row38 col13" ></td>
	  <td id="T_e2a0b_row38_col14" class="data row38 col14" ></td>
	  <td id="T_e2a0b_row38_col15" class="data row38 col15" ></td>
	  <td id="T_e2a0b_row38_col16" class="data row38 col16" ></td>
	  <td id="T_e2a0b_row38_col17" class="data row38 col17" ></td>
	  <td id="T_e2a0b_row38_col18" class="data row38 col18" ></td>
	  <td id="T_e2a0b_row38_col19" class="data row38 col19" ></td>
	  <td id="T_e2a0b_row38_col20" class="data row38 col20" ></td>
	  <td id="T_e2a0b_row38_col21" class="data row38 col21" ></td>
	  <td id="T_e2a0b_row38_col22" class="data row38 col22" ></td>
	  <td id="T_e2a0b_row38_col23" class="data row38 col23" ></td>
	  <td id="T_e2a0b_row38_col24" class="data row38 col24" ></td>
	  <td id="T_e2a0b_row38_col25" class="data row38 col25" ></td>
	  <td id="T_e2a0b_row38_col26" class="data row38 col26" ></td>
	  <td id="T_e2a0b_row38_col27" class="data row38 col27" ></td>
	  <td id="T_e2a0b_row38_col28" class="data row38 col28" ></td>
	  <td id="T_e2a0b_row38_col29" class="data row38 col29" ></td>
	  <td id="T_e2a0b_row38_col30" class="data row38 col30" ></td>
	  <td id="T_e2a0b_row38_col31" class="data row38 col31" ></td>
	  <td id="T_e2a0b_row38_col32" class="data row38 col32" ></td>
	  <td id="T_e2a0b_row38_col33" class="data row38 col33" ></td>
	  <td id="T_e2a0b_row38_col34" class="data row38 col34" ></td>
	  <td id="T_e2a0b_row38_col35" class="data row38 col35" ></td>
	  <td id="T_e2a0b_row38_col36" class="data row38 col36" ></td>
	  <td id="T_e2a0b_row38_col37" class="data row38 col37" ></td>
	  <td id="T_e2a0b_row38_col38" class="data row38 col38" >2.99</td>
	  <td id="T_e2a0b_row38_col39" class="data row38 col39" >1.50</td>
	</tr>
	<tr>
	  <th id="T_e2a0b_level0_row39" class="row_heading level0 row39" >39</th>
	  <td id="T_e2a0b_row39_col0" class="data row39 col0" ></td>
	  <td id="T_e2a0b_row39_col1" class="data row39 col1" ></td>
	  <td id="T_e2a0b_row39_col2" class="data row39 col2" ></td>
	  <td id="T_e2a0b_row39_col3" class="data row39 col3" ></td>
	  <td id="T_e2a0b_row39_col4" class="data row39 col4" ></td>
	  <td id="T_e2a0b_row39_col5" class="data row39 col5" ></td>
	  <td id="T_e2a0b_row39_col6" class="data row39 col6" ></td>
	  <td id="T_e2a0b_row39_col7" class="data row39 col7" ></td>
	  <td id="T_e2a0b_row39_col8" class="data row39 col8" ></td>
	  <td id="T_e2a0b_row39_col9" class="data row39 col9" ></td>
	  <td id="T_e2a0b_row39_col10" class="data row39 col10" ></td>
	  <td id="T_e2a0b_row39_col11" class="data row39 col11" ></td>
	  <td id="T_e2a0b_row39_col12" class="data row39 col12" ></td>
	  <td id="T_e2a0b_row39_col13" class="data row39 col13" ></td>
	  <td id="T_e2a0b_row39_col14" class="data row39 col14" ></td>
	  <td id="T_e2a0b_row39_col15" class="data row39 col15" ></td>
	  <td id="T_e2a0b_row39_col16" class="data row39 col16" ></td>
	  <td id="T_e2a0b_row39_col17" class="data row39 col17" ></td>
	  <td id="T_e2a0b_row39_col18" class="data row39 col18" ></td>
	  <td id="T_e2a0b_row39_col19" class="data row39 col19" ></td>
	  <td id="T_e2a0b_row39_col20" class="data row39 col20" ></td>
	  <td id="T_e2a0b_row39_col21" class="data row39 col21" ></td>
	  <td id="T_e2a0b_row39_col22" class="data row39 col22" ></td>
	  <td id="T_e2a0b_row39_col23" class="data row39 col23" ></td>
	  <td id="T_e2a0b_row39_col24" class="data row39 col24" ></td>
	  <td id="T_e2a0b_row39_col25" class="data row39 col25" ></td>
	  <td id="T_e2a0b_row39_col26" class="data row39 col26" ></td>
	  <td id="T_e2a0b_row39_col27" class="data row39 col27" ></td>
	  <td id="T_e2a0b_row39_col28" class="data row39 col28" ></td>
	  <td id="T_e2a0b_row39_col29" class="data row39 col29" ></td>
	  <td id="T_e2a0b_row39_col30" class="data row39 col30" ></td>
	  <td id="T_e2a0b_row39_col31" class="data row39 col31" ></td>
	  <td id="T_e2a0b_row39_col32" class="data row39 col32" ></td>
	  <td id="T_e2a0b_row39_col33" class="data row39 col33" ></td>
	  <td id="T_e2a0b_row39_col34" class="data row39 col34" ></td>
	  <td id="T_e2a0b_row39_col35" class="data row39 col35" ></td>
	  <td id="T_e2a0b_row39_col36" class="data row39 col36" ></td>
	  <td id="T_e2a0b_row39_col37" class="data row39 col37" ></td>
	  <td id="T_e2a0b_row39_col38" class="data row39 col38" ></td>
	  <td id="T_e2a0b_row39_col39" class="data row39 col39" >1.50</td>
	</tr>
  </tbody>
</table>

### Calculate final price and compare to market quote

```python
QUOTE_CALLABLE_CLEAN = MKTPRICE
num_accrued = int((T*compound) %cpn_freq)
quote_callable_dirty = QUOTE_CALLABLE_CLEAN + num_accrued * (cpn/compound)*FACE

callablebondtree = bondtree - calltree
model_price_dirty = callablebondtree.iloc[0,0]
model_price_clean = model_price_dirty - accint.iloc[0]

prices = pd.DataFrame({'clean':[QUOTE_CALLABLE_CLEAN, model_price_clean], 'dirty':[quote_callable_dirty, model_price_dirty]}, index=['market quote','model'])
prices.style.format('{:.2f}')
```

<style type="text/css">
</style>
<table id="T_8e122_">
  <thead>
	<tr>
	  <th class="blank level0" >&nbsp;</th>
	  <th class="col_heading level0 col0" >clean</th>
	  <th class="col_heading level0 col1" >dirty</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th id="T_8e122_level0_row0" class="row_heading level0 row0" >market quote</th>
	  <td id="T_8e122_row0_col0" class="data row0 col0" >99.95</td>
	  <td id="T_8e122_row0_col1" class="data row0 col1" >99.95</td>
	</tr>
	<tr>
	  <th id="T_8e122_level0_row1" class="row_heading level0 row1" >model</th>
	  <td id="T_8e122_row1_col0" class="data row1 col0" >97.80</td>
	  <td id="T_8e122_row1_col1" class="data row1 col1" >97.80</td>
	</tr>
  </tbody>
</table>

```python

```

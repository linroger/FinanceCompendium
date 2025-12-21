---
title: Credit Market Solutions
parent_directory: FINM Credit Markets
formatted: 2025-12-21 06:45:00 AM
formatter_model: grok-code-fast-1
cli-tool: opencode
primary_tags:
   - credit market analysis
   - treasury bond pricing
   - corporate bond valuation
secondary_tags:
   - bond symbology
   - yield curve construction
   - quantitative finance
   - fixed income securities
cssclasses: academia
---

# Credit Market Solutions

<hr><font color="green"><h1>from file: 1UChicago_FINM_35700_CreditMarkets_Spring2024_Solution_1</h1></font>

## Solution to Homework 1

## FINM 35700 - Spring 2024

### UChicago Financial Mathematics

* Alex Popovici
* alex.popovici@uchicago.edu

This homework relies on:

- the government and corporate bonds symbology file `bond_symbology`, 
- the "on-the-run" treasuries data file `govt_on_the_run` and
- the market data file `bond_market_prices_eod`.

You can find more details on US treasury instruments in the FINM 37400 Fixed Income course.

```python
import QuantLib as ql
import pandas as pd
import numpy as np
from matplotlib import pyplot as plt
import seaborn as sns
```

# Problem 1: Explore symbology for US treasuries and corporate bonds

## a. Load and explore US government bond symbology

Load the `bond_symbology` Excel file into a dataframe. It contains symbology for both government and corporate bonds. 

Select US Treasury bonds only (class = 'Govt', ticker = 'T'). For each government bond issue, calculate its initial term/time-to-maturity in years (based on issue date and maturity date), as well as the current time-to-maturity. Assume a year has 365.25 days (alternatively, use QuantLib yearFraction function).

```python
# Load bond_symbology.xlsx
bond_symbology = pd.read_excel('./data/bond_symbology.xlsx')

# Set as-of-date
as_of_date = pd.to_datetime('2024-04-01')

# Add term and TTM columns
bond_symbology['term'] = (bond_symbology['maturity'] - bond_symbology['start_date']).dt.days / 365.25
bond_symbology['TTM'] = (bond_symbology['maturity'] - as_of_date).dt.days / 365.25

# Create Govt bonds symbology df
govt_symbology = bond_symbology[(bond_symbology['class'] == 'Govt') 
                                   & (bond_symbology['ticker'] == 'T')].copy()

# Display govt_symbology
display(govt_symbology.head())


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
	  <th>ticker</th>
	  <th>class</th>
	  <th>figi</th>
	  <th>isin</th>
	  <th>und_bench_isin</th>
	  <th>security</th>
	  <th>name</th>
	  <th>type</th>
	  <th>coupon</th>
	  <th>cpn_type</th>
	  <th>…</th>
	  <th>acc_first</th>
	  <th>maturity</th>
	  <th>mty_typ</th>
	  <th>rank</th>
	  <th>amt_out</th>
	  <th>country</th>
	  <th>currency</th>
	  <th>status</th>
	  <th>term</th>
	  <th>TTM</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>329</th>
	  <td>T</td>
	  <td>Govt</td>
	  <td>BBG000DKHP42</td>
	  <td>US912810EG95</td>
	  <td>US9127963M90</td>
	  <td>T 8 3/4 08/15/20</td>
	  <td>US TREASURY N/B</td>
	  <td>US GOVERNMENT</td>
	  <td>8.750</td>
	  <td>FIXED</td>
	  <td>…</td>
	  <td>1990-08-15</td>
	  <td>2020-08-15</td>
	  <td>NORMAL</td>
	  <td>Unsecured</td>
	  <td>17059.0</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>INAC</td>
	  <td>30.001369</td>
	  <td>-3.627652</td>
	</tr>
	<tr>
	  <th>330</th>
	  <td>T</td>
	  <td>Govt</td>
	  <td>BBG000DJN4B7</td>
	  <td>US912810EH78</td>
	  <td>NaN</td>
	  <td>T 7 7/8 02/15/21</td>
	  <td>US TREASURY N/B</td>
	  <td>US GOVERNMENT</td>
	  <td>7.875</td>
	  <td>FIXED</td>
	  <td>…</td>
	  <td>1991-02-15</td>
	  <td>2021-02-15</td>
	  <td>NORMAL</td>
	  <td>Unsecured</td>
	  <td>10076.0</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>INAC</td>
	  <td>30.001369</td>
	  <td>-3.123888</td>
	</tr>
	<tr>
	  <th>331</th>
	  <td>T</td>
	  <td>Govt</td>
	  <td>BBG000DHBM88</td>
	  <td>US912810EJ35</td>
	  <td>NaN</td>
	  <td>T 8 1/8 05/15/21</td>
	  <td>US TREASURY N/B</td>
	  <td>US GOVERNMENT</td>
	  <td>8.125</td>
	  <td>FIXED</td>
	  <td>…</td>
	  <td>1991-05-15</td>
	  <td>2021-05-15</td>
	  <td>NORMAL</td>
	  <td>Unsecured</td>
	  <td>10067.0</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>INAC</td>
	  <td>30.001369</td>
	  <td>-2.880219</td>
	</tr>
	<tr>
	  <th>332</th>
	  <td>T</td>
	  <td>Govt</td>
	  <td>BBG000DKP182</td>
	  <td>US912810EK08</td>
	  <td>NaN</td>
	  <td>T 8 1/8 08/15/21</td>
	  <td>US TREASURY N/B</td>
	  <td>US GOVERNMENT</td>
	  <td>8.125</td>
	  <td>FIXED</td>
	  <td>…</td>
	  <td>1991-08-15</td>
	  <td>2021-08-15</td>
	  <td>NORMAL</td>
	  <td>Unsecured</td>
	  <td>9506.0</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>INAC</td>
	  <td>30.001369</td>
	  <td>-2.628337</td>
	</tr>
	<tr>
	  <th>333</th>
	  <td>T</td>
	  <td>Govt</td>
	  <td>BBG000DFRYP0</td>
	  <td>US912810EL80</td>
	  <td>NaN</td>
	  <td>T 8 11/15/21</td>
	  <td>US TREASURY N/B</td>
	  <td>US GOVERNMENT</td>
	  <td>8.000</td>
	  <td>FIXED</td>
	  <td>…</td>
	  <td>1991-11-15</td>
	  <td>2021-11-15</td>
	  <td>NORMAL</td>
	  <td>Unsecured</td>
	  <td>30632.0</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>INAC</td>
	  <td>30.001369</td>
	  <td>-2.376454</td>
	</tr>
  </tbody>
</table>
<p>5 rows × 25 columns</p>
</div>

## b. Historical time series of US treasury coupons 

Plot the time series of coupons for for US treasury notes/bonds issued in the last 10 years (indexed by issue date). 

What can you say about the overall level of issued coupons in the last 4 years?

```python
# 10y cut-off date
cut_off_date_10y = pd.to_datetime('2014-04-01')
govt_symbology_10y = govt_symbology[govt_symbology['start_date'] >= cut_off_date_10y].copy()

# Plot the US Treasury coupons by issue date (last 10 years)
govt_symbology_10y.plot(x='start_date', y='coupon', grid=True, style='-*', title='US Treasury coupons by issue date (last 10 years)', figsize=(12,8))
```

    <Axes: title={'center': 'US Treasury coupons by issue date (last 10 years)'}, xlabel='start_date'>




    

![png](output_9_1.png)

```python
# 4y cut-off date
cut_off_date_4y = pd.to_datetime('2020-04-01')
govt_symbology_4y = govt_symbology[govt_symbology['start_date'] >= cut_off_date_4y].copy()

# Plot the US Treasury coupons by issue date (last 10 years)
govt_symbology_4y.plot(x='start_date', y='coupon', grid=True, style='-*', title='US Treasury coupons by issue date (last 4 years)', figsize=(12,8))

# describe
govt_symbology_4y[['start_date', 'coupon']].describe()
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
	  <th>start_date</th>
	  <th>coupon</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>count</th>
	  <td>239</td>
	  <td>239.000000</td>
	</tr>
	<tr>
	  <th>mean</th>
	  <td>2022-04-11 07:37:54.476987392</td>
	  <td>2.366109</td>
	</tr>
	<tr>
	  <th>min</th>
	  <td>2020-04-15 00:00:00</td>
	  <td>0.125000</td>
	</tr>
	<tr>
	  <th>25%</th>
	  <td>2021-04-07 12:00:00</td>
	  <td>0.625000</td>
	</tr>
	<tr>
	  <th>50%</th>
	  <td>2022-04-18 00:00:00</td>
	  <td>2.500000</td>
	</tr>
	<tr>
	  <th>75%</th>
	  <td>2023-04-08 12:00:00</td>
	  <td>4.000000</td>
	</tr>
	<tr>
	  <th>max</th>
	  <td>2024-04-01 00:00:00</td>
	  <td>5.000000</td>
	</tr>
	<tr>
	  <th>std</th>
	  <td>NaN</td>
	  <td>1.663802</td>
	</tr>
  </tbody>
</table>
</div>

![png](output_10_1.png)

What can you say about the overall level of issued coupons in the last 4 years?

Based on the summary statistics provided, we can make following observations:

- The average (mean) coupon rate is 2.367.
- The median coupon rate (50th percentile) is 2.5
- The minimum coupon rate is 0.125, while the maximum is 5.00.
- The coupon rate increased from decade lows of 0.125 in 2020, to decade highs of 5.00 in 2023.

## c. Load the on-the-run US treasuries

Load the `govt_on_the_run` Excel file into a dataframe. Select the current on-the-run 2Y, 3Y, 5Y, 7Y, 10Y, 20Y and 30Y issues (off-the-run issues have the B & C suffix). Create a separate symbology dataframe for on-the-run treasuries only, to be used later on for the on-the-run government yield curve bootstrapping.

```python
# Load govt_on_the_run, as of 2024-04-01
govt_on_the_run = pd.read_excel('./data/govt_on_the_run.xlsx')

# Keep OTR treasuries only
govt_on_the_run_simple = govt_on_the_run[~govt_on_the_run['ticker'].str.contains('B|C')]
display(govt_on_the_run_simple)
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
	  <th>ticker</th>
	  <th>date</th>
	  <th>figi</th>
	  <th>isin</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>GT10 Govt</td>
	  <td>2024-04-01</td>
	  <td>BBG01L8YJFB3</td>
	  <td>US91282CJZ59</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>GT2 Govt</td>
	  <td>2024-04-01</td>
	  <td>BBG01M44ZLG5</td>
	  <td>US91282CKH33</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>GT20 Govt</td>
	  <td>2024-04-01</td>
	  <td>BBG01LK8Y0L1</td>
	  <td>US912810TZ12</td>
	</tr>
	<tr>
	  <th>9</th>
	  <td>GT3 Govt</td>
	  <td>2024-04-01</td>
	  <td>BBG01LW4R927</td>
	  <td>US91282CKE02</td>
	</tr>
	<tr>
	  <th>10</th>
	  <td>GT30 Govt</td>
	  <td>2024-04-01</td>
	  <td>BBG01L8YJKX8</td>
	  <td>US912810TX63</td>
	</tr>
	<tr>
	  <th>15</th>
	  <td>GT5 Govt</td>
	  <td>2024-04-01</td>
	  <td>BBG01M44ZQJ1</td>
	  <td>US91282CKG59</td>
	</tr>
	<tr>
	  <th>18</th>
	  <td>GT7 Govt</td>
	  <td>2024-04-01</td>
	  <td>BBG01M44ZS07</td>
	  <td>US91282CKF76</td>
	</tr>
  </tbody>
</table>
</div>

```python
# Create symbology for on-the-run treasuries only
govt_symbology_otr = govt_symbology[govt_symbology['isin'].isin(govt_on_the_run_simple['isin'])]
govt_symbology_otr = govt_symbology_otr.sort_values(by='TTM')
display(govt_symbology_otr)
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
	  <th>ticker</th>
	  <th>class</th>
	  <th>figi</th>
	  <th>isin</th>
	  <th>und_bench_isin</th>
	  <th>security</th>
	  <th>name</th>
	  <th>type</th>
	  <th>coupon</th>
	  <th>cpn_type</th>
	  <th>…</th>
	  <th>acc_first</th>
	  <th>maturity</th>
	  <th>mty_typ</th>
	  <th>rank</th>
	  <th>amt_out</th>
	  <th>country</th>
	  <th>currency</th>
	  <th>status</th>
	  <th>term</th>
	  <th>TTM</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>879</th>
	  <td>T</td>
	  <td>Govt</td>
	  <td>BBG01M44ZLG5</td>
	  <td>US91282CKH33</td>
	  <td>US91282CKH33</td>
	  <td>T 4 1/2 03/31/26</td>
	  <td>US TREASURY N/B</td>
	  <td>US GOVERNMENT</td>
	  <td>4.500</td>
	  <td>FIXED</td>
	  <td>…</td>
	  <td>2024-03-31</td>
	  <td>2026-03-31</td>
	  <td>NORMAL</td>
	  <td>Unsecured</td>
	  <td>66000.0</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	  <td>1.995893</td>
	  <td>1.995893</td>
	</tr>
	<tr>
	  <th>876</th>
	  <td>T</td>
	  <td>Govt</td>
	  <td>BBG01LW4R927</td>
	  <td>US91282CKE02</td>
	  <td>US91282CKE02</td>
	  <td>T 4 1/4 03/15/27</td>
	  <td>US TREASURY N/B</td>
	  <td>US GOVERNMENT</td>
	  <td>4.250</td>
	  <td>FIXED</td>
	  <td>…</td>
	  <td>2024-03-15</td>
	  <td>2027-03-15</td>
	  <td>NORMAL</td>
	  <td>Unsecured</td>
	  <td>56000.0</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	  <td>2.997947</td>
	  <td>2.951403</td>
	</tr>
	<tr>
	  <th>878</th>
	  <td>T</td>
	  <td>Govt</td>
	  <td>BBG01M44ZQJ1</td>
	  <td>US91282CKG59</td>
	  <td>US91282CKG59</td>
	  <td>T 4 1/8 03/31/29</td>
	  <td>US TREASURY N/B</td>
	  <td>US GOVERNMENT</td>
	  <td>4.125</td>
	  <td>FIXED</td>
	  <td>…</td>
	  <td>2024-03-31</td>
	  <td>2029-03-31</td>
	  <td>NORMAL</td>
	  <td>Unsecured</td>
	  <td>67000.0</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	  <td>4.996578</td>
	  <td>4.996578</td>
	</tr>
	<tr>
	  <th>877</th>
	  <td>T</td>
	  <td>Govt</td>
	  <td>BBG01M44ZS07</td>
	  <td>US91282CKF76</td>
	  <td>US91282CKF76</td>
	  <td>T 4 1/8 03/31/31</td>
	  <td>US TREASURY N/B</td>
	  <td>US GOVERNMENT</td>
	  <td>4.125</td>
	  <td>FIXED</td>
	  <td>…</td>
	  <td>2024-03-31</td>
	  <td>2031-03-31</td>
	  <td>NORMAL</td>
	  <td>Unsecured</td>
	  <td>43000.0</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	  <td>6.995209</td>
	  <td>6.995209</td>
	</tr>
	<tr>
	  <th>871</th>
	  <td>T</td>
	  <td>Govt</td>
	  <td>BBG01L8YJFB3</td>
	  <td>US91282CJZ59</td>
	  <td>US91282CJZ59</td>
	  <td>T 4 02/15/34</td>
	  <td>US TREASURY N/B</td>
	  <td>US GOVERNMENT</td>
	  <td>4.000</td>
	  <td>FIXED</td>
	  <td>…</td>
	  <td>2024-02-15</td>
	  <td>2034-02-15</td>
	  <td>NORMAL</td>
	  <td>Unsecured</td>
	  <td>84104.0</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	  <td>10.001369</td>
	  <td>9.875428</td>
	</tr>
	<tr>
	  <th>434</th>
	  <td>T</td>
	  <td>Govt</td>
	  <td>BBG01LK8Y0L1</td>
	  <td>US912810TZ12</td>
	  <td>US912810TZ12</td>
	  <td>T 4 1/2 02/15/44</td>
	  <td>US TREASURY N/B</td>
	  <td>US GOVERNMENT</td>
	  <td>4.500</td>
	  <td>FIXED</td>
	  <td>…</td>
	  <td>2024-02-15</td>
	  <td>2044-02-15</td>
	  <td>NORMAL</td>
	  <td>Unsecured</td>
	  <td>29684.0</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	  <td>19.961670</td>
	  <td>19.874059</td>
	</tr>
	<tr>
	  <th>433</th>
	  <td>T</td>
	  <td>Govt</td>
	  <td>BBG01L8YJKX8</td>
	  <td>US912810TX63</td>
	  <td>US912810TX63</td>
	  <td>T 4 1/4 02/15/54</td>
	  <td>US TREASURY N/B</td>
	  <td>US GOVERNMENT</td>
	  <td>4.250</td>
	  <td>FIXED</td>
	  <td>…</td>
	  <td>2024-02-15</td>
	  <td>2054-02-15</td>
	  <td>NORMAL</td>
	  <td>Unsecured</td>
	  <td>48846.0</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	  <td>30.001369</td>
	  <td>29.875428</td>
	</tr>
  </tbody>
</table>
<p>7 rows × 25 columns</p>
</div>

## d. Load and explore US corporate bonds symbology data

Starting from the `bond_symbology` dataframe, create a corporate bond dataframe containing

* bullet/non-callable (mty_typ="AT MATURITY"), 
* senior unsecured (rank = "Sr Unsecured"),
* fixed coupon (cpn_type="FIXED")

bonds only, with following columns:

| ticker | isin | figi | security | name | coupon | start_date | maturity | term | TTM |
|----------|-------|-------|-------------|-----|----------|---------|---------|---------|---------|

where 

* `term` refers to the initial term/time-to-maturity in years
* `TTM` refers to the current time-to-maturity in years

Create a separate dataframe for VZ issuer only (ticker = 'VZ') and display it.

```python
# Create Corp bonds symbology df
corp_symbology = bond_symbology[bond_symbology['class'] == 'Corp'].copy()

corp_symbology = corp_symbology[(corp_symbology['mty_typ'] == 'AT MATURITY') 
                                   & (corp_symbology['rank'] == 'Sr Unsecured')
                                   & (corp_symbology['cpn_type'] == 'FIXED')]

# Keep selected columns only
corp_symbology = corp_symbology[['ticker', 'isin', 'figi', 'security', 'name', 'coupon', 'start_date', 'maturity', 'term', 'TTM']]

# Filter for VZ issuer
corp_symbology_vz =  corp_symbology[corp_symbology['ticker'] == 'VZ']
corp_symbology_vz = corp_symbology_vz.sort_values(by='TTM')

# Display corp_symbology_vz
display(corp_symbology_vz)
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
	  <th>ticker</th>
	  <th>isin</th>
	  <th>figi</th>
	  <th>security</th>
	  <th>name</th>
	  <th>coupon</th>
	  <th>start_date</th>
	  <th>maturity</th>
	  <th>term</th>
	  <th>TTM</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>893</th>
	  <td>VZ</td>
	  <td>US92343VDD38</td>
	  <td>BBG00DGYP877</td>
	  <td>VZ 2 5/8 08/15/26</td>
	  <td>VERIZON COMMUNICATIONS</td>
	  <td>2.625</td>
	  <td>2016-08-01</td>
	  <td>2026-08-15</td>
	  <td>10.036961</td>
	  <td>2.370979</td>
	</tr>
	<tr>
	  <th>898</th>
	  <td>VZ</td>
	  <td>US92343VDY74</td>
	  <td>BBG00G6QW2B8</td>
	  <td>VZ 4 1/8 03/16/27</td>
	  <td>VERIZON COMMUNICATIONS</td>
	  <td>4.125</td>
	  <td>2017-03-16</td>
	  <td>2027-03-16</td>
	  <td>9.998631</td>
	  <td>2.954141</td>
	</tr>
	<tr>
	  <th>900</th>
	  <td>VZ</td>
	  <td>US92343VER15</td>
	  <td>BBG00M1BQWX0</td>
	  <td>VZ 4.329 09/21/28</td>
	  <td>VERIZON COMMUNICATIONS</td>
	  <td>4.329</td>
	  <td>2018-10-22</td>
	  <td>2028-09-21</td>
	  <td>9.916496</td>
	  <td>4.473648</td>
	</tr>
	<tr>
	  <th>927</th>
	  <td>VZ</td>
	  <td>US92344GAM87</td>
	  <td>BBG00003TCX8</td>
	  <td>VZ 7 3/4 12/01/30</td>
	  <td>VERIZON COMMUNICATIONS</td>
	  <td>7.750</td>
	  <td>2001-09-07</td>
	  <td>2030-12-01</td>
	  <td>29.232033</td>
	  <td>6.666667</td>
	</tr>
	<tr>
	  <th>899</th>
	  <td>VZ</td>
	  <td>US92343VEA89</td>
	  <td>BBG00HC11V79</td>
	  <td>VZ 4 1/2 08/10/33</td>
	  <td>VERIZON COMMUNICATIONS</td>
	  <td>4.500</td>
	  <td>2017-08-10</td>
	  <td>2033-08-10</td>
	  <td>16.000000</td>
	  <td>9.357974</td>
	</tr>
	<tr>
	  <th>884</th>
	  <td>VZ</td>
	  <td>US92343VBS25</td>
	  <td>BBG00580D503</td>
	  <td>VZ 6.4 09/15/33</td>
	  <td>VERIZON COMMUNICATIONS</td>
	  <td>6.400</td>
	  <td>2013-09-18</td>
	  <td>2033-09-15</td>
	  <td>19.991786</td>
	  <td>9.456537</td>
	</tr>
	<tr>
	  <th>928</th>
	  <td>VZ</td>
	  <td>US92344GAX43</td>
	  <td>BBG0000BH8D4</td>
	  <td>VZ 5.85 09/15/35</td>
	  <td>VERIZON COMMUNICATIONS</td>
	  <td>5.850</td>
	  <td>2005-09-13</td>
	  <td>2035-09-15</td>
	  <td>30.004107</td>
	  <td>11.455168</td>
	</tr>
	<tr>
	  <th>889</th>
	  <td>VZ</td>
	  <td>US92343VCV45</td>
	  <td>BBG009PNV1G8</td>
	  <td>VZ 4.272 01/15/36</td>
	  <td>VERIZON COMMUNICATIONS</td>
	  <td>4.272</td>
	  <td>2015-08-20</td>
	  <td>2036-01-15</td>
	  <td>20.405202</td>
	  <td>11.789185</td>
	</tr>
	<tr>
	  <th>896</th>
	  <td>VZ</td>
	  <td>US92343VDU52</td>
	  <td>BBG00G6QW5Q5</td>
	  <td>VZ 5 1/4 03/16/37</td>
	  <td>VERIZON COMMUNICATIONS</td>
	  <td>5.250</td>
	  <td>2017-03-16</td>
	  <td>2037-03-16</td>
	  <td>20.000000</td>
	  <td>12.955510</td>
	</tr>
	<tr>
	  <th>880</th>
	  <td>VZ</td>
	  <td>US92343VAF13</td>
	  <td>BBG00000BHR9</td>
	  <td>VZ 6 1/4 04/01/37</td>
	  <td>VERIZON COMMUNICATIONS</td>
	  <td>6.250</td>
	  <td>2007-04-03</td>
	  <td>2037-04-01</td>
	  <td>29.995893</td>
	  <td>12.999316</td>
	</tr>
	<tr>
	  <th>881</th>
	  <td>VZ</td>
	  <td>US92343VAK08</td>
	  <td>BBG0000M1DD6</td>
	  <td>VZ 6.4 02/15/38</td>
	  <td>VERIZON COMMUNICATIONS</td>
	  <td>6.400</td>
	  <td>2008-02-12</td>
	  <td>2038-02-15</td>
	  <td>30.009582</td>
	  <td>13.875428</td>
	</tr>
	<tr>
	  <th>894</th>
	  <td>VZ</td>
	  <td>US92343VDR24</td>
	  <td>BBG00GX2G1Z5</td>
	  <td>VZ 4.812 03/15/39</td>
	  <td>VERIZON COMMUNICATIONS</td>
	  <td>4.812</td>
	  <td>2017-07-06</td>
	  <td>2039-03-15</td>
	  <td>21.689254</td>
	  <td>14.951403</td>
	</tr>
	<tr>
	  <th>882</th>
	  <td>VZ</td>
	  <td>US92343VBE39</td>
	  <td>BBG0027BCJ08</td>
	  <td>VZ 4 3/4 11/01/41</td>
	  <td>VERIZON COMMUNICATIONS</td>
	  <td>4.750</td>
	  <td>2011-11-03</td>
	  <td>2041-11-01</td>
	  <td>29.995893</td>
	  <td>17.585216</td>
	</tr>
	<tr>
	  <th>885</th>
	  <td>VZ</td>
	  <td>US92343VBT08</td>
	  <td>BBG00580DD79</td>
	  <td>VZ 6.55 09/15/43</td>
	  <td>VERIZON COMMUNICATIONS</td>
	  <td>6.550</td>
	  <td>2013-09-18</td>
	  <td>2043-09-15</td>
	  <td>29.990418</td>
	  <td>19.455168</td>
	</tr>
	<tr>
	  <th>892</th>
	  <td>VZ</td>
	  <td>US92343VDC54</td>
	  <td>BBG00DGYPVQ5</td>
	  <td>VZ 4 1/8 08/15/46</td>
	  <td>VERIZON COMMUNICATIONS</td>
	  <td>4.125</td>
	  <td>2016-08-01</td>
	  <td>2046-08-15</td>
	  <td>30.036961</td>
	  <td>22.370979</td>
	</tr>
	<tr>
	  <th>886</th>
	  <td>VZ</td>
	  <td>US92343VCK89</td>
	  <td>BBG0083CP3G1</td>
	  <td>VZ 4.862 08/21/46</td>
	  <td>VERIZON COMMUNICATIONS</td>
	  <td>4.862</td>
	  <td>2015-03-11</td>
	  <td>2046-08-21</td>
	  <td>31.446954</td>
	  <td>22.387406</td>
	</tr>
	<tr>
	  <th>897</th>
	  <td>VZ</td>
	  <td>US92343VDV36</td>
	  <td>BBG00G6QW816</td>
	  <td>VZ 5 1/2 03/16/47</td>
	  <td>VERIZON COMMUNICATIONS</td>
	  <td>5.500</td>
	  <td>2017-03-16</td>
	  <td>2047-03-16</td>
	  <td>29.998631</td>
	  <td>22.954141</td>
	</tr>
	<tr>
	  <th>890</th>
	  <td>VZ</td>
	  <td>US92343VCX01</td>
	  <td>BBG009PNW3Z2</td>
	  <td>VZ 4.522 09/15/48</td>
	  <td>VERIZON COMMUNICATIONS</td>
	  <td>4.522</td>
	  <td>2015-08-20</td>
	  <td>2048-09-15</td>
	  <td>33.073238</td>
	  <td>24.457221</td>
	</tr>
	<tr>
	  <th>895</th>
	  <td>VZ</td>
	  <td>US92343VDS07</td>
	  <td>BBG00GX2GTT1</td>
	  <td>VZ 5.012 04/15/49</td>
	  <td>VERIZON COMMUNICATIONS</td>
	  <td>5.012</td>
	  <td>2017-07-06</td>
	  <td>2049-04-15</td>
	  <td>31.775496</td>
	  <td>25.037645</td>
	</tr>
	<tr>
	  <th>887</th>
	  <td>VZ</td>
	  <td>US92343VCM46</td>
	  <td>BBG0083CP816</td>
	  <td>VZ 5.012 08/21/54</td>
	  <td>VERIZON COMMUNICATIONS</td>
	  <td>5.012</td>
	  <td>2015-03-11</td>
	  <td>2054-08-21</td>
	  <td>39.446954</td>
	  <td>30.387406</td>
	</tr>
	<tr>
	  <th>891</th>
	  <td>VZ</td>
	  <td>US92343VCZ58</td>
	  <td>BBG009PNW578</td>
	  <td>VZ 4.672 03/15/55</td>
	  <td>VERIZON COMMUNICATIONS</td>
	  <td>4.672</td>
	  <td>2015-08-20</td>
	  <td>2055-03-15</td>
	  <td>39.567420</td>
	  <td>30.951403</td>
	</tr>
  </tbody>
</table>
</div>

### Problem 2: Explore EOD market prices and yields

## a. Load and explore treasury market prices and yields

Load the `bond_market_prices_eod` Excel file into a dataframe. It provides market data for US treasuries and corporate bonds as of 2024-04-01.

Merge the treasuries symbology dataframe with the market data and add the following columns:

| date | bidPrice | askPrice | midPrice | bidYield | askYield | midYield | term | TTM |
|----------|-------|-------------|-----|----------|---------|---------|---------|---------|

Plot a graph/scatter plot of treasury mid yields by TTM.

```python
# Load bond_market_prices_eod
bond_market_prices_eod = pd.read_excel('./data/bond_market_prices_eod.xlsx')

bond_market_prices_eod['midPrice'] = 0.5*(bond_market_prices_eod['bidPrice'] + bond_market_prices_eod['askPrice'])
bond_market_prices_eod['midYield'] = 0.5*(bond_market_prices_eod['bidYield'] + bond_market_prices_eod['askYield'])

display(bond_market_prices_eod.head())

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
	  <th>date</th>
	  <th>class</th>
	  <th>ticker</th>
	  <th>isin</th>
	  <th>figi</th>
	  <th>bidPrice</th>
	  <th>askPrice</th>
	  <th>accrued</th>
	  <th>bidYield</th>
	  <th>askYield</th>
	  <th>midPrice</th>
	  <th>midYield</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>2024-04-01</td>
	  <td>Corp</td>
	  <td>AAPL</td>
	  <td>US037833AL42</td>
	  <td>BBG004HST0K7</td>
	  <td>85.400</td>
	  <td>86.020</td>
	  <td>1.5930</td>
	  <td>5.051</td>
	  <td>4.994</td>
	  <td>85.7100</td>
	  <td>5.0225</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>2024-04-01</td>
	  <td>Corp</td>
	  <td>AAPL</td>
	  <td>US037833AT77</td>
	  <td>BBG006F8VWJ7</td>
	  <td>93.592</td>
	  <td>94.366</td>
	  <td>1.8170</td>
	  <td>4.957</td>
	  <td>4.893</td>
	  <td>93.9790</td>
	  <td>4.9250</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>2024-04-01</td>
	  <td>Corp</td>
	  <td>AAPL</td>
	  <td>US037833BA77</td>
	  <td>BBG0081TNL50</td>
	  <td>79.130</td>
	  <td>79.806</td>
	  <td>0.5180</td>
	  <td>5.085</td>
	  <td>5.023</td>
	  <td>79.4680</td>
	  <td>5.0540</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>2024-04-01</td>
	  <td>Corp</td>
	  <td>AAPL</td>
	  <td>US037833BH21</td>
	  <td>BBG008N1BQC1</td>
	  <td>90.860</td>
	  <td>91.557</td>
	  <td>1.7015</td>
	  <td>5.086</td>
	  <td>5.028</td>
	  <td>91.2085</td>
	  <td>5.0570</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>2024-04-01</td>
	  <td>Corp</td>
	  <td>AAPL</td>
	  <td>US037833BW97</td>
	  <td>BBG00C7QBCQ1</td>
	  <td>98.176</td>
	  <td>98.630</td>
	  <td>0.5000</td>
	  <td>4.702</td>
	  <td>4.651</td>
	  <td>98.4030</td>
	  <td>4.6765</td>
	</tr>
  </tbody>
</table>
</div>

```python
# Merge market data as of 2024-04-01 into treasury symbology
govt_agg = govt_symbology.merge(bond_market_prices_eod,  on=['class','ticker','figi','isin'])

govt_agg.head()

# Plot a graph/scatter plot of treasury mid yields by TTM
govt_agg.plot(x='TTM', y='midYield', grid=True, style='*', title='US Treasury Yields by TTM', figsize=(12,8))
```

    <Axes: title={'center': 'US Treasury Yields by TTM'}, xlabel='TTM'>




    

![png](output_20_1.png)

## b. Explore on-the-run treasuries only

Create a separate joint dataframe for on-the-run treasuries only.

Plot a graph/scatter plot of on-the-run treasury mid yields by TTM.

```python
# Merge market data as of 2024-04-01 into treasury OTR symbology
govt_agg_otr = govt_symbology_otr.merge(bond_market_prices_eod,  on=['class','ticker','figi','isin'])

# Plot a graph/scatter plot of treasury OTR mid yields by TTM
govt_agg_otr.plot(x='TTM', y='midYield', grid=True, style='*-', title='OTR US Treasury yields by TTM', figsize=(12,8))
```

    <Axes: title={'center': 'OTR US Treasury yields by TTM'}, xlabel='TTM'>




    

![png](output_22_1.png)

## c. Load and explore corporate bond market prices and yields

Merge the filtered corporate bonds symbology dataframe with the market data and add the following columns:

| date | bidPrice | askPrice | midPrice | bidYield | askYield | midYield | term | TTM |
|----------|-------|-------------|-----|----------|---------|---------|---------|---------|

List the unique tickers/issuers available in the dataframe.

```python
# Merge market data as of 2024-04-01 into corp symbology
corp_agg = corp_symbology.merge(bond_market_prices_eod,  on=['ticker','figi','isin'])

print(corp_symbology.shape)

display(corp_agg.head())
```

    (70, 10)

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
	  <th>ticker</th>
	  <th>isin</th>
	  <th>figi</th>
	  <th>security</th>
	  <th>name</th>
	  <th>coupon</th>
	  <th>start_date</th>
	  <th>maturity</th>
	  <th>term</th>
	  <th>TTM</th>
	  <th>date</th>
	  <th>class</th>
	  <th>bidPrice</th>
	  <th>askPrice</th>
	  <th>accrued</th>
	  <th>bidYield</th>
	  <th>askYield</th>
	  <th>midPrice</th>
	  <th>midYield</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>AAPL</td>
	  <td>US037833AL42</td>
	  <td>BBG004HST0K7</td>
	  <td>AAPL 3.85 05/04/43</td>
	  <td>APPLE INC</td>
	  <td>3.850</td>
	  <td>2013-05-03</td>
	  <td>2043-05-04</td>
	  <td>30.001369</td>
	  <td>19.088296</td>
	  <td>2024-04-01</td>
	  <td>Corp</td>
	  <td>85.400</td>
	  <td>86.020</td>
	  <td>1.5930</td>
	  <td>5.051</td>
	  <td>4.994</td>
	  <td>85.7100</td>
	  <td>5.0225</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>AAPL</td>
	  <td>US037833AT77</td>
	  <td>BBG006F8VWJ7</td>
	  <td>AAPL 4.45 05/06/44</td>
	  <td>APPLE INC</td>
	  <td>4.450</td>
	  <td>2014-05-06</td>
	  <td>2044-05-06</td>
	  <td>30.001369</td>
	  <td>20.095825</td>
	  <td>2024-04-01</td>
	  <td>Corp</td>
	  <td>93.592</td>
	  <td>94.366</td>
	  <td>1.8170</td>
	  <td>4.957</td>
	  <td>4.893</td>
	  <td>93.9790</td>
	  <td>4.9250</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>AAPL</td>
	  <td>US037833BA77</td>
	  <td>BBG0081TNL50</td>
	  <td>AAPL 3.45 02/09/45</td>
	  <td>APPLE INC</td>
	  <td>3.450</td>
	  <td>2015-02-09</td>
	  <td>2045-02-09</td>
	  <td>30.001369</td>
	  <td>20.859685</td>
	  <td>2024-04-01</td>
	  <td>Corp</td>
	  <td>79.130</td>
	  <td>79.806</td>
	  <td>0.5180</td>
	  <td>5.085</td>
	  <td>5.023</td>
	  <td>79.4680</td>
	  <td>5.0540</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>AAPL</td>
	  <td>US037833BH21</td>
	  <td>BBG008N1BQC1</td>
	  <td>AAPL 4 3/8 05/13/45</td>
	  <td>APPLE INC</td>
	  <td>4.375</td>
	  <td>2015-05-13</td>
	  <td>2045-05-13</td>
	  <td>30.001369</td>
	  <td>21.114305</td>
	  <td>2024-04-01</td>
	  <td>Corp</td>
	  <td>90.860</td>
	  <td>91.557</td>
	  <td>1.7015</td>
	  <td>5.086</td>
	  <td>5.028</td>
	  <td>91.2085</td>
	  <td>5.0570</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>DIS</td>
	  <td>US254687DV52</td>
	  <td>BBG00QNKP8R8</td>
	  <td>DIS 6.55 03/15/33</td>
	  <td>WALT DISNEY COMPANY/THE</td>
	  <td>6.550</td>
	  <td>2019-11-22</td>
	  <td>2033-03-15</td>
	  <td>13.311431</td>
	  <td>8.952772</td>
	  <td>2024-04-01</td>
	  <td>Corp</td>
	  <td>111.342</td>
	  <td>112.015</td>
	  <td>0.3285</td>
	  <td>4.965</td>
	  <td>4.877</td>
	  <td>111.6785</td>
	  <td>4.9210</td>
	</tr>
  </tbody>
</table>
</div>

```python
# Unique tickers
corp_agg_unique_tickers = corp_agg[['ticker', 'name']].drop_duplicates()

display(corp_agg_unique_tickers)
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
	  <th>ticker</th>
	  <th>name</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>AAPL</td>
	  <td>APPLE INC</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>DIS</td>
	  <td>WALT DISNEY COMPANY/THE</td>
	</tr>
	<tr>
	  <th>17</th>
	  <td>F</td>
	  <td>FORD MOTOR CREDIT CO LLC</td>
	</tr>
	<tr>
	  <th>18</th>
	  <td>GM</td>
	  <td>GENERAL MOTORS FINL CO</td>
	</tr>
	<tr>
	  <th>20</th>
	  <td>IBM</td>
	  <td>IBM CORP</td>
	</tr>
	<tr>
	  <th>33</th>
	  <td>MS</td>
	  <td>MORGAN STANLEY</td>
	</tr>
	<tr>
	  <th>42</th>
	  <td>ORCL</td>
	  <td>ORACLE CORP</td>
	</tr>
	<tr>
	  <th>45</th>
	  <td>VZ</td>
	  <td>VERIZON COMMUNICATIONS</td>
	</tr>
  </tbody>
</table>
</div>

## d. Yield curve plots

Plot a graph/scatter plot of mid yield curves by TTM (one line per ticker/issuer).

Add a separate line for on-the-run US treasury yield curve (risk free curve).

What can you say about the credit issuer yields, compared to US treasury yields?

```python
# Plot a graph/scatter plot of ticker yields by TTM
plt.figure(figsize=(12,8))
plt.grid()
sns.lineplot(data=corp_agg, x='TTM', y='midYield', hue='ticker', marker='o').set_title('Corporate Bond Yields by TTM')
# sns.scatterplot(data=corp_agg[corp_agg['TTM'] <= 30], x='TTM', y='midYield', hue='ticker').set_title('Corporate Bond Yields by TTM')
sns.lineplot(data=govt_agg_otr, x='TTM', y='midYield', label='US Treasury', marker = 'o')

```

    <Axes: title={'center': 'Corporate Bond Yields by TTM'}, xlabel='TTM', ylabel='midYield'>




    

![png](output_27_1.png)

## Problem 3: Underlying treasury benchmarks and credit spreads

## a. Add underlying benchmark bond mid yields

Start with the corporate bond symbology dataframe. Use the column 'und_bench_yield' to identify the underlying benchmark bond for each bond issue.

Add two new columns to the joint corporate bond dataframe:

| und_bench_yield | credit_spread |
|----------|-------|

where 

* `und_bench_yield` = underlying benchmark bond mid yield and
* `credit_spread` = issue yield - underlying benchmark bond mid yield.

```python
# Use the column 'und_bench_yield' to identify the underlying benchmark bond for each bond issue.
corp_merged = corp_agg.merge(bond_symbology[['isin', 'und_bench_isin']], on='isin')

# Create df containing govt_benchmark_yields
govt_benchmark_yields = bond_market_prices_eod[bond_market_prices_eod['class'] == 'Govt'][['isin', 'midYield']]
govt_benchmark_yields.rename(columns={'midYield': 'und_bench_yield', 'isin': 'und_bench_isin'}, inplace=True)

# Add benchmark bond yield
corp_merged = corp_merged.merge(govt_benchmark_yields, on='und_bench_isin')
corp_merged['credit_spread'] = corp_merged['midYield'] - corp_merged['und_bench_yield']
display(corp_merged[['ticker', 'isin', 'figi', 'security', 'und_bench_isin', 'midYield', 'und_bench_yield', 'credit_spread']])


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
	  <th>ticker</th>
	  <th>isin</th>
	  <th>figi</th>
	  <th>security</th>
	  <th>und_bench_isin</th>
	  <th>midYield</th>
	  <th>und_bench_yield</th>
	  <th>credit_spread</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>AAPL</td>
	  <td>US037833AL42</td>
	  <td>BBG004HST0K7</td>
	  <td>AAPL 3.85 05/04/43</td>
	  <td>US912810TZ12</td>
	  <td>5.0225</td>
	  <td>4.5545</td>
	  <td>0.4680</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>AAPL</td>
	  <td>US037833AT77</td>
	  <td>BBG006F8VWJ7</td>
	  <td>AAPL 4.45 05/06/44</td>
	  <td>US912810TZ12</td>
	  <td>4.9250</td>
	  <td>4.5545</td>
	  <td>0.3705</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>AAPL</td>
	  <td>US037833BA77</td>
	  <td>BBG0081TNL50</td>
	  <td>AAPL 3.45 02/09/45</td>
	  <td>US912810TZ12</td>
	  <td>5.0540</td>
	  <td>4.5545</td>
	  <td>0.4995</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>AAPL</td>
	  <td>US037833BH21</td>
	  <td>BBG008N1BQC1</td>
	  <td>AAPL 4 3/8 05/13/45</td>
	  <td>US912810TZ12</td>
	  <td>5.0570</td>
	  <td>4.5545</td>
	  <td>0.5025</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>DIS</td>
	  <td>US254687ER32</td>
	  <td>BBG00QNKVGW7</td>
	  <td>DIS 6.15 02/15/41</td>
	  <td>US912810TZ12</td>
	  <td>5.3310</td>
	  <td>4.5545</td>
	  <td>0.7765</td>
	</tr>
	<tr>
	  <th>…</th>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>65</th>
	  <td>VZ</td>
	  <td>US92343VCX01</td>
	  <td>BBG009PNW3Z2</td>
	  <td>VZ 4.522 09/15/48</td>
	  <td>US912810TV08</td>
	  <td>5.4405</td>
	  <td>4.4445</td>
	  <td>0.9960</td>
	</tr>
	<tr>
	  <th>66</th>
	  <td>VZ</td>
	  <td>US92343VCZ58</td>
	  <td>BBG009PNW578</td>
	  <td>VZ 4.672 03/15/55</td>
	  <td>US912810TV08</td>
	  <td>5.4095</td>
	  <td>4.4445</td>
	  <td>0.9650</td>
	</tr>
	<tr>
	  <th>67</th>
	  <td>VZ</td>
	  <td>US92343VDS07</td>
	  <td>BBG00GX2GTT1</td>
	  <td>VZ 5.012 04/15/49</td>
	  <td>US912810TV08</td>
	  <td>5.1910</td>
	  <td>4.4445</td>
	  <td>0.7465</td>
	</tr>
	<tr>
	  <th>68</th>
	  <td>DIS</td>
	  <td>USU25497BM60</td>
	  <td>BBG00N55NLL7</td>
	  <td>DIS 7.9 12/01/2095</td>
	  <td>US912810TV08</td>
	  <td>5.9910</td>
	  <td>4.4445</td>
	  <td>1.5465</td>
	</tr>
	<tr>
	  <th>69</th>
	  <td>DIS</td>
	  <td>USU25497BN44</td>
	  <td>BBG00N55NPV7</td>
	  <td>DIS 8 1/4 10/17/2096</td>
	  <td>US912810TV08</td>
	  <td>6.0480</td>
	  <td>4.4445</td>
	  <td>1.6035</td>
	</tr>
  </tbody>
</table>
<p>70 rows × 8 columns</p>
</div>

## b. Credit spread curve plots

Plot a graph/scatter plot of credit spread curves by TTM (one line per issuer).

```python
# Plot a graph/scatter plot of credit spreads by TTM
plt.figure(figsize=(12,8))
plt.grid()
sns.lineplot(data=corp_merged, x='TTM', y='credit_spread', hue='ticker', marker='o').set_title('Corporate Bond Credit Spreads by TTM')

```

    Text(0.5, 1.0, 'Corporate Bond Credit Spreads by TTM')




    

![png](output_32_1.png)

## c. Add g-spreads

Add two new columns to the joint corporate bond dataframe:

| interp_tsy_yield | g_spread |
|----------|-------|

where 

* `interp_tsy_yield` = interpolated treasury yield (using on-the-run treasuries only), matching the issue maturity
* `g_spread` = issue yield - interp_tsy_yield.

```python
# Interpolate OTR Treasury yields on corporate bond TTMs
interp_tsy_yield_vec = np.interp(corp_merged['TTM'], govt_agg_otr['TTM'], govt_agg_otr['midYield'])

# Add interp_tsy_yield and g_spread
corp_merged['interp_tsy_yield'] = interp_tsy_yield_vec
corp_merged['g_spread'] = corp_merged['midYield'] - corp_merged['interp_tsy_yield']

# Display results
display(corp_merged[['ticker', 'isin', 'figi', 'security', 'und_bench_isin', 'midYield', 'und_bench_yield', 'credit_spread', 'interp_tsy_yield', 'g_spread']])
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
	  <th>ticker</th>
	  <th>isin</th>
	  <th>figi</th>
	  <th>security</th>
	  <th>und_bench_isin</th>
	  <th>midYield</th>
	  <th>und_bench_yield</th>
	  <th>credit_spread</th>
	  <th>interp_tsy_yield</th>
	  <th>g_spread</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>AAPL</td>
	  <td>US037833AL42</td>
	  <td>BBG004HST0K7</td>
	  <td>AAPL 3.85 05/04/43</td>
	  <td>US912810TZ12</td>
	  <td>5.0225</td>
	  <td>4.5545</td>
	  <td>0.4680</td>
	  <td>4.535364</td>
	  <td>0.487136</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>AAPL</td>
	  <td>US037833AT77</td>
	  <td>BBG006F8VWJ7</td>
	  <td>AAPL 4.45 05/06/44</td>
	  <td>US912810TZ12</td>
	  <td>4.9250</td>
	  <td>4.5545</td>
	  <td>0.3705</td>
	  <td>4.552150</td>
	  <td>0.372850</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>AAPL</td>
	  <td>US037833BA77</td>
	  <td>BBG0081TNL50</td>
	  <td>AAPL 3.45 02/09/45</td>
	  <td>US912810TZ12</td>
	  <td>5.0540</td>
	  <td>4.5545</td>
	  <td>0.4995</td>
	  <td>4.544054</td>
	  <td>0.509946</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>AAPL</td>
	  <td>US037833BH21</td>
	  <td>BBG008N1BQC1</td>
	  <td>AAPL 4 3/8 05/13/45</td>
	  <td>US912810TZ12</td>
	  <td>5.0570</td>
	  <td>4.5545</td>
	  <td>0.5025</td>
	  <td>4.541355</td>
	  <td>0.515645</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>DIS</td>
	  <td>US254687ER32</td>
	  <td>BBG00QNKVGW7</td>
	  <td>DIS 6.15 02/15/41</td>
	  <td>US912810TZ12</td>
	  <td>5.3310</td>
	  <td>4.5545</td>
	  <td>0.7765</td>
	  <td>4.481490</td>
	  <td>0.849510</td>
	</tr>
	<tr>
	  <th>…</th>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>65</th>
	  <td>VZ</td>
	  <td>US92343VCX01</td>
	  <td>BBG009PNW3Z2</td>
	  <td>VZ 4.522 09/15/48</td>
	  <td>US912810TV08</td>
	  <td>5.4405</td>
	  <td>4.4445</td>
	  <td>0.9960</td>
	  <td>4.505925</td>
	  <td>0.934575</td>
	</tr>
	<tr>
	  <th>66</th>
	  <td>VZ</td>
	  <td>US92343VCZ58</td>
	  <td>BBG009PNW578</td>
	  <td>VZ 4.672 03/15/55</td>
	  <td>US912810TV08</td>
	  <td>5.4095</td>
	  <td>4.4445</td>
	  <td>0.9650</td>
	  <td>4.448500</td>
	  <td>0.961000</td>
	</tr>
	<tr>
	  <th>67</th>
	  <td>VZ</td>
	  <td>US92343VDS07</td>
	  <td>BBG00GX2GTT1</td>
	  <td>VZ 5.012 04/15/49</td>
	  <td>US912810TV08</td>
	  <td>5.1910</td>
	  <td>4.4445</td>
	  <td>0.7465</td>
	  <td>4.499773</td>
	  <td>0.691227</td>
	</tr>
	<tr>
	  <th>68</th>
	  <td>DIS</td>
	  <td>USU25497BM60</td>
	  <td>BBG00N55NLL7</td>
	  <td>DIS 7.9 12/01/2095</td>
	  <td>US912810TV08</td>
	  <td>5.9910</td>
	  <td>4.4445</td>
	  <td>1.5465</td>
	  <td>4.448500</td>
	  <td>1.542500</td>
	</tr>
	<tr>
	  <th>69</th>
	  <td>DIS</td>
	  <td>USU25497BN44</td>
	  <td>BBG00N55NPV7</td>
	  <td>DIS 8 1/4 10/17/2096</td>
	  <td>US912810TV08</td>
	  <td>6.0480</td>
	  <td>4.4445</td>
	  <td>1.6035</td>
	  <td>4.448500</td>
	  <td>1.599500</td>
	</tr>
  </tbody>
</table>
<p>70 rows × 10 columns</p>
</div>

## d. G-spread curve plots

Plot a graph/scatter plot of g-spread curves by TTM (one line per issuer).

```python
# Plot a graph/scatter plot of g-spreads by TTM
plt.figure(figsize=(12,8))
plt.grid()
sns.lineplot(data=corp_merged, x='TTM', y='g_spread', hue='ticker', marker='o').set_title('Corporate Bond G-Spreads by TTM')
```

    Text(0.5, 1.0, 'Corporate Bond G-Spreads by TTM')




    

![png](output_36_1.png)

## Problem 4: Explore sections 1 to 5 in the QuantLib example notebook

Explore sections 1 to 5 in the example notebook and identify concepts discussed in the first lecture. Collect open questions for the upcoming TA Review session on the analytics library.

Find the 'ORCL 2.95 04/01/30' bond (mentioned on page 12 in Session 1) in the bond symbology file. Create the corresponding fixed rate bond object and display the future cashflows. Do you match the cashflows displayed on page 13?

Going forward, we will be using QuantLib for curve calibration (US Treasury + SOFR), as well as pricing and risk of various cash and synthetic credit instruments.

```python
# Find the 'ORCL 2.95 04/01/30' bond in bond symbology
corp_symbology_orcl = bond_symbology[bond_symbology['security'] == 'ORCL 2.95 04/01/30']

display(corp_symbology_orcl.transpose())
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
	  <th>312</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>ticker</th>
	  <td>ORCL</td>
	</tr>
	<tr>
	  <th>class</th>
	  <td>Corp</td>
	</tr>
	<tr>
	  <th>figi</th>
	  <td>BBG00SXGDGF0</td>
	</tr>
	<tr>
	  <th>isin</th>
	  <td>US68389XBV64</td>
	</tr>
	<tr>
	  <th>und_bench_isin</th>
	  <td>US91282CKG59</td>
	</tr>
	<tr>
	  <th>security</th>
	  <td>ORCL 2.95 04/01/30</td>
	</tr>
	<tr>
	  <th>name</th>
	  <td>ORACLE CORP</td>
	</tr>
	<tr>
	  <th>type</th>
	  <td>GLOBAL</td>
	</tr>
	<tr>
	  <th>coupon</th>
	  <td>2.95</td>
	</tr>
	<tr>
	  <th>cpn_type</th>
	  <td>FIXED</td>
	</tr>
	<tr>
	  <th>dcc</th>
	  <td>30/360</td>
	</tr>
	<tr>
	  <th>cpn_freq</th>
	  <td>2</td>
	</tr>
	<tr>
	  <th>days_settle</th>
	  <td>2</td>
	</tr>
	<tr>
	  <th>start_date</th>
	  <td>2020-04-01 00:00:00</td>
	</tr>
	<tr>
	  <th>cpn_first</th>
	  <td>2020-10-01 00:00:00</td>
	</tr>
	<tr>
	  <th>acc_first</th>
	  <td>2020-04-01 00:00:00</td>
	</tr>
	<tr>
	  <th>maturity</th>
	  <td>2030-04-01 00:00:00</td>
	</tr>
	<tr>
	  <th>mty_typ</th>
	  <td>CALLABLE</td>
	</tr>
	<tr>
	  <th>rank</th>
	  <td>Sr Unsecured</td>
	</tr>
	<tr>
	  <th>amt_out</th>
	  <td>3250.0</td>
	</tr>
	<tr>
	  <th>country</th>
	  <td>US</td>
	</tr>
	<tr>
	  <th>currency</th>
	  <td>USD</td>
	</tr>
	<tr>
	  <th>status</th>
	  <td>ACTV</td>
	</tr>
	<tr>
	  <th>term</th>
	  <td>9.998631</td>
	</tr>
	<tr>
	  <th>TTM</th>
	  <td>5.998631</td>
	</tr>
  </tbody>
</table>
</div>

```python
# Construct fixed rate cashflow schedule for ORCL 2.95 04/01/30

issue_date = ql.Date(1, 4, 2020)        # 2020-04-01
maturity_date = ql.Date(1, 4, 2030)     # 2030-04-01

coupon_freq = ql.Semiannual
coupon_term = ql.Period(coupon_freq)
calendar = ql.UnitedStates(ql.UnitedStates.GovernmentBond)
day_count_conv = ql.Unadjusted
date_generation = ql.DateGeneration.Backward
month_end = True

# fixed_rate_schedule
fixed_rate_schedule = ql.Schedule(issue_date,
                       maturity_date,
                       coupon_term,
                       calendar,
                       day_count_conv,
                       day_count_conv,
                       date_generation,
                       month_end)
```

```python
# Construct corporate bond object for ORCL 2.95 04/01/30

# day_count: 30/360 for fixed-rate Corp bonds
day_count = ql.Thirty360(ql.Thirty360.USA)

# settlement_days: 2 for Corp Bonds
settlement_days = 2

# coupons
coupon_rate = 0.295     # 2.95%
coupons = [coupon_rate]

# payment_convention
payment_convention = ql.Unadjusted

# face_value
face_value = 100


# Construct the fixed_rate_bond
face_value = 100
fixed_rate_bond = ql.FixedRateBond(
    settlement_days,
    face_value,
    fixed_rate_schedule,
    coupons,
    day_count,
    payment_convention)
```

```python
# Display the contractual cashflows. 
x = [(cf.date().to_date(), cf.amount()) for cf in fixed_rate_bond.cashflows()]
cf_date_fixed, cf_amount = zip(*x)
fixed_rate_bond_cashflows = pd.DataFrame(data={'CashFlowDate': cf_date_fixed, 'CashFlowAmount': cf_amount})

# Cashflows match the ones displayed on page 13 (from Bloomberg CSHF screenshot), up to the face value multiplier.
display(fixed_rate_bond_cashflows)
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
	  <th>CashFlowDate</th>
	  <th>CashFlowAmount</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>2020-10-01</td>
	  <td>14.75</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>2021-04-01</td>
	  <td>14.75</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>2021-10-01</td>
	  <td>14.75</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>2022-04-01</td>
	  <td>14.75</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>2022-10-01</td>
	  <td>14.75</td>
	</tr>
	<tr>
	  <th>5</th>
	  <td>2023-04-01</td>
	  <td>14.75</td>
	</tr>
	<tr>
	  <th>6</th>
	  <td>2023-10-01</td>
	  <td>14.75</td>
	</tr>
	<tr>
	  <th>7</th>
	  <td>2024-04-01</td>
	  <td>14.75</td>
	</tr>
	<tr>
	  <th>8</th>
	  <td>2024-10-01</td>
	  <td>14.75</td>
	</tr>
	<tr>
	  <th>9</th>
	  <td>2025-04-01</td>
	  <td>14.75</td>
	</tr>
	<tr>
	  <th>10</th>
	  <td>2025-10-01</td>
	  <td>14.75</td>
	</tr>
	<tr>
	  <th>11</th>
	  <td>2026-04-01</td>
	  <td>14.75</td>
	</tr>
	<tr>
	  <th>12</th>
	  <td>2026-10-01</td>
	  <td>14.75</td>
	</tr>
	<tr>
	  <th>13</th>
	  <td>2027-04-01</td>
	  <td>14.75</td>
	</tr>
	<tr>
	  <th>14</th>
	  <td>2027-10-01</td>
	  <td>14.75</td>
	</tr>
	<tr>
	  <th>15</th>
	  <td>2028-04-01</td>
	  <td>14.75</td>
	</tr>
	<tr>
	  <th>16</th>
	  <td>2028-10-01</td>
	  <td>14.75</td>
	</tr>
	<tr>
	  <th>17</th>
	  <td>2029-04-01</td>
	  <td>14.75</td>
	</tr>
	<tr>
	  <th>18</th>
	  <td>2029-10-01</td>
	  <td>14.75</td>
	</tr>
	<tr>
	  <th>19</th>
	  <td>2030-04-01</td>
	  <td>14.75</td>
	</tr>
	<tr>
	  <th>20</th>
	  <td>2030-04-01</td>
	  <td>100.00</td>
	</tr>
  </tbody>
</table>
</div>

<hr><font color="green"><h1>from file: 2UChicago_FINM_35700_CreditMarkets_Spring2024_Examples_QuantLib_Basics</h1></font>

## Credit Markets
## FINM 35700 - Spring 2024

### UChicago Financial Mathematics

* Alex Popovici
* alex.popovici@uchicago.edu

## Basic Usage of QuantLib analytics library
## More details at: https://quantlib-python-docs.readthedocs.io/en/latest/

- 1\. Objects and Handles
  - a. Define a quote object and inspect the value
  - b. Define quoteHandle as a handle/smart pointer to the quote object    
  - c. Calendars and day-count conventions
- 2\. Cashflow Schedules
  - a. Construct semi-annual cashflow schedule object, for fixed-rate bonds
  - b. Inspect the semi-annual cashflow schedule
  - c. Construct quarterly cashflow schedule object, for floating-rate bonds
  - d. Inspect the quarterly cashflow schedule
- 3\. Discount Curve / Yield Curve Term Structure
  - a. Constructing a Flat Yield Curve
  - b. Inspect the discount curve
- 4\. Fixed and Floating Rate Bonds
  - a. Constructing a fixed rate bond object
  - b. Investigate the fixed-rate bond cash-flows
  - c. Constructing a floating rate bond object: linked to SOFR index
- 5\. Bond Present Value Calculation (no credit risk)
  - a. Direct function call using risk-free bond pricing engine
  - b. Manual Calculation to validate PV (for fixed and floating-rate bonds)
  - c. Bond Clean vs Dirty Prices (adjusted to settle date)
- 6\. Market Data Scenarios
  - a. Apply +/-1bp parallel shift scenarios in interest rates curve and compute scenario prices
  - b. Compute scenario DV01, duration and convexity
  - c. Yield to Price conversions
  - d. Price to Yield conversions
- 7\. Analytical Duration, Convexity and Z-Spread (flat yield model)
  - a. Compute bond duration, convexity and Z-Spread   
  - b. Validate Z-Spread
- 8\. Treasury Yield Curve Calibration (via Bootstrapping)
  - a. Calibrate treasury flat yield curve (simple case of one calibration instrument)
  - b. Display the calibrated Treasury discount curve dataframe
  - c. Plot the calibrated Treasury Zero Rates and Discount Factors curves
  - d. Reprice the bond on the yield curve to validate the calibration

```python
import QuantLib as ql
import numpy as np
import pandas as pd
```

# 1. Objects and Handles
## a. Define a quote object and inspect the value.

```python
quote = ql.SimpleQuote(.01)
print(quote.value())

quote.setValue(.02)
print(quote.value())
```

    0.01
    0.02

## b. Define quoteHandle as a handle/smart pointer to the quote object

```python
quoteHandle = ql.QuoteHandle(quote)
quoteHandle.value()
```

    0.02

### When the quote object is changed, the quoteHandle changes value as well

```python
quote.setValue(.03)
quoteHandle.value()
```

    0.03

## c. Calendars and day-count conventions

```python
# dates
todays_date = ql.Date.todaysDate()
test_date = todays_date + 90
print('todays_date =', todays_date)
print('test_date =', test_date)


# calendars
calendar = ql.UnitedStates(ql.UnitedStates.GovernmentBond)
holiday_list = list(calendar.holidayList(todays_date, test_date))
print('holiday_list =', holiday_list)


# day count conventions
day_count = ql.Actual360()
print('day_count =', day_count)

# year fractions
test_year_fraction = day_count.yearFraction(todays_date, test_date)
print('Year Fraction  from', todays_date, 'to', test_date,'] =', test_year_fraction)
```

    todays_date = March 17th, 2024
    test_date = June 15th, 2024
    holiday_list = [Date(29,3,2024), Date(27,5,2024)]
    day_count = Actual/360 day counter
    Year Fraction  from March 17th, 2024 to June 15th, 2024 ] = 0.25

# 2. Cashflow Schedules
## a. Construct semi-annual cashflow schedule object, for fixed-rate bonds

```python
issue_date = ql.Date(2, 4, 2024)        # 2024-04-02
maturity_date = ql.Date(2, 4, 2028)     # 2028-04-02
coupon_freq = ql.Semiannual
coupon_term = ql.Period(coupon_freq)
calendar = ql.UnitedStates(ql.UnitedStates.GovernmentBond)
day_count_conv = ql.Unadjusted
date_generation = ql.DateGeneration.Backward
month_end = True

# fixed_rate_schedule
fixed_rate_schedule = ql.Schedule(issue_date,
                       maturity_date,
                       coupon_term,
                       calendar,
                       day_count_conv,
                       day_count_conv,
                       date_generation,
                       month_end)
```

## b. Inspect the semi-annual cashflow schedule
- Use list() to get a list of all the dates in Schedule, and len() to get number of dates
- Use ] for random access
- use startDate(), endDate()

```python
print("All dates: ", list(fixed_rate_schedule))
print("Length: ", len(fixed_rate_schedule))
print("The 3rd coupon date: ", [fixed_rate_schedule])  # random access
print("Start Date: ", fixed_rate_schedule.startDate())
print("End Date: ", fixed_rate_schedule.endDate())
```

    All dates:  [Date(2,4,2024), Date(2,10,2024), Date(2,4,2025), Date(2,10,2025), Date(2,4,2026), Date(2,10,2026), Date(2,4,2027), Date(2,10,2027), Date(2,4,2028)]
    Length:  9
    The 3rd coupon date:  [<QuantLib.QuantLib.Schedule; proxy of <Swig Object of type 'Schedule *' at 0x0000023BD05A1BA0> >]
    Start Date:  April 2nd, 2024
    End Date:  April 2nd, 2028

## c. Construct quarterly cashflow schedule object, for floating-rate bonds

```python
# floating_rate_bond_schedule
floating_rate_schedule = ql.Schedule(
    issue_date,
    maturity_date,
    ql.Period(ql.Quarterly),
    calendar,
    day_count_conv,
    day_count_conv,
    date_generation,
    month_end,
)
```

## d. Inspect the quarterly cashflow schedule

```python
print("All dates: ", list(floating_rate_schedule))
print("Length: ", len(floating_rate_schedule))
print("Start Date: ", fixed_rate_schedule.startDate())
print("End Date: ", fixed_rate_schedule.endDate())
```

    All dates:  [Date(2,4,2024), Date(2,7,2024), Date(2,10,2024), Date(2,1,2025), Date(2,4,2025), Date(2,7,2025), Date(2,10,2025), Date(2,1,2026), Date(2,4,2026), Date(2,7,2026), Date(2,10,2026), Date(2,1,2027), Date(2,4,2027), Date(2,7,2027), Date(2,10,2027), Date(2,1,2028), Date(2,4,2028)]
    Length:  17
    Start Date:  April 2nd, 2024
    End Date:  April 2nd, 2028

# 3. Discount Curve / Yield Curve Term Structure
## a. Constructing a Flat Yield Curve

```python
# Set the static valuation date: 2024-04-02
calc_date = ql.Date(2, 4, 2024)
ql.Settings.instance().evaluationDate = calc_date

# using 5% flat interest rate for testing
flat_rate = ql.SimpleQuote(0.05)
rate_handle = ql.QuoteHandle(flat_rate)
day_count = ql.Actual360()
calendar = ql.UnitedStates(ql.UnitedStates.GovernmentBond)
continuous_comp = ql.Continuous # continously compounded rate of 5%
flat_yield_curve = ql.FlatForward(calc_date, rate_handle, day_count, continuous_comp)
flat_yield_curve_handle = ql.YieldTermStructureHandle(flat_yield_curve)
```

## b. Inspect the discount curve

```python
ref_date = flat_yield_curve.referenceDate()
test_date = ql.Date(30, 6, 2025)

# calc year fraction between ref_date and test_date
yearFrac = flat_yield_curve.dayCounter().yearFraction(ref_date, test_date)

print("Reference Date =", ref_date)
print("Test Date =", test_date)
print("Year Fraction between Reference Date and Test Date : ", yearFrac)
print("Discount Factor for Test Date", test_date, ": ", flat_yield_curve.discount(test_date))
print("custom DF calculation for Test Date", test_date, ": ", np.exp(-flat_rate.value() * yearFrac))
print("Difference in Discount Factor:", flat_yield_curve.discount(test_date) - np.exp(-flat_rate.value() * yearFrac))


```

    Reference Date = April 2nd, 2024
    Test Date = June 30th, 2025
    Year Fraction between Reference Date and Test Date :  1.261111111111111
    Discount Factor for Test Date June 30th, 2025 :  0.9388913116117773
    custom DF calculation for Test Date June 30th, 2025 :  0.9388913116117772
    Difference in Discount Factor: 1.1102230246251565e-16

# 4. Fixed and Floating Rate Bonds
## a. Constructing a fixed rate bond object

```python
# day_count: ACT/ACT for Govt bonds
day_count_govt = ql.ActualActual(ql.ActualActual.ISMA)

# day_count: 30/360 for fixed-rate Corp bonds
day_count_corp_fixed = ql.Thirty360(ql.Thirty360.USA)

# day_count: ACT/360 for floating-rate bonds
day_count_floater = ql.Actual360()


# settlement_days: 1 for Govt bonds
settlement_days_govt = 1

# settlement_days: 2 for Corp Bonds
settlement_days_corp = 2

# Govt Bonds specs
day_count = day_count_govt
settlement_days = settlement_days_govt

# coupons
coupon_rate = 0.04
coupons = [coupon_rate]

# payment_convention
payment_convention = ql.Unadjusted

# face_value
face_value = 100


# Construct the fixed_rate_bond
face_value = 100
fixed_rate_bond = ql.FixedRateBond(
    settlement_days,
    face_value,
    fixed_rate_schedule,
    coupons,
    day_count,
    payment_convention)
```

## b. Investigate the fixed-rate bond cash-flows

```python
x = [(cf.date(), cf.amount()) for cf in fixed_rate_bond.cashflows()]
cf_date_fixed, cf_amount = zip(*x)
cf_frame_fixed = pd.DataFrame(data={'CashFlowDate': cf_date_fixed, 'CashFlowAmount': cf_amount})
print(cf_frame_fixed)
```

            CashFlowDate  CashFlowAmount
    0  October 2nd, 2024             2.0
    1    April 2nd, 2025             2.0
    2  October 2nd, 2025             2.0
    3    April 2nd, 2026             2.0
    4  October 2nd, 2026             2.0
    5    April 2nd, 2027             2.0
    6  October 2nd, 2027             2.0
    7    April 2nd, 2028             2.0
    8    April 2nd, 2028           100.0

## c. Constructing a floating rate bond object: linked to SOFR index

```python
# sofr_term_structure_handle: using 5% flat interest rate for testing
rate_handle = ql.QuoteHandle(ql.SimpleQuote(5/100))
sofr_term_structure = ql.FlatForward(calc_date, rate_handle, day_count_floater, ql.Continuous)
sofr_term_structure_handle = ql.YieldTermStructureHandle(sofr_term_structure)

# Set SOFR index history
im = ql.IndexManager.instance()
sofr_index = ql.Sofr(sofr_term_structure_handle)

# Set SOFR fixings
im.clearHistory(sofr_index.name())
sofr_index.addFixing(ql.Date(28, ql.March, 2024), 5/100)
sofr_index.addFixing(ql.Date(1, ql.April, 2024), 5/100)


# floating_rate_bond
floating_rate_bond = ql.FloatingRateBond(settlement_days,
                                face_value,
                                floating_rate_schedule,
                                sofr_index,
                                day_count_floater,
                                payment_convention,
                                spreads=[25/10000], # 25 bps floating rate
                                issueDate=issue_date)

```

```python
x = [(cf.date(), cf.amount()) for cf in floating_rate_bond.cashflows()]
cf_date_float, cf_amount = zip(*x)
cf_frame_float = pd.DataFrame(data={'CashFlowDate': cf_date_float, 'CashFlowAmount': cf_amount})
print(cf_frame_float)
```

             CashFlowDate  CashFlowAmount
    0      July 2nd, 2024        1.335104
    1   October 2nd, 2024        1.349865
    2   January 2nd, 2025        1.349865
    3     April 2nd, 2025        1.320345
    4      July 2nd, 2025        1.335104
    5   October 2nd, 2025        1.349865
    6   January 2nd, 2026        1.349865
    7     April 2nd, 2026        1.320345
    8      July 2nd, 2026        1.335104
    9   October 2nd, 2026        1.349865
    10  January 2nd, 2027        1.350044
    11    April 2nd, 2027        1.320520
    12     July 2nd, 2027        1.335104
    13  October 2nd, 2027        1.350044
    14  January 2nd, 2028        1.350044
    15    April 2nd, 2028        1.335370
    16    April 2nd, 2028      100.000000

# 5. Bond Present Value Calculation (no credit risk)
## a. Direct function call using risk-free bond pricing engine

```python
# fixed_rate_bond PV
bond_engine = ql.DiscountingBondEngine(flat_yield_curve_handle)
fixed_rate_bond.setPricingEngine(bond_engine)
fixed_rate_bond_pv = fixed_rate_bond.NPV()
print('fixed_rate_bond_pv =', fixed_rate_bond_pv)

# floating_rate_bond PV
floating_rate_bond.setPricingEngine(bond_engine)
floating_rate_bond_pv = floating_rate_bond.NPV()
print('floating_rate_bond_pv =', floating_rate_bond_pv)
```

    fixed_rate_bond_pv = 95.93321956659715
    floating_rate_bond_pv = 100.91327849916414

## b. Manual Calculation to validate PV (for fixed and floating-rate bonds)

```python
# Validate fixed-rate bond PV
used_cf_frame = cf_frame_fixed
used_bond_pv = fixed_rate_bond_pv

# Validate floating-rate bond PV
discount_yearfrac = np.zeros((len(used_cf_frame,)))
discount_factor = np.zeros((len(used_cf_frame,)))

i = 0
for cf_date in used_cf_frame['CashFlowDate']:
    discount_yearfrac[i] = flat_yield_curve.dayCounter().yearFraction(flat_yield_curve.referenceDate(), cf_date)
    discount_factor[i] = flat_yield_curve.discount(cf_date)
    i += 1

used_cf_frame['YearFrac'] = discount_yearfrac
used_cf_frame['DiscountFactor'] = discount_factor
used_cf_frame['NPV'] = used_cf_frame['CashFlowAmount'] * used_cf_frame['DiscountFactor']

used_cf_frame
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
	  <th>CashFlowDate</th>
	  <th>CashFlowAmount</th>
	  <th>YearFrac</th>
	  <th>DiscountFactor</th>
	  <th>NPV</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>October 2nd, 2024</td>
	  <td>2.0</td>
	  <td>0.508333</td>
	  <td>0.974904</td>
	  <td>1.949807</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>April 2nd, 2025</td>
	  <td>2.0</td>
	  <td>1.013889</td>
	  <td>0.950569</td>
	  <td>1.901138</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>October 2nd, 2025</td>
	  <td>2.0</td>
	  <td>1.522222</td>
	  <td>0.926713</td>
	  <td>1.853426</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>April 2nd, 2026</td>
	  <td>2.0</td>
	  <td>2.027778</td>
	  <td>0.903582</td>
	  <td>1.807163</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>October 2nd, 2026</td>
	  <td>2.0</td>
	  <td>2.536111</td>
	  <td>0.880905</td>
	  <td>1.761810</td>
	</tr>
	<tr>
	  <th>5</th>
	  <td>April 2nd, 2027</td>
	  <td>2.0</td>
	  <td>3.041667</td>
	  <td>0.858917</td>
	  <td>1.717833</td>
	</tr>
	<tr>
	  <th>6</th>
	  <td>October 2nd, 2027</td>
	  <td>2.0</td>
	  <td>3.550000</td>
	  <td>0.837361</td>
	  <td>1.674722</td>
	</tr>
	<tr>
	  <th>7</th>
	  <td>April 2nd, 2028</td>
	  <td>2.0</td>
	  <td>4.058333</td>
	  <td>0.816346</td>
	  <td>1.632693</td>
	</tr>
	<tr>
	  <th>8</th>
	  <td>April 2nd, 2028</td>
	  <td>100.0</td>
	  <td>4.058333</td>
	  <td>0.816346</td>
	  <td>81.634627</td>
	</tr>
  </tbody>
</table>
</div>

```python
pv_manual = used_cf_frame['NPV'].sum()
print('NPV engine = ', used_bond_pv)
print('NPV manual = ', pv_manual)
print('NPV diff = ', pv_manual - used_bond_pv)
```

    NPV engine =  95.93321956659715
    NPV manual =  95.93321956659715
    NPV diff =  0.0

## c. Bond Clean vs Dirty Prices (adjusted to settle date)

```python
print('Bond Notional = ', fixed_rate_bond.notional())
print('Settle Date = ', fixed_rate_bond.settlementDate())
print('Discount Factor to Settle Date = ', round(flat_yield_curve_handle.discount(fixed_rate_bond.settlementDate()), 4))
print('Bond NPV (Calc Date) = ', round(fixed_rate_bond.NPV(), 4))
print('Bond NPV Adjusted to Settle Date = ', round(fixed_rate_bond.NPV() / flat_yield_curve_handle.discount(fixed_rate_bond.settlementDate()), 4))
print('Bond Dirty Price = ', round(fixed_rate_bond.dirtyPrice(), 4))
print('Bond Clean Price = ', round(fixed_rate_bond.cleanPrice(), 4))
print('Bond Accrued = ', round(fixed_rate_bond.accruedAmount(), 4))

```

    Bond Notional =  100.0
    Settle Date =  April 3rd, 2024
    Discount Factor to Settle Date =  0.9999
    Bond NPV (Calc Date) =  95.9332
    Bond NPV Adjusted to Settle Date =  95.9465
    Bond Dirty Price =  95.9465
    Bond Clean Price =  95.9356
    Bond Accrued =  0.0109

# 6. Market Data Scenarios
## a. Apply +/-1bp parallel shift scenarios in interest rates curve and compute scenario prices

```python
# start with interest_rate_bump = 0
interest_rate_bump = ql.SimpleQuote(0.0)
flat_yield_curve_bumped = ql.ZeroSpreadedTermStructure(flat_yield_curve_handle, ql.QuoteHandle(interest_rate_bump))

bond_engine = ql.DiscountingBondEngine(ql.YieldTermStructureHandle(flat_yield_curve_bumped))
fixed_rate_bond.setPricingEngine(bond_engine)

price_base = fixed_rate_bond.cleanPrice()

# Original price (zero interest rate bump)
print("Price (base case): ", round(price_base, 4))

# Bump interest rate by +1bps (parallel shift)
interest_rate_bump.setValue(0.0001)
price_up_1bp = fixed_rate_bond.cleanPrice()
print("Price in +1bps scenario: ", round(price_up_1bp, 4))
print("Price diff in +1bps scenario: ", round(price_up_1bp - price_base, 6))

# Bump interest rate by -1bps (parallel shift)
interest_rate_bump.setValue(-0.0001)
price_down_1bp = fixed_rate_bond.cleanPrice()
print("Price for -1bps scenario:", round(price_down_1bp, 4))
print("Price diff in -1bps scenario: ", round(price_down_1bp - price_base, 6))

 # Remove interest rate bump
interest_rate_bump.setValue(0)


```

    Price (base case):  95.9356
    Price in +1bps scenario:  95.8993
    Price diff in +1bps scenario:  -0.036268
    Price for -1bps scenario: 95.9719
    Price diff in -1bps scenario:  0.036283

## b. Compute scenario DV01, duration and convexity

```python
# Compute scenario delta/gamma sensitivities
dv01 = round((price_down_1bp - price_base) * 1e4 / 100, 4)
duration = round(dv01 / fixed_rate_bond.dirtyPrice() * 100, 4)
gamma_1bp = (price_down_1bp - 2*price_base + price_up_1bp) * 1e8 / 100
convexity = round(gamma_1bp / fixed_rate_bond.dirtyPrice() * 100, 4)

print("DV01: ", dv01)
print("Duration: ", duration)
print("Convexity: ", convexity)



```

    DV01:  3.6283
    Duration:  3.7816
    Convexity:  14.9262

## c. Yield to Price conversions

```python
# Use original interest rate yield of 5%
# flat_rate.setValue(0.05)
print('Bond PV for', flat_rate.value()*100, 'pct yield:', round(fixed_rate_bond.NPV(), 4))


# Change interest rate yield to 6% and recompute bond PV
flat_rate.setValue(0.06)
print('Bond PV for', flat_rate.value()*100, 'pct yield:', round(fixed_rate_bond.NPV(), 4))

# Set interest rate yield back to 5%
flat_rate.setValue(0.05)
```

    Bond PV for 5.0 pct yield: 95.9332
    Bond PV for 6.0 pct yield: 92.3743

## d. Price to Yield conversions

```python
# bond_market_price = fixed_rate_bond.cleanPrice()
bond_market_price = 95.00   # Clean market price

compounding = ql.Compounded
# compounding = ql.Continuous

settle_date = fixed_rate_bond.settlementDate(calc_date)
day_counter = fixed_rate_bond.dayCounter()

print('day_counter =', day_counter)
print('coupon_freq =', coupon_freq)
print('calc_date =', calc_date)
print('settle_date =', settle_date)


implied_yield = fixed_rate_bond.bondYield(bond_market_price, day_counter, compounding, coupon_freq, settle_date) * 100
print('implied_yield =', round(implied_yield, 4))
```

    day_counter = Actual/Actual (ISMA) day counter
    coupon_freq = 2
    calc_date = April 2nd, 2024
    settle_date = April 3rd, 2024
    implied_yield = 5.4076

# 7. Analytical Duration, Convexity and Z-Spread (flat yield model)
## a. Compute bond duration, convexity and Z-Spread

```python
# flat_bond_yield (used as an input to compute duration and convexity)
flat_bond_yield = 5.5 # in pct
flat_bond_yield_rate = ql.InterestRate(flat_bond_yield/100, day_count, compounding, coupon_freq)

# Calc Duration and Convexity
bond_duration = ql.BondFunctions.duration(fixed_rate_bond, flat_bond_yield_rate)
bond_convexity = ql.BondFunctions.convexity(fixed_rate_bond, flat_bond_yield_rate)

# Calc z-spread for a given market price
bond_market_price = 95.3194     # Clean market price, implies zero Z-Spread!
bond_market_price = 95          # Test market price, implies Z-Spread > 0
bond_zspread = ql.BondFunctions.zSpread(fixed_rate_bond, bond_market_price, flat_yield_curve, day_count, compounding, coupon_freq, settle_date)

# Print results
print('Bond Duration =', round(bond_duration, 4))
print('Bond Convexity =', round(bond_convexity, 4))
print('Bond Z-Spread bps =', round(bond_zspread * 10000, 4))

```

    Bond Duration = 3.6247
    Bond Convexity = 15.4882
    Bond Z-Spread bps = 26.5978

## b. Validate Z-Spread

```python
def calc_clean_price_with_zspread(fixed_rate_bond, yield_curve_handle, zspread):
    zspread_quote = ql.SimpleQuote(zspread)
    zspread_quote_handle = ql.QuoteHandle(zspread_quote)
    yield_curve_bumped = ql.ZeroSpreadedTermStructure(yield_curve_handle, zspread_quote_handle, ql.Compounded, ql.Semiannual)
    yield_curve_bumped_handle = ql.YieldTermStructureHandle(yield_curve_bumped)
    
    # Set Valuation engine
    bond_engine = ql.DiscountingBondEngine(yield_curve_bumped_handle)
    fixed_rate_bond.setPricingEngine(bond_engine)
    bond_clean_price = fixed_rate_bond.cleanPrice()
    return bond_clean_price

```

```python
# Compare the original and the z-spread computed clean prices
bond_zspread_price = calc_clean_price_with_zspread(fixed_rate_bond, flat_yield_curve_handle, bond_zspread)

print('Bond Z-Spread bps =', round(bond_zspread * 10000, 2))
print('bond_market_price =', bond_market_price)
print('bond_zspread_price =', bond_zspread_price)
print('bond price diff =', bond_zspread_price - bond_market_price)
```

    Bond Z-Spread bps = 26.6
    bond_market_price = 95
    bond_zspread_price = 94.99999999999486
    bond price diff = -5.144329406903125e-12

# 8. Treasury Yield Curve Calibration (via Bootstrapping)
## a. Calibrate treasury flat yield curve (simple case of one calibration instrument)

```python
# fixed_rate_bond: 4% coupon and 2028-04-02 maturity

# clean price quote
tsy_clean_price_quote = 96.0
tsy_clean_price_handle = ql.QuoteHandle(ql.SimpleQuote(tsy_clean_price_quote))


# Create BondHelper object
bond_helper = ql.BondHelper(
    tsy_clean_price_handle,
    fixed_rate_bond)

bond_helper_list = [bond_helper]
        
tsy_flat_yield_curve = ql.PiecewiseLogCubicDiscount(calc_date, bond_helper_list, day_count)
tsy_flat_yield_curve.enableExtrapolation()

tsy_yield_curve_handle = ql.YieldTermStructureHandle(tsy_flat_yield_curve)

```

## b. Display the calibrated Treasury discount curve dataframe

```python
def get_yield_curve_details_df(yield_curve, curve_dates=None):
    
    if(curve_dates == None):
        curve_dates = yield_curve.dates()

    dates = [d.to_date() for d in curve_dates]
    discounts = [round(yield_curve.discount(d), 3) for d in curve_dates]
    yearfracs = [round(yield_curve.timeFromReference(d), 3) for d in curve_dates]
    zeroRates = [round(yield_curve.zeroRate(d, yield_curve.dayCounter(), ql.Compounded).rate() * 100, 3) for d in curve_dates]

    yield_curve_details_df = pd.DataFrame(data={'Date': dates,
                             'YearFrac': yearfracs,
                             'DiscountFactor': discounts,
                             'ZeroRate': zeroRates})                             
    return yield_curve_details_df
```

```python
# Display Treasury yield curve details
tsy_flat_yield_curve_simple_df = get_yield_curve_details_df(tsy_flat_yield_curve)                  # using calibration grid
print(tsy_flat_yield_curve_simple_df)

grid_dates = [tsy_flat_yield_curve.referenceDate() + ql.Period(y, ql.Years) for y in list(range(0,30,2))]
tsy_flat_yield_curve_details_df = get_yield_curve_details_df(tsy_flat_yield_curve, grid_dates)    # using external grid
print(tsy_flat_yield_curve_details_df)

```

             Date  YearFrac  DiscountFactor  ZeroRate
    0  2024-04-02       0.0           1.000     5.185
    1  2028-04-02       4.0           0.817     5.185
              Date  YearFrac  DiscountFactor  ZeroRate
    0   2024-04-02       0.0           1.000     5.185
    1   2026-04-02       2.0           0.904     5.185
    2   2028-04-02       4.0           0.817     5.185
    3   2030-04-02       6.0           0.738     5.185
    4   2032-04-02       8.0           0.667     5.185
    5   2034-04-02      10.0           0.603     5.185
    6   2036-04-02      12.0           0.545     5.185
    7   2038-04-02      14.0           0.493     5.185
    8   2040-04-02      16.0           0.445     5.185
    9   2042-04-02      18.0           0.403     5.185
    10  2044-04-02      20.0           0.364     5.185
    11  2046-04-02      22.0           0.329     5.185
    12  2048-04-02      24.0           0.297     5.185
    13  2050-04-02      26.0           0.269     5.185
    14  2052-04-02      28.0           0.243     5.185

## c. Plot the calibrated Treasury Zero Rates and Discount Factors curves

```python
plt = tsy_flat_yield_curve_details_df.plot(x='Date', y='ZeroRate', grid=True, style='*-', title='Treasury Flat Curve: Zero Rates', figsize=(12,4))
plt.set_ylabel('Zero Rate (%)')
plt.set_xlabel('Date')

plt = tsy_flat_yield_curve_details_df.plot(x='Date', y='DiscountFactor', grid=True, style='*-', title='Treasury Flat Curve: Discount Factors', figsize=(12,4))
plt.set_ylabel('Discount Factors')
plt.set_xlabel('Date')
```

    Text(0.5, 0, 'Date')




    

![png](output_100_1.png)

![png](output_100_2.png)

## d. Reprice the bond on the yield curve to validate the calibration 

```python
# 1. Price risk-free bond
risk_free_bond_engine = ql.DiscountingBondEngine(tsy_yield_curve_handle)

fixed_rate_bond.setPricingEngine(risk_free_bond_engine)
risk_free_bond_price = fixed_rate_bond.cleanPrice()
risk_free_bond_yield = fixed_rate_bond.bondYield(risk_free_bond_price, day_counter, compounding, coupon_freq, settle_date) * 100

print('tsy_clean_price_quote:', tsy_clean_price_quote)
print('risk_free_bond_price:', risk_free_bond_price)
print('price_calibration_error:', risk_free_bond_price-tsy_clean_price_quote)
print('risk_free_bond_yield:', risk_free_bond_yield)

```

    tsy_clean_price_quote: 96.0
    risk_free_bond_price: 96.0
    price_calibration_error: 0.0
    risk_free_bond_yield: 5.119227409362794

<hr><font color="green"><h1>from file: 3UChicago_FINM_35700_CreditMarkets_Spring2024_Solution_2</h1></font>

# Homework 2

## FINM 35700 - Spring 2024

### UChicago Financial Mathematics

### Due Date: 2024-04-16

* Alex Popovici
* alex.popovici@uchicago.edu

This homework relies on:

- the corporate and government bonds symbology file `bond_symbology`, 
- the "on-the-run" treasuries data file `govt_on_the_run`,
- the bond market data file `bond_market_prices_eod`, containing EOD price data as of 2024-04-08.

# Problem 1: Constructing fixed rate bonds

```python
import QuantLib as ql
import pandas as pd
import datetime as dt

# Use static calculation/valuation date of 2024-04-08, matching data available in the market prices EOD file
calc_date = ql.Date(8, 4, 2024)
ql.Settings.instance().evaluationDate = calc_date
```

## a. Prepare the symbology and market data files for fixed rate government and corporate bonds

Load the `bond_symbology`, `bond_market_prices_eod` and `govt_on_the_run` Excel files into dataframes. 

Filter the symbology frame for fixed rate bonds only (cpn_type="FIXED").

```python
# Set as-of-date
as_of_date = pd.to_datetime('2024-04-08')

# Load bond_symbology.xlsx
bond_symbology  = pd.read_excel('./data/bond_symbology.xlsx')
bond_symbology  = bond_symbology[bond_symbology['cpn_type'] == 'FIXED']

# Add term and TTM columns
bond_symbology['term'] = (bond_symbology['maturity'] - bond_symbology['start_date']).dt.days / 365.25
bond_symbology['TTM'] = (bond_symbology['maturity'] - as_of_date).dt.days / 365.25
display(bond_symbology.head())


# Load bond_market_prices_eod
bond_market_prices_eod = pd.read_excel('./data/bond_market_prices_eod.xlsx')

# Add mid prices and yields
bond_market_prices_eod['midPrice'] = 0.5*(bond_market_prices_eod['bidPrice'] + bond_market_prices_eod['askPrice'])
bond_market_prices_eod['midYield'] = 0.5*(bond_market_prices_eod['bidYield'] + bond_market_prices_eod['askYield'])
display(bond_market_prices_eod.head())

bond_symbology

# Load govt_on_the_run, as of 2024-04-08
govt_on_the_run = pd.read_excel('./data/govt_on_the_run.xlsx')

# Keep OTR treasuries only
govt_on_the_run_simple = govt_on_the_run[~govt_on_the_run['ticker'].str.contains('B|C')]
display(govt_on_the_run_simple.head())

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
	  <th>ticker</th>
	  <th>class</th>
	  <th>figi</th>
	  <th>isin</th>
	  <th>und_bench_isin</th>
	  <th>security</th>
	  <th>name</th>
	  <th>type</th>
	  <th>coupon</th>
	  <th>cpn_type</th>
	  <th>…</th>
	  <th>acc_first</th>
	  <th>maturity</th>
	  <th>mty_typ</th>
	  <th>rank</th>
	  <th>amt_out</th>
	  <th>country</th>
	  <th>currency</th>
	  <th>status</th>
	  <th>term</th>
	  <th>TTM</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>AAPL</td>
	  <td>Corp</td>
	  <td>BBG004HST0K7</td>
	  <td>US037833AL42</td>
	  <td>US912810TZ12</td>
	  <td>AAPL 3.85 05/04/43</td>
	  <td>APPLE INC</td>
	  <td>GLOBAL</td>
	  <td>3.850</td>
	  <td>FIXED</td>
	  <td>…</td>
	  <td>2013-05-03</td>
	  <td>2043-05-04</td>
	  <td>AT MATURITY</td>
	  <td>Sr Unsecured</td>
	  <td>3000.0</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	  <td>30.001369</td>
	  <td>19.069131</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>AAPL</td>
	  <td>Corp</td>
	  <td>BBG006F8VWJ7</td>
	  <td>US037833AT77</td>
	  <td>US912810TZ12</td>
	  <td>AAPL 4.45 05/06/44</td>
	  <td>APPLE INC</td>
	  <td>GLOBAL</td>
	  <td>4.450</td>
	  <td>FIXED</td>
	  <td>…</td>
	  <td>2014-05-06</td>
	  <td>2044-05-06</td>
	  <td>AT MATURITY</td>
	  <td>Sr Unsecured</td>
	  <td>1000.0</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	  <td>30.001369</td>
	  <td>20.076660</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>AAPL</td>
	  <td>Corp</td>
	  <td>BBG0081TNL50</td>
	  <td>US037833BA77</td>
	  <td>US912810TZ12</td>
	  <td>AAPL 3.45 02/09/45</td>
	  <td>APPLE INC</td>
	  <td>GLOBAL</td>
	  <td>3.450</td>
	  <td>FIXED</td>
	  <td>…</td>
	  <td>2015-02-09</td>
	  <td>2045-02-09</td>
	  <td>AT MATURITY</td>
	  <td>Sr Unsecured</td>
	  <td>2000.0</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	  <td>30.001369</td>
	  <td>20.840520</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>AAPL</td>
	  <td>Corp</td>
	  <td>BBG008N1BQC1</td>
	  <td>US037833BH21</td>
	  <td>US912810TZ12</td>
	  <td>AAPL 4 3/8 05/13/45</td>
	  <td>APPLE INC</td>
	  <td>GLOBAL</td>
	  <td>4.375</td>
	  <td>FIXED</td>
	  <td>…</td>
	  <td>2015-05-13</td>
	  <td>2045-05-13</td>
	  <td>AT MATURITY</td>
	  <td>Sr Unsecured</td>
	  <td>2000.0</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	  <td>30.001369</td>
	  <td>21.095140</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>AAPL</td>
	  <td>Corp</td>
	  <td>BBG00C7QBCQ1</td>
	  <td>US037833BW97</td>
	  <td>US91282CJZ59</td>
	  <td>AAPL 4 1/2 02/23/36</td>
	  <td>APPLE INC</td>
	  <td>GLOBAL</td>
	  <td>4.500</td>
	  <td>FIXED</td>
	  <td>…</td>
	  <td>2016-02-23</td>
	  <td>2036-02-23</td>
	  <td>CALLABLE</td>
	  <td>Sr Unsecured</td>
	  <td>1250.0</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	  <td>20.000000</td>
	  <td>11.876797</td>
	</tr>
  </tbody>
</table>
<p>5 rows × 25 columns</p>
</div>

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
	  <th>date</th>
	  <th>class</th>
	  <th>ticker</th>
	  <th>isin</th>
	  <th>figi</th>
	  <th>bidPrice</th>
	  <th>askPrice</th>
	  <th>accrued</th>
	  <th>bidYield</th>
	  <th>askYield</th>
	  <th>midPrice</th>
	  <th>midYield</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>2024-04-08</td>
	  <td>Corp</td>
	  <td>AAPL</td>
	  <td>US037833AL42</td>
	  <td>BBG004HST0K7</td>
	  <td>84.578</td>
	  <td>85.153</td>
	  <td>1.6685</td>
	  <td>5.127</td>
	  <td>5.074</td>
	  <td>84.8655</td>
	  <td>5.1005</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>2024-04-08</td>
	  <td>Corp</td>
	  <td>AAPL</td>
	  <td>US037833AT77</td>
	  <td>BBG006F8VWJ7</td>
	  <td>92.578</td>
	  <td>93.293</td>
	  <td>1.9045</td>
	  <td>5.042</td>
	  <td>4.982</td>
	  <td>92.9355</td>
	  <td>5.0120</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>2024-04-08</td>
	  <td>Corp</td>
	  <td>AAPL</td>
	  <td>US037833BA77</td>
	  <td>BBG0081TNL50</td>
	  <td>78.406</td>
	  <td>78.952</td>
	  <td>0.5850</td>
	  <td>5.152</td>
	  <td>5.102</td>
	  <td>78.6790</td>
	  <td>5.1270</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>2024-04-08</td>
	  <td>Corp</td>
	  <td>AAPL</td>
	  <td>US037833BH21</td>
	  <td>BBG008N1BQC1</td>
	  <td>90.009</td>
	  <td>90.602</td>
	  <td>1.7865</td>
	  <td>5.157</td>
	  <td>5.108</td>
	  <td>90.3055</td>
	  <td>5.1325</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>2024-04-08</td>
	  <td>Corp</td>
	  <td>AAPL</td>
	  <td>US037833BW97</td>
	  <td>BBG00C7QBCQ1</td>
	  <td>97.413</td>
	  <td>97.894</td>
	  <td>0.5875</td>
	  <td>4.788</td>
	  <td>4.733</td>
	  <td>97.6535</td>
	  <td>4.7605</td>
	</tr>
  </tbody>
</table>
</div>

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
	  <th>ticker</th>
	  <th>date</th>
	  <th>figi</th>
	  <th>isin</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>GT10 Govt</td>
	  <td>2024-04-08</td>
	  <td>BBG01L8YJFB3</td>
	  <td>US91282CJZ59</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>GT2 Govt</td>
	  <td>2024-04-08</td>
	  <td>BBG01M44ZLG5</td>
	  <td>US91282CKH33</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>GT20 Govt</td>
	  <td>2024-04-08</td>
	  <td>BBG01LK8Y0L1</td>
	  <td>US912810TZ12</td>
	</tr>
	<tr>
	  <th>9</th>
	  <td>GT3 Govt</td>
	  <td>2024-04-08</td>
	  <td>BBG01LW4R927</td>
	  <td>US91282CKE02</td>
	</tr>
	<tr>
	  <th>10</th>
	  <td>GT30 Govt</td>
	  <td>2024-04-08</td>
	  <td>BBG01L8YJKX8</td>
	  <td>US912810TX63</td>
	</tr>
  </tbody>
</table>
</div>

## b. Add function to construct generic fixed rate cashflow schedules from symbology data

Use one row of the symbology dataframe as input  to the function. Use the helper function to convert a date string to a QuantLib date object.

```python
def get_ql_date(date) -> ql.Date:
    """
    convert dt.date to ql.Date
    """
    if isinstance(date, dt.date):
        return ql.Date(date.day, date.month, date.year)
    elif isinstance(date, str):
        date = dt.datetime.strptime(date, "%Y-%m-%d").date()
        return ql.Date(date.day, date.month, date.year)
    else:
        raise ValueError(f"to_qldate, {type(date)}, {date}")
```

```python
def create_schedule_from_symbology(details: dict):
    '''Create a QuantLib cashflow schedule from symbology details dictionary (usually one row of the symbology dataframe)
    '''
    
    # Create maturity from details['maturity']
    maturity = get_ql_date(details['maturity'])
    
    # Create acc_first from details['acc_first']
    acc_first =  get_ql_date(details['acc_first'])
    
    # Create calendar for Corp and Govt asset classes
    calendar = ql.UnitedStates(ql.UnitedStates.GovernmentBond)
    
    # define period from details['cpn_freq'] ... can be hard-coded to 2 = semi-annual frequency
    period = ql.Period(2)
    
    # business_day_convention
    business_day_convention = ql.Unadjusted
    
    # termination_date_convention
    termination_date_convention = ql.Unadjusted
    
    # date_generation
    date_generation=ql.DateGeneration.Backward
    
    # Create schedule using ql.MakeSchedule interface (with keyword arguments)
    schedule = ql.MakeSchedule(effectiveDate=acc_first,  # this may not be the same as the bond's start date
                            terminationDate=maturity,
                            tenor=period,
                            calendar=calendar,
                            convention=business_day_convention,
                            terminalDateConvention=termination_date_convention,
                            rule=date_generation,
                            endOfMonth=True,
                            firstDate=ql.Date(),
                            nextToLastDate=ql.Date())
    return schedule
```

```python
# Use one row of the symbology dataframe as input to the create_schedule_from_symbology() function.
corp_bond_details = bond_symbology[bond_symbology['class'] == 'Corp'].iloc[10]
print("Corp bond details for", corp_bond_details['security'])
display(corp_bond_details)

# Create cashflow_schedule
cashflow_schedule = create_schedule_from_symbology(corp_bond_details)
print("Cashflow dates for", corp_bond_details['security'])

# List cashflow dates
for date in cashflow_schedule:
        print(date)


```

    Corp bond details for AAPL 3.35 02/09/27



    ticker                           AAPL
    class                            Corp
    figi                     BBG00FXTS8Z0
    isin                     US037833CJ77
    und_bench_isin           US91282CKE02
    security           AAPL 3.35 02/09/27
    name                        APPLE INC
    type                           GLOBAL
    coupon                           3.35
    cpn_type                        FIXED
    dcc                            30/360
    cpn_freq                            2
    days_settle                         2
    start_date        2017-02-09 00:00:00
    cpn_first         2017-08-09 00:00:00
    acc_first         2017-02-09 00:00:00
    maturity          2027-02-09 00:00:00
    mty_typ                      CALLABLE
    rank                     Sr Unsecured
    amt_out                        2250.0
    country                            US
    currency                          USD
    status                           ACTV
    term                         9.998631
    TTM                          2.839151
    Name: 10, dtype: object


    Cashflow dates for AAPL 3.35 02/09/27
    February 9th, 2017
    August 9th, 2017
    February 9th, 2018
    August 9th, 2018
    February 9th, 2019
    August 9th, 2019
    February 9th, 2020
    August 9th, 2020
    February 9th, 2021
    August 9th, 2021
    February 9th, 2022
    August 9th, 2022
    February 9th, 2023
    August 9th, 2023
    February 9th, 2024
    August 9th, 2024
    February 9th, 2025
    August 9th, 2025
    February 9th, 2026
    August 9th, 2026
    February 9th, 2027

## c. Add function to construct generic fixed rate bond objects from symbology data

Use one row of the symbology dataframe as input to the function. Use create_schedule_from_symbology() internally to create the cashflow schedule.

```python
def create_bond_from_symbology(details: dict):
    '''Create a US fixed rate bond object from symbology details dictionary (usually one row of the symbology dataframe)
    '''
    
     # Create day_count from details['dcc']
     # For US Treasuries use ql.ActualActual(ql.ActualActual.ISMA)
     # For US Corporate bonds use ql.Thirty360(ql.Thirty360.USA)
    
    if details['class'] == 'Corp':
        day_count = ql.Thirty360(ql.Thirty360.USA)
    elif details['class'] == 'Govt':
        day_count = ql.ActualActual(ql.ActualActual.ISMA)
    else:
        raise ValueError(f"unsupported asset class, {type(details['class'])}, {details['class']}")

    
    # Create issue_date from details['start_date']
    issue_date = get_ql_date(details['start_date'])
    
    # Create days_settle from details['days_settle']
    days_settle = int(float(details['days_settle']))

    # Create coupon from details['coupon']
    coupon = float(details['coupon'])/100.


    # Create cashflow schedule
    schedule = create_schedule_from_symbology(details)
    
    face_value = 100
    redemption = 100
    
    payment_convention = ql.Unadjusted
        
    # Create fixed rate bond object
    fixed_rate_bond = ql.FixedRateBond(
        days_settle,
        face_value,
        schedule,
        [coupon],
        day_count,
        payment_convention,
        redemption,
        issue_date)        

    return fixed_rate_bond

```

```python
# Use one row of the symbology dataframe as input to the function.
corp_bond_object = create_bond_from_symbology(corp_bond_details)

print("Corp bond object details for", corp_bond_details['security'])
print('Start date:', corp_bond_object.startDate())
print('Maturity date:', corp_bond_object.maturityDate())
print('Bond face notional:', corp_bond_object.notional())

```

    Corp bond object details for AAPL 3.35 02/09/27
    Start date: February 9th, 2017
    Maturity date: February 9th, 2027
    Bond face notional: 100.0

## d. Add function that returns a dataframe with (future) cash flows details for a bond object

Use the "Investigate Bond Cashflows" section in the Quantlib Basic notebook as a template.

The results dataframe should contain following columns:

| CashFlowDate | CashFlowAmount | CashFlowYearFrac |
|----------|-------|-------------|

Pick one government and one corporate bond from symbology, create the bond objects and display the future cashflows.

```python
def get_bond_cashflows(bond: ql.FixedRateBond, calc_date=ql.Date) -> pd.DataFrame:
    '''Returns all future cashflows as of calc_date, i.e. with payment dates > calc_date.
    '''    
    day_counter = bond.dayCounter()    
    
    x = [(cf.date(), day_counter.yearFraction(calc_date, cf.date()), cf.amount()) for cf in bond.cashflows()]
    cf_date, cf_yearFrac, cf_amount = zip(*x)
    cashflows_df = pd.DataFrame(data={'CashFlowDate': cf_date, 'CashFlowYearFrac': cf_yearFrac, 'CashFlowAmount': cf_amount})

    # filter for payment dates > calc_date
    cashflows_df = cashflows_df[cashflows_df.CashFlowYearFrac > 0]
    return cashflows_df

```

```python
# Pick one government and one corporate bond from symbology, create the bond objects.
govt_bond_details = bond_symbology[bond_symbology['class'] == 'Govt'].iloc[10]
print("Govt bond details for", govt_bond_details['security'])
display(govt_bond_details)

# Create govt_bond_object
govt_bond_object = create_bond_from_symbology(govt_bond_details)
```

    Govt bond details for T 5 1/4 11/15/28



    ticker                              T
    class                            Govt
    figi                     BBG000FJ0QD9
    isin                     US912810FF04
    und_bench_isin           US91282CKG59
    security             T 5 1/4 11/15/28
    name                  US TREASURY N/B
    type                    US GOVERNMENT
    coupon                           5.25
    cpn_type                        FIXED
    dcc                           ACT/ACT
    cpn_freq                            2
    days_settle                         1
    start_date        1998-11-16 00:00:00
    cpn_first         1999-05-15 00:00:00
    acc_first         1998-11-15 00:00:00
    maturity          2028-11-15 00:00:00
    mty_typ                        NORMAL
    rank                        Unsecured
    amt_out                       10947.0
    country                            US
    currency                          USD
    status                           ACTV
    term                        29.998631
    TTM                          4.605065
    Name: 341, dtype: object

```python
# Govt bond: display the future cashflows.
print("Govt bond future cashflows for", govt_bond_details['security'])
govt_bond_cf = get_bond_cashflows(govt_bond_object, calc_date=calc_date)
display(govt_bond_cf)

# Corp bond: display the future cashflows.
print("Corp bond future cashflows for", corp_bond_details['security'])
corp_bond_cf = get_bond_cashflows(corp_bond_object, calc_date=calc_date)
display(corp_bond_cf)
```

    Govt bond future cashflows for T 5 1/4 11/15/28

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
	  <th>CashFlowDate</th>
	  <th>CashFlowYearFrac</th>
	  <th>CashFlowAmount</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>50</th>
	  <td>May 15th, 2024</td>
	  <td>0.083333</td>
	  <td>2.625</td>
	</tr>
	<tr>
	  <th>51</th>
	  <td>November 15th, 2024</td>
	  <td>0.583333</td>
	  <td>2.625</td>
	</tr>
	<tr>
	  <th>52</th>
	  <td>May 15th, 2025</td>
	  <td>1.083333</td>
	  <td>2.625</td>
	</tr>
	<tr>
	  <th>53</th>
	  <td>November 15th, 2025</td>
	  <td>1.583333</td>
	  <td>2.625</td>
	</tr>
	<tr>
	  <th>54</th>
	  <td>May 15th, 2026</td>
	  <td>2.083333</td>
	  <td>2.625</td>
	</tr>
	<tr>
	  <th>55</th>
	  <td>November 15th, 2026</td>
	  <td>2.583333</td>
	  <td>2.625</td>
	</tr>
	<tr>
	  <th>56</th>
	  <td>May 15th, 2027</td>
	  <td>3.083333</td>
	  <td>2.625</td>
	</tr>
	<tr>
	  <th>57</th>
	  <td>November 15th, 2027</td>
	  <td>3.583333</td>
	  <td>2.625</td>
	</tr>
	<tr>
	  <th>58</th>
	  <td>May 15th, 2028</td>
	  <td>4.083333</td>
	  <td>2.625</td>
	</tr>
	<tr>
	  <th>59</th>
	  <td>November 15th, 2028</td>
	  <td>4.583333</td>
	  <td>2.625</td>
	</tr>
	<tr>
	  <th>60</th>
	  <td>November 15th, 2028</td>
	  <td>4.583333</td>
	  <td>100.000</td>
	</tr>
  </tbody>
</table>
</div>

    Corp bond future cashflows for AAPL 3.35 02/09/27

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
	  <th>CashFlowDate</th>
	  <th>CashFlowYearFrac</th>
	  <th>CashFlowAmount</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>14</th>
	  <td>August 9th, 2024</td>
	  <td>0.336111</td>
	  <td>1.675</td>
	</tr>
	<tr>
	  <th>15</th>
	  <td>February 9th, 2025</td>
	  <td>0.836111</td>
	  <td>1.675</td>
	</tr>
	<tr>
	  <th>16</th>
	  <td>August 9th, 2025</td>
	  <td>1.336111</td>
	  <td>1.675</td>
	</tr>
	<tr>
	  <th>17</th>
	  <td>February 9th, 2026</td>
	  <td>1.836111</td>
	  <td>1.675</td>
	</tr>
	<tr>
	  <th>18</th>
	  <td>August 9th, 2026</td>
	  <td>2.336111</td>
	  <td>1.675</td>
	</tr>
	<tr>
	  <th>19</th>
	  <td>February 9th, 2027</td>
	  <td>2.836111</td>
	  <td>1.675</td>
	</tr>
	<tr>
	  <th>20</th>
	  <td>February 9th, 2027</td>
	  <td>2.836111</td>
	  <td>100.000</td>
	</tr>
  </tbody>
</table>
</div>

# Problem 2: US Treasury yield curve calibration (On-The-Runs)

## a. Create the on-the-run US treasury bond objects

Restrict the symbology + market data dataframe to "on-the-run"/OTR US treasury notes/bonds only and create the treasury bond objects.

Extend the treasuries symbology dataframe with the following market data columns (code from Homework 1):

| date | bidPrice | askPrice | midPrice | bidYield | askYield | midYield | term | TTM |
|----------|-------|-------------|-----|----------|---------|---------|---------|---------|

Plot a graph/scatter plot of on-the-run treasury mid yields by TTM.

```python
# Create symbology for on-the-run treasuries only
govt_symbology_otr = bond_symbology[bond_symbology['isin'].isin(govt_on_the_run_simple['isin'])].copy()
govt_symbology_otr = govt_symbology_otr.sort_values(by='TTM')

# Merge market data as of 2024-04-01 into treasury OTR symbology
govt_combined_otr = govt_symbology_otr.merge(bond_market_prices_eod,  on=['class','ticker','figi','isin'])

# Plot a graph/scatter plot of treasury OTR mid yields by TTM
govt_combined_otr.plot(x='TTM', y='midYield', grid=True, style='*-', title='OTR US Treasury yields by TTM', figsize=(12,4))
```

    <Axes: title={'center': 'OTR US Treasury yields by TTM'}, xlabel='TTM'>




    

![png](output_123_1.png)

## b. Calibrate the on-the-run treasury yield curve (bootstrapping)

The function below shows how to calibrate a smooth yield/discount factor curve from the on-the-run treasury dataframe. 

Calibrate the bid, ask and mid discount factor curves as of 2024-04-08.

Display the calibration results for the mid curve, using get_yield_curve_details_df().

```python
def calibrate_yield_curve_from_frame(
        calc_date: ql.Date,
        treasury_details: pd.DataFrame,
        price_quote_column: str):
    '''Create a calibrated yield curve from a details dataframe which includes bid/ask/mid price quotes.
    '''
    ql.Settings.instance().evaluationDate = calc_date

    # Sort dataframe by maturity
    sorted_details_frame = treasury_details.sort_values(by='maturity')    
    
    # For US Treasuries use ql.ActualActual(ql.ActualActual.ISMA)
    day_count = ql.ActualActual(ql.ActualActual.ISMA)

    bond_helpers = []
    
    for index, row in sorted_details_frame.iterrows():
        bond_object = create_bond_from_symbology(row)
        
        tsy_clean_price_quote = row[price_quote_column]
        tsy_clean_price_handle = ql.QuoteHandle(ql.SimpleQuote(tsy_clean_price_quote))
        
        bond_helper = ql.BondHelper(tsy_clean_price_handle, bond_object)
        bond_helpers.append(bond_helper)
        
    yield_curve = ql.PiecewiseLogCubicDiscount(calc_date, bond_helpers, day_count)
    # yield_curve = ql.PiecewiseFlatForward(calc_date, bond_helpers, day_count)
    
    yield_curve.enableExtrapolation()
    return yield_curve



def get_yield_curve_details_df(yield_curve, curve_dates=None):
    
    if(curve_dates == None):
        curve_dates = yield_curve.dates()

    dates = [d.to_date() for d in curve_dates]
    discounts = [round(yield_curve.discount(d), 3) for d in curve_dates]
    yearfracs = [round(yield_curve.timeFromReference(d), 3) for d in curve_dates]
    zeroRates = [round(yield_curve.zeroRate(d, yield_curve.dayCounter(), ql.Compounded).rate() * 100, 3) for d in curve_dates]

    yield_curve_details_df = pd.DataFrame(data={'Date': dates,
                             'YearFrac': yearfracs,
                             'DiscountFactor': discounts,
                             'ZeroRate': zeroRates})                             
    return yield_curve_details_df
```

```python
# Calibrate the bid, ask and mid discount factor curves as of 2024-04-08.
tsy_yield_curve_bid = calibrate_yield_curve_from_frame(calc_date, govt_combined_otr, 'bidPrice')
tsy_yield_curve_mid = calibrate_yield_curve_from_frame(calc_date, govt_combined_otr, 'midPrice')
tsy_yield_curve_ask = calibrate_yield_curve_from_frame(calc_date, govt_combined_otr, 'askPrice')

# Display the calibration results for the mid curve
tsy_yield_curve_df = get_yield_curve_details_df(tsy_yield_curve_mid)
display(tsy_yield_curve_df)

ql_dates_yearly = [calc_date + ql.Period(y, ql.Years) for y in list(range(0, 30, 1))]
tsy_yield_curve_monthly_df = get_yield_curve_details_df(tsy_yield_curve_mid, curve_dates=ql_dates_yearly)
display(tsy_yield_curve_monthly_df)

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
	  <th>Date</th>
	  <th>YearFrac</th>
	  <th>DiscountFactor</th>
	  <th>ZeroRate</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>2024-04-08</td>
	  <td>0.000</td>
	  <td>1.000</td>
	  <td>4.883</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>2026-03-31</td>
	  <td>2.000</td>
	  <td>0.911</td>
	  <td>4.790</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>2027-03-15</td>
	  <td>2.917</td>
	  <td>0.875</td>
	  <td>4.683</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>2029-03-31</td>
	  <td>5.000</td>
	  <td>0.805</td>
	  <td>4.441</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>2031-03-31</td>
	  <td>7.000</td>
	  <td>0.737</td>
	  <td>4.455</td>
	</tr>
	<tr>
	  <th>5</th>
	  <td>2034-02-15</td>
	  <td>9.833</td>
	  <td>0.650</td>
	  <td>4.477</td>
	</tr>
	<tr>
	  <th>6</th>
	  <td>2044-02-15</td>
	  <td>19.833</td>
	  <td>0.396</td>
	  <td>4.786</td>
	</tr>
	<tr>
	  <th>7</th>
	  <td>2054-02-15</td>
	  <td>29.917</td>
	  <td>0.264</td>
	  <td>4.556</td>
	</tr>
  </tbody>
</table>
</div>

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
	  <th>Date</th>
	  <th>YearFrac</th>
	  <th>DiscountFactor</th>
	  <th>ZeroRate</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>2024-04-08</td>
	  <td>0.0</td>
	  <td>1.000</td>
	  <td>4.883</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>2025-04-08</td>
	  <td>1.0</td>
	  <td>0.954</td>
	  <td>4.860</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>2026-04-08</td>
	  <td>2.0</td>
	  <td>0.911</td>
	  <td>4.790</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>2027-04-08</td>
	  <td>3.0</td>
	  <td>0.872</td>
	  <td>4.671</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>2028-04-08</td>
	  <td>4.0</td>
	  <td>0.838</td>
	  <td>4.526</td>
	</tr>
	<tr>
	  <th>5</th>
	  <td>2029-04-08</td>
	  <td>5.0</td>
	  <td>0.805</td>
	  <td>4.441</td>
	</tr>
	<tr>
	  <th>6</th>
	  <td>2030-04-08</td>
	  <td>6.0</td>
	  <td>0.771</td>
	  <td>4.437</td>
	</tr>
	<tr>
	  <th>7</th>
	  <td>2031-04-08</td>
	  <td>7.0</td>
	  <td>0.737</td>
	  <td>4.455</td>
	</tr>
	<tr>
	  <th>8</th>
	  <td>2032-04-08</td>
	  <td>8.0</td>
	  <td>0.705</td>
	  <td>4.462</td>
	</tr>
	<tr>
	  <th>9</th>
	  <td>2033-04-08</td>
	  <td>9.0</td>
	  <td>0.675</td>
	  <td>4.466</td>
	</tr>
	<tr>
	  <th>10</th>
	  <td>2034-04-08</td>
	  <td>10.0</td>
	  <td>0.645</td>
	  <td>4.481</td>
	</tr>
	<tr>
	  <th>11</th>
	  <td>2035-04-08</td>
	  <td>11.0</td>
	  <td>0.615</td>
	  <td>4.512</td>
	</tr>
	<tr>
	  <th>12</th>
	  <td>2036-04-08</td>
	  <td>12.0</td>
	  <td>0.586</td>
	  <td>4.552</td>
	</tr>
	<tr>
	  <th>13</th>
	  <td>2037-04-08</td>
	  <td>13.0</td>
	  <td>0.558</td>
	  <td>4.596</td>
	</tr>
	<tr>
	  <th>14</th>
	  <td>2038-04-08</td>
	  <td>14.0</td>
	  <td>0.530</td>
	  <td>4.640</td>
	</tr>
	<tr>
	  <th>15</th>
	  <td>2039-04-08</td>
	  <td>15.0</td>
	  <td>0.503</td>
	  <td>4.681</td>
	</tr>
	<tr>
	  <th>16</th>
	  <td>2040-04-08</td>
	  <td>16.0</td>
	  <td>0.478</td>
	  <td>4.718</td>
	</tr>
	<tr>
	  <th>17</th>
	  <td>2041-04-08</td>
	  <td>17.0</td>
	  <td>0.455</td>
	  <td>4.748</td>
	</tr>
	<tr>
	  <th>18</th>
	  <td>2042-04-08</td>
	  <td>18.0</td>
	  <td>0.432</td>
	  <td>4.770</td>
	</tr>
	<tr>
	  <th>19</th>
	  <td>2043-04-08</td>
	  <td>19.0</td>
	  <td>0.412</td>
	  <td>4.783</td>
	</tr>
	<tr>
	  <th>20</th>
	  <td>2044-04-08</td>
	  <td>20.0</td>
	  <td>0.393</td>
	  <td>4.786</td>
	</tr>
	<tr>
	  <th>21</th>
	  <td>2045-04-08</td>
	  <td>21.0</td>
	  <td>0.375</td>
	  <td>4.780</td>
	</tr>
	<tr>
	  <th>22</th>
	  <td>2046-04-08</td>
	  <td>22.0</td>
	  <td>0.359</td>
	  <td>4.766</td>
	</tr>
	<tr>
	  <th>23</th>
	  <td>2047-04-08</td>
	  <td>23.0</td>
	  <td>0.344</td>
	  <td>4.746</td>
	</tr>
	<tr>
	  <th>24</th>
	  <td>2048-04-08</td>
	  <td>24.0</td>
	  <td>0.330</td>
	  <td>4.723</td>
	</tr>
	<tr>
	  <th>25</th>
	  <td>2049-04-08</td>
	  <td>25.0</td>
	  <td>0.317</td>
	  <td>4.696</td>
	</tr>
	<tr>
	  <th>26</th>
	  <td>2050-04-08</td>
	  <td>26.0</td>
	  <td>0.305</td>
	  <td>4.668</td>
	</tr>
	<tr>
	  <th>27</th>
	  <td>2051-04-08</td>
	  <td>27.0</td>
	  <td>0.294</td>
	  <td>4.639</td>
	</tr>
	<tr>
	  <th>28</th>
	  <td>2052-04-08</td>
	  <td>28.0</td>
	  <td>0.283</td>
	  <td>4.610</td>
	</tr>
	<tr>
	  <th>29</th>
	  <td>2053-04-08</td>
	  <td>29.0</td>
	  <td>0.273</td>
	  <td>4.581</td>
	</tr>
  </tbody>
</table>
</div>

## c. Plot the calibrated US Treasury yield (zero rate) curves

Create a graph/scatter plot of the newly computed mid yields by maturity.

```python
plt = tsy_yield_curve_df.plot(x='Date', y=['ZeroRate'], style='*-', grid=True, title=f'US Treasury OTR yield curve as of {as_of_date.date()}', figsize=(12,4))
plt.set_ylabel('Zero Rate (%)')
plt.set_xlabel('Date')

plt = tsy_yield_curve_monthly_df.plot(x='Date', y=['ZeroRate'], style='*-', grid=True, title=f'US Treasury Yearly yield curve as of {as_of_date.date()}', figsize=(12,4))
plt.set_ylabel('Zero Rate (%)')
plt.set_xlabel('Date')

```

    Text(0.5, 0, 'Date')




    

![png](output_128_1.png)

![png](output_128_2.png)

## d. Plot calibrated discount factors

Plot the discount factor curve up to the 30 years point, using a 6 months discretization grid.

```python
plt = tsy_yield_curve_df.plot(x='Date', y=['DiscountFactor'], style='*-', grid=True, title=f'US Treasury OTR discount factor curve as of {as_of_date.date()}', figsize=(12,4))
plt.set_ylabel('Discount Factor')
plt.set_xlabel('Date')

plt = tsy_yield_curve_monthly_df.plot(x='Date', y=['DiscountFactor'], style='*-', grid=True, title=f'US Treasury Yearly discount factor curve as of {as_of_date.date()}', figsize=(12,4))
plt.set_ylabel('Discount Factor')
plt.set_xlabel('Date')
```

    Text(0.5, 0, 'Date')




    

![png](output_130_1.png)

![png](output_130_2.png)

# Problem 3: Pricing and risk metrics for US Treasury bonds

## a. US Treasury pricing on the calibrated discount factor curve

Follow Section 5. "Bond Present Value Calculation (no credit risk)" in the QuantLib Basic notebook to re-price the US on-the-run treasuries using the calibrated discount factor curve. 

You will need to switch the bond_engine to use the new on-the-run treasury yield curve:

bond_engine = ql.DiscountingBondEngine(tsy_yield_curve_mid)

Extend the dataframe with the following computed columns for clean mid prices:

| calc_mid_price |
|---------------|

To validate the calibration, compare the calculated clean mid prices to the original market mid prices.

```python
# Create risk free bond_engine using calibrated US OTR yield curve
tsy_yield_curve_mid_handle = ql.YieldTermStructureHandle(tsy_yield_curve_mid)
bond_engine = ql.DiscountingBondEngine(tsy_yield_curve_mid_handle)

# Calculate mid prices
calculated_mid_prices = []
for index, row in govt_combined_otr.iterrows():
    bond_object = create_bond_from_symbology(row)
    bond_object.setPricingEngine(bond_engine)
    calculated_mid_prices.append(bond_object.cleanPrice())
    
govt_combined_otr['calc_mid_price'] = calculated_mid_prices
govt_combined_otr['calib_error'] = govt_combined_otr['midPrice'] - govt_combined_otr['calc_mid_price']

# Compare the calculated clean mid prices to the original market mid prices.
display(govt_combined_otr[['security', 'isin', 'figi', 'midPrice', 'calc_mid_price', 'calib_error']])
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
	  <th>security</th>
	  <th>isin</th>
	  <th>figi</th>
	  <th>midPrice</th>
	  <th>calc_mid_price</th>
	  <th>calib_error</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>T 4 1/2 03/31/26</td>
	  <td>US91282CKH33</td>
	  <td>BBG01M44ZLG5</td>
	  <td>99.45700</td>
	  <td>99.45700</td>
	  <td>-6.963319e-13</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>T 4 1/4 03/15/27</td>
	  <td>US91282CKE02</td>
	  <td>BBG01LW4R927</td>
	  <td>99.03520</td>
	  <td>99.03520</td>
	  <td>4.092726e-12</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>T 4 1/8 03/31/29</td>
	  <td>US91282CKG59</td>
	  <td>BBG01M44ZQJ1</td>
	  <td>98.64450</td>
	  <td>98.64450</td>
	  <td>-1.796252e-11</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>T 4 1/8 03/31/31</td>
	  <td>US91282CKF76</td>
	  <td>BBG01M44ZS07</td>
	  <td>98.16410</td>
	  <td>98.16410</td>
	  <td>3.879563e-12</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>T 4 02/15/34</td>
	  <td>US91282CJZ59</td>
	  <td>BBG01L8YJFB3</td>
	  <td>96.65625</td>
	  <td>96.65625</td>
	  <td>-8.384404e-13</td>
	</tr>
	<tr>
	  <th>5</th>
	  <td>T 4 1/2 02/15/44</td>
	  <td>US912810TZ12</td>
	  <td>BBG01LK8Y0L1</td>
	  <td>97.96875</td>
	  <td>97.96875</td>
	  <td>3.319656e-11</td>
	</tr>
	<tr>
	  <th>6</th>
	  <td>T 4 1/4 02/15/54</td>
	  <td>US912810TX63</td>
	  <td>BBG01L8YJKX8</td>
	  <td>95.11720</td>
	  <td>95.11720</td>
	  <td>-5.599077e-12</td>
	</tr>
  </tbody>
</table>
</div>

## b. Compute analytical DV01, Duration and Convexity for US on-the-run treasuries (using flat yield)

Compute analytical DV01, Duration and Convexity metrics, as described in Section 7. "Analytical Duration, Convexity and Z-Spread (flat yield model)" in the QuantLib Basic notebook.

Remember that DV01 = Dirty_Price * Duration. 

Extend the dataframe with the following calculated risk metrics:

| dv01 | duration | convexity |
|-------|-------|-------------|

```python
# Set yield conventions
compounding = ql.Compounded
coupon_freq = ql.Semiannual

# Calculate dv01s, durations and convexities
dv01s = []
calc_durations = []
calc_convexities = []

for index, row in govt_combined_otr.iterrows():
    
    bond_object = create_bond_from_symbology(row)
    bond_object.setPricingEngine(bond_engine)
    
    settle_date = bond_object.settlementDate(calc_date)
    day_counter = bond_object.dayCounter()    
    
    bond_yield = bond_object.bondYield(row['calc_mid_price'], day_counter, compounding, coupon_freq, settle_date) * 100
    
    flat_int_rate = ql.InterestRate(bond_yield / 100, day_counter, compounding, coupon_freq)
    bond_duration = ql.BondFunctions.duration(bond_object, flat_int_rate)
    bond_convexity = ql.BondFunctions.convexity(bond_object, flat_int_rate)
    bond_dv01 = bond_object.dirtyPrice() * bond_duration / 100
    
    dv01s.append(bond_dv01)
    calc_durations.append(bond_duration)
    calc_convexities.append(bond_convexity)

# Add new risk columns and display results    
govt_combined_otr['dv01'] = dv01s
govt_combined_otr['duration'] = calc_durations
govt_combined_otr['convexity'] = calc_convexities

display(govt_combined_otr[['security', 'isin', 'figi', 'calc_mid_price', 'dv01', 'duration', 'convexity']])

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
	  <th>security</th>
	  <th>isin</th>
	  <th>figi</th>
	  <th>calc_mid_price</th>
	  <th>dv01</th>
	  <th>duration</th>
	  <th>convexity</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>T 4 1/2 03/31/26</td>
	  <td>US91282CKH33</td>
	  <td>BBG01M44ZLG5</td>
	  <td>99.45700</td>
	  <td>1.857403</td>
	  <td>1.865469</td>
	  <td>4.459846</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>T 4 1/4 03/15/27</td>
	  <td>US91282CKE02</td>
	  <td>BBG01LW4R927</td>
	  <td>99.03520</td>
	  <td>2.698457</td>
	  <td>2.716825</td>
	  <td>8.956741</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>T 4 1/8 03/31/29</td>
	  <td>US91282CKG59</td>
	  <td>BBG01M44ZQJ1</td>
	  <td>98.64450</td>
	  <td>4.386629</td>
	  <td>4.442339</td>
	  <td>23.065904</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>T 4 1/8 03/31/31</td>
	  <td>US91282CKF76</td>
	  <td>BBG01M44ZS07</td>
	  <td>98.16410</td>
	  <td>5.880169</td>
	  <td>5.983959</td>
	  <td>41.816027</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>T 4 02/15/34</td>
	  <td>US91282CJZ59</td>
	  <td>BBG01L8YJFB3</td>
	  <td>96.65625</td>
	  <td>7.760093</td>
	  <td>7.979559</td>
	  <td>75.736523</td>
	</tr>
	<tr>
	  <th>5</th>
	  <td>T 4 1/2 02/15/44</td>
	  <td>US912810TZ12</td>
	  <td>BBG01LK8Y0L1</td>
	  <td>97.96875</td>
	  <td>12.691853</td>
	  <td>12.867321</td>
	  <td>219.186953</td>
	</tr>
	<tr>
	  <th>6</th>
	  <td>T 4 1/4 02/15/54</td>
	  <td>US912810TX63</td>
	  <td>BBG01L8YJKX8</td>
	  <td>95.11720</td>
	  <td>15.671915</td>
	  <td>16.367929</td>
	  <td>385.216648</td>
	</tr>
  </tbody>
</table>
</div>

## c. Compute scenario DV01, Duration and Convexity for US on-the-run treasuries (using calibrated yield curve)

Compute the scenario DV01, Duration and Convexity metrics using +/-1bp interest rate shocks, as described in Section 6. "Market Data Scenarios" in the QuantLib Basic notebook.

Remember that DV01 = Dirty_Price * Duration.

Extend the dataframe with the following scenario sensitivities metrics:

| scen_dv01 | scen_duration | scen_convexity |
|-------|-------|-------------|

```python
# Calculate scenario dv01s, durations and convexities
scen_dv01s = []
scen_durations = []
scen_convexities = []

for index, row in govt_combined_otr.iterrows():
    bond_object = create_bond_from_symbology(row)
    bond_object.setPricingEngine(bond_engine)
    
    # create interest rate scenarios
    interest_rate_bump = ql.SimpleQuote(0.0)
    calibrated_yield_curve_bumped = ql.ZeroSpreadedTermStructure(tsy_yield_curve_mid_handle, ql.QuoteHandle(interest_rate_bump))
    bond_engine_bumped = ql.DiscountingBondEngine(ql.YieldTermStructureHandle(calibrated_yield_curve_bumped))
    bond_object.setPricingEngine(bond_engine_bumped)
    dirty_price_base = bond_object.dirtyPrice()
    
    # Create +1bp scenario
    interest_rate_bump.setValue(0.0001)
    dirty_price_plus = bond_object.dirtyPrice()    
    
    # Create -1bp scenario
    interest_rate_bump.setValue(-0.0001)
    dirty_price_minus = bond_object.dirtyPrice()
    
    # Calc scenario risks        
    scen_dv01 = (dirty_price_minus - dirty_price_base)*100
    scen_duration = scen_dv01  / dirty_price_base * 100
    scen_convexity = (dirty_price_plus + dirty_price_minus - 2 * dirty_price_base) / (dirty_price_base * 0.0001**2)
    
    scen_dv01s.append(scen_dv01)
    scen_durations.append(scen_duration)
    scen_convexities.append(scen_convexity)

# Add new scenario risk columns and display results
govt_combined_otr['scen_dv01'] = scen_dv01s
govt_combined_otr['scen_duration'] = scen_durations
govt_combined_otr['scen_convexity'] = scen_convexities

display(govt_combined_otr[['security', 'isin', 'figi','scen_dv01', 'scen_duration', 'scen_convexity']])

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
	  <th>security</th>
	  <th>isin</th>
	  <th>figi</th>
	  <th>scen_dv01</th>
	  <th>scen_duration</th>
	  <th>scen_convexity</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>T 4 1/2 03/31/26</td>
	  <td>US91282CKH33</td>
	  <td>BBG01M44ZLG5</td>
	  <td>1.923912</td>
	  <td>1.932266</td>
	  <td>3.805139</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>T 4 1/4 03/15/27</td>
	  <td>US91282CKE02</td>
	  <td>BBG01LW4R927</td>
	  <td>2.743093</td>
	  <td>2.761765</td>
	  <td>7.884312</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>T 4 1/8 03/31/29</td>
	  <td>US91282CKG59</td>
	  <td>BBG01M44ZQJ1</td>
	  <td>4.508634</td>
	  <td>4.565894</td>
	  <td>22.042832</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>T 4 1/8 03/31/31</td>
	  <td>US91282CKF76</td>
	  <td>BBG01M44ZS07</td>
	  <td>6.037563</td>
	  <td>6.144130</td>
	  <td>40.932285</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>T 4 02/15/34</td>
	  <td>US91282CJZ59</td>
	  <td>BBG01L8YJFB3</td>
	  <td>7.917630</td>
	  <td>8.141551</td>
	  <td>74.732213</td>
	</tr>
	<tr>
	  <th>5</th>
	  <td>T 4 1/2 02/15/44</td>
	  <td>US912810TZ12</td>
	  <td>BBG01LK8Y0L1</td>
	  <td>12.914460</td>
	  <td>13.093005</td>
	  <td>220.596520</td>
	</tr>
	<tr>
	  <th>6</th>
	  <td>T 4 1/4 02/15/54</td>
	  <td>US912810TX63</td>
	  <td>BBG01L8YJKX8</td>
	  <td>16.048294</td>
	  <td>16.761024</td>
	  <td>395.788996</td>
	</tr>
  </tbody>
</table>
</div>

# Problem 4: Pricing and risk metrics for corporate bonds

## a. Create the fixed-rate corporate bond objects

Restrict the symbology dataframe to fixed rate corporate bonds only and create the corporate bond objects.

```python
# Create the fixed-rate corporate bond symbology + combined dataframes
corp_symbology = bond_symbology[bond_symbology['cpn_type'] == 'FIXED']
corp_combined = corp_symbology.merge(bond_market_prices_eod,  on=['class','ticker','figi','isin'])

display(corp_combined.head())
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
	  <th>ticker</th>
	  <th>class</th>
	  <th>figi</th>
	  <th>isin</th>
	  <th>und_bench_isin</th>
	  <th>security</th>
	  <th>name</th>
	  <th>type</th>
	  <th>coupon</th>
	  <th>cpn_type</th>
	  <th>…</th>
	  <th>term</th>
	  <th>TTM</th>
	  <th>date</th>
	  <th>bidPrice</th>
	  <th>askPrice</th>
	  <th>accrued</th>
	  <th>bidYield</th>
	  <th>askYield</th>
	  <th>midPrice</th>
	  <th>midYield</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>AAPL</td>
	  <td>Corp</td>
	  <td>BBG004HST0K7</td>
	  <td>US037833AL42</td>
	  <td>US912810TZ12</td>
	  <td>AAPL 3.85 05/04/43</td>
	  <td>APPLE INC</td>
	  <td>GLOBAL</td>
	  <td>3.850</td>
	  <td>FIXED</td>
	  <td>…</td>
	  <td>30.001369</td>
	  <td>19.069131</td>
	  <td>2024-04-08</td>
	  <td>84.578</td>
	  <td>85.153</td>
	  <td>1.6685</td>
	  <td>5.127</td>
	  <td>5.074</td>
	  <td>84.8655</td>
	  <td>5.1005</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>AAPL</td>
	  <td>Corp</td>
	  <td>BBG006F8VWJ7</td>
	  <td>US037833AT77</td>
	  <td>US912810TZ12</td>
	  <td>AAPL 4.45 05/06/44</td>
	  <td>APPLE INC</td>
	  <td>GLOBAL</td>
	  <td>4.450</td>
	  <td>FIXED</td>
	  <td>…</td>
	  <td>30.001369</td>
	  <td>20.076660</td>
	  <td>2024-04-08</td>
	  <td>92.578</td>
	  <td>93.293</td>
	  <td>1.9045</td>
	  <td>5.042</td>
	  <td>4.982</td>
	  <td>92.9355</td>
	  <td>5.0120</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>AAPL</td>
	  <td>Corp</td>
	  <td>BBG0081TNL50</td>
	  <td>US037833BA77</td>
	  <td>US912810TZ12</td>
	  <td>AAPL 3.45 02/09/45</td>
	  <td>APPLE INC</td>
	  <td>GLOBAL</td>
	  <td>3.450</td>
	  <td>FIXED</td>
	  <td>…</td>
	  <td>30.001369</td>
	  <td>20.840520</td>
	  <td>2024-04-08</td>
	  <td>78.406</td>
	  <td>78.952</td>
	  <td>0.5850</td>
	  <td>5.152</td>
	  <td>5.102</td>
	  <td>78.6790</td>
	  <td>5.1270</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>AAPL</td>
	  <td>Corp</td>
	  <td>BBG008N1BQC1</td>
	  <td>US037833BH21</td>
	  <td>US912810TZ12</td>
	  <td>AAPL 4 3/8 05/13/45</td>
	  <td>APPLE INC</td>
	  <td>GLOBAL</td>
	  <td>4.375</td>
	  <td>FIXED</td>
	  <td>…</td>
	  <td>30.001369</td>
	  <td>21.095140</td>
	  <td>2024-04-08</td>
	  <td>90.009</td>
	  <td>90.602</td>
	  <td>1.7865</td>
	  <td>5.157</td>
	  <td>5.108</td>
	  <td>90.3055</td>
	  <td>5.1325</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>AAPL</td>
	  <td>Corp</td>
	  <td>BBG00C7QBCQ1</td>
	  <td>US037833BW97</td>
	  <td>US91282CJZ59</td>
	  <td>AAPL 4 1/2 02/23/36</td>
	  <td>APPLE INC</td>
	  <td>GLOBAL</td>
	  <td>4.500</td>
	  <td>FIXED</td>
	  <td>…</td>
	  <td>20.000000</td>
	  <td>11.876797</td>
	  <td>2024-04-08</td>
	  <td>97.413</td>
	  <td>97.894</td>
	  <td>0.5875</td>
	  <td>4.788</td>
	  <td>4.733</td>
	  <td>97.6535</td>
	  <td>4.7605</td>
	</tr>
  </tbody>
</table>
<p>5 rows × 33 columns</p>
</div>

```python
# Create the corporate bond objects and store them in a dictionary
corp_bond_object_dict = {}

for index, row in corp_combined.iterrows():
    bond_details = row.to_dict()
    corp_bond_object = create_bond_from_symbology(bond_details)
    corp_bond_object_dict[row['security']] = corp_bond_object
    
# Display the future cashflows for one corp bond object in the dictionary
corp_bond_key = corp_combined.iloc[10]['security']
corp_bond_cf = get_bond_cashflows(corp_bond_object_dict[corp_bond_key], calc_date=calc_date)

print("Corp bond future cashflows for", corp_bond_key)
display(corp_bond_cf)
```

    Corp bond future cashflows for AAPL 3.35 02/09/27

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
	  <th>CashFlowDate</th>
	  <th>CashFlowYearFrac</th>
	  <th>CashFlowAmount</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>14</th>
	  <td>August 9th, 2024</td>
	  <td>0.336111</td>
	  <td>1.675</td>
	</tr>
	<tr>
	  <th>15</th>
	  <td>February 9th, 2025</td>
	  <td>0.836111</td>
	  <td>1.675</td>
	</tr>
	<tr>
	  <th>16</th>
	  <td>August 9th, 2025</td>
	  <td>1.336111</td>
	  <td>1.675</td>
	</tr>
	<tr>
	  <th>17</th>
	  <td>February 9th, 2026</td>
	  <td>1.836111</td>
	  <td>1.675</td>
	</tr>
	<tr>
	  <th>18</th>
	  <td>August 9th, 2026</td>
	  <td>2.336111</td>
	  <td>1.675</td>
	</tr>
	<tr>
	  <th>19</th>
	  <td>February 9th, 2027</td>
	  <td>2.836111</td>
	  <td>1.675</td>
	</tr>
	<tr>
	  <th>20</th>
	  <td>February 9th, 2027</td>
	  <td>2.836111</td>
	  <td>100.000</td>
	</tr>
  </tbody>
</table>
</div>

## b. Compute analytical Yields and Z-Spreads

Compute analytical Yields and Z-Spreads metrics, as described in Section 7. "Analytical Duration, Convexity and Z-Spread (flat yield model)" in the QuantLib Basic notebook.

Extend the dataframe with the following calculated risk metrics:

| calc_yield | calc_zspread |
|-------|-------------|

```python
# Create risk free bond engine
bond_engine = ql.DiscountingBondEngine(tsy_yield_curve_mid_handle)

# Set yield conventions
compounding = ql.Compounded
coupon_freq = ql.Semiannual

# Calculate yields and zspreads
calc_yields = []
calc_zspreads = []

for index, row in corp_combined.iterrows():
        
    bond_object = create_bond_from_symbology(row)    
    bond_object.setPricingEngine(bond_engine)
    
    settle_date = bond_object.settlementDate(calc_date)
    day_counter = bond_object.dayCounter()

    clean_price = bond_object.cleanPrice()
    
    # yield in pct
    calc_yield = bond_object.bondYield(clean_price, day_counter, compounding, coupon_freq, settle_date) * 1e2
    flat_int_rate = ql.InterestRate(calc_yield / 100, day_counter, compounding, coupon_freq)
    bond_market_price = row['midPrice']
    
    # zspread in bps
    calc_zspread = ql.BondFunctions.zSpread(bond_object, bond_market_price, tsy_yield_curve_mid, day_counter, compounding, coupon_freq, settle_date) * 1e4
    
    calc_yields.append(calc_yield)
    calc_zspreads.append(calc_zspread)

# Add new columns and display results
corp_combined['calc_yield'] = calc_yields
corp_combined['calc_zspread'] = calc_zspreads

display(corp_combined[['security', 'isin', 'figi', 'midPrice', 'calc_yield', 'calc_zspread']])

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
	  <th>security</th>
	  <th>isin</th>
	  <th>figi</th>
	  <th>midPrice</th>
	  <th>calc_yield</th>
	  <th>calc_zspread</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>AAPL 3.85 05/04/43</td>
	  <td>US037833AL42</td>
	  <td>BBG004HST0K7</td>
	  <td>84.8655</td>
	  <td>4.672034</td>
	  <td>42.970043</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>AAPL 4.45 05/06/44</td>
	  <td>US037833AT77</td>
	  <td>BBG006F8VWJ7</td>
	  <td>92.9355</td>
	  <td>4.667760</td>
	  <td>34.563270</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>AAPL 3.45 02/09/45</td>
	  <td>US037833BA77</td>
	  <td>BBG0081TNL50</td>
	  <td>78.6790</td>
	  <td>4.672565</td>
	  <td>45.667333</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>AAPL 4 3/8 05/13/45</td>
	  <td>US037833BH21</td>
	  <td>BBG008N1BQC1</td>
	  <td>90.3055</td>
	  <td>4.659211</td>
	  <td>47.615690</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>AAPL 4 1/2 02/23/36</td>
	  <td>US037833BW97</td>
	  <td>BBG00C7QBCQ1</td>
	  <td>97.6535</td>
	  <td>4.508264</td>
	  <td>25.099546</td>
	</tr>
	<tr>
	  <th>…</th>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>771</th>
	  <td>DIS 7 1/8 04/08/28</td>
	  <td>USU25497AR66</td>
	  <td>BBG00N3BD9G0</td>
	  <td>107.4785</td>
	  <td>4.497478</td>
	  <td>53.699034</td>
	</tr>
	<tr>
	  <th>772</th>
	  <td>DIS 8.45 08/01/34</td>
	  <td>USU25497AW51</td>
	  <td>BBG00N3BZ921</td>
	  <td>124.3505</td>
	  <td>4.456676</td>
	  <td>88.532573</td>
	</tr>
	<tr>
	  <th>773</th>
	  <td>DIS 7.9 12/01/2095</td>
	  <td>USU25497BM60</td>
	  <td>BBG00N55NLL7</td>
	  <td>130.5925</td>
	  <td>4.368313</td>
	  <td>159.742212</td>
	</tr>
	<tr>
	  <th>774</th>
	  <td>DIS 8 1/4 10/17/2096</td>
	  <td>USU25497BN44</td>
	  <td>BBG00N55NPV7</td>
	  <td>134.5175</td>
	  <td>4.363608</td>
	  <td>168.906158</td>
	</tr>
	<tr>
	  <th>775</th>
	  <td>VZ 2.355 03/15/32</td>
	  <td>USU9221ABY39</td>
	  <td>BBG012MB8P10</td>
	  <td>81.1840</td>
	  <td>4.406041</td>
	  <td>88.670556</td>
	</tr>
  </tbody>
</table>
<p>776 rows × 6 columns</p>
</div>

## c. Validate Z-Spread computation for a few fixed rate corporate bonds

Pick 3 corporate bonds (at your discretion) and use function below to re-price them using the calibrated flat z-spread. Follow the example in Section 7. "Analytical Duration, Convexity and Z-Spread (flat yield model)".

Validate that you match the original market prices, which were used as input to the z-Spread function.

```python
def calc_clean_price_with_zspread(fixed_rate_bond, yield_curve_handle, zspread):
    zspread_quote = ql.SimpleQuote(zspread)
    zspread_quote_handle = ql.QuoteHandle(zspread_quote)
    yield_curve_bumped = ql.ZeroSpreadedTermStructure(yield_curve_handle, zspread_quote_handle, ql.Compounded, ql.Semiannual)
    yield_curve_bumped_handle = ql.YieldTermStructureHandle(yield_curve_bumped)
    
    # Set Valuation engine
    bond_engine = ql.DiscountingBondEngine(yield_curve_bumped_handle)
    fixed_rate_bond.setPricingEngine(bond_engine)
    bond_clean_price = fixed_rate_bond.cleanPrice()
    return bond_clean_price

```

```python
# Create risk free bond engine
bond_engine = ql.DiscountingBondEngine(tsy_yield_curve_mid_handle)

# Set yield conventions
compounding = ql.Compounded
coupon_freq = ql.Semiannual

# Pick 3 corporate bonds (at your discretion)
corp_combined_small = corp_combined[:3].copy()

# Calculate prices with zspreads
bond_zspread_prices = []

for index, row in corp_combined_small.iterrows():
    
    bond_object = create_bond_from_symbology(row)    
    bond_object.setPricingEngine(bond_engine)
        
    bond_zspread_price = calc_clean_price_with_zspread(bond_object, tsy_yield_curve_mid_handle, row['calc_zspread']/1e4)
    bond_zspread_prices.append(bond_zspread_price)
    
# Validate that you match the original market prices, which were used as input to the z-Spread function.
corp_combined_small['bond_zspread_price'] = bond_zspread_prices
corp_combined_small['price_difference'] = corp_combined_small['midPrice'] - corp_combined_small['bond_zspread_price']

display(corp_combined_small[['security', 'isin', 'figi', 'calc_zspread', 'midPrice', 'bond_zspread_price','price_difference']])
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
	  <th>security</th>
	  <th>isin</th>
	  <th>figi</th>
	  <th>calc_zspread</th>
	  <th>midPrice</th>
	  <th>bond_zspread_price</th>
	  <th>price_difference</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>AAPL 3.85 05/04/43</td>
	  <td>US037833AL42</td>
	  <td>BBG004HST0K7</td>
	  <td>42.970043</td>
	  <td>84.8655</td>
	  <td>84.8655</td>
	  <td>1.442885e-09</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>AAPL 4.45 05/06/44</td>
	  <td>US037833AT77</td>
	  <td>BBG006F8VWJ7</td>
	  <td>34.563270</td>
	  <td>92.9355</td>
	  <td>92.9355</td>
	  <td>1.010636e-08</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>AAPL 3.45 02/09/45</td>
	  <td>US037833BA77</td>
	  <td>BBG0081TNL50</td>
	  <td>45.667333</td>
	  <td>78.6790</td>
	  <td>78.6790</td>
	  <td>6.028671e-10</td>
	</tr>
  </tbody>
</table>
</div>

## d. Compute Duration and Convexity for fixed rate corporate bonds (using flat yield)

Compute analytical Duration and Convexity metrics, as described in Section 7. "Analytical Duration, Convexity and Z-Spread (flat yield model)" in the QuantLib Basic notebook.

Extend the dataframe with the following calculated risk metrics:

| calc_duration | calc_convexity |
|-------|-------------|

Display the head of the dataframe.

```python
# Create risk free bond engine
bond_engine = ql.DiscountingBondEngine(tsy_yield_curve_mid_handle)

# Set yield conventions
compounding = ql.Compounded
coupon_freq = ql.Semiannual

# Calculate durations and convexities
calc_durations = []
calc_convexities = []

for index, row in corp_combined.iterrows():
    
    bond_object = create_bond_from_symbology(row)
    bond_object.setPricingEngine(bond_engine)
    
    settle_date = bond_object.settlementDate(calc_date)
    day_counter = bond_object.dayCounter()    
    
    bond_yield = bond_object.bondYield(row['midPrice'], day_counter, compounding, coupon_freq, settle_date) * 100
    
    flat_int_rate = ql.InterestRate(bond_yield / 100, day_counter, compounding, coupon_freq)
    bond_duration = ql.BondFunctions.duration(bond_object, flat_int_rate)
    bond_convexity = ql.BondFunctions.convexity(bond_object, flat_int_rate)        
    
    calc_durations.append(bond_duration)
    calc_convexities.append(bond_convexity)

# Add new risk columns and display results
corp_combined['calc_duration'] = calc_durations
corp_combined['calc_convexity'] = calc_convexities

display(corp_combined[['security', 'isin', 'figi', 'midPrice', 'calc_duration', 'calc_convexity']].head())

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
	  <th>security</th>
	  <th>isin</th>
	  <th>figi</th>
	  <th>midPrice</th>
	  <th>calc_duration</th>
	  <th>calc_convexity</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>AAPL 3.85 05/04/43</td>
	  <td>US037833AL42</td>
	  <td>BBG004HST0K7</td>
	  <td>84.8655</td>
	  <td>12.572965</td>
	  <td>208.963938</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>AAPL 4.45 05/06/44</td>
	  <td>US037833AT77</td>
	  <td>BBG006F8VWJ7</td>
	  <td>92.9355</td>
	  <td>12.621284</td>
	  <td>215.777285</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>AAPL 3.45 02/09/45</td>
	  <td>US037833BA77</td>
	  <td>BBG0081TNL50</td>
	  <td>78.6790</td>
	  <td>13.710653</td>
	  <td>247.324158</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>AAPL 4 3/8 05/13/45</td>
	  <td>US037833BH21</td>
	  <td>BBG008N1BQC1</td>
	  <td>90.3055</td>
	  <td>12.974037</td>
	  <td>230.553121</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>AAPL 4 1/2 02/23/36</td>
	  <td>US037833BW97</td>
	  <td>BBG00C7QBCQ1</td>
	  <td>97.6535</td>
	  <td>9.019162</td>
	  <td>99.688622</td>
	</tr>
  </tbody>
</table>
</div>

```python
# Visualize duration and convexity for one ticker (for better understanding of risks) [Not part of homework]
corp_combined_aapl = corp_combined[corp_combined['ticker'] == 'AAPL']

plt = corp_combined_aapl.plot(x='maturity', y=['calc_duration'], style='*-', grid=True, title=f'Duration for AAPL bonds as of {as_of_date.date()}', figsize=(12,4))
plt.set_ylabel('Duration')
plt.set_xlabel('Maturity date')

plt = corp_combined_aapl.plot(x='maturity', y=['calc_convexity'], style='*-', grid=True, title=f'Convexity for AAPL bonds as of {as_of_date.date()}', figsize=(12,4))
plt.set_ylabel('Convexity')
plt.set_xlabel('Maturity date')

```

    Text(0.5, 0, 'Maturity date')




    

![png](output_149_1.png)

![png](output_149_2.png)

<hr><font color="green"><h1>from file: 4Examples_QuantLib_Advanced_FINM_35700_Credit_Markets_Spring2024</h1></font>

# Credit Markets
## FINM 35700 - Spring 2024

### UChicago Financial Mathematics

* Alex Popovici
* alex.popovici@uchicago.edu

# Advanced Usage of QuantLib analytics library
## More details at: https://quantlib-python-docs.readthedocs.io/en/latest/

- 1\. SOFR Is swap rates and SOFR discount curve calibration
  - a. SOFR curve calibration (via Bootstrapping)   
  - b. Display the calibrated SOFR discount curve dataframe
  - c. Plot the calibrated SOFR Zero Rates and Discount Factors curves
  - d. Validate SOFR calibration by pricing SOFR swaps
- 2\. Credit Default Swaps (CDS): calibration + pricing
  - a. CDS Hazard Rate calibration
  - b. Plot the calibrated Hazard Rate and Survival Probability curves
  - c. CDS valuation
- 3\. Pricing risky bonds in the CDS-implied Hazard Rate Model (with Credit Default Risk)
  - a. Create Corporate Bond
  - b. Price Corporate Bond on Risk-Free Yield Curve (without Credit Risk)
  - c. Compute Intrinsic Risky Bond Price on IBM CDS Credit Curve (with Credit Risk)
- 4\. Pricing risky bonds in Custom Hazard Rate Model (with Credit Default Risk)
  - a. Create and Display the Custom Credit Curve
  - b. Price Risky Bond on Custom Credit Curve (with Credit Risk)
- 5\. Smooth parametric yield and hazard rate curves: Nelson-Siegel + extensions
  - a. Nelson Siegel basis functions
  - b. Plot Basis Functions for Nelson-Siegel + extensions
  - c. Constructing smooth Nelson-Siegel hazard rate / survival probability curves
  - d. Pricing risky bonds in Nelson-Siegel model (with Credit Risk) 

```python
import QuantLib as ql
import numpy as np
import pandas as pd
import datetime as dt

import matplotlib.pyplot as plt
%matplotlib inline

```

# 1. SOFR Is swap rates and SOFR discount curve calibration

## a. SOFR curve calibration (via Bootstrapping)

Overnight Index Swap contract is an interest rate swap contract exchanging and overnight index interest rate (e.g. Fed Funds, SOFR, LIBOR) for a fixed interest rate until the contract maturity. The fixed rate is set at a rate agreed upon by both parties. The floating leg portion of the swap is compounded and paid at reset dates. 

```python
# Set the static valuation date: 2023-04-14
calc_date = ql.Date(14, 4, 2023)
ql.Settings.instance().evaluationDate = calc_date

# calendar
calendar = ql.UnitedStates(ql.UnitedStates.GovernmentBond)

# settle_days
settle_days = 2

# SOFR OIS swap tenors: 1Y, 2Y, 3Y, 5Y 7Y, 10Y, 20Y and 30Y
SOFR_tenors = [ql.Period(y, ql.Years) for y in [1, 2, 3, 5, 7, 10, 20, 30]]
               
# SOFR OIS swap rates (as of 2023-04-14)
SOFR_rates = [4.81, 4.11, 3.73, 3.38, 3.32, 3.26, 3.20, 3.02]

SOFR_OIS_swap_helpers = []
for (SOFR_tenor, SOFR_rate) in zip(SOFR_tenors, SOFR_rates):
    SOFR_OIS_swap_helpers.append(ql.OISRateHelper(settle_days, SOFR_tenor, ql.QuoteHandle(ql.SimpleQuote(SOFR_rate/100)), ql.Sofr()))

# Create SOFR yield curve
sofr_yield_curve = ql.PiecewiseLinearZero(settle_days, calendar, SOFR_OIS_swap_helpers, ql.Actual360())
sofr_yield_curve.enableExtrapolation()
sofr_yield_curve_handle = ql.YieldTermStructureHandle(sofr_yield_curve)

print(sofr_yield_curve.referenceDate())

```

    April 18th, 2023

## b. Display the calibrated SOFR discount curve dataframe

```python
def get_yield_curve_details_df(yield_curve, curve_dates=None):
    
    if(curve_dates == None):
        curve_dates = yield_curve.dates()

    dates = [d.to_date() for d in curve_dates]
    discounts = [round(yield_curve.discount(d), 3) for d in curve_dates]
    yearfracs = [round(yield_curve.timeFromReference(d), 3) for d in curve_dates]
    zeroRates = [round(yield_curve.zeroRate(d, yield_curve.dayCounter(), ql.Compounded).rate() * 100, 3) for d in curve_dates]

    yield_curve_details_df = pd.DataFrame(data={'Date': dates,
                             'YearFrac': yearfracs,
                             'DiscountFactor': discounts,
                             'ZeroRate': zeroRates})                             
    return yield_curve_details_df



# Display SOFR yield curve
grid_dates = [sofr_yield_curve.referenceDate() + ql.Period(y, ql.Years) for y in list(range(0,30,2))]


sofr_yield_curve_simple_df = get_yield_curve_details_df(sofr_yield_curve)                  # using calibration grid
sofr_yield_curve_details_df = get_yield_curve_details_df(sofr_yield_curve, grid_dates)    # using external grid

print(sofr_yield_curve_simple_df)
print(sofr_yield_curve_details_df)

```

             Date  YearFrac  DiscountFactor  ZeroRate
    0  2023-04-18     0.000           1.000     4.808
    1  2024-04-18     1.017           0.953     4.808
    2  2025-04-21     2.039           0.921     4.094
    3  2026-04-20     3.050           0.895     3.706
    4  2028-04-18     5.075           0.846     3.347
    5  2030-04-18     7.103           0.795     3.291
    6  2033-04-18    10.147           0.724     3.232
    7  2043-04-20    20.297           0.530     3.173
    8  2053-04-18    30.439           0.415     2.931
              Date  YearFrac  DiscountFactor  ZeroRate
    0   2023-04-18     0.000           1.000     4.808
    1   2025-04-18     2.031           0.922     4.100
    2   2027-04-18     4.058           0.869     3.527
    3   2029-04-18     6.089           0.820     3.319
    4   2031-04-18     8.117           0.770     3.272
    5   2033-04-18    10.147           0.724     3.232
    6   2035-04-18    12.175           0.680     3.221
    7   2037-04-18    14.206           0.638     3.209
    8   2039-04-18    16.233           0.600     3.197
    9   2041-04-18    18.264           0.564     3.185
    10  2043-04-18    20.292           0.530     3.173
    11  2045-04-18    22.322           0.503     3.125
    12  2047-04-18    24.350           0.478     3.076
    13  2049-04-18    26.381           0.455     3.028
    14  2051-04-18    28.408           0.434     2.979

## c. Plot the calibrated SOFR Zero Rates and Discount Factors curves

```python
plt = sofr_yield_curve_details_df.plot(x='Date', y='ZeroRate', grid=True, style='*-', title='SOFR Curve: Zero Rates', figsize=(12,5))
plt.set_ylabel('Zero Rate (%)')
plt.set_xlabel('Date')

plt = sofr_yield_curve_details_df.plot(x='Date', y='DiscountFactor', grid=True, style='*-', title='SOFR Curve: Discount Factors', figsize=(12,5))
plt.set_ylabel('Discount Factors')
plt.set_xlabel('Date')
```

    Text(0.5, 0, 'Date')




    

![png](output_160_1.png)

![png](output_160_2.png)

## d. Validate SOFR calibration by pricing SOFR swaps

```python
# validate SOFR swaps
sofr_index = ql.Sofr(sofr_yield_curve_handle)
# swap_engine = ql.DiscountingSwapEngine(sofr_yield_curve_handle)

print('SOFR Swap valuation: PVs should be close to zero!')

for (SOFR_tenor, SOFR_rate) in zip(SOFR_tenors, SOFR_rates):    
    start_date = calendar.advance(calc_date, settle_days, ql.Days)
    schedule = ql.MakeSchedule(start_date, calendar.advance(start_date, SOFR_tenor), ql.Period('1Y'), calendar=calendar)        
    oisSwap = ql.MakeOIS(SOFR_tenor, sofr_index, SOFR_rate/100, nominal=100)
    
    # oisSwap.setPricingEngine(swap_engine)
    print('Swap PV for', SOFR_tenor, 'tenor /', SOFR_rate, 'coupon :', oisSwap.NPV()) 
    
```

    SOFR Swap valuation: PVs should be close to zero!
    Swap PV for 1Y tenor / 4.81 coupon : 0.0
    Swap PV for 2Y tenor / 4.11 coupon : 2.842170943040401e-14
    Swap PV for 3Y tenor / 3.73 coupon : -4.263256414560601e-14
    Swap PV for 5Y tenor / 3.38 coupon : -4.033573475226149e-11
    Swap PV for 7Y tenor / 3.32 coupon : -2.842170943040401e-14
    Swap PV for 10Y tenor / 3.26 coupon : 7.105427357601002e-15
    Swap PV for 20Y tenor / 3.2 coupon : -2.1316282072803006e-14
    Swap PV for 30Y tenor / 3.02 coupon : -6.394884621840902e-14

# 2. Credit Default Swaps (CDS): calibration + pricing
## a. CDS Hazard Rate calibration

```python
CDS_recovery_rate = 0.4

CDS_day_count = ql.Actual360()

# CDS standard tenors: 1Y, 2Y, 3Y, 5Y 7Y and 10Y
CDS_tenors = [ql.Period(y, ql.Years) for y in [1, 2, 3, 5, 7, 10]]
              
# CDS spreads for IBM as of calc_date = 2023-04-14
CDS_spreads = [17.25, 24.09, 35.58, 55.58, 70.51, 79.92]

CDS_helpers = [ql.SpreadCdsHelper((CDS_spread / 10000.0), CDS_tenor, settle_days, ql.TARGET(),
                                  ql.Quarterly, ql.Following, ql.DateGeneration.TwentiethIMM, CDS_day_count, CDS_recovery_rate, sofr_yield_curve_handle)
               
for (CDS_spread, CDS_tenor) in zip(CDS_spreads, CDS_tenors)]

# bootstrap hazard_rate_curve
hazard_rate_curve = ql.PiecewiseFlatHazardRate(calc_date, CDS_helpers, CDS_day_count)
hazard_rate_curve.enableExtrapolation()

# Display calibrated hazard rates and survival probabilities
hazard_list = [(hr[0].to_date(), 
                CDS_day_count.yearFraction(calc_date, hr[0]),
                hr[1] * 100,
                np.exp(-hr[1]*CDS_day_count.yearFraction(calc_date, hr[0])),
                hazard_rate_curve.survivalProbability(hr[0])) for hr in hazard_rate_curve.nodes()]

grid_dates, year_frac, hazard_rates, sp_manual, surv_probs = zip(*hazard_list)

hazard_rates_df = pd.DataFrame(data={'Date': grid_dates, 
                                     'YearFrac': year_frac,
                                     'HazardRate': hazard_rates,
                                     'SPManual': sp_manual,
                                     'SurvivalProb': surv_probs})
print(hazard_rates_df)

```

             Date   YearFrac  HazardRate  SPManual  SurvivalProb
    0  2023-04-14   0.000000    0.285237  1.000000      1.000000
    1  2024-06-20   1.202778    0.285237  0.996575      0.996575
    2  2025-06-20   2.216667    0.540041  0.988100      0.991133
    3  2026-06-22   3.236111    1.033609  0.967104      0.980745
    4  2028-06-20   5.261111    1.511140  0.923575      0.951188
    5  2030-06-20   7.288889    1.925096  0.869082      0.914772
    6  2033-06-20  10.333333    1.803340  0.829987      0.865903

## b. Plot the calibrated Hazard Rate and Survival Probability curves

```python
plt = hazard_rates_df.plot(x='Date', y='HazardRate', grid=True, style='*-', title='IBM Hazard Rates Curve', figsize=(12,5))
plt.set_ylabel('Hazard Rate (%)')
plt.set_xlabel('Date')

plt = hazard_rates_df.plot(x='Date', y='SurvivalProb', grid=True, style='*-', title='IBM Survival Probability Curve', figsize=(12,5))
plt.set_ylabel('Survival Probability')
plt.set_xlabel('Date')

```

    Text(0.5, 0, 'Date')




    

![png](output_166_1.png)

![png](output_166_2.png)

## c. CDS valuation

```python
# CDS specs
side = ql.Protection.Seller

face_notional = 100

contractual_spread = 100 / 10000

cds_start_date = ql.Date(14, 4, 2023)
cds_maturity_date = ql.Date(20, 6, 2028)

# Create CDS schedule
cds_schedule = ql.MakeSchedule(cds_start_date, cds_maturity_date, ql.Period('3M'),
                            ql.Quarterly, ql.TARGET(), ql.Following, ql.Unadjusted, ql.DateGeneration.TwentiethIMM)

# Create CDS object
cds_obj = ql.CreditDefaultSwap(side, face_notional, contractual_spread, cds_schedule, ql.Following, ql.Actual360())

# Create CDS Implied Credit Curve and pricing engine
cds_surv_prob_curve_handle = ql.DefaultProbabilityTermStructureHandle(hazard_rate_curve)

cds_pricing_engine = ql.MidPointCdsEngine(cds_surv_prob_curve_handle, CDS_recovery_rate, sofr_yield_curve_handle)
cds_obj.setPricingEngine(cds_pricing_engine)


# Print CDS valuation results
print('CDS protection start date:', cds_obj.protectionStartDate())
print('CDS fair/par spread:', round(cds_obj.fairSpread()*10000, 3))
print('CDS PV:', round(cds_obj.NPV(), 4))    
print('CDS Premium Leg PV:', round(cds_obj.couponLegNPV(), 4))
print('CDS Default Leg PV', round(cds_obj.defaultLegNPV(), 4))
print('Survival Prob. to Maturity:', round(hazard_rate_curve.survivalProbability(cds_maturity_date), 4))

```

    CDS protection start date: April 14th, 2023
    CDS fair/par spread: 55.502
    CDS PV: 2.0855
    CDS Premium Leg PV: 4.6868
    CDS Default Leg PV -2.6013
    Survival Prob. to Maturity: 0.9512

# 3. Pricing risky bonds in the CDS-implied Hazard Rate Model (with Credit Default Risk)
## a. Create Corporate Bond

```python
issue_date = ql.Date(14, 4, 2023)
maturity_date = ql.Date(14, 4, 2027)
coupon_freq = ql.Semiannual
coupon_term = ql.Period(coupon_freq)
calendar = ql.UnitedStates(ql.UnitedStates.GovernmentBond)
day_count_conv = ql.Unadjusted
date_generation = ql.DateGeneration.Backward
month_end = True
schedule = ql.Schedule(issue_date,
                       maturity_date,
                       coupon_term,
                       calendar,
                       day_count_conv,
                       day_count_conv,
                       date_generation,
                       month_end)

# Corp Bonds specs
day_count = ql.Thirty360(ql.Thirty360.USA)
settlement_days = 2
coupon_rate = 0.04
coupons = [coupon_rate]
payment_convention = ql.Unadjusted

# Construct the FixedRateBond
face_value = 100
fixed_rate_bond = ql.FixedRateBond(
    settlement_days,
    face_value,
    schedule,
    coupons,
    day_count,
    payment_convention)

x = [(cf.date(), cf.amount()) for cf in fixed_rate_bond.cashflows()]
cf_date, cf_amount = zip(*x)
cf_frame = pd.DataFrame(data={'CashFlowDate': cf_date, 'CashFlowAmount': cf_amount})
print(cf_frame)

```

             CashFlowDate  CashFlowAmount
    0  October 14th, 2023             2.0
    1    April 14th, 2024             2.0
    2  October 14th, 2024             2.0
    3    April 14th, 2025             2.0
    4  October 14th, 2025             2.0
    5    April 14th, 2026             2.0
    6  October 14th, 2026             2.0
    7    April 14th, 2027             2.0
    8    April 14th, 2027           100.0

## b. Price Corporate Bond on Risk-Free Yield Curve (without Credit Risk)

```python
compounding = ql.Compounded
# compounding = ql.Continuous

day_counter = fixed_rate_bond.dayCounter()

risk_free_bond_engine = ql.DiscountingBondEngine(sofr_yield_curve_handle)

fixed_rate_bond.setPricingEngine(risk_free_bond_engine)
risk_free_bond_price = fixed_rate_bond.cleanPrice()
risk_free_bond_yield = fixed_rate_bond.bondYield(risk_free_bond_price, day_counter, ql.Compounded, ql.Semiannual) * 100

print('risk_free_bond_price:', risk_free_bond_price)
print('risk_free_bond_yield:', risk_free_bond_yield)

```

    risk_free_bond_price: 101.54536292727957
    risk_free_bond_yield: 3.5807016439305466

## c. Compute Intrinsic Risky Bond Price on IBM CDS Credit Curve (with Credit Risk)

```python
# bond_recovery_rate
bond_recovery_rate = 0.4

# cds_curve_risky_bond_engine: using calibrated IBM CDS curve
cds_curve_risky_bond_engine = ql.RiskyBondEngine(cds_surv_prob_curve_handle, bond_recovery_rate, sofr_yield_curve_handle)
fixed_rate_bond.setPricingEngine(cds_curve_risky_bond_engine)

# 3. Calculate intrinsic risky bond on custom survival probability curve
risky_bond_price = fixed_rate_bond.cleanPrice()
risky_bond_yield = fixed_rate_bond.bondYield(risky_bond_price, ql.Thirty360(ql.Thirty360.USA), ql.Compounded, ql.Semiannual) * 100

print('risky_bond_price:', risky_bond_price)
print('risky_bond_yield:', risky_bond_yield)

# Compute the credit I-Spread, relative to risk-free bond (SOFR curve)
risky_bond_credit_ispread_bps = (risky_bond_yield - risk_free_bond_yield) * 100
print('risky_bond_ispread_bps:', risky_bond_credit_ispread_bps)

# Calc z-spread
risky_bond_zspread_bps = ql.BondFunctions.zSpread(fixed_rate_bond, risky_bond_price, sofr_yield_curve, ql.Thirty360(ql.Thirty360.USA), ql.Compounded, ql.Semiannual) * 1e4
print('risky_bond_zspread_bps:', risky_bond_zspread_bps)


```

    risky_bond_price: 99.77353776497536
    risky_bond_yield: 4.061950922012331
    risky_bond_ispread_bps: 48.12492780817843
    risky_bond_zspread_bps: 47.384353360489136

# 4. Pricing risky bonds in Custom Hazard Rate Model (with Credit Default Risk)
## a. Create and Display the Custom Credit Curve

```python
# 2. Create custom survival probability curve
custom_surv_prob_dates = [calc_date + ql.Period(T , ql.Years) for T in range(11)]
custom_average_hazard_rates = [0.0030, 0.0060, 0.0090, 0.0110, 0.0125, 0.0140, 0.0150, 0.0160, 0.0170, 0.0180, 0.0190]
custom_surv_prob_levels = [np.exp(-T * custom_average_hazard_rates[T]) for T in range(11)]
# custom_surv_prob_levels = [1.0, 0.9950, 0.9860, 0.9733, 0.9569, 0.9370, 0.9166, 0.8940, 0.8728, 0.8504, 0.8269]

# custom_surv_prob_curve
custom_surv_prob_curve = ql.SurvivalProbabilityCurve(custom_surv_prob_dates, custom_surv_prob_levels, ql.Actual360(), ql.TARGET())
custom_surv_prob_curve.enableExtrapolation()
custom_surv_prob_curve_handle = ql.DefaultProbabilityTermStructureHandle(custom_surv_prob_curve)

# 3. Display custom credit curve
custom_surv_prob_df = pd.DataFrame(data={'Date': custom_surv_prob_dates,
                                          'Average Hazard Rates': custom_average_hazard_rates,
                                          'Survival Probs': custom_surv_prob_levels})

plt = custom_surv_prob_df.plot(x='Date', y='Average Hazard Rates', grid=True, style='*-', title='Custom Hazard Rate Curve', figsize=(12,5))
plt.set_ylabel('Hazard Rate (%)')
plt.set_xlabel('Date')

plt = custom_surv_prob_df.plot(x='Date', y='Survival Probs', grid=True, style='*-', title='Custom Survival Probability Curve', figsize=(12,5))
plt.set_ylabel('Survival Probability')
plt.set_xlabel('Date')
```

    Text(0.5, 0, 'Date')




    

![png](output_176_1.png)

![png](output_176_2.png)

## b. Price Risky Bond on Custom Credit Curve (with Credit Risk) 

```python
# bond_recovery_rate
bond_recovery_rate = 0.4

# custom_curve_risky_bond_engine
custom_curve_risky_bond_engine = ql.RiskyBondEngine(custom_surv_prob_curve_handle, bond_recovery_rate, sofr_yield_curve_handle)
fixed_rate_bond.setPricingEngine(custom_curve_risky_bond_engine)

# 3. Price risky bond on custom survival probability curve
risky_bond_price = fixed_rate_bond.cleanPrice()
risky_bond_yield = fixed_rate_bond.bondYield(risky_bond_price, ql.Thirty360(ql.Thirty360.USA), ql.Compounded, ql.Semiannual) * 100

print('risky_bond_price:', risky_bond_price)
print('risky_bond_yield:', risky_bond_yield)

# Compute the credit I-Spread, relative to risk-free bond (SOFR curve)
risky_bond_credit_ispread_bps = (risky_bond_yield - risk_free_bond_yield) * 100
print('risky_bond_ispread_bps:', risky_bond_credit_ispread_bps)

# Calc z-spread
risky_bond_zspread_bps = ql.BondFunctions.zSpread(fixed_rate_bond, risky_bond_price, sofr_yield_curve, ql.Thirty360(ql.Thirty360.USA), ql.Compounded, ql.Semiannual) * 1e4
print('risky_bond_zspread_bps:', risky_bond_zspread_bps)


```

    risky_bond_price: 98.75601148481837
    risky_bond_yield: 4.342892980575562
    risky_bond_ispread_bps: 76.21913366450156
    risky_bond_zspread_bps: 75.04528626811441

# 5. Smooth parametric yield and hazard rate curves: Nelson-Siegel + extensions
## a. Nelson Siegel basis functions

```python
# nelson_siegel curve shape: Nelson-Siegel
def nelson_siegel(params, maturity):
    ''' params = (theta1, theta2, theta3, lambda)'''    
    
    if(maturity > 0):
        slope_1 = (1 - np.exp(-maturity/params[3]))/(maturity/params[3])
    else:            
        slope_1 = 1

    curvature_1 = slope_1 - np.exp(-maturity/params[3])

    total_value = params[0] + params[1] * slope_1 + params[2] * curvature_1
    
    return total_value

# nelson_siegel_extended curve shape: Nelson-Siegel-Svensson
def nelson_siegel_extended(params, maturity):

    if(maturity > 0):
        slope_1 = (1 - np.exp(-maturity/params[3]))/(maturity/params[3])
    else:            
        slope_1 = 1

    curvature_1 = slope_1 - np.exp(-maturity/params[3])

    total_value = params[0] + params[1] * slope_1 + params[2] * curvature_1    
    
    if(params[5] != 0):
        if(maturity > 0):
            slope_2 = (1 - np.exp(-maturity/params[5]))/(maturity/params[5])
        else:
            slope_2 = 1

        curvature_2 = slope_2 - np.exp(-maturity/params[5])

        total_value = total_value + params[4] * curvature_2
        
    
    return total_value

```

## b. Plot Basis Functions for Nelson-Siegel + extensions

```python

curve_shapes_df = pd.DataFrame([T, nelson_siegel([1, 0, 0, 2], T), 
                                 nelson_siegel([0, 1, 0, 2], T), 
                                 nelson_siegel([0, 0, 2, 2], T)] for T in range(0,30,1))
curve_shapes_df.columns = ['TTM', 'Level', 'Slope', 'Curvature']

curve_shapes_df2 = pd.DataFrame([T, nelson_siegel_extended([1, 0, 0, 2, 0, 0], T), 
                                 nelson_siegel_extended([0, 1, 0, 2, 0, 0], T), 
                                 nelson_siegel_extended([0, 0, 2, 2, 0, 0], T), 
                                 nelson_siegel_extended([0, 0, 0, 2, 1, 10], T)] for T in range(0,30,1))
curve_shapes_df2.columns = ['TTM', 'Level', 'Slope', 'Curvature_1', 'Curvature_2']

print(curve_shapes_df2.head())

plt = curve_shapes_df.plot(x='TTM', y=['Level', 'Slope', 'Curvature'], grid=True, style='-', title='Nelson-Siegel basis functions', figsize=(12,5))
plt.set_ylabel('Curve Level')
plt.set_xlabel('Time to maturity (years)')

plt = curve_shapes_df2.plot(x='TTM', y=['Level', 'Slope', 'Curvature_1', 'Curvature_2'], grid=True, style='-', title='Nelson-Siegel-Svensson basis functions', figsize=(12,5))
plt.set_ylabel('Curve Level')
plt.set_xlabel('Time to maturity (years)')

```

       TTM  Level     Slope  Curvature_1  Curvature_2
    0    0    1.0  1.000000     0.000000     0.000000
    1    1    1.0  0.786939     0.360816     0.046788
    2    2    1.0  0.632121     0.528482     0.087615
    3    3    1.0  0.517913     0.589566     0.123121
    4    4    1.0  0.432332     0.593994     0.153880





    Text(0.5, 0, 'Time to maturity (years)')




    

![png](output_182_2.png)

![png](output_182_3.png)

## c. Constructing smooth Nelson-Siegel hazard rate / survival probability curves

```python
# nelson_siegel_params = [theta1, theta2, theta3, lambda] = [long term level, short - long slope, curvature, lambda]
nelson_siegel_params = [0.0300, -0.0100, -0.0010, 2]

nelson_siegel_surv_prob_dates = [calc_date + ql.Period(T , ql.Years) for T in range(31)]
nelson_siegel_average_hazard_rates = [nelson_siegel(nelson_siegel_params, T) for T in range(31)]
nelson_siegel_surv_prob_levels = [np.exp(-T * nelson_siegel_average_hazard_rates[T]) for T in range(31)]

# nelson_siegel_surv_prob_curve
nelson_siegel_credit_curve = ql.SurvivalProbabilityCurve(nelson_siegel_surv_prob_dates, nelson_siegel_surv_prob_levels, ql.Actual360(), ql.TARGET())
nelson_siegel_credit_curve.enableExtrapolation()
nelson_siegel_credit_curve_handle = ql.DefaultProbabilityTermStructureHandle(nelson_siegel_credit_curve)

nelson_siegel_surv_prob_df = pd.DataFrame(data={'Dates': nelson_siegel_surv_prob_dates,
                                          'Average Hazard Rates': nelson_siegel_average_hazard_rates,
                                          'Survival Probs': nelson_siegel_surv_prob_levels})
# print(nelson_siegel_surv_prob_df)

plt = nelson_siegel_surv_prob_df.plot(x='Dates', y=['Average Hazard Rates'], grid=True, style='-', title='Nelson-Siegel smooth hazard rate curve', figsize=(12,5))
plt.set_ylabel('Average hazard rate')
plt.set_xlabel('Maturity')

plt = nelson_siegel_surv_prob_df.plot(x='Dates', y=['Survival Probs'], grid=True, style='-', title='Nelson-Siegel smooth survival probability curve', figsize=(12,5))
plt.set_ylabel('Survival Prob')
plt.set_xlabel('Maturity')


```

    Text(0.5, 0, 'Maturity')




    

![png](output_184_1.png)

![png](output_184_2.png)

## d. Pricing risky bonds in Nelson-Siegel model (with Credit Risk)

```python
# bond_recovery_rate
bond_recovery_rate = 0.4

# nelson_siegel_risky_bond_engine
nelson_siegel_risky_bond_engine = ql.RiskyBondEngine(nelson_siegel_credit_curve_handle, bond_recovery_rate, sofr_yield_curve_handle)
fixed_rate_bond.setPricingEngine(nelson_siegel_risky_bond_engine)

# Price risky bond using Nelson-Siegel survival probability curve
nelson_siegel_risky_bond_price = fixed_rate_bond.cleanPrice()
nelson_siegel_risky_bond_yield = fixed_rate_bond.bondYield(nelson_siegel_risky_bond_price, ql.Thirty360(ql.Thirty360.USA), ql.Compounded, ql.Semiannual) * 100

print('nelson_siegel_surv_prob_risky_bond_price:', nelson_siegel_risky_bond_price)
print('nelson_siegel_surv_prob_risky_bond_yield:', nelson_siegel_risky_bond_yield)

# Compute the credit I-Spread (relative to risk-free SOFR bond)
nelson_siegel_risky_bond_credit_ispread = (nelson_siegel_risky_bond_yield - risk_free_bond_yield) * 1e2
print('nelson_siegel_risky_bond_ispread:', nelson_siegel_risky_bond_credit_ispread)

# Compute z-spread
nelson_siegel_risky_bond_zspread = ql.BondFunctions.zSpread(fixed_rate_bond, nelson_siegel_risky_bond_price, sofr_yield_curve, ql.Thirty360(ql.Thirty360.USA), ql.Compounded, ql.Semiannual) * 1e4
print('nelson_siegel_risky_bond_zspread:', nelson_siegel_risky_bond_zspread)


```

    nelson_siegel_surv_prob_risky_bond_price: 95.95463373300109
    nelson_siegel_surv_prob_risky_bond_yield: 5.134316444396973
    nelson_siegel_risky_bond_ispread: 155.3614800466426
    nelson_siegel_risky_bond_zspread: 152.96353195435728

<hr><font color="green"><h1>from file: 5FINM_35700_CreditMarkets_Spring2024_Solution_3</h1></font>

# Homework 3

## FINM 35700 - Spring 2024

### UChicago Financial Mathematics

### Due Date: 2024-04-23

* Alex Popovici
* alex.popovici@uchicago.edu

This homework relies on:

- the SOFR Is symbology file `sofr_swap_symbology`,
- the SOFR swaps market data file `sofr_swaps_market_data_eod` and
- the CDS spreads market data file `cds_market_data_eod`.

-----------------------------------------------------------
# Problem 1: Risk & Scenario analysis for a fixed rate corporate bond (yield model)
## Use the QuantLib Basic notebook (or previous homeworks) as templates.

## a. Create generic fixed-rate corporate bond

Fix the calculation date as of April 15 2024 and use a coupon of 5% and a maturity of 10 years (April 15 2034).

Display the fixed rate bond cashflows.

```python
# import tools from previous homeworks
from credit_market_tools import *

# Use static calculation/valuation date of 2024-04-15, matching data available in the market prices EOD file
calc_date = ql.Date(15, 4, 2024)
ql.Settings.instance().evaluationDate = calc_date
```

```python
# bond_details
test_bond_details = {'class': 'Corp',
                'start_date': '2024-04-15', 
                'acc_first': '2024-04-15', 
                'maturity': '2034-04-15', 
                'coupon': 5,
                'dcc' : '30/360',
                'days_settle' : 2}

# Use create_bond_from_symbology() to create the bond
test_fixed_rate_bond = create_bond_from_symbology(test_bond_details)

test_fixed_rate_bond_cashflows_df = get_bond_cashflows(test_fixed_rate_bond, calc_date)
print(test_fixed_rate_bond_cashflows_df)
```

              CashFlowDate  CashFlowYearFrac  CashFlowAmount
    0   October 15th, 2024          0.508333             2.5
    1     April 15th, 2025          1.008333             2.5
    2   October 15th, 2025          1.508333             2.5
    3     April 15th, 2026          2.008333             2.5
    4   October 15th, 2026          2.508333             2.5
    5     April 15th, 2027          3.008333             2.5
    6   October 15th, 2027          3.508333             2.5
    7     April 15th, 2028          4.008333             2.5
    8   October 15th, 2028          4.508333             2.5
    9     April 15th, 2029          5.008333             2.5
    10  October 15th, 2029          5.508333             2.5
    11    April 15th, 2030          6.008333             2.5
    12  October 15th, 2030          6.508333             2.5
    13    April 15th, 2031          7.008333             2.5
    14  October 15th, 2031          7.508333             2.5
    15    April 15th, 2032          8.008333             2.5
    16  October 15th, 2032          8.508333             2.5
    17    April 15th, 2033          9.008333             2.5
    18  October 15th, 2033          9.508333             2.5
    19    April 15th, 2034         10.008333             2.5
    20    April 15th, 2034         10.008333           100.0

## b. Compute the bond price, DV01, duration and convexity (analytic method).

Assume that the market yield of the bond is 6%. Compute the bond price, DV01, duration and convexity, using the analytic method.

```python
# test_bond_yield of 6%
test_bond_yield = 6

# test_bond_clean_price
test_bond_clean_price = test_fixed_rate_bond.cleanPrice(test_bond_yield/100, test_fixed_rate_bond.dayCounter(), ql.Compounded, ql.Semiannual)
test_bond_dirty_price = test_fixed_rate_bond.dirtyPrice(test_bond_yield/100, test_fixed_rate_bond.dayCounter(), ql.Compounded, ql.Semiannual)

# Compute analytical dv01, duration and convexity
test_bond_yield_rate = ql.InterestRate(test_bond_yield/100, test_fixed_rate_bond.dayCounter(), ql.Compounded, ql.Semiannual)
test_bond_duration = ql.BondFunctions.duration(test_fixed_rate_bond, test_bond_yield_rate)
test_bond_convexity = ql.BondFunctions.convexity(test_fixed_rate_bond, test_bond_yield_rate)
test_bond_dv01 = test_bond_duration * test_bond_dirty_price / 100

print('test_bond_clean_price:', round(test_bond_clean_price, 2))
print('test_bond_dirty_price:', round(test_bond_dirty_price, 2))
print('test_bond_dv01:', round(test_bond_dv01, 2))
print('test_bond_duration:', round(test_bond_duration, 2))
print('test_bond_convexity:', round(test_bond_convexity, 2))


```

    test_bond_clean_price: 92.56
    test_bond_dirty_price: 92.58
    test_bond_dv01: 7.09
    test_bond_duration: 7.66
    test_bond_convexity: 71.74

## c. Scenario bond prices: "re-pricing" vs "second-order approximations"

Compute the scenario bond prices on the following scenario yield grid: [from 1% to 11% in steps of 0.5%]

Compute the second-order scenario price approximations using duration and convexity sensitivities (formula 13 from Lecture 1).

Plot the scenario prices (Y-axis) vs yieds (X-axis), for both the "re-pricing" and "second-order approximations" method.

Here we are using formula [13] from Lecture 1, which gives us the second-order price approximation via duration/convexity (second order Taylor expansion in yield parameter).

\begin{align}

\Delta B(y) = B\left(y+\Delta y\right)-B\left(y\right)\approx B\cdot\left[- D\cdot\Delta y+\frac{1}{2}\cdot\Gamma\cdot\left(\Delta y\right)^{2}\right]

\end{align}

We implement formula [13] into the `calc_second_order_price_change(…)` function, taking into account that $B(y)$ is the dirty bond price.

```python
def calc_second_order_price_change(dirty_price, yield_diff, duration, convexity):
    return dirty_price * (- yield_diff * duration + 0.5 * yield_diff*yield_diff*convexity)

# bond_yield_grid : yield grid [from 1% to 11% in steps of 0.5%]    
bond_yield_grid = [y for y in np.arange(1, 11.5, 0.5)]

# scenario_prices
scenario_prices = [round(test_fixed_rate_bond.cleanPrice(y/100, test_fixed_rate_bond.dayCounter(), ql.Compounded, ql.Semiannual), 3) for y in bond_yield_grid]

# second_order_approx_prices
second_order_approx_prices = [round(test_bond_clean_price + calc_second_order_price_change(test_bond_dirty_price, (y - test_bond_yield) / 100, test_bond_duration, test_bond_convexity), 2) 
                                   for y in bond_yield_grid]

# plot bond_scennarios_df
bond_scenarios_df = pd.DataFrame(data={'ScenYields': bond_yield_grid, 'ScenPrices': scenario_prices, 'ApproxPrices': second_order_approx_prices})
print(bond_scenarios_df.round(1))

# Plot Scenario Prices for "analytic re-pricing" vs "second-order approximations
plt = bond_scenarios_df.plot(x='ScenYields', y=['ScenPrices', 'ApproxPrices'], grid=True, style='-*', title='Scenario Prices for "analytic re-pricing" vs "second-order approximations"', figsize=(12,4))
plt.axhline(test_bond_clean_price, color='red', linestyle='--', alpha=0.7)
plt.set_ylabel('Scenario Price')
plt.set_xlabel('Yield')

```

        ScenYields  ScenPrices  ApproxPrices
    0          1.0       138.0         136.3
    1          1.5       132.4         131.2
    2          2.0       127.1         126.2
    3          2.5       122.0         121.5
    4          3.0       117.2         116.8
    5          3.5       112.6         112.4
    6          4.0       108.2         108.1
    7          4.5       104.0         104.0
    8          5.0       100.0         100.0
    9          5.5        96.2          96.2
    10         6.0        92.6          92.6
    11         6.5        89.1          89.1
    12         7.0        85.8          85.8
    13         7.5        82.6          82.7
    14         8.0        79.6          79.7
    15         8.5        76.7          76.9
    16         9.0        74.0          74.3
    17         9.5        71.4          71.8
    18        10.0        68.8          69.5
    19        10.5        66.4          67.4
    20        11.0        64.2          65.4





    Text(0.5, 0, 'Yield')




    

![png](output_198_2.png)

## d. Extreme events scenarios

Compute and show the scenario bond price for a bond yield of 15% (extreme event scenario).

Compute and show the second-order scenario price approximation in the extreme event scenario.

How accurate is the second-order scenario price approximations (using duration and convexity sensitivities)?

Compute and show the analytic DV01, duration and convexity in the extreme event scenario.

```python
extreme_event_bond_yield = 15
extreme_event_bond_clean_price = round(test_fixed_rate_bond.cleanPrice(extreme_event_bond_yield/100, test_fixed_rate_bond.dayCounter(), ql.Compounded, ql.Semiannual), 3)
extreme_event_second_order_approx_price = round(test_bond_clean_price + calc_second_order_price_change(test_bond_dirty_price, (extreme_event_bond_yield - test_bond_yield) / 100, test_bond_duration, test_bond_convexity), 2) 
                             
print('extreme_event_scenario_price:', extreme_event_bond_clean_price)
print('extreme_event_approx_price:', extreme_event_second_order_approx_price)
print('extreme_event_approx_error:', round(extreme_event_second_order_approx_price - extreme_event_bond_clean_price, 2))                             
```

    extreme_event_scenario_price: 49.033
    extreme_event_approx_price: 55.62
    extreme_event_approx_error: 6.59

-----------------------------------------------------------
# Problem 2: Perpetual bonds
## a. Price a fixed rate perpetual bond

We are interested in a fixed rate perpetual bond (infinite maturity) on a face notional of \$100 and semi-annual coupon c.

Assuming that the bond has a (continuously componded) yield of y, what is the fair value price of the bond?

For simplicity, you can assume T+0 settlement and zero accrued. 

You can use following sympy code (implementing Formula 5 from Session 1) as a starting point.

```python
# import libraries
import sympy as sp

# define fixed rate bond specs as symbolic variables
T = sp.symbols('T')
c = sp.symbols('c')
y = sp.symbols('y')

# define symbolic equation for generic fixed rate bond pv
bond_pv_eq =  1 + (c/2  / (sp.exp(y/2) - 1) - 1 )* (1 - sp.exp(-T*y))
print('Analytic formula for bond_pv:', bond_pv_eq)
display(bond_pv_eq)
```

    Analytic formula for bond_pv: (1 - exp(-T*y))*(c/(2*(exp(y/2) - 1)) - 1) + 1

$\displaystyle \left(1 - e^{- T y}\right) \left(\frac{c}{2 \left(e^{\frac{y}{2}} - 1\right)} - 1\right) + 1$

We start with the formula for pricing a risky fixed rate bond on a face of 100%, derived in Lecture 1, formulas [4] and [5].

\begin{align}

B_{0}^{T}=B(0,c,T,y)=\sum_{k=1}^{2T}\frac{c}{2}\cdot e^{-k\cdot\frac{y}{2}}+e^{-T\cdot y}

\end{align}

\begin{align}

=1+\frac{\frac{c}{2}-\left(e^{\frac{y}{2}}-1\right)}{e^{\frac{y}{2}}-1}\cdot\left(1-e^{-T\cdot y}\right)

\end{align}

\begin{align}

=1+\frac{c-y_{sa}}{y_{sa}}\cdot\left[1-\left(1+\frac{y_{sa}}{2}\right)^{-2T}\right]

\end{align}

Remember that the the semi-annual yield is given by:  $y_{sa} = 2 \cdot \left(e^{\frac{y}{2}}-1 \right)$.

In the case of the fixed rate perpetual bond, the bond maturity and cashflows extend to "infinity", so the pricing formula simplifies in terms of $y_{sa}$ to

\begin{align}

B_{0}^{\infty}=B(0,c,\infty,y)=\sum_{k=1}^{\infty}\frac{c}{2}\cdot e^{-k\cdot\frac{y}{2}} =  \frac{c}{2 \cdot \left(e^{\frac{y}{2}}-1 \right)}=\frac{c}{y_{sa}},

\end{align}

To obtain the fair price on a face of \$100, one has to multiply the formula above by 100:

\begin{align}

B_{0}^{\infty}(100) =  \frac{100 \cdot c}{2 \cdot \left(e^{\frac{y}{2}}-1 \right)} = 100 \cdot \frac{c}{y_{sa}},

\end{align}

## b. Perpetual bonds priced "at par"

For which yield y does the bond trade "at par", i.e. fair value price = \$100?

\begin{align}

B_{0}^{\infty}(100)=100 \iff y=2\cdot \ln \left( 1 + \frac{c}{2} \right) \iff y_{sa} = c.

\end{align}

Hence, the perpetual bond trades "at par" if the smi-annual yield $y_{sa}$ matches the semi-annual coupon c (same result as for "regular" fixed rate bonds).

## c. Duration and DV01 for a fixed rate perpetual bond

Compute Duration and DV01 of the perpetual bond.

```python
# define symbolic equations
perpetual_bond_price = c / (sp.exp(y/2) - 1) / 2
print('1. Perpetual bond price (with coupon c):')
display(perpetual_bond_price)

# find first and second order derivatives
first_order_derivative = perpetual_bond_price.diff(y)
print('2. Perpetual bond DV01:')
display(-first_order_derivative)

perpetual_bond_duration =  sp.simplify(- first_order_derivative / perpetual_bond_price)
print('3. Perpetual bond duration:')
display(perpetual_bond_duration)
```

    1. Perpetual bond price (with coupon c):

$\displaystyle \frac{c}{2 \left(e^{\frac{y}{2}} - 1\right)}$

    2. Perpetual bond DV01:

$\displaystyle \frac{c e^{\frac{y}{2}}}{4 \left(e^{\frac{y}{2}} - 1\right)^{2}}$

    3. Perpetual bond duration:

$\displaystyle \frac{e^{\frac{y}{2}}}{2 e^{\frac{y}{2}} - 2}$

Hence, PV01 and duration of a fixed rate perpetual bond are given by

\begin{align}

PV01 = -\frac{\partial B}{\partial y} = -\frac{\partial}{\partial y}\left[\frac{c}{2 \cdot \left( e^{\frac{y}{2}}-1 \right) }\right]=\frac{c \cdot e^{\frac{y}{2}}}{4 \cdot \left( e^{\frac{y}{2}} - 1 \right)^2} = \frac{c \cdot \left( 1 + \frac{y_{sa}}{2} \right) }{y_{sa}^2}

\end{align}

\begin{align}

D = -\frac{1}{B} \cdot \frac{\partial B}{\partial y} = \frac{e^{\frac{y}{2}}}{2 \cdot \left( e^{\frac{y}{2}} - 1 \right)} = \frac{1 + \frac{y_{sa}}{2} }{y_{sa}}.

\end{align}

## d. Convexity of a fixed rate perpetual bond

Compute the convexity of the perpetual bond.

```python
second_order_derivative = sp.simplify(first_order_derivative.diff(y))
print('Second order derivative:')
display(second_order_derivative)

perpetual_bond_convexity =  sp.simplify(second_order_derivative / perpetual_bond_price)
print('Perpetual bond convexity:')
display(perpetual_bond_convexity)

```

    Second order derivative:

$\displaystyle - \frac{c \left(\left(e^{\frac{y}{2}} - 1\right) e^{\frac{y}{2}} - 2 e^{y}\right)}{8 \left(e^{\frac{y}{2}} - 1\right)^{3}}$

    Perpetual bond convexity:

$\displaystyle \frac{\left(1 + e^{- \frac{y}{2}}\right) e^{y}}{4 \left(- 2 e^{\frac{y}{2}} + e^{y} + 1\right)}$

Hence, second order derivative and convexity $\Gamma$ of the fixed rate perpetual bond are given by

\begin{align}

\frac{\partial^{2} B}{\partial y^{2}} = \frac{\partial^{2}}{\partial y^{2}}\left[\frac{\frac{c}{2}}{e^{\frac{y}{2}}-1}\right] = \frac{\partial}{\partial y}\left[\frac{c \cdot e^{\frac{y}{2}}}{4 \cdot \left( e^{\frac{y}{2}} - 1 \right)^2} \right] = \frac{c \cdot e^{\frac{y}{2}} \cdot \left(e^{\frac{y}{2}} + 1 \right)}{8 \cdot \left( e^{\frac{y}{2}} - 1 \right)^3}  = \frac{c \cdot \left( 1 + \frac{y_{sa}}{2} \right) \cdot \left( 2 + \frac{y_{sa}}{2} \right)}{y_{sa}^3}

\end{align}

\begin{align}

\Gamma = \frac{1}{B} \cdot \frac{\partial^{2} B}{\partial y^{2}} = \frac{e^{\frac{y}{2}} \cdot \left(e^{\frac{y}{2}} + 1 \right)}{4 \cdot \left( e^{\frac{y}{2}} - 1 \right)^2} =  \frac{\left( 1 + \frac{y_{sa}}{2} \right) \cdot \left( 2 + \frac{y_{sa}}{2} \right)}{y_{sa}^2}. 

\end{align}

-----------------------------------------------------------
# Problem 3: US SOFR swap curve calibration as of 2024-04-15
## Follow Section "1. SOFR Is swap rates and SOFR discount curve calibration + validation" in the QuantLib Advanced notebook !

# a. Load and explore US SOFR swaps symbology and market data

Load the `sofr_swap_symbology` Excel file into a dataframe. Print all swap tenors available.

Load the `sofr_swaps_market_data_eod` Excel file into a dataframe. Print all dates available.

Plot the historial time series of SOFR rates for the available [1Y, 2Y, 3Y, 5Y, 7Y, 10Y, 20Y, 30Y] tenors.

```python
# sofr_symbology
sofr_symbology = pd.read_excel('./data/sofr_swaps_symbology.xlsx')
sofr_symbology.set_index('figi',inplace=True)
display(sofr_symbology)

# sofr_market_quotes
sofr_market_quotes = pd.read_excel('./data/sofr_swaps_market_data_eod.xlsx')
# print(sofr_market_quotes.head())

# pivot to get SOFR rates time series
sofr_quotes_ts = sofr_market_quotes.pivot(index="date", columns="figi", values="midRate")
sofr_quotes_ts.columns = sofr_symbology.tenor[sofr_quotes_ts.columns]
# print(sofr_quotes_ts.head())

plt = sofr_quotes_ts.plot(grid=True, style='-', title='SOFR Swaps: historical time series', figsize=(12,8))
plt.set_ylabel('SOFR Rate')
plt.set_xlabel('Date')
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
	  <th>ticker</th>
	  <th>class</th>
	  <th>bbg</th>
	  <th>name</th>
	  <th>tenor</th>
	  <th>type</th>
	  <th>dcc</th>
	  <th>exchange</th>
	  <th>country</th>
	  <th>currency</th>
	  <th>status</th>
	</tr>
	<tr>
	  <th>figi</th>
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
	  <th>BBG00KFWPJJ9</th>
	  <td>USOSFR1</td>
	  <td>Curncy</td>
	  <td>USOSFR1 Curncy</td>
	  <td>USD Is  ANN VS SOFR 1Y</td>
	  <td>1</td>
	  <td>SWAP</td>
	  <td>ACT/360</td>
	  <td>NONE</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	</tr>
	<tr>
	  <th>BBG00KFWPJX3</th>
	  <td>USOSFR2</td>
	  <td>Curncy</td>
	  <td>USOSFR2 Curncy</td>
	  <td>USD Is  ANN VS SOFR 2Y</td>
	  <td>2</td>
	  <td>SWAP</td>
	  <td>ACT/360</td>
	  <td>NONE</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	</tr>
	<tr>
	  <th>BBG00KFWPK15</th>
	  <td>USOSFR3</td>
	  <td>Curncy</td>
	  <td>USOSFR3 Curncy</td>
	  <td>USD Is  ANN VS SOFR 3Y</td>
	  <td>3</td>
	  <td>SWAP</td>
	  <td>ACT/360</td>
	  <td>NONE</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	</tr>
	<tr>
	  <th>BBG00KFWPK51</th>
	  <td>USOSFR5</td>
	  <td>Curncy</td>
	  <td>USOSFR5 Curncy</td>
	  <td>USD Is  ANN VS SOFR 5Y</td>
	  <td>5</td>
	  <td>SWAP</td>
	  <td>ACT/360</td>
	  <td>NONE</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	</tr>
	<tr>
	  <th>BBG00KFWPK79</th>
	  <td>USOSFR7</td>
	  <td>Curncy</td>
	  <td>USOSFR7 Curncy</td>
	  <td>USD Is  ANN VS SOFR 7Y</td>
	  <td>7</td>
	  <td>SWAP</td>
	  <td>ACT/360</td>
	  <td>NONE</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	</tr>
	<tr>
	  <th>BBG00KFWPKB4</th>
	  <td>USOSFR10</td>
	  <td>Curncy</td>
	  <td>USOSFR10 Curncy</td>
	  <td>USD Is  ANN VS SOFR 10Y</td>
	  <td>10</td>
	  <td>SWAP</td>
	  <td>ACT/360</td>
	  <td>NONE</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	</tr>
	<tr>
	  <th>BBG00KFWPKF0</th>
	  <td>USOSFR20</td>
	  <td>Curncy</td>
	  <td>USOSFR20 Curncy</td>
	  <td>USD Is  ANN VS SOFR 20Y</td>
	  <td>20</td>
	  <td>SWAP</td>
	  <td>ACT/360</td>
	  <td>NONE</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	</tr>
	<tr>
	  <th>BBG00KFWPKH8</th>
	  <td>USOSFR30</td>
	  <td>Curncy</td>
	  <td>USOSFR30 Curncy</td>
	  <td>USD Is  ANN VS SOFR 30Y</td>
	  <td>30</td>
	  <td>SWAP</td>
	  <td>ACT/360</td>
	  <td>NONE</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	</tr>
  </tbody>
</table>
</div>

    Text(0.5, 0, 'Date')




    

![png](output_214_2.png)

# b. Calibrate the US SOFR yield curve (via bootstrapping)

The function below shows how to calibrate a smooth yield/discount factor curve from SOFR swaps. 

Prepare a joint symbology & market dataframe quotes as of 2024-04-15. 

Calibrate the SOFR discount factor curve as of 2024-04-15.

Follow section 1b in the QuantLib Advanced notebook.

```python
def calibrate_sofr_curve_from_frame(
        calc_date: ql.Date,
        sofr_details: pd.DataFrame,
        rate_quote_column: str):
    '''Create a calibrated yield curve from a SOFR details dataframe which includes rate quotes.
    '''
    ql.Settings.instance().evaluationDate = calc_date

    # Sort dataframe by maturity
    sorted_details_frame = sofr_details.sort_values(by='tenor')    
    
    # settle_days
    settle_days = 2
    
    # For US SOFR OIS Swaps 
    day_count = ql.Actual360()

    # For US SOFR Swaps     
    calendar = ql.UnitedStates(ql.UnitedStates.GovernmentBond)
    
    sofr_helpers = []
    
    for index, row in sorted_details_frame.iterrows():
        sofr_quote = row[rate_quote_column]
        tenor_in_years = row['tenor']
        sofr_tenor = ql.Period(tenor_in_years, ql.Years)
        
        # create sofr_rate_helper
        sofr_helper = ql.OISRateHelper(settle_days, sofr_tenor, ql.QuoteHandle(ql.SimpleQuote(sofr_quote/100)), ql.Sofr())
                        
        sofr_helpers.append(sofr_helper)
        
    sofr_yield_curve = ql.PiecewiseLinearZero(settle_days, calendar, sofr_helpers, day_count)
    sofr_yield_curve.enableExtrapolation()
    
    return sofr_yield_curve
```

```python
# sofr_combined
sofr_combined = sofr_symbology.merge(sofr_market_quotes[sofr_market_quotes['date'] == '2024-04-15'], how='left', on=['figi'])
display(sofr_combined.head())

# calibrate SOFR discount curve
sofr_yield_curve = calibrate_sofr_curve_from_frame(calc_date, sofr_combined, 'midRate')
sofr_yield_curve_handle = ql.YieldTermStructureHandle(sofr_yield_curve)

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
	  <th>figi</th>
	  <th>ticker</th>
	  <th>class</th>
	  <th>bbg</th>
	  <th>name</th>
	  <th>tenor</th>
	  <th>type</th>
	  <th>dcc</th>
	  <th>exchange</th>
	  <th>country</th>
	  <th>currency</th>
	  <th>status</th>
	  <th>date</th>
	  <th>bidRate</th>
	  <th>askRate</th>
	  <th>midRate</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>BBG00KFWPJJ9</td>
	  <td>USOSFR1</td>
	  <td>Curncy</td>
	  <td>USOSFR1 Curncy</td>
	  <td>USD Is  ANN VS SOFR 1Y</td>
	  <td>1</td>
	  <td>SWAP</td>
	  <td>ACT/360</td>
	  <td>NONE</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	  <td>2024-04-12</td>
	  <td>5.1753</td>
	  <td>5.1831</td>
	  <td>5.1792</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>BBG00KFWPJX3</td>
	  <td>USOSFR2</td>
	  <td>Curncy</td>
	  <td>USOSFR2 Curncy</td>
	  <td>USD Is  ANN VS SOFR 2Y</td>
	  <td>2</td>
	  <td>SWAP</td>
	  <td>ACT/360</td>
	  <td>NONE</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	  <td>2024-04-12</td>
	  <td>4.8155</td>
	  <td>4.8225</td>
	  <td>4.8190</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>BBG00KFWPK15</td>
	  <td>USOSFR3</td>
	  <td>Curncy</td>
	  <td>USOSFR3 Curncy</td>
	  <td>USD Is  ANN VS SOFR 3Y</td>
	  <td>3</td>
	  <td>SWAP</td>
	  <td>ACT/360</td>
	  <td>NONE</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	  <td>2024-04-12</td>
	  <td>4.5742</td>
	  <td>4.5818</td>
	  <td>4.5780</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>BBG00KFWPK51</td>
	  <td>USOSFR5</td>
	  <td>Curncy</td>
	  <td>USOSFR5 Curncy</td>
	  <td>USD Is  ANN VS SOFR 5Y</td>
	  <td>5</td>
	  <td>SWAP</td>
	  <td>ACT/360</td>
	  <td>NONE</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	  <td>2024-04-12</td>
	  <td>4.3085</td>
	  <td>4.3143</td>
	  <td>4.3114</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>BBG00KFWPK79</td>
	  <td>USOSFR7</td>
	  <td>Curncy</td>
	  <td>USOSFR7 Curncy</td>
	  <td>USD Is  ANN VS SOFR 7Y</td>
	  <td>7</td>
	  <td>SWAP</td>
	  <td>ACT/360</td>
	  <td>NONE</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	  <td>2024-04-12</td>
	  <td>4.2025</td>
	  <td>4.2085</td>
	  <td>4.2055</td>
	</tr>
  </tbody>
</table>
</div>

# c. Display the calibrated SOFR discount curve dataframe

Follow section 1d (in the QuantLib Advanced notebook) to display the calibration details dataframe.

```python
# Display and plot SOFR yield curve
grid_dates = [sofr_yield_curve.referenceDate() + ql.Period(y, ql.Years) for y in list(range(0,30,1))]


sofr_yield_curve_simple_df = get_yield_curve_details_df(sofr_yield_curve)                  # using calibration grid
sofr_yield_curve_details_df = get_yield_curve_details_df(sofr_yield_curve, grid_dates)    # using external grid

display(sofr_yield_curve_simple_df)
display(sofr_yield_curve_details_df)
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
	  <th>Date</th>
	  <th>YearFrac</th>
	  <th>DiscountFactor</th>
	  <th>ZeroRate</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>2024-04-16</td>
	  <td>0.000</td>
	  <td>1.000</td>
	  <td>5.177</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>2025-04-16</td>
	  <td>1.014</td>
	  <td>0.950</td>
	  <td>5.177</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>2026-04-16</td>
	  <td>2.028</td>
	  <td>0.909</td>
	  <td>4.809</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>2027-04-16</td>
	  <td>3.042</td>
	  <td>0.873</td>
	  <td>4.560</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>2029-04-16</td>
	  <td>5.072</td>
	  <td>0.808</td>
	  <td>4.281</td>
	</tr>
	<tr>
	  <th>5</th>
	  <td>2031-04-16</td>
	  <td>7.100</td>
	  <td>0.748</td>
	  <td>4.172</td>
	</tr>
	<tr>
	  <th>6</th>
	  <td>2034-04-17</td>
	  <td>10.147</td>
	  <td>0.665</td>
	  <td>4.108</td>
	</tr>
	<tr>
	  <th>7</th>
	  <td>2044-04-18</td>
	  <td>20.297</td>
	  <td>0.447</td>
	  <td>4.044</td>
	</tr>
	<tr>
	  <th>8</th>
	  <td>2054-04-16</td>
	  <td>30.436</td>
	  <td>0.327</td>
	  <td>3.743</td>
	</tr>
  </tbody>
</table>
</div>

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
	  <th>Date</th>
	  <th>YearFrac</th>
	  <th>DiscountFactor</th>
	  <th>ZeroRate</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>2024-04-16</td>
	  <td>0.000</td>
	  <td>1.000</td>
	  <td>5.177</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>2025-04-16</td>
	  <td>1.014</td>
	  <td>0.950</td>
	  <td>5.177</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>2026-04-16</td>
	  <td>2.028</td>
	  <td>0.909</td>
	  <td>4.809</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>2027-04-16</td>
	  <td>3.042</td>
	  <td>0.873</td>
	  <td>4.560</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>2028-04-16</td>
	  <td>4.058</td>
	  <td>0.839</td>
	  <td>4.420</td>
	</tr>
	<tr>
	  <th>5</th>
	  <td>2029-04-16</td>
	  <td>5.072</td>
	  <td>0.808</td>
	  <td>4.281</td>
	</tr>
	<tr>
	  <th>6</th>
	  <td>2030-04-16</td>
	  <td>6.086</td>
	  <td>0.777</td>
	  <td>4.227</td>
	</tr>
	<tr>
	  <th>7</th>
	  <td>2031-04-16</td>
	  <td>7.100</td>
	  <td>0.748</td>
	  <td>4.172</td>
	</tr>
	<tr>
	  <th>8</th>
	  <td>2032-04-16</td>
	  <td>8.117</td>
	  <td>0.719</td>
	  <td>4.151</td>
	</tr>
	<tr>
	  <th>9</th>
	  <td>2033-04-16</td>
	  <td>9.131</td>
	  <td>0.691</td>
	  <td>4.129</td>
	</tr>
	<tr>
	  <th>10</th>
	  <td>2034-04-16</td>
	  <td>10.144</td>
	  <td>0.665</td>
	  <td>4.108</td>
	</tr>
	<tr>
	  <th>11</th>
	  <td>2035-04-16</td>
	  <td>11.158</td>
	  <td>0.639</td>
	  <td>4.101</td>
	</tr>
	<tr>
	  <th>12</th>
	  <td>2036-04-16</td>
	  <td>12.175</td>
	  <td>0.613</td>
	  <td>4.095</td>
	</tr>
	<tr>
	  <th>13</th>
	  <td>2037-04-16</td>
	  <td>13.189</td>
	  <td>0.589</td>
	  <td>4.088</td>
	</tr>
	<tr>
	  <th>14</th>
	  <td>2038-04-16</td>
	  <td>14.203</td>
	  <td>0.567</td>
	  <td>4.082</td>
	</tr>
	<tr>
	  <th>15</th>
	  <td>2039-04-16</td>
	  <td>15.217</td>
	  <td>0.544</td>
	  <td>4.076</td>
	</tr>
	<tr>
	  <th>16</th>
	  <td>2040-04-16</td>
	  <td>16.233</td>
	  <td>0.523</td>
	  <td>4.069</td>
	</tr>
	<tr>
	  <th>17</th>
	  <td>2041-04-16</td>
	  <td>17.247</td>
	  <td>0.503</td>
	  <td>4.063</td>
	</tr>
	<tr>
	  <th>18</th>
	  <td>2042-04-16</td>
	  <td>18.261</td>
	  <td>0.484</td>
	  <td>4.057</td>
	</tr>
	<tr>
	  <th>19</th>
	  <td>2043-04-16</td>
	  <td>19.275</td>
	  <td>0.465</td>
	  <td>4.050</td>
	</tr>
	<tr>
	  <th>20</th>
	  <td>2044-04-16</td>
	  <td>20.292</td>
	  <td>0.447</td>
	  <td>4.044</td>
	</tr>
	<tr>
	  <th>21</th>
	  <td>2045-04-16</td>
	  <td>21.306</td>
	  <td>0.432</td>
	  <td>4.014</td>
	</tr>
	<tr>
	  <th>22</th>
	  <td>2046-04-16</td>
	  <td>22.319</td>
	  <td>0.418</td>
	  <td>3.984</td>
	</tr>
	<tr>
	  <th>23</th>
	  <td>2047-04-16</td>
	  <td>23.333</td>
	  <td>0.405</td>
	  <td>3.954</td>
	</tr>
	<tr>
	  <th>24</th>
	  <td>2048-04-16</td>
	  <td>24.350</td>
	  <td>0.392</td>
	  <td>3.923</td>
	</tr>
	<tr>
	  <th>25</th>
	  <td>2049-04-16</td>
	  <td>25.364</td>
	  <td>0.380</td>
	  <td>3.893</td>
	</tr>
	<tr>
	  <th>26</th>
	  <td>2050-04-16</td>
	  <td>26.378</td>
	  <td>0.368</td>
	  <td>3.863</td>
	</tr>
	<tr>
	  <th>27</th>
	  <td>2051-04-16</td>
	  <td>27.392</td>
	  <td>0.357</td>
	  <td>3.833</td>
	</tr>
	<tr>
	  <th>28</th>
	  <td>2052-04-16</td>
	  <td>28.408</td>
	  <td>0.346</td>
	  <td>3.803</td>
	</tr>
	<tr>
	  <th>29</th>
	  <td>2053-04-16</td>
	  <td>29.422</td>
	  <td>0.336</td>
	  <td>3.773</td>
	</tr>
  </tbody>
</table>
</div>

# d. Plot the calibrated US SOFR Zero Interest Rates and Discount Factor curves

Plot the SOFR zero rates and discount factor curves by maturity. Follow section 1c in the QuantLib Advanced notebook.

```python
# Plot the SOFR yield curve
plt = sofr_yield_curve_details_df.plot(x='Date', y='ZeroRate', grid=True, style='*-', title=f'SOFR Curve: Zero Rates as of {calc_date.to_date()}', figsize=(12,4))
plt.set_ylabel('Zero Rate (%)')
plt.set_xlabel('Date')

plt = sofr_yield_curve_details_df.plot(x='Date', y='DiscountFactor', grid=True, style='*-', title=f'SOFR Curve: Discount Factors as of {calc_date.to_date()}', figsize=(12,4))
plt.set_ylabel('Discount Factors')
plt.set_xlabel('Date')
```

    Text(0.5, 0, 'Date')




    

![png](output_221_1.png)

![png](output_221_2.png)

-----------------------------------------------------------
# Problem 4: CDS Hazard Rate calibration and valuation
## Follow Section "2. CDS Hazard Rate calibration + Pricing" in the QuantLib Advanced notebook !!!

## a. Load and explore the CDS market data (IBM credit issuer)

Load the `cds_market_data_eod` Excel file into a dataframe. 

Plot the historical time series of CDS Par Spreads for the available tenors.

```python
# cds_market_quotes
cds_market_quotes = pd.read_excel('./data/cds_market_data_eod.xlsx')
print(cds_market_quotes.head())

# Create par spreads (bps) dataframe
par_spread_col_names = [f'par_spread_{n}y' for n in [1,2,3,5,7,10]]
cds_par_spreads_df = cds_market_quotes.set_index('date')[par_spread_col_names]

plt = cds_par_spreads_df.plot(grid=True, style='-', title='IBM CDS Par Spreads ', figsize=(12,8))
plt.set_ylabel('IBM CDS Par Spreads')
plt.set_xlabel('Date')

```

            date ticker                short_name    tier      sector  region   
    0 2024-01-02    IBM  Intl Business Machs Corp  SNRFOR  Technology  N.Amer  \
    1 2024-01-03    IBM  Intl Business Machs Corp  SNRFOR  Technology  N.Amer   
    2 2024-01-04    IBM  Intl Business Machs Corp  SNRFOR  Technology  N.Amer   
    3 2024-01-05    IBM  Intl Business Machs Corp  SNRFOR  Technology  N.Amer   
    4 2024-01-08    IBM  Intl Business Machs Corp  SNRFOR  Technology  N.Amer   
    
      currency doc_clause  running_coupon  cds_assumed_recovery  par_spread_1y   
    0      USD       XR14            0.01                   0.4        13.6831  \
    1      USD       XR14            0.01                   0.4        14.2256   
    2      USD       XR14            0.01                   0.4        13.8318   
    3      USD       XR14            0.01                   0.4        13.6181   
    4      USD       XR14            0.01                   0.4        13.4433   
    
       par_spread_2y  par_spread_3y  par_spread_5y  par_spread_7y  par_spread_10y  
    0        18.8194        28.3917        44.7053        62.1494         69.1972  
    1        19.6610        29.4493        46.4866        63.6475         71.4311  
    2        19.1828        28.8454        45.4735        62.6543         70.9180  
    3        18.7703        28.3417        44.7575        61.9778         70.2746  
    4        18.3692        27.7599        43.8548        60.8378         68.8914  





    Text(0.5, 0, 'Date')




    

![png](output_224_2.png)

## b. Calibrate the IBM hazard rate curve as of 2024-04-15

Follow section 2a in the QuantLib Advanced notebook. Use the calibrated SOFR discount curve from Problem 3b.

```python
def calibrate_cds_hazard_rate_curve(calc_date, sofr_yield_curve_handle, cds_par_spreads_bps, cds_recovery_rate = 0.4):
    '''Calibrate hazard rate curve from CDS Par Spreads'''
    CDS_settle_days = 2

    CDS_day_count = ql.Actual360()

    # CDS standard tenors: 1Y, 2Y, 3Y, 5Y 7Y and 10Y
    CDS_tenors = [ql.Period(y, ql.Years) for y in [1, 2, 3, 5, 7, 10]]
              

    CDS_helpers = [ql.SpreadCdsHelper((cds_par_spread / 10000.0), CDS_tenor, CDS_settle_days, ql.TARGET(),
                                  ql.Quarterly, ql.Following, ql.DateGeneration.TwentiethIMM, CDS_day_count, cds_recovery_rate, sofr_yield_curve_handle)
               
    for (cds_par_spread, CDS_tenor) in zip(cds_par_spreads_bps, CDS_tenors)]

    # bootstrap hazard_rate_curve
    hazard_rate_curve = ql.PiecewiseFlatHazardRate(calc_date, CDS_helpers, CDS_day_count)
    hazard_rate_curve.enableExtrapolation()

    return(hazard_rate_curve)


def get_hazard_rates_df(hazard_rate_curve):
    '''Return dataframe with calibrated hazard rates and survival probabilities'''
    
    CDS_day_count = ql.Actual360()
    
    hazard_list = [(hr[0].to_date(), 
                CDS_day_count.yearFraction(calc_date, hr[0]),
                hr[1] * 1e4,
                hazard_rate_curve.survivalProbability(hr[0])) for hr in hazard_rate_curve.nodes()]

    grid_dates, year_frac, hazard_rates, surv_probs = zip(*hazard_list)

    hazard_rates_df = pd.DataFrame(data={'Date': grid_dates, 
                                     'YearFrac': year_frac,
                                     'HazardRateBps': hazard_rates,                                     
                                     'SurvivalProb': surv_probs})
    return(hazard_rates_df)

```

```python
# CDS spreads for IBM as of calc_date = 2024-04-15
cds_par_spreads = list(cds_par_spreads_df.loc['2024-04-15'])
print(cds_par_spreads)

# cds_recovery_rate
cds_recovery_rate = 0.4

# hazard_rate_curve
hazard_rate_curve = calibrate_cds_hazard_rate_curve(calc_date, sofr_yield_curve_handle, cds_par_spreads, cds_recovery_rate)

# hazard_rates_df
hazard_rates_df = get_hazard_rates_df(hazard_rate_curve)

print(hazard_rates_df)

```

    [11.7219, 16.1196, 23.6826, 37.2246, 52.551, 63.7804]
             Date   YearFrac  HazardRateBps  SurvivalProb
    0  2024-04-12   0.000000      19.372676      1.000000
    1  2025-06-20   1.205556      19.372676      0.997667
    2  2026-06-22   2.225000      35.805389      0.994032
    3  2027-06-21   3.236111      68.966639      0.987125
    4  2029-06-20   5.263889     102.209360      0.966876
    5  2031-06-20   7.291667     166.229764      0.934828
    6  2034-06-20  10.336111     164.376354      0.889198

## c. Plot the calibrated Hazard Rates and Survival Probability curves

Follow section 2b in the QuantLib Advanced notebook. Use the calibrated SOFR discount curve from Problem 3b.

```python
plt = hazard_rates_df.plot(x='Date', y='HazardRateBps', grid=True, style='*-', title=f'IBM Hazard Rates Curve as of {calc_date.to_date()}', figsize=(12,4))
plt.set_ylabel('Hazard Rate (bps)')
plt.set_xlabel('Date')

plt = hazard_rates_df.plot(x='Date', y='SurvivalProb', grid=True, style='*-', title=f'IBM Survival Probability Curve as of {calc_date.to_date()}', figsize=(12,4))
plt.set_ylabel('Survival Probability')
plt.set_xlabel('Date')

```

    Text(0.5, 0, 'Date')




    

![png](output_229_1.png)

![png](output_229_2.png)

## d. Compute the fair/par spread and PV of a CDS 

Follow section 2c in the QuantLib Advanced notebook. Construct a CDS object with 100 bps coupon and 2029-06-20 maturity. Compute the fair/par spread and PV.

```python
# CDS specs
side = ql.Protection.Seller

face_notional = 100

contractual_spread = 100 / 10000

cds_start_date = calc_date
cds_maturity_date = ql.Date(20, 6, 2029)

# Create CDS schedule
cds_schedule = ql.MakeSchedule(cds_start_date, cds_maturity_date, ql.Period('3M'),
                            ql.Quarterly, ql.TARGET(), ql.Following, ql.Unadjusted, ql.DateGeneration.TwentiethIMM)

# Create CDS object
cds_obj = ql.CreditDefaultSwap(side, face_notional, contractual_spread, cds_schedule, ql.Following, ql.Actual360())

# Create CDS pricing engine
default_prob_curve_handle = ql.DefaultProbabilityTermStructureHandle(hazard_rate_curve)
cds_engine = ql.MidPointCdsEngine(default_prob_curve_handle, cds_recovery_rate, sofr_yield_curve_handle)
cds_obj.setPricingEngine(cds_engine)


# Print CDS valuation results
print('CDS protection start date:', cds_obj.protectionStartDate())
print('CDS fair/par spread:', round(cds_obj.fairSpread()*10000, 3))
print('CDS PV:', round(cds_obj.NPV(), 4))    
print('CDS Premium Leg PV:', round(cds_obj.couponLegNPV(), 4))
print('CDS Default Leg PV', round(cds_obj.defaultLegNPV(), 4))
print('Survival Prob. to Maturity:', round(hazard_rate_curve.survivalProbability(cds_maturity_date), 4))

```

    CDS protection start date: April 12th, 2024
    CDS fair/par spread: 37.172
    CDS PV: 2.9014
    CDS Premium Leg PV: 4.6179
    CDS Default Leg PV -1.7166
    Survival Prob. to Maturity: 0.9669

<hr><font color="green"><h1>from file: 6FINM 35700_CreditMarkets_Spring2024_Solution_4</h1></font>

# Homework 4

## FINM 35700 - Spring 2024

### UChicago Financial Mathematics

### Due Date: 2024-04-30

* Alex Popovici
* alex.popovici@uchicago.edu

This homework relies on multiple files (from previous weeks):

- the bond symbology file `bond_symbology`, 
- the "on-the-run" treasuries data file `govt_on_the_run`,
- the bond market data file `bond_market_prices_eod`,
- the CDS data file `cds_market_data_eod`. 
- the SOFR Is Swap symbology file `sofr_swap_symbology`,
- the SOFR Is Swap market data file `sofr_swaps_market_data_eod`.

```python
# import tools from previous homeworks
from credit_market_tools import *

# Use static calculation/valuation date of 2024-04-19, matching data available in the market prices EOD file
calc_date = ql.Date(19, 4, 2024)
ql.Settings.instance().evaluationDate = calc_date

# Calculation/valuation date as pd datetime
as_of_date = pd.to_datetime('2024-04-19')
```

-----------------------------------------------------------
# Problem 1: Pricing risky bonds in the hazard rate model
## This is building upon
- Homework 2 "Problem 2: US Treasury yield curve calibration (On-The-Runs)",
- Homework 3 "Problem 3: US SOFR swap curve calibration" and
- Homework 3 "Problem 4: CDS Hazard Rate calibration".

## a. Prepare the market data
### Load the symbology + market data dataframes. Calibrate the following curves as of 2024-04-19:
- the "on-the-run" US Treasury curve,
- the US SOFR curve and 
- the IBM CDS hazard rate curve (on the top of SOFR discount curve).

```python
# US Treasury "On-The-Run" yield curve calibration
# Follow Homework 2 Problem 2 and populate the US Treasury On-The-Run symbology + market data frame

# Load bond_symbology.xlsx
bond_symbology  = pd.read_excel('./data/bond_symbology.xlsx')
bond_symbology  = bond_symbology[bond_symbology['cpn_type'] == 'FIXED']

# Add term and TTM columns
bond_symbology['term'] = (bond_symbology['maturity'] - bond_symbology['start_date']).dt.days / 365.25
bond_symbology['TTM'] = (bond_symbology['maturity'] - as_of_date).dt.days / 365.25

# Load bond_market_prices_eod
bond_market_prices_eod = pd.read_excel('./data/bond_market_prices_eod.xlsx')

# Add mid prices and yields
bond_market_prices_eod['midPrice'] = 0.5*(bond_market_prices_eod['bidPrice'] + bond_market_prices_eod['askPrice'])
bond_market_prices_eod['midYield'] = 0.5*(bond_market_prices_eod['bidYield'] + bond_market_prices_eod['askYield'])

# Load govt_on_the_run, as of 2024-04-19
govt_on_the_run = pd.read_excel('./data/govt_on_the_run.xlsx')

# Keep OTR treasuries only
govt_on_the_run_simple = govt_on_the_run[~govt_on_the_run['ticker'].str.contains('B|C')]

# Create symbology for on-the-run treasuries only
govt_symbology_otr = bond_symbology[bond_symbology['isin'].isin(govt_on_the_run_simple['isin'])].copy()
govt_symbology_otr = govt_symbology_otr.sort_values(by='maturity')

# Merge market data as of 2024-04-19 into treasury OTR symbology
govt_combined_otr = govt_symbology_otr.merge(bond_market_prices_eod,  on=['class','ticker','figi','isin'])
display(govt_combined_otr.head())

# tsy_yield_curve calibration
tsy_yield_curve = calibrate_yield_curve_from_frame(calc_date, govt_combined_otr, 'midPrice')
tsy_yield_curve_handle = ql.YieldTermStructureHandle(tsy_yield_curve)



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
	  <th>ticker</th>
	  <th>class</th>
	  <th>figi</th>
	  <th>isin</th>
	  <th>und_bench_isin</th>
	  <th>security</th>
	  <th>name</th>
	  <th>type</th>
	  <th>coupon</th>
	  <th>cpn_type</th>
	  <th>…</th>
	  <th>term</th>
	  <th>TTM</th>
	  <th>date</th>
	  <th>bidPrice</th>
	  <th>askPrice</th>
	  <th>accrued</th>
	  <th>bidYield</th>
	  <th>askYield</th>
	  <th>midPrice</th>
	  <th>midYield</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>T</td>
	  <td>Govt</td>
	  <td>BBG01M44ZLG5</td>
	  <td>US91282CKH33</td>
	  <td>US91282CKH33</td>
	  <td>T 4 1/2 03/31/26</td>
	  <td>US TREASURY N/B</td>
	  <td>US GOVERNMENT</td>
	  <td>4.500</td>
	  <td>FIXED</td>
	  <td>…</td>
	  <td>1.995893</td>
	  <td>1.946612</td>
	  <td>2024-04-19</td>
	  <td>99.1055</td>
	  <td>99.1094</td>
	  <td>0.26955</td>
	  <td>4.988</td>
	  <td>4.986</td>
	  <td>99.10745</td>
	  <td>4.9870</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>T</td>
	  <td>Govt</td>
	  <td>BBG01M9L5M64</td>
	  <td>US91282CKJ98</td>
	  <td>US91282CKJ98</td>
	  <td>T 4 1/2 04/15/27</td>
	  <td>US TREASURY N/B</td>
	  <td>US GOVERNMENT</td>
	  <td>4.500</td>
	  <td>FIXED</td>
	  <td>…</td>
	  <td>2.997947</td>
	  <td>2.986995</td>
	  <td>2024-04-19</td>
	  <td>99.1094</td>
	  <td>99.1172</td>
	  <td>0.08590</td>
	  <td>4.824</td>
	  <td>4.821</td>
	  <td>99.11330</td>
	  <td>4.8225</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>T</td>
	  <td>Govt</td>
	  <td>BBG01M44ZQJ1</td>
	  <td>US91282CKG59</td>
	  <td>US91282CKG59</td>
	  <td>T 4 1/8 03/31/29</td>
	  <td>US TREASURY N/B</td>
	  <td>US GOVERNMENT</td>
	  <td>4.125</td>
	  <td>FIXED</td>
	  <td>…</td>
	  <td>4.996578</td>
	  <td>4.947296</td>
	  <td>2024-04-19</td>
	  <td>97.6094</td>
	  <td>97.6172</td>
	  <td>0.24800</td>
	  <td>4.672</td>
	  <td>4.670</td>
	  <td>97.61330</td>
	  <td>4.6710</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>T</td>
	  <td>Govt</td>
	  <td>BBG01M44ZS07</td>
	  <td>US91282CKF76</td>
	  <td>US91282CKF76</td>
	  <td>T 4 1/8 03/31/31</td>
	  <td>US TREASURY N/B</td>
	  <td>US GOVERNMENT</td>
	  <td>4.125</td>
	  <td>FIXED</td>
	  <td>…</td>
	  <td>6.995209</td>
	  <td>6.945927</td>
	  <td>2024-04-19</td>
	  <td>96.8906</td>
	  <td>96.9063</td>
	  <td>0.24805</td>
	  <td>4.654</td>
	  <td>4.651</td>
	  <td>96.89845</td>
	  <td>4.6525</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>T</td>
	  <td>Govt</td>
	  <td>BBG01L8YJFB3</td>
	  <td>US91282CJZ59</td>
	  <td>US91282CJZ59</td>
	  <td>T 4 02/15/34</td>
	  <td>US TREASURY N/B</td>
	  <td>US GOVERNMENT</td>
	  <td>4.000</td>
	  <td>FIXED</td>
	  <td>…</td>
	  <td>10.001369</td>
	  <td>9.826146</td>
	  <td>2024-04-19</td>
	  <td>95.1250</td>
	  <td>95.1406</td>
	  <td>0.73630</td>
	  <td>4.623</td>
	  <td>4.621</td>
	  <td>95.13280</td>
	  <td>4.6220</td>
	</tr>
  </tbody>
</table>
<p>5 rows × 33 columns</p>
</div>

```python
# SOFR risk-free yield curve calibration
# Follow Homework 3 Problem 3 and populate the SOFR symbology + market data frame

# sofr_symbology
sofr_symbology = pd.read_excel('./data/sofr_swaps_symbology.xlsx')
sofr_symbology.set_index('figi',inplace=True)
display(sofr_symbology)

# sofr_market_quotes
sofr_market_quotes = pd.read_excel('./data/sofr_swaps_market_data_eod.xlsx')

# sofr_combined
sofr_combined = sofr_symbology.merge(sofr_market_quotes[sofr_market_quotes['date'] == as_of_date], how='left', on=['figi'])
display(sofr_combined.head())

# sofr_yield_curve calibration
sofr_yield_curve = calibrate_sofr_curve_from_frame(calc_date, sofr_combined, 'midRate')
sofr_yield_curve_handle = ql.YieldTermStructureHandle(sofr_yield_curve)

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
	  <th>ticker</th>
	  <th>class</th>
	  <th>bbg</th>
	  <th>name</th>
	  <th>tenor</th>
	  <th>type</th>
	  <th>dcc</th>
	  <th>exchange</th>
	  <th>country</th>
	  <th>currency</th>
	  <th>status</th>
	</tr>
	<tr>
	  <th>figi</th>
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
	  <th>BBG00KFWPJJ9</th>
	  <td>USOSFR1</td>
	  <td>Curncy</td>
	  <td>USOSFR1 Curncy</td>
	  <td>USD Is  ANN VS SOFR 1Y</td>
	  <td>1</td>
	  <td>SWAP</td>
	  <td>ACT/360</td>
	  <td>NONE</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	</tr>
	<tr>
	  <th>BBG00KFWPJX3</th>
	  <td>USOSFR2</td>
	  <td>Curncy</td>
	  <td>USOSFR2 Curncy</td>
	  <td>USD Is  ANN VS SOFR 2Y</td>
	  <td>2</td>
	  <td>SWAP</td>
	  <td>ACT/360</td>
	  <td>NONE</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	</tr>
	<tr>
	  <th>BBG00KFWPK15</th>
	  <td>USOSFR3</td>
	  <td>Curncy</td>
	  <td>USOSFR3 Curncy</td>
	  <td>USD Is  ANN VS SOFR 3Y</td>
	  <td>3</td>
	  <td>SWAP</td>
	  <td>ACT/360</td>
	  <td>NONE</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	</tr>
	<tr>
	  <th>BBG00KFWPK51</th>
	  <td>USOSFR5</td>
	  <td>Curncy</td>
	  <td>USOSFR5 Curncy</td>
	  <td>USD Is  ANN VS SOFR 5Y</td>
	  <td>5</td>
	  <td>SWAP</td>
	  <td>ACT/360</td>
	  <td>NONE</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	</tr>
	<tr>
	  <th>BBG00KFWPK79</th>
	  <td>USOSFR7</td>
	  <td>Curncy</td>
	  <td>USOSFR7 Curncy</td>
	  <td>USD Is  ANN VS SOFR 7Y</td>
	  <td>7</td>
	  <td>SWAP</td>
	  <td>ACT/360</td>
	  <td>NONE</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	</tr>
	<tr>
	  <th>BBG00KFWPKB4</th>
	  <td>USOSFR10</td>
	  <td>Curncy</td>
	  <td>USOSFR10 Curncy</td>
	  <td>USD Is  ANN VS SOFR 10Y</td>
	  <td>10</td>
	  <td>SWAP</td>
	  <td>ACT/360</td>
	  <td>NONE</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	</tr>
	<tr>
	  <th>BBG00KFWPKF0</th>
	  <td>USOSFR20</td>
	  <td>Curncy</td>
	  <td>USOSFR20 Curncy</td>
	  <td>USD Is  ANN VS SOFR 20Y</td>
	  <td>20</td>
	  <td>SWAP</td>
	  <td>ACT/360</td>
	  <td>NONE</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	</tr>
	<tr>
	  <th>BBG00KFWPKH8</th>
	  <td>USOSFR30</td>
	  <td>Curncy</td>
	  <td>USOSFR30 Curncy</td>
	  <td>USD Is  ANN VS SOFR 30Y</td>
	  <td>30</td>
	  <td>SWAP</td>
	  <td>ACT/360</td>
	  <td>NONE</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	</tr>
  </tbody>
</table>
</div>

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
	  <th>figi</th>
	  <th>ticker</th>
	  <th>class</th>
	  <th>bbg</th>
	  <th>name</th>
	  <th>tenor</th>
	  <th>type</th>
	  <th>dcc</th>
	  <th>exchange</th>
	  <th>country</th>
	  <th>currency</th>
	  <th>status</th>
	  <th>date</th>
	  <th>bidRate</th>
	  <th>askRate</th>
	  <th>midRate</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>BBG00KFWPJJ9</td>
	  <td>USOSFR1</td>
	  <td>Curncy</td>
	  <td>USOSFR1 Curncy</td>
	  <td>USD Is  ANN VS SOFR 1Y</td>
	  <td>1</td>
	  <td>SWAP</td>
	  <td>ACT/360</td>
	  <td>NONE</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	  <td>2024-04-19</td>
	  <td>5.2149</td>
	  <td>5.2202</td>
	  <td>5.21755</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>BBG00KFWPJX3</td>
	  <td>USOSFR2</td>
	  <td>Curncy</td>
	  <td>USOSFR2 Curncy</td>
	  <td>USD Is  ANN VS SOFR 2Y</td>
	  <td>2</td>
	  <td>SWAP</td>
	  <td>ACT/360</td>
	  <td>NONE</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	  <td>2024-04-19</td>
	  <td>4.8913</td>
	  <td>4.8964</td>
	  <td>4.89385</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>BBG00KFWPK15</td>
	  <td>USOSFR3</td>
	  <td>Curncy</td>
	  <td>USOSFR3 Curncy</td>
	  <td>USD Is  ANN VS SOFR 3Y</td>
	  <td>3</td>
	  <td>SWAP</td>
	  <td>ACT/360</td>
	  <td>NONE</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	  <td>2024-04-19</td>
	  <td>4.6687</td>
	  <td>4.6761</td>
	  <td>4.67240</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>BBG00KFWPK51</td>
	  <td>USOSFR5</td>
	  <td>Curncy</td>
	  <td>USOSFR5 Curncy</td>
	  <td>USD Is  ANN VS SOFR 5Y</td>
	  <td>5</td>
	  <td>SWAP</td>
	  <td>ACT/360</td>
	  <td>NONE</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	  <td>2024-04-19</td>
	  <td>4.4148</td>
	  <td>4.4184</td>
	  <td>4.41660</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>BBG00KFWPK79</td>
	  <td>USOSFR7</td>
	  <td>Curncy</td>
	  <td>USOSFR7 Curncy</td>
	  <td>USD Is  ANN VS SOFR 7Y</td>
	  <td>7</td>
	  <td>SWAP</td>
	  <td>ACT/360</td>
	  <td>NONE</td>
	  <td>US</td>
	  <td>USD</td>
	  <td>ACTV</td>
	  <td>2024-04-19</td>
	  <td>4.3090</td>
	  <td>4.3122</td>
	  <td>4.31060</td>
	</tr>
  </tbody>
</table>
</div>

```python
# Credit curve calibration using IBM CDS par spreads 
# Follow Homework 3 Problem 4 and create the IBM hazard rate curve

# cds_market_quotes
cds_market_quotes = pd.read_excel('./data/cds_market_data_eod.xlsx')

# Create par spreads (bps) dataframe
par_spread_col_names = [f'par_spread_{n}y' for n in [1,2,3,5,7,10]]
cds_par_spreads_df = cds_market_quotes.set_index('date')[par_spread_col_names]

cds_par_spreads = list(cds_par_spreads_df.loc[as_of_date])
print(cds_par_spreads)

# cds_recovery_rate
cds_recovery_rate = 0.4

# hazard_rate_curve
hazard_rate_curve = calibrate_cds_hazard_rate_curve(calc_date, sofr_yield_curve_handle, cds_par_spreads, cds_recovery_rate)

# hazard_rate_curve calibrated to IBM CDS par spreads
default_prob_curve_handle = ql.DefaultProbabilityTermStructureHandle(hazard_rate_curve)
```

    [12.0769, 17.3082, 24.866, 39.6501, 53.9093, 65.3221]

## b. Create the IBM risky bond objects
### Identify the following 3 IBM fixed rate bonds in the symbology table and create the corresponding fixed rate bonds (3 bond objects).

- security = 'IBM 3.3 05/15/26' / figi = 'BBG00P3BLH05'
- security = 'IBM 3.3 01/27/27' / figi = 'BBG00FVNGFP3'
- security = 'IBM 3 1/2 05/15/29' / figi = 'BBG00P3BLH14'

Use the create_bond_from_symbology() function (discussed in from Homework 2, Problem 1b) to create the bonds objects.

List the bond cashflows using the get_bond_cashflows() function.

```python
# corp_symbology_ibm
corp_symbology_ibm = bond_symbology[(bond_symbology.ticker == 'IBM') & (bond_symbology.cpn_type == 'FIXED')]

# corp_combined_ibm
corp_combined_ibm = corp_symbology_ibm.merge(bond_market_prices_eod, how='inner', on=['class', 'ticker', 'isin', 'figi'])
corp_combined_ibm.set_index('figi',inplace=True)

# Keep selected IBM bonds only
ibm_selected_figis = ['BBG00P3BLH05', 'BBG00FVNGFP3', 'BBG00P3BLH14']
ibm_df = corp_combined_ibm.loc[ibm_selected_figis]

display(ibm_df.T)
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
	  <th>figi</th>
	  <th>BBG00P3BLH05</th>
	  <th>BBG00FVNGFP3</th>
	  <th>BBG00P3BLH14</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>ticker</th>
	  <td>IBM</td>
	  <td>IBM</td>
	  <td>IBM</td>
	</tr>
	<tr>
	  <th>class</th>
	  <td>Corp</td>
	  <td>Corp</td>
	  <td>Corp</td>
	</tr>
	<tr>
	  <th>isin</th>
	  <td>US459200JZ55</td>
	  <td>US459200JR30</td>
	  <td>US459200KA85</td>
	</tr>
	<tr>
	  <th>und_bench_isin</th>
	  <td>US91282CKH33</td>
	  <td>US91282CKJ98</td>
	  <td>US91282CKG59</td>
	</tr>
	<tr>
	  <th>security</th>
	  <td>IBM 3.3 05/15/26</td>
	  <td>IBM 3.3 01/27/27</td>
	  <td>IBM 3 1/2 05/15/29</td>
	</tr>
	<tr>
	  <th>name</th>
	  <td>IBM CORP</td>
	  <td>IBM CORP</td>
	  <td>IBM CORP</td>
	</tr>
	<tr>
	  <th>type</th>
	  <td>GLOBAL</td>
	  <td>GLOBAL</td>
	  <td>GLOBAL</td>
	</tr>
	<tr>
	  <th>coupon</th>
	  <td>3.3</td>
	  <td>3.3</td>
	  <td>3.5</td>
	</tr>
	<tr>
	  <th>cpn_type</th>
	  <td>FIXED</td>
	  <td>FIXED</td>
	  <td>FIXED</td>
	</tr>
	<tr>
	  <th>dcc</th>
	  <td>30/360</td>
	  <td>30/360</td>
	  <td>30/360</td>
	</tr>
	<tr>
	  <th>cpn_freq</th>
	  <td>2</td>
	  <td>2</td>
	  <td>2</td>
	</tr>
	<tr>
	  <th>days_settle</th>
	  <td>2</td>
	  <td>2</td>
	  <td>2</td>
	</tr>
	<tr>
	  <th>start_date</th>
	  <td>2019-05-15 00:00:00</td>
	  <td>2017-01-27 00:00:00</td>
	  <td>2019-05-15 00:00:00</td>
	</tr>
	<tr>
	  <th>cpn_first</th>
	  <td>2019-11-15 00:00:00</td>
	  <td>2017-07-27 00:00:00</td>
	  <td>2019-11-15 00:00:00</td>
	</tr>
	<tr>
	  <th>acc_first</th>
	  <td>2019-05-15 00:00:00</td>
	  <td>2017-01-27 00:00:00</td>
	  <td>2019-05-15 00:00:00</td>
	</tr>
	<tr>
	  <th>maturity</th>
	  <td>2026-05-15 00:00:00</td>
	  <td>2027-01-27 00:00:00</td>
	  <td>2029-05-15 00:00:00</td>
	</tr>
	<tr>
	  <th>mty_typ</th>
	  <td>AT MATURITY</td>
	  <td>AT MATURITY</td>
	  <td>AT MATURITY</td>
	</tr>
	<tr>
	  <th>rank</th>
	  <td>Sr Unsecured</td>
	  <td>Sr Unsecured</td>
	  <td>Sr Unsecured</td>
	</tr>
	<tr>
	  <th>amt_out</th>
	  <td>3000.0</td>
	  <td>500.0</td>
	  <td>3250.0</td>
	</tr>
	<tr>
	  <th>country</th>
	  <td>US</td>
	  <td>US</td>
	  <td>US</td>
	</tr>
	<tr>
	  <th>currency</th>
	  <td>USD</td>
	  <td>USD</td>
	  <td>USD</td>
	</tr>
	<tr>
	  <th>status</th>
	  <td>ACTV</td>
	  <td>ACTV</td>
	  <td>ACTV</td>
	</tr>
	<tr>
	  <th>term</th>
	  <td>7.000684</td>
	  <td>9.998631</td>
	  <td>10.001369</td>
	</tr>
	<tr>
	  <th>TTM</th>
	  <td>2.069815</td>
	  <td>2.773443</td>
	  <td>5.0705</td>
	</tr>
	<tr>
	  <th>date</th>
	  <td>2024-04-19 00:00:00</td>
	  <td>2024-04-19 00:00:00</td>
	  <td>2024-04-19 00:00:00</td>
	</tr>
	<tr>
	  <th>bidPrice</th>
	  <td>95.946</td>
	  <td>95.042</td>
	  <td>91.825</td>
	</tr>
	<tr>
	  <th>askPrice</th>
	  <td>96.13</td>
	  <td>95.28</td>
	  <td>92.108</td>
	</tr>
	<tr>
	  <th>accrued</th>
	  <td>1.448</td>
	  <td>0.788</td>
	  <td>1.5365</td>
	</tr>
	<tr>
	  <th>bidYield</th>
	  <td>5.404</td>
	  <td>5.25</td>
	  <td>5.365</td>
	</tr>
	<tr>
	  <th>askYield</th>
	  <td>5.306</td>
	  <td>5.154</td>
	  <td>5.298</td>
	</tr>
	<tr>
	  <th>midPrice</th>
	  <td>96.038</td>
	  <td>95.161</td>
	  <td>91.9665</td>
	</tr>
	<tr>
	  <th>midYield</th>
	  <td>5.355</td>
	  <td>5.202</td>
	  <td>5.3315</td>
	</tr>
  </tbody>
</table>
</div>

```python
# Create ibm_bond_objects
ibm_bond_objects = [ create_bond_from_symbology(df_row.to_dict()) for index, df_row in ibm_df.iterrows()]

# List the bond cashflows
for i in range(0, 3):
    print('Bond cashflows for', ibm_df.iloc[i]['security'])
    display(get_bond_cashflows(ibm_bond_objects[i], calc_date)) 

```

    Bond cashflows for IBM 3.3 05/15/26

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
	  <th>CashFlowDate</th>
	  <th>CashFlowYearFrac</th>
	  <th>CashFlowAmount</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>9</th>
	  <td>May 15th, 2024</td>
	  <td>0.072222</td>
	  <td>1.65</td>
	</tr>
	<tr>
	  <th>10</th>
	  <td>November 15th, 2024</td>
	  <td>0.572222</td>
	  <td>1.65</td>
	</tr>
	<tr>
	  <th>11</th>
	  <td>May 15th, 2025</td>
	  <td>1.072222</td>
	  <td>1.65</td>
	</tr>
	<tr>
	  <th>12</th>
	  <td>November 15th, 2025</td>
	  <td>1.572222</td>
	  <td>1.65</td>
	</tr>
	<tr>
	  <th>13</th>
	  <td>May 15th, 2026</td>
	  <td>2.072222</td>
	  <td>1.65</td>
	</tr>
	<tr>
	  <th>14</th>
	  <td>May 15th, 2026</td>
	  <td>2.072222</td>
	  <td>100.00</td>
	</tr>
  </tbody>
</table>
</div>

    Bond cashflows for IBM 3.3 01/27/27

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
	  <th>CashFlowDate</th>
	  <th>CashFlowYearFrac</th>
	  <th>CashFlowAmount</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>14</th>
	  <td>July 27th, 2024</td>
	  <td>0.272222</td>
	  <td>1.65</td>
	</tr>
	<tr>
	  <th>15</th>
	  <td>January 27th, 2025</td>
	  <td>0.772222</td>
	  <td>1.65</td>
	</tr>
	<tr>
	  <th>16</th>
	  <td>July 27th, 2025</td>
	  <td>1.272222</td>
	  <td>1.65</td>
	</tr>
	<tr>
	  <th>17</th>
	  <td>January 27th, 2026</td>
	  <td>1.772222</td>
	  <td>1.65</td>
	</tr>
	<tr>
	  <th>18</th>
	  <td>July 27th, 2026</td>
	  <td>2.272222</td>
	  <td>1.65</td>
	</tr>
	<tr>
	  <th>19</th>
	  <td>January 27th, 2027</td>
	  <td>2.772222</td>
	  <td>1.65</td>
	</tr>
	<tr>
	  <th>20</th>
	  <td>January 27th, 2027</td>
	  <td>2.772222</td>
	  <td>100.00</td>
	</tr>
  </tbody>
</table>
</div>

    Bond cashflows for IBM 3 1/2 05/15/29

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
	  <th>CashFlowDate</th>
	  <th>CashFlowYearFrac</th>
	  <th>CashFlowAmount</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>9</th>
	  <td>May 15th, 2024</td>
	  <td>0.072222</td>
	  <td>1.75</td>
	</tr>
	<tr>
	  <th>10</th>
	  <td>November 15th, 2024</td>
	  <td>0.572222</td>
	  <td>1.75</td>
	</tr>
	<tr>
	  <th>11</th>
	  <td>May 15th, 2025</td>
	  <td>1.072222</td>
	  <td>1.75</td>
	</tr>
	<tr>
	  <th>12</th>
	  <td>November 15th, 2025</td>
	  <td>1.572222</td>
	  <td>1.75</td>
	</tr>
	<tr>
	  <th>13</th>
	  <td>May 15th, 2026</td>
	  <td>2.072222</td>
	  <td>1.75</td>
	</tr>
	<tr>
	  <th>14</th>
	  <td>November 15th, 2026</td>
	  <td>2.572222</td>
	  <td>1.75</td>
	</tr>
	<tr>
	  <th>15</th>
	  <td>May 15th, 2027</td>
	  <td>3.072222</td>
	  <td>1.75</td>
	</tr>
	<tr>
	  <th>16</th>
	  <td>November 15th, 2027</td>
	  <td>3.572222</td>
	  <td>1.75</td>
	</tr>
	<tr>
	  <th>17</th>
	  <td>May 15th, 2028</td>
	  <td>4.072222</td>
	  <td>1.75</td>
	</tr>
	<tr>
	  <th>18</th>
	  <td>November 15th, 2028</td>
	  <td>4.572222</td>
	  <td>1.75</td>
	</tr>
	<tr>
	  <th>19</th>
	  <td>May 15th, 2029</td>
	  <td>5.072222</td>
	  <td>1.75</td>
	</tr>
	<tr>
	  <th>20</th>
	  <td>May 15th, 2029</td>
	  <td>5.072222</td>
	  <td>100.00</td>
	</tr>
  </tbody>
</table>
</div>

## c. Compute CDS-implied (intrinsic) prices for the IBM fixd rate bonds

Price the 3 IBM bonds using the CDS-calibrated hazard rate curve for IBM (via RiskyBondEngine).

Display the clean prices and yields for the 3 test bonds. 

```python
# flat_recovery_rate
flat_recovery_rate = 0.40

# Risky bond engine uses the calibrated CDS hazard rate curve for pricing credit default risk 
risky_bond_engine = ql.RiskyBondEngine(default_prob_curve_handle, flat_recovery_rate, tsy_yield_curve_handle)

# Model/intrinsic prices and yields
ibm_model_prices = []
ibm_model_yields = []

# Print the clean prices and yields for the 3 test bonds
for i in range(0, 3):
    fixed_rate_bond = ibm_bond_objects[i]
    fixed_rate_bond.setPricingEngine(risky_bond_engine)
    
    corpBondModelPrice = round(fixed_rate_bond.cleanPrice(), 3)
    corpBondModelYield = round(fixed_rate_bond.bondYield(corpBondModelPrice, ql.Thirty360(ql.Thirty360.USA), ql.Compounded, ql.Semiannual) * 100, 3)

    ibm_model_prices.append(corpBondModelPrice)
    ibm_model_yields.append(corpBondModelYield)
    
    
# Display relevant metrics
ibm_df['modelPrice'] = ibm_model_prices
ibm_df['modelYield'] = ibm_model_yields

display(ibm_df[['security', 'modelPrice', 'modelYield']])

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
	  <th>security</th>
	  <th>modelPrice</th>
	  <th>modelYield</th>
	</tr>
	<tr>
	  <th>figi</th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>BBG00P3BLH05</th>
	  <td>IBM 3.3 05/15/26</td>
	  <td>96.274</td>
	  <td>5.229</td>
	</tr>
	<tr>
	  <th>BBG00FVNGFP3</th>
	  <td>IBM 3.3 01/27/27</td>
	  <td>95.562</td>
	  <td>5.040</td>
	</tr>
	<tr>
	  <th>BBG00P3BLH14</th>
	  <td>IBM 3 1/2 05/15/29</td>
	  <td>92.867</td>
	  <td>5.117</td>
	</tr>
  </tbody>
</table>
</div>

## d. Compute the "intrinsic" vs market price basis for the IBM bonds

Load the market mid prices and yields from the bond market data dataframe as of 2024-04-19. 

Compute and display the basis between the "CDS-implied intrinsic" vs market prices and yields:

- basisPrice = modelPrice - midPrice
- basisYield = modelYield - midYield

Are the CDS intrinsic prices lower or higher than the bond prices observed on the market? What factors could explain the basis?

```python
# Compute basis
ibm_df['basisPrice'] = ibm_df['modelPrice'] - ibm_df['midPrice']
ibm_df['basisYield'] = ibm_df['modelYield'] - ibm_df['midYield']

# Display relevant metrics
display(ibm_df[['security', 'midPrice', 'modelPrice', 'basisPrice', 'midYield', 'modelYield', 'basisYield']])
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
	  <th>security</th>
	  <th>midPrice</th>
	  <th>modelPrice</th>
	  <th>basisPrice</th>
	  <th>midYield</th>
	  <th>modelYield</th>
	  <th>basisYield</th>
	</tr>
	<tr>
	  <th>figi</th>
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
	  <th>BBG00P3BLH05</th>
	  <td>IBM 3.3 05/15/26</td>
	  <td>96.0380</td>
	  <td>96.274</td>
	  <td>0.2360</td>
	  <td>5.3550</td>
	  <td>5.229</td>
	  <td>-0.1260</td>
	</tr>
	<tr>
	  <th>BBG00FVNGFP3</th>
	  <td>IBM 3.3 01/27/27</td>
	  <td>95.1610</td>
	  <td>95.562</td>
	  <td>0.4010</td>
	  <td>5.2020</td>
	  <td>5.040</td>
	  <td>-0.1620</td>
	</tr>
	<tr>
	  <th>BBG00P3BLH14</th>
	  <td>IBM 3 1/2 05/15/29</td>
	  <td>91.9665</td>
	  <td>92.867</td>
	  <td>0.9005</td>
	  <td>5.3315</td>
	  <td>5.117</td>
	  <td>-0.2145</td>
	</tr>
  </tbody>
</table>
</div>

CDS-implied, intrinsic bond prices are higher than bond market prices.

Following factors could explain the basis dislocation for the 3 IBM bonds:

1. Hazard Rate curve mismatch: the synthetic CDS credit market is underestimating the credit risk in the IBM issuer curve, relative to the cash corporate bond market. This opens the opportunity for Bond vs CDS basis arbitrage trades, as discussed in Session 2. 
2. Risk-free yield curve mismatch: the (synthetic) SOFR yield curve is tighter than the (cash) US Treasury curve. This is usually due to a funding differential for cash vs. synthetic products.
3. Temporarily dislocation: Individual bonds are temporarily dislocated from their "fair value" from the issuer curve (e.g. in a Nelson-Siegel type parametric model). This can happen due to buying vs. selling imbalance in that particular bond.
4. Liquidity discounts: in general, less liquid (e.g. off-the-run) bonds trade at a price discount to more liquid (e.g. on-the-run) bonds. This usually causes a liquidty-implied "richer" basis (wider in yield space).

-----------------------------------------------------------
# Problem 2: Compute scenario sensitivities for risky bonds
## a. Compute scenario IR01s and Durations for the 3 IBM bonds

Use the 3 IBM test bonds defined in Problem 1. 

Compute the scenario IR01 and Durations using a '-1bp' interest rate shock, as described in Section 6. "Market Data Scenarios" in the QuantLib Basics notebook.

Display the computed scenario IR01 and Durations.

Remember that IR01 = Dirty_Price * Duration.

```python
# Bump interest rate by -1bps (parallel shift)
interest_rate_scenario_1bp_down = ql.SimpleQuote(-0.0001)
tsy_yield_curve_handle_1bp_down = ql.YieldTermStructureHandle(ql.ZeroSpreadedTermStructure(tsy_yield_curve_handle, ql.QuoteHandle(interest_rate_scenario_1bp_down)))
risky_bond_engine_1bp_down = ql.RiskyBondEngine(default_prob_curve_handle, flat_recovery_rate, tsy_yield_curve_handle_1bp_down)
```

```python
# Model scenario metrics
ibm_scen_prices_1bp_down = []
ibm_scen_IR01 = []
ibm_scen_duration = []


# Calculate IR01 and duration
for i in range(0, 3):
    fixed_rate_bond = ibm_bond_objects[i]
    
    # Calc model dirty price for base case
    fixed_rate_bond.setPricingEngine(risky_bond_engine)    
    dirty_price_base = fixed_rate_bond.dirtyPrice()
    
    # Scenario: 1bp down
    fixed_rate_bond.setPricingEngine(risky_bond_engine_1bp_down)    
    price_1bp_down = fixed_rate_bond.cleanPrice()
    ibm_scen_prices_1bp_down.append(price_1bp_down)
    
    # Compute scenario IR01 and duration sensitivities
    price_base = ibm_model_prices[i]
    ir01 = (price_1bp_down - price_base) * 1e4 / 100
    duration = ir01 / dirty_price_base * 100

    ibm_scen_IR01.append(ir01)
    ibm_scen_duration.append(duration)


# Display relevant metrics
ibm_df['scen_IR01'] = ibm_scen_IR01
ibm_df['scen_duration'] = ibm_scen_duration

display(ibm_df[['security', 'scen_IR01', 'scen_duration']])

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
	  <th>security</th>
	  <th>scen_IR01</th>
	  <th>scen_duration</th>
	</tr>
	<tr>
	  <th>figi</th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>BBG00P3BLH05</th>
	  <td>IBM 3.3 05/15/26</td>
	  <td>1.969808</td>
	  <td>2.015714</td>
	</tr>
	<tr>
	  <th>BBG00FVNGFP3</th>
	  <td>IBM 3.3 01/27/27</td>
	  <td>2.482201</td>
	  <td>2.576234</td>
	</tr>
	<tr>
	  <th>BBG00P3BLH14</th>
	  <td>IBM 3 1/2 05/15/29</td>
	  <td>4.326882</td>
	  <td>4.583408</td>
	</tr>
  </tbody>
</table>
</div>

## b. Compute analytical DV01s and Durations for the 3 IBM bonds

Use the 3 IBM test bonds defined in Problem 1. 

Compute and display the analytical IR01 and Durations 

Compare the analytic DV01s vs. the scenario IR01s. Are they expected to be similar?

```python
# Analytic metrics
ibm_analytic_durations = []
ibm_analytic_DV01s = []

# Calculate IR01 and duration
for i in range(0, 3):
    fixed_rate_bond = ibm_bond_objects[i]
    
    # Calc model dirty price for base case
    fixed_rate_bond.setPricingEngine(risky_bond_engine)    
    dirty_price_base = fixed_rate_bond.dirtyPrice()
    
    # Compute analytical duration and DV01
    bond_yield_rate = ql.InterestRate(ibm_model_yields[i]/100, ql.ActualActual(ql.ActualActual.ISMA), ql.Compounded, ql.Semiannual)
    analytic_duration = ql.BondFunctions.duration(fixed_rate_bond, bond_yield_rate)
    analytic_DV01 = analytic_duration * dirty_price_base /100 

    ibm_analytic_durations.append(analytic_duration)
    ibm_analytic_DV01s.append(analytic_DV01)


# Display relevant metrics
ibm_df['analytic_DV01'] = ibm_analytic_DV01s
ibm_df['analytic_duration'] = ibm_analytic_durations

display(ibm_df[['security', 'analytic_DV01', 'analytic_duration']])

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
	  <th>security</th>
	  <th>analytic_DV01</th>
	  <th>analytic_duration</th>
	</tr>
	<tr>
	  <th>figi</th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>BBG00P3BLH05</th>
	  <td>IBM 3.3 05/15/26</td>
	  <td>1.884085</td>
	  <td>1.927993</td>
	</tr>
	<tr>
	  <th>BBG00FVNGFP3</th>
	  <td>IBM 3.3 01/27/27</td>
	  <td>2.479507</td>
	  <td>2.573438</td>
	</tr>
	<tr>
	  <th>BBG00P3BLH14</th>
	  <td>IBM 3 1/2 05/15/29</td>
	  <td>4.223564</td>
	  <td>4.473966</td>
	</tr>
  </tbody>
</table>
</div>

```python
# Compare the analytical DV01s vs. the scenario IR01s. Are they expected to be similar?
display(ibm_df[['security', 'scen_IR01', 'analytic_DV01']])
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
	  <th>security</th>
	  <th>scen_IR01</th>
	  <th>analytic_DV01</th>
	</tr>
	<tr>
	  <th>figi</th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>BBG00P3BLH05</th>
	  <td>IBM 3.3 05/15/26</td>
	  <td>1.969808</td>
	  <td>1.884085</td>
	</tr>
	<tr>
	  <th>BBG00FVNGFP3</th>
	  <td>IBM 3.3 01/27/27</td>
	  <td>2.482201</td>
	  <td>2.479507</td>
	</tr>
	<tr>
	  <th>BBG00P3BLH14</th>
	  <td>IBM 3 1/2 05/15/29</td>
	  <td>4.326882</td>
	  <td>4.223564</td>
	</tr>
  </tbody>
</table>
</div>

DV01s and IR01s are expected to be similar, since a -1bp change in the (risk free) interest rate curve causes approximately a -1bp change in the (risky) bond yield curve.

## c. Compute scenario CS01s (credit spread sensitivities) for the 3 IBM bonds

Use the 3 IBM test bonds defined in Problem 1. 

Apply a '-1bp' (parallel shift) scenario to the IBM CDS Par Spread quotes and calibrate the scenario hazard rate curve. 

Create a new scenario RiskyBondEngine, using the scenario hazard rate curve.

Reprice the risky bonds on the scenario RiskyBondEngine (using the bumped hazard rate curve) to obtain the '-1bp' scenario CS01 (credit spread sensitivities).

Compare the scenario CS01s vs analytic DV01s. Are they expected to be similar?

```python
# hazard_rate_curve calibration (from IBM CDS par spreads)
cds_par_spreads_1bp_down = [ps - 1 for ps in cds_par_spreads]
print(cds_par_spreads)
print(cds_par_spreads_1bp_down)

# hazard_rate_curve
hazard_rate_curve_1bp_down = calibrate_cds_hazard_rate_curve(calc_date, sofr_yield_curve_handle, cds_par_spreads_1bp_down, cds_recovery_rate)
default_prob_curve_handle_1bp_down = ql.DefaultProbabilityTermStructureHandle(hazard_rate_curve_1bp_down)

# Risky bond engine for CDS Par Spread -1bp scenario
risky_bond_engine_cds_1bp_down = ql.RiskyBondEngine(default_prob_curve_handle_1bp_down, flat_recovery_rate, tsy_yield_curve_handle)

```

    [12.0769, 17.3082, 24.866, 39.6501, 53.9093, 65.3221]
    [11.0769, 16.3082, 23.866, 38.6501, 52.9093, 64.3221]

```python
# Calculate CS01
ibm_model_cs01 = []

for i in range(0, 3):
    fixed_rate_bond = ibm_bond_objects[i]     
    price_base = ibm_model_prices[i]   
    
    # set scenario pricing engine
    fixed_rate_bond.setPricingEngine(risky_bond_engine_cds_1bp_down)
    
    # calc credit spread scenario price
    price_cds_1bp_down = fixed_rate_bond.cleanPrice()

    # calc price diff
    price_diff_cds_1bp_down = price_cds_1bp_down - price_base
    
    ibm_model_cs01.append(price_diff_cds_1bp_down * 1e4 / 100)

ibm_df['CS01'] = ibm_model_cs01

# Compare the scenario CS01s vs analytic DV01s. Are they expected to be similar?
display(ibm_df[['security', 'scen_IR01', 'analytic_DV01', 'CS01']])

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
	  <th>security</th>
	  <th>scen_IR01</th>
	  <th>analytic_DV01</th>
	  <th>CS01</th>
	</tr>
	<tr>
	  <th>figi</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>BBG00P3BLH05</th>
	  <td>IBM 3.3 05/15/26</td>
	  <td>1.969808</td>
	  <td>1.884085</td>
	  <td>1.970422</td>
	</tr>
	<tr>
	  <th>BBG00FVNGFP3</th>
	  <td>IBM 3.3 01/27/27</td>
	  <td>2.482201</td>
	  <td>2.479507</td>
	  <td>2.516812</td>
	</tr>
	<tr>
	  <th>BBG00P3BLH14</th>
	  <td>IBM 3 1/2 05/15/29</td>
	  <td>4.326882</td>
	  <td>4.223564</td>
	  <td>4.297695</td>
	</tr>
  </tbody>
</table>
</div>

CS01s and DV01s are expected to be similar, since a -1bp change in the credit spread curve causes approximately a -1bp change in the (risky) bond yield curve.

## d. Compute scenario REC01 (recovery rate sensitivity) for the 3 IBM bonds

Use the 3 IBM test bonds defined in Problem 1. 

Apply a +1% scenario bump to the IBM recovery rate (bump the flat_recovery_rate parameter by 1%, from 40% to 41%).

Create a new scenario RiskyBondEngine, using the scenario new recovery rate.

Reprice the risky bonds on the scenario RiskyBondEngine (using the bumped recovery rate) to obtain the +1% scenario REC01 (recovery rate sensitivity).

```python
# Bump recovery rate by 1% up
flat_recovery_rate_1pct_up = flat_recovery_rate + 0.01
risky_bond_engine_rec_1pct_up = ql.RiskyBondEngine(default_prob_curve_handle, flat_recovery_rate_1pct_up, tsy_yield_curve_handle)

# Calculate REC01
ibm_model_rec01 = []

for i in range(0, 3):
    fixed_rate_bond = ibm_bond_objects[i]
    price_base = ibm_model_prices[i]    
    
    # set scenario pricing engine
    fixed_rate_bond.setPricingEngine(risky_bond_engine_rec_1pct_up)
    
    # calc price diff
    price_rec_1pct_up = fixed_rate_bond.cleanPrice()    
    price_diff_rec_1pct_up = price_rec_1pct_up - price_base
    
    ibm_model_rec01.append(price_diff_rec_1pct_up)

# Display relevant metrics
ibm_df['REC01'] = ibm_model_rec01
print(ibm_df[['security', 'REC01']])

```

                            security     REC01
    figi                                      
    BBG00P3BLH05    IBM 3.3 05/15/26  0.005857
    BBG00FVNGFP3    IBM 3.3 01/27/27  0.009410
    BBG00P3BLH14  IBM 3 1/2 05/15/29  0.029299

-----------------------------------------------------------
# Problem 3: Perpetual CDS

We are interested in a perpetual CDS contract (infinite maturity) on a face notional of \$100, flat interest rate of 4% and coupon of 5% (quarterly payments).

For simplicity, we assuming a flat hazard rate of 1% per annum, a recovery rate of 40%, T+0 settlement and zero accrued.

Use the simple CDS valuation formulas derived in Session 3 as a template.

The value of the perpetual CDS is obtained as a limit case of the simple CDS valuation formulas derived in Session 3, for $T \to \infty$.

\begin{align}

PV_{CDS\_PL}\left(c,r,h,R, \infty \right) = \frac{c}{4 \cdot \left(e^{\left(r+h\right)/4}-1 \right)} \simeq \frac{c}{r+h}

\end{align}

\begin{align}

PV_{CDS\_DL}\left(c,r,h,R,\infty \right) = \frac{\left(1-R\right)\cdot h}{r+h} 

\end{align}

\begin{align}

PV_{CDS} = PV_{CDS\_PL} - PV_{CDS\_DL}

\end{align}

\begin{align}

CDS\_ParSpread = c \cdot \frac{PV_{CDS\_DL}}{PV_{CDS\_PL}} \simeq \left(1-R\right)\cdot h

\end{align}

```python
def calc_perpetual_cds_premium_leg_pv(c,r,h,R,face):
    return(c / 4 / (np.exp((r+h)/4)-1) * face)

def calc_perpetual_cds_default_leg_pv(c,r,h,R,face):
    return((1 - R) * h / (r + h) * face)

def calc_perpetual_cds_pv(c,r,h,R,face):
    return(calc_perpetual_cds_premium_leg_pv(c,r,h,R,face) - calc_perpetual_cds_default_leg_pv(c,r,h,R,face))

def calc_perpetual_cds_par_spread(c,r,h,R,face):
    return(c * calc_perpetual_cds_default_leg_pv(c,r,h,R,face) / calc_perpetual_cds_premium_leg_pv(c,r,h,R,face))
```

## a. Compute the fair value of the CDS premium and default legs.

```python
# constant model parameters
r = 0.04
c = 0.05
h = 0.01
R = 0.40
face = 100

# perpetual_cds_premium_leg_pv
perpetual_cds_premium_leg_pv = calc_perpetual_cds_premium_leg_pv(c,r,h,R,face)
print('perpetual_cds_premium_leg_pv:', round(perpetual_cds_premium_leg_pv, 2))

# perpetual_cds_default_leg_pv
perpetual_cds_default_leg_pv = calc_perpetual_cds_default_leg_pv(c,r,h,R,face)
print('perpetual_cds_default_leg_pv:', round(perpetual_cds_default_leg_pv, 2))
```

    perpetual_cds_premium_leg_pv: 99.38

## b. Compute the CDS PV and the CDS Par Spread.

```python
perpetual_cds_pv = calc_perpetual_cds_pv(c,r,h,R,face)
print('perpetual_cds_pv:', round(perpetual_cds_pv, 2))

perpetual_cds_par_spread_bps = calc_perpetual_cds_par_spread(c,r,h,R,face) * 1e4
print('perpetual_cds_par_spread_bps:', round(perpetual_cds_par_spread_bps, 2))

perpetual_cds_par_spread_approx_bps = (1 - R) * h * 1e4
print('perpetual_cds_par_spread_approx_bps:', round(perpetual_cds_par_spread_approx_bps, 2))

```

    perpetual_cds_default_leg_pv: 12.0
    perpetual_cds_pv: 87.38
    perpetual_cds_par_spread_bps: 60.38
    perpetual_cds_par_spread_approx_bps: 60.0

## c. Compute the following CDS risk sensitivities:
- IR01 (PV sensitivity to Interest Rate change of '-1bp')
- HR01 (PV sensitivity to Hazard Rate change of '-1bp')
- REC01 (PV sensitivity to Recovery Rate change of '+1%')

using the scenario method.

```python
# CDS IR01 
r_1bp_down = r - 0.0001
perpetual_cds_pv_r_1bp_down = calc_perpetual_cds_pv(c,r_1bp_down,h,R,face)
perpetual_cds_ir01 = perpetual_cds_pv_r_1bp_down - perpetual_cds_pv
print('perpetual_cds_ir01 ($):', round(perpetual_cds_ir01, 2))

# CDS HR01 
h_1bp_down = h - 0.0001
perpetual_cds_pv_h_1bp_down = calc_perpetual_cds_pv(c,r,h_1bp_down,R,face)
perpetual_cds_hr01 = perpetual_cds_pv_h_1bp_down - perpetual_cds_pv
print('perpetual_cds_hr01 ($):', round(perpetual_cds_hr01, 2))

# CDS CS01
perpetual_cds_par_spread_h_1bp_down = calc_perpetual_cds_par_spread(c,r,h_1bp_down,R,face) * 1e4
perpetual_cds_par_spread_bps_delta = perpetual_cds_par_spread_bps - perpetual_cds_par_spread_h_1bp_down
perpetual_cds_cs01 = perpetual_cds_hr01 / perpetual_cds_par_spread_bps_delta
print('perpetual_cds_cs01 ($):', round(perpetual_cds_cs01, 2))

# CDS REC01 
R_1pct_up = R + 0.01
perpetual_cds_pv_R_1pct_up = calc_perpetual_cds_pv(c,r,h,R_1pct_up,face)
perpetual_cds_rec01 = perpetual_cds_pv_R_1pct_up - perpetual_cds_pv
print('perpetual_cds_rec01 ($):', round(perpetual_cds_rec01, 2))


```

    perpetual_cds_ir01 ($): 0.18
    perpetual_cds_hr01 ($): 0.3
    perpetual_cds_cs01 ($): 0.49
    perpetual_cds_rec01 ($): 0.2

## d. At what time T does the (implied) default probability over next 10 years drop to 1%?

\begin{align}

\mathbb{P} \left(\tau \in [T, T+10] \right) = 1/100

\end{align}

\begin{align}

\mathbb{P} \left(\tau \in [T, T+10] \right)

\end{align}

\begin{align}

= \mathbb{P} \left(\tau >T \right) - \mathbb{P} \left(\tau > T+10 \right)

\end{align}

\begin{align}

= e^{-h \cdot T} - e^{-h \cdot \left( T + 10 \right)}

\end{align}

\begin{align}

= e^{-h \cdot T}\cdot \left(1 - e^{-h \cdot 10} \right).

\end{align}

\begin{align}

\mathbb{P} \left(\tau \in [T, T+10] \right) = 1/100

\end{align}

\begin{align}

\iff e^{-h \cdot T}\cdot \left(1 - e^{-h \cdot 10} \right) = 1/100

\end{align}

\begin{align}

\iff T = \frac {\ln \left(100 \cdot \left(1 - e^{-h \cdot 10} \right) \right)} {h}

\end{align}

```python
# Calc T:
T = np.log(100*(1-np.exp(-h*10)))/h
print('T =', T)
```

    T = 225.3001724944001

-----------------------------------------------------------
# Problem 4: Nelson-Siegel model for smooth hazard rate curves

## This exercise implements tsome of the concepts introduced in Lecture 4, Section 1 "Parametric Hazard Rate Models"

## Follow Section "3. Smooth parametric yield and hazard rate curves: the Nelson-Siegel model" in the QuantLib Advanced notebook
## You can also take a look at Dr. Mark Hendricks Fixed Income notebooks describing the Nelson-Siegel model calibration on US Treasuries (GitHub repo link posted in Canvas).

## a. Prepare the market data as of 2024-04-19

Load the symbology + market data dataframes and create a combined dataframe for for all Verizon (ticker = 'VZ') fixed rate (cpn_type == 'FIXED') bonds with an outstanding amount greater than \$100 MM (amt_out > 100).

Sort the dataframe by bond maturity and display the head of the dataframe.

Plot the VZ yields (Y-axis) by TTM (X-axis).

```python
# corp_symbology_vz
corp_symbology_vz = bond_symbology[(bond_symbology.ticker == 'VZ') & (bond_symbology.cpn_type == 'FIXED') & (bond_symbology.amt_out > 100)]

# Create vz_df
vz_df = corp_symbology_vz.merge(bond_market_prices_eod, how='inner', on=['class', 'ticker', 'isin', 'figi'])

# Sort the dataframe by bond maturity and display the head of the dataframe.
vz_df.sort_values('maturity', inplace=True)
display(vz_df.head())

# Plot the VZ yields (Y-axis) by TTM (X-axis).
plt = vz_df.plot(x='TTM', y = 'midYield', figsize = (12, 6), title = "VZ Market Yields (pct)", grid=True, style='*')
plt.set_ylabel('Bond Yields (pct)')
plt.set_xlabel('Bond TTM')

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
	  <th>ticker</th>
	  <th>class</th>
	  <th>figi</th>
	  <th>isin</th>
	  <th>und_bench_isin</th>
	  <th>security</th>
	  <th>name</th>
	  <th>type</th>
	  <th>coupon</th>
	  <th>cpn_type</th>
	  <th>…</th>
	  <th>term</th>
	  <th>TTM</th>
	  <th>date</th>
	  <th>bidPrice</th>
	  <th>askPrice</th>
	  <th>accrued</th>
	  <th>bidYield</th>
	  <th>askYield</th>
	  <th>midPrice</th>
	  <th>midYield</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>39</th>
	  <td>VZ</td>
	  <td>Corp</td>
	  <td>BBG00ZLKTF09</td>
	  <td>US92343VGG32</td>
	  <td>US91282CKH33</td>
	  <td>VZ 1.45 03/20/26</td>
	  <td>VERIZON COMMUNICATIONS</td>
	  <td>GLOBAL</td>
	  <td>1.450</td>
	  <td>FIXED</td>
	  <td>…</td>
	  <td>4.993840</td>
	  <td>1.916496</td>
	  <td>2024-04-19</td>
	  <td>92.783</td>
	  <td>92.940</td>
	  <td>0.1335</td>
	  <td>5.484</td>
	  <td>5.392</td>
	  <td>92.8615</td>
	  <td>5.4380</td>
	</tr>
	<tr>
	  <th>38</th>
	  <td>VZ</td>
	  <td>Corp</td>
	  <td>BBG00DGYP877</td>
	  <td>US92343VDD38</td>
	  <td>US91282CKH33</td>
	  <td>VZ 2 5/8 08/15/26</td>
	  <td>VERIZON COMMUNICATIONS</td>
	  <td>GLOBAL</td>
	  <td>2.625</td>
	  <td>FIXED</td>
	  <td>…</td>
	  <td>10.036961</td>
	  <td>2.321697</td>
	  <td>2024-04-19</td>
	  <td>93.904</td>
	  <td>94.119</td>
	  <td>0.4965</td>
	  <td>5.467</td>
	  <td>5.363</td>
	  <td>94.0115</td>
	  <td>5.4150</td>
	</tr>
	<tr>
	  <th>37</th>
	  <td>VZ</td>
	  <td>Corp</td>
	  <td>BBG00G6QW2B8</td>
	  <td>US92343VDY74</td>
	  <td>US91282CKJ98</td>
	  <td>VZ 4 1/8 03/16/27</td>
	  <td>VERIZON COMMUNICATIONS</td>
	  <td>GLOBAL</td>
	  <td>4.125</td>
	  <td>FIXED</td>
	  <td>…</td>
	  <td>9.998631</td>
	  <td>2.904860</td>
	  <td>2024-04-19</td>
	  <td>96.703</td>
	  <td>96.899</td>
	  <td>0.4240</td>
	  <td>5.367</td>
	  <td>5.292</td>
	  <td>96.8010</td>
	  <td>5.3295</td>
	</tr>
	<tr>
	  <th>36</th>
	  <td>VZ</td>
	  <td>Corp</td>
	  <td>BBG00SK3XVL1</td>
	  <td>US92343VFF67</td>
	  <td>US91282CKJ98</td>
	  <td>VZ 3 03/22/27</td>
	  <td>VERIZON COMMUNICATIONS</td>
	  <td>GLOBAL</td>
	  <td>3.000</td>
	  <td>FIXED</td>
	  <td>…</td>
	  <td>7.003422</td>
	  <td>2.921287</td>
	  <td>2024-04-19</td>
	  <td>93.598</td>
	  <td>93.843</td>
	  <td>0.2585</td>
	  <td>5.403</td>
	  <td>5.307</td>
	  <td>93.7205</td>
	  <td>5.3550</td>
	</tr>
	<tr>
	  <th>35</th>
	  <td>VZ</td>
	  <td>Corp</td>
	  <td>BBG00ZLKTF27</td>
	  <td>US92343VGH15</td>
	  <td>US91282CKG59</td>
	  <td>VZ 2.1 03/22/28</td>
	  <td>VERIZON COMMUNICATIONS</td>
	  <td>GLOBAL</td>
	  <td>2.100</td>
	  <td>FIXED</td>
	  <td>…</td>
	  <td>7.000684</td>
	  <td>3.923340</td>
	  <td>2024-04-19</td>
	  <td>88.334</td>
	  <td>88.624</td>
	  <td>0.1810</td>
	  <td>5.450</td>
	  <td>5.360</td>
	  <td>88.4790</td>
	  <td>5.4050</td>
	</tr>
  </tbody>
</table>
<p>5 rows × 33 columns</p>
</div>

    Text(0.5, 0, 'Bond TTM')




    

![png](output_277_2.png)

## b. Create the Nelson-Siegel curve shape (4 parameters) and compute the corresponding SSE function.

For a given set of parameters, write a function to compute the SSE "Sum of Squared Errors" penalty function in price space (defined as sum of squared differences between model and market prices for all Verizon fixed-rate bonds).

For each bond, compute the bond DV01, using Section "9. Analytical Duration" in the QuantLib Basics notebook as a template.

Use 1/DV01 as SSE weights, as discussed in Lecture 3. You can ignore the liquidity adjuster for the purpose of this exercise.

```python
def nelson_siegel(params, maturity):
    ''' params = (theta1, theta2, theta3, lambda)'''        
    if(maturity == 0 or params[3] <= 0):
        slope_1 = 1
        curvature = 0
    else:
        slope_1 = (1 - np.exp(-maturity/params[3]))/(maturity/params[3])
        curvature = slope_1 - np.exp(-maturity/params[3])

    total_value = params[0] + params[1] * slope_1 + params[2] * curvature
    
    return total_value

def create_nelson_siegel_curve(calc_date, nelson_siegel_params):
    ''' nelson_siegel_params = (theta1, theta2, theta3, lambda)'''            
    nelson_siegel_surv_prob_dates = [calc_date + ql.Period(T , ql.Years) for T in range(31)]
    nelson_siegel_average_hazard_rates = [nelson_siegel(nelson_siegel_params, T) for T in range(31)]
    nelson_siegel_surv_prob_levels = [np.exp(-T * nelson_siegel_average_hazard_rates[T]) for T in range(31)]
    
    # cap and floor survival probs
    nelson_siegel_surv_prob_levels = [max(min(x,1),1e-8) for x in nelson_siegel_surv_prob_levels]

    # nelson_siegel_surv_prob_curve
    nelson_siegel_credit_curve = ql.SurvivalProbabilityCurve(nelson_siegel_surv_prob_dates, nelson_siegel_surv_prob_levels, ql.Actual360(), ql.TARGET())
    nelson_siegel_credit_curve.enableExtrapolation()
    nelson_siegel_credit_curve_handle = ql.DefaultProbabilityTermStructureHandle(nelson_siegel_credit_curve)
    
    return(nelson_siegel_credit_curve_handle)


def calculate_nelson_siegel_model_prices_and_yields(nelson_siegel_params, 
                      calc_date, 
                      fixed_rate_bond_objects, 
                      tsy_yield_curve_handle, 
                      bond_recovery_rate = 0.4):
    
    # nelson_siegel_surv_prob_curve_handle
    nelson_siegel_surv_prob_curve_handle = create_nelson_siegel_curve(calc_date, nelson_siegel_params)
    
    # nelson_siegel_risky_bond_engine
    nelson_siegel_risky_bond_engine = ql.RiskyBondEngine(nelson_siegel_surv_prob_curve_handle, bond_recovery_rate, tsy_yield_curve_handle)
    
    bond_model_prices = []
    bond_model_yields = []
    
    for fixed_rate_bond in fixed_rate_bond_objects:
        fixed_rate_bond.setPricingEngine(nelson_siegel_risky_bond_engine)
        
        bond_price = fixed_rate_bond.cleanPrice()                
        bond_yield = fixed_rate_bond.bondYield(bond_price, ql.Thirty360(ql.Thirty360.USA), ql.Compounded, ql.Semiannual) * 100
        
        bond_model_prices.append(bond_price)
        bond_model_yields.append(bond_yield)
    
    return(bond_model_prices, bond_model_yields)

def nelson_siegel_sse(nelson_siegel_params, 
                      calc_date, 
                      fixed_rate_bond_objects, 
                      market_prices, 
                      calib_weights,
                      tsy_yield_curve_handle, 
                      bond_recovery_rate = 0.4):
    
    # bond_model_prices
    bond_model_prices, bond_model_yields = calculate_nelson_siegel_model_prices_and_yields(nelson_siegel_params, 
                      calc_date, 
                      fixed_rate_bond_objects, 
                      tsy_yield_curve_handle, 
                      bond_recovery_rate)
    # sse    
    sse = 0
    
    for i in range(len(market_prices)):
        model_error = market_prices[i] - bond_model_prices[i]                
        sse += model_error * model_error * calib_weights[i]                        
    
    return(sse)    


def create_bonds_and_weights(bond_details, tsy_yield_curve_handle):
    
    # risk_free_bond_engine
    risk_free_bond_engine = ql.DiscountingBondEngine(tsy_yield_curve_handle)


    fixed_rate_bond_objects = []
    bond_market_prices = []    
    bond_yields = []
    bond_DV01s = []    
    bond_durations = []    
    
    for index,row in bond_details.iterrows():
        fixed_rate_bond = create_bond_from_symbology(row)
        fixed_rate_bond.setPricingEngine(risk_free_bond_engine)
        
        fixed_rate_bond_objects.append(fixed_rate_bond)
        
        bond_price = row['midPrice']                
        bond_yield = fixed_rate_bond.bondYield(bond_price, ql.Thirty360(ql.Thirty360.USA), ql.Compounded, ql.Semiannual) * 100
        bond_yield_rate = ql.InterestRate(bond_yield/100, ql.ActualActual(ql.ActualActual.ISMA), ql.Compounded, ql.Semiannual)
        bond_duration = ql.BondFunctions.duration(fixed_rate_bond, bond_yield_rate)
        bond_DV01   = fixed_rate_bond.dirtyPrice() * bond_duration
        
        bond_market_prices.append(bond_price)
        bond_yields.append(bond_yield)
        bond_DV01s.append(bond_DV01)
        bond_durations.append(bond_duration)   
             
    calib_weights = [1 / d for d in bond_DV01s]
    
    sum_calib_weights = sum(calib_weights)
    calib_weights = [x / sum_calib_weights for x in calib_weights]
    
    return(fixed_rate_bond_objects, calib_weights, bond_market_prices, bond_yields, bond_DV01s, bond_durations)

```

```python
# bond_recovery_rate
bond_recovery_rate = 0.4

# initial_nelson_siegel_params
initial_nelson_siegel_params = [0.03, -0.01, 0.02, 5.0]
print('initial_nelson_siegel_params:', initial_nelson_siegel_params)

fixed_rate_bond_objects, calib_weights, bond_market_prices, bond_yields, bond_DV01s, bond_durations = create_bonds_and_weights(vz_df, tsy_yield_curve_handle)
vz_df['duration'] = bond_durations
vz_df['calib_weight'] = calib_weights

init_bond_model_prices, init_bond_model_yields = calculate_nelson_siegel_model_prices_and_yields(initial_nelson_siegel_params, calc_date, fixed_rate_bond_objects, tsy_yield_curve_handle, bond_recovery_rate)
vz_df['initModelPrice'] = init_bond_model_prices
vz_df['initModelYield'] = init_bond_model_yields

display(vz_df[['security', 'midPrice', 'initModelPrice', 'calib_weight']].head())

# initial_sse
initial_sse = nelson_siegel_sse(initial_nelson_siegel_params, calc_date, fixed_rate_bond_objects, bond_market_prices, calib_weights, tsy_yield_curve_handle, bond_recovery_rate)
print('initial_sse =', initial_sse)

```

    initial_nelson_siegel_params: [0.03, -0.01, 0.02, 5.0]

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
	  <th>security</th>
	  <th>midPrice</th>
	  <th>initModelPrice</th>
	  <th>calib_weight</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>39</th>
	  <td>VZ 1.45 03/20/26</td>
	  <td>92.8615</td>
	  <td>90.983573</td>
	  <td>0.089548</td>
	</tr>
	<tr>
	  <th>38</th>
	  <td>VZ 2 5/8 08/15/26</td>
	  <td>94.0115</td>
	  <td>91.761390</td>
	  <td>0.073728</td>
	</tr>
	<tr>
	  <th>37</th>
	  <td>VZ 4 1/8 03/16/27</td>
	  <td>96.8010</td>
	  <td>93.959994</td>
	  <td>0.058387</td>
	</tr>
	<tr>
	  <th>36</th>
	  <td>VZ 3 03/22/27</td>
	  <td>93.7205</td>
	  <td>91.109042</td>
	  <td>0.059143</td>
	</tr>
	<tr>
	  <th>35</th>
	  <td>VZ 2.1 03/22/28</td>
	  <td>88.4790</td>
	  <td>85.516537</td>
	  <td>0.046217</td>
	</tr>
  </tbody>
</table>
</div>

    initial_sse = 25.591932200527502

## c. Calibrate the Nelson-Siegel model parameters to obtain the smooth Verizon credit curve.

Use the US "on-the-run" Treasury yield curve (already calibrated in Problem 1) for risk-free discounting.

Minimize the SSE (pricing error) function to obtain the optimal/calibrated Nelson-Siegel parameter vector. 

Create the calibrated/smooth credit curve corresponding to the optimal model parameters.

```python
from scipy.optimize import minimize

def calibrate_nelson_siegel_model(initial_nelson_siegel_params,
                                  calc_date, 
                                  bond_details, 
                                  tsy_yield_curve_handle, 
                                  bond_recovery_rate = 0.4):
    # create_bonds_and_weights
    fixed_rate_bond_objects, calib_weights, bond_market_prices, bond_yields, bond_DV01s, bond_durations = create_bonds_and_weights(bond_details, tsy_yield_curve_handle)
    
    # start calibration
    param_bounds = [(1e-3, 0.1), (-0.1, 0.1), (-0.1, 0.1), (1e-3, 10)]
            
    calib_results = minimize(nelson_siegel_sse,
                                            initial_nelson_siegel_params, 
                                            args = (calc_date, 
                                                    fixed_rate_bond_objects, 
                                                    bond_market_prices, 
                                                    calib_weights,
                                                    tsy_yield_curve_handle, 
                                                    bond_recovery_rate),
                                            bounds = param_bounds)


    return(calib_results)


```

```python
# calibrate_nelson_siegel_model
calib_results = calibrate_nelson_siegel_model(initial_nelson_siegel_params, calc_date, vz_df, tsy_yield_curve_handle, bond_recovery_rate)
print(calib_results)
    
# calib_nelson_siegel_params
calib_nelson_siegel_params = calib_results.x
print('calib_nelson_siegel_params:', calib_nelson_siegel_params)

# calib_nelson_siegel_curve
calib_nelson_siegel_curve = create_nelson_siegel_curve(calc_date, calib_nelson_siegel_params)

# calib_sse
calib_sse = nelson_siegel_sse(calib_nelson_siegel_params, calc_date, fixed_rate_bond_objects, bond_market_prices, calib_weights, tsy_yield_curve_handle, bond_recovery_rate)
print('initial_sse =', round(initial_sse, 3), 'calib_sse =', round(calib_sse, 3))

```

      message: CONVERGENCE: REL_REDUCTION_OF_F_<=_FACTR*EPSMCH
      success: True
       status: 0
          fun: 0.20985462025254473
            x: [ 2.115e-02 -2.079e-02 -1.998e-06  2.658e+00]
          nit: 45
          jac: [-3.347e-04 -4.851e-05 -5.092e-05  2.442e-07]
         nfev: 285
         njev: 57
     hess_inv: <4x4 LbfgsInvHessProduct with dtype=float64>
    calib_nelson_siegel_params: [ 2.11506077e-02 -2.07855183e-02 -1.99811247e-06  2.65774329e+00]
    initial_sse = 25.592 calib_sse = 0.21

## d. Compute smooth model prices, yields and "edges"

Price all Verizon bonds on the calibrated credit curve and compute the corresponding model yields and edges.

Add following columns to the dataframe and display the head of the results:

| modelPrice | modelYield | edgePrice | edgeYield |
|----------|----------|----------|----------|

```python
# Price all Verizon bonds on the calibrated credit curve and compute the corresponding yields.
bond_model_prices, bond_model_yields = calculate_nelson_siegel_model_prices_and_yields(calib_nelson_siegel_params, calc_date, fixed_rate_bond_objects, tsy_yield_curve_handle, bond_recovery_rate)

vz_df['modelPrice'] = bond_model_prices
vz_df['modelYield'] = bond_model_yields
vz_df['edgePrice'] = vz_df['modelPrice'] - vz_df['midPrice']
vz_df['edgeYield'] = vz_df['modelYield'] - vz_df['midYield']

display(vz_df[['security', 'midPrice','initModelPrice', 'modelPrice', 'edgePrice']].head())
display(vz_df[['security', 'midYield','initModelYield', 'modelYield', 'edgeYield']].head())
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
	  <th>security</th>
	  <th>midPrice</th>
	  <th>initModelPrice</th>
	  <th>modelPrice</th>
	  <th>edgePrice</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>39</th>
	  <td>VZ 1.45 03/20/26</td>
	  <td>92.8615</td>
	  <td>90.983573</td>
	  <td>92.838491</td>
	  <td>-0.023009</td>
	</tr>
	<tr>
	  <th>38</th>
	  <td>VZ 2 5/8 08/15/26</td>
	  <td>94.0115</td>
	  <td>91.761390</td>
	  <td>93.984611</td>
	  <td>-0.026889</td>
	</tr>
	<tr>
	  <th>37</th>
	  <td>VZ 4 1/8 03/16/27</td>
	  <td>96.8010</td>
	  <td>93.959994</td>
	  <td>96.743183</td>
	  <td>-0.057817</td>
	</tr>
	<tr>
	  <th>36</th>
	  <td>VZ 3 03/22/27</td>
	  <td>93.7205</td>
	  <td>91.109042</td>
	  <td>93.818693</td>
	  <td>0.098193</td>
	</tr>
	<tr>
	  <th>35</th>
	  <td>VZ 2.1 03/22/28</td>
	  <td>88.4790</td>
	  <td>85.516537</td>
	  <td>88.771584</td>
	  <td>0.292584</td>
	</tr>
  </tbody>
</table>
</div>

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
	  <th>security</th>
	  <th>midYield</th>
	  <th>initModelYield</th>
	  <th>modelYield</th>
	  <th>edgeYield</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>39</th>
	  <td>VZ 1.45 03/20/26</td>
	  <td>5.4380</td>
	  <td>6.552199</td>
	  <td>5.451398</td>
	  <td>0.013398</td>
	</tr>
	<tr>
	  <th>38</th>
	  <td>VZ 2 5/8 08/15/26</td>
	  <td>5.4150</td>
	  <td>6.520478</td>
	  <td>5.427663</td>
	  <td>0.012663</td>
	</tr>
	<tr>
	  <th>37</th>
	  <td>VZ 4 1/8 03/16/27</td>
	  <td>5.3295</td>
	  <td>6.441599</td>
	  <td>5.351789</td>
	  <td>0.022289</td>
	</tr>
	<tr>
	  <th>36</th>
	  <td>VZ 3 03/22/27</td>
	  <td>5.3550</td>
	  <td>6.391251</td>
	  <td>5.316861</td>
	  <td>-0.038139</td>
	</tr>
	<tr>
	  <th>35</th>
	  <td>VZ 2.1 03/22/28</td>
	  <td>5.4050</td>
	  <td>6.335615</td>
	  <td>5.314845</td>
	  <td>-0.090155</td>
	</tr>
  </tbody>
</table>
</div>

## e. Visualize the results of the calibrated credit model

Plot the model vs market prices (Y-axis) by maturity (X-axis).

Plot the model vs market yields (Y-axis) by maturity (X-axis).

Plot the edges in yield space (Y-axis) by maturity (X-axis).

What do you think about the quality of the model fit?

```python
# Plot the model vs market prices (Y-axis) by maturity (X-axis).
plt = vz_df.plot(x='maturity', y = ['midPrice', 'modelPrice'], figsize = (12, 6), title = "Market vs Model Prices", grid=True, style='*')
plt.set_ylabel('Bond Prices (pct)')
plt.set_xlabel('Bond Maturity')

```

    Text(0.5, 0, 'Bond Maturity')




    

![png](output_287_1.png)

```python
# Plot the model vs market yields (Y-axis) by maturity (X-axis).
plt = vz_df.plot(x='maturity', y = ['midYield', 'modelYield'], figsize = (12, 6), title = "Market vs Model Yields (pct)", grid=True, style='*')
plt.set_ylabel('Bond Yields (pct)')
plt.set_xlabel('Bond Maturity')

```

    Text(0.5, 0, 'Bond Maturity')




    

![png](output_288_1.png)

```python
# Plot the edges in yield space (Y-axis) by maturity (X-axis).
plt = vz_df.plot(x='maturity', y = ['edgeYield'], figsize = (12, 6), title = "Model Edges in yield space (pct)", grid=True, style='*')
plt.axhline(0, color='red', linestyle='--', alpha=0.7)
plt.set_ylabel('Yield Edge (pct)')
plt.set_xlabel('Bond Maturity')

```

    Text(0.5, 0, 'Bond Maturity')




    

![png](output_289_1.png)

### What do you think about the quality of the model fit?

Model fit looks good, given that fact that we are matching closely the market prices of 40 VZ bonds with only 4 Nelson-Siegel model parameters.

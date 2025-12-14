---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Download Bloomberg Data
linter-yaml-title-alias: Download Bloomberg Data
---

```python
import pandas as pd
import numpy as np
from xbbg import blp
```

# Download Bloomberg Data

```python
STARTDATE = '2023-01-01'
ENDDATE = '2024-03-05'
fld = 'mty_years'
```

Consider using the `fld` of `days_to_mty` for more accurate day-count calculations.

```python
SAVEDATA = True
OUTFILE = 'cap_quotes' + '_' + ENDDATE
```

## Cap tickers

Use Bloomberg's `VCUB` command to access their volatility cube tool. 

* Change the "view" to see cap vols
* Choose to quote in normal of lognormal terms.
* Click "market data" to access another tab of caplet vols
* see strikes by ticking the checkbox
* Get individual tickers from VCUB "market data" and right click on the grid.

Note that the cap tickers are not typical.

* Do not list data unless using SMKO source, (as opposed to BVOL) in the API.

```python
codelist = list(range(1,11))
ticks = [f'USCNSQ{code} SMKO Curncy' for code in codelist]
```

```python
capdata = blp.bdh(tickers=ticks, flds='last_price',\
        start_date=STARTDATE, end_date=ENDDATE).droplevel(level=1,axis=1)

cmats = blp.bdp(tickers=ticks, flds=[fld]).sort_values('mty_years').rename(columns={fld:'maturity'})

capquotes = pd.concat([cmats.T, capdata], axis=0)
capquotes.index.name = 'date'
```

## SOFR Swap Tickers

Use letters in the ticker to get quarterly frequency up to 3 years.

```python
codes_yr = list(range(1,11))
codes_month = ['','C','F','I']

ticks = []
for mnth in codes_month[1:]:
    ticks.append(f'USOSFR{mnth} Curncy')

for code in codes_yr:
    for mnth in codes_month:
        tag = f'{code}'+mnth
        ticks.append(f'USOSFR{tag} Curncy')
```

```python
sofrdata = blp.bdh(tickers=ticks, flds='last_price',\
        start_date=STARTDATE, end_date=ENDDATE).droplevel(level=1,axis=1)
mats = blp.bdp(tickers=ticks, flds=[fld]).sort_values('mty_years').rename(columns={fld:'maturity'})

sofrquotes = pd.concat([mats.T, sofrdata], axis=0)
sofrquotes.index.name = 'date'
```

## Save Data

```python
if SAVEDATA:
    outfile = f'../data/{OUTFILE}.xlsx'
    with pd.ExcelWriter(outfile) as writer:  
        capquotes.to_excel(writer, sheet_name= 'cap', index=True)
        sofrquotes.to_excel(writer, sheet_name= 'sofr', index=True)
```

***

---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Note
linter-yaml-title-alias: Note
---

# Note

Bloomberg's API for volcube data is insufficient.

* Among other things, seems university subscription doesn't include `BVOL` API source.

This is a rare case where it might make sense to just get the data manually from `VCUB`.

* Actions
* Export to Excel

Recommended settings:

* `RFR` top-left box.
* `Analyze Cube` tab has more options. `Market Data` tab is promising for API but underdelivers.
* `Show Vol: Black`. For pedagogy, useful to get the Black quotes, or could practice converting them from Normal.
* `View:` Very useful options here.

```python
import pandas as pd
import numpy as np
from xbbg import blp
```

# Download Bloomberg Data

```python
DATE = '2024-02-20'
STARTDATE = '2024-01-03'
ENDDATE = '2024-02-21'
tenorcode = '12'
```

Consider using the `fld` of `days_to_mty` for more accurate day-count calculations.

```python
SAVEDATA = True
OUTFILE = 'swaption_ivols' + '_' + DATE
```

## Swaptions on VCUB

Use Bloomberg's `VCUB` command to access their volatility cube tool. 

* Quoted as Normal Is or Normal Skew
* Click "market data" to access another tab for smile
* See strikes by ticking the checkbox
* Get individual tickers from VCUB "market data" and right click on the grid.

Note that the cap tickers are not typical.

* Do not list data unless using SMKO source, (as opposed to BVOL) in the API.

# Better Route?

**Bloomberg Help says no curve API for this.**

Use Curve API?

`BVOL_RFR_SWAPTION`

`BVOL_RFR_SWAPTION_ATM`

`BVOL_OIS_SWAPTION`

`BVOL_IBOR_SWAPTION`

`BVOL_ATM_SWAPTION_VOL`

# Tickers

In VCUB, note box for `RFR` vs `IBOR` quotes.

## Problem

Subscription doesn't seem to include `BVOL` source.

The OTM tickers do not return values in the API, even with SMKO source.

Seemingly, the only way to get OTM quotes is manually from the VCUB dashboard.

The ATM quotes work for RF and IBOR, so long as SMKO source is specified.

```python
fld = ['swap_primary_index','quote_units','base_crncy','maturity','mty_years', 'mty_years_tdy', 'days_to_mty_tdy','security_tenor_one','security_tenor_two']
```

```python
doSOFR = True

yellowky = 'Curncy'
SOURCE = 'SMKO'

if doSOFR:
    tickcode = 'USW'
    strikecodelist = ['G','D','C','B','L','M','O','R']
    tickATMcode = 'USSNA'
    ticks = [f'{tickcode}{strikecode}{tenorcode} {SOURCE} {yellowky}' for strikecode in strikecodelist]    

else:
    tickcode_down = 'USSR'
    tickcode_up = 'USSP'
    strikecodelist = ['D','C','B','A']
    tickATMcode = 'USSNO'
    
    ticks_down = [f'{tickcode_down}{strikecode}{tenorcode} {SOURCE} {yellowky}' for strikecode in strikecodelist]
    ticks_up = [f'{tickcode_down}{strikecode}{tenorcode} {SOURCE} {yellowky}' for strikecode in strikecodelist]    
    ticks = ticks_down + ticks_up
    
tickATM = f'{tickATMcode}{tenorcode} {SOURCE} {yellowky}'
ticks.append(tickATM)
```

# ATM Tickers Over Expiry/Tenor

Notwithstanding the problems in automated OTM Quotes, pull ATM quotes for various Tenors/Expiries.

```python
tenors = []
for exp in np.arange(1,6):
    for ten in np.arange(1,6):
        tenors.append(f'{exp}{ten}')

ticks = [f'{tickATMcode}{code} {SOURCE} {yellowky}' for code in tenors]
```

# Download Data

```python
data = blp.bdh(tickers=ticks, flds='last_price',\
        start_date=STARTDATE, end_date=ENDDATE).droplevel(level=1,axis=1)
data.index.name = 'date'

info = blp.bdp(tickers=ticks, flds=fld).sort_values('mty_years')
info.index.name = 'ticker'
```

## Save Data

```python
if SAVEDATA:
    outfile = f'../../data/{OUTFILE}.xlsx'
    with pd.ExcelWriter(outfile) as writer:  
        info.to_excel(writer, sheet_name= 'info', index=True)
        data.to_excel(writer, sheet_name= 'normal vol (ATM)', index=True)
```

***

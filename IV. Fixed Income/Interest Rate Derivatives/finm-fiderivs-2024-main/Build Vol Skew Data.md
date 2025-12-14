---
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Build Vol Skew Data
---

# Build Vol Skew Data

```python
import pandas as pd
import numpy as np
import datetime
import warnings

from scipy.stats import norm

import matplotlib.pyplot as plt
%matplotlib inline
plt.rcParams['figure.figsize'] = (12,6)
plt.rcParams['font.size'] = 15
plt.rcParams['legend.fontsize'] = 13

from matplotlib.ticker import (MultipleLocator,
                               FormatStrFormatter,
                               AutoMinorLocator)

import sys
sys.path.insert(0,'../cmds')
from options import *

import quandl
```

    ---------------------------------------------------------------------------

    ModuleNotFoundError                       Traceback (most recent call last)

    Cell In[1], line 22
         19 sys.path.insert(0,'../cmds')
         20 from options import *
    ---> 22 import quandl


    ModuleNotFoundError: No module named 'quandl'

```python
TAG = '2024'
```

```python
file_key = open("../../keys/quandl_key.txt","r")
API_KEY = file_key.read()
file_key.close()

quandl.ApiConfig.api_key = API_KEY
```

## Tickers

https://data.nasdaq.com/data/OWF-optionworks-futures-options/documentation?anchor=coverage-data-organization

```python
TICKS = [
    'OWF/CBT_FV_FV_U2023_IV',
    'OWF/CME_ES_ES_U2023_IV',
    'OWF/CBT_TY_TY_U2023_IV',
    'OWF/CBT_FF_FF_N2023_IV'
    'OWF/CME_ED_ED_U2023_IV'
]

ticksplitlabs = ['exchange','futures ticker','option ticker','monthYear']
info = pd.DataFrame(index=ticksplitlabs)
info.index.name = 'specs'
surfs = dict()
labels = dict()
```

```python
for tick in TICKS:
    ### Download Data
    df_model = quandl.get(f'{tick}M')
    df_surf = quandl.get(f'{tick}S')

    ### Organize Labels
    finalDate = df_model.index[-1]
    tick_split = tick.split('/')[1].split('_')[0:-1]
    labels[tick] = ' '.join(tick_split)
    label = labels[tick]

    ### Data Descriptions
    info.loc[ticksplitlabs,label] = tick_split
    info.loc['option expiration',label] = (finalDate + datetime.timedelta(df_model.loc[finalDate,'DtE'])).strftime('%Y-%m-%d')
    info.loc['future expiration',label] = (finalDate + datetime.timedelta(df_model.loc[finalDate,'DtT'])).strftime('%Y-%m-%d')


    ### Organize Data
    surf = df_surf.drop(columns=['DNSvol','DtE']).join(df_model[['Future','DtE','DtT']]).rename(columns={'DtT': 'Expiration Future','DtE':'Expiration Option','Future':'Future Price'})
    surf = pd.concat([surf.iloc[:,-3:], surf.iloc[:,0:-3]],axis=1)
    surf[['Expiration Future','Expiration Option']] /= 365
    
    surfs[tick] = surf
```

```python
with pd.ExcelWriter(f'../vol_surfaces_{TAG}.xlsx') as writer:  
    info.to_excel(writer, sheet_name= 'descriptions')
    for tick in TICKS:
        surfs[tick].to_excel(writer, sheet_name=labels[tick])
```

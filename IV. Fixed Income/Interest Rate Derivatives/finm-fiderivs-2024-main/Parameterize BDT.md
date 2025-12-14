---
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Parameterize BDT
---

# Parameterize BDT
## Warning

The parameters are estimated to a high precision.

* Saving to Excel causes floating point errors
* Thus, loading these parameters and building tree will not exactly price calibrated bonds

```python
import numpy as np
import pandas as pd

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

# Parameters

```python
DATE = '2023-04-21'
FREQ = 4
Tmat = 5

SAVEDATA = True
```

# Load Caps or Set Adhoc Vol

```python
curves = pd.read_excel(f'../data/cap_curves_{DATE}_freq_{FREQ}.xlsx', sheet_name=f'rate curves {DATE}').set_index('tenor')

curves.index = curves.index.to_numpy().round(6)

# capcurves = flat_to_forward_vol(curves)
# capcurves[['flat vols','fwd vols']].plot()

capcurves = flat_to_forward_vol_rev(curves['flat vols'],curves['swap rates'],curves['forwards'],curves['discounts'],freq=FREQ)
capcurves[['flat vols','fwd vols']].iloc[:-1,:].plot()
```

    /Users/markhendricks/Projects/finm-fiderivs-2023/venv/lib/python3.9/site-packages/scipy/optimize/_minpack_py.py:178: RuntimeWarning: The iteration is not making good progress, as measured by the 
      improvement from the last ten iterations.
      warnings.warn(msg, RuntimeWarning)





    <Axes: >




    

![png](output_6_2.png)

## Build Rate Tree

```python
capcurves
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
	  <td>0.312855</td>
	  <td>0.079464</td>
	  <td>0.312855</td>
	  <td>0.079464</td>
	</tr>
	<tr>
	  <th>0.75</th>
	  <td>0.336921</td>
	  <td>0.109894</td>
	  <td>0.383569</td>
	  <td>0.189357</td>
	</tr>
	<tr>
	  <th>1.00</th>
	  <td>0.360987</td>
	  <td>0.140995</td>
	  <td>0.477872</td>
	  <td>0.330352</td>
	</tr>
	<tr>
	  <th>1.25</th>
	  <td>0.416510</td>
	  <td>0.207641</td>
	  <td>0.758475</td>
	  <td>0.537993</td>
	</tr>
	<tr>
	  <th>1.50</th>
	  <td>0.458587</td>
	  <td>0.233880</td>
	  <td>0.833913</td>
	  <td>0.771874</td>
	</tr>
	<tr>
	  <th>1.75</th>
	  <td>0.489001</td>
	  <td>0.247125</td>
	  <td>0.879065</td>
	  <td>1.018999</td>
	</tr>
	<tr>
	  <th>2.00</th>
	  <td>0.509541</td>
	  <td>0.255744</td>
	  <td>0.809991</td>
	  <td>1.274743</td>
	</tr>
	<tr>
	  <th>2.25</th>
	  <td>0.521990</td>
	  <td>0.251910</td>
	  <td>0.832651</td>
	  <td>1.526653</td>
	</tr>
	<tr>
	  <th>2.50</th>
	  <td>0.528137</td>
	  <td>0.249131</td>
	  <td>0.772926</td>
	  <td>1.775784</td>
	</tr>
	<tr>
	  <th>2.75</th>
	  <td>0.529766</td>
	  <td>0.242680</td>
	  <td>0.741164</td>
	  <td>2.018464</td>
	</tr>
	<tr>
	  <th>3.00</th>
	  <td>0.528664</td>
	  <td>0.242374</td>
	  <td>0.680724</td>
	  <td>2.260839</td>
	</tr>
	<tr>
	  <th>3.25</th>
	  <td>0.526291</td>
	  <td>0.241403</td>
	  <td>0.654826</td>
	  <td>2.502241</td>
	</tr>
	<tr>
	  <th>3.50</th>
	  <td>0.522808</td>
	  <td>0.238785</td>
	  <td>0.630635</td>
	  <td>2.741026</td>
	</tr>
	<tr>
	  <th>3.75</th>
	  <td>0.518051</td>
	  <td>0.235070</td>
	  <td>0.595931</td>
	  <td>2.976096</td>
	</tr>
	<tr>
	  <th>4.00</th>
	  <td>0.511854</td>
	  <td>0.226155</td>
	  <td>0.567126</td>
	  <td>3.202251</td>
	</tr>
	<tr>
	  <th>4.25</th>
	  <td>0.504189</td>
	  <td>0.212647</td>
	  <td>0.542811</td>
	  <td>3.414897</td>
	</tr>
	<tr>
	  <th>4.50</th>
	  <td>0.495577</td>
	  <td>0.206400</td>
	  <td>0.498209</td>
	  <td>3.621298</td>
	</tr>
	<tr>
	  <th>4.75</th>
	  <td>0.486673</td>
	  <td>0.210778</td>
	  <td>0.441318</td>
	  <td>3.832076</td>
	</tr>
	<tr>
	  <th>5.00</th>
	  <td>0.478134</td>
	  <td>0.181781</td>
	  <td>0.410321</td>
	  <td>4.013857</td>
	</tr>
	<tr>
	  <th>5.25</th>
	  <td>0.470423</td>
	  <td>0.211755</td>
	  <td>0.416757</td>
	  <td>4.225611</td>
	</tr>
	<tr>
	  <th>5.50</th>
	  <td>0.463238</td>
	  <td>0.207224</td>
	  <td>0.418988</td>
	  <td>4.432836</td>
	</tr>
	<tr>
	  <th>5.75</th>
	  <td>0.456080</td>
	  <td>0.200699</td>
	  <td>0.409585</td>
	  <td>4.633535</td>
	</tr>
	<tr>
	  <th>6.00</th>
	  <td>0.448453</td>
	  <td>0.191437</td>
	  <td>0.386185</td>
	  <td>4.824972</td>
	</tr>
	<tr>
	  <th>6.25</th>
	  <td>0.440053</td>
	  <td>0.180125</td>
	  <td>0.351970</td>
	  <td>5.005097</td>
	</tr>
	<tr>
	  <th>6.50</th>
	  <td>0.431347</td>
	  <td>0.172304</td>
	  <td>0.324999</td>
	  <td>5.177401</td>
	</tr>
	<tr>
	  <th>6.75</th>
	  <td>0.422995</td>
	  <td>0.170503</td>
	  <td>0.311119</td>
	  <td>5.347904</td>
	</tr>
	<tr>
	  <th>7.00</th>
	  <td>0.415655</td>
	  <td>0.176115</td>
	  <td>0.312208</td>
	  <td>5.524019</td>
	</tr>
	<tr>
	  <th>7.25</th>
	  <td>0.409783</td>
	  <td>0.188235</td>
	  <td>0.326175</td>
	  <td>5.712254</td>
	</tr>
	<tr>
	  <th>7.50</th>
	  <td>0.405008</td>
	  <td>0.197968</td>
	  <td>0.336283</td>
	  <td>5.910222</td>
	</tr>
	<tr>
	  <th>7.75</th>
	  <td>0.400756</td>
	  <td>0.201893</td>
	  <td>0.336388</td>
	  <td>6.112115</td>
	</tr>
	<tr>
	  <th>8.00</th>
	  <td>0.396449</td>
	  <td>0.198695</td>
	  <td>0.324554</td>
	  <td>6.310810</td>
	</tr>
	<tr>
	  <th>8.25</th>
	  <td>0.391648</td>
	  <td>0.188932</td>
	  <td>0.302276</td>
	  <td>6.499742</td>
	</tr>
	<tr>
	  <th>8.50</th>
	  <td>0.386443</td>
	  <td>0.179509</td>
	  <td>0.281297</td>
	  <td>6.679251</td>
	</tr>
	<tr>
	  <th>8.75</th>
	  <td>0.381060</td>
	  <td>0.172698</td>
	  <td>0.265138</td>
	  <td>6.851949</td>
	</tr>
	<tr>
	  <th>9.00</th>
	  <td>0.375725</td>
	  <td>0.169038</td>
	  <td>0.254407</td>
	  <td>7.020987</td>
	</tr>
	<tr>
	  <th>9.25</th>
	  <td>0.370662</td>
	  <td>0.169088</td>
	  <td>0.249764</td>
	  <td>7.190075</td>
	</tr>
	<tr>
	  <th>9.50</th>
	  <td>0.366096</td>
	  <td>0.173424</td>
	  <td>0.251935</td>
	  <td>7.363499</td>
	</tr>
	<tr>
	  <th>9.75</th>
	  <td>0.362254</td>
	  <td>0.182637</td>
	  <td>0.261747</td>
	  <td>7.546136</td>
	</tr>
	<tr>
	  <th>10.00</th>
	  <td>0.359361</td>
	  <td>0.197318</td>
	  <td>0.280172</td>
	  <td>7.743454</td>
	</tr>
  </tbody>
</table>
</div>

```python
quotes = curves['discounts']*100

sigmas = capcurves['fwd vols']
sigmas.iloc[0] = sigmas.iloc[1]
sigmas.index = sigmas.index.to_numpy().round(6)

tsteps = round(Tmat * FREQ)

theta, ratetree = estimate_theta(sigmas.iloc[:tsteps+1],quotes.iloc[:tsteps+1])
```

```python
discounts = quotes.loc[:Tmat]/100
#discounts.index = discounts.index.to_numpy().round(6)
discounts.name = 'discount'

params = pd.concat([discounts,sigmas,theta],axis=1,join='inner')
params.index.name = 'maturity'
params.rename(columns={'fwd vols':'fwd vol'},inplace=True)
```

## Save Data

```python
if SAVEDATA:
    outfile = f'../build_data/bdt_params_freq{FREQ}_{DATE}.xlsx'
    with pd.ExcelWriter(outfile) as writer:  
        params.to_excel(writer, sheet_name= 'parameters', index=True)
```

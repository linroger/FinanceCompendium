---
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Build Data Multi-Asset ETFs
---

# Build Data Multi-Asset ETFs

```python
import pandas as pd
import numpy as np

import yfinance as yf
```

```python
TICKS = [
    'SPY',
    'EFA',
    'EEM',
    'PSP',
    'QAI',
    'HYG',
    'DBC',
    'IYR',
    'IEF',
    'BWX',
    'TIP',
    'SHV',
]

FLDS = ['shortName','quoteType','currency','volume','totalAssets','longBusinessSummary']
```

```python
info = pd.DataFrame(index=TICKS,columns=FLDS)
info.index.name = 'ticker'
for tick in info.index:
    temp = yf.Ticker(tick).get_info()

    for fld in FLDS:
        if fld in temp.keys():
            info.loc[tick,fld] = temp[fld]
```

```python
info
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
	  <th>shortName</th>
	  <th>quoteType</th>
	  <th>currency</th>
	  <th>volume</th>
	  <th>totalAssets</th>
	  <th>longBusinessSummary</th>
	</tr>
	<tr>
	  <th>ticker</th>
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
	  <th>SPY</th>
	  <td>SPDR S&amp;P 500</td>
	  <td>ETF</td>
	  <td>USD</td>
	  <td>101107853</td>
	  <td>358229114880</td>
	  <td>The Trust seeks to achieve its investment obje…</td>
	</tr>
	<tr>
	  <th>EFA</th>
	  <td>iShares MSCI EAFE ETF</td>
	  <td>ETF</td>
	  <td>USD</td>
	  <td>33352872</td>
	  <td>43798241280</td>
	  <td>The fund generally will invest at least 80% of…</td>
	</tr>
	<tr>
	  <th>EEM</th>
	  <td>iShares MSCI Emerging Index Fun</td>
	  <td>ETF</td>
	  <td>USD</td>
	  <td>47539498</td>
	  <td>25870192640</td>
	  <td>The fund generally will invest at least 80% of…</td>
	</tr>
	<tr>
	  <th>PSP</th>
	  <td>Invesco Global Listed Private E</td>
	  <td>ETF</td>
	  <td>USD</td>
	  <td>120371</td>
	  <td>171932880</td>
	  <td>The fund generally will invest at least 90% of…</td>
	</tr>
	<tr>
	  <th>QAI</th>
	  <td>IQ Hedge MultiIQ Hedge Multi-St</td>
	  <td>ETF</td>
	  <td>USD</td>
	  <td>138713</td>
	  <td>707315584</td>
	  <td>The fund is a "fund of funds" which means it i…</td>
	</tr>
	<tr>
	  <th>HYG</th>
	  <td>iShares iBoxx $ High Yield Corp</td>
	  <td>ETF</td>
	  <td>USD</td>
	  <td>48935762</td>
	  <td>12276870144</td>
	  <td>The underlying index is a rules-based index co…</td>
	</tr>
	<tr>
	  <th>DBC</th>
	  <td>Invesco DB Commodity Index Trac</td>
	  <td>ETF</td>
	  <td>USD</td>
	  <td>2314311</td>
	  <td>3708376064</td>
	  <td>The fund pursues its investment objective by i…</td>
	</tr>
	<tr>
	  <th>IYR</th>
	  <td>iShares U.S. Real Estate ETF</td>
	  <td>ETF</td>
	  <td>USD</td>
	  <td>12097258</td>
	  <td>4077254400</td>
	  <td>The fund seeks to track the investment results…</td>
	</tr>
	<tr>
	  <th>IEF</th>
	  <td>iShares 7-10 Year Treasury Bond</td>
	  <td>ETF</td>
	  <td>USD</td>
	  <td>7992450</td>
	  <td>23017226240</td>
	  <td>The underlying index measures the performance …</td>
	</tr>
	<tr>
	  <th>BWX</th>
	  <td>SPDR Bloomberg International Tr</td>
	  <td>ETF</td>
	  <td>USD</td>
	  <td>369873</td>
	  <td>809217792</td>
	  <td>The fund generally invests substantially all, …</td>
	</tr>
	<tr>
	  <th>TIP</th>
	  <td>iShares TIPS Bond ETF</td>
	  <td>ETF</td>
	  <td>USD</td>
	  <td>2875478</td>
	  <td>29620422656</td>
	  <td>The fund will invest at least 80% of its asset…</td>
	</tr>
	<tr>
	  <th>SHV</th>
	  <td>iShares Short Treasury Bond ETF</td>
	  <td>ETF</td>
	  <td>USD</td>
	  <td>3140935</td>
	  <td>19234586624</td>
	  <td>The fund will invest at least 80% of its asset…</td>
	</tr>
  </tbody>
</table>
</div>

```python
# info = pd.DataFrame(columns=['ETF Description'])
# info.loc['SPY'] = 'Domestic Equity SPDR S&P500'
# info.loc['EFA'] = 'Foreign Equity iShares EAFE'
# info.loc['EEM'] = 'iShares Emerging Markets'
# info.loc['PSP'] = 'Private Equity Invesco Global Private Equity'
# info.loc['QAI'] = 'Absolute Return IQ Multi-Strat'
# info.loc['HYG'] = 'High Yield iShares High Yield Corporate Bond'
# info.loc['DBC'] = 'Invesco DB Commodity Index Tracking Fund'
# info.loc['IYR'] = 'Real Estate iShares US Real Estate'
# info.loc['IEF'] = 'Domestic Bonds iShares 7-10 Year Treasury'
# info.loc['BWX'] = 'Foreign Bonds SPDR Bloomberg Barclay International Treasury'
# info.loc['TIP'] = 'Inflation-Indexed iShares TIPS Bond'
# info.loc['SHV'] = 'iShares Short Treasury Bond'
# info
```

```python
STARTDATE = '2009-03-31'
ENDDATE = '2022-08-31'

tickers = list(info.index.values)
df = yf.download(tickers, start=STARTDATE, end=ENDDATE)['Adj Close']
```

    [*********************100%***********************]  12 of 12 completed

```python
prices = df.resample('M').last()

rets = prices.pct_change().dropna()

# change to excess returns, in excess of short-term treasury
retsx = rets.subtract(rets['SHV'], axis=0)
retsx = retsx.drop(columns=['SHV'])
```

```python
rets
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
	  <th>BWX</th>
	  <th>DBC</th>
	  <th>EEM</th>
	  <th>EFA</th>
	  <th>HYG</th>
	  <th>IEF</th>
	  <th>IYR</th>
	  <th>PSP</th>
	  <th>QAI</th>
	  <th>SHV</th>
	  <th>SPY</th>
	  <th>TIP</th>
	</tr>
	<tr>
	  <th>Date</th>
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
	  <th>2009-04-30</th>
	  <td>0.008993</td>
	  <td>-0.001000</td>
	  <td>0.155582</td>
	  <td>0.115190</td>
	  <td>0.138460</td>
	  <td>-0.027452</td>
	  <td>0.296151</td>
	  <td>0.230202</td>
	  <td>0.022882</td>
	  <td>0.000554</td>
	  <td>0.099346</td>
	  <td>-0.017952</td>
	</tr>
	<tr>
	  <th>2009-05-31</th>
	  <td>0.053672</td>
	  <td>0.162663</td>
	  <td>0.159400</td>
	  <td>0.131918</td>
	  <td>0.028555</td>
	  <td>-0.020773</td>
	  <td>0.022727</td>
	  <td>0.053892</td>
	  <td>0.027865</td>
	  <td>-0.000472</td>
	  <td>0.058454</td>
	  <td>0.019967</td>
	</tr>
	<tr>
	  <th>2009-06-30</th>
	  <td>0.005149</td>
	  <td>-0.026259</td>
	  <td>-0.022495</td>
	  <td>-0.014050</td>
	  <td>0.033516</td>
	  <td>-0.005572</td>
	  <td>-0.024863</td>
	  <td>0.045449</td>
	  <td>-0.003436</td>
	  <td>0.000599</td>
	  <td>-0.000655</td>
	  <td>0.001982</td>
	</tr>
	<tr>
	  <th>2009-07-31</th>
	  <td>0.031284</td>
	  <td>0.018568</td>
	  <td>0.110146</td>
	  <td>0.100415</td>
	  <td>0.069191</td>
	  <td>0.008317</td>
	  <td>0.105799</td>
	  <td>0.143247</td>
	  <td>0.015326</td>
	  <td>-0.000027</td>
	  <td>0.074606</td>
	  <td>0.000879</td>
	</tr>
	<tr>
	  <th>2009-08-31</th>
	  <td>0.007628</td>
	  <td>-0.040365</td>
	  <td>-0.013136</td>
	  <td>0.045031</td>
	  <td>-0.016969</td>
	  <td>0.007635</td>
	  <td>0.131939</td>
	  <td>0.033413</td>
	  <td>-0.004151</td>
	  <td>0.000436</td>
	  <td>0.036939</td>
	  <td>0.008413</td>
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
	  <td>…</td>
	  <td>…</td>
	</tr>
	<tr>
	  <th>2022-04-30</th>
	  <td>-0.069696</td>
	  <td>0.056408</td>
	  <td>-0.061351</td>
	  <td>-0.067391</td>
	  <td>-0.041803</td>
	  <td>-0.042283</td>
	  <td>-0.041305</td>
	  <td>-0.125679</td>
	  <td>-0.033398</td>
	  <td>-0.000290</td>
	  <td>-0.087769</td>
	  <td>-0.021831</td>
	</tr>
	<tr>
	  <th>2022-05-31</th>
	  <td>0.005460</td>
	  <td>0.046131</td>
	  <td>0.006135</td>
	  <td>0.019959</td>
	  <td>0.016299</td>
	  <td>0.006184</td>
	  <td>-0.044434</td>
	  <td>0.015084</td>
	  <td>-0.004025</td>
	  <td>0.000663</td>
	  <td>0.002257</td>
	  <td>-0.009922</td>
	</tr>
	<tr>
	  <th>2022-06-30</th>
	  <td>-0.046443</td>
	  <td>-0.075000</td>
	  <td>-0.051577</td>
	  <td>-0.087666</td>
	  <td>-0.070499</td>
	  <td>-0.008634</td>
	  <td>-0.068911</td>
	  <td>-0.132477</td>
	  <td>-0.033681</td>
	  <td>-0.000753</td>
	  <td>-0.082460</td>
	  <td>-0.031155</td>
	</tr>
	<tr>
	  <th>2022-07-31</th>
	  <td>0.020443</td>
	  <td>-0.019895</td>
	  <td>-0.003491</td>
	  <td>0.051688</td>
	  <td>0.066989</td>
	  <td>0.029615</td>
	  <td>0.088606</td>
	  <td>0.108961</td>
	  <td>0.018822</td>
	  <td>0.000882</td>
	  <td>0.092087</td>
	  <td>0.043098</td>
	</tr>
	<tr>
	  <th>2022-08-31</th>
	  <td>-0.051172</td>
	  <td>0.006128</td>
	  <td>-0.016767</td>
	  <td>-0.054778</td>
	  <td>-0.037825</td>
	  <td>-0.034538</td>
	  <td>-0.054829</td>
	  <td>-0.080808</td>
	  <td>-0.008553</td>
	  <td>0.001282</td>
	  <td>-0.033447</td>
	  <td>-0.018330</td>
	</tr>
  </tbody>
</table>
<p>161 rows × 12 columns</p>
</div>

```python
retsx
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
	  <th>BWX</th>
	  <th>DBC</th>
	  <th>EEM</th>
	  <th>EFA</th>
	  <th>HYG</th>
	  <th>IEF</th>
	  <th>IYR</th>
	  <th>PSP</th>
	  <th>QAI</th>
	  <th>SPY</th>
	  <th>TIP</th>
	</tr>
	<tr>
	  <th>Date</th>
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
	  <th>2009-04-30</th>
	  <td>0.008439</td>
	  <td>-0.001554</td>
	  <td>0.155028</td>
	  <td>0.114636</td>
	  <td>0.137906</td>
	  <td>-0.028006</td>
	  <td>0.295597</td>
	  <td>0.229649</td>
	  <td>0.022329</td>
	  <td>0.098792</td>
	  <td>-0.018505</td>
	</tr>
	<tr>
	  <th>2009-05-31</th>
	  <td>0.054144</td>
	  <td>0.163134</td>
	  <td>0.159872</td>
	  <td>0.132390</td>
	  <td>0.029027</td>
	  <td>-0.020301</td>
	  <td>0.023199</td>
	  <td>0.054364</td>
	  <td>0.028337</td>
	  <td>0.058925</td>
	  <td>0.020438</td>
	</tr>
	<tr>
	  <th>2009-06-30</th>
	  <td>0.004549</td>
	  <td>-0.026858</td>
	  <td>-0.023094</td>
	  <td>-0.014649</td>
	  <td>0.032917</td>
	  <td>-0.006171</td>
	  <td>-0.025462</td>
	  <td>0.044850</td>
	  <td>-0.004035</td>
	  <td>-0.001254</td>
	  <td>0.001383</td>
	</tr>
	<tr>
	  <th>2009-07-31</th>
	  <td>0.031312</td>
	  <td>0.018595</td>
	  <td>0.110173</td>
	  <td>0.100442</td>
	  <td>0.069218</td>
	  <td>0.008344</td>
	  <td>0.105826</td>
	  <td>0.143274</td>
	  <td>0.015353</td>
	  <td>0.074633</td>
	  <td>0.000906</td>
	</tr>
	<tr>
	  <th>2009-08-31</th>
	  <td>0.007193</td>
	  <td>-0.040800</td>
	  <td>-0.013571</td>
	  <td>0.044595</td>
	  <td>-0.017404</td>
	  <td>0.007200</td>
	  <td>0.131503</td>
	  <td>0.032977</td>
	  <td>-0.004586</td>
	  <td>0.036504</td>
	  <td>0.007977</td>
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
	  <td>…</td>
	</tr>
	<tr>
	  <th>2022-04-30</th>
	  <td>-0.069406</td>
	  <td>0.056699</td>
	  <td>-0.061061</td>
	  <td>-0.067101</td>
	  <td>-0.041513</td>
	  <td>-0.041992</td>
	  <td>-0.041014</td>
	  <td>-0.125389</td>
	  <td>-0.033108</td>
	  <td>-0.087479</td>
	  <td>-0.021540</td>
	</tr>
	<tr>
	  <th>2022-05-31</th>
	  <td>0.004797</td>
	  <td>0.045469</td>
	  <td>0.005472</td>
	  <td>0.019297</td>
	  <td>0.015637</td>
	  <td>0.005521</td>
	  <td>-0.045096</td>
	  <td>0.014422</td>
	  <td>-0.004688</td>
	  <td>0.001595</td>
	  <td>-0.010585</td>
	</tr>
	<tr>
	  <th>2022-06-30</th>
	  <td>-0.045689</td>
	  <td>-0.074247</td>
	  <td>-0.050823</td>
	  <td>-0.086913</td>
	  <td>-0.069745</td>
	  <td>-0.007881</td>
	  <td>-0.068158</td>
	  <td>-0.131723</td>
	  <td>-0.032928</td>
	  <td>-0.081707</td>
	  <td>-0.030402</td>
	</tr>
	<tr>
	  <th>2022-07-31</th>
	  <td>0.019562</td>
	  <td>-0.020776</td>
	  <td>-0.004373</td>
	  <td>0.050807</td>
	  <td>0.066107</td>
	  <td>0.028733</td>
	  <td>0.087725</td>
	  <td>0.108080</td>
	  <td>0.017940</td>
	  <td>0.091206</td>
	  <td>0.042217</td>
	</tr>
	<tr>
	  <th>2022-08-31</th>
	  <td>-0.052454</td>
	  <td>0.004846</td>
	  <td>-0.018049</td>
	  <td>-0.056060</td>
	  <td>-0.039106</td>
	  <td>-0.035820</td>
	  <td>-0.056111</td>
	  <td>-0.082090</td>
	  <td>-0.009835</td>
	  <td>-0.034729</td>
	  <td>-0.019612</td>
	</tr>
  </tbody>
</table>
<p>161 rows × 11 columns</p>
</div>

```python
with pd.ExcelWriter('../data/multi_asset_etf_data_v2.xlsx') as writer:  
    info.to_excel(writer, sheet_name= 'descriptions')
    prices.to_excel(writer, sheet_name= 'prices')
    rets.to_excel(writer, sheet_name='total returns')
    retsx.to_excel(writer, sheet_name='excess returns')
```

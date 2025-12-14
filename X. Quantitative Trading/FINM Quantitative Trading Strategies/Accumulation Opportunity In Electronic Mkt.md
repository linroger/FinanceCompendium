---
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Accumulation Opportunity In Electronic Mkt
---

# Accumulation Opportunity In Electronic Mkt
## Homework 4: Accumulation Opportunity - Jingwen Li

```python
import matplotlib.pyplot as plt
import pandas as pd
import numpy as np
import scipy as sp
from datetime import datetime
import random
import quandl
import functools
import seaborn as sns
import nasdaqdatalink as ndl
from sklearn.linear_model import LinearRegression
from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_squared_error, r2_score
from scipy.stats import norm, pearsonr, zscore
from statsmodels.tsa.stattools import adfuller
```

To do:

- Load the high-frequency data for the 3 pairs and understand the data structure.
- Implement a VWAP participation algorithm that takes target quantity Q, start time τs, and target participation rate p as parameters. The algorithm should simulate the accumulation possible for a VWAP starting at time τs, both for buying (positive Q) and selling (negative Q).
- Use actual signed trading volumes to judge simulated accumulation and make the conservative assumption that in a flurry of trades, only the worst trade was available for participation.
- Assume transaction fees of 50 basis points for trades between crypto-tokens and traditional currencies and 10 basis points for trades between cryptotokens.
- Analyze and contrast the accumulation opportunities available in the crypto-token markets in 2021, 2022, and 2023. Concentrate on transactions that finish in 1-15 minutes or so.
- Consider metrics such as Notional, trading costs as a proportion of notional, average price of accumulated positions vs arrival prices, relationship between Q and the likelihood of completing the entire quantity, and deviation from expected accumulation rate.
- Write a report that summarizes the findings and includes visualizations, such as graphs and charts, to support the analysis.

### 1. Collect data and set index

```python
t_BTC_USD_2023 = pd.read_csv("data/trades_narrow_BTC-USD_2023.delim", delimiter = '\t')
t_ETH_BTC_2023 = pd.read_csv("data/trades_narrow_ETH-BTC_2023.delim", delimiter = '\t')
t_ETH_USD_2023 = pd.read_csv("data/trades_narrow_ETH-USD_2023.delim", delimiter = '\t')
t_BTC_USD_2022 = pd.read_csv("data/trades_narrow_BTC-USD_2022.delim", delimiter = '\t')
t_ETH_BTC_2022 = pd.read_csv("data/trades_narrow_ETH-BTC_2022.delim", delimiter = '\t')
t_ETH_USD_2022 = pd.read_csv("data/trades_narrow_ETH-USD_2022.delim", delimiter = '\t')
t_BTC_USD_2021 = pd.read_csv("data/trades_narrow_BTC-USD_2021.delim", delimiter = '\t')
t_ETH_BTC_2021 = pd.read_csv("data/trades_narrow_ETH-BTC_2021.delim", delimiter = '\t')
t_ETH_USD_2021 = pd.read_csv("data/trades_narrow_ETH-USD_2021.delim", delimiter = '\t')
```

```python
t_BTC_USD_2023.index = pd.to_datetime((t_BTC_USD_2023['timestamp_utc_nanoseconds']/10**9).round(1), unit='s')
t_BTC_USD_2023.index = t_BTC_USD_2023.index.rename('time')
t_ETH_BTC_2023.index = pd.to_datetime((t_ETH_BTC_2023['timestamp_utc_nanoseconds']/10**9).round(1), unit='s')
t_ETH_BTC_2023.index = t_ETH_BTC_2023.index.rename('time')
t_ETH_USD_2023.index = pd.to_datetime((t_ETH_USD_2023['timestamp_utc_nanoseconds']/10**9).round(1), unit='s')
t_ETH_USD_2023.index = t_ETH_USD_2023.index.rename('time')
t_BTC_USD_2022.index = pd.to_datetime((t_BTC_USD_2022['timestamp_utc_nanoseconds']/10**9).round(1), unit='s')
t_BTC_USD_2022.index = t_BTC_USD_2022.index.rename('time')
t_ETH_BTC_2022.index = pd.to_datetime((t_ETH_BTC_2022['timestamp_utc_nanoseconds']/10**9).round(1), unit='s')
t_ETH_BTC_2022.index = t_ETH_BTC_2022.index.rename('time')
t_ETH_USD_2022.index = pd.to_datetime((t_ETH_USD_2022['timestamp_utc_nanoseconds']/10**9).round(1), unit='s')
t_ETH_USD_2022.index = t_ETH_USD_2022.index.rename('time')
t_BTC_USD_2021.index = pd.to_datetime((t_BTC_USD_2021['timestamp_utc_nanoseconds']/10**9).round(1), unit='s')
t_BTC_USD_2021.index = t_BTC_USD_2021.index.rename('time')
t_ETH_BTC_2021.index = pd.to_datetime((t_ETH_BTC_2021['timestamp_utc_nanoseconds']/10**9).round(1), unit='s')
t_ETH_BTC_2021.index = t_ETH_BTC_2021.index.rename('time')
t_ETH_USD_2021.index = pd.to_datetime((t_ETH_USD_2021['timestamp_utc_nanoseconds']/10**9).round(1), unit='s')
t_ETH_USD_2021.index = t_ETH_USD_2021.index.rename('time')
```

```python
t_BTC_USD_2021.head()
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
	  <th>received_utc_nanoseconds</th>
	  <th>timestamp_utc_nanoseconds</th>
	  <th>PriceMillionths</th>
	  <th>SizeBillionths</th>
	  <th>Side</th>
	</tr>
	<tr>
	  <th>time</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2021-04-10 21:28:52.500</th>
	  <td>1618090136118837000</td>
	  <td>1618090132515484000</td>
	  <td>59120710000</td>
	  <td>9701240</td>
	  <td>-1.0</td>
	</tr>
	<tr>
	  <th>2021-04-10 21:28:52.500</th>
	  <td>1618090136118594000</td>
	  <td>1618090132515484000</td>
	  <td>59125070000</td>
	  <td>8122450</td>
	  <td>-3.0</td>
	</tr>
	<tr>
	  <th>2021-04-10 21:28:53.000</th>
	  <td>1618090136147838000</td>
	  <td>1618090132989553000</td>
	  <td>59119950000</td>
	  <td>6563880</td>
	  <td>-1.0</td>
	</tr>
	<tr>
	  <th>2021-04-10 21:28:53.000</th>
	  <td>1618090136147583000</td>
	  <td>1618090132989553000</td>
	  <td>59125070000</td>
	  <td>614120</td>
	  <td>-1.0</td>
	</tr>
	<tr>
	  <th>2021-04-10 21:28:53.100</th>
	  <td>1618090136153326000</td>
	  <td>1618090133074765000</td>
	  <td>59119950000</td>
	  <td>16995890</td>
	  <td>-1.0</td>
	</tr>
  </tbody>
</table>
</div>

```python
t_BTC_USD_2022.head()
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
	  <th>received_utc_nanoseconds</th>
	  <th>timestamp_utc_nanoseconds</th>
	  <th>PriceMillionths</th>
	  <th>SizeBillionths</th>
	  <th>Side</th>
	</tr>
	<tr>
	  <th>time</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2022-01-29 21:02:49.600</th>
	  <td>1643490176220148000</td>
	  <td>1643490169574850000</td>
	  <td>38383380000</td>
	  <td>938300</td>
	  <td>1.0</td>
	</tr>
	<tr>
	  <th>2022-01-29 21:02:49.600</th>
	  <td>1643490176220541000</td>
	  <td>1643490169574850000</td>
	  <td>38387760000</td>
	  <td>8937830</td>
	  <td>1.0</td>
	</tr>
	<tr>
	  <th>2022-01-29 21:02:49.600</th>
	  <td>1643490176220914000</td>
	  <td>1643490169574850000</td>
	  <td>38387770000</td>
	  <td>46454510</td>
	  <td>1.0</td>
	</tr>
	<tr>
	  <th>2022-01-29 21:02:49.600</th>
	  <td>1643490176221462000</td>
	  <td>1643490169574850000</td>
	  <td>38388960000</td>
	  <td>14455400</td>
	  <td>2.0</td>
	</tr>
	<tr>
	  <th>2022-01-29 21:02:49.600</th>
	  <td>1643490176221856000</td>
	  <td>1643490169574850000</td>
	  <td>38390720000</td>
	  <td>33673620</td>
	  <td>1.0</td>
	</tr>
  </tbody>
</table>
</div>

```python
t_BTC_USD_2023.head()
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
	  <th>received_utc_nanoseconds</th>
	  <th>timestamp_utc_nanoseconds</th>
	  <th>PriceMillionths</th>
	  <th>SizeBillionths</th>
	  <th>Side</th>
	</tr>
	<tr>
	  <th>time</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2023-01-24 00:47:47.900</th>
	  <td>1674521267814309000</td>
	  <td>1674521267874527000</td>
	  <td>22970120000</td>
	  <td>87069600</td>
	  <td>-1</td>
	</tr>
	<tr>
	  <th>2023-01-24 00:47:47.900</th>
	  <td>1674521267814046000</td>
	  <td>1674521267874527000</td>
	  <td>22970150000</td>
	  <td>25797600</td>
	  <td>-1</td>
	</tr>
	<tr>
	  <th>2023-01-24 00:47:47.900</th>
	  <td>1674521267817981000</td>
	  <td>1674521267878712000</td>
	  <td>22970120000</td>
	  <td>10</td>
	  <td>-1</td>
	</tr>
	<tr>
	  <th>2023-01-24 00:47:47.900</th>
	  <td>1674521267822734000</td>
	  <td>1674521267886114000</td>
	  <td>22969160000</td>
	  <td>217683140</td>
	  <td>-1</td>
	</tr>
	<tr>
	  <th>2023-01-24 00:47:48.700</th>
	  <td>1674521274845338000</td>
	  <td>1674521268676444000</td>
	  <td>22969840000</td>
	  <td>10000000</td>
	  <td>1</td>
	</tr>
  </tbody>
</table>
</div>

```python
t_ETH_BTC_2021.head()
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
	  <th>received_utc_nanoseconds</th>
	  <th>timestamp_utc_nanoseconds</th>
	  <th>PriceMillionths</th>
	  <th>SizeBillionths</th>
	  <th>Side</th>
	</tr>
	<tr>
	  <th>time</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2021-04-10 21:28:57.200</th>
	  <td>1618090137140737000</td>
	  <td>1618090137157544000</td>
	  <td>35690</td>
	  <td>1000000</td>
	  <td>-1</td>
	</tr>
	<tr>
	  <th>2021-04-10 21:28:57.900</th>
	  <td>1618090137851379000</td>
	  <td>1618090137864544000</td>
	  <td>35700</td>
	  <td>29801980</td>
	  <td>2</td>
	</tr>
	<tr>
	  <th>2021-04-10 21:29:03.800</th>
	  <td>1618090143777062000</td>
	  <td>1618090143793909000</td>
	  <td>35700</td>
	  <td>4641070</td>
	  <td>1</td>
	</tr>
	<tr>
	  <th>2021-04-10 21:29:15.100</th>
	  <td>1618090155038792000</td>
	  <td>1618090155053606000</td>
	  <td>35710</td>
	  <td>1000000</td>
	  <td>1</td>
	</tr>
	<tr>
	  <th>2021-04-10 21:29:15.100</th>
	  <td>1618090155039208000</td>
	  <td>1618090155053606000</td>
	  <td>35720</td>
	  <td>231355690</td>
	  <td>1</td>
	</tr>
  </tbody>
</table>
</div>

```python
t_ETH_BTC_2022.head()
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
	  <th>received_utc_nanoseconds</th>
	  <th>timestamp_utc_nanoseconds</th>
	  <th>PriceMillionths</th>
	  <th>SizeBillionths</th>
	  <th>Side</th>
	</tr>
	<tr>
	  <th>time</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2022-01-29 21:02:56.300</th>
	  <td>1643490177250456000</td>
	  <td>1643490176287757000</td>
	  <td>67880</td>
	  <td>256000000</td>
	  <td>-1</td>
	</tr>
	<tr>
	  <th>2022-01-29 21:03:05.000</th>
	  <td>1643490184978296000</td>
	  <td>1643490185017857000</td>
	  <td>67870</td>
	  <td>74722230</td>
	  <td>-1</td>
	</tr>
	<tr>
	  <th>2022-01-29 21:03:07.300</th>
	  <td>1643490187267674000</td>
	  <td>1643490187304295000</td>
	  <td>67870</td>
	  <td>26379060</td>
	  <td>-1</td>
	</tr>
	<tr>
	  <th>2022-01-29 21:03:13.000</th>
	  <td>1643490192951092000</td>
	  <td>1643490192993855000</td>
	  <td>67900</td>
	  <td>170429010</td>
	  <td>1</td>
	</tr>
	<tr>
	  <th>2022-01-29 21:03:14.700</th>
	  <td>1643490194685860000</td>
	  <td>1643490194726940000</td>
	  <td>67890</td>
	  <td>650000000</td>
	  <td>1</td>
	</tr>
  </tbody>
</table>
</div>

```python
t_ETH_BTC_2023.head()
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
	  <th>received_utc_nanoseconds</th>
	  <th>timestamp_utc_nanoseconds</th>
	  <th>PriceMillionths</th>
	  <th>SizeBillionths</th>
	  <th>Side</th>
	</tr>
	<tr>
	  <th>time</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2023-01-24 00:49:06.000</th>
	  <td>1674521345955989000</td>
	  <td>1674521346020758000</td>
	  <td>70950</td>
	  <td>259656510</td>
	  <td>1</td>
	</tr>
	<tr>
	  <th>2023-01-24 00:49:06.100</th>
	  <td>1674521345984460000</td>
	  <td>1674521346050573000</td>
	  <td>70950</td>
	  <td>140800</td>
	  <td>1</td>
	</tr>
	<tr>
	  <th>2023-01-24 00:49:08.200</th>
	  <td>1674521348097555000</td>
	  <td>1674521348159815000</td>
	  <td>70950</td>
	  <td>53582550</td>
	  <td>-1</td>
	</tr>
	<tr>
	  <th>2023-01-24 00:49:12.600</th>
	  <td>1674521352535174000</td>
	  <td>1674521352601911000</td>
	  <td>70940</td>
	  <td>207220</td>
	  <td>-1</td>
	</tr>
	<tr>
	  <th>2023-01-24 00:52:26.200</th>
	  <td>1674521546128872000</td>
	  <td>1674521546201920000</td>
	  <td>70950</td>
	  <td>990630</td>
	  <td>1</td>
	</tr>
  </tbody>
</table>
</div>

```python
t_ETH_USD_2021.head()
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
	  <th>received_utc_nanoseconds</th>
	  <th>timestamp_utc_nanoseconds</th>
	  <th>PriceMillionths</th>
	  <th>SizeBillionths</th>
	  <th>Side</th>
	</tr>
	<tr>
	  <th>time</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2021-04-10 21:28:54.500</th>
	  <td>1618090136259046000</td>
	  <td>1618090134547039000</td>
	  <td>2109000000</td>
	  <td>499500000</td>
	  <td>1</td>
	</tr>
	<tr>
	  <th>2021-04-10 21:28:54.800</th>
	  <td>1618090136280332000</td>
	  <td>1618090134797956000</td>
	  <td>2109000000</td>
	  <td>36208850</td>
	  <td>1</td>
	</tr>
	<tr>
	  <th>2021-04-10 21:28:55.100</th>
	  <td>1618090136304898000</td>
	  <td>1618090135123831000</td>
	  <td>2109000000</td>
	  <td>499500000</td>
	  <td>1</td>
	</tr>
	<tr>
	  <th>2021-04-10 21:28:55.700</th>
	  <td>1618090136346044000</td>
	  <td>1618090135704667000</td>
	  <td>2109000000</td>
	  <td>499400000</td>
	  <td>1</td>
	</tr>
	<tr>
	  <th>2021-04-10 21:28:56.300</th>
	  <td>1618090136376357000</td>
	  <td>1618090136302068000</td>
	  <td>2109000000</td>
	  <td>499400000</td>
	  <td>1</td>
	</tr>
  </tbody>
</table>
</div>

```python
t_ETH_USD_2022.head()
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
	  <th>received_utc_nanoseconds</th>
	  <th>timestamp_utc_nanoseconds</th>
	  <th>PriceMillionths</th>
	  <th>SizeBillionths</th>
	  <th>Side</th>
	</tr>
	<tr>
	  <th>time</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2022-01-29 21:02:52.800</th>
	  <td>1643490176650339000</td>
	  <td>1643490172762420000</td>
	  <td>2606090000</td>
	  <td>1536055000</td>
	  <td>2.0</td>
	</tr>
	<tr>
	  <th>2022-01-29 21:02:52.800</th>
	  <td>1643490176651244000</td>
	  <td>1643490172762420000</td>
	  <td>2606100000</td>
	  <td>140496630</td>
	  <td>1.0</td>
	</tr>
	<tr>
	  <th>2022-01-29 21:02:52.800</th>
	  <td>1643490176659440000</td>
	  <td>1643490172793495000</td>
	  <td>2606110000</td>
	  <td>187470760</td>
	  <td>1.0</td>
	</tr>
	<tr>
	  <th>2022-01-29 21:02:52.900</th>
	  <td>1643490176677238000</td>
	  <td>1643490172889867000</td>
	  <td>2606230000</td>
	  <td>183780950</td>
	  <td>1.0</td>
	</tr>
	<tr>
	  <th>2022-01-29 21:02:52.900</th>
	  <td>1643490176677480000</td>
	  <td>1643490172889867000</td>
	  <td>2606240000</td>
	  <td>154972040</td>
	  <td>1.0</td>
	</tr>
  </tbody>
</table>
</div>

```python
t_ETH_USD_2023.head()
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
	  <th>received_utc_nanoseconds</th>
	  <th>timestamp_utc_nanoseconds</th>
	  <th>PriceMillionths</th>
	  <th>SizeBillionths</th>
	  <th>Side</th>
	</tr>
	<tr>
	  <th>time</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2023-01-24 00:47:51.100</th>
	  <td>1674521275236165000</td>
	  <td>1674521271071902000</td>
	  <td>1629670000</td>
	  <td>11815210</td>
	  <td>-1</td>
	</tr>
	<tr>
	  <th>2023-01-24 00:47:51.400</th>
	  <td>1674521275287511000</td>
	  <td>1674521271398509000</td>
	  <td>1629770000</td>
	  <td>92158690</td>
	  <td>1</td>
	</tr>
	<tr>
	  <th>2023-01-24 00:47:51.400</th>
	  <td>1674521275288004000</td>
	  <td>1674521271398509000</td>
	  <td>1629780000</td>
	  <td>712594890</td>
	  <td>2</td>
	</tr>
	<tr>
	  <th>2023-01-24 00:47:51.400</th>
	  <td>1674521275288470000</td>
	  <td>1674521271398509000</td>
	  <td>1629790000</td>
	  <td>1016994240</td>
	  <td>2</td>
	</tr>
	<tr>
	  <th>2023-01-24 00:47:51.600</th>
	  <td>1674521275330683000</td>
	  <td>1674521271578052000</td>
	  <td>1629770000</td>
	  <td>92150000</td>
	  <td>1</td>
	</tr>
  </tbody>
</table>
</div>

Backgrounds:

Bitcoin (BTC) has consistently been the largest cryptocurrency by market capitalization, followed by Ethereum (ETH).

Liquidity is the ability of an asset to be bought and sold in the market without affecting its price. A more liquid asset is one that can be traded more easily and quickly, with a more consistent price. Generally, larger and more established markets, like Bitcoin, tend to have higher liquidity compared to smaller markets, like Ethereum.

However, this doesn't mean that Ethereum doesn't have significant liquidity. In recent years, Ethereum's ecosystem has grown significantly, with an increasing number of decentralized applications and token projects being built on its platform. This growth has attracted a lot of trading volume and investment into Ethereum, making it a more liquid market than many other cryptocurrencies.

### 2. Code VWAP Trading Strategy and Simulation

In high-frequency crypto trading, the use of VWAP (Volume Weighted Average Price) can serve several purposes:

Price discovery: VWAP helps traders determine the average price of a security based on its volume-weighted average price over the course of a trading day. This can serve as a benchmark for determining fair value in the market, especially in high-frequency trading where prices can be volatile and rapidly changing.

Trade execution: By using VWAP as a reference price, traders can make informed decisions about where to execute trades based on the current market conditions and the volume-weighted average price. This can help reduce market impact and slippage, particularly in high-frequency trading where there is a high volume of trades.

Benchmark performance: VWAP can be used to measure the performance of a trade by comparing the price at which the security was purchased to its volume-weighted average price. This can provide valuable insights into the success of a trading strategy and inform future decision-making.

Metrics consideration:

### 2.1 Build VWAP Trading Strategy to collect data for single trade

```python
def vwap_algo(data, Q, s, p, f):
    # Depends on the positive or negative sign of Q (buy or sell), keeping only the long or sell trades to the df table
    df = data[data['timestamp_utc_nanoseconds'] >= s]
    df = df[df['Side']*Q > 0]
    if Q < 0:
        df.sort_values(by=['timestamp_utc_nanoseconds','PriceMillionths'],ascending=[True, False],)


    # Initialize variables for keeping track of trades
    price = []
    current_price = 0
    remaining_target_quantity = abs(Q)
    total_notional = 0
    total_volume = 0
    total_tran_cost = 0
    total_cost = 0
    timestamp = 0
    total_market_value = 0
    total_market_volume = 0

    res = []


    # Loop through the filtered df and execute trades based on the VWAP strategy
    for i in range(len(df)-1):
            total_market_value += (df.iloc[i]['SizeBillionths'] / 1e9) * (df.iloc[i]['PriceMillionths'] / 1e6)
            total_market_volume += df.iloc[i]['SizeBillionths'] / 1e9
            market_vwap = total_market_value / total_market_volume
 
            if remaining_target_quantity > 0:
                if df.iloc[i]['timestamp_utc_nanoseconds']-timestamp >= 5e7 and df.iloc[i+1]['timestamp_utc_nanoseconds']-df.iloc[i]['timestamp_utc_nanoseconds'] >= 5e7:
                    current_price = df.iloc[i]['PriceMillionths'] / 1e6
                # Check if the trade is in the last position within 0.1 s
                    timestamp = df.iloc[i]['timestamp_utc_nanoseconds']
                    price.append(current_price)
                    quantity = min(remaining_target_quantity, df.iloc[i]['SizeBillionths'] / 1e9 * p)
                    notional = quantity * current_price
                    tran_cost = notional * f
                    cost = notional + tran_cost
                    total_volume += quantity
                    total_tran_cost += tran_cost
                    total_cost += cost
                    total_notional += notional
                    remaining_target_quantity -= quantity
                else:
                    continue   

            if remaining_target_quantity <= 0:
                #check if order complete within 15 mins
                if timestamp - s <= 9e11:
                    status = 1
                else:
                    status = 0
                res.append({'start time': s,'arrival price': price[0],'exist price': current_price, 'avg price':sum(price)/len(price), 'VWAP price': (total_notional/total_volume),'market VWAP price': market_vwap,  
            'total cost per quantity($)': (total_cost/total_volume), 'total transaction cost($)': total_tran_cost, 'total volume': total_volume,'notional': total_notional, 'transaction time (min)': ((timestamp - s)/6e10), 'status': status})
                return res

```

    Single trade demo

```python
t_BTC_USD_2021.head()
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
	  <th>received_utc_nanoseconds</th>
	  <th>timestamp_utc_nanoseconds</th>
	  <th>PriceMillionths</th>
	  <th>SizeBillionths</th>
	  <th>Side</th>
	</tr>
	<tr>
	  <th>time</th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	  <th></th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2021-04-10 21:28:52.500</th>
	  <td>1618090136118837000</td>
	  <td>1618090132515484000</td>
	  <td>59120710000</td>
	  <td>9701240</td>
	  <td>-1.0</td>
	</tr>
	<tr>
	  <th>2021-04-10 21:28:52.500</th>
	  <td>1618090136118594000</td>
	  <td>1618090132515484000</td>
	  <td>59125070000</td>
	  <td>8122450</td>
	  <td>-3.0</td>
	</tr>
	<tr>
	  <th>2021-04-10 21:28:53.000</th>
	  <td>1618090136147838000</td>
	  <td>1618090132989553000</td>
	  <td>59119950000</td>
	  <td>6563880</td>
	  <td>-1.0</td>
	</tr>
	<tr>
	  <th>2021-04-10 21:28:53.000</th>
	  <td>1618090136147583000</td>
	  <td>1618090132989553000</td>
	  <td>59125070000</td>
	  <td>614120</td>
	  <td>-1.0</td>
	</tr>
	<tr>
	  <th>2021-04-10 21:28:53.100</th>
	  <td>1618090136153326000</td>
	  <td>1618090133074765000</td>
	  <td>59119950000</td>
	  <td>16995890</td>
	  <td>-1.0</td>
	</tr>
  </tbody>
</table>
</div>

```python
demo = vwap_algo(t_BTC_USD_2021, 1, 1618090133470961000, 0.03, 0.005)
demo
```

    [{'start time': 1618090133470961000,
      'arrival price': 59122.08,
      'exist price': 59029.04,
      'avg price': 59080.76289431772,
      'VWAP price': 59083.61552570007,
      'market VWAP price': 59094.31662068677,
      'total cost per quantity($)': 59379.033603328506,
      'total transaction cost($)': 295.41807762849953,
      'total volume': 1.0000000000000018,
      'notional': 59083.615525700174,
      'transaction time (min)': 23.0821825536,
      'status': 0}]

### 2.2 Build simulation to loop through VWAP trade with sample

```python
#build a simulation literate through sample
def sample_simulation(data,quantity,participate_rate,transaction_fee, sample_size):
    sample = data.sample(sample_size).sort_index()
    trade_sum = []
    for i in range(sample_size):
        start_time = sample['timestamp_utc_nanoseconds'][i]
        trade = vwap_algo(data, Q = quantity, s=start_time, p = participate_rate, f = transaction_fee)
        trade_df = pd.DataFrame(trade)
        trade_sum.append(trade_df)
    trade_sum = pd.concat(trade_sum)
    trade_sum['start time'] = pd.to_datetime((trade_sum['start time']/10**9).round(1), unit='s')
    trade_sum.set_index('start time', inplace=True)  
    return trade_sum 
```

### 3 Simulation and Analysis

some analysis functions:

```python
#build a summary function to combine all the stats for buy and sell through 2021 to 2023
def mean_stat_summary(df1,df2,df3,df4,df5,df6):
    buy21 = df1.describe().loc[['mean']].rename({'mean':'2021 Buy'})
    buy22 = df2.describe().loc[['mean']].rename({'mean':'2022 Buy'})
    buy23 = df3.describe().loc[['mean']].rename({'mean':'2023 Buy'})
    sell21 = df4.describe().loc[['mean']].rename({'mean':'2021 Sell'})
    sell22 = df5.describe().loc[['mean']].rename({'mean':'2022 Sell'})
    sell23 = df6.describe().loc[['mean']].rename({'mean':'2023 Sell'})
    result = pd.concat([buy21,buy22,buy23,sell21,sell22,sell23], axis=0)
    return result

```

```python
def price_plot(df):
    plt.figure(figsize=(20, 4))

    plt.plot(df['arrival price'],label = 'arrival price')
    plt.plot(df['exist price'],label = 'exist price')
    plt.plot(df['avg price'],label = 'avg price')
    plt.plot(df['VWAP price'],label = 'VWAP price')
    plt.plot(df['market VWAP price'],label = 'market VWAP price')
    plt.grid(True)
    plt.title("Prices")

    plt.xlabel('time')
    plt.ylabel('price')
    plt.legend(loc='upper right')

    plt.gca().set_facecolor('lightgray')
    plt.show()

```

```python
def price_diff_analysis(df):
    price_diff = df['arrival price'] - df['VWAP price']
    price_diff = price_diff.to_frame('price diff')
    print(price_diff.describe().round())

    plt.figure(figsize=(20, 4))

    plt.plot(price_diff,label = 'arrival price - VWAP price')
    plt.grid(True)
    plt.title("Arrival Price VS VWAP price")

    plt.xlabel('time')
    plt.ylabel('price diff')
    plt.legend(loc='upper right')

    plt.gca().set_facecolor('lightgray')
    plt.show()  
```

```python
def trade_success_plot(df):
    plt.figure(figsize=(8, 4))
    sns.lineplot(x='start time', y='arrival price', data=df, label='arrival price')
    sns.scatterplot(x='start time', y='arrival price', hue='status', data=df, marker='o', s=100, style='status',palette={0:'red',1:'green'})
    plt.legend(title='VWAP Trading')
    plt.show()
```

```python
# calculate mean and standard deviation
def distribution_plot(data):

    mean = data['transaction time (min)'].mean()
    std = data['transaction time (min)'].std()
    xmin = data['transaction time (min)'].min()
    xmax = data['transaction time (min)'].max()
    x = np.linspace(xmin, xmax, 100)
    p = norm.pdf(x, mean, std)

    # create a normal distribution with the same mean and standard deviation
    plt.figure(figsize=(10, 6))
    plt.hist(data['transaction time (min)'], density=True, bins=100, color='blue', alpha=0.5)
    plt.xlabel('mins')
    plt.ylabel('Density')
    plt.title('Density Plot of Transaction Time')

    plt.plot(x, p, 'k', linewidth=2)

    plt.gca().set_facecolor('lightgray')

    # display the plot
    plt.show()
```

```python
def Q_summary1(df1,df2,df3,df4,df5,df6,df7,df8):
    Q1 = df1.describe().loc[['mean']].rename({'mean':'-2'})
    Q2 = df2.describe().loc[['mean']].rename({'mean':'-1.5'})
    Q3 = df3.describe().loc[['mean']].rename({'mean':'-1'})
    Q4 = df4.describe().loc[['mean']].rename({'mean':'-0.5'})
    Q5 = df5.describe().loc[['mean']].rename({'mean':'0.5'})
    Q6 = df6.describe().loc[['mean']].rename({'mean':'1'})
    Q7 = df6.describe().loc[['mean']].rename({'mean':'1.5'})
    Q8 = df6.describe().loc[['mean']].rename({'mean':'2'})
    result = pd.concat([Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8], axis=0)
    return result

```

```python
def Q_summary2(df1,df2,df3,df4,df5,df6,df7,df8):
    Q1 = df1.describe().loc[['mean']].rename({'mean':'-1'})
    Q2 = df2.describe().loc[['mean']].rename({'mean':'-0.75'})
    Q3 = df3.describe().loc[['mean']].rename({'mean':'-0.5'})
    Q4 = df4.describe().loc[['mean']].rename({'mean':'-0.25'})
    Q5 = df5.describe().loc[['mean']].rename({'mean':'0.25'})
    Q6 = df6.describe().loc[['mean']].rename({'mean':'0.5'})
    Q7 = df6.describe().loc[['mean']].rename({'mean':'0.75'})
    Q8 = df6.describe().loc[['mean']].rename({'mean':'1'})
    result = pd.concat([Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8], axis=0)
    return result
```

```python
def Q_summary3(df1,df2,df3,df4,df5):
    Q1 = df1.describe().loc[['mean']].rename({'mean':'1%'})
    Q2 = df2.describe().loc[['mean']].rename({'mean':'2%'})
    Q3 = df3.describe().loc[['mean']].rename({'mean':'3%'})
    Q4 = df4.describe().loc[['mean']].rename({'mean':'4%'})
    Q5 = df5.describe().loc[['mean']].rename({'mean':'5%'})
    result = pd.concat([Q1,Q2,Q3,Q4,Q5], axis=0)
    return result
```

Crypto Market Summary:

Bitcoin (BTC) prices increased 1% in December and finished the year above $16,500. On the other hand, Ethereum (ETH) prices dropped another 1.4% in December, closing the year at $1,199. In 2022, Bitcoin prices dropped nearly 65% and Ethereum prices dropped 67.7%, reflecting the impact of rising interest rates on the crypto industry, which led to a wave of bankruptcies. The total market capitalization of the global cryptocurrency market declined from a peak of $2.9 trillion in November 2021 to $798 billion by the end of 2022. The FTX exchange collapse, including the arrest and extradition of its founder, Sam Bankman-Fried, for alleged fraud, raised calls for increased regulation of the crypto space.

### 3.1 BTC-USD Pair

    a. comparing across 2021 to 2023 (using parameters: Quantity = +/- 1, Participate Rate = 3%)

```python
BTC_USD_2021_B1 = sample_simulation(t_BTC_USD_2021,1,0.03,0.005,500)
BTC_USD_2022_B1 = sample_simulation(t_BTC_USD_2022,1,0.03,0.005,500)
BTC_USD_2023_B1 = sample_simulation(t_BTC_USD_2023,1,0.03,0.005,500)
BTC_USD_2021_S1 = sample_simulation(t_BTC_USD_2021,-1,0.03,0.005,500)
BTC_USD_2022_S1 = sample_simulation(t_BTC_USD_2022,-1,0.03,0.005,500)
BTC_USD_2023_S1 = sample_simulation(t_BTC_USD_2023,-1,0.03,0.005,500)
```

```python
BTC_USD_STAT = mean_stat_summary(BTC_USD_2021_B1,BTC_USD_2022_B1,BTC_USD_2023_B1,BTC_USD_2021_S1,BTC_USD_2022_S1,BTC_USD_2023_S1)
BTC_USD_STAT
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
	  <th>arrival price</th>
	  <th>exist price</th>
	  <th>avg price</th>
	  <th>VWAP price</th>
	  <th>market VWAP price</th>
	  <th>total cost per quantity($)</th>
	  <th>total transaction cost($)</th>
	  <th>total volume</th>
	  <th>notional</th>
	  <th>transaction time (min)</th>
	  <th>status</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2021 Buy</th>
	  <td>56309.712680</td>
	  <td>56296.256620</td>
	  <td>56298.378582</td>
	  <td>56293.649292</td>
	  <td>56288.240879</td>
	  <td>56575.117538</td>
	  <td>281.468246</td>
	  <td>1.0</td>
	  <td>56293.649292</td>
	  <td>15.022678</td>
	  <td>0.596000</td>
	</tr>
	<tr>
	  <th>2022 Buy</th>
	  <td>38154.770523</td>
	  <td>38158.717465</td>
	  <td>38156.703153</td>
	  <td>38156.886064</td>
	  <td>38158.770553</td>
	  <td>38347.670494</td>
	  <td>190.784430</td>
	  <td>1.0</td>
	  <td>38156.886064</td>
	  <td>27.555590</td>
	  <td>0.261569</td>
	</tr>
	<tr>
	  <th>2023 Buy</th>
	  <td>22845.253199</td>
	  <td>22839.950563</td>
	  <td>22843.860641</td>
	  <td>22843.218399</td>
	  <td>22842.559655</td>
	  <td>22957.434491</td>
	  <td>114.216092</td>
	  <td>1.0</td>
	  <td>22843.218399</td>
	  <td>19.035799</td>
	  <td>0.609658</td>
	</tr>
	<tr>
	  <th>2021 Sell</th>
	  <td>56424.822585</td>
	  <td>56437.404629</td>
	  <td>56438.997783</td>
	  <td>56434.651287</td>
	  <td>56422.010676</td>
	  <td>56716.824543</td>
	  <td>282.173256</td>
	  <td>1.0</td>
	  <td>56434.651287</td>
	  <td>19.150551</td>
	  <td>0.450902</td>
	</tr>
	<tr>
	  <th>2022 Sell</th>
	  <td>38128.455500</td>
	  <td>38130.782180</td>
	  <td>38128.515259</td>
	  <td>38130.636803</td>
	  <td>38127.395044</td>
	  <td>38321.289987</td>
	  <td>190.653184</td>
	  <td>1.0</td>
	  <td>38130.636803</td>
	  <td>38.058649</td>
	  <td>0.220000</td>
	</tr>
	<tr>
	  <th>2023 Sell</th>
	  <td>22849.209458</td>
	  <td>22844.619859</td>
	  <td>22848.157256</td>
	  <td>22847.208600</td>
	  <td>22846.570953</td>
	  <td>22961.444643</td>
	  <td>114.236043</td>
	  <td>1.0</td>
	  <td>22847.208600</td>
	  <td>22.404948</td>
	  <td>0.463855</td>
	</tr>
  </tbody>
</table>
</div>

Comment:

Based on the summary of mean stats, it seems that the average transaction price for buying and selling Bitcoin (BTC-USD) increased over the years, with the highest average price being in 2023, and the lowest in 2021. The average transaction price for buying in 2023 was 22854.225433 while the average transaction price for selling was 22839.959759.

Additionally, the average transaction time and total transaction cost also increased over the years. The average transaction time for buying in 2023 was 17.396987 minutes, and the average transaction time for selling was 19.725167 minutes. The total transaction cost for buying in 2023 was 114.252146, and the total transaction cost for selling was 114.178705.

The likelihood of completing the order of purchases one unit of BTC within 15 mins is around 64% (buy) and 55% (sell) in 2021, it dropped to 24% and 27% respectively and then rewind back in 2023 to a similar level to 2021. we can also notice it's more likely to succeed to buy an BTC compared to sell.

It is important to note that the data only provides averages, and the actual transaction prices, times, and costs can vary greatly depending on market conditions and other factors.

    When trade is more likely to succeed?

```python
BTC_USD_2023_B1.head()
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
	  <th>arrival price</th>
	  <th>exist price</th>
	  <th>avg price</th>
	  <th>VWAP price</th>
	  <th>market VWAP price</th>
	  <th>total cost per quantity($)</th>
	  <th>total transaction cost($)</th>
	  <th>total volume</th>
	  <th>notional</th>
	  <th>transaction time (min)</th>
	  <th>status</th>
	</tr>
	<tr>
	  <th>start time</th>
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
	  <th>2023-01-24 00:51:34.700</th>
	  <td>22964.66</td>
	  <td>23020.00</td>
	  <td>22989.638353</td>
	  <td>22992.452669</td>
	  <td>22992.602679</td>
	  <td>23107.414933</td>
	  <td>114.962263</td>
	  <td>1.0</td>
	  <td>22992.452669</td>
	  <td>16.897490</td>
	  <td>0</td>
	</tr>
	<tr>
	  <th>2023-01-24 00:53:55.000</th>
	  <td>22959.06</td>
	  <td>23019.59</td>
	  <td>22997.299617</td>
	  <td>23002.197203</td>
	  <td>23001.205691</td>
	  <td>23117.208189</td>
	  <td>115.010986</td>
	  <td>1.0</td>
	  <td>23002.197203</td>
	  <td>15.769902</td>
	  <td>0</td>
	</tr>
	<tr>
	  <th>2023-01-24 00:54:12.100</th>
	  <td>22963.31</td>
	  <td>23019.59</td>
	  <td>22997.936594</td>
	  <td>23002.435435</td>
	  <td>23001.616725</td>
	  <td>23117.447612</td>
	  <td>115.012177</td>
	  <td>1.0</td>
	  <td>23002.435435</td>
	  <td>15.488166</td>
	  <td>0</td>
	</tr>
	<tr>
	  <th>2023-01-24 00:54:47.600</th>
	  <td>22965.56</td>
	  <td>23013.11</td>
	  <td>22999.807707</td>
	  <td>23003.044042</td>
	  <td>23002.680937</td>
	  <td>23118.059262</td>
	  <td>115.015220</td>
	  <td>1.0</td>
	  <td>23003.044042</td>
	  <td>15.602319</td>
	  <td>0</td>
	</tr>
	<tr>
	  <th>2023-01-24 00:55:09.500</th>
	  <td>22968.33</td>
	  <td>23015.75</td>
	  <td>23000.594491</td>
	  <td>23003.630106</td>
	  <td>23003.052809</td>
	  <td>23118.648256</td>
	  <td>115.018151</td>
	  <td>1.0</td>
	  <td>23003.630106</td>
	  <td>15.389005</td>
	  <td>0</td>
	</tr>
  </tbody>
</table>
</div>

```python
BTC_USD_2023_S1.head()
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
	  <th>arrival price</th>
	  <th>exist price</th>
	  <th>avg price</th>
	  <th>VWAP price</th>
	  <th>market VWAP price</th>
	  <th>total cost per quantity($)</th>
	  <th>total transaction cost($)</th>
	  <th>total volume</th>
	  <th>notional</th>
	  <th>transaction time (min)</th>
	  <th>status</th>
	</tr>
	<tr>
	  <th>start time</th>
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
	  <th>2023-01-24 00:55:15.500</th>
	  <td>22964.10</td>
	  <td>22989.30</td>
	  <td>22998.399506</td>
	  <td>22994.610937</td>
	  <td>22998.165671</td>
	  <td>23109.583991</td>
	  <td>114.973055</td>
	  <td>1.0</td>
	  <td>22994.610937</td>
	  <td>20.142876</td>
	  <td>0</td>
	</tr>
	<tr>
	  <th>2023-01-24 00:55:39.900</th>
	  <td>22973.00</td>
	  <td>22992.65</td>
	  <td>22998.569951</td>
	  <td>22995.128120</td>
	  <td>22998.419371</td>
	  <td>23110.103760</td>
	  <td>114.975641</td>
	  <td>1.0</td>
	  <td>22995.128120</td>
	  <td>20.275534</td>
	  <td>0</td>
	</tr>
	<tr>
	  <th>2023-01-24 00:57:48.900</th>
	  <td>22981.98</td>
	  <td>22987.30</td>
	  <td>23000.106513</td>
	  <td>22998.803422</td>
	  <td>22999.773549</td>
	  <td>23113.797439</td>
	  <td>114.994017</td>
	  <td>1.0</td>
	  <td>22998.803422</td>
	  <td>23.011660</td>
	  <td>0</td>
	</tr>
	<tr>
	  <th>2023-01-24 00:59:02.500</th>
	  <td>22976.46</td>
	  <td>22990.36</td>
	  <td>23000.042019</td>
	  <td>23000.047279</td>
	  <td>23000.344631</td>
	  <td>23115.047515</td>
	  <td>115.000236</td>
	  <td>1.0</td>
	  <td>23000.047279</td>
	  <td>24.341312</td>
	  <td>0</td>
	</tr>
	<tr>
	  <th>2023-01-24 01:00:05.100</th>
	  <td>22991.35</td>
	  <td>22982.24</td>
	  <td>23000.147641</td>
	  <td>22999.947968</td>
	  <td>22999.868848</td>
	  <td>23114.947708</td>
	  <td>114.999740</td>
	  <td>1.0</td>
	  <td>22999.947968</td>
	  <td>24.450399</td>
	  <td>0</td>
	</tr>
  </tbody>
</table>
</div>

```python
trade_success_plot(BTC_USD_2023_B1) #BUY
trade_success_plot(BTC_USD_2023_S1) #SELL
```

![png](output_44_0.png)

![png](output_44_1.png)

Comment:

The charts suggests that there is a higher probability of successfully executing a buy or sell order during a significant price decline, as opposed to when prices are at their peak or experiencing limited price movements. This aligns with the principles of contrarian investing, where one aims to purchase assets when others are selling, and sell when others are buying. The presence of higher volatility in the market during these periods presents more trading opportunities. Additionally, the efficient market hypothesis supports this notion by suggesting that prices reflect all publicly available information, making it challenging to achieve consistent abnormal returns when the market is calm and prices are at their peak.

```python
BTC_USD_2023_B1.describe().round(2)
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
	  <th>arrival price</th>
	  <th>exist price</th>
	  <th>avg price</th>
	  <th>VWAP price</th>
	  <th>market VWAP price</th>
	  <th>total cost per quantity($)</th>
	  <th>total transaction cost($)</th>
	  <th>total volume</th>
	  <th>notional</th>
	  <th>transaction time (min)</th>
	  <th>status</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>count</th>
	  <td>497.00</td>
	  <td>497.00</td>
	  <td>497.00</td>
	  <td>497.00</td>
	  <td>497.00</td>
	  <td>497.00</td>
	  <td>497.00</td>
	  <td>497.0</td>
	  <td>497.00</td>
	  <td>497.00</td>
	  <td>497.00</td>
	</tr>
	<tr>
	  <th>mean</th>
	  <td>22845.25</td>
	  <td>22839.95</td>
	  <td>22843.86</td>
	  <td>22843.22</td>
	  <td>22842.56</td>
	  <td>22957.43</td>
	  <td>114.22</td>
	  <td>1.0</td>
	  <td>22843.22</td>
	  <td>19.04</td>
	  <td>0.61</td>
	</tr>
	<tr>
	  <th>std</th>
	  <td>182.55</td>
	  <td>185.26</td>
	  <td>180.96</td>
	  <td>181.72</td>
	  <td>181.74</td>
	  <td>182.62</td>
	  <td>0.91</td>
	  <td>0.0</td>
	  <td>181.72</td>
	  <td>18.96</td>
	  <td>0.49</td>
	</tr>
	<tr>
	  <th>min</th>
	  <td>22425.72</td>
	  <td>22443.30</td>
	  <td>22468.79</td>
	  <td>22469.82</td>
	  <td>22470.73</td>
	  <td>22582.17</td>
	  <td>112.35</td>
	  <td>1.0</td>
	  <td>22469.82</td>
	  <td>0.60</td>
	  <td>0.00</td>
	</tr>
	<tr>
	  <th>25%</th>
	  <td>22685.40</td>
	  <td>22677.00</td>
	  <td>22683.75</td>
	  <td>22682.24</td>
	  <td>22682.22</td>
	  <td>22795.66</td>
	  <td>113.41</td>
	  <td>1.0</td>
	  <td>22682.24</td>
	  <td>8.42</td>
	  <td>0.00</td>
	</tr>
	<tr>
	  <th>50%</th>
	  <td>22898.34</td>
	  <td>22885.92</td>
	  <td>22893.91</td>
	  <td>22892.84</td>
	  <td>22889.43</td>
	  <td>23007.30</td>
	  <td>114.46</td>
	  <td>1.0</td>
	  <td>22892.84</td>
	  <td>12.84</td>
	  <td>1.00</td>
	</tr>
	<tr>
	  <th>75%</th>
	  <td>22989.57</td>
	  <td>22990.70</td>
	  <td>22990.21</td>
	  <td>22989.22</td>
	  <td>22990.57</td>
	  <td>23104.17</td>
	  <td>114.95</td>
	  <td>1.0</td>
	  <td>22989.22</td>
	  <td>19.70</td>
	  <td>1.00</td>
	</tr>
	<tr>
	  <th>max</th>
	  <td>23161.50</td>
	  <td>23154.58</td>
	  <td>23139.98</td>
	  <td>23140.57</td>
	  <td>23141.37</td>
	  <td>23256.27</td>
	  <td>115.70</td>
	  <td>1.0</td>
	  <td>23140.57</td>
	  <td>89.54</td>
	  <td>1.00</td>
	</tr>
  </tbody>
</table>
</div>

```python
BTC_USD_2023_S1.describe().round(2)
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
	  <th>arrival price</th>
	  <th>exist price</th>
	  <th>avg price</th>
	  <th>VWAP price</th>
	  <th>market VWAP price</th>
	  <th>total cost per quantity($)</th>
	  <th>total transaction cost($)</th>
	  <th>total volume</th>
	  <th>notional</th>
	  <th>transaction time (min)</th>
	  <th>status</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>count</th>
	  <td>498.00</td>
	  <td>498.00</td>
	  <td>498.00</td>
	  <td>498.00</td>
	  <td>498.00</td>
	  <td>498.00</td>
	  <td>498.00</td>
	  <td>498.0</td>
	  <td>498.00</td>
	  <td>498.00</td>
	  <td>498.00</td>
	</tr>
	<tr>
	  <th>mean</th>
	  <td>22849.21</td>
	  <td>22844.62</td>
	  <td>22848.16</td>
	  <td>22847.21</td>
	  <td>22846.57</td>
	  <td>22961.44</td>
	  <td>114.24</td>
	  <td>1.0</td>
	  <td>22847.21</td>
	  <td>22.40</td>
	  <td>0.46</td>
	</tr>
	<tr>
	  <th>std</th>
	  <td>185.18</td>
	  <td>185.98</td>
	  <td>185.40</td>
	  <td>185.65</td>
	  <td>185.89</td>
	  <td>186.58</td>
	  <td>0.93</td>
	  <td>0.0</td>
	  <td>185.65</td>
	  <td>19.57</td>
	  <td>0.50</td>
	</tr>
	<tr>
	  <th>min</th>
	  <td>22365.31</td>
	  <td>22411.88</td>
	  <td>22427.37</td>
	  <td>22423.01</td>
	  <td>22419.59</td>
	  <td>22535.12</td>
	  <td>112.12</td>
	  <td>1.0</td>
	  <td>22423.01</td>
	  <td>1.92</td>
	  <td>0.00</td>
	</tr>
	<tr>
	  <th>25%</th>
	  <td>22682.54</td>
	  <td>22678.25</td>
	  <td>22681.66</td>
	  <td>22679.92</td>
	  <td>22682.84</td>
	  <td>22793.32</td>
	  <td>113.40</td>
	  <td>1.0</td>
	  <td>22679.92</td>
	  <td>9.67</td>
	  <td>0.00</td>
	</tr>
	<tr>
	  <th>50%</th>
	  <td>22898.50</td>
	  <td>22892.68</td>
	  <td>22896.65</td>
	  <td>22895.23</td>
	  <td>22890.22</td>
	  <td>23009.70</td>
	  <td>114.48</td>
	  <td>1.0</td>
	  <td>22895.23</td>
	  <td>15.55</td>
	  <td>0.00</td>
	</tr>
	<tr>
	  <th>75%</th>
	  <td>23000.28</td>
	  <td>22992.41</td>
	  <td>22995.55</td>
	  <td>22991.42</td>
	  <td>22993.61</td>
	  <td>23106.38</td>
	  <td>114.96</td>
	  <td>1.0</td>
	  <td>22991.42</td>
	  <td>26.91</td>
	  <td>1.00</td>
	</tr>
	<tr>
	  <th>max</th>
	  <td>23164.81</td>
	  <td>23157.26</td>
	  <td>23134.17</td>
	  <td>23134.20</td>
	  <td>23135.49</td>
	  <td>23249.87</td>
	  <td>115.67</td>
	  <td>1.0</td>
	  <td>23134.20</td>
	  <td>103.69</td>
	  <td>1.00</td>
	</tr>
  </tbody>
</table>
</div>

    2023 Buy 1 unit BTC-USD

```python
price_plot(BTC_USD_2021_B1)
```

![png](output_49_0.png)

```python
price_diff_analysis(BTC_USD_2023_B1)
```

           price diff
    count       497.0
    mean          2.0
    std          30.0
    min         -86.0
    25%         -16.0
    50%           1.0
    75%          18.0
    max         129.0



    

![png](output_50_1.png)

Comment:

The difference between the arrival price and the VWAP price for buying one unit of BTC with USD from Jan 24 to 25 27, 2023 was still highly variable, with a standard deviation of 33. The minimum difference was -101 and the maximum was 153, with a mean of 4 and median of 0, indicating that half of the observations were above the median and half were below.

This variability shows that the market conditions were still impacting the spread between the arrival price and VWAP, causing the prices to deviate from each other. The wide range of differences, even though smaller compared to the previous year, may still present opportunities for traders to adjust their order execution strategies based on the market conditions.

    2023 Sell 1 unit BTC-USD

```python
price_plot(BTC_USD_2023_S1)
```

![png](output_53_0.png)

```python
# price_diff_analysis(BTC_USD_2023_S1)
```

```python
plt.figure(figsize=(20, 4))

plt.plot(BTC_USD_2023_S1['transaction time (min)'],label = 'sell')
plt.plot(BTC_USD_2023_B1['transaction time (min)'],label = 'buy')
plt.grid(True)
plt.title("2021 BTC_USD VWAP transaction time(min) buy vs sell")

plt.xlabel('time')
plt.ylabel('min')
plt.legend(loc='upper right')

plt.gca().set_facecolor('lightgray')
plt.show()
```

![png](output_55_0.png)

Comment: 

Compared to buy, it's less appealing to use VWAP trading strategy to sell BTC. It's also interesting to observe an pattern of transaction time, I suspect it's due to how the trading data was collected.

    b. Comparing trades performance using different Quantities with 3% participate rate

```python
BTC_USD_2023_Q1s = sample_simulation(t_BTC_USD_2023,-2,0.03,0.005,50)
BTC_USD_2023_Q2s = sample_simulation(t_BTC_USD_2023,-1.5,0.03,0.005,50)
BTC_USD_2023_Q3s = sample_simulation(t_BTC_USD_2023,-1,0.03,0.005,50)
BTC_USD_2023_Q4s = sample_simulation(t_BTC_USD_2023,-0.5,0.03,0.005,50)
BTC_USD_2023_Q4b = sample_simulation(t_BTC_USD_2023,0.5,0.03,0.005,50)
BTC_USD_2023_Q3b = sample_simulation(t_BTC_USD_2023,1,0.03,0.005,50)
BTC_USD_2023_Q2b = sample_simulation(t_BTC_USD_2023,1.5,0.03,0.005,50)
BTC_USD_2023_Q1b = sample_simulation(t_BTC_USD_2023,2,0.03,0.005,50)
```

```python
Q_summary1(BTC_USD_2023_Q1s,BTC_USD_2023_Q2s,BTC_USD_2023_Q3s,BTC_USD_2023_Q4s,BTC_USD_2023_Q4b,BTC_USD_2023_Q3b,BTC_USD_2023_Q2b,BTC_USD_2023_Q1b)
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
	  <th>arrival price</th>
	  <th>exist price</th>
	  <th>avg price</th>
	  <th>VWAP price</th>
	  <th>market VWAP price</th>
	  <th>total cost per quantity($)</th>
	  <th>total transaction cost($)</th>
	  <th>total volume</th>
	  <th>notional</th>
	  <th>transaction time (min)</th>
	  <th>status</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>-2</th>
	  <td>22815.7916</td>
	  <td>22797.7504</td>
	  <td>22812.740204</td>
	  <td>22811.574524</td>
	  <td>22809.499971</td>
	  <td>22925.632397</td>
	  <td>228.115745</td>
	  <td>2.0</td>
	  <td>45623.149048</td>
	  <td>43.531995</td>
	  <td>0.16</td>
	</tr>
	<tr>
	  <th>-1.5</th>
	  <td>22879.9672</td>
	  <td>22873.4730</td>
	  <td>22873.888582</td>
	  <td>22873.883187</td>
	  <td>22873.060614</td>
	  <td>22988.252603</td>
	  <td>171.554124</td>
	  <td>1.5</td>
	  <td>34310.824780</td>
	  <td>28.412393</td>
	  <td>0.26</td>
	</tr>
	<tr>
	  <th>-1</th>
	  <td>22787.5744</td>
	  <td>22787.1170</td>
	  <td>22784.862271</td>
	  <td>22783.689843</td>
	  <td>22783.541470</td>
	  <td>22897.608292</td>
	  <td>113.918449</td>
	  <td>1.0</td>
	  <td>22783.689843</td>
	  <td>18.872978</td>
	  <td>0.62</td>
	</tr>
	<tr>
	  <th>-0.5</th>
	  <td>22865.9650</td>
	  <td>22867.1154</td>
	  <td>22865.140568</td>
	  <td>22864.550247</td>
	  <td>22864.046776</td>
	  <td>22978.872999</td>
	  <td>57.161376</td>
	  <td>0.5</td>
	  <td>11432.275124</td>
	  <td>8.656386</td>
	  <td>0.94</td>
	</tr>
	<tr>
	  <th>0.5</th>
	  <td>22825.0326</td>
	  <td>22822.4674</td>
	  <td>22823.567080</td>
	  <td>22823.183103</td>
	  <td>22822.829643</td>
	  <td>22937.299018</td>
	  <td>57.057958</td>
	  <td>0.5</td>
	  <td>11411.591551</td>
	  <td>7.998875</td>
	  <td>0.94</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>22860.9692</td>
	  <td>22858.7280</td>
	  <td>22857.288704</td>
	  <td>22855.945692</td>
	  <td>22855.568020</td>
	  <td>22970.225420</td>
	  <td>114.279728</td>
	  <td>1.0</td>
	  <td>22855.945692</td>
	  <td>14.675335</td>
	  <td>0.72</td>
	</tr>
	<tr>
	  <th>1.5</th>
	  <td>22860.9692</td>
	  <td>22858.7280</td>
	  <td>22857.288704</td>
	  <td>22855.945692</td>
	  <td>22855.568020</td>
	  <td>22970.225420</td>
	  <td>114.279728</td>
	  <td>1.0</td>
	  <td>22855.945692</td>
	  <td>14.675335</td>
	  <td>0.72</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>22860.9692</td>
	  <td>22858.7280</td>
	  <td>22857.288704</td>
	  <td>22855.945692</td>
	  <td>22855.568020</td>
	  <td>22970.225420</td>
	  <td>114.279728</td>
	  <td>1.0</td>
	  <td>22855.945692</td>
	  <td>14.675335</td>
	  <td>0.72</td>
	</tr>
  </tbody>
</table>
</div>

The data shows that the transaction costs were highly variable with a minimum of 57 and a maximum of 228, with a mean of 114 and median of 114. The transaction time varied from 8 to 37 minutes with a mean of 26.5 minutes. The status column indicates the success or failure of the transaction, where 0 represents failure and 1 represents success.

The data appears to show the relationship between the variables and the index, which ranges from -2 to 2. It is quite clear from this data how the index affects the variables.

It can be observed that the VWAP Price and the Market VWAP Price are closely related. When the index is close to 0, the transaction time is relatively low and the order success rate is relatively high. As the index moves away from 0, the transaction time increases and the order success rate decreases. The transaction time appears to have an inverse relationship with the order success rate.

    c. Comparing trades performance using different participate rate with Q=1.5

```python
BTC_USD_2023_p1 = sample_simulation(t_BTC_USD_2023,1.5,0.01,0.005,50)
BTC_USD_2023_p2 = sample_simulation(t_BTC_USD_2023,1.5,0.02,0.005,50)
BTC_USD_2023_p3 = sample_simulation(t_BTC_USD_2023,1.5,0.03,0.005,50)
BTC_USD_2023_p4 = sample_simulation(t_BTC_USD_2023,1.5,0.04,0.005,50)
BTC_USD_2023_p5 = sample_simulation(t_BTC_USD_2023,1.5,0.05,0.005,50)
```

```python
Q_summary3(BTC_USD_2023_p1,BTC_USD_2023_p2,BTC_USD_2023_p3,BTC_USD_2023_p4,BTC_USD_2023_p5)
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
	  <th>arrival price</th>
	  <th>exist price</th>
	  <th>avg price</th>
	  <th>VWAP price</th>
	  <th>market VWAP price</th>
	  <th>total cost per quantity($)</th>
	  <th>total transaction cost($)</th>
	  <th>total volume</th>
	  <th>notional</th>
	  <th>transaction time (min)</th>
	  <th>status</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>1%</th>
	  <td>22842.840208</td>
	  <td>22794.966042</td>
	  <td>22827.593164</td>
	  <td>22822.657787</td>
	  <td>22822.153020</td>
	  <td>22936.771076</td>
	  <td>171.169933</td>
	  <td>1.5</td>
	  <td>34233.986680</td>
	  <td>68.477302</td>
	  <td>0.020833</td>
	</tr>
	<tr>
	  <th>2%</th>
	  <td>22855.568000</td>
	  <td>22857.595600</td>
	  <td>22855.530801</td>
	  <td>22854.106131</td>
	  <td>22854.377984</td>
	  <td>22968.376662</td>
	  <td>171.405796</td>
	  <td>1.5</td>
	  <td>34281.159197</td>
	  <td>31.085805</td>
	  <td>0.260000</td>
	</tr>
	<tr>
	  <th>3%</th>
	  <td>22832.834600</td>
	  <td>22831.577400</td>
	  <td>22831.391798</td>
	  <td>22830.389050</td>
	  <td>22829.264332</td>
	  <td>22944.540996</td>
	  <td>171.227918</td>
	  <td>1.5</td>
	  <td>34245.583576</td>
	  <td>26.991676</td>
	  <td>0.500000</td>
	</tr>
	<tr>
	  <th>4%</th>
	  <td>22861.143600</td>
	  <td>22853.278000</td>
	  <td>22860.122087</td>
	  <td>22858.881071</td>
	  <td>22858.411698</td>
	  <td>22973.175476</td>
	  <td>171.441608</td>
	  <td>1.5</td>
	  <td>34288.321606</td>
	  <td>17.266496</td>
	  <td>0.640000</td>
	</tr>
	<tr>
	  <th>5%</th>
	  <td>22828.285800</td>
	  <td>22831.772800</td>
	  <td>22828.639016</td>
	  <td>22828.378454</td>
	  <td>22827.656342</td>
	  <td>22942.520346</td>
	  <td>171.212838</td>
	  <td>1.5</td>
	  <td>34242.567681</td>
	  <td>15.280179</td>
	  <td>0.760000</td>
	</tr>
  </tbody>
</table>
</div>

### 3.2 ETH-BTC Pair

    a. comparing across 2021 to 2023 (using parameters: Quantity = +/- 1, Participate Rate = 3%)

```python
ETH_BTC_2021_B1 = sample_simulation(t_ETH_BTC_2021,1,0.03,0.001,500)
ETH_BTC_2022_B1 = sample_simulation(t_ETH_BTC_2022,1,0.03,0.001,500)
ETH_BTC_2023_B1 = sample_simulation(t_ETH_BTC_2023,1,0.03,0.001,500)
ETH_BTC_2021_S1 = sample_simulation(t_ETH_BTC_2021,-1,0.03,0.001,500)
ETH_BTC_2022_S1 = sample_simulation(t_ETH_BTC_2022,-1,0.03,0.001,500)
ETH_BTC_2023_S1 = sample_simulation(t_ETH_BTC_2023,-1,0.03,0.001,500)
```

```python
ETH_BTC_2021_B1.describe().round(5)
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
	  <th>arrival price</th>
	  <th>exist price</th>
	  <th>avg price</th>
	  <th>VWAP price</th>
	  <th>market VWAP price</th>
	  <th>total cost per quantity($)</th>
	  <th>total transaction cost($)</th>
	  <th>total volume</th>
	  <th>notional</th>
	  <th>transaction time (min)</th>
	  <th>status</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>count</th>
	  <td>499.00000</td>
	  <td>499.00000</td>
	  <td>499.00000</td>
	  <td>499.00000</td>
	  <td>499.00000</td>
	  <td>499.00000</td>
	  <td>499.00000</td>
	  <td>499.0</td>
	  <td>499.00000</td>
	  <td>499.00000</td>
	  <td>499.00000</td>
	</tr>
	<tr>
	  <th>mean</th>
	  <td>0.03576</td>
	  <td>0.03576</td>
	  <td>0.03576</td>
	  <td>0.03576</td>
	  <td>0.03576</td>
	  <td>0.03580</td>
	  <td>0.00004</td>
	  <td>1.0</td>
	  <td>0.03576</td>
	  <td>10.91995</td>
	  <td>0.76152</td>
	</tr>
	<tr>
	  <th>std</th>
	  <td>0.00017</td>
	  <td>0.00016</td>
	  <td>0.00016</td>
	  <td>0.00016</td>
	  <td>0.00016</td>
	  <td>0.00016</td>
	  <td>0.00000</td>
	  <td>0.0</td>
	  <td>0.00016</td>
	  <td>6.73019</td>
	  <td>0.42658</td>
	</tr>
	<tr>
	  <th>min</th>
	  <td>0.03524</td>
	  <td>0.03521</td>
	  <td>0.03523</td>
	  <td>0.03522</td>
	  <td>0.03522</td>
	  <td>0.03525</td>
	  <td>0.00004</td>
	  <td>1.0</td>
	  <td>0.03522</td>
	  <td>0.04188</td>
	  <td>0.00000</td>
	</tr>
	<tr>
	  <th>25%</th>
	  <td>0.03564</td>
	  <td>0.03565</td>
	  <td>0.03564</td>
	  <td>0.03565</td>
	  <td>0.03564</td>
	  <td>0.03568</td>
	  <td>0.00004</td>
	  <td>1.0</td>
	  <td>0.03565</td>
	  <td>5.68540</td>
	  <td>1.00000</td>
	</tr>
	<tr>
	  <th>50%</th>
	  <td>0.03577</td>
	  <td>0.03576</td>
	  <td>0.03576</td>
	  <td>0.03577</td>
	  <td>0.03577</td>
	  <td>0.03580</td>
	  <td>0.00004</td>
	  <td>1.0</td>
	  <td>0.03577</td>
	  <td>9.66885</td>
	  <td>1.00000</td>
	</tr>
	<tr>
	  <th>75%</th>
	  <td>0.03590</td>
	  <td>0.03591</td>
	  <td>0.03590</td>
	  <td>0.03590</td>
	  <td>0.03590</td>
	  <td>0.03594</td>
	  <td>0.00004</td>
	  <td>1.0</td>
	  <td>0.03590</td>
	  <td>14.76860</td>
	  <td>1.00000</td>
	</tr>
	<tr>
	  <th>max</th>
	  <td>0.03608</td>
	  <td>0.03609</td>
	  <td>0.03608</td>
	  <td>0.03608</td>
	  <td>0.03608</td>
	  <td>0.03612</td>
	  <td>0.00004</td>
	  <td>1.0</td>
	  <td>0.03608</td>
	  <td>38.68247</td>
	  <td>1.00000</td>
	</tr>
  </tbody>
</table>
</div>

```python
ETH_BTC_2022_B1.describe().round(5)
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
	  <th>arrival price</th>
	  <th>exist price</th>
	  <th>avg price</th>
	  <th>VWAP price</th>
	  <th>market VWAP price</th>
	  <th>total cost per quantity($)</th>
	  <th>total transaction cost($)</th>
	  <th>total volume</th>
	  <th>notional</th>
	  <th>transaction time (min)</th>
	  <th>status</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>count</th>
	  <td>500.00000</td>
	  <td>500.00000</td>
	  <td>500.00000</td>
	  <td>500.00000</td>
	  <td>500.00000</td>
	  <td>500.00000</td>
	  <td>500.00000</td>
	  <td>500.0</td>
	  <td>500.00000</td>
	  <td>500.00000</td>
	  <td>500.0000</td>
	</tr>
	<tr>
	  <th>mean</th>
	  <td>0.07097</td>
	  <td>0.07098</td>
	  <td>0.07097</td>
	  <td>0.07097</td>
	  <td>0.07097</td>
	  <td>0.07104</td>
	  <td>0.00007</td>
	  <td>1.0</td>
	  <td>0.07097</td>
	  <td>17.35204</td>
	  <td>0.5020</td>
	</tr>
	<tr>
	  <th>std</th>
	  <td>0.00189</td>
	  <td>0.00190</td>
	  <td>0.00189</td>
	  <td>0.00189</td>
	  <td>0.00189</td>
	  <td>0.00189</td>
	  <td>0.00000</td>
	  <td>0.0</td>
	  <td>0.00189</td>
	  <td>12.05564</td>
	  <td>0.5005</td>
	</tr>
	<tr>
	  <th>min</th>
	  <td>0.06737</td>
	  <td>0.06739</td>
	  <td>0.06742</td>
	  <td>0.06742</td>
	  <td>0.06742</td>
	  <td>0.06748</td>
	  <td>0.00007</td>
	  <td>1.0</td>
	  <td>0.06742</td>
	  <td>0.03316</td>
	  <td>0.0000</td>
	</tr>
	<tr>
	  <th>25%</th>
	  <td>0.06901</td>
	  <td>0.06917</td>
	  <td>0.06902</td>
	  <td>0.06906</td>
	  <td>0.06903</td>
	  <td>0.06913</td>
	  <td>0.00007</td>
	  <td>1.0</td>
	  <td>0.06906</td>
	  <td>8.32364</td>
	  <td>0.0000</td>
	</tr>
	<tr>
	  <th>50%</th>
	  <td>0.07154</td>
	  <td>0.07156</td>
	  <td>0.07157</td>
	  <td>0.07157</td>
	  <td>0.07157</td>
	  <td>0.07164</td>
	  <td>0.00007</td>
	  <td>1.0</td>
	  <td>0.07157</td>
	  <td>14.92276</td>
	  <td>1.0000</td>
	</tr>
	<tr>
	  <th>75%</th>
	  <td>0.07209</td>
	  <td>0.07212</td>
	  <td>0.07212</td>
	  <td>0.07211</td>
	  <td>0.07211</td>
	  <td>0.07218</td>
	  <td>0.00007</td>
	  <td>1.0</td>
	  <td>0.07211</td>
	  <td>23.92073</td>
	  <td>1.0000</td>
	</tr>
	<tr>
	  <th>max</th>
	  <td>0.07493</td>
	  <td>0.07497</td>
	  <td>0.07485</td>
	  <td>0.07493</td>
	  <td>0.07492</td>
	  <td>0.07500</td>
	  <td>0.00007</td>
	  <td>1.0</td>
	  <td>0.07493</td>
	  <td>77.70122</td>
	  <td>1.0000</td>
	</tr>
  </tbody>
</table>
</div>

```python
ETH_BTC_2023_B1.describe().round(5)
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
	  <th>arrival price</th>
	  <th>exist price</th>
	  <th>avg price</th>
	  <th>VWAP price</th>
	  <th>market VWAP price</th>
	  <th>total cost per quantity($)</th>
	  <th>total transaction cost($)</th>
	  <th>total volume</th>
	  <th>notional</th>
	  <th>transaction time (min)</th>
	  <th>status</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>count</th>
	  <td>448.00000</td>
	  <td>448.00000</td>
	  <td>448.00000</td>
	  <td>448.00000</td>
	  <td>448.00000</td>
	  <td>448.00000</td>
	  <td>448.00000</td>
	  <td>448.0</td>
	  <td>448.00000</td>
	  <td>448.00000</td>
	  <td>448.00000</td>
	</tr>
	<tr>
	  <th>mean</th>
	  <td>0.06984</td>
	  <td>0.06961</td>
	  <td>0.06974</td>
	  <td>0.06969</td>
	  <td>0.06970</td>
	  <td>0.06976</td>
	  <td>0.00007</td>
	  <td>1.0</td>
	  <td>0.06969</td>
	  <td>156.86462</td>
	  <td>0.13616</td>
	</tr>
	<tr>
	  <th>std</th>
	  <td>0.00110</td>
	  <td>0.00107</td>
	  <td>0.00109</td>
	  <td>0.00108</td>
	  <td>0.00108</td>
	  <td>0.00108</td>
	  <td>0.00000</td>
	  <td>0.0</td>
	  <td>0.00108</td>
	  <td>97.83137</td>
	  <td>0.34334</td>
	</tr>
	<tr>
	  <th>min</th>
	  <td>0.06824</td>
	  <td>0.06826</td>
	  <td>0.06828</td>
	  <td>0.06827</td>
	  <td>0.06827</td>
	  <td>0.06834</td>
	  <td>0.00007</td>
	  <td>1.0</td>
	  <td>0.06827</td>
	  <td>0.05956</td>
	  <td>0.00000</td>
	</tr>
	<tr>
	  <th>25%</th>
	  <td>0.06847</td>
	  <td>0.06843</td>
	  <td>0.06845</td>
	  <td>0.06846</td>
	  <td>0.06846</td>
	  <td>0.06853</td>
	  <td>0.00007</td>
	  <td>1.0</td>
	  <td>0.06846</td>
	  <td>70.51563</td>
	  <td>0.00000</td>
	</tr>
	<tr>
	  <th>50%</th>
	  <td>0.07041</td>
	  <td>0.06971</td>
	  <td>0.07012</td>
	  <td>0.06978</td>
	  <td>0.06984</td>
	  <td>0.06984</td>
	  <td>0.00007</td>
	  <td>1.0</td>
	  <td>0.06978</td>
	  <td>180.84850</td>
	  <td>0.00000</td>
	</tr>
	<tr>
	  <th>75%</th>
	  <td>0.07090</td>
	  <td>0.07074</td>
	  <td>0.07085</td>
	  <td>0.07083</td>
	  <td>0.07084</td>
	  <td>0.07090</td>
	  <td>0.00007</td>
	  <td>1.0</td>
	  <td>0.07083</td>
	  <td>234.42797</td>
	  <td>0.00000</td>
	</tr>
	<tr>
	  <th>max</th>
	  <td>0.07110</td>
	  <td>0.07101</td>
	  <td>0.07096</td>
	  <td>0.07095</td>
	  <td>0.07095</td>
	  <td>0.07102</td>
	  <td>0.00007</td>
	  <td>1.0</td>
	  <td>0.07095</td>
	  <td>408.19657</td>
	  <td>1.00000</td>
	</tr>
  </tbody>
</table>
</div>

Comment:

Mean VWAP price: The average VWAP price of ETH-BTC in 2021 was $0.0358, which was the lowest compared to the other two years. The average VWAP price in 2022 was $0.0710, which was double the price in 2021. The average VWAP price in 2023 was $0.0696, which was close to the average price in 2022.

Standard Deviation: The standard deviation of the VWAP price in 2021 was 0.00017, which was the lowest among the three years. The standard deviation in 2022 was 0.00177, which was almost 10 times higher than in 2021. The standard deviation in 2023 was 0.00110, which was lower than in 2022 but higher than in 2021.

Min/Max VWAP price: The minimum VWAP price of ETH-BTC in 2021 was $0.0352, while the maximum was $0.0361. In 2022, the minimum was $0.0676 and the maximum was $0.0749. In 2023, the minimum was $0.0657 and the maximum was $0.0741. This shows that the range of the VWAP price was wider in 2022 compared to the other two years.

Transaction Time: The average transaction time in minutes in 2021 was 11.0, which was the lowest among the three years. The average transaction time in 2022 was 19.0, which was almost double the time in 2021. The average transaction time in 2023 was 185.0, which was the highest among the three years.

```python
ETH_BTC_2021_S1.describe().round(5)
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
	  <th>arrival price</th>
	  <th>exist price</th>
	  <th>avg price</th>
	  <th>VWAP price</th>
	  <th>market VWAP price</th>
	  <th>total cost per quantity($)</th>
	  <th>total transaction cost($)</th>
	  <th>total volume</th>
	  <th>notional</th>
	  <th>transaction time (min)</th>
	  <th>status</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>count</th>
	  <td>499.00000</td>
	  <td>499.00000</td>
	  <td>499.00000</td>
	  <td>499.00000</td>
	  <td>499.00000</td>
	  <td>499.00000</td>
	  <td>499.00000</td>
	  <td>499.0</td>
	  <td>499.00000</td>
	  <td>499.00000</td>
	  <td>499.00000</td>
	</tr>
	<tr>
	  <th>mean</th>
	  <td>0.03575</td>
	  <td>0.03575</td>
	  <td>0.03575</td>
	  <td>0.03575</td>
	  <td>0.03575</td>
	  <td>0.03579</td>
	  <td>0.00004</td>
	  <td>1.0</td>
	  <td>0.03575</td>
	  <td>18.08335</td>
	  <td>0.51303</td>
	</tr>
	<tr>
	  <th>std</th>
	  <td>0.00016</td>
	  <td>0.00016</td>
	  <td>0.00015</td>
	  <td>0.00015</td>
	  <td>0.00015</td>
	  <td>0.00015</td>
	  <td>0.00000</td>
	  <td>0.0</td>
	  <td>0.00015</td>
	  <td>13.44922</td>
	  <td>0.50033</td>
	</tr>
	<tr>
	  <th>min</th>
	  <td>0.03523</td>
	  <td>0.03539</td>
	  <td>0.03532</td>
	  <td>0.03531</td>
	  <td>0.03532</td>
	  <td>0.03535</td>
	  <td>0.00004</td>
	  <td>1.0</td>
	  <td>0.03531</td>
	  <td>0.28302</td>
	  <td>0.00000</td>
	</tr>
	<tr>
	  <th>25%</th>
	  <td>0.03564</td>
	  <td>0.03564</td>
	  <td>0.03564</td>
	  <td>0.03565</td>
	  <td>0.03565</td>
	  <td>0.03568</td>
	  <td>0.00004</td>
	  <td>1.0</td>
	  <td>0.03565</td>
	  <td>9.47698</td>
	  <td>0.00000</td>
	</tr>
	<tr>
	  <th>50%</th>
	  <td>0.03575</td>
	  <td>0.03576</td>
	  <td>0.03575</td>
	  <td>0.03575</td>
	  <td>0.03575</td>
	  <td>0.03578</td>
	  <td>0.00004</td>
	  <td>1.0</td>
	  <td>0.03575</td>
	  <td>14.87188</td>
	  <td>1.00000</td>
	</tr>
	<tr>
	  <th>75%</th>
	  <td>0.03588</td>
	  <td>0.03587</td>
	  <td>0.03586</td>
	  <td>0.03587</td>
	  <td>0.03587</td>
	  <td>0.03591</td>
	  <td>0.00004</td>
	  <td>1.0</td>
	  <td>0.03587</td>
	  <td>23.74928</td>
	  <td>1.00000</td>
	</tr>
	<tr>
	  <th>max</th>
	  <td>0.03608</td>
	  <td>0.03607</td>
	  <td>0.03607</td>
	  <td>0.03607</td>
	  <td>0.03605</td>
	  <td>0.03611</td>
	  <td>0.00004</td>
	  <td>1.0</td>
	  <td>0.03607</td>
	  <td>73.63104</td>
	  <td>1.00000</td>
	</tr>
  </tbody>
</table>
</div>

```python
ETH_BTC_2022_S1.describe().round(5)
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
	  <th>arrival price</th>
	  <th>exist price</th>
	  <th>avg price</th>
	  <th>VWAP price</th>
	  <th>market VWAP price</th>
	  <th>total cost per quantity($)</th>
	  <th>total transaction cost($)</th>
	  <th>total volume</th>
	  <th>notional</th>
	  <th>transaction time (min)</th>
	  <th>status</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>count</th>
	  <td>499.00000</td>
	  <td>499.00000</td>
	  <td>499.00000</td>
	  <td>499.00000</td>
	  <td>499.00000</td>
	  <td>499.00000</td>
	  <td>499.00000</td>
	  <td>499.0</td>
	  <td>499.00000</td>
	  <td>499.00000</td>
	  <td>499.00000</td>
	</tr>
	<tr>
	  <th>mean</th>
	  <td>0.07087</td>
	  <td>0.07089</td>
	  <td>0.07088</td>
	  <td>0.07088</td>
	  <td>0.07088</td>
	  <td>0.07095</td>
	  <td>0.00007</td>
	  <td>1.0</td>
	  <td>0.07088</td>
	  <td>21.00482</td>
	  <td>0.40080</td>
	</tr>
	<tr>
	  <th>std</th>
	  <td>0.00184</td>
	  <td>0.00183</td>
	  <td>0.00184</td>
	  <td>0.00184</td>
	  <td>0.00184</td>
	  <td>0.00184</td>
	  <td>0.00000</td>
	  <td>0.0</td>
	  <td>0.00184</td>
	  <td>14.80184</td>
	  <td>0.49055</td>
	</tr>
	<tr>
	  <th>min</th>
	  <td>0.06730</td>
	  <td>0.06766</td>
	  <td>0.06759</td>
	  <td>0.06751</td>
	  <td>0.06752</td>
	  <td>0.06757</td>
	  <td>0.00007</td>
	  <td>1.0</td>
	  <td>0.06751</td>
	  <td>0.10238</td>
	  <td>0.00000</td>
	</tr>
	<tr>
	  <th>25%</th>
	  <td>0.06901</td>
	  <td>0.06934</td>
	  <td>0.06904</td>
	  <td>0.06905</td>
	  <td>0.06907</td>
	  <td>0.06912</td>
	  <td>0.00007</td>
	  <td>1.0</td>
	  <td>0.06905</td>
	  <td>9.57614</td>
	  <td>0.00000</td>
	</tr>
	<tr>
	  <th>50%</th>
	  <td>0.07145</td>
	  <td>0.07144</td>
	  <td>0.07145</td>
	  <td>0.07148</td>
	  <td>0.07147</td>
	  <td>0.07155</td>
	  <td>0.00007</td>
	  <td>1.0</td>
	  <td>0.07148</td>
	  <td>18.53162</td>
	  <td>0.00000</td>
	</tr>
	<tr>
	  <th>75%</th>
	  <td>0.07198</td>
	  <td>0.07202</td>
	  <td>0.07202</td>
	  <td>0.07203</td>
	  <td>0.07204</td>
	  <td>0.07210</td>
	  <td>0.00007</td>
	  <td>1.0</td>
	  <td>0.07203</td>
	  <td>27.69480</td>
	  <td>1.00000</td>
	</tr>
	<tr>
	  <th>max</th>
	  <td>0.07485</td>
	  <td>0.07485</td>
	  <td>0.07478</td>
	  <td>0.07482</td>
	  <td>0.07482</td>
	  <td>0.07489</td>
	  <td>0.00007</td>
	  <td>1.0</td>
	  <td>0.07482</td>
	  <td>74.79100</td>
	  <td>1.00000</td>
	</tr>
  </tbody>
</table>
</div>

```python
ETH_BTC_2023_S1.describe().round(5)
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
	  <th>arrival price</th>
	  <th>exist price</th>
	  <th>avg price</th>
	  <th>VWAP price</th>
	  <th>market VWAP price</th>
	  <th>total cost per quantity($)</th>
	  <th>total transaction cost($)</th>
	  <th>total volume</th>
	  <th>notional</th>
	  <th>transaction time (min)</th>
	  <th>status</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>count</th>
	  <td>395.00000</td>
	  <td>395.00000</td>
	  <td>395.00000</td>
	  <td>395.00000</td>
	  <td>395.00000</td>
	  <td>395.00000</td>
	  <td>395.00000</td>
	  <td>395.0</td>
	  <td>395.00000</td>
	  <td>395.00000</td>
	  <td>395.00000</td>
	</tr>
	<tr>
	  <th>mean</th>
	  <td>0.06987</td>
	  <td>0.06956</td>
	  <td>0.06971</td>
	  <td>0.06971</td>
	  <td>0.06967</td>
	  <td>0.06978</td>
	  <td>0.00007</td>
	  <td>1.0</td>
	  <td>0.06971</td>
	  <td>272.86746</td>
	  <td>0.07595</td>
	</tr>
	<tr>
	  <th>std</th>
	  <td>0.00105</td>
	  <td>0.00103</td>
	  <td>0.00104</td>
	  <td>0.00102</td>
	  <td>0.00103</td>
	  <td>0.00102</td>
	  <td>0.00000</td>
	  <td>0.0</td>
	  <td>0.00102</td>
	  <td>237.78945</td>
	  <td>0.26525</td>
	</tr>
	<tr>
	  <th>min</th>
	  <td>0.06825</td>
	  <td>0.06824</td>
	  <td>0.06831</td>
	  <td>0.06830</td>
	  <td>0.06830</td>
	  <td>0.06837</td>
	  <td>0.00007</td>
	  <td>1.0</td>
	  <td>0.06830</td>
	  <td>0.03976</td>
	  <td>0.00000</td>
	</tr>
	<tr>
	  <th>25%</th>
	  <td>0.06865</td>
	  <td>0.06848</td>
	  <td>0.06847</td>
	  <td>0.06849</td>
	  <td>0.06850</td>
	  <td>0.06855</td>
	  <td>0.00007</td>
	  <td>1.0</td>
	  <td>0.06849</td>
	  <td>105.19950</td>
	  <td>0.00000</td>
	</tr>
	<tr>
	  <th>50%</th>
	  <td>0.07041</td>
	  <td>0.06977</td>
	  <td>0.06996</td>
	  <td>0.07001</td>
	  <td>0.06996</td>
	  <td>0.07008</td>
	  <td>0.00007</td>
	  <td>1.0</td>
	  <td>0.07001</td>
	  <td>201.25778</td>
	  <td>0.00000</td>
	</tr>
	<tr>
	  <th>75%</th>
	  <td>0.07087</td>
	  <td>0.07045</td>
	  <td>0.07064</td>
	  <td>0.07063</td>
	  <td>0.07055</td>
	  <td>0.07070</td>
	  <td>0.00007</td>
	  <td>1.0</td>
	  <td>0.07063</td>
	  <td>328.04905</td>
	  <td>0.00000</td>
	</tr>
	<tr>
	  <th>max</th>
	  <td>0.07113</td>
	  <td>0.07099</td>
	  <td>0.07098</td>
	  <td>0.07098</td>
	  <td>0.07097</td>
	  <td>0.07105</td>
	  <td>0.00007</td>
	  <td>1.0</td>
	  <td>0.07098</td>
	  <td>912.38677</td>
	  <td>1.00000</td>
	</tr>
  </tbody>
</table>
</div>

```python
ETH_BTC_STAT = mean_stat_summary(ETH_BTC_2021_B1,ETH_BTC_2022_B1,ETH_BTC_2023_B1,ETH_BTC_2021_S1,ETH_BTC_2022_S1,ETH_BTC_2023_S1)
ETH_BTC_STAT
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
	  <th>arrival price</th>
	  <th>exist price</th>
	  <th>avg price</th>
	  <th>VWAP price</th>
	  <th>market VWAP price</th>
	  <th>total cost per quantity($)</th>
	  <th>total transaction cost($)</th>
	  <th>total volume</th>
	  <th>notional</th>
	  <th>transaction time (min)</th>
	  <th>status</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2021 Buy</th>
	  <td>0.035760</td>
	  <td>0.035761</td>
	  <td>0.035759</td>
	  <td>0.035760</td>
	  <td>0.035760</td>
	  <td>0.035796</td>
	  <td>0.000036</td>
	  <td>1.0</td>
	  <td>0.035760</td>
	  <td>10.919951</td>
	  <td>0.761523</td>
	</tr>
	<tr>
	  <th>2022 Buy</th>
	  <td>0.070966</td>
	  <td>0.070978</td>
	  <td>0.070969</td>
	  <td>0.070970</td>
	  <td>0.070974</td>
	  <td>0.071041</td>
	  <td>0.000071</td>
	  <td>1.0</td>
	  <td>0.070970</td>
	  <td>17.352036</td>
	  <td>0.502000</td>
	</tr>
	<tr>
	  <th>2023 Buy</th>
	  <td>0.069835</td>
	  <td>0.069605</td>
	  <td>0.069739</td>
	  <td>0.069689</td>
	  <td>0.069699</td>
	  <td>0.069759</td>
	  <td>0.000070</td>
	  <td>1.0</td>
	  <td>0.069689</td>
	  <td>156.864624</td>
	  <td>0.136161</td>
	</tr>
	<tr>
	  <th>2021 Sell</th>
	  <td>0.035750</td>
	  <td>0.035750</td>
	  <td>0.035751</td>
	  <td>0.035750</td>
	  <td>0.035748</td>
	  <td>0.035786</td>
	  <td>0.000036</td>
	  <td>1.0</td>
	  <td>0.035750</td>
	  <td>18.083347</td>
	  <td>0.513026</td>
	</tr>
	<tr>
	  <th>2022 Sell</th>
	  <td>0.070873</td>
	  <td>0.070887</td>
	  <td>0.070879</td>
	  <td>0.070879</td>
	  <td>0.070876</td>
	  <td>0.070950</td>
	  <td>0.000071</td>
	  <td>1.0</td>
	  <td>0.070879</td>
	  <td>21.004822</td>
	  <td>0.400802</td>
	</tr>
	<tr>
	  <th>2023 Sell</th>
	  <td>0.069875</td>
	  <td>0.069555</td>
	  <td>0.069707</td>
	  <td>0.069714</td>
	  <td>0.069674</td>
	  <td>0.069784</td>
	  <td>0.000070</td>
	  <td>1.0</td>
	  <td>0.069714</td>
	  <td>272.867460</td>
	  <td>0.075949</td>
	</tr>
  </tbody>
</table>
</div>

Comment:

In 2021, sample transactions with an average arrival price of 0.036, existing price of 0.036, and average price of 0.036. The average VWAP price was 0.036, the market VWAP price was 0.036, and the total cost per quantity was 0.0357. The total transaction cost was 0.00004. The notional was 0.036 and the average transaction time was 17 minutes.

In 2022, sample transactions with an average arrival price of 0.07108, existing price of 0.07109, and average price of 0.07109. The average VWAP price was 0.07109, the market VWAP price was 0.07109, and the total cost per quantity was 0.07116. The total transaction cost was 0.00007. The notional was 0.07109 and the average transaction time was 21 minutes.

In 2023, sample transactions with an average arrival price of 0.01, existing price of 0.01, and average price of 0.01. The average VWAP price was 0.06981, the market VWAP price was 0.06979, and the total cost per quantity was 0.01. The total transaction cost was 0.00007. The notional was 0.01 and the average transaction time was 272 minutes.

Overall, the analysis shows that the average VWAP price of ETH-BTC increased from 2021 to 2023, with the biggest jump happening between 2021 and 2022. The standard deviation also increased over the years, indicating a higher degree of price volatility. The transaction time also increased, showing a longer wait time for executing a trade in 2023 compared to the previous years.

    b. Comparing trades performance using different Quantities with 3% participate rate

```python
ETH_BTC_2023_Q1s = sample_simulation(t_ETH_BTC_2023,-1,0.03,0.005,50)
ETH_BTC_2023_Q2s = sample_simulation(t_ETH_BTC_2023,-0.75,0.03,0.005,50)
ETH_BTC_2023_Q3s = sample_simulation(t_ETH_BTC_2023,-0.5,0.03,0.005,50)
ETH_BTC_2023_Q4s = sample_simulation(t_ETH_BTC_2023,-0.25,0.03,0.005,50)
ETH_BTC_2023_Q4b = sample_simulation(t_ETH_BTC_2023,0.25,0.03,0.005,50)
ETH_BTC_2023_Q3b = sample_simulation(t_ETH_BTC_2023,0.5,0.03,0.005,50)
ETH_BTC_2023_Q2b = sample_simulation(t_ETH_BTC_2023,0.75,0.03,0.005,50)
ETH_BTC_2023_Q1b = sample_simulation(t_ETH_BTC_2023,1,0.03,0.005,50)
```

```python
Q_summary2(ETH_BTC_2023_Q1s,ETH_BTC_2023_Q2s,ETH_BTC_2023_Q3s,ETH_BTC_2023_Q4s,ETH_BTC_2023_Q4b,ETH_BTC_2023_Q3b,ETH_BTC_2023_Q2b,ETH_BTC_2023_Q1b)
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
	  <th>arrival price</th>
	  <th>exist price</th>
	  <th>avg price</th>
	  <th>VWAP price</th>
	  <th>market VWAP price</th>
	  <th>total cost per quantity($)</th>
	  <th>total transaction cost($)</th>
	  <th>total volume</th>
	  <th>notional</th>
	  <th>transaction time (min)</th>
	  <th>status</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>-1</th>
	  <td>0.069915</td>
	  <td>0.069479</td>
	  <td>0.069689</td>
	  <td>0.069704</td>
	  <td>0.069643</td>
	  <td>0.070053</td>
	  <td>0.000349</td>
	  <td>1.00</td>
	  <td>0.069704</td>
	  <td>323.475334</td>
	  <td>0.055556</td>
	</tr>
	<tr>
	  <th>-0.75</th>
	  <td>0.069877</td>
	  <td>0.069700</td>
	  <td>0.069793</td>
	  <td>0.069788</td>
	  <td>0.069792</td>
	  <td>0.070137</td>
	  <td>0.000262</td>
	  <td>0.75</td>
	  <td>0.052341</td>
	  <td>223.879832</td>
	  <td>0.088889</td>
	</tr>
	<tr>
	  <th>-0.5</th>
	  <td>0.069833</td>
	  <td>0.069659</td>
	  <td>0.069740</td>
	  <td>0.069746</td>
	  <td>0.069742</td>
	  <td>0.070095</td>
	  <td>0.000174</td>
	  <td>0.50</td>
	  <td>0.034873</td>
	  <td>171.358282</td>
	  <td>0.159091</td>
	</tr>
	<tr>
	  <th>-0.25</th>
	  <td>0.069960</td>
	  <td>0.069893</td>
	  <td>0.069925</td>
	  <td>0.069930</td>
	  <td>0.069922</td>
	  <td>0.070280</td>
	  <td>0.000087</td>
	  <td>0.25</td>
	  <td>0.017483</td>
	  <td>76.585179</td>
	  <td>0.304348</td>
	</tr>
	<tr>
	  <th>0.25</th>
	  <td>0.069621</td>
	  <td>0.069565</td>
	  <td>0.069587</td>
	  <td>0.069555</td>
	  <td>0.069568</td>
	  <td>0.069903</td>
	  <td>0.000087</td>
	  <td>0.25</td>
	  <td>0.017389</td>
	  <td>52.976517</td>
	  <td>0.320000</td>
	</tr>
	<tr>
	  <th>0.5</th>
	  <td>0.070027</td>
	  <td>0.069845</td>
	  <td>0.069943</td>
	  <td>0.069913</td>
	  <td>0.069915</td>
	  <td>0.070263</td>
	  <td>0.000175</td>
	  <td>0.50</td>
	  <td>0.034957</td>
	  <td>107.540509</td>
	  <td>0.093023</td>
	</tr>
	<tr>
	  <th>0.75</th>
	  <td>0.070027</td>
	  <td>0.069845</td>
	  <td>0.069943</td>
	  <td>0.069913</td>
	  <td>0.069915</td>
	  <td>0.070263</td>
	  <td>0.000175</td>
	  <td>0.50</td>
	  <td>0.034957</td>
	  <td>107.540509</td>
	  <td>0.093023</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>0.070027</td>
	  <td>0.069845</td>
	  <td>0.069943</td>
	  <td>0.069913</td>
	  <td>0.069915</td>
	  <td>0.070263</td>
	  <td>0.000175</td>
	  <td>0.50</td>
	  <td>0.034957</td>
	  <td>107.540509</td>
	  <td>0.093023</td>
	</tr>
  </tbody>
</table>
</div>

There is a variation in the arrival price, exist price, and average price, indicating that the market is not consistently stable.

The VWAP price and market VWAP price are relatively similar, which suggests that the weighted average price is consistent with the market average price.

The transaction time in minutes ranges from 97.823706 to 462.475656, which shows that some transactions took longer than others, and ETH-BTC is less liquid compared to ETH-USD or BTC-USD

The total transaction cost ranges from 0.034703 to 0.070196, indicating that the cost of transactions varied based on the price and volume.

The status column is empty, suggesting that it is not relevant to the analysis.

    c. Comparing trades performance using different participate rate with Q=0.5

```python
ETH_BTC_2023_p1 = sample_simulation(t_ETH_BTC_2023,0.5,0.01,0.005,50)
ETH_BTC_2023_p2 = sample_simulation(t_ETH_BTC_2023,0.5,0.02,0.005,50)
ETH_BTC_2023_p3 = sample_simulation(t_ETH_BTC_2023,0.5,0.03,0.005,50)
ETH_BTC_2023_p4 = sample_simulation(t_ETH_BTC_2023,0.5,0.04,0.005,50)
ETH_BTC_2023_p5 = sample_simulation(t_ETH_BTC_2023,0.5,0.05,0.005,50)
```

```python
Q_summary3(ETH_BTC_2023_p1,ETH_BTC_2023_p2,ETH_BTC_2023_p3,ETH_BTC_2023_p4,ETH_BTC_2023_p5)
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
	  <th>arrival price</th>
	  <th>exist price</th>
	  <th>avg price</th>
	  <th>VWAP price</th>
	  <th>market VWAP price</th>
	  <th>total cost per quantity($)</th>
	  <th>total transaction cost($)</th>
	  <th>total volume</th>
	  <th>notional</th>
	  <th>transaction time (min)</th>
	  <th>status</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>1%</th>
	  <td>0.069769</td>
	  <td>0.069434</td>
	  <td>0.069623</td>
	  <td>0.069567</td>
	  <td>0.069584</td>
	  <td>0.069915</td>
	  <td>0.000174</td>
	  <td>0.5</td>
	  <td>0.034784</td>
	  <td>193.969651</td>
	  <td>0.073171</td>
	</tr>
	<tr>
	  <th>2%</th>
	  <td>0.069907</td>
	  <td>0.069629</td>
	  <td>0.069802</td>
	  <td>0.069734</td>
	  <td>0.069745</td>
	  <td>0.070083</td>
	  <td>0.000174</td>
	  <td>0.5</td>
	  <td>0.034867</td>
	  <td>128.783196</td>
	  <td>0.113636</td>
	</tr>
	<tr>
	  <th>3%</th>
	  <td>0.069620</td>
	  <td>0.069457</td>
	  <td>0.069548</td>
	  <td>0.069509</td>
	  <td>0.069512</td>
	  <td>0.069856</td>
	  <td>0.000174</td>
	  <td>0.5</td>
	  <td>0.034754</td>
	  <td>99.143399</td>
	  <td>0.219512</td>
	</tr>
	<tr>
	  <th>4%</th>
	  <td>0.069697</td>
	  <td>0.069576</td>
	  <td>0.069628</td>
	  <td>0.069604</td>
	  <td>0.069614</td>
	  <td>0.069952</td>
	  <td>0.000174</td>
	  <td>0.5</td>
	  <td>0.034802</td>
	  <td>56.704548</td>
	  <td>0.408163</td>
	</tr>
	<tr>
	  <th>5%</th>
	  <td>0.069840</td>
	  <td>0.069681</td>
	  <td>0.069763</td>
	  <td>0.069708</td>
	  <td>0.069718</td>
	  <td>0.070057</td>
	  <td>0.000174</td>
	  <td>0.5</td>
	  <td>0.034854</td>
	  <td>53.190511</td>
	  <td>0.404255</td>
	</tr>
  </tbody>
</table>
</div>

### 3.3 ETH-USD Pair

    a. comparing across 2021 to 2023 (using parameters: Quantity = +/- 5, Participate Rate = 3%)

```python
ETH_USD_2021_B1 = sample_simulation(t_ETH_USD_2021,5,0.03,0.005,500)
ETH_USD_2022_B1 = sample_simulation(t_ETH_USD_2021,5,0.03,0.005,500)
ETH_USD_2023_B1 = sample_simulation(t_ETH_USD_2021,5,0.03,0.005,500)
ETH_USD_2021_S1 = sample_simulation(t_ETH_USD_2021,-5,0.03,0.005,500)
ETH_USD_2022_S1 = sample_simulation(t_ETH_USD_2021,-5,0.03,0.005,500)
ETH_USD_2023_S1 = sample_simulation(t_ETH_USD_2021,-5,0.03,0.005,500)
```

```python
ETH_USD_STAT = mean_stat_summary(ETH_USD_2021_B1,ETH_USD_2022_B1,ETH_USD_2023_B1,ETH_USD_2021_S1,ETH_USD_2022_S1,ETH_USD_2023_S1)
ETH_USD_STAT
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
	  <th>arrival price</th>
	  <th>exist price</th>
	  <th>avg price</th>
	  <th>VWAP price</th>
	  <th>market VWAP price</th>
	  <th>total cost per quantity($)</th>
	  <th>total transaction cost($)</th>
	  <th>total volume</th>
	  <th>notional</th>
	  <th>transaction time (min)</th>
	  <th>status</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2021 Buy</th>
	  <td>2142.848612</td>
	  <td>2142.450624</td>
	  <td>2142.569562</td>
	  <td>2142.547713</td>
	  <td>2142.589813</td>
	  <td>2153.260451</td>
	  <td>53.563693</td>
	  <td>5.0</td>
	  <td>10712.738563</td>
	  <td>8.601816</td>
	  <td>0.917505</td>
	</tr>
	<tr>
	  <th>2022 Buy</th>
	  <td>2143.082113</td>
	  <td>2143.041026</td>
	  <td>2142.957339</td>
	  <td>2142.912508</td>
	  <td>2142.909335</td>
	  <td>2153.627071</td>
	  <td>53.572813</td>
	  <td>5.0</td>
	  <td>10714.562541</td>
	  <td>8.957649</td>
	  <td>0.897384</td>
	</tr>
	<tr>
	  <th>2023 Buy</th>
	  <td>2144.369198</td>
	  <td>2144.331924</td>
	  <td>2144.369126</td>
	  <td>2144.343759</td>
	  <td>2144.370533</td>
	  <td>2155.065478</td>
	  <td>53.608594</td>
	  <td>5.0</td>
	  <td>10721.718797</td>
	  <td>8.791538</td>
	  <td>0.931864</td>
	</tr>
	<tr>
	  <th>2021 Sell</th>
	  <td>2142.529457</td>
	  <td>2142.713702</td>
	  <td>2142.683336</td>
	  <td>2142.662919</td>
	  <td>2142.463762</td>
	  <td>2153.376233</td>
	  <td>53.566573</td>
	  <td>5.0</td>
	  <td>10713.314594</td>
	  <td>13.487892</td>
	  <td>0.635815</td>
	</tr>
	<tr>
	  <th>2022 Sell</th>
	  <td>2141.290922</td>
	  <td>2141.588778</td>
	  <td>2141.554492</td>
	  <td>2141.568284</td>
	  <td>2141.389155</td>
	  <td>2152.276126</td>
	  <td>53.539207</td>
	  <td>5.0</td>
	  <td>10707.841421</td>
	  <td>13.100038</td>
	  <td>0.659319</td>
	</tr>
	<tr>
	  <th>2023 Sell</th>
	  <td>2142.980703</td>
	  <td>2142.826064</td>
	  <td>2143.081295</td>
	  <td>2143.102449</td>
	  <td>2142.883282</td>
	  <td>2153.817961</td>
	  <td>53.577561</td>
	  <td>5.0</td>
	  <td>10715.512244</td>
	  <td>13.741614</td>
	  <td>0.596386</td>
	</tr>
  </tbody>
</table>
</div>

Comment:

The average price, VWAP price, and market VWAP price vary across the different transactions, indicating that the prices at which the transactions took place were not constant.

The total cost per quantity and total transaction cost for each transaction are relatively close, which suggests that the cost of each transaction was relatively consistent across the different transactions.

The total volume and notional of the transactions were 1.0, indicating that each transaction was for a single unit of some financial instrument (e.g., a stock).

The transaction time (in minutes) for each transaction varied, but was generally between 2.0 and 3.0 minutes.

The "status" column only has a value of "1.0", which may indicate that all of the transactions were completed successfully.

    When trade is more likely to succeed?

```python
ETH_USD_2023_B1.head()
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
	  <th>arrival price</th>
	  <th>exist price</th>
	  <th>avg price</th>
	  <th>VWAP price</th>
	  <th>market VWAP price</th>
	  <th>total cost per quantity($)</th>
	  <th>total transaction cost($)</th>
	  <th>total volume</th>
	  <th>notional</th>
	  <th>transaction time (min)</th>
	  <th>status</th>
	</tr>
	<tr>
	  <th>start time</th>
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
	  <th>2021-04-10 21:30:36.200</th>
	  <td>2106.26</td>
	  <td>2108.81</td>
	  <td>2108.804244</td>
	  <td>2108.789400</td>
	  <td>2108.316674</td>
	  <td>2119.333347</td>
	  <td>52.719735</td>
	  <td>5.0</td>
	  <td>10543.947000</td>
	  <td>7.314739</td>
	  <td>1</td>
	</tr>
	<tr>
	  <th>2021-04-10 21:30:39.300</th>
	  <td>2106.00</td>
	  <td>2108.81</td>
	  <td>2108.826271</td>
	  <td>2108.797070</td>
	  <td>2108.319306</td>
	  <td>2119.341055</td>
	  <td>52.719927</td>
	  <td>5.0</td>
	  <td>10543.985350</td>
	  <td>7.262921</td>
	  <td>1</td>
	</tr>
	<tr>
	  <th>2021-04-10 21:43:42.900</th>
	  <td>2115.55</td>
	  <td>2113.06</td>
	  <td>2112.099197</td>
	  <td>2112.245934</td>
	  <td>2112.117653</td>
	  <td>2122.807164</td>
	  <td>52.806148</td>
	  <td>5.0</td>
	  <td>10561.229669</td>
	  <td>10.278886</td>
	  <td>1</td>
	</tr>
	<tr>
	  <th>2021-04-10 21:51:58.800</th>
	  <td>2112.13</td>
	  <td>2114.53</td>
	  <td>2112.998198</td>
	  <td>2112.974925</td>
	  <td>2112.958790</td>
	  <td>2123.539799</td>
	  <td>52.824373</td>
	  <td>5.0</td>
	  <td>10564.874624</td>
	  <td>7.264636</td>
	  <td>1</td>
	</tr>
	<tr>
	  <th>2021-04-10 21:59:36.300</th>
	  <td>2114.99</td>
	  <td>2116.88</td>
	  <td>2116.546696</td>
	  <td>2116.806593</td>
	  <td>2116.573624</td>
	  <td>2127.390626</td>
	  <td>52.920165</td>
	  <td>5.0</td>
	  <td>10584.032965</td>
	  <td>7.289059</td>
	  <td>1</td>
	</tr>
  </tbody>
</table>
</div>

```python
ETH_USD_2023_S1.head()
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
	  <th>arrival price</th>
	  <th>exist price</th>
	  <th>avg price</th>
	  <th>VWAP price</th>
	  <th>market VWAP price</th>
	  <th>total cost per quantity($)</th>
	  <th>total transaction cost($)</th>
	  <th>total volume</th>
	  <th>notional</th>
	  <th>transaction time (min)</th>
	  <th>status</th>
	</tr>
	<tr>
	  <th>start time</th>
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
	  <th>2021-04-10 22:03:03.800</th>
	  <td>2116.35</td>
	  <td>2118.21</td>
	  <td>2118.440480</td>
	  <td>2118.618234</td>
	  <td>2117.916657</td>
	  <td>2129.211325</td>
	  <td>52.965456</td>
	  <td>5.0</td>
	  <td>10593.091170</td>
	  <td>4.267529</td>
	  <td>1</td>
	</tr>
	<tr>
	  <th>2021-04-10 22:03:29.200</th>
	  <td>2118.28</td>
	  <td>2116.75</td>
	  <td>2118.510611</td>
	  <td>2118.639974</td>
	  <td>2117.802626</td>
	  <td>2129.233174</td>
	  <td>52.965999</td>
	  <td>5.0</td>
	  <td>10593.199872</td>
	  <td>4.838038</td>
	  <td>1</td>
	</tr>
	<tr>
	  <th>2021-04-10 22:10:12.400</th>
	  <td>2115.73</td>
	  <td>2113.44</td>
	  <td>2113.996678</td>
	  <td>2113.873407</td>
	  <td>2114.065065</td>
	  <td>2124.442774</td>
	  <td>52.846835</td>
	  <td>5.0</td>
	  <td>10569.367035</td>
	  <td>12.151463</td>
	  <td>1</td>
	</tr>
	<tr>
	  <th>2021-04-10 22:12:23.100</th>
	  <td>2113.48</td>
	  <td>2114.83</td>
	  <td>2114.449384</td>
	  <td>2114.057984</td>
	  <td>2114.437114</td>
	  <td>2124.628274</td>
	  <td>52.851450</td>
	  <td>5.0</td>
	  <td>10570.289921</td>
	  <td>15.179143</td>
	  <td>0</td>
	</tr>
	<tr>
	  <th>2021-04-10 22:22:17.500</th>
	  <td>2114.09</td>
	  <td>2120.38</td>
	  <td>2118.767918</td>
	  <td>2118.894009</td>
	  <td>2118.972647</td>
	  <td>2129.488479</td>
	  <td>52.972350</td>
	  <td>5.0</td>
	  <td>10594.470044</td>
	  <td>15.017072</td>
	  <td>0</td>
	</tr>
  </tbody>
</table>
</div>

```python
trade_success_plot(ETH_USD_2023_B1)
trade_success_plot(ETH_USD_2023_S1)
```

![png](output_91_0.png)

![png](output_91_1.png)

Comment:

From the charts above we can see that the buy or sell order is more likely to succeed when the price is going through a major draw down, and likely to fail, when the price peak or if there is less volatility of the price change, which makes sense since if there is more volatilities indicating more trading opportunities.

```python
ETH_USD_2023_B1.describe().round(2)
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
	  <th>arrival price</th>
	  <th>exist price</th>
	  <th>avg price</th>
	  <th>VWAP price</th>
	  <th>market VWAP price</th>
	  <th>total cost per quantity($)</th>
	  <th>total transaction cost($)</th>
	  <th>total volume</th>
	  <th>notional</th>
	  <th>transaction time (min)</th>
	  <th>status</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>count</th>
	  <td>499.00</td>
	  <td>499.00</td>
	  <td>499.00</td>
	  <td>499.00</td>
	  <td>499.00</td>
	  <td>499.00</td>
	  <td>499.00</td>
	  <td>499.0</td>
	  <td>499.00</td>
	  <td>499.00</td>
	  <td>499.00</td>
	</tr>
	<tr>
	  <th>mean</th>
	  <td>2144.37</td>
	  <td>2144.33</td>
	  <td>2144.37</td>
	  <td>2144.34</td>
	  <td>2144.37</td>
	  <td>2155.07</td>
	  <td>53.61</td>
	  <td>5.0</td>
	  <td>10721.72</td>
	  <td>8.79</td>
	  <td>0.93</td>
	</tr>
	<tr>
	  <th>std</th>
	  <td>15.11</td>
	  <td>15.38</td>
	  <td>15.18</td>
	  <td>15.28</td>
	  <td>15.28</td>
	  <td>15.36</td>
	  <td>0.38</td>
	  <td>0.0</td>
	  <td>76.41</td>
	  <td>4.33</td>
	  <td>0.25</td>
	</tr>
	<tr>
	  <th>min</th>
	  <td>2106.00</td>
	  <td>2108.01</td>
	  <td>2108.80</td>
	  <td>2108.79</td>
	  <td>2108.32</td>
	  <td>2119.33</td>
	  <td>52.72</td>
	  <td>5.0</td>
	  <td>10543.95</td>
	  <td>0.41</td>
	  <td>0.00</td>
	</tr>
	<tr>
	  <th>25%</th>
	  <td>2135.56</td>
	  <td>2135.47</td>
	  <td>2135.46</td>
	  <td>2135.46</td>
	  <td>2135.71</td>
	  <td>2146.14</td>
	  <td>53.39</td>
	  <td>5.0</td>
	  <td>10677.30</td>
	  <td>5.99</td>
	  <td>1.00</td>
	</tr>
	<tr>
	  <th>50%</th>
	  <td>2142.78</td>
	  <td>2143.00</td>
	  <td>2142.43</td>
	  <td>2142.35</td>
	  <td>2142.25</td>
	  <td>2153.06</td>
	  <td>53.56</td>
	  <td>5.0</td>
	  <td>10711.75</td>
	  <td>8.24</td>
	  <td>1.00</td>
	</tr>
	<tr>
	  <th>75%</th>
	  <td>2149.46</td>
	  <td>2149.46</td>
	  <td>2148.85</td>
	  <td>2148.98</td>
	  <td>2149.00</td>
	  <td>2159.72</td>
	  <td>53.72</td>
	  <td>5.0</td>
	  <td>10744.89</td>
	  <td>10.71</td>
	  <td>1.00</td>
	</tr>
	<tr>
	  <th>max</th>
	  <td>2193.60</td>
	  <td>2198.00</td>
	  <td>2195.16</td>
	  <td>2195.75</td>
	  <td>2195.83</td>
	  <td>2206.72</td>
	  <td>54.89</td>
	  <td>5.0</td>
	  <td>10978.73</td>
	  <td>32.41</td>
	  <td>1.00</td>
	</tr>
  </tbody>
</table>
</div>

```python
ETH_USD_2023_S1.describe().round(2)
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
	  <th>arrival price</th>
	  <th>exist price</th>
	  <th>avg price</th>
	  <th>VWAP price</th>
	  <th>market VWAP price</th>
	  <th>total cost per quantity($)</th>
	  <th>total transaction cost($)</th>
	  <th>total volume</th>
	  <th>notional</th>
	  <th>transaction time (min)</th>
	  <th>status</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>count</th>
	  <td>498.00</td>
	  <td>498.00</td>
	  <td>498.00</td>
	  <td>498.00</td>
	  <td>498.00</td>
	  <td>498.00</td>
	  <td>498.00</td>
	  <td>498.0</td>
	  <td>498.00</td>
	  <td>498.00</td>
	  <td>498.00</td>
	</tr>
	<tr>
	  <th>mean</th>
	  <td>2142.98</td>
	  <td>2142.83</td>
	  <td>2143.08</td>
	  <td>2143.10</td>
	  <td>2142.88</td>
	  <td>2153.82</td>
	  <td>53.58</td>
	  <td>5.0</td>
	  <td>10715.51</td>
	  <td>13.74</td>
	  <td>0.60</td>
	</tr>
	<tr>
	  <th>std</th>
	  <td>14.97</td>
	  <td>15.13</td>
	  <td>14.69</td>
	  <td>14.81</td>
	  <td>14.82</td>
	  <td>14.88</td>
	  <td>0.37</td>
	  <td>0.0</td>
	  <td>74.05</td>
	  <td>6.53</td>
	  <td>0.49</td>
	</tr>
	<tr>
	  <th>min</th>
	  <td>2107.50</td>
	  <td>2106.00</td>
	  <td>2107.81</td>
	  <td>2107.06</td>
	  <td>2107.13</td>
	  <td>2117.60</td>
	  <td>52.68</td>
	  <td>5.0</td>
	  <td>10535.32</td>
	  <td>0.17</td>
	  <td>0.00</td>
	</tr>
	<tr>
	  <th>25%</th>
	  <td>2133.88</td>
	  <td>2134.38</td>
	  <td>2134.56</td>
	  <td>2134.74</td>
	  <td>2134.19</td>
	  <td>2145.41</td>
	  <td>53.37</td>
	  <td>5.0</td>
	  <td>10673.69</td>
	  <td>9.14</td>
	  <td>0.00</td>
	</tr>
	<tr>
	  <th>50%</th>
	  <td>2142.94</td>
	  <td>2142.34</td>
	  <td>2142.20</td>
	  <td>2142.30</td>
	  <td>2142.01</td>
	  <td>2153.01</td>
	  <td>53.56</td>
	  <td>5.0</td>
	  <td>10711.49</td>
	  <td>12.99</td>
	  <td>1.00</td>
	</tr>
	<tr>
	  <th>75%</th>
	  <td>2148.94</td>
	  <td>2148.86</td>
	  <td>2148.50</td>
	  <td>2148.55</td>
	  <td>2148.37</td>
	  <td>2159.29</td>
	  <td>53.71</td>
	  <td>5.0</td>
	  <td>10742.73</td>
	  <td>17.92</td>
	  <td>1.00</td>
	</tr>
	<tr>
	  <th>max</th>
	  <td>2199.10</td>
	  <td>2196.17</td>
	  <td>2194.74</td>
	  <td>2194.70</td>
	  <td>2194.89</td>
	  <td>2205.68</td>
	  <td>54.87</td>
	  <td>5.0</td>
	  <td>10973.52</td>
	  <td>42.42</td>
	  <td>1.00</td>
	</tr>
  </tbody>
</table>
</div>

    Buying Opportunities?

```python
price_plot(ETH_USD_2021_B1)
price_diff_analysis(ETH_USD_2023_B1)
```

![png](output_96_0.png)

           price diff
    count       499.0
    mean          0.0
    std           3.0
    min         -11.0
    25%          -2.0
    50%           0.0
    75%           2.0
    max          22.0



    

![png](output_96_2.png)

    Selling Opportunities?

```python
price_plot(ETH_USD_2021_S1)
price_diff_analysis(ETH_USD_2023_S1)
```

![png](output_98_0.png)

           price diff
    count       498.0
    mean         -0.0
    std           4.0
    min         -12.0
    25%          -2.0
    50%          -0.0
    75%           2.0
    max          13.0



    

![png](output_98_2.png)

Comment:

Compared to BTC-USD, VWAP trading stretegy is less appealing on ETH-USD

    b. Comparing trades performance using different Quantities with 3% participate rate

```python
ETH_USD_2023_Q1s = sample_simulation(t_ETH_USD_2023,-1,0.03,0.005,50)
ETH_USD_2023_Q2s = sample_simulation(t_ETH_USD_2023,-0.75,0.03,0.005,50)
ETH_USD_2023_Q3s = sample_simulation(t_ETH_USD_2023,-0.5,0.03,0.005,50)
ETH_USD_2023_Q4s = sample_simulation(t_ETH_USD_2023,-0.25,0.03,0.005,50)
ETH_USD_2023_Q4b = sample_simulation(t_ETH_USD_2023,0.25,0.03,0.005,50)
ETH_USD_2023_Q3b = sample_simulation(t_ETH_USD_2023,0.5,0.03,0.005,50)
ETH_USD_2023_Q2b = sample_simulation(t_ETH_USD_2023,0.75,0.03,0.005,50)
ETH_USD_2023_Q1b = sample_simulation(t_ETH_USD_2023,1,0.03,0.005,50)
```

```python
Q_summary2(ETH_USD_2023_Q1s,ETH_USD_2023_Q2s,ETH_USD_2023_Q3s,ETH_USD_2023_Q4s,ETH_USD_2023_Q4b,ETH_USD_2023_Q3b,ETH_USD_2023_Q2b,ETH_USD_2023_Q1b)
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
	  <th>arrival price</th>
	  <th>exist price</th>
	  <th>avg price</th>
	  <th>VWAP price</th>
	  <th>market VWAP price</th>
	  <th>total cost per quantity($)</th>
	  <th>total transaction cost($)</th>
	  <th>total volume</th>
	  <th>notional</th>
	  <th>transaction time (min)</th>
	  <th>status</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>-1</th>
	  <td>1573.9886</td>
	  <td>1573.9850</td>
	  <td>1574.053715</td>
	  <td>1573.986088</td>
	  <td>1573.902941</td>
	  <td>1581.856018</td>
	  <td>7.869930</td>
	  <td>1.00</td>
	  <td>1573.986088</td>
	  <td>5.635756</td>
	  <td>0.92</td>
	</tr>
	<tr>
	  <th>-0.75</th>
	  <td>1590.8482</td>
	  <td>1590.5550</td>
	  <td>1590.597816</td>
	  <td>1590.542079</td>
	  <td>1590.467550</td>
	  <td>1598.494789</td>
	  <td>5.964533</td>
	  <td>0.75</td>
	  <td>1192.906559</td>
	  <td>2.966521</td>
	  <td>0.96</td>
	</tr>
	<tr>
	  <th>-0.5</th>
	  <td>1597.1056</td>
	  <td>1597.0842</td>
	  <td>1597.185989</td>
	  <td>1597.158701</td>
	  <td>1597.126135</td>
	  <td>1605.144495</td>
	  <td>3.992897</td>
	  <td>0.50</td>
	  <td>798.579351</td>
	  <td>1.067478</td>
	  <td>1.00</td>
	</tr>
	<tr>
	  <th>-0.25</th>
	  <td>1590.4160</td>
	  <td>1590.3776</td>
	  <td>1590.479167</td>
	  <td>1590.443095</td>
	  <td>1590.395021</td>
	  <td>1598.395311</td>
	  <td>1.988054</td>
	  <td>0.25</td>
	  <td>397.610774</td>
	  <td>2.563337</td>
	  <td>0.96</td>
	</tr>
	<tr>
	  <th>0.25</th>
	  <td>1585.9778</td>
	  <td>1586.0126</td>
	  <td>1585.940428</td>
	  <td>1585.946124</td>
	  <td>1585.928047</td>
	  <td>1593.875854</td>
	  <td>1.982433</td>
	  <td>0.25</td>
	  <td>396.486531</td>
	  <td>0.371780</td>
	  <td>1.00</td>
	</tr>
	<tr>
	  <th>0.5</th>
	  <td>1585.8648</td>
	  <td>1585.8654</td>
	  <td>1585.897089</td>
	  <td>1585.885505</td>
	  <td>1585.906708</td>
	  <td>1593.814933</td>
	  <td>3.964714</td>
	  <td>0.50</td>
	  <td>792.942753</td>
	  <td>1.690643</td>
	  <td>0.98</td>
	</tr>
	<tr>
	  <th>0.75</th>
	  <td>1585.8648</td>
	  <td>1585.8654</td>
	  <td>1585.897089</td>
	  <td>1585.885505</td>
	  <td>1585.906708</td>
	  <td>1593.814933</td>
	  <td>3.964714</td>
	  <td>0.50</td>
	  <td>792.942753</td>
	  <td>1.690643</td>
	  <td>0.98</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>1585.8648</td>
	  <td>1585.8654</td>
	  <td>1585.897089</td>
	  <td>1585.885505</td>
	  <td>1585.906708</td>
	  <td>1593.814933</td>
	  <td>3.964714</td>
	  <td>0.50</td>
	  <td>792.942753</td>
	  <td>1.690643</td>
	  <td>0.98</td>
	</tr>
  </tbody>
</table>
</div>

    c. Comparing trades performance using different participate rate with Q=1

```python
ETH_USD_2023_p1 = sample_simulation(t_ETH_USD_2023,1,0.01,0.005,50)
ETH_USD_2023_p2 = sample_simulation(t_ETH_USD_2023,1,0.02,0.005,50)
ETH_USD_2023_p3 = sample_simulation(t_ETH_USD_2023,1,0.03,0.005,50)
ETH_USD_2023_p4 = sample_simulation(t_ETH_USD_2023,1,0.04,0.005,50)
ETH_USD_2023_p5 = sample_simulation(t_ETH_USD_2023,1,0.05,0.005,50)
```

```python
Q_summary3(ETH_USD_2023_p1,ETH_USD_2023_p2,ETH_USD_2023_p3,ETH_USD_2023_p4,ETH_USD_2023_p5)
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
	  <th>arrival price</th>
	  <th>exist price</th>
	  <th>avg price</th>
	  <th>VWAP price</th>
	  <th>market VWAP price</th>
	  <th>total cost per quantity($)</th>
	  <th>total transaction cost($)</th>
	  <th>total volume</th>
	  <th>notional</th>
	  <th>transaction time (min)</th>
	  <th>status</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>1%</th>
	  <td>1578.3912</td>
	  <td>1578.2078</td>
	  <td>1578.433592</td>
	  <td>1578.426632</td>
	  <td>1578.348404</td>
	  <td>1586.318765</td>
	  <td>7.892133</td>
	  <td>1.0</td>
	  <td>1578.426632</td>
	  <td>5.637326</td>
	  <td>0.96</td>
	</tr>
	<tr>
	  <th>2%</th>
	  <td>1584.2982</td>
	  <td>1583.7198</td>
	  <td>1584.014593</td>
	  <td>1583.978978</td>
	  <td>1583.899599</td>
	  <td>1591.898873</td>
	  <td>7.919895</td>
	  <td>1.0</td>
	  <td>1583.978978</td>
	  <td>2.556584</td>
	  <td>0.98</td>
	</tr>
	<tr>
	  <th>3%</th>
	  <td>1585.0712</td>
	  <td>1584.9736</td>
	  <td>1584.921853</td>
	  <td>1584.934047</td>
	  <td>1584.932758</td>
	  <td>1592.858717</td>
	  <td>7.924670</td>
	  <td>1.0</td>
	  <td>1584.934047</td>
	  <td>1.297699</td>
	  <td>1.00</td>
	</tr>
	<tr>
	  <th>4%</th>
	  <td>1587.5958</td>
	  <td>1587.7954</td>
	  <td>1587.793435</td>
	  <td>1587.786990</td>
	  <td>1587.745476</td>
	  <td>1595.725925</td>
	  <td>7.938935</td>
	  <td>1.0</td>
	  <td>1587.786990</td>
	  <td>2.135670</td>
	  <td>0.96</td>
	</tr>
	<tr>
	  <th>5%</th>
	  <td>1590.4192</td>
	  <td>1590.4344</td>
	  <td>1590.447240</td>
	  <td>1590.474235</td>
	  <td>1590.456560</td>
	  <td>1598.426606</td>
	  <td>7.952371</td>
	  <td>1.0</td>
	  <td>1590.474235</td>
	  <td>0.795842</td>
	  <td>1.00</td>
	</tr>
  </tbody>
</table>
</div>

### Conclusion:

This project shows that the VWAP (Volume-Weighted Average Price) indicator can be used as a trading strategy for cryptocurrencies by providing a fair price level to execute trades. This project highlights the following key insights about the VWAP strategy:

- Understanding VWAP: VWAP as the average price of an asset over a specific time period, weighted by the volume traded.
- Use in Cryptocurrency Trading: VWAP indicator can be used to identify potential buying and selling opportunities in the cryptocurrency market by comparing the current price to the VWAP.
- Setting VWAP: Setting the VWAP period based on the trading time horizon and the market's volatility. Shorter time periods are appropriate for day trading while longer periods are better suited for swing trading.
- Identifying Trends: This project shows how the VWAP can be used to identify bullish and bearish trends in the market by observing the slope of the VWAP line.
- Using as Support and Resistance: Using the VWAP as a support and resistance level by executing trades when the price approaches the VWAP.

### Further thoughts:

We could combine the VWAP with other technical indicators such as RSI, MACD, and Bollinger Bands to increase the reliability of trade signals:

- Relative Strength Index (RSI) is a momentum oscillator that measures whether an asset is overbought or oversold. When combined with VWAP, RSI can provide insight into whether the market is trending up or down and help traders make more informed buy or sell decisions.
- Moving Average Convergence Divergence (MACD) is a trend-following momentum indicator that shows the relationship between two moving averages of an asset's price. When combined with VWAP, MACD can help traders identify potential trend reversals and make more informed trades.
- Bollinger Bands are a volatility indicator that consist of a moving average and two standard deviation lines plotted at a certain distance from the moving average. When combined with VWAP, Bollinger Bands can provide insight into the level of market volatility and help traders make more informed trades during periods of high volatility.

Overall, this project provides an overview of how the VWAP indicator can be used as a trading strategy for cryptocurrencies.

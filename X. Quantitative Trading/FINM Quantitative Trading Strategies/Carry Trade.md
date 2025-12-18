---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: "Homework 5: Carry Trade - Jingwen Li"
linter-yaml-title-alias: "Homework 5: Carry Trade - Jingwen Li"
---

# Homework 5: Carry Trade - Jingwen Li

```python
import matplotlib.pyplot as plt
import pandas as pd
import numpy as np
import scipy as sp
from datetime import datetime
import quandl
import functools
import seaborn as sns
import nasdaqdatalink as ndl
from sklearn.linear_model import LinearRegression
from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_squared_error, r2_score
from scipy.stats import norm, pearsonr, zscore
from statsmodels.tsa.stattools import adfuller
import warnings
warnings.filterwarnings('ignore')
```

## zero and spot curves function

```python
def bond_price(zcb, coupon_rate, tenor):
    times = np.arange(tenor,0, step=-0.5)[::-1]
    if times.shape[0]==0:
        p = 1.0
    else:
        r = np.interp(times, zcb.index.values, zcb.values[:,0]) # Linear interpolation
        p = np.exp(-tenor*r[-1]) + 0.5 * coupon_rate * np.exp(-r*times).sum()
    return p
```

```python
def compute_zcb_curve(spot_rates_curve):
    zcb_rates = spot_rates_curve.copy()
    for curve in spot_rates_curve.columns:
        spot = spot_rates_curve[curve]
        for tenor, spot_rate in spot.iteritems():            
            if tenor>0.001:
                times = np.arange(tenor-0.25, 0, step=-0.25)[::-1]
                coupon_quarter = 0.25*spot_rate
                z = np.interp(times, zcb_rates[curve].index.values, zcb_rates[curve].values) # Linear interpolation
                preceding_coupons_val = (coupon_quarter*np.exp(-z*times)).sum()
                zcb_rates[curve][tenor] = -np.log((1-preceding_coupons_val)/(1+coupon_quarter))/tenor
    return zcb_rates

```

# 1. Obtaining Data

## a. Here I coded a function to fetch all the data points for each currency:
	
- Obtain 1M (0.08Y) rates for UK overnight index swaps (Is) along with spot rates for the dollar versus pound1.
- Obtain yield curves and FX rates of Vietnamese Dong, Thai Baht, Pakistani Rupee and Philippine Peso from the earliest possible date through now. 
- Interpolate from sparser data in some cases. (Not all maturities are available in all currencies.)

## b. In my function, I also convert the bond yield to zero-coupon rate and get bond price from all the year points available from quandl.
## c. I also sliced the data into historical data to see if it makes sense to do carry trade on these currencies as well as sample data for testing the carry trade later on.
- historical data (before 2018)
- sample data (after 2018)

```python
def fetch_data(country):

    country_codes = {
    'Thailand': ('THB', 'THA', [1/12, 3/12, 6/12, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15],'2014-12-01','2022-12-16'),
    'Vietnam': ('VND', 'VNM', [1, 2, 3, 5, 7, 10, 15],'2014-12-01','2022-12-16'),
    'Pakistan': ('PKR', 'PAK', [3/12, 6/12, 1, 3, 5, 10], '2014-08-10', '2020-04-01'),
    'Philippines': ('PHP', 'PHL', [1/12, 3/12, 6/12, 1, 2, 3, 4, 5, 7, 10, 20, 25],'2014-12-01','2022-12-16')}

    if country not in country_codes:
        raise ValueError("country not available, please enter: Thailand, Vietnam, Pakistan or Philippines")
    fx_code, cur_code, columns, sdate, edate = country_codes[country]
    
    # Obtain the UK overnight index swaps (OIS) data
    quandl.ApiConfig.api_key = "key"
    uk_ois_data1 = quandl.get(["YC/GBR_ISSC"], start_date = sdate, end_date = edate)
    uk_ois_data2 = quandl.get(["YC/GBR_ISSS"], start_date = sdate, end_date = edate)
    uk_ois_data1.columns=uk_ois_data2.columns
    uk_ois = pd.concat([uk_ois_data1,uk_ois_data2],axis=0)/100
    uk_ois = uk_ois[[uk_ois.columns[0], uk_ois.columns[-1]]]
    uk_ois = uk_ois.interpolate(axis = 0, method = 'index').resample('W-WED').last().fillna(method="ffill")

    # Obtain the spot rates for the dollar versus pound
    gbp_fx = quandl.get("CUR/gbp", start_date = sdate, end_date = edate)
    gbp_fx = gbp_fx.interpolate(axis = 0, method = 'index').resample('W-WED').last().fillna(method="ffill")

    # Obtain the bond yield curves, zero coupon rate, bond price and fx for Vietnamese Dong, Thai Baht, Pakistani Rupee and Philippine Peso
    cur_symbol = 'YC/{}'.format(cur_code)
    bond_yield = quandl.get(cur_symbol, start_date = sdate, end_date = edate)/100
    bond_yield.columns = columns
    fx_symbol = "CUR/{}".format(fx_code)
    fx = quandl.get(fx_symbol, start_date = sdate, end_date = edate)
    fx = fx.interpolate(axis = 0, method = 'index').resample('W-WED').last().fillna(method="ffill")
    bond_yield = bond_yield.interpolate(axis = 0, method = 'index').resample('W-WED').last().fillna(method="ffill")
    zcb = compute_zcb_curve(bond_yield.T)
    price = uk_ois[[]]
    price['Bond Price'] = 0.0
    price['Bond Price 1W'] = 0.0
    for i in range(0,len(zcb.T)):
        price.iat[i,0]= bond_price(zcb.iloc[:,i:i+1],bond_yield.iloc[i:i+1,:][5],5.)
        if not i==len(zcb.T)-1:
            price.iat[i+1,1]= bond_price(zcb.iloc[:,i+1:i+2],bond_yield.iloc[i:i+1,:][5],5.-1/52)

    df = pd.concat([uk_ois, gbp_fx,bond_yield[5.0].to_frame(),price,fx],axis=1)
    df.columns = ['OIS 1M','OIS 5Y','USDGBP','Bond 5Y Yield','Bond Price','Bond Price 1W','FX']
    df_his = df.loc[:'2016-12-31']
    df_sample = df.loc['2017-01-01':]

    return df_his, df_sample, df
```

```python
tha_his, tha_sample, tha = fetch_data('Thailand')
vnm_his, vnm_sample, vnm = fetch_data('Vietnam')
pak_his, pak_sample, pak = fetch_data('Pakistan')
phl_his, phl_sample, phl = fetch_data('Philippines')
```

# 2. Looking at Historical Data, does carry trade make sense?

Borrowing in one currency to invest in another currency is known as currency carry trade. This can make sense for investors as it allows them to take advantage of differences in interest rates between the two countries. If an investor borrows in a currency with a low-interest rate, such as the British pound, and invests in a country with a higher interest rate, such as Vietnam (VNM), Pakistan (PAK), Philippines (PHL), or Thailand (THA), they can potentially earn a higher return on their investment.

However, it's worth noting that there are also risks associated with this type of investment. For example, changes in exchange rates can have a significant impact on the overall return, as fluctuations in the value of the borrowed currency relative to the invested currency can erode or amplify the gains from the interest rate differential. Additionally, the bond markets in emerging markets like Vietnam, Pakistan, Philippines, or Thailand can be less developed and less transparent than those in more established markets, leading to greater risks associated with lack of information, liquidity and market volatility.

Overall, borrowing in one currency and investing in another can be a way for investors to potentially enhance returns, but it's important to carefully consider the risks and potential downsides before engaging in such a strategy.

## Historical Data (before 2017)

```python
tha_his.tail()
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
	  <th>Is 1M</th>
	  <th>Is 5Y</th>
	  <th>USDGBP</th>
	  <th>Bond 5Y Yield</th>
	  <th>Bond Price</th>
	  <th>Bond Price 1W</th>
	  <th>FX</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2016-11-30</th>
	  <td>0.002079</td>
	  <td>0.006147</td>
	  <td>0.800568</td>
	  <td>0.02120</td>
	  <td>0.999724</td>
	  <td>0.997336</td>
	  <td>35.69647</td>
	</tr>
	<tr>
	  <th>2016-12-07</th>
	  <td>0.002037</td>
	  <td>0.005752</td>
	  <td>0.793580</td>
	  <td>0.02218</td>
	  <td>0.999696</td>
	  <td>0.995819</td>
	  <td>35.62530</td>
	</tr>
	<tr>
	  <th>2016-12-14</th>
	  <td>0.002032</td>
	  <td>0.005880</td>
	  <td>0.787360</td>
	  <td>0.02216</td>
	  <td>0.999697</td>
	  <td>1.000568</td>
	  <td>35.58586</td>
	</tr>
	<tr>
	  <th>2016-12-21</th>
	  <td>0.002079</td>
	  <td>0.006312</td>
	  <td>0.809520</td>
	  <td>0.02360</td>
	  <td>0.999656</td>
	  <td>0.993659</td>
	  <td>35.99525</td>
	</tr>
	<tr>
	  <th>2016-12-28</th>
	  <td>0.002113</td>
	  <td>0.005827</td>
	  <td>0.817868</td>
	  <td>0.02369</td>
	  <td>0.999654</td>
	  <td>1.000005</td>
	  <td>36.01000</td>
	</tr>
  </tbody>
</table>
</div>

```python
tha_his[1:].describe()
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
	  <th>Is 1M</th>
	  <th>Is 5Y</th>
	  <th>USDGBP</th>
	  <th>Bond 5Y Yield</th>
	  <th>Bond Price</th>
	  <th>Bond Price 1W</th>
	  <th>FX</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>count</th>
	  <td>108.000000</td>
	  <td>108.000000</td>
	  <td>108.000000</td>
	  <td>108.000000</td>
	  <td>108.000000</td>
	  <td>108.000000</td>
	  <td>108.000000</td>
	</tr>
	<tr>
	  <th>mean</th>
	  <td>0.003988</td>
	  <td>0.008692</td>
	  <td>0.695621</td>
	  <td>0.019880</td>
	  <td>0.999755</td>
	  <td>1.000274</td>
	  <td>34.704010</td>
	</tr>
	<tr>
	  <th>std</th>
	  <td>0.001019</td>
	  <td>0.003960</td>
	  <td>0.055242</td>
	  <td>0.002773</td>
	  <td>0.000064</td>
	  <td>0.006073</td>
	  <td>1.205096</td>
	</tr>
	<tr>
	  <th>min</th>
	  <td>0.002030</td>
	  <td>0.001232</td>
	  <td>0.635760</td>
	  <td>0.013780</td>
	  <td>0.999643</td>
	  <td>0.966686</td>
	  <td>32.373870</td>
	</tr>
	<tr>
	  <th>25%</th>
	  <td>0.004238</td>
	  <td>0.005867</td>
	  <td>0.651949</td>
	  <td>0.017702</td>
	  <td>0.999702</td>
	  <td>0.998159</td>
	  <td>33.727315</td>
	</tr>
	<tr>
	  <th>50%</th>
	  <td>0.004564</td>
	  <td>0.009777</td>
	  <td>0.674581</td>
	  <td>0.020465</td>
	  <td>0.999743</td>
	  <td>1.000466</td>
	  <td>35.071900</td>
	</tr>
	<tr>
	  <th>75%</th>
	  <td>0.004608</td>
	  <td>0.012181</td>
	  <td>0.723611</td>
	  <td>0.022120</td>
	  <td>0.999809</td>
	  <td>1.002018</td>
	  <td>35.614920</td>
	</tr>
	<tr>
	  <th>max</th>
	  <td>0.004654</td>
	  <td>0.014791</td>
	  <td>0.821830</td>
	  <td>0.024530</td>
	  <td>0.999886</td>
	  <td>1.038657</td>
	  <td>36.397190</td>
	</tr>
  </tbody>
</table>
</div>

Comments:

For Thailand, we see that the mean value for the Is 1M rate is 0.003550, which is relatively low compared to other benchmark interest rates, indicating that the short-term borrowing costs for the Thai market are low. This could be a result of the central bank's monetary policy, which is aimed at keeping borrowing costs low to stimulate economic growth.

The mean value for the Is 5Y rate is 0.008025, which is also relatively low and indicates that the long-term borrowing costs are also low. This could be a positive sign for the Thai economy as low borrowing costs can help to encourage investment in the country.

The mean value for the USD/THB exchange rate is 34.456, indicating that on average, one US dollar can be exchanged for 34.456 Thai baht. This exchange rate can impact the value of cross-border transactions and is an important factor to consider for businesses that are involved in international trade.

The mean value for the bond 5Y yield is 0.019918, which is relatively low and indicates that investors are not demanding a high return for holding Thai government bonds. This could be a sign of investor confidence in the stability of the Thai economy and the ability of the government to repay its debt obligations.

Overall, the low borrowing costs, stable exchange rate, and low bond yields suggest a favorable environment for investment in the Thai market. However, it's important to keep in mind that these are just averages and there could be fluctuations in these values over time.

```python
vnm_his.tail()
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
	  <th>Is 1M</th>
	  <th>Is 5Y</th>
	  <th>USDGBP</th>
	  <th>Bond 5Y Yield</th>
	  <th>Bond Price</th>
	  <th>Bond Price 1W</th>
	  <th>FX</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2016-11-30</th>
	  <td>0.002079</td>
	  <td>0.006147</td>
	  <td>0.800568</td>
	  <td>0.05370</td>
	  <td>0.998369</td>
	  <td>0.997355</td>
	  <td>22648.283333</td>
	</tr>
	<tr>
	  <th>2016-12-07</th>
	  <td>0.002037</td>
	  <td>0.005752</td>
	  <td>0.793580</td>
	  <td>0.05395</td>
	  <td>0.998351</td>
	  <td>0.998436</td>
	  <td>22663.150000</td>
	</tr>
	<tr>
	  <th>2016-12-14</th>
	  <td>0.002032</td>
	  <td>0.005880</td>
	  <td>0.787360</td>
	  <td>0.05575</td>
	  <td>0.998261</td>
	  <td>0.991636</td>
	  <td>22672.166667</td>
	</tr>
	<tr>
	  <th>2016-12-21</th>
	  <td>0.002079</td>
	  <td>0.006312</td>
	  <td>0.809520</td>
	  <td>0.05688</td>
	  <td>0.998209</td>
	  <td>0.994548</td>
	  <td>22762.666667</td>
	</tr>
	<tr>
	  <th>2016-12-28</th>
	  <td>0.002113</td>
	  <td>0.005827</td>
	  <td>0.817868</td>
	  <td>0.05600</td>
	  <td>0.998249</td>
	  <td>1.003305</td>
	  <td>22765.333333</td>
	</tr>
  </tbody>
</table>
</div>

```python
vnm_his[1:].describe()
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
	  <th>Is 1M</th>
	  <th>Is 5Y</th>
	  <th>USDGBP</th>
	  <th>Bond 5Y Yield</th>
	  <th>Bond Price</th>
	  <th>Bond Price 1W</th>
	  <th>FX</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>count</th>
	  <td>108.000000</td>
	  <td>108.000000</td>
	  <td>108.000000</td>
	  <td>108.000000</td>
	  <td>108.000000</td>
	  <td>108.000000</td>
	  <td>108.000000</td>
	</tr>
	<tr>
	  <th>mean</th>
	  <td>0.003988</td>
	  <td>0.008692</td>
	  <td>0.695621</td>
	  <td>0.061170</td>
	  <td>0.997862</td>
	  <td>0.999471</td>
	  <td>22116.204784</td>
	</tr>
	<tr>
	  <th>std</th>
	  <td>0.001019</td>
	  <td>0.003960</td>
	  <td>0.055242</td>
	  <td>0.004991</td>
	  <td>0.000336</td>
	  <td>0.005259</td>
	  <td>409.882565</td>
	</tr>
	<tr>
	  <th>min</th>
	  <td>0.002030</td>
	  <td>0.001232</td>
	  <td>0.635760</td>
	  <td>0.050000</td>
	  <td>0.997423</td>
	  <td>0.983066</td>
	  <td>21316.033333</td>
	</tr>
	<tr>
	  <th>25%</th>
	  <td>0.004238</td>
	  <td>0.005867</td>
	  <td>0.651949</td>
	  <td>0.057225</td>
	  <td>0.997573</td>
	  <td>0.997825</td>
	  <td>21809.583333</td>
	</tr>
	<tr>
	  <th>50%</th>
	  <td>0.004564</td>
	  <td>0.009777</td>
	  <td>0.674581</td>
	  <td>0.061880</td>
	  <td>0.997790</td>
	  <td>0.999481</td>
	  <td>22309.508334</td>
	</tr>
	<tr>
	  <th>75%</th>
	  <td>0.004608</td>
	  <td>0.012181</td>
	  <td>0.723611</td>
	  <td>0.065545</td>
	  <td>0.998159</td>
	  <td>1.001655</td>
	  <td>22379.091667</td>
	</tr>
	<tr>
	  <th>max</th>
	  <td>0.004654</td>
	  <td>0.014791</td>
	  <td>0.821830</td>
	  <td>0.067500</td>
	  <td>0.998531</td>
	  <td>1.017343</td>
	  <td>22765.333333</td>
	</tr>
  </tbody>
</table>
</div>

Comment:

For the Vietnamese bond market, the average 5-year Is rate is 0.008025 and the average 5-year bond yield is 0.057267. The average exchange rate between the USD and GBP is 0.721989, meaning that it takes approximately 1.38 GBP to purchase 1 USD.

Given this information, if we to do a weekly carry trade by borrowing GBP and using the funds to purchase Vietnamese bonds, it would make sense if the bond price to remain relatively stable or increase slightly. This is because the 5-year bond yield is currently higher than the 5-year Is rate of 0.008025. Additionally, if the exchange rate between the USD and GBP remains relatively stable, we would be able to earn the bond yield in USD, which would be worth more than the GBP that was borrowed.

However, it's important to note that this strategy involves currency risk, as the value of the GBP may change relative to the USD. If the GBP were to appreciate relative to the USD, it would result in the investor losing money on the carry trade. It's also important to consider other factors such as credit risk and market conditions that may affect the bond price and the Is rate.

In summary, while the carry trade strategy may be profitable if the bond price remains stable and the exchange rate between the USD and GBP doesn't change significantly, it also involves taking on currency risk.

```python
pak_his.tail()
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
	  <th>Is 1M</th>
	  <th>Is 5Y</th>
	  <th>USDGBP</th>
	  <th>Bond 5Y Yield</th>
	  <th>Bond Price</th>
	  <th>Bond Price 1W</th>
	  <th>FX</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2016-11-30</th>
	  <td>0.002079</td>
	  <td>0.006147</td>
	  <td>0.800568</td>
	  <td>0.0693</td>
	  <td>0.997395</td>
	  <td>0.995595</td>
	  <td>104.805201</td>
	</tr>
	<tr>
	  <th>2016-12-07</th>
	  <td>0.002037</td>
	  <td>0.005752</td>
	  <td>0.793580</td>
	  <td>0.0717</td>
	  <td>0.997180</td>
	  <td>0.988779</td>
	  <td>104.744899</td>
	</tr>
	<tr>
	  <th>2016-12-14</th>
	  <td>0.002032</td>
	  <td>0.005880</td>
	  <td>0.787360</td>
	  <td>0.0723</td>
	  <td>0.997117</td>
	  <td>0.996302</td>
	  <td>104.734799</td>
	</tr>
	<tr>
	  <th>2016-12-21</th>
	  <td>0.002079</td>
	  <td>0.006312</td>
	  <td>0.809520</td>
	  <td>0.0739</td>
	  <td>0.996975</td>
	  <td>0.992038</td>
	  <td>104.825000</td>
	</tr>
	<tr>
	  <th>2016-12-28</th>
	  <td>0.002113</td>
	  <td>0.005827</td>
	  <td>0.817868</td>
	  <td>0.0748</td>
	  <td>0.996903</td>
	  <td>0.994911</td>
	  <td>104.857191</td>
	</tr>
  </tbody>
</table>
</div>

```python
pak_his[1:].describe()
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
	  <th>Is 1M</th>
	  <th>Is 5Y</th>
	  <th>USDGBP</th>
	  <th>Bond 5Y Yield</th>
	  <th>Bond Price</th>
	  <th>Bond Price 1W</th>
	  <th>FX</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>count</th>
	  <td>124.000000</td>
	  <td>124.000000</td>
	  <td>124.000000</td>
	  <td>124.000000</td>
	  <td>124.000000</td>
	  <td>124.000000</td>
	  <td>124.000000</td>
	</tr>
	<tr>
	  <th>mean</th>
	  <td>0.004029</td>
	  <td>0.009484</td>
	  <td>0.686031</td>
	  <td>0.083584</td>
	  <td>0.996271</td>
	  <td>0.999808</td>
	  <td>103.447804</td>
	</tr>
	<tr>
	  <th>std</th>
	  <td>0.000957</td>
	  <td>0.004280</td>
	  <td>0.057417</td>
	  <td>0.017944</td>
	  <td>0.001496</td>
	  <td>0.008726</td>
	  <td>1.547935</td>
	</tr>
	<tr>
	  <th>min</th>
	  <td>0.002030</td>
	  <td>0.001232</td>
	  <td>0.601742</td>
	  <td>0.064400</td>
	  <td>0.992203</td>
	  <td>0.979247</td>
	  <td>100.293860</td>
	</tr>
	<tr>
	  <th>25%</th>
	  <td>0.004267</td>
	  <td>0.006139</td>
	  <td>0.643702</td>
	  <td>0.069300</td>
	  <td>0.995935</td>
	  <td>0.995159</td>
	  <td>101.829650</td>
	</tr>
	<tr>
	  <th>50%</th>
	  <td>0.004527</td>
	  <td>0.010673</td>
	  <td>0.667749</td>
	  <td>0.079900</td>
	  <td>0.996554</td>
	  <td>0.998836</td>
	  <td>104.422063</td>
	</tr>
	<tr>
	  <th>75%</th>
	  <td>0.004600</td>
	  <td>0.012736</td>
	  <td>0.706032</td>
	  <td>0.088125</td>
	  <td>0.997412</td>
	  <td>1.003366</td>
	  <td>104.741045</td>
	</tr>
	<tr>
	  <th>max</th>
	  <td>0.004654</td>
	  <td>0.017412</td>
	  <td>0.821830</td>
	  <td>0.129200</td>
	  <td>0.997791</td>
	  <td>1.040550</td>
	  <td>105.471540</td>
	</tr>
  </tbody>
</table>
</div>

Comment:

Based on the data, the average Is 1M rate is 0.003622, and the average Is 5Y rate is 0.0086. These rates are used as benchmark interest rates for pricing other financial products and are considered to be relatively low.

The average exchange rate of US dollars to British pounds is 0.712, meaning that on average, 1 US dollar could purchase 0.712 British pounds.

The average yield on the Pakistani bonds with a maturity of 5 years is 0.086, which is relatively high compared to the Is rates. The bond price is 0.996, which is relatively low compared to the price of bonds with similar yields. This suggests that the market may be pricing in a higher level of risk for the Pakistani bonds compared to other bonds.

The average change in the price of the Pakistani bonds over the past week is 0.993805, which is a relatively small decrease.

The average exchange rate of US dollars to Pakistani rupees is 103.998, meaning that on average, 1 US dollar could purchase 103.998 Pakistani rupees.

Overall, the data suggests that the Pound is relatively strong compared to the US dollar, while the Pakistani rupee is relatively weak. The high yield on the Pakistani bonds suggests that the market views these bonds as relatively risky, which could be why the bond price is relatively low. The relatively small change in the bond price over the past week suggests that the market is relatively stable for Pakistani bonds.

```python
phl_his.tail()
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
	  <th>Is 1M</th>
	  <th>Is 5Y</th>
	  <th>USDGBP</th>
	  <th>Bond 5Y Yield</th>
	  <th>Bond Price</th>
	  <th>Bond Price 1W</th>
	  <th>FX</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2016-11-30</th>
	  <td>0.002079</td>
	  <td>0.006147</td>
	  <td>0.800568</td>
	  <td>0.04939</td>
	  <td>0.998511</td>
	  <td>0.998970</td>
	  <td>49.829970</td>
	</tr>
	<tr>
	  <th>2016-12-07</th>
	  <td>0.002037</td>
	  <td>0.005752</td>
	  <td>0.793580</td>
	  <td>0.04836</td>
	  <td>0.998565</td>
	  <td>1.004803</td>
	  <td>49.607810</td>
	</tr>
	<tr>
	  <th>2016-12-14</th>
	  <td>0.002032</td>
	  <td>0.005880</td>
	  <td>0.787360</td>
	  <td>0.04837</td>
	  <td>0.998580</td>
	  <td>1.000196</td>
	  <td>49.696050</td>
	</tr>
	<tr>
	  <th>2016-12-21</th>
	  <td>0.002079</td>
	  <td>0.006312</td>
	  <td>0.809520</td>
	  <td>0.04848</td>
	  <td>0.998563</td>
	  <td>0.999781</td>
	  <td>49.861000</td>
	</tr>
	<tr>
	  <th>2016-12-28</th>
	  <td>0.002113</td>
	  <td>0.005827</td>
	  <td>0.817868</td>
	  <td>0.04821</td>
	  <td>0.998607</td>
	  <td>1.001513</td>
	  <td>49.763626</td>
	</tr>
  </tbody>
</table>
</div>

```python
phl_his[1:].describe()
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
	  <th>Is 1M</th>
	  <th>Is 5Y</th>
	  <th>USDGBP</th>
	  <th>Bond 5Y Yield</th>
	  <th>Bond Price</th>
	  <th>Bond Price 1W</th>
	  <th>FX</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>count</th>
	  <td>108.000000</td>
	  <td>108.000000</td>
	  <td>108.000000</td>
	  <td>108.000000</td>
	  <td>108.000000</td>
	  <td>108.000000</td>
	  <td>108.000000</td>
	</tr>
	<tr>
	  <th>mean</th>
	  <td>0.003988</td>
	  <td>0.008692</td>
	  <td>0.695621</td>
	  <td>0.035651</td>
	  <td>0.999229</td>
	  <td>0.999350</td>
	  <td>46.446782</td>
	</tr>
	<tr>
	  <th>std</th>
	  <td>0.001019</td>
	  <td>0.003960</td>
	  <td>0.055242</td>
	  <td>0.005351</td>
	  <td>0.000249</td>
	  <td>0.012574</td>
	  <td>1.493065</td>
	</tr>
	<tr>
	  <th>min</th>
	  <td>0.002030</td>
	  <td>0.001232</td>
	  <td>0.635760</td>
	  <td>0.027960</td>
	  <td>0.998511</td>
	  <td>0.938321</td>
	  <td>44.073700</td>
	</tr>
	<tr>
	  <th>25%</th>
	  <td>0.004238</td>
	  <td>0.005867</td>
	  <td>0.651949</td>
	  <td>0.031295</td>
	  <td>0.999087</td>
	  <td>0.998276</td>
	  <td>45.094963</td>
	</tr>
	<tr>
	  <th>50%</th>
	  <td>0.004564</td>
	  <td>0.009777</td>
	  <td>0.674581</td>
	  <td>0.034550</td>
	  <td>0.999296</td>
	  <td>0.999673</td>
	  <td>46.665200</td>
	</tr>
	<tr>
	  <th>75%</th>
	  <td>0.004608</td>
	  <td>0.012181</td>
	  <td>0.723611</td>
	  <td>0.038988</td>
	  <td>0.999436</td>
	  <td>1.001542</td>
	  <td>47.207650</td>
	</tr>
	<tr>
	  <th>max</th>
	  <td>0.004654</td>
	  <td>0.014791</td>
	  <td>0.821830</td>
	  <td>0.049390</td>
	  <td>0.999550</td>
	  <td>1.050171</td>
	  <td>49.907140</td>
	</tr>
  </tbody>
</table>
</div>

Comment: 

The mean FX rate between USD and GBP is 0.721466, which means 1 USD is equivalent to 0.721466 GBP. The mean FX rate between USD and PHP is 47.716730, which means 1 USD is equivalent to 47.716730 PHP.

The mean bond price for the Philippine bond is 0.999112, which is relatively stable and doesn't fluctuate much as shown by the small standard deviation of 0.000286. The mean Bond 5Y Yield is 0.038305, which is relatively low compared to the Is 1M rate of 0.003554 and Is 5Y rate of 0.008054.

Based on this data, borrowing pounds and investing in Philippine bonds does not seem like a good carry trade strategy. The low Bond 5Y Yield of 0.038305 combined with the high FX rate between USD and GBP means that there is not much return on investment to be gained from this carry trade. Additionally, the relatively stable bond price of the Philippine bond suggests that there is not much room for price appreciation either.

In conclusion, the data suggests that this carry trade strategy is not likely to yield significant returns. Other factors such as market conditions, risk tolerance, and investment goals should also be considered before making any investment decisions.

## Plot historical 5Y yield curve (2014-12-01 to 2016-12-31)

```python
plt.subplots(figsize=(20,6))
plt.plot(vnm_his['Bond 5Y Yield'], label = 'Vietnamese Dong')
plt.plot(tha_his['Bond 5Y Yield'], label = 'Thai Baht')
plt.plot(pak_his['Bond 5Y Yield']['2014-12-01':], label = 'Pakistani Rupee')
plt.plot(phl_his['Bond 5Y Yield'], label = 'Philippine Peso')
plt.plot(tha_his['OIS 5Y'], '--',linewidth=3, label = 'UK OIS 5Y')
plt.ylabel("Rate")
plt.xlabel("Date")
plt.title("5Y yield curves on foreign bonds vs UK OIS rate 5Y",size=15)
plt.gca().set_facecolor('lightgray')
plt.grid(True)
plt.legend(loc='upper left')
plt.show()
```

![png](output_24_0.png)

## Plot historical Foreign Exchange Rate for each currency.

Vietnam's FX rate stands out with a significantly higher unit value compared to other currencies, so it is separated for a separate plot.

```python
plt.subplots(figsize=(20,6))
plt.plot(tha_his['FX'], label = 'Thai Baht')
plt.plot(pak_his['FX']['2014-12-01':], label = 'Pakistani Rupee')
plt.plot(phl_his['FX'], label = 'Philippine Peso')
plt.plot(tha_his['USDGBP'], label = 'UK Pounds')
plt.ylabel("FX")
plt.xlabel("Date")
plt.title("Froeign Exchange Rate",size=15)
plt.gca().set_facecolor('lightgray')
plt.grid(True)
plt.legend(loc='upper left')
plt.show()
```

![png](output_26_0.png)

```python
plt.subplots(figsize=(20,6))
plt.plot(vnm_his['FX'], label = 'Vietnamese Dong')
plt.ylabel("FX")
plt.xlabel("Date")
plt.title("Froeign Exchange Rate",size=15)
plt.gca().set_facecolor('lightgray')
plt.grid(True)
plt.legend(loc='upper left')
plt.show()
```

![png](output_27_0.png)

```python
plt.subplots(figsize=(20,6))
plt.plot(vnm_his['Bond Price'], label = 'Vietnamese Dong')
plt.plot(tha_his['Bond Price'], label = 'Thai Baht')
plt.plot(pak_his['Bond Price']['2014-12-01':], label = 'Pakistani Rupee')
plt.plot(phl_his['Bond Price'], label = 'Philippine Peso')
plt.ylabel("Price")
plt.xlabel("Date")
plt.title("Froeign Bond Price",size=15)
plt.gca().set_facecolor('lightgray')
plt.grid(True)
plt.legend(loc='upper left')
plt.show()
```

![png](output_28_0.png)

# 3. Carry Trade Strategy

Trading Idea: Borrowing UK pounds with interest rate of Is+50bp, 5x leverage lending to foreign bonds (Vietnamese Dong, Thai Baht, Pakistani Rupee and Philippine Peso) getting interest at 5y treasury rate. Hold position only when lending currency 5Y swap rate is 50bp higher than the 5Y swap rate in the funding currency. Close out position at week end.

In the borrowing (funding) currency, assume a rate of Is+50bp, paid on 4/5 the notional amount (5x leverage) in the borrowing currency for each active position. In the lending currency, assume the schedule has a coupon every quarter at the 5Y swap rate, or (optionally) the 5Y treasury rate.

Weeks in which the 5Y swap rate of the lending currency is less than 50bp higher than the 5Y swap rate in the funding currency will be assumed to have no position

At the end of each week, assume you sell out of the position before opening a new one. You therefore need to tally accrued interest at the borrow and lend rates, and then compute mark-to-market for the swap exit.

- Total Investing Capital Each Week: US\$ 10 MM notional
- Borrowing Capital = 4/5 * Investing Capital = US\$ 8 MM notional 
- Borrowing Interest Rate = Is + 50bp
- Bond PNL = Week end Bond price in USD - Starting Bond price in USD
- FX PNL = Investing Capital in USD - Investing Capital in USD week end (flipped because we are shorting it)
- PNL = Week-end Cash in USD - Starting Cash in USD

```python
def carry_trade_table(df):
    
    total_capital = 10e6
    borrow_capital = 4/5 * total_capital

    df['Lending Currency'] = total_capital * df['FX']
    df['Bond Amount'] = (df['Lending Currency'] / df['Bond Price']).fillna(0)
    df['Position'] = np.where(df['Bond 5Y Yield']-df['OIS 5Y'] > 0.005, 1, 0)
    df['Bond Bought (Q)'] = df['Bond Amount'] * df['Position']
    df['Lending Currency 1W'] = (df['Bond Bought (Q)'].shift(1) * df['Bond Price 1W']).fillna(0)
    df['Lending Currency 1W (USD)'] = df['Lending Currency 1W'] / df['FX']   
    df['Bond PNL (USD)'] = (df['Lending Currency 1W (USD)'] - 10e6) * df['Position'].shift(1)
    df['Cumulative Bond PNL (USD)'] = df['Bond PNL (USD)'].cumsum()
 
    df['Total Investment (USD)'] = 10e6 * df['Position']
    df['Total Capital (GBP)'] = df['Total Investment (USD)'] * df['USDGBP']
    df['Borrowing Capital (GBP)'] = 3/4 * df['Total Capital (GBP)']
    df['Borrow Interest Rate'] = (df['OIS 1M'] + 0.005)/52
    df['Funding Interest (GBP)'] = (df['Borrowing Capital (GBP)'].shift(1) * df['Borrow Interest Rate'].shift(1)) * df['Position'].shift(1)
    df['Funding Interest (USD)'] = df['Funding Interest (GBP)']/df['USDGBP']
    df['Cumulative Interest'] = df['Funding Interest (USD)'].cumsum()

    df['Investing Capital 1W (USD)'] = df['Total Capital (GBP)'].shift(1)/df['USDGBP']
    df['FX PNL'] = df['Total Investment (USD)'] - df['Total Capital (GBP)'].shift(1)/df['USDGBP']
    df['Cumulative FX PNL'] = df['FX PNL'].cumsum()

    df['PNL'] = df['Lending Currency 1W (USD)'] - df['Funding Interest (USD)'] - df['Investing Capital 1W (USD)']
    df['Cumulative PNL'] = df['PNL'].cumsum()
    return df
```

# 4. Trade on the sample data from 2017-01-01

```python
def trading_plot(df):

    df['date'] = df.index
    plt.figure(figsize=(20, 8))
    sns.lineplot(x='date', y='Bond 5Y Yield', data=df, label='Bond 5Y Yield')
    sns.lineplot(x='date', y='OIS 5Y', data=df, label='OIS 5Y')
    sns.scatterplot(x='date', y='Bond 5Y Yield', hue='Position', data=df, marker='o', s=100, style='Position',palette={1:'green',0:'red'})
    plt.legend(title='Carry Trade')
    plt.ylabel("5Y Swap Rate")
    plt.xlabel("Date")
    plt.gca().set_facecolor('lightgray')
    plt.grid(True)
    plt.legend(loc='upper left')
    plt.show()

    plt.figure(figsize=(20, 8))
    plt.plot(df['Cumulative Bond PNL (USD)'], label = 'Cumulative Bond PNL')
    plt.legend(title='PNL')
    plt.ylabel("Million")
    plt.xlabel("Date")
    plt.gca().set_facecolor('lightgray')
    plt.grid(True)
    plt.legend(loc='upper left')
    plt.show()

```

```python
trade_tha_sample = carry_trade_table(tha_sample)
trade_vnm_sample = carry_trade_table(vnm_sample)
trade_phl_sample = carry_trade_table(phl_sample)
trade_pak_sample = carry_trade_table(pak_sample)
```

# 5. Analysis

## Carry Trade 1: Borrow Pounds Buy THA Bonds

```python
trade_tha_sample.tail().round(4)
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
	  <th>Is 1M</th>
	  <th>Is 5Y</th>
	  <th>USDGBP</th>
	  <th>Bond 5Y Yield</th>
	  <th>Bond Price</th>
	  <th>Bond Price 1W</th>
	  <th>FX</th>
	  <th>Lending Currency</th>
	  <th>Bond Amount</th>
	  <th>Position</th>
	  <th>…</th>
	  <th>Borrowing Capital (GBP)</th>
	  <th>Borrow Interest Rate</th>
	  <th>Funding Interest (GBP)</th>
	  <th>Funding Interest (USD)</th>
	  <th>Cumulative Interest</th>
	  <th>Investing Capital 1W (USD)</th>
	  <th>FX PNL</th>
	  <th>Cumulative FX PNL</th>
	  <th>PNL</th>
	  <th>Cumulative PNL</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2022-11-23</th>
	  <td>0.0306</td>
	  <td>0.0368</td>
	  <td>0.8413</td>
	  <td>0.0242</td>
	  <td>0.9996</td>
	  <td>0.9992</td>
	  <td>36.1802</td>
	  <td>361802500.0</td>
	  <td>3.619340e+08</td>
	  <td>0</td>
	  <td>…</td>
	  <td>0.0</td>
	  <td>0.0007</td>
	  <td>0.0</td>
	  <td>0.0</td>
	  <td>292365.4768</td>
	  <td>0.0</td>
	  <td>0.0</td>
	  <td>-1.228553e+07</td>
	  <td>0.0</td>
	  <td>1.475057e+06</td>
	</tr>
	<tr>
	  <th>2022-11-30</th>
	  <td>0.0318</td>
	  <td>0.0375</td>
	  <td>0.8347</td>
	  <td>0.0224</td>
	  <td>0.9997</td>
	  <td>1.0087</td>
	  <td>35.3245</td>
	  <td>353245000.0</td>
	  <td>3.533543e+08</td>
	  <td>0</td>
	  <td>…</td>
	  <td>0.0</td>
	  <td>0.0007</td>
	  <td>0.0</td>
	  <td>0.0</td>
	  <td>292365.4768</td>
	  <td>0.0</td>
	  <td>0.0</td>
	  <td>-1.228553e+07</td>
	  <td>0.0</td>
	  <td>1.475057e+06</td>
	</tr>
	<tr>
	  <th>2022-12-07</th>
	  <td>0.0332</td>
	  <td>0.0364</td>
	  <td>0.8245</td>
	  <td>0.0212</td>
	  <td>0.9997</td>
	  <td>1.0061</td>
	  <td>34.9900</td>
	  <td>349900000.0</td>
	  <td>3.499965e+08</td>
	  <td>0</td>
	  <td>…</td>
	  <td>0.0</td>
	  <td>0.0007</td>
	  <td>0.0</td>
	  <td>0.0</td>
	  <td>292365.4768</td>
	  <td>0.0</td>
	  <td>0.0</td>
	  <td>-1.228553e+07</td>
	  <td>0.0</td>
	  <td>1.475057e+06</td>
	</tr>
	<tr>
	  <th>2022-12-14</th>
	  <td>0.0344</td>
	  <td>0.0373</td>
	  <td>0.8094</td>
	  <td>0.0209</td>
	  <td>0.9997</td>
	  <td>1.0015</td>
	  <td>34.5900</td>
	  <td>345900000.0</td>
	  <td>3.459936e+08</td>
	  <td>0</td>
	  <td>…</td>
	  <td>0.0</td>
	  <td>0.0008</td>
	  <td>0.0</td>
	  <td>0.0</td>
	  <td>292365.4768</td>
	  <td>0.0</td>
	  <td>0.0</td>
	  <td>-1.228553e+07</td>
	  <td>0.0</td>
	  <td>1.475057e+06</td>
	</tr>
	<tr>
	  <th>2022-12-21</th>
	  <td>0.0343</td>
	  <td>0.0376</td>
	  <td>0.8193</td>
	  <td>0.0195</td>
	  <td>0.9998</td>
	  <td>1.0071</td>
	  <td>34.9850</td>
	  <td>349850010.0</td>
	  <td>3.499320e+08</td>
	  <td>0</td>
	  <td>…</td>
	  <td>0.0</td>
	  <td>0.0008</td>
	  <td>0.0</td>
	  <td>0.0</td>
	  <td>292365.4768</td>
	  <td>0.0</td>
	  <td>0.0</td>
	  <td>-1.228553e+07</td>
	  <td>0.0</td>
	  <td>1.475057e+06</td>
	</tr>
  </tbody>
</table>
<p>5 rows × 27 columns</p>
</div>

```python
trading_plot(trade_tha_sample)
```

![png](output_40_0.png)

![png](output_40_1.png)

```python
trade_tha_sample[['OIS 5Y','Bond 5Y Yield','FX','Cumulative Bond PNL (USD)','Cumulative PNL']][1:].describe()
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
	  <th>Is 5Y</th>
	  <th>Bond 5Y Yield</th>
	  <th>FX</th>
	  <th>Cumulative Bond PNL (USD)</th>
	  <th>Cumulative PNL</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>count</th>
	  <td>311.000000</td>
	  <td>311.000000</td>
	  <td>311.000000</td>
	  <td>3.110000e+02</td>
	  <td>3.110000e+02</td>
	</tr>
	<tr>
	  <th>mean</th>
	  <td>0.009639</td>
	  <td>0.016223</td>
	  <td>32.593157</td>
	  <td>2.634105e+06</td>
	  <td>1.236529e+06</td>
	</tr>
	<tr>
	  <th>std</th>
	  <td>0.009370</td>
	  <td>0.005891</td>
	  <td>1.778283</td>
	  <td>1.155726e+06</td>
	  <td>6.245728e+05</td>
	</tr>
	<tr>
	  <th>min</th>
	  <td>-0.000612</td>
	  <td>0.005900</td>
	  <td>29.851776</td>
	  <td>7.750136e+04</td>
	  <td>-5.955755e+04</td>
	</tr>
	<tr>
	  <th>25%</th>
	  <td>0.004449</td>
	  <td>0.010380</td>
	  <td>31.243750</td>
	  <td>1.547510e+06</td>
	  <td>6.558458e+05</td>
	</tr>
	<tr>
	  <th>50%</th>
	  <td>0.007156</td>
	  <td>0.017840</td>
	  <td>32.440000</td>
	  <td>2.888835e+06</td>
	  <td>1.259378e+06</td>
	</tr>
	<tr>
	  <th>75%</th>
	  <td>0.010798</td>
	  <td>0.021195</td>
	  <td>33.381138</td>
	  <td>3.669838e+06</td>
	  <td>1.733354e+06</td>
	</tr>
	<tr>
	  <th>max</th>
	  <td>0.051128</td>
	  <td>0.027320</td>
	  <td>38.123500</td>
	  <td>4.052951e+06</td>
	  <td>2.703711e+06</td>
	</tr>
  </tbody>
</table>
</div>

Comment:

Most of our trades were done before 2021 March, as the bond yield and borrowing yield spread was relatively wide and contributed to the overall profit.

The "Cumulative Bond PNL (USD)" column shows the cumulative profit and loss from the bond investment in US dollars. The mean value of 2.634105e+06 indicates an average profit of over 2.6 million US dollars. The standard deviation of 1.155726e+06 shows that the profit from bond investment had a wide range of values.

The "Cumulative PNL" column shows the cumulative profit and loss of the entire carry trade strategy, which includes both the bond investment and the foreign exchange rate. The mean value of 1.236529e+06 indicates an average profit of over 1.2 million US dollars. The standard deviation of 6.245728e+05 shows that the profit from the entire carry trade had a wide range of values.

Overall, the performance of this carry trade seems to be positive, with an average profit of over 1.2 million US dollars, but with a wide range of values.

## Carry Trade 2: Borrow Pounds Buy VNM Bonds

```python
trade_vnm_sample.tail().round(4)
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
	  <th>Is 1M</th>
	  <th>Is 5Y</th>
	  <th>USDGBP</th>
	  <th>Bond 5Y Yield</th>
	  <th>Bond Price</th>
	  <th>Bond Price 1W</th>
	  <th>FX</th>
	  <th>Lending Currency</th>
	  <th>Bond Amount</th>
	  <th>Position</th>
	  <th>…</th>
	  <th>Borrowing Capital (GBP)</th>
	  <th>Borrow Interest Rate</th>
	  <th>Funding Interest (GBP)</th>
	  <th>Funding Interest (USD)</th>
	  <th>Cumulative Interest</th>
	  <th>Investing Capital 1W (USD)</th>
	  <th>FX PNL</th>
	  <th>Cumulative FX PNL</th>
	  <th>PNL</th>
	  <th>Cumulative PNL</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2022-11-23</th>
	  <td>0.0306</td>
	  <td>0.0368</td>
	  <td>0.8413</td>
	  <td>0.0479</td>
	  <td>0.9988</td>
	  <td>0.9997</td>
	  <td>24847.8076</td>
	  <td>2.484781e+11</td>
	  <td>2.487824e+11</td>
	  <td>1</td>
	  <td>…</td>
	  <td>6309825.0</td>
	  <td>0.0007</td>
	  <td>4238.3695</td>
	  <td>5037.8214</td>
	  <td>322434.4894</td>
	  <td>1.001278e+07</td>
	  <td>-12777.6919</td>
	  <td>-1.429352e+06</td>
	  <td>-32109.6597</td>
	  <td>2.434795e+06</td>
	</tr>
	<tr>
	  <th>2022-11-30</th>
	  <td>0.0318</td>
	  <td>0.0375</td>
	  <td>0.8347</td>
	  <td>0.0480</td>
	  <td>0.9988</td>
	  <td>0.9990</td>
	  <td>24651.8028</td>
	  <td>2.465180e+11</td>
	  <td>2.468223e+11</td>
	  <td>1</td>
	  <td>…</td>
	  <td>6260617.5</td>
	  <td>0.0007</td>
	  <td>4325.4796</td>
	  <td>5181.7727</td>
	  <td>327616.2621</td>
	  <td>1.007860e+07</td>
	  <td>-78598.4769</td>
	  <td>-1.507950e+06</td>
	  <td>-2486.2325</td>
	  <td>2.432309e+06</td>
	</tr>
	<tr>
	  <th>2022-12-07</th>
	  <td>0.0332</td>
	  <td>0.0364</td>
	  <td>0.8245</td>
	  <td>0.0480</td>
	  <td>0.9988</td>
	  <td>0.9997</td>
	  <td>23863.5283</td>
	  <td>2.386353e+11</td>
	  <td>2.389300e+11</td>
	  <td>1</td>
	  <td>…</td>
	  <td>6183397.5</td>
	  <td>0.0007</td>
	  <td>4428.8497</td>
	  <td>5371.8644</td>
	  <td>332988.1265</td>
	  <td>1.012488e+07</td>
	  <td>-124882.8011</td>
	  <td>-1.632833e+06</td>
	  <td>209735.1339</td>
	  <td>2.642044e+06</td>
	</tr>
	<tr>
	  <th>2022-12-14</th>
	  <td>0.0344</td>
	  <td>0.0373</td>
	  <td>0.8094</td>
	  <td>0.0479</td>
	  <td>0.9988</td>
	  <td>1.0003</td>
	  <td>23504.5509</td>
	  <td>2.350455e+11</td>
	  <td>2.353345e+11</td>
	  <td>1</td>
	  <td>…</td>
	  <td>6070425.0</td>
	  <td>0.0008</td>
	  <td>4540.5918</td>
	  <td>5609.8936</td>
	  <td>338598.0201</td>
	  <td>1.018610e+07</td>
	  <td>-186103.1147</td>
	  <td>-1.818936e+06</td>
	  <td>-23149.0339</td>
	  <td>2.618895e+06</td>
	</tr>
	<tr>
	  <th>2022-12-21</th>
	  <td>0.0343</td>
	  <td>0.0376</td>
	  <td>0.8193</td>
	  <td>0.0479</td>
	  <td>0.9988</td>
	  <td>0.9997</td>
	  <td>23554.3781</td>
	  <td>2.355438e+11</td>
	  <td>2.358335e+11</td>
	  <td>1</td>
	  <td>…</td>
	  <td>6144585.0</td>
	  <td>0.0008</td>
	  <td>4599.8299</td>
	  <td>5614.4921</td>
	  <td>344212.5122</td>
	  <td>9.879308e+06</td>
	  <td>120691.6334</td>
	  <td>-1.698245e+06</td>
	  <td>103290.0965</td>
	  <td>2.722185e+06</td>
	</tr>
  </tbody>
</table>
<p>5 rows × 27 columns</p>
</div>

```python
trading_plot(trade_vnm_sample)
```

![png](output_46_0.png)

![png](output_46_1.png)

```python
trade_vnm_sample[['OIS 5Y','Bond 5Y Yield','FX','Cumulative Bond PNL (USD)','Cumulative PNL']][1:].describe()
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
	  <th>Is 5Y</th>
	  <th>Bond 5Y Yield</th>
	  <th>FX</th>
	  <th>Cumulative Bond PNL (USD)</th>
	  <th>Cumulative PNL</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>count</th>
	  <td>311.000000</td>
	  <td>311.000000</td>
	  <td>311.000000</td>
	  <td>3.110000e+02</td>
	  <td>3.110000e+02</td>
	</tr>
	<tr>
	  <th>mean</th>
	  <td>0.009639</td>
	  <td>0.029787</td>
	  <td>23082.802433</td>
	  <td>2.548696e+06</td>
	  <td>1.520489e+06</td>
	</tr>
	<tr>
	  <th>std</th>
	  <td>0.009370</td>
	  <td>0.014318</td>
	  <td>367.589278</td>
	  <td>1.326352e+06</td>
	  <td>9.743629e+05</td>
	</tr>
	<tr>
	  <th>min</th>
	  <td>-0.000612</td>
	  <td>0.008500</td>
	  <td>22548.966667</td>
	  <td>2.155758e+05</td>
	  <td>-2.207523e+05</td>
	</tr>
	<tr>
	  <th>25%</th>
	  <td>0.004449</td>
	  <td>0.016835</td>
	  <td>22774.437741</td>
	  <td>1.358810e+06</td>
	  <td>4.569535e+05</td>
	</tr>
	<tr>
	  <th>50%</th>
	  <td>0.007156</td>
	  <td>0.031200</td>
	  <td>23105.962672</td>
	  <td>2.678400e+06</td>
	  <td>1.964727e+06</td>
	</tr>
	<tr>
	  <th>75%</th>
	  <td>0.010798</td>
	  <td>0.043875</td>
	  <td>23242.613240</td>
	  <td>3.865177e+06</td>
	  <td>2.411706e+06</td>
	</tr>
	<tr>
	  <th>max</th>
	  <td>0.051128</td>
	  <td>0.054000</td>
	  <td>24866.343789</td>
	  <td>4.776429e+06</td>
	  <td>2.774622e+06</td>
	</tr>
  </tbody>
</table>
</div>

Comment:

The carry trade between borrowing pounds and buying Vietnamese Dong (VNM) bonds had a mean cumulative PNL (Profit and Loss) of USD 1,520,489 over a period of 311 days, according to the data in the table. The standard deviation of the cumulative PNL was USD 974,363, indicating a relatively high level of volatility in the trade's performance. The minimum cumulative PNL was -2,207,523 and the maximum cumulative PNL was 2,774,622. The 25th, 50th, and 75th percentiles of the cumulative PNL were USD 456,935, USD 1,964,727, and USD 2,411,706, respectively.

## Carry Trade 3: Borrow Pounds Buy PHL Bonds

```python
trade_phl_sample.tail().round(4)
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
	  <th>Is 1M</th>
	  <th>Is 5Y</th>
	  <th>USDGBP</th>
	  <th>Bond 5Y Yield</th>
	  <th>Bond Price</th>
	  <th>Bond Price 1W</th>
	  <th>FX</th>
	  <th>Lending Currency</th>
	  <th>Bond Amount</th>
	  <th>Position</th>
	  <th>…</th>
	  <th>Borrowing Capital (GBP)</th>
	  <th>Borrow Interest Rate</th>
	  <th>Funding Interest (GBP)</th>
	  <th>Funding Interest (USD)</th>
	  <th>Cumulative Interest</th>
	  <th>Investing Capital 1W (USD)</th>
	  <th>FX PNL</th>
	  <th>Cumulative FX PNL</th>
	  <th>PNL</th>
	  <th>Cumulative PNL</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2022-11-23</th>
	  <td>0.0306</td>
	  <td>0.0368</td>
	  <td>0.8413</td>
	  <td>0.0673</td>
	  <td>0.9975</td>
	  <td>1.0067</td>
	  <td>57.2325</td>
	  <td>572325010.0</td>
	  <td>5.737349e+08</td>
	  <td>1</td>
	  <td>…</td>
	  <td>6309825.0</td>
	  <td>0.0007</td>
	  <td>4238.3695</td>
	  <td>5037.8214</td>
	  <td>444943.6201</td>
	  <td>1.001278e+07</td>
	  <td>-12777.6919</td>
	  <td>71802.8239</td>
	  <td>117209.4925</td>
	  <td>632177.6921</td>
	</tr>
	<tr>
	  <th>2022-11-30</th>
	  <td>0.0318</td>
	  <td>0.0375</td>
	  <td>0.8347</td>
	  <td>0.0665</td>
	  <td>0.9976</td>
	  <td>1.0027</td>
	  <td>56.4860</td>
	  <td>564859950.0</td>
	  <td>5.662181e+08</td>
	  <td>1</td>
	  <td>…</td>
	  <td>6260617.5</td>
	  <td>0.0007</td>
	  <td>4325.4796</td>
	  <td>5181.7727</td>
	  <td>450125.3928</td>
	  <td>1.007860e+07</td>
	  <td>-78598.4769</td>
	  <td>-6795.6530</td>
	  <td>101125.5496</td>
	  <td>733303.2417</td>
	</tr>
	<tr>
	  <th>2022-12-07</th>
	  <td>0.0332</td>
	  <td>0.0364</td>
	  <td>0.8245</td>
	  <td>0.0648</td>
	  <td>0.9977</td>
	  <td>1.0061</td>
	  <td>55.4850</td>
	  <td>554849990.0</td>
	  <td>5.561223e+08</td>
	  <td>1</td>
	  <td>…</td>
	  <td>6183397.5</td>
	  <td>0.0007</td>
	  <td>4428.8497</td>
	  <td>5371.8644</td>
	  <td>455497.2572</td>
	  <td>1.012488e+07</td>
	  <td>-124882.8011</td>
	  <td>-131678.4541</td>
	  <td>136781.3100</td>
	  <td>870084.5517</td>
	</tr>
	<tr>
	  <th>2022-12-14</th>
	  <td>0.0344</td>
	  <td>0.0373</td>
	  <td>0.8094</td>
	  <td>0.0640</td>
	  <td>0.9978</td>
	  <td>1.0024</td>
	  <td>55.7160</td>
	  <td>557159910.0</td>
	  <td>5.584078e+08</td>
	  <td>1</td>
	  <td>…</td>
	  <td>6070425.0</td>
	  <td>0.0008</td>
	  <td>4540.5918</td>
	  <td>5609.8936</td>
	  <td>461107.1508</td>
	  <td>1.018610e+07</td>
	  <td>-186103.1147</td>
	  <td>-317781.5688</td>
	  <td>-185903.4245</td>
	  <td>684181.1272</td>
	</tr>
	<tr>
	  <th>2022-12-21</th>
	  <td>0.0343</td>
	  <td>0.0376</td>
	  <td>0.8193</td>
	  <td>0.0638</td>
	  <td>0.9978</td>
	  <td>0.9999</td>
	  <td>55.7065</td>
	  <td>557065030.0</td>
	  <td>5.583052e+08</td>
	  <td>1</td>
	  <td>…</td>
	  <td>6144585.0</td>
	  <td>0.0008</td>
	  <td>4599.8299</td>
	  <td>5614.4921</td>
	  <td>466721.6429</td>
	  <td>9.879308e+06</td>
	  <td>120691.6334</td>
	  <td>-197089.9354</td>
	  <td>138079.8055</td>
	  <td>822260.9328</td>
	</tr>
  </tbody>
</table>
<p>5 rows × 27 columns</p>
</div>

```python
trading_plot(trade_phl_sample)
```

![png](output_51_0.png)

![png](output_51_1.png)

```python
plt.subplots(figsize=(20,6))
plt.plot(trade_phl_sample['FX'], label = 'Pakistani Rupee')
plt.ylabel("FX")
plt.xlabel("Date")
plt.title("Froeign Exchange Rate",size=15)
plt.gca().set_facecolor('lightgray')
plt.grid(True)
plt.legend(loc='upper left')
plt.show()
```

![png](output_52_0.png)

```python
trade_phl_sample[['OIS 5Y','Bond 5Y Yield','FX','Cumulative Bond PNL (USD)','Cumulative PNL']][1:].describe()
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
	  <th>Is 5Y</th>
	  <th>Bond 5Y Yield</th>
	  <th>FX</th>
	  <th>Cumulative Bond PNL (USD)</th>
	  <th>Cumulative PNL</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>count</th>
	  <td>311.000000</td>
	  <td>311.000000</td>
	  <td>311.000000</td>
	  <td>3.110000e+02</td>
	  <td>3.110000e+02</td>
	</tr>
	<tr>
	  <th>mean</th>
	  <td>0.009639</td>
	  <td>0.046098</td>
	  <td>51.384514</td>
	  <td>1.386310e+06</td>
	  <td>5.383518e+05</td>
	</tr>
	<tr>
	  <th>std</th>
	  <td>0.009370</td>
	  <td>0.013494</td>
	  <td>2.274504</td>
	  <td>1.345022e+06</td>
	  <td>1.178954e+06</td>
	</tr>
	<tr>
	  <th>min</th>
	  <td>-0.000612</td>
	  <td>0.023230</td>
	  <td>47.734235</td>
	  <td>-1.434410e+06</td>
	  <td>-2.278840e+06</td>
	</tr>
	<tr>
	  <th>25%</th>
	  <td>0.004449</td>
	  <td>0.037155</td>
	  <td>50.061496</td>
	  <td>2.294758e+05</td>
	  <td>-5.262139e+05</td>
	</tr>
	<tr>
	  <th>50%</th>
	  <td>0.007156</td>
	  <td>0.044750</td>
	  <td>51.049788</td>
	  <td>1.335488e+06</td>
	  <td>8.605522e+05</td>
	</tr>
	<tr>
	  <th>75%</th>
	  <td>0.010798</td>
	  <td>0.056165</td>
	  <td>52.324751</td>
	  <td>2.710362e+06</td>
	  <td>1.439281e+06</td>
	</tr>
	<tr>
	  <th>max</th>
	  <td>0.051128</td>
	  <td>0.085518</td>
	  <td>59.041503</td>
	  <td>3.516168e+06</td>
	  <td>2.549549e+06</td>
	</tr>
  </tbody>
</table>
</div>

Comment:

Based on the plot and table:

The average yield differential was 0.046098 - 0.009639 = 0.036460 per year over the period.

The standard deviation of the bond yield was 0.013494, indicating a relatively high level of volatility.

The minimum and maximum cumulative bond PNL (USD) values were -1.434410e+06 and 3.516168e+06, respectively, showing a significant range of outcomes.

The average cumulative bond PNL (USD) was 1.386310e+06.

It's important to note that this analysis only considers the yield differential and does not take into account other factors such as currency risk, credit risk, or changes in interest rates that may impact the performance of the carry trade strategy.

As we can tell from the plot, the cumulative PNL has a significant drawdown is not only due to the narrowing gap between the bond yield and borrowing rate, but also the depreciation of PHL.

## Carry Trade 4: Borrow Pounds Buy PAK Bonds

```python
trade_pak_sample.tail().round(4)
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
	  <th>Is 1M</th>
	  <th>Is 5Y</th>
	  <th>USDGBP</th>
	  <th>Bond 5Y Yield</th>
	  <th>Bond Price</th>
	  <th>Bond Price 1W</th>
	  <th>FX</th>
	  <th>Lending Currency</th>
	  <th>Bond Amount</th>
	  <th>Position</th>
	  <th>…</th>
	  <th>Borrowing Capital (GBP)</th>
	  <th>Borrow Interest Rate</th>
	  <th>Funding Interest (GBP)</th>
	  <th>Funding Interest (USD)</th>
	  <th>Cumulative Interest</th>
	  <th>Investing Capital 1W (USD)</th>
	  <th>FX PNL</th>
	  <th>Cumulative FX PNL</th>
	  <th>PNL</th>
	  <th>Cumulative PNL</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>2020-03-04</th>
	  <td>0.0053</td>
	  <td>0.0029</td>
	  <td>0.7805</td>
	  <td>0.123</td>
	  <td>0.9942</td>
	  <td>0.9963</td>
	  <td>153.4673</td>
	  <td>1.534673e+09</td>
	  <td>1.543694e+09</td>
	  <td>1</td>
	  <td>…</td>
	  <td>5853547.5</td>
	  <td>0.0002</td>
	  <td>1352.9812</td>
	  <td>1733.5400</td>
	  <td>243392.8415</td>
	  <td>9.858265e+06</td>
	  <td>141734.5635</td>
	  <td>-496412.6219</td>
	  <td>180622.1355</td>
	  <td>-3.054349e+06</td>
	</tr>
	<tr>
	  <th>2020-03-11</th>
	  <td>0.0019</td>
	  <td>0.0026</td>
	  <td>0.7733</td>
	  <td>0.123</td>
	  <td>0.9942</td>
	  <td>0.9963</td>
	  <td>158.1972</td>
	  <td>1.581972e+09</td>
	  <td>1.591271e+09</td>
	  <td>1</td>
	  <td>…</td>
	  <td>5799660.0</td>
	  <td>0.0001</td>
	  <td>1163.0916</td>
	  <td>1504.0860</td>
	  <td>244896.9275</td>
	  <td>1.009291e+07</td>
	  <td>-92914.9295</td>
	  <td>-589327.5514</td>
	  <td>-372135.6705</td>
	  <td>-3.426485e+06</td>
	</tr>
	<tr>
	  <th>2020-03-18</th>
	  <td>0.0013</td>
	  <td>0.0044</td>
	  <td>0.8264</td>
	  <td>0.123</td>
	  <td>0.9942</td>
	  <td>0.9963</td>
	  <td>159.4818</td>
	  <td>1.594818e+09</td>
	  <td>1.604193e+09</td>
	  <td>1</td>
	  <td>…</td>
	  <td>6197955.0</td>
	  <td>0.0001</td>
	  <td>772.7072</td>
	  <td>935.0349</td>
	  <td>245831.9623</td>
	  <td>9.357377e+06</td>
	  <td>642623.2523</td>
	  <td>53295.7009</td>
	  <td>582886.9076</td>
	  <td>-2.843598e+06</td>
	</tr>
	<tr>
	  <th>2020-03-25</th>
	  <td>0.0007</td>
	  <td>0.0024</td>
	  <td>0.8439</td>
	  <td>0.123</td>
	  <td>0.9942</td>
	  <td>0.9963</td>
	  <td>159.2828</td>
	  <td>1.592828e+09</td>
	  <td>1.602191e+09</td>
	  <td>1</td>
	  <td>…</td>
	  <td>6329257.5</td>
	  <td>0.0001</td>
	  <td>756.5469</td>
	  <td>896.4878</td>
	  <td>246728.4501</td>
	  <td>9.792547e+06</td>
	  <td>207453.2439</td>
	  <td>260748.9448</td>
	  <td>241002.4650</td>
	  <td>-2.602596e+06</td>
	</tr>
	<tr>
	  <th>2020-04-01</th>
	  <td>0.0007</td>
	  <td>0.0022</td>
	  <td>0.8079</td>
	  <td>0.105</td>
	  <td>0.9954</td>
	  <td>1.0654</td>
	  <td>164.7993</td>
	  <td>1.647993e+09</td>
	  <td>1.655584e+09</td>
	  <td>1</td>
	  <td>…</td>
	  <td>6059542.5</td>
	  <td>0.0001</td>
	  <td>697.3426</td>
	  <td>863.1129</td>
	  <td>247591.5631</td>
	  <td>1.044511e+07</td>
	  <td>-445107.8609</td>
	  <td>-184358.9160</td>
	  <td>-88056.5442</td>
	  <td>-2.690652e+06</td>
	</tr>
  </tbody>
</table>
<p>5 rows × 27 columns</p>
</div>

```python
trading_plot(trade_pak_sample)
```

![png](output_57_0.png)

![png](output_57_1.png)

```python
plt.subplots(figsize=(20,6))
plt.plot(trade_pak_sample['FX'], label = 'Pakistani Rupee')
plt.ylabel("FX")
plt.xlabel("Date")
plt.title("Froeign Exchange Rate",size=15)
plt.gca().set_facecolor('lightgray')
plt.grid(True)
plt.legend(loc='upper left')
plt.show()
```

![png](output_58_0.png)

```python
trade_pak_sample[['OIS 5Y','Bond 5Y Yield','FX','Cumulative Bond PNL (USD)','Cumulative PNL']][1:].describe()
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
	  <th>Is 5Y</th>
	  <th>Bond 5Y Yield</th>
	  <th>FX</th>
	  <th>Cumulative Bond PNL (USD)</th>
	  <th>Cumulative PNL</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>count</th>
	  <td>169.000000</td>
	  <td>169.000000</td>
	  <td>169.000000</td>
	  <td>1.690000e+02</td>
	  <td>1.690000e+02</td>
	</tr>
	<tr>
	  <th>mean</th>
	  <td>0.007919</td>
	  <td>0.098826</td>
	  <td>128.314000</td>
	  <td>-1.287194e+06</td>
	  <td>-1.977456e+06</td>
	</tr>
	<tr>
	  <th>std</th>
	  <td>0.002683</td>
	  <td>0.024397</td>
	  <td>20.886674</td>
	  <td>1.559006e+06</td>
	  <td>1.541572e+06</td>
	</tr>
	<tr>
	  <th>min</th>
	  <td>0.002188</td>
	  <td>0.068800</td>
	  <td>104.690081</td>
	  <td>-3.878073e+06</td>
	  <td>-4.272014e+06</td>
	</tr>
	<tr>
	  <th>25%</th>
	  <td>0.005554</td>
	  <td>0.072300</td>
	  <td>105.375000</td>
	  <td>-2.731213e+06</td>
	  <td>-3.515453e+06</td>
	</tr>
	<tr>
	  <th>50%</th>
	  <td>0.008570</td>
	  <td>0.091800</td>
	  <td>123.148083</td>
	  <td>-9.454849e+05</td>
	  <td>-1.727483e+06</td>
	</tr>
	<tr>
	  <th>75%</th>
	  <td>0.010335</td>
	  <td>0.123000</td>
	  <td>152.004609</td>
	  <td>2.364030e+05</td>
	  <td>-2.143750e+05</td>
	</tr>
	<tr>
	  <th>max</th>
	  <td>0.013074</td>
	  <td>0.137000</td>
	  <td>164.799309</td>
	  <td>7.659942e+05</td>
	  <td>3.928126e+05</td>
	</tr>
  </tbody>
</table>
</div>

Comment:

Based on the data in the table, the mean spread between the Is rate and the bond yield is 0.098826 - 0.007919 = 0.0196, which could potentially be a source of profit. However, the FX rate and its fluctuations can significantly impact the overall performance of the carry trade, as seen by the wide range of values in the "Cumulative Bond PNL (USD)" and "Cumulative PNL" columns.

As we can see from the foreign exchange, the Pakistani Rupee (PKR) experienced significant depreciation against the US dollar in 2020. There are a number of factors that contributed to this, including:

- COVID-19 Pandemic: The COVID-19 pandemic caused widespread economic disruption and reduced demand for emerging market currencies like the PKR.
- Decline in Remittances: Remittances from Pakistanis working abroad, a significant source of foreign exchange for the country, declined due to job losses and economic uncertainty caused by the pandemic.
- Balance of Payments Crisis: The PKR came under pressure in 2020 due to a widening trade deficit and a decrease in foreign currency reserves, leading to a balance of payments crisis.
- Political Instability: Political uncertainty in Pakistan also weighed on the PKR, as investors were concerned about the country's ability to address its economic challenges and maintain stability.

Overall, the combination of these factors resulted in significant depreciation of the PKR against the US dollar in 2020.

That's why it's important to take into account FX and other factors, instead of only looking at the 5y swap rate. This could cause us make bad trade that cause serious loss.

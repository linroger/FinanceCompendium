---
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Build Data Factor Pricing Analysis
---

# Build Data Factor Pricing Analysis

```python
import pandas as pd
import pandas_datareader.data as web
```

```python
import pandas_datareader as pdreader
pdreader.famafrench.get_available_datasets()
```

    ['F-F_Research_Data_Factors',
     'F-F_Research_Data_Factors_weekly',
     'F-F_Research_Data_Factors_daily',
     'F-F_Research_Data_5_Factors_2x3',
     'F-F_Research_Data_5_Factors_2x3_daily',
     'Portfolios_Formed_on_ME',
     'Portfolios_Formed_on_ME_Wout_Div',
     'Portfolios_Formed_on_ME_Daily',
     'Portfolios_Formed_on_BE-ME',
     'Portfolios_Formed_on_BE-ME_Wout_Div',
     'Portfolios_Formed_on_BE-ME_Daily',
     'Portfolios_Formed_on_OP',
     'Portfolios_Formed_on_OP_Wout_Div',
     'Portfolios_Formed_on_OP_Daily',
     'Portfolios_Formed_on_INV',
     'Portfolios_Formed_on_INV_Wout_Div',
     'Portfolios_Formed_on_INV_Daily',
     '6_Portfolios_2x3',
     '6_Portfolios_2x3_Wout_Div',
     '6_Portfolios_2x3_weekly',
     '6_Portfolios_2x3_daily',
     '25_Portfolios_5x5',
     '25_Portfolios_5x5_Wout_Div',
     '25_Portfolios_5x5_Daily',
     '100_Portfolios_10x10',
     '100_Portfolios_10x10_Wout_Div',
     '100_Portfolios_10x10_Daily',
     '6_Portfolios_ME_OP_2x3',
     '6_Portfolios_ME_OP_2x3_Wout_Div',
     '6_Portfolios_ME_OP_2x3_daily',
     '25_Portfolios_ME_OP_5x5',
     '25_Portfolios_ME_OP_5x5_Wout_Div',
     '25_Portfolios_ME_OP_5x5_daily',
     '100_Portfolios_ME_OP_10x10',
     '100_Portfolios_10x10_ME_OP_Wout_Div',
     '100_Portfolios_ME_OP_10x10_daily',
     '6_Portfolios_ME_INV_2x3',
     '6_Portfolios_ME_INV_2x3_Wout_Div',
     '6_Portfolios_ME_INV_2x3_daily',
     '25_Portfolios_ME_INV_5x5',
     '25_Portfolios_ME_INV_5x5_Wout_Div',
     '25_Portfolios_ME_INV_5x5_daily',
     '100_Portfolios_ME_INV_10x10',
     '100_Portfolios_10x10_ME_INV_Wout_Div',
     '100_Portfolios_ME_INV_10x10_daily',
     '25_Portfolios_BEME_OP_5x5',
     '25_Portfolios_BEME_OP_5x5_Wout_Div',
     '25_Portfolios_BEME_OP_5x5_daily',
     '25_Portfolios_BEME_INV_5x5',
     '25_Portfolios_BEME_INV_5x5_Wout_Div',
     '25_Portfolios_BEME_INV_5x5_daily',
     '25_Portfolios_OP_INV_5x5',
     '25_Portfolios_OP_INV_5x5_Wout_Div',
     '25_Portfolios_OP_INV_5x5_daily',
     '32_Portfolios_ME_BEME_OP_2x4x4',
     '32_Portfolios_ME_BEME_OP_2x4x4_Wout_Div',
     '32_Portfolios_ME_BEME_INV_2x4x4',
     '32_Portfolios_ME_BEME_INV_2x4x4_Wout_Div',
     '32_Portfolios_ME_OP_INV_2x4x4',
     '32_Portfolios_ME_OP_INV_2x4x4_Wout_Div',
     'Portfolios_Formed_on_E-P',
     'Portfolios_Formed_on_E-P_Wout_Div',
     'Portfolios_Formed_on_CF-P',
     'Portfolios_Formed_on_CF-P_Wout_Div',
     'Portfolios_Formed_on_D-P',
     'Portfolios_Formed_on_D-P_Wout_Div',
     '6_Portfolios_ME_EP_2x3',
     '6_Portfolios_ME_EP_2x3_Wout_Div',
     '6_Portfolios_ME_CFP_2x3',
     '6_Portfolios_ME_CFP_2x3_Wout_Div',
     '6_Portfolios_ME_DP_2x3',
     '6_Portfolios_ME_DP_2x3_Wout_Div',
     'F-F_Momentum_Factor',
     'F-F_Momentum_Factor_daily',
     '6_Portfolios_ME_Prior_12_2',
     '6_Portfolios_ME_Prior_12_2_Daily',
     '25_Portfolios_ME_Prior_12_2',
     '25_Portfolios_ME_Prior_12_2_Daily',
     '10_Portfolios_Prior_12_2',
     '10_Portfolios_Prior_12_2_Daily',
     'F-F_ST_Reversal_Factor',
     'F-F_ST_Reversal_Factor_daily',
     '6_Portfolios_ME_Prior_1_0',
     '6_Portfolios_ME_Prior_1_0_Daily',
     '25_Portfolios_ME_Prior_1_0',
     '25_Portfolios_ME_Prior_1_0_Daily',
     '10_Portfolios_Prior_1_0',
     '10_Portfolios_Prior_1_0_Daily',
     'F-F_LT_Reversal_Factor',
     'F-F_LT_Reversal_Factor_daily',
     '6_Portfolios_ME_Prior_60_13',
     '6_Portfolios_ME_Prior_60_13_Daily',
     '25_Portfolios_ME_Prior_60_13',
     '25_Portfolios_ME_Prior_60_13_Daily',
     '10_Portfolios_Prior_60_13',
     '10_Portfolios_Prior_60_13_Daily',
     'Portfolios_Formed_on_AC',
     '25_Portfolios_ME_AC_5x5',
     'Portfolios_Formed_on_BETA',
     '25_Portfolios_ME_BETA_5x5',
     'Portfolios_Formed_on_NI',
     '25_Portfolios_ME_NI_5x5',
     'Portfolios_Formed_on_VAR',
     '25_Portfolios_ME_VAR_5x5',
     'Portfolios_Formed_on_RESVAR',
     '25_Portfolios_ME_RESVAR_5x5',
     '5_Industry_Portfolios',
     '5_Industry_Portfolios_Wout_Div',
     '5_Industry_Portfolios_daily',
     '10_Industry_Portfolios',
     '10_Industry_Portfolios_Wout_Div',
     '10_Industry_Portfolios_daily',
     '12_Industry_Portfolios',
     '12_Industry_Portfolios_Wout_Div',
     '12_Industry_Portfolios_daily',
     '17_Industry_Portfolios',
     '17_Industry_Portfolios_Wout_Div',
     '17_Industry_Portfolios_daily',
     '30_Industry_Portfolios',
     '30_Industry_Portfolios_Wout_Div',
     '30_Industry_Portfolios_daily',
     '38_Industry_Portfolios',
     '38_Industry_Portfolios_Wout_Div',
     '38_Industry_Portfolios_daily',
     '48_Industry_Portfolios',
     '48_Industry_Portfolios_Wout_Div',
     '48_Industry_Portfolios_daily',
     '49_Industry_Portfolios',
     '49_Industry_Portfolios_Wout_Div',
     '49_Industry_Portfolios_daily',
     'ME_Breakpoints',
     'BE-ME_Breakpoints',
     'OP_Breakpoints',
     'INV_Breakpoints',
     'E-P_Breakpoints',
     'CF-P_Breakpoints',
     'D-P_Breakpoints',
     'Prior_2-12_Breakpoints',
     'Developed_3_Factors',
     'Developed_3_Factors_Daily',
     'Developed_ex_US_3_Factors',
     'Developed_ex_US_3_Factors_Daily',
     'Europe_3_Factors',
     'Europe_3_Factors_Daily',
     'Japan_3_Factors',
     'Japan_3_Factors_Daily',
     'Asia_Pacific_ex_Japan_3_Factors',
     'Asia_Pacific_ex_Japan_3_Factors_Daily',
     'North_America_3_Factors',
     'North_America_3_Factors_Daily',
     'Developed_5_Factors',
     'Developed_5_Factors_Daily',
     'Developed_ex_US_5_Factors',
     'Developed_ex_US_5_Factors_Daily',
     'Europe_5_Factors',
     'Europe_5_Factors_Daily',
     'Japan_5_Factors',
     'Japan_5_Factors_Daily',
     'Asia_Pacific_ex_Japan_5_Factors',
     'Asia_Pacific_ex_Japan_5_Factors_Daily',
     'North_America_5_Factors',
     'North_America_5_Factors_Daily',
     'Developed_Mom_Factor',
     'Developed_Mom_Factor_Daily',
     'Developed_ex_US_Mom_Factor',
     'Developed_ex_US_Mom_Factor_Daily',
     'Europe_Mom_Factor',
     'Europe_Mom_Factor_Daily',
     'Japan_Mom_Factor',
     'Japan_Mom_Factor_Daily',
     'Asia_Pacific_ex_Japan_MOM_Factor',
     'Asia_Pacific_ex_Japan_MOM_Factor_Daily',
     'North_America_Mom_Factor',
     'North_America_Mom_Factor_Daily',
     'Developed_6_Portfolios_ME_BE-ME',
     'Developed_6_Portfolios_ME_BE-ME_daily',
     'Developed_ex_US_6_Portfolios_ME_BE-ME',
     'Developed_ex_US_6_Portfolios_ME_BE-ME_daily',
     'Europe_6_Portfolios_ME_BE-ME',
     'Europe_6_Portfolios_ME_BE-ME_daily',
     'Japan_6_Portfolios_ME_BE-ME',
     'Japan_6_Portfolios_ME_BE-ME_daily',
     'Asia_Pacific_ex_Japan_6_Portfolios_ME_BE-ME',
     'Asia_Pacific_ex_Japan_6_Portfolios_ME_BE-ME_daily',
     'North_America_6_Portfolios_ME_BE-ME',
     'North_America_6_Portfolios_ME_BE-ME_daily',
     'Developed_25_Portfolios_ME_BE-ME',
     'Developed_25_Portfolios_ME_BE-ME_daily',
     'Developed_ex_US_25_Portfolios_ME_BE-ME',
     'Developed_ex_US_25_Portfolios_ME_BE-ME_daily',
     'Europe_25_Portfolios_ME_BE-ME',
     'Europe_25_Portfolios_ME_BE-ME_daily',
     'Japan_25_Portfolios_ME_BE-ME',
     'Japan_25_Portfolios_ME_BE-ME_daily',
     'Asia_Pacific_ex_Japan_25_Portfolios_ME_BE-ME',
     'Asia_Pacific_ex_Japan_25_Portfolios_ME_BE-ME_daily',
     'North_America_25_Portfolios_ME_BE-ME',
     'North_America_25_Portfolios_ME_BE-ME_daily',
     'Developed_6_Portfolios_ME_OP',
     'Developed_6_Portfolios_ME_OP_Daily',
     'Developed_ex_US_6_Portfolios_ME_OP',
     'Developed_ex_US_6_Portfolios_ME_OP_Daily',
     'Europe_6_Portfolios_ME_OP',
     'Europe_6_Portfolios_ME_OP_Daily',
     'Japan_6_Portfolios_ME_OP',
     'Japan_6_Portfolios_ME_OP_Daily',
     'Asia_Pacific_ex_Japan_6_Portfolios_ME_OP',
     'Asia_Pacific_ex_Japan_6_Portfolios_ME_OP_Daily',
     'North_America_6_Portfolios_ME_OP',
     'North_America_6_Portfolios_ME_OP_Daily',
     'Developed_25_Portfolios_ME_OP',
     'Developed_25_Portfolios_ME_OP_Daily',
     'Developed_ex_US_25_Portfolios_ME_OP',
     'Developed_ex_US_25_Portfolios_ME_OP_Daily',
     'Europe_25_Portfolios_ME_OP',
     'Europe_25_Portfolios_ME_OP_Daily',
     'Japan_25_Portfolios_ME_OP',
     'Japan_25_Portfolios_ME_OP_Daily',
     'Asia_Pacific_ex_Japan_25_Portfolios_ME_OP',
     'Asia_Pacific_ex_Japan_25_Portfolios_ME_OP_Daily',
     'North_America_25_Portfolios_ME_OP',
     'North_America_25_Portfolios_ME_OP_Daily',
     'Developed_6_Portfolios_ME_INV',
     'Developed_6_Portfolios_ME_INV_Daily',
     'Developed_ex_US_6_Portfolios_ME_INV',
     'Developed_ex_US_6_Portfolios_ME_INV_Daily',
     'Europe_6_Portfolios_ME_INV',
     'Europe_6_Portfolios_ME_INV_Daily',
     'Japan_6_Portfolios_ME_INV',
     'Japan_6_Portfolios_ME_INV_Daily',
     'Asia_Pacific_ex_Japan_6_Portfolios_ME_INV',
     'Asia_Pacific_ex_Japan_6_Portfolios_ME_INV_Daily',
     'North_America_6_Portfolios_ME_INV',
     'North_America_6_Portfolios_ME_INV_Daily',
     'Developed_25_Portfolios_ME_INV',
     'Developed_25_Portfolios_ME_INV_Daily',
     'Developed_ex_US_25_Portfolios_ME_INV',
     'Developed_ex_US_25_Portfolios_ME_INV_Daily',
     'Europe_25_Portfolios_ME_INV',
     'Europe_25_Portfolios_ME_INV_Daily',
     'Japan_25_Portfolios_ME_INV',
     'Japan_25_Portfolios_ME_INV_Daily',
     'Asia_Pacific_ex_Japan_25_Portfolios_ME_INV',
     'Asia_Pacific_ex_Japan_25_Portfolios_ME_INV_Daily',
     'North_America_25_Portfolios_ME_INV',
     'North_America_25_Portfolios_ME_INV_Daily',
     'Developed_6_Portfolios_ME_Prior_12_2',
     'Developed_6_Portfolios_ME_Prior_250_20_daily',
     'Developed_ex_US_6_Portfolios_ME_Prior_12_2',
     'Developed_ex_US_6_Portfolios_ME_Prior_250_20_daily',
     'Europe_6_Portfolios_ME_Prior_12_2',
     'Europe_6_Portfolios_ME_Prior_250_20_daily',
     'Japan_6_Portfolios_ME_Prior_12_2',
     'Japan_6_Portfolios_ME_Prior_250_20_daily',
     'Asia_Pacific_ex_Japan_6_Portfolios_ME_Prior_12_2',
     'Asia_Pacific_ex_Japan_6_Portfolios_ME_Prior_250_20_daily',
     'North_America_6_Portfolios_ME_Prior_12_2',
     'North_America_6_Portfolios_ME_Prior_250_20_daily',
     'Developed_25_Portfolios_ME_Prior_12_2',
     'Developed_25_Portfolios_ME_Prior_250_20_daily',
     'Developed_ex_US_25_Portfolios_ME_Prior_12_2',
     'Developed_ex_US_25_Portfolios_ME_Prior_250_20_daily',
     'Europe_25_Portfolios_ME_Prior_12_2',
     'Europe_25_Portfolios_ME_Prior_250_20_daily',
     'Japan_25_Portfolios_ME_Prior_12_2',
     'Japan_25_Portfolios_ME_Prior_250_20_daily',
     'Asia_Pacific_ex_Japan_25_Portfolios_ME_Prior_12_2',
     'Asia_Pacific_ex_Japan_25_Portfolios_ME_Prior_250_20_daily',
     'North_America_25_Portfolios_ME_Prior_12_2',
     'North_America_25_Portfolios_ME_Prior_250_20_daily',
     'Developed_32_Portfolios_ME_BE-ME_OP_2x4x4',
     'Developed_ex_US_32_Portfolios_ME_BE-ME_OP_2x4x4',
     'Europe_32_Portfolios_ME_BE-ME_OP_2x4x4',
     'Japan_32_Portfolios_ME_BE-ME_OP_2x4x4',
     'Asia_Pacific_ex_Japan_32_Portfolios_ME_BE-ME_OP_2x4x4',
     'North_America_32_Portfolios_ME_BE-ME_OP_2x4x4',
     'Developed_32_Portfolios_ME_BE-ME_INV(TA)_2x4x4',
     'Developed_ex_US_32_Portfolios_ME_BE-ME_INV(TA)_2x4x4',
     'Europe_32_Portfolios_ME_BE-ME_INV(TA)_2x4x4',
     'Japan_32_Portfolios_ME_BE-ME_INV(TA)_2x4x4',
     'Asia_Pacific_ex_Japan_32_Portfolios_ME_BE-ME_INV(TA)_2x4x4',
     'North_America_32_Portfolios_ME_BE-ME_INV(TA)_2x4x4',
     'Developed_32_Portfolios_ME_INV(TA)_OP_2x4x4',
     'Developed_ex_US_32_Portfolios_ME_INV(TA)_OP_2x4x4',
     'Europe_32_Portfolios_ME_INV(TA)_OP_2x4x4',
     'Japan_32_Portfolios_ME_INV(TA)_OP_2x4x4',
     'Asia_Pacific_ex_Japan_32_Portfolios_ME_INV(TA)_OP_2x4x4',
     'North_America_32_Portfolios_ME_INV(TA)_OP_2x4x4',
     'Emerging_5_Factors',
     'Emerging_MOM_Factor',
     'Emerging_Markets_6_Portfolios_ME_BE-ME',
     'Emerging_Markets_6_Portfolios_ME_OP',
     'Emerging_Markets_6_Portfolios_ME_INV',
     'Emerging_Markets_6_Portfolios_ME_Prior_12_2',
     'Emerging_Markets_4_Portfolios_BE-ME_OP',
     'Emerging_Markets_4_Portfolios_OP_INV',
     'Emerging_Markets_4_Portfolios_BE-ME_INV']

```python
startdate = '19800101'
enddate = '20220930'
```

```python
info = pd.DataFrame(columns=['Name', 'Unit', 'Construction', 'Description'])
info.loc['MKT'] = ['Market', 'Excess Return', 'Market-cap-weighted', 'US Equities']
info.loc['SMB'] = ['Size', 'Excess Return', 'Small Minus Big', 'Long small stocks and short big stocks']
info.loc['HML'] = ['Value', 'Excess Return', 'High Minus Low', 'Long value (high book-to-market) stocks and short growth (low book-to-market) stocks']
info.loc['RMW'] = ['Profitability','Excess Return', 'Robust Minus Weak', 'Long profitability (income statement) and short low profitability']
info.loc['CMA'] = ['Investment','Excess Return', 'Conservative Minus Agressive', 'Long stocks with low (conservative) investment (balance sheet) and short stocks with high (agressive) investment.']
info.loc['UMD'] = ['Momentum','Excess Return','Up Minus Down', 'Long stocks that have high recent returns and short stocks with low recent returns']
info.loc['RF'] = ['Risk-free rate', 'Total Return', 'Tbills', '']
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
	  <th>Name</th>
	  <th>Unit</th>
	  <th>Construction</th>
	  <th>Description</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>MKT</th>
	  <td>Market</td>
	  <td>Excess Return</td>
	  <td>Market-cap-weighted</td>
	  <td>US Equities</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>Size</td>
	  <td>Excess Return</td>
	  <td>Small Minus Big</td>
	  <td>Long small stocks and short big stocks</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>Value</td>
	  <td>Excess Return</td>
	  <td>High Minus Low</td>
	  <td>Long value (high book-to-market) stocks and sh…</td>
	</tr>
	<tr>
	  <th>RMW</th>
	  <td>Profitability</td>
	  <td>Excess Return</td>
	  <td>Robust Minus Weak</td>
	  <td>Long profitability (income statement) and shor…</td>
	</tr>
	<tr>
	  <th>CMA</th>
	  <td>Investment</td>
	  <td>Excess Return</td>
	  <td>Conservative Minus Aggressive</td>
	  <td>Long stocks with low (conservative) investment…</td>
	</tr>
	<tr>
	  <th>UMD</th>
	  <td>Momentum</td>
	  <td>Excess Return</td>
	  <td>Up Minus Down</td>
	  <td>Long stocks that have high recent returns and …</td>
	</tr>
	<tr>
	  <th>RF</th>
	  <td>Risk-free rate</td>
	  <td>Total Return</td>
	  <td>Tbills</td>
	  <td></td>
	</tr>
  </tbody>
</table>
</div>

```python
rawdata = web.DataReader('F-F_Research_Data_5_Factors_2x3', data_source='famafrench',start=startdate,end=enddate)
facs = rawdata[0] / 100
# convert the yyyy-mm to timestamp object. default is to put first of month, but should be end of month
facs = facs.to_timestamp().resample('M').last()
facs.rename(columns={'Mkt-RF':'MKT'},inplace=True)

rawdata = web.DataReader('F-F_Momentum_Factor', data_source='famafrench',start=startdate,end=enddate)
umd = rawdata[0] / 100
# convert the yyyy-mm to timestamp object. default is to put first of month, but should be end of month
umd = umd.to_timestamp().resample('M').last()
umd.columns = ['UMD']

rf = facs[['RF']]
facs = facs.join(umd).drop(columns=['RF'])
facs
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
	  <th>MKT</th>
	  <th>SMB</th>
	  <th>HML</th>
	  <th>RMW</th>
	  <th>CMA</th>
	  <th>UMD</th>
	</tr>
	<tr>
	  <th>Date</th>
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
	  <th>1980-01-31</th>
	  <td>0.0551</td>
	  <td>0.0183</td>
	  <td>0.0175</td>
	  <td>-0.0170</td>
	  <td>0.0164</td>
	  <td>0.0755</td>
	</tr>
	<tr>
	  <th>1980-02-29</th>
	  <td>-0.0122</td>
	  <td>-0.0157</td>
	  <td>0.0061</td>
	  <td>0.0004</td>
	  <td>0.0268</td>
	  <td>0.0788</td>
	</tr>
	<tr>
	  <th>1980-03-31</th>
	  <td>-0.1290</td>
	  <td>-0.0693</td>
	  <td>-0.0101</td>
	  <td>0.0146</td>
	  <td>-0.0119</td>
	  <td>-0.0955</td>
	</tr>
	<tr>
	  <th>1980-04-30</th>
	  <td>0.0397</td>
	  <td>0.0105</td>
	  <td>0.0106</td>
	  <td>-0.0210</td>
	  <td>0.0029</td>
	  <td>-0.0043</td>
	</tr>
	<tr>
	  <th>1980-05-31</th>
	  <td>0.0526</td>
	  <td>0.0211</td>
	  <td>0.0038</td>
	  <td>0.0034</td>
	  <td>-0.0031</td>
	  <td>-0.0112</td>
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
	  <th>2022-04-30</th>
	  <td>-0.0946</td>
	  <td>-0.0040</td>
	  <td>0.0619</td>
	  <td>0.0363</td>
	  <td>0.0592</td>
	  <td>0.0489</td>
	</tr>
	<tr>
	  <th>2022-05-31</th>
	  <td>-0.0034</td>
	  <td>-0.0006</td>
	  <td>0.0841</td>
	  <td>0.0144</td>
	  <td>0.0398</td>
	  <td>0.0248</td>
	</tr>
	<tr>
	  <th>2022-06-30</th>
	  <td>-0.0843</td>
	  <td>0.0130</td>
	  <td>-0.0597</td>
	  <td>0.0185</td>
	  <td>-0.0470</td>
	  <td>0.0079</td>
	</tr>
	<tr>
	  <th>2022-07-31</th>
	  <td>0.0957</td>
	  <td>0.0187</td>
	  <td>-0.0410</td>
	  <td>0.0068</td>
	  <td>-0.0694</td>
	  <td>-0.0396</td>
	</tr>
	<tr>
	  <th>2022-08-31</th>
	  <td>-0.0378</td>
	  <td>0.0151</td>
	  <td>0.0031</td>
	  <td>-0.0480</td>
	  <td>0.0131</td>
	  <td>0.0209</td>
	</tr>
  </tbody>
</table>
<p>512 rows × 6 columns</p>
</div>

```python
rawdata = web.DataReader('49_Industry_Portfolios', data_source='famafrench',start=startdate, end=enddate)
rets = rawdata[0] / 100
# convert the yyyy-mm to timestamp object. default is to put first of month, but should be end of month
rets = rets.to_timestamp().resample('M').last()
retsx = rets.subtract(rf['RF'],axis=0)
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
	  <th>Agric</th>
	  <th>Food</th>
	  <th>Soda</th>
	  <th>Beer</th>
	  <th>Smoke</th>
	  <th>Toys</th>
	  <th>Fun</th>
	  <th>Books</th>
	  <th>Hshld</th>
	  <th>Clths</th>
	  <th>…</th>
	  <th>Boxes</th>
	  <th>Trans</th>
	  <th>Whlsl</th>
	  <th>Rtail</th>
	  <th>Meals</th>
	  <th>Banks</th>
	  <th>Insur</th>
	  <th>RlEst</th>
	  <th>Fin</th>
	  <th>Other</th>
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
	  <th>1980-01-31</th>
	  <td>-0.0050</td>
	  <td>0.0283</td>
	  <td>0.0084</td>
	  <td>0.1024</td>
	  <td>-0.0143</td>
	  <td>0.0999</td>
	  <td>0.0354</td>
	  <td>0.0352</td>
	  <td>0.0048</td>
	  <td>0.0032</td>
	  <td>…</td>
	  <td>0.0159</td>
	  <td>0.0876</td>
	  <td>0.0463</td>
	  <td>-0.0116</td>
	  <td>0.0458</td>
	  <td>-0.0279</td>
	  <td>0.0258</td>
	  <td>0.0751</td>
	  <td>0.0299</td>
	  <td>0.0665</td>
	</tr>
	<tr>
	  <th>1980-02-29</th>
	  <td>0.0111</td>
	  <td>-0.0610</td>
	  <td>-0.0966</td>
	  <td>-0.0319</td>
	  <td>-0.0569</td>
	  <td>-0.0314</td>
	  <td>-0.0527</td>
	  <td>-0.0788</td>
	  <td>-0.0556</td>
	  <td>-0.0140</td>
	  <td>…</td>
	  <td>-0.0079</td>
	  <td>-0.0535</td>
	  <td>-0.0339</td>
	  <td>-0.0633</td>
	  <td>-0.0638</td>
	  <td>-0.0855</td>
	  <td>-0.0960</td>
	  <td>-0.0314</td>
	  <td>-0.0275</td>
	  <td>-0.0267</td>
	</tr>
	<tr>
	  <th>1980-03-31</th>
	  <td>-0.2244</td>
	  <td>-0.1116</td>
	  <td>-0.0167</td>
	  <td>-0.1464</td>
	  <td>-0.0192</td>
	  <td>-0.1281</td>
	  <td>-0.0817</td>
	  <td>-0.1278</td>
	  <td>-0.0565</td>
	  <td>-0.0664</td>
	  <td>…</td>
	  <td>-0.0821</td>
	  <td>-0.1511</td>
	  <td>-0.1106</td>
	  <td>-0.0922</td>
	  <td>-0.1443</td>
	  <td>-0.0563</td>
	  <td>-0.0883</td>
	  <td>-0.2441</td>
	  <td>-0.1245</td>
	  <td>-0.1728</td>
	</tr>
	<tr>
	  <th>1980-04-30</th>
	  <td>0.0451</td>
	  <td>0.0766</td>
	  <td>0.0232</td>
	  <td>0.0305</td>
	  <td>0.0831</td>
	  <td>-0.0521</td>
	  <td>0.0775</td>
	  <td>0.0182</td>
	  <td>0.0304</td>
	  <td>0.0113</td>
	  <td>…</td>
	  <td>0.0419</td>
	  <td>-0.0097</td>
	  <td>-0.0300</td>
	  <td>0.0351</td>
	  <td>0.0522</td>
	  <td>0.0729</td>
	  <td>0.0532</td>
	  <td>0.0997</td>
	  <td>0.0448</td>
	  <td>0.0762</td>
	</tr>
	<tr>
	  <th>1980-05-31</th>
	  <td>0.0637</td>
	  <td>0.0792</td>
	  <td>0.0457</td>
	  <td>0.0895</td>
	  <td>0.0814</td>
	  <td>0.0512</td>
	  <td>0.0324</td>
	  <td>0.0876</td>
	  <td>0.0560</td>
	  <td>0.0064</td>
	  <td>…</td>
	  <td>0.0565</td>
	  <td>0.1060</td>
	  <td>0.1147</td>
	  <td>0.0868</td>
	  <td>0.1127</td>
	  <td>0.0577</td>
	  <td>0.0557</td>
	  <td>0.1040</td>
	  <td>0.0839</td>
	  <td>0.0684</td>
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
	  <td>-0.0015</td>
	  <td>0.0259</td>
	  <td>0.0421</td>
	  <td>0.0302</td>
	  <td>0.0636</td>
	  <td>-0.1375</td>
	  <td>-0.2785</td>
	  <td>-0.1087</td>
	  <td>0.0203</td>
	  <td>-0.0701</td>
	  <td>…</td>
	  <td>-0.0394</td>
	  <td>-0.1094</td>
	  <td>-0.0215</td>
	  <td>-0.1142</td>
	  <td>-0.0548</td>
	  <td>-0.0854</td>
	  <td>-0.0336</td>
	  <td>-0.1156</td>
	  <td>-0.1269</td>
	  <td>-0.0780</td>
	</tr>
	<tr>
	  <th>2022-05-31</th>
	  <td>0.0726</td>
	  <td>-0.0329</td>
	  <td>-0.0025</td>
	  <td>-0.0163</td>
	  <td>0.0264</td>
	  <td>-0.0088</td>
	  <td>-0.0353</td>
	  <td>-0.0698</td>
	  <td>-0.0515</td>
	  <td>-0.0648</td>
	  <td>…</td>
	  <td>-0.0460</td>
	  <td>-0.0462</td>
	  <td>0.0100</td>
	  <td>-0.0567</td>
	  <td>-0.0332</td>
	  <td>0.0338</td>
	  <td>0.0111</td>
	  <td>-0.0237</td>
	  <td>0.0392</td>
	  <td>-0.0147</td>
	</tr>
	<tr>
	  <th>2022-06-30</th>
	  <td>-0.1251</td>
	  <td>-0.0197</td>
	  <td>0.0040</td>
	  <td>-0.0008</td>
	  <td>-0.1169</td>
	  <td>-0.1302</td>
	  <td>-0.1093</td>
	  <td>-0.1243</td>
	  <td>-0.0262</td>
	  <td>-0.1206</td>
	  <td>…</td>
	  <td>-0.0850</td>
	  <td>-0.0720</td>
	  <td>-0.0649</td>
	  <td>-0.0856</td>
	  <td>-0.0908</td>
	  <td>-0.1245</td>
	  <td>-0.0211</td>
	  <td>-0.1366</td>
	  <td>-0.0985</td>
	  <td>-0.1273</td>
	</tr>
	<tr>
	  <th>2022-07-31</th>
	  <td>0.0630</td>
	  <td>0.0360</td>
	  <td>0.0320</td>
	  <td>0.0541</td>
	  <td>0.0048</td>
	  <td>0.0555</td>
	  <td>0.1696</td>
	  <td>0.1200</td>
	  <td>0.0068</td>
	  <td>0.1178</td>
	  <td>…</td>
	  <td>0.0701</td>
	  <td>0.0925</td>
	  <td>0.0900</td>
	  <td>0.1625</td>
	  <td>0.1181</td>
	  <td>0.0846</td>
	  <td>0.0307</td>
	  <td>0.1402</td>
	  <td>0.1036</td>
	  <td>0.0993</td>
	</tr>
	<tr>
	  <th>2022-08-31</th>
	  <td>0.0504</td>
	  <td>-0.0065</td>
	  <td>-0.0459</td>
	  <td>-0.0206</td>
	  <td>-0.0031</td>
	  <td>-0.0596</td>
	  <td>-0.0245</td>
	  <td>-0.0519</td>
	  <td>-0.0235</td>
	  <td>-0.0620</td>
	  <td>…</td>
	  <td>-0.0930</td>
	  <td>-0.0165</td>
	  <td>-0.0179</td>
	  <td>-0.0365</td>
	  <td>-0.0166</td>
	  <td>-0.0360</td>
	  <td>-0.0103</td>
	  <td>-0.0631</td>
	  <td>-0.0121</td>
	  <td>-0.0422</td>
	</tr>
  </tbody>
</table>
<p>512 rows × 49 columns</p>
</div>

```python
with pd.ExcelWriter('../data/factor_pricing_data.xlsx') as writer:  
    info.to_excel(writer, sheet_name= 'descriptions')
    facs.to_excel(writer, sheet_name='factors (excess returns)')
    retsx.to_excel(writer, sheet_name='portfolios (excess returns)')
    rf.to_excel(writer, sheet_name='risk-free rate')
```

---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Factor Data
linter-yaml-title-alias: Factor Data
---

```python
import pandas as pd
import pandas_datareader.data as web
import pandas_datareader as pdreader
```

```python
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
startdate = '19270101'
enddate = '20221031'
```

```python
info = pd.DataFrame(columns=['Name', 'Unit', 'Construction', 'Description'])
info.loc['MKT'] = ['Market', 'Excess Return', 'Market-cap-weighted', 'US Equities']
info.loc['SMB'] = ['Size', 'Excess Return', 'Small Minus Big', 'Long small stocks and short big stocks']
info.loc['HML'] = ['Value', 'Excess Return', 'High Minus Low', 'Long value (high book-to-market) stocks and short growth (low book-to-market) stocks']
info.loc['RF'] = ['Risk-free rate', 'Total Return', 'Tbills', '']
info.loc['SMALL LoPRIOR'] = ['Small Down', 'Total Return', 'Small Losers', 'Bottom 3 deciles and Small']
info.loc['SMALL HiPRIOR'] = ['Small Up', 'Total Return', 'Small Winners', 'Top 3 deciles and Small']
info.loc['BIG LoPRIOR'] = ['Big Down', 'Total Return', 'Big Losers', 'Bottom 3 deciles and Big']
info.loc['BIG HiPRIOR'] = ['Big Up', 'Total Return', 'Big Winners', 'Top 3 deciles and Big']
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
	  <th>RF</th>
	  <td>Risk-free rate</td>
	  <td>Total Return</td>
	  <td>Tbills</td>
	  <td></td>
	</tr>
	<tr>
	  <th>SMALL LoPRIOR</th>
	  <td>Small Down</td>
	  <td>Total Return</td>
	  <td>Small Losers</td>
	  <td>Bottom 3 deciles and Small</td>
	</tr>
	<tr>
	  <th>SMALL HiPRIOR</th>
	  <td>Small Up</td>
	  <td>Total Return</td>
	  <td>Small Winners</td>
	  <td>Top 3 deciles and Small</td>
	</tr>
	<tr>
	  <th>BIG LoPRIOR</th>
	  <td>Big Down</td>
	  <td>Total Return</td>
	  <td>Big Losers</td>
	  <td>Bottom 3 deciles and Big</td>
	</tr>
	<tr>
	  <th>BIG HiPRIOR</th>
	  <td>Big Up</td>
	  <td>Total Return</td>
	  <td>Big Winners</td>
	  <td>Top 3 deciles and Big</td>
	</tr>
  </tbody>
</table>
</div>

# Factor Data
## For comparison, particularly correlation to Value Factor

```python
rawdata = web.DataReader('F-F_Research_Data_Factors', data_source='famafrench',start=startdate,end=enddate)
facs = rawdata[0] / 100
# convert the yyyy-mm to timestamp object. default is to put first of month, but should be end of month
facs = facs.to_timestamp().resample('M').last()
facs.rename(columns={'Mkt-RF':'MKT'},inplace=True)

rf = facs[['RF']]
facs = facs.drop(columns=['RF'])
```

# Momentum Data
## Momentum Factor
## Momentum Deciles
## Momentum Size Sorts

```python
rawdata = web.DataReader('F-F_Momentum_Factor', data_source='famafrench',start=startdate,end=enddate)
umd = rawdata[0] / 100
# convert the yyyy-mm to timestamp object. default is to put first of month, but should be end of month
umd = umd.to_timestamp().resample('M').last()
umd.columns = ['UMD']

rawdata = web.DataReader('10_Portfolios_Prior_12_2', data_source='famafrench',start=startdate,end=enddate)
deciles = rawdata[0] / 100
# convert the yyyy-mm to timestamp object. default is to put first of month, but should be end of month
deciles = deciles.to_timestamp().resample('M').last()

rawdata = web.DataReader('6_Portfolios_ME_Prior_12_2', data_source='famafrench',start=startdate,end=enddate)
umdsize = rawdata[0] / 100
# convert the yyyy-mm to timestamp object. default is to put first of month, but should be end of month
umdsize = umdsize.to_timestamp().resample('M').last()
```

# Save Data

```python
with pd.ExcelWriter('momentum_data.xlsx') as writer:  
    info.to_excel(writer, sheet_name= 'descriptions')
    facs.to_excel(writer, sheet_name='factors (excess returns)')
    umd.to_excel(writer, sheet_name='momentum (excess returns)')
    deciles.to_excel(writer, sheet_name='deciles (total returns)')
    umdsize.to_excel(writer, sheet_name='size_sorts (total returns)')
    rf.to_excel(writer, sheet_name='risk-free rate')
```

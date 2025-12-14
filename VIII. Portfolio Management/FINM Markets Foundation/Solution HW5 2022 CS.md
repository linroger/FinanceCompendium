---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: 2 The Factors
linter-yaml-title-alias: 2 The Factors
---

```python
import numpy as np
import pandas as pd
import statsmodels.api as sm
import seaborn as sns
import matplotlib.pyplot as plt
from statsmodels.regression.rolling import RollingOLS

%matplotlib inline
plt.rcParams["figure.figsize"] = [15,6]
```

# 2 The Factors

```python
factors = pd.read_excel('factor_pricing_data.xlsx',sheet_name='descriptions',index_col='Unnamed: 0')
factors = pd.read_excel('factor_pricing_data.xlsx',sheet_name='factors (excess returns)',index_col='Date')
factors.tail()
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
</div>

## 2.1 
### Analyze the factors, similar to how you analyzed the three Fama-French factors in Homework 4. You now have three additional factors, so let's compare there univariate statistics.<br> • mean <br>• volatility <br> • Sharpe

```python
def summaryStats(df):
    
    summary = pd.DataFrame(index = df.columns)
    
    summary['Mean'] = df.mean()*12
    summary['Volatility'] = df.std()*np.sqrt(12)
    summary['Sharpe Ratio'] = summary['Mean']/summary['Volatility']    
        
    return summary
```

#### Beginning - 1980

```python
summaryStats(factors[:'1980'])
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
	  <th>Mean</th>
	  <th>Volatility</th>
	  <th>Sharpe Ratio</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>MKT</th>
	  <td>0.2029</td>
	  <td>0.203717</td>
	  <td>0.995990</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>0.0537</td>
	  <td>0.108821</td>
	  <td>0.493472</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>-0.1987</td>
	  <td>0.117754</td>
	  <td>-1.687412</td>
	</tr>
	<tr>
	  <th>RMW</th>
	  <td>0.1078</td>
	  <td>0.073037</td>
	  <td>1.475957</td>
	</tr>
	<tr>
	  <th>CMA</th>
	  <td>-0.0977</td>
	  <td>0.076936</td>
	  <td>-1.269882</td>
	</tr>
	<tr>
	  <th>UMD</th>
	  <td>0.3078</td>
	  <td>0.234594</td>
	  <td>1.312054</td>
	</tr>
  </tbody>
</table>
</div>

#### 1981 - 2001

```python
summaryStats(factors['1981':'2001'])
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
	  <th>Mean</th>
	  <th>Volatility</th>
	  <th>Sharpe Ratio</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>MKT</th>
	  <td>0.077257</td>
	  <td>0.157396</td>
	  <td>0.490847</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>0.001433</td>
	  <td>0.109694</td>
	  <td>0.013067</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>0.063729</td>
	  <td>0.111276</td>
	  <td>0.572706</td>
	</tr>
	<tr>
	  <th>RMW</th>
	  <td>0.046910</td>
	  <td>0.091743</td>
	  <td>0.511312</td>
	</tr>
	<tr>
	  <th>CMA</th>
	  <td>0.053114</td>
	  <td>0.077273</td>
	  <td>0.687356</td>
	</tr>
	<tr>
	  <th>UMD</th>
	  <td>0.101686</td>
	  <td>0.145105</td>
	  <td>0.700775</td>
	</tr>
  </tbody>
</table>
</div>

#### 2002 - End

```python
summaryStats(factors['2002':])
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
	  <th>Mean</th>
	  <th>Volatility</th>
	  <th>Sharpe Ratio</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>MKT</th>
	  <td>0.083289</td>
	  <td>0.153972</td>
	  <td>0.540933</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>0.021068</td>
	  <td>0.090137</td>
	  <td>0.233731</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>0.001679</td>
	  <td>0.104507</td>
	  <td>0.016066</td>
	</tr>
	<tr>
	  <th>RMW</th>
	  <td>0.039702</td>
	  <td>0.074726</td>
	  <td>0.531296</td>
	</tr>
	<tr>
	  <th>CMA</th>
	  <td>0.019423</td>
	  <td>0.064240</td>
	  <td>0.302346</td>
	</tr>
	<tr>
	  <th>UMD</th>
	  <td>0.017032</td>
	  <td>0.158055</td>
	  <td>0.107762</td>
	</tr>
  </tbody>
</table>
</div>

## 2.2
### Based on the factor statistics above, answer the following. <br><br> (a) Does each factor have a positive risk premium (positive expected excess return)?

Since 1981, each factor displays a positive risk premium. Up to 1980, two factors (HML and CMA) had negative risk premia while the other factors had positive risk premia.

### (b) How have the factors performed since the time of the case, (2015-present)?

Market factor (MKT) continues to be the dominant factor with highest annualized returns.  Profitability (RMW) is the next best factor generating healthy mean returns. Other factors have not performed so well but have all been positive. Value (HML) factor returns have been negligible. 

## 2.3
### Report the correlation matrix across the six factors.

```python
corr = factors.corr()
sns.heatmap(corr,annot=True)
```

    <AxesSubplot:>




    

![png](output_16_1.png)

### (a) Does the construction method succeed in keeping correlations small?

In general, yes the construction method does succeed in keeping correlations small.

Notably, the correlations between MKT (Market) and CMA (Investment) factors, HML (value) and UMD (Momentum) factors, and between SMB (size) and RMW (Profitability) factors has been negative which looks attractive from a risk minimization perspective.

The correlation between HML (value) and CMA (Investment) is quite high. CMA is part of Fama French's 5 factor model but not the 3 factor model.

### (b) Fama and French say that HML is somewhat redundant in their 5-factor model. Does this seem to be the case?

We note high correlation of HML with CMA and a moderate correlation of HML with RMW. This is despite a relatively low correlation between CMA and RMW. Thus we could suspect that HML is somewhat redundant in the 5 factor model.

## 2.4
### Report the tangency weights for a portfolio of these 6 factors.

```python
def computeTangencyPortfolio(df):
    """ Assuming monthly input data and annualized outputs"""

    mean = df.mean()*12
    sigma = df.std() * np.sqrt(12)
    cov = df.cov()*12
    cov_inv = np.linalg.inv(cov)
    
    w_t = pd.Series(cov_inv@mean,index=mean.index,name="TangencyPortfolio")
    w_t = w_t/sum(w_t)
    
    tangencyMean = w_t@mean
    tangencyVol = np.sqrt(w_t.T@cov@w_t)
    tangencySharpe = tangencyMean/tangencyVol
    
    return w_t,tangencyMean,tangencyVol,tangencySharpe

tangencyWt,tangencyMean,tangencyVol, tangencySharpe = computeTangencyPortfolio(factors)
```

```python
print("Weights of Tangency Portfolio:")
tangencyWt.to_frame("Tangency Weights").sort_values('Tangency Weights',ascending = False)
```

    Weights of Tangency Portfolio:

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
	  <th>Tangency Weights</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>CMA</th>
	  <td>0.377449</td>
	</tr>
	<tr>
	  <th>RMW</th>
	  <td>0.288377</td>
	</tr>
	<tr>
	  <th>MKT</th>
	  <td>0.201062</td>
	</tr>
	<tr>
	  <th>UMD</th>
	  <td>0.098597</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>0.081551</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>-0.047037</td>
	</tr>
  </tbody>
</table>
</div>

### (a) Which factors seem most important? And Least?

CMA (Investment), RMW (Profitability) and MKT (Market Factors) are most important with more than 85% of the Tangency portfolio weights.

HML (Value) is the least important with negative weight in the portfolio.

### (b) Are the factors with low mean returns still useful?

```python
pd.concat([summaryStats(factors)['Mean'],tangencyWt],axis =1).sort_values('Mean')
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
	  <th>Mean</th>
	  <th>TangencyPortfolio</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>SMB</th>
	  <td>0.012169</td>
	  <td>0.081551</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>0.027523</td>
	  <td>-0.047037</td>
	</tr>
	<tr>
	  <th>CMA</th>
	  <td>0.033260</td>
	  <td>0.377449</td>
	</tr>
	<tr>
	  <th>RMW</th>
	  <td>0.044845</td>
	  <td>0.288377</td>
	</tr>
	<tr>
	  <th>UMD</th>
	  <td>0.065513</td>
	  <td>0.098597</td>
	</tr>
	<tr>
	  <th>MKT</th>
	  <td>0.083123</td>
	  <td>0.201062</td>
	</tr>
  </tbody>
</table>
</div>

SMB and HML have low returns and low weights in the tangency portfolio. 

However, CMA and RMW with moderate returns the highest of the weights in the portfolio.

### (c)
#### Re-do the tangency portfolio, but this time only include MKT, SMB, HML, and UMD. Which factors get high/low tangency weights now?

```python
tangencyWt,tangencyMean,tangencyVol, tangencySharpe = computeTangencyPortfolio(factors[['MKT','SMB','HML','UMD']])
```

```python
print("Weights of Tangency Portfolio:")
tangencyWt.to_frame("Tangency Weights").sort_values('Tangency Weights',ascending = False)
```

    Weights of Tangency Portfolio:

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
	  <th>Tangency Weights</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>HML</th>
	  <td>0.362221</td>
	</tr>
	<tr>
	  <th>MKT</th>
	  <td>0.331433</td>
	</tr>
	<tr>
	  <th>UMD</th>
	  <td>0.300295</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>0.006051</td>
	</tr>
  </tbody>
</table>
</div>

```python
pd.concat([summaryStats(factors)['Mean'],tangencyWt],axis =1).dropna().sort_values('Mean')
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
	  <th>Mean</th>
	  <th>TangencyPortfolio</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>SMB</th>
	  <td>0.012169</td>
	  <td>0.006051</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>0.027523</td>
	  <td>0.362221</td>
	</tr>
	<tr>
	  <th>UMD</th>
	  <td>0.065513</td>
	  <td>0.300295</td>
	</tr>
	<tr>
	  <th>MKT</th>
	  <td>0.083123</td>
	  <td>0.331433</td>
	</tr>
  </tbody>
</table>
</div>

Upon removing CMA and RMW, we notice that the factor weights for HML increased substantially despite its low mean returns. 

### What do you conclude about the importance or unimportance of these styles?

We noted positive risk premium for each of the factors since 1981. The relative importance of the factors changes over time but the factors have in general maintained a positive return premium. The construction of the factors keeps the correlations among them generally low. However, higher correlation among HML and CMA makes one of the factor somewhat redundant.

# 3 Testing Modern LPMs

## 1. Test the AQR 4-Factor Model using the time-series test. (We are not doing the cross-sectional regression tests.)

```python
portfolios = pd.read_excel('factor_pricing_data.xlsx',sheet_name='portfolios (excess returns)',index_col='Date')
```

```python
def linearRegression(seriesY,seriesX):
    
    mean =seriesY.mean()*12
    sharpe = mean/(seriesY.std()*(12**0.5))
    model = sm.OLS(seriesY,sm.add_constant(seriesX)).fit()
    rsq = model.rsquared
    
    beta = pd.DataFrame(index= [seriesY.name])
    
    for i,x in enumerate(seriesX):
         beta[x] = model.params[i+1]
    
    betaCols = [i+'Beta' for i in seriesX]
    beta = beta.rename(columns = dict(zip(beta.columns,betaCols)))
    
    treynor = mean/beta[beta.columns[0]]
    alpha = model.params[0]*12
    information = alpha/(model.resid.std()*np.sqrt(12))
    
    RegressionStats = pd.DataFrame({'Mean Return':mean,'Sharpe Ratio':sharpe,'R Squared':rsq,\
                         'Alpha':alpha, 'Information Ratio':information, 'Treynor':treynor},index= [seriesY.name])
    
    return pd.concat([RegressionStats,beta], axis =1)
```

## 3.1 AQR 4-factor model

```python
aqr = factors[['MKT', 'HML', 'RMW', 'UMD']]
```

### (a) For each regression, report the estimated α and r-squared.

```python
frames = []
for col in portfolios:
    p = linearRegression(portfolios[col],aqr)
    frames.append(p) 
AQRRegression = pd.concat(frames)
AQRRegression.T
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
  </thead>
  <tbody>
	<tr>
	  <th>Mean Return</th>
	  <td>0.092855</td>
	  <td>0.102267</td>
	  <td>0.110805</td>
	  <td>0.119684</td>
	  <td>0.132612</td>
	  <td>0.065130</td>
	  <td>0.111820</td>
	  <td>0.073202</td>
	  <td>0.082650</td>
	  <td>0.101620</td>
	  <td>…</td>
	  <td>0.093909</td>
	  <td>0.088495</td>
	  <td>0.083391</td>
	  <td>0.111579</td>
	  <td>0.100580</td>
	  <td>0.090851</td>
	  <td>0.097554</td>
	  <td>0.046793</td>
	  <td>0.109896</td>
	  <td>0.047960</td>
	</tr>
	<tr>
	  <th>Sharpe Ratio</th>
	  <td>0.429031</td>
	  <td>0.678847</td>
	  <td>0.502660</td>
	  <td>0.702567</td>
	  <td>0.592540</td>
	  <td>0.262814</td>
	  <td>0.429670</td>
	  <td>0.357755</td>
	  <td>0.542156</td>
	  <td>0.458644</td>
	  <td>…</td>
	  <td>0.474825</td>
	  <td>0.451369</td>
	  <td>0.464848</td>
	  <td>0.596237</td>
	  <td>0.554224</td>
	  <td>0.428054</td>
	  <td>0.535386</td>
	  <td>0.187397</td>
	  <td>0.494363</td>
	  <td>0.218043</td>
	</tr>
	<tr>
	  <th>R Squared</th>
	  <td>0.330166</td>
	  <td>0.468121</td>
	  <td>0.309781</td>
	  <td>0.424796</td>
	  <td>0.257474</td>
	  <td>0.503276</td>
	  <td>0.615578</td>
	  <td>0.688613</td>
	  <td>0.568142</td>
	  <td>0.618474</td>
	  <td>…</td>
	  <td>0.576622</td>
	  <td>0.697906</td>
	  <td>0.752236</td>
	  <td>0.683078</td>
	  <td>0.639291</td>
	  <td>0.769269</td>
	  <td>0.688400</td>
	  <td>0.599222</td>
	  <td>0.813069</td>
	  <td>0.605280</td>
	</tr>
	<tr>
	  <th>Alpha</th>
	  <td>0.015617</td>
	  <td>0.015205</td>
	  <td>0.023801</td>
	  <td>0.026757</td>
	  <td>0.039908</td>
	  <td>-0.027704</td>
	  <td>0.027091</td>
	  <td>-0.029218</td>
	  <td>-0.000890</td>
	  <td>-0.001364</td>
	  <td>…</td>
	  <td>0.006617</td>
	  <td>-0.016657</td>
	  <td>-0.013198</td>
	  <td>0.019410</td>
	  <td>0.001084</td>
	  <td>-0.020959</td>
	  <td>-0.005893</td>
	  <td>-0.057630</td>
	  <td>0.020535</td>
	  <td>-0.050578</td>
	</tr>
	<tr>
	  <th>Information Ratio</th>
	  <td>0.088166</td>
	  <td>0.138390</td>
	  <td>0.129964</td>
	  <td>0.207100</td>
	  <td>0.206939</td>
	  <td>-0.158619</td>
	  <td>0.167892</td>
	  <td>-0.255891</td>
	  <td>-0.008886</td>
	  <td>-0.009968</td>
	  <td>…</td>
	  <td>0.051417</td>
	  <td>-0.154571</td>
	  <td>-0.147801</td>
	  <td>0.184239</td>
	  <td>0.009948</td>
	  <td>-0.205580</td>
	  <td>-0.057937</td>
	  <td>-0.364571</td>
	  <td>0.213658</td>
	  <td>-0.365995</td>
	</tr>
	<tr>
	  <th>Treynor</th>
	  <td>0.113107</td>
	  <td>0.149813</td>
	  <td>0.140064</td>
	  <td>0.164574</td>
	  <td>0.183493</td>
	  <td>0.058617</td>
	  <td>0.090303</td>
	  <td>0.066017</td>
	  <td>0.109486</td>
	  <td>0.092490</td>
	  <td>…</td>
	  <td>0.096956</td>
	  <td>0.082252</td>
	  <td>0.081268</td>
	  <td>0.112589</td>
	  <td>0.105663</td>
	  <td>0.078279</td>
	  <td>0.098450</td>
	  <td>0.038696</td>
	  <td>0.089186</td>
	  <td>0.043080</td>
	</tr>
	<tr>
	  <th>MKTBeta</th>
	  <td>0.820943</td>
	  <td>0.682631</td>
	  <td>0.791106</td>
	  <td>0.727232</td>
	  <td>0.722708</td>
	  <td>1.111128</td>
	  <td>1.238281</td>
	  <td>1.108846</td>
	  <td>0.754888</td>
	  <td>1.098715</td>
	  <td>…</td>
	  <td>0.968576</td>
	  <td>1.075905</td>
	  <td>1.026113</td>
	  <td>0.991030</td>
	  <td>0.951890</td>
	  <td>1.160609</td>
	  <td>0.990894</td>
	  <td>1.209244</td>
	  <td>1.232212</td>
	  <td>1.113274</td>
	</tr>
	<tr>
	  <th>HMLBeta</th>
	  <td>0.155745</td>
	  <td>0.163392</td>
	  <td>0.207350</td>
	  <td>0.012689</td>
	  <td>0.211976</td>
	  <td>-0.053864</td>
	  <td>0.002059</td>
	  <td>0.270452</td>
	  <td>-0.014491</td>
	  <td>0.010749</td>
	  <td>…</td>
	  <td>0.103197</td>
	  <td>0.181693</td>
	  <td>0.095363</td>
	  <td>-0.127435</td>
	  <td>0.083356</td>
	  <td>0.693341</td>
	  <td>0.463319</td>
	  <td>0.497448</td>
	  <td>0.296410</td>
	  <td>0.148359</td>
	</tr>
	<tr>
	  <th>RMWBeta</th>
	  <td>-0.022301</td>
	  <td>0.525506</td>
	  <td>0.488692</td>
	  <td>0.604952</td>
	  <td>0.656358</td>
	  <td>0.243604</td>
	  <td>-0.111293</td>
	  <td>0.168472</td>
	  <td>0.469358</td>
	  <td>0.559958</td>
	  <td>…</td>
	  <td>0.253809</td>
	  <td>0.354797</td>
	  <td>0.183310</td>
	  <td>0.363296</td>
	  <td>0.499440</td>
	  <td>0.116431</td>
	  <td>0.234333</td>
	  <td>0.056072</td>
	  <td>-0.400307</td>
	  <td>0.110281</td>
	</tr>
	<tr>
	  <th>UMDBeta</th>
	  <td>0.087183</td>
	  <td>0.034443</td>
	  <td>-0.097353</td>
	  <td>0.076292</td>
	  <td>-0.040284</td>
	  <td>-0.136889</td>
	  <td>-0.202500</td>
	  <td>-0.072504</td>
	  <td>0.002162</td>
	  <td>-0.209911</td>
	  <td>…</td>
	  <td>-0.113583</td>
	  <td>-0.079262</td>
	  <td>0.006857</td>
	  <td>-0.045692</td>
	  <td>-0.065952</td>
	  <td>-0.136895</td>
	  <td>-0.033280</td>
	  <td>-0.187733</td>
	  <td>-0.049926</td>
	  <td>-0.046254</td>
	</tr>
  </tbody>
</table>
<p>10 rows × 49 columns</p>
</div>

### Calculate the mean-absolute-error of the estimated alphas, (one for each security, ˜ri.)

```python
AQR_MAE = round(abs(AQRRegression['Alpha']).mean(),6)
print(f'Mean Absolute Error for AQR factors: {AQR_MAE}')
```

    Mean Absolute Error for AQR factors: 0.02347

### If the pricing model worked, should these alpha estimates be large or small? Why? Based on your MAE stat, does this seem to support the pricing model or not?

If the pricing model worked, the alpha estimate should be very small, close to zero. This is because we would assume that the factors would be sufficient to explain most of the variation in excess portfolio return.

We observe an MAE stat of 2.37% which might be considered relatively small as compared to the actual portfolio returns in the period. Thus the factors have explained most part of the returns and support the pricing model.

## 3.2
### Test the CAPM, FF 3-Factor Model and the the FF 5-Factor Model. Report the MAE statistic for each of these models and compare it with the AQR Model MAE. Which model fits best?

```python
ff3 = factors[['MKT', 'SMB', 'HML']]

frames = []
for col in portfolios:
    p = linearRegression(portfolios[col],ff3)
    frames.append(p) 
FF3Regression = pd.concat(frames)
```

```python
FF3_MAE = round(abs(FF3Regression['Alpha']).mean(),6)
print(f'Mean Absolute Error for FF-3 Factor Model: {FF3_MAE}')
```

    Mean Absolute Error for FF-3 Factor Model: 0.025355

```python
ff5 = factors[['MKT', 'SMB', 'HML', 'RMW', 'CMA']]
frames = []
for col in portfolios:
    p = linearRegression(portfolios[col],ff5)
    frames.append(p) 
FF5Regression = pd.concat(frames)
FF5_MAE = abs(FF3Regression['Alpha']).mean()
```

```python
FF5_MAE = round(abs(FF5Regression['Alpha']).mean(),6)
print(f'Mean Absolute Error for FF-5 Factor Model: {FF5_MAE}')
```

    Mean Absolute Error for FF-5 Factor Model: 0.032525

```python
MAE_TS = pd.DataFrame({'MAE':[AQR_MAE,FF3_MAE,FF5_MAE]}, index = ["AQR","FF-3","FF-5"])
MAE_TS
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
	  <th>MAE</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>AQR</th>
	  <td>0.023470</td>
	</tr>
	<tr>
	  <th>FF-3</th>
	  <td>0.025355</td>
	</tr>
	<tr>
	  <th>FF-5</th>
	  <td>0.032525</td>
	</tr>
  </tbody>
</table>
</div>

We note that that the AQR Factor model fits the best with the smallest MAE.

## 3.3
### Does any particular factor seem especially important or unimportant for pricing? Do you think Fama and French should use the Momentum Factor?

We again note that the MAE worsens by including additional factors in the FF-5 factor model as compared to the FF-3 factor model. This again points us back to the probability that HML is not an especially important factor, especially CMA is included as a factor.

UMD (Momentum) seems to be an especially important factor and that could further be seen from low MAE of AQR Factors. Therefore, 

it seems Fama and French should use the Momentum Factor.

## 3.4
### This does not matter for pricing, but report the average (across n estimations) of the time-series regression r-squared statistics. Do this for each of the three models you tested. Do these models lead to high time-series r-squared stats? That is, would these factors be good in a Linear Factor Decomposition of the assets?

```python
AQR_RSq = AQRRegression['R Squared'].mean()
FF3_RSq = FF3Regression['R Squared'].mean()
FF5_RSq = FF5Regression['R Squared'].mean()
```

```python
Average_R_Squared = pd.Series({'AQR':AQR_RSq,'FF3':FF3_RSq,'FF5':FF5_RSq})
Average_R_Squared.to_frame("Average R Squared")
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
	  <th>Average R Squared</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>AQR</th>
	  <td>0.575712</td>
	</tr>
	<tr>
	  <th>FF3</th>
	  <td>0.571061</td>
	</tr>
	<tr>
	  <th>FF5</th>
	  <td>0.596360</td>
	</tr>
  </tbody>
</table>
</div>

We observe similar R squared for all three models in 57% to 60% range. This indicates moderately low explainability of excess returns by decomposition on different factor models. Thus the factors may not be considered good in a Linear Factor Decomposition of the assets.

## 3.5
### We tested three models using the time-series tests (focusing on the time-series alphas.) Re-test these models, but this time use the cross-sectional test.

```python
time_series_premia = (factors.mean()*12).to_frame('Time Series Premia')
time_series_premia.index = [x+"Beta" for x in time_series_premia.index]
time_series_premia
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
	  <th>Time Series Premia</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>MKTBeta</th>
	  <td>0.083123</td>
	</tr>
	<tr>
	  <th>SMBBeta</th>
	  <td>0.012169</td>
	</tr>
	<tr>
	  <th>HMLBeta</th>
	  <td>0.027523</td>
	</tr>
	<tr>
	  <th>RMWBeta</th>
	  <td>0.044845</td>
	</tr>
	<tr>
	  <th>CMABeta</th>
	  <td>0.033260</td>
	</tr>
	<tr>
	  <th>UMDBeta</th>
	  <td>0.065513</td>
	</tr>
  </tbody>
</table>
</div>

#### AQR Model

```python
y = AQRRegression['Mean Return']
x = AQRRegression[['MKTBeta','HMLBeta','RMWBeta','UMDBeta']]
AQRRegressionCS = sm.OLS(y,x,missing='drop').fit()
AQR_CS_MAE = abs(AQRRegressionCS.resid).mean()
AQR_CS_premia = AQRRegressionCS.params.to_frame("AQR CS Premia")
AQR_CS_premia
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
	  <th>AQR CS Premia</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>MKTBeta</th>
	  <td>0.086563</td>
	</tr>
	<tr>
	  <th>HMLBeta</th>
	  <td>-0.040885</td>
	</tr>
	<tr>
	  <th>RMWBeta</th>
	  <td>0.045500</td>
	</tr>
	<tr>
	  <th>UMDBeta</th>
	  <td>0.055284</td>
	</tr>
  </tbody>
</table>
</div>

#### Fama French 3 Model

```python
y = FF3Regression['Mean Return']
x = FF3Regression[['MKTBeta','SMBBeta','HMLBeta']]
FF3RegressionCS = sm.OLS(y,x,missing='drop').fit()
FF3_CS_MAE = abs(FF3RegressionCS.resid).mean()
FF3_CS_Premia = FF3RegressionCS.params.to_frame("FF3 CS Premia")
FF3_CS_Premia
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
	  <th>FF3 CS Premia</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>MKTBeta</th>
	  <td>0.101003</td>
	</tr>
	<tr>
	  <th>SMBBeta</th>
	  <td>-0.065920</td>
	</tr>
	<tr>
	  <th>HMLBeta</th>
	  <td>-0.017297</td>
	</tr>
  </tbody>
</table>
</div>

```python
y = FF5Regression['Mean Return']
x = FF5Regression[['MKTBeta','SMBBeta','HMLBeta','RMWBeta','CMABeta']]
FF5RegressionCS = sm.OLS(y,x,missing='drop').fit()
FF5_CS_MAE = abs(FF5RegressionCS.resid).mean()
FF5_CS_Premia = FF5RegressionCS.params.to_frame("FF5 CS Premia")
FF5_CS_Premia
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
	  <th>FF5 CS Premia</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>MKTBeta</th>
	  <td>0.094775</td>
	</tr>
	<tr>
	  <th>SMBBeta</th>
	  <td>-0.058725</td>
	</tr>
	<tr>
	  <th>HMLBeta</th>
	  <td>-0.035406</td>
	</tr>
	<tr>
	  <th>RMWBeta</th>
	  <td>0.036789</td>
	</tr>
	<tr>
	  <th>CMABeta</th>
	  <td>-0.015450</td>
	</tr>
  </tbody>
</table>
</div>

### (a) Report the time-series premia of the factors (just their sample averages,) and compare to the cross-sectionally estimated premia of the factors. Do they differ substantially?

```python
pd.concat([time_series_premia,AQR_CS_premia,FF3_CS_Premia,FF5_CS_Premia],axis = 1).fillna('')
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
	  <th>Time Series Premia</th>
	  <th>AQR CS Premia</th>
	  <th>FF3 CS Premia</th>
	  <th>FF5 CS Premia</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>MKTBeta</th>
	  <td>0.083123</td>
	  <td>0.086563</td>
	  <td>0.101003</td>
	  <td>0.094775</td>
	</tr>
	<tr>
	  <th>SMBBeta</th>
	  <td>0.012169</td>
	  <td></td>
	  <td>-0.06592</td>
	  <td>-0.058725</td>
	</tr>
	<tr>
	  <th>HMLBeta</th>
	  <td>0.027523</td>
	  <td>-0.040885</td>
	  <td>-0.017297</td>
	  <td>-0.035406</td>
	</tr>
	<tr>
	  <th>RMWBeta</th>
	  <td>0.044845</td>
	  <td>0.0455</td>
	  <td></td>
	  <td>0.036789</td>
	</tr>
	<tr>
	  <th>CMABeta</th>
	  <td>0.033260</td>
	  <td></td>
	  <td></td>
	  <td>-0.01545</td>
	</tr>
	<tr>
	  <th>UMDBeta</th>
	  <td>0.065513</td>
	  <td>0.055284</td>
	  <td></td>
	  <td></td>
	</tr>
  </tbody>
</table>
</div>

We notice that the differences in the Time Series and Cross Section premiums is generally not extremely large though there are some exception pairs.

### (b) Report the MAE of the cross-sectional regression residuals for each of the four models, (the υi.) How do they compare to the MAE of the time-series alphas?

```python
MAE_CS = pd.Series([AQR_CS_MAE,FF3_CS_MAE, FF5_CS_MAE], index = MAE_TS.index)
MAE = pd.concat([MAE_TS,MAE_CS],axis = 1)
MAE.columns = ['Time Series MAE', 'Cross Section MAE']
MAE
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
	  <th>Time Series MAE</th>
	  <th>Cross Section MAE</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>AQR</th>
	  <td>0.023470</td>
	  <td>0.017168</td>
	</tr>
	<tr>
	  <th>FF-3</th>
	  <td>0.025355</td>
	  <td>0.016072</td>
	</tr>
	<tr>
	  <th>FF-5</th>
	  <td>0.032525</td>
	  <td>0.013594</td>
	</tr>
  </tbody>
</table>
</div>

The MAE of Cross Section regression is in general lower than the MAE of Time Series Regression

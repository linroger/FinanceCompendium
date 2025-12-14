---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Factor Investing and Fama-French model
linter-yaml-title-alias: Factor Investing and Fama-French model
---

# Factor Investing and Fama-French model

**Copyright &copy; 2020 Ondrej Martinsky, All rights reserved**

[www.github.com/omartinsky/FamaFrench](https://github.com/omartinsky/FamaFrench)

```python
import pandas as pd
import matplotlib.pyplot as plt
import ipywidgets as wx
from ipywidgets import interact
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_absolute_error
from pandas.plotting import register_matplotlib_converters
from IPython.core.display import display, HTML
import famafrench
register_matplotlib_converters()
```

    c:\users\ondrej\python\wpy64-3800\python-3.8.0.amd64\lib\site-packages\statsmodels\tools\_testing.py:19: FutureWarning: pandas.util.testing is deprecated. Use the functions in the public API at pandas.testing instead.
      import pandas.util.testing as tm

```python
def create_ma_radios(value):
    return wx.RadioButtons(value=value, options=famafrench.lookup_ma.keys(), description='Roll Avg')
```

# Fama French

$ r = R_f + b_m \cdot \text{MER} + b_s \cdot \text{SMB} + b_v \cdot \text{HML} + b_p \cdot \text{RMW} + b_i \cdot \text{CMA} $

$r$ is expected portfolio return \
$b_m$, $b_s$, $b_v$, $b_p$, $b_i$ are factor sensitivities

# Factors Analysis

$\text{MER}$ is excess return of a broad market over the risk-free rate ($R_m - R_f$) (**market factor**) \
$\text{SMB}$ is the average return on the *small* stock portfolios minus *big* stock portfolios (**size factor**) \
$\text{HML}$ is the average return on *high* book value portfolios minus *low* book value (**value factor**)  \
$\text{RMW}$ is the average return on *robust* minus *weak* operating profitability portfolios (**profitability factor**) \
$\text{CMA}$ Conservative minus aggressive investments, proxied by the y/y growth in company asset value (**investment factor**)

Definitions: https://mba.tuck.dartmouth.edu/pages/faculty/ken.french/Data_Library/f-f_5_factors_2x3.html

```python
display(HTML('<b>Factors time series</b>'), famafrench.df_factors)
display(HTML('<b>Factors Statistics</b>'), famafrench.df_factors.describe().T)
display(HTML('<b>Factors Correlation Matrix</b>'), famafrench.df_factors.corr())
```

<b>Factors time series</b>

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
	  <th>MER</th>
	  <th>SMB</th>
	  <th>HML</th>
	  <th>RMW</th>
	  <th>CMA</th>
	  <th>RF</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>1963-07-01</th>
	  <td>-0.0067</td>
	  <td>0.0000</td>
	  <td>-0.0032</td>
	  <td>-0.0001</td>
	  <td>0.0015</td>
	  <td>0.00012</td>
	</tr>
	<tr>
	  <th>1963-07-02</th>
	  <td>0.0079</td>
	  <td>-0.0027</td>
	  <td>0.0027</td>
	  <td>-0.0007</td>
	  <td>-0.0019</td>
	  <td>0.00012</td>
	</tr>
	<tr>
	  <th>1963-07-03</th>
	  <td>0.0063</td>
	  <td>-0.0017</td>
	  <td>-0.0009</td>
	  <td>0.0017</td>
	  <td>-0.0033</td>
	  <td>0.00012</td>
	</tr>
	<tr>
	  <th>1963-07-05</th>
	  <td>0.0040</td>
	  <td>0.0008</td>
	  <td>-0.0028</td>
	  <td>0.0008</td>
	  <td>-0.0033</td>
	  <td>0.00012</td>
	</tr>
	<tr>
	  <th>1963-07-08</th>
	  <td>-0.0063</td>
	  <td>0.0004</td>
	  <td>-0.0018</td>
	  <td>-0.0029</td>
	  <td>0.0013</td>
	  <td>0.00012</td>
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
	  <th>2020-04-24</th>
	  <td>0.0144</td>
	  <td>0.0029</td>
	  <td>-0.0009</td>
	  <td>-0.0014</td>
	  <td>0.0016</td>
	  <td>0.00000</td>
	</tr>
	<tr>
	  <th>2020-04-27</th>
	  <td>0.0173</td>
	  <td>0.0220</td>
	  <td>0.0274</td>
	  <td>-0.0012</td>
	  <td>0.0020</td>
	  <td>0.00000</td>
	</tr>
	<tr>
	  <th>2020-04-28</th>
	  <td>-0.0044</td>
	  <td>0.0165</td>
	  <td>0.0289</td>
	  <td>0.0139</td>
	  <td>0.0074</td>
	  <td>0.00000</td>
	</tr>
	<tr>
	  <th>2020-04-29</th>
	  <td>0.0292</td>
	  <td>0.0227</td>
	  <td>0.0204</td>
	  <td>0.0122</td>
	  <td>-0.0081</td>
	  <td>0.00000</td>
	</tr>
	<tr>
	  <th>2020-04-30</th>
	  <td>-0.0118</td>
	  <td>-0.0206</td>
	  <td>-0.0163</td>
	  <td>0.0071</td>
	  <td>-0.0010</td>
	  <td>0.00000</td>
	</tr>
  </tbody>
</table>
<p>14306 rows × 6 columns</p>
</div>

<b>Factors Statistics</b>

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
	  <th>count</th>
	  <th>mean</th>
	  <th>std</th>
	  <th>min</th>
	  <th>25%</th>
	  <th>50%</th>
	  <th>75%</th>
	  <th>max</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>MER</th>
	  <td>14306.0</td>
	  <td>0.000254</td>
	  <td>0.010113</td>
	  <td>-0.1744</td>
	  <td>-0.00410</td>
	  <td>0.00050</td>
	  <td>0.00490</td>
	  <td>0.11350</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>14306.0</td>
	  <td>0.000066</td>
	  <td>0.005257</td>
	  <td>-0.1117</td>
	  <td>-0.00270</td>
	  <td>0.00020</td>
	  <td>0.00300</td>
	  <td>0.06080</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>14306.0</td>
	  <td>0.000132</td>
	  <td>0.005160</td>
	  <td>-0.0472</td>
	  <td>-0.00230</td>
	  <td>0.00010</td>
	  <td>0.00240</td>
	  <td>0.04830</td>
	</tr>
	<tr>
	  <th>RMW</th>
	  <td>14306.0</td>
	  <td>0.000127</td>
	  <td>0.003680</td>
	  <td>-0.0292</td>
	  <td>-0.00170</td>
	  <td>0.00010</td>
	  <td>0.00180</td>
	  <td>0.04400</td>
	</tr>
	<tr>
	  <th>CMA</th>
	  <td>14306.0</td>
	  <td>0.000129</td>
	  <td>0.003643</td>
	  <td>-0.0594</td>
	  <td>-0.00170</td>
	  <td>0.00010</td>
	  <td>0.00190</td>
	  <td>0.02530</td>
	</tr>
	<tr>
	  <th>RF</th>
	  <td>14306.0</td>
	  <td>0.000179</td>
	  <td>0.000125</td>
	  <td>0.0000</td>
	  <td>0.00008</td>
	  <td>0.00018</td>
	  <td>0.00024</td>
	  <td>0.00061</td>
	</tr>
  </tbody>
</table>
</div>

<b>Factors Correlation Matrix</b>

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
	  <th>MER</th>
	  <th>SMB</th>
	  <th>HML</th>
	  <th>RMW</th>
	  <th>CMA</th>
	  <th>RF</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>MER</th>
	  <td>1.000000</td>
	  <td>-0.098804</td>
	  <td>-0.170869</td>
	  <td>-0.199234</td>
	  <td>-0.364157</td>
	  <td>-0.018872</td>
	</tr>
	<tr>
	  <th>SMB</th>
	  <td>-0.098804</td>
	  <td>1.000000</td>
	  <td>0.093717</td>
	  <td>-0.282457</td>
	  <td>0.017021</td>
	  <td>-0.011284</td>
	</tr>
	<tr>
	  <th>HML</th>
	  <td>-0.170869</td>
	  <td>0.093717</td>
	  <td>1.000000</td>
	  <td>-0.048140</td>
	  <td>0.541814</td>
	  <td>0.026391</td>
	</tr>
	<tr>
	  <th>RMW</th>
	  <td>-0.199234</td>
	  <td>-0.282457</td>
	  <td>-0.048140</td>
	  <td>1.000000</td>
	  <td>0.063369</td>
	  <td>0.002674</td>
	</tr>
	<tr>
	  <th>CMA</th>
	  <td>-0.364157</td>
	  <td>0.017021</td>
	  <td>0.541814</td>
	  <td>0.063369</td>
	  <td>1.000000</td>
	  <td>0.023622</td>
	</tr>
	<tr>
	  <th>RF</th>
	  <td>-0.018872</td>
	  <td>-0.011284</td>
	  <td>0.026391</td>
	  <td>0.002674</td>
	  <td>0.023622</td>
	  <td>1.000000</td>
	</tr>
  </tbody>
</table>
</div>

```python
display(HTML("<b>Distribution Analysis</b>"))
    
wx_ff=wx.Dropdown(options=famafrench.lookup_factors.keys(), description='Factor')
wx_ma=create_ma_radios('1D')
wx_out1=wx.interactive_output(famafrench.plot_factor_hists, {'ff':wx_ff, 'ma':wx_ma})
wx_out2=wx.interactive_output(famafrench.plot_factor_timeseries, {'ff':wx_ff, 'ma':wx_ma})
display(wx.HBox([wx_ff, wx_ma]), wx_out1, wx_out2)
```

<b>Distribution Analysis</b>

    HBox(children=(Dropdown(description='Factor', options=('Market Factor (MER)', 'Size Factor (SMB)', 'Value Fact…



    Output()



    Output()

# Portfolio Analysis

```python
def create_factor_radios():
    return {
        'f_mer': wx.Checkbox(description='MER', indent=False, layout=chkbox_layout, value=True),
        'f_smb': wx.Checkbox(description='SMB', indent=False, layout=chkbox_layout, value=True),
        'f_hml': wx.Checkbox(description='HML', indent=False, layout=chkbox_layout, value=True),
        'f_rmw': wx.Checkbox(description='RMW', indent=False, layout=chkbox_layout),
        'f_cma': wx.Checkbox(description='CMA', indent=False, layout=chkbox_layout),
    }

def create_portfolio_dropdown():
    return wx.Dropdown(options=famafrench.portfolios.keys(), description='Portfolio', layout=wx.Layout(width='500px'))


chkbox_layout = wx.Layout(width='70px')
wx_pname = create_portfolio_dropdown()
wx_ma = create_ma_radios('3Y')
wx_factor_list = create_factor_radios()
wx_daterange=wx.SelectionRangeSlider(options=range(1960,2021), index=(0, len(range(1960,2021))-1), description='Range', continuous_update=False, layout=wx.Layout(width='500px'))
wx_out=wx.interactive_output(famafrench.fit_portfolio_returns, {'pname':wx_pname, **wx_factor_list , 'ma': wx_ma, 'daterange': wx_daterange})
wx_out.layout.height='700px'
wx_out_r2hist = wx.interactive_output(famafrench.draw_R2_hist, {'pname':wx_pname, 'daterange': wx_daterange})
wx_out_r2series = wx.interactive_output(famafrench.draw_R2_series, {'pname':wx_pname, **wx_factor_list, 'daterange': wx_daterange})
display(
    wx_pname, 
    wx.HBox([wx_daterange, *(wx_factor_list.values())]),
    wx.HBox([wx_out_r2hist, wx_out_r2series]),
    wx.HBox([wx_out, wx_ma]))
```

    Dropdown(description='Portfolio', layout=Layout(width='500px'), options=('1. Bivariate SMB+HML (2x3) ➤ Value W…



    HBox(children=(SelectionRangeSlider(continuous_update=False, description='Range', index=(0, 60), layout=Layout…



    HBox(children=(Output(), Output()))



    HBox(children=(Output(layout=Layout(height='700px')), RadioButtons(description='Roll Avg', index=3, options=('…


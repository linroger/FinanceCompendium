---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Treasury Yield Curve Bootstrapping
linter-yaml-title-alias: Treasury Yield Curve Bootstrapping
---

Copyright &copy; 2012 Ondrej Martinsky, All rights reserved

[www.quantandfinancial.com](http://www.quantandfinancial.com)

# Treasury Yield Curve Bootstrapping

## Mathematical symbols used in this notebook

| Symbol | Comment
| -- | --
| tr | Time to maturity
| t | Time to maturity (interpolated)
| yr | Yield to maturity
| y | Yield to maturity (interpolated)
| s | Bootstrapped spot rate

# Load data

```python
%pylab
%matplotlib inline
pylab.rcParams['figure.figsize'] = (12, 6)

import scipy.interpolate
from pandas import *
```

    Using matplotlib backend: Qt4Agg
    Populating the interactive namespace from numpy and matplotlib

```python
bonds = read_csv('gilts_2012_09_19.csv', index_col=None, parse_dates=['maturity'])
```

## Calculate "time to maturity" column

```python
current_date = datetime(2012, 9, 19)
ttm = [(maturity - current_date).days / 360 for maturity in bonds['maturity']]
bonds['time to maturity'] = ttm
bonds
```

<div>
<table border="1" class="dataframe">
  <thead>
	<tr style="text-align: right;">
	  <th></th>
	  <th>epic</th>
	  <th>description</th>
	  <th>coupon</th>
	  <th>maturity</th>
	  <th>bid</th>
	  <th>ask</th>
	  <th>change</th>
	  <th>income yield</th>
	  <th>gross redemption yield</th>
	  <th>time to maturity</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>TR13</td>
	  <td>Uk Gilt Treasury Stk</td>
	  <td>4.50</td>
	  <td>2013-03-07</td>
	  <td>101.92</td>
	  <td>102.07</td>
	  <td>-0.01</td>
	  <td>4.41</td>
	  <td>0.22</td>
	  <td>0.469444</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>T813</td>
	  <td>Uk Gilt Treasury Stk</td>
	  <td>8.00</td>
	  <td>2013-09-27</td>
	  <td>107.86</td>
	  <td>107.98</td>
	  <td>-0.03</td>
	  <td>7.41</td>
	  <td>0.23</td>
	  <td>1.036111</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>TR14</td>
	  <td>Uk Gilt Treasury Stk</td>
	  <td>2.25</td>
	  <td>2014-03-07</td>
	  <td>102.90</td>
	  <td>103.05</td>
	  <td>0.01</td>
	  <td>2.18</td>
	  <td>0.22</td>
	  <td>1.483333</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>T514</td>
	  <td>Uk Gilt Treasury Stk</td>
	  <td>5.00</td>
	  <td>2014-09-07</td>
	  <td>109.28</td>
	  <td>109.43</td>
	  <td>0.02</td>
	  <td>4.57</td>
	  <td>0.23</td>
	  <td>1.994444</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>TR15</td>
	  <td>Uk Gilt Treasury Stk</td>
	  <td>2.75</td>
	  <td>2015-01-22</td>
	  <td>105.57</td>
	  <td>105.68</td>
	  <td>0.05</td>
	  <td>2.60</td>
	  <td>0.33</td>
	  <td>2.375000</td>
	</tr>
	<tr>
	  <th>5</th>
	  <td>T4T</td>
	  <td>Uk Gilt Treasury Stk</td>
	  <td>4.75</td>
	  <td>2015-09-07</td>
	  <td>112.92</td>
	  <td>113.04</td>
	  <td>0.04</td>
	  <td>4.20</td>
	  <td>0.35</td>
	  <td>3.008333</td>
	</tr>
	<tr>
	  <th>6</th>
	  <td>TY8</td>
	  <td>Uk Gilt Treasury Stk</td>
	  <td>8.00</td>
	  <td>2015-12-07</td>
	  <td>124.39</td>
	  <td>124.55</td>
	  <td>0.04</td>
	  <td>6.43</td>
	  <td>0.34</td>
	  <td>3.261111</td>
	</tr>
	<tr>
	  <th>7</th>
	  <td>TS16</td>
	  <td>Uk Gilt Treasury Stk</td>
	  <td>2.00</td>
	  <td>2016-01-22</td>
	  <td>104.92</td>
	  <td>105.04</td>
	  <td>0.07</td>
	  <td>1.91</td>
	  <td>0.49</td>
	  <td>3.388889</td>
	</tr>
	<tr>
	  <th>8</th>
	  <td>T16</td>
	  <td>Uk Gilt Treasury Stk</td>
	  <td>4.00</td>
	  <td>2016-09-07</td>
	  <td>113.44</td>
	  <td>113.55</td>
	  <td>0.08</td>
	  <td>3.52</td>
	  <td>0.56</td>
	  <td>4.025000</td>
	</tr>
	<tr>
	  <th>9</th>
	  <td>TR17</td>
	  <td>Uk Gilt Treasury Stk</td>
	  <td>8.75</td>
	  <td>2017-08-25</td>
	  <td>138.48</td>
	  <td>138.66</td>
	  <td>0.14</td>
	  <td>6.31</td>
	  <td>0.77</td>
	  <td>5.002778</td>
	</tr>
	<tr>
	  <th>10</th>
	  <td>T18</td>
	  <td>Uk Gilt Treasury Stk</td>
	  <td>5.00</td>
	  <td>2018-03-07</td>
	  <td>121.74</td>
	  <td>121.84</td>
	  <td>0.16</td>
	  <td>4.11</td>
	  <td>0.91</td>
	  <td>5.541667</td>
	</tr>
	<tr>
	  <th>11</th>
	  <td>T19</td>
	  <td>Uk Gilt Treasury Stk</td>
	  <td>4.50</td>
	  <td>2019-03-07</td>
	  <td>121.28</td>
	  <td>121.41</td>
	  <td>0.23</td>
	  <td>3.71</td>
	  <td>1.07</td>
	  <td>6.555556</td>
	</tr>
	<tr>
	  <th>12</th>
	  <td>TR19</td>
	  <td>Uk Gilt Treasury Stk</td>
	  <td>3.75</td>
	  <td>2019-09-07</td>
	  <td>116.50</td>
	  <td>117.13</td>
	  <td>0.26</td>
	  <td>3.21</td>
	  <td>1.22</td>
	  <td>7.066667</td>
	</tr>
	<tr>
	  <th>13</th>
	  <td>TS20</td>
	  <td>Uk Gilt Treasury Stk</td>
	  <td>4.75</td>
	  <td>2020-03-07</td>
	  <td>124.24</td>
	  <td>124.36</td>
	  <td>0.28</td>
	  <td>3.82</td>
	  <td>1.32</td>
	  <td>7.572222</td>
	</tr>
	<tr>
	  <th>14</th>
	  <td>TR20</td>
	  <td>Uk Gilt Treasury Stk</td>
	  <td>3.75</td>
	  <td>2020-09-07</td>
	  <td>117.25</td>
	  <td>117.50</td>
	  <td>0.32</td>
	  <td>3.19</td>
	  <td>1.43</td>
	  <td>8.083333</td>
	</tr>
	<tr>
	  <th>15</th>
	  <td>TR21</td>
	  <td>Uk Gilt Treasury Stk</td>
	  <td>8.00</td>
	  <td>2021-06-07</td>
	  <td>152.25</td>
	  <td>153.61</td>
	  <td>0.42</td>
	  <td>5.23</td>
	  <td>1.50</td>
	  <td>8.841667</td>
	</tr>
	<tr>
	  <th>16</th>
	  <td>TY21</td>
	  <td>Uk Gilt Treasury Stk</td>
	  <td>3.75</td>
	  <td>2021-09-07</td>
	  <td>117.62</td>
	  <td>117.77</td>
	  <td>0.38</td>
	  <td>3.19</td>
	  <td>1.62</td>
	  <td>9.097222</td>
	</tr>
	<tr>
	  <th>17</th>
	  <td>TR22</td>
	  <td>Uk Gilt Treasury Stk</td>
	  <td>4.00</td>
	  <td>2022-03-07</td>
	  <td>119.92</td>
	  <td>120.12</td>
	  <td>0.41</td>
	  <td>3.33</td>
	  <td>1.70</td>
	  <td>9.600000</td>
	</tr>
	<tr>
	  <th>18</th>
	  <td>TR25</td>
	  <td>Uk Gilt Treasury Stk</td>
	  <td>5.00</td>
	  <td>2025-03-07</td>
	  <td>131.89</td>
	  <td>132.19</td>
	  <td>0.52</td>
	  <td>3.79</td>
	  <td>2.07</td>
	  <td>12.644444</td>
	</tr>
	<tr>
	  <th>19</th>
	  <td>TR27</td>
	  <td>Uk Gilt Treasury Stk</td>
	  <td>4.25</td>
	  <td>2027-12-07</td>
	  <td>123.78</td>
	  <td>124.33</td>
	  <td>0.58</td>
	  <td>3.43</td>
	  <td>2.36</td>
	  <td>15.436111</td>
	</tr>
	<tr>
	  <th>20</th>
	  <td>TR28</td>
	  <td>Uk Gilt Treasury Stk</td>
	  <td>6.00</td>
	  <td>2028-12-07</td>
	  <td>148.21</td>
	  <td>148.26</td>
	  <td>0.68</td>
	  <td>4.05</td>
	  <td>2.39</td>
	  <td>16.452778</td>
	</tr>
	<tr>
	  <th>21</th>
	  <td>TR30</td>
	  <td>Uk Gilt Treasury Stk</td>
	  <td>4.75</td>
	  <td>2030-12-07</td>
	  <td>130.96</td>
	  <td>131.14</td>
	  <td>0.55</td>
	  <td>3.62</td>
	  <td>2.60</td>
	  <td>18.480556</td>
	</tr>
	<tr>
	  <th>22</th>
	  <td>TR32</td>
	  <td>Uk Gilt Treasury Stk</td>
	  <td>4.25</td>
	  <td>2032-06-07</td>
	  <td>122.93</td>
	  <td>123.08</td>
	  <td>0.54</td>
	  <td>3.46</td>
	  <td>2.73</td>
	  <td>20.002778</td>
	</tr>
	<tr>
	  <th>23</th>
	  <td>T34</td>
	  <td>Uk Gilt Treasury Stk</td>
	  <td>4.50</td>
	  <td>2034-09-07</td>
	  <td>126.09</td>
	  <td>126.18</td>
	  <td>0.58</td>
	  <td>3.57</td>
	  <td>2.89</td>
	  <td>22.286111</td>
	</tr>
	<tr>
	  <th>24</th>
	  <td>T4Q</td>
	  <td>Uk Gilt Treasury Stk</td>
	  <td>4.25</td>
	  <td>2036-03-07</td>
	  <td>121.46</td>
	  <td>121.71</td>
	  <td>0.53</td>
	  <td>3.50</td>
	  <td>2.97</td>
	  <td>23.805556</td>
	</tr>
	<tr>
	  <th>25</th>
	  <td>TR38</td>
	  <td>Uk Gilt Treasury Stk</td>
	  <td>4.75</td>
	  <td>2038-12-07</td>
	  <td>130.70</td>
	  <td>130.80</td>
	  <td>0.55</td>
	  <td>3.63</td>
	  <td>3.04</td>
	  <td>26.597222</td>
	</tr>
	<tr>
	  <th>26</th>
	  <td>T39</td>
	  <td>Uk Gilt Treasury Stk</td>
	  <td>4.25</td>
	  <td>2039-09-07</td>
	  <td>120.90</td>
	  <td>121.15</td>
	  <td>0.54</td>
	  <td>3.51</td>
	  <td>3.09</td>
	  <td>27.358333</td>
	</tr>
	<tr>
	  <th>27</th>
	  <td>T40</td>
	  <td>Uk Gilt Treasury Stk</td>
	  <td>4.25</td>
	  <td>2040-12-07</td>
	  <td>120.55</td>
	  <td>120.93</td>
	  <td>0.53</td>
	  <td>3.52</td>
	  <td>3.14</td>
	  <td>28.627778</td>
	</tr>
	<tr>
	  <th>28</th>
	  <td>T42</td>
	  <td>Uk Gilt Treasury Stk</td>
	  <td>4.50</td>
	  <td>2042-12-07</td>
	  <td>125.77</td>
	  <td>126.07</td>
	  <td>0.58</td>
	  <td>3.57</td>
	  <td>3.16</td>
	  <td>30.655556</td>
	</tr>
	<tr>
	  <th>29</th>
	  <td>T46</td>
	  <td>Uk Gilt Treasury Stk</td>
	  <td>4.25</td>
	  <td>2046-12-07</td>
	  <td>120.93</td>
	  <td>121.37</td>
	  <td>0.56</td>
	  <td>3.51</td>
	  <td>3.22</td>
	  <td>34.713889</td>
	</tr>
	<tr>
	  <th>30</th>
	  <td>T49</td>
	  <td>Uk Gilt Treasury Stk</td>
	  <td>4.25</td>
	  <td>2049-12-07</td>
	  <td>120.99</td>
	  <td>121.34</td>
	  <td>0.53</td>
	  <td>3.51</td>
	  <td>3.26</td>
	  <td>37.758333</td>
	</tr>
	<tr>
	  <th>31</th>
	  <td>TR4Q</td>
	  <td>Uk Gilt Treasury Stk</td>
	  <td>4.25</td>
	  <td>2055-12-07</td>
	  <td>122.49</td>
	  <td>122.90</td>
	  <td>0.55</td>
	  <td>3.46</td>
	  <td>3.27</td>
	  <td>43.844444</td>
	</tr>
	<tr>
	  <th>32</th>
	  <td>TR60</td>
	  <td>Uk Gilt Treasury Stk</td>
	  <td>4.00</td>
	  <td>2060-01-22</td>
	  <td>117.60</td>
	  <td>118.06</td>
	  <td>0.51</td>
	  <td>3.39</td>
	  <td>3.26</td>
	  <td>48.030556</td>
	</tr>
  </tbody>
</table>
</div>

# Import Time value of money calculator

```python
import tvm
```

# Calculate yield curve

Calculated YTMs doesn't necessarily correspond to those quoted in data file (source: Bondscape.net), due to accrued interest and a fact that coupon payment are bound to some specific calendar date, not necessarily, one semiannually.

_Please note that source data from BondScape.net already contains Gross Redemption Yield, which is not used for the sake of this example (but corresponds to the yield calculated using time-value-of-money calculator_

```python
tr, yr = [], []
current_date = datetime(2012, 9, 19)
for i, bond in bonds.iterrows():
    ttm = bond['time to maturity']
    price = (bond['bid'] + bond['ask']) / 2
    freq = 2 # semiannually
    ytm = tvm.TVM(n=ttm * freq, pv=-price, pmt=bond['coupon'] / freq, fv=100).calc_r() * freq
    tr.append(ttm)
    yr.append(ytm)
```

# Interpolation

Interpolate on-the-run yield curve to get yields on node dates (1Y, 2Y, …), so they can be used in bootstrapping

```python
t = list(i for i in range(1, 41))
y = []
interp = scipy.interpolate.interp1d(tr, yr, bounds_error=False, fill_value=scipy.nan)
for i in t:
    value = float(interp(i))
    if not scipy.isnan(value):
        y.append(value)
```

# Bootstrapping

To bootstrap the yield curve, we will be building upon a fact that all bonds priced at par have coupon rate equal to the yield-to-maturity, as denoted in the following equation:

$$ \frac{C}{\left ( 1+r \right )^1} + \frac{C}{\left ( 1+r \right )^2}+…+\frac{1+C}{\left ( 1+r \right )^n} = 100 $$

```python
s = []  # output array for spot rates
for i in range(0, len(t)):  # calculate i-th spot rate
    sum = 0
    for j in range(0, i):  # by iterating through 0..i
        sum += y[i] / (1 + s[j]) ** t[j]
    value = ((1 + y[i]) / (1 - sum)) ** (1 / t[i]) - 1
    s.append(value)
```

# Display

```python
xlabel('Time to maturity'), ylabel('Yield to maturity'), grid(True)
plot(tr, array(yr)*100, marker='^', label='Original Yield Curve')
plot(t, array(y)*100, marker='^', label='Interpolated Yield Curve')
plot(t, array(s)*100, marker='^', label='Spot Rate Curve')
legend(loc=4), show();
```

![png](output_16_0.png)


---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Portfolio Optimization and Black-Litterman
linter-yaml-title-alias: Portfolio Optimization and Black-Litterman
---

Copyright &copy; 2013 Ondrej Martinsky, All rights reserved

[www.quantandfinancial.com](http://www.quantandfinancial.com)

# Portfolio Optimization and Black-Litterman

## Mathematical symbols used in this notebook

| Python symbol | Math Symbol | Comment
| -- | -- | --
| rf | $r$ | risk free rate
| lmb | $\lambda$ | risk aversion coefficient
| C | $C$ | Assets covariance matrix
| V | $V$ | Assets variances (diagonal in covariance matrix)
| W | $W$ | Assets weights
| R | $R$ | Assets returns
| mean | $\mu$ | Portfolio historical return
| var | $\sigma$ | Portfolio historical variance
| Pi | $\Pi$ | Portfolio equilibrium excess returns
| tau | $\tau$ | Scaling factor for Black-litterman

```python
%pylab
%matplotlib inline
pylab.rcParams['figure.figsize'] = (10, 6)
import scipy.optimize
from pandas import *
```

    Using matplotlib backend: TkAgg
    Populating the interactive namespace from numpy and matplotlib

# Few helper functions

```python
# Calculates portfolio mean return
def port_mean(W, R):
    return sum(R * W)

# Calculates portfolio variance of returns
def port_var(W, C):
    return dot(dot(W, C), W)

# Combination of the two functions above - mean and variance of returns calculation
def port_mean_var(W, R, C):
    return port_mean(W, R), port_var(W, C)
```

```python
# Given risk-free rate, assets returns and covariances, this function calculates
# mean-variance frontier and returns its [x,y] points in two arrays
def solve_frontier(R, C, rf):
    def fitness(W, R, C, r):
        # For given level of return r, find weights which minimizes portfolio variance.
        mean, var = port_mean_var(W, R, C)
        penalty = 100 * abs(
            mean - r)  # Big penalty for not meeting stated portfolio return effectively serves as optimization constraint
        return var + penalty

    frontier_mean, frontier_var, frontier_weights = [], [], []
    n = len(R)  # Number of assets in the portfolio
    for r in linspace(min(R), max(R), num=20):  # Iterate through the range of returns on Y axis
        W = ones([n]) / n  # start optimization with equal weights
        b_ = [(0, 1) for i in range(n)]
        c_ = ({'type': 'eq', 'fun': lambda W: sum(W) - 1.})
        optimized = scipy.optimize.minimize(fitness, W, (R, C, r), method='SLSQP', constraints=c_, bounds=b_)
        if not optimized.success:
            raise BaseException(optimized.message)
        # add point to the efficient frontier [x,y] = [optimized.x, r]
        frontier_mean.append(r)
        frontier_var.append(port_var(optimized.x, C))
        frontier_weights.append(optimized.x)
    return array(frontier_mean), array(frontier_var), frontier_weights
```

```python
# Given risk-free rate, assets returns and covariances, this function calculates
# weights of tangency portfolio with respect to sharpe ratio maximization
def solve_weights(R, C, rf):
    def fitness(W, R, C, rf):
        mean, var = port_mean_var(W, R, C)  # calculate mean/variance of the portfolio
        util = (mean - rf) / sqrt(var)  # utility = Sharpe ratio
        return 1 / util  # maximize the utility, minimize its inverse value
    n = len(R)
    W = ones([n]) / n  # start optimization with equal weights
    b_ = [(0., 1.) for i in range(n)]  # weights for boundaries between 0%..100%. No leverage, no shorting
    c_ = ({'type': 'eq', 'fun': lambda W: sum(W) - 1.})  # Sum of weights must be 100%
    optimized = scipy.optimize.minimize(fitness, W, (R, C, rf), method='SLSQP', constraints=c_, bounds=b_)
    if not optimized.success: raise BaseException(optimized.message)
    return optimized.x
```

```python
class Result:
    def __init__(self, W, tan_mean, tan_var, front_mean, front_var, front_weights):
        self.W=W
        self.tan_mean=tan_mean
        self.tan_var=tan_var
        self.front_mean=front_mean
        self.front_var=front_var
        self.front_weights=front_weights
        
def optimize_frontier(R, C, rf):
    W = solve_weights(R, C, rf)
    tan_mean, tan_var = port_mean_var(W, R, C)  # calculate tangency portfolio
    front_mean, front_var, front_weights = solve_frontier(R, C, rf)  # calculate efficient frontier
    # Weights, Tangency portfolio asset means and variances, Efficient frontier means and variances
    return Result(W, tan_mean, tan_var, front_mean, front_var, front_weights)

def display_assets(names, R, C, color='black'):
    scatter([C[i, i] ** .5 for i in range(n)], R, marker='x', color=color), grid(True)  # draw assets
    for i in range(n): 
        text(C[i, i] ** .5, R[i], '  %s' % names[i], verticalalignment='center', color=color) # draw labels

def display_frontier(result: Result, label=None, color='black'):
    from collections import defaultdict
    from IPython.core.display import HTML
    text(result.tan_var ** .5, result.tan_mean, '   tangent', verticalalignment='center', color=color)
    scatter(result.tan_var ** .5, result.tan_mean, marker='o', color=color), grid(True)
    plot(list(result.front_var ** .5), list(result.front_mean), label=label, color=color), grid(True)  # draw efficient frontier
    
    table = defaultdict(list)
    for mean, var, weights in zip(result.front_mean, result.front_var, result.front_weights):
        table['Mean'].append(mean)
        table['Variance'].append(var)
        for name, weight in zip(names, weights):
            table[name].append(weight)
    display(HTML(f'<b>Efficient frontier portfolios ({label})</b>'), DataFrame(table))
```

# Load historical prices

```python
# Function loads historical stock prices of nine major S&P companies and returns them together
# with their market capitalizations, as of 2013-07-01
def load_data():
    symbols = ['XOM', 'AAPL', 'MSFT', 'JNJ', 'GE', 'GOOG', 'CVX', 'PG', 'WFC']
    cap = {'XOM': 403.02e9, 'AAPL': 392.90e9, 'MSFT': 283.60e9, 'JNJ': 243.17e9, 'GE': 236.79e9,
           'GOOG': 292.72e9, 'CVX': 231.03e9, 'PG': 214.99e9, 'WFC': 218.79e9}
    n = len(symbols)
    prices_out, caps_out = [], []
    for s in symbols:
        dataframe = pandas.read_csv('data/%s.csv' % s, index_col=None, parse_dates=['date'])
        prices = list(dataframe['close'])[-500:] # trailing window 500 days
        prices_out.append(prices)
        caps_out.append(cap[s])
    return symbols, prices_out, caps_out

names, prices, caps = load_data()
n = len(names)
```

# Estimate assets historical return and covariances

```python
# Function takes historical stock prices together with market capitalizations and
# calculates weights, historical returns and historical covariances
def assets_historical_returns_and_covariances(prices):
    prices = matrix(prices)  # create numpy matrix from prices
    # create matrix of historical returns
    rows, cols = prices.shape
    returns = empty([rows, cols - 1])
    for r in range(rows):
        for c in range(cols - 1):
            p0, p1 = prices[r, c], prices[r, c + 1]
            returns[r, c] = (p1 / p0) - 1
    # calculate returns
    expreturns = array([])
    for r in range(rows):
        expreturns = append(expreturns, numpy.mean(returns[r]))
    # calculate covariances
    covars = cov(returns)
    expreturns = (1 + expreturns) ** 250 - 1  # Annualize returns
    covars = covars * 250  # Annualize covariances
    return expreturns, covars

W = array(caps) / sum(caps) # calculate market weights from capitalizations
R, C = assets_historical_returns_and_covariances(prices)
rf = .015  # Risk-free rate
```

## Asset returns and weights

```python
display(pandas.DataFrame({'Return': R, 'Weight (based on market cap)': W}, index=names).T)
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
	  <th>XOM</th>
	  <th>AAPL</th>
	  <th>MSFT</th>
	  <th>JNJ</th>
	  <th>GE</th>
	  <th>GOOG</th>
	  <th>CVX</th>
	  <th>PG</th>
	  <th>WFC</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Return</th>
	  <td>0.072993</td>
	  <td>0.129536</td>
	  <td>0.172047</td>
	  <td>0.143764</td>
	  <td>0.140385</td>
	  <td>0.331958</td>
	  <td>0.092131</td>
	  <td>0.112222</td>
	  <td>0.268935</td>
	</tr>
	<tr>
	  <th>Weight (based on market cap)</th>
	  <td>0.160119</td>
	  <td>0.156098</td>
	  <td>0.112673</td>
	  <td>0.096611</td>
	  <td>0.094076</td>
	  <td>0.116297</td>
	  <td>0.091787</td>
	  <td>0.085415</td>
	  <td>0.086925</td>
	</tr>
  </tbody>
</table>
</div>

## Asset covariances

```python
display(pandas.DataFrame(C, columns=names, index=names))
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
	  <th>XOM</th>
	  <th>AAPL</th>
	  <th>MSFT</th>
	  <th>JNJ</th>
	  <th>GE</th>
	  <th>GOOG</th>
	  <th>CVX</th>
	  <th>PG</th>
	  <th>WFC</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>XOM</th>
	  <td>0.039015</td>
	  <td>0.022296</td>
	  <td>0.027982</td>
	  <td>0.019595</td>
	  <td>0.036647</td>
	  <td>0.026728</td>
	  <td>0.038245</td>
	  <td>0.018216</td>
	  <td>0.042972</td>
	</tr>
	<tr>
	  <th>AAPL</th>
	  <td>0.022296</td>
	  <td>0.091844</td>
	  <td>0.024599</td>
	  <td>0.011578</td>
	  <td>0.027814</td>
	  <td>0.033249</td>
	  <td>0.028240</td>
	  <td>0.011532</td>
	  <td>0.036756</td>
	</tr>
	<tr>
	  <th>MSFT</th>
	  <td>0.027982</td>
	  <td>0.024599</td>
	  <td>0.051014</td>
	  <td>0.016842</td>
	  <td>0.032649</td>
	  <td>0.026231</td>
	  <td>0.030815</td>
	  <td>0.013724</td>
	  <td>0.040321</td>
	</tr>
	<tr>
	  <th>JNJ</th>
	  <td>0.019595</td>
	  <td>0.011578</td>
	  <td>0.016842</td>
	  <td>0.019456</td>
	  <td>0.021048</td>
	  <td>0.015547</td>
	  <td>0.021005</td>
	  <td>0.013196</td>
	  <td>0.026861</td>
	</tr>
	<tr>
	  <th>GE</th>
	  <td>0.036647</td>
	  <td>0.027814</td>
	  <td>0.032649</td>
	  <td>0.021048</td>
	  <td>0.059233</td>
	  <td>0.031083</td>
	  <td>0.040677</td>
	  <td>0.019377</td>
	  <td>0.053928</td>
	</tr>
	<tr>
	  <th>GOOG</th>
	  <td>0.026728</td>
	  <td>0.033249</td>
	  <td>0.026231</td>
	  <td>0.015547</td>
	  <td>0.031083</td>
	  <td>0.066899</td>
	  <td>0.030258</td>
	  <td>0.015123</td>
	  <td>0.039019</td>
	</tr>
	<tr>
	  <th>CVX</th>
	  <td>0.038245</td>
	  <td>0.028240</td>
	  <td>0.030815</td>
	  <td>0.021005</td>
	  <td>0.040677</td>
	  <td>0.030258</td>
	  <td>0.050857</td>
	  <td>0.019587</td>
	  <td>0.048326</td>
	</tr>
	<tr>
	  <th>PG</th>
	  <td>0.018216</td>
	  <td>0.011532</td>
	  <td>0.013724</td>
	  <td>0.013196</td>
	  <td>0.019377</td>
	  <td>0.015123</td>
	  <td>0.019587</td>
	  <td>0.025152</td>
	  <td>0.022479</td>
	</tr>
	<tr>
	  <th>WFC</th>
	  <td>0.042972</td>
	  <td>0.036756</td>
	  <td>0.040321</td>
	  <td>0.026861</td>
	  <td>0.053928</td>
	  <td>0.039019</td>
	  <td>0.048326</td>
	  <td>0.022479</td>
	  <td>0.089826</td>
	</tr>
  </tbody>
</table>
</div>

# Mean-Variance Optimization (based on historical returns)

```python
res1 = optimize_frontier(R, C, rf)

display_assets(names, R, C, color='blue')
display_frontier(res1, color='blue')
xlabel('variance $\sigma$'), ylabel('mean $\mu$'), show()
display(pandas.DataFrame({'Weight': res1.W}, index=names).T)
```

<b>Efficient frontier portfolios (None)</b>

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
	  <th>Variance</th>
	  <th>XOM</th>
	  <th>AAPL</th>
	  <th>MSFT</th>
	  <th>JNJ</th>
	  <th>GE</th>
	  <th>GOOG</th>
	  <th>CVX</th>
	  <th>PG</th>
	  <th>WFC</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>0.072993</td>
	  <td>0.039015</td>
	  <td>1.000000e+00</td>
	  <td>6.605827e-13</td>
	  <td>0.000000e+00</td>
	  <td>3.141376e-13</td>
	  <td>3.582690e-13</td>
	  <td>0.000000e+00</td>
	  <td>1.133815e-12</td>
	  <td>8.088530e-13</td>
	  <td>0.000000e+00</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>0.086623</td>
	  <td>0.027910</td>
	  <td>6.525565e-01</td>
	  <td>2.363184e-17</td>
	  <td>3.405714e-18</td>
	  <td>1.841766e-17</td>
	  <td>1.901316e-18</td>
	  <td>1.167118e-17</td>
	  <td>2.654257e-18</td>
	  <td>3.474435e-01</td>
	  <td>4.806893e-18</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>0.100252</td>
	  <td>0.022646</td>
	  <td>3.905888e-01</td>
	  <td>3.103508e-02</td>
	  <td>4.978460e-18</td>
	  <td>8.926890e-02</td>
	  <td>3.042872e-20</td>
	  <td>1.098676e-17</td>
	  <td>1.901795e-20</td>
	  <td>4.891072e-01</td>
	  <td>8.118196e-18</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>0.113882</td>
	  <td>0.019316</td>
	  <td>2.308191e-01</td>
	  <td>4.236332e-02</td>
	  <td>2.346708e-19</td>
	  <td>3.164565e-01</td>
	  <td>1.737696e-18</td>
	  <td>9.872993e-18</td>
	  <td>1.464824e-19</td>
	  <td>4.103611e-01</td>
	  <td>9.792957e-18</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>0.127512</td>
	  <td>0.017275</td>
	  <td>3.965620e-02</td>
	  <td>6.477813e-02</td>
	  <td>1.108916e-17</td>
	  <td>4.985158e-01</td>
	  <td>1.896963e-18</td>
	  <td>2.120003e-18</td>
	  <td>0.000000e+00</td>
	  <td>3.970499e-01</td>
	  <td>0.000000e+00</td>
	</tr>
	<tr>
	  <th>5</th>
	  <td>0.141142</td>
	  <td>0.016978</td>
	  <td>0.000000e+00</td>
	  <td>5.848682e-02</td>
	  <td>4.503920e-03</td>
	  <td>5.812926e-01</td>
	  <td>8.145282e-18</td>
	  <td>4.233513e-02</td>
	  <td>3.130890e-18</td>
	  <td>3.133816e-01</td>
	  <td>2.138625e-18</td>
	</tr>
	<tr>
	  <th>6</th>
	  <td>0.154772</td>
	  <td>0.017387</td>
	  <td>2.371734e-18</td>
	  <td>3.475954e-02</td>
	  <td>1.679852e-02</td>
	  <td>5.931626e-01</td>
	  <td>1.335224e-18</td>
	  <td>1.011812e-01</td>
	  <td>7.225629e-18</td>
	  <td>2.540982e-01</td>
	  <td>4.503802e-18</td>
	</tr>
	<tr>
	  <th>7</th>
	  <td>0.168401</td>
	  <td>0.018219</td>
	  <td>5.978518e-18</td>
	  <td>1.770513e-02</td>
	  <td>1.377093e-02</td>
	  <td>5.849041e-01</td>
	  <td>5.882937e-18</td>
	  <td>1.665624e-01</td>
	  <td>5.935921e-19</td>
	  <td>2.170574e-01</td>
	  <td>3.941488e-18</td>
	</tr>
	<tr>
	  <th>8</th>
	  <td>0.182031</td>
	  <td>0.019465</td>
	  <td>3.927876e-18</td>
	  <td>1.896766e-18</td>
	  <td>1.245047e-02</td>
	  <td>5.866994e-01</td>
	  <td>1.131373e-17</td>
	  <td>2.300870e-01</td>
	  <td>3.392016e-18</td>
	  <td>1.707632e-01</td>
	  <td>2.925335e-18</td>
	</tr>
	<tr>
	  <th>9</th>
	  <td>0.195661</td>
	  <td>0.021152</td>
	  <td>0.000000e+00</td>
	  <td>1.439495e-23</td>
	  <td>7.590878e-03</td>
	  <td>5.726037e-01</td>
	  <td>7.594778e-24</td>
	  <td>2.954611e-01</td>
	  <td>6.247377e-24</td>
	  <td>1.243443e-01</td>
	  <td>2.499182e-18</td>
	</tr>
	<tr>
	  <th>10</th>
	  <td>0.209291</td>
	  <td>0.023308</td>
	  <td>3.079765e-17</td>
	  <td>6.099945e-18</td>
	  <td>1.367477e-05</td>
	  <td>5.527880e-01</td>
	  <td>3.878935e-17</td>
	  <td>3.623962e-01</td>
	  <td>1.406374e-17</td>
	  <td>8.480212e-02</td>
	  <td>7.699413e-18</td>
	</tr>
	<tr>
	  <th>11</th>
	  <td>0.222920</td>
	  <td>0.025929</td>
	  <td>0.000000e+00</td>
	  <td>0.000000e+00</td>
	  <td>4.226308e-05</td>
	  <td>5.490308e-01</td>
	  <td>4.499492e-22</td>
	  <td>4.249554e-01</td>
	  <td>0.000000e+00</td>
	  <td>2.597150e-02</td>
	  <td>8.422707e-19</td>
	</tr>
	<tr>
	  <th>12</th>
	  <td>0.236550</td>
	  <td>0.029762</td>
	  <td>1.439719e-18</td>
	  <td>1.482016e-18</td>
	  <td>0.000000e+00</td>
	  <td>3.083295e-01</td>
	  <td>8.482538e-18</td>
	  <td>5.018505e-01</td>
	  <td>4.700375e-18</td>
	  <td>1.622029e-01</td>
	  <td>2.761709e-02</td>
	</tr>
	<tr>
	  <th>13</th>
	  <td>0.250180</td>
	  <td>0.032655</td>
	  <td>0.000000e+00</td>
	  <td>8.017315e-17</td>
	  <td>3.987843e-17</td>
	  <td>4.247483e-01</td>
	  <td>1.664928e-17</td>
	  <td>5.460028e-01</td>
	  <td>2.387088e-18</td>
	  <td>7.550715e-17</td>
	  <td>2.924890e-02</td>
	</tr>
	<tr>
	  <th>14</th>
	  <td>0.263810</td>
	  <td>0.036782</td>
	  <td>1.565586e-17</td>
	  <td>0.000000e+00</td>
	  <td>1.194882e-17</td>
	  <td>3.422647e-01</td>
	  <td>1.290206e-21</td>
	  <td>5.984472e-01</td>
	  <td>2.540037e-18</td>
	  <td>0.000000e+00</td>
	  <td>5.928809e-02</td>
	</tr>
	<tr>
	  <th>15</th>
	  <td>0.277439</td>
	  <td>0.041408</td>
	  <td>0.000000e+00</td>
	  <td>3.291318e-23</td>
	  <td>5.418230e-18</td>
	  <td>2.628227e-01</td>
	  <td>2.829988e-18</td>
	  <td>6.569326e-01</td>
	  <td>1.026260e-17</td>
	  <td>3.211074e-23</td>
	  <td>8.024470e-02</td>
	</tr>
	<tr>
	  <th>16</th>
	  <td>0.291069</td>
	  <td>0.046540</td>
	  <td>2.871716e-18</td>
	  <td>0.000000e+00</td>
	  <td>0.000000e+00</td>
	  <td>1.819857e-01</td>
	  <td>2.664665e-17</td>
	  <td>7.126474e-01</td>
	  <td>1.012874e-17</td>
	  <td>0.000000e+00</td>
	  <td>1.053669e-01</td>
	</tr>
	<tr>
	  <th>17</th>
	  <td>0.304699</td>
	  <td>0.052174</td>
	  <td>1.283681e-17</td>
	  <td>0.000000e+00</td>
	  <td>4.854352e-18</td>
	  <td>1.004125e-01</td>
	  <td>1.137038e-18</td>
	  <td>7.668999e-01</td>
	  <td>2.928380e-18</td>
	  <td>3.814548e-19</td>
	  <td>1.326876e-01</td>
	</tr>
	<tr>
	  <th>18</th>
	  <td>0.318329</td>
	  <td>0.058312</td>
	  <td>1.015719e-17</td>
	  <td>7.070833e-15</td>
	  <td>3.775496e-14</td>
	  <td>1.946389e-02</td>
	  <td>1.508271e-18</td>
	  <td>8.223928e-01</td>
	  <td>6.611768e-18</td>
	  <td>2.871746e-15</td>
	  <td>1.581433e-01</td>
	</tr>
	<tr>
	  <th>19</th>
	  <td>0.331958</td>
	  <td>0.066899</td>
	  <td>4.251417e-08</td>
	  <td>4.635107e-08</td>
	  <td>6.506771e-08</td>
	  <td>8.061016e-08</td>
	  <td>4.699746e-08</td>
	  <td>9.999995e-01</td>
	  <td>3.907994e-08</td>
	  <td>7.501951e-08</td>
	  <td>5.800526e-08</td>
	</tr>
  </tbody>
</table>
</div>

![png](output_17_2.png)

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
	  <th>XOM</th>
	  <th>AAPL</th>
	  <th>MSFT</th>
	  <th>JNJ</th>
	  <th>GE</th>
	  <th>GOOG</th>
	  <th>CVX</th>
	  <th>PG</th>
	  <th>WFC</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Weight</th>
	  <td>2.558717e-17</td>
	  <td>1.867040e-16</td>
	  <td>6.653880e-18</td>
	  <td>0.450921</td>
	  <td>6.162285e-17</td>
	  <td>0.528356</td>
	  <td>0.0</td>
	  <td>0.0</td>
	  <td>0.020723</td>
	</tr>
  </tbody>
</table>
</div>

# Black-litterman reverse optimization

```python
# Calculate portfolio historical return and variance
mean, var = port_mean_var(W, R, C)

lmb = (mean - rf) / var  # Calculate risk aversion
Pi = dot(dot(lmb, C), W)  # Calculate equilibrium excess returns
```

## Mean-variance Optimization (based on equilibrium returns)

```python
res2 = optimize_frontier(Pi+rf, C, rf)

display_assets(names, R, C, color='red')
display_frontier(res1, label='Historical returns', color='red')
display_assets(names, Pi+rf, C, color='green')
display_frontier(res2, label='Implied returns', color='green')
xlabel('variance $\sigma$'), ylabel('mean $\mu$'), legend(), show()
display(pandas.DataFrame({'Weight': res2.W}, index=names).T)
```

<b>Efficient frontier portfolios (Historical returns)</b>

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
	  <th>Variance</th>
	  <th>XOM</th>
	  <th>AAPL</th>
	  <th>MSFT</th>
	  <th>JNJ</th>
	  <th>GE</th>
	  <th>GOOG</th>
	  <th>CVX</th>
	  <th>PG</th>
	  <th>WFC</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>0.072993</td>
	  <td>0.039015</td>
	  <td>1.000000e+00</td>
	  <td>6.605827e-13</td>
	  <td>0.000000e+00</td>
	  <td>3.141376e-13</td>
	  <td>3.582690e-13</td>
	  <td>0.000000e+00</td>
	  <td>1.133815e-12</td>
	  <td>8.088530e-13</td>
	  <td>0.000000e+00</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>0.086623</td>
	  <td>0.027910</td>
	  <td>6.525565e-01</td>
	  <td>2.363184e-17</td>
	  <td>3.405714e-18</td>
	  <td>1.841766e-17</td>
	  <td>1.901316e-18</td>
	  <td>1.167118e-17</td>
	  <td>2.654257e-18</td>
	  <td>3.474435e-01</td>
	  <td>4.806893e-18</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>0.100252</td>
	  <td>0.022646</td>
	  <td>3.905888e-01</td>
	  <td>3.103508e-02</td>
	  <td>4.978460e-18</td>
	  <td>8.926890e-02</td>
	  <td>3.042872e-20</td>
	  <td>1.098676e-17</td>
	  <td>1.901795e-20</td>
	  <td>4.891072e-01</td>
	  <td>8.118196e-18</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>0.113882</td>
	  <td>0.019316</td>
	  <td>2.308191e-01</td>
	  <td>4.236332e-02</td>
	  <td>2.346708e-19</td>
	  <td>3.164565e-01</td>
	  <td>1.737696e-18</td>
	  <td>9.872993e-18</td>
	  <td>1.464824e-19</td>
	  <td>4.103611e-01</td>
	  <td>9.792957e-18</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>0.127512</td>
	  <td>0.017275</td>
	  <td>3.965620e-02</td>
	  <td>6.477813e-02</td>
	  <td>1.108916e-17</td>
	  <td>4.985158e-01</td>
	  <td>1.896963e-18</td>
	  <td>2.120003e-18</td>
	  <td>0.000000e+00</td>
	  <td>3.970499e-01</td>
	  <td>0.000000e+00</td>
	</tr>
	<tr>
	  <th>5</th>
	  <td>0.141142</td>
	  <td>0.016978</td>
	  <td>0.000000e+00</td>
	  <td>5.848682e-02</td>
	  <td>4.503920e-03</td>
	  <td>5.812926e-01</td>
	  <td>8.145282e-18</td>
	  <td>4.233513e-02</td>
	  <td>3.130890e-18</td>
	  <td>3.133816e-01</td>
	  <td>2.138625e-18</td>
	</tr>
	<tr>
	  <th>6</th>
	  <td>0.154772</td>
	  <td>0.017387</td>
	  <td>2.371734e-18</td>
	  <td>3.475954e-02</td>
	  <td>1.679852e-02</td>
	  <td>5.931626e-01</td>
	  <td>1.335224e-18</td>
	  <td>1.011812e-01</td>
	  <td>7.225629e-18</td>
	  <td>2.540982e-01</td>
	  <td>4.503802e-18</td>
	</tr>
	<tr>
	  <th>7</th>
	  <td>0.168401</td>
	  <td>0.018219</td>
	  <td>5.978518e-18</td>
	  <td>1.770513e-02</td>
	  <td>1.377093e-02</td>
	  <td>5.849041e-01</td>
	  <td>5.882937e-18</td>
	  <td>1.665624e-01</td>
	  <td>5.935921e-19</td>
	  <td>2.170574e-01</td>
	  <td>3.941488e-18</td>
	</tr>
	<tr>
	  <th>8</th>
	  <td>0.182031</td>
	  <td>0.019465</td>
	  <td>3.927876e-18</td>
	  <td>1.896766e-18</td>
	  <td>1.245047e-02</td>
	  <td>5.866994e-01</td>
	  <td>1.131373e-17</td>
	  <td>2.300870e-01</td>
	  <td>3.392016e-18</td>
	  <td>1.707632e-01</td>
	  <td>2.925335e-18</td>
	</tr>
	<tr>
	  <th>9</th>
	  <td>0.195661</td>
	  <td>0.021152</td>
	  <td>0.000000e+00</td>
	  <td>1.439495e-23</td>
	  <td>7.590878e-03</td>
	  <td>5.726037e-01</td>
	  <td>7.594778e-24</td>
	  <td>2.954611e-01</td>
	  <td>6.247377e-24</td>
	  <td>1.243443e-01</td>
	  <td>2.499182e-18</td>
	</tr>
	<tr>
	  <th>10</th>
	  <td>0.209291</td>
	  <td>0.023308</td>
	  <td>3.079765e-17</td>
	  <td>6.099945e-18</td>
	  <td>1.367477e-05</td>
	  <td>5.527880e-01</td>
	  <td>3.878935e-17</td>
	  <td>3.623962e-01</td>
	  <td>1.406374e-17</td>
	  <td>8.480212e-02</td>
	  <td>7.699413e-18</td>
	</tr>
	<tr>
	  <th>11</th>
	  <td>0.222920</td>
	  <td>0.025929</td>
	  <td>0.000000e+00</td>
	  <td>0.000000e+00</td>
	  <td>4.226308e-05</td>
	  <td>5.490308e-01</td>
	  <td>4.499492e-22</td>
	  <td>4.249554e-01</td>
	  <td>0.000000e+00</td>
	  <td>2.597150e-02</td>
	  <td>8.422707e-19</td>
	</tr>
	<tr>
	  <th>12</th>
	  <td>0.236550</td>
	  <td>0.029762</td>
	  <td>1.439719e-18</td>
	  <td>1.482016e-18</td>
	  <td>0.000000e+00</td>
	  <td>3.083295e-01</td>
	  <td>8.482538e-18</td>
	  <td>5.018505e-01</td>
	  <td>4.700375e-18</td>
	  <td>1.622029e-01</td>
	  <td>2.761709e-02</td>
	</tr>
	<tr>
	  <th>13</th>
	  <td>0.250180</td>
	  <td>0.032655</td>
	  <td>0.000000e+00</td>
	  <td>8.017315e-17</td>
	  <td>3.987843e-17</td>
	  <td>4.247483e-01</td>
	  <td>1.664928e-17</td>
	  <td>5.460028e-01</td>
	  <td>2.387088e-18</td>
	  <td>7.550715e-17</td>
	  <td>2.924890e-02</td>
	</tr>
	<tr>
	  <th>14</th>
	  <td>0.263810</td>
	  <td>0.036782</td>
	  <td>1.565586e-17</td>
	  <td>0.000000e+00</td>
	  <td>1.194882e-17</td>
	  <td>3.422647e-01</td>
	  <td>1.290206e-21</td>
	  <td>5.984472e-01</td>
	  <td>2.540037e-18</td>
	  <td>0.000000e+00</td>
	  <td>5.928809e-02</td>
	</tr>
	<tr>
	  <th>15</th>
	  <td>0.277439</td>
	  <td>0.041408</td>
	  <td>0.000000e+00</td>
	  <td>3.291318e-23</td>
	  <td>5.418230e-18</td>
	  <td>2.628227e-01</td>
	  <td>2.829988e-18</td>
	  <td>6.569326e-01</td>
	  <td>1.026260e-17</td>
	  <td>3.211074e-23</td>
	  <td>8.024470e-02</td>
	</tr>
	<tr>
	  <th>16</th>
	  <td>0.291069</td>
	  <td>0.046540</td>
	  <td>2.871716e-18</td>
	  <td>0.000000e+00</td>
	  <td>0.000000e+00</td>
	  <td>1.819857e-01</td>
	  <td>2.664665e-17</td>
	  <td>7.126474e-01</td>
	  <td>1.012874e-17</td>
	  <td>0.000000e+00</td>
	  <td>1.053669e-01</td>
	</tr>
	<tr>
	  <th>17</th>
	  <td>0.304699</td>
	  <td>0.052174</td>
	  <td>1.283681e-17</td>
	  <td>0.000000e+00</td>
	  <td>4.854352e-18</td>
	  <td>1.004125e-01</td>
	  <td>1.137038e-18</td>
	  <td>7.668999e-01</td>
	  <td>2.928380e-18</td>
	  <td>3.814548e-19</td>
	  <td>1.326876e-01</td>
	</tr>
	<tr>
	  <th>18</th>
	  <td>0.318329</td>
	  <td>0.058312</td>
	  <td>1.015719e-17</td>
	  <td>7.070833e-15</td>
	  <td>3.775496e-14</td>
	  <td>1.946389e-02</td>
	  <td>1.508271e-18</td>
	  <td>8.223928e-01</td>
	  <td>6.611768e-18</td>
	  <td>2.871746e-15</td>
	  <td>1.581433e-01</td>
	</tr>
	<tr>
	  <th>19</th>
	  <td>0.331958</td>
	  <td>0.066899</td>
	  <td>4.251417e-08</td>
	  <td>4.635107e-08</td>
	  <td>6.506771e-08</td>
	  <td>8.061016e-08</td>
	  <td>4.699746e-08</td>
	  <td>9.999995e-01</td>
	  <td>3.907994e-08</td>
	  <td>7.501951e-08</td>
	  <td>5.800526e-08</td>
	</tr>
  </tbody>
</table>
</div>

<b>Efficient frontier portfolios (Implied returns)</b>

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
	  <th>Variance</th>
	  <th>XOM</th>
	  <th>AAPL</th>
	  <th>MSFT</th>
	  <th>JNJ</th>
	  <th>GE</th>
	  <th>GOOG</th>
	  <th>CVX</th>
	  <th>PG</th>
	  <th>WFC</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>0.094449</td>
	  <td>0.025152</td>
	  <td>2.688679e-13</td>
	  <td>3.684896e-13</td>
	  <td>2.354618e-13</td>
	  <td>0.000000e+00</td>
	  <td>3.612019e-13</td>
	  <td>2.932892e-13</td>
	  <td>3.474916e-13</td>
	  <td>1.000000e+00</td>
	  <td>5.184776e-13</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>0.100962</td>
	  <td>0.016955</td>
	  <td>5.232301e-18</td>
	  <td>4.707560e-02</td>
	  <td>8.690901e-19</td>
	  <td>6.207429e-01</td>
	  <td>4.466003e-19</td>
	  <td>0.000000e+00</td>
	  <td>8.600506e-18</td>
	  <td>3.321815e-01</td>
	  <td>3.247302e-21</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>0.107475</td>
	  <td>0.017038</td>
	  <td>2.446140e-22</td>
	  <td>6.831925e-02</td>
	  <td>6.285302e-02</td>
	  <td>5.477418e-01</td>
	  <td>3.326860e-18</td>
	  <td>2.011851e-02</td>
	  <td>1.168735e-17</td>
	  <td>3.009674e-01</td>
	  <td>0.000000e+00</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>0.113988</td>
	  <td>0.017640</td>
	  <td>4.577372e-18</td>
	  <td>1.003800e-01</td>
	  <td>8.553522e-02</td>
	  <td>4.903010e-01</td>
	  <td>2.255694e-18</td>
	  <td>5.917637e-02</td>
	  <td>2.140373e-18</td>
	  <td>2.646074e-01</td>
	  <td>3.120910e-18</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>0.120502</td>
	  <td>0.018727</td>
	  <td>5.054064e-02</td>
	  <td>1.140052e-01</td>
	  <td>9.717350e-02</td>
	  <td>4.273017e-01</td>
	  <td>8.930760e-03</td>
	  <td>7.490239e-02</td>
	  <td>9.545540e-19</td>
	  <td>2.271458e-01</td>
	  <td>1.227673e-14</td>
	</tr>
	<tr>
	  <th>5</th>
	  <td>0.127015</td>
	  <td>0.020136</td>
	  <td>9.595944e-02</td>
	  <td>1.242327e-01</td>
	  <td>1.050817e-01</td>
	  <td>3.620156e-01</td>
	  <td>3.346186e-02</td>
	  <td>8.220754e-02</td>
	  <td>1.175174e-03</td>
	  <td>1.958660e-01</td>
	  <td>9.457389e-19</td>
	</tr>
	<tr>
	  <th>6</th>
	  <td>0.133528</td>
	  <td>0.021847</td>
	  <td>1.101281e-01</td>
	  <td>1.328644e-01</td>
	  <td>1.106079e-01</td>
	  <td>3.009300e-01</td>
	  <td>5.354068e-02</td>
	  <td>9.163221e-02</td>
	  <td>2.599307e-02</td>
	  <td>1.700240e-01</td>
	  <td>4.279642e-03</td>
	</tr>
	<tr>
	  <th>7</th>
	  <td>0.140042</td>
	  <td>0.023824</td>
	  <td>1.231823e-01</td>
	  <td>1.397345e-01</td>
	  <td>1.108296e-01</td>
	  <td>2.488715e-01</td>
	  <td>6.945712e-02</td>
	  <td>9.589058e-02</td>
	  <td>4.862578e-02</td>
	  <td>1.437559e-01</td>
	  <td>1.965272e-02</td>
	</tr>
	<tr>
	  <th>8</th>
	  <td>0.146555</td>
	  <td>0.026086</td>
	  <td>1.037317e-01</td>
	  <td>1.473956e-01</td>
	  <td>1.141107e-01</td>
	  <td>1.599514e-01</td>
	  <td>7.743907e-02</td>
	  <td>1.079419e-01</td>
	  <td>8.077350e-02</td>
	  <td>1.633485e-01</td>
	  <td>4.530764e-02</td>
	</tr>
	<tr>
	  <th>9</th>
	  <td>0.153068</td>
	  <td>0.028537</td>
	  <td>1.097743e-01</td>
	  <td>1.518745e-01</td>
	  <td>1.123424e-01</td>
	  <td>1.269891e-01</td>
	  <td>9.027073e-02</td>
	  <td>1.138526e-01</td>
	  <td>9.616011e-02</td>
	  <td>1.268782e-01</td>
	  <td>7.185799e-02</td>
	</tr>
	<tr>
	  <th>10</th>
	  <td>0.159582</td>
	  <td>0.031551</td>
	  <td>1.067632e-01</td>
	  <td>1.067632e-01</td>
	  <td>1.067632e-01</td>
	  <td>1.067632e-01</td>
	  <td>1.067632e-01</td>
	  <td>1.067632e-01</td>
	  <td>1.067632e-01</td>
	  <td>1.067632e-01</td>
	  <td>1.458941e-01</td>
	</tr>
	<tr>
	  <th>11</th>
	  <td>0.166095</td>
	  <td>0.034199</td>
	  <td>1.374664e-01</td>
	  <td>1.591048e-01</td>
	  <td>1.169407e-01</td>
	  <td>4.609925e-02</td>
	  <td>1.176756e-01</td>
	  <td>1.240747e-01</td>
	  <td>1.339557e-01</td>
	  <td>5.430678e-02</td>
	  <td>1.103761e-01</td>
	</tr>
	<tr>
	  <th>12</th>
	  <td>0.172608</td>
	  <td>0.037404</td>
	  <td>1.460909e-01</td>
	  <td>1.716512e-01</td>
	  <td>1.162922e-01</td>
	  <td>1.262296e-12</td>
	  <td>1.267793e-01</td>
	  <td>1.323194e-01</td>
	  <td>1.503665e-01</td>
	  <td>2.584738e-02</td>
	  <td>1.306531e-01</td>
	</tr>
	<tr>
	  <th>13</th>
	  <td>0.179122</td>
	  <td>0.040993</td>
	  <td>1.165405e-01</td>
	  <td>1.787688e-01</td>
	  <td>8.584953e-02</td>
	  <td>4.007141e-14</td>
	  <td>1.310855e-01</td>
	  <td>1.269985e-01</td>
	  <td>1.590046e-01</td>
	  <td>4.200999e-14</td>
	  <td>2.017526e-01</td>
	</tr>
	<tr>
	  <th>14</th>
	  <td>0.185635</td>
	  <td>0.045509</td>
	  <td>7.792838e-02</td>
	  <td>1.779973e-01</td>
	  <td>7.137264e-02</td>
	  <td>0.000000e+00</td>
	  <td>1.089662e-01</td>
	  <td>1.198822e-01</td>
	  <td>1.174162e-01</td>
	  <td>2.865935e-18</td>
	  <td>3.264371e-01</td>
	</tr>
	<tr>
	  <th>15</th>
	  <td>0.192148</td>
	  <td>0.050605</td>
	  <td>0.000000e+00</td>
	  <td>1.904286e-01</td>
	  <td>2.678544e-18</td>
	  <td>0.000000e+00</td>
	  <td>1.341001e-01</td>
	  <td>1.077932e-01</td>
	  <td>1.679997e-01</td>
	  <td>1.678742e-17</td>
	  <td>3.996784e-01</td>
	</tr>
	<tr>
	  <th>16</th>
	  <td>0.198662</td>
	  <td>0.057259</td>
	  <td>8.624974e-18</td>
	  <td>2.017179e-01</td>
	  <td>0.000000e+00</td>
	  <td>0.000000e+00</td>
	  <td>8.796806e-02</td>
	  <td>6.263007e-02</td>
	  <td>1.066675e-01</td>
	  <td>6.099970e-18</td>
	  <td>5.410165e-01</td>
	</tr>
	<tr>
	  <th>17</th>
	  <td>0.205175</td>
	  <td>0.065441</td>
	  <td>1.233155e-18</td>
	  <td>2.006686e-01</td>
	  <td>9.356339e-20</td>
	  <td>1.625784e-18</td>
	  <td>3.669004e-02</td>
	  <td>3.410645e-02</td>
	  <td>4.088447e-02</td>
	  <td>0.000000e+00</td>
	  <td>6.876505e-01</td>
	</tr>
	<tr>
	  <th>18</th>
	  <td>0.211688</td>
	  <td>0.075288</td>
	  <td>1.829508e-17</td>
	  <td>1.645697e-01</td>
	  <td>1.308653e-17</td>
	  <td>4.714145e-18</td>
	  <td>9.901813e-19</td>
	  <td>3.575762e-19</td>
	  <td>2.814627e-18</td>
	  <td>0.000000e+00</td>
	  <td>8.354303e-01</td>
	</tr>
	<tr>
	  <th>19</th>
	  <td>0.218202</td>
	  <td>0.089826</td>
	  <td>7.144935e-08</td>
	  <td>1.012045e-07</td>
	  <td>7.124048e-08</td>
	  <td>4.077819e-08</td>
	  <td>7.852001e-08</td>
	  <td>8.419174e-08</td>
	  <td>8.013892e-08</td>
	  <td>4.202357e-08</td>
	  <td>9.999994e-01</td>
	</tr>
  </tbody>
</table>
</div>

![png](output_21_4.png)

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
	  <th>XOM</th>
	  <th>AAPL</th>
	  <th>MSFT</th>
	  <th>JNJ</th>
	  <th>GE</th>
	  <th>GOOG</th>
	  <th>CVX</th>
	  <th>PG</th>
	  <th>WFC</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Weight</th>
	  <td>0.160429</td>
	  <td>0.15617</td>
	  <td>0.112453</td>
	  <td>0.097424</td>
	  <td>0.093807</td>
	  <td>0.116209</td>
	  <td>0.091813</td>
	  <td>0.084692</td>
	  <td>0.087002</td>
	</tr>
  </tbody>
</table>
</div>

## Determine views to the equilibrium returns and prepare views (Q) and link (P) matrices

```python
def create_views_and_link_matrix(names, views):
    r, c = len(views), len(names)
    Q = [views[i][3] for i in range(r)]  # view matrix
    P = zeros([r, c])
    nameToIndex = dict()
    for i, n in enumerate(names):
        nameToIndex[n] = i
    for i, v in enumerate(views):
        name1, name2 = views[i][0], views[i][2]
        P[i, nameToIndex[name1]] = +1 if views[i][1] == '>' else -1
        P[i, nameToIndex[name2]] = -1 if views[i][1] == '>' else +1
    return array(Q), P

views = [('MSFT', '>', 'GE', 0.02),
         ('AAPL', '<', 'JNJ', 0.02)]

Q, P = create_views_and_link_matrix(names, views)
print('Views Matrix')
display(DataFrame({'Views':Q}))
print('Link Matrix')
display(DataFrame(P))
```

    Views Matrix

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
	  <th>Views</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>0.02</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>0.02</td>
	</tr>
  </tbody>
</table>
</div>

    Link Matrix

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
	  <th>0</th>
	  <th>1</th>
	  <th>2</th>
	  <th>3</th>
	  <th>4</th>
	  <th>5</th>
	  <th>6</th>
	  <th>7</th>
	  <th>8</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>0.0</td>
	  <td>0.0</td>
	  <td>1.0</td>
	  <td>0.0</td>
	  <td>-1.0</td>
	  <td>0.0</td>
	  <td>0.0</td>
	  <td>0.0</td>
	  <td>0.0</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>0.0</td>
	  <td>-1.0</td>
	  <td>0.0</td>
	  <td>1.0</td>
	  <td>0.0</td>
	  <td>0.0</td>
	  <td>0.0</td>
	  <td>0.0</td>
	  <td>0.0</td>
	</tr>
  </tbody>
</table>
</div>

## Optimization based on Equilibrium returns with adjusted views

```python
tau = .025  # scaling factor

# Calculate omega - uncertainty matrix about views
omega = dot(dot(dot(tau, P), C), transpose(P))  # 0.025 * P * C * transpose(P)
# Calculate equilibrium excess returns with views incorporated
sub_a = inv(dot(tau, C))
sub_b = dot(dot(transpose(P), inv(omega)), P)
sub_c = dot(inv(dot(tau, C)), Pi)
sub_d = dot(dot(transpose(P), inv(omega)), Q)
Pi_adj = dot(inv(sub_a + sub_b), (sub_c + sub_d))

res3 = optimize_frontier(Pi + rf, C, rf)

display_assets(names, Pi+rf, C, color='green')
display_frontier(res2, label='Implied returns', color='green')
display_assets(names, Pi_adj+rf, C, color='blue')
display_frontier(res3, label='Implied returns (adjusted views)', color='blue')
xlabel('variance $\sigma$'), ylabel('mean $\mu$'), legend(), show()
display(pandas.DataFrame({'Weight': res2.W}, index=names).T)
```

<b>Efficient frontier portfolios (Implied returns)</b>

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
	  <th>Variance</th>
	  <th>XOM</th>
	  <th>AAPL</th>
	  <th>MSFT</th>
	  <th>JNJ</th>
	  <th>GE</th>
	  <th>GOOG</th>
	  <th>CVX</th>
	  <th>PG</th>
	  <th>WFC</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>0.094449</td>
	  <td>0.025152</td>
	  <td>2.688679e-13</td>
	  <td>3.684896e-13</td>
	  <td>2.354618e-13</td>
	  <td>0.000000e+00</td>
	  <td>3.612019e-13</td>
	  <td>2.932892e-13</td>
	  <td>3.474916e-13</td>
	  <td>1.000000e+00</td>
	  <td>5.184776e-13</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>0.100962</td>
	  <td>0.016955</td>
	  <td>5.232301e-18</td>
	  <td>4.707560e-02</td>
	  <td>8.690901e-19</td>
	  <td>6.207429e-01</td>
	  <td>4.466003e-19</td>
	  <td>0.000000e+00</td>
	  <td>8.600506e-18</td>
	  <td>3.321815e-01</td>
	  <td>3.247302e-21</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>0.107475</td>
	  <td>0.017038</td>
	  <td>2.446140e-22</td>
	  <td>6.831925e-02</td>
	  <td>6.285302e-02</td>
	  <td>5.477418e-01</td>
	  <td>3.326860e-18</td>
	  <td>2.011851e-02</td>
	  <td>1.168735e-17</td>
	  <td>3.009674e-01</td>
	  <td>0.000000e+00</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>0.113988</td>
	  <td>0.017640</td>
	  <td>4.577372e-18</td>
	  <td>1.003800e-01</td>
	  <td>8.553522e-02</td>
	  <td>4.903010e-01</td>
	  <td>2.255694e-18</td>
	  <td>5.917637e-02</td>
	  <td>2.140373e-18</td>
	  <td>2.646074e-01</td>
	  <td>3.120910e-18</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>0.120502</td>
	  <td>0.018727</td>
	  <td>5.054064e-02</td>
	  <td>1.140052e-01</td>
	  <td>9.717350e-02</td>
	  <td>4.273017e-01</td>
	  <td>8.930760e-03</td>
	  <td>7.490239e-02</td>
	  <td>9.545540e-19</td>
	  <td>2.271458e-01</td>
	  <td>1.227673e-14</td>
	</tr>
	<tr>
	  <th>5</th>
	  <td>0.127015</td>
	  <td>0.020136</td>
	  <td>9.595944e-02</td>
	  <td>1.242327e-01</td>
	  <td>1.050817e-01</td>
	  <td>3.620156e-01</td>
	  <td>3.346186e-02</td>
	  <td>8.220754e-02</td>
	  <td>1.175174e-03</td>
	  <td>1.958660e-01</td>
	  <td>9.457389e-19</td>
	</tr>
	<tr>
	  <th>6</th>
	  <td>0.133528</td>
	  <td>0.021847</td>
	  <td>1.101281e-01</td>
	  <td>1.328644e-01</td>
	  <td>1.106079e-01</td>
	  <td>3.009300e-01</td>
	  <td>5.354068e-02</td>
	  <td>9.163221e-02</td>
	  <td>2.599307e-02</td>
	  <td>1.700240e-01</td>
	  <td>4.279642e-03</td>
	</tr>
	<tr>
	  <th>7</th>
	  <td>0.140042</td>
	  <td>0.023824</td>
	  <td>1.231823e-01</td>
	  <td>1.397345e-01</td>
	  <td>1.108296e-01</td>
	  <td>2.488715e-01</td>
	  <td>6.945712e-02</td>
	  <td>9.589058e-02</td>
	  <td>4.862578e-02</td>
	  <td>1.437559e-01</td>
	  <td>1.965272e-02</td>
	</tr>
	<tr>
	  <th>8</th>
	  <td>0.146555</td>
	  <td>0.026086</td>
	  <td>1.037317e-01</td>
	  <td>1.473956e-01</td>
	  <td>1.141107e-01</td>
	  <td>1.599514e-01</td>
	  <td>7.743907e-02</td>
	  <td>1.079419e-01</td>
	  <td>8.077350e-02</td>
	  <td>1.633485e-01</td>
	  <td>4.530764e-02</td>
	</tr>
	<tr>
	  <th>9</th>
	  <td>0.153068</td>
	  <td>0.028537</td>
	  <td>1.097743e-01</td>
	  <td>1.518745e-01</td>
	  <td>1.123424e-01</td>
	  <td>1.269891e-01</td>
	  <td>9.027073e-02</td>
	  <td>1.138526e-01</td>
	  <td>9.616011e-02</td>
	  <td>1.268782e-01</td>
	  <td>7.185799e-02</td>
	</tr>
	<tr>
	  <th>10</th>
	  <td>0.159582</td>
	  <td>0.031551</td>
	  <td>1.067632e-01</td>
	  <td>1.067632e-01</td>
	  <td>1.067632e-01</td>
	  <td>1.067632e-01</td>
	  <td>1.067632e-01</td>
	  <td>1.067632e-01</td>
	  <td>1.067632e-01</td>
	  <td>1.067632e-01</td>
	  <td>1.458941e-01</td>
	</tr>
	<tr>
	  <th>11</th>
	  <td>0.166095</td>
	  <td>0.034199</td>
	  <td>1.374664e-01</td>
	  <td>1.591048e-01</td>
	  <td>1.169407e-01</td>
	  <td>4.609925e-02</td>
	  <td>1.176756e-01</td>
	  <td>1.240747e-01</td>
	  <td>1.339557e-01</td>
	  <td>5.430678e-02</td>
	  <td>1.103761e-01</td>
	</tr>
	<tr>
	  <th>12</th>
	  <td>0.172608</td>
	  <td>0.037404</td>
	  <td>1.460909e-01</td>
	  <td>1.716512e-01</td>
	  <td>1.162922e-01</td>
	  <td>1.262296e-12</td>
	  <td>1.267793e-01</td>
	  <td>1.323194e-01</td>
	  <td>1.503665e-01</td>
	  <td>2.584738e-02</td>
	  <td>1.306531e-01</td>
	</tr>
	<tr>
	  <th>13</th>
	  <td>0.179122</td>
	  <td>0.040993</td>
	  <td>1.165405e-01</td>
	  <td>1.787688e-01</td>
	  <td>8.584953e-02</td>
	  <td>4.007141e-14</td>
	  <td>1.310855e-01</td>
	  <td>1.269985e-01</td>
	  <td>1.590046e-01</td>
	  <td>4.200999e-14</td>
	  <td>2.017526e-01</td>
	</tr>
	<tr>
	  <th>14</th>
	  <td>0.185635</td>
	  <td>0.045509</td>
	  <td>7.792838e-02</td>
	  <td>1.779973e-01</td>
	  <td>7.137264e-02</td>
	  <td>0.000000e+00</td>
	  <td>1.089662e-01</td>
	  <td>1.198822e-01</td>
	  <td>1.174162e-01</td>
	  <td>2.865935e-18</td>
	  <td>3.264371e-01</td>
	</tr>
	<tr>
	  <th>15</th>
	  <td>0.192148</td>
	  <td>0.050605</td>
	  <td>0.000000e+00</td>
	  <td>1.904286e-01</td>
	  <td>2.678544e-18</td>
	  <td>0.000000e+00</td>
	  <td>1.341001e-01</td>
	  <td>1.077932e-01</td>
	  <td>1.679997e-01</td>
	  <td>1.678742e-17</td>
	  <td>3.996784e-01</td>
	</tr>
	<tr>
	  <th>16</th>
	  <td>0.198662</td>
	  <td>0.057259</td>
	  <td>8.624974e-18</td>
	  <td>2.017179e-01</td>
	  <td>0.000000e+00</td>
	  <td>0.000000e+00</td>
	  <td>8.796806e-02</td>
	  <td>6.263007e-02</td>
	  <td>1.066675e-01</td>
	  <td>6.099970e-18</td>
	  <td>5.410165e-01</td>
	</tr>
	<tr>
	  <th>17</th>
	  <td>0.205175</td>
	  <td>0.065441</td>
	  <td>1.233155e-18</td>
	  <td>2.006686e-01</td>
	  <td>9.356339e-20</td>
	  <td>1.625784e-18</td>
	  <td>3.669004e-02</td>
	  <td>3.410645e-02</td>
	  <td>4.088447e-02</td>
	  <td>0.000000e+00</td>
	  <td>6.876505e-01</td>
	</tr>
	<tr>
	  <th>18</th>
	  <td>0.211688</td>
	  <td>0.075288</td>
	  <td>1.829508e-17</td>
	  <td>1.645697e-01</td>
	  <td>1.308653e-17</td>
	  <td>4.714145e-18</td>
	  <td>9.901813e-19</td>
	  <td>3.575762e-19</td>
	  <td>2.814627e-18</td>
	  <td>0.000000e+00</td>
	  <td>8.354303e-01</td>
	</tr>
	<tr>
	  <th>19</th>
	  <td>0.218202</td>
	  <td>0.089826</td>
	  <td>7.144935e-08</td>
	  <td>1.012045e-07</td>
	  <td>7.124048e-08</td>
	  <td>4.077819e-08</td>
	  <td>7.852001e-08</td>
	  <td>8.419174e-08</td>
	  <td>8.013892e-08</td>
	  <td>4.202357e-08</td>
	  <td>9.999994e-01</td>
	</tr>
  </tbody>
</table>
</div>

<b>Efficient frontier portfolios (Implied returns (adjusted views))</b>

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
	  <th>Variance</th>
	  <th>XOM</th>
	  <th>AAPL</th>
	  <th>MSFT</th>
	  <th>JNJ</th>
	  <th>GE</th>
	  <th>GOOG</th>
	  <th>CVX</th>
	  <th>PG</th>
	  <th>WFC</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>0</th>
	  <td>0.094449</td>
	  <td>0.025152</td>
	  <td>2.688679e-13</td>
	  <td>3.684896e-13</td>
	  <td>2.354618e-13</td>
	  <td>0.000000e+00</td>
	  <td>3.612019e-13</td>
	  <td>2.932892e-13</td>
	  <td>3.474916e-13</td>
	  <td>1.000000e+00</td>
	  <td>5.184776e-13</td>
	</tr>
	<tr>
	  <th>1</th>
	  <td>0.100962</td>
	  <td>0.016955</td>
	  <td>5.232301e-18</td>
	  <td>4.707560e-02</td>
	  <td>8.690901e-19</td>
	  <td>6.207429e-01</td>
	  <td>4.466003e-19</td>
	  <td>0.000000e+00</td>
	  <td>8.600506e-18</td>
	  <td>3.321815e-01</td>
	  <td>3.247302e-21</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>0.107475</td>
	  <td>0.017038</td>
	  <td>2.446140e-22</td>
	  <td>6.831925e-02</td>
	  <td>6.285302e-02</td>
	  <td>5.477418e-01</td>
	  <td>3.326860e-18</td>
	  <td>2.011851e-02</td>
	  <td>1.168735e-17</td>
	  <td>3.009674e-01</td>
	  <td>0.000000e+00</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>0.113988</td>
	  <td>0.017640</td>
	  <td>4.577372e-18</td>
	  <td>1.003800e-01</td>
	  <td>8.553522e-02</td>
	  <td>4.903010e-01</td>
	  <td>2.255694e-18</td>
	  <td>5.917637e-02</td>
	  <td>2.140373e-18</td>
	  <td>2.646074e-01</td>
	  <td>3.120910e-18</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>0.120502</td>
	  <td>0.018727</td>
	  <td>5.054064e-02</td>
	  <td>1.140052e-01</td>
	  <td>9.717350e-02</td>
	  <td>4.273017e-01</td>
	  <td>8.930760e-03</td>
	  <td>7.490239e-02</td>
	  <td>9.545540e-19</td>
	  <td>2.271458e-01</td>
	  <td>1.227673e-14</td>
	</tr>
	<tr>
	  <th>5</th>
	  <td>0.127015</td>
	  <td>0.020136</td>
	  <td>9.595944e-02</td>
	  <td>1.242327e-01</td>
	  <td>1.050817e-01</td>
	  <td>3.620156e-01</td>
	  <td>3.346186e-02</td>
	  <td>8.220754e-02</td>
	  <td>1.175174e-03</td>
	  <td>1.958660e-01</td>
	  <td>9.457389e-19</td>
	</tr>
	<tr>
	  <th>6</th>
	  <td>0.133528</td>
	  <td>0.021847</td>
	  <td>1.101281e-01</td>
	  <td>1.328644e-01</td>
	  <td>1.106079e-01</td>
	  <td>3.009300e-01</td>
	  <td>5.354068e-02</td>
	  <td>9.163221e-02</td>
	  <td>2.599307e-02</td>
	  <td>1.700240e-01</td>
	  <td>4.279642e-03</td>
	</tr>
	<tr>
	  <th>7</th>
	  <td>0.140042</td>
	  <td>0.023824</td>
	  <td>1.231823e-01</td>
	  <td>1.397345e-01</td>
	  <td>1.108296e-01</td>
	  <td>2.488715e-01</td>
	  <td>6.945712e-02</td>
	  <td>9.589058e-02</td>
	  <td>4.862578e-02</td>
	  <td>1.437559e-01</td>
	  <td>1.965272e-02</td>
	</tr>
	<tr>
	  <th>8</th>
	  <td>0.146555</td>
	  <td>0.026086</td>
	  <td>1.037317e-01</td>
	  <td>1.473956e-01</td>
	  <td>1.141107e-01</td>
	  <td>1.599514e-01</td>
	  <td>7.743907e-02</td>
	  <td>1.079419e-01</td>
	  <td>8.077350e-02</td>
	  <td>1.633485e-01</td>
	  <td>4.530764e-02</td>
	</tr>
	<tr>
	  <th>9</th>
	  <td>0.153068</td>
	  <td>0.028537</td>
	  <td>1.097743e-01</td>
	  <td>1.518745e-01</td>
	  <td>1.123424e-01</td>
	  <td>1.269891e-01</td>
	  <td>9.027073e-02</td>
	  <td>1.138526e-01</td>
	  <td>9.616011e-02</td>
	  <td>1.268782e-01</td>
	  <td>7.185799e-02</td>
	</tr>
	<tr>
	  <th>10</th>
	  <td>0.159582</td>
	  <td>0.031551</td>
	  <td>1.067632e-01</td>
	  <td>1.067632e-01</td>
	  <td>1.067632e-01</td>
	  <td>1.067632e-01</td>
	  <td>1.067632e-01</td>
	  <td>1.067632e-01</td>
	  <td>1.067632e-01</td>
	  <td>1.067632e-01</td>
	  <td>1.458941e-01</td>
	</tr>
	<tr>
	  <th>11</th>
	  <td>0.166095</td>
	  <td>0.034199</td>
	  <td>1.374664e-01</td>
	  <td>1.591048e-01</td>
	  <td>1.169407e-01</td>
	  <td>4.609925e-02</td>
	  <td>1.176756e-01</td>
	  <td>1.240747e-01</td>
	  <td>1.339557e-01</td>
	  <td>5.430678e-02</td>
	  <td>1.103761e-01</td>
	</tr>
	<tr>
	  <th>12</th>
	  <td>0.172608</td>
	  <td>0.037404</td>
	  <td>1.460909e-01</td>
	  <td>1.716512e-01</td>
	  <td>1.162922e-01</td>
	  <td>1.262296e-12</td>
	  <td>1.267793e-01</td>
	  <td>1.323194e-01</td>
	  <td>1.503665e-01</td>
	  <td>2.584738e-02</td>
	  <td>1.306531e-01</td>
	</tr>
	<tr>
	  <th>13</th>
	  <td>0.179122</td>
	  <td>0.040993</td>
	  <td>1.165405e-01</td>
	  <td>1.787688e-01</td>
	  <td>8.584953e-02</td>
	  <td>4.007141e-14</td>
	  <td>1.310855e-01</td>
	  <td>1.269985e-01</td>
	  <td>1.590046e-01</td>
	  <td>4.200999e-14</td>
	  <td>2.017526e-01</td>
	</tr>
	<tr>
	  <th>14</th>
	  <td>0.185635</td>
	  <td>0.045509</td>
	  <td>7.792838e-02</td>
	  <td>1.779973e-01</td>
	  <td>7.137264e-02</td>
	  <td>0.000000e+00</td>
	  <td>1.089662e-01</td>
	  <td>1.198822e-01</td>
	  <td>1.174162e-01</td>
	  <td>2.865935e-18</td>
	  <td>3.264371e-01</td>
	</tr>
	<tr>
	  <th>15</th>
	  <td>0.192148</td>
	  <td>0.050605</td>
	  <td>0.000000e+00</td>
	  <td>1.904286e-01</td>
	  <td>2.678544e-18</td>
	  <td>0.000000e+00</td>
	  <td>1.341001e-01</td>
	  <td>1.077932e-01</td>
	  <td>1.679997e-01</td>
	  <td>1.678742e-17</td>
	  <td>3.996784e-01</td>
	</tr>
	<tr>
	  <th>16</th>
	  <td>0.198662</td>
	  <td>0.057259</td>
	  <td>8.624974e-18</td>
	  <td>2.017179e-01</td>
	  <td>0.000000e+00</td>
	  <td>0.000000e+00</td>
	  <td>8.796806e-02</td>
	  <td>6.263007e-02</td>
	  <td>1.066675e-01</td>
	  <td>6.099970e-18</td>
	  <td>5.410165e-01</td>
	</tr>
	<tr>
	  <th>17</th>
	  <td>0.205175</td>
	  <td>0.065441</td>
	  <td>1.233155e-18</td>
	  <td>2.006686e-01</td>
	  <td>9.356339e-20</td>
	  <td>1.625784e-18</td>
	  <td>3.669004e-02</td>
	  <td>3.410645e-02</td>
	  <td>4.088447e-02</td>
	  <td>0.000000e+00</td>
	  <td>6.876505e-01</td>
	</tr>
	<tr>
	  <th>18</th>
	  <td>0.211688</td>
	  <td>0.075288</td>
	  <td>1.829508e-17</td>
	  <td>1.645697e-01</td>
	  <td>1.308653e-17</td>
	  <td>4.714145e-18</td>
	  <td>9.901813e-19</td>
	  <td>3.575762e-19</td>
	  <td>2.814627e-18</td>
	  <td>0.000000e+00</td>
	  <td>8.354303e-01</td>
	</tr>
	<tr>
	  <th>19</th>
	  <td>0.218202</td>
	  <td>0.089826</td>
	  <td>7.144935e-08</td>
	  <td>1.012045e-07</td>
	  <td>7.124048e-08</td>
	  <td>4.077819e-08</td>
	  <td>7.852001e-08</td>
	  <td>8.419174e-08</td>
	  <td>8.013892e-08</td>
	  <td>4.202357e-08</td>
	  <td>9.999994e-01</td>
	</tr>
  </tbody>
</table>
</div>

![png](output_25_4.png)

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
	  <th>XOM</th>
	  <th>AAPL</th>
	  <th>MSFT</th>
	  <th>JNJ</th>
	  <th>GE</th>
	  <th>GOOG</th>
	  <th>CVX</th>
	  <th>PG</th>
	  <th>WFC</th>
	</tr>
  </thead>
  <tbody>
	<tr>
	  <th>Weight</th>
	  <td>0.160429</td>
	  <td>0.15617</td>
	  <td>0.112453</td>
	  <td>0.097424</td>
	  <td>0.093807</td>
	  <td>0.116209</td>
	  <td>0.091813</td>
	  <td>0.084692</td>
	  <td>0.087002</td>
	</tr>
  </tbody>
</table>
</div>


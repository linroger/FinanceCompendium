---
title: Heath Jarrow Morton Model (HJM)
parent_directory: FINM Credit Markets
formatted: 2025-12-21 06:50:00 AM
formatter_model: grok-code-fast-1
cli_tool: open code
primary_tags:
  - heath jarrow morton model
  - interest rate modeling
  - term structure models
secondary_tags:
  - principal component analysis
  - monte carlo simulation
  - volatility fitting
  - forward rates
  - risk neutral drift
  - stochastic calculus
  - numerical integration
  - yield curve dynamics
cssclasses: academia
---

Copyright &copy; 2015 Ondrej Martinsky, All rights reserved

[www.quantandfinancial.com](http://www.quantandfinancial.com)

# Heath Jarrow Morton Model (HJM)

```python
from mpl_toolkits.mplot3d import Axes3D
import copy as copylib
from progressbar import *
%pylab
%matplotlib inline
import pandas as pd
pylab.rcParams['figure.figsize'] = (16, 4.5)
numpy.random.seed(0)
```

    Using matplotlib backend: TkAgg
    Populating the interactive namespace from numpy and matplotlib

## Load Historical Data

Loads historical short-rate curves $f(t,\tau)$ from the file.

$f(t, \tau)$ represents instantaneous forward rate for period $\tau \rightarrow \tau + \delta$, locked in time $t$. This rates can be obtained from prices of zero-coupons bond as:

$$
f(t, \tau) = \frac{\delta}{\delta \tau} \log P(t, \tau)
$$ 

```python
dataframe =  pd.read_csv('hjm_data.csv').set_index('time') / 100 # Convert interest rates to %
pd.options.display.max_rows = 10
display(dataframe)
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
	  <th>1/12</th>
	  <th>1/2</th>
	  <th>1</th>
	  <th>1.5</th>
	  <th>2</th>
	  <th>2.5</th>
	  <th>3</th>
	  <th>3.5</th>
	  <th>4</th>
	  <th>4.5</th>
	  <th>…</th>
	  <th>20.5</th>
	  <th>21</th>
	  <th>21.5</th>
	  <th>22</th>
	  <th>22.5</th>
	  <th>23</th>
	  <th>23.5</th>
	  <th>24</th>
	  <th>24.5</th>
	  <th>25</th>
	</tr>
	<tr>
	  <th>time</th>
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
	  <th>1</th>
	  <td>0.057734</td>
	  <td>0.064382</td>
	  <td>0.067142</td>
	  <td>0.066512</td>
	  <td>0.064991</td>
	  <td>0.063255</td>
	  <td>0.061534</td>
	  <td>0.059925</td>
	  <td>0.058444</td>
	  <td>0.057058</td>
	  <td>…</td>
	  <td>0.034194</td>
	  <td>0.034772</td>
	  <td>0.035371</td>
	  <td>0.035985</td>
	  <td>0.036612</td>
	  <td>0.037252</td>
	  <td>0.037902</td>
	  <td>0.038562</td>
	  <td>0.039231</td>
	  <td>0.039908</td>
	</tr>
	<tr>
	  <th>2</th>
	  <td>0.057680</td>
	  <td>0.064506</td>
	  <td>0.067502</td>
	  <td>0.066842</td>
	  <td>0.065423</td>
	  <td>0.063852</td>
	  <td>0.062301</td>
	  <td>0.060846</td>
	  <td>0.059490</td>
	  <td>0.058198</td>
	  <td>…</td>
	  <td>0.033790</td>
	  <td>0.034437</td>
	  <td>0.035108</td>
	  <td>0.035798</td>
	  <td>0.036504</td>
	  <td>0.037224</td>
	  <td>0.037959</td>
	  <td>0.038705</td>
	  <td>0.039461</td>
	  <td>0.040227</td>
	</tr>
	<tr>
	  <th>3</th>
	  <td>0.057758</td>
	  <td>0.064410</td>
	  <td>0.067354</td>
	  <td>0.066845</td>
	  <td>0.065577</td>
	  <td>0.064109</td>
	  <td>0.062611</td>
	  <td>0.061164</td>
	  <td>0.059782</td>
	  <td>0.058438</td>
	  <td>…</td>
	  <td>0.032706</td>
	  <td>0.033294</td>
	  <td>0.033907</td>
	  <td>0.034539</td>
	  <td>0.035188</td>
	  <td>0.035853</td>
	  <td>0.036533</td>
	  <td>0.037224</td>
	  <td>0.037927</td>
	  <td>0.038639</td>
	</tr>
	<tr>
	  <th>4</th>
	  <td>0.057430</td>
	  <td>0.064103</td>
	  <td>0.066942</td>
	  <td>0.066215</td>
	  <td>0.064904</td>
	  <td>0.063462</td>
	  <td>0.062006</td>
	  <td>0.060601</td>
	  <td>0.059252</td>
	  <td>0.057933</td>
	  <td>…</td>
	  <td>0.031325</td>
	  <td>0.031891</td>
	  <td>0.032486</td>
	  <td>0.033106</td>
	  <td>0.033748</td>
	  <td>0.034409</td>
	  <td>0.035088</td>
	  <td>0.035784</td>
	  <td>0.036493</td>
	  <td>0.037214</td>
	</tr>
	<tr>
	  <th>5</th>
	  <td>0.057412</td>
	  <td>0.063978</td>
	  <td>0.066358</td>
	  <td>0.065502</td>
	  <td>0.064168</td>
	  <td>0.062722</td>
	  <td>0.061262</td>
	  <td>0.059849</td>
	  <td>0.058488</td>
	  <td>0.057157</td>
	  <td>…</td>
	  <td>0.030119</td>
	  <td>0.030667</td>
	  <td>0.031250</td>
	  <td>0.031862</td>
	  <td>0.032499</td>
	  <td>0.033161</td>
	  <td>0.033844</td>
	  <td>0.034546</td>
	  <td>0.035264</td>
	  <td>0.035997</td>
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
	  <th>1260</th>
	  <td>0.046421</td>
	  <td>0.045093</td>
	  <td>0.042471</td>
	  <td>0.042081</td>
	  <td>0.042663</td>
	  <td>0.043224</td>
	  <td>0.043640</td>
	  <td>0.043940</td>
	  <td>0.044156</td>
	  <td>0.044314</td>
	  <td>…</td>
	  <td>0.040260</td>
	  <td>0.040098</td>
	  <td>0.039950</td>
	  <td>0.039813</td>
	  <td>0.039687</td>
	  <td>0.039571</td>
	  <td>0.039464</td>
	  <td>0.039365</td>
	  <td>0.039273</td>
	  <td>0.039187</td>
	</tr>
	<tr>
	  <th>1261</th>
	  <td>0.046233</td>
	  <td>0.044976</td>
	  <td>0.042452</td>
	  <td>0.042131</td>
	  <td>0.042726</td>
	  <td>0.043285</td>
	  <td>0.043699</td>
	  <td>0.043998</td>
	  <td>0.044214</td>
	  <td>0.044374</td>
	  <td>…</td>
	  <td>0.040307</td>
	  <td>0.040147</td>
	  <td>0.039999</td>
	  <td>0.039863</td>
	  <td>0.039737</td>
	  <td>0.039621</td>
	  <td>0.039514</td>
	  <td>0.039414</td>
	  <td>0.039320</td>
	  <td>0.039233</td>
	</tr>
	<tr>
	  <th>1262</th>
	  <td>0.046348</td>
	  <td>0.045311</td>
	  <td>0.043295</td>
	  <td>0.043266</td>
	  <td>0.043963</td>
	  <td>0.044565</td>
	  <td>0.045003</td>
	  <td>0.045323</td>
	  <td>0.045560</td>
	  <td>0.045739</td>
	  <td>…</td>
	  <td>0.041276</td>
	  <td>0.041118</td>
	  <td>0.040972</td>
	  <td>0.040840</td>
	  <td>0.040718</td>
	  <td>0.040607</td>
	  <td>0.040505</td>
	  <td>0.040411</td>
	  <td>0.040324</td>
	  <td>0.040244</td>
	</tr>
	<tr>
	  <th>1263</th>
	  <td>0.046327</td>
	  <td>0.045347</td>
	  <td>0.043184</td>
	  <td>0.043144</td>
	  <td>0.043859</td>
	  <td>0.044482</td>
	  <td>0.044941</td>
	  <td>0.045279</td>
	  <td>0.045530</td>
	  <td>0.045721</td>
	  <td>…</td>
	  <td>0.041135</td>
	  <td>0.040981</td>
	  <td>0.040841</td>
	  <td>0.040714</td>
	  <td>0.040599</td>
	  <td>0.040495</td>
	  <td>0.040400</td>
	  <td>0.040314</td>
	  <td>0.040235</td>
	  <td>0.040163</td>
	</tr>
	<tr>
	  <th>1264</th>
	  <td>0.046138</td>
	  <td>0.045251</td>
	  <td>0.042916</td>
	  <td>0.042833</td>
	  <td>0.043498</td>
	  <td>0.044054</td>
	  <td>0.044440</td>
	  <td>0.044708</td>
	  <td>0.044903</td>
	  <td>0.045057</td>
	  <td>…</td>
	  <td>0.040665</td>
	  <td>0.040501</td>
	  <td>0.040353</td>
	  <td>0.040219</td>
	  <td>0.040098</td>
	  <td>0.039989</td>
	  <td>0.039891</td>
	  <td>0.039802</td>
	  <td>0.039721</td>
	  <td>0.039648</td>
	</tr>
  </tbody>
</table>
<p>1264 rows × 51 columns</p>
</div>

```python
hist_timeline = list(dataframe.index)
tenors = [eval(x) for x in dataframe.columns]
hist_rates = matrix(dataframe)
```

```python
plot(hist_rates), xlabel(r'Time $t$'), title(r'Historical $f(t,\tau)$ by $t$'), show();
```

![png](output_5_0.png)

```python
plot(tenors, hist_rates.transpose()), xlabel(r'Tenor $\tau$'), title(r'Historical $f(t,\tau)$ by $\tau$');
```

![png](output_6_0.png)

## Differentiate historical rates

Differentiate matrix of historical rates by $t$

```python
diff_rates = diff(hist_rates, axis=0)
assert(hist_rates.shape[1]==diff_rates.shape[1])
plot(diff_rates), xlabel(r'Time $t$'), title(r'$df(t,\tau)$ by $t$');
```

![png](output_8_0.png)

## Principal component analysis

Extract principal components from the $df(t,\tau)$

```python
# Calculate covariance matrix
sigma = cov(diff_rates.transpose())
print("Sigma shape : " + str(sigma.shape))
```

    Sigma shape : (51, 51)

### Source data are daily rates, therefore annualize covariance matrix

```python
sigma *= 252
```

## Calculate eigenvalues and eigenvectors

```python
eigval, eigvec = linalg.eig(sigma)
eigvec=matrix(eigvec)
assert type(eigval) == ndarray
assert type(eigvec) == matrix
print(eigval)
```

    [2.02884026e-03 4.62889282e-04 1.63677691e-04 8.47948767e-05
     5.10134525e-05 3.26491422e-05 1.53862297e-05 3.90765854e-06
     1.45385608e-06 3.99451236e-07 7.74123147e-08 2.25094244e-08
     6.81015644e-09 2.04941493e-09 8.30654947e-10 3.18422245e-10
     1.69855176e-10 1.20686709e-10 8.18818675e-11 4.65678731e-11
     2.41691330e-11 1.26818337e-11 7.83625734e-12 4.07031447e-12
     2.61695756e-12 1.78999757e-12 1.07235512e-12 6.26514639e-13
     3.36669729e-13 2.89485602e-13 2.09893607e-13 2.02355353e-13
     1.20792326e-13 9.80002494e-14 7.30538992e-14 5.84913660e-14
     5.01860751e-14 4.50411898e-14 4.25136355e-14 3.00503975e-14
     1.99691929e-14 1.44931265e-14 8.67086054e-15 6.67527007e-15
     5.37125345e-15 4.23435378e-15 2.52347594e-15 1.26740677e-15
     4.34965650e-17 1.87337570e-16 2.51643458e-16]

## Determine principal components

Select eigen vectors with highest eigenvalues.

Link between tenors and eigenvectors is not guaranteed.

```python
factors=3
index_eigvec = list(reversed(eigval.argsort()))[0:factors]   # highest principal component first in the array
princ_eigval = array([eigval[i] for i in index_eigvec])
princ_comp = hstack([eigvec[:,i] for i in index_eigvec])
print("Principal eigenvalues")
print(princ_eigval)
print()
print("Principal eigenvectors")
print(princ_comp)
plot(princ_comp, marker='.'), title('Principal components'), xlabel(r'Time $t$');
```

    Principal eigenvalues
    [0.00202884 0.00046289 0.00016368]
    
    Principal eigenvectors
    [[ 0.00351033 -0.00972625 -0.00111508]
     [ 0.05665586 -0.16326718  0.27313784]
     [ 0.10114279 -0.2389149   0.40222423]
     [ 0.11563974 -0.24345609  0.35581018]
     [ 0.12154093 -0.23509872  0.27474251]
     [ 0.12568249 -0.22656368  0.19585028]
     [ 0.12948968 -0.21903235  0.12500321]
     [ 0.13320457 -0.21206961  0.0623539 ]
     [ 0.13681963 -0.2051638   0.00709335]
     [ 0.14026214 -0.19791715 -0.04135353]
     [ 0.14344533 -0.19001071 -0.08325192]
     [ 0.1462834  -0.18118042 -0.11865757]
     [ 0.14870205 -0.17120748 -0.14754572]
     [ 0.15064229 -0.15990426 -0.16990336]
     [ 0.15207044 -0.14712506 -0.18581986]
     [ 0.15298157 -0.13278428 -0.19552188]
     [ 0.15340022 -0.11686787 -0.19936452]
     [ 0.15337685 -0.09943599 -0.19785291]
     [ 0.15297871 -0.08062996 -0.19159875]
     [ 0.15228467 -0.06067689 -0.18129946]
     [ 0.15138052 -0.03988003 -0.16770213]
     [ 0.15035008 -0.01860959 -0.15155688]
     [ 0.1492673   0.00271527 -0.13358986]
     [ 0.14819153  0.02367225 -0.11447618]
     [ 0.1471667   0.04384678 -0.09481235]
     [ 0.14622324  0.06285625 -0.07513097]
     [ 0.14537916  0.08037638 -0.05587006]
     [ 0.14464067  0.09615974 -0.03736179]
     [ 0.14400981  0.11004704 -0.01984356]
     [ 0.14348639  0.12195425 -0.00349172]
     [ 0.14306427  0.13184559  0.01155039]
     [ 0.14273155  0.13972991  0.02518557]
     [ 0.14247426  0.1456616   0.03736504]
     [ 0.14228194  0.14973687  0.04808003]
     [ 0.14214637  0.15207375  0.05734132]
     [ 0.14205928  0.15279618  0.06518654]
     [ 0.14201137  0.15203288  0.07166709]
     [ 0.14199766  0.14991549  0.07685584]
     [ 0.14201509  0.14657998  0.08083679]
     [ 0.14206023  0.14216385  0.08369616]
     [ 0.14212804  0.13680839  0.08552868]
     [ 0.14221392  0.1306503   0.08643763]
     [ 0.14231455  0.1238169   0.08652094]
     [ 0.1424272   0.11641361  0.08586462]
     [ 0.14254972  0.10851748  0.08454216]
     [ 0.14268209  0.10018596  0.08262387]
     [ 0.14282468  0.0914707   0.08017714]
     [ 0.14297813  0.08241822  0.0772633 ]
     [ 0.14314304  0.07307339  0.0739417 ]
     [ 0.14332003  0.06348103  0.07027167]
     [ 0.14350971  0.05368544  0.06631197]]



    

![png](output_16_1.png)

## Calculate discretized volatility function from principal components

```python
sqrt_eigval = matrix(princ_eigval ** .5)
tmp_m = vstack([sqrt_eigval for i in range(princ_comp.shape[0])])  # resize matrix (1,factors) to (n, factors)
vols = multiply(tmp_m, princ_comp) # multiply matrice element-wise
print('vols shape: ' + str(vols.shape))
plot(vols, marker='.'), xlabel(r'Time $t$'), ylabel(r'Volatility $\sigma$'), title('Discretized volatilities');
```

    vols shape: (51, 3)



    

![png](output_18_1.png)

## Volatility Fitting

We need to fit discretized volatility functions from the previous step using cubic interpolators. The reason is that these interpolators will be later integrated numerically in order to calculate risk-neutral drift.

<b>Fit Volatility Functions $\bar{v}(t,\tau)$ from discretized versions</b><br>
<b>Fitting is done using <u>cubic spline</u></b><br>

```python
def get_matrix_column(mat, i):
    return array(mat[:,i].flatten())[0]

class PolynomialInterpolator:
    def __init__(self, params):
        assert type(params) == ndarray
        self.params = params
    def calc(self, x):
        n = len(self.params)
        C = self.params
        X = array([x**i for i in reversed(range(n))])
        return sum(multiply(X, C))
```

We will approximate the first principal component with interpolator with 0 degree (straight line). This approximates well parallel movements of interest rates.

```python
fitted_vols = []
```

2nd and 3rd principal component will be approximated using cubic interpolator with degree 3.

```python
def fit_volatility(i, degree, title):
    vol = get_matrix_column(vols, i)
    fitted_vol = PolynomialInterpolator(polyfit(tenors, vol, degree))    
    plot(tenors, vol, marker='.', label='Discretized volatility')
    plot(tenors, [fitted_vol.calc(x) for x in tenors], label='Fitted volatility')
    plt.title(title), xlabel(r'Time $t$'), legend();
    fitted_vols.append(fitted_vol)
    
subplot(1, 3, 1), fit_volatility(0, 0, '1st component');
subplot(1, 3, 2), fit_volatility(1, 3, '2nd component');
subplot(1, 3, 3), fit_volatility(2, 3, '3rd component');
```

![png](output_24_0.png)

## Monte Carlo Simulation

### Define function for numeric integration

We will use trapezoidal rule:

$$
\int_0^t v(\tau)d\tau \approx \sum_{0}^{n} \frac{1}{2}(v_{i+1}-v_i)\times d\tau
$$

```python
def integrate(f, x0, x1, dx):
    n = (x1-x0)/dx+1
    out = 0
    for i, x in enumerate(linspace(x0, x1, int(n))):
        if i==0 or i==n-1:
            out += 0.5 * f(x)
        else:
            out += f(x)  # not adjusted by *0.5 because of repeating terms x1...xn-1 - see trapezoidal rule
    out *= dx
    return out
```

### Discretize fitted volatilities for the purpose of drift calculation

```python
mc_tenors = linspace(0,25,51)
# Discretize fitted volfuncs for the purpose of monte carlo simulation
mc_vols = matrix([[fitted_vol.calc(tenor) for tenor in mc_tenors] for fitted_vol in fitted_vols]).transpose()
plot(mc_tenors, mc_vols, marker='.'), xlabel(r'Time $t$'), title('Volatilities');
```

![png](output_29_0.png)

### Drift calculation

Drift $m(t,\tau)$ is calculated using numerical integration over fitted volatility functions (No Mursiela parameterisation for now)<br><br>
$$
m(t,\tau) = \sum_{i=1}^n v_i(t,\tau) \int_0^\tau v_i(t,s)ds
$$

```python
def m(tau, fitted_vols):
    #This funciton carries out integration for all principal factors. 
    #It uses the fact that volatility is function of time in HJM model
    out = 0.
    for fitted_vol in fitted_vols:
        assert isinstance(fitted_vol, PolynomialInterpolator)
        out += integrate(fitted_vol.calc, 0, tau, 0.01) * fitted_vol.calc(tau)
    return out
```

```python
mc_drift = array([m(tau, fitted_vols) for tau in mc_tenors])
plot(mc_drift, marker='.'), xlabel(r'Time $t$'), title('Risk-neutral drift');
```

![png](output_32_0.png)

### Perform Monte Carlo Simulation (one path)

Few formulas

$$f(t,T)=F(t;T,T+\delta T)$$

$$df(t,T) = m(t,T)dt + \sum^N_{i=1}v_i(t,T)dX_i$$

$$m(t,T)=\sum^N_{i=1}v_i(t,T)\int_t^Tv_i(t,s)ds$$

Mursiela parameterisation

$$\bar{f}(t,\tau)=f(t,t+\tau)$$

The multi-factor HJM framework is implemented with this SDE:

$$d\bar{f}(t,\tau)=(\sum_{i=1}^k \bar{v}_i(t,\tau)\int_0^\tau v_i(t,s)ds+\frac{\delta\bar{f}(t,\tau)}{\delta\tau})dt + \sigma_{i=1}^k \bar{v}_i(t,\tau)dX_i$$

We simulate by $f(t+dt)=f(t) + d\bar{f}$   where Musiela HJM SDE is $d\bar{f} =  m(t)dt+\sum(v_i*\phi*\sqrt{dt})+\frac{dF}{d\tau}dt$

### today's instantaneous forward rates $f(t_0, T)$

```python
curve_spot = array(hist_rates[-1,:].flatten())[0]
plot(mc_tenors, curve_spot.transpose(), marker='.'), ylabel('$f(t_0,T)$'), xlabel("$T$");
```

![png](output_38_0.png)

```python
def simulation(f, tenors, drift, vols, timeline):
    assert type(tenors)==ndarray
    assert type(f)==ndarray
    assert type(drift)==ndarray
    assert type(timeline)==ndarray
    assert len(f)==len(tenors)
    vols = array(vols.transpose())  # 3 rows, T columns
    len_tenors = len(tenors)
    len_vols = len(vols)
    yield timeline[0], copylib.copy(f)
    for it in range(1, len(timeline)):
        t = timeline[it]
        dt = t - timeline[it-1]
        sqrt_dt = sqrt(dt)
        fprev = f
        f = copylib.copy(f)
        random_numbers = [normal() for i in range(len_vols)]
        for iT in range(len_tenors):
            val = fprev[iT] + drift[iT] * dt
            #
            sum = 0
            for iVol, vol in enumerate(vols):
                sum += vol[iT] * random_numbers[iVol]
            val += sum * sqrt_dt
            #
            iT1 = iT+1 if iT<len_tenors-1 else iT-1   # if we can't take right difference, take left difference
            dfdT = (fprev[iT1] - fprev[iT]) / (iT1 - iT)
            val += dfdT * dt
            #
            f[iT] = val
        yield t,f
```

```python
proj_rates = []
proj_timeline = linspace(0,5,500)
progressbar = ProgressBar("One simulation path", len(proj_timeline))
for i, (t, f) in enumerate(simulation(curve_spot, mc_tenors, mc_drift, mc_vols, proj_timeline)):
    progressbar.update(i)
    proj_rates.append(f)
proj_rates = matrix(proj_rates)
plot(proj_timeline.transpose(), proj_rates), xlabel(r'Time $t$'), ylabel(r'Rate $f(t,\tau)$');
title(r'Simulated $f(t,\tau)$ by $t$'), show();
plot(mc_tenors, proj_rates.transpose()), xlabel(r'Tenor $\tau$'), ylabel(r'Rate $f(t,\tau)$');
title(r'Simulated $f(t,\tau)$ by $\tau$'), show();
```

    One simulation path 
    0%....10%....20%....30%....40%....50%....60%....70%....80%....90%....100%


    

![png](output_40_1.png)

![png](output_40_2.png)

## Pricing of trade using Monte Carlo

### Define integrator for instantaneous rates

Integrating $f(t)$ over $n$ discrete samples:

$$\int_{t_1}^{t_n} f(t)dt \approx \frac{(t_n-t_1)}{n}\sum_{i=1}^n f(t_i)$$

<b>Simple</b> LIBOR forward rate (e.g. 3M libor)

$$F(t_0;t,T) = \int_{t}^{T} f(t_0, s)ds$$

```python
class Integrator:
    def __init__(self, x0, x1):
        assert x0 < x1
        self.sum, self.n, self.x0, self.x1= 0, 0, x0, x1
    def add(self, value):
        self.sum += value
        self.n += 1
    def get_integral(self):
        return (self.x1 - self.x0) * self.sum / self.n
```

### Price caplet

Caplet with strike $K=3\%$, expiring in $t_s=1.0$, maturing in $t_e=2.0$, notional $N=1,000,000$

```python
t_exp, t_mat = 1., 2.
K, notional = .03, 1e6
n_simulations, n_timesteps = 500, 50

proj_timeline = linspace(0,t_mat, n_timesteps)
progressbar = ProgressBar('Performing simulation', n_simulations)
simulated_forecast_rates = []
simulated_df = []
simulated_pvs = []
pv_convergence_process = []
for i in range(0, n_simulations):
    progressbar.update(i)
    rate_forecast = None                    # Forecast rate between t_exp and t_mat for this path
    rate_discount = Integrator(0, t_exp)      # cont.compounded discount rate for this path
    for t, curve_fwd in simulation(curve_spot, mc_tenors, mc_drift, mc_vols, proj_timeline):
        f_t_0 = interp(0., mc_tenors, curve_fwd)  # rate $f_t^0$
        rate_discount.add(f_t_0)
        if t>=t_exp and rate_forecast is None:  # t is expiration time
            Tau = t_mat-t_exp
            rate_forecast = Integrator(0, Tau) # integrate all inst.fwd.rates from 0 till 1Y tenor to get 1Y spot rate
            for s in linspace(0, Tau, 15): # $\int_0^T f(t,s)ds$
                f_texp_s = interp(s, mc_tenors, curve_fwd)
                rate_forecast.add(f_texp_s) 
            rate_forecast = rate_forecast.get_integral()
    plot(mc_tenors, curve_fwd), xlabel(r'Tenor $\tau$'), ylabel(r'Rate $f(t_{exp},\tau)$');   # Plot forward curve at expiration
    df = exp(-rate_discount.get_integral())     # Discount factor
    simulated_forecast_rates.append(rate_forecast)
    simulated_df.append(df)
    pv = max(0, rate_forecast - K) * (t_mat-t_exp) * notional * df
    simulated_pvs.append(pv)
    pv_convergence_process.append(average(simulated_pvs))
show()
#
scatter(simulated_df, simulated_forecast_rates), xlabel('Discount Factor'), ylabel('Forecast Rate')
show()
#
plot(pv_convergence_process[10:]), title('Convergence of PV'), xlabel("Simulations"), ylabel("V");
print("Final value: %f" % pv_convergence_process[-1])
```

    Performing simulation 
    0%....10%....20%....30%....40%....50%....60%....70%....80%....90%....100%


    

![png](output_46_1.png)

![png](output_46_2.png)

    Final value: 13078.429432



    

![png](output_46_4.png)

```python

```

```d2
hjm_workflow: Heath-Jarrow-Morton Model Workflow {
  direction: down

  historical_data: Load Historical Forward Rates {
    shape: stored_data
  }

  differentiate: Differentiate Historical Rates {
    shape: step
  }

  pca: Principal Component Analysis {
    shape: step
  }

  volatility: Calculate Discretized Volatility {
    shape: step
  }

  fitting: Volatility Function Fitting {
    shape: step
  }

  monte_carlo: Monte Carlo Simulation {
    shape: step
  }

  pricing: Derivative Pricing {
    shape: step
  }

  historical_data -> differentiate -> pca -> volatility -> fitting -> monte_carlo -> pricing

  note: This workflow implements the HJM model for interest rate modeling and derivative pricing {
    near: bottom-center
    shape: callout
  }
}
```

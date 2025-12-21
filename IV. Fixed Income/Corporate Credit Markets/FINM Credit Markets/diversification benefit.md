---
title: Diversification Benefit in Mean-Variance Portfolio Optimization
parent_directory: FINM Credit Markets
formatted: 2025-12-21 11:45:00 AM
formatter_model: grok-code-fast-1
cli-tool: opencode
primary_tags:
- portfolio diversification
- mean variance optimization
- correlation impact
secondary_tags:
- expected return
- standard deviation
- risk reduction
- asset allocation
- portfolio theory
cssclasses: academia
---

Copyright &copy; 2013 Ondrej Martinsky, All rights reserved

[www.quantandfinancial.com](http://www.quantandfinancial.com)

# Diversification Benefit in Mean-Variance Portfolio Optimization

```python
%pylab
%matplotlib inline
pylab.rcParams['figure.figsize'] = (10, 6)
import scipy.optimize
from pandas import *
```

    Using matplotlib backend: Qt5Agg
    Populating the interactive namespace from numpy and matplotlib

```python
r_a = 0.04
r_b = 0.05
stdev_a = 0.07
stdev_b = 0.08
```

```python
for correl in linspace(-1,1,5):
    X, Y = [], []
    for w_a in linspace(0,1,100):
        w_b = 1 - w_a
        r = r_a * w_a + r_b * w_b
        var = w_a**2 * stdev_a**2 + w_b**2 * stdev_b**2 + 2*w_a*w_b*stdev_a*stdev_b*correl
        stdev = sqrt(var)
        X.append(stdev)
        Y.append(r)
    plot(X,Y,label='Correlation %0.0f%%' % (100*correl))
xlabel('Standard Deviation $\sigma$'), ylabel('Expected return $r$')
title('Diversification benefit for different levels of correlation between two assets')
legend();
```

![png](output_3_0.png)

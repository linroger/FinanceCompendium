---
aliases:
   - Optimizing Risk and Return
parent_directory: Financial Investments for Public Policy
cssclasses: academia
title: Topic 1 - Optimizing Risk and Return
primary_tags:
secondary_tags:
---

# Topic 1 - Optimizing Risk and Return

## FINM 36700: Portfolio and Risk Management

### Mark Hendricks

#### Autumn 2022

```python
import pandas as pd
import numpy as np
import datetime
import warnings

import matplotlib.pyplot as plt
%matplotlib inline
plt.rcParams['figure.figsize'] = (12,6)
plt.rcParams['font.size'] = 15
plt.rcParams['legend.fontsize'] = 13

from matplotlib.ticker import (MultipleLocator,
                               FormatStrFormatter,
                               AutoMinorLocator)

from sklearn.linear_model import LinearRegression
import sys
sys.path.insert(0,'../cmds')
from portfolio import *
from risk import *
```

    ---------------------------------------------------------------------------

    ModuleNotFoundError                       Traceback (most recent call last)

    Input In [1], in <cell line: 20>()
         18 sys.path.insert(0,'../cmds')
         19 from portfolio import *
    ---> 20 from risk import *


    ModuleNotFoundError: No module named 'risk'

```python
LOADFILE = '../data/risk_etf_data.xlsx'
info = pd.read_excel(LOADFILE,sheet_name='descriptions').set_index('ticker')
rets = pd.read_excel(LOADFILE,sheet_name='total returns').set_index('Date')
prices = pd.read_excel(LOADFILE,sheet_name='prices').set_index('Date')

rets.drop(columns=['CL1'],inplace=True)
retsx = rets.sub(rets['SHV'],axis=0)
FREQ = 252
```

$$\newcommand{\E}{E}$$

$$\newcommand{\rbar}{\bar{r}}$$

$$\newcommand{\rvec}{\boldsymbol{r}}$$

$$\newcommand{\rvecbar}{\boldsymbol{\bar{r}}}$$

$$\newcommand{\Ntime}{N}$$

$$\newcommand{\Nt}{N}$$

$$\newcommand{\rmat}{\boldsymbol{R}}$$

$$\newcommand{\riskmeasure}{\varrho}$$

$$\newcommand{\wt}{w}$$

$$\newcommand{\Nassets}{K}$$

$$\newcommand{\muvec}{\boldsymbol{\mu}}$$

$$\newcommand{\onevecNt}{\boldsymbol{1}_{\Ntime\times 1}}$$

$$\newcommand{\covest}{\hat{\boldsymbol{\Sigma}}}$$

$$\newcommand{\meanest}{\hat{\mu}}$$

$$\newcommand{\meanestvec}{\hat{\boldsymbol{\mu}}}$$

$$\newcommand{\covmat}{\boldsymbol{\Sigma}}$$

$$\newcommand{\rf}{r_f}$$

$$\newcommand{\VaR}{\text{VaR}}$$

$$\newcommand{\VaRqtau}{\VaR_{q,\tau}}$$

$$\newcommand{\pnlVaR}{\pnl^{\VaR}}$$

$$\newcommand{\pnlVaRqtau}{\pnl^{\VaR_{q,\tau}}}$$

$$\newcommand{\rVaR}{r^{\VaR}}$$

$$\newcommand{\rVaRqtau}{r^{\VaR_{q,\tau}}}$$

$$\newcommand{\loss}{L}$$

$$\newcommand{\Pr}{\mathbb{P}}$$

$$\newcommand{\quant}{q}$$

$$\newcommand{\port}{\Pi}$$

$$\newcommand{\pnl}{\Gamma}$$

$$\newcommand{\cdf}{\Phi}$$

$$\newcommand{\pdf}{\phi}$$

$$\newcommand{\zscore}{\texttt{z}}$$

$$\newcommand{\cdfz}{\cdf_{\zscore}}$$

$$\newcommand{\pdfz}{\pdf_{\zscore}}$$

$$\newcommand{\rlog}{\texttt{r}}$$

$$\newcommand{CVaR}{\text{CVaR}}$$

$$\newcommand{CVaRqtau}{\CVaR_{q,\tau}}$$

$$\newcommand{\pnlCVaR}{\pnl^\CVaR}$$

$$\newcommand{\pnlCVaRqtau}{\pnl^{\CVaR_{q,\tau}}}$$

$$\newcommand{\rCVaR}{r^\CVaR}$$

$$\newcommand{\rCVaRqtau}{r^{\CVaR_{q,\tau}}}$$

$$\newcommand{\rx}{\tilde{r}}$$

$$\newcommand{\mux}{\tilde{\mu}}$$

$$\newcommand{\sigx}{\tilde{\sigma}}$$

$$\newcommand{\Nsec}{K}$$

$$\newcommand{\avg}{\text{avg}}$$

$$\newcommand{\wtvec}{\boldsymbol{\wt}}$$

$$\newcommand{\muxvec}{\boldsymbol{\mux}}$$

$$\newcommand{\tan}{\text{tan}}$$

# Performance Measures

We have discussed various measures of risk.

Of course, we care about return as well as risk. 

We might be willing to take more risk for more return.

Below are measures of return and the risk-return tradeoff.

## Excess Returns

Many performance measures, as well as optimizations, will focus on **excess returns**. That is, the return on the portfolio /security beyond the risk-free rate.

We use tilde notation for excess returns to avoid writing the risk-free rate everywhere. That is,

$$\rx_{i,t} \equiv r_{i,t} - \rf$$

$$\mux \equiv \mu - \rf$$

## Mean Return

Mean (total or excess) return is the most utilized measure of ex-ante reward in an investment.

Most allocation and risk measures will consider mean return against some form of risk.

If we are focusing on USD, not returns, then we might label this as **expected value (EV)**.

## Alpha

The second widely used measure of "reward" is alpha.

Consider a regression of the portfolio (or security) return against a benchmark, in this case, SPY.

$$\rx_{i,t} = \alpha + \beta \rx_{\text{SPY},t} + \epsilon_t$$

Note that we might be interested in a decomposition against several factors, $\boldsymbol{x}_t$. 

$$\rx_{i,t} = \alpha + \boldsymbol{\beta}'\boldsymbol{x}_t + \epsilon_t$$

We will have more to say about these decompositions.

### Alpha as a measure of performance

Alpha is measuring the mean return of the portfolio (security) beyond what can be explained by the regressors.

* We may have a high mean return simply due to loading up on lots of factor risk.
* Consider UPRO, the 3x levered S\&P500 ETF.

For this reason, alpha is widely cited in judging (hedge / mutual) fund performance.

* Did the fund earn high mean returns beyond what we would expect from their broad factor exposures?
* In a sense, did we get any mean return beyond what we would have received from holding an (few?) index funds?

```python
doEXCESS = True
COMP = 'SPY'


if doEXCESS:
    data = retsx
else:
    data = rets
    
    
regs = pd.DataFrame(dtype=float, columns=['mean','alpha','beta'], index=rets.columns)
for sec in rets.columns:
    est = LinearRegression().fit(data[[COMP]],data[[sec]])
    regs.loc[sec,'alpha'] = est.intercept_
    regs.loc[sec,'beta'] = est.coef_[0]

regs['mean'] = retsx.mean()
regs[['mean','alpha']] *= FREQ
regs.style.format({'mean':'{:.2%}','alpha':'{:.2%}','beta':'{:.2f}'})
```

## Sharpe

The **Sharpe ratio** is the tradeoff of **mean excess return** against **volatility**.

$$\text{SharpeRatio} \equiv \frac{\mux}{\sigx}$$

In some cases this measure is used for total returns, not excess:

$$\text{SharpeRatio} \equiv \frac{\mu}{\sigma}$$

## Treynor

The **Treynor ratio** is the tradeoff between **mean excess return** and **beta**.

This is mostly used with equities, where the beta is with regard to a broad equity benchmark, like SPY.

$$\text{TreynorRatio} \equiv \frac{\mux}{\beta}$$

## Information Ratio

The **Information Ratio** is the tradeoff between **alpha** and **unexplained volatility**.

A regression of $\rx_{i,t}$ onto a factor (benchmark) $x_t$ reveals the unexplained…

* mean: $\alpha$ 
* movements: $\epsilon$
* volatility: $\sigma_\epsilon$
as well as the **explained** portion, $\beta x$.

The Information Ratio is thus the Sharpe ratio of the unexplained portion of the decomposition, $\alpha$ versus $\epsilon$.

$$\text{InformationRatio} \equiv \frac{\alpha}{\sigma_\epsilon}$$

```python
keyX = 'SPY'
tab = pd.concat([performanceMetrics(retsx,annualization=FREQ)['Sharpe'],get_ols_metrics(retsx[keyX],retsx,annualization=FREQ)[['Info Ratio','Treynor Ratio']]],axis=1)
tab.style.format({'alpha':'{:.2%}','Sharpe':'{:.2%}','r-squared':'{:.2%}','Treynor Ratio':'{:.2%}','Info Ratio':'{:.2%}'})
```

# Diversification

## Subadditivity

## Variance of a Portfolio

Consider a portfolio of $\Nsec$ risky securities.

* return volatility is $\sigma_i$
* return covariance is $\sigma_{i,j}$
* weight in security $i$ is given by $\wt_i$, with $$\sum_{i=1}^\Nsec \wt_i = 1$$

Then

$$\sigma^2_p = \sum_{j=1}^\Nsec\sum_{i=1}^\Nsec\wt_i\wt_j\sigma_{ij}$$

Suppose we have an equally-weighted portfolio, $w_i=\frac{1}{\Nsec}$ for all $i$.

Then it is easy to show that

$$\sigma^2_p = \frac{1}{\Nsec}\avg\left[\sigma^2_i\right] + \frac{\Nsec-1}{\Nsec}\avg\left[\sigma_{ij}\right]$$

As the portfolio increases the number of securities, $\Nsec\to\infty$, we have

$$\sigma^2_p = \avg\left[\sigma_{ij}\right]$$

### Individual variances do not have much impact on portfolio variance!

## Technical Points

### Equal weights?

A similar result would hold even if we didn't assume equal weights, so long as no single weight held a large share in the portfolio.

### Simplified formula

For pedagogy, assume all $\Nsec$ volatilites are equal and that all pairwise correlations are $\rho$. Then we would have

$$\sigma^2_p = \frac{1}{\Nsec}\sigma^2 + \frac{\Nsec-1}{\Nsec}\rho\sigma^2$$

which makes the point that as $\Nsec$ grows, the portfolio variance is a fraction of the common variance, where the fraction is given by $\rho$. 

This illustrates the idea of the total risk $\sigma^2$ having two components

* systematic, $\rho\sigma^2$
* idiosyncratic 

In more general settings, we see a similar phenomenon, that total risk decreases due to the subadditivity.

## Stand-alone vs Marginal Risk

More broadly, the risk measure of a single asset (standalone risk) is very different from its contribution of risk to a portfolio.

We saw this above for variance, but it is true for any subadditive risk measure.

Consider **normal VaR**, (recalling that general VaR is not subadditive.)

### Normal Value-at-risk

$$\frac{\partial \rVaRqtau}{\partial\wt_i} = \mu_i + \zscore_\quant\frac{1}{\sigma_p}\sum_{j=1}^\Nsec\wt_j\sigma_{i,j}$$

That is, the **marginal VaR** to portfolio $p$ with $\Nsec$ assets is a function of the covariances, not its own volatility.

Thus, marginal (normal) VaR is quite different from standalone (normal VaR).

## Mean Additivity

We have discussed **subadditivity** and diversification for risk. What about for mean return (reward)?

The **mean is a linear function**!

* Thus, it is additive, not subadditive.

$$\mu_p = \boldsymbol{\wt}'\boldsymbol{\mu}$$

With means, the "whole" is exactly equal to the "sum of its parts."

### Thus, diversification reduces risk while leaving mean return intact!
* This is the reason that diversification is seen as a free lunch.

## Example: Mean vs Volatility for Two Assets

Reference: Hendricks

<img src="../refs/bivariate-risk-return-diversification.png" width="750"/>

# Mean-Variance Optimization

For two assets, we saw diversification means

* subadditive risk
* additive mean

This holds for a portfolio of $\Nsec$ risky securities.

Consider the **mean variance optimization**. Equivalently,

* mean-volatility optimization
* Sharpe Ratio optimization

## Figures on the Diversification

Reference: Hendricks

<img src="../refs/diversification_parabola.png" width="500"/>

<img src="../refs/diversification_hyperbola.png" width="500"/>

## Preliminaries

Consider a problem of

* $\Nsec$ risky assets
* cash (or some other risk-free asset)
* frictionless markets--long short any amount
* weights on risky assets do not need to equal 1, as cash can be long/short
$$\wtvec'\boldsymbol{1} \ne 1$$

We will consider **excess returns**

* makes the math a little simpler
* good assumption if we have ability to leverage with cash

Recall that covariance

* matrix of $\Nsec$ securities is $\covmat$
* of the total chosen portfolio is 
$$\sigma^2_p = \wtvec'\covmat\wtvec$$

## Optimization

### Objective

The objective is to **minimize portfolio variance**.

$$\min_{\wtvec} \wtvec'\covmat\wtvec$$

### The Constraint

The constraint is to achieve a mean return target:

$$\text{s.t.}\; \wtvec'\muxvec = m$$

#### Note

We have not added constraints on…

* sum of weights
* short positions
* individual position sizes

### Duality

This optimization is of a special type such that its **dual** would give the same solution set. Namely,

* Objective: maximize return
* Constraint: achieve a set variance

#### Technical Point

This is a **linear program**.

### Setting up the Problem

A mean-variance portfolio is a vector, $\wtvec^*$ which solves the following **constrained optimization** for some mean excess return target $m$.

$$\min_{\wtvec} \wtvec'\covmat\wtvec$$

$$\text{s.t.}\; \wtvec'\muxvec = m$$

### What makes for an easy optimization

Optimizations are often intractable.

This optimization is easy.

Why?

#### Technical Point:

Given the simplicity of this optimization, we can solve it analytically, with an explicit solution:

1. Set up the Lagrangian with just one constraint.
2. The FOC is sufficient given the convexity of the problem.
3. Finally, substitute the Lagrange multiplier using the constraint.

## The solution

$$\wtvec^* = \delta_m\, \covmat^{-1}\muxvec$$

where $\delta_m$ is simply a scaling constant to ensure we hit the mean of $m$.

### Note that

* All solutions are just a rescaling of $\covmat^{-1}\muxvec$

In fact, there is a name for this baseline: **the tangency portfolio**.

$$\wtvec^{\tan} = \delta_\tan\, \covmat^{-1}\muxvec$$

where $\delta_\tan$ is a number that ensures $\wtvec^{\tan}$ sums to one.

* We are not insisting all solutions add to one. But it is useful to highlight this special solution that does add to one.

#### Technical Point

The formulas for the scalings look tedious but are easy to calculate.

<img src="../refs/mv_excess.png" width="750"/>

### Two Fund Separation

This is known as two-fund separation.

* Every investor should invest (long or short) cash and (long or short) the **tangency portfolio**.
* Variation in investor risk will lead to different solutions, but even with $\Nsec$ assets, everyone holds the exact same bundle, (the tangency portfolio,) in different sizes.

# Additional Constraints

## No cash (weights add to one)

We could optimize the space of total (not excess) returns for a situatoin where there is no cash asset.

Then, the weights need to add to one.

This would introduce a second constraint to the optimization above:

$$\wtvec'\boldsymbol{1} = 1$$

* Still an easy optimization.
* Adds a second dimension to the solution.
* Thus, all investors hold a mix of two risky bundles (tangency and minimum variance) instead of tangency and cash.

One could see this solution as deriving "synthetic" cash (to the best of its ability) and then getting back to an anologous solution.

<img src="../refs/mv_totalrets.png" width="750"/>

## Position Constraints

We may wish to constrain individual security weights, $\wt_i$.

* No short positions, $\wt_i\ge 0$
* Mandate to hold at least/most, $\wt_i\ge c$, $\wt_j\le c$.

These constraints will cause us to lose an explicit solution formula.

* Why?

Still, the optimization problem is easy numerically.

* Why?

See the other notebook for an illustration of these constraints.

# Beyond Variance

These optimizations have been mean-variance.

We have discussed that there are many other risk measures we may want to consider.

What would be needed to optimize…

* mean-volatility
* mean-Normal VaR
* information ratio
* mean-to-VaR
* mean-to-CVaR

---
parent_directory:
title: Time Value of Money
tags:
aliases:
parent_folder: Lecture Notes
subfolder:
key_concepts:
cssclasses: academia
linter-yaml-title-alias: Time Value of Money
---

Copyright &copy; 2012 Ondrej Martinsky, All rights reserved

[www.quantandfinancial.com](http://www.quantandfinancial.com)

# Time Value of Money

## Implementation

scroll below for examples

```python
from optimization import newton
class TVM:
    bgn, end = 0, 1

    def __str__(self):
        return "n=%f, r=%f, pv=%f, pmt=%f, fv=%f" % (
            self.n, self.r, self.pv, self.pmt, self.fv)

    def __init__(self, n=0.0, r=0.0, pv=0.0, pmt=0.0, fv=0.0, mode=end):
        self.n = float(n)
        self.r = float(r)
        self.pv = float(pv)
        self.pmt = float(pmt)
        self.fv = float(fv)
        self.mode = mode

    def calc_pv(self):
        z = pow(1 + self.r, -self.n)
        pva = self.pmt / self.r
        if (self.mode == TVM.bgn): pva += self.pmt
        return -(self.fv * z + (1 - z) * pva)

    def calc_fv(self):
        z = pow(1 + self.r, -self.n)
        pva = self.pmt / self.r
        if (self.mode == TVM.bgn): pva += self.pmt
        return -(self.pv + (1 - z) * pva) / z

    def calc_pmt(self):
        z = pow(1 + self.r, -self.n)
        if self.mode == TVM.bgn:
            return (self.pv + self.fv * z) * self.r / (z - 1) / (1 + self.r)
        else:
            return (self.pv + self.fv * z) * self.r / (z - 1)

    def calc_n(self):
        pva = self.pmt / self.r
        if (self.mode == TVM.bgn): pva += self.pmt
        z = (-pva - self.pv) / (self.fv - pva)
        return -log(z) / log(1 + self.r)

    def calc_r(self):
        def function_fv(r, self):
            z = pow(1 + r, -self.n)
            pva = self.pmt / r
            if (self.mode == TVM.bgn): pva += self.pmt
            return -(self.pv + (1 - z) * pva) / z
        return newton(f=function_fv, fArg=self, x0=.05,
                      y=self.fv, maxIter=1000, minError=0.0001)
```

## Calculation of monthly payments

```python
TVM(n=25*12, r=.04/12, pv=500000, fv=0).calc_pmt()
```

    -2639.1842014888507

## Internal Rate of Return

```python
TVM(n=10*2, pmt=6/2, pv=-80, fv=100).calc_r()
```

    0.045432970406767303

## How much I can borrow ?

```python
TVM(n=25*12, r=.04/12, pmt=-2000, fv=0).calc_pv()
```

    378904.96594965487


---
title: Time Value of Money
parent_directory: FINM Credit Markets
formatted: 2025-12-21 07:30:00 AM
formatter_model: grok-code-fast-1
cli_tool: open code
primary_tags:
  - time value of money
  - present value calculation
  - future value calculation
  - annuity payments
secondary_tags:
  - financial mathematics
  - loan amortization
  - internal rate of return
  - cash flow analysis
  - discount rates
cssclasses: academia
---

Copyright &copy; 2012 Ondrej Martinsky, All rights reserved

[www.quantandfinancial.com](http://www.quantandfinancial.com)

# Time Value of Money

## Implementation

```d2
tvm_concepts: Time Value of Money Concepts {
  direction: right
  
  present_value: "Present Value (PV)" {
    shape: rectangle
    label: "Current worth of future cash flows"
  }
  
  future_value: "Future Value (FV)" {
    shape: rectangle
    label: "Future worth of current cash flows"
  }
  
  payments: "Periodic Payments (PMT)" {
    shape: rectangle
    label: "Annuity or loan payment amounts"
  }
  
  rate: "Interest Rate (r)" {
    shape: circle
    label: "Discount/interest rate per period"
  }
  
  periods: "Number of Periods (n)" {
    shape: circle
    label: "Total time periods"
  }
  
  present_value -> payments -> future_value
  rate -> present_value
  periods -> present_value
}
```

### Examples

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

```python
-2639.1842014888507
```

## Internal Rate of Return

```python
TVM(n=10*2, pmt=6/2, pv=-80, fv=100).calc_r()
```

```python
0.045432970406767303
```

## How much I can borrow ?

```python
TVM(n=25*12, r=.04/12, pmt=-2000, fv=0).calc_pv()
```

```python
378904.96594965487
```


---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Solving Linear Equations using LU Decomposition
linter-yaml-title-alias: Solving Linear Equations using LU Decomposition
---

[www.quantandfinancial.com](http://www.quantandfinancial.com)

# Solving Linear Equations using LU Decomposition

```python
%pylab
%matplotlib inline
import matplotlib.pyplot
from mpl_toolkits.mplot3d import Axes3D
import numpy
import scipy.linalg
```

    Using matplotlib backend: Qt5Agg
    Populating the interactive namespace from numpy and matplotlib

## Gaussian Elimination

Code for calculating $\bf{X}$ from $\bf{M \cdot X = Y}$ where $\bf{M}$ is either lower or upper diagonal matrix

```python
def solve_l(m, y):  # solves x from m*x = y
    assert (m==tril(m)).all()        # assert matrix is lower diagonal
    assert (m.shape[0]==m.shape[1])  # Assert matrix is square matrix
    N=m.shape[0]
    x=zeros(N)                      # Vector of roots
    for r in range(N):
        s = 0
        for c in range(r):
            s += m[r,c]*x[c]            
        x[r] = (y[r]-s) / m[r,r]
    assert allclose(dot(m,x), y)    # Check solution
    return x

def solve_u(m, y):
    m2 = fliplr(flipud(m))     # flip matrix LR and UD, so upper diagonal matrix becomes lower diagonal
    y2 = y[::-1]               # flip array
    x2 = solve(m2, y2)
    x = x2[::-1]
    assert allclose(dot(m,x), y) # Check solution
    return x

def solve(m, y):
    if (m==tril(m)).all():
        return solve_l(m,y)
    else:
        return solve_u(m,y)
```

## Example

Unknowns ($\bf{X^{org}}$), we will later try to solve these

```python
x_org = array([2, 4, 1])
print(x_org)
```

    [2 4 1]

Coefficients ($\bf{M}$)

```python
m = array([[2,-1,1],[3,3,9],[3,3,5]])
print(m)
```

    [[ 2 -1  1]
     [ 3  3  9]
     [ 3  3  5]]

Results ($\bf{Y}$)

```python
y = dot(m,x_org)
print(y)
```

    [ 1 27 23]

### Decompose matrix $\bf{M}$

```python
# Note: matrix dot-product is not commutative, but is associative
p, l, u = scipy.linalg.lu(m, permute_l=False)
pl, u = scipy.linalg.lu(m, permute_l=True)
assert (dot(p,l)==pl).all()
assert (dot(pl,u)==m).all()
assert (pinv(p)==p).all()
```

Lower diagonal matrix ($\bf{L}$), zero element above the principal diagonal

```python
print(l)
```

    [[ 1.          0.          0.        ]
     [ 0.66666667  1.          0.        ]
     [ 1.         -0.          1.        ]]

Upper diagnonal matrix ($\bf{U}$), zero elements below the principal diagonal

```python
print(u)
```

    [[ 3.  3.  9.]
     [ 0. -3. -5.]
     [ 0.  0. -4.]]

Permutation matrix ($\bf{P}$)

```python
print(p)
```

    [[ 0.  1.  0.]
     [ 1.  0.  0.]
     [ 0.  0.  1.]]

```python
assert (l*u==multiply(l,u)).all()          # memberwise multiplication
assert (m==dot(dot(p,l),u)).all()          # matrix multiplication, M=LU
assert (pinv(p)==p).all()                  # Assert that permutation matrix is identical to it's inverse
```

### Solution

$$\bf{M \cdot X = Y}$$

$$\bf{P \cdot L \cdot U \cdot X = Y}$$

$$\bf{L \cdot U \cdot X = P^{-1} \cdot Y}$$

set $$ \bf{Z = U \cdot X} $$

then

$$ \bf{ L \cdot Z = P \cdot Y } $$

Solve $\bf{Z}$ in $\bf{ L \cdot Z = P \cdot Y }$ using Gaussian elimination

```python
z = solve(l, dot(p,y))
print(z)
```

    [ 27. -17.  -4.]

Solve $\bf{X}$ in $ \bf{U \cdot X = Z} $ using Gaussian elimination

```python
x = solve(u, z)
assert allclose(x_org,x)
print(x)
```

    [ 2.  4.  1.]


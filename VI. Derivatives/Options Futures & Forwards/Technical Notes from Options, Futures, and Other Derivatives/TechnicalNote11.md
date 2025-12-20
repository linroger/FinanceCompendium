---
title: Technical Note 11 - The Manipulation of Credit Transition Matrices
primary_tags:
  - credit transition matrices
  - matrix eigenvalue decomposition
  - generator matrix method
secondary_tags:
  - credit rating changes
  - matrix powers
  - jarrow lando turnbull model
cssclasses: academia
---

# Technical Note 11 - The Manipulation of Credit Transition Matrices

Suppose that $\mathbf{A}$ is an $N \times N$ matrix of credit rating changes in one year such as those discussed in the text. The matrix of credit rating changes in $m$ years is $\mathbf{A}^m$. This can be readily calculated using the normal rules for matrix multiplication.

The matrix corresponding to a shorter period than one year, say six months or one month is more difficult to compute. We first use standard routines to calculate eigenvectors $\mathbf{x}_1, \mathbf{x}_2, \ldots, \mathbf{x}_N$ and the corresponding eigenvalues $\lambda_1, \lambda_2, \ldots, \lambda_N$. These have the property that

$$
\mathbf{A} \mathbf{x}_i = \lambda_i \mathbf{x}_i \tag{1}
$$

Define $\mathbf{X}$ as a matrix whose $i$th column is $\mathbf{x}_i$ and $\boldsymbol{\Lambda}$ as a diagonal matrix where the $i$th diagonal element is $\lambda_i$. From equation (1),

$$
\mathbf{A} \mathbf{X} = \mathbf{X} \boldsymbol{\Lambda}
$$

so that

$$
\mathbf{A} = \mathbf{X} \boldsymbol{\Lambda} \mathbf{X}^{-1}
$$

From this it is easy to see that the $n$th root of $\mathbf{A}$ is

$$
\mathbf{X} \boldsymbol{\Lambda}^{*} \mathbf{X}^{-1}
$$

where $\boldsymbol{\Lambda}^{*}$ is a diagonal matrix where the $i$th diagonal element is $\lambda_i^{1/n}$.

Some authors such as Jarrow, Lando, and Turnbull prefer to handle this problem in terms of what is termed a generator matrix. This is a matrix $\Gamma$ such that the transition matrix for a short period of time $\Delta t$ is $\mathbf{1} + \Gamma \Delta t$ and the transition matrix for longer period of time, $t$, is

$$
\exp(t\Gamma) = \sum_{k=0}^{\infty} \frac{(t\Gamma)^k}{k!}
$$

```d2
direction: right
classes: {
  process: {
    style: {
      border-radius: 5
      fill: "#f0f0f0"
      stroke: "#333"
    }
  }
  math: {
    shape: parallelogram
    style: {
      fill: "#e1f5fe"
    }
  }
}

matrix_a: Transition Matrix A {
  class: math
  tooltip: Annual credit rating changes
}

eigen_decomp: Eigenvalue Decomposition {
  class: process
  tooltip: A = X Λ X⁻¹
}

time_scaling: Scale Time Period {
  class: process
  label: "Calculate nth root\n(Λ* where λ_i = λ_i^(1/n))"
}

result_matrix: Short-Term Matrix {
  class: math
  tooltip: A^(1/n)
}

generator: Generator Matrix Γ {
  class: math
  tooltip: Continuous time limit
}

exp_map: Matrix Exponential {
  class: process
  label: "exp(tΓ)"
}

matrix_a -> eigen_decomp
eigen_decomp -> time_scaling
time_scaling -> result_matrix

matrix_a -> generator: "Logarithm (approx)"
generator -> exp_map
exp_map -> result_matrix: "Arbitrary time t"
```
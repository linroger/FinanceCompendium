---
title: Technical Note 11 - The Manipulation of Credit Transition Matrices
tags: [credit_rating, transition_matrix, eigenvalues, generator_matrix]
key_concepts: [Credit transition matrices, Matrix manipulation, Eigenvalue decomposition, Generator matrices]
parent_directory: Technical Notes from Options, Futures, and Other Derivatives
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

From this it is easy to see that the nth root of $A$ is

$$
\mathbf{X} \boldsymbol{\Lambda}^{*} \mathbf{X}^{-1}
$$

where $\Lambda^{*}$ is a diagonal matrix where the $i$th diagonal element is $\lambda_i^{1/n}$.

Some authors such as Jarrow, Lando, and Turnbull prefer to handle this problem in terms of what is termed a generator matrix. This is a matrix $\Gamma$ such that the transition matrix for a short period of time $\Delta t$ is $\mathbf{1} + \Gamma \Delta t$ and the transition matrix for longer period of time, $t$, is

$$
\exp(t\Gamma) = \sum_{k=0}^{\infty} \frac{(t\Gamma)^k}{k!}
$$
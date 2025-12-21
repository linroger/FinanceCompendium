---
title: Appendix J Manipulation of Credit Transition Matrices
primary_tags:
  - credit risk modeling
  - transition matrices
  - credit rating changes
secondary_tags:
  - matrix manipulation
  - eigenvalue decomposition
  - generator matrices
  - markov chains
cssclasses: academia
formatted: 2025-12-21 04:05:00 PM
formatter_model: claude-3-7-sonnet-20250219
cli_tool: claude-code
parent_directory: Part 8 Appendices
---

# Appendix J

## Manipulation of Credit Transition Matrices

```d2
direction: right

Annual Matrix: Annual Transition Matrix A {
  shape: square
  style.fill: "#e3f2fd"
}

Power: Matrix Power A^m {
  shape: square
  style.fill: "#f3e5f5"
}

Eigen: Eigenvalue Decomposition {
  shape: hexagon
  style.fill: "#e8f5e9"
}

Root: Matrix m-th Root {
  shape: square
  style.fill: "#fff3e0"
}

Generator: Generator Matrix Γ {
  shape: diamond
  style.fill: "#fce4ec"
}

Exp: Matrix Exponential exp(tΓ) {
  shape: square
  style.fill: "#f1f8e9"
}

Annual Matrix -> Power: Integer years\nA^m
Annual Matrix -> Eigen: Eigenvalues & eigenvectors
Eigen -> Root: Fractional years\nX Λ^{*} X^{-1}
Annual Matrix -> Generator: Generator approach
Generator -> Exp: Any time period\nexp(tΓ)

Power -> Root
Root -> Exp
```

Suppose that $A$ is an $n \times n$ matrix of credit rating changes in one year. This is a matrix such as the one shown in Table 19.1. Assuming that rating changes in successive time periods are independent, the matrix of credit rating changes in $m$ years is $A^m$. If $m$ is an integer, this can be readily calculated using the normal rules for matrix multiplication.

Consider next the problem of calculating the transition matrix for  $1 / m$  years where  $m$  is an integer. (For example, when we are interested in one-month changes,  $m = 12$ .) This is a more complicated problem because we need to calculate the  $m$ th root of a matrix. We first calculate eigenvectors  $\mathbf{x}_1, \mathbf{x}_2, \ldots, \mathbf{x}_n$  and the corresponding eigenvalues  $\lambda_1, \lambda_2, \ldots, \lambda_n$  of the matrix  $A$ . These are explained in Appendix H. They have the property that

$$
A \mathbf{x}_{\mathbf{i}} = \lambda_{i} \mathbf{x}_{\mathbf{i}} \tag{J.1}
$$

Define  $X$  as an  $n \times n$  matrix whose  $i$ th column is  $\mathbf{x_i}$  and  $\Lambda$  as an  $n \times n$  diagonal matrix (i.e., a matrix that has zero values everywhere except on the diagonal) where the  $i$ th diagonal element is  $\lambda_i$ . From equation (J.1), we have

$$
A = X \Lambda X^{-1}
$$

A = X \Lambda X ^ {- 1}

$$

Define  $\Lambda^{*}$  as a diagonal matrix where the  $i$ th diagonal element is  $\lambda_{i}^{1 / m}$ . Then

$$

\begin{array}{l} (X \Lambda^{*} X^{-1})^{m} = (X \Lambda^{*} X^{-1}) (X \Lambda^{*} X^{-1}) (X \Lambda^{*} X^{-1}) \dots (X \Lambda^{*} X^{-1}) = X (\Lambda^{*})^{m} X^{-1} \\ = X \Lambda X^{-1} = A \\ \end{array}

$$ showing that the $m$th root of $A$, and therefore the transition matrix for time $1/m$ years, is $X \Lambda^{*} X^{-1}$.

Some authors, such as Jarrow, Lando, and Turnbull (1997), prefer to handle this problem in terms of what is termed a generator matrix. This is a matrix  $\Gamma$  such that the transition matrix for a short period of time,  $\Delta t$ , is  $I + \Gamma \Delta t$  and the transition matrix for a longer period of time,  $t$ , is

$$
\exp(t \Gamma) = \sum_{k=0}^{\infty} \frac{(t \Gamma)^{k}}{k!}
$$ where  $I$  is the identity matrix (with ones on the diagonal and zeros elsewhere).


Software for manipulating credit transition matrices is on the author's website.


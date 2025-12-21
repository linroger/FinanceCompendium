---
title: Appendix H Eigenvectors and Eigenvalues
parent_directory: Part 8 Appendices
formatted: 2025-12-21 04:05:00 PM
formatter_model: claude-sonnet-4
cli-tool: opencode
primary_tags:
  - eigenvectors eigenvalues
  - matrix diagonalization
  - linear algebra
secondary_tags:
  - characteristic equation
  - determinant calculation
  - numerical procedures
cssclasses: academia
---

# Appendix H Eigenvectors and Eigenvalues

Consider an $n \times n$ matrix $A$ and suppose that $\mathbf{x}$ is an $n \times 1$ vector. Consider the equation

$$
A \mathbf{x} = \lambda \mathbf{x} \tag{H.1}
$$

The equation can be written

$$
(A - \lambda I) \mathbf{x} = 0
$$ where $I$ is the $n \times n$ identity matrix (which is the $n \times n$ matrix with diagonal elements equal to 1 and all other elements equal to zero). Clearly, $\mathbf{x} = 0$ is a solution to equation (H.1). Under what circumstances are there other solutions? A theorem in linear algebra tells us that there are other solutions when the determinant of $A - \lambda I$ is zero. The values of $\lambda$ that lead to solutions of equation (H.1) are therefore the values of $\lambda$ that we get when we solve the equation that sets the determinant of $A - \lambda I$ equal to zero. This equation is an nth order polynomial in $\lambda$. In general, it has $n$ solutions. The solutions are the eigenvalues of the matrix, $A$. The vector $\mathbf{x}$ that solves equation (H.1) for a particular eigenvalue is an eigenvector. In general, there are $n$ eigenvectors, one corresponding to each eigenvalue.

```d2
direction: right

Matrix_A: Matrix A {
  shape: square
  style.fill: "#e3f2fd"
}

Eigenvector_x: Eigenvector x {
  shape: square
  style.fill: "#f3e5f5"
}

Eigenvalue_λ: Eigenvalue λ {
  shape: circle
  style.fill: "#e8f5e9"
}

Matrix_A -> Eigenvector_x: "A × x"
Matrix_A -> Eigenvalue_λ: "produces"
Eigenvalue_λ -> Eigenvector_x: "λ × x"
```

As a simple example, suppose that

$$
A = \left( \begin{array}{c c} 1 & - 1 \\ 2 & 4 \end{array} \right)
$$

In this case

$$

A - \lambda I = \left( \begin{array}{c c} 1 - \lambda & - 1 \\ 2 & 4 - \lambda \end{array} \right)

$$

The determinant of this matrix is

$$
(1 - \lambda)(4 - \lambda) - (-1) \times 2 = \lambda^{2} - 5\lambda + 6
$$

The solutions to this equation are $\lambda = 3$ and $\lambda = 2$. These are the two eigenvalues of the matrix.

To determine the eigenvectors corresponding to $\lambda = 3$, we solve equation (H.1):

$$

\left( \begin{array}{c c} 1 & - 1 \\ 2 & 4 \end{array} \right) \mathbf{x} = 3 \mathbf{x}

$$

Setting

$$

\mathbf{x} = \left( \begin{array}{c} x_{1} \\ x_{2} \end{array} \right)

$$ the equation to be solved becomes


$$

\left( \begin{array}{c c} 1 & - 1 \\ 2 & 4 \end{array} \right) \left( \begin{array}{c} x_{1} \\ x_{2} \end{array} \right) = 3 \left( \begin{array}{c} x_{1} \\ x_{2} \end{array} \right)

$$

The simultaneous equations corresponding to this are

$$ x _ {1} - x _ {2} = 3 x _ {1}
$$ and


$$

2 x _ {1} + 4 x _ {2} = 3 x _ {2}

$$

Both these equations are equivalent to

$$ x_{2} + 2 x_{1} = 0
$$

It follows that any pair of numbers $x_{1}$ and $x_{2}$ solve the equation when $\lambda = 3$ providing $x_{2} = -2x_{1}$. By convention, the values of $x_{1}$ and $x_{2}$ that are reported are those for which the length of the vector $\mathbf{x}$ is 1. This means that $x_{1}^{2} + x_{2}^{2} = 1$. In this case, the solution where $\mathbf{x}$ has a length of 1 is $x_{1} = \sqrt{0.2} = 0.447$ and $x_{2} = -2\sqrt{0.2} = -0.894$. (An alternative is $x_{1} = -0.447$ and $x_{2} = 0.894$.) The solution

$$
\mathbf{x} = \left( \begin{array}{c} 0.447 \\ -0.894 \end{array} \right)
$$ is the eigenvector corresponding to the first eigenvalue $(\lambda = 3)$.

A similar calculation shows that equation (H.1) is satisfied for $\lambda = 2$ when $x_{1} + x_{2} = 0$. The solution where $\mathbf{x}$ has a length of 1 is $x_{1} = \sqrt{0.5} = 0.707$ and $x_{2} = -\sqrt{0.5} = -0.707$. (An alternative is $x_{1} = -0.707$ and $x_{2} = 0.707$.) The eigenvector corresponding to the second eigenvalue $(\lambda = 2)$ is therefore

$$
\mathbf{x} = \left( \begin{array}{c} 0.707 \\ -0.707 \end{array} \right)
$$

For matrices of larger size, a numerical procedure must be used to determine eigenvectors and eigenvalues. One such numerical procedure is provided by Press et al. (2007).

Applications of eigenvalues and eigenvectors are in Appendices I and J. Software for calculating eigenvectors and eigenvalues is on the author's website. (See Principal Components Analysis.)